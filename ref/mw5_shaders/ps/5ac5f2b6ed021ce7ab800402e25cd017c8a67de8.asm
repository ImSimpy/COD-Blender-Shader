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
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x z 
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
; shader hash: 2ef01dce112add99b4ad718c0bcbc82f
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42 }
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
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = alloca [12 x float], align 4
  %92 = alloca [12 x float], align 4
  %93 = alloca [3 x float], align 4
  %94 = alloca [3 x float], align 4
  %95 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %96 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = fmul fast float %98, %87
  %100 = fmul fast float %98, %88
  %101 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %102 = bitcast float %101 to i32
  %103 = ashr i32 %102, 1
  %104 = sub nsw i32 1597250115, %103
  %105 = bitcast i32 %104 to float
  %106 = fmul fast float %105, %78
  %107 = fmul fast float %105, %79
  %108 = fmul fast float %105, %80
  %109 = fmul fast float %79, %76
  %110 = fmul fast float %80, %75
  %111 = fsub fast float %109, %110
  %112 = fmul fast float %80, %74
  %113 = fmul fast float %78, %76
  %114 = fsub fast float %112, %113
  %115 = fmul fast float %78, %75
  %116 = fmul fast float %79, %74
  %117 = fsub fast float %115, %116
  %118 = fmul fast float %111, %77
  %119 = fmul fast float %114, %77
  %120 = fmul fast float %117, %77
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 3
  %124 = fmul fast float %99, 2.000000e+00
  %125 = fmul fast float %124, %122
  %126 = fmul fast float %100, 2.000000e+00
  %127 = fmul fast float %126, %123
  %128 = fsub fast float 1.000000e+00, %125
  %129 = fsub fast float 1.000000e+00, %127
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fmul fast float %128, %131
  %135 = fmul fast float %128, %132
  %136 = fmul fast float %128, %133
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = fmul fast float %129, %138
  %142 = fmul fast float %129, %139
  %143 = fmul fast float %129, %140
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %148 = fadd fast float %141, %145
  %149 = fadd fast float %148, %134
  %150 = fadd fast float %142, %146
  %151 = fadd fast float %150, %135
  %152 = fadd fast float %143, %147
  %153 = fadd fast float %152, %136
  %154 = fmul fast float %149, %90
  %155 = fmul fast float %151, %90
  %156 = fmul fast float %153, %90
  %157 = fmul fast float %99, 5.000000e-01
  %158 = fmul fast float %100, 5.000000e-01
  %159 = fptosi float %157 to i32
  %160 = fptosi float %158 to i32
  %161 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %159, i32 %160, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = lshr i32 %162, 18
  %164 = uitofp i32 %163 to float
  %165 = fmul fast float %164, 0x3F4C00EBA0000000
  %166 = call float @dx.op.unary.f32(i32 21, float %165)  ; Exp(value)
  %167 = fadd fast float %166, -1.000000e+00
  %168 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %169 = extractvalue %dx.types.Dimensions %168, 0
  %170 = sitofp i32 %169 to float
  %171 = extractvalue %dx.types.Dimensions %168, 1
  %172 = sitofp i32 %171 to float
  %173 = fcmp fast oge float %157, %170
  %174 = fcmp fast oge float %158, %172
  %175 = or i1 %173, %174
  %176 = select i1 %175, float 0x4197782600000000, float %167
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 3
  %180 = fmul fast float %178, %99
  %181 = fmul fast float %179, %100
  %182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %183 = extractvalue %dx.types.ResRet.i32 %182, 0
  %184 = and i32 %183, 114688
  %185 = icmp ne i32 %184, 0
  %186 = select i1 %185, float %180, float 0.000000e+00
  %187 = select i1 %185, float %181, float 0.000000e+00
  %188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %49, float %186, float %187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = fmul fast float %189, 2.550000e+02
  %191 = fptoui float %190 to i32
  %192 = select i1 %185, i32 %191, i32 0
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.i32 %194, 3
  %196 = and i32 %195, 3
  %197 = icmp ne i32 %196, 0
  %198 = and i32 %195, 4
  %199 = icmp ne i32 %198, 0
  %200 = and i1 %197, %199
  br i1 %200, label %201, label %212

; <label>:201                                     ; preds = %0
  %202 = extractvalue %dx.types.CBufRet.f32 %193, 3
  %203 = fmul fast float %202, %100
  %204 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %205 = fmul fast float %204, %99
  %206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %205, float %203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = fsub fast float 1.000000e+00, %207
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 0
  %211 = fcmp fast olt float %208, %210
  br label %215

; <label>:212                                     ; preds = %0
  %213 = icmp eq i32 %198, 0
  %214 = and i1 %197, %213
  br label %215

; <label>:215                                     ; preds = %212, %201
  %216 = phi i1 [ %211, %201 ], [ %214, %212 ]
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %219 = fmul fast float %218, 0x3FE3C6EF40000000
  %220 = frem fast float %99, 2.560000e+02
  %221 = frem fast float %100, 2.560000e+02
  %222 = fptoui float %220 to i32
  %223 = fptoui float %221 to i32
  %224 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %222, i32 %223, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %225 = extractvalue %dx.types.ResRet.f32 %224, 0
  %226 = fadd fast float %225, %219
  %227 = call float @dx.op.unary.f32(i32 22, float %226)  ; Frc(value)
  %228 = add i32 %54, 156
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = shl i32 %230, 4
  %232 = and i32 %231, 32752
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = lshr i32 %230, 7
  %235 = and i32 %234, 32752
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = lshr i32 %230, 22
  %238 = shl nuw nsw i32 %237, 5
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = add i32 %54, 216
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = and i32 %242, 255
  %244 = uitofp i32 %243 to float
  %245 = fmul fast float %244, 0x3F70101020000000
  %246 = lshr i32 %242, 8
  %247 = and i32 %246, 255
  %248 = uitofp i32 %247 to float
  %249 = fmul fast float %248, 0x3F70101020000000
  %250 = lshr i32 %242, 16
  %251 = and i32 %250, 255
  %252 = uitofp i32 %251 to float
  %253 = fmul fast float %252, 0x3F70101020000000
  %254 = add i32 %54, 36
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = and i32 %256, 65535
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = lshr i32 %256, 16
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = add i32 %54, 288
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 65535
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %263, 16
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = fmul fast float %265, 0x3F50624DE0000000
  %269 = fmul fast float %267, 0x3F50624DE0000000
  %270 = add i32 %54, 172
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = shl i32 %272, 4
  %274 = and i32 %273, 32752
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = lshr i32 %272, 7
  %277 = and i32 %276, 32752
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %272, 22
  %280 = shl nuw nsw i32 %279, 5
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = add i32 %54, 232
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 255
  %286 = uitofp i32 %285 to float
  %287 = fmul fast float %286, 0x3F70101020000000
  %288 = lshr i32 %284, 8
  %289 = and i32 %288, 255
  %290 = uitofp i32 %289 to float
  %291 = fmul fast float %290, 0x3F70101020000000
  %292 = lshr i32 %284, 16
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = add i32 %54, 52
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = and i32 %298, 65535
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %298, 16
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = add i32 %54, 304
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 65535
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %305, 16
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = fmul fast float %307, 0x3F50624DE0000000
  %311 = fmul fast float %309, 0x3F50624DE0000000
  %312 = add i32 %54, 188
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = shl i32 %314, 4
  %316 = and i32 %315, 32752
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %314, 7
  %319 = and i32 %318, 32752
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %314, 22
  %322 = shl nuw nsw i32 %321, 5
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = add i32 %54, 248
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = lshr i32 %326, 8
  %331 = and i32 %330, 255
  %332 = uitofp i32 %331 to float
  %333 = fmul fast float %332, 0x3F70101020000000
  %334 = lshr i32 %326, 16
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = add i32 %54, 68
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = and i32 %340, 65535
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %340, 16
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = add i32 %54, 320
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = fmul fast float %349, 0x3F50624DE0000000
  %353 = fmul fast float %351, 0x3F50624DE0000000
  %354 = add i32 %54, 204
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = shl i32 %356, 4
  %358 = and i32 %357, 32752
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %356, 7
  %361 = and i32 %360, 32752
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = lshr i32 %356, 22
  %364 = shl nuw nsw i32 %363, 5
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = add i32 %54, 264
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F70101020000000
  %372 = lshr i32 %368, 8
  %373 = and i32 %372, 255
  %374 = uitofp i32 %373 to float
  %375 = fmul fast float %374, 0x3F70101020000000
  %376 = lshr i32 %368, 16
  %377 = and i32 %376, 255
  %378 = uitofp i32 %377 to float
  %379 = fmul fast float %378, 0x3F70101020000000
  %380 = add i32 %54, 84
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = and i32 %382, 65535
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = lshr i32 %382, 16
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = add i32 %54, 336
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 65535
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = lshr i32 %389, 16
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = fmul fast float %391, 0x3F50624DE0000000
  %395 = fmul fast float %393, 0x3F50624DE0000000
  %396 = add i32 %54, 348
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 32
  %400 = icmp eq i32 %399, 0
  %401 = and i32 %398, 64
  %402 = icmp eq i32 %401, 0
  %403 = and i32 %398, 128
  %404 = icmp eq i32 %403, 0
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 2
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %424, label %409

; <label>:409                                     ; preds = %215
  %410 = add i32 %54, 488
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = add i32 %412, 0
  %414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %415 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %414, %dx.types.Handle %96, float %81, float %82, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = extractvalue %dx.types.ResRet.f32 %415, 1
  %418 = extractvalue %dx.types.ResRet.f32 %415, 2
  %419 = extractvalue %dx.types.ResRet.f32 %415, 3
  %420 = fmul fast float %419, %83
  %421 = fmul fast float %416, %84
  %422 = fmul fast float %417, %85
  %423 = fmul fast float %418, %86
  br label %424

; <label>:424                                     ; preds = %409, %215
  %425 = phi float [ %86, %215 ], [ %423, %409 ]
  %426 = phi float [ %85, %215 ], [ %422, %409 ]
  %427 = phi float [ %84, %215 ], [ %421, %409 ]
  %428 = phi float [ %83, %215 ], [ %420, %409 ]
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 2
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %452, label %433

; <label>:433                                     ; preds = %424
  %434 = add i32 %54, 44
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = and i32 %436, 1
  %438 = icmp ne i32 %437, 0
  %439 = select i1 %438, float %427, float 1.000000e+00
  %440 = add i32 %54, 60
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 1
  %444 = icmp ne i32 %443, 0
  %445 = select i1 %444, float %426, float 1.000000e+00
  %446 = add i32 %54, 76
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 1
  %450 = icmp ne i32 %449, 0
  %451 = select i1 %450, float %425, float 1.000000e+00
  br label %452

; <label>:452                                     ; preds = %433, %424
  %453 = phi float [ %425, %424 ], [ %451, %433 ]
  %454 = phi float [ %426, %424 ], [ %445, %433 ]
  %455 = phi float [ %427, %424 ], [ %439, %433 ]
  %456 = lshr i32 %430, 20
  %457 = and i32 %456, 3
  %458 = add nuw nsw i32 %457, 1
  %459 = add i32 %54, 24
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = add i32 %54, 28
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = or i32 %464, %461
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %1227, label %467

; <label>:467                                     ; preds = %452
  %468 = and i32 %461, 262144
  %469 = icmp ne i32 %468, 0
  %470 = select i1 %469, float %56, float 1.000000e+00
  %471 = select i1 %469, float %57, float 0.000000e+00
  %472 = select i1 %469, float %58, float 0.000000e+00
  %473 = select i1 %469, float %59, float 1.000000e+00
  %474 = select i1 %469, float %60, float %81
  %475 = select i1 %469, float %61, float %82
  %476 = add i32 %54, 284
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = lshr i32 %478, 16
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = fmul fast float %480, 0x3F50624DE0000000
  %482 = add i32 %54, 88
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = lshr i32 %484, 16
  %486 = and i32 %485, 255
  %487 = lshr i32 %484, 24
  %488 = add i32 %54, 292
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = and i32 %490, 65535
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = lshr i32 %490, 16
  %494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %493)  ; LegacyF16ToF32(value)
  %495 = add i32 %54, 32
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = lshr i32 %497, 22
  %499 = shl nuw nsw i32 %498, 5
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = shl i32 %497, 4
  %502 = and i32 %501, 32752
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = lshr i32 %497, 7
  %505 = and i32 %504, 32752
  %506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %505)  ; LegacyF16ToF32(value)
  %507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %508 = extractvalue %dx.types.CBufRet.f32 %507, 3
  %509 = fmul fast float %508, 1.000000e+03
  %510 = fmul fast float %268, %509
  %511 = call float @dx.op.unary.f32(i32 22, float %510)  ; Frc(value)
  %512 = fadd fast float %511, %258
  %513 = fmul fast float %269, %509
  %514 = call float @dx.op.unary.f32(i32 22, float %513)  ; Frc(value)
  %515 = fadd fast float %514, %260
  %516 = fmul fast float %481, %509
  %517 = call float @dx.op.unary.f32(i32 22, float %516)  ; Frc(value)
  %518 = fmul fast float %517, 0x401921FB60000000
  %519 = fadd fast float %518, %500
  %520 = call float @dx.op.unary.f32(i32 13, float %519)  ; Sin(value)
  %521 = call float @dx.op.unary.f32(i32 12, float %519)  ; Cos(value)
  %522 = fsub fast float -0.000000e+00, %520
  %523 = fadd fast float %474, -5.000000e-01
  %524 = fadd fast float %475, -5.000000e-01
  %525 = fmul fast float %492, %523
  %526 = fmul fast float %494, %524
  %527 = fadd fast float %525, 5.000000e-01
  %528 = fadd fast float %526, 5.000000e-01
  %529 = fmul fast float %503, %527
  %530 = fmul fast float %506, %528
  %531 = fmul fast float %521, %529
  %532 = call float @dx.op.tertiary.f32(i32 46, float %522, float %530, float %531)  ; FMad(a,b,c)
  %533 = fmul fast float %520, %529
  %534 = call float @dx.op.tertiary.f32(i32 46, float %521, float %530, float %533)  ; FMad(a,b,c)
  %535 = fadd fast float %512, %532
  %536 = fadd fast float %515, %534
  %537 = icmp ugt i32 %486, 1
  %538 = icmp ugt i32 %484, 33554431
  %539 = or i1 %538, %537
  br i1 %539, label %540, label %565

; <label>:540                                     ; preds = %467
  %541 = add i32 %54, 228
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = lshr i32 %543, 16
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = fmul fast float %508, %545
  %547 = call float @dx.op.unary.f32(i32 22, float %546)  ; Frc(value)
  %548 = mul nuw nsw i32 %486, %487
  %549 = uitofp i32 %548 to float
  %550 = fmul fast float %547, %549
  %551 = call float @dx.op.unary.f32(i32 27, float %550)  ; Round_ni(value)
  %552 = fptoui float %551 to i32
  %553 = urem i32 %552, %486
  %554 = udiv i32 %552, %487
  %555 = call float @dx.op.unary.f32(i32 22, float %535)  ; Frc(value)
  %556 = call float @dx.op.unary.f32(i32 22, float %536)  ; Frc(value)
  %557 = uitofp i32 %553 to float
  %558 = uitofp i32 %554 to float
  %559 = fadd fast float %555, %557
  %560 = fadd fast float %556, %558
  %561 = uitofp i32 %486 to float
  %562 = uitofp i32 %487 to float
  %563 = fdiv fast float %559, %561
  %564 = fdiv fast float %560, %562
  br label %565

; <label>:565                                     ; preds = %540, %467
  %566 = phi float [ %563, %540 ], [ %535, %467 ]
  %567 = phi float [ %564, %540 ], [ %536, %467 ]
  %568 = and i32 %461, 16777216
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %679, label %570

; <label>:570                                     ; preds = %565
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 0
  %573 = extractvalue %dx.types.CBufRet.f32 %571, 1
  %574 = extractvalue %dx.types.CBufRet.f32 %571, 2
  %575 = fadd fast float %572, %154
  %576 = fadd fast float %573, %155
  %577 = fadd fast float %574, %156
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 0
  %580 = call float @dx.op.unary.f32(i32 7, float %579)  ; Saturate(value)
  %581 = icmp eq i32 %55, 65535
  br i1 %581, label %676, label %582

; <label>:582                                     ; preds = %570
  %583 = lshr i32 %55, 1
  %584 = shl i32 %583, 2
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = and i32 %55, 1
  %588 = icmp ne i32 %587, 0
  %589 = lshr i32 %586, 16
  %590 = and i32 %586, 65535
  %591 = select i1 %588, i32 %589, i32 %590
  %592 = icmp eq i32 %591, 65535
  br i1 %592, label %672, label %593

; <label>:593                                     ; preds = %582
  %594 = mul nuw nsw i32 %591, 40
  %595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = extractvalue %dx.types.ResRet.f32 %595, 1
  %598 = extractvalue %dx.types.ResRet.f32 %595, 2
  %599 = add nuw nsw i32 %594, 12
  %600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = extractvalue %dx.types.ResRet.f32 %600, 1
  %603 = extractvalue %dx.types.ResRet.f32 %600, 2
  %604 = add nuw nsw i32 %594, 24
  %605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = extractvalue %dx.types.ResRet.f32 %605, 1
  %608 = extractvalue %dx.types.ResRet.f32 %605, 2
  %609 = add nuw nsw i32 %594, 36
  %610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = fsub fast float %575, %596
  %613 = fsub fast float %576, %597
  %614 = fsub fast float %577, %598
  %615 = fmul fast float %611, %612
  %616 = fmul fast float %611, %613
  %617 = fmul fast float %611, %614
  %618 = call float @dx.op.unary.f32(i32 27, float %615)  ; Round_ni(value)
  %619 = call float @dx.op.unary.f32(i32 27, float %616)  ; Round_ni(value)
  %620 = call float @dx.op.unary.f32(i32 27, float %617)  ; Round_ni(value)
  %621 = fadd fast float %618, 5.000000e-01
  %622 = fadd fast float %619, 5.000000e-01
  %623 = fadd fast float %620, 5.000000e-01
  %624 = fmul fast float %621, %601
  %625 = fmul fast float %622, %602
  %626 = fmul fast float %623, %603
  %627 = shl i32 %55, 2
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = add i32 %629, 0
  %631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %630, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %632 = call float @dx.op.unary.f32(i32 22, float %624)  ; Frc(value)
  %633 = call float @dx.op.unary.f32(i32 22, float %625)  ; Frc(value)
  %634 = call float @dx.op.unary.f32(i32 22, float %626)  ; Frc(value)
  %635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %631, %dx.types.Handle %49, float %632, float %633, float %634, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %636 = extractvalue %dx.types.ResRet.f32 %635, 0
  %637 = extractvalue %dx.types.ResRet.f32 %635, 1
  %638 = extractvalue %dx.types.ResRet.f32 %635, 2
  %639 = fmul fast float %636, 1.023000e+03
  %640 = fmul fast float %637, 1.023000e+03
  %641 = fmul fast float %638, 1.023000e+03
  %642 = fadd fast float %639, 5.000000e-01
  %643 = fadd fast float %640, 5.000000e-01
  %644 = fadd fast float %641, 5.000000e-01
  %645 = call float @dx.op.unary.f32(i32 27, float %642)  ; Round_ni(value)
  %646 = call float @dx.op.unary.f32(i32 27, float %643)  ; Round_ni(value)
  %647 = call float @dx.op.unary.f32(i32 27, float %644)  ; Round_ni(value)
  %648 = fsub fast float %615, %618
  %649 = fsub fast float %616, %619
  %650 = fsub fast float %617, %620
  %651 = fmul fast float %648, 7.500000e-01
  %652 = fmul fast float %649, 7.500000e-01
  %653 = fmul fast float %650, 7.500000e-01
  %654 = fadd fast float %618, 1.250000e-01
  %655 = fadd fast float %654, %651
  %656 = fadd fast float %655, %645
  %657 = fadd fast float %619, 1.250000e-01
  %658 = fadd fast float %657, %652
  %659 = fadd fast float %658, %646
  %660 = fadd fast float %620, 1.250000e-01
  %661 = fadd fast float %660, %653
  %662 = fadd fast float %661, %647
  %663 = fmul fast float %656, %606
  %664 = fmul fast float %659, %607
  %665 = fmul fast float %662, %608
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = add i32 %667, 0
  %669 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %668, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %669, %dx.types.Handle %47, float %663, float %664, float %665, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  br label %672

; <label>:672                                     ; preds = %593, %582
  %673 = phi float [ %671, %593 ], [ -1.000000e+00, %582 ]
  %674 = fadd fast float %673, %580
  %675 = call float @dx.op.unary.f32(i32 7, float %674)  ; Saturate(value)
  br label %676

; <label>:676                                     ; preds = %672, %570
  %677 = phi float [ %675, %672 ], [ %580, %570 ]
  %678 = fmul fast float %677, %428
  br label %679

; <label>:679                                     ; preds = %676, %565
  %680 = phi float [ %678, %676 ], [ %428, %565 ]
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = and i32 %682, 256
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %731, label %685

; <label>:685                                     ; preds = %679
  %686 = add i32 %54, 424
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %686, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = add i32 %688, 0
  %690 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %689, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %691 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %690, %dx.types.Handle %96, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %692 = extractvalue %dx.types.ResRet.f32 %691, 0
  %693 = add i32 %54, 100
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = shl i32 %695, 4
  %697 = and i32 %696, 32752
  %698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %697)  ; LegacyF16ToF32(value)
  %699 = lshr i32 %695, 7
  %700 = and i32 %699, 32752
  %701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %700)  ; LegacyF16ToF32(value)
  %702 = fsub fast float 1.000000e+00, %680
  %703 = call float @dx.op.binary.f32(i32 35, float %702, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %704 = bitcast float %680 to i32
  %705 = sitofp i32 %704 to float
  %706 = fadd fast float %705, 0xC1CFBF8940000000
  %707 = fmul fast float %701, %706
  %708 = fadd fast float %707, 0x41CFBF8940000000
  %709 = fptosi float %708 to i32
  %710 = bitcast i32 %709 to float
  %711 = bitcast float %703 to i32
  %712 = sitofp i32 %711 to float
  %713 = fadd fast float %712, 0xC1CFBF8940000000
  %714 = fmul fast float %713, %701
  %715 = fadd fast float %714, 0x41CFBF8940000000
  %716 = fptosi float %715 to i32
  %717 = bitcast i32 %716 to float
  %718 = fmul fast float %710, %698
  %719 = fmul fast float %717, %698
  %720 = fsub fast float %703, %718
  %721 = fadd fast float %719, %703
  %722 = call float @dx.op.unary.f32(i32 7, float %720)  ; Saturate(value)
  %723 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %724 = fsub fast float %692, %722
  %725 = fsub fast float %723, %722
  %726 = bitcast float %725 to i32
  %727 = sub nsw i32 2129859010, %726
  %728 = bitcast i32 %727 to float
  %729 = fmul fast float %728, %724
  %730 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  br label %731

; <label>:731                                     ; preds = %685, %679
  %732 = phi float [ %730, %685 ], [ %680, %679 ]
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = and i32 %734, 128
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %753, label %737

; <label>:737                                     ; preds = %731
  %738 = add i32 %54, 408
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %738, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = add i32 %740, 0
  %742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %743 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %742, %dx.types.Handle %96, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %744 = extractvalue %dx.types.ResRet.f32 %743, 0
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 524288
  %748 = icmp ne i32 %747, 0
  %749 = fcmp fast ogt float %744, 0x3FE0101020000000
  %750 = select i1 %749, float 1.000000e+00, float 0.000000e+00
  %751 = select i1 %748, float %750, float %744
  %752 = fmul fast float %751, %732
  br label %753

; <label>:753                                     ; preds = %737, %731
  %754 = phi float [ %752, %737 ], [ %732, %731 ]
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = and i32 %756, 16
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %957, label %759

; <label>:759                                     ; preds = %753
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = add i32 %54, 360
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = add i32 %764, 0
  %766 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %765, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %767 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %766, %dx.types.Handle %95, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %768 = extractvalue %dx.types.ResRet.f32 %767, 0
  %769 = extractvalue %dx.types.ResRet.f32 %767, 1
  %770 = extractvalue %dx.types.ResRet.f32 %767, 2
  %771 = extractvalue %dx.types.ResRet.f32 %767, 3
  %772 = and i32 %761, 255
  %773 = uitofp i32 %772 to float
  %774 = lshr i32 %761, 8
  %775 = and i32 %774, 255
  %776 = uitofp i32 %775 to float
  %777 = fmul fast float %771, %773
  %778 = fadd fast float %777, %776
  %779 = fmul fast float %778, 0x3F70101000000000
  %780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.i32 %780, 0
  %782 = and i32 %781, 512
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %792, label %784

; <label>:784                                     ; preds = %759
  %785 = add i32 %54, 440
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = add i32 %787, 0
  %789 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %788, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %790 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %789, %dx.types.Handle %96, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %791 = extractvalue %dx.types.ResRet.f32 %790, 0
  br label %792

; <label>:792                                     ; preds = %784, %759
  %793 = phi float [ %791, %784 ], [ 1.000000e+00, %759 ]
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = and i32 %795, 33554432
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %904, label %798

; <label>:798                                     ; preds = %792
  %799 = add i32 %54, 224
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %799, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = and i32 %801, 65535
  %803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %802)  ; LegacyF16ToF32(value)
  %804 = lshr i32 %801, 16
  %805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %804)  ; LegacyF16ToF32(value)
  %806 = add i32 %54, 228
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = and i32 %808, 65535
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = lshr i32 %812, 24
  %814 = uitofp i32 %813 to float
  %815 = fmul fast float %814, 0x3F70101020000000
  %816 = and i32 %812, 255
  %817 = uitofp i32 %816 to float
  %818 = fmul fast float %817, 0x3F70101020000000
  %819 = lshr i32 %812, 8
  %820 = and i32 %819, 255
  %821 = uitofp i32 %820 to float
  %822 = fmul fast float %821, 0x3F70101020000000
  %823 = lshr i32 %812, 16
  %824 = and i32 %823, 255
  %825 = uitofp i32 %824 to float
  %826 = fmul fast float %825, 0x3F70101020000000
  %827 = add i32 %54, 220
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = lshr i32 %829, 24
  %831 = uitofp i32 %830 to float
  %832 = fmul fast float %831, 0x3F70101020000000
  %833 = and i32 %829, 255
  %834 = uitofp i32 %833 to float
  %835 = fmul fast float %834, 0x3F70101020000000
  %836 = lshr i32 %829, 8
  %837 = and i32 %836, 255
  %838 = uitofp i32 %837 to float
  %839 = fmul fast float %838, 0x3F70101020000000
  %840 = lshr i32 %829, 16
  %841 = and i32 %840, 255
  %842 = uitofp i32 %841 to float
  %843 = fmul fast float %842, 0x3F70101020000000
  %844 = bitcast float %768 to i32
  %845 = ashr i32 %844, 1
  %846 = sub nsw i32 1597463174, %845
  %847 = bitcast i32 %846 to float
  %848 = fmul fast float %768, 5.000000e-01
  %849 = fmul fast float %847, %847
  %850 = fmul fast float %849, %848
  %851 = fsub fast float 1.500000e+00, %850
  %852 = fmul fast float %847, %768
  %853 = fmul fast float %852, %851
  %854 = bitcast float %769 to i32
  %855 = ashr i32 %854, 1
  %856 = sub nsw i32 1597463174, %855
  %857 = bitcast i32 %856 to float
  %858 = fmul fast float %769, 5.000000e-01
  %859 = fmul fast float %857, %857
  %860 = fmul fast float %859, %858
  %861 = fsub fast float 1.500000e+00, %860
  %862 = fmul fast float %857, %769
  %863 = fmul fast float %862, %861
  %864 = bitcast float %770 to i32
  %865 = ashr i32 %864, 1
  %866 = sub nsw i32 1597463174, %865
  %867 = bitcast i32 %866 to float
  %868 = fmul fast float %770, 5.000000e-01
  %869 = fmul fast float %867, %867
  %870 = fmul fast float %869, %868
  %871 = fsub fast float 1.500000e+00, %870
  %872 = fmul fast float %867, %770
  %873 = fmul fast float %872, %871
  %874 = fsub fast float %853, %835
  %875 = fsub fast float %863, %839
  %876 = fsub fast float %873, %843
  %877 = fmul fast float %874, %803
  %878 = fmul fast float %875, %805
  %879 = fmul fast float %876, %810
  %880 = fadd fast float %877, %818
  %881 = fadd fast float %878, %822
  %882 = fadd fast float %879, %826
  %883 = call float @dx.op.unary.f32(i32 7, float %880)  ; Saturate(value)
  %884 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %885 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %886 = fmul fast float %883, %883
  %887 = fmul fast float %884, %884
  %888 = fmul fast float %885, %885
  %889 = fsub fast float %886, %768
  %890 = fsub fast float %887, %769
  %891 = fsub fast float %888, %770
  %892 = fmul fast float %889, %793
  %893 = fmul fast float %890, %793
  %894 = fmul fast float %891, %793
  %895 = fadd fast float %892, %768
  %896 = fadd fast float %893, %769
  %897 = fadd fast float %894, %770
  %898 = fadd fast float %815, %779
  %899 = fsub fast float %898, %832
  %900 = call float @dx.op.unary.f32(i32 7, float %899)  ; Saturate(value)
  %901 = fsub fast float %900, %779
  %902 = fmul fast float %901, %793
  %903 = fadd fast float %902, %779
  br label %957

; <label>:904                                     ; preds = %792
  %905 = and i32 %795, 134217728
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %941, label %907

; <label>:907                                     ; preds = %904
  %908 = call float @dx.op.unary.f32(i32 24, float %245)  ; Sqrt(value)
  %909 = call float @dx.op.unary.f32(i32 24, float %249)  ; Sqrt(value)
  %910 = call float @dx.op.unary.f32(i32 24, float %253)  ; Sqrt(value)
  %911 = fadd fast float %908, -5.000000e-01
  %912 = fadd fast float %909, -5.000000e-01
  %913 = fadd fast float %910, -5.000000e-01
  %914 = fmul fast float %911, %793
  %915 = fmul fast float %912, %793
  %916 = fmul fast float %913, %793
  %917 = fadd fast float %914, 5.000000e-01
  %918 = fadd fast float %915, 5.000000e-01
  %919 = fadd fast float %916, 5.000000e-01
  %920 = call float @dx.op.unary.f32(i32 24, float %768)  ; Sqrt(value)
  %921 = call float @dx.op.unary.f32(i32 24, float %769)  ; Sqrt(value)
  %922 = call float @dx.op.unary.f32(i32 24, float %770)  ; Sqrt(value)
  %923 = fmul fast float %917, 2.000000e+00
  %924 = fsub fast float 1.000000e+00, %923
  %925 = fmul fast float %924, %920
  %926 = fadd fast float %925, %923
  %927 = fmul fast float %926, %920
  %928 = fmul fast float %918, 2.000000e+00
  %929 = fsub fast float 1.000000e+00, %928
  %930 = fmul fast float %929, %921
  %931 = fadd fast float %930, %928
  %932 = fmul fast float %931, %921
  %933 = fmul fast float %919, 2.000000e+00
  %934 = fsub fast float 1.000000e+00, %933
  %935 = fmul fast float %934, %922
  %936 = fadd fast float %935, %933
  %937 = fmul fast float %936, %922
  %938 = fmul fast float %927, %927
  %939 = fmul fast float %932, %932
  %940 = fmul fast float %937, %937
  br label %957

; <label>:941                                     ; preds = %904
  %942 = fmul fast float %245, %245
  %943 = fmul fast float %249, %249
  %944 = fmul fast float %253, %253
  %945 = fadd fast float %942, -1.000000e+00
  %946 = fadd fast float %943, -1.000000e+00
  %947 = fadd fast float %944, -1.000000e+00
  %948 = fmul fast float %793, %945
  %949 = fmul fast float %793, %946
  %950 = fmul fast float %793, %947
  %951 = fadd fast float %948, 1.000000e+00
  %952 = fadd fast float %949, 1.000000e+00
  %953 = fadd fast float %950, 1.000000e+00
  %954 = fmul fast float %951, %768
  %955 = fmul fast float %952, %769
  %956 = fmul fast float %953, %770
  br label %957

; <label>:957                                     ; preds = %941, %907, %798, %753
  %958 = phi float [ %903, %798 ], [ %779, %907 ], [ %779, %941 ], [ 0x3FA23C0BE0000000, %753 ]
  %959 = phi float [ %895, %798 ], [ %938, %907 ], [ %954, %941 ], [ 1.000000e+00, %753 ]
  %960 = phi float [ %896, %798 ], [ %939, %907 ], [ %955, %941 ], [ 1.000000e+00, %753 ]
  %961 = phi float [ %897, %798 ], [ %940, %907 ], [ %956, %941 ], [ 1.000000e+00, %753 ]
  %962 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.i32 %962, 1
  %964 = and i32 %963, 1
  %965 = icmp ne i32 %964, 0
  %966 = add i32 %54, 356
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = and i32 %968, 32
  %970 = icmp ne i32 %969, 0
  %971 = and i1 %965, %970
  %972 = select i1 %971, float 1.000000e+00, float %959
  %973 = select i1 %971, float 0x3FD3333340000000, float %960
  %974 = select i1 %971, float 0x3FD3333340000000, float %961
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = and i32 %976, 32
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %1051, label %979

; <label>:979                                     ; preds = %957
  %980 = add i32 %54, 92
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %980, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = add i32 %54, 376
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = add i32 %985, 0
  %987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %986, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %988 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %987, %dx.types.Handle %95, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %989 = extractvalue %dx.types.ResRet.f32 %988, 0
  %990 = extractvalue %dx.types.ResRet.f32 %988, 1
  %991 = extractvalue %dx.types.ResRet.f32 %988, 2
  %992 = extractvalue %dx.types.ResRet.f32 %988, 3
  %993 = and i32 %982, 255
  %994 = uitofp i32 %993 to float
  %995 = lshr i32 %982, 8
  %996 = and i32 %995, 255
  %997 = uitofp i32 %996 to float
  %998 = lshr i32 %982, 16
  %999 = and i32 %998, 255
  %1000 = uitofp i32 %999 to float
  %1001 = fmul fast float %1000, 0x3F70101000000000
  %1002 = fmul fast float %989, %994
  %1003 = fadd fast float %1002, %997
  %1004 = fmul fast float %1003, 0x3F70101000000000
  %1005 = fadd fast float %990, -5.000000e-01
  %1006 = fadd fast float %992, -5.000000e-01
  %1007 = fmul fast float %1005, %1001
  %1008 = fmul fast float %1006, %1001
  %1009 = fadd fast float %1007, 5.000000e-01
  %1010 = fadd fast float %1008, 5.000000e-01
  %1011 = fmul fast float %1009, 2.000000e+00
  %1012 = fadd fast float %1011, -1.000000e+00
  %1013 = fmul fast float %1010, 2.000000e+00
  %1014 = fadd fast float %1013, -1.000000e+00
  %1015 = fadd fast float %1012, %1014
  %1016 = fmul fast float %1015, 5.000000e-01
  %1017 = fsub fast float %1012, %1014
  %1018 = fmul fast float %1017, 5.000000e-01
  %1019 = call float @dx.op.unary.f32(i32 6, float %1016)  ; FAbs(value)
  %1020 = fsub fast float 1.000000e+00, %1019
  %1021 = call float @dx.op.unary.f32(i32 6, float %1018)  ; FAbs(value)
  %1022 = fsub fast float %1020, %1021
  %1023 = call float @dx.op.dot3.f32(i32 55, float %1016, float %1018, float %1022, float %1016, float %1018, float %1022)  ; Dot3(ax,ay,az,bx,by,bz)
  %1024 = call float @dx.op.unary.f32(i32 25, float %1023)  ; Rsqrt(value)
  %1025 = fmul fast float %1016, %1024
  %1026 = fmul fast float %1018, %1024
  %1027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.i32 %1027, 0
  %1029 = and i32 %1028, 67108864
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1047, label %1031

; <label>:1031                                    ; preds = %979
  %1032 = add i32 %54, 280
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = and i32 %1034, 65535
  %1036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1035)  ; LegacyF16ToF32(value)
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %1038, 65535
  %1040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1039)  ; LegacyF16ToF32(value)
  %1041 = lshr i32 %1034, 16
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  %1043 = fsub fast float %1004, %1042
  %1044 = fmul fast float %1043, %1036
  %1045 = fadd fast float %1044, %1040
  %1046 = call float @dx.op.unary.f32(i32 7, float %1045)  ; Saturate(value)
  br label %1047

; <label>:1047                                    ; preds = %1031, %979
  %1048 = phi float [ %1046, %1031 ], [ %1004, %979 ]
  %1049 = call float @dx.op.dot2.f32(i32 54, float %1025, float %1026, float %470, float %471)  ; Dot2(ax,ay,bx,by)
  %1050 = call float @dx.op.dot2.f32(i32 54, float %1025, float %1026, float %472, float %473)  ; Dot2(ax,ay,bx,by)
  br label %1051

; <label>:1051                                    ; preds = %1047, %957
  %1052 = phi float [ %1048, %1047 ], [ 0x3FD6666660000000, %957 ]
  %1053 = phi float [ %1049, %1047 ], [ 0.000000e+00, %957 ]
  %1054 = phi float [ %1050, %1047 ], [ 0.000000e+00, %957 ]
  %1055 = phi float [ %991, %1047 ], [ 1.000000e+00, %957 ]
  %1056 = add i32 %54, 160
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = lshr i32 %1058, 22
  %1060 = shl nuw nsw i32 %1059, 5
  %1061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1060)  ; LegacyF16ToF32(value)
  %1062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.i32 %1062, 0
  %1064 = and i32 %1063, 64
  %1065 = icmp eq i32 %1064, 0
  br i1 %1065, label %1099, label %1066

; <label>:1066                                    ; preds = %1051
  %1067 = add i32 %54, 392
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = add i32 %1069, 0
  %1071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = and i32 %1073, 131072
  %1075 = icmp eq i32 %1074, 0
  %1076 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1071, %dx.types.Handle %95, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.ResRet.f32 %1076, 2
  %1080 = fmul fast float %1077, %233
  %1081 = fmul fast float %1078, %236
  %1082 = fmul fast float %1079, %239
  br i1 %1075, label %1089, label %1083

; <label>:1083                                    ; preds = %1066
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 0
  %1086 = fmul fast float %1085, %1080
  %1087 = fmul fast float %1085, %1081
  %1088 = fmul fast float %1085, %1082
  br label %1089

; <label>:1089                                    ; preds = %1083, %1066
  %1090 = phi float [ %1086, %1083 ], [ %1080, %1066 ]
  %1091 = phi float [ %1087, %1083 ], [ %1081, %1066 ]
  %1092 = phi float [ %1088, %1083 ], [ %1082, %1066 ]
  %1093 = fmul fast float %1090, %1061
  %1094 = select i1 %216, float %1093, float %1090
  %1095 = call float @dx.op.dot3.f32(i32 55, float %1094, float %1091, float %1092, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1096 = select i1 %216, float 0.000000e+00, float %1090
  %1097 = select i1 %216, float %1095, float %1091
  %1098 = select i1 %216, float 0.000000e+00, float %1092
  br label %1099

; <label>:1099                                    ; preds = %1089, %1051
  %1100 = phi float [ %1096, %1089 ], [ 0.000000e+00, %1051 ]
  %1101 = phi float [ %1097, %1089 ], [ 0.000000e+00, %1051 ]
  %1102 = phi float [ %1098, %1089 ], [ 0.000000e+00, %1051 ]
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = and i32 %1104, 1024
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1137, label %1107

; <label>:1107                                    ; preds = %1099
  %1108 = add i32 %54, 152
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %1110, 255
  %1112 = uitofp i32 %1111 to float
  %1113 = fmul fast float %1112, 0x3F70101020000000
  %1114 = lshr i32 %1110, 8
  %1115 = and i32 %1114, 255
  %1116 = uitofp i32 %1115 to float
  %1117 = fmul fast float %1116, 0x3F70101020000000
  %1118 = lshr i32 %1110, 16
  %1119 = and i32 %1118, 255
  %1120 = uitofp i32 %1119 to float
  %1121 = fmul fast float %1120, 0x3F70101020000000
  %1122 = fmul fast float %1113, %1113
  %1123 = fmul fast float %1117, %1117
  %1124 = fmul fast float %1121, %1121
  %1125 = add i32 %54, 456
  %1126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1125, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.i32 %1126, 0
  %1128 = add i32 %1127, 0
  %1129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1128, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1130 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1129, %dx.types.Handle %96, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 0
  %1132 = extractvalue %dx.types.ResRet.f32 %1130, 1
  %1133 = extractvalue %dx.types.ResRet.f32 %1130, 2
  %1134 = fmul fast float %1122, %1131
  %1135 = fmul fast float %1123, %1132
  %1136 = fmul fast float %1124, %1133
  br label %1137

; <label>:1137                                    ; preds = %1107, %1099
  %1138 = phi float [ %1134, %1107 ], [ 0.000000e+00, %1099 ]
  %1139 = phi float [ %1135, %1107 ], [ 0.000000e+00, %1099 ]
  %1140 = phi float [ %1136, %1107 ], [ 0.000000e+00, %1099 ]
  %1141 = fcmp fast ogt float %1138, 0.000000e+00
  %1142 = fcmp fast ogt float %1139, 0.000000e+00
  %1143 = fcmp fast ogt float %1140, 0.000000e+00
  %1144 = call float @dx.op.unary.f32(i32 23, float %1138)  ; Log(value)
  %1145 = call float @dx.op.unary.f32(i32 23, float %1139)  ; Log(value)
  %1146 = call float @dx.op.unary.f32(i32 23, float %1140)  ; Log(value)
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = lshr i32 %1148, 7
  %1150 = and i32 %1149, 32752
  %1151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1150)  ; LegacyF16ToF32(value)
  %1152 = fmul fast float %1144, 0xBFE62E4300000000
  %1153 = fmul fast float %1152, %1151
  %1154 = fmul fast float %1145, 0xBFE62E4300000000
  %1155 = fmul fast float %1154, %1151
  %1156 = fmul fast float %1146, 0xBFE62E4300000000
  %1157 = fmul fast float %1156, %1151
  %1158 = select i1 %1141, float %1153, float 1.270000e+02
  %1159 = select i1 %1142, float %1155, float 1.270000e+02
  %1160 = select i1 %1143, float %1157, float 1.270000e+02
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 10240
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1209, label %1165

; <label>:1165                                    ; preds = %1137
  %1166 = add i32 %54, 472
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = add i32 %1168, 0
  %1170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1169, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1171 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1170, %dx.types.Handle %96, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1172 = extractvalue %dx.types.ResRet.f32 %1171, 1
  %1173 = extractvalue %dx.types.ResRet.f32 %1171, 3
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = and i32 %1175, 1048576
  %1177 = icmp ne i32 %1176, 0
  %1178 = and i32 %1175, 8192
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1195, label %1180

; <label>:1180                                    ; preds = %1165
  %1181 = extractvalue %dx.types.ResRet.f32 %1171, 2
  %1182 = select i1 %1177, float %1181, float %1172
  %1183 = extractvalue %dx.types.ResRet.f32 %1171, 0
  %1184 = select i1 %1177, float %1183, float %1172
  %1185 = add i32 %54, 96
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = lshr i32 %1187, 16
  %1189 = and i32 %1188, 255
  %1190 = uitofp i32 %1189 to float
  %1191 = fmul fast float %1190, 0x3F80101020000000
  %1192 = fmul fast float %1191, %1184
  %1193 = fmul fast float %1191, %1172
  %1194 = fmul fast float %1191, %1182
  br label %1195

; <label>:1195                                    ; preds = %1180, %1165
  %1196 = phi float [ %1192, %1180 ], [ 0.000000e+00, %1165 ]
  %1197 = phi float [ %1193, %1180 ], [ 0.000000e+00, %1165 ]
  %1198 = phi float [ %1194, %1180 ], [ 0.000000e+00, %1165 ]
  %1199 = and i32 %1175, 2048
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %1209, label %1201

; <label>:1201                                    ; preds = %1195
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = shl i32 %1203, 4
  %1205 = and i32 %1204, 32752
  %1206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1205)  ; LegacyF16ToF32(value)
  %1207 = fmul fast float %1206, %1173
  %1208 = call float @dx.op.binary.f32(i32 35, float %1207, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1209

; <label>:1209                                    ; preds = %1201, %1195, %1137
  %1210 = phi float [ %1196, %1201 ], [ %1196, %1195 ], [ 0.000000e+00, %1137 ]
  %1211 = phi float [ %1197, %1201 ], [ %1197, %1195 ], [ 0.000000e+00, %1137 ]
  %1212 = phi float [ %1198, %1201 ], [ %1198, %1195 ], [ 0.000000e+00, %1137 ]
  %1213 = phi float [ %1208, %1201 ], [ 0x3F70101020000000, %1195 ], [ 0x3F70101020000000, %1137 ]
  %1214 = add i32 %54, 96
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = and i32 %1216, 255
  %1218 = uitofp i32 %1217 to float
  %1219 = lshr i32 %1216, 8
  %1220 = and i32 %1219, 255
  %1221 = uitofp i32 %1220 to float
  %1222 = call float @dx.op.dot3.f32(i32 55, float %972, float %973, float %974, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1223 = fmul fast float %1221, %1222
  %1224 = fadd fast float %1223, %1218
  %1225 = fmul fast float %1224, 0x3F70101020000000
  %1226 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  br label %1227

; <label>:1227                                    ; preds = %1209, %452
  %1228 = phi float [ 0.000000e+00, %452 ], [ %1053, %1209 ]
  %1229 = phi float [ 0.000000e+00, %452 ], [ %1054, %1209 ]
  %1230 = phi float [ 0.000000e+00, %452 ], [ %972, %1209 ]
  %1231 = phi float [ 0.000000e+00, %452 ], [ %973, %1209 ]
  %1232 = phi float [ 0.000000e+00, %452 ], [ %974, %1209 ]
  %1233 = phi float [ 0.000000e+00, %452 ], [ %1100, %1209 ]
  %1234 = phi float [ 0.000000e+00, %452 ], [ %1101, %1209 ]
  %1235 = phi float [ 0.000000e+00, %452 ], [ %1102, %1209 ]
  %1236 = phi float [ 0.000000e+00, %452 ], [ %1210, %1209 ]
  %1237 = phi float [ 0.000000e+00, %452 ], [ %1211, %1209 ]
  %1238 = phi float [ 0.000000e+00, %452 ], [ %1212, %1209 ]
  %1239 = phi float [ 0.000000e+00, %452 ], [ %1158, %1209 ]
  %1240 = phi float [ 0.000000e+00, %452 ], [ %1159, %1209 ]
  %1241 = phi float [ 0.000000e+00, %452 ], [ %1160, %1209 ]
  %1242 = phi float [ 0.000000e+00, %452 ], [ %958, %1209 ]
  %1243 = phi float [ 0.000000e+00, %452 ], [ %754, %1209 ]
  %1244 = phi float [ 0.000000e+00, %452 ], [ %1052, %1209 ]
  %1245 = phi float [ 0.000000e+00, %452 ], [ %1055, %1209 ]
  %1246 = phi float [ 0.000000e+00, %452 ], [ %1213, %1209 ]
  %1247 = phi float [ 0.000000e+00, %452 ], [ %1226, %1209 ]
  br i1 %400, label %2285, label %1248

; <label>:1248                                    ; preds = %1227
  %1249 = icmp ult i32 %458, 2
  %1250 = add i32 %54, 40
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = add i32 %54, 44
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = or i32 %1255, %1252
  %1257 = icmp eq i32 %1256, 0
  br i1 %1257, label %2285, label %1258

; <label>:1258                                    ; preds = %1248
  %1259 = and i32 %1252, 262144
  %1260 = icmp ne i32 %1259, 0
  %1261 = select i1 %1260, float %56, float 1.000000e+00
  %1262 = select i1 %1260, float %57, float 0.000000e+00
  %1263 = select i1 %1260, float %58, float 0.000000e+00
  %1264 = select i1 %1260, float %59, float 1.000000e+00
  %1265 = select i1 %1260, float %60, float %81
  %1266 = select i1 %1260, float %61, float %82
  %1267 = add i32 %54, 300
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = lshr i32 %1269, 16
  %1271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1270)  ; LegacyF16ToF32(value)
  %1272 = fmul fast float %1271, 0x3F50624DE0000000
  %1273 = add i32 %54, 104
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = lshr i32 %1275, 16
  %1277 = and i32 %1276, 255
  %1278 = lshr i32 %1275, 24
  %1279 = add i32 %54, 308
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = and i32 %1281, 65535
  %1283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1282)  ; LegacyF16ToF32(value)
  %1284 = lshr i32 %1281, 16
  %1285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1284)  ; LegacyF16ToF32(value)
  %1286 = add i32 %54, 48
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = lshr i32 %1288, 22
  %1290 = shl nuw nsw i32 %1289, 5
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = shl i32 %1288, 4
  %1293 = and i32 %1292, 32752
  %1294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1293)  ; LegacyF16ToF32(value)
  %1295 = lshr i32 %1288, 7
  %1296 = and i32 %1295, 32752
  %1297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1296)  ; LegacyF16ToF32(value)
  %1298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1299 = extractvalue %dx.types.CBufRet.f32 %1298, 3
  %1300 = fmul fast float %1299, 1.000000e+03
  %1301 = fmul fast float %310, %1300
  %1302 = call float @dx.op.unary.f32(i32 22, float %1301)  ; Frc(value)
  %1303 = fadd fast float %1302, %300
  %1304 = fmul fast float %311, %1300
  %1305 = call float @dx.op.unary.f32(i32 22, float %1304)  ; Frc(value)
  %1306 = fadd fast float %1305, %302
  %1307 = fmul fast float %1272, %1300
  %1308 = call float @dx.op.unary.f32(i32 22, float %1307)  ; Frc(value)
  %1309 = fmul fast float %1308, 0x401921FB60000000
  %1310 = fadd fast float %1309, %1291
  %1311 = call float @dx.op.unary.f32(i32 13, float %1310)  ; Sin(value)
  %1312 = call float @dx.op.unary.f32(i32 12, float %1310)  ; Cos(value)
  %1313 = fsub fast float -0.000000e+00, %1311
  %1314 = fadd fast float %1265, -5.000000e-01
  %1315 = fadd fast float %1266, -5.000000e-01
  %1316 = fmul fast float %1283, %1314
  %1317 = fmul fast float %1285, %1315
  %1318 = fadd fast float %1316, 5.000000e-01
  %1319 = fadd fast float %1317, 5.000000e-01
  %1320 = fmul fast float %1294, %1318
  %1321 = fmul fast float %1297, %1319
  %1322 = fmul fast float %1312, %1320
  %1323 = call float @dx.op.tertiary.f32(i32 46, float %1313, float %1321, float %1322)  ; FMad(a,b,c)
  %1324 = fmul fast float %1311, %1320
  %1325 = call float @dx.op.tertiary.f32(i32 46, float %1312, float %1321, float %1324)  ; FMad(a,b,c)
  %1326 = fadd fast float %1303, %1323
  %1327 = fadd fast float %1306, %1325
  %1328 = icmp ugt i32 %1277, 1
  %1329 = icmp ugt i32 %1275, 33554431
  %1330 = or i1 %1329, %1328
  br i1 %1330, label %1331, label %1356

; <label>:1331                                    ; preds = %1258
  %1332 = add i32 %54, 244
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = lshr i32 %1334, 16
  %1336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1335)  ; LegacyF16ToF32(value)
  %1337 = fmul fast float %1299, %1336
  %1338 = call float @dx.op.unary.f32(i32 22, float %1337)  ; Frc(value)
  %1339 = mul nuw nsw i32 %1277, %1278
  %1340 = uitofp i32 %1339 to float
  %1341 = fmul fast float %1338, %1340
  %1342 = call float @dx.op.unary.f32(i32 27, float %1341)  ; Round_ni(value)
  %1343 = fptoui float %1342 to i32
  %1344 = urem i32 %1343, %1277
  %1345 = udiv i32 %1343, %1278
  %1346 = call float @dx.op.unary.f32(i32 22, float %1326)  ; Frc(value)
  %1347 = call float @dx.op.unary.f32(i32 22, float %1327)  ; Frc(value)
  %1348 = uitofp i32 %1344 to float
  %1349 = uitofp i32 %1345 to float
  %1350 = fadd fast float %1346, %1348
  %1351 = fadd fast float %1347, %1349
  %1352 = uitofp i32 %1277 to float
  %1353 = uitofp i32 %1278 to float
  %1354 = fdiv fast float %1350, %1352
  %1355 = fdiv fast float %1351, %1353
  br label %1356

; <label>:1356                                    ; preds = %1331, %1258
  %1357 = phi float [ %1354, %1331 ], [ %1326, %1258 ]
  %1358 = phi float [ %1355, %1331 ], [ %1327, %1258 ]
  %1359 = and i32 %1252, 16777216
  %1360 = icmp eq i32 %1359, 0
  br i1 %1360, label %1470, label %1361

; <label>:1361                                    ; preds = %1356
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.CBufRet.f32 %1362, 1
  %1365 = extractvalue %dx.types.CBufRet.f32 %1362, 2
  %1366 = fadd fast float %1363, %154
  %1367 = fadd fast float %1364, %155
  %1368 = fadd fast float %1365, %156
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 0
  %1371 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1372 = icmp eq i32 %55, 65535
  br i1 %1372, label %1467, label %1373

; <label>:1373                                    ; preds = %1361
  %1374 = lshr i32 %55, 1
  %1375 = shl i32 %1374, 2
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = and i32 %55, 1
  %1379 = icmp ne i32 %1378, 0
  %1380 = lshr i32 %1377, 16
  %1381 = and i32 %1377, 65535
  %1382 = select i1 %1379, i32 %1380, i32 %1381
  %1383 = icmp eq i32 %1382, 65535
  br i1 %1383, label %1463, label %1384

; <label>:1384                                    ; preds = %1373
  %1385 = mul nuw nsw i32 %1382, 40
  %1386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1385, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.f32 %1386, 0
  %1388 = extractvalue %dx.types.ResRet.f32 %1386, 1
  %1389 = extractvalue %dx.types.ResRet.f32 %1386, 2
  %1390 = add nuw nsw i32 %1385, 12
  %1391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1390, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.f32 %1391, 0
  %1393 = extractvalue %dx.types.ResRet.f32 %1391, 1
  %1394 = extractvalue %dx.types.ResRet.f32 %1391, 2
  %1395 = add nuw nsw i32 %1385, 24
  %1396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.f32 %1396, 0
  %1398 = extractvalue %dx.types.ResRet.f32 %1396, 1
  %1399 = extractvalue %dx.types.ResRet.f32 %1396, 2
  %1400 = add nuw nsw i32 %1385, 36
  %1401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1400, i32 undef)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.f32 %1401, 0
  %1403 = fsub fast float %1366, %1387
  %1404 = fsub fast float %1367, %1388
  %1405 = fsub fast float %1368, %1389
  %1406 = fmul fast float %1402, %1403
  %1407 = fmul fast float %1402, %1404
  %1408 = fmul fast float %1402, %1405
  %1409 = call float @dx.op.unary.f32(i32 27, float %1406)  ; Round_ni(value)
  %1410 = call float @dx.op.unary.f32(i32 27, float %1407)  ; Round_ni(value)
  %1411 = call float @dx.op.unary.f32(i32 27, float %1408)  ; Round_ni(value)
  %1412 = fadd fast float %1409, 5.000000e-01
  %1413 = fadd fast float %1410, 5.000000e-01
  %1414 = fadd fast float %1411, 5.000000e-01
  %1415 = fmul fast float %1412, %1392
  %1416 = fmul fast float %1413, %1393
  %1417 = fmul fast float %1414, %1394
  %1418 = shl i32 %55, 2
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1418, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = add i32 %1420, 0
  %1422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1421, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1423 = call float @dx.op.unary.f32(i32 22, float %1415)  ; Frc(value)
  %1424 = call float @dx.op.unary.f32(i32 22, float %1416)  ; Frc(value)
  %1425 = call float @dx.op.unary.f32(i32 22, float %1417)  ; Frc(value)
  %1426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1422, %dx.types.Handle %49, float %1423, float %1424, float %1425, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1427 = extractvalue %dx.types.ResRet.f32 %1426, 0
  %1428 = extractvalue %dx.types.ResRet.f32 %1426, 1
  %1429 = extractvalue %dx.types.ResRet.f32 %1426, 2
  %1430 = fmul fast float %1427, 1.023000e+03
  %1431 = fmul fast float %1428, 1.023000e+03
  %1432 = fmul fast float %1429, 1.023000e+03
  %1433 = fadd fast float %1430, 5.000000e-01
  %1434 = fadd fast float %1431, 5.000000e-01
  %1435 = fadd fast float %1432, 5.000000e-01
  %1436 = call float @dx.op.unary.f32(i32 27, float %1433)  ; Round_ni(value)
  %1437 = call float @dx.op.unary.f32(i32 27, float %1434)  ; Round_ni(value)
  %1438 = call float @dx.op.unary.f32(i32 27, float %1435)  ; Round_ni(value)
  %1439 = fsub fast float %1406, %1409
  %1440 = fsub fast float %1407, %1410
  %1441 = fsub fast float %1408, %1411
  %1442 = fmul fast float %1439, 7.500000e-01
  %1443 = fmul fast float %1440, 7.500000e-01
  %1444 = fmul fast float %1441, 7.500000e-01
  %1445 = fadd fast float %1409, 1.250000e-01
  %1446 = fadd fast float %1445, %1442
  %1447 = fadd fast float %1446, %1436
  %1448 = fadd fast float %1410, 1.250000e-01
  %1449 = fadd fast float %1448, %1443
  %1450 = fadd fast float %1449, %1437
  %1451 = fadd fast float %1411, 1.250000e-01
  %1452 = fadd fast float %1451, %1444
  %1453 = fadd fast float %1452, %1438
  %1454 = fmul fast float %1447, %1397
  %1455 = fmul fast float %1450, %1398
  %1456 = fmul fast float %1453, %1399
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1418, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = add i32 %1458, 0
  %1460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1461 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1460, %dx.types.Handle %47, float %1454, float %1455, float %1456, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1462 = extractvalue %dx.types.ResRet.f32 %1461, 0
  br label %1463

; <label>:1463                                    ; preds = %1384, %1373
  %1464 = phi float [ %1462, %1384 ], [ -1.000000e+00, %1373 ]
  %1465 = fadd fast float %1464, %1371
  %1466 = call float @dx.op.unary.f32(i32 7, float %1465)  ; Saturate(value)
  br label %1467

; <label>:1467                                    ; preds = %1463, %1361
  %1468 = phi float [ %1466, %1463 ], [ %1371, %1361 ]
  %1469 = fmul fast float %1468, %455
  br label %1470

; <label>:1470                                    ; preds = %1467, %1356
  %1471 = phi float [ %1469, %1467 ], [ %455, %1356 ]
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = and i32 %1473, 256
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1522, label %1476

; <label>:1476                                    ; preds = %1470
  %1477 = add i32 %54, 428
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = add i32 %1479, 0
  %1481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1482 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1481, %dx.types.Handle %96, float %1357, float %1358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1483 = extractvalue %dx.types.ResRet.f32 %1482, 0
  %1484 = add i32 %54, 116
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = shl i32 %1486, 4
  %1488 = and i32 %1487, 32752
  %1489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1488)  ; LegacyF16ToF32(value)
  %1490 = lshr i32 %1486, 7
  %1491 = and i32 %1490, 32752
  %1492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1491)  ; LegacyF16ToF32(value)
  %1493 = fsub fast float 1.000000e+00, %1471
  %1494 = call float @dx.op.binary.f32(i32 35, float %1493, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1495 = bitcast float %1471 to i32
  %1496 = sitofp i32 %1495 to float
  %1497 = fadd fast float %1496, 0xC1CFBF8940000000
  %1498 = fmul fast float %1492, %1497
  %1499 = fadd fast float %1498, 0x41CFBF8940000000
  %1500 = fptosi float %1499 to i32
  %1501 = bitcast i32 %1500 to float
  %1502 = bitcast float %1494 to i32
  %1503 = sitofp i32 %1502 to float
  %1504 = fadd fast float %1503, 0xC1CFBF8940000000
  %1505 = fmul fast float %1504, %1492
  %1506 = fadd fast float %1505, 0x41CFBF8940000000
  %1507 = fptosi float %1506 to i32
  %1508 = bitcast i32 %1507 to float
  %1509 = fmul fast float %1501, %1489
  %1510 = fmul fast float %1508, %1489
  %1511 = fsub fast float %1494, %1509
  %1512 = fadd fast float %1510, %1494
  %1513 = call float @dx.op.unary.f32(i32 7, float %1511)  ; Saturate(value)
  %1514 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1515 = fsub fast float %1483, %1513
  %1516 = fsub fast float %1514, %1513
  %1517 = bitcast float %1516 to i32
  %1518 = sub nsw i32 2129859010, %1517
  %1519 = bitcast i32 %1518 to float
  %1520 = fmul fast float %1519, %1515
  %1521 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  br label %1522

; <label>:1522                                    ; preds = %1476, %1470
  %1523 = phi float [ %1521, %1476 ], [ %1471, %1470 ]
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = and i32 %1525, 128
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1544, label %1528

; <label>:1528                                    ; preds = %1522
  %1529 = add i32 %54, 412
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = add i32 %1531, 0
  %1533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1533, %dx.types.Handle %96, float %1357, float %1358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1535 = extractvalue %dx.types.ResRet.f32 %1534, 0
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = and i32 %1537, 524288
  %1539 = icmp ne i32 %1538, 0
  %1540 = fcmp fast ogt float %1535, 0x3FE0101020000000
  %1541 = select i1 %1540, float 1.000000e+00, float 0.000000e+00
  %1542 = select i1 %1539, float %1541, float %1535
  %1543 = fmul fast float %1542, %1523
  br label %1544

; <label>:1544                                    ; preds = %1528, %1522
  %1545 = phi float [ %1543, %1528 ], [ %1523, %1522 ]
  %1546 = fcmp fast ult float %1545, 0x3F70101020000000
  br i1 %1546, label %2285, label %1547

; <label>:1547                                    ; preds = %1544
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = and i32 %1549, 16
  %1551 = icmp eq i32 %1550, 0
  br i1 %1551, label %1750, label %1552

; <label>:1552                                    ; preds = %1547
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = add i32 %54, 364
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1555, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = add i32 %1557, 0
  %1559 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1558, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1560 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1559, %dx.types.Handle %95, float %1357, float %1358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1561 = extractvalue %dx.types.ResRet.f32 %1560, 0
  %1562 = extractvalue %dx.types.ResRet.f32 %1560, 1
  %1563 = extractvalue %dx.types.ResRet.f32 %1560, 2
  %1564 = extractvalue %dx.types.ResRet.f32 %1560, 3
  %1565 = and i32 %1554, 255
  %1566 = uitofp i32 %1565 to float
  %1567 = lshr i32 %1554, 8
  %1568 = and i32 %1567, 255
  %1569 = uitofp i32 %1568 to float
  %1570 = fmul fast float %1564, %1566
  %1571 = fadd fast float %1570, %1569
  %1572 = fmul fast float %1571, 0x3F70101000000000
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = and i32 %1574, 512
  %1576 = icmp eq i32 %1575, 0
  br i1 %1576, label %1585, label %1577

; <label>:1577                                    ; preds = %1552
  %1578 = add i32 %54, 444
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = add i32 %1580, 0
  %1582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1581, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1583 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1582, %dx.types.Handle %96, float %1357, float %1358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1584 = extractvalue %dx.types.ResRet.f32 %1583, 0
  br label %1585

; <label>:1585                                    ; preds = %1577, %1552
  %1586 = phi float [ %1584, %1577 ], [ 1.000000e+00, %1552 ]
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = and i32 %1588, 33554432
  %1590 = icmp eq i32 %1589, 0
  br i1 %1590, label %1697, label %1591

; <label>:1591                                    ; preds = %1585
  %1592 = add i32 %54, 240
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1592, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = and i32 %1594, 65535
  %1596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1595)  ; LegacyF16ToF32(value)
  %1597 = lshr i32 %1594, 16
  %1598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1597)  ; LegacyF16ToF32(value)
  %1599 = add i32 %54, 244
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = and i32 %1601, 65535
  %1603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1602)  ; LegacyF16ToF32(value)
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = lshr i32 %1605, 24
  %1607 = uitofp i32 %1606 to float
  %1608 = fmul fast float %1607, 0x3F70101020000000
  %1609 = and i32 %1605, 255
  %1610 = uitofp i32 %1609 to float
  %1611 = fmul fast float %1610, 0x3F70101020000000
  %1612 = lshr i32 %1605, 8
  %1613 = and i32 %1612, 255
  %1614 = uitofp i32 %1613 to float
  %1615 = fmul fast float %1614, 0x3F70101020000000
  %1616 = lshr i32 %1605, 16
  %1617 = and i32 %1616, 255
  %1618 = uitofp i32 %1617 to float
  %1619 = fmul fast float %1618, 0x3F70101020000000
  %1620 = add i32 %54, 236
  %1621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1620, i32 undef)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = lshr i32 %1622, 24
  %1624 = uitofp i32 %1623 to float
  %1625 = fmul fast float %1624, 0x3F70101020000000
  %1626 = and i32 %1622, 255
  %1627 = uitofp i32 %1626 to float
  %1628 = fmul fast float %1627, 0x3F70101020000000
  %1629 = lshr i32 %1622, 8
  %1630 = and i32 %1629, 255
  %1631 = uitofp i32 %1630 to float
  %1632 = fmul fast float %1631, 0x3F70101020000000
  %1633 = lshr i32 %1622, 16
  %1634 = and i32 %1633, 255
  %1635 = uitofp i32 %1634 to float
  %1636 = fmul fast float %1635, 0x3F70101020000000
  %1637 = bitcast float %1561 to i32
  %1638 = ashr i32 %1637, 1
  %1639 = sub nsw i32 1597463174, %1638
  %1640 = bitcast i32 %1639 to float
  %1641 = fmul fast float %1561, 5.000000e-01
  %1642 = fmul fast float %1640, %1640
  %1643 = fmul fast float %1642, %1641
  %1644 = fsub fast float 1.500000e+00, %1643
  %1645 = fmul fast float %1640, %1561
  %1646 = fmul fast float %1645, %1644
  %1647 = bitcast float %1562 to i32
  %1648 = ashr i32 %1647, 1
  %1649 = sub nsw i32 1597463174, %1648
  %1650 = bitcast i32 %1649 to float
  %1651 = fmul fast float %1562, 5.000000e-01
  %1652 = fmul fast float %1650, %1650
  %1653 = fmul fast float %1652, %1651
  %1654 = fsub fast float 1.500000e+00, %1653
  %1655 = fmul fast float %1650, %1562
  %1656 = fmul fast float %1655, %1654
  %1657 = bitcast float %1563 to i32
  %1658 = ashr i32 %1657, 1
  %1659 = sub nsw i32 1597463174, %1658
  %1660 = bitcast i32 %1659 to float
  %1661 = fmul fast float %1563, 5.000000e-01
  %1662 = fmul fast float %1660, %1660
  %1663 = fmul fast float %1662, %1661
  %1664 = fsub fast float 1.500000e+00, %1663
  %1665 = fmul fast float %1660, %1563
  %1666 = fmul fast float %1665, %1664
  %1667 = fsub fast float %1646, %1628
  %1668 = fsub fast float %1656, %1632
  %1669 = fsub fast float %1666, %1636
  %1670 = fmul fast float %1667, %1596
  %1671 = fmul fast float %1668, %1598
  %1672 = fmul fast float %1669, %1603
  %1673 = fadd fast float %1670, %1611
  %1674 = fadd fast float %1671, %1615
  %1675 = fadd fast float %1672, %1619
  %1676 = call float @dx.op.unary.f32(i32 7, float %1673)  ; Saturate(value)
  %1677 = call float @dx.op.unary.f32(i32 7, float %1674)  ; Saturate(value)
  %1678 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1679 = fmul fast float %1676, %1676
  %1680 = fmul fast float %1677, %1677
  %1681 = fmul fast float %1678, %1678
  %1682 = fsub fast float %1679, %1561
  %1683 = fsub fast float %1680, %1562
  %1684 = fsub fast float %1681, %1563
  %1685 = fmul fast float %1682, %1586
  %1686 = fmul fast float %1683, %1586
  %1687 = fmul fast float %1684, %1586
  %1688 = fadd fast float %1685, %1561
  %1689 = fadd fast float %1686, %1562
  %1690 = fadd fast float %1687, %1563
  %1691 = fadd fast float %1608, %1572
  %1692 = fsub fast float %1691, %1625
  %1693 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  %1694 = fsub fast float %1693, %1572
  %1695 = fmul fast float %1694, %1586
  %1696 = fadd fast float %1695, %1572
  br label %1750

; <label>:1697                                    ; preds = %1585
  %1698 = and i32 %1588, 134217728
  %1699 = icmp eq i32 %1698, 0
  br i1 %1699, label %1734, label %1700

; <label>:1700                                    ; preds = %1697
  %1701 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %1702 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %1703 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %1704 = fadd fast float %1701, -5.000000e-01
  %1705 = fadd fast float %1702, -5.000000e-01
  %1706 = fadd fast float %1703, -5.000000e-01
  %1707 = fmul fast float %1704, %1586
  %1708 = fmul fast float %1705, %1586
  %1709 = fmul fast float %1706, %1586
  %1710 = fadd fast float %1707, 5.000000e-01
  %1711 = fadd fast float %1708, 5.000000e-01
  %1712 = fadd fast float %1709, 5.000000e-01
  %1713 = call float @dx.op.unary.f32(i32 24, float %1561)  ; Sqrt(value)
  %1714 = call float @dx.op.unary.f32(i32 24, float %1562)  ; Sqrt(value)
  %1715 = call float @dx.op.unary.f32(i32 24, float %1563)  ; Sqrt(value)
  %1716 = fmul fast float %1710, 2.000000e+00
  %1717 = fsub fast float 1.000000e+00, %1716
  %1718 = fmul fast float %1717, %1713
  %1719 = fadd fast float %1718, %1716
  %1720 = fmul fast float %1719, %1713
  %1721 = fmul fast float %1711, 2.000000e+00
  %1722 = fsub fast float 1.000000e+00, %1721
  %1723 = fmul fast float %1722, %1714
  %1724 = fadd fast float %1723, %1721
  %1725 = fmul fast float %1724, %1714
  %1726 = fmul fast float %1712, 2.000000e+00
  %1727 = fsub fast float 1.000000e+00, %1726
  %1728 = fmul fast float %1727, %1715
  %1729 = fadd fast float %1728, %1726
  %1730 = fmul fast float %1729, %1715
  %1731 = fmul fast float %1720, %1720
  %1732 = fmul fast float %1725, %1725
  %1733 = fmul fast float %1730, %1730
  br label %1750

; <label>:1734                                    ; preds = %1697
  %1735 = fmul fast float %287, %287
  %1736 = fmul fast float %291, %291
  %1737 = fmul fast float %295, %295
  %1738 = fadd fast float %1735, -1.000000e+00
  %1739 = fadd fast float %1736, -1.000000e+00
  %1740 = fadd fast float %1737, -1.000000e+00
  %1741 = fmul fast float %1586, %1738
  %1742 = fmul fast float %1586, %1739
  %1743 = fmul fast float %1586, %1740
  %1744 = fadd fast float %1741, 1.000000e+00
  %1745 = fadd fast float %1742, 1.000000e+00
  %1746 = fadd fast float %1743, 1.000000e+00
  %1747 = fmul fast float %1744, %1561
  %1748 = fmul fast float %1745, %1562
  %1749 = fmul fast float %1746, %1563
  br label %1750

; <label>:1750                                    ; preds = %1734, %1700, %1591, %1547
  %1751 = phi float [ %1696, %1591 ], [ %1572, %1700 ], [ %1572, %1734 ], [ 0x3FA23C0BE0000000, %1547 ]
  %1752 = phi float [ %1688, %1591 ], [ %1731, %1700 ], [ %1747, %1734 ], [ 1.000000e+00, %1547 ]
  %1753 = phi float [ %1689, %1591 ], [ %1732, %1700 ], [ %1748, %1734 ], [ 1.000000e+00, %1547 ]
  %1754 = phi float [ %1690, %1591 ], [ %1733, %1700 ], [ %1749, %1734 ], [ 1.000000e+00, %1547 ]
  %1755 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1756 = extractvalue %dx.types.CBufRet.i32 %1755, 1
  %1757 = and i32 %1756, 1
  %1758 = icmp ne i32 %1757, 0
  %1759 = add i32 %54, 356
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = and i32 %1761, 32
  %1763 = icmp ne i32 %1762, 0
  %1764 = and i1 %1758, %1763
  %1765 = select i1 %1764, float 1.000000e+00, float %1752
  %1766 = select i1 %1764, float 0x3FD3333340000000, float %1753
  %1767 = select i1 %1764, float 0x3FD3333340000000, float %1754
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = and i32 %1769, 32
  %1771 = icmp eq i32 %1770, 0
  br i1 %1771, label %1844, label %1772

; <label>:1772                                    ; preds = %1750
  %1773 = add i32 %54, 108
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = add i32 %54, 380
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = add i32 %1778, 0
  %1780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1779, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1781 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1780, %dx.types.Handle %95, float %1357, float %1358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1782 = extractvalue %dx.types.ResRet.f32 %1781, 0
  %1783 = extractvalue %dx.types.ResRet.f32 %1781, 1
  %1784 = extractvalue %dx.types.ResRet.f32 %1781, 2
  %1785 = extractvalue %dx.types.ResRet.f32 %1781, 3
  %1786 = and i32 %1775, 255
  %1787 = uitofp i32 %1786 to float
  %1788 = lshr i32 %1775, 8
  %1789 = and i32 %1788, 255
  %1790 = uitofp i32 %1789 to float
  %1791 = lshr i32 %1775, 16
  %1792 = and i32 %1791, 255
  %1793 = uitofp i32 %1792 to float
  %1794 = fmul fast float %1793, 0x3F70101000000000
  %1795 = fmul fast float %1782, %1787
  %1796 = fadd fast float %1795, %1790
  %1797 = fmul fast float %1796, 0x3F70101000000000
  %1798 = fadd fast float %1783, -5.000000e-01
  %1799 = fadd fast float %1785, -5.000000e-01
  %1800 = fmul fast float %1798, %1794
  %1801 = fmul fast float %1799, %1794
  %1802 = fadd fast float %1800, 5.000000e-01
  %1803 = fadd fast float %1801, 5.000000e-01
  %1804 = fmul fast float %1802, 2.000000e+00
  %1805 = fadd fast float %1804, -1.000000e+00
  %1806 = fmul fast float %1803, 2.000000e+00
  %1807 = fadd fast float %1806, -1.000000e+00
  %1808 = fadd fast float %1805, %1807
  %1809 = fmul fast float %1808, 5.000000e-01
  %1810 = fsub fast float %1805, %1807
  %1811 = fmul fast float %1810, 5.000000e-01
  %1812 = call float @dx.op.unary.f32(i32 6, float %1809)  ; FAbs(value)
  %1813 = fsub fast float 1.000000e+00, %1812
  %1814 = call float @dx.op.unary.f32(i32 6, float %1811)  ; FAbs(value)
  %1815 = fsub fast float %1813, %1814
  %1816 = call float @dx.op.dot3.f32(i32 55, float %1809, float %1811, float %1815, float %1809, float %1811, float %1815)  ; Dot3(ax,ay,az,bx,by,bz)
  %1817 = call float @dx.op.unary.f32(i32 25, float %1816)  ; Rsqrt(value)
  %1818 = fmul fast float %1809, %1817
  %1819 = fmul fast float %1811, %1817
  %1820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.i32 %1820, 0
  %1822 = and i32 %1821, 67108864
  %1823 = icmp eq i32 %1822, 0
  br i1 %1823, label %1840, label %1824

; <label>:1824                                    ; preds = %1772
  %1825 = add i32 %54, 296
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = and i32 %1827, 65535
  %1829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1828)  ; LegacyF16ToF32(value)
  %1830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1831 = extractvalue %dx.types.ResRet.i32 %1830, 0
  %1832 = and i32 %1831, 65535
  %1833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1832)  ; LegacyF16ToF32(value)
  %1834 = lshr i32 %1827, 16
  %1835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1834)  ; LegacyF16ToF32(value)
  %1836 = fsub fast float %1797, %1835
  %1837 = fmul fast float %1836, %1829
  %1838 = fadd fast float %1837, %1833
  %1839 = call float @dx.op.unary.f32(i32 7, float %1838)  ; Saturate(value)
  br label %1840

; <label>:1840                                    ; preds = %1824, %1772
  %1841 = phi float [ %1839, %1824 ], [ %1797, %1772 ]
  %1842 = call float @dx.op.dot2.f32(i32 54, float %1818, float %1819, float %1261, float %1262)  ; Dot2(ax,ay,bx,by)
  %1843 = call float @dx.op.dot2.f32(i32 54, float %1818, float %1819, float %1263, float %1264)  ; Dot2(ax,ay,bx,by)
  br label %1844

; <label>:1844                                    ; preds = %1840, %1750
  %1845 = phi float [ %1841, %1840 ], [ 0x3FD6666660000000, %1750 ]
  %1846 = phi float [ %1842, %1840 ], [ 0.000000e+00, %1750 ]
  %1847 = phi float [ %1843, %1840 ], [ 0.000000e+00, %1750 ]
  %1848 = phi float [ %1784, %1840 ], [ 1.000000e+00, %1750 ]
  %1849 = add i32 %54, 176
  %1850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %1851 = extractvalue %dx.types.ResRet.i32 %1850, 0
  %1852 = lshr i32 %1851, 22
  %1853 = shl nuw nsw i32 %1852, 5
  %1854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1853)  ; LegacyF16ToF32(value)
  %1855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.i32 %1855, 0
  %1857 = and i32 %1856, 64
  %1858 = icmp eq i32 %1857, 0
  br i1 %1858, label %1892, label %1859

; <label>:1859                                    ; preds = %1844
  %1860 = add i32 %54, 396
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1860, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = add i32 %1862, 0
  %1864 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1863, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = and i32 %1866, 131072
  %1868 = icmp eq i32 %1867, 0
  %1869 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1864, %dx.types.Handle %95, float %1357, float %1358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1870 = extractvalue %dx.types.ResRet.f32 %1869, 0
  %1871 = extractvalue %dx.types.ResRet.f32 %1869, 1
  %1872 = extractvalue %dx.types.ResRet.f32 %1869, 2
  %1873 = fmul fast float %1870, %275
  %1874 = fmul fast float %1871, %278
  %1875 = fmul fast float %1872, %281
  br i1 %1868, label %1882, label %1876

; <label>:1876                                    ; preds = %1859
  %1877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1878 = extractvalue %dx.types.CBufRet.f32 %1877, 0
  %1879 = fmul fast float %1878, %1873
  %1880 = fmul fast float %1878, %1874
  %1881 = fmul fast float %1878, %1875
  br label %1882

; <label>:1882                                    ; preds = %1876, %1859
  %1883 = phi float [ %1879, %1876 ], [ %1873, %1859 ]
  %1884 = phi float [ %1880, %1876 ], [ %1874, %1859 ]
  %1885 = phi float [ %1881, %1876 ], [ %1875, %1859 ]
  %1886 = fmul fast float %1883, %1854
  %1887 = select i1 %216, float %1886, float %1883
  %1888 = call float @dx.op.dot3.f32(i32 55, float %1887, float %1884, float %1885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1889 = select i1 %216, float 0.000000e+00, float %1883
  %1890 = select i1 %216, float %1888, float %1884
  %1891 = select i1 %216, float 0.000000e+00, float %1885
  br label %1892

; <label>:1892                                    ; preds = %1882, %1844
  %1893 = phi float [ %1889, %1882 ], [ 0.000000e+00, %1844 ]
  %1894 = phi float [ %1890, %1882 ], [ 0.000000e+00, %1844 ]
  %1895 = phi float [ %1891, %1882 ], [ 0.000000e+00, %1844 ]
  %1896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.i32 %1896, 0
  %1898 = and i32 %1897, 1024
  %1899 = icmp eq i32 %1898, 0
  br i1 %1899, label %1930, label %1900

; <label>:1900                                    ; preds = %1892
  %1901 = add i32 %54, 168
  %1902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1901, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.i32 %1902, 0
  %1904 = and i32 %1903, 255
  %1905 = uitofp i32 %1904 to float
  %1906 = fmul fast float %1905, 0x3F70101020000000
  %1907 = lshr i32 %1903, 8
  %1908 = and i32 %1907, 255
  %1909 = uitofp i32 %1908 to float
  %1910 = fmul fast float %1909, 0x3F70101020000000
  %1911 = lshr i32 %1903, 16
  %1912 = and i32 %1911, 255
  %1913 = uitofp i32 %1912 to float
  %1914 = fmul fast float %1913, 0x3F70101020000000
  %1915 = fmul fast float %1906, %1906
  %1916 = fmul fast float %1910, %1910
  %1917 = fmul fast float %1914, %1914
  %1918 = add i32 %54, 460
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = add i32 %1920, 0
  %1922 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1921, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1923 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1922, %dx.types.Handle %96, float %1357, float %1358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1924 = extractvalue %dx.types.ResRet.f32 %1923, 0
  %1925 = extractvalue %dx.types.ResRet.f32 %1923, 1
  %1926 = extractvalue %dx.types.ResRet.f32 %1923, 2
  %1927 = fmul fast float %1915, %1924
  %1928 = fmul fast float %1916, %1925
  %1929 = fmul fast float %1917, %1926
  br label %1930

; <label>:1930                                    ; preds = %1900, %1892
  %1931 = phi float [ %1927, %1900 ], [ 0.000000e+00, %1892 ]
  %1932 = phi float [ %1928, %1900 ], [ 0.000000e+00, %1892 ]
  %1933 = phi float [ %1929, %1900 ], [ 0.000000e+00, %1892 ]
  %1934 = fcmp fast ogt float %1931, 0.000000e+00
  %1935 = fcmp fast ogt float %1932, 0.000000e+00
  %1936 = fcmp fast ogt float %1933, 0.000000e+00
  %1937 = call float @dx.op.unary.f32(i32 23, float %1931)  ; Log(value)
  %1938 = call float @dx.op.unary.f32(i32 23, float %1932)  ; Log(value)
  %1939 = call float @dx.op.unary.f32(i32 23, float %1933)  ; Log(value)
  %1940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.i32 %1940, 0
  %1942 = lshr i32 %1941, 7
  %1943 = and i32 %1942, 32752
  %1944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1943)  ; LegacyF16ToF32(value)
  %1945 = fmul fast float %1937, 0xBFE62E4300000000
  %1946 = fmul fast float %1945, %1944
  %1947 = fmul fast float %1938, 0xBFE62E4300000000
  %1948 = fmul fast float %1947, %1944
  %1949 = fmul fast float %1939, 0xBFE62E4300000000
  %1950 = fmul fast float %1949, %1944
  %1951 = select i1 %1934, float %1946, float 1.270000e+02
  %1952 = select i1 %1935, float %1948, float 1.270000e+02
  %1953 = select i1 %1936, float %1950, float 1.270000e+02
  %1954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.i32 %1954, 0
  %1956 = and i32 %1955, 10240
  %1957 = icmp eq i32 %1956, 0
  br i1 %1957, label %2002, label %1958

; <label>:1958                                    ; preds = %1930
  %1959 = add i32 %54, 476
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = add i32 %1961, 0
  %1963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1964 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1963, %dx.types.Handle %96, float %1357, float %1358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1965 = extractvalue %dx.types.ResRet.f32 %1964, 1
  %1966 = extractvalue %dx.types.ResRet.f32 %1964, 3
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = and i32 %1968, 1048576
  %1970 = icmp ne i32 %1969, 0
  %1971 = and i32 %1968, 8192
  %1972 = icmp eq i32 %1971, 0
  br i1 %1972, label %1988, label %1973

; <label>:1973                                    ; preds = %1958
  %1974 = extractvalue %dx.types.ResRet.f32 %1964, 2
  %1975 = select i1 %1970, float %1974, float %1965
  %1976 = extractvalue %dx.types.ResRet.f32 %1964, 0
  %1977 = select i1 %1970, float %1976, float %1965
  %1978 = add i32 %54, 112
  %1979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1980 = extractvalue %dx.types.ResRet.i32 %1979, 0
  %1981 = lshr i32 %1980, 16
  %1982 = and i32 %1981, 255
  %1983 = uitofp i32 %1982 to float
  %1984 = fmul fast float %1983, 0x3F80101020000000
  %1985 = fmul fast float %1984, %1977
  %1986 = fmul fast float %1984, %1965
  %1987 = fmul fast float %1984, %1975
  br label %1988

; <label>:1988                                    ; preds = %1973, %1958
  %1989 = phi float [ %1985, %1973 ], [ 0.000000e+00, %1958 ]
  %1990 = phi float [ %1986, %1973 ], [ 0.000000e+00, %1958 ]
  %1991 = phi float [ %1987, %1973 ], [ 0.000000e+00, %1958 ]
  %1992 = and i32 %1968, 2048
  %1993 = icmp eq i32 %1992, 0
  br i1 %1993, label %2002, label %1994

; <label>:1994                                    ; preds = %1988
  %1995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %1996 = extractvalue %dx.types.ResRet.i32 %1995, 0
  %1997 = shl i32 %1996, 4
  %1998 = and i32 %1997, 32752
  %1999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1998)  ; LegacyF16ToF32(value)
  %2000 = fmul fast float %1999, %1966
  %2001 = call float @dx.op.binary.f32(i32 35, float %2000, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2002

; <label>:2002                                    ; preds = %1994, %1988, %1930
  %2003 = phi float [ %1989, %1994 ], [ %1989, %1988 ], [ 0.000000e+00, %1930 ]
  %2004 = phi float [ %1990, %1994 ], [ %1990, %1988 ], [ 0.000000e+00, %1930 ]
  %2005 = phi float [ %1991, %1994 ], [ %1991, %1988 ], [ 0.000000e+00, %1930 ]
  %2006 = phi float [ %2001, %1994 ], [ 0x3F70101020000000, %1988 ], [ 0x3F70101020000000, %1930 ]
  %2007 = add i32 %54, 112
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = and i32 %2009, 255
  %2011 = uitofp i32 %2010 to float
  %2012 = lshr i32 %2009, 8
  %2013 = and i32 %2012, 255
  %2014 = uitofp i32 %2013 to float
  %2015 = call float @dx.op.dot3.f32(i32 55, float %1765, float %1766, float %1767, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2016 = fmul fast float %2014, %2015
  %2017 = fadd fast float %2016, %2011
  %2018 = fmul fast float %2017, 0x3F70101020000000
  %2019 = call float @dx.op.unary.f32(i32 7, float %2018)  ; Saturate(value)
  br i1 %1249, label %2020, label %2055

; <label>:2020                                    ; preds = %2002
  %2021 = fmul fast float %2006, 2.000000e+00
  %2022 = fcmp fast olt float %1951, 1.270000e+02
  %2023 = fcmp fast olt float %1952, 1.270000e+02
  %2024 = fcmp fast olt float %1953, 1.270000e+02
  %2025 = fmul fast float %1951, 0xBFF7154760000000
  %2026 = fmul fast float %2025, %2021
  %2027 = fmul fast float %1952, 0xBFF7154760000000
  %2028 = fmul fast float %2027, %2021
  %2029 = fmul fast float %1953, 0xBFF7154760000000
  %2030 = fmul fast float %2029, %2021
  %2031 = call float @dx.op.unary.f32(i32 21, float %2026)  ; Exp(value)
  %2032 = call float @dx.op.unary.f32(i32 21, float %2028)  ; Exp(value)
  %2033 = call float @dx.op.unary.f32(i32 21, float %2030)  ; Exp(value)
  %2034 = call float @dx.op.unary.f32(i32 7, float %2031)  ; Saturate(value)
  %2035 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  %2036 = call float @dx.op.unary.f32(i32 7, float %2033)  ; Saturate(value)
  %2037 = fadd fast float %2034, -1.000000e+00
  %2038 = select i1 %2022, float %2037, float -1.000000e+00
  %2039 = fadd fast float %2035, -1.000000e+00
  %2040 = select i1 %2023, float %2039, float -1.000000e+00
  %2041 = fadd fast float %2036, -1.000000e+00
  %2042 = select i1 %2024, float %2041, float -1.000000e+00
  %2043 = fmul fast float %2038, %1545
  %2044 = fmul fast float %2040, %1545
  %2045 = fmul fast float %2042, %1545
  %2046 = fadd fast float %2043, 1.000000e+00
  %2047 = fadd fast float %2044, 1.000000e+00
  %2048 = fadd fast float %2045, 1.000000e+00
  %2049 = fmul fast float %2046, %1230
  %2050 = fmul fast float %2047, %1231
  %2051 = fmul fast float %2048, %1232
  %2052 = fmul fast float %2046, %1233
  %2053 = fmul fast float %2047, %1234
  %2054 = fmul fast float %2048, %1235
  br label %2055

; <label>:2055                                    ; preds = %2020, %2002
  %2056 = phi float [ %2049, %2020 ], [ %1230, %2002 ]
  %2057 = phi float [ %2050, %2020 ], [ %1231, %2002 ]
  %2058 = phi float [ %2051, %2020 ], [ %1232, %2002 ]
  %2059 = phi float [ %2052, %2020 ], [ %1233, %2002 ]
  %2060 = phi float [ %2053, %2020 ], [ %1234, %2002 ]
  %2061 = phi float [ %2054, %2020 ], [ %1235, %2002 ]
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = and i32 %2063, 3
  %2065 = icmp eq i32 %2064, 3
  br i1 %2065, label %2144, label %2066

; <label>:2066                                    ; preds = %2055
  %2067 = and i32 %2063, 16
  %2068 = icmp ne i32 %2067, 0
  %2069 = select i1 %2068, float %1545, float 0.000000e+00
  %2070 = icmp eq i32 %2064, 0
  br i1 %2070, label %2071, label %2099

; <label>:2071                                    ; preds = %2066
  %2072 = and i32 %2063, 64
  %2073 = icmp ne i32 %2072, 0
  %2074 = select i1 %2073, float %1545, float 0.000000e+00
  %2075 = fsub fast float %1765, %2056
  %2076 = fsub fast float %1766, %2057
  %2077 = fsub fast float %1767, %2058
  %2078 = fmul fast float %2069, %2075
  %2079 = fmul fast float %2069, %2076
  %2080 = fmul fast float %2069, %2077
  %2081 = fadd fast float %2078, %2056
  %2082 = fadd fast float %2079, %2057
  %2083 = fadd fast float %2080, %2058
  %2084 = fsub fast float %1751, %1242
  %2085 = fmul fast float %2069, %2084
  %2086 = fadd fast float %2085, %1242
  %2087 = fsub fast float %1893, %2059
  %2088 = fsub fast float %1894, %2060
  %2089 = fsub fast float %1895, %2061
  %2090 = fmul fast float %2074, %2087
  %2091 = fmul fast float %2074, %2088
  %2092 = fmul fast float %2074, %2089
  %2093 = fadd fast float %2090, %2059
  %2094 = fadd fast float %2091, %2060
  %2095 = fadd fast float %2092, %2061
  %2096 = fsub fast float %2019, %1247
  %2097 = fmul fast float %2069, %2096
  %2098 = fadd fast float %2097, %1247
  br label %2144

; <label>:2099                                    ; preds = %2066
  %2100 = icmp eq i32 %2064, 1
  br i1 %2100, label %2101, label %2114

; <label>:2101                                    ; preds = %2099
  %2102 = fadd fast float %1765, -1.000000e+00
  %2103 = fadd fast float %1766, -1.000000e+00
  %2104 = fadd fast float %1767, -1.000000e+00
  %2105 = fmul fast float %2069, %2102
  %2106 = fmul fast float %2069, %2103
  %2107 = fmul fast float %2069, %2104
  %2108 = fadd fast float %2105, 1.000000e+00
  %2109 = fadd fast float %2106, 1.000000e+00
  %2110 = fadd fast float %2107, 1.000000e+00
  %2111 = fmul fast float %2108, %2056
  %2112 = fmul fast float %2109, %2057
  %2113 = fmul fast float %2110, %2058
  br label %2144

; <label>:2114                                    ; preds = %2099
  %2115 = icmp eq i32 %2064, 2
  br i1 %2115, label %2116, label %2144

; <label>:2116                                    ; preds = %2114
  %2117 = call float @dx.op.unary.f32(i32 24, float %1765)  ; Sqrt(value)
  %2118 = call float @dx.op.unary.f32(i32 24, float %1766)  ; Sqrt(value)
  %2119 = call float @dx.op.unary.f32(i32 24, float %1767)  ; Sqrt(value)
  %2120 = fadd fast float %2117, -5.000000e-01
  %2121 = fadd fast float %2118, -5.000000e-01
  %2122 = fadd fast float %2119, -5.000000e-01
  %2123 = fmul fast float %2120, %2069
  %2124 = fmul fast float %2121, %2069
  %2125 = fmul fast float %2122, %2069
  %2126 = fadd fast float %2123, 5.000000e-01
  %2127 = fadd fast float %2124, 5.000000e-01
  %2128 = fadd fast float %2125, 5.000000e-01
  %2129 = fmul fast float %2126, 2.000000e+00
  %2130 = fsub fast float 1.000000e+00, %2129
  %2131 = fmul fast float %2130, %2056
  %2132 = fadd fast float %2131, %2129
  %2133 = fmul fast float %2132, %2056
  %2134 = fmul fast float %2127, 2.000000e+00
  %2135 = fsub fast float 1.000000e+00, %2134
  %2136 = fmul fast float %2135, %2057
  %2137 = fadd fast float %2136, %2134
  %2138 = fmul fast float %2137, %2057
  %2139 = fmul fast float %2128, 2.000000e+00
  %2140 = fsub fast float 1.000000e+00, %2139
  %2141 = fmul fast float %2140, %2058
  %2142 = fadd fast float %2141, %2139
  %2143 = fmul fast float %2142, %2058
  br label %2144

; <label>:2144                                    ; preds = %2116, %2114, %2101, %2071, %2055
  %2145 = phi float [ %2056, %2055 ], [ %2133, %2116 ], [ %2056, %2114 ], [ %2111, %2101 ], [ %2081, %2071 ]
  %2146 = phi float [ %2057, %2055 ], [ %2138, %2116 ], [ %2057, %2114 ], [ %2112, %2101 ], [ %2082, %2071 ]
  %2147 = phi float [ %2058, %2055 ], [ %2143, %2116 ], [ %2058, %2114 ], [ %2113, %2101 ], [ %2083, %2071 ]
  %2148 = phi float [ %2059, %2055 ], [ %2059, %2116 ], [ %2059, %2114 ], [ %2059, %2101 ], [ %2093, %2071 ]
  %2149 = phi float [ %2060, %2055 ], [ %2060, %2116 ], [ %2060, %2114 ], [ %2060, %2101 ], [ %2094, %2071 ]
  %2150 = phi float [ %2061, %2055 ], [ %2061, %2116 ], [ %2061, %2114 ], [ %2061, %2101 ], [ %2095, %2071 ]
  %2151 = phi float [ %1242, %2055 ], [ %1242, %2116 ], [ %1242, %2114 ], [ %1242, %2101 ], [ %2086, %2071 ]
  %2152 = phi float [ %1247, %2055 ], [ %1247, %2116 ], [ %1247, %2114 ], [ %1247, %2101 ], [ %2098, %2071 ]
  %2153 = and i32 %2063, 12
  %2154 = icmp eq i32 %2153, 12
  br i1 %2154, label %2285, label %2155

; <label>:2155                                    ; preds = %2144
  %2156 = and i32 %2063, 2097184
  %2157 = icmp eq i32 %2156, 2097184
  %2158 = select i1 %2157, float %1545, float 0.000000e+00
  %2159 = and i32 %2063, 4194336
  %2160 = icmp eq i32 %2159, 4194336
  %2161 = select i1 %2160, float %1545, float 0.000000e+00
  %2162 = and i32 %2063, 8388640
  %2163 = icmp eq i32 %2162, 8388640
  %2164 = select i1 %2163, float %1545, float 0.000000e+00
  %2165 = and i32 %2063, 1024
  %2166 = icmp ne i32 %2165, 0
  %2167 = select i1 %2166, float %1545, float 0.000000e+00
  %2168 = and i32 %2063, 2048
  %2169 = icmp ne i32 %2168, 0
  %2170 = select i1 %2169, float %1545, float 0.000000e+00
  %2171 = and i32 %2063, 8192
  %2172 = icmp ne i32 %2171, 0
  %2173 = select i1 %2172, float %1545, float 0.000000e+00
  %2174 = icmp eq i32 %2153, 0
  br i1 %2174, label %2175, label %2209

; <label>:2175                                    ; preds = %2155
  %2176 = fsub fast float %1846, %1228
  %2177 = fsub fast float %1847, %1229
  %2178 = fmul fast float %2158, %2176
  %2179 = fmul fast float %2158, %2177
  %2180 = fadd fast float %2178, %1228
  %2181 = fadd fast float %2179, %1229
  %2182 = fsub fast float %1848, %1245
  %2183 = fmul fast float %2161, %2182
  %2184 = fadd fast float %2183, %1245
  %2185 = fsub fast float %1845, %1244
  %2186 = fmul fast float %2164, %2185
  %2187 = fadd fast float %2186, %1244
  %2188 = fsub fast float %1951, %1239
  %2189 = fsub fast float %1952, %1240
  %2190 = fsub fast float %1953, %1241
  %2191 = fmul fast float %2167, %2188
  %2192 = fmul fast float %2167, %2189
  %2193 = fmul fast float %2167, %2190
  %2194 = fadd fast float %2191, %1239
  %2195 = fadd fast float %2192, %1240
  %2196 = fadd fast float %2193, %1241
  %2197 = fsub fast float %2006, %1246
  %2198 = fmul fast float %2170, %2197
  %2199 = fadd fast float %2198, %1246
  %2200 = fsub fast float %2003, %1236
  %2201 = fsub fast float %2004, %1237
  %2202 = fsub fast float %2005, %1238
  %2203 = fmul fast float %2173, %2200
  %2204 = fmul fast float %2173, %2201
  %2205 = fmul fast float %2173, %2202
  %2206 = fadd fast float %2203, %1236
  %2207 = fadd fast float %2204, %1237
  %2208 = fadd fast float %2205, %1238
  br label %2285

; <label>:2209                                    ; preds = %2155
  %2210 = icmp eq i32 %2153, 4
  br i1 %2210, label %2211, label %2257

; <label>:2211                                    ; preds = %2209
  %2212 = fmul fast float %2158, %1846
  %2213 = fmul fast float %2158, %1847
  %2214 = fadd fast float %2212, %1228
  %2215 = fadd fast float %2213, %1229
  %2216 = call float @dx.op.binary.f32(i32 36, float %1245, float %1848)  ; FMin(a,b)
  %2217 = fsub fast float %2216, %1245
  %2218 = fmul fast float %2217, %2161
  %2219 = fadd fast float %2218, %1245
  %2220 = fadd fast float %1845, %1244
  %2221 = fmul fast float %2220, 0x3FF337FAE0000000
  %2222 = fmul fast float %1244, %1244
  %2223 = fmul fast float %1845, %1845
  %2224 = fadd fast float %2223, %2222
  %2225 = fmul fast float %2224, 0x3FE5152B00000000
  %2226 = fmul fast float %1244, 0xBFCC1F85E0000000
  %2227 = fmul fast float %2226, %1845
  %2228 = fadd fast float %2227, 0xBFE1363700000000
  %2229 = fadd fast float %2228, %2221
  %2230 = fsub fast float %2229, %2225
  %2231 = fmul fast float %2220, 0x3FBA6F0D00000000
  %2232 = fmul fast float %2224, 0x3FD0432880000000
  %2233 = fmul fast float %1244, 0xBFEF110800000000
  %2234 = fmul fast float %2233, %1845
  %2235 = fadd fast float %2234, 1.000000e+00
  %2236 = fsub fast float %2235, %2231
  %2237 = fadd fast float %2236, %2232
  %2238 = fdiv fast float %2230, %2237
  %2239 = call float @dx.op.unary.f32(i32 7, float %2238)  ; Saturate(value)
  %2240 = fsub fast float %2239, %1244
  %2241 = fmul fast float %2240, %2164
  %2242 = fadd fast float %2241, %1244
  %2243 = fmul fast float %2167, %1951
  %2244 = fmul fast float %2167, %1952
  %2245 = fmul fast float %2167, %1953
  %2246 = fadd fast float %2243, %1239
  %2247 = fadd fast float %2244, %1240
  %2248 = fadd fast float %2245, %1241
  %2249 = fmul fast float %2170, %2006
  %2250 = fadd fast float %2249, %1246
  %2251 = fmul fast float %2173, %2003
  %2252 = fmul fast float %2173, %2004
  %2253 = fmul fast float %2173, %2005
  %2254 = fadd fast float %2251, %1236
  %2255 = fadd fast float %2252, %1237
  %2256 = fadd fast float %2253, %1238
  br label %2285

; <label>:2257                                    ; preds = %2209
  %2258 = icmp eq i32 %2153, 8
  br i1 %2258, label %2259, label %2285

; <label>:2259                                    ; preds = %2257
  %2260 = fmul fast float %2158, %1846
  %2261 = fmul fast float %2158, %1847
  %2262 = fadd fast float %2260, %1228
  %2263 = fadd fast float %2261, %1229
  %2264 = call float @dx.op.binary.f32(i32 36, float %1245, float %1848)  ; FMin(a,b)
  %2265 = fsub fast float %2264, %1245
  %2266 = fmul fast float %2265, %2161
  %2267 = fadd fast float %2266, %1245
  %2268 = fsub fast float %1845, %1244
  %2269 = fmul fast float %2164, %2268
  %2270 = fadd fast float %2269, %1244
  %2271 = fmul fast float %2167, %1951
  %2272 = fmul fast float %2167, %1952
  %2273 = fmul fast float %2167, %1953
  %2274 = fadd fast float %2271, %1239
  %2275 = fadd fast float %2272, %1240
  %2276 = fadd fast float %2273, %1241
  %2277 = fmul fast float %2170, %2006
  %2278 = fadd fast float %2277, %1246
  %2279 = fmul fast float %2173, %2003
  %2280 = fmul fast float %2173, %2004
  %2281 = fmul fast float %2173, %2005
  %2282 = fadd fast float %2279, %1236
  %2283 = fadd fast float %2280, %1237
  %2284 = fadd fast float %2281, %1238
  br label %2285

; <label>:2285                                    ; preds = %2259, %2257, %2211, %2175, %2144, %1544, %1248, %1227
  %2286 = phi float [ %1228, %2144 ], [ %1228, %1544 ], [ %1228, %1227 ], [ %2262, %2259 ], [ %1228, %2257 ], [ %2214, %2211 ], [ %2180, %2175 ], [ %1228, %1248 ]
  %2287 = phi float [ %1229, %2144 ], [ %1229, %1544 ], [ %1229, %1227 ], [ %2263, %2259 ], [ %1229, %2257 ], [ %2215, %2211 ], [ %2181, %2175 ], [ %1229, %1248 ]
  %2288 = phi float [ %2145, %2144 ], [ %1230, %1544 ], [ %1230, %1227 ], [ %2145, %2259 ], [ %2145, %2257 ], [ %2145, %2211 ], [ %2145, %2175 ], [ %1230, %1248 ]
  %2289 = phi float [ %2146, %2144 ], [ %1231, %1544 ], [ %1231, %1227 ], [ %2146, %2259 ], [ %2146, %2257 ], [ %2146, %2211 ], [ %2146, %2175 ], [ %1231, %1248 ]
  %2290 = phi float [ %2147, %2144 ], [ %1232, %1544 ], [ %1232, %1227 ], [ %2147, %2259 ], [ %2147, %2257 ], [ %2147, %2211 ], [ %2147, %2175 ], [ %1232, %1248 ]
  %2291 = phi float [ %2148, %2144 ], [ %1233, %1544 ], [ %1233, %1227 ], [ %2148, %2259 ], [ %2148, %2257 ], [ %2148, %2211 ], [ %2148, %2175 ], [ %1233, %1248 ]
  %2292 = phi float [ %2149, %2144 ], [ %1234, %1544 ], [ %1234, %1227 ], [ %2149, %2259 ], [ %2149, %2257 ], [ %2149, %2211 ], [ %2149, %2175 ], [ %1234, %1248 ]
  %2293 = phi float [ %2150, %2144 ], [ %1235, %1544 ], [ %1235, %1227 ], [ %2150, %2259 ], [ %2150, %2257 ], [ %2150, %2211 ], [ %2150, %2175 ], [ %1235, %1248 ]
  %2294 = phi float [ %1236, %2144 ], [ %1236, %1544 ], [ %1236, %1227 ], [ %2282, %2259 ], [ %1236, %2257 ], [ %2254, %2211 ], [ %2206, %2175 ], [ %1236, %1248 ]
  %2295 = phi float [ %1237, %2144 ], [ %1237, %1544 ], [ %1237, %1227 ], [ %2283, %2259 ], [ %1237, %2257 ], [ %2255, %2211 ], [ %2207, %2175 ], [ %1237, %1248 ]
  %2296 = phi float [ %1238, %2144 ], [ %1238, %1544 ], [ %1238, %1227 ], [ %2284, %2259 ], [ %1238, %2257 ], [ %2256, %2211 ], [ %2208, %2175 ], [ %1238, %1248 ]
  %2297 = phi float [ %1239, %2144 ], [ %1239, %1544 ], [ %1239, %1227 ], [ %2274, %2259 ], [ %1239, %2257 ], [ %2246, %2211 ], [ %2194, %2175 ], [ %1239, %1248 ]
  %2298 = phi float [ %1240, %2144 ], [ %1240, %1544 ], [ %1240, %1227 ], [ %2275, %2259 ], [ %1240, %2257 ], [ %2247, %2211 ], [ %2195, %2175 ], [ %1240, %1248 ]
  %2299 = phi float [ %1241, %2144 ], [ %1241, %1544 ], [ %1241, %1227 ], [ %2276, %2259 ], [ %1241, %2257 ], [ %2248, %2211 ], [ %2196, %2175 ], [ %1241, %1248 ]
  %2300 = phi float [ %2151, %2144 ], [ %1242, %1544 ], [ %1242, %1227 ], [ %2151, %2259 ], [ %2151, %2257 ], [ %2151, %2211 ], [ %2151, %2175 ], [ %1242, %1248 ]
  %2301 = phi float [ %1244, %2144 ], [ %1244, %1544 ], [ %1244, %1227 ], [ %2270, %2259 ], [ %1244, %2257 ], [ %2242, %2211 ], [ %2187, %2175 ], [ %1244, %1248 ]
  %2302 = phi float [ %1245, %2144 ], [ %1245, %1544 ], [ %1245, %1227 ], [ %2267, %2259 ], [ %1245, %2257 ], [ %2219, %2211 ], [ %2184, %2175 ], [ %1245, %1248 ]
  %2303 = phi float [ %1246, %2144 ], [ %1246, %1544 ], [ %1246, %1227 ], [ %2278, %2259 ], [ %1246, %2257 ], [ %2250, %2211 ], [ %2199, %2175 ], [ %1246, %1248 ]
  %2304 = phi float [ %2152, %2144 ], [ %1247, %1544 ], [ %1247, %1227 ], [ %2152, %2259 ], [ %2152, %2257 ], [ %2152, %2211 ], [ %2152, %2175 ], [ %1247, %1248 ]
  br i1 %402, label %3342, label %2305

; <label>:2305                                    ; preds = %2285
  %2306 = icmp ult i32 %458, 3
  %2307 = add i32 %54, 56
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = add i32 %54, 60
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2310, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = or i32 %2312, %2309
  %2314 = icmp eq i32 %2313, 0
  br i1 %2314, label %3342, label %2315

; <label>:2315                                    ; preds = %2305
  %2316 = and i32 %2309, 262144
  %2317 = icmp ne i32 %2316, 0
  %2318 = select i1 %2317, float %56, float 1.000000e+00
  %2319 = select i1 %2317, float %57, float 0.000000e+00
  %2320 = select i1 %2317, float %58, float 0.000000e+00
  %2321 = select i1 %2317, float %59, float 1.000000e+00
  %2322 = select i1 %2317, float %60, float %81
  %2323 = select i1 %2317, float %61, float %82
  %2324 = add i32 %54, 316
  %2325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.i32 %2325, 0
  %2327 = lshr i32 %2326, 16
  %2328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2327)  ; LegacyF16ToF32(value)
  %2329 = fmul fast float %2328, 0x3F50624DE0000000
  %2330 = add i32 %54, 120
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = lshr i32 %2332, 16
  %2334 = and i32 %2333, 255
  %2335 = lshr i32 %2332, 24
  %2336 = add i32 %54, 324
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = and i32 %2338, 65535
  %2340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2339)  ; LegacyF16ToF32(value)
  %2341 = lshr i32 %2338, 16
  %2342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2341)  ; LegacyF16ToF32(value)
  %2343 = add i32 %54, 64
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = lshr i32 %2345, 22
  %2347 = shl nuw nsw i32 %2346, 5
  %2348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2347)  ; LegacyF16ToF32(value)
  %2349 = shl i32 %2345, 4
  %2350 = and i32 %2349, 32752
  %2351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2350)  ; LegacyF16ToF32(value)
  %2352 = lshr i32 %2345, 7
  %2353 = and i32 %2352, 32752
  %2354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2353)  ; LegacyF16ToF32(value)
  %2355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2356 = extractvalue %dx.types.CBufRet.f32 %2355, 3
  %2357 = fmul fast float %2356, 1.000000e+03
  %2358 = fmul fast float %352, %2357
  %2359 = call float @dx.op.unary.f32(i32 22, float %2358)  ; Frc(value)
  %2360 = fadd fast float %2359, %342
  %2361 = fmul fast float %353, %2357
  %2362 = call float @dx.op.unary.f32(i32 22, float %2361)  ; Frc(value)
  %2363 = fadd fast float %2362, %344
  %2364 = fmul fast float %2329, %2357
  %2365 = call float @dx.op.unary.f32(i32 22, float %2364)  ; Frc(value)
  %2366 = fmul fast float %2365, 0x401921FB60000000
  %2367 = fadd fast float %2366, %2348
  %2368 = call float @dx.op.unary.f32(i32 13, float %2367)  ; Sin(value)
  %2369 = call float @dx.op.unary.f32(i32 12, float %2367)  ; Cos(value)
  %2370 = fsub fast float -0.000000e+00, %2368
  %2371 = fadd fast float %2322, -5.000000e-01
  %2372 = fadd fast float %2323, -5.000000e-01
  %2373 = fmul fast float %2340, %2371
  %2374 = fmul fast float %2342, %2372
  %2375 = fadd fast float %2373, 5.000000e-01
  %2376 = fadd fast float %2374, 5.000000e-01
  %2377 = fmul fast float %2351, %2375
  %2378 = fmul fast float %2354, %2376
  %2379 = fmul fast float %2369, %2377
  %2380 = call float @dx.op.tertiary.f32(i32 46, float %2370, float %2378, float %2379)  ; FMad(a,b,c)
  %2381 = fmul fast float %2368, %2377
  %2382 = call float @dx.op.tertiary.f32(i32 46, float %2369, float %2378, float %2381)  ; FMad(a,b,c)
  %2383 = fadd fast float %2360, %2380
  %2384 = fadd fast float %2363, %2382
  %2385 = icmp ugt i32 %2334, 1
  %2386 = icmp ugt i32 %2332, 33554431
  %2387 = or i1 %2386, %2385
  br i1 %2387, label %2388, label %2413

; <label>:2388                                    ; preds = %2315
  %2389 = add i32 %54, 260
  %2390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2389, i32 undef)  ; BufferLoad(srv,index,wot)
  %2391 = extractvalue %dx.types.ResRet.i32 %2390, 0
  %2392 = lshr i32 %2391, 16
  %2393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2392)  ; LegacyF16ToF32(value)
  %2394 = fmul fast float %2356, %2393
  %2395 = call float @dx.op.unary.f32(i32 22, float %2394)  ; Frc(value)
  %2396 = mul nuw nsw i32 %2334, %2335
  %2397 = uitofp i32 %2396 to float
  %2398 = fmul fast float %2395, %2397
  %2399 = call float @dx.op.unary.f32(i32 27, float %2398)  ; Round_ni(value)
  %2400 = fptoui float %2399 to i32
  %2401 = urem i32 %2400, %2334
  %2402 = udiv i32 %2400, %2335
  %2403 = call float @dx.op.unary.f32(i32 22, float %2383)  ; Frc(value)
  %2404 = call float @dx.op.unary.f32(i32 22, float %2384)  ; Frc(value)
  %2405 = uitofp i32 %2401 to float
  %2406 = uitofp i32 %2402 to float
  %2407 = fadd fast float %2403, %2405
  %2408 = fadd fast float %2404, %2406
  %2409 = uitofp i32 %2334 to float
  %2410 = uitofp i32 %2335 to float
  %2411 = fdiv fast float %2407, %2409
  %2412 = fdiv fast float %2408, %2410
  br label %2413

; <label>:2413                                    ; preds = %2388, %2315
  %2414 = phi float [ %2411, %2388 ], [ %2383, %2315 ]
  %2415 = phi float [ %2412, %2388 ], [ %2384, %2315 ]
  %2416 = and i32 %2309, 16777216
  %2417 = icmp eq i32 %2416, 0
  br i1 %2417, label %2527, label %2418

; <label>:2418                                    ; preds = %2413
  %2419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2420 = extractvalue %dx.types.CBufRet.f32 %2419, 0
  %2421 = extractvalue %dx.types.CBufRet.f32 %2419, 1
  %2422 = extractvalue %dx.types.CBufRet.f32 %2419, 2
  %2423 = fadd fast float %2420, %154
  %2424 = fadd fast float %2421, %155
  %2425 = fadd fast float %2422, %156
  %2426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2427 = extractvalue %dx.types.CBufRet.f32 %2426, 0
  %2428 = call float @dx.op.unary.f32(i32 7, float %2427)  ; Saturate(value)
  %2429 = icmp eq i32 %55, 65535
  br i1 %2429, label %2524, label %2430

; <label>:2430                                    ; preds = %2418
  %2431 = lshr i32 %55, 1
  %2432 = shl i32 %2431, 2
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = and i32 %55, 1
  %2436 = icmp ne i32 %2435, 0
  %2437 = lshr i32 %2434, 16
  %2438 = and i32 %2434, 65535
  %2439 = select i1 %2436, i32 %2437, i32 %2438
  %2440 = icmp eq i32 %2439, 65535
  br i1 %2440, label %2520, label %2441

; <label>:2441                                    ; preds = %2430
  %2442 = mul nuw nsw i32 %2439, 40
  %2443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2442, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.f32 %2443, 0
  %2445 = extractvalue %dx.types.ResRet.f32 %2443, 1
  %2446 = extractvalue %dx.types.ResRet.f32 %2443, 2
  %2447 = add nuw nsw i32 %2442, 12
  %2448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2447, i32 undef)  ; BufferLoad(srv,index,wot)
  %2449 = extractvalue %dx.types.ResRet.f32 %2448, 0
  %2450 = extractvalue %dx.types.ResRet.f32 %2448, 1
  %2451 = extractvalue %dx.types.ResRet.f32 %2448, 2
  %2452 = add nuw nsw i32 %2442, 24
  %2453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2452, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.f32 %2453, 0
  %2455 = extractvalue %dx.types.ResRet.f32 %2453, 1
  %2456 = extractvalue %dx.types.ResRet.f32 %2453, 2
  %2457 = add nuw nsw i32 %2442, 36
  %2458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.f32 %2458, 0
  %2460 = fsub fast float %2423, %2444
  %2461 = fsub fast float %2424, %2445
  %2462 = fsub fast float %2425, %2446
  %2463 = fmul fast float %2459, %2460
  %2464 = fmul fast float %2459, %2461
  %2465 = fmul fast float %2459, %2462
  %2466 = call float @dx.op.unary.f32(i32 27, float %2463)  ; Round_ni(value)
  %2467 = call float @dx.op.unary.f32(i32 27, float %2464)  ; Round_ni(value)
  %2468 = call float @dx.op.unary.f32(i32 27, float %2465)  ; Round_ni(value)
  %2469 = fadd fast float %2466, 5.000000e-01
  %2470 = fadd fast float %2467, 5.000000e-01
  %2471 = fadd fast float %2468, 5.000000e-01
  %2472 = fmul fast float %2469, %2449
  %2473 = fmul fast float %2470, %2450
  %2474 = fmul fast float %2471, %2451
  %2475 = shl i32 %55, 2
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2475, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = add i32 %2477, 0
  %2479 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2478, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2480 = call float @dx.op.unary.f32(i32 22, float %2472)  ; Frc(value)
  %2481 = call float @dx.op.unary.f32(i32 22, float %2473)  ; Frc(value)
  %2482 = call float @dx.op.unary.f32(i32 22, float %2474)  ; Frc(value)
  %2483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2479, %dx.types.Handle %49, float %2480, float %2481, float %2482, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2484 = extractvalue %dx.types.ResRet.f32 %2483, 0
  %2485 = extractvalue %dx.types.ResRet.f32 %2483, 1
  %2486 = extractvalue %dx.types.ResRet.f32 %2483, 2
  %2487 = fmul fast float %2484, 1.023000e+03
  %2488 = fmul fast float %2485, 1.023000e+03
  %2489 = fmul fast float %2486, 1.023000e+03
  %2490 = fadd fast float %2487, 5.000000e-01
  %2491 = fadd fast float %2488, 5.000000e-01
  %2492 = fadd fast float %2489, 5.000000e-01
  %2493 = call float @dx.op.unary.f32(i32 27, float %2490)  ; Round_ni(value)
  %2494 = call float @dx.op.unary.f32(i32 27, float %2491)  ; Round_ni(value)
  %2495 = call float @dx.op.unary.f32(i32 27, float %2492)  ; Round_ni(value)
  %2496 = fsub fast float %2463, %2466
  %2497 = fsub fast float %2464, %2467
  %2498 = fsub fast float %2465, %2468
  %2499 = fmul fast float %2496, 7.500000e-01
  %2500 = fmul fast float %2497, 7.500000e-01
  %2501 = fmul fast float %2498, 7.500000e-01
  %2502 = fadd fast float %2466, 1.250000e-01
  %2503 = fadd fast float %2502, %2499
  %2504 = fadd fast float %2503, %2493
  %2505 = fadd fast float %2467, 1.250000e-01
  %2506 = fadd fast float %2505, %2500
  %2507 = fadd fast float %2506, %2494
  %2508 = fadd fast float %2468, 1.250000e-01
  %2509 = fadd fast float %2508, %2501
  %2510 = fadd fast float %2509, %2495
  %2511 = fmul fast float %2504, %2454
  %2512 = fmul fast float %2507, %2455
  %2513 = fmul fast float %2510, %2456
  %2514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2475, i32 undef)  ; BufferLoad(srv,index,wot)
  %2515 = extractvalue %dx.types.ResRet.i32 %2514, 0
  %2516 = add i32 %2515, 0
  %2517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2516, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2517, %dx.types.Handle %47, float %2511, float %2512, float %2513, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2519 = extractvalue %dx.types.ResRet.f32 %2518, 0
  br label %2520

; <label>:2520                                    ; preds = %2441, %2430
  %2521 = phi float [ %2519, %2441 ], [ -1.000000e+00, %2430 ]
  %2522 = fadd fast float %2521, %2428
  %2523 = call float @dx.op.unary.f32(i32 7, float %2522)  ; Saturate(value)
  br label %2524

; <label>:2524                                    ; preds = %2520, %2418
  %2525 = phi float [ %2523, %2520 ], [ %2428, %2418 ]
  %2526 = fmul fast float %2525, %454
  br label %2527

; <label>:2527                                    ; preds = %2524, %2413
  %2528 = phi float [ %2526, %2524 ], [ %454, %2413 ]
  %2529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2530 = extractvalue %dx.types.ResRet.i32 %2529, 0
  %2531 = and i32 %2530, 256
  %2532 = icmp eq i32 %2531, 0
  br i1 %2532, label %2579, label %2533

; <label>:2533                                    ; preds = %2527
  %2534 = add i32 %54, 432
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = add i32 %2536, 0
  %2538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2537, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2539 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2538, %dx.types.Handle %96, float %2414, float %2415, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2540 = extractvalue %dx.types.ResRet.f32 %2539, 0
  %2541 = add i32 %54, 132
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = shl i32 %2543, 4
  %2545 = and i32 %2544, 32752
  %2546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2545)  ; LegacyF16ToF32(value)
  %2547 = lshr i32 %2543, 7
  %2548 = and i32 %2547, 32752
  %2549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2548)  ; LegacyF16ToF32(value)
  %2550 = fsub fast float 1.000000e+00, %2528
  %2551 = call float @dx.op.binary.f32(i32 35, float %2550, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2552 = bitcast float %2528 to i32
  %2553 = sitofp i32 %2552 to float
  %2554 = fadd fast float %2553, 0xC1CFBF8940000000
  %2555 = fmul fast float %2549, %2554
  %2556 = fadd fast float %2555, 0x41CFBF8940000000
  %2557 = fptosi float %2556 to i32
  %2558 = bitcast i32 %2557 to float
  %2559 = bitcast float %2551 to i32
  %2560 = sitofp i32 %2559 to float
  %2561 = fadd fast float %2560, 0xC1CFBF8940000000
  %2562 = fmul fast float %2561, %2549
  %2563 = fadd fast float %2562, 0x41CFBF8940000000
  %2564 = fptosi float %2563 to i32
  %2565 = bitcast i32 %2564 to float
  %2566 = fmul fast float %2558, %2546
  %2567 = fmul fast float %2565, %2546
  %2568 = fsub fast float %2551, %2566
  %2569 = fadd fast float %2567, %2551
  %2570 = call float @dx.op.unary.f32(i32 7, float %2568)  ; Saturate(value)
  %2571 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  %2572 = fsub fast float %2540, %2570
  %2573 = fsub fast float %2571, %2570
  %2574 = bitcast float %2573 to i32
  %2575 = sub nsw i32 2129859010, %2574
  %2576 = bitcast i32 %2575 to float
  %2577 = fmul fast float %2576, %2572
  %2578 = call float @dx.op.unary.f32(i32 7, float %2577)  ; Saturate(value)
  br label %2579

; <label>:2579                                    ; preds = %2533, %2527
  %2580 = phi float [ %2578, %2533 ], [ %2528, %2527 ]
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = and i32 %2582, 128
  %2584 = icmp eq i32 %2583, 0
  br i1 %2584, label %2601, label %2585

; <label>:2585                                    ; preds = %2579
  %2586 = add i32 %54, 416
  %2587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2588 = extractvalue %dx.types.ResRet.i32 %2587, 0
  %2589 = add i32 %2588, 0
  %2590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2591 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2590, %dx.types.Handle %96, float %2414, float %2415, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2592 = extractvalue %dx.types.ResRet.f32 %2591, 0
  %2593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2594 = extractvalue %dx.types.ResRet.i32 %2593, 0
  %2595 = and i32 %2594, 524288
  %2596 = icmp ne i32 %2595, 0
  %2597 = fcmp fast ogt float %2592, 0x3FE0101020000000
  %2598 = select i1 %2597, float 1.000000e+00, float 0.000000e+00
  %2599 = select i1 %2596, float %2598, float %2592
  %2600 = fmul fast float %2599, %2580
  br label %2601

; <label>:2601                                    ; preds = %2585, %2579
  %2602 = phi float [ %2600, %2585 ], [ %2580, %2579 ]
  %2603 = fcmp fast ult float %2602, 0x3F70101020000000
  br i1 %2603, label %3342, label %2604

; <label>:2604                                    ; preds = %2601
  %2605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = and i32 %2606, 16
  %2608 = icmp eq i32 %2607, 0
  br i1 %2608, label %2807, label %2609

; <label>:2609                                    ; preds = %2604
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = add i32 %54, 368
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2612, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = add i32 %2614, 0
  %2616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2615, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2617 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2616, %dx.types.Handle %95, float %2414, float %2415, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2618 = extractvalue %dx.types.ResRet.f32 %2617, 0
  %2619 = extractvalue %dx.types.ResRet.f32 %2617, 1
  %2620 = extractvalue %dx.types.ResRet.f32 %2617, 2
  %2621 = extractvalue %dx.types.ResRet.f32 %2617, 3
  %2622 = and i32 %2611, 255
  %2623 = uitofp i32 %2622 to float
  %2624 = lshr i32 %2611, 8
  %2625 = and i32 %2624, 255
  %2626 = uitofp i32 %2625 to float
  %2627 = fmul fast float %2621, %2623
  %2628 = fadd fast float %2627, %2626
  %2629 = fmul fast float %2628, 0x3F70101000000000
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = and i32 %2631, 512
  %2633 = icmp eq i32 %2632, 0
  br i1 %2633, label %2642, label %2634

; <label>:2634                                    ; preds = %2609
  %2635 = add i32 %54, 448
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2635, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = add i32 %2637, 0
  %2639 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2638, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2640 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2639, %dx.types.Handle %96, float %2414, float %2415, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2641 = extractvalue %dx.types.ResRet.f32 %2640, 0
  br label %2642

; <label>:2642                                    ; preds = %2634, %2609
  %2643 = phi float [ %2641, %2634 ], [ 1.000000e+00, %2609 ]
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = and i32 %2645, 33554432
  %2647 = icmp eq i32 %2646, 0
  br i1 %2647, label %2754, label %2648

; <label>:2648                                    ; preds = %2642
  %2649 = add i32 %54, 256
  %2650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2649, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.i32 %2650, 0
  %2652 = and i32 %2651, 65535
  %2653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2652)  ; LegacyF16ToF32(value)
  %2654 = lshr i32 %2651, 16
  %2655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2654)  ; LegacyF16ToF32(value)
  %2656 = add i32 %54, 260
  %2657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2656, i32 undef)  ; BufferLoad(srv,index,wot)
  %2658 = extractvalue %dx.types.ResRet.i32 %2657, 0
  %2659 = and i32 %2658, 65535
  %2660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2659)  ; LegacyF16ToF32(value)
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = lshr i32 %2662, 24
  %2664 = uitofp i32 %2663 to float
  %2665 = fmul fast float %2664, 0x3F70101020000000
  %2666 = and i32 %2662, 255
  %2667 = uitofp i32 %2666 to float
  %2668 = fmul fast float %2667, 0x3F70101020000000
  %2669 = lshr i32 %2662, 8
  %2670 = and i32 %2669, 255
  %2671 = uitofp i32 %2670 to float
  %2672 = fmul fast float %2671, 0x3F70101020000000
  %2673 = lshr i32 %2662, 16
  %2674 = and i32 %2673, 255
  %2675 = uitofp i32 %2674 to float
  %2676 = fmul fast float %2675, 0x3F70101020000000
  %2677 = add i32 %54, 252
  %2678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2679 = extractvalue %dx.types.ResRet.i32 %2678, 0
  %2680 = lshr i32 %2679, 24
  %2681 = uitofp i32 %2680 to float
  %2682 = fmul fast float %2681, 0x3F70101020000000
  %2683 = and i32 %2679, 255
  %2684 = uitofp i32 %2683 to float
  %2685 = fmul fast float %2684, 0x3F70101020000000
  %2686 = lshr i32 %2679, 8
  %2687 = and i32 %2686, 255
  %2688 = uitofp i32 %2687 to float
  %2689 = fmul fast float %2688, 0x3F70101020000000
  %2690 = lshr i32 %2679, 16
  %2691 = and i32 %2690, 255
  %2692 = uitofp i32 %2691 to float
  %2693 = fmul fast float %2692, 0x3F70101020000000
  %2694 = bitcast float %2618 to i32
  %2695 = ashr i32 %2694, 1
  %2696 = sub nsw i32 1597463174, %2695
  %2697 = bitcast i32 %2696 to float
  %2698 = fmul fast float %2618, 5.000000e-01
  %2699 = fmul fast float %2697, %2697
  %2700 = fmul fast float %2699, %2698
  %2701 = fsub fast float 1.500000e+00, %2700
  %2702 = fmul fast float %2697, %2618
  %2703 = fmul fast float %2702, %2701
  %2704 = bitcast float %2619 to i32
  %2705 = ashr i32 %2704, 1
  %2706 = sub nsw i32 1597463174, %2705
  %2707 = bitcast i32 %2706 to float
  %2708 = fmul fast float %2619, 5.000000e-01
  %2709 = fmul fast float %2707, %2707
  %2710 = fmul fast float %2709, %2708
  %2711 = fsub fast float 1.500000e+00, %2710
  %2712 = fmul fast float %2707, %2619
  %2713 = fmul fast float %2712, %2711
  %2714 = bitcast float %2620 to i32
  %2715 = ashr i32 %2714, 1
  %2716 = sub nsw i32 1597463174, %2715
  %2717 = bitcast i32 %2716 to float
  %2718 = fmul fast float %2620, 5.000000e-01
  %2719 = fmul fast float %2717, %2717
  %2720 = fmul fast float %2719, %2718
  %2721 = fsub fast float 1.500000e+00, %2720
  %2722 = fmul fast float %2717, %2620
  %2723 = fmul fast float %2722, %2721
  %2724 = fsub fast float %2703, %2685
  %2725 = fsub fast float %2713, %2689
  %2726 = fsub fast float %2723, %2693
  %2727 = fmul fast float %2724, %2653
  %2728 = fmul fast float %2725, %2655
  %2729 = fmul fast float %2726, %2660
  %2730 = fadd fast float %2727, %2668
  %2731 = fadd fast float %2728, %2672
  %2732 = fadd fast float %2729, %2676
  %2733 = call float @dx.op.unary.f32(i32 7, float %2730)  ; Saturate(value)
  %2734 = call float @dx.op.unary.f32(i32 7, float %2731)  ; Saturate(value)
  %2735 = call float @dx.op.unary.f32(i32 7, float %2732)  ; Saturate(value)
  %2736 = fmul fast float %2733, %2733
  %2737 = fmul fast float %2734, %2734
  %2738 = fmul fast float %2735, %2735
  %2739 = fsub fast float %2736, %2618
  %2740 = fsub fast float %2737, %2619
  %2741 = fsub fast float %2738, %2620
  %2742 = fmul fast float %2739, %2643
  %2743 = fmul fast float %2740, %2643
  %2744 = fmul fast float %2741, %2643
  %2745 = fadd fast float %2742, %2618
  %2746 = fadd fast float %2743, %2619
  %2747 = fadd fast float %2744, %2620
  %2748 = fadd fast float %2665, %2629
  %2749 = fsub fast float %2748, %2682
  %2750 = call float @dx.op.unary.f32(i32 7, float %2749)  ; Saturate(value)
  %2751 = fsub fast float %2750, %2629
  %2752 = fmul fast float %2751, %2643
  %2753 = fadd fast float %2752, %2629
  br label %2807

; <label>:2754                                    ; preds = %2642
  %2755 = and i32 %2645, 134217728
  %2756 = icmp eq i32 %2755, 0
  br i1 %2756, label %2791, label %2757

; <label>:2757                                    ; preds = %2754
  %2758 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %2759 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %2760 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %2761 = fadd fast float %2758, -5.000000e-01
  %2762 = fadd fast float %2759, -5.000000e-01
  %2763 = fadd fast float %2760, -5.000000e-01
  %2764 = fmul fast float %2761, %2643
  %2765 = fmul fast float %2762, %2643
  %2766 = fmul fast float %2763, %2643
  %2767 = fadd fast float %2764, 5.000000e-01
  %2768 = fadd fast float %2765, 5.000000e-01
  %2769 = fadd fast float %2766, 5.000000e-01
  %2770 = call float @dx.op.unary.f32(i32 24, float %2618)  ; Sqrt(value)
  %2771 = call float @dx.op.unary.f32(i32 24, float %2619)  ; Sqrt(value)
  %2772 = call float @dx.op.unary.f32(i32 24, float %2620)  ; Sqrt(value)
  %2773 = fmul fast float %2767, 2.000000e+00
  %2774 = fsub fast float 1.000000e+00, %2773
  %2775 = fmul fast float %2774, %2770
  %2776 = fadd fast float %2775, %2773
  %2777 = fmul fast float %2776, %2770
  %2778 = fmul fast float %2768, 2.000000e+00
  %2779 = fsub fast float 1.000000e+00, %2778
  %2780 = fmul fast float %2779, %2771
  %2781 = fadd fast float %2780, %2778
  %2782 = fmul fast float %2781, %2771
  %2783 = fmul fast float %2769, 2.000000e+00
  %2784 = fsub fast float 1.000000e+00, %2783
  %2785 = fmul fast float %2784, %2772
  %2786 = fadd fast float %2785, %2783
  %2787 = fmul fast float %2786, %2772
  %2788 = fmul fast float %2777, %2777
  %2789 = fmul fast float %2782, %2782
  %2790 = fmul fast float %2787, %2787
  br label %2807

; <label>:2791                                    ; preds = %2754
  %2792 = fmul fast float %329, %329
  %2793 = fmul fast float %333, %333
  %2794 = fmul fast float %337, %337
  %2795 = fadd fast float %2792, -1.000000e+00
  %2796 = fadd fast float %2793, -1.000000e+00
  %2797 = fadd fast float %2794, -1.000000e+00
  %2798 = fmul fast float %2643, %2795
  %2799 = fmul fast float %2643, %2796
  %2800 = fmul fast float %2643, %2797
  %2801 = fadd fast float %2798, 1.000000e+00
  %2802 = fadd fast float %2799, 1.000000e+00
  %2803 = fadd fast float %2800, 1.000000e+00
  %2804 = fmul fast float %2801, %2618
  %2805 = fmul fast float %2802, %2619
  %2806 = fmul fast float %2803, %2620
  br label %2807

; <label>:2807                                    ; preds = %2791, %2757, %2648, %2604
  %2808 = phi float [ %2753, %2648 ], [ %2629, %2757 ], [ %2629, %2791 ], [ 0x3FA23C0BE0000000, %2604 ]
  %2809 = phi float [ %2745, %2648 ], [ %2788, %2757 ], [ %2804, %2791 ], [ 1.000000e+00, %2604 ]
  %2810 = phi float [ %2746, %2648 ], [ %2789, %2757 ], [ %2805, %2791 ], [ 1.000000e+00, %2604 ]
  %2811 = phi float [ %2747, %2648 ], [ %2790, %2757 ], [ %2806, %2791 ], [ 1.000000e+00, %2604 ]
  %2812 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2813 = extractvalue %dx.types.CBufRet.i32 %2812, 1
  %2814 = and i32 %2813, 1
  %2815 = icmp ne i32 %2814, 0
  %2816 = add i32 %54, 356
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = and i32 %2818, 32
  %2820 = icmp ne i32 %2819, 0
  %2821 = and i1 %2815, %2820
  %2822 = select i1 %2821, float 1.000000e+00, float %2809
  %2823 = select i1 %2821, float 0x3FD3333340000000, float %2810
  %2824 = select i1 %2821, float 0x3FD3333340000000, float %2811
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = and i32 %2826, 32
  %2828 = icmp eq i32 %2827, 0
  br i1 %2828, label %2901, label %2829

; <label>:2829                                    ; preds = %2807
  %2830 = add i32 %54, 124
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = add i32 %54, 384
  %2834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %2835 = extractvalue %dx.types.ResRet.i32 %2834, 0
  %2836 = add i32 %2835, 0
  %2837 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2836, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2838 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2837, %dx.types.Handle %95, float %2414, float %2415, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2839 = extractvalue %dx.types.ResRet.f32 %2838, 0
  %2840 = extractvalue %dx.types.ResRet.f32 %2838, 1
  %2841 = extractvalue %dx.types.ResRet.f32 %2838, 2
  %2842 = extractvalue %dx.types.ResRet.f32 %2838, 3
  %2843 = and i32 %2832, 255
  %2844 = uitofp i32 %2843 to float
  %2845 = lshr i32 %2832, 8
  %2846 = and i32 %2845, 255
  %2847 = uitofp i32 %2846 to float
  %2848 = lshr i32 %2832, 16
  %2849 = and i32 %2848, 255
  %2850 = uitofp i32 %2849 to float
  %2851 = fmul fast float %2850, 0x3F70101000000000
  %2852 = fmul fast float %2839, %2844
  %2853 = fadd fast float %2852, %2847
  %2854 = fmul fast float %2853, 0x3F70101000000000
  %2855 = fadd fast float %2840, -5.000000e-01
  %2856 = fadd fast float %2842, -5.000000e-01
  %2857 = fmul fast float %2855, %2851
  %2858 = fmul fast float %2856, %2851
  %2859 = fadd fast float %2857, 5.000000e-01
  %2860 = fadd fast float %2858, 5.000000e-01
  %2861 = fmul fast float %2859, 2.000000e+00
  %2862 = fadd fast float %2861, -1.000000e+00
  %2863 = fmul fast float %2860, 2.000000e+00
  %2864 = fadd fast float %2863, -1.000000e+00
  %2865 = fadd fast float %2862, %2864
  %2866 = fmul fast float %2865, 5.000000e-01
  %2867 = fsub fast float %2862, %2864
  %2868 = fmul fast float %2867, 5.000000e-01
  %2869 = call float @dx.op.unary.f32(i32 6, float %2866)  ; FAbs(value)
  %2870 = fsub fast float 1.000000e+00, %2869
  %2871 = call float @dx.op.unary.f32(i32 6, float %2868)  ; FAbs(value)
  %2872 = fsub fast float %2870, %2871
  %2873 = call float @dx.op.dot3.f32(i32 55, float %2866, float %2868, float %2872, float %2866, float %2868, float %2872)  ; Dot3(ax,ay,az,bx,by,bz)
  %2874 = call float @dx.op.unary.f32(i32 25, float %2873)  ; Rsqrt(value)
  %2875 = fmul fast float %2866, %2874
  %2876 = fmul fast float %2868, %2874
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = and i32 %2878, 67108864
  %2880 = icmp eq i32 %2879, 0
  br i1 %2880, label %2897, label %2881

; <label>:2881                                    ; preds = %2829
  %2882 = add i32 %54, 312
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = and i32 %2884, 65535
  %2886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2885)  ; LegacyF16ToF32(value)
  %2887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = and i32 %2888, 65535
  %2890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2889)  ; LegacyF16ToF32(value)
  %2891 = lshr i32 %2884, 16
  %2892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2891)  ; LegacyF16ToF32(value)
  %2893 = fsub fast float %2854, %2892
  %2894 = fmul fast float %2893, %2886
  %2895 = fadd fast float %2894, %2890
  %2896 = call float @dx.op.unary.f32(i32 7, float %2895)  ; Saturate(value)
  br label %2897

; <label>:2897                                    ; preds = %2881, %2829
  %2898 = phi float [ %2896, %2881 ], [ %2854, %2829 ]
  %2899 = call float @dx.op.dot2.f32(i32 54, float %2875, float %2876, float %2318, float %2319)  ; Dot2(ax,ay,bx,by)
  %2900 = call float @dx.op.dot2.f32(i32 54, float %2875, float %2876, float %2320, float %2321)  ; Dot2(ax,ay,bx,by)
  br label %2901

; <label>:2901                                    ; preds = %2897, %2807
  %2902 = phi float [ %2898, %2897 ], [ 0x3FD6666660000000, %2807 ]
  %2903 = phi float [ %2899, %2897 ], [ 0.000000e+00, %2807 ]
  %2904 = phi float [ %2900, %2897 ], [ 0.000000e+00, %2807 ]
  %2905 = phi float [ %2841, %2897 ], [ 1.000000e+00, %2807 ]
  %2906 = add i32 %54, 192
  %2907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2906, i32 undef)  ; BufferLoad(srv,index,wot)
  %2908 = extractvalue %dx.types.ResRet.i32 %2907, 0
  %2909 = lshr i32 %2908, 22
  %2910 = shl nuw nsw i32 %2909, 5
  %2911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2910)  ; LegacyF16ToF32(value)
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = and i32 %2913, 64
  %2915 = icmp eq i32 %2914, 0
  br i1 %2915, label %2949, label %2916

; <label>:2916                                    ; preds = %2901
  %2917 = add i32 %54, 400
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = add i32 %2919, 0
  %2921 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2920, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = and i32 %2923, 131072
  %2925 = icmp eq i32 %2924, 0
  %2926 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2921, %dx.types.Handle %95, float %2414, float %2415, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2927 = extractvalue %dx.types.ResRet.f32 %2926, 0
  %2928 = extractvalue %dx.types.ResRet.f32 %2926, 1
  %2929 = extractvalue %dx.types.ResRet.f32 %2926, 2
  %2930 = fmul fast float %2927, %317
  %2931 = fmul fast float %2928, %320
  %2932 = fmul fast float %2929, %323
  br i1 %2925, label %2939, label %2933

; <label>:2933                                    ; preds = %2916
  %2934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2935 = extractvalue %dx.types.CBufRet.f32 %2934, 0
  %2936 = fmul fast float %2935, %2930
  %2937 = fmul fast float %2935, %2931
  %2938 = fmul fast float %2935, %2932
  br label %2939

; <label>:2939                                    ; preds = %2933, %2916
  %2940 = phi float [ %2936, %2933 ], [ %2930, %2916 ]
  %2941 = phi float [ %2937, %2933 ], [ %2931, %2916 ]
  %2942 = phi float [ %2938, %2933 ], [ %2932, %2916 ]
  %2943 = fmul fast float %2940, %2911
  %2944 = select i1 %216, float %2943, float %2940
  %2945 = call float @dx.op.dot3.f32(i32 55, float %2944, float %2941, float %2942, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2946 = select i1 %216, float 0.000000e+00, float %2940
  %2947 = select i1 %216, float %2945, float %2941
  %2948 = select i1 %216, float 0.000000e+00, float %2942
  br label %2949

; <label>:2949                                    ; preds = %2939, %2901
  %2950 = phi float [ %2946, %2939 ], [ 0.000000e+00, %2901 ]
  %2951 = phi float [ %2947, %2939 ], [ 0.000000e+00, %2901 ]
  %2952 = phi float [ %2948, %2939 ], [ 0.000000e+00, %2901 ]
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = and i32 %2954, 1024
  %2956 = icmp eq i32 %2955, 0
  br i1 %2956, label %2987, label %2957

; <label>:2957                                    ; preds = %2949
  %2958 = add i32 %54, 184
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2958, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = and i32 %2960, 255
  %2962 = uitofp i32 %2961 to float
  %2963 = fmul fast float %2962, 0x3F70101020000000
  %2964 = lshr i32 %2960, 8
  %2965 = and i32 %2964, 255
  %2966 = uitofp i32 %2965 to float
  %2967 = fmul fast float %2966, 0x3F70101020000000
  %2968 = lshr i32 %2960, 16
  %2969 = and i32 %2968, 255
  %2970 = uitofp i32 %2969 to float
  %2971 = fmul fast float %2970, 0x3F70101020000000
  %2972 = fmul fast float %2963, %2963
  %2973 = fmul fast float %2967, %2967
  %2974 = fmul fast float %2971, %2971
  %2975 = add i32 %54, 464
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = add i32 %2977, 0
  %2979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2978, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2980 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2979, %dx.types.Handle %96, float %2414, float %2415, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2981 = extractvalue %dx.types.ResRet.f32 %2980, 0
  %2982 = extractvalue %dx.types.ResRet.f32 %2980, 1
  %2983 = extractvalue %dx.types.ResRet.f32 %2980, 2
  %2984 = fmul fast float %2972, %2981
  %2985 = fmul fast float %2973, %2982
  %2986 = fmul fast float %2974, %2983
  br label %2987

; <label>:2987                                    ; preds = %2957, %2949
  %2988 = phi float [ %2984, %2957 ], [ 0.000000e+00, %2949 ]
  %2989 = phi float [ %2985, %2957 ], [ 0.000000e+00, %2949 ]
  %2990 = phi float [ %2986, %2957 ], [ 0.000000e+00, %2949 ]
  %2991 = fcmp fast ogt float %2988, 0.000000e+00
  %2992 = fcmp fast ogt float %2989, 0.000000e+00
  %2993 = fcmp fast ogt float %2990, 0.000000e+00
  %2994 = call float @dx.op.unary.f32(i32 23, float %2988)  ; Log(value)
  %2995 = call float @dx.op.unary.f32(i32 23, float %2989)  ; Log(value)
  %2996 = call float @dx.op.unary.f32(i32 23, float %2990)  ; Log(value)
  %2997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2906, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.i32 %2997, 0
  %2999 = lshr i32 %2998, 7
  %3000 = and i32 %2999, 32752
  %3001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3000)  ; LegacyF16ToF32(value)
  %3002 = fmul fast float %2994, 0xBFE62E4300000000
  %3003 = fmul fast float %3002, %3001
  %3004 = fmul fast float %2995, 0xBFE62E4300000000
  %3005 = fmul fast float %3004, %3001
  %3006 = fmul fast float %2996, 0xBFE62E4300000000
  %3007 = fmul fast float %3006, %3001
  %3008 = select i1 %2991, float %3003, float 1.270000e+02
  %3009 = select i1 %2992, float %3005, float 1.270000e+02
  %3010 = select i1 %2993, float %3007, float 1.270000e+02
  %3011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3012 = extractvalue %dx.types.ResRet.i32 %3011, 0
  %3013 = and i32 %3012, 10240
  %3014 = icmp eq i32 %3013, 0
  br i1 %3014, label %3059, label %3015

; <label>:3015                                    ; preds = %2987
  %3016 = add i32 %54, 480
  %3017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3016, i32 undef)  ; BufferLoad(srv,index,wot)
  %3018 = extractvalue %dx.types.ResRet.i32 %3017, 0
  %3019 = add i32 %3018, 0
  %3020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3019, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3021 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3020, %dx.types.Handle %96, float %2414, float %2415, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3022 = extractvalue %dx.types.ResRet.f32 %3021, 1
  %3023 = extractvalue %dx.types.ResRet.f32 %3021, 3
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = and i32 %3025, 1048576
  %3027 = icmp ne i32 %3026, 0
  %3028 = and i32 %3025, 8192
  %3029 = icmp eq i32 %3028, 0
  br i1 %3029, label %3045, label %3030

; <label>:3030                                    ; preds = %3015
  %3031 = extractvalue %dx.types.ResRet.f32 %3021, 2
  %3032 = select i1 %3027, float %3031, float %3022
  %3033 = extractvalue %dx.types.ResRet.f32 %3021, 0
  %3034 = select i1 %3027, float %3033, float %3022
  %3035 = add i32 %54, 128
  %3036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3035, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.i32 %3036, 0
  %3038 = lshr i32 %3037, 16
  %3039 = and i32 %3038, 255
  %3040 = uitofp i32 %3039 to float
  %3041 = fmul fast float %3040, 0x3F80101020000000
  %3042 = fmul fast float %3041, %3034
  %3043 = fmul fast float %3041, %3022
  %3044 = fmul fast float %3041, %3032
  br label %3045

; <label>:3045                                    ; preds = %3030, %3015
  %3046 = phi float [ %3042, %3030 ], [ 0.000000e+00, %3015 ]
  %3047 = phi float [ %3043, %3030 ], [ 0.000000e+00, %3015 ]
  %3048 = phi float [ %3044, %3030 ], [ 0.000000e+00, %3015 ]
  %3049 = and i32 %3025, 2048
  %3050 = icmp eq i32 %3049, 0
  br i1 %3050, label %3059, label %3051

; <label>:3051                                    ; preds = %3045
  %3052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2906, i32 undef)  ; BufferLoad(srv,index,wot)
  %3053 = extractvalue %dx.types.ResRet.i32 %3052, 0
  %3054 = shl i32 %3053, 4
  %3055 = and i32 %3054, 32752
  %3056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3055)  ; LegacyF16ToF32(value)
  %3057 = fmul fast float %3056, %3023
  %3058 = call float @dx.op.binary.f32(i32 35, float %3057, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3059

; <label>:3059                                    ; preds = %3051, %3045, %2987
  %3060 = phi float [ %3046, %3051 ], [ %3046, %3045 ], [ 0.000000e+00, %2987 ]
  %3061 = phi float [ %3047, %3051 ], [ %3047, %3045 ], [ 0.000000e+00, %2987 ]
  %3062 = phi float [ %3048, %3051 ], [ %3048, %3045 ], [ 0.000000e+00, %2987 ]
  %3063 = phi float [ %3058, %3051 ], [ 0x3F70101020000000, %3045 ], [ 0x3F70101020000000, %2987 ]
  %3064 = add i32 %54, 128
  %3065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3064, i32 undef)  ; BufferLoad(srv,index,wot)
  %3066 = extractvalue %dx.types.ResRet.i32 %3065, 0
  %3067 = and i32 %3066, 255
  %3068 = uitofp i32 %3067 to float
  %3069 = lshr i32 %3066, 8
  %3070 = and i32 %3069, 255
  %3071 = uitofp i32 %3070 to float
  %3072 = call float @dx.op.dot3.f32(i32 55, float %2822, float %2823, float %2824, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3073 = fmul fast float %3071, %3072
  %3074 = fadd fast float %3073, %3068
  %3075 = fmul fast float %3074, 0x3F70101020000000
  %3076 = call float @dx.op.unary.f32(i32 7, float %3075)  ; Saturate(value)
  br i1 %2306, label %3077, label %3112

; <label>:3077                                    ; preds = %3059
  %3078 = fmul fast float %3063, 2.000000e+00
  %3079 = fcmp fast olt float %3008, 1.270000e+02
  %3080 = fcmp fast olt float %3009, 1.270000e+02
  %3081 = fcmp fast olt float %3010, 1.270000e+02
  %3082 = fmul fast float %3008, 0xBFF7154760000000
  %3083 = fmul fast float %3082, %3078
  %3084 = fmul fast float %3009, 0xBFF7154760000000
  %3085 = fmul fast float %3084, %3078
  %3086 = fmul fast float %3010, 0xBFF7154760000000
  %3087 = fmul fast float %3086, %3078
  %3088 = call float @dx.op.unary.f32(i32 21, float %3083)  ; Exp(value)
  %3089 = call float @dx.op.unary.f32(i32 21, float %3085)  ; Exp(value)
  %3090 = call float @dx.op.unary.f32(i32 21, float %3087)  ; Exp(value)
  %3091 = call float @dx.op.unary.f32(i32 7, float %3088)  ; Saturate(value)
  %3092 = call float @dx.op.unary.f32(i32 7, float %3089)  ; Saturate(value)
  %3093 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  %3094 = fadd fast float %3091, -1.000000e+00
  %3095 = select i1 %3079, float %3094, float -1.000000e+00
  %3096 = fadd fast float %3092, -1.000000e+00
  %3097 = select i1 %3080, float %3096, float -1.000000e+00
  %3098 = fadd fast float %3093, -1.000000e+00
  %3099 = select i1 %3081, float %3098, float -1.000000e+00
  %3100 = fmul fast float %3095, %2602
  %3101 = fmul fast float %3097, %2602
  %3102 = fmul fast float %3099, %2602
  %3103 = fadd fast float %3100, 1.000000e+00
  %3104 = fadd fast float %3101, 1.000000e+00
  %3105 = fadd fast float %3102, 1.000000e+00
  %3106 = fmul fast float %3103, %2288
  %3107 = fmul fast float %3104, %2289
  %3108 = fmul fast float %3105, %2290
  %3109 = fmul fast float %3103, %2291
  %3110 = fmul fast float %3104, %2292
  %3111 = fmul fast float %3105, %2293
  br label %3112

; <label>:3112                                    ; preds = %3077, %3059
  %3113 = phi float [ %3106, %3077 ], [ %2288, %3059 ]
  %3114 = phi float [ %3107, %3077 ], [ %2289, %3059 ]
  %3115 = phi float [ %3108, %3077 ], [ %2290, %3059 ]
  %3116 = phi float [ %3109, %3077 ], [ %2291, %3059 ]
  %3117 = phi float [ %3110, %3077 ], [ %2292, %3059 ]
  %3118 = phi float [ %3111, %3077 ], [ %2293, %3059 ]
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = and i32 %3120, 3
  %3122 = icmp eq i32 %3121, 3
  br i1 %3122, label %3201, label %3123

; <label>:3123                                    ; preds = %3112
  %3124 = and i32 %3120, 16
  %3125 = icmp ne i32 %3124, 0
  %3126 = select i1 %3125, float %2602, float 0.000000e+00
  %3127 = icmp eq i32 %3121, 0
  br i1 %3127, label %3128, label %3156

; <label>:3128                                    ; preds = %3123
  %3129 = and i32 %3120, 64
  %3130 = icmp ne i32 %3129, 0
  %3131 = select i1 %3130, float %2602, float 0.000000e+00
  %3132 = fsub fast float %2822, %3113
  %3133 = fsub fast float %2823, %3114
  %3134 = fsub fast float %2824, %3115
  %3135 = fmul fast float %3126, %3132
  %3136 = fmul fast float %3126, %3133
  %3137 = fmul fast float %3126, %3134
  %3138 = fadd fast float %3135, %3113
  %3139 = fadd fast float %3136, %3114
  %3140 = fadd fast float %3137, %3115
  %3141 = fsub fast float %2808, %2300
  %3142 = fmul fast float %3126, %3141
  %3143 = fadd fast float %3142, %2300
  %3144 = fsub fast float %2950, %3116
  %3145 = fsub fast float %2951, %3117
  %3146 = fsub fast float %2952, %3118
  %3147 = fmul fast float %3131, %3144
  %3148 = fmul fast float %3131, %3145
  %3149 = fmul fast float %3131, %3146
  %3150 = fadd fast float %3147, %3116
  %3151 = fadd fast float %3148, %3117
  %3152 = fadd fast float %3149, %3118
  %3153 = fsub fast float %3076, %2304
  %3154 = fmul fast float %3126, %3153
  %3155 = fadd fast float %3154, %2304
  br label %3201

; <label>:3156                                    ; preds = %3123
  %3157 = icmp eq i32 %3121, 1
  br i1 %3157, label %3158, label %3171

; <label>:3158                                    ; preds = %3156
  %3159 = fadd fast float %2822, -1.000000e+00
  %3160 = fadd fast float %2823, -1.000000e+00
  %3161 = fadd fast float %2824, -1.000000e+00
  %3162 = fmul fast float %3126, %3159
  %3163 = fmul fast float %3126, %3160
  %3164 = fmul fast float %3126, %3161
  %3165 = fadd fast float %3162, 1.000000e+00
  %3166 = fadd fast float %3163, 1.000000e+00
  %3167 = fadd fast float %3164, 1.000000e+00
  %3168 = fmul fast float %3165, %3113
  %3169 = fmul fast float %3166, %3114
  %3170 = fmul fast float %3167, %3115
  br label %3201

; <label>:3171                                    ; preds = %3156
  %3172 = icmp eq i32 %3121, 2
  br i1 %3172, label %3173, label %3201

; <label>:3173                                    ; preds = %3171
  %3174 = call float @dx.op.unary.f32(i32 24, float %2822)  ; Sqrt(value)
  %3175 = call float @dx.op.unary.f32(i32 24, float %2823)  ; Sqrt(value)
  %3176 = call float @dx.op.unary.f32(i32 24, float %2824)  ; Sqrt(value)
  %3177 = fadd fast float %3174, -5.000000e-01
  %3178 = fadd fast float %3175, -5.000000e-01
  %3179 = fadd fast float %3176, -5.000000e-01
  %3180 = fmul fast float %3177, %3126
  %3181 = fmul fast float %3178, %3126
  %3182 = fmul fast float %3179, %3126
  %3183 = fadd fast float %3180, 5.000000e-01
  %3184 = fadd fast float %3181, 5.000000e-01
  %3185 = fadd fast float %3182, 5.000000e-01
  %3186 = fmul fast float %3183, 2.000000e+00
  %3187 = fsub fast float 1.000000e+00, %3186
  %3188 = fmul fast float %3187, %3113
  %3189 = fadd fast float %3188, %3186
  %3190 = fmul fast float %3189, %3113
  %3191 = fmul fast float %3184, 2.000000e+00
  %3192 = fsub fast float 1.000000e+00, %3191
  %3193 = fmul fast float %3192, %3114
  %3194 = fadd fast float %3193, %3191
  %3195 = fmul fast float %3194, %3114
  %3196 = fmul fast float %3185, 2.000000e+00
  %3197 = fsub fast float 1.000000e+00, %3196
  %3198 = fmul fast float %3197, %3115
  %3199 = fadd fast float %3198, %3196
  %3200 = fmul fast float %3199, %3115
  br label %3201

; <label>:3201                                    ; preds = %3173, %3171, %3158, %3128, %3112
  %3202 = phi float [ %3113, %3112 ], [ %3190, %3173 ], [ %3113, %3171 ], [ %3168, %3158 ], [ %3138, %3128 ]
  %3203 = phi float [ %3114, %3112 ], [ %3195, %3173 ], [ %3114, %3171 ], [ %3169, %3158 ], [ %3139, %3128 ]
  %3204 = phi float [ %3115, %3112 ], [ %3200, %3173 ], [ %3115, %3171 ], [ %3170, %3158 ], [ %3140, %3128 ]
  %3205 = phi float [ %3116, %3112 ], [ %3116, %3173 ], [ %3116, %3171 ], [ %3116, %3158 ], [ %3150, %3128 ]
  %3206 = phi float [ %3117, %3112 ], [ %3117, %3173 ], [ %3117, %3171 ], [ %3117, %3158 ], [ %3151, %3128 ]
  %3207 = phi float [ %3118, %3112 ], [ %3118, %3173 ], [ %3118, %3171 ], [ %3118, %3158 ], [ %3152, %3128 ]
  %3208 = phi float [ %2300, %3112 ], [ %2300, %3173 ], [ %2300, %3171 ], [ %2300, %3158 ], [ %3143, %3128 ]
  %3209 = phi float [ %2304, %3112 ], [ %2304, %3173 ], [ %2304, %3171 ], [ %2304, %3158 ], [ %3155, %3128 ]
  %3210 = and i32 %3120, 12
  %3211 = icmp eq i32 %3210, 12
  br i1 %3211, label %3342, label %3212

; <label>:3212                                    ; preds = %3201
  %3213 = and i32 %3120, 2097184
  %3214 = icmp eq i32 %3213, 2097184
  %3215 = select i1 %3214, float %2602, float 0.000000e+00
  %3216 = and i32 %3120, 4194336
  %3217 = icmp eq i32 %3216, 4194336
  %3218 = select i1 %3217, float %2602, float 0.000000e+00
  %3219 = and i32 %3120, 8388640
  %3220 = icmp eq i32 %3219, 8388640
  %3221 = select i1 %3220, float %2602, float 0.000000e+00
  %3222 = and i32 %3120, 1024
  %3223 = icmp ne i32 %3222, 0
  %3224 = select i1 %3223, float %2602, float 0.000000e+00
  %3225 = and i32 %3120, 2048
  %3226 = icmp ne i32 %3225, 0
  %3227 = select i1 %3226, float %2602, float 0.000000e+00
  %3228 = and i32 %3120, 8192
  %3229 = icmp ne i32 %3228, 0
  %3230 = select i1 %3229, float %2602, float 0.000000e+00
  %3231 = icmp eq i32 %3210, 0
  br i1 %3231, label %3232, label %3266

; <label>:3232                                    ; preds = %3212
  %3233 = fsub fast float %2903, %2286
  %3234 = fsub fast float %2904, %2287
  %3235 = fmul fast float %3215, %3233
  %3236 = fmul fast float %3215, %3234
  %3237 = fadd fast float %3235, %2286
  %3238 = fadd fast float %3236, %2287
  %3239 = fsub fast float %2905, %2302
  %3240 = fmul fast float %3218, %3239
  %3241 = fadd fast float %3240, %2302
  %3242 = fsub fast float %2902, %2301
  %3243 = fmul fast float %3221, %3242
  %3244 = fadd fast float %3243, %2301
  %3245 = fsub fast float %3008, %2297
  %3246 = fsub fast float %3009, %2298
  %3247 = fsub fast float %3010, %2299
  %3248 = fmul fast float %3224, %3245
  %3249 = fmul fast float %3224, %3246
  %3250 = fmul fast float %3224, %3247
  %3251 = fadd fast float %3248, %2297
  %3252 = fadd fast float %3249, %2298
  %3253 = fadd fast float %3250, %2299
  %3254 = fsub fast float %3063, %2303
  %3255 = fmul fast float %3227, %3254
  %3256 = fadd fast float %3255, %2303
  %3257 = fsub fast float %3060, %2294
  %3258 = fsub fast float %3061, %2295
  %3259 = fsub fast float %3062, %2296
  %3260 = fmul fast float %3230, %3257
  %3261 = fmul fast float %3230, %3258
  %3262 = fmul fast float %3230, %3259
  %3263 = fadd fast float %3260, %2294
  %3264 = fadd fast float %3261, %2295
  %3265 = fadd fast float %3262, %2296
  br label %3342

; <label>:3266                                    ; preds = %3212
  %3267 = icmp eq i32 %3210, 4
  br i1 %3267, label %3268, label %3314

; <label>:3268                                    ; preds = %3266
  %3269 = fmul fast float %3215, %2903
  %3270 = fmul fast float %3215, %2904
  %3271 = fadd fast float %3269, %2286
  %3272 = fadd fast float %3270, %2287
  %3273 = call float @dx.op.binary.f32(i32 36, float %2302, float %2905)  ; FMin(a,b)
  %3274 = fsub fast float %3273, %2302
  %3275 = fmul fast float %3274, %3218
  %3276 = fadd fast float %3275, %2302
  %3277 = fadd fast float %2902, %2301
  %3278 = fmul fast float %3277, 0x3FF337FAE0000000
  %3279 = fmul fast float %2301, %2301
  %3280 = fmul fast float %2902, %2902
  %3281 = fadd fast float %3280, %3279
  %3282 = fmul fast float %3281, 0x3FE5152B00000000
  %3283 = fmul fast float %2301, 0xBFCC1F85E0000000
  %3284 = fmul fast float %3283, %2902
  %3285 = fadd fast float %3284, 0xBFE1363700000000
  %3286 = fadd fast float %3285, %3278
  %3287 = fsub fast float %3286, %3282
  %3288 = fmul fast float %3277, 0x3FBA6F0D00000000
  %3289 = fmul fast float %3281, 0x3FD0432880000000
  %3290 = fmul fast float %2301, 0xBFEF110800000000
  %3291 = fmul fast float %3290, %2902
  %3292 = fadd fast float %3291, 1.000000e+00
  %3293 = fsub fast float %3292, %3288
  %3294 = fadd fast float %3293, %3289
  %3295 = fdiv fast float %3287, %3294
  %3296 = call float @dx.op.unary.f32(i32 7, float %3295)  ; Saturate(value)
  %3297 = fsub fast float %3296, %2301
  %3298 = fmul fast float %3297, %3221
  %3299 = fadd fast float %3298, %2301
  %3300 = fmul fast float %3224, %3008
  %3301 = fmul fast float %3224, %3009
  %3302 = fmul fast float %3224, %3010
  %3303 = fadd fast float %3300, %2297
  %3304 = fadd fast float %3301, %2298
  %3305 = fadd fast float %3302, %2299
  %3306 = fmul fast float %3227, %3063
  %3307 = fadd fast float %3306, %2303
  %3308 = fmul fast float %3230, %3060
  %3309 = fmul fast float %3230, %3061
  %3310 = fmul fast float %3230, %3062
  %3311 = fadd fast float %3308, %2294
  %3312 = fadd fast float %3309, %2295
  %3313 = fadd fast float %3310, %2296
  br label %3342

; <label>:3314                                    ; preds = %3266
  %3315 = icmp eq i32 %3210, 8
  br i1 %3315, label %3316, label %3342

; <label>:3316                                    ; preds = %3314
  %3317 = fmul fast float %3215, %2903
  %3318 = fmul fast float %3215, %2904
  %3319 = fadd fast float %3317, %2286
  %3320 = fadd fast float %3318, %2287
  %3321 = call float @dx.op.binary.f32(i32 36, float %2302, float %2905)  ; FMin(a,b)
  %3322 = fsub fast float %3321, %2302
  %3323 = fmul fast float %3322, %3218
  %3324 = fadd fast float %3323, %2302
  %3325 = fsub fast float %2902, %2301
  %3326 = fmul fast float %3221, %3325
  %3327 = fadd fast float %3326, %2301
  %3328 = fmul fast float %3224, %3008
  %3329 = fmul fast float %3224, %3009
  %3330 = fmul fast float %3224, %3010
  %3331 = fadd fast float %3328, %2297
  %3332 = fadd fast float %3329, %2298
  %3333 = fadd fast float %3330, %2299
  %3334 = fmul fast float %3227, %3063
  %3335 = fadd fast float %3334, %2303
  %3336 = fmul fast float %3230, %3060
  %3337 = fmul fast float %3230, %3061
  %3338 = fmul fast float %3230, %3062
  %3339 = fadd fast float %3336, %2294
  %3340 = fadd fast float %3337, %2295
  %3341 = fadd fast float %3338, %2296
  br label %3342

; <label>:3342                                    ; preds = %3316, %3314, %3268, %3232, %3201, %2601, %2305, %2285
  %3343 = phi float [ %2286, %3201 ], [ %2286, %2601 ], [ %2286, %2285 ], [ %3319, %3316 ], [ %2286, %3314 ], [ %3271, %3268 ], [ %3237, %3232 ], [ %2286, %2305 ]
  %3344 = phi float [ %2287, %3201 ], [ %2287, %2601 ], [ %2287, %2285 ], [ %3320, %3316 ], [ %2287, %3314 ], [ %3272, %3268 ], [ %3238, %3232 ], [ %2287, %2305 ]
  %3345 = phi float [ %3202, %3201 ], [ %2288, %2601 ], [ %2288, %2285 ], [ %3202, %3316 ], [ %3202, %3314 ], [ %3202, %3268 ], [ %3202, %3232 ], [ %2288, %2305 ]
  %3346 = phi float [ %3203, %3201 ], [ %2289, %2601 ], [ %2289, %2285 ], [ %3203, %3316 ], [ %3203, %3314 ], [ %3203, %3268 ], [ %3203, %3232 ], [ %2289, %2305 ]
  %3347 = phi float [ %3204, %3201 ], [ %2290, %2601 ], [ %2290, %2285 ], [ %3204, %3316 ], [ %3204, %3314 ], [ %3204, %3268 ], [ %3204, %3232 ], [ %2290, %2305 ]
  %3348 = phi float [ %3205, %3201 ], [ %2291, %2601 ], [ %2291, %2285 ], [ %3205, %3316 ], [ %3205, %3314 ], [ %3205, %3268 ], [ %3205, %3232 ], [ %2291, %2305 ]
  %3349 = phi float [ %3206, %3201 ], [ %2292, %2601 ], [ %2292, %2285 ], [ %3206, %3316 ], [ %3206, %3314 ], [ %3206, %3268 ], [ %3206, %3232 ], [ %2292, %2305 ]
  %3350 = phi float [ %3207, %3201 ], [ %2293, %2601 ], [ %2293, %2285 ], [ %3207, %3316 ], [ %3207, %3314 ], [ %3207, %3268 ], [ %3207, %3232 ], [ %2293, %2305 ]
  %3351 = phi float [ %2294, %3201 ], [ %2294, %2601 ], [ %2294, %2285 ], [ %3339, %3316 ], [ %2294, %3314 ], [ %3311, %3268 ], [ %3263, %3232 ], [ %2294, %2305 ]
  %3352 = phi float [ %2295, %3201 ], [ %2295, %2601 ], [ %2295, %2285 ], [ %3340, %3316 ], [ %2295, %3314 ], [ %3312, %3268 ], [ %3264, %3232 ], [ %2295, %2305 ]
  %3353 = phi float [ %2296, %3201 ], [ %2296, %2601 ], [ %2296, %2285 ], [ %3341, %3316 ], [ %2296, %3314 ], [ %3313, %3268 ], [ %3265, %3232 ], [ %2296, %2305 ]
  %3354 = phi float [ %2297, %3201 ], [ %2297, %2601 ], [ %2297, %2285 ], [ %3331, %3316 ], [ %2297, %3314 ], [ %3303, %3268 ], [ %3251, %3232 ], [ %2297, %2305 ]
  %3355 = phi float [ %2298, %3201 ], [ %2298, %2601 ], [ %2298, %2285 ], [ %3332, %3316 ], [ %2298, %3314 ], [ %3304, %3268 ], [ %3252, %3232 ], [ %2298, %2305 ]
  %3356 = phi float [ %2299, %3201 ], [ %2299, %2601 ], [ %2299, %2285 ], [ %3333, %3316 ], [ %2299, %3314 ], [ %3305, %3268 ], [ %3253, %3232 ], [ %2299, %2305 ]
  %3357 = phi float [ %3208, %3201 ], [ %2300, %2601 ], [ %2300, %2285 ], [ %3208, %3316 ], [ %3208, %3314 ], [ %3208, %3268 ], [ %3208, %3232 ], [ %2300, %2305 ]
  %3358 = phi float [ %2301, %3201 ], [ %2301, %2601 ], [ %2301, %2285 ], [ %3327, %3316 ], [ %2301, %3314 ], [ %3299, %3268 ], [ %3244, %3232 ], [ %2301, %2305 ]
  %3359 = phi float [ %2302, %3201 ], [ %2302, %2601 ], [ %2302, %2285 ], [ %3324, %3316 ], [ %2302, %3314 ], [ %3276, %3268 ], [ %3241, %3232 ], [ %2302, %2305 ]
  %3360 = phi float [ %2303, %3201 ], [ %2303, %2601 ], [ %2303, %2285 ], [ %3335, %3316 ], [ %2303, %3314 ], [ %3307, %3268 ], [ %3256, %3232 ], [ %2303, %2305 ]
  %3361 = phi float [ %3209, %3201 ], [ %2304, %2601 ], [ %2304, %2285 ], [ %3209, %3316 ], [ %3209, %3314 ], [ %3209, %3268 ], [ %3209, %3232 ], [ %2304, %2305 ]
  br i1 %404, label %4399, label %3362

; <label>:3362                                    ; preds = %3342
  %3363 = icmp ult i32 %458, 4
  %3364 = add i32 %54, 72
  %3365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.i32 %3365, 0
  %3367 = add i32 %54, 76
  %3368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3369 = extractvalue %dx.types.ResRet.i32 %3368, 0
  %3370 = or i32 %3369, %3366
  %3371 = icmp eq i32 %3370, 0
  br i1 %3371, label %4399, label %3372

; <label>:3372                                    ; preds = %3362
  %3373 = and i32 %3366, 262144
  %3374 = icmp ne i32 %3373, 0
  %3375 = select i1 %3374, float %56, float 1.000000e+00
  %3376 = select i1 %3374, float %57, float 0.000000e+00
  %3377 = select i1 %3374, float %58, float 0.000000e+00
  %3378 = select i1 %3374, float %59, float 1.000000e+00
  %3379 = select i1 %3374, float %60, float %81
  %3380 = select i1 %3374, float %61, float %82
  %3381 = add i32 %54, 332
  %3382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3381, i32 undef)  ; BufferLoad(srv,index,wot)
  %3383 = extractvalue %dx.types.ResRet.i32 %3382, 0
  %3384 = lshr i32 %3383, 16
  %3385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3384)  ; LegacyF16ToF32(value)
  %3386 = fmul fast float %3385, 0x3F50624DE0000000
  %3387 = add i32 %54, 136
  %3388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3389 = extractvalue %dx.types.ResRet.i32 %3388, 0
  %3390 = lshr i32 %3389, 16
  %3391 = and i32 %3390, 255
  %3392 = lshr i32 %3389, 24
  %3393 = add i32 %54, 340
  %3394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.i32 %3394, 0
  %3396 = and i32 %3395, 65535
  %3397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3396)  ; LegacyF16ToF32(value)
  %3398 = lshr i32 %3395, 16
  %3399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3398)  ; LegacyF16ToF32(value)
  %3400 = add i32 %54, 80
  %3401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.i32 %3401, 0
  %3403 = lshr i32 %3402, 22
  %3404 = shl nuw nsw i32 %3403, 5
  %3405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3404)  ; LegacyF16ToF32(value)
  %3406 = shl i32 %3402, 4
  %3407 = and i32 %3406, 32752
  %3408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3407)  ; LegacyF16ToF32(value)
  %3409 = lshr i32 %3402, 7
  %3410 = and i32 %3409, 32752
  %3411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3410)  ; LegacyF16ToF32(value)
  %3412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3413 = extractvalue %dx.types.CBufRet.f32 %3412, 3
  %3414 = fmul fast float %3413, 1.000000e+03
  %3415 = fmul fast float %394, %3414
  %3416 = call float @dx.op.unary.f32(i32 22, float %3415)  ; Frc(value)
  %3417 = fadd fast float %3416, %384
  %3418 = fmul fast float %395, %3414
  %3419 = call float @dx.op.unary.f32(i32 22, float %3418)  ; Frc(value)
  %3420 = fadd fast float %3419, %386
  %3421 = fmul fast float %3386, %3414
  %3422 = call float @dx.op.unary.f32(i32 22, float %3421)  ; Frc(value)
  %3423 = fmul fast float %3422, 0x401921FB60000000
  %3424 = fadd fast float %3423, %3405
  %3425 = call float @dx.op.unary.f32(i32 13, float %3424)  ; Sin(value)
  %3426 = call float @dx.op.unary.f32(i32 12, float %3424)  ; Cos(value)
  %3427 = fsub fast float -0.000000e+00, %3425
  %3428 = fadd fast float %3379, -5.000000e-01
  %3429 = fadd fast float %3380, -5.000000e-01
  %3430 = fmul fast float %3397, %3428
  %3431 = fmul fast float %3399, %3429
  %3432 = fadd fast float %3430, 5.000000e-01
  %3433 = fadd fast float %3431, 5.000000e-01
  %3434 = fmul fast float %3408, %3432
  %3435 = fmul fast float %3411, %3433
  %3436 = fmul fast float %3426, %3434
  %3437 = call float @dx.op.tertiary.f32(i32 46, float %3427, float %3435, float %3436)  ; FMad(a,b,c)
  %3438 = fmul fast float %3425, %3434
  %3439 = call float @dx.op.tertiary.f32(i32 46, float %3426, float %3435, float %3438)  ; FMad(a,b,c)
  %3440 = fadd fast float %3417, %3437
  %3441 = fadd fast float %3420, %3439
  %3442 = icmp ugt i32 %3391, 1
  %3443 = icmp ugt i32 %3389, 33554431
  %3444 = or i1 %3443, %3442
  br i1 %3444, label %3445, label %3470

; <label>:3445                                    ; preds = %3372
  %3446 = add i32 %54, 276
  %3447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.i32 %3447, 0
  %3449 = lshr i32 %3448, 16
  %3450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3449)  ; LegacyF16ToF32(value)
  %3451 = fmul fast float %3413, %3450
  %3452 = call float @dx.op.unary.f32(i32 22, float %3451)  ; Frc(value)
  %3453 = mul nuw nsw i32 %3391, %3392
  %3454 = uitofp i32 %3453 to float
  %3455 = fmul fast float %3452, %3454
  %3456 = call float @dx.op.unary.f32(i32 27, float %3455)  ; Round_ni(value)
  %3457 = fptoui float %3456 to i32
  %3458 = urem i32 %3457, %3391
  %3459 = udiv i32 %3457, %3392
  %3460 = call float @dx.op.unary.f32(i32 22, float %3440)  ; Frc(value)
  %3461 = call float @dx.op.unary.f32(i32 22, float %3441)  ; Frc(value)
  %3462 = uitofp i32 %3458 to float
  %3463 = uitofp i32 %3459 to float
  %3464 = fadd fast float %3460, %3462
  %3465 = fadd fast float %3461, %3463
  %3466 = uitofp i32 %3391 to float
  %3467 = uitofp i32 %3392 to float
  %3468 = fdiv fast float %3464, %3466
  %3469 = fdiv fast float %3465, %3467
  br label %3470

; <label>:3470                                    ; preds = %3445, %3372
  %3471 = phi float [ %3468, %3445 ], [ %3440, %3372 ]
  %3472 = phi float [ %3469, %3445 ], [ %3441, %3372 ]
  %3473 = and i32 %3366, 16777216
  %3474 = icmp eq i32 %3473, 0
  br i1 %3474, label %3584, label %3475

; <label>:3475                                    ; preds = %3470
  %3476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3477 = extractvalue %dx.types.CBufRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.CBufRet.f32 %3476, 1
  %3479 = extractvalue %dx.types.CBufRet.f32 %3476, 2
  %3480 = fadd fast float %3477, %154
  %3481 = fadd fast float %3478, %155
  %3482 = fadd fast float %3479, %156
  %3483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3484 = extractvalue %dx.types.CBufRet.f32 %3483, 0
  %3485 = call float @dx.op.unary.f32(i32 7, float %3484)  ; Saturate(value)
  %3486 = icmp eq i32 %55, 65535
  br i1 %3486, label %3581, label %3487

; <label>:3487                                    ; preds = %3475
  %3488 = lshr i32 %55, 1
  %3489 = shl i32 %3488, 2
  %3490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3489, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.i32 %3490, 0
  %3492 = and i32 %55, 1
  %3493 = icmp ne i32 %3492, 0
  %3494 = lshr i32 %3491, 16
  %3495 = and i32 %3491, 65535
  %3496 = select i1 %3493, i32 %3494, i32 %3495
  %3497 = icmp eq i32 %3496, 65535
  br i1 %3497, label %3577, label %3498

; <label>:3498                                    ; preds = %3487
  %3499 = mul nuw nsw i32 %3496, 40
  %3500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.f32 %3500, 0
  %3502 = extractvalue %dx.types.ResRet.f32 %3500, 1
  %3503 = extractvalue %dx.types.ResRet.f32 %3500, 2
  %3504 = add nuw nsw i32 %3499, 12
  %3505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3504, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.f32 %3505, 0
  %3507 = extractvalue %dx.types.ResRet.f32 %3505, 1
  %3508 = extractvalue %dx.types.ResRet.f32 %3505, 2
  %3509 = add nuw nsw i32 %3499, 24
  %3510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3509, i32 undef)  ; BufferLoad(srv,index,wot)
  %3511 = extractvalue %dx.types.ResRet.f32 %3510, 0
  %3512 = extractvalue %dx.types.ResRet.f32 %3510, 1
  %3513 = extractvalue %dx.types.ResRet.f32 %3510, 2
  %3514 = add nuw nsw i32 %3499, 36
  %3515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3514, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.f32 %3515, 0
  %3517 = fsub fast float %3480, %3501
  %3518 = fsub fast float %3481, %3502
  %3519 = fsub fast float %3482, %3503
  %3520 = fmul fast float %3516, %3517
  %3521 = fmul fast float %3516, %3518
  %3522 = fmul fast float %3516, %3519
  %3523 = call float @dx.op.unary.f32(i32 27, float %3520)  ; Round_ni(value)
  %3524 = call float @dx.op.unary.f32(i32 27, float %3521)  ; Round_ni(value)
  %3525 = call float @dx.op.unary.f32(i32 27, float %3522)  ; Round_ni(value)
  %3526 = fadd fast float %3523, 5.000000e-01
  %3527 = fadd fast float %3524, 5.000000e-01
  %3528 = fadd fast float %3525, 5.000000e-01
  %3529 = fmul fast float %3526, %3506
  %3530 = fmul fast float %3527, %3507
  %3531 = fmul fast float %3528, %3508
  %3532 = shl i32 %55, 2
  %3533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.i32 %3533, 0
  %3535 = add i32 %3534, 0
  %3536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3535, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3537 = call float @dx.op.unary.f32(i32 22, float %3529)  ; Frc(value)
  %3538 = call float @dx.op.unary.f32(i32 22, float %3530)  ; Frc(value)
  %3539 = call float @dx.op.unary.f32(i32 22, float %3531)  ; Frc(value)
  %3540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3536, %dx.types.Handle %49, float %3537, float %3538, float %3539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3541 = extractvalue %dx.types.ResRet.f32 %3540, 0
  %3542 = extractvalue %dx.types.ResRet.f32 %3540, 1
  %3543 = extractvalue %dx.types.ResRet.f32 %3540, 2
  %3544 = fmul fast float %3541, 1.023000e+03
  %3545 = fmul fast float %3542, 1.023000e+03
  %3546 = fmul fast float %3543, 1.023000e+03
  %3547 = fadd fast float %3544, 5.000000e-01
  %3548 = fadd fast float %3545, 5.000000e-01
  %3549 = fadd fast float %3546, 5.000000e-01
  %3550 = call float @dx.op.unary.f32(i32 27, float %3547)  ; Round_ni(value)
  %3551 = call float @dx.op.unary.f32(i32 27, float %3548)  ; Round_ni(value)
  %3552 = call float @dx.op.unary.f32(i32 27, float %3549)  ; Round_ni(value)
  %3553 = fsub fast float %3520, %3523
  %3554 = fsub fast float %3521, %3524
  %3555 = fsub fast float %3522, %3525
  %3556 = fmul fast float %3553, 7.500000e-01
  %3557 = fmul fast float %3554, 7.500000e-01
  %3558 = fmul fast float %3555, 7.500000e-01
  %3559 = fadd fast float %3523, 1.250000e-01
  %3560 = fadd fast float %3559, %3556
  %3561 = fadd fast float %3560, %3550
  %3562 = fadd fast float %3524, 1.250000e-01
  %3563 = fadd fast float %3562, %3557
  %3564 = fadd fast float %3563, %3551
  %3565 = fadd fast float %3525, 1.250000e-01
  %3566 = fadd fast float %3565, %3558
  %3567 = fadd fast float %3566, %3552
  %3568 = fmul fast float %3561, %3511
  %3569 = fmul fast float %3564, %3512
  %3570 = fmul fast float %3567, %3513
  %3571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3572 = extractvalue %dx.types.ResRet.i32 %3571, 0
  %3573 = add i32 %3572, 0
  %3574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3574, %dx.types.Handle %47, float %3568, float %3569, float %3570, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3576 = extractvalue %dx.types.ResRet.f32 %3575, 0
  br label %3577

; <label>:3577                                    ; preds = %3498, %3487
  %3578 = phi float [ %3576, %3498 ], [ -1.000000e+00, %3487 ]
  %3579 = fadd fast float %3578, %3485
  %3580 = call float @dx.op.unary.f32(i32 7, float %3579)  ; Saturate(value)
  br label %3581

; <label>:3581                                    ; preds = %3577, %3475
  %3582 = phi float [ %3580, %3577 ], [ %3485, %3475 ]
  %3583 = fmul fast float %3582, %453
  br label %3584

; <label>:3584                                    ; preds = %3581, %3470
  %3585 = phi float [ %3583, %3581 ], [ %453, %3470 ]
  %3586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3587 = extractvalue %dx.types.ResRet.i32 %3586, 0
  %3588 = and i32 %3587, 256
  %3589 = icmp eq i32 %3588, 0
  br i1 %3589, label %3636, label %3590

; <label>:3590                                    ; preds = %3584
  %3591 = add i32 %54, 436
  %3592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.i32 %3592, 0
  %3594 = add i32 %3593, 0
  %3595 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3594, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3596 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3595, %dx.types.Handle %96, float %3471, float %3472, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3597 = extractvalue %dx.types.ResRet.f32 %3596, 0
  %3598 = add i32 %54, 148
  %3599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.i32 %3599, 0
  %3601 = shl i32 %3600, 4
  %3602 = and i32 %3601, 32752
  %3603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3602)  ; LegacyF16ToF32(value)
  %3604 = lshr i32 %3600, 7
  %3605 = and i32 %3604, 32752
  %3606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3605)  ; LegacyF16ToF32(value)
  %3607 = fsub fast float 1.000000e+00, %3585
  %3608 = call float @dx.op.binary.f32(i32 35, float %3607, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3609 = bitcast float %3585 to i32
  %3610 = sitofp i32 %3609 to float
  %3611 = fadd fast float %3610, 0xC1CFBF8940000000
  %3612 = fmul fast float %3606, %3611
  %3613 = fadd fast float %3612, 0x41CFBF8940000000
  %3614 = fptosi float %3613 to i32
  %3615 = bitcast i32 %3614 to float
  %3616 = bitcast float %3608 to i32
  %3617 = sitofp i32 %3616 to float
  %3618 = fadd fast float %3617, 0xC1CFBF8940000000
  %3619 = fmul fast float %3618, %3606
  %3620 = fadd fast float %3619, 0x41CFBF8940000000
  %3621 = fptosi float %3620 to i32
  %3622 = bitcast i32 %3621 to float
  %3623 = fmul fast float %3615, %3603
  %3624 = fmul fast float %3622, %3603
  %3625 = fsub fast float %3608, %3623
  %3626 = fadd fast float %3624, %3608
  %3627 = call float @dx.op.unary.f32(i32 7, float %3625)  ; Saturate(value)
  %3628 = call float @dx.op.unary.f32(i32 7, float %3626)  ; Saturate(value)
  %3629 = fsub fast float %3597, %3627
  %3630 = fsub fast float %3628, %3627
  %3631 = bitcast float %3630 to i32
  %3632 = sub nsw i32 2129859010, %3631
  %3633 = bitcast i32 %3632 to float
  %3634 = fmul fast float %3633, %3629
  %3635 = call float @dx.op.unary.f32(i32 7, float %3634)  ; Saturate(value)
  br label %3636

; <label>:3636                                    ; preds = %3590, %3584
  %3637 = phi float [ %3635, %3590 ], [ %3585, %3584 ]
  %3638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3639 = extractvalue %dx.types.ResRet.i32 %3638, 0
  %3640 = and i32 %3639, 128
  %3641 = icmp eq i32 %3640, 0
  br i1 %3641, label %3658, label %3642

; <label>:3642                                    ; preds = %3636
  %3643 = add i32 %54, 420
  %3644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.i32 %3644, 0
  %3646 = add i32 %3645, 0
  %3647 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3646, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3648 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3647, %dx.types.Handle %96, float %3471, float %3472, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3649 = extractvalue %dx.types.ResRet.f32 %3648, 0
  %3650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.i32 %3650, 0
  %3652 = and i32 %3651, 524288
  %3653 = icmp ne i32 %3652, 0
  %3654 = fcmp fast ogt float %3649, 0x3FE0101020000000
  %3655 = select i1 %3654, float 1.000000e+00, float 0.000000e+00
  %3656 = select i1 %3653, float %3655, float %3649
  %3657 = fmul fast float %3656, %3637
  br label %3658

; <label>:3658                                    ; preds = %3642, %3636
  %3659 = phi float [ %3657, %3642 ], [ %3637, %3636 ]
  %3660 = fcmp fast ult float %3659, 0x3F70101020000000
  br i1 %3660, label %4399, label %3661

; <label>:3661                                    ; preds = %3658
  %3662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3663 = extractvalue %dx.types.ResRet.i32 %3662, 0
  %3664 = and i32 %3663, 16
  %3665 = icmp eq i32 %3664, 0
  br i1 %3665, label %3864, label %3666

; <label>:3666                                    ; preds = %3661
  %3667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.i32 %3667, 0
  %3669 = add i32 %54, 372
  %3670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3669, i32 undef)  ; BufferLoad(srv,index,wot)
  %3671 = extractvalue %dx.types.ResRet.i32 %3670, 0
  %3672 = add i32 %3671, 0
  %3673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3674 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3673, %dx.types.Handle %95, float %3471, float %3472, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3675 = extractvalue %dx.types.ResRet.f32 %3674, 0
  %3676 = extractvalue %dx.types.ResRet.f32 %3674, 1
  %3677 = extractvalue %dx.types.ResRet.f32 %3674, 2
  %3678 = extractvalue %dx.types.ResRet.f32 %3674, 3
  %3679 = and i32 %3668, 255
  %3680 = uitofp i32 %3679 to float
  %3681 = lshr i32 %3668, 8
  %3682 = and i32 %3681, 255
  %3683 = uitofp i32 %3682 to float
  %3684 = fmul fast float %3678, %3680
  %3685 = fadd fast float %3684, %3683
  %3686 = fmul fast float %3685, 0x3F70101000000000
  %3687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.i32 %3687, 0
  %3689 = and i32 %3688, 512
  %3690 = icmp eq i32 %3689, 0
  br i1 %3690, label %3699, label %3691

; <label>:3691                                    ; preds = %3666
  %3692 = add i32 %54, 452
  %3693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3694 = extractvalue %dx.types.ResRet.i32 %3693, 0
  %3695 = add i32 %3694, 0
  %3696 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3695, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3697 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3696, %dx.types.Handle %96, float %3471, float %3472, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3698 = extractvalue %dx.types.ResRet.f32 %3697, 0
  br label %3699

; <label>:3699                                    ; preds = %3691, %3666
  %3700 = phi float [ %3698, %3691 ], [ 1.000000e+00, %3666 ]
  %3701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3702 = extractvalue %dx.types.ResRet.i32 %3701, 0
  %3703 = and i32 %3702, 33554432
  %3704 = icmp eq i32 %3703, 0
  br i1 %3704, label %3811, label %3705

; <label>:3705                                    ; preds = %3699
  %3706 = add i32 %54, 272
  %3707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3706, i32 undef)  ; BufferLoad(srv,index,wot)
  %3708 = extractvalue %dx.types.ResRet.i32 %3707, 0
  %3709 = and i32 %3708, 65535
  %3710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3709)  ; LegacyF16ToF32(value)
  %3711 = lshr i32 %3708, 16
  %3712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3711)  ; LegacyF16ToF32(value)
  %3713 = add i32 %54, 276
  %3714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3715 = extractvalue %dx.types.ResRet.i32 %3714, 0
  %3716 = and i32 %3715, 65535
  %3717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3716)  ; LegacyF16ToF32(value)
  %3718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3719 = extractvalue %dx.types.ResRet.i32 %3718, 0
  %3720 = lshr i32 %3719, 24
  %3721 = uitofp i32 %3720 to float
  %3722 = fmul fast float %3721, 0x3F70101020000000
  %3723 = and i32 %3719, 255
  %3724 = uitofp i32 %3723 to float
  %3725 = fmul fast float %3724, 0x3F70101020000000
  %3726 = lshr i32 %3719, 8
  %3727 = and i32 %3726, 255
  %3728 = uitofp i32 %3727 to float
  %3729 = fmul fast float %3728, 0x3F70101020000000
  %3730 = lshr i32 %3719, 16
  %3731 = and i32 %3730, 255
  %3732 = uitofp i32 %3731 to float
  %3733 = fmul fast float %3732, 0x3F70101020000000
  %3734 = add i32 %54, 268
  %3735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3734, i32 undef)  ; BufferLoad(srv,index,wot)
  %3736 = extractvalue %dx.types.ResRet.i32 %3735, 0
  %3737 = lshr i32 %3736, 24
  %3738 = uitofp i32 %3737 to float
  %3739 = fmul fast float %3738, 0x3F70101020000000
  %3740 = and i32 %3736, 255
  %3741 = uitofp i32 %3740 to float
  %3742 = fmul fast float %3741, 0x3F70101020000000
  %3743 = lshr i32 %3736, 8
  %3744 = and i32 %3743, 255
  %3745 = uitofp i32 %3744 to float
  %3746 = fmul fast float %3745, 0x3F70101020000000
  %3747 = lshr i32 %3736, 16
  %3748 = and i32 %3747, 255
  %3749 = uitofp i32 %3748 to float
  %3750 = fmul fast float %3749, 0x3F70101020000000
  %3751 = bitcast float %3675 to i32
  %3752 = ashr i32 %3751, 1
  %3753 = sub nsw i32 1597463174, %3752
  %3754 = bitcast i32 %3753 to float
  %3755 = fmul fast float %3675, 5.000000e-01
  %3756 = fmul fast float %3754, %3754
  %3757 = fmul fast float %3756, %3755
  %3758 = fsub fast float 1.500000e+00, %3757
  %3759 = fmul fast float %3754, %3675
  %3760 = fmul fast float %3759, %3758
  %3761 = bitcast float %3676 to i32
  %3762 = ashr i32 %3761, 1
  %3763 = sub nsw i32 1597463174, %3762
  %3764 = bitcast i32 %3763 to float
  %3765 = fmul fast float %3676, 5.000000e-01
  %3766 = fmul fast float %3764, %3764
  %3767 = fmul fast float %3766, %3765
  %3768 = fsub fast float 1.500000e+00, %3767
  %3769 = fmul fast float %3764, %3676
  %3770 = fmul fast float %3769, %3768
  %3771 = bitcast float %3677 to i32
  %3772 = ashr i32 %3771, 1
  %3773 = sub nsw i32 1597463174, %3772
  %3774 = bitcast i32 %3773 to float
  %3775 = fmul fast float %3677, 5.000000e-01
  %3776 = fmul fast float %3774, %3774
  %3777 = fmul fast float %3776, %3775
  %3778 = fsub fast float 1.500000e+00, %3777
  %3779 = fmul fast float %3774, %3677
  %3780 = fmul fast float %3779, %3778
  %3781 = fsub fast float %3760, %3742
  %3782 = fsub fast float %3770, %3746
  %3783 = fsub fast float %3780, %3750
  %3784 = fmul fast float %3781, %3710
  %3785 = fmul fast float %3782, %3712
  %3786 = fmul fast float %3783, %3717
  %3787 = fadd fast float %3784, %3725
  %3788 = fadd fast float %3785, %3729
  %3789 = fadd fast float %3786, %3733
  %3790 = call float @dx.op.unary.f32(i32 7, float %3787)  ; Saturate(value)
  %3791 = call float @dx.op.unary.f32(i32 7, float %3788)  ; Saturate(value)
  %3792 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  %3793 = fmul fast float %3790, %3790
  %3794 = fmul fast float %3791, %3791
  %3795 = fmul fast float %3792, %3792
  %3796 = fsub fast float %3793, %3675
  %3797 = fsub fast float %3794, %3676
  %3798 = fsub fast float %3795, %3677
  %3799 = fmul fast float %3796, %3700
  %3800 = fmul fast float %3797, %3700
  %3801 = fmul fast float %3798, %3700
  %3802 = fadd fast float %3799, %3675
  %3803 = fadd fast float %3800, %3676
  %3804 = fadd fast float %3801, %3677
  %3805 = fadd fast float %3722, %3686
  %3806 = fsub fast float %3805, %3739
  %3807 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3808 = fsub fast float %3807, %3686
  %3809 = fmul fast float %3808, %3700
  %3810 = fadd fast float %3809, %3686
  br label %3864

; <label>:3811                                    ; preds = %3699
  %3812 = and i32 %3702, 134217728
  %3813 = icmp eq i32 %3812, 0
  br i1 %3813, label %3848, label %3814

; <label>:3814                                    ; preds = %3811
  %3815 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %3816 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %3817 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %3818 = fadd fast float %3815, -5.000000e-01
  %3819 = fadd fast float %3816, -5.000000e-01
  %3820 = fadd fast float %3817, -5.000000e-01
  %3821 = fmul fast float %3818, %3700
  %3822 = fmul fast float %3819, %3700
  %3823 = fmul fast float %3820, %3700
  %3824 = fadd fast float %3821, 5.000000e-01
  %3825 = fadd fast float %3822, 5.000000e-01
  %3826 = fadd fast float %3823, 5.000000e-01
  %3827 = call float @dx.op.unary.f32(i32 24, float %3675)  ; Sqrt(value)
  %3828 = call float @dx.op.unary.f32(i32 24, float %3676)  ; Sqrt(value)
  %3829 = call float @dx.op.unary.f32(i32 24, float %3677)  ; Sqrt(value)
  %3830 = fmul fast float %3824, 2.000000e+00
  %3831 = fsub fast float 1.000000e+00, %3830
  %3832 = fmul fast float %3831, %3827
  %3833 = fadd fast float %3832, %3830
  %3834 = fmul fast float %3833, %3827
  %3835 = fmul fast float %3825, 2.000000e+00
  %3836 = fsub fast float 1.000000e+00, %3835
  %3837 = fmul fast float %3836, %3828
  %3838 = fadd fast float %3837, %3835
  %3839 = fmul fast float %3838, %3828
  %3840 = fmul fast float %3826, 2.000000e+00
  %3841 = fsub fast float 1.000000e+00, %3840
  %3842 = fmul fast float %3841, %3829
  %3843 = fadd fast float %3842, %3840
  %3844 = fmul fast float %3843, %3829
  %3845 = fmul fast float %3834, %3834
  %3846 = fmul fast float %3839, %3839
  %3847 = fmul fast float %3844, %3844
  br label %3864

; <label>:3848                                    ; preds = %3811
  %3849 = fmul fast float %371, %371
  %3850 = fmul fast float %375, %375
  %3851 = fmul fast float %379, %379
  %3852 = fadd fast float %3849, -1.000000e+00
  %3853 = fadd fast float %3850, -1.000000e+00
  %3854 = fadd fast float %3851, -1.000000e+00
  %3855 = fmul fast float %3700, %3852
  %3856 = fmul fast float %3700, %3853
  %3857 = fmul fast float %3700, %3854
  %3858 = fadd fast float %3855, 1.000000e+00
  %3859 = fadd fast float %3856, 1.000000e+00
  %3860 = fadd fast float %3857, 1.000000e+00
  %3861 = fmul fast float %3858, %3675
  %3862 = fmul fast float %3859, %3676
  %3863 = fmul fast float %3860, %3677
  br label %3864

; <label>:3864                                    ; preds = %3848, %3814, %3705, %3661
  %3865 = phi float [ %3810, %3705 ], [ %3686, %3814 ], [ %3686, %3848 ], [ 0x3FA23C0BE0000000, %3661 ]
  %3866 = phi float [ %3802, %3705 ], [ %3845, %3814 ], [ %3861, %3848 ], [ 1.000000e+00, %3661 ]
  %3867 = phi float [ %3803, %3705 ], [ %3846, %3814 ], [ %3862, %3848 ], [ 1.000000e+00, %3661 ]
  %3868 = phi float [ %3804, %3705 ], [ %3847, %3814 ], [ %3863, %3848 ], [ 1.000000e+00, %3661 ]
  %3869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3870 = extractvalue %dx.types.CBufRet.i32 %3869, 1
  %3871 = and i32 %3870, 1
  %3872 = icmp ne i32 %3871, 0
  %3873 = add i32 %54, 356
  %3874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3873, i32 undef)  ; BufferLoad(srv,index,wot)
  %3875 = extractvalue %dx.types.ResRet.i32 %3874, 0
  %3876 = and i32 %3875, 32
  %3877 = icmp ne i32 %3876, 0
  %3878 = and i1 %3872, %3877
  %3879 = select i1 %3878, float 1.000000e+00, float %3866
  %3880 = select i1 %3878, float 0x3FD3333340000000, float %3867
  %3881 = select i1 %3878, float 0x3FD3333340000000, float %3868
  %3882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3883 = extractvalue %dx.types.ResRet.i32 %3882, 0
  %3884 = and i32 %3883, 32
  %3885 = icmp eq i32 %3884, 0
  br i1 %3885, label %3958, label %3886

; <label>:3886                                    ; preds = %3864
  %3887 = add i32 %54, 140
  %3888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.i32 %3888, 0
  %3890 = add i32 %54, 388
  %3891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3890, i32 undef)  ; BufferLoad(srv,index,wot)
  %3892 = extractvalue %dx.types.ResRet.i32 %3891, 0
  %3893 = add i32 %3892, 0
  %3894 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3893, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3895 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3894, %dx.types.Handle %95, float %3471, float %3472, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3896 = extractvalue %dx.types.ResRet.f32 %3895, 0
  %3897 = extractvalue %dx.types.ResRet.f32 %3895, 1
  %3898 = extractvalue %dx.types.ResRet.f32 %3895, 2
  %3899 = extractvalue %dx.types.ResRet.f32 %3895, 3
  %3900 = and i32 %3889, 255
  %3901 = uitofp i32 %3900 to float
  %3902 = lshr i32 %3889, 8
  %3903 = and i32 %3902, 255
  %3904 = uitofp i32 %3903 to float
  %3905 = lshr i32 %3889, 16
  %3906 = and i32 %3905, 255
  %3907 = uitofp i32 %3906 to float
  %3908 = fmul fast float %3907, 0x3F70101000000000
  %3909 = fmul fast float %3896, %3901
  %3910 = fadd fast float %3909, %3904
  %3911 = fmul fast float %3910, 0x3F70101000000000
  %3912 = fadd fast float %3897, -5.000000e-01
  %3913 = fadd fast float %3899, -5.000000e-01
  %3914 = fmul fast float %3912, %3908
  %3915 = fmul fast float %3913, %3908
  %3916 = fadd fast float %3914, 5.000000e-01
  %3917 = fadd fast float %3915, 5.000000e-01
  %3918 = fmul fast float %3916, 2.000000e+00
  %3919 = fadd fast float %3918, -1.000000e+00
  %3920 = fmul fast float %3917, 2.000000e+00
  %3921 = fadd fast float %3920, -1.000000e+00
  %3922 = fadd fast float %3919, %3921
  %3923 = fmul fast float %3922, 5.000000e-01
  %3924 = fsub fast float %3919, %3921
  %3925 = fmul fast float %3924, 5.000000e-01
  %3926 = call float @dx.op.unary.f32(i32 6, float %3923)  ; FAbs(value)
  %3927 = fsub fast float 1.000000e+00, %3926
  %3928 = call float @dx.op.unary.f32(i32 6, float %3925)  ; FAbs(value)
  %3929 = fsub fast float %3927, %3928
  %3930 = call float @dx.op.dot3.f32(i32 55, float %3923, float %3925, float %3929, float %3923, float %3925, float %3929)  ; Dot3(ax,ay,az,bx,by,bz)
  %3931 = call float @dx.op.unary.f32(i32 25, float %3930)  ; Rsqrt(value)
  %3932 = fmul fast float %3923, %3931
  %3933 = fmul fast float %3925, %3931
  %3934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3935 = extractvalue %dx.types.ResRet.i32 %3934, 0
  %3936 = and i32 %3935, 67108864
  %3937 = icmp eq i32 %3936, 0
  br i1 %3937, label %3954, label %3938

; <label>:3938                                    ; preds = %3886
  %3939 = add i32 %54, 328
  %3940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3939, i32 undef)  ; BufferLoad(srv,index,wot)
  %3941 = extractvalue %dx.types.ResRet.i32 %3940, 0
  %3942 = and i32 %3941, 65535
  %3943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3942)  ; LegacyF16ToF32(value)
  %3944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3381, i32 undef)  ; BufferLoad(srv,index,wot)
  %3945 = extractvalue %dx.types.ResRet.i32 %3944, 0
  %3946 = and i32 %3945, 65535
  %3947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3946)  ; LegacyF16ToF32(value)
  %3948 = lshr i32 %3941, 16
  %3949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3948)  ; LegacyF16ToF32(value)
  %3950 = fsub fast float %3911, %3949
  %3951 = fmul fast float %3950, %3943
  %3952 = fadd fast float %3951, %3947
  %3953 = call float @dx.op.unary.f32(i32 7, float %3952)  ; Saturate(value)
  br label %3954

; <label>:3954                                    ; preds = %3938, %3886
  %3955 = phi float [ %3953, %3938 ], [ %3911, %3886 ]
  %3956 = call float @dx.op.dot2.f32(i32 54, float %3932, float %3933, float %3375, float %3376)  ; Dot2(ax,ay,bx,by)
  %3957 = call float @dx.op.dot2.f32(i32 54, float %3932, float %3933, float %3377, float %3378)  ; Dot2(ax,ay,bx,by)
  br label %3958

; <label>:3958                                    ; preds = %3954, %3864
  %3959 = phi float [ %3955, %3954 ], [ 0x3FD6666660000000, %3864 ]
  %3960 = phi float [ %3956, %3954 ], [ 0.000000e+00, %3864 ]
  %3961 = phi float [ %3957, %3954 ], [ 0.000000e+00, %3864 ]
  %3962 = phi float [ %3898, %3954 ], [ 1.000000e+00, %3864 ]
  %3963 = add i32 %54, 208
  %3964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3965 = extractvalue %dx.types.ResRet.i32 %3964, 0
  %3966 = lshr i32 %3965, 22
  %3967 = shl nuw nsw i32 %3966, 5
  %3968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3967)  ; LegacyF16ToF32(value)
  %3969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3970 = extractvalue %dx.types.ResRet.i32 %3969, 0
  %3971 = and i32 %3970, 64
  %3972 = icmp eq i32 %3971, 0
  br i1 %3972, label %4006, label %3973

; <label>:3973                                    ; preds = %3958
  %3974 = add i32 %54, 404
  %3975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3974, i32 undef)  ; BufferLoad(srv,index,wot)
  %3976 = extractvalue %dx.types.ResRet.i32 %3975, 0
  %3977 = add i32 %3976, 0
  %3978 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3977, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3980 = extractvalue %dx.types.ResRet.i32 %3979, 0
  %3981 = and i32 %3980, 131072
  %3982 = icmp eq i32 %3981, 0
  %3983 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3978, %dx.types.Handle %95, float %3471, float %3472, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3984 = extractvalue %dx.types.ResRet.f32 %3983, 0
  %3985 = extractvalue %dx.types.ResRet.f32 %3983, 1
  %3986 = extractvalue %dx.types.ResRet.f32 %3983, 2
  %3987 = fmul fast float %3984, %359
  %3988 = fmul fast float %3985, %362
  %3989 = fmul fast float %3986, %365
  br i1 %3982, label %3996, label %3990

; <label>:3990                                    ; preds = %3973
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 0
  %3993 = fmul fast float %3992, %3987
  %3994 = fmul fast float %3992, %3988
  %3995 = fmul fast float %3992, %3989
  br label %3996

; <label>:3996                                    ; preds = %3990, %3973
  %3997 = phi float [ %3993, %3990 ], [ %3987, %3973 ]
  %3998 = phi float [ %3994, %3990 ], [ %3988, %3973 ]
  %3999 = phi float [ %3995, %3990 ], [ %3989, %3973 ]
  %4000 = fmul fast float %3997, %3968
  %4001 = select i1 %216, float %4000, float %3997
  %4002 = call float @dx.op.dot3.f32(i32 55, float %4001, float %3998, float %3999, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4003 = select i1 %216, float 0.000000e+00, float %3997
  %4004 = select i1 %216, float %4002, float %3998
  %4005 = select i1 %216, float 0.000000e+00, float %3999
  br label %4006

; <label>:4006                                    ; preds = %3996, %3958
  %4007 = phi float [ %4003, %3996 ], [ 0.000000e+00, %3958 ]
  %4008 = phi float [ %4004, %3996 ], [ 0.000000e+00, %3958 ]
  %4009 = phi float [ %4005, %3996 ], [ 0.000000e+00, %3958 ]
  %4010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %4011 = extractvalue %dx.types.ResRet.i32 %4010, 0
  %4012 = and i32 %4011, 1024
  %4013 = icmp eq i32 %4012, 0
  br i1 %4013, label %4044, label %4014

; <label>:4014                                    ; preds = %4006
  %4015 = add i32 %54, 200
  %4016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4015, i32 undef)  ; BufferLoad(srv,index,wot)
  %4017 = extractvalue %dx.types.ResRet.i32 %4016, 0
  %4018 = and i32 %4017, 255
  %4019 = uitofp i32 %4018 to float
  %4020 = fmul fast float %4019, 0x3F70101020000000
  %4021 = lshr i32 %4017, 8
  %4022 = and i32 %4021, 255
  %4023 = uitofp i32 %4022 to float
  %4024 = fmul fast float %4023, 0x3F70101020000000
  %4025 = lshr i32 %4017, 16
  %4026 = and i32 %4025, 255
  %4027 = uitofp i32 %4026 to float
  %4028 = fmul fast float %4027, 0x3F70101020000000
  %4029 = fmul fast float %4020, %4020
  %4030 = fmul fast float %4024, %4024
  %4031 = fmul fast float %4028, %4028
  %4032 = add i32 %54, 468
  %4033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4032, i32 undef)  ; BufferLoad(srv,index,wot)
  %4034 = extractvalue %dx.types.ResRet.i32 %4033, 0
  %4035 = add i32 %4034, 0
  %4036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4035, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4037 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4036, %dx.types.Handle %96, float %3471, float %3472, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.ResRet.f32 %4037, 1
  %4040 = extractvalue %dx.types.ResRet.f32 %4037, 2
  %4041 = fmul fast float %4029, %4038
  %4042 = fmul fast float %4030, %4039
  %4043 = fmul fast float %4031, %4040
  br label %4044

; <label>:4044                                    ; preds = %4014, %4006
  %4045 = phi float [ %4041, %4014 ], [ 0.000000e+00, %4006 ]
  %4046 = phi float [ %4042, %4014 ], [ 0.000000e+00, %4006 ]
  %4047 = phi float [ %4043, %4014 ], [ 0.000000e+00, %4006 ]
  %4048 = fcmp fast ogt float %4045, 0.000000e+00
  %4049 = fcmp fast ogt float %4046, 0.000000e+00
  %4050 = fcmp fast ogt float %4047, 0.000000e+00
  %4051 = call float @dx.op.unary.f32(i32 23, float %4045)  ; Log(value)
  %4052 = call float @dx.op.unary.f32(i32 23, float %4046)  ; Log(value)
  %4053 = call float @dx.op.unary.f32(i32 23, float %4047)  ; Log(value)
  %4054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3963, i32 undef)  ; BufferLoad(srv,index,wot)
  %4055 = extractvalue %dx.types.ResRet.i32 %4054, 0
  %4056 = lshr i32 %4055, 7
  %4057 = and i32 %4056, 32752
  %4058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4057)  ; LegacyF16ToF32(value)
  %4059 = fmul fast float %4051, 0xBFE62E4300000000
  %4060 = fmul fast float %4059, %4058
  %4061 = fmul fast float %4052, 0xBFE62E4300000000
  %4062 = fmul fast float %4061, %4058
  %4063 = fmul fast float %4053, 0xBFE62E4300000000
  %4064 = fmul fast float %4063, %4058
  %4065 = select i1 %4048, float %4060, float 1.270000e+02
  %4066 = select i1 %4049, float %4062, float 1.270000e+02
  %4067 = select i1 %4050, float %4064, float 1.270000e+02
  %4068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %4069 = extractvalue %dx.types.ResRet.i32 %4068, 0
  %4070 = and i32 %4069, 10240
  %4071 = icmp eq i32 %4070, 0
  br i1 %4071, label %4116, label %4072

; <label>:4072                                    ; preds = %4044
  %4073 = add i32 %54, 484
  %4074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.i32 %4074, 0
  %4076 = add i32 %4075, 0
  %4077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4076, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4078 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4077, %dx.types.Handle %96, float %3471, float %3472, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4079 = extractvalue %dx.types.ResRet.f32 %4078, 1
  %4080 = extractvalue %dx.types.ResRet.f32 %4078, 3
  %4081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %4082 = extractvalue %dx.types.ResRet.i32 %4081, 0
  %4083 = and i32 %4082, 1048576
  %4084 = icmp ne i32 %4083, 0
  %4085 = and i32 %4082, 8192
  %4086 = icmp eq i32 %4085, 0
  br i1 %4086, label %4102, label %4087

; <label>:4087                                    ; preds = %4072
  %4088 = extractvalue %dx.types.ResRet.f32 %4078, 2
  %4089 = select i1 %4084, float %4088, float %4079
  %4090 = extractvalue %dx.types.ResRet.f32 %4078, 0
  %4091 = select i1 %4084, float %4090, float %4079
  %4092 = add i32 %54, 144
  %4093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4092, i32 undef)  ; BufferLoad(srv,index,wot)
  %4094 = extractvalue %dx.types.ResRet.i32 %4093, 0
  %4095 = lshr i32 %4094, 16
  %4096 = and i32 %4095, 255
  %4097 = uitofp i32 %4096 to float
  %4098 = fmul fast float %4097, 0x3F80101020000000
  %4099 = fmul fast float %4098, %4091
  %4100 = fmul fast float %4098, %4079
  %4101 = fmul fast float %4098, %4089
  br label %4102

; <label>:4102                                    ; preds = %4087, %4072
  %4103 = phi float [ %4099, %4087 ], [ 0.000000e+00, %4072 ]
  %4104 = phi float [ %4100, %4087 ], [ 0.000000e+00, %4072 ]
  %4105 = phi float [ %4101, %4087 ], [ 0.000000e+00, %4072 ]
  %4106 = and i32 %4082, 2048
  %4107 = icmp eq i32 %4106, 0
  br i1 %4107, label %4116, label %4108

; <label>:4108                                    ; preds = %4102
  %4109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3963, i32 undef)  ; BufferLoad(srv,index,wot)
  %4110 = extractvalue %dx.types.ResRet.i32 %4109, 0
  %4111 = shl i32 %4110, 4
  %4112 = and i32 %4111, 32752
  %4113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4112)  ; LegacyF16ToF32(value)
  %4114 = fmul fast float %4113, %4080
  %4115 = call float @dx.op.binary.f32(i32 35, float %4114, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4116

; <label>:4116                                    ; preds = %4108, %4102, %4044
  %4117 = phi float [ %4103, %4108 ], [ %4103, %4102 ], [ 0.000000e+00, %4044 ]
  %4118 = phi float [ %4104, %4108 ], [ %4104, %4102 ], [ 0.000000e+00, %4044 ]
  %4119 = phi float [ %4105, %4108 ], [ %4105, %4102 ], [ 0.000000e+00, %4044 ]
  %4120 = phi float [ %4115, %4108 ], [ 0x3F70101020000000, %4102 ], [ 0x3F70101020000000, %4044 ]
  %4121 = add i32 %54, 144
  %4122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4121, i32 undef)  ; BufferLoad(srv,index,wot)
  %4123 = extractvalue %dx.types.ResRet.i32 %4122, 0
  %4124 = and i32 %4123, 255
  %4125 = uitofp i32 %4124 to float
  %4126 = lshr i32 %4123, 8
  %4127 = and i32 %4126, 255
  %4128 = uitofp i32 %4127 to float
  %4129 = call float @dx.op.dot3.f32(i32 55, float %3879, float %3880, float %3881, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4130 = fmul fast float %4128, %4129
  %4131 = fadd fast float %4130, %4125
  %4132 = fmul fast float %4131, 0x3F70101020000000
  %4133 = call float @dx.op.unary.f32(i32 7, float %4132)  ; Saturate(value)
  br i1 %3363, label %4134, label %4169

; <label>:4134                                    ; preds = %4116
  %4135 = fmul fast float %4120, 2.000000e+00
  %4136 = fcmp fast olt float %4065, 1.270000e+02
  %4137 = fcmp fast olt float %4066, 1.270000e+02
  %4138 = fcmp fast olt float %4067, 1.270000e+02
  %4139 = fmul fast float %4065, 0xBFF7154760000000
  %4140 = fmul fast float %4139, %4135
  %4141 = fmul fast float %4066, 0xBFF7154760000000
  %4142 = fmul fast float %4141, %4135
  %4143 = fmul fast float %4067, 0xBFF7154760000000
  %4144 = fmul fast float %4143, %4135
  %4145 = call float @dx.op.unary.f32(i32 21, float %4140)  ; Exp(value)
  %4146 = call float @dx.op.unary.f32(i32 21, float %4142)  ; Exp(value)
  %4147 = call float @dx.op.unary.f32(i32 21, float %4144)  ; Exp(value)
  %4148 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4149 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4150 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4151 = fadd fast float %4148, -1.000000e+00
  %4152 = select i1 %4136, float %4151, float -1.000000e+00
  %4153 = fadd fast float %4149, -1.000000e+00
  %4154 = select i1 %4137, float %4153, float -1.000000e+00
  %4155 = fadd fast float %4150, -1.000000e+00
  %4156 = select i1 %4138, float %4155, float -1.000000e+00
  %4157 = fmul fast float %4152, %3659
  %4158 = fmul fast float %4154, %3659
  %4159 = fmul fast float %4156, %3659
  %4160 = fadd fast float %4157, 1.000000e+00
  %4161 = fadd fast float %4158, 1.000000e+00
  %4162 = fadd fast float %4159, 1.000000e+00
  %4163 = fmul fast float %4160, %3345
  %4164 = fmul fast float %4161, %3346
  %4165 = fmul fast float %4162, %3347
  %4166 = fmul fast float %4160, %3348
  %4167 = fmul fast float %4161, %3349
  %4168 = fmul fast float %4162, %3350
  br label %4169

; <label>:4169                                    ; preds = %4134, %4116
  %4170 = phi float [ %4163, %4134 ], [ %3345, %4116 ]
  %4171 = phi float [ %4164, %4134 ], [ %3346, %4116 ]
  %4172 = phi float [ %4165, %4134 ], [ %3347, %4116 ]
  %4173 = phi float [ %4166, %4134 ], [ %3348, %4116 ]
  %4174 = phi float [ %4167, %4134 ], [ %3349, %4116 ]
  %4175 = phi float [ %4168, %4134 ], [ %3350, %4116 ]
  %4176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %4177 = extractvalue %dx.types.ResRet.i32 %4176, 0
  %4178 = and i32 %4177, 3
  %4179 = icmp eq i32 %4178, 3
  br i1 %4179, label %4258, label %4180

; <label>:4180                                    ; preds = %4169
  %4181 = and i32 %4177, 16
  %4182 = icmp ne i32 %4181, 0
  %4183 = select i1 %4182, float %3659, float 0.000000e+00
  %4184 = icmp eq i32 %4178, 0
  br i1 %4184, label %4185, label %4213

; <label>:4185                                    ; preds = %4180
  %4186 = and i32 %4177, 64
  %4187 = icmp ne i32 %4186, 0
  %4188 = select i1 %4187, float %3659, float 0.000000e+00
  %4189 = fsub fast float %3879, %4170
  %4190 = fsub fast float %3880, %4171
  %4191 = fsub fast float %3881, %4172
  %4192 = fmul fast float %4183, %4189
  %4193 = fmul fast float %4183, %4190
  %4194 = fmul fast float %4183, %4191
  %4195 = fadd fast float %4192, %4170
  %4196 = fadd fast float %4193, %4171
  %4197 = fadd fast float %4194, %4172
  %4198 = fsub fast float %3865, %3357
  %4199 = fmul fast float %4183, %4198
  %4200 = fadd fast float %4199, %3357
  %4201 = fsub fast float %4007, %4173
  %4202 = fsub fast float %4008, %4174
  %4203 = fsub fast float %4009, %4175
  %4204 = fmul fast float %4188, %4201
  %4205 = fmul fast float %4188, %4202
  %4206 = fmul fast float %4188, %4203
  %4207 = fadd fast float %4204, %4173
  %4208 = fadd fast float %4205, %4174
  %4209 = fadd fast float %4206, %4175
  %4210 = fsub fast float %4133, %3361
  %4211 = fmul fast float %4183, %4210
  %4212 = fadd fast float %4211, %3361
  br label %4258

; <label>:4213                                    ; preds = %4180
  %4214 = icmp eq i32 %4178, 1
  br i1 %4214, label %4215, label %4228

; <label>:4215                                    ; preds = %4213
  %4216 = fadd fast float %3879, -1.000000e+00
  %4217 = fadd fast float %3880, -1.000000e+00
  %4218 = fadd fast float %3881, -1.000000e+00
  %4219 = fmul fast float %4183, %4216
  %4220 = fmul fast float %4183, %4217
  %4221 = fmul fast float %4183, %4218
  %4222 = fadd fast float %4219, 1.000000e+00
  %4223 = fadd fast float %4220, 1.000000e+00
  %4224 = fadd fast float %4221, 1.000000e+00
  %4225 = fmul fast float %4222, %4170
  %4226 = fmul fast float %4223, %4171
  %4227 = fmul fast float %4224, %4172
  br label %4258

; <label>:4228                                    ; preds = %4213
  %4229 = icmp eq i32 %4178, 2
  br i1 %4229, label %4230, label %4258

; <label>:4230                                    ; preds = %4228
  %4231 = call float @dx.op.unary.f32(i32 24, float %3879)  ; Sqrt(value)
  %4232 = call float @dx.op.unary.f32(i32 24, float %3880)  ; Sqrt(value)
  %4233 = call float @dx.op.unary.f32(i32 24, float %3881)  ; Sqrt(value)
  %4234 = fadd fast float %4231, -5.000000e-01
  %4235 = fadd fast float %4232, -5.000000e-01
  %4236 = fadd fast float %4233, -5.000000e-01
  %4237 = fmul fast float %4234, %4183
  %4238 = fmul fast float %4235, %4183
  %4239 = fmul fast float %4236, %4183
  %4240 = fadd fast float %4237, 5.000000e-01
  %4241 = fadd fast float %4238, 5.000000e-01
  %4242 = fadd fast float %4239, 5.000000e-01
  %4243 = fmul fast float %4240, 2.000000e+00
  %4244 = fsub fast float 1.000000e+00, %4243
  %4245 = fmul fast float %4244, %4170
  %4246 = fadd fast float %4245, %4243
  %4247 = fmul fast float %4246, %4170
  %4248 = fmul fast float %4241, 2.000000e+00
  %4249 = fsub fast float 1.000000e+00, %4248
  %4250 = fmul fast float %4249, %4171
  %4251 = fadd fast float %4250, %4248
  %4252 = fmul fast float %4251, %4171
  %4253 = fmul fast float %4242, 2.000000e+00
  %4254 = fsub fast float 1.000000e+00, %4253
  %4255 = fmul fast float %4254, %4172
  %4256 = fadd fast float %4255, %4253
  %4257 = fmul fast float %4256, %4172
  br label %4258

; <label>:4258                                    ; preds = %4230, %4228, %4215, %4185, %4169
  %4259 = phi float [ %4170, %4169 ], [ %4247, %4230 ], [ %4170, %4228 ], [ %4225, %4215 ], [ %4195, %4185 ]
  %4260 = phi float [ %4171, %4169 ], [ %4252, %4230 ], [ %4171, %4228 ], [ %4226, %4215 ], [ %4196, %4185 ]
  %4261 = phi float [ %4172, %4169 ], [ %4257, %4230 ], [ %4172, %4228 ], [ %4227, %4215 ], [ %4197, %4185 ]
  %4262 = phi float [ %4173, %4169 ], [ %4173, %4230 ], [ %4173, %4228 ], [ %4173, %4215 ], [ %4207, %4185 ]
  %4263 = phi float [ %4174, %4169 ], [ %4174, %4230 ], [ %4174, %4228 ], [ %4174, %4215 ], [ %4208, %4185 ]
  %4264 = phi float [ %4175, %4169 ], [ %4175, %4230 ], [ %4175, %4228 ], [ %4175, %4215 ], [ %4209, %4185 ]
  %4265 = phi float [ %3357, %4169 ], [ %3357, %4230 ], [ %3357, %4228 ], [ %3357, %4215 ], [ %4200, %4185 ]
  %4266 = phi float [ %3361, %4169 ], [ %3361, %4230 ], [ %3361, %4228 ], [ %3361, %4215 ], [ %4212, %4185 ]
  %4267 = and i32 %4177, 12
  %4268 = icmp eq i32 %4267, 12
  br i1 %4268, label %4399, label %4269

; <label>:4269                                    ; preds = %4258
  %4270 = and i32 %4177, 2097184
  %4271 = icmp eq i32 %4270, 2097184
  %4272 = select i1 %4271, float %3659, float 0.000000e+00
  %4273 = and i32 %4177, 4194336
  %4274 = icmp eq i32 %4273, 4194336
  %4275 = select i1 %4274, float %3659, float 0.000000e+00
  %4276 = and i32 %4177, 8388640
  %4277 = icmp eq i32 %4276, 8388640
  %4278 = select i1 %4277, float %3659, float 0.000000e+00
  %4279 = and i32 %4177, 1024
  %4280 = icmp ne i32 %4279, 0
  %4281 = select i1 %4280, float %3659, float 0.000000e+00
  %4282 = and i32 %4177, 2048
  %4283 = icmp ne i32 %4282, 0
  %4284 = select i1 %4283, float %3659, float 0.000000e+00
  %4285 = and i32 %4177, 8192
  %4286 = icmp ne i32 %4285, 0
  %4287 = select i1 %4286, float %3659, float 0.000000e+00
  %4288 = icmp eq i32 %4267, 0
  br i1 %4288, label %4289, label %4323

; <label>:4289                                    ; preds = %4269
  %4290 = fsub fast float %3960, %3343
  %4291 = fsub fast float %3961, %3344
  %4292 = fmul fast float %4272, %4290
  %4293 = fmul fast float %4272, %4291
  %4294 = fadd fast float %4292, %3343
  %4295 = fadd fast float %4293, %3344
  %4296 = fsub fast float %3962, %3359
  %4297 = fmul fast float %4275, %4296
  %4298 = fadd fast float %4297, %3359
  %4299 = fsub fast float %3959, %3358
  %4300 = fmul fast float %4278, %4299
  %4301 = fadd fast float %4300, %3358
  %4302 = fsub fast float %4065, %3354
  %4303 = fsub fast float %4066, %3355
  %4304 = fsub fast float %4067, %3356
  %4305 = fmul fast float %4281, %4302
  %4306 = fmul fast float %4281, %4303
  %4307 = fmul fast float %4281, %4304
  %4308 = fadd fast float %4305, %3354
  %4309 = fadd fast float %4306, %3355
  %4310 = fadd fast float %4307, %3356
  %4311 = fsub fast float %4120, %3360
  %4312 = fmul fast float %4284, %4311
  %4313 = fadd fast float %4312, %3360
  %4314 = fsub fast float %4117, %3351
  %4315 = fsub fast float %4118, %3352
  %4316 = fsub fast float %4119, %3353
  %4317 = fmul fast float %4287, %4314
  %4318 = fmul fast float %4287, %4315
  %4319 = fmul fast float %4287, %4316
  %4320 = fadd fast float %4317, %3351
  %4321 = fadd fast float %4318, %3352
  %4322 = fadd fast float %4319, %3353
  br label %4399

; <label>:4323                                    ; preds = %4269
  %4324 = icmp eq i32 %4267, 4
  br i1 %4324, label %4325, label %4371

; <label>:4325                                    ; preds = %4323
  %4326 = fmul fast float %4272, %3960
  %4327 = fmul fast float %4272, %3961
  %4328 = fadd fast float %4326, %3343
  %4329 = fadd fast float %4327, %3344
  %4330 = call float @dx.op.binary.f32(i32 36, float %3359, float %3962)  ; FMin(a,b)
  %4331 = fsub fast float %4330, %3359
  %4332 = fmul fast float %4331, %4275
  %4333 = fadd fast float %4332, %3359
  %4334 = fadd fast float %3959, %3358
  %4335 = fmul fast float %4334, 0x3FF337FAE0000000
  %4336 = fmul fast float %3358, %3358
  %4337 = fmul fast float %3959, %3959
  %4338 = fadd fast float %4337, %4336
  %4339 = fmul fast float %4338, 0x3FE5152B00000000
  %4340 = fmul fast float %3358, 0xBFCC1F85E0000000
  %4341 = fmul fast float %4340, %3959
  %4342 = fadd fast float %4341, 0xBFE1363700000000
  %4343 = fadd fast float %4342, %4335
  %4344 = fsub fast float %4343, %4339
  %4345 = fmul fast float %4334, 0x3FBA6F0D00000000
  %4346 = fmul fast float %4338, 0x3FD0432880000000
  %4347 = fmul fast float %3358, 0xBFEF110800000000
  %4348 = fmul fast float %4347, %3959
  %4349 = fadd fast float %4348, 1.000000e+00
  %4350 = fsub fast float %4349, %4345
  %4351 = fadd fast float %4350, %4346
  %4352 = fdiv fast float %4344, %4351
  %4353 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  %4354 = fsub fast float %4353, %3358
  %4355 = fmul fast float %4354, %4278
  %4356 = fadd fast float %4355, %3358
  %4357 = fmul fast float %4281, %4065
  %4358 = fmul fast float %4281, %4066
  %4359 = fmul fast float %4281, %4067
  %4360 = fadd fast float %4357, %3354
  %4361 = fadd fast float %4358, %3355
  %4362 = fadd fast float %4359, %3356
  %4363 = fmul fast float %4284, %4120
  %4364 = fadd fast float %4363, %3360
  %4365 = fmul fast float %4287, %4117
  %4366 = fmul fast float %4287, %4118
  %4367 = fmul fast float %4287, %4119
  %4368 = fadd fast float %4365, %3351
  %4369 = fadd fast float %4366, %3352
  %4370 = fadd fast float %4367, %3353
  br label %4399

; <label>:4371                                    ; preds = %4323
  %4372 = icmp eq i32 %4267, 8
  br i1 %4372, label %4373, label %4399

; <label>:4373                                    ; preds = %4371
  %4374 = fmul fast float %4272, %3960
  %4375 = fmul fast float %4272, %3961
  %4376 = fadd fast float %4374, %3343
  %4377 = fadd fast float %4375, %3344
  %4378 = call float @dx.op.binary.f32(i32 36, float %3359, float %3962)  ; FMin(a,b)
  %4379 = fsub fast float %4378, %3359
  %4380 = fmul fast float %4379, %4275
  %4381 = fadd fast float %4380, %3359
  %4382 = fsub fast float %3959, %3358
  %4383 = fmul fast float %4278, %4382
  %4384 = fadd fast float %4383, %3358
  %4385 = fmul fast float %4281, %4065
  %4386 = fmul fast float %4281, %4066
  %4387 = fmul fast float %4281, %4067
  %4388 = fadd fast float %4385, %3354
  %4389 = fadd fast float %4386, %3355
  %4390 = fadd fast float %4387, %3356
  %4391 = fmul fast float %4284, %4120
  %4392 = fadd fast float %4391, %3360
  %4393 = fmul fast float %4287, %4117
  %4394 = fmul fast float %4287, %4118
  %4395 = fmul fast float %4287, %4119
  %4396 = fadd fast float %4393, %3351
  %4397 = fadd fast float %4394, %3352
  %4398 = fadd fast float %4395, %3353
  br label %4399

; <label>:4399                                    ; preds = %4373, %4371, %4325, %4289, %4258, %3658, %3362, %3342
  %4400 = phi float [ %3343, %4258 ], [ %3343, %3658 ], [ %3343, %3342 ], [ %3343, %3362 ], [ %4294, %4289 ], [ %4328, %4325 ], [ %3343, %4371 ], [ %4376, %4373 ]
  %4401 = phi float [ %3344, %4258 ], [ %3344, %3658 ], [ %3344, %3342 ], [ %3344, %3362 ], [ %4295, %4289 ], [ %4329, %4325 ], [ %3344, %4371 ], [ %4377, %4373 ]
  %4402 = phi float [ %4259, %4258 ], [ %3345, %3658 ], [ %3345, %3342 ], [ %3345, %3362 ], [ %4259, %4289 ], [ %4259, %4325 ], [ %4259, %4371 ], [ %4259, %4373 ]
  %4403 = phi float [ %4260, %4258 ], [ %3346, %3658 ], [ %3346, %3342 ], [ %3346, %3362 ], [ %4260, %4289 ], [ %4260, %4325 ], [ %4260, %4371 ], [ %4260, %4373 ]
  %4404 = phi float [ %4261, %4258 ], [ %3347, %3658 ], [ %3347, %3342 ], [ %3347, %3362 ], [ %4261, %4289 ], [ %4261, %4325 ], [ %4261, %4371 ], [ %4261, %4373 ]
  %4405 = phi float [ %4262, %4258 ], [ %3348, %3658 ], [ %3348, %3342 ], [ %3348, %3362 ], [ %4262, %4289 ], [ %4262, %4325 ], [ %4262, %4371 ], [ %4262, %4373 ]
  %4406 = phi float [ %4263, %4258 ], [ %3349, %3658 ], [ %3349, %3342 ], [ %3349, %3362 ], [ %4263, %4289 ], [ %4263, %4325 ], [ %4263, %4371 ], [ %4263, %4373 ]
  %4407 = phi float [ %4264, %4258 ], [ %3350, %3658 ], [ %3350, %3342 ], [ %3350, %3362 ], [ %4264, %4289 ], [ %4264, %4325 ], [ %4264, %4371 ], [ %4264, %4373 ]
  %4408 = phi float [ %3351, %4258 ], [ %3351, %3658 ], [ %3351, %3342 ], [ %3351, %3362 ], [ %4320, %4289 ], [ %4368, %4325 ], [ %3351, %4371 ], [ %4396, %4373 ]
  %4409 = phi float [ %3352, %4258 ], [ %3352, %3658 ], [ %3352, %3342 ], [ %3352, %3362 ], [ %4321, %4289 ], [ %4369, %4325 ], [ %3352, %4371 ], [ %4397, %4373 ]
  %4410 = phi float [ %3353, %4258 ], [ %3353, %3658 ], [ %3353, %3342 ], [ %3353, %3362 ], [ %4322, %4289 ], [ %4370, %4325 ], [ %3353, %4371 ], [ %4398, %4373 ]
  %4411 = phi float [ %3354, %4258 ], [ %3354, %3658 ], [ %3354, %3342 ], [ %3354, %3362 ], [ %4308, %4289 ], [ %4360, %4325 ], [ %3354, %4371 ], [ %4388, %4373 ]
  %4412 = phi float [ %3355, %4258 ], [ %3355, %3658 ], [ %3355, %3342 ], [ %3355, %3362 ], [ %4309, %4289 ], [ %4361, %4325 ], [ %3355, %4371 ], [ %4389, %4373 ]
  %4413 = phi float [ %3356, %4258 ], [ %3356, %3658 ], [ %3356, %3342 ], [ %3356, %3362 ], [ %4310, %4289 ], [ %4362, %4325 ], [ %3356, %4371 ], [ %4390, %4373 ]
  %4414 = phi float [ %4265, %4258 ], [ %3357, %3658 ], [ %3357, %3342 ], [ %3357, %3362 ], [ %4265, %4289 ], [ %4265, %4325 ], [ %4265, %4371 ], [ %4265, %4373 ]
  %4415 = phi float [ %3358, %4258 ], [ %3358, %3658 ], [ %3358, %3342 ], [ %3358, %3362 ], [ %4301, %4289 ], [ %4356, %4325 ], [ %3358, %4371 ], [ %4384, %4373 ]
  %4416 = phi float [ %3359, %4258 ], [ %3359, %3658 ], [ %3359, %3342 ], [ %3359, %3362 ], [ %4298, %4289 ], [ %4333, %4325 ], [ %3359, %4371 ], [ %4381, %4373 ]
  %4417 = phi float [ %3360, %4258 ], [ %3360, %3658 ], [ %3360, %3342 ], [ %3360, %3362 ], [ %4313, %4289 ], [ %4364, %4325 ], [ %3360, %4371 ], [ %4392, %4373 ]
  %4418 = phi float [ %4266, %4258 ], [ %3361, %3658 ], [ %3361, %3342 ], [ %3361, %3362 ], [ %4266, %4289 ], [ %4266, %4325 ], [ %4266, %4371 ], [ %4266, %4373 ]
  %4419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4420 = extractvalue %dx.types.CBufRet.f32 %4419, 0
  %4421 = call float @dx.op.dot2.f32(i32 54, float %4400, float %4401, float %4400, float %4401)  ; Dot2(ax,ay,bx,by)
  %4422 = fmul fast float %4421, 0x3FE3333340000000
  %4423 = fsub fast float 1.000000e+00, %4422
  %4424 = call float @dx.op.dot3.f32(i32 55, float %4400, float %4401, float %4423, float %4400, float %4401, float %4423)  ; Dot3(ax,ay,az,bx,by,bz)
  %4425 = call float @dx.op.unary.f32(i32 25, float %4424)  ; Rsqrt(value)
  %4426 = fmul fast float %4425, %4400
  %4427 = fmul fast float %4425, %4401
  %4428 = fmul fast float %4423, %4425
  %4429 = fmul fast float %4428, %106
  %4430 = fmul fast float %4428, %107
  %4431 = fmul fast float %4428, %108
  %4432 = fmul fast float %4426, %74
  %4433 = fmul fast float %4426, %75
  %4434 = fmul fast float %4426, %76
  %4435 = fadd fast float %4429, %4432
  %4436 = fadd fast float %4430, %4433
  %4437 = fadd fast float %4431, %4434
  %4438 = fmul fast float %118, %4427
  %4439 = fmul fast float %119, %4427
  %4440 = fmul fast float %120, %4427
  %4441 = fadd fast float %4435, %4438
  %4442 = fadd fast float %4436, %4439
  %4443 = fadd fast float %4437, %4440
  %4444 = call float @dx.op.dot3.f32(i32 55, float %4441, float %4442, float %4443, float %4441, float %4442, float %4443)  ; Dot3(ax,ay,az,bx,by,bz)
  %4445 = call float @dx.op.unary.f32(i32 25, float %4444)  ; Rsqrt(value)
  %4446 = fmul fast float %4441, %4445
  %4447 = fmul fast float %4442, %4445
  %4448 = fmul fast float %4443, %4445
  %4449 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %4450 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %4451 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %4452 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %4453 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %4454 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %4455 = fadd fast float %4449, %154
  %4456 = fadd fast float %4450, %155
  %4457 = fadd fast float %4451, %156
  %4458 = fadd fast float %4452, %154
  %4459 = fadd fast float %4453, %155
  %4460 = fadd fast float %4454, %156
  %4461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4462 = extractvalue %dx.types.CBufRet.f32 %4461, 0
  %4463 = extractvalue %dx.types.CBufRet.f32 %4461, 1
  %4464 = extractvalue %dx.types.CBufRet.f32 %4461, 2
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 2
  %4467 = extractvalue %dx.types.CBufRet.f32 %4465, 3
  %4468 = fmul fast float %4462, %99
  %4469 = fmul fast float %4468, %4466
  %4470 = fmul fast float %4463, %100
  %4471 = fmul fast float %4470, %4467
  %4472 = fptoui float %4469 to i32
  %4473 = fptoui float %4471 to i32
  %4474 = fadd fast float %4462, -1.000000e+00
  %4475 = fadd fast float %4463, -1.000000e+00
  %4476 = fptoui float %4474 to i32
  %4477 = fptoui float %4475 to i32
  %4478 = call i32 @dx.op.binary.i32(i32 40, i32 %4472, i32 %4476)  ; UMin(a,b)
  %4479 = call i32 @dx.op.binary.i32(i32 40, i32 %4473, i32 %4477)  ; UMin(a,b)
  %4480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4481 = extractvalue %dx.types.CBufRet.f32 %4480, 2
  %4482 = extractvalue %dx.types.CBufRet.f32 %4480, 3
  %4483 = fmul fast float %4481, %90
  %4484 = fsub fast float %4483, %4482
  %4485 = fadd fast float %4464, -1.000000e+00
  %4486 = call float @dx.op.binary.f32(i32 36, float %4484, float %4485)  ; FMin(a,b)
  %4487 = fptoui float %4486 to i32
  %4488 = fptoui float %4462 to i32
  %4489 = fptoui float %4463 to i32
  %4490 = mul i32 %4487, %4489
  %4491 = add i32 %4490, %4479
  %4492 = mul i32 %4491, %4488
  %4493 = add i32 %4492, %4478
  %4494 = shl i32 %4493, 2
  %4495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4494, i32 undef)  ; BufferLoad(srv,index,wot)
  %4496 = extractvalue %dx.types.ResRet.i32 %4495, 0
  %4497 = and i32 %4496, 1023
  %4498 = lshr i32 %4496, 10
  %4499 = icmp eq i32 %4497, 0
  br i1 %4499, label %5003, label %4500

; <label>:4500                                    ; preds = %4399
  %4501 = and i32 %4496, 1023
  br label %4502

; <label>:4502                                    ; preds = %4634, %4500
  %4503 = phi i32 [ %4584, %4634 ], [ 0, %4500 ]
  %4504 = phi float [ %4635, %4634 ], [ 0.000000e+00, %4500 ]
  %4505 = phi float [ %4636, %4634 ], [ %4420, %4500 ]
  %4506 = phi float [ %4637, %4634 ], [ %4418, %4500 ]
  %4507 = phi float [ %4638, %4634 ], [ %4411, %4500 ]
  %4508 = phi float [ %4639, %4634 ], [ %4412, %4500 ]
  %4509 = phi float [ %4640, %4634 ], [ %4413, %4500 ]
  %4510 = phi float [ %4641, %4634 ], [ 0.000000e+00, %4500 ]
  %4511 = phi float [ %4642, %4634 ], [ 0.000000e+00, %4500 ]
  %4512 = phi float [ %4643, %4634 ], [ %4408, %4500 ]
  %4513 = phi float [ %4644, %4634 ], [ %4409, %4500 ]
  %4514 = phi float [ %4645, %4634 ], [ %4410, %4500 ]
  %4515 = phi float [ %4646, %4634 ], [ %4405, %4500 ]
  %4516 = phi float [ %4647, %4634 ], [ %4406, %4500 ]
  %4517 = phi float [ %4648, %4634 ], [ %4407, %4500 ]
  %4518 = phi float [ %4649, %4634 ], [ %4446, %4500 ]
  %4519 = phi float [ %4650, %4634 ], [ %4447, %4500 ]
  %4520 = phi float [ %4651, %4634 ], [ %4448, %4500 ]
  %4521 = phi float [ %4652, %4634 ], [ %4416, %4500 ]
  %4522 = phi float [ %4653, %4634 ], [ %4415, %4500 ]
  %4523 = phi float [ %4654, %4634 ], [ 0.000000e+00, %4500 ]
  %4524 = phi float [ %4655, %4634 ], [ %4414, %4500 ]
  %4525 = phi float [ %4656, %4634 ], [ %4402, %4500 ]
  %4526 = phi float [ %4657, %4634 ], [ %4403, %4500 ]
  %4527 = phi float [ %4658, %4634 ], [ %4404, %4500 ]
  %4528 = add nuw nsw i32 %4503, %4498
  %4529 = shl i32 %4528, 2
  %4530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4529, i32 undef)  ; BufferLoad(srv,index,wot)
  %4531 = extractvalue %dx.types.ResRet.i32 %4530, 0
  %4532 = shl i32 %4531, 8
  %4533 = or i32 %4532, 48
  %4534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4533, i32 undef)  ; BufferLoad(srv,index,wot)
  %4535 = extractvalue %dx.types.ResRet.f32 %4534, 0
  %4536 = extractvalue %dx.types.ResRet.f32 %4534, 1
  %4537 = extractvalue %dx.types.ResRet.f32 %4534, 2
  %4538 = extractvalue %dx.types.ResRet.f32 %4534, 3
  %4539 = or i32 %4532, 64
  %4540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4539, i32 undef)  ; BufferLoad(srv,index,wot)
  %4541 = extractvalue %dx.types.ResRet.i32 %4540, 0
  %4542 = extractvalue %dx.types.ResRet.i32 %4540, 1
  %4543 = or i32 %4532, 80
  %4544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4543, i32 undef)  ; BufferLoad(srv,index,wot)
  %4545 = extractvalue %dx.types.ResRet.f32 %4544, 2
  %4546 = extractvalue %dx.types.ResRet.f32 %4544, 3
  %4547 = or i32 %4532, 96
  %4548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4547, i32 undef)  ; BufferLoad(srv,index,wot)
  %4549 = extractvalue %dx.types.ResRet.f32 %4548, 0
  %4550 = extractvalue %dx.types.ResRet.f32 %4548, 1
  %4551 = extractvalue %dx.types.ResRet.f32 %4548, 2
  %4552 = extractvalue %dx.types.ResRet.f32 %4548, 3
  %4553 = or i32 %4532, 112
  %4554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4553, i32 undef)  ; BufferLoad(srv,index,wot)
  %4555 = extractvalue %dx.types.ResRet.f32 %4554, 2
  %4556 = or i32 %4532, 128
  %4557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4556, i32 undef)  ; BufferLoad(srv,index,wot)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4559 = extractvalue %dx.types.ResRet.f32 %4557, 1
  %4560 = extractvalue %dx.types.ResRet.f32 %4557, 2
  %4561 = extractvalue %dx.types.ResRet.f32 %4557, 3
  %4562 = or i32 %4532, 144
  %4563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4562, i32 undef)  ; BufferLoad(srv,index,wot)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4565 = extractvalue %dx.types.ResRet.f32 %4563, 1
  %4566 = extractvalue %dx.types.ResRet.f32 %4563, 2
  %4567 = extractvalue %dx.types.ResRet.f32 %4563, 3
  %4568 = or i32 %4532, 160
  %4569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4568, i32 undef)  ; BufferLoad(srv,index,wot)
  %4570 = extractvalue %dx.types.ResRet.f32 %4569, 0
  %4571 = extractvalue %dx.types.ResRet.f32 %4569, 1
  %4572 = extractvalue %dx.types.ResRet.f32 %4569, 2
  %4573 = extractvalue %dx.types.ResRet.f32 %4569, 3
  %4574 = or i32 %4532, 192
  %4575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4574, i32 undef)  ; BufferLoad(srv,index,wot)
  %4576 = extractvalue %dx.types.ResRet.i32 %4575, 0
  %4577 = or i32 %4532, 208
  %4578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4577, i32 undef)  ; BufferLoad(srv,index,wot)
  %4579 = extractvalue %dx.types.ResRet.f32 %4578, 0
  %4580 = or i32 %4532, 248
  %4581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4580, i32 undef)  ; BufferLoad(srv,index,wot)
  %4582 = extractvalue %dx.types.ResRet.f32 %4581, 0
  %4583 = extractvalue %dx.types.ResRet.f32 %4581, 1
  %4584 = add nuw nsw i32 %4503, 1
  %4585 = bitcast float %4538 to i32
  %4586 = and i32 %4585, 512
  %4587 = icmp eq i32 %4586, 0
  %4588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4532, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = extractvalue %dx.types.ResRet.f32 %4588, 1
  %4591 = extractvalue %dx.types.ResRet.f32 %4588, 2
  %4592 = extractvalue %dx.types.ResRet.f32 %4588, 3
  %4593 = call float @dx.op.dot4.f32(i32 56, float %4589, float %4590, float %4591, float %4592, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4594 = or i32 %4532, 16
  %4595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4594, i32 undef)  ; BufferLoad(srv,index,wot)
  %4596 = extractvalue %dx.types.ResRet.f32 %4595, 0
  %4597 = extractvalue %dx.types.ResRet.f32 %4595, 1
  %4598 = extractvalue %dx.types.ResRet.f32 %4595, 2
  %4599 = extractvalue %dx.types.ResRet.f32 %4595, 3
  %4600 = call float @dx.op.dot4.f32(i32 56, float %4596, float %4597, float %4598, float %4599, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4601 = or i32 %4532, 32
  %4602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4601, i32 undef)  ; BufferLoad(srv,index,wot)
  %4603 = extractvalue %dx.types.ResRet.f32 %4602, 0
  %4604 = extractvalue %dx.types.ResRet.f32 %4602, 1
  %4605 = extractvalue %dx.types.ResRet.f32 %4602, 2
  %4606 = extractvalue %dx.types.ResRet.f32 %4602, 3
  %4607 = call float @dx.op.dot4.f32(i32 56, float %4603, float %4604, float %4605, float %4606, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4608 = call float @dx.op.unary.f32(i32 27, float %4593)  ; Round_ni(value)
  %4609 = call float @dx.op.unary.f32(i32 6, float %4608)  ; FAbs(value)
  %4610 = call float @dx.op.unary.f32(i32 27, float %4600)  ; Round_ni(value)
  %4611 = call float @dx.op.unary.f32(i32 6, float %4610)  ; FAbs(value)
  %4612 = call float @dx.op.unary.f32(i32 6, float %4607)  ; FAbs(value)
  %4613 = call float @dx.op.unary.f32(i32 27, float %4612)  ; Round_ni(value)
  %4614 = fadd fast float %4611, %4609
  %4615 = fadd fast float %4614, %4613
  %4616 = fcmp fast oeq float %4615, 0.000000e+00
  %4617 = call float @dx.op.dot4.f32(i32 56, float %4589, float %4590, float %4591, float %4592, float %4455, float %4456, float %4457, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4618 = call float @dx.op.dot4.f32(i32 56, float %4596, float %4597, float %4598, float %4599, float %4455, float %4456, float %4457, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4619 = call float @dx.op.dot4.f32(i32 56, float %4589, float %4590, float %4591, float %4592, float %4458, float %4459, float %4460, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4620 = call float @dx.op.dot4.f32(i32 56, float %4596, float %4597, float %4598, float %4599, float %4458, float %4459, float %4460, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4621 = fsub fast float %4617, %4593
  %4622 = fsub fast float %4619, %4593
  %4623 = fsub fast float %4618, %4600
  %4624 = fsub fast float %4620, %4600
  %4625 = call float @dx.op.dot3.f32(i32 55, float %4535, float %4536, float %4537, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %4626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4627 = extractvalue %dx.types.CBufRet.f32 %4626, 2
  %4628 = fadd fast float %4627, %4625
  %4629 = call float @dx.op.unary.f32(i32 7, float %4628)  ; Saturate(value)
  %4630 = extractvalue %dx.types.CBufRet.f32 %4626, 0
  %4631 = fcmp fast ogt float %4629, %4630
  %4632 = and i1 %4616, %4631
  %4633 = and i1 %4587, %4632
  br i1 %4633, label %4660, label %4634

; <label>:4634                                    ; preds = %4989, %4741, %4660, %4502
  %4635 = phi float [ %4504, %4660 ], [ %4744, %4741 ], [ %4744, %4989 ], [ %4504, %4502 ]
  %4636 = phi float [ %4505, %4660 ], [ %4505, %4741 ], [ %4965, %4989 ], [ %4505, %4502 ]
  %4637 = phi float [ %4506, %4660 ], [ %4506, %4741 ], [ %4963, %4989 ], [ %4506, %4502 ]
  %4638 = phi float [ %4507, %4660 ], [ %4507, %4741 ], [ %4941, %4989 ], [ %4507, %4502 ]
  %4639 = phi float [ %4508, %4660 ], [ %4508, %4741 ], [ %4942, %4989 ], [ %4508, %4502 ]
  %4640 = phi float [ %4509, %4660 ], [ %4509, %4741 ], [ %4943, %4989 ], [ %4509, %4502 ]
  %4641 = phi float [ %4510, %4660 ], [ %4510, %4741 ], [ %4868, %4989 ], [ %4510, %4502 ]
  %4642 = phi float [ %4511, %4660 ], [ %4511, %4741 ], [ %4866, %4989 ], [ %4511, %4502 ]
  %4643 = phi float [ %4512, %4660 ], [ %4512, %4741 ], [ %4911, %4989 ], [ %4512, %4502 ]
  %4644 = phi float [ %4513, %4660 ], [ %4513, %4741 ], [ %4912, %4989 ], [ %4513, %4502 ]
  %4645 = phi float [ %4514, %4660 ], [ %4514, %4741 ], [ %4913, %4989 ], [ %4514, %4502 ]
  %4646 = phi float [ %4515, %4660 ], [ %4515, %4741 ], [ %4999, %4989 ], [ %4515, %4502 ]
  %4647 = phi float [ %4516, %4660 ], [ %4516, %4741 ], [ %5000, %4989 ], [ %4516, %4502 ]
  %4648 = phi float [ %4517, %4660 ], [ %4517, %4741 ], [ %5001, %4989 ], [ %4517, %4502 ]
  %4649 = phi float [ %4518, %4660 ], [ %4518, %4741 ], [ %4847, %4989 ], [ %4518, %4502 ]
  %4650 = phi float [ %4519, %4660 ], [ %4519, %4741 ], [ %4848, %4989 ], [ %4519, %4502 ]
  %4651 = phi float [ %4520, %4660 ], [ %4520, %4741 ], [ %4849, %4989 ], [ %4520, %4502 ]
  %4652 = phi float [ %4521, %4660 ], [ %4521, %4741 ], [ %4921, %4989 ], [ %4521, %4502 ]
  %4653 = phi float [ %4522, %4660 ], [ %4522, %4741 ], [ %4918, %4989 ], [ %4522, %4502 ]
  %4654 = phi float [ %4523, %4660 ], [ %4523, %4741 ], [ %4915, %4989 ], [ %4523, %4502 ]
  %4655 = phi float [ %4524, %4660 ], [ %4524, %4741 ], [ %4864, %4989 ], [ %4524, %4502 ]
  %4656 = phi float [ %4525, %4660 ], [ %4525, %4741 ], [ %4859, %4989 ], [ %4525, %4502 ]
  %4657 = phi float [ %4526, %4660 ], [ %4526, %4741 ], [ %4860, %4989 ], [ %4526, %4502 ]
  %4658 = phi float [ %4527, %4660 ], [ %4527, %4741 ], [ %4861, %4989 ], [ %4527, %4502 ]
  %4659 = icmp eq i32 %4584, %4501
  br i1 %4659, label %5002, label %4502

; <label>:4660                                    ; preds = %4502
  %4661 = extractvalue %dx.types.ResRet.f32 %4554, 3
  %4662 = extractvalue %dx.types.ResRet.f32 %4554, 1
  %4663 = extractvalue %dx.types.ResRet.f32 %4554, 0
  %4664 = extractvalue %dx.types.ResRet.f32 %4544, 1
  %4665 = extractvalue %dx.types.ResRet.f32 %4544, 0
  %4666 = extractvalue %dx.types.ResRet.i32 %4540, 3
  %4667 = extractvalue %dx.types.ResRet.i32 %4540, 2
  %4668 = add i32 %4666, 0
  %4669 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4668, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4671 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4669, %dx.types.Handle %4670, float %4593, float %4600, float undef, float undef, i32 0, i32 0, i32 undef, float %4621, float %4623, float undef, float %4622, float %4624, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4672 = extractvalue %dx.types.ResRet.f32 %4671, 0
  %4673 = fmul fast float %4672, %4665
  %4674 = fadd fast float %4673, %4664
  %4675 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4676 = fmul fast float %4593, %4549
  %4677 = call float @dx.op.tertiary.f32(i32 46, float %4550, float %4600, float %4676)  ; FMad(a,b,c)
  %4678 = fadd fast float %4677, %4663
  %4679 = fmul fast float %4593, %4551
  %4680 = call float @dx.op.tertiary.f32(i32 46, float %4552, float %4600, float %4679)  ; FMad(a,b,c)
  %4681 = fadd fast float %4680, %4662
  %4682 = fmul fast float %4621, %4549
  %4683 = call float @dx.op.tertiary.f32(i32 46, float %4550, float %4623, float %4682)  ; FMad(a,b,c)
  %4684 = fmul fast float %4621, %4551
  %4685 = call float @dx.op.tertiary.f32(i32 46, float %4552, float %4623, float %4684)  ; FMad(a,b,c)
  %4686 = fmul fast float %4622, %4549
  %4687 = call float @dx.op.tertiary.f32(i32 46, float %4550, float %4624, float %4686)  ; FMad(a,b,c)
  %4688 = fmul fast float %4622, %4551
  %4689 = call float @dx.op.tertiary.f32(i32 46, float %4552, float %4624, float %4688)  ; FMad(a,b,c)
  %4690 = add i32 %4667, 0
  %4691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4690, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4692 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4691, %dx.types.Handle %4670, float %4678, float %4681, float undef, float undef, i32 0, i32 0, i32 undef, float %4683, float %4685, float undef, float %4687, float %4689, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4693 = extractvalue %dx.types.ResRet.f32 %4692, 0
  %4694 = and i32 %4585, 1024
  %4695 = icmp ne i32 %4694, 0
  %4696 = fcmp fast ogt float %4693, 0x3FE0101020000000
  %4697 = uitofp i1 %4696 to float
  %4698 = select i1 %4695, float %4697, float %4693
  %4699 = and i32 %4585, 8192
  %4700 = icmp ne i32 %4699, 0
  %4701 = select i1 %4700, float %4661, float 1.000000e+00
  %4702 = fmul fast float %4593, 2.000000e+00
  %4703 = fadd fast float %4702, -1.000000e+00
  %4704 = call float @dx.op.unary.f32(i32 6, float %4703)  ; FAbs(value)
  %4705 = fmul fast float %4704, %4582
  %4706 = fsub fast float %4705, %4582
  %4707 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4708 = fmul fast float %4600, 2.000000e+00
  %4709 = fadd fast float %4708, -1.000000e+00
  %4710 = call float @dx.op.unary.f32(i32 6, float %4709)  ; FAbs(value)
  %4711 = fmul fast float %4710, %4583
  %4712 = fsub fast float %4711, %4583
  %4713 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4714 = fmul fast float %4612, %4545
  %4715 = fsub fast float %4714, %4545
  %4716 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4717 = fmul fast float %4675, %4701
  %4718 = fmul fast float %4717, %4672
  %4719 = fmul fast float %4718, %4707
  %4720 = fmul fast float %4719, %4698
  %4721 = fmul fast float %4720, %4713
  %4722 = fmul fast float %4721, %4716
  %4723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4724 = extractvalue %dx.types.CBufRet.f32 %4723, 1
  %4725 = extractvalue %dx.types.CBufRet.f32 %4723, 0
  %4726 = fsub fast float %4629, %4725
  %4727 = fmul fast float %4726, %4724
  %4728 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4729 = fmul fast float %4722, %4546
  %4730 = fadd fast float %4722, %4546
  %4731 = fmul fast float %4730, %4555
  %4732 = fsub fast float %4731, %4555
  %4733 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4734 = and i32 %4585, 128
  %4735 = icmp ne i32 %4734, 0
  %4736 = select i1 %4735, float %4733, float %4729
  %4737 = fmul fast float %4736, %4728
  %4738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4739 = extractvalue %dx.types.CBufRet.f32 %4738, 0
  %4740 = fcmp fast ugt float %4737, %4739
  br i1 %4740, label %4741, label %4634

; <label>:4741                                    ; preds = %4660
  %4742 = select i1 %4700, float %4737, float 0.000000e+00
  %4743 = fadd fast float %4742, %4504
  %4744 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  br i1 %4700, label %4634, label %4745

; <label>:4745                                    ; preds = %4741
  %4746 = and i32 %4585, 4
  %4747 = and i32 %4585, 8
  %4748 = add i32 %4541, 0
  %4749 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4748, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4751 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4749, %dx.types.Handle %4750, float %4678, float %4681, float undef, float undef, i32 0, i32 0, i32 undef, float %4683, float %4685, float undef, float %4687, float %4689, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4752 = extractvalue %dx.types.ResRet.f32 %4751, 0
  %4753 = extractvalue %dx.types.ResRet.f32 %4751, 1
  %4754 = extractvalue %dx.types.ResRet.f32 %4751, 2
  %4755 = extractvalue %dx.types.ResRet.f32 %4751, 3
  %4756 = bitcast float %4567 to i32
  %4757 = and i32 %4756, 255
  %4758 = uitofp i32 %4757 to float
  %4759 = lshr i32 %4756, 8
  %4760 = and i32 %4759, 255
  %4761 = uitofp i32 %4760 to float
  %4762 = fmul fast float %4755, %4758
  %4763 = fadd fast float %4762, %4761
  %4764 = fmul fast float %4763, 0x3F70101000000000
  %4765 = add i32 %4542, 0
  %4766 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4765, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4767 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4766, %dx.types.Handle %4750, float %4678, float %4681, float undef, float undef, i32 0, i32 0, i32 undef, float %4683, float %4685, float undef, float %4687, float %4689, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4768 = extractvalue %dx.types.ResRet.f32 %4767, 0
  %4769 = extractvalue %dx.types.ResRet.f32 %4767, 1
  %4770 = extractvalue %dx.types.ResRet.f32 %4767, 2
  %4771 = extractvalue %dx.types.ResRet.f32 %4767, 3
  %4772 = bitcast float %4561 to i32
  %4773 = and i32 %4772, 255
  %4774 = uitofp i32 %4773 to float
  %4775 = lshr i32 %4772, 8
  %4776 = and i32 %4775, 255
  %4777 = uitofp i32 %4776 to float
  %4778 = lshr i32 %4772, 16
  %4779 = and i32 %4778, 255
  %4780 = uitofp i32 %4779 to float
  %4781 = fmul fast float %4780, 0x3F70101000000000
  %4782 = fmul fast float %4768, %4774
  %4783 = fadd fast float %4782, %4777
  %4784 = fmul fast float %4783, 0x3F70101000000000
  %4785 = fadd fast float %4769, -5.000000e-01
  %4786 = fadd fast float %4771, -5.000000e-01
  %4787 = fmul fast float %4785, %4781
  %4788 = fmul fast float %4786, %4781
  %4789 = fadd fast float %4787, 5.000000e-01
  %4790 = fadd fast float %4788, 5.000000e-01
  %4791 = fmul fast float %4752, %4570
  %4792 = fmul fast float %4753, %4571
  %4793 = fmul fast float %4754, %4572
  %4794 = fmul fast float %4789, 2.000000e+00
  %4795 = fadd fast float %4794, -1.000000e+00
  %4796 = fmul fast float %4790, 2.000000e+00
  %4797 = fadd fast float %4796, -1.000000e+00
  %4798 = fadd fast float %4795, %4797
  %4799 = fmul fast float %4798, 5.000000e-01
  %4800 = fsub fast float %4795, %4797
  %4801 = fmul fast float %4800, 5.000000e-01
  %4802 = call float @dx.op.unary.f32(i32 6, float %4799)  ; FAbs(value)
  %4803 = fsub fast float 1.000000e+00, %4802
  %4804 = call float @dx.op.unary.f32(i32 6, float %4801)  ; FAbs(value)
  %4805 = fsub fast float %4803, %4804
  %4806 = call float @dx.op.dot3.f32(i32 55, float %4799, float %4801, float %4805, float %4799, float %4801, float %4805)  ; Dot3(ax,ay,az,bx,by,bz)
  %4807 = call float @dx.op.unary.f32(i32 25, float %4806)  ; Rsqrt(value)
  %4808 = fmul fast float %4799, %4807
  %4809 = fmul fast float %4801, %4807
  %4810 = fmul fast float %4807, %4805
  %4811 = fmul fast float %4810, %4535
  %4812 = fmul fast float %4810, %4536
  %4813 = fmul fast float %4810, %4537
  %4814 = fmul fast float %4808, %4558
  %4815 = fmul fast float %4808, %4559
  %4816 = fmul fast float %4808, %4560
  %4817 = fadd fast float %4814, %4811
  %4818 = fadd fast float %4815, %4812
  %4819 = fadd fast float %4816, %4813
  %4820 = fmul fast float %4809, %4564
  %4821 = fmul fast float %4809, %4565
  %4822 = fmul fast float %4809, %4566
  %4823 = fadd fast float %4817, %4820
  %4824 = fadd fast float %4818, %4821
  %4825 = fadd fast float %4819, %4822
  %4826 = call float @dx.op.dot3.f32(i32 55, float %4823, float %4824, float %4825, float %4823, float %4824, float %4825)  ; Dot3(ax,ay,az,bx,by,bz)
  %4827 = call float @dx.op.unary.f32(i32 25, float %4826)  ; Rsqrt(value)
  %4828 = fmul fast float %4823, %4827
  %4829 = fmul fast float %4824, %4827
  %4830 = fmul fast float %4825, %4827
  %4831 = icmp ne i32 %4747, 0
  %4832 = select i1 %4831, float 1.000000e+00, float 0.000000e+00
  %4833 = fmul fast float %4737, %4832
  %4834 = and i32 %4585, 1
  %4835 = icmp eq i32 %4834, 0
  br i1 %4835, label %4836, label %4840

; <label>:4836                                    ; preds = %4745
  %4837 = fsub fast float %4828, %4518
  %4838 = fsub fast float %4829, %4519
  %4839 = fsub fast float %4830, %4520
  br label %4840

; <label>:4840                                    ; preds = %4836, %4745
  %4841 = phi float [ %4837, %4836 ], [ %4828, %4745 ]
  %4842 = phi float [ %4838, %4836 ], [ %4829, %4745 ]
  %4843 = phi float [ %4839, %4836 ], [ %4830, %4745 ]
  %4844 = fmul float %4843, %4833
  %4845 = fmul float %4842, %4833
  %4846 = fmul float %4841, %4833
  %4847 = fadd fast float %4846, %4518
  %4848 = fadd fast float %4845, %4519
  %4849 = fadd fast float %4844, %4520
  %4850 = icmp ne i32 %4746, 0
  %4851 = select i1 %4850, float 1.000000e+00, float 0.000000e+00
  %4852 = fmul fast float %4737, %4851
  %4853 = fsub fast float %4791, %4525
  %4854 = fsub fast float %4792, %4526
  %4855 = fsub fast float %4793, %4527
  %4856 = fmul fast float %4853, %4852
  %4857 = fmul fast float %4854, %4852
  %4858 = fmul fast float %4855, %4852
  %4859 = fadd fast float %4856, %4525
  %4860 = fadd fast float %4857, %4526
  %4861 = fadd fast float %4858, %4527
  %4862 = fsub fast float %4764, %4524
  %4863 = fmul fast float %4862, %4852
  %4864 = fadd fast float %4863, %4524
  %4865 = fmul fast float %4852, %4511
  %4866 = fsub fast float %4511, %4865
  %4867 = fmul fast float %4852, %4510
  %4868 = fsub fast float %4510, %4867
  %4869 = bitcast float %4579 to i32
  %4870 = lshr i32 %4869, 16
  %4871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4870)  ; LegacyF16ToF32(value)
  %4872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %4873 = extractvalue %dx.types.ResRet.i32 %4872, 0
  %4874 = and i32 %4873, 1
  %4875 = icmp eq i32 %4874, 0
  br i1 %4875, label %4876, label %4901

; <label>:4876                                    ; preds = %4840
  %4877 = fadd fast float %4764, 0xBFB99999A0000000
  %4878 = call float @dx.op.unary.f32(i32 7, float %4877)  ; Saturate(value)
  %4879 = fmul fast float %4878, 0x3FF1C71C80000000
  %4880 = fsub fast float 1.000000e+00, %4879
  %4881 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4882 = fmul fast float %4881, %4791
  %4883 = fmul fast float %4881, %4792
  %4884 = fmul fast float %4881, %4793
  %4885 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4886 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4887 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4888 = call float @dx.op.binary.f32(i32 35, float %4886, float %4887)  ; FMax(a,b)
  %4889 = call float @dx.op.binary.f32(i32 35, float %4885, float %4888)  ; FMax(a,b)
  %4890 = fcmp fast ogt float %4889, 0.000000e+00
  %4891 = bitcast float %4889 to i32
  %4892 = sub nsw i32 2129859010, %4891
  %4893 = bitcast i32 %4892 to float
  %4894 = select i1 %4890, float %4893, float 0.000000e+00
  %4895 = fmul fast float %4885, %4871
  %4896 = fmul fast float %4886, %4871
  %4897 = fmul fast float %4887, %4871
  %4898 = fmul fast float %4895, %4894
  %4899 = fmul fast float %4896, %4894
  %4900 = fmul fast float %4897, %4894
  br label %4901

; <label>:4901                                    ; preds = %4876, %4840
  %4902 = phi float [ %4871, %4840 ], [ %4898, %4876 ]
  %4903 = phi float [ %4871, %4840 ], [ %4899, %4876 ]
  %4904 = phi float [ %4871, %4840 ], [ %4900, %4876 ]
  %4905 = fsub fast float %4902, %4512
  %4906 = fsub fast float %4903, %4513
  %4907 = fsub fast float %4904, %4514
  %4908 = fmul fast float %4905, %4852
  %4909 = fmul fast float %4906, %4852
  %4910 = fmul fast float %4907, %4852
  %4911 = fadd fast float %4908, %4512
  %4912 = fadd fast float %4909, %4513
  %4913 = fadd fast float %4910, %4514
  %4914 = fadd fast float %4737, %4523
  %4915 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4916 = fsub fast float %4784, %4522
  %4917 = fmul fast float %4916, %4833
  %4918 = fadd fast float %4917, %4522
  %4919 = fsub fast float %4770, %4521
  %4920 = fmul fast float %4919, %4833
  %4921 = fadd fast float %4920, %4521
  br i1 %4835, label %4930, label %4922

; <label>:4922                                    ; preds = %4901
  %4923 = and i32 %4585, 32768
  %4924 = icmp eq i32 %4923, 0
  br i1 %4924, label %4940, label %4925

; <label>:4925                                    ; preds = %4922
  %4926 = fmul fast float %4833, 1.270000e+02
  %4927 = fadd fast float %4926, %4507
  %4928 = fadd fast float %4926, %4508
  %4929 = fadd fast float %4926, %4509
  br label %4940

; <label>:4930                                    ; preds = %4901
  %4931 = fsub fast float 1.270000e+02, %4507
  %4932 = fsub fast float 1.270000e+02, %4508
  %4933 = fsub fast float 1.270000e+02, %4509
  %4934 = fmul fast float %4833, %4931
  %4935 = fmul fast float %4833, %4932
  %4936 = fmul fast float %4833, %4933
  %4937 = fadd fast float %4934, %4507
  %4938 = fadd fast float %4935, %4508
  %4939 = fadd fast float %4936, %4509
  br label %4940

; <label>:4940                                    ; preds = %4930, %4925, %4922
  %4941 = phi float [ %4927, %4925 ], [ %4507, %4922 ], [ %4937, %4930 ]
  %4942 = phi float [ %4928, %4925 ], [ %4508, %4922 ], [ %4938, %4930 ]
  %4943 = phi float [ %4929, %4925 ], [ %4509, %4922 ], [ %4939, %4930 ]
  %4944 = call float @dx.op.dot3.f32(i32 55, float %4791, float %4792, float %4793, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4946 = extractvalue %dx.types.CBufRet.f32 %4945, 0
  %4947 = extractvalue %dx.types.CBufRet.f32 %4945, 1
  %4948 = fmul fast float %4947, %4944
  %4949 = fadd fast float %4948, %4946
  %4950 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4951 = bitcast float %4573 to i32
  %4952 = and i32 %4951, 65535
  %4953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4952)  ; LegacyF16ToF32(value)
  %4954 = lshr i32 %4951, 16
  %4955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4954)  ; LegacyF16ToF32(value)
  %4956 = fcmp fast oge float %4953, 0.000000e+00
  %4957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4958 = extractvalue %dx.types.CBufRet.f32 %4957, 0
  %4959 = select i1 %4956, float %4953, float %4958
  %4960 = fadd fast float %4959, %4955
  %4961 = fsub fast float %4950, %4506
  %4962 = fmul fast float %4961, %4737
  %4963 = fadd fast float %4962, %4506
  %4964 = fmul fast float %4960, %4737
  %4965 = call float @dx.op.binary.f32(i32 35, float %4505, float %4964)  ; FMax(a,b)
  %4966 = and i32 %4585, 16
  %4967 = icmp eq i32 %4966, 0
  br i1 %4967, label %4989, label %4968

; <label>:4968                                    ; preds = %4940
  %4969 = add i32 %4576, 0
  %4970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4969, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4971 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4970, %dx.types.Handle %4750, float %4678, float %4681, float undef, float undef, i32 0, i32 0, i32 undef, float %4683, float %4685, float undef, float %4687, float %4689, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4972 = extractvalue %dx.types.ResRet.f32 %4971, 0
  %4973 = extractvalue %dx.types.ResRet.f32 %4971, 1
  %4974 = extractvalue %dx.types.ResRet.f32 %4971, 2
  %4975 = and i32 %4869, 65535
  %4976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4975)  ; LegacyF16ToF32(value)
  %4977 = fmul fast float %4972, %4570
  %4978 = fmul fast float %4973, %4571
  %4979 = fmul fast float %4974, %4572
  %4980 = and i32 %4585, 16384
  %4981 = icmp ne i32 %4980, 0
  %4982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4983 = extractvalue %dx.types.CBufRet.f32 %4982, 0
  %4984 = select i1 %4981, float %4983, float 1.000000e+00
  %4985 = fmul fast float %4984, %4976
  %4986 = fmul fast float %4977, %4985
  %4987 = fmul fast float %4978, %4985
  %4988 = fmul fast float %4979, %4985
  br label %4989

; <label>:4989                                    ; preds = %4968, %4940
  %4990 = phi float [ %4986, %4968 ], [ 0.000000e+00, %4940 ]
  %4991 = phi float [ %4987, %4968 ], [ 0.000000e+00, %4940 ]
  %4992 = phi float [ %4988, %4968 ], [ 0.000000e+00, %4940 ]
  %4993 = fsub fast float %4990, %4515
  %4994 = fsub fast float %4991, %4516
  %4995 = fsub fast float %4992, %4517
  %4996 = fmul fast float %4993, %4737
  %4997 = fmul fast float %4994, %4737
  %4998 = fmul fast float %4995, %4737
  %4999 = fadd fast float %4996, %4515
  %5000 = fadd fast float %4997, %4516
  %5001 = fadd fast float %4998, %4517
  br label %4634

; <label>:5002                                    ; preds = %4634
  br label %5003

; <label>:5003                                    ; preds = %5002, %4399
  %5004 = phi float [ 0.000000e+00, %4399 ], [ %4635, %5002 ]
  %5005 = phi float [ %4420, %4399 ], [ %4636, %5002 ]
  %5006 = phi float [ %4418, %4399 ], [ %4637, %5002 ]
  %5007 = phi float [ %4411, %4399 ], [ %4638, %5002 ]
  %5008 = phi float [ %4412, %4399 ], [ %4639, %5002 ]
  %5009 = phi float [ %4413, %4399 ], [ %4640, %5002 ]
  %5010 = phi float [ 0.000000e+00, %4399 ], [ %4641, %5002 ]
  %5011 = phi float [ 0.000000e+00, %4399 ], [ %4642, %5002 ]
  %5012 = phi float [ %4408, %4399 ], [ %4643, %5002 ]
  %5013 = phi float [ %4409, %4399 ], [ %4644, %5002 ]
  %5014 = phi float [ %4410, %4399 ], [ %4645, %5002 ]
  %5015 = phi float [ %4405, %4399 ], [ %4646, %5002 ]
  %5016 = phi float [ %4406, %4399 ], [ %4647, %5002 ]
  %5017 = phi float [ %4407, %4399 ], [ %4648, %5002 ]
  %5018 = phi float [ %4446, %4399 ], [ %4649, %5002 ]
  %5019 = phi float [ %4447, %4399 ], [ %4650, %5002 ]
  %5020 = phi float [ %4448, %4399 ], [ %4651, %5002 ]
  %5021 = phi float [ %4416, %4399 ], [ %4652, %5002 ]
  %5022 = phi float [ %4415, %4399 ], [ %4653, %5002 ]
  %5023 = phi float [ 0.000000e+00, %4399 ], [ %4654, %5002 ]
  %5024 = phi float [ %4414, %4399 ], [ %4655, %5002 ]
  %5025 = phi float [ %4402, %4399 ], [ %4656, %5002 ]
  %5026 = phi float [ %4403, %4399 ], [ %4657, %5002 ]
  %5027 = phi float [ %4404, %4399 ], [ %4658, %5002 ]
  %5028 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5019, float %5020, float %5018, float %5019, float %5020)  ; Dot3(ax,ay,az,bx,by,bz)
  %5029 = call float @dx.op.unary.f32(i32 25, float %5028)  ; Rsqrt(value)
  %5030 = fmul fast float %5029, %5018
  %5031 = fmul fast float %5029, %5019
  %5032 = fmul fast float %5029, %5020
  %5033 = fadd fast float %5023, %1243
  %5034 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5035 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5032, float %5030, float %5031, float %5032)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = call float @dx.op.unary.f32(i32 25, float %5035)  ; Rsqrt(value)
  %5037 = fmul fast float %5036, %5030
  %5038 = fmul fast float %5036, %5031
  %5039 = fmul fast float %5036, %5032
  %5040 = fadd fast float %5024, 0xBFB99999A0000000
  %5041 = call float @dx.op.unary.f32(i32 7, float %5040)  ; Saturate(value)
  %5042 = fmul fast float %5041, 0x3FF1C71C80000000
  %5043 = call float @dx.op.binary.f32(i32 36, float %5024, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5044 = fsub fast float 1.000000e+00, %5042
  %5045 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5046 = fmul fast float %5045, %5025
  %5047 = fmul fast float %5045, %5026
  %5048 = fmul fast float %5045, %5027
  %5049 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  %5050 = call float @dx.op.unary.f32(i32 7, float %5047)  ; Saturate(value)
  %5051 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5052 = fmul fast float %5042, %5025
  %5053 = fmul fast float %5042, %5026
  %5054 = fmul fast float %5042, %5027
  %5055 = fadd fast float %5052, %5043
  %5056 = fadd fast float %5053, %5043
  %5057 = fadd fast float %5054, %5043
  %5058 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  %5059 = call float @dx.op.unary.f32(i32 7, float %5056)  ; Saturate(value)
  %5060 = call float @dx.op.unary.f32(i32 7, float %5057)  ; Saturate(value)
  %5061 = call float @dx.op.unary.f32(i32 7, float %5022)  ; Saturate(value)
  %5062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %5063 = extractvalue %dx.types.ResRet.i32 %5062, 0
  %5064 = and i32 %5063, 1
  %5065 = icmp eq i32 %5064, 0
  br i1 %5065, label %5080, label %5066

; <label>:5066                                    ; preds = %5003
  %5067 = call float @dx.op.binary.f32(i32 35, float %5050, float %5051)  ; FMax(a,b)
  %5068 = call float @dx.op.binary.f32(i32 35, float %5049, float %5067)  ; FMax(a,b)
  %5069 = fcmp fast ogt float %5068, 0.000000e+00
  %5070 = bitcast float %5068 to i32
  %5071 = sub nsw i32 2129859010, %5070
  %5072 = bitcast i32 %5071 to float
  %5073 = select i1 %5069, float %5072, float 0.000000e+00
  %5074 = fmul fast float %5049, %5012
  %5075 = fmul fast float %5050, %5013
  %5076 = fmul fast float %5051, %5014
  %5077 = fmul fast float %5074, %5073
  %5078 = fmul fast float %5075, %5073
  %5079 = fmul fast float %5076, %5073
  br label %5080

; <label>:5080                                    ; preds = %5066, %5003
  %5081 = phi float [ %5077, %5066 ], [ %5012, %5003 ]
  %5082 = phi float [ %5078, %5066 ], [ %5013, %5003 ]
  %5083 = phi float [ %5079, %5066 ], [ %5014, %5003 ]
  %5084 = call float @dx.op.binary.f32(i32 36, float %5007, float 1.270000e+02)  ; FMin(a,b)
  %5085 = call float @dx.op.binary.f32(i32 36, float %5008, float 1.270000e+02)  ; FMin(a,b)
  %5086 = call float @dx.op.binary.f32(i32 36, float %5009, float 1.270000e+02)  ; FMin(a,b)
  %5087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5088 = extractvalue %dx.types.CBufRet.i32 %5087, 3
  %5089 = and i32 %5088, 8
  %5090 = icmp ne i32 %5089, 0
  %5091 = call float @dx.op.binary.f32(i32 35, float %5049, float %5025)  ; FMax(a,b)
  %5092 = call float @dx.op.binary.f32(i32 35, float %5050, float %5025)  ; FMax(a,b)
  %5093 = call float @dx.op.binary.f32(i32 35, float %5051, float %5025)  ; FMax(a,b)
  %5094 = call float @dx.op.dot3.f32(i32 55, float %5049, float %5050, float %5051, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5095 = select i1 %216, float %5025, float %5049
  %5096 = select i1 %216, float %5094, float %5050
  %5097 = select i1 %216, float 1.000000e+00, float %5051
  %5098 = select i1 %5090, float %5091, float %5095
  %5099 = select i1 %5090, float %5092, float %5096
  %5100 = select i1 %5090, float %5093, float %5097
  %5101 = call float @dx.op.dot3.f32(i32 55, float %5081, float %5082, float %5083, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5102 = select i1 %216, float %5101, float %5081
  %5103 = select i1 %216, float %5101, float %5082
  %5104 = select i1 %216, float %5101, float %5083
  %5105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5106 = extractvalue %dx.types.CBufRet.f32 %5105, 0
  %5107 = extractvalue %dx.types.CBufRet.f32 %5105, 1
  %5108 = extractvalue %dx.types.CBufRet.f32 %5105, 2
  %5109 = fadd fast float %5106, %154
  %5110 = fadd fast float %5107, %155
  %5111 = fadd fast float %5108, %156
  %5112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5113 = extractvalue %dx.types.CBufRet.f32 %5112, 0
  %5114 = extractvalue %dx.types.CBufRet.f32 %5112, 1
  %5115 = fsub fast float %5109, %5113
  %5116 = fsub fast float %5110, %5114
  %5117 = fmul fast float %5115, %5115
  %5118 = fmul fast float %5116, %5116
  %5119 = fadd fast float %5117, %5118
  %5120 = call float @dx.op.unary.f32(i32 24, float %5119)  ; Sqrt(value)
  %5121 = extractvalue %dx.types.CBufRet.f32 %5112, 2
  %5122 = fcmp fast olt float %5120, %5121
  br i1 %5122, label %5123, label %5190

; <label>:5123                                    ; preds = %5080
  %5124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5125 = extractvalue %dx.types.CBufRet.f32 %5124, 0
  %5126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5127 = extractvalue %dx.types.CBufRet.f32 %5126, 0
  %5128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5129 = extractvalue %dx.types.CBufRet.f32 %5128, 0
  %5130 = extractvalue %dx.types.CBufRet.f32 %5124, 1
  %5131 = extractvalue %dx.types.CBufRet.f32 %5126, 1
  %5132 = extractvalue %dx.types.CBufRet.f32 %5128, 1
  %5133 = extractvalue %dx.types.CBufRet.f32 %5124, 3
  %5134 = extractvalue %dx.types.CBufRet.f32 %5126, 3
  %5135 = extractvalue %dx.types.CBufRet.f32 %5128, 3
  %5136 = fadd fast float %5133, %5109
  %5137 = fadd fast float %5134, %5110
  %5138 = fadd fast float %5135, %5111
  %5139 = fmul fast float %5136, %5125
  %5140 = call float @dx.op.tertiary.f32(i32 46, float %5137, float %5127, float %5139)  ; FMad(a,b,c)
  %5141 = call float @dx.op.tertiary.f32(i32 46, float %5138, float %5129, float %5140)  ; FMad(a,b,c)
  %5142 = fmul fast float %5136, %5130
  %5143 = call float @dx.op.tertiary.f32(i32 46, float %5137, float %5131, float %5142)  ; FMad(a,b,c)
  %5144 = call float @dx.op.tertiary.f32(i32 46, float %5138, float %5132, float %5143)  ; FMad(a,b,c)
  %5145 = fsub fast float %5141, %5133
  %5146 = fsub fast float %5144, %5134
  %5147 = fsub fast float %5145, %5113
  %5148 = fadd fast float %5147, %5121
  %5149 = fsub fast float %5146, %5114
  %5150 = fadd fast float %5149, %5121
  %5151 = extractvalue %dx.types.CBufRet.f32 %5112, 3
  %5152 = fmul fast float %5148, %5151
  %5153 = fmul fast float %5150, %5151
  %5154 = call float @dx.op.unary.f32(i32 7, float %5152)  ; Saturate(value)
  %5155 = call float @dx.op.unary.f32(i32 7, float %5153)  ; Saturate(value)
  %5156 = fsub fast float 1.000000e+00, %5154
  %5157 = fsub fast float 1.000000e+00, %5155
  %5158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %5156, float %5157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5159 = extractvalue %dx.types.ResRet.f32 %5158, 0
  %5160 = fcmp fast ugt float %5159, 0.000000e+00
  br i1 %5160, label %5161, label %5464

; <label>:5161                                    ; preds = %5123
  %5162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5163 = extractvalue %dx.types.CBufRet.f32 %5162, 2
  %5164 = fmul fast float %5163, %5159
  %5165 = extractvalue %dx.types.CBufRet.f32 %5162, 3
  %5166 = fadd fast float %5165, %5164
  %5167 = extractvalue %dx.types.CBufRet.f32 %5128, 2
  %5168 = fadd fast float %5166, %5135
  %5169 = fmul fast float %5141, %5129
  %5170 = call float @dx.op.tertiary.f32(i32 46, float %5144, float %5132, float %5169)  ; FMad(a,b,c)
  %5171 = call float @dx.op.tertiary.f32(i32 46, float %5168, float %5167, float %5170)  ; FMad(a,b,c)
  %5172 = fsub fast float %5171, %5135
  %5173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5174 = extractvalue %dx.types.CBufRet.f32 %5173, 2
  %5175 = fsub fast float %5172, %5174
  %5176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %5156, float %5157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5177 = extractvalue %dx.types.ResRet.f32 %5176, 0
  %5178 = extractvalue %dx.types.ResRet.f32 %5176, 1
  %5179 = extractvalue %dx.types.ResRet.f32 %5176, 2
  %5180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %5156, float %5157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5181 = extractvalue %dx.types.ResRet.f32 %5180, 0
  %5182 = extractvalue %dx.types.ResRet.f32 %5180, 1
  %5183 = extractvalue %dx.types.ResRet.f32 %5180, 2
  %5184 = fadd fast float %5181, %5177
  %5185 = fmul fast float %5184, 0x3F847AE140000000
  %5186 = fadd fast float %5182, %5178
  %5187 = fmul fast float %5186, 0x3F847AE140000000
  %5188 = fadd fast float %5183, %5179
  %5189 = fmul fast float %5188, 0x3F847AE140000000
  br label %5464

; <label>:5190                                    ; preds = %5080
  %5191 = and i32 %192, 1
  %5192 = icmp eq i32 %5191, 0
  br i1 %5192, label %5464, label %5193

; <label>:5193                                    ; preds = %5190
  %5194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5194, 0
  %5196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5197 = extractvalue %dx.types.CBufRet.f32 %5196, 0
  %5198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5199 = extractvalue %dx.types.CBufRet.f32 %5198, 0
  %5200 = extractvalue %dx.types.CBufRet.f32 %5194, 1
  %5201 = extractvalue %dx.types.CBufRet.f32 %5196, 1
  %5202 = extractvalue %dx.types.CBufRet.f32 %5198, 1
  %5203 = extractvalue %dx.types.CBufRet.f32 %5194, 3
  %5204 = extractvalue %dx.types.CBufRet.f32 %5196, 3
  %5205 = extractvalue %dx.types.CBufRet.f32 %5198, 3
  %5206 = fadd fast float %5203, %5109
  %5207 = fadd fast float %5204, %5110
  %5208 = fadd fast float %5205, %5111
  %5209 = fmul fast float %5206, %5195
  %5210 = call float @dx.op.tertiary.f32(i32 46, float %5207, float %5197, float %5209)  ; FMad(a,b,c)
  %5211 = call float @dx.op.tertiary.f32(i32 46, float %5208, float %5199, float %5210)  ; FMad(a,b,c)
  %5212 = fmul fast float %5206, %5200
  %5213 = call float @dx.op.tertiary.f32(i32 46, float %5207, float %5201, float %5212)  ; FMad(a,b,c)
  %5214 = call float @dx.op.tertiary.f32(i32 46, float %5208, float %5202, float %5213)  ; FMad(a,b,c)
  %5215 = fsub fast float %5211, %5203
  %5216 = fsub fast float %5214, %5204
  %5217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5218 = extractvalue %dx.types.CBufRet.f32 %5217, 0
  %5219 = extractvalue %dx.types.CBufRet.f32 %5217, 1
  %5220 = extractvalue %dx.types.CBufRet.f32 %5217, 2
  %5221 = extractvalue %dx.types.CBufRet.f32 %5217, 3
  %5222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5223 = extractvalue %dx.types.CBufRet.f32 %5222, 3
  %5224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5225 = extractvalue %dx.types.CBufRet.i32 %5224, 0
  %5226 = extractvalue %dx.types.CBufRet.i32 %5224, 1
  %5227 = udiv i32 %5226, %5225
  %5228 = fsub fast float %5215, %5218
  %5229 = fsub fast float %5216, %5219
  %5230 = call float @dx.op.binary.f32(i32 35, float %5228, float 0.000000e+00)  ; FMax(a,b)
  %5231 = call float @dx.op.binary.f32(i32 35, float %5229, float 0.000000e+00)  ; FMax(a,b)
  %5232 = call float @dx.op.binary.f32(i32 36, float %5230, float %5220)  ; FMin(a,b)
  %5233 = call float @dx.op.binary.f32(i32 36, float %5231, float %5221)  ; FMin(a,b)
  %5234 = add i32 %5225, -1
  %5235 = add i32 %5227, -1
  %5236 = fmul fast float %5232, %5223
  %5237 = fmul fast float %5233, %5223
  %5238 = fptoui float %5236 to i32
  %5239 = fptoui float %5237 to i32
  %5240 = call i32 @dx.op.binary.i32(i32 40, i32 %5238, i32 %5234)  ; UMin(a,b)
  %5241 = call i32 @dx.op.binary.i32(i32 40, i32 %5239, i32 %5235)  ; UMin(a,b)
  %5242 = mul i32 %5241, %5225
  %5243 = add i32 %5242, %5240
  %5244 = shl i32 %5243, 2
  %5245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5244, i32 undef)  ; BufferLoad(srv,index,wot)
  %5246 = extractvalue %dx.types.ResRet.i32 %5245, 0
  %5247 = icmp eq i32 %5246, -1
  br i1 %5247, label %5464, label %5248

; <label>:5248                                    ; preds = %5193
  %5249 = mul i32 %5246, 148
  %5250 = add i32 %5249, 4
  %5251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5250, i32 undef)  ; BufferLoad(srv,index,wot)
  %5252 = extractvalue %dx.types.ResRet.f32 %5251, 0
  %5253 = add i32 %5249, 8
  %5254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5253, i32 undef)  ; BufferLoad(srv,index,wot)
  %5255 = extractvalue %dx.types.ResRet.f32 %5254, 0
  %5256 = add i32 %5249, 36
  %5257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5256, i32 undef)  ; BufferLoad(srv,index,wot)
  %5258 = extractvalue %dx.types.ResRet.f32 %5257, 0
  %5259 = add i32 %5249, 60
  %5260 = add i32 %5249, 92
  %5261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5260, i32 undef)  ; BufferLoad(srv,index,wot)
  %5262 = extractvalue %dx.types.ResRet.i32 %5261, 0
  %5263 = add i32 %5249, 116
  %5264 = fsub fast float %5215, %5252
  %5265 = fsub fast float %5216, %5255
  %5266 = fmul fast float %5223, %5264
  %5267 = fmul fast float %5223, %5265
  %5268 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5269 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5270 = fsub fast float 1.000000e+00, %5269
  %5271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.f32 %5271, 2
  %5273 = call float @dx.op.unary.f32(i32 83, float %5268)  ; DerivCoarseX(value)
  %5274 = call float @dx.op.unary.f32(i32 83, float %5270)  ; DerivCoarseX(value)
  %5275 = call float @dx.op.unary.f32(i32 84, float %5268)  ; DerivCoarseY(value)
  %5276 = call float @dx.op.unary.f32(i32 84, float %5270)  ; DerivCoarseY(value)
  %5277 = fmul fast float %5273, %5272
  %5278 = fmul fast float %5274, %5272
  %5279 = fmul fast float %5275, %5272
  %5280 = fmul fast float %5276, %5272
  %5281 = call float @dx.op.dot2.f32(i32 54, float %5279, float %5280, float %5279, float %5280)  ; Dot2(ax,ay,bx,by)
  %5282 = call float @dx.op.dot2.f32(i32 54, float %5277, float %5278, float %5277, float %5278)  ; Dot2(ax,ay,bx,by)
  %5283 = call float @dx.op.binary.f32(i32 35, float %5282, float %5281)  ; FMax(a,b)
  %5284 = call float @dx.op.unary.f32(i32 23, float %5283)  ; Log(value)
  %5285 = fmul fast float %5284, 5.000000e-01
  %5286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5287 = extractvalue %dx.types.CBufRet.f32 %5286, 1
  %5288 = fadd fast float %5287, %5285
  %5289 = call float @dx.op.binary.f32(i32 35, float %5288, float 0.000000e+00)  ; FMax(a,b)
  %5290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5291 = extractvalue %dx.types.CBufRet.f32 %5290, 3
  %5292 = fadd fast float %5291, %5289
  %5293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5294 = extractvalue %dx.types.CBufRet.f32 %5293, 3
  %5295 = fadd fast float %5292, %5294
  %5296 = add i32 %5262, 0
  %5297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5296, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5298 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5297, i32 0)  ; GetDimensions(handle,mipLevel)
  %5299 = extractvalue %dx.types.Dimensions %5298, 0
  %5300 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5299)  ; FirstbitLo(value)
  %5301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.i32 %5301, 1
  %5303 = sub nsw i32 %5302, %5300
  %5304 = sitofp i32 %5303 to float
  %5305 = fsub fast float %5295, %5304
  %5306 = call float @dx.op.binary.f32(i32 35, float %5305, float 0.000000e+00)  ; FMax(a,b)
  %5307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5297, %dx.types.Handle %46, float %5268, float %5270, float %5258, float undef, i32 0, i32 0, i32 undef, float %5306)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5308 = extractvalue %dx.types.ResRet.f32 %5307, 0
  %5309 = fcmp ule float %5308, 0x3FE0101020000000
  %5310 = extractvalue %dx.types.CBufRet.i32 %5301, 0
  %5311 = and i32 %5310, 128
  %5312 = icmp ne i32 %5311, 0
  %5313 = and i1 %5309, %5312
  br i1 %5313, label %5464, label %5314

; <label>:5314                                    ; preds = %5248
  %5315 = add i32 %5249, 20
  %5316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5315, i32 undef)  ; BufferLoad(srv,index,wot)
  %5317 = extractvalue %dx.types.ResRet.f32 %5316, 0
  %5318 = add i32 %5249, 24
  %5319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5318, i32 undef)  ; BufferLoad(srv,index,wot)
  %5320 = extractvalue %dx.types.ResRet.f32 %5319, 0
  %5321 = add i32 %5249, 40
  %5322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5321, i32 undef)  ; BufferLoad(srv,index,wot)
  %5323 = extractvalue %dx.types.ResRet.f32 %5322, 0
  %5324 = add i32 %5249, 96
  %5325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5324, i32 undef)  ; BufferLoad(srv,index,wot)
  %5326 = extractvalue %dx.types.ResRet.i32 %5325, 0
  %5327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5328 = extractvalue %dx.types.CBufRet.f32 %5327, 2
  %5329 = fmul fast float %5328, %5268
  %5330 = fmul fast float %5328, %5270
  %5331 = extractvalue %dx.types.CBufRet.f32 %5327, 3
  %5332 = fadd fast float %5329, %5331
  %5333 = fadd fast float %5330, %5331
  %5334 = add i32 %5326, 0
  %5335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5334, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5336 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5335, i32 0)  ; GetDimensions(handle,mipLevel)
  %5337 = extractvalue %dx.types.Dimensions %5336, 0
  %5338 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5337)  ; FirstbitLo(value)
  %5339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5340 = extractvalue %dx.types.CBufRet.i32 %5339, 1
  %5341 = sub nsw i32 %5340, %5338
  %5342 = sitofp i32 %5341 to float
  %5343 = fsub fast float %5292, %5342
  %5344 = call float @dx.op.binary.f32(i32 35, float %5343, float 0.000000e+00)  ; FMax(a,b)
  %5345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5335, %dx.types.Handle %46, float %5332, float %5333, float %5323, float undef, i32 0, i32 0, i32 undef, float %5344)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5346 = extractvalue %dx.types.ResRet.f32 %5345, 0
  %5347 = fmul fast float %5346, %5317
  %5348 = fadd fast float %5347, %5320
  %5349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5350 = extractvalue %dx.types.CBufRet.f32 %5349, 0
  %5351 = extractvalue %dx.types.CBufRet.f32 %5349, 1
  %5352 = extractvalue %dx.types.CBufRet.f32 %5349, 2
  %5353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5354 = extractvalue %dx.types.CBufRet.f32 %5353, 3
  %5355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5356 = extractvalue %dx.types.CBufRet.f32 %5355, 3
  %5357 = extractvalue %dx.types.CBufRet.f32 %5349, 3
  %5358 = fadd fast float %5354, %5215
  %5359 = fadd fast float %5356, %5216
  %5360 = fadd fast float %5348, %5357
  %5361 = fmul fast float %5358, %5350
  %5362 = call float @dx.op.tertiary.f32(i32 46, float %5359, float %5351, float %5361)  ; FMad(a,b,c)
  %5363 = call float @dx.op.tertiary.f32(i32 46, float %5360, float %5352, float %5362)  ; FMad(a,b,c)
  %5364 = fsub fast float %5363, %5357
  %5365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5366 = extractvalue %dx.types.CBufRet.f32 %5365, 2
  %5367 = fsub fast float %5364, %5366
  %5368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5369 = extractvalue %dx.types.CBufRet.i32 %5368, 0
  %5370 = call i32 @dx.op.binary.i32(i32 40, i32 %5246, i32 %5369)  ; UMin(a,b)
  %5371 = mul i32 %5370, 36
  %5372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5371, i32 undef)  ; BufferLoad(srv,index,wot)
  %5373 = extractvalue %dx.types.ResRet.i32 %5372, 0
  %5374 = add i32 %5371, 4
  %5375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5376 = extractvalue %dx.types.CBufRet.f32 %5375, 0
  %5377 = fmul fast float %5376, %5268
  %5378 = fmul fast float %5376, %5270
  %5379 = extractvalue %dx.types.CBufRet.f32 %5375, 1
  %5380 = fadd fast float %5377, %5379
  %5381 = fadd fast float %5378, %5379
  %5382 = icmp eq i32 %5373, 0
  br i1 %5382, label %5451, label %5383

; <label>:5383                                    ; preds = %5314
  br label %5384

; <label>:5384                                    ; preds = %5441, %5383
  %5385 = phi float [ %5442, %5441 ], [ 0.000000e+00, %5383 ]
  %5386 = phi float [ %5443, %5441 ], [ 0.000000e+00, %5383 ]
  %5387 = phi float [ %5444, %5441 ], [ 0.000000e+00, %5383 ]
  %5388 = phi float [ %5445, %5441 ], [ 0.000000e+00, %5383 ]
  %5389 = phi float [ %5446, %5441 ], [ 0.000000e+00, %5383 ]
  %5390 = phi float [ %5447, %5441 ], [ 0.000000e+00, %5383 ]
  %5391 = phi i32 [ %5448, %5441 ], [ 0, %5383 ]
  %5392 = shl i32 %5391, 2
  %5393 = add i32 %5259, %5392
  %5394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5393, i32 undef)  ; BufferLoad(srv,index,wot)
  %5395 = extractvalue %dx.types.ResRet.f32 %5394, 0
  %5396 = add i32 %5263, %5392
  %5397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5396, i32 undef)  ; BufferLoad(srv,index,wot)
  %5398 = extractvalue %dx.types.ResRet.i32 %5397, 0
  %5399 = add i32 %5398, 0
  %5400 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5399, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5401 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5400, i32 0)  ; GetDimensions(handle,mipLevel)
  %5402 = extractvalue %dx.types.Dimensions %5401, 0
  %5403 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5402)  ; FirstbitLo(value)
  %5404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5405 = extractvalue %dx.types.CBufRet.i32 %5404, 1
  %5406 = sub nsw i32 %5405, %5403
  %5407 = sitofp i32 %5406 to float
  %5408 = fsub fast float %5292, %5407
  %5409 = call float @dx.op.binary.f32(i32 35, float %5408, float 0.000000e+00)  ; FMax(a,b)
  %5410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5400, %dx.types.Handle %46, float %5380, float %5381, float %5395, float undef, i32 0, i32 0, i32 undef, float %5409)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5411 = extractvalue %dx.types.ResRet.f32 %5410, 0
  %5412 = fcmp fast ogt float %5411, 0.000000e+00
  br i1 %5412, label %5413, label %5441

; <label>:5413                                    ; preds = %5384
  %5414 = add i32 %5374, %5392
  %5415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5414, i32 undef)  ; BufferLoad(srv,index,wot)
  %5416 = extractvalue %dx.types.ResRet.i32 %5415, 0
  %5417 = and i32 %5416, 32767
  %5418 = mul nuw nsw i32 %5417, 928
  %5419 = add nuw nsw i32 %5418, 48
  %5420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5419, i32 undef)  ; BufferLoad(srv,index,wot)
  %5421 = extractvalue %dx.types.ResRet.f32 %5420, 0
  %5422 = extractvalue %dx.types.ResRet.f32 %5420, 1
  %5423 = extractvalue %dx.types.ResRet.f32 %5420, 2
  %5424 = add nuw nsw i32 %5418, 60
  %5425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5424, i32 undef)  ; BufferLoad(srv,index,wot)
  %5426 = extractvalue %dx.types.ResRet.f32 %5425, 0
  %5427 = extractvalue %dx.types.ResRet.f32 %5425, 1
  %5428 = extractvalue %dx.types.ResRet.f32 %5425, 2
  %5429 = fmul fast float %5421, %5411
  %5430 = fmul fast float %5422, %5411
  %5431 = fmul fast float %5423, %5411
  %5432 = fadd fast float %5429, %5385
  %5433 = fadd fast float %5430, %5386
  %5434 = fadd fast float %5431, %5387
  %5435 = fmul fast float %5426, %5411
  %5436 = fmul fast float %5427, %5411
  %5437 = fmul fast float %5428, %5411
  %5438 = fadd fast float %5435, %5388
  %5439 = fadd fast float %5436, %5389
  %5440 = fadd fast float %5437, %5390
  br label %5441

; <label>:5441                                    ; preds = %5413, %5384
  %5442 = phi float [ %5432, %5413 ], [ %5385, %5384 ]
  %5443 = phi float [ %5433, %5413 ], [ %5386, %5384 ]
  %5444 = phi float [ %5434, %5413 ], [ %5387, %5384 ]
  %5445 = phi float [ %5438, %5413 ], [ %5388, %5384 ]
  %5446 = phi float [ %5439, %5413 ], [ %5389, %5384 ]
  %5447 = phi float [ %5440, %5413 ], [ %5390, %5384 ]
  %5448 = add nuw i32 %5391, 1
  %5449 = icmp eq i32 %5448, %5373
  br i1 %5449, label %5450, label %5384

; <label>:5450                                    ; preds = %5441
  br label %5451

; <label>:5451                                    ; preds = %5450, %5314
  %5452 = phi float [ 0.000000e+00, %5314 ], [ %5442, %5450 ]
  %5453 = phi float [ 0.000000e+00, %5314 ], [ %5443, %5450 ]
  %5454 = phi float [ 0.000000e+00, %5314 ], [ %5444, %5450 ]
  %5455 = phi float [ 0.000000e+00, %5314 ], [ %5445, %5450 ]
  %5456 = phi float [ 0.000000e+00, %5314 ], [ %5446, %5450 ]
  %5457 = phi float [ 0.000000e+00, %5314 ], [ %5447, %5450 ]
  %5458 = fadd fast float %5455, %5452
  %5459 = fmul fast float %5458, 0x3F847AE140000000
  %5460 = fadd fast float %5456, %5453
  %5461 = fmul fast float %5460, 0x3F847AE140000000
  %5462 = fadd fast float %5457, %5454
  %5463 = fmul fast float %5462, 0x3F847AE140000000
  br label %5464

; <label>:5464                                    ; preds = %5451, %5248, %5193, %5190, %5161, %5123
  %5465 = phi float [ %5175, %5161 ], [ -1.310720e+05, %5123 ], [ %5367, %5451 ], [ -1.310720e+05, %5193 ], [ -1.310720e+05, %5248 ], [ -1.310720e+05, %5190 ]
  %5466 = phi float [ %5185, %5161 ], [ 0.000000e+00, %5123 ], [ %5459, %5451 ], [ 0.000000e+00, %5193 ], [ 0.000000e+00, %5248 ], [ 0.000000e+00, %5190 ]
  %5467 = phi float [ %5187, %5161 ], [ 0.000000e+00, %5123 ], [ %5461, %5451 ], [ 0.000000e+00, %5193 ], [ 0.000000e+00, %5248 ], [ 0.000000e+00, %5190 ]
  %5468 = phi float [ %5189, %5161 ], [ 0.000000e+00, %5123 ], [ %5463, %5451 ], [ 0.000000e+00, %5193 ], [ 0.000000e+00, %5248 ], [ 0.000000e+00, %5190 ]
  %5469 = phi i1 [ true, %5161 ], [ false, %5123 ], [ true, %5451 ], [ false, %5193 ], [ false, %5248 ], [ false, %5190 ]
  %5470 = and i32 %192, 3
  %5471 = icmp eq i32 %5470, 1
  %5472 = select i1 %5471, float 1.000000e+00, float 0.000000e+00
  %5473 = fsub fast float %5465, %156
  %5474 = call float @dx.op.unary.f32(i32 7, float %5473)  ; Saturate(value)
  %5475 = select i1 %5469, float %5474, float 1.000000e+00
  %5476 = fmul fast float %5475, %5472
  %5477 = icmp eq i32 %5470, 3
  %5478 = select i1 %5477, float 1.000000e+00, float %5476
  %5479 = call float @dx.op.binary.f32(i32 35, float %5004, float %5478)  ; FMax(a,b)
  %5480 = call float @dx.op.unary.f32(i32 7, float %5479)  ; Saturate(value)
  %5481 = fcmp fast une float %5480, 0.000000e+00
  %5482 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %154, float %155, float %156)  ; Dot3(ax,ay,az,bx,by,bz)
  %5483 = call float @dx.op.unary.f32(i32 25, float %5482)  ; Rsqrt(value)
  br i1 %5481, label %5491, label %5484

; <label>:5484                                    ; preds = %5464
  %5485 = fmul fast float %5483, %154
  %5486 = fmul fast float %5483, %155
  %5487 = fmul fast float %5483, %156
  %5488 = fsub fast float -0.000000e+00, %5485
  %5489 = fsub fast float -0.000000e+00, %5486
  %5490 = fsub fast float -0.000000e+00, %5487
  br label %5659

; <label>:5491                                    ; preds = %5464
  %5492 = fmul fast float %154, %5483
  %5493 = fsub fast float -0.000000e+00, %5492
  %5494 = fmul fast float %155, %5483
  %5495 = fsub fast float -0.000000e+00, %5494
  %5496 = fmul fast float %156, %5483
  %5497 = fsub fast float -0.000000e+00, %5496
  %5498 = call float @dx.op.dot3.f32(i32 55, float %5493, float %5495, float %5497, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %5499 = fmul fast float %5480, 2.500000e+00
  %5500 = call float @dx.op.unary.f32(i32 7, float %5499)  ; Saturate(value)
  %5501 = fmul fast float %5480, 0x4013FFFFE0000000
  %5502 = fadd fast float %5501, 0xBFFFFFFFE0000000
  %5503 = call float @dx.op.unary.f32(i32 7, float %5502)  ; Saturate(value)
  %5504 = fmul fast float %5480, 0x4004000020000000
  %5505 = fadd fast float %5504, 0xBFF8000040000000
  %5506 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5507 = call float @dx.op.unary.f32(i32 7, float %5500)  ; Saturate(value)
  %5508 = fmul fast float %5040, 1.000000e+01
  %5509 = call float @dx.op.unary.f32(i32 7, float %5508)  ; Saturate(value)
  %5510 = fmul fast float %5509, 2.000000e+00
  %5511 = fsub fast float 3.000000e+00, %5510
  %5512 = fmul fast float %5509, %5509
  %5513 = fmul fast float %5512, %5511
  %5514 = fsub fast float 1.000000e+00, %5513
  %5515 = fsub fast float 0x3FE3333340000000, %5061
  %5516 = fmul fast float %5515, 0x400AAAAAA0000000
  %5517 = call float @dx.op.unary.f32(i32 7, float %5516)  ; Saturate(value)
  %5518 = fmul fast float %5514, %5517
  %5519 = fmul fast float %5098, 0x3FEA2B8620000000
  %5520 = fmul fast float %5099, 0x3FEA2B8620000000
  %5521 = fmul fast float %5100, 0x3FEA2B8620000000
  %5522 = fadd fast float %5519, 0x3FC81DFBA0000000
  %5523 = fmul fast float %5522, %5098
  %5524 = fadd fast float %5523, 0x3F910E6020000000
  %5525 = fadd fast float %5520, 0x3FC81DFBA0000000
  %5526 = fmul fast float %5525, %5099
  %5527 = fadd fast float %5526, 0x3F910E6020000000
  %5528 = fadd fast float %5521, 0x3FC81DFBA0000000
  %5529 = fmul fast float %5528, %5100
  %5530 = fadd fast float %5529, 0x3F910E6020000000
  %5531 = call float @dx.op.unary.f32(i32 7, float %5524)  ; Saturate(value)
  %5532 = call float @dx.op.unary.f32(i32 7, float %5527)  ; Saturate(value)
  %5533 = call float @dx.op.unary.f32(i32 7, float %5530)  ; Saturate(value)
  %5534 = fsub fast float %5531, %5098
  %5535 = fsub fast float %5532, %5099
  %5536 = fsub fast float %5533, %5100
  %5537 = fmul fast float %5534, %5507
  %5538 = fmul fast float %5537, %5518
  %5539 = fmul fast float %5535, %5507
  %5540 = fmul fast float %5539, %5518
  %5541 = fmul fast float %5536, %5507
  %5542 = fmul fast float %5541, %5518
  %5543 = fadd fast float %5538, %5098
  %5544 = fadd fast float %5540, %5099
  %5545 = fadd fast float %5542, %5100
  %5546 = fmul fast float %5021, %5021
  %5547 = fmul fast float %5546, %5546
  %5548 = fadd fast float %5503, 1.000000e+00
  %5549 = fsub fast float %5548, %5518
  %5550 = call float @dx.op.unary.f32(i32 7, float %5549)  ; Saturate(value)
  %5551 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5552 = call float @dx.op.unary.f32(i32 7, float %5551)  ; Saturate(value)
  %5553 = fsub fast float 1.000000e+00, %5547
  %5554 = call float @dx.op.binary.f32(i32 36, float %5550, float %5553)  ; FMin(a,b)
  %5555 = call float @dx.op.unary.f32(i32 7, float %5506)  ; Saturate(value)
  %5556 = call float @dx.op.binary.f32(i32 35, float %5554, float %5555)  ; FMax(a,b)
  %5557 = fadd fast float %5552, 0xBFE4CCCCC0000000
  %5558 = fmul fast float %5557, 0x4006DB6DA0000000
  %5559 = call float @dx.op.unary.f32(i32 7, float %5558)  ; Saturate(value)
  %5560 = fmul fast float %5559, 2.000000e+00
  %5561 = fsub fast float 3.000000e+00, %5560
  %5562 = bitcast float %5058 to i32
  %5563 = ashr i32 %5562, 1
  %5564 = add nsw i32 %5563, 532487669
  %5565 = bitcast i32 %5564 to float
  %5566 = fsub fast float 1.000000e+00, %5565
  %5567 = bitcast float %5566 to i32
  %5568 = sub nsw i32 2129859010, %5567
  %5569 = bitcast i32 %5568 to float
  %5570 = fmul fast float %5569, 2.000000e+00
  %5571 = bitcast float %5059 to i32
  %5572 = ashr i32 %5571, 1
  %5573 = add nsw i32 %5572, 532487669
  %5574 = bitcast i32 %5573 to float
  %5575 = fsub fast float 1.000000e+00, %5574
  %5576 = bitcast float %5575 to i32
  %5577 = sub nsw i32 2129859010, %5576
  %5578 = bitcast i32 %5577 to float
  %5579 = fmul fast float %5578, 2.000000e+00
  %5580 = bitcast float %5060 to i32
  %5581 = ashr i32 %5580, 1
  %5582 = add nsw i32 %5581, 532487669
  %5583 = bitcast i32 %5582 to float
  %5584 = fsub fast float 1.000000e+00, %5583
  %5585 = bitcast float %5584 to i32
  %5586 = sub nsw i32 2129859010, %5585
  %5587 = bitcast i32 %5586 to float
  %5588 = fmul fast float %5587, 2.000000e+00
  %5589 = fsub fast float 0x4002A9FBE0000000, %5570
  %5590 = fadd fast float %5570, 0x3FD54FDF00000000
  %5591 = bitcast float %5590 to i32
  %5592 = sub nsw i32 2129859010, %5591
  %5593 = bitcast i32 %5592 to float
  %5594 = fmul fast float %5593, %5589
  %5595 = fmul fast float %5594, %5594
  %5596 = fsub fast float 0x4002A9FBE0000000, %5579
  %5597 = fadd fast float %5579, 0x3FD54FDF00000000
  %5598 = bitcast float %5597 to i32
  %5599 = sub nsw i32 2129859010, %5598
  %5600 = bitcast i32 %5599 to float
  %5601 = fmul fast float %5600, %5596
  %5602 = fmul fast float %5601, %5601
  %5603 = fsub fast float 0x4002A9FBE0000000, %5588
  %5604 = fadd fast float %5588, 0x3FD54FDF00000000
  %5605 = bitcast float %5604 to i32
  %5606 = sub nsw i32 2129859010, %5605
  %5607 = bitcast i32 %5606 to float
  %5608 = fmul fast float %5607, %5603
  %5609 = fmul fast float %5608, %5608
  %5610 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5595)  ; FMax(a,b)
  %5611 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5602)  ; FMax(a,b)
  %5612 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5609)  ; FMax(a,b)
  %5613 = fsub fast float 1.000000e+00, %5498
  %5614 = fadd fast float %5613, %5514
  %5615 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  %5616 = fsub fast float 1.000000e+00, %5478
  %5617 = fmul fast float %5556, %5616
  %5618 = fmul fast float %5559, %5559
  %5619 = fmul fast float %5618, %5617
  %5620 = fmul fast float %5619, %5561
  %5621 = fmul fast float %5616, 0xBFE99999A0000000
  %5622 = fmul fast float %5621, %5507
  %5623 = fmul fast float %5622, %5518
  %5624 = fadd fast float %5623, 1.000000e+00
  %5625 = fadd fast float %5061, -1.000000e+00
  %5626 = fmul fast float %5624, %5625
  %5627 = fadd fast float %5626, 1.000000e+00
  %5628 = fsub fast float %5610, %5058
  %5629 = fsub fast float %5611, %5059
  %5630 = fsub fast float %5612, %5060
  %5631 = fmul fast float %5620, %5628
  %5632 = fmul fast float %5620, %5629
  %5633 = fmul fast float %5620, %5630
  %5634 = fadd fast float %5631, %5058
  %5635 = fadd fast float %5632, %5059
  %5636 = fadd fast float %5633, %5060
  %5637 = fsub fast float %106, %5037
  %5638 = fsub fast float %107, %5038
  %5639 = fsub fast float %108, %5039
  %5640 = fmul fast float %5620, %5637
  %5641 = fmul fast float %5620, %5638
  %5642 = fmul fast float %5620, %5639
  %5643 = fadd fast float %5640, %5037
  %5644 = fadd fast float %5641, %5038
  %5645 = fadd fast float %5642, %5039
  %5646 = fmul fast float %5620, %5615
  %5647 = call float @dx.op.unary.f32(i32 7, float %5627)  ; Saturate(value)
  %5648 = fsub fast float 1.000000e+00, %5647
  %5649 = fmul fast float %5646, %5648
  %5650 = fadd fast float %5649, %5647
  %5651 = fsub fast float 1.000000e+00, %5021
  %5652 = fmul fast float %5620, %5651
  %5653 = fadd fast float %5652, %5021
  %5654 = call float @dx.op.dot3.f32(i32 55, float %5643, float %5644, float %5645, float %5643, float %5644, float %5645)  ; Dot3(ax,ay,az,bx,by,bz)
  %5655 = call float @dx.op.unary.f32(i32 25, float %5654)  ; Rsqrt(value)
  %5656 = fmul fast float %5643, %5655
  %5657 = fmul fast float %5644, %5655
  %5658 = fmul fast float %5645, %5655
  br label %5659

; <label>:5659                                    ; preds = %5491, %5484
  %5660 = phi float [ %5490, %5484 ], [ %5497, %5491 ]
  %5661 = phi float [ %5489, %5484 ], [ %5495, %5491 ]
  %5662 = phi float [ %5488, %5484 ], [ %5493, %5491 ]
  %5663 = phi float [ %5487, %5484 ], [ %5496, %5491 ]
  %5664 = phi float [ %5486, %5484 ], [ %5494, %5491 ]
  %5665 = phi float [ %5485, %5484 ], [ %5492, %5491 ]
  %5666 = phi float [ %5098, %5484 ], [ %5543, %5491 ]
  %5667 = phi float [ %5099, %5484 ], [ %5544, %5491 ]
  %5668 = phi float [ %5100, %5484 ], [ %5545, %5491 ]
  %5669 = phi float [ %5058, %5484 ], [ %5634, %5491 ]
  %5670 = phi float [ %5059, %5484 ], [ %5635, %5491 ]
  %5671 = phi float [ %5060, %5484 ], [ %5636, %5491 ]
  %5672 = phi float [ %5037, %5484 ], [ %5656, %5491 ]
  %5673 = phi float [ %5038, %5484 ], [ %5657, %5491 ]
  %5674 = phi float [ %5039, %5484 ], [ %5658, %5491 ]
  %5675 = phi float [ %5061, %5484 ], [ %5650, %5491 ]
  %5676 = phi float [ %5021, %5484 ], [ %5653, %5491 ]
  %5677 = fsub fast float -0.000000e+00, %156
  %5678 = select i1 %216, float 0.000000e+00, float %5671
  %5679 = call float @dx.op.dot3.f32(i32 55, float %5672, float %5673, float %5674, float %5662, float %5661, float %5660)  ; Dot3(ax,ay,az,bx,by,bz)
  %5680 = call float @dx.op.unary.f32(i32 7, float %5679)  ; Saturate(value)
  %5681 = call float @dx.op.dot3.f32(i32 55, float %5665, float %5664, float %5663, float %5672, float %5673, float %5674)  ; Dot3(ax,ay,az,bx,by,bz)
  %5682 = fmul fast float %5681, 2.000000e+00
  %5683 = fmul fast float %5682, %5672
  %5684 = fmul fast float %5682, %5673
  %5685 = fmul fast float %5682, %5674
  %5686 = fsub fast float %5665, %5683
  %5687 = fsub fast float %5664, %5684
  %5688 = fsub fast float %5663, %5685
  %5689 = call float @dx.op.binary.f32(i32 36, float %5676, float 1.000000e+00)  ; FMin(a,b)
  %5690 = fsub fast float 1.000000e+00, %5676
  %5691 = bitcast float %5690 to i32
  %5692 = sub nsw i32 2129859010, %5691
  %5693 = bitcast i32 %5692 to float
  %5694 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %5695 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5696 = fcmp fast oeq float %5695, 0.000000e+00
  %5697 = fcmp fast oeq float %5694, 0.000000e+00
  %5698 = or i1 %5697, %5696
  br i1 %5698, label %5728, label %5699

; <label>:5699                                    ; preds = %5659
  %5700 = fsub fast float -0.000000e+00, %73
  %5701 = fsub fast float -0.000000e+00, %71
  %5702 = call float @dx.op.unary.f32(i32 24, float %5695)  ; Sqrt(value)
  %5703 = fdiv fast float %5702, %5694
  %5704 = fcmp fast ogt float %5703, 0x3FFB6F8900000000
  %5705 = select i1 %5704, float 0x3FFB6F8900000000, float %5703
  %5706 = fmul fast float %5705, 0x3FE8A23460000000
  %5707 = call float @dx.op.unary.f32(i32 7, float %5706)  ; Saturate(value)
  %5708 = call float @dx.op.binary.f32(i32 35, float %5705, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5709 = fmul fast float %5707, %5694
  %5710 = fmul fast float %5708, 0x3FF279A740000000
  %5711 = fadd fast float %5710, -1.000000e+00
  %5712 = call float @dx.op.dot3.f32(i32 55, float %5700, float %5701, float %72, float %5700, float %5701, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5713 = call float @dx.op.unary.f32(i32 25, float %5712)  ; Rsqrt(value)
  %5714 = fmul fast float %5713, %5700
  %5715 = fmul fast float %5713, %5701
  %5716 = fmul fast float %5713, %72
  %5717 = fmul fast float %5711, %5711
  %5718 = fsub fast float 1.000000e+00, %5717
  %5719 = fmul fast float %5708, 0x40005F8BE0000000
  %5720 = fsub fast float 0x400C5BF8A0000000, %5719
  %5721 = fdiv fast float %5709, %5720
  %5722 = fmul fast float %5721, 0x3FEE31C3C0000000
  %5723 = fmul fast float %5722, %5718
  %5724 = fmul fast float %5708, 0x3FDACB7480000000
  %5725 = fadd fast float %5724, 0xBFD7347680000000
  %5726 = fmul fast float %5725, %5721
  %5727 = fmul fast float %5726, %5718
  br label %5728

; <label>:5728                                    ; preds = %5699, %5659
  %5729 = phi float [ %5714, %5699 ], [ 0.000000e+00, %5659 ]
  %5730 = phi float [ %5715, %5699 ], [ 0.000000e+00, %5659 ]
  %5731 = phi float [ %5716, %5699 ], [ 0.000000e+00, %5659 ]
  %5732 = phi float [ %5723, %5699 ], [ 0.000000e+00, %5659 ]
  %5733 = phi float [ %5727, %5699 ], [ 0.000000e+00, %5659 ]
  %5734 = call float @dx.op.dot3.f32(i32 55, float %5729, float %5730, float %5731, float %5672, float %5673, float %5674)  ; Dot3(ax,ay,az,bx,by,bz)
  %5735 = fmul fast float %5734, 0x3FDF454380000000
  %5736 = fmul fast float %5734, %5734
  %5737 = fmul fast float %5736, 0x3FEE471020000000
  %5738 = fadd fast float %5737, 0xBFD42F6020000000
  %5739 = fmul fast float %5694, 0x3FD20DD760000000
  %5740 = fmul fast float %5738, %5733
  %5741 = fadd fast float %5740, %5739
  %5742 = fmul fast float %5735, %5732
  %5743 = fadd fast float %5741, %5742
  %5744 = fsub fast float %5741, %5742
  %5745 = call float @dx.op.dot3.f32(i32 55, float %5729, float %5730, float %5731, float %5686, float %5687, float %5688)  ; Dot3(ax,ay,az,bx,by,bz)
  %5746 = fmul fast float %5745, 0x3FDF454380000000
  %5747 = fmul fast float %5745, %5745
  %5748 = fmul fast float %5747, 0x3FEE471020000000
  %5749 = fadd fast float %5748, 0xBFD42F6020000000
  %5750 = call float @dx.op.dot3.f32(i32 55, float %5694, float %5732, float %5733, float 0x3FD20DD760000000, float %5746, float %5749)  ; Dot3(ax,ay,az,bx,by,bz)
  %5751 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  %5752 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5753 = fcmp fast oeq float %5752, 0.000000e+00
  %5754 = fcmp fast oeq float %5751, 0.000000e+00
  %5755 = or i1 %5754, %5753
  br i1 %5755, label %5785, label %5756

; <label>:5756                                    ; preds = %5728
  %5757 = fsub fast float -0.000000e+00, %69
  %5758 = fsub fast float -0.000000e+00, %67
  %5759 = call float @dx.op.unary.f32(i32 24, float %5752)  ; Sqrt(value)
  %5760 = fdiv fast float %5759, %5751
  %5761 = fcmp fast ogt float %5760, 0x3FFB6F8900000000
  %5762 = select i1 %5761, float 0x3FFB6F8900000000, float %5760
  %5763 = fmul fast float %5762, 0x3FE8A23460000000
  %5764 = call float @dx.op.unary.f32(i32 7, float %5763)  ; Saturate(value)
  %5765 = call float @dx.op.binary.f32(i32 35, float %5762, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5766 = fmul fast float %5764, %5751
  %5767 = fmul fast float %5765, 0x3FF279A740000000
  %5768 = fadd fast float %5767, -1.000000e+00
  %5769 = call float @dx.op.dot3.f32(i32 55, float %5757, float %5758, float %68, float %5757, float %5758, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5770 = call float @dx.op.unary.f32(i32 25, float %5769)  ; Rsqrt(value)
  %5771 = fmul fast float %5770, %5757
  %5772 = fmul fast float %5770, %5758
  %5773 = fmul fast float %5770, %68
  %5774 = fmul fast float %5768, %5768
  %5775 = fsub fast float 1.000000e+00, %5774
  %5776 = fmul fast float %5765, 0x40005F8BE0000000
  %5777 = fsub fast float 0x400C5BF8A0000000, %5776
  %5778 = fdiv fast float %5766, %5777
  %5779 = fmul fast float %5778, 0x3FEE31C3C0000000
  %5780 = fmul fast float %5779, %5775
  %5781 = fmul fast float %5765, 0x3FDACB7480000000
  %5782 = fadd fast float %5781, 0xBFD7347680000000
  %5783 = fmul fast float %5782, %5778
  %5784 = fmul fast float %5783, %5775
  br label %5785

; <label>:5785                                    ; preds = %5756, %5728
  %5786 = phi float [ %5771, %5756 ], [ 0.000000e+00, %5728 ]
  %5787 = phi float [ %5772, %5756 ], [ 0.000000e+00, %5728 ]
  %5788 = phi float [ %5773, %5756 ], [ 0.000000e+00, %5728 ]
  %5789 = phi float [ %5780, %5756 ], [ 0.000000e+00, %5728 ]
  %5790 = phi float [ %5784, %5756 ], [ 0.000000e+00, %5728 ]
  %5791 = call float @dx.op.dot3.f32(i32 55, float %5786, float %5787, float %5788, float %5672, float %5673, float %5674)  ; Dot3(ax,ay,az,bx,by,bz)
  %5792 = fmul fast float %5791, 0x3FDF454380000000
  %5793 = fmul fast float %5791, %5791
  %5794 = fmul fast float %5793, 0x3FEE471020000000
  %5795 = fadd fast float %5794, 0xBFD42F6020000000
  %5796 = fmul fast float %5751, 0x3FD20DD760000000
  %5797 = fmul fast float %5795, %5790
  %5798 = fadd fast float %5797, %5796
  %5799 = fmul fast float %5792, %5789
  %5800 = fadd fast float %5798, %5799
  %5801 = fsub fast float %5798, %5799
  %5802 = call float @dx.op.dot3.f32(i32 55, float %5786, float %5787, float %5788, float %5686, float %5687, float %5688)  ; Dot3(ax,ay,az,bx,by,bz)
  %5803 = fmul fast float %5802, 0x3FDF454380000000
  %5804 = fmul fast float %5802, %5802
  %5805 = fmul fast float %5804, 0x3FEE471020000000
  %5806 = fadd fast float %5805, 0xBFD42F6020000000
  %5807 = call float @dx.op.dot3.f32(i32 55, float %5751, float %5789, float %5790, float 0x3FD20DD760000000, float %5803, float %5806)  ; Dot3(ax,ay,az,bx,by,bz)
  %5808 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %5809 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5810 = fcmp fast oeq float %5809, 0.000000e+00
  %5811 = fcmp fast oeq float %5808, 0.000000e+00
  %5812 = or i1 %5811, %5810
  br i1 %5812, label %5842, label %5813

; <label>:5813                                    ; preds = %5785
  %5814 = fsub fast float -0.000000e+00, %65
  %5815 = fsub fast float -0.000000e+00, %63
  %5816 = call float @dx.op.unary.f32(i32 24, float %5809)  ; Sqrt(value)
  %5817 = fdiv fast float %5816, %5808
  %5818 = fcmp fast ogt float %5817, 0x3FFB6F8900000000
  %5819 = select i1 %5818, float 0x3FFB6F8900000000, float %5817
  %5820 = fmul fast float %5819, 0x3FE8A23460000000
  %5821 = call float @dx.op.unary.f32(i32 7, float %5820)  ; Saturate(value)
  %5822 = call float @dx.op.binary.f32(i32 35, float %5819, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5823 = fmul fast float %5821, %5808
  %5824 = fmul fast float %5822, 0x3FF279A740000000
  %5825 = fadd fast float %5824, -1.000000e+00
  %5826 = call float @dx.op.dot3.f32(i32 55, float %5814, float %5815, float %64, float %5814, float %5815, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5827 = call float @dx.op.unary.f32(i32 25, float %5826)  ; Rsqrt(value)
  %5828 = fmul fast float %5827, %5814
  %5829 = fmul fast float %5827, %5815
  %5830 = fmul fast float %5827, %64
  %5831 = fmul fast float %5825, %5825
  %5832 = fsub fast float 1.000000e+00, %5831
  %5833 = fmul fast float %5822, 0x40005F8BE0000000
  %5834 = fsub fast float 0x400C5BF8A0000000, %5833
  %5835 = fdiv fast float %5823, %5834
  %5836 = fmul fast float %5835, 0x3FEE31C3C0000000
  %5837 = fmul fast float %5836, %5832
  %5838 = fmul fast float %5822, 0x3FDACB7480000000
  %5839 = fadd fast float %5838, 0xBFD7347680000000
  %5840 = fmul fast float %5839, %5835
  %5841 = fmul fast float %5840, %5832
  br label %5842

; <label>:5842                                    ; preds = %5813, %5785
  %5843 = phi float [ %5828, %5813 ], [ 0.000000e+00, %5785 ]
  %5844 = phi float [ %5829, %5813 ], [ 0.000000e+00, %5785 ]
  %5845 = phi float [ %5830, %5813 ], [ 0.000000e+00, %5785 ]
  %5846 = phi float [ %5837, %5813 ], [ 0.000000e+00, %5785 ]
  %5847 = phi float [ %5841, %5813 ], [ 0.000000e+00, %5785 ]
  %5848 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5844, float %5845, float %5672, float %5673, float %5674)  ; Dot3(ax,ay,az,bx,by,bz)
  %5849 = fmul fast float %5848, 0x3FDF454380000000
  %5850 = fmul fast float %5848, %5848
  %5851 = fmul fast float %5850, 0x3FEE471020000000
  %5852 = fadd fast float %5851, 0xBFD42F6020000000
  %5853 = fmul fast float %5808, 0x3FD20DD760000000
  %5854 = fmul fast float %5852, %5847
  %5855 = fadd fast float %5854, %5853
  %5856 = fmul fast float %5849, %5846
  %5857 = fadd fast float %5855, %5856
  %5858 = fsub fast float %5855, %5856
  %5859 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5844, float %5845, float %5686, float %5687, float %5688)  ; Dot3(ax,ay,az,bx,by,bz)
  %5860 = fmul fast float %5859, 0x3FDF454380000000
  %5861 = fmul fast float %5859, %5859
  %5862 = fmul fast float %5861, 0x3FEE471020000000
  %5863 = fadd fast float %5862, 0xBFD42F6020000000
  %5864 = call float @dx.op.dot3.f32(i32 55, float %5808, float %5846, float %5847, float 0x3FD20DD760000000, float %5860, float %5863)  ; Dot3(ax,ay,az,bx,by,bz)
  %5865 = call float @dx.op.binary.f32(i32 35, float %5743, float 0.000000e+00)  ; FMax(a,b)
  %5866 = call float @dx.op.binary.f32(i32 35, float %5800, float 0.000000e+00)  ; FMax(a,b)
  %5867 = call float @dx.op.binary.f32(i32 35, float %5857, float 0.000000e+00)  ; FMax(a,b)
  %5868 = call float @dx.op.binary.f32(i32 35, float %5744, float 0.000000e+00)  ; FMax(a,b)
  %5869 = call float @dx.op.binary.f32(i32 35, float %5801, float 0.000000e+00)  ; FMax(a,b)
  %5870 = call float @dx.op.binary.f32(i32 35, float %5858, float 0.000000e+00)  ; FMax(a,b)
  %5871 = call float @dx.op.binary.f32(i32 35, float %5750, float 0.000000e+00)  ; FMax(a,b)
  %5872 = call float @dx.op.binary.f32(i32 35, float %5807, float 0.000000e+00)  ; FMax(a,b)
  %5873 = call float @dx.op.binary.f32(i32 35, float %5864, float 0.000000e+00)  ; FMax(a,b)
  %5874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5875 = extractvalue %dx.types.CBufRet.f32 %5874, 0
  %5876 = call float @dx.op.binary.f32(i32 36, float %5666, float %5875)  ; FMin(a,b)
  %5877 = fsub fast float 1.000000e+00, %5689
  %5878 = fmul fast float %5876, %5877
  %5879 = fsub fast float 1.000000e+00, %5878
  %5880 = bitcast float %5879 to i32
  %5881 = sub nsw i32 2129859010, %5880
  %5882 = bitcast i32 %5881 to float
  %5883 = call float @dx.op.binary.f32(i32 36, float %5667, float %5875)  ; FMin(a,b)
  %5884 = fmul fast float %5883, %5877
  %5885 = fsub fast float 1.000000e+00, %5884
  %5886 = bitcast float %5885 to i32
  %5887 = sub nsw i32 2129859010, %5886
  %5888 = bitcast i32 %5887 to float
  %5889 = call float @dx.op.binary.f32(i32 36, float %5668, float %5875)  ; FMin(a,b)
  %5890 = fmul fast float %5889, %5877
  %5891 = fsub fast float 1.000000e+00, %5890
  %5892 = bitcast float %5891 to i32
  %5893 = sub nsw i32 2129859010, %5892
  %5894 = bitcast i32 %5893 to float
  %5895 = fmul fast float %5865, %5689
  %5896 = fmul fast float %5895, %5882
  %5897 = fmul fast float %5866, %5689
  %5898 = fmul fast float %5897, %5888
  %5899 = fmul fast float %5867, %5689
  %5900 = fmul fast float %5899, %5894
  %5901 = call float @dx.op.binary.f32(i32 36, float %5669, float %5875)  ; FMin(a,b)
  %5902 = fmul fast float %5901, %5877
  %5903 = fsub fast float 1.000000e+00, %5902
  %5904 = bitcast float %5903 to i32
  %5905 = sub nsw i32 2129859010, %5904
  %5906 = bitcast i32 %5905 to float
  %5907 = call float @dx.op.binary.f32(i32 36, float %5670, float %5875)  ; FMin(a,b)
  %5908 = fmul fast float %5907, %5877
  %5909 = fsub fast float 1.000000e+00, %5908
  %5910 = bitcast float %5909 to i32
  %5911 = sub nsw i32 2129859010, %5910
  %5912 = bitcast i32 %5911 to float
  %5913 = call float @dx.op.binary.f32(i32 36, float %5678, float %5875)  ; FMin(a,b)
  %5914 = fmul fast float %5913, %5877
  %5915 = fsub fast float 1.000000e+00, %5914
  %5916 = bitcast float %5915 to i32
  %5917 = sub nsw i32 2129859010, %5916
  %5918 = bitcast i32 %5917 to float
  %5919 = fmul fast float %5871, %5689
  %5920 = fmul fast float %5919, %5906
  %5921 = fmul fast float %5872, %5689
  %5922 = fmul fast float %5921, %5912
  %5923 = fmul fast float %5873, %5689
  %5924 = fmul fast float %5923, %5918
  %5925 = call float @dx.op.dot3.f32(i32 55, float %5896, float %5898, float %5900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5926 = select i1 %216, float 0.000000e+00, float %5896
  %5927 = select i1 %216, float %5925, float %5898
  %5928 = select i1 %216, float 0.000000e+00, float %5900
  %5929 = call float @dx.op.dot3.f32(i32 55, float %5868, float %5869, float %5870, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5930 = select i1 %216, float 0.000000e+00, float %5868
  %5931 = select i1 %216, float %5929, float %5869
  %5932 = select i1 %216, float 0.000000e+00, float %5870
  %5933 = call float @dx.op.dot3.f32(i32 55, float %5920, float %5922, float %5924, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5934 = select i1 %216, float 0.000000e+00, float %5920
  %5935 = select i1 %216, float %5933, float %5922
  %5936 = select i1 %216, float 0.000000e+00, float %5924
  %5937 = fmul fast float %4417, %4417
  %5938 = call float @dx.op.unary.f32(i32 7, float %5937)  ; Saturate(value)
  %5939 = fmul fast float %5680, 9.843750e-01
  %5940 = fmul fast float %5675, 9.843750e-01
  %5941 = fadd fast float %5939, 7.812500e-03
  %5942 = fadd fast float %5940, 7.812500e-03
  %5943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5941, float %5942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5944 = extractvalue %dx.types.ResRet.f32 %5943, 0
  %5945 = extractvalue %dx.types.ResRet.f32 %5943, 1
  %5946 = extractvalue %dx.types.ResRet.f32 %5943, 2
  %5947 = extractvalue %dx.types.ResRet.f32 %5943, 3
  %5948 = fsub fast float 1.000000e+00, %5938
  %5949 = fsub fast float %5946, %5944
  %5950 = fsub fast float %5947, %5945
  %5951 = fmul fast float %5949, %5948
  %5952 = fmul fast float %5950, %5948
  %5953 = fadd fast float %5951, %5944
  %5954 = fadd fast float %5952, %5945
  %5955 = fmul fast float %5953, %5669
  %5956 = fmul fast float %5953, %5670
  %5957 = fmul fast float %5953, %5678
  %5958 = fadd fast float %5955, %5954
  %5959 = fadd fast float %5956, %5954
  %5960 = fadd fast float %5957, %5954
  %5961 = fcmp fast ogt float %5011, 0.000000e+00
  br i1 %5961, label %5962, label %5988

; <label>:5962                                    ; preds = %5842
  %5963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5011, float %5680, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5964 = extractvalue %dx.types.ResRet.f32 %5963, 0
  %5965 = extractvalue %dx.types.ResRet.f32 %5963, 1
  %5966 = extractvalue %dx.types.ResRet.f32 %5963, 2
  %5967 = fadd fast float %5964, -5.000000e-01
  %5968 = fadd fast float %5965, -5.000000e-01
  %5969 = fadd fast float %5966, -5.000000e-01
  %5970 = fsub fast float 1.000000e+00, %5669
  %5971 = fsub fast float 1.000000e+00, %5670
  %5972 = fsub fast float 1.000000e+00, %5678
  %5973 = fmul fast float %5669, 4.000000e+00
  %5974 = fmul fast float %5973, %5970
  %5975 = fmul fast float %5974, %5967
  %5976 = fmul fast float %5670, 4.000000e+00
  %5977 = fmul fast float %5976, %5971
  %5978 = fmul fast float %5977, %5968
  %5979 = fmul fast float %5678, 4.000000e+00
  %5980 = fmul fast float %5979, %5972
  %5981 = fmul fast float %5980, %5969
  %5982 = fadd fast float %5975, %5958
  %5983 = fadd fast float %5978, %5959
  %5984 = fadd fast float %5981, %5960
  %5985 = call float @dx.op.unary.f32(i32 7, float %5982)  ; Saturate(value)
  %5986 = call float @dx.op.unary.f32(i32 7, float %5983)  ; Saturate(value)
  %5987 = call float @dx.op.unary.f32(i32 7, float %5984)  ; Saturate(value)
  br label %5988

; <label>:5988                                    ; preds = %5962, %5842
  %5989 = phi float [ %5985, %5962 ], [ %5958, %5842 ]
  %5990 = phi float [ %5986, %5962 ], [ %5959, %5842 ]
  %5991 = phi float [ %5987, %5962 ], [ %5960, %5842 ]
  %5992 = call float @dx.op.binary.f32(i32 35, float %5990, float %5991)  ; FMax(a,b)
  %5993 = call float @dx.op.binary.f32(i32 35, float %5989, float %5992)  ; FMax(a,b)
  %5994 = fsub fast float 1.000000e+00, %5993
  %5995 = call float @dx.op.dot3.f32(i32 55, float %5666, float %5667, float %5668, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5996 = fcmp fast ogt float %5995, 0x3E7FF19E20000000
  %5997 = fdiv fast float 1.000000e+00, %5995
  %5998 = select i1 %5996, float %5997, float 0.000000e+00
  %5999 = fmul fast float %5998, %5666
  %6000 = fmul fast float %5998, %5667
  %6001 = fmul fast float %5998, %5668
  %6002 = fadd fast float %5999, -1.000000e+00
  %6003 = fadd fast float %6000, -1.000000e+00
  %6004 = fadd fast float %6001, -1.000000e+00
  %6005 = fmul fast float %6002, 5.000000e-01
  %6006 = fmul fast float %6003, 5.000000e-01
  %6007 = fmul fast float %6004, 5.000000e-01
  %6008 = fadd fast float %6005, 1.000000e+00
  %6009 = fadd fast float %6006, 1.000000e+00
  %6010 = fadd fast float %6007, 1.000000e+00
  %6011 = call float @dx.op.binary.f32(i32 35, float %5680, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6012 = fdiv fast float %4417, %6011
  %6013 = fcmp fast olt float %5084, 1.270000e+02
  %6014 = fcmp fast olt float %5085, 1.270000e+02
  %6015 = fcmp fast olt float %5086, 1.270000e+02
  %6016 = fmul fast float %5084, 0xBFF7154760000000
  %6017 = fmul fast float %6016, %6012
  %6018 = fmul fast float %5085, 0xBFF7154760000000
  %6019 = fmul fast float %6018, %6012
  %6020 = fmul fast float %5086, 0xBFF7154760000000
  %6021 = fmul fast float %6020, %6012
  %6022 = call float @dx.op.unary.f32(i32 21, float %6017)  ; Exp(value)
  %6023 = call float @dx.op.unary.f32(i32 21, float %6019)  ; Exp(value)
  %6024 = call float @dx.op.unary.f32(i32 21, float %6021)  ; Exp(value)
  %6025 = call float @dx.op.unary.f32(i32 7, float %6022)  ; Saturate(value)
  %6026 = call float @dx.op.unary.f32(i32 7, float %6023)  ; Saturate(value)
  %6027 = call float @dx.op.unary.f32(i32 7, float %6024)  ; Saturate(value)
  %6028 = select i1 %6013, float %6025, float 0.000000e+00
  %6029 = select i1 %6014, float %6026, float 0.000000e+00
  %6030 = select i1 %6015, float %6027, float 0.000000e+00
  %6031 = fmul fast float %6028, %5994
  %6032 = fmul fast float %6029, %5994
  %6033 = fmul fast float %6030, %5994
  %6034 = fadd fast float %6031, -1.000000e+00
  %6035 = fadd fast float %6032, -1.000000e+00
  %6036 = fadd fast float %6033, -1.000000e+00
  %6037 = fmul fast float %6034, %5034
  %6038 = fmul fast float %6035, %5034
  %6039 = fmul fast float %6036, %5034
  %6040 = fmul fast float %5989, %5934
  %6041 = fmul fast float %5990, %5935
  %6042 = fmul fast float %5991, %5936
  %6043 = fsub fast float 1.000000e+00, %5680
  %6044 = bitcast float %6043 to i32
  %6045 = sitofp i32 %6044 to float
  %6046 = fmul fast float %6045, 5.000000e+00
  %6047 = fadd fast float %6046, 0xC1EFBF8940000000
  %6048 = fptosi float %6047 to i32
  %6049 = bitcast i32 %6048 to float
  %6050 = fmul fast float %6049, %5010
  %6051 = fmul fast float %5926, %6050
  %6052 = fmul fast float %6051, %5994
  %6053 = fmul fast float %6052, %6008
  %6054 = fmul fast float %5927, %6050
  %6055 = fmul fast float %6054, %5994
  %6056 = fmul fast float %6055, %6009
  %6057 = fmul fast float %5928, %6050
  %6058 = fmul fast float %6057, %5994
  %6059 = fmul fast float %6058, %6010
  %6060 = fadd fast float %6040, %5015
  %6061 = fadd fast float %6060, %6053
  %6062 = fmul fast float %6061, %5034
  %6063 = fadd fast float %6041, %5016
  %6064 = fadd fast float %6063, %6056
  %6065 = fmul fast float %6064, %5034
  %6066 = fadd fast float %6042, %5017
  %6067 = fadd fast float %6066, %6059
  %6068 = fmul fast float %6067, %5034
  %6069 = fmul fast float %5670, 0x4012D0A400000000
  %6070 = fadd fast float %6039, 1.000000e+00
  %6071 = fadd fast float %6038, 1.000000e+00
  %6072 = fadd fast float %6037, 1.000000e+00
  %6073 = fmul fast float %5994, %5928
  %6074 = fmul fast float %5994, %5927
  %6075 = fmul fast float %5994, %5926
  %6076 = fsub fast float 1.000000e+00, %5675
  %6077 = fmul fast float %6076, %5034
  %6078 = fsub fast float 1.000000e+00, %6077
  %6079 = call float @dx.op.unary.f32(i32 7, float %6078)  ; Saturate(value)
  %6080 = fsub fast float 1.000000e+00, %6079
  %6081 = fadd fast float %6069, 0x3FDB6377A0000000
  %6082 = fmul fast float %6080, %6081
  %6083 = call float @dx.op.dot3.f32(i32 55, float %5102, float %5103, float %5104, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6084 = fadd fast float %6082, %6083
  %6085 = call float @dx.op.unary.f32(i32 7, float %6084)  ; Saturate(value)
  %6086 = call float @dx.op.binary.f32(i32 35, float %6085, float 0x3F847AE140000000)  ; FMax(a,b)
  %6087 = fmul fast float %6086, %6086
  %6088 = fmul fast float %6087, %6087
  %6089 = fmul fast float %6088, 0xC00A935000000000
  %6090 = call float @dx.op.unary.f32(i32 21, float %6089)  ; Exp(value)
  %6091 = fsub fast float 1.000000e+00, %6090
  %6092 = fmul fast float %6072, %5930
  %6093 = fmul fast float %6092, %6091
  %6094 = fmul fast float %6071, %5931
  %6095 = fmul fast float %6094, %6091
  %6096 = fmul fast float %6070, %5932
  %6097 = fmul fast float %6096, %6091
  %6098 = fadd fast float %6093, %6075
  %6099 = fmul fast float %6098, %5034
  %6100 = fadd fast float %6095, %6074
  %6101 = fmul fast float %6100, %5034
  %6102 = fadd fast float %6097, %6073
  %6103 = fmul fast float %6102, %5034
  %6104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6105 = extractvalue %dx.types.CBufRet.f32 %6104, 3
  %6106 = fcmp fast oeq float %6105, 0.000000e+00
  br i1 %6106, label %7311, label %6107

; <label>:6107                                    ; preds = %5988
  %6108 = extractvalue %dx.types.CBufRet.f32 %6104, 0
  %6109 = extractvalue %dx.types.CBufRet.f32 %6104, 1
  %6110 = extractvalue %dx.types.CBufRet.f32 %6104, 2
  %6111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6112 = extractvalue %dx.types.CBufRet.f32 %6111, 0
  %6113 = extractvalue %dx.types.CBufRet.f32 %6111, 1
  %6114 = extractvalue %dx.types.CBufRet.f32 %6111, 2
  %6115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6116 = extractvalue %dx.types.CBufRet.f32 %6115, 0
  %6117 = extractvalue %dx.types.CBufRet.f32 %6115, 1
  %6118 = call float @dx.op.dot3.f32(i32 55, float %6112, float %6113, float %6114, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6119 = select i1 %216, float %6116, float %6112
  %6120 = select i1 %216, float %6118, float %6113
  %6121 = select i1 %216, float %6117, float %6114
  %6122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6123 = extractvalue %dx.types.CBufRet.f32 %6122, 2
  %6124 = fmul fast float %6123, %106
  %6125 = fmul fast float %6123, %107
  %6126 = fmul fast float %6123, %108
  %6127 = fadd fast float %6124, %154
  %6128 = fadd fast float %6125, %155
  %6129 = fadd fast float %6126, %156
  %6130 = fcmp fast olt float %6105, 0.000000e+00
  br i1 %6130, label %6755, label %6131

; <label>:6131                                    ; preds = %6107
  %6132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6133 = extractvalue %dx.types.CBufRet.f32 %6132, 0
  %6134 = extractvalue %dx.types.CBufRet.f32 %6132, 1
  %6135 = extractvalue %dx.types.CBufRet.f32 %6132, 2
  %6136 = extractvalue %dx.types.CBufRet.f32 %6132, 3
  %6137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6138 = extractvalue %dx.types.CBufRet.f32 %6137, 0
  %6139 = extractvalue %dx.types.CBufRet.f32 %6137, 1
  %6140 = extractvalue %dx.types.CBufRet.f32 %6137, 2
  %6141 = extractvalue %dx.types.CBufRet.f32 %6137, 3
  %6142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6143 = extractvalue %dx.types.CBufRet.f32 %6142, 0
  %6144 = extractvalue %dx.types.CBufRet.f32 %6142, 1
  %6145 = extractvalue %dx.types.CBufRet.f32 %6142, 2
  %6146 = extractvalue %dx.types.CBufRet.f32 %6142, 3
  %6147 = fmul fast float %6133, %6127
  %6148 = call float @dx.op.tertiary.f32(i32 46, float %6128, float %6134, float %6147)  ; FMad(a,b,c)
  %6149 = call float @dx.op.tertiary.f32(i32 46, float %6129, float %6135, float %6148)  ; FMad(a,b,c)
  %6150 = fadd fast float %6149, %6136
  %6151 = fmul fast float %6138, %6127
  %6152 = call float @dx.op.tertiary.f32(i32 46, float %6128, float %6139, float %6151)  ; FMad(a,b,c)
  %6153 = call float @dx.op.tertiary.f32(i32 46, float %6129, float %6140, float %6152)  ; FMad(a,b,c)
  %6154 = fadd fast float %6153, %6141
  %6155 = fmul fast float %6143, %6127
  %6156 = call float @dx.op.tertiary.f32(i32 46, float %6128, float %6144, float %6155)  ; FMad(a,b,c)
  %6157 = call float @dx.op.tertiary.f32(i32 46, float %6129, float %6145, float %6156)  ; FMad(a,b,c)
  %6158 = fadd fast float %6157, %6146
  %6159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6160 = extractvalue %dx.types.CBufRet.f32 %6159, 0
  %6161 = extractvalue %dx.types.CBufRet.f32 %6159, 1
  %6162 = extractvalue %dx.types.CBufRet.f32 %6159, 3
  %6163 = fmul fast float %6162, %6150
  %6164 = fmul fast float %6162, %6154
  %6165 = fadd fast float %6163, %6160
  %6166 = fadd fast float %6164, %6161
  %6167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6168 = extractvalue %dx.types.CBufRet.f32 %6167, 0
  %6169 = extractvalue %dx.types.CBufRet.f32 %6167, 1
  %6170 = extractvalue %dx.types.CBufRet.f32 %6167, 3
  %6171 = fmul fast float %6170, %6150
  %6172 = fmul fast float %6170, %6154
  %6173 = fadd fast float %6171, %6168
  %6174 = fadd fast float %6172, %6169
  %6175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6176 = extractvalue %dx.types.CBufRet.f32 %6175, 1
  %6177 = fsub fast float %6176, %6158
  %6178 = extractvalue %dx.types.CBufRet.f32 %6175, 2
  %6179 = fmul fast float %6177, %6178
  %6180 = fsub fast float 1.000000e+00, %6179
  %6181 = call float @dx.op.unary.f32(i32 7, float %6180)  ; Saturate(value)
  %6182 = extractvalue %dx.types.CBufRet.f32 %6167, 2
  %6183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6184 = extractvalue %dx.types.CBufRet.f32 %6183, 2
  %6185 = fadd fast float %6184, %6182
  %6186 = fcmp fast ogt float %6185, 0.000000e+00
  br i1 %6186, label %6187, label %6211

; <label>:6187                                    ; preds = %6131
  %6188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6189 = extractvalue %dx.types.CBufRet.f32 %6188, 0
  %6190 = extractvalue %dx.types.CBufRet.f32 %6188, 1
  %6191 = fsub fast float %6173, %6189
  %6192 = fsub fast float %6174, %6190
  %6193 = fcmp fast olt float %6191, 0.000000e+00
  %6194 = fcmp fast olt float %6192, 0.000000e+00
  %6195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6196 = extractvalue %dx.types.CBufRet.f32 %6195, 0
  %6197 = extractvalue %dx.types.CBufRet.f32 %6195, 1
  %6198 = extractvalue %dx.types.CBufRet.f32 %6195, 2
  %6199 = extractvalue %dx.types.CBufRet.f32 %6195, 3
  %6200 = select i1 %6193, float %6196, float %6198
  %6201 = select i1 %6194, float %6197, float %6199
  %6202 = fmul fast float %6200, %6191
  %6203 = fmul fast float %6201, %6192
  %6204 = call float @dx.op.unary.f32(i32 6, float %6202)  ; FAbs(value)
  %6205 = call float @dx.op.unary.f32(i32 6, float %6203)  ; FAbs(value)
  %6206 = extractvalue %dx.types.CBufRet.f32 %6122, 0
  %6207 = call float @dx.op.binary.f32(i32 35, float %6204, float %6205)  ; FMax(a,b)
  %6208 = fsub fast float %6206, %6207
  %6209 = call float @dx.op.unary.f32(i32 7, float %6208)  ; Saturate(value)
  %6210 = fmul fast float %6209, %6181
  br label %6211

; <label>:6211                                    ; preds = %6187, %6131
  %6212 = phi float [ %6210, %6187 ], [ 0.000000e+00, %6131 ]
  %6213 = extractvalue %dx.types.CBufRet.f32 %6159, 2
  %6214 = extractvalue %dx.types.CBufRet.f32 %6183, 1
  %6215 = fadd fast float %6214, %6213
  %6216 = fcmp fast ogt float %6215, 0.000000e+00
  %6217 = extractvalue %dx.types.CBufRet.f32 %6122, 0
  br i1 %6216, label %6218, label %6241

; <label>:6218                                    ; preds = %6211
  %6219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6220 = extractvalue %dx.types.CBufRet.f32 %6219, 0
  %6221 = extractvalue %dx.types.CBufRet.f32 %6219, 1
  %6222 = fsub fast float %6165, %6220
  %6223 = fsub fast float %6166, %6221
  %6224 = fcmp fast olt float %6222, 0.000000e+00
  %6225 = fcmp fast olt float %6223, 0.000000e+00
  %6226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6227 = extractvalue %dx.types.CBufRet.f32 %6226, 0
  %6228 = extractvalue %dx.types.CBufRet.f32 %6226, 1
  %6229 = extractvalue %dx.types.CBufRet.f32 %6226, 2
  %6230 = extractvalue %dx.types.CBufRet.f32 %6226, 3
  %6231 = select i1 %6224, float %6227, float %6229
  %6232 = select i1 %6225, float %6228, float %6230
  %6233 = fmul fast float %6231, %6222
  %6234 = fmul fast float %6232, %6223
  %6235 = call float @dx.op.unary.f32(i32 6, float %6233)  ; FAbs(value)
  %6236 = call float @dx.op.unary.f32(i32 6, float %6234)  ; FAbs(value)
  %6237 = call float @dx.op.binary.f32(i32 35, float %6235, float %6236)  ; FMax(a,b)
  %6238 = fsub fast float %6217, %6237
  %6239 = call float @dx.op.unary.f32(i32 7, float %6238)  ; Saturate(value)
  %6240 = fmul fast float %6239, %6181
  br label %6241

; <label>:6241                                    ; preds = %6218, %6211
  %6242 = phi float [ %6240, %6218 ], [ 0.000000e+00, %6211 ]
  %6243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6244 = extractvalue %dx.types.CBufRet.f32 %6243, 1
  %6245 = call float @dx.op.unary.f32(i32 7, float %6244)  ; Saturate(value)
  %6246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6247 = extractvalue %dx.types.CBufRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.CBufRet.f32 %6246, 1
  %6249 = fsub fast float %6150, %6247
  %6250 = fsub fast float %6154, %6248
  %6251 = fcmp fast olt float %6249, 0.000000e+00
  %6252 = fcmp fast olt float %6250, 0.000000e+00
  %6253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6254 = extractvalue %dx.types.CBufRet.f32 %6253, 0
  %6255 = extractvalue %dx.types.CBufRet.f32 %6253, 1
  %6256 = extractvalue %dx.types.CBufRet.f32 %6253, 2
  %6257 = extractvalue %dx.types.CBufRet.f32 %6253, 3
  %6258 = select i1 %6251, float %6254, float %6256
  %6259 = select i1 %6252, float %6255, float %6257
  %6260 = fmul fast float %6258, %6249
  %6261 = fmul fast float %6259, %6250
  %6262 = call float @dx.op.unary.f32(i32 6, float %6260)  ; FAbs(value)
  %6263 = call float @dx.op.unary.f32(i32 6, float %6261)  ; FAbs(value)
  %6264 = call float @dx.op.binary.f32(i32 35, float %6262, float %6263)  ; FMax(a,b)
  %6265 = fsub fast float %6217, %6264
  %6266 = call float @dx.op.unary.f32(i32 7, float %6265)  ; Saturate(value)
  %6267 = call float @dx.op.binary.f32(i32 36, float %6266, float %6245)  ; FMin(a,b)
  %6268 = fmul fast float %6267, %6181
  %6269 = fsub fast float %6242, %6268
  %6270 = fsub fast float %6212, %6242
  %6271 = fsub fast float %6270, %6268
  %6272 = call float @dx.op.binary.f32(i32 35, float %6242, float %6212)  ; FMax(a,b)
  %6273 = call float @dx.op.binary.f32(i32 35, float %6268, float %6272)  ; FMax(a,b)
  %6274 = fcmp fast olt float %6273, 1.000000e+00
  br i1 %6274, label %6275, label %6673, !dx.controlflow.hints !94

; <label>:6275                                    ; preds = %6241
  %6276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6277 = extractvalue %dx.types.CBufRet.f32 %6276, 0
  %6278 = fcmp fast une float %6277, 0.000000e+00
  br i1 %6278, label %6279, label %6673, !dx.controlflow.hints !95

; <label>:6279                                    ; preds = %6275
  %6280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6281 = extractvalue %dx.types.CBufRet.f32 %6280, 0
  %6282 = extractvalue %dx.types.CBufRet.f32 %6280, 1
  %6283 = extractvalue %dx.types.CBufRet.f32 %6280, 2
  %6284 = extractvalue %dx.types.CBufRet.f32 %6280, 3
  %6285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6286 = extractvalue %dx.types.CBufRet.f32 %6285, 0
  %6287 = extractvalue %dx.types.CBufRet.f32 %6285, 1
  %6288 = extractvalue %dx.types.CBufRet.f32 %6285, 2
  %6289 = extractvalue %dx.types.CBufRet.f32 %6285, 3
  %6290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6291 = extractvalue %dx.types.CBufRet.f32 %6290, 0
  %6292 = extractvalue %dx.types.CBufRet.f32 %6290, 1
  %6293 = extractvalue %dx.types.CBufRet.f32 %6290, 2
  %6294 = extractvalue %dx.types.CBufRet.f32 %6290, 3
  %6295 = fmul fast float %6281, %6127
  %6296 = call float @dx.op.tertiary.f32(i32 46, float %6128, float %6282, float %6295)  ; FMad(a,b,c)
  %6297 = call float @dx.op.tertiary.f32(i32 46, float %6129, float %6283, float %6296)  ; FMad(a,b,c)
  %6298 = fadd fast float %6297, %6284
  %6299 = fmul fast float %6286, %6127
  %6300 = call float @dx.op.tertiary.f32(i32 46, float %6128, float %6287, float %6299)  ; FMad(a,b,c)
  %6301 = call float @dx.op.tertiary.f32(i32 46, float %6129, float %6288, float %6300)  ; FMad(a,b,c)
  %6302 = fadd fast float %6301, %6289
  %6303 = fmul fast float %6291, %6127
  %6304 = call float @dx.op.tertiary.f32(i32 46, float %6128, float %6292, float %6303)  ; FMad(a,b,c)
  %6305 = call float @dx.op.tertiary.f32(i32 46, float %6129, float %6293, float %6304)  ; FMad(a,b,c)
  %6306 = fadd fast float %6305, %6294
  %6307 = fcmp fast oge float %6298, 1.000000e+00
  %6308 = fcmp fast oge float %6302, 1.000000e+00
  %6309 = or i1 %6307, %6308
  %6310 = fcmp fast olt float %6298, 0.000000e+00
  %6311 = fcmp fast olt float %6302, 0.000000e+00
  %6312 = or i1 %6310, %6311
  %6313 = or i1 %6309, %6312
  br i1 %6313, label %6673, label %6314, !dx.controlflow.hints !96

; <label>:6314                                    ; preds = %6279
  %6315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6316 = extractvalue %dx.types.CBufRet.f32 %6315, 0
  %6317 = extractvalue %dx.types.CBufRet.f32 %6315, 1
  %6318 = extractvalue %dx.types.CBufRet.f32 %6315, 2
  %6319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6320 = extractvalue %dx.types.CBufRet.i32 %6319, 2
  %6321 = uitofp i32 %6320 to float
  %6322 = extractvalue %dx.types.CBufRet.i32 %6319, 3
  %6323 = uitofp i32 %6322 to float
  %6324 = extractvalue %dx.types.CBufRet.f32 %6315, 3
  %6325 = fmul fast float %6324, 2.000000e+00
  %6326 = fsub fast float %6298, %6316
  %6327 = fsub fast float %6302, %6317
  %6328 = fmul fast float %6325, %6326
  %6329 = fmul fast float %6325, %6327
  %6330 = fdiv fast float 1.000000e+00, %6110
  %6331 = fmul fast float %6329, %6330
  %6332 = call float @dx.op.unary.f32(i32 6, float %6331)  ; FAbs(value)
  %6333 = fmul fast float %6318, %6129
  %6334 = fmul fast float %6333, %6325
  %6335 = call float @dx.op.unary.f32(i32 6, float %6334)  ; FAbs(value)
  %6336 = call float @dx.op.unary.f32(i32 6, float %6328)  ; FAbs(value)
  %6337 = call float @dx.op.binary.f32(i32 35, float %6335, float %6332)  ; FMax(a,b)
  %6338 = call float @dx.op.binary.f32(i32 35, float %6336, float %6337)  ; FMax(a,b)
  %6339 = fmul fast float %6338, 2.000000e+00
  %6340 = call float @dx.op.unary.f32(i32 23, float %6339)  ; Log(value)
  %6341 = call float @dx.op.binary.f32(i32 35, float %6340, float %6321)  ; FMax(a,b)
  %6342 = call float @dx.op.unary.f32(i32 22, float %6341)  ; Frc(value)
  %6343 = fadd fast float %6342, 0xBFEA666660000000
  %6344 = fmul fast float %6343, 8.000000e+00
  %6345 = call float @dx.op.unary.f32(i32 7, float %6344)  ; Saturate(value)
  %6346 = call float @dx.op.unary.f32(i32 27, float %6341)  ; Round_ni(value)
  %6347 = fadd fast float %6346, %6345
  %6348 = call float @dx.op.binary.f32(i32 36, float %6347, float %6323)  ; FMin(a,b)
  %6349 = call float @dx.op.unary.f32(i32 27, float %6348)  ; Round_ni(value)
  %6350 = fsub fast float -0.000000e+00, %6349
  %6351 = call float @dx.op.unary.f32(i32 21, float %6350)  ; Exp(value)
  %6352 = fmul fast float %6351, %6325
  %6353 = fmul fast float %6352, %6298
  %6354 = fmul fast float %6352, %6302
  %6355 = fmul fast float %6353, 2.500000e-01
  %6356 = fmul fast float %6354, 2.500000e-01
  %6357 = fadd fast float %6355, 5.000000e-01
  %6358 = fadd fast float %6356, 5.000000e-01
  %6359 = fsub fast float %6323, %6321
  %6360 = fptoui float %6359 to i32
  %6361 = add i32 %6360, 320
  %6362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %6361)  ; CBufferLoadLegacy(handle,regIndex)
  %6363 = extractvalue %dx.types.CBufRet.f32 %6362, 0
  %6364 = extractvalue %dx.types.CBufRet.f32 %6362, 1
  %6365 = fcmp fast une float %6348, %6323
  %6366 = fsub fast float %6298, %6363
  %6367 = fsub fast float %6302, %6364
  %6368 = call float @dx.op.unary.f32(i32 6, float %6366)  ; FAbs(value)
  %6369 = call float @dx.op.unary.f32(i32 6, float %6367)  ; FAbs(value)
  %6370 = fmul fast float %6368, %6352
  %6371 = fmul fast float %6369, %6352
  %6372 = fcmp fast olt float %6370, 1.000000e+00
  %6373 = fcmp fast olt float %6371, 1.000000e+00
  %6374 = and i1 %6372, %6373
  %6375 = or i1 %6365, %6374
  br i1 %6375, label %6376, label %6673, !dx.controlflow.hints !97

; <label>:6376                                    ; preds = %6314
  %6377 = fmul fast float %6354, 5.000000e-01
  %6378 = fmul fast float %6353, 5.000000e-01
  %6379 = fadd fast float %6377, 5.000000e-01
  %6380 = fadd fast float %6378, 5.000000e-01
  %6381 = sitofp i32 %6320 to float
  %6382 = fsub fast float %6348, %6381
  %6383 = call float @dx.op.unary.f32(i32 27, float %6382)  ; Round_ni(value)
  %6384 = call float @dx.op.unary.f32(i32 22, float %6348)  ; Frc(value)
  %6385 = call float @dx.op.unary.f32(i32 22, float %6380)  ; Frc(value)
  %6386 = call float @dx.op.unary.f32(i32 22, float %6379)  ; Frc(value)
  %6387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6385, float %6386, float %6383, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6388 = extractvalue %dx.types.ResRet.f32 %6387, 0
  %6389 = extractvalue %dx.types.ResRet.f32 %6387, 1
  %6390 = extractvalue %dx.types.ResRet.f32 %6387, 2
  %6391 = extractvalue %dx.types.ResRet.f32 %6387, 3
  %6392 = fcmp fast ogt float %6384, 0.000000e+00
  br i1 %6392, label %6393, label %6414, !dx.controlflow.hints !98

; <label>:6393                                    ; preds = %6376
  %6394 = fadd fast float %6383, 1.000000e+00
  %6395 = call float @dx.op.unary.f32(i32 22, float %6357)  ; Frc(value)
  %6396 = call float @dx.op.unary.f32(i32 22, float %6358)  ; Frc(value)
  %6397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6395, float %6396, float %6394, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6398 = extractvalue %dx.types.ResRet.f32 %6397, 0
  %6399 = extractvalue %dx.types.ResRet.f32 %6397, 1
  %6400 = extractvalue %dx.types.ResRet.f32 %6397, 2
  %6401 = extractvalue %dx.types.ResRet.f32 %6397, 3
  %6402 = fsub fast float %6398, %6388
  %6403 = fsub fast float %6399, %6389
  %6404 = fsub fast float %6400, %6390
  %6405 = fsub fast float %6401, %6391
  %6406 = fmul fast float %6402, %6384
  %6407 = fmul fast float %6403, %6384
  %6408 = fmul fast float %6404, %6384
  %6409 = fmul fast float %6405, %6384
  %6410 = fadd fast float %6406, %6388
  %6411 = fadd fast float %6407, %6389
  %6412 = fadd fast float %6408, %6390
  %6413 = fadd fast float %6409, %6391
  br label %6414

; <label>:6414                                    ; preds = %6393, %6376
  %6415 = phi float [ %6410, %6393 ], [ %6388, %6376 ]
  %6416 = phi float [ %6411, %6393 ], [ %6389, %6376 ]
  %6417 = phi float [ %6412, %6393 ], [ %6390, %6376 ]
  %6418 = phi float [ %6413, %6393 ], [ %6391, %6376 ]
  %6419 = fadd fast float %6415, -5.000000e-01
  %6420 = fadd fast float %6417, -5.000000e-01
  %6421 = fmul fast float %6419, 0xBFD5555560000000
  %6422 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6420, float %6421)  ; FMad(a,b,c)
  %6423 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6416, float 0.000000e+00)  ; FMad(a,b,c)
  %6424 = fadd fast float %6423, %6418
  %6425 = fmul fast float %6419, -7.500000e-01
  %6426 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6420, float %6425)  ; FMad(a,b,c)
  %6427 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6416, float 0.000000e+00)  ; FMad(a,b,c)
  %6428 = fadd fast float %6427, %6418
  %6429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6430 = extractvalue %dx.types.CBufRet.f32 %6429, 0
  %6431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6432 = extractvalue %dx.types.CBufRet.f32 %6431, 0
  %6433 = extractvalue %dx.types.CBufRet.f32 %6431, 1
  %6434 = extractvalue %dx.types.CBufRet.f32 %6431, 2
  %6435 = extractvalue %dx.types.CBufRet.f32 %6431, 3
  %6436 = fsub fast float %6432, %6422
  %6437 = fsub fast float %6433, %6424
  %6438 = fsub fast float %6434, %6426
  %6439 = fsub fast float %6435, %6428
  %6440 = fmul fast float %6436, %6430
  %6441 = fmul fast float %6437, %6430
  %6442 = fmul fast float %6438, %6430
  %6443 = fmul fast float %6439, %6430
  %6444 = fadd fast float %6440, %6422
  %6445 = fadd fast float %6441, %6424
  %6446 = fadd fast float %6442, %6426
  %6447 = fadd fast float %6443, %6428
  %6448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6449 = extractvalue %dx.types.ResRet.i32 %6448, 0
  %6450 = and i32 %6449, 536870911
  %6451 = uitofp i32 %6450 to float
  %6452 = fmul fast float %6451, %6298
  %6453 = fmul fast float %6451, %6302
  %6454 = fptoui float %6452 to i32
  %6455 = fptoui float %6453 to i32
  %6456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6457 = extractvalue %dx.types.ResRet.i32 %6456, 0
  %6458 = and i32 %6457, 31
  %6459 = lshr i32 %6454, %6458
  %6460 = lshr i32 %6455, %6458
  %6461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6462 = extractvalue %dx.types.ResRet.i32 %6461, 0
  %6463 = and i32 %6462, 31
  %6464 = shl i32 1, %6463
  %6465 = call i32 @dx.op.binary.i32(i32 40, i32 %6464, i32 4)  ; UMin(a,b)
  %6466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6467 = extractvalue %dx.types.ResRet.i32 %6466, 0
  %6468 = extractvalue %dx.types.ResRet.i32 %6466, 1
  %6469 = icmp eq i32 %6465, 0
  br i1 %6469, label %6511, label %6470

; <label>:6470                                    ; preds = %6414
  br label %6471

; <label>:6471                                    ; preds = %6499, %6470
  %6472 = phi i32 [ %6502, %6499 ], [ 0, %6470 ]
  %6473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6474 = extractvalue %dx.types.ResRet.i32 %6473, 0
  %6475 = lshr i32 %6474, 16
  %6476 = and i32 %6475, 31
  %6477 = shl i32 %6460, %6476
  %6478 = add i32 %6477, %6459
  %6479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6480 = extractvalue %dx.types.ResRet.i32 %6479, 0
  %6481 = and i32 %6480, 31
  %6482 = shl i32 %6478, %6481
  %6483 = add i32 %6482, %6472
  %6484 = shl i32 %6483, 2
  %6485 = add i32 %6484, 32
  %6486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6485, i32 undef)  ; BufferLoad(srv,index,wot)
  %6487 = extractvalue %dx.types.ResRet.i32 %6486, 0
  %6488 = icmp slt i32 %6487, 0
  %6489 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6472
  %6490 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6472
  %6491 = bitcast float* %6489 to i32*
  %6492 = bitcast float* %6490 to i32*
  br i1 %6488, label %6493, label %6499

; <label>:6493                                    ; preds = %6471
  %6494 = and i32 %6487, 1073741823
  %6495 = add nuw nsw i32 %6494, 20
  %6496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6495, i32 undef)  ; BufferLoad(srv,index,wot)
  %6497 = extractvalue %dx.types.ResRet.i32 %6496, 0
  %6498 = extractvalue %dx.types.ResRet.i32 %6496, 1
  br label %6499

; <label>:6499                                    ; preds = %6493, %6471
  %6500 = phi i32 [ %6497, %6493 ], [ %6467, %6471 ]
  %6501 = phi i32 [ %6498, %6493 ], [ %6468, %6471 ]
  store i32 %6500, i32* %6491, align 4
  store i32 %6501, i32* %6492, align 4
  %6502 = add nuw i32 %6472, 1
  %6503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6504 = extractvalue %dx.types.CBufRet.i32 %6503, 2
  %6505 = icmp eq i32 %6504, 0
  %6506 = icmp ugt i32 %6487, -1073741825
  %6507 = and i1 %6506, %6505
  %6508 = icmp ult i32 %6502, %6465
  %6509 = and i1 %6507, %6508
  br i1 %6509, label %6471, label %6510

; <label>:6510                                    ; preds = %6499
  br label %6511

; <label>:6511                                    ; preds = %6510, %6414
  %6512 = phi i32 [ 0, %6414 ], [ %6502, %6510 ]
  %6513 = extractvalue %dx.types.CBufRet.f32 %6276, 2
  %6514 = fptoui float %6513 to i32
  %6515 = icmp eq i32 %6514, 0
  br i1 %6515, label %6567, label %6516

; <label>:6516                                    ; preds = %6511
  br label %6517

; <label>:6517                                    ; preds = %6562, %6516
  %6518 = phi i32 [ %6563, %6562 ], [ %6512, %6516 ]
  %6519 = phi i32 [ %6564, %6562 ], [ 0, %6516 ]
  %6520 = lshr i32 %6519, 2
  %6521 = and i32 %6519, 3
  %6522 = add nuw nsw i32 %6520, 83
  %6523 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6522)  ; CBufferLoadLegacy(handle,regIndex)
  %6524 = extractvalue %dx.types.CBufRet.i32 %6523, 0
  %6525 = extractvalue %dx.types.CBufRet.i32 %6523, 1
  %6526 = extractvalue %dx.types.CBufRet.i32 %6523, 2
  %6527 = extractvalue %dx.types.CBufRet.i32 %6523, 3
  %6528 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6524, i32* %6528, align 4
  %6529 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6525, i32* %6529, align 4
  %6530 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6526, i32* %6530, align 4
  %6531 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6527, i32* %6531, align 4
  %6532 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6521
  %6533 = load i32, i32* %6532, align 4, !tbaa !99, !noalias !103
  %6534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6535 = extractvalue %dx.types.ResRet.i32 %6534, 0
  %6536 = lshr i32 %6535, 16
  %6537 = and i32 %6536, 31
  %6538 = shl i32 %6460, %6537
  %6539 = add i32 %6538, %6459
  %6540 = shl i32 %6539, 2
  %6541 = add i32 %6540, %6533
  %6542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6541, i32 undef)  ; BufferLoad(srv,index,wot)
  %6543 = extractvalue %dx.types.ResRet.i32 %6542, 0
  %6544 = icmp eq i32 %6543, 0
  br i1 %6544, label %6562, label %6545

; <label>:6545                                    ; preds = %6517
  %6546 = icmp slt i32 %6543, 0
  %6547 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6518
  %6548 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6518
  %6549 = bitcast float* %6547 to i32*
  %6550 = bitcast float* %6548 to i32*
  br i1 %6546, label %6551, label %6558

; <label>:6551                                    ; preds = %6545
  %6552 = and i32 %6543, 1073741823
  %6553 = add i32 %6533, 20
  %6554 = add i32 %6553, %6552
  %6555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6554, i32 undef)  ; BufferLoad(srv,index,wot)
  %6556 = extractvalue %dx.types.ResRet.i32 %6555, 0
  %6557 = extractvalue %dx.types.ResRet.i32 %6555, 1
  br label %6558

; <label>:6558                                    ; preds = %6551, %6545
  %6559 = phi i32 [ %6556, %6551 ], [ %6467, %6545 ]
  %6560 = phi i32 [ %6557, %6551 ], [ %6468, %6545 ]
  store i32 %6559, i32* %6549, align 4
  store i32 %6560, i32* %6550, align 4
  %6561 = add i32 %6518, 1
  br label %6562

; <label>:6562                                    ; preds = %6558, %6517
  %6563 = phi i32 [ %6518, %6517 ], [ %6561, %6558 ]
  %6564 = add nuw i32 %6519, 1
  %6565 = icmp eq i32 %6564, %6514
  br i1 %6565, label %6566, label %6517

; <label>:6566                                    ; preds = %6562
  br label %6567

; <label>:6567                                    ; preds = %6566, %6511
  %6568 = phi i32 [ %6512, %6511 ], [ %6563, %6566 ]
  %6569 = icmp eq i32 %6568, 1
  %6570 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 0
  %6571 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  br i1 %6569, label %6572, label %6575

; <label>:6572                                    ; preds = %6567
  %6573 = load float, float* %6570, align 4
  %6574 = load float, float* %6571, align 4
  br label %6602

; <label>:6575                                    ; preds = %6567
  %6576 = load float, float* %6570, align 4
  %6577 = load float, float* %6571, align 4
  %6578 = fdiv fast float 1.000000e+00, %6577
  %6579 = fsub fast float %6576, %6578
  %6580 = icmp ugt i32 %6568, 1
  br i1 %6580, label %6581, label %6597

; <label>:6581                                    ; preds = %6575
  br label %6582

; <label>:6582                                    ; preds = %6582, %6581
  %6583 = phi float [ %6592, %6582 ], [ %6579, %6581 ]
  %6584 = phi float [ %6593, %6582 ], [ %6576, %6581 ]
  %6585 = phi i32 [ %6594, %6582 ], [ 1, %6581 ]
  %6586 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6585
  %6587 = load float, float* %6586, align 4
  %6588 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6585
  %6589 = load float, float* %6588, align 4
  %6590 = fdiv fast float 1.000000e+00, %6589
  %6591 = fsub fast float %6587, %6590
  %6592 = call float @dx.op.binary.f32(i32 36, float %6583, float %6591)  ; FMin(a,b)
  %6593 = call float @dx.op.binary.f32(i32 35, float %6584, float %6587)  ; FMax(a,b)
  %6594 = add nuw i32 %6585, 1
  %6595 = icmp eq i32 %6594, %6568
  br i1 %6595, label %6596, label %6582

; <label>:6596                                    ; preds = %6582
  br label %6597

; <label>:6597                                    ; preds = %6596, %6575
  %6598 = phi float [ %6579, %6575 ], [ %6592, %6596 ]
  %6599 = phi float [ %6576, %6575 ], [ %6593, %6596 ]
  %6600 = fsub fast float %6599, %6598
  %6601 = fdiv fast float 1.000000e+00, %6600
  br label %6602

; <label>:6602                                    ; preds = %6597, %6572
  %6603 = phi float [ %6573, %6572 ], [ %6599, %6597 ]
  %6604 = phi float [ %6574, %6572 ], [ %6601, %6597 ]
  %6605 = fadd fast float %6306, %6603
  %6606 = fmul fast float %6605, %6604
  %6607 = call float @dx.op.unary.f32(i32 7, float %6606)  ; Saturate(value)
  %6608 = fmul fast float %6607, 2.000000e+00
  %6609 = fsub fast float 1.000000e+00, %6608
  %6610 = fmul fast float %6444, %6444
  %6611 = fsub fast float %6445, %6610
  %6612 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6611)  ; FMax(a,b)
  %6613 = fdiv fast float 1.000000e+00, %6612
  %6614 = fmul fast float %6445, %6444
  %6615 = fsub fast float %6446, %6614
  %6616 = fsub fast float %6609, %6444
  %6617 = fmul fast float %6609, %6609
  %6618 = fsub fast float %6617, %6445
  %6619 = fmul fast float %6613, %6615
  %6620 = fmul fast float %6619, %6616
  %6621 = fsub fast float %6618, %6620
  %6622 = fmul fast float %6445, %6445
  %6623 = fsub fast float %6447, %6622
  %6624 = fmul fast float %6615, %6615
  %6625 = fmul fast float %6624, %6613
  %6626 = fsub fast float %6623, %6625
  %6627 = fdiv fast float %6621, %6626
  %6628 = fmul fast float %6627, %6615
  %6629 = fsub fast float %6616, %6628
  %6630 = fmul fast float %6629, %6613
  %6631 = fmul fast float %6630, %6444
  %6632 = fsub fast float 1.000000e+00, %6631
  %6633 = fmul fast float %6627, %6445
  %6634 = fsub fast float %6632, %6633
  %6635 = fmul fast float %6630, %6630
  %6636 = fmul fast float %6627, 4.000000e+00
  %6637 = fmul fast float %6636, %6634
  %6638 = fsub fast float %6635, %6637
  %6639 = call float @dx.op.unary.f32(i32 24, float %6638)  ; Sqrt(value)
  %6640 = fcmp fast oge float %6630, 0.000000e+00
  %6641 = fsub fast float -0.000000e+00, %6639
  %6642 = select i1 %6640, float %6641, float %6639
  %6643 = fsub fast float %6642, %6630
  %6644 = fdiv fast float %6643, %6627
  %6645 = fdiv fast float %6634, %6643
  %6646 = fmul fast float %6644, 5.000000e-01
  %6647 = fmul fast float %6645, 2.000000e+00
  %6648 = select i1 %6640, float %6646, float %6647
  %6649 = select i1 %6640, float %6647, float %6646
  %6650 = call float @dx.op.binary.f32(i32 35, float %6648, float %6649)  ; FMax(a,b)
  %6651 = call float @dx.op.binary.f32(i32 36, float %6648, float %6649)  ; FMin(a,b)
  %6652 = fcmp fast ogt float %6609, %6650
  %6653 = fsub fast float %6609, %6651
  %6654 = fsub fast float %6609, %6650
  %6655 = fsub fast float %6650, %6651
  %6656 = select i1 %6652, float %6654, float %6655
  %6657 = fmul float %6653, %6656
  %6658 = select i1 %6652, float %6651, float %6609
  %6659 = fcmp fast ogt float %6609, %6651
  %6660 = fmul fast float %6658, %6650
  %6661 = fadd fast float %6658, %6650
  %6662 = fmul fast float %6661, %6444
  %6663 = fadd fast float %6660, %6445
  %6664 = fsub fast float %6663, %6662
  %6665 = fdiv fast float %6664, %6657
  %6666 = select i1 %6659, float %6665, float 0.000000e+00
  %6667 = fsub fast float 1.000000e+00, %6666
  %6668 = select i1 %6652, float %6667, float %6666
  %6669 = call float @dx.op.unary.f32(i32 7, float %6668)  ; Saturate(value)
  %6670 = extractvalue %dx.types.CBufRet.f32 %6429, 3
  %6671 = fmul fast float %6670, %6669
  %6672 = fsub fast float 1.000000e+00, %6671
  br label %6673

; <label>:6673                                    ; preds = %6602, %6314, %6279, %6275, %6241
  %6674 = phi float [ 1.000000e+00, %6241 ], [ %6672, %6602 ], [ 1.000000e+00, %6279 ], [ 1.000000e+00, %6314 ], [ 1.000000e+00, %6275 ]
  %6675 = fcmp fast ogt float %6271, 0.000000e+00
  br i1 %6675, label %6676, label %6682, !dx.controlflow.hints !112

; <label>:6676                                    ; preds = %6673
  %6677 = fadd fast float %6184, %6158
  %6678 = call float @dx.op.binary.f32(i32 35, float %6677, float 0.000000e+00)  ; FMax(a,b)
  %6679 = fadd fast float %6678, 0x3F10000000000000
  %6680 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %6173, float %6174, float undef, float undef, i32 0, i32 0, i32 undef, float %6679)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6681 = extractvalue %dx.types.ResRet.f32 %6680, 0
  br label %6682

; <label>:6682                                    ; preds = %6676, %6673
  %6683 = phi float [ %6681, %6676 ], [ 1.000000e+00, %6673 ]
  %6684 = fcmp fast ogt float %6269, 0.000000e+00
  br i1 %6684, label %6685, label %6691, !dx.controlflow.hints !113

; <label>:6685                                    ; preds = %6682
  %6686 = fadd fast float %6214, %6158
  %6687 = call float @dx.op.binary.f32(i32 35, float %6686, float 0.000000e+00)  ; FMax(a,b)
  %6688 = fadd fast float %6687, 0x3F10000000000000
  %6689 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %6165, float %6166, float undef, float undef, i32 0, i32 0, i32 undef, float %6688)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6690 = extractvalue %dx.types.ResRet.f32 %6689, 0
  br label %6691

; <label>:6691                                    ; preds = %6685, %6682
  %6692 = phi float [ %6690, %6685 ], [ 1.000000e+00, %6682 ]
  %6693 = fcmp fast ogt float %6268, 0.000000e+00
  br i1 %6693, label %6694, label %6701, !dx.controlflow.hints !114

; <label>:6694                                    ; preds = %6691
  %6695 = extractvalue %dx.types.CBufRet.f32 %6183, 0
  %6696 = fadd fast float %6695, %6158
  %6697 = call float @dx.op.binary.f32(i32 35, float %6696, float 0.000000e+00)  ; FMax(a,b)
  %6698 = fadd fast float %6697, 0x3F10000000000000
  %6699 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %6150, float %6154, float undef, float undef, i32 0, i32 0, i32 undef, float %6698)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6700 = extractvalue %dx.types.ResRet.f32 %6699, 0
  br label %6701

; <label>:6701                                    ; preds = %6694, %6691
  %6702 = phi float [ %6700, %6694 ], [ 1.000000e+00, %6691 ]
  %6703 = fsub fast float %6683, %6674
  %6704 = fmul fast float %6703, %6212
  %6705 = fadd fast float %6704, %6674
  %6706 = fsub fast float %6692, %6705
  %6707 = fmul fast float %6706, %6242
  %6708 = fadd fast float %6707, %6705
  %6709 = fsub fast float %6702, %6708
  %6710 = fmul fast float %6709, %6268
  %6711 = fadd fast float %6710, %6708
  %6712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6713 = extractvalue %dx.types.CBufRet.f32 %6712, 2
  %6714 = fcmp fast ogt float %6713, 0.000000e+00
  br i1 %6714, label %6715, label %6755, !dx.controlflow.hints !115

; <label>:6715                                    ; preds = %6701
  %6716 = fcmp fast ugt float %6713, 0.000000e+00
  br i1 %6716, label %6717, label %6752

; <label>:6717                                    ; preds = %6715
  %6718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6719 = extractvalue %dx.types.CBufRet.f32 %6718, 0
  %6720 = extractvalue %dx.types.CBufRet.f32 %6718, 1
  %6721 = extractvalue %dx.types.CBufRet.f32 %6718, 2
  %6722 = extractvalue %dx.types.CBufRet.f32 %6718, 3
  %6723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6724 = extractvalue %dx.types.CBufRet.f32 %6723, 0
  %6725 = extractvalue %dx.types.CBufRet.f32 %6723, 1
  %6726 = extractvalue %dx.types.CBufRet.f32 %6723, 2
  %6727 = extractvalue %dx.types.CBufRet.f32 %6723, 3
  %6728 = extractvalue %dx.types.CBufRet.f32 %6712, 0
  %6729 = extractvalue %dx.types.CBufRet.f32 %6712, 1
  %6730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6731 = extractvalue %dx.types.CBufRet.f32 %6730, 0
  %6732 = extractvalue %dx.types.CBufRet.f32 %6730, 1
  %6733 = extractvalue %dx.types.CBufRet.f32 %6730, 2
  %6734 = fadd fast float %6731, %6127
  %6735 = fadd fast float %6732, %6128
  %6736 = fadd fast float %6733, %6129
  %6737 = fmul fast float %6734, %6719
  %6738 = call float @dx.op.tertiary.f32(i32 46, float %6720, float %6735, float %6737)  ; FMad(a,b,c)
  %6739 = call float @dx.op.tertiary.f32(i32 46, float %6721, float %6736, float %6738)  ; FMad(a,b,c)
  %6740 = fadd fast float %6739, %6722
  %6741 = fmul fast float %6734, %6724
  %6742 = call float @dx.op.tertiary.f32(i32 46, float %6725, float %6735, float %6741)  ; FMad(a,b,c)
  %6743 = call float @dx.op.tertiary.f32(i32 46, float %6726, float %6736, float %6742)  ; FMad(a,b,c)
  %6744 = fadd fast float %6743, %6727
  %6745 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6740, float %6744, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6746 = extractvalue %dx.types.ResRet.f32 %6745, 0
  %6747 = fmul fast float %6746, %6729
  %6748 = fadd fast float %6747, %6728
  %6749 = call float @dx.op.unary.f32(i32 7, float %6748)  ; Saturate(value)
  %6750 = fmul fast float %6749, %6713
  %6751 = fsub fast float 1.000000e+00, %6750
  br label %6752

; <label>:6752                                    ; preds = %6717, %6715
  %6753 = phi float [ %6751, %6717 ], [ 1.000000e+00, %6715 ]
  %6754 = fmul fast float %6753, %6711
  br label %6755

; <label>:6755                                    ; preds = %6752, %6701, %6107
  %6756 = phi float [ 1.000000e+00, %6107 ], [ %6754, %6752 ], [ %6711, %6701 ]
  %6757 = call float @dx.op.binary.f32(i32 36, float %6756, float %6756)  ; FMin(a,b)
  %6758 = call float @dx.op.binary.f32(i32 36, float %6756, float %6757)  ; FMin(a,b)
  %6759 = fcmp fast ogt float %6758, 0.000000e+00
  br i1 %6759, label %6760, label %6920, !dx.controlflow.hints !116

; <label>:6760                                    ; preds = %6755
  %6761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6762 = extractvalue %dx.types.CBufRet.f32 %6761, 0
  %6763 = extractvalue %dx.types.CBufRet.f32 %6761, 1
  %6764 = extractvalue %dx.types.CBufRet.f32 %6761, 2
  %6765 = extractvalue %dx.types.CBufRet.f32 %6761, 3
  %6766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6767 = extractvalue %dx.types.CBufRet.f32 %6766, 0
  %6768 = extractvalue %dx.types.CBufRet.f32 %6766, 1
  %6769 = extractvalue %dx.types.CBufRet.f32 %6766, 2
  %6770 = extractvalue %dx.types.CBufRet.f32 %6766, 3
  %6771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6772 = extractvalue %dx.types.CBufRet.f32 %6771, 0
  %6773 = extractvalue %dx.types.CBufRet.f32 %6771, 1
  %6774 = extractvalue %dx.types.CBufRet.f32 %6771, 2
  %6775 = extractvalue %dx.types.CBufRet.f32 %6771, 3
  %6776 = fmul fast float %6762, %6127
  %6777 = call float @dx.op.tertiary.f32(i32 46, float %6128, float %6763, float %6776)  ; FMad(a,b,c)
  %6778 = call float @dx.op.tertiary.f32(i32 46, float %6129, float %6764, float %6777)  ; FMad(a,b,c)
  %6779 = fadd fast float %6778, %6765
  %6780 = fmul fast float %6767, %6127
  %6781 = call float @dx.op.tertiary.f32(i32 46, float %6128, float %6768, float %6780)  ; FMad(a,b,c)
  %6782 = call float @dx.op.tertiary.f32(i32 46, float %6129, float %6769, float %6781)  ; FMad(a,b,c)
  %6783 = fadd fast float %6782, %6770
  %6784 = fmul fast float %6772, %6127
  %6785 = call float @dx.op.tertiary.f32(i32 46, float %6128, float %6773, float %6784)  ; FMad(a,b,c)
  %6786 = call float @dx.op.tertiary.f32(i32 46, float %6129, float %6774, float %6785)  ; FMad(a,b,c)
  %6787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6788 = extractvalue %dx.types.CBufRet.f32 %6787, 0
  %6789 = extractvalue %dx.types.CBufRet.f32 %6787, 1
  %6790 = extractvalue %dx.types.CBufRet.f32 %6787, 3
  %6791 = fmul fast float %6790, %6779
  %6792 = fmul fast float %6790, %6783
  %6793 = fadd fast float %6791, %6788
  %6794 = fadd fast float %6792, %6789
  %6795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6796 = extractvalue %dx.types.CBufRet.f32 %6795, 0
  %6797 = extractvalue %dx.types.CBufRet.f32 %6795, 1
  %6798 = fsub fast float %6793, %6796
  %6799 = fsub fast float %6794, %6797
  %6800 = fcmp fast olt float %6798, 0.000000e+00
  %6801 = fcmp fast olt float %6799, 0.000000e+00
  %6802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6803 = extractvalue %dx.types.CBufRet.f32 %6802, 0
  %6804 = extractvalue %dx.types.CBufRet.f32 %6802, 1
  %6805 = extractvalue %dx.types.CBufRet.f32 %6802, 2
  %6806 = extractvalue %dx.types.CBufRet.f32 %6802, 3
  %6807 = select i1 %6800, float %6803, float %6805
  %6808 = select i1 %6801, float %6804, float %6806
  %6809 = fmul fast float %6807, %6798
  %6810 = fmul fast float %6808, %6799
  %6811 = call float @dx.op.unary.f32(i32 6, float %6809)  ; FAbs(value)
  %6812 = call float @dx.op.unary.f32(i32 6, float %6810)  ; FAbs(value)
  %6813 = extractvalue %dx.types.CBufRet.f32 %6122, 0
  %6814 = call float @dx.op.binary.f32(i32 35, float %6811, float %6812)  ; FMax(a,b)
  %6815 = fsub fast float %6813, %6814
  %6816 = call float @dx.op.unary.f32(i32 7, float %6815)  ; Saturate(value)
  %6817 = fcmp fast ogt float %6816, 0.000000e+00
  br i1 %6817, label %6818, label %6859, !dx.controlflow.hints !117

; <label>:6818                                    ; preds = %6760
  %6819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6793, float %6794, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6820 = extractvalue %dx.types.ResRet.f32 %6819, 1
  %6821 = fcmp fast ogt float %6820, 0.000000e+00
  br i1 %6821, label %6822, label %6854

; <label>:6822                                    ; preds = %6818
  %6823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6793, float %6794, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6824 = extractvalue %dx.types.ResRet.f32 %6823, 0
  %6825 = extractvalue %dx.types.ResRet.f32 %6823, 1
  %6826 = extractvalue %dx.types.ResRet.f32 %6823, 2
  %6827 = extractvalue %dx.types.ResRet.f32 %6823, 3
  %6828 = fsub fast float 1.000000e+00, %6775
  %6829 = fsub fast float %6828, %6786
  %6830 = fmul fast float %6829, 0x400921FB60000000
  %6831 = fadd fast float %6830, 0x3FF921FB60000000
  %6832 = call float @dx.op.unary.f32(i32 13, float %6831)  ; Sin(value)
  %6833 = fadd fast float %6832, -1.000000e+00
  %6834 = fmul fast float %6833, 0x3FD45F3060000000
  %6835 = fmul fast float %6829, 0x401921FB60000000
  %6836 = fadd fast float %6835, 0x400921FB60000000
  %6837 = call float @dx.op.unary.f32(i32 13, float %6836)  ; Sin(value)
  %6838 = fadd fast float %6837, 0x3E7777A5C0000000
  %6839 = fmul fast float %6838, 0x3FC45F3060000000
  %6840 = fmul fast float %6829, 0x4022D97C80000000
  %6841 = fadd fast float %6840, 0x4012D97C80000000
  %6842 = call float @dx.op.unary.f32(i32 13, float %6841)  ; Sin(value)
  %6843 = fadd fast float %6842, 1.000000e+00
  %6844 = fmul fast float %6843, 0x3FBB2995E0000000
  %6845 = fmul fast float %6829, 0x402921FB60000000
  %6846 = fadd fast float %6845, 0x401921FB60000000
  %6847 = call float @dx.op.unary.f32(i32 13, float %6846)  ; Sin(value)
  %6848 = fadd fast float %6847, 0xBE8777A5C0000000
  %6849 = fmul fast float %6848, 0x3FB45F3060000000
  %6850 = call float @dx.op.dot4.f32(i32 56, float %6824, float %6825, float %6826, float %6827, float %6834, float %6839, float %6844, float %6849)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6851 = fmul fast float %6850, 0xBFF7154760000000
  %6852 = call float @dx.op.unary.f32(i32 21, float %6851)  ; Exp(value)
  %6853 = call float @dx.op.unary.f32(i32 7, float %6852)  ; Saturate(value)
  br label %6854

; <label>:6854                                    ; preds = %6822, %6818
  %6855 = phi float [ %6853, %6822 ], [ 1.000000e+00, %6818 ]
  %6856 = fadd fast float %6855, -1.000000e+00
  %6857 = fmul fast float %6856, %6816
  %6858 = fadd fast float %6857, 1.000000e+00
  br label %6859

; <label>:6859                                    ; preds = %6854, %6760
  %6860 = phi float [ %6858, %6854 ], [ 1.000000e+00, %6760 ]
  %6861 = fmul fast float %6860, %6756
  %6862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6863 = extractvalue %dx.types.CBufRet.f32 %6862, 0
  %6864 = extractvalue %dx.types.CBufRet.f32 %6862, 1
  %6865 = extractvalue %dx.types.CBufRet.f32 %6862, 2
  %6866 = fadd fast float %6863, %154
  %6867 = fadd fast float %6864, %155
  %6868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6869 = extractvalue %dx.types.CBufRet.f32 %6868, 1
  %6870 = fsub fast float -0.000000e+00, %6866
  %6871 = fsub fast float -0.000000e+00, %6867
  %6872 = fsub fast float %5677, %6865
  %6873 = fadd fast float %6872, %6869
  %6874 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6870, float %6871, float %6873)  ; Dot3(ax,ay,az,bx,by,bz)
  %6875 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6108, float %6109, float %6110)  ; Dot3(ax,ay,az,bx,by,bz)
  %6876 = fdiv fast float 1.000000e+00, %6875
  %6877 = fmul fast float %6876, %6874
  %6878 = fmul fast float %6108, %6877
  %6879 = fmul fast float %6109, %6877
  %6880 = fadd fast float %6878, %6866
  %6881 = fadd fast float %6879, %6867
  %6882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6883 = extractvalue %dx.types.CBufRet.f32 %6882, 0
  %6884 = extractvalue %dx.types.CBufRet.f32 %6882, 1
  %6885 = fsub fast float %6880, %6883
  %6886 = fsub fast float %6881, %6884
  %6887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6888 = extractvalue %dx.types.CBufRet.f32 %6887, 2
  %6889 = extractvalue %dx.types.CBufRet.f32 %6887, 3
  %6890 = fmul fast float %6885, %6888
  %6891 = fmul fast float %6886, %6889
  %6892 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6893 = extractvalue %dx.types.CBufRet.i32 %6892, 3
  %6894 = icmp eq i32 %6893, 0
  br i1 %6894, label %6900, label %6895

; <label>:6895                                    ; preds = %6859
  %6896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6890, float %6891, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6897 = extractvalue %dx.types.ResRet.f32 %6896, 0
  %6898 = extractvalue %dx.types.ResRet.f32 %6896, 1
  %6899 = extractvalue %dx.types.ResRet.f32 %6896, 2
  br label %6905

; <label>:6900                                    ; preds = %6859
  %6901 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6890, float %6891, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6902 = extractvalue %dx.types.ResRet.f32 %6901, 0
  %6903 = extractvalue %dx.types.ResRet.f32 %6901, 1
  %6904 = extractvalue %dx.types.ResRet.f32 %6901, 2
  br label %6905

; <label>:6905                                    ; preds = %6900, %6895
  %6906 = phi float [ %6897, %6895 ], [ %6902, %6900 ]
  %6907 = phi float [ %6898, %6895 ], [ %6903, %6900 ]
  %6908 = phi float [ %6899, %6895 ], [ %6904, %6900 ]
  %6909 = extractvalue %dx.types.CBufRet.f32 %6868, 2
  %6910 = fmul fast float %6909, %6906
  %6911 = extractvalue %dx.types.CBufRet.f32 %6868, 0
  %6912 = fsub fast float %6877, %6911
  %6913 = fsub fast float %6912, %6910
  %6914 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6913)  ; FMax(a,b)
  %6915 = fmul fast float %6914, %6907
  %6916 = call float @dx.op.binary.f32(i32 36, float %6908, float %6915)  ; FMin(a,b)
  %6917 = fmul fast float %6916, 0xBFF7154760000000
  %6918 = call float @dx.op.unary.f32(i32 21, float %6917)  ; Exp(value)
  %6919 = fmul fast float %6861, %6918
  br label %6920

; <label>:6920                                    ; preds = %6905, %6755
  %6921 = phi float [ %6919, %6905 ], [ %6756, %6755 ]
  %6922 = call float @dx.op.binary.f32(i32 36, float %6921, float %6921)  ; FMin(a,b)
  %6923 = call float @dx.op.binary.f32(i32 36, float %6921, float %6922)  ; FMin(a,b)
  %6924 = fcmp fast ogt float %6923, 0.000000e+00
  br i1 %6924, label %6925, label %7311, !dx.controlflow.hints !118

; <label>:6925                                    ; preds = %6920
  %6926 = fmul fast float %6921, %6119
  %6927 = fmul fast float %6921, %6120
  %6928 = fmul fast float %6921, %6121
  %6929 = fsub fast float %156, %5465
  %6930 = fcmp fast ogt float %6929, 0.000000e+00
  %6931 = fmul fast float %6108, 5.120000e+02
  %6932 = fmul fast float %6109, 5.120000e+02
  %6933 = fmul fast float %6110, 5.120000e+02
  %6934 = fadd fast float %6933, %156
  %6935 = fsub fast float %5465, %6934
  %6936 = fmul fast float %6935, 2.000000e+00
  %6937 = fadd fast float %6936, %6934
  %6938 = select i1 %6930, float %6937, float %6934
  %6939 = fsub fast float %6938, %156
  %6940 = call float @dx.op.dot3.f32(i32 55, float %6931, float %6932, float %6939, float %6931, float %6932, float %6939)  ; Dot3(ax,ay,az,bx,by,bz)
  %6941 = call float @dx.op.unary.f32(i32 25, float %6940)  ; Rsqrt(value)
  %6942 = fmul fast float %6941, %6931
  %6943 = fmul fast float %6941, %6932
  %6944 = fmul fast float %6941, %6939
  %6945 = fsub fast float %5465, %156
  %6946 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6945)  ; Dot3(ax,ay,az,bx,by,bz)
  %6947 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6942, float %6943, float %6944)  ; Dot3(ax,ay,az,bx,by,bz)
  %6948 = fdiv fast float 1.000000e+00, %6947
  %6949 = fmul fast float %6948, %6946
  %6950 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6929, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6951 = fcmp fast ogt float %6950, 0.000000e+00
  %6952 = fcmp fast olt float %6950, 0.000000e+00
  %6953 = zext i1 %6951 to i32
  %6954 = zext i1 %6952 to i32
  %6955 = sub nsw i32 %6953, %6954
  %6956 = sitofp i32 %6955 to float
  %6957 = fsub fast float %6938, %5465
  %6958 = call float @dx.op.dot3.f32(i32 55, float %6931, float %6932, float %6957, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6959 = fcmp fast ogt float %6958, 0.000000e+00
  %6960 = fcmp fast olt float %6958, 0.000000e+00
  %6961 = zext i1 %6959 to i32
  %6962 = zext i1 %6960 to i32
  %6963 = sub nsw i32 %6961, %6962
  %6964 = sitofp i32 %6963 to float
  %6965 = fcmp fast une float %6956, %6964
  br i1 %6965, label %6966, label %6976

; <label>:6966                                    ; preds = %6925
  %6967 = fmul fast float %6949, %6944
  %6968 = fmul fast float %6949, %6943
  %6969 = fmul fast float %6949, %6942
  %6970 = fmul fast float %6969, %6969
  %6971 = fmul fast float %6968, %6968
  %6972 = fadd fast float %6970, %6971
  %6973 = fmul fast float %6967, %6967
  %6974 = fadd fast float %6972, %6973
  %6975 = call float @dx.op.unary.f32(i32 24, float %6974)  ; Sqrt(value)
  br label %6986

; <label>:6976                                    ; preds = %6925
  %6977 = icmp slt i32 %6955, 0
  br i1 %6977, label %6978, label %6986

; <label>:6978                                    ; preds = %6976
  %6979 = fsub fast float %156, %6938
  %6980 = fmul fast float %6931, %6931
  %6981 = fmul fast float %6932, %6932
  %6982 = fadd fast float %6980, %6981
  %6983 = fmul fast float %6979, %6979
  %6984 = fadd fast float %6982, %6983
  %6985 = call float @dx.op.unary.f32(i32 24, float %6984)  ; Sqrt(value)
  br label %6986

; <label>:6986                                    ; preds = %6978, %6976, %6966
  %6987 = phi float [ %6975, %6966 ], [ %6985, %6978 ], [ 0.000000e+00, %6976 ]
  %6988 = fsub fast float -0.000000e+00, %6987
  %6989 = select i1 %6930, float -0.000000e+00, float %6988
  %6990 = fmul fast float %5466, 0x3FF7154760000000
  %6991 = fmul fast float %6990, %6989
  %6992 = fmul fast float %5467, 0x3FF7154760000000
  %6993 = fmul fast float %6992, %6989
  %6994 = fmul fast float %5468, 0x3FF7154760000000
  %6995 = fmul fast float %6994, %6989
  %6996 = call float @dx.op.unary.f32(i32 21, float %6991)  ; Exp(value)
  %6997 = call float @dx.op.unary.f32(i32 21, float %6993)  ; Exp(value)
  %6998 = call float @dx.op.unary.f32(i32 21, float %6995)  ; Exp(value)
  %6999 = call float @dx.op.unary.f32(i32 7, float %6996)  ; Saturate(value)
  %7000 = call float @dx.op.unary.f32(i32 7, float %6997)  ; Saturate(value)
  %7001 = call float @dx.op.unary.f32(i32 7, float %6998)  ; Saturate(value)
  %7002 = fmul fast float %6926, %6999
  %7003 = fmul fast float %6927, %7000
  %7004 = fmul fast float %6928, %7001
  %7005 = fsub fast float %6108, %5665
  %7006 = fsub fast float %6109, %5664
  %7007 = fsub fast float %6110, %5663
  %7008 = call float @dx.op.dot3.f32(i32 55, float %7005, float %7006, float %7007, float %7005, float %7006, float %7007)  ; Dot3(ax,ay,az,bx,by,bz)
  %7009 = call float @dx.op.unary.f32(i32 25, float %7008)  ; Rsqrt(value)
  %7010 = fmul fast float %7009, %7005
  %7011 = fmul fast float %7009, %7006
  %7012 = fmul fast float %7009, %7007
  %7013 = call float @dx.op.dot3.f32(i32 55, float %6108, float %6109, float %6110, float %5672, float %5673, float %5674)  ; Dot3(ax,ay,az,bx,by,bz)
  %7014 = call float @dx.op.dot3.f32(i32 55, float %5662, float %5661, float %5660, float %7010, float %7011, float %7012)  ; Dot3(ax,ay,az,bx,by,bz)
  %7015 = call float @dx.op.unary.f32(i32 7, float %7013)  ; Saturate(value)
  %7016 = fmul fast float %7015, %7015
  %7017 = fmul fast float %7016, %5693
  %7018 = call float @dx.op.unary.f32(i32 7, float %7017)  ; Saturate(value)
  %7019 = fmul fast float %7018, %7015
  %7020 = call float @dx.op.dot3.f32(i32 55, float %5672, float %5673, float %5674, float %7010, float %7011, float %7012)  ; Dot3(ax,ay,az,bx,by,bz)
  %7021 = fmul fast float %7020, %7020
  %7022 = call float @dx.op.unary.f32(i32 6, float %7013)  ; FAbs(value)
  %7023 = call float @dx.op.binary.f32(i32 35, float %6076, float 0x3F847AE140000000)  ; FMax(a,b)
  %7024 = fmul fast float %7023, %7023
  %7025 = fmul fast float %7024, %7024
  %7026 = fsub fast float 1.000000e+00, %7025
  %7027 = fmul fast float %5680, %5680
  %7028 = fmul fast float %7027, %7026
  %7029 = fadd fast float %7028, %7025
  %7030 = bitcast float %7029 to i32
  %7031 = ashr i32 %7030, 1
  %7032 = add nsw i32 %7031, 532487669
  %7033 = bitcast i32 %7032 to float
  %7034 = fadd fast float %7033, %5680
  %7035 = fmul fast float %7025, %7021
  %7036 = fsub fast float 1.000000e+00, %7021
  %7037 = fadd fast float %7036, %7035
  %7038 = fmul fast float %7022, %7022
  %7039 = fmul fast float %7038, %7026
  %7040 = fadd fast float %7039, %7025
  %7041 = bitcast float %7040 to i32
  %7042 = ashr i32 %7041, 1
  %7043 = add nsw i32 %7042, 532487669
  %7044 = bitcast i32 %7043 to float
  %7045 = fadd fast float %7044, %7022
  %7046 = fmul fast float %7037, %7037
  %7047 = fmul fast float %7046, %7034
  %7048 = fmul fast float %7047, %7045
  %7049 = fdiv fast float 0x3FF0A00000000000, %7048
  %7050 = fmul fast float %7049, %7025
  %7051 = fmul fast float %5938, 0x3FF9999980000000
  %7052 = fsub fast float 5.000000e+00, %7051
  %7053 = call float @dx.op.unary.f32(i32 6, float %7014)  ; FAbs(value)
  %7054 = fsub fast float 1.000000e+00, %7053
  %7055 = fmul fast float %5938, 0x41D9660740000000
  %7056 = fadd fast float %7055, 0xC1EFBF8940000000
  %7057 = bitcast float %7054 to i32
  %7058 = sitofp i32 %7057 to float
  %7059 = fmul fast float %7058, %7052
  %7060 = fadd fast float %7056, %7059
  %7061 = fptosi float %7060 to i32
  %7062 = bitcast i32 %7061 to float
  %7063 = fsub fast float 1.000000e+00, %5669
  %7064 = fsub fast float 1.000000e+00, %5670
  %7065 = fsub fast float 1.000000e+00, %5678
  %7066 = fmul fast float %7062, %7063
  %7067 = fmul fast float %7062, %7064
  %7068 = fmul fast float %7062, %7065
  %7069 = fadd fast float %7066, %5669
  %7070 = fadd fast float %7067, %5670
  %7071 = fadd fast float %7068, %5678
  br i1 %5961, label %7072, label %7095

; <label>:7072                                    ; preds = %6986
  %7073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5011, float %7053, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7074 = extractvalue %dx.types.ResRet.f32 %7073, 0
  %7075 = extractvalue %dx.types.ResRet.f32 %7073, 1
  %7076 = extractvalue %dx.types.ResRet.f32 %7073, 2
  %7077 = fadd fast float %7074, -5.000000e-01
  %7078 = fadd fast float %7075, -5.000000e-01
  %7079 = fadd fast float %7076, -5.000000e-01
  %7080 = fmul fast float %5669, 4.000000e+00
  %7081 = fmul fast float %7080, %7063
  %7082 = fmul fast float %7081, %7077
  %7083 = fmul fast float %5670, 4.000000e+00
  %7084 = fmul fast float %7083, %7064
  %7085 = fmul fast float %7084, %7078
  %7086 = fmul fast float %5678, 4.000000e+00
  %7087 = fmul fast float %7086, %7065
  %7088 = fmul fast float %7087, %7079
  %7089 = fadd fast float %7082, %7069
  %7090 = fadd fast float %7085, %7070
  %7091 = fadd fast float %7088, %7071
  %7092 = call float @dx.op.unary.f32(i32 7, float %7089)  ; Saturate(value)
  %7093 = call float @dx.op.unary.f32(i32 7, float %7090)  ; Saturate(value)
  %7094 = call float @dx.op.unary.f32(i32 7, float %7091)  ; Saturate(value)
  br label %7095

; <label>:7095                                    ; preds = %7072, %6986
  %7096 = phi float [ %7092, %7072 ], [ %7069, %6986 ]
  %7097 = phi float [ %7093, %7072 ], [ %7070, %6986 ]
  %7098 = phi float [ %7094, %7072 ], [ %7071, %6986 ]
  %7099 = fmul fast float %7013, 9.843750e-01
  %7100 = fadd fast float %7099, 7.812500e-03
  %7101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7100, float %5942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7102 = extractvalue %dx.types.ResRet.f32 %7101, 0
  %7103 = extractvalue %dx.types.ResRet.f32 %7101, 1
  %7104 = extractvalue %dx.types.ResRet.f32 %7101, 2
  %7105 = extractvalue %dx.types.ResRet.f32 %7101, 3
  %7106 = fsub fast float %7104, %7102
  %7107 = fsub fast float %7105, %7103
  %7108 = fmul fast float %7106, %5948
  %7109 = fmul fast float %7107, %5948
  %7110 = fadd fast float %7108, %7102
  %7111 = fadd fast float %7109, %7103
  %7112 = fmul fast float %7110, %5669
  %7113 = fmul fast float %7110, %5670
  %7114 = fmul fast float %7110, %5678
  %7115 = fadd fast float %7112, %7111
  %7116 = fadd fast float %7113, %7111
  %7117 = fadd fast float %7114, %7111
  br i1 %5961, label %7118, label %7141

; <label>:7118                                    ; preds = %7095
  %7119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5011, float %7013, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7120 = extractvalue %dx.types.ResRet.f32 %7119, 0
  %7121 = extractvalue %dx.types.ResRet.f32 %7119, 1
  %7122 = extractvalue %dx.types.ResRet.f32 %7119, 2
  %7123 = fadd fast float %7120, -5.000000e-01
  %7124 = fadd fast float %7121, -5.000000e-01
  %7125 = fadd fast float %7122, -5.000000e-01
  %7126 = fmul fast float %5669, 4.000000e+00
  %7127 = fmul fast float %7126, %7063
  %7128 = fmul fast float %7127, %7123
  %7129 = fmul fast float %5670, 4.000000e+00
  %7130 = fmul fast float %7129, %7064
  %7131 = fmul fast float %7130, %7124
  %7132 = fmul fast float %5678, 4.000000e+00
  %7133 = fmul fast float %7132, %7065
  %7134 = fmul fast float %7133, %7125
  %7135 = fadd fast float %7128, %7115
  %7136 = fadd fast float %7131, %7116
  %7137 = fadd fast float %7134, %7117
  %7138 = call float @dx.op.unary.f32(i32 7, float %7135)  ; Saturate(value)
  %7139 = call float @dx.op.unary.f32(i32 7, float %7136)  ; Saturate(value)
  %7140 = call float @dx.op.unary.f32(i32 7, float %7137)  ; Saturate(value)
  br label %7141

; <label>:7141                                    ; preds = %7118, %7095
  %7142 = phi float [ %7138, %7118 ], [ %7115, %7095 ]
  %7143 = phi float [ %7139, %7118 ], [ %7116, %7095 ]
  %7144 = phi float [ %7140, %7118 ], [ %7117, %7095 ]
  %7145 = call float @dx.op.binary.f32(i32 35, float %7143, float %7144)  ; FMax(a,b)
  %7146 = call float @dx.op.binary.f32(i32 35, float %7142, float %7145)  ; FMax(a,b)
  %7147 = fsub fast float 1.000000e+00, %7146
  %7148 = call float @dx.op.binary.f32(i32 35, float %7022, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7149 = fdiv fast float %4417, %7148
  %7150 = fmul fast float %6016, %7149
  %7151 = fmul fast float %6018, %7149
  %7152 = fmul fast float %6020, %7149
  %7153 = call float @dx.op.unary.f32(i32 21, float %7150)  ; Exp(value)
  %7154 = call float @dx.op.unary.f32(i32 21, float %7151)  ; Exp(value)
  %7155 = call float @dx.op.unary.f32(i32 21, float %7152)  ; Exp(value)
  %7156 = call float @dx.op.unary.f32(i32 7, float %7153)  ; Saturate(value)
  %7157 = call float @dx.op.unary.f32(i32 7, float %7154)  ; Saturate(value)
  %7158 = call float @dx.op.unary.f32(i32 7, float %7155)  ; Saturate(value)
  %7159 = select i1 %6013, float %7156, float 0.000000e+00
  %7160 = select i1 %6014, float %7157, float 0.000000e+00
  %7161 = select i1 %6015, float %7158, float 0.000000e+00
  %7162 = fsub fast float -0.000000e+00, %5672
  %7163 = fsub fast float -0.000000e+00, %5673
  %7164 = fsub fast float -0.000000e+00, %5674
  %7165 = call float @dx.op.dot3.f32(i32 55, float %6108, float %6109, float %6110, float %7162, float %7163, float %7164)  ; Dot3(ax,ay,az,bx,by,bz)
  %7166 = call float @dx.op.unary.f32(i32 7, float %7165)  ; Saturate(value)
  %7167 = fmul fast float %7166, 9.843750e-01
  %7168 = fadd fast float %7167, 7.812500e-03
  %7169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7168, float %5942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7170 = extractvalue %dx.types.ResRet.f32 %7169, 0
  %7171 = extractvalue %dx.types.ResRet.f32 %7169, 1
  %7172 = extractvalue %dx.types.ResRet.f32 %7169, 2
  %7173 = extractvalue %dx.types.ResRet.f32 %7169, 3
  %7174 = fsub fast float %7172, %7170
  %7175 = fsub fast float %7173, %7171
  %7176 = fmul fast float %7174, %5948
  %7177 = fmul fast float %7175, %5948
  %7178 = fadd fast float %7176, %7170
  %7179 = fadd fast float %7177, %7171
  %7180 = fmul fast float %7178, %5669
  %7181 = fmul fast float %7178, %5670
  %7182 = fmul fast float %7178, %5678
  %7183 = fadd fast float %7180, %7179
  %7184 = fadd fast float %7181, %7179
  %7185 = fadd fast float %7182, %7179
  br i1 %5961, label %7186, label %7209

; <label>:7186                                    ; preds = %7141
  %7187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5011, float %7166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7188 = extractvalue %dx.types.ResRet.f32 %7187, 0
  %7189 = extractvalue %dx.types.ResRet.f32 %7187, 1
  %7190 = extractvalue %dx.types.ResRet.f32 %7187, 2
  %7191 = fadd fast float %7188, -5.000000e-01
  %7192 = fadd fast float %7189, -5.000000e-01
  %7193 = fadd fast float %7190, -5.000000e-01
  %7194 = fmul fast float %5669, 4.000000e+00
  %7195 = fmul fast float %7194, %7063
  %7196 = fmul fast float %7195, %7191
  %7197 = fmul fast float %5670, 4.000000e+00
  %7198 = fmul fast float %7197, %7064
  %7199 = fmul fast float %7198, %7192
  %7200 = fmul fast float %5678, 4.000000e+00
  %7201 = fmul fast float %7200, %7065
  %7202 = fmul fast float %7201, %7193
  %7203 = fadd fast float %7196, %7183
  %7204 = fadd fast float %7199, %7184
  %7205 = fadd fast float %7202, %7185
  %7206 = call float @dx.op.unary.f32(i32 7, float %7203)  ; Saturate(value)
  %7207 = call float @dx.op.unary.f32(i32 7, float %7204)  ; Saturate(value)
  %7208 = call float @dx.op.unary.f32(i32 7, float %7205)  ; Saturate(value)
  br label %7209

; <label>:7209                                    ; preds = %7186, %7141
  %7210 = phi float [ %7206, %7186 ], [ %7183, %7141 ]
  %7211 = phi float [ %7207, %7186 ], [ %7184, %7141 ]
  %7212 = phi float [ %7208, %7186 ], [ %7185, %7141 ]
  %7213 = call float @dx.op.binary.f32(i32 35, float %7211, float %7212)  ; FMax(a,b)
  %7214 = call float @dx.op.binary.f32(i32 35, float %7210, float %7213)  ; FMax(a,b)
  %7215 = fsub fast float 1.000000e+00, %7214
  %7216 = fmul fast float %6076, %6081
  %7217 = fadd fast float %6083, %7216
  %7218 = call float @dx.op.unary.f32(i32 7, float %7217)  ; Saturate(value)
  %7219 = fsub fast float %6108, %5686
  %7220 = fsub fast float %6109, %5687
  %7221 = fsub fast float %6110, %5688
  %7222 = call float @dx.op.dot3.f32(i32 55, float %7219, float %7220, float %7221, float %7219, float %7220, float %7221)  ; Dot3(ax,ay,az,bx,by,bz)
  %7223 = call float @dx.op.unary.f32(i32 25, float %7222)  ; Rsqrt(value)
  %7224 = fmul fast float %7223, %7219
  %7225 = fmul fast float %7223, %7220
  %7226 = fmul fast float %7223, %7221
  %7227 = call float @dx.op.dot3.f32(i32 55, float %7162, float %7163, float %7164, float %7224, float %7225, float %7226)  ; Dot3(ax,ay,az,bx,by,bz)
  %7228 = fmul fast float %7227, %7227
  %7229 = call float @dx.op.unary.f32(i32 6, float %7166)  ; FAbs(value)
  %7230 = call float @dx.op.binary.f32(i32 35, float %7218, float 0x3F847AE140000000)  ; FMax(a,b)
  %7231 = fmul fast float %7230, %7230
  %7232 = fmul fast float %7231, %7231
  %7233 = fsub fast float 1.000000e+00, %7232
  %7234 = fmul fast float %7027, %7233
  %7235 = fadd fast float %7234, %7232
  %7236 = bitcast float %7235 to i32
  %7237 = ashr i32 %7236, 1
  %7238 = add nsw i32 %7237, 532487669
  %7239 = bitcast i32 %7238 to float
  %7240 = fadd fast float %7239, %5680
  %7241 = fmul fast float %7232, %7228
  %7242 = fsub fast float 1.000000e+00, %7228
  %7243 = fadd fast float %7242, %7241
  %7244 = fmul fast float %7229, %7229
  %7245 = fmul fast float %7244, %7233
  %7246 = fadd fast float %7245, %7232
  %7247 = bitcast float %7246 to i32
  %7248 = ashr i32 %7247, 1
  %7249 = add nsw i32 %7248, 532487669
  %7250 = bitcast i32 %7249 to float
  %7251 = fadd fast float %7250, %7229
  %7252 = fmul fast float %7243, %7243
  %7253 = fmul fast float %7252, %7240
  %7254 = fmul fast float %7253, %7251
  %7255 = fdiv fast float 0x3FF0A00000000000, %7254
  %7256 = fmul fast float %7255, %7232
  %7257 = fmul fast float %7166, %7159
  %7258 = fmul fast float %7166, %7160
  %7259 = fmul fast float %7166, %7161
  %7260 = fmul fast float %7257, %7215
  %7261 = fmul fast float %7260, %7256
  %7262 = fmul fast float %7258, %7215
  %7263 = fmul fast float %7262, %7256
  %7264 = fmul fast float %7259, %7215
  %7265 = fmul fast float %7264, %7256
  %7266 = fmul fast float %7096, %7050
  %7267 = fmul fast float %7097, %7050
  %7268 = fmul fast float %7098, %7050
  %7269 = fsub fast float 1.000000e+00, %7014
  %7270 = bitcast float %7269 to i32
  %7271 = sitofp i32 %7270 to float
  %7272 = fmul fast float %7271, 5.000000e+00
  %7273 = fadd fast float %7272, 0xC1EFBF8940000000
  %7274 = fptosi float %7273 to i32
  %7275 = bitcast i32 %7274 to float
  %7276 = fmul fast float %7275, %5010
  %7277 = fmul fast float %7147, %7276
  %7278 = fmul fast float %7277, %6008
  %7279 = fmul fast float %7277, %6009
  %7280 = fmul fast float %7277, %6010
  %7281 = fadd fast float %7278, %7266
  %7282 = fadd fast float %7279, %7267
  %7283 = fadd fast float %7280, %7268
  %7284 = fmul fast float %7281, %7019
  %7285 = fmul fast float %7282, %7019
  %7286 = fmul fast float %7283, %7019
  %7287 = fmul fast float %7019, %7002
  %7288 = fmul fast float %7287, %7147
  %7289 = fmul fast float %7019, %7003
  %7290 = fmul fast float %7289, %7147
  %7291 = fmul fast float %7019, %7004
  %7292 = fmul fast float %7291, %7147
  %7293 = fadd fast float %7284, %7261
  %7294 = fadd fast float %7285, %7263
  %7295 = fadd fast float %7286, %7265
  %7296 = fmul fast float %7293, %7002
  %7297 = fmul fast float %7294, %7003
  %7298 = fmul fast float %7295, %7004
  %7299 = fadd fast float %7288, %6098
  %7300 = fmul fast float %7299, %5034
  %7301 = fadd fast float %7290, %6100
  %7302 = fmul fast float %7301, %5034
  %7303 = fadd fast float %7292, %6102
  %7304 = fmul fast float %7303, %5034
  %7305 = fadd fast float %7296, %6061
  %7306 = fmul fast float %7305, %5034
  %7307 = fadd fast float %7297, %6064
  %7308 = fmul fast float %7307, %5034
  %7309 = fadd fast float %7298, %6067
  %7310 = fmul fast float %7309, %5034
  br label %7311

; <label>:7311                                    ; preds = %7209, %6920, %5988
  %7312 = phi float [ %6062, %5988 ], [ %6062, %6920 ], [ %7306, %7209 ]
  %7313 = phi float [ %6065, %5988 ], [ %6065, %6920 ], [ %7308, %7209 ]
  %7314 = phi float [ %6068, %5988 ], [ %6068, %6920 ], [ %7310, %7209 ]
  %7315 = phi float [ %6099, %5988 ], [ %6099, %6920 ], [ %7300, %7209 ]
  %7316 = phi float [ %6101, %5988 ], [ %6101, %6920 ], [ %7302, %7209 ]
  %7317 = phi float [ %6103, %5988 ], [ %6103, %6920 ], [ %7304, %7209 ]
  %7318 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7319 = extractvalue %dx.types.CBufRet.i32 %7318, 0
  %7320 = icmp eq i32 %7319, 0
  br i1 %7320, label %8095, label %7321

; <label>:7321                                    ; preds = %7311
  %7322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7323 = extractvalue %dx.types.CBufRet.f32 %7322, 2
  %7324 = extractvalue %dx.types.CBufRet.f32 %7322, 3
  %7325 = fmul fast float %7323, %99
  %7326 = fmul fast float %7324, %100
  %7327 = fptoui float %7325 to i32
  %7328 = fptoui float %7326 to i32
  %7329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7330 = extractvalue %dx.types.CBufRet.f32 %7329, 0
  %7331 = extractvalue %dx.types.CBufRet.f32 %7329, 2
  %7332 = extractvalue %dx.types.CBufRet.f32 %7329, 3
  %7333 = fadd fast float %90, -4.000000e+00
  %7334 = call float @dx.op.binary.f32(i32 35, float %7333, float 0.000000e+00)  ; FMax(a,b)
  %7335 = fadd fast float %7334, %7330
  %7336 = fmul fast float %7335, %7331
  %7337 = call float @dx.op.unary.f32(i32 23, float %7336)  ; Log(value)
  %7338 = fmul fast float %7337, %7332
  %7339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7340 = extractvalue %dx.types.CBufRet.f32 %7339, 2
  %7341 = fmul fast float %7338, %7340
  %7342 = call float @dx.op.unary.f32(i32 7, float %7341)  ; Saturate(value)
  %7343 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7344 = extractvalue %dx.types.CBufRet.i32 %7343, 1
  %7345 = add i32 %7344, -1
  %7346 = uitofp i32 %7344 to float
  %7347 = fmul fast float %7346, %7342
  %7348 = fptoui float %7347 to i32
  %7349 = call i32 @dx.op.binary.i32(i32 40, i32 %7348, i32 %7345)  ; UMin(a,b)
  %7350 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7351 = extractvalue %dx.types.CBufRet.i32 %7350, 2
  %7352 = extractvalue %dx.types.CBufRet.i32 %7350, 3
  %7353 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7328, i32 %7351, i32 %7327)  ; UMad(a,b,c)
  %7354 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7349, i32 %7352, i32 %7353)  ; UMad(a,b,c)
  %7355 = add nsw i32 %7319, -1
  %7356 = call i32 @dx.op.binary.i32(i32 37, i32 %7355, i32 0)  ; IMax(a,b)
  %7357 = call float @dx.op.binary.f32(i32 35, float %90, float 0.000000e+00)  ; FMax(a,b)
  %7358 = fptoui float %7357 to i32
  %7359 = lshr i32 %7358, 5
  %7360 = call i32 @dx.op.binary.i32(i32 40, i32 %7359, i32 8191)  ; UMin(a,b)
  %7361 = shl i32 %7360, 2
  %7362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7361, i32 undef)  ; BufferLoad(srv,index,wot)
  %7363 = extractvalue %dx.types.ResRet.i32 %7362, 0
  %7364 = lshr i32 %7363, 16
  %7365 = and i32 %7363, 65535
  %7366 = lshr i32 %7363, 21
  %7367 = lshr i32 %7365, 5
  %7368 = call i32 @dx.op.binary.i32(i32 40, i32 %7367, i32 %7356)  ; UMin(a,b)
  %7369 = icmp ugt i32 %7366, %7368
  br i1 %7369, label %8095, label %7370

; <label>:7370                                    ; preds = %7321
  br label %7371

; <label>:7371                                    ; preds = %8085, %7370
  %7372 = phi i32 [ %8092, %8085 ], [ %7366, %7370 ]
  %7373 = phi float [ %8086, %8085 ], [ %7312, %7370 ]
  %7374 = phi float [ %8087, %8085 ], [ %7313, %7370 ]
  %7375 = phi float [ %8088, %8085 ], [ %7314, %7370 ]
  %7376 = phi float [ %8089, %8085 ], [ %7315, %7370 ]
  %7377 = phi float [ %8090, %8085 ], [ %7316, %7370 ]
  %7378 = phi float [ %8091, %8085 ], [ %7317, %7370 ]
  %7379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7380 = extractvalue %dx.types.CBufRet.i32 %7379, 0
  %7381 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7354, i32 %7380, i32 %7372)  ; UMad(a,b,c)
  %7382 = shl i32 %7381, 2
  %7383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7382, i32 undef)  ; BufferLoad(srv,index,wot)
  %7384 = extractvalue %dx.types.ResRet.i32 %7383, 0
  %7385 = shl i32 %7372, 5
  %7386 = sub nsw i32 %7364, %7385
  %7387 = call i32 @dx.op.binary.i32(i32 37, i32 %7386, i32 0)  ; IMax(a,b)
  %7388 = call i32 @dx.op.binary.i32(i32 38, i32 %7387, i32 31)  ; IMin(a,b)
  %7389 = sub nsw i32 1, %7364
  %7390 = add nsw i32 %7389, %7365
  %7391 = call i32 @dx.op.binary.i32(i32 37, i32 %7390, i32 0)  ; IMax(a,b)
  %7392 = call i32 @dx.op.binary.i32(i32 38, i32 %7391, i32 32)  ; IMin(a,b)
  %7393 = and i32 %7392, 31
  %7394 = shl i32 -1, %7393
  %7395 = xor i32 %7394, -1
  %7396 = and i32 %7388, 31
  %7397 = shl i32 %7395, %7396
  %7398 = icmp eq i32 %7392, 32
  %7399 = select i1 %7398, i32 -1, i32 %7397
  %7400 = and i32 %7399, %7384
  %7401 = icmp eq i32 %7400, 0
  br i1 %7401, label %8085, label %7402

; <label>:7402                                    ; preds = %7371
  br label %7403

; <label>:7403                                    ; preds = %7538, %7402
  %7404 = phi i32 [ %7415, %7538 ], [ %7400, %7402 ]
  %7405 = phi float [ %7539, %7538 ], [ %7373, %7402 ]
  %7406 = phi float [ %7540, %7538 ], [ %7374, %7402 ]
  %7407 = phi float [ %7541, %7538 ], [ %7375, %7402 ]
  %7408 = phi float [ %7542, %7538 ], [ %7376, %7402 ]
  %7409 = phi float [ %7543, %7538 ], [ %7377, %7402 ]
  %7410 = phi float [ %7544, %7538 ], [ %7378, %7402 ]
  %7411 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7404)  ; FirstbitLo(value)
  %7412 = add i32 %7411, %7385
  %7413 = and i32 %7411, 31
  %7414 = shl i32 1, %7413
  %7415 = xor i32 %7414, %7404
  %7416 = mul i32 %7412, 112
  %7417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7416, i32 undef)  ; BufferLoad(srv,index,wot)
  %7418 = extractvalue %dx.types.ResRet.f32 %7417, 0
  %7419 = extractvalue %dx.types.ResRet.f32 %7417, 1
  %7420 = extractvalue %dx.types.ResRet.f32 %7417, 2
  %7421 = or i32 %7416, 12
  %7422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7421, i32 undef)  ; BufferLoad(srv,index,wot)
  %7423 = extractvalue %dx.types.ResRet.f32 %7422, 0
  %7424 = add i32 %7416, 16
  %7425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7424, i32 undef)  ; BufferLoad(srv,index,wot)
  %7426 = extractvalue %dx.types.ResRet.f32 %7425, 0
  %7427 = extractvalue %dx.types.ResRet.f32 %7425, 1
  %7428 = extractvalue %dx.types.ResRet.f32 %7425, 2
  %7429 = add i32 %7416, 28
  %7430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7429, i32 undef)  ; BufferLoad(srv,index,wot)
  %7431 = extractvalue %dx.types.ResRet.i32 %7430, 0
  %7432 = add i32 %7416, 44
  %7433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7432, i32 undef)  ; BufferLoad(srv,index,wot)
  %7434 = extractvalue %dx.types.ResRet.f32 %7433, 0
  %7435 = add i32 %7416, 48
  %7436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7435, i32 undef)  ; BufferLoad(srv,index,wot)
  %7437 = extractvalue %dx.types.ResRet.f32 %7436, 0
  %7438 = extractvalue %dx.types.ResRet.f32 %7436, 1
  %7439 = extractvalue %dx.types.ResRet.f32 %7436, 2
  %7440 = extractvalue %dx.types.ResRet.f32 %7436, 3
  %7441 = add i32 %7416, 64
  %7442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7441, i32 undef)  ; BufferLoad(srv,index,wot)
  %7443 = extractvalue %dx.types.ResRet.f32 %7442, 0
  %7444 = extractvalue %dx.types.ResRet.f32 %7442, 1
  %7445 = extractvalue %dx.types.ResRet.f32 %7442, 2
  %7446 = extractvalue %dx.types.ResRet.f32 %7442, 3
  %7447 = add i32 %7416, 80
  %7448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7447, i32 undef)  ; BufferLoad(srv,index,wot)
  %7449 = extractvalue %dx.types.ResRet.f32 %7448, 1
  %7450 = extractvalue %dx.types.ResRet.f32 %7448, 2
  %7451 = add i32 %7416, 92
  %7452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7451, i32 undef)  ; BufferLoad(srv,index,wot)
  %7453 = extractvalue %dx.types.ResRet.i32 %7452, 0
  %7454 = call float @dx.op.dot3.f32(i32 55, float %7418, float %7419, float %7420, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7455 = select i1 %216, float %7449, float %7418
  %7456 = select i1 %216, float %7454, float %7419
  %7457 = select i1 %216, float %7450, float %7420
  %7458 = and i32 %7453, 65535
  %7459 = uitofp i32 %7458 to float
  %7460 = lshr i32 %7453, 16
  %7461 = uitofp i32 %7460 to float
  %7462 = and i32 %7431, 65535
  %7463 = and i32 %7431, 50331648
  %7464 = icmp slt i32 %7431, 0
  %7465 = icmp eq i32 %7463, 33554432
  %7466 = fsub fast float %7437, %154
  %7467 = fsub fast float %7438, %155
  %7468 = fsub fast float %7439, %156
  %7469 = call float @dx.op.dot3.f32(i32 55, float %7466, float %7467, float %7468, float %7466, float %7467, float %7468)  ; Dot3(ax,ay,az,bx,by,bz)
  %7470 = call float @dx.op.unary.f32(i32 24, float %7469)  ; Sqrt(value)
  %7471 = fdiv fast float 1.000000e+00, %7470
  %7472 = fmul fast float %7471, %7466
  %7473 = fmul fast float %7471, %7467
  %7474 = fmul fast float %7471, %7468
  %7475 = fadd fast float %7470, %7423
  %7476 = fdiv fast float 1.000000e+00, %7475
  %7477 = fmul float %7434, %7476
  %7478 = fmul float %7477, %7477
  %7479 = call float @dx.op.unary.f32(i32 7, float %7478)  ; Saturate(value)
  br i1 %7465, label %7480, label %7501

; <label>:7480                                    ; preds = %7403
  %7481 = fmul fast float %7445, %7426
  %7482 = fmul fast float %7445, %7427
  %7483 = fmul fast float %7445, %7428
  %7484 = fadd fast float %7466, %7481
  %7485 = fadd fast float %7467, %7482
  %7486 = fadd fast float %7468, %7483
  %7487 = call float @dx.op.dot3.f32(i32 55, float %7484, float %7485, float %7486, float %7484, float %7485, float %7486)  ; Dot3(ax,ay,az,bx,by,bz)
  %7488 = call float @dx.op.unary.f32(i32 25, float %7487)  ; Rsqrt(value)
  %7489 = fmul fast float %7488, %7484
  %7490 = fmul fast float %7488, %7485
  %7491 = fmul fast float %7488, %7486
  %7492 = fsub fast float %154, %7437
  %7493 = fsub fast float %155, %7438
  %7494 = fsub fast float %156, %7439
  %7495 = fsub fast float -0.000000e+00, %7492
  %7496 = fsub fast float -0.000000e+00, %7493
  %7497 = fsub fast float -0.000000e+00, %7494
  %7498 = call float @dx.op.dot3.f32(i32 55, float %7495, float %7496, float %7497, float %7426, float %7427, float %7428)  ; Dot3(ax,ay,az,bx,by,bz)
  %7499 = fcmp fast ogt float %7498, 0.000000e+00
  %7500 = uitofp i1 %7499 to float
  br label %7501

; <label>:7501                                    ; preds = %7480, %7403
  %7502 = phi float [ %7500, %7480 ], [ 1.000000e+00, %7403 ]
  %7503 = phi float [ %7489, %7480 ], [ %7472, %7403 ]
  %7504 = phi float [ %7490, %7480 ], [ %7473, %7403 ]
  %7505 = phi float [ %7491, %7480 ], [ %7474, %7403 ]
  %7506 = call float @dx.op.dot3.f32(i32 55, float %7426, float %7427, float %7428, float %7503, float %7504, float %7505)  ; Dot3(ax,ay,az,bx,by,bz)
  %7507 = fmul fast float %7506, %7506
  %7508 = call float @dx.op.unary.f32(i32 7, float %7507)  ; Saturate(value)
  %7509 = fsub fast float 1.000000e+00, %7508
  %7510 = fmul fast float %7509, 5.000000e-01
  %7511 = fcmp fast ogt float %7506, 0.000000e+00
  %7512 = fsub fast float 1.000000e+00, %7510
  %7513 = select i1 %7511, float %7510, float %7512
  %7514 = fmul fast float %7513, %7461
  %7515 = fadd fast float %7514, %7459
  %7516 = fmul fast float %7515, 0x3EF0001000000000
  %7517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %7516, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7518 = extractvalue %dx.types.ResRet.f32 %7517, 0
  %7519 = fmul fast float %7506, %7443
  %7520 = fadd fast float %7519, %7444
  %7521 = call float @dx.op.unary.f32(i32 7, float %7520)  ; Saturate(value)
  %7522 = select i1 %7465, float 1.000000e+00, float %7521
  %7523 = select i1 %7465, float %7521, float 1.000000e+00
  %7524 = fmul fast float %7470, %7440
  %7525 = fsub fast float 1.000000e+00, %7524
  %7526 = fmul fast float %7525, %7446
  %7527 = call float @dx.op.unary.f32(i32 7, float %7526)  ; Saturate(value)
  %7528 = fmul fast float %7527, %7523
  %7529 = fmul fast float %7528, 2.000000e+00
  %7530 = fsub fast float 3.000000e+00, %7529
  %7531 = fmul fast float %7518, %7502
  %7532 = fmul fast float %7528, %7528
  %7533 = fmul fast float %7532, %7531
  %7534 = fmul fast float %7533, %7530
  %7535 = call float @dx.op.binary.f32(i32 36, float %7534, float %7534)  ; FMin(a,b)
  %7536 = call float @dx.op.binary.f32(i32 36, float %7534, float %7535)  ; FMin(a,b)
  %7537 = fcmp fast ogt float %7536, 0.000000e+00
  br i1 %7537, label %7546, label %7538, !dx.controlflow.hints !119

; <label>:7538                                    ; preds = %8038, %7646, %7501
  %7539 = phi float [ %7405, %7646 ], [ %7405, %7501 ], [ %8081, %8038 ]
  %7540 = phi float [ %7406, %7646 ], [ %7406, %7501 ], [ %8082, %8038 ]
  %7541 = phi float [ %7407, %7646 ], [ %7407, %7501 ], [ %8083, %8038 ]
  %7542 = phi float [ %7408, %7646 ], [ %7408, %7501 ], [ %8075, %8038 ]
  %7543 = phi float [ %7409, %7646 ], [ %7409, %7501 ], [ %8076, %8038 ]
  %7544 = phi float [ %7410, %7646 ], [ %7410, %7501 ], [ %8077, %8038 ]
  %7545 = icmp eq i32 %7404, %7414
  br i1 %7545, label %8084, label %7403

; <label>:7546                                    ; preds = %7501
  %7547 = icmp eq i32 %7462, 255
  br i1 %7547, label %7646, label %7548, !dx.controlflow.hints !120

; <label>:7548                                    ; preds = %7546
  %7549 = mul nuw nsw i32 %7462, 176
  %7550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7549, i32 undef)  ; BufferLoad(srv,index,wot)
  %7551 = extractvalue %dx.types.ResRet.f32 %7550, 0
  %7552 = extractvalue %dx.types.ResRet.f32 %7550, 1
  %7553 = extractvalue %dx.types.ResRet.f32 %7550, 2
  %7554 = extractvalue %dx.types.ResRet.f32 %7550, 3
  %7555 = add nuw nsw i32 %7549, 16
  %7556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7555, i32 undef)  ; BufferLoad(srv,index,wot)
  %7557 = extractvalue %dx.types.ResRet.f32 %7556, 0
  %7558 = extractvalue %dx.types.ResRet.f32 %7556, 1
  %7559 = add nuw nsw i32 %7549, 32
  %7560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7559, i32 undef)  ; BufferLoad(srv,index,wot)
  %7561 = extractvalue %dx.types.ResRet.f32 %7560, 0
  %7562 = extractvalue %dx.types.ResRet.f32 %7560, 1
  %7563 = extractvalue %dx.types.ResRet.f32 %7560, 2
  %7564 = add nuw nsw i32 %7549, 48
  %7565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7564, i32 undef)  ; BufferLoad(srv,index,wot)
  %7566 = extractvalue %dx.types.ResRet.f32 %7565, 0
  %7567 = extractvalue %dx.types.ResRet.f32 %7565, 1
  %7568 = extractvalue %dx.types.ResRet.f32 %7565, 2
  %7569 = extractvalue %dx.types.ResRet.f32 %7565, 3
  %7570 = add nuw nsw i32 %7549, 64
  %7571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7570, i32 undef)  ; BufferLoad(srv,index,wot)
  %7572 = extractvalue %dx.types.ResRet.f32 %7571, 0
  %7573 = extractvalue %dx.types.ResRet.f32 %7571, 1
  %7574 = extractvalue %dx.types.ResRet.f32 %7571, 2
  %7575 = extractvalue %dx.types.ResRet.f32 %7571, 3
  %7576 = add nuw nsw i32 %7549, 80
  %7577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7576, i32 undef)  ; BufferLoad(srv,index,wot)
  %7578 = extractvalue %dx.types.ResRet.f32 %7577, 0
  %7579 = extractvalue %dx.types.ResRet.f32 %7577, 1
  %7580 = extractvalue %dx.types.ResRet.f32 %7577, 2
  %7581 = extractvalue %dx.types.ResRet.f32 %7577, 3
  %7582 = add nuw nsw i32 %7549, 96
  %7583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7582, i32 undef)  ; BufferLoad(srv,index,wot)
  %7584 = extractvalue %dx.types.ResRet.f32 %7583, 0
  %7585 = extractvalue %dx.types.ResRet.f32 %7583, 1
  %7586 = extractvalue %dx.types.ResRet.f32 %7583, 2
  %7587 = extractvalue %dx.types.ResRet.f32 %7583, 3
  %7588 = bitcast float %7558 to i32
  %7589 = fmul fast float %7563, %106
  %7590 = fmul fast float %7563, %107
  %7591 = fmul fast float %7563, %108
  %7592 = fadd fast float %7589, %154
  %7593 = fadd fast float %7590, %155
  %7594 = fadd fast float %7591, %156
  %7595 = fmul fast float %7592, %7566
  %7596 = call float @dx.op.tertiary.f32(i32 46, float %7593, float %7572, float %7595)  ; FMad(a,b,c)
  %7597 = call float @dx.op.tertiary.f32(i32 46, float %7594, float %7578, float %7596)  ; FMad(a,b,c)
  %7598 = fadd fast float %7597, %7584
  %7599 = fmul fast float %7592, %7567
  %7600 = call float @dx.op.tertiary.f32(i32 46, float %7593, float %7573, float %7599)  ; FMad(a,b,c)
  %7601 = call float @dx.op.tertiary.f32(i32 46, float %7594, float %7579, float %7600)  ; FMad(a,b,c)
  %7602 = fadd fast float %7601, %7585
  %7603 = fmul fast float %7592, %7568
  %7604 = call float @dx.op.tertiary.f32(i32 46, float %7593, float %7574, float %7603)  ; FMad(a,b,c)
  %7605 = call float @dx.op.tertiary.f32(i32 46, float %7594, float %7580, float %7604)  ; FMad(a,b,c)
  %7606 = fadd fast float %7605, %7586
  %7607 = fmul fast float %7592, %7569
  %7608 = call float @dx.op.tertiary.f32(i32 46, float %7593, float %7575, float %7607)  ; FMad(a,b,c)
  %7609 = call float @dx.op.tertiary.f32(i32 46, float %7594, float %7581, float %7608)  ; FMad(a,b,c)
  %7610 = fadd fast float %7609, %7587
  %7611 = fdiv fast float %7598, %7610
  %7612 = fdiv fast float %7602, %7610
  %7613 = fdiv fast float %7606, %7610
  %7614 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7613)  ; FMax(a,b)
  %7615 = fmul fast float %227, 0x401921FB60000000
  %7616 = call float @dx.op.unary.f32(i32 13, float %7615)  ; Sin(value)
  %7617 = call float @dx.op.unary.f32(i32 12, float %7615)  ; Cos(value)
  %7618 = fsub fast float -0.000000e+00, %7616
  %7619 = fmul fast float %7553, 5.000000e-01
  %7620 = call float @dx.op.dot2.f32(i32 54, float %227, float %227, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7621 = call float @dx.op.unary.f32(i32 22, float %7620)  ; Frc(value)
  %7622 = fmul fast float %7621, 0x404A7DD040000000
  %7623 = call float @dx.op.unary.f32(i32 22, float %7622)  ; Frc(value)
  %7624 = fmul fast float %7623, %7562
  %7625 = fadd fast float %7624, %7619
  %7626 = call float @dx.op.tertiary.f32(i32 46, float %7625, float %7618, float 0.000000e+00)  ; FMad(a,b,c)
  %7627 = call float @dx.op.tertiary.f32(i32 46, float %7625, float %7617, float 0.000000e+00)  ; FMad(a,b,c)
  %7628 = fadd fast float %7626, %7611
  %7629 = fadd fast float %7627, %7612
  %7630 = fmul fast float %7628, %7557
  %7631 = fmul fast float %7629, %7557
  %7632 = call float @dx.op.binary.f32(i32 35, float %7630, float %7553)  ; FMax(a,b)
  %7633 = call float @dx.op.binary.f32(i32 35, float %7631, float %7553)  ; FMax(a,b)
  %7634 = call float @dx.op.binary.f32(i32 36, float %7632, float %7554)  ; FMin(a,b)
  %7635 = call float @dx.op.binary.f32(i32 36, float %7633, float %7554)  ; FMin(a,b)
  %7636 = fadd fast float %7634, %7551
  %7637 = fadd fast float %7635, %7552
  %7638 = uitofp i32 %7588 to float
  %7639 = fadd fast float %7614, %7561
  %7640 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %7636, float %7637, float %7638, float undef, i32 0, i32 0, i32 undef, float %7639)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7641 = extractvalue %dx.types.ResRet.f32 %7640, 0
  %7642 = fadd fast float %7641, -1.000000e+00
  %7643 = fmul fast float %7642, %7522
  %7644 = fadd fast float %7643, 1.000000e+00
  %7645 = fmul fast float %7644, %7534
  br label %7646

; <label>:7646                                    ; preds = %7548, %7546
  %7647 = phi float [ %7645, %7548 ], [ %7534, %7546 ]
  %7648 = call float @dx.op.binary.f32(i32 36, float %7647, float %7647)  ; FMin(a,b)
  %7649 = call float @dx.op.binary.f32(i32 36, float %7647, float %7648)  ; FMin(a,b)
  %7650 = fcmp fast ogt float %7649, 0.000000e+00
  br i1 %7650, label %7651, label %7538, !dx.controlflow.hints !121

; <label>:7651                                    ; preds = %7646
  %7652 = fmul fast float %7647, %7455
  %7653 = fmul fast float %7647, %7456
  %7654 = fmul fast float %7647, %7457
  %7655 = fsub fast float %7439, %5465
  %7656 = fcmp fast ogt float %7655, 0.000000e+00
  %7657 = fsub fast float %156, %5465
  %7658 = fcmp fast ogt float %7657, 0.000000e+00
  %7659 = xor i1 %7658, %7656
  %7660 = fsub fast float %5465, %7439
  %7661 = fmul fast float %7660, 2.000000e+00
  %7662 = fadd fast float %7661, %7439
  %7663 = select i1 %7659, float %7439, float %7662
  %7664 = fsub fast float %7663, %156
  %7665 = call float @dx.op.dot3.f32(i32 55, float %7466, float %7467, float %7664, float %7466, float %7467, float %7664)  ; Dot3(ax,ay,az,bx,by,bz)
  %7666 = call float @dx.op.unary.f32(i32 25, float %7665)  ; Rsqrt(value)
  %7667 = fmul fast float %7666, %7466
  %7668 = fmul fast float %7666, %7467
  %7669 = fmul fast float %7666, %7664
  %7670 = fsub fast float %5465, %156
  %7671 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7670)  ; Dot3(ax,ay,az,bx,by,bz)
  %7672 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7667, float %7668, float %7669)  ; Dot3(ax,ay,az,bx,by,bz)
  %7673 = fdiv fast float 1.000000e+00, %7672
  %7674 = fmul fast float %7673, %7671
  %7675 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7657, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7676 = fcmp fast ogt float %7675, 0.000000e+00
  %7677 = fcmp fast olt float %7675, 0.000000e+00
  %7678 = zext i1 %7676 to i32
  %7679 = zext i1 %7677 to i32
  %7680 = sub nsw i32 %7678, %7679
  %7681 = sitofp i32 %7680 to float
  %7682 = fsub fast float %7663, %5465
  %7683 = call float @dx.op.dot3.f32(i32 55, float %7466, float %7467, float %7682, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7684 = fcmp fast ogt float %7683, 0.000000e+00
  %7685 = fcmp fast olt float %7683, 0.000000e+00
  %7686 = zext i1 %7684 to i32
  %7687 = zext i1 %7685 to i32
  %7688 = sub nsw i32 %7686, %7687
  %7689 = sitofp i32 %7688 to float
  %7690 = fcmp fast une float %7681, %7689
  br i1 %7690, label %7691, label %7701

; <label>:7691                                    ; preds = %7651
  %7692 = fmul fast float %7674, %7669
  %7693 = fmul fast float %7674, %7668
  %7694 = fmul fast float %7674, %7667
  %7695 = fmul fast float %7694, %7694
  %7696 = fmul fast float %7693, %7693
  %7697 = fadd fast float %7695, %7696
  %7698 = fmul fast float %7692, %7692
  %7699 = fadd fast float %7697, %7698
  %7700 = call float @dx.op.unary.f32(i32 24, float %7699)  ; Sqrt(value)
  br label %7713

; <label>:7701                                    ; preds = %7651
  %7702 = icmp slt i32 %7680, 0
  br i1 %7702, label %7703, label %7713

; <label>:7703                                    ; preds = %7701
  %7704 = fsub fast float %154, %7437
  %7705 = fsub fast float %155, %7438
  %7706 = fsub fast float %156, %7663
  %7707 = fmul fast float %7704, %7704
  %7708 = fmul fast float %7705, %7705
  %7709 = fadd fast float %7707, %7708
  %7710 = fmul fast float %7706, %7706
  %7711 = fadd fast float %7709, %7710
  %7712 = call float @dx.op.unary.f32(i32 24, float %7711)  ; Sqrt(value)
  br label %7713

; <label>:7713                                    ; preds = %7703, %7701, %7691
  %7714 = phi float [ %7700, %7691 ], [ %7712, %7703 ], [ 0.000000e+00, %7701 ]
  %7715 = and i1 %7658, %7656
  %7716 = fsub fast float -0.000000e+00, %7714
  %7717 = select i1 %7715, float -0.000000e+00, float %7716
  %7718 = fmul fast float %5466, 0x3FF7154760000000
  %7719 = fmul fast float %7718, %7717
  %7720 = fmul fast float %5467, 0x3FF7154760000000
  %7721 = fmul fast float %7720, %7717
  %7722 = fmul fast float %5468, 0x3FF7154760000000
  %7723 = fmul fast float %7722, %7717
  %7724 = call float @dx.op.unary.f32(i32 21, float %7719)  ; Exp(value)
  %7725 = call float @dx.op.unary.f32(i32 21, float %7721)  ; Exp(value)
  %7726 = call float @dx.op.unary.f32(i32 21, float %7723)  ; Exp(value)
  %7727 = call float @dx.op.unary.f32(i32 7, float %7724)  ; Saturate(value)
  %7728 = call float @dx.op.unary.f32(i32 7, float %7725)  ; Saturate(value)
  %7729 = call float @dx.op.unary.f32(i32 7, float %7726)  ; Saturate(value)
  %7730 = fmul fast float %7652, %7727
  %7731 = fmul fast float %7653, %7728
  %7732 = fmul fast float %7654, %7729
  %7733 = fsub fast float %7472, %5665
  %7734 = fsub fast float %7473, %5664
  %7735 = fsub fast float %7474, %5663
  %7736 = call float @dx.op.dot3.f32(i32 55, float %7733, float %7734, float %7735, float %7733, float %7734, float %7735)  ; Dot3(ax,ay,az,bx,by,bz)
  %7737 = call float @dx.op.unary.f32(i32 25, float %7736)  ; Rsqrt(value)
  %7738 = fmul fast float %7737, %7733
  %7739 = fmul fast float %7737, %7734
  %7740 = fmul fast float %7737, %7735
  %7741 = call float @dx.op.dot3.f32(i32 55, float %7472, float %7473, float %7474, float %5672, float %5673, float %5674)  ; Dot3(ax,ay,az,bx,by,bz)
  %7742 = call float @dx.op.dot3.f32(i32 55, float %5662, float %5661, float %5660, float %7738, float %7739, float %7740)  ; Dot3(ax,ay,az,bx,by,bz)
  %7743 = call float @dx.op.unary.f32(i32 7, float %7741)  ; Saturate(value)
  %7744 = fmul fast float %7743, %7479
  %7745 = fmul fast float %7743, %7743
  %7746 = fmul fast float %7745, %5693
  %7747 = call float @dx.op.unary.f32(i32 7, float %7746)  ; Saturate(value)
  %7748 = fmul fast float %7744, %7747
  %7749 = bitcast float %7469 to i32
  %7750 = ashr i32 %7749, 1
  %7751 = sub nsw i32 1597463007, %7750
  %7752 = bitcast i32 %7751 to float
  %7753 = fmul fast float %7752, %7466
  %7754 = fmul fast float %7752, %7467
  %7755 = fmul fast float %7752, %7468
  %7756 = fsub fast float %7753, %5665
  %7757 = fsub fast float %7754, %5664
  %7758 = fsub fast float %7755, %5663
  %7759 = call float @dx.op.dot3.f32(i32 55, float %7756, float %7757, float %7758, float %7756, float %7757, float %7758)  ; Dot3(ax,ay,az,bx,by,bz)
  %7760 = call float @dx.op.unary.f32(i32 25, float %7759)  ; Rsqrt(value)
  %7761 = fmul fast float %7756, %7760
  %7762 = fmul fast float %7757, %7760
  %7763 = fmul fast float %7758, %7760
  %7764 = call float @dx.op.dot3.f32(i32 55, float %5672, float %5673, float %5674, float %7761, float %7762, float %7763)  ; Dot3(ax,ay,az,bx,by,bz)
  %7765 = fmul fast float %7764, %7764
  %7766 = call float @dx.op.unary.f32(i32 6, float %7741)  ; FAbs(value)
  %7767 = call float @dx.op.binary.f32(i32 35, float %6076, float 0x3F847AE140000000)  ; FMax(a,b)
  %7768 = fmul fast float %7767, %7767
  %7769 = fmul fast float %7768, %7768
  %7770 = fsub fast float 1.000000e+00, %7769
  %7771 = fmul fast float %5680, %5680
  %7772 = fmul fast float %7771, %7770
  %7773 = fadd fast float %7772, %7769
  %7774 = bitcast float %7773 to i32
  %7775 = ashr i32 %7774, 1
  %7776 = add nsw i32 %7775, 532487669
  %7777 = bitcast i32 %7776 to float
  %7778 = fadd fast float %7777, %5680
  %7779 = fmul fast float %7769, %7765
  %7780 = fsub fast float 1.000000e+00, %7765
  %7781 = fadd fast float %7780, %7779
  %7782 = fmul fast float %7766, %7766
  %7783 = fmul fast float %7782, %7770
  %7784 = fadd fast float %7783, %7769
  %7785 = bitcast float %7784 to i32
  %7786 = ashr i32 %7785, 1
  %7787 = add nsw i32 %7786, 532487669
  %7788 = bitcast i32 %7787 to float
  %7789 = fadd fast float %7788, %7766
  %7790 = fmul fast float %7781, %7781
  %7791 = fmul fast float %7790, %7778
  %7792 = fmul fast float %7791, %7789
  %7793 = fdiv fast float 1.000000e+00, %7792
  %7794 = bitcast float %7769 to i32
  %7795 = sitofp i32 %7794 to float
  %7796 = fmul fast float %7795, 0x3FE7F73180000000
  %7797 = fadd fast float %7796, 0x41AFE27C40000000
  %7798 = fptosi float %7797 to i32
  %7799 = bitcast i32 %7798 to float
  %7800 = fmul fast float %7434, 0x3FD80E9D60000000
  %7801 = fmul fast float %7800, %7752
  %7802 = fadd fast float %7799, %7801
  %7803 = bitcast float %7802 to i32
  %7804 = sub nsw i32 2129859010, %7803
  %7805 = bitcast i32 %7804 to float
  %7806 = fmul fast float %7769, %7793
  %7807 = fmul fast float %7806, %7799
  %7808 = fmul fast float %7807, %7805
  %7809 = fmul fast float %5938, 0x3FF9999980000000
  %7810 = fsub fast float 5.000000e+00, %7809
  %7811 = call float @dx.op.unary.f32(i32 6, float %7742)  ; FAbs(value)
  %7812 = fsub fast float 1.000000e+00, %7811
  %7813 = fmul fast float %5938, 0x41D9660740000000
  %7814 = fadd fast float %7813, 0xC1EFBF8940000000
  %7815 = bitcast float %7812 to i32
  %7816 = sitofp i32 %7815 to float
  %7817 = fmul fast float %7816, %7810
  %7818 = fadd fast float %7814, %7817
  %7819 = fptosi float %7818 to i32
  %7820 = bitcast i32 %7819 to float
  %7821 = fsub fast float 1.000000e+00, %5669
  %7822 = fsub fast float 1.000000e+00, %5670
  %7823 = fsub fast float 1.000000e+00, %5678
  %7824 = fmul fast float %7820, %7821
  %7825 = fmul fast float %7820, %7822
  %7826 = fmul fast float %7820, %7823
  %7827 = fadd fast float %7824, %5669
  %7828 = fadd fast float %7825, %5670
  %7829 = fadd fast float %7826, %5678
  br i1 %5961, label %7830, label %7853

; <label>:7830                                    ; preds = %7713
  %7831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5011, float %7811, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7832 = extractvalue %dx.types.ResRet.f32 %7831, 0
  %7833 = extractvalue %dx.types.ResRet.f32 %7831, 1
  %7834 = extractvalue %dx.types.ResRet.f32 %7831, 2
  %7835 = fadd fast float %7832, -5.000000e-01
  %7836 = fadd fast float %7833, -5.000000e-01
  %7837 = fadd fast float %7834, -5.000000e-01
  %7838 = fmul fast float %5669, 4.000000e+00
  %7839 = fmul fast float %7838, %7821
  %7840 = fmul fast float %7839, %7835
  %7841 = fmul fast float %5670, 4.000000e+00
  %7842 = fmul fast float %7841, %7822
  %7843 = fmul fast float %7842, %7836
  %7844 = fmul fast float %5678, 4.000000e+00
  %7845 = fmul fast float %7844, %7823
  %7846 = fmul fast float %7845, %7837
  %7847 = fadd fast float %7840, %7827
  %7848 = fadd fast float %7843, %7828
  %7849 = fadd fast float %7846, %7829
  %7850 = call float @dx.op.unary.f32(i32 7, float %7847)  ; Saturate(value)
  %7851 = call float @dx.op.unary.f32(i32 7, float %7848)  ; Saturate(value)
  %7852 = call float @dx.op.unary.f32(i32 7, float %7849)  ; Saturate(value)
  br label %7853

; <label>:7853                                    ; preds = %7830, %7713
  %7854 = phi float [ %7850, %7830 ], [ %7827, %7713 ]
  %7855 = phi float [ %7851, %7830 ], [ %7828, %7713 ]
  %7856 = phi float [ %7852, %7830 ], [ %7829, %7713 ]
  %7857 = fmul fast float %7741, 9.843750e-01
  %7858 = fadd fast float %7857, 7.812500e-03
  %7859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7858, float %5942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7860 = extractvalue %dx.types.ResRet.f32 %7859, 0
  %7861 = extractvalue %dx.types.ResRet.f32 %7859, 1
  %7862 = extractvalue %dx.types.ResRet.f32 %7859, 2
  %7863 = extractvalue %dx.types.ResRet.f32 %7859, 3
  %7864 = fsub fast float %7862, %7860
  %7865 = fsub fast float %7863, %7861
  %7866 = fmul fast float %7864, %5948
  %7867 = fmul fast float %7865, %5948
  %7868 = fadd fast float %7866, %7860
  %7869 = fadd fast float %7867, %7861
  %7870 = fmul fast float %7868, %5669
  %7871 = fmul fast float %7868, %5670
  %7872 = fmul fast float %7868, %5678
  %7873 = fadd fast float %7870, %7869
  %7874 = fadd fast float %7871, %7869
  %7875 = fadd fast float %7872, %7869
  br i1 %5961, label %7876, label %7899

; <label>:7876                                    ; preds = %7853
  %7877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5011, float %7741, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7878 = extractvalue %dx.types.ResRet.f32 %7877, 0
  %7879 = extractvalue %dx.types.ResRet.f32 %7877, 1
  %7880 = extractvalue %dx.types.ResRet.f32 %7877, 2
  %7881 = fadd fast float %7878, -5.000000e-01
  %7882 = fadd fast float %7879, -5.000000e-01
  %7883 = fadd fast float %7880, -5.000000e-01
  %7884 = fmul fast float %5669, 4.000000e+00
  %7885 = fmul fast float %7884, %7821
  %7886 = fmul fast float %7885, %7881
  %7887 = fmul fast float %5670, 4.000000e+00
  %7888 = fmul fast float %7887, %7822
  %7889 = fmul fast float %7888, %7882
  %7890 = fmul fast float %5678, 4.000000e+00
  %7891 = fmul fast float %7890, %7823
  %7892 = fmul fast float %7891, %7883
  %7893 = fadd fast float %7886, %7873
  %7894 = fadd fast float %7889, %7874
  %7895 = fadd fast float %7892, %7875
  %7896 = call float @dx.op.unary.f32(i32 7, float %7893)  ; Saturate(value)
  %7897 = call float @dx.op.unary.f32(i32 7, float %7894)  ; Saturate(value)
  %7898 = call float @dx.op.unary.f32(i32 7, float %7895)  ; Saturate(value)
  br label %7899

; <label>:7899                                    ; preds = %7876, %7853
  %7900 = phi float [ %7896, %7876 ], [ %7873, %7853 ]
  %7901 = phi float [ %7897, %7876 ], [ %7874, %7853 ]
  %7902 = phi float [ %7898, %7876 ], [ %7875, %7853 ]
  %7903 = call float @dx.op.binary.f32(i32 35, float %7901, float %7902)  ; FMax(a,b)
  %7904 = call float @dx.op.binary.f32(i32 35, float %7900, float %7903)  ; FMax(a,b)
  %7905 = fsub fast float 1.000000e+00, %7904
  %7906 = call float @dx.op.binary.f32(i32 35, float %7766, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7907 = fdiv fast float %4417, %7906
  %7908 = fmul fast float %6016, %7907
  %7909 = fmul fast float %6018, %7907
  %7910 = fmul fast float %6020, %7907
  %7911 = call float @dx.op.unary.f32(i32 21, float %7908)  ; Exp(value)
  %7912 = call float @dx.op.unary.f32(i32 21, float %7909)  ; Exp(value)
  %7913 = call float @dx.op.unary.f32(i32 21, float %7910)  ; Exp(value)
  %7914 = call float @dx.op.unary.f32(i32 7, float %7911)  ; Saturate(value)
  %7915 = call float @dx.op.unary.f32(i32 7, float %7912)  ; Saturate(value)
  %7916 = call float @dx.op.unary.f32(i32 7, float %7913)  ; Saturate(value)
  %7917 = select i1 %6013, float %7914, float 0.000000e+00
  %7918 = select i1 %6014, float %7915, float 0.000000e+00
  %7919 = select i1 %6015, float %7916, float 0.000000e+00
  %7920 = fsub fast float -0.000000e+00, %5672
  %7921 = fsub fast float -0.000000e+00, %5673
  %7922 = fsub fast float -0.000000e+00, %5674
  %7923 = call float @dx.op.dot3.f32(i32 55, float %7472, float %7473, float %7474, float %7920, float %7921, float %7922)  ; Dot3(ax,ay,az,bx,by,bz)
  %7924 = call float @dx.op.unary.f32(i32 7, float %7923)  ; Saturate(value)
  %7925 = fmul fast float %7924, %7479
  %7926 = fmul fast float %7924, 9.843750e-01
  %7927 = fadd fast float %7926, 7.812500e-03
  %7928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7927, float %5942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7929 = extractvalue %dx.types.ResRet.f32 %7928, 0
  %7930 = extractvalue %dx.types.ResRet.f32 %7928, 1
  %7931 = extractvalue %dx.types.ResRet.f32 %7928, 2
  %7932 = extractvalue %dx.types.ResRet.f32 %7928, 3
  %7933 = fsub fast float %7931, %7929
  %7934 = fsub fast float %7932, %7930
  %7935 = fmul fast float %7933, %5948
  %7936 = fmul fast float %7934, %5948
  %7937 = fadd fast float %7935, %7929
  %7938 = fadd fast float %7936, %7930
  %7939 = fmul fast float %7937, %5669
  %7940 = fmul fast float %7937, %5670
  %7941 = fmul fast float %7937, %5678
  %7942 = fadd fast float %7939, %7938
  %7943 = fadd fast float %7940, %7938
  %7944 = fadd fast float %7941, %7938
  br i1 %5961, label %7945, label %7968

; <label>:7945                                    ; preds = %7899
  %7946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5011, float %7924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7947 = extractvalue %dx.types.ResRet.f32 %7946, 0
  %7948 = extractvalue %dx.types.ResRet.f32 %7946, 1
  %7949 = extractvalue %dx.types.ResRet.f32 %7946, 2
  %7950 = fadd fast float %7947, -5.000000e-01
  %7951 = fadd fast float %7948, -5.000000e-01
  %7952 = fadd fast float %7949, -5.000000e-01
  %7953 = fmul fast float %5669, 4.000000e+00
  %7954 = fmul fast float %7953, %7821
  %7955 = fmul fast float %7954, %7950
  %7956 = fmul fast float %5670, 4.000000e+00
  %7957 = fmul fast float %7956, %7822
  %7958 = fmul fast float %7957, %7951
  %7959 = fmul fast float %5678, 4.000000e+00
  %7960 = fmul fast float %7959, %7823
  %7961 = fmul fast float %7960, %7952
  %7962 = fadd fast float %7955, %7942
  %7963 = fadd fast float %7958, %7943
  %7964 = fadd fast float %7961, %7944
  %7965 = call float @dx.op.unary.f32(i32 7, float %7962)  ; Saturate(value)
  %7966 = call float @dx.op.unary.f32(i32 7, float %7963)  ; Saturate(value)
  %7967 = call float @dx.op.unary.f32(i32 7, float %7964)  ; Saturate(value)
  br label %7968

; <label>:7968                                    ; preds = %7945, %7899
  %7969 = phi float [ %7965, %7945 ], [ %7942, %7899 ]
  %7970 = phi float [ %7966, %7945 ], [ %7943, %7899 ]
  %7971 = phi float [ %7967, %7945 ], [ %7944, %7899 ]
  %7972 = call float @dx.op.binary.f32(i32 35, float %7970, float %7971)  ; FMax(a,b)
  %7973 = call float @dx.op.binary.f32(i32 35, float %7969, float %7972)  ; FMax(a,b)
  %7974 = fsub fast float 1.000000e+00, %7973
  %7975 = fmul fast float %6076, %6081
  %7976 = fadd fast float %6083, %7975
  %7977 = call float @dx.op.unary.f32(i32 7, float %7976)  ; Saturate(value)
  %7978 = fsub fast float %7753, %5686
  %7979 = fsub fast float %7754, %5687
  %7980 = fsub fast float %7755, %5688
  %7981 = call float @dx.op.dot3.f32(i32 55, float %7978, float %7979, float %7980, float %7978, float %7979, float %7980)  ; Dot3(ax,ay,az,bx,by,bz)
  %7982 = call float @dx.op.unary.f32(i32 25, float %7981)  ; Rsqrt(value)
  %7983 = fmul fast float %7978, %7982
  %7984 = fmul fast float %7979, %7982
  %7985 = fmul fast float %7980, %7982
  %7986 = call float @dx.op.dot3.f32(i32 55, float %7920, float %7921, float %7922, float %7983, float %7984, float %7985)  ; Dot3(ax,ay,az,bx,by,bz)
  %7987 = fmul fast float %7986, %7986
  %7988 = call float @dx.op.unary.f32(i32 6, float %7924)  ; FAbs(value)
  %7989 = call float @dx.op.binary.f32(i32 35, float %7977, float 0x3F847AE140000000)  ; FMax(a,b)
  %7990 = fmul fast float %7989, %7989
  %7991 = fmul fast float %7990, %7990
  %7992 = fsub fast float 1.000000e+00, %7991
  %7993 = fmul fast float %7771, %7992
  %7994 = fadd fast float %7993, %7991
  %7995 = bitcast float %7994 to i32
  %7996 = ashr i32 %7995, 1
  %7997 = add nsw i32 %7996, 532487669
  %7998 = bitcast i32 %7997 to float
  %7999 = fadd fast float %7998, %5680
  %8000 = fmul fast float %7991, %7987
  %8001 = fsub fast float 1.000000e+00, %7987
  %8002 = fadd fast float %8001, %8000
  %8003 = fmul fast float %7988, %7988
  %8004 = fmul fast float %8003, %7992
  %8005 = fadd fast float %8004, %7991
  %8006 = bitcast float %8005 to i32
  %8007 = ashr i32 %8006, 1
  %8008 = add nsw i32 %8007, 532487669
  %8009 = bitcast i32 %8008 to float
  %8010 = fadd fast float %8009, %7988
  %8011 = fmul fast float %8002, %8002
  %8012 = fmul fast float %8011, %7999
  %8013 = fmul fast float %8012, %8010
  %8014 = fdiv fast float 1.000000e+00, %8013
  %8015 = bitcast float %7991 to i32
  %8016 = sitofp i32 %8015 to float
  %8017 = fmul fast float %8016, 0x3FE7F73180000000
  %8018 = fadd fast float %8017, 0x41AFE27C40000000
  %8019 = fptosi float %8018 to i32
  %8020 = bitcast i32 %8019 to float
  %8021 = fadd fast float %8020, %7801
  %8022 = bitcast float %8021 to i32
  %8023 = sub nsw i32 2129859010, %8022
  %8024 = bitcast i32 %8023 to float
  %8025 = fmul fast float %7991, %8014
  %8026 = fmul fast float %8025, %8020
  %8027 = fmul fast float %8026, %8024
  br i1 %7464, label %8028, label %8038

; <label>:8028                                    ; preds = %7968
  %8029 = fmul fast float %7925, %7917
  %8030 = fmul fast float %7925, %7918
  %8031 = fmul fast float %7925, %7919
  %8032 = fmul fast float %8029, %7974
  %8033 = fmul fast float %8032, %8027
  %8034 = fmul fast float %8030, %7974
  %8035 = fmul fast float %8034, %8027
  %8036 = fmul fast float %8031, %7974
  %8037 = fmul fast float %8036, %8027
  br label %8038

; <label>:8038                                    ; preds = %8028, %7968
  %8039 = phi float [ %8033, %8028 ], [ 0.000000e+00, %7968 ]
  %8040 = phi float [ %8035, %8028 ], [ 0.000000e+00, %7968 ]
  %8041 = phi float [ %8037, %8028 ], [ 0.000000e+00, %7968 ]
  %8042 = fmul fast float %7854, %7808
  %8043 = fmul fast float %7855, %7808
  %8044 = fmul fast float %7856, %7808
  %8045 = fsub fast float 1.000000e+00, %7742
  %8046 = bitcast float %8045 to i32
  %8047 = sitofp i32 %8046 to float
  %8048 = fmul fast float %8047, 5.000000e+00
  %8049 = fadd fast float %8048, 0xC1EFBF8940000000
  %8050 = fptosi float %8049 to i32
  %8051 = bitcast i32 %8050 to float
  %8052 = fmul fast float %8051, %5010
  %8053 = fmul fast float %7905, %8052
  %8054 = fmul fast float %8053, %6008
  %8055 = fmul fast float %8053, %6009
  %8056 = fmul fast float %8053, %6010
  %8057 = fadd fast float %8054, %8042
  %8058 = fadd fast float %8055, %8043
  %8059 = fadd fast float %8056, %8044
  %8060 = fmul fast float %8057, %7748
  %8061 = fmul fast float %8058, %7748
  %8062 = fmul fast float %8059, %7748
  %8063 = fadd fast float %8060, %8039
  %8064 = fadd fast float %8061, %8040
  %8065 = fadd fast float %8062, %8041
  %8066 = fmul fast float %7730, %5034
  %8067 = fmul fast float %8066, %7748
  %8068 = fmul fast float %8067, %7905
  %8069 = fmul fast float %7731, %5034
  %8070 = fmul fast float %8069, %7748
  %8071 = fmul fast float %8070, %7905
  %8072 = fmul fast float %7732, %5034
  %8073 = fmul fast float %8072, %7748
  %8074 = fmul fast float %8073, %7905
  %8075 = fadd fast float %8068, %7408
  %8076 = fadd fast float %8071, %7409
  %8077 = fadd fast float %8074, %7410
  %8078 = fmul fast float %8066, %8063
  %8079 = fmul fast float %8069, %8064
  %8080 = fmul fast float %8072, %8065
  %8081 = fadd fast float %8078, %7405
  %8082 = fadd fast float %8079, %7406
  %8083 = fadd fast float %8080, %7407
  br label %7538

; <label>:8084                                    ; preds = %7538
  br label %8085

; <label>:8085                                    ; preds = %8084, %7371
  %8086 = phi float [ %7373, %7371 ], [ %7539, %8084 ]
  %8087 = phi float [ %7374, %7371 ], [ %7540, %8084 ]
  %8088 = phi float [ %7375, %7371 ], [ %7541, %8084 ]
  %8089 = phi float [ %7376, %7371 ], [ %7542, %8084 ]
  %8090 = phi float [ %7377, %7371 ], [ %7543, %8084 ]
  %8091 = phi float [ %7378, %7371 ], [ %7544, %8084 ]
  %8092 = add i32 %7372, 1
  %8093 = icmp ugt i32 %8092, %7368
  br i1 %8093, label %8094, label %7371

; <label>:8094                                    ; preds = %8085
  br label %8095

; <label>:8095                                    ; preds = %8094, %7321, %7311
  %8096 = phi float [ %7312, %7311 ], [ %7312, %7321 ], [ %8086, %8094 ]
  %8097 = phi float [ %7313, %7311 ], [ %7313, %7321 ], [ %8087, %8094 ]
  %8098 = phi float [ %7314, %7311 ], [ %7314, %7321 ], [ %8088, %8094 ]
  %8099 = phi float [ %7315, %7311 ], [ %7315, %7321 ], [ %8089, %8094 ]
  %8100 = phi float [ %7316, %7311 ], [ %7316, %7321 ], [ %8090, %8094 ]
  %8101 = phi float [ %7317, %7311 ], [ %7317, %7321 ], [ %8091, %8094 ]
  %8102 = fmul fast float %5034, %6037
  %8103 = fsub fast float -0.000000e+00, %8102
  %8104 = fmul fast float %5034, %6038
  %8105 = fsub fast float -0.000000e+00, %8104
  %8106 = fmul fast float %5034, %6039
  %8107 = fsub fast float -0.000000e+00, %8106
  %8108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8109 = extractvalue %dx.types.CBufRet.f32 %8108, 0
  %8110 = fmul fast float %8109, %6043
  %8111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8112 = extractvalue %dx.types.CBufRet.f32 %8111, 3
  %8113 = fsub fast float 1.000000e+00, %5006
  %8114 = call float @dx.op.unary.f32(i32 7, float %8113)  ; Saturate(value)
  %8115 = fadd fast float %8101, %5005
  %8116 = fmul fast float %8115, %5006
  %8117 = fmul fast float %8114, %8112
  %8118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8119 = extractvalue %dx.types.CBufRet.f32 %8118, 3
  %8120 = fmul fast float %8099, %5666
  %8121 = fmul fast float %8100, %5667
  %8122 = fmul fast float %8101, %5668
  %8123 = fcmp fast ogt float %90, %176
  %8124 = and i1 %8123, %5471
  %8125 = or i1 %5477, %8124
  %8126 = icmp eq i32 %5470, 2
  %8127 = fcmp fast ole float %90, %176
  %8128 = and i1 %8127, %8126
  %8129 = or i1 %8128, %8125
  br i1 %8124, label %8130, label %8387

; <label>:8130                                    ; preds = %8095
  %8131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8132 = extractvalue %dx.types.CBufRet.f32 %8131, 2
  %8133 = extractvalue %dx.types.CBufRet.f32 %8131, 3
  %8134 = fmul fast float %8132, %99
  %8135 = fmul fast float %8133, %100
  %8136 = call float @dx.op.unary.f32(i32 7, float %8134)  ; Saturate(value)
  %8137 = call float @dx.op.unary.f32(i32 7, float %8135)  ; Saturate(value)
  %8138 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8136, float %8137, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8139 = extractvalue %dx.types.ResRet.f32 %8138, 0
  %8140 = extractvalue %dx.types.ResRet.f32 %8138, 1
  %8141 = extractvalue %dx.types.ResRet.f32 %8138, 2
  %8142 = extractvalue %dx.types.ResRet.f32 %8138, 3
  %8143 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8136, float %8137, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8144 = extractvalue %dx.types.ResRet.f32 %8143, 0
  %8145 = extractvalue %dx.types.ResRet.f32 %8143, 1
  %8146 = extractvalue %dx.types.ResRet.f32 %8143, 2
  %8147 = extractvalue %dx.types.ResRet.f32 %8143, 3
  %8148 = call float @dx.op.binary.f32(i32 35, float %8140, float %8141)  ; FMax(a,b)
  %8149 = call float @dx.op.binary.f32(i32 35, float %8139, float %8148)  ; FMax(a,b)
  %8150 = call float @dx.op.binary.f32(i32 35, float %8149, float %8142)  ; FMax(a,b)
  %8151 = call float @dx.op.binary.f32(i32 36, float %8145, float %8146)  ; FMin(a,b)
  %8152 = call float @dx.op.binary.f32(i32 36, float %8144, float %8151)  ; FMin(a,b)
  %8153 = call float @dx.op.binary.f32(i32 36, float %8152, float %8147)  ; FMin(a,b)
  %8154 = fmul fast float %8150, 2.550000e+02
  %8155 = fadd fast float %8154, 0x3F70101020000000
  %8156 = fptoui float %8155 to i32
  %8157 = fmul fast float %8153, 2.550000e+02
  %8158 = fadd fast float %8157, 0x3F70101020000000
  %8159 = fptoui float %8158 to i32
  %8160 = icmp ult i32 %8156, %8159
  br i1 %8160, label %8161, label %8329

; <label>:8161                                    ; preds = %8130
  %8162 = fcmp fast ogt float %89, 9.843750e-01
  %8163 = fadd fast float %90, -4.000000e+00
  %8164 = select i1 %8162, float -4.000000e+00, float %8163
  %8165 = call float @dx.op.binary.f32(i32 35, float %8164, float 0.000000e+00)  ; FMax(a,b)
  %8166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8167 = extractvalue %dx.types.CBufRet.f32 %8166, 0
  %8168 = fadd fast float %8167, %8165
  %8169 = extractvalue %dx.types.CBufRet.f32 %8166, 2
  %8170 = fmul fast float %8168, %8169
  %8171 = call float @dx.op.unary.f32(i32 23, float %8170)  ; Log(value)
  %8172 = extractvalue %dx.types.CBufRet.f32 %8166, 3
  %8173 = fmul fast float %8172, %8171
  %8174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8175 = extractvalue %dx.types.CBufRet.f32 %8174, 2
  %8176 = fmul fast float %8173, %8175
  %8177 = call float @dx.op.unary.f32(i32 7, float %8176)  ; Saturate(value)
  %8178 = uitofp i32 %8156 to float
  %8179 = uitofp i32 %8159 to float
  %8180 = fadd fast float %8178, 5.000000e-01
  %8181 = fadd fast float %8179, 5.000000e-01
  %8182 = fmul fast float %8175, %8180
  %8183 = fmul fast float %8175, %8181
  %8184 = fadd fast float %8182, 0x3F0FFB4800000000
  %8185 = fadd fast float %8183, 0xBF0FFB4800000000
  %8186 = call float @dx.op.binary.f32(i32 35, float %8177, float %8184)  ; FMax(a,b)
  %8187 = call float @dx.op.binary.f32(i32 36, float %8186, float %8185)  ; FMin(a,b)
  %8188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8189 = extractvalue %dx.types.CBufRet.f32 %8188, 1
  %8190 = extractvalue %dx.types.CBufRet.f32 %8188, 2
  %8191 = extractvalue %dx.types.CBufRet.f32 %8188, 0
  %8192 = fmul fast float %8189, %8187
  %8193 = fadd fast float %8191, %8192
  %8194 = fadd fast float %8191, %8190
  %8195 = fsub fast float %8189, %8190
  %8196 = fadd fast float %8195, %8191
  %8197 = call float @dx.op.binary.f32(i32 35, float %8193, float %8194)  ; FMax(a,b)
  %8198 = call float @dx.op.binary.f32(i32 36, float %8197, float %8196)  ; FMin(a,b)
  %8199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8136, float %8137, float %8198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8200 = extractvalue %dx.types.ResRet.f32 %8199, 0
  %8201 = extractvalue %dx.types.ResRet.f32 %8199, 1
  %8202 = extractvalue %dx.types.ResRet.f32 %8199, 2
  %8203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8204 = extractvalue %dx.types.CBufRet.i32 %8203, 0
  %8205 = extractvalue %dx.types.CBufRet.i32 %8203, 1
  %8206 = uitofp i32 %8204 to float
  %8207 = uitofp i32 %8205 to float
  %8208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8209 = extractvalue %dx.types.CBufRet.f32 %8208, 0
  %8210 = extractvalue %dx.types.CBufRet.f32 %8208, 1
  %8211 = fmul fast float %8206, %8136
  %8212 = fmul fast float %8207, %8137
  %8213 = fadd fast float %8211, -5.000000e-01
  %8214 = fadd fast float %8212, -5.000000e-01
  %8215 = call float @dx.op.unary.f32(i32 22, float %8213)  ; Frc(value)
  %8216 = call float @dx.op.unary.f32(i32 22, float %8214)  ; Frc(value)
  %8217 = fmul fast float %8215, %8215
  %8218 = fmul fast float %8217, %8215
  %8219 = fsub fast float 3.000000e+00, %8215
  %8220 = fmul fast float %8217, %8219
  %8221 = fmul fast float %8215, 3.000000e+00
  %8222 = fmul fast float %8218, 3.000000e+00
  %8223 = fmul fast float %8217, 6.000000e+00
  %8224 = fsub fast float %8222, %8223
  %8225 = fadd fast float %8224, 4.000000e+00
  %8226 = fmul fast float %8225, 0x3FC5555560000000
  %8227 = fmul fast float %8218, -3.000000e+00
  %8228 = fadd fast float %8217, %8215
  %8229 = fmul fast float %8228, 3.000000e+00
  %8230 = fadd fast float %8227, 1.000000e+00
  %8231 = fadd fast float %8230, %8229
  %8232 = fmul fast float %8218, 0x3FC5555560000000
  %8233 = fmul fast float %8216, %8216
  %8234 = fmul fast float %8233, %8216
  %8235 = fsub fast float 3.000000e+00, %8216
  %8236 = fmul fast float %8233, %8235
  %8237 = fmul fast float %8216, 3.000000e+00
  %8238 = fmul fast float %8234, 3.000000e+00
  %8239 = fmul fast float %8233, 6.000000e+00
  %8240 = fsub fast float %8238, %8239
  %8241 = fadd fast float %8240, 4.000000e+00
  %8242 = fmul fast float %8241, 0x3FC5555560000000
  %8243 = fmul fast float %8234, -3.000000e+00
  %8244 = fadd fast float %8233, %8216
  %8245 = fmul fast float %8244, 3.000000e+00
  %8246 = fadd fast float %8243, 1.000000e+00
  %8247 = fadd fast float %8246, %8245
  %8248 = fmul fast float %8234, 0x3FC5555560000000
  %8249 = fadd fast float %8215, 1.000000e+00
  %8250 = fsub fast float 1.000000e+00, %8221
  %8251 = fadd fast float %8250, %8220
  %8252 = fadd fast float %8251, %8225
  %8253 = fmul fast float %8252, 0x3FC5555560000000
  %8254 = fdiv fast float %8226, %8253
  %8255 = fsub fast float %8249, %8254
  %8256 = fsub fast float 1.000000e+00, %8215
  %8257 = fadd fast float %8231, %8218
  %8258 = fmul fast float %8257, 0x3FC5555560000000
  %8259 = fdiv fast float %8232, %8258
  %8260 = fadd fast float %8256, %8259
  %8261 = fadd fast float %8216, 1.000000e+00
  %8262 = fsub fast float 1.000000e+00, %8237
  %8263 = fadd fast float %8262, %8236
  %8264 = fadd fast float %8263, %8241
  %8265 = fmul fast float %8264, 0x3FC5555560000000
  %8266 = fdiv fast float %8242, %8265
  %8267 = fsub fast float %8261, %8266
  %8268 = fsub fast float 1.000000e+00, %8216
  %8269 = fadd fast float %8247, %8234
  %8270 = fmul fast float %8269, 0x3FC5555560000000
  %8271 = fdiv fast float %8248, %8270
  %8272 = fadd fast float %8271, %8268
  %8273 = fmul fast float %8255, %8209
  %8274 = fsub fast float %8136, %8273
  %8275 = fmul fast float %8260, %8209
  %8276 = fadd fast float %8275, %8136
  %8277 = fmul fast float %8272, %8210
  %8278 = fadd fast float %8277, %8137
  %8279 = fmul fast float %8267, %8210
  %8280 = fsub fast float %8137, %8279
  %8281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8274, float %8280, float %8198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8282 = extractvalue %dx.types.ResRet.f32 %8281, 0
  %8283 = extractvalue %dx.types.ResRet.f32 %8281, 1
  %8284 = extractvalue %dx.types.ResRet.f32 %8281, 2
  %8285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8276, float %8280, float %8198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8286 = extractvalue %dx.types.ResRet.f32 %8285, 0
  %8287 = extractvalue %dx.types.ResRet.f32 %8285, 1
  %8288 = extractvalue %dx.types.ResRet.f32 %8285, 2
  %8289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8274, float %8278, float %8198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8290 = extractvalue %dx.types.ResRet.f32 %8289, 0
  %8291 = extractvalue %dx.types.ResRet.f32 %8289, 1
  %8292 = extractvalue %dx.types.ResRet.f32 %8289, 2
  %8293 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8276, float %8278, float %8198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8294 = extractvalue %dx.types.ResRet.f32 %8293, 0
  %8295 = extractvalue %dx.types.ResRet.f32 %8293, 1
  %8296 = extractvalue %dx.types.ResRet.f32 %8293, 2
  %8297 = fsub fast float %8290, %8282
  %8298 = fsub fast float %8291, %8283
  %8299 = fsub fast float %8292, %8284
  %8300 = fmul fast float %8297, %8270
  %8301 = fmul fast float %8298, %8270
  %8302 = fmul fast float %8299, %8270
  %8303 = fadd fast float %8300, %8282
  %8304 = fadd fast float %8301, %8283
  %8305 = fadd fast float %8302, %8284
  %8306 = fsub fast float %8294, %8286
  %8307 = fsub fast float %8295, %8287
  %8308 = fsub fast float %8296, %8288
  %8309 = fmul fast float %8306, %8270
  %8310 = fmul fast float %8307, %8270
  %8311 = fmul fast float %8308, %8270
  %8312 = fsub fast float %8286, %8303
  %8313 = fadd fast float %8312, %8309
  %8314 = fsub fast float %8287, %8304
  %8315 = fadd fast float %8314, %8310
  %8316 = fsub fast float %8288, %8305
  %8317 = fadd fast float %8316, %8311
  %8318 = fmul fast float %8313, %8258
  %8319 = fmul fast float %8315, %8258
  %8320 = fmul fast float %8317, %8258
  %8321 = fadd fast float %8318, %8303
  %8322 = fadd fast float %8319, %8304
  %8323 = fadd fast float %8320, %8305
  %8324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8325 = extractvalue %dx.types.CBufRet.f32 %8324, 1
  %8326 = fmul fast float %8321, %8325
  %8327 = fmul fast float %8322, %8325
  %8328 = fmul fast float %8323, %8325
  br label %8329

; <label>:8329                                    ; preds = %8161, %8130
  %8330 = phi float [ %8200, %8161 ], [ 1.000000e+00, %8130 ]
  %8331 = phi float [ %8201, %8161 ], [ 1.000000e+00, %8130 ]
  %8332 = phi float [ %8202, %8161 ], [ 1.000000e+00, %8130 ]
  %8333 = phi float [ %8326, %8161 ], [ 0.000000e+00, %8130 ]
  %8334 = phi float [ %8327, %8161 ], [ 0.000000e+00, %8130 ]
  %8335 = phi float [ %8328, %8161 ], [ 0.000000e+00, %8130 ]
  %8336 = fmul fast float %8333, %8103
  %8337 = fmul fast float %8334, %8105
  %8338 = fmul fast float %8335, %8107
  %8339 = call float @dx.op.dot3.f32(i32 55, float %8330, float %8331, float %8332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8340 = call float @dx.op.dot3.f32(i32 55, float %8336, float %8337, float %8338, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8341 = select i1 %216, float %8339, float %8330
  %8342 = select i1 %216, float %8339, float %8331
  %8343 = select i1 %216, float 1.000000e+00, float %8332
  %8344 = select i1 %216, float %8340, float %8336
  %8345 = select i1 %216, float 0.000000e+00, float %8337
  %8346 = select i1 %216, float 0.000000e+00, float %8338
  %8347 = fmul fast float %8341, %8120
  %8348 = fmul fast float %8342, %8121
  %8349 = fmul fast float %8343, %8122
  %8350 = fadd fast float %8347, %8344
  %8351 = fadd fast float %8348, %8345
  %8352 = fadd fast float %8346, %8349
  %8353 = fmul fast float %8341, %8096
  %8354 = fmul fast float %8342, %8097
  %8355 = fmul fast float %8343, %8098
  %8356 = fmul fast float %124, %8132
  %8357 = fmul fast float %126, %8133
  %8358 = fsub fast float 1.000000e+00, %8356
  %8359 = fsub fast float 1.000000e+00, %8357
  %8360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8361 = extractvalue %dx.types.CBufRet.f32 %8360, 0
  %8362 = extractvalue %dx.types.CBufRet.f32 %8360, 1
  %8363 = extractvalue %dx.types.CBufRet.f32 %8360, 2
  %8364 = fmul fast float %8358, %8361
  %8365 = fmul fast float %8358, %8362
  %8366 = fmul fast float %8358, %8363
  %8367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8368 = extractvalue %dx.types.CBufRet.f32 %8367, 0
  %8369 = extractvalue %dx.types.CBufRet.f32 %8367, 1
  %8370 = extractvalue %dx.types.CBufRet.f32 %8367, 2
  %8371 = fmul fast float %8359, %8368
  %8372 = fmul fast float %8359, %8369
  %8373 = fmul fast float %8359, %8370
  %8374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8375 = extractvalue %dx.types.CBufRet.f32 %8374, 0
  %8376 = extractvalue %dx.types.CBufRet.f32 %8374, 1
  %8377 = extractvalue %dx.types.CBufRet.f32 %8374, 2
  %8378 = fadd fast float %8371, %8375
  %8379 = fadd fast float %8378, %8364
  %8380 = fadd fast float %8372, %8376
  %8381 = fadd fast float %8380, %8365
  %8382 = fadd fast float %8373, %8377
  %8383 = fadd fast float %8382, %8366
  %8384 = fmul fast float %8379, %176
  %8385 = fmul fast float %8381, %176
  %8386 = fmul fast float %8383, %176
  br label %8387

; <label>:8387                                    ; preds = %8329, %8095
  %8388 = phi float [ %8384, %8329 ], [ %154, %8095 ]
  %8389 = phi float [ %8385, %8329 ], [ %155, %8095 ]
  %8390 = phi float [ %8386, %8329 ], [ %156, %8095 ]
  %8391 = phi float [ %176, %8329 ], [ %90, %8095 ]
  %8392 = phi float [ %8350, %8329 ], [ %8120, %8095 ]
  %8393 = phi float [ %8351, %8329 ], [ %8121, %8095 ]
  %8394 = phi float [ %8352, %8329 ], [ %8122, %8095 ]
  %8395 = phi float [ %8353, %8329 ], [ %8096, %8095 ]
  %8396 = phi float [ %8354, %8329 ], [ %8097, %8095 ]
  %8397 = phi float [ %8355, %8329 ], [ %8098, %8095 ]
  %8398 = phi float [ %8330, %8329 ], [ 1.000000e+00, %8095 ]
  br i1 %8129, label %9553, label %8399

; <label>:8399                                    ; preds = %8387
  %8400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8401 = extractvalue %dx.types.CBufRet.f32 %8400, 0
  %8402 = extractvalue %dx.types.CBufRet.f32 %8400, 1
  %8403 = extractvalue %dx.types.CBufRet.f32 %8400, 2
  %8404 = extractvalue %dx.types.CBufRet.f32 %8400, 3
  %8405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8406 = extractvalue %dx.types.CBufRet.f32 %8405, 0
  %8407 = extractvalue %dx.types.CBufRet.f32 %8405, 1
  %8408 = extractvalue %dx.types.CBufRet.f32 %8405, 2
  %8409 = extractvalue %dx.types.CBufRet.f32 %8405, 3
  %8410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8411 = extractvalue %dx.types.CBufRet.f32 %8410, 0
  %8412 = extractvalue %dx.types.CBufRet.f32 %8410, 1
  %8413 = extractvalue %dx.types.CBufRet.f32 %8410, 2
  %8414 = extractvalue %dx.types.CBufRet.f32 %8410, 3
  %8415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8416 = extractvalue %dx.types.CBufRet.f32 %8415, 0
  %8417 = extractvalue %dx.types.CBufRet.f32 %8415, 1
  %8418 = extractvalue %dx.types.CBufRet.f32 %8415, 2
  %8419 = extractvalue %dx.types.CBufRet.f32 %8415, 3
  %8420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8421 = extractvalue %dx.types.CBufRet.f32 %8420, 3
  %8422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8423 = extractvalue %dx.types.CBufRet.f32 %8422, 3
  %8424 = extractvalue %dx.types.CBufRet.f32 %8422, 0
  %8425 = extractvalue %dx.types.CBufRet.f32 %8422, 1
  %8426 = extractvalue %dx.types.CBufRet.f32 %8422, 2
  %8427 = fcmp fast olt float %8426, -5.000000e-01
  %8428 = call float @dx.op.dot3.f32(i32 55, float %8388, float %8389, float %8390, float %8388, float %8389, float %8390)  ; Dot3(ax,ay,az,bx,by,bz)
  %8429 = call float @dx.op.unary.f32(i32 25, float %8428)  ; Rsqrt(value)
  %8430 = fmul fast float %8429, %8428
  %8431 = fmul fast float %8429, %8388
  %8432 = fmul fast float %8429, %8389
  %8433 = fmul fast float %8429, %8390
  %8434 = fadd fast float %8430, %8404
  %8435 = call float @dx.op.dot3.f32(i32 55, float %8431, float %8432, float %8433, float %8401, float %8402, float %8403)  ; Dot3(ax,ay,az,bx,by,bz)
  %8436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8437 = extractvalue %dx.types.CBufRet.i32 %8436, 1
  %8438 = and i32 %8437, 1
  %8439 = icmp ne i32 %8438, 0
  %8440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8441 = extractvalue %dx.types.CBufRet.f32 %8440, 2
  %8442 = fcmp fast ogt float %8441, 0.000000e+00
  %8443 = and i1 %8439, %8442
  br i1 %8443, label %8444, label %8850, !dx.controlflow.hints !122

; <label>:8444                                    ; preds = %8399
  %8445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8446 = extractvalue %dx.types.CBufRet.f32 %8445, 3
  %8447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8448 = extractvalue %dx.types.CBufRet.f32 %8447, 2
  %8449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8450 = extractvalue %dx.types.CBufRet.f32 %8449, 2
  %8451 = fsub fast float %8448, %8450
  %8452 = and i32 %8437, 2
  %8453 = extractvalue %dx.types.CBufRet.i32 %8436, 0
  %8454 = call i32 @dx.op.binary.i32(i32 40, i32 %8453, i32 3)  ; UMin(a,b)
  %8455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8456 = extractvalue %dx.types.CBufRet.f32 %8455, 0
  %8457 = extractvalue %dx.types.CBufRet.f32 %8455, 1
  %8458 = extractvalue %dx.types.CBufRet.f32 %8449, 0
  %8459 = extractvalue %dx.types.CBufRet.f32 %8449, 1
  %8460 = fsub fast float %8456, %8458
  %8461 = fsub fast float %8457, %8459
  %8462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8463 = extractvalue %dx.types.CBufRet.f32 %8462, 0
  %8464 = fcmp fast ogt float %8463, 0.000000e+00
  %8465 = fsub fast float -0.000000e+00, %8460
  %8466 = fsub fast float -0.000000e+00, %8461
  %8467 = call float @dx.op.dot2.f32(i32 54, float %8431, float %8432, float %8431, float %8432)  ; Dot2(ax,ay,bx,by)
  %8468 = call float @dx.op.dot2.f32(i32 54, float %8431, float %8432, float %8465, float %8466)  ; Dot2(ax,ay,bx,by)
  %8469 = fmul fast float %8468, 2.000000e+00
  %8470 = call float @dx.op.dot2.f32(i32 54, float %8465, float %8466, float %8465, float %8466)  ; Dot2(ax,ay,bx,by)
  %8471 = fmul fast float %8463, %8463
  %8472 = fsub fast float %8470, %8471
  %8473 = fmul fast float %8469, %8469
  %8474 = fmul fast float %8467, 4.000000e+00
  %8475 = fmul fast float %8474, %8472
  %8476 = fsub fast float %8473, %8475
  %8477 = fcmp fast ogt float %8476, 0.000000e+00
  br i1 %8477, label %8478, label %8493

; <label>:8478                                    ; preds = %8444
  %8479 = fcmp fast ogt float %8469, 0.000000e+00
  %8480 = call float @dx.op.unary.f32(i32 24, float %8476)  ; Sqrt(value)
  %8481 = fsub fast float -0.000000e+00, %8480
  %8482 = select i1 %8479, float %8480, float %8481
  %8483 = fadd fast float %8482, %8469
  %8484 = fmul float %8483, -5.000000e-01
  %8485 = fdiv fast float %8484, %8467
  %8486 = call float @dx.op.binary.f32(i32 35, float %8485, float 0.000000e+00)  ; FMax(a,b)
  %8487 = call float @dx.op.binary.f32(i32 36, float %8430, float %8486)  ; FMin(a,b)
  %8488 = fdiv fast float %8472, %8484
  %8489 = call float @dx.op.binary.f32(i32 35, float %8488, float 0.000000e+00)  ; FMax(a,b)
  %8490 = call float @dx.op.binary.f32(i32 36, float %8430, float %8489)  ; FMin(a,b)
  %8491 = call float @dx.op.binary.f32(i32 36, float %8487, float %8490)  ; FMin(a,b)
  %8492 = call float @dx.op.binary.f32(i32 35, float %8487, float %8490)  ; FMax(a,b)
  br label %8493

; <label>:8493                                    ; preds = %8478, %8444
  %8494 = phi float [ %8492, %8478 ], [ -1.000000e+00, %8444 ]
  %8495 = phi float [ %8491, %8478 ], [ -1.000000e+00, %8444 ]
  %8496 = phi i1 [ true, %8478 ], [ false, %8444 ]
  %8497 = and i1 %8464, %8496
  br i1 %8497, label %8498, label %8500

; <label>:8498                                    ; preds = %8493
  %8499 = fcmp fast oeq float %8495, %8494
  br i1 %8499, label %8803, label %8501

; <label>:8500                                    ; preds = %8493
  br i1 %8464, label %8803, label %8501

; <label>:8501                                    ; preds = %8500, %8498
  %8502 = phi float [ %8430, %8500 ], [ %8494, %8498 ]
  %8503 = phi float [ 0.000000e+00, %8500 ], [ %8495, %8498 ]
  %8504 = icmp ne i32 %8452, 0
  %8505 = fmul fast float %8502, %8433
  %8506 = fadd fast float %8505, %8446
  %8507 = fmul fast float %8506, %8502
  %8508 = select i1 %8504, float 0.000000e+00, float %8507
  %8509 = fcmp fast oeq float %8433, 0.000000e+00
  %8510 = fdiv fast float %8451, %8433
  %8511 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8510)  ; FMax(a,b)
  %8512 = select i1 %8509, float %8502, float %8511
  %8513 = call float @dx.op.binary.f32(i32 36, float %8502, float %8512)  ; FMin(a,b)
  %8514 = fcmp fast ogt float %8433, 0.000000e+00
  %8515 = fcmp fast olt float %8451, 0.000000e+00
  br i1 %8514, label %8516, label %8573

; <label>:8516                                    ; preds = %8501
  %8517 = icmp eq i32 %8452, 0
  br i1 %8515, label %8518, label %8562

; <label>:8518                                    ; preds = %8516
  %8519 = select i1 %8517, float %8502, float 0.000000e+00
  %8520 = fsub fast float -0.000000e+00, %8519
  %8521 = call float @dx.op.unary.f32(i32 6, float %8520)  ; FAbs(value)
  %8522 = fmul fast float %8519, %8433
  %8523 = fadd fast float %8522, %8446
  %8524 = fmul fast float %8521, %8523
  %8525 = fsub fast float %8508, %8524
  %8526 = fsub fast float %8502, %8521
  %8527 = select i1 %8517, float %8526, float 0.000000e+00
  %8528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8529 = extractvalue %dx.types.CBufRet.f32 %8528, 0
  %8530 = extractvalue %dx.types.CBufRet.f32 %8528, 1
  %8531 = extractvalue %dx.types.CBufRet.f32 %8528, 2
  %8532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8533 = extractvalue %dx.types.CBufRet.f32 %8532, 0
  %8534 = extractvalue %dx.types.CBufRet.f32 %8532, 1
  %8535 = extractvalue %dx.types.CBufRet.f32 %8532, 2
  %8536 = extractvalue %dx.types.CBufRet.f32 %8532, 3
  %8537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8538 = extractvalue %dx.types.CBufRet.f32 %8537, 3
  %8539 = call float @dx.op.binary.f32(i32 36, float %8525, float %8538)  ; FMin(a,b)
  %8540 = fmul fast float %8536, %8527
  %8541 = call float @dx.op.unary.f32(i32 7, float %8540)  ; Saturate(value)
  %8542 = fsub fast float %8533, %8529
  %8543 = fsub fast float %8534, %8530
  %8544 = fsub fast float %8535, %8531
  %8545 = fmul fast float %8541, %8542
  %8546 = fmul fast float %8541, %8543
  %8547 = fmul fast float %8541, %8544
  %8548 = fadd fast float %8545, %8529
  %8549 = fadd fast float %8546, %8530
  %8550 = fadd fast float %8547, %8531
  %8551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8552 = extractvalue %dx.types.CBufRet.f32 %8551, 0
  %8553 = extractvalue %dx.types.CBufRet.f32 %8551, 1
  %8554 = fadd fast float %8553, %8552
  %8555 = call float @dx.op.unary.f32(i32 7, float %8554)  ; Saturate(value)
  %8556 = extractvalue %dx.types.CBufRet.f32 %8551, 2
  %8557 = extractvalue %dx.types.CBufRet.f32 %8551, 3
  %8558 = fadd fast float %8557, %8556
  %8559 = call float @dx.op.unary.f32(i32 7, float %8558)  ; Saturate(value)
  %8560 = fmul fast float %8555, %8539
  %8561 = fmul fast float %8560, %8559
  br label %8803

; <label>:8562                                    ; preds = %8516
  br i1 %8517, label %8563, label %8584

; <label>:8563                                    ; preds = %8562
  %8564 = call float @dx.op.binary.f32(i32 36, float %8513, float %8503)  ; FMin(a,b)
  %8565 = fsub fast float %8513, %8564
  %8566 = fsub fast float %8565, %8502
  %8567 = call float @dx.op.unary.f32(i32 6, float %8566)  ; FAbs(value)
  %8568 = fadd fast float %8565, %8502
  %8569 = fmul fast float %8568, %8433
  %8570 = fadd fast float %8569, %8446
  %8571 = fmul fast float %8570, %8567
  %8572 = fsub fast float %8508, %8571
  br label %8584

; <label>:8573                                    ; preds = %8501
  br i1 %8515, label %8574, label %8584

; <label>:8574                                    ; preds = %8573
  %8575 = call float @dx.op.binary.f32(i32 35, float %8503, float %8513)  ; FMax(a,b)
  %8576 = icmp eq i32 %8452, 0
  %8577 = select i1 %8576, float %8513, float 0.000000e+00
  %8578 = fsub fast float -0.000000e+00, %8577
  %8579 = call float @dx.op.unary.f32(i32 6, float %8578)  ; FAbs(value)
  %8580 = fmul fast float %8577, %8433
  %8581 = fadd fast float %8580, %8446
  %8582 = fmul fast float %8579, %8581
  %8583 = fsub fast float %8508, %8582
  br label %8584

; <label>:8584                                    ; preds = %8574, %8573, %8563, %8562
  %8585 = phi float [ %8503, %8562 ], [ %8503, %8563 ], [ %8575, %8574 ], [ %8503, %8573 ]
  %8586 = phi float [ 0.000000e+00, %8562 ], [ %8567, %8563 ], [ %8579, %8574 ], [ 0.000000e+00, %8573 ]
  %8587 = phi float [ %8508, %8562 ], [ %8572, %8563 ], [ %8583, %8574 ], [ %8508, %8573 ]
  %8588 = phi float [ %8513, %8562 ], [ %8513, %8563 ], [ %8502, %8574 ], [ %8502, %8573 ]
  %8589 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %8589, align 4, !tbaa !123, !noalias !125
  %8590 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %8590, align 4, !tbaa !123, !noalias !125
  %8591 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %8591, align 4, !tbaa !123, !noalias !125
  %8592 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %8592, align 4, !tbaa !123, !noalias !125
  %8593 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %8593, align 4, !tbaa !123, !noalias !125
  %8594 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %8594, align 4, !tbaa !123, !noalias !125
  %8595 = icmp sgt i32 %8454, 0
  br i1 %8595, label %8596, label %8657

; <label>:8596                                    ; preds = %8584
  br label %8597

; <label>:8597                                    ; preds = %8646, %8596
  %8598 = phi i32 [ %8647, %8646 ], [ 0, %8596 ]
  %8599 = phi i32 [ %8648, %8646 ], [ 0, %8596 ]
  %8600 = add nuw i32 %8599, 171
  %8601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %8600)  ; CBufferLoadLegacy(handle,regIndex)
  %8602 = extractvalue %dx.types.CBufRet.f32 %8601, 0
  %8603 = extractvalue %dx.types.CBufRet.f32 %8601, 1
  %8604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8605 = extractvalue %dx.types.CBufRet.f32 %8604, 0
  %8606 = extractvalue %dx.types.CBufRet.f32 %8604, 1
  %8607 = fsub fast float %8602, %8605
  %8608 = fsub fast float %8603, %8606
  %8609 = extractvalue %dx.types.CBufRet.f32 %8601, 2
  %8610 = fsub fast float -0.000000e+00, %8607
  %8611 = fsub fast float -0.000000e+00, %8608
  %8612 = call float @dx.op.dot2.f32(i32 54, float %8431, float %8432, float %8610, float %8611)  ; Dot2(ax,ay,bx,by)
  %8613 = fmul fast float %8612, 2.000000e+00
  %8614 = call float @dx.op.dot2.f32(i32 54, float %8610, float %8611, float %8610, float %8611)  ; Dot2(ax,ay,bx,by)
  %8615 = fmul fast float %8609, %8609
  %8616 = fsub fast float %8614, %8615
  %8617 = fmul fast float %8613, %8613
  %8618 = fmul fast float %8474, %8616
  %8619 = fsub fast float %8617, %8618
  %8620 = fcmp fast ogt float %8619, 0.000000e+00
  br i1 %8620, label %8621, label %8636

; <label>:8621                                    ; preds = %8597
  %8622 = fcmp fast ogt float %8613, 0.000000e+00
  %8623 = call float @dx.op.unary.f32(i32 24, float %8619)  ; Sqrt(value)
  %8624 = fsub fast float -0.000000e+00, %8623
  %8625 = select i1 %8622, float %8623, float %8624
  %8626 = fadd fast float %8625, %8613
  %8627 = fmul float %8626, -5.000000e-01
  %8628 = fdiv fast float %8627, %8467
  %8629 = call float @dx.op.binary.f32(i32 35, float %8628, float 0.000000e+00)  ; FMax(a,b)
  %8630 = call float @dx.op.binary.f32(i32 36, float %8502, float %8629)  ; FMin(a,b)
  %8631 = fdiv fast float %8616, %8627
  %8632 = call float @dx.op.binary.f32(i32 35, float %8631, float 0.000000e+00)  ; FMax(a,b)
  %8633 = call float @dx.op.binary.f32(i32 36, float %8502, float %8632)  ; FMin(a,b)
  %8634 = call float @dx.op.binary.f32(i32 36, float %8630, float %8633)  ; FMin(a,b)
  %8635 = call float @dx.op.binary.f32(i32 35, float %8630, float %8633)  ; FMax(a,b)
  br label %8636

; <label>:8636                                    ; preds = %8621, %8597
  %8637 = phi float [ %8635, %8621 ], [ -1.000000e+00, %8597 ]
  %8638 = phi float [ %8634, %8621 ], [ -1.000000e+00, %8597 ]
  %8639 = phi i1 [ true, %8621 ], [ false, %8597 ]
  br i1 %8639, label %8640, label %8646

; <label>:8640                                    ; preds = %8636
  %8641 = call float @dx.op.binary.f32(i32 35, float %8585, float %8638)  ; FMax(a,b)
  %8642 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8599
  store float %8641, float* %8642, align 4, !tbaa !123, !noalias !125
  %8643 = call float @dx.op.binary.f32(i32 35, float %8585, float %8637)  ; FMax(a,b)
  %8644 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8599
  store float %8643, float* %8644, align 4, !tbaa !123, !noalias !125
  %8645 = add nsw i32 %8598, 1
  br label %8646

; <label>:8646                                    ; preds = %8640, %8636
  %8647 = phi i32 [ %8645, %8640 ], [ %8598, %8636 ]
  %8648 = add nuw nsw i32 %8599, 1
  %8649 = icmp eq i32 %8648, %8454
  br i1 %8649, label %8650, label %8597

; <label>:8650                                    ; preds = %8646
  %8651 = load float, float* %8591, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %8652 = load float, float* %8590, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  %8653 = load float, float* %8589, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  %8654 = load float, float* %8594, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %8655 = load float, float* %8593, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  %8656 = load float, float* %8592, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  br label %8657

; <label>:8657                                    ; preds = %8650, %8584
  %8658 = phi float [ -1.000000e+00, %8584 ], [ %8656, %8650 ]
  %8659 = phi float [ -1.000000e+00, %8584 ], [ %8655, %8650 ]
  %8660 = phi float [ -1.000000e+00, %8584 ], [ %8654, %8650 ]
  %8661 = phi float [ -1.000000e+00, %8584 ], [ %8653, %8650 ]
  %8662 = phi float [ -1.000000e+00, %8584 ], [ %8652, %8650 ]
  %8663 = phi float [ -1.000000e+00, %8584 ], [ %8651, %8650 ]
  %8664 = phi i32 [ 0, %8584 ], [ %8647, %8650 ]
  %8665 = call float @dx.op.binary.f32(i32 36, float %8662, float %8663)  ; FMin(a,b)
  %8666 = call float @dx.op.binary.f32(i32 36, float %8661, float %8665)  ; FMin(a,b)
  %8667 = call float @dx.op.binary.f32(i32 35, float %8661, float %8662)  ; FMax(a,b)
  %8668 = call float @dx.op.binary.f32(i32 36, float %8667, float %8663)  ; FMin(a,b)
  %8669 = call float @dx.op.binary.f32(i32 36, float %8661, float %8662)  ; FMin(a,b)
  %8670 = call float @dx.op.binary.f32(i32 35, float %8669, float %8668)  ; FMax(a,b)
  %8671 = call float @dx.op.binary.f32(i32 35, float %8662, float %8663)  ; FMax(a,b)
  %8672 = call float @dx.op.binary.f32(i32 35, float %8661, float %8671)  ; FMax(a,b)
  store float %8666, float* %8589, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  store float %8670, float* %8590, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  store float %8672, float* %8591, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %8673 = call float @dx.op.binary.f32(i32 36, float %8659, float %8660)  ; FMin(a,b)
  %8674 = call float @dx.op.binary.f32(i32 36, float %8658, float %8673)  ; FMin(a,b)
  %8675 = call float @dx.op.binary.f32(i32 35, float %8658, float %8659)  ; FMax(a,b)
  %8676 = call float @dx.op.binary.f32(i32 36, float %8675, float %8660)  ; FMin(a,b)
  %8677 = call float @dx.op.binary.f32(i32 36, float %8658, float %8659)  ; FMin(a,b)
  %8678 = call float @dx.op.binary.f32(i32 35, float %8677, float %8676)  ; FMax(a,b)
  %8679 = call float @dx.op.binary.f32(i32 35, float %8659, float %8660)  ; FMax(a,b)
  %8680 = call float @dx.op.binary.f32(i32 35, float %8658, float %8679)  ; FMax(a,b)
  store float %8674, float* %8592, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  store float %8678, float* %8593, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  store float %8680, float* %8594, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %8681 = sub nsw i32 3, %8664
  %8682 = icmp sgt i32 %8681, 2
  br i1 %8682, label %8683, label %8721

; <label>:8683                                    ; preds = %8657
  %8684 = icmp eq i32 %8452, 0
  %8685 = fsub fast float %8502, %8586
  %8686 = select i1 %8684, float %8685, float %8586
  %8687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8688 = extractvalue %dx.types.CBufRet.f32 %8687, 0
  %8689 = extractvalue %dx.types.CBufRet.f32 %8687, 1
  %8690 = extractvalue %dx.types.CBufRet.f32 %8687, 2
  %8691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8692 = extractvalue %dx.types.CBufRet.f32 %8691, 0
  %8693 = extractvalue %dx.types.CBufRet.f32 %8691, 1
  %8694 = extractvalue %dx.types.CBufRet.f32 %8691, 2
  %8695 = extractvalue %dx.types.CBufRet.f32 %8691, 3
  %8696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8697 = extractvalue %dx.types.CBufRet.f32 %8696, 3
  %8698 = call float @dx.op.binary.f32(i32 36, float %8587, float %8697)  ; FMin(a,b)
  %8699 = fmul fast float %8695, %8686
  %8700 = call float @dx.op.unary.f32(i32 7, float %8699)  ; Saturate(value)
  %8701 = fsub fast float %8692, %8688
  %8702 = fsub fast float %8693, %8689
  %8703 = fsub fast float %8694, %8690
  %8704 = fmul fast float %8700, %8701
  %8705 = fmul fast float %8700, %8702
  %8706 = fmul fast float %8700, %8703
  %8707 = fadd fast float %8704, %8688
  %8708 = fadd fast float %8705, %8689
  %8709 = fadd fast float %8706, %8690
  %8710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8711 = extractvalue %dx.types.CBufRet.f32 %8710, 0
  %8712 = extractvalue %dx.types.CBufRet.f32 %8710, 1
  %8713 = fadd fast float %8712, %8711
  %8714 = call float @dx.op.unary.f32(i32 7, float %8713)  ; Saturate(value)
  %8715 = extractvalue %dx.types.CBufRet.f32 %8710, 2
  %8716 = extractvalue %dx.types.CBufRet.f32 %8710, 3
  %8717 = fadd fast float %8716, %8715
  %8718 = call float @dx.op.unary.f32(i32 7, float %8717)  ; Saturate(value)
  %8719 = fmul fast float %8714, %8698
  %8720 = fmul fast float %8719, %8718
  br label %8803

; <label>:8721                                    ; preds = %8657
  %8722 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8681
  %8723 = load float, float* %8722, align 4, !tbaa !123, !noalias !125
  %8724 = fcmp fast olt float %8723, %8588
  %8725 = icmp sgt i32 %8664, 0
  %8726 = and i1 %8725, %8724
  br i1 %8726, label %8727, label %8764

; <label>:8727                                    ; preds = %8721
  br label %8728

; <label>:8728                                    ; preds = %8757, %8727
  %8729 = phi float [ %8758, %8757 ], [ %8586, %8727 ]
  %8730 = phi float [ %8759, %8757 ], [ %8587, %8727 ]
  %8731 = phi float [ %8739, %8757 ], [ %8723, %8727 ]
  %8732 = phi i32 [ %8736, %8757 ], [ %8681, %8727 ]
  %8733 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8732
  %8734 = load float, float* %8733, align 4, !tbaa !123, !noalias !125
  %8735 = icmp slt i32 %8732, 2
  %8736 = add nsw i32 %8732, 1
  %8737 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8736
  %8738 = load float, float* %8737, align 4, !tbaa !123, !noalias !125
  %8739 = select i1 %8735, float %8738, float %8502
  %8740 = call float @dx.op.binary.f32(i32 36, float %8739, float %8734)  ; FMin(a,b)
  %8741 = call float @dx.op.binary.f32(i32 36, float %8588, float %8740)  ; FMin(a,b)
  %8742 = icmp eq i32 %8452, 0
  %8743 = fadd fast float %8741, %8731
  %8744 = fmul fast float %8743, %8433
  %8745 = fadd fast float %8744, %8446
  br i1 %8742, label %8751, label %8746

; <label>:8746                                    ; preds = %8728
  %8747 = fsub fast float %8741, %8731
  %8748 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8747)  ; FMax(a,b)
  %8749 = fmul fast float %8748, %8745
  %8750 = fadd fast float %8749, %8730
  br label %8757

; <label>:8751                                    ; preds = %8728
  %8752 = fsub fast float %8731, %8741
  %8753 = call float @dx.op.unary.f32(i32 6, float %8752)  ; FAbs(value)
  %8754 = fadd fast float %8753, %8729
  %8755 = fmul fast float %8753, %8745
  %8756 = fsub fast float %8730, %8755
  br label %8757

; <label>:8757                                    ; preds = %8751, %8746
  %8758 = phi float [ %8748, %8746 ], [ %8754, %8751 ]
  %8759 = phi float [ %8750, %8746 ], [ %8756, %8751 ]
  %8760 = fcmp fast olt float %8739, %8588
  %8761 = icmp slt i32 %8736, 3
  %8762 = and i1 %8761, %8760
  br i1 %8762, label %8728, label %8763

; <label>:8763                                    ; preds = %8757
  br label %8764

; <label>:8764                                    ; preds = %8763, %8721
  %8765 = phi float [ %8586, %8721 ], [ %8758, %8763 ]
  %8766 = phi float [ %8587, %8721 ], [ %8759, %8763 ]
  %8767 = fsub fast float %8502, %8765
  %8768 = select i1 %8504, float %8765, float %8767
  %8769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8770 = extractvalue %dx.types.CBufRet.f32 %8769, 0
  %8771 = extractvalue %dx.types.CBufRet.f32 %8769, 1
  %8772 = extractvalue %dx.types.CBufRet.f32 %8769, 2
  %8773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8774 = extractvalue %dx.types.CBufRet.f32 %8773, 0
  %8775 = extractvalue %dx.types.CBufRet.f32 %8773, 1
  %8776 = extractvalue %dx.types.CBufRet.f32 %8773, 2
  %8777 = extractvalue %dx.types.CBufRet.f32 %8773, 3
  %8778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8779 = extractvalue %dx.types.CBufRet.f32 %8778, 3
  %8780 = call float @dx.op.binary.f32(i32 36, float %8766, float %8779)  ; FMin(a,b)
  %8781 = fmul fast float %8777, %8768
  %8782 = call float @dx.op.unary.f32(i32 7, float %8781)  ; Saturate(value)
  %8783 = fsub fast float %8774, %8770
  %8784 = fsub fast float %8775, %8771
  %8785 = fsub fast float %8776, %8772
  %8786 = fmul fast float %8782, %8783
  %8787 = fmul fast float %8782, %8784
  %8788 = fmul fast float %8782, %8785
  %8789 = fadd fast float %8786, %8770
  %8790 = fadd fast float %8787, %8771
  %8791 = fadd fast float %8788, %8772
  %8792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8793 = extractvalue %dx.types.CBufRet.f32 %8792, 0
  %8794 = extractvalue %dx.types.CBufRet.f32 %8792, 1
  %8795 = fadd fast float %8794, %8793
  %8796 = call float @dx.op.unary.f32(i32 7, float %8795)  ; Saturate(value)
  %8797 = extractvalue %dx.types.CBufRet.f32 %8792, 2
  %8798 = extractvalue %dx.types.CBufRet.f32 %8792, 3
  %8799 = fadd fast float %8798, %8797
  %8800 = call float @dx.op.unary.f32(i32 7, float %8799)  ; Saturate(value)
  %8801 = fmul fast float %8796, %8780
  %8802 = fmul fast float %8801, %8800
  br label %8803

; <label>:8803                                    ; preds = %8764, %8683, %8518, %8500, %8498
  %8804 = phi float [ %8527, %8518 ], [ %8686, %8683 ], [ %8768, %8764 ], [ 0.000000e+00, %8498 ], [ 0.000000e+00, %8500 ]
  %8805 = phi float [ %8561, %8518 ], [ %8720, %8683 ], [ %8802, %8764 ], [ 0.000000e+00, %8498 ], [ 0.000000e+00, %8500 ]
  %8806 = phi float [ %8548, %8518 ], [ %8707, %8683 ], [ %8789, %8764 ], [ 0.000000e+00, %8498 ], [ 0.000000e+00, %8500 ]
  %8807 = phi float [ %8549, %8518 ], [ %8708, %8683 ], [ %8790, %8764 ], [ 0.000000e+00, %8498 ], [ 0.000000e+00, %8500 ]
  %8808 = phi float [ %8550, %8518 ], [ %8709, %8683 ], [ %8791, %8764 ], [ 0.000000e+00, %8498 ], [ 0.000000e+00, %8500 ]
  %8809 = fmul fast float %8441, %8805
  %8810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8811 = extractvalue %dx.types.CBufRet.f32 %8810, 2
  %8812 = fsub fast float %8448, %8811
  %8813 = fcmp fast olt float %8809, -2.000000e+01
  %8814 = call float @dx.op.unary.f32(i32 21, float %8809)  ; Exp(value)
  %8815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8816 = extractvalue %dx.types.CBufRet.f32 %8815, 2
  %8817 = extractvalue %dx.types.CBufRet.f32 %8815, 3
  %8818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8819 = extractvalue %dx.types.CBufRet.f32 %8818, 2
  %8820 = fmul fast float %8817, %8812
  %8821 = call float @dx.op.unary.f32(i32 7, float %8820)  ; Saturate(value)
  %8822 = fsub fast float 1.000000e+00, %8821
  %8823 = fmul fast float %8433, 5.000000e-01
  %8824 = fadd fast float %8823, 5.000000e-01
  %8825 = call float @dx.op.unary.f32(i32 7, float %8824)  ; Saturate(value)
  %8826 = fsub fast float 1.000000e+00, %8825
  %8827 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8822)  ; FMax(a,b)
  %8828 = fdiv fast float %8826, %8827
  %8829 = fsub fast float %8812, %8390
  %8830 = call float @dx.op.unary.f32(i32 6, float %8829)  ; FAbs(value)
  %8831 = fmul fast float %8830, %8816
  %8832 = call float @dx.op.unary.f32(i32 7, float %8828)  ; Saturate(value)
  %8833 = fsub fast float 1.000000e+00, %8831
  %8834 = fmul fast float %8833, %8832
  %8835 = fadd fast float %8834, %8831
  %8836 = fmul fast float %8819, %8812
  %8837 = call float @dx.op.unary.f32(i32 7, float %8836)  ; Saturate(value)
  %8838 = fsub fast float 1.000000e+00, %8835
  %8839 = fmul fast float %8838, %8837
  %8840 = fadd fast float %8839, %8835
  %8841 = call float @dx.op.unary.f32(i32 7, float %8840)  ; Saturate(value)
  %8842 = fadd fast float %8814, -1.000000e+00
  %8843 = select i1 %8813, float -1.000000e+00, float %8842
  %8844 = fmul fast float %8841, %8843
  %8845 = fadd fast float %8844, 1.000000e+00
  %8846 = fsub fast float -0.000000e+00, %8844
  %8847 = fmul fast float %8806, %8846
  %8848 = fmul fast float %8807, %8846
  %8849 = fmul fast float %8808, %8846
  br label %8850

; <label>:8850                                    ; preds = %8803, %8399
  %8851 = phi float [ %8804, %8803 ], [ 0.000000e+00, %8399 ]
  %8852 = phi float [ %8845, %8803 ], [ 1.000000e+00, %8399 ]
  %8853 = phi float [ %8847, %8803 ], [ 0.000000e+00, %8399 ]
  %8854 = phi float [ %8848, %8803 ], [ 0.000000e+00, %8399 ]
  %8855 = phi float [ %8849, %8803 ], [ 0.000000e+00, %8399 ]
  %8856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8857 = extractvalue %dx.types.CBufRet.f32 %8856, 1
  %8858 = fsub fast float 1.000000e+00, %8852
  %8859 = fmul fast float %8858, %8434
  %8860 = fmul fast float %8859, %8857
  %8861 = fsub fast float %8434, %8860
  br i1 %8427, label %8862, label %8891, !dx.controlflow.hints !161

; <label>:8862                                    ; preds = %8850
  %8863 = fmul fast float %8435, %8424
  %8864 = fadd fast float %8863, %8425
  %8865 = call float @dx.op.unary.f32(i32 7, float %8864)  ; Saturate(value)
  %8866 = fmul fast float %8406, %8861
  %8867 = fsub fast float -0.000000e+00, %8866
  %8868 = fmul fast float %8407, %8861
  %8869 = fsub fast float -0.000000e+00, %8868
  %8870 = call float @dx.op.unary.f32(i32 21, float %8867)  ; Exp(value)
  %8871 = call float @dx.op.unary.f32(i32 21, float %8869)  ; Exp(value)
  %8872 = call float @dx.op.binary.f32(i32 35, float %8414, float %8870)  ; FMax(a,b)
  %8873 = call float @dx.op.binary.f32(i32 35, float %8414, float %8871)  ; FMax(a,b)
  %8874 = fsub fast float %8873, %8872
  %8875 = fmul fast float %8874, %8865
  %8876 = fadd fast float %8875, %8872
  %8877 = call float @dx.op.unary.f32(i32 7, float %8876)  ; Saturate(value)
  %8878 = fsub fast float %8411, %8416
  %8879 = fsub fast float %8412, %8417
  %8880 = fsub fast float %8413, %8418
  %8881 = fmul fast float %8865, %8878
  %8882 = fmul fast float %8865, %8879
  %8883 = fmul fast float %8865, %8880
  %8884 = fadd fast float %8881, %8416
  %8885 = fadd fast float %8882, %8417
  %8886 = fadd fast float %8883, %8418
  %8887 = fsub fast float 1.000000e+00, %8877
  %8888 = fmul fast float %8887, %8884
  %8889 = fmul fast float %8887, %8885
  %8890 = fmul fast float %8887, %8886
  br label %8950

; <label>:8891                                    ; preds = %8850
  %8892 = fmul fast float %8861, %8423
  %8893 = call float @dx.op.unary.f32(i32 7, float %8892)  ; Saturate(value)
  %8894 = fsub fast float 2.000000e+00, %8893
  %8895 = fmul fast float %8893, 9.921875e-01
  %8896 = fmul fast float %8895, %8894
  %8897 = fadd fast float %8896, 3.906250e-03
  %8898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %8897, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8899 = extractvalue %dx.types.ResRet.f32 %8898, 0
  %8900 = fsub fast float %8893, %8899
  %8901 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8900)  ; FMax(a,b)
  %8902 = fmul fast float %8409, %8390
  %8903 = call float @dx.op.unary.f32(i32 6, float %8902)  ; FAbs(value)
  %8904 = fcmp fast ogt float %8903, 0x3EB0C6F7A0000000
  br i1 %8904, label %8905, label %8911, !dx.controlflow.hints !162

; <label>:8905                                    ; preds = %8891
  %8906 = fmul fast float %8902, 0xBFF7154760000000
  %8907 = call float @dx.op.unary.f32(i32 21, float %8906)  ; Exp(value)
  %8908 = fsub fast float 1.000000e+00, %8907
  %8909 = fdiv fast float %8908, %8902
  %8910 = fmul fast float %8909, %8419
  br label %8911

; <label>:8911                                    ; preds = %8905, %8891
  %8912 = phi float [ %8910, %8905 ], [ %8419, %8891 ]
  %8913 = fadd fast float %8912, %8421
  %8914 = fmul fast float %8913, %8901
  %8915 = fmul fast float %8406, %8914
  %8916 = fsub fast float -0.000000e+00, %8915
  %8917 = fmul fast float %8407, %8914
  %8918 = fsub fast float -0.000000e+00, %8917
  %8919 = fmul fast float %8408, %8914
  %8920 = fsub fast float -0.000000e+00, %8919
  %8921 = call float @dx.op.unary.f32(i32 21, float %8916)  ; Exp(value)
  %8922 = call float @dx.op.unary.f32(i32 21, float %8918)  ; Exp(value)
  %8923 = call float @dx.op.unary.f32(i32 21, float %8920)  ; Exp(value)
  %8924 = fmul fast float %8435, %8435
  %8925 = fadd fast float %8924, 1.000000e+00
  %8926 = fmul fast float %8925, 0x3FAE8EC8A0000000
  %8927 = fmul fast float %8926, %8416
  %8928 = fmul fast float %8926, %8417
  %8929 = fmul fast float %8926, %8418
  %8930 = fmul fast float %8435, %8414
  %8931 = fsub fast float 1.000000e+00, %8930
  %8932 = fmul fast float %8414, %8414
  %8933 = fsub fast float 1.000000e+00, %8932
  %8934 = fmul fast float %8933, 0x3FB45F3060000000
  %8935 = fmul fast float %8931, %8931
  %8936 = fdiv fast float 1.000000e+00, %8935
  %8937 = fmul fast float %8934, %8936
  %8938 = fmul fast float %8937, %8411
  %8939 = fmul fast float %8937, %8412
  %8940 = fmul fast float %8937, %8413
  %8941 = fadd fast float %8938, %8927
  %8942 = fadd fast float %8939, %8928
  %8943 = fadd fast float %8940, %8929
  %8944 = fsub fast float 1.000000e+00, %8921
  %8945 = fsub fast float 1.000000e+00, %8922
  %8946 = fsub fast float 1.000000e+00, %8923
  %8947 = fmul fast float %8941, %8944
  %8948 = fmul fast float %8942, %8945
  %8949 = fmul fast float %8943, %8946
  br label %8950

; <label>:8950                                    ; preds = %8911, %8862
  %8951 = phi float [ %8888, %8862 ], [ %8947, %8911 ]
  %8952 = phi float [ %8889, %8862 ], [ %8948, %8911 ]
  %8953 = phi float [ %8890, %8862 ], [ %8949, %8911 ]
  %8954 = phi float [ %8877, %8862 ], [ %8921, %8911 ]
  %8955 = phi float [ %8877, %8862 ], [ %8922, %8911 ]
  %8956 = phi float [ %8877, %8862 ], [ %8923, %8911 ]
  br i1 %8443, label %8957, label %9155, !dx.controlflow.hints !163

; <label>:8957                                    ; preds = %8950
  %8958 = extractvalue %dx.types.CBufRet.f32 %8856, 0
  %8959 = fmul fast float %8958, %8858
  %8960 = fsub fast float %8853, %8951
  %8961 = fsub fast float %8854, %8952
  %8962 = fsub fast float %8855, %8953
  %8963 = fmul fast float %8959, %8960
  %8964 = fmul fast float %8959, %8961
  %8965 = fmul fast float %8959, %8962
  %8966 = fadd fast float %8963, %8951
  %8967 = fadd fast float %8964, %8952
  %8968 = fadd fast float %8965, %8953
  %8969 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8954)  ; FMax(a,b)
  %8970 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8955)  ; FMax(a,b)
  %8971 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8956)  ; FMax(a,b)
  %8972 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8852)  ; FMax(a,b)
  %8973 = call float @dx.op.binary.f32(i32 35, float %8851, float %8861)  ; FMax(a,b)
  %8974 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8973)  ; FMax(a,b)
  %8975 = fdiv fast float %8851, %8974
  %8976 = call float @dx.op.unary.f32(i32 7, float %8975)  ; Saturate(value)
  %8977 = fdiv fast float %8861, %8974
  %8978 = call float @dx.op.unary.f32(i32 7, float %8977)  ; Saturate(value)
  %8979 = fcmp fast une float %8972, 1.000000e+00
  br i1 %8979, label %8980, label %8993, !dx.controlflow.hints !164

; <label>:8980                                    ; preds = %8957
  %8981 = call float @dx.op.unary.f32(i32 23, float %8972)  ; Log(value)
  %8982 = fmul fast float %8981, 0x3FE62E4300000000
  %8983 = fmul fast float %8853, %8982
  %8984 = fsub fast float -0.000000e+00, %8983
  %8985 = fmul fast float %8854, %8982
  %8986 = fsub fast float -0.000000e+00, %8985
  %8987 = fmul fast float %8855, %8982
  %8988 = fsub fast float -0.000000e+00, %8987
  %8989 = fsub fast float 1.000000e+00, %8972
  %8990 = fdiv fast float %8984, %8989
  %8991 = fdiv fast float %8986, %8989
  %8992 = fdiv fast float %8988, %8989
  br label %8993

; <label>:8993                                    ; preds = %8980, %8957
  %8994 = phi float [ %8990, %8980 ], [ %8853, %8957 ]
  %8995 = phi float [ %8991, %8980 ], [ %8854, %8957 ]
  %8996 = phi float [ %8992, %8980 ], [ %8855, %8957 ]
  %8997 = phi float [ %8982, %8980 ], [ 0.000000e+00, %8957 ]
  %8998 = fcmp fast une float %8969, 1.000000e+00
  br i1 %8998, label %8999, label %9006, !dx.controlflow.hints !165

; <label>:8999                                    ; preds = %8993
  %9000 = call float @dx.op.unary.f32(i32 23, float %8969)  ; Log(value)
  %9001 = fmul fast float %9000, 0x3FE62E4300000000
  %9002 = fmul fast float %8966, %9001
  %9003 = fsub fast float -0.000000e+00, %9002
  %9004 = fsub fast float 1.000000e+00, %8969
  %9005 = fdiv fast float %9003, %9004
  br label %9006

; <label>:9006                                    ; preds = %8999, %8993
  %9007 = phi float [ %9005, %8999 ], [ %8966, %8993 ]
  %9008 = phi float [ %9001, %8999 ], [ 0.000000e+00, %8993 ]
  %9009 = fcmp fast une float %8970, 1.000000e+00
  br i1 %9009, label %9010, label %9017, !dx.controlflow.hints !165

; <label>:9010                                    ; preds = %9006
  %9011 = call float @dx.op.unary.f32(i32 23, float %8970)  ; Log(value)
  %9012 = fmul fast float %9011, 0x3FE62E4300000000
  %9013 = fmul fast float %8967, %9012
  %9014 = fsub fast float -0.000000e+00, %9013
  %9015 = fsub fast float 1.000000e+00, %8970
  %9016 = fdiv fast float %9014, %9015
  br label %9017

; <label>:9017                                    ; preds = %9010, %9006
  %9018 = phi float [ %9016, %9010 ], [ %8967, %9006 ]
  %9019 = phi float [ %9012, %9010 ], [ 0.000000e+00, %9006 ]
  %9020 = fcmp fast une float %8971, 1.000000e+00
  br i1 %9020, label %9021, label %9028, !dx.controlflow.hints !165

; <label>:9021                                    ; preds = %9017
  %9022 = call float @dx.op.unary.f32(i32 23, float %8971)  ; Log(value)
  %9023 = fmul fast float %9022, 0x3FE62E4300000000
  %9024 = fmul fast float %8968, %9023
  %9025 = fsub fast float -0.000000e+00, %9024
  %9026 = fsub fast float 1.000000e+00, %8971
  %9027 = fdiv fast float %9025, %9026
  br label %9028

; <label>:9028                                    ; preds = %9021, %9017
  %9029 = phi float [ %9027, %9021 ], [ %8968, %9017 ]
  %9030 = phi float [ %9023, %9021 ], [ 0.000000e+00, %9017 ]
  %9031 = fmul fast float %8994, %8978
  %9032 = fmul fast float %8995, %8978
  %9033 = fmul fast float %8996, %8978
  %9034 = fmul fast float %8997, %8978
  %9035 = fmul fast float %9007, %8976
  %9036 = fmul fast float %9018, %8976
  %9037 = fmul fast float %9029, %8976
  %9038 = fmul fast float %9008, %8976
  %9039 = fmul fast float %9019, %8976
  %9040 = fmul fast float %9030, %8976
  %9041 = fadd fast float %9035, %9031
  %9042 = fadd fast float %9036, %9032
  %9043 = fadd fast float %9037, %9033
  %9044 = fadd fast float %9038, %9034
  %9045 = fadd fast float %9039, %9034
  %9046 = fadd fast float %9040, %9034
  %9047 = fcmp fast une float %9044, 0.000000e+00
  br i1 %9047, label %9048, label %9055, !dx.controlflow.hints !166

; <label>:9048                                    ; preds = %9028
  %9049 = fmul fast float %9044, 0x3FF7154760000000
  %9050 = call float @dx.op.unary.f32(i32 21, float %9049)  ; Exp(value)
  %9051 = fsub fast float 1.000000e+00, %9050
  %9052 = fmul fast float %9041, %9051
  %9053 = fsub fast float -0.000000e+00, %9052
  %9054 = fdiv fast float %9053, %9044
  br label %9055

; <label>:9055                                    ; preds = %9048, %9028
  %9056 = phi float [ %9050, %9048 ], [ 1.000000e+00, %9028 ]
  %9057 = phi float [ %9054, %9048 ], [ %9041, %9028 ]
  %9058 = fcmp fast une float %9045, 0.000000e+00
  br i1 %9058, label %9059, label %9066, !dx.controlflow.hints !166

; <label>:9059                                    ; preds = %9055
  %9060 = fmul fast float %9045, 0x3FF7154760000000
  %9061 = call float @dx.op.unary.f32(i32 21, float %9060)  ; Exp(value)
  %9062 = fsub fast float 1.000000e+00, %9061
  %9063 = fmul fast float %9042, %9062
  %9064 = fsub fast float -0.000000e+00, %9063
  %9065 = fdiv fast float %9064, %9045
  br label %9066

; <label>:9066                                    ; preds = %9059, %9055
  %9067 = phi float [ %9061, %9059 ], [ 1.000000e+00, %9055 ]
  %9068 = phi float [ %9065, %9059 ], [ %9042, %9055 ]
  %9069 = fcmp fast une float %9046, 0.000000e+00
  br i1 %9069, label %9070, label %9077, !dx.controlflow.hints !166

; <label>:9070                                    ; preds = %9066
  %9071 = fmul fast float %9046, 0x3FF7154760000000
  %9072 = call float @dx.op.unary.f32(i32 21, float %9071)  ; Exp(value)
  %9073 = fsub fast float 1.000000e+00, %9072
  %9074 = fmul fast float %9043, %9073
  %9075 = fsub fast float -0.000000e+00, %9074
  %9076 = fdiv fast float %9075, %9046
  br label %9077

; <label>:9077                                    ; preds = %9070, %9066
  %9078 = phi float [ %9072, %9070 ], [ 1.000000e+00, %9066 ]
  %9079 = phi float [ %9076, %9070 ], [ %9043, %9066 ]
  %9080 = fcmp fast ogt float %8976, %8978
  br i1 %9080, label %9081, label %9101

; <label>:9081                                    ; preds = %9077
  %9082 = fsub fast float 1.000000e+00, %8978
  %9083 = fmul fast float %8994, %9082
  %9084 = fmul fast float %8995, %9082
  %9085 = fmul fast float %8996, %9082
  %9086 = fmul fast float %8997, %9082
  %9087 = fcmp fast une float %9086, 0.000000e+00
  br i1 %9087, label %9088, label %9139, !dx.controlflow.hints !167

; <label>:9088                                    ; preds = %9081
  %9089 = fmul fast float %9086, 0x3FF7154760000000
  %9090 = call float @dx.op.unary.f32(i32 21, float %9089)  ; Exp(value)
  %9091 = fsub fast float 1.000000e+00, %9090
  %9092 = fmul fast float %9083, %9091
  %9093 = fsub fast float -0.000000e+00, %9092
  %9094 = fmul fast float %9084, %9091
  %9095 = fsub fast float -0.000000e+00, %9094
  %9096 = fmul fast float %9085, %9091
  %9097 = fsub fast float -0.000000e+00, %9096
  %9098 = fdiv fast float %9093, %9086
  %9099 = fdiv fast float %9095, %9086
  %9100 = fdiv fast float %9097, %9086
  br label %9139

; <label>:9101                                    ; preds = %9077
  %9102 = fsub fast float 1.000000e+00, %8976
  %9103 = fmul fast float %9007, %9102
  %9104 = fmul fast float %9018, %9102
  %9105 = fmul fast float %9029, %9102
  %9106 = fmul fast float %9008, %9102
  %9107 = fmul fast float %9019, %9102
  %9108 = fmul fast float %9030, %9102
  %9109 = fcmp fast une float %9106, 0.000000e+00
  br i1 %9109, label %9110, label %9117, !dx.controlflow.hints !166

; <label>:9110                                    ; preds = %9101
  %9111 = fmul fast float %9106, 0x3FF7154760000000
  %9112 = call float @dx.op.unary.f32(i32 21, float %9111)  ; Exp(value)
  %9113 = fsub fast float 1.000000e+00, %9112
  %9114 = fmul fast float %9103, %9113
  %9115 = fsub fast float -0.000000e+00, %9114
  %9116 = fdiv fast float %9115, %9106
  br label %9117

; <label>:9117                                    ; preds = %9110, %9101
  %9118 = phi float [ %9116, %9110 ], [ %9103, %9101 ]
  %9119 = phi float [ %9112, %9110 ], [ 1.000000e+00, %9101 ]
  %9120 = fcmp fast une float %9107, 0.000000e+00
  br i1 %9120, label %9121, label %9128, !dx.controlflow.hints !166

; <label>:9121                                    ; preds = %9117
  %9122 = fmul fast float %9107, 0x3FF7154760000000
  %9123 = call float @dx.op.unary.f32(i32 21, float %9122)  ; Exp(value)
  %9124 = fsub fast float 1.000000e+00, %9123
  %9125 = fmul fast float %9104, %9124
  %9126 = fsub fast float -0.000000e+00, %9125
  %9127 = fdiv fast float %9126, %9107
  br label %9128

; <label>:9128                                    ; preds = %9121, %9117
  %9129 = phi float [ %9127, %9121 ], [ %9104, %9117 ]
  %9130 = phi float [ %9123, %9121 ], [ 1.000000e+00, %9117 ]
  %9131 = fcmp fast une float %9108, 0.000000e+00
  br i1 %9131, label %9132, label %9139, !dx.controlflow.hints !166

; <label>:9132                                    ; preds = %9128
  %9133 = fmul fast float %9108, 0x3FF7154760000000
  %9134 = call float @dx.op.unary.f32(i32 21, float %9133)  ; Exp(value)
  %9135 = fsub fast float 1.000000e+00, %9134
  %9136 = fmul fast float %9105, %9135
  %9137 = fsub fast float -0.000000e+00, %9136
  %9138 = fdiv fast float %9137, %9108
  br label %9139

; <label>:9139                                    ; preds = %9132, %9128, %9088, %9081
  %9140 = phi float [ %9138, %9132 ], [ %9100, %9088 ], [ %9085, %9081 ], [ %9105, %9128 ]
  %9141 = phi float [ %9129, %9132 ], [ %9099, %9088 ], [ %9084, %9081 ], [ %9129, %9128 ]
  %9142 = phi float [ %9118, %9132 ], [ %9098, %9088 ], [ %9083, %9081 ], [ %9118, %9128 ]
  %9143 = phi float [ %9134, %9132 ], [ %9090, %9088 ], [ 1.000000e+00, %9081 ], [ 1.000000e+00, %9128 ]
  %9144 = phi float [ %9130, %9132 ], [ %9090, %9088 ], [ 1.000000e+00, %9081 ], [ %9130, %9128 ]
  %9145 = phi float [ %9119, %9132 ], [ %9090, %9088 ], [ 1.000000e+00, %9081 ], [ %9119, %9128 ]
  %9146 = fmul fast float %9145, %9057
  %9147 = fmul fast float %9144, %9068
  %9148 = fmul fast float %9143, %9079
  %9149 = fadd fast float %9146, %9142
  %9150 = fadd fast float %9147, %9141
  %9151 = fadd fast float %9148, %9140
  %9152 = fmul fast float %9145, %9056
  %9153 = fmul fast float %9144, %9067
  %9154 = fmul fast float %9143, %9078
  br label %9155

; <label>:9155                                    ; preds = %9139, %8950
  %9156 = phi float [ %9154, %9139 ], [ %8956, %8950 ]
  %9157 = phi float [ %9153, %9139 ], [ %8955, %8950 ]
  %9158 = phi float [ %9152, %9139 ], [ %8954, %8950 ]
  %9159 = phi float [ %9151, %9139 ], [ %8953, %8950 ]
  %9160 = phi float [ %9150, %9139 ], [ %8952, %8950 ]
  %9161 = phi float [ %9149, %9139 ], [ %8951, %8950 ]
  %9162 = fmul fast float %9161, %8103
  %9163 = fmul fast float %9160, %8105
  %9164 = fmul fast float %9159, %8107
  %9165 = fmul fast float %9158, %8398
  %9166 = call float @dx.op.dot3.f32(i32 55, float %9158, float %9157, float %9156, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9167 = call float @dx.op.dot3.f32(i32 55, float %9162, float %9163, float %9164, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9168 = select i1 %216, float %9166, float %9158
  %9169 = select i1 %216, float %9166, float %9157
  %9170 = select i1 %216, float 1.000000e+00, float %9156
  %9171 = select i1 %216, float %9167, float %9162
  %9172 = select i1 %216, float 0.000000e+00, float %9163
  %9173 = select i1 %216, float 0.000000e+00, float %9164
  %9174 = fmul fast float %9168, %8392
  %9175 = fmul fast float %9169, %8393
  %9176 = fmul fast float %9170, %8394
  %9177 = fadd fast float %9174, %9171
  %9178 = fadd fast float %9175, %9172
  %9179 = fadd fast float %9173, %9176
  %9180 = fmul fast float %9168, %8395
  %9181 = fmul fast float %9169, %8396
  %9182 = fmul fast float %9170, %8397
  %9183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9184 = extractvalue %dx.types.CBufRet.i32 %9183, 0
  %9185 = icmp eq i32 %9184, 0
  br i1 %9185, label %9553, label %9186, !dx.controlflow.hints !168

; <label>:9186                                    ; preds = %9155
  %9187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9188 = extractvalue %dx.types.CBufRet.f32 %9187, 2
  %9189 = extractvalue %dx.types.CBufRet.f32 %9187, 3
  %9190 = fmul fast float %9188, %99
  %9191 = fmul fast float %9189, %100
  %9192 = fmul fast float %9190, 2.000000e+00
  %9193 = fmul fast float %9191, 2.000000e+00
  %9194 = fsub fast float 1.000000e+00, %9192
  %9195 = fsub fast float 1.000000e+00, %9193
  %9196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9197 = extractvalue %dx.types.CBufRet.f32 %9196, 0
  %9198 = extractvalue %dx.types.CBufRet.f32 %9196, 1
  %9199 = extractvalue %dx.types.CBufRet.f32 %9196, 2
  %9200 = fmul fast float %9194, %9197
  %9201 = fmul fast float %9194, %9198
  %9202 = fmul fast float %9194, %9199
  %9203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9204 = extractvalue %dx.types.CBufRet.f32 %9203, 0
  %9205 = extractvalue %dx.types.CBufRet.f32 %9203, 1
  %9206 = extractvalue %dx.types.CBufRet.f32 %9203, 2
  %9207 = fmul fast float %9195, %9204
  %9208 = fmul fast float %9195, %9205
  %9209 = fmul fast float %9195, %9206
  %9210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9211 = extractvalue %dx.types.CBufRet.f32 %9210, 0
  %9212 = extractvalue %dx.types.CBufRet.f32 %9210, 1
  %9213 = extractvalue %dx.types.CBufRet.f32 %9210, 2
  %9214 = fadd fast float %9207, %9211
  %9215 = fadd fast float %9214, %9200
  %9216 = fadd fast float %9208, %9212
  %9217 = fadd fast float %9216, %9201
  %9218 = fadd fast float %9209, %9213
  %9219 = fadd fast float %9218, %9202
  %9220 = fmul fast float %9215, %8391
  %9221 = fmul fast float %9217, %8391
  %9222 = fmul fast float %9219, %8391
  %9223 = fmul fast float %9220, %9220
  %9224 = fmul fast float %9221, %9221
  %9225 = fadd fast float %9223, %9224
  %9226 = fmul fast float %9222, %9222
  %9227 = fadd fast float %9225, %9226
  %9228 = call float @dx.op.unary.f32(i32 24, float %9227)  ; Sqrt(value)
  %9229 = extractvalue %dx.types.CBufRet.f32 %8118, 0
  %9230 = fsub fast float %9228, %9229
  %9231 = extractvalue %dx.types.CBufRet.f32 %8118, 2
  %9232 = fmul fast float %9230, %9231
  %9233 = call float @dx.op.unary.f32(i32 7, float %9232)  ; Saturate(value)
  %9234 = fadd fast float %9233, -5.000000e-01
  %9235 = fmul fast float %9234, 2.000000e+00
  %9236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9237 = extractvalue %dx.types.CBufRet.f32 %9236, 2
  %9238 = call float @dx.op.binary.f32(i32 36, float %9237, float %9235)  ; FMin(a,b)
  %9239 = fsub fast float -0.000000e+00, %9237
  %9240 = fcmp fast ogt float %9238, %9239
  br i1 %9240, label %9241, label %9553, !dx.controlflow.hints !169

; <label>:9241                                    ; preds = %9186
  %9242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9243 = extractvalue %dx.types.CBufRet.f32 %9242, 3
  %9244 = fcmp fast ogt float %9243, 0.000000e+00
  br i1 %9244, label %9245, label %9320, !dx.controlflow.hints !170

; <label>:9245                                    ; preds = %9241
  %9246 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %9247 = extractvalue %dx.types.Dimensions %9246, 0
  %9248 = sitofp i32 %9247 to float
  %9249 = extractvalue %dx.types.Dimensions %9246, 1
  %9250 = sitofp i32 %9249 to float
  %9251 = fmul fast float %9190, %9248
  %9252 = fmul fast float %9191, %9250
  %9253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9254 = extractvalue %dx.types.CBufRet.f32 %9253, 1
  %9255 = fsub fast float -0.000000e+00, %9254
  %9256 = fptoui float %9255 to i32
  %9257 = fptoui float %9251 to i32
  %9258 = fptoui float %9252 to i32
  %9259 = and i32 %9256, 31
  %9260 = lshr i32 %9257, %9259
  %9261 = lshr i32 %9258, %9259
  %9262 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %9256, i32 %9260, i32 %9261, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9263 = extractvalue %dx.types.ResRet.f32 %9262, 0
  %9264 = fcmp fast olt float %9263, -1.000000e+00
  %9265 = fcmp fast ogt float %9263, -1.000000e+00
  %9266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9267 = extractvalue %dx.types.CBufRet.f32 %9266, 1
  %9268 = select i1 %9265, float %9267, float 1.000000e+00
  %9269 = fadd fast float %9263, 1.000000e+00
  %9270 = fmul fast float %9268, %9269
  %9271 = call float @dx.op.unary.f32(i32 6, float %9270)  ; FAbs(value)
  %9272 = extractvalue %dx.types.CBufRet.f32 %9266, 3
  %9273 = fcmp fast oge float %9271, %9272
  %9274 = select i1 %9273, float 0x4197782600000000, float %9271
  %9275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9276 = extractvalue %dx.types.CBufRet.f32 %9275, 0
  %9277 = extractvalue %dx.types.CBufRet.f32 %9275, 1
  %9278 = extractvalue %dx.types.CBufRet.f32 %9275, 2
  %9279 = select i1 %9264, float %9276, float %9197
  %9280 = select i1 %9264, float %9277, float %9198
  %9281 = select i1 %9264, float %9278, float %9199
  %9282 = fmul fast float %9279, %9194
  %9283 = fmul fast float %9280, %9194
  %9284 = fmul fast float %9281, %9194
  %9285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9286 = extractvalue %dx.types.CBufRet.f32 %9285, 0
  %9287 = extractvalue %dx.types.CBufRet.f32 %9285, 1
  %9288 = extractvalue %dx.types.CBufRet.f32 %9285, 2
  %9289 = select i1 %9264, float %9286, float %9204
  %9290 = select i1 %9264, float %9287, float %9205
  %9291 = select i1 %9264, float %9288, float %9206
  %9292 = fmul fast float %9289, %9195
  %9293 = fmul fast float %9290, %9195
  %9294 = fmul fast float %9291, %9195
  %9295 = fadd fast float %9292, %9282
  %9296 = fadd fast float %9293, %9283
  %9297 = fadd fast float %9294, %9284
  %9298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9299 = extractvalue %dx.types.CBufRet.f32 %9298, 0
  %9300 = extractvalue %dx.types.CBufRet.f32 %9298, 1
  %9301 = extractvalue %dx.types.CBufRet.f32 %9298, 2
  %9302 = select i1 %9264, float %9299, float %9211
  %9303 = select i1 %9264, float %9300, float %9212
  %9304 = select i1 %9264, float %9301, float %9213
  %9305 = fadd fast float %9295, %9302
  %9306 = fadd fast float %9296, %9303
  %9307 = fadd fast float %9297, %9304
  %9308 = fmul fast float %9305, %9274
  %9309 = fmul fast float %9306, %9274
  %9310 = fmul fast float %9307, %9274
  %9311 = fmul fast float %9308, %9308
  %9312 = fmul fast float %9309, %9309
  %9313 = fadd fast float %9311, %9312
  %9314 = fmul fast float %9310, %9310
  %9315 = fadd fast float %9313, %9314
  %9316 = call float @dx.op.unary.f32(i32 24, float %9315)  ; Sqrt(value)
  %9317 = fsub fast float %9316, %9229
  %9318 = fmul fast float %9317, %9231
  %9319 = call float @dx.op.unary.f32(i32 7, float %9318)  ; Saturate(value)
  br label %9320

; <label>:9320                                    ; preds = %9245, %9241
  %9321 = phi float [ %9319, %9245 ], [ 1.000000e+00, %9241 ]
  %9322 = fmul fast float %9238, 5.000000e-01
  %9323 = fadd fast float %9322, 5.000000e-01
  %9324 = call float @dx.op.unary.f32(i32 22, float %9323)  ; Frc(value)
  %9325 = call float @dx.op.unary.f32(i32 27, float %9324)  ; Round_ni(value)
  %9326 = call float @dx.op.unary.f32(i32 22, float %9324)  ; Frc(value)
  %9327 = fmul fast float %9326, 2.000000e+00
  %9328 = fadd fast float %9327, -1.000000e+00
  %9329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %9190, float %9191, float %9325, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9330 = extractvalue %dx.types.ResRet.f32 %9329, 0
  %9331 = extractvalue %dx.types.ResRet.f32 %9329, 1
  %9332 = extractvalue %dx.types.ResRet.f32 %9329, 2
  %9333 = extractvalue %dx.types.ResRet.f32 %9329, 3
  %9334 = fadd fast float %9330, -5.000000e-01
  %9335 = fadd fast float %9332, -5.000000e-01
  %9336 = fmul fast float %9334, 0xBFD5555560000000
  %9337 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9335, float %9336)  ; FMad(a,b,c)
  %9338 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9331, float 0.000000e+00)  ; FMad(a,b,c)
  %9339 = fadd fast float %9338, %9333
  %9340 = fmul fast float %9334, -7.500000e-01
  %9341 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9335, float %9340)  ; FMad(a,b,c)
  %9342 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9331, float 0.000000e+00)  ; FMad(a,b,c)
  %9343 = fadd fast float %9342, %9333
  %9344 = call float @dx.op.binary.f32(i32 35, float %9337, float -1.000000e+00)  ; FMax(a,b)
  %9345 = call float @dx.op.binary.f32(i32 35, float %9339, float -1.000000e+00)  ; FMax(a,b)
  %9346 = call float @dx.op.binary.f32(i32 35, float %9341, float -1.000000e+00)  ; FMax(a,b)
  %9347 = call float @dx.op.binary.f32(i32 35, float %9343, float -1.000000e+00)  ; FMax(a,b)
  %9348 = call float @dx.op.binary.f32(i32 36, float %9344, float 1.000000e+00)  ; FMin(a,b)
  %9349 = call float @dx.op.binary.f32(i32 36, float %9345, float 1.000000e+00)  ; FMin(a,b)
  %9350 = call float @dx.op.binary.f32(i32 36, float %9346, float 1.000000e+00)  ; FMin(a,b)
  %9351 = call float @dx.op.binary.f32(i32 36, float %9347, float 1.000000e+00)  ; FMin(a,b)
  %9352 = fcmp fast olt float %9348, 0x3FEFFF8020000000
  br i1 %9352, label %9353, label %9468, !dx.controlflow.hints !171

; <label>:9353                                    ; preds = %9320
  %9354 = extractvalue %dx.types.CBufRet.f32 %9236, 3
  %9355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9356 = extractvalue %dx.types.CBufRet.f32 %9355, 0
  %9357 = extractvalue %dx.types.CBufRet.f32 %9355, 1
  %9358 = extractvalue %dx.types.CBufRet.f32 %9355, 2
  %9359 = extractvalue %dx.types.CBufRet.f32 %9355, 3
  %9360 = fsub fast float %9356, %9348
  %9361 = fsub fast float %9357, %9349
  %9362 = fsub fast float %9358, %9350
  %9363 = fsub fast float %9359, %9351
  %9364 = fmul fast float %9360, %9354
  %9365 = fmul fast float %9361, %9354
  %9366 = fmul fast float %9362, %9354
  %9367 = fmul fast float %9363, %9354
  %9368 = fadd fast float %9364, %9348
  %9369 = fadd fast float %9365, %9349
  %9370 = fsub fast float -0.000000e+00, %9369
  %9371 = fadd fast float %9366, %9350
  %9372 = fadd fast float %9367, %9351
  %9373 = fmul fast float %9368, %9368
  %9374 = fsub fast float %9369, %9373
  %9375 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9374)  ; FMax(a,b)
  %9376 = fdiv fast float 1.000000e+00, %9375
  %9377 = fmul fast float %9369, %9368
  %9378 = fsub fast float %9371, %9377
  %9379 = fsub fast float %9328, %9368
  %9380 = fmul fast float %9328, %9328
  %9381 = fsub fast float %9380, %9369
  %9382 = fmul fast float %9379, %9376
  %9383 = fmul fast float %9382, %9378
  %9384 = fsub fast float %9381, %9383
  %9385 = fmul fast float %9369, %9369
  %9386 = fsub fast float %9372, %9385
  %9387 = fmul fast float %9378, %9378
  %9388 = fmul fast float %9387, %9376
  %9389 = fsub fast float %9386, %9388
  %9390 = fdiv fast float %9384, %9389
  %9391 = fmul fast float %9378, %9390
  %9392 = fsub fast float %9379, %9391
  %9393 = fmul fast float %9392, %9376
  %9394 = fmul fast float %9393, %9368
  %9395 = fsub fast float 1.000000e+00, %9394
  %9396 = fmul fast float %9369, %9390
  %9397 = fsub fast float %9395, %9396
  %9398 = fmul fast float %9393, %9393
  %9399 = fmul fast float %9390, 4.000000e+00
  %9400 = fmul fast float %9399, %9397
  %9401 = fsub fast float %9398, %9400
  %9402 = call float @dx.op.unary.f32(i32 24, float %9401)  ; Sqrt(value)
  %9403 = fcmp fast oge float %9393, 0.000000e+00
  %9404 = fsub fast float -0.000000e+00, %9402
  %9405 = select i1 %9403, float %9404, float %9402
  %9406 = fsub fast float %9405, %9393
  %9407 = fdiv fast float %9406, %9390
  %9408 = fdiv fast float %9397, %9406
  %9409 = fmul fast float %9407, 5.000000e-01
  %9410 = fmul fast float %9408, 2.000000e+00
  %9411 = select i1 %9403, float %9409, float %9410
  %9412 = select i1 %9403, float %9410, float %9409
  %9413 = call float @dx.op.binary.f32(i32 35, float %9411, float %9412)  ; FMax(a,b)
  %9414 = call float @dx.op.binary.f32(i32 36, float %9411, float %9412)  ; FMin(a,b)
  %9415 = fcmp fast ogt float %9328, %9414
  br i1 %9415, label %9416, label %9426

; <label>:9416                                    ; preds = %9353
  %9417 = fsub fast float %9328, %9414
  %9418 = fsub fast float %9413, %9414
  %9419 = fmul fast float %9417, %9418
  %9420 = fmul fast float %9413, %9328
  %9421 = fadd fast float %9413, %9328
  %9422 = fmul fast float %9421, %9368
  %9423 = fadd fast float %9420, %9369
  %9424 = fsub fast float %9423, %9422
  %9425 = fdiv fast float %9424, %9419
  br label %9426

; <label>:9426                                    ; preds = %9416, %9353
  %9427 = phi float [ %9425, %9416 ], [ 0.000000e+00, %9353 ]
  %9428 = fcmp fast ogt float %9328, %9413
  %9429 = fsub fast float %9328, %9413
  br i1 %9428, label %9430, label %9440

; <label>:9430                                    ; preds = %9426
  %9431 = fsub fast float %9413, %9414
  %9432 = fmul fast float %9431, %9429
  %9433 = fmul fast float %9414, %9328
  %9434 = fadd fast float %9414, %9328
  %9435 = fmul fast float %9434, %9368
  %9436 = fsub fast float %9370, %9433
  %9437 = fadd fast float %9436, %9435
  %9438 = fdiv fast float %9437, %9432
  %9439 = fadd fast float %9438, %9427
  br label %9440

; <label>:9440                                    ; preds = %9430, %9426
  %9441 = phi float [ %9439, %9430 ], [ %9427, %9426 ]
  %9442 = fsub fast float %9328, %9414
  %9443 = fmul fast float %9442, %9429
  %9444 = fmul fast float %9414, %9413
  %9445 = fadd fast float %9414, %9413
  %9446 = fmul fast float %9445, %9368
  %9447 = fadd fast float %9444, %9369
  %9448 = fsub fast float %9447, %9446
  %9449 = fdiv fast float %9448, %9443
  %9450 = call float @dx.op.unary.f32(i32 7, float %9441)  ; Saturate(value)
  %9451 = fcmp fast oeq float %8119, 0.000000e+00
  %9452 = extractvalue %dx.types.CBufRet.f32 %9236, 0
  %9453 = fcmp fast oeq float %9452, 0.000000e+00
  %9454 = or i1 %9451, %9453
  %9455 = fmul fast float %9452, 2.000000e+00
  %9456 = fadd fast float %9237, %9238
  %9457 = fdiv fast float %9456, %9455
  %9458 = call float @dx.op.unary.f32(i32 7, float %9457)  ; Saturate(value)
  %9459 = fmul fast float %9458, 2.000000e+00
  %9460 = fsub fast float 3.000000e+00, %9459
  %9461 = fmul fast float %9458, %9458
  %9462 = fmul fast float %9461, %9460
  %9463 = select i1 %9454, float 1.000000e+00, float %9462
  %9464 = fmul fast float %9449, %8119
  %9465 = fadd fast float %9450, %9464
  %9466 = call float @dx.op.unary.f32(i32 7, float %9465)  ; Saturate(value)
  %9467 = fmul fast float %9463, %9466
  br label %9468

; <label>:9468                                    ; preds = %9440, %9320
  %9469 = phi float [ %9467, %9440 ], [ 0.000000e+00, %9320 ]
  %9470 = fsub fast float 1.000000e+00, %9469
  %9471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %9190, float %9191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9472 = extractvalue %dx.types.ResRet.f32 %9471, 0
  %9473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9474 = extractvalue %dx.types.CBufRet.i32 %9473, 2
  %9475 = icmp eq i32 %9474, 0
  br i1 %9475, label %9481, label %9476

; <label>:9476                                    ; preds = %9468
  %9477 = call float @dx.op.unary.f32(i32 7, float %9469)  ; Saturate(value)
  %9478 = fadd fast float %9472, -1.000000e+00
  %9479 = fmul fast float %9477, %9478
  %9480 = fadd fast float %9479, 1.000000e+00
  br label %9481

; <label>:9481                                    ; preds = %9476, %9468
  %9482 = phi float [ %9480, %9476 ], [ %9470, %9468 ]
  br i1 %9244, label %9483, label %9501

; <label>:9483                                    ; preds = %9481
  %9484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9485 = extractvalue %dx.types.CBufRet.f32 %9484, 1
  %9486 = fsub fast float %9321, %9485
  %9487 = call float @dx.op.unary.f32(i32 7, float %9486)  ; Saturate(value)
  %9488 = fsub fast float %9321, %9243
  %9489 = call float @dx.op.unary.f32(i32 7, float %9488)  ; Saturate(value)
  %9490 = fsub fast float %9487, %9489
  %9491 = fsub fast float %9323, %9489
  %9492 = fdiv fast float %9491, %9490
  %9493 = call float @dx.op.unary.f32(i32 7, float %9492)  ; Saturate(value)
  %9494 = fmul fast float %9493, 2.000000e+00
  %9495 = fsub fast float 3.000000e+00, %9494
  %9496 = fsub fast float %9472, %9482
  %9497 = fmul fast float %9493, %9493
  %9498 = fmul fast float %9497, %9496
  %9499 = fmul fast float %9498, %9495
  %9500 = fadd fast float %9499, %9482
  br label %9501

; <label>:9501                                    ; preds = %9483, %9481
  %9502 = phi float [ %9500, %9483 ], [ %9482, %9481 ]
  %9503 = call float @dx.op.binary.f32(i32 35, float %9472, float %9502)  ; FMax(a,b)
  %9504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9505 = extractvalue %dx.types.CBufRet.i32 %9504, 2
  %9506 = and i32 %9505, 1
  %9507 = icmp eq i32 %9506, 0
  %9508 = fcmp fast une float %9503, 1.000000e+00
  %9509 = and i1 %9508, %9507
  br i1 %9509, label %9510, label %9529

; <label>:9510                                    ; preds = %9501
  %9511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %9190, float %9191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9512 = extractvalue %dx.types.ResRet.f32 %9511, 0
  %9513 = extractvalue %dx.types.ResRet.f32 %9511, 1
  %9514 = extractvalue %dx.types.ResRet.f32 %9511, 2
  %9515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9516 = extractvalue %dx.types.CBufRet.f32 %9515, 1
  %9517 = fmul fast float %9516, %9512
  %9518 = fmul fast float %9516, %9513
  %9519 = fmul fast float %9516, %9514
  %9520 = fcmp fast ogt float %9472, 0x3FEFFF2E40000000
  %9521 = fsub fast float 1.000000e+00, %9503
  %9522 = fsub fast float 1.000000e+00, %9472
  %9523 = fdiv fast float %9521, %9522
  %9524 = call float @dx.op.unary.f32(i32 7, float %9523)  ; Saturate(value)
  %9525 = select i1 %9520, float 0.000000e+00, float %9524
  %9526 = fmul fast float %9517, %9525
  %9527 = fmul fast float %9518, %9525
  %9528 = fmul fast float %9519, %9525
  br label %9529

; <label>:9529                                    ; preds = %9510, %9501
  %9530 = phi float [ 0.000000e+00, %9501 ], [ %9526, %9510 ]
  %9531 = phi float [ 0.000000e+00, %9501 ], [ %9527, %9510 ]
  %9532 = phi float [ 0.000000e+00, %9501 ], [ %9528, %9510 ]
  %9533 = fmul fast float %9530, %8103
  %9534 = fmul fast float %9531, %8105
  %9535 = fmul fast float %9532, %8107
  %9536 = fmul fast float %9503, %9165
  %9537 = call float @dx.op.dot3.f32(i32 55, float %9503, float %9503, float %9503, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9538 = call float @dx.op.dot3.f32(i32 55, float %9533, float %9534, float %9535, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9539 = select i1 %216, float %9537, float %9503
  %9540 = select i1 %216, float 1.000000e+00, float %9503
  %9541 = select i1 %216, float %9538, float %9533
  %9542 = select i1 %216, float 0.000000e+00, float %9534
  %9543 = select i1 %216, float 0.000000e+00, float %9535
  %9544 = fmul fast float %9539, %9177
  %9545 = fmul fast float %9539, %9178
  %9546 = fmul fast float %9540, %9179
  %9547 = fadd fast float %9544, %9541
  %9548 = fadd fast float %9545, %9542
  %9549 = fadd fast float %9543, %9546
  %9550 = fmul fast float %9539, %9180
  %9551 = fmul fast float %9539, %9181
  %9552 = fmul fast float %9540, %9182
  br label %9553

; <label>:9553                                    ; preds = %9529, %9186, %9155, %8387
  %9554 = phi float [ %8392, %8387 ], [ %9177, %9155 ], [ %9547, %9529 ], [ %9177, %9186 ]
  %9555 = phi float [ %8393, %8387 ], [ %9178, %9155 ], [ %9548, %9529 ], [ %9178, %9186 ]
  %9556 = phi float [ %8394, %8387 ], [ %9179, %9155 ], [ %9549, %9529 ], [ %9179, %9186 ]
  %9557 = phi float [ %8395, %8387 ], [ %9180, %9155 ], [ %9550, %9529 ], [ %9180, %9186 ]
  %9558 = phi float [ %8396, %8387 ], [ %9181, %9155 ], [ %9551, %9529 ], [ %9181, %9186 ]
  %9559 = phi float [ %8397, %8387 ], [ %9182, %9155 ], [ %9552, %9529 ], [ %9182, %9186 ]
  %9560 = phi float [ %8398, %8387 ], [ %9165, %9155 ], [ %9536, %9529 ], [ %9165, %9186 ]
  %9561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9562 = extractvalue %dx.types.CBufRet.f32 %9561, 2
  %9563 = extractvalue %dx.types.CBufRet.f32 %9561, 3
  %9564 = fmul fast float %9562, %99
  %9565 = fmul fast float %9563, %100
  %9566 = call float @dx.op.unary.f32(i32 7, float %9564)  ; Saturate(value)
  %9567 = call float @dx.op.unary.f32(i32 7, float %9565)  ; Saturate(value)
  %9568 = select i1 %8129, i32 2, i32 0
  %9569 = or i32 %9568, 1
  %9570 = uitofp i32 %9569 to float
  %9571 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9566, float %9567, float %9570, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9572 = extractvalue %dx.types.ResRet.f32 %9571, 0
  %9573 = extractvalue %dx.types.ResRet.f32 %9571, 1
  %9574 = extractvalue %dx.types.ResRet.f32 %9571, 2
  %9575 = extractvalue %dx.types.ResRet.f32 %9571, 3
  %9576 = add nuw nsw i32 %9568, 2
  %9577 = uitofp i32 %9576 to float
  %9578 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9566, float %9567, float %9577, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9579 = extractvalue %dx.types.ResRet.f32 %9578, 0
  %9580 = extractvalue %dx.types.ResRet.f32 %9578, 1
  %9581 = extractvalue %dx.types.ResRet.f32 %9578, 2
  %9582 = extractvalue %dx.types.ResRet.f32 %9578, 3
  %9583 = call float @dx.op.binary.f32(i32 35, float %9573, float %9574)  ; FMax(a,b)
  %9584 = call float @dx.op.binary.f32(i32 35, float %9572, float %9583)  ; FMax(a,b)
  %9585 = call float @dx.op.binary.f32(i32 35, float %9584, float %9575)  ; FMax(a,b)
  %9586 = call float @dx.op.binary.f32(i32 36, float %9580, float %9581)  ; FMin(a,b)
  %9587 = call float @dx.op.binary.f32(i32 36, float %9579, float %9586)  ; FMin(a,b)
  %9588 = call float @dx.op.binary.f32(i32 36, float %9587, float %9582)  ; FMin(a,b)
  %9589 = fmul fast float %9585, 2.550000e+02
  %9590 = fadd fast float %9589, 0x3F70101020000000
  %9591 = fptoui float %9590 to i32
  %9592 = fmul fast float %9588, 2.550000e+02
  %9593 = fadd fast float %9592, 0x3F70101020000000
  %9594 = fptoui float %9593 to i32
  %9595 = icmp ult i32 %9591, %9594
  br i1 %9595, label %9596, label %9765

; <label>:9596                                    ; preds = %9553
  %9597 = fcmp fast ogt float %89, 9.843750e-01
  %9598 = fadd fast float %8391, -4.000000e+00
  %9599 = select i1 %9597, float -4.000000e+00, float %9598
  %9600 = call float @dx.op.binary.f32(i32 35, float %9599, float 0.000000e+00)  ; FMax(a,b)
  %9601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9602 = extractvalue %dx.types.CBufRet.f32 %9601, 0
  %9603 = fadd fast float %9602, %9600
  %9604 = extractvalue %dx.types.CBufRet.f32 %9601, 2
  %9605 = fmul fast float %9603, %9604
  %9606 = call float @dx.op.unary.f32(i32 23, float %9605)  ; Log(value)
  %9607 = extractvalue %dx.types.CBufRet.f32 %9601, 3
  %9608 = fmul fast float %9607, %9606
  %9609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9610 = extractvalue %dx.types.CBufRet.f32 %9609, 2
  %9611 = fmul fast float %9608, %9610
  %9612 = call float @dx.op.unary.f32(i32 7, float %9611)  ; Saturate(value)
  %9613 = uitofp i32 %9591 to float
  %9614 = uitofp i32 %9594 to float
  %9615 = fadd fast float %9613, 5.000000e-01
  %9616 = fadd fast float %9614, 5.000000e-01
  %9617 = fmul fast float %9610, %9615
  %9618 = fmul fast float %9610, %9616
  %9619 = fadd fast float %9617, 0x3F0FFB4800000000
  %9620 = fadd fast float %9618, 0xBF0FFB4800000000
  %9621 = call float @dx.op.binary.f32(i32 35, float %9612, float %9619)  ; FMax(a,b)
  %9622 = call float @dx.op.binary.f32(i32 36, float %9621, float %9620)  ; FMin(a,b)
  %9623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9624 = extractvalue %dx.types.CBufRet.f32 %9623, 1
  %9625 = extractvalue %dx.types.CBufRet.f32 %9623, 2
  %9626 = extractvalue %dx.types.CBufRet.f32 %9623, 0
  %9627 = select i1 %8129, float %9626, float 0.000000e+00
  %9628 = fmul fast float %9624, %9622
  %9629 = fadd fast float %9627, %9628
  %9630 = fadd fast float %9627, %9625
  %9631 = fsub fast float %9624, %9625
  %9632 = fadd fast float %9631, %9627
  %9633 = call float @dx.op.binary.f32(i32 35, float %9629, float %9630)  ; FMax(a,b)
  %9634 = call float @dx.op.binary.f32(i32 36, float %9633, float %9632)  ; FMin(a,b)
  %9635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9566, float %9567, float %9634, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9636 = extractvalue %dx.types.ResRet.f32 %9635, 0
  %9637 = extractvalue %dx.types.ResRet.f32 %9635, 1
  %9638 = extractvalue %dx.types.ResRet.f32 %9635, 2
  %9639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9640 = extractvalue %dx.types.CBufRet.i32 %9639, 0
  %9641 = extractvalue %dx.types.CBufRet.i32 %9639, 1
  %9642 = uitofp i32 %9640 to float
  %9643 = uitofp i32 %9641 to float
  %9644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9645 = extractvalue %dx.types.CBufRet.f32 %9644, 0
  %9646 = extractvalue %dx.types.CBufRet.f32 %9644, 1
  %9647 = fmul fast float %9642, %9566
  %9648 = fmul fast float %9643, %9567
  %9649 = fadd fast float %9647, -5.000000e-01
  %9650 = fadd fast float %9648, -5.000000e-01
  %9651 = call float @dx.op.unary.f32(i32 22, float %9649)  ; Frc(value)
  %9652 = call float @dx.op.unary.f32(i32 22, float %9650)  ; Frc(value)
  %9653 = fmul fast float %9651, %9651
  %9654 = fmul fast float %9653, %9651
  %9655 = fsub fast float 3.000000e+00, %9651
  %9656 = fmul fast float %9653, %9655
  %9657 = fmul fast float %9651, 3.000000e+00
  %9658 = fmul fast float %9654, 3.000000e+00
  %9659 = fmul fast float %9653, 6.000000e+00
  %9660 = fsub fast float %9658, %9659
  %9661 = fadd fast float %9660, 4.000000e+00
  %9662 = fmul fast float %9661, 0x3FC5555560000000
  %9663 = fmul fast float %9654, -3.000000e+00
  %9664 = fadd fast float %9653, %9651
  %9665 = fmul fast float %9664, 3.000000e+00
  %9666 = fadd fast float %9663, 1.000000e+00
  %9667 = fadd fast float %9666, %9665
  %9668 = fmul fast float %9654, 0x3FC5555560000000
  %9669 = fmul fast float %9652, %9652
  %9670 = fmul fast float %9669, %9652
  %9671 = fsub fast float 3.000000e+00, %9652
  %9672 = fmul fast float %9669, %9671
  %9673 = fmul fast float %9652, 3.000000e+00
  %9674 = fmul fast float %9670, 3.000000e+00
  %9675 = fmul fast float %9669, 6.000000e+00
  %9676 = fsub fast float %9674, %9675
  %9677 = fadd fast float %9676, 4.000000e+00
  %9678 = fmul fast float %9677, 0x3FC5555560000000
  %9679 = fmul fast float %9670, -3.000000e+00
  %9680 = fadd fast float %9669, %9652
  %9681 = fmul fast float %9680, 3.000000e+00
  %9682 = fadd fast float %9679, 1.000000e+00
  %9683 = fadd fast float %9682, %9681
  %9684 = fmul fast float %9670, 0x3FC5555560000000
  %9685 = fadd fast float %9651, 1.000000e+00
  %9686 = fsub fast float 1.000000e+00, %9657
  %9687 = fadd fast float %9686, %9656
  %9688 = fadd fast float %9687, %9661
  %9689 = fmul fast float %9688, 0x3FC5555560000000
  %9690 = fdiv fast float %9662, %9689
  %9691 = fsub fast float %9685, %9690
  %9692 = fsub fast float 1.000000e+00, %9651
  %9693 = fadd fast float %9667, %9654
  %9694 = fmul fast float %9693, 0x3FC5555560000000
  %9695 = fdiv fast float %9668, %9694
  %9696 = fadd fast float %9692, %9695
  %9697 = fadd fast float %9652, 1.000000e+00
  %9698 = fsub fast float 1.000000e+00, %9673
  %9699 = fadd fast float %9698, %9672
  %9700 = fadd fast float %9699, %9677
  %9701 = fmul fast float %9700, 0x3FC5555560000000
  %9702 = fdiv fast float %9678, %9701
  %9703 = fsub fast float %9697, %9702
  %9704 = fsub fast float 1.000000e+00, %9652
  %9705 = fadd fast float %9683, %9670
  %9706 = fmul fast float %9705, 0x3FC5555560000000
  %9707 = fdiv fast float %9684, %9706
  %9708 = fadd fast float %9707, %9704
  %9709 = fmul fast float %9691, %9645
  %9710 = fsub fast float %9566, %9709
  %9711 = fmul fast float %9696, %9645
  %9712 = fadd fast float %9711, %9566
  %9713 = fmul fast float %9708, %9646
  %9714 = fadd fast float %9713, %9567
  %9715 = fmul fast float %9703, %9646
  %9716 = fsub fast float %9567, %9715
  %9717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9710, float %9716, float %9634, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9718 = extractvalue %dx.types.ResRet.f32 %9717, 0
  %9719 = extractvalue %dx.types.ResRet.f32 %9717, 1
  %9720 = extractvalue %dx.types.ResRet.f32 %9717, 2
  %9721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9712, float %9716, float %9634, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9722 = extractvalue %dx.types.ResRet.f32 %9721, 0
  %9723 = extractvalue %dx.types.ResRet.f32 %9721, 1
  %9724 = extractvalue %dx.types.ResRet.f32 %9721, 2
  %9725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9710, float %9714, float %9634, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9726 = extractvalue %dx.types.ResRet.f32 %9725, 0
  %9727 = extractvalue %dx.types.ResRet.f32 %9725, 1
  %9728 = extractvalue %dx.types.ResRet.f32 %9725, 2
  %9729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9712, float %9714, float %9634, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9730 = extractvalue %dx.types.ResRet.f32 %9729, 0
  %9731 = extractvalue %dx.types.ResRet.f32 %9729, 1
  %9732 = extractvalue %dx.types.ResRet.f32 %9729, 2
  %9733 = fsub fast float %9726, %9718
  %9734 = fsub fast float %9727, %9719
  %9735 = fsub fast float %9728, %9720
  %9736 = fmul fast float %9733, %9706
  %9737 = fmul fast float %9734, %9706
  %9738 = fmul fast float %9735, %9706
  %9739 = fadd fast float %9736, %9718
  %9740 = fadd fast float %9737, %9719
  %9741 = fadd fast float %9738, %9720
  %9742 = fsub fast float %9730, %9722
  %9743 = fsub fast float %9731, %9723
  %9744 = fsub fast float %9732, %9724
  %9745 = fmul fast float %9742, %9706
  %9746 = fmul fast float %9743, %9706
  %9747 = fmul fast float %9744, %9706
  %9748 = fsub fast float %9722, %9739
  %9749 = fadd fast float %9748, %9745
  %9750 = fsub fast float %9723, %9740
  %9751 = fadd fast float %9750, %9746
  %9752 = fsub fast float %9724, %9741
  %9753 = fadd fast float %9752, %9747
  %9754 = fmul fast float %9749, %9694
  %9755 = fmul fast float %9751, %9694
  %9756 = fmul fast float %9753, %9694
  %9757 = fadd fast float %9754, %9739
  %9758 = fadd fast float %9755, %9740
  %9759 = fadd fast float %9756, %9741
  %9760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9761 = extractvalue %dx.types.CBufRet.f32 %9760, 1
  %9762 = fmul fast float %9757, %9761
  %9763 = fmul fast float %9758, %9761
  %9764 = fmul fast float %9759, %9761
  br label %9765

; <label>:9765                                    ; preds = %9596, %9553
  %9766 = phi float [ %9636, %9596 ], [ 1.000000e+00, %9553 ]
  %9767 = phi float [ %9637, %9596 ], [ 1.000000e+00, %9553 ]
  %9768 = phi float [ %9638, %9596 ], [ 1.000000e+00, %9553 ]
  %9769 = phi float [ %9762, %9596 ], [ 0.000000e+00, %9553 ]
  %9770 = phi float [ %9763, %9596 ], [ 0.000000e+00, %9553 ]
  %9771 = phi float [ %9764, %9596 ], [ 0.000000e+00, %9553 ]
  %9772 = fmul fast float %9769, %8103
  %9773 = fmul fast float %9770, %8105
  %9774 = fmul fast float %9771, %8107
  %9775 = fmul fast float %9766, %9560
  %9776 = call float @dx.op.dot3.f32(i32 55, float %9766, float %9767, float %9768, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9777 = call float @dx.op.dot3.f32(i32 55, float %9772, float %9773, float %9774, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9778 = select i1 %216, float %9776, float %9766
  %9779 = select i1 %216, float %9776, float %9767
  %9780 = select i1 %216, float 1.000000e+00, float %9768
  %9781 = select i1 %216, float %9777, float %9772
  %9782 = select i1 %216, float 0.000000e+00, float %9773
  %9783 = select i1 %216, float 0.000000e+00, float %9774
  %9784 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9785 = extractvalue %dx.types.CBufRet.i32 %9784, 3
  %9786 = and i32 %9785, 3
  %9787 = icmp ne i32 %9786, 0
  %9788 = and i32 %9785, 4
  %9789 = icmp ne i32 %9788, 0
  %9790 = and i1 %9787, %9789
  %9791 = and i1 %216, %9790
  br i1 %9791, label %9792, label %9798

; <label>:9792                                    ; preds = %9765
  %9793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9794 = extractvalue %dx.types.CBufRet.f32 %9793, 1
  %9795 = fadd fast float %9775, -1.000000e+00
  %9796 = fmul fast float %9794, %9795
  %9797 = fadd fast float %9796, 1.000000e+00
  br label %9798

; <label>:9798                                    ; preds = %9792, %9765
  %9799 = phi float [ %9797, %9792 ], [ %9775, %9765 ]
  %9800 = fadd fast float %9557, %9554
  %9801 = fmul fast float %9778, %9800
  %9802 = fadd fast float %9801, %9781
  %9803 = fadd fast float %9558, %9555
  %9804 = fmul fast float %9779, %9803
  %9805 = fadd fast float %9804, %9782
  %9806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9807 = extractvalue %dx.types.CBufRet.f32 %9806, 0
  br i1 %216, label %9808, label %9823

; <label>:9808                                    ; preds = %9798
  %9809 = fadd fast float %9802, %9805
  %9810 = fmul fast float %9807, %9809
  %9811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9812 = extractvalue %dx.types.CBufRet.f32 %9811, 3
  %9813 = extractvalue %dx.types.CBufRet.f32 %8111, 1
  %9814 = fsub fast float %8116, %8110
  %9815 = fadd fast float %9814, %8117
  %9816 = fsub fast float %9815, %9813
  %9817 = extractvalue %dx.types.CBufRet.f32 %8111, 2
  %9818 = fmul fast float %9816, %9817
  %9819 = call float @dx.op.unary.f32(i32 7, float %9818)  ; Saturate(value)
  %9820 = fsub fast float %9819, %9812
  %9821 = fmul fast float %9820, %9799
  %9822 = fadd fast float %9821, %9812
  br label %9849

; <label>:9823                                    ; preds = %9798
  %9824 = fadd fast float %9559, %9556
  %9825 = fmul fast float %9780, %9824
  %9826 = fadd fast float %9825, %9783
  %9827 = fmul fast float %9807, %9802
  %9828 = fmul fast float %9807, %9805
  %9829 = fmul fast float %9807, %9826
  %9830 = call float @dx.op.binary.f32(i32 35, float %9828, float %9829)  ; FMax(a,b)
  %9831 = call float @dx.op.binary.f32(i32 35, float %9827, float %9830)  ; FMax(a,b)
  %9832 = call float @dx.op.binary.f32(i32 35, float %8105, float %8107)  ; FMax(a,b)
  %9833 = call float @dx.op.binary.f32(i32 35, float %8103, float %9832)  ; FMax(a,b)
  %9834 = call float @dx.op.binary.f32(i32 35, float %9831, float %9833)  ; FMax(a,b)
  %9835 = fcmp fast ugt float %9834, 0x3F10000000000000
  br i1 %9835, label %9837, label %9836

; <label>:9836                                    ; preds = %9823
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9837

; <label>:9837                                    ; preds = %9836, %9823
  %9838 = add i32 %54, 356
  %9839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9838, i32 undef)  ; BufferLoad(srv,index,wot)
  %9840 = extractvalue %dx.types.ResRet.i32 %9839, 0
  %9841 = and i32 %9840, 32
  %9842 = icmp eq i32 %9841, 0
  br i1 %9842, label %9849, label %9843

; <label>:9843                                    ; preds = %9837
  %9844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9845 = extractvalue %dx.types.CBufRet.f32 %9844, 0
  %9846 = fmul fast float %9845, 0x3FE99999A0000000
  %9847 = fadd fast float %9845, %9827
  %9848 = fadd fast float %9846, %9829
  br label %9849

; <label>:9849                                    ; preds = %9843, %9837, %9808
  %9850 = phi float [ 1.000000e+00, %9808 ], [ %8105, %9843 ], [ %8105, %9837 ]
  %9851 = phi float [ 1.000000e+00, %9808 ], [ %8107, %9843 ], [ %8107, %9837 ]
  %9852 = phi float [ %9810, %9808 ], [ %9847, %9843 ], [ %9827, %9837 ]
  %9853 = phi float [ %9822, %9808 ], [ %9828, %9843 ], [ %9828, %9837 ]
  %9854 = phi float [ 1.000000e+00, %9808 ], [ %9848, %9843 ], [ %9829, %9837 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9855 = call float @dx.op.binary.f32(i32 36, float %9852, float 3.225500e+04)  ; FMin(a,b)
  %9856 = call float @dx.op.binary.f32(i32 36, float %9853, float 3.225500e+04)  ; FMin(a,b)
  %9857 = call float @dx.op.binary.f32(i32 36, float %9854, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9855)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9856)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9857)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9858 = call float @dx.op.binary.f32(i32 36, float %8103, float 3.225500e+04)  ; FMin(a,b)
  %9859 = call float @dx.op.binary.f32(i32 36, float %9850, float 3.225500e+04)  ; FMin(a,b)
  %9860 = call float @dx.op.binary.f32(i32 36, float %9851, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9858)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9859)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9860)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!68 = !{[46 x i32] [i32 44, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0]}
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
!87 = !{i32 3, i32 5}
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

