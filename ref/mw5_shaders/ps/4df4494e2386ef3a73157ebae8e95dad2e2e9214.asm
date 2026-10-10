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
; shader hash: 3a557a9f3d77bb2410dda86051595b28
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %158 = add i32 %54, 360
  %159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %158, i32 undef)  ; BufferLoad(srv,index,wot)
  %160 = extractvalue %dx.types.ResRet.i32 %159, 0
  %161 = extractvalue %dx.types.ResRet.i32 %159, 1
  %162 = extractvalue %dx.types.ResRet.i32 %159, 2
  %163 = extractvalue %dx.types.ResRet.i32 %159, 3
  %164 = bitcast i32 %160 to float
  %165 = bitcast i32 %161 to float
  %166 = bitcast i32 %162 to float
  %167 = bitcast i32 %163 to float
  %168 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %169 = call float @dx.op.unary.f32(i32 25, float %168)  ; Rsqrt(value)
  %170 = fmul fast float %169, %107
  %171 = fmul fast float %169, %108
  %172 = fmul fast float %169, %109
  %173 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %174 = call float @dx.op.unary.f32(i32 25, float %173)  ; Rsqrt(value)
  %175 = fmul fast float %174, %155
  %176 = fmul fast float %174, %156
  %177 = fmul fast float %174, %157
  %178 = call float @dx.op.dot3.f32(i32 55, float %175, float %176, float %177, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %179 = fmul fast float %178, %178
  %180 = fmul fast float %179, %166
  %181 = fadd fast float %180, %167
  %182 = call float @dx.op.unary.f32(i32 7, float %181)  ; Saturate(value)
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 3
  %185 = fmul fast float %184, %173
  %186 = fsub fast float %164, %185
  %187 = fmul fast float %186, %165
  %188 = call float @dx.op.unary.f32(i32 7, float %187)  ; Saturate(value)
  %189 = fmul fast float %188, %182
  %190 = fmul fast float %100, 5.000000e-01
  %191 = fmul fast float %101, 5.000000e-01
  %192 = fptosi float %190 to i32
  %193 = fptosi float %191 to i32
  %194 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %192, i32 %193, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = lshr i32 %195, 18
  %197 = uitofp i32 %196 to float
  %198 = fmul fast float %197, 0x3F4C00EBA0000000
  %199 = call float @dx.op.unary.f32(i32 21, float %198)  ; Exp(value)
  %200 = fadd fast float %199, -1.000000e+00
  %201 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %202 = extractvalue %dx.types.Dimensions %201, 0
  %203 = sitofp i32 %202 to float
  %204 = extractvalue %dx.types.Dimensions %201, 1
  %205 = sitofp i32 %204 to float
  %206 = fcmp fast oge float %190, %203
  %207 = fcmp fast oge float %191, %205
  %208 = or i1 %206, %207
  %209 = select i1 %208, float 0x4197782600000000, float %200
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %212 = extractvalue %dx.types.CBufRet.f32 %210, 3
  %213 = fmul fast float %211, %100
  %214 = fmul fast float %212, %101
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = and i32 %216, 114688
  %218 = icmp ne i32 %217, 0
  %219 = select i1 %218, float %213, float 0.000000e+00
  %220 = select i1 %218, float %214, float 0.000000e+00
  %221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %49, float %219, float %220, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = fmul fast float %222, 2.550000e+02
  %224 = fptoui float %223 to i32
  %225 = select i1 %218, i32 %224, i32 0
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.i32 %227, 3
  %229 = and i32 %228, 3
  %230 = icmp ne i32 %229, 0
  %231 = and i32 %228, 4
  %232 = icmp ne i32 %231, 0
  %233 = and i1 %230, %232
  br i1 %233, label %234, label %245

; <label>:234                                     ; preds = %0
  %235 = extractvalue %dx.types.CBufRet.f32 %226, 3
  %236 = fmul fast float %235, %101
  %237 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %238 = fmul fast float %237, %100
  %239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %238, float %236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = fsub fast float 1.000000e+00, %240
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %244 = fcmp fast olt float %241, %243
  br label %248

; <label>:245                                     ; preds = %0
  %246 = icmp eq i32 %231, 0
  %247 = and i1 %230, %246
  br label %248

; <label>:248                                     ; preds = %245, %234
  %249 = phi i1 [ %244, %234 ], [ %247, %245 ]
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 2
  %252 = fmul fast float %251, 0x3FE3C6EF40000000
  %253 = frem fast float %100, 2.560000e+02
  %254 = frem fast float %101, 2.560000e+02
  %255 = fptoui float %253 to i32
  %256 = fptoui float %254 to i32
  %257 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %255, i32 %256, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = fadd fast float %258, %252
  %260 = call float @dx.op.unary.f32(i32 22, float %259)  ; Frc(value)
  %261 = add i32 %54, 156
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = shl i32 %263, 4
  %265 = and i32 %264, 32752
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %263, 7
  %268 = and i32 %267, 32752
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %263, 22
  %271 = shl nuw nsw i32 %270, 5
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = add i32 %54, 216
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 255
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F70101020000000
  %279 = lshr i32 %275, 8
  %280 = and i32 %279, 255
  %281 = uitofp i32 %280 to float
  %282 = fmul fast float %281, 0x3F70101020000000
  %283 = lshr i32 %275, 16
  %284 = and i32 %283, 255
  %285 = uitofp i32 %284 to float
  %286 = fmul fast float %285, 0x3F70101020000000
  %287 = add i32 %54, 36
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = and i32 %289, 65535
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %289, 16
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = add i32 %54, 288
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 65535
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %296, 16
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = fmul fast float %298, 0x3F50624DE0000000
  %302 = fmul fast float %300, 0x3F50624DE0000000
  %303 = add i32 %54, 172
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = shl i32 %305, 4
  %307 = and i32 %306, 32752
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %305, 7
  %310 = and i32 %309, 32752
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %305, 22
  %313 = shl nuw nsw i32 %312, 5
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = add i32 %54, 232
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 255
  %319 = uitofp i32 %318 to float
  %320 = fmul fast float %319, 0x3F70101020000000
  %321 = lshr i32 %317, 8
  %322 = and i32 %321, 255
  %323 = uitofp i32 %322 to float
  %324 = fmul fast float %323, 0x3F70101020000000
  %325 = lshr i32 %317, 16
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = add i32 %54, 52
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = and i32 %331, 65535
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %331, 16
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = add i32 %54, 304
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 65535
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = lshr i32 %338, 16
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = fmul fast float %340, 0x3F50624DE0000000
  %344 = fmul fast float %342, 0x3F50624DE0000000
  %345 = add i32 %54, 188
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = shl i32 %347, 4
  %349 = and i32 %348, 32752
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %347, 7
  %352 = and i32 %351, 32752
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %347, 22
  %355 = shl nuw nsw i32 %354, 5
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = add i32 %54, 248
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = and i32 %359, 255
  %361 = uitofp i32 %360 to float
  %362 = fmul fast float %361, 0x3F70101020000000
  %363 = lshr i32 %359, 8
  %364 = and i32 %363, 255
  %365 = uitofp i32 %364 to float
  %366 = fmul fast float %365, 0x3F70101020000000
  %367 = lshr i32 %359, 16
  %368 = and i32 %367, 255
  %369 = uitofp i32 %368 to float
  %370 = fmul fast float %369, 0x3F70101020000000
  %371 = add i32 %54, 68
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = and i32 %373, 65535
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = lshr i32 %373, 16
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = add i32 %54, 320
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = and i32 %380, 65535
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = lshr i32 %380, 16
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = fmul fast float %382, 0x3F50624DE0000000
  %386 = fmul fast float %384, 0x3F50624DE0000000
  %387 = add i32 %54, 204
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = shl i32 %389, 4
  %391 = and i32 %390, 32752
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %389, 7
  %394 = and i32 %393, 32752
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %389, 22
  %397 = shl nuw nsw i32 %396, 5
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = add i32 %54, 264
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 255
  %403 = uitofp i32 %402 to float
  %404 = fmul fast float %403, 0x3F70101020000000
  %405 = lshr i32 %401, 8
  %406 = and i32 %405, 255
  %407 = uitofp i32 %406 to float
  %408 = fmul fast float %407, 0x3F70101020000000
  %409 = lshr i32 %401, 16
  %410 = and i32 %409, 255
  %411 = uitofp i32 %410 to float
  %412 = fmul fast float %411, 0x3F70101020000000
  %413 = add i32 %54, 84
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 65535
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = lshr i32 %415, 16
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = add i32 %54, 336
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, 65535
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = lshr i32 %422, 16
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = fmul fast float %424, 0x3F50624DE0000000
  %428 = fmul fast float %426, 0x3F50624DE0000000
  %429 = add i32 %54, 348
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 32
  %433 = icmp eq i32 %432, 0
  %434 = and i32 %431, 64
  %435 = icmp eq i32 %434, 0
  %436 = and i32 %431, 128
  %437 = icmp eq i32 %436, 0
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = and i32 %439, 2
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %457, label %442

; <label>:442                                     ; preds = %248
  %443 = add i32 %54, 520
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = add i32 %445, 0
  %447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %446, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %448 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %447, %dx.types.Handle %97, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = extractvalue %dx.types.ResRet.f32 %448, 1
  %451 = extractvalue %dx.types.ResRet.f32 %448, 2
  %452 = extractvalue %dx.types.ResRet.f32 %448, 3
  %453 = fmul fast float %452, %84
  %454 = fmul fast float %449, %85
  %455 = fmul fast float %450, %86
  %456 = fmul fast float %451, %87
  br label %457

; <label>:457                                     ; preds = %442, %248
  %458 = phi float [ %87, %248 ], [ %456, %442 ]
  %459 = phi float [ %86, %248 ], [ %455, %442 ]
  %460 = phi float [ %85, %248 ], [ %454, %442 ]
  %461 = phi float [ %84, %248 ], [ %453, %442 ]
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = and i32 %463, 2
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %485, label %466

; <label>:466                                     ; preds = %457
  %467 = add i32 %54, 44
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = and i32 %469, 1
  %471 = icmp ne i32 %470, 0
  %472 = select i1 %471, float %460, float 1.000000e+00
  %473 = add i32 %54, 60
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = and i32 %475, 1
  %477 = icmp ne i32 %476, 0
  %478 = select i1 %477, float %459, float 1.000000e+00
  %479 = add i32 %54, 76
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = and i32 %481, 1
  %483 = icmp ne i32 %482, 0
  %484 = select i1 %483, float %458, float 1.000000e+00
  br label %485

; <label>:485                                     ; preds = %466, %457
  %486 = phi float [ %458, %457 ], [ %484, %466 ]
  %487 = phi float [ %459, %457 ], [ %478, %466 ]
  %488 = phi float [ %460, %457 ], [ %472, %466 ]
  %489 = lshr i32 %463, 20
  %490 = and i32 %489, 3
  %491 = add nuw nsw i32 %490, 1
  %492 = add i32 %54, 24
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = add i32 %54, 28
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = or i32 %497, %494
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %1202, label %500

; <label>:500                                     ; preds = %485
  %501 = and i32 %494, 262144
  %502 = icmp ne i32 %501, 0
  %503 = select i1 %502, float %57, float 1.000000e+00
  %504 = select i1 %502, float %58, float 0.000000e+00
  %505 = select i1 %502, float %59, float 0.000000e+00
  %506 = select i1 %502, float %60, float 1.000000e+00
  %507 = select i1 %502, float %61, float %82
  %508 = select i1 %502, float %62, float %83
  %509 = add i32 %54, 284
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = lshr i32 %511, 16
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = fmul fast float %513, 0x3F50624DE0000000
  %515 = add i32 %54, 88
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = lshr i32 %517, 16
  %519 = and i32 %518, 255
  %520 = lshr i32 %517, 24
  %521 = add i32 %54, 292
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = and i32 %523, 65535
  %525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %524)  ; LegacyF16ToF32(value)
  %526 = lshr i32 %523, 16
  %527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %526)  ; LegacyF16ToF32(value)
  %528 = add i32 %54, 32
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = lshr i32 %530, 22
  %532 = shl nuw nsw i32 %531, 5
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = shl i32 %530, 4
  %535 = and i32 %534, 32752
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = lshr i32 %530, 7
  %538 = and i32 %537, 32752
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 3
  %542 = fmul fast float %541, 1.000000e+03
  %543 = fmul fast float %301, %542
  %544 = call float @dx.op.unary.f32(i32 22, float %543)  ; Frc(value)
  %545 = fadd fast float %544, %291
  %546 = fmul fast float %302, %542
  %547 = call float @dx.op.unary.f32(i32 22, float %546)  ; Frc(value)
  %548 = fadd fast float %547, %293
  %549 = fmul fast float %514, %542
  %550 = call float @dx.op.unary.f32(i32 22, float %549)  ; Frc(value)
  %551 = fmul fast float %550, 0x401921FB60000000
  %552 = fadd fast float %551, %533
  %553 = call float @dx.op.unary.f32(i32 13, float %552)  ; Sin(value)
  %554 = call float @dx.op.unary.f32(i32 12, float %552)  ; Cos(value)
  %555 = fsub fast float -0.000000e+00, %553
  %556 = fadd fast float %507, -5.000000e-01
  %557 = fadd fast float %508, -5.000000e-01
  %558 = fmul fast float %525, %556
  %559 = fmul fast float %527, %557
  %560 = fadd fast float %558, 5.000000e-01
  %561 = fadd fast float %559, 5.000000e-01
  %562 = fmul fast float %536, %560
  %563 = fmul fast float %539, %561
  %564 = fmul fast float %554, %562
  %565 = call float @dx.op.tertiary.f32(i32 46, float %555, float %563, float %564)  ; FMad(a,b,c)
  %566 = fmul fast float %553, %562
  %567 = call float @dx.op.tertiary.f32(i32 46, float %554, float %563, float %566)  ; FMad(a,b,c)
  %568 = fadd fast float %545, %565
  %569 = fadd fast float %548, %567
  %570 = icmp ugt i32 %519, 1
  %571 = icmp ugt i32 %517, 33554431
  %572 = or i1 %571, %570
  br i1 %572, label %573, label %598

; <label>:573                                     ; preds = %500
  %574 = add i32 %54, 228
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = lshr i32 %576, 16
  %578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %577)  ; LegacyF16ToF32(value)
  %579 = fmul fast float %541, %578
  %580 = call float @dx.op.unary.f32(i32 22, float %579)  ; Frc(value)
  %581 = mul nuw nsw i32 %519, %520
  %582 = uitofp i32 %581 to float
  %583 = fmul fast float %580, %582
  %584 = call float @dx.op.unary.f32(i32 27, float %583)  ; Round_ni(value)
  %585 = fptoui float %584 to i32
  %586 = urem i32 %585, %519
  %587 = udiv i32 %585, %520
  %588 = call float @dx.op.unary.f32(i32 22, float %568)  ; Frc(value)
  %589 = call float @dx.op.unary.f32(i32 22, float %569)  ; Frc(value)
  %590 = uitofp i32 %586 to float
  %591 = uitofp i32 %587 to float
  %592 = fadd fast float %588, %590
  %593 = fadd fast float %589, %591
  %594 = uitofp i32 %519 to float
  %595 = uitofp i32 %520 to float
  %596 = fdiv fast float %592, %594
  %597 = fdiv fast float %593, %595
  br label %598

; <label>:598                                     ; preds = %573, %500
  %599 = phi float [ %596, %573 ], [ %568, %500 ]
  %600 = phi float [ %597, %573 ], [ %569, %500 ]
  %601 = and i32 %494, 16777216
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %712, label %603

; <label>:603                                     ; preds = %598
  %604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.f32 %604, 0
  %606 = extractvalue %dx.types.CBufRet.f32 %604, 1
  %607 = extractvalue %dx.types.CBufRet.f32 %604, 2
  %608 = fadd fast float %605, %155
  %609 = fadd fast float %606, %156
  %610 = fadd fast float %607, %157
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 0
  %613 = call float @dx.op.unary.f32(i32 7, float %612)  ; Saturate(value)
  %614 = icmp eq i32 %55, 65535
  br i1 %614, label %709, label %615

; <label>:615                                     ; preds = %603
  %616 = lshr i32 %55, 1
  %617 = shl i32 %616, 2
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = and i32 %55, 1
  %621 = icmp ne i32 %620, 0
  %622 = lshr i32 %619, 16
  %623 = and i32 %619, 65535
  %624 = select i1 %621, i32 %622, i32 %623
  %625 = icmp eq i32 %624, 65535
  br i1 %625, label %705, label %626

; <label>:626                                     ; preds = %615
  %627 = mul nuw nsw i32 %624, 40
  %628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 0
  %630 = extractvalue %dx.types.ResRet.f32 %628, 1
  %631 = extractvalue %dx.types.ResRet.f32 %628, 2
  %632 = add nuw nsw i32 %627, 12
  %633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.f32 %633, 0
  %635 = extractvalue %dx.types.ResRet.f32 %633, 1
  %636 = extractvalue %dx.types.ResRet.f32 %633, 2
  %637 = add nuw nsw i32 %627, 24
  %638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.f32 %638, 0
  %640 = extractvalue %dx.types.ResRet.f32 %638, 1
  %641 = extractvalue %dx.types.ResRet.f32 %638, 2
  %642 = add nuw nsw i32 %627, 36
  %643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.f32 %643, 0
  %645 = fsub fast float %608, %629
  %646 = fsub fast float %609, %630
  %647 = fsub fast float %610, %631
  %648 = fmul fast float %644, %645
  %649 = fmul fast float %644, %646
  %650 = fmul fast float %644, %647
  %651 = call float @dx.op.unary.f32(i32 27, float %648)  ; Round_ni(value)
  %652 = call float @dx.op.unary.f32(i32 27, float %649)  ; Round_ni(value)
  %653 = call float @dx.op.unary.f32(i32 27, float %650)  ; Round_ni(value)
  %654 = fadd fast float %651, 5.000000e-01
  %655 = fadd fast float %652, 5.000000e-01
  %656 = fadd fast float %653, 5.000000e-01
  %657 = fmul fast float %654, %634
  %658 = fmul fast float %655, %635
  %659 = fmul fast float %656, %636
  %660 = shl i32 %55, 2
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %660, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = add i32 %662, 0
  %664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %663, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %665 = call float @dx.op.unary.f32(i32 22, float %657)  ; Frc(value)
  %666 = call float @dx.op.unary.f32(i32 22, float %658)  ; Frc(value)
  %667 = call float @dx.op.unary.f32(i32 22, float %659)  ; Frc(value)
  %668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %664, %dx.types.Handle %49, float %665, float %666, float %667, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %669 = extractvalue %dx.types.ResRet.f32 %668, 0
  %670 = extractvalue %dx.types.ResRet.f32 %668, 1
  %671 = extractvalue %dx.types.ResRet.f32 %668, 2
  %672 = fmul fast float %669, 1.023000e+03
  %673 = fmul fast float %670, 1.023000e+03
  %674 = fmul fast float %671, 1.023000e+03
  %675 = fadd fast float %672, 5.000000e-01
  %676 = fadd fast float %673, 5.000000e-01
  %677 = fadd fast float %674, 5.000000e-01
  %678 = call float @dx.op.unary.f32(i32 27, float %675)  ; Round_ni(value)
  %679 = call float @dx.op.unary.f32(i32 27, float %676)  ; Round_ni(value)
  %680 = call float @dx.op.unary.f32(i32 27, float %677)  ; Round_ni(value)
  %681 = fsub fast float %648, %651
  %682 = fsub fast float %649, %652
  %683 = fsub fast float %650, %653
  %684 = fmul fast float %681, 7.500000e-01
  %685 = fmul fast float %682, 7.500000e-01
  %686 = fmul fast float %683, 7.500000e-01
  %687 = fadd fast float %651, 1.250000e-01
  %688 = fadd fast float %687, %684
  %689 = fadd fast float %688, %678
  %690 = fadd fast float %652, 1.250000e-01
  %691 = fadd fast float %690, %685
  %692 = fadd fast float %691, %679
  %693 = fadd fast float %653, 1.250000e-01
  %694 = fadd fast float %693, %686
  %695 = fadd fast float %694, %680
  %696 = fmul fast float %689, %639
  %697 = fmul fast float %692, %640
  %698 = fmul fast float %695, %641
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %660, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = add i32 %700, 0
  %702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %701, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %702, %dx.types.Handle %47, float %696, float %697, float %698, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 0
  br label %705

; <label>:705                                     ; preds = %626, %615
  %706 = phi float [ %704, %626 ], [ -1.000000e+00, %615 ]
  %707 = fadd fast float %706, %613
  %708 = call float @dx.op.unary.f32(i32 7, float %707)  ; Saturate(value)
  br label %709

; <label>:709                                     ; preds = %705, %603
  %710 = phi float [ %708, %705 ], [ %613, %603 ]
  %711 = fmul fast float %710, %461
  br label %712

; <label>:712                                     ; preds = %709, %598
  %713 = phi float [ %711, %709 ], [ %461, %598 ]
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = and i32 %715, 256
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %764, label %718

; <label>:718                                     ; preds = %712
  %719 = add i32 %54, 472
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = add i32 %721, 0
  %723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %722, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %724 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %723, %dx.types.Handle %97, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %725 = extractvalue %dx.types.ResRet.f32 %724, 0
  %726 = add i32 %54, 100
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = shl i32 %728, 4
  %730 = and i32 %729, 32752
  %731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %730)  ; LegacyF16ToF32(value)
  %732 = lshr i32 %728, 7
  %733 = and i32 %732, 32752
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = fsub fast float 1.000000e+00, %713
  %736 = call float @dx.op.binary.f32(i32 35, float %735, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %737 = bitcast float %713 to i32
  %738 = sitofp i32 %737 to float
  %739 = fadd fast float %738, 0xC1CFBF8940000000
  %740 = fmul fast float %734, %739
  %741 = fadd fast float %740, 0x41CFBF8940000000
  %742 = fptosi float %741 to i32
  %743 = bitcast i32 %742 to float
  %744 = bitcast float %736 to i32
  %745 = sitofp i32 %744 to float
  %746 = fadd fast float %745, 0xC1CFBF8940000000
  %747 = fmul fast float %746, %734
  %748 = fadd fast float %747, 0x41CFBF8940000000
  %749 = fptosi float %748 to i32
  %750 = bitcast i32 %749 to float
  %751 = fmul fast float %743, %731
  %752 = fmul fast float %750, %731
  %753 = fsub fast float %736, %751
  %754 = fadd fast float %752, %736
  %755 = call float @dx.op.unary.f32(i32 7, float %753)  ; Saturate(value)
  %756 = call float @dx.op.unary.f32(i32 7, float %754)  ; Saturate(value)
  %757 = fsub fast float %725, %755
  %758 = fsub fast float %756, %755
  %759 = bitcast float %758 to i32
  %760 = sub nsw i32 2129859010, %759
  %761 = bitcast i32 %760 to float
  %762 = fmul fast float %761, %757
  %763 = call float @dx.op.unary.f32(i32 7, float %762)  ; Saturate(value)
  br label %764

; <label>:764                                     ; preds = %718, %712
  %765 = phi float [ %763, %718 ], [ %713, %712 ]
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = and i32 %767, 128
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %786, label %770

; <label>:770                                     ; preds = %764
  %771 = add i32 %54, 456
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = add i32 %773, 0
  %775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %774, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %776 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %775, %dx.types.Handle %97, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %777 = extractvalue %dx.types.ResRet.f32 %776, 0
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = and i32 %779, 524288
  %781 = icmp ne i32 %780, 0
  %782 = fcmp fast ogt float %777, 0x3FE0101020000000
  %783 = select i1 %782, float 1.000000e+00, float 0.000000e+00
  %784 = select i1 %781, float %783, float %777
  %785 = fmul fast float %784, %765
  br label %786

; <label>:786                                     ; preds = %770, %764
  %787 = phi float [ %785, %770 ], [ %765, %764 ]
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = and i32 %789, 16
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %990, label %792

; <label>:792                                     ; preds = %786
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = add i32 %54, 408
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %795, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = add i32 %797, 0
  %799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %798, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %800 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %799, %dx.types.Handle %96, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %801 = extractvalue %dx.types.ResRet.f32 %800, 0
  %802 = extractvalue %dx.types.ResRet.f32 %800, 1
  %803 = extractvalue %dx.types.ResRet.f32 %800, 2
  %804 = extractvalue %dx.types.ResRet.f32 %800, 3
  %805 = and i32 %794, 255
  %806 = uitofp i32 %805 to float
  %807 = lshr i32 %794, 8
  %808 = and i32 %807, 255
  %809 = uitofp i32 %808 to float
  %810 = fmul fast float %804, %806
  %811 = fadd fast float %810, %809
  %812 = fmul fast float %811, 0x3F70101000000000
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = and i32 %814, 512
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %825, label %817

; <label>:817                                     ; preds = %792
  %818 = add i32 %54, 488
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = add i32 %820, 0
  %822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %821, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %823 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %822, %dx.types.Handle %97, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %824 = extractvalue %dx.types.ResRet.f32 %823, 0
  br label %825

; <label>:825                                     ; preds = %817, %792
  %826 = phi float [ %824, %817 ], [ 1.000000e+00, %792 ]
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = and i32 %828, 33554432
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %937, label %831

; <label>:831                                     ; preds = %825
  %832 = add i32 %54, 224
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = and i32 %834, 65535
  %836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %835)  ; LegacyF16ToF32(value)
  %837 = lshr i32 %834, 16
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = add i32 %54, 228
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = and i32 %841, 65535
  %843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %842)  ; LegacyF16ToF32(value)
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = lshr i32 %845, 24
  %847 = uitofp i32 %846 to float
  %848 = fmul fast float %847, 0x3F70101020000000
  %849 = and i32 %845, 255
  %850 = uitofp i32 %849 to float
  %851 = fmul fast float %850, 0x3F70101020000000
  %852 = lshr i32 %845, 8
  %853 = and i32 %852, 255
  %854 = uitofp i32 %853 to float
  %855 = fmul fast float %854, 0x3F70101020000000
  %856 = lshr i32 %845, 16
  %857 = and i32 %856, 255
  %858 = uitofp i32 %857 to float
  %859 = fmul fast float %858, 0x3F70101020000000
  %860 = add i32 %54, 220
  %861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %860, i32 undef)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.i32 %861, 0
  %863 = lshr i32 %862, 24
  %864 = uitofp i32 %863 to float
  %865 = fmul fast float %864, 0x3F70101020000000
  %866 = and i32 %862, 255
  %867 = uitofp i32 %866 to float
  %868 = fmul fast float %867, 0x3F70101020000000
  %869 = lshr i32 %862, 8
  %870 = and i32 %869, 255
  %871 = uitofp i32 %870 to float
  %872 = fmul fast float %871, 0x3F70101020000000
  %873 = lshr i32 %862, 16
  %874 = and i32 %873, 255
  %875 = uitofp i32 %874 to float
  %876 = fmul fast float %875, 0x3F70101020000000
  %877 = bitcast float %801 to i32
  %878 = ashr i32 %877, 1
  %879 = sub nsw i32 1597463174, %878
  %880 = bitcast i32 %879 to float
  %881 = fmul fast float %801, 5.000000e-01
  %882 = fmul fast float %880, %880
  %883 = fmul fast float %882, %881
  %884 = fsub fast float 1.500000e+00, %883
  %885 = fmul fast float %880, %801
  %886 = fmul fast float %885, %884
  %887 = bitcast float %802 to i32
  %888 = ashr i32 %887, 1
  %889 = sub nsw i32 1597463174, %888
  %890 = bitcast i32 %889 to float
  %891 = fmul fast float %802, 5.000000e-01
  %892 = fmul fast float %890, %890
  %893 = fmul fast float %892, %891
  %894 = fsub fast float 1.500000e+00, %893
  %895 = fmul fast float %890, %802
  %896 = fmul fast float %895, %894
  %897 = bitcast float %803 to i32
  %898 = ashr i32 %897, 1
  %899 = sub nsw i32 1597463174, %898
  %900 = bitcast i32 %899 to float
  %901 = fmul fast float %803, 5.000000e-01
  %902 = fmul fast float %900, %900
  %903 = fmul fast float %902, %901
  %904 = fsub fast float 1.500000e+00, %903
  %905 = fmul fast float %900, %803
  %906 = fmul fast float %905, %904
  %907 = fsub fast float %886, %868
  %908 = fsub fast float %896, %872
  %909 = fsub fast float %906, %876
  %910 = fmul fast float %907, %836
  %911 = fmul fast float %908, %838
  %912 = fmul fast float %909, %843
  %913 = fadd fast float %910, %851
  %914 = fadd fast float %911, %855
  %915 = fadd fast float %912, %859
  %916 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  %917 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %918 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  %919 = fmul fast float %916, %916
  %920 = fmul fast float %917, %917
  %921 = fmul fast float %918, %918
  %922 = fsub fast float %919, %801
  %923 = fsub fast float %920, %802
  %924 = fsub fast float %921, %803
  %925 = fmul fast float %922, %826
  %926 = fmul fast float %923, %826
  %927 = fmul fast float %924, %826
  %928 = fadd fast float %925, %801
  %929 = fadd fast float %926, %802
  %930 = fadd fast float %927, %803
  %931 = fadd fast float %848, %812
  %932 = fsub fast float %931, %865
  %933 = call float @dx.op.unary.f32(i32 7, float %932)  ; Saturate(value)
  %934 = fsub fast float %933, %812
  %935 = fmul fast float %934, %826
  %936 = fadd fast float %935, %812
  br label %990

; <label>:937                                     ; preds = %825
  %938 = and i32 %828, 134217728
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %974, label %940

; <label>:940                                     ; preds = %937
  %941 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %942 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %943 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %944 = fadd fast float %941, -5.000000e-01
  %945 = fadd fast float %942, -5.000000e-01
  %946 = fadd fast float %943, -5.000000e-01
  %947 = fmul fast float %944, %826
  %948 = fmul fast float %945, %826
  %949 = fmul fast float %946, %826
  %950 = fadd fast float %947, 5.000000e-01
  %951 = fadd fast float %948, 5.000000e-01
  %952 = fadd fast float %949, 5.000000e-01
  %953 = call float @dx.op.unary.f32(i32 24, float %801)  ; Sqrt(value)
  %954 = call float @dx.op.unary.f32(i32 24, float %802)  ; Sqrt(value)
  %955 = call float @dx.op.unary.f32(i32 24, float %803)  ; Sqrt(value)
  %956 = fmul fast float %950, 2.000000e+00
  %957 = fsub fast float 1.000000e+00, %956
  %958 = fmul fast float %957, %953
  %959 = fadd fast float %958, %956
  %960 = fmul fast float %959, %953
  %961 = fmul fast float %951, 2.000000e+00
  %962 = fsub fast float 1.000000e+00, %961
  %963 = fmul fast float %962, %954
  %964 = fadd fast float %963, %961
  %965 = fmul fast float %964, %954
  %966 = fmul fast float %952, 2.000000e+00
  %967 = fsub fast float 1.000000e+00, %966
  %968 = fmul fast float %967, %955
  %969 = fadd fast float %968, %966
  %970 = fmul fast float %969, %955
  %971 = fmul fast float %960, %960
  %972 = fmul fast float %965, %965
  %973 = fmul fast float %970, %970
  br label %990

; <label>:974                                     ; preds = %937
  %975 = fmul fast float %278, %278
  %976 = fmul fast float %282, %282
  %977 = fmul fast float %286, %286
  %978 = fadd fast float %975, -1.000000e+00
  %979 = fadd fast float %976, -1.000000e+00
  %980 = fadd fast float %977, -1.000000e+00
  %981 = fmul fast float %826, %978
  %982 = fmul fast float %826, %979
  %983 = fmul fast float %826, %980
  %984 = fadd fast float %981, 1.000000e+00
  %985 = fadd fast float %982, 1.000000e+00
  %986 = fadd fast float %983, 1.000000e+00
  %987 = fmul fast float %984, %801
  %988 = fmul fast float %985, %802
  %989 = fmul fast float %986, %803
  br label %990

; <label>:990                                     ; preds = %974, %940, %831, %786
  %991 = phi float [ %936, %831 ], [ %812, %940 ], [ %812, %974 ], [ 0x3FA23C0BE0000000, %786 ]
  %992 = phi float [ %928, %831 ], [ %971, %940 ], [ %987, %974 ], [ 1.000000e+00, %786 ]
  %993 = phi float [ %929, %831 ], [ %972, %940 ], [ %988, %974 ], [ 1.000000e+00, %786 ]
  %994 = phi float [ %930, %831 ], [ %973, %940 ], [ %989, %974 ], [ 1.000000e+00, %786 ]
  %995 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.i32 %995, 1
  %997 = and i32 %996, 1
  %998 = icmp ne i32 %997, 0
  %999 = add i32 %54, 356
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = and i32 %1001, 32
  %1003 = icmp ne i32 %1002, 0
  %1004 = and i1 %998, %1003
  %1005 = select i1 %1004, float 1.000000e+00, float %992
  %1006 = select i1 %1004, float 0x3FD3333340000000, float %993
  %1007 = select i1 %1004, float 0x3FD3333340000000, float %994
  %1008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = and i32 %1009, 32
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1084, label %1012

; <label>:1012                                    ; preds = %990
  %1013 = add i32 %54, 92
  %1014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1013, i32 undef)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.i32 %1014, 0
  %1016 = add i32 %54, 424
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = add i32 %1018, 0
  %1020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1019, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1021 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1020, %dx.types.Handle %96, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.ResRet.f32 %1021, 1
  %1024 = extractvalue %dx.types.ResRet.f32 %1021, 2
  %1025 = extractvalue %dx.types.ResRet.f32 %1021, 3
  %1026 = and i32 %1015, 255
  %1027 = uitofp i32 %1026 to float
  %1028 = lshr i32 %1015, 8
  %1029 = and i32 %1028, 255
  %1030 = uitofp i32 %1029 to float
  %1031 = lshr i32 %1015, 16
  %1032 = and i32 %1031, 255
  %1033 = uitofp i32 %1032 to float
  %1034 = fmul fast float %1033, 0x3F70101000000000
  %1035 = fmul fast float %1022, %1027
  %1036 = fadd fast float %1035, %1030
  %1037 = fmul fast float %1036, 0x3F70101000000000
  %1038 = fadd fast float %1023, -5.000000e-01
  %1039 = fadd fast float %1025, -5.000000e-01
  %1040 = fmul fast float %1038, %1034
  %1041 = fmul fast float %1039, %1034
  %1042 = fadd fast float %1040, 5.000000e-01
  %1043 = fadd fast float %1041, 5.000000e-01
  %1044 = fmul fast float %1042, 2.000000e+00
  %1045 = fadd fast float %1044, -1.000000e+00
  %1046 = fmul fast float %1043, 2.000000e+00
  %1047 = fadd fast float %1046, -1.000000e+00
  %1048 = fadd fast float %1045, %1047
  %1049 = fmul fast float %1048, 5.000000e-01
  %1050 = fsub fast float %1045, %1047
  %1051 = fmul fast float %1050, 5.000000e-01
  %1052 = call float @dx.op.unary.f32(i32 6, float %1049)  ; FAbs(value)
  %1053 = fsub fast float 1.000000e+00, %1052
  %1054 = call float @dx.op.unary.f32(i32 6, float %1051)  ; FAbs(value)
  %1055 = fsub fast float %1053, %1054
  %1056 = call float @dx.op.dot3.f32(i32 55, float %1049, float %1051, float %1055, float %1049, float %1051, float %1055)  ; Dot3(ax,ay,az,bx,by,bz)
  %1057 = call float @dx.op.unary.f32(i32 25, float %1056)  ; Rsqrt(value)
  %1058 = fmul fast float %1049, %1057
  %1059 = fmul fast float %1051, %1057
  %1060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.i32 %1060, 0
  %1062 = and i32 %1061, 67108864
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1080, label %1064

; <label>:1064                                    ; preds = %1012
  %1065 = add i32 %54, 280
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = and i32 %1067, 65535
  %1069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1068)  ; LegacyF16ToF32(value)
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = and i32 %1071, 65535
  %1073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1072)  ; LegacyF16ToF32(value)
  %1074 = lshr i32 %1067, 16
  %1075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1074)  ; LegacyF16ToF32(value)
  %1076 = fsub fast float %1037, %1075
  %1077 = fmul fast float %1076, %1069
  %1078 = fadd fast float %1077, %1073
  %1079 = call float @dx.op.unary.f32(i32 7, float %1078)  ; Saturate(value)
  br label %1080

; <label>:1080                                    ; preds = %1064, %1012
  %1081 = phi float [ %1079, %1064 ], [ %1037, %1012 ]
  %1082 = call float @dx.op.dot2.f32(i32 54, float %1058, float %1059, float %503, float %504)  ; Dot2(ax,ay,bx,by)
  %1083 = call float @dx.op.dot2.f32(i32 54, float %1058, float %1059, float %505, float %506)  ; Dot2(ax,ay,bx,by)
  br label %1084

; <label>:1084                                    ; preds = %1080, %990
  %1085 = phi float [ %1081, %1080 ], [ 0x3FD6666660000000, %990 ]
  %1086 = phi float [ %1082, %1080 ], [ 0.000000e+00, %990 ]
  %1087 = phi float [ %1083, %1080 ], [ 0.000000e+00, %990 ]
  %1088 = phi float [ %1024, %1080 ], [ 1.000000e+00, %990 ]
  %1089 = add i32 %54, 160
  %1090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.i32 %1090, 0
  %1092 = lshr i32 %1091, 22
  %1093 = shl nuw nsw i32 %1092, 5
  %1094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1093)  ; LegacyF16ToF32(value)
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = and i32 %1096, 64
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1132, label %1099

; <label>:1099                                    ; preds = %1084
  %1100 = add i32 %54, 440
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = add i32 %1102, 0
  %1104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1103, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = and i32 %1106, 131072
  %1108 = icmp eq i32 %1107, 0
  %1109 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1104, %dx.types.Handle %96, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1110 = extractvalue %dx.types.ResRet.f32 %1109, 0
  %1111 = extractvalue %dx.types.ResRet.f32 %1109, 1
  %1112 = extractvalue %dx.types.ResRet.f32 %1109, 2
  %1113 = fmul fast float %1110, %266
  %1114 = fmul fast float %1111, %269
  %1115 = fmul fast float %1112, %272
  br i1 %1108, label %1122, label %1116

; <label>:1116                                    ; preds = %1099
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 0
  %1119 = fmul fast float %1118, %1113
  %1120 = fmul fast float %1118, %1114
  %1121 = fmul fast float %1118, %1115
  br label %1122

; <label>:1122                                    ; preds = %1116, %1099
  %1123 = phi float [ %1119, %1116 ], [ %1113, %1099 ]
  %1124 = phi float [ %1120, %1116 ], [ %1114, %1099 ]
  %1125 = phi float [ %1121, %1116 ], [ %1115, %1099 ]
  %1126 = fmul fast float %1123, %1094
  %1127 = select i1 %249, float %1126, float %1123
  %1128 = call float @dx.op.dot3.f32(i32 55, float %1127, float %1124, float %1125, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1129 = select i1 %249, float 0.000000e+00, float %1123
  %1130 = select i1 %249, float %1128, float %1124
  %1131 = select i1 %249, float 0.000000e+00, float %1125
  br label %1132

; <label>:1132                                    ; preds = %1122, %1084
  %1133 = phi float [ %1129, %1122 ], [ 0.000000e+00, %1084 ]
  %1134 = phi float [ %1130, %1122 ], [ 0.000000e+00, %1084 ]
  %1135 = phi float [ %1131, %1122 ], [ 0.000000e+00, %1084 ]
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = and i32 %1137, 10240
  %1139 = icmp eq i32 %1138, 0
  br i1 %1139, label %1184, label %1140

; <label>:1140                                    ; preds = %1132
  %1141 = add i32 %54, 504
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = add i32 %1143, 0
  %1145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1144, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1146 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1145, %dx.types.Handle %97, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 1
  %1148 = extractvalue %dx.types.ResRet.f32 %1146, 3
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = and i32 %1150, 1048576
  %1152 = icmp ne i32 %1151, 0
  %1153 = and i32 %1150, 8192
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1170, label %1155

; <label>:1155                                    ; preds = %1140
  %1156 = extractvalue %dx.types.ResRet.f32 %1146, 2
  %1157 = select i1 %1152, float %1156, float %1147
  %1158 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1159 = select i1 %1152, float %1158, float %1147
  %1160 = add i32 %54, 96
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1160, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = lshr i32 %1162, 16
  %1164 = and i32 %1163, 255
  %1165 = uitofp i32 %1164 to float
  %1166 = fmul fast float %1165, 0x3F80101020000000
  %1167 = fmul fast float %1166, %1159
  %1168 = fmul fast float %1166, %1147
  %1169 = fmul fast float %1166, %1157
  br label %1170

; <label>:1170                                    ; preds = %1155, %1140
  %1171 = phi float [ %1167, %1155 ], [ 0.000000e+00, %1140 ]
  %1172 = phi float [ %1168, %1155 ], [ 0.000000e+00, %1140 ]
  %1173 = phi float [ %1169, %1155 ], [ 0.000000e+00, %1140 ]
  %1174 = and i32 %1150, 2048
  %1175 = icmp eq i32 %1174, 0
  br i1 %1175, label %1184, label %1176

; <label>:1176                                    ; preds = %1170
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = shl i32 %1178, 4
  %1180 = and i32 %1179, 32752
  %1181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1180)  ; LegacyF16ToF32(value)
  %1182 = fmul fast float %1181, %1148
  %1183 = call float @dx.op.binary.f32(i32 35, float %1182, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1184

; <label>:1184                                    ; preds = %1176, %1170, %1132
  %1185 = phi float [ %1171, %1176 ], [ %1171, %1170 ], [ 0.000000e+00, %1132 ]
  %1186 = phi float [ %1172, %1176 ], [ %1172, %1170 ], [ 0.000000e+00, %1132 ]
  %1187 = phi float [ %1173, %1176 ], [ %1173, %1170 ], [ 0.000000e+00, %1132 ]
  %1188 = phi float [ %1183, %1176 ], [ 0x3F70101020000000, %1170 ], [ 0x3F70101020000000, %1132 ]
  %1189 = add i32 %54, 96
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = and i32 %1191, 255
  %1193 = uitofp i32 %1192 to float
  %1194 = lshr i32 %1191, 8
  %1195 = and i32 %1194, 255
  %1196 = uitofp i32 %1195 to float
  %1197 = call float @dx.op.dot3.f32(i32 55, float %1005, float %1006, float %1007, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1198 = fmul fast float %1196, %1197
  %1199 = fadd fast float %1198, %1193
  %1200 = fmul fast float %1199, 0x3F70101020000000
  %1201 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  br label %1202

; <label>:1202                                    ; preds = %1184, %485
  %1203 = phi float [ 0.000000e+00, %485 ], [ %1086, %1184 ]
  %1204 = phi float [ 0.000000e+00, %485 ], [ %1087, %1184 ]
  %1205 = phi float [ 0.000000e+00, %485 ], [ %1005, %1184 ]
  %1206 = phi float [ 0.000000e+00, %485 ], [ %1006, %1184 ]
  %1207 = phi float [ 0.000000e+00, %485 ], [ %1007, %1184 ]
  %1208 = phi float [ 0.000000e+00, %485 ], [ %1185, %1184 ]
  %1209 = phi float [ 0.000000e+00, %485 ], [ %1186, %1184 ]
  %1210 = phi float [ 0.000000e+00, %485 ], [ %1187, %1184 ]
  %1211 = phi float [ 0.000000e+00, %485 ], [ %1133, %1184 ]
  %1212 = phi float [ 0.000000e+00, %485 ], [ %1134, %1184 ]
  %1213 = phi float [ 0.000000e+00, %485 ], [ %1135, %1184 ]
  %1214 = phi float [ 0.000000e+00, %485 ], [ %991, %1184 ]
  %1215 = phi float [ 0.000000e+00, %485 ], [ %787, %1184 ]
  %1216 = phi float [ 0.000000e+00, %485 ], [ %1085, %1184 ]
  %1217 = phi float [ 0.000000e+00, %485 ], [ %1088, %1184 ]
  %1218 = phi float [ 0.000000e+00, %485 ], [ %1188, %1184 ]
  %1219 = phi float [ 0.000000e+00, %485 ], [ %1201, %1184 ]
  br i1 %433, label %2148, label %1220

; <label>:1220                                    ; preds = %1202
  %1221 = icmp ult i32 %491, 2
  %1222 = add i32 %54, 40
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = add i32 %54, 44
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = or i32 %1227, %1224
  %1229 = icmp eq i32 %1228, 0
  br i1 %1229, label %2148, label %1230

; <label>:1230                                    ; preds = %1220
  %1231 = and i32 %1224, 262144
  %1232 = icmp ne i32 %1231, 0
  %1233 = select i1 %1232, float %57, float 1.000000e+00
  %1234 = select i1 %1232, float %58, float 0.000000e+00
  %1235 = select i1 %1232, float %59, float 0.000000e+00
  %1236 = select i1 %1232, float %60, float 1.000000e+00
  %1237 = select i1 %1232, float %61, float %82
  %1238 = select i1 %1232, float %62, float %83
  %1239 = add i32 %54, 300
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = lshr i32 %1241, 16
  %1243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1242)  ; LegacyF16ToF32(value)
  %1244 = fmul fast float %1243, 0x3F50624DE0000000
  %1245 = add i32 %54, 104
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = lshr i32 %1247, 16
  %1249 = and i32 %1248, 255
  %1250 = lshr i32 %1247, 24
  %1251 = add i32 %54, 308
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = and i32 %1253, 65535
  %1255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1254)  ; LegacyF16ToF32(value)
  %1256 = lshr i32 %1253, 16
  %1257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1256)  ; LegacyF16ToF32(value)
  %1258 = add i32 %54, 48
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = lshr i32 %1260, 22
  %1262 = shl nuw nsw i32 %1261, 5
  %1263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1262)  ; LegacyF16ToF32(value)
  %1264 = shl i32 %1260, 4
  %1265 = and i32 %1264, 32752
  %1266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1265)  ; LegacyF16ToF32(value)
  %1267 = lshr i32 %1260, 7
  %1268 = and i32 %1267, 32752
  %1269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1268)  ; LegacyF16ToF32(value)
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 3
  %1272 = fmul fast float %1271, 1.000000e+03
  %1273 = fmul fast float %343, %1272
  %1274 = call float @dx.op.unary.f32(i32 22, float %1273)  ; Frc(value)
  %1275 = fadd fast float %1274, %333
  %1276 = fmul fast float %344, %1272
  %1277 = call float @dx.op.unary.f32(i32 22, float %1276)  ; Frc(value)
  %1278 = fadd fast float %1277, %335
  %1279 = fmul fast float %1244, %1272
  %1280 = call float @dx.op.unary.f32(i32 22, float %1279)  ; Frc(value)
  %1281 = fmul fast float %1280, 0x401921FB60000000
  %1282 = fadd fast float %1281, %1263
  %1283 = call float @dx.op.unary.f32(i32 13, float %1282)  ; Sin(value)
  %1284 = call float @dx.op.unary.f32(i32 12, float %1282)  ; Cos(value)
  %1285 = fsub fast float -0.000000e+00, %1283
  %1286 = fadd fast float %1237, -5.000000e-01
  %1287 = fadd fast float %1238, -5.000000e-01
  %1288 = fmul fast float %1255, %1286
  %1289 = fmul fast float %1257, %1287
  %1290 = fadd fast float %1288, 5.000000e-01
  %1291 = fadd fast float %1289, 5.000000e-01
  %1292 = fmul fast float %1266, %1290
  %1293 = fmul fast float %1269, %1291
  %1294 = fmul fast float %1284, %1292
  %1295 = call float @dx.op.tertiary.f32(i32 46, float %1285, float %1293, float %1294)  ; FMad(a,b,c)
  %1296 = fmul fast float %1283, %1292
  %1297 = call float @dx.op.tertiary.f32(i32 46, float %1284, float %1293, float %1296)  ; FMad(a,b,c)
  %1298 = fadd fast float %1275, %1295
  %1299 = fadd fast float %1278, %1297
  %1300 = icmp ugt i32 %1249, 1
  %1301 = icmp ugt i32 %1247, 33554431
  %1302 = or i1 %1301, %1300
  br i1 %1302, label %1303, label %1328

; <label>:1303                                    ; preds = %1230
  %1304 = add i32 %54, 244
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = lshr i32 %1306, 16
  %1308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1307)  ; LegacyF16ToF32(value)
  %1309 = fmul fast float %1271, %1308
  %1310 = call float @dx.op.unary.f32(i32 22, float %1309)  ; Frc(value)
  %1311 = mul nuw nsw i32 %1249, %1250
  %1312 = uitofp i32 %1311 to float
  %1313 = fmul fast float %1310, %1312
  %1314 = call float @dx.op.unary.f32(i32 27, float %1313)  ; Round_ni(value)
  %1315 = fptoui float %1314 to i32
  %1316 = urem i32 %1315, %1249
  %1317 = udiv i32 %1315, %1250
  %1318 = call float @dx.op.unary.f32(i32 22, float %1298)  ; Frc(value)
  %1319 = call float @dx.op.unary.f32(i32 22, float %1299)  ; Frc(value)
  %1320 = uitofp i32 %1316 to float
  %1321 = uitofp i32 %1317 to float
  %1322 = fadd fast float %1318, %1320
  %1323 = fadd fast float %1319, %1321
  %1324 = uitofp i32 %1249 to float
  %1325 = uitofp i32 %1250 to float
  %1326 = fdiv fast float %1322, %1324
  %1327 = fdiv fast float %1323, %1325
  br label %1328

; <label>:1328                                    ; preds = %1303, %1230
  %1329 = phi float [ %1326, %1303 ], [ %1298, %1230 ]
  %1330 = phi float [ %1327, %1303 ], [ %1299, %1230 ]
  %1331 = and i32 %1224, 16777216
  %1332 = icmp eq i32 %1331, 0
  br i1 %1332, label %1442, label %1333

; <label>:1333                                    ; preds = %1328
  %1334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1335 = extractvalue %dx.types.CBufRet.f32 %1334, 0
  %1336 = extractvalue %dx.types.CBufRet.f32 %1334, 1
  %1337 = extractvalue %dx.types.CBufRet.f32 %1334, 2
  %1338 = fadd fast float %1335, %155
  %1339 = fadd fast float %1336, %156
  %1340 = fadd fast float %1337, %157
  %1341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1342 = extractvalue %dx.types.CBufRet.f32 %1341, 0
  %1343 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1344 = icmp eq i32 %55, 65535
  br i1 %1344, label %1439, label %1345

; <label>:1345                                    ; preds = %1333
  %1346 = lshr i32 %55, 1
  %1347 = shl i32 %1346, 2
  %1348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1347, i32 undef)  ; BufferLoad(srv,index,wot)
  %1349 = extractvalue %dx.types.ResRet.i32 %1348, 0
  %1350 = and i32 %55, 1
  %1351 = icmp ne i32 %1350, 0
  %1352 = lshr i32 %1349, 16
  %1353 = and i32 %1349, 65535
  %1354 = select i1 %1351, i32 %1352, i32 %1353
  %1355 = icmp eq i32 %1354, 65535
  br i1 %1355, label %1435, label %1356

; <label>:1356                                    ; preds = %1345
  %1357 = mul nuw nsw i32 %1354, 40
  %1358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1357, i32 undef)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  %1360 = extractvalue %dx.types.ResRet.f32 %1358, 1
  %1361 = extractvalue %dx.types.ResRet.f32 %1358, 2
  %1362 = add nuw nsw i32 %1357, 12
  %1363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1362, i32 undef)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.f32 %1363, 0
  %1365 = extractvalue %dx.types.ResRet.f32 %1363, 1
  %1366 = extractvalue %dx.types.ResRet.f32 %1363, 2
  %1367 = add nuw nsw i32 %1357, 24
  %1368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1367, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.ResRet.f32 %1368, 1
  %1371 = extractvalue %dx.types.ResRet.f32 %1368, 2
  %1372 = add nuw nsw i32 %1357, 36
  %1373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.f32 %1373, 0
  %1375 = fsub fast float %1338, %1359
  %1376 = fsub fast float %1339, %1360
  %1377 = fsub fast float %1340, %1361
  %1378 = fmul fast float %1374, %1375
  %1379 = fmul fast float %1374, %1376
  %1380 = fmul fast float %1374, %1377
  %1381 = call float @dx.op.unary.f32(i32 27, float %1378)  ; Round_ni(value)
  %1382 = call float @dx.op.unary.f32(i32 27, float %1379)  ; Round_ni(value)
  %1383 = call float @dx.op.unary.f32(i32 27, float %1380)  ; Round_ni(value)
  %1384 = fadd fast float %1381, 5.000000e-01
  %1385 = fadd fast float %1382, 5.000000e-01
  %1386 = fadd fast float %1383, 5.000000e-01
  %1387 = fmul fast float %1384, %1364
  %1388 = fmul fast float %1385, %1365
  %1389 = fmul fast float %1386, %1366
  %1390 = shl i32 %55, 2
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1390, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = add i32 %1392, 0
  %1394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1393, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1395 = call float @dx.op.unary.f32(i32 22, float %1387)  ; Frc(value)
  %1396 = call float @dx.op.unary.f32(i32 22, float %1388)  ; Frc(value)
  %1397 = call float @dx.op.unary.f32(i32 22, float %1389)  ; Frc(value)
  %1398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1394, %dx.types.Handle %49, float %1395, float %1396, float %1397, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.ResRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.ResRet.f32 %1398, 2
  %1402 = fmul fast float %1399, 1.023000e+03
  %1403 = fmul fast float %1400, 1.023000e+03
  %1404 = fmul fast float %1401, 1.023000e+03
  %1405 = fadd fast float %1402, 5.000000e-01
  %1406 = fadd fast float %1403, 5.000000e-01
  %1407 = fadd fast float %1404, 5.000000e-01
  %1408 = call float @dx.op.unary.f32(i32 27, float %1405)  ; Round_ni(value)
  %1409 = call float @dx.op.unary.f32(i32 27, float %1406)  ; Round_ni(value)
  %1410 = call float @dx.op.unary.f32(i32 27, float %1407)  ; Round_ni(value)
  %1411 = fsub fast float %1378, %1381
  %1412 = fsub fast float %1379, %1382
  %1413 = fsub fast float %1380, %1383
  %1414 = fmul fast float %1411, 7.500000e-01
  %1415 = fmul fast float %1412, 7.500000e-01
  %1416 = fmul fast float %1413, 7.500000e-01
  %1417 = fadd fast float %1381, 1.250000e-01
  %1418 = fadd fast float %1417, %1414
  %1419 = fadd fast float %1418, %1408
  %1420 = fadd fast float %1382, 1.250000e-01
  %1421 = fadd fast float %1420, %1415
  %1422 = fadd fast float %1421, %1409
  %1423 = fadd fast float %1383, 1.250000e-01
  %1424 = fadd fast float %1423, %1416
  %1425 = fadd fast float %1424, %1410
  %1426 = fmul fast float %1419, %1369
  %1427 = fmul fast float %1422, %1370
  %1428 = fmul fast float %1425, %1371
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1390, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = add i32 %1430, 0
  %1432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1431, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1432, %dx.types.Handle %47, float %1426, float %1427, float %1428, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1434 = extractvalue %dx.types.ResRet.f32 %1433, 0
  br label %1435

; <label>:1435                                    ; preds = %1356, %1345
  %1436 = phi float [ %1434, %1356 ], [ -1.000000e+00, %1345 ]
  %1437 = fadd fast float %1436, %1343
  %1438 = call float @dx.op.unary.f32(i32 7, float %1437)  ; Saturate(value)
  br label %1439

; <label>:1439                                    ; preds = %1435, %1333
  %1440 = phi float [ %1438, %1435 ], [ %1343, %1333 ]
  %1441 = fmul fast float %1440, %488
  br label %1442

; <label>:1442                                    ; preds = %1439, %1328
  %1443 = phi float [ %1441, %1439 ], [ %488, %1328 ]
  %1444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.i32 %1444, 0
  %1446 = and i32 %1445, 256
  %1447 = icmp eq i32 %1446, 0
  br i1 %1447, label %1494, label %1448

; <label>:1448                                    ; preds = %1442
  %1449 = add i32 %54, 476
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = add i32 %1451, 0
  %1453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1452, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1454 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1453, %dx.types.Handle %97, float %1329, float %1330, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1455 = extractvalue %dx.types.ResRet.f32 %1454, 0
  %1456 = add i32 %54, 116
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = shl i32 %1458, 4
  %1460 = and i32 %1459, 32752
  %1461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1460)  ; LegacyF16ToF32(value)
  %1462 = lshr i32 %1458, 7
  %1463 = and i32 %1462, 32752
  %1464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1463)  ; LegacyF16ToF32(value)
  %1465 = fsub fast float 1.000000e+00, %1443
  %1466 = call float @dx.op.binary.f32(i32 35, float %1465, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1467 = bitcast float %1443 to i32
  %1468 = sitofp i32 %1467 to float
  %1469 = fadd fast float %1468, 0xC1CFBF8940000000
  %1470 = fmul fast float %1464, %1469
  %1471 = fadd fast float %1470, 0x41CFBF8940000000
  %1472 = fptosi float %1471 to i32
  %1473 = bitcast i32 %1472 to float
  %1474 = bitcast float %1466 to i32
  %1475 = sitofp i32 %1474 to float
  %1476 = fadd fast float %1475, 0xC1CFBF8940000000
  %1477 = fmul fast float %1476, %1464
  %1478 = fadd fast float %1477, 0x41CFBF8940000000
  %1479 = fptosi float %1478 to i32
  %1480 = bitcast i32 %1479 to float
  %1481 = fmul fast float %1473, %1461
  %1482 = fmul fast float %1480, %1461
  %1483 = fsub fast float %1466, %1481
  %1484 = fadd fast float %1482, %1466
  %1485 = call float @dx.op.unary.f32(i32 7, float %1483)  ; Saturate(value)
  %1486 = call float @dx.op.unary.f32(i32 7, float %1484)  ; Saturate(value)
  %1487 = fsub fast float %1455, %1485
  %1488 = fsub fast float %1486, %1485
  %1489 = bitcast float %1488 to i32
  %1490 = sub nsw i32 2129859010, %1489
  %1491 = bitcast i32 %1490 to float
  %1492 = fmul fast float %1491, %1487
  %1493 = call float @dx.op.unary.f32(i32 7, float %1492)  ; Saturate(value)
  br label %1494

; <label>:1494                                    ; preds = %1448, %1442
  %1495 = phi float [ %1493, %1448 ], [ %1443, %1442 ]
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = and i32 %1497, 128
  %1499 = icmp eq i32 %1498, 0
  br i1 %1499, label %1516, label %1500

; <label>:1500                                    ; preds = %1494
  %1501 = add i32 %54, 460
  %1502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.i32 %1502, 0
  %1504 = add i32 %1503, 0
  %1505 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1504, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1506 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1505, %dx.types.Handle %97, float %1329, float %1330, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1507 = extractvalue %dx.types.ResRet.f32 %1506, 0
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = and i32 %1509, 524288
  %1511 = icmp ne i32 %1510, 0
  %1512 = fcmp fast ogt float %1507, 0x3FE0101020000000
  %1513 = select i1 %1512, float 1.000000e+00, float 0.000000e+00
  %1514 = select i1 %1511, float %1513, float %1507
  %1515 = fmul fast float %1514, %1495
  br label %1516

; <label>:1516                                    ; preds = %1500, %1494
  %1517 = phi float [ %1515, %1500 ], [ %1495, %1494 ]
  %1518 = fcmp fast ult float %1517, 0x3F70101020000000
  br i1 %1518, label %2148, label %1519

; <label>:1519                                    ; preds = %1516
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = and i32 %1521, 16
  %1523 = icmp eq i32 %1522, 0
  br i1 %1523, label %1722, label %1524

; <label>:1524                                    ; preds = %1519
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = add i32 %54, 412
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1527, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = add i32 %1529, 0
  %1531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1532 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1531, %dx.types.Handle %96, float %1329, float %1330, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1533 = extractvalue %dx.types.ResRet.f32 %1532, 0
  %1534 = extractvalue %dx.types.ResRet.f32 %1532, 1
  %1535 = extractvalue %dx.types.ResRet.f32 %1532, 2
  %1536 = extractvalue %dx.types.ResRet.f32 %1532, 3
  %1537 = and i32 %1526, 255
  %1538 = uitofp i32 %1537 to float
  %1539 = lshr i32 %1526, 8
  %1540 = and i32 %1539, 255
  %1541 = uitofp i32 %1540 to float
  %1542 = fmul fast float %1536, %1538
  %1543 = fadd fast float %1542, %1541
  %1544 = fmul fast float %1543, 0x3F70101000000000
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = and i32 %1546, 512
  %1548 = icmp eq i32 %1547, 0
  br i1 %1548, label %1557, label %1549

; <label>:1549                                    ; preds = %1524
  %1550 = add i32 %54, 492
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = add i32 %1552, 0
  %1554 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1553, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1555 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1554, %dx.types.Handle %97, float %1329, float %1330, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1556 = extractvalue %dx.types.ResRet.f32 %1555, 0
  br label %1557

; <label>:1557                                    ; preds = %1549, %1524
  %1558 = phi float [ %1556, %1549 ], [ 1.000000e+00, %1524 ]
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = and i32 %1560, 33554432
  %1562 = icmp eq i32 %1561, 0
  br i1 %1562, label %1669, label %1563

; <label>:1563                                    ; preds = %1557
  %1564 = add i32 %54, 240
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1564, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = and i32 %1566, 65535
  %1568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1567)  ; LegacyF16ToF32(value)
  %1569 = lshr i32 %1566, 16
  %1570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1569)  ; LegacyF16ToF32(value)
  %1571 = add i32 %54, 244
  %1572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1571, i32 undef)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.i32 %1572, 0
  %1574 = and i32 %1573, 65535
  %1575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1574)  ; LegacyF16ToF32(value)
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = lshr i32 %1577, 24
  %1579 = uitofp i32 %1578 to float
  %1580 = fmul fast float %1579, 0x3F70101020000000
  %1581 = and i32 %1577, 255
  %1582 = uitofp i32 %1581 to float
  %1583 = fmul fast float %1582, 0x3F70101020000000
  %1584 = lshr i32 %1577, 8
  %1585 = and i32 %1584, 255
  %1586 = uitofp i32 %1585 to float
  %1587 = fmul fast float %1586, 0x3F70101020000000
  %1588 = lshr i32 %1577, 16
  %1589 = and i32 %1588, 255
  %1590 = uitofp i32 %1589 to float
  %1591 = fmul fast float %1590, 0x3F70101020000000
  %1592 = add i32 %54, 236
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1592, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = lshr i32 %1594, 24
  %1596 = uitofp i32 %1595 to float
  %1597 = fmul fast float %1596, 0x3F70101020000000
  %1598 = and i32 %1594, 255
  %1599 = uitofp i32 %1598 to float
  %1600 = fmul fast float %1599, 0x3F70101020000000
  %1601 = lshr i32 %1594, 8
  %1602 = and i32 %1601, 255
  %1603 = uitofp i32 %1602 to float
  %1604 = fmul fast float %1603, 0x3F70101020000000
  %1605 = lshr i32 %1594, 16
  %1606 = and i32 %1605, 255
  %1607 = uitofp i32 %1606 to float
  %1608 = fmul fast float %1607, 0x3F70101020000000
  %1609 = bitcast float %1533 to i32
  %1610 = ashr i32 %1609, 1
  %1611 = sub nsw i32 1597463174, %1610
  %1612 = bitcast i32 %1611 to float
  %1613 = fmul fast float %1533, 5.000000e-01
  %1614 = fmul fast float %1612, %1612
  %1615 = fmul fast float %1614, %1613
  %1616 = fsub fast float 1.500000e+00, %1615
  %1617 = fmul fast float %1612, %1533
  %1618 = fmul fast float %1617, %1616
  %1619 = bitcast float %1534 to i32
  %1620 = ashr i32 %1619, 1
  %1621 = sub nsw i32 1597463174, %1620
  %1622 = bitcast i32 %1621 to float
  %1623 = fmul fast float %1534, 5.000000e-01
  %1624 = fmul fast float %1622, %1622
  %1625 = fmul fast float %1624, %1623
  %1626 = fsub fast float 1.500000e+00, %1625
  %1627 = fmul fast float %1622, %1534
  %1628 = fmul fast float %1627, %1626
  %1629 = bitcast float %1535 to i32
  %1630 = ashr i32 %1629, 1
  %1631 = sub nsw i32 1597463174, %1630
  %1632 = bitcast i32 %1631 to float
  %1633 = fmul fast float %1535, 5.000000e-01
  %1634 = fmul fast float %1632, %1632
  %1635 = fmul fast float %1634, %1633
  %1636 = fsub fast float 1.500000e+00, %1635
  %1637 = fmul fast float %1632, %1535
  %1638 = fmul fast float %1637, %1636
  %1639 = fsub fast float %1618, %1600
  %1640 = fsub fast float %1628, %1604
  %1641 = fsub fast float %1638, %1608
  %1642 = fmul fast float %1639, %1568
  %1643 = fmul fast float %1640, %1570
  %1644 = fmul fast float %1641, %1575
  %1645 = fadd fast float %1642, %1583
  %1646 = fadd fast float %1643, %1587
  %1647 = fadd fast float %1644, %1591
  %1648 = call float @dx.op.unary.f32(i32 7, float %1645)  ; Saturate(value)
  %1649 = call float @dx.op.unary.f32(i32 7, float %1646)  ; Saturate(value)
  %1650 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1651 = fmul fast float %1648, %1648
  %1652 = fmul fast float %1649, %1649
  %1653 = fmul fast float %1650, %1650
  %1654 = fsub fast float %1651, %1533
  %1655 = fsub fast float %1652, %1534
  %1656 = fsub fast float %1653, %1535
  %1657 = fmul fast float %1654, %1558
  %1658 = fmul fast float %1655, %1558
  %1659 = fmul fast float %1656, %1558
  %1660 = fadd fast float %1657, %1533
  %1661 = fadd fast float %1658, %1534
  %1662 = fadd fast float %1659, %1535
  %1663 = fadd fast float %1580, %1544
  %1664 = fsub fast float %1663, %1597
  %1665 = call float @dx.op.unary.f32(i32 7, float %1664)  ; Saturate(value)
  %1666 = fsub fast float %1665, %1544
  %1667 = fmul fast float %1666, %1558
  %1668 = fadd fast float %1667, %1544
  br label %1722

; <label>:1669                                    ; preds = %1557
  %1670 = and i32 %1560, 134217728
  %1671 = icmp eq i32 %1670, 0
  br i1 %1671, label %1706, label %1672

; <label>:1672                                    ; preds = %1669
  %1673 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %1674 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %1675 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %1676 = fadd fast float %1673, -5.000000e-01
  %1677 = fadd fast float %1674, -5.000000e-01
  %1678 = fadd fast float %1675, -5.000000e-01
  %1679 = fmul fast float %1676, %1558
  %1680 = fmul fast float %1677, %1558
  %1681 = fmul fast float %1678, %1558
  %1682 = fadd fast float %1679, 5.000000e-01
  %1683 = fadd fast float %1680, 5.000000e-01
  %1684 = fadd fast float %1681, 5.000000e-01
  %1685 = call float @dx.op.unary.f32(i32 24, float %1533)  ; Sqrt(value)
  %1686 = call float @dx.op.unary.f32(i32 24, float %1534)  ; Sqrt(value)
  %1687 = call float @dx.op.unary.f32(i32 24, float %1535)  ; Sqrt(value)
  %1688 = fmul fast float %1682, 2.000000e+00
  %1689 = fsub fast float 1.000000e+00, %1688
  %1690 = fmul fast float %1689, %1685
  %1691 = fadd fast float %1690, %1688
  %1692 = fmul fast float %1691, %1685
  %1693 = fmul fast float %1683, 2.000000e+00
  %1694 = fsub fast float 1.000000e+00, %1693
  %1695 = fmul fast float %1694, %1686
  %1696 = fadd fast float %1695, %1693
  %1697 = fmul fast float %1696, %1686
  %1698 = fmul fast float %1684, 2.000000e+00
  %1699 = fsub fast float 1.000000e+00, %1698
  %1700 = fmul fast float %1699, %1687
  %1701 = fadd fast float %1700, %1698
  %1702 = fmul fast float %1701, %1687
  %1703 = fmul fast float %1692, %1692
  %1704 = fmul fast float %1697, %1697
  %1705 = fmul fast float %1702, %1702
  br label %1722

; <label>:1706                                    ; preds = %1669
  %1707 = fmul fast float %320, %320
  %1708 = fmul fast float %324, %324
  %1709 = fmul fast float %328, %328
  %1710 = fadd fast float %1707, -1.000000e+00
  %1711 = fadd fast float %1708, -1.000000e+00
  %1712 = fadd fast float %1709, -1.000000e+00
  %1713 = fmul fast float %1558, %1710
  %1714 = fmul fast float %1558, %1711
  %1715 = fmul fast float %1558, %1712
  %1716 = fadd fast float %1713, 1.000000e+00
  %1717 = fadd fast float %1714, 1.000000e+00
  %1718 = fadd fast float %1715, 1.000000e+00
  %1719 = fmul fast float %1716, %1533
  %1720 = fmul fast float %1717, %1534
  %1721 = fmul fast float %1718, %1535
  br label %1722

; <label>:1722                                    ; preds = %1706, %1672, %1563, %1519
  %1723 = phi float [ %1668, %1563 ], [ %1544, %1672 ], [ %1544, %1706 ], [ 0x3FA23C0BE0000000, %1519 ]
  %1724 = phi float [ %1660, %1563 ], [ %1703, %1672 ], [ %1719, %1706 ], [ 1.000000e+00, %1519 ]
  %1725 = phi float [ %1661, %1563 ], [ %1704, %1672 ], [ %1720, %1706 ], [ 1.000000e+00, %1519 ]
  %1726 = phi float [ %1662, %1563 ], [ %1705, %1672 ], [ %1721, %1706 ], [ 1.000000e+00, %1519 ]
  %1727 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1728 = extractvalue %dx.types.CBufRet.i32 %1727, 1
  %1729 = and i32 %1728, 1
  %1730 = icmp ne i32 %1729, 0
  %1731 = add i32 %54, 356
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = and i32 %1733, 32
  %1735 = icmp ne i32 %1734, 0
  %1736 = and i1 %1730, %1735
  %1737 = select i1 %1736, float 1.000000e+00, float %1724
  %1738 = select i1 %1736, float 0x3FD3333340000000, float %1725
  %1739 = select i1 %1736, float 0x3FD3333340000000, float %1726
  %1740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = and i32 %1741, 32
  %1743 = icmp eq i32 %1742, 0
  br i1 %1743, label %1816, label %1744

; <label>:1744                                    ; preds = %1722
  %1745 = add i32 %54, 108
  %1746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.i32 %1746, 0
  %1748 = add i32 %54, 428
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = add i32 %1750, 0
  %1752 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1751, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1753 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1752, %dx.types.Handle %96, float %1329, float %1330, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1754 = extractvalue %dx.types.ResRet.f32 %1753, 0
  %1755 = extractvalue %dx.types.ResRet.f32 %1753, 1
  %1756 = extractvalue %dx.types.ResRet.f32 %1753, 2
  %1757 = extractvalue %dx.types.ResRet.f32 %1753, 3
  %1758 = and i32 %1747, 255
  %1759 = uitofp i32 %1758 to float
  %1760 = lshr i32 %1747, 8
  %1761 = and i32 %1760, 255
  %1762 = uitofp i32 %1761 to float
  %1763 = lshr i32 %1747, 16
  %1764 = and i32 %1763, 255
  %1765 = uitofp i32 %1764 to float
  %1766 = fmul fast float %1765, 0x3F70101000000000
  %1767 = fmul fast float %1754, %1759
  %1768 = fadd fast float %1767, %1762
  %1769 = fmul fast float %1768, 0x3F70101000000000
  %1770 = fadd fast float %1755, -5.000000e-01
  %1771 = fadd fast float %1757, -5.000000e-01
  %1772 = fmul fast float %1770, %1766
  %1773 = fmul fast float %1771, %1766
  %1774 = fadd fast float %1772, 5.000000e-01
  %1775 = fadd fast float %1773, 5.000000e-01
  %1776 = fmul fast float %1774, 2.000000e+00
  %1777 = fadd fast float %1776, -1.000000e+00
  %1778 = fmul fast float %1775, 2.000000e+00
  %1779 = fadd fast float %1778, -1.000000e+00
  %1780 = fadd fast float %1777, %1779
  %1781 = fmul fast float %1780, 5.000000e-01
  %1782 = fsub fast float %1777, %1779
  %1783 = fmul fast float %1782, 5.000000e-01
  %1784 = call float @dx.op.unary.f32(i32 6, float %1781)  ; FAbs(value)
  %1785 = fsub fast float 1.000000e+00, %1784
  %1786 = call float @dx.op.unary.f32(i32 6, float %1783)  ; FAbs(value)
  %1787 = fsub fast float %1785, %1786
  %1788 = call float @dx.op.dot3.f32(i32 55, float %1781, float %1783, float %1787, float %1781, float %1783, float %1787)  ; Dot3(ax,ay,az,bx,by,bz)
  %1789 = call float @dx.op.unary.f32(i32 25, float %1788)  ; Rsqrt(value)
  %1790 = fmul fast float %1781, %1789
  %1791 = fmul fast float %1783, %1789
  %1792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.i32 %1792, 0
  %1794 = and i32 %1793, 67108864
  %1795 = icmp eq i32 %1794, 0
  br i1 %1795, label %1812, label %1796

; <label>:1796                                    ; preds = %1744
  %1797 = add i32 %54, 296
  %1798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.i32 %1798, 0
  %1800 = and i32 %1799, 65535
  %1801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1800)  ; LegacyF16ToF32(value)
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = and i32 %1803, 65535
  %1805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1804)  ; LegacyF16ToF32(value)
  %1806 = lshr i32 %1799, 16
  %1807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1806)  ; LegacyF16ToF32(value)
  %1808 = fsub fast float %1769, %1807
  %1809 = fmul fast float %1808, %1801
  %1810 = fadd fast float %1809, %1805
  %1811 = call float @dx.op.unary.f32(i32 7, float %1810)  ; Saturate(value)
  br label %1812

; <label>:1812                                    ; preds = %1796, %1744
  %1813 = phi float [ %1811, %1796 ], [ %1769, %1744 ]
  %1814 = call float @dx.op.dot2.f32(i32 54, float %1790, float %1791, float %1233, float %1234)  ; Dot2(ax,ay,bx,by)
  %1815 = call float @dx.op.dot2.f32(i32 54, float %1790, float %1791, float %1235, float %1236)  ; Dot2(ax,ay,bx,by)
  br label %1816

; <label>:1816                                    ; preds = %1812, %1722
  %1817 = phi float [ %1813, %1812 ], [ 0x3FD6666660000000, %1722 ]
  %1818 = phi float [ %1814, %1812 ], [ 0.000000e+00, %1722 ]
  %1819 = phi float [ %1815, %1812 ], [ 0.000000e+00, %1722 ]
  %1820 = phi float [ %1756, %1812 ], [ 1.000000e+00, %1722 ]
  %1821 = add i32 %54, 176
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = lshr i32 %1823, 22
  %1825 = shl nuw nsw i32 %1824, 5
  %1826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1825)  ; LegacyF16ToF32(value)
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = and i32 %1828, 64
  %1830 = icmp eq i32 %1829, 0
  br i1 %1830, label %1864, label %1831

; <label>:1831                                    ; preds = %1816
  %1832 = add i32 %54, 444
  %1833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.i32 %1833, 0
  %1835 = add i32 %1834, 0
  %1836 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1835, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = and i32 %1838, 131072
  %1840 = icmp eq i32 %1839, 0
  %1841 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1836, %dx.types.Handle %96, float %1329, float %1330, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1842 = extractvalue %dx.types.ResRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.ResRet.f32 %1841, 1
  %1844 = extractvalue %dx.types.ResRet.f32 %1841, 2
  %1845 = fmul fast float %1842, %308
  %1846 = fmul fast float %1843, %311
  %1847 = fmul fast float %1844, %314
  br i1 %1840, label %1854, label %1848

; <label>:1848                                    ; preds = %1831
  %1849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1850 = extractvalue %dx.types.CBufRet.f32 %1849, 0
  %1851 = fmul fast float %1850, %1845
  %1852 = fmul fast float %1850, %1846
  %1853 = fmul fast float %1850, %1847
  br label %1854

; <label>:1854                                    ; preds = %1848, %1831
  %1855 = phi float [ %1851, %1848 ], [ %1845, %1831 ]
  %1856 = phi float [ %1852, %1848 ], [ %1846, %1831 ]
  %1857 = phi float [ %1853, %1848 ], [ %1847, %1831 ]
  %1858 = fmul fast float %1855, %1826
  %1859 = select i1 %249, float %1858, float %1855
  %1860 = call float @dx.op.dot3.f32(i32 55, float %1859, float %1856, float %1857, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1861 = select i1 %249, float 0.000000e+00, float %1855
  %1862 = select i1 %249, float %1860, float %1856
  %1863 = select i1 %249, float 0.000000e+00, float %1857
  br label %1864

; <label>:1864                                    ; preds = %1854, %1816
  %1865 = phi float [ %1861, %1854 ], [ 0.000000e+00, %1816 ]
  %1866 = phi float [ %1862, %1854 ], [ 0.000000e+00, %1816 ]
  %1867 = phi float [ %1863, %1854 ], [ 0.000000e+00, %1816 ]
  %1868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.i32 %1868, 0
  %1870 = and i32 %1869, 10240
  %1871 = icmp eq i32 %1870, 0
  br i1 %1871, label %1916, label %1872

; <label>:1872                                    ; preds = %1864
  %1873 = add i32 %54, 508
  %1874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.i32 %1874, 0
  %1876 = add i32 %1875, 0
  %1877 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1876, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1878 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1877, %dx.types.Handle %97, float %1329, float %1330, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1879 = extractvalue %dx.types.ResRet.f32 %1878, 1
  %1880 = extractvalue %dx.types.ResRet.f32 %1878, 3
  %1881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1882 = extractvalue %dx.types.ResRet.i32 %1881, 0
  %1883 = and i32 %1882, 1048576
  %1884 = icmp ne i32 %1883, 0
  %1885 = and i32 %1882, 8192
  %1886 = icmp eq i32 %1885, 0
  br i1 %1886, label %1902, label %1887

; <label>:1887                                    ; preds = %1872
  %1888 = extractvalue %dx.types.ResRet.f32 %1878, 2
  %1889 = select i1 %1884, float %1888, float %1879
  %1890 = extractvalue %dx.types.ResRet.f32 %1878, 0
  %1891 = select i1 %1884, float %1890, float %1879
  %1892 = add i32 %54, 112
  %1893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.i32 %1893, 0
  %1895 = lshr i32 %1894, 16
  %1896 = and i32 %1895, 255
  %1897 = uitofp i32 %1896 to float
  %1898 = fmul fast float %1897, 0x3F80101020000000
  %1899 = fmul fast float %1898, %1891
  %1900 = fmul fast float %1898, %1879
  %1901 = fmul fast float %1898, %1889
  br label %1902

; <label>:1902                                    ; preds = %1887, %1872
  %1903 = phi float [ %1899, %1887 ], [ 0.000000e+00, %1872 ]
  %1904 = phi float [ %1900, %1887 ], [ 0.000000e+00, %1872 ]
  %1905 = phi float [ %1901, %1887 ], [ 0.000000e+00, %1872 ]
  %1906 = and i32 %1882, 2048
  %1907 = icmp eq i32 %1906, 0
  br i1 %1907, label %1916, label %1908

; <label>:1908                                    ; preds = %1902
  %1909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.i32 %1909, 0
  %1911 = shl i32 %1910, 4
  %1912 = and i32 %1911, 32752
  %1913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1912)  ; LegacyF16ToF32(value)
  %1914 = fmul fast float %1913, %1880
  %1915 = call float @dx.op.binary.f32(i32 35, float %1914, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1916

; <label>:1916                                    ; preds = %1908, %1902, %1864
  %1917 = phi float [ %1903, %1908 ], [ %1903, %1902 ], [ 0.000000e+00, %1864 ]
  %1918 = phi float [ %1904, %1908 ], [ %1904, %1902 ], [ 0.000000e+00, %1864 ]
  %1919 = phi float [ %1905, %1908 ], [ %1905, %1902 ], [ 0.000000e+00, %1864 ]
  %1920 = phi float [ %1915, %1908 ], [ 0x3F70101020000000, %1902 ], [ 0x3F70101020000000, %1864 ]
  %1921 = add i32 %54, 112
  %1922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1921, i32 undef)  ; BufferLoad(srv,index,wot)
  %1923 = extractvalue %dx.types.ResRet.i32 %1922, 0
  %1924 = and i32 %1923, 255
  %1925 = uitofp i32 %1924 to float
  %1926 = lshr i32 %1923, 8
  %1927 = and i32 %1926, 255
  %1928 = uitofp i32 %1927 to float
  %1929 = call float @dx.op.dot3.f32(i32 55, float %1737, float %1738, float %1739, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1930 = fmul fast float %1928, %1929
  %1931 = fadd fast float %1930, %1925
  %1932 = fmul fast float %1931, 0x3F70101020000000
  %1933 = call float @dx.op.unary.f32(i32 7, float %1932)  ; Saturate(value)
  br i1 %1221, label %1934, label %1942

; <label>:1934                                    ; preds = %1916
  %1935 = fsub fast float 1.000000e+00, %1517
  %1936 = fmul fast float %1935, %1205
  %1937 = fmul fast float %1935, %1206
  %1938 = fmul fast float %1935, %1207
  %1939 = fmul fast float %1935, %1211
  %1940 = fmul fast float %1935, %1212
  %1941 = fmul fast float %1935, %1213
  br label %1942

; <label>:1942                                    ; preds = %1934, %1916
  %1943 = phi float [ %1936, %1934 ], [ %1205, %1916 ]
  %1944 = phi float [ %1937, %1934 ], [ %1206, %1916 ]
  %1945 = phi float [ %1938, %1934 ], [ %1207, %1916 ]
  %1946 = phi float [ %1939, %1934 ], [ %1211, %1916 ]
  %1947 = phi float [ %1940, %1934 ], [ %1212, %1916 ]
  %1948 = phi float [ %1941, %1934 ], [ %1213, %1916 ]
  %1949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.i32 %1949, 0
  %1951 = and i32 %1950, 3
  %1952 = icmp eq i32 %1951, 3
  br i1 %1952, label %2031, label %1953

; <label>:1953                                    ; preds = %1942
  %1954 = and i32 %1950, 16
  %1955 = icmp ne i32 %1954, 0
  %1956 = select i1 %1955, float %1517, float 0.000000e+00
  %1957 = icmp eq i32 %1951, 0
  br i1 %1957, label %1958, label %1986

; <label>:1958                                    ; preds = %1953
  %1959 = and i32 %1950, 64
  %1960 = icmp ne i32 %1959, 0
  %1961 = select i1 %1960, float %1517, float 0.000000e+00
  %1962 = fsub fast float %1737, %1943
  %1963 = fsub fast float %1738, %1944
  %1964 = fsub fast float %1739, %1945
  %1965 = fmul fast float %1956, %1962
  %1966 = fmul fast float %1956, %1963
  %1967 = fmul fast float %1956, %1964
  %1968 = fadd fast float %1965, %1943
  %1969 = fadd fast float %1966, %1944
  %1970 = fadd fast float %1967, %1945
  %1971 = fsub fast float %1723, %1214
  %1972 = fmul fast float %1956, %1971
  %1973 = fadd fast float %1972, %1214
  %1974 = fsub fast float %1865, %1946
  %1975 = fsub fast float %1866, %1947
  %1976 = fsub fast float %1867, %1948
  %1977 = fmul fast float %1961, %1974
  %1978 = fmul fast float %1961, %1975
  %1979 = fmul fast float %1961, %1976
  %1980 = fadd fast float %1977, %1946
  %1981 = fadd fast float %1978, %1947
  %1982 = fadd fast float %1979, %1948
  %1983 = fsub fast float %1933, %1219
  %1984 = fmul fast float %1956, %1983
  %1985 = fadd fast float %1984, %1219
  br label %2031

; <label>:1986                                    ; preds = %1953
  %1987 = icmp eq i32 %1951, 1
  br i1 %1987, label %1988, label %2001

; <label>:1988                                    ; preds = %1986
  %1989 = fadd fast float %1737, -1.000000e+00
  %1990 = fadd fast float %1738, -1.000000e+00
  %1991 = fadd fast float %1739, -1.000000e+00
  %1992 = fmul fast float %1956, %1989
  %1993 = fmul fast float %1956, %1990
  %1994 = fmul fast float %1956, %1991
  %1995 = fadd fast float %1992, 1.000000e+00
  %1996 = fadd fast float %1993, 1.000000e+00
  %1997 = fadd fast float %1994, 1.000000e+00
  %1998 = fmul fast float %1995, %1943
  %1999 = fmul fast float %1996, %1944
  %2000 = fmul fast float %1997, %1945
  br label %2031

; <label>:2001                                    ; preds = %1986
  %2002 = icmp eq i32 %1951, 2
  br i1 %2002, label %2003, label %2031

; <label>:2003                                    ; preds = %2001
  %2004 = call float @dx.op.unary.f32(i32 24, float %1737)  ; Sqrt(value)
  %2005 = call float @dx.op.unary.f32(i32 24, float %1738)  ; Sqrt(value)
  %2006 = call float @dx.op.unary.f32(i32 24, float %1739)  ; Sqrt(value)
  %2007 = fadd fast float %2004, -5.000000e-01
  %2008 = fadd fast float %2005, -5.000000e-01
  %2009 = fadd fast float %2006, -5.000000e-01
  %2010 = fmul fast float %2007, %1956
  %2011 = fmul fast float %2008, %1956
  %2012 = fmul fast float %2009, %1956
  %2013 = fadd fast float %2010, 5.000000e-01
  %2014 = fadd fast float %2011, 5.000000e-01
  %2015 = fadd fast float %2012, 5.000000e-01
  %2016 = fmul fast float %2013, 2.000000e+00
  %2017 = fsub fast float 1.000000e+00, %2016
  %2018 = fmul fast float %2017, %1943
  %2019 = fadd fast float %2018, %2016
  %2020 = fmul fast float %2019, %1943
  %2021 = fmul fast float %2014, 2.000000e+00
  %2022 = fsub fast float 1.000000e+00, %2021
  %2023 = fmul fast float %2022, %1944
  %2024 = fadd fast float %2023, %2021
  %2025 = fmul fast float %2024, %1944
  %2026 = fmul fast float %2015, 2.000000e+00
  %2027 = fsub fast float 1.000000e+00, %2026
  %2028 = fmul fast float %2027, %1945
  %2029 = fadd fast float %2028, %2026
  %2030 = fmul fast float %2029, %1945
  br label %2031

; <label>:2031                                    ; preds = %2003, %2001, %1988, %1958, %1942
  %2032 = phi float [ %1943, %1942 ], [ %2020, %2003 ], [ %1943, %2001 ], [ %1998, %1988 ], [ %1968, %1958 ]
  %2033 = phi float [ %1944, %1942 ], [ %2025, %2003 ], [ %1944, %2001 ], [ %1999, %1988 ], [ %1969, %1958 ]
  %2034 = phi float [ %1945, %1942 ], [ %2030, %2003 ], [ %1945, %2001 ], [ %2000, %1988 ], [ %1970, %1958 ]
  %2035 = phi float [ %1946, %1942 ], [ %1946, %2003 ], [ %1946, %2001 ], [ %1946, %1988 ], [ %1980, %1958 ]
  %2036 = phi float [ %1947, %1942 ], [ %1947, %2003 ], [ %1947, %2001 ], [ %1947, %1988 ], [ %1981, %1958 ]
  %2037 = phi float [ %1948, %1942 ], [ %1948, %2003 ], [ %1948, %2001 ], [ %1948, %1988 ], [ %1982, %1958 ]
  %2038 = phi float [ %1214, %1942 ], [ %1214, %2003 ], [ %1214, %2001 ], [ %1214, %1988 ], [ %1973, %1958 ]
  %2039 = phi float [ %1219, %1942 ], [ %1219, %2003 ], [ %1219, %2001 ], [ %1219, %1988 ], [ %1985, %1958 ]
  %2040 = and i32 %1950, 12
  %2041 = icmp eq i32 %2040, 12
  br i1 %2041, label %2148, label %2042

; <label>:2042                                    ; preds = %2031
  %2043 = and i32 %1950, 2097184
  %2044 = icmp eq i32 %2043, 2097184
  %2045 = select i1 %2044, float %1517, float 0.000000e+00
  %2046 = and i32 %1950, 4194336
  %2047 = icmp eq i32 %2046, 4194336
  %2048 = select i1 %2047, float %1517, float 0.000000e+00
  %2049 = and i32 %1950, 8388640
  %2050 = icmp eq i32 %2049, 8388640
  %2051 = select i1 %2050, float %1517, float 0.000000e+00
  %2052 = and i32 %1950, 2048
  %2053 = icmp ne i32 %2052, 0
  %2054 = select i1 %2053, float %1517, float 0.000000e+00
  %2055 = and i32 %1950, 8192
  %2056 = icmp ne i32 %2055, 0
  %2057 = select i1 %2056, float %1517, float 0.000000e+00
  %2058 = icmp eq i32 %2040, 0
  br i1 %2058, label %2059, label %2084

; <label>:2059                                    ; preds = %2042
  %2060 = fsub fast float %1818, %1203
  %2061 = fsub fast float %1819, %1204
  %2062 = fmul fast float %2045, %2060
  %2063 = fmul fast float %2045, %2061
  %2064 = fadd fast float %2062, %1203
  %2065 = fadd fast float %2063, %1204
  %2066 = fsub fast float %1820, %1217
  %2067 = fmul fast float %2048, %2066
  %2068 = fadd fast float %2067, %1217
  %2069 = fsub fast float %1817, %1216
  %2070 = fmul fast float %2051, %2069
  %2071 = fadd fast float %2070, %1216
  %2072 = fsub fast float %1920, %1218
  %2073 = fmul fast float %2054, %2072
  %2074 = fadd fast float %2073, %1218
  %2075 = fsub fast float %1917, %1208
  %2076 = fsub fast float %1918, %1209
  %2077 = fsub fast float %1919, %1210
  %2078 = fmul fast float %2057, %2075
  %2079 = fmul fast float %2057, %2076
  %2080 = fmul fast float %2057, %2077
  %2081 = fadd fast float %2078, %1208
  %2082 = fadd fast float %2079, %1209
  %2083 = fadd fast float %2080, %1210
  br label %2148

; <label>:2084                                    ; preds = %2042
  %2085 = icmp eq i32 %2040, 4
  br i1 %2085, label %2086, label %2126

; <label>:2086                                    ; preds = %2084
  %2087 = fmul fast float %2045, %1818
  %2088 = fmul fast float %2045, %1819
  %2089 = fadd fast float %2087, %1203
  %2090 = fadd fast float %2088, %1204
  %2091 = call float @dx.op.binary.f32(i32 36, float %1217, float %1820)  ; FMin(a,b)
  %2092 = fsub fast float %2091, %1217
  %2093 = fmul fast float %2092, %2048
  %2094 = fadd fast float %2093, %1217
  %2095 = fadd fast float %1817, %1216
  %2096 = fmul fast float %2095, 0x3FF337FAE0000000
  %2097 = fmul fast float %1216, %1216
  %2098 = fmul fast float %1817, %1817
  %2099 = fadd fast float %2098, %2097
  %2100 = fmul fast float %2099, 0x3FE5152B00000000
  %2101 = fmul fast float %1216, 0xBFCC1F85E0000000
  %2102 = fmul fast float %2101, %1817
  %2103 = fadd fast float %2102, 0xBFE1363700000000
  %2104 = fadd fast float %2103, %2096
  %2105 = fsub fast float %2104, %2100
  %2106 = fmul fast float %2095, 0x3FBA6F0D00000000
  %2107 = fmul fast float %2099, 0x3FD0432880000000
  %2108 = fmul fast float %1216, 0xBFEF110800000000
  %2109 = fmul fast float %2108, %1817
  %2110 = fadd fast float %2109, 1.000000e+00
  %2111 = fsub fast float %2110, %2106
  %2112 = fadd fast float %2111, %2107
  %2113 = fdiv fast float %2105, %2112
  %2114 = call float @dx.op.unary.f32(i32 7, float %2113)  ; Saturate(value)
  %2115 = fsub fast float %2114, %1216
  %2116 = fmul fast float %2115, %2051
  %2117 = fadd fast float %2116, %1216
  %2118 = fmul fast float %2054, %1920
  %2119 = fadd fast float %2118, %1218
  %2120 = fmul fast float %2057, %1917
  %2121 = fmul fast float %2057, %1918
  %2122 = fmul fast float %2057, %1919
  %2123 = fadd fast float %2120, %1208
  %2124 = fadd fast float %2121, %1209
  %2125 = fadd fast float %2122, %1210
  br label %2148

; <label>:2126                                    ; preds = %2084
  %2127 = icmp eq i32 %2040, 8
  br i1 %2127, label %2128, label %2148

; <label>:2128                                    ; preds = %2126
  %2129 = fmul fast float %2045, %1818
  %2130 = fmul fast float %2045, %1819
  %2131 = fadd fast float %2129, %1203
  %2132 = fadd fast float %2130, %1204
  %2133 = call float @dx.op.binary.f32(i32 36, float %1217, float %1820)  ; FMin(a,b)
  %2134 = fsub fast float %2133, %1217
  %2135 = fmul fast float %2134, %2048
  %2136 = fadd fast float %2135, %1217
  %2137 = fsub fast float %1817, %1216
  %2138 = fmul fast float %2051, %2137
  %2139 = fadd fast float %2138, %1216
  %2140 = fmul fast float %2054, %1920
  %2141 = fadd fast float %2140, %1218
  %2142 = fmul fast float %2057, %1917
  %2143 = fmul fast float %2057, %1918
  %2144 = fmul fast float %2057, %1919
  %2145 = fadd fast float %2142, %1208
  %2146 = fadd fast float %2143, %1209
  %2147 = fadd fast float %2144, %1210
  br label %2148

; <label>:2148                                    ; preds = %2128, %2126, %2086, %2059, %2031, %1516, %1220, %1202
  %2149 = phi float [ %1203, %2031 ], [ %1203, %1516 ], [ %1203, %1202 ], [ %2131, %2128 ], [ %1203, %2126 ], [ %2089, %2086 ], [ %2064, %2059 ], [ %1203, %1220 ]
  %2150 = phi float [ %1204, %2031 ], [ %1204, %1516 ], [ %1204, %1202 ], [ %2132, %2128 ], [ %1204, %2126 ], [ %2090, %2086 ], [ %2065, %2059 ], [ %1204, %1220 ]
  %2151 = phi float [ %2032, %2031 ], [ %1205, %1516 ], [ %1205, %1202 ], [ %2032, %2128 ], [ %2032, %2126 ], [ %2032, %2086 ], [ %2032, %2059 ], [ %1205, %1220 ]
  %2152 = phi float [ %2033, %2031 ], [ %1206, %1516 ], [ %1206, %1202 ], [ %2033, %2128 ], [ %2033, %2126 ], [ %2033, %2086 ], [ %2033, %2059 ], [ %1206, %1220 ]
  %2153 = phi float [ %2034, %2031 ], [ %1207, %1516 ], [ %1207, %1202 ], [ %2034, %2128 ], [ %2034, %2126 ], [ %2034, %2086 ], [ %2034, %2059 ], [ %1207, %1220 ]
  %2154 = phi float [ %1208, %2031 ], [ %1208, %1516 ], [ %1208, %1202 ], [ %2145, %2128 ], [ %1208, %2126 ], [ %2123, %2086 ], [ %2081, %2059 ], [ %1208, %1220 ]
  %2155 = phi float [ %1209, %2031 ], [ %1209, %1516 ], [ %1209, %1202 ], [ %2146, %2128 ], [ %1209, %2126 ], [ %2124, %2086 ], [ %2082, %2059 ], [ %1209, %1220 ]
  %2156 = phi float [ %1210, %2031 ], [ %1210, %1516 ], [ %1210, %1202 ], [ %2147, %2128 ], [ %1210, %2126 ], [ %2125, %2086 ], [ %2083, %2059 ], [ %1210, %1220 ]
  %2157 = phi float [ %2035, %2031 ], [ %1211, %1516 ], [ %1211, %1202 ], [ %2035, %2128 ], [ %2035, %2126 ], [ %2035, %2086 ], [ %2035, %2059 ], [ %1211, %1220 ]
  %2158 = phi float [ %2036, %2031 ], [ %1212, %1516 ], [ %1212, %1202 ], [ %2036, %2128 ], [ %2036, %2126 ], [ %2036, %2086 ], [ %2036, %2059 ], [ %1212, %1220 ]
  %2159 = phi float [ %2037, %2031 ], [ %1213, %1516 ], [ %1213, %1202 ], [ %2037, %2128 ], [ %2037, %2126 ], [ %2037, %2086 ], [ %2037, %2059 ], [ %1213, %1220 ]
  %2160 = phi float [ %2038, %2031 ], [ %1214, %1516 ], [ %1214, %1202 ], [ %2038, %2128 ], [ %2038, %2126 ], [ %2038, %2086 ], [ %2038, %2059 ], [ %1214, %1220 ]
  %2161 = phi float [ %1216, %2031 ], [ %1216, %1516 ], [ %1216, %1202 ], [ %2139, %2128 ], [ %1216, %2126 ], [ %2117, %2086 ], [ %2071, %2059 ], [ %1216, %1220 ]
  %2162 = phi float [ %1217, %2031 ], [ %1217, %1516 ], [ %1217, %1202 ], [ %2136, %2128 ], [ %1217, %2126 ], [ %2094, %2086 ], [ %2068, %2059 ], [ %1217, %1220 ]
  %2163 = phi float [ %1218, %2031 ], [ %1218, %1516 ], [ %1218, %1202 ], [ %2141, %2128 ], [ %1218, %2126 ], [ %2119, %2086 ], [ %2074, %2059 ], [ %1218, %1220 ]
  %2164 = phi float [ %2039, %2031 ], [ %1219, %1516 ], [ %1219, %1202 ], [ %2039, %2128 ], [ %2039, %2126 ], [ %2039, %2086 ], [ %2039, %2059 ], [ %1219, %1220 ]
  br i1 %435, label %3093, label %2165

; <label>:2165                                    ; preds = %2148
  %2166 = icmp ult i32 %491, 3
  %2167 = add i32 %54, 56
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = add i32 %54, 60
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2170, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = or i32 %2172, %2169
  %2174 = icmp eq i32 %2173, 0
  br i1 %2174, label %3093, label %2175

; <label>:2175                                    ; preds = %2165
  %2176 = and i32 %2169, 262144
  %2177 = icmp ne i32 %2176, 0
  %2178 = select i1 %2177, float %57, float 1.000000e+00
  %2179 = select i1 %2177, float %58, float 0.000000e+00
  %2180 = select i1 %2177, float %59, float 0.000000e+00
  %2181 = select i1 %2177, float %60, float 1.000000e+00
  %2182 = select i1 %2177, float %61, float %82
  %2183 = select i1 %2177, float %62, float %83
  %2184 = add i32 %54, 316
  %2185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2184, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.i32 %2185, 0
  %2187 = lshr i32 %2186, 16
  %2188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2187)  ; LegacyF16ToF32(value)
  %2189 = fmul fast float %2188, 0x3F50624DE0000000
  %2190 = add i32 %54, 120
  %2191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2192 = extractvalue %dx.types.ResRet.i32 %2191, 0
  %2193 = lshr i32 %2192, 16
  %2194 = and i32 %2193, 255
  %2195 = lshr i32 %2192, 24
  %2196 = add i32 %54, 324
  %2197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2196, i32 undef)  ; BufferLoad(srv,index,wot)
  %2198 = extractvalue %dx.types.ResRet.i32 %2197, 0
  %2199 = and i32 %2198, 65535
  %2200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2199)  ; LegacyF16ToF32(value)
  %2201 = lshr i32 %2198, 16
  %2202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2201)  ; LegacyF16ToF32(value)
  %2203 = add i32 %54, 64
  %2204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2203, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.i32 %2204, 0
  %2206 = lshr i32 %2205, 22
  %2207 = shl nuw nsw i32 %2206, 5
  %2208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2207)  ; LegacyF16ToF32(value)
  %2209 = shl i32 %2205, 4
  %2210 = and i32 %2209, 32752
  %2211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2210)  ; LegacyF16ToF32(value)
  %2212 = lshr i32 %2205, 7
  %2213 = and i32 %2212, 32752
  %2214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2213)  ; LegacyF16ToF32(value)
  %2215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2216 = extractvalue %dx.types.CBufRet.f32 %2215, 3
  %2217 = fmul fast float %2216, 1.000000e+03
  %2218 = fmul fast float %385, %2217
  %2219 = call float @dx.op.unary.f32(i32 22, float %2218)  ; Frc(value)
  %2220 = fadd fast float %2219, %375
  %2221 = fmul fast float %386, %2217
  %2222 = call float @dx.op.unary.f32(i32 22, float %2221)  ; Frc(value)
  %2223 = fadd fast float %2222, %377
  %2224 = fmul fast float %2189, %2217
  %2225 = call float @dx.op.unary.f32(i32 22, float %2224)  ; Frc(value)
  %2226 = fmul fast float %2225, 0x401921FB60000000
  %2227 = fadd fast float %2226, %2208
  %2228 = call float @dx.op.unary.f32(i32 13, float %2227)  ; Sin(value)
  %2229 = call float @dx.op.unary.f32(i32 12, float %2227)  ; Cos(value)
  %2230 = fsub fast float -0.000000e+00, %2228
  %2231 = fadd fast float %2182, -5.000000e-01
  %2232 = fadd fast float %2183, -5.000000e-01
  %2233 = fmul fast float %2200, %2231
  %2234 = fmul fast float %2202, %2232
  %2235 = fadd fast float %2233, 5.000000e-01
  %2236 = fadd fast float %2234, 5.000000e-01
  %2237 = fmul fast float %2211, %2235
  %2238 = fmul fast float %2214, %2236
  %2239 = fmul fast float %2229, %2237
  %2240 = call float @dx.op.tertiary.f32(i32 46, float %2230, float %2238, float %2239)  ; FMad(a,b,c)
  %2241 = fmul fast float %2228, %2237
  %2242 = call float @dx.op.tertiary.f32(i32 46, float %2229, float %2238, float %2241)  ; FMad(a,b,c)
  %2243 = fadd fast float %2220, %2240
  %2244 = fadd fast float %2223, %2242
  %2245 = icmp ugt i32 %2194, 1
  %2246 = icmp ugt i32 %2192, 33554431
  %2247 = or i1 %2246, %2245
  br i1 %2247, label %2248, label %2273

; <label>:2248                                    ; preds = %2175
  %2249 = add i32 %54, 260
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2249, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = lshr i32 %2251, 16
  %2253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2252)  ; LegacyF16ToF32(value)
  %2254 = fmul fast float %2216, %2253
  %2255 = call float @dx.op.unary.f32(i32 22, float %2254)  ; Frc(value)
  %2256 = mul nuw nsw i32 %2194, %2195
  %2257 = uitofp i32 %2256 to float
  %2258 = fmul fast float %2255, %2257
  %2259 = call float @dx.op.unary.f32(i32 27, float %2258)  ; Round_ni(value)
  %2260 = fptoui float %2259 to i32
  %2261 = urem i32 %2260, %2194
  %2262 = udiv i32 %2260, %2195
  %2263 = call float @dx.op.unary.f32(i32 22, float %2243)  ; Frc(value)
  %2264 = call float @dx.op.unary.f32(i32 22, float %2244)  ; Frc(value)
  %2265 = uitofp i32 %2261 to float
  %2266 = uitofp i32 %2262 to float
  %2267 = fadd fast float %2263, %2265
  %2268 = fadd fast float %2264, %2266
  %2269 = uitofp i32 %2194 to float
  %2270 = uitofp i32 %2195 to float
  %2271 = fdiv fast float %2267, %2269
  %2272 = fdiv fast float %2268, %2270
  br label %2273

; <label>:2273                                    ; preds = %2248, %2175
  %2274 = phi float [ %2271, %2248 ], [ %2243, %2175 ]
  %2275 = phi float [ %2272, %2248 ], [ %2244, %2175 ]
  %2276 = and i32 %2169, 16777216
  %2277 = icmp eq i32 %2276, 0
  br i1 %2277, label %2387, label %2278

; <label>:2278                                    ; preds = %2273
  %2279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2280 = extractvalue %dx.types.CBufRet.f32 %2279, 0
  %2281 = extractvalue %dx.types.CBufRet.f32 %2279, 1
  %2282 = extractvalue %dx.types.CBufRet.f32 %2279, 2
  %2283 = fadd fast float %2280, %155
  %2284 = fadd fast float %2281, %156
  %2285 = fadd fast float %2282, %157
  %2286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2287 = extractvalue %dx.types.CBufRet.f32 %2286, 0
  %2288 = call float @dx.op.unary.f32(i32 7, float %2287)  ; Saturate(value)
  %2289 = icmp eq i32 %55, 65535
  br i1 %2289, label %2384, label %2290

; <label>:2290                                    ; preds = %2278
  %2291 = lshr i32 %55, 1
  %2292 = shl i32 %2291, 2
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = and i32 %55, 1
  %2296 = icmp ne i32 %2295, 0
  %2297 = lshr i32 %2294, 16
  %2298 = and i32 %2294, 65535
  %2299 = select i1 %2296, i32 %2297, i32 %2298
  %2300 = icmp eq i32 %2299, 65535
  br i1 %2300, label %2380, label %2301

; <label>:2301                                    ; preds = %2290
  %2302 = mul nuw nsw i32 %2299, 40
  %2303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2302, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.f32 %2303, 0
  %2305 = extractvalue %dx.types.ResRet.f32 %2303, 1
  %2306 = extractvalue %dx.types.ResRet.f32 %2303, 2
  %2307 = add nuw nsw i32 %2302, 12
  %2308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.f32 %2308, 0
  %2310 = extractvalue %dx.types.ResRet.f32 %2308, 1
  %2311 = extractvalue %dx.types.ResRet.f32 %2308, 2
  %2312 = add nuw nsw i32 %2302, 24
  %2313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.f32 %2313, 0
  %2315 = extractvalue %dx.types.ResRet.f32 %2313, 1
  %2316 = extractvalue %dx.types.ResRet.f32 %2313, 2
  %2317 = add nuw nsw i32 %2302, 36
  %2318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.f32 %2318, 0
  %2320 = fsub fast float %2283, %2304
  %2321 = fsub fast float %2284, %2305
  %2322 = fsub fast float %2285, %2306
  %2323 = fmul fast float %2319, %2320
  %2324 = fmul fast float %2319, %2321
  %2325 = fmul fast float %2319, %2322
  %2326 = call float @dx.op.unary.f32(i32 27, float %2323)  ; Round_ni(value)
  %2327 = call float @dx.op.unary.f32(i32 27, float %2324)  ; Round_ni(value)
  %2328 = call float @dx.op.unary.f32(i32 27, float %2325)  ; Round_ni(value)
  %2329 = fadd fast float %2326, 5.000000e-01
  %2330 = fadd fast float %2327, 5.000000e-01
  %2331 = fadd fast float %2328, 5.000000e-01
  %2332 = fmul fast float %2329, %2309
  %2333 = fmul fast float %2330, %2310
  %2334 = fmul fast float %2331, %2311
  %2335 = shl i32 %55, 2
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = add i32 %2337, 0
  %2339 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2338, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2340 = call float @dx.op.unary.f32(i32 22, float %2332)  ; Frc(value)
  %2341 = call float @dx.op.unary.f32(i32 22, float %2333)  ; Frc(value)
  %2342 = call float @dx.op.unary.f32(i32 22, float %2334)  ; Frc(value)
  %2343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2339, %dx.types.Handle %49, float %2340, float %2341, float %2342, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2344 = extractvalue %dx.types.ResRet.f32 %2343, 0
  %2345 = extractvalue %dx.types.ResRet.f32 %2343, 1
  %2346 = extractvalue %dx.types.ResRet.f32 %2343, 2
  %2347 = fmul fast float %2344, 1.023000e+03
  %2348 = fmul fast float %2345, 1.023000e+03
  %2349 = fmul fast float %2346, 1.023000e+03
  %2350 = fadd fast float %2347, 5.000000e-01
  %2351 = fadd fast float %2348, 5.000000e-01
  %2352 = fadd fast float %2349, 5.000000e-01
  %2353 = call float @dx.op.unary.f32(i32 27, float %2350)  ; Round_ni(value)
  %2354 = call float @dx.op.unary.f32(i32 27, float %2351)  ; Round_ni(value)
  %2355 = call float @dx.op.unary.f32(i32 27, float %2352)  ; Round_ni(value)
  %2356 = fsub fast float %2323, %2326
  %2357 = fsub fast float %2324, %2327
  %2358 = fsub fast float %2325, %2328
  %2359 = fmul fast float %2356, 7.500000e-01
  %2360 = fmul fast float %2357, 7.500000e-01
  %2361 = fmul fast float %2358, 7.500000e-01
  %2362 = fadd fast float %2326, 1.250000e-01
  %2363 = fadd fast float %2362, %2359
  %2364 = fadd fast float %2363, %2353
  %2365 = fadd fast float %2327, 1.250000e-01
  %2366 = fadd fast float %2365, %2360
  %2367 = fadd fast float %2366, %2354
  %2368 = fadd fast float %2328, 1.250000e-01
  %2369 = fadd fast float %2368, %2361
  %2370 = fadd fast float %2369, %2355
  %2371 = fmul fast float %2364, %2314
  %2372 = fmul fast float %2367, %2315
  %2373 = fmul fast float %2370, %2316
  %2374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.i32 %2374, 0
  %2376 = add i32 %2375, 0
  %2377 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2376, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2377, %dx.types.Handle %47, float %2371, float %2372, float %2373, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2379 = extractvalue %dx.types.ResRet.f32 %2378, 0
  br label %2380

; <label>:2380                                    ; preds = %2301, %2290
  %2381 = phi float [ %2379, %2301 ], [ -1.000000e+00, %2290 ]
  %2382 = fadd fast float %2381, %2288
  %2383 = call float @dx.op.unary.f32(i32 7, float %2382)  ; Saturate(value)
  br label %2384

; <label>:2384                                    ; preds = %2380, %2278
  %2385 = phi float [ %2383, %2380 ], [ %2288, %2278 ]
  %2386 = fmul fast float %2385, %487
  br label %2387

; <label>:2387                                    ; preds = %2384, %2273
  %2388 = phi float [ %2386, %2384 ], [ %487, %2273 ]
  %2389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2390 = extractvalue %dx.types.ResRet.i32 %2389, 0
  %2391 = and i32 %2390, 256
  %2392 = icmp eq i32 %2391, 0
  br i1 %2392, label %2439, label %2393

; <label>:2393                                    ; preds = %2387
  %2394 = add i32 %54, 480
  %2395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %2396 = extractvalue %dx.types.ResRet.i32 %2395, 0
  %2397 = add i32 %2396, 0
  %2398 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2397, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2399 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2398, %dx.types.Handle %97, float %2274, float %2275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2400 = extractvalue %dx.types.ResRet.f32 %2399, 0
  %2401 = add i32 %54, 132
  %2402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2401, i32 undef)  ; BufferLoad(srv,index,wot)
  %2403 = extractvalue %dx.types.ResRet.i32 %2402, 0
  %2404 = shl i32 %2403, 4
  %2405 = and i32 %2404, 32752
  %2406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2405)  ; LegacyF16ToF32(value)
  %2407 = lshr i32 %2403, 7
  %2408 = and i32 %2407, 32752
  %2409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2408)  ; LegacyF16ToF32(value)
  %2410 = fsub fast float 1.000000e+00, %2388
  %2411 = call float @dx.op.binary.f32(i32 35, float %2410, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2412 = bitcast float %2388 to i32
  %2413 = sitofp i32 %2412 to float
  %2414 = fadd fast float %2413, 0xC1CFBF8940000000
  %2415 = fmul fast float %2409, %2414
  %2416 = fadd fast float %2415, 0x41CFBF8940000000
  %2417 = fptosi float %2416 to i32
  %2418 = bitcast i32 %2417 to float
  %2419 = bitcast float %2411 to i32
  %2420 = sitofp i32 %2419 to float
  %2421 = fadd fast float %2420, 0xC1CFBF8940000000
  %2422 = fmul fast float %2421, %2409
  %2423 = fadd fast float %2422, 0x41CFBF8940000000
  %2424 = fptosi float %2423 to i32
  %2425 = bitcast i32 %2424 to float
  %2426 = fmul fast float %2418, %2406
  %2427 = fmul fast float %2425, %2406
  %2428 = fsub fast float %2411, %2426
  %2429 = fadd fast float %2427, %2411
  %2430 = call float @dx.op.unary.f32(i32 7, float %2428)  ; Saturate(value)
  %2431 = call float @dx.op.unary.f32(i32 7, float %2429)  ; Saturate(value)
  %2432 = fsub fast float %2400, %2430
  %2433 = fsub fast float %2431, %2430
  %2434 = bitcast float %2433 to i32
  %2435 = sub nsw i32 2129859010, %2434
  %2436 = bitcast i32 %2435 to float
  %2437 = fmul fast float %2436, %2432
  %2438 = call float @dx.op.unary.f32(i32 7, float %2437)  ; Saturate(value)
  br label %2439

; <label>:2439                                    ; preds = %2393, %2387
  %2440 = phi float [ %2438, %2393 ], [ %2388, %2387 ]
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = and i32 %2442, 128
  %2444 = icmp eq i32 %2443, 0
  br i1 %2444, label %2461, label %2445

; <label>:2445                                    ; preds = %2439
  %2446 = add i32 %54, 464
  %2447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2446, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.i32 %2447, 0
  %2449 = add i32 %2448, 0
  %2450 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2449, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2451 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2450, %dx.types.Handle %97, float %2274, float %2275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2452 = extractvalue %dx.types.ResRet.f32 %2451, 0
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = and i32 %2454, 524288
  %2456 = icmp ne i32 %2455, 0
  %2457 = fcmp fast ogt float %2452, 0x3FE0101020000000
  %2458 = select i1 %2457, float 1.000000e+00, float 0.000000e+00
  %2459 = select i1 %2456, float %2458, float %2452
  %2460 = fmul fast float %2459, %2440
  br label %2461

; <label>:2461                                    ; preds = %2445, %2439
  %2462 = phi float [ %2460, %2445 ], [ %2440, %2439 ]
  %2463 = fcmp fast ult float %2462, 0x3F70101020000000
  br i1 %2463, label %3093, label %2464

; <label>:2464                                    ; preds = %2461
  %2465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2466 = extractvalue %dx.types.ResRet.i32 %2465, 0
  %2467 = and i32 %2466, 16
  %2468 = icmp eq i32 %2467, 0
  br i1 %2468, label %2667, label %2469

; <label>:2469                                    ; preds = %2464
  %2470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2471 = extractvalue %dx.types.ResRet.i32 %2470, 0
  %2472 = add i32 %54, 416
  %2473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2472, i32 undef)  ; BufferLoad(srv,index,wot)
  %2474 = extractvalue %dx.types.ResRet.i32 %2473, 0
  %2475 = add i32 %2474, 0
  %2476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2475, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2477 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2476, %dx.types.Handle %96, float %2274, float %2275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2478 = extractvalue %dx.types.ResRet.f32 %2477, 0
  %2479 = extractvalue %dx.types.ResRet.f32 %2477, 1
  %2480 = extractvalue %dx.types.ResRet.f32 %2477, 2
  %2481 = extractvalue %dx.types.ResRet.f32 %2477, 3
  %2482 = and i32 %2471, 255
  %2483 = uitofp i32 %2482 to float
  %2484 = lshr i32 %2471, 8
  %2485 = and i32 %2484, 255
  %2486 = uitofp i32 %2485 to float
  %2487 = fmul fast float %2481, %2483
  %2488 = fadd fast float %2487, %2486
  %2489 = fmul fast float %2488, 0x3F70101000000000
  %2490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.i32 %2490, 0
  %2492 = and i32 %2491, 512
  %2493 = icmp eq i32 %2492, 0
  br i1 %2493, label %2502, label %2494

; <label>:2494                                    ; preds = %2469
  %2495 = add i32 %54, 496
  %2496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2495, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.i32 %2496, 0
  %2498 = add i32 %2497, 0
  %2499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2498, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2500 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2499, %dx.types.Handle %97, float %2274, float %2275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2501 = extractvalue %dx.types.ResRet.f32 %2500, 0
  br label %2502

; <label>:2502                                    ; preds = %2494, %2469
  %2503 = phi float [ %2501, %2494 ], [ 1.000000e+00, %2469 ]
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 0
  %2506 = and i32 %2505, 33554432
  %2507 = icmp eq i32 %2506, 0
  br i1 %2507, label %2614, label %2508

; <label>:2508                                    ; preds = %2502
  %2509 = add i32 %54, 256
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2509, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = and i32 %2511, 65535
  %2513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2512)  ; LegacyF16ToF32(value)
  %2514 = lshr i32 %2511, 16
  %2515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2514)  ; LegacyF16ToF32(value)
  %2516 = add i32 %54, 260
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2516, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = and i32 %2518, 65535
  %2520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2519)  ; LegacyF16ToF32(value)
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = lshr i32 %2522, 24
  %2524 = uitofp i32 %2523 to float
  %2525 = fmul fast float %2524, 0x3F70101020000000
  %2526 = and i32 %2522, 255
  %2527 = uitofp i32 %2526 to float
  %2528 = fmul fast float %2527, 0x3F70101020000000
  %2529 = lshr i32 %2522, 8
  %2530 = and i32 %2529, 255
  %2531 = uitofp i32 %2530 to float
  %2532 = fmul fast float %2531, 0x3F70101020000000
  %2533 = lshr i32 %2522, 16
  %2534 = and i32 %2533, 255
  %2535 = uitofp i32 %2534 to float
  %2536 = fmul fast float %2535, 0x3F70101020000000
  %2537 = add i32 %54, 252
  %2538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2537, i32 undef)  ; BufferLoad(srv,index,wot)
  %2539 = extractvalue %dx.types.ResRet.i32 %2538, 0
  %2540 = lshr i32 %2539, 24
  %2541 = uitofp i32 %2540 to float
  %2542 = fmul fast float %2541, 0x3F70101020000000
  %2543 = and i32 %2539, 255
  %2544 = uitofp i32 %2543 to float
  %2545 = fmul fast float %2544, 0x3F70101020000000
  %2546 = lshr i32 %2539, 8
  %2547 = and i32 %2546, 255
  %2548 = uitofp i32 %2547 to float
  %2549 = fmul fast float %2548, 0x3F70101020000000
  %2550 = lshr i32 %2539, 16
  %2551 = and i32 %2550, 255
  %2552 = uitofp i32 %2551 to float
  %2553 = fmul fast float %2552, 0x3F70101020000000
  %2554 = bitcast float %2478 to i32
  %2555 = ashr i32 %2554, 1
  %2556 = sub nsw i32 1597463174, %2555
  %2557 = bitcast i32 %2556 to float
  %2558 = fmul fast float %2478, 5.000000e-01
  %2559 = fmul fast float %2557, %2557
  %2560 = fmul fast float %2559, %2558
  %2561 = fsub fast float 1.500000e+00, %2560
  %2562 = fmul fast float %2557, %2478
  %2563 = fmul fast float %2562, %2561
  %2564 = bitcast float %2479 to i32
  %2565 = ashr i32 %2564, 1
  %2566 = sub nsw i32 1597463174, %2565
  %2567 = bitcast i32 %2566 to float
  %2568 = fmul fast float %2479, 5.000000e-01
  %2569 = fmul fast float %2567, %2567
  %2570 = fmul fast float %2569, %2568
  %2571 = fsub fast float 1.500000e+00, %2570
  %2572 = fmul fast float %2567, %2479
  %2573 = fmul fast float %2572, %2571
  %2574 = bitcast float %2480 to i32
  %2575 = ashr i32 %2574, 1
  %2576 = sub nsw i32 1597463174, %2575
  %2577 = bitcast i32 %2576 to float
  %2578 = fmul fast float %2480, 5.000000e-01
  %2579 = fmul fast float %2577, %2577
  %2580 = fmul fast float %2579, %2578
  %2581 = fsub fast float 1.500000e+00, %2580
  %2582 = fmul fast float %2577, %2480
  %2583 = fmul fast float %2582, %2581
  %2584 = fsub fast float %2563, %2545
  %2585 = fsub fast float %2573, %2549
  %2586 = fsub fast float %2583, %2553
  %2587 = fmul fast float %2584, %2513
  %2588 = fmul fast float %2585, %2515
  %2589 = fmul fast float %2586, %2520
  %2590 = fadd fast float %2587, %2528
  %2591 = fadd fast float %2588, %2532
  %2592 = fadd fast float %2589, %2536
  %2593 = call float @dx.op.unary.f32(i32 7, float %2590)  ; Saturate(value)
  %2594 = call float @dx.op.unary.f32(i32 7, float %2591)  ; Saturate(value)
  %2595 = call float @dx.op.unary.f32(i32 7, float %2592)  ; Saturate(value)
  %2596 = fmul fast float %2593, %2593
  %2597 = fmul fast float %2594, %2594
  %2598 = fmul fast float %2595, %2595
  %2599 = fsub fast float %2596, %2478
  %2600 = fsub fast float %2597, %2479
  %2601 = fsub fast float %2598, %2480
  %2602 = fmul fast float %2599, %2503
  %2603 = fmul fast float %2600, %2503
  %2604 = fmul fast float %2601, %2503
  %2605 = fadd fast float %2602, %2478
  %2606 = fadd fast float %2603, %2479
  %2607 = fadd fast float %2604, %2480
  %2608 = fadd fast float %2525, %2489
  %2609 = fsub fast float %2608, %2542
  %2610 = call float @dx.op.unary.f32(i32 7, float %2609)  ; Saturate(value)
  %2611 = fsub fast float %2610, %2489
  %2612 = fmul fast float %2611, %2503
  %2613 = fadd fast float %2612, %2489
  br label %2667

; <label>:2614                                    ; preds = %2502
  %2615 = and i32 %2505, 134217728
  %2616 = icmp eq i32 %2615, 0
  br i1 %2616, label %2651, label %2617

; <label>:2617                                    ; preds = %2614
  %2618 = call float @dx.op.unary.f32(i32 24, float %362)  ; Sqrt(value)
  %2619 = call float @dx.op.unary.f32(i32 24, float %366)  ; Sqrt(value)
  %2620 = call float @dx.op.unary.f32(i32 24, float %370)  ; Sqrt(value)
  %2621 = fadd fast float %2618, -5.000000e-01
  %2622 = fadd fast float %2619, -5.000000e-01
  %2623 = fadd fast float %2620, -5.000000e-01
  %2624 = fmul fast float %2621, %2503
  %2625 = fmul fast float %2622, %2503
  %2626 = fmul fast float %2623, %2503
  %2627 = fadd fast float %2624, 5.000000e-01
  %2628 = fadd fast float %2625, 5.000000e-01
  %2629 = fadd fast float %2626, 5.000000e-01
  %2630 = call float @dx.op.unary.f32(i32 24, float %2478)  ; Sqrt(value)
  %2631 = call float @dx.op.unary.f32(i32 24, float %2479)  ; Sqrt(value)
  %2632 = call float @dx.op.unary.f32(i32 24, float %2480)  ; Sqrt(value)
  %2633 = fmul fast float %2627, 2.000000e+00
  %2634 = fsub fast float 1.000000e+00, %2633
  %2635 = fmul fast float %2634, %2630
  %2636 = fadd fast float %2635, %2633
  %2637 = fmul fast float %2636, %2630
  %2638 = fmul fast float %2628, 2.000000e+00
  %2639 = fsub fast float 1.000000e+00, %2638
  %2640 = fmul fast float %2639, %2631
  %2641 = fadd fast float %2640, %2638
  %2642 = fmul fast float %2641, %2631
  %2643 = fmul fast float %2629, 2.000000e+00
  %2644 = fsub fast float 1.000000e+00, %2643
  %2645 = fmul fast float %2644, %2632
  %2646 = fadd fast float %2645, %2643
  %2647 = fmul fast float %2646, %2632
  %2648 = fmul fast float %2637, %2637
  %2649 = fmul fast float %2642, %2642
  %2650 = fmul fast float %2647, %2647
  br label %2667

; <label>:2651                                    ; preds = %2614
  %2652 = fmul fast float %362, %362
  %2653 = fmul fast float %366, %366
  %2654 = fmul fast float %370, %370
  %2655 = fadd fast float %2652, -1.000000e+00
  %2656 = fadd fast float %2653, -1.000000e+00
  %2657 = fadd fast float %2654, -1.000000e+00
  %2658 = fmul fast float %2503, %2655
  %2659 = fmul fast float %2503, %2656
  %2660 = fmul fast float %2503, %2657
  %2661 = fadd fast float %2658, 1.000000e+00
  %2662 = fadd fast float %2659, 1.000000e+00
  %2663 = fadd fast float %2660, 1.000000e+00
  %2664 = fmul fast float %2661, %2478
  %2665 = fmul fast float %2662, %2479
  %2666 = fmul fast float %2663, %2480
  br label %2667

; <label>:2667                                    ; preds = %2651, %2617, %2508, %2464
  %2668 = phi float [ %2613, %2508 ], [ %2489, %2617 ], [ %2489, %2651 ], [ 0x3FA23C0BE0000000, %2464 ]
  %2669 = phi float [ %2605, %2508 ], [ %2648, %2617 ], [ %2664, %2651 ], [ 1.000000e+00, %2464 ]
  %2670 = phi float [ %2606, %2508 ], [ %2649, %2617 ], [ %2665, %2651 ], [ 1.000000e+00, %2464 ]
  %2671 = phi float [ %2607, %2508 ], [ %2650, %2617 ], [ %2666, %2651 ], [ 1.000000e+00, %2464 ]
  %2672 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2673 = extractvalue %dx.types.CBufRet.i32 %2672, 1
  %2674 = and i32 %2673, 1
  %2675 = icmp ne i32 %2674, 0
  %2676 = add i32 %54, 356
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = and i32 %2678, 32
  %2680 = icmp ne i32 %2679, 0
  %2681 = and i1 %2675, %2680
  %2682 = select i1 %2681, float 1.000000e+00, float %2669
  %2683 = select i1 %2681, float 0x3FD3333340000000, float %2670
  %2684 = select i1 %2681, float 0x3FD3333340000000, float %2671
  %2685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2686 = extractvalue %dx.types.ResRet.i32 %2685, 0
  %2687 = and i32 %2686, 32
  %2688 = icmp eq i32 %2687, 0
  br i1 %2688, label %2761, label %2689

; <label>:2689                                    ; preds = %2667
  %2690 = add i32 %54, 124
  %2691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2690, i32 undef)  ; BufferLoad(srv,index,wot)
  %2692 = extractvalue %dx.types.ResRet.i32 %2691, 0
  %2693 = add i32 %54, 432
  %2694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2693, i32 undef)  ; BufferLoad(srv,index,wot)
  %2695 = extractvalue %dx.types.ResRet.i32 %2694, 0
  %2696 = add i32 %2695, 0
  %2697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2697, %dx.types.Handle %96, float %2274, float %2275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2699 = extractvalue %dx.types.ResRet.f32 %2698, 0
  %2700 = extractvalue %dx.types.ResRet.f32 %2698, 1
  %2701 = extractvalue %dx.types.ResRet.f32 %2698, 2
  %2702 = extractvalue %dx.types.ResRet.f32 %2698, 3
  %2703 = and i32 %2692, 255
  %2704 = uitofp i32 %2703 to float
  %2705 = lshr i32 %2692, 8
  %2706 = and i32 %2705, 255
  %2707 = uitofp i32 %2706 to float
  %2708 = lshr i32 %2692, 16
  %2709 = and i32 %2708, 255
  %2710 = uitofp i32 %2709 to float
  %2711 = fmul fast float %2710, 0x3F70101000000000
  %2712 = fmul fast float %2699, %2704
  %2713 = fadd fast float %2712, %2707
  %2714 = fmul fast float %2713, 0x3F70101000000000
  %2715 = fadd fast float %2700, -5.000000e-01
  %2716 = fadd fast float %2702, -5.000000e-01
  %2717 = fmul fast float %2715, %2711
  %2718 = fmul fast float %2716, %2711
  %2719 = fadd fast float %2717, 5.000000e-01
  %2720 = fadd fast float %2718, 5.000000e-01
  %2721 = fmul fast float %2719, 2.000000e+00
  %2722 = fadd fast float %2721, -1.000000e+00
  %2723 = fmul fast float %2720, 2.000000e+00
  %2724 = fadd fast float %2723, -1.000000e+00
  %2725 = fadd fast float %2722, %2724
  %2726 = fmul fast float %2725, 5.000000e-01
  %2727 = fsub fast float %2722, %2724
  %2728 = fmul fast float %2727, 5.000000e-01
  %2729 = call float @dx.op.unary.f32(i32 6, float %2726)  ; FAbs(value)
  %2730 = fsub fast float 1.000000e+00, %2729
  %2731 = call float @dx.op.unary.f32(i32 6, float %2728)  ; FAbs(value)
  %2732 = fsub fast float %2730, %2731
  %2733 = call float @dx.op.dot3.f32(i32 55, float %2726, float %2728, float %2732, float %2726, float %2728, float %2732)  ; Dot3(ax,ay,az,bx,by,bz)
  %2734 = call float @dx.op.unary.f32(i32 25, float %2733)  ; Rsqrt(value)
  %2735 = fmul fast float %2726, %2734
  %2736 = fmul fast float %2728, %2734
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = and i32 %2738, 67108864
  %2740 = icmp eq i32 %2739, 0
  br i1 %2740, label %2757, label %2741

; <label>:2741                                    ; preds = %2689
  %2742 = add i32 %54, 312
  %2743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.i32 %2743, 0
  %2745 = and i32 %2744, 65535
  %2746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2745)  ; LegacyF16ToF32(value)
  %2747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2184, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.i32 %2747, 0
  %2749 = and i32 %2748, 65535
  %2750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2749)  ; LegacyF16ToF32(value)
  %2751 = lshr i32 %2744, 16
  %2752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2751)  ; LegacyF16ToF32(value)
  %2753 = fsub fast float %2714, %2752
  %2754 = fmul fast float %2753, %2746
  %2755 = fadd fast float %2754, %2750
  %2756 = call float @dx.op.unary.f32(i32 7, float %2755)  ; Saturate(value)
  br label %2757

; <label>:2757                                    ; preds = %2741, %2689
  %2758 = phi float [ %2756, %2741 ], [ %2714, %2689 ]
  %2759 = call float @dx.op.dot2.f32(i32 54, float %2735, float %2736, float %2178, float %2179)  ; Dot2(ax,ay,bx,by)
  %2760 = call float @dx.op.dot2.f32(i32 54, float %2735, float %2736, float %2180, float %2181)  ; Dot2(ax,ay,bx,by)
  br label %2761

; <label>:2761                                    ; preds = %2757, %2667
  %2762 = phi float [ %2758, %2757 ], [ 0x3FD6666660000000, %2667 ]
  %2763 = phi float [ %2759, %2757 ], [ 0.000000e+00, %2667 ]
  %2764 = phi float [ %2760, %2757 ], [ 0.000000e+00, %2667 ]
  %2765 = phi float [ %2701, %2757 ], [ 1.000000e+00, %2667 ]
  %2766 = add i32 %54, 192
  %2767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2768 = extractvalue %dx.types.ResRet.i32 %2767, 0
  %2769 = lshr i32 %2768, 22
  %2770 = shl nuw nsw i32 %2769, 5
  %2771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2770)  ; LegacyF16ToF32(value)
  %2772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2773 = extractvalue %dx.types.ResRet.i32 %2772, 0
  %2774 = and i32 %2773, 64
  %2775 = icmp eq i32 %2774, 0
  br i1 %2775, label %2809, label %2776

; <label>:2776                                    ; preds = %2761
  %2777 = add i32 %54, 448
  %2778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2779 = extractvalue %dx.types.ResRet.i32 %2778, 0
  %2780 = add i32 %2779, 0
  %2781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2780, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2783 = extractvalue %dx.types.ResRet.i32 %2782, 0
  %2784 = and i32 %2783, 131072
  %2785 = icmp eq i32 %2784, 0
  %2786 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2781, %dx.types.Handle %96, float %2274, float %2275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2787 = extractvalue %dx.types.ResRet.f32 %2786, 0
  %2788 = extractvalue %dx.types.ResRet.f32 %2786, 1
  %2789 = extractvalue %dx.types.ResRet.f32 %2786, 2
  %2790 = fmul fast float %2787, %350
  %2791 = fmul fast float %2788, %353
  %2792 = fmul fast float %2789, %356
  br i1 %2785, label %2799, label %2793

; <label>:2793                                    ; preds = %2776
  %2794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.f32 %2794, 0
  %2796 = fmul fast float %2795, %2790
  %2797 = fmul fast float %2795, %2791
  %2798 = fmul fast float %2795, %2792
  br label %2799

; <label>:2799                                    ; preds = %2793, %2776
  %2800 = phi float [ %2796, %2793 ], [ %2790, %2776 ]
  %2801 = phi float [ %2797, %2793 ], [ %2791, %2776 ]
  %2802 = phi float [ %2798, %2793 ], [ %2792, %2776 ]
  %2803 = fmul fast float %2800, %2771
  %2804 = select i1 %249, float %2803, float %2800
  %2805 = call float @dx.op.dot3.f32(i32 55, float %2804, float %2801, float %2802, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2806 = select i1 %249, float 0.000000e+00, float %2800
  %2807 = select i1 %249, float %2805, float %2801
  %2808 = select i1 %249, float 0.000000e+00, float %2802
  br label %2809

; <label>:2809                                    ; preds = %2799, %2761
  %2810 = phi float [ %2806, %2799 ], [ 0.000000e+00, %2761 ]
  %2811 = phi float [ %2807, %2799 ], [ 0.000000e+00, %2761 ]
  %2812 = phi float [ %2808, %2799 ], [ 0.000000e+00, %2761 ]
  %2813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2814 = extractvalue %dx.types.ResRet.i32 %2813, 0
  %2815 = and i32 %2814, 10240
  %2816 = icmp eq i32 %2815, 0
  br i1 %2816, label %2861, label %2817

; <label>:2817                                    ; preds = %2809
  %2818 = add i32 %54, 512
  %2819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2820 = extractvalue %dx.types.ResRet.i32 %2819, 0
  %2821 = add i32 %2820, 0
  %2822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2821, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2823 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2822, %dx.types.Handle %97, float %2274, float %2275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2824 = extractvalue %dx.types.ResRet.f32 %2823, 1
  %2825 = extractvalue %dx.types.ResRet.f32 %2823, 3
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = and i32 %2827, 1048576
  %2829 = icmp ne i32 %2828, 0
  %2830 = and i32 %2827, 8192
  %2831 = icmp eq i32 %2830, 0
  br i1 %2831, label %2847, label %2832

; <label>:2832                                    ; preds = %2817
  %2833 = extractvalue %dx.types.ResRet.f32 %2823, 2
  %2834 = select i1 %2829, float %2833, float %2824
  %2835 = extractvalue %dx.types.ResRet.f32 %2823, 0
  %2836 = select i1 %2829, float %2835, float %2824
  %2837 = add i32 %54, 128
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = lshr i32 %2839, 16
  %2841 = and i32 %2840, 255
  %2842 = uitofp i32 %2841 to float
  %2843 = fmul fast float %2842, 0x3F80101020000000
  %2844 = fmul fast float %2843, %2836
  %2845 = fmul fast float %2843, %2824
  %2846 = fmul fast float %2843, %2834
  br label %2847

; <label>:2847                                    ; preds = %2832, %2817
  %2848 = phi float [ %2844, %2832 ], [ 0.000000e+00, %2817 ]
  %2849 = phi float [ %2845, %2832 ], [ 0.000000e+00, %2817 ]
  %2850 = phi float [ %2846, %2832 ], [ 0.000000e+00, %2817 ]
  %2851 = and i32 %2827, 2048
  %2852 = icmp eq i32 %2851, 0
  br i1 %2852, label %2861, label %2853

; <label>:2853                                    ; preds = %2847
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = shl i32 %2855, 4
  %2857 = and i32 %2856, 32752
  %2858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2857)  ; LegacyF16ToF32(value)
  %2859 = fmul fast float %2858, %2825
  %2860 = call float @dx.op.binary.f32(i32 35, float %2859, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2861

; <label>:2861                                    ; preds = %2853, %2847, %2809
  %2862 = phi float [ %2848, %2853 ], [ %2848, %2847 ], [ 0.000000e+00, %2809 ]
  %2863 = phi float [ %2849, %2853 ], [ %2849, %2847 ], [ 0.000000e+00, %2809 ]
  %2864 = phi float [ %2850, %2853 ], [ %2850, %2847 ], [ 0.000000e+00, %2809 ]
  %2865 = phi float [ %2860, %2853 ], [ 0x3F70101020000000, %2847 ], [ 0x3F70101020000000, %2809 ]
  %2866 = add i32 %54, 128
  %2867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %2868 = extractvalue %dx.types.ResRet.i32 %2867, 0
  %2869 = and i32 %2868, 255
  %2870 = uitofp i32 %2869 to float
  %2871 = lshr i32 %2868, 8
  %2872 = and i32 %2871, 255
  %2873 = uitofp i32 %2872 to float
  %2874 = call float @dx.op.dot3.f32(i32 55, float %2682, float %2683, float %2684, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2875 = fmul fast float %2873, %2874
  %2876 = fadd fast float %2875, %2870
  %2877 = fmul fast float %2876, 0x3F70101020000000
  %2878 = call float @dx.op.unary.f32(i32 7, float %2877)  ; Saturate(value)
  br i1 %2166, label %2879, label %2887

; <label>:2879                                    ; preds = %2861
  %2880 = fsub fast float 1.000000e+00, %2462
  %2881 = fmul fast float %2880, %2151
  %2882 = fmul fast float %2880, %2152
  %2883 = fmul fast float %2880, %2153
  %2884 = fmul fast float %2880, %2157
  %2885 = fmul fast float %2880, %2158
  %2886 = fmul fast float %2880, %2159
  br label %2887

; <label>:2887                                    ; preds = %2879, %2861
  %2888 = phi float [ %2881, %2879 ], [ %2151, %2861 ]
  %2889 = phi float [ %2882, %2879 ], [ %2152, %2861 ]
  %2890 = phi float [ %2883, %2879 ], [ %2153, %2861 ]
  %2891 = phi float [ %2884, %2879 ], [ %2157, %2861 ]
  %2892 = phi float [ %2885, %2879 ], [ %2158, %2861 ]
  %2893 = phi float [ %2886, %2879 ], [ %2159, %2861 ]
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = and i32 %2895, 3
  %2897 = icmp eq i32 %2896, 3
  br i1 %2897, label %2976, label %2898

; <label>:2898                                    ; preds = %2887
  %2899 = and i32 %2895, 16
  %2900 = icmp ne i32 %2899, 0
  %2901 = select i1 %2900, float %2462, float 0.000000e+00
  %2902 = icmp eq i32 %2896, 0
  br i1 %2902, label %2903, label %2931

; <label>:2903                                    ; preds = %2898
  %2904 = and i32 %2895, 64
  %2905 = icmp ne i32 %2904, 0
  %2906 = select i1 %2905, float %2462, float 0.000000e+00
  %2907 = fsub fast float %2682, %2888
  %2908 = fsub fast float %2683, %2889
  %2909 = fsub fast float %2684, %2890
  %2910 = fmul fast float %2901, %2907
  %2911 = fmul fast float %2901, %2908
  %2912 = fmul fast float %2901, %2909
  %2913 = fadd fast float %2910, %2888
  %2914 = fadd fast float %2911, %2889
  %2915 = fadd fast float %2912, %2890
  %2916 = fsub fast float %2668, %2160
  %2917 = fmul fast float %2901, %2916
  %2918 = fadd fast float %2917, %2160
  %2919 = fsub fast float %2810, %2891
  %2920 = fsub fast float %2811, %2892
  %2921 = fsub fast float %2812, %2893
  %2922 = fmul fast float %2906, %2919
  %2923 = fmul fast float %2906, %2920
  %2924 = fmul fast float %2906, %2921
  %2925 = fadd fast float %2922, %2891
  %2926 = fadd fast float %2923, %2892
  %2927 = fadd fast float %2924, %2893
  %2928 = fsub fast float %2878, %2164
  %2929 = fmul fast float %2901, %2928
  %2930 = fadd fast float %2929, %2164
  br label %2976

; <label>:2931                                    ; preds = %2898
  %2932 = icmp eq i32 %2896, 1
  br i1 %2932, label %2933, label %2946

; <label>:2933                                    ; preds = %2931
  %2934 = fadd fast float %2682, -1.000000e+00
  %2935 = fadd fast float %2683, -1.000000e+00
  %2936 = fadd fast float %2684, -1.000000e+00
  %2937 = fmul fast float %2901, %2934
  %2938 = fmul fast float %2901, %2935
  %2939 = fmul fast float %2901, %2936
  %2940 = fadd fast float %2937, 1.000000e+00
  %2941 = fadd fast float %2938, 1.000000e+00
  %2942 = fadd fast float %2939, 1.000000e+00
  %2943 = fmul fast float %2940, %2888
  %2944 = fmul fast float %2941, %2889
  %2945 = fmul fast float %2942, %2890
  br label %2976

; <label>:2946                                    ; preds = %2931
  %2947 = icmp eq i32 %2896, 2
  br i1 %2947, label %2948, label %2976

; <label>:2948                                    ; preds = %2946
  %2949 = call float @dx.op.unary.f32(i32 24, float %2682)  ; Sqrt(value)
  %2950 = call float @dx.op.unary.f32(i32 24, float %2683)  ; Sqrt(value)
  %2951 = call float @dx.op.unary.f32(i32 24, float %2684)  ; Sqrt(value)
  %2952 = fadd fast float %2949, -5.000000e-01
  %2953 = fadd fast float %2950, -5.000000e-01
  %2954 = fadd fast float %2951, -5.000000e-01
  %2955 = fmul fast float %2952, %2901
  %2956 = fmul fast float %2953, %2901
  %2957 = fmul fast float %2954, %2901
  %2958 = fadd fast float %2955, 5.000000e-01
  %2959 = fadd fast float %2956, 5.000000e-01
  %2960 = fadd fast float %2957, 5.000000e-01
  %2961 = fmul fast float %2958, 2.000000e+00
  %2962 = fsub fast float 1.000000e+00, %2961
  %2963 = fmul fast float %2962, %2888
  %2964 = fadd fast float %2963, %2961
  %2965 = fmul fast float %2964, %2888
  %2966 = fmul fast float %2959, 2.000000e+00
  %2967 = fsub fast float 1.000000e+00, %2966
  %2968 = fmul fast float %2967, %2889
  %2969 = fadd fast float %2968, %2966
  %2970 = fmul fast float %2969, %2889
  %2971 = fmul fast float %2960, 2.000000e+00
  %2972 = fsub fast float 1.000000e+00, %2971
  %2973 = fmul fast float %2972, %2890
  %2974 = fadd fast float %2973, %2971
  %2975 = fmul fast float %2974, %2890
  br label %2976

; <label>:2976                                    ; preds = %2948, %2946, %2933, %2903, %2887
  %2977 = phi float [ %2888, %2887 ], [ %2965, %2948 ], [ %2888, %2946 ], [ %2943, %2933 ], [ %2913, %2903 ]
  %2978 = phi float [ %2889, %2887 ], [ %2970, %2948 ], [ %2889, %2946 ], [ %2944, %2933 ], [ %2914, %2903 ]
  %2979 = phi float [ %2890, %2887 ], [ %2975, %2948 ], [ %2890, %2946 ], [ %2945, %2933 ], [ %2915, %2903 ]
  %2980 = phi float [ %2891, %2887 ], [ %2891, %2948 ], [ %2891, %2946 ], [ %2891, %2933 ], [ %2925, %2903 ]
  %2981 = phi float [ %2892, %2887 ], [ %2892, %2948 ], [ %2892, %2946 ], [ %2892, %2933 ], [ %2926, %2903 ]
  %2982 = phi float [ %2893, %2887 ], [ %2893, %2948 ], [ %2893, %2946 ], [ %2893, %2933 ], [ %2927, %2903 ]
  %2983 = phi float [ %2160, %2887 ], [ %2160, %2948 ], [ %2160, %2946 ], [ %2160, %2933 ], [ %2918, %2903 ]
  %2984 = phi float [ %2164, %2887 ], [ %2164, %2948 ], [ %2164, %2946 ], [ %2164, %2933 ], [ %2930, %2903 ]
  %2985 = and i32 %2895, 12
  %2986 = icmp eq i32 %2985, 12
  br i1 %2986, label %3093, label %2987

; <label>:2987                                    ; preds = %2976
  %2988 = and i32 %2895, 2097184
  %2989 = icmp eq i32 %2988, 2097184
  %2990 = select i1 %2989, float %2462, float 0.000000e+00
  %2991 = and i32 %2895, 4194336
  %2992 = icmp eq i32 %2991, 4194336
  %2993 = select i1 %2992, float %2462, float 0.000000e+00
  %2994 = and i32 %2895, 8388640
  %2995 = icmp eq i32 %2994, 8388640
  %2996 = select i1 %2995, float %2462, float 0.000000e+00
  %2997 = and i32 %2895, 2048
  %2998 = icmp ne i32 %2997, 0
  %2999 = select i1 %2998, float %2462, float 0.000000e+00
  %3000 = and i32 %2895, 8192
  %3001 = icmp ne i32 %3000, 0
  %3002 = select i1 %3001, float %2462, float 0.000000e+00
  %3003 = icmp eq i32 %2985, 0
  br i1 %3003, label %3004, label %3029

; <label>:3004                                    ; preds = %2987
  %3005 = fsub fast float %2763, %2149
  %3006 = fsub fast float %2764, %2150
  %3007 = fmul fast float %2990, %3005
  %3008 = fmul fast float %2990, %3006
  %3009 = fadd fast float %3007, %2149
  %3010 = fadd fast float %3008, %2150
  %3011 = fsub fast float %2765, %2162
  %3012 = fmul fast float %2993, %3011
  %3013 = fadd fast float %3012, %2162
  %3014 = fsub fast float %2762, %2161
  %3015 = fmul fast float %2996, %3014
  %3016 = fadd fast float %3015, %2161
  %3017 = fsub fast float %2865, %2163
  %3018 = fmul fast float %2999, %3017
  %3019 = fadd fast float %3018, %2163
  %3020 = fsub fast float %2862, %2154
  %3021 = fsub fast float %2863, %2155
  %3022 = fsub fast float %2864, %2156
  %3023 = fmul fast float %3002, %3020
  %3024 = fmul fast float %3002, %3021
  %3025 = fmul fast float %3002, %3022
  %3026 = fadd fast float %3023, %2154
  %3027 = fadd fast float %3024, %2155
  %3028 = fadd fast float %3025, %2156
  br label %3093

; <label>:3029                                    ; preds = %2987
  %3030 = icmp eq i32 %2985, 4
  br i1 %3030, label %3031, label %3071

; <label>:3031                                    ; preds = %3029
  %3032 = fmul fast float %2990, %2763
  %3033 = fmul fast float %2990, %2764
  %3034 = fadd fast float %3032, %2149
  %3035 = fadd fast float %3033, %2150
  %3036 = call float @dx.op.binary.f32(i32 36, float %2162, float %2765)  ; FMin(a,b)
  %3037 = fsub fast float %3036, %2162
  %3038 = fmul fast float %3037, %2993
  %3039 = fadd fast float %3038, %2162
  %3040 = fadd fast float %2762, %2161
  %3041 = fmul fast float %3040, 0x3FF337FAE0000000
  %3042 = fmul fast float %2161, %2161
  %3043 = fmul fast float %2762, %2762
  %3044 = fadd fast float %3043, %3042
  %3045 = fmul fast float %3044, 0x3FE5152B00000000
  %3046 = fmul fast float %2161, 0xBFCC1F85E0000000
  %3047 = fmul fast float %3046, %2762
  %3048 = fadd fast float %3047, 0xBFE1363700000000
  %3049 = fadd fast float %3048, %3041
  %3050 = fsub fast float %3049, %3045
  %3051 = fmul fast float %3040, 0x3FBA6F0D00000000
  %3052 = fmul fast float %3044, 0x3FD0432880000000
  %3053 = fmul fast float %2161, 0xBFEF110800000000
  %3054 = fmul fast float %3053, %2762
  %3055 = fadd fast float %3054, 1.000000e+00
  %3056 = fsub fast float %3055, %3051
  %3057 = fadd fast float %3056, %3052
  %3058 = fdiv fast float %3050, %3057
  %3059 = call float @dx.op.unary.f32(i32 7, float %3058)  ; Saturate(value)
  %3060 = fsub fast float %3059, %2161
  %3061 = fmul fast float %3060, %2996
  %3062 = fadd fast float %3061, %2161
  %3063 = fmul fast float %2999, %2865
  %3064 = fadd fast float %3063, %2163
  %3065 = fmul fast float %3002, %2862
  %3066 = fmul fast float %3002, %2863
  %3067 = fmul fast float %3002, %2864
  %3068 = fadd fast float %3065, %2154
  %3069 = fadd fast float %3066, %2155
  %3070 = fadd fast float %3067, %2156
  br label %3093

; <label>:3071                                    ; preds = %3029
  %3072 = icmp eq i32 %2985, 8
  br i1 %3072, label %3073, label %3093

; <label>:3073                                    ; preds = %3071
  %3074 = fmul fast float %2990, %2763
  %3075 = fmul fast float %2990, %2764
  %3076 = fadd fast float %3074, %2149
  %3077 = fadd fast float %3075, %2150
  %3078 = call float @dx.op.binary.f32(i32 36, float %2162, float %2765)  ; FMin(a,b)
  %3079 = fsub fast float %3078, %2162
  %3080 = fmul fast float %3079, %2993
  %3081 = fadd fast float %3080, %2162
  %3082 = fsub fast float %2762, %2161
  %3083 = fmul fast float %2996, %3082
  %3084 = fadd fast float %3083, %2161
  %3085 = fmul fast float %2999, %2865
  %3086 = fadd fast float %3085, %2163
  %3087 = fmul fast float %3002, %2862
  %3088 = fmul fast float %3002, %2863
  %3089 = fmul fast float %3002, %2864
  %3090 = fadd fast float %3087, %2154
  %3091 = fadd fast float %3088, %2155
  %3092 = fadd fast float %3089, %2156
  br label %3093

; <label>:3093                                    ; preds = %3073, %3071, %3031, %3004, %2976, %2461, %2165, %2148
  %3094 = phi float [ %2149, %2976 ], [ %2149, %2461 ], [ %2149, %2148 ], [ %3076, %3073 ], [ %2149, %3071 ], [ %3034, %3031 ], [ %3009, %3004 ], [ %2149, %2165 ]
  %3095 = phi float [ %2150, %2976 ], [ %2150, %2461 ], [ %2150, %2148 ], [ %3077, %3073 ], [ %2150, %3071 ], [ %3035, %3031 ], [ %3010, %3004 ], [ %2150, %2165 ]
  %3096 = phi float [ %2977, %2976 ], [ %2151, %2461 ], [ %2151, %2148 ], [ %2977, %3073 ], [ %2977, %3071 ], [ %2977, %3031 ], [ %2977, %3004 ], [ %2151, %2165 ]
  %3097 = phi float [ %2978, %2976 ], [ %2152, %2461 ], [ %2152, %2148 ], [ %2978, %3073 ], [ %2978, %3071 ], [ %2978, %3031 ], [ %2978, %3004 ], [ %2152, %2165 ]
  %3098 = phi float [ %2979, %2976 ], [ %2153, %2461 ], [ %2153, %2148 ], [ %2979, %3073 ], [ %2979, %3071 ], [ %2979, %3031 ], [ %2979, %3004 ], [ %2153, %2165 ]
  %3099 = phi float [ %2154, %2976 ], [ %2154, %2461 ], [ %2154, %2148 ], [ %3090, %3073 ], [ %2154, %3071 ], [ %3068, %3031 ], [ %3026, %3004 ], [ %2154, %2165 ]
  %3100 = phi float [ %2155, %2976 ], [ %2155, %2461 ], [ %2155, %2148 ], [ %3091, %3073 ], [ %2155, %3071 ], [ %3069, %3031 ], [ %3027, %3004 ], [ %2155, %2165 ]
  %3101 = phi float [ %2156, %2976 ], [ %2156, %2461 ], [ %2156, %2148 ], [ %3092, %3073 ], [ %2156, %3071 ], [ %3070, %3031 ], [ %3028, %3004 ], [ %2156, %2165 ]
  %3102 = phi float [ %2980, %2976 ], [ %2157, %2461 ], [ %2157, %2148 ], [ %2980, %3073 ], [ %2980, %3071 ], [ %2980, %3031 ], [ %2980, %3004 ], [ %2157, %2165 ]
  %3103 = phi float [ %2981, %2976 ], [ %2158, %2461 ], [ %2158, %2148 ], [ %2981, %3073 ], [ %2981, %3071 ], [ %2981, %3031 ], [ %2981, %3004 ], [ %2158, %2165 ]
  %3104 = phi float [ %2982, %2976 ], [ %2159, %2461 ], [ %2159, %2148 ], [ %2982, %3073 ], [ %2982, %3071 ], [ %2982, %3031 ], [ %2982, %3004 ], [ %2159, %2165 ]
  %3105 = phi float [ %2983, %2976 ], [ %2160, %2461 ], [ %2160, %2148 ], [ %2983, %3073 ], [ %2983, %3071 ], [ %2983, %3031 ], [ %2983, %3004 ], [ %2160, %2165 ]
  %3106 = phi float [ %2161, %2976 ], [ %2161, %2461 ], [ %2161, %2148 ], [ %3084, %3073 ], [ %2161, %3071 ], [ %3062, %3031 ], [ %3016, %3004 ], [ %2161, %2165 ]
  %3107 = phi float [ %2162, %2976 ], [ %2162, %2461 ], [ %2162, %2148 ], [ %3081, %3073 ], [ %2162, %3071 ], [ %3039, %3031 ], [ %3013, %3004 ], [ %2162, %2165 ]
  %3108 = phi float [ %2163, %2976 ], [ %2163, %2461 ], [ %2163, %2148 ], [ %3086, %3073 ], [ %2163, %3071 ], [ %3064, %3031 ], [ %3019, %3004 ], [ %2163, %2165 ]
  %3109 = phi float [ %2984, %2976 ], [ %2164, %2461 ], [ %2164, %2148 ], [ %2984, %3073 ], [ %2984, %3071 ], [ %2984, %3031 ], [ %2984, %3004 ], [ %2164, %2165 ]
  br i1 %437, label %4038, label %3110

; <label>:3110                                    ; preds = %3093
  %3111 = icmp ult i32 %491, 4
  %3112 = add i32 %54, 72
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = add i32 %54, 76
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = or i32 %3117, %3114
  %3119 = icmp eq i32 %3118, 0
  br i1 %3119, label %4038, label %3120

; <label>:3120                                    ; preds = %3110
  %3121 = and i32 %3114, 262144
  %3122 = icmp ne i32 %3121, 0
  %3123 = select i1 %3122, float %57, float 1.000000e+00
  %3124 = select i1 %3122, float %58, float 0.000000e+00
  %3125 = select i1 %3122, float %59, float 0.000000e+00
  %3126 = select i1 %3122, float %60, float 1.000000e+00
  %3127 = select i1 %3122, float %61, float %82
  %3128 = select i1 %3122, float %62, float %83
  %3129 = add i32 %54, 332
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3129, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = lshr i32 %3131, 16
  %3133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3132)  ; LegacyF16ToF32(value)
  %3134 = fmul fast float %3133, 0x3F50624DE0000000
  %3135 = add i32 %54, 136
  %3136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3135, i32 undef)  ; BufferLoad(srv,index,wot)
  %3137 = extractvalue %dx.types.ResRet.i32 %3136, 0
  %3138 = lshr i32 %3137, 16
  %3139 = and i32 %3138, 255
  %3140 = lshr i32 %3137, 24
  %3141 = add i32 %54, 340
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3141, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = and i32 %3143, 65535
  %3145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3144)  ; LegacyF16ToF32(value)
  %3146 = lshr i32 %3143, 16
  %3147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3146)  ; LegacyF16ToF32(value)
  %3148 = add i32 %54, 80
  %3149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.i32 %3149, 0
  %3151 = lshr i32 %3150, 22
  %3152 = shl nuw nsw i32 %3151, 5
  %3153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3152)  ; LegacyF16ToF32(value)
  %3154 = shl i32 %3150, 4
  %3155 = and i32 %3154, 32752
  %3156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3155)  ; LegacyF16ToF32(value)
  %3157 = lshr i32 %3150, 7
  %3158 = and i32 %3157, 32752
  %3159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3158)  ; LegacyF16ToF32(value)
  %3160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3161 = extractvalue %dx.types.CBufRet.f32 %3160, 3
  %3162 = fmul fast float %3161, 1.000000e+03
  %3163 = fmul fast float %427, %3162
  %3164 = call float @dx.op.unary.f32(i32 22, float %3163)  ; Frc(value)
  %3165 = fadd fast float %3164, %417
  %3166 = fmul fast float %428, %3162
  %3167 = call float @dx.op.unary.f32(i32 22, float %3166)  ; Frc(value)
  %3168 = fadd fast float %3167, %419
  %3169 = fmul fast float %3134, %3162
  %3170 = call float @dx.op.unary.f32(i32 22, float %3169)  ; Frc(value)
  %3171 = fmul fast float %3170, 0x401921FB60000000
  %3172 = fadd fast float %3171, %3153
  %3173 = call float @dx.op.unary.f32(i32 13, float %3172)  ; Sin(value)
  %3174 = call float @dx.op.unary.f32(i32 12, float %3172)  ; Cos(value)
  %3175 = fsub fast float -0.000000e+00, %3173
  %3176 = fadd fast float %3127, -5.000000e-01
  %3177 = fadd fast float %3128, -5.000000e-01
  %3178 = fmul fast float %3145, %3176
  %3179 = fmul fast float %3147, %3177
  %3180 = fadd fast float %3178, 5.000000e-01
  %3181 = fadd fast float %3179, 5.000000e-01
  %3182 = fmul fast float %3156, %3180
  %3183 = fmul fast float %3159, %3181
  %3184 = fmul fast float %3174, %3182
  %3185 = call float @dx.op.tertiary.f32(i32 46, float %3175, float %3183, float %3184)  ; FMad(a,b,c)
  %3186 = fmul fast float %3173, %3182
  %3187 = call float @dx.op.tertiary.f32(i32 46, float %3174, float %3183, float %3186)  ; FMad(a,b,c)
  %3188 = fadd fast float %3165, %3185
  %3189 = fadd fast float %3168, %3187
  %3190 = icmp ugt i32 %3139, 1
  %3191 = icmp ugt i32 %3137, 33554431
  %3192 = or i1 %3191, %3190
  br i1 %3192, label %3193, label %3218

; <label>:3193                                    ; preds = %3120
  %3194 = add i32 %54, 276
  %3195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3194, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.i32 %3195, 0
  %3197 = lshr i32 %3196, 16
  %3198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3197)  ; LegacyF16ToF32(value)
  %3199 = fmul fast float %3161, %3198
  %3200 = call float @dx.op.unary.f32(i32 22, float %3199)  ; Frc(value)
  %3201 = mul nuw nsw i32 %3139, %3140
  %3202 = uitofp i32 %3201 to float
  %3203 = fmul fast float %3200, %3202
  %3204 = call float @dx.op.unary.f32(i32 27, float %3203)  ; Round_ni(value)
  %3205 = fptoui float %3204 to i32
  %3206 = urem i32 %3205, %3139
  %3207 = udiv i32 %3205, %3140
  %3208 = call float @dx.op.unary.f32(i32 22, float %3188)  ; Frc(value)
  %3209 = call float @dx.op.unary.f32(i32 22, float %3189)  ; Frc(value)
  %3210 = uitofp i32 %3206 to float
  %3211 = uitofp i32 %3207 to float
  %3212 = fadd fast float %3208, %3210
  %3213 = fadd fast float %3209, %3211
  %3214 = uitofp i32 %3139 to float
  %3215 = uitofp i32 %3140 to float
  %3216 = fdiv fast float %3212, %3214
  %3217 = fdiv fast float %3213, %3215
  br label %3218

; <label>:3218                                    ; preds = %3193, %3120
  %3219 = phi float [ %3216, %3193 ], [ %3188, %3120 ]
  %3220 = phi float [ %3217, %3193 ], [ %3189, %3120 ]
  %3221 = and i32 %3114, 16777216
  %3222 = icmp eq i32 %3221, 0
  br i1 %3222, label %3332, label %3223

; <label>:3223                                    ; preds = %3218
  %3224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3225 = extractvalue %dx.types.CBufRet.f32 %3224, 0
  %3226 = extractvalue %dx.types.CBufRet.f32 %3224, 1
  %3227 = extractvalue %dx.types.CBufRet.f32 %3224, 2
  %3228 = fadd fast float %3225, %155
  %3229 = fadd fast float %3226, %156
  %3230 = fadd fast float %3227, %157
  %3231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3232 = extractvalue %dx.types.CBufRet.f32 %3231, 0
  %3233 = call float @dx.op.unary.f32(i32 7, float %3232)  ; Saturate(value)
  %3234 = icmp eq i32 %55, 65535
  br i1 %3234, label %3329, label %3235

; <label>:3235                                    ; preds = %3223
  %3236 = lshr i32 %55, 1
  %3237 = shl i32 %3236, 2
  %3238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3237, i32 undef)  ; BufferLoad(srv,index,wot)
  %3239 = extractvalue %dx.types.ResRet.i32 %3238, 0
  %3240 = and i32 %55, 1
  %3241 = icmp ne i32 %3240, 0
  %3242 = lshr i32 %3239, 16
  %3243 = and i32 %3239, 65535
  %3244 = select i1 %3241, i32 %3242, i32 %3243
  %3245 = icmp eq i32 %3244, 65535
  br i1 %3245, label %3325, label %3246

; <label>:3246                                    ; preds = %3235
  %3247 = mul nuw nsw i32 %3244, 40
  %3248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3247, i32 undef)  ; BufferLoad(srv,index,wot)
  %3249 = extractvalue %dx.types.ResRet.f32 %3248, 0
  %3250 = extractvalue %dx.types.ResRet.f32 %3248, 1
  %3251 = extractvalue %dx.types.ResRet.f32 %3248, 2
  %3252 = add nuw nsw i32 %3247, 12
  %3253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3252, i32 undef)  ; BufferLoad(srv,index,wot)
  %3254 = extractvalue %dx.types.ResRet.f32 %3253, 0
  %3255 = extractvalue %dx.types.ResRet.f32 %3253, 1
  %3256 = extractvalue %dx.types.ResRet.f32 %3253, 2
  %3257 = add nuw nsw i32 %3247, 24
  %3258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3257, i32 undef)  ; BufferLoad(srv,index,wot)
  %3259 = extractvalue %dx.types.ResRet.f32 %3258, 0
  %3260 = extractvalue %dx.types.ResRet.f32 %3258, 1
  %3261 = extractvalue %dx.types.ResRet.f32 %3258, 2
  %3262 = add nuw nsw i32 %3247, 36
  %3263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.f32 %3263, 0
  %3265 = fsub fast float %3228, %3249
  %3266 = fsub fast float %3229, %3250
  %3267 = fsub fast float %3230, %3251
  %3268 = fmul fast float %3264, %3265
  %3269 = fmul fast float %3264, %3266
  %3270 = fmul fast float %3264, %3267
  %3271 = call float @dx.op.unary.f32(i32 27, float %3268)  ; Round_ni(value)
  %3272 = call float @dx.op.unary.f32(i32 27, float %3269)  ; Round_ni(value)
  %3273 = call float @dx.op.unary.f32(i32 27, float %3270)  ; Round_ni(value)
  %3274 = fadd fast float %3271, 5.000000e-01
  %3275 = fadd fast float %3272, 5.000000e-01
  %3276 = fadd fast float %3273, 5.000000e-01
  %3277 = fmul fast float %3274, %3254
  %3278 = fmul fast float %3275, %3255
  %3279 = fmul fast float %3276, %3256
  %3280 = shl i32 %55, 2
  %3281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3280, i32 undef)  ; BufferLoad(srv,index,wot)
  %3282 = extractvalue %dx.types.ResRet.i32 %3281, 0
  %3283 = add i32 %3282, 0
  %3284 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3283, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3285 = call float @dx.op.unary.f32(i32 22, float %3277)  ; Frc(value)
  %3286 = call float @dx.op.unary.f32(i32 22, float %3278)  ; Frc(value)
  %3287 = call float @dx.op.unary.f32(i32 22, float %3279)  ; Frc(value)
  %3288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3284, %dx.types.Handle %49, float %3285, float %3286, float %3287, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3289 = extractvalue %dx.types.ResRet.f32 %3288, 0
  %3290 = extractvalue %dx.types.ResRet.f32 %3288, 1
  %3291 = extractvalue %dx.types.ResRet.f32 %3288, 2
  %3292 = fmul fast float %3289, 1.023000e+03
  %3293 = fmul fast float %3290, 1.023000e+03
  %3294 = fmul fast float %3291, 1.023000e+03
  %3295 = fadd fast float %3292, 5.000000e-01
  %3296 = fadd fast float %3293, 5.000000e-01
  %3297 = fadd fast float %3294, 5.000000e-01
  %3298 = call float @dx.op.unary.f32(i32 27, float %3295)  ; Round_ni(value)
  %3299 = call float @dx.op.unary.f32(i32 27, float %3296)  ; Round_ni(value)
  %3300 = call float @dx.op.unary.f32(i32 27, float %3297)  ; Round_ni(value)
  %3301 = fsub fast float %3268, %3271
  %3302 = fsub fast float %3269, %3272
  %3303 = fsub fast float %3270, %3273
  %3304 = fmul fast float %3301, 7.500000e-01
  %3305 = fmul fast float %3302, 7.500000e-01
  %3306 = fmul fast float %3303, 7.500000e-01
  %3307 = fadd fast float %3271, 1.250000e-01
  %3308 = fadd fast float %3307, %3304
  %3309 = fadd fast float %3308, %3298
  %3310 = fadd fast float %3272, 1.250000e-01
  %3311 = fadd fast float %3310, %3305
  %3312 = fadd fast float %3311, %3299
  %3313 = fadd fast float %3273, 1.250000e-01
  %3314 = fadd fast float %3313, %3306
  %3315 = fadd fast float %3314, %3300
  %3316 = fmul fast float %3309, %3259
  %3317 = fmul fast float %3312, %3260
  %3318 = fmul fast float %3315, %3261
  %3319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3280, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.i32 %3319, 0
  %3321 = add i32 %3320, 0
  %3322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3321, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3322, %dx.types.Handle %47, float %3316, float %3317, float %3318, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3324 = extractvalue %dx.types.ResRet.f32 %3323, 0
  br label %3325

; <label>:3325                                    ; preds = %3246, %3235
  %3326 = phi float [ %3324, %3246 ], [ -1.000000e+00, %3235 ]
  %3327 = fadd fast float %3326, %3233
  %3328 = call float @dx.op.unary.f32(i32 7, float %3327)  ; Saturate(value)
  br label %3329

; <label>:3329                                    ; preds = %3325, %3223
  %3330 = phi float [ %3328, %3325 ], [ %3233, %3223 ]
  %3331 = fmul fast float %3330, %486
  br label %3332

; <label>:3332                                    ; preds = %3329, %3218
  %3333 = phi float [ %3331, %3329 ], [ %486, %3218 ]
  %3334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3335 = extractvalue %dx.types.ResRet.i32 %3334, 0
  %3336 = and i32 %3335, 256
  %3337 = icmp eq i32 %3336, 0
  br i1 %3337, label %3384, label %3338

; <label>:3338                                    ; preds = %3332
  %3339 = add i32 %54, 484
  %3340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3339, i32 undef)  ; BufferLoad(srv,index,wot)
  %3341 = extractvalue %dx.types.ResRet.i32 %3340, 0
  %3342 = add i32 %3341, 0
  %3343 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3342, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3344 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3343, %dx.types.Handle %97, float %3219, float %3220, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3345 = extractvalue %dx.types.ResRet.f32 %3344, 0
  %3346 = add i32 %54, 148
  %3347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3346, i32 undef)  ; BufferLoad(srv,index,wot)
  %3348 = extractvalue %dx.types.ResRet.i32 %3347, 0
  %3349 = shl i32 %3348, 4
  %3350 = and i32 %3349, 32752
  %3351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3350)  ; LegacyF16ToF32(value)
  %3352 = lshr i32 %3348, 7
  %3353 = and i32 %3352, 32752
  %3354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3353)  ; LegacyF16ToF32(value)
  %3355 = fsub fast float 1.000000e+00, %3333
  %3356 = call float @dx.op.binary.f32(i32 35, float %3355, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3357 = bitcast float %3333 to i32
  %3358 = sitofp i32 %3357 to float
  %3359 = fadd fast float %3358, 0xC1CFBF8940000000
  %3360 = fmul fast float %3354, %3359
  %3361 = fadd fast float %3360, 0x41CFBF8940000000
  %3362 = fptosi float %3361 to i32
  %3363 = bitcast i32 %3362 to float
  %3364 = bitcast float %3356 to i32
  %3365 = sitofp i32 %3364 to float
  %3366 = fadd fast float %3365, 0xC1CFBF8940000000
  %3367 = fmul fast float %3366, %3354
  %3368 = fadd fast float %3367, 0x41CFBF8940000000
  %3369 = fptosi float %3368 to i32
  %3370 = bitcast i32 %3369 to float
  %3371 = fmul fast float %3363, %3351
  %3372 = fmul fast float %3370, %3351
  %3373 = fsub fast float %3356, %3371
  %3374 = fadd fast float %3372, %3356
  %3375 = call float @dx.op.unary.f32(i32 7, float %3373)  ; Saturate(value)
  %3376 = call float @dx.op.unary.f32(i32 7, float %3374)  ; Saturate(value)
  %3377 = fsub fast float %3345, %3375
  %3378 = fsub fast float %3376, %3375
  %3379 = bitcast float %3378 to i32
  %3380 = sub nsw i32 2129859010, %3379
  %3381 = bitcast i32 %3380 to float
  %3382 = fmul fast float %3381, %3377
  %3383 = call float @dx.op.unary.f32(i32 7, float %3382)  ; Saturate(value)
  br label %3384

; <label>:3384                                    ; preds = %3338, %3332
  %3385 = phi float [ %3383, %3338 ], [ %3333, %3332 ]
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = and i32 %3387, 128
  %3389 = icmp eq i32 %3388, 0
  br i1 %3389, label %3406, label %3390

; <label>:3390                                    ; preds = %3384
  %3391 = add i32 %54, 468
  %3392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.i32 %3392, 0
  %3394 = add i32 %3393, 0
  %3395 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3394, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3396 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3395, %dx.types.Handle %97, float %3219, float %3220, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3397 = extractvalue %dx.types.ResRet.f32 %3396, 0
  %3398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.i32 %3398, 0
  %3400 = and i32 %3399, 524288
  %3401 = icmp ne i32 %3400, 0
  %3402 = fcmp fast ogt float %3397, 0x3FE0101020000000
  %3403 = select i1 %3402, float 1.000000e+00, float 0.000000e+00
  %3404 = select i1 %3401, float %3403, float %3397
  %3405 = fmul fast float %3404, %3385
  br label %3406

; <label>:3406                                    ; preds = %3390, %3384
  %3407 = phi float [ %3405, %3390 ], [ %3385, %3384 ]
  %3408 = fcmp fast ult float %3407, 0x3F70101020000000
  br i1 %3408, label %4038, label %3409

; <label>:3409                                    ; preds = %3406
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = and i32 %3411, 16
  %3413 = icmp eq i32 %3412, 0
  br i1 %3413, label %3612, label %3414

; <label>:3414                                    ; preds = %3409
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3135, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = add i32 %54, 420
  %3418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3417, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.i32 %3418, 0
  %3420 = add i32 %3419, 0
  %3421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3422 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3421, %dx.types.Handle %96, float %3219, float %3220, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3423 = extractvalue %dx.types.ResRet.f32 %3422, 0
  %3424 = extractvalue %dx.types.ResRet.f32 %3422, 1
  %3425 = extractvalue %dx.types.ResRet.f32 %3422, 2
  %3426 = extractvalue %dx.types.ResRet.f32 %3422, 3
  %3427 = and i32 %3416, 255
  %3428 = uitofp i32 %3427 to float
  %3429 = lshr i32 %3416, 8
  %3430 = and i32 %3429, 255
  %3431 = uitofp i32 %3430 to float
  %3432 = fmul fast float %3426, %3428
  %3433 = fadd fast float %3432, %3431
  %3434 = fmul fast float %3433, 0x3F70101000000000
  %3435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3436 = extractvalue %dx.types.ResRet.i32 %3435, 0
  %3437 = and i32 %3436, 512
  %3438 = icmp eq i32 %3437, 0
  br i1 %3438, label %3447, label %3439

; <label>:3439                                    ; preds = %3414
  %3440 = add i32 %54, 500
  %3441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3440, i32 undef)  ; BufferLoad(srv,index,wot)
  %3442 = extractvalue %dx.types.ResRet.i32 %3441, 0
  %3443 = add i32 %3442, 0
  %3444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3443, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3445 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3444, %dx.types.Handle %97, float %3219, float %3220, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3446 = extractvalue %dx.types.ResRet.f32 %3445, 0
  br label %3447

; <label>:3447                                    ; preds = %3439, %3414
  %3448 = phi float [ %3446, %3439 ], [ 1.000000e+00, %3414 ]
  %3449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.i32 %3449, 0
  %3451 = and i32 %3450, 33554432
  %3452 = icmp eq i32 %3451, 0
  br i1 %3452, label %3559, label %3453

; <label>:3453                                    ; preds = %3447
  %3454 = add i32 %54, 272
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = and i32 %3456, 65535
  %3458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3457)  ; LegacyF16ToF32(value)
  %3459 = lshr i32 %3456, 16
  %3460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3459)  ; LegacyF16ToF32(value)
  %3461 = add i32 %54, 276
  %3462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3461, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.i32 %3462, 0
  %3464 = and i32 %3463, 65535
  %3465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3464)  ; LegacyF16ToF32(value)
  %3466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.i32 %3466, 0
  %3468 = lshr i32 %3467, 24
  %3469 = uitofp i32 %3468 to float
  %3470 = fmul fast float %3469, 0x3F70101020000000
  %3471 = and i32 %3467, 255
  %3472 = uitofp i32 %3471 to float
  %3473 = fmul fast float %3472, 0x3F70101020000000
  %3474 = lshr i32 %3467, 8
  %3475 = and i32 %3474, 255
  %3476 = uitofp i32 %3475 to float
  %3477 = fmul fast float %3476, 0x3F70101020000000
  %3478 = lshr i32 %3467, 16
  %3479 = and i32 %3478, 255
  %3480 = uitofp i32 %3479 to float
  %3481 = fmul fast float %3480, 0x3F70101020000000
  %3482 = add i32 %54, 268
  %3483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3482, i32 undef)  ; BufferLoad(srv,index,wot)
  %3484 = extractvalue %dx.types.ResRet.i32 %3483, 0
  %3485 = lshr i32 %3484, 24
  %3486 = uitofp i32 %3485 to float
  %3487 = fmul fast float %3486, 0x3F70101020000000
  %3488 = and i32 %3484, 255
  %3489 = uitofp i32 %3488 to float
  %3490 = fmul fast float %3489, 0x3F70101020000000
  %3491 = lshr i32 %3484, 8
  %3492 = and i32 %3491, 255
  %3493 = uitofp i32 %3492 to float
  %3494 = fmul fast float %3493, 0x3F70101020000000
  %3495 = lshr i32 %3484, 16
  %3496 = and i32 %3495, 255
  %3497 = uitofp i32 %3496 to float
  %3498 = fmul fast float %3497, 0x3F70101020000000
  %3499 = bitcast float %3423 to i32
  %3500 = ashr i32 %3499, 1
  %3501 = sub nsw i32 1597463174, %3500
  %3502 = bitcast i32 %3501 to float
  %3503 = fmul fast float %3423, 5.000000e-01
  %3504 = fmul fast float %3502, %3502
  %3505 = fmul fast float %3504, %3503
  %3506 = fsub fast float 1.500000e+00, %3505
  %3507 = fmul fast float %3502, %3423
  %3508 = fmul fast float %3507, %3506
  %3509 = bitcast float %3424 to i32
  %3510 = ashr i32 %3509, 1
  %3511 = sub nsw i32 1597463174, %3510
  %3512 = bitcast i32 %3511 to float
  %3513 = fmul fast float %3424, 5.000000e-01
  %3514 = fmul fast float %3512, %3512
  %3515 = fmul fast float %3514, %3513
  %3516 = fsub fast float 1.500000e+00, %3515
  %3517 = fmul fast float %3512, %3424
  %3518 = fmul fast float %3517, %3516
  %3519 = bitcast float %3425 to i32
  %3520 = ashr i32 %3519, 1
  %3521 = sub nsw i32 1597463174, %3520
  %3522 = bitcast i32 %3521 to float
  %3523 = fmul fast float %3425, 5.000000e-01
  %3524 = fmul fast float %3522, %3522
  %3525 = fmul fast float %3524, %3523
  %3526 = fsub fast float 1.500000e+00, %3525
  %3527 = fmul fast float %3522, %3425
  %3528 = fmul fast float %3527, %3526
  %3529 = fsub fast float %3508, %3490
  %3530 = fsub fast float %3518, %3494
  %3531 = fsub fast float %3528, %3498
  %3532 = fmul fast float %3529, %3458
  %3533 = fmul fast float %3530, %3460
  %3534 = fmul fast float %3531, %3465
  %3535 = fadd fast float %3532, %3473
  %3536 = fadd fast float %3533, %3477
  %3537 = fadd fast float %3534, %3481
  %3538 = call float @dx.op.unary.f32(i32 7, float %3535)  ; Saturate(value)
  %3539 = call float @dx.op.unary.f32(i32 7, float %3536)  ; Saturate(value)
  %3540 = call float @dx.op.unary.f32(i32 7, float %3537)  ; Saturate(value)
  %3541 = fmul fast float %3538, %3538
  %3542 = fmul fast float %3539, %3539
  %3543 = fmul fast float %3540, %3540
  %3544 = fsub fast float %3541, %3423
  %3545 = fsub fast float %3542, %3424
  %3546 = fsub fast float %3543, %3425
  %3547 = fmul fast float %3544, %3448
  %3548 = fmul fast float %3545, %3448
  %3549 = fmul fast float %3546, %3448
  %3550 = fadd fast float %3547, %3423
  %3551 = fadd fast float %3548, %3424
  %3552 = fadd fast float %3549, %3425
  %3553 = fadd fast float %3470, %3434
  %3554 = fsub fast float %3553, %3487
  %3555 = call float @dx.op.unary.f32(i32 7, float %3554)  ; Saturate(value)
  %3556 = fsub fast float %3555, %3434
  %3557 = fmul fast float %3556, %3448
  %3558 = fadd fast float %3557, %3434
  br label %3612

; <label>:3559                                    ; preds = %3447
  %3560 = and i32 %3450, 134217728
  %3561 = icmp eq i32 %3560, 0
  br i1 %3561, label %3596, label %3562

; <label>:3562                                    ; preds = %3559
  %3563 = call float @dx.op.unary.f32(i32 24, float %404)  ; Sqrt(value)
  %3564 = call float @dx.op.unary.f32(i32 24, float %408)  ; Sqrt(value)
  %3565 = call float @dx.op.unary.f32(i32 24, float %412)  ; Sqrt(value)
  %3566 = fadd fast float %3563, -5.000000e-01
  %3567 = fadd fast float %3564, -5.000000e-01
  %3568 = fadd fast float %3565, -5.000000e-01
  %3569 = fmul fast float %3566, %3448
  %3570 = fmul fast float %3567, %3448
  %3571 = fmul fast float %3568, %3448
  %3572 = fadd fast float %3569, 5.000000e-01
  %3573 = fadd fast float %3570, 5.000000e-01
  %3574 = fadd fast float %3571, 5.000000e-01
  %3575 = call float @dx.op.unary.f32(i32 24, float %3423)  ; Sqrt(value)
  %3576 = call float @dx.op.unary.f32(i32 24, float %3424)  ; Sqrt(value)
  %3577 = call float @dx.op.unary.f32(i32 24, float %3425)  ; Sqrt(value)
  %3578 = fmul fast float %3572, 2.000000e+00
  %3579 = fsub fast float 1.000000e+00, %3578
  %3580 = fmul fast float %3579, %3575
  %3581 = fadd fast float %3580, %3578
  %3582 = fmul fast float %3581, %3575
  %3583 = fmul fast float %3573, 2.000000e+00
  %3584 = fsub fast float 1.000000e+00, %3583
  %3585 = fmul fast float %3584, %3576
  %3586 = fadd fast float %3585, %3583
  %3587 = fmul fast float %3586, %3576
  %3588 = fmul fast float %3574, 2.000000e+00
  %3589 = fsub fast float 1.000000e+00, %3588
  %3590 = fmul fast float %3589, %3577
  %3591 = fadd fast float %3590, %3588
  %3592 = fmul fast float %3591, %3577
  %3593 = fmul fast float %3582, %3582
  %3594 = fmul fast float %3587, %3587
  %3595 = fmul fast float %3592, %3592
  br label %3612

; <label>:3596                                    ; preds = %3559
  %3597 = fmul fast float %404, %404
  %3598 = fmul fast float %408, %408
  %3599 = fmul fast float %412, %412
  %3600 = fadd fast float %3597, -1.000000e+00
  %3601 = fadd fast float %3598, -1.000000e+00
  %3602 = fadd fast float %3599, -1.000000e+00
  %3603 = fmul fast float %3448, %3600
  %3604 = fmul fast float %3448, %3601
  %3605 = fmul fast float %3448, %3602
  %3606 = fadd fast float %3603, 1.000000e+00
  %3607 = fadd fast float %3604, 1.000000e+00
  %3608 = fadd fast float %3605, 1.000000e+00
  %3609 = fmul fast float %3606, %3423
  %3610 = fmul fast float %3607, %3424
  %3611 = fmul fast float %3608, %3425
  br label %3612

; <label>:3612                                    ; preds = %3596, %3562, %3453, %3409
  %3613 = phi float [ %3558, %3453 ], [ %3434, %3562 ], [ %3434, %3596 ], [ 0x3FA23C0BE0000000, %3409 ]
  %3614 = phi float [ %3550, %3453 ], [ %3593, %3562 ], [ %3609, %3596 ], [ 1.000000e+00, %3409 ]
  %3615 = phi float [ %3551, %3453 ], [ %3594, %3562 ], [ %3610, %3596 ], [ 1.000000e+00, %3409 ]
  %3616 = phi float [ %3552, %3453 ], [ %3595, %3562 ], [ %3611, %3596 ], [ 1.000000e+00, %3409 ]
  %3617 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3618 = extractvalue %dx.types.CBufRet.i32 %3617, 1
  %3619 = and i32 %3618, 1
  %3620 = icmp ne i32 %3619, 0
  %3621 = add i32 %54, 356
  %3622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3621, i32 undef)  ; BufferLoad(srv,index,wot)
  %3623 = extractvalue %dx.types.ResRet.i32 %3622, 0
  %3624 = and i32 %3623, 32
  %3625 = icmp ne i32 %3624, 0
  %3626 = and i1 %3620, %3625
  %3627 = select i1 %3626, float 1.000000e+00, float %3614
  %3628 = select i1 %3626, float 0x3FD3333340000000, float %3615
  %3629 = select i1 %3626, float 0x3FD3333340000000, float %3616
  %3630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.i32 %3630, 0
  %3632 = and i32 %3631, 32
  %3633 = icmp eq i32 %3632, 0
  br i1 %3633, label %3706, label %3634

; <label>:3634                                    ; preds = %3612
  %3635 = add i32 %54, 140
  %3636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3635, i32 undef)  ; BufferLoad(srv,index,wot)
  %3637 = extractvalue %dx.types.ResRet.i32 %3636, 0
  %3638 = add i32 %54, 436
  %3639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.i32 %3639, 0
  %3641 = add i32 %3640, 0
  %3642 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3641, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3643 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3642, %dx.types.Handle %96, float %3219, float %3220, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3644 = extractvalue %dx.types.ResRet.f32 %3643, 0
  %3645 = extractvalue %dx.types.ResRet.f32 %3643, 1
  %3646 = extractvalue %dx.types.ResRet.f32 %3643, 2
  %3647 = extractvalue %dx.types.ResRet.f32 %3643, 3
  %3648 = and i32 %3637, 255
  %3649 = uitofp i32 %3648 to float
  %3650 = lshr i32 %3637, 8
  %3651 = and i32 %3650, 255
  %3652 = uitofp i32 %3651 to float
  %3653 = lshr i32 %3637, 16
  %3654 = and i32 %3653, 255
  %3655 = uitofp i32 %3654 to float
  %3656 = fmul fast float %3655, 0x3F70101000000000
  %3657 = fmul fast float %3644, %3649
  %3658 = fadd fast float %3657, %3652
  %3659 = fmul fast float %3658, 0x3F70101000000000
  %3660 = fadd fast float %3645, -5.000000e-01
  %3661 = fadd fast float %3647, -5.000000e-01
  %3662 = fmul fast float %3660, %3656
  %3663 = fmul fast float %3661, %3656
  %3664 = fadd fast float %3662, 5.000000e-01
  %3665 = fadd fast float %3663, 5.000000e-01
  %3666 = fmul fast float %3664, 2.000000e+00
  %3667 = fadd fast float %3666, -1.000000e+00
  %3668 = fmul fast float %3665, 2.000000e+00
  %3669 = fadd fast float %3668, -1.000000e+00
  %3670 = fadd fast float %3667, %3669
  %3671 = fmul fast float %3670, 5.000000e-01
  %3672 = fsub fast float %3667, %3669
  %3673 = fmul fast float %3672, 5.000000e-01
  %3674 = call float @dx.op.unary.f32(i32 6, float %3671)  ; FAbs(value)
  %3675 = fsub fast float 1.000000e+00, %3674
  %3676 = call float @dx.op.unary.f32(i32 6, float %3673)  ; FAbs(value)
  %3677 = fsub fast float %3675, %3676
  %3678 = call float @dx.op.dot3.f32(i32 55, float %3671, float %3673, float %3677, float %3671, float %3673, float %3677)  ; Dot3(ax,ay,az,bx,by,bz)
  %3679 = call float @dx.op.unary.f32(i32 25, float %3678)  ; Rsqrt(value)
  %3680 = fmul fast float %3671, %3679
  %3681 = fmul fast float %3673, %3679
  %3682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3683 = extractvalue %dx.types.ResRet.i32 %3682, 0
  %3684 = and i32 %3683, 67108864
  %3685 = icmp eq i32 %3684, 0
  br i1 %3685, label %3702, label %3686

; <label>:3686                                    ; preds = %3634
  %3687 = add i32 %54, 328
  %3688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3687, i32 undef)  ; BufferLoad(srv,index,wot)
  %3689 = extractvalue %dx.types.ResRet.i32 %3688, 0
  %3690 = and i32 %3689, 65535
  %3691 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3690)  ; LegacyF16ToF32(value)
  %3692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3129, i32 undef)  ; BufferLoad(srv,index,wot)
  %3693 = extractvalue %dx.types.ResRet.i32 %3692, 0
  %3694 = and i32 %3693, 65535
  %3695 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3694)  ; LegacyF16ToF32(value)
  %3696 = lshr i32 %3689, 16
  %3697 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3696)  ; LegacyF16ToF32(value)
  %3698 = fsub fast float %3659, %3697
  %3699 = fmul fast float %3698, %3691
  %3700 = fadd fast float %3699, %3695
  %3701 = call float @dx.op.unary.f32(i32 7, float %3700)  ; Saturate(value)
  br label %3702

; <label>:3702                                    ; preds = %3686, %3634
  %3703 = phi float [ %3701, %3686 ], [ %3659, %3634 ]
  %3704 = call float @dx.op.dot2.f32(i32 54, float %3680, float %3681, float %3123, float %3124)  ; Dot2(ax,ay,bx,by)
  %3705 = call float @dx.op.dot2.f32(i32 54, float %3680, float %3681, float %3125, float %3126)  ; Dot2(ax,ay,bx,by)
  br label %3706

; <label>:3706                                    ; preds = %3702, %3612
  %3707 = phi float [ %3703, %3702 ], [ 0x3FD6666660000000, %3612 ]
  %3708 = phi float [ %3704, %3702 ], [ 0.000000e+00, %3612 ]
  %3709 = phi float [ %3705, %3702 ], [ 0.000000e+00, %3612 ]
  %3710 = phi float [ %3646, %3702 ], [ 1.000000e+00, %3612 ]
  %3711 = add i32 %54, 208
  %3712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3711, i32 undef)  ; BufferLoad(srv,index,wot)
  %3713 = extractvalue %dx.types.ResRet.i32 %3712, 0
  %3714 = lshr i32 %3713, 22
  %3715 = shl nuw nsw i32 %3714, 5
  %3716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3715)  ; LegacyF16ToF32(value)
  %3717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3718 = extractvalue %dx.types.ResRet.i32 %3717, 0
  %3719 = and i32 %3718, 64
  %3720 = icmp eq i32 %3719, 0
  br i1 %3720, label %3754, label %3721

; <label>:3721                                    ; preds = %3706
  %3722 = add i32 %54, 452
  %3723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3722, i32 undef)  ; BufferLoad(srv,index,wot)
  %3724 = extractvalue %dx.types.ResRet.i32 %3723, 0
  %3725 = add i32 %3724, 0
  %3726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3725, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.i32 %3727, 0
  %3729 = and i32 %3728, 131072
  %3730 = icmp eq i32 %3729, 0
  %3731 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3726, %dx.types.Handle %96, float %3219, float %3220, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3732 = extractvalue %dx.types.ResRet.f32 %3731, 0
  %3733 = extractvalue %dx.types.ResRet.f32 %3731, 1
  %3734 = extractvalue %dx.types.ResRet.f32 %3731, 2
  %3735 = fmul fast float %3732, %392
  %3736 = fmul fast float %3733, %395
  %3737 = fmul fast float %3734, %398
  br i1 %3730, label %3744, label %3738

; <label>:3738                                    ; preds = %3721
  %3739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3740 = extractvalue %dx.types.CBufRet.f32 %3739, 0
  %3741 = fmul fast float %3740, %3735
  %3742 = fmul fast float %3740, %3736
  %3743 = fmul fast float %3740, %3737
  br label %3744

; <label>:3744                                    ; preds = %3738, %3721
  %3745 = phi float [ %3741, %3738 ], [ %3735, %3721 ]
  %3746 = phi float [ %3742, %3738 ], [ %3736, %3721 ]
  %3747 = phi float [ %3743, %3738 ], [ %3737, %3721 ]
  %3748 = fmul fast float %3745, %3716
  %3749 = select i1 %249, float %3748, float %3745
  %3750 = call float @dx.op.dot3.f32(i32 55, float %3749, float %3746, float %3747, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3751 = select i1 %249, float 0.000000e+00, float %3745
  %3752 = select i1 %249, float %3750, float %3746
  %3753 = select i1 %249, float 0.000000e+00, float %3747
  br label %3754

; <label>:3754                                    ; preds = %3744, %3706
  %3755 = phi float [ %3751, %3744 ], [ 0.000000e+00, %3706 ]
  %3756 = phi float [ %3752, %3744 ], [ 0.000000e+00, %3706 ]
  %3757 = phi float [ %3753, %3744 ], [ 0.000000e+00, %3706 ]
  %3758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3759 = extractvalue %dx.types.ResRet.i32 %3758, 0
  %3760 = and i32 %3759, 10240
  %3761 = icmp eq i32 %3760, 0
  br i1 %3761, label %3806, label %3762

; <label>:3762                                    ; preds = %3754
  %3763 = add i32 %54, 516
  %3764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3763, i32 undef)  ; BufferLoad(srv,index,wot)
  %3765 = extractvalue %dx.types.ResRet.i32 %3764, 0
  %3766 = add i32 %3765, 0
  %3767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3766, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3768 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3767, %dx.types.Handle %97, float %3219, float %3220, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3769 = extractvalue %dx.types.ResRet.f32 %3768, 1
  %3770 = extractvalue %dx.types.ResRet.f32 %3768, 3
  %3771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3772 = extractvalue %dx.types.ResRet.i32 %3771, 0
  %3773 = and i32 %3772, 1048576
  %3774 = icmp ne i32 %3773, 0
  %3775 = and i32 %3772, 8192
  %3776 = icmp eq i32 %3775, 0
  br i1 %3776, label %3792, label %3777

; <label>:3777                                    ; preds = %3762
  %3778 = extractvalue %dx.types.ResRet.f32 %3768, 2
  %3779 = select i1 %3774, float %3778, float %3769
  %3780 = extractvalue %dx.types.ResRet.f32 %3768, 0
  %3781 = select i1 %3774, float %3780, float %3769
  %3782 = add i32 %54, 144
  %3783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3782, i32 undef)  ; BufferLoad(srv,index,wot)
  %3784 = extractvalue %dx.types.ResRet.i32 %3783, 0
  %3785 = lshr i32 %3784, 16
  %3786 = and i32 %3785, 255
  %3787 = uitofp i32 %3786 to float
  %3788 = fmul fast float %3787, 0x3F80101020000000
  %3789 = fmul fast float %3788, %3781
  %3790 = fmul fast float %3788, %3769
  %3791 = fmul fast float %3788, %3779
  br label %3792

; <label>:3792                                    ; preds = %3777, %3762
  %3793 = phi float [ %3789, %3777 ], [ 0.000000e+00, %3762 ]
  %3794 = phi float [ %3790, %3777 ], [ 0.000000e+00, %3762 ]
  %3795 = phi float [ %3791, %3777 ], [ 0.000000e+00, %3762 ]
  %3796 = and i32 %3772, 2048
  %3797 = icmp eq i32 %3796, 0
  br i1 %3797, label %3806, label %3798

; <label>:3798                                    ; preds = %3792
  %3799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3711, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.i32 %3799, 0
  %3801 = shl i32 %3800, 4
  %3802 = and i32 %3801, 32752
  %3803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3802)  ; LegacyF16ToF32(value)
  %3804 = fmul fast float %3803, %3770
  %3805 = call float @dx.op.binary.f32(i32 35, float %3804, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3806

; <label>:3806                                    ; preds = %3798, %3792, %3754
  %3807 = phi float [ %3793, %3798 ], [ %3793, %3792 ], [ 0.000000e+00, %3754 ]
  %3808 = phi float [ %3794, %3798 ], [ %3794, %3792 ], [ 0.000000e+00, %3754 ]
  %3809 = phi float [ %3795, %3798 ], [ %3795, %3792 ], [ 0.000000e+00, %3754 ]
  %3810 = phi float [ %3805, %3798 ], [ 0x3F70101020000000, %3792 ], [ 0x3F70101020000000, %3754 ]
  %3811 = add i32 %54, 144
  %3812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.i32 %3812, 0
  %3814 = and i32 %3813, 255
  %3815 = uitofp i32 %3814 to float
  %3816 = lshr i32 %3813, 8
  %3817 = and i32 %3816, 255
  %3818 = uitofp i32 %3817 to float
  %3819 = call float @dx.op.dot3.f32(i32 55, float %3627, float %3628, float %3629, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3820 = fmul fast float %3818, %3819
  %3821 = fadd fast float %3820, %3815
  %3822 = fmul fast float %3821, 0x3F70101020000000
  %3823 = call float @dx.op.unary.f32(i32 7, float %3822)  ; Saturate(value)
  br i1 %3111, label %3824, label %3832

; <label>:3824                                    ; preds = %3806
  %3825 = fsub fast float 1.000000e+00, %3407
  %3826 = fmul fast float %3825, %3096
  %3827 = fmul fast float %3825, %3097
  %3828 = fmul fast float %3825, %3098
  %3829 = fmul fast float %3825, %3102
  %3830 = fmul fast float %3825, %3103
  %3831 = fmul fast float %3825, %3104
  br label %3832

; <label>:3832                                    ; preds = %3824, %3806
  %3833 = phi float [ %3826, %3824 ], [ %3096, %3806 ]
  %3834 = phi float [ %3827, %3824 ], [ %3097, %3806 ]
  %3835 = phi float [ %3828, %3824 ], [ %3098, %3806 ]
  %3836 = phi float [ %3829, %3824 ], [ %3102, %3806 ]
  %3837 = phi float [ %3830, %3824 ], [ %3103, %3806 ]
  %3838 = phi float [ %3831, %3824 ], [ %3104, %3806 ]
  %3839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3840 = extractvalue %dx.types.ResRet.i32 %3839, 0
  %3841 = and i32 %3840, 3
  %3842 = icmp eq i32 %3841, 3
  br i1 %3842, label %3921, label %3843

; <label>:3843                                    ; preds = %3832
  %3844 = and i32 %3840, 16
  %3845 = icmp ne i32 %3844, 0
  %3846 = select i1 %3845, float %3407, float 0.000000e+00
  %3847 = icmp eq i32 %3841, 0
  br i1 %3847, label %3848, label %3876

; <label>:3848                                    ; preds = %3843
  %3849 = and i32 %3840, 64
  %3850 = icmp ne i32 %3849, 0
  %3851 = select i1 %3850, float %3407, float 0.000000e+00
  %3852 = fsub fast float %3627, %3833
  %3853 = fsub fast float %3628, %3834
  %3854 = fsub fast float %3629, %3835
  %3855 = fmul fast float %3846, %3852
  %3856 = fmul fast float %3846, %3853
  %3857 = fmul fast float %3846, %3854
  %3858 = fadd fast float %3855, %3833
  %3859 = fadd fast float %3856, %3834
  %3860 = fadd fast float %3857, %3835
  %3861 = fsub fast float %3613, %3105
  %3862 = fmul fast float %3846, %3861
  %3863 = fadd fast float %3862, %3105
  %3864 = fsub fast float %3755, %3836
  %3865 = fsub fast float %3756, %3837
  %3866 = fsub fast float %3757, %3838
  %3867 = fmul fast float %3851, %3864
  %3868 = fmul fast float %3851, %3865
  %3869 = fmul fast float %3851, %3866
  %3870 = fadd fast float %3867, %3836
  %3871 = fadd fast float %3868, %3837
  %3872 = fadd fast float %3869, %3838
  %3873 = fsub fast float %3823, %3109
  %3874 = fmul fast float %3846, %3873
  %3875 = fadd fast float %3874, %3109
  br label %3921

; <label>:3876                                    ; preds = %3843
  %3877 = icmp eq i32 %3841, 1
  br i1 %3877, label %3878, label %3891

; <label>:3878                                    ; preds = %3876
  %3879 = fadd fast float %3627, -1.000000e+00
  %3880 = fadd fast float %3628, -1.000000e+00
  %3881 = fadd fast float %3629, -1.000000e+00
  %3882 = fmul fast float %3846, %3879
  %3883 = fmul fast float %3846, %3880
  %3884 = fmul fast float %3846, %3881
  %3885 = fadd fast float %3882, 1.000000e+00
  %3886 = fadd fast float %3883, 1.000000e+00
  %3887 = fadd fast float %3884, 1.000000e+00
  %3888 = fmul fast float %3885, %3833
  %3889 = fmul fast float %3886, %3834
  %3890 = fmul fast float %3887, %3835
  br label %3921

; <label>:3891                                    ; preds = %3876
  %3892 = icmp eq i32 %3841, 2
  br i1 %3892, label %3893, label %3921

; <label>:3893                                    ; preds = %3891
  %3894 = call float @dx.op.unary.f32(i32 24, float %3627)  ; Sqrt(value)
  %3895 = call float @dx.op.unary.f32(i32 24, float %3628)  ; Sqrt(value)
  %3896 = call float @dx.op.unary.f32(i32 24, float %3629)  ; Sqrt(value)
  %3897 = fadd fast float %3894, -5.000000e-01
  %3898 = fadd fast float %3895, -5.000000e-01
  %3899 = fadd fast float %3896, -5.000000e-01
  %3900 = fmul fast float %3897, %3846
  %3901 = fmul fast float %3898, %3846
  %3902 = fmul fast float %3899, %3846
  %3903 = fadd fast float %3900, 5.000000e-01
  %3904 = fadd fast float %3901, 5.000000e-01
  %3905 = fadd fast float %3902, 5.000000e-01
  %3906 = fmul fast float %3903, 2.000000e+00
  %3907 = fsub fast float 1.000000e+00, %3906
  %3908 = fmul fast float %3907, %3833
  %3909 = fadd fast float %3908, %3906
  %3910 = fmul fast float %3909, %3833
  %3911 = fmul fast float %3904, 2.000000e+00
  %3912 = fsub fast float 1.000000e+00, %3911
  %3913 = fmul fast float %3912, %3834
  %3914 = fadd fast float %3913, %3911
  %3915 = fmul fast float %3914, %3834
  %3916 = fmul fast float %3905, 2.000000e+00
  %3917 = fsub fast float 1.000000e+00, %3916
  %3918 = fmul fast float %3917, %3835
  %3919 = fadd fast float %3918, %3916
  %3920 = fmul fast float %3919, %3835
  br label %3921

; <label>:3921                                    ; preds = %3893, %3891, %3878, %3848, %3832
  %3922 = phi float [ %3833, %3832 ], [ %3910, %3893 ], [ %3833, %3891 ], [ %3888, %3878 ], [ %3858, %3848 ]
  %3923 = phi float [ %3834, %3832 ], [ %3915, %3893 ], [ %3834, %3891 ], [ %3889, %3878 ], [ %3859, %3848 ]
  %3924 = phi float [ %3835, %3832 ], [ %3920, %3893 ], [ %3835, %3891 ], [ %3890, %3878 ], [ %3860, %3848 ]
  %3925 = phi float [ %3836, %3832 ], [ %3836, %3893 ], [ %3836, %3891 ], [ %3836, %3878 ], [ %3870, %3848 ]
  %3926 = phi float [ %3837, %3832 ], [ %3837, %3893 ], [ %3837, %3891 ], [ %3837, %3878 ], [ %3871, %3848 ]
  %3927 = phi float [ %3838, %3832 ], [ %3838, %3893 ], [ %3838, %3891 ], [ %3838, %3878 ], [ %3872, %3848 ]
  %3928 = phi float [ %3105, %3832 ], [ %3105, %3893 ], [ %3105, %3891 ], [ %3105, %3878 ], [ %3863, %3848 ]
  %3929 = phi float [ %3109, %3832 ], [ %3109, %3893 ], [ %3109, %3891 ], [ %3109, %3878 ], [ %3875, %3848 ]
  %3930 = and i32 %3840, 12
  %3931 = icmp eq i32 %3930, 12
  br i1 %3931, label %4038, label %3932

; <label>:3932                                    ; preds = %3921
  %3933 = and i32 %3840, 2097184
  %3934 = icmp eq i32 %3933, 2097184
  %3935 = select i1 %3934, float %3407, float 0.000000e+00
  %3936 = and i32 %3840, 4194336
  %3937 = icmp eq i32 %3936, 4194336
  %3938 = select i1 %3937, float %3407, float 0.000000e+00
  %3939 = and i32 %3840, 8388640
  %3940 = icmp eq i32 %3939, 8388640
  %3941 = select i1 %3940, float %3407, float 0.000000e+00
  %3942 = and i32 %3840, 2048
  %3943 = icmp ne i32 %3942, 0
  %3944 = select i1 %3943, float %3407, float 0.000000e+00
  %3945 = and i32 %3840, 8192
  %3946 = icmp ne i32 %3945, 0
  %3947 = select i1 %3946, float %3407, float 0.000000e+00
  %3948 = icmp eq i32 %3930, 0
  br i1 %3948, label %3949, label %3974

; <label>:3949                                    ; preds = %3932
  %3950 = fsub fast float %3708, %3094
  %3951 = fsub fast float %3709, %3095
  %3952 = fmul fast float %3935, %3950
  %3953 = fmul fast float %3935, %3951
  %3954 = fadd fast float %3952, %3094
  %3955 = fadd fast float %3953, %3095
  %3956 = fsub fast float %3710, %3107
  %3957 = fmul fast float %3938, %3956
  %3958 = fadd fast float %3957, %3107
  %3959 = fsub fast float %3707, %3106
  %3960 = fmul fast float %3941, %3959
  %3961 = fadd fast float %3960, %3106
  %3962 = fsub fast float %3810, %3108
  %3963 = fmul fast float %3944, %3962
  %3964 = fadd fast float %3963, %3108
  %3965 = fsub fast float %3807, %3099
  %3966 = fsub fast float %3808, %3100
  %3967 = fsub fast float %3809, %3101
  %3968 = fmul fast float %3947, %3965
  %3969 = fmul fast float %3947, %3966
  %3970 = fmul fast float %3947, %3967
  %3971 = fadd fast float %3968, %3099
  %3972 = fadd fast float %3969, %3100
  %3973 = fadd fast float %3970, %3101
  br label %4038

; <label>:3974                                    ; preds = %3932
  %3975 = icmp eq i32 %3930, 4
  br i1 %3975, label %3976, label %4016

; <label>:3976                                    ; preds = %3974
  %3977 = fmul fast float %3935, %3708
  %3978 = fmul fast float %3935, %3709
  %3979 = fadd fast float %3977, %3094
  %3980 = fadd fast float %3978, %3095
  %3981 = call float @dx.op.binary.f32(i32 36, float %3107, float %3710)  ; FMin(a,b)
  %3982 = fsub fast float %3981, %3107
  %3983 = fmul fast float %3982, %3938
  %3984 = fadd fast float %3983, %3107
  %3985 = fadd fast float %3707, %3106
  %3986 = fmul fast float %3985, 0x3FF337FAE0000000
  %3987 = fmul fast float %3106, %3106
  %3988 = fmul fast float %3707, %3707
  %3989 = fadd fast float %3988, %3987
  %3990 = fmul fast float %3989, 0x3FE5152B00000000
  %3991 = fmul fast float %3106, 0xBFCC1F85E0000000
  %3992 = fmul fast float %3991, %3707
  %3993 = fadd fast float %3992, 0xBFE1363700000000
  %3994 = fadd fast float %3993, %3986
  %3995 = fsub fast float %3994, %3990
  %3996 = fmul fast float %3985, 0x3FBA6F0D00000000
  %3997 = fmul fast float %3989, 0x3FD0432880000000
  %3998 = fmul fast float %3106, 0xBFEF110800000000
  %3999 = fmul fast float %3998, %3707
  %4000 = fadd fast float %3999, 1.000000e+00
  %4001 = fsub fast float %4000, %3996
  %4002 = fadd fast float %4001, %3997
  %4003 = fdiv fast float %3995, %4002
  %4004 = call float @dx.op.unary.f32(i32 7, float %4003)  ; Saturate(value)
  %4005 = fsub fast float %4004, %3106
  %4006 = fmul fast float %4005, %3941
  %4007 = fadd fast float %4006, %3106
  %4008 = fmul fast float %3944, %3810
  %4009 = fadd fast float %4008, %3108
  %4010 = fmul fast float %3947, %3807
  %4011 = fmul fast float %3947, %3808
  %4012 = fmul fast float %3947, %3809
  %4013 = fadd fast float %4010, %3099
  %4014 = fadd fast float %4011, %3100
  %4015 = fadd fast float %4012, %3101
  br label %4038

; <label>:4016                                    ; preds = %3974
  %4017 = icmp eq i32 %3930, 8
  br i1 %4017, label %4018, label %4038

; <label>:4018                                    ; preds = %4016
  %4019 = fmul fast float %3935, %3708
  %4020 = fmul fast float %3935, %3709
  %4021 = fadd fast float %4019, %3094
  %4022 = fadd fast float %4020, %3095
  %4023 = call float @dx.op.binary.f32(i32 36, float %3107, float %3710)  ; FMin(a,b)
  %4024 = fsub fast float %4023, %3107
  %4025 = fmul fast float %4024, %3938
  %4026 = fadd fast float %4025, %3107
  %4027 = fsub fast float %3707, %3106
  %4028 = fmul fast float %3941, %4027
  %4029 = fadd fast float %4028, %3106
  %4030 = fmul fast float %3944, %3810
  %4031 = fadd fast float %4030, %3108
  %4032 = fmul fast float %3947, %3807
  %4033 = fmul fast float %3947, %3808
  %4034 = fmul fast float %3947, %3809
  %4035 = fadd fast float %4032, %3099
  %4036 = fadd fast float %4033, %3100
  %4037 = fadd fast float %4034, %3101
  br label %4038

; <label>:4038                                    ; preds = %4018, %4016, %3976, %3949, %3921, %3406, %3110, %3093
  %4039 = phi float [ %3094, %3921 ], [ %3094, %3406 ], [ %3094, %3093 ], [ %3094, %3110 ], [ %3954, %3949 ], [ %3979, %3976 ], [ %3094, %4016 ], [ %4021, %4018 ]
  %4040 = phi float [ %3095, %3921 ], [ %3095, %3406 ], [ %3095, %3093 ], [ %3095, %3110 ], [ %3955, %3949 ], [ %3980, %3976 ], [ %3095, %4016 ], [ %4022, %4018 ]
  %4041 = phi float [ %3922, %3921 ], [ %3096, %3406 ], [ %3096, %3093 ], [ %3096, %3110 ], [ %3922, %3949 ], [ %3922, %3976 ], [ %3922, %4016 ], [ %3922, %4018 ]
  %4042 = phi float [ %3923, %3921 ], [ %3097, %3406 ], [ %3097, %3093 ], [ %3097, %3110 ], [ %3923, %3949 ], [ %3923, %3976 ], [ %3923, %4016 ], [ %3923, %4018 ]
  %4043 = phi float [ %3924, %3921 ], [ %3098, %3406 ], [ %3098, %3093 ], [ %3098, %3110 ], [ %3924, %3949 ], [ %3924, %3976 ], [ %3924, %4016 ], [ %3924, %4018 ]
  %4044 = phi float [ %3099, %3921 ], [ %3099, %3406 ], [ %3099, %3093 ], [ %3099, %3110 ], [ %3971, %3949 ], [ %4013, %3976 ], [ %3099, %4016 ], [ %4035, %4018 ]
  %4045 = phi float [ %3100, %3921 ], [ %3100, %3406 ], [ %3100, %3093 ], [ %3100, %3110 ], [ %3972, %3949 ], [ %4014, %3976 ], [ %3100, %4016 ], [ %4036, %4018 ]
  %4046 = phi float [ %3101, %3921 ], [ %3101, %3406 ], [ %3101, %3093 ], [ %3101, %3110 ], [ %3973, %3949 ], [ %4015, %3976 ], [ %3101, %4016 ], [ %4037, %4018 ]
  %4047 = phi float [ %3925, %3921 ], [ %3102, %3406 ], [ %3102, %3093 ], [ %3102, %3110 ], [ %3925, %3949 ], [ %3925, %3976 ], [ %3925, %4016 ], [ %3925, %4018 ]
  %4048 = phi float [ %3926, %3921 ], [ %3103, %3406 ], [ %3103, %3093 ], [ %3103, %3110 ], [ %3926, %3949 ], [ %3926, %3976 ], [ %3926, %4016 ], [ %3926, %4018 ]
  %4049 = phi float [ %3927, %3921 ], [ %3104, %3406 ], [ %3104, %3093 ], [ %3104, %3110 ], [ %3927, %3949 ], [ %3927, %3976 ], [ %3927, %4016 ], [ %3927, %4018 ]
  %4050 = phi float [ %3928, %3921 ], [ %3105, %3406 ], [ %3105, %3093 ], [ %3105, %3110 ], [ %3928, %3949 ], [ %3928, %3976 ], [ %3928, %4016 ], [ %3928, %4018 ]
  %4051 = phi float [ %3106, %3921 ], [ %3106, %3406 ], [ %3106, %3093 ], [ %3106, %3110 ], [ %3961, %3949 ], [ %4007, %3976 ], [ %3106, %4016 ], [ %4029, %4018 ]
  %4052 = phi float [ %3107, %3921 ], [ %3107, %3406 ], [ %3107, %3093 ], [ %3107, %3110 ], [ %3958, %3949 ], [ %3984, %3976 ], [ %3107, %4016 ], [ %4026, %4018 ]
  %4053 = phi float [ %3108, %3921 ], [ %3108, %3406 ], [ %3108, %3093 ], [ %3108, %3110 ], [ %3964, %3949 ], [ %4009, %3976 ], [ %3108, %4016 ], [ %4031, %4018 ]
  %4054 = phi float [ %3929, %3921 ], [ %3109, %3406 ], [ %3109, %3093 ], [ %3109, %3110 ], [ %3929, %3949 ], [ %3929, %3976 ], [ %3929, %4016 ], [ %3929, %4018 ]
  %4055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4056 = extractvalue %dx.types.CBufRet.f32 %4055, 0
  %4057 = call float @dx.op.dot2.f32(i32 54, float %4039, float %4040, float %4039, float %4040)  ; Dot2(ax,ay,bx,by)
  %4058 = fmul fast float %4057, 0x3FE3333340000000
  %4059 = fsub fast float 1.000000e+00, %4058
  %4060 = call float @dx.op.dot3.f32(i32 55, float %4039, float %4040, float %4059, float %4039, float %4040, float %4059)  ; Dot3(ax,ay,az,bx,by,bz)
  %4061 = call float @dx.op.unary.f32(i32 25, float %4060)  ; Rsqrt(value)
  %4062 = fmul fast float %4061, %4039
  %4063 = fmul fast float %4061, %4040
  %4064 = fmul fast float %4059, %4061
  %4065 = fmul fast float %4064, %107
  %4066 = fmul fast float %4064, %108
  %4067 = fmul fast float %4064, %109
  %4068 = fmul fast float %4062, %75
  %4069 = fmul fast float %4062, %76
  %4070 = fmul fast float %4062, %77
  %4071 = fadd fast float %4065, %4068
  %4072 = fadd fast float %4066, %4069
  %4073 = fadd fast float %4067, %4070
  %4074 = fmul fast float %119, %4063
  %4075 = fmul fast float %120, %4063
  %4076 = fmul fast float %121, %4063
  %4077 = fadd fast float %4071, %4074
  %4078 = fadd fast float %4072, %4075
  %4079 = fadd fast float %4073, %4076
  %4080 = call float @dx.op.dot3.f32(i32 55, float %4077, float %4078, float %4079, float %4077, float %4078, float %4079)  ; Dot3(ax,ay,az,bx,by,bz)
  %4081 = call float @dx.op.unary.f32(i32 25, float %4080)  ; Rsqrt(value)
  %4082 = fmul fast float %4077, %4081
  %4083 = fmul fast float %4078, %4081
  %4084 = fmul fast float %4079, %4081
  %4085 = and i32 %56, 1
  %4086 = icmp eq i32 %4085, 0
  br i1 %4086, label %4087, label %4648

; <label>:4087                                    ; preds = %4038
  %4088 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %4089 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %4090 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %4091 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %4092 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %4093 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %4094 = fadd fast float %4088, %155
  %4095 = fadd fast float %4089, %156
  %4096 = fadd fast float %4090, %157
  %4097 = fadd fast float %4091, %155
  %4098 = fadd fast float %4092, %156
  %4099 = fadd fast float %4093, %157
  %4100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4101 = extractvalue %dx.types.CBufRet.f32 %4100, 0
  %4102 = extractvalue %dx.types.CBufRet.f32 %4100, 1
  %4103 = extractvalue %dx.types.CBufRet.f32 %4100, 2
  %4104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4105 = extractvalue %dx.types.CBufRet.f32 %4104, 2
  %4106 = extractvalue %dx.types.CBufRet.f32 %4104, 3
  %4107 = fmul fast float %4101, %100
  %4108 = fmul fast float %4107, %4105
  %4109 = fmul fast float %4102, %101
  %4110 = fmul fast float %4109, %4106
  %4111 = fptoui float %4108 to i32
  %4112 = fptoui float %4110 to i32
  %4113 = fadd fast float %4101, -1.000000e+00
  %4114 = fadd fast float %4102, -1.000000e+00
  %4115 = fptoui float %4113 to i32
  %4116 = fptoui float %4114 to i32
  %4117 = call i32 @dx.op.binary.i32(i32 40, i32 %4111, i32 %4115)  ; UMin(a,b)
  %4118 = call i32 @dx.op.binary.i32(i32 40, i32 %4112, i32 %4116)  ; UMin(a,b)
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 2
  %4121 = extractvalue %dx.types.CBufRet.f32 %4119, 3
  %4122 = fmul fast float %4120, %91
  %4123 = fsub fast float %4122, %4121
  %4124 = fadd fast float %4103, -1.000000e+00
  %4125 = call float @dx.op.binary.f32(i32 36, float %4123, float %4124)  ; FMin(a,b)
  %4126 = fptoui float %4125 to i32
  %4127 = fptoui float %4101 to i32
  %4128 = fptoui float %4102 to i32
  %4129 = mul i32 %4126, %4128
  %4130 = add i32 %4129, %4118
  %4131 = mul i32 %4130, %4127
  %4132 = add i32 %4131, %4117
  %4133 = shl i32 %4132, 2
  %4134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4133, i32 undef)  ; BufferLoad(srv,index,wot)
  %4135 = extractvalue %dx.types.ResRet.i32 %4134, 0
  %4136 = and i32 %4135, 1023
  %4137 = lshr i32 %4135, 10
  %4138 = icmp eq i32 %4136, 0
  br i1 %4138, label %4614, label %4139

; <label>:4139                                    ; preds = %4087
  %4140 = and i32 %4135, 1023
  br label %4141

; <label>:4141                                    ; preds = %4270, %4139
  %4142 = phi i32 [ %4220, %4270 ], [ 0, %4139 ]
  %4143 = phi float [ %4271, %4270 ], [ 0.000000e+00, %4139 ]
  %4144 = phi float [ %4272, %4270 ], [ %4056, %4139 ]
  %4145 = phi float [ %4273, %4270 ], [ %4054, %4139 ]
  %4146 = phi float [ %4274, %4270 ], [ 0.000000e+00, %4139 ]
  %4147 = phi float [ %4275, %4270 ], [ 0.000000e+00, %4139 ]
  %4148 = phi float [ %4276, %4270 ], [ %4044, %4139 ]
  %4149 = phi float [ %4277, %4270 ], [ %4045, %4139 ]
  %4150 = phi float [ %4278, %4270 ], [ %4046, %4139 ]
  %4151 = phi float [ %4279, %4270 ], [ %4047, %4139 ]
  %4152 = phi float [ %4280, %4270 ], [ %4048, %4139 ]
  %4153 = phi float [ %4281, %4270 ], [ %4049, %4139 ]
  %4154 = phi float [ %4282, %4270 ], [ %4082, %4139 ]
  %4155 = phi float [ %4283, %4270 ], [ %4083, %4139 ]
  %4156 = phi float [ %4284, %4270 ], [ %4084, %4139 ]
  %4157 = phi float [ %4285, %4270 ], [ %4052, %4139 ]
  %4158 = phi float [ %4286, %4270 ], [ %4051, %4139 ]
  %4159 = phi float [ %4287, %4270 ], [ 0.000000e+00, %4139 ]
  %4160 = phi float [ %4288, %4270 ], [ %4050, %4139 ]
  %4161 = phi float [ %4289, %4270 ], [ %4041, %4139 ]
  %4162 = phi float [ %4290, %4270 ], [ %4042, %4139 ]
  %4163 = phi float [ %4291, %4270 ], [ %4043, %4139 ]
  %4164 = add nuw nsw i32 %4142, %4137
  %4165 = shl i32 %4164, 2
  %4166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4165, i32 undef)  ; BufferLoad(srv,index,wot)
  %4167 = extractvalue %dx.types.ResRet.i32 %4166, 0
  %4168 = shl i32 %4167, 8
  %4169 = or i32 %4168, 48
  %4170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4169, i32 undef)  ; BufferLoad(srv,index,wot)
  %4171 = extractvalue %dx.types.ResRet.f32 %4170, 0
  %4172 = extractvalue %dx.types.ResRet.f32 %4170, 1
  %4173 = extractvalue %dx.types.ResRet.f32 %4170, 2
  %4174 = extractvalue %dx.types.ResRet.f32 %4170, 3
  %4175 = or i32 %4168, 64
  %4176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4175, i32 undef)  ; BufferLoad(srv,index,wot)
  %4177 = extractvalue %dx.types.ResRet.i32 %4176, 0
  %4178 = extractvalue %dx.types.ResRet.i32 %4176, 1
  %4179 = or i32 %4168, 80
  %4180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4179, i32 undef)  ; BufferLoad(srv,index,wot)
  %4181 = extractvalue %dx.types.ResRet.f32 %4180, 2
  %4182 = extractvalue %dx.types.ResRet.f32 %4180, 3
  %4183 = or i32 %4168, 96
  %4184 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4183, i32 undef)  ; BufferLoad(srv,index,wot)
  %4185 = extractvalue %dx.types.ResRet.f32 %4184, 0
  %4186 = extractvalue %dx.types.ResRet.f32 %4184, 1
  %4187 = extractvalue %dx.types.ResRet.f32 %4184, 2
  %4188 = extractvalue %dx.types.ResRet.f32 %4184, 3
  %4189 = or i32 %4168, 112
  %4190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4189, i32 undef)  ; BufferLoad(srv,index,wot)
  %4191 = extractvalue %dx.types.ResRet.f32 %4190, 2
  %4192 = or i32 %4168, 128
  %4193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4192, i32 undef)  ; BufferLoad(srv,index,wot)
  %4194 = extractvalue %dx.types.ResRet.f32 %4193, 0
  %4195 = extractvalue %dx.types.ResRet.f32 %4193, 1
  %4196 = extractvalue %dx.types.ResRet.f32 %4193, 2
  %4197 = extractvalue %dx.types.ResRet.f32 %4193, 3
  %4198 = or i32 %4168, 144
  %4199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = extractvalue %dx.types.ResRet.f32 %4199, 1
  %4202 = extractvalue %dx.types.ResRet.f32 %4199, 2
  %4203 = extractvalue %dx.types.ResRet.f32 %4199, 3
  %4204 = or i32 %4168, 160
  %4205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4204, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.f32 %4205, 0
  %4207 = extractvalue %dx.types.ResRet.f32 %4205, 1
  %4208 = extractvalue %dx.types.ResRet.f32 %4205, 2
  %4209 = extractvalue %dx.types.ResRet.f32 %4205, 3
  %4210 = or i32 %4168, 192
  %4211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4210, i32 undef)  ; BufferLoad(srv,index,wot)
  %4212 = extractvalue %dx.types.ResRet.i32 %4211, 0
  %4213 = or i32 %4168, 208
  %4214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4213, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = or i32 %4168, 248
  %4217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4216, i32 undef)  ; BufferLoad(srv,index,wot)
  %4218 = extractvalue %dx.types.ResRet.f32 %4217, 0
  %4219 = extractvalue %dx.types.ResRet.f32 %4217, 1
  %4220 = add nuw nsw i32 %4142, 1
  %4221 = bitcast float %4174 to i32
  %4222 = and i32 %4221, 512
  %4223 = icmp eq i32 %4222, 0
  %4224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4168, i32 undef)  ; BufferLoad(srv,index,wot)
  %4225 = extractvalue %dx.types.ResRet.f32 %4224, 0
  %4226 = extractvalue %dx.types.ResRet.f32 %4224, 1
  %4227 = extractvalue %dx.types.ResRet.f32 %4224, 2
  %4228 = extractvalue %dx.types.ResRet.f32 %4224, 3
  %4229 = call float @dx.op.dot4.f32(i32 56, float %4225, float %4226, float %4227, float %4228, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4230 = or i32 %4168, 16
  %4231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4230, i32 undef)  ; BufferLoad(srv,index,wot)
  %4232 = extractvalue %dx.types.ResRet.f32 %4231, 0
  %4233 = extractvalue %dx.types.ResRet.f32 %4231, 1
  %4234 = extractvalue %dx.types.ResRet.f32 %4231, 2
  %4235 = extractvalue %dx.types.ResRet.f32 %4231, 3
  %4236 = call float @dx.op.dot4.f32(i32 56, float %4232, float %4233, float %4234, float %4235, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4237 = or i32 %4168, 32
  %4238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4237, i32 undef)  ; BufferLoad(srv,index,wot)
  %4239 = extractvalue %dx.types.ResRet.f32 %4238, 0
  %4240 = extractvalue %dx.types.ResRet.f32 %4238, 1
  %4241 = extractvalue %dx.types.ResRet.f32 %4238, 2
  %4242 = extractvalue %dx.types.ResRet.f32 %4238, 3
  %4243 = call float @dx.op.dot4.f32(i32 56, float %4239, float %4240, float %4241, float %4242, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4244 = call float @dx.op.unary.f32(i32 27, float %4229)  ; Round_ni(value)
  %4245 = call float @dx.op.unary.f32(i32 6, float %4244)  ; FAbs(value)
  %4246 = call float @dx.op.unary.f32(i32 27, float %4236)  ; Round_ni(value)
  %4247 = call float @dx.op.unary.f32(i32 6, float %4246)  ; FAbs(value)
  %4248 = call float @dx.op.unary.f32(i32 6, float %4243)  ; FAbs(value)
  %4249 = call float @dx.op.unary.f32(i32 27, float %4248)  ; Round_ni(value)
  %4250 = fadd fast float %4247, %4245
  %4251 = fadd fast float %4250, %4249
  %4252 = fcmp fast oeq float %4251, 0.000000e+00
  %4253 = call float @dx.op.dot4.f32(i32 56, float %4225, float %4226, float %4227, float %4228, float %4094, float %4095, float %4096, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4254 = call float @dx.op.dot4.f32(i32 56, float %4232, float %4233, float %4234, float %4235, float %4094, float %4095, float %4096, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4255 = call float @dx.op.dot4.f32(i32 56, float %4225, float %4226, float %4227, float %4228, float %4097, float %4098, float %4099, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4256 = call float @dx.op.dot4.f32(i32 56, float %4232, float %4233, float %4234, float %4235, float %4097, float %4098, float %4099, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4257 = fsub fast float %4253, %4229
  %4258 = fsub fast float %4255, %4229
  %4259 = fsub fast float %4254, %4236
  %4260 = fsub fast float %4256, %4236
  %4261 = call float @dx.op.dot3.f32(i32 55, float %4171, float %4172, float %4173, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4263 = extractvalue %dx.types.CBufRet.f32 %4262, 2
  %4264 = fadd fast float %4263, %4261
  %4265 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4266 = extractvalue %dx.types.CBufRet.f32 %4262, 0
  %4267 = fcmp fast ogt float %4265, %4266
  %4268 = and i1 %4252, %4267
  %4269 = and i1 %4223, %4268
  br i1 %4269, label %4293, label %4270

; <label>:4270                                    ; preds = %4600, %4374, %4293, %4141
  %4271 = phi float [ %4143, %4293 ], [ %4377, %4374 ], [ %4377, %4600 ], [ %4143, %4141 ]
  %4272 = phi float [ %4144, %4293 ], [ %4144, %4374 ], [ %4576, %4600 ], [ %4144, %4141 ]
  %4273 = phi float [ %4145, %4293 ], [ %4145, %4374 ], [ %4574, %4600 ], [ %4145, %4141 ]
  %4274 = phi float [ %4146, %4293 ], [ %4146, %4374 ], [ %4501, %4600 ], [ %4146, %4141 ]
  %4275 = phi float [ %4147, %4293 ], [ %4147, %4374 ], [ %4499, %4600 ], [ %4147, %4141 ]
  %4276 = phi float [ %4148, %4293 ], [ %4148, %4374 ], [ %4544, %4600 ], [ %4148, %4141 ]
  %4277 = phi float [ %4149, %4293 ], [ %4149, %4374 ], [ %4545, %4600 ], [ %4149, %4141 ]
  %4278 = phi float [ %4150, %4293 ], [ %4150, %4374 ], [ %4546, %4600 ], [ %4150, %4141 ]
  %4279 = phi float [ %4151, %4293 ], [ %4151, %4374 ], [ %4610, %4600 ], [ %4151, %4141 ]
  %4280 = phi float [ %4152, %4293 ], [ %4152, %4374 ], [ %4611, %4600 ], [ %4152, %4141 ]
  %4281 = phi float [ %4153, %4293 ], [ %4153, %4374 ], [ %4612, %4600 ], [ %4153, %4141 ]
  %4282 = phi float [ %4154, %4293 ], [ %4154, %4374 ], [ %4480, %4600 ], [ %4154, %4141 ]
  %4283 = phi float [ %4155, %4293 ], [ %4155, %4374 ], [ %4481, %4600 ], [ %4155, %4141 ]
  %4284 = phi float [ %4156, %4293 ], [ %4156, %4374 ], [ %4482, %4600 ], [ %4156, %4141 ]
  %4285 = phi float [ %4157, %4293 ], [ %4157, %4374 ], [ %4554, %4600 ], [ %4157, %4141 ]
  %4286 = phi float [ %4158, %4293 ], [ %4158, %4374 ], [ %4551, %4600 ], [ %4158, %4141 ]
  %4287 = phi float [ %4159, %4293 ], [ %4159, %4374 ], [ %4548, %4600 ], [ %4159, %4141 ]
  %4288 = phi float [ %4160, %4293 ], [ %4160, %4374 ], [ %4497, %4600 ], [ %4160, %4141 ]
  %4289 = phi float [ %4161, %4293 ], [ %4161, %4374 ], [ %4492, %4600 ], [ %4161, %4141 ]
  %4290 = phi float [ %4162, %4293 ], [ %4162, %4374 ], [ %4493, %4600 ], [ %4162, %4141 ]
  %4291 = phi float [ %4163, %4293 ], [ %4163, %4374 ], [ %4494, %4600 ], [ %4163, %4141 ]
  %4292 = icmp eq i32 %4220, %4140
  br i1 %4292, label %4613, label %4141

; <label>:4293                                    ; preds = %4141
  %4294 = extractvalue %dx.types.ResRet.f32 %4190, 3
  %4295 = extractvalue %dx.types.ResRet.f32 %4190, 1
  %4296 = extractvalue %dx.types.ResRet.f32 %4190, 0
  %4297 = extractvalue %dx.types.ResRet.f32 %4180, 1
  %4298 = extractvalue %dx.types.ResRet.f32 %4180, 0
  %4299 = extractvalue %dx.types.ResRet.i32 %4176, 3
  %4300 = extractvalue %dx.types.ResRet.i32 %4176, 2
  %4301 = add i32 %4299, 0
  %4302 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4301, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4304 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4302, %dx.types.Handle %4303, float %4229, float %4236, float undef, float undef, i32 0, i32 0, i32 undef, float %4257, float %4259, float undef, float %4258, float %4260, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4305 = extractvalue %dx.types.ResRet.f32 %4304, 0
  %4306 = fmul fast float %4305, %4298
  %4307 = fadd fast float %4306, %4297
  %4308 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4309 = fmul fast float %4229, %4185
  %4310 = call float @dx.op.tertiary.f32(i32 46, float %4186, float %4236, float %4309)  ; FMad(a,b,c)
  %4311 = fadd fast float %4310, %4296
  %4312 = fmul fast float %4229, %4187
  %4313 = call float @dx.op.tertiary.f32(i32 46, float %4188, float %4236, float %4312)  ; FMad(a,b,c)
  %4314 = fadd fast float %4313, %4295
  %4315 = fmul fast float %4257, %4185
  %4316 = call float @dx.op.tertiary.f32(i32 46, float %4186, float %4259, float %4315)  ; FMad(a,b,c)
  %4317 = fmul fast float %4257, %4187
  %4318 = call float @dx.op.tertiary.f32(i32 46, float %4188, float %4259, float %4317)  ; FMad(a,b,c)
  %4319 = fmul fast float %4258, %4185
  %4320 = call float @dx.op.tertiary.f32(i32 46, float %4186, float %4260, float %4319)  ; FMad(a,b,c)
  %4321 = fmul fast float %4258, %4187
  %4322 = call float @dx.op.tertiary.f32(i32 46, float %4188, float %4260, float %4321)  ; FMad(a,b,c)
  %4323 = add i32 %4300, 0
  %4324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4323, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4325 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4324, %dx.types.Handle %4303, float %4311, float %4314, float undef, float undef, i32 0, i32 0, i32 undef, float %4316, float %4318, float undef, float %4320, float %4322, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4326 = extractvalue %dx.types.ResRet.f32 %4325, 0
  %4327 = and i32 %4221, 1024
  %4328 = icmp ne i32 %4327, 0
  %4329 = fcmp fast ogt float %4326, 0x3FE0101020000000
  %4330 = uitofp i1 %4329 to float
  %4331 = select i1 %4328, float %4330, float %4326
  %4332 = and i32 %4221, 8192
  %4333 = icmp ne i32 %4332, 0
  %4334 = select i1 %4333, float %4294, float 1.000000e+00
  %4335 = fmul fast float %4229, 2.000000e+00
  %4336 = fadd fast float %4335, -1.000000e+00
  %4337 = call float @dx.op.unary.f32(i32 6, float %4336)  ; FAbs(value)
  %4338 = fmul fast float %4337, %4218
  %4339 = fsub fast float %4338, %4218
  %4340 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4341 = fmul fast float %4236, 2.000000e+00
  %4342 = fadd fast float %4341, -1.000000e+00
  %4343 = call float @dx.op.unary.f32(i32 6, float %4342)  ; FAbs(value)
  %4344 = fmul fast float %4343, %4219
  %4345 = fsub fast float %4344, %4219
  %4346 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4347 = fmul fast float %4248, %4181
  %4348 = fsub fast float %4347, %4181
  %4349 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4350 = fmul fast float %4308, %4334
  %4351 = fmul fast float %4350, %4305
  %4352 = fmul fast float %4351, %4340
  %4353 = fmul fast float %4352, %4331
  %4354 = fmul fast float %4353, %4346
  %4355 = fmul fast float %4354, %4349
  %4356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.f32 %4356, 1
  %4358 = extractvalue %dx.types.CBufRet.f32 %4356, 0
  %4359 = fsub fast float %4265, %4358
  %4360 = fmul fast float %4359, %4357
  %4361 = call float @dx.op.unary.f32(i32 7, float %4360)  ; Saturate(value)
  %4362 = fmul fast float %4355, %4182
  %4363 = fadd fast float %4355, %4182
  %4364 = fmul fast float %4363, %4191
  %4365 = fsub fast float %4364, %4191
  %4366 = call float @dx.op.unary.f32(i32 7, float %4365)  ; Saturate(value)
  %4367 = and i32 %4221, 128
  %4368 = icmp ne i32 %4367, 0
  %4369 = select i1 %4368, float %4366, float %4362
  %4370 = fmul fast float %4369, %4361
  %4371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.f32 %4371, 0
  %4373 = fcmp fast ugt float %4370, %4372
  br i1 %4373, label %4374, label %4270

; <label>:4374                                    ; preds = %4293
  %4375 = select i1 %4333, float %4370, float 0.000000e+00
  %4376 = fadd fast float %4375, %4143
  %4377 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  br i1 %4333, label %4270, label %4378

; <label>:4378                                    ; preds = %4374
  %4379 = and i32 %4221, 4
  %4380 = and i32 %4221, 8
  %4381 = add i32 %4177, 0
  %4382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4381, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4383 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4384 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4382, %dx.types.Handle %4383, float %4311, float %4314, float undef, float undef, i32 0, i32 0, i32 undef, float %4316, float %4318, float undef, float %4320, float %4322, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4385 = extractvalue %dx.types.ResRet.f32 %4384, 0
  %4386 = extractvalue %dx.types.ResRet.f32 %4384, 1
  %4387 = extractvalue %dx.types.ResRet.f32 %4384, 2
  %4388 = extractvalue %dx.types.ResRet.f32 %4384, 3
  %4389 = bitcast float %4203 to i32
  %4390 = and i32 %4389, 255
  %4391 = uitofp i32 %4390 to float
  %4392 = lshr i32 %4389, 8
  %4393 = and i32 %4392, 255
  %4394 = uitofp i32 %4393 to float
  %4395 = fmul fast float %4388, %4391
  %4396 = fadd fast float %4395, %4394
  %4397 = fmul fast float %4396, 0x3F70101000000000
  %4398 = add i32 %4178, 0
  %4399 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4398, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4400 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4399, %dx.types.Handle %4383, float %4311, float %4314, float undef, float undef, i32 0, i32 0, i32 undef, float %4316, float %4318, float undef, float %4320, float %4322, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4401 = extractvalue %dx.types.ResRet.f32 %4400, 0
  %4402 = extractvalue %dx.types.ResRet.f32 %4400, 1
  %4403 = extractvalue %dx.types.ResRet.f32 %4400, 2
  %4404 = extractvalue %dx.types.ResRet.f32 %4400, 3
  %4405 = bitcast float %4197 to i32
  %4406 = and i32 %4405, 255
  %4407 = uitofp i32 %4406 to float
  %4408 = lshr i32 %4405, 8
  %4409 = and i32 %4408, 255
  %4410 = uitofp i32 %4409 to float
  %4411 = lshr i32 %4405, 16
  %4412 = and i32 %4411, 255
  %4413 = uitofp i32 %4412 to float
  %4414 = fmul fast float %4413, 0x3F70101000000000
  %4415 = fmul fast float %4401, %4407
  %4416 = fadd fast float %4415, %4410
  %4417 = fmul fast float %4416, 0x3F70101000000000
  %4418 = fadd fast float %4402, -5.000000e-01
  %4419 = fadd fast float %4404, -5.000000e-01
  %4420 = fmul fast float %4418, %4414
  %4421 = fmul fast float %4419, %4414
  %4422 = fadd fast float %4420, 5.000000e-01
  %4423 = fadd fast float %4421, 5.000000e-01
  %4424 = fmul fast float %4385, %4206
  %4425 = fmul fast float %4386, %4207
  %4426 = fmul fast float %4387, %4208
  %4427 = fmul fast float %4422, 2.000000e+00
  %4428 = fadd fast float %4427, -1.000000e+00
  %4429 = fmul fast float %4423, 2.000000e+00
  %4430 = fadd fast float %4429, -1.000000e+00
  %4431 = fadd fast float %4428, %4430
  %4432 = fmul fast float %4431, 5.000000e-01
  %4433 = fsub fast float %4428, %4430
  %4434 = fmul fast float %4433, 5.000000e-01
  %4435 = call float @dx.op.unary.f32(i32 6, float %4432)  ; FAbs(value)
  %4436 = fsub fast float 1.000000e+00, %4435
  %4437 = call float @dx.op.unary.f32(i32 6, float %4434)  ; FAbs(value)
  %4438 = fsub fast float %4436, %4437
  %4439 = call float @dx.op.dot3.f32(i32 55, float %4432, float %4434, float %4438, float %4432, float %4434, float %4438)  ; Dot3(ax,ay,az,bx,by,bz)
  %4440 = call float @dx.op.unary.f32(i32 25, float %4439)  ; Rsqrt(value)
  %4441 = fmul fast float %4432, %4440
  %4442 = fmul fast float %4434, %4440
  %4443 = fmul fast float %4440, %4438
  %4444 = fmul fast float %4443, %4171
  %4445 = fmul fast float %4443, %4172
  %4446 = fmul fast float %4443, %4173
  %4447 = fmul fast float %4441, %4194
  %4448 = fmul fast float %4441, %4195
  %4449 = fmul fast float %4441, %4196
  %4450 = fadd fast float %4447, %4444
  %4451 = fadd fast float %4448, %4445
  %4452 = fadd fast float %4449, %4446
  %4453 = fmul fast float %4442, %4200
  %4454 = fmul fast float %4442, %4201
  %4455 = fmul fast float %4442, %4202
  %4456 = fadd fast float %4450, %4453
  %4457 = fadd fast float %4451, %4454
  %4458 = fadd fast float %4452, %4455
  %4459 = call float @dx.op.dot3.f32(i32 55, float %4456, float %4457, float %4458, float %4456, float %4457, float %4458)  ; Dot3(ax,ay,az,bx,by,bz)
  %4460 = call float @dx.op.unary.f32(i32 25, float %4459)  ; Rsqrt(value)
  %4461 = fmul fast float %4456, %4460
  %4462 = fmul fast float %4457, %4460
  %4463 = fmul fast float %4458, %4460
  %4464 = icmp ne i32 %4380, 0
  %4465 = select i1 %4464, float 1.000000e+00, float 0.000000e+00
  %4466 = fmul fast float %4370, %4465
  %4467 = and i32 %4221, 1
  %4468 = icmp eq i32 %4467, 0
  br i1 %4468, label %4469, label %4473

; <label>:4469                                    ; preds = %4378
  %4470 = fsub fast float %4461, %4154
  %4471 = fsub fast float %4462, %4155
  %4472 = fsub fast float %4463, %4156
  br label %4473

; <label>:4473                                    ; preds = %4469, %4378
  %4474 = phi float [ %4470, %4469 ], [ %4461, %4378 ]
  %4475 = phi float [ %4471, %4469 ], [ %4462, %4378 ]
  %4476 = phi float [ %4472, %4469 ], [ %4463, %4378 ]
  %4477 = fmul float %4476, %4466
  %4478 = fmul float %4475, %4466
  %4479 = fmul float %4474, %4466
  %4480 = fadd fast float %4479, %4154
  %4481 = fadd fast float %4478, %4155
  %4482 = fadd fast float %4477, %4156
  %4483 = icmp ne i32 %4379, 0
  %4484 = select i1 %4483, float 1.000000e+00, float 0.000000e+00
  %4485 = fmul fast float %4370, %4484
  %4486 = fsub fast float %4424, %4161
  %4487 = fsub fast float %4425, %4162
  %4488 = fsub fast float %4426, %4163
  %4489 = fmul fast float %4486, %4485
  %4490 = fmul fast float %4487, %4485
  %4491 = fmul fast float %4488, %4485
  %4492 = fadd fast float %4489, %4161
  %4493 = fadd fast float %4490, %4162
  %4494 = fadd fast float %4491, %4163
  %4495 = fsub fast float %4397, %4160
  %4496 = fmul fast float %4495, %4485
  %4497 = fadd fast float %4496, %4160
  %4498 = fmul fast float %4485, %4147
  %4499 = fsub fast float %4147, %4498
  %4500 = fmul fast float %4485, %4146
  %4501 = fsub fast float %4146, %4500
  %4502 = bitcast float %4215 to i32
  %4503 = lshr i32 %4502, 16
  %4504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4503)  ; LegacyF16ToF32(value)
  %4505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4506 = extractvalue %dx.types.ResRet.i32 %4505, 0
  %4507 = and i32 %4506, 1
  %4508 = icmp eq i32 %4507, 0
  br i1 %4508, label %4509, label %4534

; <label>:4509                                    ; preds = %4473
  %4510 = fadd fast float %4397, 0xBFB99999A0000000
  %4511 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4512 = fmul fast float %4511, 0x3FF1C71C80000000
  %4513 = fsub fast float 1.000000e+00, %4512
  %4514 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4515 = fmul fast float %4514, %4424
  %4516 = fmul fast float %4514, %4425
  %4517 = fmul fast float %4514, %4426
  %4518 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4519 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4520 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4521 = call float @dx.op.binary.f32(i32 35, float %4519, float %4520)  ; FMax(a,b)
  %4522 = call float @dx.op.binary.f32(i32 35, float %4518, float %4521)  ; FMax(a,b)
  %4523 = fcmp fast ogt float %4522, 0.000000e+00
  %4524 = bitcast float %4522 to i32
  %4525 = sub nsw i32 2129859010, %4524
  %4526 = bitcast i32 %4525 to float
  %4527 = select i1 %4523, float %4526, float 0.000000e+00
  %4528 = fmul fast float %4518, %4504
  %4529 = fmul fast float %4519, %4504
  %4530 = fmul fast float %4520, %4504
  %4531 = fmul fast float %4528, %4527
  %4532 = fmul fast float %4529, %4527
  %4533 = fmul fast float %4530, %4527
  br label %4534

; <label>:4534                                    ; preds = %4509, %4473
  %4535 = phi float [ %4504, %4473 ], [ %4531, %4509 ]
  %4536 = phi float [ %4504, %4473 ], [ %4532, %4509 ]
  %4537 = phi float [ %4504, %4473 ], [ %4533, %4509 ]
  %4538 = fsub fast float %4535, %4148
  %4539 = fsub fast float %4536, %4149
  %4540 = fsub fast float %4537, %4150
  %4541 = fmul fast float %4538, %4485
  %4542 = fmul fast float %4539, %4485
  %4543 = fmul fast float %4540, %4485
  %4544 = fadd fast float %4541, %4148
  %4545 = fadd fast float %4542, %4149
  %4546 = fadd fast float %4543, %4150
  %4547 = fadd fast float %4370, %4159
  %4548 = call float @dx.op.unary.f32(i32 7, float %4547)  ; Saturate(value)
  %4549 = fsub fast float %4417, %4158
  %4550 = fmul fast float %4549, %4466
  %4551 = fadd fast float %4550, %4158
  %4552 = fsub fast float %4403, %4157
  %4553 = fmul fast float %4552, %4466
  %4554 = fadd fast float %4553, %4157
  %4555 = call float @dx.op.dot3.f32(i32 55, float %4424, float %4425, float %4426, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 0
  %4558 = extractvalue %dx.types.CBufRet.f32 %4556, 1
  %4559 = fmul fast float %4558, %4555
  %4560 = fadd fast float %4559, %4557
  %4561 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4562 = bitcast float %4209 to i32
  %4563 = and i32 %4562, 65535
  %4564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4563)  ; LegacyF16ToF32(value)
  %4565 = lshr i32 %4562, 16
  %4566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4565)  ; LegacyF16ToF32(value)
  %4567 = fcmp fast oge float %4564, 0.000000e+00
  %4568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4569 = extractvalue %dx.types.CBufRet.f32 %4568, 0
  %4570 = select i1 %4567, float %4564, float %4569
  %4571 = fadd fast float %4570, %4566
  %4572 = fsub fast float %4561, %4145
  %4573 = fmul fast float %4572, %4370
  %4574 = fadd fast float %4573, %4145
  %4575 = fmul fast float %4571, %4370
  %4576 = call float @dx.op.binary.f32(i32 35, float %4144, float %4575)  ; FMax(a,b)
  %4577 = and i32 %4221, 16
  %4578 = icmp eq i32 %4577, 0
  br i1 %4578, label %4600, label %4579

; <label>:4579                                    ; preds = %4534
  %4580 = add i32 %4212, 0
  %4581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4580, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4582 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4581, %dx.types.Handle %4383, float %4311, float %4314, float undef, float undef, i32 0, i32 0, i32 undef, float %4316, float %4318, float undef, float %4320, float %4322, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = extractvalue %dx.types.ResRet.f32 %4582, 1
  %4585 = extractvalue %dx.types.ResRet.f32 %4582, 2
  %4586 = and i32 %4502, 65535
  %4587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4586)  ; LegacyF16ToF32(value)
  %4588 = fmul fast float %4583, %4206
  %4589 = fmul fast float %4584, %4207
  %4590 = fmul fast float %4585, %4208
  %4591 = and i32 %4221, 16384
  %4592 = icmp ne i32 %4591, 0
  %4593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4594 = extractvalue %dx.types.CBufRet.f32 %4593, 0
  %4595 = select i1 %4592, float %4594, float 1.000000e+00
  %4596 = fmul fast float %4595, %4587
  %4597 = fmul fast float %4588, %4596
  %4598 = fmul fast float %4589, %4596
  %4599 = fmul fast float %4590, %4596
  br label %4600

; <label>:4600                                    ; preds = %4579, %4534
  %4601 = phi float [ %4597, %4579 ], [ 0.000000e+00, %4534 ]
  %4602 = phi float [ %4598, %4579 ], [ 0.000000e+00, %4534 ]
  %4603 = phi float [ %4599, %4579 ], [ 0.000000e+00, %4534 ]
  %4604 = fsub fast float %4601, %4151
  %4605 = fsub fast float %4602, %4152
  %4606 = fsub fast float %4603, %4153
  %4607 = fmul fast float %4604, %4370
  %4608 = fmul fast float %4605, %4370
  %4609 = fmul fast float %4606, %4370
  %4610 = fadd fast float %4607, %4151
  %4611 = fadd fast float %4608, %4152
  %4612 = fadd fast float %4609, %4153
  br label %4270

; <label>:4613                                    ; preds = %4270
  br label %4614

; <label>:4614                                    ; preds = %4613, %4087
  %4615 = phi float [ 0.000000e+00, %4087 ], [ %4271, %4613 ]
  %4616 = phi float [ %4056, %4087 ], [ %4272, %4613 ]
  %4617 = phi float [ %4054, %4087 ], [ %4273, %4613 ]
  %4618 = phi float [ 0.000000e+00, %4087 ], [ %4274, %4613 ]
  %4619 = phi float [ 0.000000e+00, %4087 ], [ %4275, %4613 ]
  %4620 = phi float [ %4044, %4087 ], [ %4276, %4613 ]
  %4621 = phi float [ %4045, %4087 ], [ %4277, %4613 ]
  %4622 = phi float [ %4046, %4087 ], [ %4278, %4613 ]
  %4623 = phi float [ %4047, %4087 ], [ %4279, %4613 ]
  %4624 = phi float [ %4048, %4087 ], [ %4280, %4613 ]
  %4625 = phi float [ %4049, %4087 ], [ %4281, %4613 ]
  %4626 = phi float [ %4082, %4087 ], [ %4282, %4613 ]
  %4627 = phi float [ %4083, %4087 ], [ %4283, %4613 ]
  %4628 = phi float [ %4084, %4087 ], [ %4284, %4613 ]
  %4629 = phi float [ %4052, %4087 ], [ %4285, %4613 ]
  %4630 = phi float [ %4051, %4087 ], [ %4286, %4613 ]
  %4631 = phi float [ 0.000000e+00, %4087 ], [ %4287, %4613 ]
  %4632 = phi float [ %4050, %4087 ], [ %4288, %4613 ]
  %4633 = phi float [ %4041, %4087 ], [ %4289, %4613 ]
  %4634 = phi float [ %4042, %4087 ], [ %4290, %4613 ]
  %4635 = phi float [ %4043, %4087 ], [ %4291, %4613 ]
  %4636 = call float @dx.op.dot3.f32(i32 55, float %4626, float %4627, float %4628, float %4626, float %4627, float %4628)  ; Dot3(ax,ay,az,bx,by,bz)
  %4637 = call float @dx.op.unary.f32(i32 25, float %4636)  ; Rsqrt(value)
  %4638 = fmul fast float %4637, %4626
  %4639 = fmul fast float %4637, %4627
  %4640 = fmul fast float %4637, %4628
  %4641 = fadd fast float %4631, %1215
  %4642 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4643 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4644 = call float @dx.op.unary.f32(i32 25, float %4643)  ; Rsqrt(value)
  %4645 = fmul fast float %4644, %4638
  %4646 = fmul fast float %4644, %4639
  %4647 = fmul fast float %4644, %4640
  br label %4648

; <label>:4648                                    ; preds = %4614, %4038
  %4649 = phi float [ %4645, %4614 ], [ %4082, %4038 ]
  %4650 = phi float [ %4646, %4614 ], [ %4083, %4038 ]
  %4651 = phi float [ %4647, %4614 ], [ %4084, %4038 ]
  %4652 = phi float [ %4633, %4614 ], [ %4041, %4038 ]
  %4653 = phi float [ %4634, %4614 ], [ %4042, %4038 ]
  %4654 = phi float [ %4635, %4614 ], [ %4043, %4038 ]
  %4655 = phi float [ %4620, %4614 ], [ %4044, %4038 ]
  %4656 = phi float [ %4621, %4614 ], [ %4045, %4038 ]
  %4657 = phi float [ %4622, %4614 ], [ %4046, %4038 ]
  %4658 = phi float [ %4623, %4614 ], [ %4047, %4038 ]
  %4659 = phi float [ %4624, %4614 ], [ %4048, %4038 ]
  %4660 = phi float [ %4625, %4614 ], [ %4049, %4038 ]
  %4661 = phi float [ %4632, %4614 ], [ %4050, %4038 ]
  %4662 = phi float [ %4642, %4614 ], [ %1215, %4038 ]
  %4663 = phi float [ %4630, %4614 ], [ %4051, %4038 ]
  %4664 = phi float [ %4629, %4614 ], [ %4052, %4038 ]
  %4665 = phi float [ %4619, %4614 ], [ 0.000000e+00, %4038 ]
  %4666 = phi float [ %4618, %4614 ], [ 0.000000e+00, %4038 ]
  %4667 = phi float [ %4615, %4614 ], [ 0.000000e+00, %4038 ]
  %4668 = phi float [ %4616, %4614 ], [ %4056, %4038 ]
  %4669 = phi float [ %4617, %4614 ], [ %4054, %4038 ]
  %4670 = add i32 %54, 392
  %4671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4670, i32 undef)  ; BufferLoad(srv,index,wot)
  %4672 = extractvalue %dx.types.ResRet.i32 %4671, 0
  %4673 = extractvalue %dx.types.ResRet.i32 %4671, 1
  %4674 = extractvalue %dx.types.ResRet.i32 %4671, 2
  %4675 = extractvalue %dx.types.ResRet.i32 %4671, 3
  %4676 = bitcast i32 %4672 to float
  %4677 = bitcast i32 %4673 to float
  %4678 = bitcast i32 %4674 to float
  %4679 = bitcast i32 %4675 to float
  %4680 = fsub fast float %4652, %4676
  %4681 = fsub fast float %4653, %4677
  %4682 = fsub fast float %4654, %4678
  %4683 = fmul fast float %4680, %189
  %4684 = fmul fast float %4681, %189
  %4685 = fmul fast float %4682, %189
  %4686 = fadd fast float %4683, %4676
  %4687 = fadd fast float %4684, %4677
  %4688 = fadd fast float %4685, %4678
  %4689 = fsub fast float %4662, %4679
  %4690 = fmul fast float %4689, %189
  %4691 = fadd fast float %4690, %4679
  %4692 = fadd fast float %4661, 0xBFB99999A0000000
  %4693 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4694 = fmul fast float %4693, 0x3FF1C71C80000000
  %4695 = call float @dx.op.binary.f32(i32 36, float %4661, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4696 = fsub fast float 1.000000e+00, %4694
  %4697 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4698 = fmul fast float %4686, %4697
  %4699 = fmul fast float %4687, %4697
  %4700 = fmul fast float %4688, %4697
  %4701 = call float @dx.op.unary.f32(i32 7, float %4698)  ; Saturate(value)
  %4702 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4703 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4704 = fmul fast float %4686, %4694
  %4705 = fmul fast float %4687, %4694
  %4706 = fmul fast float %4688, %4694
  %4707 = fadd fast float %4704, %4695
  %4708 = fadd fast float %4705, %4695
  %4709 = fadd fast float %4706, %4695
  %4710 = call float @dx.op.unary.f32(i32 7, float %4707)  ; Saturate(value)
  %4711 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  %4712 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4713 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4715 = extractvalue %dx.types.ResRet.i32 %4714, 0
  %4716 = and i32 %4715, 1
  %4717 = icmp eq i32 %4716, 0
  br i1 %4717, label %4732, label %4718

; <label>:4718                                    ; preds = %4648
  %4719 = call float @dx.op.binary.f32(i32 35, float %4702, float %4703)  ; FMax(a,b)
  %4720 = call float @dx.op.binary.f32(i32 35, float %4701, float %4719)  ; FMax(a,b)
  %4721 = fcmp fast ogt float %4720, 0.000000e+00
  %4722 = bitcast float %4720 to i32
  %4723 = sub nsw i32 2129859010, %4722
  %4724 = bitcast i32 %4723 to float
  %4725 = select i1 %4721, float %4724, float 0.000000e+00
  %4726 = fmul fast float %4701, %4655
  %4727 = fmul fast float %4702, %4656
  %4728 = fmul fast float %4703, %4657
  %4729 = fmul fast float %4726, %4725
  %4730 = fmul fast float %4727, %4725
  %4731 = fmul fast float %4728, %4725
  br label %4732

; <label>:4732                                    ; preds = %4718, %4648
  %4733 = phi float [ %4729, %4718 ], [ %4655, %4648 ]
  %4734 = phi float [ %4730, %4718 ], [ %4656, %4648 ]
  %4735 = phi float [ %4731, %4718 ], [ %4657, %4648 ]
  %4736 = fadd fast float %4701, 0xBFD51EB860000000
  %4737 = fadd fast float %4702, 0xBFD51EB860000000
  %4738 = fadd fast float %4703, 0xBFD51EB860000000
  %4739 = fmul fast float %4736, %4736
  %4740 = fmul fast float %4737, %4737
  %4741 = fmul fast float %4738, %4738
  %4742 = fmul fast float %4739, %4739
  %4743 = fmul fast float %4742, 1.000000e+02
  %4744 = fmul fast float %4740, %4740
  %4745 = fmul fast float %4744, 1.000000e+02
  %4746 = fmul fast float %4741, %4741
  %4747 = fmul fast float %4746, 1.000000e+02
  %4748 = fadd fast float %4743, 3.500000e+00
  %4749 = fadd fast float %4745, 3.500000e+00
  %4750 = fadd fast float %4747, 3.500000e+00
  %4751 = call float @dx.op.binary.f32(i32 35, float %4733, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4752 = call float @dx.op.binary.f32(i32 35, float %4734, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4753 = call float @dx.op.binary.f32(i32 35, float %4735, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4754 = fdiv fast float %4748, %4751
  %4755 = fdiv fast float %4749, %4752
  %4756 = fdiv fast float %4750, %4753
  %4757 = fmul fast float %4053, 0xBFF7154760000000
  %4758 = fmul fast float %4757, %4754
  %4759 = call float @dx.op.unary.f32(i32 21, float %4758)  ; Exp(value)
  %4760 = fmul fast float %4759, 2.500000e-01
  %4761 = fmul fast float %4053, 0xBFDEC709E0000000
  %4762 = fmul fast float %4761, %4754
  %4763 = call float @dx.op.unary.f32(i32 21, float %4762)  ; Exp(value)
  %4764 = fmul fast float %4763, 7.500000e-01
  %4765 = fmul fast float %4757, %4755
  %4766 = call float @dx.op.unary.f32(i32 21, float %4765)  ; Exp(value)
  %4767 = fmul fast float %4766, 2.500000e-01
  %4768 = fmul fast float %4761, %4755
  %4769 = call float @dx.op.unary.f32(i32 21, float %4768)  ; Exp(value)
  %4770 = fmul fast float %4769, 7.500000e-01
  %4771 = fmul fast float %4757, %4756
  %4772 = call float @dx.op.unary.f32(i32 21, float %4771)  ; Exp(value)
  %4773 = fmul fast float %4772, 2.500000e-01
  %4774 = fmul fast float %4761, %4756
  %4775 = call float @dx.op.unary.f32(i32 21, float %4774)  ; Exp(value)
  %4776 = fmul fast float %4775, 7.500000e-01
  %4777 = fadd fast float %4760, %4764
  %4778 = fadd fast float %4767, %4770
  %4779 = fadd fast float %4773, %4776
  %4780 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4781 = extractvalue %dx.types.CBufRet.i32 %4780, 3
  %4782 = and i32 %4781, 8
  %4783 = icmp ne i32 %4782, 0
  %4784 = call float @dx.op.binary.f32(i32 35, float %4701, float %4686)  ; FMax(a,b)
  %4785 = call float @dx.op.binary.f32(i32 35, float %4702, float %4686)  ; FMax(a,b)
  %4786 = call float @dx.op.binary.f32(i32 35, float %4703, float %4686)  ; FMax(a,b)
  %4787 = call float @dx.op.dot3.f32(i32 55, float %4701, float %4702, float %4703, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4788 = select i1 %249, float %4686, float %4701
  %4789 = select i1 %249, float %4787, float %4702
  %4790 = select i1 %249, float 1.000000e+00, float %4703
  %4791 = select i1 %4783, float %4784, float %4788
  %4792 = select i1 %4783, float %4785, float %4789
  %4793 = select i1 %4783, float %4786, float %4790
  %4794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.f32 %4794, 0
  %4796 = extractvalue %dx.types.CBufRet.f32 %4794, 1
  %4797 = extractvalue %dx.types.CBufRet.f32 %4794, 2
  %4798 = fadd fast float %4795, %155
  %4799 = fadd fast float %4796, %156
  %4800 = fadd fast float %4797, %157
  %4801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4802 = extractvalue %dx.types.CBufRet.f32 %4801, 0
  %4803 = extractvalue %dx.types.CBufRet.f32 %4801, 1
  %4804 = fsub fast float %4798, %4802
  %4805 = fsub fast float %4799, %4803
  %4806 = fmul fast float %4804, %4804
  %4807 = fmul fast float %4805, %4805
  %4808 = fadd fast float %4806, %4807
  %4809 = call float @dx.op.unary.f32(i32 24, float %4808)  ; Sqrt(value)
  %4810 = extractvalue %dx.types.CBufRet.f32 %4801, 2
  %4811 = fcmp fast olt float %4809, %4810
  br i1 %4811, label %4812, label %4879

; <label>:4812                                    ; preds = %4732
  %4813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4814 = extractvalue %dx.types.CBufRet.f32 %4813, 0
  %4815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4816 = extractvalue %dx.types.CBufRet.f32 %4815, 0
  %4817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4818 = extractvalue %dx.types.CBufRet.f32 %4817, 0
  %4819 = extractvalue %dx.types.CBufRet.f32 %4813, 1
  %4820 = extractvalue %dx.types.CBufRet.f32 %4815, 1
  %4821 = extractvalue %dx.types.CBufRet.f32 %4817, 1
  %4822 = extractvalue %dx.types.CBufRet.f32 %4813, 3
  %4823 = extractvalue %dx.types.CBufRet.f32 %4815, 3
  %4824 = extractvalue %dx.types.CBufRet.f32 %4817, 3
  %4825 = fadd fast float %4822, %4798
  %4826 = fadd fast float %4823, %4799
  %4827 = fadd fast float %4824, %4800
  %4828 = fmul fast float %4825, %4814
  %4829 = call float @dx.op.tertiary.f32(i32 46, float %4826, float %4816, float %4828)  ; FMad(a,b,c)
  %4830 = call float @dx.op.tertiary.f32(i32 46, float %4827, float %4818, float %4829)  ; FMad(a,b,c)
  %4831 = fmul fast float %4825, %4819
  %4832 = call float @dx.op.tertiary.f32(i32 46, float %4826, float %4820, float %4831)  ; FMad(a,b,c)
  %4833 = call float @dx.op.tertiary.f32(i32 46, float %4827, float %4821, float %4832)  ; FMad(a,b,c)
  %4834 = fsub fast float %4830, %4822
  %4835 = fsub fast float %4833, %4823
  %4836 = fsub fast float %4834, %4802
  %4837 = fadd fast float %4836, %4810
  %4838 = fsub fast float %4835, %4803
  %4839 = fadd fast float %4838, %4810
  %4840 = extractvalue %dx.types.CBufRet.f32 %4801, 3
  %4841 = fmul fast float %4837, %4840
  %4842 = fmul fast float %4839, %4840
  %4843 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4844 = call float @dx.op.unary.f32(i32 7, float %4842)  ; Saturate(value)
  %4845 = fsub fast float 1.000000e+00, %4843
  %4846 = fsub fast float 1.000000e+00, %4844
  %4847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4845, float %4846, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4848 = extractvalue %dx.types.ResRet.f32 %4847, 0
  %4849 = fcmp fast ugt float %4848, 0.000000e+00
  br i1 %4849, label %4850, label %5153

; <label>:4850                                    ; preds = %4812
  %4851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.f32 %4851, 2
  %4853 = fmul fast float %4852, %4848
  %4854 = extractvalue %dx.types.CBufRet.f32 %4851, 3
  %4855 = fadd fast float %4854, %4853
  %4856 = extractvalue %dx.types.CBufRet.f32 %4817, 2
  %4857 = fadd fast float %4855, %4824
  %4858 = fmul fast float %4830, %4818
  %4859 = call float @dx.op.tertiary.f32(i32 46, float %4833, float %4821, float %4858)  ; FMad(a,b,c)
  %4860 = call float @dx.op.tertiary.f32(i32 46, float %4857, float %4856, float %4859)  ; FMad(a,b,c)
  %4861 = fsub fast float %4860, %4824
  %4862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4863 = extractvalue %dx.types.CBufRet.f32 %4862, 2
  %4864 = fsub fast float %4861, %4863
  %4865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4845, float %4846, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4866 = extractvalue %dx.types.ResRet.f32 %4865, 0
  %4867 = extractvalue %dx.types.ResRet.f32 %4865, 1
  %4868 = extractvalue %dx.types.ResRet.f32 %4865, 2
  %4869 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %4845, float %4846, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4870 = extractvalue %dx.types.ResRet.f32 %4869, 0
  %4871 = extractvalue %dx.types.ResRet.f32 %4869, 1
  %4872 = extractvalue %dx.types.ResRet.f32 %4869, 2
  %4873 = fadd fast float %4870, %4866
  %4874 = fmul fast float %4873, 0x3F847AE140000000
  %4875 = fadd fast float %4871, %4867
  %4876 = fmul fast float %4875, 0x3F847AE140000000
  %4877 = fadd fast float %4872, %4868
  %4878 = fmul fast float %4877, 0x3F847AE140000000
  br label %5153

; <label>:4879                                    ; preds = %4732
  %4880 = and i32 %225, 1
  %4881 = icmp eq i32 %4880, 0
  br i1 %4881, label %5153, label %4882

; <label>:4882                                    ; preds = %4879
  %4883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4884 = extractvalue %dx.types.CBufRet.f32 %4883, 0
  %4885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4886 = extractvalue %dx.types.CBufRet.f32 %4885, 0
  %4887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4888 = extractvalue %dx.types.CBufRet.f32 %4887, 0
  %4889 = extractvalue %dx.types.CBufRet.f32 %4883, 1
  %4890 = extractvalue %dx.types.CBufRet.f32 %4885, 1
  %4891 = extractvalue %dx.types.CBufRet.f32 %4887, 1
  %4892 = extractvalue %dx.types.CBufRet.f32 %4883, 3
  %4893 = extractvalue %dx.types.CBufRet.f32 %4885, 3
  %4894 = extractvalue %dx.types.CBufRet.f32 %4887, 3
  %4895 = fadd fast float %4892, %4798
  %4896 = fadd fast float %4893, %4799
  %4897 = fadd fast float %4894, %4800
  %4898 = fmul fast float %4895, %4884
  %4899 = call float @dx.op.tertiary.f32(i32 46, float %4896, float %4886, float %4898)  ; FMad(a,b,c)
  %4900 = call float @dx.op.tertiary.f32(i32 46, float %4897, float %4888, float %4899)  ; FMad(a,b,c)
  %4901 = fmul fast float %4895, %4889
  %4902 = call float @dx.op.tertiary.f32(i32 46, float %4896, float %4890, float %4901)  ; FMad(a,b,c)
  %4903 = call float @dx.op.tertiary.f32(i32 46, float %4897, float %4891, float %4902)  ; FMad(a,b,c)
  %4904 = fsub fast float %4900, %4892
  %4905 = fsub fast float %4903, %4893
  %4906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4907 = extractvalue %dx.types.CBufRet.f32 %4906, 0
  %4908 = extractvalue %dx.types.CBufRet.f32 %4906, 1
  %4909 = extractvalue %dx.types.CBufRet.f32 %4906, 2
  %4910 = extractvalue %dx.types.CBufRet.f32 %4906, 3
  %4911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4912 = extractvalue %dx.types.CBufRet.f32 %4911, 3
  %4913 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4914 = extractvalue %dx.types.CBufRet.i32 %4913, 0
  %4915 = extractvalue %dx.types.CBufRet.i32 %4913, 1
  %4916 = udiv i32 %4915, %4914
  %4917 = fsub fast float %4904, %4907
  %4918 = fsub fast float %4905, %4908
  %4919 = call float @dx.op.binary.f32(i32 35, float %4917, float 0.000000e+00)  ; FMax(a,b)
  %4920 = call float @dx.op.binary.f32(i32 35, float %4918, float 0.000000e+00)  ; FMax(a,b)
  %4921 = call float @dx.op.binary.f32(i32 36, float %4919, float %4909)  ; FMin(a,b)
  %4922 = call float @dx.op.binary.f32(i32 36, float %4920, float %4910)  ; FMin(a,b)
  %4923 = add i32 %4914, -1
  %4924 = add i32 %4916, -1
  %4925 = fmul fast float %4921, %4912
  %4926 = fmul fast float %4922, %4912
  %4927 = fptoui float %4925 to i32
  %4928 = fptoui float %4926 to i32
  %4929 = call i32 @dx.op.binary.i32(i32 40, i32 %4927, i32 %4923)  ; UMin(a,b)
  %4930 = call i32 @dx.op.binary.i32(i32 40, i32 %4928, i32 %4924)  ; UMin(a,b)
  %4931 = mul i32 %4930, %4914
  %4932 = add i32 %4931, %4929
  %4933 = shl i32 %4932, 2
  %4934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4933, i32 undef)  ; BufferLoad(srv,index,wot)
  %4935 = extractvalue %dx.types.ResRet.i32 %4934, 0
  %4936 = icmp eq i32 %4935, -1
  br i1 %4936, label %5153, label %4937

; <label>:4937                                    ; preds = %4882
  %4938 = mul i32 %4935, 148
  %4939 = add i32 %4938, 4
  %4940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4939, i32 undef)  ; BufferLoad(srv,index,wot)
  %4941 = extractvalue %dx.types.ResRet.f32 %4940, 0
  %4942 = add i32 %4938, 8
  %4943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4942, i32 undef)  ; BufferLoad(srv,index,wot)
  %4944 = extractvalue %dx.types.ResRet.f32 %4943, 0
  %4945 = add i32 %4938, 36
  %4946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4945, i32 undef)  ; BufferLoad(srv,index,wot)
  %4947 = extractvalue %dx.types.ResRet.f32 %4946, 0
  %4948 = add i32 %4938, 60
  %4949 = add i32 %4938, 92
  %4950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4949, i32 undef)  ; BufferLoad(srv,index,wot)
  %4951 = extractvalue %dx.types.ResRet.i32 %4950, 0
  %4952 = add i32 %4938, 116
  %4953 = fsub fast float %4904, %4941
  %4954 = fsub fast float %4905, %4944
  %4955 = fmul fast float %4912, %4953
  %4956 = fmul fast float %4912, %4954
  %4957 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4958 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  %4959 = fsub fast float 1.000000e+00, %4958
  %4960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4961 = extractvalue %dx.types.CBufRet.f32 %4960, 2
  %4962 = call float @dx.op.unary.f32(i32 83, float %4957)  ; DerivCoarseX(value)
  %4963 = call float @dx.op.unary.f32(i32 83, float %4959)  ; DerivCoarseX(value)
  %4964 = call float @dx.op.unary.f32(i32 84, float %4957)  ; DerivCoarseY(value)
  %4965 = call float @dx.op.unary.f32(i32 84, float %4959)  ; DerivCoarseY(value)
  %4966 = fmul fast float %4962, %4961
  %4967 = fmul fast float %4963, %4961
  %4968 = fmul fast float %4964, %4961
  %4969 = fmul fast float %4965, %4961
  %4970 = call float @dx.op.dot2.f32(i32 54, float %4968, float %4969, float %4968, float %4969)  ; Dot2(ax,ay,bx,by)
  %4971 = call float @dx.op.dot2.f32(i32 54, float %4966, float %4967, float %4966, float %4967)  ; Dot2(ax,ay,bx,by)
  %4972 = call float @dx.op.binary.f32(i32 35, float %4971, float %4970)  ; FMax(a,b)
  %4973 = call float @dx.op.unary.f32(i32 23, float %4972)  ; Log(value)
  %4974 = fmul fast float %4973, 5.000000e-01
  %4975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4976 = extractvalue %dx.types.CBufRet.f32 %4975, 1
  %4977 = fadd fast float %4976, %4974
  %4978 = call float @dx.op.binary.f32(i32 35, float %4977, float 0.000000e+00)  ; FMax(a,b)
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 3
  %4981 = fadd fast float %4980, %4978
  %4982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4983 = extractvalue %dx.types.CBufRet.f32 %4982, 3
  %4984 = fadd fast float %4981, %4983
  %4985 = add i32 %4951, 0
  %4986 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4985, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4987 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4986, i32 0)  ; GetDimensions(handle,mipLevel)
  %4988 = extractvalue %dx.types.Dimensions %4987, 0
  %4989 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4988)  ; FirstbitLo(value)
  %4990 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4991 = extractvalue %dx.types.CBufRet.i32 %4990, 1
  %4992 = sub nsw i32 %4991, %4989
  %4993 = sitofp i32 %4992 to float
  %4994 = fsub fast float %4984, %4993
  %4995 = call float @dx.op.binary.f32(i32 35, float %4994, float 0.000000e+00)  ; FMax(a,b)
  %4996 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4986, %dx.types.Handle %46, float %4957, float %4959, float %4947, float undef, i32 0, i32 0, i32 undef, float %4995)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4997 = extractvalue %dx.types.ResRet.f32 %4996, 0
  %4998 = fcmp ule float %4997, 0x3FE0101020000000
  %4999 = extractvalue %dx.types.CBufRet.i32 %4990, 0
  %5000 = and i32 %4999, 128
  %5001 = icmp ne i32 %5000, 0
  %5002 = and i1 %4998, %5001
  br i1 %5002, label %5153, label %5003

; <label>:5003                                    ; preds = %4937
  %5004 = add i32 %4938, 20
  %5005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5004, i32 undef)  ; BufferLoad(srv,index,wot)
  %5006 = extractvalue %dx.types.ResRet.f32 %5005, 0
  %5007 = add i32 %4938, 24
  %5008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5007, i32 undef)  ; BufferLoad(srv,index,wot)
  %5009 = extractvalue %dx.types.ResRet.f32 %5008, 0
  %5010 = add i32 %4938, 40
  %5011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5010, i32 undef)  ; BufferLoad(srv,index,wot)
  %5012 = extractvalue %dx.types.ResRet.f32 %5011, 0
  %5013 = add i32 %4938, 96
  %5014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5013, i32 undef)  ; BufferLoad(srv,index,wot)
  %5015 = extractvalue %dx.types.ResRet.i32 %5014, 0
  %5016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = extractvalue %dx.types.CBufRet.f32 %5016, 2
  %5018 = fmul fast float %5017, %4957
  %5019 = fmul fast float %5017, %4959
  %5020 = extractvalue %dx.types.CBufRet.f32 %5016, 3
  %5021 = fadd fast float %5018, %5020
  %5022 = fadd fast float %5019, %5020
  %5023 = add i32 %5015, 0
  %5024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5023, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5025 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5024, i32 0)  ; GetDimensions(handle,mipLevel)
  %5026 = extractvalue %dx.types.Dimensions %5025, 0
  %5027 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5026)  ; FirstbitLo(value)
  %5028 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5029 = extractvalue %dx.types.CBufRet.i32 %5028, 1
  %5030 = sub nsw i32 %5029, %5027
  %5031 = sitofp i32 %5030 to float
  %5032 = fsub fast float %4981, %5031
  %5033 = call float @dx.op.binary.f32(i32 35, float %5032, float 0.000000e+00)  ; FMax(a,b)
  %5034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5024, %dx.types.Handle %46, float %5021, float %5022, float %5012, float undef, i32 0, i32 0, i32 undef, float %5033)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5035 = extractvalue %dx.types.ResRet.f32 %5034, 0
  %5036 = fmul fast float %5035, %5006
  %5037 = fadd fast float %5036, %5009
  %5038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.f32 %5038, 0
  %5040 = extractvalue %dx.types.CBufRet.f32 %5038, 1
  %5041 = extractvalue %dx.types.CBufRet.f32 %5038, 2
  %5042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5043 = extractvalue %dx.types.CBufRet.f32 %5042, 3
  %5044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5045 = extractvalue %dx.types.CBufRet.f32 %5044, 3
  %5046 = extractvalue %dx.types.CBufRet.f32 %5038, 3
  %5047 = fadd fast float %5043, %4904
  %5048 = fadd fast float %5045, %4905
  %5049 = fadd fast float %5037, %5046
  %5050 = fmul fast float %5047, %5039
  %5051 = call float @dx.op.tertiary.f32(i32 46, float %5048, float %5040, float %5050)  ; FMad(a,b,c)
  %5052 = call float @dx.op.tertiary.f32(i32 46, float %5049, float %5041, float %5051)  ; FMad(a,b,c)
  %5053 = fsub fast float %5052, %5046
  %5054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5055 = extractvalue %dx.types.CBufRet.f32 %5054, 2
  %5056 = fsub fast float %5053, %5055
  %5057 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5058 = extractvalue %dx.types.CBufRet.i32 %5057, 0
  %5059 = call i32 @dx.op.binary.i32(i32 40, i32 %4935, i32 %5058)  ; UMin(a,b)
  %5060 = mul i32 %5059, 36
  %5061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5060, i32 undef)  ; BufferLoad(srv,index,wot)
  %5062 = extractvalue %dx.types.ResRet.i32 %5061, 0
  %5063 = add i32 %5060, 4
  %5064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.f32 %5064, 0
  %5066 = fmul fast float %5065, %4957
  %5067 = fmul fast float %5065, %4959
  %5068 = extractvalue %dx.types.CBufRet.f32 %5064, 1
  %5069 = fadd fast float %5066, %5068
  %5070 = fadd fast float %5067, %5068
  %5071 = icmp eq i32 %5062, 0
  br i1 %5071, label %5140, label %5072

; <label>:5072                                    ; preds = %5003
  br label %5073

; <label>:5073                                    ; preds = %5130, %5072
  %5074 = phi float [ %5131, %5130 ], [ 0.000000e+00, %5072 ]
  %5075 = phi float [ %5132, %5130 ], [ 0.000000e+00, %5072 ]
  %5076 = phi float [ %5133, %5130 ], [ 0.000000e+00, %5072 ]
  %5077 = phi float [ %5134, %5130 ], [ 0.000000e+00, %5072 ]
  %5078 = phi float [ %5135, %5130 ], [ 0.000000e+00, %5072 ]
  %5079 = phi float [ %5136, %5130 ], [ 0.000000e+00, %5072 ]
  %5080 = phi i32 [ %5137, %5130 ], [ 0, %5072 ]
  %5081 = shl i32 %5080, 2
  %5082 = add i32 %4948, %5081
  %5083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5082, i32 undef)  ; BufferLoad(srv,index,wot)
  %5084 = extractvalue %dx.types.ResRet.f32 %5083, 0
  %5085 = add i32 %4952, %5081
  %5086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5085, i32 undef)  ; BufferLoad(srv,index,wot)
  %5087 = extractvalue %dx.types.ResRet.i32 %5086, 0
  %5088 = add i32 %5087, 0
  %5089 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5088, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5090 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5089, i32 0)  ; GetDimensions(handle,mipLevel)
  %5091 = extractvalue %dx.types.Dimensions %5090, 0
  %5092 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5091)  ; FirstbitLo(value)
  %5093 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5094 = extractvalue %dx.types.CBufRet.i32 %5093, 1
  %5095 = sub nsw i32 %5094, %5092
  %5096 = sitofp i32 %5095 to float
  %5097 = fsub fast float %4981, %5096
  %5098 = call float @dx.op.binary.f32(i32 35, float %5097, float 0.000000e+00)  ; FMax(a,b)
  %5099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5089, %dx.types.Handle %46, float %5069, float %5070, float %5084, float undef, i32 0, i32 0, i32 undef, float %5098)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5100 = extractvalue %dx.types.ResRet.f32 %5099, 0
  %5101 = fcmp fast ogt float %5100, 0.000000e+00
  br i1 %5101, label %5102, label %5130

; <label>:5102                                    ; preds = %5073
  %5103 = add i32 %5063, %5081
  %5104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5103, i32 undef)  ; BufferLoad(srv,index,wot)
  %5105 = extractvalue %dx.types.ResRet.i32 %5104, 0
  %5106 = and i32 %5105, 32767
  %5107 = mul nuw nsw i32 %5106, 928
  %5108 = add nuw nsw i32 %5107, 48
  %5109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5108, i32 undef)  ; BufferLoad(srv,index,wot)
  %5110 = extractvalue %dx.types.ResRet.f32 %5109, 0
  %5111 = extractvalue %dx.types.ResRet.f32 %5109, 1
  %5112 = extractvalue %dx.types.ResRet.f32 %5109, 2
  %5113 = add nuw nsw i32 %5107, 60
  %5114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5113, i32 undef)  ; BufferLoad(srv,index,wot)
  %5115 = extractvalue %dx.types.ResRet.f32 %5114, 0
  %5116 = extractvalue %dx.types.ResRet.f32 %5114, 1
  %5117 = extractvalue %dx.types.ResRet.f32 %5114, 2
  %5118 = fmul fast float %5110, %5100
  %5119 = fmul fast float %5111, %5100
  %5120 = fmul fast float %5112, %5100
  %5121 = fadd fast float %5118, %5074
  %5122 = fadd fast float %5119, %5075
  %5123 = fadd fast float %5120, %5076
  %5124 = fmul fast float %5115, %5100
  %5125 = fmul fast float %5116, %5100
  %5126 = fmul fast float %5117, %5100
  %5127 = fadd fast float %5124, %5077
  %5128 = fadd fast float %5125, %5078
  %5129 = fadd fast float %5126, %5079
  br label %5130

; <label>:5130                                    ; preds = %5102, %5073
  %5131 = phi float [ %5121, %5102 ], [ %5074, %5073 ]
  %5132 = phi float [ %5122, %5102 ], [ %5075, %5073 ]
  %5133 = phi float [ %5123, %5102 ], [ %5076, %5073 ]
  %5134 = phi float [ %5127, %5102 ], [ %5077, %5073 ]
  %5135 = phi float [ %5128, %5102 ], [ %5078, %5073 ]
  %5136 = phi float [ %5129, %5102 ], [ %5079, %5073 ]
  %5137 = add nuw i32 %5080, 1
  %5138 = icmp eq i32 %5137, %5062
  br i1 %5138, label %5139, label %5073

; <label>:5139                                    ; preds = %5130
  br label %5140

; <label>:5140                                    ; preds = %5139, %5003
  %5141 = phi float [ 0.000000e+00, %5003 ], [ %5131, %5139 ]
  %5142 = phi float [ 0.000000e+00, %5003 ], [ %5132, %5139 ]
  %5143 = phi float [ 0.000000e+00, %5003 ], [ %5133, %5139 ]
  %5144 = phi float [ 0.000000e+00, %5003 ], [ %5134, %5139 ]
  %5145 = phi float [ 0.000000e+00, %5003 ], [ %5135, %5139 ]
  %5146 = phi float [ 0.000000e+00, %5003 ], [ %5136, %5139 ]
  %5147 = fadd fast float %5144, %5141
  %5148 = fmul fast float %5147, 0x3F847AE140000000
  %5149 = fadd fast float %5145, %5142
  %5150 = fmul fast float %5149, 0x3F847AE140000000
  %5151 = fadd fast float %5146, %5143
  %5152 = fmul fast float %5151, 0x3F847AE140000000
  br label %5153

; <label>:5153                                    ; preds = %5140, %4937, %4882, %4879, %4850, %4812
  %5154 = phi float [ %4864, %4850 ], [ -1.310720e+05, %4812 ], [ %5056, %5140 ], [ -1.310720e+05, %4882 ], [ -1.310720e+05, %4937 ], [ -1.310720e+05, %4879 ]
  %5155 = phi float [ %4874, %4850 ], [ 0.000000e+00, %4812 ], [ %5148, %5140 ], [ 0.000000e+00, %4882 ], [ 0.000000e+00, %4937 ], [ 0.000000e+00, %4879 ]
  %5156 = phi float [ %4876, %4850 ], [ 0.000000e+00, %4812 ], [ %5150, %5140 ], [ 0.000000e+00, %4882 ], [ 0.000000e+00, %4937 ], [ 0.000000e+00, %4879 ]
  %5157 = phi float [ %4878, %4850 ], [ 0.000000e+00, %4812 ], [ %5152, %5140 ], [ 0.000000e+00, %4882 ], [ 0.000000e+00, %4937 ], [ 0.000000e+00, %4879 ]
  %5158 = phi i1 [ true, %4850 ], [ false, %4812 ], [ true, %5140 ], [ false, %4882 ], [ false, %4937 ], [ false, %4879 ]
  %5159 = and i32 %225, 3
  %5160 = icmp eq i32 %5159, 1
  %5161 = select i1 %5160, float 1.000000e+00, float 0.000000e+00
  %5162 = fsub fast float %5154, %157
  %5163 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5164 = select i1 %5158, float %5163, float 1.000000e+00
  %5165 = fmul fast float %5164, %5161
  %5166 = icmp eq i32 %5159, 3
  %5167 = select i1 %5166, float 1.000000e+00, float %5165
  %5168 = call float @dx.op.binary.f32(i32 35, float %4667, float %5167)  ; FMax(a,b)
  %5169 = call float @dx.op.unary.f32(i32 7, float %5168)  ; Saturate(value)
  %5170 = fcmp fast une float %5169, 0.000000e+00
  %5171 = fsub fast float -0.000000e+00, %175
  %5172 = fsub fast float -0.000000e+00, %176
  %5173 = fsub fast float -0.000000e+00, %177
  br i1 %5170, label %5174, label %5336

; <label>:5174                                    ; preds = %5153
  %5175 = call float @dx.op.dot3.f32(i32 55, float %5171, float %5172, float %5173, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %5176 = fmul fast float %5169, 2.500000e+00
  %5177 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  %5178 = fmul fast float %5169, 0x4013FFFFE0000000
  %5179 = fadd fast float %5178, 0xBFFFFFFFE0000000
  %5180 = call float @dx.op.unary.f32(i32 7, float %5179)  ; Saturate(value)
  %5181 = fmul fast float %5169, 0x4004000020000000
  %5182 = fadd fast float %5181, 0xBFF8000040000000
  %5183 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5184 = call float @dx.op.unary.f32(i32 7, float %5177)  ; Saturate(value)
  %5185 = fmul fast float %4692, 1.000000e+01
  %5186 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5187 = fmul fast float %5186, 2.000000e+00
  %5188 = fsub fast float 3.000000e+00, %5187
  %5189 = fmul fast float %5186, %5186
  %5190 = fmul fast float %5189, %5188
  %5191 = fsub fast float 1.000000e+00, %5190
  %5192 = fsub fast float 0x3FE3333340000000, %4713
  %5193 = fmul fast float %5192, 0x400AAAAAA0000000
  %5194 = call float @dx.op.unary.f32(i32 7, float %5193)  ; Saturate(value)
  %5195 = fmul fast float %5191, %5194
  %5196 = fmul fast float %4791, 0x3FEA2B8620000000
  %5197 = fmul fast float %4792, 0x3FEA2B8620000000
  %5198 = fmul fast float %4793, 0x3FEA2B8620000000
  %5199 = fadd fast float %5196, 0x3FC81DFBA0000000
  %5200 = fmul fast float %5199, %4791
  %5201 = fadd fast float %5200, 0x3F910E6020000000
  %5202 = fadd fast float %5197, 0x3FC81DFBA0000000
  %5203 = fmul fast float %5202, %4792
  %5204 = fadd fast float %5203, 0x3F910E6020000000
  %5205 = fadd fast float %5198, 0x3FC81DFBA0000000
  %5206 = fmul fast float %5205, %4793
  %5207 = fadd fast float %5206, 0x3F910E6020000000
  %5208 = call float @dx.op.unary.f32(i32 7, float %5201)  ; Saturate(value)
  %5209 = call float @dx.op.unary.f32(i32 7, float %5204)  ; Saturate(value)
  %5210 = call float @dx.op.unary.f32(i32 7, float %5207)  ; Saturate(value)
  %5211 = fsub fast float %5208, %4791
  %5212 = fsub fast float %5209, %4792
  %5213 = fsub fast float %5210, %4793
  %5214 = fmul fast float %5211, %5184
  %5215 = fmul fast float %5214, %5195
  %5216 = fmul fast float %5212, %5184
  %5217 = fmul fast float %5216, %5195
  %5218 = fmul fast float %5213, %5184
  %5219 = fmul fast float %5218, %5195
  %5220 = fadd fast float %5215, %4791
  %5221 = fadd fast float %5217, %4792
  %5222 = fadd fast float %5219, %4793
  %5223 = fmul fast float %4664, %4664
  %5224 = fmul fast float %5223, %5223
  %5225 = fadd fast float %5180, 1.000000e+00
  %5226 = fsub fast float %5225, %5195
  %5227 = call float @dx.op.unary.f32(i32 7, float %5226)  ; Saturate(value)
  %5228 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5229 = call float @dx.op.unary.f32(i32 7, float %5228)  ; Saturate(value)
  %5230 = fsub fast float 1.000000e+00, %5224
  %5231 = call float @dx.op.binary.f32(i32 36, float %5227, float %5230)  ; FMin(a,b)
  %5232 = call float @dx.op.unary.f32(i32 7, float %5183)  ; Saturate(value)
  %5233 = call float @dx.op.binary.f32(i32 35, float %5231, float %5232)  ; FMax(a,b)
  %5234 = fadd fast float %5229, 0xBFE4CCCCC0000000
  %5235 = fmul fast float %5234, 0x4006DB6DA0000000
  %5236 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5237 = fmul fast float %5236, 2.000000e+00
  %5238 = fsub fast float 3.000000e+00, %5237
  %5239 = bitcast float %4710 to i32
  %5240 = ashr i32 %5239, 1
  %5241 = add nsw i32 %5240, 532487669
  %5242 = bitcast i32 %5241 to float
  %5243 = fsub fast float 1.000000e+00, %5242
  %5244 = bitcast float %5243 to i32
  %5245 = sub nsw i32 2129859010, %5244
  %5246 = bitcast i32 %5245 to float
  %5247 = fmul fast float %5246, 2.000000e+00
  %5248 = bitcast float %4711 to i32
  %5249 = ashr i32 %5248, 1
  %5250 = add nsw i32 %5249, 532487669
  %5251 = bitcast i32 %5250 to float
  %5252 = fsub fast float 1.000000e+00, %5251
  %5253 = bitcast float %5252 to i32
  %5254 = sub nsw i32 2129859010, %5253
  %5255 = bitcast i32 %5254 to float
  %5256 = fmul fast float %5255, 2.000000e+00
  %5257 = bitcast float %4712 to i32
  %5258 = ashr i32 %5257, 1
  %5259 = add nsw i32 %5258, 532487669
  %5260 = bitcast i32 %5259 to float
  %5261 = fsub fast float 1.000000e+00, %5260
  %5262 = bitcast float %5261 to i32
  %5263 = sub nsw i32 2129859010, %5262
  %5264 = bitcast i32 %5263 to float
  %5265 = fmul fast float %5264, 2.000000e+00
  %5266 = fsub fast float 0x4002A9FBE0000000, %5247
  %5267 = fadd fast float %5247, 0x3FD54FDF00000000
  %5268 = bitcast float %5267 to i32
  %5269 = sub nsw i32 2129859010, %5268
  %5270 = bitcast i32 %5269 to float
  %5271 = fmul fast float %5270, %5266
  %5272 = fmul fast float %5271, %5271
  %5273 = fsub fast float 0x4002A9FBE0000000, %5256
  %5274 = fadd fast float %5256, 0x3FD54FDF00000000
  %5275 = bitcast float %5274 to i32
  %5276 = sub nsw i32 2129859010, %5275
  %5277 = bitcast i32 %5276 to float
  %5278 = fmul fast float %5277, %5273
  %5279 = fmul fast float %5278, %5278
  %5280 = fsub fast float 0x4002A9FBE0000000, %5265
  %5281 = fadd fast float %5265, 0x3FD54FDF00000000
  %5282 = bitcast float %5281 to i32
  %5283 = sub nsw i32 2129859010, %5282
  %5284 = bitcast i32 %5283 to float
  %5285 = fmul fast float %5284, %5280
  %5286 = fmul fast float %5285, %5285
  %5287 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5272)  ; FMax(a,b)
  %5288 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5279)  ; FMax(a,b)
  %5289 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5286)  ; FMax(a,b)
  %5290 = fsub fast float 1.000000e+00, %5175
  %5291 = fadd fast float %5290, %5191
  %5292 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5293 = fsub fast float 1.000000e+00, %5167
  %5294 = fmul fast float %5233, %5293
  %5295 = fmul fast float %5236, %5236
  %5296 = fmul fast float %5295, %5294
  %5297 = fmul fast float %5296, %5238
  %5298 = fmul fast float %5293, 0xBFE99999A0000000
  %5299 = fmul fast float %5298, %5184
  %5300 = fmul fast float %5299, %5195
  %5301 = fadd fast float %5300, 1.000000e+00
  %5302 = fadd fast float %4713, -1.000000e+00
  %5303 = fmul fast float %5301, %5302
  %5304 = fadd fast float %5303, 1.000000e+00
  %5305 = fsub fast float %5287, %4710
  %5306 = fsub fast float %5288, %4711
  %5307 = fsub fast float %5289, %4712
  %5308 = fmul fast float %5297, %5305
  %5309 = fmul fast float %5297, %5306
  %5310 = fmul fast float %5297, %5307
  %5311 = fadd fast float %5308, %4710
  %5312 = fadd fast float %5309, %4711
  %5313 = fadd fast float %5310, %4712
  %5314 = fsub fast float %107, %4649
  %5315 = fsub fast float %108, %4650
  %5316 = fsub fast float %109, %4651
  %5317 = fmul fast float %5297, %5314
  %5318 = fmul fast float %5297, %5315
  %5319 = fmul fast float %5297, %5316
  %5320 = fadd fast float %5317, %4649
  %5321 = fadd fast float %5318, %4650
  %5322 = fadd fast float %5319, %4651
  %5323 = fmul fast float %5297, %5292
  %5324 = call float @dx.op.unary.f32(i32 7, float %5304)  ; Saturate(value)
  %5325 = fsub fast float 1.000000e+00, %5324
  %5326 = fmul fast float %5323, %5325
  %5327 = fadd fast float %5326, %5324
  %5328 = fsub fast float 1.000000e+00, %4664
  %5329 = fmul fast float %5297, %5328
  %5330 = fadd fast float %5329, %4664
  %5331 = call float @dx.op.dot3.f32(i32 55, float %5320, float %5321, float %5322, float %5320, float %5321, float %5322)  ; Dot3(ax,ay,az,bx,by,bz)
  %5332 = call float @dx.op.unary.f32(i32 25, float %5331)  ; Rsqrt(value)
  %5333 = fmul fast float %5320, %5332
  %5334 = fmul fast float %5321, %5332
  %5335 = fmul fast float %5322, %5332
  br label %5336

; <label>:5336                                    ; preds = %5174, %5153
  %5337 = phi float [ %5220, %5174 ], [ %4791, %5153 ]
  %5338 = phi float [ %5221, %5174 ], [ %4792, %5153 ]
  %5339 = phi float [ %5222, %5174 ], [ %4793, %5153 ]
  %5340 = phi float [ %5311, %5174 ], [ %4710, %5153 ]
  %5341 = phi float [ %5312, %5174 ], [ %4711, %5153 ]
  %5342 = phi float [ %5313, %5174 ], [ %4712, %5153 ]
  %5343 = phi float [ %5333, %5174 ], [ %4649, %5153 ]
  %5344 = phi float [ %5334, %5174 ], [ %4650, %5153 ]
  %5345 = phi float [ %5335, %5174 ], [ %4651, %5153 ]
  %5346 = phi float [ %5327, %5174 ], [ %4713, %5153 ]
  %5347 = phi float [ %5330, %5174 ], [ %4664, %5153 ]
  %5348 = fsub fast float -0.000000e+00, %157
  %5349 = select i1 %249, float 0.000000e+00, float %5342
  %5350 = call float @dx.op.dot3.f32(i32 55, float %5343, float %5344, float %5345, float %5171, float %5172, float %5173)  ; Dot3(ax,ay,az,bx,by,bz)
  %5351 = call float @dx.op.unary.f32(i32 7, float %5350)  ; Saturate(value)
  %5352 = call float @dx.op.dot3.f32(i32 55, float %175, float %176, float %177, float %5343, float %5344, float %5345)  ; Dot3(ax,ay,az,bx,by,bz)
  %5353 = fmul fast float %5352, 2.000000e+00
  %5354 = fmul fast float %5353, %5343
  %5355 = fmul fast float %5353, %5344
  %5356 = fmul fast float %5353, %5345
  %5357 = fsub fast float %175, %5354
  %5358 = fsub fast float %176, %5355
  %5359 = fsub fast float %177, %5356
  %5360 = call float @dx.op.binary.f32(i32 36, float %5347, float 1.000000e+00)  ; FMin(a,b)
  %5361 = fsub fast float 1.000000e+00, %5347
  %5362 = bitcast float %5361 to i32
  %5363 = sub nsw i32 2129859010, %5362
  %5364 = bitcast i32 %5363 to float
  %5365 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %5366 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5367 = fcmp fast oeq float %5366, 0.000000e+00
  %5368 = fcmp fast oeq float %5365, 0.000000e+00
  %5369 = or i1 %5368, %5367
  br i1 %5369, label %5399, label %5370

; <label>:5370                                    ; preds = %5336
  %5371 = fsub fast float -0.000000e+00, %74
  %5372 = fsub fast float -0.000000e+00, %72
  %5373 = call float @dx.op.unary.f32(i32 24, float %5366)  ; Sqrt(value)
  %5374 = fdiv fast float %5373, %5365
  %5375 = fcmp fast ogt float %5374, 0x3FFB6F8900000000
  %5376 = select i1 %5375, float 0x3FFB6F8900000000, float %5374
  %5377 = fmul fast float %5376, 0x3FE8A23460000000
  %5378 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  %5379 = call float @dx.op.binary.f32(i32 35, float %5376, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5380 = fmul fast float %5378, %5365
  %5381 = fmul fast float %5379, 0x3FF279A740000000
  %5382 = fadd fast float %5381, -1.000000e+00
  %5383 = call float @dx.op.dot3.f32(i32 55, float %5371, float %5372, float %73, float %5371, float %5372, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5384 = call float @dx.op.unary.f32(i32 25, float %5383)  ; Rsqrt(value)
  %5385 = fmul fast float %5384, %5371
  %5386 = fmul fast float %5384, %5372
  %5387 = fmul fast float %5384, %73
  %5388 = fmul fast float %5382, %5382
  %5389 = fsub fast float 1.000000e+00, %5388
  %5390 = fmul fast float %5379, 0x40005F8BE0000000
  %5391 = fsub fast float 0x400C5BF8A0000000, %5390
  %5392 = fdiv fast float %5380, %5391
  %5393 = fmul fast float %5392, 0x3FEE31C3C0000000
  %5394 = fmul fast float %5393, %5389
  %5395 = fmul fast float %5379, 0x3FDACB7480000000
  %5396 = fadd fast float %5395, 0xBFD7347680000000
  %5397 = fmul fast float %5396, %5392
  %5398 = fmul fast float %5397, %5389
  br label %5399

; <label>:5399                                    ; preds = %5370, %5336
  %5400 = phi float [ %5385, %5370 ], [ 0.000000e+00, %5336 ]
  %5401 = phi float [ %5386, %5370 ], [ 0.000000e+00, %5336 ]
  %5402 = phi float [ %5387, %5370 ], [ 0.000000e+00, %5336 ]
  %5403 = phi float [ %5394, %5370 ], [ 0.000000e+00, %5336 ]
  %5404 = phi float [ %5398, %5370 ], [ 0.000000e+00, %5336 ]
  %5405 = call float @dx.op.dot3.f32(i32 55, float %5400, float %5401, float %5402, float %5343, float %5344, float %5345)  ; Dot3(ax,ay,az,bx,by,bz)
  %5406 = fmul fast float %5405, 0x3FDF454380000000
  %5407 = fmul fast float %5405, %5405
  %5408 = fmul fast float %5407, 0x3FEE471020000000
  %5409 = fadd fast float %5408, 0xBFD42F6020000000
  %5410 = fmul fast float %5365, 0x3FD20DD760000000
  %5411 = fmul fast float %5409, %5404
  %5412 = fadd fast float %5411, %5410
  %5413 = fmul fast float %5406, %5403
  %5414 = fadd fast float %5412, %5413
  %5415 = fsub fast float %5412, %5413
  %5416 = call float @dx.op.dot3.f32(i32 55, float %5400, float %5401, float %5402, float %5357, float %5358, float %5359)  ; Dot3(ax,ay,az,bx,by,bz)
  %5417 = fmul fast float %5416, 0x3FDF454380000000
  %5418 = fmul fast float %5416, %5416
  %5419 = fmul fast float %5418, 0x3FEE471020000000
  %5420 = fadd fast float %5419, 0xBFD42F6020000000
  %5421 = call float @dx.op.dot3.f32(i32 55, float %5365, float %5403, float %5404, float 0x3FD20DD760000000, float %5417, float %5420)  ; Dot3(ax,ay,az,bx,by,bz)
  %5422 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %67)  ; FMax(a,b)
  %5423 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5424 = fcmp fast oeq float %5423, 0.000000e+00
  %5425 = fcmp fast oeq float %5422, 0.000000e+00
  %5426 = or i1 %5425, %5424
  br i1 %5426, label %5456, label %5427

; <label>:5427                                    ; preds = %5399
  %5428 = fsub fast float -0.000000e+00, %70
  %5429 = fsub fast float -0.000000e+00, %68
  %5430 = call float @dx.op.unary.f32(i32 24, float %5423)  ; Sqrt(value)
  %5431 = fdiv fast float %5430, %5422
  %5432 = fcmp fast ogt float %5431, 0x3FFB6F8900000000
  %5433 = select i1 %5432, float 0x3FFB6F8900000000, float %5431
  %5434 = fmul fast float %5433, 0x3FE8A23460000000
  %5435 = call float @dx.op.unary.f32(i32 7, float %5434)  ; Saturate(value)
  %5436 = call float @dx.op.binary.f32(i32 35, float %5433, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5437 = fmul fast float %5435, %5422
  %5438 = fmul fast float %5436, 0x3FF279A740000000
  %5439 = fadd fast float %5438, -1.000000e+00
  %5440 = call float @dx.op.dot3.f32(i32 55, float %5428, float %5429, float %69, float %5428, float %5429, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5441 = call float @dx.op.unary.f32(i32 25, float %5440)  ; Rsqrt(value)
  %5442 = fmul fast float %5441, %5428
  %5443 = fmul fast float %5441, %5429
  %5444 = fmul fast float %5441, %69
  %5445 = fmul fast float %5439, %5439
  %5446 = fsub fast float 1.000000e+00, %5445
  %5447 = fmul fast float %5436, 0x40005F8BE0000000
  %5448 = fsub fast float 0x400C5BF8A0000000, %5447
  %5449 = fdiv fast float %5437, %5448
  %5450 = fmul fast float %5449, 0x3FEE31C3C0000000
  %5451 = fmul fast float %5450, %5446
  %5452 = fmul fast float %5436, 0x3FDACB7480000000
  %5453 = fadd fast float %5452, 0xBFD7347680000000
  %5454 = fmul fast float %5453, %5449
  %5455 = fmul fast float %5454, %5446
  br label %5456

; <label>:5456                                    ; preds = %5427, %5399
  %5457 = phi float [ %5442, %5427 ], [ 0.000000e+00, %5399 ]
  %5458 = phi float [ %5443, %5427 ], [ 0.000000e+00, %5399 ]
  %5459 = phi float [ %5444, %5427 ], [ 0.000000e+00, %5399 ]
  %5460 = phi float [ %5451, %5427 ], [ 0.000000e+00, %5399 ]
  %5461 = phi float [ %5455, %5427 ], [ 0.000000e+00, %5399 ]
  %5462 = call float @dx.op.dot3.f32(i32 55, float %5457, float %5458, float %5459, float %5343, float %5344, float %5345)  ; Dot3(ax,ay,az,bx,by,bz)
  %5463 = fmul fast float %5462, 0x3FDF454380000000
  %5464 = fmul fast float %5462, %5462
  %5465 = fmul fast float %5464, 0x3FEE471020000000
  %5466 = fadd fast float %5465, 0xBFD42F6020000000
  %5467 = fmul fast float %5422, 0x3FD20DD760000000
  %5468 = fmul fast float %5466, %5461
  %5469 = fadd fast float %5468, %5467
  %5470 = fmul fast float %5463, %5460
  %5471 = fadd fast float %5469, %5470
  %5472 = fsub fast float %5469, %5470
  %5473 = call float @dx.op.dot3.f32(i32 55, float %5457, float %5458, float %5459, float %5357, float %5358, float %5359)  ; Dot3(ax,ay,az,bx,by,bz)
  %5474 = fmul fast float %5473, 0x3FDF454380000000
  %5475 = fmul fast float %5473, %5473
  %5476 = fmul fast float %5475, 0x3FEE471020000000
  %5477 = fadd fast float %5476, 0xBFD42F6020000000
  %5478 = call float @dx.op.dot3.f32(i32 55, float %5422, float %5460, float %5461, float 0x3FD20DD760000000, float %5474, float %5477)  ; Dot3(ax,ay,az,bx,by,bz)
  %5479 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %63)  ; FMax(a,b)
  %5480 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5481 = fcmp fast oeq float %5480, 0.000000e+00
  %5482 = fcmp fast oeq float %5479, 0.000000e+00
  %5483 = or i1 %5482, %5481
  br i1 %5483, label %5513, label %5484

; <label>:5484                                    ; preds = %5456
  %5485 = fsub fast float -0.000000e+00, %66
  %5486 = fsub fast float -0.000000e+00, %64
  %5487 = call float @dx.op.unary.f32(i32 24, float %5480)  ; Sqrt(value)
  %5488 = fdiv fast float %5487, %5479
  %5489 = fcmp fast ogt float %5488, 0x3FFB6F8900000000
  %5490 = select i1 %5489, float 0x3FFB6F8900000000, float %5488
  %5491 = fmul fast float %5490, 0x3FE8A23460000000
  %5492 = call float @dx.op.unary.f32(i32 7, float %5491)  ; Saturate(value)
  %5493 = call float @dx.op.binary.f32(i32 35, float %5490, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5494 = fmul fast float %5492, %5479
  %5495 = fmul fast float %5493, 0x3FF279A740000000
  %5496 = fadd fast float %5495, -1.000000e+00
  %5497 = call float @dx.op.dot3.f32(i32 55, float %5485, float %5486, float %65, float %5485, float %5486, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = call float @dx.op.unary.f32(i32 25, float %5497)  ; Rsqrt(value)
  %5499 = fmul fast float %5498, %5485
  %5500 = fmul fast float %5498, %5486
  %5501 = fmul fast float %5498, %65
  %5502 = fmul fast float %5496, %5496
  %5503 = fsub fast float 1.000000e+00, %5502
  %5504 = fmul fast float %5493, 0x40005F8BE0000000
  %5505 = fsub fast float 0x400C5BF8A0000000, %5504
  %5506 = fdiv fast float %5494, %5505
  %5507 = fmul fast float %5506, 0x3FEE31C3C0000000
  %5508 = fmul fast float %5507, %5503
  %5509 = fmul fast float %5493, 0x3FDACB7480000000
  %5510 = fadd fast float %5509, 0xBFD7347680000000
  %5511 = fmul fast float %5510, %5506
  %5512 = fmul fast float %5511, %5503
  br label %5513

; <label>:5513                                    ; preds = %5484, %5456
  %5514 = phi float [ %5499, %5484 ], [ 0.000000e+00, %5456 ]
  %5515 = phi float [ %5500, %5484 ], [ 0.000000e+00, %5456 ]
  %5516 = phi float [ %5501, %5484 ], [ 0.000000e+00, %5456 ]
  %5517 = phi float [ %5508, %5484 ], [ 0.000000e+00, %5456 ]
  %5518 = phi float [ %5512, %5484 ], [ 0.000000e+00, %5456 ]
  %5519 = call float @dx.op.dot3.f32(i32 55, float %5514, float %5515, float %5516, float %5343, float %5344, float %5345)  ; Dot3(ax,ay,az,bx,by,bz)
  %5520 = fmul fast float %5519, 0x3FDF454380000000
  %5521 = fmul fast float %5519, %5519
  %5522 = fmul fast float %5521, 0x3FEE471020000000
  %5523 = fadd fast float %5522, 0xBFD42F6020000000
  %5524 = fmul fast float %5479, 0x3FD20DD760000000
  %5525 = fmul fast float %5523, %5518
  %5526 = fadd fast float %5525, %5524
  %5527 = fmul fast float %5520, %5517
  %5528 = fadd fast float %5526, %5527
  %5529 = fsub fast float %5526, %5527
  %5530 = call float @dx.op.dot3.f32(i32 55, float %5514, float %5515, float %5516, float %5357, float %5358, float %5359)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = fmul fast float %5530, 0x3FDF454380000000
  %5532 = fmul fast float %5530, %5530
  %5533 = fmul fast float %5532, 0x3FEE471020000000
  %5534 = fadd fast float %5533, 0xBFD42F6020000000
  %5535 = call float @dx.op.dot3.f32(i32 55, float %5479, float %5517, float %5518, float 0x3FD20DD760000000, float %5531, float %5534)  ; Dot3(ax,ay,az,bx,by,bz)
  %5536 = call float @dx.op.binary.f32(i32 35, float %5414, float 0.000000e+00)  ; FMax(a,b)
  %5537 = call float @dx.op.binary.f32(i32 35, float %5471, float 0.000000e+00)  ; FMax(a,b)
  %5538 = call float @dx.op.binary.f32(i32 35, float %5528, float 0.000000e+00)  ; FMax(a,b)
  %5539 = call float @dx.op.binary.f32(i32 35, float %5415, float 0.000000e+00)  ; FMax(a,b)
  %5540 = call float @dx.op.binary.f32(i32 35, float %5472, float 0.000000e+00)  ; FMax(a,b)
  %5541 = call float @dx.op.binary.f32(i32 35, float %5529, float 0.000000e+00)  ; FMax(a,b)
  %5542 = call float @dx.op.binary.f32(i32 35, float %5421, float 0.000000e+00)  ; FMax(a,b)
  %5543 = call float @dx.op.binary.f32(i32 35, float %5478, float 0.000000e+00)  ; FMax(a,b)
  %5544 = call float @dx.op.binary.f32(i32 35, float %5535, float 0.000000e+00)  ; FMax(a,b)
  %5545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5546 = extractvalue %dx.types.CBufRet.f32 %5545, 0
  %5547 = call float @dx.op.binary.f32(i32 36, float %5337, float %5546)  ; FMin(a,b)
  %5548 = fsub fast float 1.000000e+00, %5360
  %5549 = fmul fast float %5547, %5548
  %5550 = fsub fast float 1.000000e+00, %5549
  %5551 = bitcast float %5550 to i32
  %5552 = sub nsw i32 2129859010, %5551
  %5553 = bitcast i32 %5552 to float
  %5554 = call float @dx.op.binary.f32(i32 36, float %5338, float %5546)  ; FMin(a,b)
  %5555 = fmul fast float %5554, %5548
  %5556 = fsub fast float 1.000000e+00, %5555
  %5557 = bitcast float %5556 to i32
  %5558 = sub nsw i32 2129859010, %5557
  %5559 = bitcast i32 %5558 to float
  %5560 = call float @dx.op.binary.f32(i32 36, float %5339, float %5546)  ; FMin(a,b)
  %5561 = fmul fast float %5560, %5548
  %5562 = fsub fast float 1.000000e+00, %5561
  %5563 = bitcast float %5562 to i32
  %5564 = sub nsw i32 2129859010, %5563
  %5565 = bitcast i32 %5564 to float
  %5566 = fmul fast float %5536, %5360
  %5567 = fmul fast float %5566, %5553
  %5568 = fmul fast float %5537, %5360
  %5569 = fmul fast float %5568, %5559
  %5570 = fmul fast float %5538, %5360
  %5571 = fmul fast float %5570, %5565
  %5572 = call float @dx.op.binary.f32(i32 36, float %5340, float %5546)  ; FMin(a,b)
  %5573 = fmul fast float %5572, %5548
  %5574 = fsub fast float 1.000000e+00, %5573
  %5575 = bitcast float %5574 to i32
  %5576 = sub nsw i32 2129859010, %5575
  %5577 = bitcast i32 %5576 to float
  %5578 = call float @dx.op.binary.f32(i32 36, float %5341, float %5546)  ; FMin(a,b)
  %5579 = fmul fast float %5578, %5548
  %5580 = fsub fast float 1.000000e+00, %5579
  %5581 = bitcast float %5580 to i32
  %5582 = sub nsw i32 2129859010, %5581
  %5583 = bitcast i32 %5582 to float
  %5584 = call float @dx.op.binary.f32(i32 36, float %5349, float %5546)  ; FMin(a,b)
  %5585 = fmul fast float %5584, %5548
  %5586 = fsub fast float 1.000000e+00, %5585
  %5587 = bitcast float %5586 to i32
  %5588 = sub nsw i32 2129859010, %5587
  %5589 = bitcast i32 %5588 to float
  %5590 = fmul fast float %5542, %5360
  %5591 = fmul fast float %5590, %5577
  %5592 = fmul fast float %5543, %5360
  %5593 = fmul fast float %5592, %5583
  %5594 = fmul fast float %5544, %5360
  %5595 = fmul fast float %5594, %5589
  %5596 = call float @dx.op.dot3.f32(i32 55, float %5567, float %5569, float %5571, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5597 = select i1 %249, float 0.000000e+00, float %5567
  %5598 = select i1 %249, float %5596, float %5569
  %5599 = select i1 %249, float 0.000000e+00, float %5571
  %5600 = call float @dx.op.dot3.f32(i32 55, float %5539, float %5540, float %5541, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5601 = select i1 %249, float 0.000000e+00, float %5539
  %5602 = select i1 %249, float %5600, float %5540
  %5603 = select i1 %249, float 0.000000e+00, float %5541
  %5604 = call float @dx.op.dot3.f32(i32 55, float %5591, float %5593, float %5595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = select i1 %249, float 0.000000e+00, float %5591
  %5606 = select i1 %249, float %5604, float %5593
  %5607 = select i1 %249, float 0.000000e+00, float %5595
  %5608 = fmul fast float %5351, 9.843750e-01
  %5609 = fmul fast float %5346, 9.843750e-01
  %5610 = fadd fast float %5608, 7.812500e-03
  %5611 = fadd fast float %5609, 7.812500e-03
  %5612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5610, float %5611, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5613 = extractvalue %dx.types.ResRet.f32 %5612, 2
  %5614 = extractvalue %dx.types.ResRet.f32 %5612, 3
  %5615 = fmul fast float %5613, %5340
  %5616 = fmul fast float %5613, %5341
  %5617 = fmul fast float %5613, %5349
  %5618 = fadd fast float %5615, %5614
  %5619 = fadd fast float %5616, %5614
  %5620 = fadd fast float %5617, %5614
  %5621 = fcmp fast ogt float %4665, 0.000000e+00
  br i1 %5621, label %5622, label %5648

; <label>:5622                                    ; preds = %5513
  %5623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4665, float %5351, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5624 = extractvalue %dx.types.ResRet.f32 %5623, 0
  %5625 = extractvalue %dx.types.ResRet.f32 %5623, 1
  %5626 = extractvalue %dx.types.ResRet.f32 %5623, 2
  %5627 = fadd fast float %5624, -5.000000e-01
  %5628 = fadd fast float %5625, -5.000000e-01
  %5629 = fadd fast float %5626, -5.000000e-01
  %5630 = fsub fast float 1.000000e+00, %5340
  %5631 = fsub fast float 1.000000e+00, %5341
  %5632 = fsub fast float 1.000000e+00, %5349
  %5633 = fmul fast float %5340, 4.000000e+00
  %5634 = fmul fast float %5633, %5630
  %5635 = fmul fast float %5634, %5627
  %5636 = fmul fast float %5341, 4.000000e+00
  %5637 = fmul fast float %5636, %5631
  %5638 = fmul fast float %5637, %5628
  %5639 = fmul fast float %5349, 4.000000e+00
  %5640 = fmul fast float %5639, %5632
  %5641 = fmul fast float %5640, %5629
  %5642 = fadd fast float %5635, %5618
  %5643 = fadd fast float %5638, %5619
  %5644 = fadd fast float %5641, %5620
  %5645 = call float @dx.op.unary.f32(i32 7, float %5642)  ; Saturate(value)
  %5646 = call float @dx.op.unary.f32(i32 7, float %5643)  ; Saturate(value)
  %5647 = call float @dx.op.unary.f32(i32 7, float %5644)  ; Saturate(value)
  br label %5648

; <label>:5648                                    ; preds = %5622, %5513
  %5649 = phi float [ %5645, %5622 ], [ %5618, %5513 ]
  %5650 = phi float [ %5646, %5622 ], [ %5619, %5513 ]
  %5651 = phi float [ %5647, %5622 ], [ %5620, %5513 ]
  %5652 = call float @dx.op.binary.f32(i32 35, float %5650, float %5651)  ; FMax(a,b)
  %5653 = call float @dx.op.binary.f32(i32 35, float %5649, float %5652)  ; FMax(a,b)
  %5654 = fsub fast float 1.000000e+00, %5653
  %5655 = call float @dx.op.dot3.f32(i32 55, float %5337, float %5338, float %5339, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5656 = fcmp fast ogt float %5655, 0x3E7FF19E20000000
  %5657 = fdiv fast float 1.000000e+00, %5655
  %5658 = select i1 %5656, float %5657, float 0.000000e+00
  %5659 = fmul fast float %5658, %5337
  %5660 = fmul fast float %5658, %5338
  %5661 = fmul fast float %5658, %5339
  %5662 = fadd fast float %5659, -1.000000e+00
  %5663 = fadd fast float %5660, -1.000000e+00
  %5664 = fadd fast float %5661, -1.000000e+00
  %5665 = fmul fast float %5662, 5.000000e-01
  %5666 = fmul fast float %5663, 5.000000e-01
  %5667 = fmul fast float %5664, 5.000000e-01
  %5668 = fadd fast float %5665, 1.000000e+00
  %5669 = fadd fast float %5666, 1.000000e+00
  %5670 = fadd fast float %5667, 1.000000e+00
  %5671 = fmul fast float %5654, %4777
  %5672 = fmul fast float %5654, %4778
  %5673 = fmul fast float %5654, %4779
  %5674 = fadd fast float %5671, -1.000000e+00
  %5675 = fadd fast float %5672, -1.000000e+00
  %5676 = fadd fast float %5673, -1.000000e+00
  %5677 = fmul fast float %5674, %4691
  %5678 = fmul fast float %5675, %4691
  %5679 = fmul fast float %5676, %4691
  %5680 = fmul fast float %5649, %5605
  %5681 = fmul fast float %5650, %5606
  %5682 = fmul fast float %5651, %5607
  %5683 = fsub fast float 1.000000e+00, %5351
  %5684 = bitcast float %5683 to i32
  %5685 = sitofp i32 %5684 to float
  %5686 = fmul fast float %5685, 5.000000e+00
  %5687 = fadd fast float %5686, 0xC1EFBF8940000000
  %5688 = fptosi float %5687 to i32
  %5689 = bitcast i32 %5688 to float
  %5690 = fmul fast float %5689, %4666
  %5691 = fmul fast float %5597, %5690
  %5692 = fmul fast float %5691, %5654
  %5693 = fmul fast float %5692, %5668
  %5694 = fmul fast float %5598, %5690
  %5695 = fmul fast float %5694, %5654
  %5696 = fmul fast float %5695, %5669
  %5697 = fmul fast float %5599, %5690
  %5698 = fmul fast float %5697, %5654
  %5699 = fmul fast float %5698, %5670
  %5700 = fadd fast float %5680, %4658
  %5701 = fadd fast float %5700, %5693
  %5702 = fmul fast float %5701, %4691
  %5703 = fadd fast float %5681, %4659
  %5704 = fadd fast float %5703, %5696
  %5705 = fmul fast float %5704, %4691
  %5706 = fadd fast float %5682, %4660
  %5707 = fadd fast float %5706, %5699
  %5708 = fmul fast float %5707, %4691
  %5709 = fadd fast float %5679, 1.000000e+00
  %5710 = fadd fast float %5678, 1.000000e+00
  %5711 = fadd fast float %5677, 1.000000e+00
  %5712 = fmul fast float %5654, %5599
  %5713 = fmul fast float %5654, %5598
  %5714 = fmul fast float %5654, %5597
  %5715 = fmul fast float %5711, %5601
  %5716 = fmul fast float %5710, %5602
  %5717 = fmul fast float %5709, %5603
  %5718 = fadd fast float %5715, %5714
  %5719 = fmul fast float %5718, %4691
  %5720 = fadd fast float %5716, %5713
  %5721 = fmul fast float %5720, %4691
  %5722 = fadd fast float %5717, %5712
  %5723 = fmul fast float %5722, %4691
  %5724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5725 = extractvalue %dx.types.CBufRet.f32 %5724, 3
  %5726 = fcmp fast oeq float %5725, 0.000000e+00
  br i1 %5726, label %6850, label %5727

; <label>:5727                                    ; preds = %5648
  %5728 = extractvalue %dx.types.CBufRet.f32 %5724, 0
  %5729 = extractvalue %dx.types.CBufRet.f32 %5724, 1
  %5730 = extractvalue %dx.types.CBufRet.f32 %5724, 2
  %5731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5732 = extractvalue %dx.types.CBufRet.f32 %5731, 0
  %5733 = extractvalue %dx.types.CBufRet.f32 %5731, 1
  %5734 = extractvalue %dx.types.CBufRet.f32 %5731, 2
  %5735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5736 = extractvalue %dx.types.CBufRet.f32 %5735, 0
  %5737 = extractvalue %dx.types.CBufRet.f32 %5735, 1
  %5738 = call float @dx.op.dot3.f32(i32 55, float %5732, float %5733, float %5734, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5739 = select i1 %249, float %5736, float %5732
  %5740 = select i1 %249, float %5738, float %5733
  %5741 = select i1 %249, float %5737, float %5734
  %5742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5743 = extractvalue %dx.types.CBufRet.f32 %5742, 2
  %5744 = fmul fast float %5743, %107
  %5745 = fmul fast float %5743, %108
  %5746 = fmul fast float %5743, %109
  %5747 = fadd fast float %5744, %155
  %5748 = fadd fast float %5745, %156
  %5749 = fadd fast float %5746, %157
  %5750 = fcmp fast olt float %5725, 0.000000e+00
  br i1 %5750, label %6375, label %5751

; <label>:5751                                    ; preds = %5727
  %5752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5753 = extractvalue %dx.types.CBufRet.f32 %5752, 0
  %5754 = extractvalue %dx.types.CBufRet.f32 %5752, 1
  %5755 = extractvalue %dx.types.CBufRet.f32 %5752, 2
  %5756 = extractvalue %dx.types.CBufRet.f32 %5752, 3
  %5757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5758 = extractvalue %dx.types.CBufRet.f32 %5757, 0
  %5759 = extractvalue %dx.types.CBufRet.f32 %5757, 1
  %5760 = extractvalue %dx.types.CBufRet.f32 %5757, 2
  %5761 = extractvalue %dx.types.CBufRet.f32 %5757, 3
  %5762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5763 = extractvalue %dx.types.CBufRet.f32 %5762, 0
  %5764 = extractvalue %dx.types.CBufRet.f32 %5762, 1
  %5765 = extractvalue %dx.types.CBufRet.f32 %5762, 2
  %5766 = extractvalue %dx.types.CBufRet.f32 %5762, 3
  %5767 = fmul fast float %5753, %5747
  %5768 = call float @dx.op.tertiary.f32(i32 46, float %5748, float %5754, float %5767)  ; FMad(a,b,c)
  %5769 = call float @dx.op.tertiary.f32(i32 46, float %5749, float %5755, float %5768)  ; FMad(a,b,c)
  %5770 = fadd fast float %5769, %5756
  %5771 = fmul fast float %5758, %5747
  %5772 = call float @dx.op.tertiary.f32(i32 46, float %5748, float %5759, float %5771)  ; FMad(a,b,c)
  %5773 = call float @dx.op.tertiary.f32(i32 46, float %5749, float %5760, float %5772)  ; FMad(a,b,c)
  %5774 = fadd fast float %5773, %5761
  %5775 = fmul fast float %5763, %5747
  %5776 = call float @dx.op.tertiary.f32(i32 46, float %5748, float %5764, float %5775)  ; FMad(a,b,c)
  %5777 = call float @dx.op.tertiary.f32(i32 46, float %5749, float %5765, float %5776)  ; FMad(a,b,c)
  %5778 = fadd fast float %5777, %5766
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5782 = extractvalue %dx.types.CBufRet.f32 %5779, 3
  %5783 = fmul fast float %5782, %5770
  %5784 = fmul fast float %5782, %5774
  %5785 = fadd fast float %5783, %5780
  %5786 = fadd fast float %5784, %5781
  %5787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.f32 %5787, 0
  %5789 = extractvalue %dx.types.CBufRet.f32 %5787, 1
  %5790 = extractvalue %dx.types.CBufRet.f32 %5787, 3
  %5791 = fmul fast float %5790, %5770
  %5792 = fmul fast float %5790, %5774
  %5793 = fadd fast float %5791, %5788
  %5794 = fadd fast float %5792, %5789
  %5795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5796 = extractvalue %dx.types.CBufRet.f32 %5795, 1
  %5797 = fsub fast float %5796, %5778
  %5798 = extractvalue %dx.types.CBufRet.f32 %5795, 2
  %5799 = fmul fast float %5797, %5798
  %5800 = fsub fast float 1.000000e+00, %5799
  %5801 = call float @dx.op.unary.f32(i32 7, float %5800)  ; Saturate(value)
  %5802 = extractvalue %dx.types.CBufRet.f32 %5787, 2
  %5803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5804 = extractvalue %dx.types.CBufRet.f32 %5803, 2
  %5805 = fadd fast float %5804, %5802
  %5806 = fcmp fast ogt float %5805, 0.000000e+00
  br i1 %5806, label %5807, label %5831

; <label>:5807                                    ; preds = %5751
  %5808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5809 = extractvalue %dx.types.CBufRet.f32 %5808, 0
  %5810 = extractvalue %dx.types.CBufRet.f32 %5808, 1
  %5811 = fsub fast float %5793, %5809
  %5812 = fsub fast float %5794, %5810
  %5813 = fcmp fast olt float %5811, 0.000000e+00
  %5814 = fcmp fast olt float %5812, 0.000000e+00
  %5815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5816 = extractvalue %dx.types.CBufRet.f32 %5815, 0
  %5817 = extractvalue %dx.types.CBufRet.f32 %5815, 1
  %5818 = extractvalue %dx.types.CBufRet.f32 %5815, 2
  %5819 = extractvalue %dx.types.CBufRet.f32 %5815, 3
  %5820 = select i1 %5813, float %5816, float %5818
  %5821 = select i1 %5814, float %5817, float %5819
  %5822 = fmul fast float %5820, %5811
  %5823 = fmul fast float %5821, %5812
  %5824 = call float @dx.op.unary.f32(i32 6, float %5822)  ; FAbs(value)
  %5825 = call float @dx.op.unary.f32(i32 6, float %5823)  ; FAbs(value)
  %5826 = extractvalue %dx.types.CBufRet.f32 %5742, 0
  %5827 = call float @dx.op.binary.f32(i32 35, float %5824, float %5825)  ; FMax(a,b)
  %5828 = fsub fast float %5826, %5827
  %5829 = call float @dx.op.unary.f32(i32 7, float %5828)  ; Saturate(value)
  %5830 = fmul fast float %5829, %5801
  br label %5831

; <label>:5831                                    ; preds = %5807, %5751
  %5832 = phi float [ %5830, %5807 ], [ 0.000000e+00, %5751 ]
  %5833 = extractvalue %dx.types.CBufRet.f32 %5779, 2
  %5834 = extractvalue %dx.types.CBufRet.f32 %5803, 1
  %5835 = fadd fast float %5834, %5833
  %5836 = fcmp fast ogt float %5835, 0.000000e+00
  %5837 = extractvalue %dx.types.CBufRet.f32 %5742, 0
  br i1 %5836, label %5838, label %5861

; <label>:5838                                    ; preds = %5831
  %5839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5840 = extractvalue %dx.types.CBufRet.f32 %5839, 0
  %5841 = extractvalue %dx.types.CBufRet.f32 %5839, 1
  %5842 = fsub fast float %5785, %5840
  %5843 = fsub fast float %5786, %5841
  %5844 = fcmp fast olt float %5842, 0.000000e+00
  %5845 = fcmp fast olt float %5843, 0.000000e+00
  %5846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5847 = extractvalue %dx.types.CBufRet.f32 %5846, 0
  %5848 = extractvalue %dx.types.CBufRet.f32 %5846, 1
  %5849 = extractvalue %dx.types.CBufRet.f32 %5846, 2
  %5850 = extractvalue %dx.types.CBufRet.f32 %5846, 3
  %5851 = select i1 %5844, float %5847, float %5849
  %5852 = select i1 %5845, float %5848, float %5850
  %5853 = fmul fast float %5851, %5842
  %5854 = fmul fast float %5852, %5843
  %5855 = call float @dx.op.unary.f32(i32 6, float %5853)  ; FAbs(value)
  %5856 = call float @dx.op.unary.f32(i32 6, float %5854)  ; FAbs(value)
  %5857 = call float @dx.op.binary.f32(i32 35, float %5855, float %5856)  ; FMax(a,b)
  %5858 = fsub fast float %5837, %5857
  %5859 = call float @dx.op.unary.f32(i32 7, float %5858)  ; Saturate(value)
  %5860 = fmul fast float %5859, %5801
  br label %5861

; <label>:5861                                    ; preds = %5838, %5831
  %5862 = phi float [ %5860, %5838 ], [ 0.000000e+00, %5831 ]
  %5863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5864 = extractvalue %dx.types.CBufRet.f32 %5863, 1
  %5865 = call float @dx.op.unary.f32(i32 7, float %5864)  ; Saturate(value)
  %5866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5866, 0
  %5868 = extractvalue %dx.types.CBufRet.f32 %5866, 1
  %5869 = fsub fast float %5770, %5867
  %5870 = fsub fast float %5774, %5868
  %5871 = fcmp fast olt float %5869, 0.000000e+00
  %5872 = fcmp fast olt float %5870, 0.000000e+00
  %5873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5874 = extractvalue %dx.types.CBufRet.f32 %5873, 0
  %5875 = extractvalue %dx.types.CBufRet.f32 %5873, 1
  %5876 = extractvalue %dx.types.CBufRet.f32 %5873, 2
  %5877 = extractvalue %dx.types.CBufRet.f32 %5873, 3
  %5878 = select i1 %5871, float %5874, float %5876
  %5879 = select i1 %5872, float %5875, float %5877
  %5880 = fmul fast float %5878, %5869
  %5881 = fmul fast float %5879, %5870
  %5882 = call float @dx.op.unary.f32(i32 6, float %5880)  ; FAbs(value)
  %5883 = call float @dx.op.unary.f32(i32 6, float %5881)  ; FAbs(value)
  %5884 = call float @dx.op.binary.f32(i32 35, float %5882, float %5883)  ; FMax(a,b)
  %5885 = fsub fast float %5837, %5884
  %5886 = call float @dx.op.unary.f32(i32 7, float %5885)  ; Saturate(value)
  %5887 = call float @dx.op.binary.f32(i32 36, float %5886, float %5865)  ; FMin(a,b)
  %5888 = fmul fast float %5887, %5801
  %5889 = fsub fast float %5862, %5888
  %5890 = fsub fast float %5832, %5862
  %5891 = fsub fast float %5890, %5888
  %5892 = call float @dx.op.binary.f32(i32 35, float %5862, float %5832)  ; FMax(a,b)
  %5893 = call float @dx.op.binary.f32(i32 35, float %5888, float %5892)  ; FMax(a,b)
  %5894 = fcmp fast olt float %5893, 1.000000e+00
  br i1 %5894, label %5895, label %6293, !dx.controlflow.hints !94

; <label>:5895                                    ; preds = %5861
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 0
  %5898 = fcmp fast une float %5897, 0.000000e+00
  br i1 %5898, label %5899, label %6293, !dx.controlflow.hints !95

; <label>:5899                                    ; preds = %5895
  %5900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5901 = extractvalue %dx.types.CBufRet.f32 %5900, 0
  %5902 = extractvalue %dx.types.CBufRet.f32 %5900, 1
  %5903 = extractvalue %dx.types.CBufRet.f32 %5900, 2
  %5904 = extractvalue %dx.types.CBufRet.f32 %5900, 3
  %5905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5906 = extractvalue %dx.types.CBufRet.f32 %5905, 0
  %5907 = extractvalue %dx.types.CBufRet.f32 %5905, 1
  %5908 = extractvalue %dx.types.CBufRet.f32 %5905, 2
  %5909 = extractvalue %dx.types.CBufRet.f32 %5905, 3
  %5910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5911 = extractvalue %dx.types.CBufRet.f32 %5910, 0
  %5912 = extractvalue %dx.types.CBufRet.f32 %5910, 1
  %5913 = extractvalue %dx.types.CBufRet.f32 %5910, 2
  %5914 = extractvalue %dx.types.CBufRet.f32 %5910, 3
  %5915 = fmul fast float %5901, %5747
  %5916 = call float @dx.op.tertiary.f32(i32 46, float %5748, float %5902, float %5915)  ; FMad(a,b,c)
  %5917 = call float @dx.op.tertiary.f32(i32 46, float %5749, float %5903, float %5916)  ; FMad(a,b,c)
  %5918 = fadd fast float %5917, %5904
  %5919 = fmul fast float %5906, %5747
  %5920 = call float @dx.op.tertiary.f32(i32 46, float %5748, float %5907, float %5919)  ; FMad(a,b,c)
  %5921 = call float @dx.op.tertiary.f32(i32 46, float %5749, float %5908, float %5920)  ; FMad(a,b,c)
  %5922 = fadd fast float %5921, %5909
  %5923 = fmul fast float %5911, %5747
  %5924 = call float @dx.op.tertiary.f32(i32 46, float %5748, float %5912, float %5923)  ; FMad(a,b,c)
  %5925 = call float @dx.op.tertiary.f32(i32 46, float %5749, float %5913, float %5924)  ; FMad(a,b,c)
  %5926 = fadd fast float %5925, %5914
  %5927 = fcmp fast oge float %5918, 1.000000e+00
  %5928 = fcmp fast oge float %5922, 1.000000e+00
  %5929 = or i1 %5927, %5928
  %5930 = fcmp fast olt float %5918, 0.000000e+00
  %5931 = fcmp fast olt float %5922, 0.000000e+00
  %5932 = or i1 %5930, %5931
  %5933 = or i1 %5929, %5932
  br i1 %5933, label %6293, label %5934, !dx.controlflow.hints !96

; <label>:5934                                    ; preds = %5899
  %5935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5936 = extractvalue %dx.types.CBufRet.f32 %5935, 0
  %5937 = extractvalue %dx.types.CBufRet.f32 %5935, 1
  %5938 = extractvalue %dx.types.CBufRet.f32 %5935, 2
  %5939 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5940 = extractvalue %dx.types.CBufRet.i32 %5939, 2
  %5941 = uitofp i32 %5940 to float
  %5942 = extractvalue %dx.types.CBufRet.i32 %5939, 3
  %5943 = uitofp i32 %5942 to float
  %5944 = extractvalue %dx.types.CBufRet.f32 %5935, 3
  %5945 = fmul fast float %5944, 2.000000e+00
  %5946 = fsub fast float %5918, %5936
  %5947 = fsub fast float %5922, %5937
  %5948 = fmul fast float %5945, %5946
  %5949 = fmul fast float %5945, %5947
  %5950 = fdiv fast float 1.000000e+00, %5730
  %5951 = fmul fast float %5949, %5950
  %5952 = call float @dx.op.unary.f32(i32 6, float %5951)  ; FAbs(value)
  %5953 = fmul fast float %5938, %5749
  %5954 = fmul fast float %5953, %5945
  %5955 = call float @dx.op.unary.f32(i32 6, float %5954)  ; FAbs(value)
  %5956 = call float @dx.op.unary.f32(i32 6, float %5948)  ; FAbs(value)
  %5957 = call float @dx.op.binary.f32(i32 35, float %5955, float %5952)  ; FMax(a,b)
  %5958 = call float @dx.op.binary.f32(i32 35, float %5956, float %5957)  ; FMax(a,b)
  %5959 = fmul fast float %5958, 2.000000e+00
  %5960 = call float @dx.op.unary.f32(i32 23, float %5959)  ; Log(value)
  %5961 = call float @dx.op.binary.f32(i32 35, float %5960, float %5941)  ; FMax(a,b)
  %5962 = call float @dx.op.unary.f32(i32 22, float %5961)  ; Frc(value)
  %5963 = fadd fast float %5962, 0xBFEA666660000000
  %5964 = fmul fast float %5963, 8.000000e+00
  %5965 = call float @dx.op.unary.f32(i32 7, float %5964)  ; Saturate(value)
  %5966 = call float @dx.op.unary.f32(i32 27, float %5961)  ; Round_ni(value)
  %5967 = fadd fast float %5966, %5965
  %5968 = call float @dx.op.binary.f32(i32 36, float %5967, float %5943)  ; FMin(a,b)
  %5969 = call float @dx.op.unary.f32(i32 27, float %5968)  ; Round_ni(value)
  %5970 = fsub fast float -0.000000e+00, %5969
  %5971 = call float @dx.op.unary.f32(i32 21, float %5970)  ; Exp(value)
  %5972 = fmul fast float %5971, %5945
  %5973 = fmul fast float %5972, %5918
  %5974 = fmul fast float %5972, %5922
  %5975 = fmul fast float %5973, 2.500000e-01
  %5976 = fmul fast float %5974, 2.500000e-01
  %5977 = fadd fast float %5975, 5.000000e-01
  %5978 = fadd fast float %5976, 5.000000e-01
  %5979 = fsub fast float %5943, %5941
  %5980 = fptoui float %5979 to i32
  %5981 = add i32 %5980, 320
  %5982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5981)  ; CBufferLoadLegacy(handle,regIndex)
  %5983 = extractvalue %dx.types.CBufRet.f32 %5982, 0
  %5984 = extractvalue %dx.types.CBufRet.f32 %5982, 1
  %5985 = fcmp fast une float %5968, %5943
  %5986 = fsub fast float %5918, %5983
  %5987 = fsub fast float %5922, %5984
  %5988 = call float @dx.op.unary.f32(i32 6, float %5986)  ; FAbs(value)
  %5989 = call float @dx.op.unary.f32(i32 6, float %5987)  ; FAbs(value)
  %5990 = fmul fast float %5988, %5972
  %5991 = fmul fast float %5989, %5972
  %5992 = fcmp fast olt float %5990, 1.000000e+00
  %5993 = fcmp fast olt float %5991, 1.000000e+00
  %5994 = and i1 %5992, %5993
  %5995 = or i1 %5985, %5994
  br i1 %5995, label %5996, label %6293, !dx.controlflow.hints !97

; <label>:5996                                    ; preds = %5934
  %5997 = fmul fast float %5974, 5.000000e-01
  %5998 = fmul fast float %5973, 5.000000e-01
  %5999 = fadd fast float %5997, 5.000000e-01
  %6000 = fadd fast float %5998, 5.000000e-01
  %6001 = sitofp i32 %5940 to float
  %6002 = fsub fast float %5968, %6001
  %6003 = call float @dx.op.unary.f32(i32 27, float %6002)  ; Round_ni(value)
  %6004 = call float @dx.op.unary.f32(i32 22, float %5968)  ; Frc(value)
  %6005 = call float @dx.op.unary.f32(i32 22, float %6000)  ; Frc(value)
  %6006 = call float @dx.op.unary.f32(i32 22, float %5999)  ; Frc(value)
  %6007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6005, float %6006, float %6003, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6008 = extractvalue %dx.types.ResRet.f32 %6007, 0
  %6009 = extractvalue %dx.types.ResRet.f32 %6007, 1
  %6010 = extractvalue %dx.types.ResRet.f32 %6007, 2
  %6011 = extractvalue %dx.types.ResRet.f32 %6007, 3
  %6012 = fcmp fast ogt float %6004, 0.000000e+00
  br i1 %6012, label %6013, label %6034, !dx.controlflow.hints !98

; <label>:6013                                    ; preds = %5996
  %6014 = fadd fast float %6003, 1.000000e+00
  %6015 = call float @dx.op.unary.f32(i32 22, float %5977)  ; Frc(value)
  %6016 = call float @dx.op.unary.f32(i32 22, float %5978)  ; Frc(value)
  %6017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6015, float %6016, float %6014, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6018 = extractvalue %dx.types.ResRet.f32 %6017, 0
  %6019 = extractvalue %dx.types.ResRet.f32 %6017, 1
  %6020 = extractvalue %dx.types.ResRet.f32 %6017, 2
  %6021 = extractvalue %dx.types.ResRet.f32 %6017, 3
  %6022 = fsub fast float %6018, %6008
  %6023 = fsub fast float %6019, %6009
  %6024 = fsub fast float %6020, %6010
  %6025 = fsub fast float %6021, %6011
  %6026 = fmul fast float %6022, %6004
  %6027 = fmul fast float %6023, %6004
  %6028 = fmul fast float %6024, %6004
  %6029 = fmul fast float %6025, %6004
  %6030 = fadd fast float %6026, %6008
  %6031 = fadd fast float %6027, %6009
  %6032 = fadd fast float %6028, %6010
  %6033 = fadd fast float %6029, %6011
  br label %6034

; <label>:6034                                    ; preds = %6013, %5996
  %6035 = phi float [ %6030, %6013 ], [ %6008, %5996 ]
  %6036 = phi float [ %6031, %6013 ], [ %6009, %5996 ]
  %6037 = phi float [ %6032, %6013 ], [ %6010, %5996 ]
  %6038 = phi float [ %6033, %6013 ], [ %6011, %5996 ]
  %6039 = fadd fast float %6035, -5.000000e-01
  %6040 = fadd fast float %6037, -5.000000e-01
  %6041 = fmul fast float %6039, 0xBFD5555560000000
  %6042 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6040, float %6041)  ; FMad(a,b,c)
  %6043 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6036, float 0.000000e+00)  ; FMad(a,b,c)
  %6044 = fadd fast float %6043, %6038
  %6045 = fmul fast float %6039, -7.500000e-01
  %6046 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6040, float %6045)  ; FMad(a,b,c)
  %6047 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6036, float 0.000000e+00)  ; FMad(a,b,c)
  %6048 = fadd fast float %6047, %6038
  %6049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6050 = extractvalue %dx.types.CBufRet.f32 %6049, 0
  %6051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6052 = extractvalue %dx.types.CBufRet.f32 %6051, 0
  %6053 = extractvalue %dx.types.CBufRet.f32 %6051, 1
  %6054 = extractvalue %dx.types.CBufRet.f32 %6051, 2
  %6055 = extractvalue %dx.types.CBufRet.f32 %6051, 3
  %6056 = fsub fast float %6052, %6042
  %6057 = fsub fast float %6053, %6044
  %6058 = fsub fast float %6054, %6046
  %6059 = fsub fast float %6055, %6048
  %6060 = fmul fast float %6056, %6050
  %6061 = fmul fast float %6057, %6050
  %6062 = fmul fast float %6058, %6050
  %6063 = fmul fast float %6059, %6050
  %6064 = fadd fast float %6060, %6042
  %6065 = fadd fast float %6061, %6044
  %6066 = fadd fast float %6062, %6046
  %6067 = fadd fast float %6063, %6048
  %6068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6069 = extractvalue %dx.types.ResRet.i32 %6068, 0
  %6070 = and i32 %6069, 536870911
  %6071 = uitofp i32 %6070 to float
  %6072 = fmul fast float %6071, %5918
  %6073 = fmul fast float %6071, %5922
  %6074 = fptoui float %6072 to i32
  %6075 = fptoui float %6073 to i32
  %6076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6077 = extractvalue %dx.types.ResRet.i32 %6076, 0
  %6078 = and i32 %6077, 31
  %6079 = lshr i32 %6074, %6078
  %6080 = lshr i32 %6075, %6078
  %6081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6082 = extractvalue %dx.types.ResRet.i32 %6081, 0
  %6083 = and i32 %6082, 31
  %6084 = shl i32 1, %6083
  %6085 = call i32 @dx.op.binary.i32(i32 40, i32 %6084, i32 4)  ; UMin(a,b)
  %6086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6087 = extractvalue %dx.types.ResRet.i32 %6086, 0
  %6088 = extractvalue %dx.types.ResRet.i32 %6086, 1
  %6089 = icmp eq i32 %6085, 0
  br i1 %6089, label %6131, label %6090

; <label>:6090                                    ; preds = %6034
  br label %6091

; <label>:6091                                    ; preds = %6119, %6090
  %6092 = phi i32 [ %6122, %6119 ], [ 0, %6090 ]
  %6093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6094 = extractvalue %dx.types.ResRet.i32 %6093, 0
  %6095 = lshr i32 %6094, 16
  %6096 = and i32 %6095, 31
  %6097 = shl i32 %6080, %6096
  %6098 = add i32 %6097, %6079
  %6099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6100 = extractvalue %dx.types.ResRet.i32 %6099, 0
  %6101 = and i32 %6100, 31
  %6102 = shl i32 %6098, %6101
  %6103 = add i32 %6102, %6092
  %6104 = shl i32 %6103, 2
  %6105 = add i32 %6104, 32
  %6106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6105, i32 undef)  ; BufferLoad(srv,index,wot)
  %6107 = extractvalue %dx.types.ResRet.i32 %6106, 0
  %6108 = icmp slt i32 %6107, 0
  %6109 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6092
  %6110 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6092
  %6111 = bitcast float* %6109 to i32*
  %6112 = bitcast float* %6110 to i32*
  br i1 %6108, label %6113, label %6119

; <label>:6113                                    ; preds = %6091
  %6114 = and i32 %6107, 1073741823
  %6115 = add nuw nsw i32 %6114, 20
  %6116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6115, i32 undef)  ; BufferLoad(srv,index,wot)
  %6117 = extractvalue %dx.types.ResRet.i32 %6116, 0
  %6118 = extractvalue %dx.types.ResRet.i32 %6116, 1
  br label %6119

; <label>:6119                                    ; preds = %6113, %6091
  %6120 = phi i32 [ %6117, %6113 ], [ %6087, %6091 ]
  %6121 = phi i32 [ %6118, %6113 ], [ %6088, %6091 ]
  store i32 %6120, i32* %6111, align 4
  store i32 %6121, i32* %6112, align 4
  %6122 = add nuw i32 %6092, 1
  %6123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6124 = extractvalue %dx.types.CBufRet.i32 %6123, 2
  %6125 = icmp eq i32 %6124, 0
  %6126 = icmp ugt i32 %6107, -1073741825
  %6127 = and i1 %6126, %6125
  %6128 = icmp ult i32 %6122, %6085
  %6129 = and i1 %6127, %6128
  br i1 %6129, label %6091, label %6130

; <label>:6130                                    ; preds = %6119
  br label %6131

; <label>:6131                                    ; preds = %6130, %6034
  %6132 = phi i32 [ 0, %6034 ], [ %6122, %6130 ]
  %6133 = extractvalue %dx.types.CBufRet.f32 %5896, 2
  %6134 = fptoui float %6133 to i32
  %6135 = icmp eq i32 %6134, 0
  br i1 %6135, label %6187, label %6136

; <label>:6136                                    ; preds = %6131
  br label %6137

; <label>:6137                                    ; preds = %6182, %6136
  %6138 = phi i32 [ %6183, %6182 ], [ %6132, %6136 ]
  %6139 = phi i32 [ %6184, %6182 ], [ 0, %6136 ]
  %6140 = lshr i32 %6139, 2
  %6141 = and i32 %6139, 3
  %6142 = add nuw nsw i32 %6140, 83
  %6143 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6142)  ; CBufferLoadLegacy(handle,regIndex)
  %6144 = extractvalue %dx.types.CBufRet.i32 %6143, 0
  %6145 = extractvalue %dx.types.CBufRet.i32 %6143, 1
  %6146 = extractvalue %dx.types.CBufRet.i32 %6143, 2
  %6147 = extractvalue %dx.types.CBufRet.i32 %6143, 3
  %6148 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6144, i32* %6148, align 4
  %6149 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6145, i32* %6149, align 4
  %6150 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6146, i32* %6150, align 4
  %6151 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6147, i32* %6151, align 4
  %6152 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6141
  %6153 = load i32, i32* %6152, align 4, !tbaa !99, !noalias !103
  %6154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6155 = extractvalue %dx.types.ResRet.i32 %6154, 0
  %6156 = lshr i32 %6155, 16
  %6157 = and i32 %6156, 31
  %6158 = shl i32 %6080, %6157
  %6159 = add i32 %6158, %6079
  %6160 = shl i32 %6159, 2
  %6161 = add i32 %6160, %6153
  %6162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6161, i32 undef)  ; BufferLoad(srv,index,wot)
  %6163 = extractvalue %dx.types.ResRet.i32 %6162, 0
  %6164 = icmp eq i32 %6163, 0
  br i1 %6164, label %6182, label %6165

; <label>:6165                                    ; preds = %6137
  %6166 = icmp slt i32 %6163, 0
  %6167 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6138
  %6168 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6138
  %6169 = bitcast float* %6167 to i32*
  %6170 = bitcast float* %6168 to i32*
  br i1 %6166, label %6171, label %6178

; <label>:6171                                    ; preds = %6165
  %6172 = and i32 %6163, 1073741823
  %6173 = add i32 %6153, 20
  %6174 = add i32 %6173, %6172
  %6175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6174, i32 undef)  ; BufferLoad(srv,index,wot)
  %6176 = extractvalue %dx.types.ResRet.i32 %6175, 0
  %6177 = extractvalue %dx.types.ResRet.i32 %6175, 1
  br label %6178

; <label>:6178                                    ; preds = %6171, %6165
  %6179 = phi i32 [ %6176, %6171 ], [ %6087, %6165 ]
  %6180 = phi i32 [ %6177, %6171 ], [ %6088, %6165 ]
  store i32 %6179, i32* %6169, align 4
  store i32 %6180, i32* %6170, align 4
  %6181 = add i32 %6138, 1
  br label %6182

; <label>:6182                                    ; preds = %6178, %6137
  %6183 = phi i32 [ %6138, %6137 ], [ %6181, %6178 ]
  %6184 = add nuw i32 %6139, 1
  %6185 = icmp eq i32 %6184, %6134
  br i1 %6185, label %6186, label %6137

; <label>:6186                                    ; preds = %6182
  br label %6187

; <label>:6187                                    ; preds = %6186, %6131
  %6188 = phi i32 [ %6132, %6131 ], [ %6183, %6186 ]
  %6189 = icmp eq i32 %6188, 1
  %6190 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  %6191 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  br i1 %6189, label %6192, label %6195

; <label>:6192                                    ; preds = %6187
  %6193 = load float, float* %6190, align 4
  %6194 = load float, float* %6191, align 4
  br label %6222

; <label>:6195                                    ; preds = %6187
  %6196 = load float, float* %6190, align 4
  %6197 = load float, float* %6191, align 4
  %6198 = fdiv fast float 1.000000e+00, %6197
  %6199 = fsub fast float %6196, %6198
  %6200 = icmp ugt i32 %6188, 1
  br i1 %6200, label %6201, label %6217

; <label>:6201                                    ; preds = %6195
  br label %6202

; <label>:6202                                    ; preds = %6202, %6201
  %6203 = phi float [ %6212, %6202 ], [ %6199, %6201 ]
  %6204 = phi float [ %6213, %6202 ], [ %6196, %6201 ]
  %6205 = phi i32 [ %6214, %6202 ], [ 1, %6201 ]
  %6206 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6205
  %6207 = load float, float* %6206, align 4
  %6208 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6205
  %6209 = load float, float* %6208, align 4
  %6210 = fdiv fast float 1.000000e+00, %6209
  %6211 = fsub fast float %6207, %6210
  %6212 = call float @dx.op.binary.f32(i32 36, float %6203, float %6211)  ; FMin(a,b)
  %6213 = call float @dx.op.binary.f32(i32 35, float %6204, float %6207)  ; FMax(a,b)
  %6214 = add nuw i32 %6205, 1
  %6215 = icmp eq i32 %6214, %6188
  br i1 %6215, label %6216, label %6202

; <label>:6216                                    ; preds = %6202
  br label %6217

; <label>:6217                                    ; preds = %6216, %6195
  %6218 = phi float [ %6199, %6195 ], [ %6212, %6216 ]
  %6219 = phi float [ %6196, %6195 ], [ %6213, %6216 ]
  %6220 = fsub fast float %6219, %6218
  %6221 = fdiv fast float 1.000000e+00, %6220
  br label %6222

; <label>:6222                                    ; preds = %6217, %6192
  %6223 = phi float [ %6193, %6192 ], [ %6219, %6217 ]
  %6224 = phi float [ %6194, %6192 ], [ %6221, %6217 ]
  %6225 = fadd fast float %5926, %6223
  %6226 = fmul fast float %6225, %6224
  %6227 = call float @dx.op.unary.f32(i32 7, float %6226)  ; Saturate(value)
  %6228 = fmul fast float %6227, 2.000000e+00
  %6229 = fsub fast float 1.000000e+00, %6228
  %6230 = fmul fast float %6064, %6064
  %6231 = fsub fast float %6065, %6230
  %6232 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6231)  ; FMax(a,b)
  %6233 = fdiv fast float 1.000000e+00, %6232
  %6234 = fmul fast float %6065, %6064
  %6235 = fsub fast float %6066, %6234
  %6236 = fsub fast float %6229, %6064
  %6237 = fmul fast float %6229, %6229
  %6238 = fsub fast float %6237, %6065
  %6239 = fmul fast float %6233, %6235
  %6240 = fmul fast float %6239, %6236
  %6241 = fsub fast float %6238, %6240
  %6242 = fmul fast float %6065, %6065
  %6243 = fsub fast float %6067, %6242
  %6244 = fmul fast float %6235, %6235
  %6245 = fmul fast float %6244, %6233
  %6246 = fsub fast float %6243, %6245
  %6247 = fdiv fast float %6241, %6246
  %6248 = fmul fast float %6247, %6235
  %6249 = fsub fast float %6236, %6248
  %6250 = fmul fast float %6249, %6233
  %6251 = fmul fast float %6250, %6064
  %6252 = fsub fast float 1.000000e+00, %6251
  %6253 = fmul fast float %6247, %6065
  %6254 = fsub fast float %6252, %6253
  %6255 = fmul fast float %6250, %6250
  %6256 = fmul fast float %6247, 4.000000e+00
  %6257 = fmul fast float %6256, %6254
  %6258 = fsub fast float %6255, %6257
  %6259 = call float @dx.op.unary.f32(i32 24, float %6258)  ; Sqrt(value)
  %6260 = fcmp fast oge float %6250, 0.000000e+00
  %6261 = fsub fast float -0.000000e+00, %6259
  %6262 = select i1 %6260, float %6261, float %6259
  %6263 = fsub fast float %6262, %6250
  %6264 = fdiv fast float %6263, %6247
  %6265 = fdiv fast float %6254, %6263
  %6266 = fmul fast float %6264, 5.000000e-01
  %6267 = fmul fast float %6265, 2.000000e+00
  %6268 = select i1 %6260, float %6266, float %6267
  %6269 = select i1 %6260, float %6267, float %6266
  %6270 = call float @dx.op.binary.f32(i32 35, float %6268, float %6269)  ; FMax(a,b)
  %6271 = call float @dx.op.binary.f32(i32 36, float %6268, float %6269)  ; FMin(a,b)
  %6272 = fcmp fast ogt float %6229, %6270
  %6273 = fsub fast float %6229, %6271
  %6274 = fsub fast float %6229, %6270
  %6275 = fsub fast float %6270, %6271
  %6276 = select i1 %6272, float %6274, float %6275
  %6277 = fmul float %6273, %6276
  %6278 = select i1 %6272, float %6271, float %6229
  %6279 = fcmp fast ogt float %6229, %6271
  %6280 = fmul fast float %6278, %6270
  %6281 = fadd fast float %6278, %6270
  %6282 = fmul fast float %6281, %6064
  %6283 = fadd fast float %6280, %6065
  %6284 = fsub fast float %6283, %6282
  %6285 = fdiv fast float %6284, %6277
  %6286 = select i1 %6279, float %6285, float 0.000000e+00
  %6287 = fsub fast float 1.000000e+00, %6286
  %6288 = select i1 %6272, float %6287, float %6286
  %6289 = call float @dx.op.unary.f32(i32 7, float %6288)  ; Saturate(value)
  %6290 = extractvalue %dx.types.CBufRet.f32 %6049, 3
  %6291 = fmul fast float %6290, %6289
  %6292 = fsub fast float 1.000000e+00, %6291
  br label %6293

; <label>:6293                                    ; preds = %6222, %5934, %5899, %5895, %5861
  %6294 = phi float [ 1.000000e+00, %5861 ], [ %6292, %6222 ], [ 1.000000e+00, %5899 ], [ 1.000000e+00, %5934 ], [ 1.000000e+00, %5895 ]
  %6295 = fcmp fast ogt float %5891, 0.000000e+00
  br i1 %6295, label %6296, label %6302, !dx.controlflow.hints !112

; <label>:6296                                    ; preds = %6293
  %6297 = fadd fast float %5804, %5778
  %6298 = call float @dx.op.binary.f32(i32 35, float %6297, float 0.000000e+00)  ; FMax(a,b)
  %6299 = fadd fast float %6298, 0x3F10000000000000
  %6300 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5793, float %5794, float undef, float undef, i32 0, i32 0, i32 undef, float %6299)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6301 = extractvalue %dx.types.ResRet.f32 %6300, 0
  br label %6302

; <label>:6302                                    ; preds = %6296, %6293
  %6303 = phi float [ %6301, %6296 ], [ 1.000000e+00, %6293 ]
  %6304 = fcmp fast ogt float %5889, 0.000000e+00
  br i1 %6304, label %6305, label %6311, !dx.controlflow.hints !113

; <label>:6305                                    ; preds = %6302
  %6306 = fadd fast float %5834, %5778
  %6307 = call float @dx.op.binary.f32(i32 35, float %6306, float 0.000000e+00)  ; FMax(a,b)
  %6308 = fadd fast float %6307, 0x3F10000000000000
  %6309 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5785, float %5786, float undef, float undef, i32 0, i32 0, i32 undef, float %6308)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6310 = extractvalue %dx.types.ResRet.f32 %6309, 0
  br label %6311

; <label>:6311                                    ; preds = %6305, %6302
  %6312 = phi float [ %6310, %6305 ], [ 1.000000e+00, %6302 ]
  %6313 = fcmp fast ogt float %5888, 0.000000e+00
  br i1 %6313, label %6314, label %6321, !dx.controlflow.hints !114

; <label>:6314                                    ; preds = %6311
  %6315 = extractvalue %dx.types.CBufRet.f32 %5803, 0
  %6316 = fadd fast float %6315, %5778
  %6317 = call float @dx.op.binary.f32(i32 35, float %6316, float 0.000000e+00)  ; FMax(a,b)
  %6318 = fadd fast float %6317, 0x3F10000000000000
  %6319 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5770, float %5774, float undef, float undef, i32 0, i32 0, i32 undef, float %6318)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6320 = extractvalue %dx.types.ResRet.f32 %6319, 0
  br label %6321

; <label>:6321                                    ; preds = %6314, %6311
  %6322 = phi float [ %6320, %6314 ], [ 1.000000e+00, %6311 ]
  %6323 = fsub fast float %6303, %6294
  %6324 = fmul fast float %6323, %5832
  %6325 = fadd fast float %6324, %6294
  %6326 = fsub fast float %6312, %6325
  %6327 = fmul fast float %6326, %5862
  %6328 = fadd fast float %6327, %6325
  %6329 = fsub fast float %6322, %6328
  %6330 = fmul fast float %6329, %5888
  %6331 = fadd fast float %6330, %6328
  %6332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6333 = extractvalue %dx.types.CBufRet.f32 %6332, 2
  %6334 = fcmp fast ogt float %6333, 0.000000e+00
  br i1 %6334, label %6335, label %6375, !dx.controlflow.hints !115

; <label>:6335                                    ; preds = %6321
  %6336 = fcmp fast ugt float %6333, 0.000000e+00
  br i1 %6336, label %6337, label %6372

; <label>:6337                                    ; preds = %6335
  %6338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6339 = extractvalue %dx.types.CBufRet.f32 %6338, 0
  %6340 = extractvalue %dx.types.CBufRet.f32 %6338, 1
  %6341 = extractvalue %dx.types.CBufRet.f32 %6338, 2
  %6342 = extractvalue %dx.types.CBufRet.f32 %6338, 3
  %6343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6344 = extractvalue %dx.types.CBufRet.f32 %6343, 0
  %6345 = extractvalue %dx.types.CBufRet.f32 %6343, 1
  %6346 = extractvalue %dx.types.CBufRet.f32 %6343, 2
  %6347 = extractvalue %dx.types.CBufRet.f32 %6343, 3
  %6348 = extractvalue %dx.types.CBufRet.f32 %6332, 0
  %6349 = extractvalue %dx.types.CBufRet.f32 %6332, 1
  %6350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6350, 0
  %6352 = extractvalue %dx.types.CBufRet.f32 %6350, 1
  %6353 = extractvalue %dx.types.CBufRet.f32 %6350, 2
  %6354 = fadd fast float %6351, %5747
  %6355 = fadd fast float %6352, %5748
  %6356 = fadd fast float %6353, %5749
  %6357 = fmul fast float %6354, %6339
  %6358 = call float @dx.op.tertiary.f32(i32 46, float %6340, float %6355, float %6357)  ; FMad(a,b,c)
  %6359 = call float @dx.op.tertiary.f32(i32 46, float %6341, float %6356, float %6358)  ; FMad(a,b,c)
  %6360 = fadd fast float %6359, %6342
  %6361 = fmul fast float %6354, %6344
  %6362 = call float @dx.op.tertiary.f32(i32 46, float %6345, float %6355, float %6361)  ; FMad(a,b,c)
  %6363 = call float @dx.op.tertiary.f32(i32 46, float %6346, float %6356, float %6362)  ; FMad(a,b,c)
  %6364 = fadd fast float %6363, %6347
  %6365 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6360, float %6364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6366 = extractvalue %dx.types.ResRet.f32 %6365, 0
  %6367 = fmul fast float %6366, %6349
  %6368 = fadd fast float %6367, %6348
  %6369 = call float @dx.op.unary.f32(i32 7, float %6368)  ; Saturate(value)
  %6370 = fmul fast float %6369, %6333
  %6371 = fsub fast float 1.000000e+00, %6370
  br label %6372

; <label>:6372                                    ; preds = %6337, %6335
  %6373 = phi float [ %6371, %6337 ], [ 1.000000e+00, %6335 ]
  %6374 = fmul fast float %6373, %6331
  br label %6375

; <label>:6375                                    ; preds = %6372, %6321, %5727
  %6376 = phi float [ 1.000000e+00, %5727 ], [ %6374, %6372 ], [ %6331, %6321 ]
  %6377 = call float @dx.op.binary.f32(i32 36, float %6376, float %6376)  ; FMin(a,b)
  %6378 = call float @dx.op.binary.f32(i32 36, float %6376, float %6377)  ; FMin(a,b)
  %6379 = fcmp fast ogt float %6378, 0.000000e+00
  br i1 %6379, label %6380, label %6540, !dx.controlflow.hints !116

; <label>:6380                                    ; preds = %6375
  %6381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6382 = extractvalue %dx.types.CBufRet.f32 %6381, 0
  %6383 = extractvalue %dx.types.CBufRet.f32 %6381, 1
  %6384 = extractvalue %dx.types.CBufRet.f32 %6381, 2
  %6385 = extractvalue %dx.types.CBufRet.f32 %6381, 3
  %6386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6386, 0
  %6388 = extractvalue %dx.types.CBufRet.f32 %6386, 1
  %6389 = extractvalue %dx.types.CBufRet.f32 %6386, 2
  %6390 = extractvalue %dx.types.CBufRet.f32 %6386, 3
  %6391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6392 = extractvalue %dx.types.CBufRet.f32 %6391, 0
  %6393 = extractvalue %dx.types.CBufRet.f32 %6391, 1
  %6394 = extractvalue %dx.types.CBufRet.f32 %6391, 2
  %6395 = extractvalue %dx.types.CBufRet.f32 %6391, 3
  %6396 = fmul fast float %6382, %5747
  %6397 = call float @dx.op.tertiary.f32(i32 46, float %5748, float %6383, float %6396)  ; FMad(a,b,c)
  %6398 = call float @dx.op.tertiary.f32(i32 46, float %5749, float %6384, float %6397)  ; FMad(a,b,c)
  %6399 = fadd fast float %6398, %6385
  %6400 = fmul fast float %6387, %5747
  %6401 = call float @dx.op.tertiary.f32(i32 46, float %5748, float %6388, float %6400)  ; FMad(a,b,c)
  %6402 = call float @dx.op.tertiary.f32(i32 46, float %5749, float %6389, float %6401)  ; FMad(a,b,c)
  %6403 = fadd fast float %6402, %6390
  %6404 = fmul fast float %6392, %5747
  %6405 = call float @dx.op.tertiary.f32(i32 46, float %5748, float %6393, float %6404)  ; FMad(a,b,c)
  %6406 = call float @dx.op.tertiary.f32(i32 46, float %5749, float %6394, float %6405)  ; FMad(a,b,c)
  %6407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6408 = extractvalue %dx.types.CBufRet.f32 %6407, 0
  %6409 = extractvalue %dx.types.CBufRet.f32 %6407, 1
  %6410 = extractvalue %dx.types.CBufRet.f32 %6407, 3
  %6411 = fmul fast float %6410, %6399
  %6412 = fmul fast float %6410, %6403
  %6413 = fadd fast float %6411, %6408
  %6414 = fadd fast float %6412, %6409
  %6415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6416 = extractvalue %dx.types.CBufRet.f32 %6415, 0
  %6417 = extractvalue %dx.types.CBufRet.f32 %6415, 1
  %6418 = fsub fast float %6413, %6416
  %6419 = fsub fast float %6414, %6417
  %6420 = fcmp fast olt float %6418, 0.000000e+00
  %6421 = fcmp fast olt float %6419, 0.000000e+00
  %6422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6423 = extractvalue %dx.types.CBufRet.f32 %6422, 0
  %6424 = extractvalue %dx.types.CBufRet.f32 %6422, 1
  %6425 = extractvalue %dx.types.CBufRet.f32 %6422, 2
  %6426 = extractvalue %dx.types.CBufRet.f32 %6422, 3
  %6427 = select i1 %6420, float %6423, float %6425
  %6428 = select i1 %6421, float %6424, float %6426
  %6429 = fmul fast float %6427, %6418
  %6430 = fmul fast float %6428, %6419
  %6431 = call float @dx.op.unary.f32(i32 6, float %6429)  ; FAbs(value)
  %6432 = call float @dx.op.unary.f32(i32 6, float %6430)  ; FAbs(value)
  %6433 = extractvalue %dx.types.CBufRet.f32 %5742, 0
  %6434 = call float @dx.op.binary.f32(i32 35, float %6431, float %6432)  ; FMax(a,b)
  %6435 = fsub fast float %6433, %6434
  %6436 = call float @dx.op.unary.f32(i32 7, float %6435)  ; Saturate(value)
  %6437 = fcmp fast ogt float %6436, 0.000000e+00
  br i1 %6437, label %6438, label %6479, !dx.controlflow.hints !117

; <label>:6438                                    ; preds = %6380
  %6439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6413, float %6414, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6440 = extractvalue %dx.types.ResRet.f32 %6439, 1
  %6441 = fcmp fast ogt float %6440, 0.000000e+00
  br i1 %6441, label %6442, label %6474

; <label>:6442                                    ; preds = %6438
  %6443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6413, float %6414, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6444 = extractvalue %dx.types.ResRet.f32 %6443, 0
  %6445 = extractvalue %dx.types.ResRet.f32 %6443, 1
  %6446 = extractvalue %dx.types.ResRet.f32 %6443, 2
  %6447 = extractvalue %dx.types.ResRet.f32 %6443, 3
  %6448 = fsub fast float 1.000000e+00, %6395
  %6449 = fsub fast float %6448, %6406
  %6450 = fmul fast float %6449, 0x400921FB60000000
  %6451 = fadd fast float %6450, 0x3FF921FB60000000
  %6452 = call float @dx.op.unary.f32(i32 13, float %6451)  ; Sin(value)
  %6453 = fadd fast float %6452, -1.000000e+00
  %6454 = fmul fast float %6453, 0x3FD45F3060000000
  %6455 = fmul fast float %6449, 0x401921FB60000000
  %6456 = fadd fast float %6455, 0x400921FB60000000
  %6457 = call float @dx.op.unary.f32(i32 13, float %6456)  ; Sin(value)
  %6458 = fadd fast float %6457, 0x3E7777A5C0000000
  %6459 = fmul fast float %6458, 0x3FC45F3060000000
  %6460 = fmul fast float %6449, 0x4022D97C80000000
  %6461 = fadd fast float %6460, 0x4012D97C80000000
  %6462 = call float @dx.op.unary.f32(i32 13, float %6461)  ; Sin(value)
  %6463 = fadd fast float %6462, 1.000000e+00
  %6464 = fmul fast float %6463, 0x3FBB2995E0000000
  %6465 = fmul fast float %6449, 0x402921FB60000000
  %6466 = fadd fast float %6465, 0x401921FB60000000
  %6467 = call float @dx.op.unary.f32(i32 13, float %6466)  ; Sin(value)
  %6468 = fadd fast float %6467, 0xBE8777A5C0000000
  %6469 = fmul fast float %6468, 0x3FB45F3060000000
  %6470 = call float @dx.op.dot4.f32(i32 56, float %6444, float %6445, float %6446, float %6447, float %6454, float %6459, float %6464, float %6469)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6471 = fmul fast float %6470, 0xBFF7154760000000
  %6472 = call float @dx.op.unary.f32(i32 21, float %6471)  ; Exp(value)
  %6473 = call float @dx.op.unary.f32(i32 7, float %6472)  ; Saturate(value)
  br label %6474

; <label>:6474                                    ; preds = %6442, %6438
  %6475 = phi float [ %6473, %6442 ], [ 1.000000e+00, %6438 ]
  %6476 = fadd fast float %6475, -1.000000e+00
  %6477 = fmul fast float %6476, %6436
  %6478 = fadd fast float %6477, 1.000000e+00
  br label %6479

; <label>:6479                                    ; preds = %6474, %6380
  %6480 = phi float [ %6478, %6474 ], [ 1.000000e+00, %6380 ]
  %6481 = fmul fast float %6480, %6376
  %6482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6483 = extractvalue %dx.types.CBufRet.f32 %6482, 0
  %6484 = extractvalue %dx.types.CBufRet.f32 %6482, 1
  %6485 = extractvalue %dx.types.CBufRet.f32 %6482, 2
  %6486 = fadd fast float %6483, %155
  %6487 = fadd fast float %6484, %156
  %6488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6489 = extractvalue %dx.types.CBufRet.f32 %6488, 1
  %6490 = fsub fast float -0.000000e+00, %6486
  %6491 = fsub fast float -0.000000e+00, %6487
  %6492 = fsub fast float %5348, %6485
  %6493 = fadd fast float %6492, %6489
  %6494 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6490, float %6491, float %6493)  ; Dot3(ax,ay,az,bx,by,bz)
  %6495 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5728, float %5729, float %5730)  ; Dot3(ax,ay,az,bx,by,bz)
  %6496 = fdiv fast float 1.000000e+00, %6495
  %6497 = fmul fast float %6496, %6494
  %6498 = fmul fast float %5728, %6497
  %6499 = fmul fast float %5729, %6497
  %6500 = fadd fast float %6498, %6486
  %6501 = fadd fast float %6499, %6487
  %6502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6503 = extractvalue %dx.types.CBufRet.f32 %6502, 0
  %6504 = extractvalue %dx.types.CBufRet.f32 %6502, 1
  %6505 = fsub fast float %6500, %6503
  %6506 = fsub fast float %6501, %6504
  %6507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6508 = extractvalue %dx.types.CBufRet.f32 %6507, 2
  %6509 = extractvalue %dx.types.CBufRet.f32 %6507, 3
  %6510 = fmul fast float %6505, %6508
  %6511 = fmul fast float %6506, %6509
  %6512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6513 = extractvalue %dx.types.CBufRet.i32 %6512, 3
  %6514 = icmp eq i32 %6513, 0
  br i1 %6514, label %6520, label %6515

; <label>:6515                                    ; preds = %6479
  %6516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6510, float %6511, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6517 = extractvalue %dx.types.ResRet.f32 %6516, 0
  %6518 = extractvalue %dx.types.ResRet.f32 %6516, 1
  %6519 = extractvalue %dx.types.ResRet.f32 %6516, 2
  br label %6525

; <label>:6520                                    ; preds = %6479
  %6521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6510, float %6511, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6522 = extractvalue %dx.types.ResRet.f32 %6521, 0
  %6523 = extractvalue %dx.types.ResRet.f32 %6521, 1
  %6524 = extractvalue %dx.types.ResRet.f32 %6521, 2
  br label %6525

; <label>:6525                                    ; preds = %6520, %6515
  %6526 = phi float [ %6517, %6515 ], [ %6522, %6520 ]
  %6527 = phi float [ %6518, %6515 ], [ %6523, %6520 ]
  %6528 = phi float [ %6519, %6515 ], [ %6524, %6520 ]
  %6529 = extractvalue %dx.types.CBufRet.f32 %6488, 2
  %6530 = fmul fast float %6529, %6526
  %6531 = extractvalue %dx.types.CBufRet.f32 %6488, 0
  %6532 = fsub fast float %6497, %6531
  %6533 = fsub fast float %6532, %6530
  %6534 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6533)  ; FMax(a,b)
  %6535 = fmul fast float %6534, %6527
  %6536 = call float @dx.op.binary.f32(i32 36, float %6528, float %6535)  ; FMin(a,b)
  %6537 = fmul fast float %6536, 0xBFF7154760000000
  %6538 = call float @dx.op.unary.f32(i32 21, float %6537)  ; Exp(value)
  %6539 = fmul fast float %6481, %6538
  br label %6540

; <label>:6540                                    ; preds = %6525, %6375
  %6541 = phi float [ %6539, %6525 ], [ %6376, %6375 ]
  %6542 = call float @dx.op.binary.f32(i32 36, float %6541, float %6541)  ; FMin(a,b)
  %6543 = call float @dx.op.binary.f32(i32 36, float %6541, float %6542)  ; FMin(a,b)
  %6544 = fcmp fast ogt float %6543, 0.000000e+00
  br i1 %6544, label %6545, label %6850, !dx.controlflow.hints !118

; <label>:6545                                    ; preds = %6540
  %6546 = fmul fast float %6541, %5739
  %6547 = fmul fast float %6541, %5740
  %6548 = fmul fast float %6541, %5741
  %6549 = fsub fast float %157, %5154
  %6550 = fcmp fast ogt float %6549, 0.000000e+00
  %6551 = fmul fast float %5728, 5.120000e+02
  %6552 = fmul fast float %5729, 5.120000e+02
  %6553 = fmul fast float %5730, 5.120000e+02
  %6554 = fadd fast float %6553, %157
  %6555 = fsub fast float %5154, %6554
  %6556 = fmul fast float %6555, 2.000000e+00
  %6557 = fadd fast float %6556, %6554
  %6558 = select i1 %6550, float %6557, float %6554
  %6559 = fsub fast float %6558, %157
  %6560 = call float @dx.op.dot3.f32(i32 55, float %6551, float %6552, float %6559, float %6551, float %6552, float %6559)  ; Dot3(ax,ay,az,bx,by,bz)
  %6561 = call float @dx.op.unary.f32(i32 25, float %6560)  ; Rsqrt(value)
  %6562 = fmul fast float %6561, %6551
  %6563 = fmul fast float %6561, %6552
  %6564 = fmul fast float %6561, %6559
  %6565 = fsub fast float %5154, %157
  %6566 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6565)  ; Dot3(ax,ay,az,bx,by,bz)
  %6567 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6562, float %6563, float %6564)  ; Dot3(ax,ay,az,bx,by,bz)
  %6568 = fdiv fast float 1.000000e+00, %6567
  %6569 = fmul fast float %6568, %6566
  %6570 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6549, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6571 = fcmp fast ogt float %6570, 0.000000e+00
  %6572 = fcmp fast olt float %6570, 0.000000e+00
  %6573 = zext i1 %6571 to i32
  %6574 = zext i1 %6572 to i32
  %6575 = sub nsw i32 %6573, %6574
  %6576 = sitofp i32 %6575 to float
  %6577 = fsub fast float %6558, %5154
  %6578 = call float @dx.op.dot3.f32(i32 55, float %6551, float %6552, float %6577, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6579 = fcmp fast ogt float %6578, 0.000000e+00
  %6580 = fcmp fast olt float %6578, 0.000000e+00
  %6581 = zext i1 %6579 to i32
  %6582 = zext i1 %6580 to i32
  %6583 = sub nsw i32 %6581, %6582
  %6584 = sitofp i32 %6583 to float
  %6585 = fcmp fast une float %6576, %6584
  br i1 %6585, label %6586, label %6596

; <label>:6586                                    ; preds = %6545
  %6587 = fmul fast float %6569, %6564
  %6588 = fmul fast float %6569, %6563
  %6589 = fmul fast float %6569, %6562
  %6590 = fmul fast float %6589, %6589
  %6591 = fmul fast float %6588, %6588
  %6592 = fadd fast float %6590, %6591
  %6593 = fmul fast float %6587, %6587
  %6594 = fadd fast float %6592, %6593
  %6595 = call float @dx.op.unary.f32(i32 24, float %6594)  ; Sqrt(value)
  br label %6606

; <label>:6596                                    ; preds = %6545
  %6597 = icmp slt i32 %6575, 0
  br i1 %6597, label %6598, label %6606

; <label>:6598                                    ; preds = %6596
  %6599 = fsub fast float %157, %6558
  %6600 = fmul fast float %6551, %6551
  %6601 = fmul fast float %6552, %6552
  %6602 = fadd fast float %6600, %6601
  %6603 = fmul fast float %6599, %6599
  %6604 = fadd fast float %6602, %6603
  %6605 = call float @dx.op.unary.f32(i32 24, float %6604)  ; Sqrt(value)
  br label %6606

; <label>:6606                                    ; preds = %6598, %6596, %6586
  %6607 = phi float [ %6595, %6586 ], [ %6605, %6598 ], [ 0.000000e+00, %6596 ]
  %6608 = fsub fast float -0.000000e+00, %6607
  %6609 = select i1 %6550, float -0.000000e+00, float %6608
  %6610 = fmul fast float %5155, 0x3FF7154760000000
  %6611 = fmul fast float %6610, %6609
  %6612 = fmul fast float %5156, 0x3FF7154760000000
  %6613 = fmul fast float %6612, %6609
  %6614 = fmul fast float %5157, 0x3FF7154760000000
  %6615 = fmul fast float %6614, %6609
  %6616 = call float @dx.op.unary.f32(i32 21, float %6611)  ; Exp(value)
  %6617 = call float @dx.op.unary.f32(i32 21, float %6613)  ; Exp(value)
  %6618 = call float @dx.op.unary.f32(i32 21, float %6615)  ; Exp(value)
  %6619 = call float @dx.op.unary.f32(i32 7, float %6616)  ; Saturate(value)
  %6620 = call float @dx.op.unary.f32(i32 7, float %6617)  ; Saturate(value)
  %6621 = call float @dx.op.unary.f32(i32 7, float %6618)  ; Saturate(value)
  %6622 = fmul fast float %6546, %6619
  %6623 = fmul fast float %6547, %6620
  %6624 = fmul fast float %6548, %6621
  %6625 = fsub fast float %5728, %175
  %6626 = fsub fast float %5729, %176
  %6627 = fsub fast float %5730, %177
  %6628 = call float @dx.op.dot3.f32(i32 55, float %6625, float %6626, float %6627, float %6625, float %6626, float %6627)  ; Dot3(ax,ay,az,bx,by,bz)
  %6629 = call float @dx.op.unary.f32(i32 25, float %6628)  ; Rsqrt(value)
  %6630 = fmul fast float %6629, %6625
  %6631 = fmul fast float %6629, %6626
  %6632 = fmul fast float %6629, %6627
  %6633 = call float @dx.op.dot3.f32(i32 55, float %5728, float %5729, float %5730, float %5343, float %5344, float %5345)  ; Dot3(ax,ay,az,bx,by,bz)
  %6634 = call float @dx.op.dot3.f32(i32 55, float %5171, float %5172, float %5173, float %6630, float %6631, float %6632)  ; Dot3(ax,ay,az,bx,by,bz)
  %6635 = call float @dx.op.unary.f32(i32 7, float %6633)  ; Saturate(value)
  %6636 = fmul fast float %6635, %6635
  %6637 = fmul fast float %6636, %5364
  %6638 = call float @dx.op.unary.f32(i32 7, float %6637)  ; Saturate(value)
  %6639 = fmul fast float %6638, %6635
  %6640 = call float @dx.op.dot3.f32(i32 55, float %5343, float %5344, float %5345, float %6630, float %6631, float %6632)  ; Dot3(ax,ay,az,bx,by,bz)
  %6641 = fmul fast float %6640, %6640
  %6642 = call float @dx.op.unary.f32(i32 6, float %6633)  ; FAbs(value)
  %6643 = fsub fast float 1.000000e+00, %5346
  %6644 = call float @dx.op.binary.f32(i32 35, float %6643, float 0x3F847AE140000000)  ; FMax(a,b)
  %6645 = fmul fast float %6644, %6644
  %6646 = fmul fast float %6645, %6645
  %6647 = fsub fast float 1.000000e+00, %6646
  %6648 = fmul fast float %5351, %5351
  %6649 = fmul fast float %6648, %6647
  %6650 = fadd fast float %6649, %6646
  %6651 = bitcast float %6650 to i32
  %6652 = ashr i32 %6651, 1
  %6653 = add nsw i32 %6652, 532487669
  %6654 = bitcast i32 %6653 to float
  %6655 = fadd fast float %6654, %5351
  %6656 = fmul fast float %6646, %6641
  %6657 = fsub fast float 1.000000e+00, %6641
  %6658 = fadd fast float %6657, %6656
  %6659 = fmul fast float %6642, %6642
  %6660 = fmul fast float %6659, %6647
  %6661 = fadd fast float %6660, %6646
  %6662 = bitcast float %6661 to i32
  %6663 = ashr i32 %6662, 1
  %6664 = add nsw i32 %6663, 532487669
  %6665 = bitcast i32 %6664 to float
  %6666 = fadd fast float %6665, %6642
  %6667 = fmul fast float %6658, %6658
  %6668 = fmul fast float %6667, %6655
  %6669 = fmul fast float %6668, %6666
  %6670 = fdiv fast float 0x3FF0A00000000000, %6669
  %6671 = fmul fast float %6670, %6646
  %6672 = call float @dx.op.unary.f32(i32 6, float %6634)  ; FAbs(value)
  %6673 = fsub fast float 1.000000e+00, %6672
  %6674 = bitcast float %6673 to i32
  %6675 = sitofp i32 %6674 to float
  %6676 = fmul fast float %6675, 5.000000e+00
  %6677 = fadd fast float %6676, 0xC1EFBF8940000000
  %6678 = fptosi float %6677 to i32
  %6679 = bitcast i32 %6678 to float
  %6680 = fsub fast float 1.000000e+00, %5340
  %6681 = fsub fast float 1.000000e+00, %5341
  %6682 = fsub fast float 1.000000e+00, %5349
  %6683 = fmul fast float %6679, %6680
  %6684 = fmul fast float %6679, %6681
  %6685 = fmul fast float %6679, %6682
  %6686 = fadd fast float %6683, %5340
  %6687 = fadd fast float %6684, %5341
  %6688 = fadd fast float %6685, %5349
  br i1 %5621, label %6689, label %6712

; <label>:6689                                    ; preds = %6606
  %6690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4665, float %6672, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6691 = extractvalue %dx.types.ResRet.f32 %6690, 0
  %6692 = extractvalue %dx.types.ResRet.f32 %6690, 1
  %6693 = extractvalue %dx.types.ResRet.f32 %6690, 2
  %6694 = fadd fast float %6691, -5.000000e-01
  %6695 = fadd fast float %6692, -5.000000e-01
  %6696 = fadd fast float %6693, -5.000000e-01
  %6697 = fmul fast float %5340, 4.000000e+00
  %6698 = fmul fast float %6697, %6680
  %6699 = fmul fast float %6698, %6694
  %6700 = fmul fast float %5341, 4.000000e+00
  %6701 = fmul fast float %6700, %6681
  %6702 = fmul fast float %6701, %6695
  %6703 = fmul fast float %5349, 4.000000e+00
  %6704 = fmul fast float %6703, %6682
  %6705 = fmul fast float %6704, %6696
  %6706 = fadd fast float %6699, %6686
  %6707 = fadd fast float %6702, %6687
  %6708 = fadd fast float %6705, %6688
  %6709 = call float @dx.op.unary.f32(i32 7, float %6706)  ; Saturate(value)
  %6710 = call float @dx.op.unary.f32(i32 7, float %6707)  ; Saturate(value)
  %6711 = call float @dx.op.unary.f32(i32 7, float %6708)  ; Saturate(value)
  br label %6712

; <label>:6712                                    ; preds = %6689, %6606
  %6713 = phi float [ %6709, %6689 ], [ %6686, %6606 ]
  %6714 = phi float [ %6710, %6689 ], [ %6687, %6606 ]
  %6715 = phi float [ %6711, %6689 ], [ %6688, %6606 ]
  %6716 = fmul fast float %6633, 9.843750e-01
  %6717 = fadd fast float %6716, 7.812500e-03
  %6718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6717, float %5611, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6719 = extractvalue %dx.types.ResRet.f32 %6718, 2
  %6720 = extractvalue %dx.types.ResRet.f32 %6718, 3
  %6721 = fmul fast float %6719, %5340
  %6722 = fmul fast float %6719, %5341
  %6723 = fmul fast float %6719, %5349
  %6724 = fadd fast float %6721, %6720
  %6725 = fadd fast float %6722, %6720
  %6726 = fadd fast float %6723, %6720
  br i1 %5621, label %6727, label %6750

; <label>:6727                                    ; preds = %6712
  %6728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4665, float %6633, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6729 = extractvalue %dx.types.ResRet.f32 %6728, 0
  %6730 = extractvalue %dx.types.ResRet.f32 %6728, 1
  %6731 = extractvalue %dx.types.ResRet.f32 %6728, 2
  %6732 = fadd fast float %6729, -5.000000e-01
  %6733 = fadd fast float %6730, -5.000000e-01
  %6734 = fadd fast float %6731, -5.000000e-01
  %6735 = fmul fast float %5340, 4.000000e+00
  %6736 = fmul fast float %6735, %6680
  %6737 = fmul fast float %6736, %6732
  %6738 = fmul fast float %5341, 4.000000e+00
  %6739 = fmul fast float %6738, %6681
  %6740 = fmul fast float %6739, %6733
  %6741 = fmul fast float %5349, 4.000000e+00
  %6742 = fmul fast float %6741, %6682
  %6743 = fmul fast float %6742, %6734
  %6744 = fadd fast float %6737, %6724
  %6745 = fadd fast float %6740, %6725
  %6746 = fadd fast float %6743, %6726
  %6747 = call float @dx.op.unary.f32(i32 7, float %6744)  ; Saturate(value)
  %6748 = call float @dx.op.unary.f32(i32 7, float %6745)  ; Saturate(value)
  %6749 = call float @dx.op.unary.f32(i32 7, float %6746)  ; Saturate(value)
  br label %6750

; <label>:6750                                    ; preds = %6727, %6712
  %6751 = phi float [ %6747, %6727 ], [ %6724, %6712 ]
  %6752 = phi float [ %6748, %6727 ], [ %6725, %6712 ]
  %6753 = phi float [ %6749, %6727 ], [ %6726, %6712 ]
  %6754 = call float @dx.op.binary.f32(i32 35, float %6752, float %6753)  ; FMax(a,b)
  %6755 = call float @dx.op.binary.f32(i32 35, float %6751, float %6754)  ; FMax(a,b)
  %6756 = fsub fast float 1.000000e+00, %6755
  %6757 = fsub fast float -0.000000e+00, %5343
  %6758 = fsub fast float -0.000000e+00, %5344
  %6759 = fsub fast float -0.000000e+00, %5345
  %6760 = call float @dx.op.dot3.f32(i32 55, float %5728, float %5729, float %5730, float %6757, float %6758, float %6759)  ; Dot3(ax,ay,az,bx,by,bz)
  %6761 = call float @dx.op.unary.f32(i32 7, float %6760)  ; Saturate(value)
  %6762 = fmul fast float %6761, 9.843750e-01
  %6763 = fadd fast float %6762, 7.812500e-03
  %6764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6763, float %5611, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6765 = extractvalue %dx.types.ResRet.f32 %6764, 2
  %6766 = extractvalue %dx.types.ResRet.f32 %6764, 3
  %6767 = fmul fast float %6765, %5340
  %6768 = fmul fast float %6765, %5341
  %6769 = fmul fast float %6765, %5349
  %6770 = fadd fast float %6767, %6766
  %6771 = fadd fast float %6768, %6766
  %6772 = fadd fast float %6769, %6766
  br i1 %5621, label %6773, label %6796

; <label>:6773                                    ; preds = %6750
  %6774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4665, float %6761, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6775 = extractvalue %dx.types.ResRet.f32 %6774, 0
  %6776 = extractvalue %dx.types.ResRet.f32 %6774, 1
  %6777 = extractvalue %dx.types.ResRet.f32 %6774, 2
  %6778 = fadd fast float %6775, -5.000000e-01
  %6779 = fadd fast float %6776, -5.000000e-01
  %6780 = fadd fast float %6777, -5.000000e-01
  %6781 = fmul fast float %5340, 4.000000e+00
  %6782 = fmul fast float %6781, %6680
  %6783 = fmul fast float %6782, %6778
  %6784 = fmul fast float %5341, 4.000000e+00
  %6785 = fmul fast float %6784, %6681
  %6786 = fmul fast float %6785, %6779
  %6787 = fmul fast float %5349, 4.000000e+00
  %6788 = fmul fast float %6787, %6682
  %6789 = fmul fast float %6788, %6780
  %6790 = fadd fast float %6783, %6770
  %6791 = fadd fast float %6786, %6771
  %6792 = fadd fast float %6789, %6772
  %6793 = call float @dx.op.unary.f32(i32 7, float %6790)  ; Saturate(value)
  %6794 = call float @dx.op.unary.f32(i32 7, float %6791)  ; Saturate(value)
  %6795 = call float @dx.op.unary.f32(i32 7, float %6792)  ; Saturate(value)
  br label %6796

; <label>:6796                                    ; preds = %6773, %6750
  %6797 = phi float [ %6793, %6773 ], [ %6770, %6750 ]
  %6798 = phi float [ %6794, %6773 ], [ %6771, %6750 ]
  %6799 = phi float [ %6795, %6773 ], [ %6772, %6750 ]
  %6800 = call float @dx.op.binary.f32(i32 35, float %6798, float %6799)  ; FMax(a,b)
  %6801 = call float @dx.op.binary.f32(i32 35, float %6797, float %6800)  ; FMax(a,b)
  %6802 = fsub fast float 1.000000e+00, %6801
  %6803 = fmul fast float %6802, %6761
  %6804 = fmul fast float %6803, %4777
  %6805 = fmul fast float %6803, %4778
  %6806 = fmul fast float %6803, %4779
  %6807 = fmul fast float %6713, %6671
  %6808 = fmul fast float %6714, %6671
  %6809 = fmul fast float %6715, %6671
  %6810 = fsub fast float 1.000000e+00, %6634
  %6811 = bitcast float %6810 to i32
  %6812 = sitofp i32 %6811 to float
  %6813 = fmul fast float %6812, 5.000000e+00
  %6814 = fadd fast float %6813, 0xC1EFBF8940000000
  %6815 = fptosi float %6814 to i32
  %6816 = bitcast i32 %6815 to float
  %6817 = fmul fast float %6816, %4666
  %6818 = fmul fast float %6756, %6817
  %6819 = fmul fast float %6818, %5668
  %6820 = fmul fast float %6818, %5669
  %6821 = fmul fast float %6818, %5670
  %6822 = fmul fast float %6756, %6639
  %6823 = fadd fast float %6819, %6807
  %6824 = fadd fast float %6820, %6808
  %6825 = fadd fast float %6821, %6809
  %6826 = fadd fast float %6804, %6822
  %6827 = fadd fast float %6805, %6822
  %6828 = fadd fast float %6806, %6822
  %6829 = fmul fast float %6826, %6622
  %6830 = fmul fast float %6827, %6623
  %6831 = fmul fast float %6828, %6624
  %6832 = fmul fast float %6639, %6622
  %6833 = fmul fast float %6832, %6823
  %6834 = fmul fast float %6639, %6623
  %6835 = fmul fast float %6834, %6824
  %6836 = fmul fast float %6639, %6624
  %6837 = fmul fast float %6836, %6825
  %6838 = fadd fast float %6829, %5718
  %6839 = fmul fast float %6838, %4691
  %6840 = fadd fast float %6830, %5720
  %6841 = fmul fast float %6840, %4691
  %6842 = fadd fast float %6831, %5722
  %6843 = fmul fast float %6842, %4691
  %6844 = fadd fast float %6833, %5701
  %6845 = fmul fast float %6844, %4691
  %6846 = fadd fast float %6835, %5704
  %6847 = fmul fast float %6846, %4691
  %6848 = fadd fast float %6837, %5707
  %6849 = fmul fast float %6848, %4691
  br label %6850

; <label>:6850                                    ; preds = %6796, %6540, %5648
  %6851 = phi float [ %5702, %5648 ], [ %5702, %6540 ], [ %6845, %6796 ]
  %6852 = phi float [ %5705, %5648 ], [ %5705, %6540 ], [ %6847, %6796 ]
  %6853 = phi float [ %5708, %5648 ], [ %5708, %6540 ], [ %6849, %6796 ]
  %6854 = phi float [ %5719, %5648 ], [ %5719, %6540 ], [ %6839, %6796 ]
  %6855 = phi float [ %5721, %5648 ], [ %5721, %6540 ], [ %6841, %6796 ]
  %6856 = phi float [ %5723, %5648 ], [ %5723, %6540 ], [ %6843, %6796 ]
  %6857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6858 = extractvalue %dx.types.CBufRet.i32 %6857, 0
  %6859 = icmp eq i32 %6858, 0
  br i1 %6859, label %7535, label %6860

; <label>:6860                                    ; preds = %6850
  %6861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6862 = extractvalue %dx.types.CBufRet.f32 %6861, 2
  %6863 = extractvalue %dx.types.CBufRet.f32 %6861, 3
  %6864 = fmul fast float %6862, %100
  %6865 = fmul fast float %6863, %101
  %6866 = fptoui float %6864 to i32
  %6867 = fptoui float %6865 to i32
  %6868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6869 = extractvalue %dx.types.CBufRet.f32 %6868, 0
  %6870 = extractvalue %dx.types.CBufRet.f32 %6868, 2
  %6871 = extractvalue %dx.types.CBufRet.f32 %6868, 3
  %6872 = fadd fast float %91, -4.000000e+00
  %6873 = call float @dx.op.binary.f32(i32 35, float %6872, float 0.000000e+00)  ; FMax(a,b)
  %6874 = fadd fast float %6873, %6869
  %6875 = fmul fast float %6874, %6870
  %6876 = call float @dx.op.unary.f32(i32 23, float %6875)  ; Log(value)
  %6877 = fmul fast float %6876, %6871
  %6878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6879 = extractvalue %dx.types.CBufRet.f32 %6878, 2
  %6880 = fmul fast float %6877, %6879
  %6881 = call float @dx.op.unary.f32(i32 7, float %6880)  ; Saturate(value)
  %6882 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6883 = extractvalue %dx.types.CBufRet.i32 %6882, 1
  %6884 = add i32 %6883, -1
  %6885 = uitofp i32 %6883 to float
  %6886 = fmul fast float %6885, %6881
  %6887 = fptoui float %6886 to i32
  %6888 = call i32 @dx.op.binary.i32(i32 40, i32 %6887, i32 %6884)  ; UMin(a,b)
  %6889 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6890 = extractvalue %dx.types.CBufRet.i32 %6889, 2
  %6891 = extractvalue %dx.types.CBufRet.i32 %6889, 3
  %6892 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6867, i32 %6890, i32 %6866)  ; UMad(a,b,c)
  %6893 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6888, i32 %6891, i32 %6892)  ; UMad(a,b,c)
  %6894 = add nsw i32 %6858, -1
  %6895 = call i32 @dx.op.binary.i32(i32 37, i32 %6894, i32 0)  ; IMax(a,b)
  %6896 = call float @dx.op.binary.f32(i32 35, float %91, float 0.000000e+00)  ; FMax(a,b)
  %6897 = fptoui float %6896 to i32
  %6898 = lshr i32 %6897, 5
  %6899 = call i32 @dx.op.binary.i32(i32 40, i32 %6898, i32 8191)  ; UMin(a,b)
  %6900 = shl i32 %6899, 2
  %6901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6900, i32 undef)  ; BufferLoad(srv,index,wot)
  %6902 = extractvalue %dx.types.ResRet.i32 %6901, 0
  %6903 = lshr i32 %6902, 16
  %6904 = and i32 %6902, 65535
  %6905 = lshr i32 %6902, 21
  %6906 = lshr i32 %6904, 5
  %6907 = call i32 @dx.op.binary.i32(i32 40, i32 %6906, i32 %6895)  ; UMin(a,b)
  %6908 = icmp ugt i32 %6905, %6907
  br i1 %6908, label %7535, label %6909

; <label>:6909                                    ; preds = %6860
  br label %6910

; <label>:6910                                    ; preds = %7525, %6909
  %6911 = phi i32 [ %7532, %7525 ], [ %6905, %6909 ]
  %6912 = phi float [ %7526, %7525 ], [ %6851, %6909 ]
  %6913 = phi float [ %7527, %7525 ], [ %6852, %6909 ]
  %6914 = phi float [ %7528, %7525 ], [ %6853, %6909 ]
  %6915 = phi float [ %7529, %7525 ], [ %6854, %6909 ]
  %6916 = phi float [ %7530, %7525 ], [ %6855, %6909 ]
  %6917 = phi float [ %7531, %7525 ], [ %6856, %6909 ]
  %6918 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6919 = extractvalue %dx.types.CBufRet.i32 %6918, 0
  %6920 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6893, i32 %6919, i32 %6911)  ; UMad(a,b,c)
  %6921 = shl i32 %6920, 2
  %6922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6921, i32 undef)  ; BufferLoad(srv,index,wot)
  %6923 = extractvalue %dx.types.ResRet.i32 %6922, 0
  %6924 = shl i32 %6911, 5
  %6925 = sub nsw i32 %6903, %6924
  %6926 = call i32 @dx.op.binary.i32(i32 37, i32 %6925, i32 0)  ; IMax(a,b)
  %6927 = call i32 @dx.op.binary.i32(i32 38, i32 %6926, i32 31)  ; IMin(a,b)
  %6928 = sub nsw i32 1, %6903
  %6929 = add nsw i32 %6928, %6904
  %6930 = call i32 @dx.op.binary.i32(i32 37, i32 %6929, i32 0)  ; IMax(a,b)
  %6931 = call i32 @dx.op.binary.i32(i32 38, i32 %6930, i32 32)  ; IMin(a,b)
  %6932 = and i32 %6931, 31
  %6933 = shl i32 -1, %6932
  %6934 = xor i32 %6933, -1
  %6935 = and i32 %6927, 31
  %6936 = shl i32 %6934, %6935
  %6937 = icmp eq i32 %6931, 32
  %6938 = select i1 %6937, i32 -1, i32 %6936
  %6939 = and i32 %6938, %6923
  %6940 = icmp eq i32 %6939, 0
  br i1 %6940, label %7525, label %6941

; <label>:6941                                    ; preds = %6910
  br label %6942

; <label>:6942                                    ; preds = %7076, %6941
  %6943 = phi i32 [ %6954, %7076 ], [ %6939, %6941 ]
  %6944 = phi float [ %7077, %7076 ], [ %6912, %6941 ]
  %6945 = phi float [ %7078, %7076 ], [ %6913, %6941 ]
  %6946 = phi float [ %7079, %7076 ], [ %6914, %6941 ]
  %6947 = phi float [ %7080, %7076 ], [ %6915, %6941 ]
  %6948 = phi float [ %7081, %7076 ], [ %6916, %6941 ]
  %6949 = phi float [ %7082, %7076 ], [ %6917, %6941 ]
  %6950 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6943)  ; FirstbitLo(value)
  %6951 = add i32 %6950, %6924
  %6952 = and i32 %6950, 31
  %6953 = shl i32 1, %6952
  %6954 = xor i32 %6953, %6943
  %6955 = mul i32 %6951, 112
  %6956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6955, i32 undef)  ; BufferLoad(srv,index,wot)
  %6957 = extractvalue %dx.types.ResRet.f32 %6956, 0
  %6958 = extractvalue %dx.types.ResRet.f32 %6956, 1
  %6959 = extractvalue %dx.types.ResRet.f32 %6956, 2
  %6960 = or i32 %6955, 12
  %6961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6960, i32 undef)  ; BufferLoad(srv,index,wot)
  %6962 = extractvalue %dx.types.ResRet.f32 %6961, 0
  %6963 = add i32 %6955, 16
  %6964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6963, i32 undef)  ; BufferLoad(srv,index,wot)
  %6965 = extractvalue %dx.types.ResRet.f32 %6964, 0
  %6966 = extractvalue %dx.types.ResRet.f32 %6964, 1
  %6967 = extractvalue %dx.types.ResRet.f32 %6964, 2
  %6968 = add i32 %6955, 28
  %6969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6968, i32 undef)  ; BufferLoad(srv,index,wot)
  %6970 = extractvalue %dx.types.ResRet.i32 %6969, 0
  %6971 = add i32 %6955, 44
  %6972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6971, i32 undef)  ; BufferLoad(srv,index,wot)
  %6973 = extractvalue %dx.types.ResRet.f32 %6972, 0
  %6974 = add i32 %6955, 48
  %6975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6974, i32 undef)  ; BufferLoad(srv,index,wot)
  %6976 = extractvalue %dx.types.ResRet.f32 %6975, 0
  %6977 = extractvalue %dx.types.ResRet.f32 %6975, 1
  %6978 = extractvalue %dx.types.ResRet.f32 %6975, 2
  %6979 = extractvalue %dx.types.ResRet.f32 %6975, 3
  %6980 = add i32 %6955, 64
  %6981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6980, i32 undef)  ; BufferLoad(srv,index,wot)
  %6982 = extractvalue %dx.types.ResRet.f32 %6981, 0
  %6983 = extractvalue %dx.types.ResRet.f32 %6981, 1
  %6984 = extractvalue %dx.types.ResRet.f32 %6981, 2
  %6985 = extractvalue %dx.types.ResRet.f32 %6981, 3
  %6986 = add i32 %6955, 80
  %6987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6986, i32 undef)  ; BufferLoad(srv,index,wot)
  %6988 = extractvalue %dx.types.ResRet.f32 %6987, 1
  %6989 = extractvalue %dx.types.ResRet.f32 %6987, 2
  %6990 = add i32 %6955, 92
  %6991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6990, i32 undef)  ; BufferLoad(srv,index,wot)
  %6992 = extractvalue %dx.types.ResRet.i32 %6991, 0
  %6993 = call float @dx.op.dot3.f32(i32 55, float %6957, float %6958, float %6959, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6994 = select i1 %249, float %6988, float %6957
  %6995 = select i1 %249, float %6993, float %6958
  %6996 = select i1 %249, float %6989, float %6959
  %6997 = and i32 %6992, 65535
  %6998 = uitofp i32 %6997 to float
  %6999 = lshr i32 %6992, 16
  %7000 = uitofp i32 %6999 to float
  %7001 = and i32 %6970, 65535
  %7002 = and i32 %6970, 50331648
  %7003 = icmp eq i32 %7002, 33554432
  %7004 = fsub fast float %6976, %155
  %7005 = fsub fast float %6977, %156
  %7006 = fsub fast float %6978, %157
  %7007 = call float @dx.op.dot3.f32(i32 55, float %7004, float %7005, float %7006, float %7004, float %7005, float %7006)  ; Dot3(ax,ay,az,bx,by,bz)
  %7008 = call float @dx.op.unary.f32(i32 24, float %7007)  ; Sqrt(value)
  %7009 = fdiv fast float 1.000000e+00, %7008
  %7010 = fmul fast float %7009, %7004
  %7011 = fmul fast float %7009, %7005
  %7012 = fmul fast float %7009, %7006
  %7013 = fadd fast float %7008, %6962
  %7014 = fdiv fast float 1.000000e+00, %7013
  %7015 = fmul float %6973, %7014
  %7016 = fmul float %7015, %7015
  %7017 = call float @dx.op.unary.f32(i32 7, float %7016)  ; Saturate(value)
  br i1 %7003, label %7018, label %7039

; <label>:7018                                    ; preds = %6942
  %7019 = fmul fast float %6984, %6965
  %7020 = fmul fast float %6984, %6966
  %7021 = fmul fast float %6984, %6967
  %7022 = fadd fast float %7004, %7019
  %7023 = fadd fast float %7005, %7020
  %7024 = fadd fast float %7006, %7021
  %7025 = call float @dx.op.dot3.f32(i32 55, float %7022, float %7023, float %7024, float %7022, float %7023, float %7024)  ; Dot3(ax,ay,az,bx,by,bz)
  %7026 = call float @dx.op.unary.f32(i32 25, float %7025)  ; Rsqrt(value)
  %7027 = fmul fast float %7026, %7022
  %7028 = fmul fast float %7026, %7023
  %7029 = fmul fast float %7026, %7024
  %7030 = fsub fast float %155, %6976
  %7031 = fsub fast float %156, %6977
  %7032 = fsub fast float %157, %6978
  %7033 = fsub fast float -0.000000e+00, %7030
  %7034 = fsub fast float -0.000000e+00, %7031
  %7035 = fsub fast float -0.000000e+00, %7032
  %7036 = call float @dx.op.dot3.f32(i32 55, float %7033, float %7034, float %7035, float %6965, float %6966, float %6967)  ; Dot3(ax,ay,az,bx,by,bz)
  %7037 = fcmp fast ogt float %7036, 0.000000e+00
  %7038 = uitofp i1 %7037 to float
  br label %7039

; <label>:7039                                    ; preds = %7018, %6942
  %7040 = phi float [ %7038, %7018 ], [ 1.000000e+00, %6942 ]
  %7041 = phi float [ %7027, %7018 ], [ %7010, %6942 ]
  %7042 = phi float [ %7028, %7018 ], [ %7011, %6942 ]
  %7043 = phi float [ %7029, %7018 ], [ %7012, %6942 ]
  %7044 = call float @dx.op.dot3.f32(i32 55, float %6965, float %6966, float %6967, float %7041, float %7042, float %7043)  ; Dot3(ax,ay,az,bx,by,bz)
  %7045 = fmul fast float %7044, %7044
  %7046 = call float @dx.op.unary.f32(i32 7, float %7045)  ; Saturate(value)
  %7047 = fsub fast float 1.000000e+00, %7046
  %7048 = fmul fast float %7047, 5.000000e-01
  %7049 = fcmp fast ogt float %7044, 0.000000e+00
  %7050 = fsub fast float 1.000000e+00, %7048
  %7051 = select i1 %7049, float %7048, float %7050
  %7052 = fmul fast float %7051, %7000
  %7053 = fadd fast float %7052, %6998
  %7054 = fmul fast float %7053, 0x3EF0001000000000
  %7055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %7054, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7056 = extractvalue %dx.types.ResRet.f32 %7055, 0
  %7057 = fmul fast float %7044, %6982
  %7058 = fadd fast float %7057, %6983
  %7059 = call float @dx.op.unary.f32(i32 7, float %7058)  ; Saturate(value)
  %7060 = select i1 %7003, float 1.000000e+00, float %7059
  %7061 = select i1 %7003, float %7059, float 1.000000e+00
  %7062 = fmul fast float %7008, %6979
  %7063 = fsub fast float 1.000000e+00, %7062
  %7064 = fmul fast float %7063, %6985
  %7065 = call float @dx.op.unary.f32(i32 7, float %7064)  ; Saturate(value)
  %7066 = fmul fast float %7065, %7061
  %7067 = fmul fast float %7066, 2.000000e+00
  %7068 = fsub fast float 3.000000e+00, %7067
  %7069 = fmul fast float %7056, %7040
  %7070 = fmul fast float %7066, %7066
  %7071 = fmul fast float %7070, %7069
  %7072 = fmul fast float %7071, %7068
  %7073 = call float @dx.op.binary.f32(i32 36, float %7072, float %7072)  ; FMin(a,b)
  %7074 = call float @dx.op.binary.f32(i32 36, float %7072, float %7073)  ; FMin(a,b)
  %7075 = fcmp fast ogt float %7074, 0.000000e+00
  br i1 %7075, label %7084, label %7076, !dx.controlflow.hints !119

; <label>:7076                                    ; preds = %7473, %7184, %7039
  %7077 = phi float [ %6944, %7184 ], [ %6944, %7039 ], [ %7521, %7473 ]
  %7078 = phi float [ %6945, %7184 ], [ %6945, %7039 ], [ %7522, %7473 ]
  %7079 = phi float [ %6946, %7184 ], [ %6946, %7039 ], [ %7523, %7473 ]
  %7080 = phi float [ %6947, %7184 ], [ %6947, %7039 ], [ %7512, %7473 ]
  %7081 = phi float [ %6948, %7184 ], [ %6948, %7039 ], [ %7513, %7473 ]
  %7082 = phi float [ %6949, %7184 ], [ %6949, %7039 ], [ %7514, %7473 ]
  %7083 = icmp eq i32 %6943, %6953
  br i1 %7083, label %7524, label %6942

; <label>:7084                                    ; preds = %7039
  %7085 = icmp eq i32 %7001, 255
  br i1 %7085, label %7184, label %7086, !dx.controlflow.hints !120

; <label>:7086                                    ; preds = %7084
  %7087 = mul nuw nsw i32 %7001, 176
  %7088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7087, i32 undef)  ; BufferLoad(srv,index,wot)
  %7089 = extractvalue %dx.types.ResRet.f32 %7088, 0
  %7090 = extractvalue %dx.types.ResRet.f32 %7088, 1
  %7091 = extractvalue %dx.types.ResRet.f32 %7088, 2
  %7092 = extractvalue %dx.types.ResRet.f32 %7088, 3
  %7093 = add nuw nsw i32 %7087, 16
  %7094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7093, i32 undef)  ; BufferLoad(srv,index,wot)
  %7095 = extractvalue %dx.types.ResRet.f32 %7094, 0
  %7096 = extractvalue %dx.types.ResRet.f32 %7094, 1
  %7097 = add nuw nsw i32 %7087, 32
  %7098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7097, i32 undef)  ; BufferLoad(srv,index,wot)
  %7099 = extractvalue %dx.types.ResRet.f32 %7098, 0
  %7100 = extractvalue %dx.types.ResRet.f32 %7098, 1
  %7101 = extractvalue %dx.types.ResRet.f32 %7098, 2
  %7102 = add nuw nsw i32 %7087, 48
  %7103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7102, i32 undef)  ; BufferLoad(srv,index,wot)
  %7104 = extractvalue %dx.types.ResRet.f32 %7103, 0
  %7105 = extractvalue %dx.types.ResRet.f32 %7103, 1
  %7106 = extractvalue %dx.types.ResRet.f32 %7103, 2
  %7107 = extractvalue %dx.types.ResRet.f32 %7103, 3
  %7108 = add nuw nsw i32 %7087, 64
  %7109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7108, i32 undef)  ; BufferLoad(srv,index,wot)
  %7110 = extractvalue %dx.types.ResRet.f32 %7109, 0
  %7111 = extractvalue %dx.types.ResRet.f32 %7109, 1
  %7112 = extractvalue %dx.types.ResRet.f32 %7109, 2
  %7113 = extractvalue %dx.types.ResRet.f32 %7109, 3
  %7114 = add nuw nsw i32 %7087, 80
  %7115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7114, i32 undef)  ; BufferLoad(srv,index,wot)
  %7116 = extractvalue %dx.types.ResRet.f32 %7115, 0
  %7117 = extractvalue %dx.types.ResRet.f32 %7115, 1
  %7118 = extractvalue %dx.types.ResRet.f32 %7115, 2
  %7119 = extractvalue %dx.types.ResRet.f32 %7115, 3
  %7120 = add nuw nsw i32 %7087, 96
  %7121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7120, i32 undef)  ; BufferLoad(srv,index,wot)
  %7122 = extractvalue %dx.types.ResRet.f32 %7121, 0
  %7123 = extractvalue %dx.types.ResRet.f32 %7121, 1
  %7124 = extractvalue %dx.types.ResRet.f32 %7121, 2
  %7125 = extractvalue %dx.types.ResRet.f32 %7121, 3
  %7126 = bitcast float %7096 to i32
  %7127 = fmul fast float %7101, %107
  %7128 = fmul fast float %7101, %108
  %7129 = fmul fast float %7101, %109
  %7130 = fadd fast float %7127, %155
  %7131 = fadd fast float %7128, %156
  %7132 = fadd fast float %7129, %157
  %7133 = fmul fast float %7130, %7104
  %7134 = call float @dx.op.tertiary.f32(i32 46, float %7131, float %7110, float %7133)  ; FMad(a,b,c)
  %7135 = call float @dx.op.tertiary.f32(i32 46, float %7132, float %7116, float %7134)  ; FMad(a,b,c)
  %7136 = fadd fast float %7135, %7122
  %7137 = fmul fast float %7130, %7105
  %7138 = call float @dx.op.tertiary.f32(i32 46, float %7131, float %7111, float %7137)  ; FMad(a,b,c)
  %7139 = call float @dx.op.tertiary.f32(i32 46, float %7132, float %7117, float %7138)  ; FMad(a,b,c)
  %7140 = fadd fast float %7139, %7123
  %7141 = fmul fast float %7130, %7106
  %7142 = call float @dx.op.tertiary.f32(i32 46, float %7131, float %7112, float %7141)  ; FMad(a,b,c)
  %7143 = call float @dx.op.tertiary.f32(i32 46, float %7132, float %7118, float %7142)  ; FMad(a,b,c)
  %7144 = fadd fast float %7143, %7124
  %7145 = fmul fast float %7130, %7107
  %7146 = call float @dx.op.tertiary.f32(i32 46, float %7131, float %7113, float %7145)  ; FMad(a,b,c)
  %7147 = call float @dx.op.tertiary.f32(i32 46, float %7132, float %7119, float %7146)  ; FMad(a,b,c)
  %7148 = fadd fast float %7147, %7125
  %7149 = fdiv fast float %7136, %7148
  %7150 = fdiv fast float %7140, %7148
  %7151 = fdiv fast float %7144, %7148
  %7152 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7151)  ; FMax(a,b)
  %7153 = fmul fast float %260, 0x401921FB60000000
  %7154 = call float @dx.op.unary.f32(i32 13, float %7153)  ; Sin(value)
  %7155 = call float @dx.op.unary.f32(i32 12, float %7153)  ; Cos(value)
  %7156 = fsub fast float -0.000000e+00, %7154
  %7157 = fmul fast float %7091, 5.000000e-01
  %7158 = call float @dx.op.dot2.f32(i32 54, float %260, float %260, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7159 = call float @dx.op.unary.f32(i32 22, float %7158)  ; Frc(value)
  %7160 = fmul fast float %7159, 0x404A7DD040000000
  %7161 = call float @dx.op.unary.f32(i32 22, float %7160)  ; Frc(value)
  %7162 = fmul fast float %7161, %7100
  %7163 = fadd fast float %7162, %7157
  %7164 = call float @dx.op.tertiary.f32(i32 46, float %7163, float %7156, float 0.000000e+00)  ; FMad(a,b,c)
  %7165 = call float @dx.op.tertiary.f32(i32 46, float %7163, float %7155, float 0.000000e+00)  ; FMad(a,b,c)
  %7166 = fadd fast float %7164, %7149
  %7167 = fadd fast float %7165, %7150
  %7168 = fmul fast float %7166, %7095
  %7169 = fmul fast float %7167, %7095
  %7170 = call float @dx.op.binary.f32(i32 35, float %7168, float %7091)  ; FMax(a,b)
  %7171 = call float @dx.op.binary.f32(i32 35, float %7169, float %7091)  ; FMax(a,b)
  %7172 = call float @dx.op.binary.f32(i32 36, float %7170, float %7092)  ; FMin(a,b)
  %7173 = call float @dx.op.binary.f32(i32 36, float %7171, float %7092)  ; FMin(a,b)
  %7174 = fadd fast float %7172, %7089
  %7175 = fadd fast float %7173, %7090
  %7176 = uitofp i32 %7126 to float
  %7177 = fadd fast float %7152, %7099
  %7178 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %7174, float %7175, float %7176, float undef, i32 0, i32 0, i32 undef, float %7177)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7179 = extractvalue %dx.types.ResRet.f32 %7178, 0
  %7180 = fadd fast float %7179, -1.000000e+00
  %7181 = fmul fast float %7180, %7060
  %7182 = fadd fast float %7181, 1.000000e+00
  %7183 = fmul fast float %7182, %7072
  br label %7184

; <label>:7184                                    ; preds = %7086, %7084
  %7185 = phi float [ %7183, %7086 ], [ %7072, %7084 ]
  %7186 = call float @dx.op.binary.f32(i32 36, float %7185, float %7185)  ; FMin(a,b)
  %7187 = call float @dx.op.binary.f32(i32 36, float %7185, float %7186)  ; FMin(a,b)
  %7188 = fcmp fast ogt float %7187, 0.000000e+00
  br i1 %7188, label %7189, label %7076, !dx.controlflow.hints !121

; <label>:7189                                    ; preds = %7184
  %7190 = fmul fast float %7185, %6994
  %7191 = fmul fast float %7185, %6995
  %7192 = fmul fast float %7185, %6996
  %7193 = fsub fast float %6978, %5154
  %7194 = fcmp fast ogt float %7193, 0.000000e+00
  %7195 = fsub fast float %157, %5154
  %7196 = fcmp fast ogt float %7195, 0.000000e+00
  %7197 = xor i1 %7196, %7194
  %7198 = fsub fast float %5154, %6978
  %7199 = fmul fast float %7198, 2.000000e+00
  %7200 = fadd fast float %7199, %6978
  %7201 = select i1 %7197, float %6978, float %7200
  %7202 = fsub fast float %7201, %157
  %7203 = call float @dx.op.dot3.f32(i32 55, float %7004, float %7005, float %7202, float %7004, float %7005, float %7202)  ; Dot3(ax,ay,az,bx,by,bz)
  %7204 = call float @dx.op.unary.f32(i32 25, float %7203)  ; Rsqrt(value)
  %7205 = fmul fast float %7204, %7004
  %7206 = fmul fast float %7204, %7005
  %7207 = fmul fast float %7204, %7202
  %7208 = fsub fast float %5154, %157
  %7209 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7208)  ; Dot3(ax,ay,az,bx,by,bz)
  %7210 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7205, float %7206, float %7207)  ; Dot3(ax,ay,az,bx,by,bz)
  %7211 = fdiv fast float 1.000000e+00, %7210
  %7212 = fmul fast float %7211, %7209
  %7213 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7195, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7214 = fcmp fast ogt float %7213, 0.000000e+00
  %7215 = fcmp fast olt float %7213, 0.000000e+00
  %7216 = zext i1 %7214 to i32
  %7217 = zext i1 %7215 to i32
  %7218 = sub nsw i32 %7216, %7217
  %7219 = sitofp i32 %7218 to float
  %7220 = fsub fast float %7201, %5154
  %7221 = call float @dx.op.dot3.f32(i32 55, float %7004, float %7005, float %7220, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7222 = fcmp fast ogt float %7221, 0.000000e+00
  %7223 = fcmp fast olt float %7221, 0.000000e+00
  %7224 = zext i1 %7222 to i32
  %7225 = zext i1 %7223 to i32
  %7226 = sub nsw i32 %7224, %7225
  %7227 = sitofp i32 %7226 to float
  %7228 = fcmp fast une float %7219, %7227
  br i1 %7228, label %7229, label %7239

; <label>:7229                                    ; preds = %7189
  %7230 = fmul fast float %7212, %7207
  %7231 = fmul fast float %7212, %7206
  %7232 = fmul fast float %7212, %7205
  %7233 = fmul fast float %7232, %7232
  %7234 = fmul fast float %7231, %7231
  %7235 = fadd fast float %7233, %7234
  %7236 = fmul fast float %7230, %7230
  %7237 = fadd fast float %7235, %7236
  %7238 = call float @dx.op.unary.f32(i32 24, float %7237)  ; Sqrt(value)
  br label %7251

; <label>:7239                                    ; preds = %7189
  %7240 = icmp slt i32 %7218, 0
  br i1 %7240, label %7241, label %7251

; <label>:7241                                    ; preds = %7239
  %7242 = fsub fast float %155, %6976
  %7243 = fsub fast float %156, %6977
  %7244 = fsub fast float %157, %7201
  %7245 = fmul fast float %7242, %7242
  %7246 = fmul fast float %7243, %7243
  %7247 = fadd fast float %7245, %7246
  %7248 = fmul fast float %7244, %7244
  %7249 = fadd fast float %7247, %7248
  %7250 = call float @dx.op.unary.f32(i32 24, float %7249)  ; Sqrt(value)
  br label %7251

; <label>:7251                                    ; preds = %7241, %7239, %7229
  %7252 = phi float [ %7238, %7229 ], [ %7250, %7241 ], [ 0.000000e+00, %7239 ]
  %7253 = and i1 %7196, %7194
  %7254 = fsub fast float -0.000000e+00, %7252
  %7255 = select i1 %7253, float -0.000000e+00, float %7254
  %7256 = fmul fast float %5155, 0x3FF7154760000000
  %7257 = fmul fast float %7256, %7255
  %7258 = fmul fast float %5156, 0x3FF7154760000000
  %7259 = fmul fast float %7258, %7255
  %7260 = fmul fast float %5157, 0x3FF7154760000000
  %7261 = fmul fast float %7260, %7255
  %7262 = call float @dx.op.unary.f32(i32 21, float %7257)  ; Exp(value)
  %7263 = call float @dx.op.unary.f32(i32 21, float %7259)  ; Exp(value)
  %7264 = call float @dx.op.unary.f32(i32 21, float %7261)  ; Exp(value)
  %7265 = call float @dx.op.unary.f32(i32 7, float %7262)  ; Saturate(value)
  %7266 = call float @dx.op.unary.f32(i32 7, float %7263)  ; Saturate(value)
  %7267 = call float @dx.op.unary.f32(i32 7, float %7264)  ; Saturate(value)
  %7268 = fmul fast float %7190, %7265
  %7269 = fmul fast float %7191, %7266
  %7270 = fmul fast float %7192, %7267
  %7271 = fsub fast float %7010, %175
  %7272 = fsub fast float %7011, %176
  %7273 = fsub fast float %7012, %177
  %7274 = call float @dx.op.dot3.f32(i32 55, float %7271, float %7272, float %7273, float %7271, float %7272, float %7273)  ; Dot3(ax,ay,az,bx,by,bz)
  %7275 = call float @dx.op.unary.f32(i32 25, float %7274)  ; Rsqrt(value)
  %7276 = fmul fast float %7275, %7271
  %7277 = fmul fast float %7275, %7272
  %7278 = fmul fast float %7275, %7273
  %7279 = call float @dx.op.dot3.f32(i32 55, float %7010, float %7011, float %7012, float %5343, float %5344, float %5345)  ; Dot3(ax,ay,az,bx,by,bz)
  %7280 = call float @dx.op.dot3.f32(i32 55, float %5171, float %5172, float %5173, float %7276, float %7277, float %7278)  ; Dot3(ax,ay,az,bx,by,bz)
  %7281 = call float @dx.op.unary.f32(i32 7, float %7279)  ; Saturate(value)
  %7282 = fmul fast float %7281, %7017
  %7283 = fmul fast float %7281, %7281
  %7284 = fmul fast float %7283, %5364
  %7285 = call float @dx.op.unary.f32(i32 7, float %7284)  ; Saturate(value)
  %7286 = fmul fast float %7282, %7285
  %7287 = bitcast float %7007 to i32
  %7288 = ashr i32 %7287, 1
  %7289 = sub nsw i32 1597463007, %7288
  %7290 = bitcast i32 %7289 to float
  %7291 = fmul fast float %7290, %7004
  %7292 = fmul fast float %7290, %7005
  %7293 = fmul fast float %7290, %7006
  %7294 = fsub fast float %7291, %175
  %7295 = fsub fast float %7292, %176
  %7296 = fsub fast float %7293, %177
  %7297 = call float @dx.op.dot3.f32(i32 55, float %7294, float %7295, float %7296, float %7294, float %7295, float %7296)  ; Dot3(ax,ay,az,bx,by,bz)
  %7298 = call float @dx.op.unary.f32(i32 25, float %7297)  ; Rsqrt(value)
  %7299 = fmul fast float %7294, %7298
  %7300 = fmul fast float %7295, %7298
  %7301 = fmul fast float %7296, %7298
  %7302 = call float @dx.op.dot3.f32(i32 55, float %5343, float %5344, float %5345, float %7299, float %7300, float %7301)  ; Dot3(ax,ay,az,bx,by,bz)
  %7303 = fmul fast float %7302, %7302
  %7304 = call float @dx.op.unary.f32(i32 6, float %7279)  ; FAbs(value)
  %7305 = fsub fast float 1.000000e+00, %5346
  %7306 = call float @dx.op.binary.f32(i32 35, float %7305, float 0x3F847AE140000000)  ; FMax(a,b)
  %7307 = fmul fast float %7306, %7306
  %7308 = fmul fast float %7307, %7307
  %7309 = fsub fast float 1.000000e+00, %7308
  %7310 = fmul fast float %5351, %5351
  %7311 = fmul fast float %7310, %7309
  %7312 = fadd fast float %7311, %7308
  %7313 = bitcast float %7312 to i32
  %7314 = ashr i32 %7313, 1
  %7315 = add nsw i32 %7314, 532487669
  %7316 = bitcast i32 %7315 to float
  %7317 = fadd fast float %7316, %5351
  %7318 = fmul fast float %7308, %7303
  %7319 = fsub fast float 1.000000e+00, %7303
  %7320 = fadd fast float %7319, %7318
  %7321 = fmul fast float %7304, %7304
  %7322 = fmul fast float %7321, %7309
  %7323 = fadd fast float %7322, %7308
  %7324 = bitcast float %7323 to i32
  %7325 = ashr i32 %7324, 1
  %7326 = add nsw i32 %7325, 532487669
  %7327 = bitcast i32 %7326 to float
  %7328 = fadd fast float %7327, %7304
  %7329 = fmul fast float %7320, %7320
  %7330 = fmul fast float %7329, %7317
  %7331 = fmul fast float %7330, %7328
  %7332 = fdiv fast float 1.000000e+00, %7331
  %7333 = bitcast float %7308 to i32
  %7334 = sitofp i32 %7333 to float
  %7335 = fmul fast float %7334, 0x3FE7F73180000000
  %7336 = fadd fast float %7335, 0x41AFE27C40000000
  %7337 = fptosi float %7336 to i32
  %7338 = bitcast i32 %7337 to float
  %7339 = fmul fast float %6973, 0x3FD80E9D60000000
  %7340 = fmul fast float %7339, %7290
  %7341 = fadd fast float %7338, %7340
  %7342 = bitcast float %7341 to i32
  %7343 = sub nsw i32 2129859010, %7342
  %7344 = bitcast i32 %7343 to float
  %7345 = fmul fast float %7308, %7332
  %7346 = fmul fast float %7345, %7338
  %7347 = fmul fast float %7346, %7344
  %7348 = call float @dx.op.unary.f32(i32 6, float %7280)  ; FAbs(value)
  %7349 = fsub fast float 1.000000e+00, %7348
  %7350 = bitcast float %7349 to i32
  %7351 = sitofp i32 %7350 to float
  %7352 = fmul fast float %7351, 5.000000e+00
  %7353 = fadd fast float %7352, 0xC1EFBF8940000000
  %7354 = fptosi float %7353 to i32
  %7355 = bitcast i32 %7354 to float
  %7356 = fsub fast float 1.000000e+00, %5340
  %7357 = fsub fast float 1.000000e+00, %5341
  %7358 = fsub fast float 1.000000e+00, %5349
  %7359 = fmul fast float %7355, %7356
  %7360 = fmul fast float %7355, %7357
  %7361 = fmul fast float %7355, %7358
  %7362 = fadd fast float %7359, %5340
  %7363 = fadd fast float %7360, %5341
  %7364 = fadd fast float %7361, %5349
  br i1 %5621, label %7365, label %7388

; <label>:7365                                    ; preds = %7251
  %7366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4665, float %7348, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7367 = extractvalue %dx.types.ResRet.f32 %7366, 0
  %7368 = extractvalue %dx.types.ResRet.f32 %7366, 1
  %7369 = extractvalue %dx.types.ResRet.f32 %7366, 2
  %7370 = fadd fast float %7367, -5.000000e-01
  %7371 = fadd fast float %7368, -5.000000e-01
  %7372 = fadd fast float %7369, -5.000000e-01
  %7373 = fmul fast float %5340, 4.000000e+00
  %7374 = fmul fast float %7373, %7356
  %7375 = fmul fast float %7374, %7370
  %7376 = fmul fast float %5341, 4.000000e+00
  %7377 = fmul fast float %7376, %7357
  %7378 = fmul fast float %7377, %7371
  %7379 = fmul fast float %5349, 4.000000e+00
  %7380 = fmul fast float %7379, %7358
  %7381 = fmul fast float %7380, %7372
  %7382 = fadd fast float %7375, %7362
  %7383 = fadd fast float %7378, %7363
  %7384 = fadd fast float %7381, %7364
  %7385 = call float @dx.op.unary.f32(i32 7, float %7382)  ; Saturate(value)
  %7386 = call float @dx.op.unary.f32(i32 7, float %7383)  ; Saturate(value)
  %7387 = call float @dx.op.unary.f32(i32 7, float %7384)  ; Saturate(value)
  br label %7388

; <label>:7388                                    ; preds = %7365, %7251
  %7389 = phi float [ %7385, %7365 ], [ %7362, %7251 ]
  %7390 = phi float [ %7386, %7365 ], [ %7363, %7251 ]
  %7391 = phi float [ %7387, %7365 ], [ %7364, %7251 ]
  %7392 = fmul fast float %7279, 9.843750e-01
  %7393 = fadd fast float %7392, 7.812500e-03
  %7394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7393, float %5611, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7395 = extractvalue %dx.types.ResRet.f32 %7394, 2
  %7396 = extractvalue %dx.types.ResRet.f32 %7394, 3
  %7397 = fmul fast float %7395, %5340
  %7398 = fmul fast float %7395, %5341
  %7399 = fmul fast float %7395, %5349
  %7400 = fadd fast float %7397, %7396
  %7401 = fadd fast float %7398, %7396
  %7402 = fadd fast float %7399, %7396
  br i1 %5621, label %7403, label %7426

; <label>:7403                                    ; preds = %7388
  %7404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4665, float %7279, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7405 = extractvalue %dx.types.ResRet.f32 %7404, 0
  %7406 = extractvalue %dx.types.ResRet.f32 %7404, 1
  %7407 = extractvalue %dx.types.ResRet.f32 %7404, 2
  %7408 = fadd fast float %7405, -5.000000e-01
  %7409 = fadd fast float %7406, -5.000000e-01
  %7410 = fadd fast float %7407, -5.000000e-01
  %7411 = fmul fast float %5340, 4.000000e+00
  %7412 = fmul fast float %7411, %7356
  %7413 = fmul fast float %7412, %7408
  %7414 = fmul fast float %5341, 4.000000e+00
  %7415 = fmul fast float %7414, %7357
  %7416 = fmul fast float %7415, %7409
  %7417 = fmul fast float %5349, 4.000000e+00
  %7418 = fmul fast float %7417, %7358
  %7419 = fmul fast float %7418, %7410
  %7420 = fadd fast float %7413, %7400
  %7421 = fadd fast float %7416, %7401
  %7422 = fadd fast float %7419, %7402
  %7423 = call float @dx.op.unary.f32(i32 7, float %7420)  ; Saturate(value)
  %7424 = call float @dx.op.unary.f32(i32 7, float %7421)  ; Saturate(value)
  %7425 = call float @dx.op.unary.f32(i32 7, float %7422)  ; Saturate(value)
  br label %7426

; <label>:7426                                    ; preds = %7403, %7388
  %7427 = phi float [ %7423, %7403 ], [ %7400, %7388 ]
  %7428 = phi float [ %7424, %7403 ], [ %7401, %7388 ]
  %7429 = phi float [ %7425, %7403 ], [ %7402, %7388 ]
  %7430 = call float @dx.op.binary.f32(i32 35, float %7428, float %7429)  ; FMax(a,b)
  %7431 = call float @dx.op.binary.f32(i32 35, float %7427, float %7430)  ; FMax(a,b)
  %7432 = fsub fast float 1.000000e+00, %7431
  %7433 = fsub fast float -0.000000e+00, %5343
  %7434 = fsub fast float -0.000000e+00, %5344
  %7435 = fsub fast float -0.000000e+00, %5345
  %7436 = call float @dx.op.dot3.f32(i32 55, float %7010, float %7011, float %7012, float %7433, float %7434, float %7435)  ; Dot3(ax,ay,az,bx,by,bz)
  %7437 = call float @dx.op.unary.f32(i32 7, float %7436)  ; Saturate(value)
  %7438 = fmul fast float %7437, %7017
  %7439 = fmul fast float %7437, 9.843750e-01
  %7440 = fadd fast float %7439, 7.812500e-03
  %7441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7440, float %5611, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7442 = extractvalue %dx.types.ResRet.f32 %7441, 2
  %7443 = extractvalue %dx.types.ResRet.f32 %7441, 3
  %7444 = fmul fast float %7442, %5340
  %7445 = fmul fast float %7442, %5341
  %7446 = fmul fast float %7442, %5349
  %7447 = fadd fast float %7444, %7443
  %7448 = fadd fast float %7445, %7443
  %7449 = fadd fast float %7446, %7443
  br i1 %5621, label %7450, label %7473

; <label>:7450                                    ; preds = %7426
  %7451 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4665, float %7437, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7452 = extractvalue %dx.types.ResRet.f32 %7451, 0
  %7453 = extractvalue %dx.types.ResRet.f32 %7451, 1
  %7454 = extractvalue %dx.types.ResRet.f32 %7451, 2
  %7455 = fadd fast float %7452, -5.000000e-01
  %7456 = fadd fast float %7453, -5.000000e-01
  %7457 = fadd fast float %7454, -5.000000e-01
  %7458 = fmul fast float %5340, 4.000000e+00
  %7459 = fmul fast float %7458, %7356
  %7460 = fmul fast float %7459, %7455
  %7461 = fmul fast float %5341, 4.000000e+00
  %7462 = fmul fast float %7461, %7357
  %7463 = fmul fast float %7462, %7456
  %7464 = fmul fast float %5349, 4.000000e+00
  %7465 = fmul fast float %7464, %7358
  %7466 = fmul fast float %7465, %7457
  %7467 = fadd fast float %7460, %7447
  %7468 = fadd fast float %7463, %7448
  %7469 = fadd fast float %7466, %7449
  %7470 = call float @dx.op.unary.f32(i32 7, float %7467)  ; Saturate(value)
  %7471 = call float @dx.op.unary.f32(i32 7, float %7468)  ; Saturate(value)
  %7472 = call float @dx.op.unary.f32(i32 7, float %7469)  ; Saturate(value)
  br label %7473

; <label>:7473                                    ; preds = %7450, %7426
  %7474 = phi float [ %7470, %7450 ], [ %7447, %7426 ]
  %7475 = phi float [ %7471, %7450 ], [ %7448, %7426 ]
  %7476 = phi float [ %7472, %7450 ], [ %7449, %7426 ]
  %7477 = call float @dx.op.binary.f32(i32 35, float %7475, float %7476)  ; FMax(a,b)
  %7478 = call float @dx.op.binary.f32(i32 35, float %7474, float %7477)  ; FMax(a,b)
  %7479 = fsub fast float 1.000000e+00, %7478
  %7480 = fmul fast float %7438, %7479
  %7481 = fmul fast float %7480, %4777
  %7482 = fmul fast float %7480, %4778
  %7483 = fmul fast float %7480, %4779
  %7484 = fmul fast float %7389, %7347
  %7485 = fmul fast float %7390, %7347
  %7486 = fmul fast float %7391, %7347
  %7487 = fsub fast float 1.000000e+00, %7280
  %7488 = bitcast float %7487 to i32
  %7489 = sitofp i32 %7488 to float
  %7490 = fmul fast float %7489, 5.000000e+00
  %7491 = fadd fast float %7490, 0xC1EFBF8940000000
  %7492 = fptosi float %7491 to i32
  %7493 = bitcast i32 %7492 to float
  %7494 = fmul fast float %7493, %4666
  %7495 = fmul fast float %7432, %7494
  %7496 = fmul fast float %7495, %5668
  %7497 = fmul fast float %7495, %5669
  %7498 = fmul fast float %7495, %5670
  %7499 = fmul fast float %7432, %7286
  %7500 = fadd fast float %7496, %7484
  %7501 = fadd fast float %7497, %7485
  %7502 = fadd fast float %7498, %7486
  %7503 = fadd fast float %7481, %7499
  %7504 = fadd fast float %7482, %7499
  %7505 = fadd fast float %7483, %7499
  %7506 = fmul fast float %7268, %4691
  %7507 = fmul fast float %7506, %7503
  %7508 = fmul fast float %7269, %4691
  %7509 = fmul fast float %7508, %7504
  %7510 = fmul fast float %7270, %4691
  %7511 = fmul fast float %7510, %7505
  %7512 = fadd fast float %7507, %6947
  %7513 = fadd fast float %7509, %6948
  %7514 = fadd fast float %7511, %6949
  %7515 = fmul fast float %7506, %7286
  %7516 = fmul fast float %7515, %7500
  %7517 = fmul fast float %7508, %7286
  %7518 = fmul fast float %7517, %7501
  %7519 = fmul fast float %7510, %7286
  %7520 = fmul fast float %7519, %7502
  %7521 = fadd fast float %7516, %6944
  %7522 = fadd fast float %7518, %6945
  %7523 = fadd fast float %7520, %6946
  br label %7076

; <label>:7524                                    ; preds = %7076
  br label %7525

; <label>:7525                                    ; preds = %7524, %6910
  %7526 = phi float [ %6912, %6910 ], [ %7077, %7524 ]
  %7527 = phi float [ %6913, %6910 ], [ %7078, %7524 ]
  %7528 = phi float [ %6914, %6910 ], [ %7079, %7524 ]
  %7529 = phi float [ %6915, %6910 ], [ %7080, %7524 ]
  %7530 = phi float [ %6916, %6910 ], [ %7081, %7524 ]
  %7531 = phi float [ %6917, %6910 ], [ %7082, %7524 ]
  %7532 = add i32 %6911, 1
  %7533 = icmp ugt i32 %7532, %6907
  br i1 %7533, label %7534, label %6910

; <label>:7534                                    ; preds = %7525
  br label %7535

; <label>:7535                                    ; preds = %7534, %6860, %6850
  %7536 = phi float [ %6851, %6850 ], [ %6851, %6860 ], [ %7526, %7534 ]
  %7537 = phi float [ %6852, %6850 ], [ %6852, %6860 ], [ %7527, %7534 ]
  %7538 = phi float [ %6853, %6850 ], [ %6853, %6860 ], [ %7528, %7534 ]
  %7539 = phi float [ %6854, %6850 ], [ %6854, %6860 ], [ %7529, %7534 ]
  %7540 = phi float [ %6855, %6850 ], [ %6855, %6860 ], [ %7530, %7534 ]
  %7541 = phi float [ %6856, %6850 ], [ %6856, %6860 ], [ %7531, %7534 ]
  %7542 = fmul fast float %4691, %5677
  %7543 = fsub fast float -0.000000e+00, %7542
  %7544 = fmul fast float %4691, %5678
  %7545 = fsub fast float -0.000000e+00, %7544
  %7546 = fmul fast float %4691, %5679
  %7547 = fsub fast float -0.000000e+00, %7546
  %7548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7549 = extractvalue %dx.types.CBufRet.f32 %7548, 0
  %7550 = fmul fast float %7549, %5683
  %7551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7552 = extractvalue %dx.types.CBufRet.f32 %7551, 3
  %7553 = fsub fast float 1.000000e+00, %4669
  %7554 = call float @dx.op.unary.f32(i32 7, float %7553)  ; Saturate(value)
  %7555 = fadd fast float %7541, %4668
  %7556 = fmul fast float %7555, %4669
  %7557 = fmul fast float %7554, %7552
  %7558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4670, i32 undef)  ; BufferLoad(srv,index,wot)
  %7559 = extractvalue %dx.types.ResRet.i32 %7558, 3
  %7560 = bitcast i32 %7559 to float
  %7561 = fsub fast float %7543, %7560
  %7562 = fsub fast float %7545, %7560
  %7563 = fsub fast float %7547, %7560
  %7564 = fmul fast float %7561, %189
  %7565 = fmul fast float %7562, %189
  %7566 = fmul fast float %7563, %189
  %7567 = fadd fast float %7564, %7560
  %7568 = fadd fast float %7565, %7560
  %7569 = fadd fast float %7566, %7560
  %7570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7571 = extractvalue %dx.types.CBufRet.f32 %7570, 3
  %7572 = fmul fast float %7539, %5337
  %7573 = fmul fast float %7540, %5338
  %7574 = fmul fast float %7541, %5339
  %7575 = fcmp fast ogt float %91, %209
  %7576 = and i1 %7575, %5160
  %7577 = or i1 %5166, %7576
  %7578 = icmp eq i32 %5159, 2
  %7579 = fcmp fast ole float %91, %209
  %7580 = and i1 %7579, %7578
  %7581 = or i1 %7580, %7577
  br i1 %7576, label %7582, label %7839

; <label>:7582                                    ; preds = %7535
  %7583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7584 = extractvalue %dx.types.CBufRet.f32 %7583, 2
  %7585 = extractvalue %dx.types.CBufRet.f32 %7583, 3
  %7586 = fmul fast float %7584, %100
  %7587 = fmul fast float %7585, %101
  %7588 = call float @dx.op.unary.f32(i32 7, float %7586)  ; Saturate(value)
  %7589 = call float @dx.op.unary.f32(i32 7, float %7587)  ; Saturate(value)
  %7590 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7588, float %7589, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7591 = extractvalue %dx.types.ResRet.f32 %7590, 0
  %7592 = extractvalue %dx.types.ResRet.f32 %7590, 1
  %7593 = extractvalue %dx.types.ResRet.f32 %7590, 2
  %7594 = extractvalue %dx.types.ResRet.f32 %7590, 3
  %7595 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7588, float %7589, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7596 = extractvalue %dx.types.ResRet.f32 %7595, 0
  %7597 = extractvalue %dx.types.ResRet.f32 %7595, 1
  %7598 = extractvalue %dx.types.ResRet.f32 %7595, 2
  %7599 = extractvalue %dx.types.ResRet.f32 %7595, 3
  %7600 = call float @dx.op.binary.f32(i32 35, float %7592, float %7593)  ; FMax(a,b)
  %7601 = call float @dx.op.binary.f32(i32 35, float %7591, float %7600)  ; FMax(a,b)
  %7602 = call float @dx.op.binary.f32(i32 35, float %7601, float %7594)  ; FMax(a,b)
  %7603 = call float @dx.op.binary.f32(i32 36, float %7597, float %7598)  ; FMin(a,b)
  %7604 = call float @dx.op.binary.f32(i32 36, float %7596, float %7603)  ; FMin(a,b)
  %7605 = call float @dx.op.binary.f32(i32 36, float %7604, float %7599)  ; FMin(a,b)
  %7606 = fmul fast float %7602, 2.550000e+02
  %7607 = fadd fast float %7606, 0x3F70101020000000
  %7608 = fptoui float %7607 to i32
  %7609 = fmul fast float %7605, 2.550000e+02
  %7610 = fadd fast float %7609, 0x3F70101020000000
  %7611 = fptoui float %7610 to i32
  %7612 = icmp ult i32 %7608, %7611
  br i1 %7612, label %7613, label %7781

; <label>:7613                                    ; preds = %7582
  %7614 = fcmp fast ogt float %90, 9.843750e-01
  %7615 = fadd fast float %91, -4.000000e+00
  %7616 = select i1 %7614, float -4.000000e+00, float %7615
  %7617 = call float @dx.op.binary.f32(i32 35, float %7616, float 0.000000e+00)  ; FMax(a,b)
  %7618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7619 = extractvalue %dx.types.CBufRet.f32 %7618, 0
  %7620 = fadd fast float %7619, %7617
  %7621 = extractvalue %dx.types.CBufRet.f32 %7618, 2
  %7622 = fmul fast float %7620, %7621
  %7623 = call float @dx.op.unary.f32(i32 23, float %7622)  ; Log(value)
  %7624 = extractvalue %dx.types.CBufRet.f32 %7618, 3
  %7625 = fmul fast float %7624, %7623
  %7626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7627 = extractvalue %dx.types.CBufRet.f32 %7626, 2
  %7628 = fmul fast float %7625, %7627
  %7629 = call float @dx.op.unary.f32(i32 7, float %7628)  ; Saturate(value)
  %7630 = uitofp i32 %7608 to float
  %7631 = uitofp i32 %7611 to float
  %7632 = fadd fast float %7630, 5.000000e-01
  %7633 = fadd fast float %7631, 5.000000e-01
  %7634 = fmul fast float %7627, %7632
  %7635 = fmul fast float %7627, %7633
  %7636 = fadd fast float %7634, 0x3F0FFB4800000000
  %7637 = fadd fast float %7635, 0xBF0FFB4800000000
  %7638 = call float @dx.op.binary.f32(i32 35, float %7629, float %7636)  ; FMax(a,b)
  %7639 = call float @dx.op.binary.f32(i32 36, float %7638, float %7637)  ; FMin(a,b)
  %7640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7641 = extractvalue %dx.types.CBufRet.f32 %7640, 1
  %7642 = extractvalue %dx.types.CBufRet.f32 %7640, 2
  %7643 = extractvalue %dx.types.CBufRet.f32 %7640, 0
  %7644 = fmul fast float %7641, %7639
  %7645 = fadd fast float %7643, %7644
  %7646 = fadd fast float %7643, %7642
  %7647 = fsub fast float %7641, %7642
  %7648 = fadd fast float %7647, %7643
  %7649 = call float @dx.op.binary.f32(i32 35, float %7645, float %7646)  ; FMax(a,b)
  %7650 = call float @dx.op.binary.f32(i32 36, float %7649, float %7648)  ; FMin(a,b)
  %7651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7588, float %7589, float %7650, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7652 = extractvalue %dx.types.ResRet.f32 %7651, 0
  %7653 = extractvalue %dx.types.ResRet.f32 %7651, 1
  %7654 = extractvalue %dx.types.ResRet.f32 %7651, 2
  %7655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7656 = extractvalue %dx.types.CBufRet.i32 %7655, 0
  %7657 = extractvalue %dx.types.CBufRet.i32 %7655, 1
  %7658 = uitofp i32 %7656 to float
  %7659 = uitofp i32 %7657 to float
  %7660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7661 = extractvalue %dx.types.CBufRet.f32 %7660, 0
  %7662 = extractvalue %dx.types.CBufRet.f32 %7660, 1
  %7663 = fmul fast float %7658, %7588
  %7664 = fmul fast float %7659, %7589
  %7665 = fadd fast float %7663, -5.000000e-01
  %7666 = fadd fast float %7664, -5.000000e-01
  %7667 = call float @dx.op.unary.f32(i32 22, float %7665)  ; Frc(value)
  %7668 = call float @dx.op.unary.f32(i32 22, float %7666)  ; Frc(value)
  %7669 = fmul fast float %7667, %7667
  %7670 = fmul fast float %7669, %7667
  %7671 = fsub fast float 3.000000e+00, %7667
  %7672 = fmul fast float %7669, %7671
  %7673 = fmul fast float %7667, 3.000000e+00
  %7674 = fmul fast float %7670, 3.000000e+00
  %7675 = fmul fast float %7669, 6.000000e+00
  %7676 = fsub fast float %7674, %7675
  %7677 = fadd fast float %7676, 4.000000e+00
  %7678 = fmul fast float %7677, 0x3FC5555560000000
  %7679 = fmul fast float %7670, -3.000000e+00
  %7680 = fadd fast float %7669, %7667
  %7681 = fmul fast float %7680, 3.000000e+00
  %7682 = fadd fast float %7679, 1.000000e+00
  %7683 = fadd fast float %7682, %7681
  %7684 = fmul fast float %7670, 0x3FC5555560000000
  %7685 = fmul fast float %7668, %7668
  %7686 = fmul fast float %7685, %7668
  %7687 = fsub fast float 3.000000e+00, %7668
  %7688 = fmul fast float %7685, %7687
  %7689 = fmul fast float %7668, 3.000000e+00
  %7690 = fmul fast float %7686, 3.000000e+00
  %7691 = fmul fast float %7685, 6.000000e+00
  %7692 = fsub fast float %7690, %7691
  %7693 = fadd fast float %7692, 4.000000e+00
  %7694 = fmul fast float %7693, 0x3FC5555560000000
  %7695 = fmul fast float %7686, -3.000000e+00
  %7696 = fadd fast float %7685, %7668
  %7697 = fmul fast float %7696, 3.000000e+00
  %7698 = fadd fast float %7695, 1.000000e+00
  %7699 = fadd fast float %7698, %7697
  %7700 = fmul fast float %7686, 0x3FC5555560000000
  %7701 = fadd fast float %7667, 1.000000e+00
  %7702 = fsub fast float 1.000000e+00, %7673
  %7703 = fadd fast float %7702, %7672
  %7704 = fadd fast float %7703, %7677
  %7705 = fmul fast float %7704, 0x3FC5555560000000
  %7706 = fdiv fast float %7678, %7705
  %7707 = fsub fast float %7701, %7706
  %7708 = fsub fast float 1.000000e+00, %7667
  %7709 = fadd fast float %7683, %7670
  %7710 = fmul fast float %7709, 0x3FC5555560000000
  %7711 = fdiv fast float %7684, %7710
  %7712 = fadd fast float %7708, %7711
  %7713 = fadd fast float %7668, 1.000000e+00
  %7714 = fsub fast float 1.000000e+00, %7689
  %7715 = fadd fast float %7714, %7688
  %7716 = fadd fast float %7715, %7693
  %7717 = fmul fast float %7716, 0x3FC5555560000000
  %7718 = fdiv fast float %7694, %7717
  %7719 = fsub fast float %7713, %7718
  %7720 = fsub fast float 1.000000e+00, %7668
  %7721 = fadd fast float %7699, %7686
  %7722 = fmul fast float %7721, 0x3FC5555560000000
  %7723 = fdiv fast float %7700, %7722
  %7724 = fadd fast float %7723, %7720
  %7725 = fmul fast float %7707, %7661
  %7726 = fsub fast float %7588, %7725
  %7727 = fmul fast float %7712, %7661
  %7728 = fadd fast float %7727, %7588
  %7729 = fmul fast float %7724, %7662
  %7730 = fadd fast float %7729, %7589
  %7731 = fmul fast float %7719, %7662
  %7732 = fsub fast float %7589, %7731
  %7733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7726, float %7732, float %7650, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7734 = extractvalue %dx.types.ResRet.f32 %7733, 0
  %7735 = extractvalue %dx.types.ResRet.f32 %7733, 1
  %7736 = extractvalue %dx.types.ResRet.f32 %7733, 2
  %7737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7728, float %7732, float %7650, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7738 = extractvalue %dx.types.ResRet.f32 %7737, 0
  %7739 = extractvalue %dx.types.ResRet.f32 %7737, 1
  %7740 = extractvalue %dx.types.ResRet.f32 %7737, 2
  %7741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7726, float %7730, float %7650, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7742 = extractvalue %dx.types.ResRet.f32 %7741, 0
  %7743 = extractvalue %dx.types.ResRet.f32 %7741, 1
  %7744 = extractvalue %dx.types.ResRet.f32 %7741, 2
  %7745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7728, float %7730, float %7650, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7746 = extractvalue %dx.types.ResRet.f32 %7745, 0
  %7747 = extractvalue %dx.types.ResRet.f32 %7745, 1
  %7748 = extractvalue %dx.types.ResRet.f32 %7745, 2
  %7749 = fsub fast float %7742, %7734
  %7750 = fsub fast float %7743, %7735
  %7751 = fsub fast float %7744, %7736
  %7752 = fmul fast float %7749, %7722
  %7753 = fmul fast float %7750, %7722
  %7754 = fmul fast float %7751, %7722
  %7755 = fadd fast float %7752, %7734
  %7756 = fadd fast float %7753, %7735
  %7757 = fadd fast float %7754, %7736
  %7758 = fsub fast float %7746, %7738
  %7759 = fsub fast float %7747, %7739
  %7760 = fsub fast float %7748, %7740
  %7761 = fmul fast float %7758, %7722
  %7762 = fmul fast float %7759, %7722
  %7763 = fmul fast float %7760, %7722
  %7764 = fsub fast float %7738, %7755
  %7765 = fadd fast float %7764, %7761
  %7766 = fsub fast float %7739, %7756
  %7767 = fadd fast float %7766, %7762
  %7768 = fsub fast float %7740, %7757
  %7769 = fadd fast float %7768, %7763
  %7770 = fmul fast float %7765, %7710
  %7771 = fmul fast float %7767, %7710
  %7772 = fmul fast float %7769, %7710
  %7773 = fadd fast float %7770, %7755
  %7774 = fadd fast float %7771, %7756
  %7775 = fadd fast float %7772, %7757
  %7776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7777 = extractvalue %dx.types.CBufRet.f32 %7776, 1
  %7778 = fmul fast float %7773, %7777
  %7779 = fmul fast float %7774, %7777
  %7780 = fmul fast float %7775, %7777
  br label %7781

; <label>:7781                                    ; preds = %7613, %7582
  %7782 = phi float [ %7652, %7613 ], [ 1.000000e+00, %7582 ]
  %7783 = phi float [ %7653, %7613 ], [ 1.000000e+00, %7582 ]
  %7784 = phi float [ %7654, %7613 ], [ 1.000000e+00, %7582 ]
  %7785 = phi float [ %7778, %7613 ], [ 0.000000e+00, %7582 ]
  %7786 = phi float [ %7779, %7613 ], [ 0.000000e+00, %7582 ]
  %7787 = phi float [ %7780, %7613 ], [ 0.000000e+00, %7582 ]
  %7788 = fmul fast float %7785, %7567
  %7789 = fmul fast float %7786, %7568
  %7790 = fmul fast float %7787, %7569
  %7791 = call float @dx.op.dot3.f32(i32 55, float %7782, float %7783, float %7784, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7792 = call float @dx.op.dot3.f32(i32 55, float %7788, float %7789, float %7790, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7793 = select i1 %249, float %7791, float %7782
  %7794 = select i1 %249, float %7791, float %7783
  %7795 = select i1 %249, float 1.000000e+00, float %7784
  %7796 = select i1 %249, float %7792, float %7788
  %7797 = select i1 %249, float 0.000000e+00, float %7789
  %7798 = select i1 %249, float 0.000000e+00, float %7790
  %7799 = fmul fast float %7793, %7572
  %7800 = fmul fast float %7794, %7573
  %7801 = fmul fast float %7795, %7574
  %7802 = fadd fast float %7799, %7796
  %7803 = fadd fast float %7800, %7797
  %7804 = fadd fast float %7798, %7801
  %7805 = fmul fast float %7793, %7536
  %7806 = fmul fast float %7794, %7537
  %7807 = fmul fast float %7795, %7538
  %7808 = fmul fast float %125, %7584
  %7809 = fmul fast float %127, %7585
  %7810 = fsub fast float 1.000000e+00, %7808
  %7811 = fsub fast float 1.000000e+00, %7809
  %7812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7813 = extractvalue %dx.types.CBufRet.f32 %7812, 0
  %7814 = extractvalue %dx.types.CBufRet.f32 %7812, 1
  %7815 = extractvalue %dx.types.CBufRet.f32 %7812, 2
  %7816 = fmul fast float %7810, %7813
  %7817 = fmul fast float %7810, %7814
  %7818 = fmul fast float %7810, %7815
  %7819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7820 = extractvalue %dx.types.CBufRet.f32 %7819, 0
  %7821 = extractvalue %dx.types.CBufRet.f32 %7819, 1
  %7822 = extractvalue %dx.types.CBufRet.f32 %7819, 2
  %7823 = fmul fast float %7811, %7820
  %7824 = fmul fast float %7811, %7821
  %7825 = fmul fast float %7811, %7822
  %7826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7827 = extractvalue %dx.types.CBufRet.f32 %7826, 0
  %7828 = extractvalue %dx.types.CBufRet.f32 %7826, 1
  %7829 = extractvalue %dx.types.CBufRet.f32 %7826, 2
  %7830 = fadd fast float %7823, %7827
  %7831 = fadd fast float %7830, %7816
  %7832 = fadd fast float %7824, %7828
  %7833 = fadd fast float %7832, %7817
  %7834 = fadd fast float %7825, %7829
  %7835 = fadd fast float %7834, %7818
  %7836 = fmul fast float %7831, %209
  %7837 = fmul fast float %7833, %209
  %7838 = fmul fast float %7835, %209
  br label %7839

; <label>:7839                                    ; preds = %7781, %7535
  %7840 = phi float [ %7836, %7781 ], [ %155, %7535 ]
  %7841 = phi float [ %7837, %7781 ], [ %156, %7535 ]
  %7842 = phi float [ %7838, %7781 ], [ %157, %7535 ]
  %7843 = phi float [ %209, %7781 ], [ %91, %7535 ]
  %7844 = phi float [ %7802, %7781 ], [ %7572, %7535 ]
  %7845 = phi float [ %7803, %7781 ], [ %7573, %7535 ]
  %7846 = phi float [ %7804, %7781 ], [ %7574, %7535 ]
  %7847 = phi float [ %7805, %7781 ], [ %7536, %7535 ]
  %7848 = phi float [ %7806, %7781 ], [ %7537, %7535 ]
  %7849 = phi float [ %7807, %7781 ], [ %7538, %7535 ]
  %7850 = phi float [ %7782, %7781 ], [ 1.000000e+00, %7535 ]
  br i1 %7581, label %9005, label %7851

; <label>:7851                                    ; preds = %7839
  %7852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7853 = extractvalue %dx.types.CBufRet.f32 %7852, 0
  %7854 = extractvalue %dx.types.CBufRet.f32 %7852, 1
  %7855 = extractvalue %dx.types.CBufRet.f32 %7852, 2
  %7856 = extractvalue %dx.types.CBufRet.f32 %7852, 3
  %7857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7858 = extractvalue %dx.types.CBufRet.f32 %7857, 0
  %7859 = extractvalue %dx.types.CBufRet.f32 %7857, 1
  %7860 = extractvalue %dx.types.CBufRet.f32 %7857, 2
  %7861 = extractvalue %dx.types.CBufRet.f32 %7857, 3
  %7862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7863 = extractvalue %dx.types.CBufRet.f32 %7862, 0
  %7864 = extractvalue %dx.types.CBufRet.f32 %7862, 1
  %7865 = extractvalue %dx.types.CBufRet.f32 %7862, 2
  %7866 = extractvalue %dx.types.CBufRet.f32 %7862, 3
  %7867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7868 = extractvalue %dx.types.CBufRet.f32 %7867, 0
  %7869 = extractvalue %dx.types.CBufRet.f32 %7867, 1
  %7870 = extractvalue %dx.types.CBufRet.f32 %7867, 2
  %7871 = extractvalue %dx.types.CBufRet.f32 %7867, 3
  %7872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7873 = extractvalue %dx.types.CBufRet.f32 %7872, 3
  %7874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7875 = extractvalue %dx.types.CBufRet.f32 %7874, 3
  %7876 = extractvalue %dx.types.CBufRet.f32 %7874, 0
  %7877 = extractvalue %dx.types.CBufRet.f32 %7874, 1
  %7878 = extractvalue %dx.types.CBufRet.f32 %7874, 2
  %7879 = fcmp fast olt float %7878, -5.000000e-01
  %7880 = call float @dx.op.dot3.f32(i32 55, float %7840, float %7841, float %7842, float %7840, float %7841, float %7842)  ; Dot3(ax,ay,az,bx,by,bz)
  %7881 = call float @dx.op.unary.f32(i32 25, float %7880)  ; Rsqrt(value)
  %7882 = fmul fast float %7881, %7880
  %7883 = fmul fast float %7881, %7840
  %7884 = fmul fast float %7881, %7841
  %7885 = fmul fast float %7881, %7842
  %7886 = fadd fast float %7882, %7856
  %7887 = call float @dx.op.dot3.f32(i32 55, float %7883, float %7884, float %7885, float %7853, float %7854, float %7855)  ; Dot3(ax,ay,az,bx,by,bz)
  %7888 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7889 = extractvalue %dx.types.CBufRet.i32 %7888, 1
  %7890 = and i32 %7889, 1
  %7891 = icmp ne i32 %7890, 0
  %7892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7893 = extractvalue %dx.types.CBufRet.f32 %7892, 2
  %7894 = fcmp fast ogt float %7893, 0.000000e+00
  %7895 = and i1 %7891, %7894
  br i1 %7895, label %7896, label %8302, !dx.controlflow.hints !122

; <label>:7896                                    ; preds = %7851
  %7897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7898 = extractvalue %dx.types.CBufRet.f32 %7897, 3
  %7899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7900 = extractvalue %dx.types.CBufRet.f32 %7899, 2
  %7901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7902 = extractvalue %dx.types.CBufRet.f32 %7901, 2
  %7903 = fsub fast float %7900, %7902
  %7904 = and i32 %7889, 2
  %7905 = extractvalue %dx.types.CBufRet.i32 %7888, 0
  %7906 = call i32 @dx.op.binary.i32(i32 40, i32 %7905, i32 3)  ; UMin(a,b)
  %7907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7908 = extractvalue %dx.types.CBufRet.f32 %7907, 0
  %7909 = extractvalue %dx.types.CBufRet.f32 %7907, 1
  %7910 = extractvalue %dx.types.CBufRet.f32 %7901, 0
  %7911 = extractvalue %dx.types.CBufRet.f32 %7901, 1
  %7912 = fsub fast float %7908, %7910
  %7913 = fsub fast float %7909, %7911
  %7914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7915 = extractvalue %dx.types.CBufRet.f32 %7914, 0
  %7916 = fcmp fast ogt float %7915, 0.000000e+00
  %7917 = fsub fast float -0.000000e+00, %7912
  %7918 = fsub fast float -0.000000e+00, %7913
  %7919 = call float @dx.op.dot2.f32(i32 54, float %7883, float %7884, float %7883, float %7884)  ; Dot2(ax,ay,bx,by)
  %7920 = call float @dx.op.dot2.f32(i32 54, float %7883, float %7884, float %7917, float %7918)  ; Dot2(ax,ay,bx,by)
  %7921 = fmul fast float %7920, 2.000000e+00
  %7922 = call float @dx.op.dot2.f32(i32 54, float %7917, float %7918, float %7917, float %7918)  ; Dot2(ax,ay,bx,by)
  %7923 = fmul fast float %7915, %7915
  %7924 = fsub fast float %7922, %7923
  %7925 = fmul fast float %7921, %7921
  %7926 = fmul fast float %7919, 4.000000e+00
  %7927 = fmul fast float %7926, %7924
  %7928 = fsub fast float %7925, %7927
  %7929 = fcmp fast ogt float %7928, 0.000000e+00
  br i1 %7929, label %7930, label %7945

; <label>:7930                                    ; preds = %7896
  %7931 = fcmp fast ogt float %7921, 0.000000e+00
  %7932 = call float @dx.op.unary.f32(i32 24, float %7928)  ; Sqrt(value)
  %7933 = fsub fast float -0.000000e+00, %7932
  %7934 = select i1 %7931, float %7932, float %7933
  %7935 = fadd fast float %7934, %7921
  %7936 = fmul float %7935, -5.000000e-01
  %7937 = fdiv fast float %7936, %7919
  %7938 = call float @dx.op.binary.f32(i32 35, float %7937, float 0.000000e+00)  ; FMax(a,b)
  %7939 = call float @dx.op.binary.f32(i32 36, float %7882, float %7938)  ; FMin(a,b)
  %7940 = fdiv fast float %7924, %7936
  %7941 = call float @dx.op.binary.f32(i32 35, float %7940, float 0.000000e+00)  ; FMax(a,b)
  %7942 = call float @dx.op.binary.f32(i32 36, float %7882, float %7941)  ; FMin(a,b)
  %7943 = call float @dx.op.binary.f32(i32 36, float %7939, float %7942)  ; FMin(a,b)
  %7944 = call float @dx.op.binary.f32(i32 35, float %7939, float %7942)  ; FMax(a,b)
  br label %7945

; <label>:7945                                    ; preds = %7930, %7896
  %7946 = phi float [ %7944, %7930 ], [ -1.000000e+00, %7896 ]
  %7947 = phi float [ %7943, %7930 ], [ -1.000000e+00, %7896 ]
  %7948 = phi i1 [ true, %7930 ], [ false, %7896 ]
  %7949 = and i1 %7916, %7948
  br i1 %7949, label %7950, label %7952

; <label>:7950                                    ; preds = %7945
  %7951 = fcmp fast oeq float %7947, %7946
  br i1 %7951, label %8255, label %7953

; <label>:7952                                    ; preds = %7945
  br i1 %7916, label %8255, label %7953

; <label>:7953                                    ; preds = %7952, %7950
  %7954 = phi float [ %7882, %7952 ], [ %7946, %7950 ]
  %7955 = phi float [ 0.000000e+00, %7952 ], [ %7947, %7950 ]
  %7956 = icmp ne i32 %7904, 0
  %7957 = fmul fast float %7954, %7885
  %7958 = fadd fast float %7957, %7898
  %7959 = fmul fast float %7958, %7954
  %7960 = select i1 %7956, float 0.000000e+00, float %7959
  %7961 = fcmp fast oeq float %7885, 0.000000e+00
  %7962 = fdiv fast float %7903, %7885
  %7963 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7962)  ; FMax(a,b)
  %7964 = select i1 %7961, float %7954, float %7963
  %7965 = call float @dx.op.binary.f32(i32 36, float %7954, float %7964)  ; FMin(a,b)
  %7966 = fcmp fast ogt float %7885, 0.000000e+00
  %7967 = fcmp fast olt float %7903, 0.000000e+00
  br i1 %7966, label %7968, label %8025

; <label>:7968                                    ; preds = %7953
  %7969 = icmp eq i32 %7904, 0
  br i1 %7967, label %7970, label %8014

; <label>:7970                                    ; preds = %7968
  %7971 = select i1 %7969, float %7954, float 0.000000e+00
  %7972 = fsub fast float -0.000000e+00, %7971
  %7973 = call float @dx.op.unary.f32(i32 6, float %7972)  ; FAbs(value)
  %7974 = fmul fast float %7971, %7885
  %7975 = fadd fast float %7974, %7898
  %7976 = fmul fast float %7973, %7975
  %7977 = fsub fast float %7960, %7976
  %7978 = fsub fast float %7954, %7973
  %7979 = select i1 %7969, float %7978, float 0.000000e+00
  %7980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7981 = extractvalue %dx.types.CBufRet.f32 %7980, 0
  %7982 = extractvalue %dx.types.CBufRet.f32 %7980, 1
  %7983 = extractvalue %dx.types.CBufRet.f32 %7980, 2
  %7984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7985 = extractvalue %dx.types.CBufRet.f32 %7984, 0
  %7986 = extractvalue %dx.types.CBufRet.f32 %7984, 1
  %7987 = extractvalue %dx.types.CBufRet.f32 %7984, 2
  %7988 = extractvalue %dx.types.CBufRet.f32 %7984, 3
  %7989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7990 = extractvalue %dx.types.CBufRet.f32 %7989, 3
  %7991 = call float @dx.op.binary.f32(i32 36, float %7977, float %7990)  ; FMin(a,b)
  %7992 = fmul fast float %7988, %7979
  %7993 = call float @dx.op.unary.f32(i32 7, float %7992)  ; Saturate(value)
  %7994 = fsub fast float %7985, %7981
  %7995 = fsub fast float %7986, %7982
  %7996 = fsub fast float %7987, %7983
  %7997 = fmul fast float %7993, %7994
  %7998 = fmul fast float %7993, %7995
  %7999 = fmul fast float %7993, %7996
  %8000 = fadd fast float %7997, %7981
  %8001 = fadd fast float %7998, %7982
  %8002 = fadd fast float %7999, %7983
  %8003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8004 = extractvalue %dx.types.CBufRet.f32 %8003, 0
  %8005 = extractvalue %dx.types.CBufRet.f32 %8003, 1
  %8006 = fadd fast float %8005, %8004
  %8007 = call float @dx.op.unary.f32(i32 7, float %8006)  ; Saturate(value)
  %8008 = extractvalue %dx.types.CBufRet.f32 %8003, 2
  %8009 = extractvalue %dx.types.CBufRet.f32 %8003, 3
  %8010 = fadd fast float %8009, %8008
  %8011 = call float @dx.op.unary.f32(i32 7, float %8010)  ; Saturate(value)
  %8012 = fmul fast float %8007, %7991
  %8013 = fmul fast float %8012, %8011
  br label %8255

; <label>:8014                                    ; preds = %7968
  br i1 %7969, label %8015, label %8036

; <label>:8015                                    ; preds = %8014
  %8016 = call float @dx.op.binary.f32(i32 36, float %7965, float %7955)  ; FMin(a,b)
  %8017 = fsub fast float %7965, %8016
  %8018 = fsub fast float %8017, %7954
  %8019 = call float @dx.op.unary.f32(i32 6, float %8018)  ; FAbs(value)
  %8020 = fadd fast float %8017, %7954
  %8021 = fmul fast float %8020, %7885
  %8022 = fadd fast float %8021, %7898
  %8023 = fmul fast float %8022, %8019
  %8024 = fsub fast float %7960, %8023
  br label %8036

; <label>:8025                                    ; preds = %7953
  br i1 %7967, label %8026, label %8036

; <label>:8026                                    ; preds = %8025
  %8027 = call float @dx.op.binary.f32(i32 35, float %7955, float %7965)  ; FMax(a,b)
  %8028 = icmp eq i32 %7904, 0
  %8029 = select i1 %8028, float %7965, float 0.000000e+00
  %8030 = fsub fast float -0.000000e+00, %8029
  %8031 = call float @dx.op.unary.f32(i32 6, float %8030)  ; FAbs(value)
  %8032 = fmul fast float %8029, %7885
  %8033 = fadd fast float %8032, %7898
  %8034 = fmul fast float %8031, %8033
  %8035 = fsub fast float %7960, %8034
  br label %8036

; <label>:8036                                    ; preds = %8026, %8025, %8015, %8014
  %8037 = phi float [ %7955, %8014 ], [ %7955, %8015 ], [ %8027, %8026 ], [ %7955, %8025 ]
  %8038 = phi float [ 0.000000e+00, %8014 ], [ %8019, %8015 ], [ %8031, %8026 ], [ 0.000000e+00, %8025 ]
  %8039 = phi float [ %7960, %8014 ], [ %8024, %8015 ], [ %8035, %8026 ], [ %7960, %8025 ]
  %8040 = phi float [ %7965, %8014 ], [ %7965, %8015 ], [ %7954, %8026 ], [ %7954, %8025 ]
  %8041 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %8041, align 4, !tbaa !123, !noalias !125
  %8042 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %8042, align 4, !tbaa !123, !noalias !125
  %8043 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %8043, align 4, !tbaa !123, !noalias !125
  %8044 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %8044, align 4, !tbaa !123, !noalias !125
  %8045 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %8045, align 4, !tbaa !123, !noalias !125
  %8046 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %8046, align 4, !tbaa !123, !noalias !125
  %8047 = icmp sgt i32 %7906, 0
  br i1 %8047, label %8048, label %8109

; <label>:8048                                    ; preds = %8036
  br label %8049

; <label>:8049                                    ; preds = %8098, %8048
  %8050 = phi i32 [ %8099, %8098 ], [ 0, %8048 ]
  %8051 = phi i32 [ %8100, %8098 ], [ 0, %8048 ]
  %8052 = add nuw i32 %8051, 171
  %8053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %8052)  ; CBufferLoadLegacy(handle,regIndex)
  %8054 = extractvalue %dx.types.CBufRet.f32 %8053, 0
  %8055 = extractvalue %dx.types.CBufRet.f32 %8053, 1
  %8056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8057 = extractvalue %dx.types.CBufRet.f32 %8056, 0
  %8058 = extractvalue %dx.types.CBufRet.f32 %8056, 1
  %8059 = fsub fast float %8054, %8057
  %8060 = fsub fast float %8055, %8058
  %8061 = extractvalue %dx.types.CBufRet.f32 %8053, 2
  %8062 = fsub fast float -0.000000e+00, %8059
  %8063 = fsub fast float -0.000000e+00, %8060
  %8064 = call float @dx.op.dot2.f32(i32 54, float %7883, float %7884, float %8062, float %8063)  ; Dot2(ax,ay,bx,by)
  %8065 = fmul fast float %8064, 2.000000e+00
  %8066 = call float @dx.op.dot2.f32(i32 54, float %8062, float %8063, float %8062, float %8063)  ; Dot2(ax,ay,bx,by)
  %8067 = fmul fast float %8061, %8061
  %8068 = fsub fast float %8066, %8067
  %8069 = fmul fast float %8065, %8065
  %8070 = fmul fast float %7926, %8068
  %8071 = fsub fast float %8069, %8070
  %8072 = fcmp fast ogt float %8071, 0.000000e+00
  br i1 %8072, label %8073, label %8088

; <label>:8073                                    ; preds = %8049
  %8074 = fcmp fast ogt float %8065, 0.000000e+00
  %8075 = call float @dx.op.unary.f32(i32 24, float %8071)  ; Sqrt(value)
  %8076 = fsub fast float -0.000000e+00, %8075
  %8077 = select i1 %8074, float %8075, float %8076
  %8078 = fadd fast float %8077, %8065
  %8079 = fmul float %8078, -5.000000e-01
  %8080 = fdiv fast float %8079, %7919
  %8081 = call float @dx.op.binary.f32(i32 35, float %8080, float 0.000000e+00)  ; FMax(a,b)
  %8082 = call float @dx.op.binary.f32(i32 36, float %7954, float %8081)  ; FMin(a,b)
  %8083 = fdiv fast float %8068, %8079
  %8084 = call float @dx.op.binary.f32(i32 35, float %8083, float 0.000000e+00)  ; FMax(a,b)
  %8085 = call float @dx.op.binary.f32(i32 36, float %7954, float %8084)  ; FMin(a,b)
  %8086 = call float @dx.op.binary.f32(i32 36, float %8082, float %8085)  ; FMin(a,b)
  %8087 = call float @dx.op.binary.f32(i32 35, float %8082, float %8085)  ; FMax(a,b)
  br label %8088

; <label>:8088                                    ; preds = %8073, %8049
  %8089 = phi float [ %8087, %8073 ], [ -1.000000e+00, %8049 ]
  %8090 = phi float [ %8086, %8073 ], [ -1.000000e+00, %8049 ]
  %8091 = phi i1 [ true, %8073 ], [ false, %8049 ]
  br i1 %8091, label %8092, label %8098

; <label>:8092                                    ; preds = %8088
  %8093 = call float @dx.op.binary.f32(i32 35, float %8037, float %8090)  ; FMax(a,b)
  %8094 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8051
  store float %8093, float* %8094, align 4, !tbaa !123, !noalias !125
  %8095 = call float @dx.op.binary.f32(i32 35, float %8037, float %8089)  ; FMax(a,b)
  %8096 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8051
  store float %8095, float* %8096, align 4, !tbaa !123, !noalias !125
  %8097 = add nsw i32 %8050, 1
  br label %8098

; <label>:8098                                    ; preds = %8092, %8088
  %8099 = phi i32 [ %8097, %8092 ], [ %8050, %8088 ]
  %8100 = add nuw nsw i32 %8051, 1
  %8101 = icmp eq i32 %8100, %7906
  br i1 %8101, label %8102, label %8049

; <label>:8102                                    ; preds = %8098
  %8103 = load float, float* %8043, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %8104 = load float, float* %8042, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  %8105 = load float, float* %8041, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  %8106 = load float, float* %8046, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %8107 = load float, float* %8045, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  %8108 = load float, float* %8044, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  br label %8109

; <label>:8109                                    ; preds = %8102, %8036
  %8110 = phi float [ -1.000000e+00, %8036 ], [ %8108, %8102 ]
  %8111 = phi float [ -1.000000e+00, %8036 ], [ %8107, %8102 ]
  %8112 = phi float [ -1.000000e+00, %8036 ], [ %8106, %8102 ]
  %8113 = phi float [ -1.000000e+00, %8036 ], [ %8105, %8102 ]
  %8114 = phi float [ -1.000000e+00, %8036 ], [ %8104, %8102 ]
  %8115 = phi float [ -1.000000e+00, %8036 ], [ %8103, %8102 ]
  %8116 = phi i32 [ 0, %8036 ], [ %8099, %8102 ]
  %8117 = call float @dx.op.binary.f32(i32 36, float %8114, float %8115)  ; FMin(a,b)
  %8118 = call float @dx.op.binary.f32(i32 36, float %8113, float %8117)  ; FMin(a,b)
  %8119 = call float @dx.op.binary.f32(i32 35, float %8113, float %8114)  ; FMax(a,b)
  %8120 = call float @dx.op.binary.f32(i32 36, float %8119, float %8115)  ; FMin(a,b)
  %8121 = call float @dx.op.binary.f32(i32 36, float %8113, float %8114)  ; FMin(a,b)
  %8122 = call float @dx.op.binary.f32(i32 35, float %8121, float %8120)  ; FMax(a,b)
  %8123 = call float @dx.op.binary.f32(i32 35, float %8114, float %8115)  ; FMax(a,b)
  %8124 = call float @dx.op.binary.f32(i32 35, float %8113, float %8123)  ; FMax(a,b)
  store float %8118, float* %8041, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  store float %8122, float* %8042, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  store float %8124, float* %8043, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %8125 = call float @dx.op.binary.f32(i32 36, float %8111, float %8112)  ; FMin(a,b)
  %8126 = call float @dx.op.binary.f32(i32 36, float %8110, float %8125)  ; FMin(a,b)
  %8127 = call float @dx.op.binary.f32(i32 35, float %8110, float %8111)  ; FMax(a,b)
  %8128 = call float @dx.op.binary.f32(i32 36, float %8127, float %8112)  ; FMin(a,b)
  %8129 = call float @dx.op.binary.f32(i32 36, float %8110, float %8111)  ; FMin(a,b)
  %8130 = call float @dx.op.binary.f32(i32 35, float %8129, float %8128)  ; FMax(a,b)
  %8131 = call float @dx.op.binary.f32(i32 35, float %8111, float %8112)  ; FMax(a,b)
  %8132 = call float @dx.op.binary.f32(i32 35, float %8110, float %8131)  ; FMax(a,b)
  store float %8126, float* %8044, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  store float %8130, float* %8045, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  store float %8132, float* %8046, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %8133 = sub nsw i32 3, %8116
  %8134 = icmp sgt i32 %8133, 2
  br i1 %8134, label %8135, label %8173

; <label>:8135                                    ; preds = %8109
  %8136 = icmp eq i32 %7904, 0
  %8137 = fsub fast float %7954, %8038
  %8138 = select i1 %8136, float %8137, float %8038
  %8139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8140 = extractvalue %dx.types.CBufRet.f32 %8139, 0
  %8141 = extractvalue %dx.types.CBufRet.f32 %8139, 1
  %8142 = extractvalue %dx.types.CBufRet.f32 %8139, 2
  %8143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8144 = extractvalue %dx.types.CBufRet.f32 %8143, 0
  %8145 = extractvalue %dx.types.CBufRet.f32 %8143, 1
  %8146 = extractvalue %dx.types.CBufRet.f32 %8143, 2
  %8147 = extractvalue %dx.types.CBufRet.f32 %8143, 3
  %8148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8149 = extractvalue %dx.types.CBufRet.f32 %8148, 3
  %8150 = call float @dx.op.binary.f32(i32 36, float %8039, float %8149)  ; FMin(a,b)
  %8151 = fmul fast float %8147, %8138
  %8152 = call float @dx.op.unary.f32(i32 7, float %8151)  ; Saturate(value)
  %8153 = fsub fast float %8144, %8140
  %8154 = fsub fast float %8145, %8141
  %8155 = fsub fast float %8146, %8142
  %8156 = fmul fast float %8152, %8153
  %8157 = fmul fast float %8152, %8154
  %8158 = fmul fast float %8152, %8155
  %8159 = fadd fast float %8156, %8140
  %8160 = fadd fast float %8157, %8141
  %8161 = fadd fast float %8158, %8142
  %8162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8163 = extractvalue %dx.types.CBufRet.f32 %8162, 0
  %8164 = extractvalue %dx.types.CBufRet.f32 %8162, 1
  %8165 = fadd fast float %8164, %8163
  %8166 = call float @dx.op.unary.f32(i32 7, float %8165)  ; Saturate(value)
  %8167 = extractvalue %dx.types.CBufRet.f32 %8162, 2
  %8168 = extractvalue %dx.types.CBufRet.f32 %8162, 3
  %8169 = fadd fast float %8168, %8167
  %8170 = call float @dx.op.unary.f32(i32 7, float %8169)  ; Saturate(value)
  %8171 = fmul fast float %8166, %8150
  %8172 = fmul fast float %8171, %8170
  br label %8255

; <label>:8173                                    ; preds = %8109
  %8174 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8133
  %8175 = load float, float* %8174, align 4, !tbaa !123, !noalias !125
  %8176 = fcmp fast olt float %8175, %8040
  %8177 = icmp sgt i32 %8116, 0
  %8178 = and i1 %8177, %8176
  br i1 %8178, label %8179, label %8216

; <label>:8179                                    ; preds = %8173
  br label %8180

; <label>:8180                                    ; preds = %8209, %8179
  %8181 = phi float [ %8210, %8209 ], [ %8038, %8179 ]
  %8182 = phi float [ %8211, %8209 ], [ %8039, %8179 ]
  %8183 = phi float [ %8191, %8209 ], [ %8175, %8179 ]
  %8184 = phi i32 [ %8188, %8209 ], [ %8133, %8179 ]
  %8185 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8184
  %8186 = load float, float* %8185, align 4, !tbaa !123, !noalias !125
  %8187 = icmp slt i32 %8184, 2
  %8188 = add nsw i32 %8184, 1
  %8189 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8188
  %8190 = load float, float* %8189, align 4, !tbaa !123, !noalias !125
  %8191 = select i1 %8187, float %8190, float %7954
  %8192 = call float @dx.op.binary.f32(i32 36, float %8191, float %8186)  ; FMin(a,b)
  %8193 = call float @dx.op.binary.f32(i32 36, float %8040, float %8192)  ; FMin(a,b)
  %8194 = icmp eq i32 %7904, 0
  %8195 = fadd fast float %8193, %8183
  %8196 = fmul fast float %8195, %7885
  %8197 = fadd fast float %8196, %7898
  br i1 %8194, label %8203, label %8198

; <label>:8198                                    ; preds = %8180
  %8199 = fsub fast float %8193, %8183
  %8200 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8199)  ; FMax(a,b)
  %8201 = fmul fast float %8200, %8197
  %8202 = fadd fast float %8201, %8182
  br label %8209

; <label>:8203                                    ; preds = %8180
  %8204 = fsub fast float %8183, %8193
  %8205 = call float @dx.op.unary.f32(i32 6, float %8204)  ; FAbs(value)
  %8206 = fadd fast float %8205, %8181
  %8207 = fmul fast float %8205, %8197
  %8208 = fsub fast float %8182, %8207
  br label %8209

; <label>:8209                                    ; preds = %8203, %8198
  %8210 = phi float [ %8200, %8198 ], [ %8206, %8203 ]
  %8211 = phi float [ %8202, %8198 ], [ %8208, %8203 ]
  %8212 = fcmp fast olt float %8191, %8040
  %8213 = icmp slt i32 %8188, 3
  %8214 = and i1 %8213, %8212
  br i1 %8214, label %8180, label %8215

; <label>:8215                                    ; preds = %8209
  br label %8216

; <label>:8216                                    ; preds = %8215, %8173
  %8217 = phi float [ %8038, %8173 ], [ %8210, %8215 ]
  %8218 = phi float [ %8039, %8173 ], [ %8211, %8215 ]
  %8219 = fsub fast float %7954, %8217
  %8220 = select i1 %7956, float %8217, float %8219
  %8221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8222 = extractvalue %dx.types.CBufRet.f32 %8221, 0
  %8223 = extractvalue %dx.types.CBufRet.f32 %8221, 1
  %8224 = extractvalue %dx.types.CBufRet.f32 %8221, 2
  %8225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8226 = extractvalue %dx.types.CBufRet.f32 %8225, 0
  %8227 = extractvalue %dx.types.CBufRet.f32 %8225, 1
  %8228 = extractvalue %dx.types.CBufRet.f32 %8225, 2
  %8229 = extractvalue %dx.types.CBufRet.f32 %8225, 3
  %8230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8231 = extractvalue %dx.types.CBufRet.f32 %8230, 3
  %8232 = call float @dx.op.binary.f32(i32 36, float %8218, float %8231)  ; FMin(a,b)
  %8233 = fmul fast float %8229, %8220
  %8234 = call float @dx.op.unary.f32(i32 7, float %8233)  ; Saturate(value)
  %8235 = fsub fast float %8226, %8222
  %8236 = fsub fast float %8227, %8223
  %8237 = fsub fast float %8228, %8224
  %8238 = fmul fast float %8234, %8235
  %8239 = fmul fast float %8234, %8236
  %8240 = fmul fast float %8234, %8237
  %8241 = fadd fast float %8238, %8222
  %8242 = fadd fast float %8239, %8223
  %8243 = fadd fast float %8240, %8224
  %8244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8245 = extractvalue %dx.types.CBufRet.f32 %8244, 0
  %8246 = extractvalue %dx.types.CBufRet.f32 %8244, 1
  %8247 = fadd fast float %8246, %8245
  %8248 = call float @dx.op.unary.f32(i32 7, float %8247)  ; Saturate(value)
  %8249 = extractvalue %dx.types.CBufRet.f32 %8244, 2
  %8250 = extractvalue %dx.types.CBufRet.f32 %8244, 3
  %8251 = fadd fast float %8250, %8249
  %8252 = call float @dx.op.unary.f32(i32 7, float %8251)  ; Saturate(value)
  %8253 = fmul fast float %8248, %8232
  %8254 = fmul fast float %8253, %8252
  br label %8255

; <label>:8255                                    ; preds = %8216, %8135, %7970, %7952, %7950
  %8256 = phi float [ %7979, %7970 ], [ %8138, %8135 ], [ %8220, %8216 ], [ 0.000000e+00, %7950 ], [ 0.000000e+00, %7952 ]
  %8257 = phi float [ %8013, %7970 ], [ %8172, %8135 ], [ %8254, %8216 ], [ 0.000000e+00, %7950 ], [ 0.000000e+00, %7952 ]
  %8258 = phi float [ %8000, %7970 ], [ %8159, %8135 ], [ %8241, %8216 ], [ 0.000000e+00, %7950 ], [ 0.000000e+00, %7952 ]
  %8259 = phi float [ %8001, %7970 ], [ %8160, %8135 ], [ %8242, %8216 ], [ 0.000000e+00, %7950 ], [ 0.000000e+00, %7952 ]
  %8260 = phi float [ %8002, %7970 ], [ %8161, %8135 ], [ %8243, %8216 ], [ 0.000000e+00, %7950 ], [ 0.000000e+00, %7952 ]
  %8261 = fmul fast float %7893, %8257
  %8262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8263 = extractvalue %dx.types.CBufRet.f32 %8262, 2
  %8264 = fsub fast float %7900, %8263
  %8265 = fcmp fast olt float %8261, -2.000000e+01
  %8266 = call float @dx.op.unary.f32(i32 21, float %8261)  ; Exp(value)
  %8267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8268 = extractvalue %dx.types.CBufRet.f32 %8267, 2
  %8269 = extractvalue %dx.types.CBufRet.f32 %8267, 3
  %8270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8271 = extractvalue %dx.types.CBufRet.f32 %8270, 2
  %8272 = fmul fast float %8269, %8264
  %8273 = call float @dx.op.unary.f32(i32 7, float %8272)  ; Saturate(value)
  %8274 = fsub fast float 1.000000e+00, %8273
  %8275 = fmul fast float %7885, 5.000000e-01
  %8276 = fadd fast float %8275, 5.000000e-01
  %8277 = call float @dx.op.unary.f32(i32 7, float %8276)  ; Saturate(value)
  %8278 = fsub fast float 1.000000e+00, %8277
  %8279 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8274)  ; FMax(a,b)
  %8280 = fdiv fast float %8278, %8279
  %8281 = fsub fast float %8264, %7842
  %8282 = call float @dx.op.unary.f32(i32 6, float %8281)  ; FAbs(value)
  %8283 = fmul fast float %8282, %8268
  %8284 = call float @dx.op.unary.f32(i32 7, float %8280)  ; Saturate(value)
  %8285 = fsub fast float 1.000000e+00, %8283
  %8286 = fmul fast float %8285, %8284
  %8287 = fadd fast float %8286, %8283
  %8288 = fmul fast float %8271, %8264
  %8289 = call float @dx.op.unary.f32(i32 7, float %8288)  ; Saturate(value)
  %8290 = fsub fast float 1.000000e+00, %8287
  %8291 = fmul fast float %8290, %8289
  %8292 = fadd fast float %8291, %8287
  %8293 = call float @dx.op.unary.f32(i32 7, float %8292)  ; Saturate(value)
  %8294 = fadd fast float %8266, -1.000000e+00
  %8295 = select i1 %8265, float -1.000000e+00, float %8294
  %8296 = fmul fast float %8293, %8295
  %8297 = fadd fast float %8296, 1.000000e+00
  %8298 = fsub fast float -0.000000e+00, %8296
  %8299 = fmul fast float %8258, %8298
  %8300 = fmul fast float %8259, %8298
  %8301 = fmul fast float %8260, %8298
  br label %8302

; <label>:8302                                    ; preds = %8255, %7851
  %8303 = phi float [ %8256, %8255 ], [ 0.000000e+00, %7851 ]
  %8304 = phi float [ %8297, %8255 ], [ 1.000000e+00, %7851 ]
  %8305 = phi float [ %8299, %8255 ], [ 0.000000e+00, %7851 ]
  %8306 = phi float [ %8300, %8255 ], [ 0.000000e+00, %7851 ]
  %8307 = phi float [ %8301, %8255 ], [ 0.000000e+00, %7851 ]
  %8308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8309 = extractvalue %dx.types.CBufRet.f32 %8308, 1
  %8310 = fsub fast float 1.000000e+00, %8304
  %8311 = fmul fast float %8310, %7886
  %8312 = fmul fast float %8311, %8309
  %8313 = fsub fast float %7886, %8312
  br i1 %7879, label %8314, label %8343, !dx.controlflow.hints !161

; <label>:8314                                    ; preds = %8302
  %8315 = fmul fast float %7887, %7876
  %8316 = fadd fast float %8315, %7877
  %8317 = call float @dx.op.unary.f32(i32 7, float %8316)  ; Saturate(value)
  %8318 = fmul fast float %7858, %8313
  %8319 = fsub fast float -0.000000e+00, %8318
  %8320 = fmul fast float %7859, %8313
  %8321 = fsub fast float -0.000000e+00, %8320
  %8322 = call float @dx.op.unary.f32(i32 21, float %8319)  ; Exp(value)
  %8323 = call float @dx.op.unary.f32(i32 21, float %8321)  ; Exp(value)
  %8324 = call float @dx.op.binary.f32(i32 35, float %7866, float %8322)  ; FMax(a,b)
  %8325 = call float @dx.op.binary.f32(i32 35, float %7866, float %8323)  ; FMax(a,b)
  %8326 = fsub fast float %8325, %8324
  %8327 = fmul fast float %8326, %8317
  %8328 = fadd fast float %8327, %8324
  %8329 = call float @dx.op.unary.f32(i32 7, float %8328)  ; Saturate(value)
  %8330 = fsub fast float %7863, %7868
  %8331 = fsub fast float %7864, %7869
  %8332 = fsub fast float %7865, %7870
  %8333 = fmul fast float %8317, %8330
  %8334 = fmul fast float %8317, %8331
  %8335 = fmul fast float %8317, %8332
  %8336 = fadd fast float %8333, %7868
  %8337 = fadd fast float %8334, %7869
  %8338 = fadd fast float %8335, %7870
  %8339 = fsub fast float 1.000000e+00, %8329
  %8340 = fmul fast float %8339, %8336
  %8341 = fmul fast float %8339, %8337
  %8342 = fmul fast float %8339, %8338
  br label %8402

; <label>:8343                                    ; preds = %8302
  %8344 = fmul fast float %8313, %7875
  %8345 = call float @dx.op.unary.f32(i32 7, float %8344)  ; Saturate(value)
  %8346 = fsub fast float 2.000000e+00, %8345
  %8347 = fmul fast float %8345, 9.921875e-01
  %8348 = fmul fast float %8347, %8346
  %8349 = fadd fast float %8348, 3.906250e-03
  %8350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %8349, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8351 = extractvalue %dx.types.ResRet.f32 %8350, 0
  %8352 = fsub fast float %8345, %8351
  %8353 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8352)  ; FMax(a,b)
  %8354 = fmul fast float %7861, %7842
  %8355 = call float @dx.op.unary.f32(i32 6, float %8354)  ; FAbs(value)
  %8356 = fcmp fast ogt float %8355, 0x3EB0C6F7A0000000
  br i1 %8356, label %8357, label %8363, !dx.controlflow.hints !162

; <label>:8357                                    ; preds = %8343
  %8358 = fmul fast float %8354, 0xBFF7154760000000
  %8359 = call float @dx.op.unary.f32(i32 21, float %8358)  ; Exp(value)
  %8360 = fsub fast float 1.000000e+00, %8359
  %8361 = fdiv fast float %8360, %8354
  %8362 = fmul fast float %8361, %7871
  br label %8363

; <label>:8363                                    ; preds = %8357, %8343
  %8364 = phi float [ %8362, %8357 ], [ %7871, %8343 ]
  %8365 = fadd fast float %8364, %7873
  %8366 = fmul fast float %8365, %8353
  %8367 = fmul fast float %7858, %8366
  %8368 = fsub fast float -0.000000e+00, %8367
  %8369 = fmul fast float %7859, %8366
  %8370 = fsub fast float -0.000000e+00, %8369
  %8371 = fmul fast float %7860, %8366
  %8372 = fsub fast float -0.000000e+00, %8371
  %8373 = call float @dx.op.unary.f32(i32 21, float %8368)  ; Exp(value)
  %8374 = call float @dx.op.unary.f32(i32 21, float %8370)  ; Exp(value)
  %8375 = call float @dx.op.unary.f32(i32 21, float %8372)  ; Exp(value)
  %8376 = fmul fast float %7887, %7887
  %8377 = fadd fast float %8376, 1.000000e+00
  %8378 = fmul fast float %8377, 0x3FAE8EC8A0000000
  %8379 = fmul fast float %8378, %7868
  %8380 = fmul fast float %8378, %7869
  %8381 = fmul fast float %8378, %7870
  %8382 = fmul fast float %7887, %7866
  %8383 = fsub fast float 1.000000e+00, %8382
  %8384 = fmul fast float %7866, %7866
  %8385 = fsub fast float 1.000000e+00, %8384
  %8386 = fmul fast float %8385, 0x3FB45F3060000000
  %8387 = fmul fast float %8383, %8383
  %8388 = fdiv fast float 1.000000e+00, %8387
  %8389 = fmul fast float %8386, %8388
  %8390 = fmul fast float %8389, %7863
  %8391 = fmul fast float %8389, %7864
  %8392 = fmul fast float %8389, %7865
  %8393 = fadd fast float %8390, %8379
  %8394 = fadd fast float %8391, %8380
  %8395 = fadd fast float %8392, %8381
  %8396 = fsub fast float 1.000000e+00, %8373
  %8397 = fsub fast float 1.000000e+00, %8374
  %8398 = fsub fast float 1.000000e+00, %8375
  %8399 = fmul fast float %8393, %8396
  %8400 = fmul fast float %8394, %8397
  %8401 = fmul fast float %8395, %8398
  br label %8402

; <label>:8402                                    ; preds = %8363, %8314
  %8403 = phi float [ %8340, %8314 ], [ %8399, %8363 ]
  %8404 = phi float [ %8341, %8314 ], [ %8400, %8363 ]
  %8405 = phi float [ %8342, %8314 ], [ %8401, %8363 ]
  %8406 = phi float [ %8329, %8314 ], [ %8373, %8363 ]
  %8407 = phi float [ %8329, %8314 ], [ %8374, %8363 ]
  %8408 = phi float [ %8329, %8314 ], [ %8375, %8363 ]
  br i1 %7895, label %8409, label %8607, !dx.controlflow.hints !163

; <label>:8409                                    ; preds = %8402
  %8410 = extractvalue %dx.types.CBufRet.f32 %8308, 0
  %8411 = fmul fast float %8410, %8310
  %8412 = fsub fast float %8305, %8403
  %8413 = fsub fast float %8306, %8404
  %8414 = fsub fast float %8307, %8405
  %8415 = fmul fast float %8411, %8412
  %8416 = fmul fast float %8411, %8413
  %8417 = fmul fast float %8411, %8414
  %8418 = fadd fast float %8415, %8403
  %8419 = fadd fast float %8416, %8404
  %8420 = fadd fast float %8417, %8405
  %8421 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8406)  ; FMax(a,b)
  %8422 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8407)  ; FMax(a,b)
  %8423 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8408)  ; FMax(a,b)
  %8424 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8304)  ; FMax(a,b)
  %8425 = call float @dx.op.binary.f32(i32 35, float %8303, float %8313)  ; FMax(a,b)
  %8426 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8425)  ; FMax(a,b)
  %8427 = fdiv fast float %8303, %8426
  %8428 = call float @dx.op.unary.f32(i32 7, float %8427)  ; Saturate(value)
  %8429 = fdiv fast float %8313, %8426
  %8430 = call float @dx.op.unary.f32(i32 7, float %8429)  ; Saturate(value)
  %8431 = fcmp fast une float %8424, 1.000000e+00
  br i1 %8431, label %8432, label %8445, !dx.controlflow.hints !164

; <label>:8432                                    ; preds = %8409
  %8433 = call float @dx.op.unary.f32(i32 23, float %8424)  ; Log(value)
  %8434 = fmul fast float %8433, 0x3FE62E4300000000
  %8435 = fmul fast float %8305, %8434
  %8436 = fsub fast float -0.000000e+00, %8435
  %8437 = fmul fast float %8306, %8434
  %8438 = fsub fast float -0.000000e+00, %8437
  %8439 = fmul fast float %8307, %8434
  %8440 = fsub fast float -0.000000e+00, %8439
  %8441 = fsub fast float 1.000000e+00, %8424
  %8442 = fdiv fast float %8436, %8441
  %8443 = fdiv fast float %8438, %8441
  %8444 = fdiv fast float %8440, %8441
  br label %8445

; <label>:8445                                    ; preds = %8432, %8409
  %8446 = phi float [ %8442, %8432 ], [ %8305, %8409 ]
  %8447 = phi float [ %8443, %8432 ], [ %8306, %8409 ]
  %8448 = phi float [ %8444, %8432 ], [ %8307, %8409 ]
  %8449 = phi float [ %8434, %8432 ], [ 0.000000e+00, %8409 ]
  %8450 = fcmp fast une float %8421, 1.000000e+00
  br i1 %8450, label %8451, label %8458, !dx.controlflow.hints !165

; <label>:8451                                    ; preds = %8445
  %8452 = call float @dx.op.unary.f32(i32 23, float %8421)  ; Log(value)
  %8453 = fmul fast float %8452, 0x3FE62E4300000000
  %8454 = fmul fast float %8418, %8453
  %8455 = fsub fast float -0.000000e+00, %8454
  %8456 = fsub fast float 1.000000e+00, %8421
  %8457 = fdiv fast float %8455, %8456
  br label %8458

; <label>:8458                                    ; preds = %8451, %8445
  %8459 = phi float [ %8457, %8451 ], [ %8418, %8445 ]
  %8460 = phi float [ %8453, %8451 ], [ 0.000000e+00, %8445 ]
  %8461 = fcmp fast une float %8422, 1.000000e+00
  br i1 %8461, label %8462, label %8469, !dx.controlflow.hints !165

; <label>:8462                                    ; preds = %8458
  %8463 = call float @dx.op.unary.f32(i32 23, float %8422)  ; Log(value)
  %8464 = fmul fast float %8463, 0x3FE62E4300000000
  %8465 = fmul fast float %8419, %8464
  %8466 = fsub fast float -0.000000e+00, %8465
  %8467 = fsub fast float 1.000000e+00, %8422
  %8468 = fdiv fast float %8466, %8467
  br label %8469

; <label>:8469                                    ; preds = %8462, %8458
  %8470 = phi float [ %8468, %8462 ], [ %8419, %8458 ]
  %8471 = phi float [ %8464, %8462 ], [ 0.000000e+00, %8458 ]
  %8472 = fcmp fast une float %8423, 1.000000e+00
  br i1 %8472, label %8473, label %8480, !dx.controlflow.hints !165

; <label>:8473                                    ; preds = %8469
  %8474 = call float @dx.op.unary.f32(i32 23, float %8423)  ; Log(value)
  %8475 = fmul fast float %8474, 0x3FE62E4300000000
  %8476 = fmul fast float %8420, %8475
  %8477 = fsub fast float -0.000000e+00, %8476
  %8478 = fsub fast float 1.000000e+00, %8423
  %8479 = fdiv fast float %8477, %8478
  br label %8480

; <label>:8480                                    ; preds = %8473, %8469
  %8481 = phi float [ %8479, %8473 ], [ %8420, %8469 ]
  %8482 = phi float [ %8475, %8473 ], [ 0.000000e+00, %8469 ]
  %8483 = fmul fast float %8446, %8430
  %8484 = fmul fast float %8447, %8430
  %8485 = fmul fast float %8448, %8430
  %8486 = fmul fast float %8449, %8430
  %8487 = fmul fast float %8459, %8428
  %8488 = fmul fast float %8470, %8428
  %8489 = fmul fast float %8481, %8428
  %8490 = fmul fast float %8460, %8428
  %8491 = fmul fast float %8471, %8428
  %8492 = fmul fast float %8482, %8428
  %8493 = fadd fast float %8487, %8483
  %8494 = fadd fast float %8488, %8484
  %8495 = fadd fast float %8489, %8485
  %8496 = fadd fast float %8490, %8486
  %8497 = fadd fast float %8491, %8486
  %8498 = fadd fast float %8492, %8486
  %8499 = fcmp fast une float %8496, 0.000000e+00
  br i1 %8499, label %8500, label %8507, !dx.controlflow.hints !166

; <label>:8500                                    ; preds = %8480
  %8501 = fmul fast float %8496, 0x3FF7154760000000
  %8502 = call float @dx.op.unary.f32(i32 21, float %8501)  ; Exp(value)
  %8503 = fsub fast float 1.000000e+00, %8502
  %8504 = fmul fast float %8493, %8503
  %8505 = fsub fast float -0.000000e+00, %8504
  %8506 = fdiv fast float %8505, %8496
  br label %8507

; <label>:8507                                    ; preds = %8500, %8480
  %8508 = phi float [ %8502, %8500 ], [ 1.000000e+00, %8480 ]
  %8509 = phi float [ %8506, %8500 ], [ %8493, %8480 ]
  %8510 = fcmp fast une float %8497, 0.000000e+00
  br i1 %8510, label %8511, label %8518, !dx.controlflow.hints !166

; <label>:8511                                    ; preds = %8507
  %8512 = fmul fast float %8497, 0x3FF7154760000000
  %8513 = call float @dx.op.unary.f32(i32 21, float %8512)  ; Exp(value)
  %8514 = fsub fast float 1.000000e+00, %8513
  %8515 = fmul fast float %8494, %8514
  %8516 = fsub fast float -0.000000e+00, %8515
  %8517 = fdiv fast float %8516, %8497
  br label %8518

; <label>:8518                                    ; preds = %8511, %8507
  %8519 = phi float [ %8513, %8511 ], [ 1.000000e+00, %8507 ]
  %8520 = phi float [ %8517, %8511 ], [ %8494, %8507 ]
  %8521 = fcmp fast une float %8498, 0.000000e+00
  br i1 %8521, label %8522, label %8529, !dx.controlflow.hints !166

; <label>:8522                                    ; preds = %8518
  %8523 = fmul fast float %8498, 0x3FF7154760000000
  %8524 = call float @dx.op.unary.f32(i32 21, float %8523)  ; Exp(value)
  %8525 = fsub fast float 1.000000e+00, %8524
  %8526 = fmul fast float %8495, %8525
  %8527 = fsub fast float -0.000000e+00, %8526
  %8528 = fdiv fast float %8527, %8498
  br label %8529

; <label>:8529                                    ; preds = %8522, %8518
  %8530 = phi float [ %8524, %8522 ], [ 1.000000e+00, %8518 ]
  %8531 = phi float [ %8528, %8522 ], [ %8495, %8518 ]
  %8532 = fcmp fast ogt float %8428, %8430
  br i1 %8532, label %8533, label %8553

; <label>:8533                                    ; preds = %8529
  %8534 = fsub fast float 1.000000e+00, %8430
  %8535 = fmul fast float %8446, %8534
  %8536 = fmul fast float %8447, %8534
  %8537 = fmul fast float %8448, %8534
  %8538 = fmul fast float %8449, %8534
  %8539 = fcmp fast une float %8538, 0.000000e+00
  br i1 %8539, label %8540, label %8591, !dx.controlflow.hints !167

; <label>:8540                                    ; preds = %8533
  %8541 = fmul fast float %8538, 0x3FF7154760000000
  %8542 = call float @dx.op.unary.f32(i32 21, float %8541)  ; Exp(value)
  %8543 = fsub fast float 1.000000e+00, %8542
  %8544 = fmul fast float %8535, %8543
  %8545 = fsub fast float -0.000000e+00, %8544
  %8546 = fmul fast float %8536, %8543
  %8547 = fsub fast float -0.000000e+00, %8546
  %8548 = fmul fast float %8537, %8543
  %8549 = fsub fast float -0.000000e+00, %8548
  %8550 = fdiv fast float %8545, %8538
  %8551 = fdiv fast float %8547, %8538
  %8552 = fdiv fast float %8549, %8538
  br label %8591

; <label>:8553                                    ; preds = %8529
  %8554 = fsub fast float 1.000000e+00, %8428
  %8555 = fmul fast float %8459, %8554
  %8556 = fmul fast float %8470, %8554
  %8557 = fmul fast float %8481, %8554
  %8558 = fmul fast float %8460, %8554
  %8559 = fmul fast float %8471, %8554
  %8560 = fmul fast float %8482, %8554
  %8561 = fcmp fast une float %8558, 0.000000e+00
  br i1 %8561, label %8562, label %8569, !dx.controlflow.hints !166

; <label>:8562                                    ; preds = %8553
  %8563 = fmul fast float %8558, 0x3FF7154760000000
  %8564 = call float @dx.op.unary.f32(i32 21, float %8563)  ; Exp(value)
  %8565 = fsub fast float 1.000000e+00, %8564
  %8566 = fmul fast float %8555, %8565
  %8567 = fsub fast float -0.000000e+00, %8566
  %8568 = fdiv fast float %8567, %8558
  br label %8569

; <label>:8569                                    ; preds = %8562, %8553
  %8570 = phi float [ %8568, %8562 ], [ %8555, %8553 ]
  %8571 = phi float [ %8564, %8562 ], [ 1.000000e+00, %8553 ]
  %8572 = fcmp fast une float %8559, 0.000000e+00
  br i1 %8572, label %8573, label %8580, !dx.controlflow.hints !166

; <label>:8573                                    ; preds = %8569
  %8574 = fmul fast float %8559, 0x3FF7154760000000
  %8575 = call float @dx.op.unary.f32(i32 21, float %8574)  ; Exp(value)
  %8576 = fsub fast float 1.000000e+00, %8575
  %8577 = fmul fast float %8556, %8576
  %8578 = fsub fast float -0.000000e+00, %8577
  %8579 = fdiv fast float %8578, %8559
  br label %8580

; <label>:8580                                    ; preds = %8573, %8569
  %8581 = phi float [ %8579, %8573 ], [ %8556, %8569 ]
  %8582 = phi float [ %8575, %8573 ], [ 1.000000e+00, %8569 ]
  %8583 = fcmp fast une float %8560, 0.000000e+00
  br i1 %8583, label %8584, label %8591, !dx.controlflow.hints !166

; <label>:8584                                    ; preds = %8580
  %8585 = fmul fast float %8560, 0x3FF7154760000000
  %8586 = call float @dx.op.unary.f32(i32 21, float %8585)  ; Exp(value)
  %8587 = fsub fast float 1.000000e+00, %8586
  %8588 = fmul fast float %8557, %8587
  %8589 = fsub fast float -0.000000e+00, %8588
  %8590 = fdiv fast float %8589, %8560
  br label %8591

; <label>:8591                                    ; preds = %8584, %8580, %8540, %8533
  %8592 = phi float [ %8590, %8584 ], [ %8552, %8540 ], [ %8537, %8533 ], [ %8557, %8580 ]
  %8593 = phi float [ %8581, %8584 ], [ %8551, %8540 ], [ %8536, %8533 ], [ %8581, %8580 ]
  %8594 = phi float [ %8570, %8584 ], [ %8550, %8540 ], [ %8535, %8533 ], [ %8570, %8580 ]
  %8595 = phi float [ %8586, %8584 ], [ %8542, %8540 ], [ 1.000000e+00, %8533 ], [ 1.000000e+00, %8580 ]
  %8596 = phi float [ %8582, %8584 ], [ %8542, %8540 ], [ 1.000000e+00, %8533 ], [ %8582, %8580 ]
  %8597 = phi float [ %8571, %8584 ], [ %8542, %8540 ], [ 1.000000e+00, %8533 ], [ %8571, %8580 ]
  %8598 = fmul fast float %8597, %8509
  %8599 = fmul fast float %8596, %8520
  %8600 = fmul fast float %8595, %8531
  %8601 = fadd fast float %8598, %8594
  %8602 = fadd fast float %8599, %8593
  %8603 = fadd fast float %8600, %8592
  %8604 = fmul fast float %8597, %8508
  %8605 = fmul fast float %8596, %8519
  %8606 = fmul fast float %8595, %8530
  br label %8607

; <label>:8607                                    ; preds = %8591, %8402
  %8608 = phi float [ %8606, %8591 ], [ %8408, %8402 ]
  %8609 = phi float [ %8605, %8591 ], [ %8407, %8402 ]
  %8610 = phi float [ %8604, %8591 ], [ %8406, %8402 ]
  %8611 = phi float [ %8603, %8591 ], [ %8405, %8402 ]
  %8612 = phi float [ %8602, %8591 ], [ %8404, %8402 ]
  %8613 = phi float [ %8601, %8591 ], [ %8403, %8402 ]
  %8614 = fmul fast float %8613, %7567
  %8615 = fmul fast float %8612, %7568
  %8616 = fmul fast float %8611, %7569
  %8617 = fmul fast float %8610, %7850
  %8618 = call float @dx.op.dot3.f32(i32 55, float %8610, float %8609, float %8608, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8619 = call float @dx.op.dot3.f32(i32 55, float %8614, float %8615, float %8616, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8620 = select i1 %249, float %8618, float %8610
  %8621 = select i1 %249, float %8618, float %8609
  %8622 = select i1 %249, float 1.000000e+00, float %8608
  %8623 = select i1 %249, float %8619, float %8614
  %8624 = select i1 %249, float 0.000000e+00, float %8615
  %8625 = select i1 %249, float 0.000000e+00, float %8616
  %8626 = fmul fast float %8620, %7844
  %8627 = fmul fast float %8621, %7845
  %8628 = fmul fast float %8622, %7846
  %8629 = fadd fast float %8626, %8623
  %8630 = fadd fast float %8627, %8624
  %8631 = fadd fast float %8625, %8628
  %8632 = fmul fast float %8620, %7847
  %8633 = fmul fast float %8621, %7848
  %8634 = fmul fast float %8622, %7849
  %8635 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8636 = extractvalue %dx.types.CBufRet.i32 %8635, 0
  %8637 = icmp eq i32 %8636, 0
  br i1 %8637, label %9005, label %8638, !dx.controlflow.hints !168

; <label>:8638                                    ; preds = %8607
  %8639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8640 = extractvalue %dx.types.CBufRet.f32 %8639, 2
  %8641 = extractvalue %dx.types.CBufRet.f32 %8639, 3
  %8642 = fmul fast float %8640, %100
  %8643 = fmul fast float %8641, %101
  %8644 = fmul fast float %8642, 2.000000e+00
  %8645 = fmul fast float %8643, 2.000000e+00
  %8646 = fsub fast float 1.000000e+00, %8644
  %8647 = fsub fast float 1.000000e+00, %8645
  %8648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8649 = extractvalue %dx.types.CBufRet.f32 %8648, 0
  %8650 = extractvalue %dx.types.CBufRet.f32 %8648, 1
  %8651 = extractvalue %dx.types.CBufRet.f32 %8648, 2
  %8652 = fmul fast float %8646, %8649
  %8653 = fmul fast float %8646, %8650
  %8654 = fmul fast float %8646, %8651
  %8655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8656 = extractvalue %dx.types.CBufRet.f32 %8655, 0
  %8657 = extractvalue %dx.types.CBufRet.f32 %8655, 1
  %8658 = extractvalue %dx.types.CBufRet.f32 %8655, 2
  %8659 = fmul fast float %8647, %8656
  %8660 = fmul fast float %8647, %8657
  %8661 = fmul fast float %8647, %8658
  %8662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8663 = extractvalue %dx.types.CBufRet.f32 %8662, 0
  %8664 = extractvalue %dx.types.CBufRet.f32 %8662, 1
  %8665 = extractvalue %dx.types.CBufRet.f32 %8662, 2
  %8666 = fadd fast float %8659, %8663
  %8667 = fadd fast float %8666, %8652
  %8668 = fadd fast float %8660, %8664
  %8669 = fadd fast float %8668, %8653
  %8670 = fadd fast float %8661, %8665
  %8671 = fadd fast float %8670, %8654
  %8672 = fmul fast float %8667, %7843
  %8673 = fmul fast float %8669, %7843
  %8674 = fmul fast float %8671, %7843
  %8675 = fmul fast float %8672, %8672
  %8676 = fmul fast float %8673, %8673
  %8677 = fadd fast float %8675, %8676
  %8678 = fmul fast float %8674, %8674
  %8679 = fadd fast float %8677, %8678
  %8680 = call float @dx.op.unary.f32(i32 24, float %8679)  ; Sqrt(value)
  %8681 = extractvalue %dx.types.CBufRet.f32 %7570, 0
  %8682 = fsub fast float %8680, %8681
  %8683 = extractvalue %dx.types.CBufRet.f32 %7570, 2
  %8684 = fmul fast float %8682, %8683
  %8685 = call float @dx.op.unary.f32(i32 7, float %8684)  ; Saturate(value)
  %8686 = fadd fast float %8685, -5.000000e-01
  %8687 = fmul fast float %8686, 2.000000e+00
  %8688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8689 = extractvalue %dx.types.CBufRet.f32 %8688, 2
  %8690 = call float @dx.op.binary.f32(i32 36, float %8689, float %8687)  ; FMin(a,b)
  %8691 = fsub fast float -0.000000e+00, %8689
  %8692 = fcmp fast ogt float %8690, %8691
  br i1 %8692, label %8693, label %9005, !dx.controlflow.hints !169

; <label>:8693                                    ; preds = %8638
  %8694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8695 = extractvalue %dx.types.CBufRet.f32 %8694, 3
  %8696 = fcmp fast ogt float %8695, 0.000000e+00
  br i1 %8696, label %8697, label %8772, !dx.controlflow.hints !170

; <label>:8697                                    ; preds = %8693
  %8698 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %8699 = extractvalue %dx.types.Dimensions %8698, 0
  %8700 = sitofp i32 %8699 to float
  %8701 = extractvalue %dx.types.Dimensions %8698, 1
  %8702 = sitofp i32 %8701 to float
  %8703 = fmul fast float %8642, %8700
  %8704 = fmul fast float %8643, %8702
  %8705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8706 = extractvalue %dx.types.CBufRet.f32 %8705, 1
  %8707 = fsub fast float -0.000000e+00, %8706
  %8708 = fptoui float %8707 to i32
  %8709 = fptoui float %8703 to i32
  %8710 = fptoui float %8704 to i32
  %8711 = and i32 %8708, 31
  %8712 = lshr i32 %8709, %8711
  %8713 = lshr i32 %8710, %8711
  %8714 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %8708, i32 %8712, i32 %8713, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8715 = extractvalue %dx.types.ResRet.f32 %8714, 0
  %8716 = fcmp fast olt float %8715, -1.000000e+00
  %8717 = fcmp fast ogt float %8715, -1.000000e+00
  %8718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8719 = extractvalue %dx.types.CBufRet.f32 %8718, 1
  %8720 = select i1 %8717, float %8719, float 1.000000e+00
  %8721 = fadd fast float %8715, 1.000000e+00
  %8722 = fmul fast float %8720, %8721
  %8723 = call float @dx.op.unary.f32(i32 6, float %8722)  ; FAbs(value)
  %8724 = extractvalue %dx.types.CBufRet.f32 %8718, 3
  %8725 = fcmp fast oge float %8723, %8724
  %8726 = select i1 %8725, float 0x4197782600000000, float %8723
  %8727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8728 = extractvalue %dx.types.CBufRet.f32 %8727, 0
  %8729 = extractvalue %dx.types.CBufRet.f32 %8727, 1
  %8730 = extractvalue %dx.types.CBufRet.f32 %8727, 2
  %8731 = select i1 %8716, float %8728, float %8649
  %8732 = select i1 %8716, float %8729, float %8650
  %8733 = select i1 %8716, float %8730, float %8651
  %8734 = fmul fast float %8731, %8646
  %8735 = fmul fast float %8732, %8646
  %8736 = fmul fast float %8733, %8646
  %8737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8738 = extractvalue %dx.types.CBufRet.f32 %8737, 0
  %8739 = extractvalue %dx.types.CBufRet.f32 %8737, 1
  %8740 = extractvalue %dx.types.CBufRet.f32 %8737, 2
  %8741 = select i1 %8716, float %8738, float %8656
  %8742 = select i1 %8716, float %8739, float %8657
  %8743 = select i1 %8716, float %8740, float %8658
  %8744 = fmul fast float %8741, %8647
  %8745 = fmul fast float %8742, %8647
  %8746 = fmul fast float %8743, %8647
  %8747 = fadd fast float %8744, %8734
  %8748 = fadd fast float %8745, %8735
  %8749 = fadd fast float %8746, %8736
  %8750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8751 = extractvalue %dx.types.CBufRet.f32 %8750, 0
  %8752 = extractvalue %dx.types.CBufRet.f32 %8750, 1
  %8753 = extractvalue %dx.types.CBufRet.f32 %8750, 2
  %8754 = select i1 %8716, float %8751, float %8663
  %8755 = select i1 %8716, float %8752, float %8664
  %8756 = select i1 %8716, float %8753, float %8665
  %8757 = fadd fast float %8747, %8754
  %8758 = fadd fast float %8748, %8755
  %8759 = fadd fast float %8749, %8756
  %8760 = fmul fast float %8757, %8726
  %8761 = fmul fast float %8758, %8726
  %8762 = fmul fast float %8759, %8726
  %8763 = fmul fast float %8760, %8760
  %8764 = fmul fast float %8761, %8761
  %8765 = fadd fast float %8763, %8764
  %8766 = fmul fast float %8762, %8762
  %8767 = fadd fast float %8765, %8766
  %8768 = call float @dx.op.unary.f32(i32 24, float %8767)  ; Sqrt(value)
  %8769 = fsub fast float %8768, %8681
  %8770 = fmul fast float %8769, %8683
  %8771 = call float @dx.op.unary.f32(i32 7, float %8770)  ; Saturate(value)
  br label %8772

; <label>:8772                                    ; preds = %8697, %8693
  %8773 = phi float [ %8771, %8697 ], [ 1.000000e+00, %8693 ]
  %8774 = fmul fast float %8690, 5.000000e-01
  %8775 = fadd fast float %8774, 5.000000e-01
  %8776 = call float @dx.op.unary.f32(i32 22, float %8775)  ; Frc(value)
  %8777 = call float @dx.op.unary.f32(i32 27, float %8776)  ; Round_ni(value)
  %8778 = call float @dx.op.unary.f32(i32 22, float %8776)  ; Frc(value)
  %8779 = fmul fast float %8778, 2.000000e+00
  %8780 = fadd fast float %8779, -1.000000e+00
  %8781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8642, float %8643, float %8777, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8782 = extractvalue %dx.types.ResRet.f32 %8781, 0
  %8783 = extractvalue %dx.types.ResRet.f32 %8781, 1
  %8784 = extractvalue %dx.types.ResRet.f32 %8781, 2
  %8785 = extractvalue %dx.types.ResRet.f32 %8781, 3
  %8786 = fadd fast float %8782, -5.000000e-01
  %8787 = fadd fast float %8784, -5.000000e-01
  %8788 = fmul fast float %8786, 0xBFD5555560000000
  %8789 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8787, float %8788)  ; FMad(a,b,c)
  %8790 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8783, float 0.000000e+00)  ; FMad(a,b,c)
  %8791 = fadd fast float %8790, %8785
  %8792 = fmul fast float %8786, -7.500000e-01
  %8793 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8787, float %8792)  ; FMad(a,b,c)
  %8794 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8783, float 0.000000e+00)  ; FMad(a,b,c)
  %8795 = fadd fast float %8794, %8785
  %8796 = call float @dx.op.binary.f32(i32 35, float %8789, float -1.000000e+00)  ; FMax(a,b)
  %8797 = call float @dx.op.binary.f32(i32 35, float %8791, float -1.000000e+00)  ; FMax(a,b)
  %8798 = call float @dx.op.binary.f32(i32 35, float %8793, float -1.000000e+00)  ; FMax(a,b)
  %8799 = call float @dx.op.binary.f32(i32 35, float %8795, float -1.000000e+00)  ; FMax(a,b)
  %8800 = call float @dx.op.binary.f32(i32 36, float %8796, float 1.000000e+00)  ; FMin(a,b)
  %8801 = call float @dx.op.binary.f32(i32 36, float %8797, float 1.000000e+00)  ; FMin(a,b)
  %8802 = call float @dx.op.binary.f32(i32 36, float %8798, float 1.000000e+00)  ; FMin(a,b)
  %8803 = call float @dx.op.binary.f32(i32 36, float %8799, float 1.000000e+00)  ; FMin(a,b)
  %8804 = fcmp fast olt float %8800, 0x3FEFFF8020000000
  br i1 %8804, label %8805, label %8920, !dx.controlflow.hints !171

; <label>:8805                                    ; preds = %8772
  %8806 = extractvalue %dx.types.CBufRet.f32 %8688, 3
  %8807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8808 = extractvalue %dx.types.CBufRet.f32 %8807, 0
  %8809 = extractvalue %dx.types.CBufRet.f32 %8807, 1
  %8810 = extractvalue %dx.types.CBufRet.f32 %8807, 2
  %8811 = extractvalue %dx.types.CBufRet.f32 %8807, 3
  %8812 = fsub fast float %8808, %8800
  %8813 = fsub fast float %8809, %8801
  %8814 = fsub fast float %8810, %8802
  %8815 = fsub fast float %8811, %8803
  %8816 = fmul fast float %8812, %8806
  %8817 = fmul fast float %8813, %8806
  %8818 = fmul fast float %8814, %8806
  %8819 = fmul fast float %8815, %8806
  %8820 = fadd fast float %8816, %8800
  %8821 = fadd fast float %8817, %8801
  %8822 = fsub fast float -0.000000e+00, %8821
  %8823 = fadd fast float %8818, %8802
  %8824 = fadd fast float %8819, %8803
  %8825 = fmul fast float %8820, %8820
  %8826 = fsub fast float %8821, %8825
  %8827 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8826)  ; FMax(a,b)
  %8828 = fdiv fast float 1.000000e+00, %8827
  %8829 = fmul fast float %8821, %8820
  %8830 = fsub fast float %8823, %8829
  %8831 = fsub fast float %8780, %8820
  %8832 = fmul fast float %8780, %8780
  %8833 = fsub fast float %8832, %8821
  %8834 = fmul fast float %8831, %8828
  %8835 = fmul fast float %8834, %8830
  %8836 = fsub fast float %8833, %8835
  %8837 = fmul fast float %8821, %8821
  %8838 = fsub fast float %8824, %8837
  %8839 = fmul fast float %8830, %8830
  %8840 = fmul fast float %8839, %8828
  %8841 = fsub fast float %8838, %8840
  %8842 = fdiv fast float %8836, %8841
  %8843 = fmul fast float %8830, %8842
  %8844 = fsub fast float %8831, %8843
  %8845 = fmul fast float %8844, %8828
  %8846 = fmul fast float %8845, %8820
  %8847 = fsub fast float 1.000000e+00, %8846
  %8848 = fmul fast float %8821, %8842
  %8849 = fsub fast float %8847, %8848
  %8850 = fmul fast float %8845, %8845
  %8851 = fmul fast float %8842, 4.000000e+00
  %8852 = fmul fast float %8851, %8849
  %8853 = fsub fast float %8850, %8852
  %8854 = call float @dx.op.unary.f32(i32 24, float %8853)  ; Sqrt(value)
  %8855 = fcmp fast oge float %8845, 0.000000e+00
  %8856 = fsub fast float -0.000000e+00, %8854
  %8857 = select i1 %8855, float %8856, float %8854
  %8858 = fsub fast float %8857, %8845
  %8859 = fdiv fast float %8858, %8842
  %8860 = fdiv fast float %8849, %8858
  %8861 = fmul fast float %8859, 5.000000e-01
  %8862 = fmul fast float %8860, 2.000000e+00
  %8863 = select i1 %8855, float %8861, float %8862
  %8864 = select i1 %8855, float %8862, float %8861
  %8865 = call float @dx.op.binary.f32(i32 35, float %8863, float %8864)  ; FMax(a,b)
  %8866 = call float @dx.op.binary.f32(i32 36, float %8863, float %8864)  ; FMin(a,b)
  %8867 = fcmp fast ogt float %8780, %8866
  br i1 %8867, label %8868, label %8878

; <label>:8868                                    ; preds = %8805
  %8869 = fsub fast float %8780, %8866
  %8870 = fsub fast float %8865, %8866
  %8871 = fmul fast float %8869, %8870
  %8872 = fmul fast float %8865, %8780
  %8873 = fadd fast float %8865, %8780
  %8874 = fmul fast float %8873, %8820
  %8875 = fadd fast float %8872, %8821
  %8876 = fsub fast float %8875, %8874
  %8877 = fdiv fast float %8876, %8871
  br label %8878

; <label>:8878                                    ; preds = %8868, %8805
  %8879 = phi float [ %8877, %8868 ], [ 0.000000e+00, %8805 ]
  %8880 = fcmp fast ogt float %8780, %8865
  %8881 = fsub fast float %8780, %8865
  br i1 %8880, label %8882, label %8892

; <label>:8882                                    ; preds = %8878
  %8883 = fsub fast float %8865, %8866
  %8884 = fmul fast float %8883, %8881
  %8885 = fmul fast float %8866, %8780
  %8886 = fadd fast float %8866, %8780
  %8887 = fmul fast float %8886, %8820
  %8888 = fsub fast float %8822, %8885
  %8889 = fadd fast float %8888, %8887
  %8890 = fdiv fast float %8889, %8884
  %8891 = fadd fast float %8890, %8879
  br label %8892

; <label>:8892                                    ; preds = %8882, %8878
  %8893 = phi float [ %8891, %8882 ], [ %8879, %8878 ]
  %8894 = fsub fast float %8780, %8866
  %8895 = fmul fast float %8894, %8881
  %8896 = fmul fast float %8866, %8865
  %8897 = fadd fast float %8866, %8865
  %8898 = fmul fast float %8897, %8820
  %8899 = fadd fast float %8896, %8821
  %8900 = fsub fast float %8899, %8898
  %8901 = fdiv fast float %8900, %8895
  %8902 = call float @dx.op.unary.f32(i32 7, float %8893)  ; Saturate(value)
  %8903 = fcmp fast oeq float %7571, 0.000000e+00
  %8904 = extractvalue %dx.types.CBufRet.f32 %8688, 0
  %8905 = fcmp fast oeq float %8904, 0.000000e+00
  %8906 = or i1 %8903, %8905
  %8907 = fmul fast float %8904, 2.000000e+00
  %8908 = fadd fast float %8689, %8690
  %8909 = fdiv fast float %8908, %8907
  %8910 = call float @dx.op.unary.f32(i32 7, float %8909)  ; Saturate(value)
  %8911 = fmul fast float %8910, 2.000000e+00
  %8912 = fsub fast float 3.000000e+00, %8911
  %8913 = fmul fast float %8910, %8910
  %8914 = fmul fast float %8913, %8912
  %8915 = select i1 %8906, float 1.000000e+00, float %8914
  %8916 = fmul fast float %8901, %7571
  %8917 = fadd fast float %8902, %8916
  %8918 = call float @dx.op.unary.f32(i32 7, float %8917)  ; Saturate(value)
  %8919 = fmul fast float %8915, %8918
  br label %8920

; <label>:8920                                    ; preds = %8892, %8772
  %8921 = phi float [ %8919, %8892 ], [ 0.000000e+00, %8772 ]
  %8922 = fsub fast float 1.000000e+00, %8921
  %8923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8642, float %8643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8924 = extractvalue %dx.types.ResRet.f32 %8923, 0
  %8925 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8926 = extractvalue %dx.types.CBufRet.i32 %8925, 2
  %8927 = icmp eq i32 %8926, 0
  br i1 %8927, label %8933, label %8928

; <label>:8928                                    ; preds = %8920
  %8929 = call float @dx.op.unary.f32(i32 7, float %8921)  ; Saturate(value)
  %8930 = fadd fast float %8924, -1.000000e+00
  %8931 = fmul fast float %8929, %8930
  %8932 = fadd fast float %8931, 1.000000e+00
  br label %8933

; <label>:8933                                    ; preds = %8928, %8920
  %8934 = phi float [ %8932, %8928 ], [ %8922, %8920 ]
  br i1 %8696, label %8935, label %8953

; <label>:8935                                    ; preds = %8933
  %8936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8937 = extractvalue %dx.types.CBufRet.f32 %8936, 1
  %8938 = fsub fast float %8773, %8937
  %8939 = call float @dx.op.unary.f32(i32 7, float %8938)  ; Saturate(value)
  %8940 = fsub fast float %8773, %8695
  %8941 = call float @dx.op.unary.f32(i32 7, float %8940)  ; Saturate(value)
  %8942 = fsub fast float %8939, %8941
  %8943 = fsub fast float %8775, %8941
  %8944 = fdiv fast float %8943, %8942
  %8945 = call float @dx.op.unary.f32(i32 7, float %8944)  ; Saturate(value)
  %8946 = fmul fast float %8945, 2.000000e+00
  %8947 = fsub fast float 3.000000e+00, %8946
  %8948 = fsub fast float %8924, %8934
  %8949 = fmul fast float %8945, %8945
  %8950 = fmul fast float %8949, %8948
  %8951 = fmul fast float %8950, %8947
  %8952 = fadd fast float %8951, %8934
  br label %8953

; <label>:8953                                    ; preds = %8935, %8933
  %8954 = phi float [ %8952, %8935 ], [ %8934, %8933 ]
  %8955 = call float @dx.op.binary.f32(i32 35, float %8924, float %8954)  ; FMax(a,b)
  %8956 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8957 = extractvalue %dx.types.CBufRet.i32 %8956, 2
  %8958 = and i32 %8957, 1
  %8959 = icmp eq i32 %8958, 0
  %8960 = fcmp fast une float %8955, 1.000000e+00
  %8961 = and i1 %8960, %8959
  br i1 %8961, label %8962, label %8981

; <label>:8962                                    ; preds = %8953
  %8963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8642, float %8643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8964 = extractvalue %dx.types.ResRet.f32 %8963, 0
  %8965 = extractvalue %dx.types.ResRet.f32 %8963, 1
  %8966 = extractvalue %dx.types.ResRet.f32 %8963, 2
  %8967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8968 = extractvalue %dx.types.CBufRet.f32 %8967, 1
  %8969 = fmul fast float %8968, %8964
  %8970 = fmul fast float %8968, %8965
  %8971 = fmul fast float %8968, %8966
  %8972 = fcmp fast ogt float %8924, 0x3FEFFF2E40000000
  %8973 = fsub fast float 1.000000e+00, %8955
  %8974 = fsub fast float 1.000000e+00, %8924
  %8975 = fdiv fast float %8973, %8974
  %8976 = call float @dx.op.unary.f32(i32 7, float %8975)  ; Saturate(value)
  %8977 = select i1 %8972, float 0.000000e+00, float %8976
  %8978 = fmul fast float %8969, %8977
  %8979 = fmul fast float %8970, %8977
  %8980 = fmul fast float %8971, %8977
  br label %8981

; <label>:8981                                    ; preds = %8962, %8953
  %8982 = phi float [ 0.000000e+00, %8953 ], [ %8978, %8962 ]
  %8983 = phi float [ 0.000000e+00, %8953 ], [ %8979, %8962 ]
  %8984 = phi float [ 0.000000e+00, %8953 ], [ %8980, %8962 ]
  %8985 = fmul fast float %8982, %7567
  %8986 = fmul fast float %8983, %7568
  %8987 = fmul fast float %8984, %7569
  %8988 = fmul fast float %8955, %8617
  %8989 = call float @dx.op.dot3.f32(i32 55, float %8955, float %8955, float %8955, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8990 = call float @dx.op.dot3.f32(i32 55, float %8985, float %8986, float %8987, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8991 = select i1 %249, float %8989, float %8955
  %8992 = select i1 %249, float 1.000000e+00, float %8955
  %8993 = select i1 %249, float %8990, float %8985
  %8994 = select i1 %249, float 0.000000e+00, float %8986
  %8995 = select i1 %249, float 0.000000e+00, float %8987
  %8996 = fmul fast float %8991, %8629
  %8997 = fmul fast float %8991, %8630
  %8998 = fmul fast float %8992, %8631
  %8999 = fadd fast float %8996, %8993
  %9000 = fadd fast float %8997, %8994
  %9001 = fadd fast float %8995, %8998
  %9002 = fmul fast float %8991, %8632
  %9003 = fmul fast float %8991, %8633
  %9004 = fmul fast float %8992, %8634
  br label %9005

; <label>:9005                                    ; preds = %8981, %8638, %8607, %7839
  %9006 = phi float [ %7844, %7839 ], [ %8629, %8607 ], [ %8999, %8981 ], [ %8629, %8638 ]
  %9007 = phi float [ %7845, %7839 ], [ %8630, %8607 ], [ %9000, %8981 ], [ %8630, %8638 ]
  %9008 = phi float [ %7846, %7839 ], [ %8631, %8607 ], [ %9001, %8981 ], [ %8631, %8638 ]
  %9009 = phi float [ %7847, %7839 ], [ %8632, %8607 ], [ %9002, %8981 ], [ %8632, %8638 ]
  %9010 = phi float [ %7848, %7839 ], [ %8633, %8607 ], [ %9003, %8981 ], [ %8633, %8638 ]
  %9011 = phi float [ %7849, %7839 ], [ %8634, %8607 ], [ %9004, %8981 ], [ %8634, %8638 ]
  %9012 = phi float [ %7850, %7839 ], [ %8617, %8607 ], [ %8988, %8981 ], [ %8617, %8638 ]
  %9013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9014 = extractvalue %dx.types.CBufRet.f32 %9013, 2
  %9015 = extractvalue %dx.types.CBufRet.f32 %9013, 3
  %9016 = fmul fast float %9014, %100
  %9017 = fmul fast float %9015, %101
  %9018 = call float @dx.op.unary.f32(i32 7, float %9016)  ; Saturate(value)
  %9019 = call float @dx.op.unary.f32(i32 7, float %9017)  ; Saturate(value)
  %9020 = select i1 %7581, i32 2, i32 0
  %9021 = or i32 %9020, 1
  %9022 = uitofp i32 %9021 to float
  %9023 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9018, float %9019, float %9022, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9024 = extractvalue %dx.types.ResRet.f32 %9023, 0
  %9025 = extractvalue %dx.types.ResRet.f32 %9023, 1
  %9026 = extractvalue %dx.types.ResRet.f32 %9023, 2
  %9027 = extractvalue %dx.types.ResRet.f32 %9023, 3
  %9028 = add nuw nsw i32 %9020, 2
  %9029 = uitofp i32 %9028 to float
  %9030 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9018, float %9019, float %9029, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9031 = extractvalue %dx.types.ResRet.f32 %9030, 0
  %9032 = extractvalue %dx.types.ResRet.f32 %9030, 1
  %9033 = extractvalue %dx.types.ResRet.f32 %9030, 2
  %9034 = extractvalue %dx.types.ResRet.f32 %9030, 3
  %9035 = call float @dx.op.binary.f32(i32 35, float %9025, float %9026)  ; FMax(a,b)
  %9036 = call float @dx.op.binary.f32(i32 35, float %9024, float %9035)  ; FMax(a,b)
  %9037 = call float @dx.op.binary.f32(i32 35, float %9036, float %9027)  ; FMax(a,b)
  %9038 = call float @dx.op.binary.f32(i32 36, float %9032, float %9033)  ; FMin(a,b)
  %9039 = call float @dx.op.binary.f32(i32 36, float %9031, float %9038)  ; FMin(a,b)
  %9040 = call float @dx.op.binary.f32(i32 36, float %9039, float %9034)  ; FMin(a,b)
  %9041 = fmul fast float %9037, 2.550000e+02
  %9042 = fadd fast float %9041, 0x3F70101020000000
  %9043 = fptoui float %9042 to i32
  %9044 = fmul fast float %9040, 2.550000e+02
  %9045 = fadd fast float %9044, 0x3F70101020000000
  %9046 = fptoui float %9045 to i32
  %9047 = icmp ult i32 %9043, %9046
  br i1 %9047, label %9048, label %9217

; <label>:9048                                    ; preds = %9005
  %9049 = fcmp fast ogt float %90, 9.843750e-01
  %9050 = fadd fast float %7843, -4.000000e+00
  %9051 = select i1 %9049, float -4.000000e+00, float %9050
  %9052 = call float @dx.op.binary.f32(i32 35, float %9051, float 0.000000e+00)  ; FMax(a,b)
  %9053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9054 = extractvalue %dx.types.CBufRet.f32 %9053, 0
  %9055 = fadd fast float %9054, %9052
  %9056 = extractvalue %dx.types.CBufRet.f32 %9053, 2
  %9057 = fmul fast float %9055, %9056
  %9058 = call float @dx.op.unary.f32(i32 23, float %9057)  ; Log(value)
  %9059 = extractvalue %dx.types.CBufRet.f32 %9053, 3
  %9060 = fmul fast float %9059, %9058
  %9061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9062 = extractvalue %dx.types.CBufRet.f32 %9061, 2
  %9063 = fmul fast float %9060, %9062
  %9064 = call float @dx.op.unary.f32(i32 7, float %9063)  ; Saturate(value)
  %9065 = uitofp i32 %9043 to float
  %9066 = uitofp i32 %9046 to float
  %9067 = fadd fast float %9065, 5.000000e-01
  %9068 = fadd fast float %9066, 5.000000e-01
  %9069 = fmul fast float %9062, %9067
  %9070 = fmul fast float %9062, %9068
  %9071 = fadd fast float %9069, 0x3F0FFB4800000000
  %9072 = fadd fast float %9070, 0xBF0FFB4800000000
  %9073 = call float @dx.op.binary.f32(i32 35, float %9064, float %9071)  ; FMax(a,b)
  %9074 = call float @dx.op.binary.f32(i32 36, float %9073, float %9072)  ; FMin(a,b)
  %9075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9076 = extractvalue %dx.types.CBufRet.f32 %9075, 1
  %9077 = extractvalue %dx.types.CBufRet.f32 %9075, 2
  %9078 = extractvalue %dx.types.CBufRet.f32 %9075, 0
  %9079 = select i1 %7581, float %9078, float 0.000000e+00
  %9080 = fmul fast float %9076, %9074
  %9081 = fadd fast float %9079, %9080
  %9082 = fadd fast float %9079, %9077
  %9083 = fsub fast float %9076, %9077
  %9084 = fadd fast float %9083, %9079
  %9085 = call float @dx.op.binary.f32(i32 35, float %9081, float %9082)  ; FMax(a,b)
  %9086 = call float @dx.op.binary.f32(i32 36, float %9085, float %9084)  ; FMin(a,b)
  %9087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9018, float %9019, float %9086, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9088 = extractvalue %dx.types.ResRet.f32 %9087, 0
  %9089 = extractvalue %dx.types.ResRet.f32 %9087, 1
  %9090 = extractvalue %dx.types.ResRet.f32 %9087, 2
  %9091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9092 = extractvalue %dx.types.CBufRet.i32 %9091, 0
  %9093 = extractvalue %dx.types.CBufRet.i32 %9091, 1
  %9094 = uitofp i32 %9092 to float
  %9095 = uitofp i32 %9093 to float
  %9096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9097 = extractvalue %dx.types.CBufRet.f32 %9096, 0
  %9098 = extractvalue %dx.types.CBufRet.f32 %9096, 1
  %9099 = fmul fast float %9094, %9018
  %9100 = fmul fast float %9095, %9019
  %9101 = fadd fast float %9099, -5.000000e-01
  %9102 = fadd fast float %9100, -5.000000e-01
  %9103 = call float @dx.op.unary.f32(i32 22, float %9101)  ; Frc(value)
  %9104 = call float @dx.op.unary.f32(i32 22, float %9102)  ; Frc(value)
  %9105 = fmul fast float %9103, %9103
  %9106 = fmul fast float %9105, %9103
  %9107 = fsub fast float 3.000000e+00, %9103
  %9108 = fmul fast float %9105, %9107
  %9109 = fmul fast float %9103, 3.000000e+00
  %9110 = fmul fast float %9106, 3.000000e+00
  %9111 = fmul fast float %9105, 6.000000e+00
  %9112 = fsub fast float %9110, %9111
  %9113 = fadd fast float %9112, 4.000000e+00
  %9114 = fmul fast float %9113, 0x3FC5555560000000
  %9115 = fmul fast float %9106, -3.000000e+00
  %9116 = fadd fast float %9105, %9103
  %9117 = fmul fast float %9116, 3.000000e+00
  %9118 = fadd fast float %9115, 1.000000e+00
  %9119 = fadd fast float %9118, %9117
  %9120 = fmul fast float %9106, 0x3FC5555560000000
  %9121 = fmul fast float %9104, %9104
  %9122 = fmul fast float %9121, %9104
  %9123 = fsub fast float 3.000000e+00, %9104
  %9124 = fmul fast float %9121, %9123
  %9125 = fmul fast float %9104, 3.000000e+00
  %9126 = fmul fast float %9122, 3.000000e+00
  %9127 = fmul fast float %9121, 6.000000e+00
  %9128 = fsub fast float %9126, %9127
  %9129 = fadd fast float %9128, 4.000000e+00
  %9130 = fmul fast float %9129, 0x3FC5555560000000
  %9131 = fmul fast float %9122, -3.000000e+00
  %9132 = fadd fast float %9121, %9104
  %9133 = fmul fast float %9132, 3.000000e+00
  %9134 = fadd fast float %9131, 1.000000e+00
  %9135 = fadd fast float %9134, %9133
  %9136 = fmul fast float %9122, 0x3FC5555560000000
  %9137 = fadd fast float %9103, 1.000000e+00
  %9138 = fsub fast float 1.000000e+00, %9109
  %9139 = fadd fast float %9138, %9108
  %9140 = fadd fast float %9139, %9113
  %9141 = fmul fast float %9140, 0x3FC5555560000000
  %9142 = fdiv fast float %9114, %9141
  %9143 = fsub fast float %9137, %9142
  %9144 = fsub fast float 1.000000e+00, %9103
  %9145 = fadd fast float %9119, %9106
  %9146 = fmul fast float %9145, 0x3FC5555560000000
  %9147 = fdiv fast float %9120, %9146
  %9148 = fadd fast float %9144, %9147
  %9149 = fadd fast float %9104, 1.000000e+00
  %9150 = fsub fast float 1.000000e+00, %9125
  %9151 = fadd fast float %9150, %9124
  %9152 = fadd fast float %9151, %9129
  %9153 = fmul fast float %9152, 0x3FC5555560000000
  %9154 = fdiv fast float %9130, %9153
  %9155 = fsub fast float %9149, %9154
  %9156 = fsub fast float 1.000000e+00, %9104
  %9157 = fadd fast float %9135, %9122
  %9158 = fmul fast float %9157, 0x3FC5555560000000
  %9159 = fdiv fast float %9136, %9158
  %9160 = fadd fast float %9159, %9156
  %9161 = fmul fast float %9143, %9097
  %9162 = fsub fast float %9018, %9161
  %9163 = fmul fast float %9148, %9097
  %9164 = fadd fast float %9163, %9018
  %9165 = fmul fast float %9160, %9098
  %9166 = fadd fast float %9165, %9019
  %9167 = fmul fast float %9155, %9098
  %9168 = fsub fast float %9019, %9167
  %9169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9162, float %9168, float %9086, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9170 = extractvalue %dx.types.ResRet.f32 %9169, 0
  %9171 = extractvalue %dx.types.ResRet.f32 %9169, 1
  %9172 = extractvalue %dx.types.ResRet.f32 %9169, 2
  %9173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9164, float %9168, float %9086, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9174 = extractvalue %dx.types.ResRet.f32 %9173, 0
  %9175 = extractvalue %dx.types.ResRet.f32 %9173, 1
  %9176 = extractvalue %dx.types.ResRet.f32 %9173, 2
  %9177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9162, float %9166, float %9086, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9178 = extractvalue %dx.types.ResRet.f32 %9177, 0
  %9179 = extractvalue %dx.types.ResRet.f32 %9177, 1
  %9180 = extractvalue %dx.types.ResRet.f32 %9177, 2
  %9181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9164, float %9166, float %9086, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9182 = extractvalue %dx.types.ResRet.f32 %9181, 0
  %9183 = extractvalue %dx.types.ResRet.f32 %9181, 1
  %9184 = extractvalue %dx.types.ResRet.f32 %9181, 2
  %9185 = fsub fast float %9178, %9170
  %9186 = fsub fast float %9179, %9171
  %9187 = fsub fast float %9180, %9172
  %9188 = fmul fast float %9185, %9158
  %9189 = fmul fast float %9186, %9158
  %9190 = fmul fast float %9187, %9158
  %9191 = fadd fast float %9188, %9170
  %9192 = fadd fast float %9189, %9171
  %9193 = fadd fast float %9190, %9172
  %9194 = fsub fast float %9182, %9174
  %9195 = fsub fast float %9183, %9175
  %9196 = fsub fast float %9184, %9176
  %9197 = fmul fast float %9194, %9158
  %9198 = fmul fast float %9195, %9158
  %9199 = fmul fast float %9196, %9158
  %9200 = fsub fast float %9174, %9191
  %9201 = fadd fast float %9200, %9197
  %9202 = fsub fast float %9175, %9192
  %9203 = fadd fast float %9202, %9198
  %9204 = fsub fast float %9176, %9193
  %9205 = fadd fast float %9204, %9199
  %9206 = fmul fast float %9201, %9146
  %9207 = fmul fast float %9203, %9146
  %9208 = fmul fast float %9205, %9146
  %9209 = fadd fast float %9206, %9191
  %9210 = fadd fast float %9207, %9192
  %9211 = fadd fast float %9208, %9193
  %9212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9213 = extractvalue %dx.types.CBufRet.f32 %9212, 1
  %9214 = fmul fast float %9209, %9213
  %9215 = fmul fast float %9210, %9213
  %9216 = fmul fast float %9211, %9213
  br label %9217

; <label>:9217                                    ; preds = %9048, %9005
  %9218 = phi float [ %9088, %9048 ], [ 1.000000e+00, %9005 ]
  %9219 = phi float [ %9089, %9048 ], [ 1.000000e+00, %9005 ]
  %9220 = phi float [ %9090, %9048 ], [ 1.000000e+00, %9005 ]
  %9221 = phi float [ %9214, %9048 ], [ 0.000000e+00, %9005 ]
  %9222 = phi float [ %9215, %9048 ], [ 0.000000e+00, %9005 ]
  %9223 = phi float [ %9216, %9048 ], [ 0.000000e+00, %9005 ]
  %9224 = fmul fast float %9221, %7567
  %9225 = fmul fast float %9222, %7568
  %9226 = fmul fast float %9223, %7569
  %9227 = fmul fast float %9218, %9012
  %9228 = call float @dx.op.dot3.f32(i32 55, float %9218, float %9219, float %9220, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9229 = call float @dx.op.dot3.f32(i32 55, float %9224, float %9225, float %9226, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9230 = select i1 %249, float %9228, float %9218
  %9231 = select i1 %249, float %9228, float %9219
  %9232 = select i1 %249, float 1.000000e+00, float %9220
  %9233 = select i1 %249, float %9229, float %9224
  %9234 = select i1 %249, float 0.000000e+00, float %9225
  %9235 = select i1 %249, float 0.000000e+00, float %9226
  %9236 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9237 = extractvalue %dx.types.CBufRet.i32 %9236, 3
  %9238 = and i32 %9237, 3
  %9239 = icmp ne i32 %9238, 0
  %9240 = and i32 %9237, 4
  %9241 = icmp ne i32 %9240, 0
  %9242 = and i1 %9239, %9241
  %9243 = and i1 %249, %9242
  br i1 %9243, label %9244, label %9250

; <label>:9244                                    ; preds = %9217
  %9245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9246 = extractvalue %dx.types.CBufRet.f32 %9245, 1
  %9247 = fadd fast float %9227, -1.000000e+00
  %9248 = fmul fast float %9246, %9247
  %9249 = fadd fast float %9248, 1.000000e+00
  br label %9250

; <label>:9250                                    ; preds = %9244, %9217
  %9251 = phi float [ %9249, %9244 ], [ %9227, %9217 ]
  %9252 = fadd fast float %9009, %9006
  %9253 = fmul fast float %9230, %9252
  %9254 = fadd fast float %9253, %9233
  %9255 = fadd fast float %9010, %9007
  %9256 = fmul fast float %9231, %9255
  %9257 = fadd fast float %9256, %9234
  %9258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9259 = extractvalue %dx.types.CBufRet.f32 %9258, 0
  br i1 %249, label %9260, label %9275

; <label>:9260                                    ; preds = %9250
  %9261 = fadd fast float %9254, %9257
  %9262 = fmul fast float %9259, %9261
  %9263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9264 = extractvalue %dx.types.CBufRet.f32 %9263, 3
  %9265 = extractvalue %dx.types.CBufRet.f32 %7551, 1
  %9266 = fsub fast float %7556, %7550
  %9267 = fadd fast float %9266, %7557
  %9268 = fsub fast float %9267, %9265
  %9269 = extractvalue %dx.types.CBufRet.f32 %7551, 2
  %9270 = fmul fast float %9268, %9269
  %9271 = call float @dx.op.unary.f32(i32 7, float %9270)  ; Saturate(value)
  %9272 = fsub fast float %9271, %9264
  %9273 = fmul fast float %9272, %9251
  %9274 = fadd fast float %9273, %9264
  br label %9301

; <label>:9275                                    ; preds = %9250
  %9276 = fadd fast float %9011, %9008
  %9277 = fmul fast float %9232, %9276
  %9278 = fadd fast float %9277, %9235
  %9279 = fmul fast float %9259, %9254
  %9280 = fmul fast float %9259, %9257
  %9281 = fmul fast float %9259, %9278
  %9282 = call float @dx.op.binary.f32(i32 35, float %9280, float %9281)  ; FMax(a,b)
  %9283 = call float @dx.op.binary.f32(i32 35, float %9279, float %9282)  ; FMax(a,b)
  %9284 = call float @dx.op.binary.f32(i32 35, float %7568, float %7569)  ; FMax(a,b)
  %9285 = call float @dx.op.binary.f32(i32 35, float %7567, float %9284)  ; FMax(a,b)
  %9286 = call float @dx.op.binary.f32(i32 35, float %9283, float %9285)  ; FMax(a,b)
  %9287 = fcmp fast ugt float %9286, 0x3F10000000000000
  br i1 %9287, label %9289, label %9288

; <label>:9288                                    ; preds = %9275
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9289

; <label>:9289                                    ; preds = %9288, %9275
  %9290 = add i32 %54, 356
  %9291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9290, i32 undef)  ; BufferLoad(srv,index,wot)
  %9292 = extractvalue %dx.types.ResRet.i32 %9291, 0
  %9293 = and i32 %9292, 32
  %9294 = icmp eq i32 %9293, 0
  br i1 %9294, label %9301, label %9295

; <label>:9295                                    ; preds = %9289
  %9296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9297 = extractvalue %dx.types.CBufRet.f32 %9296, 0
  %9298 = fmul fast float %9297, 0x3FE99999A0000000
  %9299 = fadd fast float %9297, %9279
  %9300 = fadd fast float %9298, %9281
  br label %9301

; <label>:9301                                    ; preds = %9295, %9289, %9260
  %9302 = phi float [ 1.000000e+00, %9260 ], [ %7568, %9295 ], [ %7568, %9289 ]
  %9303 = phi float [ 1.000000e+00, %9260 ], [ %7569, %9295 ], [ %7569, %9289 ]
  %9304 = phi float [ %9262, %9260 ], [ %9299, %9295 ], [ %9279, %9289 ]
  %9305 = phi float [ %9274, %9260 ], [ %9280, %9295 ], [ %9280, %9289 ]
  %9306 = phi float [ 1.000000e+00, %9260 ], [ %9300, %9295 ], [ %9281, %9289 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9307 = call float @dx.op.binary.f32(i32 36, float %9304, float 3.225500e+04)  ; FMin(a,b)
  %9308 = call float @dx.op.binary.f32(i32 36, float %9305, float 3.225500e+04)  ; FMin(a,b)
  %9309 = call float @dx.op.binary.f32(i32 36, float %9306, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9307)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9308)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9309)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9310 = call float @dx.op.binary.f32(i32 36, float %7567, float 3.225500e+04)  ; FMin(a,b)
  %9311 = call float @dx.op.binary.f32(i32 36, float %9302, float 3.225500e+04)  ; FMin(a,b)
  %9312 = call float @dx.op.binary.f32(i32 36, float %9303, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9310)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9311)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9312)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!59 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!62 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!63 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!64 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!65 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!66 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!67 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!68 = !{[46 x i32] [i32 44, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !93}
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
!89 = !{!90, !91}
!90 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!91 = !{i32 1, !"SV_Target", i8 9, i8 16, !92, i8 0, i32 1, i8 4, i32 1, i8 0, !74}
!92 = !{i32 1}
!93 = !{i32 0, i64 16}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = !{!100, !100, i64 0}
!100 = !{!"int", !101, i64 0}
!101 = !{!"omnipotent char", !102, i64 0}
!102 = !{!"Simple C/C++ TBAA"}
!103 = !{!104, !106, !108, !110}
!104 = distinct !{!104, !105, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!105 = distinct !{!105, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!106 = distinct !{!106, !107, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!107 = distinct !{!107, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!108 = distinct !{!108, !109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!109 = distinct !{!109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!110 = distinct !{!110, !111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!111 = distinct !{!111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
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
!124 = !{!"float", !101, i64 0}
!125 = !{!126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!126 = distinct !{!126, !127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!127 = distinct !{!127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!128 = distinct !{!128, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!129 = distinct !{!129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!130 = distinct !{!130, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!131 = distinct !{!131, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!132 = distinct !{!132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!133 = distinct !{!133, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!134 = distinct !{!134, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!135 = distinct !{!135, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!136 = distinct !{!136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!137 = distinct !{!137, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!138 = distinct !{!138, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
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

