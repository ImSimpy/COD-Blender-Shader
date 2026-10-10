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
; shader hash: 773a32274dddac525cf645715c1d60e6
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
  %411 = add i32 %54, 508
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
  %687 = add i32 %54, 440
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
  %739 = add i32 %54, 424
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
  %763 = add i32 %54, 376
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
  %786 = add i32 %54, 460
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
  %984 = add i32 %54, 392
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
  %1068 = add i32 %54, 408
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
  %1126 = add i32 %54, 476
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
  %1167 = add i32 %54, 492
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
  %1478 = add i32 %54, 444
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
  %1530 = add i32 %54, 428
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
  %1556 = add i32 %54, 380
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
  %1579 = add i32 %54, 464
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
  %1777 = add i32 %54, 396
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
  %1861 = add i32 %54, 412
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
  %1919 = add i32 %54, 480
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
  %1960 = add i32 %54, 496
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
  %2535 = add i32 %54, 448
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
  %2587 = add i32 %54, 432
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
  %2613 = add i32 %54, 384
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
  %2636 = add i32 %54, 468
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
  %2834 = add i32 %54, 400
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
  %2918 = add i32 %54, 416
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
  %2976 = add i32 %54, 484
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
  %3017 = add i32 %54, 500
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
  %3592 = add i32 %54, 452
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
  %3644 = add i32 %54, 436
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
  %3670 = add i32 %54, 388
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
  %3693 = add i32 %54, 472
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
  %3891 = add i32 %54, 404
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
  %3975 = add i32 %54, 420
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
  %4033 = add i32 %54, 488
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
  %4074 = add i32 %54, 504
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
  %4420 = add i32 %54, 360
  %4421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4420, i32 undef)  ; BufferLoad(srv,index,wot)
  %4422 = extractvalue %dx.types.ResRet.i32 %4421, 0
  %4423 = extractvalue %dx.types.ResRet.i32 %4421, 1
  %4424 = bitcast i32 %4422 to float
  %4425 = bitcast i32 %4423 to float
  %4426 = fcmp fast oge float %4424, 0.000000e+00
  %4427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4428 = extractvalue %dx.types.CBufRet.f32 %4427, 0
  %4429 = select i1 %4426, float %4424, float %4428
  %4430 = add i32 %54, 456
  %4431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4430, i32 undef)  ; BufferLoad(srv,index,wot)
  %4432 = extractvalue %dx.types.ResRet.i32 %4431, 0
  %4433 = add i32 %4432, 0
  %4434 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4433, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4435 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4434, %dx.types.Handle %97, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4436 = extractvalue %dx.types.ResRet.f32 %4435, 0
  %4437 = fmul fast float %4436, %4425
  %4438 = fadd fast float %4437, %4429
  %4439 = call float @dx.op.dot2.f32(i32 54, float %4401, float %4402, float %4401, float %4402)  ; Dot2(ax,ay,bx,by)
  %4440 = fmul fast float %4439, 0x3FE3333340000000
  %4441 = fsub fast float 1.000000e+00, %4440
  %4442 = call float @dx.op.dot3.f32(i32 55, float %4401, float %4402, float %4441, float %4401, float %4402, float %4441)  ; Dot3(ax,ay,az,bx,by,bz)
  %4443 = call float @dx.op.unary.f32(i32 25, float %4442)  ; Rsqrt(value)
  %4444 = fmul fast float %4443, %4401
  %4445 = fmul fast float %4443, %4402
  %4446 = fmul fast float %4441, %4443
  %4447 = fmul fast float %4446, %107
  %4448 = fmul fast float %4446, %108
  %4449 = fmul fast float %4446, %109
  %4450 = fmul fast float %4444, %75
  %4451 = fmul fast float %4444, %76
  %4452 = fmul fast float %4444, %77
  %4453 = fadd fast float %4447, %4450
  %4454 = fadd fast float %4448, %4451
  %4455 = fadd fast float %4449, %4452
  %4456 = fmul fast float %119, %4445
  %4457 = fmul fast float %120, %4445
  %4458 = fmul fast float %121, %4445
  %4459 = fadd fast float %4453, %4456
  %4460 = fadd fast float %4454, %4457
  %4461 = fadd fast float %4455, %4458
  %4462 = call float @dx.op.dot3.f32(i32 55, float %4459, float %4460, float %4461, float %4459, float %4460, float %4461)  ; Dot3(ax,ay,az,bx,by,bz)
  %4463 = call float @dx.op.unary.f32(i32 25, float %4462)  ; Rsqrt(value)
  %4464 = fmul fast float %4459, %4463
  %4465 = fmul fast float %4460, %4463
  %4466 = fmul fast float %4461, %4463
  %4467 = and i32 %56, 1
  %4468 = icmp eq i32 %4467, 0
  br i1 %4468, label %4469, label %5061

; <label>:4469                                    ; preds = %4400
  %4470 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %4471 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %4472 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %4473 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %4474 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %4475 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %4476 = fadd fast float %4470, %155
  %4477 = fadd fast float %4471, %156
  %4478 = fadd fast float %4472, %157
  %4479 = fadd fast float %4473, %155
  %4480 = fadd fast float %4474, %156
  %4481 = fadd fast float %4475, %157
  %4482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4483 = extractvalue %dx.types.CBufRet.f32 %4482, 0
  %4484 = extractvalue %dx.types.CBufRet.f32 %4482, 1
  %4485 = extractvalue %dx.types.CBufRet.f32 %4482, 2
  %4486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4487 = extractvalue %dx.types.CBufRet.f32 %4486, 2
  %4488 = extractvalue %dx.types.CBufRet.f32 %4486, 3
  %4489 = fmul fast float %4483, %100
  %4490 = fmul fast float %4489, %4487
  %4491 = fmul fast float %4484, %101
  %4492 = fmul fast float %4491, %4488
  %4493 = fptoui float %4490 to i32
  %4494 = fptoui float %4492 to i32
  %4495 = fadd fast float %4483, -1.000000e+00
  %4496 = fadd fast float %4484, -1.000000e+00
  %4497 = fptoui float %4495 to i32
  %4498 = fptoui float %4496 to i32
  %4499 = call i32 @dx.op.binary.i32(i32 40, i32 %4493, i32 %4497)  ; UMin(a,b)
  %4500 = call i32 @dx.op.binary.i32(i32 40, i32 %4494, i32 %4498)  ; UMin(a,b)
  %4501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4502 = extractvalue %dx.types.CBufRet.f32 %4501, 2
  %4503 = extractvalue %dx.types.CBufRet.f32 %4501, 3
  %4504 = fmul fast float %4502, %91
  %4505 = fsub fast float %4504, %4503
  %4506 = fadd fast float %4485, -1.000000e+00
  %4507 = call float @dx.op.binary.f32(i32 36, float %4505, float %4506)  ; FMin(a,b)
  %4508 = fptoui float %4507 to i32
  %4509 = fptoui float %4483 to i32
  %4510 = fptoui float %4484 to i32
  %4511 = mul i32 %4508, %4510
  %4512 = add i32 %4511, %4500
  %4513 = mul i32 %4512, %4509
  %4514 = add i32 %4513, %4499
  %4515 = shl i32 %4514, 2
  %4516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4515, i32 undef)  ; BufferLoad(srv,index,wot)
  %4517 = extractvalue %dx.types.ResRet.i32 %4516, 0
  %4518 = and i32 %4517, 1023
  %4519 = lshr i32 %4517, 10
  %4520 = icmp eq i32 %4518, 0
  br i1 %4520, label %5024, label %4521

; <label>:4521                                    ; preds = %4469
  %4522 = and i32 %4517, 1023
  br label %4523

; <label>:4523                                    ; preds = %4655, %4521
  %4524 = phi i32 [ %4605, %4655 ], [ 0, %4521 ]
  %4525 = phi float [ %4656, %4655 ], [ 0.000000e+00, %4521 ]
  %4526 = phi float [ %4657, %4655 ], [ %4438, %4521 ]
  %4527 = phi float [ %4658, %4655 ], [ %4419, %4521 ]
  %4528 = phi float [ %4659, %4655 ], [ %4412, %4521 ]
  %4529 = phi float [ %4660, %4655 ], [ %4413, %4521 ]
  %4530 = phi float [ %4661, %4655 ], [ %4414, %4521 ]
  %4531 = phi float [ %4662, %4655 ], [ 0.000000e+00, %4521 ]
  %4532 = phi float [ %4663, %4655 ], [ 0.000000e+00, %4521 ]
  %4533 = phi float [ %4664, %4655 ], [ %4409, %4521 ]
  %4534 = phi float [ %4665, %4655 ], [ %4410, %4521 ]
  %4535 = phi float [ %4666, %4655 ], [ %4411, %4521 ]
  %4536 = phi float [ %4667, %4655 ], [ %4406, %4521 ]
  %4537 = phi float [ %4668, %4655 ], [ %4407, %4521 ]
  %4538 = phi float [ %4669, %4655 ], [ %4408, %4521 ]
  %4539 = phi float [ %4670, %4655 ], [ %4464, %4521 ]
  %4540 = phi float [ %4671, %4655 ], [ %4465, %4521 ]
  %4541 = phi float [ %4672, %4655 ], [ %4466, %4521 ]
  %4542 = phi float [ %4673, %4655 ], [ %4417, %4521 ]
  %4543 = phi float [ %4674, %4655 ], [ %4416, %4521 ]
  %4544 = phi float [ %4675, %4655 ], [ 0.000000e+00, %4521 ]
  %4545 = phi float [ %4676, %4655 ], [ %4415, %4521 ]
  %4546 = phi float [ %4677, %4655 ], [ %4403, %4521 ]
  %4547 = phi float [ %4678, %4655 ], [ %4404, %4521 ]
  %4548 = phi float [ %4679, %4655 ], [ %4405, %4521 ]
  %4549 = add nuw nsw i32 %4524, %4519
  %4550 = shl i32 %4549, 2
  %4551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4550, i32 undef)  ; BufferLoad(srv,index,wot)
  %4552 = extractvalue %dx.types.ResRet.i32 %4551, 0
  %4553 = shl i32 %4552, 8
  %4554 = or i32 %4553, 48
  %4555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4554, i32 undef)  ; BufferLoad(srv,index,wot)
  %4556 = extractvalue %dx.types.ResRet.f32 %4555, 0
  %4557 = extractvalue %dx.types.ResRet.f32 %4555, 1
  %4558 = extractvalue %dx.types.ResRet.f32 %4555, 2
  %4559 = extractvalue %dx.types.ResRet.f32 %4555, 3
  %4560 = or i32 %4553, 64
  %4561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4560, i32 undef)  ; BufferLoad(srv,index,wot)
  %4562 = extractvalue %dx.types.ResRet.i32 %4561, 0
  %4563 = extractvalue %dx.types.ResRet.i32 %4561, 1
  %4564 = or i32 %4553, 80
  %4565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4564, i32 undef)  ; BufferLoad(srv,index,wot)
  %4566 = extractvalue %dx.types.ResRet.f32 %4565, 2
  %4567 = extractvalue %dx.types.ResRet.f32 %4565, 3
  %4568 = or i32 %4553, 96
  %4569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4568, i32 undef)  ; BufferLoad(srv,index,wot)
  %4570 = extractvalue %dx.types.ResRet.f32 %4569, 0
  %4571 = extractvalue %dx.types.ResRet.f32 %4569, 1
  %4572 = extractvalue %dx.types.ResRet.f32 %4569, 2
  %4573 = extractvalue %dx.types.ResRet.f32 %4569, 3
  %4574 = or i32 %4553, 112
  %4575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4574, i32 undef)  ; BufferLoad(srv,index,wot)
  %4576 = extractvalue %dx.types.ResRet.f32 %4575, 2
  %4577 = or i32 %4553, 128
  %4578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4577, i32 undef)  ; BufferLoad(srv,index,wot)
  %4579 = extractvalue %dx.types.ResRet.f32 %4578, 0
  %4580 = extractvalue %dx.types.ResRet.f32 %4578, 1
  %4581 = extractvalue %dx.types.ResRet.f32 %4578, 2
  %4582 = extractvalue %dx.types.ResRet.f32 %4578, 3
  %4583 = or i32 %4553, 144
  %4584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4583, i32 undef)  ; BufferLoad(srv,index,wot)
  %4585 = extractvalue %dx.types.ResRet.f32 %4584, 0
  %4586 = extractvalue %dx.types.ResRet.f32 %4584, 1
  %4587 = extractvalue %dx.types.ResRet.f32 %4584, 2
  %4588 = extractvalue %dx.types.ResRet.f32 %4584, 3
  %4589 = or i32 %4553, 160
  %4590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4589, i32 undef)  ; BufferLoad(srv,index,wot)
  %4591 = extractvalue %dx.types.ResRet.f32 %4590, 0
  %4592 = extractvalue %dx.types.ResRet.f32 %4590, 1
  %4593 = extractvalue %dx.types.ResRet.f32 %4590, 2
  %4594 = extractvalue %dx.types.ResRet.f32 %4590, 3
  %4595 = or i32 %4553, 192
  %4596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4595, i32 undef)  ; BufferLoad(srv,index,wot)
  %4597 = extractvalue %dx.types.ResRet.i32 %4596, 0
  %4598 = or i32 %4553, 208
  %4599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4598, i32 undef)  ; BufferLoad(srv,index,wot)
  %4600 = extractvalue %dx.types.ResRet.f32 %4599, 0
  %4601 = or i32 %4553, 248
  %4602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4601, i32 undef)  ; BufferLoad(srv,index,wot)
  %4603 = extractvalue %dx.types.ResRet.f32 %4602, 0
  %4604 = extractvalue %dx.types.ResRet.f32 %4602, 1
  %4605 = add nuw nsw i32 %4524, 1
  %4606 = bitcast float %4559 to i32
  %4607 = and i32 %4606, 512
  %4608 = icmp eq i32 %4607, 0
  %4609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4553, i32 undef)  ; BufferLoad(srv,index,wot)
  %4610 = extractvalue %dx.types.ResRet.f32 %4609, 0
  %4611 = extractvalue %dx.types.ResRet.f32 %4609, 1
  %4612 = extractvalue %dx.types.ResRet.f32 %4609, 2
  %4613 = extractvalue %dx.types.ResRet.f32 %4609, 3
  %4614 = call float @dx.op.dot4.f32(i32 56, float %4610, float %4611, float %4612, float %4613, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4615 = or i32 %4553, 16
  %4616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4615, i32 undef)  ; BufferLoad(srv,index,wot)
  %4617 = extractvalue %dx.types.ResRet.f32 %4616, 0
  %4618 = extractvalue %dx.types.ResRet.f32 %4616, 1
  %4619 = extractvalue %dx.types.ResRet.f32 %4616, 2
  %4620 = extractvalue %dx.types.ResRet.f32 %4616, 3
  %4621 = call float @dx.op.dot4.f32(i32 56, float %4617, float %4618, float %4619, float %4620, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4622 = or i32 %4553, 32
  %4623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4622, i32 undef)  ; BufferLoad(srv,index,wot)
  %4624 = extractvalue %dx.types.ResRet.f32 %4623, 0
  %4625 = extractvalue %dx.types.ResRet.f32 %4623, 1
  %4626 = extractvalue %dx.types.ResRet.f32 %4623, 2
  %4627 = extractvalue %dx.types.ResRet.f32 %4623, 3
  %4628 = call float @dx.op.dot4.f32(i32 56, float %4624, float %4625, float %4626, float %4627, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4629 = call float @dx.op.unary.f32(i32 27, float %4614)  ; Round_ni(value)
  %4630 = call float @dx.op.unary.f32(i32 6, float %4629)  ; FAbs(value)
  %4631 = call float @dx.op.unary.f32(i32 27, float %4621)  ; Round_ni(value)
  %4632 = call float @dx.op.unary.f32(i32 6, float %4631)  ; FAbs(value)
  %4633 = call float @dx.op.unary.f32(i32 6, float %4628)  ; FAbs(value)
  %4634 = call float @dx.op.unary.f32(i32 27, float %4633)  ; Round_ni(value)
  %4635 = fadd fast float %4632, %4630
  %4636 = fadd fast float %4635, %4634
  %4637 = fcmp fast oeq float %4636, 0.000000e+00
  %4638 = call float @dx.op.dot4.f32(i32 56, float %4610, float %4611, float %4612, float %4613, float %4476, float %4477, float %4478, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4639 = call float @dx.op.dot4.f32(i32 56, float %4617, float %4618, float %4619, float %4620, float %4476, float %4477, float %4478, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4640 = call float @dx.op.dot4.f32(i32 56, float %4610, float %4611, float %4612, float %4613, float %4479, float %4480, float %4481, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4641 = call float @dx.op.dot4.f32(i32 56, float %4617, float %4618, float %4619, float %4620, float %4479, float %4480, float %4481, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4642 = fsub fast float %4638, %4614
  %4643 = fsub fast float %4640, %4614
  %4644 = fsub fast float %4639, %4621
  %4645 = fsub fast float %4641, %4621
  %4646 = call float @dx.op.dot3.f32(i32 55, float %4556, float %4557, float %4558, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4648 = extractvalue %dx.types.CBufRet.f32 %4647, 2
  %4649 = fadd fast float %4648, %4646
  %4650 = call float @dx.op.unary.f32(i32 7, float %4649)  ; Saturate(value)
  %4651 = extractvalue %dx.types.CBufRet.f32 %4647, 0
  %4652 = fcmp fast ogt float %4650, %4651
  %4653 = and i1 %4637, %4652
  %4654 = and i1 %4608, %4653
  br i1 %4654, label %4681, label %4655

; <label>:4655                                    ; preds = %5010, %4762, %4681, %4523
  %4656 = phi float [ %4525, %4681 ], [ %4765, %4762 ], [ %4765, %5010 ], [ %4525, %4523 ]
  %4657 = phi float [ %4526, %4681 ], [ %4526, %4762 ], [ %4986, %5010 ], [ %4526, %4523 ]
  %4658 = phi float [ %4527, %4681 ], [ %4527, %4762 ], [ %4984, %5010 ], [ %4527, %4523 ]
  %4659 = phi float [ %4528, %4681 ], [ %4528, %4762 ], [ %4962, %5010 ], [ %4528, %4523 ]
  %4660 = phi float [ %4529, %4681 ], [ %4529, %4762 ], [ %4963, %5010 ], [ %4529, %4523 ]
  %4661 = phi float [ %4530, %4681 ], [ %4530, %4762 ], [ %4964, %5010 ], [ %4530, %4523 ]
  %4662 = phi float [ %4531, %4681 ], [ %4531, %4762 ], [ %4889, %5010 ], [ %4531, %4523 ]
  %4663 = phi float [ %4532, %4681 ], [ %4532, %4762 ], [ %4887, %5010 ], [ %4532, %4523 ]
  %4664 = phi float [ %4533, %4681 ], [ %4533, %4762 ], [ %4932, %5010 ], [ %4533, %4523 ]
  %4665 = phi float [ %4534, %4681 ], [ %4534, %4762 ], [ %4933, %5010 ], [ %4534, %4523 ]
  %4666 = phi float [ %4535, %4681 ], [ %4535, %4762 ], [ %4934, %5010 ], [ %4535, %4523 ]
  %4667 = phi float [ %4536, %4681 ], [ %4536, %4762 ], [ %5020, %5010 ], [ %4536, %4523 ]
  %4668 = phi float [ %4537, %4681 ], [ %4537, %4762 ], [ %5021, %5010 ], [ %4537, %4523 ]
  %4669 = phi float [ %4538, %4681 ], [ %4538, %4762 ], [ %5022, %5010 ], [ %4538, %4523 ]
  %4670 = phi float [ %4539, %4681 ], [ %4539, %4762 ], [ %4868, %5010 ], [ %4539, %4523 ]
  %4671 = phi float [ %4540, %4681 ], [ %4540, %4762 ], [ %4869, %5010 ], [ %4540, %4523 ]
  %4672 = phi float [ %4541, %4681 ], [ %4541, %4762 ], [ %4870, %5010 ], [ %4541, %4523 ]
  %4673 = phi float [ %4542, %4681 ], [ %4542, %4762 ], [ %4942, %5010 ], [ %4542, %4523 ]
  %4674 = phi float [ %4543, %4681 ], [ %4543, %4762 ], [ %4939, %5010 ], [ %4543, %4523 ]
  %4675 = phi float [ %4544, %4681 ], [ %4544, %4762 ], [ %4936, %5010 ], [ %4544, %4523 ]
  %4676 = phi float [ %4545, %4681 ], [ %4545, %4762 ], [ %4885, %5010 ], [ %4545, %4523 ]
  %4677 = phi float [ %4546, %4681 ], [ %4546, %4762 ], [ %4880, %5010 ], [ %4546, %4523 ]
  %4678 = phi float [ %4547, %4681 ], [ %4547, %4762 ], [ %4881, %5010 ], [ %4547, %4523 ]
  %4679 = phi float [ %4548, %4681 ], [ %4548, %4762 ], [ %4882, %5010 ], [ %4548, %4523 ]
  %4680 = icmp eq i32 %4605, %4522
  br i1 %4680, label %5023, label %4523

; <label>:4681                                    ; preds = %4523
  %4682 = extractvalue %dx.types.ResRet.f32 %4575, 3
  %4683 = extractvalue %dx.types.ResRet.f32 %4575, 1
  %4684 = extractvalue %dx.types.ResRet.f32 %4575, 0
  %4685 = extractvalue %dx.types.ResRet.f32 %4565, 1
  %4686 = extractvalue %dx.types.ResRet.f32 %4565, 0
  %4687 = extractvalue %dx.types.ResRet.i32 %4561, 3
  %4688 = extractvalue %dx.types.ResRet.i32 %4561, 2
  %4689 = add i32 %4687, 0
  %4690 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4689, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4692 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4690, %dx.types.Handle %4691, float %4614, float %4621, float undef, float undef, i32 0, i32 0, i32 undef, float %4642, float %4644, float undef, float %4643, float %4645, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4693 = extractvalue %dx.types.ResRet.f32 %4692, 0
  %4694 = fmul fast float %4693, %4686
  %4695 = fadd fast float %4694, %4685
  %4696 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4697 = fmul fast float %4614, %4570
  %4698 = call float @dx.op.tertiary.f32(i32 46, float %4571, float %4621, float %4697)  ; FMad(a,b,c)
  %4699 = fadd fast float %4698, %4684
  %4700 = fmul fast float %4614, %4572
  %4701 = call float @dx.op.tertiary.f32(i32 46, float %4573, float %4621, float %4700)  ; FMad(a,b,c)
  %4702 = fadd fast float %4701, %4683
  %4703 = fmul fast float %4642, %4570
  %4704 = call float @dx.op.tertiary.f32(i32 46, float %4571, float %4644, float %4703)  ; FMad(a,b,c)
  %4705 = fmul fast float %4642, %4572
  %4706 = call float @dx.op.tertiary.f32(i32 46, float %4573, float %4644, float %4705)  ; FMad(a,b,c)
  %4707 = fmul fast float %4643, %4570
  %4708 = call float @dx.op.tertiary.f32(i32 46, float %4571, float %4645, float %4707)  ; FMad(a,b,c)
  %4709 = fmul fast float %4643, %4572
  %4710 = call float @dx.op.tertiary.f32(i32 46, float %4573, float %4645, float %4709)  ; FMad(a,b,c)
  %4711 = add i32 %4688, 0
  %4712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4711, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4713 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4712, %dx.types.Handle %4691, float %4699, float %4702, float undef, float undef, i32 0, i32 0, i32 undef, float %4704, float %4706, float undef, float %4708, float %4710, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4714 = extractvalue %dx.types.ResRet.f32 %4713, 0
  %4715 = and i32 %4606, 1024
  %4716 = icmp ne i32 %4715, 0
  %4717 = fcmp fast ogt float %4714, 0x3FE0101020000000
  %4718 = uitofp i1 %4717 to float
  %4719 = select i1 %4716, float %4718, float %4714
  %4720 = and i32 %4606, 8192
  %4721 = icmp ne i32 %4720, 0
  %4722 = select i1 %4721, float %4682, float 1.000000e+00
  %4723 = fmul fast float %4614, 2.000000e+00
  %4724 = fadd fast float %4723, -1.000000e+00
  %4725 = call float @dx.op.unary.f32(i32 6, float %4724)  ; FAbs(value)
  %4726 = fmul fast float %4725, %4603
  %4727 = fsub fast float %4726, %4603
  %4728 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4729 = fmul fast float %4621, 2.000000e+00
  %4730 = fadd fast float %4729, -1.000000e+00
  %4731 = call float @dx.op.unary.f32(i32 6, float %4730)  ; FAbs(value)
  %4732 = fmul fast float %4731, %4604
  %4733 = fsub fast float %4732, %4604
  %4734 = call float @dx.op.unary.f32(i32 7, float %4733)  ; Saturate(value)
  %4735 = fmul fast float %4633, %4566
  %4736 = fsub fast float %4735, %4566
  %4737 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4738 = fmul fast float %4696, %4722
  %4739 = fmul fast float %4738, %4693
  %4740 = fmul fast float %4739, %4728
  %4741 = fmul fast float %4740, %4719
  %4742 = fmul fast float %4741, %4734
  %4743 = fmul fast float %4742, %4737
  %4744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4745 = extractvalue %dx.types.CBufRet.f32 %4744, 1
  %4746 = extractvalue %dx.types.CBufRet.f32 %4744, 0
  %4747 = fsub fast float %4650, %4746
  %4748 = fmul fast float %4747, %4745
  %4749 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4750 = fmul fast float %4743, %4567
  %4751 = fadd fast float %4743, %4567
  %4752 = fmul fast float %4751, %4576
  %4753 = fsub fast float %4752, %4576
  %4754 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4755 = and i32 %4606, 128
  %4756 = icmp ne i32 %4755, 0
  %4757 = select i1 %4756, float %4754, float %4750
  %4758 = fmul fast float %4757, %4749
  %4759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4760 = extractvalue %dx.types.CBufRet.f32 %4759, 0
  %4761 = fcmp fast ugt float %4758, %4760
  br i1 %4761, label %4762, label %4655

; <label>:4762                                    ; preds = %4681
  %4763 = select i1 %4721, float %4758, float 0.000000e+00
  %4764 = fadd fast float %4763, %4525
  %4765 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  br i1 %4721, label %4655, label %4766

; <label>:4766                                    ; preds = %4762
  %4767 = and i32 %4606, 4
  %4768 = and i32 %4606, 8
  %4769 = add i32 %4562, 0
  %4770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4769, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4772 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4770, %dx.types.Handle %4771, float %4699, float %4702, float undef, float undef, i32 0, i32 0, i32 undef, float %4704, float %4706, float undef, float %4708, float %4710, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4773 = extractvalue %dx.types.ResRet.f32 %4772, 0
  %4774 = extractvalue %dx.types.ResRet.f32 %4772, 1
  %4775 = extractvalue %dx.types.ResRet.f32 %4772, 2
  %4776 = extractvalue %dx.types.ResRet.f32 %4772, 3
  %4777 = bitcast float %4588 to i32
  %4778 = and i32 %4777, 255
  %4779 = uitofp i32 %4778 to float
  %4780 = lshr i32 %4777, 8
  %4781 = and i32 %4780, 255
  %4782 = uitofp i32 %4781 to float
  %4783 = fmul fast float %4776, %4779
  %4784 = fadd fast float %4783, %4782
  %4785 = fmul fast float %4784, 0x3F70101000000000
  %4786 = add i32 %4563, 0
  %4787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4786, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4788 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4787, %dx.types.Handle %4771, float %4699, float %4702, float undef, float undef, i32 0, i32 0, i32 undef, float %4704, float %4706, float undef, float %4708, float %4710, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4789 = extractvalue %dx.types.ResRet.f32 %4788, 0
  %4790 = extractvalue %dx.types.ResRet.f32 %4788, 1
  %4791 = extractvalue %dx.types.ResRet.f32 %4788, 2
  %4792 = extractvalue %dx.types.ResRet.f32 %4788, 3
  %4793 = bitcast float %4582 to i32
  %4794 = and i32 %4793, 255
  %4795 = uitofp i32 %4794 to float
  %4796 = lshr i32 %4793, 8
  %4797 = and i32 %4796, 255
  %4798 = uitofp i32 %4797 to float
  %4799 = lshr i32 %4793, 16
  %4800 = and i32 %4799, 255
  %4801 = uitofp i32 %4800 to float
  %4802 = fmul fast float %4801, 0x3F70101000000000
  %4803 = fmul fast float %4789, %4795
  %4804 = fadd fast float %4803, %4798
  %4805 = fmul fast float %4804, 0x3F70101000000000
  %4806 = fadd fast float %4790, -5.000000e-01
  %4807 = fadd fast float %4792, -5.000000e-01
  %4808 = fmul fast float %4806, %4802
  %4809 = fmul fast float %4807, %4802
  %4810 = fadd fast float %4808, 5.000000e-01
  %4811 = fadd fast float %4809, 5.000000e-01
  %4812 = fmul fast float %4773, %4591
  %4813 = fmul fast float %4774, %4592
  %4814 = fmul fast float %4775, %4593
  %4815 = fmul fast float %4810, 2.000000e+00
  %4816 = fadd fast float %4815, -1.000000e+00
  %4817 = fmul fast float %4811, 2.000000e+00
  %4818 = fadd fast float %4817, -1.000000e+00
  %4819 = fadd fast float %4816, %4818
  %4820 = fmul fast float %4819, 5.000000e-01
  %4821 = fsub fast float %4816, %4818
  %4822 = fmul fast float %4821, 5.000000e-01
  %4823 = call float @dx.op.unary.f32(i32 6, float %4820)  ; FAbs(value)
  %4824 = fsub fast float 1.000000e+00, %4823
  %4825 = call float @dx.op.unary.f32(i32 6, float %4822)  ; FAbs(value)
  %4826 = fsub fast float %4824, %4825
  %4827 = call float @dx.op.dot3.f32(i32 55, float %4820, float %4822, float %4826, float %4820, float %4822, float %4826)  ; Dot3(ax,ay,az,bx,by,bz)
  %4828 = call float @dx.op.unary.f32(i32 25, float %4827)  ; Rsqrt(value)
  %4829 = fmul fast float %4820, %4828
  %4830 = fmul fast float %4822, %4828
  %4831 = fmul fast float %4828, %4826
  %4832 = fmul fast float %4831, %4556
  %4833 = fmul fast float %4831, %4557
  %4834 = fmul fast float %4831, %4558
  %4835 = fmul fast float %4829, %4579
  %4836 = fmul fast float %4829, %4580
  %4837 = fmul fast float %4829, %4581
  %4838 = fadd fast float %4835, %4832
  %4839 = fadd fast float %4836, %4833
  %4840 = fadd fast float %4837, %4834
  %4841 = fmul fast float %4830, %4585
  %4842 = fmul fast float %4830, %4586
  %4843 = fmul fast float %4830, %4587
  %4844 = fadd fast float %4838, %4841
  %4845 = fadd fast float %4839, %4842
  %4846 = fadd fast float %4840, %4843
  %4847 = call float @dx.op.dot3.f32(i32 55, float %4844, float %4845, float %4846, float %4844, float %4845, float %4846)  ; Dot3(ax,ay,az,bx,by,bz)
  %4848 = call float @dx.op.unary.f32(i32 25, float %4847)  ; Rsqrt(value)
  %4849 = fmul fast float %4844, %4848
  %4850 = fmul fast float %4845, %4848
  %4851 = fmul fast float %4846, %4848
  %4852 = icmp ne i32 %4768, 0
  %4853 = select i1 %4852, float 1.000000e+00, float 0.000000e+00
  %4854 = fmul fast float %4758, %4853
  %4855 = and i32 %4606, 1
  %4856 = icmp eq i32 %4855, 0
  br i1 %4856, label %4857, label %4861

; <label>:4857                                    ; preds = %4766
  %4858 = fsub fast float %4849, %4539
  %4859 = fsub fast float %4850, %4540
  %4860 = fsub fast float %4851, %4541
  br label %4861

; <label>:4861                                    ; preds = %4857, %4766
  %4862 = phi float [ %4858, %4857 ], [ %4849, %4766 ]
  %4863 = phi float [ %4859, %4857 ], [ %4850, %4766 ]
  %4864 = phi float [ %4860, %4857 ], [ %4851, %4766 ]
  %4865 = fmul float %4864, %4854
  %4866 = fmul float %4863, %4854
  %4867 = fmul float %4862, %4854
  %4868 = fadd fast float %4867, %4539
  %4869 = fadd fast float %4866, %4540
  %4870 = fadd fast float %4865, %4541
  %4871 = icmp ne i32 %4767, 0
  %4872 = select i1 %4871, float 1.000000e+00, float 0.000000e+00
  %4873 = fmul fast float %4758, %4872
  %4874 = fsub fast float %4812, %4546
  %4875 = fsub fast float %4813, %4547
  %4876 = fsub fast float %4814, %4548
  %4877 = fmul fast float %4874, %4873
  %4878 = fmul fast float %4875, %4873
  %4879 = fmul fast float %4876, %4873
  %4880 = fadd fast float %4877, %4546
  %4881 = fadd fast float %4878, %4547
  %4882 = fadd fast float %4879, %4548
  %4883 = fsub fast float %4785, %4545
  %4884 = fmul fast float %4883, %4873
  %4885 = fadd fast float %4884, %4545
  %4886 = fmul fast float %4873, %4532
  %4887 = fsub fast float %4532, %4886
  %4888 = fmul fast float %4873, %4531
  %4889 = fsub fast float %4531, %4888
  %4890 = bitcast float %4600 to i32
  %4891 = lshr i32 %4890, 16
  %4892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4891)  ; LegacyF16ToF32(value)
  %4893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4894 = extractvalue %dx.types.ResRet.i32 %4893, 0
  %4895 = and i32 %4894, 1
  %4896 = icmp eq i32 %4895, 0
  br i1 %4896, label %4897, label %4922

; <label>:4897                                    ; preds = %4861
  %4898 = fadd fast float %4785, 0xBFB99999A0000000
  %4899 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4900 = fmul fast float %4899, 0x3FF1C71C80000000
  %4901 = fsub fast float 1.000000e+00, %4900
  %4902 = call float @dx.op.unary.f32(i32 7, float %4901)  ; Saturate(value)
  %4903 = fmul fast float %4902, %4812
  %4904 = fmul fast float %4902, %4813
  %4905 = fmul fast float %4902, %4814
  %4906 = call float @dx.op.unary.f32(i32 7, float %4903)  ; Saturate(value)
  %4907 = call float @dx.op.unary.f32(i32 7, float %4904)  ; Saturate(value)
  %4908 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4909 = call float @dx.op.binary.f32(i32 35, float %4907, float %4908)  ; FMax(a,b)
  %4910 = call float @dx.op.binary.f32(i32 35, float %4906, float %4909)  ; FMax(a,b)
  %4911 = fcmp fast ogt float %4910, 0.000000e+00
  %4912 = bitcast float %4910 to i32
  %4913 = sub nsw i32 2129859010, %4912
  %4914 = bitcast i32 %4913 to float
  %4915 = select i1 %4911, float %4914, float 0.000000e+00
  %4916 = fmul fast float %4906, %4892
  %4917 = fmul fast float %4907, %4892
  %4918 = fmul fast float %4908, %4892
  %4919 = fmul fast float %4916, %4915
  %4920 = fmul fast float %4917, %4915
  %4921 = fmul fast float %4918, %4915
  br label %4922

; <label>:4922                                    ; preds = %4897, %4861
  %4923 = phi float [ %4892, %4861 ], [ %4919, %4897 ]
  %4924 = phi float [ %4892, %4861 ], [ %4920, %4897 ]
  %4925 = phi float [ %4892, %4861 ], [ %4921, %4897 ]
  %4926 = fsub fast float %4923, %4533
  %4927 = fsub fast float %4924, %4534
  %4928 = fsub fast float %4925, %4535
  %4929 = fmul fast float %4926, %4873
  %4930 = fmul fast float %4927, %4873
  %4931 = fmul fast float %4928, %4873
  %4932 = fadd fast float %4929, %4533
  %4933 = fadd fast float %4930, %4534
  %4934 = fadd fast float %4931, %4535
  %4935 = fadd fast float %4758, %4544
  %4936 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4937 = fsub fast float %4805, %4543
  %4938 = fmul fast float %4937, %4854
  %4939 = fadd fast float %4938, %4543
  %4940 = fsub fast float %4791, %4542
  %4941 = fmul fast float %4940, %4854
  %4942 = fadd fast float %4941, %4542
  br i1 %4856, label %4951, label %4943

; <label>:4943                                    ; preds = %4922
  %4944 = and i32 %4606, 32768
  %4945 = icmp eq i32 %4944, 0
  br i1 %4945, label %4961, label %4946

; <label>:4946                                    ; preds = %4943
  %4947 = fmul fast float %4854, 1.270000e+02
  %4948 = fadd fast float %4947, %4528
  %4949 = fadd fast float %4947, %4529
  %4950 = fadd fast float %4947, %4530
  br label %4961

; <label>:4951                                    ; preds = %4922
  %4952 = fsub fast float 1.270000e+02, %4528
  %4953 = fsub fast float 1.270000e+02, %4529
  %4954 = fsub fast float 1.270000e+02, %4530
  %4955 = fmul fast float %4854, %4952
  %4956 = fmul fast float %4854, %4953
  %4957 = fmul fast float %4854, %4954
  %4958 = fadd fast float %4955, %4528
  %4959 = fadd fast float %4956, %4529
  %4960 = fadd fast float %4957, %4530
  br label %4961

; <label>:4961                                    ; preds = %4951, %4946, %4943
  %4962 = phi float [ %4948, %4946 ], [ %4528, %4943 ], [ %4958, %4951 ]
  %4963 = phi float [ %4949, %4946 ], [ %4529, %4943 ], [ %4959, %4951 ]
  %4964 = phi float [ %4950, %4946 ], [ %4530, %4943 ], [ %4960, %4951 ]
  %4965 = call float @dx.op.dot3.f32(i32 55, float %4812, float %4813, float %4814, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4967 = extractvalue %dx.types.CBufRet.f32 %4966, 0
  %4968 = extractvalue %dx.types.CBufRet.f32 %4966, 1
  %4969 = fmul fast float %4968, %4965
  %4970 = fadd fast float %4969, %4967
  %4971 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4972 = bitcast float %4594 to i32
  %4973 = and i32 %4972, 65535
  %4974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4973)  ; LegacyF16ToF32(value)
  %4975 = lshr i32 %4972, 16
  %4976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4975)  ; LegacyF16ToF32(value)
  %4977 = fcmp fast oge float %4974, 0.000000e+00
  %4978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4979 = extractvalue %dx.types.CBufRet.f32 %4978, 0
  %4980 = select i1 %4977, float %4974, float %4979
  %4981 = fadd fast float %4980, %4976
  %4982 = fsub fast float %4971, %4527
  %4983 = fmul fast float %4982, %4758
  %4984 = fadd fast float %4983, %4527
  %4985 = fmul fast float %4981, %4758
  %4986 = call float @dx.op.binary.f32(i32 35, float %4526, float %4985)  ; FMax(a,b)
  %4987 = and i32 %4606, 16
  %4988 = icmp eq i32 %4987, 0
  br i1 %4988, label %5010, label %4989

; <label>:4989                                    ; preds = %4961
  %4990 = add i32 %4597, 0
  %4991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4990, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4992 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4991, %dx.types.Handle %4771, float %4699, float %4702, float undef, float undef, i32 0, i32 0, i32 undef, float %4704, float %4706, float undef, float %4708, float %4710, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4993 = extractvalue %dx.types.ResRet.f32 %4992, 0
  %4994 = extractvalue %dx.types.ResRet.f32 %4992, 1
  %4995 = extractvalue %dx.types.ResRet.f32 %4992, 2
  %4996 = and i32 %4890, 65535
  %4997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4996)  ; LegacyF16ToF32(value)
  %4998 = fmul fast float %4993, %4591
  %4999 = fmul fast float %4994, %4592
  %5000 = fmul fast float %4995, %4593
  %5001 = and i32 %4606, 16384
  %5002 = icmp ne i32 %5001, 0
  %5003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5004 = extractvalue %dx.types.CBufRet.f32 %5003, 0
  %5005 = select i1 %5002, float %5004, float 1.000000e+00
  %5006 = fmul fast float %5005, %4997
  %5007 = fmul fast float %4998, %5006
  %5008 = fmul fast float %4999, %5006
  %5009 = fmul fast float %5000, %5006
  br label %5010

; <label>:5010                                    ; preds = %4989, %4961
  %5011 = phi float [ %5007, %4989 ], [ 0.000000e+00, %4961 ]
  %5012 = phi float [ %5008, %4989 ], [ 0.000000e+00, %4961 ]
  %5013 = phi float [ %5009, %4989 ], [ 0.000000e+00, %4961 ]
  %5014 = fsub fast float %5011, %4536
  %5015 = fsub fast float %5012, %4537
  %5016 = fsub fast float %5013, %4538
  %5017 = fmul fast float %5014, %4758
  %5018 = fmul fast float %5015, %4758
  %5019 = fmul fast float %5016, %4758
  %5020 = fadd fast float %5017, %4536
  %5021 = fadd fast float %5018, %4537
  %5022 = fadd fast float %5019, %4538
  br label %4655

; <label>:5023                                    ; preds = %4655
  br label %5024

; <label>:5024                                    ; preds = %5023, %4469
  %5025 = phi float [ 0.000000e+00, %4469 ], [ %4656, %5023 ]
  %5026 = phi float [ %4438, %4469 ], [ %4657, %5023 ]
  %5027 = phi float [ %4419, %4469 ], [ %4658, %5023 ]
  %5028 = phi float [ %4412, %4469 ], [ %4659, %5023 ]
  %5029 = phi float [ %4413, %4469 ], [ %4660, %5023 ]
  %5030 = phi float [ %4414, %4469 ], [ %4661, %5023 ]
  %5031 = phi float [ 0.000000e+00, %4469 ], [ %4662, %5023 ]
  %5032 = phi float [ 0.000000e+00, %4469 ], [ %4663, %5023 ]
  %5033 = phi float [ %4409, %4469 ], [ %4664, %5023 ]
  %5034 = phi float [ %4410, %4469 ], [ %4665, %5023 ]
  %5035 = phi float [ %4411, %4469 ], [ %4666, %5023 ]
  %5036 = phi float [ %4406, %4469 ], [ %4667, %5023 ]
  %5037 = phi float [ %4407, %4469 ], [ %4668, %5023 ]
  %5038 = phi float [ %4408, %4469 ], [ %4669, %5023 ]
  %5039 = phi float [ %4464, %4469 ], [ %4670, %5023 ]
  %5040 = phi float [ %4465, %4469 ], [ %4671, %5023 ]
  %5041 = phi float [ %4466, %4469 ], [ %4672, %5023 ]
  %5042 = phi float [ %4417, %4469 ], [ %4673, %5023 ]
  %5043 = phi float [ %4416, %4469 ], [ %4674, %5023 ]
  %5044 = phi float [ 0.000000e+00, %4469 ], [ %4675, %5023 ]
  %5045 = phi float [ %4415, %4469 ], [ %4676, %5023 ]
  %5046 = phi float [ %4403, %4469 ], [ %4677, %5023 ]
  %5047 = phi float [ %4404, %4469 ], [ %4678, %5023 ]
  %5048 = phi float [ %4405, %4469 ], [ %4679, %5023 ]
  %5049 = call float @dx.op.dot3.f32(i32 55, float %5039, float %5040, float %5041, float %5039, float %5040, float %5041)  ; Dot3(ax,ay,az,bx,by,bz)
  %5050 = call float @dx.op.unary.f32(i32 25, float %5049)  ; Rsqrt(value)
  %5051 = fmul fast float %5050, %5039
  %5052 = fmul fast float %5050, %5040
  %5053 = fmul fast float %5050, %5041
  %5054 = fadd fast float %5044, %1244
  %5055 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5056 = call float @dx.op.dot3.f32(i32 55, float %5051, float %5052, float %5053, float %5051, float %5052, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %5057 = call float @dx.op.unary.f32(i32 25, float %5056)  ; Rsqrt(value)
  %5058 = fmul fast float %5057, %5051
  %5059 = fmul fast float %5057, %5052
  %5060 = fmul fast float %5057, %5053
  br label %5061

; <label>:5061                                    ; preds = %5024, %4400
  %5062 = phi float [ %5058, %5024 ], [ %4464, %4400 ]
  %5063 = phi float [ %5059, %5024 ], [ %4465, %4400 ]
  %5064 = phi float [ %5060, %5024 ], [ %4466, %4400 ]
  %5065 = phi float [ %5036, %5024 ], [ %4406, %4400 ]
  %5066 = phi float [ %5037, %5024 ], [ %4407, %4400 ]
  %5067 = phi float [ %5038, %5024 ], [ %4408, %4400 ]
  %5068 = phi float [ %5033, %5024 ], [ %4409, %4400 ]
  %5069 = phi float [ %5034, %5024 ], [ %4410, %4400 ]
  %5070 = phi float [ %5035, %5024 ], [ %4411, %4400 ]
  %5071 = phi float [ %5028, %5024 ], [ %4412, %4400 ]
  %5072 = phi float [ %5029, %5024 ], [ %4413, %4400 ]
  %5073 = phi float [ %5030, %5024 ], [ %4414, %4400 ]
  %5074 = phi float [ %5046, %5024 ], [ %4403, %4400 ]
  %5075 = phi float [ %5047, %5024 ], [ %4404, %4400 ]
  %5076 = phi float [ %5048, %5024 ], [ %4405, %4400 ]
  %5077 = phi float [ %5045, %5024 ], [ %4415, %4400 ]
  %5078 = phi float [ %5055, %5024 ], [ %1244, %4400 ]
  %5079 = phi float [ %5043, %5024 ], [ %4416, %4400 ]
  %5080 = phi float [ %5042, %5024 ], [ %4417, %4400 ]
  %5081 = phi float [ %5032, %5024 ], [ 0.000000e+00, %4400 ]
  %5082 = phi float [ %5031, %5024 ], [ 0.000000e+00, %4400 ]
  %5083 = phi float [ %5025, %5024 ], [ 0.000000e+00, %4400 ]
  %5084 = phi float [ %5026, %5024 ], [ %4438, %4400 ]
  %5085 = phi float [ %5027, %5024 ], [ %4419, %4400 ]
  %5086 = fadd fast float %5077, 0xBFB99999A0000000
  %5087 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5088 = fmul fast float %5087, 0x3FF1C71C80000000
  %5089 = call float @dx.op.binary.f32(i32 36, float %5077, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5090 = fsub fast float 1.000000e+00, %5088
  %5091 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5092 = fmul fast float %5091, %5074
  %5093 = fmul fast float %5091, %5075
  %5094 = fmul fast float %5091, %5076
  %5095 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5096 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  %5097 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5098 = fmul fast float %5088, %5074
  %5099 = fmul fast float %5088, %5075
  %5100 = fmul fast float %5088, %5076
  %5101 = fadd fast float %5098, %5089
  %5102 = fadd fast float %5099, %5089
  %5103 = fadd fast float %5100, %5089
  %5104 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5105 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5106 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5107 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %5109 = extractvalue %dx.types.ResRet.i32 %5108, 0
  %5110 = and i32 %5109, 1
  %5111 = icmp eq i32 %5110, 0
  br i1 %5111, label %5126, label %5112

; <label>:5112                                    ; preds = %5061
  %5113 = call float @dx.op.binary.f32(i32 35, float %5096, float %5097)  ; FMax(a,b)
  %5114 = call float @dx.op.binary.f32(i32 35, float %5095, float %5113)  ; FMax(a,b)
  %5115 = fcmp fast ogt float %5114, 0.000000e+00
  %5116 = bitcast float %5114 to i32
  %5117 = sub nsw i32 2129859010, %5116
  %5118 = bitcast i32 %5117 to float
  %5119 = select i1 %5115, float %5118, float 0.000000e+00
  %5120 = fmul fast float %5095, %5068
  %5121 = fmul fast float %5096, %5069
  %5122 = fmul fast float %5097, %5070
  %5123 = fmul fast float %5120, %5119
  %5124 = fmul fast float %5121, %5119
  %5125 = fmul fast float %5122, %5119
  br label %5126

; <label>:5126                                    ; preds = %5112, %5061
  %5127 = phi float [ %5123, %5112 ], [ %5068, %5061 ]
  %5128 = phi float [ %5124, %5112 ], [ %5069, %5061 ]
  %5129 = phi float [ %5125, %5112 ], [ %5070, %5061 ]
  %5130 = call float @dx.op.binary.f32(i32 36, float %5071, float 1.270000e+02)  ; FMin(a,b)
  %5131 = call float @dx.op.binary.f32(i32 36, float %5072, float 1.270000e+02)  ; FMin(a,b)
  %5132 = call float @dx.op.binary.f32(i32 36, float %5073, float 1.270000e+02)  ; FMin(a,b)
  %5133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.i32 %5133, 3
  %5135 = and i32 %5134, 8
  %5136 = icmp ne i32 %5135, 0
  %5137 = call float @dx.op.binary.f32(i32 35, float %5095, float %5074)  ; FMax(a,b)
  %5138 = call float @dx.op.binary.f32(i32 35, float %5096, float %5074)  ; FMax(a,b)
  %5139 = call float @dx.op.binary.f32(i32 35, float %5097, float %5074)  ; FMax(a,b)
  %5140 = call float @dx.op.dot3.f32(i32 55, float %5095, float %5096, float %5097, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5141 = select i1 %217, float %5074, float %5095
  %5142 = select i1 %217, float %5140, float %5096
  %5143 = select i1 %217, float 1.000000e+00, float %5097
  %5144 = select i1 %5136, float %5137, float %5141
  %5145 = select i1 %5136, float %5138, float %5142
  %5146 = select i1 %5136, float %5139, float %5143
  %5147 = call float @dx.op.dot3.f32(i32 55, float %5127, float %5128, float %5129, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5148 = select i1 %217, float %5147, float %5127
  %5149 = select i1 %217, float %5147, float %5128
  %5150 = select i1 %217, float %5147, float %5129
  %5151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.f32 %5151, 0
  %5153 = extractvalue %dx.types.CBufRet.f32 %5151, 1
  %5154 = extractvalue %dx.types.CBufRet.f32 %5151, 2
  %5155 = fadd fast float %5152, %155
  %5156 = fadd fast float %5153, %156
  %5157 = fadd fast float %5154, %157
  %5158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5158, 0
  %5160 = extractvalue %dx.types.CBufRet.f32 %5158, 1
  %5161 = fsub fast float %5155, %5159
  %5162 = fsub fast float %5156, %5160
  %5163 = fmul fast float %5161, %5161
  %5164 = fmul fast float %5162, %5162
  %5165 = fadd fast float %5163, %5164
  %5166 = call float @dx.op.unary.f32(i32 24, float %5165)  ; Sqrt(value)
  %5167 = extractvalue %dx.types.CBufRet.f32 %5158, 2
  %5168 = fcmp fast olt float %5166, %5167
  br i1 %5168, label %5169, label %5236

; <label>:5169                                    ; preds = %5126
  %5170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5171 = extractvalue %dx.types.CBufRet.f32 %5170, 0
  %5172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5173 = extractvalue %dx.types.CBufRet.f32 %5172, 0
  %5174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5175 = extractvalue %dx.types.CBufRet.f32 %5174, 0
  %5176 = extractvalue %dx.types.CBufRet.f32 %5170, 1
  %5177 = extractvalue %dx.types.CBufRet.f32 %5172, 1
  %5178 = extractvalue %dx.types.CBufRet.f32 %5174, 1
  %5179 = extractvalue %dx.types.CBufRet.f32 %5170, 3
  %5180 = extractvalue %dx.types.CBufRet.f32 %5172, 3
  %5181 = extractvalue %dx.types.CBufRet.f32 %5174, 3
  %5182 = fadd fast float %5179, %5155
  %5183 = fadd fast float %5180, %5156
  %5184 = fadd fast float %5181, %5157
  %5185 = fmul fast float %5182, %5171
  %5186 = call float @dx.op.tertiary.f32(i32 46, float %5183, float %5173, float %5185)  ; FMad(a,b,c)
  %5187 = call float @dx.op.tertiary.f32(i32 46, float %5184, float %5175, float %5186)  ; FMad(a,b,c)
  %5188 = fmul fast float %5182, %5176
  %5189 = call float @dx.op.tertiary.f32(i32 46, float %5183, float %5177, float %5188)  ; FMad(a,b,c)
  %5190 = call float @dx.op.tertiary.f32(i32 46, float %5184, float %5178, float %5189)  ; FMad(a,b,c)
  %5191 = fsub fast float %5187, %5179
  %5192 = fsub fast float %5190, %5180
  %5193 = fsub fast float %5191, %5159
  %5194 = fadd fast float %5193, %5167
  %5195 = fsub fast float %5192, %5160
  %5196 = fadd fast float %5195, %5167
  %5197 = extractvalue %dx.types.CBufRet.f32 %5158, 3
  %5198 = fmul fast float %5194, %5197
  %5199 = fmul fast float %5196, %5197
  %5200 = call float @dx.op.unary.f32(i32 7, float %5198)  ; Saturate(value)
  %5201 = call float @dx.op.unary.f32(i32 7, float %5199)  ; Saturate(value)
  %5202 = fsub fast float 1.000000e+00, %5200
  %5203 = fsub fast float 1.000000e+00, %5201
  %5204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %5202, float %5203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5205 = extractvalue %dx.types.ResRet.f32 %5204, 0
  %5206 = fcmp fast ugt float %5205, 0.000000e+00
  br i1 %5206, label %5207, label %5510

; <label>:5207                                    ; preds = %5169
  %5208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5209 = extractvalue %dx.types.CBufRet.f32 %5208, 2
  %5210 = fmul fast float %5209, %5205
  %5211 = extractvalue %dx.types.CBufRet.f32 %5208, 3
  %5212 = fadd fast float %5211, %5210
  %5213 = extractvalue %dx.types.CBufRet.f32 %5174, 2
  %5214 = fadd fast float %5212, %5181
  %5215 = fmul fast float %5187, %5175
  %5216 = call float @dx.op.tertiary.f32(i32 46, float %5190, float %5178, float %5215)  ; FMad(a,b,c)
  %5217 = call float @dx.op.tertiary.f32(i32 46, float %5214, float %5213, float %5216)  ; FMad(a,b,c)
  %5218 = fsub fast float %5217, %5181
  %5219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5220 = extractvalue %dx.types.CBufRet.f32 %5219, 2
  %5221 = fsub fast float %5218, %5220
  %5222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %5202, float %5203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5223 = extractvalue %dx.types.ResRet.f32 %5222, 0
  %5224 = extractvalue %dx.types.ResRet.f32 %5222, 1
  %5225 = extractvalue %dx.types.ResRet.f32 %5222, 2
  %5226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %5202, float %5203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5227 = extractvalue %dx.types.ResRet.f32 %5226, 0
  %5228 = extractvalue %dx.types.ResRet.f32 %5226, 1
  %5229 = extractvalue %dx.types.ResRet.f32 %5226, 2
  %5230 = fadd fast float %5227, %5223
  %5231 = fmul fast float %5230, 0x3F847AE140000000
  %5232 = fadd fast float %5228, %5224
  %5233 = fmul fast float %5232, 0x3F847AE140000000
  %5234 = fadd fast float %5229, %5225
  %5235 = fmul fast float %5234, 0x3F847AE140000000
  br label %5510

; <label>:5236                                    ; preds = %5126
  %5237 = and i32 %193, 1
  %5238 = icmp eq i32 %5237, 0
  br i1 %5238, label %5510, label %5239

; <label>:5239                                    ; preds = %5236
  %5240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5241 = extractvalue %dx.types.CBufRet.f32 %5240, 0
  %5242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5243 = extractvalue %dx.types.CBufRet.f32 %5242, 0
  %5244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5245 = extractvalue %dx.types.CBufRet.f32 %5244, 0
  %5246 = extractvalue %dx.types.CBufRet.f32 %5240, 1
  %5247 = extractvalue %dx.types.CBufRet.f32 %5242, 1
  %5248 = extractvalue %dx.types.CBufRet.f32 %5244, 1
  %5249 = extractvalue %dx.types.CBufRet.f32 %5240, 3
  %5250 = extractvalue %dx.types.CBufRet.f32 %5242, 3
  %5251 = extractvalue %dx.types.CBufRet.f32 %5244, 3
  %5252 = fadd fast float %5249, %5155
  %5253 = fadd fast float %5250, %5156
  %5254 = fadd fast float %5251, %5157
  %5255 = fmul fast float %5252, %5241
  %5256 = call float @dx.op.tertiary.f32(i32 46, float %5253, float %5243, float %5255)  ; FMad(a,b,c)
  %5257 = call float @dx.op.tertiary.f32(i32 46, float %5254, float %5245, float %5256)  ; FMad(a,b,c)
  %5258 = fmul fast float %5252, %5246
  %5259 = call float @dx.op.tertiary.f32(i32 46, float %5253, float %5247, float %5258)  ; FMad(a,b,c)
  %5260 = call float @dx.op.tertiary.f32(i32 46, float %5254, float %5248, float %5259)  ; FMad(a,b,c)
  %5261 = fsub fast float %5257, %5249
  %5262 = fsub fast float %5260, %5250
  %5263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.f32 %5263, 0
  %5265 = extractvalue %dx.types.CBufRet.f32 %5263, 1
  %5266 = extractvalue %dx.types.CBufRet.f32 %5263, 2
  %5267 = extractvalue %dx.types.CBufRet.f32 %5263, 3
  %5268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5269 = extractvalue %dx.types.CBufRet.f32 %5268, 3
  %5270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5271 = extractvalue %dx.types.CBufRet.i32 %5270, 0
  %5272 = extractvalue %dx.types.CBufRet.i32 %5270, 1
  %5273 = udiv i32 %5272, %5271
  %5274 = fsub fast float %5261, %5264
  %5275 = fsub fast float %5262, %5265
  %5276 = call float @dx.op.binary.f32(i32 35, float %5274, float 0.000000e+00)  ; FMax(a,b)
  %5277 = call float @dx.op.binary.f32(i32 35, float %5275, float 0.000000e+00)  ; FMax(a,b)
  %5278 = call float @dx.op.binary.f32(i32 36, float %5276, float %5266)  ; FMin(a,b)
  %5279 = call float @dx.op.binary.f32(i32 36, float %5277, float %5267)  ; FMin(a,b)
  %5280 = add i32 %5271, -1
  %5281 = add i32 %5273, -1
  %5282 = fmul fast float %5278, %5269
  %5283 = fmul fast float %5279, %5269
  %5284 = fptoui float %5282 to i32
  %5285 = fptoui float %5283 to i32
  %5286 = call i32 @dx.op.binary.i32(i32 40, i32 %5284, i32 %5280)  ; UMin(a,b)
  %5287 = call i32 @dx.op.binary.i32(i32 40, i32 %5285, i32 %5281)  ; UMin(a,b)
  %5288 = mul i32 %5287, %5271
  %5289 = add i32 %5288, %5286
  %5290 = shl i32 %5289, 2
  %5291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5290, i32 undef)  ; BufferLoad(srv,index,wot)
  %5292 = extractvalue %dx.types.ResRet.i32 %5291, 0
  %5293 = icmp eq i32 %5292, -1
  br i1 %5293, label %5510, label %5294

; <label>:5294                                    ; preds = %5239
  %5295 = mul i32 %5292, 148
  %5296 = add i32 %5295, 4
  %5297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5296, i32 undef)  ; BufferLoad(srv,index,wot)
  %5298 = extractvalue %dx.types.ResRet.f32 %5297, 0
  %5299 = add i32 %5295, 8
  %5300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5299, i32 undef)  ; BufferLoad(srv,index,wot)
  %5301 = extractvalue %dx.types.ResRet.f32 %5300, 0
  %5302 = add i32 %5295, 36
  %5303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5302, i32 undef)  ; BufferLoad(srv,index,wot)
  %5304 = extractvalue %dx.types.ResRet.f32 %5303, 0
  %5305 = add i32 %5295, 60
  %5306 = add i32 %5295, 92
  %5307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5306, i32 undef)  ; BufferLoad(srv,index,wot)
  %5308 = extractvalue %dx.types.ResRet.i32 %5307, 0
  %5309 = add i32 %5295, 116
  %5310 = fsub fast float %5261, %5298
  %5311 = fsub fast float %5262, %5301
  %5312 = fmul fast float %5269, %5310
  %5313 = fmul fast float %5269, %5311
  %5314 = call float @dx.op.unary.f32(i32 7, float %5312)  ; Saturate(value)
  %5315 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  %5316 = fsub fast float 1.000000e+00, %5315
  %5317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5318 = extractvalue %dx.types.CBufRet.f32 %5317, 2
  %5319 = call float @dx.op.unary.f32(i32 83, float %5314)  ; DerivCoarseX(value)
  %5320 = call float @dx.op.unary.f32(i32 83, float %5316)  ; DerivCoarseX(value)
  %5321 = call float @dx.op.unary.f32(i32 84, float %5314)  ; DerivCoarseY(value)
  %5322 = call float @dx.op.unary.f32(i32 84, float %5316)  ; DerivCoarseY(value)
  %5323 = fmul fast float %5319, %5318
  %5324 = fmul fast float %5320, %5318
  %5325 = fmul fast float %5321, %5318
  %5326 = fmul fast float %5322, %5318
  %5327 = call float @dx.op.dot2.f32(i32 54, float %5325, float %5326, float %5325, float %5326)  ; Dot2(ax,ay,bx,by)
  %5328 = call float @dx.op.dot2.f32(i32 54, float %5323, float %5324, float %5323, float %5324)  ; Dot2(ax,ay,bx,by)
  %5329 = call float @dx.op.binary.f32(i32 35, float %5328, float %5327)  ; FMax(a,b)
  %5330 = call float @dx.op.unary.f32(i32 23, float %5329)  ; Log(value)
  %5331 = fmul fast float %5330, 5.000000e-01
  %5332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5333 = extractvalue %dx.types.CBufRet.f32 %5332, 1
  %5334 = fadd fast float %5333, %5331
  %5335 = call float @dx.op.binary.f32(i32 35, float %5334, float 0.000000e+00)  ; FMax(a,b)
  %5336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.f32 %5336, 3
  %5338 = fadd fast float %5337, %5335
  %5339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5340 = extractvalue %dx.types.CBufRet.f32 %5339, 3
  %5341 = fadd fast float %5338, %5340
  %5342 = add i32 %5308, 0
  %5343 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5342, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5344 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5343, i32 0)  ; GetDimensions(handle,mipLevel)
  %5345 = extractvalue %dx.types.Dimensions %5344, 0
  %5346 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5345)  ; FirstbitLo(value)
  %5347 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5348 = extractvalue %dx.types.CBufRet.i32 %5347, 1
  %5349 = sub nsw i32 %5348, %5346
  %5350 = sitofp i32 %5349 to float
  %5351 = fsub fast float %5341, %5350
  %5352 = call float @dx.op.binary.f32(i32 35, float %5351, float 0.000000e+00)  ; FMax(a,b)
  %5353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5343, %dx.types.Handle %46, float %5314, float %5316, float %5304, float undef, i32 0, i32 0, i32 undef, float %5352)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5354 = extractvalue %dx.types.ResRet.f32 %5353, 0
  %5355 = fcmp ule float %5354, 0x3FE0101020000000
  %5356 = extractvalue %dx.types.CBufRet.i32 %5347, 0
  %5357 = and i32 %5356, 128
  %5358 = icmp ne i32 %5357, 0
  %5359 = and i1 %5355, %5358
  br i1 %5359, label %5510, label %5360

; <label>:5360                                    ; preds = %5294
  %5361 = add i32 %5295, 20
  %5362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5361, i32 undef)  ; BufferLoad(srv,index,wot)
  %5363 = extractvalue %dx.types.ResRet.f32 %5362, 0
  %5364 = add i32 %5295, 24
  %5365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5364, i32 undef)  ; BufferLoad(srv,index,wot)
  %5366 = extractvalue %dx.types.ResRet.f32 %5365, 0
  %5367 = add i32 %5295, 40
  %5368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5367, i32 undef)  ; BufferLoad(srv,index,wot)
  %5369 = extractvalue %dx.types.ResRet.f32 %5368, 0
  %5370 = add i32 %5295, 96
  %5371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5370, i32 undef)  ; BufferLoad(srv,index,wot)
  %5372 = extractvalue %dx.types.ResRet.i32 %5371, 0
  %5373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5374 = extractvalue %dx.types.CBufRet.f32 %5373, 2
  %5375 = fmul fast float %5374, %5314
  %5376 = fmul fast float %5374, %5316
  %5377 = extractvalue %dx.types.CBufRet.f32 %5373, 3
  %5378 = fadd fast float %5375, %5377
  %5379 = fadd fast float %5376, %5377
  %5380 = add i32 %5372, 0
  %5381 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5380, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5382 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5381, i32 0)  ; GetDimensions(handle,mipLevel)
  %5383 = extractvalue %dx.types.Dimensions %5382, 0
  %5384 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5383)  ; FirstbitLo(value)
  %5385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5386 = extractvalue %dx.types.CBufRet.i32 %5385, 1
  %5387 = sub nsw i32 %5386, %5384
  %5388 = sitofp i32 %5387 to float
  %5389 = fsub fast float %5338, %5388
  %5390 = call float @dx.op.binary.f32(i32 35, float %5389, float 0.000000e+00)  ; FMax(a,b)
  %5391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5381, %dx.types.Handle %46, float %5378, float %5379, float %5369, float undef, i32 0, i32 0, i32 undef, float %5390)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5392 = extractvalue %dx.types.ResRet.f32 %5391, 0
  %5393 = fmul fast float %5392, %5363
  %5394 = fadd fast float %5393, %5366
  %5395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5396 = extractvalue %dx.types.CBufRet.f32 %5395, 0
  %5397 = extractvalue %dx.types.CBufRet.f32 %5395, 1
  %5398 = extractvalue %dx.types.CBufRet.f32 %5395, 2
  %5399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5400 = extractvalue %dx.types.CBufRet.f32 %5399, 3
  %5401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5402 = extractvalue %dx.types.CBufRet.f32 %5401, 3
  %5403 = extractvalue %dx.types.CBufRet.f32 %5395, 3
  %5404 = fadd fast float %5400, %5261
  %5405 = fadd fast float %5402, %5262
  %5406 = fadd fast float %5394, %5403
  %5407 = fmul fast float %5404, %5396
  %5408 = call float @dx.op.tertiary.f32(i32 46, float %5405, float %5397, float %5407)  ; FMad(a,b,c)
  %5409 = call float @dx.op.tertiary.f32(i32 46, float %5406, float %5398, float %5408)  ; FMad(a,b,c)
  %5410 = fsub fast float %5409, %5403
  %5411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5412 = extractvalue %dx.types.CBufRet.f32 %5411, 2
  %5413 = fsub fast float %5410, %5412
  %5414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5415 = extractvalue %dx.types.CBufRet.i32 %5414, 0
  %5416 = call i32 @dx.op.binary.i32(i32 40, i32 %5292, i32 %5415)  ; UMin(a,b)
  %5417 = mul i32 %5416, 36
  %5418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5417, i32 undef)  ; BufferLoad(srv,index,wot)
  %5419 = extractvalue %dx.types.ResRet.i32 %5418, 0
  %5420 = add i32 %5417, 4
  %5421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5422 = extractvalue %dx.types.CBufRet.f32 %5421, 0
  %5423 = fmul fast float %5422, %5314
  %5424 = fmul fast float %5422, %5316
  %5425 = extractvalue %dx.types.CBufRet.f32 %5421, 1
  %5426 = fadd fast float %5423, %5425
  %5427 = fadd fast float %5424, %5425
  %5428 = icmp eq i32 %5419, 0
  br i1 %5428, label %5497, label %5429

; <label>:5429                                    ; preds = %5360
  br label %5430

; <label>:5430                                    ; preds = %5487, %5429
  %5431 = phi float [ %5488, %5487 ], [ 0.000000e+00, %5429 ]
  %5432 = phi float [ %5489, %5487 ], [ 0.000000e+00, %5429 ]
  %5433 = phi float [ %5490, %5487 ], [ 0.000000e+00, %5429 ]
  %5434 = phi float [ %5491, %5487 ], [ 0.000000e+00, %5429 ]
  %5435 = phi float [ %5492, %5487 ], [ 0.000000e+00, %5429 ]
  %5436 = phi float [ %5493, %5487 ], [ 0.000000e+00, %5429 ]
  %5437 = phi i32 [ %5494, %5487 ], [ 0, %5429 ]
  %5438 = shl i32 %5437, 2
  %5439 = add i32 %5305, %5438
  %5440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5439, i32 undef)  ; BufferLoad(srv,index,wot)
  %5441 = extractvalue %dx.types.ResRet.f32 %5440, 0
  %5442 = add i32 %5309, %5438
  %5443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5442, i32 undef)  ; BufferLoad(srv,index,wot)
  %5444 = extractvalue %dx.types.ResRet.i32 %5443, 0
  %5445 = add i32 %5444, 0
  %5446 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5445, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5447 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5446, i32 0)  ; GetDimensions(handle,mipLevel)
  %5448 = extractvalue %dx.types.Dimensions %5447, 0
  %5449 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5448)  ; FirstbitLo(value)
  %5450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5451 = extractvalue %dx.types.CBufRet.i32 %5450, 1
  %5452 = sub nsw i32 %5451, %5449
  %5453 = sitofp i32 %5452 to float
  %5454 = fsub fast float %5338, %5453
  %5455 = call float @dx.op.binary.f32(i32 35, float %5454, float 0.000000e+00)  ; FMax(a,b)
  %5456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5446, %dx.types.Handle %46, float %5426, float %5427, float %5441, float undef, i32 0, i32 0, i32 undef, float %5455)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5457 = extractvalue %dx.types.ResRet.f32 %5456, 0
  %5458 = fcmp fast ogt float %5457, 0.000000e+00
  br i1 %5458, label %5459, label %5487

; <label>:5459                                    ; preds = %5430
  %5460 = add i32 %5420, %5438
  %5461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5460, i32 undef)  ; BufferLoad(srv,index,wot)
  %5462 = extractvalue %dx.types.ResRet.i32 %5461, 0
  %5463 = and i32 %5462, 32767
  %5464 = mul nuw nsw i32 %5463, 928
  %5465 = add nuw nsw i32 %5464, 48
  %5466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5465, i32 undef)  ; BufferLoad(srv,index,wot)
  %5467 = extractvalue %dx.types.ResRet.f32 %5466, 0
  %5468 = extractvalue %dx.types.ResRet.f32 %5466, 1
  %5469 = extractvalue %dx.types.ResRet.f32 %5466, 2
  %5470 = add nuw nsw i32 %5464, 60
  %5471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5470, i32 undef)  ; BufferLoad(srv,index,wot)
  %5472 = extractvalue %dx.types.ResRet.f32 %5471, 0
  %5473 = extractvalue %dx.types.ResRet.f32 %5471, 1
  %5474 = extractvalue %dx.types.ResRet.f32 %5471, 2
  %5475 = fmul fast float %5467, %5457
  %5476 = fmul fast float %5468, %5457
  %5477 = fmul fast float %5469, %5457
  %5478 = fadd fast float %5475, %5431
  %5479 = fadd fast float %5476, %5432
  %5480 = fadd fast float %5477, %5433
  %5481 = fmul fast float %5472, %5457
  %5482 = fmul fast float %5473, %5457
  %5483 = fmul fast float %5474, %5457
  %5484 = fadd fast float %5481, %5434
  %5485 = fadd fast float %5482, %5435
  %5486 = fadd fast float %5483, %5436
  br label %5487

; <label>:5487                                    ; preds = %5459, %5430
  %5488 = phi float [ %5478, %5459 ], [ %5431, %5430 ]
  %5489 = phi float [ %5479, %5459 ], [ %5432, %5430 ]
  %5490 = phi float [ %5480, %5459 ], [ %5433, %5430 ]
  %5491 = phi float [ %5484, %5459 ], [ %5434, %5430 ]
  %5492 = phi float [ %5485, %5459 ], [ %5435, %5430 ]
  %5493 = phi float [ %5486, %5459 ], [ %5436, %5430 ]
  %5494 = add nuw i32 %5437, 1
  %5495 = icmp eq i32 %5494, %5419
  br i1 %5495, label %5496, label %5430

; <label>:5496                                    ; preds = %5487
  br label %5497

; <label>:5497                                    ; preds = %5496, %5360
  %5498 = phi float [ 0.000000e+00, %5360 ], [ %5488, %5496 ]
  %5499 = phi float [ 0.000000e+00, %5360 ], [ %5489, %5496 ]
  %5500 = phi float [ 0.000000e+00, %5360 ], [ %5490, %5496 ]
  %5501 = phi float [ 0.000000e+00, %5360 ], [ %5491, %5496 ]
  %5502 = phi float [ 0.000000e+00, %5360 ], [ %5492, %5496 ]
  %5503 = phi float [ 0.000000e+00, %5360 ], [ %5493, %5496 ]
  %5504 = fadd fast float %5501, %5498
  %5505 = fmul fast float %5504, 0x3F847AE140000000
  %5506 = fadd fast float %5502, %5499
  %5507 = fmul fast float %5506, 0x3F847AE140000000
  %5508 = fadd fast float %5503, %5500
  %5509 = fmul fast float %5508, 0x3F847AE140000000
  br label %5510

; <label>:5510                                    ; preds = %5497, %5294, %5239, %5236, %5207, %5169
  %5511 = phi float [ %5221, %5207 ], [ -1.310720e+05, %5169 ], [ %5413, %5497 ], [ -1.310720e+05, %5239 ], [ -1.310720e+05, %5294 ], [ -1.310720e+05, %5236 ]
  %5512 = phi float [ %5231, %5207 ], [ 0.000000e+00, %5169 ], [ %5505, %5497 ], [ 0.000000e+00, %5239 ], [ 0.000000e+00, %5294 ], [ 0.000000e+00, %5236 ]
  %5513 = phi float [ %5233, %5207 ], [ 0.000000e+00, %5169 ], [ %5507, %5497 ], [ 0.000000e+00, %5239 ], [ 0.000000e+00, %5294 ], [ 0.000000e+00, %5236 ]
  %5514 = phi float [ %5235, %5207 ], [ 0.000000e+00, %5169 ], [ %5509, %5497 ], [ 0.000000e+00, %5239 ], [ 0.000000e+00, %5294 ], [ 0.000000e+00, %5236 ]
  %5515 = phi i1 [ true, %5207 ], [ false, %5169 ], [ true, %5497 ], [ false, %5239 ], [ false, %5294 ], [ false, %5236 ]
  %5516 = and i32 %193, 3
  %5517 = icmp eq i32 %5516, 1
  %5518 = select i1 %5517, float 1.000000e+00, float 0.000000e+00
  %5519 = fsub fast float %5511, %157
  %5520 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  %5521 = select i1 %5515, float %5520, float 1.000000e+00
  %5522 = fmul fast float %5521, %5518
  %5523 = icmp eq i32 %5516, 3
  %5524 = select i1 %5523, float 1.000000e+00, float %5522
  %5525 = call float @dx.op.binary.f32(i32 35, float %5083, float %5524)  ; FMax(a,b)
  %5526 = call float @dx.op.unary.f32(i32 7, float %5525)  ; Saturate(value)
  %5527 = fcmp fast une float %5526, 0.000000e+00
  %5528 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %5529 = call float @dx.op.unary.f32(i32 25, float %5528)  ; Rsqrt(value)
  br i1 %5527, label %5537, label %5530

; <label>:5530                                    ; preds = %5510
  %5531 = fmul fast float %5529, %155
  %5532 = fmul fast float %5529, %156
  %5533 = fmul fast float %5529, %157
  %5534 = fsub fast float -0.000000e+00, %5531
  %5535 = fsub fast float -0.000000e+00, %5532
  %5536 = fsub fast float -0.000000e+00, %5533
  br label %5705

; <label>:5537                                    ; preds = %5510
  %5538 = fmul fast float %155, %5529
  %5539 = fsub fast float -0.000000e+00, %5538
  %5540 = fmul fast float %156, %5529
  %5541 = fsub fast float -0.000000e+00, %5540
  %5542 = fmul fast float %157, %5529
  %5543 = fsub fast float -0.000000e+00, %5542
  %5544 = call float @dx.op.dot3.f32(i32 55, float %5539, float %5541, float %5543, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %5545 = fmul fast float %5526, 2.500000e+00
  %5546 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5547 = fmul fast float %5526, 0x4013FFFFE0000000
  %5548 = fadd fast float %5547, 0xBFFFFFFFE0000000
  %5549 = call float @dx.op.unary.f32(i32 7, float %5548)  ; Saturate(value)
  %5550 = fmul fast float %5526, 0x4004000020000000
  %5551 = fadd fast float %5550, 0xBFF8000040000000
  %5552 = call float @dx.op.unary.f32(i32 7, float %5551)  ; Saturate(value)
  %5553 = call float @dx.op.unary.f32(i32 7, float %5546)  ; Saturate(value)
  %5554 = fmul fast float %5086, 1.000000e+01
  %5555 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5556 = fmul fast float %5555, 2.000000e+00
  %5557 = fsub fast float 3.000000e+00, %5556
  %5558 = fmul fast float %5555, %5555
  %5559 = fmul fast float %5558, %5557
  %5560 = fsub fast float 1.000000e+00, %5559
  %5561 = fsub fast float 0x3FE3333340000000, %5107
  %5562 = fmul fast float %5561, 0x400AAAAAA0000000
  %5563 = call float @dx.op.unary.f32(i32 7, float %5562)  ; Saturate(value)
  %5564 = fmul fast float %5560, %5563
  %5565 = fmul fast float %5144, 0x3FEA2B8620000000
  %5566 = fmul fast float %5145, 0x3FEA2B8620000000
  %5567 = fmul fast float %5146, 0x3FEA2B8620000000
  %5568 = fadd fast float %5565, 0x3FC81DFBA0000000
  %5569 = fmul fast float %5568, %5144
  %5570 = fadd fast float %5569, 0x3F910E6020000000
  %5571 = fadd fast float %5566, 0x3FC81DFBA0000000
  %5572 = fmul fast float %5571, %5145
  %5573 = fadd fast float %5572, 0x3F910E6020000000
  %5574 = fadd fast float %5567, 0x3FC81DFBA0000000
  %5575 = fmul fast float %5574, %5146
  %5576 = fadd fast float %5575, 0x3F910E6020000000
  %5577 = call float @dx.op.unary.f32(i32 7, float %5570)  ; Saturate(value)
  %5578 = call float @dx.op.unary.f32(i32 7, float %5573)  ; Saturate(value)
  %5579 = call float @dx.op.unary.f32(i32 7, float %5576)  ; Saturate(value)
  %5580 = fsub fast float %5577, %5144
  %5581 = fsub fast float %5578, %5145
  %5582 = fsub fast float %5579, %5146
  %5583 = fmul fast float %5580, %5553
  %5584 = fmul fast float %5583, %5564
  %5585 = fmul fast float %5581, %5553
  %5586 = fmul fast float %5585, %5564
  %5587 = fmul fast float %5582, %5553
  %5588 = fmul fast float %5587, %5564
  %5589 = fadd fast float %5584, %5144
  %5590 = fadd fast float %5586, %5145
  %5591 = fadd fast float %5588, %5146
  %5592 = fmul fast float %5080, %5080
  %5593 = fmul fast float %5592, %5592
  %5594 = fadd fast float %5549, 1.000000e+00
  %5595 = fsub fast float %5594, %5564
  %5596 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  %5597 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5598 = call float @dx.op.unary.f32(i32 7, float %5597)  ; Saturate(value)
  %5599 = fsub fast float 1.000000e+00, %5593
  %5600 = call float @dx.op.binary.f32(i32 36, float %5596, float %5599)  ; FMin(a,b)
  %5601 = call float @dx.op.unary.f32(i32 7, float %5552)  ; Saturate(value)
  %5602 = call float @dx.op.binary.f32(i32 35, float %5600, float %5601)  ; FMax(a,b)
  %5603 = fadd fast float %5598, 0xBFE4CCCCC0000000
  %5604 = fmul fast float %5603, 0x4006DB6DA0000000
  %5605 = call float @dx.op.unary.f32(i32 7, float %5604)  ; Saturate(value)
  %5606 = fmul fast float %5605, 2.000000e+00
  %5607 = fsub fast float 3.000000e+00, %5606
  %5608 = bitcast float %5104 to i32
  %5609 = ashr i32 %5608, 1
  %5610 = add nsw i32 %5609, 532487669
  %5611 = bitcast i32 %5610 to float
  %5612 = fsub fast float 1.000000e+00, %5611
  %5613 = bitcast float %5612 to i32
  %5614 = sub nsw i32 2129859010, %5613
  %5615 = bitcast i32 %5614 to float
  %5616 = fmul fast float %5615, 2.000000e+00
  %5617 = bitcast float %5105 to i32
  %5618 = ashr i32 %5617, 1
  %5619 = add nsw i32 %5618, 532487669
  %5620 = bitcast i32 %5619 to float
  %5621 = fsub fast float 1.000000e+00, %5620
  %5622 = bitcast float %5621 to i32
  %5623 = sub nsw i32 2129859010, %5622
  %5624 = bitcast i32 %5623 to float
  %5625 = fmul fast float %5624, 2.000000e+00
  %5626 = bitcast float %5106 to i32
  %5627 = ashr i32 %5626, 1
  %5628 = add nsw i32 %5627, 532487669
  %5629 = bitcast i32 %5628 to float
  %5630 = fsub fast float 1.000000e+00, %5629
  %5631 = bitcast float %5630 to i32
  %5632 = sub nsw i32 2129859010, %5631
  %5633 = bitcast i32 %5632 to float
  %5634 = fmul fast float %5633, 2.000000e+00
  %5635 = fsub fast float 0x4002A9FBE0000000, %5616
  %5636 = fadd fast float %5616, 0x3FD54FDF00000000
  %5637 = bitcast float %5636 to i32
  %5638 = sub nsw i32 2129859010, %5637
  %5639 = bitcast i32 %5638 to float
  %5640 = fmul fast float %5639, %5635
  %5641 = fmul fast float %5640, %5640
  %5642 = fsub fast float 0x4002A9FBE0000000, %5625
  %5643 = fadd fast float %5625, 0x3FD54FDF00000000
  %5644 = bitcast float %5643 to i32
  %5645 = sub nsw i32 2129859010, %5644
  %5646 = bitcast i32 %5645 to float
  %5647 = fmul fast float %5646, %5642
  %5648 = fmul fast float %5647, %5647
  %5649 = fsub fast float 0x4002A9FBE0000000, %5634
  %5650 = fadd fast float %5634, 0x3FD54FDF00000000
  %5651 = bitcast float %5650 to i32
  %5652 = sub nsw i32 2129859010, %5651
  %5653 = bitcast i32 %5652 to float
  %5654 = fmul fast float %5653, %5649
  %5655 = fmul fast float %5654, %5654
  %5656 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5641)  ; FMax(a,b)
  %5657 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5648)  ; FMax(a,b)
  %5658 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5655)  ; FMax(a,b)
  %5659 = fsub fast float 1.000000e+00, %5544
  %5660 = fadd fast float %5659, %5560
  %5661 = call float @dx.op.unary.f32(i32 7, float %5660)  ; Saturate(value)
  %5662 = fsub fast float 1.000000e+00, %5524
  %5663 = fmul fast float %5602, %5662
  %5664 = fmul fast float %5605, %5605
  %5665 = fmul fast float %5664, %5663
  %5666 = fmul fast float %5665, %5607
  %5667 = fmul fast float %5662, 0xBFE99999A0000000
  %5668 = fmul fast float %5667, %5553
  %5669 = fmul fast float %5668, %5564
  %5670 = fadd fast float %5669, 1.000000e+00
  %5671 = fadd fast float %5107, -1.000000e+00
  %5672 = fmul fast float %5670, %5671
  %5673 = fadd fast float %5672, 1.000000e+00
  %5674 = fsub fast float %5656, %5104
  %5675 = fsub fast float %5657, %5105
  %5676 = fsub fast float %5658, %5106
  %5677 = fmul fast float %5666, %5674
  %5678 = fmul fast float %5666, %5675
  %5679 = fmul fast float %5666, %5676
  %5680 = fadd fast float %5677, %5104
  %5681 = fadd fast float %5678, %5105
  %5682 = fadd fast float %5679, %5106
  %5683 = fsub fast float %107, %5062
  %5684 = fsub fast float %108, %5063
  %5685 = fsub fast float %109, %5064
  %5686 = fmul fast float %5666, %5683
  %5687 = fmul fast float %5666, %5684
  %5688 = fmul fast float %5666, %5685
  %5689 = fadd fast float %5686, %5062
  %5690 = fadd fast float %5687, %5063
  %5691 = fadd fast float %5688, %5064
  %5692 = fmul fast float %5666, %5661
  %5693 = call float @dx.op.unary.f32(i32 7, float %5673)  ; Saturate(value)
  %5694 = fsub fast float 1.000000e+00, %5693
  %5695 = fmul fast float %5692, %5694
  %5696 = fadd fast float %5695, %5693
  %5697 = fsub fast float 1.000000e+00, %5080
  %5698 = fmul fast float %5666, %5697
  %5699 = fadd fast float %5698, %5080
  %5700 = call float @dx.op.dot3.f32(i32 55, float %5689, float %5690, float %5691, float %5689, float %5690, float %5691)  ; Dot3(ax,ay,az,bx,by,bz)
  %5701 = call float @dx.op.unary.f32(i32 25, float %5700)  ; Rsqrt(value)
  %5702 = fmul fast float %5689, %5701
  %5703 = fmul fast float %5690, %5701
  %5704 = fmul fast float %5691, %5701
  br label %5705

; <label>:5705                                    ; preds = %5537, %5530
  %5706 = phi float [ %5536, %5530 ], [ %5543, %5537 ]
  %5707 = phi float [ %5535, %5530 ], [ %5541, %5537 ]
  %5708 = phi float [ %5534, %5530 ], [ %5539, %5537 ]
  %5709 = phi float [ %5533, %5530 ], [ %5542, %5537 ]
  %5710 = phi float [ %5532, %5530 ], [ %5540, %5537 ]
  %5711 = phi float [ %5531, %5530 ], [ %5538, %5537 ]
  %5712 = phi float [ %5062, %5530 ], [ %5702, %5537 ]
  %5713 = phi float [ %5063, %5530 ], [ %5703, %5537 ]
  %5714 = phi float [ %5064, %5530 ], [ %5704, %5537 ]
  %5715 = phi float [ %5144, %5530 ], [ %5589, %5537 ]
  %5716 = phi float [ %5145, %5530 ], [ %5590, %5537 ]
  %5717 = phi float [ %5146, %5530 ], [ %5591, %5537 ]
  %5718 = phi float [ %5104, %5530 ], [ %5680, %5537 ]
  %5719 = phi float [ %5105, %5530 ], [ %5681, %5537 ]
  %5720 = phi float [ %5106, %5530 ], [ %5682, %5537 ]
  %5721 = phi float [ %5107, %5530 ], [ %5696, %5537 ]
  %5722 = phi float [ %5080, %5530 ], [ %5699, %5537 ]
  %5723 = fsub fast float -0.000000e+00, %157
  %5724 = select i1 %217, float 0.000000e+00, float %5720
  %5725 = call float @dx.op.dot3.f32(i32 55, float %5712, float %5713, float %5714, float %5708, float %5707, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %5726 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  %5727 = call float @dx.op.dot3.f32(i32 55, float %5711, float %5710, float %5709, float %5712, float %5713, float %5714)  ; Dot3(ax,ay,az,bx,by,bz)
  %5728 = fmul fast float %5727, 2.000000e+00
  %5729 = fmul fast float %5728, %5712
  %5730 = fmul fast float %5728, %5713
  %5731 = fmul fast float %5728, %5714
  %5732 = fsub fast float %5711, %5729
  %5733 = fsub fast float %5710, %5730
  %5734 = fsub fast float %5709, %5731
  %5735 = call float @dx.op.binary.f32(i32 36, float %5722, float 1.000000e+00)  ; FMin(a,b)
  %5736 = fsub fast float 1.000000e+00, %5722
  %5737 = bitcast float %5736 to i32
  %5738 = sub nsw i32 2129859010, %5737
  %5739 = bitcast i32 %5738 to float
  %5740 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %5741 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5742 = fcmp fast oeq float %5741, 0.000000e+00
  %5743 = fcmp fast oeq float %5740, 0.000000e+00
  %5744 = or i1 %5743, %5742
  br i1 %5744, label %5774, label %5745

; <label>:5745                                    ; preds = %5705
  %5746 = fsub fast float -0.000000e+00, %74
  %5747 = fsub fast float -0.000000e+00, %72
  %5748 = call float @dx.op.unary.f32(i32 24, float %5741)  ; Sqrt(value)
  %5749 = fdiv fast float %5748, %5740
  %5750 = fcmp fast ogt float %5749, 0x3FFB6F8900000000
  %5751 = select i1 %5750, float 0x3FFB6F8900000000, float %5749
  %5752 = fmul fast float %5751, 0x3FE8A23460000000
  %5753 = call float @dx.op.unary.f32(i32 7, float %5752)  ; Saturate(value)
  %5754 = call float @dx.op.binary.f32(i32 35, float %5751, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5755 = fmul fast float %5753, %5740
  %5756 = fmul fast float %5754, 0x3FF279A740000000
  %5757 = fadd fast float %5756, -1.000000e+00
  %5758 = call float @dx.op.dot3.f32(i32 55, float %5746, float %5747, float %73, float %5746, float %5747, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5759 = call float @dx.op.unary.f32(i32 25, float %5758)  ; Rsqrt(value)
  %5760 = fmul fast float %5759, %5746
  %5761 = fmul fast float %5759, %5747
  %5762 = fmul fast float %5759, %73
  %5763 = fmul fast float %5757, %5757
  %5764 = fsub fast float 1.000000e+00, %5763
  %5765 = fmul fast float %5754, 0x40005F8BE0000000
  %5766 = fsub fast float 0x400C5BF8A0000000, %5765
  %5767 = fdiv fast float %5755, %5766
  %5768 = fmul fast float %5767, 0x3FEE31C3C0000000
  %5769 = fmul fast float %5768, %5764
  %5770 = fmul fast float %5754, 0x3FDACB7480000000
  %5771 = fadd fast float %5770, 0xBFD7347680000000
  %5772 = fmul fast float %5771, %5767
  %5773 = fmul fast float %5772, %5764
  br label %5774

; <label>:5774                                    ; preds = %5745, %5705
  %5775 = phi float [ %5760, %5745 ], [ 0.000000e+00, %5705 ]
  %5776 = phi float [ %5761, %5745 ], [ 0.000000e+00, %5705 ]
  %5777 = phi float [ %5762, %5745 ], [ 0.000000e+00, %5705 ]
  %5778 = phi float [ %5769, %5745 ], [ 0.000000e+00, %5705 ]
  %5779 = phi float [ %5773, %5745 ], [ 0.000000e+00, %5705 ]
  %5780 = call float @dx.op.dot3.f32(i32 55, float %5775, float %5776, float %5777, float %5712, float %5713, float %5714)  ; Dot3(ax,ay,az,bx,by,bz)
  %5781 = fmul fast float %5780, 0x3FDF454380000000
  %5782 = fmul fast float %5780, %5780
  %5783 = fmul fast float %5782, 0x3FEE471020000000
  %5784 = fadd fast float %5783, 0xBFD42F6020000000
  %5785 = fmul fast float %5740, 0x3FD20DD760000000
  %5786 = fmul fast float %5784, %5779
  %5787 = fadd fast float %5786, %5785
  %5788 = fmul fast float %5781, %5778
  %5789 = fadd fast float %5787, %5788
  %5790 = fsub fast float %5787, %5788
  %5791 = call float @dx.op.dot3.f32(i32 55, float %5775, float %5776, float %5777, float %5732, float %5733, float %5734)  ; Dot3(ax,ay,az,bx,by,bz)
  %5792 = fmul fast float %5791, 0x3FDF454380000000
  %5793 = fmul fast float %5791, %5791
  %5794 = fmul fast float %5793, 0x3FEE471020000000
  %5795 = fadd fast float %5794, 0xBFD42F6020000000
  %5796 = call float @dx.op.dot3.f32(i32 55, float %5740, float %5778, float %5779, float 0x3FD20DD760000000, float %5792, float %5795)  ; Dot3(ax,ay,az,bx,by,bz)
  %5797 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %67)  ; FMax(a,b)
  %5798 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5799 = fcmp fast oeq float %5798, 0.000000e+00
  %5800 = fcmp fast oeq float %5797, 0.000000e+00
  %5801 = or i1 %5800, %5799
  br i1 %5801, label %5831, label %5802

; <label>:5802                                    ; preds = %5774
  %5803 = fsub fast float -0.000000e+00, %70
  %5804 = fsub fast float -0.000000e+00, %68
  %5805 = call float @dx.op.unary.f32(i32 24, float %5798)  ; Sqrt(value)
  %5806 = fdiv fast float %5805, %5797
  %5807 = fcmp fast ogt float %5806, 0x3FFB6F8900000000
  %5808 = select i1 %5807, float 0x3FFB6F8900000000, float %5806
  %5809 = fmul fast float %5808, 0x3FE8A23460000000
  %5810 = call float @dx.op.unary.f32(i32 7, float %5809)  ; Saturate(value)
  %5811 = call float @dx.op.binary.f32(i32 35, float %5808, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5812 = fmul fast float %5810, %5797
  %5813 = fmul fast float %5811, 0x3FF279A740000000
  %5814 = fadd fast float %5813, -1.000000e+00
  %5815 = call float @dx.op.dot3.f32(i32 55, float %5803, float %5804, float %69, float %5803, float %5804, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5816 = call float @dx.op.unary.f32(i32 25, float %5815)  ; Rsqrt(value)
  %5817 = fmul fast float %5816, %5803
  %5818 = fmul fast float %5816, %5804
  %5819 = fmul fast float %5816, %69
  %5820 = fmul fast float %5814, %5814
  %5821 = fsub fast float 1.000000e+00, %5820
  %5822 = fmul fast float %5811, 0x40005F8BE0000000
  %5823 = fsub fast float 0x400C5BF8A0000000, %5822
  %5824 = fdiv fast float %5812, %5823
  %5825 = fmul fast float %5824, 0x3FEE31C3C0000000
  %5826 = fmul fast float %5825, %5821
  %5827 = fmul fast float %5811, 0x3FDACB7480000000
  %5828 = fadd fast float %5827, 0xBFD7347680000000
  %5829 = fmul fast float %5828, %5824
  %5830 = fmul fast float %5829, %5821
  br label %5831

; <label>:5831                                    ; preds = %5802, %5774
  %5832 = phi float [ %5817, %5802 ], [ 0.000000e+00, %5774 ]
  %5833 = phi float [ %5818, %5802 ], [ 0.000000e+00, %5774 ]
  %5834 = phi float [ %5819, %5802 ], [ 0.000000e+00, %5774 ]
  %5835 = phi float [ %5826, %5802 ], [ 0.000000e+00, %5774 ]
  %5836 = phi float [ %5830, %5802 ], [ 0.000000e+00, %5774 ]
  %5837 = call float @dx.op.dot3.f32(i32 55, float %5832, float %5833, float %5834, float %5712, float %5713, float %5714)  ; Dot3(ax,ay,az,bx,by,bz)
  %5838 = fmul fast float %5837, 0x3FDF454380000000
  %5839 = fmul fast float %5837, %5837
  %5840 = fmul fast float %5839, 0x3FEE471020000000
  %5841 = fadd fast float %5840, 0xBFD42F6020000000
  %5842 = fmul fast float %5797, 0x3FD20DD760000000
  %5843 = fmul fast float %5841, %5836
  %5844 = fadd fast float %5843, %5842
  %5845 = fmul fast float %5838, %5835
  %5846 = fadd fast float %5844, %5845
  %5847 = fsub fast float %5844, %5845
  %5848 = call float @dx.op.dot3.f32(i32 55, float %5832, float %5833, float %5834, float %5732, float %5733, float %5734)  ; Dot3(ax,ay,az,bx,by,bz)
  %5849 = fmul fast float %5848, 0x3FDF454380000000
  %5850 = fmul fast float %5848, %5848
  %5851 = fmul fast float %5850, 0x3FEE471020000000
  %5852 = fadd fast float %5851, 0xBFD42F6020000000
  %5853 = call float @dx.op.dot3.f32(i32 55, float %5797, float %5835, float %5836, float 0x3FD20DD760000000, float %5849, float %5852)  ; Dot3(ax,ay,az,bx,by,bz)
  %5854 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %63)  ; FMax(a,b)
  %5855 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5856 = fcmp fast oeq float %5855, 0.000000e+00
  %5857 = fcmp fast oeq float %5854, 0.000000e+00
  %5858 = or i1 %5857, %5856
  br i1 %5858, label %5888, label %5859

; <label>:5859                                    ; preds = %5831
  %5860 = fsub fast float -0.000000e+00, %66
  %5861 = fsub fast float -0.000000e+00, %64
  %5862 = call float @dx.op.unary.f32(i32 24, float %5855)  ; Sqrt(value)
  %5863 = fdiv fast float %5862, %5854
  %5864 = fcmp fast ogt float %5863, 0x3FFB6F8900000000
  %5865 = select i1 %5864, float 0x3FFB6F8900000000, float %5863
  %5866 = fmul fast float %5865, 0x3FE8A23460000000
  %5867 = call float @dx.op.unary.f32(i32 7, float %5866)  ; Saturate(value)
  %5868 = call float @dx.op.binary.f32(i32 35, float %5865, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5869 = fmul fast float %5867, %5854
  %5870 = fmul fast float %5868, 0x3FF279A740000000
  %5871 = fadd fast float %5870, -1.000000e+00
  %5872 = call float @dx.op.dot3.f32(i32 55, float %5860, float %5861, float %65, float %5860, float %5861, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5873 = call float @dx.op.unary.f32(i32 25, float %5872)  ; Rsqrt(value)
  %5874 = fmul fast float %5873, %5860
  %5875 = fmul fast float %5873, %5861
  %5876 = fmul fast float %5873, %65
  %5877 = fmul fast float %5871, %5871
  %5878 = fsub fast float 1.000000e+00, %5877
  %5879 = fmul fast float %5868, 0x40005F8BE0000000
  %5880 = fsub fast float 0x400C5BF8A0000000, %5879
  %5881 = fdiv fast float %5869, %5880
  %5882 = fmul fast float %5881, 0x3FEE31C3C0000000
  %5883 = fmul fast float %5882, %5878
  %5884 = fmul fast float %5868, 0x3FDACB7480000000
  %5885 = fadd fast float %5884, 0xBFD7347680000000
  %5886 = fmul fast float %5885, %5881
  %5887 = fmul fast float %5886, %5878
  br label %5888

; <label>:5888                                    ; preds = %5859, %5831
  %5889 = phi float [ %5874, %5859 ], [ 0.000000e+00, %5831 ]
  %5890 = phi float [ %5875, %5859 ], [ 0.000000e+00, %5831 ]
  %5891 = phi float [ %5876, %5859 ], [ 0.000000e+00, %5831 ]
  %5892 = phi float [ %5883, %5859 ], [ 0.000000e+00, %5831 ]
  %5893 = phi float [ %5887, %5859 ], [ 0.000000e+00, %5831 ]
  %5894 = call float @dx.op.dot3.f32(i32 55, float %5889, float %5890, float %5891, float %5712, float %5713, float %5714)  ; Dot3(ax,ay,az,bx,by,bz)
  %5895 = fmul fast float %5894, 0x3FDF454380000000
  %5896 = fmul fast float %5894, %5894
  %5897 = fmul fast float %5896, 0x3FEE471020000000
  %5898 = fadd fast float %5897, 0xBFD42F6020000000
  %5899 = fmul fast float %5854, 0x3FD20DD760000000
  %5900 = fmul fast float %5898, %5893
  %5901 = fadd fast float %5900, %5899
  %5902 = fmul fast float %5895, %5892
  %5903 = fadd fast float %5901, %5902
  %5904 = fsub fast float %5901, %5902
  %5905 = call float @dx.op.dot3.f32(i32 55, float %5889, float %5890, float %5891, float %5732, float %5733, float %5734)  ; Dot3(ax,ay,az,bx,by,bz)
  %5906 = fmul fast float %5905, 0x3FDF454380000000
  %5907 = fmul fast float %5905, %5905
  %5908 = fmul fast float %5907, 0x3FEE471020000000
  %5909 = fadd fast float %5908, 0xBFD42F6020000000
  %5910 = call float @dx.op.dot3.f32(i32 55, float %5854, float %5892, float %5893, float 0x3FD20DD760000000, float %5906, float %5909)  ; Dot3(ax,ay,az,bx,by,bz)
  %5911 = call float @dx.op.binary.f32(i32 35, float %5789, float 0.000000e+00)  ; FMax(a,b)
  %5912 = call float @dx.op.binary.f32(i32 35, float %5846, float 0.000000e+00)  ; FMax(a,b)
  %5913 = call float @dx.op.binary.f32(i32 35, float %5903, float 0.000000e+00)  ; FMax(a,b)
  %5914 = call float @dx.op.binary.f32(i32 35, float %5790, float 0.000000e+00)  ; FMax(a,b)
  %5915 = call float @dx.op.binary.f32(i32 35, float %5847, float 0.000000e+00)  ; FMax(a,b)
  %5916 = call float @dx.op.binary.f32(i32 35, float %5904, float 0.000000e+00)  ; FMax(a,b)
  %5917 = call float @dx.op.binary.f32(i32 35, float %5796, float 0.000000e+00)  ; FMax(a,b)
  %5918 = call float @dx.op.binary.f32(i32 35, float %5853, float 0.000000e+00)  ; FMax(a,b)
  %5919 = call float @dx.op.binary.f32(i32 35, float %5910, float 0.000000e+00)  ; FMax(a,b)
  %5920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5921 = extractvalue %dx.types.CBufRet.f32 %5920, 0
  %5922 = call float @dx.op.binary.f32(i32 36, float %5715, float %5921)  ; FMin(a,b)
  %5923 = fsub fast float 1.000000e+00, %5735
  %5924 = fmul fast float %5922, %5923
  %5925 = fsub fast float 1.000000e+00, %5924
  %5926 = bitcast float %5925 to i32
  %5927 = sub nsw i32 2129859010, %5926
  %5928 = bitcast i32 %5927 to float
  %5929 = call float @dx.op.binary.f32(i32 36, float %5716, float %5921)  ; FMin(a,b)
  %5930 = fmul fast float %5929, %5923
  %5931 = fsub fast float 1.000000e+00, %5930
  %5932 = bitcast float %5931 to i32
  %5933 = sub nsw i32 2129859010, %5932
  %5934 = bitcast i32 %5933 to float
  %5935 = call float @dx.op.binary.f32(i32 36, float %5717, float %5921)  ; FMin(a,b)
  %5936 = fmul fast float %5935, %5923
  %5937 = fsub fast float 1.000000e+00, %5936
  %5938 = bitcast float %5937 to i32
  %5939 = sub nsw i32 2129859010, %5938
  %5940 = bitcast i32 %5939 to float
  %5941 = fmul fast float %5911, %5735
  %5942 = fmul fast float %5941, %5928
  %5943 = fmul fast float %5912, %5735
  %5944 = fmul fast float %5943, %5934
  %5945 = fmul fast float %5913, %5735
  %5946 = fmul fast float %5945, %5940
  %5947 = call float @dx.op.binary.f32(i32 36, float %5718, float %5921)  ; FMin(a,b)
  %5948 = fmul fast float %5947, %5923
  %5949 = fsub fast float 1.000000e+00, %5948
  %5950 = bitcast float %5949 to i32
  %5951 = sub nsw i32 2129859010, %5950
  %5952 = bitcast i32 %5951 to float
  %5953 = call float @dx.op.binary.f32(i32 36, float %5719, float %5921)  ; FMin(a,b)
  %5954 = fmul fast float %5953, %5923
  %5955 = fsub fast float 1.000000e+00, %5954
  %5956 = bitcast float %5955 to i32
  %5957 = sub nsw i32 2129859010, %5956
  %5958 = bitcast i32 %5957 to float
  %5959 = call float @dx.op.binary.f32(i32 36, float %5724, float %5921)  ; FMin(a,b)
  %5960 = fmul fast float %5959, %5923
  %5961 = fsub fast float 1.000000e+00, %5960
  %5962 = bitcast float %5961 to i32
  %5963 = sub nsw i32 2129859010, %5962
  %5964 = bitcast i32 %5963 to float
  %5965 = fmul fast float %5917, %5735
  %5966 = fmul fast float %5965, %5952
  %5967 = fmul fast float %5918, %5735
  %5968 = fmul fast float %5967, %5958
  %5969 = fmul fast float %5919, %5735
  %5970 = fmul fast float %5969, %5964
  %5971 = call float @dx.op.dot3.f32(i32 55, float %5942, float %5944, float %5946, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5972 = select i1 %217, float 0.000000e+00, float %5942
  %5973 = select i1 %217, float %5971, float %5944
  %5974 = select i1 %217, float 0.000000e+00, float %5946
  %5975 = call float @dx.op.dot3.f32(i32 55, float %5914, float %5915, float %5916, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5976 = select i1 %217, float 0.000000e+00, float %5914
  %5977 = select i1 %217, float %5975, float %5915
  %5978 = select i1 %217, float 0.000000e+00, float %5916
  %5979 = call float @dx.op.dot3.f32(i32 55, float %5966, float %5968, float %5970, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5980 = select i1 %217, float 0.000000e+00, float %5966
  %5981 = select i1 %217, float %5979, float %5968
  %5982 = select i1 %217, float 0.000000e+00, float %5970
  %5983 = fmul fast float %4418, %4418
  %5984 = call float @dx.op.unary.f32(i32 7, float %5983)  ; Saturate(value)
  %5985 = fmul fast float %5726, 9.843750e-01
  %5986 = fmul fast float %5721, 9.843750e-01
  %5987 = fadd fast float %5985, 7.812500e-03
  %5988 = fadd fast float %5986, 7.812500e-03
  %5989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5987, float %5988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5990 = extractvalue %dx.types.ResRet.f32 %5989, 0
  %5991 = extractvalue %dx.types.ResRet.f32 %5989, 1
  %5992 = extractvalue %dx.types.ResRet.f32 %5989, 2
  %5993 = extractvalue %dx.types.ResRet.f32 %5989, 3
  %5994 = fsub fast float 1.000000e+00, %5984
  %5995 = fsub fast float %5992, %5990
  %5996 = fsub fast float %5993, %5991
  %5997 = fmul fast float %5995, %5994
  %5998 = fmul fast float %5996, %5994
  %5999 = fadd fast float %5997, %5990
  %6000 = fadd fast float %5998, %5991
  %6001 = fmul fast float %5999, %5718
  %6002 = fmul fast float %5999, %5719
  %6003 = fmul fast float %5999, %5724
  %6004 = fadd fast float %6001, %6000
  %6005 = fadd fast float %6002, %6000
  %6006 = fadd fast float %6003, %6000
  %6007 = fcmp fast ogt float %5081, 0.000000e+00
  br i1 %6007, label %6008, label %6034

; <label>:6008                                    ; preds = %5888
  %6009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5081, float %5726, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6010 = extractvalue %dx.types.ResRet.f32 %6009, 0
  %6011 = extractvalue %dx.types.ResRet.f32 %6009, 1
  %6012 = extractvalue %dx.types.ResRet.f32 %6009, 2
  %6013 = fadd fast float %6010, -5.000000e-01
  %6014 = fadd fast float %6011, -5.000000e-01
  %6015 = fadd fast float %6012, -5.000000e-01
  %6016 = fsub fast float 1.000000e+00, %5718
  %6017 = fsub fast float 1.000000e+00, %5719
  %6018 = fsub fast float 1.000000e+00, %5724
  %6019 = fmul fast float %5718, 4.000000e+00
  %6020 = fmul fast float %6019, %6016
  %6021 = fmul fast float %6020, %6013
  %6022 = fmul fast float %5719, 4.000000e+00
  %6023 = fmul fast float %6022, %6017
  %6024 = fmul fast float %6023, %6014
  %6025 = fmul fast float %5724, 4.000000e+00
  %6026 = fmul fast float %6025, %6018
  %6027 = fmul fast float %6026, %6015
  %6028 = fadd fast float %6021, %6004
  %6029 = fadd fast float %6024, %6005
  %6030 = fadd fast float %6027, %6006
  %6031 = call float @dx.op.unary.f32(i32 7, float %6028)  ; Saturate(value)
  %6032 = call float @dx.op.unary.f32(i32 7, float %6029)  ; Saturate(value)
  %6033 = call float @dx.op.unary.f32(i32 7, float %6030)  ; Saturate(value)
  br label %6034

; <label>:6034                                    ; preds = %6008, %5888
  %6035 = phi float [ %6031, %6008 ], [ %6004, %5888 ]
  %6036 = phi float [ %6032, %6008 ], [ %6005, %5888 ]
  %6037 = phi float [ %6033, %6008 ], [ %6006, %5888 ]
  %6038 = call float @dx.op.binary.f32(i32 35, float %6036, float %6037)  ; FMax(a,b)
  %6039 = call float @dx.op.binary.f32(i32 35, float %6035, float %6038)  ; FMax(a,b)
  %6040 = fsub fast float 1.000000e+00, %6039
  %6041 = call float @dx.op.dot3.f32(i32 55, float %5715, float %5716, float %5717, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6042 = fcmp fast ogt float %6041, 0x3E7FF19E20000000
  %6043 = fdiv fast float 1.000000e+00, %6041
  %6044 = select i1 %6042, float %6043, float 0.000000e+00
  %6045 = fmul fast float %6044, %5715
  %6046 = fmul fast float %6044, %5716
  %6047 = fmul fast float %6044, %5717
  %6048 = fadd fast float %6045, -1.000000e+00
  %6049 = fadd fast float %6046, -1.000000e+00
  %6050 = fadd fast float %6047, -1.000000e+00
  %6051 = fmul fast float %6048, 5.000000e-01
  %6052 = fmul fast float %6049, 5.000000e-01
  %6053 = fmul fast float %6050, 5.000000e-01
  %6054 = fadd fast float %6051, 1.000000e+00
  %6055 = fadd fast float %6052, 1.000000e+00
  %6056 = fadd fast float %6053, 1.000000e+00
  %6057 = call float @dx.op.binary.f32(i32 35, float %5726, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6058 = fdiv fast float %4418, %6057
  %6059 = fcmp fast olt float %5130, 1.270000e+02
  %6060 = fcmp fast olt float %5131, 1.270000e+02
  %6061 = fcmp fast olt float %5132, 1.270000e+02
  %6062 = fmul fast float %5130, 0xBFF7154760000000
  %6063 = fmul fast float %6062, %6058
  %6064 = fmul fast float %5131, 0xBFF7154760000000
  %6065 = fmul fast float %6064, %6058
  %6066 = fmul fast float %5132, 0xBFF7154760000000
  %6067 = fmul fast float %6066, %6058
  %6068 = call float @dx.op.unary.f32(i32 21, float %6063)  ; Exp(value)
  %6069 = call float @dx.op.unary.f32(i32 21, float %6065)  ; Exp(value)
  %6070 = call float @dx.op.unary.f32(i32 21, float %6067)  ; Exp(value)
  %6071 = call float @dx.op.unary.f32(i32 7, float %6068)  ; Saturate(value)
  %6072 = call float @dx.op.unary.f32(i32 7, float %6069)  ; Saturate(value)
  %6073 = call float @dx.op.unary.f32(i32 7, float %6070)  ; Saturate(value)
  %6074 = select i1 %6059, float %6071, float 0.000000e+00
  %6075 = select i1 %6060, float %6072, float 0.000000e+00
  %6076 = select i1 %6061, float %6073, float 0.000000e+00
  %6077 = fmul fast float %6074, %6040
  %6078 = fmul fast float %6075, %6040
  %6079 = fmul fast float %6076, %6040
  %6080 = fadd fast float %6077, -1.000000e+00
  %6081 = fadd fast float %6078, -1.000000e+00
  %6082 = fadd fast float %6079, -1.000000e+00
  %6083 = fmul fast float %6080, %5078
  %6084 = fmul fast float %6081, %5078
  %6085 = fmul fast float %6082, %5078
  %6086 = fmul fast float %6035, %5980
  %6087 = fmul fast float %6036, %5981
  %6088 = fmul fast float %6037, %5982
  %6089 = fsub fast float 1.000000e+00, %5726
  %6090 = bitcast float %6089 to i32
  %6091 = sitofp i32 %6090 to float
  %6092 = fmul fast float %6091, 5.000000e+00
  %6093 = fadd fast float %6092, 0xC1EFBF8940000000
  %6094 = fptosi float %6093 to i32
  %6095 = bitcast i32 %6094 to float
  %6096 = fmul fast float %6095, %5082
  %6097 = fmul fast float %5972, %6096
  %6098 = fmul fast float %6097, %6040
  %6099 = fmul fast float %6098, %6054
  %6100 = fmul fast float %5973, %6096
  %6101 = fmul fast float %6100, %6040
  %6102 = fmul fast float %6101, %6055
  %6103 = fmul fast float %5974, %6096
  %6104 = fmul fast float %6103, %6040
  %6105 = fmul fast float %6104, %6056
  %6106 = fadd fast float %6086, %5065
  %6107 = fadd fast float %6106, %6099
  %6108 = fmul fast float %6107, %5078
  %6109 = fadd fast float %6087, %5066
  %6110 = fadd fast float %6109, %6102
  %6111 = fmul fast float %6110, %5078
  %6112 = fadd fast float %6088, %5067
  %6113 = fadd fast float %6112, %6105
  %6114 = fmul fast float %6113, %5078
  %6115 = fmul fast float %5719, 0x4012D0A400000000
  %6116 = fadd fast float %6085, 1.000000e+00
  %6117 = fadd fast float %6084, 1.000000e+00
  %6118 = fadd fast float %6083, 1.000000e+00
  %6119 = fmul fast float %6040, %5974
  %6120 = fmul fast float %6040, %5973
  %6121 = fmul fast float %6040, %5972
  %6122 = fsub fast float 1.000000e+00, %5721
  %6123 = fmul fast float %6122, %5078
  %6124 = fsub fast float 1.000000e+00, %6123
  %6125 = call float @dx.op.unary.f32(i32 7, float %6124)  ; Saturate(value)
  %6126 = fsub fast float 1.000000e+00, %6125
  %6127 = fadd fast float %6115, 0x3FDB6377A0000000
  %6128 = fmul fast float %6126, %6127
  %6129 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5150, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6130 = fadd fast float %6128, %6129
  %6131 = call float @dx.op.unary.f32(i32 7, float %6130)  ; Saturate(value)
  %6132 = call float @dx.op.binary.f32(i32 35, float %6131, float 0x3F847AE140000000)  ; FMax(a,b)
  %6133 = fmul fast float %6132, %6132
  %6134 = fmul fast float %6133, %6133
  %6135 = fmul fast float %6134, 0xC00A935000000000
  %6136 = call float @dx.op.unary.f32(i32 21, float %6135)  ; Exp(value)
  %6137 = fsub fast float 1.000000e+00, %6136
  %6138 = fmul fast float %6118, %5976
  %6139 = fmul fast float %6138, %6137
  %6140 = fmul fast float %6117, %5977
  %6141 = fmul fast float %6140, %6137
  %6142 = fmul fast float %6116, %5978
  %6143 = fmul fast float %6142, %6137
  %6144 = fadd fast float %6139, %6121
  %6145 = fmul fast float %6144, %5078
  %6146 = fadd fast float %6141, %6120
  %6147 = fmul fast float %6146, %5078
  %6148 = fadd fast float %6143, %6119
  %6149 = fmul fast float %6148, %5078
  %6150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6151 = extractvalue %dx.types.CBufRet.f32 %6150, 3
  %6152 = fcmp fast oeq float %6151, 0.000000e+00
  br i1 %6152, label %7357, label %6153

; <label>:6153                                    ; preds = %6034
  %6154 = extractvalue %dx.types.CBufRet.f32 %6150, 0
  %6155 = extractvalue %dx.types.CBufRet.f32 %6150, 1
  %6156 = extractvalue %dx.types.CBufRet.f32 %6150, 2
  %6157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.f32 %6157, 0
  %6159 = extractvalue %dx.types.CBufRet.f32 %6157, 1
  %6160 = extractvalue %dx.types.CBufRet.f32 %6157, 2
  %6161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6162 = extractvalue %dx.types.CBufRet.f32 %6161, 0
  %6163 = extractvalue %dx.types.CBufRet.f32 %6161, 1
  %6164 = call float @dx.op.dot3.f32(i32 55, float %6158, float %6159, float %6160, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6165 = select i1 %217, float %6162, float %6158
  %6166 = select i1 %217, float %6164, float %6159
  %6167 = select i1 %217, float %6163, float %6160
  %6168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6169 = extractvalue %dx.types.CBufRet.f32 %6168, 2
  %6170 = fmul fast float %6169, %107
  %6171 = fmul fast float %6169, %108
  %6172 = fmul fast float %6169, %109
  %6173 = fadd fast float %6170, %155
  %6174 = fadd fast float %6171, %156
  %6175 = fadd fast float %6172, %157
  %6176 = fcmp fast olt float %6151, 0.000000e+00
  br i1 %6176, label %6801, label %6177

; <label>:6177                                    ; preds = %6153
  %6178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6179 = extractvalue %dx.types.CBufRet.f32 %6178, 0
  %6180 = extractvalue %dx.types.CBufRet.f32 %6178, 1
  %6181 = extractvalue %dx.types.CBufRet.f32 %6178, 2
  %6182 = extractvalue %dx.types.CBufRet.f32 %6178, 3
  %6183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6184 = extractvalue %dx.types.CBufRet.f32 %6183, 0
  %6185 = extractvalue %dx.types.CBufRet.f32 %6183, 1
  %6186 = extractvalue %dx.types.CBufRet.f32 %6183, 2
  %6187 = extractvalue %dx.types.CBufRet.f32 %6183, 3
  %6188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6189 = extractvalue %dx.types.CBufRet.f32 %6188, 0
  %6190 = extractvalue %dx.types.CBufRet.f32 %6188, 1
  %6191 = extractvalue %dx.types.CBufRet.f32 %6188, 2
  %6192 = extractvalue %dx.types.CBufRet.f32 %6188, 3
  %6193 = fmul fast float %6179, %6173
  %6194 = call float @dx.op.tertiary.f32(i32 46, float %6174, float %6180, float %6193)  ; FMad(a,b,c)
  %6195 = call float @dx.op.tertiary.f32(i32 46, float %6175, float %6181, float %6194)  ; FMad(a,b,c)
  %6196 = fadd fast float %6195, %6182
  %6197 = fmul fast float %6184, %6173
  %6198 = call float @dx.op.tertiary.f32(i32 46, float %6174, float %6185, float %6197)  ; FMad(a,b,c)
  %6199 = call float @dx.op.tertiary.f32(i32 46, float %6175, float %6186, float %6198)  ; FMad(a,b,c)
  %6200 = fadd fast float %6199, %6187
  %6201 = fmul fast float %6189, %6173
  %6202 = call float @dx.op.tertiary.f32(i32 46, float %6174, float %6190, float %6201)  ; FMad(a,b,c)
  %6203 = call float @dx.op.tertiary.f32(i32 46, float %6175, float %6191, float %6202)  ; FMad(a,b,c)
  %6204 = fadd fast float %6203, %6192
  %6205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6206 = extractvalue %dx.types.CBufRet.f32 %6205, 0
  %6207 = extractvalue %dx.types.CBufRet.f32 %6205, 1
  %6208 = extractvalue %dx.types.CBufRet.f32 %6205, 3
  %6209 = fmul fast float %6208, %6196
  %6210 = fmul fast float %6208, %6200
  %6211 = fadd fast float %6209, %6206
  %6212 = fadd fast float %6210, %6207
  %6213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6214 = extractvalue %dx.types.CBufRet.f32 %6213, 0
  %6215 = extractvalue %dx.types.CBufRet.f32 %6213, 1
  %6216 = extractvalue %dx.types.CBufRet.f32 %6213, 3
  %6217 = fmul fast float %6216, %6196
  %6218 = fmul fast float %6216, %6200
  %6219 = fadd fast float %6217, %6214
  %6220 = fadd fast float %6218, %6215
  %6221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6222 = extractvalue %dx.types.CBufRet.f32 %6221, 1
  %6223 = fsub fast float %6222, %6204
  %6224 = extractvalue %dx.types.CBufRet.f32 %6221, 2
  %6225 = fmul fast float %6223, %6224
  %6226 = fsub fast float 1.000000e+00, %6225
  %6227 = call float @dx.op.unary.f32(i32 7, float %6226)  ; Saturate(value)
  %6228 = extractvalue %dx.types.CBufRet.f32 %6213, 2
  %6229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6230 = extractvalue %dx.types.CBufRet.f32 %6229, 2
  %6231 = fadd fast float %6230, %6228
  %6232 = fcmp fast ogt float %6231, 0.000000e+00
  br i1 %6232, label %6233, label %6257

; <label>:6233                                    ; preds = %6177
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 0
  %6236 = extractvalue %dx.types.CBufRet.f32 %6234, 1
  %6237 = fsub fast float %6219, %6235
  %6238 = fsub fast float %6220, %6236
  %6239 = fcmp fast olt float %6237, 0.000000e+00
  %6240 = fcmp fast olt float %6238, 0.000000e+00
  %6241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.CBufRet.f32 %6241, 1
  %6244 = extractvalue %dx.types.CBufRet.f32 %6241, 2
  %6245 = extractvalue %dx.types.CBufRet.f32 %6241, 3
  %6246 = select i1 %6239, float %6242, float %6244
  %6247 = select i1 %6240, float %6243, float %6245
  %6248 = fmul fast float %6246, %6237
  %6249 = fmul fast float %6247, %6238
  %6250 = call float @dx.op.unary.f32(i32 6, float %6248)  ; FAbs(value)
  %6251 = call float @dx.op.unary.f32(i32 6, float %6249)  ; FAbs(value)
  %6252 = extractvalue %dx.types.CBufRet.f32 %6168, 0
  %6253 = call float @dx.op.binary.f32(i32 35, float %6250, float %6251)  ; FMax(a,b)
  %6254 = fsub fast float %6252, %6253
  %6255 = call float @dx.op.unary.f32(i32 7, float %6254)  ; Saturate(value)
  %6256 = fmul fast float %6255, %6227
  br label %6257

; <label>:6257                                    ; preds = %6233, %6177
  %6258 = phi float [ %6256, %6233 ], [ 0.000000e+00, %6177 ]
  %6259 = extractvalue %dx.types.CBufRet.f32 %6205, 2
  %6260 = extractvalue %dx.types.CBufRet.f32 %6229, 1
  %6261 = fadd fast float %6260, %6259
  %6262 = fcmp fast ogt float %6261, 0.000000e+00
  %6263 = extractvalue %dx.types.CBufRet.f32 %6168, 0
  br i1 %6262, label %6264, label %6287

; <label>:6264                                    ; preds = %6257
  %6265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6266 = extractvalue %dx.types.CBufRet.f32 %6265, 0
  %6267 = extractvalue %dx.types.CBufRet.f32 %6265, 1
  %6268 = fsub fast float %6211, %6266
  %6269 = fsub fast float %6212, %6267
  %6270 = fcmp fast olt float %6268, 0.000000e+00
  %6271 = fcmp fast olt float %6269, 0.000000e+00
  %6272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6273 = extractvalue %dx.types.CBufRet.f32 %6272, 0
  %6274 = extractvalue %dx.types.CBufRet.f32 %6272, 1
  %6275 = extractvalue %dx.types.CBufRet.f32 %6272, 2
  %6276 = extractvalue %dx.types.CBufRet.f32 %6272, 3
  %6277 = select i1 %6270, float %6273, float %6275
  %6278 = select i1 %6271, float %6274, float %6276
  %6279 = fmul fast float %6277, %6268
  %6280 = fmul fast float %6278, %6269
  %6281 = call float @dx.op.unary.f32(i32 6, float %6279)  ; FAbs(value)
  %6282 = call float @dx.op.unary.f32(i32 6, float %6280)  ; FAbs(value)
  %6283 = call float @dx.op.binary.f32(i32 35, float %6281, float %6282)  ; FMax(a,b)
  %6284 = fsub fast float %6263, %6283
  %6285 = call float @dx.op.unary.f32(i32 7, float %6284)  ; Saturate(value)
  %6286 = fmul fast float %6285, %6227
  br label %6287

; <label>:6287                                    ; preds = %6264, %6257
  %6288 = phi float [ %6286, %6264 ], [ 0.000000e+00, %6257 ]
  %6289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6290 = extractvalue %dx.types.CBufRet.f32 %6289, 1
  %6291 = call float @dx.op.unary.f32(i32 7, float %6290)  ; Saturate(value)
  %6292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6293 = extractvalue %dx.types.CBufRet.f32 %6292, 0
  %6294 = extractvalue %dx.types.CBufRet.f32 %6292, 1
  %6295 = fsub fast float %6196, %6293
  %6296 = fsub fast float %6200, %6294
  %6297 = fcmp fast olt float %6295, 0.000000e+00
  %6298 = fcmp fast olt float %6296, 0.000000e+00
  %6299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6300 = extractvalue %dx.types.CBufRet.f32 %6299, 0
  %6301 = extractvalue %dx.types.CBufRet.f32 %6299, 1
  %6302 = extractvalue %dx.types.CBufRet.f32 %6299, 2
  %6303 = extractvalue %dx.types.CBufRet.f32 %6299, 3
  %6304 = select i1 %6297, float %6300, float %6302
  %6305 = select i1 %6298, float %6301, float %6303
  %6306 = fmul fast float %6304, %6295
  %6307 = fmul fast float %6305, %6296
  %6308 = call float @dx.op.unary.f32(i32 6, float %6306)  ; FAbs(value)
  %6309 = call float @dx.op.unary.f32(i32 6, float %6307)  ; FAbs(value)
  %6310 = call float @dx.op.binary.f32(i32 35, float %6308, float %6309)  ; FMax(a,b)
  %6311 = fsub fast float %6263, %6310
  %6312 = call float @dx.op.unary.f32(i32 7, float %6311)  ; Saturate(value)
  %6313 = call float @dx.op.binary.f32(i32 36, float %6312, float %6291)  ; FMin(a,b)
  %6314 = fmul fast float %6313, %6227
  %6315 = fsub fast float %6288, %6314
  %6316 = fsub fast float %6258, %6288
  %6317 = fsub fast float %6316, %6314
  %6318 = call float @dx.op.binary.f32(i32 35, float %6288, float %6258)  ; FMax(a,b)
  %6319 = call float @dx.op.binary.f32(i32 35, float %6314, float %6318)  ; FMax(a,b)
  %6320 = fcmp fast olt float %6319, 1.000000e+00
  br i1 %6320, label %6321, label %6719, !dx.controlflow.hints !92

; <label>:6321                                    ; preds = %6287
  %6322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6323 = extractvalue %dx.types.CBufRet.f32 %6322, 0
  %6324 = fcmp fast une float %6323, 0.000000e+00
  br i1 %6324, label %6325, label %6719, !dx.controlflow.hints !93

; <label>:6325                                    ; preds = %6321
  %6326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6327 = extractvalue %dx.types.CBufRet.f32 %6326, 0
  %6328 = extractvalue %dx.types.CBufRet.f32 %6326, 1
  %6329 = extractvalue %dx.types.CBufRet.f32 %6326, 2
  %6330 = extractvalue %dx.types.CBufRet.f32 %6326, 3
  %6331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6332 = extractvalue %dx.types.CBufRet.f32 %6331, 0
  %6333 = extractvalue %dx.types.CBufRet.f32 %6331, 1
  %6334 = extractvalue %dx.types.CBufRet.f32 %6331, 2
  %6335 = extractvalue %dx.types.CBufRet.f32 %6331, 3
  %6336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.f32 %6336, 0
  %6338 = extractvalue %dx.types.CBufRet.f32 %6336, 1
  %6339 = extractvalue %dx.types.CBufRet.f32 %6336, 2
  %6340 = extractvalue %dx.types.CBufRet.f32 %6336, 3
  %6341 = fmul fast float %6327, %6173
  %6342 = call float @dx.op.tertiary.f32(i32 46, float %6174, float %6328, float %6341)  ; FMad(a,b,c)
  %6343 = call float @dx.op.tertiary.f32(i32 46, float %6175, float %6329, float %6342)  ; FMad(a,b,c)
  %6344 = fadd fast float %6343, %6330
  %6345 = fmul fast float %6332, %6173
  %6346 = call float @dx.op.tertiary.f32(i32 46, float %6174, float %6333, float %6345)  ; FMad(a,b,c)
  %6347 = call float @dx.op.tertiary.f32(i32 46, float %6175, float %6334, float %6346)  ; FMad(a,b,c)
  %6348 = fadd fast float %6347, %6335
  %6349 = fmul fast float %6337, %6173
  %6350 = call float @dx.op.tertiary.f32(i32 46, float %6174, float %6338, float %6349)  ; FMad(a,b,c)
  %6351 = call float @dx.op.tertiary.f32(i32 46, float %6175, float %6339, float %6350)  ; FMad(a,b,c)
  %6352 = fadd fast float %6351, %6340
  %6353 = fcmp fast oge float %6344, 1.000000e+00
  %6354 = fcmp fast oge float %6348, 1.000000e+00
  %6355 = or i1 %6353, %6354
  %6356 = fcmp fast olt float %6344, 0.000000e+00
  %6357 = fcmp fast olt float %6348, 0.000000e+00
  %6358 = or i1 %6356, %6357
  %6359 = or i1 %6355, %6358
  br i1 %6359, label %6719, label %6360, !dx.controlflow.hints !94

; <label>:6360                                    ; preds = %6325
  %6361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6362 = extractvalue %dx.types.CBufRet.f32 %6361, 0
  %6363 = extractvalue %dx.types.CBufRet.f32 %6361, 1
  %6364 = extractvalue %dx.types.CBufRet.f32 %6361, 2
  %6365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6366 = extractvalue %dx.types.CBufRet.i32 %6365, 2
  %6367 = uitofp i32 %6366 to float
  %6368 = extractvalue %dx.types.CBufRet.i32 %6365, 3
  %6369 = uitofp i32 %6368 to float
  %6370 = extractvalue %dx.types.CBufRet.f32 %6361, 3
  %6371 = fmul fast float %6370, 2.000000e+00
  %6372 = fsub fast float %6344, %6362
  %6373 = fsub fast float %6348, %6363
  %6374 = fmul fast float %6371, %6372
  %6375 = fmul fast float %6371, %6373
  %6376 = fdiv fast float 1.000000e+00, %6156
  %6377 = fmul fast float %6375, %6376
  %6378 = call float @dx.op.unary.f32(i32 6, float %6377)  ; FAbs(value)
  %6379 = fmul fast float %6364, %6175
  %6380 = fmul fast float %6379, %6371
  %6381 = call float @dx.op.unary.f32(i32 6, float %6380)  ; FAbs(value)
  %6382 = call float @dx.op.unary.f32(i32 6, float %6374)  ; FAbs(value)
  %6383 = call float @dx.op.binary.f32(i32 35, float %6381, float %6378)  ; FMax(a,b)
  %6384 = call float @dx.op.binary.f32(i32 35, float %6382, float %6383)  ; FMax(a,b)
  %6385 = fmul fast float %6384, 2.000000e+00
  %6386 = call float @dx.op.unary.f32(i32 23, float %6385)  ; Log(value)
  %6387 = call float @dx.op.binary.f32(i32 35, float %6386, float %6367)  ; FMax(a,b)
  %6388 = call float @dx.op.unary.f32(i32 22, float %6387)  ; Frc(value)
  %6389 = fadd fast float %6388, 0xBFEA666660000000
  %6390 = fmul fast float %6389, 8.000000e+00
  %6391 = call float @dx.op.unary.f32(i32 7, float %6390)  ; Saturate(value)
  %6392 = call float @dx.op.unary.f32(i32 27, float %6387)  ; Round_ni(value)
  %6393 = fadd fast float %6392, %6391
  %6394 = call float @dx.op.binary.f32(i32 36, float %6393, float %6369)  ; FMin(a,b)
  %6395 = call float @dx.op.unary.f32(i32 27, float %6394)  ; Round_ni(value)
  %6396 = fsub fast float -0.000000e+00, %6395
  %6397 = call float @dx.op.unary.f32(i32 21, float %6396)  ; Exp(value)
  %6398 = fmul fast float %6397, %6371
  %6399 = fmul fast float %6398, %6344
  %6400 = fmul fast float %6398, %6348
  %6401 = fmul fast float %6399, 2.500000e-01
  %6402 = fmul fast float %6400, 2.500000e-01
  %6403 = fadd fast float %6401, 5.000000e-01
  %6404 = fadd fast float %6402, 5.000000e-01
  %6405 = fsub fast float %6369, %6367
  %6406 = fptoui float %6405 to i32
  %6407 = add i32 %6406, 320
  %6408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %6407)  ; CBufferLoadLegacy(handle,regIndex)
  %6409 = extractvalue %dx.types.CBufRet.f32 %6408, 0
  %6410 = extractvalue %dx.types.CBufRet.f32 %6408, 1
  %6411 = fcmp fast une float %6394, %6369
  %6412 = fsub fast float %6344, %6409
  %6413 = fsub fast float %6348, %6410
  %6414 = call float @dx.op.unary.f32(i32 6, float %6412)  ; FAbs(value)
  %6415 = call float @dx.op.unary.f32(i32 6, float %6413)  ; FAbs(value)
  %6416 = fmul fast float %6414, %6398
  %6417 = fmul fast float %6415, %6398
  %6418 = fcmp fast olt float %6416, 1.000000e+00
  %6419 = fcmp fast olt float %6417, 1.000000e+00
  %6420 = and i1 %6418, %6419
  %6421 = or i1 %6411, %6420
  br i1 %6421, label %6422, label %6719, !dx.controlflow.hints !95

; <label>:6422                                    ; preds = %6360
  %6423 = fmul fast float %6400, 5.000000e-01
  %6424 = fmul fast float %6399, 5.000000e-01
  %6425 = fadd fast float %6423, 5.000000e-01
  %6426 = fadd fast float %6424, 5.000000e-01
  %6427 = sitofp i32 %6366 to float
  %6428 = fsub fast float %6394, %6427
  %6429 = call float @dx.op.unary.f32(i32 27, float %6428)  ; Round_ni(value)
  %6430 = call float @dx.op.unary.f32(i32 22, float %6394)  ; Frc(value)
  %6431 = call float @dx.op.unary.f32(i32 22, float %6426)  ; Frc(value)
  %6432 = call float @dx.op.unary.f32(i32 22, float %6425)  ; Frc(value)
  %6433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6431, float %6432, float %6429, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6434 = extractvalue %dx.types.ResRet.f32 %6433, 0
  %6435 = extractvalue %dx.types.ResRet.f32 %6433, 1
  %6436 = extractvalue %dx.types.ResRet.f32 %6433, 2
  %6437 = extractvalue %dx.types.ResRet.f32 %6433, 3
  %6438 = fcmp fast ogt float %6430, 0.000000e+00
  br i1 %6438, label %6439, label %6460, !dx.controlflow.hints !96

; <label>:6439                                    ; preds = %6422
  %6440 = fadd fast float %6429, 1.000000e+00
  %6441 = call float @dx.op.unary.f32(i32 22, float %6403)  ; Frc(value)
  %6442 = call float @dx.op.unary.f32(i32 22, float %6404)  ; Frc(value)
  %6443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6441, float %6442, float %6440, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6444 = extractvalue %dx.types.ResRet.f32 %6443, 0
  %6445 = extractvalue %dx.types.ResRet.f32 %6443, 1
  %6446 = extractvalue %dx.types.ResRet.f32 %6443, 2
  %6447 = extractvalue %dx.types.ResRet.f32 %6443, 3
  %6448 = fsub fast float %6444, %6434
  %6449 = fsub fast float %6445, %6435
  %6450 = fsub fast float %6446, %6436
  %6451 = fsub fast float %6447, %6437
  %6452 = fmul fast float %6448, %6430
  %6453 = fmul fast float %6449, %6430
  %6454 = fmul fast float %6450, %6430
  %6455 = fmul fast float %6451, %6430
  %6456 = fadd fast float %6452, %6434
  %6457 = fadd fast float %6453, %6435
  %6458 = fadd fast float %6454, %6436
  %6459 = fadd fast float %6455, %6437
  br label %6460

; <label>:6460                                    ; preds = %6439, %6422
  %6461 = phi float [ %6456, %6439 ], [ %6434, %6422 ]
  %6462 = phi float [ %6457, %6439 ], [ %6435, %6422 ]
  %6463 = phi float [ %6458, %6439 ], [ %6436, %6422 ]
  %6464 = phi float [ %6459, %6439 ], [ %6437, %6422 ]
  %6465 = fadd fast float %6461, -5.000000e-01
  %6466 = fadd fast float %6463, -5.000000e-01
  %6467 = fmul fast float %6465, 0xBFD5555560000000
  %6468 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6466, float %6467)  ; FMad(a,b,c)
  %6469 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6462, float 0.000000e+00)  ; FMad(a,b,c)
  %6470 = fadd fast float %6469, %6464
  %6471 = fmul fast float %6465, -7.500000e-01
  %6472 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6466, float %6471)  ; FMad(a,b,c)
  %6473 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6462, float 0.000000e+00)  ; FMad(a,b,c)
  %6474 = fadd fast float %6473, %6464
  %6475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6476 = extractvalue %dx.types.CBufRet.f32 %6475, 0
  %6477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6478 = extractvalue %dx.types.CBufRet.f32 %6477, 0
  %6479 = extractvalue %dx.types.CBufRet.f32 %6477, 1
  %6480 = extractvalue %dx.types.CBufRet.f32 %6477, 2
  %6481 = extractvalue %dx.types.CBufRet.f32 %6477, 3
  %6482 = fsub fast float %6478, %6468
  %6483 = fsub fast float %6479, %6470
  %6484 = fsub fast float %6480, %6472
  %6485 = fsub fast float %6481, %6474
  %6486 = fmul fast float %6482, %6476
  %6487 = fmul fast float %6483, %6476
  %6488 = fmul fast float %6484, %6476
  %6489 = fmul fast float %6485, %6476
  %6490 = fadd fast float %6486, %6468
  %6491 = fadd fast float %6487, %6470
  %6492 = fadd fast float %6488, %6472
  %6493 = fadd fast float %6489, %6474
  %6494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6495 = extractvalue %dx.types.ResRet.i32 %6494, 0
  %6496 = and i32 %6495, 536870911
  %6497 = uitofp i32 %6496 to float
  %6498 = fmul fast float %6497, %6344
  %6499 = fmul fast float %6497, %6348
  %6500 = fptoui float %6498 to i32
  %6501 = fptoui float %6499 to i32
  %6502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6503 = extractvalue %dx.types.ResRet.i32 %6502, 0
  %6504 = and i32 %6503, 31
  %6505 = lshr i32 %6500, %6504
  %6506 = lshr i32 %6501, %6504
  %6507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6508 = extractvalue %dx.types.ResRet.i32 %6507, 0
  %6509 = and i32 %6508, 31
  %6510 = shl i32 1, %6509
  %6511 = call i32 @dx.op.binary.i32(i32 40, i32 %6510, i32 4)  ; UMin(a,b)
  %6512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6513 = extractvalue %dx.types.ResRet.i32 %6512, 0
  %6514 = extractvalue %dx.types.ResRet.i32 %6512, 1
  %6515 = icmp eq i32 %6511, 0
  br i1 %6515, label %6557, label %6516

; <label>:6516                                    ; preds = %6460
  br label %6517

; <label>:6517                                    ; preds = %6545, %6516
  %6518 = phi i32 [ %6548, %6545 ], [ 0, %6516 ]
  %6519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6520 = extractvalue %dx.types.ResRet.i32 %6519, 0
  %6521 = lshr i32 %6520, 16
  %6522 = and i32 %6521, 31
  %6523 = shl i32 %6506, %6522
  %6524 = add i32 %6523, %6505
  %6525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6526 = extractvalue %dx.types.ResRet.i32 %6525, 0
  %6527 = and i32 %6526, 31
  %6528 = shl i32 %6524, %6527
  %6529 = add i32 %6528, %6518
  %6530 = shl i32 %6529, 2
  %6531 = add i32 %6530, 32
  %6532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6531, i32 undef)  ; BufferLoad(srv,index,wot)
  %6533 = extractvalue %dx.types.ResRet.i32 %6532, 0
  %6534 = icmp slt i32 %6533, 0
  %6535 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6518
  %6536 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6518
  %6537 = bitcast float* %6535 to i32*
  %6538 = bitcast float* %6536 to i32*
  br i1 %6534, label %6539, label %6545

; <label>:6539                                    ; preds = %6517
  %6540 = and i32 %6533, 1073741823
  %6541 = add nuw nsw i32 %6540, 20
  %6542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6541, i32 undef)  ; BufferLoad(srv,index,wot)
  %6543 = extractvalue %dx.types.ResRet.i32 %6542, 0
  %6544 = extractvalue %dx.types.ResRet.i32 %6542, 1
  br label %6545

; <label>:6545                                    ; preds = %6539, %6517
  %6546 = phi i32 [ %6543, %6539 ], [ %6513, %6517 ]
  %6547 = phi i32 [ %6544, %6539 ], [ %6514, %6517 ]
  store i32 %6546, i32* %6537, align 4
  store i32 %6547, i32* %6538, align 4
  %6548 = add nuw i32 %6518, 1
  %6549 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6550 = extractvalue %dx.types.CBufRet.i32 %6549, 2
  %6551 = icmp eq i32 %6550, 0
  %6552 = icmp ugt i32 %6533, -1073741825
  %6553 = and i1 %6552, %6551
  %6554 = icmp ult i32 %6548, %6511
  %6555 = and i1 %6553, %6554
  br i1 %6555, label %6517, label %6556

; <label>:6556                                    ; preds = %6545
  br label %6557

; <label>:6557                                    ; preds = %6556, %6460
  %6558 = phi i32 [ 0, %6460 ], [ %6548, %6556 ]
  %6559 = extractvalue %dx.types.CBufRet.f32 %6322, 2
  %6560 = fptoui float %6559 to i32
  %6561 = icmp eq i32 %6560, 0
  br i1 %6561, label %6613, label %6562

; <label>:6562                                    ; preds = %6557
  br label %6563

; <label>:6563                                    ; preds = %6608, %6562
  %6564 = phi i32 [ %6609, %6608 ], [ %6558, %6562 ]
  %6565 = phi i32 [ %6610, %6608 ], [ 0, %6562 ]
  %6566 = lshr i32 %6565, 2
  %6567 = and i32 %6565, 3
  %6568 = add nuw nsw i32 %6566, 83
  %6569 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6568)  ; CBufferLoadLegacy(handle,regIndex)
  %6570 = extractvalue %dx.types.CBufRet.i32 %6569, 0
  %6571 = extractvalue %dx.types.CBufRet.i32 %6569, 1
  %6572 = extractvalue %dx.types.CBufRet.i32 %6569, 2
  %6573 = extractvalue %dx.types.CBufRet.i32 %6569, 3
  %6574 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6570, i32* %6574, align 4
  %6575 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6571, i32* %6575, align 4
  %6576 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6572, i32* %6576, align 4
  %6577 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6573, i32* %6577, align 4
  %6578 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6567
  %6579 = load i32, i32* %6578, align 4, !tbaa !97, !noalias !101
  %6580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6581 = extractvalue %dx.types.ResRet.i32 %6580, 0
  %6582 = lshr i32 %6581, 16
  %6583 = and i32 %6582, 31
  %6584 = shl i32 %6506, %6583
  %6585 = add i32 %6584, %6505
  %6586 = shl i32 %6585, 2
  %6587 = add i32 %6586, %6579
  %6588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6587, i32 undef)  ; BufferLoad(srv,index,wot)
  %6589 = extractvalue %dx.types.ResRet.i32 %6588, 0
  %6590 = icmp eq i32 %6589, 0
  br i1 %6590, label %6608, label %6591

; <label>:6591                                    ; preds = %6563
  %6592 = icmp slt i32 %6589, 0
  %6593 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6564
  %6594 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6564
  %6595 = bitcast float* %6593 to i32*
  %6596 = bitcast float* %6594 to i32*
  br i1 %6592, label %6597, label %6604

; <label>:6597                                    ; preds = %6591
  %6598 = and i32 %6589, 1073741823
  %6599 = add i32 %6579, 20
  %6600 = add i32 %6599, %6598
  %6601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6600, i32 undef)  ; BufferLoad(srv,index,wot)
  %6602 = extractvalue %dx.types.ResRet.i32 %6601, 0
  %6603 = extractvalue %dx.types.ResRet.i32 %6601, 1
  br label %6604

; <label>:6604                                    ; preds = %6597, %6591
  %6605 = phi i32 [ %6602, %6597 ], [ %6513, %6591 ]
  %6606 = phi i32 [ %6603, %6597 ], [ %6514, %6591 ]
  store i32 %6605, i32* %6595, align 4
  store i32 %6606, i32* %6596, align 4
  %6607 = add i32 %6564, 1
  br label %6608

; <label>:6608                                    ; preds = %6604, %6563
  %6609 = phi i32 [ %6564, %6563 ], [ %6607, %6604 ]
  %6610 = add nuw i32 %6565, 1
  %6611 = icmp eq i32 %6610, %6560
  br i1 %6611, label %6612, label %6563

; <label>:6612                                    ; preds = %6608
  br label %6613

; <label>:6613                                    ; preds = %6612, %6557
  %6614 = phi i32 [ %6558, %6557 ], [ %6609, %6612 ]
  %6615 = icmp eq i32 %6614, 1
  %6616 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  %6617 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  br i1 %6615, label %6618, label %6621

; <label>:6618                                    ; preds = %6613
  %6619 = load float, float* %6616, align 4
  %6620 = load float, float* %6617, align 4
  br label %6648

; <label>:6621                                    ; preds = %6613
  %6622 = load float, float* %6616, align 4
  %6623 = load float, float* %6617, align 4
  %6624 = fdiv fast float 1.000000e+00, %6623
  %6625 = fsub fast float %6622, %6624
  %6626 = icmp ugt i32 %6614, 1
  br i1 %6626, label %6627, label %6643

; <label>:6627                                    ; preds = %6621
  br label %6628

; <label>:6628                                    ; preds = %6628, %6627
  %6629 = phi float [ %6638, %6628 ], [ %6625, %6627 ]
  %6630 = phi float [ %6639, %6628 ], [ %6622, %6627 ]
  %6631 = phi i32 [ %6640, %6628 ], [ 1, %6627 ]
  %6632 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6631
  %6633 = load float, float* %6632, align 4
  %6634 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6631
  %6635 = load float, float* %6634, align 4
  %6636 = fdiv fast float 1.000000e+00, %6635
  %6637 = fsub fast float %6633, %6636
  %6638 = call float @dx.op.binary.f32(i32 36, float %6629, float %6637)  ; FMin(a,b)
  %6639 = call float @dx.op.binary.f32(i32 35, float %6630, float %6633)  ; FMax(a,b)
  %6640 = add nuw i32 %6631, 1
  %6641 = icmp eq i32 %6640, %6614
  br i1 %6641, label %6642, label %6628

; <label>:6642                                    ; preds = %6628
  br label %6643

; <label>:6643                                    ; preds = %6642, %6621
  %6644 = phi float [ %6625, %6621 ], [ %6638, %6642 ]
  %6645 = phi float [ %6622, %6621 ], [ %6639, %6642 ]
  %6646 = fsub fast float %6645, %6644
  %6647 = fdiv fast float 1.000000e+00, %6646
  br label %6648

; <label>:6648                                    ; preds = %6643, %6618
  %6649 = phi float [ %6619, %6618 ], [ %6645, %6643 ]
  %6650 = phi float [ %6620, %6618 ], [ %6647, %6643 ]
  %6651 = fadd fast float %6352, %6649
  %6652 = fmul fast float %6651, %6650
  %6653 = call float @dx.op.unary.f32(i32 7, float %6652)  ; Saturate(value)
  %6654 = fmul fast float %6653, 2.000000e+00
  %6655 = fsub fast float 1.000000e+00, %6654
  %6656 = fmul fast float %6490, %6490
  %6657 = fsub fast float %6491, %6656
  %6658 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6657)  ; FMax(a,b)
  %6659 = fdiv fast float 1.000000e+00, %6658
  %6660 = fmul fast float %6491, %6490
  %6661 = fsub fast float %6492, %6660
  %6662 = fsub fast float %6655, %6490
  %6663 = fmul fast float %6655, %6655
  %6664 = fsub fast float %6663, %6491
  %6665 = fmul fast float %6659, %6661
  %6666 = fmul fast float %6665, %6662
  %6667 = fsub fast float %6664, %6666
  %6668 = fmul fast float %6491, %6491
  %6669 = fsub fast float %6493, %6668
  %6670 = fmul fast float %6661, %6661
  %6671 = fmul fast float %6670, %6659
  %6672 = fsub fast float %6669, %6671
  %6673 = fdiv fast float %6667, %6672
  %6674 = fmul fast float %6673, %6661
  %6675 = fsub fast float %6662, %6674
  %6676 = fmul fast float %6675, %6659
  %6677 = fmul fast float %6676, %6490
  %6678 = fsub fast float 1.000000e+00, %6677
  %6679 = fmul fast float %6673, %6491
  %6680 = fsub fast float %6678, %6679
  %6681 = fmul fast float %6676, %6676
  %6682 = fmul fast float %6673, 4.000000e+00
  %6683 = fmul fast float %6682, %6680
  %6684 = fsub fast float %6681, %6683
  %6685 = call float @dx.op.unary.f32(i32 24, float %6684)  ; Sqrt(value)
  %6686 = fcmp fast oge float %6676, 0.000000e+00
  %6687 = fsub fast float -0.000000e+00, %6685
  %6688 = select i1 %6686, float %6687, float %6685
  %6689 = fsub fast float %6688, %6676
  %6690 = fdiv fast float %6689, %6673
  %6691 = fdiv fast float %6680, %6689
  %6692 = fmul fast float %6690, 5.000000e-01
  %6693 = fmul fast float %6691, 2.000000e+00
  %6694 = select i1 %6686, float %6692, float %6693
  %6695 = select i1 %6686, float %6693, float %6692
  %6696 = call float @dx.op.binary.f32(i32 35, float %6694, float %6695)  ; FMax(a,b)
  %6697 = call float @dx.op.binary.f32(i32 36, float %6694, float %6695)  ; FMin(a,b)
  %6698 = fcmp fast ogt float %6655, %6696
  %6699 = fsub fast float %6655, %6697
  %6700 = fsub fast float %6655, %6696
  %6701 = fsub fast float %6696, %6697
  %6702 = select i1 %6698, float %6700, float %6701
  %6703 = fmul float %6699, %6702
  %6704 = select i1 %6698, float %6697, float %6655
  %6705 = fcmp fast ogt float %6655, %6697
  %6706 = fmul fast float %6704, %6696
  %6707 = fadd fast float %6704, %6696
  %6708 = fmul fast float %6707, %6490
  %6709 = fadd fast float %6706, %6491
  %6710 = fsub fast float %6709, %6708
  %6711 = fdiv fast float %6710, %6703
  %6712 = select i1 %6705, float %6711, float 0.000000e+00
  %6713 = fsub fast float 1.000000e+00, %6712
  %6714 = select i1 %6698, float %6713, float %6712
  %6715 = call float @dx.op.unary.f32(i32 7, float %6714)  ; Saturate(value)
  %6716 = extractvalue %dx.types.CBufRet.f32 %6475, 3
  %6717 = fmul fast float %6716, %6715
  %6718 = fsub fast float 1.000000e+00, %6717
  br label %6719

; <label>:6719                                    ; preds = %6648, %6360, %6325, %6321, %6287
  %6720 = phi float [ 1.000000e+00, %6287 ], [ %6718, %6648 ], [ 1.000000e+00, %6325 ], [ 1.000000e+00, %6360 ], [ 1.000000e+00, %6321 ]
  %6721 = fcmp fast ogt float %6317, 0.000000e+00
  br i1 %6721, label %6722, label %6728, !dx.controlflow.hints !110

; <label>:6722                                    ; preds = %6719
  %6723 = fadd fast float %6230, %6204
  %6724 = call float @dx.op.binary.f32(i32 35, float %6723, float 0.000000e+00)  ; FMax(a,b)
  %6725 = fadd fast float %6724, 0x3F10000000000000
  %6726 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %6219, float %6220, float undef, float undef, i32 0, i32 0, i32 undef, float %6725)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6727 = extractvalue %dx.types.ResRet.f32 %6726, 0
  br label %6728

; <label>:6728                                    ; preds = %6722, %6719
  %6729 = phi float [ %6727, %6722 ], [ 1.000000e+00, %6719 ]
  %6730 = fcmp fast ogt float %6315, 0.000000e+00
  br i1 %6730, label %6731, label %6737, !dx.controlflow.hints !111

; <label>:6731                                    ; preds = %6728
  %6732 = fadd fast float %6260, %6204
  %6733 = call float @dx.op.binary.f32(i32 35, float %6732, float 0.000000e+00)  ; FMax(a,b)
  %6734 = fadd fast float %6733, 0x3F10000000000000
  %6735 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %6211, float %6212, float undef, float undef, i32 0, i32 0, i32 undef, float %6734)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6736 = extractvalue %dx.types.ResRet.f32 %6735, 0
  br label %6737

; <label>:6737                                    ; preds = %6731, %6728
  %6738 = phi float [ %6736, %6731 ], [ 1.000000e+00, %6728 ]
  %6739 = fcmp fast ogt float %6314, 0.000000e+00
  br i1 %6739, label %6740, label %6747, !dx.controlflow.hints !112

; <label>:6740                                    ; preds = %6737
  %6741 = extractvalue %dx.types.CBufRet.f32 %6229, 0
  %6742 = fadd fast float %6741, %6204
  %6743 = call float @dx.op.binary.f32(i32 35, float %6742, float 0.000000e+00)  ; FMax(a,b)
  %6744 = fadd fast float %6743, 0x3F10000000000000
  %6745 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %6196, float %6200, float undef, float undef, i32 0, i32 0, i32 undef, float %6744)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6746 = extractvalue %dx.types.ResRet.f32 %6745, 0
  br label %6747

; <label>:6747                                    ; preds = %6740, %6737
  %6748 = phi float [ %6746, %6740 ], [ 1.000000e+00, %6737 ]
  %6749 = fsub fast float %6729, %6720
  %6750 = fmul fast float %6749, %6258
  %6751 = fadd fast float %6750, %6720
  %6752 = fsub fast float %6738, %6751
  %6753 = fmul fast float %6752, %6288
  %6754 = fadd fast float %6753, %6751
  %6755 = fsub fast float %6748, %6754
  %6756 = fmul fast float %6755, %6314
  %6757 = fadd fast float %6756, %6754
  %6758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6759 = extractvalue %dx.types.CBufRet.f32 %6758, 2
  %6760 = fcmp fast ogt float %6759, 0.000000e+00
  br i1 %6760, label %6761, label %6801, !dx.controlflow.hints !113

; <label>:6761                                    ; preds = %6747
  %6762 = fcmp fast ugt float %6759, 0.000000e+00
  br i1 %6762, label %6763, label %6798

; <label>:6763                                    ; preds = %6761
  %6764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6765 = extractvalue %dx.types.CBufRet.f32 %6764, 0
  %6766 = extractvalue %dx.types.CBufRet.f32 %6764, 1
  %6767 = extractvalue %dx.types.CBufRet.f32 %6764, 2
  %6768 = extractvalue %dx.types.CBufRet.f32 %6764, 3
  %6769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6770 = extractvalue %dx.types.CBufRet.f32 %6769, 0
  %6771 = extractvalue %dx.types.CBufRet.f32 %6769, 1
  %6772 = extractvalue %dx.types.CBufRet.f32 %6769, 2
  %6773 = extractvalue %dx.types.CBufRet.f32 %6769, 3
  %6774 = extractvalue %dx.types.CBufRet.f32 %6758, 0
  %6775 = extractvalue %dx.types.CBufRet.f32 %6758, 1
  %6776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6777 = extractvalue %dx.types.CBufRet.f32 %6776, 0
  %6778 = extractvalue %dx.types.CBufRet.f32 %6776, 1
  %6779 = extractvalue %dx.types.CBufRet.f32 %6776, 2
  %6780 = fadd fast float %6777, %6173
  %6781 = fadd fast float %6778, %6174
  %6782 = fadd fast float %6779, %6175
  %6783 = fmul fast float %6780, %6765
  %6784 = call float @dx.op.tertiary.f32(i32 46, float %6766, float %6781, float %6783)  ; FMad(a,b,c)
  %6785 = call float @dx.op.tertiary.f32(i32 46, float %6767, float %6782, float %6784)  ; FMad(a,b,c)
  %6786 = fadd fast float %6785, %6768
  %6787 = fmul fast float %6780, %6770
  %6788 = call float @dx.op.tertiary.f32(i32 46, float %6771, float %6781, float %6787)  ; FMad(a,b,c)
  %6789 = call float @dx.op.tertiary.f32(i32 46, float %6772, float %6782, float %6788)  ; FMad(a,b,c)
  %6790 = fadd fast float %6789, %6773
  %6791 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6786, float %6790, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6792 = extractvalue %dx.types.ResRet.f32 %6791, 0
  %6793 = fmul fast float %6792, %6775
  %6794 = fadd fast float %6793, %6774
  %6795 = call float @dx.op.unary.f32(i32 7, float %6794)  ; Saturate(value)
  %6796 = fmul fast float %6795, %6759
  %6797 = fsub fast float 1.000000e+00, %6796
  br label %6798

; <label>:6798                                    ; preds = %6763, %6761
  %6799 = phi float [ %6797, %6763 ], [ 1.000000e+00, %6761 ]
  %6800 = fmul fast float %6799, %6757
  br label %6801

; <label>:6801                                    ; preds = %6798, %6747, %6153
  %6802 = phi float [ 1.000000e+00, %6153 ], [ %6800, %6798 ], [ %6757, %6747 ]
  %6803 = call float @dx.op.binary.f32(i32 36, float %6802, float %6802)  ; FMin(a,b)
  %6804 = call float @dx.op.binary.f32(i32 36, float %6802, float %6803)  ; FMin(a,b)
  %6805 = fcmp fast ogt float %6804, 0.000000e+00
  br i1 %6805, label %6806, label %6966, !dx.controlflow.hints !114

; <label>:6806                                    ; preds = %6801
  %6807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6808 = extractvalue %dx.types.CBufRet.f32 %6807, 0
  %6809 = extractvalue %dx.types.CBufRet.f32 %6807, 1
  %6810 = extractvalue %dx.types.CBufRet.f32 %6807, 2
  %6811 = extractvalue %dx.types.CBufRet.f32 %6807, 3
  %6812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6813 = extractvalue %dx.types.CBufRet.f32 %6812, 0
  %6814 = extractvalue %dx.types.CBufRet.f32 %6812, 1
  %6815 = extractvalue %dx.types.CBufRet.f32 %6812, 2
  %6816 = extractvalue %dx.types.CBufRet.f32 %6812, 3
  %6817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6818 = extractvalue %dx.types.CBufRet.f32 %6817, 0
  %6819 = extractvalue %dx.types.CBufRet.f32 %6817, 1
  %6820 = extractvalue %dx.types.CBufRet.f32 %6817, 2
  %6821 = extractvalue %dx.types.CBufRet.f32 %6817, 3
  %6822 = fmul fast float %6808, %6173
  %6823 = call float @dx.op.tertiary.f32(i32 46, float %6174, float %6809, float %6822)  ; FMad(a,b,c)
  %6824 = call float @dx.op.tertiary.f32(i32 46, float %6175, float %6810, float %6823)  ; FMad(a,b,c)
  %6825 = fadd fast float %6824, %6811
  %6826 = fmul fast float %6813, %6173
  %6827 = call float @dx.op.tertiary.f32(i32 46, float %6174, float %6814, float %6826)  ; FMad(a,b,c)
  %6828 = call float @dx.op.tertiary.f32(i32 46, float %6175, float %6815, float %6827)  ; FMad(a,b,c)
  %6829 = fadd fast float %6828, %6816
  %6830 = fmul fast float %6818, %6173
  %6831 = call float @dx.op.tertiary.f32(i32 46, float %6174, float %6819, float %6830)  ; FMad(a,b,c)
  %6832 = call float @dx.op.tertiary.f32(i32 46, float %6175, float %6820, float %6831)  ; FMad(a,b,c)
  %6833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6834 = extractvalue %dx.types.CBufRet.f32 %6833, 0
  %6835 = extractvalue %dx.types.CBufRet.f32 %6833, 1
  %6836 = extractvalue %dx.types.CBufRet.f32 %6833, 3
  %6837 = fmul fast float %6836, %6825
  %6838 = fmul fast float %6836, %6829
  %6839 = fadd fast float %6837, %6834
  %6840 = fadd fast float %6838, %6835
  %6841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6842 = extractvalue %dx.types.CBufRet.f32 %6841, 0
  %6843 = extractvalue %dx.types.CBufRet.f32 %6841, 1
  %6844 = fsub fast float %6839, %6842
  %6845 = fsub fast float %6840, %6843
  %6846 = fcmp fast olt float %6844, 0.000000e+00
  %6847 = fcmp fast olt float %6845, 0.000000e+00
  %6848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.f32 %6848, 0
  %6850 = extractvalue %dx.types.CBufRet.f32 %6848, 1
  %6851 = extractvalue %dx.types.CBufRet.f32 %6848, 2
  %6852 = extractvalue %dx.types.CBufRet.f32 %6848, 3
  %6853 = select i1 %6846, float %6849, float %6851
  %6854 = select i1 %6847, float %6850, float %6852
  %6855 = fmul fast float %6853, %6844
  %6856 = fmul fast float %6854, %6845
  %6857 = call float @dx.op.unary.f32(i32 6, float %6855)  ; FAbs(value)
  %6858 = call float @dx.op.unary.f32(i32 6, float %6856)  ; FAbs(value)
  %6859 = extractvalue %dx.types.CBufRet.f32 %6168, 0
  %6860 = call float @dx.op.binary.f32(i32 35, float %6857, float %6858)  ; FMax(a,b)
  %6861 = fsub fast float %6859, %6860
  %6862 = call float @dx.op.unary.f32(i32 7, float %6861)  ; Saturate(value)
  %6863 = fcmp fast ogt float %6862, 0.000000e+00
  br i1 %6863, label %6864, label %6905, !dx.controlflow.hints !115

; <label>:6864                                    ; preds = %6806
  %6865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6839, float %6840, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6866 = extractvalue %dx.types.ResRet.f32 %6865, 1
  %6867 = fcmp fast ogt float %6866, 0.000000e+00
  br i1 %6867, label %6868, label %6900

; <label>:6868                                    ; preds = %6864
  %6869 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6839, float %6840, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6870 = extractvalue %dx.types.ResRet.f32 %6869, 0
  %6871 = extractvalue %dx.types.ResRet.f32 %6869, 1
  %6872 = extractvalue %dx.types.ResRet.f32 %6869, 2
  %6873 = extractvalue %dx.types.ResRet.f32 %6869, 3
  %6874 = fsub fast float 1.000000e+00, %6821
  %6875 = fsub fast float %6874, %6832
  %6876 = fmul fast float %6875, 0x400921FB60000000
  %6877 = fadd fast float %6876, 0x3FF921FB60000000
  %6878 = call float @dx.op.unary.f32(i32 13, float %6877)  ; Sin(value)
  %6879 = fadd fast float %6878, -1.000000e+00
  %6880 = fmul fast float %6879, 0x3FD45F3060000000
  %6881 = fmul fast float %6875, 0x401921FB60000000
  %6882 = fadd fast float %6881, 0x400921FB60000000
  %6883 = call float @dx.op.unary.f32(i32 13, float %6882)  ; Sin(value)
  %6884 = fadd fast float %6883, 0x3E7777A5C0000000
  %6885 = fmul fast float %6884, 0x3FC45F3060000000
  %6886 = fmul fast float %6875, 0x4022D97C80000000
  %6887 = fadd fast float %6886, 0x4012D97C80000000
  %6888 = call float @dx.op.unary.f32(i32 13, float %6887)  ; Sin(value)
  %6889 = fadd fast float %6888, 1.000000e+00
  %6890 = fmul fast float %6889, 0x3FBB2995E0000000
  %6891 = fmul fast float %6875, 0x402921FB60000000
  %6892 = fadd fast float %6891, 0x401921FB60000000
  %6893 = call float @dx.op.unary.f32(i32 13, float %6892)  ; Sin(value)
  %6894 = fadd fast float %6893, 0xBE8777A5C0000000
  %6895 = fmul fast float %6894, 0x3FB45F3060000000
  %6896 = call float @dx.op.dot4.f32(i32 56, float %6870, float %6871, float %6872, float %6873, float %6880, float %6885, float %6890, float %6895)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6897 = fmul fast float %6896, 0xBFF7154760000000
  %6898 = call float @dx.op.unary.f32(i32 21, float %6897)  ; Exp(value)
  %6899 = call float @dx.op.unary.f32(i32 7, float %6898)  ; Saturate(value)
  br label %6900

; <label>:6900                                    ; preds = %6868, %6864
  %6901 = phi float [ %6899, %6868 ], [ 1.000000e+00, %6864 ]
  %6902 = fadd fast float %6901, -1.000000e+00
  %6903 = fmul fast float %6902, %6862
  %6904 = fadd fast float %6903, 1.000000e+00
  br label %6905

; <label>:6905                                    ; preds = %6900, %6806
  %6906 = phi float [ %6904, %6900 ], [ 1.000000e+00, %6806 ]
  %6907 = fmul fast float %6906, %6802
  %6908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6909 = extractvalue %dx.types.CBufRet.f32 %6908, 0
  %6910 = extractvalue %dx.types.CBufRet.f32 %6908, 1
  %6911 = extractvalue %dx.types.CBufRet.f32 %6908, 2
  %6912 = fadd fast float %6909, %155
  %6913 = fadd fast float %6910, %156
  %6914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6915 = extractvalue %dx.types.CBufRet.f32 %6914, 1
  %6916 = fsub fast float -0.000000e+00, %6912
  %6917 = fsub fast float -0.000000e+00, %6913
  %6918 = fsub fast float %5723, %6911
  %6919 = fadd fast float %6918, %6915
  %6920 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6916, float %6917, float %6919)  ; Dot3(ax,ay,az,bx,by,bz)
  %6921 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6154, float %6155, float %6156)  ; Dot3(ax,ay,az,bx,by,bz)
  %6922 = fdiv fast float 1.000000e+00, %6921
  %6923 = fmul fast float %6922, %6920
  %6924 = fmul fast float %6154, %6923
  %6925 = fmul fast float %6155, %6923
  %6926 = fadd fast float %6924, %6912
  %6927 = fadd fast float %6925, %6913
  %6928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6929 = extractvalue %dx.types.CBufRet.f32 %6928, 0
  %6930 = extractvalue %dx.types.CBufRet.f32 %6928, 1
  %6931 = fsub fast float %6926, %6929
  %6932 = fsub fast float %6927, %6930
  %6933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6934 = extractvalue %dx.types.CBufRet.f32 %6933, 2
  %6935 = extractvalue %dx.types.CBufRet.f32 %6933, 3
  %6936 = fmul fast float %6931, %6934
  %6937 = fmul fast float %6932, %6935
  %6938 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6939 = extractvalue %dx.types.CBufRet.i32 %6938, 3
  %6940 = icmp eq i32 %6939, 0
  br i1 %6940, label %6946, label %6941

; <label>:6941                                    ; preds = %6905
  %6942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6936, float %6937, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6943 = extractvalue %dx.types.ResRet.f32 %6942, 0
  %6944 = extractvalue %dx.types.ResRet.f32 %6942, 1
  %6945 = extractvalue %dx.types.ResRet.f32 %6942, 2
  br label %6951

; <label>:6946                                    ; preds = %6905
  %6947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6936, float %6937, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6948 = extractvalue %dx.types.ResRet.f32 %6947, 0
  %6949 = extractvalue %dx.types.ResRet.f32 %6947, 1
  %6950 = extractvalue %dx.types.ResRet.f32 %6947, 2
  br label %6951

; <label>:6951                                    ; preds = %6946, %6941
  %6952 = phi float [ %6943, %6941 ], [ %6948, %6946 ]
  %6953 = phi float [ %6944, %6941 ], [ %6949, %6946 ]
  %6954 = phi float [ %6945, %6941 ], [ %6950, %6946 ]
  %6955 = extractvalue %dx.types.CBufRet.f32 %6914, 2
  %6956 = fmul fast float %6955, %6952
  %6957 = extractvalue %dx.types.CBufRet.f32 %6914, 0
  %6958 = fsub fast float %6923, %6957
  %6959 = fsub fast float %6958, %6956
  %6960 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6959)  ; FMax(a,b)
  %6961 = fmul fast float %6960, %6953
  %6962 = call float @dx.op.binary.f32(i32 36, float %6954, float %6961)  ; FMin(a,b)
  %6963 = fmul fast float %6962, 0xBFF7154760000000
  %6964 = call float @dx.op.unary.f32(i32 21, float %6963)  ; Exp(value)
  %6965 = fmul fast float %6907, %6964
  br label %6966

; <label>:6966                                    ; preds = %6951, %6801
  %6967 = phi float [ %6965, %6951 ], [ %6802, %6801 ]
  %6968 = call float @dx.op.binary.f32(i32 36, float %6967, float %6967)  ; FMin(a,b)
  %6969 = call float @dx.op.binary.f32(i32 36, float %6967, float %6968)  ; FMin(a,b)
  %6970 = fcmp fast ogt float %6969, 0.000000e+00
  br i1 %6970, label %6971, label %7357, !dx.controlflow.hints !116

; <label>:6971                                    ; preds = %6966
  %6972 = fmul fast float %6967, %6165
  %6973 = fmul fast float %6967, %6166
  %6974 = fmul fast float %6967, %6167
  %6975 = fsub fast float %157, %5511
  %6976 = fcmp fast ogt float %6975, 0.000000e+00
  %6977 = fmul fast float %6154, 5.120000e+02
  %6978 = fmul fast float %6155, 5.120000e+02
  %6979 = fmul fast float %6156, 5.120000e+02
  %6980 = fadd fast float %6979, %157
  %6981 = fsub fast float %5511, %6980
  %6982 = fmul fast float %6981, 2.000000e+00
  %6983 = fadd fast float %6982, %6980
  %6984 = select i1 %6976, float %6983, float %6980
  %6985 = fsub fast float %6984, %157
  %6986 = call float @dx.op.dot3.f32(i32 55, float %6977, float %6978, float %6985, float %6977, float %6978, float %6985)  ; Dot3(ax,ay,az,bx,by,bz)
  %6987 = call float @dx.op.unary.f32(i32 25, float %6986)  ; Rsqrt(value)
  %6988 = fmul fast float %6987, %6977
  %6989 = fmul fast float %6987, %6978
  %6990 = fmul fast float %6987, %6985
  %6991 = fsub fast float %5511, %157
  %6992 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6991)  ; Dot3(ax,ay,az,bx,by,bz)
  %6993 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6988, float %6989, float %6990)  ; Dot3(ax,ay,az,bx,by,bz)
  %6994 = fdiv fast float 1.000000e+00, %6993
  %6995 = fmul fast float %6994, %6992
  %6996 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6975, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6997 = fcmp fast ogt float %6996, 0.000000e+00
  %6998 = fcmp fast olt float %6996, 0.000000e+00
  %6999 = zext i1 %6997 to i32
  %7000 = zext i1 %6998 to i32
  %7001 = sub nsw i32 %6999, %7000
  %7002 = sitofp i32 %7001 to float
  %7003 = fsub fast float %6984, %5511
  %7004 = call float @dx.op.dot3.f32(i32 55, float %6977, float %6978, float %7003, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7005 = fcmp fast ogt float %7004, 0.000000e+00
  %7006 = fcmp fast olt float %7004, 0.000000e+00
  %7007 = zext i1 %7005 to i32
  %7008 = zext i1 %7006 to i32
  %7009 = sub nsw i32 %7007, %7008
  %7010 = sitofp i32 %7009 to float
  %7011 = fcmp fast une float %7002, %7010
  br i1 %7011, label %7012, label %7022

; <label>:7012                                    ; preds = %6971
  %7013 = fmul fast float %6995, %6990
  %7014 = fmul fast float %6995, %6989
  %7015 = fmul fast float %6995, %6988
  %7016 = fmul fast float %7015, %7015
  %7017 = fmul fast float %7014, %7014
  %7018 = fadd fast float %7016, %7017
  %7019 = fmul fast float %7013, %7013
  %7020 = fadd fast float %7018, %7019
  %7021 = call float @dx.op.unary.f32(i32 24, float %7020)  ; Sqrt(value)
  br label %7032

; <label>:7022                                    ; preds = %6971
  %7023 = icmp slt i32 %7001, 0
  br i1 %7023, label %7024, label %7032

; <label>:7024                                    ; preds = %7022
  %7025 = fsub fast float %157, %6984
  %7026 = fmul fast float %6977, %6977
  %7027 = fmul fast float %6978, %6978
  %7028 = fadd fast float %7026, %7027
  %7029 = fmul fast float %7025, %7025
  %7030 = fadd fast float %7028, %7029
  %7031 = call float @dx.op.unary.f32(i32 24, float %7030)  ; Sqrt(value)
  br label %7032

; <label>:7032                                    ; preds = %7024, %7022, %7012
  %7033 = phi float [ %7021, %7012 ], [ %7031, %7024 ], [ 0.000000e+00, %7022 ]
  %7034 = fsub fast float -0.000000e+00, %7033
  %7035 = select i1 %6976, float -0.000000e+00, float %7034
  %7036 = fmul fast float %5512, 0x3FF7154760000000
  %7037 = fmul fast float %7036, %7035
  %7038 = fmul fast float %5513, 0x3FF7154760000000
  %7039 = fmul fast float %7038, %7035
  %7040 = fmul fast float %5514, 0x3FF7154760000000
  %7041 = fmul fast float %7040, %7035
  %7042 = call float @dx.op.unary.f32(i32 21, float %7037)  ; Exp(value)
  %7043 = call float @dx.op.unary.f32(i32 21, float %7039)  ; Exp(value)
  %7044 = call float @dx.op.unary.f32(i32 21, float %7041)  ; Exp(value)
  %7045 = call float @dx.op.unary.f32(i32 7, float %7042)  ; Saturate(value)
  %7046 = call float @dx.op.unary.f32(i32 7, float %7043)  ; Saturate(value)
  %7047 = call float @dx.op.unary.f32(i32 7, float %7044)  ; Saturate(value)
  %7048 = fmul fast float %6972, %7045
  %7049 = fmul fast float %6973, %7046
  %7050 = fmul fast float %6974, %7047
  %7051 = fsub fast float %6154, %5711
  %7052 = fsub fast float %6155, %5710
  %7053 = fsub fast float %6156, %5709
  %7054 = call float @dx.op.dot3.f32(i32 55, float %7051, float %7052, float %7053, float %7051, float %7052, float %7053)  ; Dot3(ax,ay,az,bx,by,bz)
  %7055 = call float @dx.op.unary.f32(i32 25, float %7054)  ; Rsqrt(value)
  %7056 = fmul fast float %7055, %7051
  %7057 = fmul fast float %7055, %7052
  %7058 = fmul fast float %7055, %7053
  %7059 = call float @dx.op.dot3.f32(i32 55, float %6154, float %6155, float %6156, float %5712, float %5713, float %5714)  ; Dot3(ax,ay,az,bx,by,bz)
  %7060 = call float @dx.op.dot3.f32(i32 55, float %5708, float %5707, float %5706, float %7056, float %7057, float %7058)  ; Dot3(ax,ay,az,bx,by,bz)
  %7061 = call float @dx.op.unary.f32(i32 7, float %7059)  ; Saturate(value)
  %7062 = fmul fast float %7061, %7061
  %7063 = fmul fast float %7062, %5739
  %7064 = call float @dx.op.unary.f32(i32 7, float %7063)  ; Saturate(value)
  %7065 = fmul fast float %7064, %7061
  %7066 = call float @dx.op.dot3.f32(i32 55, float %5712, float %5713, float %5714, float %7056, float %7057, float %7058)  ; Dot3(ax,ay,az,bx,by,bz)
  %7067 = fmul fast float %7066, %7066
  %7068 = call float @dx.op.unary.f32(i32 6, float %7059)  ; FAbs(value)
  %7069 = call float @dx.op.binary.f32(i32 35, float %6122, float 0x3F847AE140000000)  ; FMax(a,b)
  %7070 = fmul fast float %7069, %7069
  %7071 = fmul fast float %7070, %7070
  %7072 = fsub fast float 1.000000e+00, %7071
  %7073 = fmul fast float %5726, %5726
  %7074 = fmul fast float %7073, %7072
  %7075 = fadd fast float %7074, %7071
  %7076 = bitcast float %7075 to i32
  %7077 = ashr i32 %7076, 1
  %7078 = add nsw i32 %7077, 532487669
  %7079 = bitcast i32 %7078 to float
  %7080 = fadd fast float %7079, %5726
  %7081 = fmul fast float %7071, %7067
  %7082 = fsub fast float 1.000000e+00, %7067
  %7083 = fadd fast float %7082, %7081
  %7084 = fmul fast float %7068, %7068
  %7085 = fmul fast float %7084, %7072
  %7086 = fadd fast float %7085, %7071
  %7087 = bitcast float %7086 to i32
  %7088 = ashr i32 %7087, 1
  %7089 = add nsw i32 %7088, 532487669
  %7090 = bitcast i32 %7089 to float
  %7091 = fadd fast float %7090, %7068
  %7092 = fmul fast float %7083, %7083
  %7093 = fmul fast float %7092, %7080
  %7094 = fmul fast float %7093, %7091
  %7095 = fdiv fast float 0x3FF0A00000000000, %7094
  %7096 = fmul fast float %7095, %7071
  %7097 = fmul fast float %5984, 0x3FF9999980000000
  %7098 = fsub fast float 5.000000e+00, %7097
  %7099 = call float @dx.op.unary.f32(i32 6, float %7060)  ; FAbs(value)
  %7100 = fsub fast float 1.000000e+00, %7099
  %7101 = fmul fast float %5984, 0x41D9660740000000
  %7102 = fadd fast float %7101, 0xC1EFBF8940000000
  %7103 = bitcast float %7100 to i32
  %7104 = sitofp i32 %7103 to float
  %7105 = fmul fast float %7104, %7098
  %7106 = fadd fast float %7102, %7105
  %7107 = fptosi float %7106 to i32
  %7108 = bitcast i32 %7107 to float
  %7109 = fsub fast float 1.000000e+00, %5718
  %7110 = fsub fast float 1.000000e+00, %5719
  %7111 = fsub fast float 1.000000e+00, %5724
  %7112 = fmul fast float %7108, %7109
  %7113 = fmul fast float %7108, %7110
  %7114 = fmul fast float %7108, %7111
  %7115 = fadd fast float %7112, %5718
  %7116 = fadd fast float %7113, %5719
  %7117 = fadd fast float %7114, %5724
  br i1 %6007, label %7118, label %7141

; <label>:7118                                    ; preds = %7032
  %7119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5081, float %7099, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7120 = extractvalue %dx.types.ResRet.f32 %7119, 0
  %7121 = extractvalue %dx.types.ResRet.f32 %7119, 1
  %7122 = extractvalue %dx.types.ResRet.f32 %7119, 2
  %7123 = fadd fast float %7120, -5.000000e-01
  %7124 = fadd fast float %7121, -5.000000e-01
  %7125 = fadd fast float %7122, -5.000000e-01
  %7126 = fmul fast float %5718, 4.000000e+00
  %7127 = fmul fast float %7126, %7109
  %7128 = fmul fast float %7127, %7123
  %7129 = fmul fast float %5719, 4.000000e+00
  %7130 = fmul fast float %7129, %7110
  %7131 = fmul fast float %7130, %7124
  %7132 = fmul fast float %5724, 4.000000e+00
  %7133 = fmul fast float %7132, %7111
  %7134 = fmul fast float %7133, %7125
  %7135 = fadd fast float %7128, %7115
  %7136 = fadd fast float %7131, %7116
  %7137 = fadd fast float %7134, %7117
  %7138 = call float @dx.op.unary.f32(i32 7, float %7135)  ; Saturate(value)
  %7139 = call float @dx.op.unary.f32(i32 7, float %7136)  ; Saturate(value)
  %7140 = call float @dx.op.unary.f32(i32 7, float %7137)  ; Saturate(value)
  br label %7141

; <label>:7141                                    ; preds = %7118, %7032
  %7142 = phi float [ %7138, %7118 ], [ %7115, %7032 ]
  %7143 = phi float [ %7139, %7118 ], [ %7116, %7032 ]
  %7144 = phi float [ %7140, %7118 ], [ %7117, %7032 ]
  %7145 = fmul fast float %7059, 9.843750e-01
  %7146 = fadd fast float %7145, 7.812500e-03
  %7147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7146, float %5988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7148 = extractvalue %dx.types.ResRet.f32 %7147, 0
  %7149 = extractvalue %dx.types.ResRet.f32 %7147, 1
  %7150 = extractvalue %dx.types.ResRet.f32 %7147, 2
  %7151 = extractvalue %dx.types.ResRet.f32 %7147, 3
  %7152 = fsub fast float %7150, %7148
  %7153 = fsub fast float %7151, %7149
  %7154 = fmul fast float %7152, %5994
  %7155 = fmul fast float %7153, %5994
  %7156 = fadd fast float %7154, %7148
  %7157 = fadd fast float %7155, %7149
  %7158 = fmul fast float %7156, %5718
  %7159 = fmul fast float %7156, %5719
  %7160 = fmul fast float %7156, %5724
  %7161 = fadd fast float %7158, %7157
  %7162 = fadd fast float %7159, %7157
  %7163 = fadd fast float %7160, %7157
  br i1 %6007, label %7164, label %7187

; <label>:7164                                    ; preds = %7141
  %7165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5081, float %7059, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7166 = extractvalue %dx.types.ResRet.f32 %7165, 0
  %7167 = extractvalue %dx.types.ResRet.f32 %7165, 1
  %7168 = extractvalue %dx.types.ResRet.f32 %7165, 2
  %7169 = fadd fast float %7166, -5.000000e-01
  %7170 = fadd fast float %7167, -5.000000e-01
  %7171 = fadd fast float %7168, -5.000000e-01
  %7172 = fmul fast float %5718, 4.000000e+00
  %7173 = fmul fast float %7172, %7109
  %7174 = fmul fast float %7173, %7169
  %7175 = fmul fast float %5719, 4.000000e+00
  %7176 = fmul fast float %7175, %7110
  %7177 = fmul fast float %7176, %7170
  %7178 = fmul fast float %5724, 4.000000e+00
  %7179 = fmul fast float %7178, %7111
  %7180 = fmul fast float %7179, %7171
  %7181 = fadd fast float %7174, %7161
  %7182 = fadd fast float %7177, %7162
  %7183 = fadd fast float %7180, %7163
  %7184 = call float @dx.op.unary.f32(i32 7, float %7181)  ; Saturate(value)
  %7185 = call float @dx.op.unary.f32(i32 7, float %7182)  ; Saturate(value)
  %7186 = call float @dx.op.unary.f32(i32 7, float %7183)  ; Saturate(value)
  br label %7187

; <label>:7187                                    ; preds = %7164, %7141
  %7188 = phi float [ %7184, %7164 ], [ %7161, %7141 ]
  %7189 = phi float [ %7185, %7164 ], [ %7162, %7141 ]
  %7190 = phi float [ %7186, %7164 ], [ %7163, %7141 ]
  %7191 = call float @dx.op.binary.f32(i32 35, float %7189, float %7190)  ; FMax(a,b)
  %7192 = call float @dx.op.binary.f32(i32 35, float %7188, float %7191)  ; FMax(a,b)
  %7193 = fsub fast float 1.000000e+00, %7192
  %7194 = call float @dx.op.binary.f32(i32 35, float %7068, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7195 = fdiv fast float %4418, %7194
  %7196 = fmul fast float %6062, %7195
  %7197 = fmul fast float %6064, %7195
  %7198 = fmul fast float %6066, %7195
  %7199 = call float @dx.op.unary.f32(i32 21, float %7196)  ; Exp(value)
  %7200 = call float @dx.op.unary.f32(i32 21, float %7197)  ; Exp(value)
  %7201 = call float @dx.op.unary.f32(i32 21, float %7198)  ; Exp(value)
  %7202 = call float @dx.op.unary.f32(i32 7, float %7199)  ; Saturate(value)
  %7203 = call float @dx.op.unary.f32(i32 7, float %7200)  ; Saturate(value)
  %7204 = call float @dx.op.unary.f32(i32 7, float %7201)  ; Saturate(value)
  %7205 = select i1 %6059, float %7202, float 0.000000e+00
  %7206 = select i1 %6060, float %7203, float 0.000000e+00
  %7207 = select i1 %6061, float %7204, float 0.000000e+00
  %7208 = fsub fast float -0.000000e+00, %5712
  %7209 = fsub fast float -0.000000e+00, %5713
  %7210 = fsub fast float -0.000000e+00, %5714
  %7211 = call float @dx.op.dot3.f32(i32 55, float %6154, float %6155, float %6156, float %7208, float %7209, float %7210)  ; Dot3(ax,ay,az,bx,by,bz)
  %7212 = call float @dx.op.unary.f32(i32 7, float %7211)  ; Saturate(value)
  %7213 = fmul fast float %7212, 9.843750e-01
  %7214 = fadd fast float %7213, 7.812500e-03
  %7215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7214, float %5988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7216 = extractvalue %dx.types.ResRet.f32 %7215, 0
  %7217 = extractvalue %dx.types.ResRet.f32 %7215, 1
  %7218 = extractvalue %dx.types.ResRet.f32 %7215, 2
  %7219 = extractvalue %dx.types.ResRet.f32 %7215, 3
  %7220 = fsub fast float %7218, %7216
  %7221 = fsub fast float %7219, %7217
  %7222 = fmul fast float %7220, %5994
  %7223 = fmul fast float %7221, %5994
  %7224 = fadd fast float %7222, %7216
  %7225 = fadd fast float %7223, %7217
  %7226 = fmul fast float %7224, %5718
  %7227 = fmul fast float %7224, %5719
  %7228 = fmul fast float %7224, %5724
  %7229 = fadd fast float %7226, %7225
  %7230 = fadd fast float %7227, %7225
  %7231 = fadd fast float %7228, %7225
  br i1 %6007, label %7232, label %7255

; <label>:7232                                    ; preds = %7187
  %7233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5081, float %7212, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7234 = extractvalue %dx.types.ResRet.f32 %7233, 0
  %7235 = extractvalue %dx.types.ResRet.f32 %7233, 1
  %7236 = extractvalue %dx.types.ResRet.f32 %7233, 2
  %7237 = fadd fast float %7234, -5.000000e-01
  %7238 = fadd fast float %7235, -5.000000e-01
  %7239 = fadd fast float %7236, -5.000000e-01
  %7240 = fmul fast float %5718, 4.000000e+00
  %7241 = fmul fast float %7240, %7109
  %7242 = fmul fast float %7241, %7237
  %7243 = fmul fast float %5719, 4.000000e+00
  %7244 = fmul fast float %7243, %7110
  %7245 = fmul fast float %7244, %7238
  %7246 = fmul fast float %5724, 4.000000e+00
  %7247 = fmul fast float %7246, %7111
  %7248 = fmul fast float %7247, %7239
  %7249 = fadd fast float %7242, %7229
  %7250 = fadd fast float %7245, %7230
  %7251 = fadd fast float %7248, %7231
  %7252 = call float @dx.op.unary.f32(i32 7, float %7249)  ; Saturate(value)
  %7253 = call float @dx.op.unary.f32(i32 7, float %7250)  ; Saturate(value)
  %7254 = call float @dx.op.unary.f32(i32 7, float %7251)  ; Saturate(value)
  br label %7255

; <label>:7255                                    ; preds = %7232, %7187
  %7256 = phi float [ %7252, %7232 ], [ %7229, %7187 ]
  %7257 = phi float [ %7253, %7232 ], [ %7230, %7187 ]
  %7258 = phi float [ %7254, %7232 ], [ %7231, %7187 ]
  %7259 = call float @dx.op.binary.f32(i32 35, float %7257, float %7258)  ; FMax(a,b)
  %7260 = call float @dx.op.binary.f32(i32 35, float %7256, float %7259)  ; FMax(a,b)
  %7261 = fsub fast float 1.000000e+00, %7260
  %7262 = fmul fast float %6122, %6127
  %7263 = fadd fast float %6129, %7262
  %7264 = call float @dx.op.unary.f32(i32 7, float %7263)  ; Saturate(value)
  %7265 = fsub fast float %6154, %5732
  %7266 = fsub fast float %6155, %5733
  %7267 = fsub fast float %6156, %5734
  %7268 = call float @dx.op.dot3.f32(i32 55, float %7265, float %7266, float %7267, float %7265, float %7266, float %7267)  ; Dot3(ax,ay,az,bx,by,bz)
  %7269 = call float @dx.op.unary.f32(i32 25, float %7268)  ; Rsqrt(value)
  %7270 = fmul fast float %7269, %7265
  %7271 = fmul fast float %7269, %7266
  %7272 = fmul fast float %7269, %7267
  %7273 = call float @dx.op.dot3.f32(i32 55, float %7208, float %7209, float %7210, float %7270, float %7271, float %7272)  ; Dot3(ax,ay,az,bx,by,bz)
  %7274 = fmul fast float %7273, %7273
  %7275 = call float @dx.op.unary.f32(i32 6, float %7212)  ; FAbs(value)
  %7276 = call float @dx.op.binary.f32(i32 35, float %7264, float 0x3F847AE140000000)  ; FMax(a,b)
  %7277 = fmul fast float %7276, %7276
  %7278 = fmul fast float %7277, %7277
  %7279 = fsub fast float 1.000000e+00, %7278
  %7280 = fmul fast float %7073, %7279
  %7281 = fadd fast float %7280, %7278
  %7282 = bitcast float %7281 to i32
  %7283 = ashr i32 %7282, 1
  %7284 = add nsw i32 %7283, 532487669
  %7285 = bitcast i32 %7284 to float
  %7286 = fadd fast float %7285, %5726
  %7287 = fmul fast float %7278, %7274
  %7288 = fsub fast float 1.000000e+00, %7274
  %7289 = fadd fast float %7288, %7287
  %7290 = fmul fast float %7275, %7275
  %7291 = fmul fast float %7290, %7279
  %7292 = fadd fast float %7291, %7278
  %7293 = bitcast float %7292 to i32
  %7294 = ashr i32 %7293, 1
  %7295 = add nsw i32 %7294, 532487669
  %7296 = bitcast i32 %7295 to float
  %7297 = fadd fast float %7296, %7275
  %7298 = fmul fast float %7289, %7289
  %7299 = fmul fast float %7298, %7286
  %7300 = fmul fast float %7299, %7297
  %7301 = fdiv fast float 0x3FF0A00000000000, %7300
  %7302 = fmul fast float %7301, %7278
  %7303 = fmul fast float %7212, %7205
  %7304 = fmul fast float %7212, %7206
  %7305 = fmul fast float %7212, %7207
  %7306 = fmul fast float %7303, %7261
  %7307 = fmul fast float %7306, %7302
  %7308 = fmul fast float %7304, %7261
  %7309 = fmul fast float %7308, %7302
  %7310 = fmul fast float %7305, %7261
  %7311 = fmul fast float %7310, %7302
  %7312 = fmul fast float %7142, %7096
  %7313 = fmul fast float %7143, %7096
  %7314 = fmul fast float %7144, %7096
  %7315 = fsub fast float 1.000000e+00, %7060
  %7316 = bitcast float %7315 to i32
  %7317 = sitofp i32 %7316 to float
  %7318 = fmul fast float %7317, 5.000000e+00
  %7319 = fadd fast float %7318, 0xC1EFBF8940000000
  %7320 = fptosi float %7319 to i32
  %7321 = bitcast i32 %7320 to float
  %7322 = fmul fast float %7321, %5082
  %7323 = fmul fast float %7193, %7322
  %7324 = fmul fast float %7323, %6054
  %7325 = fmul fast float %7323, %6055
  %7326 = fmul fast float %7323, %6056
  %7327 = fadd fast float %7324, %7312
  %7328 = fadd fast float %7325, %7313
  %7329 = fadd fast float %7326, %7314
  %7330 = fmul fast float %7327, %7065
  %7331 = fmul fast float %7328, %7065
  %7332 = fmul fast float %7329, %7065
  %7333 = fmul fast float %7065, %7048
  %7334 = fmul fast float %7333, %7193
  %7335 = fmul fast float %7065, %7049
  %7336 = fmul fast float %7335, %7193
  %7337 = fmul fast float %7065, %7050
  %7338 = fmul fast float %7337, %7193
  %7339 = fadd fast float %7330, %7307
  %7340 = fadd fast float %7331, %7309
  %7341 = fadd fast float %7332, %7311
  %7342 = fmul fast float %7339, %7048
  %7343 = fmul fast float %7340, %7049
  %7344 = fmul fast float %7341, %7050
  %7345 = fadd fast float %7334, %6144
  %7346 = fmul fast float %7345, %5078
  %7347 = fadd fast float %7336, %6146
  %7348 = fmul fast float %7347, %5078
  %7349 = fadd fast float %7338, %6148
  %7350 = fmul fast float %7349, %5078
  %7351 = fadd fast float %7342, %6107
  %7352 = fmul fast float %7351, %5078
  %7353 = fadd fast float %7343, %6110
  %7354 = fmul fast float %7353, %5078
  %7355 = fadd fast float %7344, %6113
  %7356 = fmul fast float %7355, %5078
  br label %7357

; <label>:7357                                    ; preds = %7255, %6966, %6034
  %7358 = phi float [ %6108, %6034 ], [ %6108, %6966 ], [ %7352, %7255 ]
  %7359 = phi float [ %6111, %6034 ], [ %6111, %6966 ], [ %7354, %7255 ]
  %7360 = phi float [ %6114, %6034 ], [ %6114, %6966 ], [ %7356, %7255 ]
  %7361 = phi float [ %6145, %6034 ], [ %6145, %6966 ], [ %7346, %7255 ]
  %7362 = phi float [ %6147, %6034 ], [ %6147, %6966 ], [ %7348, %7255 ]
  %7363 = phi float [ %6149, %6034 ], [ %6149, %6966 ], [ %7350, %7255 ]
  %7364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7365 = extractvalue %dx.types.CBufRet.i32 %7364, 0
  %7366 = icmp eq i32 %7365, 0
  br i1 %7366, label %8141, label %7367

; <label>:7367                                    ; preds = %7357
  %7368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7369 = extractvalue %dx.types.CBufRet.f32 %7368, 2
  %7370 = extractvalue %dx.types.CBufRet.f32 %7368, 3
  %7371 = fmul fast float %7369, %100
  %7372 = fmul fast float %7370, %101
  %7373 = fptoui float %7371 to i32
  %7374 = fptoui float %7372 to i32
  %7375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7376 = extractvalue %dx.types.CBufRet.f32 %7375, 0
  %7377 = extractvalue %dx.types.CBufRet.f32 %7375, 2
  %7378 = extractvalue %dx.types.CBufRet.f32 %7375, 3
  %7379 = fadd fast float %91, -4.000000e+00
  %7380 = call float @dx.op.binary.f32(i32 35, float %7379, float 0.000000e+00)  ; FMax(a,b)
  %7381 = fadd fast float %7380, %7376
  %7382 = fmul fast float %7381, %7377
  %7383 = call float @dx.op.unary.f32(i32 23, float %7382)  ; Log(value)
  %7384 = fmul fast float %7383, %7378
  %7385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7386 = extractvalue %dx.types.CBufRet.f32 %7385, 2
  %7387 = fmul fast float %7384, %7386
  %7388 = call float @dx.op.unary.f32(i32 7, float %7387)  ; Saturate(value)
  %7389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7390 = extractvalue %dx.types.CBufRet.i32 %7389, 1
  %7391 = add i32 %7390, -1
  %7392 = uitofp i32 %7390 to float
  %7393 = fmul fast float %7392, %7388
  %7394 = fptoui float %7393 to i32
  %7395 = call i32 @dx.op.binary.i32(i32 40, i32 %7394, i32 %7391)  ; UMin(a,b)
  %7396 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7397 = extractvalue %dx.types.CBufRet.i32 %7396, 2
  %7398 = extractvalue %dx.types.CBufRet.i32 %7396, 3
  %7399 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7374, i32 %7397, i32 %7373)  ; UMad(a,b,c)
  %7400 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7395, i32 %7398, i32 %7399)  ; UMad(a,b,c)
  %7401 = add nsw i32 %7365, -1
  %7402 = call i32 @dx.op.binary.i32(i32 37, i32 %7401, i32 0)  ; IMax(a,b)
  %7403 = call float @dx.op.binary.f32(i32 35, float %91, float 0.000000e+00)  ; FMax(a,b)
  %7404 = fptoui float %7403 to i32
  %7405 = lshr i32 %7404, 5
  %7406 = call i32 @dx.op.binary.i32(i32 40, i32 %7405, i32 8191)  ; UMin(a,b)
  %7407 = shl i32 %7406, 2
  %7408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7407, i32 undef)  ; BufferLoad(srv,index,wot)
  %7409 = extractvalue %dx.types.ResRet.i32 %7408, 0
  %7410 = lshr i32 %7409, 16
  %7411 = and i32 %7409, 65535
  %7412 = lshr i32 %7409, 21
  %7413 = lshr i32 %7411, 5
  %7414 = call i32 @dx.op.binary.i32(i32 40, i32 %7413, i32 %7402)  ; UMin(a,b)
  %7415 = icmp ugt i32 %7412, %7414
  br i1 %7415, label %8141, label %7416

; <label>:7416                                    ; preds = %7367
  br label %7417

; <label>:7417                                    ; preds = %8131, %7416
  %7418 = phi i32 [ %8138, %8131 ], [ %7412, %7416 ]
  %7419 = phi float [ %8132, %8131 ], [ %7358, %7416 ]
  %7420 = phi float [ %8133, %8131 ], [ %7359, %7416 ]
  %7421 = phi float [ %8134, %8131 ], [ %7360, %7416 ]
  %7422 = phi float [ %8135, %8131 ], [ %7361, %7416 ]
  %7423 = phi float [ %8136, %8131 ], [ %7362, %7416 ]
  %7424 = phi float [ %8137, %8131 ], [ %7363, %7416 ]
  %7425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7426 = extractvalue %dx.types.CBufRet.i32 %7425, 0
  %7427 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7400, i32 %7426, i32 %7418)  ; UMad(a,b,c)
  %7428 = shl i32 %7427, 2
  %7429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7428, i32 undef)  ; BufferLoad(srv,index,wot)
  %7430 = extractvalue %dx.types.ResRet.i32 %7429, 0
  %7431 = shl i32 %7418, 5
  %7432 = sub nsw i32 %7410, %7431
  %7433 = call i32 @dx.op.binary.i32(i32 37, i32 %7432, i32 0)  ; IMax(a,b)
  %7434 = call i32 @dx.op.binary.i32(i32 38, i32 %7433, i32 31)  ; IMin(a,b)
  %7435 = sub nsw i32 1, %7410
  %7436 = add nsw i32 %7435, %7411
  %7437 = call i32 @dx.op.binary.i32(i32 37, i32 %7436, i32 0)  ; IMax(a,b)
  %7438 = call i32 @dx.op.binary.i32(i32 38, i32 %7437, i32 32)  ; IMin(a,b)
  %7439 = and i32 %7438, 31
  %7440 = shl i32 -1, %7439
  %7441 = xor i32 %7440, -1
  %7442 = and i32 %7434, 31
  %7443 = shl i32 %7441, %7442
  %7444 = icmp eq i32 %7438, 32
  %7445 = select i1 %7444, i32 -1, i32 %7443
  %7446 = and i32 %7445, %7430
  %7447 = icmp eq i32 %7446, 0
  br i1 %7447, label %8131, label %7448

; <label>:7448                                    ; preds = %7417
  br label %7449

; <label>:7449                                    ; preds = %7584, %7448
  %7450 = phi i32 [ %7461, %7584 ], [ %7446, %7448 ]
  %7451 = phi float [ %7585, %7584 ], [ %7419, %7448 ]
  %7452 = phi float [ %7586, %7584 ], [ %7420, %7448 ]
  %7453 = phi float [ %7587, %7584 ], [ %7421, %7448 ]
  %7454 = phi float [ %7588, %7584 ], [ %7422, %7448 ]
  %7455 = phi float [ %7589, %7584 ], [ %7423, %7448 ]
  %7456 = phi float [ %7590, %7584 ], [ %7424, %7448 ]
  %7457 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7450)  ; FirstbitLo(value)
  %7458 = add i32 %7457, %7431
  %7459 = and i32 %7457, 31
  %7460 = shl i32 1, %7459
  %7461 = xor i32 %7460, %7450
  %7462 = mul i32 %7458, 112
  %7463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7462, i32 undef)  ; BufferLoad(srv,index,wot)
  %7464 = extractvalue %dx.types.ResRet.f32 %7463, 0
  %7465 = extractvalue %dx.types.ResRet.f32 %7463, 1
  %7466 = extractvalue %dx.types.ResRet.f32 %7463, 2
  %7467 = or i32 %7462, 12
  %7468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7467, i32 undef)  ; BufferLoad(srv,index,wot)
  %7469 = extractvalue %dx.types.ResRet.f32 %7468, 0
  %7470 = add i32 %7462, 16
  %7471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7470, i32 undef)  ; BufferLoad(srv,index,wot)
  %7472 = extractvalue %dx.types.ResRet.f32 %7471, 0
  %7473 = extractvalue %dx.types.ResRet.f32 %7471, 1
  %7474 = extractvalue %dx.types.ResRet.f32 %7471, 2
  %7475 = add i32 %7462, 28
  %7476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7475, i32 undef)  ; BufferLoad(srv,index,wot)
  %7477 = extractvalue %dx.types.ResRet.i32 %7476, 0
  %7478 = add i32 %7462, 44
  %7479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7478, i32 undef)  ; BufferLoad(srv,index,wot)
  %7480 = extractvalue %dx.types.ResRet.f32 %7479, 0
  %7481 = add i32 %7462, 48
  %7482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7481, i32 undef)  ; BufferLoad(srv,index,wot)
  %7483 = extractvalue %dx.types.ResRet.f32 %7482, 0
  %7484 = extractvalue %dx.types.ResRet.f32 %7482, 1
  %7485 = extractvalue %dx.types.ResRet.f32 %7482, 2
  %7486 = extractvalue %dx.types.ResRet.f32 %7482, 3
  %7487 = add i32 %7462, 64
  %7488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7487, i32 undef)  ; BufferLoad(srv,index,wot)
  %7489 = extractvalue %dx.types.ResRet.f32 %7488, 0
  %7490 = extractvalue %dx.types.ResRet.f32 %7488, 1
  %7491 = extractvalue %dx.types.ResRet.f32 %7488, 2
  %7492 = extractvalue %dx.types.ResRet.f32 %7488, 3
  %7493 = add i32 %7462, 80
  %7494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7493, i32 undef)  ; BufferLoad(srv,index,wot)
  %7495 = extractvalue %dx.types.ResRet.f32 %7494, 1
  %7496 = extractvalue %dx.types.ResRet.f32 %7494, 2
  %7497 = add i32 %7462, 92
  %7498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7497, i32 undef)  ; BufferLoad(srv,index,wot)
  %7499 = extractvalue %dx.types.ResRet.i32 %7498, 0
  %7500 = call float @dx.op.dot3.f32(i32 55, float %7464, float %7465, float %7466, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7501 = select i1 %217, float %7495, float %7464
  %7502 = select i1 %217, float %7500, float %7465
  %7503 = select i1 %217, float %7496, float %7466
  %7504 = and i32 %7499, 65535
  %7505 = uitofp i32 %7504 to float
  %7506 = lshr i32 %7499, 16
  %7507 = uitofp i32 %7506 to float
  %7508 = and i32 %7477, 65535
  %7509 = and i32 %7477, 50331648
  %7510 = icmp slt i32 %7477, 0
  %7511 = icmp eq i32 %7509, 33554432
  %7512 = fsub fast float %7483, %155
  %7513 = fsub fast float %7484, %156
  %7514 = fsub fast float %7485, %157
  %7515 = call float @dx.op.dot3.f32(i32 55, float %7512, float %7513, float %7514, float %7512, float %7513, float %7514)  ; Dot3(ax,ay,az,bx,by,bz)
  %7516 = call float @dx.op.unary.f32(i32 24, float %7515)  ; Sqrt(value)
  %7517 = fdiv fast float 1.000000e+00, %7516
  %7518 = fmul fast float %7517, %7512
  %7519 = fmul fast float %7517, %7513
  %7520 = fmul fast float %7517, %7514
  %7521 = fadd fast float %7516, %7469
  %7522 = fdiv fast float 1.000000e+00, %7521
  %7523 = fmul float %7480, %7522
  %7524 = fmul float %7523, %7523
  %7525 = call float @dx.op.unary.f32(i32 7, float %7524)  ; Saturate(value)
  br i1 %7511, label %7526, label %7547

; <label>:7526                                    ; preds = %7449
  %7527 = fmul fast float %7491, %7472
  %7528 = fmul fast float %7491, %7473
  %7529 = fmul fast float %7491, %7474
  %7530 = fadd fast float %7512, %7527
  %7531 = fadd fast float %7513, %7528
  %7532 = fadd fast float %7514, %7529
  %7533 = call float @dx.op.dot3.f32(i32 55, float %7530, float %7531, float %7532, float %7530, float %7531, float %7532)  ; Dot3(ax,ay,az,bx,by,bz)
  %7534 = call float @dx.op.unary.f32(i32 25, float %7533)  ; Rsqrt(value)
  %7535 = fmul fast float %7534, %7530
  %7536 = fmul fast float %7534, %7531
  %7537 = fmul fast float %7534, %7532
  %7538 = fsub fast float %155, %7483
  %7539 = fsub fast float %156, %7484
  %7540 = fsub fast float %157, %7485
  %7541 = fsub fast float -0.000000e+00, %7538
  %7542 = fsub fast float -0.000000e+00, %7539
  %7543 = fsub fast float -0.000000e+00, %7540
  %7544 = call float @dx.op.dot3.f32(i32 55, float %7541, float %7542, float %7543, float %7472, float %7473, float %7474)  ; Dot3(ax,ay,az,bx,by,bz)
  %7545 = fcmp fast ogt float %7544, 0.000000e+00
  %7546 = uitofp i1 %7545 to float
  br label %7547

; <label>:7547                                    ; preds = %7526, %7449
  %7548 = phi float [ %7546, %7526 ], [ 1.000000e+00, %7449 ]
  %7549 = phi float [ %7535, %7526 ], [ %7518, %7449 ]
  %7550 = phi float [ %7536, %7526 ], [ %7519, %7449 ]
  %7551 = phi float [ %7537, %7526 ], [ %7520, %7449 ]
  %7552 = call float @dx.op.dot3.f32(i32 55, float %7472, float %7473, float %7474, float %7549, float %7550, float %7551)  ; Dot3(ax,ay,az,bx,by,bz)
  %7553 = fmul fast float %7552, %7552
  %7554 = call float @dx.op.unary.f32(i32 7, float %7553)  ; Saturate(value)
  %7555 = fsub fast float 1.000000e+00, %7554
  %7556 = fmul fast float %7555, 5.000000e-01
  %7557 = fcmp fast ogt float %7552, 0.000000e+00
  %7558 = fsub fast float 1.000000e+00, %7556
  %7559 = select i1 %7557, float %7556, float %7558
  %7560 = fmul fast float %7559, %7507
  %7561 = fadd fast float %7560, %7505
  %7562 = fmul fast float %7561, 0x3EF0001000000000
  %7563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %7562, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7564 = extractvalue %dx.types.ResRet.f32 %7563, 0
  %7565 = fmul fast float %7552, %7489
  %7566 = fadd fast float %7565, %7490
  %7567 = call float @dx.op.unary.f32(i32 7, float %7566)  ; Saturate(value)
  %7568 = select i1 %7511, float 1.000000e+00, float %7567
  %7569 = select i1 %7511, float %7567, float 1.000000e+00
  %7570 = fmul fast float %7516, %7486
  %7571 = fsub fast float 1.000000e+00, %7570
  %7572 = fmul fast float %7571, %7492
  %7573 = call float @dx.op.unary.f32(i32 7, float %7572)  ; Saturate(value)
  %7574 = fmul fast float %7573, %7569
  %7575 = fmul fast float %7574, 2.000000e+00
  %7576 = fsub fast float 3.000000e+00, %7575
  %7577 = fmul fast float %7564, %7548
  %7578 = fmul fast float %7574, %7574
  %7579 = fmul fast float %7578, %7577
  %7580 = fmul fast float %7579, %7576
  %7581 = call float @dx.op.binary.f32(i32 36, float %7580, float %7580)  ; FMin(a,b)
  %7582 = call float @dx.op.binary.f32(i32 36, float %7580, float %7581)  ; FMin(a,b)
  %7583 = fcmp fast ogt float %7582, 0.000000e+00
  br i1 %7583, label %7592, label %7584, !dx.controlflow.hints !117

; <label>:7584                                    ; preds = %8084, %7692, %7547
  %7585 = phi float [ %7451, %7692 ], [ %7451, %7547 ], [ %8127, %8084 ]
  %7586 = phi float [ %7452, %7692 ], [ %7452, %7547 ], [ %8128, %8084 ]
  %7587 = phi float [ %7453, %7692 ], [ %7453, %7547 ], [ %8129, %8084 ]
  %7588 = phi float [ %7454, %7692 ], [ %7454, %7547 ], [ %8121, %8084 ]
  %7589 = phi float [ %7455, %7692 ], [ %7455, %7547 ], [ %8122, %8084 ]
  %7590 = phi float [ %7456, %7692 ], [ %7456, %7547 ], [ %8123, %8084 ]
  %7591 = icmp eq i32 %7450, %7460
  br i1 %7591, label %8130, label %7449

; <label>:7592                                    ; preds = %7547
  %7593 = icmp eq i32 %7508, 255
  br i1 %7593, label %7692, label %7594, !dx.controlflow.hints !118

; <label>:7594                                    ; preds = %7592
  %7595 = mul nuw nsw i32 %7508, 176
  %7596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7595, i32 undef)  ; BufferLoad(srv,index,wot)
  %7597 = extractvalue %dx.types.ResRet.f32 %7596, 0
  %7598 = extractvalue %dx.types.ResRet.f32 %7596, 1
  %7599 = extractvalue %dx.types.ResRet.f32 %7596, 2
  %7600 = extractvalue %dx.types.ResRet.f32 %7596, 3
  %7601 = add nuw nsw i32 %7595, 16
  %7602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7601, i32 undef)  ; BufferLoad(srv,index,wot)
  %7603 = extractvalue %dx.types.ResRet.f32 %7602, 0
  %7604 = extractvalue %dx.types.ResRet.f32 %7602, 1
  %7605 = add nuw nsw i32 %7595, 32
  %7606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7605, i32 undef)  ; BufferLoad(srv,index,wot)
  %7607 = extractvalue %dx.types.ResRet.f32 %7606, 0
  %7608 = extractvalue %dx.types.ResRet.f32 %7606, 1
  %7609 = extractvalue %dx.types.ResRet.f32 %7606, 2
  %7610 = add nuw nsw i32 %7595, 48
  %7611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7610, i32 undef)  ; BufferLoad(srv,index,wot)
  %7612 = extractvalue %dx.types.ResRet.f32 %7611, 0
  %7613 = extractvalue %dx.types.ResRet.f32 %7611, 1
  %7614 = extractvalue %dx.types.ResRet.f32 %7611, 2
  %7615 = extractvalue %dx.types.ResRet.f32 %7611, 3
  %7616 = add nuw nsw i32 %7595, 64
  %7617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7616, i32 undef)  ; BufferLoad(srv,index,wot)
  %7618 = extractvalue %dx.types.ResRet.f32 %7617, 0
  %7619 = extractvalue %dx.types.ResRet.f32 %7617, 1
  %7620 = extractvalue %dx.types.ResRet.f32 %7617, 2
  %7621 = extractvalue %dx.types.ResRet.f32 %7617, 3
  %7622 = add nuw nsw i32 %7595, 80
  %7623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7622, i32 undef)  ; BufferLoad(srv,index,wot)
  %7624 = extractvalue %dx.types.ResRet.f32 %7623, 0
  %7625 = extractvalue %dx.types.ResRet.f32 %7623, 1
  %7626 = extractvalue %dx.types.ResRet.f32 %7623, 2
  %7627 = extractvalue %dx.types.ResRet.f32 %7623, 3
  %7628 = add nuw nsw i32 %7595, 96
  %7629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7628, i32 undef)  ; BufferLoad(srv,index,wot)
  %7630 = extractvalue %dx.types.ResRet.f32 %7629, 0
  %7631 = extractvalue %dx.types.ResRet.f32 %7629, 1
  %7632 = extractvalue %dx.types.ResRet.f32 %7629, 2
  %7633 = extractvalue %dx.types.ResRet.f32 %7629, 3
  %7634 = bitcast float %7604 to i32
  %7635 = fmul fast float %7609, %107
  %7636 = fmul fast float %7609, %108
  %7637 = fmul fast float %7609, %109
  %7638 = fadd fast float %7635, %155
  %7639 = fadd fast float %7636, %156
  %7640 = fadd fast float %7637, %157
  %7641 = fmul fast float %7638, %7612
  %7642 = call float @dx.op.tertiary.f32(i32 46, float %7639, float %7618, float %7641)  ; FMad(a,b,c)
  %7643 = call float @dx.op.tertiary.f32(i32 46, float %7640, float %7624, float %7642)  ; FMad(a,b,c)
  %7644 = fadd fast float %7643, %7630
  %7645 = fmul fast float %7638, %7613
  %7646 = call float @dx.op.tertiary.f32(i32 46, float %7639, float %7619, float %7645)  ; FMad(a,b,c)
  %7647 = call float @dx.op.tertiary.f32(i32 46, float %7640, float %7625, float %7646)  ; FMad(a,b,c)
  %7648 = fadd fast float %7647, %7631
  %7649 = fmul fast float %7638, %7614
  %7650 = call float @dx.op.tertiary.f32(i32 46, float %7639, float %7620, float %7649)  ; FMad(a,b,c)
  %7651 = call float @dx.op.tertiary.f32(i32 46, float %7640, float %7626, float %7650)  ; FMad(a,b,c)
  %7652 = fadd fast float %7651, %7632
  %7653 = fmul fast float %7638, %7615
  %7654 = call float @dx.op.tertiary.f32(i32 46, float %7639, float %7621, float %7653)  ; FMad(a,b,c)
  %7655 = call float @dx.op.tertiary.f32(i32 46, float %7640, float %7627, float %7654)  ; FMad(a,b,c)
  %7656 = fadd fast float %7655, %7633
  %7657 = fdiv fast float %7644, %7656
  %7658 = fdiv fast float %7648, %7656
  %7659 = fdiv fast float %7652, %7656
  %7660 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7659)  ; FMax(a,b)
  %7661 = fmul fast float %228, 0x401921FB60000000
  %7662 = call float @dx.op.unary.f32(i32 13, float %7661)  ; Sin(value)
  %7663 = call float @dx.op.unary.f32(i32 12, float %7661)  ; Cos(value)
  %7664 = fsub fast float -0.000000e+00, %7662
  %7665 = fmul fast float %7599, 5.000000e-01
  %7666 = call float @dx.op.dot2.f32(i32 54, float %228, float %228, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7667 = call float @dx.op.unary.f32(i32 22, float %7666)  ; Frc(value)
  %7668 = fmul fast float %7667, 0x404A7DD040000000
  %7669 = call float @dx.op.unary.f32(i32 22, float %7668)  ; Frc(value)
  %7670 = fmul fast float %7669, %7608
  %7671 = fadd fast float %7670, %7665
  %7672 = call float @dx.op.tertiary.f32(i32 46, float %7671, float %7664, float 0.000000e+00)  ; FMad(a,b,c)
  %7673 = call float @dx.op.tertiary.f32(i32 46, float %7671, float %7663, float 0.000000e+00)  ; FMad(a,b,c)
  %7674 = fadd fast float %7672, %7657
  %7675 = fadd fast float %7673, %7658
  %7676 = fmul fast float %7674, %7603
  %7677 = fmul fast float %7675, %7603
  %7678 = call float @dx.op.binary.f32(i32 35, float %7676, float %7599)  ; FMax(a,b)
  %7679 = call float @dx.op.binary.f32(i32 35, float %7677, float %7599)  ; FMax(a,b)
  %7680 = call float @dx.op.binary.f32(i32 36, float %7678, float %7600)  ; FMin(a,b)
  %7681 = call float @dx.op.binary.f32(i32 36, float %7679, float %7600)  ; FMin(a,b)
  %7682 = fadd fast float %7680, %7597
  %7683 = fadd fast float %7681, %7598
  %7684 = uitofp i32 %7634 to float
  %7685 = fadd fast float %7660, %7607
  %7686 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %7682, float %7683, float %7684, float undef, i32 0, i32 0, i32 undef, float %7685)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7687 = extractvalue %dx.types.ResRet.f32 %7686, 0
  %7688 = fadd fast float %7687, -1.000000e+00
  %7689 = fmul fast float %7688, %7568
  %7690 = fadd fast float %7689, 1.000000e+00
  %7691 = fmul fast float %7690, %7580
  br label %7692

; <label>:7692                                    ; preds = %7594, %7592
  %7693 = phi float [ %7691, %7594 ], [ %7580, %7592 ]
  %7694 = call float @dx.op.binary.f32(i32 36, float %7693, float %7693)  ; FMin(a,b)
  %7695 = call float @dx.op.binary.f32(i32 36, float %7693, float %7694)  ; FMin(a,b)
  %7696 = fcmp fast ogt float %7695, 0.000000e+00
  br i1 %7696, label %7697, label %7584, !dx.controlflow.hints !119

; <label>:7697                                    ; preds = %7692
  %7698 = fmul fast float %7693, %7501
  %7699 = fmul fast float %7693, %7502
  %7700 = fmul fast float %7693, %7503
  %7701 = fsub fast float %7485, %5511
  %7702 = fcmp fast ogt float %7701, 0.000000e+00
  %7703 = fsub fast float %157, %5511
  %7704 = fcmp fast ogt float %7703, 0.000000e+00
  %7705 = xor i1 %7704, %7702
  %7706 = fsub fast float %5511, %7485
  %7707 = fmul fast float %7706, 2.000000e+00
  %7708 = fadd fast float %7707, %7485
  %7709 = select i1 %7705, float %7485, float %7708
  %7710 = fsub fast float %7709, %157
  %7711 = call float @dx.op.dot3.f32(i32 55, float %7512, float %7513, float %7710, float %7512, float %7513, float %7710)  ; Dot3(ax,ay,az,bx,by,bz)
  %7712 = call float @dx.op.unary.f32(i32 25, float %7711)  ; Rsqrt(value)
  %7713 = fmul fast float %7712, %7512
  %7714 = fmul fast float %7712, %7513
  %7715 = fmul fast float %7712, %7710
  %7716 = fsub fast float %5511, %157
  %7717 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7716)  ; Dot3(ax,ay,az,bx,by,bz)
  %7718 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7713, float %7714, float %7715)  ; Dot3(ax,ay,az,bx,by,bz)
  %7719 = fdiv fast float 1.000000e+00, %7718
  %7720 = fmul fast float %7719, %7717
  %7721 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7703, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7722 = fcmp fast ogt float %7721, 0.000000e+00
  %7723 = fcmp fast olt float %7721, 0.000000e+00
  %7724 = zext i1 %7722 to i32
  %7725 = zext i1 %7723 to i32
  %7726 = sub nsw i32 %7724, %7725
  %7727 = sitofp i32 %7726 to float
  %7728 = fsub fast float %7709, %5511
  %7729 = call float @dx.op.dot3.f32(i32 55, float %7512, float %7513, float %7728, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7730 = fcmp fast ogt float %7729, 0.000000e+00
  %7731 = fcmp fast olt float %7729, 0.000000e+00
  %7732 = zext i1 %7730 to i32
  %7733 = zext i1 %7731 to i32
  %7734 = sub nsw i32 %7732, %7733
  %7735 = sitofp i32 %7734 to float
  %7736 = fcmp fast une float %7727, %7735
  br i1 %7736, label %7737, label %7747

; <label>:7737                                    ; preds = %7697
  %7738 = fmul fast float %7720, %7715
  %7739 = fmul fast float %7720, %7714
  %7740 = fmul fast float %7720, %7713
  %7741 = fmul fast float %7740, %7740
  %7742 = fmul fast float %7739, %7739
  %7743 = fadd fast float %7741, %7742
  %7744 = fmul fast float %7738, %7738
  %7745 = fadd fast float %7743, %7744
  %7746 = call float @dx.op.unary.f32(i32 24, float %7745)  ; Sqrt(value)
  br label %7759

; <label>:7747                                    ; preds = %7697
  %7748 = icmp slt i32 %7726, 0
  br i1 %7748, label %7749, label %7759

; <label>:7749                                    ; preds = %7747
  %7750 = fsub fast float %155, %7483
  %7751 = fsub fast float %156, %7484
  %7752 = fsub fast float %157, %7709
  %7753 = fmul fast float %7750, %7750
  %7754 = fmul fast float %7751, %7751
  %7755 = fadd fast float %7753, %7754
  %7756 = fmul fast float %7752, %7752
  %7757 = fadd fast float %7755, %7756
  %7758 = call float @dx.op.unary.f32(i32 24, float %7757)  ; Sqrt(value)
  br label %7759

; <label>:7759                                    ; preds = %7749, %7747, %7737
  %7760 = phi float [ %7746, %7737 ], [ %7758, %7749 ], [ 0.000000e+00, %7747 ]
  %7761 = and i1 %7704, %7702
  %7762 = fsub fast float -0.000000e+00, %7760
  %7763 = select i1 %7761, float -0.000000e+00, float %7762
  %7764 = fmul fast float %5512, 0x3FF7154760000000
  %7765 = fmul fast float %7764, %7763
  %7766 = fmul fast float %5513, 0x3FF7154760000000
  %7767 = fmul fast float %7766, %7763
  %7768 = fmul fast float %5514, 0x3FF7154760000000
  %7769 = fmul fast float %7768, %7763
  %7770 = call float @dx.op.unary.f32(i32 21, float %7765)  ; Exp(value)
  %7771 = call float @dx.op.unary.f32(i32 21, float %7767)  ; Exp(value)
  %7772 = call float @dx.op.unary.f32(i32 21, float %7769)  ; Exp(value)
  %7773 = call float @dx.op.unary.f32(i32 7, float %7770)  ; Saturate(value)
  %7774 = call float @dx.op.unary.f32(i32 7, float %7771)  ; Saturate(value)
  %7775 = call float @dx.op.unary.f32(i32 7, float %7772)  ; Saturate(value)
  %7776 = fmul fast float %7698, %7773
  %7777 = fmul fast float %7699, %7774
  %7778 = fmul fast float %7700, %7775
  %7779 = fsub fast float %7518, %5711
  %7780 = fsub fast float %7519, %5710
  %7781 = fsub fast float %7520, %5709
  %7782 = call float @dx.op.dot3.f32(i32 55, float %7779, float %7780, float %7781, float %7779, float %7780, float %7781)  ; Dot3(ax,ay,az,bx,by,bz)
  %7783 = call float @dx.op.unary.f32(i32 25, float %7782)  ; Rsqrt(value)
  %7784 = fmul fast float %7783, %7779
  %7785 = fmul fast float %7783, %7780
  %7786 = fmul fast float %7783, %7781
  %7787 = call float @dx.op.dot3.f32(i32 55, float %7518, float %7519, float %7520, float %5712, float %5713, float %5714)  ; Dot3(ax,ay,az,bx,by,bz)
  %7788 = call float @dx.op.dot3.f32(i32 55, float %5708, float %5707, float %5706, float %7784, float %7785, float %7786)  ; Dot3(ax,ay,az,bx,by,bz)
  %7789 = call float @dx.op.unary.f32(i32 7, float %7787)  ; Saturate(value)
  %7790 = fmul fast float %7789, %7525
  %7791 = fmul fast float %7789, %7789
  %7792 = fmul fast float %7791, %5739
  %7793 = call float @dx.op.unary.f32(i32 7, float %7792)  ; Saturate(value)
  %7794 = fmul fast float %7790, %7793
  %7795 = bitcast float %7515 to i32
  %7796 = ashr i32 %7795, 1
  %7797 = sub nsw i32 1597463007, %7796
  %7798 = bitcast i32 %7797 to float
  %7799 = fmul fast float %7798, %7512
  %7800 = fmul fast float %7798, %7513
  %7801 = fmul fast float %7798, %7514
  %7802 = fsub fast float %7799, %5711
  %7803 = fsub fast float %7800, %5710
  %7804 = fsub fast float %7801, %5709
  %7805 = call float @dx.op.dot3.f32(i32 55, float %7802, float %7803, float %7804, float %7802, float %7803, float %7804)  ; Dot3(ax,ay,az,bx,by,bz)
  %7806 = call float @dx.op.unary.f32(i32 25, float %7805)  ; Rsqrt(value)
  %7807 = fmul fast float %7802, %7806
  %7808 = fmul fast float %7803, %7806
  %7809 = fmul fast float %7804, %7806
  %7810 = call float @dx.op.dot3.f32(i32 55, float %5712, float %5713, float %5714, float %7807, float %7808, float %7809)  ; Dot3(ax,ay,az,bx,by,bz)
  %7811 = fmul fast float %7810, %7810
  %7812 = call float @dx.op.unary.f32(i32 6, float %7787)  ; FAbs(value)
  %7813 = call float @dx.op.binary.f32(i32 35, float %6122, float 0x3F847AE140000000)  ; FMax(a,b)
  %7814 = fmul fast float %7813, %7813
  %7815 = fmul fast float %7814, %7814
  %7816 = fsub fast float 1.000000e+00, %7815
  %7817 = fmul fast float %5726, %5726
  %7818 = fmul fast float %7817, %7816
  %7819 = fadd fast float %7818, %7815
  %7820 = bitcast float %7819 to i32
  %7821 = ashr i32 %7820, 1
  %7822 = add nsw i32 %7821, 532487669
  %7823 = bitcast i32 %7822 to float
  %7824 = fadd fast float %7823, %5726
  %7825 = fmul fast float %7815, %7811
  %7826 = fsub fast float 1.000000e+00, %7811
  %7827 = fadd fast float %7826, %7825
  %7828 = fmul fast float %7812, %7812
  %7829 = fmul fast float %7828, %7816
  %7830 = fadd fast float %7829, %7815
  %7831 = bitcast float %7830 to i32
  %7832 = ashr i32 %7831, 1
  %7833 = add nsw i32 %7832, 532487669
  %7834 = bitcast i32 %7833 to float
  %7835 = fadd fast float %7834, %7812
  %7836 = fmul fast float %7827, %7827
  %7837 = fmul fast float %7836, %7824
  %7838 = fmul fast float %7837, %7835
  %7839 = fdiv fast float 1.000000e+00, %7838
  %7840 = bitcast float %7815 to i32
  %7841 = sitofp i32 %7840 to float
  %7842 = fmul fast float %7841, 0x3FE7F73180000000
  %7843 = fadd fast float %7842, 0x41AFE27C40000000
  %7844 = fptosi float %7843 to i32
  %7845 = bitcast i32 %7844 to float
  %7846 = fmul fast float %7480, 0x3FD80E9D60000000
  %7847 = fmul fast float %7846, %7798
  %7848 = fadd fast float %7845, %7847
  %7849 = bitcast float %7848 to i32
  %7850 = sub nsw i32 2129859010, %7849
  %7851 = bitcast i32 %7850 to float
  %7852 = fmul fast float %7815, %7839
  %7853 = fmul fast float %7852, %7845
  %7854 = fmul fast float %7853, %7851
  %7855 = fmul fast float %5984, 0x3FF9999980000000
  %7856 = fsub fast float 5.000000e+00, %7855
  %7857 = call float @dx.op.unary.f32(i32 6, float %7788)  ; FAbs(value)
  %7858 = fsub fast float 1.000000e+00, %7857
  %7859 = fmul fast float %5984, 0x41D9660740000000
  %7860 = fadd fast float %7859, 0xC1EFBF8940000000
  %7861 = bitcast float %7858 to i32
  %7862 = sitofp i32 %7861 to float
  %7863 = fmul fast float %7862, %7856
  %7864 = fadd fast float %7860, %7863
  %7865 = fptosi float %7864 to i32
  %7866 = bitcast i32 %7865 to float
  %7867 = fsub fast float 1.000000e+00, %5718
  %7868 = fsub fast float 1.000000e+00, %5719
  %7869 = fsub fast float 1.000000e+00, %5724
  %7870 = fmul fast float %7866, %7867
  %7871 = fmul fast float %7866, %7868
  %7872 = fmul fast float %7866, %7869
  %7873 = fadd fast float %7870, %5718
  %7874 = fadd fast float %7871, %5719
  %7875 = fadd fast float %7872, %5724
  br i1 %6007, label %7876, label %7899

; <label>:7876                                    ; preds = %7759
  %7877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5081, float %7857, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7878 = extractvalue %dx.types.ResRet.f32 %7877, 0
  %7879 = extractvalue %dx.types.ResRet.f32 %7877, 1
  %7880 = extractvalue %dx.types.ResRet.f32 %7877, 2
  %7881 = fadd fast float %7878, -5.000000e-01
  %7882 = fadd fast float %7879, -5.000000e-01
  %7883 = fadd fast float %7880, -5.000000e-01
  %7884 = fmul fast float %5718, 4.000000e+00
  %7885 = fmul fast float %7884, %7867
  %7886 = fmul fast float %7885, %7881
  %7887 = fmul fast float %5719, 4.000000e+00
  %7888 = fmul fast float %7887, %7868
  %7889 = fmul fast float %7888, %7882
  %7890 = fmul fast float %5724, 4.000000e+00
  %7891 = fmul fast float %7890, %7869
  %7892 = fmul fast float %7891, %7883
  %7893 = fadd fast float %7886, %7873
  %7894 = fadd fast float %7889, %7874
  %7895 = fadd fast float %7892, %7875
  %7896 = call float @dx.op.unary.f32(i32 7, float %7893)  ; Saturate(value)
  %7897 = call float @dx.op.unary.f32(i32 7, float %7894)  ; Saturate(value)
  %7898 = call float @dx.op.unary.f32(i32 7, float %7895)  ; Saturate(value)
  br label %7899

; <label>:7899                                    ; preds = %7876, %7759
  %7900 = phi float [ %7896, %7876 ], [ %7873, %7759 ]
  %7901 = phi float [ %7897, %7876 ], [ %7874, %7759 ]
  %7902 = phi float [ %7898, %7876 ], [ %7875, %7759 ]
  %7903 = fmul fast float %7787, 9.843750e-01
  %7904 = fadd fast float %7903, 7.812500e-03
  %7905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7904, float %5988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7906 = extractvalue %dx.types.ResRet.f32 %7905, 0
  %7907 = extractvalue %dx.types.ResRet.f32 %7905, 1
  %7908 = extractvalue %dx.types.ResRet.f32 %7905, 2
  %7909 = extractvalue %dx.types.ResRet.f32 %7905, 3
  %7910 = fsub fast float %7908, %7906
  %7911 = fsub fast float %7909, %7907
  %7912 = fmul fast float %7910, %5994
  %7913 = fmul fast float %7911, %5994
  %7914 = fadd fast float %7912, %7906
  %7915 = fadd fast float %7913, %7907
  %7916 = fmul fast float %7914, %5718
  %7917 = fmul fast float %7914, %5719
  %7918 = fmul fast float %7914, %5724
  %7919 = fadd fast float %7916, %7915
  %7920 = fadd fast float %7917, %7915
  %7921 = fadd fast float %7918, %7915
  br i1 %6007, label %7922, label %7945

; <label>:7922                                    ; preds = %7899
  %7923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5081, float %7787, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7924 = extractvalue %dx.types.ResRet.f32 %7923, 0
  %7925 = extractvalue %dx.types.ResRet.f32 %7923, 1
  %7926 = extractvalue %dx.types.ResRet.f32 %7923, 2
  %7927 = fadd fast float %7924, -5.000000e-01
  %7928 = fadd fast float %7925, -5.000000e-01
  %7929 = fadd fast float %7926, -5.000000e-01
  %7930 = fmul fast float %5718, 4.000000e+00
  %7931 = fmul fast float %7930, %7867
  %7932 = fmul fast float %7931, %7927
  %7933 = fmul fast float %5719, 4.000000e+00
  %7934 = fmul fast float %7933, %7868
  %7935 = fmul fast float %7934, %7928
  %7936 = fmul fast float %5724, 4.000000e+00
  %7937 = fmul fast float %7936, %7869
  %7938 = fmul fast float %7937, %7929
  %7939 = fadd fast float %7932, %7919
  %7940 = fadd fast float %7935, %7920
  %7941 = fadd fast float %7938, %7921
  %7942 = call float @dx.op.unary.f32(i32 7, float %7939)  ; Saturate(value)
  %7943 = call float @dx.op.unary.f32(i32 7, float %7940)  ; Saturate(value)
  %7944 = call float @dx.op.unary.f32(i32 7, float %7941)  ; Saturate(value)
  br label %7945

; <label>:7945                                    ; preds = %7922, %7899
  %7946 = phi float [ %7942, %7922 ], [ %7919, %7899 ]
  %7947 = phi float [ %7943, %7922 ], [ %7920, %7899 ]
  %7948 = phi float [ %7944, %7922 ], [ %7921, %7899 ]
  %7949 = call float @dx.op.binary.f32(i32 35, float %7947, float %7948)  ; FMax(a,b)
  %7950 = call float @dx.op.binary.f32(i32 35, float %7946, float %7949)  ; FMax(a,b)
  %7951 = fsub fast float 1.000000e+00, %7950
  %7952 = call float @dx.op.binary.f32(i32 35, float %7812, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7953 = fdiv fast float %4418, %7952
  %7954 = fmul fast float %6062, %7953
  %7955 = fmul fast float %6064, %7953
  %7956 = fmul fast float %6066, %7953
  %7957 = call float @dx.op.unary.f32(i32 21, float %7954)  ; Exp(value)
  %7958 = call float @dx.op.unary.f32(i32 21, float %7955)  ; Exp(value)
  %7959 = call float @dx.op.unary.f32(i32 21, float %7956)  ; Exp(value)
  %7960 = call float @dx.op.unary.f32(i32 7, float %7957)  ; Saturate(value)
  %7961 = call float @dx.op.unary.f32(i32 7, float %7958)  ; Saturate(value)
  %7962 = call float @dx.op.unary.f32(i32 7, float %7959)  ; Saturate(value)
  %7963 = select i1 %6059, float %7960, float 0.000000e+00
  %7964 = select i1 %6060, float %7961, float 0.000000e+00
  %7965 = select i1 %6061, float %7962, float 0.000000e+00
  %7966 = fsub fast float -0.000000e+00, %5712
  %7967 = fsub fast float -0.000000e+00, %5713
  %7968 = fsub fast float -0.000000e+00, %5714
  %7969 = call float @dx.op.dot3.f32(i32 55, float %7518, float %7519, float %7520, float %7966, float %7967, float %7968)  ; Dot3(ax,ay,az,bx,by,bz)
  %7970 = call float @dx.op.unary.f32(i32 7, float %7969)  ; Saturate(value)
  %7971 = fmul fast float %7970, %7525
  %7972 = fmul fast float %7970, 9.843750e-01
  %7973 = fadd fast float %7972, 7.812500e-03
  %7974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7973, float %5988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7975 = extractvalue %dx.types.ResRet.f32 %7974, 0
  %7976 = extractvalue %dx.types.ResRet.f32 %7974, 1
  %7977 = extractvalue %dx.types.ResRet.f32 %7974, 2
  %7978 = extractvalue %dx.types.ResRet.f32 %7974, 3
  %7979 = fsub fast float %7977, %7975
  %7980 = fsub fast float %7978, %7976
  %7981 = fmul fast float %7979, %5994
  %7982 = fmul fast float %7980, %5994
  %7983 = fadd fast float %7981, %7975
  %7984 = fadd fast float %7982, %7976
  %7985 = fmul fast float %7983, %5718
  %7986 = fmul fast float %7983, %5719
  %7987 = fmul fast float %7983, %5724
  %7988 = fadd fast float %7985, %7984
  %7989 = fadd fast float %7986, %7984
  %7990 = fadd fast float %7987, %7984
  br i1 %6007, label %7991, label %8014

; <label>:7991                                    ; preds = %7945
  %7992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5081, float %7970, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7993 = extractvalue %dx.types.ResRet.f32 %7992, 0
  %7994 = extractvalue %dx.types.ResRet.f32 %7992, 1
  %7995 = extractvalue %dx.types.ResRet.f32 %7992, 2
  %7996 = fadd fast float %7993, -5.000000e-01
  %7997 = fadd fast float %7994, -5.000000e-01
  %7998 = fadd fast float %7995, -5.000000e-01
  %7999 = fmul fast float %5718, 4.000000e+00
  %8000 = fmul fast float %7999, %7867
  %8001 = fmul fast float %8000, %7996
  %8002 = fmul fast float %5719, 4.000000e+00
  %8003 = fmul fast float %8002, %7868
  %8004 = fmul fast float %8003, %7997
  %8005 = fmul fast float %5724, 4.000000e+00
  %8006 = fmul fast float %8005, %7869
  %8007 = fmul fast float %8006, %7998
  %8008 = fadd fast float %8001, %7988
  %8009 = fadd fast float %8004, %7989
  %8010 = fadd fast float %8007, %7990
  %8011 = call float @dx.op.unary.f32(i32 7, float %8008)  ; Saturate(value)
  %8012 = call float @dx.op.unary.f32(i32 7, float %8009)  ; Saturate(value)
  %8013 = call float @dx.op.unary.f32(i32 7, float %8010)  ; Saturate(value)
  br label %8014

; <label>:8014                                    ; preds = %7991, %7945
  %8015 = phi float [ %8011, %7991 ], [ %7988, %7945 ]
  %8016 = phi float [ %8012, %7991 ], [ %7989, %7945 ]
  %8017 = phi float [ %8013, %7991 ], [ %7990, %7945 ]
  %8018 = call float @dx.op.binary.f32(i32 35, float %8016, float %8017)  ; FMax(a,b)
  %8019 = call float @dx.op.binary.f32(i32 35, float %8015, float %8018)  ; FMax(a,b)
  %8020 = fsub fast float 1.000000e+00, %8019
  %8021 = fmul fast float %6122, %6127
  %8022 = fadd fast float %6129, %8021
  %8023 = call float @dx.op.unary.f32(i32 7, float %8022)  ; Saturate(value)
  %8024 = fsub fast float %7799, %5732
  %8025 = fsub fast float %7800, %5733
  %8026 = fsub fast float %7801, %5734
  %8027 = call float @dx.op.dot3.f32(i32 55, float %8024, float %8025, float %8026, float %8024, float %8025, float %8026)  ; Dot3(ax,ay,az,bx,by,bz)
  %8028 = call float @dx.op.unary.f32(i32 25, float %8027)  ; Rsqrt(value)
  %8029 = fmul fast float %8024, %8028
  %8030 = fmul fast float %8025, %8028
  %8031 = fmul fast float %8026, %8028
  %8032 = call float @dx.op.dot3.f32(i32 55, float %7966, float %7967, float %7968, float %8029, float %8030, float %8031)  ; Dot3(ax,ay,az,bx,by,bz)
  %8033 = fmul fast float %8032, %8032
  %8034 = call float @dx.op.unary.f32(i32 6, float %7970)  ; FAbs(value)
  %8035 = call float @dx.op.binary.f32(i32 35, float %8023, float 0x3F847AE140000000)  ; FMax(a,b)
  %8036 = fmul fast float %8035, %8035
  %8037 = fmul fast float %8036, %8036
  %8038 = fsub fast float 1.000000e+00, %8037
  %8039 = fmul fast float %7817, %8038
  %8040 = fadd fast float %8039, %8037
  %8041 = bitcast float %8040 to i32
  %8042 = ashr i32 %8041, 1
  %8043 = add nsw i32 %8042, 532487669
  %8044 = bitcast i32 %8043 to float
  %8045 = fadd fast float %8044, %5726
  %8046 = fmul fast float %8037, %8033
  %8047 = fsub fast float 1.000000e+00, %8033
  %8048 = fadd fast float %8047, %8046
  %8049 = fmul fast float %8034, %8034
  %8050 = fmul fast float %8049, %8038
  %8051 = fadd fast float %8050, %8037
  %8052 = bitcast float %8051 to i32
  %8053 = ashr i32 %8052, 1
  %8054 = add nsw i32 %8053, 532487669
  %8055 = bitcast i32 %8054 to float
  %8056 = fadd fast float %8055, %8034
  %8057 = fmul fast float %8048, %8048
  %8058 = fmul fast float %8057, %8045
  %8059 = fmul fast float %8058, %8056
  %8060 = fdiv fast float 1.000000e+00, %8059
  %8061 = bitcast float %8037 to i32
  %8062 = sitofp i32 %8061 to float
  %8063 = fmul fast float %8062, 0x3FE7F73180000000
  %8064 = fadd fast float %8063, 0x41AFE27C40000000
  %8065 = fptosi float %8064 to i32
  %8066 = bitcast i32 %8065 to float
  %8067 = fadd fast float %8066, %7847
  %8068 = bitcast float %8067 to i32
  %8069 = sub nsw i32 2129859010, %8068
  %8070 = bitcast i32 %8069 to float
  %8071 = fmul fast float %8037, %8060
  %8072 = fmul fast float %8071, %8066
  %8073 = fmul fast float %8072, %8070
  br i1 %7510, label %8074, label %8084

; <label>:8074                                    ; preds = %8014
  %8075 = fmul fast float %7971, %7963
  %8076 = fmul fast float %7971, %7964
  %8077 = fmul fast float %7971, %7965
  %8078 = fmul fast float %8075, %8020
  %8079 = fmul fast float %8078, %8073
  %8080 = fmul fast float %8076, %8020
  %8081 = fmul fast float %8080, %8073
  %8082 = fmul fast float %8077, %8020
  %8083 = fmul fast float %8082, %8073
  br label %8084

; <label>:8084                                    ; preds = %8074, %8014
  %8085 = phi float [ %8079, %8074 ], [ 0.000000e+00, %8014 ]
  %8086 = phi float [ %8081, %8074 ], [ 0.000000e+00, %8014 ]
  %8087 = phi float [ %8083, %8074 ], [ 0.000000e+00, %8014 ]
  %8088 = fmul fast float %7900, %7854
  %8089 = fmul fast float %7901, %7854
  %8090 = fmul fast float %7902, %7854
  %8091 = fsub fast float 1.000000e+00, %7788
  %8092 = bitcast float %8091 to i32
  %8093 = sitofp i32 %8092 to float
  %8094 = fmul fast float %8093, 5.000000e+00
  %8095 = fadd fast float %8094, 0xC1EFBF8940000000
  %8096 = fptosi float %8095 to i32
  %8097 = bitcast i32 %8096 to float
  %8098 = fmul fast float %8097, %5082
  %8099 = fmul fast float %7951, %8098
  %8100 = fmul fast float %8099, %6054
  %8101 = fmul fast float %8099, %6055
  %8102 = fmul fast float %8099, %6056
  %8103 = fadd fast float %8100, %8088
  %8104 = fadd fast float %8101, %8089
  %8105 = fadd fast float %8102, %8090
  %8106 = fmul fast float %8103, %7794
  %8107 = fmul fast float %8104, %7794
  %8108 = fmul fast float %8105, %7794
  %8109 = fadd fast float %8106, %8085
  %8110 = fadd fast float %8107, %8086
  %8111 = fadd fast float %8108, %8087
  %8112 = fmul fast float %7776, %5078
  %8113 = fmul fast float %8112, %7794
  %8114 = fmul fast float %8113, %7951
  %8115 = fmul fast float %7777, %5078
  %8116 = fmul fast float %8115, %7794
  %8117 = fmul fast float %8116, %7951
  %8118 = fmul fast float %7778, %5078
  %8119 = fmul fast float %8118, %7794
  %8120 = fmul fast float %8119, %7951
  %8121 = fadd fast float %8114, %7454
  %8122 = fadd fast float %8117, %7455
  %8123 = fadd fast float %8120, %7456
  %8124 = fmul fast float %8112, %8109
  %8125 = fmul fast float %8115, %8110
  %8126 = fmul fast float %8118, %8111
  %8127 = fadd fast float %8124, %7451
  %8128 = fadd fast float %8125, %7452
  %8129 = fadd fast float %8126, %7453
  br label %7584

; <label>:8130                                    ; preds = %7584
  br label %8131

; <label>:8131                                    ; preds = %8130, %7417
  %8132 = phi float [ %7419, %7417 ], [ %7585, %8130 ]
  %8133 = phi float [ %7420, %7417 ], [ %7586, %8130 ]
  %8134 = phi float [ %7421, %7417 ], [ %7587, %8130 ]
  %8135 = phi float [ %7422, %7417 ], [ %7588, %8130 ]
  %8136 = phi float [ %7423, %7417 ], [ %7589, %8130 ]
  %8137 = phi float [ %7424, %7417 ], [ %7590, %8130 ]
  %8138 = add i32 %7418, 1
  %8139 = icmp ugt i32 %8138, %7414
  br i1 %8139, label %8140, label %7417

; <label>:8140                                    ; preds = %8131
  br label %8141

; <label>:8141                                    ; preds = %8140, %7367, %7357
  %8142 = phi float [ %7358, %7357 ], [ %7358, %7367 ], [ %8132, %8140 ]
  %8143 = phi float [ %7359, %7357 ], [ %7359, %7367 ], [ %8133, %8140 ]
  %8144 = phi float [ %7360, %7357 ], [ %7360, %7367 ], [ %8134, %8140 ]
  %8145 = phi float [ %7361, %7357 ], [ %7361, %7367 ], [ %8135, %8140 ]
  %8146 = phi float [ %7362, %7357 ], [ %7362, %7367 ], [ %8136, %8140 ]
  %8147 = phi float [ %7363, %7357 ], [ %7363, %7367 ], [ %8137, %8140 ]
  %8148 = fmul fast float %6083, %5078
  %8149 = fmul fast float %6084, %5078
  %8150 = fmul fast float %6085, %5078
  %8151 = fadd fast float %8148, 1.000000e+00
  %8152 = fadd fast float %8149, 1.000000e+00
  %8153 = fadd fast float %8150, 1.000000e+00
  %8154 = call float @dx.op.dot3.f32(i32 55, float %8151, float %8152, float %8153, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8155 = fsub fast float 1.000000e+00, %8154
  %8156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8157 = extractvalue %dx.types.CBufRet.f32 %8156, 0
  %8158 = fmul fast float %8157, %6089
  %8159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8160 = extractvalue %dx.types.CBufRet.f32 %8159, 3
  %8161 = fsub fast float 1.000000e+00, %5085
  %8162 = call float @dx.op.unary.f32(i32 7, float %8161)  ; Saturate(value)
  %8163 = fadd fast float %8147, %5084
  %8164 = fmul fast float %8163, %5085
  %8165 = fmul fast float %8162, %8160
  %8166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8167 = extractvalue %dx.types.CBufRet.f32 %8166, 3
  %8168 = fmul fast float %8145, %5715
  %8169 = fmul fast float %8146, %5716
  %8170 = fmul fast float %8147, %5717
  %8171 = fcmp fast ogt float %91, %177
  %8172 = and i1 %8171, %5517
  %8173 = or i1 %5523, %8172
  %8174 = icmp eq i32 %5516, 2
  %8175 = fcmp fast ole float %91, %177
  %8176 = and i1 %8175, %8174
  %8177 = or i1 %8176, %8173
  br i1 %8172, label %8178, label %8435

; <label>:8178                                    ; preds = %8141
  %8179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8180 = extractvalue %dx.types.CBufRet.f32 %8179, 2
  %8181 = extractvalue %dx.types.CBufRet.f32 %8179, 3
  %8182 = fmul fast float %8180, %100
  %8183 = fmul fast float %8181, %101
  %8184 = call float @dx.op.unary.f32(i32 7, float %8182)  ; Saturate(value)
  %8185 = call float @dx.op.unary.f32(i32 7, float %8183)  ; Saturate(value)
  %8186 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8184, float %8185, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8187 = extractvalue %dx.types.ResRet.f32 %8186, 0
  %8188 = extractvalue %dx.types.ResRet.f32 %8186, 1
  %8189 = extractvalue %dx.types.ResRet.f32 %8186, 2
  %8190 = extractvalue %dx.types.ResRet.f32 %8186, 3
  %8191 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8184, float %8185, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8192 = extractvalue %dx.types.ResRet.f32 %8191, 0
  %8193 = extractvalue %dx.types.ResRet.f32 %8191, 1
  %8194 = extractvalue %dx.types.ResRet.f32 %8191, 2
  %8195 = extractvalue %dx.types.ResRet.f32 %8191, 3
  %8196 = call float @dx.op.binary.f32(i32 35, float %8188, float %8189)  ; FMax(a,b)
  %8197 = call float @dx.op.binary.f32(i32 35, float %8187, float %8196)  ; FMax(a,b)
  %8198 = call float @dx.op.binary.f32(i32 35, float %8197, float %8190)  ; FMax(a,b)
  %8199 = call float @dx.op.binary.f32(i32 36, float %8193, float %8194)  ; FMin(a,b)
  %8200 = call float @dx.op.binary.f32(i32 36, float %8192, float %8199)  ; FMin(a,b)
  %8201 = call float @dx.op.binary.f32(i32 36, float %8200, float %8195)  ; FMin(a,b)
  %8202 = fmul fast float %8198, 2.550000e+02
  %8203 = fadd fast float %8202, 0x3F70101020000000
  %8204 = fptoui float %8203 to i32
  %8205 = fmul fast float %8201, 2.550000e+02
  %8206 = fadd fast float %8205, 0x3F70101020000000
  %8207 = fptoui float %8206 to i32
  %8208 = icmp ult i32 %8204, %8207
  br i1 %8208, label %8209, label %8377

; <label>:8209                                    ; preds = %8178
  %8210 = fcmp fast ogt float %90, 9.843750e-01
  %8211 = fadd fast float %91, -4.000000e+00
  %8212 = select i1 %8210, float -4.000000e+00, float %8211
  %8213 = call float @dx.op.binary.f32(i32 35, float %8212, float 0.000000e+00)  ; FMax(a,b)
  %8214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8215 = extractvalue %dx.types.CBufRet.f32 %8214, 0
  %8216 = fadd fast float %8215, %8213
  %8217 = extractvalue %dx.types.CBufRet.f32 %8214, 2
  %8218 = fmul fast float %8216, %8217
  %8219 = call float @dx.op.unary.f32(i32 23, float %8218)  ; Log(value)
  %8220 = extractvalue %dx.types.CBufRet.f32 %8214, 3
  %8221 = fmul fast float %8220, %8219
  %8222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8223 = extractvalue %dx.types.CBufRet.f32 %8222, 2
  %8224 = fmul fast float %8221, %8223
  %8225 = call float @dx.op.unary.f32(i32 7, float %8224)  ; Saturate(value)
  %8226 = uitofp i32 %8204 to float
  %8227 = uitofp i32 %8207 to float
  %8228 = fadd fast float %8226, 5.000000e-01
  %8229 = fadd fast float %8227, 5.000000e-01
  %8230 = fmul fast float %8223, %8228
  %8231 = fmul fast float %8223, %8229
  %8232 = fadd fast float %8230, 0x3F0FFB4800000000
  %8233 = fadd fast float %8231, 0xBF0FFB4800000000
  %8234 = call float @dx.op.binary.f32(i32 35, float %8225, float %8232)  ; FMax(a,b)
  %8235 = call float @dx.op.binary.f32(i32 36, float %8234, float %8233)  ; FMin(a,b)
  %8236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8237 = extractvalue %dx.types.CBufRet.f32 %8236, 1
  %8238 = extractvalue %dx.types.CBufRet.f32 %8236, 2
  %8239 = extractvalue %dx.types.CBufRet.f32 %8236, 0
  %8240 = fmul fast float %8237, %8235
  %8241 = fadd fast float %8239, %8240
  %8242 = fadd fast float %8239, %8238
  %8243 = fsub fast float %8237, %8238
  %8244 = fadd fast float %8243, %8239
  %8245 = call float @dx.op.binary.f32(i32 35, float %8241, float %8242)  ; FMax(a,b)
  %8246 = call float @dx.op.binary.f32(i32 36, float %8245, float %8244)  ; FMin(a,b)
  %8247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8184, float %8185, float %8246, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8248 = extractvalue %dx.types.ResRet.f32 %8247, 0
  %8249 = extractvalue %dx.types.ResRet.f32 %8247, 1
  %8250 = extractvalue %dx.types.ResRet.f32 %8247, 2
  %8251 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8252 = extractvalue %dx.types.CBufRet.i32 %8251, 0
  %8253 = extractvalue %dx.types.CBufRet.i32 %8251, 1
  %8254 = uitofp i32 %8252 to float
  %8255 = uitofp i32 %8253 to float
  %8256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8257 = extractvalue %dx.types.CBufRet.f32 %8256, 0
  %8258 = extractvalue %dx.types.CBufRet.f32 %8256, 1
  %8259 = fmul fast float %8254, %8184
  %8260 = fmul fast float %8255, %8185
  %8261 = fadd fast float %8259, -5.000000e-01
  %8262 = fadd fast float %8260, -5.000000e-01
  %8263 = call float @dx.op.unary.f32(i32 22, float %8261)  ; Frc(value)
  %8264 = call float @dx.op.unary.f32(i32 22, float %8262)  ; Frc(value)
  %8265 = fmul fast float %8263, %8263
  %8266 = fmul fast float %8265, %8263
  %8267 = fsub fast float 3.000000e+00, %8263
  %8268 = fmul fast float %8265, %8267
  %8269 = fmul fast float %8263, 3.000000e+00
  %8270 = fmul fast float %8266, 3.000000e+00
  %8271 = fmul fast float %8265, 6.000000e+00
  %8272 = fsub fast float %8270, %8271
  %8273 = fadd fast float %8272, 4.000000e+00
  %8274 = fmul fast float %8273, 0x3FC5555560000000
  %8275 = fmul fast float %8266, -3.000000e+00
  %8276 = fadd fast float %8265, %8263
  %8277 = fmul fast float %8276, 3.000000e+00
  %8278 = fadd fast float %8275, 1.000000e+00
  %8279 = fadd fast float %8278, %8277
  %8280 = fmul fast float %8266, 0x3FC5555560000000
  %8281 = fmul fast float %8264, %8264
  %8282 = fmul fast float %8281, %8264
  %8283 = fsub fast float 3.000000e+00, %8264
  %8284 = fmul fast float %8281, %8283
  %8285 = fmul fast float %8264, 3.000000e+00
  %8286 = fmul fast float %8282, 3.000000e+00
  %8287 = fmul fast float %8281, 6.000000e+00
  %8288 = fsub fast float %8286, %8287
  %8289 = fadd fast float %8288, 4.000000e+00
  %8290 = fmul fast float %8289, 0x3FC5555560000000
  %8291 = fmul fast float %8282, -3.000000e+00
  %8292 = fadd fast float %8281, %8264
  %8293 = fmul fast float %8292, 3.000000e+00
  %8294 = fadd fast float %8291, 1.000000e+00
  %8295 = fadd fast float %8294, %8293
  %8296 = fmul fast float %8282, 0x3FC5555560000000
  %8297 = fadd fast float %8263, 1.000000e+00
  %8298 = fsub fast float 1.000000e+00, %8269
  %8299 = fadd fast float %8298, %8268
  %8300 = fadd fast float %8299, %8273
  %8301 = fmul fast float %8300, 0x3FC5555560000000
  %8302 = fdiv fast float %8274, %8301
  %8303 = fsub fast float %8297, %8302
  %8304 = fsub fast float 1.000000e+00, %8263
  %8305 = fadd fast float %8279, %8266
  %8306 = fmul fast float %8305, 0x3FC5555560000000
  %8307 = fdiv fast float %8280, %8306
  %8308 = fadd fast float %8304, %8307
  %8309 = fadd fast float %8264, 1.000000e+00
  %8310 = fsub fast float 1.000000e+00, %8285
  %8311 = fadd fast float %8310, %8284
  %8312 = fadd fast float %8311, %8289
  %8313 = fmul fast float %8312, 0x3FC5555560000000
  %8314 = fdiv fast float %8290, %8313
  %8315 = fsub fast float %8309, %8314
  %8316 = fsub fast float 1.000000e+00, %8264
  %8317 = fadd fast float %8295, %8282
  %8318 = fmul fast float %8317, 0x3FC5555560000000
  %8319 = fdiv fast float %8296, %8318
  %8320 = fadd fast float %8319, %8316
  %8321 = fmul fast float %8303, %8257
  %8322 = fsub fast float %8184, %8321
  %8323 = fmul fast float %8308, %8257
  %8324 = fadd fast float %8323, %8184
  %8325 = fmul fast float %8320, %8258
  %8326 = fadd fast float %8325, %8185
  %8327 = fmul fast float %8315, %8258
  %8328 = fsub fast float %8185, %8327
  %8329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8322, float %8328, float %8246, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8330 = extractvalue %dx.types.ResRet.f32 %8329, 0
  %8331 = extractvalue %dx.types.ResRet.f32 %8329, 1
  %8332 = extractvalue %dx.types.ResRet.f32 %8329, 2
  %8333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8324, float %8328, float %8246, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8334 = extractvalue %dx.types.ResRet.f32 %8333, 0
  %8335 = extractvalue %dx.types.ResRet.f32 %8333, 1
  %8336 = extractvalue %dx.types.ResRet.f32 %8333, 2
  %8337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8322, float %8326, float %8246, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8338 = extractvalue %dx.types.ResRet.f32 %8337, 0
  %8339 = extractvalue %dx.types.ResRet.f32 %8337, 1
  %8340 = extractvalue %dx.types.ResRet.f32 %8337, 2
  %8341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8324, float %8326, float %8246, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8342 = extractvalue %dx.types.ResRet.f32 %8341, 0
  %8343 = extractvalue %dx.types.ResRet.f32 %8341, 1
  %8344 = extractvalue %dx.types.ResRet.f32 %8341, 2
  %8345 = fsub fast float %8338, %8330
  %8346 = fsub fast float %8339, %8331
  %8347 = fsub fast float %8340, %8332
  %8348 = fmul fast float %8345, %8318
  %8349 = fmul fast float %8346, %8318
  %8350 = fmul fast float %8347, %8318
  %8351 = fadd fast float %8348, %8330
  %8352 = fadd fast float %8349, %8331
  %8353 = fadd fast float %8350, %8332
  %8354 = fsub fast float %8342, %8334
  %8355 = fsub fast float %8343, %8335
  %8356 = fsub fast float %8344, %8336
  %8357 = fmul fast float %8354, %8318
  %8358 = fmul fast float %8355, %8318
  %8359 = fmul fast float %8356, %8318
  %8360 = fsub fast float %8334, %8351
  %8361 = fadd fast float %8360, %8357
  %8362 = fsub fast float %8335, %8352
  %8363 = fadd fast float %8362, %8358
  %8364 = fsub fast float %8336, %8353
  %8365 = fadd fast float %8364, %8359
  %8366 = fmul fast float %8361, %8306
  %8367 = fmul fast float %8363, %8306
  %8368 = fmul fast float %8365, %8306
  %8369 = fadd fast float %8366, %8351
  %8370 = fadd fast float %8367, %8352
  %8371 = fadd fast float %8368, %8353
  %8372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8373 = extractvalue %dx.types.CBufRet.f32 %8372, 1
  %8374 = fmul fast float %8369, %8373
  %8375 = fmul fast float %8370, %8373
  %8376 = fmul fast float %8371, %8373
  br label %8377

; <label>:8377                                    ; preds = %8209, %8178
  %8378 = phi float [ %8248, %8209 ], [ 1.000000e+00, %8178 ]
  %8379 = phi float [ %8249, %8209 ], [ 1.000000e+00, %8178 ]
  %8380 = phi float [ %8250, %8209 ], [ 1.000000e+00, %8178 ]
  %8381 = phi float [ %8374, %8209 ], [ 0.000000e+00, %8178 ]
  %8382 = phi float [ %8375, %8209 ], [ 0.000000e+00, %8178 ]
  %8383 = phi float [ %8376, %8209 ], [ 0.000000e+00, %8178 ]
  %8384 = fmul fast float %8381, %8155
  %8385 = fmul fast float %8382, %8155
  %8386 = fmul fast float %8383, %8155
  %8387 = call float @dx.op.dot3.f32(i32 55, float %8378, float %8379, float %8380, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8388 = call float @dx.op.dot3.f32(i32 55, float %8384, float %8385, float %8386, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8389 = select i1 %217, float %8387, float %8378
  %8390 = select i1 %217, float %8387, float %8379
  %8391 = select i1 %217, float 1.000000e+00, float %8380
  %8392 = select i1 %217, float %8388, float %8384
  %8393 = select i1 %217, float 0.000000e+00, float %8385
  %8394 = select i1 %217, float 0.000000e+00, float %8386
  %8395 = fmul fast float %8389, %8168
  %8396 = fmul fast float %8390, %8169
  %8397 = fmul fast float %8391, %8170
  %8398 = fadd fast float %8395, %8392
  %8399 = fadd fast float %8396, %8393
  %8400 = fadd fast float %8394, %8397
  %8401 = fmul fast float %8389, %8142
  %8402 = fmul fast float %8390, %8143
  %8403 = fmul fast float %8391, %8144
  %8404 = fmul fast float %125, %8180
  %8405 = fmul fast float %127, %8181
  %8406 = fsub fast float 1.000000e+00, %8404
  %8407 = fsub fast float 1.000000e+00, %8405
  %8408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8409 = extractvalue %dx.types.CBufRet.f32 %8408, 0
  %8410 = extractvalue %dx.types.CBufRet.f32 %8408, 1
  %8411 = extractvalue %dx.types.CBufRet.f32 %8408, 2
  %8412 = fmul fast float %8406, %8409
  %8413 = fmul fast float %8406, %8410
  %8414 = fmul fast float %8406, %8411
  %8415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8416 = extractvalue %dx.types.CBufRet.f32 %8415, 0
  %8417 = extractvalue %dx.types.CBufRet.f32 %8415, 1
  %8418 = extractvalue %dx.types.CBufRet.f32 %8415, 2
  %8419 = fmul fast float %8407, %8416
  %8420 = fmul fast float %8407, %8417
  %8421 = fmul fast float %8407, %8418
  %8422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8423 = extractvalue %dx.types.CBufRet.f32 %8422, 0
  %8424 = extractvalue %dx.types.CBufRet.f32 %8422, 1
  %8425 = extractvalue %dx.types.CBufRet.f32 %8422, 2
  %8426 = fadd fast float %8419, %8423
  %8427 = fadd fast float %8426, %8412
  %8428 = fadd fast float %8420, %8424
  %8429 = fadd fast float %8428, %8413
  %8430 = fadd fast float %8421, %8425
  %8431 = fadd fast float %8430, %8414
  %8432 = fmul fast float %8427, %177
  %8433 = fmul fast float %8429, %177
  %8434 = fmul fast float %8431, %177
  br label %8435

; <label>:8435                                    ; preds = %8377, %8141
  %8436 = phi float [ %8432, %8377 ], [ %155, %8141 ]
  %8437 = phi float [ %8433, %8377 ], [ %156, %8141 ]
  %8438 = phi float [ %8434, %8377 ], [ %157, %8141 ]
  %8439 = phi float [ %177, %8377 ], [ %91, %8141 ]
  %8440 = phi float [ %8398, %8377 ], [ %8168, %8141 ]
  %8441 = phi float [ %8399, %8377 ], [ %8169, %8141 ]
  %8442 = phi float [ %8400, %8377 ], [ %8170, %8141 ]
  %8443 = phi float [ %8401, %8377 ], [ %8142, %8141 ]
  %8444 = phi float [ %8402, %8377 ], [ %8143, %8141 ]
  %8445 = phi float [ %8403, %8377 ], [ %8144, %8141 ]
  %8446 = phi float [ %8378, %8377 ], [ 1.000000e+00, %8141 ]
  br i1 %8177, label %9601, label %8447

; <label>:8447                                    ; preds = %8435
  %8448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8449 = extractvalue %dx.types.CBufRet.f32 %8448, 0
  %8450 = extractvalue %dx.types.CBufRet.f32 %8448, 1
  %8451 = extractvalue %dx.types.CBufRet.f32 %8448, 2
  %8452 = extractvalue %dx.types.CBufRet.f32 %8448, 3
  %8453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8454 = extractvalue %dx.types.CBufRet.f32 %8453, 0
  %8455 = extractvalue %dx.types.CBufRet.f32 %8453, 1
  %8456 = extractvalue %dx.types.CBufRet.f32 %8453, 2
  %8457 = extractvalue %dx.types.CBufRet.f32 %8453, 3
  %8458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8459 = extractvalue %dx.types.CBufRet.f32 %8458, 0
  %8460 = extractvalue %dx.types.CBufRet.f32 %8458, 1
  %8461 = extractvalue %dx.types.CBufRet.f32 %8458, 2
  %8462 = extractvalue %dx.types.CBufRet.f32 %8458, 3
  %8463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8464 = extractvalue %dx.types.CBufRet.f32 %8463, 0
  %8465 = extractvalue %dx.types.CBufRet.f32 %8463, 1
  %8466 = extractvalue %dx.types.CBufRet.f32 %8463, 2
  %8467 = extractvalue %dx.types.CBufRet.f32 %8463, 3
  %8468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8469 = extractvalue %dx.types.CBufRet.f32 %8468, 3
  %8470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8471 = extractvalue %dx.types.CBufRet.f32 %8470, 3
  %8472 = extractvalue %dx.types.CBufRet.f32 %8470, 0
  %8473 = extractvalue %dx.types.CBufRet.f32 %8470, 1
  %8474 = extractvalue %dx.types.CBufRet.f32 %8470, 2
  %8475 = fcmp fast olt float %8474, -5.000000e-01
  %8476 = call float @dx.op.dot3.f32(i32 55, float %8436, float %8437, float %8438, float %8436, float %8437, float %8438)  ; Dot3(ax,ay,az,bx,by,bz)
  %8477 = call float @dx.op.unary.f32(i32 25, float %8476)  ; Rsqrt(value)
  %8478 = fmul fast float %8477, %8476
  %8479 = fmul fast float %8477, %8436
  %8480 = fmul fast float %8477, %8437
  %8481 = fmul fast float %8477, %8438
  %8482 = fadd fast float %8478, %8452
  %8483 = call float @dx.op.dot3.f32(i32 55, float %8479, float %8480, float %8481, float %8449, float %8450, float %8451)  ; Dot3(ax,ay,az,bx,by,bz)
  %8484 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8485 = extractvalue %dx.types.CBufRet.i32 %8484, 1
  %8486 = and i32 %8485, 1
  %8487 = icmp ne i32 %8486, 0
  %8488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8489 = extractvalue %dx.types.CBufRet.f32 %8488, 2
  %8490 = fcmp fast ogt float %8489, 0.000000e+00
  %8491 = and i1 %8487, %8490
  br i1 %8491, label %8492, label %8898, !dx.controlflow.hints !120

; <label>:8492                                    ; preds = %8447
  %8493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8494 = extractvalue %dx.types.CBufRet.f32 %8493, 3
  %8495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8496 = extractvalue %dx.types.CBufRet.f32 %8495, 2
  %8497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8498 = extractvalue %dx.types.CBufRet.f32 %8497, 2
  %8499 = fsub fast float %8496, %8498
  %8500 = and i32 %8485, 2
  %8501 = extractvalue %dx.types.CBufRet.i32 %8484, 0
  %8502 = call i32 @dx.op.binary.i32(i32 40, i32 %8501, i32 3)  ; UMin(a,b)
  %8503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8504 = extractvalue %dx.types.CBufRet.f32 %8503, 0
  %8505 = extractvalue %dx.types.CBufRet.f32 %8503, 1
  %8506 = extractvalue %dx.types.CBufRet.f32 %8497, 0
  %8507 = extractvalue %dx.types.CBufRet.f32 %8497, 1
  %8508 = fsub fast float %8504, %8506
  %8509 = fsub fast float %8505, %8507
  %8510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8511 = extractvalue %dx.types.CBufRet.f32 %8510, 0
  %8512 = fcmp fast ogt float %8511, 0.000000e+00
  %8513 = fsub fast float -0.000000e+00, %8508
  %8514 = fsub fast float -0.000000e+00, %8509
  %8515 = call float @dx.op.dot2.f32(i32 54, float %8479, float %8480, float %8479, float %8480)  ; Dot2(ax,ay,bx,by)
  %8516 = call float @dx.op.dot2.f32(i32 54, float %8479, float %8480, float %8513, float %8514)  ; Dot2(ax,ay,bx,by)
  %8517 = fmul fast float %8516, 2.000000e+00
  %8518 = call float @dx.op.dot2.f32(i32 54, float %8513, float %8514, float %8513, float %8514)  ; Dot2(ax,ay,bx,by)
  %8519 = fmul fast float %8511, %8511
  %8520 = fsub fast float %8518, %8519
  %8521 = fmul fast float %8517, %8517
  %8522 = fmul fast float %8515, 4.000000e+00
  %8523 = fmul fast float %8522, %8520
  %8524 = fsub fast float %8521, %8523
  %8525 = fcmp fast ogt float %8524, 0.000000e+00
  br i1 %8525, label %8526, label %8541

; <label>:8526                                    ; preds = %8492
  %8527 = fcmp fast ogt float %8517, 0.000000e+00
  %8528 = call float @dx.op.unary.f32(i32 24, float %8524)  ; Sqrt(value)
  %8529 = fsub fast float -0.000000e+00, %8528
  %8530 = select i1 %8527, float %8528, float %8529
  %8531 = fadd fast float %8530, %8517
  %8532 = fmul float %8531, -5.000000e-01
  %8533 = fdiv fast float %8532, %8515
  %8534 = call float @dx.op.binary.f32(i32 35, float %8533, float 0.000000e+00)  ; FMax(a,b)
  %8535 = call float @dx.op.binary.f32(i32 36, float %8478, float %8534)  ; FMin(a,b)
  %8536 = fdiv fast float %8520, %8532
  %8537 = call float @dx.op.binary.f32(i32 35, float %8536, float 0.000000e+00)  ; FMax(a,b)
  %8538 = call float @dx.op.binary.f32(i32 36, float %8478, float %8537)  ; FMin(a,b)
  %8539 = call float @dx.op.binary.f32(i32 36, float %8535, float %8538)  ; FMin(a,b)
  %8540 = call float @dx.op.binary.f32(i32 35, float %8535, float %8538)  ; FMax(a,b)
  br label %8541

; <label>:8541                                    ; preds = %8526, %8492
  %8542 = phi float [ %8540, %8526 ], [ -1.000000e+00, %8492 ]
  %8543 = phi float [ %8539, %8526 ], [ -1.000000e+00, %8492 ]
  %8544 = phi i1 [ true, %8526 ], [ false, %8492 ]
  %8545 = and i1 %8512, %8544
  br i1 %8545, label %8546, label %8548

; <label>:8546                                    ; preds = %8541
  %8547 = fcmp fast oeq float %8543, %8542
  br i1 %8547, label %8851, label %8549

; <label>:8548                                    ; preds = %8541
  br i1 %8512, label %8851, label %8549

; <label>:8549                                    ; preds = %8548, %8546
  %8550 = phi float [ %8478, %8548 ], [ %8542, %8546 ]
  %8551 = phi float [ 0.000000e+00, %8548 ], [ %8543, %8546 ]
  %8552 = icmp ne i32 %8500, 0
  %8553 = fmul fast float %8550, %8481
  %8554 = fadd fast float %8553, %8494
  %8555 = fmul fast float %8554, %8550
  %8556 = select i1 %8552, float 0.000000e+00, float %8555
  %8557 = fcmp fast oeq float %8481, 0.000000e+00
  %8558 = fdiv fast float %8499, %8481
  %8559 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8558)  ; FMax(a,b)
  %8560 = select i1 %8557, float %8550, float %8559
  %8561 = call float @dx.op.binary.f32(i32 36, float %8550, float %8560)  ; FMin(a,b)
  %8562 = fcmp fast ogt float %8481, 0.000000e+00
  %8563 = fcmp fast olt float %8499, 0.000000e+00
  br i1 %8562, label %8564, label %8621

; <label>:8564                                    ; preds = %8549
  %8565 = icmp eq i32 %8500, 0
  br i1 %8563, label %8566, label %8610

; <label>:8566                                    ; preds = %8564
  %8567 = select i1 %8565, float %8550, float 0.000000e+00
  %8568 = fsub fast float -0.000000e+00, %8567
  %8569 = call float @dx.op.unary.f32(i32 6, float %8568)  ; FAbs(value)
  %8570 = fmul fast float %8567, %8481
  %8571 = fadd fast float %8570, %8494
  %8572 = fmul fast float %8569, %8571
  %8573 = fsub fast float %8556, %8572
  %8574 = fsub fast float %8550, %8569
  %8575 = select i1 %8565, float %8574, float 0.000000e+00
  %8576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8577 = extractvalue %dx.types.CBufRet.f32 %8576, 0
  %8578 = extractvalue %dx.types.CBufRet.f32 %8576, 1
  %8579 = extractvalue %dx.types.CBufRet.f32 %8576, 2
  %8580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8581 = extractvalue %dx.types.CBufRet.f32 %8580, 0
  %8582 = extractvalue %dx.types.CBufRet.f32 %8580, 1
  %8583 = extractvalue %dx.types.CBufRet.f32 %8580, 2
  %8584 = extractvalue %dx.types.CBufRet.f32 %8580, 3
  %8585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8586 = extractvalue %dx.types.CBufRet.f32 %8585, 3
  %8587 = call float @dx.op.binary.f32(i32 36, float %8573, float %8586)  ; FMin(a,b)
  %8588 = fmul fast float %8584, %8575
  %8589 = call float @dx.op.unary.f32(i32 7, float %8588)  ; Saturate(value)
  %8590 = fsub fast float %8581, %8577
  %8591 = fsub fast float %8582, %8578
  %8592 = fsub fast float %8583, %8579
  %8593 = fmul fast float %8589, %8590
  %8594 = fmul fast float %8589, %8591
  %8595 = fmul fast float %8589, %8592
  %8596 = fadd fast float %8593, %8577
  %8597 = fadd fast float %8594, %8578
  %8598 = fadd fast float %8595, %8579
  %8599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8600 = extractvalue %dx.types.CBufRet.f32 %8599, 0
  %8601 = extractvalue %dx.types.CBufRet.f32 %8599, 1
  %8602 = fadd fast float %8601, %8600
  %8603 = call float @dx.op.unary.f32(i32 7, float %8602)  ; Saturate(value)
  %8604 = extractvalue %dx.types.CBufRet.f32 %8599, 2
  %8605 = extractvalue %dx.types.CBufRet.f32 %8599, 3
  %8606 = fadd fast float %8605, %8604
  %8607 = call float @dx.op.unary.f32(i32 7, float %8606)  ; Saturate(value)
  %8608 = fmul fast float %8603, %8587
  %8609 = fmul fast float %8608, %8607
  br label %8851

; <label>:8610                                    ; preds = %8564
  br i1 %8565, label %8611, label %8632

; <label>:8611                                    ; preds = %8610
  %8612 = call float @dx.op.binary.f32(i32 36, float %8561, float %8551)  ; FMin(a,b)
  %8613 = fsub fast float %8561, %8612
  %8614 = fsub fast float %8613, %8550
  %8615 = call float @dx.op.unary.f32(i32 6, float %8614)  ; FAbs(value)
  %8616 = fadd fast float %8613, %8550
  %8617 = fmul fast float %8616, %8481
  %8618 = fadd fast float %8617, %8494
  %8619 = fmul fast float %8618, %8615
  %8620 = fsub fast float %8556, %8619
  br label %8632

; <label>:8621                                    ; preds = %8549
  br i1 %8563, label %8622, label %8632

; <label>:8622                                    ; preds = %8621
  %8623 = call float @dx.op.binary.f32(i32 35, float %8551, float %8561)  ; FMax(a,b)
  %8624 = icmp eq i32 %8500, 0
  %8625 = select i1 %8624, float %8561, float 0.000000e+00
  %8626 = fsub fast float -0.000000e+00, %8625
  %8627 = call float @dx.op.unary.f32(i32 6, float %8626)  ; FAbs(value)
  %8628 = fmul fast float %8625, %8481
  %8629 = fadd fast float %8628, %8494
  %8630 = fmul fast float %8627, %8629
  %8631 = fsub fast float %8556, %8630
  br label %8632

; <label>:8632                                    ; preds = %8622, %8621, %8611, %8610
  %8633 = phi float [ %8551, %8610 ], [ %8551, %8611 ], [ %8623, %8622 ], [ %8551, %8621 ]
  %8634 = phi float [ 0.000000e+00, %8610 ], [ %8615, %8611 ], [ %8627, %8622 ], [ 0.000000e+00, %8621 ]
  %8635 = phi float [ %8556, %8610 ], [ %8620, %8611 ], [ %8631, %8622 ], [ %8556, %8621 ]
  %8636 = phi float [ %8561, %8610 ], [ %8561, %8611 ], [ %8550, %8622 ], [ %8550, %8621 ]
  %8637 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %8637, align 4, !tbaa !121, !noalias !123
  %8638 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %8638, align 4, !tbaa !121, !noalias !123
  %8639 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %8639, align 4, !tbaa !121, !noalias !123
  %8640 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %8640, align 4, !tbaa !121, !noalias !123
  %8641 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %8641, align 4, !tbaa !121, !noalias !123
  %8642 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %8642, align 4, !tbaa !121, !noalias !123
  %8643 = icmp sgt i32 %8502, 0
  br i1 %8643, label %8644, label %8705

; <label>:8644                                    ; preds = %8632
  br label %8645

; <label>:8645                                    ; preds = %8694, %8644
  %8646 = phi i32 [ %8695, %8694 ], [ 0, %8644 ]
  %8647 = phi i32 [ %8696, %8694 ], [ 0, %8644 ]
  %8648 = add nuw i32 %8647, 171
  %8649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %8648)  ; CBufferLoadLegacy(handle,regIndex)
  %8650 = extractvalue %dx.types.CBufRet.f32 %8649, 0
  %8651 = extractvalue %dx.types.CBufRet.f32 %8649, 1
  %8652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8653 = extractvalue %dx.types.CBufRet.f32 %8652, 0
  %8654 = extractvalue %dx.types.CBufRet.f32 %8652, 1
  %8655 = fsub fast float %8650, %8653
  %8656 = fsub fast float %8651, %8654
  %8657 = extractvalue %dx.types.CBufRet.f32 %8649, 2
  %8658 = fsub fast float -0.000000e+00, %8655
  %8659 = fsub fast float -0.000000e+00, %8656
  %8660 = call float @dx.op.dot2.f32(i32 54, float %8479, float %8480, float %8658, float %8659)  ; Dot2(ax,ay,bx,by)
  %8661 = fmul fast float %8660, 2.000000e+00
  %8662 = call float @dx.op.dot2.f32(i32 54, float %8658, float %8659, float %8658, float %8659)  ; Dot2(ax,ay,bx,by)
  %8663 = fmul fast float %8657, %8657
  %8664 = fsub fast float %8662, %8663
  %8665 = fmul fast float %8661, %8661
  %8666 = fmul fast float %8522, %8664
  %8667 = fsub fast float %8665, %8666
  %8668 = fcmp fast ogt float %8667, 0.000000e+00
  br i1 %8668, label %8669, label %8684

; <label>:8669                                    ; preds = %8645
  %8670 = fcmp fast ogt float %8661, 0.000000e+00
  %8671 = call float @dx.op.unary.f32(i32 24, float %8667)  ; Sqrt(value)
  %8672 = fsub fast float -0.000000e+00, %8671
  %8673 = select i1 %8670, float %8671, float %8672
  %8674 = fadd fast float %8673, %8661
  %8675 = fmul float %8674, -5.000000e-01
  %8676 = fdiv fast float %8675, %8515
  %8677 = call float @dx.op.binary.f32(i32 35, float %8676, float 0.000000e+00)  ; FMax(a,b)
  %8678 = call float @dx.op.binary.f32(i32 36, float %8550, float %8677)  ; FMin(a,b)
  %8679 = fdiv fast float %8664, %8675
  %8680 = call float @dx.op.binary.f32(i32 35, float %8679, float 0.000000e+00)  ; FMax(a,b)
  %8681 = call float @dx.op.binary.f32(i32 36, float %8550, float %8680)  ; FMin(a,b)
  %8682 = call float @dx.op.binary.f32(i32 36, float %8678, float %8681)  ; FMin(a,b)
  %8683 = call float @dx.op.binary.f32(i32 35, float %8678, float %8681)  ; FMax(a,b)
  br label %8684

; <label>:8684                                    ; preds = %8669, %8645
  %8685 = phi float [ %8683, %8669 ], [ -1.000000e+00, %8645 ]
  %8686 = phi float [ %8682, %8669 ], [ -1.000000e+00, %8645 ]
  %8687 = phi i1 [ true, %8669 ], [ false, %8645 ]
  br i1 %8687, label %8688, label %8694

; <label>:8688                                    ; preds = %8684
  %8689 = call float @dx.op.binary.f32(i32 35, float %8633, float %8686)  ; FMax(a,b)
  %8690 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8647
  store float %8689, float* %8690, align 4, !tbaa !121, !noalias !123
  %8691 = call float @dx.op.binary.f32(i32 35, float %8633, float %8685)  ; FMax(a,b)
  %8692 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8647
  store float %8691, float* %8692, align 4, !tbaa !121, !noalias !123
  %8693 = add nsw i32 %8646, 1
  br label %8694

; <label>:8694                                    ; preds = %8688, %8684
  %8695 = phi i32 [ %8693, %8688 ], [ %8646, %8684 ]
  %8696 = add nuw nsw i32 %8647, 1
  %8697 = icmp eq i32 %8696, %8502
  br i1 %8697, label %8698, label %8645

; <label>:8698                                    ; preds = %8694
  %8699 = load float, float* %8639, align 4, !tbaa !121, !alias.scope !139, !noalias !142
  %8700 = load float, float* %8638, align 4, !tbaa !121, !alias.scope !145, !noalias !146
  %8701 = load float, float* %8637, align 4, !tbaa !121, !alias.scope !147, !noalias !148
  %8702 = load float, float* %8642, align 4, !tbaa !121, !alias.scope !149, !noalias !152
  %8703 = load float, float* %8641, align 4, !tbaa !121, !alias.scope !155, !noalias !156
  %8704 = load float, float* %8640, align 4, !tbaa !121, !alias.scope !157, !noalias !158
  br label %8705

; <label>:8705                                    ; preds = %8698, %8632
  %8706 = phi float [ -1.000000e+00, %8632 ], [ %8704, %8698 ]
  %8707 = phi float [ -1.000000e+00, %8632 ], [ %8703, %8698 ]
  %8708 = phi float [ -1.000000e+00, %8632 ], [ %8702, %8698 ]
  %8709 = phi float [ -1.000000e+00, %8632 ], [ %8701, %8698 ]
  %8710 = phi float [ -1.000000e+00, %8632 ], [ %8700, %8698 ]
  %8711 = phi float [ -1.000000e+00, %8632 ], [ %8699, %8698 ]
  %8712 = phi i32 [ 0, %8632 ], [ %8695, %8698 ]
  %8713 = call float @dx.op.binary.f32(i32 36, float %8710, float %8711)  ; FMin(a,b)
  %8714 = call float @dx.op.binary.f32(i32 36, float %8709, float %8713)  ; FMin(a,b)
  %8715 = call float @dx.op.binary.f32(i32 35, float %8709, float %8710)  ; FMax(a,b)
  %8716 = call float @dx.op.binary.f32(i32 36, float %8715, float %8711)  ; FMin(a,b)
  %8717 = call float @dx.op.binary.f32(i32 36, float %8709, float %8710)  ; FMin(a,b)
  %8718 = call float @dx.op.binary.f32(i32 35, float %8717, float %8716)  ; FMax(a,b)
  %8719 = call float @dx.op.binary.f32(i32 35, float %8710, float %8711)  ; FMax(a,b)
  %8720 = call float @dx.op.binary.f32(i32 35, float %8709, float %8719)  ; FMax(a,b)
  store float %8714, float* %8637, align 4, !tbaa !121, !alias.scope !147, !noalias !148
  store float %8718, float* %8638, align 4, !tbaa !121, !alias.scope !145, !noalias !146
  store float %8720, float* %8639, align 4, !tbaa !121, !alias.scope !139, !noalias !142
  %8721 = call float @dx.op.binary.f32(i32 36, float %8707, float %8708)  ; FMin(a,b)
  %8722 = call float @dx.op.binary.f32(i32 36, float %8706, float %8721)  ; FMin(a,b)
  %8723 = call float @dx.op.binary.f32(i32 35, float %8706, float %8707)  ; FMax(a,b)
  %8724 = call float @dx.op.binary.f32(i32 36, float %8723, float %8708)  ; FMin(a,b)
  %8725 = call float @dx.op.binary.f32(i32 36, float %8706, float %8707)  ; FMin(a,b)
  %8726 = call float @dx.op.binary.f32(i32 35, float %8725, float %8724)  ; FMax(a,b)
  %8727 = call float @dx.op.binary.f32(i32 35, float %8707, float %8708)  ; FMax(a,b)
  %8728 = call float @dx.op.binary.f32(i32 35, float %8706, float %8727)  ; FMax(a,b)
  store float %8722, float* %8640, align 4, !tbaa !121, !alias.scope !157, !noalias !158
  store float %8726, float* %8641, align 4, !tbaa !121, !alias.scope !155, !noalias !156
  store float %8728, float* %8642, align 4, !tbaa !121, !alias.scope !149, !noalias !152
  %8729 = sub nsw i32 3, %8712
  %8730 = icmp sgt i32 %8729, 2
  br i1 %8730, label %8731, label %8769

; <label>:8731                                    ; preds = %8705
  %8732 = icmp eq i32 %8500, 0
  %8733 = fsub fast float %8550, %8634
  %8734 = select i1 %8732, float %8733, float %8634
  %8735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8736 = extractvalue %dx.types.CBufRet.f32 %8735, 0
  %8737 = extractvalue %dx.types.CBufRet.f32 %8735, 1
  %8738 = extractvalue %dx.types.CBufRet.f32 %8735, 2
  %8739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8740 = extractvalue %dx.types.CBufRet.f32 %8739, 0
  %8741 = extractvalue %dx.types.CBufRet.f32 %8739, 1
  %8742 = extractvalue %dx.types.CBufRet.f32 %8739, 2
  %8743 = extractvalue %dx.types.CBufRet.f32 %8739, 3
  %8744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8745 = extractvalue %dx.types.CBufRet.f32 %8744, 3
  %8746 = call float @dx.op.binary.f32(i32 36, float %8635, float %8745)  ; FMin(a,b)
  %8747 = fmul fast float %8743, %8734
  %8748 = call float @dx.op.unary.f32(i32 7, float %8747)  ; Saturate(value)
  %8749 = fsub fast float %8740, %8736
  %8750 = fsub fast float %8741, %8737
  %8751 = fsub fast float %8742, %8738
  %8752 = fmul fast float %8748, %8749
  %8753 = fmul fast float %8748, %8750
  %8754 = fmul fast float %8748, %8751
  %8755 = fadd fast float %8752, %8736
  %8756 = fadd fast float %8753, %8737
  %8757 = fadd fast float %8754, %8738
  %8758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8759 = extractvalue %dx.types.CBufRet.f32 %8758, 0
  %8760 = extractvalue %dx.types.CBufRet.f32 %8758, 1
  %8761 = fadd fast float %8760, %8759
  %8762 = call float @dx.op.unary.f32(i32 7, float %8761)  ; Saturate(value)
  %8763 = extractvalue %dx.types.CBufRet.f32 %8758, 2
  %8764 = extractvalue %dx.types.CBufRet.f32 %8758, 3
  %8765 = fadd fast float %8764, %8763
  %8766 = call float @dx.op.unary.f32(i32 7, float %8765)  ; Saturate(value)
  %8767 = fmul fast float %8762, %8746
  %8768 = fmul fast float %8767, %8766
  br label %8851

; <label>:8769                                    ; preds = %8705
  %8770 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8729
  %8771 = load float, float* %8770, align 4, !tbaa !121, !noalias !123
  %8772 = fcmp fast olt float %8771, %8636
  %8773 = icmp sgt i32 %8712, 0
  %8774 = and i1 %8773, %8772
  br i1 %8774, label %8775, label %8812

; <label>:8775                                    ; preds = %8769
  br label %8776

; <label>:8776                                    ; preds = %8805, %8775
  %8777 = phi float [ %8806, %8805 ], [ %8634, %8775 ]
  %8778 = phi float [ %8807, %8805 ], [ %8635, %8775 ]
  %8779 = phi float [ %8787, %8805 ], [ %8771, %8775 ]
  %8780 = phi i32 [ %8784, %8805 ], [ %8729, %8775 ]
  %8781 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8780
  %8782 = load float, float* %8781, align 4, !tbaa !121, !noalias !123
  %8783 = icmp slt i32 %8780, 2
  %8784 = add nsw i32 %8780, 1
  %8785 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8784
  %8786 = load float, float* %8785, align 4, !tbaa !121, !noalias !123
  %8787 = select i1 %8783, float %8786, float %8550
  %8788 = call float @dx.op.binary.f32(i32 36, float %8787, float %8782)  ; FMin(a,b)
  %8789 = call float @dx.op.binary.f32(i32 36, float %8636, float %8788)  ; FMin(a,b)
  %8790 = icmp eq i32 %8500, 0
  %8791 = fadd fast float %8789, %8779
  %8792 = fmul fast float %8791, %8481
  %8793 = fadd fast float %8792, %8494
  br i1 %8790, label %8799, label %8794

; <label>:8794                                    ; preds = %8776
  %8795 = fsub fast float %8789, %8779
  %8796 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8795)  ; FMax(a,b)
  %8797 = fmul fast float %8796, %8793
  %8798 = fadd fast float %8797, %8778
  br label %8805

; <label>:8799                                    ; preds = %8776
  %8800 = fsub fast float %8779, %8789
  %8801 = call float @dx.op.unary.f32(i32 6, float %8800)  ; FAbs(value)
  %8802 = fadd fast float %8801, %8777
  %8803 = fmul fast float %8801, %8793
  %8804 = fsub fast float %8778, %8803
  br label %8805

; <label>:8805                                    ; preds = %8799, %8794
  %8806 = phi float [ %8796, %8794 ], [ %8802, %8799 ]
  %8807 = phi float [ %8798, %8794 ], [ %8804, %8799 ]
  %8808 = fcmp fast olt float %8787, %8636
  %8809 = icmp slt i32 %8784, 3
  %8810 = and i1 %8809, %8808
  br i1 %8810, label %8776, label %8811

; <label>:8811                                    ; preds = %8805
  br label %8812

; <label>:8812                                    ; preds = %8811, %8769
  %8813 = phi float [ %8634, %8769 ], [ %8806, %8811 ]
  %8814 = phi float [ %8635, %8769 ], [ %8807, %8811 ]
  %8815 = fsub fast float %8550, %8813
  %8816 = select i1 %8552, float %8813, float %8815
  %8817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8818 = extractvalue %dx.types.CBufRet.f32 %8817, 0
  %8819 = extractvalue %dx.types.CBufRet.f32 %8817, 1
  %8820 = extractvalue %dx.types.CBufRet.f32 %8817, 2
  %8821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8822 = extractvalue %dx.types.CBufRet.f32 %8821, 0
  %8823 = extractvalue %dx.types.CBufRet.f32 %8821, 1
  %8824 = extractvalue %dx.types.CBufRet.f32 %8821, 2
  %8825 = extractvalue %dx.types.CBufRet.f32 %8821, 3
  %8826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8827 = extractvalue %dx.types.CBufRet.f32 %8826, 3
  %8828 = call float @dx.op.binary.f32(i32 36, float %8814, float %8827)  ; FMin(a,b)
  %8829 = fmul fast float %8825, %8816
  %8830 = call float @dx.op.unary.f32(i32 7, float %8829)  ; Saturate(value)
  %8831 = fsub fast float %8822, %8818
  %8832 = fsub fast float %8823, %8819
  %8833 = fsub fast float %8824, %8820
  %8834 = fmul fast float %8830, %8831
  %8835 = fmul fast float %8830, %8832
  %8836 = fmul fast float %8830, %8833
  %8837 = fadd fast float %8834, %8818
  %8838 = fadd fast float %8835, %8819
  %8839 = fadd fast float %8836, %8820
  %8840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8841 = extractvalue %dx.types.CBufRet.f32 %8840, 0
  %8842 = extractvalue %dx.types.CBufRet.f32 %8840, 1
  %8843 = fadd fast float %8842, %8841
  %8844 = call float @dx.op.unary.f32(i32 7, float %8843)  ; Saturate(value)
  %8845 = extractvalue %dx.types.CBufRet.f32 %8840, 2
  %8846 = extractvalue %dx.types.CBufRet.f32 %8840, 3
  %8847 = fadd fast float %8846, %8845
  %8848 = call float @dx.op.unary.f32(i32 7, float %8847)  ; Saturate(value)
  %8849 = fmul fast float %8844, %8828
  %8850 = fmul fast float %8849, %8848
  br label %8851

; <label>:8851                                    ; preds = %8812, %8731, %8566, %8548, %8546
  %8852 = phi float [ %8575, %8566 ], [ %8734, %8731 ], [ %8816, %8812 ], [ 0.000000e+00, %8546 ], [ 0.000000e+00, %8548 ]
  %8853 = phi float [ %8609, %8566 ], [ %8768, %8731 ], [ %8850, %8812 ], [ 0.000000e+00, %8546 ], [ 0.000000e+00, %8548 ]
  %8854 = phi float [ %8596, %8566 ], [ %8755, %8731 ], [ %8837, %8812 ], [ 0.000000e+00, %8546 ], [ 0.000000e+00, %8548 ]
  %8855 = phi float [ %8597, %8566 ], [ %8756, %8731 ], [ %8838, %8812 ], [ 0.000000e+00, %8546 ], [ 0.000000e+00, %8548 ]
  %8856 = phi float [ %8598, %8566 ], [ %8757, %8731 ], [ %8839, %8812 ], [ 0.000000e+00, %8546 ], [ 0.000000e+00, %8548 ]
  %8857 = fmul fast float %8489, %8853
  %8858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8859 = extractvalue %dx.types.CBufRet.f32 %8858, 2
  %8860 = fsub fast float %8496, %8859
  %8861 = fcmp fast olt float %8857, -2.000000e+01
  %8862 = call float @dx.op.unary.f32(i32 21, float %8857)  ; Exp(value)
  %8863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8864 = extractvalue %dx.types.CBufRet.f32 %8863, 2
  %8865 = extractvalue %dx.types.CBufRet.f32 %8863, 3
  %8866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8867 = extractvalue %dx.types.CBufRet.f32 %8866, 2
  %8868 = fmul fast float %8865, %8860
  %8869 = call float @dx.op.unary.f32(i32 7, float %8868)  ; Saturate(value)
  %8870 = fsub fast float 1.000000e+00, %8869
  %8871 = fmul fast float %8481, 5.000000e-01
  %8872 = fadd fast float %8871, 5.000000e-01
  %8873 = call float @dx.op.unary.f32(i32 7, float %8872)  ; Saturate(value)
  %8874 = fsub fast float 1.000000e+00, %8873
  %8875 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8870)  ; FMax(a,b)
  %8876 = fdiv fast float %8874, %8875
  %8877 = fsub fast float %8860, %8438
  %8878 = call float @dx.op.unary.f32(i32 6, float %8877)  ; FAbs(value)
  %8879 = fmul fast float %8878, %8864
  %8880 = call float @dx.op.unary.f32(i32 7, float %8876)  ; Saturate(value)
  %8881 = fsub fast float 1.000000e+00, %8879
  %8882 = fmul fast float %8881, %8880
  %8883 = fadd fast float %8882, %8879
  %8884 = fmul fast float %8867, %8860
  %8885 = call float @dx.op.unary.f32(i32 7, float %8884)  ; Saturate(value)
  %8886 = fsub fast float 1.000000e+00, %8883
  %8887 = fmul fast float %8886, %8885
  %8888 = fadd fast float %8887, %8883
  %8889 = call float @dx.op.unary.f32(i32 7, float %8888)  ; Saturate(value)
  %8890 = fadd fast float %8862, -1.000000e+00
  %8891 = select i1 %8861, float -1.000000e+00, float %8890
  %8892 = fmul fast float %8889, %8891
  %8893 = fadd fast float %8892, 1.000000e+00
  %8894 = fsub fast float -0.000000e+00, %8892
  %8895 = fmul fast float %8854, %8894
  %8896 = fmul fast float %8855, %8894
  %8897 = fmul fast float %8856, %8894
  br label %8898

; <label>:8898                                    ; preds = %8851, %8447
  %8899 = phi float [ %8852, %8851 ], [ 0.000000e+00, %8447 ]
  %8900 = phi float [ %8893, %8851 ], [ 1.000000e+00, %8447 ]
  %8901 = phi float [ %8895, %8851 ], [ 0.000000e+00, %8447 ]
  %8902 = phi float [ %8896, %8851 ], [ 0.000000e+00, %8447 ]
  %8903 = phi float [ %8897, %8851 ], [ 0.000000e+00, %8447 ]
  %8904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8905 = extractvalue %dx.types.CBufRet.f32 %8904, 1
  %8906 = fsub fast float 1.000000e+00, %8900
  %8907 = fmul fast float %8906, %8482
  %8908 = fmul fast float %8907, %8905
  %8909 = fsub fast float %8482, %8908
  br i1 %8475, label %8910, label %8939, !dx.controlflow.hints !159

; <label>:8910                                    ; preds = %8898
  %8911 = fmul fast float %8483, %8472
  %8912 = fadd fast float %8911, %8473
  %8913 = call float @dx.op.unary.f32(i32 7, float %8912)  ; Saturate(value)
  %8914 = fmul fast float %8454, %8909
  %8915 = fsub fast float -0.000000e+00, %8914
  %8916 = fmul fast float %8455, %8909
  %8917 = fsub fast float -0.000000e+00, %8916
  %8918 = call float @dx.op.unary.f32(i32 21, float %8915)  ; Exp(value)
  %8919 = call float @dx.op.unary.f32(i32 21, float %8917)  ; Exp(value)
  %8920 = call float @dx.op.binary.f32(i32 35, float %8462, float %8918)  ; FMax(a,b)
  %8921 = call float @dx.op.binary.f32(i32 35, float %8462, float %8919)  ; FMax(a,b)
  %8922 = fsub fast float %8921, %8920
  %8923 = fmul fast float %8922, %8913
  %8924 = fadd fast float %8923, %8920
  %8925 = call float @dx.op.unary.f32(i32 7, float %8924)  ; Saturate(value)
  %8926 = fsub fast float %8459, %8464
  %8927 = fsub fast float %8460, %8465
  %8928 = fsub fast float %8461, %8466
  %8929 = fmul fast float %8913, %8926
  %8930 = fmul fast float %8913, %8927
  %8931 = fmul fast float %8913, %8928
  %8932 = fadd fast float %8929, %8464
  %8933 = fadd fast float %8930, %8465
  %8934 = fadd fast float %8931, %8466
  %8935 = fsub fast float 1.000000e+00, %8925
  %8936 = fmul fast float %8935, %8932
  %8937 = fmul fast float %8935, %8933
  %8938 = fmul fast float %8935, %8934
  br label %8998

; <label>:8939                                    ; preds = %8898
  %8940 = fmul fast float %8909, %8471
  %8941 = call float @dx.op.unary.f32(i32 7, float %8940)  ; Saturate(value)
  %8942 = fsub fast float 2.000000e+00, %8941
  %8943 = fmul fast float %8941, 9.921875e-01
  %8944 = fmul fast float %8943, %8942
  %8945 = fadd fast float %8944, 3.906250e-03
  %8946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %8945, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8947 = extractvalue %dx.types.ResRet.f32 %8946, 0
  %8948 = fsub fast float %8941, %8947
  %8949 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8948)  ; FMax(a,b)
  %8950 = fmul fast float %8457, %8438
  %8951 = call float @dx.op.unary.f32(i32 6, float %8950)  ; FAbs(value)
  %8952 = fcmp fast ogt float %8951, 0x3EB0C6F7A0000000
  br i1 %8952, label %8953, label %8959, !dx.controlflow.hints !160

; <label>:8953                                    ; preds = %8939
  %8954 = fmul fast float %8950, 0xBFF7154760000000
  %8955 = call float @dx.op.unary.f32(i32 21, float %8954)  ; Exp(value)
  %8956 = fsub fast float 1.000000e+00, %8955
  %8957 = fdiv fast float %8956, %8950
  %8958 = fmul fast float %8957, %8467
  br label %8959

; <label>:8959                                    ; preds = %8953, %8939
  %8960 = phi float [ %8958, %8953 ], [ %8467, %8939 ]
  %8961 = fadd fast float %8960, %8469
  %8962 = fmul fast float %8961, %8949
  %8963 = fmul fast float %8454, %8962
  %8964 = fsub fast float -0.000000e+00, %8963
  %8965 = fmul fast float %8455, %8962
  %8966 = fsub fast float -0.000000e+00, %8965
  %8967 = fmul fast float %8456, %8962
  %8968 = fsub fast float -0.000000e+00, %8967
  %8969 = call float @dx.op.unary.f32(i32 21, float %8964)  ; Exp(value)
  %8970 = call float @dx.op.unary.f32(i32 21, float %8966)  ; Exp(value)
  %8971 = call float @dx.op.unary.f32(i32 21, float %8968)  ; Exp(value)
  %8972 = fmul fast float %8483, %8483
  %8973 = fadd fast float %8972, 1.000000e+00
  %8974 = fmul fast float %8973, 0x3FAE8EC8A0000000
  %8975 = fmul fast float %8974, %8464
  %8976 = fmul fast float %8974, %8465
  %8977 = fmul fast float %8974, %8466
  %8978 = fmul fast float %8483, %8462
  %8979 = fsub fast float 1.000000e+00, %8978
  %8980 = fmul fast float %8462, %8462
  %8981 = fsub fast float 1.000000e+00, %8980
  %8982 = fmul fast float %8981, 0x3FB45F3060000000
  %8983 = fmul fast float %8979, %8979
  %8984 = fdiv fast float 1.000000e+00, %8983
  %8985 = fmul fast float %8982, %8984
  %8986 = fmul fast float %8985, %8459
  %8987 = fmul fast float %8985, %8460
  %8988 = fmul fast float %8985, %8461
  %8989 = fadd fast float %8986, %8975
  %8990 = fadd fast float %8987, %8976
  %8991 = fadd fast float %8988, %8977
  %8992 = fsub fast float 1.000000e+00, %8969
  %8993 = fsub fast float 1.000000e+00, %8970
  %8994 = fsub fast float 1.000000e+00, %8971
  %8995 = fmul fast float %8989, %8992
  %8996 = fmul fast float %8990, %8993
  %8997 = fmul fast float %8991, %8994
  br label %8998

; <label>:8998                                    ; preds = %8959, %8910
  %8999 = phi float [ %8936, %8910 ], [ %8995, %8959 ]
  %9000 = phi float [ %8937, %8910 ], [ %8996, %8959 ]
  %9001 = phi float [ %8938, %8910 ], [ %8997, %8959 ]
  %9002 = phi float [ %8925, %8910 ], [ %8969, %8959 ]
  %9003 = phi float [ %8925, %8910 ], [ %8970, %8959 ]
  %9004 = phi float [ %8925, %8910 ], [ %8971, %8959 ]
  br i1 %8491, label %9005, label %9203, !dx.controlflow.hints !161

; <label>:9005                                    ; preds = %8998
  %9006 = extractvalue %dx.types.CBufRet.f32 %8904, 0
  %9007 = fmul fast float %9006, %8906
  %9008 = fsub fast float %8901, %8999
  %9009 = fsub fast float %8902, %9000
  %9010 = fsub fast float %8903, %9001
  %9011 = fmul fast float %9007, %9008
  %9012 = fmul fast float %9007, %9009
  %9013 = fmul fast float %9007, %9010
  %9014 = fadd fast float %9011, %8999
  %9015 = fadd fast float %9012, %9000
  %9016 = fadd fast float %9013, %9001
  %9017 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9002)  ; FMax(a,b)
  %9018 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9003)  ; FMax(a,b)
  %9019 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9004)  ; FMax(a,b)
  %9020 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8900)  ; FMax(a,b)
  %9021 = call float @dx.op.binary.f32(i32 35, float %8899, float %8909)  ; FMax(a,b)
  %9022 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9021)  ; FMax(a,b)
  %9023 = fdiv fast float %8899, %9022
  %9024 = call float @dx.op.unary.f32(i32 7, float %9023)  ; Saturate(value)
  %9025 = fdiv fast float %8909, %9022
  %9026 = call float @dx.op.unary.f32(i32 7, float %9025)  ; Saturate(value)
  %9027 = fcmp fast une float %9020, 1.000000e+00
  br i1 %9027, label %9028, label %9041, !dx.controlflow.hints !162

; <label>:9028                                    ; preds = %9005
  %9029 = call float @dx.op.unary.f32(i32 23, float %9020)  ; Log(value)
  %9030 = fmul fast float %9029, 0x3FE62E4300000000
  %9031 = fmul fast float %8901, %9030
  %9032 = fsub fast float -0.000000e+00, %9031
  %9033 = fmul fast float %8902, %9030
  %9034 = fsub fast float -0.000000e+00, %9033
  %9035 = fmul fast float %8903, %9030
  %9036 = fsub fast float -0.000000e+00, %9035
  %9037 = fsub fast float 1.000000e+00, %9020
  %9038 = fdiv fast float %9032, %9037
  %9039 = fdiv fast float %9034, %9037
  %9040 = fdiv fast float %9036, %9037
  br label %9041

; <label>:9041                                    ; preds = %9028, %9005
  %9042 = phi float [ %9038, %9028 ], [ %8901, %9005 ]
  %9043 = phi float [ %9039, %9028 ], [ %8902, %9005 ]
  %9044 = phi float [ %9040, %9028 ], [ %8903, %9005 ]
  %9045 = phi float [ %9030, %9028 ], [ 0.000000e+00, %9005 ]
  %9046 = fcmp fast une float %9017, 1.000000e+00
  br i1 %9046, label %9047, label %9054, !dx.controlflow.hints !163

; <label>:9047                                    ; preds = %9041
  %9048 = call float @dx.op.unary.f32(i32 23, float %9017)  ; Log(value)
  %9049 = fmul fast float %9048, 0x3FE62E4300000000
  %9050 = fmul fast float %9014, %9049
  %9051 = fsub fast float -0.000000e+00, %9050
  %9052 = fsub fast float 1.000000e+00, %9017
  %9053 = fdiv fast float %9051, %9052
  br label %9054

; <label>:9054                                    ; preds = %9047, %9041
  %9055 = phi float [ %9053, %9047 ], [ %9014, %9041 ]
  %9056 = phi float [ %9049, %9047 ], [ 0.000000e+00, %9041 ]
  %9057 = fcmp fast une float %9018, 1.000000e+00
  br i1 %9057, label %9058, label %9065, !dx.controlflow.hints !163

; <label>:9058                                    ; preds = %9054
  %9059 = call float @dx.op.unary.f32(i32 23, float %9018)  ; Log(value)
  %9060 = fmul fast float %9059, 0x3FE62E4300000000
  %9061 = fmul fast float %9015, %9060
  %9062 = fsub fast float -0.000000e+00, %9061
  %9063 = fsub fast float 1.000000e+00, %9018
  %9064 = fdiv fast float %9062, %9063
  br label %9065

; <label>:9065                                    ; preds = %9058, %9054
  %9066 = phi float [ %9064, %9058 ], [ %9015, %9054 ]
  %9067 = phi float [ %9060, %9058 ], [ 0.000000e+00, %9054 ]
  %9068 = fcmp fast une float %9019, 1.000000e+00
  br i1 %9068, label %9069, label %9076, !dx.controlflow.hints !163

; <label>:9069                                    ; preds = %9065
  %9070 = call float @dx.op.unary.f32(i32 23, float %9019)  ; Log(value)
  %9071 = fmul fast float %9070, 0x3FE62E4300000000
  %9072 = fmul fast float %9016, %9071
  %9073 = fsub fast float -0.000000e+00, %9072
  %9074 = fsub fast float 1.000000e+00, %9019
  %9075 = fdiv fast float %9073, %9074
  br label %9076

; <label>:9076                                    ; preds = %9069, %9065
  %9077 = phi float [ %9075, %9069 ], [ %9016, %9065 ]
  %9078 = phi float [ %9071, %9069 ], [ 0.000000e+00, %9065 ]
  %9079 = fmul fast float %9042, %9026
  %9080 = fmul fast float %9043, %9026
  %9081 = fmul fast float %9044, %9026
  %9082 = fmul fast float %9045, %9026
  %9083 = fmul fast float %9055, %9024
  %9084 = fmul fast float %9066, %9024
  %9085 = fmul fast float %9077, %9024
  %9086 = fmul fast float %9056, %9024
  %9087 = fmul fast float %9067, %9024
  %9088 = fmul fast float %9078, %9024
  %9089 = fadd fast float %9083, %9079
  %9090 = fadd fast float %9084, %9080
  %9091 = fadd fast float %9085, %9081
  %9092 = fadd fast float %9086, %9082
  %9093 = fadd fast float %9087, %9082
  %9094 = fadd fast float %9088, %9082
  %9095 = fcmp fast une float %9092, 0.000000e+00
  br i1 %9095, label %9096, label %9103, !dx.controlflow.hints !164

; <label>:9096                                    ; preds = %9076
  %9097 = fmul fast float %9092, 0x3FF7154760000000
  %9098 = call float @dx.op.unary.f32(i32 21, float %9097)  ; Exp(value)
  %9099 = fsub fast float 1.000000e+00, %9098
  %9100 = fmul fast float %9089, %9099
  %9101 = fsub fast float -0.000000e+00, %9100
  %9102 = fdiv fast float %9101, %9092
  br label %9103

; <label>:9103                                    ; preds = %9096, %9076
  %9104 = phi float [ %9098, %9096 ], [ 1.000000e+00, %9076 ]
  %9105 = phi float [ %9102, %9096 ], [ %9089, %9076 ]
  %9106 = fcmp fast une float %9093, 0.000000e+00
  br i1 %9106, label %9107, label %9114, !dx.controlflow.hints !164

; <label>:9107                                    ; preds = %9103
  %9108 = fmul fast float %9093, 0x3FF7154760000000
  %9109 = call float @dx.op.unary.f32(i32 21, float %9108)  ; Exp(value)
  %9110 = fsub fast float 1.000000e+00, %9109
  %9111 = fmul fast float %9090, %9110
  %9112 = fsub fast float -0.000000e+00, %9111
  %9113 = fdiv fast float %9112, %9093
  br label %9114

; <label>:9114                                    ; preds = %9107, %9103
  %9115 = phi float [ %9109, %9107 ], [ 1.000000e+00, %9103 ]
  %9116 = phi float [ %9113, %9107 ], [ %9090, %9103 ]
  %9117 = fcmp fast une float %9094, 0.000000e+00
  br i1 %9117, label %9118, label %9125, !dx.controlflow.hints !164

; <label>:9118                                    ; preds = %9114
  %9119 = fmul fast float %9094, 0x3FF7154760000000
  %9120 = call float @dx.op.unary.f32(i32 21, float %9119)  ; Exp(value)
  %9121 = fsub fast float 1.000000e+00, %9120
  %9122 = fmul fast float %9091, %9121
  %9123 = fsub fast float -0.000000e+00, %9122
  %9124 = fdiv fast float %9123, %9094
  br label %9125

; <label>:9125                                    ; preds = %9118, %9114
  %9126 = phi float [ %9120, %9118 ], [ 1.000000e+00, %9114 ]
  %9127 = phi float [ %9124, %9118 ], [ %9091, %9114 ]
  %9128 = fcmp fast ogt float %9024, %9026
  br i1 %9128, label %9129, label %9149

; <label>:9129                                    ; preds = %9125
  %9130 = fsub fast float 1.000000e+00, %9026
  %9131 = fmul fast float %9042, %9130
  %9132 = fmul fast float %9043, %9130
  %9133 = fmul fast float %9044, %9130
  %9134 = fmul fast float %9045, %9130
  %9135 = fcmp fast une float %9134, 0.000000e+00
  br i1 %9135, label %9136, label %9187, !dx.controlflow.hints !165

; <label>:9136                                    ; preds = %9129
  %9137 = fmul fast float %9134, 0x3FF7154760000000
  %9138 = call float @dx.op.unary.f32(i32 21, float %9137)  ; Exp(value)
  %9139 = fsub fast float 1.000000e+00, %9138
  %9140 = fmul fast float %9131, %9139
  %9141 = fsub fast float -0.000000e+00, %9140
  %9142 = fmul fast float %9132, %9139
  %9143 = fsub fast float -0.000000e+00, %9142
  %9144 = fmul fast float %9133, %9139
  %9145 = fsub fast float -0.000000e+00, %9144
  %9146 = fdiv fast float %9141, %9134
  %9147 = fdiv fast float %9143, %9134
  %9148 = fdiv fast float %9145, %9134
  br label %9187

; <label>:9149                                    ; preds = %9125
  %9150 = fsub fast float 1.000000e+00, %9024
  %9151 = fmul fast float %9055, %9150
  %9152 = fmul fast float %9066, %9150
  %9153 = fmul fast float %9077, %9150
  %9154 = fmul fast float %9056, %9150
  %9155 = fmul fast float %9067, %9150
  %9156 = fmul fast float %9078, %9150
  %9157 = fcmp fast une float %9154, 0.000000e+00
  br i1 %9157, label %9158, label %9165, !dx.controlflow.hints !164

; <label>:9158                                    ; preds = %9149
  %9159 = fmul fast float %9154, 0x3FF7154760000000
  %9160 = call float @dx.op.unary.f32(i32 21, float %9159)  ; Exp(value)
  %9161 = fsub fast float 1.000000e+00, %9160
  %9162 = fmul fast float %9151, %9161
  %9163 = fsub fast float -0.000000e+00, %9162
  %9164 = fdiv fast float %9163, %9154
  br label %9165

; <label>:9165                                    ; preds = %9158, %9149
  %9166 = phi float [ %9164, %9158 ], [ %9151, %9149 ]
  %9167 = phi float [ %9160, %9158 ], [ 1.000000e+00, %9149 ]
  %9168 = fcmp fast une float %9155, 0.000000e+00
  br i1 %9168, label %9169, label %9176, !dx.controlflow.hints !164

; <label>:9169                                    ; preds = %9165
  %9170 = fmul fast float %9155, 0x3FF7154760000000
  %9171 = call float @dx.op.unary.f32(i32 21, float %9170)  ; Exp(value)
  %9172 = fsub fast float 1.000000e+00, %9171
  %9173 = fmul fast float %9152, %9172
  %9174 = fsub fast float -0.000000e+00, %9173
  %9175 = fdiv fast float %9174, %9155
  br label %9176

; <label>:9176                                    ; preds = %9169, %9165
  %9177 = phi float [ %9175, %9169 ], [ %9152, %9165 ]
  %9178 = phi float [ %9171, %9169 ], [ 1.000000e+00, %9165 ]
  %9179 = fcmp fast une float %9156, 0.000000e+00
  br i1 %9179, label %9180, label %9187, !dx.controlflow.hints !164

; <label>:9180                                    ; preds = %9176
  %9181 = fmul fast float %9156, 0x3FF7154760000000
  %9182 = call float @dx.op.unary.f32(i32 21, float %9181)  ; Exp(value)
  %9183 = fsub fast float 1.000000e+00, %9182
  %9184 = fmul fast float %9153, %9183
  %9185 = fsub fast float -0.000000e+00, %9184
  %9186 = fdiv fast float %9185, %9156
  br label %9187

; <label>:9187                                    ; preds = %9180, %9176, %9136, %9129
  %9188 = phi float [ %9186, %9180 ], [ %9148, %9136 ], [ %9133, %9129 ], [ %9153, %9176 ]
  %9189 = phi float [ %9177, %9180 ], [ %9147, %9136 ], [ %9132, %9129 ], [ %9177, %9176 ]
  %9190 = phi float [ %9166, %9180 ], [ %9146, %9136 ], [ %9131, %9129 ], [ %9166, %9176 ]
  %9191 = phi float [ %9182, %9180 ], [ %9138, %9136 ], [ 1.000000e+00, %9129 ], [ 1.000000e+00, %9176 ]
  %9192 = phi float [ %9178, %9180 ], [ %9138, %9136 ], [ 1.000000e+00, %9129 ], [ %9178, %9176 ]
  %9193 = phi float [ %9167, %9180 ], [ %9138, %9136 ], [ 1.000000e+00, %9129 ], [ %9167, %9176 ]
  %9194 = fmul fast float %9193, %9105
  %9195 = fmul fast float %9192, %9116
  %9196 = fmul fast float %9191, %9127
  %9197 = fadd fast float %9194, %9190
  %9198 = fadd fast float %9195, %9189
  %9199 = fadd fast float %9196, %9188
  %9200 = fmul fast float %9193, %9104
  %9201 = fmul fast float %9192, %9115
  %9202 = fmul fast float %9191, %9126
  br label %9203

; <label>:9203                                    ; preds = %9187, %8998
  %9204 = phi float [ %9202, %9187 ], [ %9004, %8998 ]
  %9205 = phi float [ %9201, %9187 ], [ %9003, %8998 ]
  %9206 = phi float [ %9200, %9187 ], [ %9002, %8998 ]
  %9207 = phi float [ %9199, %9187 ], [ %9001, %8998 ]
  %9208 = phi float [ %9198, %9187 ], [ %9000, %8998 ]
  %9209 = phi float [ %9197, %9187 ], [ %8999, %8998 ]
  %9210 = fmul fast float %9209, %8155
  %9211 = fmul fast float %9208, %8155
  %9212 = fmul fast float %9207, %8155
  %9213 = fmul fast float %9206, %8446
  %9214 = call float @dx.op.dot3.f32(i32 55, float %9206, float %9205, float %9204, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9215 = call float @dx.op.dot3.f32(i32 55, float %9210, float %9211, float %9212, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9216 = select i1 %217, float %9214, float %9206
  %9217 = select i1 %217, float %9214, float %9205
  %9218 = select i1 %217, float 1.000000e+00, float %9204
  %9219 = select i1 %217, float %9215, float %9210
  %9220 = select i1 %217, float 0.000000e+00, float %9211
  %9221 = select i1 %217, float 0.000000e+00, float %9212
  %9222 = fmul fast float %9216, %8440
  %9223 = fmul fast float %9217, %8441
  %9224 = fmul fast float %9218, %8442
  %9225 = fadd fast float %9222, %9219
  %9226 = fadd fast float %9223, %9220
  %9227 = fadd fast float %9221, %9224
  %9228 = fmul fast float %9216, %8443
  %9229 = fmul fast float %9217, %8444
  %9230 = fmul fast float %9218, %8445
  %9231 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9232 = extractvalue %dx.types.CBufRet.i32 %9231, 0
  %9233 = icmp eq i32 %9232, 0
  br i1 %9233, label %9601, label %9234, !dx.controlflow.hints !166

; <label>:9234                                    ; preds = %9203
  %9235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9236 = extractvalue %dx.types.CBufRet.f32 %9235, 2
  %9237 = extractvalue %dx.types.CBufRet.f32 %9235, 3
  %9238 = fmul fast float %9236, %100
  %9239 = fmul fast float %9237, %101
  %9240 = fmul fast float %9238, 2.000000e+00
  %9241 = fmul fast float %9239, 2.000000e+00
  %9242 = fsub fast float 1.000000e+00, %9240
  %9243 = fsub fast float 1.000000e+00, %9241
  %9244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9245 = extractvalue %dx.types.CBufRet.f32 %9244, 0
  %9246 = extractvalue %dx.types.CBufRet.f32 %9244, 1
  %9247 = extractvalue %dx.types.CBufRet.f32 %9244, 2
  %9248 = fmul fast float %9242, %9245
  %9249 = fmul fast float %9242, %9246
  %9250 = fmul fast float %9242, %9247
  %9251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9252 = extractvalue %dx.types.CBufRet.f32 %9251, 0
  %9253 = extractvalue %dx.types.CBufRet.f32 %9251, 1
  %9254 = extractvalue %dx.types.CBufRet.f32 %9251, 2
  %9255 = fmul fast float %9243, %9252
  %9256 = fmul fast float %9243, %9253
  %9257 = fmul fast float %9243, %9254
  %9258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9259 = extractvalue %dx.types.CBufRet.f32 %9258, 0
  %9260 = extractvalue %dx.types.CBufRet.f32 %9258, 1
  %9261 = extractvalue %dx.types.CBufRet.f32 %9258, 2
  %9262 = fadd fast float %9255, %9259
  %9263 = fadd fast float %9262, %9248
  %9264 = fadd fast float %9256, %9260
  %9265 = fadd fast float %9264, %9249
  %9266 = fadd fast float %9257, %9261
  %9267 = fadd fast float %9266, %9250
  %9268 = fmul fast float %9263, %8439
  %9269 = fmul fast float %9265, %8439
  %9270 = fmul fast float %9267, %8439
  %9271 = fmul fast float %9268, %9268
  %9272 = fmul fast float %9269, %9269
  %9273 = fadd fast float %9271, %9272
  %9274 = fmul fast float %9270, %9270
  %9275 = fadd fast float %9273, %9274
  %9276 = call float @dx.op.unary.f32(i32 24, float %9275)  ; Sqrt(value)
  %9277 = extractvalue %dx.types.CBufRet.f32 %8166, 0
  %9278 = fsub fast float %9276, %9277
  %9279 = extractvalue %dx.types.CBufRet.f32 %8166, 2
  %9280 = fmul fast float %9278, %9279
  %9281 = call float @dx.op.unary.f32(i32 7, float %9280)  ; Saturate(value)
  %9282 = fadd fast float %9281, -5.000000e-01
  %9283 = fmul fast float %9282, 2.000000e+00
  %9284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9285 = extractvalue %dx.types.CBufRet.f32 %9284, 2
  %9286 = call float @dx.op.binary.f32(i32 36, float %9285, float %9283)  ; FMin(a,b)
  %9287 = fsub fast float -0.000000e+00, %9285
  %9288 = fcmp fast ogt float %9286, %9287
  br i1 %9288, label %9289, label %9601, !dx.controlflow.hints !167

; <label>:9289                                    ; preds = %9234
  %9290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9291 = extractvalue %dx.types.CBufRet.f32 %9290, 3
  %9292 = fcmp fast ogt float %9291, 0.000000e+00
  br i1 %9292, label %9293, label %9368, !dx.controlflow.hints !168

; <label>:9293                                    ; preds = %9289
  %9294 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %9295 = extractvalue %dx.types.Dimensions %9294, 0
  %9296 = sitofp i32 %9295 to float
  %9297 = extractvalue %dx.types.Dimensions %9294, 1
  %9298 = sitofp i32 %9297 to float
  %9299 = fmul fast float %9238, %9296
  %9300 = fmul fast float %9239, %9298
  %9301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9302 = extractvalue %dx.types.CBufRet.f32 %9301, 1
  %9303 = fsub fast float -0.000000e+00, %9302
  %9304 = fptoui float %9303 to i32
  %9305 = fptoui float %9299 to i32
  %9306 = fptoui float %9300 to i32
  %9307 = and i32 %9304, 31
  %9308 = lshr i32 %9305, %9307
  %9309 = lshr i32 %9306, %9307
  %9310 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %9304, i32 %9308, i32 %9309, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9311 = extractvalue %dx.types.ResRet.f32 %9310, 0
  %9312 = fcmp fast olt float %9311, -1.000000e+00
  %9313 = fcmp fast ogt float %9311, -1.000000e+00
  %9314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9315 = extractvalue %dx.types.CBufRet.f32 %9314, 1
  %9316 = select i1 %9313, float %9315, float 1.000000e+00
  %9317 = fadd fast float %9311, 1.000000e+00
  %9318 = fmul fast float %9316, %9317
  %9319 = call float @dx.op.unary.f32(i32 6, float %9318)  ; FAbs(value)
  %9320 = extractvalue %dx.types.CBufRet.f32 %9314, 3
  %9321 = fcmp fast oge float %9319, %9320
  %9322 = select i1 %9321, float 0x4197782600000000, float %9319
  %9323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9324 = extractvalue %dx.types.CBufRet.f32 %9323, 0
  %9325 = extractvalue %dx.types.CBufRet.f32 %9323, 1
  %9326 = extractvalue %dx.types.CBufRet.f32 %9323, 2
  %9327 = select i1 %9312, float %9324, float %9245
  %9328 = select i1 %9312, float %9325, float %9246
  %9329 = select i1 %9312, float %9326, float %9247
  %9330 = fmul fast float %9327, %9242
  %9331 = fmul fast float %9328, %9242
  %9332 = fmul fast float %9329, %9242
  %9333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9334 = extractvalue %dx.types.CBufRet.f32 %9333, 0
  %9335 = extractvalue %dx.types.CBufRet.f32 %9333, 1
  %9336 = extractvalue %dx.types.CBufRet.f32 %9333, 2
  %9337 = select i1 %9312, float %9334, float %9252
  %9338 = select i1 %9312, float %9335, float %9253
  %9339 = select i1 %9312, float %9336, float %9254
  %9340 = fmul fast float %9337, %9243
  %9341 = fmul fast float %9338, %9243
  %9342 = fmul fast float %9339, %9243
  %9343 = fadd fast float %9340, %9330
  %9344 = fadd fast float %9341, %9331
  %9345 = fadd fast float %9342, %9332
  %9346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9347 = extractvalue %dx.types.CBufRet.f32 %9346, 0
  %9348 = extractvalue %dx.types.CBufRet.f32 %9346, 1
  %9349 = extractvalue %dx.types.CBufRet.f32 %9346, 2
  %9350 = select i1 %9312, float %9347, float %9259
  %9351 = select i1 %9312, float %9348, float %9260
  %9352 = select i1 %9312, float %9349, float %9261
  %9353 = fadd fast float %9343, %9350
  %9354 = fadd fast float %9344, %9351
  %9355 = fadd fast float %9345, %9352
  %9356 = fmul fast float %9353, %9322
  %9357 = fmul fast float %9354, %9322
  %9358 = fmul fast float %9355, %9322
  %9359 = fmul fast float %9356, %9356
  %9360 = fmul fast float %9357, %9357
  %9361 = fadd fast float %9359, %9360
  %9362 = fmul fast float %9358, %9358
  %9363 = fadd fast float %9361, %9362
  %9364 = call float @dx.op.unary.f32(i32 24, float %9363)  ; Sqrt(value)
  %9365 = fsub fast float %9364, %9277
  %9366 = fmul fast float %9365, %9279
  %9367 = call float @dx.op.unary.f32(i32 7, float %9366)  ; Saturate(value)
  br label %9368

; <label>:9368                                    ; preds = %9293, %9289
  %9369 = phi float [ %9367, %9293 ], [ 1.000000e+00, %9289 ]
  %9370 = fmul fast float %9286, 5.000000e-01
  %9371 = fadd fast float %9370, 5.000000e-01
  %9372 = call float @dx.op.unary.f32(i32 22, float %9371)  ; Frc(value)
  %9373 = call float @dx.op.unary.f32(i32 27, float %9372)  ; Round_ni(value)
  %9374 = call float @dx.op.unary.f32(i32 22, float %9372)  ; Frc(value)
  %9375 = fmul fast float %9374, 2.000000e+00
  %9376 = fadd fast float %9375, -1.000000e+00
  %9377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %9238, float %9239, float %9373, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9378 = extractvalue %dx.types.ResRet.f32 %9377, 0
  %9379 = extractvalue %dx.types.ResRet.f32 %9377, 1
  %9380 = extractvalue %dx.types.ResRet.f32 %9377, 2
  %9381 = extractvalue %dx.types.ResRet.f32 %9377, 3
  %9382 = fadd fast float %9378, -5.000000e-01
  %9383 = fadd fast float %9380, -5.000000e-01
  %9384 = fmul fast float %9382, 0xBFD5555560000000
  %9385 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9383, float %9384)  ; FMad(a,b,c)
  %9386 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9379, float 0.000000e+00)  ; FMad(a,b,c)
  %9387 = fadd fast float %9386, %9381
  %9388 = fmul fast float %9382, -7.500000e-01
  %9389 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9383, float %9388)  ; FMad(a,b,c)
  %9390 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9379, float 0.000000e+00)  ; FMad(a,b,c)
  %9391 = fadd fast float %9390, %9381
  %9392 = call float @dx.op.binary.f32(i32 35, float %9385, float -1.000000e+00)  ; FMax(a,b)
  %9393 = call float @dx.op.binary.f32(i32 35, float %9387, float -1.000000e+00)  ; FMax(a,b)
  %9394 = call float @dx.op.binary.f32(i32 35, float %9389, float -1.000000e+00)  ; FMax(a,b)
  %9395 = call float @dx.op.binary.f32(i32 35, float %9391, float -1.000000e+00)  ; FMax(a,b)
  %9396 = call float @dx.op.binary.f32(i32 36, float %9392, float 1.000000e+00)  ; FMin(a,b)
  %9397 = call float @dx.op.binary.f32(i32 36, float %9393, float 1.000000e+00)  ; FMin(a,b)
  %9398 = call float @dx.op.binary.f32(i32 36, float %9394, float 1.000000e+00)  ; FMin(a,b)
  %9399 = call float @dx.op.binary.f32(i32 36, float %9395, float 1.000000e+00)  ; FMin(a,b)
  %9400 = fcmp fast olt float %9396, 0x3FEFFF8020000000
  br i1 %9400, label %9401, label %9516, !dx.controlflow.hints !169

; <label>:9401                                    ; preds = %9368
  %9402 = extractvalue %dx.types.CBufRet.f32 %9284, 3
  %9403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9404 = extractvalue %dx.types.CBufRet.f32 %9403, 0
  %9405 = extractvalue %dx.types.CBufRet.f32 %9403, 1
  %9406 = extractvalue %dx.types.CBufRet.f32 %9403, 2
  %9407 = extractvalue %dx.types.CBufRet.f32 %9403, 3
  %9408 = fsub fast float %9404, %9396
  %9409 = fsub fast float %9405, %9397
  %9410 = fsub fast float %9406, %9398
  %9411 = fsub fast float %9407, %9399
  %9412 = fmul fast float %9408, %9402
  %9413 = fmul fast float %9409, %9402
  %9414 = fmul fast float %9410, %9402
  %9415 = fmul fast float %9411, %9402
  %9416 = fadd fast float %9412, %9396
  %9417 = fadd fast float %9413, %9397
  %9418 = fsub fast float -0.000000e+00, %9417
  %9419 = fadd fast float %9414, %9398
  %9420 = fadd fast float %9415, %9399
  %9421 = fmul fast float %9416, %9416
  %9422 = fsub fast float %9417, %9421
  %9423 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9422)  ; FMax(a,b)
  %9424 = fdiv fast float 1.000000e+00, %9423
  %9425 = fmul fast float %9417, %9416
  %9426 = fsub fast float %9419, %9425
  %9427 = fsub fast float %9376, %9416
  %9428 = fmul fast float %9376, %9376
  %9429 = fsub fast float %9428, %9417
  %9430 = fmul fast float %9427, %9424
  %9431 = fmul fast float %9430, %9426
  %9432 = fsub fast float %9429, %9431
  %9433 = fmul fast float %9417, %9417
  %9434 = fsub fast float %9420, %9433
  %9435 = fmul fast float %9426, %9426
  %9436 = fmul fast float %9435, %9424
  %9437 = fsub fast float %9434, %9436
  %9438 = fdiv fast float %9432, %9437
  %9439 = fmul fast float %9426, %9438
  %9440 = fsub fast float %9427, %9439
  %9441 = fmul fast float %9440, %9424
  %9442 = fmul fast float %9441, %9416
  %9443 = fsub fast float 1.000000e+00, %9442
  %9444 = fmul fast float %9417, %9438
  %9445 = fsub fast float %9443, %9444
  %9446 = fmul fast float %9441, %9441
  %9447 = fmul fast float %9438, 4.000000e+00
  %9448 = fmul fast float %9447, %9445
  %9449 = fsub fast float %9446, %9448
  %9450 = call float @dx.op.unary.f32(i32 24, float %9449)  ; Sqrt(value)
  %9451 = fcmp fast oge float %9441, 0.000000e+00
  %9452 = fsub fast float -0.000000e+00, %9450
  %9453 = select i1 %9451, float %9452, float %9450
  %9454 = fsub fast float %9453, %9441
  %9455 = fdiv fast float %9454, %9438
  %9456 = fdiv fast float %9445, %9454
  %9457 = fmul fast float %9455, 5.000000e-01
  %9458 = fmul fast float %9456, 2.000000e+00
  %9459 = select i1 %9451, float %9457, float %9458
  %9460 = select i1 %9451, float %9458, float %9457
  %9461 = call float @dx.op.binary.f32(i32 35, float %9459, float %9460)  ; FMax(a,b)
  %9462 = call float @dx.op.binary.f32(i32 36, float %9459, float %9460)  ; FMin(a,b)
  %9463 = fcmp fast ogt float %9376, %9462
  br i1 %9463, label %9464, label %9474

; <label>:9464                                    ; preds = %9401
  %9465 = fsub fast float %9376, %9462
  %9466 = fsub fast float %9461, %9462
  %9467 = fmul fast float %9465, %9466
  %9468 = fmul fast float %9461, %9376
  %9469 = fadd fast float %9461, %9376
  %9470 = fmul fast float %9469, %9416
  %9471 = fadd fast float %9468, %9417
  %9472 = fsub fast float %9471, %9470
  %9473 = fdiv fast float %9472, %9467
  br label %9474

; <label>:9474                                    ; preds = %9464, %9401
  %9475 = phi float [ %9473, %9464 ], [ 0.000000e+00, %9401 ]
  %9476 = fcmp fast ogt float %9376, %9461
  %9477 = fsub fast float %9376, %9461
  br i1 %9476, label %9478, label %9488

; <label>:9478                                    ; preds = %9474
  %9479 = fsub fast float %9461, %9462
  %9480 = fmul fast float %9479, %9477
  %9481 = fmul fast float %9462, %9376
  %9482 = fadd fast float %9462, %9376
  %9483 = fmul fast float %9482, %9416
  %9484 = fsub fast float %9418, %9481
  %9485 = fadd fast float %9484, %9483
  %9486 = fdiv fast float %9485, %9480
  %9487 = fadd fast float %9486, %9475
  br label %9488

; <label>:9488                                    ; preds = %9478, %9474
  %9489 = phi float [ %9487, %9478 ], [ %9475, %9474 ]
  %9490 = fsub fast float %9376, %9462
  %9491 = fmul fast float %9490, %9477
  %9492 = fmul fast float %9462, %9461
  %9493 = fadd fast float %9462, %9461
  %9494 = fmul fast float %9493, %9416
  %9495 = fadd fast float %9492, %9417
  %9496 = fsub fast float %9495, %9494
  %9497 = fdiv fast float %9496, %9491
  %9498 = call float @dx.op.unary.f32(i32 7, float %9489)  ; Saturate(value)
  %9499 = fcmp fast oeq float %8167, 0.000000e+00
  %9500 = extractvalue %dx.types.CBufRet.f32 %9284, 0
  %9501 = fcmp fast oeq float %9500, 0.000000e+00
  %9502 = or i1 %9499, %9501
  %9503 = fmul fast float %9500, 2.000000e+00
  %9504 = fadd fast float %9285, %9286
  %9505 = fdiv fast float %9504, %9503
  %9506 = call float @dx.op.unary.f32(i32 7, float %9505)  ; Saturate(value)
  %9507 = fmul fast float %9506, 2.000000e+00
  %9508 = fsub fast float 3.000000e+00, %9507
  %9509 = fmul fast float %9506, %9506
  %9510 = fmul fast float %9509, %9508
  %9511 = select i1 %9502, float 1.000000e+00, float %9510
  %9512 = fmul fast float %9497, %8167
  %9513 = fadd fast float %9498, %9512
  %9514 = call float @dx.op.unary.f32(i32 7, float %9513)  ; Saturate(value)
  %9515 = fmul fast float %9511, %9514
  br label %9516

; <label>:9516                                    ; preds = %9488, %9368
  %9517 = phi float [ %9515, %9488 ], [ 0.000000e+00, %9368 ]
  %9518 = fsub fast float 1.000000e+00, %9517
  %9519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %9238, float %9239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9520 = extractvalue %dx.types.ResRet.f32 %9519, 0
  %9521 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9522 = extractvalue %dx.types.CBufRet.i32 %9521, 2
  %9523 = icmp eq i32 %9522, 0
  br i1 %9523, label %9529, label %9524

; <label>:9524                                    ; preds = %9516
  %9525 = call float @dx.op.unary.f32(i32 7, float %9517)  ; Saturate(value)
  %9526 = fadd fast float %9520, -1.000000e+00
  %9527 = fmul fast float %9525, %9526
  %9528 = fadd fast float %9527, 1.000000e+00
  br label %9529

; <label>:9529                                    ; preds = %9524, %9516
  %9530 = phi float [ %9528, %9524 ], [ %9518, %9516 ]
  br i1 %9292, label %9531, label %9549

; <label>:9531                                    ; preds = %9529
  %9532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9533 = extractvalue %dx.types.CBufRet.f32 %9532, 1
  %9534 = fsub fast float %9369, %9533
  %9535 = call float @dx.op.unary.f32(i32 7, float %9534)  ; Saturate(value)
  %9536 = fsub fast float %9369, %9291
  %9537 = call float @dx.op.unary.f32(i32 7, float %9536)  ; Saturate(value)
  %9538 = fsub fast float %9535, %9537
  %9539 = fsub fast float %9371, %9537
  %9540 = fdiv fast float %9539, %9538
  %9541 = call float @dx.op.unary.f32(i32 7, float %9540)  ; Saturate(value)
  %9542 = fmul fast float %9541, 2.000000e+00
  %9543 = fsub fast float 3.000000e+00, %9542
  %9544 = fsub fast float %9520, %9530
  %9545 = fmul fast float %9541, %9541
  %9546 = fmul fast float %9545, %9544
  %9547 = fmul fast float %9546, %9543
  %9548 = fadd fast float %9547, %9530
  br label %9549

; <label>:9549                                    ; preds = %9531, %9529
  %9550 = phi float [ %9548, %9531 ], [ %9530, %9529 ]
  %9551 = call float @dx.op.binary.f32(i32 35, float %9520, float %9550)  ; FMax(a,b)
  %9552 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9553 = extractvalue %dx.types.CBufRet.i32 %9552, 2
  %9554 = and i32 %9553, 1
  %9555 = icmp eq i32 %9554, 0
  %9556 = fcmp fast une float %9551, 1.000000e+00
  %9557 = and i1 %9556, %9555
  br i1 %9557, label %9558, label %9577

; <label>:9558                                    ; preds = %9549
  %9559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %9238, float %9239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9560 = extractvalue %dx.types.ResRet.f32 %9559, 0
  %9561 = extractvalue %dx.types.ResRet.f32 %9559, 1
  %9562 = extractvalue %dx.types.ResRet.f32 %9559, 2
  %9563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9564 = extractvalue %dx.types.CBufRet.f32 %9563, 1
  %9565 = fmul fast float %9564, %9560
  %9566 = fmul fast float %9564, %9561
  %9567 = fmul fast float %9564, %9562
  %9568 = fcmp fast ogt float %9520, 0x3FEFFF2E40000000
  %9569 = fsub fast float 1.000000e+00, %9551
  %9570 = fsub fast float 1.000000e+00, %9520
  %9571 = fdiv fast float %9569, %9570
  %9572 = call float @dx.op.unary.f32(i32 7, float %9571)  ; Saturate(value)
  %9573 = select i1 %9568, float 0.000000e+00, float %9572
  %9574 = fmul fast float %9565, %9573
  %9575 = fmul fast float %9566, %9573
  %9576 = fmul fast float %9567, %9573
  br label %9577

; <label>:9577                                    ; preds = %9558, %9549
  %9578 = phi float [ 0.000000e+00, %9549 ], [ %9574, %9558 ]
  %9579 = phi float [ 0.000000e+00, %9549 ], [ %9575, %9558 ]
  %9580 = phi float [ 0.000000e+00, %9549 ], [ %9576, %9558 ]
  %9581 = fmul fast float %9578, %8155
  %9582 = fmul fast float %9579, %8155
  %9583 = fmul fast float %9580, %8155
  %9584 = fmul fast float %9551, %9213
  %9585 = call float @dx.op.dot3.f32(i32 55, float %9551, float %9551, float %9551, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9586 = call float @dx.op.dot3.f32(i32 55, float %9581, float %9582, float %9583, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9587 = select i1 %217, float %9585, float %9551
  %9588 = select i1 %217, float 1.000000e+00, float %9551
  %9589 = select i1 %217, float %9586, float %9581
  %9590 = select i1 %217, float 0.000000e+00, float %9582
  %9591 = select i1 %217, float 0.000000e+00, float %9583
  %9592 = fmul fast float %9587, %9225
  %9593 = fmul fast float %9587, %9226
  %9594 = fmul fast float %9588, %9227
  %9595 = fadd fast float %9592, %9589
  %9596 = fadd fast float %9593, %9590
  %9597 = fadd fast float %9591, %9594
  %9598 = fmul fast float %9587, %9228
  %9599 = fmul fast float %9587, %9229
  %9600 = fmul fast float %9588, %9230
  br label %9601

; <label>:9601                                    ; preds = %9577, %9234, %9203, %8435
  %9602 = phi float [ %8440, %8435 ], [ %9225, %9203 ], [ %9595, %9577 ], [ %9225, %9234 ]
  %9603 = phi float [ %8441, %8435 ], [ %9226, %9203 ], [ %9596, %9577 ], [ %9226, %9234 ]
  %9604 = phi float [ %8442, %8435 ], [ %9227, %9203 ], [ %9597, %9577 ], [ %9227, %9234 ]
  %9605 = phi float [ %8443, %8435 ], [ %9228, %9203 ], [ %9598, %9577 ], [ %9228, %9234 ]
  %9606 = phi float [ %8444, %8435 ], [ %9229, %9203 ], [ %9599, %9577 ], [ %9229, %9234 ]
  %9607 = phi float [ %8445, %8435 ], [ %9230, %9203 ], [ %9600, %9577 ], [ %9230, %9234 ]
  %9608 = phi float [ %8446, %8435 ], [ %9213, %9203 ], [ %9584, %9577 ], [ %9213, %9234 ]
  %9609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9610 = extractvalue %dx.types.CBufRet.f32 %9609, 2
  %9611 = extractvalue %dx.types.CBufRet.f32 %9609, 3
  %9612 = fmul fast float %9610, %100
  %9613 = fmul fast float %9611, %101
  %9614 = call float @dx.op.unary.f32(i32 7, float %9612)  ; Saturate(value)
  %9615 = call float @dx.op.unary.f32(i32 7, float %9613)  ; Saturate(value)
  %9616 = select i1 %8177, i32 2, i32 0
  %9617 = or i32 %9616, 1
  %9618 = uitofp i32 %9617 to float
  %9619 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9614, float %9615, float %9618, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9620 = extractvalue %dx.types.ResRet.f32 %9619, 0
  %9621 = extractvalue %dx.types.ResRet.f32 %9619, 1
  %9622 = extractvalue %dx.types.ResRet.f32 %9619, 2
  %9623 = extractvalue %dx.types.ResRet.f32 %9619, 3
  %9624 = add nuw nsw i32 %9616, 2
  %9625 = uitofp i32 %9624 to float
  %9626 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9614, float %9615, float %9625, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9627 = extractvalue %dx.types.ResRet.f32 %9626, 0
  %9628 = extractvalue %dx.types.ResRet.f32 %9626, 1
  %9629 = extractvalue %dx.types.ResRet.f32 %9626, 2
  %9630 = extractvalue %dx.types.ResRet.f32 %9626, 3
  %9631 = call float @dx.op.binary.f32(i32 35, float %9621, float %9622)  ; FMax(a,b)
  %9632 = call float @dx.op.binary.f32(i32 35, float %9620, float %9631)  ; FMax(a,b)
  %9633 = call float @dx.op.binary.f32(i32 35, float %9632, float %9623)  ; FMax(a,b)
  %9634 = call float @dx.op.binary.f32(i32 36, float %9628, float %9629)  ; FMin(a,b)
  %9635 = call float @dx.op.binary.f32(i32 36, float %9627, float %9634)  ; FMin(a,b)
  %9636 = call float @dx.op.binary.f32(i32 36, float %9635, float %9630)  ; FMin(a,b)
  %9637 = fmul fast float %9633, 2.550000e+02
  %9638 = fadd fast float %9637, 0x3F70101020000000
  %9639 = fptoui float %9638 to i32
  %9640 = fmul fast float %9636, 2.550000e+02
  %9641 = fadd fast float %9640, 0x3F70101020000000
  %9642 = fptoui float %9641 to i32
  %9643 = icmp ult i32 %9639, %9642
  br i1 %9643, label %9644, label %9813

; <label>:9644                                    ; preds = %9601
  %9645 = fcmp fast ogt float %90, 9.843750e-01
  %9646 = fadd fast float %8439, -4.000000e+00
  %9647 = select i1 %9645, float -4.000000e+00, float %9646
  %9648 = call float @dx.op.binary.f32(i32 35, float %9647, float 0.000000e+00)  ; FMax(a,b)
  %9649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9650 = extractvalue %dx.types.CBufRet.f32 %9649, 0
  %9651 = fadd fast float %9650, %9648
  %9652 = extractvalue %dx.types.CBufRet.f32 %9649, 2
  %9653 = fmul fast float %9651, %9652
  %9654 = call float @dx.op.unary.f32(i32 23, float %9653)  ; Log(value)
  %9655 = extractvalue %dx.types.CBufRet.f32 %9649, 3
  %9656 = fmul fast float %9655, %9654
  %9657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9658 = extractvalue %dx.types.CBufRet.f32 %9657, 2
  %9659 = fmul fast float %9656, %9658
  %9660 = call float @dx.op.unary.f32(i32 7, float %9659)  ; Saturate(value)
  %9661 = uitofp i32 %9639 to float
  %9662 = uitofp i32 %9642 to float
  %9663 = fadd fast float %9661, 5.000000e-01
  %9664 = fadd fast float %9662, 5.000000e-01
  %9665 = fmul fast float %9658, %9663
  %9666 = fmul fast float %9658, %9664
  %9667 = fadd fast float %9665, 0x3F0FFB4800000000
  %9668 = fadd fast float %9666, 0xBF0FFB4800000000
  %9669 = call float @dx.op.binary.f32(i32 35, float %9660, float %9667)  ; FMax(a,b)
  %9670 = call float @dx.op.binary.f32(i32 36, float %9669, float %9668)  ; FMin(a,b)
  %9671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9672 = extractvalue %dx.types.CBufRet.f32 %9671, 1
  %9673 = extractvalue %dx.types.CBufRet.f32 %9671, 2
  %9674 = extractvalue %dx.types.CBufRet.f32 %9671, 0
  %9675 = select i1 %8177, float %9674, float 0.000000e+00
  %9676 = fmul fast float %9672, %9670
  %9677 = fadd fast float %9675, %9676
  %9678 = fadd fast float %9675, %9673
  %9679 = fsub fast float %9672, %9673
  %9680 = fadd fast float %9679, %9675
  %9681 = call float @dx.op.binary.f32(i32 35, float %9677, float %9678)  ; FMax(a,b)
  %9682 = call float @dx.op.binary.f32(i32 36, float %9681, float %9680)  ; FMin(a,b)
  %9683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9614, float %9615, float %9682, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9684 = extractvalue %dx.types.ResRet.f32 %9683, 0
  %9685 = extractvalue %dx.types.ResRet.f32 %9683, 1
  %9686 = extractvalue %dx.types.ResRet.f32 %9683, 2
  %9687 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9688 = extractvalue %dx.types.CBufRet.i32 %9687, 0
  %9689 = extractvalue %dx.types.CBufRet.i32 %9687, 1
  %9690 = uitofp i32 %9688 to float
  %9691 = uitofp i32 %9689 to float
  %9692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9693 = extractvalue %dx.types.CBufRet.f32 %9692, 0
  %9694 = extractvalue %dx.types.CBufRet.f32 %9692, 1
  %9695 = fmul fast float %9690, %9614
  %9696 = fmul fast float %9691, %9615
  %9697 = fadd fast float %9695, -5.000000e-01
  %9698 = fadd fast float %9696, -5.000000e-01
  %9699 = call float @dx.op.unary.f32(i32 22, float %9697)  ; Frc(value)
  %9700 = call float @dx.op.unary.f32(i32 22, float %9698)  ; Frc(value)
  %9701 = fmul fast float %9699, %9699
  %9702 = fmul fast float %9701, %9699
  %9703 = fsub fast float 3.000000e+00, %9699
  %9704 = fmul fast float %9701, %9703
  %9705 = fmul fast float %9699, 3.000000e+00
  %9706 = fmul fast float %9702, 3.000000e+00
  %9707 = fmul fast float %9701, 6.000000e+00
  %9708 = fsub fast float %9706, %9707
  %9709 = fadd fast float %9708, 4.000000e+00
  %9710 = fmul fast float %9709, 0x3FC5555560000000
  %9711 = fmul fast float %9702, -3.000000e+00
  %9712 = fadd fast float %9701, %9699
  %9713 = fmul fast float %9712, 3.000000e+00
  %9714 = fadd fast float %9711, 1.000000e+00
  %9715 = fadd fast float %9714, %9713
  %9716 = fmul fast float %9702, 0x3FC5555560000000
  %9717 = fmul fast float %9700, %9700
  %9718 = fmul fast float %9717, %9700
  %9719 = fsub fast float 3.000000e+00, %9700
  %9720 = fmul fast float %9717, %9719
  %9721 = fmul fast float %9700, 3.000000e+00
  %9722 = fmul fast float %9718, 3.000000e+00
  %9723 = fmul fast float %9717, 6.000000e+00
  %9724 = fsub fast float %9722, %9723
  %9725 = fadd fast float %9724, 4.000000e+00
  %9726 = fmul fast float %9725, 0x3FC5555560000000
  %9727 = fmul fast float %9718, -3.000000e+00
  %9728 = fadd fast float %9717, %9700
  %9729 = fmul fast float %9728, 3.000000e+00
  %9730 = fadd fast float %9727, 1.000000e+00
  %9731 = fadd fast float %9730, %9729
  %9732 = fmul fast float %9718, 0x3FC5555560000000
  %9733 = fadd fast float %9699, 1.000000e+00
  %9734 = fsub fast float 1.000000e+00, %9705
  %9735 = fadd fast float %9734, %9704
  %9736 = fadd fast float %9735, %9709
  %9737 = fmul fast float %9736, 0x3FC5555560000000
  %9738 = fdiv fast float %9710, %9737
  %9739 = fsub fast float %9733, %9738
  %9740 = fsub fast float 1.000000e+00, %9699
  %9741 = fadd fast float %9715, %9702
  %9742 = fmul fast float %9741, 0x3FC5555560000000
  %9743 = fdiv fast float %9716, %9742
  %9744 = fadd fast float %9740, %9743
  %9745 = fadd fast float %9700, 1.000000e+00
  %9746 = fsub fast float 1.000000e+00, %9721
  %9747 = fadd fast float %9746, %9720
  %9748 = fadd fast float %9747, %9725
  %9749 = fmul fast float %9748, 0x3FC5555560000000
  %9750 = fdiv fast float %9726, %9749
  %9751 = fsub fast float %9745, %9750
  %9752 = fsub fast float 1.000000e+00, %9700
  %9753 = fadd fast float %9731, %9718
  %9754 = fmul fast float %9753, 0x3FC5555560000000
  %9755 = fdiv fast float %9732, %9754
  %9756 = fadd fast float %9755, %9752
  %9757 = fmul fast float %9739, %9693
  %9758 = fsub fast float %9614, %9757
  %9759 = fmul fast float %9744, %9693
  %9760 = fadd fast float %9759, %9614
  %9761 = fmul fast float %9756, %9694
  %9762 = fadd fast float %9761, %9615
  %9763 = fmul fast float %9751, %9694
  %9764 = fsub fast float %9615, %9763
  %9765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9758, float %9764, float %9682, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9766 = extractvalue %dx.types.ResRet.f32 %9765, 0
  %9767 = extractvalue %dx.types.ResRet.f32 %9765, 1
  %9768 = extractvalue %dx.types.ResRet.f32 %9765, 2
  %9769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9760, float %9764, float %9682, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9770 = extractvalue %dx.types.ResRet.f32 %9769, 0
  %9771 = extractvalue %dx.types.ResRet.f32 %9769, 1
  %9772 = extractvalue %dx.types.ResRet.f32 %9769, 2
  %9773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9758, float %9762, float %9682, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9774 = extractvalue %dx.types.ResRet.f32 %9773, 0
  %9775 = extractvalue %dx.types.ResRet.f32 %9773, 1
  %9776 = extractvalue %dx.types.ResRet.f32 %9773, 2
  %9777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9760, float %9762, float %9682, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9778 = extractvalue %dx.types.ResRet.f32 %9777, 0
  %9779 = extractvalue %dx.types.ResRet.f32 %9777, 1
  %9780 = extractvalue %dx.types.ResRet.f32 %9777, 2
  %9781 = fsub fast float %9774, %9766
  %9782 = fsub fast float %9775, %9767
  %9783 = fsub fast float %9776, %9768
  %9784 = fmul fast float %9781, %9754
  %9785 = fmul fast float %9782, %9754
  %9786 = fmul fast float %9783, %9754
  %9787 = fadd fast float %9784, %9766
  %9788 = fadd fast float %9785, %9767
  %9789 = fadd fast float %9786, %9768
  %9790 = fsub fast float %9778, %9770
  %9791 = fsub fast float %9779, %9771
  %9792 = fsub fast float %9780, %9772
  %9793 = fmul fast float %9790, %9754
  %9794 = fmul fast float %9791, %9754
  %9795 = fmul fast float %9792, %9754
  %9796 = fsub fast float %9770, %9787
  %9797 = fadd fast float %9796, %9793
  %9798 = fsub fast float %9771, %9788
  %9799 = fadd fast float %9798, %9794
  %9800 = fsub fast float %9772, %9789
  %9801 = fadd fast float %9800, %9795
  %9802 = fmul fast float %9797, %9742
  %9803 = fmul fast float %9799, %9742
  %9804 = fmul fast float %9801, %9742
  %9805 = fadd fast float %9802, %9787
  %9806 = fadd fast float %9803, %9788
  %9807 = fadd fast float %9804, %9789
  %9808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9809 = extractvalue %dx.types.CBufRet.f32 %9808, 1
  %9810 = fmul fast float %9805, %9809
  %9811 = fmul fast float %9806, %9809
  %9812 = fmul fast float %9807, %9809
  br label %9813

; <label>:9813                                    ; preds = %9644, %9601
  %9814 = phi float [ %9684, %9644 ], [ 1.000000e+00, %9601 ]
  %9815 = phi float [ %9685, %9644 ], [ 1.000000e+00, %9601 ]
  %9816 = phi float [ %9686, %9644 ], [ 1.000000e+00, %9601 ]
  %9817 = phi float [ %9810, %9644 ], [ 0.000000e+00, %9601 ]
  %9818 = phi float [ %9811, %9644 ], [ 0.000000e+00, %9601 ]
  %9819 = phi float [ %9812, %9644 ], [ 0.000000e+00, %9601 ]
  %9820 = fmul fast float %9817, %8155
  %9821 = fmul fast float %9818, %8155
  %9822 = fmul fast float %9819, %8155
  %9823 = fmul fast float %9814, %9608
  %9824 = call float @dx.op.dot3.f32(i32 55, float %9814, float %9815, float %9816, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9825 = call float @dx.op.dot3.f32(i32 55, float %9820, float %9821, float %9822, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9826 = select i1 %217, float %9824, float %9814
  %9827 = select i1 %217, float %9824, float %9815
  %9828 = select i1 %217, float 1.000000e+00, float %9816
  %9829 = select i1 %217, float %9825, float %9820
  %9830 = select i1 %217, float 0.000000e+00, float %9821
  %9831 = select i1 %217, float 0.000000e+00, float %9822
  %9832 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9833 = extractvalue %dx.types.CBufRet.i32 %9832, 3
  %9834 = and i32 %9833, 3
  %9835 = icmp ne i32 %9834, 0
  %9836 = and i32 %9833, 4
  %9837 = icmp ne i32 %9836, 0
  %9838 = and i1 %9835, %9837
  %9839 = and i1 %217, %9838
  br i1 %9839, label %9840, label %9846

; <label>:9840                                    ; preds = %9813
  %9841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9842 = extractvalue %dx.types.CBufRet.f32 %9841, 1
  %9843 = fadd fast float %9823, -1.000000e+00
  %9844 = fmul fast float %9842, %9843
  %9845 = fadd fast float %9844, 1.000000e+00
  br label %9846

; <label>:9846                                    ; preds = %9840, %9813
  %9847 = phi float [ %9845, %9840 ], [ %9823, %9813 ]
  %9848 = fadd fast float %9605, %9602
  %9849 = fmul fast float %9826, %9848
  %9850 = fadd fast float %9849, %9829
  %9851 = fadd fast float %9606, %9603
  %9852 = fmul fast float %9827, %9851
  %9853 = fadd fast float %9852, %9830
  %9854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9855 = extractvalue %dx.types.CBufRet.f32 %9854, 0
  br i1 %217, label %9856, label %9879

; <label>:9856                                    ; preds = %9846
  %9857 = fadd fast float %9850, %9853
  %9858 = fmul fast float %9855, %9857
  %9859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9860 = extractvalue %dx.types.CBufRet.f32 %9859, 3
  %9861 = extractvalue %dx.types.CBufRet.f32 %8159, 1
  %9862 = fsub fast float %8164, %8158
  %9863 = fadd fast float %9862, %8165
  %9864 = fsub fast float %9863, %9861
  %9865 = extractvalue %dx.types.CBufRet.f32 %8159, 2
  %9866 = fmul fast float %9864, %9865
  %9867 = call float @dx.op.unary.f32(i32 7, float %9866)  ; Saturate(value)
  %9868 = fsub fast float %9867, %9860
  %9869 = fmul fast float %9868, %9847
  %9870 = fadd fast float %9869, %9860
  %9871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9872 = extractvalue %dx.types.CBufRet.f32 %9871, 0
  %9873 = fsub fast float %9870, %9872
  %9874 = fmul fast float %9873, 1.000000e+01
  %9875 = call float @dx.op.unary.f32(i32 7, float %9874)  ; Saturate(value)
  %9876 = fmul fast float %9875, %8154
  %9877 = fadd fast float %9876, %8155
  %9878 = fmul fast float %9877, %9870
  br label %9903

; <label>:9879                                    ; preds = %9846
  %9880 = fadd fast float %9607, %9604
  %9881 = fmul fast float %9828, %9880
  %9882 = fadd fast float %9881, %9831
  %9883 = fmul fast float %9855, %9850
  %9884 = fmul fast float %9855, %9853
  %9885 = fmul fast float %9855, %9882
  %9886 = call float @dx.op.binary.f32(i32 35, float %9884, float %9885)  ; FMax(a,b)
  %9887 = call float @dx.op.binary.f32(i32 35, float %9883, float %9886)  ; FMax(a,b)
  %9888 = call float @dx.op.binary.f32(i32 35, float %9887, float %8155)  ; FMax(a,b)
  %9889 = fcmp fast ugt float %9888, 0x3F10000000000000
  br i1 %9889, label %9891, label %9890

; <label>:9890                                    ; preds = %9879
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9891

; <label>:9891                                    ; preds = %9890, %9879
  %9892 = add i32 %54, 356
  %9893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9892, i32 undef)  ; BufferLoad(srv,index,wot)
  %9894 = extractvalue %dx.types.ResRet.i32 %9893, 0
  %9895 = and i32 %9894, 32
  %9896 = icmp eq i32 %9895, 0
  br i1 %9896, label %9903, label %9897

; <label>:9897                                    ; preds = %9891
  %9898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9899 = extractvalue %dx.types.CBufRet.f32 %9898, 0
  %9900 = fmul fast float %9899, 0x3FE99999A0000000
  %9901 = fadd fast float %9899, %9883
  %9902 = fadd fast float %9900, %9885
  br label %9903

; <label>:9903                                    ; preds = %9897, %9891, %9856
  %9904 = phi float [ %9858, %9856 ], [ %9901, %9897 ], [ %9883, %9891 ]
  %9905 = phi float [ %9878, %9856 ], [ %9884, %9897 ], [ %9884, %9891 ]
  %9906 = phi float [ %9877, %9856 ], [ %9902, %9897 ], [ %9885, %9891 ]
  %9907 = phi float [ %9877, %9856 ], [ %8155, %9897 ], [ %8155, %9891 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9908 = call float @dx.op.binary.f32(i32 36, float %9904, float 3.225500e+04)  ; FMin(a,b)
  %9909 = call float @dx.op.binary.f32(i32 36, float %9905, float 3.225500e+04)  ; FMin(a,b)
  %9910 = call float @dx.op.binary.f32(i32 36, float %9906, float 3.225500e+04)  ; FMin(a,b)
  %9911 = call float @dx.op.binary.f32(i32 36, float %9907, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9908)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9909)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9910)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9911)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

