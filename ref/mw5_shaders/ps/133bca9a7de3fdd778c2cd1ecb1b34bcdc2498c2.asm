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
; shader hash: 681a37a0d49ad731f68e22d7fdee18d4
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
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %227 = fadd fast float %226, %220
  %228 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %229 = add i32 %54, 156
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = shl i32 %231, 4
  %233 = and i32 %232, 32752
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %231, 7
  %236 = and i32 %235, 32752
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %231, 22
  %239 = shl nuw nsw i32 %238, 5
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = add i32 %54, 216
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F70101020000000
  %247 = lshr i32 %243, 8
  %248 = and i32 %247, 255
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %249, 0x3F70101020000000
  %251 = lshr i32 %243, 16
  %252 = and i32 %251, 255
  %253 = uitofp i32 %252 to float
  %254 = fmul fast float %253, 0x3F70101020000000
  %255 = add i32 %54, 36
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %257, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = add i32 %54, 288
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 65535
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %264, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = fmul fast float %266, 0x3F50624DE0000000
  %270 = fmul fast float %268, 0x3F50624DE0000000
  %271 = add i32 %54, 172
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = shl i32 %273, 4
  %275 = and i32 %274, 32752
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %273, 7
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %273, 22
  %281 = shl nuw nsw i32 %280, 5
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = add i32 %54, 232
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = lshr i32 %285, 8
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = lshr i32 %285, 16
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = add i32 %54, 52
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add i32 %54, 304
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = fmul fast float %308, 0x3F50624DE0000000
  %312 = fmul fast float %310, 0x3F50624DE0000000
  %313 = add i32 %54, 188
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = shl i32 %315, 4
  %317 = and i32 %316, 32752
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %315, 7
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %315, 22
  %323 = shl nuw nsw i32 %322, 5
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = add i32 %54, 248
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = lshr i32 %327, 8
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = lshr i32 %327, 16
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = add i32 %54, 68
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %54, 320
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = fmul fast float %350, 0x3F50624DE0000000
  %354 = fmul fast float %352, 0x3F50624DE0000000
  %355 = add i32 %54, 204
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = shl i32 %357, 4
  %359 = and i32 %358, 32752
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %357, 7
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %357, 22
  %365 = shl nuw nsw i32 %364, 5
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = add i32 %54, 264
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 255
  %371 = uitofp i32 %370 to float
  %372 = fmul fast float %371, 0x3F70101020000000
  %373 = lshr i32 %369, 8
  %374 = and i32 %373, 255
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = lshr i32 %369, 16
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = add i32 %54, 84
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = add i32 %54, 336
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 65535
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %390, 16
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = fmul fast float %392, 0x3F50624DE0000000
  %396 = fmul fast float %394, 0x3F50624DE0000000
  %397 = add i32 %54, 348
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 32
  %401 = icmp eq i32 %400, 0
  %402 = and i32 %399, 64
  %403 = icmp eq i32 %402, 0
  %404 = and i32 %399, 128
  %405 = icmp eq i32 %404, 0
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 2
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %425, label %410

; <label>:410                                     ; preds = %216
  %411 = add i32 %54, 488
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = add i32 %413, 0
  %415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %415, %dx.types.Handle %97, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = extractvalue %dx.types.ResRet.f32 %416, 1
  %419 = extractvalue %dx.types.ResRet.f32 %416, 2
  %420 = extractvalue %dx.types.ResRet.f32 %416, 3
  %421 = fmul fast float %420, %84
  %422 = fmul fast float %417, %85
  %423 = fmul fast float %418, %86
  %424 = fmul fast float %419, %87
  br label %425

; <label>:425                                     ; preds = %410, %216
  %426 = phi float [ %87, %216 ], [ %424, %410 ]
  %427 = phi float [ %86, %216 ], [ %423, %410 ]
  %428 = phi float [ %85, %216 ], [ %422, %410 ]
  %429 = phi float [ %84, %216 ], [ %421, %410 ]
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 2
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %453, label %434

; <label>:434                                     ; preds = %425
  %435 = add i32 %54, 44
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 1
  %439 = icmp ne i32 %438, 0
  %440 = select i1 %439, float %428, float 1.000000e+00
  %441 = add i32 %54, 60
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 1
  %445 = icmp ne i32 %444, 0
  %446 = select i1 %445, float %427, float 1.000000e+00
  %447 = add i32 %54, 76
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = and i32 %449, 1
  %451 = icmp ne i32 %450, 0
  %452 = select i1 %451, float %426, float 1.000000e+00
  br label %453

; <label>:453                                     ; preds = %434, %425
  %454 = phi float [ %426, %425 ], [ %452, %434 ]
  %455 = phi float [ %427, %425 ], [ %446, %434 ]
  %456 = phi float [ %428, %425 ], [ %440, %434 ]
  %457 = lshr i32 %431, 20
  %458 = and i32 %457, 3
  %459 = add nuw nsw i32 %458, 1
  %460 = add i32 %54, 24
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = add i32 %54, 28
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = or i32 %465, %462
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %1228, label %468

; <label>:468                                     ; preds = %453
  %469 = and i32 %462, 262144
  %470 = icmp ne i32 %469, 0
  %471 = select i1 %470, float %57, float 1.000000e+00
  %472 = select i1 %470, float %58, float 0.000000e+00
  %473 = select i1 %470, float %59, float 0.000000e+00
  %474 = select i1 %470, float %60, float 1.000000e+00
  %475 = select i1 %470, float %61, float %82
  %476 = select i1 %470, float %62, float %83
  %477 = add i32 %54, 284
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = lshr i32 %479, 16
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = fmul fast float %481, 0x3F50624DE0000000
  %483 = add i32 %54, 88
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = lshr i32 %485, 16
  %487 = and i32 %486, 255
  %488 = lshr i32 %485, 24
  %489 = add i32 %54, 292
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = and i32 %491, 65535
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = lshr i32 %491, 16
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = add i32 %54, 32
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = lshr i32 %498, 22
  %500 = shl nuw nsw i32 %499, 5
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = shl i32 %498, 4
  %503 = and i32 %502, 32752
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = lshr i32 %498, 7
  %506 = and i32 %505, 32752
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 3
  %510 = fmul fast float %509, 1.000000e+03
  %511 = fmul fast float %269, %510
  %512 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %513 = fadd fast float %512, %259
  %514 = fmul fast float %270, %510
  %515 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %516 = fadd fast float %515, %261
  %517 = fmul fast float %482, %510
  %518 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %519 = fmul fast float %518, 0x401921FB60000000
  %520 = fadd fast float %519, %501
  %521 = call float @dx.op.unary.f32(i32 13, float %520)  ; Sin(value)
  %522 = call float @dx.op.unary.f32(i32 12, float %520)  ; Cos(value)
  %523 = fsub fast float -0.000000e+00, %521
  %524 = fadd fast float %475, -5.000000e-01
  %525 = fadd fast float %476, -5.000000e-01
  %526 = fmul fast float %493, %524
  %527 = fmul fast float %495, %525
  %528 = fadd fast float %526, 5.000000e-01
  %529 = fadd fast float %527, 5.000000e-01
  %530 = fmul fast float %504, %528
  %531 = fmul fast float %507, %529
  %532 = fmul fast float %522, %530
  %533 = call float @dx.op.tertiary.f32(i32 46, float %523, float %531, float %532)  ; FMad(a,b,c)
  %534 = fmul fast float %521, %530
  %535 = call float @dx.op.tertiary.f32(i32 46, float %522, float %531, float %534)  ; FMad(a,b,c)
  %536 = fadd fast float %513, %533
  %537 = fadd fast float %516, %535
  %538 = icmp ugt i32 %487, 1
  %539 = icmp ugt i32 %485, 33554431
  %540 = or i1 %539, %538
  br i1 %540, label %541, label %566

; <label>:541                                     ; preds = %468
  %542 = add i32 %54, 228
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = lshr i32 %544, 16
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = fmul fast float %509, %546
  %548 = call float @dx.op.unary.f32(i32 22, float %547)  ; Frc(value)
  %549 = mul nuw nsw i32 %487, %488
  %550 = uitofp i32 %549 to float
  %551 = fmul fast float %548, %550
  %552 = call float @dx.op.unary.f32(i32 27, float %551)  ; Round_ni(value)
  %553 = fptoui float %552 to i32
  %554 = urem i32 %553, %487
  %555 = udiv i32 %553, %488
  %556 = call float @dx.op.unary.f32(i32 22, float %536)  ; Frc(value)
  %557 = call float @dx.op.unary.f32(i32 22, float %537)  ; Frc(value)
  %558 = uitofp i32 %554 to float
  %559 = uitofp i32 %555 to float
  %560 = fadd fast float %556, %558
  %561 = fadd fast float %557, %559
  %562 = uitofp i32 %487 to float
  %563 = uitofp i32 %488 to float
  %564 = fdiv fast float %560, %562
  %565 = fdiv fast float %561, %563
  br label %566

; <label>:566                                     ; preds = %541, %468
  %567 = phi float [ %564, %541 ], [ %536, %468 ]
  %568 = phi float [ %565, %541 ], [ %537, %468 ]
  %569 = and i32 %462, 16777216
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %680, label %571

; <label>:571                                     ; preds = %566
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %574 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %575 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %576 = fadd fast float %573, %155
  %577 = fadd fast float %574, %156
  %578 = fadd fast float %575, %157
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 0
  %581 = call float @dx.op.unary.f32(i32 7, float %580)  ; Saturate(value)
  %582 = icmp eq i32 %55, 65535
  br i1 %582, label %677, label %583

; <label>:583                                     ; preds = %571
  %584 = lshr i32 %55, 1
  %585 = shl i32 %584, 2
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = and i32 %55, 1
  %589 = icmp ne i32 %588, 0
  %590 = lshr i32 %587, 16
  %591 = and i32 %587, 65535
  %592 = select i1 %589, i32 %590, i32 %591
  %593 = icmp eq i32 %592, 65535
  br i1 %593, label %673, label %594

; <label>:594                                     ; preds = %583
  %595 = mul nuw nsw i32 %592, 40
  %596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.f32 %596, 0
  %598 = extractvalue %dx.types.ResRet.f32 %596, 1
  %599 = extractvalue %dx.types.ResRet.f32 %596, 2
  %600 = add nuw nsw i32 %595, 12
  %601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = extractvalue %dx.types.ResRet.f32 %601, 1
  %604 = extractvalue %dx.types.ResRet.f32 %601, 2
  %605 = add nuw nsw i32 %595, 24
  %606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = add nuw nsw i32 %595, 36
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = fsub fast float %576, %597
  %614 = fsub fast float %577, %598
  %615 = fsub fast float %578, %599
  %616 = fmul fast float %612, %613
  %617 = fmul fast float %612, %614
  %618 = fmul fast float %612, %615
  %619 = call float @dx.op.unary.f32(i32 27, float %616)  ; Round_ni(value)
  %620 = call float @dx.op.unary.f32(i32 27, float %617)  ; Round_ni(value)
  %621 = call float @dx.op.unary.f32(i32 27, float %618)  ; Round_ni(value)
  %622 = fadd fast float %619, 5.000000e-01
  %623 = fadd fast float %620, 5.000000e-01
  %624 = fadd fast float %621, 5.000000e-01
  %625 = fmul fast float %622, %602
  %626 = fmul fast float %623, %603
  %627 = fmul fast float %624, %604
  %628 = shl i32 %55, 2
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = add i32 %630, 0
  %632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %633 = call float @dx.op.unary.f32(i32 22, float %625)  ; Frc(value)
  %634 = call float @dx.op.unary.f32(i32 22, float %626)  ; Frc(value)
  %635 = call float @dx.op.unary.f32(i32 22, float %627)  ; Frc(value)
  %636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %632, %dx.types.Handle %49, float %633, float %634, float %635, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %637 = extractvalue %dx.types.ResRet.f32 %636, 0
  %638 = extractvalue %dx.types.ResRet.f32 %636, 1
  %639 = extractvalue %dx.types.ResRet.f32 %636, 2
  %640 = fmul fast float %637, 1.023000e+03
  %641 = fmul fast float %638, 1.023000e+03
  %642 = fmul fast float %639, 1.023000e+03
  %643 = fadd fast float %640, 5.000000e-01
  %644 = fadd fast float %641, 5.000000e-01
  %645 = fadd fast float %642, 5.000000e-01
  %646 = call float @dx.op.unary.f32(i32 27, float %643)  ; Round_ni(value)
  %647 = call float @dx.op.unary.f32(i32 27, float %644)  ; Round_ni(value)
  %648 = call float @dx.op.unary.f32(i32 27, float %645)  ; Round_ni(value)
  %649 = fsub fast float %616, %619
  %650 = fsub fast float %617, %620
  %651 = fsub fast float %618, %621
  %652 = fmul fast float %649, 7.500000e-01
  %653 = fmul fast float %650, 7.500000e-01
  %654 = fmul fast float %651, 7.500000e-01
  %655 = fadd fast float %619, 1.250000e-01
  %656 = fadd fast float %655, %652
  %657 = fadd fast float %656, %646
  %658 = fadd fast float %620, 1.250000e-01
  %659 = fadd fast float %658, %653
  %660 = fadd fast float %659, %647
  %661 = fadd fast float %621, 1.250000e-01
  %662 = fadd fast float %661, %654
  %663 = fadd fast float %662, %648
  %664 = fmul fast float %657, %607
  %665 = fmul fast float %660, %608
  %666 = fmul fast float %663, %609
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = add i32 %668, 0
  %670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %670, %dx.types.Handle %47, float %664, float %665, float %666, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %672 = extractvalue %dx.types.ResRet.f32 %671, 0
  br label %673

; <label>:673                                     ; preds = %594, %583
  %674 = phi float [ %672, %594 ], [ -1.000000e+00, %583 ]
  %675 = fadd fast float %674, %581
  %676 = call float @dx.op.unary.f32(i32 7, float %675)  ; Saturate(value)
  br label %677

; <label>:677                                     ; preds = %673, %571
  %678 = phi float [ %676, %673 ], [ %581, %571 ]
  %679 = fmul fast float %678, %429
  br label %680

; <label>:680                                     ; preds = %677, %566
  %681 = phi float [ %679, %677 ], [ %429, %566 ]
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = and i32 %683, 256
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %732, label %686

; <label>:686                                     ; preds = %680
  %687 = add i32 %54, 424
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %687, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = add i32 %689, 0
  %691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %690, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %692 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %691, %dx.types.Handle %97, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %693 = extractvalue %dx.types.ResRet.f32 %692, 0
  %694 = add i32 %54, 100
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = shl i32 %696, 4
  %698 = and i32 %697, 32752
  %699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %698)  ; LegacyF16ToF32(value)
  %700 = lshr i32 %696, 7
  %701 = and i32 %700, 32752
  %702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %701)  ; LegacyF16ToF32(value)
  %703 = fsub fast float 1.000000e+00, %681
  %704 = call float @dx.op.binary.f32(i32 35, float %703, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %705 = bitcast float %681 to i32
  %706 = sitofp i32 %705 to float
  %707 = fadd fast float %706, 0xC1CFBF8940000000
  %708 = fmul fast float %702, %707
  %709 = fadd fast float %708, 0x41CFBF8940000000
  %710 = fptosi float %709 to i32
  %711 = bitcast i32 %710 to float
  %712 = bitcast float %704 to i32
  %713 = sitofp i32 %712 to float
  %714 = fadd fast float %713, 0xC1CFBF8940000000
  %715 = fmul fast float %714, %702
  %716 = fadd fast float %715, 0x41CFBF8940000000
  %717 = fptosi float %716 to i32
  %718 = bitcast i32 %717 to float
  %719 = fmul fast float %711, %699
  %720 = fmul fast float %718, %699
  %721 = fsub fast float %704, %719
  %722 = fadd fast float %720, %704
  %723 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %724 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  %725 = fsub fast float %693, %723
  %726 = fsub fast float %724, %723
  %727 = bitcast float %726 to i32
  %728 = sub nsw i32 2129859010, %727
  %729 = bitcast i32 %728 to float
  %730 = fmul fast float %729, %725
  %731 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  br label %732

; <label>:732                                     ; preds = %686, %680
  %733 = phi float [ %731, %686 ], [ %681, %680 ]
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = and i32 %735, 128
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %754, label %738

; <label>:738                                     ; preds = %732
  %739 = add i32 %54, 408
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %739, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = add i32 %741, 0
  %743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %742, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %744 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %743, %dx.types.Handle %97, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = and i32 %747, 524288
  %749 = icmp ne i32 %748, 0
  %750 = fcmp fast ogt float %745, 0x3FE0101020000000
  %751 = select i1 %750, float 1.000000e+00, float 0.000000e+00
  %752 = select i1 %749, float %751, float %745
  %753 = fmul fast float %752, %733
  br label %754

; <label>:754                                     ; preds = %738, %732
  %755 = phi float [ %753, %738 ], [ %733, %732 ]
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = and i32 %757, 16
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %958, label %760

; <label>:760                                     ; preds = %754
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = add i32 %54, 360
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = add i32 %765, 0
  %767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %766, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %768 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %767, %dx.types.Handle %96, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 0
  %770 = extractvalue %dx.types.ResRet.f32 %768, 1
  %771 = extractvalue %dx.types.ResRet.f32 %768, 2
  %772 = extractvalue %dx.types.ResRet.f32 %768, 3
  %773 = and i32 %762, 255
  %774 = uitofp i32 %773 to float
  %775 = lshr i32 %762, 8
  %776 = and i32 %775, 255
  %777 = uitofp i32 %776 to float
  %778 = fmul fast float %772, %774
  %779 = fadd fast float %778, %777
  %780 = fmul fast float %779, 0x3F70101000000000
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = and i32 %782, 512
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %793, label %785

; <label>:785                                     ; preds = %760
  %786 = add i32 %54, 440
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = add i32 %788, 0
  %790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %789, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %791 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %790, %dx.types.Handle %97, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %792 = extractvalue %dx.types.ResRet.f32 %791, 0
  br label %793

; <label>:793                                     ; preds = %785, %760
  %794 = phi float [ %792, %785 ], [ 1.000000e+00, %760 ]
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = and i32 %796, 33554432
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %905, label %799

; <label>:799                                     ; preds = %793
  %800 = add i32 %54, 224
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = and i32 %802, 65535
  %804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %803)  ; LegacyF16ToF32(value)
  %805 = lshr i32 %802, 16
  %806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %805)  ; LegacyF16ToF32(value)
  %807 = add i32 %54, 228
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = and i32 %809, 65535
  %811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %810)  ; LegacyF16ToF32(value)
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = lshr i32 %813, 24
  %815 = uitofp i32 %814 to float
  %816 = fmul fast float %815, 0x3F70101020000000
  %817 = and i32 %813, 255
  %818 = uitofp i32 %817 to float
  %819 = fmul fast float %818, 0x3F70101020000000
  %820 = lshr i32 %813, 8
  %821 = and i32 %820, 255
  %822 = uitofp i32 %821 to float
  %823 = fmul fast float %822, 0x3F70101020000000
  %824 = lshr i32 %813, 16
  %825 = and i32 %824, 255
  %826 = uitofp i32 %825 to float
  %827 = fmul fast float %826, 0x3F70101020000000
  %828 = add i32 %54, 220
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = lshr i32 %830, 24
  %832 = uitofp i32 %831 to float
  %833 = fmul fast float %832, 0x3F70101020000000
  %834 = and i32 %830, 255
  %835 = uitofp i32 %834 to float
  %836 = fmul fast float %835, 0x3F70101020000000
  %837 = lshr i32 %830, 8
  %838 = and i32 %837, 255
  %839 = uitofp i32 %838 to float
  %840 = fmul fast float %839, 0x3F70101020000000
  %841 = lshr i32 %830, 16
  %842 = and i32 %841, 255
  %843 = uitofp i32 %842 to float
  %844 = fmul fast float %843, 0x3F70101020000000
  %845 = bitcast float %769 to i32
  %846 = ashr i32 %845, 1
  %847 = sub nsw i32 1597463174, %846
  %848 = bitcast i32 %847 to float
  %849 = fmul fast float %769, 5.000000e-01
  %850 = fmul fast float %848, %848
  %851 = fmul fast float %850, %849
  %852 = fsub fast float 1.500000e+00, %851
  %853 = fmul fast float %848, %769
  %854 = fmul fast float %853, %852
  %855 = bitcast float %770 to i32
  %856 = ashr i32 %855, 1
  %857 = sub nsw i32 1597463174, %856
  %858 = bitcast i32 %857 to float
  %859 = fmul fast float %770, 5.000000e-01
  %860 = fmul fast float %858, %858
  %861 = fmul fast float %860, %859
  %862 = fsub fast float 1.500000e+00, %861
  %863 = fmul fast float %858, %770
  %864 = fmul fast float %863, %862
  %865 = bitcast float %771 to i32
  %866 = ashr i32 %865, 1
  %867 = sub nsw i32 1597463174, %866
  %868 = bitcast i32 %867 to float
  %869 = fmul fast float %771, 5.000000e-01
  %870 = fmul fast float %868, %868
  %871 = fmul fast float %870, %869
  %872 = fsub fast float 1.500000e+00, %871
  %873 = fmul fast float %868, %771
  %874 = fmul fast float %873, %872
  %875 = fsub fast float %854, %836
  %876 = fsub fast float %864, %840
  %877 = fsub fast float %874, %844
  %878 = fmul fast float %875, %804
  %879 = fmul fast float %876, %806
  %880 = fmul fast float %877, %811
  %881 = fadd fast float %878, %819
  %882 = fadd fast float %879, %823
  %883 = fadd fast float %880, %827
  %884 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %885 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %886 = call float @dx.op.unary.f32(i32 7, float %883)  ; Saturate(value)
  %887 = fmul fast float %884, %884
  %888 = fmul fast float %885, %885
  %889 = fmul fast float %886, %886
  %890 = fsub fast float %887, %769
  %891 = fsub fast float %888, %770
  %892 = fsub fast float %889, %771
  %893 = fmul fast float %890, %794
  %894 = fmul fast float %891, %794
  %895 = fmul fast float %892, %794
  %896 = fadd fast float %893, %769
  %897 = fadd fast float %894, %770
  %898 = fadd fast float %895, %771
  %899 = fadd fast float %816, %780
  %900 = fsub fast float %899, %833
  %901 = call float @dx.op.unary.f32(i32 7, float %900)  ; Saturate(value)
  %902 = fsub fast float %901, %780
  %903 = fmul fast float %902, %794
  %904 = fadd fast float %903, %780
  br label %958

; <label>:905                                     ; preds = %793
  %906 = and i32 %796, 134217728
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %942, label %908

; <label>:908                                     ; preds = %905
  %909 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %910 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %911 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %912 = fadd fast float %909, -5.000000e-01
  %913 = fadd fast float %910, -5.000000e-01
  %914 = fadd fast float %911, -5.000000e-01
  %915 = fmul fast float %912, %794
  %916 = fmul fast float %913, %794
  %917 = fmul fast float %914, %794
  %918 = fadd fast float %915, 5.000000e-01
  %919 = fadd fast float %916, 5.000000e-01
  %920 = fadd fast float %917, 5.000000e-01
  %921 = call float @dx.op.unary.f32(i32 24, float %769)  ; Sqrt(value)
  %922 = call float @dx.op.unary.f32(i32 24, float %770)  ; Sqrt(value)
  %923 = call float @dx.op.unary.f32(i32 24, float %771)  ; Sqrt(value)
  %924 = fmul fast float %918, 2.000000e+00
  %925 = fsub fast float 1.000000e+00, %924
  %926 = fmul fast float %925, %921
  %927 = fadd fast float %926, %924
  %928 = fmul fast float %927, %921
  %929 = fmul fast float %919, 2.000000e+00
  %930 = fsub fast float 1.000000e+00, %929
  %931 = fmul fast float %930, %922
  %932 = fadd fast float %931, %929
  %933 = fmul fast float %932, %922
  %934 = fmul fast float %920, 2.000000e+00
  %935 = fsub fast float 1.000000e+00, %934
  %936 = fmul fast float %935, %923
  %937 = fadd fast float %936, %934
  %938 = fmul fast float %937, %923
  %939 = fmul fast float %928, %928
  %940 = fmul fast float %933, %933
  %941 = fmul fast float %938, %938
  br label %958

; <label>:942                                     ; preds = %905
  %943 = fmul fast float %246, %246
  %944 = fmul fast float %250, %250
  %945 = fmul fast float %254, %254
  %946 = fadd fast float %943, -1.000000e+00
  %947 = fadd fast float %944, -1.000000e+00
  %948 = fadd fast float %945, -1.000000e+00
  %949 = fmul fast float %794, %946
  %950 = fmul fast float %794, %947
  %951 = fmul fast float %794, %948
  %952 = fadd fast float %949, 1.000000e+00
  %953 = fadd fast float %950, 1.000000e+00
  %954 = fadd fast float %951, 1.000000e+00
  %955 = fmul fast float %952, %769
  %956 = fmul fast float %953, %770
  %957 = fmul fast float %954, %771
  br label %958

; <label>:958                                     ; preds = %942, %908, %799, %754
  %959 = phi float [ %904, %799 ], [ %780, %908 ], [ %780, %942 ], [ 0x3FA23C0BE0000000, %754 ]
  %960 = phi float [ %896, %799 ], [ %939, %908 ], [ %955, %942 ], [ 1.000000e+00, %754 ]
  %961 = phi float [ %897, %799 ], [ %940, %908 ], [ %956, %942 ], [ 1.000000e+00, %754 ]
  %962 = phi float [ %898, %799 ], [ %941, %908 ], [ %957, %942 ], [ 1.000000e+00, %754 ]
  %963 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.i32 %963, 1
  %965 = and i32 %964, 1
  %966 = icmp ne i32 %965, 0
  %967 = add i32 %54, 356
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = and i32 %969, 32
  %971 = icmp ne i32 %970, 0
  %972 = and i1 %966, %971
  %973 = select i1 %972, float 1.000000e+00, float %960
  %974 = select i1 %972, float 0x3FD3333340000000, float %961
  %975 = select i1 %972, float 0x3FD3333340000000, float %962
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = and i32 %977, 32
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %1052, label %980

; <label>:980                                     ; preds = %958
  %981 = add i32 %54, 92
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = add i32 %54, 376
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = add i32 %986, 0
  %988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %987, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %989 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %988, %dx.types.Handle %96, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %990 = extractvalue %dx.types.ResRet.f32 %989, 0
  %991 = extractvalue %dx.types.ResRet.f32 %989, 1
  %992 = extractvalue %dx.types.ResRet.f32 %989, 2
  %993 = extractvalue %dx.types.ResRet.f32 %989, 3
  %994 = and i32 %983, 255
  %995 = uitofp i32 %994 to float
  %996 = lshr i32 %983, 8
  %997 = and i32 %996, 255
  %998 = uitofp i32 %997 to float
  %999 = lshr i32 %983, 16
  %1000 = and i32 %999, 255
  %1001 = uitofp i32 %1000 to float
  %1002 = fmul fast float %1001, 0x3F70101000000000
  %1003 = fmul fast float %990, %995
  %1004 = fadd fast float %1003, %998
  %1005 = fmul fast float %1004, 0x3F70101000000000
  %1006 = fadd fast float %991, -5.000000e-01
  %1007 = fadd fast float %993, -5.000000e-01
  %1008 = fmul fast float %1006, %1002
  %1009 = fmul fast float %1007, %1002
  %1010 = fadd fast float %1008, 5.000000e-01
  %1011 = fadd fast float %1009, 5.000000e-01
  %1012 = fmul fast float %1010, 2.000000e+00
  %1013 = fadd fast float %1012, -1.000000e+00
  %1014 = fmul fast float %1011, 2.000000e+00
  %1015 = fadd fast float %1014, -1.000000e+00
  %1016 = fadd fast float %1013, %1015
  %1017 = fmul fast float %1016, 5.000000e-01
  %1018 = fsub fast float %1013, %1015
  %1019 = fmul fast float %1018, 5.000000e-01
  %1020 = call float @dx.op.unary.f32(i32 6, float %1017)  ; FAbs(value)
  %1021 = fsub fast float 1.000000e+00, %1020
  %1022 = call float @dx.op.unary.f32(i32 6, float %1019)  ; FAbs(value)
  %1023 = fsub fast float %1021, %1022
  %1024 = call float @dx.op.dot3.f32(i32 55, float %1017, float %1019, float %1023, float %1017, float %1019, float %1023)  ; Dot3(ax,ay,az,bx,by,bz)
  %1025 = call float @dx.op.unary.f32(i32 25, float %1024)  ; Rsqrt(value)
  %1026 = fmul fast float %1017, %1025
  %1027 = fmul fast float %1019, %1025
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = and i32 %1029, 67108864
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1048, label %1032

; <label>:1032                                    ; preds = %980
  %1033 = add i32 %54, 280
  %1034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.i32 %1034, 0
  %1036 = and i32 %1035, 65535
  %1037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1036)  ; LegacyF16ToF32(value)
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = and i32 %1039, 65535
  %1041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1040)  ; LegacyF16ToF32(value)
  %1042 = lshr i32 %1035, 16
  %1043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1042)  ; LegacyF16ToF32(value)
  %1044 = fsub fast float %1005, %1043
  %1045 = fmul fast float %1044, %1037
  %1046 = fadd fast float %1045, %1041
  %1047 = call float @dx.op.unary.f32(i32 7, float %1046)  ; Saturate(value)
  br label %1048

; <label>:1048                                    ; preds = %1032, %980
  %1049 = phi float [ %1047, %1032 ], [ %1005, %980 ]
  %1050 = call float @dx.op.dot2.f32(i32 54, float %1026, float %1027, float %471, float %472)  ; Dot2(ax,ay,bx,by)
  %1051 = call float @dx.op.dot2.f32(i32 54, float %1026, float %1027, float %473, float %474)  ; Dot2(ax,ay,bx,by)
  br label %1052

; <label>:1052                                    ; preds = %1048, %958
  %1053 = phi float [ %1049, %1048 ], [ 0x3FD6666660000000, %958 ]
  %1054 = phi float [ %1050, %1048 ], [ 0.000000e+00, %958 ]
  %1055 = phi float [ %1051, %1048 ], [ 0.000000e+00, %958 ]
  %1056 = phi float [ %992, %1048 ], [ 1.000000e+00, %958 ]
  %1057 = add i32 %54, 160
  %1058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = lshr i32 %1059, 22
  %1061 = shl nuw nsw i32 %1060, 5
  %1062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1061)  ; LegacyF16ToF32(value)
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = and i32 %1064, 64
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1100, label %1067

; <label>:1067                                    ; preds = %1052
  %1068 = add i32 %54, 392
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = add i32 %1070, 0
  %1072 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1071, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = and i32 %1074, 131072
  %1076 = icmp eq i32 %1075, 0
  %1077 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1072, %dx.types.Handle %96, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1078 = extractvalue %dx.types.ResRet.f32 %1077, 0
  %1079 = extractvalue %dx.types.ResRet.f32 %1077, 1
  %1080 = extractvalue %dx.types.ResRet.f32 %1077, 2
  %1081 = fmul fast float %1078, %234
  %1082 = fmul fast float %1079, %237
  %1083 = fmul fast float %1080, %240
  br i1 %1076, label %1090, label %1084

; <label>:1084                                    ; preds = %1067
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 0
  %1087 = fmul fast float %1086, %1081
  %1088 = fmul fast float %1086, %1082
  %1089 = fmul fast float %1086, %1083
  br label %1090

; <label>:1090                                    ; preds = %1084, %1067
  %1091 = phi float [ %1087, %1084 ], [ %1081, %1067 ]
  %1092 = phi float [ %1088, %1084 ], [ %1082, %1067 ]
  %1093 = phi float [ %1089, %1084 ], [ %1083, %1067 ]
  %1094 = fmul fast float %1091, %1062
  %1095 = select i1 %217, float %1094, float %1091
  %1096 = call float @dx.op.dot3.f32(i32 55, float %1095, float %1092, float %1093, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1097 = select i1 %217, float 0.000000e+00, float %1091
  %1098 = select i1 %217, float %1096, float %1092
  %1099 = select i1 %217, float 0.000000e+00, float %1093
  br label %1100

; <label>:1100                                    ; preds = %1090, %1052
  %1101 = phi float [ %1097, %1090 ], [ 0.000000e+00, %1052 ]
  %1102 = phi float [ %1098, %1090 ], [ 0.000000e+00, %1052 ]
  %1103 = phi float [ %1099, %1090 ], [ 0.000000e+00, %1052 ]
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = and i32 %1105, 1024
  %1107 = icmp eq i32 %1106, 0
  br i1 %1107, label %1138, label %1108

; <label>:1108                                    ; preds = %1100
  %1109 = add i32 %54, 152
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 255
  %1113 = uitofp i32 %1112 to float
  %1114 = fmul fast float %1113, 0x3F70101020000000
  %1115 = lshr i32 %1111, 8
  %1116 = and i32 %1115, 255
  %1117 = uitofp i32 %1116 to float
  %1118 = fmul fast float %1117, 0x3F70101020000000
  %1119 = lshr i32 %1111, 16
  %1120 = and i32 %1119, 255
  %1121 = uitofp i32 %1120 to float
  %1122 = fmul fast float %1121, 0x3F70101020000000
  %1123 = fmul fast float %1114, %1114
  %1124 = fmul fast float %1118, %1118
  %1125 = fmul fast float %1122, %1122
  %1126 = add i32 %54, 456
  %1127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1126, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.i32 %1127, 0
  %1129 = add i32 %1128, 0
  %1130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1129, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1131 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1130, %dx.types.Handle %97, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.ResRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.ResRet.f32 %1131, 2
  %1135 = fmul fast float %1123, %1132
  %1136 = fmul fast float %1124, %1133
  %1137 = fmul fast float %1125, %1134
  br label %1138

; <label>:1138                                    ; preds = %1108, %1100
  %1139 = phi float [ %1135, %1108 ], [ 0.000000e+00, %1100 ]
  %1140 = phi float [ %1136, %1108 ], [ 0.000000e+00, %1100 ]
  %1141 = phi float [ %1137, %1108 ], [ 0.000000e+00, %1100 ]
  %1142 = fcmp fast ogt float %1139, 0.000000e+00
  %1143 = fcmp fast ogt float %1140, 0.000000e+00
  %1144 = fcmp fast ogt float %1141, 0.000000e+00
  %1145 = call float @dx.op.unary.f32(i32 23, float %1139)  ; Log(value)
  %1146 = call float @dx.op.unary.f32(i32 23, float %1140)  ; Log(value)
  %1147 = call float @dx.op.unary.f32(i32 23, float %1141)  ; Log(value)
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = lshr i32 %1149, 7
  %1151 = and i32 %1150, 32752
  %1152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1151)  ; LegacyF16ToF32(value)
  %1153 = fmul fast float %1145, 0xBFE62E4300000000
  %1154 = fmul fast float %1153, %1152
  %1155 = fmul fast float %1146, 0xBFE62E4300000000
  %1156 = fmul fast float %1155, %1152
  %1157 = fmul fast float %1147, 0xBFE62E4300000000
  %1158 = fmul fast float %1157, %1152
  %1159 = select i1 %1142, float %1154, float 1.270000e+02
  %1160 = select i1 %1143, float %1156, float 1.270000e+02
  %1161 = select i1 %1144, float %1158, float 1.270000e+02
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = and i32 %1163, 10240
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1210, label %1166

; <label>:1166                                    ; preds = %1138
  %1167 = add i32 %54, 472
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = add i32 %1169, 0
  %1171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1171, %dx.types.Handle %97, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 1
  %1174 = extractvalue %dx.types.ResRet.f32 %1172, 3
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = and i32 %1176, 1048576
  %1178 = icmp ne i32 %1177, 0
  %1179 = and i32 %1176, 8192
  %1180 = icmp eq i32 %1179, 0
  br i1 %1180, label %1196, label %1181

; <label>:1181                                    ; preds = %1166
  %1182 = extractvalue %dx.types.ResRet.f32 %1172, 2
  %1183 = select i1 %1178, float %1182, float %1173
  %1184 = extractvalue %dx.types.ResRet.f32 %1172, 0
  %1185 = select i1 %1178, float %1184, float %1173
  %1186 = add i32 %54, 96
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = lshr i32 %1188, 16
  %1190 = and i32 %1189, 255
  %1191 = uitofp i32 %1190 to float
  %1192 = fmul fast float %1191, 0x3F80101020000000
  %1193 = fmul fast float %1192, %1185
  %1194 = fmul fast float %1192, %1173
  %1195 = fmul fast float %1192, %1183
  br label %1196

; <label>:1196                                    ; preds = %1181, %1166
  %1197 = phi float [ %1193, %1181 ], [ 0.000000e+00, %1166 ]
  %1198 = phi float [ %1194, %1181 ], [ 0.000000e+00, %1166 ]
  %1199 = phi float [ %1195, %1181 ], [ 0.000000e+00, %1166 ]
  %1200 = and i32 %1176, 2048
  %1201 = icmp eq i32 %1200, 0
  br i1 %1201, label %1210, label %1202

; <label>:1202                                    ; preds = %1196
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = shl i32 %1204, 4
  %1206 = and i32 %1205, 32752
  %1207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1206)  ; LegacyF16ToF32(value)
  %1208 = fmul fast float %1207, %1174
  %1209 = call float @dx.op.binary.f32(i32 35, float %1208, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1210

; <label>:1210                                    ; preds = %1202, %1196, %1138
  %1211 = phi float [ %1197, %1202 ], [ %1197, %1196 ], [ 0.000000e+00, %1138 ]
  %1212 = phi float [ %1198, %1202 ], [ %1198, %1196 ], [ 0.000000e+00, %1138 ]
  %1213 = phi float [ %1199, %1202 ], [ %1199, %1196 ], [ 0.000000e+00, %1138 ]
  %1214 = phi float [ %1209, %1202 ], [ 0x3F70101020000000, %1196 ], [ 0x3F70101020000000, %1138 ]
  %1215 = add i32 %54, 96
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = and i32 %1217, 255
  %1219 = uitofp i32 %1218 to float
  %1220 = lshr i32 %1217, 8
  %1221 = and i32 %1220, 255
  %1222 = uitofp i32 %1221 to float
  %1223 = call float @dx.op.dot3.f32(i32 55, float %973, float %974, float %975, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1224 = fmul fast float %1222, %1223
  %1225 = fadd fast float %1224, %1219
  %1226 = fmul fast float %1225, 0x3F70101020000000
  %1227 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  br label %1228

; <label>:1228                                    ; preds = %1210, %453
  %1229 = phi float [ 0.000000e+00, %453 ], [ %1054, %1210 ]
  %1230 = phi float [ 0.000000e+00, %453 ], [ %1055, %1210 ]
  %1231 = phi float [ 0.000000e+00, %453 ], [ %973, %1210 ]
  %1232 = phi float [ 0.000000e+00, %453 ], [ %974, %1210 ]
  %1233 = phi float [ 0.000000e+00, %453 ], [ %975, %1210 ]
  %1234 = phi float [ 0.000000e+00, %453 ], [ %1101, %1210 ]
  %1235 = phi float [ 0.000000e+00, %453 ], [ %1102, %1210 ]
  %1236 = phi float [ 0.000000e+00, %453 ], [ %1103, %1210 ]
  %1237 = phi float [ 0.000000e+00, %453 ], [ %1211, %1210 ]
  %1238 = phi float [ 0.000000e+00, %453 ], [ %1212, %1210 ]
  %1239 = phi float [ 0.000000e+00, %453 ], [ %1213, %1210 ]
  %1240 = phi float [ 0.000000e+00, %453 ], [ %1159, %1210 ]
  %1241 = phi float [ 0.000000e+00, %453 ], [ %1160, %1210 ]
  %1242 = phi float [ 0.000000e+00, %453 ], [ %1161, %1210 ]
  %1243 = phi float [ 0.000000e+00, %453 ], [ %959, %1210 ]
  %1244 = phi float [ 0.000000e+00, %453 ], [ %755, %1210 ]
  %1245 = phi float [ 0.000000e+00, %453 ], [ %1053, %1210 ]
  %1246 = phi float [ 0.000000e+00, %453 ], [ %1056, %1210 ]
  %1247 = phi float [ 0.000000e+00, %453 ], [ %1214, %1210 ]
  %1248 = phi float [ 0.000000e+00, %453 ], [ %1227, %1210 ]
  br i1 %401, label %2286, label %1249

; <label>:1249                                    ; preds = %1228
  %1250 = icmp ult i32 %459, 2
  %1251 = add i32 %54, 40
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = add i32 %54, 44
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = or i32 %1256, %1253
  %1258 = icmp eq i32 %1257, 0
  br i1 %1258, label %2286, label %1259

; <label>:1259                                    ; preds = %1249
  %1260 = and i32 %1253, 262144
  %1261 = icmp ne i32 %1260, 0
  %1262 = select i1 %1261, float %57, float 1.000000e+00
  %1263 = select i1 %1261, float %58, float 0.000000e+00
  %1264 = select i1 %1261, float %59, float 0.000000e+00
  %1265 = select i1 %1261, float %60, float 1.000000e+00
  %1266 = select i1 %1261, float %61, float %82
  %1267 = select i1 %1261, float %62, float %83
  %1268 = add i32 %54, 300
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = lshr i32 %1270, 16
  %1272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1271)  ; LegacyF16ToF32(value)
  %1273 = fmul fast float %1272, 0x3F50624DE0000000
  %1274 = add i32 %54, 104
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = lshr i32 %1276, 16
  %1278 = and i32 %1277, 255
  %1279 = lshr i32 %1276, 24
  %1280 = add i32 %54, 308
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 65535
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = lshr i32 %1282, 16
  %1286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1285)  ; LegacyF16ToF32(value)
  %1287 = add i32 %54, 48
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = lshr i32 %1289, 22
  %1291 = shl nuw nsw i32 %1290, 5
  %1292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1291)  ; LegacyF16ToF32(value)
  %1293 = shl i32 %1289, 4
  %1294 = and i32 %1293, 32752
  %1295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1294)  ; LegacyF16ToF32(value)
  %1296 = lshr i32 %1289, 7
  %1297 = and i32 %1296, 32752
  %1298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1297)  ; LegacyF16ToF32(value)
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 3
  %1301 = fmul fast float %1300, 1.000000e+03
  %1302 = fmul fast float %311, %1301
  %1303 = call float @dx.op.unary.f32(i32 22, float %1302)  ; Frc(value)
  %1304 = fadd fast float %1303, %301
  %1305 = fmul fast float %312, %1301
  %1306 = call float @dx.op.unary.f32(i32 22, float %1305)  ; Frc(value)
  %1307 = fadd fast float %1306, %303
  %1308 = fmul fast float %1273, %1301
  %1309 = call float @dx.op.unary.f32(i32 22, float %1308)  ; Frc(value)
  %1310 = fmul fast float %1309, 0x401921FB60000000
  %1311 = fadd fast float %1310, %1292
  %1312 = call float @dx.op.unary.f32(i32 13, float %1311)  ; Sin(value)
  %1313 = call float @dx.op.unary.f32(i32 12, float %1311)  ; Cos(value)
  %1314 = fsub fast float -0.000000e+00, %1312
  %1315 = fadd fast float %1266, -5.000000e-01
  %1316 = fadd fast float %1267, -5.000000e-01
  %1317 = fmul fast float %1284, %1315
  %1318 = fmul fast float %1286, %1316
  %1319 = fadd fast float %1317, 5.000000e-01
  %1320 = fadd fast float %1318, 5.000000e-01
  %1321 = fmul fast float %1295, %1319
  %1322 = fmul fast float %1298, %1320
  %1323 = fmul fast float %1313, %1321
  %1324 = call float @dx.op.tertiary.f32(i32 46, float %1314, float %1322, float %1323)  ; FMad(a,b,c)
  %1325 = fmul fast float %1312, %1321
  %1326 = call float @dx.op.tertiary.f32(i32 46, float %1313, float %1322, float %1325)  ; FMad(a,b,c)
  %1327 = fadd fast float %1304, %1324
  %1328 = fadd fast float %1307, %1326
  %1329 = icmp ugt i32 %1278, 1
  %1330 = icmp ugt i32 %1276, 33554431
  %1331 = or i1 %1330, %1329
  br i1 %1331, label %1332, label %1357

; <label>:1332                                    ; preds = %1259
  %1333 = add i32 %54, 244
  %1334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.i32 %1334, 0
  %1336 = lshr i32 %1335, 16
  %1337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1336)  ; LegacyF16ToF32(value)
  %1338 = fmul fast float %1300, %1337
  %1339 = call float @dx.op.unary.f32(i32 22, float %1338)  ; Frc(value)
  %1340 = mul nuw nsw i32 %1278, %1279
  %1341 = uitofp i32 %1340 to float
  %1342 = fmul fast float %1339, %1341
  %1343 = call float @dx.op.unary.f32(i32 27, float %1342)  ; Round_ni(value)
  %1344 = fptoui float %1343 to i32
  %1345 = urem i32 %1344, %1278
  %1346 = udiv i32 %1344, %1279
  %1347 = call float @dx.op.unary.f32(i32 22, float %1327)  ; Frc(value)
  %1348 = call float @dx.op.unary.f32(i32 22, float %1328)  ; Frc(value)
  %1349 = uitofp i32 %1345 to float
  %1350 = uitofp i32 %1346 to float
  %1351 = fadd fast float %1347, %1349
  %1352 = fadd fast float %1348, %1350
  %1353 = uitofp i32 %1278 to float
  %1354 = uitofp i32 %1279 to float
  %1355 = fdiv fast float %1351, %1353
  %1356 = fdiv fast float %1352, %1354
  br label %1357

; <label>:1357                                    ; preds = %1332, %1259
  %1358 = phi float [ %1355, %1332 ], [ %1327, %1259 ]
  %1359 = phi float [ %1356, %1332 ], [ %1328, %1259 ]
  %1360 = and i32 %1253, 16777216
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1471, label %1362

; <label>:1362                                    ; preds = %1357
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1363, 0
  %1365 = extractvalue %dx.types.CBufRet.f32 %1363, 1
  %1366 = extractvalue %dx.types.CBufRet.f32 %1363, 2
  %1367 = fadd fast float %1364, %155
  %1368 = fadd fast float %1365, %156
  %1369 = fadd fast float %1366, %157
  %1370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.f32 %1370, 0
  %1372 = call float @dx.op.unary.f32(i32 7, float %1371)  ; Saturate(value)
  %1373 = icmp eq i32 %55, 65535
  br i1 %1373, label %1468, label %1374

; <label>:1374                                    ; preds = %1362
  %1375 = lshr i32 %55, 1
  %1376 = shl i32 %1375, 2
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = and i32 %55, 1
  %1380 = icmp ne i32 %1379, 0
  %1381 = lshr i32 %1378, 16
  %1382 = and i32 %1378, 65535
  %1383 = select i1 %1380, i32 %1381, i32 %1382
  %1384 = icmp eq i32 %1383, 65535
  br i1 %1384, label %1464, label %1385

; <label>:1385                                    ; preds = %1374
  %1386 = mul nuw nsw i32 %1383, 40
  %1387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1386, i32 undef)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.ResRet.f32 %1387, 1
  %1390 = extractvalue %dx.types.ResRet.f32 %1387, 2
  %1391 = add nuw nsw i32 %1386, 12
  %1392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.f32 %1392, 0
  %1394 = extractvalue %dx.types.ResRet.f32 %1392, 1
  %1395 = extractvalue %dx.types.ResRet.f32 %1392, 2
  %1396 = add nuw nsw i32 %1386, 24
  %1397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.f32 %1397, 0
  %1399 = extractvalue %dx.types.ResRet.f32 %1397, 1
  %1400 = extractvalue %dx.types.ResRet.f32 %1397, 2
  %1401 = add nuw nsw i32 %1386, 36
  %1402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.f32 %1402, 0
  %1404 = fsub fast float %1367, %1388
  %1405 = fsub fast float %1368, %1389
  %1406 = fsub fast float %1369, %1390
  %1407 = fmul fast float %1403, %1404
  %1408 = fmul fast float %1403, %1405
  %1409 = fmul fast float %1403, %1406
  %1410 = call float @dx.op.unary.f32(i32 27, float %1407)  ; Round_ni(value)
  %1411 = call float @dx.op.unary.f32(i32 27, float %1408)  ; Round_ni(value)
  %1412 = call float @dx.op.unary.f32(i32 27, float %1409)  ; Round_ni(value)
  %1413 = fadd fast float %1410, 5.000000e-01
  %1414 = fadd fast float %1411, 5.000000e-01
  %1415 = fadd fast float %1412, 5.000000e-01
  %1416 = fmul fast float %1413, %1393
  %1417 = fmul fast float %1414, %1394
  %1418 = fmul fast float %1415, %1395
  %1419 = shl i32 %55, 2
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = add i32 %1421, 0
  %1423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1422, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1424 = call float @dx.op.unary.f32(i32 22, float %1416)  ; Frc(value)
  %1425 = call float @dx.op.unary.f32(i32 22, float %1417)  ; Frc(value)
  %1426 = call float @dx.op.unary.f32(i32 22, float %1418)  ; Frc(value)
  %1427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1423, %dx.types.Handle %49, float %1424, float %1425, float %1426, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1428 = extractvalue %dx.types.ResRet.f32 %1427, 0
  %1429 = extractvalue %dx.types.ResRet.f32 %1427, 1
  %1430 = extractvalue %dx.types.ResRet.f32 %1427, 2
  %1431 = fmul fast float %1428, 1.023000e+03
  %1432 = fmul fast float %1429, 1.023000e+03
  %1433 = fmul fast float %1430, 1.023000e+03
  %1434 = fadd fast float %1431, 5.000000e-01
  %1435 = fadd fast float %1432, 5.000000e-01
  %1436 = fadd fast float %1433, 5.000000e-01
  %1437 = call float @dx.op.unary.f32(i32 27, float %1434)  ; Round_ni(value)
  %1438 = call float @dx.op.unary.f32(i32 27, float %1435)  ; Round_ni(value)
  %1439 = call float @dx.op.unary.f32(i32 27, float %1436)  ; Round_ni(value)
  %1440 = fsub fast float %1407, %1410
  %1441 = fsub fast float %1408, %1411
  %1442 = fsub fast float %1409, %1412
  %1443 = fmul fast float %1440, 7.500000e-01
  %1444 = fmul fast float %1441, 7.500000e-01
  %1445 = fmul fast float %1442, 7.500000e-01
  %1446 = fadd fast float %1410, 1.250000e-01
  %1447 = fadd fast float %1446, %1443
  %1448 = fadd fast float %1447, %1437
  %1449 = fadd fast float %1411, 1.250000e-01
  %1450 = fadd fast float %1449, %1444
  %1451 = fadd fast float %1450, %1438
  %1452 = fadd fast float %1412, 1.250000e-01
  %1453 = fadd fast float %1452, %1445
  %1454 = fadd fast float %1453, %1439
  %1455 = fmul fast float %1448, %1398
  %1456 = fmul fast float %1451, %1399
  %1457 = fmul fast float %1454, %1400
  %1458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.i32 %1458, 0
  %1460 = add i32 %1459, 0
  %1461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1461, %dx.types.Handle %47, float %1455, float %1456, float %1457, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1463 = extractvalue %dx.types.ResRet.f32 %1462, 0
  br label %1464

; <label>:1464                                    ; preds = %1385, %1374
  %1465 = phi float [ %1463, %1385 ], [ -1.000000e+00, %1374 ]
  %1466 = fadd fast float %1465, %1372
  %1467 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  br label %1468

; <label>:1468                                    ; preds = %1464, %1362
  %1469 = phi float [ %1467, %1464 ], [ %1372, %1362 ]
  %1470 = fmul fast float %1469, %456
  br label %1471

; <label>:1471                                    ; preds = %1468, %1357
  %1472 = phi float [ %1470, %1468 ], [ %456, %1357 ]
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = and i32 %1474, 256
  %1476 = icmp eq i32 %1475, 0
  br i1 %1476, label %1523, label %1477

; <label>:1477                                    ; preds = %1471
  %1478 = add i32 %54, 428
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1478, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = add i32 %1480, 0
  %1482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1482, %dx.types.Handle %97, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1484 = extractvalue %dx.types.ResRet.f32 %1483, 0
  %1485 = add i32 %54, 116
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = shl i32 %1487, 4
  %1489 = and i32 %1488, 32752
  %1490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1489)  ; LegacyF16ToF32(value)
  %1491 = lshr i32 %1487, 7
  %1492 = and i32 %1491, 32752
  %1493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1492)  ; LegacyF16ToF32(value)
  %1494 = fsub fast float 1.000000e+00, %1472
  %1495 = call float @dx.op.binary.f32(i32 35, float %1494, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1496 = bitcast float %1472 to i32
  %1497 = sitofp i32 %1496 to float
  %1498 = fadd fast float %1497, 0xC1CFBF8940000000
  %1499 = fmul fast float %1493, %1498
  %1500 = fadd fast float %1499, 0x41CFBF8940000000
  %1501 = fptosi float %1500 to i32
  %1502 = bitcast i32 %1501 to float
  %1503 = bitcast float %1495 to i32
  %1504 = sitofp i32 %1503 to float
  %1505 = fadd fast float %1504, 0xC1CFBF8940000000
  %1506 = fmul fast float %1505, %1493
  %1507 = fadd fast float %1506, 0x41CFBF8940000000
  %1508 = fptosi float %1507 to i32
  %1509 = bitcast i32 %1508 to float
  %1510 = fmul fast float %1502, %1490
  %1511 = fmul fast float %1509, %1490
  %1512 = fsub fast float %1495, %1510
  %1513 = fadd fast float %1511, %1495
  %1514 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1515 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  %1516 = fsub fast float %1484, %1514
  %1517 = fsub fast float %1515, %1514
  %1518 = bitcast float %1517 to i32
  %1519 = sub nsw i32 2129859010, %1518
  %1520 = bitcast i32 %1519 to float
  %1521 = fmul fast float %1520, %1516
  %1522 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  br label %1523

; <label>:1523                                    ; preds = %1477, %1471
  %1524 = phi float [ %1522, %1477 ], [ %1472, %1471 ]
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 128
  %1528 = icmp eq i32 %1527, 0
  br i1 %1528, label %1545, label %1529

; <label>:1529                                    ; preds = %1523
  %1530 = add i32 %54, 412
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1530, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = add i32 %1532, 0
  %1534 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1533, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1535 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1534, %dx.types.Handle %97, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1536 = extractvalue %dx.types.ResRet.f32 %1535, 0
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = and i32 %1538, 524288
  %1540 = icmp ne i32 %1539, 0
  %1541 = fcmp fast ogt float %1536, 0x3FE0101020000000
  %1542 = select i1 %1541, float 1.000000e+00, float 0.000000e+00
  %1543 = select i1 %1540, float %1542, float %1536
  %1544 = fmul fast float %1543, %1524
  br label %1545

; <label>:1545                                    ; preds = %1529, %1523
  %1546 = phi float [ %1544, %1529 ], [ %1524, %1523 ]
  %1547 = fcmp fast ult float %1546, 0x3F70101020000000
  br i1 %1547, label %2286, label %1548

; <label>:1548                                    ; preds = %1545
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = and i32 %1550, 16
  %1552 = icmp eq i32 %1551, 0
  br i1 %1552, label %1751, label %1553

; <label>:1553                                    ; preds = %1548
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = add i32 %54, 364
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = add i32 %1558, 0
  %1560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1559, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1561 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1560, %dx.types.Handle %96, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1562 = extractvalue %dx.types.ResRet.f32 %1561, 0
  %1563 = extractvalue %dx.types.ResRet.f32 %1561, 1
  %1564 = extractvalue %dx.types.ResRet.f32 %1561, 2
  %1565 = extractvalue %dx.types.ResRet.f32 %1561, 3
  %1566 = and i32 %1555, 255
  %1567 = uitofp i32 %1566 to float
  %1568 = lshr i32 %1555, 8
  %1569 = and i32 %1568, 255
  %1570 = uitofp i32 %1569 to float
  %1571 = fmul fast float %1565, %1567
  %1572 = fadd fast float %1571, %1570
  %1573 = fmul fast float %1572, 0x3F70101000000000
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = and i32 %1575, 512
  %1577 = icmp eq i32 %1576, 0
  br i1 %1577, label %1586, label %1578

; <label>:1578                                    ; preds = %1553
  %1579 = add i32 %54, 444
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1579, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = add i32 %1581, 0
  %1583 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1582, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1584 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1583, %dx.types.Handle %97, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1585 = extractvalue %dx.types.ResRet.f32 %1584, 0
  br label %1586

; <label>:1586                                    ; preds = %1578, %1553
  %1587 = phi float [ %1585, %1578 ], [ 1.000000e+00, %1553 ]
  %1588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.i32 %1588, 0
  %1590 = and i32 %1589, 33554432
  %1591 = icmp eq i32 %1590, 0
  br i1 %1591, label %1698, label %1592

; <label>:1592                                    ; preds = %1586
  %1593 = add i32 %54, 240
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1593, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = and i32 %1595, 65535
  %1597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1596)  ; LegacyF16ToF32(value)
  %1598 = lshr i32 %1595, 16
  %1599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1598)  ; LegacyF16ToF32(value)
  %1600 = add i32 %54, 244
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1600, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = and i32 %1602, 65535
  %1604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1603)  ; LegacyF16ToF32(value)
  %1605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.i32 %1605, 0
  %1607 = lshr i32 %1606, 24
  %1608 = uitofp i32 %1607 to float
  %1609 = fmul fast float %1608, 0x3F70101020000000
  %1610 = and i32 %1606, 255
  %1611 = uitofp i32 %1610 to float
  %1612 = fmul fast float %1611, 0x3F70101020000000
  %1613 = lshr i32 %1606, 8
  %1614 = and i32 %1613, 255
  %1615 = uitofp i32 %1614 to float
  %1616 = fmul fast float %1615, 0x3F70101020000000
  %1617 = lshr i32 %1606, 16
  %1618 = and i32 %1617, 255
  %1619 = uitofp i32 %1618 to float
  %1620 = fmul fast float %1619, 0x3F70101020000000
  %1621 = add i32 %54, 236
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1621, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = lshr i32 %1623, 24
  %1625 = uitofp i32 %1624 to float
  %1626 = fmul fast float %1625, 0x3F70101020000000
  %1627 = and i32 %1623, 255
  %1628 = uitofp i32 %1627 to float
  %1629 = fmul fast float %1628, 0x3F70101020000000
  %1630 = lshr i32 %1623, 8
  %1631 = and i32 %1630, 255
  %1632 = uitofp i32 %1631 to float
  %1633 = fmul fast float %1632, 0x3F70101020000000
  %1634 = lshr i32 %1623, 16
  %1635 = and i32 %1634, 255
  %1636 = uitofp i32 %1635 to float
  %1637 = fmul fast float %1636, 0x3F70101020000000
  %1638 = bitcast float %1562 to i32
  %1639 = ashr i32 %1638, 1
  %1640 = sub nsw i32 1597463174, %1639
  %1641 = bitcast i32 %1640 to float
  %1642 = fmul fast float %1562, 5.000000e-01
  %1643 = fmul fast float %1641, %1641
  %1644 = fmul fast float %1643, %1642
  %1645 = fsub fast float 1.500000e+00, %1644
  %1646 = fmul fast float %1641, %1562
  %1647 = fmul fast float %1646, %1645
  %1648 = bitcast float %1563 to i32
  %1649 = ashr i32 %1648, 1
  %1650 = sub nsw i32 1597463174, %1649
  %1651 = bitcast i32 %1650 to float
  %1652 = fmul fast float %1563, 5.000000e-01
  %1653 = fmul fast float %1651, %1651
  %1654 = fmul fast float %1653, %1652
  %1655 = fsub fast float 1.500000e+00, %1654
  %1656 = fmul fast float %1651, %1563
  %1657 = fmul fast float %1656, %1655
  %1658 = bitcast float %1564 to i32
  %1659 = ashr i32 %1658, 1
  %1660 = sub nsw i32 1597463174, %1659
  %1661 = bitcast i32 %1660 to float
  %1662 = fmul fast float %1564, 5.000000e-01
  %1663 = fmul fast float %1661, %1661
  %1664 = fmul fast float %1663, %1662
  %1665 = fsub fast float 1.500000e+00, %1664
  %1666 = fmul fast float %1661, %1564
  %1667 = fmul fast float %1666, %1665
  %1668 = fsub fast float %1647, %1629
  %1669 = fsub fast float %1657, %1633
  %1670 = fsub fast float %1667, %1637
  %1671 = fmul fast float %1668, %1597
  %1672 = fmul fast float %1669, %1599
  %1673 = fmul fast float %1670, %1604
  %1674 = fadd fast float %1671, %1612
  %1675 = fadd fast float %1672, %1616
  %1676 = fadd fast float %1673, %1620
  %1677 = call float @dx.op.unary.f32(i32 7, float %1674)  ; Saturate(value)
  %1678 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1679 = call float @dx.op.unary.f32(i32 7, float %1676)  ; Saturate(value)
  %1680 = fmul fast float %1677, %1677
  %1681 = fmul fast float %1678, %1678
  %1682 = fmul fast float %1679, %1679
  %1683 = fsub fast float %1680, %1562
  %1684 = fsub fast float %1681, %1563
  %1685 = fsub fast float %1682, %1564
  %1686 = fmul fast float %1683, %1587
  %1687 = fmul fast float %1684, %1587
  %1688 = fmul fast float %1685, %1587
  %1689 = fadd fast float %1686, %1562
  %1690 = fadd fast float %1687, %1563
  %1691 = fadd fast float %1688, %1564
  %1692 = fadd fast float %1609, %1573
  %1693 = fsub fast float %1692, %1626
  %1694 = call float @dx.op.unary.f32(i32 7, float %1693)  ; Saturate(value)
  %1695 = fsub fast float %1694, %1573
  %1696 = fmul fast float %1695, %1587
  %1697 = fadd fast float %1696, %1573
  br label %1751

; <label>:1698                                    ; preds = %1586
  %1699 = and i32 %1589, 134217728
  %1700 = icmp eq i32 %1699, 0
  br i1 %1700, label %1735, label %1701

; <label>:1701                                    ; preds = %1698
  %1702 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %1703 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %1704 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %1705 = fadd fast float %1702, -5.000000e-01
  %1706 = fadd fast float %1703, -5.000000e-01
  %1707 = fadd fast float %1704, -5.000000e-01
  %1708 = fmul fast float %1705, %1587
  %1709 = fmul fast float %1706, %1587
  %1710 = fmul fast float %1707, %1587
  %1711 = fadd fast float %1708, 5.000000e-01
  %1712 = fadd fast float %1709, 5.000000e-01
  %1713 = fadd fast float %1710, 5.000000e-01
  %1714 = call float @dx.op.unary.f32(i32 24, float %1562)  ; Sqrt(value)
  %1715 = call float @dx.op.unary.f32(i32 24, float %1563)  ; Sqrt(value)
  %1716 = call float @dx.op.unary.f32(i32 24, float %1564)  ; Sqrt(value)
  %1717 = fmul fast float %1711, 2.000000e+00
  %1718 = fsub fast float 1.000000e+00, %1717
  %1719 = fmul fast float %1718, %1714
  %1720 = fadd fast float %1719, %1717
  %1721 = fmul fast float %1720, %1714
  %1722 = fmul fast float %1712, 2.000000e+00
  %1723 = fsub fast float 1.000000e+00, %1722
  %1724 = fmul fast float %1723, %1715
  %1725 = fadd fast float %1724, %1722
  %1726 = fmul fast float %1725, %1715
  %1727 = fmul fast float %1713, 2.000000e+00
  %1728 = fsub fast float 1.000000e+00, %1727
  %1729 = fmul fast float %1728, %1716
  %1730 = fadd fast float %1729, %1727
  %1731 = fmul fast float %1730, %1716
  %1732 = fmul fast float %1721, %1721
  %1733 = fmul fast float %1726, %1726
  %1734 = fmul fast float %1731, %1731
  br label %1751

; <label>:1735                                    ; preds = %1698
  %1736 = fmul fast float %288, %288
  %1737 = fmul fast float %292, %292
  %1738 = fmul fast float %296, %296
  %1739 = fadd fast float %1736, -1.000000e+00
  %1740 = fadd fast float %1737, -1.000000e+00
  %1741 = fadd fast float %1738, -1.000000e+00
  %1742 = fmul fast float %1587, %1739
  %1743 = fmul fast float %1587, %1740
  %1744 = fmul fast float %1587, %1741
  %1745 = fadd fast float %1742, 1.000000e+00
  %1746 = fadd fast float %1743, 1.000000e+00
  %1747 = fadd fast float %1744, 1.000000e+00
  %1748 = fmul fast float %1745, %1562
  %1749 = fmul fast float %1746, %1563
  %1750 = fmul fast float %1747, %1564
  br label %1751

; <label>:1751                                    ; preds = %1735, %1701, %1592, %1548
  %1752 = phi float [ %1697, %1592 ], [ %1573, %1701 ], [ %1573, %1735 ], [ 0x3FA23C0BE0000000, %1548 ]
  %1753 = phi float [ %1689, %1592 ], [ %1732, %1701 ], [ %1748, %1735 ], [ 1.000000e+00, %1548 ]
  %1754 = phi float [ %1690, %1592 ], [ %1733, %1701 ], [ %1749, %1735 ], [ 1.000000e+00, %1548 ]
  %1755 = phi float [ %1691, %1592 ], [ %1734, %1701 ], [ %1750, %1735 ], [ 1.000000e+00, %1548 ]
  %1756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1757 = extractvalue %dx.types.CBufRet.i32 %1756, 1
  %1758 = and i32 %1757, 1
  %1759 = icmp ne i32 %1758, 0
  %1760 = add i32 %54, 356
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = and i32 %1762, 32
  %1764 = icmp ne i32 %1763, 0
  %1765 = and i1 %1759, %1764
  %1766 = select i1 %1765, float 1.000000e+00, float %1753
  %1767 = select i1 %1765, float 0x3FD3333340000000, float %1754
  %1768 = select i1 %1765, float 0x3FD3333340000000, float %1755
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = and i32 %1770, 32
  %1772 = icmp eq i32 %1771, 0
  br i1 %1772, label %1845, label %1773

; <label>:1773                                    ; preds = %1751
  %1774 = add i32 %54, 108
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = add i32 %54, 380
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = add i32 %1779, 0
  %1781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1780, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1782 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1781, %dx.types.Handle %96, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1783 = extractvalue %dx.types.ResRet.f32 %1782, 0
  %1784 = extractvalue %dx.types.ResRet.f32 %1782, 1
  %1785 = extractvalue %dx.types.ResRet.f32 %1782, 2
  %1786 = extractvalue %dx.types.ResRet.f32 %1782, 3
  %1787 = and i32 %1776, 255
  %1788 = uitofp i32 %1787 to float
  %1789 = lshr i32 %1776, 8
  %1790 = and i32 %1789, 255
  %1791 = uitofp i32 %1790 to float
  %1792 = lshr i32 %1776, 16
  %1793 = and i32 %1792, 255
  %1794 = uitofp i32 %1793 to float
  %1795 = fmul fast float %1794, 0x3F70101000000000
  %1796 = fmul fast float %1783, %1788
  %1797 = fadd fast float %1796, %1791
  %1798 = fmul fast float %1797, 0x3F70101000000000
  %1799 = fadd fast float %1784, -5.000000e-01
  %1800 = fadd fast float %1786, -5.000000e-01
  %1801 = fmul fast float %1799, %1795
  %1802 = fmul fast float %1800, %1795
  %1803 = fadd fast float %1801, 5.000000e-01
  %1804 = fadd fast float %1802, 5.000000e-01
  %1805 = fmul fast float %1803, 2.000000e+00
  %1806 = fadd fast float %1805, -1.000000e+00
  %1807 = fmul fast float %1804, 2.000000e+00
  %1808 = fadd fast float %1807, -1.000000e+00
  %1809 = fadd fast float %1806, %1808
  %1810 = fmul fast float %1809, 5.000000e-01
  %1811 = fsub fast float %1806, %1808
  %1812 = fmul fast float %1811, 5.000000e-01
  %1813 = call float @dx.op.unary.f32(i32 6, float %1810)  ; FAbs(value)
  %1814 = fsub fast float 1.000000e+00, %1813
  %1815 = call float @dx.op.unary.f32(i32 6, float %1812)  ; FAbs(value)
  %1816 = fsub fast float %1814, %1815
  %1817 = call float @dx.op.dot3.f32(i32 55, float %1810, float %1812, float %1816, float %1810, float %1812, float %1816)  ; Dot3(ax,ay,az,bx,by,bz)
  %1818 = call float @dx.op.unary.f32(i32 25, float %1817)  ; Rsqrt(value)
  %1819 = fmul fast float %1810, %1818
  %1820 = fmul fast float %1812, %1818
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = and i32 %1822, 67108864
  %1824 = icmp eq i32 %1823, 0
  br i1 %1824, label %1841, label %1825

; <label>:1825                                    ; preds = %1773
  %1826 = add i32 %54, 296
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = and i32 %1828, 65535
  %1830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1829)  ; LegacyF16ToF32(value)
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = and i32 %1832, 65535
  %1834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1833)  ; LegacyF16ToF32(value)
  %1835 = lshr i32 %1828, 16
  %1836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1835)  ; LegacyF16ToF32(value)
  %1837 = fsub fast float %1798, %1836
  %1838 = fmul fast float %1837, %1830
  %1839 = fadd fast float %1838, %1834
  %1840 = call float @dx.op.unary.f32(i32 7, float %1839)  ; Saturate(value)
  br label %1841

; <label>:1841                                    ; preds = %1825, %1773
  %1842 = phi float [ %1840, %1825 ], [ %1798, %1773 ]
  %1843 = call float @dx.op.dot2.f32(i32 54, float %1819, float %1820, float %1262, float %1263)  ; Dot2(ax,ay,bx,by)
  %1844 = call float @dx.op.dot2.f32(i32 54, float %1819, float %1820, float %1264, float %1265)  ; Dot2(ax,ay,bx,by)
  br label %1845

; <label>:1845                                    ; preds = %1841, %1751
  %1846 = phi float [ %1842, %1841 ], [ 0x3FD6666660000000, %1751 ]
  %1847 = phi float [ %1843, %1841 ], [ 0.000000e+00, %1751 ]
  %1848 = phi float [ %1844, %1841 ], [ 0.000000e+00, %1751 ]
  %1849 = phi float [ %1785, %1841 ], [ 1.000000e+00, %1751 ]
  %1850 = add i32 %54, 176
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = lshr i32 %1852, 22
  %1854 = shl nuw nsw i32 %1853, 5
  %1855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1854)  ; LegacyF16ToF32(value)
  %1856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.i32 %1856, 0
  %1858 = and i32 %1857, 64
  %1859 = icmp eq i32 %1858, 0
  br i1 %1859, label %1893, label %1860

; <label>:1860                                    ; preds = %1845
  %1861 = add i32 %54, 396
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = add i32 %1863, 0
  %1865 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1864, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.i32 %1866, 0
  %1868 = and i32 %1867, 131072
  %1869 = icmp eq i32 %1868, 0
  %1870 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1865, %dx.types.Handle %96, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1871 = extractvalue %dx.types.ResRet.f32 %1870, 0
  %1872 = extractvalue %dx.types.ResRet.f32 %1870, 1
  %1873 = extractvalue %dx.types.ResRet.f32 %1870, 2
  %1874 = fmul fast float %1871, %276
  %1875 = fmul fast float %1872, %279
  %1876 = fmul fast float %1873, %282
  br i1 %1869, label %1883, label %1877

; <label>:1877                                    ; preds = %1860
  %1878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1879 = extractvalue %dx.types.CBufRet.f32 %1878, 0
  %1880 = fmul fast float %1879, %1874
  %1881 = fmul fast float %1879, %1875
  %1882 = fmul fast float %1879, %1876
  br label %1883

; <label>:1883                                    ; preds = %1877, %1860
  %1884 = phi float [ %1880, %1877 ], [ %1874, %1860 ]
  %1885 = phi float [ %1881, %1877 ], [ %1875, %1860 ]
  %1886 = phi float [ %1882, %1877 ], [ %1876, %1860 ]
  %1887 = fmul fast float %1884, %1855
  %1888 = select i1 %217, float %1887, float %1884
  %1889 = call float @dx.op.dot3.f32(i32 55, float %1888, float %1885, float %1886, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1890 = select i1 %217, float 0.000000e+00, float %1884
  %1891 = select i1 %217, float %1889, float %1885
  %1892 = select i1 %217, float 0.000000e+00, float %1886
  br label %1893

; <label>:1893                                    ; preds = %1883, %1845
  %1894 = phi float [ %1890, %1883 ], [ 0.000000e+00, %1845 ]
  %1895 = phi float [ %1891, %1883 ], [ 0.000000e+00, %1845 ]
  %1896 = phi float [ %1892, %1883 ], [ 0.000000e+00, %1845 ]
  %1897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.i32 %1897, 0
  %1899 = and i32 %1898, 1024
  %1900 = icmp eq i32 %1899, 0
  br i1 %1900, label %1931, label %1901

; <label>:1901                                    ; preds = %1893
  %1902 = add i32 %54, 168
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1902, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = and i32 %1904, 255
  %1906 = uitofp i32 %1905 to float
  %1907 = fmul fast float %1906, 0x3F70101020000000
  %1908 = lshr i32 %1904, 8
  %1909 = and i32 %1908, 255
  %1910 = uitofp i32 %1909 to float
  %1911 = fmul fast float %1910, 0x3F70101020000000
  %1912 = lshr i32 %1904, 16
  %1913 = and i32 %1912, 255
  %1914 = uitofp i32 %1913 to float
  %1915 = fmul fast float %1914, 0x3F70101020000000
  %1916 = fmul fast float %1907, %1907
  %1917 = fmul fast float %1911, %1911
  %1918 = fmul fast float %1915, %1915
  %1919 = add i32 %54, 460
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = add i32 %1921, 0
  %1923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1923, %dx.types.Handle %97, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1925 = extractvalue %dx.types.ResRet.f32 %1924, 0
  %1926 = extractvalue %dx.types.ResRet.f32 %1924, 1
  %1927 = extractvalue %dx.types.ResRet.f32 %1924, 2
  %1928 = fmul fast float %1916, %1925
  %1929 = fmul fast float %1917, %1926
  %1930 = fmul fast float %1918, %1927
  br label %1931

; <label>:1931                                    ; preds = %1901, %1893
  %1932 = phi float [ %1928, %1901 ], [ 0.000000e+00, %1893 ]
  %1933 = phi float [ %1929, %1901 ], [ 0.000000e+00, %1893 ]
  %1934 = phi float [ %1930, %1901 ], [ 0.000000e+00, %1893 ]
  %1935 = fcmp fast ogt float %1932, 0.000000e+00
  %1936 = fcmp fast ogt float %1933, 0.000000e+00
  %1937 = fcmp fast ogt float %1934, 0.000000e+00
  %1938 = call float @dx.op.unary.f32(i32 23, float %1932)  ; Log(value)
  %1939 = call float @dx.op.unary.f32(i32 23, float %1933)  ; Log(value)
  %1940 = call float @dx.op.unary.f32(i32 23, float %1934)  ; Log(value)
  %1941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1942 = extractvalue %dx.types.ResRet.i32 %1941, 0
  %1943 = lshr i32 %1942, 7
  %1944 = and i32 %1943, 32752
  %1945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1944)  ; LegacyF16ToF32(value)
  %1946 = fmul fast float %1938, 0xBFE62E4300000000
  %1947 = fmul fast float %1946, %1945
  %1948 = fmul fast float %1939, 0xBFE62E4300000000
  %1949 = fmul fast float %1948, %1945
  %1950 = fmul fast float %1940, 0xBFE62E4300000000
  %1951 = fmul fast float %1950, %1945
  %1952 = select i1 %1935, float %1947, float 1.270000e+02
  %1953 = select i1 %1936, float %1949, float 1.270000e+02
  %1954 = select i1 %1937, float %1951, float 1.270000e+02
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = and i32 %1956, 10240
  %1958 = icmp eq i32 %1957, 0
  br i1 %1958, label %2003, label %1959

; <label>:1959                                    ; preds = %1931
  %1960 = add i32 %54, 476
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = add i32 %1962, 0
  %1964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1963, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1965 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1964, %dx.types.Handle %97, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1966 = extractvalue %dx.types.ResRet.f32 %1965, 1
  %1967 = extractvalue %dx.types.ResRet.f32 %1965, 3
  %1968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.i32 %1968, 0
  %1970 = and i32 %1969, 1048576
  %1971 = icmp ne i32 %1970, 0
  %1972 = and i32 %1969, 8192
  %1973 = icmp eq i32 %1972, 0
  br i1 %1973, label %1989, label %1974

; <label>:1974                                    ; preds = %1959
  %1975 = extractvalue %dx.types.ResRet.f32 %1965, 2
  %1976 = select i1 %1971, float %1975, float %1966
  %1977 = extractvalue %dx.types.ResRet.f32 %1965, 0
  %1978 = select i1 %1971, float %1977, float %1966
  %1979 = add i32 %54, 112
  %1980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.i32 %1980, 0
  %1982 = lshr i32 %1981, 16
  %1983 = and i32 %1982, 255
  %1984 = uitofp i32 %1983 to float
  %1985 = fmul fast float %1984, 0x3F80101020000000
  %1986 = fmul fast float %1985, %1978
  %1987 = fmul fast float %1985, %1966
  %1988 = fmul fast float %1985, %1976
  br label %1989

; <label>:1989                                    ; preds = %1974, %1959
  %1990 = phi float [ %1986, %1974 ], [ 0.000000e+00, %1959 ]
  %1991 = phi float [ %1987, %1974 ], [ 0.000000e+00, %1959 ]
  %1992 = phi float [ %1988, %1974 ], [ 0.000000e+00, %1959 ]
  %1993 = and i32 %1969, 2048
  %1994 = icmp eq i32 %1993, 0
  br i1 %1994, label %2003, label %1995

; <label>:1995                                    ; preds = %1989
  %1996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.i32 %1996, 0
  %1998 = shl i32 %1997, 4
  %1999 = and i32 %1998, 32752
  %2000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1999)  ; LegacyF16ToF32(value)
  %2001 = fmul fast float %2000, %1967
  %2002 = call float @dx.op.binary.f32(i32 35, float %2001, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2003

; <label>:2003                                    ; preds = %1995, %1989, %1931
  %2004 = phi float [ %1990, %1995 ], [ %1990, %1989 ], [ 0.000000e+00, %1931 ]
  %2005 = phi float [ %1991, %1995 ], [ %1991, %1989 ], [ 0.000000e+00, %1931 ]
  %2006 = phi float [ %1992, %1995 ], [ %1992, %1989 ], [ 0.000000e+00, %1931 ]
  %2007 = phi float [ %2002, %1995 ], [ 0x3F70101020000000, %1989 ], [ 0x3F70101020000000, %1931 ]
  %2008 = add i32 %54, 112
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2008, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.i32 %2009, 0
  %2011 = and i32 %2010, 255
  %2012 = uitofp i32 %2011 to float
  %2013 = lshr i32 %2010, 8
  %2014 = and i32 %2013, 255
  %2015 = uitofp i32 %2014 to float
  %2016 = call float @dx.op.dot3.f32(i32 55, float %1766, float %1767, float %1768, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2017 = fmul fast float %2015, %2016
  %2018 = fadd fast float %2017, %2012
  %2019 = fmul fast float %2018, 0x3F70101020000000
  %2020 = call float @dx.op.unary.f32(i32 7, float %2019)  ; Saturate(value)
  br i1 %1250, label %2021, label %2056

; <label>:2021                                    ; preds = %2003
  %2022 = fmul fast float %2007, 2.000000e+00
  %2023 = fcmp fast olt float %1952, 1.270000e+02
  %2024 = fcmp fast olt float %1953, 1.270000e+02
  %2025 = fcmp fast olt float %1954, 1.270000e+02
  %2026 = fmul fast float %1952, 0xBFF7154760000000
  %2027 = fmul fast float %2026, %2022
  %2028 = fmul fast float %1953, 0xBFF7154760000000
  %2029 = fmul fast float %2028, %2022
  %2030 = fmul fast float %1954, 0xBFF7154760000000
  %2031 = fmul fast float %2030, %2022
  %2032 = call float @dx.op.unary.f32(i32 21, float %2027)  ; Exp(value)
  %2033 = call float @dx.op.unary.f32(i32 21, float %2029)  ; Exp(value)
  %2034 = call float @dx.op.unary.f32(i32 21, float %2031)  ; Exp(value)
  %2035 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  %2036 = call float @dx.op.unary.f32(i32 7, float %2033)  ; Saturate(value)
  %2037 = call float @dx.op.unary.f32(i32 7, float %2034)  ; Saturate(value)
  %2038 = fadd fast float %2035, -1.000000e+00
  %2039 = select i1 %2023, float %2038, float -1.000000e+00
  %2040 = fadd fast float %2036, -1.000000e+00
  %2041 = select i1 %2024, float %2040, float -1.000000e+00
  %2042 = fadd fast float %2037, -1.000000e+00
  %2043 = select i1 %2025, float %2042, float -1.000000e+00
  %2044 = fmul fast float %2039, %1546
  %2045 = fmul fast float %2041, %1546
  %2046 = fmul fast float %2043, %1546
  %2047 = fadd fast float %2044, 1.000000e+00
  %2048 = fadd fast float %2045, 1.000000e+00
  %2049 = fadd fast float %2046, 1.000000e+00
  %2050 = fmul fast float %2047, %1231
  %2051 = fmul fast float %2048, %1232
  %2052 = fmul fast float %2049, %1233
  %2053 = fmul fast float %2047, %1234
  %2054 = fmul fast float %2048, %1235
  %2055 = fmul fast float %2049, %1236
  br label %2056

; <label>:2056                                    ; preds = %2021, %2003
  %2057 = phi float [ %2050, %2021 ], [ %1231, %2003 ]
  %2058 = phi float [ %2051, %2021 ], [ %1232, %2003 ]
  %2059 = phi float [ %2052, %2021 ], [ %1233, %2003 ]
  %2060 = phi float [ %2053, %2021 ], [ %1234, %2003 ]
  %2061 = phi float [ %2054, %2021 ], [ %1235, %2003 ]
  %2062 = phi float [ %2055, %2021 ], [ %1236, %2003 ]
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = and i32 %2064, 3
  %2066 = icmp eq i32 %2065, 3
  br i1 %2066, label %2145, label %2067

; <label>:2067                                    ; preds = %2056
  %2068 = and i32 %2064, 16
  %2069 = icmp ne i32 %2068, 0
  %2070 = select i1 %2069, float %1546, float 0.000000e+00
  %2071 = icmp eq i32 %2065, 0
  br i1 %2071, label %2072, label %2100

; <label>:2072                                    ; preds = %2067
  %2073 = and i32 %2064, 64
  %2074 = icmp ne i32 %2073, 0
  %2075 = select i1 %2074, float %1546, float 0.000000e+00
  %2076 = fsub fast float %1766, %2057
  %2077 = fsub fast float %1767, %2058
  %2078 = fsub fast float %1768, %2059
  %2079 = fmul fast float %2070, %2076
  %2080 = fmul fast float %2070, %2077
  %2081 = fmul fast float %2070, %2078
  %2082 = fadd fast float %2079, %2057
  %2083 = fadd fast float %2080, %2058
  %2084 = fadd fast float %2081, %2059
  %2085 = fsub fast float %1752, %1243
  %2086 = fmul fast float %2070, %2085
  %2087 = fadd fast float %2086, %1243
  %2088 = fsub fast float %1894, %2060
  %2089 = fsub fast float %1895, %2061
  %2090 = fsub fast float %1896, %2062
  %2091 = fmul fast float %2075, %2088
  %2092 = fmul fast float %2075, %2089
  %2093 = fmul fast float %2075, %2090
  %2094 = fadd fast float %2091, %2060
  %2095 = fadd fast float %2092, %2061
  %2096 = fadd fast float %2093, %2062
  %2097 = fsub fast float %2020, %1248
  %2098 = fmul fast float %2070, %2097
  %2099 = fadd fast float %2098, %1248
  br label %2145

; <label>:2100                                    ; preds = %2067
  %2101 = icmp eq i32 %2065, 1
  br i1 %2101, label %2102, label %2115

; <label>:2102                                    ; preds = %2100
  %2103 = fadd fast float %1766, -1.000000e+00
  %2104 = fadd fast float %1767, -1.000000e+00
  %2105 = fadd fast float %1768, -1.000000e+00
  %2106 = fmul fast float %2070, %2103
  %2107 = fmul fast float %2070, %2104
  %2108 = fmul fast float %2070, %2105
  %2109 = fadd fast float %2106, 1.000000e+00
  %2110 = fadd fast float %2107, 1.000000e+00
  %2111 = fadd fast float %2108, 1.000000e+00
  %2112 = fmul fast float %2109, %2057
  %2113 = fmul fast float %2110, %2058
  %2114 = fmul fast float %2111, %2059
  br label %2145

; <label>:2115                                    ; preds = %2100
  %2116 = icmp eq i32 %2065, 2
  br i1 %2116, label %2117, label %2145

; <label>:2117                                    ; preds = %2115
  %2118 = call float @dx.op.unary.f32(i32 24, float %1766)  ; Sqrt(value)
  %2119 = call float @dx.op.unary.f32(i32 24, float %1767)  ; Sqrt(value)
  %2120 = call float @dx.op.unary.f32(i32 24, float %1768)  ; Sqrt(value)
  %2121 = fadd fast float %2118, -5.000000e-01
  %2122 = fadd fast float %2119, -5.000000e-01
  %2123 = fadd fast float %2120, -5.000000e-01
  %2124 = fmul fast float %2121, %2070
  %2125 = fmul fast float %2122, %2070
  %2126 = fmul fast float %2123, %2070
  %2127 = fadd fast float %2124, 5.000000e-01
  %2128 = fadd fast float %2125, 5.000000e-01
  %2129 = fadd fast float %2126, 5.000000e-01
  %2130 = fmul fast float %2127, 2.000000e+00
  %2131 = fsub fast float 1.000000e+00, %2130
  %2132 = fmul fast float %2131, %2057
  %2133 = fadd fast float %2132, %2130
  %2134 = fmul fast float %2133, %2057
  %2135 = fmul fast float %2128, 2.000000e+00
  %2136 = fsub fast float 1.000000e+00, %2135
  %2137 = fmul fast float %2136, %2058
  %2138 = fadd fast float %2137, %2135
  %2139 = fmul fast float %2138, %2058
  %2140 = fmul fast float %2129, 2.000000e+00
  %2141 = fsub fast float 1.000000e+00, %2140
  %2142 = fmul fast float %2141, %2059
  %2143 = fadd fast float %2142, %2140
  %2144 = fmul fast float %2143, %2059
  br label %2145

; <label>:2145                                    ; preds = %2117, %2115, %2102, %2072, %2056
  %2146 = phi float [ %2057, %2056 ], [ %2134, %2117 ], [ %2057, %2115 ], [ %2112, %2102 ], [ %2082, %2072 ]
  %2147 = phi float [ %2058, %2056 ], [ %2139, %2117 ], [ %2058, %2115 ], [ %2113, %2102 ], [ %2083, %2072 ]
  %2148 = phi float [ %2059, %2056 ], [ %2144, %2117 ], [ %2059, %2115 ], [ %2114, %2102 ], [ %2084, %2072 ]
  %2149 = phi float [ %2060, %2056 ], [ %2060, %2117 ], [ %2060, %2115 ], [ %2060, %2102 ], [ %2094, %2072 ]
  %2150 = phi float [ %2061, %2056 ], [ %2061, %2117 ], [ %2061, %2115 ], [ %2061, %2102 ], [ %2095, %2072 ]
  %2151 = phi float [ %2062, %2056 ], [ %2062, %2117 ], [ %2062, %2115 ], [ %2062, %2102 ], [ %2096, %2072 ]
  %2152 = phi float [ %1243, %2056 ], [ %1243, %2117 ], [ %1243, %2115 ], [ %1243, %2102 ], [ %2087, %2072 ]
  %2153 = phi float [ %1248, %2056 ], [ %1248, %2117 ], [ %1248, %2115 ], [ %1248, %2102 ], [ %2099, %2072 ]
  %2154 = and i32 %2064, 12
  %2155 = icmp eq i32 %2154, 12
  br i1 %2155, label %2286, label %2156

; <label>:2156                                    ; preds = %2145
  %2157 = and i32 %2064, 2097184
  %2158 = icmp eq i32 %2157, 2097184
  %2159 = select i1 %2158, float %1546, float 0.000000e+00
  %2160 = and i32 %2064, 4194336
  %2161 = icmp eq i32 %2160, 4194336
  %2162 = select i1 %2161, float %1546, float 0.000000e+00
  %2163 = and i32 %2064, 8388640
  %2164 = icmp eq i32 %2163, 8388640
  %2165 = select i1 %2164, float %1546, float 0.000000e+00
  %2166 = and i32 %2064, 1024
  %2167 = icmp ne i32 %2166, 0
  %2168 = select i1 %2167, float %1546, float 0.000000e+00
  %2169 = and i32 %2064, 2048
  %2170 = icmp ne i32 %2169, 0
  %2171 = select i1 %2170, float %1546, float 0.000000e+00
  %2172 = and i32 %2064, 8192
  %2173 = icmp ne i32 %2172, 0
  %2174 = select i1 %2173, float %1546, float 0.000000e+00
  %2175 = icmp eq i32 %2154, 0
  br i1 %2175, label %2176, label %2210

; <label>:2176                                    ; preds = %2156
  %2177 = fsub fast float %1847, %1229
  %2178 = fsub fast float %1848, %1230
  %2179 = fmul fast float %2159, %2177
  %2180 = fmul fast float %2159, %2178
  %2181 = fadd fast float %2179, %1229
  %2182 = fadd fast float %2180, %1230
  %2183 = fsub fast float %1849, %1246
  %2184 = fmul fast float %2162, %2183
  %2185 = fadd fast float %2184, %1246
  %2186 = fsub fast float %1846, %1245
  %2187 = fmul fast float %2165, %2186
  %2188 = fadd fast float %2187, %1245
  %2189 = fsub fast float %1952, %1240
  %2190 = fsub fast float %1953, %1241
  %2191 = fsub fast float %1954, %1242
  %2192 = fmul fast float %2168, %2189
  %2193 = fmul fast float %2168, %2190
  %2194 = fmul fast float %2168, %2191
  %2195 = fadd fast float %2192, %1240
  %2196 = fadd fast float %2193, %1241
  %2197 = fadd fast float %2194, %1242
  %2198 = fsub fast float %2007, %1247
  %2199 = fmul fast float %2171, %2198
  %2200 = fadd fast float %2199, %1247
  %2201 = fsub fast float %2004, %1237
  %2202 = fsub fast float %2005, %1238
  %2203 = fsub fast float %2006, %1239
  %2204 = fmul fast float %2174, %2201
  %2205 = fmul fast float %2174, %2202
  %2206 = fmul fast float %2174, %2203
  %2207 = fadd fast float %2204, %1237
  %2208 = fadd fast float %2205, %1238
  %2209 = fadd fast float %2206, %1239
  br label %2286

; <label>:2210                                    ; preds = %2156
  %2211 = icmp eq i32 %2154, 4
  br i1 %2211, label %2212, label %2258

; <label>:2212                                    ; preds = %2210
  %2213 = fmul fast float %2159, %1847
  %2214 = fmul fast float %2159, %1848
  %2215 = fadd fast float %2213, %1229
  %2216 = fadd fast float %2214, %1230
  %2217 = call float @dx.op.binary.f32(i32 36, float %1246, float %1849)  ; FMin(a,b)
  %2218 = fsub fast float %2217, %1246
  %2219 = fmul fast float %2218, %2162
  %2220 = fadd fast float %2219, %1246
  %2221 = fadd fast float %1846, %1245
  %2222 = fmul fast float %2221, 0x3FF337FAE0000000
  %2223 = fmul fast float %1245, %1245
  %2224 = fmul fast float %1846, %1846
  %2225 = fadd fast float %2224, %2223
  %2226 = fmul fast float %2225, 0x3FE5152B00000000
  %2227 = fmul fast float %1245, 0xBFCC1F85E0000000
  %2228 = fmul fast float %2227, %1846
  %2229 = fadd fast float %2228, 0xBFE1363700000000
  %2230 = fadd fast float %2229, %2222
  %2231 = fsub fast float %2230, %2226
  %2232 = fmul fast float %2221, 0x3FBA6F0D00000000
  %2233 = fmul fast float %2225, 0x3FD0432880000000
  %2234 = fmul fast float %1245, 0xBFEF110800000000
  %2235 = fmul fast float %2234, %1846
  %2236 = fadd fast float %2235, 1.000000e+00
  %2237 = fsub fast float %2236, %2232
  %2238 = fadd fast float %2237, %2233
  %2239 = fdiv fast float %2231, %2238
  %2240 = call float @dx.op.unary.f32(i32 7, float %2239)  ; Saturate(value)
  %2241 = fsub fast float %2240, %1245
  %2242 = fmul fast float %2241, %2165
  %2243 = fadd fast float %2242, %1245
  %2244 = fmul fast float %2168, %1952
  %2245 = fmul fast float %2168, %1953
  %2246 = fmul fast float %2168, %1954
  %2247 = fadd fast float %2244, %1240
  %2248 = fadd fast float %2245, %1241
  %2249 = fadd fast float %2246, %1242
  %2250 = fmul fast float %2171, %2007
  %2251 = fadd fast float %2250, %1247
  %2252 = fmul fast float %2174, %2004
  %2253 = fmul fast float %2174, %2005
  %2254 = fmul fast float %2174, %2006
  %2255 = fadd fast float %2252, %1237
  %2256 = fadd fast float %2253, %1238
  %2257 = fadd fast float %2254, %1239
  br label %2286

; <label>:2258                                    ; preds = %2210
  %2259 = icmp eq i32 %2154, 8
  br i1 %2259, label %2260, label %2286

; <label>:2260                                    ; preds = %2258
  %2261 = fmul fast float %2159, %1847
  %2262 = fmul fast float %2159, %1848
  %2263 = fadd fast float %2261, %1229
  %2264 = fadd fast float %2262, %1230
  %2265 = call float @dx.op.binary.f32(i32 36, float %1246, float %1849)  ; FMin(a,b)
  %2266 = fsub fast float %2265, %1246
  %2267 = fmul fast float %2266, %2162
  %2268 = fadd fast float %2267, %1246
  %2269 = fsub fast float %1846, %1245
  %2270 = fmul fast float %2165, %2269
  %2271 = fadd fast float %2270, %1245
  %2272 = fmul fast float %2168, %1952
  %2273 = fmul fast float %2168, %1953
  %2274 = fmul fast float %2168, %1954
  %2275 = fadd fast float %2272, %1240
  %2276 = fadd fast float %2273, %1241
  %2277 = fadd fast float %2274, %1242
  %2278 = fmul fast float %2171, %2007
  %2279 = fadd fast float %2278, %1247
  %2280 = fmul fast float %2174, %2004
  %2281 = fmul fast float %2174, %2005
  %2282 = fmul fast float %2174, %2006
  %2283 = fadd fast float %2280, %1237
  %2284 = fadd fast float %2281, %1238
  %2285 = fadd fast float %2282, %1239
  br label %2286

; <label>:2286                                    ; preds = %2260, %2258, %2212, %2176, %2145, %1545, %1249, %1228
  %2287 = phi float [ %1229, %2145 ], [ %1229, %1545 ], [ %1229, %1228 ], [ %2263, %2260 ], [ %1229, %2258 ], [ %2215, %2212 ], [ %2181, %2176 ], [ %1229, %1249 ]
  %2288 = phi float [ %1230, %2145 ], [ %1230, %1545 ], [ %1230, %1228 ], [ %2264, %2260 ], [ %1230, %2258 ], [ %2216, %2212 ], [ %2182, %2176 ], [ %1230, %1249 ]
  %2289 = phi float [ %2146, %2145 ], [ %1231, %1545 ], [ %1231, %1228 ], [ %2146, %2260 ], [ %2146, %2258 ], [ %2146, %2212 ], [ %2146, %2176 ], [ %1231, %1249 ]
  %2290 = phi float [ %2147, %2145 ], [ %1232, %1545 ], [ %1232, %1228 ], [ %2147, %2260 ], [ %2147, %2258 ], [ %2147, %2212 ], [ %2147, %2176 ], [ %1232, %1249 ]
  %2291 = phi float [ %2148, %2145 ], [ %1233, %1545 ], [ %1233, %1228 ], [ %2148, %2260 ], [ %2148, %2258 ], [ %2148, %2212 ], [ %2148, %2176 ], [ %1233, %1249 ]
  %2292 = phi float [ %2149, %2145 ], [ %1234, %1545 ], [ %1234, %1228 ], [ %2149, %2260 ], [ %2149, %2258 ], [ %2149, %2212 ], [ %2149, %2176 ], [ %1234, %1249 ]
  %2293 = phi float [ %2150, %2145 ], [ %1235, %1545 ], [ %1235, %1228 ], [ %2150, %2260 ], [ %2150, %2258 ], [ %2150, %2212 ], [ %2150, %2176 ], [ %1235, %1249 ]
  %2294 = phi float [ %2151, %2145 ], [ %1236, %1545 ], [ %1236, %1228 ], [ %2151, %2260 ], [ %2151, %2258 ], [ %2151, %2212 ], [ %2151, %2176 ], [ %1236, %1249 ]
  %2295 = phi float [ %1237, %2145 ], [ %1237, %1545 ], [ %1237, %1228 ], [ %2283, %2260 ], [ %1237, %2258 ], [ %2255, %2212 ], [ %2207, %2176 ], [ %1237, %1249 ]
  %2296 = phi float [ %1238, %2145 ], [ %1238, %1545 ], [ %1238, %1228 ], [ %2284, %2260 ], [ %1238, %2258 ], [ %2256, %2212 ], [ %2208, %2176 ], [ %1238, %1249 ]
  %2297 = phi float [ %1239, %2145 ], [ %1239, %1545 ], [ %1239, %1228 ], [ %2285, %2260 ], [ %1239, %2258 ], [ %2257, %2212 ], [ %2209, %2176 ], [ %1239, %1249 ]
  %2298 = phi float [ %1240, %2145 ], [ %1240, %1545 ], [ %1240, %1228 ], [ %2275, %2260 ], [ %1240, %2258 ], [ %2247, %2212 ], [ %2195, %2176 ], [ %1240, %1249 ]
  %2299 = phi float [ %1241, %2145 ], [ %1241, %1545 ], [ %1241, %1228 ], [ %2276, %2260 ], [ %1241, %2258 ], [ %2248, %2212 ], [ %2196, %2176 ], [ %1241, %1249 ]
  %2300 = phi float [ %1242, %2145 ], [ %1242, %1545 ], [ %1242, %1228 ], [ %2277, %2260 ], [ %1242, %2258 ], [ %2249, %2212 ], [ %2197, %2176 ], [ %1242, %1249 ]
  %2301 = phi float [ %2152, %2145 ], [ %1243, %1545 ], [ %1243, %1228 ], [ %2152, %2260 ], [ %2152, %2258 ], [ %2152, %2212 ], [ %2152, %2176 ], [ %1243, %1249 ]
  %2302 = phi float [ %1245, %2145 ], [ %1245, %1545 ], [ %1245, %1228 ], [ %2271, %2260 ], [ %1245, %2258 ], [ %2243, %2212 ], [ %2188, %2176 ], [ %1245, %1249 ]
  %2303 = phi float [ %1246, %2145 ], [ %1246, %1545 ], [ %1246, %1228 ], [ %2268, %2260 ], [ %1246, %2258 ], [ %2220, %2212 ], [ %2185, %2176 ], [ %1246, %1249 ]
  %2304 = phi float [ %1247, %2145 ], [ %1247, %1545 ], [ %1247, %1228 ], [ %2279, %2260 ], [ %1247, %2258 ], [ %2251, %2212 ], [ %2200, %2176 ], [ %1247, %1249 ]
  %2305 = phi float [ %2153, %2145 ], [ %1248, %1545 ], [ %1248, %1228 ], [ %2153, %2260 ], [ %2153, %2258 ], [ %2153, %2212 ], [ %2153, %2176 ], [ %1248, %1249 ]
  br i1 %403, label %3343, label %2306

; <label>:2306                                    ; preds = %2286
  %2307 = icmp ult i32 %459, 3
  %2308 = add i32 %54, 56
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = add i32 %54, 60
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = or i32 %2313, %2310
  %2315 = icmp eq i32 %2314, 0
  br i1 %2315, label %3343, label %2316

; <label>:2316                                    ; preds = %2306
  %2317 = and i32 %2310, 262144
  %2318 = icmp ne i32 %2317, 0
  %2319 = select i1 %2318, float %57, float 1.000000e+00
  %2320 = select i1 %2318, float %58, float 0.000000e+00
  %2321 = select i1 %2318, float %59, float 0.000000e+00
  %2322 = select i1 %2318, float %60, float 1.000000e+00
  %2323 = select i1 %2318, float %61, float %82
  %2324 = select i1 %2318, float %62, float %83
  %2325 = add i32 %54, 316
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = lshr i32 %2327, 16
  %2329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2328)  ; LegacyF16ToF32(value)
  %2330 = fmul fast float %2329, 0x3F50624DE0000000
  %2331 = add i32 %54, 120
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = lshr i32 %2333, 16
  %2335 = and i32 %2334, 255
  %2336 = lshr i32 %2333, 24
  %2337 = add i32 %54, 324
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = and i32 %2339, 65535
  %2341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2340)  ; LegacyF16ToF32(value)
  %2342 = lshr i32 %2339, 16
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = add i32 %54, 64
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = lshr i32 %2346, 22
  %2348 = shl nuw nsw i32 %2347, 5
  %2349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2348)  ; LegacyF16ToF32(value)
  %2350 = shl i32 %2346, 4
  %2351 = and i32 %2350, 32752
  %2352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2351)  ; LegacyF16ToF32(value)
  %2353 = lshr i32 %2346, 7
  %2354 = and i32 %2353, 32752
  %2355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2354)  ; LegacyF16ToF32(value)
  %2356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2357 = extractvalue %dx.types.CBufRet.f32 %2356, 3
  %2358 = fmul fast float %2357, 1.000000e+03
  %2359 = fmul fast float %353, %2358
  %2360 = call float @dx.op.unary.f32(i32 22, float %2359)  ; Frc(value)
  %2361 = fadd fast float %2360, %343
  %2362 = fmul fast float %354, %2358
  %2363 = call float @dx.op.unary.f32(i32 22, float %2362)  ; Frc(value)
  %2364 = fadd fast float %2363, %345
  %2365 = fmul fast float %2330, %2358
  %2366 = call float @dx.op.unary.f32(i32 22, float %2365)  ; Frc(value)
  %2367 = fmul fast float %2366, 0x401921FB60000000
  %2368 = fadd fast float %2367, %2349
  %2369 = call float @dx.op.unary.f32(i32 13, float %2368)  ; Sin(value)
  %2370 = call float @dx.op.unary.f32(i32 12, float %2368)  ; Cos(value)
  %2371 = fsub fast float -0.000000e+00, %2369
  %2372 = fadd fast float %2323, -5.000000e-01
  %2373 = fadd fast float %2324, -5.000000e-01
  %2374 = fmul fast float %2341, %2372
  %2375 = fmul fast float %2343, %2373
  %2376 = fadd fast float %2374, 5.000000e-01
  %2377 = fadd fast float %2375, 5.000000e-01
  %2378 = fmul fast float %2352, %2376
  %2379 = fmul fast float %2355, %2377
  %2380 = fmul fast float %2370, %2378
  %2381 = call float @dx.op.tertiary.f32(i32 46, float %2371, float %2379, float %2380)  ; FMad(a,b,c)
  %2382 = fmul fast float %2369, %2378
  %2383 = call float @dx.op.tertiary.f32(i32 46, float %2370, float %2379, float %2382)  ; FMad(a,b,c)
  %2384 = fadd fast float %2361, %2381
  %2385 = fadd fast float %2364, %2383
  %2386 = icmp ugt i32 %2335, 1
  %2387 = icmp ugt i32 %2333, 33554431
  %2388 = or i1 %2387, %2386
  br i1 %2388, label %2389, label %2414

; <label>:2389                                    ; preds = %2316
  %2390 = add i32 %54, 260
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = lshr i32 %2392, 16
  %2394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2393)  ; LegacyF16ToF32(value)
  %2395 = fmul fast float %2357, %2394
  %2396 = call float @dx.op.unary.f32(i32 22, float %2395)  ; Frc(value)
  %2397 = mul nuw nsw i32 %2335, %2336
  %2398 = uitofp i32 %2397 to float
  %2399 = fmul fast float %2396, %2398
  %2400 = call float @dx.op.unary.f32(i32 27, float %2399)  ; Round_ni(value)
  %2401 = fptoui float %2400 to i32
  %2402 = urem i32 %2401, %2335
  %2403 = udiv i32 %2401, %2336
  %2404 = call float @dx.op.unary.f32(i32 22, float %2384)  ; Frc(value)
  %2405 = call float @dx.op.unary.f32(i32 22, float %2385)  ; Frc(value)
  %2406 = uitofp i32 %2402 to float
  %2407 = uitofp i32 %2403 to float
  %2408 = fadd fast float %2404, %2406
  %2409 = fadd fast float %2405, %2407
  %2410 = uitofp i32 %2335 to float
  %2411 = uitofp i32 %2336 to float
  %2412 = fdiv fast float %2408, %2410
  %2413 = fdiv fast float %2409, %2411
  br label %2414

; <label>:2414                                    ; preds = %2389, %2316
  %2415 = phi float [ %2412, %2389 ], [ %2384, %2316 ]
  %2416 = phi float [ %2413, %2389 ], [ %2385, %2316 ]
  %2417 = and i32 %2310, 16777216
  %2418 = icmp eq i32 %2417, 0
  br i1 %2418, label %2528, label %2419

; <label>:2419                                    ; preds = %2414
  %2420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2421 = extractvalue %dx.types.CBufRet.f32 %2420, 0
  %2422 = extractvalue %dx.types.CBufRet.f32 %2420, 1
  %2423 = extractvalue %dx.types.CBufRet.f32 %2420, 2
  %2424 = fadd fast float %2421, %155
  %2425 = fadd fast float %2422, %156
  %2426 = fadd fast float %2423, %157
  %2427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2428 = extractvalue %dx.types.CBufRet.f32 %2427, 0
  %2429 = call float @dx.op.unary.f32(i32 7, float %2428)  ; Saturate(value)
  %2430 = icmp eq i32 %55, 65535
  br i1 %2430, label %2525, label %2431

; <label>:2431                                    ; preds = %2419
  %2432 = lshr i32 %55, 1
  %2433 = shl i32 %2432, 2
  %2434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.i32 %2434, 0
  %2436 = and i32 %55, 1
  %2437 = icmp ne i32 %2436, 0
  %2438 = lshr i32 %2435, 16
  %2439 = and i32 %2435, 65535
  %2440 = select i1 %2437, i32 %2438, i32 %2439
  %2441 = icmp eq i32 %2440, 65535
  br i1 %2441, label %2521, label %2442

; <label>:2442                                    ; preds = %2431
  %2443 = mul nuw nsw i32 %2440, 40
  %2444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2443, i32 undef)  ; BufferLoad(srv,index,wot)
  %2445 = extractvalue %dx.types.ResRet.f32 %2444, 0
  %2446 = extractvalue %dx.types.ResRet.f32 %2444, 1
  %2447 = extractvalue %dx.types.ResRet.f32 %2444, 2
  %2448 = add nuw nsw i32 %2443, 12
  %2449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.f32 %2449, 0
  %2451 = extractvalue %dx.types.ResRet.f32 %2449, 1
  %2452 = extractvalue %dx.types.ResRet.f32 %2449, 2
  %2453 = add nuw nsw i32 %2443, 24
  %2454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.f32 %2454, 0
  %2456 = extractvalue %dx.types.ResRet.f32 %2454, 1
  %2457 = extractvalue %dx.types.ResRet.f32 %2454, 2
  %2458 = add nuw nsw i32 %2443, 36
  %2459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2458, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.f32 %2459, 0
  %2461 = fsub fast float %2424, %2445
  %2462 = fsub fast float %2425, %2446
  %2463 = fsub fast float %2426, %2447
  %2464 = fmul fast float %2460, %2461
  %2465 = fmul fast float %2460, %2462
  %2466 = fmul fast float %2460, %2463
  %2467 = call float @dx.op.unary.f32(i32 27, float %2464)  ; Round_ni(value)
  %2468 = call float @dx.op.unary.f32(i32 27, float %2465)  ; Round_ni(value)
  %2469 = call float @dx.op.unary.f32(i32 27, float %2466)  ; Round_ni(value)
  %2470 = fadd fast float %2467, 5.000000e-01
  %2471 = fadd fast float %2468, 5.000000e-01
  %2472 = fadd fast float %2469, 5.000000e-01
  %2473 = fmul fast float %2470, %2450
  %2474 = fmul fast float %2471, %2451
  %2475 = fmul fast float %2472, %2452
  %2476 = shl i32 %55, 2
  %2477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2476, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.i32 %2477, 0
  %2479 = add i32 %2478, 0
  %2480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2481 = call float @dx.op.unary.f32(i32 22, float %2473)  ; Frc(value)
  %2482 = call float @dx.op.unary.f32(i32 22, float %2474)  ; Frc(value)
  %2483 = call float @dx.op.unary.f32(i32 22, float %2475)  ; Frc(value)
  %2484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2480, %dx.types.Handle %49, float %2481, float %2482, float %2483, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2485 = extractvalue %dx.types.ResRet.f32 %2484, 0
  %2486 = extractvalue %dx.types.ResRet.f32 %2484, 1
  %2487 = extractvalue %dx.types.ResRet.f32 %2484, 2
  %2488 = fmul fast float %2485, 1.023000e+03
  %2489 = fmul fast float %2486, 1.023000e+03
  %2490 = fmul fast float %2487, 1.023000e+03
  %2491 = fadd fast float %2488, 5.000000e-01
  %2492 = fadd fast float %2489, 5.000000e-01
  %2493 = fadd fast float %2490, 5.000000e-01
  %2494 = call float @dx.op.unary.f32(i32 27, float %2491)  ; Round_ni(value)
  %2495 = call float @dx.op.unary.f32(i32 27, float %2492)  ; Round_ni(value)
  %2496 = call float @dx.op.unary.f32(i32 27, float %2493)  ; Round_ni(value)
  %2497 = fsub fast float %2464, %2467
  %2498 = fsub fast float %2465, %2468
  %2499 = fsub fast float %2466, %2469
  %2500 = fmul fast float %2497, 7.500000e-01
  %2501 = fmul fast float %2498, 7.500000e-01
  %2502 = fmul fast float %2499, 7.500000e-01
  %2503 = fadd fast float %2467, 1.250000e-01
  %2504 = fadd fast float %2503, %2500
  %2505 = fadd fast float %2504, %2494
  %2506 = fadd fast float %2468, 1.250000e-01
  %2507 = fadd fast float %2506, %2501
  %2508 = fadd fast float %2507, %2495
  %2509 = fadd fast float %2469, 1.250000e-01
  %2510 = fadd fast float %2509, %2502
  %2511 = fadd fast float %2510, %2496
  %2512 = fmul fast float %2505, %2455
  %2513 = fmul fast float %2508, %2456
  %2514 = fmul fast float %2511, %2457
  %2515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2476, i32 undef)  ; BufferLoad(srv,index,wot)
  %2516 = extractvalue %dx.types.ResRet.i32 %2515, 0
  %2517 = add i32 %2516, 0
  %2518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2517, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2518, %dx.types.Handle %47, float %2512, float %2513, float %2514, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2520 = extractvalue %dx.types.ResRet.f32 %2519, 0
  br label %2521

; <label>:2521                                    ; preds = %2442, %2431
  %2522 = phi float [ %2520, %2442 ], [ -1.000000e+00, %2431 ]
  %2523 = fadd fast float %2522, %2429
  %2524 = call float @dx.op.unary.f32(i32 7, float %2523)  ; Saturate(value)
  br label %2525

; <label>:2525                                    ; preds = %2521, %2419
  %2526 = phi float [ %2524, %2521 ], [ %2429, %2419 ]
  %2527 = fmul fast float %2526, %455
  br label %2528

; <label>:2528                                    ; preds = %2525, %2414
  %2529 = phi float [ %2527, %2525 ], [ %455, %2414 ]
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = and i32 %2531, 256
  %2533 = icmp eq i32 %2532, 0
  br i1 %2533, label %2580, label %2534

; <label>:2534                                    ; preds = %2528
  %2535 = add i32 %54, 432
  %2536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.i32 %2536, 0
  %2538 = add i32 %2537, 0
  %2539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2538, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2540 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2539, %dx.types.Handle %97, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2541 = extractvalue %dx.types.ResRet.f32 %2540, 0
  %2542 = add i32 %54, 132
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = shl i32 %2544, 4
  %2546 = and i32 %2545, 32752
  %2547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2546)  ; LegacyF16ToF32(value)
  %2548 = lshr i32 %2544, 7
  %2549 = and i32 %2548, 32752
  %2550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2549)  ; LegacyF16ToF32(value)
  %2551 = fsub fast float 1.000000e+00, %2529
  %2552 = call float @dx.op.binary.f32(i32 35, float %2551, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2553 = bitcast float %2529 to i32
  %2554 = sitofp i32 %2553 to float
  %2555 = fadd fast float %2554, 0xC1CFBF8940000000
  %2556 = fmul fast float %2550, %2555
  %2557 = fadd fast float %2556, 0x41CFBF8940000000
  %2558 = fptosi float %2557 to i32
  %2559 = bitcast i32 %2558 to float
  %2560 = bitcast float %2552 to i32
  %2561 = sitofp i32 %2560 to float
  %2562 = fadd fast float %2561, 0xC1CFBF8940000000
  %2563 = fmul fast float %2562, %2550
  %2564 = fadd fast float %2563, 0x41CFBF8940000000
  %2565 = fptosi float %2564 to i32
  %2566 = bitcast i32 %2565 to float
  %2567 = fmul fast float %2559, %2547
  %2568 = fmul fast float %2566, %2547
  %2569 = fsub fast float %2552, %2567
  %2570 = fadd fast float %2568, %2552
  %2571 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  %2572 = call float @dx.op.unary.f32(i32 7, float %2570)  ; Saturate(value)
  %2573 = fsub fast float %2541, %2571
  %2574 = fsub fast float %2572, %2571
  %2575 = bitcast float %2574 to i32
  %2576 = sub nsw i32 2129859010, %2575
  %2577 = bitcast i32 %2576 to float
  %2578 = fmul fast float %2577, %2573
  %2579 = call float @dx.op.unary.f32(i32 7, float %2578)  ; Saturate(value)
  br label %2580

; <label>:2580                                    ; preds = %2534, %2528
  %2581 = phi float [ %2579, %2534 ], [ %2529, %2528 ]
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = and i32 %2583, 128
  %2585 = icmp eq i32 %2584, 0
  br i1 %2585, label %2602, label %2586

; <label>:2586                                    ; preds = %2580
  %2587 = add i32 %54, 416
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2587, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = add i32 %2589, 0
  %2591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2590, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2592 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2591, %dx.types.Handle %97, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2593 = extractvalue %dx.types.ResRet.f32 %2592, 0
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = and i32 %2595, 524288
  %2597 = icmp ne i32 %2596, 0
  %2598 = fcmp fast ogt float %2593, 0x3FE0101020000000
  %2599 = select i1 %2598, float 1.000000e+00, float 0.000000e+00
  %2600 = select i1 %2597, float %2599, float %2593
  %2601 = fmul fast float %2600, %2581
  br label %2602

; <label>:2602                                    ; preds = %2586, %2580
  %2603 = phi float [ %2601, %2586 ], [ %2581, %2580 ]
  %2604 = fcmp fast ult float %2603, 0x3F70101020000000
  br i1 %2604, label %3343, label %2605

; <label>:2605                                    ; preds = %2602
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = and i32 %2607, 16
  %2609 = icmp eq i32 %2608, 0
  br i1 %2609, label %2808, label %2610

; <label>:2610                                    ; preds = %2605
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = add i32 %54, 368
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2613, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = add i32 %2615, 0
  %2617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2618 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2617, %dx.types.Handle %96, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2619 = extractvalue %dx.types.ResRet.f32 %2618, 0
  %2620 = extractvalue %dx.types.ResRet.f32 %2618, 1
  %2621 = extractvalue %dx.types.ResRet.f32 %2618, 2
  %2622 = extractvalue %dx.types.ResRet.f32 %2618, 3
  %2623 = and i32 %2612, 255
  %2624 = uitofp i32 %2623 to float
  %2625 = lshr i32 %2612, 8
  %2626 = and i32 %2625, 255
  %2627 = uitofp i32 %2626 to float
  %2628 = fmul fast float %2622, %2624
  %2629 = fadd fast float %2628, %2627
  %2630 = fmul fast float %2629, 0x3F70101000000000
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = and i32 %2632, 512
  %2634 = icmp eq i32 %2633, 0
  br i1 %2634, label %2643, label %2635

; <label>:2635                                    ; preds = %2610
  %2636 = add i32 %54, 448
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = add i32 %2638, 0
  %2640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2639, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2641 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2640, %dx.types.Handle %97, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2642 = extractvalue %dx.types.ResRet.f32 %2641, 0
  br label %2643

; <label>:2643                                    ; preds = %2635, %2610
  %2644 = phi float [ %2642, %2635 ], [ 1.000000e+00, %2610 ]
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = and i32 %2646, 33554432
  %2648 = icmp eq i32 %2647, 0
  br i1 %2648, label %2755, label %2649

; <label>:2649                                    ; preds = %2643
  %2650 = add i32 %54, 256
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = and i32 %2652, 65535
  %2654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2653)  ; LegacyF16ToF32(value)
  %2655 = lshr i32 %2652, 16
  %2656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2655)  ; LegacyF16ToF32(value)
  %2657 = add i32 %54, 260
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = and i32 %2659, 65535
  %2661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2660)  ; LegacyF16ToF32(value)
  %2662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2663 = extractvalue %dx.types.ResRet.i32 %2662, 0
  %2664 = lshr i32 %2663, 24
  %2665 = uitofp i32 %2664 to float
  %2666 = fmul fast float %2665, 0x3F70101020000000
  %2667 = and i32 %2663, 255
  %2668 = uitofp i32 %2667 to float
  %2669 = fmul fast float %2668, 0x3F70101020000000
  %2670 = lshr i32 %2663, 8
  %2671 = and i32 %2670, 255
  %2672 = uitofp i32 %2671 to float
  %2673 = fmul fast float %2672, 0x3F70101020000000
  %2674 = lshr i32 %2663, 16
  %2675 = and i32 %2674, 255
  %2676 = uitofp i32 %2675 to float
  %2677 = fmul fast float %2676, 0x3F70101020000000
  %2678 = add i32 %54, 252
  %2679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2680 = extractvalue %dx.types.ResRet.i32 %2679, 0
  %2681 = lshr i32 %2680, 24
  %2682 = uitofp i32 %2681 to float
  %2683 = fmul fast float %2682, 0x3F70101020000000
  %2684 = and i32 %2680, 255
  %2685 = uitofp i32 %2684 to float
  %2686 = fmul fast float %2685, 0x3F70101020000000
  %2687 = lshr i32 %2680, 8
  %2688 = and i32 %2687, 255
  %2689 = uitofp i32 %2688 to float
  %2690 = fmul fast float %2689, 0x3F70101020000000
  %2691 = lshr i32 %2680, 16
  %2692 = and i32 %2691, 255
  %2693 = uitofp i32 %2692 to float
  %2694 = fmul fast float %2693, 0x3F70101020000000
  %2695 = bitcast float %2619 to i32
  %2696 = ashr i32 %2695, 1
  %2697 = sub nsw i32 1597463174, %2696
  %2698 = bitcast i32 %2697 to float
  %2699 = fmul fast float %2619, 5.000000e-01
  %2700 = fmul fast float %2698, %2698
  %2701 = fmul fast float %2700, %2699
  %2702 = fsub fast float 1.500000e+00, %2701
  %2703 = fmul fast float %2698, %2619
  %2704 = fmul fast float %2703, %2702
  %2705 = bitcast float %2620 to i32
  %2706 = ashr i32 %2705, 1
  %2707 = sub nsw i32 1597463174, %2706
  %2708 = bitcast i32 %2707 to float
  %2709 = fmul fast float %2620, 5.000000e-01
  %2710 = fmul fast float %2708, %2708
  %2711 = fmul fast float %2710, %2709
  %2712 = fsub fast float 1.500000e+00, %2711
  %2713 = fmul fast float %2708, %2620
  %2714 = fmul fast float %2713, %2712
  %2715 = bitcast float %2621 to i32
  %2716 = ashr i32 %2715, 1
  %2717 = sub nsw i32 1597463174, %2716
  %2718 = bitcast i32 %2717 to float
  %2719 = fmul fast float %2621, 5.000000e-01
  %2720 = fmul fast float %2718, %2718
  %2721 = fmul fast float %2720, %2719
  %2722 = fsub fast float 1.500000e+00, %2721
  %2723 = fmul fast float %2718, %2621
  %2724 = fmul fast float %2723, %2722
  %2725 = fsub fast float %2704, %2686
  %2726 = fsub fast float %2714, %2690
  %2727 = fsub fast float %2724, %2694
  %2728 = fmul fast float %2725, %2654
  %2729 = fmul fast float %2726, %2656
  %2730 = fmul fast float %2727, %2661
  %2731 = fadd fast float %2728, %2669
  %2732 = fadd fast float %2729, %2673
  %2733 = fadd fast float %2730, %2677
  %2734 = call float @dx.op.unary.f32(i32 7, float %2731)  ; Saturate(value)
  %2735 = call float @dx.op.unary.f32(i32 7, float %2732)  ; Saturate(value)
  %2736 = call float @dx.op.unary.f32(i32 7, float %2733)  ; Saturate(value)
  %2737 = fmul fast float %2734, %2734
  %2738 = fmul fast float %2735, %2735
  %2739 = fmul fast float %2736, %2736
  %2740 = fsub fast float %2737, %2619
  %2741 = fsub fast float %2738, %2620
  %2742 = fsub fast float %2739, %2621
  %2743 = fmul fast float %2740, %2644
  %2744 = fmul fast float %2741, %2644
  %2745 = fmul fast float %2742, %2644
  %2746 = fadd fast float %2743, %2619
  %2747 = fadd fast float %2744, %2620
  %2748 = fadd fast float %2745, %2621
  %2749 = fadd fast float %2666, %2630
  %2750 = fsub fast float %2749, %2683
  %2751 = call float @dx.op.unary.f32(i32 7, float %2750)  ; Saturate(value)
  %2752 = fsub fast float %2751, %2630
  %2753 = fmul fast float %2752, %2644
  %2754 = fadd fast float %2753, %2630
  br label %2808

; <label>:2755                                    ; preds = %2643
  %2756 = and i32 %2646, 134217728
  %2757 = icmp eq i32 %2756, 0
  br i1 %2757, label %2792, label %2758

; <label>:2758                                    ; preds = %2755
  %2759 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %2760 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %2761 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %2762 = fadd fast float %2759, -5.000000e-01
  %2763 = fadd fast float %2760, -5.000000e-01
  %2764 = fadd fast float %2761, -5.000000e-01
  %2765 = fmul fast float %2762, %2644
  %2766 = fmul fast float %2763, %2644
  %2767 = fmul fast float %2764, %2644
  %2768 = fadd fast float %2765, 5.000000e-01
  %2769 = fadd fast float %2766, 5.000000e-01
  %2770 = fadd fast float %2767, 5.000000e-01
  %2771 = call float @dx.op.unary.f32(i32 24, float %2619)  ; Sqrt(value)
  %2772 = call float @dx.op.unary.f32(i32 24, float %2620)  ; Sqrt(value)
  %2773 = call float @dx.op.unary.f32(i32 24, float %2621)  ; Sqrt(value)
  %2774 = fmul fast float %2768, 2.000000e+00
  %2775 = fsub fast float 1.000000e+00, %2774
  %2776 = fmul fast float %2775, %2771
  %2777 = fadd fast float %2776, %2774
  %2778 = fmul fast float %2777, %2771
  %2779 = fmul fast float %2769, 2.000000e+00
  %2780 = fsub fast float 1.000000e+00, %2779
  %2781 = fmul fast float %2780, %2772
  %2782 = fadd fast float %2781, %2779
  %2783 = fmul fast float %2782, %2772
  %2784 = fmul fast float %2770, 2.000000e+00
  %2785 = fsub fast float 1.000000e+00, %2784
  %2786 = fmul fast float %2785, %2773
  %2787 = fadd fast float %2786, %2784
  %2788 = fmul fast float %2787, %2773
  %2789 = fmul fast float %2778, %2778
  %2790 = fmul fast float %2783, %2783
  %2791 = fmul fast float %2788, %2788
  br label %2808

; <label>:2792                                    ; preds = %2755
  %2793 = fmul fast float %330, %330
  %2794 = fmul fast float %334, %334
  %2795 = fmul fast float %338, %338
  %2796 = fadd fast float %2793, -1.000000e+00
  %2797 = fadd fast float %2794, -1.000000e+00
  %2798 = fadd fast float %2795, -1.000000e+00
  %2799 = fmul fast float %2644, %2796
  %2800 = fmul fast float %2644, %2797
  %2801 = fmul fast float %2644, %2798
  %2802 = fadd fast float %2799, 1.000000e+00
  %2803 = fadd fast float %2800, 1.000000e+00
  %2804 = fadd fast float %2801, 1.000000e+00
  %2805 = fmul fast float %2802, %2619
  %2806 = fmul fast float %2803, %2620
  %2807 = fmul fast float %2804, %2621
  br label %2808

; <label>:2808                                    ; preds = %2792, %2758, %2649, %2605
  %2809 = phi float [ %2754, %2649 ], [ %2630, %2758 ], [ %2630, %2792 ], [ 0x3FA23C0BE0000000, %2605 ]
  %2810 = phi float [ %2746, %2649 ], [ %2789, %2758 ], [ %2805, %2792 ], [ 1.000000e+00, %2605 ]
  %2811 = phi float [ %2747, %2649 ], [ %2790, %2758 ], [ %2806, %2792 ], [ 1.000000e+00, %2605 ]
  %2812 = phi float [ %2748, %2649 ], [ %2791, %2758 ], [ %2807, %2792 ], [ 1.000000e+00, %2605 ]
  %2813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2814 = extractvalue %dx.types.CBufRet.i32 %2813, 1
  %2815 = and i32 %2814, 1
  %2816 = icmp ne i32 %2815, 0
  %2817 = add i32 %54, 356
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = and i32 %2819, 32
  %2821 = icmp ne i32 %2820, 0
  %2822 = and i1 %2816, %2821
  %2823 = select i1 %2822, float 1.000000e+00, float %2810
  %2824 = select i1 %2822, float 0x3FD3333340000000, float %2811
  %2825 = select i1 %2822, float 0x3FD3333340000000, float %2812
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = and i32 %2827, 32
  %2829 = icmp eq i32 %2828, 0
  br i1 %2829, label %2902, label %2830

; <label>:2830                                    ; preds = %2808
  %2831 = add i32 %54, 124
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2831, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = add i32 %54, 384
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = add i32 %2836, 0
  %2838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2837, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2839 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2838, %dx.types.Handle %96, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2840 = extractvalue %dx.types.ResRet.f32 %2839, 0
  %2841 = extractvalue %dx.types.ResRet.f32 %2839, 1
  %2842 = extractvalue %dx.types.ResRet.f32 %2839, 2
  %2843 = extractvalue %dx.types.ResRet.f32 %2839, 3
  %2844 = and i32 %2833, 255
  %2845 = uitofp i32 %2844 to float
  %2846 = lshr i32 %2833, 8
  %2847 = and i32 %2846, 255
  %2848 = uitofp i32 %2847 to float
  %2849 = lshr i32 %2833, 16
  %2850 = and i32 %2849, 255
  %2851 = uitofp i32 %2850 to float
  %2852 = fmul fast float %2851, 0x3F70101000000000
  %2853 = fmul fast float %2840, %2845
  %2854 = fadd fast float %2853, %2848
  %2855 = fmul fast float %2854, 0x3F70101000000000
  %2856 = fadd fast float %2841, -5.000000e-01
  %2857 = fadd fast float %2843, -5.000000e-01
  %2858 = fmul fast float %2856, %2852
  %2859 = fmul fast float %2857, %2852
  %2860 = fadd fast float %2858, 5.000000e-01
  %2861 = fadd fast float %2859, 5.000000e-01
  %2862 = fmul fast float %2860, 2.000000e+00
  %2863 = fadd fast float %2862, -1.000000e+00
  %2864 = fmul fast float %2861, 2.000000e+00
  %2865 = fadd fast float %2864, -1.000000e+00
  %2866 = fadd fast float %2863, %2865
  %2867 = fmul fast float %2866, 5.000000e-01
  %2868 = fsub fast float %2863, %2865
  %2869 = fmul fast float %2868, 5.000000e-01
  %2870 = call float @dx.op.unary.f32(i32 6, float %2867)  ; FAbs(value)
  %2871 = fsub fast float 1.000000e+00, %2870
  %2872 = call float @dx.op.unary.f32(i32 6, float %2869)  ; FAbs(value)
  %2873 = fsub fast float %2871, %2872
  %2874 = call float @dx.op.dot3.f32(i32 55, float %2867, float %2869, float %2873, float %2867, float %2869, float %2873)  ; Dot3(ax,ay,az,bx,by,bz)
  %2875 = call float @dx.op.unary.f32(i32 25, float %2874)  ; Rsqrt(value)
  %2876 = fmul fast float %2867, %2875
  %2877 = fmul fast float %2869, %2875
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = and i32 %2879, 67108864
  %2881 = icmp eq i32 %2880, 0
  br i1 %2881, label %2898, label %2882

; <label>:2882                                    ; preds = %2830
  %2883 = add i32 %54, 312
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = and i32 %2885, 65535
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = and i32 %2889, 65535
  %2891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2890)  ; LegacyF16ToF32(value)
  %2892 = lshr i32 %2885, 16
  %2893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2892)  ; LegacyF16ToF32(value)
  %2894 = fsub fast float %2855, %2893
  %2895 = fmul fast float %2894, %2887
  %2896 = fadd fast float %2895, %2891
  %2897 = call float @dx.op.unary.f32(i32 7, float %2896)  ; Saturate(value)
  br label %2898

; <label>:2898                                    ; preds = %2882, %2830
  %2899 = phi float [ %2897, %2882 ], [ %2855, %2830 ]
  %2900 = call float @dx.op.dot2.f32(i32 54, float %2876, float %2877, float %2319, float %2320)  ; Dot2(ax,ay,bx,by)
  %2901 = call float @dx.op.dot2.f32(i32 54, float %2876, float %2877, float %2321, float %2322)  ; Dot2(ax,ay,bx,by)
  br label %2902

; <label>:2902                                    ; preds = %2898, %2808
  %2903 = phi float [ %2899, %2898 ], [ 0x3FD6666660000000, %2808 ]
  %2904 = phi float [ %2900, %2898 ], [ 0.000000e+00, %2808 ]
  %2905 = phi float [ %2901, %2898 ], [ 0.000000e+00, %2808 ]
  %2906 = phi float [ %2842, %2898 ], [ 1.000000e+00, %2808 ]
  %2907 = add i32 %54, 192
  %2908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2909 = extractvalue %dx.types.ResRet.i32 %2908, 0
  %2910 = lshr i32 %2909, 22
  %2911 = shl nuw nsw i32 %2910, 5
  %2912 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2911)  ; LegacyF16ToF32(value)
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = and i32 %2914, 64
  %2916 = icmp eq i32 %2915, 0
  br i1 %2916, label %2950, label %2917

; <label>:2917                                    ; preds = %2902
  %2918 = add i32 %54, 400
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2918, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = add i32 %2920, 0
  %2922 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2921, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = and i32 %2924, 131072
  %2926 = icmp eq i32 %2925, 0
  %2927 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2922, %dx.types.Handle %96, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2928 = extractvalue %dx.types.ResRet.f32 %2927, 0
  %2929 = extractvalue %dx.types.ResRet.f32 %2927, 1
  %2930 = extractvalue %dx.types.ResRet.f32 %2927, 2
  %2931 = fmul fast float %2928, %318
  %2932 = fmul fast float %2929, %321
  %2933 = fmul fast float %2930, %324
  br i1 %2926, label %2940, label %2934

; <label>:2934                                    ; preds = %2917
  %2935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2936 = extractvalue %dx.types.CBufRet.f32 %2935, 0
  %2937 = fmul fast float %2936, %2931
  %2938 = fmul fast float %2936, %2932
  %2939 = fmul fast float %2936, %2933
  br label %2940

; <label>:2940                                    ; preds = %2934, %2917
  %2941 = phi float [ %2937, %2934 ], [ %2931, %2917 ]
  %2942 = phi float [ %2938, %2934 ], [ %2932, %2917 ]
  %2943 = phi float [ %2939, %2934 ], [ %2933, %2917 ]
  %2944 = fmul fast float %2941, %2912
  %2945 = select i1 %217, float %2944, float %2941
  %2946 = call float @dx.op.dot3.f32(i32 55, float %2945, float %2942, float %2943, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2947 = select i1 %217, float 0.000000e+00, float %2941
  %2948 = select i1 %217, float %2946, float %2942
  %2949 = select i1 %217, float 0.000000e+00, float %2943
  br label %2950

; <label>:2950                                    ; preds = %2940, %2902
  %2951 = phi float [ %2947, %2940 ], [ 0.000000e+00, %2902 ]
  %2952 = phi float [ %2948, %2940 ], [ 0.000000e+00, %2902 ]
  %2953 = phi float [ %2949, %2940 ], [ 0.000000e+00, %2902 ]
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = and i32 %2955, 1024
  %2957 = icmp eq i32 %2956, 0
  br i1 %2957, label %2988, label %2958

; <label>:2958                                    ; preds = %2950
  %2959 = add i32 %54, 184
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %2961, 255
  %2963 = uitofp i32 %2962 to float
  %2964 = fmul fast float %2963, 0x3F70101020000000
  %2965 = lshr i32 %2961, 8
  %2966 = and i32 %2965, 255
  %2967 = uitofp i32 %2966 to float
  %2968 = fmul fast float %2967, 0x3F70101020000000
  %2969 = lshr i32 %2961, 16
  %2970 = and i32 %2969, 255
  %2971 = uitofp i32 %2970 to float
  %2972 = fmul fast float %2971, 0x3F70101020000000
  %2973 = fmul fast float %2964, %2964
  %2974 = fmul fast float %2968, %2968
  %2975 = fmul fast float %2972, %2972
  %2976 = add i32 %54, 464
  %2977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.i32 %2977, 0
  %2979 = add i32 %2978, 0
  %2980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2981 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2980, %dx.types.Handle %97, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2982 = extractvalue %dx.types.ResRet.f32 %2981, 0
  %2983 = extractvalue %dx.types.ResRet.f32 %2981, 1
  %2984 = extractvalue %dx.types.ResRet.f32 %2981, 2
  %2985 = fmul fast float %2973, %2982
  %2986 = fmul fast float %2974, %2983
  %2987 = fmul fast float %2975, %2984
  br label %2988

; <label>:2988                                    ; preds = %2958, %2950
  %2989 = phi float [ %2985, %2958 ], [ 0.000000e+00, %2950 ]
  %2990 = phi float [ %2986, %2958 ], [ 0.000000e+00, %2950 ]
  %2991 = phi float [ %2987, %2958 ], [ 0.000000e+00, %2950 ]
  %2992 = fcmp fast ogt float %2989, 0.000000e+00
  %2993 = fcmp fast ogt float %2990, 0.000000e+00
  %2994 = fcmp fast ogt float %2991, 0.000000e+00
  %2995 = call float @dx.op.unary.f32(i32 23, float %2989)  ; Log(value)
  %2996 = call float @dx.op.unary.f32(i32 23, float %2990)  ; Log(value)
  %2997 = call float @dx.op.unary.f32(i32 23, float %2991)  ; Log(value)
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = lshr i32 %2999, 7
  %3001 = and i32 %3000, 32752
  %3002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3001)  ; LegacyF16ToF32(value)
  %3003 = fmul fast float %2995, 0xBFE62E4300000000
  %3004 = fmul fast float %3003, %3002
  %3005 = fmul fast float %2996, 0xBFE62E4300000000
  %3006 = fmul fast float %3005, %3002
  %3007 = fmul fast float %2997, 0xBFE62E4300000000
  %3008 = fmul fast float %3007, %3002
  %3009 = select i1 %2992, float %3004, float 1.270000e+02
  %3010 = select i1 %2993, float %3006, float 1.270000e+02
  %3011 = select i1 %2994, float %3008, float 1.270000e+02
  %3012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.i32 %3012, 0
  %3014 = and i32 %3013, 10240
  %3015 = icmp eq i32 %3014, 0
  br i1 %3015, label %3060, label %3016

; <label>:3016                                    ; preds = %2988
  %3017 = add i32 %54, 480
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = add i32 %3019, 0
  %3021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3022 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3021, %dx.types.Handle %97, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3023 = extractvalue %dx.types.ResRet.f32 %3022, 1
  %3024 = extractvalue %dx.types.ResRet.f32 %3022, 3
  %3025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3026 = extractvalue %dx.types.ResRet.i32 %3025, 0
  %3027 = and i32 %3026, 1048576
  %3028 = icmp ne i32 %3027, 0
  %3029 = and i32 %3026, 8192
  %3030 = icmp eq i32 %3029, 0
  br i1 %3030, label %3046, label %3031

; <label>:3031                                    ; preds = %3016
  %3032 = extractvalue %dx.types.ResRet.f32 %3022, 2
  %3033 = select i1 %3028, float %3032, float %3023
  %3034 = extractvalue %dx.types.ResRet.f32 %3022, 0
  %3035 = select i1 %3028, float %3034, float %3023
  %3036 = add i32 %54, 128
  %3037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3036, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = lshr i32 %3038, 16
  %3040 = and i32 %3039, 255
  %3041 = uitofp i32 %3040 to float
  %3042 = fmul fast float %3041, 0x3F80101020000000
  %3043 = fmul fast float %3042, %3035
  %3044 = fmul fast float %3042, %3023
  %3045 = fmul fast float %3042, %3033
  br label %3046

; <label>:3046                                    ; preds = %3031, %3016
  %3047 = phi float [ %3043, %3031 ], [ 0.000000e+00, %3016 ]
  %3048 = phi float [ %3044, %3031 ], [ 0.000000e+00, %3016 ]
  %3049 = phi float [ %3045, %3031 ], [ 0.000000e+00, %3016 ]
  %3050 = and i32 %3026, 2048
  %3051 = icmp eq i32 %3050, 0
  br i1 %3051, label %3060, label %3052

; <label>:3052                                    ; preds = %3046
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = shl i32 %3054, 4
  %3056 = and i32 %3055, 32752
  %3057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3056)  ; LegacyF16ToF32(value)
  %3058 = fmul fast float %3057, %3024
  %3059 = call float @dx.op.binary.f32(i32 35, float %3058, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3060

; <label>:3060                                    ; preds = %3052, %3046, %2988
  %3061 = phi float [ %3047, %3052 ], [ %3047, %3046 ], [ 0.000000e+00, %2988 ]
  %3062 = phi float [ %3048, %3052 ], [ %3048, %3046 ], [ 0.000000e+00, %2988 ]
  %3063 = phi float [ %3049, %3052 ], [ %3049, %3046 ], [ 0.000000e+00, %2988 ]
  %3064 = phi float [ %3059, %3052 ], [ 0x3F70101020000000, %3046 ], [ 0x3F70101020000000, %2988 ]
  %3065 = add i32 %54, 128
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = and i32 %3067, 255
  %3069 = uitofp i32 %3068 to float
  %3070 = lshr i32 %3067, 8
  %3071 = and i32 %3070, 255
  %3072 = uitofp i32 %3071 to float
  %3073 = call float @dx.op.dot3.f32(i32 55, float %2823, float %2824, float %2825, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3074 = fmul fast float %3072, %3073
  %3075 = fadd fast float %3074, %3069
  %3076 = fmul fast float %3075, 0x3F70101020000000
  %3077 = call float @dx.op.unary.f32(i32 7, float %3076)  ; Saturate(value)
  br i1 %2307, label %3078, label %3113

; <label>:3078                                    ; preds = %3060
  %3079 = fmul fast float %3064, 2.000000e+00
  %3080 = fcmp fast olt float %3009, 1.270000e+02
  %3081 = fcmp fast olt float %3010, 1.270000e+02
  %3082 = fcmp fast olt float %3011, 1.270000e+02
  %3083 = fmul fast float %3009, 0xBFF7154760000000
  %3084 = fmul fast float %3083, %3079
  %3085 = fmul fast float %3010, 0xBFF7154760000000
  %3086 = fmul fast float %3085, %3079
  %3087 = fmul fast float %3011, 0xBFF7154760000000
  %3088 = fmul fast float %3087, %3079
  %3089 = call float @dx.op.unary.f32(i32 21, float %3084)  ; Exp(value)
  %3090 = call float @dx.op.unary.f32(i32 21, float %3086)  ; Exp(value)
  %3091 = call float @dx.op.unary.f32(i32 21, float %3088)  ; Exp(value)
  %3092 = call float @dx.op.unary.f32(i32 7, float %3089)  ; Saturate(value)
  %3093 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  %3094 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  %3095 = fadd fast float %3092, -1.000000e+00
  %3096 = select i1 %3080, float %3095, float -1.000000e+00
  %3097 = fadd fast float %3093, -1.000000e+00
  %3098 = select i1 %3081, float %3097, float -1.000000e+00
  %3099 = fadd fast float %3094, -1.000000e+00
  %3100 = select i1 %3082, float %3099, float -1.000000e+00
  %3101 = fmul fast float %3096, %2603
  %3102 = fmul fast float %3098, %2603
  %3103 = fmul fast float %3100, %2603
  %3104 = fadd fast float %3101, 1.000000e+00
  %3105 = fadd fast float %3102, 1.000000e+00
  %3106 = fadd fast float %3103, 1.000000e+00
  %3107 = fmul fast float %3104, %2289
  %3108 = fmul fast float %3105, %2290
  %3109 = fmul fast float %3106, %2291
  %3110 = fmul fast float %3104, %2292
  %3111 = fmul fast float %3105, %2293
  %3112 = fmul fast float %3106, %2294
  br label %3113

; <label>:3113                                    ; preds = %3078, %3060
  %3114 = phi float [ %3107, %3078 ], [ %2289, %3060 ]
  %3115 = phi float [ %3108, %3078 ], [ %2290, %3060 ]
  %3116 = phi float [ %3109, %3078 ], [ %2291, %3060 ]
  %3117 = phi float [ %3110, %3078 ], [ %2292, %3060 ]
  %3118 = phi float [ %3111, %3078 ], [ %2293, %3060 ]
  %3119 = phi float [ %3112, %3078 ], [ %2294, %3060 ]
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = and i32 %3121, 3
  %3123 = icmp eq i32 %3122, 3
  br i1 %3123, label %3202, label %3124

; <label>:3124                                    ; preds = %3113
  %3125 = and i32 %3121, 16
  %3126 = icmp ne i32 %3125, 0
  %3127 = select i1 %3126, float %2603, float 0.000000e+00
  %3128 = icmp eq i32 %3122, 0
  br i1 %3128, label %3129, label %3157

; <label>:3129                                    ; preds = %3124
  %3130 = and i32 %3121, 64
  %3131 = icmp ne i32 %3130, 0
  %3132 = select i1 %3131, float %2603, float 0.000000e+00
  %3133 = fsub fast float %2823, %3114
  %3134 = fsub fast float %2824, %3115
  %3135 = fsub fast float %2825, %3116
  %3136 = fmul fast float %3127, %3133
  %3137 = fmul fast float %3127, %3134
  %3138 = fmul fast float %3127, %3135
  %3139 = fadd fast float %3136, %3114
  %3140 = fadd fast float %3137, %3115
  %3141 = fadd fast float %3138, %3116
  %3142 = fsub fast float %2809, %2301
  %3143 = fmul fast float %3127, %3142
  %3144 = fadd fast float %3143, %2301
  %3145 = fsub fast float %2951, %3117
  %3146 = fsub fast float %2952, %3118
  %3147 = fsub fast float %2953, %3119
  %3148 = fmul fast float %3132, %3145
  %3149 = fmul fast float %3132, %3146
  %3150 = fmul fast float %3132, %3147
  %3151 = fadd fast float %3148, %3117
  %3152 = fadd fast float %3149, %3118
  %3153 = fadd fast float %3150, %3119
  %3154 = fsub fast float %3077, %2305
  %3155 = fmul fast float %3127, %3154
  %3156 = fadd fast float %3155, %2305
  br label %3202

; <label>:3157                                    ; preds = %3124
  %3158 = icmp eq i32 %3122, 1
  br i1 %3158, label %3159, label %3172

; <label>:3159                                    ; preds = %3157
  %3160 = fadd fast float %2823, -1.000000e+00
  %3161 = fadd fast float %2824, -1.000000e+00
  %3162 = fadd fast float %2825, -1.000000e+00
  %3163 = fmul fast float %3127, %3160
  %3164 = fmul fast float %3127, %3161
  %3165 = fmul fast float %3127, %3162
  %3166 = fadd fast float %3163, 1.000000e+00
  %3167 = fadd fast float %3164, 1.000000e+00
  %3168 = fadd fast float %3165, 1.000000e+00
  %3169 = fmul fast float %3166, %3114
  %3170 = fmul fast float %3167, %3115
  %3171 = fmul fast float %3168, %3116
  br label %3202

; <label>:3172                                    ; preds = %3157
  %3173 = icmp eq i32 %3122, 2
  br i1 %3173, label %3174, label %3202

; <label>:3174                                    ; preds = %3172
  %3175 = call float @dx.op.unary.f32(i32 24, float %2823)  ; Sqrt(value)
  %3176 = call float @dx.op.unary.f32(i32 24, float %2824)  ; Sqrt(value)
  %3177 = call float @dx.op.unary.f32(i32 24, float %2825)  ; Sqrt(value)
  %3178 = fadd fast float %3175, -5.000000e-01
  %3179 = fadd fast float %3176, -5.000000e-01
  %3180 = fadd fast float %3177, -5.000000e-01
  %3181 = fmul fast float %3178, %3127
  %3182 = fmul fast float %3179, %3127
  %3183 = fmul fast float %3180, %3127
  %3184 = fadd fast float %3181, 5.000000e-01
  %3185 = fadd fast float %3182, 5.000000e-01
  %3186 = fadd fast float %3183, 5.000000e-01
  %3187 = fmul fast float %3184, 2.000000e+00
  %3188 = fsub fast float 1.000000e+00, %3187
  %3189 = fmul fast float %3188, %3114
  %3190 = fadd fast float %3189, %3187
  %3191 = fmul fast float %3190, %3114
  %3192 = fmul fast float %3185, 2.000000e+00
  %3193 = fsub fast float 1.000000e+00, %3192
  %3194 = fmul fast float %3193, %3115
  %3195 = fadd fast float %3194, %3192
  %3196 = fmul fast float %3195, %3115
  %3197 = fmul fast float %3186, 2.000000e+00
  %3198 = fsub fast float 1.000000e+00, %3197
  %3199 = fmul fast float %3198, %3116
  %3200 = fadd fast float %3199, %3197
  %3201 = fmul fast float %3200, %3116
  br label %3202

; <label>:3202                                    ; preds = %3174, %3172, %3159, %3129, %3113
  %3203 = phi float [ %3114, %3113 ], [ %3191, %3174 ], [ %3114, %3172 ], [ %3169, %3159 ], [ %3139, %3129 ]
  %3204 = phi float [ %3115, %3113 ], [ %3196, %3174 ], [ %3115, %3172 ], [ %3170, %3159 ], [ %3140, %3129 ]
  %3205 = phi float [ %3116, %3113 ], [ %3201, %3174 ], [ %3116, %3172 ], [ %3171, %3159 ], [ %3141, %3129 ]
  %3206 = phi float [ %3117, %3113 ], [ %3117, %3174 ], [ %3117, %3172 ], [ %3117, %3159 ], [ %3151, %3129 ]
  %3207 = phi float [ %3118, %3113 ], [ %3118, %3174 ], [ %3118, %3172 ], [ %3118, %3159 ], [ %3152, %3129 ]
  %3208 = phi float [ %3119, %3113 ], [ %3119, %3174 ], [ %3119, %3172 ], [ %3119, %3159 ], [ %3153, %3129 ]
  %3209 = phi float [ %2301, %3113 ], [ %2301, %3174 ], [ %2301, %3172 ], [ %2301, %3159 ], [ %3144, %3129 ]
  %3210 = phi float [ %2305, %3113 ], [ %2305, %3174 ], [ %2305, %3172 ], [ %2305, %3159 ], [ %3156, %3129 ]
  %3211 = and i32 %3121, 12
  %3212 = icmp eq i32 %3211, 12
  br i1 %3212, label %3343, label %3213

; <label>:3213                                    ; preds = %3202
  %3214 = and i32 %3121, 2097184
  %3215 = icmp eq i32 %3214, 2097184
  %3216 = select i1 %3215, float %2603, float 0.000000e+00
  %3217 = and i32 %3121, 4194336
  %3218 = icmp eq i32 %3217, 4194336
  %3219 = select i1 %3218, float %2603, float 0.000000e+00
  %3220 = and i32 %3121, 8388640
  %3221 = icmp eq i32 %3220, 8388640
  %3222 = select i1 %3221, float %2603, float 0.000000e+00
  %3223 = and i32 %3121, 1024
  %3224 = icmp ne i32 %3223, 0
  %3225 = select i1 %3224, float %2603, float 0.000000e+00
  %3226 = and i32 %3121, 2048
  %3227 = icmp ne i32 %3226, 0
  %3228 = select i1 %3227, float %2603, float 0.000000e+00
  %3229 = and i32 %3121, 8192
  %3230 = icmp ne i32 %3229, 0
  %3231 = select i1 %3230, float %2603, float 0.000000e+00
  %3232 = icmp eq i32 %3211, 0
  br i1 %3232, label %3233, label %3267

; <label>:3233                                    ; preds = %3213
  %3234 = fsub fast float %2904, %2287
  %3235 = fsub fast float %2905, %2288
  %3236 = fmul fast float %3216, %3234
  %3237 = fmul fast float %3216, %3235
  %3238 = fadd fast float %3236, %2287
  %3239 = fadd fast float %3237, %2288
  %3240 = fsub fast float %2906, %2303
  %3241 = fmul fast float %3219, %3240
  %3242 = fadd fast float %3241, %2303
  %3243 = fsub fast float %2903, %2302
  %3244 = fmul fast float %3222, %3243
  %3245 = fadd fast float %3244, %2302
  %3246 = fsub fast float %3009, %2298
  %3247 = fsub fast float %3010, %2299
  %3248 = fsub fast float %3011, %2300
  %3249 = fmul fast float %3225, %3246
  %3250 = fmul fast float %3225, %3247
  %3251 = fmul fast float %3225, %3248
  %3252 = fadd fast float %3249, %2298
  %3253 = fadd fast float %3250, %2299
  %3254 = fadd fast float %3251, %2300
  %3255 = fsub fast float %3064, %2304
  %3256 = fmul fast float %3228, %3255
  %3257 = fadd fast float %3256, %2304
  %3258 = fsub fast float %3061, %2295
  %3259 = fsub fast float %3062, %2296
  %3260 = fsub fast float %3063, %2297
  %3261 = fmul fast float %3231, %3258
  %3262 = fmul fast float %3231, %3259
  %3263 = fmul fast float %3231, %3260
  %3264 = fadd fast float %3261, %2295
  %3265 = fadd fast float %3262, %2296
  %3266 = fadd fast float %3263, %2297
  br label %3343

; <label>:3267                                    ; preds = %3213
  %3268 = icmp eq i32 %3211, 4
  br i1 %3268, label %3269, label %3315

; <label>:3269                                    ; preds = %3267
  %3270 = fmul fast float %3216, %2904
  %3271 = fmul fast float %3216, %2905
  %3272 = fadd fast float %3270, %2287
  %3273 = fadd fast float %3271, %2288
  %3274 = call float @dx.op.binary.f32(i32 36, float %2303, float %2906)  ; FMin(a,b)
  %3275 = fsub fast float %3274, %2303
  %3276 = fmul fast float %3275, %3219
  %3277 = fadd fast float %3276, %2303
  %3278 = fadd fast float %2903, %2302
  %3279 = fmul fast float %3278, 0x3FF337FAE0000000
  %3280 = fmul fast float %2302, %2302
  %3281 = fmul fast float %2903, %2903
  %3282 = fadd fast float %3281, %3280
  %3283 = fmul fast float %3282, 0x3FE5152B00000000
  %3284 = fmul fast float %2302, 0xBFCC1F85E0000000
  %3285 = fmul fast float %3284, %2903
  %3286 = fadd fast float %3285, 0xBFE1363700000000
  %3287 = fadd fast float %3286, %3279
  %3288 = fsub fast float %3287, %3283
  %3289 = fmul fast float %3278, 0x3FBA6F0D00000000
  %3290 = fmul fast float %3282, 0x3FD0432880000000
  %3291 = fmul fast float %2302, 0xBFEF110800000000
  %3292 = fmul fast float %3291, %2903
  %3293 = fadd fast float %3292, 1.000000e+00
  %3294 = fsub fast float %3293, %3289
  %3295 = fadd fast float %3294, %3290
  %3296 = fdiv fast float %3288, %3295
  %3297 = call float @dx.op.unary.f32(i32 7, float %3296)  ; Saturate(value)
  %3298 = fsub fast float %3297, %2302
  %3299 = fmul fast float %3298, %3222
  %3300 = fadd fast float %3299, %2302
  %3301 = fmul fast float %3225, %3009
  %3302 = fmul fast float %3225, %3010
  %3303 = fmul fast float %3225, %3011
  %3304 = fadd fast float %3301, %2298
  %3305 = fadd fast float %3302, %2299
  %3306 = fadd fast float %3303, %2300
  %3307 = fmul fast float %3228, %3064
  %3308 = fadd fast float %3307, %2304
  %3309 = fmul fast float %3231, %3061
  %3310 = fmul fast float %3231, %3062
  %3311 = fmul fast float %3231, %3063
  %3312 = fadd fast float %3309, %2295
  %3313 = fadd fast float %3310, %2296
  %3314 = fadd fast float %3311, %2297
  br label %3343

; <label>:3315                                    ; preds = %3267
  %3316 = icmp eq i32 %3211, 8
  br i1 %3316, label %3317, label %3343

; <label>:3317                                    ; preds = %3315
  %3318 = fmul fast float %3216, %2904
  %3319 = fmul fast float %3216, %2905
  %3320 = fadd fast float %3318, %2287
  %3321 = fadd fast float %3319, %2288
  %3322 = call float @dx.op.binary.f32(i32 36, float %2303, float %2906)  ; FMin(a,b)
  %3323 = fsub fast float %3322, %2303
  %3324 = fmul fast float %3323, %3219
  %3325 = fadd fast float %3324, %2303
  %3326 = fsub fast float %2903, %2302
  %3327 = fmul fast float %3222, %3326
  %3328 = fadd fast float %3327, %2302
  %3329 = fmul fast float %3225, %3009
  %3330 = fmul fast float %3225, %3010
  %3331 = fmul fast float %3225, %3011
  %3332 = fadd fast float %3329, %2298
  %3333 = fadd fast float %3330, %2299
  %3334 = fadd fast float %3331, %2300
  %3335 = fmul fast float %3228, %3064
  %3336 = fadd fast float %3335, %2304
  %3337 = fmul fast float %3231, %3061
  %3338 = fmul fast float %3231, %3062
  %3339 = fmul fast float %3231, %3063
  %3340 = fadd fast float %3337, %2295
  %3341 = fadd fast float %3338, %2296
  %3342 = fadd fast float %3339, %2297
  br label %3343

; <label>:3343                                    ; preds = %3317, %3315, %3269, %3233, %3202, %2602, %2306, %2286
  %3344 = phi float [ %2287, %3202 ], [ %2287, %2602 ], [ %2287, %2286 ], [ %3320, %3317 ], [ %2287, %3315 ], [ %3272, %3269 ], [ %3238, %3233 ], [ %2287, %2306 ]
  %3345 = phi float [ %2288, %3202 ], [ %2288, %2602 ], [ %2288, %2286 ], [ %3321, %3317 ], [ %2288, %3315 ], [ %3273, %3269 ], [ %3239, %3233 ], [ %2288, %2306 ]
  %3346 = phi float [ %3203, %3202 ], [ %2289, %2602 ], [ %2289, %2286 ], [ %3203, %3317 ], [ %3203, %3315 ], [ %3203, %3269 ], [ %3203, %3233 ], [ %2289, %2306 ]
  %3347 = phi float [ %3204, %3202 ], [ %2290, %2602 ], [ %2290, %2286 ], [ %3204, %3317 ], [ %3204, %3315 ], [ %3204, %3269 ], [ %3204, %3233 ], [ %2290, %2306 ]
  %3348 = phi float [ %3205, %3202 ], [ %2291, %2602 ], [ %2291, %2286 ], [ %3205, %3317 ], [ %3205, %3315 ], [ %3205, %3269 ], [ %3205, %3233 ], [ %2291, %2306 ]
  %3349 = phi float [ %3206, %3202 ], [ %2292, %2602 ], [ %2292, %2286 ], [ %3206, %3317 ], [ %3206, %3315 ], [ %3206, %3269 ], [ %3206, %3233 ], [ %2292, %2306 ]
  %3350 = phi float [ %3207, %3202 ], [ %2293, %2602 ], [ %2293, %2286 ], [ %3207, %3317 ], [ %3207, %3315 ], [ %3207, %3269 ], [ %3207, %3233 ], [ %2293, %2306 ]
  %3351 = phi float [ %3208, %3202 ], [ %2294, %2602 ], [ %2294, %2286 ], [ %3208, %3317 ], [ %3208, %3315 ], [ %3208, %3269 ], [ %3208, %3233 ], [ %2294, %2306 ]
  %3352 = phi float [ %2295, %3202 ], [ %2295, %2602 ], [ %2295, %2286 ], [ %3340, %3317 ], [ %2295, %3315 ], [ %3312, %3269 ], [ %3264, %3233 ], [ %2295, %2306 ]
  %3353 = phi float [ %2296, %3202 ], [ %2296, %2602 ], [ %2296, %2286 ], [ %3341, %3317 ], [ %2296, %3315 ], [ %3313, %3269 ], [ %3265, %3233 ], [ %2296, %2306 ]
  %3354 = phi float [ %2297, %3202 ], [ %2297, %2602 ], [ %2297, %2286 ], [ %3342, %3317 ], [ %2297, %3315 ], [ %3314, %3269 ], [ %3266, %3233 ], [ %2297, %2306 ]
  %3355 = phi float [ %2298, %3202 ], [ %2298, %2602 ], [ %2298, %2286 ], [ %3332, %3317 ], [ %2298, %3315 ], [ %3304, %3269 ], [ %3252, %3233 ], [ %2298, %2306 ]
  %3356 = phi float [ %2299, %3202 ], [ %2299, %2602 ], [ %2299, %2286 ], [ %3333, %3317 ], [ %2299, %3315 ], [ %3305, %3269 ], [ %3253, %3233 ], [ %2299, %2306 ]
  %3357 = phi float [ %2300, %3202 ], [ %2300, %2602 ], [ %2300, %2286 ], [ %3334, %3317 ], [ %2300, %3315 ], [ %3306, %3269 ], [ %3254, %3233 ], [ %2300, %2306 ]
  %3358 = phi float [ %3209, %3202 ], [ %2301, %2602 ], [ %2301, %2286 ], [ %3209, %3317 ], [ %3209, %3315 ], [ %3209, %3269 ], [ %3209, %3233 ], [ %2301, %2306 ]
  %3359 = phi float [ %2302, %3202 ], [ %2302, %2602 ], [ %2302, %2286 ], [ %3328, %3317 ], [ %2302, %3315 ], [ %3300, %3269 ], [ %3245, %3233 ], [ %2302, %2306 ]
  %3360 = phi float [ %2303, %3202 ], [ %2303, %2602 ], [ %2303, %2286 ], [ %3325, %3317 ], [ %2303, %3315 ], [ %3277, %3269 ], [ %3242, %3233 ], [ %2303, %2306 ]
  %3361 = phi float [ %2304, %3202 ], [ %2304, %2602 ], [ %2304, %2286 ], [ %3336, %3317 ], [ %2304, %3315 ], [ %3308, %3269 ], [ %3257, %3233 ], [ %2304, %2306 ]
  %3362 = phi float [ %3210, %3202 ], [ %2305, %2602 ], [ %2305, %2286 ], [ %3210, %3317 ], [ %3210, %3315 ], [ %3210, %3269 ], [ %3210, %3233 ], [ %2305, %2306 ]
  br i1 %405, label %4400, label %3363

; <label>:3363                                    ; preds = %3343
  %3364 = icmp ult i32 %459, 4
  %3365 = add i32 %54, 72
  %3366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.i32 %3366, 0
  %3368 = add i32 %54, 76
  %3369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3370 = extractvalue %dx.types.ResRet.i32 %3369, 0
  %3371 = or i32 %3370, %3367
  %3372 = icmp eq i32 %3371, 0
  br i1 %3372, label %4400, label %3373

; <label>:3373                                    ; preds = %3363
  %3374 = and i32 %3367, 262144
  %3375 = icmp ne i32 %3374, 0
  %3376 = select i1 %3375, float %57, float 1.000000e+00
  %3377 = select i1 %3375, float %58, float 0.000000e+00
  %3378 = select i1 %3375, float %59, float 0.000000e+00
  %3379 = select i1 %3375, float %60, float 1.000000e+00
  %3380 = select i1 %3375, float %61, float %82
  %3381 = select i1 %3375, float %62, float %83
  %3382 = add i32 %54, 332
  %3383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.i32 %3383, 0
  %3385 = lshr i32 %3384, 16
  %3386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3385)  ; LegacyF16ToF32(value)
  %3387 = fmul fast float %3386, 0x3F50624DE0000000
  %3388 = add i32 %54, 136
  %3389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.i32 %3389, 0
  %3391 = lshr i32 %3390, 16
  %3392 = and i32 %3391, 255
  %3393 = lshr i32 %3390, 24
  %3394 = add i32 %54, 340
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 65535
  %3398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3397)  ; LegacyF16ToF32(value)
  %3399 = lshr i32 %3396, 16
  %3400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3399)  ; LegacyF16ToF32(value)
  %3401 = add i32 %54, 80
  %3402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3401, i32 undef)  ; BufferLoad(srv,index,wot)
  %3403 = extractvalue %dx.types.ResRet.i32 %3402, 0
  %3404 = lshr i32 %3403, 22
  %3405 = shl nuw nsw i32 %3404, 5
  %3406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3405)  ; LegacyF16ToF32(value)
  %3407 = shl i32 %3403, 4
  %3408 = and i32 %3407, 32752
  %3409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3408)  ; LegacyF16ToF32(value)
  %3410 = lshr i32 %3403, 7
  %3411 = and i32 %3410, 32752
  %3412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3411)  ; LegacyF16ToF32(value)
  %3413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3414 = extractvalue %dx.types.CBufRet.f32 %3413, 3
  %3415 = fmul fast float %3414, 1.000000e+03
  %3416 = fmul fast float %395, %3415
  %3417 = call float @dx.op.unary.f32(i32 22, float %3416)  ; Frc(value)
  %3418 = fadd fast float %3417, %385
  %3419 = fmul fast float %396, %3415
  %3420 = call float @dx.op.unary.f32(i32 22, float %3419)  ; Frc(value)
  %3421 = fadd fast float %3420, %387
  %3422 = fmul fast float %3387, %3415
  %3423 = call float @dx.op.unary.f32(i32 22, float %3422)  ; Frc(value)
  %3424 = fmul fast float %3423, 0x401921FB60000000
  %3425 = fadd fast float %3424, %3406
  %3426 = call float @dx.op.unary.f32(i32 13, float %3425)  ; Sin(value)
  %3427 = call float @dx.op.unary.f32(i32 12, float %3425)  ; Cos(value)
  %3428 = fsub fast float -0.000000e+00, %3426
  %3429 = fadd fast float %3380, -5.000000e-01
  %3430 = fadd fast float %3381, -5.000000e-01
  %3431 = fmul fast float %3398, %3429
  %3432 = fmul fast float %3400, %3430
  %3433 = fadd fast float %3431, 5.000000e-01
  %3434 = fadd fast float %3432, 5.000000e-01
  %3435 = fmul fast float %3409, %3433
  %3436 = fmul fast float %3412, %3434
  %3437 = fmul fast float %3427, %3435
  %3438 = call float @dx.op.tertiary.f32(i32 46, float %3428, float %3436, float %3437)  ; FMad(a,b,c)
  %3439 = fmul fast float %3426, %3435
  %3440 = call float @dx.op.tertiary.f32(i32 46, float %3427, float %3436, float %3439)  ; FMad(a,b,c)
  %3441 = fadd fast float %3418, %3438
  %3442 = fadd fast float %3421, %3440
  %3443 = icmp ugt i32 %3392, 1
  %3444 = icmp ugt i32 %3390, 33554431
  %3445 = or i1 %3444, %3443
  br i1 %3445, label %3446, label %3471

; <label>:3446                                    ; preds = %3373
  %3447 = add i32 %54, 276
  %3448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3447, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.i32 %3448, 0
  %3450 = lshr i32 %3449, 16
  %3451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3450)  ; LegacyF16ToF32(value)
  %3452 = fmul fast float %3414, %3451
  %3453 = call float @dx.op.unary.f32(i32 22, float %3452)  ; Frc(value)
  %3454 = mul nuw nsw i32 %3392, %3393
  %3455 = uitofp i32 %3454 to float
  %3456 = fmul fast float %3453, %3455
  %3457 = call float @dx.op.unary.f32(i32 27, float %3456)  ; Round_ni(value)
  %3458 = fptoui float %3457 to i32
  %3459 = urem i32 %3458, %3392
  %3460 = udiv i32 %3458, %3393
  %3461 = call float @dx.op.unary.f32(i32 22, float %3441)  ; Frc(value)
  %3462 = call float @dx.op.unary.f32(i32 22, float %3442)  ; Frc(value)
  %3463 = uitofp i32 %3459 to float
  %3464 = uitofp i32 %3460 to float
  %3465 = fadd fast float %3461, %3463
  %3466 = fadd fast float %3462, %3464
  %3467 = uitofp i32 %3392 to float
  %3468 = uitofp i32 %3393 to float
  %3469 = fdiv fast float %3465, %3467
  %3470 = fdiv fast float %3466, %3468
  br label %3471

; <label>:3471                                    ; preds = %3446, %3373
  %3472 = phi float [ %3469, %3446 ], [ %3441, %3373 ]
  %3473 = phi float [ %3470, %3446 ], [ %3442, %3373 ]
  %3474 = and i32 %3367, 16777216
  %3475 = icmp eq i32 %3474, 0
  br i1 %3475, label %3585, label %3476

; <label>:3476                                    ; preds = %3471
  %3477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3478 = extractvalue %dx.types.CBufRet.f32 %3477, 0
  %3479 = extractvalue %dx.types.CBufRet.f32 %3477, 1
  %3480 = extractvalue %dx.types.CBufRet.f32 %3477, 2
  %3481 = fadd fast float %3478, %155
  %3482 = fadd fast float %3479, %156
  %3483 = fadd fast float %3480, %157
  %3484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3485 = extractvalue %dx.types.CBufRet.f32 %3484, 0
  %3486 = call float @dx.op.unary.f32(i32 7, float %3485)  ; Saturate(value)
  %3487 = icmp eq i32 %55, 65535
  br i1 %3487, label %3582, label %3488

; <label>:3488                                    ; preds = %3476
  %3489 = lshr i32 %55, 1
  %3490 = shl i32 %3489, 2
  %3491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3490, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.i32 %3491, 0
  %3493 = and i32 %55, 1
  %3494 = icmp ne i32 %3493, 0
  %3495 = lshr i32 %3492, 16
  %3496 = and i32 %3492, 65535
  %3497 = select i1 %3494, i32 %3495, i32 %3496
  %3498 = icmp eq i32 %3497, 65535
  br i1 %3498, label %3578, label %3499

; <label>:3499                                    ; preds = %3488
  %3500 = mul nuw nsw i32 %3497, 40
  %3501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3500, i32 undef)  ; BufferLoad(srv,index,wot)
  %3502 = extractvalue %dx.types.ResRet.f32 %3501, 0
  %3503 = extractvalue %dx.types.ResRet.f32 %3501, 1
  %3504 = extractvalue %dx.types.ResRet.f32 %3501, 2
  %3505 = add nuw nsw i32 %3500, 12
  %3506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3505, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.f32 %3506, 0
  %3508 = extractvalue %dx.types.ResRet.f32 %3506, 1
  %3509 = extractvalue %dx.types.ResRet.f32 %3506, 2
  %3510 = add nuw nsw i32 %3500, 24
  %3511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.ResRet.f32 %3511, 1
  %3514 = extractvalue %dx.types.ResRet.f32 %3511, 2
  %3515 = add nuw nsw i32 %3500, 36
  %3516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.f32 %3516, 0
  %3518 = fsub fast float %3481, %3502
  %3519 = fsub fast float %3482, %3503
  %3520 = fsub fast float %3483, %3504
  %3521 = fmul fast float %3517, %3518
  %3522 = fmul fast float %3517, %3519
  %3523 = fmul fast float %3517, %3520
  %3524 = call float @dx.op.unary.f32(i32 27, float %3521)  ; Round_ni(value)
  %3525 = call float @dx.op.unary.f32(i32 27, float %3522)  ; Round_ni(value)
  %3526 = call float @dx.op.unary.f32(i32 27, float %3523)  ; Round_ni(value)
  %3527 = fadd fast float %3524, 5.000000e-01
  %3528 = fadd fast float %3525, 5.000000e-01
  %3529 = fadd fast float %3526, 5.000000e-01
  %3530 = fmul fast float %3527, %3507
  %3531 = fmul fast float %3528, %3508
  %3532 = fmul fast float %3529, %3509
  %3533 = shl i32 %55, 2
  %3534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3535 = extractvalue %dx.types.ResRet.i32 %3534, 0
  %3536 = add i32 %3535, 0
  %3537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3536, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3538 = call float @dx.op.unary.f32(i32 22, float %3530)  ; Frc(value)
  %3539 = call float @dx.op.unary.f32(i32 22, float %3531)  ; Frc(value)
  %3540 = call float @dx.op.unary.f32(i32 22, float %3532)  ; Frc(value)
  %3541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3537, %dx.types.Handle %49, float %3538, float %3539, float %3540, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3542 = extractvalue %dx.types.ResRet.f32 %3541, 0
  %3543 = extractvalue %dx.types.ResRet.f32 %3541, 1
  %3544 = extractvalue %dx.types.ResRet.f32 %3541, 2
  %3545 = fmul fast float %3542, 1.023000e+03
  %3546 = fmul fast float %3543, 1.023000e+03
  %3547 = fmul fast float %3544, 1.023000e+03
  %3548 = fadd fast float %3545, 5.000000e-01
  %3549 = fadd fast float %3546, 5.000000e-01
  %3550 = fadd fast float %3547, 5.000000e-01
  %3551 = call float @dx.op.unary.f32(i32 27, float %3548)  ; Round_ni(value)
  %3552 = call float @dx.op.unary.f32(i32 27, float %3549)  ; Round_ni(value)
  %3553 = call float @dx.op.unary.f32(i32 27, float %3550)  ; Round_ni(value)
  %3554 = fsub fast float %3521, %3524
  %3555 = fsub fast float %3522, %3525
  %3556 = fsub fast float %3523, %3526
  %3557 = fmul fast float %3554, 7.500000e-01
  %3558 = fmul fast float %3555, 7.500000e-01
  %3559 = fmul fast float %3556, 7.500000e-01
  %3560 = fadd fast float %3524, 1.250000e-01
  %3561 = fadd fast float %3560, %3557
  %3562 = fadd fast float %3561, %3551
  %3563 = fadd fast float %3525, 1.250000e-01
  %3564 = fadd fast float %3563, %3558
  %3565 = fadd fast float %3564, %3552
  %3566 = fadd fast float %3526, 1.250000e-01
  %3567 = fadd fast float %3566, %3559
  %3568 = fadd fast float %3567, %3553
  %3569 = fmul fast float %3562, %3512
  %3570 = fmul fast float %3565, %3513
  %3571 = fmul fast float %3568, %3514
  %3572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.i32 %3572, 0
  %3574 = add i32 %3573, 0
  %3575 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3574, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3575, %dx.types.Handle %47, float %3569, float %3570, float %3571, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 0
  br label %3578

; <label>:3578                                    ; preds = %3499, %3488
  %3579 = phi float [ %3577, %3499 ], [ -1.000000e+00, %3488 ]
  %3580 = fadd fast float %3579, %3486
  %3581 = call float @dx.op.unary.f32(i32 7, float %3580)  ; Saturate(value)
  br label %3582

; <label>:3582                                    ; preds = %3578, %3476
  %3583 = phi float [ %3581, %3578 ], [ %3486, %3476 ]
  %3584 = fmul fast float %3583, %454
  br label %3585

; <label>:3585                                    ; preds = %3582, %3471
  %3586 = phi float [ %3584, %3582 ], [ %454, %3471 ]
  %3587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.i32 %3587, 0
  %3589 = and i32 %3588, 256
  %3590 = icmp eq i32 %3589, 0
  br i1 %3590, label %3637, label %3591

; <label>:3591                                    ; preds = %3585
  %3592 = add i32 %54, 436
  %3593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.i32 %3593, 0
  %3595 = add i32 %3594, 0
  %3596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3596, %dx.types.Handle %97, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3598 = extractvalue %dx.types.ResRet.f32 %3597, 0
  %3599 = add i32 %54, 148
  %3600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.i32 %3600, 0
  %3602 = shl i32 %3601, 4
  %3603 = and i32 %3602, 32752
  %3604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3603)  ; LegacyF16ToF32(value)
  %3605 = lshr i32 %3601, 7
  %3606 = and i32 %3605, 32752
  %3607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3606)  ; LegacyF16ToF32(value)
  %3608 = fsub fast float 1.000000e+00, %3586
  %3609 = call float @dx.op.binary.f32(i32 35, float %3608, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3610 = bitcast float %3586 to i32
  %3611 = sitofp i32 %3610 to float
  %3612 = fadd fast float %3611, 0xC1CFBF8940000000
  %3613 = fmul fast float %3607, %3612
  %3614 = fadd fast float %3613, 0x41CFBF8940000000
  %3615 = fptosi float %3614 to i32
  %3616 = bitcast i32 %3615 to float
  %3617 = bitcast float %3609 to i32
  %3618 = sitofp i32 %3617 to float
  %3619 = fadd fast float %3618, 0xC1CFBF8940000000
  %3620 = fmul fast float %3619, %3607
  %3621 = fadd fast float %3620, 0x41CFBF8940000000
  %3622 = fptosi float %3621 to i32
  %3623 = bitcast i32 %3622 to float
  %3624 = fmul fast float %3616, %3604
  %3625 = fmul fast float %3623, %3604
  %3626 = fsub fast float %3609, %3624
  %3627 = fadd fast float %3625, %3609
  %3628 = call float @dx.op.unary.f32(i32 7, float %3626)  ; Saturate(value)
  %3629 = call float @dx.op.unary.f32(i32 7, float %3627)  ; Saturate(value)
  %3630 = fsub fast float %3598, %3628
  %3631 = fsub fast float %3629, %3628
  %3632 = bitcast float %3631 to i32
  %3633 = sub nsw i32 2129859010, %3632
  %3634 = bitcast i32 %3633 to float
  %3635 = fmul fast float %3634, %3630
  %3636 = call float @dx.op.unary.f32(i32 7, float %3635)  ; Saturate(value)
  br label %3637

; <label>:3637                                    ; preds = %3591, %3585
  %3638 = phi float [ %3636, %3591 ], [ %3586, %3585 ]
  %3639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.i32 %3639, 0
  %3641 = and i32 %3640, 128
  %3642 = icmp eq i32 %3641, 0
  br i1 %3642, label %3659, label %3643

; <label>:3643                                    ; preds = %3637
  %3644 = add i32 %54, 420
  %3645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.i32 %3645, 0
  %3647 = add i32 %3646, 0
  %3648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3649 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3648, %dx.types.Handle %97, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.i32 %3651, 0
  %3653 = and i32 %3652, 524288
  %3654 = icmp ne i32 %3653, 0
  %3655 = fcmp fast ogt float %3650, 0x3FE0101020000000
  %3656 = select i1 %3655, float 1.000000e+00, float 0.000000e+00
  %3657 = select i1 %3654, float %3656, float %3650
  %3658 = fmul fast float %3657, %3638
  br label %3659

; <label>:3659                                    ; preds = %3643, %3637
  %3660 = phi float [ %3658, %3643 ], [ %3638, %3637 ]
  %3661 = fcmp fast ult float %3660, 0x3F70101020000000
  br i1 %3661, label %4400, label %3662

; <label>:3662                                    ; preds = %3659
  %3663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3664 = extractvalue %dx.types.ResRet.i32 %3663, 0
  %3665 = and i32 %3664, 16
  %3666 = icmp eq i32 %3665, 0
  br i1 %3666, label %3865, label %3667

; <label>:3667                                    ; preds = %3662
  %3668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3669 = extractvalue %dx.types.ResRet.i32 %3668, 0
  %3670 = add i32 %54, 372
  %3671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.i32 %3671, 0
  %3673 = add i32 %3672, 0
  %3674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3673, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3675 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3674, %dx.types.Handle %96, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3676 = extractvalue %dx.types.ResRet.f32 %3675, 0
  %3677 = extractvalue %dx.types.ResRet.f32 %3675, 1
  %3678 = extractvalue %dx.types.ResRet.f32 %3675, 2
  %3679 = extractvalue %dx.types.ResRet.f32 %3675, 3
  %3680 = and i32 %3669, 255
  %3681 = uitofp i32 %3680 to float
  %3682 = lshr i32 %3669, 8
  %3683 = and i32 %3682, 255
  %3684 = uitofp i32 %3683 to float
  %3685 = fmul fast float %3679, %3681
  %3686 = fadd fast float %3685, %3684
  %3687 = fmul fast float %3686, 0x3F70101000000000
  %3688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3689 = extractvalue %dx.types.ResRet.i32 %3688, 0
  %3690 = and i32 %3689, 512
  %3691 = icmp eq i32 %3690, 0
  br i1 %3691, label %3700, label %3692

; <label>:3692                                    ; preds = %3667
  %3693 = add i32 %54, 452
  %3694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3693, i32 undef)  ; BufferLoad(srv,index,wot)
  %3695 = extractvalue %dx.types.ResRet.i32 %3694, 0
  %3696 = add i32 %3695, 0
  %3697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3697, %dx.types.Handle %97, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3699 = extractvalue %dx.types.ResRet.f32 %3698, 0
  br label %3700

; <label>:3700                                    ; preds = %3692, %3667
  %3701 = phi float [ %3699, %3692 ], [ 1.000000e+00, %3667 ]
  %3702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.i32 %3702, 0
  %3704 = and i32 %3703, 33554432
  %3705 = icmp eq i32 %3704, 0
  br i1 %3705, label %3812, label %3706

; <label>:3706                                    ; preds = %3700
  %3707 = add i32 %54, 272
  %3708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3707, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.i32 %3708, 0
  %3710 = and i32 %3709, 65535
  %3711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3710)  ; LegacyF16ToF32(value)
  %3712 = lshr i32 %3709, 16
  %3713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3712)  ; LegacyF16ToF32(value)
  %3714 = add i32 %54, 276
  %3715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3714, i32 undef)  ; BufferLoad(srv,index,wot)
  %3716 = extractvalue %dx.types.ResRet.i32 %3715, 0
  %3717 = and i32 %3716, 65535
  %3718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3717)  ; LegacyF16ToF32(value)
  %3719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3720 = extractvalue %dx.types.ResRet.i32 %3719, 0
  %3721 = lshr i32 %3720, 24
  %3722 = uitofp i32 %3721 to float
  %3723 = fmul fast float %3722, 0x3F70101020000000
  %3724 = and i32 %3720, 255
  %3725 = uitofp i32 %3724 to float
  %3726 = fmul fast float %3725, 0x3F70101020000000
  %3727 = lshr i32 %3720, 8
  %3728 = and i32 %3727, 255
  %3729 = uitofp i32 %3728 to float
  %3730 = fmul fast float %3729, 0x3F70101020000000
  %3731 = lshr i32 %3720, 16
  %3732 = and i32 %3731, 255
  %3733 = uitofp i32 %3732 to float
  %3734 = fmul fast float %3733, 0x3F70101020000000
  %3735 = add i32 %54, 268
  %3736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.i32 %3736, 0
  %3738 = lshr i32 %3737, 24
  %3739 = uitofp i32 %3738 to float
  %3740 = fmul fast float %3739, 0x3F70101020000000
  %3741 = and i32 %3737, 255
  %3742 = uitofp i32 %3741 to float
  %3743 = fmul fast float %3742, 0x3F70101020000000
  %3744 = lshr i32 %3737, 8
  %3745 = and i32 %3744, 255
  %3746 = uitofp i32 %3745 to float
  %3747 = fmul fast float %3746, 0x3F70101020000000
  %3748 = lshr i32 %3737, 16
  %3749 = and i32 %3748, 255
  %3750 = uitofp i32 %3749 to float
  %3751 = fmul fast float %3750, 0x3F70101020000000
  %3752 = bitcast float %3676 to i32
  %3753 = ashr i32 %3752, 1
  %3754 = sub nsw i32 1597463174, %3753
  %3755 = bitcast i32 %3754 to float
  %3756 = fmul fast float %3676, 5.000000e-01
  %3757 = fmul fast float %3755, %3755
  %3758 = fmul fast float %3757, %3756
  %3759 = fsub fast float 1.500000e+00, %3758
  %3760 = fmul fast float %3755, %3676
  %3761 = fmul fast float %3760, %3759
  %3762 = bitcast float %3677 to i32
  %3763 = ashr i32 %3762, 1
  %3764 = sub nsw i32 1597463174, %3763
  %3765 = bitcast i32 %3764 to float
  %3766 = fmul fast float %3677, 5.000000e-01
  %3767 = fmul fast float %3765, %3765
  %3768 = fmul fast float %3767, %3766
  %3769 = fsub fast float 1.500000e+00, %3768
  %3770 = fmul fast float %3765, %3677
  %3771 = fmul fast float %3770, %3769
  %3772 = bitcast float %3678 to i32
  %3773 = ashr i32 %3772, 1
  %3774 = sub nsw i32 1597463174, %3773
  %3775 = bitcast i32 %3774 to float
  %3776 = fmul fast float %3678, 5.000000e-01
  %3777 = fmul fast float %3775, %3775
  %3778 = fmul fast float %3777, %3776
  %3779 = fsub fast float 1.500000e+00, %3778
  %3780 = fmul fast float %3775, %3678
  %3781 = fmul fast float %3780, %3779
  %3782 = fsub fast float %3761, %3743
  %3783 = fsub fast float %3771, %3747
  %3784 = fsub fast float %3781, %3751
  %3785 = fmul fast float %3782, %3711
  %3786 = fmul fast float %3783, %3713
  %3787 = fmul fast float %3784, %3718
  %3788 = fadd fast float %3785, %3726
  %3789 = fadd fast float %3786, %3730
  %3790 = fadd fast float %3787, %3734
  %3791 = call float @dx.op.unary.f32(i32 7, float %3788)  ; Saturate(value)
  %3792 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  %3793 = call float @dx.op.unary.f32(i32 7, float %3790)  ; Saturate(value)
  %3794 = fmul fast float %3791, %3791
  %3795 = fmul fast float %3792, %3792
  %3796 = fmul fast float %3793, %3793
  %3797 = fsub fast float %3794, %3676
  %3798 = fsub fast float %3795, %3677
  %3799 = fsub fast float %3796, %3678
  %3800 = fmul fast float %3797, %3701
  %3801 = fmul fast float %3798, %3701
  %3802 = fmul fast float %3799, %3701
  %3803 = fadd fast float %3800, %3676
  %3804 = fadd fast float %3801, %3677
  %3805 = fadd fast float %3802, %3678
  %3806 = fadd fast float %3723, %3687
  %3807 = fsub fast float %3806, %3740
  %3808 = call float @dx.op.unary.f32(i32 7, float %3807)  ; Saturate(value)
  %3809 = fsub fast float %3808, %3687
  %3810 = fmul fast float %3809, %3701
  %3811 = fadd fast float %3810, %3687
  br label %3865

; <label>:3812                                    ; preds = %3700
  %3813 = and i32 %3703, 134217728
  %3814 = icmp eq i32 %3813, 0
  br i1 %3814, label %3849, label %3815

; <label>:3815                                    ; preds = %3812
  %3816 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %3817 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %3818 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %3819 = fadd fast float %3816, -5.000000e-01
  %3820 = fadd fast float %3817, -5.000000e-01
  %3821 = fadd fast float %3818, -5.000000e-01
  %3822 = fmul fast float %3819, %3701
  %3823 = fmul fast float %3820, %3701
  %3824 = fmul fast float %3821, %3701
  %3825 = fadd fast float %3822, 5.000000e-01
  %3826 = fadd fast float %3823, 5.000000e-01
  %3827 = fadd fast float %3824, 5.000000e-01
  %3828 = call float @dx.op.unary.f32(i32 24, float %3676)  ; Sqrt(value)
  %3829 = call float @dx.op.unary.f32(i32 24, float %3677)  ; Sqrt(value)
  %3830 = call float @dx.op.unary.f32(i32 24, float %3678)  ; Sqrt(value)
  %3831 = fmul fast float %3825, 2.000000e+00
  %3832 = fsub fast float 1.000000e+00, %3831
  %3833 = fmul fast float %3832, %3828
  %3834 = fadd fast float %3833, %3831
  %3835 = fmul fast float %3834, %3828
  %3836 = fmul fast float %3826, 2.000000e+00
  %3837 = fsub fast float 1.000000e+00, %3836
  %3838 = fmul fast float %3837, %3829
  %3839 = fadd fast float %3838, %3836
  %3840 = fmul fast float %3839, %3829
  %3841 = fmul fast float %3827, 2.000000e+00
  %3842 = fsub fast float 1.000000e+00, %3841
  %3843 = fmul fast float %3842, %3830
  %3844 = fadd fast float %3843, %3841
  %3845 = fmul fast float %3844, %3830
  %3846 = fmul fast float %3835, %3835
  %3847 = fmul fast float %3840, %3840
  %3848 = fmul fast float %3845, %3845
  br label %3865

; <label>:3849                                    ; preds = %3812
  %3850 = fmul fast float %372, %372
  %3851 = fmul fast float %376, %376
  %3852 = fmul fast float %380, %380
  %3853 = fadd fast float %3850, -1.000000e+00
  %3854 = fadd fast float %3851, -1.000000e+00
  %3855 = fadd fast float %3852, -1.000000e+00
  %3856 = fmul fast float %3701, %3853
  %3857 = fmul fast float %3701, %3854
  %3858 = fmul fast float %3701, %3855
  %3859 = fadd fast float %3856, 1.000000e+00
  %3860 = fadd fast float %3857, 1.000000e+00
  %3861 = fadd fast float %3858, 1.000000e+00
  %3862 = fmul fast float %3859, %3676
  %3863 = fmul fast float %3860, %3677
  %3864 = fmul fast float %3861, %3678
  br label %3865

; <label>:3865                                    ; preds = %3849, %3815, %3706, %3662
  %3866 = phi float [ %3811, %3706 ], [ %3687, %3815 ], [ %3687, %3849 ], [ 0x3FA23C0BE0000000, %3662 ]
  %3867 = phi float [ %3803, %3706 ], [ %3846, %3815 ], [ %3862, %3849 ], [ 1.000000e+00, %3662 ]
  %3868 = phi float [ %3804, %3706 ], [ %3847, %3815 ], [ %3863, %3849 ], [ 1.000000e+00, %3662 ]
  %3869 = phi float [ %3805, %3706 ], [ %3848, %3815 ], [ %3864, %3849 ], [ 1.000000e+00, %3662 ]
  %3870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3871 = extractvalue %dx.types.CBufRet.i32 %3870, 1
  %3872 = and i32 %3871, 1
  %3873 = icmp ne i32 %3872, 0
  %3874 = add i32 %54, 356
  %3875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3874, i32 undef)  ; BufferLoad(srv,index,wot)
  %3876 = extractvalue %dx.types.ResRet.i32 %3875, 0
  %3877 = and i32 %3876, 32
  %3878 = icmp ne i32 %3877, 0
  %3879 = and i1 %3873, %3878
  %3880 = select i1 %3879, float 1.000000e+00, float %3867
  %3881 = select i1 %3879, float 0x3FD3333340000000, float %3868
  %3882 = select i1 %3879, float 0x3FD3333340000000, float %3869
  %3883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3884 = extractvalue %dx.types.ResRet.i32 %3883, 0
  %3885 = and i32 %3884, 32
  %3886 = icmp eq i32 %3885, 0
  br i1 %3886, label %3959, label %3887

; <label>:3887                                    ; preds = %3865
  %3888 = add i32 %54, 140
  %3889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3890 = extractvalue %dx.types.ResRet.i32 %3889, 0
  %3891 = add i32 %54, 388
  %3892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3891, i32 undef)  ; BufferLoad(srv,index,wot)
  %3893 = extractvalue %dx.types.ResRet.i32 %3892, 0
  %3894 = add i32 %3893, 0
  %3895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3894, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3896 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3895, %dx.types.Handle %96, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3897 = extractvalue %dx.types.ResRet.f32 %3896, 0
  %3898 = extractvalue %dx.types.ResRet.f32 %3896, 1
  %3899 = extractvalue %dx.types.ResRet.f32 %3896, 2
  %3900 = extractvalue %dx.types.ResRet.f32 %3896, 3
  %3901 = and i32 %3890, 255
  %3902 = uitofp i32 %3901 to float
  %3903 = lshr i32 %3890, 8
  %3904 = and i32 %3903, 255
  %3905 = uitofp i32 %3904 to float
  %3906 = lshr i32 %3890, 16
  %3907 = and i32 %3906, 255
  %3908 = uitofp i32 %3907 to float
  %3909 = fmul fast float %3908, 0x3F70101000000000
  %3910 = fmul fast float %3897, %3902
  %3911 = fadd fast float %3910, %3905
  %3912 = fmul fast float %3911, 0x3F70101000000000
  %3913 = fadd fast float %3898, -5.000000e-01
  %3914 = fadd fast float %3900, -5.000000e-01
  %3915 = fmul fast float %3913, %3909
  %3916 = fmul fast float %3914, %3909
  %3917 = fadd fast float %3915, 5.000000e-01
  %3918 = fadd fast float %3916, 5.000000e-01
  %3919 = fmul fast float %3917, 2.000000e+00
  %3920 = fadd fast float %3919, -1.000000e+00
  %3921 = fmul fast float %3918, 2.000000e+00
  %3922 = fadd fast float %3921, -1.000000e+00
  %3923 = fadd fast float %3920, %3922
  %3924 = fmul fast float %3923, 5.000000e-01
  %3925 = fsub fast float %3920, %3922
  %3926 = fmul fast float %3925, 5.000000e-01
  %3927 = call float @dx.op.unary.f32(i32 6, float %3924)  ; FAbs(value)
  %3928 = fsub fast float 1.000000e+00, %3927
  %3929 = call float @dx.op.unary.f32(i32 6, float %3926)  ; FAbs(value)
  %3930 = fsub fast float %3928, %3929
  %3931 = call float @dx.op.dot3.f32(i32 55, float %3924, float %3926, float %3930, float %3924, float %3926, float %3930)  ; Dot3(ax,ay,az,bx,by,bz)
  %3932 = call float @dx.op.unary.f32(i32 25, float %3931)  ; Rsqrt(value)
  %3933 = fmul fast float %3924, %3932
  %3934 = fmul fast float %3926, %3932
  %3935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3936 = extractvalue %dx.types.ResRet.i32 %3935, 0
  %3937 = and i32 %3936, 67108864
  %3938 = icmp eq i32 %3937, 0
  br i1 %3938, label %3955, label %3939

; <label>:3939                                    ; preds = %3887
  %3940 = add i32 %54, 328
  %3941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3942 = extractvalue %dx.types.ResRet.i32 %3941, 0
  %3943 = and i32 %3942, 65535
  %3944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3943)  ; LegacyF16ToF32(value)
  %3945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3946 = extractvalue %dx.types.ResRet.i32 %3945, 0
  %3947 = and i32 %3946, 65535
  %3948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3947)  ; LegacyF16ToF32(value)
  %3949 = lshr i32 %3942, 16
  %3950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3949)  ; LegacyF16ToF32(value)
  %3951 = fsub fast float %3912, %3950
  %3952 = fmul fast float %3951, %3944
  %3953 = fadd fast float %3952, %3948
  %3954 = call float @dx.op.unary.f32(i32 7, float %3953)  ; Saturate(value)
  br label %3955

; <label>:3955                                    ; preds = %3939, %3887
  %3956 = phi float [ %3954, %3939 ], [ %3912, %3887 ]
  %3957 = call float @dx.op.dot2.f32(i32 54, float %3933, float %3934, float %3376, float %3377)  ; Dot2(ax,ay,bx,by)
  %3958 = call float @dx.op.dot2.f32(i32 54, float %3933, float %3934, float %3378, float %3379)  ; Dot2(ax,ay,bx,by)
  br label %3959

; <label>:3959                                    ; preds = %3955, %3865
  %3960 = phi float [ %3956, %3955 ], [ 0x3FD6666660000000, %3865 ]
  %3961 = phi float [ %3957, %3955 ], [ 0.000000e+00, %3865 ]
  %3962 = phi float [ %3958, %3955 ], [ 0.000000e+00, %3865 ]
  %3963 = phi float [ %3899, %3955 ], [ 1.000000e+00, %3865 ]
  %3964 = add i32 %54, 208
  %3965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %3966 = extractvalue %dx.types.ResRet.i32 %3965, 0
  %3967 = lshr i32 %3966, 22
  %3968 = shl nuw nsw i32 %3967, 5
  %3969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3968)  ; LegacyF16ToF32(value)
  %3970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3971 = extractvalue %dx.types.ResRet.i32 %3970, 0
  %3972 = and i32 %3971, 64
  %3973 = icmp eq i32 %3972, 0
  br i1 %3973, label %4007, label %3974

; <label>:3974                                    ; preds = %3959
  %3975 = add i32 %54, 404
  %3976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3975, i32 undef)  ; BufferLoad(srv,index,wot)
  %3977 = extractvalue %dx.types.ResRet.i32 %3976, 0
  %3978 = add i32 %3977, 0
  %3979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3978, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3981 = extractvalue %dx.types.ResRet.i32 %3980, 0
  %3982 = and i32 %3981, 131072
  %3983 = icmp eq i32 %3982, 0
  %3984 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3979, %dx.types.Handle %96, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3985 = extractvalue %dx.types.ResRet.f32 %3984, 0
  %3986 = extractvalue %dx.types.ResRet.f32 %3984, 1
  %3987 = extractvalue %dx.types.ResRet.f32 %3984, 2
  %3988 = fmul fast float %3985, %360
  %3989 = fmul fast float %3986, %363
  %3990 = fmul fast float %3987, %366
  br i1 %3983, label %3997, label %3991

; <label>:3991                                    ; preds = %3974
  %3992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3993 = extractvalue %dx.types.CBufRet.f32 %3992, 0
  %3994 = fmul fast float %3993, %3988
  %3995 = fmul fast float %3993, %3989
  %3996 = fmul fast float %3993, %3990
  br label %3997

; <label>:3997                                    ; preds = %3991, %3974
  %3998 = phi float [ %3994, %3991 ], [ %3988, %3974 ]
  %3999 = phi float [ %3995, %3991 ], [ %3989, %3974 ]
  %4000 = phi float [ %3996, %3991 ], [ %3990, %3974 ]
  %4001 = fmul fast float %3998, %3969
  %4002 = select i1 %217, float %4001, float %3998
  %4003 = call float @dx.op.dot3.f32(i32 55, float %4002, float %3999, float %4000, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4004 = select i1 %217, float 0.000000e+00, float %3998
  %4005 = select i1 %217, float %4003, float %3999
  %4006 = select i1 %217, float 0.000000e+00, float %4000
  br label %4007

; <label>:4007                                    ; preds = %3997, %3959
  %4008 = phi float [ %4004, %3997 ], [ 0.000000e+00, %3959 ]
  %4009 = phi float [ %4005, %3997 ], [ 0.000000e+00, %3959 ]
  %4010 = phi float [ %4006, %3997 ], [ 0.000000e+00, %3959 ]
  %4011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4012 = extractvalue %dx.types.ResRet.i32 %4011, 0
  %4013 = and i32 %4012, 1024
  %4014 = icmp eq i32 %4013, 0
  br i1 %4014, label %4045, label %4015

; <label>:4015                                    ; preds = %4007
  %4016 = add i32 %54, 200
  %4017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4016, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.i32 %4017, 0
  %4019 = and i32 %4018, 255
  %4020 = uitofp i32 %4019 to float
  %4021 = fmul fast float %4020, 0x3F70101020000000
  %4022 = lshr i32 %4018, 8
  %4023 = and i32 %4022, 255
  %4024 = uitofp i32 %4023 to float
  %4025 = fmul fast float %4024, 0x3F70101020000000
  %4026 = lshr i32 %4018, 16
  %4027 = and i32 %4026, 255
  %4028 = uitofp i32 %4027 to float
  %4029 = fmul fast float %4028, 0x3F70101020000000
  %4030 = fmul fast float %4021, %4021
  %4031 = fmul fast float %4025, %4025
  %4032 = fmul fast float %4029, %4029
  %4033 = add i32 %54, 468
  %4034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4033, i32 undef)  ; BufferLoad(srv,index,wot)
  %4035 = extractvalue %dx.types.ResRet.i32 %4034, 0
  %4036 = add i32 %4035, 0
  %4037 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4036, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4038 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4037, %dx.types.Handle %97, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4039 = extractvalue %dx.types.ResRet.f32 %4038, 0
  %4040 = extractvalue %dx.types.ResRet.f32 %4038, 1
  %4041 = extractvalue %dx.types.ResRet.f32 %4038, 2
  %4042 = fmul fast float %4030, %4039
  %4043 = fmul fast float %4031, %4040
  %4044 = fmul fast float %4032, %4041
  br label %4045

; <label>:4045                                    ; preds = %4015, %4007
  %4046 = phi float [ %4042, %4015 ], [ 0.000000e+00, %4007 ]
  %4047 = phi float [ %4043, %4015 ], [ 0.000000e+00, %4007 ]
  %4048 = phi float [ %4044, %4015 ], [ 0.000000e+00, %4007 ]
  %4049 = fcmp fast ogt float %4046, 0.000000e+00
  %4050 = fcmp fast ogt float %4047, 0.000000e+00
  %4051 = fcmp fast ogt float %4048, 0.000000e+00
  %4052 = call float @dx.op.unary.f32(i32 23, float %4046)  ; Log(value)
  %4053 = call float @dx.op.unary.f32(i32 23, float %4047)  ; Log(value)
  %4054 = call float @dx.op.unary.f32(i32 23, float %4048)  ; Log(value)
  %4055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %4056 = extractvalue %dx.types.ResRet.i32 %4055, 0
  %4057 = lshr i32 %4056, 7
  %4058 = and i32 %4057, 32752
  %4059 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4058)  ; LegacyF16ToF32(value)
  %4060 = fmul fast float %4052, 0xBFE62E4300000000
  %4061 = fmul fast float %4060, %4059
  %4062 = fmul fast float %4053, 0xBFE62E4300000000
  %4063 = fmul fast float %4062, %4059
  %4064 = fmul fast float %4054, 0xBFE62E4300000000
  %4065 = fmul fast float %4064, %4059
  %4066 = select i1 %4049, float %4061, float 1.270000e+02
  %4067 = select i1 %4050, float %4063, float 1.270000e+02
  %4068 = select i1 %4051, float %4065, float 1.270000e+02
  %4069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4070 = extractvalue %dx.types.ResRet.i32 %4069, 0
  %4071 = and i32 %4070, 10240
  %4072 = icmp eq i32 %4071, 0
  br i1 %4072, label %4117, label %4073

; <label>:4073                                    ; preds = %4045
  %4074 = add i32 %54, 484
  %4075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4074, i32 undef)  ; BufferLoad(srv,index,wot)
  %4076 = extractvalue %dx.types.ResRet.i32 %4075, 0
  %4077 = add i32 %4076, 0
  %4078 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4077, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4079 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4078, %dx.types.Handle %97, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4080 = extractvalue %dx.types.ResRet.f32 %4079, 1
  %4081 = extractvalue %dx.types.ResRet.f32 %4079, 3
  %4082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4083 = extractvalue %dx.types.ResRet.i32 %4082, 0
  %4084 = and i32 %4083, 1048576
  %4085 = icmp ne i32 %4084, 0
  %4086 = and i32 %4083, 8192
  %4087 = icmp eq i32 %4086, 0
  br i1 %4087, label %4103, label %4088

; <label>:4088                                    ; preds = %4073
  %4089 = extractvalue %dx.types.ResRet.f32 %4079, 2
  %4090 = select i1 %4085, float %4089, float %4080
  %4091 = extractvalue %dx.types.ResRet.f32 %4079, 0
  %4092 = select i1 %4085, float %4091, float %4080
  %4093 = add i32 %54, 144
  %4094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4093, i32 undef)  ; BufferLoad(srv,index,wot)
  %4095 = extractvalue %dx.types.ResRet.i32 %4094, 0
  %4096 = lshr i32 %4095, 16
  %4097 = and i32 %4096, 255
  %4098 = uitofp i32 %4097 to float
  %4099 = fmul fast float %4098, 0x3F80101020000000
  %4100 = fmul fast float %4099, %4092
  %4101 = fmul fast float %4099, %4080
  %4102 = fmul fast float %4099, %4090
  br label %4103

; <label>:4103                                    ; preds = %4088, %4073
  %4104 = phi float [ %4100, %4088 ], [ 0.000000e+00, %4073 ]
  %4105 = phi float [ %4101, %4088 ], [ 0.000000e+00, %4073 ]
  %4106 = phi float [ %4102, %4088 ], [ 0.000000e+00, %4073 ]
  %4107 = and i32 %4083, 2048
  %4108 = icmp eq i32 %4107, 0
  br i1 %4108, label %4117, label %4109

; <label>:4109                                    ; preds = %4103
  %4110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %4111 = extractvalue %dx.types.ResRet.i32 %4110, 0
  %4112 = shl i32 %4111, 4
  %4113 = and i32 %4112, 32752
  %4114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4113)  ; LegacyF16ToF32(value)
  %4115 = fmul fast float %4114, %4081
  %4116 = call float @dx.op.binary.f32(i32 35, float %4115, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4117

; <label>:4117                                    ; preds = %4109, %4103, %4045
  %4118 = phi float [ %4104, %4109 ], [ %4104, %4103 ], [ 0.000000e+00, %4045 ]
  %4119 = phi float [ %4105, %4109 ], [ %4105, %4103 ], [ 0.000000e+00, %4045 ]
  %4120 = phi float [ %4106, %4109 ], [ %4106, %4103 ], [ 0.000000e+00, %4045 ]
  %4121 = phi float [ %4116, %4109 ], [ 0x3F70101020000000, %4103 ], [ 0x3F70101020000000, %4045 ]
  %4122 = add i32 %54, 144
  %4123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4122, i32 undef)  ; BufferLoad(srv,index,wot)
  %4124 = extractvalue %dx.types.ResRet.i32 %4123, 0
  %4125 = and i32 %4124, 255
  %4126 = uitofp i32 %4125 to float
  %4127 = lshr i32 %4124, 8
  %4128 = and i32 %4127, 255
  %4129 = uitofp i32 %4128 to float
  %4130 = call float @dx.op.dot3.f32(i32 55, float %3880, float %3881, float %3882, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4131 = fmul fast float %4129, %4130
  %4132 = fadd fast float %4131, %4126
  %4133 = fmul fast float %4132, 0x3F70101020000000
  %4134 = call float @dx.op.unary.f32(i32 7, float %4133)  ; Saturate(value)
  br i1 %3364, label %4135, label %4170

; <label>:4135                                    ; preds = %4117
  %4136 = fmul fast float %4121, 2.000000e+00
  %4137 = fcmp fast olt float %4066, 1.270000e+02
  %4138 = fcmp fast olt float %4067, 1.270000e+02
  %4139 = fcmp fast olt float %4068, 1.270000e+02
  %4140 = fmul fast float %4066, 0xBFF7154760000000
  %4141 = fmul fast float %4140, %4136
  %4142 = fmul fast float %4067, 0xBFF7154760000000
  %4143 = fmul fast float %4142, %4136
  %4144 = fmul fast float %4068, 0xBFF7154760000000
  %4145 = fmul fast float %4144, %4136
  %4146 = call float @dx.op.unary.f32(i32 21, float %4141)  ; Exp(value)
  %4147 = call float @dx.op.unary.f32(i32 21, float %4143)  ; Exp(value)
  %4148 = call float @dx.op.unary.f32(i32 21, float %4145)  ; Exp(value)
  %4149 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4150 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4151 = call float @dx.op.unary.f32(i32 7, float %4148)  ; Saturate(value)
  %4152 = fadd fast float %4149, -1.000000e+00
  %4153 = select i1 %4137, float %4152, float -1.000000e+00
  %4154 = fadd fast float %4150, -1.000000e+00
  %4155 = select i1 %4138, float %4154, float -1.000000e+00
  %4156 = fadd fast float %4151, -1.000000e+00
  %4157 = select i1 %4139, float %4156, float -1.000000e+00
  %4158 = fmul fast float %4153, %3660
  %4159 = fmul fast float %4155, %3660
  %4160 = fmul fast float %4157, %3660
  %4161 = fadd fast float %4158, 1.000000e+00
  %4162 = fadd fast float %4159, 1.000000e+00
  %4163 = fadd fast float %4160, 1.000000e+00
  %4164 = fmul fast float %4161, %3346
  %4165 = fmul fast float %4162, %3347
  %4166 = fmul fast float %4163, %3348
  %4167 = fmul fast float %4161, %3349
  %4168 = fmul fast float %4162, %3350
  %4169 = fmul fast float %4163, %3351
  br label %4170

; <label>:4170                                    ; preds = %4135, %4117
  %4171 = phi float [ %4164, %4135 ], [ %3346, %4117 ]
  %4172 = phi float [ %4165, %4135 ], [ %3347, %4117 ]
  %4173 = phi float [ %4166, %4135 ], [ %3348, %4117 ]
  %4174 = phi float [ %4167, %4135 ], [ %3349, %4117 ]
  %4175 = phi float [ %4168, %4135 ], [ %3350, %4117 ]
  %4176 = phi float [ %4169, %4135 ], [ %3351, %4117 ]
  %4177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4178 = extractvalue %dx.types.ResRet.i32 %4177, 0
  %4179 = and i32 %4178, 3
  %4180 = icmp eq i32 %4179, 3
  br i1 %4180, label %4259, label %4181

; <label>:4181                                    ; preds = %4170
  %4182 = and i32 %4178, 16
  %4183 = icmp ne i32 %4182, 0
  %4184 = select i1 %4183, float %3660, float 0.000000e+00
  %4185 = icmp eq i32 %4179, 0
  br i1 %4185, label %4186, label %4214

; <label>:4186                                    ; preds = %4181
  %4187 = and i32 %4178, 64
  %4188 = icmp ne i32 %4187, 0
  %4189 = select i1 %4188, float %3660, float 0.000000e+00
  %4190 = fsub fast float %3880, %4171
  %4191 = fsub fast float %3881, %4172
  %4192 = fsub fast float %3882, %4173
  %4193 = fmul fast float %4184, %4190
  %4194 = fmul fast float %4184, %4191
  %4195 = fmul fast float %4184, %4192
  %4196 = fadd fast float %4193, %4171
  %4197 = fadd fast float %4194, %4172
  %4198 = fadd fast float %4195, %4173
  %4199 = fsub fast float %3866, %3358
  %4200 = fmul fast float %4184, %4199
  %4201 = fadd fast float %4200, %3358
  %4202 = fsub fast float %4008, %4174
  %4203 = fsub fast float %4009, %4175
  %4204 = fsub fast float %4010, %4176
  %4205 = fmul fast float %4189, %4202
  %4206 = fmul fast float %4189, %4203
  %4207 = fmul fast float %4189, %4204
  %4208 = fadd fast float %4205, %4174
  %4209 = fadd fast float %4206, %4175
  %4210 = fadd fast float %4207, %4176
  %4211 = fsub fast float %4134, %3362
  %4212 = fmul fast float %4184, %4211
  %4213 = fadd fast float %4212, %3362
  br label %4259

; <label>:4214                                    ; preds = %4181
  %4215 = icmp eq i32 %4179, 1
  br i1 %4215, label %4216, label %4229

; <label>:4216                                    ; preds = %4214
  %4217 = fadd fast float %3880, -1.000000e+00
  %4218 = fadd fast float %3881, -1.000000e+00
  %4219 = fadd fast float %3882, -1.000000e+00
  %4220 = fmul fast float %4184, %4217
  %4221 = fmul fast float %4184, %4218
  %4222 = fmul fast float %4184, %4219
  %4223 = fadd fast float %4220, 1.000000e+00
  %4224 = fadd fast float %4221, 1.000000e+00
  %4225 = fadd fast float %4222, 1.000000e+00
  %4226 = fmul fast float %4223, %4171
  %4227 = fmul fast float %4224, %4172
  %4228 = fmul fast float %4225, %4173
  br label %4259

; <label>:4229                                    ; preds = %4214
  %4230 = icmp eq i32 %4179, 2
  br i1 %4230, label %4231, label %4259

; <label>:4231                                    ; preds = %4229
  %4232 = call float @dx.op.unary.f32(i32 24, float %3880)  ; Sqrt(value)
  %4233 = call float @dx.op.unary.f32(i32 24, float %3881)  ; Sqrt(value)
  %4234 = call float @dx.op.unary.f32(i32 24, float %3882)  ; Sqrt(value)
  %4235 = fadd fast float %4232, -5.000000e-01
  %4236 = fadd fast float %4233, -5.000000e-01
  %4237 = fadd fast float %4234, -5.000000e-01
  %4238 = fmul fast float %4235, %4184
  %4239 = fmul fast float %4236, %4184
  %4240 = fmul fast float %4237, %4184
  %4241 = fadd fast float %4238, 5.000000e-01
  %4242 = fadd fast float %4239, 5.000000e-01
  %4243 = fadd fast float %4240, 5.000000e-01
  %4244 = fmul fast float %4241, 2.000000e+00
  %4245 = fsub fast float 1.000000e+00, %4244
  %4246 = fmul fast float %4245, %4171
  %4247 = fadd fast float %4246, %4244
  %4248 = fmul fast float %4247, %4171
  %4249 = fmul fast float %4242, 2.000000e+00
  %4250 = fsub fast float 1.000000e+00, %4249
  %4251 = fmul fast float %4250, %4172
  %4252 = fadd fast float %4251, %4249
  %4253 = fmul fast float %4252, %4172
  %4254 = fmul fast float %4243, 2.000000e+00
  %4255 = fsub fast float 1.000000e+00, %4254
  %4256 = fmul fast float %4255, %4173
  %4257 = fadd fast float %4256, %4254
  %4258 = fmul fast float %4257, %4173
  br label %4259

; <label>:4259                                    ; preds = %4231, %4229, %4216, %4186, %4170
  %4260 = phi float [ %4171, %4170 ], [ %4248, %4231 ], [ %4171, %4229 ], [ %4226, %4216 ], [ %4196, %4186 ]
  %4261 = phi float [ %4172, %4170 ], [ %4253, %4231 ], [ %4172, %4229 ], [ %4227, %4216 ], [ %4197, %4186 ]
  %4262 = phi float [ %4173, %4170 ], [ %4258, %4231 ], [ %4173, %4229 ], [ %4228, %4216 ], [ %4198, %4186 ]
  %4263 = phi float [ %4174, %4170 ], [ %4174, %4231 ], [ %4174, %4229 ], [ %4174, %4216 ], [ %4208, %4186 ]
  %4264 = phi float [ %4175, %4170 ], [ %4175, %4231 ], [ %4175, %4229 ], [ %4175, %4216 ], [ %4209, %4186 ]
  %4265 = phi float [ %4176, %4170 ], [ %4176, %4231 ], [ %4176, %4229 ], [ %4176, %4216 ], [ %4210, %4186 ]
  %4266 = phi float [ %3358, %4170 ], [ %3358, %4231 ], [ %3358, %4229 ], [ %3358, %4216 ], [ %4201, %4186 ]
  %4267 = phi float [ %3362, %4170 ], [ %3362, %4231 ], [ %3362, %4229 ], [ %3362, %4216 ], [ %4213, %4186 ]
  %4268 = and i32 %4178, 12
  %4269 = icmp eq i32 %4268, 12
  br i1 %4269, label %4400, label %4270

; <label>:4270                                    ; preds = %4259
  %4271 = and i32 %4178, 2097184
  %4272 = icmp eq i32 %4271, 2097184
  %4273 = select i1 %4272, float %3660, float 0.000000e+00
  %4274 = and i32 %4178, 4194336
  %4275 = icmp eq i32 %4274, 4194336
  %4276 = select i1 %4275, float %3660, float 0.000000e+00
  %4277 = and i32 %4178, 8388640
  %4278 = icmp eq i32 %4277, 8388640
  %4279 = select i1 %4278, float %3660, float 0.000000e+00
  %4280 = and i32 %4178, 1024
  %4281 = icmp ne i32 %4280, 0
  %4282 = select i1 %4281, float %3660, float 0.000000e+00
  %4283 = and i32 %4178, 2048
  %4284 = icmp ne i32 %4283, 0
  %4285 = select i1 %4284, float %3660, float 0.000000e+00
  %4286 = and i32 %4178, 8192
  %4287 = icmp ne i32 %4286, 0
  %4288 = select i1 %4287, float %3660, float 0.000000e+00
  %4289 = icmp eq i32 %4268, 0
  br i1 %4289, label %4290, label %4324

; <label>:4290                                    ; preds = %4270
  %4291 = fsub fast float %3961, %3344
  %4292 = fsub fast float %3962, %3345
  %4293 = fmul fast float %4273, %4291
  %4294 = fmul fast float %4273, %4292
  %4295 = fadd fast float %4293, %3344
  %4296 = fadd fast float %4294, %3345
  %4297 = fsub fast float %3963, %3360
  %4298 = fmul fast float %4276, %4297
  %4299 = fadd fast float %4298, %3360
  %4300 = fsub fast float %3960, %3359
  %4301 = fmul fast float %4279, %4300
  %4302 = fadd fast float %4301, %3359
  %4303 = fsub fast float %4066, %3355
  %4304 = fsub fast float %4067, %3356
  %4305 = fsub fast float %4068, %3357
  %4306 = fmul fast float %4282, %4303
  %4307 = fmul fast float %4282, %4304
  %4308 = fmul fast float %4282, %4305
  %4309 = fadd fast float %4306, %3355
  %4310 = fadd fast float %4307, %3356
  %4311 = fadd fast float %4308, %3357
  %4312 = fsub fast float %4121, %3361
  %4313 = fmul fast float %4285, %4312
  %4314 = fadd fast float %4313, %3361
  %4315 = fsub fast float %4118, %3352
  %4316 = fsub fast float %4119, %3353
  %4317 = fsub fast float %4120, %3354
  %4318 = fmul fast float %4288, %4315
  %4319 = fmul fast float %4288, %4316
  %4320 = fmul fast float %4288, %4317
  %4321 = fadd fast float %4318, %3352
  %4322 = fadd fast float %4319, %3353
  %4323 = fadd fast float %4320, %3354
  br label %4400

; <label>:4324                                    ; preds = %4270
  %4325 = icmp eq i32 %4268, 4
  br i1 %4325, label %4326, label %4372

; <label>:4326                                    ; preds = %4324
  %4327 = fmul fast float %4273, %3961
  %4328 = fmul fast float %4273, %3962
  %4329 = fadd fast float %4327, %3344
  %4330 = fadd fast float %4328, %3345
  %4331 = call float @dx.op.binary.f32(i32 36, float %3360, float %3963)  ; FMin(a,b)
  %4332 = fsub fast float %4331, %3360
  %4333 = fmul fast float %4332, %4276
  %4334 = fadd fast float %4333, %3360
  %4335 = fadd fast float %3960, %3359
  %4336 = fmul fast float %4335, 0x3FF337FAE0000000
  %4337 = fmul fast float %3359, %3359
  %4338 = fmul fast float %3960, %3960
  %4339 = fadd fast float %4338, %4337
  %4340 = fmul fast float %4339, 0x3FE5152B00000000
  %4341 = fmul fast float %3359, 0xBFCC1F85E0000000
  %4342 = fmul fast float %4341, %3960
  %4343 = fadd fast float %4342, 0xBFE1363700000000
  %4344 = fadd fast float %4343, %4336
  %4345 = fsub fast float %4344, %4340
  %4346 = fmul fast float %4335, 0x3FBA6F0D00000000
  %4347 = fmul fast float %4339, 0x3FD0432880000000
  %4348 = fmul fast float %3359, 0xBFEF110800000000
  %4349 = fmul fast float %4348, %3960
  %4350 = fadd fast float %4349, 1.000000e+00
  %4351 = fsub fast float %4350, %4346
  %4352 = fadd fast float %4351, %4347
  %4353 = fdiv fast float %4345, %4352
  %4354 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4355 = fsub fast float %4354, %3359
  %4356 = fmul fast float %4355, %4279
  %4357 = fadd fast float %4356, %3359
  %4358 = fmul fast float %4282, %4066
  %4359 = fmul fast float %4282, %4067
  %4360 = fmul fast float %4282, %4068
  %4361 = fadd fast float %4358, %3355
  %4362 = fadd fast float %4359, %3356
  %4363 = fadd fast float %4360, %3357
  %4364 = fmul fast float %4285, %4121
  %4365 = fadd fast float %4364, %3361
  %4366 = fmul fast float %4288, %4118
  %4367 = fmul fast float %4288, %4119
  %4368 = fmul fast float %4288, %4120
  %4369 = fadd fast float %4366, %3352
  %4370 = fadd fast float %4367, %3353
  %4371 = fadd fast float %4368, %3354
  br label %4400

; <label>:4372                                    ; preds = %4324
  %4373 = icmp eq i32 %4268, 8
  br i1 %4373, label %4374, label %4400

; <label>:4374                                    ; preds = %4372
  %4375 = fmul fast float %4273, %3961
  %4376 = fmul fast float %4273, %3962
  %4377 = fadd fast float %4375, %3344
  %4378 = fadd fast float %4376, %3345
  %4379 = call float @dx.op.binary.f32(i32 36, float %3360, float %3963)  ; FMin(a,b)
  %4380 = fsub fast float %4379, %3360
  %4381 = fmul fast float %4380, %4276
  %4382 = fadd fast float %4381, %3360
  %4383 = fsub fast float %3960, %3359
  %4384 = fmul fast float %4279, %4383
  %4385 = fadd fast float %4384, %3359
  %4386 = fmul fast float %4282, %4066
  %4387 = fmul fast float %4282, %4067
  %4388 = fmul fast float %4282, %4068
  %4389 = fadd fast float %4386, %3355
  %4390 = fadd fast float %4387, %3356
  %4391 = fadd fast float %4388, %3357
  %4392 = fmul fast float %4285, %4121
  %4393 = fadd fast float %4392, %3361
  %4394 = fmul fast float %4288, %4118
  %4395 = fmul fast float %4288, %4119
  %4396 = fmul fast float %4288, %4120
  %4397 = fadd fast float %4394, %3352
  %4398 = fadd fast float %4395, %3353
  %4399 = fadd fast float %4396, %3354
  br label %4400

; <label>:4400                                    ; preds = %4374, %4372, %4326, %4290, %4259, %3659, %3363, %3343
  %4401 = phi float [ %3344, %4259 ], [ %3344, %3659 ], [ %3344, %3343 ], [ %3344, %3363 ], [ %4295, %4290 ], [ %4329, %4326 ], [ %3344, %4372 ], [ %4377, %4374 ]
  %4402 = phi float [ %3345, %4259 ], [ %3345, %3659 ], [ %3345, %3343 ], [ %3345, %3363 ], [ %4296, %4290 ], [ %4330, %4326 ], [ %3345, %4372 ], [ %4378, %4374 ]
  %4403 = phi float [ %4260, %4259 ], [ %3346, %3659 ], [ %3346, %3343 ], [ %3346, %3363 ], [ %4260, %4290 ], [ %4260, %4326 ], [ %4260, %4372 ], [ %4260, %4374 ]
  %4404 = phi float [ %4261, %4259 ], [ %3347, %3659 ], [ %3347, %3343 ], [ %3347, %3363 ], [ %4261, %4290 ], [ %4261, %4326 ], [ %4261, %4372 ], [ %4261, %4374 ]
  %4405 = phi float [ %4262, %4259 ], [ %3348, %3659 ], [ %3348, %3343 ], [ %3348, %3363 ], [ %4262, %4290 ], [ %4262, %4326 ], [ %4262, %4372 ], [ %4262, %4374 ]
  %4406 = phi float [ %4263, %4259 ], [ %3349, %3659 ], [ %3349, %3343 ], [ %3349, %3363 ], [ %4263, %4290 ], [ %4263, %4326 ], [ %4263, %4372 ], [ %4263, %4374 ]
  %4407 = phi float [ %4264, %4259 ], [ %3350, %3659 ], [ %3350, %3343 ], [ %3350, %3363 ], [ %4264, %4290 ], [ %4264, %4326 ], [ %4264, %4372 ], [ %4264, %4374 ]
  %4408 = phi float [ %4265, %4259 ], [ %3351, %3659 ], [ %3351, %3343 ], [ %3351, %3363 ], [ %4265, %4290 ], [ %4265, %4326 ], [ %4265, %4372 ], [ %4265, %4374 ]
  %4409 = phi float [ %3352, %4259 ], [ %3352, %3659 ], [ %3352, %3343 ], [ %3352, %3363 ], [ %4321, %4290 ], [ %4369, %4326 ], [ %3352, %4372 ], [ %4397, %4374 ]
  %4410 = phi float [ %3353, %4259 ], [ %3353, %3659 ], [ %3353, %3343 ], [ %3353, %3363 ], [ %4322, %4290 ], [ %4370, %4326 ], [ %3353, %4372 ], [ %4398, %4374 ]
  %4411 = phi float [ %3354, %4259 ], [ %3354, %3659 ], [ %3354, %3343 ], [ %3354, %3363 ], [ %4323, %4290 ], [ %4371, %4326 ], [ %3354, %4372 ], [ %4399, %4374 ]
  %4412 = phi float [ %3355, %4259 ], [ %3355, %3659 ], [ %3355, %3343 ], [ %3355, %3363 ], [ %4309, %4290 ], [ %4361, %4326 ], [ %3355, %4372 ], [ %4389, %4374 ]
  %4413 = phi float [ %3356, %4259 ], [ %3356, %3659 ], [ %3356, %3343 ], [ %3356, %3363 ], [ %4310, %4290 ], [ %4362, %4326 ], [ %3356, %4372 ], [ %4390, %4374 ]
  %4414 = phi float [ %3357, %4259 ], [ %3357, %3659 ], [ %3357, %3343 ], [ %3357, %3363 ], [ %4311, %4290 ], [ %4363, %4326 ], [ %3357, %4372 ], [ %4391, %4374 ]
  %4415 = phi float [ %4266, %4259 ], [ %3358, %3659 ], [ %3358, %3343 ], [ %3358, %3363 ], [ %4266, %4290 ], [ %4266, %4326 ], [ %4266, %4372 ], [ %4266, %4374 ]
  %4416 = phi float [ %3359, %4259 ], [ %3359, %3659 ], [ %3359, %3343 ], [ %3359, %3363 ], [ %4302, %4290 ], [ %4357, %4326 ], [ %3359, %4372 ], [ %4385, %4374 ]
  %4417 = phi float [ %3360, %4259 ], [ %3360, %3659 ], [ %3360, %3343 ], [ %3360, %3363 ], [ %4299, %4290 ], [ %4334, %4326 ], [ %3360, %4372 ], [ %4382, %4374 ]
  %4418 = phi float [ %3361, %4259 ], [ %3361, %3659 ], [ %3361, %3343 ], [ %3361, %3363 ], [ %4314, %4290 ], [ %4365, %4326 ], [ %3361, %4372 ], [ %4393, %4374 ]
  %4419 = phi float [ %4267, %4259 ], [ %3362, %3659 ], [ %3362, %3343 ], [ %3362, %3363 ], [ %4267, %4290 ], [ %4267, %4326 ], [ %4267, %4372 ], [ %4267, %4374 ]
  %4420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4421 = extractvalue %dx.types.CBufRet.f32 %4420, 0
  %4422 = call float @dx.op.dot2.f32(i32 54, float %4401, float %4402, float %4401, float %4402)  ; Dot2(ax,ay,bx,by)
  %4423 = fmul fast float %4422, 0x3FE3333340000000
  %4424 = fsub fast float 1.000000e+00, %4423
  %4425 = call float @dx.op.dot3.f32(i32 55, float %4401, float %4402, float %4424, float %4401, float %4402, float %4424)  ; Dot3(ax,ay,az,bx,by,bz)
  %4426 = call float @dx.op.unary.f32(i32 25, float %4425)  ; Rsqrt(value)
  %4427 = fmul fast float %4426, %4401
  %4428 = fmul fast float %4426, %4402
  %4429 = fmul fast float %4424, %4426
  %4430 = fmul fast float %4429, %107
  %4431 = fmul fast float %4429, %108
  %4432 = fmul fast float %4429, %109
  %4433 = fmul fast float %4427, %75
  %4434 = fmul fast float %4427, %76
  %4435 = fmul fast float %4427, %77
  %4436 = fadd fast float %4430, %4433
  %4437 = fadd fast float %4431, %4434
  %4438 = fadd fast float %4432, %4435
  %4439 = fmul fast float %119, %4428
  %4440 = fmul fast float %120, %4428
  %4441 = fmul fast float %121, %4428
  %4442 = fadd fast float %4436, %4439
  %4443 = fadd fast float %4437, %4440
  %4444 = fadd fast float %4438, %4441
  %4445 = call float @dx.op.dot3.f32(i32 55, float %4442, float %4443, float %4444, float %4442, float %4443, float %4444)  ; Dot3(ax,ay,az,bx,by,bz)
  %4446 = call float @dx.op.unary.f32(i32 25, float %4445)  ; Rsqrt(value)
  %4447 = fmul fast float %4442, %4446
  %4448 = fmul fast float %4443, %4446
  %4449 = fmul fast float %4444, %4446
  %4450 = and i32 %56, 1
  %4451 = icmp eq i32 %4450, 0
  br i1 %4451, label %4452, label %5048

; <label>:4452                                    ; preds = %4400
  %4453 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %4454 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %4455 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %4456 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %4457 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %4458 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %4459 = fadd fast float %4453, %155
  %4460 = fadd fast float %4454, %156
  %4461 = fadd fast float %4455, %157
  %4462 = fadd fast float %4456, %155
  %4463 = fadd fast float %4457, %156
  %4464 = fadd fast float %4458, %157
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 0
  %4467 = extractvalue %dx.types.CBufRet.f32 %4465, 1
  %4468 = extractvalue %dx.types.CBufRet.f32 %4465, 2
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 2
  %4471 = extractvalue %dx.types.CBufRet.f32 %4469, 3
  %4472 = fmul fast float %4466, %100
  %4473 = fmul fast float %4472, %4470
  %4474 = fmul fast float %4467, %101
  %4475 = fmul fast float %4474, %4471
  %4476 = fptoui float %4473 to i32
  %4477 = fptoui float %4475 to i32
  %4478 = fadd fast float %4466, -1.000000e+00
  %4479 = fadd fast float %4467, -1.000000e+00
  %4480 = fptoui float %4478 to i32
  %4481 = fptoui float %4479 to i32
  %4482 = call i32 @dx.op.binary.i32(i32 40, i32 %4476, i32 %4480)  ; UMin(a,b)
  %4483 = call i32 @dx.op.binary.i32(i32 40, i32 %4477, i32 %4481)  ; UMin(a,b)
  %4484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4485 = extractvalue %dx.types.CBufRet.f32 %4484, 2
  %4486 = extractvalue %dx.types.CBufRet.f32 %4484, 3
  %4487 = fmul fast float %4485, %91
  %4488 = fsub fast float %4487, %4486
  %4489 = fadd fast float %4468, -1.000000e+00
  %4490 = call float @dx.op.binary.f32(i32 36, float %4488, float %4489)  ; FMin(a,b)
  %4491 = fptoui float %4490 to i32
  %4492 = fptoui float %4466 to i32
  %4493 = fptoui float %4467 to i32
  %4494 = mul i32 %4491, %4493
  %4495 = add i32 %4494, %4483
  %4496 = mul i32 %4495, %4492
  %4497 = add i32 %4496, %4482
  %4498 = shl i32 %4497, 2
  %4499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4498, i32 undef)  ; BufferLoad(srv,index,wot)
  %4500 = extractvalue %dx.types.ResRet.i32 %4499, 0
  %4501 = and i32 %4500, 1023
  %4502 = lshr i32 %4500, 10
  %4503 = icmp eq i32 %4501, 0
  br i1 %4503, label %5010, label %4504

; <label>:4504                                    ; preds = %4452
  %4505 = and i32 %4500, 1023
  br label %4506

; <label>:4506                                    ; preds = %4639, %4504
  %4507 = phi i32 [ %4589, %4639 ], [ 0, %4504 ]
  %4508 = phi float [ %4640, %4639 ], [ 0.000000e+00, %4504 ]
  %4509 = phi float [ %4641, %4639 ], [ %1244, %4504 ]
  %4510 = phi float [ %4642, %4639 ], [ %4421, %4504 ]
  %4511 = phi float [ %4643, %4639 ], [ %4419, %4504 ]
  %4512 = phi float [ %4644, %4639 ], [ %4412, %4504 ]
  %4513 = phi float [ %4645, %4639 ], [ %4413, %4504 ]
  %4514 = phi float [ %4646, %4639 ], [ %4414, %4504 ]
  %4515 = phi float [ %4647, %4639 ], [ 0.000000e+00, %4504 ]
  %4516 = phi float [ %4648, %4639 ], [ 0.000000e+00, %4504 ]
  %4517 = phi float [ %4649, %4639 ], [ %4409, %4504 ]
  %4518 = phi float [ %4650, %4639 ], [ %4410, %4504 ]
  %4519 = phi float [ %4651, %4639 ], [ %4411, %4504 ]
  %4520 = phi float [ %4652, %4639 ], [ %4406, %4504 ]
  %4521 = phi float [ %4653, %4639 ], [ %4407, %4504 ]
  %4522 = phi float [ %4654, %4639 ], [ %4408, %4504 ]
  %4523 = phi float [ %4655, %4639 ], [ %4447, %4504 ]
  %4524 = phi float [ %4656, %4639 ], [ %4448, %4504 ]
  %4525 = phi float [ %4657, %4639 ], [ %4449, %4504 ]
  %4526 = phi float [ %4658, %4639 ], [ %4417, %4504 ]
  %4527 = phi float [ %4659, %4639 ], [ %4416, %4504 ]
  %4528 = phi float [ %4660, %4639 ], [ 0.000000e+00, %4504 ]
  %4529 = phi float [ %4661, %4639 ], [ %4415, %4504 ]
  %4530 = phi float [ %4662, %4639 ], [ %4403, %4504 ]
  %4531 = phi float [ %4663, %4639 ], [ %4404, %4504 ]
  %4532 = phi float [ %4664, %4639 ], [ %4405, %4504 ]
  %4533 = add nuw nsw i32 %4507, %4502
  %4534 = shl i32 %4533, 2
  %4535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4534, i32 undef)  ; BufferLoad(srv,index,wot)
  %4536 = extractvalue %dx.types.ResRet.i32 %4535, 0
  %4537 = shl i32 %4536, 8
  %4538 = or i32 %4537, 48
  %4539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4538, i32 undef)  ; BufferLoad(srv,index,wot)
  %4540 = extractvalue %dx.types.ResRet.f32 %4539, 0
  %4541 = extractvalue %dx.types.ResRet.f32 %4539, 1
  %4542 = extractvalue %dx.types.ResRet.f32 %4539, 2
  %4543 = extractvalue %dx.types.ResRet.f32 %4539, 3
  %4544 = or i32 %4537, 64
  %4545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4544, i32 undef)  ; BufferLoad(srv,index,wot)
  %4546 = extractvalue %dx.types.ResRet.i32 %4545, 0
  %4547 = extractvalue %dx.types.ResRet.i32 %4545, 1
  %4548 = or i32 %4537, 80
  %4549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4548, i32 undef)  ; BufferLoad(srv,index,wot)
  %4550 = extractvalue %dx.types.ResRet.f32 %4549, 2
  %4551 = extractvalue %dx.types.ResRet.f32 %4549, 3
  %4552 = or i32 %4537, 96
  %4553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4552, i32 undef)  ; BufferLoad(srv,index,wot)
  %4554 = extractvalue %dx.types.ResRet.f32 %4553, 0
  %4555 = extractvalue %dx.types.ResRet.f32 %4553, 1
  %4556 = extractvalue %dx.types.ResRet.f32 %4553, 2
  %4557 = extractvalue %dx.types.ResRet.f32 %4553, 3
  %4558 = or i32 %4537, 112
  %4559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4558, i32 undef)  ; BufferLoad(srv,index,wot)
  %4560 = extractvalue %dx.types.ResRet.f32 %4559, 2
  %4561 = or i32 %4537, 128
  %4562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4561, i32 undef)  ; BufferLoad(srv,index,wot)
  %4563 = extractvalue %dx.types.ResRet.f32 %4562, 0
  %4564 = extractvalue %dx.types.ResRet.f32 %4562, 1
  %4565 = extractvalue %dx.types.ResRet.f32 %4562, 2
  %4566 = extractvalue %dx.types.ResRet.f32 %4562, 3
  %4567 = or i32 %4537, 144
  %4568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4567, i32 undef)  ; BufferLoad(srv,index,wot)
  %4569 = extractvalue %dx.types.ResRet.f32 %4568, 0
  %4570 = extractvalue %dx.types.ResRet.f32 %4568, 1
  %4571 = extractvalue %dx.types.ResRet.f32 %4568, 2
  %4572 = extractvalue %dx.types.ResRet.f32 %4568, 3
  %4573 = or i32 %4537, 160
  %4574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4573, i32 undef)  ; BufferLoad(srv,index,wot)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4576 = extractvalue %dx.types.ResRet.f32 %4574, 1
  %4577 = extractvalue %dx.types.ResRet.f32 %4574, 2
  %4578 = extractvalue %dx.types.ResRet.f32 %4574, 3
  %4579 = or i32 %4537, 192
  %4580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4579, i32 undef)  ; BufferLoad(srv,index,wot)
  %4581 = extractvalue %dx.types.ResRet.i32 %4580, 0
  %4582 = or i32 %4537, 208
  %4583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4582, i32 undef)  ; BufferLoad(srv,index,wot)
  %4584 = extractvalue %dx.types.ResRet.f32 %4583, 0
  %4585 = or i32 %4537, 248
  %4586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4585, i32 undef)  ; BufferLoad(srv,index,wot)
  %4587 = extractvalue %dx.types.ResRet.f32 %4586, 0
  %4588 = extractvalue %dx.types.ResRet.f32 %4586, 1
  %4589 = add nuw nsw i32 %4507, 1
  %4590 = bitcast float %4543 to i32
  %4591 = and i32 %4590, 512
  %4592 = icmp eq i32 %4591, 0
  %4593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4537, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4595 = extractvalue %dx.types.ResRet.f32 %4593, 1
  %4596 = extractvalue %dx.types.ResRet.f32 %4593, 2
  %4597 = extractvalue %dx.types.ResRet.f32 %4593, 3
  %4598 = call float @dx.op.dot4.f32(i32 56, float %4594, float %4595, float %4596, float %4597, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4599 = or i32 %4537, 16
  %4600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4599, i32 undef)  ; BufferLoad(srv,index,wot)
  %4601 = extractvalue %dx.types.ResRet.f32 %4600, 0
  %4602 = extractvalue %dx.types.ResRet.f32 %4600, 1
  %4603 = extractvalue %dx.types.ResRet.f32 %4600, 2
  %4604 = extractvalue %dx.types.ResRet.f32 %4600, 3
  %4605 = call float @dx.op.dot4.f32(i32 56, float %4601, float %4602, float %4603, float %4604, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4606 = or i32 %4537, 32
  %4607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4606, i32 undef)  ; BufferLoad(srv,index,wot)
  %4608 = extractvalue %dx.types.ResRet.f32 %4607, 0
  %4609 = extractvalue %dx.types.ResRet.f32 %4607, 1
  %4610 = extractvalue %dx.types.ResRet.f32 %4607, 2
  %4611 = extractvalue %dx.types.ResRet.f32 %4607, 3
  %4612 = call float @dx.op.dot4.f32(i32 56, float %4608, float %4609, float %4610, float %4611, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4613 = call float @dx.op.unary.f32(i32 27, float %4598)  ; Round_ni(value)
  %4614 = call float @dx.op.unary.f32(i32 6, float %4613)  ; FAbs(value)
  %4615 = call float @dx.op.unary.f32(i32 27, float %4605)  ; Round_ni(value)
  %4616 = call float @dx.op.unary.f32(i32 6, float %4615)  ; FAbs(value)
  %4617 = call float @dx.op.unary.f32(i32 6, float %4612)  ; FAbs(value)
  %4618 = call float @dx.op.unary.f32(i32 27, float %4617)  ; Round_ni(value)
  %4619 = fadd fast float %4616, %4614
  %4620 = fadd fast float %4619, %4618
  %4621 = fcmp fast oeq float %4620, 0.000000e+00
  %4622 = call float @dx.op.dot4.f32(i32 56, float %4594, float %4595, float %4596, float %4597, float %4459, float %4460, float %4461, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4623 = call float @dx.op.dot4.f32(i32 56, float %4601, float %4602, float %4603, float %4604, float %4459, float %4460, float %4461, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4624 = call float @dx.op.dot4.f32(i32 56, float %4594, float %4595, float %4596, float %4597, float %4462, float %4463, float %4464, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4625 = call float @dx.op.dot4.f32(i32 56, float %4601, float %4602, float %4603, float %4604, float %4462, float %4463, float %4464, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4626 = fsub fast float %4622, %4598
  %4627 = fsub fast float %4624, %4598
  %4628 = fsub fast float %4623, %4605
  %4629 = fsub fast float %4625, %4605
  %4630 = call float @dx.op.dot3.f32(i32 55, float %4540, float %4541, float %4542, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4632 = extractvalue %dx.types.CBufRet.f32 %4631, 2
  %4633 = fadd fast float %4632, %4630
  %4634 = call float @dx.op.unary.f32(i32 7, float %4633)  ; Saturate(value)
  %4635 = extractvalue %dx.types.CBufRet.f32 %4631, 0
  %4636 = fcmp fast ogt float %4634, %4635
  %4637 = and i1 %4621, %4636
  %4638 = and i1 %4592, %4637
  br i1 %4638, label %4666, label %4639

; <label>:4639                                    ; preds = %4996, %4747, %4666, %4506
  %4640 = phi float [ %4508, %4666 ], [ %4750, %4747 ], [ %4750, %4996 ], [ %4508, %4506 ]
  %4641 = phi float [ %4509, %4666 ], [ %4509, %4747 ], [ %4972, %4996 ], [ %4509, %4506 ]
  %4642 = phi float [ %4510, %4666 ], [ %4510, %4747 ], [ %4971, %4996 ], [ %4510, %4506 ]
  %4643 = phi float [ %4511, %4666 ], [ %4511, %4747 ], [ %4969, %4996 ], [ %4511, %4506 ]
  %4644 = phi float [ %4512, %4666 ], [ %4512, %4747 ], [ %4947, %4996 ], [ %4512, %4506 ]
  %4645 = phi float [ %4513, %4666 ], [ %4513, %4747 ], [ %4948, %4996 ], [ %4513, %4506 ]
  %4646 = phi float [ %4514, %4666 ], [ %4514, %4747 ], [ %4949, %4996 ], [ %4514, %4506 ]
  %4647 = phi float [ %4515, %4666 ], [ %4515, %4747 ], [ %4874, %4996 ], [ %4515, %4506 ]
  %4648 = phi float [ %4516, %4666 ], [ %4516, %4747 ], [ %4872, %4996 ], [ %4516, %4506 ]
  %4649 = phi float [ %4517, %4666 ], [ %4517, %4747 ], [ %4917, %4996 ], [ %4517, %4506 ]
  %4650 = phi float [ %4518, %4666 ], [ %4518, %4747 ], [ %4918, %4996 ], [ %4518, %4506 ]
  %4651 = phi float [ %4519, %4666 ], [ %4519, %4747 ], [ %4919, %4996 ], [ %4519, %4506 ]
  %4652 = phi float [ %4520, %4666 ], [ %4520, %4747 ], [ %5006, %4996 ], [ %4520, %4506 ]
  %4653 = phi float [ %4521, %4666 ], [ %4521, %4747 ], [ %5007, %4996 ], [ %4521, %4506 ]
  %4654 = phi float [ %4522, %4666 ], [ %4522, %4747 ], [ %5008, %4996 ], [ %4522, %4506 ]
  %4655 = phi float [ %4523, %4666 ], [ %4523, %4747 ], [ %4853, %4996 ], [ %4523, %4506 ]
  %4656 = phi float [ %4524, %4666 ], [ %4524, %4747 ], [ %4854, %4996 ], [ %4524, %4506 ]
  %4657 = phi float [ %4525, %4666 ], [ %4525, %4747 ], [ %4855, %4996 ], [ %4525, %4506 ]
  %4658 = phi float [ %4526, %4666 ], [ %4526, %4747 ], [ %4927, %4996 ], [ %4526, %4506 ]
  %4659 = phi float [ %4527, %4666 ], [ %4527, %4747 ], [ %4924, %4996 ], [ %4527, %4506 ]
  %4660 = phi float [ %4528, %4666 ], [ %4528, %4747 ], [ %4921, %4996 ], [ %4528, %4506 ]
  %4661 = phi float [ %4529, %4666 ], [ %4529, %4747 ], [ %4870, %4996 ], [ %4529, %4506 ]
  %4662 = phi float [ %4530, %4666 ], [ %4530, %4747 ], [ %4865, %4996 ], [ %4530, %4506 ]
  %4663 = phi float [ %4531, %4666 ], [ %4531, %4747 ], [ %4866, %4996 ], [ %4531, %4506 ]
  %4664 = phi float [ %4532, %4666 ], [ %4532, %4747 ], [ %4867, %4996 ], [ %4532, %4506 ]
  %4665 = icmp eq i32 %4589, %4505
  br i1 %4665, label %5009, label %4506

; <label>:4666                                    ; preds = %4506
  %4667 = extractvalue %dx.types.ResRet.f32 %4559, 3
  %4668 = extractvalue %dx.types.ResRet.f32 %4559, 1
  %4669 = extractvalue %dx.types.ResRet.f32 %4559, 0
  %4670 = extractvalue %dx.types.ResRet.f32 %4549, 1
  %4671 = extractvalue %dx.types.ResRet.f32 %4549, 0
  %4672 = extractvalue %dx.types.ResRet.i32 %4545, 3
  %4673 = extractvalue %dx.types.ResRet.i32 %4545, 2
  %4674 = add i32 %4672, 0
  %4675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4674, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4677 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4675, %dx.types.Handle %4676, float %4598, float %4605, float undef, float undef, i32 0, i32 0, i32 undef, float %4626, float %4628, float undef, float %4627, float %4629, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4678 = extractvalue %dx.types.ResRet.f32 %4677, 0
  %4679 = fmul fast float %4678, %4671
  %4680 = fadd fast float %4679, %4670
  %4681 = call float @dx.op.unary.f32(i32 7, float %4680)  ; Saturate(value)
  %4682 = fmul fast float %4598, %4554
  %4683 = call float @dx.op.tertiary.f32(i32 46, float %4555, float %4605, float %4682)  ; FMad(a,b,c)
  %4684 = fadd fast float %4683, %4669
  %4685 = fmul fast float %4598, %4556
  %4686 = call float @dx.op.tertiary.f32(i32 46, float %4557, float %4605, float %4685)  ; FMad(a,b,c)
  %4687 = fadd fast float %4686, %4668
  %4688 = fmul fast float %4626, %4554
  %4689 = call float @dx.op.tertiary.f32(i32 46, float %4555, float %4628, float %4688)  ; FMad(a,b,c)
  %4690 = fmul fast float %4626, %4556
  %4691 = call float @dx.op.tertiary.f32(i32 46, float %4557, float %4628, float %4690)  ; FMad(a,b,c)
  %4692 = fmul fast float %4627, %4554
  %4693 = call float @dx.op.tertiary.f32(i32 46, float %4555, float %4629, float %4692)  ; FMad(a,b,c)
  %4694 = fmul fast float %4627, %4556
  %4695 = call float @dx.op.tertiary.f32(i32 46, float %4557, float %4629, float %4694)  ; FMad(a,b,c)
  %4696 = add i32 %4673, 0
  %4697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4696, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4698 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4697, %dx.types.Handle %4676, float %4684, float %4687, float undef, float undef, i32 0, i32 0, i32 undef, float %4689, float %4691, float undef, float %4693, float %4695, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4699 = extractvalue %dx.types.ResRet.f32 %4698, 0
  %4700 = and i32 %4590, 1024
  %4701 = icmp ne i32 %4700, 0
  %4702 = fcmp fast ogt float %4699, 0x3FE0101020000000
  %4703 = uitofp i1 %4702 to float
  %4704 = select i1 %4701, float %4703, float %4699
  %4705 = and i32 %4590, 8192
  %4706 = icmp ne i32 %4705, 0
  %4707 = select i1 %4706, float %4667, float 1.000000e+00
  %4708 = fmul fast float %4598, 2.000000e+00
  %4709 = fadd fast float %4708, -1.000000e+00
  %4710 = call float @dx.op.unary.f32(i32 6, float %4709)  ; FAbs(value)
  %4711 = fmul fast float %4710, %4587
  %4712 = fsub fast float %4711, %4587
  %4713 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4714 = fmul fast float %4605, 2.000000e+00
  %4715 = fadd fast float %4714, -1.000000e+00
  %4716 = call float @dx.op.unary.f32(i32 6, float %4715)  ; FAbs(value)
  %4717 = fmul fast float %4716, %4588
  %4718 = fsub fast float %4717, %4588
  %4719 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4720 = fmul fast float %4617, %4550
  %4721 = fsub fast float %4720, %4550
  %4722 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4723 = fmul fast float %4681, %4707
  %4724 = fmul fast float %4723, %4678
  %4725 = fmul fast float %4724, %4713
  %4726 = fmul fast float %4725, %4704
  %4727 = fmul fast float %4726, %4719
  %4728 = fmul fast float %4727, %4722
  %4729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4730 = extractvalue %dx.types.CBufRet.f32 %4729, 1
  %4731 = extractvalue %dx.types.CBufRet.f32 %4729, 0
  %4732 = fsub fast float %4634, %4731
  %4733 = fmul fast float %4732, %4730
  %4734 = call float @dx.op.unary.f32(i32 7, float %4733)  ; Saturate(value)
  %4735 = fmul fast float %4728, %4551
  %4736 = fadd fast float %4728, %4551
  %4737 = fmul fast float %4736, %4560
  %4738 = fsub fast float %4737, %4560
  %4739 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4740 = and i32 %4590, 128
  %4741 = icmp ne i32 %4740, 0
  %4742 = select i1 %4741, float %4739, float %4735
  %4743 = fmul fast float %4742, %4734
  %4744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4745 = extractvalue %dx.types.CBufRet.f32 %4744, 0
  %4746 = fcmp fast ugt float %4743, %4745
  br i1 %4746, label %4747, label %4639

; <label>:4747                                    ; preds = %4666
  %4748 = select i1 %4706, float %4743, float 0.000000e+00
  %4749 = fadd fast float %4748, %4508
  %4750 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  br i1 %4706, label %4639, label %4751

; <label>:4751                                    ; preds = %4747
  %4752 = and i32 %4590, 4
  %4753 = and i32 %4590, 8
  %4754 = add i32 %4546, 0
  %4755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4754, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4757 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4755, %dx.types.Handle %4756, float %4684, float %4687, float undef, float undef, i32 0, i32 0, i32 undef, float %4689, float %4691, float undef, float %4693, float %4695, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4758 = extractvalue %dx.types.ResRet.f32 %4757, 0
  %4759 = extractvalue %dx.types.ResRet.f32 %4757, 1
  %4760 = extractvalue %dx.types.ResRet.f32 %4757, 2
  %4761 = extractvalue %dx.types.ResRet.f32 %4757, 3
  %4762 = bitcast float %4572 to i32
  %4763 = and i32 %4762, 255
  %4764 = uitofp i32 %4763 to float
  %4765 = lshr i32 %4762, 8
  %4766 = and i32 %4765, 255
  %4767 = uitofp i32 %4766 to float
  %4768 = fmul fast float %4761, %4764
  %4769 = fadd fast float %4768, %4767
  %4770 = fmul fast float %4769, 0x3F70101000000000
  %4771 = add i32 %4547, 0
  %4772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4771, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4773 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4772, %dx.types.Handle %4756, float %4684, float %4687, float undef, float undef, i32 0, i32 0, i32 undef, float %4689, float %4691, float undef, float %4693, float %4695, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4774 = extractvalue %dx.types.ResRet.f32 %4773, 0
  %4775 = extractvalue %dx.types.ResRet.f32 %4773, 1
  %4776 = extractvalue %dx.types.ResRet.f32 %4773, 2
  %4777 = extractvalue %dx.types.ResRet.f32 %4773, 3
  %4778 = bitcast float %4566 to i32
  %4779 = and i32 %4778, 255
  %4780 = uitofp i32 %4779 to float
  %4781 = lshr i32 %4778, 8
  %4782 = and i32 %4781, 255
  %4783 = uitofp i32 %4782 to float
  %4784 = lshr i32 %4778, 16
  %4785 = and i32 %4784, 255
  %4786 = uitofp i32 %4785 to float
  %4787 = fmul fast float %4786, 0x3F70101000000000
  %4788 = fmul fast float %4774, %4780
  %4789 = fadd fast float %4788, %4783
  %4790 = fmul fast float %4789, 0x3F70101000000000
  %4791 = fadd fast float %4775, -5.000000e-01
  %4792 = fadd fast float %4777, -5.000000e-01
  %4793 = fmul fast float %4791, %4787
  %4794 = fmul fast float %4792, %4787
  %4795 = fadd fast float %4793, 5.000000e-01
  %4796 = fadd fast float %4794, 5.000000e-01
  %4797 = fmul fast float %4758, %4575
  %4798 = fmul fast float %4759, %4576
  %4799 = fmul fast float %4760, %4577
  %4800 = fmul fast float %4795, 2.000000e+00
  %4801 = fadd fast float %4800, -1.000000e+00
  %4802 = fmul fast float %4796, 2.000000e+00
  %4803 = fadd fast float %4802, -1.000000e+00
  %4804 = fadd fast float %4801, %4803
  %4805 = fmul fast float %4804, 5.000000e-01
  %4806 = fsub fast float %4801, %4803
  %4807 = fmul fast float %4806, 5.000000e-01
  %4808 = call float @dx.op.unary.f32(i32 6, float %4805)  ; FAbs(value)
  %4809 = fsub fast float 1.000000e+00, %4808
  %4810 = call float @dx.op.unary.f32(i32 6, float %4807)  ; FAbs(value)
  %4811 = fsub fast float %4809, %4810
  %4812 = call float @dx.op.dot3.f32(i32 55, float %4805, float %4807, float %4811, float %4805, float %4807, float %4811)  ; Dot3(ax,ay,az,bx,by,bz)
  %4813 = call float @dx.op.unary.f32(i32 25, float %4812)  ; Rsqrt(value)
  %4814 = fmul fast float %4805, %4813
  %4815 = fmul fast float %4807, %4813
  %4816 = fmul fast float %4813, %4811
  %4817 = fmul fast float %4816, %4540
  %4818 = fmul fast float %4816, %4541
  %4819 = fmul fast float %4816, %4542
  %4820 = fmul fast float %4814, %4563
  %4821 = fmul fast float %4814, %4564
  %4822 = fmul fast float %4814, %4565
  %4823 = fadd fast float %4820, %4817
  %4824 = fadd fast float %4821, %4818
  %4825 = fadd fast float %4822, %4819
  %4826 = fmul fast float %4815, %4569
  %4827 = fmul fast float %4815, %4570
  %4828 = fmul fast float %4815, %4571
  %4829 = fadd fast float %4823, %4826
  %4830 = fadd fast float %4824, %4827
  %4831 = fadd fast float %4825, %4828
  %4832 = call float @dx.op.dot3.f32(i32 55, float %4829, float %4830, float %4831, float %4829, float %4830, float %4831)  ; Dot3(ax,ay,az,bx,by,bz)
  %4833 = call float @dx.op.unary.f32(i32 25, float %4832)  ; Rsqrt(value)
  %4834 = fmul fast float %4829, %4833
  %4835 = fmul fast float %4830, %4833
  %4836 = fmul fast float %4831, %4833
  %4837 = icmp ne i32 %4753, 0
  %4838 = select i1 %4837, float 1.000000e+00, float 0.000000e+00
  %4839 = fmul fast float %4743, %4838
  %4840 = and i32 %4590, 1
  %4841 = icmp eq i32 %4840, 0
  br i1 %4841, label %4842, label %4846

; <label>:4842                                    ; preds = %4751
  %4843 = fsub fast float %4834, %4523
  %4844 = fsub fast float %4835, %4524
  %4845 = fsub fast float %4836, %4525
  br label %4846

; <label>:4846                                    ; preds = %4842, %4751
  %4847 = phi float [ %4843, %4842 ], [ %4834, %4751 ]
  %4848 = phi float [ %4844, %4842 ], [ %4835, %4751 ]
  %4849 = phi float [ %4845, %4842 ], [ %4836, %4751 ]
  %4850 = fmul float %4849, %4839
  %4851 = fmul float %4848, %4839
  %4852 = fmul float %4847, %4839
  %4853 = fadd fast float %4852, %4523
  %4854 = fadd fast float %4851, %4524
  %4855 = fadd fast float %4850, %4525
  %4856 = icmp ne i32 %4752, 0
  %4857 = select i1 %4856, float 1.000000e+00, float 0.000000e+00
  %4858 = fmul fast float %4743, %4857
  %4859 = fsub fast float %4797, %4530
  %4860 = fsub fast float %4798, %4531
  %4861 = fsub fast float %4799, %4532
  %4862 = fmul fast float %4859, %4858
  %4863 = fmul fast float %4860, %4858
  %4864 = fmul fast float %4861, %4858
  %4865 = fadd fast float %4862, %4530
  %4866 = fadd fast float %4863, %4531
  %4867 = fadd fast float %4864, %4532
  %4868 = fsub fast float %4770, %4529
  %4869 = fmul fast float %4868, %4858
  %4870 = fadd fast float %4869, %4529
  %4871 = fmul fast float %4858, %4516
  %4872 = fsub fast float %4516, %4871
  %4873 = fmul fast float %4858, %4515
  %4874 = fsub fast float %4515, %4873
  %4875 = bitcast float %4584 to i32
  %4876 = lshr i32 %4875, 16
  %4877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4876)  ; LegacyF16ToF32(value)
  %4878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4879 = extractvalue %dx.types.ResRet.i32 %4878, 0
  %4880 = and i32 %4879, 1
  %4881 = icmp eq i32 %4880, 0
  br i1 %4881, label %4882, label %4907

; <label>:4882                                    ; preds = %4846
  %4883 = fadd fast float %4770, 0xBFB99999A0000000
  %4884 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4885 = fmul fast float %4884, 0x3FF1C71C80000000
  %4886 = fsub fast float 1.000000e+00, %4885
  %4887 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4888 = fmul fast float %4887, %4797
  %4889 = fmul fast float %4887, %4798
  %4890 = fmul fast float %4887, %4799
  %4891 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4892 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4893 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4894 = call float @dx.op.binary.f32(i32 35, float %4892, float %4893)  ; FMax(a,b)
  %4895 = call float @dx.op.binary.f32(i32 35, float %4891, float %4894)  ; FMax(a,b)
  %4896 = fcmp fast ogt float %4895, 0.000000e+00
  %4897 = bitcast float %4895 to i32
  %4898 = sub nsw i32 2129859010, %4897
  %4899 = bitcast i32 %4898 to float
  %4900 = select i1 %4896, float %4899, float 0.000000e+00
  %4901 = fmul fast float %4891, %4877
  %4902 = fmul fast float %4892, %4877
  %4903 = fmul fast float %4893, %4877
  %4904 = fmul fast float %4901, %4900
  %4905 = fmul fast float %4902, %4900
  %4906 = fmul fast float %4903, %4900
  br label %4907

; <label>:4907                                    ; preds = %4882, %4846
  %4908 = phi float [ %4877, %4846 ], [ %4904, %4882 ]
  %4909 = phi float [ %4877, %4846 ], [ %4905, %4882 ]
  %4910 = phi float [ %4877, %4846 ], [ %4906, %4882 ]
  %4911 = fsub fast float %4908, %4517
  %4912 = fsub fast float %4909, %4518
  %4913 = fsub fast float %4910, %4519
  %4914 = fmul fast float %4911, %4858
  %4915 = fmul fast float %4912, %4858
  %4916 = fmul fast float %4913, %4858
  %4917 = fadd fast float %4914, %4517
  %4918 = fadd fast float %4915, %4518
  %4919 = fadd fast float %4916, %4519
  %4920 = fadd fast float %4743, %4528
  %4921 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4922 = fsub fast float %4790, %4527
  %4923 = fmul fast float %4922, %4839
  %4924 = fadd fast float %4923, %4527
  %4925 = fsub fast float %4776, %4526
  %4926 = fmul fast float %4925, %4839
  %4927 = fadd fast float %4926, %4526
  br i1 %4841, label %4936, label %4928

; <label>:4928                                    ; preds = %4907
  %4929 = and i32 %4590, 32768
  %4930 = icmp eq i32 %4929, 0
  br i1 %4930, label %4946, label %4931

; <label>:4931                                    ; preds = %4928
  %4932 = fmul fast float %4839, 1.270000e+02
  %4933 = fadd fast float %4932, %4512
  %4934 = fadd fast float %4932, %4513
  %4935 = fadd fast float %4932, %4514
  br label %4946

; <label>:4936                                    ; preds = %4907
  %4937 = fsub fast float 1.270000e+02, %4512
  %4938 = fsub fast float 1.270000e+02, %4513
  %4939 = fsub fast float 1.270000e+02, %4514
  %4940 = fmul fast float %4839, %4937
  %4941 = fmul fast float %4839, %4938
  %4942 = fmul fast float %4839, %4939
  %4943 = fadd fast float %4940, %4512
  %4944 = fadd fast float %4941, %4513
  %4945 = fadd fast float %4942, %4514
  br label %4946

; <label>:4946                                    ; preds = %4936, %4931, %4928
  %4947 = phi float [ %4933, %4931 ], [ %4512, %4928 ], [ %4943, %4936 ]
  %4948 = phi float [ %4934, %4931 ], [ %4513, %4928 ], [ %4944, %4936 ]
  %4949 = phi float [ %4935, %4931 ], [ %4514, %4928 ], [ %4945, %4936 ]
  %4950 = call float @dx.op.dot3.f32(i32 55, float %4797, float %4798, float %4799, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4952 = extractvalue %dx.types.CBufRet.f32 %4951, 0
  %4953 = extractvalue %dx.types.CBufRet.f32 %4951, 1
  %4954 = fmul fast float %4953, %4950
  %4955 = fadd fast float %4954, %4952
  %4956 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4957 = bitcast float %4578 to i32
  %4958 = and i32 %4957, 65535
  %4959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4958)  ; LegacyF16ToF32(value)
  %4960 = lshr i32 %4957, 16
  %4961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4960)  ; LegacyF16ToF32(value)
  %4962 = fcmp fast oge float %4959, 0.000000e+00
  %4963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4964 = extractvalue %dx.types.CBufRet.f32 %4963, 0
  %4965 = select i1 %4962, float %4959, float %4964
  %4966 = fadd fast float %4965, %4961
  %4967 = fsub fast float %4956, %4511
  %4968 = fmul fast float %4967, %4743
  %4969 = fadd fast float %4968, %4511
  %4970 = fmul fast float %4966, %4743
  %4971 = call float @dx.op.binary.f32(i32 35, float %4510, float %4970)  ; FMax(a,b)
  %4972 = call float @dx.op.binary.f32(i32 35, float %4509, float %4743)  ; FMax(a,b)
  %4973 = and i32 %4590, 16
  %4974 = icmp eq i32 %4973, 0
  br i1 %4974, label %4996, label %4975

; <label>:4975                                    ; preds = %4946
  %4976 = add i32 %4581, 0
  %4977 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4976, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4978 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4977, %dx.types.Handle %4756, float %4684, float %4687, float undef, float undef, i32 0, i32 0, i32 undef, float %4689, float %4691, float undef, float %4693, float %4695, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4979 = extractvalue %dx.types.ResRet.f32 %4978, 0
  %4980 = extractvalue %dx.types.ResRet.f32 %4978, 1
  %4981 = extractvalue %dx.types.ResRet.f32 %4978, 2
  %4982 = and i32 %4875, 65535
  %4983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4982)  ; LegacyF16ToF32(value)
  %4984 = fmul fast float %4979, %4575
  %4985 = fmul fast float %4980, %4576
  %4986 = fmul fast float %4981, %4577
  %4987 = and i32 %4590, 16384
  %4988 = icmp ne i32 %4987, 0
  %4989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4990 = extractvalue %dx.types.CBufRet.f32 %4989, 0
  %4991 = select i1 %4988, float %4990, float 1.000000e+00
  %4992 = fmul fast float %4991, %4983
  %4993 = fmul fast float %4984, %4992
  %4994 = fmul fast float %4985, %4992
  %4995 = fmul fast float %4986, %4992
  br label %4996

; <label>:4996                                    ; preds = %4975, %4946
  %4997 = phi float [ %4993, %4975 ], [ 0.000000e+00, %4946 ]
  %4998 = phi float [ %4994, %4975 ], [ 0.000000e+00, %4946 ]
  %4999 = phi float [ %4995, %4975 ], [ 0.000000e+00, %4946 ]
  %5000 = fsub fast float %4997, %4520
  %5001 = fsub fast float %4998, %4521
  %5002 = fsub fast float %4999, %4522
  %5003 = fmul fast float %5000, %4743
  %5004 = fmul fast float %5001, %4743
  %5005 = fmul fast float %5002, %4743
  %5006 = fadd fast float %5003, %4520
  %5007 = fadd fast float %5004, %4521
  %5008 = fadd fast float %5005, %4522
  br label %4639

; <label>:5009                                    ; preds = %4639
  br label %5010

; <label>:5010                                    ; preds = %5009, %4452
  %5011 = phi float [ 0.000000e+00, %4452 ], [ %4640, %5009 ]
  %5012 = phi float [ %1244, %4452 ], [ %4641, %5009 ]
  %5013 = phi float [ %4421, %4452 ], [ %4642, %5009 ]
  %5014 = phi float [ %4419, %4452 ], [ %4643, %5009 ]
  %5015 = phi float [ %4412, %4452 ], [ %4644, %5009 ]
  %5016 = phi float [ %4413, %4452 ], [ %4645, %5009 ]
  %5017 = phi float [ %4414, %4452 ], [ %4646, %5009 ]
  %5018 = phi float [ 0.000000e+00, %4452 ], [ %4647, %5009 ]
  %5019 = phi float [ 0.000000e+00, %4452 ], [ %4648, %5009 ]
  %5020 = phi float [ %4409, %4452 ], [ %4649, %5009 ]
  %5021 = phi float [ %4410, %4452 ], [ %4650, %5009 ]
  %5022 = phi float [ %4411, %4452 ], [ %4651, %5009 ]
  %5023 = phi float [ %4406, %4452 ], [ %4652, %5009 ]
  %5024 = phi float [ %4407, %4452 ], [ %4653, %5009 ]
  %5025 = phi float [ %4408, %4452 ], [ %4654, %5009 ]
  %5026 = phi float [ %4447, %4452 ], [ %4655, %5009 ]
  %5027 = phi float [ %4448, %4452 ], [ %4656, %5009 ]
  %5028 = phi float [ %4449, %4452 ], [ %4657, %5009 ]
  %5029 = phi float [ %4417, %4452 ], [ %4658, %5009 ]
  %5030 = phi float [ %4416, %4452 ], [ %4659, %5009 ]
  %5031 = phi float [ 0.000000e+00, %4452 ], [ %4660, %5009 ]
  %5032 = phi float [ %4415, %4452 ], [ %4661, %5009 ]
  %5033 = phi float [ %4403, %4452 ], [ %4662, %5009 ]
  %5034 = phi float [ %4404, %4452 ], [ %4663, %5009 ]
  %5035 = phi float [ %4405, %4452 ], [ %4664, %5009 ]
  %5036 = call float @dx.op.dot3.f32(i32 55, float %5026, float %5027, float %5028, float %5026, float %5027, float %5028)  ; Dot3(ax,ay,az,bx,by,bz)
  %5037 = call float @dx.op.unary.f32(i32 25, float %5036)  ; Rsqrt(value)
  %5038 = fmul fast float %5037, %5026
  %5039 = fmul fast float %5037, %5027
  %5040 = fmul fast float %5037, %5028
  %5041 = fadd fast float %5031, %1244
  %5042 = call float @dx.op.unary.f32(i32 7, float %5041)  ; Saturate(value)
  %5043 = call float @dx.op.dot3.f32(i32 55, float %5038, float %5039, float %5040, float %5038, float %5039, float %5040)  ; Dot3(ax,ay,az,bx,by,bz)
  %5044 = call float @dx.op.unary.f32(i32 25, float %5043)  ; Rsqrt(value)
  %5045 = fmul fast float %5044, %5038
  %5046 = fmul fast float %5044, %5039
  %5047 = fmul fast float %5044, %5040
  br label %5048

; <label>:5048                                    ; preds = %5010, %4400
  %5049 = phi float [ %5045, %5010 ], [ %4447, %4400 ]
  %5050 = phi float [ %5046, %5010 ], [ %4448, %4400 ]
  %5051 = phi float [ %5047, %5010 ], [ %4449, %4400 ]
  %5052 = phi float [ %5033, %5010 ], [ %4403, %4400 ]
  %5053 = phi float [ %5034, %5010 ], [ %4404, %4400 ]
  %5054 = phi float [ %5035, %5010 ], [ %4405, %4400 ]
  %5055 = phi float [ %5020, %5010 ], [ %4409, %4400 ]
  %5056 = phi float [ %5021, %5010 ], [ %4410, %4400 ]
  %5057 = phi float [ %5022, %5010 ], [ %4411, %4400 ]
  %5058 = phi float [ %5015, %5010 ], [ %4412, %4400 ]
  %5059 = phi float [ %5016, %5010 ], [ %4413, %4400 ]
  %5060 = phi float [ %5017, %5010 ], [ %4414, %4400 ]
  %5061 = phi float [ %5023, %5010 ], [ %4406, %4400 ]
  %5062 = phi float [ %5024, %5010 ], [ %4407, %4400 ]
  %5063 = phi float [ %5025, %5010 ], [ %4408, %4400 ]
  %5064 = phi float [ %5032, %5010 ], [ %4415, %4400 ]
  %5065 = phi float [ %5042, %5010 ], [ %1244, %4400 ]
  %5066 = phi float [ %5030, %5010 ], [ %4416, %4400 ]
  %5067 = phi float [ %5029, %5010 ], [ %4417, %4400 ]
  %5068 = phi float [ %5019, %5010 ], [ 0.000000e+00, %4400 ]
  %5069 = phi float [ %5018, %5010 ], [ 0.000000e+00, %4400 ]
  %5070 = phi float [ %5011, %5010 ], [ 0.000000e+00, %4400 ]
  %5071 = phi float [ %5013, %5010 ], [ %4421, %4400 ]
  %5072 = phi float [ %5012, %5010 ], [ %1244, %4400 ]
  %5073 = phi float [ %5014, %5010 ], [ %4419, %4400 ]
  %5074 = fadd fast float %5064, 0xBFB99999A0000000
  %5075 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5076 = fmul fast float %5075, 0x3FF1C71C80000000
  %5077 = call float @dx.op.binary.f32(i32 36, float %5064, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5078 = fsub fast float 1.000000e+00, %5076
  %5079 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5080 = fmul fast float %5079, %5052
  %5081 = fmul fast float %5079, %5053
  %5082 = fmul fast float %5079, %5054
  %5083 = call float @dx.op.unary.f32(i32 7, float %5080)  ; Saturate(value)
  %5084 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5085 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5086 = fmul fast float %5076, %5052
  %5087 = fmul fast float %5076, %5053
  %5088 = fmul fast float %5076, %5054
  %5089 = fadd fast float %5086, %5077
  %5090 = fadd fast float %5087, %5077
  %5091 = fadd fast float %5088, %5077
  %5092 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5093 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5095 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %5097 = extractvalue %dx.types.ResRet.i32 %5096, 0
  %5098 = and i32 %5097, 1
  %5099 = icmp eq i32 %5098, 0
  br i1 %5099, label %5114, label %5100

; <label>:5100                                    ; preds = %5048
  %5101 = call float @dx.op.binary.f32(i32 35, float %5084, float %5085)  ; FMax(a,b)
  %5102 = call float @dx.op.binary.f32(i32 35, float %5083, float %5101)  ; FMax(a,b)
  %5103 = fcmp fast ogt float %5102, 0.000000e+00
  %5104 = bitcast float %5102 to i32
  %5105 = sub nsw i32 2129859010, %5104
  %5106 = bitcast i32 %5105 to float
  %5107 = select i1 %5103, float %5106, float 0.000000e+00
  %5108 = fmul fast float %5083, %5055
  %5109 = fmul fast float %5084, %5056
  %5110 = fmul fast float %5085, %5057
  %5111 = fmul fast float %5108, %5107
  %5112 = fmul fast float %5109, %5107
  %5113 = fmul fast float %5110, %5107
  br label %5114

; <label>:5114                                    ; preds = %5100, %5048
  %5115 = phi float [ %5111, %5100 ], [ %5055, %5048 ]
  %5116 = phi float [ %5112, %5100 ], [ %5056, %5048 ]
  %5117 = phi float [ %5113, %5100 ], [ %5057, %5048 ]
  %5118 = call float @dx.op.binary.f32(i32 36, float %5058, float 1.270000e+02)  ; FMin(a,b)
  %5119 = call float @dx.op.binary.f32(i32 36, float %5059, float 1.270000e+02)  ; FMin(a,b)
  %5120 = call float @dx.op.binary.f32(i32 36, float %5060, float 1.270000e+02)  ; FMin(a,b)
  %5121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5122 = extractvalue %dx.types.CBufRet.i32 %5121, 3
  %5123 = and i32 %5122, 8
  %5124 = icmp ne i32 %5123, 0
  %5125 = call float @dx.op.binary.f32(i32 35, float %5083, float %5052)  ; FMax(a,b)
  %5126 = call float @dx.op.binary.f32(i32 35, float %5084, float %5052)  ; FMax(a,b)
  %5127 = call float @dx.op.binary.f32(i32 35, float %5085, float %5052)  ; FMax(a,b)
  %5128 = call float @dx.op.dot3.f32(i32 55, float %5083, float %5084, float %5085, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5129 = select i1 %217, float %5052, float %5083
  %5130 = select i1 %217, float %5128, float %5084
  %5131 = select i1 %217, float 1.000000e+00, float %5085
  %5132 = select i1 %5124, float %5125, float %5129
  %5133 = select i1 %5124, float %5126, float %5130
  %5134 = select i1 %5124, float %5127, float %5131
  %5135 = call float @dx.op.dot3.f32(i32 55, float %5115, float %5116, float %5117, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5136 = select i1 %217, float %5135, float %5115
  %5137 = select i1 %217, float %5135, float %5116
  %5138 = select i1 %217, float %5135, float %5117
  %5139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5140 = extractvalue %dx.types.CBufRet.f32 %5139, 0
  %5141 = extractvalue %dx.types.CBufRet.f32 %5139, 1
  %5142 = extractvalue %dx.types.CBufRet.f32 %5139, 2
  %5143 = fadd fast float %5140, %155
  %5144 = fadd fast float %5141, %156
  %5145 = fadd fast float %5142, %157
  %5146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5147 = extractvalue %dx.types.CBufRet.f32 %5146, 0
  %5148 = extractvalue %dx.types.CBufRet.f32 %5146, 1
  %5149 = fsub fast float %5143, %5147
  %5150 = fsub fast float %5144, %5148
  %5151 = fmul fast float %5149, %5149
  %5152 = fmul fast float %5150, %5150
  %5153 = fadd fast float %5151, %5152
  %5154 = call float @dx.op.unary.f32(i32 24, float %5153)  ; Sqrt(value)
  %5155 = extractvalue %dx.types.CBufRet.f32 %5146, 2
  %5156 = fcmp fast olt float %5154, %5155
  br i1 %5156, label %5157, label %5224

; <label>:5157                                    ; preds = %5114
  %5158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5158, 0
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5163 = extractvalue %dx.types.CBufRet.f32 %5162, 0
  %5164 = extractvalue %dx.types.CBufRet.f32 %5158, 1
  %5165 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5166 = extractvalue %dx.types.CBufRet.f32 %5162, 1
  %5167 = extractvalue %dx.types.CBufRet.f32 %5158, 3
  %5168 = extractvalue %dx.types.CBufRet.f32 %5160, 3
  %5169 = extractvalue %dx.types.CBufRet.f32 %5162, 3
  %5170 = fadd fast float %5167, %5143
  %5171 = fadd fast float %5168, %5144
  %5172 = fadd fast float %5169, %5145
  %5173 = fmul fast float %5170, %5159
  %5174 = call float @dx.op.tertiary.f32(i32 46, float %5171, float %5161, float %5173)  ; FMad(a,b,c)
  %5175 = call float @dx.op.tertiary.f32(i32 46, float %5172, float %5163, float %5174)  ; FMad(a,b,c)
  %5176 = fmul fast float %5170, %5164
  %5177 = call float @dx.op.tertiary.f32(i32 46, float %5171, float %5165, float %5176)  ; FMad(a,b,c)
  %5178 = call float @dx.op.tertiary.f32(i32 46, float %5172, float %5166, float %5177)  ; FMad(a,b,c)
  %5179 = fsub fast float %5175, %5167
  %5180 = fsub fast float %5178, %5168
  %5181 = fsub fast float %5179, %5147
  %5182 = fadd fast float %5181, %5155
  %5183 = fsub fast float %5180, %5148
  %5184 = fadd fast float %5183, %5155
  %5185 = extractvalue %dx.types.CBufRet.f32 %5146, 3
  %5186 = fmul fast float %5182, %5185
  %5187 = fmul fast float %5184, %5185
  %5188 = call float @dx.op.unary.f32(i32 7, float %5186)  ; Saturate(value)
  %5189 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5190 = fsub fast float 1.000000e+00, %5188
  %5191 = fsub fast float 1.000000e+00, %5189
  %5192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %5190, float %5191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5193 = extractvalue %dx.types.ResRet.f32 %5192, 0
  %5194 = fcmp fast ugt float %5193, 0.000000e+00
  br i1 %5194, label %5195, label %5498

; <label>:5195                                    ; preds = %5157
  %5196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5197 = extractvalue %dx.types.CBufRet.f32 %5196, 2
  %5198 = fmul fast float %5197, %5193
  %5199 = extractvalue %dx.types.CBufRet.f32 %5196, 3
  %5200 = fadd fast float %5199, %5198
  %5201 = extractvalue %dx.types.CBufRet.f32 %5162, 2
  %5202 = fadd fast float %5200, %5169
  %5203 = fmul fast float %5175, %5163
  %5204 = call float @dx.op.tertiary.f32(i32 46, float %5178, float %5166, float %5203)  ; FMad(a,b,c)
  %5205 = call float @dx.op.tertiary.f32(i32 46, float %5202, float %5201, float %5204)  ; FMad(a,b,c)
  %5206 = fsub fast float %5205, %5169
  %5207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5208 = extractvalue %dx.types.CBufRet.f32 %5207, 2
  %5209 = fsub fast float %5206, %5208
  %5210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %5190, float %5191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5211 = extractvalue %dx.types.ResRet.f32 %5210, 0
  %5212 = extractvalue %dx.types.ResRet.f32 %5210, 1
  %5213 = extractvalue %dx.types.ResRet.f32 %5210, 2
  %5214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %5190, float %5191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5215 = extractvalue %dx.types.ResRet.f32 %5214, 0
  %5216 = extractvalue %dx.types.ResRet.f32 %5214, 1
  %5217 = extractvalue %dx.types.ResRet.f32 %5214, 2
  %5218 = fadd fast float %5215, %5211
  %5219 = fmul fast float %5218, 0x3F847AE140000000
  %5220 = fadd fast float %5216, %5212
  %5221 = fmul fast float %5220, 0x3F847AE140000000
  %5222 = fadd fast float %5217, %5213
  %5223 = fmul fast float %5222, 0x3F847AE140000000
  br label %5498

; <label>:5224                                    ; preds = %5114
  %5225 = and i32 %193, 1
  %5226 = icmp eq i32 %5225, 0
  br i1 %5226, label %5498, label %5227

; <label>:5227                                    ; preds = %5224
  %5228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5229 = extractvalue %dx.types.CBufRet.f32 %5228, 0
  %5230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5231 = extractvalue %dx.types.CBufRet.f32 %5230, 0
  %5232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5233 = extractvalue %dx.types.CBufRet.f32 %5232, 0
  %5234 = extractvalue %dx.types.CBufRet.f32 %5228, 1
  %5235 = extractvalue %dx.types.CBufRet.f32 %5230, 1
  %5236 = extractvalue %dx.types.CBufRet.f32 %5232, 1
  %5237 = extractvalue %dx.types.CBufRet.f32 %5228, 3
  %5238 = extractvalue %dx.types.CBufRet.f32 %5230, 3
  %5239 = extractvalue %dx.types.CBufRet.f32 %5232, 3
  %5240 = fadd fast float %5237, %5143
  %5241 = fadd fast float %5238, %5144
  %5242 = fadd fast float %5239, %5145
  %5243 = fmul fast float %5240, %5229
  %5244 = call float @dx.op.tertiary.f32(i32 46, float %5241, float %5231, float %5243)  ; FMad(a,b,c)
  %5245 = call float @dx.op.tertiary.f32(i32 46, float %5242, float %5233, float %5244)  ; FMad(a,b,c)
  %5246 = fmul fast float %5240, %5234
  %5247 = call float @dx.op.tertiary.f32(i32 46, float %5241, float %5235, float %5246)  ; FMad(a,b,c)
  %5248 = call float @dx.op.tertiary.f32(i32 46, float %5242, float %5236, float %5247)  ; FMad(a,b,c)
  %5249 = fsub fast float %5245, %5237
  %5250 = fsub fast float %5248, %5238
  %5251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5252 = extractvalue %dx.types.CBufRet.f32 %5251, 0
  %5253 = extractvalue %dx.types.CBufRet.f32 %5251, 1
  %5254 = extractvalue %dx.types.CBufRet.f32 %5251, 2
  %5255 = extractvalue %dx.types.CBufRet.f32 %5251, 3
  %5256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.f32 %5256, 3
  %5258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5259 = extractvalue %dx.types.CBufRet.i32 %5258, 0
  %5260 = extractvalue %dx.types.CBufRet.i32 %5258, 1
  %5261 = udiv i32 %5260, %5259
  %5262 = fsub fast float %5249, %5252
  %5263 = fsub fast float %5250, %5253
  %5264 = call float @dx.op.binary.f32(i32 35, float %5262, float 0.000000e+00)  ; FMax(a,b)
  %5265 = call float @dx.op.binary.f32(i32 35, float %5263, float 0.000000e+00)  ; FMax(a,b)
  %5266 = call float @dx.op.binary.f32(i32 36, float %5264, float %5254)  ; FMin(a,b)
  %5267 = call float @dx.op.binary.f32(i32 36, float %5265, float %5255)  ; FMin(a,b)
  %5268 = add i32 %5259, -1
  %5269 = add i32 %5261, -1
  %5270 = fmul fast float %5266, %5257
  %5271 = fmul fast float %5267, %5257
  %5272 = fptoui float %5270 to i32
  %5273 = fptoui float %5271 to i32
  %5274 = call i32 @dx.op.binary.i32(i32 40, i32 %5272, i32 %5268)  ; UMin(a,b)
  %5275 = call i32 @dx.op.binary.i32(i32 40, i32 %5273, i32 %5269)  ; UMin(a,b)
  %5276 = mul i32 %5275, %5259
  %5277 = add i32 %5276, %5274
  %5278 = shl i32 %5277, 2
  %5279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5278, i32 undef)  ; BufferLoad(srv,index,wot)
  %5280 = extractvalue %dx.types.ResRet.i32 %5279, 0
  %5281 = icmp eq i32 %5280, -1
  br i1 %5281, label %5498, label %5282

; <label>:5282                                    ; preds = %5227
  %5283 = mul i32 %5280, 148
  %5284 = add i32 %5283, 4
  %5285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5284, i32 undef)  ; BufferLoad(srv,index,wot)
  %5286 = extractvalue %dx.types.ResRet.f32 %5285, 0
  %5287 = add i32 %5283, 8
  %5288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5287, i32 undef)  ; BufferLoad(srv,index,wot)
  %5289 = extractvalue %dx.types.ResRet.f32 %5288, 0
  %5290 = add i32 %5283, 36
  %5291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5290, i32 undef)  ; BufferLoad(srv,index,wot)
  %5292 = extractvalue %dx.types.ResRet.f32 %5291, 0
  %5293 = add i32 %5283, 60
  %5294 = add i32 %5283, 92
  %5295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5294, i32 undef)  ; BufferLoad(srv,index,wot)
  %5296 = extractvalue %dx.types.ResRet.i32 %5295, 0
  %5297 = add i32 %5283, 116
  %5298 = fsub fast float %5249, %5286
  %5299 = fsub fast float %5250, %5289
  %5300 = fmul fast float %5257, %5298
  %5301 = fmul fast float %5257, %5299
  %5302 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5303 = call float @dx.op.unary.f32(i32 7, float %5301)  ; Saturate(value)
  %5304 = fsub fast float 1.000000e+00, %5303
  %5305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5306 = extractvalue %dx.types.CBufRet.f32 %5305, 2
  %5307 = call float @dx.op.unary.f32(i32 83, float %5302)  ; DerivCoarseX(value)
  %5308 = call float @dx.op.unary.f32(i32 83, float %5304)  ; DerivCoarseX(value)
  %5309 = call float @dx.op.unary.f32(i32 84, float %5302)  ; DerivCoarseY(value)
  %5310 = call float @dx.op.unary.f32(i32 84, float %5304)  ; DerivCoarseY(value)
  %5311 = fmul fast float %5307, %5306
  %5312 = fmul fast float %5308, %5306
  %5313 = fmul fast float %5309, %5306
  %5314 = fmul fast float %5310, %5306
  %5315 = call float @dx.op.dot2.f32(i32 54, float %5313, float %5314, float %5313, float %5314)  ; Dot2(ax,ay,bx,by)
  %5316 = call float @dx.op.dot2.f32(i32 54, float %5311, float %5312, float %5311, float %5312)  ; Dot2(ax,ay,bx,by)
  %5317 = call float @dx.op.binary.f32(i32 35, float %5316, float %5315)  ; FMax(a,b)
  %5318 = call float @dx.op.unary.f32(i32 23, float %5317)  ; Log(value)
  %5319 = fmul fast float %5318, 5.000000e-01
  %5320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5321 = extractvalue %dx.types.CBufRet.f32 %5320, 1
  %5322 = fadd fast float %5321, %5319
  %5323 = call float @dx.op.binary.f32(i32 35, float %5322, float 0.000000e+00)  ; FMax(a,b)
  %5324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5325 = extractvalue %dx.types.CBufRet.f32 %5324, 3
  %5326 = fadd fast float %5325, %5323
  %5327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5328 = extractvalue %dx.types.CBufRet.f32 %5327, 3
  %5329 = fadd fast float %5326, %5328
  %5330 = add i32 %5296, 0
  %5331 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5330, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5332 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5331, i32 0)  ; GetDimensions(handle,mipLevel)
  %5333 = extractvalue %dx.types.Dimensions %5332, 0
  %5334 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5333)  ; FirstbitLo(value)
  %5335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5336 = extractvalue %dx.types.CBufRet.i32 %5335, 1
  %5337 = sub nsw i32 %5336, %5334
  %5338 = sitofp i32 %5337 to float
  %5339 = fsub fast float %5329, %5338
  %5340 = call float @dx.op.binary.f32(i32 35, float %5339, float 0.000000e+00)  ; FMax(a,b)
  %5341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5331, %dx.types.Handle %46, float %5302, float %5304, float %5292, float undef, i32 0, i32 0, i32 undef, float %5340)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5342 = extractvalue %dx.types.ResRet.f32 %5341, 0
  %5343 = fcmp ule float %5342, 0x3FE0101020000000
  %5344 = extractvalue %dx.types.CBufRet.i32 %5335, 0
  %5345 = and i32 %5344, 128
  %5346 = icmp ne i32 %5345, 0
  %5347 = and i1 %5343, %5346
  br i1 %5347, label %5498, label %5348

; <label>:5348                                    ; preds = %5282
  %5349 = add i32 %5283, 20
  %5350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5349, i32 undef)  ; BufferLoad(srv,index,wot)
  %5351 = extractvalue %dx.types.ResRet.f32 %5350, 0
  %5352 = add i32 %5283, 24
  %5353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5352, i32 undef)  ; BufferLoad(srv,index,wot)
  %5354 = extractvalue %dx.types.ResRet.f32 %5353, 0
  %5355 = add i32 %5283, 40
  %5356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5355, i32 undef)  ; BufferLoad(srv,index,wot)
  %5357 = extractvalue %dx.types.ResRet.f32 %5356, 0
  %5358 = add i32 %5283, 96
  %5359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5358, i32 undef)  ; BufferLoad(srv,index,wot)
  %5360 = extractvalue %dx.types.ResRet.i32 %5359, 0
  %5361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5362 = extractvalue %dx.types.CBufRet.f32 %5361, 2
  %5363 = fmul fast float %5362, %5302
  %5364 = fmul fast float %5362, %5304
  %5365 = extractvalue %dx.types.CBufRet.f32 %5361, 3
  %5366 = fadd fast float %5363, %5365
  %5367 = fadd fast float %5364, %5365
  %5368 = add i32 %5360, 0
  %5369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5368, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5370 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5369, i32 0)  ; GetDimensions(handle,mipLevel)
  %5371 = extractvalue %dx.types.Dimensions %5370, 0
  %5372 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5371)  ; FirstbitLo(value)
  %5373 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5374 = extractvalue %dx.types.CBufRet.i32 %5373, 1
  %5375 = sub nsw i32 %5374, %5372
  %5376 = sitofp i32 %5375 to float
  %5377 = fsub fast float %5326, %5376
  %5378 = call float @dx.op.binary.f32(i32 35, float %5377, float 0.000000e+00)  ; FMax(a,b)
  %5379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5369, %dx.types.Handle %46, float %5366, float %5367, float %5357, float undef, i32 0, i32 0, i32 undef, float %5378)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5380 = extractvalue %dx.types.ResRet.f32 %5379, 0
  %5381 = fmul fast float %5380, %5351
  %5382 = fadd fast float %5381, %5354
  %5383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5384 = extractvalue %dx.types.CBufRet.f32 %5383, 0
  %5385 = extractvalue %dx.types.CBufRet.f32 %5383, 1
  %5386 = extractvalue %dx.types.CBufRet.f32 %5383, 2
  %5387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5388 = extractvalue %dx.types.CBufRet.f32 %5387, 3
  %5389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5390 = extractvalue %dx.types.CBufRet.f32 %5389, 3
  %5391 = extractvalue %dx.types.CBufRet.f32 %5383, 3
  %5392 = fadd fast float %5388, %5249
  %5393 = fadd fast float %5390, %5250
  %5394 = fadd fast float %5382, %5391
  %5395 = fmul fast float %5392, %5384
  %5396 = call float @dx.op.tertiary.f32(i32 46, float %5393, float %5385, float %5395)  ; FMad(a,b,c)
  %5397 = call float @dx.op.tertiary.f32(i32 46, float %5394, float %5386, float %5396)  ; FMad(a,b,c)
  %5398 = fsub fast float %5397, %5391
  %5399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5400 = extractvalue %dx.types.CBufRet.f32 %5399, 2
  %5401 = fsub fast float %5398, %5400
  %5402 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5403 = extractvalue %dx.types.CBufRet.i32 %5402, 0
  %5404 = call i32 @dx.op.binary.i32(i32 40, i32 %5280, i32 %5403)  ; UMin(a,b)
  %5405 = mul i32 %5404, 36
  %5406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5405, i32 undef)  ; BufferLoad(srv,index,wot)
  %5407 = extractvalue %dx.types.ResRet.i32 %5406, 0
  %5408 = add i32 %5405, 4
  %5409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.f32 %5409, 0
  %5411 = fmul fast float %5410, %5302
  %5412 = fmul fast float %5410, %5304
  %5413 = extractvalue %dx.types.CBufRet.f32 %5409, 1
  %5414 = fadd fast float %5411, %5413
  %5415 = fadd fast float %5412, %5413
  %5416 = icmp eq i32 %5407, 0
  br i1 %5416, label %5485, label %5417

; <label>:5417                                    ; preds = %5348
  br label %5418

; <label>:5418                                    ; preds = %5475, %5417
  %5419 = phi float [ %5476, %5475 ], [ 0.000000e+00, %5417 ]
  %5420 = phi float [ %5477, %5475 ], [ 0.000000e+00, %5417 ]
  %5421 = phi float [ %5478, %5475 ], [ 0.000000e+00, %5417 ]
  %5422 = phi float [ %5479, %5475 ], [ 0.000000e+00, %5417 ]
  %5423 = phi float [ %5480, %5475 ], [ 0.000000e+00, %5417 ]
  %5424 = phi float [ %5481, %5475 ], [ 0.000000e+00, %5417 ]
  %5425 = phi i32 [ %5482, %5475 ], [ 0, %5417 ]
  %5426 = shl i32 %5425, 2
  %5427 = add i32 %5293, %5426
  %5428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5427, i32 undef)  ; BufferLoad(srv,index,wot)
  %5429 = extractvalue %dx.types.ResRet.f32 %5428, 0
  %5430 = add i32 %5297, %5426
  %5431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5430, i32 undef)  ; BufferLoad(srv,index,wot)
  %5432 = extractvalue %dx.types.ResRet.i32 %5431, 0
  %5433 = add i32 %5432, 0
  %5434 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5433, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5435 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5434, i32 0)  ; GetDimensions(handle,mipLevel)
  %5436 = extractvalue %dx.types.Dimensions %5435, 0
  %5437 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5436)  ; FirstbitLo(value)
  %5438 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.i32 %5438, 1
  %5440 = sub nsw i32 %5439, %5437
  %5441 = sitofp i32 %5440 to float
  %5442 = fsub fast float %5326, %5441
  %5443 = call float @dx.op.binary.f32(i32 35, float %5442, float 0.000000e+00)  ; FMax(a,b)
  %5444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5434, %dx.types.Handle %46, float %5414, float %5415, float %5429, float undef, i32 0, i32 0, i32 undef, float %5443)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5445 = extractvalue %dx.types.ResRet.f32 %5444, 0
  %5446 = fcmp fast ogt float %5445, 0.000000e+00
  br i1 %5446, label %5447, label %5475

; <label>:5447                                    ; preds = %5418
  %5448 = add i32 %5408, %5426
  %5449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5448, i32 undef)  ; BufferLoad(srv,index,wot)
  %5450 = extractvalue %dx.types.ResRet.i32 %5449, 0
  %5451 = and i32 %5450, 32767
  %5452 = mul nuw nsw i32 %5451, 928
  %5453 = add nuw nsw i32 %5452, 48
  %5454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5453, i32 undef)  ; BufferLoad(srv,index,wot)
  %5455 = extractvalue %dx.types.ResRet.f32 %5454, 0
  %5456 = extractvalue %dx.types.ResRet.f32 %5454, 1
  %5457 = extractvalue %dx.types.ResRet.f32 %5454, 2
  %5458 = add nuw nsw i32 %5452, 60
  %5459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5458, i32 undef)  ; BufferLoad(srv,index,wot)
  %5460 = extractvalue %dx.types.ResRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.ResRet.f32 %5459, 1
  %5462 = extractvalue %dx.types.ResRet.f32 %5459, 2
  %5463 = fmul fast float %5455, %5445
  %5464 = fmul fast float %5456, %5445
  %5465 = fmul fast float %5457, %5445
  %5466 = fadd fast float %5463, %5419
  %5467 = fadd fast float %5464, %5420
  %5468 = fadd fast float %5465, %5421
  %5469 = fmul fast float %5460, %5445
  %5470 = fmul fast float %5461, %5445
  %5471 = fmul fast float %5462, %5445
  %5472 = fadd fast float %5469, %5422
  %5473 = fadd fast float %5470, %5423
  %5474 = fadd fast float %5471, %5424
  br label %5475

; <label>:5475                                    ; preds = %5447, %5418
  %5476 = phi float [ %5466, %5447 ], [ %5419, %5418 ]
  %5477 = phi float [ %5467, %5447 ], [ %5420, %5418 ]
  %5478 = phi float [ %5468, %5447 ], [ %5421, %5418 ]
  %5479 = phi float [ %5472, %5447 ], [ %5422, %5418 ]
  %5480 = phi float [ %5473, %5447 ], [ %5423, %5418 ]
  %5481 = phi float [ %5474, %5447 ], [ %5424, %5418 ]
  %5482 = add nuw i32 %5425, 1
  %5483 = icmp eq i32 %5482, %5407
  br i1 %5483, label %5484, label %5418

; <label>:5484                                    ; preds = %5475
  br label %5485

; <label>:5485                                    ; preds = %5484, %5348
  %5486 = phi float [ 0.000000e+00, %5348 ], [ %5476, %5484 ]
  %5487 = phi float [ 0.000000e+00, %5348 ], [ %5477, %5484 ]
  %5488 = phi float [ 0.000000e+00, %5348 ], [ %5478, %5484 ]
  %5489 = phi float [ 0.000000e+00, %5348 ], [ %5479, %5484 ]
  %5490 = phi float [ 0.000000e+00, %5348 ], [ %5480, %5484 ]
  %5491 = phi float [ 0.000000e+00, %5348 ], [ %5481, %5484 ]
  %5492 = fadd fast float %5489, %5486
  %5493 = fmul fast float %5492, 0x3F847AE140000000
  %5494 = fadd fast float %5490, %5487
  %5495 = fmul fast float %5494, 0x3F847AE140000000
  %5496 = fadd fast float %5491, %5488
  %5497 = fmul fast float %5496, 0x3F847AE140000000
  br label %5498

; <label>:5498                                    ; preds = %5485, %5282, %5227, %5224, %5195, %5157
  %5499 = phi float [ %5209, %5195 ], [ -1.310720e+05, %5157 ], [ %5401, %5485 ], [ -1.310720e+05, %5227 ], [ -1.310720e+05, %5282 ], [ -1.310720e+05, %5224 ]
  %5500 = phi float [ %5219, %5195 ], [ 0.000000e+00, %5157 ], [ %5493, %5485 ], [ 0.000000e+00, %5227 ], [ 0.000000e+00, %5282 ], [ 0.000000e+00, %5224 ]
  %5501 = phi float [ %5221, %5195 ], [ 0.000000e+00, %5157 ], [ %5495, %5485 ], [ 0.000000e+00, %5227 ], [ 0.000000e+00, %5282 ], [ 0.000000e+00, %5224 ]
  %5502 = phi float [ %5223, %5195 ], [ 0.000000e+00, %5157 ], [ %5497, %5485 ], [ 0.000000e+00, %5227 ], [ 0.000000e+00, %5282 ], [ 0.000000e+00, %5224 ]
  %5503 = phi i1 [ true, %5195 ], [ false, %5157 ], [ true, %5485 ], [ false, %5227 ], [ false, %5282 ], [ false, %5224 ]
  %5504 = and i32 %193, 3
  %5505 = icmp eq i32 %5504, 1
  %5506 = select i1 %5505, float 1.000000e+00, float 0.000000e+00
  %5507 = fsub fast float %5499, %157
  %5508 = call float @dx.op.unary.f32(i32 7, float %5507)  ; Saturate(value)
  %5509 = select i1 %5503, float %5508, float 1.000000e+00
  %5510 = fmul fast float %5509, %5506
  %5511 = icmp eq i32 %5504, 3
  %5512 = select i1 %5511, float 1.000000e+00, float %5510
  %5513 = call float @dx.op.binary.f32(i32 35, float %5070, float %5512)  ; FMax(a,b)
  %5514 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5515 = fcmp fast une float %5514, 0.000000e+00
  %5516 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %5517 = call float @dx.op.unary.f32(i32 25, float %5516)  ; Rsqrt(value)
  br i1 %5515, label %5525, label %5518

; <label>:5518                                    ; preds = %5498
  %5519 = fmul fast float %5517, %155
  %5520 = fmul fast float %5517, %156
  %5521 = fmul fast float %5517, %157
  %5522 = fsub fast float -0.000000e+00, %5519
  %5523 = fsub fast float -0.000000e+00, %5520
  %5524 = fsub fast float -0.000000e+00, %5521
  br label %5693

; <label>:5525                                    ; preds = %5498
  %5526 = fmul fast float %155, %5517
  %5527 = fsub fast float -0.000000e+00, %5526
  %5528 = fmul fast float %156, %5517
  %5529 = fsub fast float -0.000000e+00, %5528
  %5530 = fmul fast float %157, %5517
  %5531 = fsub fast float -0.000000e+00, %5530
  %5532 = call float @dx.op.dot3.f32(i32 55, float %5527, float %5529, float %5531, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %5533 = fmul fast float %5514, 2.500000e+00
  %5534 = call float @dx.op.unary.f32(i32 7, float %5533)  ; Saturate(value)
  %5535 = fmul fast float %5514, 0x4013FFFFE0000000
  %5536 = fadd fast float %5535, 0xBFFFFFFFE0000000
  %5537 = call float @dx.op.unary.f32(i32 7, float %5536)  ; Saturate(value)
  %5538 = fmul fast float %5514, 0x4004000020000000
  %5539 = fadd fast float %5538, 0xBFF8000040000000
  %5540 = call float @dx.op.unary.f32(i32 7, float %5539)  ; Saturate(value)
  %5541 = call float @dx.op.unary.f32(i32 7, float %5534)  ; Saturate(value)
  %5542 = fmul fast float %5074, 1.000000e+01
  %5543 = call float @dx.op.unary.f32(i32 7, float %5542)  ; Saturate(value)
  %5544 = fmul fast float %5543, 2.000000e+00
  %5545 = fsub fast float 3.000000e+00, %5544
  %5546 = fmul fast float %5543, %5543
  %5547 = fmul fast float %5546, %5545
  %5548 = fsub fast float 1.000000e+00, %5547
  %5549 = fsub fast float 0x3FE3333340000000, %5095
  %5550 = fmul fast float %5549, 0x400AAAAAA0000000
  %5551 = call float @dx.op.unary.f32(i32 7, float %5550)  ; Saturate(value)
  %5552 = fmul fast float %5548, %5551
  %5553 = fmul fast float %5132, 0x3FEA2B8620000000
  %5554 = fmul fast float %5133, 0x3FEA2B8620000000
  %5555 = fmul fast float %5134, 0x3FEA2B8620000000
  %5556 = fadd fast float %5553, 0x3FC81DFBA0000000
  %5557 = fmul fast float %5556, %5132
  %5558 = fadd fast float %5557, 0x3F910E6020000000
  %5559 = fadd fast float %5554, 0x3FC81DFBA0000000
  %5560 = fmul fast float %5559, %5133
  %5561 = fadd fast float %5560, 0x3F910E6020000000
  %5562 = fadd fast float %5555, 0x3FC81DFBA0000000
  %5563 = fmul fast float %5562, %5134
  %5564 = fadd fast float %5563, 0x3F910E6020000000
  %5565 = call float @dx.op.unary.f32(i32 7, float %5558)  ; Saturate(value)
  %5566 = call float @dx.op.unary.f32(i32 7, float %5561)  ; Saturate(value)
  %5567 = call float @dx.op.unary.f32(i32 7, float %5564)  ; Saturate(value)
  %5568 = fsub fast float %5565, %5132
  %5569 = fsub fast float %5566, %5133
  %5570 = fsub fast float %5567, %5134
  %5571 = fmul fast float %5568, %5541
  %5572 = fmul fast float %5571, %5552
  %5573 = fmul fast float %5569, %5541
  %5574 = fmul fast float %5573, %5552
  %5575 = fmul fast float %5570, %5541
  %5576 = fmul fast float %5575, %5552
  %5577 = fadd fast float %5572, %5132
  %5578 = fadd fast float %5574, %5133
  %5579 = fadd fast float %5576, %5134
  %5580 = fmul fast float %5067, %5067
  %5581 = fmul fast float %5580, %5580
  %5582 = fadd fast float %5537, 1.000000e+00
  %5583 = fsub fast float %5582, %5552
  %5584 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  %5585 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5586 = call float @dx.op.unary.f32(i32 7, float %5585)  ; Saturate(value)
  %5587 = fsub fast float 1.000000e+00, %5581
  %5588 = call float @dx.op.binary.f32(i32 36, float %5584, float %5587)  ; FMin(a,b)
  %5589 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  %5590 = call float @dx.op.binary.f32(i32 35, float %5588, float %5589)  ; FMax(a,b)
  %5591 = fadd fast float %5586, 0xBFE4CCCCC0000000
  %5592 = fmul fast float %5591, 0x4006DB6DA0000000
  %5593 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5594 = fmul fast float %5593, 2.000000e+00
  %5595 = fsub fast float 3.000000e+00, %5594
  %5596 = bitcast float %5092 to i32
  %5597 = ashr i32 %5596, 1
  %5598 = add nsw i32 %5597, 532487669
  %5599 = bitcast i32 %5598 to float
  %5600 = fsub fast float 1.000000e+00, %5599
  %5601 = bitcast float %5600 to i32
  %5602 = sub nsw i32 2129859010, %5601
  %5603 = bitcast i32 %5602 to float
  %5604 = fmul fast float %5603, 2.000000e+00
  %5605 = bitcast float %5093 to i32
  %5606 = ashr i32 %5605, 1
  %5607 = add nsw i32 %5606, 532487669
  %5608 = bitcast i32 %5607 to float
  %5609 = fsub fast float 1.000000e+00, %5608
  %5610 = bitcast float %5609 to i32
  %5611 = sub nsw i32 2129859010, %5610
  %5612 = bitcast i32 %5611 to float
  %5613 = fmul fast float %5612, 2.000000e+00
  %5614 = bitcast float %5094 to i32
  %5615 = ashr i32 %5614, 1
  %5616 = add nsw i32 %5615, 532487669
  %5617 = bitcast i32 %5616 to float
  %5618 = fsub fast float 1.000000e+00, %5617
  %5619 = bitcast float %5618 to i32
  %5620 = sub nsw i32 2129859010, %5619
  %5621 = bitcast i32 %5620 to float
  %5622 = fmul fast float %5621, 2.000000e+00
  %5623 = fsub fast float 0x4002A9FBE0000000, %5604
  %5624 = fadd fast float %5604, 0x3FD54FDF00000000
  %5625 = bitcast float %5624 to i32
  %5626 = sub nsw i32 2129859010, %5625
  %5627 = bitcast i32 %5626 to float
  %5628 = fmul fast float %5627, %5623
  %5629 = fmul fast float %5628, %5628
  %5630 = fsub fast float 0x4002A9FBE0000000, %5613
  %5631 = fadd fast float %5613, 0x3FD54FDF00000000
  %5632 = bitcast float %5631 to i32
  %5633 = sub nsw i32 2129859010, %5632
  %5634 = bitcast i32 %5633 to float
  %5635 = fmul fast float %5634, %5630
  %5636 = fmul fast float %5635, %5635
  %5637 = fsub fast float 0x4002A9FBE0000000, %5622
  %5638 = fadd fast float %5622, 0x3FD54FDF00000000
  %5639 = bitcast float %5638 to i32
  %5640 = sub nsw i32 2129859010, %5639
  %5641 = bitcast i32 %5640 to float
  %5642 = fmul fast float %5641, %5637
  %5643 = fmul fast float %5642, %5642
  %5644 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5629)  ; FMax(a,b)
  %5645 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5636)  ; FMax(a,b)
  %5646 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5643)  ; FMax(a,b)
  %5647 = fsub fast float 1.000000e+00, %5532
  %5648 = fadd fast float %5647, %5548
  %5649 = call float @dx.op.unary.f32(i32 7, float %5648)  ; Saturate(value)
  %5650 = fsub fast float 1.000000e+00, %5512
  %5651 = fmul fast float %5590, %5650
  %5652 = fmul fast float %5593, %5593
  %5653 = fmul fast float %5652, %5651
  %5654 = fmul fast float %5653, %5595
  %5655 = fmul fast float %5650, 0xBFE99999A0000000
  %5656 = fmul fast float %5655, %5541
  %5657 = fmul fast float %5656, %5552
  %5658 = fadd fast float %5657, 1.000000e+00
  %5659 = fadd fast float %5095, -1.000000e+00
  %5660 = fmul fast float %5658, %5659
  %5661 = fadd fast float %5660, 1.000000e+00
  %5662 = fsub fast float %5644, %5092
  %5663 = fsub fast float %5645, %5093
  %5664 = fsub fast float %5646, %5094
  %5665 = fmul fast float %5654, %5662
  %5666 = fmul fast float %5654, %5663
  %5667 = fmul fast float %5654, %5664
  %5668 = fadd fast float %5665, %5092
  %5669 = fadd fast float %5666, %5093
  %5670 = fadd fast float %5667, %5094
  %5671 = fsub fast float %107, %5049
  %5672 = fsub fast float %108, %5050
  %5673 = fsub fast float %109, %5051
  %5674 = fmul fast float %5654, %5671
  %5675 = fmul fast float %5654, %5672
  %5676 = fmul fast float %5654, %5673
  %5677 = fadd fast float %5674, %5049
  %5678 = fadd fast float %5675, %5050
  %5679 = fadd fast float %5676, %5051
  %5680 = fmul fast float %5654, %5649
  %5681 = call float @dx.op.unary.f32(i32 7, float %5661)  ; Saturate(value)
  %5682 = fsub fast float 1.000000e+00, %5681
  %5683 = fmul fast float %5680, %5682
  %5684 = fadd fast float %5683, %5681
  %5685 = fsub fast float 1.000000e+00, %5067
  %5686 = fmul fast float %5654, %5685
  %5687 = fadd fast float %5686, %5067
  %5688 = call float @dx.op.dot3.f32(i32 55, float %5677, float %5678, float %5679, float %5677, float %5678, float %5679)  ; Dot3(ax,ay,az,bx,by,bz)
  %5689 = call float @dx.op.unary.f32(i32 25, float %5688)  ; Rsqrt(value)
  %5690 = fmul fast float %5677, %5689
  %5691 = fmul fast float %5678, %5689
  %5692 = fmul fast float %5679, %5689
  br label %5693

; <label>:5693                                    ; preds = %5525, %5518
  %5694 = phi float [ %5524, %5518 ], [ %5531, %5525 ]
  %5695 = phi float [ %5523, %5518 ], [ %5529, %5525 ]
  %5696 = phi float [ %5522, %5518 ], [ %5527, %5525 ]
  %5697 = phi float [ %5521, %5518 ], [ %5530, %5525 ]
  %5698 = phi float [ %5520, %5518 ], [ %5528, %5525 ]
  %5699 = phi float [ %5519, %5518 ], [ %5526, %5525 ]
  %5700 = phi float [ %5132, %5518 ], [ %5577, %5525 ]
  %5701 = phi float [ %5133, %5518 ], [ %5578, %5525 ]
  %5702 = phi float [ %5134, %5518 ], [ %5579, %5525 ]
  %5703 = phi float [ %5092, %5518 ], [ %5668, %5525 ]
  %5704 = phi float [ %5093, %5518 ], [ %5669, %5525 ]
  %5705 = phi float [ %5094, %5518 ], [ %5670, %5525 ]
  %5706 = phi float [ %5049, %5518 ], [ %5690, %5525 ]
  %5707 = phi float [ %5050, %5518 ], [ %5691, %5525 ]
  %5708 = phi float [ %5051, %5518 ], [ %5692, %5525 ]
  %5709 = phi float [ %5095, %5518 ], [ %5684, %5525 ]
  %5710 = phi float [ %5067, %5518 ], [ %5687, %5525 ]
  %5711 = fsub fast float -0.000000e+00, %157
  %5712 = select i1 %217, float 0.000000e+00, float %5705
  %5713 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5707, float %5708, float %5696, float %5695, float %5694)  ; Dot3(ax,ay,az,bx,by,bz)
  %5714 = call float @dx.op.unary.f32(i32 7, float %5713)  ; Saturate(value)
  %5715 = call float @dx.op.dot3.f32(i32 55, float %5699, float %5698, float %5697, float %5706, float %5707, float %5708)  ; Dot3(ax,ay,az,bx,by,bz)
  %5716 = fmul fast float %5715, 2.000000e+00
  %5717 = fmul fast float %5716, %5706
  %5718 = fmul fast float %5716, %5707
  %5719 = fmul fast float %5716, %5708
  %5720 = fsub fast float %5699, %5717
  %5721 = fsub fast float %5698, %5718
  %5722 = fsub fast float %5697, %5719
  %5723 = call float @dx.op.binary.f32(i32 36, float %5710, float 1.000000e+00)  ; FMin(a,b)
  %5724 = fsub fast float 1.000000e+00, %5710
  %5725 = bitcast float %5724 to i32
  %5726 = sub nsw i32 2129859010, %5725
  %5727 = bitcast i32 %5726 to float
  %5728 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %5729 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5730 = fcmp fast oeq float %5729, 0.000000e+00
  %5731 = fcmp fast oeq float %5728, 0.000000e+00
  %5732 = or i1 %5731, %5730
  br i1 %5732, label %5762, label %5733

; <label>:5733                                    ; preds = %5693
  %5734 = fsub fast float -0.000000e+00, %74
  %5735 = fsub fast float -0.000000e+00, %72
  %5736 = call float @dx.op.unary.f32(i32 24, float %5729)  ; Sqrt(value)
  %5737 = fdiv fast float %5736, %5728
  %5738 = fcmp fast ogt float %5737, 0x3FFB6F8900000000
  %5739 = select i1 %5738, float 0x3FFB6F8900000000, float %5737
  %5740 = fmul fast float %5739, 0x3FE8A23460000000
  %5741 = call float @dx.op.unary.f32(i32 7, float %5740)  ; Saturate(value)
  %5742 = call float @dx.op.binary.f32(i32 35, float %5739, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5743 = fmul fast float %5741, %5728
  %5744 = fmul fast float %5742, 0x3FF279A740000000
  %5745 = fadd fast float %5744, -1.000000e+00
  %5746 = call float @dx.op.dot3.f32(i32 55, float %5734, float %5735, float %73, float %5734, float %5735, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5747 = call float @dx.op.unary.f32(i32 25, float %5746)  ; Rsqrt(value)
  %5748 = fmul fast float %5747, %5734
  %5749 = fmul fast float %5747, %5735
  %5750 = fmul fast float %5747, %73
  %5751 = fmul fast float %5745, %5745
  %5752 = fsub fast float 1.000000e+00, %5751
  %5753 = fmul fast float %5742, 0x40005F8BE0000000
  %5754 = fsub fast float 0x400C5BF8A0000000, %5753
  %5755 = fdiv fast float %5743, %5754
  %5756 = fmul fast float %5755, 0x3FEE31C3C0000000
  %5757 = fmul fast float %5756, %5752
  %5758 = fmul fast float %5742, 0x3FDACB7480000000
  %5759 = fadd fast float %5758, 0xBFD7347680000000
  %5760 = fmul fast float %5759, %5755
  %5761 = fmul fast float %5760, %5752
  br label %5762

; <label>:5762                                    ; preds = %5733, %5693
  %5763 = phi float [ %5748, %5733 ], [ 0.000000e+00, %5693 ]
  %5764 = phi float [ %5749, %5733 ], [ 0.000000e+00, %5693 ]
  %5765 = phi float [ %5750, %5733 ], [ 0.000000e+00, %5693 ]
  %5766 = phi float [ %5757, %5733 ], [ 0.000000e+00, %5693 ]
  %5767 = phi float [ %5761, %5733 ], [ 0.000000e+00, %5693 ]
  %5768 = call float @dx.op.dot3.f32(i32 55, float %5763, float %5764, float %5765, float %5706, float %5707, float %5708)  ; Dot3(ax,ay,az,bx,by,bz)
  %5769 = fmul fast float %5768, 0x3FDF454380000000
  %5770 = fmul fast float %5768, %5768
  %5771 = fmul fast float %5770, 0x3FEE471020000000
  %5772 = fadd fast float %5771, 0xBFD42F6020000000
  %5773 = fmul fast float %5728, 0x3FD20DD760000000
  %5774 = fmul fast float %5772, %5767
  %5775 = fadd fast float %5774, %5773
  %5776 = fmul fast float %5769, %5766
  %5777 = fadd fast float %5775, %5776
  %5778 = fsub fast float %5775, %5776
  %5779 = call float @dx.op.dot3.f32(i32 55, float %5763, float %5764, float %5765, float %5720, float %5721, float %5722)  ; Dot3(ax,ay,az,bx,by,bz)
  %5780 = fmul fast float %5779, 0x3FDF454380000000
  %5781 = fmul fast float %5779, %5779
  %5782 = fmul fast float %5781, 0x3FEE471020000000
  %5783 = fadd fast float %5782, 0xBFD42F6020000000
  %5784 = call float @dx.op.dot3.f32(i32 55, float %5728, float %5766, float %5767, float 0x3FD20DD760000000, float %5780, float %5783)  ; Dot3(ax,ay,az,bx,by,bz)
  %5785 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %67)  ; FMax(a,b)
  %5786 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5787 = fcmp fast oeq float %5786, 0.000000e+00
  %5788 = fcmp fast oeq float %5785, 0.000000e+00
  %5789 = or i1 %5788, %5787
  br i1 %5789, label %5819, label %5790

; <label>:5790                                    ; preds = %5762
  %5791 = fsub fast float -0.000000e+00, %70
  %5792 = fsub fast float -0.000000e+00, %68
  %5793 = call float @dx.op.unary.f32(i32 24, float %5786)  ; Sqrt(value)
  %5794 = fdiv fast float %5793, %5785
  %5795 = fcmp fast ogt float %5794, 0x3FFB6F8900000000
  %5796 = select i1 %5795, float 0x3FFB6F8900000000, float %5794
  %5797 = fmul fast float %5796, 0x3FE8A23460000000
  %5798 = call float @dx.op.unary.f32(i32 7, float %5797)  ; Saturate(value)
  %5799 = call float @dx.op.binary.f32(i32 35, float %5796, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5800 = fmul fast float %5798, %5785
  %5801 = fmul fast float %5799, 0x3FF279A740000000
  %5802 = fadd fast float %5801, -1.000000e+00
  %5803 = call float @dx.op.dot3.f32(i32 55, float %5791, float %5792, float %69, float %5791, float %5792, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5804 = call float @dx.op.unary.f32(i32 25, float %5803)  ; Rsqrt(value)
  %5805 = fmul fast float %5804, %5791
  %5806 = fmul fast float %5804, %5792
  %5807 = fmul fast float %5804, %69
  %5808 = fmul fast float %5802, %5802
  %5809 = fsub fast float 1.000000e+00, %5808
  %5810 = fmul fast float %5799, 0x40005F8BE0000000
  %5811 = fsub fast float 0x400C5BF8A0000000, %5810
  %5812 = fdiv fast float %5800, %5811
  %5813 = fmul fast float %5812, 0x3FEE31C3C0000000
  %5814 = fmul fast float %5813, %5809
  %5815 = fmul fast float %5799, 0x3FDACB7480000000
  %5816 = fadd fast float %5815, 0xBFD7347680000000
  %5817 = fmul fast float %5816, %5812
  %5818 = fmul fast float %5817, %5809
  br label %5819

; <label>:5819                                    ; preds = %5790, %5762
  %5820 = phi float [ %5805, %5790 ], [ 0.000000e+00, %5762 ]
  %5821 = phi float [ %5806, %5790 ], [ 0.000000e+00, %5762 ]
  %5822 = phi float [ %5807, %5790 ], [ 0.000000e+00, %5762 ]
  %5823 = phi float [ %5814, %5790 ], [ 0.000000e+00, %5762 ]
  %5824 = phi float [ %5818, %5790 ], [ 0.000000e+00, %5762 ]
  %5825 = call float @dx.op.dot3.f32(i32 55, float %5820, float %5821, float %5822, float %5706, float %5707, float %5708)  ; Dot3(ax,ay,az,bx,by,bz)
  %5826 = fmul fast float %5825, 0x3FDF454380000000
  %5827 = fmul fast float %5825, %5825
  %5828 = fmul fast float %5827, 0x3FEE471020000000
  %5829 = fadd fast float %5828, 0xBFD42F6020000000
  %5830 = fmul fast float %5785, 0x3FD20DD760000000
  %5831 = fmul fast float %5829, %5824
  %5832 = fadd fast float %5831, %5830
  %5833 = fmul fast float %5826, %5823
  %5834 = fadd fast float %5832, %5833
  %5835 = fsub fast float %5832, %5833
  %5836 = call float @dx.op.dot3.f32(i32 55, float %5820, float %5821, float %5822, float %5720, float %5721, float %5722)  ; Dot3(ax,ay,az,bx,by,bz)
  %5837 = fmul fast float %5836, 0x3FDF454380000000
  %5838 = fmul fast float %5836, %5836
  %5839 = fmul fast float %5838, 0x3FEE471020000000
  %5840 = fadd fast float %5839, 0xBFD42F6020000000
  %5841 = call float @dx.op.dot3.f32(i32 55, float %5785, float %5823, float %5824, float 0x3FD20DD760000000, float %5837, float %5840)  ; Dot3(ax,ay,az,bx,by,bz)
  %5842 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %63)  ; FMax(a,b)
  %5843 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5844 = fcmp fast oeq float %5843, 0.000000e+00
  %5845 = fcmp fast oeq float %5842, 0.000000e+00
  %5846 = or i1 %5845, %5844
  br i1 %5846, label %5876, label %5847

; <label>:5847                                    ; preds = %5819
  %5848 = fsub fast float -0.000000e+00, %66
  %5849 = fsub fast float -0.000000e+00, %64
  %5850 = call float @dx.op.unary.f32(i32 24, float %5843)  ; Sqrt(value)
  %5851 = fdiv fast float %5850, %5842
  %5852 = fcmp fast ogt float %5851, 0x3FFB6F8900000000
  %5853 = select i1 %5852, float 0x3FFB6F8900000000, float %5851
  %5854 = fmul fast float %5853, 0x3FE8A23460000000
  %5855 = call float @dx.op.unary.f32(i32 7, float %5854)  ; Saturate(value)
  %5856 = call float @dx.op.binary.f32(i32 35, float %5853, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5857 = fmul fast float %5855, %5842
  %5858 = fmul fast float %5856, 0x3FF279A740000000
  %5859 = fadd fast float %5858, -1.000000e+00
  %5860 = call float @dx.op.dot3.f32(i32 55, float %5848, float %5849, float %65, float %5848, float %5849, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5861 = call float @dx.op.unary.f32(i32 25, float %5860)  ; Rsqrt(value)
  %5862 = fmul fast float %5861, %5848
  %5863 = fmul fast float %5861, %5849
  %5864 = fmul fast float %5861, %65
  %5865 = fmul fast float %5859, %5859
  %5866 = fsub fast float 1.000000e+00, %5865
  %5867 = fmul fast float %5856, 0x40005F8BE0000000
  %5868 = fsub fast float 0x400C5BF8A0000000, %5867
  %5869 = fdiv fast float %5857, %5868
  %5870 = fmul fast float %5869, 0x3FEE31C3C0000000
  %5871 = fmul fast float %5870, %5866
  %5872 = fmul fast float %5856, 0x3FDACB7480000000
  %5873 = fadd fast float %5872, 0xBFD7347680000000
  %5874 = fmul fast float %5873, %5869
  %5875 = fmul fast float %5874, %5866
  br label %5876

; <label>:5876                                    ; preds = %5847, %5819
  %5877 = phi float [ %5862, %5847 ], [ 0.000000e+00, %5819 ]
  %5878 = phi float [ %5863, %5847 ], [ 0.000000e+00, %5819 ]
  %5879 = phi float [ %5864, %5847 ], [ 0.000000e+00, %5819 ]
  %5880 = phi float [ %5871, %5847 ], [ 0.000000e+00, %5819 ]
  %5881 = phi float [ %5875, %5847 ], [ 0.000000e+00, %5819 ]
  %5882 = call float @dx.op.dot3.f32(i32 55, float %5877, float %5878, float %5879, float %5706, float %5707, float %5708)  ; Dot3(ax,ay,az,bx,by,bz)
  %5883 = fmul fast float %5882, 0x3FDF454380000000
  %5884 = fmul fast float %5882, %5882
  %5885 = fmul fast float %5884, 0x3FEE471020000000
  %5886 = fadd fast float %5885, 0xBFD42F6020000000
  %5887 = fmul fast float %5842, 0x3FD20DD760000000
  %5888 = fmul fast float %5886, %5881
  %5889 = fadd fast float %5888, %5887
  %5890 = fmul fast float %5883, %5880
  %5891 = fadd fast float %5889, %5890
  %5892 = fsub fast float %5889, %5890
  %5893 = call float @dx.op.dot3.f32(i32 55, float %5877, float %5878, float %5879, float %5720, float %5721, float %5722)  ; Dot3(ax,ay,az,bx,by,bz)
  %5894 = fmul fast float %5893, 0x3FDF454380000000
  %5895 = fmul fast float %5893, %5893
  %5896 = fmul fast float %5895, 0x3FEE471020000000
  %5897 = fadd fast float %5896, 0xBFD42F6020000000
  %5898 = call float @dx.op.dot3.f32(i32 55, float %5842, float %5880, float %5881, float 0x3FD20DD760000000, float %5894, float %5897)  ; Dot3(ax,ay,az,bx,by,bz)
  %5899 = call float @dx.op.binary.f32(i32 35, float %5777, float 0.000000e+00)  ; FMax(a,b)
  %5900 = call float @dx.op.binary.f32(i32 35, float %5834, float 0.000000e+00)  ; FMax(a,b)
  %5901 = call float @dx.op.binary.f32(i32 35, float %5891, float 0.000000e+00)  ; FMax(a,b)
  %5902 = call float @dx.op.binary.f32(i32 35, float %5778, float 0.000000e+00)  ; FMax(a,b)
  %5903 = call float @dx.op.binary.f32(i32 35, float %5835, float 0.000000e+00)  ; FMax(a,b)
  %5904 = call float @dx.op.binary.f32(i32 35, float %5892, float 0.000000e+00)  ; FMax(a,b)
  %5905 = call float @dx.op.binary.f32(i32 35, float %5784, float 0.000000e+00)  ; FMax(a,b)
  %5906 = call float @dx.op.binary.f32(i32 35, float %5841, float 0.000000e+00)  ; FMax(a,b)
  %5907 = call float @dx.op.binary.f32(i32 35, float %5898, float 0.000000e+00)  ; FMax(a,b)
  %5908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5909 = extractvalue %dx.types.CBufRet.f32 %5908, 0
  %5910 = call float @dx.op.binary.f32(i32 36, float %5700, float %5909)  ; FMin(a,b)
  %5911 = fsub fast float 1.000000e+00, %5723
  %5912 = fmul fast float %5910, %5911
  %5913 = fsub fast float 1.000000e+00, %5912
  %5914 = bitcast float %5913 to i32
  %5915 = sub nsw i32 2129859010, %5914
  %5916 = bitcast i32 %5915 to float
  %5917 = call float @dx.op.binary.f32(i32 36, float %5701, float %5909)  ; FMin(a,b)
  %5918 = fmul fast float %5917, %5911
  %5919 = fsub fast float 1.000000e+00, %5918
  %5920 = bitcast float %5919 to i32
  %5921 = sub nsw i32 2129859010, %5920
  %5922 = bitcast i32 %5921 to float
  %5923 = call float @dx.op.binary.f32(i32 36, float %5702, float %5909)  ; FMin(a,b)
  %5924 = fmul fast float %5923, %5911
  %5925 = fsub fast float 1.000000e+00, %5924
  %5926 = bitcast float %5925 to i32
  %5927 = sub nsw i32 2129859010, %5926
  %5928 = bitcast i32 %5927 to float
  %5929 = fmul fast float %5899, %5723
  %5930 = fmul fast float %5929, %5916
  %5931 = fmul fast float %5900, %5723
  %5932 = fmul fast float %5931, %5922
  %5933 = fmul fast float %5901, %5723
  %5934 = fmul fast float %5933, %5928
  %5935 = call float @dx.op.binary.f32(i32 36, float %5703, float %5909)  ; FMin(a,b)
  %5936 = fmul fast float %5935, %5911
  %5937 = fsub fast float 1.000000e+00, %5936
  %5938 = bitcast float %5937 to i32
  %5939 = sub nsw i32 2129859010, %5938
  %5940 = bitcast i32 %5939 to float
  %5941 = call float @dx.op.binary.f32(i32 36, float %5704, float %5909)  ; FMin(a,b)
  %5942 = fmul fast float %5941, %5911
  %5943 = fsub fast float 1.000000e+00, %5942
  %5944 = bitcast float %5943 to i32
  %5945 = sub nsw i32 2129859010, %5944
  %5946 = bitcast i32 %5945 to float
  %5947 = call float @dx.op.binary.f32(i32 36, float %5712, float %5909)  ; FMin(a,b)
  %5948 = fmul fast float %5947, %5911
  %5949 = fsub fast float 1.000000e+00, %5948
  %5950 = bitcast float %5949 to i32
  %5951 = sub nsw i32 2129859010, %5950
  %5952 = bitcast i32 %5951 to float
  %5953 = fmul fast float %5905, %5723
  %5954 = fmul fast float %5953, %5940
  %5955 = fmul fast float %5906, %5723
  %5956 = fmul fast float %5955, %5946
  %5957 = fmul fast float %5907, %5723
  %5958 = fmul fast float %5957, %5952
  %5959 = call float @dx.op.dot3.f32(i32 55, float %5930, float %5932, float %5934, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5960 = select i1 %217, float 0.000000e+00, float %5930
  %5961 = select i1 %217, float %5959, float %5932
  %5962 = select i1 %217, float 0.000000e+00, float %5934
  %5963 = call float @dx.op.dot3.f32(i32 55, float %5902, float %5903, float %5904, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5964 = select i1 %217, float 0.000000e+00, float %5902
  %5965 = select i1 %217, float %5963, float %5903
  %5966 = select i1 %217, float 0.000000e+00, float %5904
  %5967 = call float @dx.op.dot3.f32(i32 55, float %5954, float %5956, float %5958, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5968 = select i1 %217, float 0.000000e+00, float %5954
  %5969 = select i1 %217, float %5967, float %5956
  %5970 = select i1 %217, float 0.000000e+00, float %5958
  %5971 = fmul fast float %4418, %4418
  %5972 = call float @dx.op.unary.f32(i32 7, float %5971)  ; Saturate(value)
  %5973 = fmul fast float %5714, 9.843750e-01
  %5974 = fmul fast float %5709, 9.843750e-01
  %5975 = fadd fast float %5973, 7.812500e-03
  %5976 = fadd fast float %5974, 7.812500e-03
  %5977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5975, float %5976, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5978 = extractvalue %dx.types.ResRet.f32 %5977, 0
  %5979 = extractvalue %dx.types.ResRet.f32 %5977, 1
  %5980 = extractvalue %dx.types.ResRet.f32 %5977, 2
  %5981 = extractvalue %dx.types.ResRet.f32 %5977, 3
  %5982 = fsub fast float 1.000000e+00, %5972
  %5983 = fsub fast float %5980, %5978
  %5984 = fsub fast float %5981, %5979
  %5985 = fmul fast float %5983, %5982
  %5986 = fmul fast float %5984, %5982
  %5987 = fadd fast float %5985, %5978
  %5988 = fadd fast float %5986, %5979
  %5989 = fmul fast float %5987, %5703
  %5990 = fmul fast float %5987, %5704
  %5991 = fmul fast float %5987, %5712
  %5992 = fadd fast float %5989, %5988
  %5993 = fadd fast float %5990, %5988
  %5994 = fadd fast float %5991, %5988
  %5995 = fcmp fast ogt float %5068, 0.000000e+00
  br i1 %5995, label %5996, label %6022

; <label>:5996                                    ; preds = %5876
  %5997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5068, float %5714, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5998 = extractvalue %dx.types.ResRet.f32 %5997, 0
  %5999 = extractvalue %dx.types.ResRet.f32 %5997, 1
  %6000 = extractvalue %dx.types.ResRet.f32 %5997, 2
  %6001 = fadd fast float %5998, -5.000000e-01
  %6002 = fadd fast float %5999, -5.000000e-01
  %6003 = fadd fast float %6000, -5.000000e-01
  %6004 = fsub fast float 1.000000e+00, %5703
  %6005 = fsub fast float 1.000000e+00, %5704
  %6006 = fsub fast float 1.000000e+00, %5712
  %6007 = fmul fast float %5703, 4.000000e+00
  %6008 = fmul fast float %6007, %6004
  %6009 = fmul fast float %6008, %6001
  %6010 = fmul fast float %5704, 4.000000e+00
  %6011 = fmul fast float %6010, %6005
  %6012 = fmul fast float %6011, %6002
  %6013 = fmul fast float %5712, 4.000000e+00
  %6014 = fmul fast float %6013, %6006
  %6015 = fmul fast float %6014, %6003
  %6016 = fadd fast float %6009, %5992
  %6017 = fadd fast float %6012, %5993
  %6018 = fadd fast float %6015, %5994
  %6019 = call float @dx.op.unary.f32(i32 7, float %6016)  ; Saturate(value)
  %6020 = call float @dx.op.unary.f32(i32 7, float %6017)  ; Saturate(value)
  %6021 = call float @dx.op.unary.f32(i32 7, float %6018)  ; Saturate(value)
  br label %6022

; <label>:6022                                    ; preds = %5996, %5876
  %6023 = phi float [ %6019, %5996 ], [ %5992, %5876 ]
  %6024 = phi float [ %6020, %5996 ], [ %5993, %5876 ]
  %6025 = phi float [ %6021, %5996 ], [ %5994, %5876 ]
  %6026 = call float @dx.op.binary.f32(i32 35, float %6024, float %6025)  ; FMax(a,b)
  %6027 = call float @dx.op.binary.f32(i32 35, float %6023, float %6026)  ; FMax(a,b)
  %6028 = fsub fast float 1.000000e+00, %6027
  %6029 = call float @dx.op.dot3.f32(i32 55, float %5700, float %5701, float %5702, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6030 = fcmp fast ogt float %6029, 0x3E7FF19E20000000
  %6031 = fdiv fast float 1.000000e+00, %6029
  %6032 = select i1 %6030, float %6031, float 0.000000e+00
  %6033 = fmul fast float %6032, %5700
  %6034 = fmul fast float %6032, %5701
  %6035 = fmul fast float %6032, %5702
  %6036 = fadd fast float %6033, -1.000000e+00
  %6037 = fadd fast float %6034, -1.000000e+00
  %6038 = fadd fast float %6035, -1.000000e+00
  %6039 = fmul fast float %6036, 5.000000e-01
  %6040 = fmul fast float %6037, 5.000000e-01
  %6041 = fmul fast float %6038, 5.000000e-01
  %6042 = fadd fast float %6039, 1.000000e+00
  %6043 = fadd fast float %6040, 1.000000e+00
  %6044 = fadd fast float %6041, 1.000000e+00
  %6045 = call float @dx.op.binary.f32(i32 35, float %5714, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6046 = fdiv fast float %4418, %6045
  %6047 = fcmp fast olt float %5118, 1.270000e+02
  %6048 = fcmp fast olt float %5119, 1.270000e+02
  %6049 = fcmp fast olt float %5120, 1.270000e+02
  %6050 = fmul fast float %5118, 0xBFF7154760000000
  %6051 = fmul fast float %6050, %6046
  %6052 = fmul fast float %5119, 0xBFF7154760000000
  %6053 = fmul fast float %6052, %6046
  %6054 = fmul fast float %5120, 0xBFF7154760000000
  %6055 = fmul fast float %6054, %6046
  %6056 = call float @dx.op.unary.f32(i32 21, float %6051)  ; Exp(value)
  %6057 = call float @dx.op.unary.f32(i32 21, float %6053)  ; Exp(value)
  %6058 = call float @dx.op.unary.f32(i32 21, float %6055)  ; Exp(value)
  %6059 = call float @dx.op.unary.f32(i32 7, float %6056)  ; Saturate(value)
  %6060 = call float @dx.op.unary.f32(i32 7, float %6057)  ; Saturate(value)
  %6061 = call float @dx.op.unary.f32(i32 7, float %6058)  ; Saturate(value)
  %6062 = select i1 %6047, float %6059, float 0.000000e+00
  %6063 = select i1 %6048, float %6060, float 0.000000e+00
  %6064 = select i1 %6049, float %6061, float 0.000000e+00
  %6065 = fmul fast float %6062, %6028
  %6066 = fmul fast float %6063, %6028
  %6067 = fmul fast float %6064, %6028
  %6068 = fadd fast float %6065, -1.000000e+00
  %6069 = fadd fast float %6066, -1.000000e+00
  %6070 = fadd fast float %6067, -1.000000e+00
  %6071 = fmul fast float %6068, %5065
  %6072 = fmul fast float %6069, %5065
  %6073 = fmul fast float %6070, %5065
  %6074 = fmul fast float %6023, %5968
  %6075 = fmul fast float %6024, %5969
  %6076 = fmul fast float %6025, %5970
  %6077 = fsub fast float 1.000000e+00, %5714
  %6078 = bitcast float %6077 to i32
  %6079 = sitofp i32 %6078 to float
  %6080 = fmul fast float %6079, 5.000000e+00
  %6081 = fadd fast float %6080, 0xC1EFBF8940000000
  %6082 = fptosi float %6081 to i32
  %6083 = bitcast i32 %6082 to float
  %6084 = fmul fast float %6083, %5069
  %6085 = fmul fast float %5960, %6084
  %6086 = fmul fast float %6085, %6028
  %6087 = fmul fast float %6086, %6042
  %6088 = fmul fast float %5961, %6084
  %6089 = fmul fast float %6088, %6028
  %6090 = fmul fast float %6089, %6043
  %6091 = fmul fast float %5962, %6084
  %6092 = fmul fast float %6091, %6028
  %6093 = fmul fast float %6092, %6044
  %6094 = fadd fast float %6074, %5061
  %6095 = fadd fast float %6094, %6087
  %6096 = fmul fast float %6095, %5065
  %6097 = fadd fast float %6075, %5062
  %6098 = fadd fast float %6097, %6090
  %6099 = fmul fast float %6098, %5065
  %6100 = fadd fast float %6076, %5063
  %6101 = fadd fast float %6100, %6093
  %6102 = fmul fast float %6101, %5065
  %6103 = fmul fast float %5704, 0x4012D0A400000000
  %6104 = fadd fast float %6073, 1.000000e+00
  %6105 = fadd fast float %6072, 1.000000e+00
  %6106 = fadd fast float %6071, 1.000000e+00
  %6107 = fmul fast float %6028, %5962
  %6108 = fmul fast float %6028, %5961
  %6109 = fmul fast float %6028, %5960
  %6110 = fsub fast float 1.000000e+00, %5709
  %6111 = fmul fast float %6110, %5065
  %6112 = fsub fast float 1.000000e+00, %6111
  %6113 = call float @dx.op.unary.f32(i32 7, float %6112)  ; Saturate(value)
  %6114 = fsub fast float 1.000000e+00, %6113
  %6115 = fadd fast float %6103, 0x3FDB6377A0000000
  %6116 = fmul fast float %6114, %6115
  %6117 = call float @dx.op.dot3.f32(i32 55, float %5136, float %5137, float %5138, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6118 = fadd fast float %6116, %6117
  %6119 = call float @dx.op.unary.f32(i32 7, float %6118)  ; Saturate(value)
  %6120 = call float @dx.op.binary.f32(i32 35, float %6119, float 0x3F847AE140000000)  ; FMax(a,b)
  %6121 = fmul fast float %6120, %6120
  %6122 = fmul fast float %6121, %6121
  %6123 = fmul fast float %6122, 0xC00A935000000000
  %6124 = call float @dx.op.unary.f32(i32 21, float %6123)  ; Exp(value)
  %6125 = fsub fast float 1.000000e+00, %6124
  %6126 = fmul fast float %6106, %5964
  %6127 = fmul fast float %6126, %6125
  %6128 = fmul fast float %6105, %5965
  %6129 = fmul fast float %6128, %6125
  %6130 = fmul fast float %6104, %5966
  %6131 = fmul fast float %6130, %6125
  %6132 = fadd fast float %6127, %6109
  %6133 = fmul fast float %6132, %5065
  %6134 = fadd fast float %6129, %6108
  %6135 = fmul fast float %6134, %5065
  %6136 = fadd fast float %6131, %6107
  %6137 = fmul fast float %6136, %5065
  %6138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6139 = extractvalue %dx.types.CBufRet.f32 %6138, 3
  %6140 = fcmp fast oeq float %6139, 0.000000e+00
  br i1 %6140, label %7345, label %6141

; <label>:6141                                    ; preds = %6022
  %6142 = extractvalue %dx.types.CBufRet.f32 %6138, 0
  %6143 = extractvalue %dx.types.CBufRet.f32 %6138, 1
  %6144 = extractvalue %dx.types.CBufRet.f32 %6138, 2
  %6145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6146 = extractvalue %dx.types.CBufRet.f32 %6145, 0
  %6147 = extractvalue %dx.types.CBufRet.f32 %6145, 1
  %6148 = extractvalue %dx.types.CBufRet.f32 %6145, 2
  %6149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6150 = extractvalue %dx.types.CBufRet.f32 %6149, 0
  %6151 = extractvalue %dx.types.CBufRet.f32 %6149, 1
  %6152 = call float @dx.op.dot3.f32(i32 55, float %6146, float %6147, float %6148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6153 = select i1 %217, float %6150, float %6146
  %6154 = select i1 %217, float %6152, float %6147
  %6155 = select i1 %217, float %6151, float %6148
  %6156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6157 = extractvalue %dx.types.CBufRet.f32 %6156, 2
  %6158 = fmul fast float %6157, %107
  %6159 = fmul fast float %6157, %108
  %6160 = fmul fast float %6157, %109
  %6161 = fadd fast float %6158, %155
  %6162 = fadd fast float %6159, %156
  %6163 = fadd fast float %6160, %157
  %6164 = fcmp fast olt float %6139, 0.000000e+00
  br i1 %6164, label %6789, label %6165

; <label>:6165                                    ; preds = %6141
  %6166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6167 = extractvalue %dx.types.CBufRet.f32 %6166, 0
  %6168 = extractvalue %dx.types.CBufRet.f32 %6166, 1
  %6169 = extractvalue %dx.types.CBufRet.f32 %6166, 2
  %6170 = extractvalue %dx.types.CBufRet.f32 %6166, 3
  %6171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6172 = extractvalue %dx.types.CBufRet.f32 %6171, 0
  %6173 = extractvalue %dx.types.CBufRet.f32 %6171, 1
  %6174 = extractvalue %dx.types.CBufRet.f32 %6171, 2
  %6175 = extractvalue %dx.types.CBufRet.f32 %6171, 3
  %6176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.f32 %6176, 0
  %6178 = extractvalue %dx.types.CBufRet.f32 %6176, 1
  %6179 = extractvalue %dx.types.CBufRet.f32 %6176, 2
  %6180 = extractvalue %dx.types.CBufRet.f32 %6176, 3
  %6181 = fmul fast float %6167, %6161
  %6182 = call float @dx.op.tertiary.f32(i32 46, float %6162, float %6168, float %6181)  ; FMad(a,b,c)
  %6183 = call float @dx.op.tertiary.f32(i32 46, float %6163, float %6169, float %6182)  ; FMad(a,b,c)
  %6184 = fadd fast float %6183, %6170
  %6185 = fmul fast float %6172, %6161
  %6186 = call float @dx.op.tertiary.f32(i32 46, float %6162, float %6173, float %6185)  ; FMad(a,b,c)
  %6187 = call float @dx.op.tertiary.f32(i32 46, float %6163, float %6174, float %6186)  ; FMad(a,b,c)
  %6188 = fadd fast float %6187, %6175
  %6189 = fmul fast float %6177, %6161
  %6190 = call float @dx.op.tertiary.f32(i32 46, float %6162, float %6178, float %6189)  ; FMad(a,b,c)
  %6191 = call float @dx.op.tertiary.f32(i32 46, float %6163, float %6179, float %6190)  ; FMad(a,b,c)
  %6192 = fadd fast float %6191, %6180
  %6193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6194 = extractvalue %dx.types.CBufRet.f32 %6193, 0
  %6195 = extractvalue %dx.types.CBufRet.f32 %6193, 1
  %6196 = extractvalue %dx.types.CBufRet.f32 %6193, 3
  %6197 = fmul fast float %6196, %6184
  %6198 = fmul fast float %6196, %6188
  %6199 = fadd fast float %6197, %6194
  %6200 = fadd fast float %6198, %6195
  %6201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6202 = extractvalue %dx.types.CBufRet.f32 %6201, 0
  %6203 = extractvalue %dx.types.CBufRet.f32 %6201, 1
  %6204 = extractvalue %dx.types.CBufRet.f32 %6201, 3
  %6205 = fmul fast float %6204, %6184
  %6206 = fmul fast float %6204, %6188
  %6207 = fadd fast float %6205, %6202
  %6208 = fadd fast float %6206, %6203
  %6209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6210 = extractvalue %dx.types.CBufRet.f32 %6209, 1
  %6211 = fsub fast float %6210, %6192
  %6212 = extractvalue %dx.types.CBufRet.f32 %6209, 2
  %6213 = fmul fast float %6211, %6212
  %6214 = fsub fast float 1.000000e+00, %6213
  %6215 = call float @dx.op.unary.f32(i32 7, float %6214)  ; Saturate(value)
  %6216 = extractvalue %dx.types.CBufRet.f32 %6201, 2
  %6217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6218 = extractvalue %dx.types.CBufRet.f32 %6217, 2
  %6219 = fadd fast float %6218, %6216
  %6220 = fcmp fast ogt float %6219, 0.000000e+00
  br i1 %6220, label %6221, label %6245

; <label>:6221                                    ; preds = %6165
  %6222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6223 = extractvalue %dx.types.CBufRet.f32 %6222, 0
  %6224 = extractvalue %dx.types.CBufRet.f32 %6222, 1
  %6225 = fsub fast float %6207, %6223
  %6226 = fsub fast float %6208, %6224
  %6227 = fcmp fast olt float %6225, 0.000000e+00
  %6228 = fcmp fast olt float %6226, 0.000000e+00
  %6229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6230 = extractvalue %dx.types.CBufRet.f32 %6229, 0
  %6231 = extractvalue %dx.types.CBufRet.f32 %6229, 1
  %6232 = extractvalue %dx.types.CBufRet.f32 %6229, 2
  %6233 = extractvalue %dx.types.CBufRet.f32 %6229, 3
  %6234 = select i1 %6227, float %6230, float %6232
  %6235 = select i1 %6228, float %6231, float %6233
  %6236 = fmul fast float %6234, %6225
  %6237 = fmul fast float %6235, %6226
  %6238 = call float @dx.op.unary.f32(i32 6, float %6236)  ; FAbs(value)
  %6239 = call float @dx.op.unary.f32(i32 6, float %6237)  ; FAbs(value)
  %6240 = extractvalue %dx.types.CBufRet.f32 %6156, 0
  %6241 = call float @dx.op.binary.f32(i32 35, float %6238, float %6239)  ; FMax(a,b)
  %6242 = fsub fast float %6240, %6241
  %6243 = call float @dx.op.unary.f32(i32 7, float %6242)  ; Saturate(value)
  %6244 = fmul fast float %6243, %6215
  br label %6245

; <label>:6245                                    ; preds = %6221, %6165
  %6246 = phi float [ %6244, %6221 ], [ 0.000000e+00, %6165 ]
  %6247 = extractvalue %dx.types.CBufRet.f32 %6193, 2
  %6248 = extractvalue %dx.types.CBufRet.f32 %6217, 1
  %6249 = fadd fast float %6248, %6247
  %6250 = fcmp fast ogt float %6249, 0.000000e+00
  %6251 = extractvalue %dx.types.CBufRet.f32 %6156, 0
  br i1 %6250, label %6252, label %6275

; <label>:6252                                    ; preds = %6245
  %6253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6254 = extractvalue %dx.types.CBufRet.f32 %6253, 0
  %6255 = extractvalue %dx.types.CBufRet.f32 %6253, 1
  %6256 = fsub fast float %6199, %6254
  %6257 = fsub fast float %6200, %6255
  %6258 = fcmp fast olt float %6256, 0.000000e+00
  %6259 = fcmp fast olt float %6257, 0.000000e+00
  %6260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6261 = extractvalue %dx.types.CBufRet.f32 %6260, 0
  %6262 = extractvalue %dx.types.CBufRet.f32 %6260, 1
  %6263 = extractvalue %dx.types.CBufRet.f32 %6260, 2
  %6264 = extractvalue %dx.types.CBufRet.f32 %6260, 3
  %6265 = select i1 %6258, float %6261, float %6263
  %6266 = select i1 %6259, float %6262, float %6264
  %6267 = fmul fast float %6265, %6256
  %6268 = fmul fast float %6266, %6257
  %6269 = call float @dx.op.unary.f32(i32 6, float %6267)  ; FAbs(value)
  %6270 = call float @dx.op.unary.f32(i32 6, float %6268)  ; FAbs(value)
  %6271 = call float @dx.op.binary.f32(i32 35, float %6269, float %6270)  ; FMax(a,b)
  %6272 = fsub fast float %6251, %6271
  %6273 = call float @dx.op.unary.f32(i32 7, float %6272)  ; Saturate(value)
  %6274 = fmul fast float %6273, %6215
  br label %6275

; <label>:6275                                    ; preds = %6252, %6245
  %6276 = phi float [ %6274, %6252 ], [ 0.000000e+00, %6245 ]
  %6277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6278 = extractvalue %dx.types.CBufRet.f32 %6277, 1
  %6279 = call float @dx.op.unary.f32(i32 7, float %6278)  ; Saturate(value)
  %6280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6281 = extractvalue %dx.types.CBufRet.f32 %6280, 0
  %6282 = extractvalue %dx.types.CBufRet.f32 %6280, 1
  %6283 = fsub fast float %6184, %6281
  %6284 = fsub fast float %6188, %6282
  %6285 = fcmp fast olt float %6283, 0.000000e+00
  %6286 = fcmp fast olt float %6284, 0.000000e+00
  %6287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6288 = extractvalue %dx.types.CBufRet.f32 %6287, 0
  %6289 = extractvalue %dx.types.CBufRet.f32 %6287, 1
  %6290 = extractvalue %dx.types.CBufRet.f32 %6287, 2
  %6291 = extractvalue %dx.types.CBufRet.f32 %6287, 3
  %6292 = select i1 %6285, float %6288, float %6290
  %6293 = select i1 %6286, float %6289, float %6291
  %6294 = fmul fast float %6292, %6283
  %6295 = fmul fast float %6293, %6284
  %6296 = call float @dx.op.unary.f32(i32 6, float %6294)  ; FAbs(value)
  %6297 = call float @dx.op.unary.f32(i32 6, float %6295)  ; FAbs(value)
  %6298 = call float @dx.op.binary.f32(i32 35, float %6296, float %6297)  ; FMax(a,b)
  %6299 = fsub fast float %6251, %6298
  %6300 = call float @dx.op.unary.f32(i32 7, float %6299)  ; Saturate(value)
  %6301 = call float @dx.op.binary.f32(i32 36, float %6300, float %6279)  ; FMin(a,b)
  %6302 = fmul fast float %6301, %6215
  %6303 = fsub fast float %6276, %6302
  %6304 = fsub fast float %6246, %6276
  %6305 = fsub fast float %6304, %6302
  %6306 = call float @dx.op.binary.f32(i32 35, float %6276, float %6246)  ; FMax(a,b)
  %6307 = call float @dx.op.binary.f32(i32 35, float %6302, float %6306)  ; FMax(a,b)
  %6308 = fcmp fast olt float %6307, 1.000000e+00
  br i1 %6308, label %6309, label %6707, !dx.controlflow.hints !92

; <label>:6309                                    ; preds = %6275
  %6310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6311 = extractvalue %dx.types.CBufRet.f32 %6310, 0
  %6312 = fcmp fast une float %6311, 0.000000e+00
  br i1 %6312, label %6313, label %6707, !dx.controlflow.hints !93

; <label>:6313                                    ; preds = %6309
  %6314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6315 = extractvalue %dx.types.CBufRet.f32 %6314, 0
  %6316 = extractvalue %dx.types.CBufRet.f32 %6314, 1
  %6317 = extractvalue %dx.types.CBufRet.f32 %6314, 2
  %6318 = extractvalue %dx.types.CBufRet.f32 %6314, 3
  %6319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6320 = extractvalue %dx.types.CBufRet.f32 %6319, 0
  %6321 = extractvalue %dx.types.CBufRet.f32 %6319, 1
  %6322 = extractvalue %dx.types.CBufRet.f32 %6319, 2
  %6323 = extractvalue %dx.types.CBufRet.f32 %6319, 3
  %6324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6325 = extractvalue %dx.types.CBufRet.f32 %6324, 0
  %6326 = extractvalue %dx.types.CBufRet.f32 %6324, 1
  %6327 = extractvalue %dx.types.CBufRet.f32 %6324, 2
  %6328 = extractvalue %dx.types.CBufRet.f32 %6324, 3
  %6329 = fmul fast float %6315, %6161
  %6330 = call float @dx.op.tertiary.f32(i32 46, float %6162, float %6316, float %6329)  ; FMad(a,b,c)
  %6331 = call float @dx.op.tertiary.f32(i32 46, float %6163, float %6317, float %6330)  ; FMad(a,b,c)
  %6332 = fadd fast float %6331, %6318
  %6333 = fmul fast float %6320, %6161
  %6334 = call float @dx.op.tertiary.f32(i32 46, float %6162, float %6321, float %6333)  ; FMad(a,b,c)
  %6335 = call float @dx.op.tertiary.f32(i32 46, float %6163, float %6322, float %6334)  ; FMad(a,b,c)
  %6336 = fadd fast float %6335, %6323
  %6337 = fmul fast float %6325, %6161
  %6338 = call float @dx.op.tertiary.f32(i32 46, float %6162, float %6326, float %6337)  ; FMad(a,b,c)
  %6339 = call float @dx.op.tertiary.f32(i32 46, float %6163, float %6327, float %6338)  ; FMad(a,b,c)
  %6340 = fadd fast float %6339, %6328
  %6341 = fcmp fast oge float %6332, 1.000000e+00
  %6342 = fcmp fast oge float %6336, 1.000000e+00
  %6343 = or i1 %6341, %6342
  %6344 = fcmp fast olt float %6332, 0.000000e+00
  %6345 = fcmp fast olt float %6336, 0.000000e+00
  %6346 = or i1 %6344, %6345
  %6347 = or i1 %6343, %6346
  br i1 %6347, label %6707, label %6348, !dx.controlflow.hints !94

; <label>:6348                                    ; preds = %6313
  %6349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6350 = extractvalue %dx.types.CBufRet.f32 %6349, 0
  %6351 = extractvalue %dx.types.CBufRet.f32 %6349, 1
  %6352 = extractvalue %dx.types.CBufRet.f32 %6349, 2
  %6353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6354 = extractvalue %dx.types.CBufRet.i32 %6353, 2
  %6355 = uitofp i32 %6354 to float
  %6356 = extractvalue %dx.types.CBufRet.i32 %6353, 3
  %6357 = uitofp i32 %6356 to float
  %6358 = extractvalue %dx.types.CBufRet.f32 %6349, 3
  %6359 = fmul fast float %6358, 2.000000e+00
  %6360 = fsub fast float %6332, %6350
  %6361 = fsub fast float %6336, %6351
  %6362 = fmul fast float %6359, %6360
  %6363 = fmul fast float %6359, %6361
  %6364 = fdiv fast float 1.000000e+00, %6144
  %6365 = fmul fast float %6363, %6364
  %6366 = call float @dx.op.unary.f32(i32 6, float %6365)  ; FAbs(value)
  %6367 = fmul fast float %6352, %6163
  %6368 = fmul fast float %6367, %6359
  %6369 = call float @dx.op.unary.f32(i32 6, float %6368)  ; FAbs(value)
  %6370 = call float @dx.op.unary.f32(i32 6, float %6362)  ; FAbs(value)
  %6371 = call float @dx.op.binary.f32(i32 35, float %6369, float %6366)  ; FMax(a,b)
  %6372 = call float @dx.op.binary.f32(i32 35, float %6370, float %6371)  ; FMax(a,b)
  %6373 = fmul fast float %6372, 2.000000e+00
  %6374 = call float @dx.op.unary.f32(i32 23, float %6373)  ; Log(value)
  %6375 = call float @dx.op.binary.f32(i32 35, float %6374, float %6355)  ; FMax(a,b)
  %6376 = call float @dx.op.unary.f32(i32 22, float %6375)  ; Frc(value)
  %6377 = fadd fast float %6376, 0xBFEA666660000000
  %6378 = fmul fast float %6377, 8.000000e+00
  %6379 = call float @dx.op.unary.f32(i32 7, float %6378)  ; Saturate(value)
  %6380 = call float @dx.op.unary.f32(i32 27, float %6375)  ; Round_ni(value)
  %6381 = fadd fast float %6380, %6379
  %6382 = call float @dx.op.binary.f32(i32 36, float %6381, float %6357)  ; FMin(a,b)
  %6383 = call float @dx.op.unary.f32(i32 27, float %6382)  ; Round_ni(value)
  %6384 = fsub fast float -0.000000e+00, %6383
  %6385 = call float @dx.op.unary.f32(i32 21, float %6384)  ; Exp(value)
  %6386 = fmul fast float %6385, %6359
  %6387 = fmul fast float %6386, %6332
  %6388 = fmul fast float %6386, %6336
  %6389 = fmul fast float %6387, 2.500000e-01
  %6390 = fmul fast float %6388, 2.500000e-01
  %6391 = fadd fast float %6389, 5.000000e-01
  %6392 = fadd fast float %6390, 5.000000e-01
  %6393 = fsub fast float %6357, %6355
  %6394 = fptoui float %6393 to i32
  %6395 = add i32 %6394, 320
  %6396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %6395)  ; CBufferLoadLegacy(handle,regIndex)
  %6397 = extractvalue %dx.types.CBufRet.f32 %6396, 0
  %6398 = extractvalue %dx.types.CBufRet.f32 %6396, 1
  %6399 = fcmp fast une float %6382, %6357
  %6400 = fsub fast float %6332, %6397
  %6401 = fsub fast float %6336, %6398
  %6402 = call float @dx.op.unary.f32(i32 6, float %6400)  ; FAbs(value)
  %6403 = call float @dx.op.unary.f32(i32 6, float %6401)  ; FAbs(value)
  %6404 = fmul fast float %6402, %6386
  %6405 = fmul fast float %6403, %6386
  %6406 = fcmp fast olt float %6404, 1.000000e+00
  %6407 = fcmp fast olt float %6405, 1.000000e+00
  %6408 = and i1 %6406, %6407
  %6409 = or i1 %6399, %6408
  br i1 %6409, label %6410, label %6707, !dx.controlflow.hints !95

; <label>:6410                                    ; preds = %6348
  %6411 = fmul fast float %6388, 5.000000e-01
  %6412 = fmul fast float %6387, 5.000000e-01
  %6413 = fadd fast float %6411, 5.000000e-01
  %6414 = fadd fast float %6412, 5.000000e-01
  %6415 = sitofp i32 %6354 to float
  %6416 = fsub fast float %6382, %6415
  %6417 = call float @dx.op.unary.f32(i32 27, float %6416)  ; Round_ni(value)
  %6418 = call float @dx.op.unary.f32(i32 22, float %6382)  ; Frc(value)
  %6419 = call float @dx.op.unary.f32(i32 22, float %6414)  ; Frc(value)
  %6420 = call float @dx.op.unary.f32(i32 22, float %6413)  ; Frc(value)
  %6421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6419, float %6420, float %6417, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6422 = extractvalue %dx.types.ResRet.f32 %6421, 0
  %6423 = extractvalue %dx.types.ResRet.f32 %6421, 1
  %6424 = extractvalue %dx.types.ResRet.f32 %6421, 2
  %6425 = extractvalue %dx.types.ResRet.f32 %6421, 3
  %6426 = fcmp fast ogt float %6418, 0.000000e+00
  br i1 %6426, label %6427, label %6448, !dx.controlflow.hints !96

; <label>:6427                                    ; preds = %6410
  %6428 = fadd fast float %6417, 1.000000e+00
  %6429 = call float @dx.op.unary.f32(i32 22, float %6391)  ; Frc(value)
  %6430 = call float @dx.op.unary.f32(i32 22, float %6392)  ; Frc(value)
  %6431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6429, float %6430, float %6428, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6432 = extractvalue %dx.types.ResRet.f32 %6431, 0
  %6433 = extractvalue %dx.types.ResRet.f32 %6431, 1
  %6434 = extractvalue %dx.types.ResRet.f32 %6431, 2
  %6435 = extractvalue %dx.types.ResRet.f32 %6431, 3
  %6436 = fsub fast float %6432, %6422
  %6437 = fsub fast float %6433, %6423
  %6438 = fsub fast float %6434, %6424
  %6439 = fsub fast float %6435, %6425
  %6440 = fmul fast float %6436, %6418
  %6441 = fmul fast float %6437, %6418
  %6442 = fmul fast float %6438, %6418
  %6443 = fmul fast float %6439, %6418
  %6444 = fadd fast float %6440, %6422
  %6445 = fadd fast float %6441, %6423
  %6446 = fadd fast float %6442, %6424
  %6447 = fadd fast float %6443, %6425
  br label %6448

; <label>:6448                                    ; preds = %6427, %6410
  %6449 = phi float [ %6444, %6427 ], [ %6422, %6410 ]
  %6450 = phi float [ %6445, %6427 ], [ %6423, %6410 ]
  %6451 = phi float [ %6446, %6427 ], [ %6424, %6410 ]
  %6452 = phi float [ %6447, %6427 ], [ %6425, %6410 ]
  %6453 = fadd fast float %6449, -5.000000e-01
  %6454 = fadd fast float %6451, -5.000000e-01
  %6455 = fmul fast float %6453, 0xBFD5555560000000
  %6456 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6454, float %6455)  ; FMad(a,b,c)
  %6457 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6450, float 0.000000e+00)  ; FMad(a,b,c)
  %6458 = fadd fast float %6457, %6452
  %6459 = fmul fast float %6453, -7.500000e-01
  %6460 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6454, float %6459)  ; FMad(a,b,c)
  %6461 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6450, float 0.000000e+00)  ; FMad(a,b,c)
  %6462 = fadd fast float %6461, %6452
  %6463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6464 = extractvalue %dx.types.CBufRet.f32 %6463, 0
  %6465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6466 = extractvalue %dx.types.CBufRet.f32 %6465, 0
  %6467 = extractvalue %dx.types.CBufRet.f32 %6465, 1
  %6468 = extractvalue %dx.types.CBufRet.f32 %6465, 2
  %6469 = extractvalue %dx.types.CBufRet.f32 %6465, 3
  %6470 = fsub fast float %6466, %6456
  %6471 = fsub fast float %6467, %6458
  %6472 = fsub fast float %6468, %6460
  %6473 = fsub fast float %6469, %6462
  %6474 = fmul fast float %6470, %6464
  %6475 = fmul fast float %6471, %6464
  %6476 = fmul fast float %6472, %6464
  %6477 = fmul fast float %6473, %6464
  %6478 = fadd fast float %6474, %6456
  %6479 = fadd fast float %6475, %6458
  %6480 = fadd fast float %6476, %6460
  %6481 = fadd fast float %6477, %6462
  %6482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6483 = extractvalue %dx.types.ResRet.i32 %6482, 0
  %6484 = and i32 %6483, 536870911
  %6485 = uitofp i32 %6484 to float
  %6486 = fmul fast float %6485, %6332
  %6487 = fmul fast float %6485, %6336
  %6488 = fptoui float %6486 to i32
  %6489 = fptoui float %6487 to i32
  %6490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6491 = extractvalue %dx.types.ResRet.i32 %6490, 0
  %6492 = and i32 %6491, 31
  %6493 = lshr i32 %6488, %6492
  %6494 = lshr i32 %6489, %6492
  %6495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6496 = extractvalue %dx.types.ResRet.i32 %6495, 0
  %6497 = and i32 %6496, 31
  %6498 = shl i32 1, %6497
  %6499 = call i32 @dx.op.binary.i32(i32 40, i32 %6498, i32 4)  ; UMin(a,b)
  %6500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6501 = extractvalue %dx.types.ResRet.i32 %6500, 0
  %6502 = extractvalue %dx.types.ResRet.i32 %6500, 1
  %6503 = icmp eq i32 %6499, 0
  br i1 %6503, label %6545, label %6504

; <label>:6504                                    ; preds = %6448
  br label %6505

; <label>:6505                                    ; preds = %6533, %6504
  %6506 = phi i32 [ %6536, %6533 ], [ 0, %6504 ]
  %6507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6508 = extractvalue %dx.types.ResRet.i32 %6507, 0
  %6509 = lshr i32 %6508, 16
  %6510 = and i32 %6509, 31
  %6511 = shl i32 %6494, %6510
  %6512 = add i32 %6511, %6493
  %6513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6514 = extractvalue %dx.types.ResRet.i32 %6513, 0
  %6515 = and i32 %6514, 31
  %6516 = shl i32 %6512, %6515
  %6517 = add i32 %6516, %6506
  %6518 = shl i32 %6517, 2
  %6519 = add i32 %6518, 32
  %6520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6519, i32 undef)  ; BufferLoad(srv,index,wot)
  %6521 = extractvalue %dx.types.ResRet.i32 %6520, 0
  %6522 = icmp slt i32 %6521, 0
  %6523 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6506
  %6524 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6506
  %6525 = bitcast float* %6523 to i32*
  %6526 = bitcast float* %6524 to i32*
  br i1 %6522, label %6527, label %6533

; <label>:6527                                    ; preds = %6505
  %6528 = and i32 %6521, 1073741823
  %6529 = add nuw nsw i32 %6528, 20
  %6530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6529, i32 undef)  ; BufferLoad(srv,index,wot)
  %6531 = extractvalue %dx.types.ResRet.i32 %6530, 0
  %6532 = extractvalue %dx.types.ResRet.i32 %6530, 1
  br label %6533

; <label>:6533                                    ; preds = %6527, %6505
  %6534 = phi i32 [ %6531, %6527 ], [ %6501, %6505 ]
  %6535 = phi i32 [ %6532, %6527 ], [ %6502, %6505 ]
  store i32 %6534, i32* %6525, align 4
  store i32 %6535, i32* %6526, align 4
  %6536 = add nuw i32 %6506, 1
  %6537 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6538 = extractvalue %dx.types.CBufRet.i32 %6537, 2
  %6539 = icmp eq i32 %6538, 0
  %6540 = icmp ugt i32 %6521, -1073741825
  %6541 = and i1 %6540, %6539
  %6542 = icmp ult i32 %6536, %6499
  %6543 = and i1 %6541, %6542
  br i1 %6543, label %6505, label %6544

; <label>:6544                                    ; preds = %6533
  br label %6545

; <label>:6545                                    ; preds = %6544, %6448
  %6546 = phi i32 [ 0, %6448 ], [ %6536, %6544 ]
  %6547 = extractvalue %dx.types.CBufRet.f32 %6310, 2
  %6548 = fptoui float %6547 to i32
  %6549 = icmp eq i32 %6548, 0
  br i1 %6549, label %6601, label %6550

; <label>:6550                                    ; preds = %6545
  br label %6551

; <label>:6551                                    ; preds = %6596, %6550
  %6552 = phi i32 [ %6597, %6596 ], [ %6546, %6550 ]
  %6553 = phi i32 [ %6598, %6596 ], [ 0, %6550 ]
  %6554 = lshr i32 %6553, 2
  %6555 = and i32 %6553, 3
  %6556 = add nuw nsw i32 %6554, 83
  %6557 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6556)  ; CBufferLoadLegacy(handle,regIndex)
  %6558 = extractvalue %dx.types.CBufRet.i32 %6557, 0
  %6559 = extractvalue %dx.types.CBufRet.i32 %6557, 1
  %6560 = extractvalue %dx.types.CBufRet.i32 %6557, 2
  %6561 = extractvalue %dx.types.CBufRet.i32 %6557, 3
  %6562 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6558, i32* %6562, align 4
  %6563 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6559, i32* %6563, align 4
  %6564 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6560, i32* %6564, align 4
  %6565 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6561, i32* %6565, align 4
  %6566 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6555
  %6567 = load i32, i32* %6566, align 4, !tbaa !97, !noalias !101
  %6568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6569 = extractvalue %dx.types.ResRet.i32 %6568, 0
  %6570 = lshr i32 %6569, 16
  %6571 = and i32 %6570, 31
  %6572 = shl i32 %6494, %6571
  %6573 = add i32 %6572, %6493
  %6574 = shl i32 %6573, 2
  %6575 = add i32 %6574, %6567
  %6576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6575, i32 undef)  ; BufferLoad(srv,index,wot)
  %6577 = extractvalue %dx.types.ResRet.i32 %6576, 0
  %6578 = icmp eq i32 %6577, 0
  br i1 %6578, label %6596, label %6579

; <label>:6579                                    ; preds = %6551
  %6580 = icmp slt i32 %6577, 0
  %6581 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6552
  %6582 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6552
  %6583 = bitcast float* %6581 to i32*
  %6584 = bitcast float* %6582 to i32*
  br i1 %6580, label %6585, label %6592

; <label>:6585                                    ; preds = %6579
  %6586 = and i32 %6577, 1073741823
  %6587 = add i32 %6567, 20
  %6588 = add i32 %6587, %6586
  %6589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6588, i32 undef)  ; BufferLoad(srv,index,wot)
  %6590 = extractvalue %dx.types.ResRet.i32 %6589, 0
  %6591 = extractvalue %dx.types.ResRet.i32 %6589, 1
  br label %6592

; <label>:6592                                    ; preds = %6585, %6579
  %6593 = phi i32 [ %6590, %6585 ], [ %6501, %6579 ]
  %6594 = phi i32 [ %6591, %6585 ], [ %6502, %6579 ]
  store i32 %6593, i32* %6583, align 4
  store i32 %6594, i32* %6584, align 4
  %6595 = add i32 %6552, 1
  br label %6596

; <label>:6596                                    ; preds = %6592, %6551
  %6597 = phi i32 [ %6552, %6551 ], [ %6595, %6592 ]
  %6598 = add nuw i32 %6553, 1
  %6599 = icmp eq i32 %6598, %6548
  br i1 %6599, label %6600, label %6551

; <label>:6600                                    ; preds = %6596
  br label %6601

; <label>:6601                                    ; preds = %6600, %6545
  %6602 = phi i32 [ %6546, %6545 ], [ %6597, %6600 ]
  %6603 = icmp eq i32 %6602, 1
  %6604 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  %6605 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  br i1 %6603, label %6606, label %6609

; <label>:6606                                    ; preds = %6601
  %6607 = load float, float* %6604, align 4
  %6608 = load float, float* %6605, align 4
  br label %6636

; <label>:6609                                    ; preds = %6601
  %6610 = load float, float* %6604, align 4
  %6611 = load float, float* %6605, align 4
  %6612 = fdiv fast float 1.000000e+00, %6611
  %6613 = fsub fast float %6610, %6612
  %6614 = icmp ugt i32 %6602, 1
  br i1 %6614, label %6615, label %6631

; <label>:6615                                    ; preds = %6609
  br label %6616

; <label>:6616                                    ; preds = %6616, %6615
  %6617 = phi float [ %6626, %6616 ], [ %6613, %6615 ]
  %6618 = phi float [ %6627, %6616 ], [ %6610, %6615 ]
  %6619 = phi i32 [ %6628, %6616 ], [ 1, %6615 ]
  %6620 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6619
  %6621 = load float, float* %6620, align 4
  %6622 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6619
  %6623 = load float, float* %6622, align 4
  %6624 = fdiv fast float 1.000000e+00, %6623
  %6625 = fsub fast float %6621, %6624
  %6626 = call float @dx.op.binary.f32(i32 36, float %6617, float %6625)  ; FMin(a,b)
  %6627 = call float @dx.op.binary.f32(i32 35, float %6618, float %6621)  ; FMax(a,b)
  %6628 = add nuw i32 %6619, 1
  %6629 = icmp eq i32 %6628, %6602
  br i1 %6629, label %6630, label %6616

; <label>:6630                                    ; preds = %6616
  br label %6631

; <label>:6631                                    ; preds = %6630, %6609
  %6632 = phi float [ %6613, %6609 ], [ %6626, %6630 ]
  %6633 = phi float [ %6610, %6609 ], [ %6627, %6630 ]
  %6634 = fsub fast float %6633, %6632
  %6635 = fdiv fast float 1.000000e+00, %6634
  br label %6636

; <label>:6636                                    ; preds = %6631, %6606
  %6637 = phi float [ %6607, %6606 ], [ %6633, %6631 ]
  %6638 = phi float [ %6608, %6606 ], [ %6635, %6631 ]
  %6639 = fadd fast float %6340, %6637
  %6640 = fmul fast float %6639, %6638
  %6641 = call float @dx.op.unary.f32(i32 7, float %6640)  ; Saturate(value)
  %6642 = fmul fast float %6641, 2.000000e+00
  %6643 = fsub fast float 1.000000e+00, %6642
  %6644 = fmul fast float %6478, %6478
  %6645 = fsub fast float %6479, %6644
  %6646 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6645)  ; FMax(a,b)
  %6647 = fdiv fast float 1.000000e+00, %6646
  %6648 = fmul fast float %6479, %6478
  %6649 = fsub fast float %6480, %6648
  %6650 = fsub fast float %6643, %6478
  %6651 = fmul fast float %6643, %6643
  %6652 = fsub fast float %6651, %6479
  %6653 = fmul fast float %6647, %6649
  %6654 = fmul fast float %6653, %6650
  %6655 = fsub fast float %6652, %6654
  %6656 = fmul fast float %6479, %6479
  %6657 = fsub fast float %6481, %6656
  %6658 = fmul fast float %6649, %6649
  %6659 = fmul fast float %6658, %6647
  %6660 = fsub fast float %6657, %6659
  %6661 = fdiv fast float %6655, %6660
  %6662 = fmul fast float %6661, %6649
  %6663 = fsub fast float %6650, %6662
  %6664 = fmul fast float %6663, %6647
  %6665 = fmul fast float %6664, %6478
  %6666 = fsub fast float 1.000000e+00, %6665
  %6667 = fmul fast float %6661, %6479
  %6668 = fsub fast float %6666, %6667
  %6669 = fmul fast float %6664, %6664
  %6670 = fmul fast float %6661, 4.000000e+00
  %6671 = fmul fast float %6670, %6668
  %6672 = fsub fast float %6669, %6671
  %6673 = call float @dx.op.unary.f32(i32 24, float %6672)  ; Sqrt(value)
  %6674 = fcmp fast oge float %6664, 0.000000e+00
  %6675 = fsub fast float -0.000000e+00, %6673
  %6676 = select i1 %6674, float %6675, float %6673
  %6677 = fsub fast float %6676, %6664
  %6678 = fdiv fast float %6677, %6661
  %6679 = fdiv fast float %6668, %6677
  %6680 = fmul fast float %6678, 5.000000e-01
  %6681 = fmul fast float %6679, 2.000000e+00
  %6682 = select i1 %6674, float %6680, float %6681
  %6683 = select i1 %6674, float %6681, float %6680
  %6684 = call float @dx.op.binary.f32(i32 35, float %6682, float %6683)  ; FMax(a,b)
  %6685 = call float @dx.op.binary.f32(i32 36, float %6682, float %6683)  ; FMin(a,b)
  %6686 = fcmp fast ogt float %6643, %6684
  %6687 = fsub fast float %6643, %6685
  %6688 = fsub fast float %6643, %6684
  %6689 = fsub fast float %6684, %6685
  %6690 = select i1 %6686, float %6688, float %6689
  %6691 = fmul float %6687, %6690
  %6692 = select i1 %6686, float %6685, float %6643
  %6693 = fcmp fast ogt float %6643, %6685
  %6694 = fmul fast float %6692, %6684
  %6695 = fadd fast float %6692, %6684
  %6696 = fmul fast float %6695, %6478
  %6697 = fadd fast float %6694, %6479
  %6698 = fsub fast float %6697, %6696
  %6699 = fdiv fast float %6698, %6691
  %6700 = select i1 %6693, float %6699, float 0.000000e+00
  %6701 = fsub fast float 1.000000e+00, %6700
  %6702 = select i1 %6686, float %6701, float %6700
  %6703 = call float @dx.op.unary.f32(i32 7, float %6702)  ; Saturate(value)
  %6704 = extractvalue %dx.types.CBufRet.f32 %6463, 3
  %6705 = fmul fast float %6704, %6703
  %6706 = fsub fast float 1.000000e+00, %6705
  br label %6707

; <label>:6707                                    ; preds = %6636, %6348, %6313, %6309, %6275
  %6708 = phi float [ 1.000000e+00, %6275 ], [ %6706, %6636 ], [ 1.000000e+00, %6313 ], [ 1.000000e+00, %6348 ], [ 1.000000e+00, %6309 ]
  %6709 = fcmp fast ogt float %6305, 0.000000e+00
  br i1 %6709, label %6710, label %6716, !dx.controlflow.hints !110

; <label>:6710                                    ; preds = %6707
  %6711 = fadd fast float %6218, %6192
  %6712 = call float @dx.op.binary.f32(i32 35, float %6711, float 0.000000e+00)  ; FMax(a,b)
  %6713 = fadd fast float %6712, 0x3F10000000000000
  %6714 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %6207, float %6208, float undef, float undef, i32 0, i32 0, i32 undef, float %6713)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6715 = extractvalue %dx.types.ResRet.f32 %6714, 0
  br label %6716

; <label>:6716                                    ; preds = %6710, %6707
  %6717 = phi float [ %6715, %6710 ], [ 1.000000e+00, %6707 ]
  %6718 = fcmp fast ogt float %6303, 0.000000e+00
  br i1 %6718, label %6719, label %6725, !dx.controlflow.hints !111

; <label>:6719                                    ; preds = %6716
  %6720 = fadd fast float %6248, %6192
  %6721 = call float @dx.op.binary.f32(i32 35, float %6720, float 0.000000e+00)  ; FMax(a,b)
  %6722 = fadd fast float %6721, 0x3F10000000000000
  %6723 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %6199, float %6200, float undef, float undef, i32 0, i32 0, i32 undef, float %6722)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6724 = extractvalue %dx.types.ResRet.f32 %6723, 0
  br label %6725

; <label>:6725                                    ; preds = %6719, %6716
  %6726 = phi float [ %6724, %6719 ], [ 1.000000e+00, %6716 ]
  %6727 = fcmp fast ogt float %6302, 0.000000e+00
  br i1 %6727, label %6728, label %6735, !dx.controlflow.hints !112

; <label>:6728                                    ; preds = %6725
  %6729 = extractvalue %dx.types.CBufRet.f32 %6217, 0
  %6730 = fadd fast float %6729, %6192
  %6731 = call float @dx.op.binary.f32(i32 35, float %6730, float 0.000000e+00)  ; FMax(a,b)
  %6732 = fadd fast float %6731, 0x3F10000000000000
  %6733 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %6184, float %6188, float undef, float undef, i32 0, i32 0, i32 undef, float %6732)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6734 = extractvalue %dx.types.ResRet.f32 %6733, 0
  br label %6735

; <label>:6735                                    ; preds = %6728, %6725
  %6736 = phi float [ %6734, %6728 ], [ 1.000000e+00, %6725 ]
  %6737 = fsub fast float %6717, %6708
  %6738 = fmul fast float %6737, %6246
  %6739 = fadd fast float %6738, %6708
  %6740 = fsub fast float %6726, %6739
  %6741 = fmul fast float %6740, %6276
  %6742 = fadd fast float %6741, %6739
  %6743 = fsub fast float %6736, %6742
  %6744 = fmul fast float %6743, %6302
  %6745 = fadd fast float %6744, %6742
  %6746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6747 = extractvalue %dx.types.CBufRet.f32 %6746, 2
  %6748 = fcmp fast ogt float %6747, 0.000000e+00
  br i1 %6748, label %6749, label %6789, !dx.controlflow.hints !113

; <label>:6749                                    ; preds = %6735
  %6750 = fcmp fast ugt float %6747, 0.000000e+00
  br i1 %6750, label %6751, label %6786

; <label>:6751                                    ; preds = %6749
  %6752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6753 = extractvalue %dx.types.CBufRet.f32 %6752, 0
  %6754 = extractvalue %dx.types.CBufRet.f32 %6752, 1
  %6755 = extractvalue %dx.types.CBufRet.f32 %6752, 2
  %6756 = extractvalue %dx.types.CBufRet.f32 %6752, 3
  %6757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6758 = extractvalue %dx.types.CBufRet.f32 %6757, 0
  %6759 = extractvalue %dx.types.CBufRet.f32 %6757, 1
  %6760 = extractvalue %dx.types.CBufRet.f32 %6757, 2
  %6761 = extractvalue %dx.types.CBufRet.f32 %6757, 3
  %6762 = extractvalue %dx.types.CBufRet.f32 %6746, 0
  %6763 = extractvalue %dx.types.CBufRet.f32 %6746, 1
  %6764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6765 = extractvalue %dx.types.CBufRet.f32 %6764, 0
  %6766 = extractvalue %dx.types.CBufRet.f32 %6764, 1
  %6767 = extractvalue %dx.types.CBufRet.f32 %6764, 2
  %6768 = fadd fast float %6765, %6161
  %6769 = fadd fast float %6766, %6162
  %6770 = fadd fast float %6767, %6163
  %6771 = fmul fast float %6768, %6753
  %6772 = call float @dx.op.tertiary.f32(i32 46, float %6754, float %6769, float %6771)  ; FMad(a,b,c)
  %6773 = call float @dx.op.tertiary.f32(i32 46, float %6755, float %6770, float %6772)  ; FMad(a,b,c)
  %6774 = fadd fast float %6773, %6756
  %6775 = fmul fast float %6768, %6758
  %6776 = call float @dx.op.tertiary.f32(i32 46, float %6759, float %6769, float %6775)  ; FMad(a,b,c)
  %6777 = call float @dx.op.tertiary.f32(i32 46, float %6760, float %6770, float %6776)  ; FMad(a,b,c)
  %6778 = fadd fast float %6777, %6761
  %6779 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6774, float %6778, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6780 = extractvalue %dx.types.ResRet.f32 %6779, 0
  %6781 = fmul fast float %6780, %6763
  %6782 = fadd fast float %6781, %6762
  %6783 = call float @dx.op.unary.f32(i32 7, float %6782)  ; Saturate(value)
  %6784 = fmul fast float %6783, %6747
  %6785 = fsub fast float 1.000000e+00, %6784
  br label %6786

; <label>:6786                                    ; preds = %6751, %6749
  %6787 = phi float [ %6785, %6751 ], [ 1.000000e+00, %6749 ]
  %6788 = fmul fast float %6787, %6745
  br label %6789

; <label>:6789                                    ; preds = %6786, %6735, %6141
  %6790 = phi float [ 1.000000e+00, %6141 ], [ %6788, %6786 ], [ %6745, %6735 ]
  %6791 = call float @dx.op.binary.f32(i32 36, float %6790, float %6790)  ; FMin(a,b)
  %6792 = call float @dx.op.binary.f32(i32 36, float %6790, float %6791)  ; FMin(a,b)
  %6793 = fcmp fast ogt float %6792, 0.000000e+00
  br i1 %6793, label %6794, label %6954, !dx.controlflow.hints !114

; <label>:6794                                    ; preds = %6789
  %6795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6796 = extractvalue %dx.types.CBufRet.f32 %6795, 0
  %6797 = extractvalue %dx.types.CBufRet.f32 %6795, 1
  %6798 = extractvalue %dx.types.CBufRet.f32 %6795, 2
  %6799 = extractvalue %dx.types.CBufRet.f32 %6795, 3
  %6800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6801 = extractvalue %dx.types.CBufRet.f32 %6800, 0
  %6802 = extractvalue %dx.types.CBufRet.f32 %6800, 1
  %6803 = extractvalue %dx.types.CBufRet.f32 %6800, 2
  %6804 = extractvalue %dx.types.CBufRet.f32 %6800, 3
  %6805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6806 = extractvalue %dx.types.CBufRet.f32 %6805, 0
  %6807 = extractvalue %dx.types.CBufRet.f32 %6805, 1
  %6808 = extractvalue %dx.types.CBufRet.f32 %6805, 2
  %6809 = extractvalue %dx.types.CBufRet.f32 %6805, 3
  %6810 = fmul fast float %6796, %6161
  %6811 = call float @dx.op.tertiary.f32(i32 46, float %6162, float %6797, float %6810)  ; FMad(a,b,c)
  %6812 = call float @dx.op.tertiary.f32(i32 46, float %6163, float %6798, float %6811)  ; FMad(a,b,c)
  %6813 = fadd fast float %6812, %6799
  %6814 = fmul fast float %6801, %6161
  %6815 = call float @dx.op.tertiary.f32(i32 46, float %6162, float %6802, float %6814)  ; FMad(a,b,c)
  %6816 = call float @dx.op.tertiary.f32(i32 46, float %6163, float %6803, float %6815)  ; FMad(a,b,c)
  %6817 = fadd fast float %6816, %6804
  %6818 = fmul fast float %6806, %6161
  %6819 = call float @dx.op.tertiary.f32(i32 46, float %6162, float %6807, float %6818)  ; FMad(a,b,c)
  %6820 = call float @dx.op.tertiary.f32(i32 46, float %6163, float %6808, float %6819)  ; FMad(a,b,c)
  %6821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6822 = extractvalue %dx.types.CBufRet.f32 %6821, 0
  %6823 = extractvalue %dx.types.CBufRet.f32 %6821, 1
  %6824 = extractvalue %dx.types.CBufRet.f32 %6821, 3
  %6825 = fmul fast float %6824, %6813
  %6826 = fmul fast float %6824, %6817
  %6827 = fadd fast float %6825, %6822
  %6828 = fadd fast float %6826, %6823
  %6829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6830 = extractvalue %dx.types.CBufRet.f32 %6829, 0
  %6831 = extractvalue %dx.types.CBufRet.f32 %6829, 1
  %6832 = fsub fast float %6827, %6830
  %6833 = fsub fast float %6828, %6831
  %6834 = fcmp fast olt float %6832, 0.000000e+00
  %6835 = fcmp fast olt float %6833, 0.000000e+00
  %6836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6837 = extractvalue %dx.types.CBufRet.f32 %6836, 0
  %6838 = extractvalue %dx.types.CBufRet.f32 %6836, 1
  %6839 = extractvalue %dx.types.CBufRet.f32 %6836, 2
  %6840 = extractvalue %dx.types.CBufRet.f32 %6836, 3
  %6841 = select i1 %6834, float %6837, float %6839
  %6842 = select i1 %6835, float %6838, float %6840
  %6843 = fmul fast float %6841, %6832
  %6844 = fmul fast float %6842, %6833
  %6845 = call float @dx.op.unary.f32(i32 6, float %6843)  ; FAbs(value)
  %6846 = call float @dx.op.unary.f32(i32 6, float %6844)  ; FAbs(value)
  %6847 = extractvalue %dx.types.CBufRet.f32 %6156, 0
  %6848 = call float @dx.op.binary.f32(i32 35, float %6845, float %6846)  ; FMax(a,b)
  %6849 = fsub fast float %6847, %6848
  %6850 = call float @dx.op.unary.f32(i32 7, float %6849)  ; Saturate(value)
  %6851 = fcmp fast ogt float %6850, 0.000000e+00
  br i1 %6851, label %6852, label %6893, !dx.controlflow.hints !115

; <label>:6852                                    ; preds = %6794
  %6853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6827, float %6828, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6854 = extractvalue %dx.types.ResRet.f32 %6853, 1
  %6855 = fcmp fast ogt float %6854, 0.000000e+00
  br i1 %6855, label %6856, label %6888

; <label>:6856                                    ; preds = %6852
  %6857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6827, float %6828, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6858 = extractvalue %dx.types.ResRet.f32 %6857, 0
  %6859 = extractvalue %dx.types.ResRet.f32 %6857, 1
  %6860 = extractvalue %dx.types.ResRet.f32 %6857, 2
  %6861 = extractvalue %dx.types.ResRet.f32 %6857, 3
  %6862 = fsub fast float 1.000000e+00, %6809
  %6863 = fsub fast float %6862, %6820
  %6864 = fmul fast float %6863, 0x400921FB60000000
  %6865 = fadd fast float %6864, 0x3FF921FB60000000
  %6866 = call float @dx.op.unary.f32(i32 13, float %6865)  ; Sin(value)
  %6867 = fadd fast float %6866, -1.000000e+00
  %6868 = fmul fast float %6867, 0x3FD45F3060000000
  %6869 = fmul fast float %6863, 0x401921FB60000000
  %6870 = fadd fast float %6869, 0x400921FB60000000
  %6871 = call float @dx.op.unary.f32(i32 13, float %6870)  ; Sin(value)
  %6872 = fadd fast float %6871, 0x3E7777A5C0000000
  %6873 = fmul fast float %6872, 0x3FC45F3060000000
  %6874 = fmul fast float %6863, 0x4022D97C80000000
  %6875 = fadd fast float %6874, 0x4012D97C80000000
  %6876 = call float @dx.op.unary.f32(i32 13, float %6875)  ; Sin(value)
  %6877 = fadd fast float %6876, 1.000000e+00
  %6878 = fmul fast float %6877, 0x3FBB2995E0000000
  %6879 = fmul fast float %6863, 0x402921FB60000000
  %6880 = fadd fast float %6879, 0x401921FB60000000
  %6881 = call float @dx.op.unary.f32(i32 13, float %6880)  ; Sin(value)
  %6882 = fadd fast float %6881, 0xBE8777A5C0000000
  %6883 = fmul fast float %6882, 0x3FB45F3060000000
  %6884 = call float @dx.op.dot4.f32(i32 56, float %6858, float %6859, float %6860, float %6861, float %6868, float %6873, float %6878, float %6883)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6885 = fmul fast float %6884, 0xBFF7154760000000
  %6886 = call float @dx.op.unary.f32(i32 21, float %6885)  ; Exp(value)
  %6887 = call float @dx.op.unary.f32(i32 7, float %6886)  ; Saturate(value)
  br label %6888

; <label>:6888                                    ; preds = %6856, %6852
  %6889 = phi float [ %6887, %6856 ], [ 1.000000e+00, %6852 ]
  %6890 = fadd fast float %6889, -1.000000e+00
  %6891 = fmul fast float %6890, %6850
  %6892 = fadd fast float %6891, 1.000000e+00
  br label %6893

; <label>:6893                                    ; preds = %6888, %6794
  %6894 = phi float [ %6892, %6888 ], [ 1.000000e+00, %6794 ]
  %6895 = fmul fast float %6894, %6790
  %6896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6897 = extractvalue %dx.types.CBufRet.f32 %6896, 0
  %6898 = extractvalue %dx.types.CBufRet.f32 %6896, 1
  %6899 = extractvalue %dx.types.CBufRet.f32 %6896, 2
  %6900 = fadd fast float %6897, %155
  %6901 = fadd fast float %6898, %156
  %6902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6903 = extractvalue %dx.types.CBufRet.f32 %6902, 1
  %6904 = fsub fast float -0.000000e+00, %6900
  %6905 = fsub fast float -0.000000e+00, %6901
  %6906 = fsub fast float %5711, %6899
  %6907 = fadd fast float %6906, %6903
  %6908 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6904, float %6905, float %6907)  ; Dot3(ax,ay,az,bx,by,bz)
  %6909 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6142, float %6143, float %6144)  ; Dot3(ax,ay,az,bx,by,bz)
  %6910 = fdiv fast float 1.000000e+00, %6909
  %6911 = fmul fast float %6910, %6908
  %6912 = fmul fast float %6142, %6911
  %6913 = fmul fast float %6143, %6911
  %6914 = fadd fast float %6912, %6900
  %6915 = fadd fast float %6913, %6901
  %6916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6917 = extractvalue %dx.types.CBufRet.f32 %6916, 0
  %6918 = extractvalue %dx.types.CBufRet.f32 %6916, 1
  %6919 = fsub fast float %6914, %6917
  %6920 = fsub fast float %6915, %6918
  %6921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6922 = extractvalue %dx.types.CBufRet.f32 %6921, 2
  %6923 = extractvalue %dx.types.CBufRet.f32 %6921, 3
  %6924 = fmul fast float %6919, %6922
  %6925 = fmul fast float %6920, %6923
  %6926 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6927 = extractvalue %dx.types.CBufRet.i32 %6926, 3
  %6928 = icmp eq i32 %6927, 0
  br i1 %6928, label %6934, label %6929

; <label>:6929                                    ; preds = %6893
  %6930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6924, float %6925, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6931 = extractvalue %dx.types.ResRet.f32 %6930, 0
  %6932 = extractvalue %dx.types.ResRet.f32 %6930, 1
  %6933 = extractvalue %dx.types.ResRet.f32 %6930, 2
  br label %6939

; <label>:6934                                    ; preds = %6893
  %6935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6924, float %6925, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6936 = extractvalue %dx.types.ResRet.f32 %6935, 0
  %6937 = extractvalue %dx.types.ResRet.f32 %6935, 1
  %6938 = extractvalue %dx.types.ResRet.f32 %6935, 2
  br label %6939

; <label>:6939                                    ; preds = %6934, %6929
  %6940 = phi float [ %6931, %6929 ], [ %6936, %6934 ]
  %6941 = phi float [ %6932, %6929 ], [ %6937, %6934 ]
  %6942 = phi float [ %6933, %6929 ], [ %6938, %6934 ]
  %6943 = extractvalue %dx.types.CBufRet.f32 %6902, 2
  %6944 = fmul fast float %6943, %6940
  %6945 = extractvalue %dx.types.CBufRet.f32 %6902, 0
  %6946 = fsub fast float %6911, %6945
  %6947 = fsub fast float %6946, %6944
  %6948 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6947)  ; FMax(a,b)
  %6949 = fmul fast float %6948, %6941
  %6950 = call float @dx.op.binary.f32(i32 36, float %6942, float %6949)  ; FMin(a,b)
  %6951 = fmul fast float %6950, 0xBFF7154760000000
  %6952 = call float @dx.op.unary.f32(i32 21, float %6951)  ; Exp(value)
  %6953 = fmul fast float %6895, %6952
  br label %6954

; <label>:6954                                    ; preds = %6939, %6789
  %6955 = phi float [ %6953, %6939 ], [ %6790, %6789 ]
  %6956 = call float @dx.op.binary.f32(i32 36, float %6955, float %6955)  ; FMin(a,b)
  %6957 = call float @dx.op.binary.f32(i32 36, float %6955, float %6956)  ; FMin(a,b)
  %6958 = fcmp fast ogt float %6957, 0.000000e+00
  br i1 %6958, label %6959, label %7345, !dx.controlflow.hints !116

; <label>:6959                                    ; preds = %6954
  %6960 = fmul fast float %6955, %6153
  %6961 = fmul fast float %6955, %6154
  %6962 = fmul fast float %6955, %6155
  %6963 = fsub fast float %157, %5499
  %6964 = fcmp fast ogt float %6963, 0.000000e+00
  %6965 = fmul fast float %6142, 5.120000e+02
  %6966 = fmul fast float %6143, 5.120000e+02
  %6967 = fmul fast float %6144, 5.120000e+02
  %6968 = fadd fast float %6967, %157
  %6969 = fsub fast float %5499, %6968
  %6970 = fmul fast float %6969, 2.000000e+00
  %6971 = fadd fast float %6970, %6968
  %6972 = select i1 %6964, float %6971, float %6968
  %6973 = fsub fast float %6972, %157
  %6974 = call float @dx.op.dot3.f32(i32 55, float %6965, float %6966, float %6973, float %6965, float %6966, float %6973)  ; Dot3(ax,ay,az,bx,by,bz)
  %6975 = call float @dx.op.unary.f32(i32 25, float %6974)  ; Rsqrt(value)
  %6976 = fmul fast float %6975, %6965
  %6977 = fmul fast float %6975, %6966
  %6978 = fmul fast float %6975, %6973
  %6979 = fsub fast float %5499, %157
  %6980 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6979)  ; Dot3(ax,ay,az,bx,by,bz)
  %6981 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6976, float %6977, float %6978)  ; Dot3(ax,ay,az,bx,by,bz)
  %6982 = fdiv fast float 1.000000e+00, %6981
  %6983 = fmul fast float %6982, %6980
  %6984 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6963, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6985 = fcmp fast ogt float %6984, 0.000000e+00
  %6986 = fcmp fast olt float %6984, 0.000000e+00
  %6987 = zext i1 %6985 to i32
  %6988 = zext i1 %6986 to i32
  %6989 = sub nsw i32 %6987, %6988
  %6990 = sitofp i32 %6989 to float
  %6991 = fsub fast float %6972, %5499
  %6992 = call float @dx.op.dot3.f32(i32 55, float %6965, float %6966, float %6991, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6993 = fcmp fast ogt float %6992, 0.000000e+00
  %6994 = fcmp fast olt float %6992, 0.000000e+00
  %6995 = zext i1 %6993 to i32
  %6996 = zext i1 %6994 to i32
  %6997 = sub nsw i32 %6995, %6996
  %6998 = sitofp i32 %6997 to float
  %6999 = fcmp fast une float %6990, %6998
  br i1 %6999, label %7000, label %7010

; <label>:7000                                    ; preds = %6959
  %7001 = fmul fast float %6983, %6978
  %7002 = fmul fast float %6983, %6977
  %7003 = fmul fast float %6983, %6976
  %7004 = fmul fast float %7003, %7003
  %7005 = fmul fast float %7002, %7002
  %7006 = fadd fast float %7004, %7005
  %7007 = fmul fast float %7001, %7001
  %7008 = fadd fast float %7006, %7007
  %7009 = call float @dx.op.unary.f32(i32 24, float %7008)  ; Sqrt(value)
  br label %7020

; <label>:7010                                    ; preds = %6959
  %7011 = icmp slt i32 %6989, 0
  br i1 %7011, label %7012, label %7020

; <label>:7012                                    ; preds = %7010
  %7013 = fsub fast float %157, %6972
  %7014 = fmul fast float %6965, %6965
  %7015 = fmul fast float %6966, %6966
  %7016 = fadd fast float %7014, %7015
  %7017 = fmul fast float %7013, %7013
  %7018 = fadd fast float %7016, %7017
  %7019 = call float @dx.op.unary.f32(i32 24, float %7018)  ; Sqrt(value)
  br label %7020

; <label>:7020                                    ; preds = %7012, %7010, %7000
  %7021 = phi float [ %7009, %7000 ], [ %7019, %7012 ], [ 0.000000e+00, %7010 ]
  %7022 = fsub fast float -0.000000e+00, %7021
  %7023 = select i1 %6964, float -0.000000e+00, float %7022
  %7024 = fmul fast float %5500, 0x3FF7154760000000
  %7025 = fmul fast float %7024, %7023
  %7026 = fmul fast float %5501, 0x3FF7154760000000
  %7027 = fmul fast float %7026, %7023
  %7028 = fmul fast float %5502, 0x3FF7154760000000
  %7029 = fmul fast float %7028, %7023
  %7030 = call float @dx.op.unary.f32(i32 21, float %7025)  ; Exp(value)
  %7031 = call float @dx.op.unary.f32(i32 21, float %7027)  ; Exp(value)
  %7032 = call float @dx.op.unary.f32(i32 21, float %7029)  ; Exp(value)
  %7033 = call float @dx.op.unary.f32(i32 7, float %7030)  ; Saturate(value)
  %7034 = call float @dx.op.unary.f32(i32 7, float %7031)  ; Saturate(value)
  %7035 = call float @dx.op.unary.f32(i32 7, float %7032)  ; Saturate(value)
  %7036 = fmul fast float %6960, %7033
  %7037 = fmul fast float %6961, %7034
  %7038 = fmul fast float %6962, %7035
  %7039 = fsub fast float %6142, %5699
  %7040 = fsub fast float %6143, %5698
  %7041 = fsub fast float %6144, %5697
  %7042 = call float @dx.op.dot3.f32(i32 55, float %7039, float %7040, float %7041, float %7039, float %7040, float %7041)  ; Dot3(ax,ay,az,bx,by,bz)
  %7043 = call float @dx.op.unary.f32(i32 25, float %7042)  ; Rsqrt(value)
  %7044 = fmul fast float %7043, %7039
  %7045 = fmul fast float %7043, %7040
  %7046 = fmul fast float %7043, %7041
  %7047 = call float @dx.op.dot3.f32(i32 55, float %6142, float %6143, float %6144, float %5706, float %5707, float %5708)  ; Dot3(ax,ay,az,bx,by,bz)
  %7048 = call float @dx.op.dot3.f32(i32 55, float %5696, float %5695, float %5694, float %7044, float %7045, float %7046)  ; Dot3(ax,ay,az,bx,by,bz)
  %7049 = call float @dx.op.unary.f32(i32 7, float %7047)  ; Saturate(value)
  %7050 = fmul fast float %7049, %7049
  %7051 = fmul fast float %7050, %5727
  %7052 = call float @dx.op.unary.f32(i32 7, float %7051)  ; Saturate(value)
  %7053 = fmul fast float %7052, %7049
  %7054 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5707, float %5708, float %7044, float %7045, float %7046)  ; Dot3(ax,ay,az,bx,by,bz)
  %7055 = fmul fast float %7054, %7054
  %7056 = call float @dx.op.unary.f32(i32 6, float %7047)  ; FAbs(value)
  %7057 = call float @dx.op.binary.f32(i32 35, float %6110, float 0x3F847AE140000000)  ; FMax(a,b)
  %7058 = fmul fast float %7057, %7057
  %7059 = fmul fast float %7058, %7058
  %7060 = fsub fast float 1.000000e+00, %7059
  %7061 = fmul fast float %5714, %5714
  %7062 = fmul fast float %7061, %7060
  %7063 = fadd fast float %7062, %7059
  %7064 = bitcast float %7063 to i32
  %7065 = ashr i32 %7064, 1
  %7066 = add nsw i32 %7065, 532487669
  %7067 = bitcast i32 %7066 to float
  %7068 = fadd fast float %7067, %5714
  %7069 = fmul fast float %7059, %7055
  %7070 = fsub fast float 1.000000e+00, %7055
  %7071 = fadd fast float %7070, %7069
  %7072 = fmul fast float %7056, %7056
  %7073 = fmul fast float %7072, %7060
  %7074 = fadd fast float %7073, %7059
  %7075 = bitcast float %7074 to i32
  %7076 = ashr i32 %7075, 1
  %7077 = add nsw i32 %7076, 532487669
  %7078 = bitcast i32 %7077 to float
  %7079 = fadd fast float %7078, %7056
  %7080 = fmul fast float %7071, %7071
  %7081 = fmul fast float %7080, %7068
  %7082 = fmul fast float %7081, %7079
  %7083 = fdiv fast float 0x3FF0A00000000000, %7082
  %7084 = fmul fast float %7083, %7059
  %7085 = fmul fast float %5972, 0x3FF9999980000000
  %7086 = fsub fast float 5.000000e+00, %7085
  %7087 = call float @dx.op.unary.f32(i32 6, float %7048)  ; FAbs(value)
  %7088 = fsub fast float 1.000000e+00, %7087
  %7089 = fmul fast float %5972, 0x41D9660740000000
  %7090 = fadd fast float %7089, 0xC1EFBF8940000000
  %7091 = bitcast float %7088 to i32
  %7092 = sitofp i32 %7091 to float
  %7093 = fmul fast float %7092, %7086
  %7094 = fadd fast float %7090, %7093
  %7095 = fptosi float %7094 to i32
  %7096 = bitcast i32 %7095 to float
  %7097 = fsub fast float 1.000000e+00, %5703
  %7098 = fsub fast float 1.000000e+00, %5704
  %7099 = fsub fast float 1.000000e+00, %5712
  %7100 = fmul fast float %7096, %7097
  %7101 = fmul fast float %7096, %7098
  %7102 = fmul fast float %7096, %7099
  %7103 = fadd fast float %7100, %5703
  %7104 = fadd fast float %7101, %5704
  %7105 = fadd fast float %7102, %5712
  br i1 %5995, label %7106, label %7129

; <label>:7106                                    ; preds = %7020
  %7107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5068, float %7087, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7108 = extractvalue %dx.types.ResRet.f32 %7107, 0
  %7109 = extractvalue %dx.types.ResRet.f32 %7107, 1
  %7110 = extractvalue %dx.types.ResRet.f32 %7107, 2
  %7111 = fadd fast float %7108, -5.000000e-01
  %7112 = fadd fast float %7109, -5.000000e-01
  %7113 = fadd fast float %7110, -5.000000e-01
  %7114 = fmul fast float %5703, 4.000000e+00
  %7115 = fmul fast float %7114, %7097
  %7116 = fmul fast float %7115, %7111
  %7117 = fmul fast float %5704, 4.000000e+00
  %7118 = fmul fast float %7117, %7098
  %7119 = fmul fast float %7118, %7112
  %7120 = fmul fast float %5712, 4.000000e+00
  %7121 = fmul fast float %7120, %7099
  %7122 = fmul fast float %7121, %7113
  %7123 = fadd fast float %7116, %7103
  %7124 = fadd fast float %7119, %7104
  %7125 = fadd fast float %7122, %7105
  %7126 = call float @dx.op.unary.f32(i32 7, float %7123)  ; Saturate(value)
  %7127 = call float @dx.op.unary.f32(i32 7, float %7124)  ; Saturate(value)
  %7128 = call float @dx.op.unary.f32(i32 7, float %7125)  ; Saturate(value)
  br label %7129

; <label>:7129                                    ; preds = %7106, %7020
  %7130 = phi float [ %7126, %7106 ], [ %7103, %7020 ]
  %7131 = phi float [ %7127, %7106 ], [ %7104, %7020 ]
  %7132 = phi float [ %7128, %7106 ], [ %7105, %7020 ]
  %7133 = fmul fast float %7047, 9.843750e-01
  %7134 = fadd fast float %7133, 7.812500e-03
  %7135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7134, float %5976, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7136 = extractvalue %dx.types.ResRet.f32 %7135, 0
  %7137 = extractvalue %dx.types.ResRet.f32 %7135, 1
  %7138 = extractvalue %dx.types.ResRet.f32 %7135, 2
  %7139 = extractvalue %dx.types.ResRet.f32 %7135, 3
  %7140 = fsub fast float %7138, %7136
  %7141 = fsub fast float %7139, %7137
  %7142 = fmul fast float %7140, %5982
  %7143 = fmul fast float %7141, %5982
  %7144 = fadd fast float %7142, %7136
  %7145 = fadd fast float %7143, %7137
  %7146 = fmul fast float %7144, %5703
  %7147 = fmul fast float %7144, %5704
  %7148 = fmul fast float %7144, %5712
  %7149 = fadd fast float %7146, %7145
  %7150 = fadd fast float %7147, %7145
  %7151 = fadd fast float %7148, %7145
  br i1 %5995, label %7152, label %7175

; <label>:7152                                    ; preds = %7129
  %7153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5068, float %7047, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7154 = extractvalue %dx.types.ResRet.f32 %7153, 0
  %7155 = extractvalue %dx.types.ResRet.f32 %7153, 1
  %7156 = extractvalue %dx.types.ResRet.f32 %7153, 2
  %7157 = fadd fast float %7154, -5.000000e-01
  %7158 = fadd fast float %7155, -5.000000e-01
  %7159 = fadd fast float %7156, -5.000000e-01
  %7160 = fmul fast float %5703, 4.000000e+00
  %7161 = fmul fast float %7160, %7097
  %7162 = fmul fast float %7161, %7157
  %7163 = fmul fast float %5704, 4.000000e+00
  %7164 = fmul fast float %7163, %7098
  %7165 = fmul fast float %7164, %7158
  %7166 = fmul fast float %5712, 4.000000e+00
  %7167 = fmul fast float %7166, %7099
  %7168 = fmul fast float %7167, %7159
  %7169 = fadd fast float %7162, %7149
  %7170 = fadd fast float %7165, %7150
  %7171 = fadd fast float %7168, %7151
  %7172 = call float @dx.op.unary.f32(i32 7, float %7169)  ; Saturate(value)
  %7173 = call float @dx.op.unary.f32(i32 7, float %7170)  ; Saturate(value)
  %7174 = call float @dx.op.unary.f32(i32 7, float %7171)  ; Saturate(value)
  br label %7175

; <label>:7175                                    ; preds = %7152, %7129
  %7176 = phi float [ %7172, %7152 ], [ %7149, %7129 ]
  %7177 = phi float [ %7173, %7152 ], [ %7150, %7129 ]
  %7178 = phi float [ %7174, %7152 ], [ %7151, %7129 ]
  %7179 = call float @dx.op.binary.f32(i32 35, float %7177, float %7178)  ; FMax(a,b)
  %7180 = call float @dx.op.binary.f32(i32 35, float %7176, float %7179)  ; FMax(a,b)
  %7181 = fsub fast float 1.000000e+00, %7180
  %7182 = call float @dx.op.binary.f32(i32 35, float %7056, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7183 = fdiv fast float %4418, %7182
  %7184 = fmul fast float %6050, %7183
  %7185 = fmul fast float %6052, %7183
  %7186 = fmul fast float %6054, %7183
  %7187 = call float @dx.op.unary.f32(i32 21, float %7184)  ; Exp(value)
  %7188 = call float @dx.op.unary.f32(i32 21, float %7185)  ; Exp(value)
  %7189 = call float @dx.op.unary.f32(i32 21, float %7186)  ; Exp(value)
  %7190 = call float @dx.op.unary.f32(i32 7, float %7187)  ; Saturate(value)
  %7191 = call float @dx.op.unary.f32(i32 7, float %7188)  ; Saturate(value)
  %7192 = call float @dx.op.unary.f32(i32 7, float %7189)  ; Saturate(value)
  %7193 = select i1 %6047, float %7190, float 0.000000e+00
  %7194 = select i1 %6048, float %7191, float 0.000000e+00
  %7195 = select i1 %6049, float %7192, float 0.000000e+00
  %7196 = fsub fast float -0.000000e+00, %5706
  %7197 = fsub fast float -0.000000e+00, %5707
  %7198 = fsub fast float -0.000000e+00, %5708
  %7199 = call float @dx.op.dot3.f32(i32 55, float %6142, float %6143, float %6144, float %7196, float %7197, float %7198)  ; Dot3(ax,ay,az,bx,by,bz)
  %7200 = call float @dx.op.unary.f32(i32 7, float %7199)  ; Saturate(value)
  %7201 = fmul fast float %7200, 9.843750e-01
  %7202 = fadd fast float %7201, 7.812500e-03
  %7203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7202, float %5976, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7204 = extractvalue %dx.types.ResRet.f32 %7203, 0
  %7205 = extractvalue %dx.types.ResRet.f32 %7203, 1
  %7206 = extractvalue %dx.types.ResRet.f32 %7203, 2
  %7207 = extractvalue %dx.types.ResRet.f32 %7203, 3
  %7208 = fsub fast float %7206, %7204
  %7209 = fsub fast float %7207, %7205
  %7210 = fmul fast float %7208, %5982
  %7211 = fmul fast float %7209, %5982
  %7212 = fadd fast float %7210, %7204
  %7213 = fadd fast float %7211, %7205
  %7214 = fmul fast float %7212, %5703
  %7215 = fmul fast float %7212, %5704
  %7216 = fmul fast float %7212, %5712
  %7217 = fadd fast float %7214, %7213
  %7218 = fadd fast float %7215, %7213
  %7219 = fadd fast float %7216, %7213
  br i1 %5995, label %7220, label %7243

; <label>:7220                                    ; preds = %7175
  %7221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5068, float %7200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7222 = extractvalue %dx.types.ResRet.f32 %7221, 0
  %7223 = extractvalue %dx.types.ResRet.f32 %7221, 1
  %7224 = extractvalue %dx.types.ResRet.f32 %7221, 2
  %7225 = fadd fast float %7222, -5.000000e-01
  %7226 = fadd fast float %7223, -5.000000e-01
  %7227 = fadd fast float %7224, -5.000000e-01
  %7228 = fmul fast float %5703, 4.000000e+00
  %7229 = fmul fast float %7228, %7097
  %7230 = fmul fast float %7229, %7225
  %7231 = fmul fast float %5704, 4.000000e+00
  %7232 = fmul fast float %7231, %7098
  %7233 = fmul fast float %7232, %7226
  %7234 = fmul fast float %5712, 4.000000e+00
  %7235 = fmul fast float %7234, %7099
  %7236 = fmul fast float %7235, %7227
  %7237 = fadd fast float %7230, %7217
  %7238 = fadd fast float %7233, %7218
  %7239 = fadd fast float %7236, %7219
  %7240 = call float @dx.op.unary.f32(i32 7, float %7237)  ; Saturate(value)
  %7241 = call float @dx.op.unary.f32(i32 7, float %7238)  ; Saturate(value)
  %7242 = call float @dx.op.unary.f32(i32 7, float %7239)  ; Saturate(value)
  br label %7243

; <label>:7243                                    ; preds = %7220, %7175
  %7244 = phi float [ %7240, %7220 ], [ %7217, %7175 ]
  %7245 = phi float [ %7241, %7220 ], [ %7218, %7175 ]
  %7246 = phi float [ %7242, %7220 ], [ %7219, %7175 ]
  %7247 = call float @dx.op.binary.f32(i32 35, float %7245, float %7246)  ; FMax(a,b)
  %7248 = call float @dx.op.binary.f32(i32 35, float %7244, float %7247)  ; FMax(a,b)
  %7249 = fsub fast float 1.000000e+00, %7248
  %7250 = fmul fast float %6110, %6115
  %7251 = fadd fast float %6117, %7250
  %7252 = call float @dx.op.unary.f32(i32 7, float %7251)  ; Saturate(value)
  %7253 = fsub fast float %6142, %5720
  %7254 = fsub fast float %6143, %5721
  %7255 = fsub fast float %6144, %5722
  %7256 = call float @dx.op.dot3.f32(i32 55, float %7253, float %7254, float %7255, float %7253, float %7254, float %7255)  ; Dot3(ax,ay,az,bx,by,bz)
  %7257 = call float @dx.op.unary.f32(i32 25, float %7256)  ; Rsqrt(value)
  %7258 = fmul fast float %7257, %7253
  %7259 = fmul fast float %7257, %7254
  %7260 = fmul fast float %7257, %7255
  %7261 = call float @dx.op.dot3.f32(i32 55, float %7196, float %7197, float %7198, float %7258, float %7259, float %7260)  ; Dot3(ax,ay,az,bx,by,bz)
  %7262 = fmul fast float %7261, %7261
  %7263 = call float @dx.op.unary.f32(i32 6, float %7200)  ; FAbs(value)
  %7264 = call float @dx.op.binary.f32(i32 35, float %7252, float 0x3F847AE140000000)  ; FMax(a,b)
  %7265 = fmul fast float %7264, %7264
  %7266 = fmul fast float %7265, %7265
  %7267 = fsub fast float 1.000000e+00, %7266
  %7268 = fmul fast float %7061, %7267
  %7269 = fadd fast float %7268, %7266
  %7270 = bitcast float %7269 to i32
  %7271 = ashr i32 %7270, 1
  %7272 = add nsw i32 %7271, 532487669
  %7273 = bitcast i32 %7272 to float
  %7274 = fadd fast float %7273, %5714
  %7275 = fmul fast float %7266, %7262
  %7276 = fsub fast float 1.000000e+00, %7262
  %7277 = fadd fast float %7276, %7275
  %7278 = fmul fast float %7263, %7263
  %7279 = fmul fast float %7278, %7267
  %7280 = fadd fast float %7279, %7266
  %7281 = bitcast float %7280 to i32
  %7282 = ashr i32 %7281, 1
  %7283 = add nsw i32 %7282, 532487669
  %7284 = bitcast i32 %7283 to float
  %7285 = fadd fast float %7284, %7263
  %7286 = fmul fast float %7277, %7277
  %7287 = fmul fast float %7286, %7274
  %7288 = fmul fast float %7287, %7285
  %7289 = fdiv fast float 0x3FF0A00000000000, %7288
  %7290 = fmul fast float %7289, %7266
  %7291 = fmul fast float %7200, %7193
  %7292 = fmul fast float %7200, %7194
  %7293 = fmul fast float %7200, %7195
  %7294 = fmul fast float %7291, %7249
  %7295 = fmul fast float %7294, %7290
  %7296 = fmul fast float %7292, %7249
  %7297 = fmul fast float %7296, %7290
  %7298 = fmul fast float %7293, %7249
  %7299 = fmul fast float %7298, %7290
  %7300 = fmul fast float %7130, %7084
  %7301 = fmul fast float %7131, %7084
  %7302 = fmul fast float %7132, %7084
  %7303 = fsub fast float 1.000000e+00, %7048
  %7304 = bitcast float %7303 to i32
  %7305 = sitofp i32 %7304 to float
  %7306 = fmul fast float %7305, 5.000000e+00
  %7307 = fadd fast float %7306, 0xC1EFBF8940000000
  %7308 = fptosi float %7307 to i32
  %7309 = bitcast i32 %7308 to float
  %7310 = fmul fast float %7309, %5069
  %7311 = fmul fast float %7181, %7310
  %7312 = fmul fast float %7311, %6042
  %7313 = fmul fast float %7311, %6043
  %7314 = fmul fast float %7311, %6044
  %7315 = fadd fast float %7312, %7300
  %7316 = fadd fast float %7313, %7301
  %7317 = fadd fast float %7314, %7302
  %7318 = fmul fast float %7315, %7053
  %7319 = fmul fast float %7316, %7053
  %7320 = fmul fast float %7317, %7053
  %7321 = fmul fast float %7053, %7036
  %7322 = fmul fast float %7321, %7181
  %7323 = fmul fast float %7053, %7037
  %7324 = fmul fast float %7323, %7181
  %7325 = fmul fast float %7053, %7038
  %7326 = fmul fast float %7325, %7181
  %7327 = fadd fast float %7318, %7295
  %7328 = fadd fast float %7319, %7297
  %7329 = fadd fast float %7320, %7299
  %7330 = fmul fast float %7327, %7036
  %7331 = fmul fast float %7328, %7037
  %7332 = fmul fast float %7329, %7038
  %7333 = fadd fast float %7322, %6132
  %7334 = fmul fast float %7333, %5065
  %7335 = fadd fast float %7324, %6134
  %7336 = fmul fast float %7335, %5065
  %7337 = fadd fast float %7326, %6136
  %7338 = fmul fast float %7337, %5065
  %7339 = fadd fast float %7330, %6095
  %7340 = fmul fast float %7339, %5065
  %7341 = fadd fast float %7331, %6098
  %7342 = fmul fast float %7341, %5065
  %7343 = fadd fast float %7332, %6101
  %7344 = fmul fast float %7343, %5065
  br label %7345

; <label>:7345                                    ; preds = %7243, %6954, %6022
  %7346 = phi float [ %6096, %6022 ], [ %6096, %6954 ], [ %7340, %7243 ]
  %7347 = phi float [ %6099, %6022 ], [ %6099, %6954 ], [ %7342, %7243 ]
  %7348 = phi float [ %6102, %6022 ], [ %6102, %6954 ], [ %7344, %7243 ]
  %7349 = phi float [ %6133, %6022 ], [ %6133, %6954 ], [ %7334, %7243 ]
  %7350 = phi float [ %6135, %6022 ], [ %6135, %6954 ], [ %7336, %7243 ]
  %7351 = phi float [ %6137, %6022 ], [ %6137, %6954 ], [ %7338, %7243 ]
  %7352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7353 = extractvalue %dx.types.CBufRet.i32 %7352, 0
  %7354 = icmp eq i32 %7353, 0
  br i1 %7354, label %8129, label %7355

; <label>:7355                                    ; preds = %7345
  %7356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7357 = extractvalue %dx.types.CBufRet.f32 %7356, 2
  %7358 = extractvalue %dx.types.CBufRet.f32 %7356, 3
  %7359 = fmul fast float %7357, %100
  %7360 = fmul fast float %7358, %101
  %7361 = fptoui float %7359 to i32
  %7362 = fptoui float %7360 to i32
  %7363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7364 = extractvalue %dx.types.CBufRet.f32 %7363, 0
  %7365 = extractvalue %dx.types.CBufRet.f32 %7363, 2
  %7366 = extractvalue %dx.types.CBufRet.f32 %7363, 3
  %7367 = fadd fast float %91, -4.000000e+00
  %7368 = call float @dx.op.binary.f32(i32 35, float %7367, float 0.000000e+00)  ; FMax(a,b)
  %7369 = fadd fast float %7368, %7364
  %7370 = fmul fast float %7369, %7365
  %7371 = call float @dx.op.unary.f32(i32 23, float %7370)  ; Log(value)
  %7372 = fmul fast float %7371, %7366
  %7373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7374 = extractvalue %dx.types.CBufRet.f32 %7373, 2
  %7375 = fmul fast float %7372, %7374
  %7376 = call float @dx.op.unary.f32(i32 7, float %7375)  ; Saturate(value)
  %7377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7378 = extractvalue %dx.types.CBufRet.i32 %7377, 1
  %7379 = add i32 %7378, -1
  %7380 = uitofp i32 %7378 to float
  %7381 = fmul fast float %7380, %7376
  %7382 = fptoui float %7381 to i32
  %7383 = call i32 @dx.op.binary.i32(i32 40, i32 %7382, i32 %7379)  ; UMin(a,b)
  %7384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7385 = extractvalue %dx.types.CBufRet.i32 %7384, 2
  %7386 = extractvalue %dx.types.CBufRet.i32 %7384, 3
  %7387 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7362, i32 %7385, i32 %7361)  ; UMad(a,b,c)
  %7388 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7383, i32 %7386, i32 %7387)  ; UMad(a,b,c)
  %7389 = add nsw i32 %7353, -1
  %7390 = call i32 @dx.op.binary.i32(i32 37, i32 %7389, i32 0)  ; IMax(a,b)
  %7391 = call float @dx.op.binary.f32(i32 35, float %91, float 0.000000e+00)  ; FMax(a,b)
  %7392 = fptoui float %7391 to i32
  %7393 = lshr i32 %7392, 5
  %7394 = call i32 @dx.op.binary.i32(i32 40, i32 %7393, i32 8191)  ; UMin(a,b)
  %7395 = shl i32 %7394, 2
  %7396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7395, i32 undef)  ; BufferLoad(srv,index,wot)
  %7397 = extractvalue %dx.types.ResRet.i32 %7396, 0
  %7398 = lshr i32 %7397, 16
  %7399 = and i32 %7397, 65535
  %7400 = lshr i32 %7397, 21
  %7401 = lshr i32 %7399, 5
  %7402 = call i32 @dx.op.binary.i32(i32 40, i32 %7401, i32 %7390)  ; UMin(a,b)
  %7403 = icmp ugt i32 %7400, %7402
  br i1 %7403, label %8129, label %7404

; <label>:7404                                    ; preds = %7355
  br label %7405

; <label>:7405                                    ; preds = %8119, %7404
  %7406 = phi i32 [ %8126, %8119 ], [ %7400, %7404 ]
  %7407 = phi float [ %8120, %8119 ], [ %7346, %7404 ]
  %7408 = phi float [ %8121, %8119 ], [ %7347, %7404 ]
  %7409 = phi float [ %8122, %8119 ], [ %7348, %7404 ]
  %7410 = phi float [ %8123, %8119 ], [ %7349, %7404 ]
  %7411 = phi float [ %8124, %8119 ], [ %7350, %7404 ]
  %7412 = phi float [ %8125, %8119 ], [ %7351, %7404 ]
  %7413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7414 = extractvalue %dx.types.CBufRet.i32 %7413, 0
  %7415 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7388, i32 %7414, i32 %7406)  ; UMad(a,b,c)
  %7416 = shl i32 %7415, 2
  %7417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7416, i32 undef)  ; BufferLoad(srv,index,wot)
  %7418 = extractvalue %dx.types.ResRet.i32 %7417, 0
  %7419 = shl i32 %7406, 5
  %7420 = sub nsw i32 %7398, %7419
  %7421 = call i32 @dx.op.binary.i32(i32 37, i32 %7420, i32 0)  ; IMax(a,b)
  %7422 = call i32 @dx.op.binary.i32(i32 38, i32 %7421, i32 31)  ; IMin(a,b)
  %7423 = sub nsw i32 1, %7398
  %7424 = add nsw i32 %7423, %7399
  %7425 = call i32 @dx.op.binary.i32(i32 37, i32 %7424, i32 0)  ; IMax(a,b)
  %7426 = call i32 @dx.op.binary.i32(i32 38, i32 %7425, i32 32)  ; IMin(a,b)
  %7427 = and i32 %7426, 31
  %7428 = shl i32 -1, %7427
  %7429 = xor i32 %7428, -1
  %7430 = and i32 %7422, 31
  %7431 = shl i32 %7429, %7430
  %7432 = icmp eq i32 %7426, 32
  %7433 = select i1 %7432, i32 -1, i32 %7431
  %7434 = and i32 %7433, %7418
  %7435 = icmp eq i32 %7434, 0
  br i1 %7435, label %8119, label %7436

; <label>:7436                                    ; preds = %7405
  br label %7437

; <label>:7437                                    ; preds = %7572, %7436
  %7438 = phi i32 [ %7449, %7572 ], [ %7434, %7436 ]
  %7439 = phi float [ %7573, %7572 ], [ %7407, %7436 ]
  %7440 = phi float [ %7574, %7572 ], [ %7408, %7436 ]
  %7441 = phi float [ %7575, %7572 ], [ %7409, %7436 ]
  %7442 = phi float [ %7576, %7572 ], [ %7410, %7436 ]
  %7443 = phi float [ %7577, %7572 ], [ %7411, %7436 ]
  %7444 = phi float [ %7578, %7572 ], [ %7412, %7436 ]
  %7445 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7438)  ; FirstbitLo(value)
  %7446 = add i32 %7445, %7419
  %7447 = and i32 %7445, 31
  %7448 = shl i32 1, %7447
  %7449 = xor i32 %7448, %7438
  %7450 = mul i32 %7446, 112
  %7451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7450, i32 undef)  ; BufferLoad(srv,index,wot)
  %7452 = extractvalue %dx.types.ResRet.f32 %7451, 0
  %7453 = extractvalue %dx.types.ResRet.f32 %7451, 1
  %7454 = extractvalue %dx.types.ResRet.f32 %7451, 2
  %7455 = or i32 %7450, 12
  %7456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7455, i32 undef)  ; BufferLoad(srv,index,wot)
  %7457 = extractvalue %dx.types.ResRet.f32 %7456, 0
  %7458 = add i32 %7450, 16
  %7459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7458, i32 undef)  ; BufferLoad(srv,index,wot)
  %7460 = extractvalue %dx.types.ResRet.f32 %7459, 0
  %7461 = extractvalue %dx.types.ResRet.f32 %7459, 1
  %7462 = extractvalue %dx.types.ResRet.f32 %7459, 2
  %7463 = add i32 %7450, 28
  %7464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7463, i32 undef)  ; BufferLoad(srv,index,wot)
  %7465 = extractvalue %dx.types.ResRet.i32 %7464, 0
  %7466 = add i32 %7450, 44
  %7467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7466, i32 undef)  ; BufferLoad(srv,index,wot)
  %7468 = extractvalue %dx.types.ResRet.f32 %7467, 0
  %7469 = add i32 %7450, 48
  %7470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7469, i32 undef)  ; BufferLoad(srv,index,wot)
  %7471 = extractvalue %dx.types.ResRet.f32 %7470, 0
  %7472 = extractvalue %dx.types.ResRet.f32 %7470, 1
  %7473 = extractvalue %dx.types.ResRet.f32 %7470, 2
  %7474 = extractvalue %dx.types.ResRet.f32 %7470, 3
  %7475 = add i32 %7450, 64
  %7476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7475, i32 undef)  ; BufferLoad(srv,index,wot)
  %7477 = extractvalue %dx.types.ResRet.f32 %7476, 0
  %7478 = extractvalue %dx.types.ResRet.f32 %7476, 1
  %7479 = extractvalue %dx.types.ResRet.f32 %7476, 2
  %7480 = extractvalue %dx.types.ResRet.f32 %7476, 3
  %7481 = add i32 %7450, 80
  %7482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7481, i32 undef)  ; BufferLoad(srv,index,wot)
  %7483 = extractvalue %dx.types.ResRet.f32 %7482, 1
  %7484 = extractvalue %dx.types.ResRet.f32 %7482, 2
  %7485 = add i32 %7450, 92
  %7486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7485, i32 undef)  ; BufferLoad(srv,index,wot)
  %7487 = extractvalue %dx.types.ResRet.i32 %7486, 0
  %7488 = call float @dx.op.dot3.f32(i32 55, float %7452, float %7453, float %7454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7489 = select i1 %217, float %7483, float %7452
  %7490 = select i1 %217, float %7488, float %7453
  %7491 = select i1 %217, float %7484, float %7454
  %7492 = and i32 %7487, 65535
  %7493 = uitofp i32 %7492 to float
  %7494 = lshr i32 %7487, 16
  %7495 = uitofp i32 %7494 to float
  %7496 = and i32 %7465, 65535
  %7497 = and i32 %7465, 50331648
  %7498 = icmp slt i32 %7465, 0
  %7499 = icmp eq i32 %7497, 33554432
  %7500 = fsub fast float %7471, %155
  %7501 = fsub fast float %7472, %156
  %7502 = fsub fast float %7473, %157
  %7503 = call float @dx.op.dot3.f32(i32 55, float %7500, float %7501, float %7502, float %7500, float %7501, float %7502)  ; Dot3(ax,ay,az,bx,by,bz)
  %7504 = call float @dx.op.unary.f32(i32 24, float %7503)  ; Sqrt(value)
  %7505 = fdiv fast float 1.000000e+00, %7504
  %7506 = fmul fast float %7505, %7500
  %7507 = fmul fast float %7505, %7501
  %7508 = fmul fast float %7505, %7502
  %7509 = fadd fast float %7504, %7457
  %7510 = fdiv fast float 1.000000e+00, %7509
  %7511 = fmul float %7468, %7510
  %7512 = fmul float %7511, %7511
  %7513 = call float @dx.op.unary.f32(i32 7, float %7512)  ; Saturate(value)
  br i1 %7499, label %7514, label %7535

; <label>:7514                                    ; preds = %7437
  %7515 = fmul fast float %7479, %7460
  %7516 = fmul fast float %7479, %7461
  %7517 = fmul fast float %7479, %7462
  %7518 = fadd fast float %7500, %7515
  %7519 = fadd fast float %7501, %7516
  %7520 = fadd fast float %7502, %7517
  %7521 = call float @dx.op.dot3.f32(i32 55, float %7518, float %7519, float %7520, float %7518, float %7519, float %7520)  ; Dot3(ax,ay,az,bx,by,bz)
  %7522 = call float @dx.op.unary.f32(i32 25, float %7521)  ; Rsqrt(value)
  %7523 = fmul fast float %7522, %7518
  %7524 = fmul fast float %7522, %7519
  %7525 = fmul fast float %7522, %7520
  %7526 = fsub fast float %155, %7471
  %7527 = fsub fast float %156, %7472
  %7528 = fsub fast float %157, %7473
  %7529 = fsub fast float -0.000000e+00, %7526
  %7530 = fsub fast float -0.000000e+00, %7527
  %7531 = fsub fast float -0.000000e+00, %7528
  %7532 = call float @dx.op.dot3.f32(i32 55, float %7529, float %7530, float %7531, float %7460, float %7461, float %7462)  ; Dot3(ax,ay,az,bx,by,bz)
  %7533 = fcmp fast ogt float %7532, 0.000000e+00
  %7534 = uitofp i1 %7533 to float
  br label %7535

; <label>:7535                                    ; preds = %7514, %7437
  %7536 = phi float [ %7534, %7514 ], [ 1.000000e+00, %7437 ]
  %7537 = phi float [ %7523, %7514 ], [ %7506, %7437 ]
  %7538 = phi float [ %7524, %7514 ], [ %7507, %7437 ]
  %7539 = phi float [ %7525, %7514 ], [ %7508, %7437 ]
  %7540 = call float @dx.op.dot3.f32(i32 55, float %7460, float %7461, float %7462, float %7537, float %7538, float %7539)  ; Dot3(ax,ay,az,bx,by,bz)
  %7541 = fmul fast float %7540, %7540
  %7542 = call float @dx.op.unary.f32(i32 7, float %7541)  ; Saturate(value)
  %7543 = fsub fast float 1.000000e+00, %7542
  %7544 = fmul fast float %7543, 5.000000e-01
  %7545 = fcmp fast ogt float %7540, 0.000000e+00
  %7546 = fsub fast float 1.000000e+00, %7544
  %7547 = select i1 %7545, float %7544, float %7546
  %7548 = fmul fast float %7547, %7495
  %7549 = fadd fast float %7548, %7493
  %7550 = fmul fast float %7549, 0x3EF0001000000000
  %7551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %7550, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7552 = extractvalue %dx.types.ResRet.f32 %7551, 0
  %7553 = fmul fast float %7540, %7477
  %7554 = fadd fast float %7553, %7478
  %7555 = call float @dx.op.unary.f32(i32 7, float %7554)  ; Saturate(value)
  %7556 = select i1 %7499, float 1.000000e+00, float %7555
  %7557 = select i1 %7499, float %7555, float 1.000000e+00
  %7558 = fmul fast float %7504, %7474
  %7559 = fsub fast float 1.000000e+00, %7558
  %7560 = fmul fast float %7559, %7480
  %7561 = call float @dx.op.unary.f32(i32 7, float %7560)  ; Saturate(value)
  %7562 = fmul fast float %7561, %7557
  %7563 = fmul fast float %7562, 2.000000e+00
  %7564 = fsub fast float 3.000000e+00, %7563
  %7565 = fmul fast float %7552, %7536
  %7566 = fmul fast float %7562, %7562
  %7567 = fmul fast float %7566, %7565
  %7568 = fmul fast float %7567, %7564
  %7569 = call float @dx.op.binary.f32(i32 36, float %7568, float %7568)  ; FMin(a,b)
  %7570 = call float @dx.op.binary.f32(i32 36, float %7568, float %7569)  ; FMin(a,b)
  %7571 = fcmp fast ogt float %7570, 0.000000e+00
  br i1 %7571, label %7580, label %7572, !dx.controlflow.hints !117

; <label>:7572                                    ; preds = %8072, %7680, %7535
  %7573 = phi float [ %7439, %7680 ], [ %7439, %7535 ], [ %8115, %8072 ]
  %7574 = phi float [ %7440, %7680 ], [ %7440, %7535 ], [ %8116, %8072 ]
  %7575 = phi float [ %7441, %7680 ], [ %7441, %7535 ], [ %8117, %8072 ]
  %7576 = phi float [ %7442, %7680 ], [ %7442, %7535 ], [ %8109, %8072 ]
  %7577 = phi float [ %7443, %7680 ], [ %7443, %7535 ], [ %8110, %8072 ]
  %7578 = phi float [ %7444, %7680 ], [ %7444, %7535 ], [ %8111, %8072 ]
  %7579 = icmp eq i32 %7438, %7448
  br i1 %7579, label %8118, label %7437

; <label>:7580                                    ; preds = %7535
  %7581 = icmp eq i32 %7496, 255
  br i1 %7581, label %7680, label %7582, !dx.controlflow.hints !118

; <label>:7582                                    ; preds = %7580
  %7583 = mul nuw nsw i32 %7496, 176
  %7584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7583, i32 undef)  ; BufferLoad(srv,index,wot)
  %7585 = extractvalue %dx.types.ResRet.f32 %7584, 0
  %7586 = extractvalue %dx.types.ResRet.f32 %7584, 1
  %7587 = extractvalue %dx.types.ResRet.f32 %7584, 2
  %7588 = extractvalue %dx.types.ResRet.f32 %7584, 3
  %7589 = add nuw nsw i32 %7583, 16
  %7590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7589, i32 undef)  ; BufferLoad(srv,index,wot)
  %7591 = extractvalue %dx.types.ResRet.f32 %7590, 0
  %7592 = extractvalue %dx.types.ResRet.f32 %7590, 1
  %7593 = add nuw nsw i32 %7583, 32
  %7594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7593, i32 undef)  ; BufferLoad(srv,index,wot)
  %7595 = extractvalue %dx.types.ResRet.f32 %7594, 0
  %7596 = extractvalue %dx.types.ResRet.f32 %7594, 1
  %7597 = extractvalue %dx.types.ResRet.f32 %7594, 2
  %7598 = add nuw nsw i32 %7583, 48
  %7599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7598, i32 undef)  ; BufferLoad(srv,index,wot)
  %7600 = extractvalue %dx.types.ResRet.f32 %7599, 0
  %7601 = extractvalue %dx.types.ResRet.f32 %7599, 1
  %7602 = extractvalue %dx.types.ResRet.f32 %7599, 2
  %7603 = extractvalue %dx.types.ResRet.f32 %7599, 3
  %7604 = add nuw nsw i32 %7583, 64
  %7605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7604, i32 undef)  ; BufferLoad(srv,index,wot)
  %7606 = extractvalue %dx.types.ResRet.f32 %7605, 0
  %7607 = extractvalue %dx.types.ResRet.f32 %7605, 1
  %7608 = extractvalue %dx.types.ResRet.f32 %7605, 2
  %7609 = extractvalue %dx.types.ResRet.f32 %7605, 3
  %7610 = add nuw nsw i32 %7583, 80
  %7611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7610, i32 undef)  ; BufferLoad(srv,index,wot)
  %7612 = extractvalue %dx.types.ResRet.f32 %7611, 0
  %7613 = extractvalue %dx.types.ResRet.f32 %7611, 1
  %7614 = extractvalue %dx.types.ResRet.f32 %7611, 2
  %7615 = extractvalue %dx.types.ResRet.f32 %7611, 3
  %7616 = add nuw nsw i32 %7583, 96
  %7617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7616, i32 undef)  ; BufferLoad(srv,index,wot)
  %7618 = extractvalue %dx.types.ResRet.f32 %7617, 0
  %7619 = extractvalue %dx.types.ResRet.f32 %7617, 1
  %7620 = extractvalue %dx.types.ResRet.f32 %7617, 2
  %7621 = extractvalue %dx.types.ResRet.f32 %7617, 3
  %7622 = bitcast float %7592 to i32
  %7623 = fmul fast float %7597, %107
  %7624 = fmul fast float %7597, %108
  %7625 = fmul fast float %7597, %109
  %7626 = fadd fast float %7623, %155
  %7627 = fadd fast float %7624, %156
  %7628 = fadd fast float %7625, %157
  %7629 = fmul fast float %7626, %7600
  %7630 = call float @dx.op.tertiary.f32(i32 46, float %7627, float %7606, float %7629)  ; FMad(a,b,c)
  %7631 = call float @dx.op.tertiary.f32(i32 46, float %7628, float %7612, float %7630)  ; FMad(a,b,c)
  %7632 = fadd fast float %7631, %7618
  %7633 = fmul fast float %7626, %7601
  %7634 = call float @dx.op.tertiary.f32(i32 46, float %7627, float %7607, float %7633)  ; FMad(a,b,c)
  %7635 = call float @dx.op.tertiary.f32(i32 46, float %7628, float %7613, float %7634)  ; FMad(a,b,c)
  %7636 = fadd fast float %7635, %7619
  %7637 = fmul fast float %7626, %7602
  %7638 = call float @dx.op.tertiary.f32(i32 46, float %7627, float %7608, float %7637)  ; FMad(a,b,c)
  %7639 = call float @dx.op.tertiary.f32(i32 46, float %7628, float %7614, float %7638)  ; FMad(a,b,c)
  %7640 = fadd fast float %7639, %7620
  %7641 = fmul fast float %7626, %7603
  %7642 = call float @dx.op.tertiary.f32(i32 46, float %7627, float %7609, float %7641)  ; FMad(a,b,c)
  %7643 = call float @dx.op.tertiary.f32(i32 46, float %7628, float %7615, float %7642)  ; FMad(a,b,c)
  %7644 = fadd fast float %7643, %7621
  %7645 = fdiv fast float %7632, %7644
  %7646 = fdiv fast float %7636, %7644
  %7647 = fdiv fast float %7640, %7644
  %7648 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7647)  ; FMax(a,b)
  %7649 = fmul fast float %228, 0x401921FB60000000
  %7650 = call float @dx.op.unary.f32(i32 13, float %7649)  ; Sin(value)
  %7651 = call float @dx.op.unary.f32(i32 12, float %7649)  ; Cos(value)
  %7652 = fsub fast float -0.000000e+00, %7650
  %7653 = fmul fast float %7587, 5.000000e-01
  %7654 = call float @dx.op.dot2.f32(i32 54, float %228, float %228, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7655 = call float @dx.op.unary.f32(i32 22, float %7654)  ; Frc(value)
  %7656 = fmul fast float %7655, 0x404A7DD040000000
  %7657 = call float @dx.op.unary.f32(i32 22, float %7656)  ; Frc(value)
  %7658 = fmul fast float %7657, %7596
  %7659 = fadd fast float %7658, %7653
  %7660 = call float @dx.op.tertiary.f32(i32 46, float %7659, float %7652, float 0.000000e+00)  ; FMad(a,b,c)
  %7661 = call float @dx.op.tertiary.f32(i32 46, float %7659, float %7651, float 0.000000e+00)  ; FMad(a,b,c)
  %7662 = fadd fast float %7660, %7645
  %7663 = fadd fast float %7661, %7646
  %7664 = fmul fast float %7662, %7591
  %7665 = fmul fast float %7663, %7591
  %7666 = call float @dx.op.binary.f32(i32 35, float %7664, float %7587)  ; FMax(a,b)
  %7667 = call float @dx.op.binary.f32(i32 35, float %7665, float %7587)  ; FMax(a,b)
  %7668 = call float @dx.op.binary.f32(i32 36, float %7666, float %7588)  ; FMin(a,b)
  %7669 = call float @dx.op.binary.f32(i32 36, float %7667, float %7588)  ; FMin(a,b)
  %7670 = fadd fast float %7668, %7585
  %7671 = fadd fast float %7669, %7586
  %7672 = uitofp i32 %7622 to float
  %7673 = fadd fast float %7648, %7595
  %7674 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %7670, float %7671, float %7672, float undef, i32 0, i32 0, i32 undef, float %7673)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7675 = extractvalue %dx.types.ResRet.f32 %7674, 0
  %7676 = fadd fast float %7675, -1.000000e+00
  %7677 = fmul fast float %7676, %7556
  %7678 = fadd fast float %7677, 1.000000e+00
  %7679 = fmul fast float %7678, %7568
  br label %7680

; <label>:7680                                    ; preds = %7582, %7580
  %7681 = phi float [ %7679, %7582 ], [ %7568, %7580 ]
  %7682 = call float @dx.op.binary.f32(i32 36, float %7681, float %7681)  ; FMin(a,b)
  %7683 = call float @dx.op.binary.f32(i32 36, float %7681, float %7682)  ; FMin(a,b)
  %7684 = fcmp fast ogt float %7683, 0.000000e+00
  br i1 %7684, label %7685, label %7572, !dx.controlflow.hints !119

; <label>:7685                                    ; preds = %7680
  %7686 = fmul fast float %7681, %7489
  %7687 = fmul fast float %7681, %7490
  %7688 = fmul fast float %7681, %7491
  %7689 = fsub fast float %7473, %5499
  %7690 = fcmp fast ogt float %7689, 0.000000e+00
  %7691 = fsub fast float %157, %5499
  %7692 = fcmp fast ogt float %7691, 0.000000e+00
  %7693 = xor i1 %7692, %7690
  %7694 = fsub fast float %5499, %7473
  %7695 = fmul fast float %7694, 2.000000e+00
  %7696 = fadd fast float %7695, %7473
  %7697 = select i1 %7693, float %7473, float %7696
  %7698 = fsub fast float %7697, %157
  %7699 = call float @dx.op.dot3.f32(i32 55, float %7500, float %7501, float %7698, float %7500, float %7501, float %7698)  ; Dot3(ax,ay,az,bx,by,bz)
  %7700 = call float @dx.op.unary.f32(i32 25, float %7699)  ; Rsqrt(value)
  %7701 = fmul fast float %7700, %7500
  %7702 = fmul fast float %7700, %7501
  %7703 = fmul fast float %7700, %7698
  %7704 = fsub fast float %5499, %157
  %7705 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7704)  ; Dot3(ax,ay,az,bx,by,bz)
  %7706 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7701, float %7702, float %7703)  ; Dot3(ax,ay,az,bx,by,bz)
  %7707 = fdiv fast float 1.000000e+00, %7706
  %7708 = fmul fast float %7707, %7705
  %7709 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7691, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7710 = fcmp fast ogt float %7709, 0.000000e+00
  %7711 = fcmp fast olt float %7709, 0.000000e+00
  %7712 = zext i1 %7710 to i32
  %7713 = zext i1 %7711 to i32
  %7714 = sub nsw i32 %7712, %7713
  %7715 = sitofp i32 %7714 to float
  %7716 = fsub fast float %7697, %5499
  %7717 = call float @dx.op.dot3.f32(i32 55, float %7500, float %7501, float %7716, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7718 = fcmp fast ogt float %7717, 0.000000e+00
  %7719 = fcmp fast olt float %7717, 0.000000e+00
  %7720 = zext i1 %7718 to i32
  %7721 = zext i1 %7719 to i32
  %7722 = sub nsw i32 %7720, %7721
  %7723 = sitofp i32 %7722 to float
  %7724 = fcmp fast une float %7715, %7723
  br i1 %7724, label %7725, label %7735

; <label>:7725                                    ; preds = %7685
  %7726 = fmul fast float %7708, %7703
  %7727 = fmul fast float %7708, %7702
  %7728 = fmul fast float %7708, %7701
  %7729 = fmul fast float %7728, %7728
  %7730 = fmul fast float %7727, %7727
  %7731 = fadd fast float %7729, %7730
  %7732 = fmul fast float %7726, %7726
  %7733 = fadd fast float %7731, %7732
  %7734 = call float @dx.op.unary.f32(i32 24, float %7733)  ; Sqrt(value)
  br label %7747

; <label>:7735                                    ; preds = %7685
  %7736 = icmp slt i32 %7714, 0
  br i1 %7736, label %7737, label %7747

; <label>:7737                                    ; preds = %7735
  %7738 = fsub fast float %155, %7471
  %7739 = fsub fast float %156, %7472
  %7740 = fsub fast float %157, %7697
  %7741 = fmul fast float %7738, %7738
  %7742 = fmul fast float %7739, %7739
  %7743 = fadd fast float %7741, %7742
  %7744 = fmul fast float %7740, %7740
  %7745 = fadd fast float %7743, %7744
  %7746 = call float @dx.op.unary.f32(i32 24, float %7745)  ; Sqrt(value)
  br label %7747

; <label>:7747                                    ; preds = %7737, %7735, %7725
  %7748 = phi float [ %7734, %7725 ], [ %7746, %7737 ], [ 0.000000e+00, %7735 ]
  %7749 = and i1 %7692, %7690
  %7750 = fsub fast float -0.000000e+00, %7748
  %7751 = select i1 %7749, float -0.000000e+00, float %7750
  %7752 = fmul fast float %5500, 0x3FF7154760000000
  %7753 = fmul fast float %7752, %7751
  %7754 = fmul fast float %5501, 0x3FF7154760000000
  %7755 = fmul fast float %7754, %7751
  %7756 = fmul fast float %5502, 0x3FF7154760000000
  %7757 = fmul fast float %7756, %7751
  %7758 = call float @dx.op.unary.f32(i32 21, float %7753)  ; Exp(value)
  %7759 = call float @dx.op.unary.f32(i32 21, float %7755)  ; Exp(value)
  %7760 = call float @dx.op.unary.f32(i32 21, float %7757)  ; Exp(value)
  %7761 = call float @dx.op.unary.f32(i32 7, float %7758)  ; Saturate(value)
  %7762 = call float @dx.op.unary.f32(i32 7, float %7759)  ; Saturate(value)
  %7763 = call float @dx.op.unary.f32(i32 7, float %7760)  ; Saturate(value)
  %7764 = fmul fast float %7686, %7761
  %7765 = fmul fast float %7687, %7762
  %7766 = fmul fast float %7688, %7763
  %7767 = fsub fast float %7506, %5699
  %7768 = fsub fast float %7507, %5698
  %7769 = fsub fast float %7508, %5697
  %7770 = call float @dx.op.dot3.f32(i32 55, float %7767, float %7768, float %7769, float %7767, float %7768, float %7769)  ; Dot3(ax,ay,az,bx,by,bz)
  %7771 = call float @dx.op.unary.f32(i32 25, float %7770)  ; Rsqrt(value)
  %7772 = fmul fast float %7771, %7767
  %7773 = fmul fast float %7771, %7768
  %7774 = fmul fast float %7771, %7769
  %7775 = call float @dx.op.dot3.f32(i32 55, float %7506, float %7507, float %7508, float %5706, float %5707, float %5708)  ; Dot3(ax,ay,az,bx,by,bz)
  %7776 = call float @dx.op.dot3.f32(i32 55, float %5696, float %5695, float %5694, float %7772, float %7773, float %7774)  ; Dot3(ax,ay,az,bx,by,bz)
  %7777 = call float @dx.op.unary.f32(i32 7, float %7775)  ; Saturate(value)
  %7778 = fmul fast float %7777, %7513
  %7779 = fmul fast float %7777, %7777
  %7780 = fmul fast float %7779, %5727
  %7781 = call float @dx.op.unary.f32(i32 7, float %7780)  ; Saturate(value)
  %7782 = fmul fast float %7778, %7781
  %7783 = bitcast float %7503 to i32
  %7784 = ashr i32 %7783, 1
  %7785 = sub nsw i32 1597463007, %7784
  %7786 = bitcast i32 %7785 to float
  %7787 = fmul fast float %7786, %7500
  %7788 = fmul fast float %7786, %7501
  %7789 = fmul fast float %7786, %7502
  %7790 = fsub fast float %7787, %5699
  %7791 = fsub fast float %7788, %5698
  %7792 = fsub fast float %7789, %5697
  %7793 = call float @dx.op.dot3.f32(i32 55, float %7790, float %7791, float %7792, float %7790, float %7791, float %7792)  ; Dot3(ax,ay,az,bx,by,bz)
  %7794 = call float @dx.op.unary.f32(i32 25, float %7793)  ; Rsqrt(value)
  %7795 = fmul fast float %7790, %7794
  %7796 = fmul fast float %7791, %7794
  %7797 = fmul fast float %7792, %7794
  %7798 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5707, float %5708, float %7795, float %7796, float %7797)  ; Dot3(ax,ay,az,bx,by,bz)
  %7799 = fmul fast float %7798, %7798
  %7800 = call float @dx.op.unary.f32(i32 6, float %7775)  ; FAbs(value)
  %7801 = call float @dx.op.binary.f32(i32 35, float %6110, float 0x3F847AE140000000)  ; FMax(a,b)
  %7802 = fmul fast float %7801, %7801
  %7803 = fmul fast float %7802, %7802
  %7804 = fsub fast float 1.000000e+00, %7803
  %7805 = fmul fast float %5714, %5714
  %7806 = fmul fast float %7805, %7804
  %7807 = fadd fast float %7806, %7803
  %7808 = bitcast float %7807 to i32
  %7809 = ashr i32 %7808, 1
  %7810 = add nsw i32 %7809, 532487669
  %7811 = bitcast i32 %7810 to float
  %7812 = fadd fast float %7811, %5714
  %7813 = fmul fast float %7803, %7799
  %7814 = fsub fast float 1.000000e+00, %7799
  %7815 = fadd fast float %7814, %7813
  %7816 = fmul fast float %7800, %7800
  %7817 = fmul fast float %7816, %7804
  %7818 = fadd fast float %7817, %7803
  %7819 = bitcast float %7818 to i32
  %7820 = ashr i32 %7819, 1
  %7821 = add nsw i32 %7820, 532487669
  %7822 = bitcast i32 %7821 to float
  %7823 = fadd fast float %7822, %7800
  %7824 = fmul fast float %7815, %7815
  %7825 = fmul fast float %7824, %7812
  %7826 = fmul fast float %7825, %7823
  %7827 = fdiv fast float 1.000000e+00, %7826
  %7828 = bitcast float %7803 to i32
  %7829 = sitofp i32 %7828 to float
  %7830 = fmul fast float %7829, 0x3FE7F73180000000
  %7831 = fadd fast float %7830, 0x41AFE27C40000000
  %7832 = fptosi float %7831 to i32
  %7833 = bitcast i32 %7832 to float
  %7834 = fmul fast float %7468, 0x3FD80E9D60000000
  %7835 = fmul fast float %7834, %7786
  %7836 = fadd fast float %7833, %7835
  %7837 = bitcast float %7836 to i32
  %7838 = sub nsw i32 2129859010, %7837
  %7839 = bitcast i32 %7838 to float
  %7840 = fmul fast float %7803, %7827
  %7841 = fmul fast float %7840, %7833
  %7842 = fmul fast float %7841, %7839
  %7843 = fmul fast float %5972, 0x3FF9999980000000
  %7844 = fsub fast float 5.000000e+00, %7843
  %7845 = call float @dx.op.unary.f32(i32 6, float %7776)  ; FAbs(value)
  %7846 = fsub fast float 1.000000e+00, %7845
  %7847 = fmul fast float %5972, 0x41D9660740000000
  %7848 = fadd fast float %7847, 0xC1EFBF8940000000
  %7849 = bitcast float %7846 to i32
  %7850 = sitofp i32 %7849 to float
  %7851 = fmul fast float %7850, %7844
  %7852 = fadd fast float %7848, %7851
  %7853 = fptosi float %7852 to i32
  %7854 = bitcast i32 %7853 to float
  %7855 = fsub fast float 1.000000e+00, %5703
  %7856 = fsub fast float 1.000000e+00, %5704
  %7857 = fsub fast float 1.000000e+00, %5712
  %7858 = fmul fast float %7854, %7855
  %7859 = fmul fast float %7854, %7856
  %7860 = fmul fast float %7854, %7857
  %7861 = fadd fast float %7858, %5703
  %7862 = fadd fast float %7859, %5704
  %7863 = fadd fast float %7860, %5712
  br i1 %5995, label %7864, label %7887

; <label>:7864                                    ; preds = %7747
  %7865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5068, float %7845, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7866 = extractvalue %dx.types.ResRet.f32 %7865, 0
  %7867 = extractvalue %dx.types.ResRet.f32 %7865, 1
  %7868 = extractvalue %dx.types.ResRet.f32 %7865, 2
  %7869 = fadd fast float %7866, -5.000000e-01
  %7870 = fadd fast float %7867, -5.000000e-01
  %7871 = fadd fast float %7868, -5.000000e-01
  %7872 = fmul fast float %5703, 4.000000e+00
  %7873 = fmul fast float %7872, %7855
  %7874 = fmul fast float %7873, %7869
  %7875 = fmul fast float %5704, 4.000000e+00
  %7876 = fmul fast float %7875, %7856
  %7877 = fmul fast float %7876, %7870
  %7878 = fmul fast float %5712, 4.000000e+00
  %7879 = fmul fast float %7878, %7857
  %7880 = fmul fast float %7879, %7871
  %7881 = fadd fast float %7874, %7861
  %7882 = fadd fast float %7877, %7862
  %7883 = fadd fast float %7880, %7863
  %7884 = call float @dx.op.unary.f32(i32 7, float %7881)  ; Saturate(value)
  %7885 = call float @dx.op.unary.f32(i32 7, float %7882)  ; Saturate(value)
  %7886 = call float @dx.op.unary.f32(i32 7, float %7883)  ; Saturate(value)
  br label %7887

; <label>:7887                                    ; preds = %7864, %7747
  %7888 = phi float [ %7884, %7864 ], [ %7861, %7747 ]
  %7889 = phi float [ %7885, %7864 ], [ %7862, %7747 ]
  %7890 = phi float [ %7886, %7864 ], [ %7863, %7747 ]
  %7891 = fmul fast float %7775, 9.843750e-01
  %7892 = fadd fast float %7891, 7.812500e-03
  %7893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7892, float %5976, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7894 = extractvalue %dx.types.ResRet.f32 %7893, 0
  %7895 = extractvalue %dx.types.ResRet.f32 %7893, 1
  %7896 = extractvalue %dx.types.ResRet.f32 %7893, 2
  %7897 = extractvalue %dx.types.ResRet.f32 %7893, 3
  %7898 = fsub fast float %7896, %7894
  %7899 = fsub fast float %7897, %7895
  %7900 = fmul fast float %7898, %5982
  %7901 = fmul fast float %7899, %5982
  %7902 = fadd fast float %7900, %7894
  %7903 = fadd fast float %7901, %7895
  %7904 = fmul fast float %7902, %5703
  %7905 = fmul fast float %7902, %5704
  %7906 = fmul fast float %7902, %5712
  %7907 = fadd fast float %7904, %7903
  %7908 = fadd fast float %7905, %7903
  %7909 = fadd fast float %7906, %7903
  br i1 %5995, label %7910, label %7933

; <label>:7910                                    ; preds = %7887
  %7911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5068, float %7775, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7912 = extractvalue %dx.types.ResRet.f32 %7911, 0
  %7913 = extractvalue %dx.types.ResRet.f32 %7911, 1
  %7914 = extractvalue %dx.types.ResRet.f32 %7911, 2
  %7915 = fadd fast float %7912, -5.000000e-01
  %7916 = fadd fast float %7913, -5.000000e-01
  %7917 = fadd fast float %7914, -5.000000e-01
  %7918 = fmul fast float %5703, 4.000000e+00
  %7919 = fmul fast float %7918, %7855
  %7920 = fmul fast float %7919, %7915
  %7921 = fmul fast float %5704, 4.000000e+00
  %7922 = fmul fast float %7921, %7856
  %7923 = fmul fast float %7922, %7916
  %7924 = fmul fast float %5712, 4.000000e+00
  %7925 = fmul fast float %7924, %7857
  %7926 = fmul fast float %7925, %7917
  %7927 = fadd fast float %7920, %7907
  %7928 = fadd fast float %7923, %7908
  %7929 = fadd fast float %7926, %7909
  %7930 = call float @dx.op.unary.f32(i32 7, float %7927)  ; Saturate(value)
  %7931 = call float @dx.op.unary.f32(i32 7, float %7928)  ; Saturate(value)
  %7932 = call float @dx.op.unary.f32(i32 7, float %7929)  ; Saturate(value)
  br label %7933

; <label>:7933                                    ; preds = %7910, %7887
  %7934 = phi float [ %7930, %7910 ], [ %7907, %7887 ]
  %7935 = phi float [ %7931, %7910 ], [ %7908, %7887 ]
  %7936 = phi float [ %7932, %7910 ], [ %7909, %7887 ]
  %7937 = call float @dx.op.binary.f32(i32 35, float %7935, float %7936)  ; FMax(a,b)
  %7938 = call float @dx.op.binary.f32(i32 35, float %7934, float %7937)  ; FMax(a,b)
  %7939 = fsub fast float 1.000000e+00, %7938
  %7940 = call float @dx.op.binary.f32(i32 35, float %7800, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7941 = fdiv fast float %4418, %7940
  %7942 = fmul fast float %6050, %7941
  %7943 = fmul fast float %6052, %7941
  %7944 = fmul fast float %6054, %7941
  %7945 = call float @dx.op.unary.f32(i32 21, float %7942)  ; Exp(value)
  %7946 = call float @dx.op.unary.f32(i32 21, float %7943)  ; Exp(value)
  %7947 = call float @dx.op.unary.f32(i32 21, float %7944)  ; Exp(value)
  %7948 = call float @dx.op.unary.f32(i32 7, float %7945)  ; Saturate(value)
  %7949 = call float @dx.op.unary.f32(i32 7, float %7946)  ; Saturate(value)
  %7950 = call float @dx.op.unary.f32(i32 7, float %7947)  ; Saturate(value)
  %7951 = select i1 %6047, float %7948, float 0.000000e+00
  %7952 = select i1 %6048, float %7949, float 0.000000e+00
  %7953 = select i1 %6049, float %7950, float 0.000000e+00
  %7954 = fsub fast float -0.000000e+00, %5706
  %7955 = fsub fast float -0.000000e+00, %5707
  %7956 = fsub fast float -0.000000e+00, %5708
  %7957 = call float @dx.op.dot3.f32(i32 55, float %7506, float %7507, float %7508, float %7954, float %7955, float %7956)  ; Dot3(ax,ay,az,bx,by,bz)
  %7958 = call float @dx.op.unary.f32(i32 7, float %7957)  ; Saturate(value)
  %7959 = fmul fast float %7958, %7513
  %7960 = fmul fast float %7958, 9.843750e-01
  %7961 = fadd fast float %7960, 7.812500e-03
  %7962 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7961, float %5976, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7963 = extractvalue %dx.types.ResRet.f32 %7962, 0
  %7964 = extractvalue %dx.types.ResRet.f32 %7962, 1
  %7965 = extractvalue %dx.types.ResRet.f32 %7962, 2
  %7966 = extractvalue %dx.types.ResRet.f32 %7962, 3
  %7967 = fsub fast float %7965, %7963
  %7968 = fsub fast float %7966, %7964
  %7969 = fmul fast float %7967, %5982
  %7970 = fmul fast float %7968, %5982
  %7971 = fadd fast float %7969, %7963
  %7972 = fadd fast float %7970, %7964
  %7973 = fmul fast float %7971, %5703
  %7974 = fmul fast float %7971, %5704
  %7975 = fmul fast float %7971, %5712
  %7976 = fadd fast float %7973, %7972
  %7977 = fadd fast float %7974, %7972
  %7978 = fadd fast float %7975, %7972
  br i1 %5995, label %7979, label %8002

; <label>:7979                                    ; preds = %7933
  %7980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5068, float %7958, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7981 = extractvalue %dx.types.ResRet.f32 %7980, 0
  %7982 = extractvalue %dx.types.ResRet.f32 %7980, 1
  %7983 = extractvalue %dx.types.ResRet.f32 %7980, 2
  %7984 = fadd fast float %7981, -5.000000e-01
  %7985 = fadd fast float %7982, -5.000000e-01
  %7986 = fadd fast float %7983, -5.000000e-01
  %7987 = fmul fast float %5703, 4.000000e+00
  %7988 = fmul fast float %7987, %7855
  %7989 = fmul fast float %7988, %7984
  %7990 = fmul fast float %5704, 4.000000e+00
  %7991 = fmul fast float %7990, %7856
  %7992 = fmul fast float %7991, %7985
  %7993 = fmul fast float %5712, 4.000000e+00
  %7994 = fmul fast float %7993, %7857
  %7995 = fmul fast float %7994, %7986
  %7996 = fadd fast float %7989, %7976
  %7997 = fadd fast float %7992, %7977
  %7998 = fadd fast float %7995, %7978
  %7999 = call float @dx.op.unary.f32(i32 7, float %7996)  ; Saturate(value)
  %8000 = call float @dx.op.unary.f32(i32 7, float %7997)  ; Saturate(value)
  %8001 = call float @dx.op.unary.f32(i32 7, float %7998)  ; Saturate(value)
  br label %8002

; <label>:8002                                    ; preds = %7979, %7933
  %8003 = phi float [ %7999, %7979 ], [ %7976, %7933 ]
  %8004 = phi float [ %8000, %7979 ], [ %7977, %7933 ]
  %8005 = phi float [ %8001, %7979 ], [ %7978, %7933 ]
  %8006 = call float @dx.op.binary.f32(i32 35, float %8004, float %8005)  ; FMax(a,b)
  %8007 = call float @dx.op.binary.f32(i32 35, float %8003, float %8006)  ; FMax(a,b)
  %8008 = fsub fast float 1.000000e+00, %8007
  %8009 = fmul fast float %6110, %6115
  %8010 = fadd fast float %6117, %8009
  %8011 = call float @dx.op.unary.f32(i32 7, float %8010)  ; Saturate(value)
  %8012 = fsub fast float %7787, %5720
  %8013 = fsub fast float %7788, %5721
  %8014 = fsub fast float %7789, %5722
  %8015 = call float @dx.op.dot3.f32(i32 55, float %8012, float %8013, float %8014, float %8012, float %8013, float %8014)  ; Dot3(ax,ay,az,bx,by,bz)
  %8016 = call float @dx.op.unary.f32(i32 25, float %8015)  ; Rsqrt(value)
  %8017 = fmul fast float %8012, %8016
  %8018 = fmul fast float %8013, %8016
  %8019 = fmul fast float %8014, %8016
  %8020 = call float @dx.op.dot3.f32(i32 55, float %7954, float %7955, float %7956, float %8017, float %8018, float %8019)  ; Dot3(ax,ay,az,bx,by,bz)
  %8021 = fmul fast float %8020, %8020
  %8022 = call float @dx.op.unary.f32(i32 6, float %7958)  ; FAbs(value)
  %8023 = call float @dx.op.binary.f32(i32 35, float %8011, float 0x3F847AE140000000)  ; FMax(a,b)
  %8024 = fmul fast float %8023, %8023
  %8025 = fmul fast float %8024, %8024
  %8026 = fsub fast float 1.000000e+00, %8025
  %8027 = fmul fast float %7805, %8026
  %8028 = fadd fast float %8027, %8025
  %8029 = bitcast float %8028 to i32
  %8030 = ashr i32 %8029, 1
  %8031 = add nsw i32 %8030, 532487669
  %8032 = bitcast i32 %8031 to float
  %8033 = fadd fast float %8032, %5714
  %8034 = fmul fast float %8025, %8021
  %8035 = fsub fast float 1.000000e+00, %8021
  %8036 = fadd fast float %8035, %8034
  %8037 = fmul fast float %8022, %8022
  %8038 = fmul fast float %8037, %8026
  %8039 = fadd fast float %8038, %8025
  %8040 = bitcast float %8039 to i32
  %8041 = ashr i32 %8040, 1
  %8042 = add nsw i32 %8041, 532487669
  %8043 = bitcast i32 %8042 to float
  %8044 = fadd fast float %8043, %8022
  %8045 = fmul fast float %8036, %8036
  %8046 = fmul fast float %8045, %8033
  %8047 = fmul fast float %8046, %8044
  %8048 = fdiv fast float 1.000000e+00, %8047
  %8049 = bitcast float %8025 to i32
  %8050 = sitofp i32 %8049 to float
  %8051 = fmul fast float %8050, 0x3FE7F73180000000
  %8052 = fadd fast float %8051, 0x41AFE27C40000000
  %8053 = fptosi float %8052 to i32
  %8054 = bitcast i32 %8053 to float
  %8055 = fadd fast float %8054, %7835
  %8056 = bitcast float %8055 to i32
  %8057 = sub nsw i32 2129859010, %8056
  %8058 = bitcast i32 %8057 to float
  %8059 = fmul fast float %8025, %8048
  %8060 = fmul fast float %8059, %8054
  %8061 = fmul fast float %8060, %8058
  br i1 %7498, label %8062, label %8072

; <label>:8062                                    ; preds = %8002
  %8063 = fmul fast float %7959, %7951
  %8064 = fmul fast float %7959, %7952
  %8065 = fmul fast float %7959, %7953
  %8066 = fmul fast float %8063, %8008
  %8067 = fmul fast float %8066, %8061
  %8068 = fmul fast float %8064, %8008
  %8069 = fmul fast float %8068, %8061
  %8070 = fmul fast float %8065, %8008
  %8071 = fmul fast float %8070, %8061
  br label %8072

; <label>:8072                                    ; preds = %8062, %8002
  %8073 = phi float [ %8067, %8062 ], [ 0.000000e+00, %8002 ]
  %8074 = phi float [ %8069, %8062 ], [ 0.000000e+00, %8002 ]
  %8075 = phi float [ %8071, %8062 ], [ 0.000000e+00, %8002 ]
  %8076 = fmul fast float %7888, %7842
  %8077 = fmul fast float %7889, %7842
  %8078 = fmul fast float %7890, %7842
  %8079 = fsub fast float 1.000000e+00, %7776
  %8080 = bitcast float %8079 to i32
  %8081 = sitofp i32 %8080 to float
  %8082 = fmul fast float %8081, 5.000000e+00
  %8083 = fadd fast float %8082, 0xC1EFBF8940000000
  %8084 = fptosi float %8083 to i32
  %8085 = bitcast i32 %8084 to float
  %8086 = fmul fast float %8085, %5069
  %8087 = fmul fast float %7939, %8086
  %8088 = fmul fast float %8087, %6042
  %8089 = fmul fast float %8087, %6043
  %8090 = fmul fast float %8087, %6044
  %8091 = fadd fast float %8088, %8076
  %8092 = fadd fast float %8089, %8077
  %8093 = fadd fast float %8090, %8078
  %8094 = fmul fast float %8091, %7782
  %8095 = fmul fast float %8092, %7782
  %8096 = fmul fast float %8093, %7782
  %8097 = fadd fast float %8094, %8073
  %8098 = fadd fast float %8095, %8074
  %8099 = fadd fast float %8096, %8075
  %8100 = fmul fast float %7764, %5065
  %8101 = fmul fast float %8100, %7782
  %8102 = fmul fast float %8101, %7939
  %8103 = fmul fast float %7765, %5065
  %8104 = fmul fast float %8103, %7782
  %8105 = fmul fast float %8104, %7939
  %8106 = fmul fast float %7766, %5065
  %8107 = fmul fast float %8106, %7782
  %8108 = fmul fast float %8107, %7939
  %8109 = fadd fast float %8102, %7442
  %8110 = fadd fast float %8105, %7443
  %8111 = fadd fast float %8108, %7444
  %8112 = fmul fast float %8100, %8097
  %8113 = fmul fast float %8103, %8098
  %8114 = fmul fast float %8106, %8099
  %8115 = fadd fast float %8112, %7439
  %8116 = fadd fast float %8113, %7440
  %8117 = fadd fast float %8114, %7441
  br label %7572

; <label>:8118                                    ; preds = %7572
  br label %8119

; <label>:8119                                    ; preds = %8118, %7405
  %8120 = phi float [ %7407, %7405 ], [ %7573, %8118 ]
  %8121 = phi float [ %7408, %7405 ], [ %7574, %8118 ]
  %8122 = phi float [ %7409, %7405 ], [ %7575, %8118 ]
  %8123 = phi float [ %7410, %7405 ], [ %7576, %8118 ]
  %8124 = phi float [ %7411, %7405 ], [ %7577, %8118 ]
  %8125 = phi float [ %7412, %7405 ], [ %7578, %8118 ]
  %8126 = add i32 %7406, 1
  %8127 = icmp ugt i32 %8126, %7402
  br i1 %8127, label %8128, label %7405

; <label>:8128                                    ; preds = %8119
  br label %8129

; <label>:8129                                    ; preds = %8128, %7355, %7345
  %8130 = phi float [ %7346, %7345 ], [ %7346, %7355 ], [ %8120, %8128 ]
  %8131 = phi float [ %7347, %7345 ], [ %7347, %7355 ], [ %8121, %8128 ]
  %8132 = phi float [ %7348, %7345 ], [ %7348, %7355 ], [ %8122, %8128 ]
  %8133 = phi float [ %7349, %7345 ], [ %7349, %7355 ], [ %8123, %8128 ]
  %8134 = phi float [ %7350, %7345 ], [ %7350, %7355 ], [ %8124, %8128 ]
  %8135 = phi float [ %7351, %7345 ], [ %7351, %7355 ], [ %8125, %8128 ]
  %8136 = fmul fast float %6071, %5065
  %8137 = fmul fast float %6072, %5065
  %8138 = fmul fast float %6073, %5065
  %8139 = fadd fast float %8136, 1.000000e+00
  %8140 = fadd fast float %8137, 1.000000e+00
  %8141 = fadd fast float %8138, 1.000000e+00
  %8142 = call float @dx.op.dot3.f32(i32 55, float %8139, float %8140, float %8141, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8143 = fsub fast float 1.000000e+00, %8142
  %8144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8145 = extractvalue %dx.types.CBufRet.f32 %8144, 0
  %8146 = fmul fast float %8145, %6077
  %8147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8148 = extractvalue %dx.types.CBufRet.f32 %8147, 3
  %8149 = fsub fast float 1.000000e+00, %5073
  %8150 = call float @dx.op.unary.f32(i32 7, float %8149)  ; Saturate(value)
  %8151 = fadd fast float %8135, %5071
  %8152 = fmul fast float %8151, %5073
  %8153 = fmul fast float %8150, %8148
  %8154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8155 = extractvalue %dx.types.CBufRet.f32 %8154, 3
  %8156 = fmul fast float %8133, %5700
  %8157 = fmul fast float %8134, %5701
  %8158 = fmul fast float %8135, %5702
  %8159 = fcmp fast ogt float %91, %177
  %8160 = and i1 %8159, %5505
  %8161 = or i1 %5511, %8160
  %8162 = icmp eq i32 %5504, 2
  %8163 = fcmp fast ole float %91, %177
  %8164 = and i1 %8163, %8162
  %8165 = or i1 %8164, %8161
  br i1 %8160, label %8166, label %8423

; <label>:8166                                    ; preds = %8129
  %8167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8168 = extractvalue %dx.types.CBufRet.f32 %8167, 2
  %8169 = extractvalue %dx.types.CBufRet.f32 %8167, 3
  %8170 = fmul fast float %8168, %100
  %8171 = fmul fast float %8169, %101
  %8172 = call float @dx.op.unary.f32(i32 7, float %8170)  ; Saturate(value)
  %8173 = call float @dx.op.unary.f32(i32 7, float %8171)  ; Saturate(value)
  %8174 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8172, float %8173, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8175 = extractvalue %dx.types.ResRet.f32 %8174, 0
  %8176 = extractvalue %dx.types.ResRet.f32 %8174, 1
  %8177 = extractvalue %dx.types.ResRet.f32 %8174, 2
  %8178 = extractvalue %dx.types.ResRet.f32 %8174, 3
  %8179 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8172, float %8173, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8180 = extractvalue %dx.types.ResRet.f32 %8179, 0
  %8181 = extractvalue %dx.types.ResRet.f32 %8179, 1
  %8182 = extractvalue %dx.types.ResRet.f32 %8179, 2
  %8183 = extractvalue %dx.types.ResRet.f32 %8179, 3
  %8184 = call float @dx.op.binary.f32(i32 35, float %8176, float %8177)  ; FMax(a,b)
  %8185 = call float @dx.op.binary.f32(i32 35, float %8175, float %8184)  ; FMax(a,b)
  %8186 = call float @dx.op.binary.f32(i32 35, float %8185, float %8178)  ; FMax(a,b)
  %8187 = call float @dx.op.binary.f32(i32 36, float %8181, float %8182)  ; FMin(a,b)
  %8188 = call float @dx.op.binary.f32(i32 36, float %8180, float %8187)  ; FMin(a,b)
  %8189 = call float @dx.op.binary.f32(i32 36, float %8188, float %8183)  ; FMin(a,b)
  %8190 = fmul fast float %8186, 2.550000e+02
  %8191 = fadd fast float %8190, 0x3F70101020000000
  %8192 = fptoui float %8191 to i32
  %8193 = fmul fast float %8189, 2.550000e+02
  %8194 = fadd fast float %8193, 0x3F70101020000000
  %8195 = fptoui float %8194 to i32
  %8196 = icmp ult i32 %8192, %8195
  br i1 %8196, label %8197, label %8365

; <label>:8197                                    ; preds = %8166
  %8198 = fcmp fast ogt float %90, 9.843750e-01
  %8199 = fadd fast float %91, -4.000000e+00
  %8200 = select i1 %8198, float -4.000000e+00, float %8199
  %8201 = call float @dx.op.binary.f32(i32 35, float %8200, float 0.000000e+00)  ; FMax(a,b)
  %8202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8203 = extractvalue %dx.types.CBufRet.f32 %8202, 0
  %8204 = fadd fast float %8203, %8201
  %8205 = extractvalue %dx.types.CBufRet.f32 %8202, 2
  %8206 = fmul fast float %8204, %8205
  %8207 = call float @dx.op.unary.f32(i32 23, float %8206)  ; Log(value)
  %8208 = extractvalue %dx.types.CBufRet.f32 %8202, 3
  %8209 = fmul fast float %8208, %8207
  %8210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8211 = extractvalue %dx.types.CBufRet.f32 %8210, 2
  %8212 = fmul fast float %8209, %8211
  %8213 = call float @dx.op.unary.f32(i32 7, float %8212)  ; Saturate(value)
  %8214 = uitofp i32 %8192 to float
  %8215 = uitofp i32 %8195 to float
  %8216 = fadd fast float %8214, 5.000000e-01
  %8217 = fadd fast float %8215, 5.000000e-01
  %8218 = fmul fast float %8211, %8216
  %8219 = fmul fast float %8211, %8217
  %8220 = fadd fast float %8218, 0x3F0FFB4800000000
  %8221 = fadd fast float %8219, 0xBF0FFB4800000000
  %8222 = call float @dx.op.binary.f32(i32 35, float %8213, float %8220)  ; FMax(a,b)
  %8223 = call float @dx.op.binary.f32(i32 36, float %8222, float %8221)  ; FMin(a,b)
  %8224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8225 = extractvalue %dx.types.CBufRet.f32 %8224, 1
  %8226 = extractvalue %dx.types.CBufRet.f32 %8224, 2
  %8227 = extractvalue %dx.types.CBufRet.f32 %8224, 0
  %8228 = fmul fast float %8225, %8223
  %8229 = fadd fast float %8227, %8228
  %8230 = fadd fast float %8227, %8226
  %8231 = fsub fast float %8225, %8226
  %8232 = fadd fast float %8231, %8227
  %8233 = call float @dx.op.binary.f32(i32 35, float %8229, float %8230)  ; FMax(a,b)
  %8234 = call float @dx.op.binary.f32(i32 36, float %8233, float %8232)  ; FMin(a,b)
  %8235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8172, float %8173, float %8234, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8236 = extractvalue %dx.types.ResRet.f32 %8235, 0
  %8237 = extractvalue %dx.types.ResRet.f32 %8235, 1
  %8238 = extractvalue %dx.types.ResRet.f32 %8235, 2
  %8239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8240 = extractvalue %dx.types.CBufRet.i32 %8239, 0
  %8241 = extractvalue %dx.types.CBufRet.i32 %8239, 1
  %8242 = uitofp i32 %8240 to float
  %8243 = uitofp i32 %8241 to float
  %8244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8245 = extractvalue %dx.types.CBufRet.f32 %8244, 0
  %8246 = extractvalue %dx.types.CBufRet.f32 %8244, 1
  %8247 = fmul fast float %8242, %8172
  %8248 = fmul fast float %8243, %8173
  %8249 = fadd fast float %8247, -5.000000e-01
  %8250 = fadd fast float %8248, -5.000000e-01
  %8251 = call float @dx.op.unary.f32(i32 22, float %8249)  ; Frc(value)
  %8252 = call float @dx.op.unary.f32(i32 22, float %8250)  ; Frc(value)
  %8253 = fmul fast float %8251, %8251
  %8254 = fmul fast float %8253, %8251
  %8255 = fsub fast float 3.000000e+00, %8251
  %8256 = fmul fast float %8253, %8255
  %8257 = fmul fast float %8251, 3.000000e+00
  %8258 = fmul fast float %8254, 3.000000e+00
  %8259 = fmul fast float %8253, 6.000000e+00
  %8260 = fsub fast float %8258, %8259
  %8261 = fadd fast float %8260, 4.000000e+00
  %8262 = fmul fast float %8261, 0x3FC5555560000000
  %8263 = fmul fast float %8254, -3.000000e+00
  %8264 = fadd fast float %8253, %8251
  %8265 = fmul fast float %8264, 3.000000e+00
  %8266 = fadd fast float %8263, 1.000000e+00
  %8267 = fadd fast float %8266, %8265
  %8268 = fmul fast float %8254, 0x3FC5555560000000
  %8269 = fmul fast float %8252, %8252
  %8270 = fmul fast float %8269, %8252
  %8271 = fsub fast float 3.000000e+00, %8252
  %8272 = fmul fast float %8269, %8271
  %8273 = fmul fast float %8252, 3.000000e+00
  %8274 = fmul fast float %8270, 3.000000e+00
  %8275 = fmul fast float %8269, 6.000000e+00
  %8276 = fsub fast float %8274, %8275
  %8277 = fadd fast float %8276, 4.000000e+00
  %8278 = fmul fast float %8277, 0x3FC5555560000000
  %8279 = fmul fast float %8270, -3.000000e+00
  %8280 = fadd fast float %8269, %8252
  %8281 = fmul fast float %8280, 3.000000e+00
  %8282 = fadd fast float %8279, 1.000000e+00
  %8283 = fadd fast float %8282, %8281
  %8284 = fmul fast float %8270, 0x3FC5555560000000
  %8285 = fadd fast float %8251, 1.000000e+00
  %8286 = fsub fast float 1.000000e+00, %8257
  %8287 = fadd fast float %8286, %8256
  %8288 = fadd fast float %8287, %8261
  %8289 = fmul fast float %8288, 0x3FC5555560000000
  %8290 = fdiv fast float %8262, %8289
  %8291 = fsub fast float %8285, %8290
  %8292 = fsub fast float 1.000000e+00, %8251
  %8293 = fadd fast float %8267, %8254
  %8294 = fmul fast float %8293, 0x3FC5555560000000
  %8295 = fdiv fast float %8268, %8294
  %8296 = fadd fast float %8292, %8295
  %8297 = fadd fast float %8252, 1.000000e+00
  %8298 = fsub fast float 1.000000e+00, %8273
  %8299 = fadd fast float %8298, %8272
  %8300 = fadd fast float %8299, %8277
  %8301 = fmul fast float %8300, 0x3FC5555560000000
  %8302 = fdiv fast float %8278, %8301
  %8303 = fsub fast float %8297, %8302
  %8304 = fsub fast float 1.000000e+00, %8252
  %8305 = fadd fast float %8283, %8270
  %8306 = fmul fast float %8305, 0x3FC5555560000000
  %8307 = fdiv fast float %8284, %8306
  %8308 = fadd fast float %8307, %8304
  %8309 = fmul fast float %8291, %8245
  %8310 = fsub fast float %8172, %8309
  %8311 = fmul fast float %8296, %8245
  %8312 = fadd fast float %8311, %8172
  %8313 = fmul fast float %8308, %8246
  %8314 = fadd fast float %8313, %8173
  %8315 = fmul fast float %8303, %8246
  %8316 = fsub fast float %8173, %8315
  %8317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8310, float %8316, float %8234, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8318 = extractvalue %dx.types.ResRet.f32 %8317, 0
  %8319 = extractvalue %dx.types.ResRet.f32 %8317, 1
  %8320 = extractvalue %dx.types.ResRet.f32 %8317, 2
  %8321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8312, float %8316, float %8234, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8322 = extractvalue %dx.types.ResRet.f32 %8321, 0
  %8323 = extractvalue %dx.types.ResRet.f32 %8321, 1
  %8324 = extractvalue %dx.types.ResRet.f32 %8321, 2
  %8325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8310, float %8314, float %8234, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8326 = extractvalue %dx.types.ResRet.f32 %8325, 0
  %8327 = extractvalue %dx.types.ResRet.f32 %8325, 1
  %8328 = extractvalue %dx.types.ResRet.f32 %8325, 2
  %8329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8312, float %8314, float %8234, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8330 = extractvalue %dx.types.ResRet.f32 %8329, 0
  %8331 = extractvalue %dx.types.ResRet.f32 %8329, 1
  %8332 = extractvalue %dx.types.ResRet.f32 %8329, 2
  %8333 = fsub fast float %8326, %8318
  %8334 = fsub fast float %8327, %8319
  %8335 = fsub fast float %8328, %8320
  %8336 = fmul fast float %8333, %8306
  %8337 = fmul fast float %8334, %8306
  %8338 = fmul fast float %8335, %8306
  %8339 = fadd fast float %8336, %8318
  %8340 = fadd fast float %8337, %8319
  %8341 = fadd fast float %8338, %8320
  %8342 = fsub fast float %8330, %8322
  %8343 = fsub fast float %8331, %8323
  %8344 = fsub fast float %8332, %8324
  %8345 = fmul fast float %8342, %8306
  %8346 = fmul fast float %8343, %8306
  %8347 = fmul fast float %8344, %8306
  %8348 = fsub fast float %8322, %8339
  %8349 = fadd fast float %8348, %8345
  %8350 = fsub fast float %8323, %8340
  %8351 = fadd fast float %8350, %8346
  %8352 = fsub fast float %8324, %8341
  %8353 = fadd fast float %8352, %8347
  %8354 = fmul fast float %8349, %8294
  %8355 = fmul fast float %8351, %8294
  %8356 = fmul fast float %8353, %8294
  %8357 = fadd fast float %8354, %8339
  %8358 = fadd fast float %8355, %8340
  %8359 = fadd fast float %8356, %8341
  %8360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8361 = extractvalue %dx.types.CBufRet.f32 %8360, 1
  %8362 = fmul fast float %8357, %8361
  %8363 = fmul fast float %8358, %8361
  %8364 = fmul fast float %8359, %8361
  br label %8365

; <label>:8365                                    ; preds = %8197, %8166
  %8366 = phi float [ %8236, %8197 ], [ 1.000000e+00, %8166 ]
  %8367 = phi float [ %8237, %8197 ], [ 1.000000e+00, %8166 ]
  %8368 = phi float [ %8238, %8197 ], [ 1.000000e+00, %8166 ]
  %8369 = phi float [ %8362, %8197 ], [ 0.000000e+00, %8166 ]
  %8370 = phi float [ %8363, %8197 ], [ 0.000000e+00, %8166 ]
  %8371 = phi float [ %8364, %8197 ], [ 0.000000e+00, %8166 ]
  %8372 = fmul fast float %8369, %8143
  %8373 = fmul fast float %8370, %8143
  %8374 = fmul fast float %8371, %8143
  %8375 = call float @dx.op.dot3.f32(i32 55, float %8366, float %8367, float %8368, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8376 = call float @dx.op.dot3.f32(i32 55, float %8372, float %8373, float %8374, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8377 = select i1 %217, float %8375, float %8366
  %8378 = select i1 %217, float %8375, float %8367
  %8379 = select i1 %217, float 1.000000e+00, float %8368
  %8380 = select i1 %217, float %8376, float %8372
  %8381 = select i1 %217, float 0.000000e+00, float %8373
  %8382 = select i1 %217, float 0.000000e+00, float %8374
  %8383 = fmul fast float %8377, %8156
  %8384 = fmul fast float %8378, %8157
  %8385 = fmul fast float %8379, %8158
  %8386 = fadd fast float %8383, %8380
  %8387 = fadd fast float %8384, %8381
  %8388 = fadd fast float %8382, %8385
  %8389 = fmul fast float %8377, %8130
  %8390 = fmul fast float %8378, %8131
  %8391 = fmul fast float %8379, %8132
  %8392 = fmul fast float %125, %8168
  %8393 = fmul fast float %127, %8169
  %8394 = fsub fast float 1.000000e+00, %8392
  %8395 = fsub fast float 1.000000e+00, %8393
  %8396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8397 = extractvalue %dx.types.CBufRet.f32 %8396, 0
  %8398 = extractvalue %dx.types.CBufRet.f32 %8396, 1
  %8399 = extractvalue %dx.types.CBufRet.f32 %8396, 2
  %8400 = fmul fast float %8394, %8397
  %8401 = fmul fast float %8394, %8398
  %8402 = fmul fast float %8394, %8399
  %8403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8404 = extractvalue %dx.types.CBufRet.f32 %8403, 0
  %8405 = extractvalue %dx.types.CBufRet.f32 %8403, 1
  %8406 = extractvalue %dx.types.CBufRet.f32 %8403, 2
  %8407 = fmul fast float %8395, %8404
  %8408 = fmul fast float %8395, %8405
  %8409 = fmul fast float %8395, %8406
  %8410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8411 = extractvalue %dx.types.CBufRet.f32 %8410, 0
  %8412 = extractvalue %dx.types.CBufRet.f32 %8410, 1
  %8413 = extractvalue %dx.types.CBufRet.f32 %8410, 2
  %8414 = fadd fast float %8407, %8411
  %8415 = fadd fast float %8414, %8400
  %8416 = fadd fast float %8408, %8412
  %8417 = fadd fast float %8416, %8401
  %8418 = fadd fast float %8409, %8413
  %8419 = fadd fast float %8418, %8402
  %8420 = fmul fast float %8415, %177
  %8421 = fmul fast float %8417, %177
  %8422 = fmul fast float %8419, %177
  br label %8423

; <label>:8423                                    ; preds = %8365, %8129
  %8424 = phi float [ %8420, %8365 ], [ %155, %8129 ]
  %8425 = phi float [ %8421, %8365 ], [ %156, %8129 ]
  %8426 = phi float [ %8422, %8365 ], [ %157, %8129 ]
  %8427 = phi float [ %177, %8365 ], [ %91, %8129 ]
  %8428 = phi float [ %8386, %8365 ], [ %8156, %8129 ]
  %8429 = phi float [ %8387, %8365 ], [ %8157, %8129 ]
  %8430 = phi float [ %8388, %8365 ], [ %8158, %8129 ]
  %8431 = phi float [ %8389, %8365 ], [ %8130, %8129 ]
  %8432 = phi float [ %8390, %8365 ], [ %8131, %8129 ]
  %8433 = phi float [ %8391, %8365 ], [ %8132, %8129 ]
  %8434 = phi float [ %8366, %8365 ], [ 1.000000e+00, %8129 ]
  br i1 %8165, label %9589, label %8435

; <label>:8435                                    ; preds = %8423
  %8436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8437 = extractvalue %dx.types.CBufRet.f32 %8436, 0
  %8438 = extractvalue %dx.types.CBufRet.f32 %8436, 1
  %8439 = extractvalue %dx.types.CBufRet.f32 %8436, 2
  %8440 = extractvalue %dx.types.CBufRet.f32 %8436, 3
  %8441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8442 = extractvalue %dx.types.CBufRet.f32 %8441, 0
  %8443 = extractvalue %dx.types.CBufRet.f32 %8441, 1
  %8444 = extractvalue %dx.types.CBufRet.f32 %8441, 2
  %8445 = extractvalue %dx.types.CBufRet.f32 %8441, 3
  %8446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8447 = extractvalue %dx.types.CBufRet.f32 %8446, 0
  %8448 = extractvalue %dx.types.CBufRet.f32 %8446, 1
  %8449 = extractvalue %dx.types.CBufRet.f32 %8446, 2
  %8450 = extractvalue %dx.types.CBufRet.f32 %8446, 3
  %8451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8452 = extractvalue %dx.types.CBufRet.f32 %8451, 0
  %8453 = extractvalue %dx.types.CBufRet.f32 %8451, 1
  %8454 = extractvalue %dx.types.CBufRet.f32 %8451, 2
  %8455 = extractvalue %dx.types.CBufRet.f32 %8451, 3
  %8456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8457 = extractvalue %dx.types.CBufRet.f32 %8456, 3
  %8458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8459 = extractvalue %dx.types.CBufRet.f32 %8458, 3
  %8460 = extractvalue %dx.types.CBufRet.f32 %8458, 0
  %8461 = extractvalue %dx.types.CBufRet.f32 %8458, 1
  %8462 = extractvalue %dx.types.CBufRet.f32 %8458, 2
  %8463 = fcmp fast olt float %8462, -5.000000e-01
  %8464 = call float @dx.op.dot3.f32(i32 55, float %8424, float %8425, float %8426, float %8424, float %8425, float %8426)  ; Dot3(ax,ay,az,bx,by,bz)
  %8465 = call float @dx.op.unary.f32(i32 25, float %8464)  ; Rsqrt(value)
  %8466 = fmul fast float %8465, %8464
  %8467 = fmul fast float %8465, %8424
  %8468 = fmul fast float %8465, %8425
  %8469 = fmul fast float %8465, %8426
  %8470 = fadd fast float %8466, %8440
  %8471 = call float @dx.op.dot3.f32(i32 55, float %8467, float %8468, float %8469, float %8437, float %8438, float %8439)  ; Dot3(ax,ay,az,bx,by,bz)
  %8472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8473 = extractvalue %dx.types.CBufRet.i32 %8472, 1
  %8474 = and i32 %8473, 1
  %8475 = icmp ne i32 %8474, 0
  %8476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8477 = extractvalue %dx.types.CBufRet.f32 %8476, 2
  %8478 = fcmp fast ogt float %8477, 0.000000e+00
  %8479 = and i1 %8475, %8478
  br i1 %8479, label %8480, label %8886, !dx.controlflow.hints !120

; <label>:8480                                    ; preds = %8435
  %8481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8482 = extractvalue %dx.types.CBufRet.f32 %8481, 3
  %8483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8484 = extractvalue %dx.types.CBufRet.f32 %8483, 2
  %8485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8486 = extractvalue %dx.types.CBufRet.f32 %8485, 2
  %8487 = fsub fast float %8484, %8486
  %8488 = and i32 %8473, 2
  %8489 = extractvalue %dx.types.CBufRet.i32 %8472, 0
  %8490 = call i32 @dx.op.binary.i32(i32 40, i32 %8489, i32 3)  ; UMin(a,b)
  %8491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8492 = extractvalue %dx.types.CBufRet.f32 %8491, 0
  %8493 = extractvalue %dx.types.CBufRet.f32 %8491, 1
  %8494 = extractvalue %dx.types.CBufRet.f32 %8485, 0
  %8495 = extractvalue %dx.types.CBufRet.f32 %8485, 1
  %8496 = fsub fast float %8492, %8494
  %8497 = fsub fast float %8493, %8495
  %8498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8499 = extractvalue %dx.types.CBufRet.f32 %8498, 0
  %8500 = fcmp fast ogt float %8499, 0.000000e+00
  %8501 = fsub fast float -0.000000e+00, %8496
  %8502 = fsub fast float -0.000000e+00, %8497
  %8503 = call float @dx.op.dot2.f32(i32 54, float %8467, float %8468, float %8467, float %8468)  ; Dot2(ax,ay,bx,by)
  %8504 = call float @dx.op.dot2.f32(i32 54, float %8467, float %8468, float %8501, float %8502)  ; Dot2(ax,ay,bx,by)
  %8505 = fmul fast float %8504, 2.000000e+00
  %8506 = call float @dx.op.dot2.f32(i32 54, float %8501, float %8502, float %8501, float %8502)  ; Dot2(ax,ay,bx,by)
  %8507 = fmul fast float %8499, %8499
  %8508 = fsub fast float %8506, %8507
  %8509 = fmul fast float %8505, %8505
  %8510 = fmul fast float %8503, 4.000000e+00
  %8511 = fmul fast float %8510, %8508
  %8512 = fsub fast float %8509, %8511
  %8513 = fcmp fast ogt float %8512, 0.000000e+00
  br i1 %8513, label %8514, label %8529

; <label>:8514                                    ; preds = %8480
  %8515 = fcmp fast ogt float %8505, 0.000000e+00
  %8516 = call float @dx.op.unary.f32(i32 24, float %8512)  ; Sqrt(value)
  %8517 = fsub fast float -0.000000e+00, %8516
  %8518 = select i1 %8515, float %8516, float %8517
  %8519 = fadd fast float %8518, %8505
  %8520 = fmul float %8519, -5.000000e-01
  %8521 = fdiv fast float %8520, %8503
  %8522 = call float @dx.op.binary.f32(i32 35, float %8521, float 0.000000e+00)  ; FMax(a,b)
  %8523 = call float @dx.op.binary.f32(i32 36, float %8466, float %8522)  ; FMin(a,b)
  %8524 = fdiv fast float %8508, %8520
  %8525 = call float @dx.op.binary.f32(i32 35, float %8524, float 0.000000e+00)  ; FMax(a,b)
  %8526 = call float @dx.op.binary.f32(i32 36, float %8466, float %8525)  ; FMin(a,b)
  %8527 = call float @dx.op.binary.f32(i32 36, float %8523, float %8526)  ; FMin(a,b)
  %8528 = call float @dx.op.binary.f32(i32 35, float %8523, float %8526)  ; FMax(a,b)
  br label %8529

; <label>:8529                                    ; preds = %8514, %8480
  %8530 = phi float [ %8528, %8514 ], [ -1.000000e+00, %8480 ]
  %8531 = phi float [ %8527, %8514 ], [ -1.000000e+00, %8480 ]
  %8532 = phi i1 [ true, %8514 ], [ false, %8480 ]
  %8533 = and i1 %8500, %8532
  br i1 %8533, label %8534, label %8536

; <label>:8534                                    ; preds = %8529
  %8535 = fcmp fast oeq float %8531, %8530
  br i1 %8535, label %8839, label %8537

; <label>:8536                                    ; preds = %8529
  br i1 %8500, label %8839, label %8537

; <label>:8537                                    ; preds = %8536, %8534
  %8538 = phi float [ %8466, %8536 ], [ %8530, %8534 ]
  %8539 = phi float [ 0.000000e+00, %8536 ], [ %8531, %8534 ]
  %8540 = icmp ne i32 %8488, 0
  %8541 = fmul fast float %8538, %8469
  %8542 = fadd fast float %8541, %8482
  %8543 = fmul fast float %8542, %8538
  %8544 = select i1 %8540, float 0.000000e+00, float %8543
  %8545 = fcmp fast oeq float %8469, 0.000000e+00
  %8546 = fdiv fast float %8487, %8469
  %8547 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8546)  ; FMax(a,b)
  %8548 = select i1 %8545, float %8538, float %8547
  %8549 = call float @dx.op.binary.f32(i32 36, float %8538, float %8548)  ; FMin(a,b)
  %8550 = fcmp fast ogt float %8469, 0.000000e+00
  %8551 = fcmp fast olt float %8487, 0.000000e+00
  br i1 %8550, label %8552, label %8609

; <label>:8552                                    ; preds = %8537
  %8553 = icmp eq i32 %8488, 0
  br i1 %8551, label %8554, label %8598

; <label>:8554                                    ; preds = %8552
  %8555 = select i1 %8553, float %8538, float 0.000000e+00
  %8556 = fsub fast float -0.000000e+00, %8555
  %8557 = call float @dx.op.unary.f32(i32 6, float %8556)  ; FAbs(value)
  %8558 = fmul fast float %8555, %8469
  %8559 = fadd fast float %8558, %8482
  %8560 = fmul fast float %8557, %8559
  %8561 = fsub fast float %8544, %8560
  %8562 = fsub fast float %8538, %8557
  %8563 = select i1 %8553, float %8562, float 0.000000e+00
  %8564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8565 = extractvalue %dx.types.CBufRet.f32 %8564, 0
  %8566 = extractvalue %dx.types.CBufRet.f32 %8564, 1
  %8567 = extractvalue %dx.types.CBufRet.f32 %8564, 2
  %8568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8569 = extractvalue %dx.types.CBufRet.f32 %8568, 0
  %8570 = extractvalue %dx.types.CBufRet.f32 %8568, 1
  %8571 = extractvalue %dx.types.CBufRet.f32 %8568, 2
  %8572 = extractvalue %dx.types.CBufRet.f32 %8568, 3
  %8573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8574 = extractvalue %dx.types.CBufRet.f32 %8573, 3
  %8575 = call float @dx.op.binary.f32(i32 36, float %8561, float %8574)  ; FMin(a,b)
  %8576 = fmul fast float %8572, %8563
  %8577 = call float @dx.op.unary.f32(i32 7, float %8576)  ; Saturate(value)
  %8578 = fsub fast float %8569, %8565
  %8579 = fsub fast float %8570, %8566
  %8580 = fsub fast float %8571, %8567
  %8581 = fmul fast float %8577, %8578
  %8582 = fmul fast float %8577, %8579
  %8583 = fmul fast float %8577, %8580
  %8584 = fadd fast float %8581, %8565
  %8585 = fadd fast float %8582, %8566
  %8586 = fadd fast float %8583, %8567
  %8587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8588 = extractvalue %dx.types.CBufRet.f32 %8587, 0
  %8589 = extractvalue %dx.types.CBufRet.f32 %8587, 1
  %8590 = fadd fast float %8589, %8588
  %8591 = call float @dx.op.unary.f32(i32 7, float %8590)  ; Saturate(value)
  %8592 = extractvalue %dx.types.CBufRet.f32 %8587, 2
  %8593 = extractvalue %dx.types.CBufRet.f32 %8587, 3
  %8594 = fadd fast float %8593, %8592
  %8595 = call float @dx.op.unary.f32(i32 7, float %8594)  ; Saturate(value)
  %8596 = fmul fast float %8591, %8575
  %8597 = fmul fast float %8596, %8595
  br label %8839

; <label>:8598                                    ; preds = %8552
  br i1 %8553, label %8599, label %8620

; <label>:8599                                    ; preds = %8598
  %8600 = call float @dx.op.binary.f32(i32 36, float %8549, float %8539)  ; FMin(a,b)
  %8601 = fsub fast float %8549, %8600
  %8602 = fsub fast float %8601, %8538
  %8603 = call float @dx.op.unary.f32(i32 6, float %8602)  ; FAbs(value)
  %8604 = fadd fast float %8601, %8538
  %8605 = fmul fast float %8604, %8469
  %8606 = fadd fast float %8605, %8482
  %8607 = fmul fast float %8606, %8603
  %8608 = fsub fast float %8544, %8607
  br label %8620

; <label>:8609                                    ; preds = %8537
  br i1 %8551, label %8610, label %8620

; <label>:8610                                    ; preds = %8609
  %8611 = call float @dx.op.binary.f32(i32 35, float %8539, float %8549)  ; FMax(a,b)
  %8612 = icmp eq i32 %8488, 0
  %8613 = select i1 %8612, float %8549, float 0.000000e+00
  %8614 = fsub fast float -0.000000e+00, %8613
  %8615 = call float @dx.op.unary.f32(i32 6, float %8614)  ; FAbs(value)
  %8616 = fmul fast float %8613, %8469
  %8617 = fadd fast float %8616, %8482
  %8618 = fmul fast float %8615, %8617
  %8619 = fsub fast float %8544, %8618
  br label %8620

; <label>:8620                                    ; preds = %8610, %8609, %8599, %8598
  %8621 = phi float [ %8539, %8598 ], [ %8539, %8599 ], [ %8611, %8610 ], [ %8539, %8609 ]
  %8622 = phi float [ 0.000000e+00, %8598 ], [ %8603, %8599 ], [ %8615, %8610 ], [ 0.000000e+00, %8609 ]
  %8623 = phi float [ %8544, %8598 ], [ %8608, %8599 ], [ %8619, %8610 ], [ %8544, %8609 ]
  %8624 = phi float [ %8549, %8598 ], [ %8549, %8599 ], [ %8538, %8610 ], [ %8538, %8609 ]
  %8625 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %8625, align 4, !tbaa !121, !noalias !123
  %8626 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %8626, align 4, !tbaa !121, !noalias !123
  %8627 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %8627, align 4, !tbaa !121, !noalias !123
  %8628 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %8628, align 4, !tbaa !121, !noalias !123
  %8629 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %8629, align 4, !tbaa !121, !noalias !123
  %8630 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %8630, align 4, !tbaa !121, !noalias !123
  %8631 = icmp sgt i32 %8490, 0
  br i1 %8631, label %8632, label %8693

; <label>:8632                                    ; preds = %8620
  br label %8633

; <label>:8633                                    ; preds = %8682, %8632
  %8634 = phi i32 [ %8683, %8682 ], [ 0, %8632 ]
  %8635 = phi i32 [ %8684, %8682 ], [ 0, %8632 ]
  %8636 = add nuw i32 %8635, 171
  %8637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %8636)  ; CBufferLoadLegacy(handle,regIndex)
  %8638 = extractvalue %dx.types.CBufRet.f32 %8637, 0
  %8639 = extractvalue %dx.types.CBufRet.f32 %8637, 1
  %8640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8641 = extractvalue %dx.types.CBufRet.f32 %8640, 0
  %8642 = extractvalue %dx.types.CBufRet.f32 %8640, 1
  %8643 = fsub fast float %8638, %8641
  %8644 = fsub fast float %8639, %8642
  %8645 = extractvalue %dx.types.CBufRet.f32 %8637, 2
  %8646 = fsub fast float -0.000000e+00, %8643
  %8647 = fsub fast float -0.000000e+00, %8644
  %8648 = call float @dx.op.dot2.f32(i32 54, float %8467, float %8468, float %8646, float %8647)  ; Dot2(ax,ay,bx,by)
  %8649 = fmul fast float %8648, 2.000000e+00
  %8650 = call float @dx.op.dot2.f32(i32 54, float %8646, float %8647, float %8646, float %8647)  ; Dot2(ax,ay,bx,by)
  %8651 = fmul fast float %8645, %8645
  %8652 = fsub fast float %8650, %8651
  %8653 = fmul fast float %8649, %8649
  %8654 = fmul fast float %8510, %8652
  %8655 = fsub fast float %8653, %8654
  %8656 = fcmp fast ogt float %8655, 0.000000e+00
  br i1 %8656, label %8657, label %8672

; <label>:8657                                    ; preds = %8633
  %8658 = fcmp fast ogt float %8649, 0.000000e+00
  %8659 = call float @dx.op.unary.f32(i32 24, float %8655)  ; Sqrt(value)
  %8660 = fsub fast float -0.000000e+00, %8659
  %8661 = select i1 %8658, float %8659, float %8660
  %8662 = fadd fast float %8661, %8649
  %8663 = fmul float %8662, -5.000000e-01
  %8664 = fdiv fast float %8663, %8503
  %8665 = call float @dx.op.binary.f32(i32 35, float %8664, float 0.000000e+00)  ; FMax(a,b)
  %8666 = call float @dx.op.binary.f32(i32 36, float %8538, float %8665)  ; FMin(a,b)
  %8667 = fdiv fast float %8652, %8663
  %8668 = call float @dx.op.binary.f32(i32 35, float %8667, float 0.000000e+00)  ; FMax(a,b)
  %8669 = call float @dx.op.binary.f32(i32 36, float %8538, float %8668)  ; FMin(a,b)
  %8670 = call float @dx.op.binary.f32(i32 36, float %8666, float %8669)  ; FMin(a,b)
  %8671 = call float @dx.op.binary.f32(i32 35, float %8666, float %8669)  ; FMax(a,b)
  br label %8672

; <label>:8672                                    ; preds = %8657, %8633
  %8673 = phi float [ %8671, %8657 ], [ -1.000000e+00, %8633 ]
  %8674 = phi float [ %8670, %8657 ], [ -1.000000e+00, %8633 ]
  %8675 = phi i1 [ true, %8657 ], [ false, %8633 ]
  br i1 %8675, label %8676, label %8682

; <label>:8676                                    ; preds = %8672
  %8677 = call float @dx.op.binary.f32(i32 35, float %8621, float %8674)  ; FMax(a,b)
  %8678 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8635
  store float %8677, float* %8678, align 4, !tbaa !121, !noalias !123
  %8679 = call float @dx.op.binary.f32(i32 35, float %8621, float %8673)  ; FMax(a,b)
  %8680 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8635
  store float %8679, float* %8680, align 4, !tbaa !121, !noalias !123
  %8681 = add nsw i32 %8634, 1
  br label %8682

; <label>:8682                                    ; preds = %8676, %8672
  %8683 = phi i32 [ %8681, %8676 ], [ %8634, %8672 ]
  %8684 = add nuw nsw i32 %8635, 1
  %8685 = icmp eq i32 %8684, %8490
  br i1 %8685, label %8686, label %8633

; <label>:8686                                    ; preds = %8682
  %8687 = load float, float* %8627, align 4, !tbaa !121, !alias.scope !139, !noalias !142
  %8688 = load float, float* %8626, align 4, !tbaa !121, !alias.scope !145, !noalias !146
  %8689 = load float, float* %8625, align 4, !tbaa !121, !alias.scope !147, !noalias !148
  %8690 = load float, float* %8630, align 4, !tbaa !121, !alias.scope !149, !noalias !152
  %8691 = load float, float* %8629, align 4, !tbaa !121, !alias.scope !155, !noalias !156
  %8692 = load float, float* %8628, align 4, !tbaa !121, !alias.scope !157, !noalias !158
  br label %8693

; <label>:8693                                    ; preds = %8686, %8620
  %8694 = phi float [ -1.000000e+00, %8620 ], [ %8692, %8686 ]
  %8695 = phi float [ -1.000000e+00, %8620 ], [ %8691, %8686 ]
  %8696 = phi float [ -1.000000e+00, %8620 ], [ %8690, %8686 ]
  %8697 = phi float [ -1.000000e+00, %8620 ], [ %8689, %8686 ]
  %8698 = phi float [ -1.000000e+00, %8620 ], [ %8688, %8686 ]
  %8699 = phi float [ -1.000000e+00, %8620 ], [ %8687, %8686 ]
  %8700 = phi i32 [ 0, %8620 ], [ %8683, %8686 ]
  %8701 = call float @dx.op.binary.f32(i32 36, float %8698, float %8699)  ; FMin(a,b)
  %8702 = call float @dx.op.binary.f32(i32 36, float %8697, float %8701)  ; FMin(a,b)
  %8703 = call float @dx.op.binary.f32(i32 35, float %8697, float %8698)  ; FMax(a,b)
  %8704 = call float @dx.op.binary.f32(i32 36, float %8703, float %8699)  ; FMin(a,b)
  %8705 = call float @dx.op.binary.f32(i32 36, float %8697, float %8698)  ; FMin(a,b)
  %8706 = call float @dx.op.binary.f32(i32 35, float %8705, float %8704)  ; FMax(a,b)
  %8707 = call float @dx.op.binary.f32(i32 35, float %8698, float %8699)  ; FMax(a,b)
  %8708 = call float @dx.op.binary.f32(i32 35, float %8697, float %8707)  ; FMax(a,b)
  store float %8702, float* %8625, align 4, !tbaa !121, !alias.scope !147, !noalias !148
  store float %8706, float* %8626, align 4, !tbaa !121, !alias.scope !145, !noalias !146
  store float %8708, float* %8627, align 4, !tbaa !121, !alias.scope !139, !noalias !142
  %8709 = call float @dx.op.binary.f32(i32 36, float %8695, float %8696)  ; FMin(a,b)
  %8710 = call float @dx.op.binary.f32(i32 36, float %8694, float %8709)  ; FMin(a,b)
  %8711 = call float @dx.op.binary.f32(i32 35, float %8694, float %8695)  ; FMax(a,b)
  %8712 = call float @dx.op.binary.f32(i32 36, float %8711, float %8696)  ; FMin(a,b)
  %8713 = call float @dx.op.binary.f32(i32 36, float %8694, float %8695)  ; FMin(a,b)
  %8714 = call float @dx.op.binary.f32(i32 35, float %8713, float %8712)  ; FMax(a,b)
  %8715 = call float @dx.op.binary.f32(i32 35, float %8695, float %8696)  ; FMax(a,b)
  %8716 = call float @dx.op.binary.f32(i32 35, float %8694, float %8715)  ; FMax(a,b)
  store float %8710, float* %8628, align 4, !tbaa !121, !alias.scope !157, !noalias !158
  store float %8714, float* %8629, align 4, !tbaa !121, !alias.scope !155, !noalias !156
  store float %8716, float* %8630, align 4, !tbaa !121, !alias.scope !149, !noalias !152
  %8717 = sub nsw i32 3, %8700
  %8718 = icmp sgt i32 %8717, 2
  br i1 %8718, label %8719, label %8757

; <label>:8719                                    ; preds = %8693
  %8720 = icmp eq i32 %8488, 0
  %8721 = fsub fast float %8538, %8622
  %8722 = select i1 %8720, float %8721, float %8622
  %8723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8724 = extractvalue %dx.types.CBufRet.f32 %8723, 0
  %8725 = extractvalue %dx.types.CBufRet.f32 %8723, 1
  %8726 = extractvalue %dx.types.CBufRet.f32 %8723, 2
  %8727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8728 = extractvalue %dx.types.CBufRet.f32 %8727, 0
  %8729 = extractvalue %dx.types.CBufRet.f32 %8727, 1
  %8730 = extractvalue %dx.types.CBufRet.f32 %8727, 2
  %8731 = extractvalue %dx.types.CBufRet.f32 %8727, 3
  %8732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8733 = extractvalue %dx.types.CBufRet.f32 %8732, 3
  %8734 = call float @dx.op.binary.f32(i32 36, float %8623, float %8733)  ; FMin(a,b)
  %8735 = fmul fast float %8731, %8722
  %8736 = call float @dx.op.unary.f32(i32 7, float %8735)  ; Saturate(value)
  %8737 = fsub fast float %8728, %8724
  %8738 = fsub fast float %8729, %8725
  %8739 = fsub fast float %8730, %8726
  %8740 = fmul fast float %8736, %8737
  %8741 = fmul fast float %8736, %8738
  %8742 = fmul fast float %8736, %8739
  %8743 = fadd fast float %8740, %8724
  %8744 = fadd fast float %8741, %8725
  %8745 = fadd fast float %8742, %8726
  %8746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8747 = extractvalue %dx.types.CBufRet.f32 %8746, 0
  %8748 = extractvalue %dx.types.CBufRet.f32 %8746, 1
  %8749 = fadd fast float %8748, %8747
  %8750 = call float @dx.op.unary.f32(i32 7, float %8749)  ; Saturate(value)
  %8751 = extractvalue %dx.types.CBufRet.f32 %8746, 2
  %8752 = extractvalue %dx.types.CBufRet.f32 %8746, 3
  %8753 = fadd fast float %8752, %8751
  %8754 = call float @dx.op.unary.f32(i32 7, float %8753)  ; Saturate(value)
  %8755 = fmul fast float %8750, %8734
  %8756 = fmul fast float %8755, %8754
  br label %8839

; <label>:8757                                    ; preds = %8693
  %8758 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8717
  %8759 = load float, float* %8758, align 4, !tbaa !121, !noalias !123
  %8760 = fcmp fast olt float %8759, %8624
  %8761 = icmp sgt i32 %8700, 0
  %8762 = and i1 %8761, %8760
  br i1 %8762, label %8763, label %8800

; <label>:8763                                    ; preds = %8757
  br label %8764

; <label>:8764                                    ; preds = %8793, %8763
  %8765 = phi float [ %8794, %8793 ], [ %8622, %8763 ]
  %8766 = phi float [ %8795, %8793 ], [ %8623, %8763 ]
  %8767 = phi float [ %8775, %8793 ], [ %8759, %8763 ]
  %8768 = phi i32 [ %8772, %8793 ], [ %8717, %8763 ]
  %8769 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8768
  %8770 = load float, float* %8769, align 4, !tbaa !121, !noalias !123
  %8771 = icmp slt i32 %8768, 2
  %8772 = add nsw i32 %8768, 1
  %8773 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8772
  %8774 = load float, float* %8773, align 4, !tbaa !121, !noalias !123
  %8775 = select i1 %8771, float %8774, float %8538
  %8776 = call float @dx.op.binary.f32(i32 36, float %8775, float %8770)  ; FMin(a,b)
  %8777 = call float @dx.op.binary.f32(i32 36, float %8624, float %8776)  ; FMin(a,b)
  %8778 = icmp eq i32 %8488, 0
  %8779 = fadd fast float %8777, %8767
  %8780 = fmul fast float %8779, %8469
  %8781 = fadd fast float %8780, %8482
  br i1 %8778, label %8787, label %8782

; <label>:8782                                    ; preds = %8764
  %8783 = fsub fast float %8777, %8767
  %8784 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8783)  ; FMax(a,b)
  %8785 = fmul fast float %8784, %8781
  %8786 = fadd fast float %8785, %8766
  br label %8793

; <label>:8787                                    ; preds = %8764
  %8788 = fsub fast float %8767, %8777
  %8789 = call float @dx.op.unary.f32(i32 6, float %8788)  ; FAbs(value)
  %8790 = fadd fast float %8789, %8765
  %8791 = fmul fast float %8789, %8781
  %8792 = fsub fast float %8766, %8791
  br label %8793

; <label>:8793                                    ; preds = %8787, %8782
  %8794 = phi float [ %8784, %8782 ], [ %8790, %8787 ]
  %8795 = phi float [ %8786, %8782 ], [ %8792, %8787 ]
  %8796 = fcmp fast olt float %8775, %8624
  %8797 = icmp slt i32 %8772, 3
  %8798 = and i1 %8797, %8796
  br i1 %8798, label %8764, label %8799

; <label>:8799                                    ; preds = %8793
  br label %8800

; <label>:8800                                    ; preds = %8799, %8757
  %8801 = phi float [ %8622, %8757 ], [ %8794, %8799 ]
  %8802 = phi float [ %8623, %8757 ], [ %8795, %8799 ]
  %8803 = fsub fast float %8538, %8801
  %8804 = select i1 %8540, float %8801, float %8803
  %8805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8806 = extractvalue %dx.types.CBufRet.f32 %8805, 0
  %8807 = extractvalue %dx.types.CBufRet.f32 %8805, 1
  %8808 = extractvalue %dx.types.CBufRet.f32 %8805, 2
  %8809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8810 = extractvalue %dx.types.CBufRet.f32 %8809, 0
  %8811 = extractvalue %dx.types.CBufRet.f32 %8809, 1
  %8812 = extractvalue %dx.types.CBufRet.f32 %8809, 2
  %8813 = extractvalue %dx.types.CBufRet.f32 %8809, 3
  %8814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8815 = extractvalue %dx.types.CBufRet.f32 %8814, 3
  %8816 = call float @dx.op.binary.f32(i32 36, float %8802, float %8815)  ; FMin(a,b)
  %8817 = fmul fast float %8813, %8804
  %8818 = call float @dx.op.unary.f32(i32 7, float %8817)  ; Saturate(value)
  %8819 = fsub fast float %8810, %8806
  %8820 = fsub fast float %8811, %8807
  %8821 = fsub fast float %8812, %8808
  %8822 = fmul fast float %8818, %8819
  %8823 = fmul fast float %8818, %8820
  %8824 = fmul fast float %8818, %8821
  %8825 = fadd fast float %8822, %8806
  %8826 = fadd fast float %8823, %8807
  %8827 = fadd fast float %8824, %8808
  %8828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8829 = extractvalue %dx.types.CBufRet.f32 %8828, 0
  %8830 = extractvalue %dx.types.CBufRet.f32 %8828, 1
  %8831 = fadd fast float %8830, %8829
  %8832 = call float @dx.op.unary.f32(i32 7, float %8831)  ; Saturate(value)
  %8833 = extractvalue %dx.types.CBufRet.f32 %8828, 2
  %8834 = extractvalue %dx.types.CBufRet.f32 %8828, 3
  %8835 = fadd fast float %8834, %8833
  %8836 = call float @dx.op.unary.f32(i32 7, float %8835)  ; Saturate(value)
  %8837 = fmul fast float %8832, %8816
  %8838 = fmul fast float %8837, %8836
  br label %8839

; <label>:8839                                    ; preds = %8800, %8719, %8554, %8536, %8534
  %8840 = phi float [ %8563, %8554 ], [ %8722, %8719 ], [ %8804, %8800 ], [ 0.000000e+00, %8534 ], [ 0.000000e+00, %8536 ]
  %8841 = phi float [ %8597, %8554 ], [ %8756, %8719 ], [ %8838, %8800 ], [ 0.000000e+00, %8534 ], [ 0.000000e+00, %8536 ]
  %8842 = phi float [ %8584, %8554 ], [ %8743, %8719 ], [ %8825, %8800 ], [ 0.000000e+00, %8534 ], [ 0.000000e+00, %8536 ]
  %8843 = phi float [ %8585, %8554 ], [ %8744, %8719 ], [ %8826, %8800 ], [ 0.000000e+00, %8534 ], [ 0.000000e+00, %8536 ]
  %8844 = phi float [ %8586, %8554 ], [ %8745, %8719 ], [ %8827, %8800 ], [ 0.000000e+00, %8534 ], [ 0.000000e+00, %8536 ]
  %8845 = fmul fast float %8477, %8841
  %8846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8847 = extractvalue %dx.types.CBufRet.f32 %8846, 2
  %8848 = fsub fast float %8484, %8847
  %8849 = fcmp fast olt float %8845, -2.000000e+01
  %8850 = call float @dx.op.unary.f32(i32 21, float %8845)  ; Exp(value)
  %8851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8852 = extractvalue %dx.types.CBufRet.f32 %8851, 2
  %8853 = extractvalue %dx.types.CBufRet.f32 %8851, 3
  %8854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8855 = extractvalue %dx.types.CBufRet.f32 %8854, 2
  %8856 = fmul fast float %8853, %8848
  %8857 = call float @dx.op.unary.f32(i32 7, float %8856)  ; Saturate(value)
  %8858 = fsub fast float 1.000000e+00, %8857
  %8859 = fmul fast float %8469, 5.000000e-01
  %8860 = fadd fast float %8859, 5.000000e-01
  %8861 = call float @dx.op.unary.f32(i32 7, float %8860)  ; Saturate(value)
  %8862 = fsub fast float 1.000000e+00, %8861
  %8863 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8858)  ; FMax(a,b)
  %8864 = fdiv fast float %8862, %8863
  %8865 = fsub fast float %8848, %8426
  %8866 = call float @dx.op.unary.f32(i32 6, float %8865)  ; FAbs(value)
  %8867 = fmul fast float %8866, %8852
  %8868 = call float @dx.op.unary.f32(i32 7, float %8864)  ; Saturate(value)
  %8869 = fsub fast float 1.000000e+00, %8867
  %8870 = fmul fast float %8869, %8868
  %8871 = fadd fast float %8870, %8867
  %8872 = fmul fast float %8855, %8848
  %8873 = call float @dx.op.unary.f32(i32 7, float %8872)  ; Saturate(value)
  %8874 = fsub fast float 1.000000e+00, %8871
  %8875 = fmul fast float %8874, %8873
  %8876 = fadd fast float %8875, %8871
  %8877 = call float @dx.op.unary.f32(i32 7, float %8876)  ; Saturate(value)
  %8878 = fadd fast float %8850, -1.000000e+00
  %8879 = select i1 %8849, float -1.000000e+00, float %8878
  %8880 = fmul fast float %8877, %8879
  %8881 = fadd fast float %8880, 1.000000e+00
  %8882 = fsub fast float -0.000000e+00, %8880
  %8883 = fmul fast float %8842, %8882
  %8884 = fmul fast float %8843, %8882
  %8885 = fmul fast float %8844, %8882
  br label %8886

; <label>:8886                                    ; preds = %8839, %8435
  %8887 = phi float [ %8840, %8839 ], [ 0.000000e+00, %8435 ]
  %8888 = phi float [ %8881, %8839 ], [ 1.000000e+00, %8435 ]
  %8889 = phi float [ %8883, %8839 ], [ 0.000000e+00, %8435 ]
  %8890 = phi float [ %8884, %8839 ], [ 0.000000e+00, %8435 ]
  %8891 = phi float [ %8885, %8839 ], [ 0.000000e+00, %8435 ]
  %8892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8893 = extractvalue %dx.types.CBufRet.f32 %8892, 1
  %8894 = fsub fast float 1.000000e+00, %8888
  %8895 = fmul fast float %8894, %8470
  %8896 = fmul fast float %8895, %8893
  %8897 = fsub fast float %8470, %8896
  br i1 %8463, label %8898, label %8927, !dx.controlflow.hints !159

; <label>:8898                                    ; preds = %8886
  %8899 = fmul fast float %8471, %8460
  %8900 = fadd fast float %8899, %8461
  %8901 = call float @dx.op.unary.f32(i32 7, float %8900)  ; Saturate(value)
  %8902 = fmul fast float %8442, %8897
  %8903 = fsub fast float -0.000000e+00, %8902
  %8904 = fmul fast float %8443, %8897
  %8905 = fsub fast float -0.000000e+00, %8904
  %8906 = call float @dx.op.unary.f32(i32 21, float %8903)  ; Exp(value)
  %8907 = call float @dx.op.unary.f32(i32 21, float %8905)  ; Exp(value)
  %8908 = call float @dx.op.binary.f32(i32 35, float %8450, float %8906)  ; FMax(a,b)
  %8909 = call float @dx.op.binary.f32(i32 35, float %8450, float %8907)  ; FMax(a,b)
  %8910 = fsub fast float %8909, %8908
  %8911 = fmul fast float %8910, %8901
  %8912 = fadd fast float %8911, %8908
  %8913 = call float @dx.op.unary.f32(i32 7, float %8912)  ; Saturate(value)
  %8914 = fsub fast float %8447, %8452
  %8915 = fsub fast float %8448, %8453
  %8916 = fsub fast float %8449, %8454
  %8917 = fmul fast float %8901, %8914
  %8918 = fmul fast float %8901, %8915
  %8919 = fmul fast float %8901, %8916
  %8920 = fadd fast float %8917, %8452
  %8921 = fadd fast float %8918, %8453
  %8922 = fadd fast float %8919, %8454
  %8923 = fsub fast float 1.000000e+00, %8913
  %8924 = fmul fast float %8923, %8920
  %8925 = fmul fast float %8923, %8921
  %8926 = fmul fast float %8923, %8922
  br label %8986

; <label>:8927                                    ; preds = %8886
  %8928 = fmul fast float %8897, %8459
  %8929 = call float @dx.op.unary.f32(i32 7, float %8928)  ; Saturate(value)
  %8930 = fsub fast float 2.000000e+00, %8929
  %8931 = fmul fast float %8929, 9.921875e-01
  %8932 = fmul fast float %8931, %8930
  %8933 = fadd fast float %8932, 3.906250e-03
  %8934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %8933, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8935 = extractvalue %dx.types.ResRet.f32 %8934, 0
  %8936 = fsub fast float %8929, %8935
  %8937 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8936)  ; FMax(a,b)
  %8938 = fmul fast float %8445, %8426
  %8939 = call float @dx.op.unary.f32(i32 6, float %8938)  ; FAbs(value)
  %8940 = fcmp fast ogt float %8939, 0x3EB0C6F7A0000000
  br i1 %8940, label %8941, label %8947, !dx.controlflow.hints !160

; <label>:8941                                    ; preds = %8927
  %8942 = fmul fast float %8938, 0xBFF7154760000000
  %8943 = call float @dx.op.unary.f32(i32 21, float %8942)  ; Exp(value)
  %8944 = fsub fast float 1.000000e+00, %8943
  %8945 = fdiv fast float %8944, %8938
  %8946 = fmul fast float %8945, %8455
  br label %8947

; <label>:8947                                    ; preds = %8941, %8927
  %8948 = phi float [ %8946, %8941 ], [ %8455, %8927 ]
  %8949 = fadd fast float %8948, %8457
  %8950 = fmul fast float %8949, %8937
  %8951 = fmul fast float %8442, %8950
  %8952 = fsub fast float -0.000000e+00, %8951
  %8953 = fmul fast float %8443, %8950
  %8954 = fsub fast float -0.000000e+00, %8953
  %8955 = fmul fast float %8444, %8950
  %8956 = fsub fast float -0.000000e+00, %8955
  %8957 = call float @dx.op.unary.f32(i32 21, float %8952)  ; Exp(value)
  %8958 = call float @dx.op.unary.f32(i32 21, float %8954)  ; Exp(value)
  %8959 = call float @dx.op.unary.f32(i32 21, float %8956)  ; Exp(value)
  %8960 = fmul fast float %8471, %8471
  %8961 = fadd fast float %8960, 1.000000e+00
  %8962 = fmul fast float %8961, 0x3FAE8EC8A0000000
  %8963 = fmul fast float %8962, %8452
  %8964 = fmul fast float %8962, %8453
  %8965 = fmul fast float %8962, %8454
  %8966 = fmul fast float %8471, %8450
  %8967 = fsub fast float 1.000000e+00, %8966
  %8968 = fmul fast float %8450, %8450
  %8969 = fsub fast float 1.000000e+00, %8968
  %8970 = fmul fast float %8969, 0x3FB45F3060000000
  %8971 = fmul fast float %8967, %8967
  %8972 = fdiv fast float 1.000000e+00, %8971
  %8973 = fmul fast float %8970, %8972
  %8974 = fmul fast float %8973, %8447
  %8975 = fmul fast float %8973, %8448
  %8976 = fmul fast float %8973, %8449
  %8977 = fadd fast float %8974, %8963
  %8978 = fadd fast float %8975, %8964
  %8979 = fadd fast float %8976, %8965
  %8980 = fsub fast float 1.000000e+00, %8957
  %8981 = fsub fast float 1.000000e+00, %8958
  %8982 = fsub fast float 1.000000e+00, %8959
  %8983 = fmul fast float %8977, %8980
  %8984 = fmul fast float %8978, %8981
  %8985 = fmul fast float %8979, %8982
  br label %8986

; <label>:8986                                    ; preds = %8947, %8898
  %8987 = phi float [ %8924, %8898 ], [ %8983, %8947 ]
  %8988 = phi float [ %8925, %8898 ], [ %8984, %8947 ]
  %8989 = phi float [ %8926, %8898 ], [ %8985, %8947 ]
  %8990 = phi float [ %8913, %8898 ], [ %8957, %8947 ]
  %8991 = phi float [ %8913, %8898 ], [ %8958, %8947 ]
  %8992 = phi float [ %8913, %8898 ], [ %8959, %8947 ]
  br i1 %8479, label %8993, label %9191, !dx.controlflow.hints !161

; <label>:8993                                    ; preds = %8986
  %8994 = extractvalue %dx.types.CBufRet.f32 %8892, 0
  %8995 = fmul fast float %8994, %8894
  %8996 = fsub fast float %8889, %8987
  %8997 = fsub fast float %8890, %8988
  %8998 = fsub fast float %8891, %8989
  %8999 = fmul fast float %8995, %8996
  %9000 = fmul fast float %8995, %8997
  %9001 = fmul fast float %8995, %8998
  %9002 = fadd fast float %8999, %8987
  %9003 = fadd fast float %9000, %8988
  %9004 = fadd fast float %9001, %8989
  %9005 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8990)  ; FMax(a,b)
  %9006 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8991)  ; FMax(a,b)
  %9007 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8992)  ; FMax(a,b)
  %9008 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8888)  ; FMax(a,b)
  %9009 = call float @dx.op.binary.f32(i32 35, float %8887, float %8897)  ; FMax(a,b)
  %9010 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9009)  ; FMax(a,b)
  %9011 = fdiv fast float %8887, %9010
  %9012 = call float @dx.op.unary.f32(i32 7, float %9011)  ; Saturate(value)
  %9013 = fdiv fast float %8897, %9010
  %9014 = call float @dx.op.unary.f32(i32 7, float %9013)  ; Saturate(value)
  %9015 = fcmp fast une float %9008, 1.000000e+00
  br i1 %9015, label %9016, label %9029, !dx.controlflow.hints !162

; <label>:9016                                    ; preds = %8993
  %9017 = call float @dx.op.unary.f32(i32 23, float %9008)  ; Log(value)
  %9018 = fmul fast float %9017, 0x3FE62E4300000000
  %9019 = fmul fast float %8889, %9018
  %9020 = fsub fast float -0.000000e+00, %9019
  %9021 = fmul fast float %8890, %9018
  %9022 = fsub fast float -0.000000e+00, %9021
  %9023 = fmul fast float %8891, %9018
  %9024 = fsub fast float -0.000000e+00, %9023
  %9025 = fsub fast float 1.000000e+00, %9008
  %9026 = fdiv fast float %9020, %9025
  %9027 = fdiv fast float %9022, %9025
  %9028 = fdiv fast float %9024, %9025
  br label %9029

; <label>:9029                                    ; preds = %9016, %8993
  %9030 = phi float [ %9026, %9016 ], [ %8889, %8993 ]
  %9031 = phi float [ %9027, %9016 ], [ %8890, %8993 ]
  %9032 = phi float [ %9028, %9016 ], [ %8891, %8993 ]
  %9033 = phi float [ %9018, %9016 ], [ 0.000000e+00, %8993 ]
  %9034 = fcmp fast une float %9005, 1.000000e+00
  br i1 %9034, label %9035, label %9042, !dx.controlflow.hints !163

; <label>:9035                                    ; preds = %9029
  %9036 = call float @dx.op.unary.f32(i32 23, float %9005)  ; Log(value)
  %9037 = fmul fast float %9036, 0x3FE62E4300000000
  %9038 = fmul fast float %9002, %9037
  %9039 = fsub fast float -0.000000e+00, %9038
  %9040 = fsub fast float 1.000000e+00, %9005
  %9041 = fdiv fast float %9039, %9040
  br label %9042

; <label>:9042                                    ; preds = %9035, %9029
  %9043 = phi float [ %9041, %9035 ], [ %9002, %9029 ]
  %9044 = phi float [ %9037, %9035 ], [ 0.000000e+00, %9029 ]
  %9045 = fcmp fast une float %9006, 1.000000e+00
  br i1 %9045, label %9046, label %9053, !dx.controlflow.hints !163

; <label>:9046                                    ; preds = %9042
  %9047 = call float @dx.op.unary.f32(i32 23, float %9006)  ; Log(value)
  %9048 = fmul fast float %9047, 0x3FE62E4300000000
  %9049 = fmul fast float %9003, %9048
  %9050 = fsub fast float -0.000000e+00, %9049
  %9051 = fsub fast float 1.000000e+00, %9006
  %9052 = fdiv fast float %9050, %9051
  br label %9053

; <label>:9053                                    ; preds = %9046, %9042
  %9054 = phi float [ %9052, %9046 ], [ %9003, %9042 ]
  %9055 = phi float [ %9048, %9046 ], [ 0.000000e+00, %9042 ]
  %9056 = fcmp fast une float %9007, 1.000000e+00
  br i1 %9056, label %9057, label %9064, !dx.controlflow.hints !163

; <label>:9057                                    ; preds = %9053
  %9058 = call float @dx.op.unary.f32(i32 23, float %9007)  ; Log(value)
  %9059 = fmul fast float %9058, 0x3FE62E4300000000
  %9060 = fmul fast float %9004, %9059
  %9061 = fsub fast float -0.000000e+00, %9060
  %9062 = fsub fast float 1.000000e+00, %9007
  %9063 = fdiv fast float %9061, %9062
  br label %9064

; <label>:9064                                    ; preds = %9057, %9053
  %9065 = phi float [ %9063, %9057 ], [ %9004, %9053 ]
  %9066 = phi float [ %9059, %9057 ], [ 0.000000e+00, %9053 ]
  %9067 = fmul fast float %9030, %9014
  %9068 = fmul fast float %9031, %9014
  %9069 = fmul fast float %9032, %9014
  %9070 = fmul fast float %9033, %9014
  %9071 = fmul fast float %9043, %9012
  %9072 = fmul fast float %9054, %9012
  %9073 = fmul fast float %9065, %9012
  %9074 = fmul fast float %9044, %9012
  %9075 = fmul fast float %9055, %9012
  %9076 = fmul fast float %9066, %9012
  %9077 = fadd fast float %9071, %9067
  %9078 = fadd fast float %9072, %9068
  %9079 = fadd fast float %9073, %9069
  %9080 = fadd fast float %9074, %9070
  %9081 = fadd fast float %9075, %9070
  %9082 = fadd fast float %9076, %9070
  %9083 = fcmp fast une float %9080, 0.000000e+00
  br i1 %9083, label %9084, label %9091, !dx.controlflow.hints !164

; <label>:9084                                    ; preds = %9064
  %9085 = fmul fast float %9080, 0x3FF7154760000000
  %9086 = call float @dx.op.unary.f32(i32 21, float %9085)  ; Exp(value)
  %9087 = fsub fast float 1.000000e+00, %9086
  %9088 = fmul fast float %9077, %9087
  %9089 = fsub fast float -0.000000e+00, %9088
  %9090 = fdiv fast float %9089, %9080
  br label %9091

; <label>:9091                                    ; preds = %9084, %9064
  %9092 = phi float [ %9086, %9084 ], [ 1.000000e+00, %9064 ]
  %9093 = phi float [ %9090, %9084 ], [ %9077, %9064 ]
  %9094 = fcmp fast une float %9081, 0.000000e+00
  br i1 %9094, label %9095, label %9102, !dx.controlflow.hints !164

; <label>:9095                                    ; preds = %9091
  %9096 = fmul fast float %9081, 0x3FF7154760000000
  %9097 = call float @dx.op.unary.f32(i32 21, float %9096)  ; Exp(value)
  %9098 = fsub fast float 1.000000e+00, %9097
  %9099 = fmul fast float %9078, %9098
  %9100 = fsub fast float -0.000000e+00, %9099
  %9101 = fdiv fast float %9100, %9081
  br label %9102

; <label>:9102                                    ; preds = %9095, %9091
  %9103 = phi float [ %9097, %9095 ], [ 1.000000e+00, %9091 ]
  %9104 = phi float [ %9101, %9095 ], [ %9078, %9091 ]
  %9105 = fcmp fast une float %9082, 0.000000e+00
  br i1 %9105, label %9106, label %9113, !dx.controlflow.hints !164

; <label>:9106                                    ; preds = %9102
  %9107 = fmul fast float %9082, 0x3FF7154760000000
  %9108 = call float @dx.op.unary.f32(i32 21, float %9107)  ; Exp(value)
  %9109 = fsub fast float 1.000000e+00, %9108
  %9110 = fmul fast float %9079, %9109
  %9111 = fsub fast float -0.000000e+00, %9110
  %9112 = fdiv fast float %9111, %9082
  br label %9113

; <label>:9113                                    ; preds = %9106, %9102
  %9114 = phi float [ %9108, %9106 ], [ 1.000000e+00, %9102 ]
  %9115 = phi float [ %9112, %9106 ], [ %9079, %9102 ]
  %9116 = fcmp fast ogt float %9012, %9014
  br i1 %9116, label %9117, label %9137

; <label>:9117                                    ; preds = %9113
  %9118 = fsub fast float 1.000000e+00, %9014
  %9119 = fmul fast float %9030, %9118
  %9120 = fmul fast float %9031, %9118
  %9121 = fmul fast float %9032, %9118
  %9122 = fmul fast float %9033, %9118
  %9123 = fcmp fast une float %9122, 0.000000e+00
  br i1 %9123, label %9124, label %9175, !dx.controlflow.hints !165

; <label>:9124                                    ; preds = %9117
  %9125 = fmul fast float %9122, 0x3FF7154760000000
  %9126 = call float @dx.op.unary.f32(i32 21, float %9125)  ; Exp(value)
  %9127 = fsub fast float 1.000000e+00, %9126
  %9128 = fmul fast float %9119, %9127
  %9129 = fsub fast float -0.000000e+00, %9128
  %9130 = fmul fast float %9120, %9127
  %9131 = fsub fast float -0.000000e+00, %9130
  %9132 = fmul fast float %9121, %9127
  %9133 = fsub fast float -0.000000e+00, %9132
  %9134 = fdiv fast float %9129, %9122
  %9135 = fdiv fast float %9131, %9122
  %9136 = fdiv fast float %9133, %9122
  br label %9175

; <label>:9137                                    ; preds = %9113
  %9138 = fsub fast float 1.000000e+00, %9012
  %9139 = fmul fast float %9043, %9138
  %9140 = fmul fast float %9054, %9138
  %9141 = fmul fast float %9065, %9138
  %9142 = fmul fast float %9044, %9138
  %9143 = fmul fast float %9055, %9138
  %9144 = fmul fast float %9066, %9138
  %9145 = fcmp fast une float %9142, 0.000000e+00
  br i1 %9145, label %9146, label %9153, !dx.controlflow.hints !164

; <label>:9146                                    ; preds = %9137
  %9147 = fmul fast float %9142, 0x3FF7154760000000
  %9148 = call float @dx.op.unary.f32(i32 21, float %9147)  ; Exp(value)
  %9149 = fsub fast float 1.000000e+00, %9148
  %9150 = fmul fast float %9139, %9149
  %9151 = fsub fast float -0.000000e+00, %9150
  %9152 = fdiv fast float %9151, %9142
  br label %9153

; <label>:9153                                    ; preds = %9146, %9137
  %9154 = phi float [ %9152, %9146 ], [ %9139, %9137 ]
  %9155 = phi float [ %9148, %9146 ], [ 1.000000e+00, %9137 ]
  %9156 = fcmp fast une float %9143, 0.000000e+00
  br i1 %9156, label %9157, label %9164, !dx.controlflow.hints !164

; <label>:9157                                    ; preds = %9153
  %9158 = fmul fast float %9143, 0x3FF7154760000000
  %9159 = call float @dx.op.unary.f32(i32 21, float %9158)  ; Exp(value)
  %9160 = fsub fast float 1.000000e+00, %9159
  %9161 = fmul fast float %9140, %9160
  %9162 = fsub fast float -0.000000e+00, %9161
  %9163 = fdiv fast float %9162, %9143
  br label %9164

; <label>:9164                                    ; preds = %9157, %9153
  %9165 = phi float [ %9163, %9157 ], [ %9140, %9153 ]
  %9166 = phi float [ %9159, %9157 ], [ 1.000000e+00, %9153 ]
  %9167 = fcmp fast une float %9144, 0.000000e+00
  br i1 %9167, label %9168, label %9175, !dx.controlflow.hints !164

; <label>:9168                                    ; preds = %9164
  %9169 = fmul fast float %9144, 0x3FF7154760000000
  %9170 = call float @dx.op.unary.f32(i32 21, float %9169)  ; Exp(value)
  %9171 = fsub fast float 1.000000e+00, %9170
  %9172 = fmul fast float %9141, %9171
  %9173 = fsub fast float -0.000000e+00, %9172
  %9174 = fdiv fast float %9173, %9144
  br label %9175

; <label>:9175                                    ; preds = %9168, %9164, %9124, %9117
  %9176 = phi float [ %9174, %9168 ], [ %9136, %9124 ], [ %9121, %9117 ], [ %9141, %9164 ]
  %9177 = phi float [ %9165, %9168 ], [ %9135, %9124 ], [ %9120, %9117 ], [ %9165, %9164 ]
  %9178 = phi float [ %9154, %9168 ], [ %9134, %9124 ], [ %9119, %9117 ], [ %9154, %9164 ]
  %9179 = phi float [ %9170, %9168 ], [ %9126, %9124 ], [ 1.000000e+00, %9117 ], [ 1.000000e+00, %9164 ]
  %9180 = phi float [ %9166, %9168 ], [ %9126, %9124 ], [ 1.000000e+00, %9117 ], [ %9166, %9164 ]
  %9181 = phi float [ %9155, %9168 ], [ %9126, %9124 ], [ 1.000000e+00, %9117 ], [ %9155, %9164 ]
  %9182 = fmul fast float %9181, %9093
  %9183 = fmul fast float %9180, %9104
  %9184 = fmul fast float %9179, %9115
  %9185 = fadd fast float %9182, %9178
  %9186 = fadd fast float %9183, %9177
  %9187 = fadd fast float %9184, %9176
  %9188 = fmul fast float %9181, %9092
  %9189 = fmul fast float %9180, %9103
  %9190 = fmul fast float %9179, %9114
  br label %9191

; <label>:9191                                    ; preds = %9175, %8986
  %9192 = phi float [ %9190, %9175 ], [ %8992, %8986 ]
  %9193 = phi float [ %9189, %9175 ], [ %8991, %8986 ]
  %9194 = phi float [ %9188, %9175 ], [ %8990, %8986 ]
  %9195 = phi float [ %9187, %9175 ], [ %8989, %8986 ]
  %9196 = phi float [ %9186, %9175 ], [ %8988, %8986 ]
  %9197 = phi float [ %9185, %9175 ], [ %8987, %8986 ]
  %9198 = fmul fast float %9197, %8143
  %9199 = fmul fast float %9196, %8143
  %9200 = fmul fast float %9195, %8143
  %9201 = fmul fast float %9194, %8434
  %9202 = call float @dx.op.dot3.f32(i32 55, float %9194, float %9193, float %9192, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9203 = call float @dx.op.dot3.f32(i32 55, float %9198, float %9199, float %9200, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9204 = select i1 %217, float %9202, float %9194
  %9205 = select i1 %217, float %9202, float %9193
  %9206 = select i1 %217, float 1.000000e+00, float %9192
  %9207 = select i1 %217, float %9203, float %9198
  %9208 = select i1 %217, float 0.000000e+00, float %9199
  %9209 = select i1 %217, float 0.000000e+00, float %9200
  %9210 = fmul fast float %9204, %8428
  %9211 = fmul fast float %9205, %8429
  %9212 = fmul fast float %9206, %8430
  %9213 = fadd fast float %9210, %9207
  %9214 = fadd fast float %9211, %9208
  %9215 = fadd fast float %9209, %9212
  %9216 = fmul fast float %9204, %8431
  %9217 = fmul fast float %9205, %8432
  %9218 = fmul fast float %9206, %8433
  %9219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9220 = extractvalue %dx.types.CBufRet.i32 %9219, 0
  %9221 = icmp eq i32 %9220, 0
  br i1 %9221, label %9589, label %9222, !dx.controlflow.hints !166

; <label>:9222                                    ; preds = %9191
  %9223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9224 = extractvalue %dx.types.CBufRet.f32 %9223, 2
  %9225 = extractvalue %dx.types.CBufRet.f32 %9223, 3
  %9226 = fmul fast float %9224, %100
  %9227 = fmul fast float %9225, %101
  %9228 = fmul fast float %9226, 2.000000e+00
  %9229 = fmul fast float %9227, 2.000000e+00
  %9230 = fsub fast float 1.000000e+00, %9228
  %9231 = fsub fast float 1.000000e+00, %9229
  %9232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9233 = extractvalue %dx.types.CBufRet.f32 %9232, 0
  %9234 = extractvalue %dx.types.CBufRet.f32 %9232, 1
  %9235 = extractvalue %dx.types.CBufRet.f32 %9232, 2
  %9236 = fmul fast float %9230, %9233
  %9237 = fmul fast float %9230, %9234
  %9238 = fmul fast float %9230, %9235
  %9239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9240 = extractvalue %dx.types.CBufRet.f32 %9239, 0
  %9241 = extractvalue %dx.types.CBufRet.f32 %9239, 1
  %9242 = extractvalue %dx.types.CBufRet.f32 %9239, 2
  %9243 = fmul fast float %9231, %9240
  %9244 = fmul fast float %9231, %9241
  %9245 = fmul fast float %9231, %9242
  %9246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9247 = extractvalue %dx.types.CBufRet.f32 %9246, 0
  %9248 = extractvalue %dx.types.CBufRet.f32 %9246, 1
  %9249 = extractvalue %dx.types.CBufRet.f32 %9246, 2
  %9250 = fadd fast float %9243, %9247
  %9251 = fadd fast float %9250, %9236
  %9252 = fadd fast float %9244, %9248
  %9253 = fadd fast float %9252, %9237
  %9254 = fadd fast float %9245, %9249
  %9255 = fadd fast float %9254, %9238
  %9256 = fmul fast float %9251, %8427
  %9257 = fmul fast float %9253, %8427
  %9258 = fmul fast float %9255, %8427
  %9259 = fmul fast float %9256, %9256
  %9260 = fmul fast float %9257, %9257
  %9261 = fadd fast float %9259, %9260
  %9262 = fmul fast float %9258, %9258
  %9263 = fadd fast float %9261, %9262
  %9264 = call float @dx.op.unary.f32(i32 24, float %9263)  ; Sqrt(value)
  %9265 = extractvalue %dx.types.CBufRet.f32 %8154, 0
  %9266 = fsub fast float %9264, %9265
  %9267 = extractvalue %dx.types.CBufRet.f32 %8154, 2
  %9268 = fmul fast float %9266, %9267
  %9269 = call float @dx.op.unary.f32(i32 7, float %9268)  ; Saturate(value)
  %9270 = fadd fast float %9269, -5.000000e-01
  %9271 = fmul fast float %9270, 2.000000e+00
  %9272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9273 = extractvalue %dx.types.CBufRet.f32 %9272, 2
  %9274 = call float @dx.op.binary.f32(i32 36, float %9273, float %9271)  ; FMin(a,b)
  %9275 = fsub fast float -0.000000e+00, %9273
  %9276 = fcmp fast ogt float %9274, %9275
  br i1 %9276, label %9277, label %9589, !dx.controlflow.hints !167

; <label>:9277                                    ; preds = %9222
  %9278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9279 = extractvalue %dx.types.CBufRet.f32 %9278, 3
  %9280 = fcmp fast ogt float %9279, 0.000000e+00
  br i1 %9280, label %9281, label %9356, !dx.controlflow.hints !168

; <label>:9281                                    ; preds = %9277
  %9282 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %9283 = extractvalue %dx.types.Dimensions %9282, 0
  %9284 = sitofp i32 %9283 to float
  %9285 = extractvalue %dx.types.Dimensions %9282, 1
  %9286 = sitofp i32 %9285 to float
  %9287 = fmul fast float %9226, %9284
  %9288 = fmul fast float %9227, %9286
  %9289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9290 = extractvalue %dx.types.CBufRet.f32 %9289, 1
  %9291 = fsub fast float -0.000000e+00, %9290
  %9292 = fptoui float %9291 to i32
  %9293 = fptoui float %9287 to i32
  %9294 = fptoui float %9288 to i32
  %9295 = and i32 %9292, 31
  %9296 = lshr i32 %9293, %9295
  %9297 = lshr i32 %9294, %9295
  %9298 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %9292, i32 %9296, i32 %9297, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9299 = extractvalue %dx.types.ResRet.f32 %9298, 0
  %9300 = fcmp fast olt float %9299, -1.000000e+00
  %9301 = fcmp fast ogt float %9299, -1.000000e+00
  %9302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9303 = extractvalue %dx.types.CBufRet.f32 %9302, 1
  %9304 = select i1 %9301, float %9303, float 1.000000e+00
  %9305 = fadd fast float %9299, 1.000000e+00
  %9306 = fmul fast float %9304, %9305
  %9307 = call float @dx.op.unary.f32(i32 6, float %9306)  ; FAbs(value)
  %9308 = extractvalue %dx.types.CBufRet.f32 %9302, 3
  %9309 = fcmp fast oge float %9307, %9308
  %9310 = select i1 %9309, float 0x4197782600000000, float %9307
  %9311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9312 = extractvalue %dx.types.CBufRet.f32 %9311, 0
  %9313 = extractvalue %dx.types.CBufRet.f32 %9311, 1
  %9314 = extractvalue %dx.types.CBufRet.f32 %9311, 2
  %9315 = select i1 %9300, float %9312, float %9233
  %9316 = select i1 %9300, float %9313, float %9234
  %9317 = select i1 %9300, float %9314, float %9235
  %9318 = fmul fast float %9315, %9230
  %9319 = fmul fast float %9316, %9230
  %9320 = fmul fast float %9317, %9230
  %9321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9322 = extractvalue %dx.types.CBufRet.f32 %9321, 0
  %9323 = extractvalue %dx.types.CBufRet.f32 %9321, 1
  %9324 = extractvalue %dx.types.CBufRet.f32 %9321, 2
  %9325 = select i1 %9300, float %9322, float %9240
  %9326 = select i1 %9300, float %9323, float %9241
  %9327 = select i1 %9300, float %9324, float %9242
  %9328 = fmul fast float %9325, %9231
  %9329 = fmul fast float %9326, %9231
  %9330 = fmul fast float %9327, %9231
  %9331 = fadd fast float %9328, %9318
  %9332 = fadd fast float %9329, %9319
  %9333 = fadd fast float %9330, %9320
  %9334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9335 = extractvalue %dx.types.CBufRet.f32 %9334, 0
  %9336 = extractvalue %dx.types.CBufRet.f32 %9334, 1
  %9337 = extractvalue %dx.types.CBufRet.f32 %9334, 2
  %9338 = select i1 %9300, float %9335, float %9247
  %9339 = select i1 %9300, float %9336, float %9248
  %9340 = select i1 %9300, float %9337, float %9249
  %9341 = fadd fast float %9331, %9338
  %9342 = fadd fast float %9332, %9339
  %9343 = fadd fast float %9333, %9340
  %9344 = fmul fast float %9341, %9310
  %9345 = fmul fast float %9342, %9310
  %9346 = fmul fast float %9343, %9310
  %9347 = fmul fast float %9344, %9344
  %9348 = fmul fast float %9345, %9345
  %9349 = fadd fast float %9347, %9348
  %9350 = fmul fast float %9346, %9346
  %9351 = fadd fast float %9349, %9350
  %9352 = call float @dx.op.unary.f32(i32 24, float %9351)  ; Sqrt(value)
  %9353 = fsub fast float %9352, %9265
  %9354 = fmul fast float %9353, %9267
  %9355 = call float @dx.op.unary.f32(i32 7, float %9354)  ; Saturate(value)
  br label %9356

; <label>:9356                                    ; preds = %9281, %9277
  %9357 = phi float [ %9355, %9281 ], [ 1.000000e+00, %9277 ]
  %9358 = fmul fast float %9274, 5.000000e-01
  %9359 = fadd fast float %9358, 5.000000e-01
  %9360 = call float @dx.op.unary.f32(i32 22, float %9359)  ; Frc(value)
  %9361 = call float @dx.op.unary.f32(i32 27, float %9360)  ; Round_ni(value)
  %9362 = call float @dx.op.unary.f32(i32 22, float %9360)  ; Frc(value)
  %9363 = fmul fast float %9362, 2.000000e+00
  %9364 = fadd fast float %9363, -1.000000e+00
  %9365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %9226, float %9227, float %9361, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9366 = extractvalue %dx.types.ResRet.f32 %9365, 0
  %9367 = extractvalue %dx.types.ResRet.f32 %9365, 1
  %9368 = extractvalue %dx.types.ResRet.f32 %9365, 2
  %9369 = extractvalue %dx.types.ResRet.f32 %9365, 3
  %9370 = fadd fast float %9366, -5.000000e-01
  %9371 = fadd fast float %9368, -5.000000e-01
  %9372 = fmul fast float %9370, 0xBFD5555560000000
  %9373 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9371, float %9372)  ; FMad(a,b,c)
  %9374 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9367, float 0.000000e+00)  ; FMad(a,b,c)
  %9375 = fadd fast float %9374, %9369
  %9376 = fmul fast float %9370, -7.500000e-01
  %9377 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9371, float %9376)  ; FMad(a,b,c)
  %9378 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9367, float 0.000000e+00)  ; FMad(a,b,c)
  %9379 = fadd fast float %9378, %9369
  %9380 = call float @dx.op.binary.f32(i32 35, float %9373, float -1.000000e+00)  ; FMax(a,b)
  %9381 = call float @dx.op.binary.f32(i32 35, float %9375, float -1.000000e+00)  ; FMax(a,b)
  %9382 = call float @dx.op.binary.f32(i32 35, float %9377, float -1.000000e+00)  ; FMax(a,b)
  %9383 = call float @dx.op.binary.f32(i32 35, float %9379, float -1.000000e+00)  ; FMax(a,b)
  %9384 = call float @dx.op.binary.f32(i32 36, float %9380, float 1.000000e+00)  ; FMin(a,b)
  %9385 = call float @dx.op.binary.f32(i32 36, float %9381, float 1.000000e+00)  ; FMin(a,b)
  %9386 = call float @dx.op.binary.f32(i32 36, float %9382, float 1.000000e+00)  ; FMin(a,b)
  %9387 = call float @dx.op.binary.f32(i32 36, float %9383, float 1.000000e+00)  ; FMin(a,b)
  %9388 = fcmp fast olt float %9384, 0x3FEFFF8020000000
  br i1 %9388, label %9389, label %9504, !dx.controlflow.hints !169

; <label>:9389                                    ; preds = %9356
  %9390 = extractvalue %dx.types.CBufRet.f32 %9272, 3
  %9391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9392 = extractvalue %dx.types.CBufRet.f32 %9391, 0
  %9393 = extractvalue %dx.types.CBufRet.f32 %9391, 1
  %9394 = extractvalue %dx.types.CBufRet.f32 %9391, 2
  %9395 = extractvalue %dx.types.CBufRet.f32 %9391, 3
  %9396 = fsub fast float %9392, %9384
  %9397 = fsub fast float %9393, %9385
  %9398 = fsub fast float %9394, %9386
  %9399 = fsub fast float %9395, %9387
  %9400 = fmul fast float %9396, %9390
  %9401 = fmul fast float %9397, %9390
  %9402 = fmul fast float %9398, %9390
  %9403 = fmul fast float %9399, %9390
  %9404 = fadd fast float %9400, %9384
  %9405 = fadd fast float %9401, %9385
  %9406 = fsub fast float -0.000000e+00, %9405
  %9407 = fadd fast float %9402, %9386
  %9408 = fadd fast float %9403, %9387
  %9409 = fmul fast float %9404, %9404
  %9410 = fsub fast float %9405, %9409
  %9411 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9410)  ; FMax(a,b)
  %9412 = fdiv fast float 1.000000e+00, %9411
  %9413 = fmul fast float %9405, %9404
  %9414 = fsub fast float %9407, %9413
  %9415 = fsub fast float %9364, %9404
  %9416 = fmul fast float %9364, %9364
  %9417 = fsub fast float %9416, %9405
  %9418 = fmul fast float %9415, %9412
  %9419 = fmul fast float %9418, %9414
  %9420 = fsub fast float %9417, %9419
  %9421 = fmul fast float %9405, %9405
  %9422 = fsub fast float %9408, %9421
  %9423 = fmul fast float %9414, %9414
  %9424 = fmul fast float %9423, %9412
  %9425 = fsub fast float %9422, %9424
  %9426 = fdiv fast float %9420, %9425
  %9427 = fmul fast float %9414, %9426
  %9428 = fsub fast float %9415, %9427
  %9429 = fmul fast float %9428, %9412
  %9430 = fmul fast float %9429, %9404
  %9431 = fsub fast float 1.000000e+00, %9430
  %9432 = fmul fast float %9405, %9426
  %9433 = fsub fast float %9431, %9432
  %9434 = fmul fast float %9429, %9429
  %9435 = fmul fast float %9426, 4.000000e+00
  %9436 = fmul fast float %9435, %9433
  %9437 = fsub fast float %9434, %9436
  %9438 = call float @dx.op.unary.f32(i32 24, float %9437)  ; Sqrt(value)
  %9439 = fcmp fast oge float %9429, 0.000000e+00
  %9440 = fsub fast float -0.000000e+00, %9438
  %9441 = select i1 %9439, float %9440, float %9438
  %9442 = fsub fast float %9441, %9429
  %9443 = fdiv fast float %9442, %9426
  %9444 = fdiv fast float %9433, %9442
  %9445 = fmul fast float %9443, 5.000000e-01
  %9446 = fmul fast float %9444, 2.000000e+00
  %9447 = select i1 %9439, float %9445, float %9446
  %9448 = select i1 %9439, float %9446, float %9445
  %9449 = call float @dx.op.binary.f32(i32 35, float %9447, float %9448)  ; FMax(a,b)
  %9450 = call float @dx.op.binary.f32(i32 36, float %9447, float %9448)  ; FMin(a,b)
  %9451 = fcmp fast ogt float %9364, %9450
  br i1 %9451, label %9452, label %9462

; <label>:9452                                    ; preds = %9389
  %9453 = fsub fast float %9364, %9450
  %9454 = fsub fast float %9449, %9450
  %9455 = fmul fast float %9453, %9454
  %9456 = fmul fast float %9449, %9364
  %9457 = fadd fast float %9449, %9364
  %9458 = fmul fast float %9457, %9404
  %9459 = fadd fast float %9456, %9405
  %9460 = fsub fast float %9459, %9458
  %9461 = fdiv fast float %9460, %9455
  br label %9462

; <label>:9462                                    ; preds = %9452, %9389
  %9463 = phi float [ %9461, %9452 ], [ 0.000000e+00, %9389 ]
  %9464 = fcmp fast ogt float %9364, %9449
  %9465 = fsub fast float %9364, %9449
  br i1 %9464, label %9466, label %9476

; <label>:9466                                    ; preds = %9462
  %9467 = fsub fast float %9449, %9450
  %9468 = fmul fast float %9467, %9465
  %9469 = fmul fast float %9450, %9364
  %9470 = fadd fast float %9450, %9364
  %9471 = fmul fast float %9470, %9404
  %9472 = fsub fast float %9406, %9469
  %9473 = fadd fast float %9472, %9471
  %9474 = fdiv fast float %9473, %9468
  %9475 = fadd fast float %9474, %9463
  br label %9476

; <label>:9476                                    ; preds = %9466, %9462
  %9477 = phi float [ %9475, %9466 ], [ %9463, %9462 ]
  %9478 = fsub fast float %9364, %9450
  %9479 = fmul fast float %9478, %9465
  %9480 = fmul fast float %9450, %9449
  %9481 = fadd fast float %9450, %9449
  %9482 = fmul fast float %9481, %9404
  %9483 = fadd fast float %9480, %9405
  %9484 = fsub fast float %9483, %9482
  %9485 = fdiv fast float %9484, %9479
  %9486 = call float @dx.op.unary.f32(i32 7, float %9477)  ; Saturate(value)
  %9487 = fcmp fast oeq float %8155, 0.000000e+00
  %9488 = extractvalue %dx.types.CBufRet.f32 %9272, 0
  %9489 = fcmp fast oeq float %9488, 0.000000e+00
  %9490 = or i1 %9487, %9489
  %9491 = fmul fast float %9488, 2.000000e+00
  %9492 = fadd fast float %9273, %9274
  %9493 = fdiv fast float %9492, %9491
  %9494 = call float @dx.op.unary.f32(i32 7, float %9493)  ; Saturate(value)
  %9495 = fmul fast float %9494, 2.000000e+00
  %9496 = fsub fast float 3.000000e+00, %9495
  %9497 = fmul fast float %9494, %9494
  %9498 = fmul fast float %9497, %9496
  %9499 = select i1 %9490, float 1.000000e+00, float %9498
  %9500 = fmul fast float %9485, %8155
  %9501 = fadd fast float %9486, %9500
  %9502 = call float @dx.op.unary.f32(i32 7, float %9501)  ; Saturate(value)
  %9503 = fmul fast float %9499, %9502
  br label %9504

; <label>:9504                                    ; preds = %9476, %9356
  %9505 = phi float [ %9503, %9476 ], [ 0.000000e+00, %9356 ]
  %9506 = fsub fast float 1.000000e+00, %9505
  %9507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %9226, float %9227, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9508 = extractvalue %dx.types.ResRet.f32 %9507, 0
  %9509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9510 = extractvalue %dx.types.CBufRet.i32 %9509, 2
  %9511 = icmp eq i32 %9510, 0
  br i1 %9511, label %9517, label %9512

; <label>:9512                                    ; preds = %9504
  %9513 = call float @dx.op.unary.f32(i32 7, float %9505)  ; Saturate(value)
  %9514 = fadd fast float %9508, -1.000000e+00
  %9515 = fmul fast float %9513, %9514
  %9516 = fadd fast float %9515, 1.000000e+00
  br label %9517

; <label>:9517                                    ; preds = %9512, %9504
  %9518 = phi float [ %9516, %9512 ], [ %9506, %9504 ]
  br i1 %9280, label %9519, label %9537

; <label>:9519                                    ; preds = %9517
  %9520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9521 = extractvalue %dx.types.CBufRet.f32 %9520, 1
  %9522 = fsub fast float %9357, %9521
  %9523 = call float @dx.op.unary.f32(i32 7, float %9522)  ; Saturate(value)
  %9524 = fsub fast float %9357, %9279
  %9525 = call float @dx.op.unary.f32(i32 7, float %9524)  ; Saturate(value)
  %9526 = fsub fast float %9523, %9525
  %9527 = fsub fast float %9359, %9525
  %9528 = fdiv fast float %9527, %9526
  %9529 = call float @dx.op.unary.f32(i32 7, float %9528)  ; Saturate(value)
  %9530 = fmul fast float %9529, 2.000000e+00
  %9531 = fsub fast float 3.000000e+00, %9530
  %9532 = fsub fast float %9508, %9518
  %9533 = fmul fast float %9529, %9529
  %9534 = fmul fast float %9533, %9532
  %9535 = fmul fast float %9534, %9531
  %9536 = fadd fast float %9535, %9518
  br label %9537

; <label>:9537                                    ; preds = %9519, %9517
  %9538 = phi float [ %9536, %9519 ], [ %9518, %9517 ]
  %9539 = call float @dx.op.binary.f32(i32 35, float %9508, float %9538)  ; FMax(a,b)
  %9540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9541 = extractvalue %dx.types.CBufRet.i32 %9540, 2
  %9542 = and i32 %9541, 1
  %9543 = icmp eq i32 %9542, 0
  %9544 = fcmp fast une float %9539, 1.000000e+00
  %9545 = and i1 %9544, %9543
  br i1 %9545, label %9546, label %9565

; <label>:9546                                    ; preds = %9537
  %9547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %9226, float %9227, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9548 = extractvalue %dx.types.ResRet.f32 %9547, 0
  %9549 = extractvalue %dx.types.ResRet.f32 %9547, 1
  %9550 = extractvalue %dx.types.ResRet.f32 %9547, 2
  %9551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9552 = extractvalue %dx.types.CBufRet.f32 %9551, 1
  %9553 = fmul fast float %9552, %9548
  %9554 = fmul fast float %9552, %9549
  %9555 = fmul fast float %9552, %9550
  %9556 = fcmp fast ogt float %9508, 0x3FEFFF2E40000000
  %9557 = fsub fast float 1.000000e+00, %9539
  %9558 = fsub fast float 1.000000e+00, %9508
  %9559 = fdiv fast float %9557, %9558
  %9560 = call float @dx.op.unary.f32(i32 7, float %9559)  ; Saturate(value)
  %9561 = select i1 %9556, float 0.000000e+00, float %9560
  %9562 = fmul fast float %9553, %9561
  %9563 = fmul fast float %9554, %9561
  %9564 = fmul fast float %9555, %9561
  br label %9565

; <label>:9565                                    ; preds = %9546, %9537
  %9566 = phi float [ 0.000000e+00, %9537 ], [ %9562, %9546 ]
  %9567 = phi float [ 0.000000e+00, %9537 ], [ %9563, %9546 ]
  %9568 = phi float [ 0.000000e+00, %9537 ], [ %9564, %9546 ]
  %9569 = fmul fast float %9566, %8143
  %9570 = fmul fast float %9567, %8143
  %9571 = fmul fast float %9568, %8143
  %9572 = fmul fast float %9539, %9201
  %9573 = call float @dx.op.dot3.f32(i32 55, float %9539, float %9539, float %9539, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9574 = call float @dx.op.dot3.f32(i32 55, float %9569, float %9570, float %9571, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9575 = select i1 %217, float %9573, float %9539
  %9576 = select i1 %217, float 1.000000e+00, float %9539
  %9577 = select i1 %217, float %9574, float %9569
  %9578 = select i1 %217, float 0.000000e+00, float %9570
  %9579 = select i1 %217, float 0.000000e+00, float %9571
  %9580 = fmul fast float %9575, %9213
  %9581 = fmul fast float %9575, %9214
  %9582 = fmul fast float %9576, %9215
  %9583 = fadd fast float %9580, %9577
  %9584 = fadd fast float %9581, %9578
  %9585 = fadd fast float %9579, %9582
  %9586 = fmul fast float %9575, %9216
  %9587 = fmul fast float %9575, %9217
  %9588 = fmul fast float %9576, %9218
  br label %9589

; <label>:9589                                    ; preds = %9565, %9222, %9191, %8423
  %9590 = phi float [ %8428, %8423 ], [ %9213, %9191 ], [ %9583, %9565 ], [ %9213, %9222 ]
  %9591 = phi float [ %8429, %8423 ], [ %9214, %9191 ], [ %9584, %9565 ], [ %9214, %9222 ]
  %9592 = phi float [ %8430, %8423 ], [ %9215, %9191 ], [ %9585, %9565 ], [ %9215, %9222 ]
  %9593 = phi float [ %8431, %8423 ], [ %9216, %9191 ], [ %9586, %9565 ], [ %9216, %9222 ]
  %9594 = phi float [ %8432, %8423 ], [ %9217, %9191 ], [ %9587, %9565 ], [ %9217, %9222 ]
  %9595 = phi float [ %8433, %8423 ], [ %9218, %9191 ], [ %9588, %9565 ], [ %9218, %9222 ]
  %9596 = phi float [ %8434, %8423 ], [ %9201, %9191 ], [ %9572, %9565 ], [ %9201, %9222 ]
  %9597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9598 = extractvalue %dx.types.CBufRet.f32 %9597, 2
  %9599 = extractvalue %dx.types.CBufRet.f32 %9597, 3
  %9600 = fmul fast float %9598, %100
  %9601 = fmul fast float %9599, %101
  %9602 = call float @dx.op.unary.f32(i32 7, float %9600)  ; Saturate(value)
  %9603 = call float @dx.op.unary.f32(i32 7, float %9601)  ; Saturate(value)
  %9604 = select i1 %8165, i32 2, i32 0
  %9605 = or i32 %9604, 1
  %9606 = uitofp i32 %9605 to float
  %9607 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9602, float %9603, float %9606, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9608 = extractvalue %dx.types.ResRet.f32 %9607, 0
  %9609 = extractvalue %dx.types.ResRet.f32 %9607, 1
  %9610 = extractvalue %dx.types.ResRet.f32 %9607, 2
  %9611 = extractvalue %dx.types.ResRet.f32 %9607, 3
  %9612 = add nuw nsw i32 %9604, 2
  %9613 = uitofp i32 %9612 to float
  %9614 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9602, float %9603, float %9613, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9615 = extractvalue %dx.types.ResRet.f32 %9614, 0
  %9616 = extractvalue %dx.types.ResRet.f32 %9614, 1
  %9617 = extractvalue %dx.types.ResRet.f32 %9614, 2
  %9618 = extractvalue %dx.types.ResRet.f32 %9614, 3
  %9619 = call float @dx.op.binary.f32(i32 35, float %9609, float %9610)  ; FMax(a,b)
  %9620 = call float @dx.op.binary.f32(i32 35, float %9608, float %9619)  ; FMax(a,b)
  %9621 = call float @dx.op.binary.f32(i32 35, float %9620, float %9611)  ; FMax(a,b)
  %9622 = call float @dx.op.binary.f32(i32 36, float %9616, float %9617)  ; FMin(a,b)
  %9623 = call float @dx.op.binary.f32(i32 36, float %9615, float %9622)  ; FMin(a,b)
  %9624 = call float @dx.op.binary.f32(i32 36, float %9623, float %9618)  ; FMin(a,b)
  %9625 = fmul fast float %9621, 2.550000e+02
  %9626 = fadd fast float %9625, 0x3F70101020000000
  %9627 = fptoui float %9626 to i32
  %9628 = fmul fast float %9624, 2.550000e+02
  %9629 = fadd fast float %9628, 0x3F70101020000000
  %9630 = fptoui float %9629 to i32
  %9631 = icmp ult i32 %9627, %9630
  br i1 %9631, label %9632, label %9801

; <label>:9632                                    ; preds = %9589
  %9633 = fcmp fast ogt float %90, 9.843750e-01
  %9634 = fadd fast float %8427, -4.000000e+00
  %9635 = select i1 %9633, float -4.000000e+00, float %9634
  %9636 = call float @dx.op.binary.f32(i32 35, float %9635, float 0.000000e+00)  ; FMax(a,b)
  %9637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9638 = extractvalue %dx.types.CBufRet.f32 %9637, 0
  %9639 = fadd fast float %9638, %9636
  %9640 = extractvalue %dx.types.CBufRet.f32 %9637, 2
  %9641 = fmul fast float %9639, %9640
  %9642 = call float @dx.op.unary.f32(i32 23, float %9641)  ; Log(value)
  %9643 = extractvalue %dx.types.CBufRet.f32 %9637, 3
  %9644 = fmul fast float %9643, %9642
  %9645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9646 = extractvalue %dx.types.CBufRet.f32 %9645, 2
  %9647 = fmul fast float %9644, %9646
  %9648 = call float @dx.op.unary.f32(i32 7, float %9647)  ; Saturate(value)
  %9649 = uitofp i32 %9627 to float
  %9650 = uitofp i32 %9630 to float
  %9651 = fadd fast float %9649, 5.000000e-01
  %9652 = fadd fast float %9650, 5.000000e-01
  %9653 = fmul fast float %9646, %9651
  %9654 = fmul fast float %9646, %9652
  %9655 = fadd fast float %9653, 0x3F0FFB4800000000
  %9656 = fadd fast float %9654, 0xBF0FFB4800000000
  %9657 = call float @dx.op.binary.f32(i32 35, float %9648, float %9655)  ; FMax(a,b)
  %9658 = call float @dx.op.binary.f32(i32 36, float %9657, float %9656)  ; FMin(a,b)
  %9659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9660 = extractvalue %dx.types.CBufRet.f32 %9659, 1
  %9661 = extractvalue %dx.types.CBufRet.f32 %9659, 2
  %9662 = extractvalue %dx.types.CBufRet.f32 %9659, 0
  %9663 = select i1 %8165, float %9662, float 0.000000e+00
  %9664 = fmul fast float %9660, %9658
  %9665 = fadd fast float %9663, %9664
  %9666 = fadd fast float %9663, %9661
  %9667 = fsub fast float %9660, %9661
  %9668 = fadd fast float %9667, %9663
  %9669 = call float @dx.op.binary.f32(i32 35, float %9665, float %9666)  ; FMax(a,b)
  %9670 = call float @dx.op.binary.f32(i32 36, float %9669, float %9668)  ; FMin(a,b)
  %9671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9602, float %9603, float %9670, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9672 = extractvalue %dx.types.ResRet.f32 %9671, 0
  %9673 = extractvalue %dx.types.ResRet.f32 %9671, 1
  %9674 = extractvalue %dx.types.ResRet.f32 %9671, 2
  %9675 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9676 = extractvalue %dx.types.CBufRet.i32 %9675, 0
  %9677 = extractvalue %dx.types.CBufRet.i32 %9675, 1
  %9678 = uitofp i32 %9676 to float
  %9679 = uitofp i32 %9677 to float
  %9680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9681 = extractvalue %dx.types.CBufRet.f32 %9680, 0
  %9682 = extractvalue %dx.types.CBufRet.f32 %9680, 1
  %9683 = fmul fast float %9678, %9602
  %9684 = fmul fast float %9679, %9603
  %9685 = fadd fast float %9683, -5.000000e-01
  %9686 = fadd fast float %9684, -5.000000e-01
  %9687 = call float @dx.op.unary.f32(i32 22, float %9685)  ; Frc(value)
  %9688 = call float @dx.op.unary.f32(i32 22, float %9686)  ; Frc(value)
  %9689 = fmul fast float %9687, %9687
  %9690 = fmul fast float %9689, %9687
  %9691 = fsub fast float 3.000000e+00, %9687
  %9692 = fmul fast float %9689, %9691
  %9693 = fmul fast float %9687, 3.000000e+00
  %9694 = fmul fast float %9690, 3.000000e+00
  %9695 = fmul fast float %9689, 6.000000e+00
  %9696 = fsub fast float %9694, %9695
  %9697 = fadd fast float %9696, 4.000000e+00
  %9698 = fmul fast float %9697, 0x3FC5555560000000
  %9699 = fmul fast float %9690, -3.000000e+00
  %9700 = fadd fast float %9689, %9687
  %9701 = fmul fast float %9700, 3.000000e+00
  %9702 = fadd fast float %9699, 1.000000e+00
  %9703 = fadd fast float %9702, %9701
  %9704 = fmul fast float %9690, 0x3FC5555560000000
  %9705 = fmul fast float %9688, %9688
  %9706 = fmul fast float %9705, %9688
  %9707 = fsub fast float 3.000000e+00, %9688
  %9708 = fmul fast float %9705, %9707
  %9709 = fmul fast float %9688, 3.000000e+00
  %9710 = fmul fast float %9706, 3.000000e+00
  %9711 = fmul fast float %9705, 6.000000e+00
  %9712 = fsub fast float %9710, %9711
  %9713 = fadd fast float %9712, 4.000000e+00
  %9714 = fmul fast float %9713, 0x3FC5555560000000
  %9715 = fmul fast float %9706, -3.000000e+00
  %9716 = fadd fast float %9705, %9688
  %9717 = fmul fast float %9716, 3.000000e+00
  %9718 = fadd fast float %9715, 1.000000e+00
  %9719 = fadd fast float %9718, %9717
  %9720 = fmul fast float %9706, 0x3FC5555560000000
  %9721 = fadd fast float %9687, 1.000000e+00
  %9722 = fsub fast float 1.000000e+00, %9693
  %9723 = fadd fast float %9722, %9692
  %9724 = fadd fast float %9723, %9697
  %9725 = fmul fast float %9724, 0x3FC5555560000000
  %9726 = fdiv fast float %9698, %9725
  %9727 = fsub fast float %9721, %9726
  %9728 = fsub fast float 1.000000e+00, %9687
  %9729 = fadd fast float %9703, %9690
  %9730 = fmul fast float %9729, 0x3FC5555560000000
  %9731 = fdiv fast float %9704, %9730
  %9732 = fadd fast float %9728, %9731
  %9733 = fadd fast float %9688, 1.000000e+00
  %9734 = fsub fast float 1.000000e+00, %9709
  %9735 = fadd fast float %9734, %9708
  %9736 = fadd fast float %9735, %9713
  %9737 = fmul fast float %9736, 0x3FC5555560000000
  %9738 = fdiv fast float %9714, %9737
  %9739 = fsub fast float %9733, %9738
  %9740 = fsub fast float 1.000000e+00, %9688
  %9741 = fadd fast float %9719, %9706
  %9742 = fmul fast float %9741, 0x3FC5555560000000
  %9743 = fdiv fast float %9720, %9742
  %9744 = fadd fast float %9743, %9740
  %9745 = fmul fast float %9727, %9681
  %9746 = fsub fast float %9602, %9745
  %9747 = fmul fast float %9732, %9681
  %9748 = fadd fast float %9747, %9602
  %9749 = fmul fast float %9744, %9682
  %9750 = fadd fast float %9749, %9603
  %9751 = fmul fast float %9739, %9682
  %9752 = fsub fast float %9603, %9751
  %9753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9746, float %9752, float %9670, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9754 = extractvalue %dx.types.ResRet.f32 %9753, 0
  %9755 = extractvalue %dx.types.ResRet.f32 %9753, 1
  %9756 = extractvalue %dx.types.ResRet.f32 %9753, 2
  %9757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9748, float %9752, float %9670, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9758 = extractvalue %dx.types.ResRet.f32 %9757, 0
  %9759 = extractvalue %dx.types.ResRet.f32 %9757, 1
  %9760 = extractvalue %dx.types.ResRet.f32 %9757, 2
  %9761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9746, float %9750, float %9670, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9762 = extractvalue %dx.types.ResRet.f32 %9761, 0
  %9763 = extractvalue %dx.types.ResRet.f32 %9761, 1
  %9764 = extractvalue %dx.types.ResRet.f32 %9761, 2
  %9765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9748, float %9750, float %9670, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9766 = extractvalue %dx.types.ResRet.f32 %9765, 0
  %9767 = extractvalue %dx.types.ResRet.f32 %9765, 1
  %9768 = extractvalue %dx.types.ResRet.f32 %9765, 2
  %9769 = fsub fast float %9762, %9754
  %9770 = fsub fast float %9763, %9755
  %9771 = fsub fast float %9764, %9756
  %9772 = fmul fast float %9769, %9742
  %9773 = fmul fast float %9770, %9742
  %9774 = fmul fast float %9771, %9742
  %9775 = fadd fast float %9772, %9754
  %9776 = fadd fast float %9773, %9755
  %9777 = fadd fast float %9774, %9756
  %9778 = fsub fast float %9766, %9758
  %9779 = fsub fast float %9767, %9759
  %9780 = fsub fast float %9768, %9760
  %9781 = fmul fast float %9778, %9742
  %9782 = fmul fast float %9779, %9742
  %9783 = fmul fast float %9780, %9742
  %9784 = fsub fast float %9758, %9775
  %9785 = fadd fast float %9784, %9781
  %9786 = fsub fast float %9759, %9776
  %9787 = fadd fast float %9786, %9782
  %9788 = fsub fast float %9760, %9777
  %9789 = fadd fast float %9788, %9783
  %9790 = fmul fast float %9785, %9730
  %9791 = fmul fast float %9787, %9730
  %9792 = fmul fast float %9789, %9730
  %9793 = fadd fast float %9790, %9775
  %9794 = fadd fast float %9791, %9776
  %9795 = fadd fast float %9792, %9777
  %9796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9797 = extractvalue %dx.types.CBufRet.f32 %9796, 1
  %9798 = fmul fast float %9793, %9797
  %9799 = fmul fast float %9794, %9797
  %9800 = fmul fast float %9795, %9797
  br label %9801

; <label>:9801                                    ; preds = %9632, %9589
  %9802 = phi float [ %9672, %9632 ], [ 1.000000e+00, %9589 ]
  %9803 = phi float [ %9673, %9632 ], [ 1.000000e+00, %9589 ]
  %9804 = phi float [ %9674, %9632 ], [ 1.000000e+00, %9589 ]
  %9805 = phi float [ %9798, %9632 ], [ 0.000000e+00, %9589 ]
  %9806 = phi float [ %9799, %9632 ], [ 0.000000e+00, %9589 ]
  %9807 = phi float [ %9800, %9632 ], [ 0.000000e+00, %9589 ]
  %9808 = fmul fast float %9805, %8143
  %9809 = fmul fast float %9806, %8143
  %9810 = fmul fast float %9807, %8143
  %9811 = fmul fast float %9802, %9596
  %9812 = call float @dx.op.dot3.f32(i32 55, float %9802, float %9803, float %9804, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9813 = call float @dx.op.dot3.f32(i32 55, float %9808, float %9809, float %9810, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9814 = select i1 %217, float %9812, float %9802
  %9815 = select i1 %217, float %9812, float %9803
  %9816 = select i1 %217, float 1.000000e+00, float %9804
  %9817 = select i1 %217, float %9813, float %9808
  %9818 = select i1 %217, float 0.000000e+00, float %9809
  %9819 = select i1 %217, float 0.000000e+00, float %9810
  %9820 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9821 = extractvalue %dx.types.CBufRet.i32 %9820, 3
  %9822 = and i32 %9821, 3
  %9823 = icmp ne i32 %9822, 0
  %9824 = and i32 %9821, 4
  %9825 = icmp ne i32 %9824, 0
  %9826 = and i1 %9823, %9825
  %9827 = and i1 %217, %9826
  br i1 %9827, label %9828, label %9834

; <label>:9828                                    ; preds = %9801
  %9829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9830 = extractvalue %dx.types.CBufRet.f32 %9829, 1
  %9831 = fadd fast float %9811, -1.000000e+00
  %9832 = fmul fast float %9830, %9831
  %9833 = fadd fast float %9832, 1.000000e+00
  br label %9834

; <label>:9834                                    ; preds = %9828, %9801
  %9835 = phi float [ %9833, %9828 ], [ %9811, %9801 ]
  %9836 = fadd fast float %9593, %9590
  %9837 = fmul fast float %9814, %9836
  %9838 = fadd fast float %9837, %9817
  %9839 = fadd fast float %9594, %9591
  %9840 = fmul fast float %9815, %9839
  %9841 = fadd fast float %9840, %9818
  %9842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9843 = extractvalue %dx.types.CBufRet.f32 %9842, 0
  br i1 %217, label %9844, label %9868

; <label>:9844                                    ; preds = %9834
  %9845 = fadd fast float %9838, %9841
  %9846 = fmul fast float %9843, %9845
  %9847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9848 = extractvalue %dx.types.CBufRet.f32 %9847, 3
  %9849 = extractvalue %dx.types.CBufRet.f32 %8147, 1
  %9850 = fsub fast float %8152, %8146
  %9851 = fadd fast float %9850, %8153
  %9852 = fsub fast float %9851, %9849
  %9853 = extractvalue %dx.types.CBufRet.f32 %8147, 2
  %9854 = fmul fast float %9852, %9853
  %9855 = call float @dx.op.unary.f32(i32 7, float %9854)  ; Saturate(value)
  %9856 = fsub fast float %9855, %9848
  %9857 = fmul fast float %9856, %9835
  %9858 = fadd fast float %9857, %9848
  %9859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9860 = extractvalue %dx.types.CBufRet.f32 %9859, 0
  %9861 = fsub fast float %9858, %9860
  %9862 = fmul fast float %9861, 1.000000e+01
  %9863 = call float @dx.op.unary.f32(i32 7, float %9862)  ; Saturate(value)
  %9864 = fsub fast float %5072, %8143
  %9865 = fmul fast float %9863, %9864
  %9866 = fadd fast float %9865, %8143
  %9867 = fmul fast float %9866, %9858
  br label %9892

; <label>:9868                                    ; preds = %9834
  %9869 = fadd fast float %9595, %9592
  %9870 = fmul fast float %9816, %9869
  %9871 = fadd fast float %9870, %9819
  %9872 = fmul fast float %9843, %9838
  %9873 = fmul fast float %9843, %9841
  %9874 = fmul fast float %9843, %9871
  %9875 = call float @dx.op.binary.f32(i32 35, float %9873, float %9874)  ; FMax(a,b)
  %9876 = call float @dx.op.binary.f32(i32 35, float %9872, float %9875)  ; FMax(a,b)
  %9877 = call float @dx.op.binary.f32(i32 35, float %9876, float %8143)  ; FMax(a,b)
  %9878 = fcmp fast ugt float %9877, 0x3F10000000000000
  br i1 %9878, label %9880, label %9879

; <label>:9879                                    ; preds = %9868
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9880

; <label>:9880                                    ; preds = %9879, %9868
  %9881 = add i32 %54, 356
  %9882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9881, i32 undef)  ; BufferLoad(srv,index,wot)
  %9883 = extractvalue %dx.types.ResRet.i32 %9882, 0
  %9884 = and i32 %9883, 32
  %9885 = icmp eq i32 %9884, 0
  br i1 %9885, label %9892, label %9886

; <label>:9886                                    ; preds = %9880
  %9887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9888 = extractvalue %dx.types.CBufRet.f32 %9887, 0
  %9889 = fmul fast float %9888, 0x3FE99999A0000000
  %9890 = fadd fast float %9888, %9872
  %9891 = fadd fast float %9889, %9874
  br label %9892

; <label>:9892                                    ; preds = %9886, %9880, %9844
  %9893 = phi float [ %9846, %9844 ], [ %9890, %9886 ], [ %9872, %9880 ]
  %9894 = phi float [ %9867, %9844 ], [ %9873, %9886 ], [ %9873, %9880 ]
  %9895 = phi float [ %9866, %9844 ], [ %9891, %9886 ], [ %9874, %9880 ]
  %9896 = phi float [ %9866, %9844 ], [ %8143, %9886 ], [ %8143, %9880 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9897 = call float @dx.op.binary.f32(i32 36, float %9893, float 3.225500e+04)  ; FMin(a,b)
  %9898 = call float @dx.op.binary.f32(i32 36, float %9894, float 3.225500e+04)  ; FMin(a,b)
  %9899 = call float @dx.op.binary.f32(i32 36, float %9895, float 3.225500e+04)  ; FMin(a,b)
  %9900 = call float @dx.op.binary.f32(i32 36, float %9896, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9897)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9898)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9899)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9900)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!121 = !{!122, !122, i64 0}
!122 = !{!"float", !99, i64 0}
!123 = !{!124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!124 = distinct !{!124, !125, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!125 = distinct !{!125, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!126 = distinct !{!126, !127, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!127 = distinct !{!127, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!128 = distinct !{!128, !127, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!129 = distinct !{!129, !130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!130 = distinct !{!130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!131 = distinct !{!131, !130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!132 = distinct !{!132, !130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!133 = distinct !{!133, !134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!134 = distinct !{!134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!135 = distinct !{!135, !134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!136 = distinct !{!136, !134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!137 = distinct !{!137, !138, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!138 = distinct !{!138, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"\01?sort@@YAXAIAM00@Z: %c"}
!141 = distinct !{!141, !"\01?sort@@YAXAIAM00@Z"}
!142 = !{!143, !144, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!143 = distinct !{!143, !141, !"\01?sort@@YAXAIAM00@Z: %a"}
!144 = distinct !{!144, !141, !"\01?sort@@YAXAIAM00@Z: %b"}
!145 = !{!144}
!146 = !{!143, !140, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!147 = !{!143}
!148 = !{!144, !140, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!149 = !{!150}
!150 = distinct !{!150, !151, !"\01?sort@@YAXAIAM00@Z: %c"}
!151 = distinct !{!151, !"\01?sort@@YAXAIAM00@Z"}
!152 = !{!153, !154, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!153 = distinct !{!153, !151, !"\01?sort@@YAXAIAM00@Z: %a"}
!154 = distinct !{!154, !151, !"\01?sort@@YAXAIAM00@Z: %b"}
!155 = !{!154}
!156 = !{!153, !150, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!157 = !{!153}
!158 = !{!154, !150, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 2}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}

