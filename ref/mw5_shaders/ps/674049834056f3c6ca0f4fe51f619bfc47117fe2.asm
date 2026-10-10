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
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x zw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: a9a35e3580bfb998ec659bfa7f121b72
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
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
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
; Number of inputs: 40, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
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
  %41 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = alloca [12 x float], align 4
  %75 = alloca [12 x float], align 4
  %76 = alloca [3 x float], align 4
  %77 = alloca [3 x float], align 4
  %78 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %79 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = fmul fast float %81, %70
  %83 = fmul fast float %81, %71
  %84 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %85 = bitcast float %84 to i32
  %86 = ashr i32 %85, 1
  %87 = sub nsw i32 1597250115, %86
  %88 = bitcast i32 %87 to float
  %89 = fmul fast float %88, %61
  %90 = fmul fast float %88, %62
  %91 = fmul fast float %88, %63
  %92 = fmul fast float %62, %59
  %93 = fmul fast float %63, %58
  %94 = fsub fast float %92, %93
  %95 = fmul fast float %63, %57
  %96 = fmul fast float %61, %59
  %97 = fsub fast float %95, %96
  %98 = fmul fast float %61, %58
  %99 = fmul fast float %62, %57
  %100 = fsub fast float %98, %99
  %101 = fmul fast float %94, %60
  %102 = fmul fast float %97, %60
  %103 = fmul fast float %100, %60
  %104 = call float @dx.op.dot3.f32(i32 55, float %50, float %51, float %52, float %50, float %51, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %105 = bitcast float %104 to i32
  %106 = ashr i32 %105, 1
  %107 = sub nsw i32 1597250115, %106
  %108 = bitcast i32 %107 to float
  %109 = fmul fast float %108, %50
  %110 = fmul fast float %108, %51
  %111 = fmul fast float %108, %52
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %115 = fmul fast float %82, 2.000000e+00
  %116 = fmul fast float %115, %113
  %117 = fmul fast float %83, 2.000000e+00
  %118 = fmul fast float %117, %114
  %119 = fsub fast float 1.000000e+00, %116
  %120 = fsub fast float 1.000000e+00, %118
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = fmul fast float %119, %122
  %126 = fmul fast float %119, %123
  %127 = fmul fast float %119, %124
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = fmul fast float %120, %129
  %133 = fmul fast float %120, %130
  %134 = fmul fast float %120, %131
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = fadd fast float %132, %136
  %140 = fadd fast float %139, %125
  %141 = fadd fast float %133, %137
  %142 = fadd fast float %141, %126
  %143 = fadd fast float %134, %138
  %144 = fadd fast float %143, %127
  %145 = fmul fast float %140, %73
  %146 = fmul fast float %142, %73
  %147 = fmul fast float %144, %73
  %148 = fmul fast float %82, 5.000000e-01
  %149 = fmul fast float %83, 5.000000e-01
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
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 3
  %171 = fmul fast float %169, %82
  %172 = fmul fast float %170, %83
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = and i32 %174, 114688
  %176 = icmp ne i32 %175, 0
  %177 = select i1 %176, float %171, float 0.000000e+00
  %178 = select i1 %176, float %172, float 0.000000e+00
  %179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %36, float %177, float %178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = fmul fast float %180, 2.550000e+02
  %182 = fptoui float %181 to i32
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.i32 %184, 3
  %186 = and i32 %185, 3
  %187 = icmp ne i32 %186, 0
  %188 = and i32 %185, 4
  %189 = icmp ne i32 %188, 0
  %190 = and i1 %187, %189
  br i1 %190, label %191, label %202

; <label>:191                                     ; preds = %0
  %192 = extractvalue %dx.types.CBufRet.f32 %183, 3
  %193 = fmul fast float %192, %83
  %194 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %195 = fmul fast float %194, %82
  %196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %35, float %195, float %193, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %197 = extractvalue %dx.types.ResRet.f32 %196, 0
  %198 = fsub fast float 1.000000e+00, %197
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 0
  %201 = fcmp fast olt float %198, %200
  br label %205

; <label>:202                                     ; preds = %0
  %203 = icmp eq i32 %188, 0
  %204 = and i1 %187, %203
  br label %205

; <label>:205                                     ; preds = %202, %191
  %206 = phi i1 [ %201, %191 ], [ %204, %202 ]
  %207 = add i32 %41, 156
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = shl i32 %209, 4
  %211 = and i32 %210, 32752
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = lshr i32 %209, 7
  %214 = and i32 %213, 32752
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = lshr i32 %209, 22
  %217 = shl nuw nsw i32 %216, 5
  %218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %217)  ; LegacyF16ToF32(value)
  %219 = add i32 %41, 216
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = and i32 %221, 255
  %223 = uitofp i32 %222 to float
  %224 = fmul fast float %223, 0x3F70101020000000
  %225 = lshr i32 %221, 8
  %226 = and i32 %225, 255
  %227 = uitofp i32 %226 to float
  %228 = fmul fast float %227, 0x3F70101020000000
  %229 = lshr i32 %221, 16
  %230 = and i32 %229, 255
  %231 = uitofp i32 %230 to float
  %232 = fmul fast float %231, 0x3F70101020000000
  %233 = add i32 %41, 36
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 65535
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %235, 16
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = add i32 %41, 288
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = and i32 %242, 65535
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %242, 16
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = fmul fast float %244, 0x3F50624DE0000000
  %248 = fmul fast float %246, 0x3F50624DE0000000
  %249 = add i32 %41, 172
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = shl i32 %251, 4
  %253 = and i32 %252, 32752
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = lshr i32 %251, 7
  %256 = and i32 %255, 32752
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %251, 22
  %259 = shl nuw nsw i32 %258, 5
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = add i32 %41, 232
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 255
  %265 = uitofp i32 %264 to float
  %266 = fmul fast float %265, 0x3F70101020000000
  %267 = lshr i32 %263, 8
  %268 = and i32 %267, 255
  %269 = uitofp i32 %268 to float
  %270 = fmul fast float %269, 0x3F70101020000000
  %271 = lshr i32 %263, 16
  %272 = and i32 %271, 255
  %273 = uitofp i32 %272 to float
  %274 = fmul fast float %273, 0x3F70101020000000
  %275 = add i32 %41, 52
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 65535
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %277, 16
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = add i32 %41, 304
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 65535
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %284, 16
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = fmul fast float %286, 0x3F50624DE0000000
  %290 = fmul fast float %288, 0x3F50624DE0000000
  %291 = add i32 %41, 188
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = shl i32 %293, 4
  %295 = and i32 %294, 32752
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %293, 7
  %298 = and i32 %297, 32752
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %293, 22
  %301 = shl nuw nsw i32 %300, 5
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = add i32 %41, 248
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = lshr i32 %305, 8
  %310 = and i32 %309, 255
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %311, 0x3F70101020000000
  %313 = lshr i32 %305, 16
  %314 = and i32 %313, 255
  %315 = uitofp i32 %314 to float
  %316 = fmul fast float %315, 0x3F70101020000000
  %317 = add i32 %41, 68
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 65535
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %319, 16
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = add i32 %41, 320
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 65535
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %326, 16
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = fmul fast float %328, 0x3F50624DE0000000
  %332 = fmul fast float %330, 0x3F50624DE0000000
  %333 = add i32 %41, 204
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = shl i32 %335, 4
  %337 = and i32 %336, 32752
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %335, 7
  %340 = and i32 %339, 32752
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %335, 22
  %343 = shl nuw nsw i32 %342, 5
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = add i32 %41, 264
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 255
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %349, 0x3F70101020000000
  %351 = lshr i32 %347, 8
  %352 = and i32 %351, 255
  %353 = uitofp i32 %352 to float
  %354 = fmul fast float %353, 0x3F70101020000000
  %355 = lshr i32 %347, 16
  %356 = and i32 %355, 255
  %357 = uitofp i32 %356 to float
  %358 = fmul fast float %357, 0x3F70101020000000
  %359 = add i32 %41, 84
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 65535
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %361, 16
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = add i32 %41, 336
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 65535
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %368, 16
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = fmul fast float %370, 0x3F50624DE0000000
  %374 = fmul fast float %372, 0x3F50624DE0000000
  %375 = add i32 %41, 348
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = and i32 %377, 32
  %379 = icmp eq i32 %378, 0
  %380 = and i32 %377, 64
  %381 = icmp eq i32 %380, 0
  %382 = and i32 %377, 128
  %383 = icmp eq i32 %382, 0
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 2
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %403, label %388

; <label>:388                                     ; preds = %205
  %389 = add i32 %41, 488
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = add i32 %391, 0
  %393 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %392, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %394 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %393, %dx.types.Handle %79, float %64, float %65, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %395 = extractvalue %dx.types.ResRet.f32 %394, 0
  %396 = extractvalue %dx.types.ResRet.f32 %394, 1
  %397 = extractvalue %dx.types.ResRet.f32 %394, 2
  %398 = extractvalue %dx.types.ResRet.f32 %394, 3
  %399 = fmul fast float %398, %66
  %400 = fmul fast float %395, %67
  %401 = fmul fast float %396, %68
  %402 = fmul fast float %397, %69
  br label %403

; <label>:403                                     ; preds = %388, %205
  %404 = phi float [ %69, %205 ], [ %402, %388 ]
  %405 = phi float [ %68, %205 ], [ %401, %388 ]
  %406 = phi float [ %67, %205 ], [ %400, %388 ]
  %407 = phi float [ %66, %205 ], [ %399, %388 ]
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 2
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %431, label %412

; <label>:412                                     ; preds = %403
  %413 = add i32 %41, 44
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 1
  %417 = icmp ne i32 %416, 0
  %418 = select i1 %417, float %406, float 1.000000e+00
  %419 = add i32 %41, 60
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, 1
  %423 = icmp ne i32 %422, 0
  %424 = select i1 %423, float %405, float 1.000000e+00
  %425 = add i32 %41, 76
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = and i32 %427, 1
  %429 = icmp ne i32 %428, 0
  %430 = select i1 %429, float %404, float 1.000000e+00
  br label %431

; <label>:431                                     ; preds = %412, %403
  %432 = phi float [ %404, %403 ], [ %430, %412 ]
  %433 = phi float [ %405, %403 ], [ %424, %412 ]
  %434 = phi float [ %406, %403 ], [ %418, %412 ]
  %435 = lshr i32 %409, 20
  %436 = and i32 %435, 3
  %437 = add nuw nsw i32 %436, 1
  %438 = add i32 %41, 24
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = add i32 %41, 28
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = or i32 %443, %440
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %1095, label %446

; <label>:446                                     ; preds = %431
  %447 = and i32 %440, 262144
  %448 = icmp ne i32 %447, 0
  %449 = select i1 %448, float %44, float 1.000000e+00
  %450 = select i1 %448, float %45, float 0.000000e+00
  %451 = select i1 %448, float %46, float 0.000000e+00
  %452 = select i1 %448, float %47, float 1.000000e+00
  %453 = select i1 %448, float %48, float %64
  %454 = select i1 %448, float %49, float %65
  %455 = add i32 %41, 284
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = lshr i32 %457, 16
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = fmul fast float %459, 0x3F50624DE0000000
  %461 = add i32 %41, 88
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = lshr i32 %463, 16
  %465 = and i32 %464, 255
  %466 = lshr i32 %463, 24
  %467 = add i32 %41, 292
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = and i32 %469, 65535
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = lshr i32 %469, 16
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = add i32 %41, 32
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = lshr i32 %476, 22
  %478 = shl nuw nsw i32 %477, 5
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = shl i32 %476, 4
  %481 = and i32 %480, 32752
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = lshr i32 %476, 7
  %484 = and i32 %483, 32752
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.f32 %486, 3
  %488 = fmul fast float %487, 1.000000e+03
  %489 = fmul fast float %247, %488
  %490 = call float @dx.op.unary.f32(i32 22, float %489)  ; Frc(value)
  %491 = fadd fast float %490, %237
  %492 = fmul fast float %248, %488
  %493 = call float @dx.op.unary.f32(i32 22, float %492)  ; Frc(value)
  %494 = fadd fast float %493, %239
  %495 = fmul fast float %460, %488
  %496 = call float @dx.op.unary.f32(i32 22, float %495)  ; Frc(value)
  %497 = fmul fast float %496, 0x401921FB60000000
  %498 = fadd fast float %497, %479
  %499 = call float @dx.op.unary.f32(i32 13, float %498)  ; Sin(value)
  %500 = call float @dx.op.unary.f32(i32 12, float %498)  ; Cos(value)
  %501 = fsub fast float -0.000000e+00, %499
  %502 = fadd fast float %453, -5.000000e-01
  %503 = fadd fast float %454, -5.000000e-01
  %504 = fmul fast float %471, %502
  %505 = fmul fast float %473, %503
  %506 = fadd fast float %504, 5.000000e-01
  %507 = fadd fast float %505, 5.000000e-01
  %508 = fmul fast float %482, %506
  %509 = fmul fast float %485, %507
  %510 = fmul fast float %500, %508
  %511 = call float @dx.op.tertiary.f32(i32 46, float %501, float %509, float %510)  ; FMad(a,b,c)
  %512 = fmul fast float %499, %508
  %513 = call float @dx.op.tertiary.f32(i32 46, float %500, float %509, float %512)  ; FMad(a,b,c)
  %514 = fadd fast float %491, %511
  %515 = fadd fast float %494, %513
  %516 = icmp ugt i32 %465, 1
  %517 = icmp ugt i32 %463, 33554431
  %518 = or i1 %517, %516
  br i1 %518, label %519, label %544

; <label>:519                                     ; preds = %446
  %520 = add i32 %41, 228
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = lshr i32 %522, 16
  %524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %523)  ; LegacyF16ToF32(value)
  %525 = fmul fast float %487, %524
  %526 = call float @dx.op.unary.f32(i32 22, float %525)  ; Frc(value)
  %527 = mul nuw nsw i32 %465, %466
  %528 = uitofp i32 %527 to float
  %529 = fmul fast float %526, %528
  %530 = call float @dx.op.unary.f32(i32 27, float %529)  ; Round_ni(value)
  %531 = fptoui float %530 to i32
  %532 = urem i32 %531, %465
  %533 = udiv i32 %531, %466
  %534 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %535 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %536 = uitofp i32 %532 to float
  %537 = uitofp i32 %533 to float
  %538 = fadd fast float %534, %536
  %539 = fadd fast float %535, %537
  %540 = uitofp i32 %465 to float
  %541 = uitofp i32 %466 to float
  %542 = fdiv fast float %538, %540
  %543 = fdiv fast float %539, %541
  br label %544

; <label>:544                                     ; preds = %519, %446
  %545 = phi float [ %542, %519 ], [ %514, %446 ]
  %546 = phi float [ %543, %519 ], [ %515, %446 ]
  %547 = and i32 %440, 16777216
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %658, label %549

; <label>:549                                     ; preds = %544
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 0
  %552 = extractvalue %dx.types.CBufRet.f32 %550, 1
  %553 = extractvalue %dx.types.CBufRet.f32 %550, 2
  %554 = fadd fast float %551, %145
  %555 = fadd fast float %552, %146
  %556 = fadd fast float %553, %147
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 0
  %559 = call float @dx.op.unary.f32(i32 7, float %558)  ; Saturate(value)
  %560 = icmp eq i32 %42, 65535
  br i1 %560, label %655, label %561

; <label>:561                                     ; preds = %549
  %562 = lshr i32 %42, 1
  %563 = shl i32 %562, 2
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = and i32 %42, 1
  %567 = icmp ne i32 %566, 0
  %568 = lshr i32 %565, 16
  %569 = and i32 %565, 65535
  %570 = select i1 %567, i32 %568, i32 %569
  %571 = icmp eq i32 %570, 65535
  br i1 %571, label %651, label %572

; <label>:572                                     ; preds = %561
  %573 = mul nuw nsw i32 %570, 40
  %574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = extractvalue %dx.types.ResRet.f32 %574, 1
  %577 = extractvalue %dx.types.ResRet.f32 %574, 2
  %578 = add nuw nsw i32 %573, 12
  %579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.f32 %579, 0
  %581 = extractvalue %dx.types.ResRet.f32 %579, 1
  %582 = extractvalue %dx.types.ResRet.f32 %579, 2
  %583 = add nuw nsw i32 %573, 24
  %584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.f32 %584, 0
  %586 = extractvalue %dx.types.ResRet.f32 %584, 1
  %587 = extractvalue %dx.types.ResRet.f32 %584, 2
  %588 = add nuw nsw i32 %573, 36
  %589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.f32 %589, 0
  %591 = fsub fast float %554, %575
  %592 = fsub fast float %555, %576
  %593 = fsub fast float %556, %577
  %594 = fmul fast float %590, %591
  %595 = fmul fast float %590, %592
  %596 = fmul fast float %590, %593
  %597 = call float @dx.op.unary.f32(i32 27, float %594)  ; Round_ni(value)
  %598 = call float @dx.op.unary.f32(i32 27, float %595)  ; Round_ni(value)
  %599 = call float @dx.op.unary.f32(i32 27, float %596)  ; Round_ni(value)
  %600 = fadd fast float %597, 5.000000e-01
  %601 = fadd fast float %598, 5.000000e-01
  %602 = fadd fast float %599, 5.000000e-01
  %603 = fmul fast float %600, %580
  %604 = fmul fast float %601, %581
  %605 = fmul fast float %602, %582
  %606 = shl i32 %42, 2
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = add i32 %608, 0
  %610 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %609, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %611 = call float @dx.op.unary.f32(i32 22, float %603)  ; Frc(value)
  %612 = call float @dx.op.unary.f32(i32 22, float %604)  ; Frc(value)
  %613 = call float @dx.op.unary.f32(i32 22, float %605)  ; Frc(value)
  %614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %610, %dx.types.Handle %36, float %611, float %612, float %613, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = extractvalue %dx.types.ResRet.f32 %614, 1
  %617 = extractvalue %dx.types.ResRet.f32 %614, 2
  %618 = fmul fast float %615, 1.023000e+03
  %619 = fmul fast float %616, 1.023000e+03
  %620 = fmul fast float %617, 1.023000e+03
  %621 = fadd fast float %618, 5.000000e-01
  %622 = fadd fast float %619, 5.000000e-01
  %623 = fadd fast float %620, 5.000000e-01
  %624 = call float @dx.op.unary.f32(i32 27, float %621)  ; Round_ni(value)
  %625 = call float @dx.op.unary.f32(i32 27, float %622)  ; Round_ni(value)
  %626 = call float @dx.op.unary.f32(i32 27, float %623)  ; Round_ni(value)
  %627 = fsub fast float %594, %597
  %628 = fsub fast float %595, %598
  %629 = fsub fast float %596, %599
  %630 = fmul fast float %627, 7.500000e-01
  %631 = fmul fast float %628, 7.500000e-01
  %632 = fmul fast float %629, 7.500000e-01
  %633 = fadd fast float %597, 1.250000e-01
  %634 = fadd fast float %633, %630
  %635 = fadd fast float %634, %624
  %636 = fadd fast float %598, 1.250000e-01
  %637 = fadd fast float %636, %631
  %638 = fadd fast float %637, %625
  %639 = fadd fast float %599, 1.250000e-01
  %640 = fadd fast float %639, %632
  %641 = fadd fast float %640, %626
  %642 = fmul fast float %635, %585
  %643 = fmul fast float %638, %586
  %644 = fmul fast float %641, %587
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = add i32 %646, 0
  %648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %648, %dx.types.Handle %34, float %642, float %643, float %644, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %650 = extractvalue %dx.types.ResRet.f32 %649, 0
  br label %651

; <label>:651                                     ; preds = %572, %561
  %652 = phi float [ %650, %572 ], [ -1.000000e+00, %561 ]
  %653 = fadd fast float %652, %559
  %654 = call float @dx.op.unary.f32(i32 7, float %653)  ; Saturate(value)
  br label %655

; <label>:655                                     ; preds = %651, %549
  %656 = phi float [ %654, %651 ], [ %559, %549 ]
  %657 = fmul fast float %656, %407
  br label %658

; <label>:658                                     ; preds = %655, %544
  %659 = phi float [ %657, %655 ], [ %407, %544 ]
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = and i32 %661, 256
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %710, label %664

; <label>:664                                     ; preds = %658
  %665 = add i32 %41, 440
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = add i32 %667, 0
  %669 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %668, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %670 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %669, %dx.types.Handle %79, float %545, float %546, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  %672 = add i32 %41, 100
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = shl i32 %674, 4
  %676 = and i32 %675, 32752
  %677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %676)  ; LegacyF16ToF32(value)
  %678 = lshr i32 %674, 7
  %679 = and i32 %678, 32752
  %680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %679)  ; LegacyF16ToF32(value)
  %681 = fsub fast float 1.000000e+00, %659
  %682 = call float @dx.op.binary.f32(i32 35, float %681, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %683 = bitcast float %659 to i32
  %684 = sitofp i32 %683 to float
  %685 = fadd fast float %684, 0xC1CFBF8940000000
  %686 = fmul fast float %680, %685
  %687 = fadd fast float %686, 0x41CFBF8940000000
  %688 = fptosi float %687 to i32
  %689 = bitcast i32 %688 to float
  %690 = bitcast float %682 to i32
  %691 = sitofp i32 %690 to float
  %692 = fadd fast float %691, 0xC1CFBF8940000000
  %693 = fmul fast float %692, %680
  %694 = fadd fast float %693, 0x41CFBF8940000000
  %695 = fptosi float %694 to i32
  %696 = bitcast i32 %695 to float
  %697 = fmul fast float %689, %677
  %698 = fmul fast float %696, %677
  %699 = fsub fast float %682, %697
  %700 = fadd fast float %698, %682
  %701 = call float @dx.op.unary.f32(i32 7, float %699)  ; Saturate(value)
  %702 = call float @dx.op.unary.f32(i32 7, float %700)  ; Saturate(value)
  %703 = fsub fast float %671, %701
  %704 = fsub fast float %702, %701
  %705 = bitcast float %704 to i32
  %706 = sub nsw i32 2129859010, %705
  %707 = bitcast i32 %706 to float
  %708 = fmul fast float %707, %703
  %709 = call float @dx.op.unary.f32(i32 7, float %708)  ; Saturate(value)
  br label %710

; <label>:710                                     ; preds = %664, %658
  %711 = phi float [ %709, %664 ], [ %659, %658 ]
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = and i32 %713, 128
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %732, label %716

; <label>:716                                     ; preds = %710
  %717 = add i32 %41, 424
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = add i32 %719, 0
  %721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %720, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %722 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %721, %dx.types.Handle %79, float %545, float %546, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %723 = extractvalue %dx.types.ResRet.f32 %722, 0
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = and i32 %725, 524288
  %727 = icmp ne i32 %726, 0
  %728 = fcmp fast ogt float %723, 0x3FE0101020000000
  %729 = select i1 %728, float 1.000000e+00, float 0.000000e+00
  %730 = select i1 %727, float %729, float %723
  %731 = fmul fast float %730, %711
  br label %732

; <label>:732                                     ; preds = %716, %710
  %733 = phi float [ %731, %716 ], [ %711, %710 ]
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = and i32 %735, 16
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %936, label %738

; <label>:738                                     ; preds = %732
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = add i32 %41, 376
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = add i32 %743, 0
  %745 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %744, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %746 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %745, %dx.types.Handle %78, float %545, float %546, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = extractvalue %dx.types.ResRet.f32 %746, 1
  %749 = extractvalue %dx.types.ResRet.f32 %746, 2
  %750 = extractvalue %dx.types.ResRet.f32 %746, 3
  %751 = and i32 %740, 255
  %752 = uitofp i32 %751 to float
  %753 = lshr i32 %740, 8
  %754 = and i32 %753, 255
  %755 = uitofp i32 %754 to float
  %756 = fmul fast float %750, %752
  %757 = fadd fast float %756, %755
  %758 = fmul fast float %757, 0x3F70101000000000
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = and i32 %760, 512
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %771, label %763

; <label>:763                                     ; preds = %738
  %764 = add i32 %41, 456
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = add i32 %766, 0
  %768 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %767, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %769 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %768, %dx.types.Handle %79, float %545, float %546, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %770 = extractvalue %dx.types.ResRet.f32 %769, 0
  br label %771

; <label>:771                                     ; preds = %763, %738
  %772 = phi float [ %770, %763 ], [ 1.000000e+00, %738 ]
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = and i32 %774, 33554432
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %883, label %777

; <label>:777                                     ; preds = %771
  %778 = add i32 %41, 224
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %778, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = and i32 %780, 65535
  %782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %781)  ; LegacyF16ToF32(value)
  %783 = lshr i32 %780, 16
  %784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %783)  ; LegacyF16ToF32(value)
  %785 = add i32 %41, 228
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = and i32 %787, 65535
  %789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %788)  ; LegacyF16ToF32(value)
  %790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.i32 %790, 0
  %792 = lshr i32 %791, 24
  %793 = uitofp i32 %792 to float
  %794 = fmul fast float %793, 0x3F70101020000000
  %795 = and i32 %791, 255
  %796 = uitofp i32 %795 to float
  %797 = fmul fast float %796, 0x3F70101020000000
  %798 = lshr i32 %791, 8
  %799 = and i32 %798, 255
  %800 = uitofp i32 %799 to float
  %801 = fmul fast float %800, 0x3F70101020000000
  %802 = lshr i32 %791, 16
  %803 = and i32 %802, 255
  %804 = uitofp i32 %803 to float
  %805 = fmul fast float %804, 0x3F70101020000000
  %806 = add i32 %41, 220
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = lshr i32 %808, 24
  %810 = uitofp i32 %809 to float
  %811 = fmul fast float %810, 0x3F70101020000000
  %812 = and i32 %808, 255
  %813 = uitofp i32 %812 to float
  %814 = fmul fast float %813, 0x3F70101020000000
  %815 = lshr i32 %808, 8
  %816 = and i32 %815, 255
  %817 = uitofp i32 %816 to float
  %818 = fmul fast float %817, 0x3F70101020000000
  %819 = lshr i32 %808, 16
  %820 = and i32 %819, 255
  %821 = uitofp i32 %820 to float
  %822 = fmul fast float %821, 0x3F70101020000000
  %823 = bitcast float %747 to i32
  %824 = ashr i32 %823, 1
  %825 = sub nsw i32 1597463174, %824
  %826 = bitcast i32 %825 to float
  %827 = fmul fast float %747, 5.000000e-01
  %828 = fmul fast float %826, %826
  %829 = fmul fast float %828, %827
  %830 = fsub fast float 1.500000e+00, %829
  %831 = fmul fast float %826, %747
  %832 = fmul fast float %831, %830
  %833 = bitcast float %748 to i32
  %834 = ashr i32 %833, 1
  %835 = sub nsw i32 1597463174, %834
  %836 = bitcast i32 %835 to float
  %837 = fmul fast float %748, 5.000000e-01
  %838 = fmul fast float %836, %836
  %839 = fmul fast float %838, %837
  %840 = fsub fast float 1.500000e+00, %839
  %841 = fmul fast float %836, %748
  %842 = fmul fast float %841, %840
  %843 = bitcast float %749 to i32
  %844 = ashr i32 %843, 1
  %845 = sub nsw i32 1597463174, %844
  %846 = bitcast i32 %845 to float
  %847 = fmul fast float %749, 5.000000e-01
  %848 = fmul fast float %846, %846
  %849 = fmul fast float %848, %847
  %850 = fsub fast float 1.500000e+00, %849
  %851 = fmul fast float %846, %749
  %852 = fmul fast float %851, %850
  %853 = fsub fast float %832, %814
  %854 = fsub fast float %842, %818
  %855 = fsub fast float %852, %822
  %856 = fmul fast float %853, %782
  %857 = fmul fast float %854, %784
  %858 = fmul fast float %855, %789
  %859 = fadd fast float %856, %797
  %860 = fadd fast float %857, %801
  %861 = fadd fast float %858, %805
  %862 = call float @dx.op.unary.f32(i32 7, float %859)  ; Saturate(value)
  %863 = call float @dx.op.unary.f32(i32 7, float %860)  ; Saturate(value)
  %864 = call float @dx.op.unary.f32(i32 7, float %861)  ; Saturate(value)
  %865 = fmul fast float %862, %862
  %866 = fmul fast float %863, %863
  %867 = fmul fast float %864, %864
  %868 = fsub fast float %865, %747
  %869 = fsub fast float %866, %748
  %870 = fsub fast float %867, %749
  %871 = fmul fast float %868, %772
  %872 = fmul fast float %869, %772
  %873 = fmul fast float %870, %772
  %874 = fadd fast float %871, %747
  %875 = fadd fast float %872, %748
  %876 = fadd fast float %873, %749
  %877 = fadd fast float %794, %758
  %878 = fsub fast float %877, %811
  %879 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  %880 = fsub fast float %879, %758
  %881 = fmul fast float %880, %772
  %882 = fadd fast float %881, %758
  br label %936

; <label>:883                                     ; preds = %771
  %884 = and i32 %774, 134217728
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %920, label %886

; <label>:886                                     ; preds = %883
  %887 = call float @dx.op.unary.f32(i32 24, float %224)  ; Sqrt(value)
  %888 = call float @dx.op.unary.f32(i32 24, float %228)  ; Sqrt(value)
  %889 = call float @dx.op.unary.f32(i32 24, float %232)  ; Sqrt(value)
  %890 = fadd fast float %887, -5.000000e-01
  %891 = fadd fast float %888, -5.000000e-01
  %892 = fadd fast float %889, -5.000000e-01
  %893 = fmul fast float %890, %772
  %894 = fmul fast float %891, %772
  %895 = fmul fast float %892, %772
  %896 = fadd fast float %893, 5.000000e-01
  %897 = fadd fast float %894, 5.000000e-01
  %898 = fadd fast float %895, 5.000000e-01
  %899 = call float @dx.op.unary.f32(i32 24, float %747)  ; Sqrt(value)
  %900 = call float @dx.op.unary.f32(i32 24, float %748)  ; Sqrt(value)
  %901 = call float @dx.op.unary.f32(i32 24, float %749)  ; Sqrt(value)
  %902 = fmul fast float %896, 2.000000e+00
  %903 = fsub fast float 1.000000e+00, %902
  %904 = fmul fast float %903, %899
  %905 = fadd fast float %904, %902
  %906 = fmul fast float %905, %899
  %907 = fmul fast float %897, 2.000000e+00
  %908 = fsub fast float 1.000000e+00, %907
  %909 = fmul fast float %908, %900
  %910 = fadd fast float %909, %907
  %911 = fmul fast float %910, %900
  %912 = fmul fast float %898, 2.000000e+00
  %913 = fsub fast float 1.000000e+00, %912
  %914 = fmul fast float %913, %901
  %915 = fadd fast float %914, %912
  %916 = fmul fast float %915, %901
  %917 = fmul fast float %906, %906
  %918 = fmul fast float %911, %911
  %919 = fmul fast float %916, %916
  br label %936

; <label>:920                                     ; preds = %883
  %921 = fmul fast float %224, %224
  %922 = fmul fast float %228, %228
  %923 = fmul fast float %232, %232
  %924 = fadd fast float %921, -1.000000e+00
  %925 = fadd fast float %922, -1.000000e+00
  %926 = fadd fast float %923, -1.000000e+00
  %927 = fmul fast float %772, %924
  %928 = fmul fast float %772, %925
  %929 = fmul fast float %772, %926
  %930 = fadd fast float %927, 1.000000e+00
  %931 = fadd fast float %928, 1.000000e+00
  %932 = fadd fast float %929, 1.000000e+00
  %933 = fmul fast float %930, %747
  %934 = fmul fast float %931, %748
  %935 = fmul fast float %932, %749
  br label %936

; <label>:936                                     ; preds = %920, %886, %777, %732
  %937 = phi float [ %882, %777 ], [ %758, %886 ], [ %758, %920 ], [ 0x3FA23C0BE0000000, %732 ]
  %938 = phi float [ %874, %777 ], [ %917, %886 ], [ %933, %920 ], [ 1.000000e+00, %732 ]
  %939 = phi float [ %875, %777 ], [ %918, %886 ], [ %934, %920 ], [ 1.000000e+00, %732 ]
  %940 = phi float [ %876, %777 ], [ %919, %886 ], [ %935, %920 ], [ 1.000000e+00, %732 ]
  %941 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.i32 %941, 1
  %943 = and i32 %942, 1
  %944 = icmp ne i32 %943, 0
  %945 = add i32 %41, 356
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = and i32 %947, 32
  %949 = icmp ne i32 %948, 0
  %950 = and i1 %944, %949
  %951 = select i1 %950, float 1.000000e+00, float %938
  %952 = select i1 %950, float 0x3FD3333340000000, float %939
  %953 = select i1 %950, float 0x3FD3333340000000, float %940
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = and i32 %955, 32
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %1030, label %958

; <label>:958                                     ; preds = %936
  %959 = add i32 %41, 92
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = add i32 %41, 392
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = add i32 %964, 0
  %966 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %965, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %967 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %966, %dx.types.Handle %78, float %545, float %546, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %968 = extractvalue %dx.types.ResRet.f32 %967, 0
  %969 = extractvalue %dx.types.ResRet.f32 %967, 1
  %970 = extractvalue %dx.types.ResRet.f32 %967, 2
  %971 = extractvalue %dx.types.ResRet.f32 %967, 3
  %972 = and i32 %961, 255
  %973 = uitofp i32 %972 to float
  %974 = lshr i32 %961, 8
  %975 = and i32 %974, 255
  %976 = uitofp i32 %975 to float
  %977 = lshr i32 %961, 16
  %978 = and i32 %977, 255
  %979 = uitofp i32 %978 to float
  %980 = fmul fast float %979, 0x3F70101000000000
  %981 = fmul fast float %968, %973
  %982 = fadd fast float %981, %976
  %983 = fmul fast float %982, 0x3F70101000000000
  %984 = fadd fast float %969, -5.000000e-01
  %985 = fadd fast float %971, -5.000000e-01
  %986 = fmul fast float %984, %980
  %987 = fmul fast float %985, %980
  %988 = fadd fast float %986, 5.000000e-01
  %989 = fadd fast float %987, 5.000000e-01
  %990 = fmul fast float %988, 2.000000e+00
  %991 = fadd fast float %990, -1.000000e+00
  %992 = fmul fast float %989, 2.000000e+00
  %993 = fadd fast float %992, -1.000000e+00
  %994 = fadd fast float %991, %993
  %995 = fmul fast float %994, 5.000000e-01
  %996 = fsub fast float %991, %993
  %997 = fmul fast float %996, 5.000000e-01
  %998 = call float @dx.op.unary.f32(i32 6, float %995)  ; FAbs(value)
  %999 = fsub fast float 1.000000e+00, %998
  %1000 = call float @dx.op.unary.f32(i32 6, float %997)  ; FAbs(value)
  %1001 = fsub fast float %999, %1000
  %1002 = call float @dx.op.dot3.f32(i32 55, float %995, float %997, float %1001, float %995, float %997, float %1001)  ; Dot3(ax,ay,az,bx,by,bz)
  %1003 = call float @dx.op.unary.f32(i32 25, float %1002)  ; Rsqrt(value)
  %1004 = fmul fast float %995, %1003
  %1005 = fmul fast float %997, %1003
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = and i32 %1007, 67108864
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1026, label %1010

; <label>:1010                                    ; preds = %958
  %1011 = add i32 %41, 280
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = and i32 %1013, 65535
  %1015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1014)  ; LegacyF16ToF32(value)
  %1016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.i32 %1016, 0
  %1018 = and i32 %1017, 65535
  %1019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1018)  ; LegacyF16ToF32(value)
  %1020 = lshr i32 %1013, 16
  %1021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1020)  ; LegacyF16ToF32(value)
  %1022 = fsub fast float %983, %1021
  %1023 = fmul fast float %1022, %1015
  %1024 = fadd fast float %1023, %1019
  %1025 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  br label %1026

; <label>:1026                                    ; preds = %1010, %958
  %1027 = phi float [ %1025, %1010 ], [ %983, %958 ]
  %1028 = call float @dx.op.dot2.f32(i32 54, float %1004, float %1005, float %449, float %450)  ; Dot2(ax,ay,bx,by)
  %1029 = call float @dx.op.dot2.f32(i32 54, float %1004, float %1005, float %451, float %452)  ; Dot2(ax,ay,bx,by)
  br label %1030

; <label>:1030                                    ; preds = %1026, %936
  %1031 = phi float [ %1027, %1026 ], [ 0x3FD6666660000000, %936 ]
  %1032 = phi float [ %1028, %1026 ], [ 0.000000e+00, %936 ]
  %1033 = phi float [ %1029, %1026 ], [ 0.000000e+00, %936 ]
  %1034 = phi float [ %970, %1026 ], [ 1.000000e+00, %936 ]
  %1035 = add i32 %41, 160
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = lshr i32 %1037, 22
  %1039 = shl nuw nsw i32 %1038, 5
  %1040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1039)  ; LegacyF16ToF32(value)
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = and i32 %1042, 64
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1078, label %1045

; <label>:1045                                    ; preds = %1030
  %1046 = add i32 %41, 408
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = add i32 %1048, 0
  %1050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1049, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.i32 %1051, 0
  %1053 = and i32 %1052, 131072
  %1054 = icmp eq i32 %1053, 0
  %1055 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1050, %dx.types.Handle %78, float %545, float %546, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.ResRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.ResRet.f32 %1055, 2
  %1059 = fmul fast float %1056, %212
  %1060 = fmul fast float %1057, %215
  %1061 = fmul fast float %1058, %218
  br i1 %1054, label %1068, label %1062

; <label>:1062                                    ; preds = %1045
  %1063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1064 = extractvalue %dx.types.CBufRet.f32 %1063, 0
  %1065 = fmul fast float %1064, %1059
  %1066 = fmul fast float %1064, %1060
  %1067 = fmul fast float %1064, %1061
  br label %1068

; <label>:1068                                    ; preds = %1062, %1045
  %1069 = phi float [ %1065, %1062 ], [ %1059, %1045 ]
  %1070 = phi float [ %1066, %1062 ], [ %1060, %1045 ]
  %1071 = phi float [ %1067, %1062 ], [ %1061, %1045 ]
  %1072 = fmul fast float %1069, %1040
  %1073 = select i1 %206, float %1072, float %1069
  %1074 = call float @dx.op.dot3.f32(i32 55, float %1073, float %1070, float %1071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1075 = select i1 %206, float 0.000000e+00, float %1069
  %1076 = select i1 %206, float %1074, float %1070
  %1077 = select i1 %206, float 0.000000e+00, float %1071
  br label %1078

; <label>:1078                                    ; preds = %1068, %1030
  %1079 = phi float [ %1075, %1068 ], [ 0.000000e+00, %1030 ]
  %1080 = phi float [ %1076, %1068 ], [ 0.000000e+00, %1030 ]
  %1081 = phi float [ %1077, %1068 ], [ 0.000000e+00, %1030 ]
  %1082 = add i32 %41, 96
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = and i32 %1084, 255
  %1086 = uitofp i32 %1085 to float
  %1087 = lshr i32 %1084, 8
  %1088 = and i32 %1087, 255
  %1089 = uitofp i32 %1088 to float
  %1090 = call float @dx.op.dot3.f32(i32 55, float %951, float %952, float %953, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1091 = fmul fast float %1089, %1090
  %1092 = fadd fast float %1091, %1086
  %1093 = fmul fast float %1092, 0x3F70101020000000
  %1094 = call float @dx.op.unary.f32(i32 7, float %1093)  ; Saturate(value)
  br label %1095

; <label>:1095                                    ; preds = %1078, %431
  %1096 = phi float [ 0.000000e+00, %431 ], [ %1032, %1078 ]
  %1097 = phi float [ 0.000000e+00, %431 ], [ %1033, %1078 ]
  %1098 = phi float [ 0.000000e+00, %431 ], [ %951, %1078 ]
  %1099 = phi float [ 0.000000e+00, %431 ], [ %952, %1078 ]
  %1100 = phi float [ 0.000000e+00, %431 ], [ %953, %1078 ]
  %1101 = phi float [ 0.000000e+00, %431 ], [ %1079, %1078 ]
  %1102 = phi float [ 0.000000e+00, %431 ], [ %1080, %1078 ]
  %1103 = phi float [ 0.000000e+00, %431 ], [ %1081, %1078 ]
  %1104 = phi float [ 0.000000e+00, %431 ], [ %937, %1078 ]
  %1105 = phi float [ 0.000000e+00, %431 ], [ %733, %1078 ]
  %1106 = phi float [ 0.000000e+00, %431 ], [ %1031, %1078 ]
  %1107 = phi float [ 0.000000e+00, %431 ], [ %1034, %1078 ]
  %1108 = phi float [ 0.000000e+00, %431 ], [ %1094, %1078 ]
  br i1 %379, label %1950, label %1109

; <label>:1109                                    ; preds = %1095
  %1110 = icmp ult i32 %437, 2
  %1111 = add i32 %41, 40
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = add i32 %41, 44
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = or i32 %1116, %1113
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1950, label %1119

; <label>:1119                                    ; preds = %1109
  %1120 = and i32 %1113, 262144
  %1121 = icmp ne i32 %1120, 0
  %1122 = select i1 %1121, float %44, float 1.000000e+00
  %1123 = select i1 %1121, float %45, float 0.000000e+00
  %1124 = select i1 %1121, float %46, float 0.000000e+00
  %1125 = select i1 %1121, float %47, float 1.000000e+00
  %1126 = select i1 %1121, float %48, float %64
  %1127 = select i1 %1121, float %49, float %65
  %1128 = add i32 %41, 300
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = lshr i32 %1130, 16
  %1132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1131)  ; LegacyF16ToF32(value)
  %1133 = fmul fast float %1132, 0x3F50624DE0000000
  %1134 = add i32 %41, 104
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = lshr i32 %1136, 16
  %1138 = and i32 %1137, 255
  %1139 = lshr i32 %1136, 24
  %1140 = add i32 %41, 308
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = and i32 %1142, 65535
  %1144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1143)  ; LegacyF16ToF32(value)
  %1145 = lshr i32 %1142, 16
  %1146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1145)  ; LegacyF16ToF32(value)
  %1147 = add i32 %41, 48
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = lshr i32 %1149, 22
  %1151 = shl nuw nsw i32 %1150, 5
  %1152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1151)  ; LegacyF16ToF32(value)
  %1153 = shl i32 %1149, 4
  %1154 = and i32 %1153, 32752
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = lshr i32 %1149, 7
  %1157 = and i32 %1156, 32752
  %1158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1157)  ; LegacyF16ToF32(value)
  %1159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1159, 3
  %1161 = fmul fast float %1160, 1.000000e+03
  %1162 = fmul fast float %289, %1161
  %1163 = call float @dx.op.unary.f32(i32 22, float %1162)  ; Frc(value)
  %1164 = fadd fast float %1163, %279
  %1165 = fmul fast float %290, %1161
  %1166 = call float @dx.op.unary.f32(i32 22, float %1165)  ; Frc(value)
  %1167 = fadd fast float %1166, %281
  %1168 = fmul fast float %1133, %1161
  %1169 = call float @dx.op.unary.f32(i32 22, float %1168)  ; Frc(value)
  %1170 = fmul fast float %1169, 0x401921FB60000000
  %1171 = fadd fast float %1170, %1152
  %1172 = call float @dx.op.unary.f32(i32 13, float %1171)  ; Sin(value)
  %1173 = call float @dx.op.unary.f32(i32 12, float %1171)  ; Cos(value)
  %1174 = fsub fast float -0.000000e+00, %1172
  %1175 = fadd fast float %1126, -5.000000e-01
  %1176 = fadd fast float %1127, -5.000000e-01
  %1177 = fmul fast float %1144, %1175
  %1178 = fmul fast float %1146, %1176
  %1179 = fadd fast float %1177, 5.000000e-01
  %1180 = fadd fast float %1178, 5.000000e-01
  %1181 = fmul fast float %1155, %1179
  %1182 = fmul fast float %1158, %1180
  %1183 = fmul fast float %1173, %1181
  %1184 = call float @dx.op.tertiary.f32(i32 46, float %1174, float %1182, float %1183)  ; FMad(a,b,c)
  %1185 = fmul fast float %1172, %1181
  %1186 = call float @dx.op.tertiary.f32(i32 46, float %1173, float %1182, float %1185)  ; FMad(a,b,c)
  %1187 = fadd fast float %1164, %1184
  %1188 = fadd fast float %1167, %1186
  %1189 = icmp ugt i32 %1138, 1
  %1190 = icmp ugt i32 %1136, 33554431
  %1191 = or i1 %1190, %1189
  br i1 %1191, label %1192, label %1217

; <label>:1192                                    ; preds = %1119
  %1193 = add i32 %41, 244
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = lshr i32 %1195, 16
  %1197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1196)  ; LegacyF16ToF32(value)
  %1198 = fmul fast float %1160, %1197
  %1199 = call float @dx.op.unary.f32(i32 22, float %1198)  ; Frc(value)
  %1200 = mul nuw nsw i32 %1138, %1139
  %1201 = uitofp i32 %1200 to float
  %1202 = fmul fast float %1199, %1201
  %1203 = call float @dx.op.unary.f32(i32 27, float %1202)  ; Round_ni(value)
  %1204 = fptoui float %1203 to i32
  %1205 = urem i32 %1204, %1138
  %1206 = udiv i32 %1204, %1139
  %1207 = call float @dx.op.unary.f32(i32 22, float %1187)  ; Frc(value)
  %1208 = call float @dx.op.unary.f32(i32 22, float %1188)  ; Frc(value)
  %1209 = uitofp i32 %1205 to float
  %1210 = uitofp i32 %1206 to float
  %1211 = fadd fast float %1207, %1209
  %1212 = fadd fast float %1208, %1210
  %1213 = uitofp i32 %1138 to float
  %1214 = uitofp i32 %1139 to float
  %1215 = fdiv fast float %1211, %1213
  %1216 = fdiv fast float %1212, %1214
  br label %1217

; <label>:1217                                    ; preds = %1192, %1119
  %1218 = phi float [ %1215, %1192 ], [ %1187, %1119 ]
  %1219 = phi float [ %1216, %1192 ], [ %1188, %1119 ]
  %1220 = and i32 %1113, 16777216
  %1221 = icmp eq i32 %1220, 0
  br i1 %1221, label %1331, label %1222

; <label>:1222                                    ; preds = %1217
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.CBufRet.f32 %1223, 1
  %1226 = extractvalue %dx.types.CBufRet.f32 %1223, 2
  %1227 = fadd fast float %1224, %145
  %1228 = fadd fast float %1225, %146
  %1229 = fadd fast float %1226, %147
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 0
  %1232 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  %1233 = icmp eq i32 %42, 65535
  br i1 %1233, label %1328, label %1234

; <label>:1234                                    ; preds = %1222
  %1235 = lshr i32 %42, 1
  %1236 = shl i32 %1235, 2
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = and i32 %42, 1
  %1240 = icmp ne i32 %1239, 0
  %1241 = lshr i32 %1238, 16
  %1242 = and i32 %1238, 65535
  %1243 = select i1 %1240, i32 %1241, i32 %1242
  %1244 = icmp eq i32 %1243, 65535
  br i1 %1244, label %1324, label %1245

; <label>:1245                                    ; preds = %1234
  %1246 = mul nuw nsw i32 %1243, 40
  %1247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1246, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.ResRet.f32 %1247, 1
  %1250 = extractvalue %dx.types.ResRet.f32 %1247, 2
  %1251 = add nuw nsw i32 %1246, 12
  %1252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.f32 %1252, 0
  %1254 = extractvalue %dx.types.ResRet.f32 %1252, 1
  %1255 = extractvalue %dx.types.ResRet.f32 %1252, 2
  %1256 = add nuw nsw i32 %1246, 24
  %1257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.f32 %1257, 0
  %1259 = extractvalue %dx.types.ResRet.f32 %1257, 1
  %1260 = extractvalue %dx.types.ResRet.f32 %1257, 2
  %1261 = add nuw nsw i32 %1246, 36
  %1262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  %1264 = fsub fast float %1227, %1248
  %1265 = fsub fast float %1228, %1249
  %1266 = fsub fast float %1229, %1250
  %1267 = fmul fast float %1263, %1264
  %1268 = fmul fast float %1263, %1265
  %1269 = fmul fast float %1263, %1266
  %1270 = call float @dx.op.unary.f32(i32 27, float %1267)  ; Round_ni(value)
  %1271 = call float @dx.op.unary.f32(i32 27, float %1268)  ; Round_ni(value)
  %1272 = call float @dx.op.unary.f32(i32 27, float %1269)  ; Round_ni(value)
  %1273 = fadd fast float %1270, 5.000000e-01
  %1274 = fadd fast float %1271, 5.000000e-01
  %1275 = fadd fast float %1272, 5.000000e-01
  %1276 = fmul fast float %1273, %1253
  %1277 = fmul fast float %1274, %1254
  %1278 = fmul fast float %1275, %1255
  %1279 = shl i32 %42, 2
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = add i32 %1281, 0
  %1283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1284 = call float @dx.op.unary.f32(i32 22, float %1276)  ; Frc(value)
  %1285 = call float @dx.op.unary.f32(i32 22, float %1277)  ; Frc(value)
  %1286 = call float @dx.op.unary.f32(i32 22, float %1278)  ; Frc(value)
  %1287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1283, %dx.types.Handle %36, float %1284, float %1285, float %1286, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 0
  %1289 = extractvalue %dx.types.ResRet.f32 %1287, 1
  %1290 = extractvalue %dx.types.ResRet.f32 %1287, 2
  %1291 = fmul fast float %1288, 1.023000e+03
  %1292 = fmul fast float %1289, 1.023000e+03
  %1293 = fmul fast float %1290, 1.023000e+03
  %1294 = fadd fast float %1291, 5.000000e-01
  %1295 = fadd fast float %1292, 5.000000e-01
  %1296 = fadd fast float %1293, 5.000000e-01
  %1297 = call float @dx.op.unary.f32(i32 27, float %1294)  ; Round_ni(value)
  %1298 = call float @dx.op.unary.f32(i32 27, float %1295)  ; Round_ni(value)
  %1299 = call float @dx.op.unary.f32(i32 27, float %1296)  ; Round_ni(value)
  %1300 = fsub fast float %1267, %1270
  %1301 = fsub fast float %1268, %1271
  %1302 = fsub fast float %1269, %1272
  %1303 = fmul fast float %1300, 7.500000e-01
  %1304 = fmul fast float %1301, 7.500000e-01
  %1305 = fmul fast float %1302, 7.500000e-01
  %1306 = fadd fast float %1270, 1.250000e-01
  %1307 = fadd fast float %1306, %1303
  %1308 = fadd fast float %1307, %1297
  %1309 = fadd fast float %1271, 1.250000e-01
  %1310 = fadd fast float %1309, %1304
  %1311 = fadd fast float %1310, %1298
  %1312 = fadd fast float %1272, 1.250000e-01
  %1313 = fadd fast float %1312, %1305
  %1314 = fadd fast float %1313, %1299
  %1315 = fmul fast float %1308, %1258
  %1316 = fmul fast float %1311, %1259
  %1317 = fmul fast float %1314, %1260
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = add i32 %1319, 0
  %1321 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1320, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1321, %dx.types.Handle %34, float %1315, float %1316, float %1317, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1323 = extractvalue %dx.types.ResRet.f32 %1322, 0
  br label %1324

; <label>:1324                                    ; preds = %1245, %1234
  %1325 = phi float [ %1323, %1245 ], [ -1.000000e+00, %1234 ]
  %1326 = fadd fast float %1325, %1232
  %1327 = call float @dx.op.unary.f32(i32 7, float %1326)  ; Saturate(value)
  br label %1328

; <label>:1328                                    ; preds = %1324, %1222
  %1329 = phi float [ %1327, %1324 ], [ %1232, %1222 ]
  %1330 = fmul fast float %1329, %434
  br label %1331

; <label>:1331                                    ; preds = %1328, %1217
  %1332 = phi float [ %1330, %1328 ], [ %434, %1217 ]
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = and i32 %1334, 256
  %1336 = icmp eq i32 %1335, 0
  br i1 %1336, label %1383, label %1337

; <label>:1337                                    ; preds = %1331
  %1338 = add i32 %41, 444
  %1339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1338, i32 undef)  ; BufferLoad(srv,index,wot)
  %1340 = extractvalue %dx.types.ResRet.i32 %1339, 0
  %1341 = add i32 %1340, 0
  %1342 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1341, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1343 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1342, %dx.types.Handle %79, float %1218, float %1219, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1344 = extractvalue %dx.types.ResRet.f32 %1343, 0
  %1345 = add i32 %41, 116
  %1346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1345, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.i32 %1346, 0
  %1348 = shl i32 %1347, 4
  %1349 = and i32 %1348, 32752
  %1350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1349)  ; LegacyF16ToF32(value)
  %1351 = lshr i32 %1347, 7
  %1352 = and i32 %1351, 32752
  %1353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1352)  ; LegacyF16ToF32(value)
  %1354 = fsub fast float 1.000000e+00, %1332
  %1355 = call float @dx.op.binary.f32(i32 35, float %1354, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1356 = bitcast float %1332 to i32
  %1357 = sitofp i32 %1356 to float
  %1358 = fadd fast float %1357, 0xC1CFBF8940000000
  %1359 = fmul fast float %1353, %1358
  %1360 = fadd fast float %1359, 0x41CFBF8940000000
  %1361 = fptosi float %1360 to i32
  %1362 = bitcast i32 %1361 to float
  %1363 = bitcast float %1355 to i32
  %1364 = sitofp i32 %1363 to float
  %1365 = fadd fast float %1364, 0xC1CFBF8940000000
  %1366 = fmul fast float %1365, %1353
  %1367 = fadd fast float %1366, 0x41CFBF8940000000
  %1368 = fptosi float %1367 to i32
  %1369 = bitcast i32 %1368 to float
  %1370 = fmul fast float %1362, %1350
  %1371 = fmul fast float %1369, %1350
  %1372 = fsub fast float %1355, %1370
  %1373 = fadd fast float %1371, %1355
  %1374 = call float @dx.op.unary.f32(i32 7, float %1372)  ; Saturate(value)
  %1375 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1376 = fsub fast float %1344, %1374
  %1377 = fsub fast float %1375, %1374
  %1378 = bitcast float %1377 to i32
  %1379 = sub nsw i32 2129859010, %1378
  %1380 = bitcast i32 %1379 to float
  %1381 = fmul fast float %1380, %1376
  %1382 = call float @dx.op.unary.f32(i32 7, float %1381)  ; Saturate(value)
  br label %1383

; <label>:1383                                    ; preds = %1337, %1331
  %1384 = phi float [ %1382, %1337 ], [ %1332, %1331 ]
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = and i32 %1386, 128
  %1388 = icmp eq i32 %1387, 0
  br i1 %1388, label %1405, label %1389

; <label>:1389                                    ; preds = %1383
  %1390 = add i32 %41, 428
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1390, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = add i32 %1392, 0
  %1394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1393, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1395 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1394, %dx.types.Handle %79, float %1218, float %1219, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1396 = extractvalue %dx.types.ResRet.f32 %1395, 0
  %1397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.i32 %1397, 0
  %1399 = and i32 %1398, 524288
  %1400 = icmp ne i32 %1399, 0
  %1401 = fcmp fast ogt float %1396, 0x3FE0101020000000
  %1402 = select i1 %1401, float 1.000000e+00, float 0.000000e+00
  %1403 = select i1 %1400, float %1402, float %1396
  %1404 = fmul fast float %1403, %1384
  br label %1405

; <label>:1405                                    ; preds = %1389, %1383
  %1406 = phi float [ %1404, %1389 ], [ %1384, %1383 ]
  %1407 = fcmp fast ult float %1406, 0x3F70101020000000
  br i1 %1407, label %1950, label %1408

; <label>:1408                                    ; preds = %1405
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = and i32 %1410, 16
  %1412 = icmp eq i32 %1411, 0
  br i1 %1412, label %1611, label %1413

; <label>:1413                                    ; preds = %1408
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = add i32 %41, 380
  %1417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1416, i32 undef)  ; BufferLoad(srv,index,wot)
  %1418 = extractvalue %dx.types.ResRet.i32 %1417, 0
  %1419 = add i32 %1418, 0
  %1420 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1419, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1421 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1420, %dx.types.Handle %78, float %1218, float %1219, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1422 = extractvalue %dx.types.ResRet.f32 %1421, 0
  %1423 = extractvalue %dx.types.ResRet.f32 %1421, 1
  %1424 = extractvalue %dx.types.ResRet.f32 %1421, 2
  %1425 = extractvalue %dx.types.ResRet.f32 %1421, 3
  %1426 = and i32 %1415, 255
  %1427 = uitofp i32 %1426 to float
  %1428 = lshr i32 %1415, 8
  %1429 = and i32 %1428, 255
  %1430 = uitofp i32 %1429 to float
  %1431 = fmul fast float %1425, %1427
  %1432 = fadd fast float %1431, %1430
  %1433 = fmul fast float %1432, 0x3F70101000000000
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = and i32 %1435, 512
  %1437 = icmp eq i32 %1436, 0
  br i1 %1437, label %1446, label %1438

; <label>:1438                                    ; preds = %1413
  %1439 = add i32 %41, 460
  %1440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1439, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.i32 %1440, 0
  %1442 = add i32 %1441, 0
  %1443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1442, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1444 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1443, %dx.types.Handle %79, float %1218, float %1219, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  br label %1446

; <label>:1446                                    ; preds = %1438, %1413
  %1447 = phi float [ %1445, %1438 ], [ 1.000000e+00, %1413 ]
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = and i32 %1449, 33554432
  %1451 = icmp eq i32 %1450, 0
  br i1 %1451, label %1558, label %1452

; <label>:1452                                    ; preds = %1446
  %1453 = add i32 %41, 240
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 65535
  %1457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1456)  ; LegacyF16ToF32(value)
  %1458 = lshr i32 %1455, 16
  %1459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1458)  ; LegacyF16ToF32(value)
  %1460 = add i32 %41, 244
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = and i32 %1462, 65535
  %1464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1463)  ; LegacyF16ToF32(value)
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = lshr i32 %1466, 24
  %1468 = uitofp i32 %1467 to float
  %1469 = fmul fast float %1468, 0x3F70101020000000
  %1470 = and i32 %1466, 255
  %1471 = uitofp i32 %1470 to float
  %1472 = fmul fast float %1471, 0x3F70101020000000
  %1473 = lshr i32 %1466, 8
  %1474 = and i32 %1473, 255
  %1475 = uitofp i32 %1474 to float
  %1476 = fmul fast float %1475, 0x3F70101020000000
  %1477 = lshr i32 %1466, 16
  %1478 = and i32 %1477, 255
  %1479 = uitofp i32 %1478 to float
  %1480 = fmul fast float %1479, 0x3F70101020000000
  %1481 = add i32 %41, 236
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1481, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = lshr i32 %1483, 24
  %1485 = uitofp i32 %1484 to float
  %1486 = fmul fast float %1485, 0x3F70101020000000
  %1487 = and i32 %1483, 255
  %1488 = uitofp i32 %1487 to float
  %1489 = fmul fast float %1488, 0x3F70101020000000
  %1490 = lshr i32 %1483, 8
  %1491 = and i32 %1490, 255
  %1492 = uitofp i32 %1491 to float
  %1493 = fmul fast float %1492, 0x3F70101020000000
  %1494 = lshr i32 %1483, 16
  %1495 = and i32 %1494, 255
  %1496 = uitofp i32 %1495 to float
  %1497 = fmul fast float %1496, 0x3F70101020000000
  %1498 = bitcast float %1422 to i32
  %1499 = ashr i32 %1498, 1
  %1500 = sub nsw i32 1597463174, %1499
  %1501 = bitcast i32 %1500 to float
  %1502 = fmul fast float %1422, 5.000000e-01
  %1503 = fmul fast float %1501, %1501
  %1504 = fmul fast float %1503, %1502
  %1505 = fsub fast float 1.500000e+00, %1504
  %1506 = fmul fast float %1501, %1422
  %1507 = fmul fast float %1506, %1505
  %1508 = bitcast float %1423 to i32
  %1509 = ashr i32 %1508, 1
  %1510 = sub nsw i32 1597463174, %1509
  %1511 = bitcast i32 %1510 to float
  %1512 = fmul fast float %1423, 5.000000e-01
  %1513 = fmul fast float %1511, %1511
  %1514 = fmul fast float %1513, %1512
  %1515 = fsub fast float 1.500000e+00, %1514
  %1516 = fmul fast float %1511, %1423
  %1517 = fmul fast float %1516, %1515
  %1518 = bitcast float %1424 to i32
  %1519 = ashr i32 %1518, 1
  %1520 = sub nsw i32 1597463174, %1519
  %1521 = bitcast i32 %1520 to float
  %1522 = fmul fast float %1424, 5.000000e-01
  %1523 = fmul fast float %1521, %1521
  %1524 = fmul fast float %1523, %1522
  %1525 = fsub fast float 1.500000e+00, %1524
  %1526 = fmul fast float %1521, %1424
  %1527 = fmul fast float %1526, %1525
  %1528 = fsub fast float %1507, %1489
  %1529 = fsub fast float %1517, %1493
  %1530 = fsub fast float %1527, %1497
  %1531 = fmul fast float %1528, %1457
  %1532 = fmul fast float %1529, %1459
  %1533 = fmul fast float %1530, %1464
  %1534 = fadd fast float %1531, %1472
  %1535 = fadd fast float %1532, %1476
  %1536 = fadd fast float %1533, %1480
  %1537 = call float @dx.op.unary.f32(i32 7, float %1534)  ; Saturate(value)
  %1538 = call float @dx.op.unary.f32(i32 7, float %1535)  ; Saturate(value)
  %1539 = call float @dx.op.unary.f32(i32 7, float %1536)  ; Saturate(value)
  %1540 = fmul fast float %1537, %1537
  %1541 = fmul fast float %1538, %1538
  %1542 = fmul fast float %1539, %1539
  %1543 = fsub fast float %1540, %1422
  %1544 = fsub fast float %1541, %1423
  %1545 = fsub fast float %1542, %1424
  %1546 = fmul fast float %1543, %1447
  %1547 = fmul fast float %1544, %1447
  %1548 = fmul fast float %1545, %1447
  %1549 = fadd fast float %1546, %1422
  %1550 = fadd fast float %1547, %1423
  %1551 = fadd fast float %1548, %1424
  %1552 = fadd fast float %1469, %1433
  %1553 = fsub fast float %1552, %1486
  %1554 = call float @dx.op.unary.f32(i32 7, float %1553)  ; Saturate(value)
  %1555 = fsub fast float %1554, %1433
  %1556 = fmul fast float %1555, %1447
  %1557 = fadd fast float %1556, %1433
  br label %1611

; <label>:1558                                    ; preds = %1446
  %1559 = and i32 %1449, 134217728
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1595, label %1561

; <label>:1561                                    ; preds = %1558
  %1562 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %1563 = call float @dx.op.unary.f32(i32 24, float %270)  ; Sqrt(value)
  %1564 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %1565 = fadd fast float %1562, -5.000000e-01
  %1566 = fadd fast float %1563, -5.000000e-01
  %1567 = fadd fast float %1564, -5.000000e-01
  %1568 = fmul fast float %1565, %1447
  %1569 = fmul fast float %1566, %1447
  %1570 = fmul fast float %1567, %1447
  %1571 = fadd fast float %1568, 5.000000e-01
  %1572 = fadd fast float %1569, 5.000000e-01
  %1573 = fadd fast float %1570, 5.000000e-01
  %1574 = call float @dx.op.unary.f32(i32 24, float %1422)  ; Sqrt(value)
  %1575 = call float @dx.op.unary.f32(i32 24, float %1423)  ; Sqrt(value)
  %1576 = call float @dx.op.unary.f32(i32 24, float %1424)  ; Sqrt(value)
  %1577 = fmul fast float %1571, 2.000000e+00
  %1578 = fsub fast float 1.000000e+00, %1577
  %1579 = fmul fast float %1578, %1574
  %1580 = fadd fast float %1579, %1577
  %1581 = fmul fast float %1580, %1574
  %1582 = fmul fast float %1572, 2.000000e+00
  %1583 = fsub fast float 1.000000e+00, %1582
  %1584 = fmul fast float %1583, %1575
  %1585 = fadd fast float %1584, %1582
  %1586 = fmul fast float %1585, %1575
  %1587 = fmul fast float %1573, 2.000000e+00
  %1588 = fsub fast float 1.000000e+00, %1587
  %1589 = fmul fast float %1588, %1576
  %1590 = fadd fast float %1589, %1587
  %1591 = fmul fast float %1590, %1576
  %1592 = fmul fast float %1581, %1581
  %1593 = fmul fast float %1586, %1586
  %1594 = fmul fast float %1591, %1591
  br label %1611

; <label>:1595                                    ; preds = %1558
  %1596 = fmul fast float %266, %266
  %1597 = fmul fast float %270, %270
  %1598 = fmul fast float %274, %274
  %1599 = fadd fast float %1596, -1.000000e+00
  %1600 = fadd fast float %1597, -1.000000e+00
  %1601 = fadd fast float %1598, -1.000000e+00
  %1602 = fmul fast float %1447, %1599
  %1603 = fmul fast float %1447, %1600
  %1604 = fmul fast float %1447, %1601
  %1605 = fadd fast float %1602, 1.000000e+00
  %1606 = fadd fast float %1603, 1.000000e+00
  %1607 = fadd fast float %1604, 1.000000e+00
  %1608 = fmul fast float %1605, %1422
  %1609 = fmul fast float %1606, %1423
  %1610 = fmul fast float %1607, %1424
  br label %1611

; <label>:1611                                    ; preds = %1595, %1561, %1452, %1408
  %1612 = phi float [ %1557, %1452 ], [ %1433, %1561 ], [ %1433, %1595 ], [ 0x3FA23C0BE0000000, %1408 ]
  %1613 = phi float [ %1549, %1452 ], [ %1592, %1561 ], [ %1608, %1595 ], [ 1.000000e+00, %1408 ]
  %1614 = phi float [ %1550, %1452 ], [ %1593, %1561 ], [ %1609, %1595 ], [ 1.000000e+00, %1408 ]
  %1615 = phi float [ %1551, %1452 ], [ %1594, %1561 ], [ %1610, %1595 ], [ 1.000000e+00, %1408 ]
  %1616 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.i32 %1616, 1
  %1618 = and i32 %1617, 1
  %1619 = icmp ne i32 %1618, 0
  %1620 = add i32 %41, 356
  %1621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1620, i32 undef)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = and i32 %1622, 32
  %1624 = icmp ne i32 %1623, 0
  %1625 = and i1 %1619, %1624
  %1626 = select i1 %1625, float 1.000000e+00, float %1613
  %1627 = select i1 %1625, float 0x3FD3333340000000, float %1614
  %1628 = select i1 %1625, float 0x3FD3333340000000, float %1615
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = and i32 %1630, 32
  %1632 = icmp eq i32 %1631, 0
  br i1 %1632, label %1705, label %1633

; <label>:1633                                    ; preds = %1611
  %1634 = add i32 %41, 108
  %1635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1634, i32 undef)  ; BufferLoad(srv,index,wot)
  %1636 = extractvalue %dx.types.ResRet.i32 %1635, 0
  %1637 = add i32 %41, 396
  %1638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1637, i32 undef)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.i32 %1638, 0
  %1640 = add i32 %1639, 0
  %1641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1640, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1642 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1641, %dx.types.Handle %78, float %1218, float %1219, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1643 = extractvalue %dx.types.ResRet.f32 %1642, 0
  %1644 = extractvalue %dx.types.ResRet.f32 %1642, 1
  %1645 = extractvalue %dx.types.ResRet.f32 %1642, 2
  %1646 = extractvalue %dx.types.ResRet.f32 %1642, 3
  %1647 = and i32 %1636, 255
  %1648 = uitofp i32 %1647 to float
  %1649 = lshr i32 %1636, 8
  %1650 = and i32 %1649, 255
  %1651 = uitofp i32 %1650 to float
  %1652 = lshr i32 %1636, 16
  %1653 = and i32 %1652, 255
  %1654 = uitofp i32 %1653 to float
  %1655 = fmul fast float %1654, 0x3F70101000000000
  %1656 = fmul fast float %1643, %1648
  %1657 = fadd fast float %1656, %1651
  %1658 = fmul fast float %1657, 0x3F70101000000000
  %1659 = fadd fast float %1644, -5.000000e-01
  %1660 = fadd fast float %1646, -5.000000e-01
  %1661 = fmul fast float %1659, %1655
  %1662 = fmul fast float %1660, %1655
  %1663 = fadd fast float %1661, 5.000000e-01
  %1664 = fadd fast float %1662, 5.000000e-01
  %1665 = fmul fast float %1663, 2.000000e+00
  %1666 = fadd fast float %1665, -1.000000e+00
  %1667 = fmul fast float %1664, 2.000000e+00
  %1668 = fadd fast float %1667, -1.000000e+00
  %1669 = fadd fast float %1666, %1668
  %1670 = fmul fast float %1669, 5.000000e-01
  %1671 = fsub fast float %1666, %1668
  %1672 = fmul fast float %1671, 5.000000e-01
  %1673 = call float @dx.op.unary.f32(i32 6, float %1670)  ; FAbs(value)
  %1674 = fsub fast float 1.000000e+00, %1673
  %1675 = call float @dx.op.unary.f32(i32 6, float %1672)  ; FAbs(value)
  %1676 = fsub fast float %1674, %1675
  %1677 = call float @dx.op.dot3.f32(i32 55, float %1670, float %1672, float %1676, float %1670, float %1672, float %1676)  ; Dot3(ax,ay,az,bx,by,bz)
  %1678 = call float @dx.op.unary.f32(i32 25, float %1677)  ; Rsqrt(value)
  %1679 = fmul fast float %1670, %1678
  %1680 = fmul fast float %1672, %1678
  %1681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1682 = extractvalue %dx.types.ResRet.i32 %1681, 0
  %1683 = and i32 %1682, 67108864
  %1684 = icmp eq i32 %1683, 0
  br i1 %1684, label %1701, label %1685

; <label>:1685                                    ; preds = %1633
  %1686 = add i32 %41, 296
  %1687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1686, i32 undef)  ; BufferLoad(srv,index,wot)
  %1688 = extractvalue %dx.types.ResRet.i32 %1687, 0
  %1689 = and i32 %1688, 65535
  %1690 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1689)  ; LegacyF16ToF32(value)
  %1691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.i32 %1691, 0
  %1693 = and i32 %1692, 65535
  %1694 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1693)  ; LegacyF16ToF32(value)
  %1695 = lshr i32 %1688, 16
  %1696 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1695)  ; LegacyF16ToF32(value)
  %1697 = fsub fast float %1658, %1696
  %1698 = fmul fast float %1697, %1690
  %1699 = fadd fast float %1698, %1694
  %1700 = call float @dx.op.unary.f32(i32 7, float %1699)  ; Saturate(value)
  br label %1701

; <label>:1701                                    ; preds = %1685, %1633
  %1702 = phi float [ %1700, %1685 ], [ %1658, %1633 ]
  %1703 = call float @dx.op.dot2.f32(i32 54, float %1679, float %1680, float %1122, float %1123)  ; Dot2(ax,ay,bx,by)
  %1704 = call float @dx.op.dot2.f32(i32 54, float %1679, float %1680, float %1124, float %1125)  ; Dot2(ax,ay,bx,by)
  br label %1705

; <label>:1705                                    ; preds = %1701, %1611
  %1706 = phi float [ %1702, %1701 ], [ 0x3FD6666660000000, %1611 ]
  %1707 = phi float [ %1703, %1701 ], [ 0.000000e+00, %1611 ]
  %1708 = phi float [ %1704, %1701 ], [ 0.000000e+00, %1611 ]
  %1709 = phi float [ %1645, %1701 ], [ 1.000000e+00, %1611 ]
  %1710 = add i32 %41, 176
  %1711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1712 = extractvalue %dx.types.ResRet.i32 %1711, 0
  %1713 = lshr i32 %1712, 22
  %1714 = shl nuw nsw i32 %1713, 5
  %1715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1714)  ; LegacyF16ToF32(value)
  %1716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.i32 %1716, 0
  %1718 = and i32 %1717, 64
  %1719 = icmp eq i32 %1718, 0
  br i1 %1719, label %1753, label %1720

; <label>:1720                                    ; preds = %1705
  %1721 = add i32 %41, 412
  %1722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1721, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.i32 %1722, 0
  %1724 = add i32 %1723, 0
  %1725 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1724, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1727 = extractvalue %dx.types.ResRet.i32 %1726, 0
  %1728 = and i32 %1727, 131072
  %1729 = icmp eq i32 %1728, 0
  %1730 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1725, %dx.types.Handle %78, float %1218, float %1219, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1731 = extractvalue %dx.types.ResRet.f32 %1730, 0
  %1732 = extractvalue %dx.types.ResRet.f32 %1730, 1
  %1733 = extractvalue %dx.types.ResRet.f32 %1730, 2
  %1734 = fmul fast float %1731, %254
  %1735 = fmul fast float %1732, %257
  %1736 = fmul fast float %1733, %260
  br i1 %1729, label %1743, label %1737

; <label>:1737                                    ; preds = %1720
  %1738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1739 = extractvalue %dx.types.CBufRet.f32 %1738, 0
  %1740 = fmul fast float %1739, %1734
  %1741 = fmul fast float %1739, %1735
  %1742 = fmul fast float %1739, %1736
  br label %1743

; <label>:1743                                    ; preds = %1737, %1720
  %1744 = phi float [ %1740, %1737 ], [ %1734, %1720 ]
  %1745 = phi float [ %1741, %1737 ], [ %1735, %1720 ]
  %1746 = phi float [ %1742, %1737 ], [ %1736, %1720 ]
  %1747 = fmul fast float %1744, %1715
  %1748 = select i1 %206, float %1747, float %1744
  %1749 = call float @dx.op.dot3.f32(i32 55, float %1748, float %1745, float %1746, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1750 = select i1 %206, float 0.000000e+00, float %1744
  %1751 = select i1 %206, float %1749, float %1745
  %1752 = select i1 %206, float 0.000000e+00, float %1746
  br label %1753

; <label>:1753                                    ; preds = %1743, %1705
  %1754 = phi float [ %1750, %1743 ], [ 0.000000e+00, %1705 ]
  %1755 = phi float [ %1751, %1743 ], [ 0.000000e+00, %1705 ]
  %1756 = phi float [ %1752, %1743 ], [ 0.000000e+00, %1705 ]
  %1757 = add i32 %41, 112
  %1758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1757, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.i32 %1758, 0
  %1760 = and i32 %1759, 255
  %1761 = uitofp i32 %1760 to float
  %1762 = lshr i32 %1759, 8
  %1763 = and i32 %1762, 255
  %1764 = uitofp i32 %1763 to float
  %1765 = call float @dx.op.dot3.f32(i32 55, float %1626, float %1627, float %1628, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1766 = fmul fast float %1764, %1765
  %1767 = fadd fast float %1766, %1761
  %1768 = fmul fast float %1767, 0x3F70101020000000
  %1769 = call float @dx.op.unary.f32(i32 7, float %1768)  ; Saturate(value)
  br i1 %1110, label %1770, label %1778

; <label>:1770                                    ; preds = %1753
  %1771 = fsub fast float 1.000000e+00, %1406
  %1772 = fmul fast float %1771, %1098
  %1773 = fmul fast float %1771, %1099
  %1774 = fmul fast float %1771, %1100
  %1775 = fmul fast float %1771, %1101
  %1776 = fmul fast float %1771, %1102
  %1777 = fmul fast float %1771, %1103
  br label %1778

; <label>:1778                                    ; preds = %1770, %1753
  %1779 = phi float [ %1772, %1770 ], [ %1098, %1753 ]
  %1780 = phi float [ %1773, %1770 ], [ %1099, %1753 ]
  %1781 = phi float [ %1774, %1770 ], [ %1100, %1753 ]
  %1782 = phi float [ %1775, %1770 ], [ %1101, %1753 ]
  %1783 = phi float [ %1776, %1770 ], [ %1102, %1753 ]
  %1784 = phi float [ %1777, %1770 ], [ %1103, %1753 ]
  %1785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.i32 %1785, 0
  %1787 = and i32 %1786, 3
  %1788 = icmp eq i32 %1787, 3
  br i1 %1788, label %1867, label %1789

; <label>:1789                                    ; preds = %1778
  %1790 = and i32 %1786, 16
  %1791 = icmp ne i32 %1790, 0
  %1792 = select i1 %1791, float %1406, float 0.000000e+00
  %1793 = icmp eq i32 %1787, 0
  br i1 %1793, label %1794, label %1822

; <label>:1794                                    ; preds = %1789
  %1795 = and i32 %1786, 64
  %1796 = icmp ne i32 %1795, 0
  %1797 = select i1 %1796, float %1406, float 0.000000e+00
  %1798 = fsub fast float %1626, %1779
  %1799 = fsub fast float %1627, %1780
  %1800 = fsub fast float %1628, %1781
  %1801 = fmul fast float %1792, %1798
  %1802 = fmul fast float %1792, %1799
  %1803 = fmul fast float %1792, %1800
  %1804 = fadd fast float %1801, %1779
  %1805 = fadd fast float %1802, %1780
  %1806 = fadd fast float %1803, %1781
  %1807 = fsub fast float %1612, %1104
  %1808 = fmul fast float %1792, %1807
  %1809 = fadd fast float %1808, %1104
  %1810 = fsub fast float %1754, %1782
  %1811 = fsub fast float %1755, %1783
  %1812 = fsub fast float %1756, %1784
  %1813 = fmul fast float %1797, %1810
  %1814 = fmul fast float %1797, %1811
  %1815 = fmul fast float %1797, %1812
  %1816 = fadd fast float %1813, %1782
  %1817 = fadd fast float %1814, %1783
  %1818 = fadd fast float %1815, %1784
  %1819 = fsub fast float %1769, %1108
  %1820 = fmul fast float %1792, %1819
  %1821 = fadd fast float %1820, %1108
  br label %1867

; <label>:1822                                    ; preds = %1789
  %1823 = icmp eq i32 %1787, 1
  br i1 %1823, label %1824, label %1837

; <label>:1824                                    ; preds = %1822
  %1825 = fadd fast float %1626, -1.000000e+00
  %1826 = fadd fast float %1627, -1.000000e+00
  %1827 = fadd fast float %1628, -1.000000e+00
  %1828 = fmul fast float %1792, %1825
  %1829 = fmul fast float %1792, %1826
  %1830 = fmul fast float %1792, %1827
  %1831 = fadd fast float %1828, 1.000000e+00
  %1832 = fadd fast float %1829, 1.000000e+00
  %1833 = fadd fast float %1830, 1.000000e+00
  %1834 = fmul fast float %1831, %1779
  %1835 = fmul fast float %1832, %1780
  %1836 = fmul fast float %1833, %1781
  br label %1867

; <label>:1837                                    ; preds = %1822
  %1838 = icmp eq i32 %1787, 2
  br i1 %1838, label %1839, label %1867

; <label>:1839                                    ; preds = %1837
  %1840 = call float @dx.op.unary.f32(i32 24, float %1626)  ; Sqrt(value)
  %1841 = call float @dx.op.unary.f32(i32 24, float %1627)  ; Sqrt(value)
  %1842 = call float @dx.op.unary.f32(i32 24, float %1628)  ; Sqrt(value)
  %1843 = fadd fast float %1840, -5.000000e-01
  %1844 = fadd fast float %1841, -5.000000e-01
  %1845 = fadd fast float %1842, -5.000000e-01
  %1846 = fmul fast float %1843, %1792
  %1847 = fmul fast float %1844, %1792
  %1848 = fmul fast float %1845, %1792
  %1849 = fadd fast float %1846, 5.000000e-01
  %1850 = fadd fast float %1847, 5.000000e-01
  %1851 = fadd fast float %1848, 5.000000e-01
  %1852 = fmul fast float %1849, 2.000000e+00
  %1853 = fsub fast float 1.000000e+00, %1852
  %1854 = fmul fast float %1853, %1779
  %1855 = fadd fast float %1854, %1852
  %1856 = fmul fast float %1855, %1779
  %1857 = fmul fast float %1850, 2.000000e+00
  %1858 = fsub fast float 1.000000e+00, %1857
  %1859 = fmul fast float %1858, %1780
  %1860 = fadd fast float %1859, %1857
  %1861 = fmul fast float %1860, %1780
  %1862 = fmul fast float %1851, 2.000000e+00
  %1863 = fsub fast float 1.000000e+00, %1862
  %1864 = fmul fast float %1863, %1781
  %1865 = fadd fast float %1864, %1862
  %1866 = fmul fast float %1865, %1781
  br label %1867

; <label>:1867                                    ; preds = %1839, %1837, %1824, %1794, %1778
  %1868 = phi float [ %1779, %1778 ], [ %1856, %1839 ], [ %1779, %1837 ], [ %1834, %1824 ], [ %1804, %1794 ]
  %1869 = phi float [ %1780, %1778 ], [ %1861, %1839 ], [ %1780, %1837 ], [ %1835, %1824 ], [ %1805, %1794 ]
  %1870 = phi float [ %1781, %1778 ], [ %1866, %1839 ], [ %1781, %1837 ], [ %1836, %1824 ], [ %1806, %1794 ]
  %1871 = phi float [ %1782, %1778 ], [ %1782, %1839 ], [ %1782, %1837 ], [ %1782, %1824 ], [ %1816, %1794 ]
  %1872 = phi float [ %1783, %1778 ], [ %1783, %1839 ], [ %1783, %1837 ], [ %1783, %1824 ], [ %1817, %1794 ]
  %1873 = phi float [ %1784, %1778 ], [ %1784, %1839 ], [ %1784, %1837 ], [ %1784, %1824 ], [ %1818, %1794 ]
  %1874 = phi float [ %1104, %1778 ], [ %1104, %1839 ], [ %1104, %1837 ], [ %1104, %1824 ], [ %1809, %1794 ]
  %1875 = phi float [ %1108, %1778 ], [ %1108, %1839 ], [ %1108, %1837 ], [ %1108, %1824 ], [ %1821, %1794 ]
  %1876 = and i32 %1786, 12
  %1877 = icmp eq i32 %1876, 12
  br i1 %1877, label %1950, label %1878

; <label>:1878                                    ; preds = %1867
  %1879 = and i32 %1786, 2097184
  %1880 = icmp eq i32 %1879, 2097184
  %1881 = select i1 %1880, float %1406, float 0.000000e+00
  %1882 = and i32 %1786, 4194336
  %1883 = icmp eq i32 %1882, 4194336
  %1884 = select i1 %1883, float %1406, float 0.000000e+00
  %1885 = and i32 %1786, 8388640
  %1886 = icmp eq i32 %1885, 8388640
  %1887 = select i1 %1886, float %1406, float 0.000000e+00
  %1888 = icmp eq i32 %1876, 0
  br i1 %1888, label %1889, label %1902

; <label>:1889                                    ; preds = %1878
  %1890 = fsub fast float %1707, %1096
  %1891 = fsub fast float %1708, %1097
  %1892 = fmul fast float %1881, %1890
  %1893 = fmul fast float %1881, %1891
  %1894 = fadd fast float %1892, %1096
  %1895 = fadd fast float %1893, %1097
  %1896 = fsub fast float %1709, %1107
  %1897 = fmul fast float %1884, %1896
  %1898 = fadd fast float %1897, %1107
  %1899 = fsub fast float %1706, %1106
  %1900 = fmul fast float %1887, %1899
  %1901 = fadd fast float %1900, %1106
  br label %1950

; <label>:1902                                    ; preds = %1878
  %1903 = icmp eq i32 %1876, 4
  br i1 %1903, label %1904, label %1936

; <label>:1904                                    ; preds = %1902
  %1905 = fmul fast float %1881, %1707
  %1906 = fmul fast float %1881, %1708
  %1907 = fadd fast float %1905, %1096
  %1908 = fadd fast float %1906, %1097
  %1909 = call float @dx.op.binary.f32(i32 36, float %1107, float %1709)  ; FMin(a,b)
  %1910 = fsub fast float %1909, %1107
  %1911 = fmul fast float %1910, %1884
  %1912 = fadd fast float %1911, %1107
  %1913 = fadd fast float %1706, %1106
  %1914 = fmul fast float %1913, 0x3FF337FAE0000000
  %1915 = fmul fast float %1106, %1106
  %1916 = fmul fast float %1706, %1706
  %1917 = fadd fast float %1916, %1915
  %1918 = fmul fast float %1917, 0x3FE5152B00000000
  %1919 = fmul fast float %1106, 0xBFCC1F85E0000000
  %1920 = fmul fast float %1919, %1706
  %1921 = fadd fast float %1920, 0xBFE1363700000000
  %1922 = fadd fast float %1921, %1914
  %1923 = fsub fast float %1922, %1918
  %1924 = fmul fast float %1913, 0x3FBA6F0D00000000
  %1925 = fmul fast float %1917, 0x3FD0432880000000
  %1926 = fmul fast float %1106, 0xBFEF110800000000
  %1927 = fmul fast float %1926, %1706
  %1928 = fadd fast float %1927, 1.000000e+00
  %1929 = fsub fast float %1928, %1924
  %1930 = fadd fast float %1929, %1925
  %1931 = fdiv fast float %1923, %1930
  %1932 = call float @dx.op.unary.f32(i32 7, float %1931)  ; Saturate(value)
  %1933 = fsub fast float %1932, %1106
  %1934 = fmul fast float %1933, %1887
  %1935 = fadd fast float %1934, %1106
  br label %1950

; <label>:1936                                    ; preds = %1902
  %1937 = icmp eq i32 %1876, 8
  br i1 %1937, label %1938, label %1950

; <label>:1938                                    ; preds = %1936
  %1939 = fmul fast float %1881, %1707
  %1940 = fmul fast float %1881, %1708
  %1941 = fadd fast float %1939, %1096
  %1942 = fadd fast float %1940, %1097
  %1943 = call float @dx.op.binary.f32(i32 36, float %1107, float %1709)  ; FMin(a,b)
  %1944 = fsub fast float %1943, %1107
  %1945 = fmul fast float %1944, %1884
  %1946 = fadd fast float %1945, %1107
  %1947 = fsub fast float %1706, %1106
  %1948 = fmul fast float %1887, %1947
  %1949 = fadd fast float %1948, %1106
  br label %1950

; <label>:1950                                    ; preds = %1938, %1936, %1904, %1889, %1867, %1405, %1109, %1095
  %1951 = phi float [ %1096, %1867 ], [ %1096, %1405 ], [ %1096, %1095 ], [ %1941, %1938 ], [ %1096, %1936 ], [ %1907, %1904 ], [ %1894, %1889 ], [ %1096, %1109 ]
  %1952 = phi float [ %1097, %1867 ], [ %1097, %1405 ], [ %1097, %1095 ], [ %1942, %1938 ], [ %1097, %1936 ], [ %1908, %1904 ], [ %1895, %1889 ], [ %1097, %1109 ]
  %1953 = phi float [ %1868, %1867 ], [ %1098, %1405 ], [ %1098, %1095 ], [ %1868, %1938 ], [ %1868, %1936 ], [ %1868, %1904 ], [ %1868, %1889 ], [ %1098, %1109 ]
  %1954 = phi float [ %1869, %1867 ], [ %1099, %1405 ], [ %1099, %1095 ], [ %1869, %1938 ], [ %1869, %1936 ], [ %1869, %1904 ], [ %1869, %1889 ], [ %1099, %1109 ]
  %1955 = phi float [ %1870, %1867 ], [ %1100, %1405 ], [ %1100, %1095 ], [ %1870, %1938 ], [ %1870, %1936 ], [ %1870, %1904 ], [ %1870, %1889 ], [ %1100, %1109 ]
  %1956 = phi float [ %1871, %1867 ], [ %1101, %1405 ], [ %1101, %1095 ], [ %1871, %1938 ], [ %1871, %1936 ], [ %1871, %1904 ], [ %1871, %1889 ], [ %1101, %1109 ]
  %1957 = phi float [ %1872, %1867 ], [ %1102, %1405 ], [ %1102, %1095 ], [ %1872, %1938 ], [ %1872, %1936 ], [ %1872, %1904 ], [ %1872, %1889 ], [ %1102, %1109 ]
  %1958 = phi float [ %1873, %1867 ], [ %1103, %1405 ], [ %1103, %1095 ], [ %1873, %1938 ], [ %1873, %1936 ], [ %1873, %1904 ], [ %1873, %1889 ], [ %1103, %1109 ]
  %1959 = phi float [ %1874, %1867 ], [ %1104, %1405 ], [ %1104, %1095 ], [ %1874, %1938 ], [ %1874, %1936 ], [ %1874, %1904 ], [ %1874, %1889 ], [ %1104, %1109 ]
  %1960 = phi float [ %1106, %1867 ], [ %1106, %1405 ], [ %1106, %1095 ], [ %1949, %1938 ], [ %1106, %1936 ], [ %1935, %1904 ], [ %1901, %1889 ], [ %1106, %1109 ]
  %1961 = phi float [ %1107, %1867 ], [ %1107, %1405 ], [ %1107, %1095 ], [ %1946, %1938 ], [ %1107, %1936 ], [ %1912, %1904 ], [ %1898, %1889 ], [ %1107, %1109 ]
  %1962 = phi float [ %1875, %1867 ], [ %1108, %1405 ], [ %1108, %1095 ], [ %1875, %1938 ], [ %1875, %1936 ], [ %1875, %1904 ], [ %1875, %1889 ], [ %1108, %1109 ]
  br i1 %381, label %2804, label %1963

; <label>:1963                                    ; preds = %1950
  %1964 = icmp ult i32 %437, 3
  %1965 = add i32 %41, 56
  %1966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.i32 %1966, 0
  %1968 = add i32 %41, 60
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = or i32 %1970, %1967
  %1972 = icmp eq i32 %1971, 0
  br i1 %1972, label %2804, label %1973

; <label>:1973                                    ; preds = %1963
  %1974 = and i32 %1967, 262144
  %1975 = icmp ne i32 %1974, 0
  %1976 = select i1 %1975, float %44, float 1.000000e+00
  %1977 = select i1 %1975, float %45, float 0.000000e+00
  %1978 = select i1 %1975, float %46, float 0.000000e+00
  %1979 = select i1 %1975, float %47, float 1.000000e+00
  %1980 = select i1 %1975, float %48, float %64
  %1981 = select i1 %1975, float %49, float %65
  %1982 = add i32 %41, 316
  %1983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.i32 %1983, 0
  %1985 = lshr i32 %1984, 16
  %1986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1985)  ; LegacyF16ToF32(value)
  %1987 = fmul fast float %1986, 0x3F50624DE0000000
  %1988 = add i32 %41, 120
  %1989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %1990 = extractvalue %dx.types.ResRet.i32 %1989, 0
  %1991 = lshr i32 %1990, 16
  %1992 = and i32 %1991, 255
  %1993 = lshr i32 %1990, 24
  %1994 = add i32 %41, 324
  %1995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %1996 = extractvalue %dx.types.ResRet.i32 %1995, 0
  %1997 = and i32 %1996, 65535
  %1998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1997)  ; LegacyF16ToF32(value)
  %1999 = lshr i32 %1996, 16
  %2000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1999)  ; LegacyF16ToF32(value)
  %2001 = add i32 %41, 64
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = lshr i32 %2003, 22
  %2005 = shl nuw nsw i32 %2004, 5
  %2006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2005)  ; LegacyF16ToF32(value)
  %2007 = shl i32 %2003, 4
  %2008 = and i32 %2007, 32752
  %2009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2008)  ; LegacyF16ToF32(value)
  %2010 = lshr i32 %2003, 7
  %2011 = and i32 %2010, 32752
  %2012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2011)  ; LegacyF16ToF32(value)
  %2013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2014 = extractvalue %dx.types.CBufRet.f32 %2013, 3
  %2015 = fmul fast float %2014, 1.000000e+03
  %2016 = fmul fast float %331, %2015
  %2017 = call float @dx.op.unary.f32(i32 22, float %2016)  ; Frc(value)
  %2018 = fadd fast float %2017, %321
  %2019 = fmul fast float %332, %2015
  %2020 = call float @dx.op.unary.f32(i32 22, float %2019)  ; Frc(value)
  %2021 = fadd fast float %2020, %323
  %2022 = fmul fast float %1987, %2015
  %2023 = call float @dx.op.unary.f32(i32 22, float %2022)  ; Frc(value)
  %2024 = fmul fast float %2023, 0x401921FB60000000
  %2025 = fadd fast float %2024, %2006
  %2026 = call float @dx.op.unary.f32(i32 13, float %2025)  ; Sin(value)
  %2027 = call float @dx.op.unary.f32(i32 12, float %2025)  ; Cos(value)
  %2028 = fsub fast float -0.000000e+00, %2026
  %2029 = fadd fast float %1980, -5.000000e-01
  %2030 = fadd fast float %1981, -5.000000e-01
  %2031 = fmul fast float %1998, %2029
  %2032 = fmul fast float %2000, %2030
  %2033 = fadd fast float %2031, 5.000000e-01
  %2034 = fadd fast float %2032, 5.000000e-01
  %2035 = fmul fast float %2009, %2033
  %2036 = fmul fast float %2012, %2034
  %2037 = fmul fast float %2027, %2035
  %2038 = call float @dx.op.tertiary.f32(i32 46, float %2028, float %2036, float %2037)  ; FMad(a,b,c)
  %2039 = fmul fast float %2026, %2035
  %2040 = call float @dx.op.tertiary.f32(i32 46, float %2027, float %2036, float %2039)  ; FMad(a,b,c)
  %2041 = fadd fast float %2018, %2038
  %2042 = fadd fast float %2021, %2040
  %2043 = icmp ugt i32 %1992, 1
  %2044 = icmp ugt i32 %1990, 33554431
  %2045 = or i1 %2044, %2043
  br i1 %2045, label %2046, label %2071

; <label>:2046                                    ; preds = %1973
  %2047 = add i32 %41, 260
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2047, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = lshr i32 %2049, 16
  %2051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2050)  ; LegacyF16ToF32(value)
  %2052 = fmul fast float %2014, %2051
  %2053 = call float @dx.op.unary.f32(i32 22, float %2052)  ; Frc(value)
  %2054 = mul nuw nsw i32 %1992, %1993
  %2055 = uitofp i32 %2054 to float
  %2056 = fmul fast float %2053, %2055
  %2057 = call float @dx.op.unary.f32(i32 27, float %2056)  ; Round_ni(value)
  %2058 = fptoui float %2057 to i32
  %2059 = urem i32 %2058, %1992
  %2060 = udiv i32 %2058, %1993
  %2061 = call float @dx.op.unary.f32(i32 22, float %2041)  ; Frc(value)
  %2062 = call float @dx.op.unary.f32(i32 22, float %2042)  ; Frc(value)
  %2063 = uitofp i32 %2059 to float
  %2064 = uitofp i32 %2060 to float
  %2065 = fadd fast float %2061, %2063
  %2066 = fadd fast float %2062, %2064
  %2067 = uitofp i32 %1992 to float
  %2068 = uitofp i32 %1993 to float
  %2069 = fdiv fast float %2065, %2067
  %2070 = fdiv fast float %2066, %2068
  br label %2071

; <label>:2071                                    ; preds = %2046, %1973
  %2072 = phi float [ %2069, %2046 ], [ %2041, %1973 ]
  %2073 = phi float [ %2070, %2046 ], [ %2042, %1973 ]
  %2074 = and i32 %1967, 16777216
  %2075 = icmp eq i32 %2074, 0
  br i1 %2075, label %2185, label %2076

; <label>:2076                                    ; preds = %2071
  %2077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2078 = extractvalue %dx.types.CBufRet.f32 %2077, 0
  %2079 = extractvalue %dx.types.CBufRet.f32 %2077, 1
  %2080 = extractvalue %dx.types.CBufRet.f32 %2077, 2
  %2081 = fadd fast float %2078, %145
  %2082 = fadd fast float %2079, %146
  %2083 = fadd fast float %2080, %147
  %2084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2085 = extractvalue %dx.types.CBufRet.f32 %2084, 0
  %2086 = call float @dx.op.unary.f32(i32 7, float %2085)  ; Saturate(value)
  %2087 = icmp eq i32 %42, 65535
  br i1 %2087, label %2182, label %2088

; <label>:2088                                    ; preds = %2076
  %2089 = lshr i32 %42, 1
  %2090 = shl i32 %2089, 2
  %2091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2090, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = and i32 %42, 1
  %2094 = icmp ne i32 %2093, 0
  %2095 = lshr i32 %2092, 16
  %2096 = and i32 %2092, 65535
  %2097 = select i1 %2094, i32 %2095, i32 %2096
  %2098 = icmp eq i32 %2097, 65535
  br i1 %2098, label %2178, label %2099

; <label>:2099                                    ; preds = %2088
  %2100 = mul nuw nsw i32 %2097, 40
  %2101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2100, i32 undef)  ; BufferLoad(srv,index,wot)
  %2102 = extractvalue %dx.types.ResRet.f32 %2101, 0
  %2103 = extractvalue %dx.types.ResRet.f32 %2101, 1
  %2104 = extractvalue %dx.types.ResRet.f32 %2101, 2
  %2105 = add nuw nsw i32 %2100, 12
  %2106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2105, i32 undef)  ; BufferLoad(srv,index,wot)
  %2107 = extractvalue %dx.types.ResRet.f32 %2106, 0
  %2108 = extractvalue %dx.types.ResRet.f32 %2106, 1
  %2109 = extractvalue %dx.types.ResRet.f32 %2106, 2
  %2110 = add nuw nsw i32 %2100, 24
  %2111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2112 = extractvalue %dx.types.ResRet.f32 %2111, 0
  %2113 = extractvalue %dx.types.ResRet.f32 %2111, 1
  %2114 = extractvalue %dx.types.ResRet.f32 %2111, 2
  %2115 = add nuw nsw i32 %2100, 36
  %2116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.f32 %2116, 0
  %2118 = fsub fast float %2081, %2102
  %2119 = fsub fast float %2082, %2103
  %2120 = fsub fast float %2083, %2104
  %2121 = fmul fast float %2117, %2118
  %2122 = fmul fast float %2117, %2119
  %2123 = fmul fast float %2117, %2120
  %2124 = call float @dx.op.unary.f32(i32 27, float %2121)  ; Round_ni(value)
  %2125 = call float @dx.op.unary.f32(i32 27, float %2122)  ; Round_ni(value)
  %2126 = call float @dx.op.unary.f32(i32 27, float %2123)  ; Round_ni(value)
  %2127 = fadd fast float %2124, 5.000000e-01
  %2128 = fadd fast float %2125, 5.000000e-01
  %2129 = fadd fast float %2126, 5.000000e-01
  %2130 = fmul fast float %2127, %2107
  %2131 = fmul fast float %2128, %2108
  %2132 = fmul fast float %2129, %2109
  %2133 = shl i32 %42, 2
  %2134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.i32 %2134, 0
  %2136 = add i32 %2135, 0
  %2137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2136, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2138 = call float @dx.op.unary.f32(i32 22, float %2130)  ; Frc(value)
  %2139 = call float @dx.op.unary.f32(i32 22, float %2131)  ; Frc(value)
  %2140 = call float @dx.op.unary.f32(i32 22, float %2132)  ; Frc(value)
  %2141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2137, %dx.types.Handle %36, float %2138, float %2139, float %2140, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2142 = extractvalue %dx.types.ResRet.f32 %2141, 0
  %2143 = extractvalue %dx.types.ResRet.f32 %2141, 1
  %2144 = extractvalue %dx.types.ResRet.f32 %2141, 2
  %2145 = fmul fast float %2142, 1.023000e+03
  %2146 = fmul fast float %2143, 1.023000e+03
  %2147 = fmul fast float %2144, 1.023000e+03
  %2148 = fadd fast float %2145, 5.000000e-01
  %2149 = fadd fast float %2146, 5.000000e-01
  %2150 = fadd fast float %2147, 5.000000e-01
  %2151 = call float @dx.op.unary.f32(i32 27, float %2148)  ; Round_ni(value)
  %2152 = call float @dx.op.unary.f32(i32 27, float %2149)  ; Round_ni(value)
  %2153 = call float @dx.op.unary.f32(i32 27, float %2150)  ; Round_ni(value)
  %2154 = fsub fast float %2121, %2124
  %2155 = fsub fast float %2122, %2125
  %2156 = fsub fast float %2123, %2126
  %2157 = fmul fast float %2154, 7.500000e-01
  %2158 = fmul fast float %2155, 7.500000e-01
  %2159 = fmul fast float %2156, 7.500000e-01
  %2160 = fadd fast float %2124, 1.250000e-01
  %2161 = fadd fast float %2160, %2157
  %2162 = fadd fast float %2161, %2151
  %2163 = fadd fast float %2125, 1.250000e-01
  %2164 = fadd fast float %2163, %2158
  %2165 = fadd fast float %2164, %2152
  %2166 = fadd fast float %2126, 1.250000e-01
  %2167 = fadd fast float %2166, %2159
  %2168 = fadd fast float %2167, %2153
  %2169 = fmul fast float %2162, %2112
  %2170 = fmul fast float %2165, %2113
  %2171 = fmul fast float %2168, %2114
  %2172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.i32 %2172, 0
  %2174 = add i32 %2173, 0
  %2175 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2174, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2175, %dx.types.Handle %34, float %2169, float %2170, float %2171, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2177 = extractvalue %dx.types.ResRet.f32 %2176, 0
  br label %2178

; <label>:2178                                    ; preds = %2099, %2088
  %2179 = phi float [ %2177, %2099 ], [ -1.000000e+00, %2088 ]
  %2180 = fadd fast float %2179, %2086
  %2181 = call float @dx.op.unary.f32(i32 7, float %2180)  ; Saturate(value)
  br label %2182

; <label>:2182                                    ; preds = %2178, %2076
  %2183 = phi float [ %2181, %2178 ], [ %2086, %2076 ]
  %2184 = fmul fast float %2183, %433
  br label %2185

; <label>:2185                                    ; preds = %2182, %2071
  %2186 = phi float [ %2184, %2182 ], [ %433, %2071 ]
  %2187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2188 = extractvalue %dx.types.ResRet.i32 %2187, 0
  %2189 = and i32 %2188, 256
  %2190 = icmp eq i32 %2189, 0
  br i1 %2190, label %2237, label %2191

; <label>:2191                                    ; preds = %2185
  %2192 = add i32 %41, 448
  %2193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2192, i32 undef)  ; BufferLoad(srv,index,wot)
  %2194 = extractvalue %dx.types.ResRet.i32 %2193, 0
  %2195 = add i32 %2194, 0
  %2196 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2195, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2197 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2196, %dx.types.Handle %79, float %2072, float %2073, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2198 = extractvalue %dx.types.ResRet.f32 %2197, 0
  %2199 = add i32 %41, 132
  %2200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2199, i32 undef)  ; BufferLoad(srv,index,wot)
  %2201 = extractvalue %dx.types.ResRet.i32 %2200, 0
  %2202 = shl i32 %2201, 4
  %2203 = and i32 %2202, 32752
  %2204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2203)  ; LegacyF16ToF32(value)
  %2205 = lshr i32 %2201, 7
  %2206 = and i32 %2205, 32752
  %2207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2206)  ; LegacyF16ToF32(value)
  %2208 = fsub fast float 1.000000e+00, %2186
  %2209 = call float @dx.op.binary.f32(i32 35, float %2208, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2210 = bitcast float %2186 to i32
  %2211 = sitofp i32 %2210 to float
  %2212 = fadd fast float %2211, 0xC1CFBF8940000000
  %2213 = fmul fast float %2207, %2212
  %2214 = fadd fast float %2213, 0x41CFBF8940000000
  %2215 = fptosi float %2214 to i32
  %2216 = bitcast i32 %2215 to float
  %2217 = bitcast float %2209 to i32
  %2218 = sitofp i32 %2217 to float
  %2219 = fadd fast float %2218, 0xC1CFBF8940000000
  %2220 = fmul fast float %2219, %2207
  %2221 = fadd fast float %2220, 0x41CFBF8940000000
  %2222 = fptosi float %2221 to i32
  %2223 = bitcast i32 %2222 to float
  %2224 = fmul fast float %2216, %2204
  %2225 = fmul fast float %2223, %2204
  %2226 = fsub fast float %2209, %2224
  %2227 = fadd fast float %2225, %2209
  %2228 = call float @dx.op.unary.f32(i32 7, float %2226)  ; Saturate(value)
  %2229 = call float @dx.op.unary.f32(i32 7, float %2227)  ; Saturate(value)
  %2230 = fsub fast float %2198, %2228
  %2231 = fsub fast float %2229, %2228
  %2232 = bitcast float %2231 to i32
  %2233 = sub nsw i32 2129859010, %2232
  %2234 = bitcast i32 %2233 to float
  %2235 = fmul fast float %2234, %2230
  %2236 = call float @dx.op.unary.f32(i32 7, float %2235)  ; Saturate(value)
  br label %2237

; <label>:2237                                    ; preds = %2191, %2185
  %2238 = phi float [ %2236, %2191 ], [ %2186, %2185 ]
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = and i32 %2240, 128
  %2242 = icmp eq i32 %2241, 0
  br i1 %2242, label %2259, label %2243

; <label>:2243                                    ; preds = %2237
  %2244 = add i32 %41, 432
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = add i32 %2246, 0
  %2248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2247, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2249 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2248, %dx.types.Handle %79, float %2072, float %2073, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2250 = extractvalue %dx.types.ResRet.f32 %2249, 0
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = and i32 %2252, 524288
  %2254 = icmp ne i32 %2253, 0
  %2255 = fcmp fast ogt float %2250, 0x3FE0101020000000
  %2256 = select i1 %2255, float 1.000000e+00, float 0.000000e+00
  %2257 = select i1 %2254, float %2256, float %2250
  %2258 = fmul fast float %2257, %2238
  br label %2259

; <label>:2259                                    ; preds = %2243, %2237
  %2260 = phi float [ %2258, %2243 ], [ %2238, %2237 ]
  %2261 = fcmp fast ult float %2260, 0x3F70101020000000
  br i1 %2261, label %2804, label %2262

; <label>:2262                                    ; preds = %2259
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = and i32 %2264, 16
  %2266 = icmp eq i32 %2265, 0
  br i1 %2266, label %2465, label %2267

; <label>:2267                                    ; preds = %2262
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = add i32 %41, 384
  %2271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2272 = extractvalue %dx.types.ResRet.i32 %2271, 0
  %2273 = add i32 %2272, 0
  %2274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2273, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2275 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2274, %dx.types.Handle %78, float %2072, float %2073, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2276 = extractvalue %dx.types.ResRet.f32 %2275, 0
  %2277 = extractvalue %dx.types.ResRet.f32 %2275, 1
  %2278 = extractvalue %dx.types.ResRet.f32 %2275, 2
  %2279 = extractvalue %dx.types.ResRet.f32 %2275, 3
  %2280 = and i32 %2269, 255
  %2281 = uitofp i32 %2280 to float
  %2282 = lshr i32 %2269, 8
  %2283 = and i32 %2282, 255
  %2284 = uitofp i32 %2283 to float
  %2285 = fmul fast float %2279, %2281
  %2286 = fadd fast float %2285, %2284
  %2287 = fmul fast float %2286, 0x3F70101000000000
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = and i32 %2289, 512
  %2291 = icmp eq i32 %2290, 0
  br i1 %2291, label %2300, label %2292

; <label>:2292                                    ; preds = %2267
  %2293 = add i32 %41, 464
  %2294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2293, i32 undef)  ; BufferLoad(srv,index,wot)
  %2295 = extractvalue %dx.types.ResRet.i32 %2294, 0
  %2296 = add i32 %2295, 0
  %2297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2296, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2298 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2297, %dx.types.Handle %79, float %2072, float %2073, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2299 = extractvalue %dx.types.ResRet.f32 %2298, 0
  br label %2300

; <label>:2300                                    ; preds = %2292, %2267
  %2301 = phi float [ %2299, %2292 ], [ 1.000000e+00, %2267 ]
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = and i32 %2303, 33554432
  %2305 = icmp eq i32 %2304, 0
  br i1 %2305, label %2412, label %2306

; <label>:2306                                    ; preds = %2300
  %2307 = add i32 %41, 256
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 65535
  %2311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2310)  ; LegacyF16ToF32(value)
  %2312 = lshr i32 %2309, 16
  %2313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2312)  ; LegacyF16ToF32(value)
  %2314 = add i32 %41, 260
  %2315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.i32 %2315, 0
  %2317 = and i32 %2316, 65535
  %2318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2317)  ; LegacyF16ToF32(value)
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = lshr i32 %2320, 24
  %2322 = uitofp i32 %2321 to float
  %2323 = fmul fast float %2322, 0x3F70101020000000
  %2324 = and i32 %2320, 255
  %2325 = uitofp i32 %2324 to float
  %2326 = fmul fast float %2325, 0x3F70101020000000
  %2327 = lshr i32 %2320, 8
  %2328 = and i32 %2327, 255
  %2329 = uitofp i32 %2328 to float
  %2330 = fmul fast float %2329, 0x3F70101020000000
  %2331 = lshr i32 %2320, 16
  %2332 = and i32 %2331, 255
  %2333 = uitofp i32 %2332 to float
  %2334 = fmul fast float %2333, 0x3F70101020000000
  %2335 = add i32 %41, 252
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = lshr i32 %2337, 24
  %2339 = uitofp i32 %2338 to float
  %2340 = fmul fast float %2339, 0x3F70101020000000
  %2341 = and i32 %2337, 255
  %2342 = uitofp i32 %2341 to float
  %2343 = fmul fast float %2342, 0x3F70101020000000
  %2344 = lshr i32 %2337, 8
  %2345 = and i32 %2344, 255
  %2346 = uitofp i32 %2345 to float
  %2347 = fmul fast float %2346, 0x3F70101020000000
  %2348 = lshr i32 %2337, 16
  %2349 = and i32 %2348, 255
  %2350 = uitofp i32 %2349 to float
  %2351 = fmul fast float %2350, 0x3F70101020000000
  %2352 = bitcast float %2276 to i32
  %2353 = ashr i32 %2352, 1
  %2354 = sub nsw i32 1597463174, %2353
  %2355 = bitcast i32 %2354 to float
  %2356 = fmul fast float %2276, 5.000000e-01
  %2357 = fmul fast float %2355, %2355
  %2358 = fmul fast float %2357, %2356
  %2359 = fsub fast float 1.500000e+00, %2358
  %2360 = fmul fast float %2355, %2276
  %2361 = fmul fast float %2360, %2359
  %2362 = bitcast float %2277 to i32
  %2363 = ashr i32 %2362, 1
  %2364 = sub nsw i32 1597463174, %2363
  %2365 = bitcast i32 %2364 to float
  %2366 = fmul fast float %2277, 5.000000e-01
  %2367 = fmul fast float %2365, %2365
  %2368 = fmul fast float %2367, %2366
  %2369 = fsub fast float 1.500000e+00, %2368
  %2370 = fmul fast float %2365, %2277
  %2371 = fmul fast float %2370, %2369
  %2372 = bitcast float %2278 to i32
  %2373 = ashr i32 %2372, 1
  %2374 = sub nsw i32 1597463174, %2373
  %2375 = bitcast i32 %2374 to float
  %2376 = fmul fast float %2278, 5.000000e-01
  %2377 = fmul fast float %2375, %2375
  %2378 = fmul fast float %2377, %2376
  %2379 = fsub fast float 1.500000e+00, %2378
  %2380 = fmul fast float %2375, %2278
  %2381 = fmul fast float %2380, %2379
  %2382 = fsub fast float %2361, %2343
  %2383 = fsub fast float %2371, %2347
  %2384 = fsub fast float %2381, %2351
  %2385 = fmul fast float %2382, %2311
  %2386 = fmul fast float %2383, %2313
  %2387 = fmul fast float %2384, %2318
  %2388 = fadd fast float %2385, %2326
  %2389 = fadd fast float %2386, %2330
  %2390 = fadd fast float %2387, %2334
  %2391 = call float @dx.op.unary.f32(i32 7, float %2388)  ; Saturate(value)
  %2392 = call float @dx.op.unary.f32(i32 7, float %2389)  ; Saturate(value)
  %2393 = call float @dx.op.unary.f32(i32 7, float %2390)  ; Saturate(value)
  %2394 = fmul fast float %2391, %2391
  %2395 = fmul fast float %2392, %2392
  %2396 = fmul fast float %2393, %2393
  %2397 = fsub fast float %2394, %2276
  %2398 = fsub fast float %2395, %2277
  %2399 = fsub fast float %2396, %2278
  %2400 = fmul fast float %2397, %2301
  %2401 = fmul fast float %2398, %2301
  %2402 = fmul fast float %2399, %2301
  %2403 = fadd fast float %2400, %2276
  %2404 = fadd fast float %2401, %2277
  %2405 = fadd fast float %2402, %2278
  %2406 = fadd fast float %2323, %2287
  %2407 = fsub fast float %2406, %2340
  %2408 = call float @dx.op.unary.f32(i32 7, float %2407)  ; Saturate(value)
  %2409 = fsub fast float %2408, %2287
  %2410 = fmul fast float %2409, %2301
  %2411 = fadd fast float %2410, %2287
  br label %2465

; <label>:2412                                    ; preds = %2300
  %2413 = and i32 %2303, 134217728
  %2414 = icmp eq i32 %2413, 0
  br i1 %2414, label %2449, label %2415

; <label>:2415                                    ; preds = %2412
  %2416 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %2417 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %2418 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %2419 = fadd fast float %2416, -5.000000e-01
  %2420 = fadd fast float %2417, -5.000000e-01
  %2421 = fadd fast float %2418, -5.000000e-01
  %2422 = fmul fast float %2419, %2301
  %2423 = fmul fast float %2420, %2301
  %2424 = fmul fast float %2421, %2301
  %2425 = fadd fast float %2422, 5.000000e-01
  %2426 = fadd fast float %2423, 5.000000e-01
  %2427 = fadd fast float %2424, 5.000000e-01
  %2428 = call float @dx.op.unary.f32(i32 24, float %2276)  ; Sqrt(value)
  %2429 = call float @dx.op.unary.f32(i32 24, float %2277)  ; Sqrt(value)
  %2430 = call float @dx.op.unary.f32(i32 24, float %2278)  ; Sqrt(value)
  %2431 = fmul fast float %2425, 2.000000e+00
  %2432 = fsub fast float 1.000000e+00, %2431
  %2433 = fmul fast float %2432, %2428
  %2434 = fadd fast float %2433, %2431
  %2435 = fmul fast float %2434, %2428
  %2436 = fmul fast float %2426, 2.000000e+00
  %2437 = fsub fast float 1.000000e+00, %2436
  %2438 = fmul fast float %2437, %2429
  %2439 = fadd fast float %2438, %2436
  %2440 = fmul fast float %2439, %2429
  %2441 = fmul fast float %2427, 2.000000e+00
  %2442 = fsub fast float 1.000000e+00, %2441
  %2443 = fmul fast float %2442, %2430
  %2444 = fadd fast float %2443, %2441
  %2445 = fmul fast float %2444, %2430
  %2446 = fmul fast float %2435, %2435
  %2447 = fmul fast float %2440, %2440
  %2448 = fmul fast float %2445, %2445
  br label %2465

; <label>:2449                                    ; preds = %2412
  %2450 = fmul fast float %308, %308
  %2451 = fmul fast float %312, %312
  %2452 = fmul fast float %316, %316
  %2453 = fadd fast float %2450, -1.000000e+00
  %2454 = fadd fast float %2451, -1.000000e+00
  %2455 = fadd fast float %2452, -1.000000e+00
  %2456 = fmul fast float %2301, %2453
  %2457 = fmul fast float %2301, %2454
  %2458 = fmul fast float %2301, %2455
  %2459 = fadd fast float %2456, 1.000000e+00
  %2460 = fadd fast float %2457, 1.000000e+00
  %2461 = fadd fast float %2458, 1.000000e+00
  %2462 = fmul fast float %2459, %2276
  %2463 = fmul fast float %2460, %2277
  %2464 = fmul fast float %2461, %2278
  br label %2465

; <label>:2465                                    ; preds = %2449, %2415, %2306, %2262
  %2466 = phi float [ %2411, %2306 ], [ %2287, %2415 ], [ %2287, %2449 ], [ 0x3FA23C0BE0000000, %2262 ]
  %2467 = phi float [ %2403, %2306 ], [ %2446, %2415 ], [ %2462, %2449 ], [ 1.000000e+00, %2262 ]
  %2468 = phi float [ %2404, %2306 ], [ %2447, %2415 ], [ %2463, %2449 ], [ 1.000000e+00, %2262 ]
  %2469 = phi float [ %2405, %2306 ], [ %2448, %2415 ], [ %2464, %2449 ], [ 1.000000e+00, %2262 ]
  %2470 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2471 = extractvalue %dx.types.CBufRet.i32 %2470, 1
  %2472 = and i32 %2471, 1
  %2473 = icmp ne i32 %2472, 0
  %2474 = add i32 %41, 356
  %2475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2474, i32 undef)  ; BufferLoad(srv,index,wot)
  %2476 = extractvalue %dx.types.ResRet.i32 %2475, 0
  %2477 = and i32 %2476, 32
  %2478 = icmp ne i32 %2477, 0
  %2479 = and i1 %2473, %2478
  %2480 = select i1 %2479, float 1.000000e+00, float %2467
  %2481 = select i1 %2479, float 0x3FD3333340000000, float %2468
  %2482 = select i1 %2479, float 0x3FD3333340000000, float %2469
  %2483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2484 = extractvalue %dx.types.ResRet.i32 %2483, 0
  %2485 = and i32 %2484, 32
  %2486 = icmp eq i32 %2485, 0
  br i1 %2486, label %2559, label %2487

; <label>:2487                                    ; preds = %2465
  %2488 = add i32 %41, 124
  %2489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2488, i32 undef)  ; BufferLoad(srv,index,wot)
  %2490 = extractvalue %dx.types.ResRet.i32 %2489, 0
  %2491 = add i32 %41, 400
  %2492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2491, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.i32 %2492, 0
  %2494 = add i32 %2493, 0
  %2495 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2494, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2496 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2495, %dx.types.Handle %78, float %2072, float %2073, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2497 = extractvalue %dx.types.ResRet.f32 %2496, 0
  %2498 = extractvalue %dx.types.ResRet.f32 %2496, 1
  %2499 = extractvalue %dx.types.ResRet.f32 %2496, 2
  %2500 = extractvalue %dx.types.ResRet.f32 %2496, 3
  %2501 = and i32 %2490, 255
  %2502 = uitofp i32 %2501 to float
  %2503 = lshr i32 %2490, 8
  %2504 = and i32 %2503, 255
  %2505 = uitofp i32 %2504 to float
  %2506 = lshr i32 %2490, 16
  %2507 = and i32 %2506, 255
  %2508 = uitofp i32 %2507 to float
  %2509 = fmul fast float %2508, 0x3F70101000000000
  %2510 = fmul fast float %2497, %2502
  %2511 = fadd fast float %2510, %2505
  %2512 = fmul fast float %2511, 0x3F70101000000000
  %2513 = fadd fast float %2498, -5.000000e-01
  %2514 = fadd fast float %2500, -5.000000e-01
  %2515 = fmul fast float %2513, %2509
  %2516 = fmul fast float %2514, %2509
  %2517 = fadd fast float %2515, 5.000000e-01
  %2518 = fadd fast float %2516, 5.000000e-01
  %2519 = fmul fast float %2517, 2.000000e+00
  %2520 = fadd fast float %2519, -1.000000e+00
  %2521 = fmul fast float %2518, 2.000000e+00
  %2522 = fadd fast float %2521, -1.000000e+00
  %2523 = fadd fast float %2520, %2522
  %2524 = fmul fast float %2523, 5.000000e-01
  %2525 = fsub fast float %2520, %2522
  %2526 = fmul fast float %2525, 5.000000e-01
  %2527 = call float @dx.op.unary.f32(i32 6, float %2524)  ; FAbs(value)
  %2528 = fsub fast float 1.000000e+00, %2527
  %2529 = call float @dx.op.unary.f32(i32 6, float %2526)  ; FAbs(value)
  %2530 = fsub fast float %2528, %2529
  %2531 = call float @dx.op.dot3.f32(i32 55, float %2524, float %2526, float %2530, float %2524, float %2526, float %2530)  ; Dot3(ax,ay,az,bx,by,bz)
  %2532 = call float @dx.op.unary.f32(i32 25, float %2531)  ; Rsqrt(value)
  %2533 = fmul fast float %2524, %2532
  %2534 = fmul fast float %2526, %2532
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = and i32 %2536, 67108864
  %2538 = icmp eq i32 %2537, 0
  br i1 %2538, label %2555, label %2539

; <label>:2539                                    ; preds = %2487
  %2540 = add i32 %41, 312
  %2541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2540, i32 undef)  ; BufferLoad(srv,index,wot)
  %2542 = extractvalue %dx.types.ResRet.i32 %2541, 0
  %2543 = and i32 %2542, 65535
  %2544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2543)  ; LegacyF16ToF32(value)
  %2545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.i32 %2545, 0
  %2547 = and i32 %2546, 65535
  %2548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2547)  ; LegacyF16ToF32(value)
  %2549 = lshr i32 %2542, 16
  %2550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2549)  ; LegacyF16ToF32(value)
  %2551 = fsub fast float %2512, %2550
  %2552 = fmul fast float %2551, %2544
  %2553 = fadd fast float %2552, %2548
  %2554 = call float @dx.op.unary.f32(i32 7, float %2553)  ; Saturate(value)
  br label %2555

; <label>:2555                                    ; preds = %2539, %2487
  %2556 = phi float [ %2554, %2539 ], [ %2512, %2487 ]
  %2557 = call float @dx.op.dot2.f32(i32 54, float %2533, float %2534, float %1976, float %1977)  ; Dot2(ax,ay,bx,by)
  %2558 = call float @dx.op.dot2.f32(i32 54, float %2533, float %2534, float %1978, float %1979)  ; Dot2(ax,ay,bx,by)
  br label %2559

; <label>:2559                                    ; preds = %2555, %2465
  %2560 = phi float [ %2556, %2555 ], [ 0x3FD6666660000000, %2465 ]
  %2561 = phi float [ %2557, %2555 ], [ 0.000000e+00, %2465 ]
  %2562 = phi float [ %2558, %2555 ], [ 0.000000e+00, %2465 ]
  %2563 = phi float [ %2499, %2555 ], [ 1.000000e+00, %2465 ]
  %2564 = add i32 %41, 192
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2564, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = lshr i32 %2566, 22
  %2568 = shl nuw nsw i32 %2567, 5
  %2569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2568)  ; LegacyF16ToF32(value)
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = and i32 %2571, 64
  %2573 = icmp eq i32 %2572, 0
  br i1 %2573, label %2607, label %2574

; <label>:2574                                    ; preds = %2559
  %2575 = add i32 %41, 416
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = add i32 %2577, 0
  %2579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2578, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = and i32 %2581, 131072
  %2583 = icmp eq i32 %2582, 0
  %2584 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2579, %dx.types.Handle %78, float %2072, float %2073, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2585 = extractvalue %dx.types.ResRet.f32 %2584, 0
  %2586 = extractvalue %dx.types.ResRet.f32 %2584, 1
  %2587 = extractvalue %dx.types.ResRet.f32 %2584, 2
  %2588 = fmul fast float %2585, %296
  %2589 = fmul fast float %2586, %299
  %2590 = fmul fast float %2587, %302
  br i1 %2583, label %2597, label %2591

; <label>:2591                                    ; preds = %2574
  %2592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2593 = extractvalue %dx.types.CBufRet.f32 %2592, 0
  %2594 = fmul fast float %2593, %2588
  %2595 = fmul fast float %2593, %2589
  %2596 = fmul fast float %2593, %2590
  br label %2597

; <label>:2597                                    ; preds = %2591, %2574
  %2598 = phi float [ %2594, %2591 ], [ %2588, %2574 ]
  %2599 = phi float [ %2595, %2591 ], [ %2589, %2574 ]
  %2600 = phi float [ %2596, %2591 ], [ %2590, %2574 ]
  %2601 = fmul fast float %2598, %2569
  %2602 = select i1 %206, float %2601, float %2598
  %2603 = call float @dx.op.dot3.f32(i32 55, float %2602, float %2599, float %2600, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2604 = select i1 %206, float 0.000000e+00, float %2598
  %2605 = select i1 %206, float %2603, float %2599
  %2606 = select i1 %206, float 0.000000e+00, float %2600
  br label %2607

; <label>:2607                                    ; preds = %2597, %2559
  %2608 = phi float [ %2604, %2597 ], [ 0.000000e+00, %2559 ]
  %2609 = phi float [ %2605, %2597 ], [ 0.000000e+00, %2559 ]
  %2610 = phi float [ %2606, %2597 ], [ 0.000000e+00, %2559 ]
  %2611 = add i32 %41, 128
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2611, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = and i32 %2613, 255
  %2615 = uitofp i32 %2614 to float
  %2616 = lshr i32 %2613, 8
  %2617 = and i32 %2616, 255
  %2618 = uitofp i32 %2617 to float
  %2619 = call float @dx.op.dot3.f32(i32 55, float %2480, float %2481, float %2482, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2620 = fmul fast float %2618, %2619
  %2621 = fadd fast float %2620, %2615
  %2622 = fmul fast float %2621, 0x3F70101020000000
  %2623 = call float @dx.op.unary.f32(i32 7, float %2622)  ; Saturate(value)
  br i1 %1964, label %2624, label %2632

; <label>:2624                                    ; preds = %2607
  %2625 = fsub fast float 1.000000e+00, %2260
  %2626 = fmul fast float %2625, %1953
  %2627 = fmul fast float %2625, %1954
  %2628 = fmul fast float %2625, %1955
  %2629 = fmul fast float %2625, %1956
  %2630 = fmul fast float %2625, %1957
  %2631 = fmul fast float %2625, %1958
  br label %2632

; <label>:2632                                    ; preds = %2624, %2607
  %2633 = phi float [ %2626, %2624 ], [ %1953, %2607 ]
  %2634 = phi float [ %2627, %2624 ], [ %1954, %2607 ]
  %2635 = phi float [ %2628, %2624 ], [ %1955, %2607 ]
  %2636 = phi float [ %2629, %2624 ], [ %1956, %2607 ]
  %2637 = phi float [ %2630, %2624 ], [ %1957, %2607 ]
  %2638 = phi float [ %2631, %2624 ], [ %1958, %2607 ]
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = and i32 %2640, 3
  %2642 = icmp eq i32 %2641, 3
  br i1 %2642, label %2721, label %2643

; <label>:2643                                    ; preds = %2632
  %2644 = and i32 %2640, 16
  %2645 = icmp ne i32 %2644, 0
  %2646 = select i1 %2645, float %2260, float 0.000000e+00
  %2647 = icmp eq i32 %2641, 0
  br i1 %2647, label %2648, label %2676

; <label>:2648                                    ; preds = %2643
  %2649 = and i32 %2640, 64
  %2650 = icmp ne i32 %2649, 0
  %2651 = select i1 %2650, float %2260, float 0.000000e+00
  %2652 = fsub fast float %2480, %2633
  %2653 = fsub fast float %2481, %2634
  %2654 = fsub fast float %2482, %2635
  %2655 = fmul fast float %2646, %2652
  %2656 = fmul fast float %2646, %2653
  %2657 = fmul fast float %2646, %2654
  %2658 = fadd fast float %2655, %2633
  %2659 = fadd fast float %2656, %2634
  %2660 = fadd fast float %2657, %2635
  %2661 = fsub fast float %2466, %1959
  %2662 = fmul fast float %2646, %2661
  %2663 = fadd fast float %2662, %1959
  %2664 = fsub fast float %2608, %2636
  %2665 = fsub fast float %2609, %2637
  %2666 = fsub fast float %2610, %2638
  %2667 = fmul fast float %2651, %2664
  %2668 = fmul fast float %2651, %2665
  %2669 = fmul fast float %2651, %2666
  %2670 = fadd fast float %2667, %2636
  %2671 = fadd fast float %2668, %2637
  %2672 = fadd fast float %2669, %2638
  %2673 = fsub fast float %2623, %1962
  %2674 = fmul fast float %2646, %2673
  %2675 = fadd fast float %2674, %1962
  br label %2721

; <label>:2676                                    ; preds = %2643
  %2677 = icmp eq i32 %2641, 1
  br i1 %2677, label %2678, label %2691

; <label>:2678                                    ; preds = %2676
  %2679 = fadd fast float %2480, -1.000000e+00
  %2680 = fadd fast float %2481, -1.000000e+00
  %2681 = fadd fast float %2482, -1.000000e+00
  %2682 = fmul fast float %2646, %2679
  %2683 = fmul fast float %2646, %2680
  %2684 = fmul fast float %2646, %2681
  %2685 = fadd fast float %2682, 1.000000e+00
  %2686 = fadd fast float %2683, 1.000000e+00
  %2687 = fadd fast float %2684, 1.000000e+00
  %2688 = fmul fast float %2685, %2633
  %2689 = fmul fast float %2686, %2634
  %2690 = fmul fast float %2687, %2635
  br label %2721

; <label>:2691                                    ; preds = %2676
  %2692 = icmp eq i32 %2641, 2
  br i1 %2692, label %2693, label %2721

; <label>:2693                                    ; preds = %2691
  %2694 = call float @dx.op.unary.f32(i32 24, float %2480)  ; Sqrt(value)
  %2695 = call float @dx.op.unary.f32(i32 24, float %2481)  ; Sqrt(value)
  %2696 = call float @dx.op.unary.f32(i32 24, float %2482)  ; Sqrt(value)
  %2697 = fadd fast float %2694, -5.000000e-01
  %2698 = fadd fast float %2695, -5.000000e-01
  %2699 = fadd fast float %2696, -5.000000e-01
  %2700 = fmul fast float %2697, %2646
  %2701 = fmul fast float %2698, %2646
  %2702 = fmul fast float %2699, %2646
  %2703 = fadd fast float %2700, 5.000000e-01
  %2704 = fadd fast float %2701, 5.000000e-01
  %2705 = fadd fast float %2702, 5.000000e-01
  %2706 = fmul fast float %2703, 2.000000e+00
  %2707 = fsub fast float 1.000000e+00, %2706
  %2708 = fmul fast float %2707, %2633
  %2709 = fadd fast float %2708, %2706
  %2710 = fmul fast float %2709, %2633
  %2711 = fmul fast float %2704, 2.000000e+00
  %2712 = fsub fast float 1.000000e+00, %2711
  %2713 = fmul fast float %2712, %2634
  %2714 = fadd fast float %2713, %2711
  %2715 = fmul fast float %2714, %2634
  %2716 = fmul fast float %2705, 2.000000e+00
  %2717 = fsub fast float 1.000000e+00, %2716
  %2718 = fmul fast float %2717, %2635
  %2719 = fadd fast float %2718, %2716
  %2720 = fmul fast float %2719, %2635
  br label %2721

; <label>:2721                                    ; preds = %2693, %2691, %2678, %2648, %2632
  %2722 = phi float [ %2633, %2632 ], [ %2710, %2693 ], [ %2633, %2691 ], [ %2688, %2678 ], [ %2658, %2648 ]
  %2723 = phi float [ %2634, %2632 ], [ %2715, %2693 ], [ %2634, %2691 ], [ %2689, %2678 ], [ %2659, %2648 ]
  %2724 = phi float [ %2635, %2632 ], [ %2720, %2693 ], [ %2635, %2691 ], [ %2690, %2678 ], [ %2660, %2648 ]
  %2725 = phi float [ %2636, %2632 ], [ %2636, %2693 ], [ %2636, %2691 ], [ %2636, %2678 ], [ %2670, %2648 ]
  %2726 = phi float [ %2637, %2632 ], [ %2637, %2693 ], [ %2637, %2691 ], [ %2637, %2678 ], [ %2671, %2648 ]
  %2727 = phi float [ %2638, %2632 ], [ %2638, %2693 ], [ %2638, %2691 ], [ %2638, %2678 ], [ %2672, %2648 ]
  %2728 = phi float [ %1959, %2632 ], [ %1959, %2693 ], [ %1959, %2691 ], [ %1959, %2678 ], [ %2663, %2648 ]
  %2729 = phi float [ %1962, %2632 ], [ %1962, %2693 ], [ %1962, %2691 ], [ %1962, %2678 ], [ %2675, %2648 ]
  %2730 = and i32 %2640, 12
  %2731 = icmp eq i32 %2730, 12
  br i1 %2731, label %2804, label %2732

; <label>:2732                                    ; preds = %2721
  %2733 = and i32 %2640, 2097184
  %2734 = icmp eq i32 %2733, 2097184
  %2735 = select i1 %2734, float %2260, float 0.000000e+00
  %2736 = and i32 %2640, 4194336
  %2737 = icmp eq i32 %2736, 4194336
  %2738 = select i1 %2737, float %2260, float 0.000000e+00
  %2739 = and i32 %2640, 8388640
  %2740 = icmp eq i32 %2739, 8388640
  %2741 = select i1 %2740, float %2260, float 0.000000e+00
  %2742 = icmp eq i32 %2730, 0
  br i1 %2742, label %2743, label %2756

; <label>:2743                                    ; preds = %2732
  %2744 = fsub fast float %2561, %1951
  %2745 = fsub fast float %2562, %1952
  %2746 = fmul fast float %2735, %2744
  %2747 = fmul fast float %2735, %2745
  %2748 = fadd fast float %2746, %1951
  %2749 = fadd fast float %2747, %1952
  %2750 = fsub fast float %2563, %1961
  %2751 = fmul fast float %2738, %2750
  %2752 = fadd fast float %2751, %1961
  %2753 = fsub fast float %2560, %1960
  %2754 = fmul fast float %2741, %2753
  %2755 = fadd fast float %2754, %1960
  br label %2804

; <label>:2756                                    ; preds = %2732
  %2757 = icmp eq i32 %2730, 4
  br i1 %2757, label %2758, label %2790

; <label>:2758                                    ; preds = %2756
  %2759 = fmul fast float %2735, %2561
  %2760 = fmul fast float %2735, %2562
  %2761 = fadd fast float %2759, %1951
  %2762 = fadd fast float %2760, %1952
  %2763 = call float @dx.op.binary.f32(i32 36, float %1961, float %2563)  ; FMin(a,b)
  %2764 = fsub fast float %2763, %1961
  %2765 = fmul fast float %2764, %2738
  %2766 = fadd fast float %2765, %1961
  %2767 = fadd fast float %2560, %1960
  %2768 = fmul fast float %2767, 0x3FF337FAE0000000
  %2769 = fmul fast float %1960, %1960
  %2770 = fmul fast float %2560, %2560
  %2771 = fadd fast float %2770, %2769
  %2772 = fmul fast float %2771, 0x3FE5152B00000000
  %2773 = fmul fast float %1960, 0xBFCC1F85E0000000
  %2774 = fmul fast float %2773, %2560
  %2775 = fadd fast float %2774, 0xBFE1363700000000
  %2776 = fadd fast float %2775, %2768
  %2777 = fsub fast float %2776, %2772
  %2778 = fmul fast float %2767, 0x3FBA6F0D00000000
  %2779 = fmul fast float %2771, 0x3FD0432880000000
  %2780 = fmul fast float %1960, 0xBFEF110800000000
  %2781 = fmul fast float %2780, %2560
  %2782 = fadd fast float %2781, 1.000000e+00
  %2783 = fsub fast float %2782, %2778
  %2784 = fadd fast float %2783, %2779
  %2785 = fdiv fast float %2777, %2784
  %2786 = call float @dx.op.unary.f32(i32 7, float %2785)  ; Saturate(value)
  %2787 = fsub fast float %2786, %1960
  %2788 = fmul fast float %2787, %2741
  %2789 = fadd fast float %2788, %1960
  br label %2804

; <label>:2790                                    ; preds = %2756
  %2791 = icmp eq i32 %2730, 8
  br i1 %2791, label %2792, label %2804

; <label>:2792                                    ; preds = %2790
  %2793 = fmul fast float %2735, %2561
  %2794 = fmul fast float %2735, %2562
  %2795 = fadd fast float %2793, %1951
  %2796 = fadd fast float %2794, %1952
  %2797 = call float @dx.op.binary.f32(i32 36, float %1961, float %2563)  ; FMin(a,b)
  %2798 = fsub fast float %2797, %1961
  %2799 = fmul fast float %2798, %2738
  %2800 = fadd fast float %2799, %1961
  %2801 = fsub fast float %2560, %1960
  %2802 = fmul fast float %2741, %2801
  %2803 = fadd fast float %2802, %1960
  br label %2804

; <label>:2804                                    ; preds = %2792, %2790, %2758, %2743, %2721, %2259, %1963, %1950
  %2805 = phi float [ %1951, %2721 ], [ %1951, %2259 ], [ %1951, %1950 ], [ %2795, %2792 ], [ %1951, %2790 ], [ %2761, %2758 ], [ %2748, %2743 ], [ %1951, %1963 ]
  %2806 = phi float [ %1952, %2721 ], [ %1952, %2259 ], [ %1952, %1950 ], [ %2796, %2792 ], [ %1952, %2790 ], [ %2762, %2758 ], [ %2749, %2743 ], [ %1952, %1963 ]
  %2807 = phi float [ %2722, %2721 ], [ %1953, %2259 ], [ %1953, %1950 ], [ %2722, %2792 ], [ %2722, %2790 ], [ %2722, %2758 ], [ %2722, %2743 ], [ %1953, %1963 ]
  %2808 = phi float [ %2723, %2721 ], [ %1954, %2259 ], [ %1954, %1950 ], [ %2723, %2792 ], [ %2723, %2790 ], [ %2723, %2758 ], [ %2723, %2743 ], [ %1954, %1963 ]
  %2809 = phi float [ %2724, %2721 ], [ %1955, %2259 ], [ %1955, %1950 ], [ %2724, %2792 ], [ %2724, %2790 ], [ %2724, %2758 ], [ %2724, %2743 ], [ %1955, %1963 ]
  %2810 = phi float [ %2725, %2721 ], [ %1956, %2259 ], [ %1956, %1950 ], [ %2725, %2792 ], [ %2725, %2790 ], [ %2725, %2758 ], [ %2725, %2743 ], [ %1956, %1963 ]
  %2811 = phi float [ %2726, %2721 ], [ %1957, %2259 ], [ %1957, %1950 ], [ %2726, %2792 ], [ %2726, %2790 ], [ %2726, %2758 ], [ %2726, %2743 ], [ %1957, %1963 ]
  %2812 = phi float [ %2727, %2721 ], [ %1958, %2259 ], [ %1958, %1950 ], [ %2727, %2792 ], [ %2727, %2790 ], [ %2727, %2758 ], [ %2727, %2743 ], [ %1958, %1963 ]
  %2813 = phi float [ %2728, %2721 ], [ %1959, %2259 ], [ %1959, %1950 ], [ %2728, %2792 ], [ %2728, %2790 ], [ %2728, %2758 ], [ %2728, %2743 ], [ %1959, %1963 ]
  %2814 = phi float [ %1960, %2721 ], [ %1960, %2259 ], [ %1960, %1950 ], [ %2803, %2792 ], [ %1960, %2790 ], [ %2789, %2758 ], [ %2755, %2743 ], [ %1960, %1963 ]
  %2815 = phi float [ %1961, %2721 ], [ %1961, %2259 ], [ %1961, %1950 ], [ %2800, %2792 ], [ %1961, %2790 ], [ %2766, %2758 ], [ %2752, %2743 ], [ %1961, %1963 ]
  %2816 = phi float [ %2729, %2721 ], [ %1962, %2259 ], [ %1962, %1950 ], [ %2729, %2792 ], [ %2729, %2790 ], [ %2729, %2758 ], [ %2729, %2743 ], [ %1962, %1963 ]
  br i1 %383, label %3658, label %2817

; <label>:2817                                    ; preds = %2804
  %2818 = icmp ult i32 %437, 4
  %2819 = add i32 %41, 72
  %2820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %2821 = extractvalue %dx.types.ResRet.i32 %2820, 0
  %2822 = add i32 %41, 76
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = or i32 %2824, %2821
  %2826 = icmp eq i32 %2825, 0
  br i1 %2826, label %3658, label %2827

; <label>:2827                                    ; preds = %2817
  %2828 = and i32 %2821, 262144
  %2829 = icmp ne i32 %2828, 0
  %2830 = select i1 %2829, float %44, float 1.000000e+00
  %2831 = select i1 %2829, float %45, float 0.000000e+00
  %2832 = select i1 %2829, float %46, float 0.000000e+00
  %2833 = select i1 %2829, float %47, float 1.000000e+00
  %2834 = select i1 %2829, float %48, float %64
  %2835 = select i1 %2829, float %49, float %65
  %2836 = add i32 %41, 332
  %2837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2838 = extractvalue %dx.types.ResRet.i32 %2837, 0
  %2839 = lshr i32 %2838, 16
  %2840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2839)  ; LegacyF16ToF32(value)
  %2841 = fmul fast float %2840, 0x3F50624DE0000000
  %2842 = add i32 %41, 136
  %2843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2842, i32 undef)  ; BufferLoad(srv,index,wot)
  %2844 = extractvalue %dx.types.ResRet.i32 %2843, 0
  %2845 = lshr i32 %2844, 16
  %2846 = and i32 %2845, 255
  %2847 = lshr i32 %2844, 24
  %2848 = add i32 %41, 340
  %2849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2850 = extractvalue %dx.types.ResRet.i32 %2849, 0
  %2851 = and i32 %2850, 65535
  %2852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2851)  ; LegacyF16ToF32(value)
  %2853 = lshr i32 %2850, 16
  %2854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2853)  ; LegacyF16ToF32(value)
  %2855 = add i32 %41, 80
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = lshr i32 %2857, 22
  %2859 = shl nuw nsw i32 %2858, 5
  %2860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2859)  ; LegacyF16ToF32(value)
  %2861 = shl i32 %2857, 4
  %2862 = and i32 %2861, 32752
  %2863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2862)  ; LegacyF16ToF32(value)
  %2864 = lshr i32 %2857, 7
  %2865 = and i32 %2864, 32752
  %2866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2865)  ; LegacyF16ToF32(value)
  %2867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2868 = extractvalue %dx.types.CBufRet.f32 %2867, 3
  %2869 = fmul fast float %2868, 1.000000e+03
  %2870 = fmul fast float %373, %2869
  %2871 = call float @dx.op.unary.f32(i32 22, float %2870)  ; Frc(value)
  %2872 = fadd fast float %2871, %363
  %2873 = fmul fast float %374, %2869
  %2874 = call float @dx.op.unary.f32(i32 22, float %2873)  ; Frc(value)
  %2875 = fadd fast float %2874, %365
  %2876 = fmul fast float %2841, %2869
  %2877 = call float @dx.op.unary.f32(i32 22, float %2876)  ; Frc(value)
  %2878 = fmul fast float %2877, 0x401921FB60000000
  %2879 = fadd fast float %2878, %2860
  %2880 = call float @dx.op.unary.f32(i32 13, float %2879)  ; Sin(value)
  %2881 = call float @dx.op.unary.f32(i32 12, float %2879)  ; Cos(value)
  %2882 = fsub fast float -0.000000e+00, %2880
  %2883 = fadd fast float %2834, -5.000000e-01
  %2884 = fadd fast float %2835, -5.000000e-01
  %2885 = fmul fast float %2852, %2883
  %2886 = fmul fast float %2854, %2884
  %2887 = fadd fast float %2885, 5.000000e-01
  %2888 = fadd fast float %2886, 5.000000e-01
  %2889 = fmul fast float %2863, %2887
  %2890 = fmul fast float %2866, %2888
  %2891 = fmul fast float %2881, %2889
  %2892 = call float @dx.op.tertiary.f32(i32 46, float %2882, float %2890, float %2891)  ; FMad(a,b,c)
  %2893 = fmul fast float %2880, %2889
  %2894 = call float @dx.op.tertiary.f32(i32 46, float %2881, float %2890, float %2893)  ; FMad(a,b,c)
  %2895 = fadd fast float %2872, %2892
  %2896 = fadd fast float %2875, %2894
  %2897 = icmp ugt i32 %2846, 1
  %2898 = icmp ugt i32 %2844, 33554431
  %2899 = or i1 %2898, %2897
  br i1 %2899, label %2900, label %2925

; <label>:2900                                    ; preds = %2827
  %2901 = add i32 %41, 276
  %2902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2901, i32 undef)  ; BufferLoad(srv,index,wot)
  %2903 = extractvalue %dx.types.ResRet.i32 %2902, 0
  %2904 = lshr i32 %2903, 16
  %2905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2904)  ; LegacyF16ToF32(value)
  %2906 = fmul fast float %2868, %2905
  %2907 = call float @dx.op.unary.f32(i32 22, float %2906)  ; Frc(value)
  %2908 = mul nuw nsw i32 %2846, %2847
  %2909 = uitofp i32 %2908 to float
  %2910 = fmul fast float %2907, %2909
  %2911 = call float @dx.op.unary.f32(i32 27, float %2910)  ; Round_ni(value)
  %2912 = fptoui float %2911 to i32
  %2913 = urem i32 %2912, %2846
  %2914 = udiv i32 %2912, %2847
  %2915 = call float @dx.op.unary.f32(i32 22, float %2895)  ; Frc(value)
  %2916 = call float @dx.op.unary.f32(i32 22, float %2896)  ; Frc(value)
  %2917 = uitofp i32 %2913 to float
  %2918 = uitofp i32 %2914 to float
  %2919 = fadd fast float %2915, %2917
  %2920 = fadd fast float %2916, %2918
  %2921 = uitofp i32 %2846 to float
  %2922 = uitofp i32 %2847 to float
  %2923 = fdiv fast float %2919, %2921
  %2924 = fdiv fast float %2920, %2922
  br label %2925

; <label>:2925                                    ; preds = %2900, %2827
  %2926 = phi float [ %2923, %2900 ], [ %2895, %2827 ]
  %2927 = phi float [ %2924, %2900 ], [ %2896, %2827 ]
  %2928 = and i32 %2821, 16777216
  %2929 = icmp eq i32 %2928, 0
  br i1 %2929, label %3039, label %2930

; <label>:2930                                    ; preds = %2925
  %2931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2932 = extractvalue %dx.types.CBufRet.f32 %2931, 0
  %2933 = extractvalue %dx.types.CBufRet.f32 %2931, 1
  %2934 = extractvalue %dx.types.CBufRet.f32 %2931, 2
  %2935 = fadd fast float %2932, %145
  %2936 = fadd fast float %2933, %146
  %2937 = fadd fast float %2934, %147
  %2938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2939 = extractvalue %dx.types.CBufRet.f32 %2938, 0
  %2940 = call float @dx.op.unary.f32(i32 7, float %2939)  ; Saturate(value)
  %2941 = icmp eq i32 %42, 65535
  br i1 %2941, label %3036, label %2942

; <label>:2942                                    ; preds = %2930
  %2943 = lshr i32 %42, 1
  %2944 = shl i32 %2943, 2
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = and i32 %42, 1
  %2948 = icmp ne i32 %2947, 0
  %2949 = lshr i32 %2946, 16
  %2950 = and i32 %2946, 65535
  %2951 = select i1 %2948, i32 %2949, i32 %2950
  %2952 = icmp eq i32 %2951, 65535
  br i1 %2952, label %3032, label %2953

; <label>:2953                                    ; preds = %2942
  %2954 = mul nuw nsw i32 %2951, 40
  %2955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2954, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.f32 %2955, 0
  %2957 = extractvalue %dx.types.ResRet.f32 %2955, 1
  %2958 = extractvalue %dx.types.ResRet.f32 %2955, 2
  %2959 = add nuw nsw i32 %2954, 12
  %2960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.f32 %2960, 0
  %2962 = extractvalue %dx.types.ResRet.f32 %2960, 1
  %2963 = extractvalue %dx.types.ResRet.f32 %2960, 2
  %2964 = add nuw nsw i32 %2954, 24
  %2965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2964, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.f32 %2965, 0
  %2967 = extractvalue %dx.types.ResRet.f32 %2965, 1
  %2968 = extractvalue %dx.types.ResRet.f32 %2965, 2
  %2969 = add nuw nsw i32 %2954, 36
  %2970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.f32 %2970, 0
  %2972 = fsub fast float %2935, %2956
  %2973 = fsub fast float %2936, %2957
  %2974 = fsub fast float %2937, %2958
  %2975 = fmul fast float %2971, %2972
  %2976 = fmul fast float %2971, %2973
  %2977 = fmul fast float %2971, %2974
  %2978 = call float @dx.op.unary.f32(i32 27, float %2975)  ; Round_ni(value)
  %2979 = call float @dx.op.unary.f32(i32 27, float %2976)  ; Round_ni(value)
  %2980 = call float @dx.op.unary.f32(i32 27, float %2977)  ; Round_ni(value)
  %2981 = fadd fast float %2978, 5.000000e-01
  %2982 = fadd fast float %2979, 5.000000e-01
  %2983 = fadd fast float %2980, 5.000000e-01
  %2984 = fmul fast float %2981, %2961
  %2985 = fmul fast float %2982, %2962
  %2986 = fmul fast float %2983, %2963
  %2987 = shl i32 %42, 2
  %2988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2989 = extractvalue %dx.types.ResRet.i32 %2988, 0
  %2990 = add i32 %2989, 0
  %2991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2990, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2992 = call float @dx.op.unary.f32(i32 22, float %2984)  ; Frc(value)
  %2993 = call float @dx.op.unary.f32(i32 22, float %2985)  ; Frc(value)
  %2994 = call float @dx.op.unary.f32(i32 22, float %2986)  ; Frc(value)
  %2995 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2991, %dx.types.Handle %36, float %2992, float %2993, float %2994, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2996 = extractvalue %dx.types.ResRet.f32 %2995, 0
  %2997 = extractvalue %dx.types.ResRet.f32 %2995, 1
  %2998 = extractvalue %dx.types.ResRet.f32 %2995, 2
  %2999 = fmul fast float %2996, 1.023000e+03
  %3000 = fmul fast float %2997, 1.023000e+03
  %3001 = fmul fast float %2998, 1.023000e+03
  %3002 = fadd fast float %2999, 5.000000e-01
  %3003 = fadd fast float %3000, 5.000000e-01
  %3004 = fadd fast float %3001, 5.000000e-01
  %3005 = call float @dx.op.unary.f32(i32 27, float %3002)  ; Round_ni(value)
  %3006 = call float @dx.op.unary.f32(i32 27, float %3003)  ; Round_ni(value)
  %3007 = call float @dx.op.unary.f32(i32 27, float %3004)  ; Round_ni(value)
  %3008 = fsub fast float %2975, %2978
  %3009 = fsub fast float %2976, %2979
  %3010 = fsub fast float %2977, %2980
  %3011 = fmul fast float %3008, 7.500000e-01
  %3012 = fmul fast float %3009, 7.500000e-01
  %3013 = fmul fast float %3010, 7.500000e-01
  %3014 = fadd fast float %2978, 1.250000e-01
  %3015 = fadd fast float %3014, %3011
  %3016 = fadd fast float %3015, %3005
  %3017 = fadd fast float %2979, 1.250000e-01
  %3018 = fadd fast float %3017, %3012
  %3019 = fadd fast float %3018, %3006
  %3020 = fadd fast float %2980, 1.250000e-01
  %3021 = fadd fast float %3020, %3013
  %3022 = fadd fast float %3021, %3007
  %3023 = fmul fast float %3016, %2966
  %3024 = fmul fast float %3019, %2967
  %3025 = fmul fast float %3022, %2968
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2987, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = add i32 %3027, 0
  %3029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3029, %dx.types.Handle %34, float %3023, float %3024, float %3025, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3031 = extractvalue %dx.types.ResRet.f32 %3030, 0
  br label %3032

; <label>:3032                                    ; preds = %2953, %2942
  %3033 = phi float [ %3031, %2953 ], [ -1.000000e+00, %2942 ]
  %3034 = fadd fast float %3033, %2940
  %3035 = call float @dx.op.unary.f32(i32 7, float %3034)  ; Saturate(value)
  br label %3036

; <label>:3036                                    ; preds = %3032, %2930
  %3037 = phi float [ %3035, %3032 ], [ %2940, %2930 ]
  %3038 = fmul fast float %3037, %432
  br label %3039

; <label>:3039                                    ; preds = %3036, %2925
  %3040 = phi float [ %3038, %3036 ], [ %432, %2925 ]
  %3041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3042 = extractvalue %dx.types.ResRet.i32 %3041, 0
  %3043 = and i32 %3042, 256
  %3044 = icmp eq i32 %3043, 0
  br i1 %3044, label %3091, label %3045

; <label>:3045                                    ; preds = %3039
  %3046 = add i32 %41, 452
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3046, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = add i32 %3048, 0
  %3050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3049, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3051 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3050, %dx.types.Handle %79, float %2926, float %2927, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3052 = extractvalue %dx.types.ResRet.f32 %3051, 0
  %3053 = add i32 %41, 148
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3053, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = shl i32 %3055, 4
  %3057 = and i32 %3056, 32752
  %3058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3057)  ; LegacyF16ToF32(value)
  %3059 = lshr i32 %3055, 7
  %3060 = and i32 %3059, 32752
  %3061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3060)  ; LegacyF16ToF32(value)
  %3062 = fsub fast float 1.000000e+00, %3040
  %3063 = call float @dx.op.binary.f32(i32 35, float %3062, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3064 = bitcast float %3040 to i32
  %3065 = sitofp i32 %3064 to float
  %3066 = fadd fast float %3065, 0xC1CFBF8940000000
  %3067 = fmul fast float %3061, %3066
  %3068 = fadd fast float %3067, 0x41CFBF8940000000
  %3069 = fptosi float %3068 to i32
  %3070 = bitcast i32 %3069 to float
  %3071 = bitcast float %3063 to i32
  %3072 = sitofp i32 %3071 to float
  %3073 = fadd fast float %3072, 0xC1CFBF8940000000
  %3074 = fmul fast float %3073, %3061
  %3075 = fadd fast float %3074, 0x41CFBF8940000000
  %3076 = fptosi float %3075 to i32
  %3077 = bitcast i32 %3076 to float
  %3078 = fmul fast float %3070, %3058
  %3079 = fmul fast float %3077, %3058
  %3080 = fsub fast float %3063, %3078
  %3081 = fadd fast float %3079, %3063
  %3082 = call float @dx.op.unary.f32(i32 7, float %3080)  ; Saturate(value)
  %3083 = call float @dx.op.unary.f32(i32 7, float %3081)  ; Saturate(value)
  %3084 = fsub fast float %3052, %3082
  %3085 = fsub fast float %3083, %3082
  %3086 = bitcast float %3085 to i32
  %3087 = sub nsw i32 2129859010, %3086
  %3088 = bitcast i32 %3087 to float
  %3089 = fmul fast float %3088, %3084
  %3090 = call float @dx.op.unary.f32(i32 7, float %3089)  ; Saturate(value)
  br label %3091

; <label>:3091                                    ; preds = %3045, %3039
  %3092 = phi float [ %3090, %3045 ], [ %3040, %3039 ]
  %3093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.i32 %3093, 0
  %3095 = and i32 %3094, 128
  %3096 = icmp eq i32 %3095, 0
  br i1 %3096, label %3113, label %3097

; <label>:3097                                    ; preds = %3091
  %3098 = add i32 %41, 436
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3098, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = add i32 %3100, 0
  %3102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3101, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3103 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3102, %dx.types.Handle %79, float %2926, float %2927, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3104 = extractvalue %dx.types.ResRet.f32 %3103, 0
  %3105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3106 = extractvalue %dx.types.ResRet.i32 %3105, 0
  %3107 = and i32 %3106, 524288
  %3108 = icmp ne i32 %3107, 0
  %3109 = fcmp fast ogt float %3104, 0x3FE0101020000000
  %3110 = select i1 %3109, float 1.000000e+00, float 0.000000e+00
  %3111 = select i1 %3108, float %3110, float %3104
  %3112 = fmul fast float %3111, %3092
  br label %3113

; <label>:3113                                    ; preds = %3097, %3091
  %3114 = phi float [ %3112, %3097 ], [ %3092, %3091 ]
  %3115 = fcmp fast ult float %3114, 0x3F70101020000000
  br i1 %3115, label %3658, label %3116

; <label>:3116                                    ; preds = %3113
  %3117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.i32 %3117, 0
  %3119 = and i32 %3118, 16
  %3120 = icmp eq i32 %3119, 0
  br i1 %3120, label %3319, label %3121

; <label>:3121                                    ; preds = %3116
  %3122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2842, i32 undef)  ; BufferLoad(srv,index,wot)
  %3123 = extractvalue %dx.types.ResRet.i32 %3122, 0
  %3124 = add i32 %41, 388
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3124, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = add i32 %3126, 0
  %3128 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3127, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3129 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3128, %dx.types.Handle %78, float %2926, float %2927, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3130 = extractvalue %dx.types.ResRet.f32 %3129, 0
  %3131 = extractvalue %dx.types.ResRet.f32 %3129, 1
  %3132 = extractvalue %dx.types.ResRet.f32 %3129, 2
  %3133 = extractvalue %dx.types.ResRet.f32 %3129, 3
  %3134 = and i32 %3123, 255
  %3135 = uitofp i32 %3134 to float
  %3136 = lshr i32 %3123, 8
  %3137 = and i32 %3136, 255
  %3138 = uitofp i32 %3137 to float
  %3139 = fmul fast float %3133, %3135
  %3140 = fadd fast float %3139, %3138
  %3141 = fmul fast float %3140, 0x3F70101000000000
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = and i32 %3143, 512
  %3145 = icmp eq i32 %3144, 0
  br i1 %3145, label %3154, label %3146

; <label>:3146                                    ; preds = %3121
  %3147 = add i32 %41, 468
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3147, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = add i32 %3149, 0
  %3151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3150, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3152 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3151, %dx.types.Handle %79, float %2926, float %2927, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3153 = extractvalue %dx.types.ResRet.f32 %3152, 0
  br label %3154

; <label>:3154                                    ; preds = %3146, %3121
  %3155 = phi float [ %3153, %3146 ], [ 1.000000e+00, %3121 ]
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = and i32 %3157, 33554432
  %3159 = icmp eq i32 %3158, 0
  br i1 %3159, label %3266, label %3160

; <label>:3160                                    ; preds = %3154
  %3161 = add i32 %41, 272
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3161, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = and i32 %3163, 65535
  %3165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3164)  ; LegacyF16ToF32(value)
  %3166 = lshr i32 %3163, 16
  %3167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3166)  ; LegacyF16ToF32(value)
  %3168 = add i32 %41, 276
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3168, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = and i32 %3170, 65535
  %3172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3171)  ; LegacyF16ToF32(value)
  %3173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3174 = extractvalue %dx.types.ResRet.i32 %3173, 0
  %3175 = lshr i32 %3174, 24
  %3176 = uitofp i32 %3175 to float
  %3177 = fmul fast float %3176, 0x3F70101020000000
  %3178 = and i32 %3174, 255
  %3179 = uitofp i32 %3178 to float
  %3180 = fmul fast float %3179, 0x3F70101020000000
  %3181 = lshr i32 %3174, 8
  %3182 = and i32 %3181, 255
  %3183 = uitofp i32 %3182 to float
  %3184 = fmul fast float %3183, 0x3F70101020000000
  %3185 = lshr i32 %3174, 16
  %3186 = and i32 %3185, 255
  %3187 = uitofp i32 %3186 to float
  %3188 = fmul fast float %3187, 0x3F70101020000000
  %3189 = add i32 %41, 268
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3189, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = lshr i32 %3191, 24
  %3193 = uitofp i32 %3192 to float
  %3194 = fmul fast float %3193, 0x3F70101020000000
  %3195 = and i32 %3191, 255
  %3196 = uitofp i32 %3195 to float
  %3197 = fmul fast float %3196, 0x3F70101020000000
  %3198 = lshr i32 %3191, 8
  %3199 = and i32 %3198, 255
  %3200 = uitofp i32 %3199 to float
  %3201 = fmul fast float %3200, 0x3F70101020000000
  %3202 = lshr i32 %3191, 16
  %3203 = and i32 %3202, 255
  %3204 = uitofp i32 %3203 to float
  %3205 = fmul fast float %3204, 0x3F70101020000000
  %3206 = bitcast float %3130 to i32
  %3207 = ashr i32 %3206, 1
  %3208 = sub nsw i32 1597463174, %3207
  %3209 = bitcast i32 %3208 to float
  %3210 = fmul fast float %3130, 5.000000e-01
  %3211 = fmul fast float %3209, %3209
  %3212 = fmul fast float %3211, %3210
  %3213 = fsub fast float 1.500000e+00, %3212
  %3214 = fmul fast float %3209, %3130
  %3215 = fmul fast float %3214, %3213
  %3216 = bitcast float %3131 to i32
  %3217 = ashr i32 %3216, 1
  %3218 = sub nsw i32 1597463174, %3217
  %3219 = bitcast i32 %3218 to float
  %3220 = fmul fast float %3131, 5.000000e-01
  %3221 = fmul fast float %3219, %3219
  %3222 = fmul fast float %3221, %3220
  %3223 = fsub fast float 1.500000e+00, %3222
  %3224 = fmul fast float %3219, %3131
  %3225 = fmul fast float %3224, %3223
  %3226 = bitcast float %3132 to i32
  %3227 = ashr i32 %3226, 1
  %3228 = sub nsw i32 1597463174, %3227
  %3229 = bitcast i32 %3228 to float
  %3230 = fmul fast float %3132, 5.000000e-01
  %3231 = fmul fast float %3229, %3229
  %3232 = fmul fast float %3231, %3230
  %3233 = fsub fast float 1.500000e+00, %3232
  %3234 = fmul fast float %3229, %3132
  %3235 = fmul fast float %3234, %3233
  %3236 = fsub fast float %3215, %3197
  %3237 = fsub fast float %3225, %3201
  %3238 = fsub fast float %3235, %3205
  %3239 = fmul fast float %3236, %3165
  %3240 = fmul fast float %3237, %3167
  %3241 = fmul fast float %3238, %3172
  %3242 = fadd fast float %3239, %3180
  %3243 = fadd fast float %3240, %3184
  %3244 = fadd fast float %3241, %3188
  %3245 = call float @dx.op.unary.f32(i32 7, float %3242)  ; Saturate(value)
  %3246 = call float @dx.op.unary.f32(i32 7, float %3243)  ; Saturate(value)
  %3247 = call float @dx.op.unary.f32(i32 7, float %3244)  ; Saturate(value)
  %3248 = fmul fast float %3245, %3245
  %3249 = fmul fast float %3246, %3246
  %3250 = fmul fast float %3247, %3247
  %3251 = fsub fast float %3248, %3130
  %3252 = fsub fast float %3249, %3131
  %3253 = fsub fast float %3250, %3132
  %3254 = fmul fast float %3251, %3155
  %3255 = fmul fast float %3252, %3155
  %3256 = fmul fast float %3253, %3155
  %3257 = fadd fast float %3254, %3130
  %3258 = fadd fast float %3255, %3131
  %3259 = fadd fast float %3256, %3132
  %3260 = fadd fast float %3177, %3141
  %3261 = fsub fast float %3260, %3194
  %3262 = call float @dx.op.unary.f32(i32 7, float %3261)  ; Saturate(value)
  %3263 = fsub fast float %3262, %3141
  %3264 = fmul fast float %3263, %3155
  %3265 = fadd fast float %3264, %3141
  br label %3319

; <label>:3266                                    ; preds = %3154
  %3267 = and i32 %3157, 134217728
  %3268 = icmp eq i32 %3267, 0
  br i1 %3268, label %3303, label %3269

; <label>:3269                                    ; preds = %3266
  %3270 = call float @dx.op.unary.f32(i32 24, float %350)  ; Sqrt(value)
  %3271 = call float @dx.op.unary.f32(i32 24, float %354)  ; Sqrt(value)
  %3272 = call float @dx.op.unary.f32(i32 24, float %358)  ; Sqrt(value)
  %3273 = fadd fast float %3270, -5.000000e-01
  %3274 = fadd fast float %3271, -5.000000e-01
  %3275 = fadd fast float %3272, -5.000000e-01
  %3276 = fmul fast float %3273, %3155
  %3277 = fmul fast float %3274, %3155
  %3278 = fmul fast float %3275, %3155
  %3279 = fadd fast float %3276, 5.000000e-01
  %3280 = fadd fast float %3277, 5.000000e-01
  %3281 = fadd fast float %3278, 5.000000e-01
  %3282 = call float @dx.op.unary.f32(i32 24, float %3130)  ; Sqrt(value)
  %3283 = call float @dx.op.unary.f32(i32 24, float %3131)  ; Sqrt(value)
  %3284 = call float @dx.op.unary.f32(i32 24, float %3132)  ; Sqrt(value)
  %3285 = fmul fast float %3279, 2.000000e+00
  %3286 = fsub fast float 1.000000e+00, %3285
  %3287 = fmul fast float %3286, %3282
  %3288 = fadd fast float %3287, %3285
  %3289 = fmul fast float %3288, %3282
  %3290 = fmul fast float %3280, 2.000000e+00
  %3291 = fsub fast float 1.000000e+00, %3290
  %3292 = fmul fast float %3291, %3283
  %3293 = fadd fast float %3292, %3290
  %3294 = fmul fast float %3293, %3283
  %3295 = fmul fast float %3281, 2.000000e+00
  %3296 = fsub fast float 1.000000e+00, %3295
  %3297 = fmul fast float %3296, %3284
  %3298 = fadd fast float %3297, %3295
  %3299 = fmul fast float %3298, %3284
  %3300 = fmul fast float %3289, %3289
  %3301 = fmul fast float %3294, %3294
  %3302 = fmul fast float %3299, %3299
  br label %3319

; <label>:3303                                    ; preds = %3266
  %3304 = fmul fast float %350, %350
  %3305 = fmul fast float %354, %354
  %3306 = fmul fast float %358, %358
  %3307 = fadd fast float %3304, -1.000000e+00
  %3308 = fadd fast float %3305, -1.000000e+00
  %3309 = fadd fast float %3306, -1.000000e+00
  %3310 = fmul fast float %3155, %3307
  %3311 = fmul fast float %3155, %3308
  %3312 = fmul fast float %3155, %3309
  %3313 = fadd fast float %3310, 1.000000e+00
  %3314 = fadd fast float %3311, 1.000000e+00
  %3315 = fadd fast float %3312, 1.000000e+00
  %3316 = fmul fast float %3313, %3130
  %3317 = fmul fast float %3314, %3131
  %3318 = fmul fast float %3315, %3132
  br label %3319

; <label>:3319                                    ; preds = %3303, %3269, %3160, %3116
  %3320 = phi float [ %3265, %3160 ], [ %3141, %3269 ], [ %3141, %3303 ], [ 0x3FA23C0BE0000000, %3116 ]
  %3321 = phi float [ %3257, %3160 ], [ %3300, %3269 ], [ %3316, %3303 ], [ 1.000000e+00, %3116 ]
  %3322 = phi float [ %3258, %3160 ], [ %3301, %3269 ], [ %3317, %3303 ], [ 1.000000e+00, %3116 ]
  %3323 = phi float [ %3259, %3160 ], [ %3302, %3269 ], [ %3318, %3303 ], [ 1.000000e+00, %3116 ]
  %3324 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3325 = extractvalue %dx.types.CBufRet.i32 %3324, 1
  %3326 = and i32 %3325, 1
  %3327 = icmp ne i32 %3326, 0
  %3328 = add i32 %41, 356
  %3329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3328, i32 undef)  ; BufferLoad(srv,index,wot)
  %3330 = extractvalue %dx.types.ResRet.i32 %3329, 0
  %3331 = and i32 %3330, 32
  %3332 = icmp ne i32 %3331, 0
  %3333 = and i1 %3327, %3332
  %3334 = select i1 %3333, float 1.000000e+00, float %3321
  %3335 = select i1 %3333, float 0x3FD3333340000000, float %3322
  %3336 = select i1 %3333, float 0x3FD3333340000000, float %3323
  %3337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3338 = extractvalue %dx.types.ResRet.i32 %3337, 0
  %3339 = and i32 %3338, 32
  %3340 = icmp eq i32 %3339, 0
  br i1 %3340, label %3413, label %3341

; <label>:3341                                    ; preds = %3319
  %3342 = add i32 %41, 140
  %3343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3342, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.i32 %3343, 0
  %3345 = add i32 %41, 404
  %3346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.i32 %3346, 0
  %3348 = add i32 %3347, 0
  %3349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3348, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3350 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3349, %dx.types.Handle %78, float %2926, float %2927, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3351 = extractvalue %dx.types.ResRet.f32 %3350, 0
  %3352 = extractvalue %dx.types.ResRet.f32 %3350, 1
  %3353 = extractvalue %dx.types.ResRet.f32 %3350, 2
  %3354 = extractvalue %dx.types.ResRet.f32 %3350, 3
  %3355 = and i32 %3344, 255
  %3356 = uitofp i32 %3355 to float
  %3357 = lshr i32 %3344, 8
  %3358 = and i32 %3357, 255
  %3359 = uitofp i32 %3358 to float
  %3360 = lshr i32 %3344, 16
  %3361 = and i32 %3360, 255
  %3362 = uitofp i32 %3361 to float
  %3363 = fmul fast float %3362, 0x3F70101000000000
  %3364 = fmul fast float %3351, %3356
  %3365 = fadd fast float %3364, %3359
  %3366 = fmul fast float %3365, 0x3F70101000000000
  %3367 = fadd fast float %3352, -5.000000e-01
  %3368 = fadd fast float %3354, -5.000000e-01
  %3369 = fmul fast float %3367, %3363
  %3370 = fmul fast float %3368, %3363
  %3371 = fadd fast float %3369, 5.000000e-01
  %3372 = fadd fast float %3370, 5.000000e-01
  %3373 = fmul fast float %3371, 2.000000e+00
  %3374 = fadd fast float %3373, -1.000000e+00
  %3375 = fmul fast float %3372, 2.000000e+00
  %3376 = fadd fast float %3375, -1.000000e+00
  %3377 = fadd fast float %3374, %3376
  %3378 = fmul fast float %3377, 5.000000e-01
  %3379 = fsub fast float %3374, %3376
  %3380 = fmul fast float %3379, 5.000000e-01
  %3381 = call float @dx.op.unary.f32(i32 6, float %3378)  ; FAbs(value)
  %3382 = fsub fast float 1.000000e+00, %3381
  %3383 = call float @dx.op.unary.f32(i32 6, float %3380)  ; FAbs(value)
  %3384 = fsub fast float %3382, %3383
  %3385 = call float @dx.op.dot3.f32(i32 55, float %3378, float %3380, float %3384, float %3378, float %3380, float %3384)  ; Dot3(ax,ay,az,bx,by,bz)
  %3386 = call float @dx.op.unary.f32(i32 25, float %3385)  ; Rsqrt(value)
  %3387 = fmul fast float %3378, %3386
  %3388 = fmul fast float %3380, %3386
  %3389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.i32 %3389, 0
  %3391 = and i32 %3390, 67108864
  %3392 = icmp eq i32 %3391, 0
  br i1 %3392, label %3409, label %3393

; <label>:3393                                    ; preds = %3341
  %3394 = add i32 %41, 328
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 65535
  %3398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3397)  ; LegacyF16ToF32(value)
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = and i32 %3400, 65535
  %3402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3401)  ; LegacyF16ToF32(value)
  %3403 = lshr i32 %3396, 16
  %3404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3403)  ; LegacyF16ToF32(value)
  %3405 = fsub fast float %3366, %3404
  %3406 = fmul fast float %3405, %3398
  %3407 = fadd fast float %3406, %3402
  %3408 = call float @dx.op.unary.f32(i32 7, float %3407)  ; Saturate(value)
  br label %3409

; <label>:3409                                    ; preds = %3393, %3341
  %3410 = phi float [ %3408, %3393 ], [ %3366, %3341 ]
  %3411 = call float @dx.op.dot2.f32(i32 54, float %3387, float %3388, float %2830, float %2831)  ; Dot2(ax,ay,bx,by)
  %3412 = call float @dx.op.dot2.f32(i32 54, float %3387, float %3388, float %2832, float %2833)  ; Dot2(ax,ay,bx,by)
  br label %3413

; <label>:3413                                    ; preds = %3409, %3319
  %3414 = phi float [ %3410, %3409 ], [ 0x3FD6666660000000, %3319 ]
  %3415 = phi float [ %3411, %3409 ], [ 0.000000e+00, %3319 ]
  %3416 = phi float [ %3412, %3409 ], [ 0.000000e+00, %3319 ]
  %3417 = phi float [ %3353, %3409 ], [ 1.000000e+00, %3319 ]
  %3418 = add i32 %41, 208
  %3419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.i32 %3419, 0
  %3421 = lshr i32 %3420, 22
  %3422 = shl nuw nsw i32 %3421, 5
  %3423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3422)  ; LegacyF16ToF32(value)
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.i32 %3424, 0
  %3426 = and i32 %3425, 64
  %3427 = icmp eq i32 %3426, 0
  br i1 %3427, label %3461, label %3428

; <label>:3428                                    ; preds = %3413
  %3429 = add i32 %41, 420
  %3430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3429, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.i32 %3430, 0
  %3432 = add i32 %3431, 0
  %3433 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3432, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.i32 %3434, 0
  %3436 = and i32 %3435, 131072
  %3437 = icmp eq i32 %3436, 0
  %3438 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3433, %dx.types.Handle %78, float %2926, float %2927, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3439 = extractvalue %dx.types.ResRet.f32 %3438, 0
  %3440 = extractvalue %dx.types.ResRet.f32 %3438, 1
  %3441 = extractvalue %dx.types.ResRet.f32 %3438, 2
  %3442 = fmul fast float %3439, %338
  %3443 = fmul fast float %3440, %341
  %3444 = fmul fast float %3441, %344
  br i1 %3437, label %3451, label %3445

; <label>:3445                                    ; preds = %3428
  %3446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3447 = extractvalue %dx.types.CBufRet.f32 %3446, 0
  %3448 = fmul fast float %3447, %3442
  %3449 = fmul fast float %3447, %3443
  %3450 = fmul fast float %3447, %3444
  br label %3451

; <label>:3451                                    ; preds = %3445, %3428
  %3452 = phi float [ %3448, %3445 ], [ %3442, %3428 ]
  %3453 = phi float [ %3449, %3445 ], [ %3443, %3428 ]
  %3454 = phi float [ %3450, %3445 ], [ %3444, %3428 ]
  %3455 = fmul fast float %3452, %3423
  %3456 = select i1 %206, float %3455, float %3452
  %3457 = call float @dx.op.dot3.f32(i32 55, float %3456, float %3453, float %3454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3458 = select i1 %206, float 0.000000e+00, float %3452
  %3459 = select i1 %206, float %3457, float %3453
  %3460 = select i1 %206, float 0.000000e+00, float %3454
  br label %3461

; <label>:3461                                    ; preds = %3451, %3413
  %3462 = phi float [ %3458, %3451 ], [ 0.000000e+00, %3413 ]
  %3463 = phi float [ %3459, %3451 ], [ 0.000000e+00, %3413 ]
  %3464 = phi float [ %3460, %3451 ], [ 0.000000e+00, %3413 ]
  %3465 = add i32 %41, 144
  %3466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.i32 %3466, 0
  %3468 = and i32 %3467, 255
  %3469 = uitofp i32 %3468 to float
  %3470 = lshr i32 %3467, 8
  %3471 = and i32 %3470, 255
  %3472 = uitofp i32 %3471 to float
  %3473 = call float @dx.op.dot3.f32(i32 55, float %3334, float %3335, float %3336, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3474 = fmul fast float %3472, %3473
  %3475 = fadd fast float %3474, %3469
  %3476 = fmul fast float %3475, 0x3F70101020000000
  %3477 = call float @dx.op.unary.f32(i32 7, float %3476)  ; Saturate(value)
  br i1 %2818, label %3478, label %3486

; <label>:3478                                    ; preds = %3461
  %3479 = fsub fast float 1.000000e+00, %3114
  %3480 = fmul fast float %3479, %2807
  %3481 = fmul fast float %3479, %2808
  %3482 = fmul fast float %3479, %2809
  %3483 = fmul fast float %3479, %2810
  %3484 = fmul fast float %3479, %2811
  %3485 = fmul fast float %3479, %2812
  br label %3486

; <label>:3486                                    ; preds = %3478, %3461
  %3487 = phi float [ %3480, %3478 ], [ %2807, %3461 ]
  %3488 = phi float [ %3481, %3478 ], [ %2808, %3461 ]
  %3489 = phi float [ %3482, %3478 ], [ %2809, %3461 ]
  %3490 = phi float [ %3483, %3478 ], [ %2810, %3461 ]
  %3491 = phi float [ %3484, %3478 ], [ %2811, %3461 ]
  %3492 = phi float [ %3485, %3478 ], [ %2812, %3461 ]
  %3493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3494 = extractvalue %dx.types.ResRet.i32 %3493, 0
  %3495 = and i32 %3494, 3
  %3496 = icmp eq i32 %3495, 3
  br i1 %3496, label %3575, label %3497

; <label>:3497                                    ; preds = %3486
  %3498 = and i32 %3494, 16
  %3499 = icmp ne i32 %3498, 0
  %3500 = select i1 %3499, float %3114, float 0.000000e+00
  %3501 = icmp eq i32 %3495, 0
  br i1 %3501, label %3502, label %3530

; <label>:3502                                    ; preds = %3497
  %3503 = and i32 %3494, 64
  %3504 = icmp ne i32 %3503, 0
  %3505 = select i1 %3504, float %3114, float 0.000000e+00
  %3506 = fsub fast float %3334, %3487
  %3507 = fsub fast float %3335, %3488
  %3508 = fsub fast float %3336, %3489
  %3509 = fmul fast float %3500, %3506
  %3510 = fmul fast float %3500, %3507
  %3511 = fmul fast float %3500, %3508
  %3512 = fadd fast float %3509, %3487
  %3513 = fadd fast float %3510, %3488
  %3514 = fadd fast float %3511, %3489
  %3515 = fsub fast float %3320, %2813
  %3516 = fmul fast float %3500, %3515
  %3517 = fadd fast float %3516, %2813
  %3518 = fsub fast float %3462, %3490
  %3519 = fsub fast float %3463, %3491
  %3520 = fsub fast float %3464, %3492
  %3521 = fmul fast float %3505, %3518
  %3522 = fmul fast float %3505, %3519
  %3523 = fmul fast float %3505, %3520
  %3524 = fadd fast float %3521, %3490
  %3525 = fadd fast float %3522, %3491
  %3526 = fadd fast float %3523, %3492
  %3527 = fsub fast float %3477, %2816
  %3528 = fmul fast float %3500, %3527
  %3529 = fadd fast float %3528, %2816
  br label %3575

; <label>:3530                                    ; preds = %3497
  %3531 = icmp eq i32 %3495, 1
  br i1 %3531, label %3532, label %3545

; <label>:3532                                    ; preds = %3530
  %3533 = fadd fast float %3334, -1.000000e+00
  %3534 = fadd fast float %3335, -1.000000e+00
  %3535 = fadd fast float %3336, -1.000000e+00
  %3536 = fmul fast float %3500, %3533
  %3537 = fmul fast float %3500, %3534
  %3538 = fmul fast float %3500, %3535
  %3539 = fadd fast float %3536, 1.000000e+00
  %3540 = fadd fast float %3537, 1.000000e+00
  %3541 = fadd fast float %3538, 1.000000e+00
  %3542 = fmul fast float %3539, %3487
  %3543 = fmul fast float %3540, %3488
  %3544 = fmul fast float %3541, %3489
  br label %3575

; <label>:3545                                    ; preds = %3530
  %3546 = icmp eq i32 %3495, 2
  br i1 %3546, label %3547, label %3575

; <label>:3547                                    ; preds = %3545
  %3548 = call float @dx.op.unary.f32(i32 24, float %3334)  ; Sqrt(value)
  %3549 = call float @dx.op.unary.f32(i32 24, float %3335)  ; Sqrt(value)
  %3550 = call float @dx.op.unary.f32(i32 24, float %3336)  ; Sqrt(value)
  %3551 = fadd fast float %3548, -5.000000e-01
  %3552 = fadd fast float %3549, -5.000000e-01
  %3553 = fadd fast float %3550, -5.000000e-01
  %3554 = fmul fast float %3551, %3500
  %3555 = fmul fast float %3552, %3500
  %3556 = fmul fast float %3553, %3500
  %3557 = fadd fast float %3554, 5.000000e-01
  %3558 = fadd fast float %3555, 5.000000e-01
  %3559 = fadd fast float %3556, 5.000000e-01
  %3560 = fmul fast float %3557, 2.000000e+00
  %3561 = fsub fast float 1.000000e+00, %3560
  %3562 = fmul fast float %3561, %3487
  %3563 = fadd fast float %3562, %3560
  %3564 = fmul fast float %3563, %3487
  %3565 = fmul fast float %3558, 2.000000e+00
  %3566 = fsub fast float 1.000000e+00, %3565
  %3567 = fmul fast float %3566, %3488
  %3568 = fadd fast float %3567, %3565
  %3569 = fmul fast float %3568, %3488
  %3570 = fmul fast float %3559, 2.000000e+00
  %3571 = fsub fast float 1.000000e+00, %3570
  %3572 = fmul fast float %3571, %3489
  %3573 = fadd fast float %3572, %3570
  %3574 = fmul fast float %3573, %3489
  br label %3575

; <label>:3575                                    ; preds = %3547, %3545, %3532, %3502, %3486
  %3576 = phi float [ %3487, %3486 ], [ %3564, %3547 ], [ %3487, %3545 ], [ %3542, %3532 ], [ %3512, %3502 ]
  %3577 = phi float [ %3488, %3486 ], [ %3569, %3547 ], [ %3488, %3545 ], [ %3543, %3532 ], [ %3513, %3502 ]
  %3578 = phi float [ %3489, %3486 ], [ %3574, %3547 ], [ %3489, %3545 ], [ %3544, %3532 ], [ %3514, %3502 ]
  %3579 = phi float [ %3490, %3486 ], [ %3490, %3547 ], [ %3490, %3545 ], [ %3490, %3532 ], [ %3524, %3502 ]
  %3580 = phi float [ %3491, %3486 ], [ %3491, %3547 ], [ %3491, %3545 ], [ %3491, %3532 ], [ %3525, %3502 ]
  %3581 = phi float [ %3492, %3486 ], [ %3492, %3547 ], [ %3492, %3545 ], [ %3492, %3532 ], [ %3526, %3502 ]
  %3582 = phi float [ %2813, %3486 ], [ %2813, %3547 ], [ %2813, %3545 ], [ %2813, %3532 ], [ %3517, %3502 ]
  %3583 = phi float [ %2816, %3486 ], [ %2816, %3547 ], [ %2816, %3545 ], [ %2816, %3532 ], [ %3529, %3502 ]
  %3584 = and i32 %3494, 12
  %3585 = icmp eq i32 %3584, 12
  br i1 %3585, label %3658, label %3586

; <label>:3586                                    ; preds = %3575
  %3587 = and i32 %3494, 2097184
  %3588 = icmp eq i32 %3587, 2097184
  %3589 = select i1 %3588, float %3114, float 0.000000e+00
  %3590 = and i32 %3494, 4194336
  %3591 = icmp eq i32 %3590, 4194336
  %3592 = select i1 %3591, float %3114, float 0.000000e+00
  %3593 = and i32 %3494, 8388640
  %3594 = icmp eq i32 %3593, 8388640
  %3595 = select i1 %3594, float %3114, float 0.000000e+00
  %3596 = icmp eq i32 %3584, 0
  br i1 %3596, label %3597, label %3610

; <label>:3597                                    ; preds = %3586
  %3598 = fsub fast float %3415, %2805
  %3599 = fsub fast float %3416, %2806
  %3600 = fmul fast float %3589, %3598
  %3601 = fmul fast float %3589, %3599
  %3602 = fadd fast float %3600, %2805
  %3603 = fadd fast float %3601, %2806
  %3604 = fsub fast float %3417, %2815
  %3605 = fmul fast float %3592, %3604
  %3606 = fadd fast float %3605, %2815
  %3607 = fsub fast float %3414, %2814
  %3608 = fmul fast float %3595, %3607
  %3609 = fadd fast float %3608, %2814
  br label %3658

; <label>:3610                                    ; preds = %3586
  %3611 = icmp eq i32 %3584, 4
  br i1 %3611, label %3612, label %3644

; <label>:3612                                    ; preds = %3610
  %3613 = fmul fast float %3589, %3415
  %3614 = fmul fast float %3589, %3416
  %3615 = fadd fast float %3613, %2805
  %3616 = fadd fast float %3614, %2806
  %3617 = call float @dx.op.binary.f32(i32 36, float %2815, float %3417)  ; FMin(a,b)
  %3618 = fsub fast float %3617, %2815
  %3619 = fmul fast float %3618, %3592
  %3620 = fadd fast float %3619, %2815
  %3621 = fadd fast float %3414, %2814
  %3622 = fmul fast float %3621, 0x3FF337FAE0000000
  %3623 = fmul fast float %2814, %2814
  %3624 = fmul fast float %3414, %3414
  %3625 = fadd fast float %3624, %3623
  %3626 = fmul fast float %3625, 0x3FE5152B00000000
  %3627 = fmul fast float %2814, 0xBFCC1F85E0000000
  %3628 = fmul fast float %3627, %3414
  %3629 = fadd fast float %3628, 0xBFE1363700000000
  %3630 = fadd fast float %3629, %3622
  %3631 = fsub fast float %3630, %3626
  %3632 = fmul fast float %3621, 0x3FBA6F0D00000000
  %3633 = fmul fast float %3625, 0x3FD0432880000000
  %3634 = fmul fast float %2814, 0xBFEF110800000000
  %3635 = fmul fast float %3634, %3414
  %3636 = fadd fast float %3635, 1.000000e+00
  %3637 = fsub fast float %3636, %3632
  %3638 = fadd fast float %3637, %3633
  %3639 = fdiv fast float %3631, %3638
  %3640 = call float @dx.op.unary.f32(i32 7, float %3639)  ; Saturate(value)
  %3641 = fsub fast float %3640, %2814
  %3642 = fmul fast float %3641, %3595
  %3643 = fadd fast float %3642, %2814
  br label %3658

; <label>:3644                                    ; preds = %3610
  %3645 = icmp eq i32 %3584, 8
  br i1 %3645, label %3646, label %3658

; <label>:3646                                    ; preds = %3644
  %3647 = fmul fast float %3589, %3415
  %3648 = fmul fast float %3589, %3416
  %3649 = fadd fast float %3647, %2805
  %3650 = fadd fast float %3648, %2806
  %3651 = call float @dx.op.binary.f32(i32 36, float %2815, float %3417)  ; FMin(a,b)
  %3652 = fsub fast float %3651, %2815
  %3653 = fmul fast float %3652, %3592
  %3654 = fadd fast float %3653, %2815
  %3655 = fsub fast float %3414, %2814
  %3656 = fmul fast float %3595, %3655
  %3657 = fadd fast float %3656, %2814
  br label %3658

; <label>:3658                                    ; preds = %3646, %3644, %3612, %3597, %3575, %3113, %2817, %2804
  %3659 = phi float [ %2805, %3575 ], [ %2805, %3113 ], [ %2805, %2804 ], [ %2805, %2817 ], [ %3602, %3597 ], [ %3615, %3612 ], [ %2805, %3644 ], [ %3649, %3646 ]
  %3660 = phi float [ %2806, %3575 ], [ %2806, %3113 ], [ %2806, %2804 ], [ %2806, %2817 ], [ %3603, %3597 ], [ %3616, %3612 ], [ %2806, %3644 ], [ %3650, %3646 ]
  %3661 = phi float [ %3576, %3575 ], [ %2807, %3113 ], [ %2807, %2804 ], [ %2807, %2817 ], [ %3576, %3597 ], [ %3576, %3612 ], [ %3576, %3644 ], [ %3576, %3646 ]
  %3662 = phi float [ %3577, %3575 ], [ %2808, %3113 ], [ %2808, %2804 ], [ %2808, %2817 ], [ %3577, %3597 ], [ %3577, %3612 ], [ %3577, %3644 ], [ %3577, %3646 ]
  %3663 = phi float [ %3578, %3575 ], [ %2809, %3113 ], [ %2809, %2804 ], [ %2809, %2817 ], [ %3578, %3597 ], [ %3578, %3612 ], [ %3578, %3644 ], [ %3578, %3646 ]
  %3664 = phi float [ %3579, %3575 ], [ %2810, %3113 ], [ %2810, %2804 ], [ %2810, %2817 ], [ %3579, %3597 ], [ %3579, %3612 ], [ %3579, %3644 ], [ %3579, %3646 ]
  %3665 = phi float [ %3580, %3575 ], [ %2811, %3113 ], [ %2811, %2804 ], [ %2811, %2817 ], [ %3580, %3597 ], [ %3580, %3612 ], [ %3580, %3644 ], [ %3580, %3646 ]
  %3666 = phi float [ %3581, %3575 ], [ %2812, %3113 ], [ %2812, %2804 ], [ %2812, %2817 ], [ %3581, %3597 ], [ %3581, %3612 ], [ %3581, %3644 ], [ %3581, %3646 ]
  %3667 = phi float [ %3582, %3575 ], [ %2813, %3113 ], [ %2813, %2804 ], [ %2813, %2817 ], [ %3582, %3597 ], [ %3582, %3612 ], [ %3582, %3644 ], [ %3582, %3646 ]
  %3668 = phi float [ %2814, %3575 ], [ %2814, %3113 ], [ %2814, %2804 ], [ %2814, %2817 ], [ %3609, %3597 ], [ %3643, %3612 ], [ %2814, %3644 ], [ %3657, %3646 ]
  %3669 = phi float [ %2815, %3575 ], [ %2815, %3113 ], [ %2815, %2804 ], [ %2815, %2817 ], [ %3606, %3597 ], [ %3620, %3612 ], [ %2815, %3644 ], [ %3654, %3646 ]
  %3670 = phi float [ %3583, %3575 ], [ %2816, %3113 ], [ %2816, %2804 ], [ %2816, %2817 ], [ %3583, %3597 ], [ %3583, %3612 ], [ %3583, %3644 ], [ %3583, %3646 ]
  %3671 = add i32 %41, 360
  %3672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3671, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.i32 %3672, 0
  %3674 = bitcast i32 %3673 to float
  %3675 = fcmp fast oge float %3674, 0.000000e+00
  %3676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3677 = extractvalue %dx.types.CBufRet.f32 %3676, 0
  %3678 = select i1 %3675, float %3674, float %3677
  %3679 = call float @dx.op.dot2.f32(i32 54, float %3659, float %3660, float %3659, float %3660)  ; Dot2(ax,ay,bx,by)
  %3680 = fmul fast float %3679, 0x3FE3333340000000
  %3681 = fsub fast float 1.000000e+00, %3680
  %3682 = call float @dx.op.dot3.f32(i32 55, float %3659, float %3660, float %3681, float %3659, float %3660, float %3681)  ; Dot3(ax,ay,az,bx,by,bz)
  %3683 = call float @dx.op.unary.f32(i32 25, float %3682)  ; Rsqrt(value)
  %3684 = fmul fast float %3683, %3659
  %3685 = fmul fast float %3683, %3660
  %3686 = fmul fast float %3681, %3683
  %3687 = fmul fast float %3686, %89
  %3688 = fmul fast float %3686, %90
  %3689 = fmul fast float %3686, %91
  %3690 = fmul fast float %3684, %57
  %3691 = fmul fast float %3684, %58
  %3692 = fmul fast float %3684, %59
  %3693 = fadd fast float %3687, %3690
  %3694 = fadd fast float %3688, %3691
  %3695 = fadd fast float %3689, %3692
  %3696 = fmul fast float %101, %3685
  %3697 = fmul fast float %102, %3685
  %3698 = fmul fast float %103, %3685
  %3699 = fadd fast float %3693, %3696
  %3700 = fadd fast float %3694, %3697
  %3701 = fadd fast float %3695, %3698
  %3702 = call float @dx.op.dot3.f32(i32 55, float %3699, float %3700, float %3701, float %3699, float %3700, float %3701)  ; Dot3(ax,ay,az,bx,by,bz)
  %3703 = call float @dx.op.unary.f32(i32 25, float %3702)  ; Rsqrt(value)
  %3704 = fmul fast float %3699, %3703
  %3705 = fmul fast float %3700, %3703
  %3706 = fmul fast float %3701, %3703
  %3707 = and i32 %43, 1
  %3708 = icmp eq i32 %3707, 0
  br i1 %3708, label %3709, label %4217

; <label>:3709                                    ; preds = %3658
  %3710 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3711 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %3712 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %3713 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3714 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %3715 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %3716 = fadd fast float %3710, %145
  %3717 = fadd fast float %3711, %146
  %3718 = fadd fast float %3712, %147
  %3719 = fadd fast float %3713, %145
  %3720 = fadd fast float %3714, %146
  %3721 = fadd fast float %3715, %147
  %3722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3723 = extractvalue %dx.types.CBufRet.f32 %3722, 0
  %3724 = extractvalue %dx.types.CBufRet.f32 %3722, 1
  %3725 = extractvalue %dx.types.CBufRet.f32 %3722, 2
  %3726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3727 = extractvalue %dx.types.CBufRet.f32 %3726, 2
  %3728 = extractvalue %dx.types.CBufRet.f32 %3726, 3
  %3729 = fmul fast float %3723, %82
  %3730 = fmul fast float %3729, %3727
  %3731 = fmul fast float %3724, %83
  %3732 = fmul fast float %3731, %3728
  %3733 = fptoui float %3730 to i32
  %3734 = fptoui float %3732 to i32
  %3735 = fadd fast float %3723, -1.000000e+00
  %3736 = fadd fast float %3724, -1.000000e+00
  %3737 = fptoui float %3735 to i32
  %3738 = fptoui float %3736 to i32
  %3739 = call i32 @dx.op.binary.i32(i32 40, i32 %3733, i32 %3737)  ; UMin(a,b)
  %3740 = call i32 @dx.op.binary.i32(i32 40, i32 %3734, i32 %3738)  ; UMin(a,b)
  %3741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3742 = extractvalue %dx.types.CBufRet.f32 %3741, 2
  %3743 = extractvalue %dx.types.CBufRet.f32 %3741, 3
  %3744 = fmul fast float %3742, %73
  %3745 = fsub fast float %3744, %3743
  %3746 = fadd fast float %3725, -1.000000e+00
  %3747 = call float @dx.op.binary.f32(i32 36, float %3745, float %3746)  ; FMin(a,b)
  %3748 = fptoui float %3747 to i32
  %3749 = fptoui float %3723 to i32
  %3750 = fptoui float %3724 to i32
  %3751 = mul i32 %3748, %3750
  %3752 = add i32 %3751, %3740
  %3753 = mul i32 %3752, %3749
  %3754 = add i32 %3753, %3739
  %3755 = shl i32 %3754, 2
  %3756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3755, i32 undef)  ; BufferLoad(srv,index,wot)
  %3757 = extractvalue %dx.types.ResRet.i32 %3756, 0
  %3758 = and i32 %3757, 1023
  %3759 = lshr i32 %3757, 10
  %3760 = icmp eq i32 %3758, 0
  br i1 %3760, label %4186, label %3761

; <label>:3761                                    ; preds = %3709
  %3762 = and i32 %3757, 1023
  br label %3763

; <label>:3763                                    ; preds = %3889, %3761
  %3764 = phi i32 [ %3839, %3889 ], [ 0, %3761 ]
  %3765 = phi float [ %3890, %3889 ], [ 0.000000e+00, %3761 ]
  %3766 = phi float [ %3891, %3889 ], [ %3678, %3761 ]
  %3767 = phi float [ %3892, %3889 ], [ %3670, %3761 ]
  %3768 = phi float [ %3893, %3889 ], [ 0.000000e+00, %3761 ]
  %3769 = phi float [ %3894, %3889 ], [ 0.000000e+00, %3761 ]
  %3770 = phi float [ %3895, %3889 ], [ %3664, %3761 ]
  %3771 = phi float [ %3896, %3889 ], [ %3665, %3761 ]
  %3772 = phi float [ %3897, %3889 ], [ %3666, %3761 ]
  %3773 = phi float [ %3898, %3889 ], [ %3704, %3761 ]
  %3774 = phi float [ %3899, %3889 ], [ %3705, %3761 ]
  %3775 = phi float [ %3900, %3889 ], [ %3706, %3761 ]
  %3776 = phi float [ %3901, %3889 ], [ %3669, %3761 ]
  %3777 = phi float [ %3902, %3889 ], [ %3668, %3761 ]
  %3778 = phi float [ %3903, %3889 ], [ 0.000000e+00, %3761 ]
  %3779 = phi float [ %3904, %3889 ], [ %3667, %3761 ]
  %3780 = phi float [ %3905, %3889 ], [ %3661, %3761 ]
  %3781 = phi float [ %3906, %3889 ], [ %3662, %3761 ]
  %3782 = phi float [ %3907, %3889 ], [ %3663, %3761 ]
  %3783 = add nuw nsw i32 %3764, %3759
  %3784 = shl i32 %3783, 2
  %3785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3784, i32 undef)  ; BufferLoad(srv,index,wot)
  %3786 = extractvalue %dx.types.ResRet.i32 %3785, 0
  %3787 = shl i32 %3786, 8
  %3788 = or i32 %3787, 48
  %3789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3788, i32 undef)  ; BufferLoad(srv,index,wot)
  %3790 = extractvalue %dx.types.ResRet.f32 %3789, 0
  %3791 = extractvalue %dx.types.ResRet.f32 %3789, 1
  %3792 = extractvalue %dx.types.ResRet.f32 %3789, 2
  %3793 = extractvalue %dx.types.ResRet.f32 %3789, 3
  %3794 = or i32 %3787, 64
  %3795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3794, i32 undef)  ; BufferLoad(srv,index,wot)
  %3796 = extractvalue %dx.types.ResRet.i32 %3795, 0
  %3797 = extractvalue %dx.types.ResRet.i32 %3795, 1
  %3798 = or i32 %3787, 80
  %3799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3798, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.f32 %3799, 2
  %3801 = extractvalue %dx.types.ResRet.f32 %3799, 3
  %3802 = or i32 %3787, 96
  %3803 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3804 = extractvalue %dx.types.ResRet.f32 %3803, 0
  %3805 = extractvalue %dx.types.ResRet.f32 %3803, 1
  %3806 = extractvalue %dx.types.ResRet.f32 %3803, 2
  %3807 = extractvalue %dx.types.ResRet.f32 %3803, 3
  %3808 = or i32 %3787, 112
  %3809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3808, i32 undef)  ; BufferLoad(srv,index,wot)
  %3810 = extractvalue %dx.types.ResRet.f32 %3809, 2
  %3811 = or i32 %3787, 128
  %3812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.f32 %3812, 0
  %3814 = extractvalue %dx.types.ResRet.f32 %3812, 1
  %3815 = extractvalue %dx.types.ResRet.f32 %3812, 2
  %3816 = extractvalue %dx.types.ResRet.f32 %3812, 3
  %3817 = or i32 %3787, 144
  %3818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.f32 %3818, 0
  %3820 = extractvalue %dx.types.ResRet.f32 %3818, 1
  %3821 = extractvalue %dx.types.ResRet.f32 %3818, 2
  %3822 = extractvalue %dx.types.ResRet.f32 %3818, 3
  %3823 = or i32 %3787, 160
  %3824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3823, i32 undef)  ; BufferLoad(srv,index,wot)
  %3825 = extractvalue %dx.types.ResRet.f32 %3824, 0
  %3826 = extractvalue %dx.types.ResRet.f32 %3824, 1
  %3827 = extractvalue %dx.types.ResRet.f32 %3824, 2
  %3828 = extractvalue %dx.types.ResRet.f32 %3824, 3
  %3829 = or i32 %3787, 192
  %3830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.i32 %3830, 0
  %3832 = or i32 %3787, 208
  %3833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3835 = or i32 %3787, 248
  %3836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3835, i32 undef)  ; BufferLoad(srv,index,wot)
  %3837 = extractvalue %dx.types.ResRet.f32 %3836, 0
  %3838 = extractvalue %dx.types.ResRet.f32 %3836, 1
  %3839 = add nuw nsw i32 %3764, 1
  %3840 = bitcast float %3793 to i32
  %3841 = and i32 %3840, 512
  %3842 = icmp eq i32 %3841, 0
  %3843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3787, i32 undef)  ; BufferLoad(srv,index,wot)
  %3844 = extractvalue %dx.types.ResRet.f32 %3843, 0
  %3845 = extractvalue %dx.types.ResRet.f32 %3843, 1
  %3846 = extractvalue %dx.types.ResRet.f32 %3843, 2
  %3847 = extractvalue %dx.types.ResRet.f32 %3843, 3
  %3848 = call float @dx.op.dot4.f32(i32 56, float %3844, float %3845, float %3846, float %3847, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3849 = or i32 %3787, 16
  %3850 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3849, i32 undef)  ; BufferLoad(srv,index,wot)
  %3851 = extractvalue %dx.types.ResRet.f32 %3850, 0
  %3852 = extractvalue %dx.types.ResRet.f32 %3850, 1
  %3853 = extractvalue %dx.types.ResRet.f32 %3850, 2
  %3854 = extractvalue %dx.types.ResRet.f32 %3850, 3
  %3855 = call float @dx.op.dot4.f32(i32 56, float %3851, float %3852, float %3853, float %3854, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3856 = or i32 %3787, 32
  %3857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3858 = extractvalue %dx.types.ResRet.f32 %3857, 0
  %3859 = extractvalue %dx.types.ResRet.f32 %3857, 1
  %3860 = extractvalue %dx.types.ResRet.f32 %3857, 2
  %3861 = extractvalue %dx.types.ResRet.f32 %3857, 3
  %3862 = call float @dx.op.dot4.f32(i32 56, float %3858, float %3859, float %3860, float %3861, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3863 = call float @dx.op.unary.f32(i32 27, float %3848)  ; Round_ni(value)
  %3864 = call float @dx.op.unary.f32(i32 6, float %3863)  ; FAbs(value)
  %3865 = call float @dx.op.unary.f32(i32 27, float %3855)  ; Round_ni(value)
  %3866 = call float @dx.op.unary.f32(i32 6, float %3865)  ; FAbs(value)
  %3867 = call float @dx.op.unary.f32(i32 6, float %3862)  ; FAbs(value)
  %3868 = call float @dx.op.unary.f32(i32 27, float %3867)  ; Round_ni(value)
  %3869 = fadd fast float %3866, %3864
  %3870 = fadd fast float %3869, %3868
  %3871 = fcmp fast oeq float %3870, 0.000000e+00
  %3872 = call float @dx.op.dot4.f32(i32 56, float %3844, float %3845, float %3846, float %3847, float %3716, float %3717, float %3718, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3873 = call float @dx.op.dot4.f32(i32 56, float %3851, float %3852, float %3853, float %3854, float %3716, float %3717, float %3718, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3874 = call float @dx.op.dot4.f32(i32 56, float %3844, float %3845, float %3846, float %3847, float %3719, float %3720, float %3721, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3875 = call float @dx.op.dot4.f32(i32 56, float %3851, float %3852, float %3853, float %3854, float %3719, float %3720, float %3721, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3876 = fsub fast float %3872, %3848
  %3877 = fsub fast float %3874, %3848
  %3878 = fsub fast float %3873, %3855
  %3879 = fsub fast float %3875, %3855
  %3880 = call float @dx.op.dot3.f32(i32 55, float %3790, float %3791, float %3792, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %3881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3882 = extractvalue %dx.types.CBufRet.f32 %3881, 2
  %3883 = fadd fast float %3882, %3880
  %3884 = call float @dx.op.unary.f32(i32 7, float %3883)  ; Saturate(value)
  %3885 = extractvalue %dx.types.CBufRet.f32 %3881, 0
  %3886 = fcmp fast ogt float %3884, %3885
  %3887 = and i1 %3871, %3886
  %3888 = and i1 %3842, %3887
  br i1 %3888, label %3909, label %3889

; <label>:3889                                    ; preds = %4172, %3990, %3909, %3763
  %3890 = phi float [ %3765, %3909 ], [ %3993, %3990 ], [ %3993, %4172 ], [ %3765, %3763 ]
  %3891 = phi float [ %3766, %3909 ], [ %3766, %3990 ], [ %4147, %4172 ], [ %3766, %3763 ]
  %3892 = phi float [ %3767, %3909 ], [ %3767, %3990 ], [ %4145, %4172 ], [ %3767, %3763 ]
  %3893 = phi float [ %3768, %3909 ], [ %3768, %3990 ], [ %4117, %4172 ], [ %3768, %3763 ]
  %3894 = phi float [ %3769, %3909 ], [ %3769, %3990 ], [ %4115, %4172 ], [ %3769, %3763 ]
  %3895 = phi float [ %3770, %3909 ], [ %3770, %3990 ], [ %4182, %4172 ], [ %3770, %3763 ]
  %3896 = phi float [ %3771, %3909 ], [ %3771, %3990 ], [ %4183, %4172 ], [ %3771, %3763 ]
  %3897 = phi float [ %3772, %3909 ], [ %3772, %3990 ], [ %4184, %4172 ], [ %3772, %3763 ]
  %3898 = phi float [ %3773, %3909 ], [ %3773, %3990 ], [ %4096, %4172 ], [ %3773, %3763 ]
  %3899 = phi float [ %3774, %3909 ], [ %3774, %3990 ], [ %4097, %4172 ], [ %3774, %3763 ]
  %3900 = phi float [ %3775, %3909 ], [ %3775, %3990 ], [ %4098, %4172 ], [ %3775, %3763 ]
  %3901 = phi float [ %3776, %3909 ], [ %3776, %3990 ], [ %4125, %4172 ], [ %3776, %3763 ]
  %3902 = phi float [ %3777, %3909 ], [ %3777, %3990 ], [ %4122, %4172 ], [ %3777, %3763 ]
  %3903 = phi float [ %3778, %3909 ], [ %3778, %3990 ], [ %4119, %4172 ], [ %3778, %3763 ]
  %3904 = phi float [ %3779, %3909 ], [ %3779, %3990 ], [ %4113, %4172 ], [ %3779, %3763 ]
  %3905 = phi float [ %3780, %3909 ], [ %3780, %3990 ], [ %4108, %4172 ], [ %3780, %3763 ]
  %3906 = phi float [ %3781, %3909 ], [ %3781, %3990 ], [ %4109, %4172 ], [ %3781, %3763 ]
  %3907 = phi float [ %3782, %3909 ], [ %3782, %3990 ], [ %4110, %4172 ], [ %3782, %3763 ]
  %3908 = icmp eq i32 %3839, %3762
  br i1 %3908, label %4185, label %3763

; <label>:3909                                    ; preds = %3763
  %3910 = extractvalue %dx.types.ResRet.f32 %3809, 3
  %3911 = extractvalue %dx.types.ResRet.f32 %3809, 1
  %3912 = extractvalue %dx.types.ResRet.f32 %3809, 0
  %3913 = extractvalue %dx.types.ResRet.f32 %3799, 1
  %3914 = extractvalue %dx.types.ResRet.f32 %3799, 0
  %3915 = extractvalue %dx.types.ResRet.i32 %3795, 3
  %3916 = extractvalue %dx.types.ResRet.i32 %3795, 2
  %3917 = add i32 %3915, 0
  %3918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3917, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3920 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3918, %dx.types.Handle %3919, float %3848, float %3855, float undef, float undef, i32 0, i32 0, i32 undef, float %3876, float %3878, float undef, float %3877, float %3879, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3921 = extractvalue %dx.types.ResRet.f32 %3920, 0
  %3922 = fmul fast float %3921, %3914
  %3923 = fadd fast float %3922, %3913
  %3924 = call float @dx.op.unary.f32(i32 7, float %3923)  ; Saturate(value)
  %3925 = fmul fast float %3848, %3804
  %3926 = call float @dx.op.tertiary.f32(i32 46, float %3805, float %3855, float %3925)  ; FMad(a,b,c)
  %3927 = fadd fast float %3926, %3912
  %3928 = fmul fast float %3848, %3806
  %3929 = call float @dx.op.tertiary.f32(i32 46, float %3807, float %3855, float %3928)  ; FMad(a,b,c)
  %3930 = fadd fast float %3929, %3911
  %3931 = fmul fast float %3876, %3804
  %3932 = call float @dx.op.tertiary.f32(i32 46, float %3805, float %3878, float %3931)  ; FMad(a,b,c)
  %3933 = fmul fast float %3876, %3806
  %3934 = call float @dx.op.tertiary.f32(i32 46, float %3807, float %3878, float %3933)  ; FMad(a,b,c)
  %3935 = fmul fast float %3877, %3804
  %3936 = call float @dx.op.tertiary.f32(i32 46, float %3805, float %3879, float %3935)  ; FMad(a,b,c)
  %3937 = fmul fast float %3877, %3806
  %3938 = call float @dx.op.tertiary.f32(i32 46, float %3807, float %3879, float %3937)  ; FMad(a,b,c)
  %3939 = add i32 %3916, 0
  %3940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3939, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3941 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3940, %dx.types.Handle %3919, float %3927, float %3930, float undef, float undef, i32 0, i32 0, i32 undef, float %3932, float %3934, float undef, float %3936, float %3938, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3942 = extractvalue %dx.types.ResRet.f32 %3941, 0
  %3943 = and i32 %3840, 1024
  %3944 = icmp ne i32 %3943, 0
  %3945 = fcmp fast ogt float %3942, 0x3FE0101020000000
  %3946 = uitofp i1 %3945 to float
  %3947 = select i1 %3944, float %3946, float %3942
  %3948 = and i32 %3840, 8192
  %3949 = icmp ne i32 %3948, 0
  %3950 = select i1 %3949, float %3910, float 1.000000e+00
  %3951 = fmul fast float %3848, 2.000000e+00
  %3952 = fadd fast float %3951, -1.000000e+00
  %3953 = call float @dx.op.unary.f32(i32 6, float %3952)  ; FAbs(value)
  %3954 = fmul fast float %3953, %3837
  %3955 = fsub fast float %3954, %3837
  %3956 = call float @dx.op.unary.f32(i32 7, float %3955)  ; Saturate(value)
  %3957 = fmul fast float %3855, 2.000000e+00
  %3958 = fadd fast float %3957, -1.000000e+00
  %3959 = call float @dx.op.unary.f32(i32 6, float %3958)  ; FAbs(value)
  %3960 = fmul fast float %3959, %3838
  %3961 = fsub fast float %3960, %3838
  %3962 = call float @dx.op.unary.f32(i32 7, float %3961)  ; Saturate(value)
  %3963 = fmul fast float %3867, %3800
  %3964 = fsub fast float %3963, %3800
  %3965 = call float @dx.op.unary.f32(i32 7, float %3964)  ; Saturate(value)
  %3966 = fmul fast float %3924, %3950
  %3967 = fmul fast float %3966, %3921
  %3968 = fmul fast float %3967, %3956
  %3969 = fmul fast float %3968, %3947
  %3970 = fmul fast float %3969, %3962
  %3971 = fmul fast float %3970, %3965
  %3972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3973 = extractvalue %dx.types.CBufRet.f32 %3972, 1
  %3974 = extractvalue %dx.types.CBufRet.f32 %3972, 0
  %3975 = fsub fast float %3884, %3974
  %3976 = fmul fast float %3975, %3973
  %3977 = call float @dx.op.unary.f32(i32 7, float %3976)  ; Saturate(value)
  %3978 = fmul fast float %3971, %3801
  %3979 = fadd fast float %3971, %3801
  %3980 = fmul fast float %3979, %3810
  %3981 = fsub fast float %3980, %3810
  %3982 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3983 = and i32 %3840, 128
  %3984 = icmp ne i32 %3983, 0
  %3985 = select i1 %3984, float %3982, float %3978
  %3986 = fmul fast float %3985, %3977
  %3987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3988 = extractvalue %dx.types.CBufRet.f32 %3987, 0
  %3989 = fcmp fast ugt float %3986, %3988
  br i1 %3989, label %3990, label %3889

; <label>:3990                                    ; preds = %3909
  %3991 = select i1 %3949, float %3986, float 0.000000e+00
  %3992 = fadd fast float %3991, %3765
  %3993 = call float @dx.op.unary.f32(i32 7, float %3992)  ; Saturate(value)
  br i1 %3949, label %3889, label %3994

; <label>:3994                                    ; preds = %3990
  %3995 = and i32 %3840, 4
  %3996 = and i32 %3840, 8
  %3997 = add i32 %3796, 0
  %3998 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3997, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3999 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4000 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3998, %dx.types.Handle %3999, float %3927, float %3930, float undef, float undef, i32 0, i32 0, i32 undef, float %3932, float %3934, float undef, float %3936, float %3938, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4001 = extractvalue %dx.types.ResRet.f32 %4000, 0
  %4002 = extractvalue %dx.types.ResRet.f32 %4000, 1
  %4003 = extractvalue %dx.types.ResRet.f32 %4000, 2
  %4004 = extractvalue %dx.types.ResRet.f32 %4000, 3
  %4005 = bitcast float %3822 to i32
  %4006 = and i32 %4005, 255
  %4007 = uitofp i32 %4006 to float
  %4008 = lshr i32 %4005, 8
  %4009 = and i32 %4008, 255
  %4010 = uitofp i32 %4009 to float
  %4011 = fmul fast float %4004, %4007
  %4012 = fadd fast float %4011, %4010
  %4013 = fmul fast float %4012, 0x3F70101000000000
  %4014 = add i32 %3797, 0
  %4015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4014, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4016 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4015, %dx.types.Handle %3999, float %3927, float %3930, float undef, float undef, i32 0, i32 0, i32 undef, float %3932, float %3934, float undef, float %3936, float %3938, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4017 = extractvalue %dx.types.ResRet.f32 %4016, 0
  %4018 = extractvalue %dx.types.ResRet.f32 %4016, 1
  %4019 = extractvalue %dx.types.ResRet.f32 %4016, 2
  %4020 = extractvalue %dx.types.ResRet.f32 %4016, 3
  %4021 = bitcast float %3816 to i32
  %4022 = and i32 %4021, 255
  %4023 = uitofp i32 %4022 to float
  %4024 = lshr i32 %4021, 8
  %4025 = and i32 %4024, 255
  %4026 = uitofp i32 %4025 to float
  %4027 = lshr i32 %4021, 16
  %4028 = and i32 %4027, 255
  %4029 = uitofp i32 %4028 to float
  %4030 = fmul fast float %4029, 0x3F70101000000000
  %4031 = fmul fast float %4017, %4023
  %4032 = fadd fast float %4031, %4026
  %4033 = fmul fast float %4032, 0x3F70101000000000
  %4034 = fadd fast float %4018, -5.000000e-01
  %4035 = fadd fast float %4020, -5.000000e-01
  %4036 = fmul fast float %4034, %4030
  %4037 = fmul fast float %4035, %4030
  %4038 = fadd fast float %4036, 5.000000e-01
  %4039 = fadd fast float %4037, 5.000000e-01
  %4040 = fmul fast float %4001, %3825
  %4041 = fmul fast float %4002, %3826
  %4042 = fmul fast float %4003, %3827
  %4043 = fmul fast float %4038, 2.000000e+00
  %4044 = fadd fast float %4043, -1.000000e+00
  %4045 = fmul fast float %4039, 2.000000e+00
  %4046 = fadd fast float %4045, -1.000000e+00
  %4047 = fadd fast float %4044, %4046
  %4048 = fmul fast float %4047, 5.000000e-01
  %4049 = fsub fast float %4044, %4046
  %4050 = fmul fast float %4049, 5.000000e-01
  %4051 = call float @dx.op.unary.f32(i32 6, float %4048)  ; FAbs(value)
  %4052 = fsub fast float 1.000000e+00, %4051
  %4053 = call float @dx.op.unary.f32(i32 6, float %4050)  ; FAbs(value)
  %4054 = fsub fast float %4052, %4053
  %4055 = call float @dx.op.dot3.f32(i32 55, float %4048, float %4050, float %4054, float %4048, float %4050, float %4054)  ; Dot3(ax,ay,az,bx,by,bz)
  %4056 = call float @dx.op.unary.f32(i32 25, float %4055)  ; Rsqrt(value)
  %4057 = fmul fast float %4048, %4056
  %4058 = fmul fast float %4050, %4056
  %4059 = fmul fast float %4056, %4054
  %4060 = fmul fast float %4059, %3790
  %4061 = fmul fast float %4059, %3791
  %4062 = fmul fast float %4059, %3792
  %4063 = fmul fast float %4057, %3813
  %4064 = fmul fast float %4057, %3814
  %4065 = fmul fast float %4057, %3815
  %4066 = fadd fast float %4063, %4060
  %4067 = fadd fast float %4064, %4061
  %4068 = fadd fast float %4065, %4062
  %4069 = fmul fast float %4058, %3819
  %4070 = fmul fast float %4058, %3820
  %4071 = fmul fast float %4058, %3821
  %4072 = fadd fast float %4066, %4069
  %4073 = fadd fast float %4067, %4070
  %4074 = fadd fast float %4068, %4071
  %4075 = call float @dx.op.dot3.f32(i32 55, float %4072, float %4073, float %4074, float %4072, float %4073, float %4074)  ; Dot3(ax,ay,az,bx,by,bz)
  %4076 = call float @dx.op.unary.f32(i32 25, float %4075)  ; Rsqrt(value)
  %4077 = fmul fast float %4072, %4076
  %4078 = fmul fast float %4073, %4076
  %4079 = fmul fast float %4074, %4076
  %4080 = icmp ne i32 %3996, 0
  %4081 = select i1 %4080, float 1.000000e+00, float 0.000000e+00
  %4082 = fmul fast float %3986, %4081
  %4083 = and i32 %3840, 1
  %4084 = icmp eq i32 %4083, 0
  br i1 %4084, label %4085, label %4089

; <label>:4085                                    ; preds = %3994
  %4086 = fsub fast float %4077, %3773
  %4087 = fsub fast float %4078, %3774
  %4088 = fsub fast float %4079, %3775
  br label %4089

; <label>:4089                                    ; preds = %4085, %3994
  %4090 = phi float [ %4086, %4085 ], [ %4077, %3994 ]
  %4091 = phi float [ %4087, %4085 ], [ %4078, %3994 ]
  %4092 = phi float [ %4088, %4085 ], [ %4079, %3994 ]
  %4093 = fmul float %4092, %4082
  %4094 = fmul float %4091, %4082
  %4095 = fmul float %4090, %4082
  %4096 = fadd fast float %4095, %3773
  %4097 = fadd fast float %4094, %3774
  %4098 = fadd fast float %4093, %3775
  %4099 = icmp ne i32 %3995, 0
  %4100 = select i1 %4099, float 1.000000e+00, float 0.000000e+00
  %4101 = fmul fast float %3986, %4100
  %4102 = fsub fast float %4040, %3780
  %4103 = fsub fast float %4041, %3781
  %4104 = fsub fast float %4042, %3782
  %4105 = fmul fast float %4102, %4101
  %4106 = fmul fast float %4103, %4101
  %4107 = fmul fast float %4104, %4101
  %4108 = fadd fast float %4105, %3780
  %4109 = fadd fast float %4106, %3781
  %4110 = fadd fast float %4107, %3782
  %4111 = fsub fast float %4013, %3779
  %4112 = fmul fast float %4111, %4101
  %4113 = fadd fast float %4112, %3779
  %4114 = fmul fast float %4101, %3769
  %4115 = fsub fast float %3769, %4114
  %4116 = fmul fast float %4101, %3768
  %4117 = fsub fast float %3768, %4116
  %4118 = fadd fast float %3986, %3778
  %4119 = call float @dx.op.unary.f32(i32 7, float %4118)  ; Saturate(value)
  %4120 = fsub fast float %4033, %3777
  %4121 = fmul fast float %4120, %4082
  %4122 = fadd fast float %4121, %3777
  %4123 = fsub fast float %4019, %3776
  %4124 = fmul fast float %4123, %4082
  %4125 = fadd fast float %4124, %3776
  %4126 = call float @dx.op.dot3.f32(i32 55, float %4040, float %4041, float %4042, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4128 = extractvalue %dx.types.CBufRet.f32 %4127, 0
  %4129 = extractvalue %dx.types.CBufRet.f32 %4127, 1
  %4130 = fmul fast float %4129, %4126
  %4131 = fadd fast float %4130, %4128
  %4132 = call float @dx.op.unary.f32(i32 7, float %4131)  ; Saturate(value)
  %4133 = bitcast float %3828 to i32
  %4134 = and i32 %4133, 65535
  %4135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4134)  ; LegacyF16ToF32(value)
  %4136 = lshr i32 %4133, 16
  %4137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4136)  ; LegacyF16ToF32(value)
  %4138 = fcmp fast oge float %4135, 0.000000e+00
  %4139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4140 = extractvalue %dx.types.CBufRet.f32 %4139, 0
  %4141 = select i1 %4138, float %4135, float %4140
  %4142 = fadd fast float %4141, %4137
  %4143 = fsub fast float %4132, %3767
  %4144 = fmul fast float %4143, %3986
  %4145 = fadd fast float %4144, %3767
  %4146 = fmul fast float %4142, %3986
  %4147 = call float @dx.op.binary.f32(i32 35, float %3766, float %4146)  ; FMax(a,b)
  %4148 = and i32 %3840, 16
  %4149 = icmp eq i32 %4148, 0
  br i1 %4149, label %4172, label %4150

; <label>:4150                                    ; preds = %4089
  %4151 = bitcast float %3834 to i32
  %4152 = add i32 %3831, 0
  %4153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4152, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4154 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4153, %dx.types.Handle %3999, float %3927, float %3930, float undef, float undef, i32 0, i32 0, i32 undef, float %3932, float %3934, float undef, float %3936, float %3938, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4155 = extractvalue %dx.types.ResRet.f32 %4154, 0
  %4156 = extractvalue %dx.types.ResRet.f32 %4154, 1
  %4157 = extractvalue %dx.types.ResRet.f32 %4154, 2
  %4158 = and i32 %4151, 65535
  %4159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4158)  ; LegacyF16ToF32(value)
  %4160 = fmul fast float %4155, %3825
  %4161 = fmul fast float %4156, %3826
  %4162 = fmul fast float %4157, %3827
  %4163 = and i32 %3840, 16384
  %4164 = icmp ne i32 %4163, 0
  %4165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4166 = extractvalue %dx.types.CBufRet.f32 %4165, 0
  %4167 = select i1 %4164, float %4166, float 1.000000e+00
  %4168 = fmul fast float %4167, %4159
  %4169 = fmul fast float %4160, %4168
  %4170 = fmul fast float %4161, %4168
  %4171 = fmul fast float %4162, %4168
  br label %4172

; <label>:4172                                    ; preds = %4150, %4089
  %4173 = phi float [ %4169, %4150 ], [ 0.000000e+00, %4089 ]
  %4174 = phi float [ %4170, %4150 ], [ 0.000000e+00, %4089 ]
  %4175 = phi float [ %4171, %4150 ], [ 0.000000e+00, %4089 ]
  %4176 = fsub fast float %4173, %3770
  %4177 = fsub fast float %4174, %3771
  %4178 = fsub fast float %4175, %3772
  %4179 = fmul fast float %4176, %3986
  %4180 = fmul fast float %4177, %3986
  %4181 = fmul fast float %4178, %3986
  %4182 = fadd fast float %4179, %3770
  %4183 = fadd fast float %4180, %3771
  %4184 = fadd fast float %4181, %3772
  br label %3889

; <label>:4185                                    ; preds = %3889
  br label %4186

; <label>:4186                                    ; preds = %4185, %3709
  %4187 = phi float [ 0.000000e+00, %3709 ], [ %3890, %4185 ]
  %4188 = phi float [ %3678, %3709 ], [ %3891, %4185 ]
  %4189 = phi float [ %3670, %3709 ], [ %3892, %4185 ]
  %4190 = phi float [ 0.000000e+00, %3709 ], [ %3893, %4185 ]
  %4191 = phi float [ 0.000000e+00, %3709 ], [ %3894, %4185 ]
  %4192 = phi float [ %3664, %3709 ], [ %3895, %4185 ]
  %4193 = phi float [ %3665, %3709 ], [ %3896, %4185 ]
  %4194 = phi float [ %3666, %3709 ], [ %3897, %4185 ]
  %4195 = phi float [ %3704, %3709 ], [ %3898, %4185 ]
  %4196 = phi float [ %3705, %3709 ], [ %3899, %4185 ]
  %4197 = phi float [ %3706, %3709 ], [ %3900, %4185 ]
  %4198 = phi float [ %3669, %3709 ], [ %3901, %4185 ]
  %4199 = phi float [ %3668, %3709 ], [ %3902, %4185 ]
  %4200 = phi float [ 0.000000e+00, %3709 ], [ %3903, %4185 ]
  %4201 = phi float [ %3667, %3709 ], [ %3904, %4185 ]
  %4202 = phi float [ %3661, %3709 ], [ %3905, %4185 ]
  %4203 = phi float [ %3662, %3709 ], [ %3906, %4185 ]
  %4204 = phi float [ %3663, %3709 ], [ %3907, %4185 ]
  %4205 = call float @dx.op.dot3.f32(i32 55, float %4195, float %4196, float %4197, float %4195, float %4196, float %4197)  ; Dot3(ax,ay,az,bx,by,bz)
  %4206 = call float @dx.op.unary.f32(i32 25, float %4205)  ; Rsqrt(value)
  %4207 = fmul fast float %4206, %4195
  %4208 = fmul fast float %4206, %4196
  %4209 = fmul fast float %4206, %4197
  %4210 = fadd fast float %4200, %1105
  %4211 = call float @dx.op.unary.f32(i32 7, float %4210)  ; Saturate(value)
  %4212 = call float @dx.op.dot3.f32(i32 55, float %4207, float %4208, float %4209, float %4207, float %4208, float %4209)  ; Dot3(ax,ay,az,bx,by,bz)
  %4213 = call float @dx.op.unary.f32(i32 25, float %4212)  ; Rsqrt(value)
  %4214 = fmul fast float %4213, %4207
  %4215 = fmul fast float %4213, %4208
  %4216 = fmul fast float %4213, %4209
  br label %4217

; <label>:4217                                    ; preds = %4186, %3658
  %4218 = phi float [ %4214, %4186 ], [ %3704, %3658 ]
  %4219 = phi float [ %4215, %4186 ], [ %3705, %3658 ]
  %4220 = phi float [ %4216, %4186 ], [ %3706, %3658 ]
  %4221 = phi float [ %4202, %4186 ], [ %3661, %3658 ]
  %4222 = phi float [ %4203, %4186 ], [ %3662, %3658 ]
  %4223 = phi float [ %4204, %4186 ], [ %3663, %3658 ]
  %4224 = phi float [ %4192, %4186 ], [ %3664, %3658 ]
  %4225 = phi float [ %4193, %4186 ], [ %3665, %3658 ]
  %4226 = phi float [ %4194, %4186 ], [ %3666, %3658 ]
  %4227 = phi float [ %4201, %4186 ], [ %3667, %3658 ]
  %4228 = phi float [ %4211, %4186 ], [ %1105, %3658 ]
  %4229 = phi float [ %4199, %4186 ], [ %3668, %3658 ]
  %4230 = phi float [ %4198, %4186 ], [ %3669, %3658 ]
  %4231 = phi float [ %4191, %4186 ], [ 0.000000e+00, %3658 ]
  %4232 = phi float [ %4190, %4186 ], [ 0.000000e+00, %3658 ]
  %4233 = phi float [ %4187, %4186 ], [ 0.000000e+00, %3658 ]
  %4234 = phi float [ %4188, %4186 ], [ %3678, %3658 ]
  %4235 = phi float [ %4189, %4186 ], [ %3670, %3658 ]
  %4236 = fadd fast float %4227, 0xBFB99999A0000000
  %4237 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4238 = fmul fast float %4237, 0x3FF1C71C80000000
  %4239 = call float @dx.op.binary.f32(i32 36, float %4227, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4240 = fsub fast float 1.000000e+00, %4238
  %4241 = call float @dx.op.unary.f32(i32 7, float %4240)  ; Saturate(value)
  %4242 = fmul fast float %4241, %4221
  %4243 = fmul fast float %4241, %4222
  %4244 = fmul fast float %4241, %4223
  %4245 = call float @dx.op.unary.f32(i32 7, float %4242)  ; Saturate(value)
  %4246 = call float @dx.op.unary.f32(i32 7, float %4243)  ; Saturate(value)
  %4247 = call float @dx.op.unary.f32(i32 7, float %4244)  ; Saturate(value)
  %4248 = fmul fast float %4238, %4221
  %4249 = fmul fast float %4238, %4222
  %4250 = fmul fast float %4238, %4223
  %4251 = fadd fast float %4248, %4239
  %4252 = fadd fast float %4249, %4239
  %4253 = fadd fast float %4250, %4239
  %4254 = call float @dx.op.unary.f32(i32 7, float %4251)  ; Saturate(value)
  %4255 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4256 = call float @dx.op.unary.f32(i32 7, float %4253)  ; Saturate(value)
  %4257 = call float @dx.op.unary.f32(i32 7, float %4229)  ; Saturate(value)
  %4258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4259 = extractvalue %dx.types.CBufRet.i32 %4258, 3
  %4260 = and i32 %4259, 8
  %4261 = icmp ne i32 %4260, 0
  %4262 = call float @dx.op.binary.f32(i32 35, float %4245, float %4221)  ; FMax(a,b)
  %4263 = call float @dx.op.binary.f32(i32 35, float %4246, float %4221)  ; FMax(a,b)
  %4264 = call float @dx.op.binary.f32(i32 35, float %4247, float %4221)  ; FMax(a,b)
  %4265 = call float @dx.op.dot3.f32(i32 55, float %4245, float %4246, float %4247, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4266 = select i1 %206, float %4221, float %4245
  %4267 = select i1 %206, float %4265, float %4246
  %4268 = select i1 %206, float 1.000000e+00, float %4247
  %4269 = select i1 %4261, float %4262, float %4266
  %4270 = select i1 %4261, float %4263, float %4267
  %4271 = select i1 %4261, float %4264, float %4268
  %4272 = and i32 %182, 3
  %4273 = select i1 %176, i32 %4272, i32 0
  %4274 = icmp eq i32 %4273, 1
  br i1 %4274, label %4275, label %4351

; <label>:4275                                    ; preds = %4217
  %4276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4277 = extractvalue %dx.types.CBufRet.f32 %4276, 0
  %4278 = extractvalue %dx.types.CBufRet.f32 %4276, 1
  %4279 = fadd fast float %4277, %145
  %4280 = fadd fast float %4278, %146
  %4281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4282 = extractvalue %dx.types.CBufRet.f32 %4281, 0
  %4283 = extractvalue %dx.types.CBufRet.f32 %4281, 1
  %4284 = fsub fast float %4279, %4282
  %4285 = fsub fast float %4280, %4283
  %4286 = fmul fast float %4284, %4284
  %4287 = fmul fast float %4285, %4285
  %4288 = fadd fast float %4286, %4287
  %4289 = call float @dx.op.unary.f32(i32 24, float %4288)  ; Sqrt(value)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4281, 2
  %4291 = fcmp fast olt float %4289, %4290
  br i1 %4291, label %4292, label %4345

; <label>:4292                                    ; preds = %4275
  %4293 = extractvalue %dx.types.CBufRet.f32 %4276, 2
  %4294 = fadd fast float %4293, %147
  %4295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.f32 %4295, 0
  %4297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.f32 %4297, 0
  %4299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4300 = extractvalue %dx.types.CBufRet.f32 %4299, 0
  %4301 = extractvalue %dx.types.CBufRet.f32 %4295, 1
  %4302 = extractvalue %dx.types.CBufRet.f32 %4297, 1
  %4303 = extractvalue %dx.types.CBufRet.f32 %4299, 1
  %4304 = extractvalue %dx.types.CBufRet.f32 %4295, 3
  %4305 = extractvalue %dx.types.CBufRet.f32 %4297, 3
  %4306 = extractvalue %dx.types.CBufRet.f32 %4299, 3
  %4307 = fadd fast float %4304, %4279
  %4308 = fadd fast float %4305, %4280
  %4309 = fadd fast float %4294, %4306
  %4310 = fmul fast float %4307, %4296
  %4311 = call float @dx.op.tertiary.f32(i32 46, float %4308, float %4298, float %4310)  ; FMad(a,b,c)
  %4312 = call float @dx.op.tertiary.f32(i32 46, float %4309, float %4300, float %4311)  ; FMad(a,b,c)
  %4313 = fmul fast float %4307, %4301
  %4314 = call float @dx.op.tertiary.f32(i32 46, float %4308, float %4302, float %4313)  ; FMad(a,b,c)
  %4315 = call float @dx.op.tertiary.f32(i32 46, float %4309, float %4303, float %4314)  ; FMad(a,b,c)
  %4316 = fsub fast float %4312, %4304
  %4317 = fsub fast float %4315, %4305
  %4318 = fsub fast float %4316, %4282
  %4319 = fadd fast float %4318, %4290
  %4320 = fsub fast float %4317, %4283
  %4321 = fadd fast float %4320, %4290
  %4322 = extractvalue %dx.types.CBufRet.f32 %4281, 3
  %4323 = fmul fast float %4319, %4322
  %4324 = fmul fast float %4321, %4322
  %4325 = call float @dx.op.unary.f32(i32 7, float %4323)  ; Saturate(value)
  %4326 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  %4327 = fsub fast float 1.000000e+00, %4325
  %4328 = fsub fast float 1.000000e+00, %4326
  %4329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %4327, float %4328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4330 = extractvalue %dx.types.ResRet.f32 %4329, 0
  %4331 = fcmp fast ugt float %4330, 0.000000e+00
  br i1 %4331, label %4332, label %4345

; <label>:4332                                    ; preds = %4292
  %4333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4334 = extractvalue %dx.types.CBufRet.f32 %4333, 2
  %4335 = fmul fast float %4334, %4330
  %4336 = extractvalue %dx.types.CBufRet.f32 %4333, 3
  %4337 = fadd fast float %4336, %4335
  %4338 = extractvalue %dx.types.CBufRet.f32 %4299, 2
  %4339 = fadd fast float %4337, %4306
  %4340 = fmul fast float %4312, %4300
  %4341 = call float @dx.op.tertiary.f32(i32 46, float %4315, float %4303, float %4340)  ; FMad(a,b,c)
  %4342 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %4338, float %4341)  ; FMad(a,b,c)
  %4343 = fsub fast float %4342, %4306
  %4344 = fsub fast float %4343, %4293
  br label %4345

; <label>:4345                                    ; preds = %4332, %4292, %4275
  %4346 = phi i1 [ true, %4332 ], [ false, %4292 ], [ false, %4275 ]
  %4347 = phi float [ %4344, %4332 ], [ -1.310720e+05, %4292 ], [ -1.310720e+05, %4275 ]
  %4348 = fsub fast float %4347, %147
  %4349 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4350 = select i1 %4346, float %4349, float 1.000000e+00
  br label %4351

; <label>:4351                                    ; preds = %4345, %4217
  %4352 = phi float [ %4350, %4345 ], [ 0.000000e+00, %4217 ]
  %4353 = icmp eq i32 %4273, 3
  %4354 = select i1 %4353, float 1.000000e+00, float %4352
  %4355 = call float @dx.op.binary.f32(i32 35, float %4233, float %4354)  ; FMax(a,b)
  %4356 = call float @dx.op.unary.f32(i32 7, float %4355)  ; Saturate(value)
  %4357 = fcmp fast une float %4356, 0.000000e+00
  %4358 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %4359 = call float @dx.op.unary.f32(i32 25, float %4358)  ; Rsqrt(value)
  br i1 %4357, label %4367, label %4360

; <label>:4360                                    ; preds = %4351
  %4361 = fmul fast float %4359, %145
  %4362 = fmul fast float %4359, %146
  %4363 = fmul fast float %4359, %147
  %4364 = fsub fast float -0.000000e+00, %4361
  %4365 = fsub fast float -0.000000e+00, %4362
  %4366 = fsub fast float -0.000000e+00, %4363
  br label %4535

; <label>:4367                                    ; preds = %4351
  %4368 = fmul fast float %145, %4359
  %4369 = fsub fast float -0.000000e+00, %4368
  %4370 = fmul fast float %146, %4359
  %4371 = fsub fast float -0.000000e+00, %4370
  %4372 = fmul fast float %147, %4359
  %4373 = fsub fast float -0.000000e+00, %4372
  %4374 = call float @dx.op.dot3.f32(i32 55, float %4369, float %4371, float %4373, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %4375 = fmul fast float %4356, 2.500000e+00
  %4376 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4377 = fmul fast float %4356, 0x4013FFFFE0000000
  %4378 = fadd fast float %4377, 0xBFFFFFFFE0000000
  %4379 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4380 = fmul fast float %4356, 0x4004000020000000
  %4381 = fadd fast float %4380, 0xBFF8000040000000
  %4382 = call float @dx.op.unary.f32(i32 7, float %4381)  ; Saturate(value)
  %4383 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  %4384 = fmul fast float %4236, 1.000000e+01
  %4385 = call float @dx.op.unary.f32(i32 7, float %4384)  ; Saturate(value)
  %4386 = fmul fast float %4385, 2.000000e+00
  %4387 = fsub fast float 3.000000e+00, %4386
  %4388 = fmul fast float %4385, %4385
  %4389 = fmul fast float %4388, %4387
  %4390 = fsub fast float 1.000000e+00, %4389
  %4391 = fsub fast float 0x3FE3333340000000, %4257
  %4392 = fmul fast float %4391, 0x400AAAAAA0000000
  %4393 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4394 = fmul fast float %4390, %4393
  %4395 = fmul fast float %4269, 0x3FEA2B8620000000
  %4396 = fmul fast float %4270, 0x3FEA2B8620000000
  %4397 = fmul fast float %4271, 0x3FEA2B8620000000
  %4398 = fadd fast float %4395, 0x3FC81DFBA0000000
  %4399 = fmul fast float %4398, %4269
  %4400 = fadd fast float %4399, 0x3F910E6020000000
  %4401 = fadd fast float %4396, 0x3FC81DFBA0000000
  %4402 = fmul fast float %4401, %4270
  %4403 = fadd fast float %4402, 0x3F910E6020000000
  %4404 = fadd fast float %4397, 0x3FC81DFBA0000000
  %4405 = fmul fast float %4404, %4271
  %4406 = fadd fast float %4405, 0x3F910E6020000000
  %4407 = call float @dx.op.unary.f32(i32 7, float %4400)  ; Saturate(value)
  %4408 = call float @dx.op.unary.f32(i32 7, float %4403)  ; Saturate(value)
  %4409 = call float @dx.op.unary.f32(i32 7, float %4406)  ; Saturate(value)
  %4410 = fsub fast float %4407, %4269
  %4411 = fsub fast float %4408, %4270
  %4412 = fsub fast float %4409, %4271
  %4413 = fmul fast float %4410, %4383
  %4414 = fmul fast float %4413, %4394
  %4415 = fmul fast float %4411, %4383
  %4416 = fmul fast float %4415, %4394
  %4417 = fmul fast float %4412, %4383
  %4418 = fmul fast float %4417, %4394
  %4419 = fadd fast float %4414, %4269
  %4420 = fadd fast float %4416, %4270
  %4421 = fadd fast float %4418, %4271
  %4422 = fmul fast float %4230, %4230
  %4423 = fmul fast float %4422, %4422
  %4424 = fadd fast float %4379, 1.000000e+00
  %4425 = fsub fast float %4424, %4394
  %4426 = call float @dx.op.unary.f32(i32 7, float %4425)  ; Saturate(value)
  %4427 = call float @dx.op.dot3.f32(i32 55, float %89, float %90, float %91, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4428 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4429 = fsub fast float 1.000000e+00, %4423
  %4430 = call float @dx.op.binary.f32(i32 36, float %4426, float %4429)  ; FMin(a,b)
  %4431 = call float @dx.op.unary.f32(i32 7, float %4382)  ; Saturate(value)
  %4432 = call float @dx.op.binary.f32(i32 35, float %4430, float %4431)  ; FMax(a,b)
  %4433 = fadd fast float %4428, 0xBFE4CCCCC0000000
  %4434 = fmul fast float %4433, 0x4006DB6DA0000000
  %4435 = call float @dx.op.unary.f32(i32 7, float %4434)  ; Saturate(value)
  %4436 = fmul fast float %4435, 2.000000e+00
  %4437 = fsub fast float 3.000000e+00, %4436
  %4438 = bitcast float %4254 to i32
  %4439 = ashr i32 %4438, 1
  %4440 = add nsw i32 %4439, 532487669
  %4441 = bitcast i32 %4440 to float
  %4442 = fsub fast float 1.000000e+00, %4441
  %4443 = bitcast float %4442 to i32
  %4444 = sub nsw i32 2129859010, %4443
  %4445 = bitcast i32 %4444 to float
  %4446 = fmul fast float %4445, 2.000000e+00
  %4447 = bitcast float %4255 to i32
  %4448 = ashr i32 %4447, 1
  %4449 = add nsw i32 %4448, 532487669
  %4450 = bitcast i32 %4449 to float
  %4451 = fsub fast float 1.000000e+00, %4450
  %4452 = bitcast float %4451 to i32
  %4453 = sub nsw i32 2129859010, %4452
  %4454 = bitcast i32 %4453 to float
  %4455 = fmul fast float %4454, 2.000000e+00
  %4456 = bitcast float %4256 to i32
  %4457 = ashr i32 %4456, 1
  %4458 = add nsw i32 %4457, 532487669
  %4459 = bitcast i32 %4458 to float
  %4460 = fsub fast float 1.000000e+00, %4459
  %4461 = bitcast float %4460 to i32
  %4462 = sub nsw i32 2129859010, %4461
  %4463 = bitcast i32 %4462 to float
  %4464 = fmul fast float %4463, 2.000000e+00
  %4465 = fsub fast float 0x4002A9FBE0000000, %4446
  %4466 = fadd fast float %4446, 0x3FD54FDF00000000
  %4467 = bitcast float %4466 to i32
  %4468 = sub nsw i32 2129859010, %4467
  %4469 = bitcast i32 %4468 to float
  %4470 = fmul fast float %4469, %4465
  %4471 = fmul fast float %4470, %4470
  %4472 = fsub fast float 0x4002A9FBE0000000, %4455
  %4473 = fadd fast float %4455, 0x3FD54FDF00000000
  %4474 = bitcast float %4473 to i32
  %4475 = sub nsw i32 2129859010, %4474
  %4476 = bitcast i32 %4475 to float
  %4477 = fmul fast float %4476, %4472
  %4478 = fmul fast float %4477, %4477
  %4479 = fsub fast float 0x4002A9FBE0000000, %4464
  %4480 = fadd fast float %4464, 0x3FD54FDF00000000
  %4481 = bitcast float %4480 to i32
  %4482 = sub nsw i32 2129859010, %4481
  %4483 = bitcast i32 %4482 to float
  %4484 = fmul fast float %4483, %4479
  %4485 = fmul fast float %4484, %4484
  %4486 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4471)  ; FMax(a,b)
  %4487 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4478)  ; FMax(a,b)
  %4488 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4485)  ; FMax(a,b)
  %4489 = fsub fast float 1.000000e+00, %4374
  %4490 = fadd fast float %4489, %4390
  %4491 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4492 = fsub fast float 1.000000e+00, %4354
  %4493 = fmul fast float %4432, %4492
  %4494 = fmul fast float %4435, %4435
  %4495 = fmul fast float %4494, %4493
  %4496 = fmul fast float %4495, %4437
  %4497 = fmul fast float %4492, 0xBFE99999A0000000
  %4498 = fmul fast float %4497, %4383
  %4499 = fmul fast float %4498, %4394
  %4500 = fadd fast float %4499, 1.000000e+00
  %4501 = fadd fast float %4257, -1.000000e+00
  %4502 = fmul fast float %4500, %4501
  %4503 = fadd fast float %4502, 1.000000e+00
  %4504 = fsub fast float %4486, %4254
  %4505 = fsub fast float %4487, %4255
  %4506 = fsub fast float %4488, %4256
  %4507 = fmul fast float %4496, %4504
  %4508 = fmul fast float %4496, %4505
  %4509 = fmul fast float %4496, %4506
  %4510 = fadd fast float %4507, %4254
  %4511 = fadd fast float %4508, %4255
  %4512 = fadd fast float %4509, %4256
  %4513 = fsub fast float %89, %4218
  %4514 = fsub fast float %90, %4219
  %4515 = fsub fast float %91, %4220
  %4516 = fmul fast float %4496, %4513
  %4517 = fmul fast float %4496, %4514
  %4518 = fmul fast float %4496, %4515
  %4519 = fadd fast float %4516, %4218
  %4520 = fadd fast float %4517, %4219
  %4521 = fadd fast float %4518, %4220
  %4522 = fmul fast float %4496, %4491
  %4523 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4524 = fsub fast float 1.000000e+00, %4523
  %4525 = fmul fast float %4522, %4524
  %4526 = fadd fast float %4525, %4523
  %4527 = fsub fast float 1.000000e+00, %4230
  %4528 = fmul fast float %4496, %4527
  %4529 = fadd fast float %4528, %4230
  %4530 = call float @dx.op.dot3.f32(i32 55, float %4519, float %4520, float %4521, float %4519, float %4520, float %4521)  ; Dot3(ax,ay,az,bx,by,bz)
  %4531 = call float @dx.op.unary.f32(i32 25, float %4530)  ; Rsqrt(value)
  %4532 = fmul fast float %4519, %4531
  %4533 = fmul fast float %4520, %4531
  %4534 = fmul fast float %4521, %4531
  br label %4535

; <label>:4535                                    ; preds = %4367, %4360
  %4536 = phi float [ %4366, %4360 ], [ %4373, %4367 ]
  %4537 = phi float [ %4365, %4360 ], [ %4371, %4367 ]
  %4538 = phi float [ %4364, %4360 ], [ %4369, %4367 ]
  %4539 = phi float [ %4363, %4360 ], [ %4372, %4367 ]
  %4540 = phi float [ %4362, %4360 ], [ %4370, %4367 ]
  %4541 = phi float [ %4361, %4360 ], [ %4368, %4367 ]
  %4542 = phi float [ %4269, %4360 ], [ %4419, %4367 ]
  %4543 = phi float [ %4270, %4360 ], [ %4420, %4367 ]
  %4544 = phi float [ %4271, %4360 ], [ %4421, %4367 ]
  %4545 = phi float [ %4254, %4360 ], [ %4510, %4367 ]
  %4546 = phi float [ %4255, %4360 ], [ %4511, %4367 ]
  %4547 = phi float [ %4256, %4360 ], [ %4512, %4367 ]
  %4548 = phi float [ %4218, %4360 ], [ %4532, %4367 ]
  %4549 = phi float [ %4219, %4360 ], [ %4533, %4367 ]
  %4550 = phi float [ %4220, %4360 ], [ %4534, %4367 ]
  %4551 = phi float [ %4257, %4360 ], [ %4526, %4367 ]
  %4552 = phi float [ %4230, %4360 ], [ %4529, %4367 ]
  %4553 = select i1 %206, float 0.000000e+00, float %4547
  %4554 = call float @dx.op.dot3.f32(i32 55, float %4548, float %4549, float %4550, float %4538, float %4537, float %4536)  ; Dot3(ax,ay,az,bx,by,bz)
  %4555 = call float @dx.op.unary.f32(i32 7, float %4554)  ; Saturate(value)
  %4556 = call float @dx.op.dot3.f32(i32 55, float %4541, float %4540, float %4539, float %4548, float %4549, float %4550)  ; Dot3(ax,ay,az,bx,by,bz)
  %4557 = fmul fast float %4556, 2.000000e+00
  %4558 = fmul fast float %4557, %4548
  %4559 = fmul fast float %4557, %4549
  %4560 = fmul fast float %4557, %4550
  %4561 = fsub fast float %4541, %4558
  %4562 = fsub fast float %4540, %4559
  %4563 = fsub fast float %4539, %4560
  %4564 = call float @dx.op.binary.f32(i32 36, float %4552, float 1.000000e+00)  ; FMin(a,b)
  %4565 = fsub fast float 1.000000e+00, %4552
  %4566 = bitcast float %4565 to i32
  %4567 = sub nsw i32 2129859010, %4566
  %4568 = fsub fast float 1.000000e+00, %53
  %4569 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %4570 = call float @dx.op.binary.f32(i32 35, float %4569, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4571 = fdiv fast float %4568, %4570
  %4572 = call float @dx.op.dot3.f32(i32 55, float %4548, float %4549, float %4550, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %4573 = call float @dx.op.unary.f32(i32 7, float %4572)  ; Saturate(value)
  %4574 = fmul fast float %4573, 5.000000e-01
  %4575 = fadd fast float %4574, 5.000000e-01
  %4576 = fmul fast float %4575, %53
  %4577 = call float @dx.op.dot3.f32(i32 55, float %4548, float %4549, float %4550, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4578 = call float @dx.op.unary.f32(i32 7, float %4577)  ; Saturate(value)
  %4579 = fmul fast float %4578, %4571
  %4580 = fadd fast float %4576, %4579
  %4581 = fsub fast float 5.000000e-01, %4574
  %4582 = fmul fast float %4581, %4542
  %4583 = fmul fast float %4581, %4543
  %4584 = fmul fast float %4581, %4544
  %4585 = fadd fast float %4580, %4582
  %4586 = fadd fast float %4580, %4583
  %4587 = fadd fast float %4580, %4584
  %4588 = call float @dx.op.dot3.f32(i32 55, float %4561, float %4562, float %4563, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %4589 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4590 = fmul fast float %4589, 5.000000e-01
  %4591 = fadd fast float %4590, 5.000000e-01
  %4592 = fmul fast float %4591, %53
  %4593 = call float @dx.op.dot3.f32(i32 55, float %4561, float %4562, float %4563, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4594 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4595 = fmul fast float %4594, %4571
  %4596 = fadd fast float %4592, %4595
  %4597 = fsub fast float 5.000000e-01, %4590
  %4598 = fmul fast float %4597, %4542
  %4599 = fmul fast float %4597, %4543
  %4600 = fmul fast float %4597, %4544
  %4601 = fadd fast float %4596, %4598
  %4602 = fadd fast float %4596, %4599
  %4603 = fadd fast float %4596, %4600
  %4604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4605 = extractvalue %dx.types.CBufRet.f32 %4604, 0
  %4606 = call float @dx.op.binary.f32(i32 36, float %4542, float %4605)  ; FMin(a,b)
  %4607 = fsub fast float 1.000000e+00, %4564
  %4608 = fmul fast float %4606, %4607
  %4609 = fsub fast float 1.000000e+00, %4608
  %4610 = bitcast float %4609 to i32
  %4611 = sub nsw i32 2129859010, %4610
  %4612 = bitcast i32 %4611 to float
  %4613 = call float @dx.op.binary.f32(i32 36, float %4543, float %4605)  ; FMin(a,b)
  %4614 = fmul fast float %4613, %4607
  %4615 = fsub fast float 1.000000e+00, %4614
  %4616 = bitcast float %4615 to i32
  %4617 = sub nsw i32 2129859010, %4616
  %4618 = bitcast i32 %4617 to float
  %4619 = call float @dx.op.binary.f32(i32 36, float %4544, float %4605)  ; FMin(a,b)
  %4620 = fmul fast float %4619, %4607
  %4621 = fsub fast float 1.000000e+00, %4620
  %4622 = bitcast float %4621 to i32
  %4623 = sub nsw i32 2129859010, %4622
  %4624 = bitcast i32 %4623 to float
  %4625 = fmul fast float %4564, %54
  %4626 = fmul fast float %4625, %4585
  %4627 = fmul fast float %4626, %4612
  %4628 = fmul fast float %4564, %55
  %4629 = fmul fast float %4628, %4586
  %4630 = fmul fast float %4629, %4618
  %4631 = fmul fast float %4564, %56
  %4632 = fmul fast float %4631, %4587
  %4633 = fmul fast float %4632, %4624
  %4634 = call float @dx.op.binary.f32(i32 36, float %4545, float %4605)  ; FMin(a,b)
  %4635 = fmul fast float %4634, %4607
  %4636 = fsub fast float 1.000000e+00, %4635
  %4637 = bitcast float %4636 to i32
  %4638 = sub nsw i32 2129859010, %4637
  %4639 = bitcast i32 %4638 to float
  %4640 = call float @dx.op.binary.f32(i32 36, float %4546, float %4605)  ; FMin(a,b)
  %4641 = fmul fast float %4640, %4607
  %4642 = fsub fast float 1.000000e+00, %4641
  %4643 = bitcast float %4642 to i32
  %4644 = sub nsw i32 2129859010, %4643
  %4645 = bitcast i32 %4644 to float
  %4646 = call float @dx.op.binary.f32(i32 36, float %4553, float %4605)  ; FMin(a,b)
  %4647 = fmul fast float %4646, %4607
  %4648 = fsub fast float 1.000000e+00, %4647
  %4649 = bitcast float %4648 to i32
  %4650 = sub nsw i32 2129859010, %4649
  %4651 = bitcast i32 %4650 to float
  %4652 = fmul fast float %4625, %4601
  %4653 = fmul fast float %4652, %4639
  %4654 = fmul fast float %4628, %4602
  %4655 = fmul fast float %4654, %4645
  %4656 = fmul fast float %4631, %4603
  %4657 = fmul fast float %4656, %4651
  %4658 = call float @dx.op.dot3.f32(i32 55, float %4627, float %4630, float %4633, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4659 = select i1 %206, float 0.000000e+00, float %4627
  %4660 = select i1 %206, float %4658, float %4630
  %4661 = select i1 %206, float 0.000000e+00, float %4633
  %4662 = call float @dx.op.dot3.f32(i32 55, float %4653, float %4655, float %4657, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4663 = select i1 %206, float 0.000000e+00, float %4653
  %4664 = select i1 %206, float %4662, float %4655
  %4665 = select i1 %206, float 0.000000e+00, float %4657
  %4666 = fmul fast float %4555, 9.843750e-01
  %4667 = fmul fast float %4551, 9.843750e-01
  %4668 = fadd fast float %4666, 7.812500e-03
  %4669 = fadd fast float %4667, 7.812500e-03
  %4670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %4668, float %4669, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4671 = extractvalue %dx.types.ResRet.f32 %4670, 2
  %4672 = extractvalue %dx.types.ResRet.f32 %4670, 3
  %4673 = fmul fast float %4671, %4545
  %4674 = fmul fast float %4671, %4546
  %4675 = fmul fast float %4671, %4553
  %4676 = fadd fast float %4673, %4672
  %4677 = fadd fast float %4674, %4672
  %4678 = fadd fast float %4675, %4672
  %4679 = fcmp fast ogt float %4231, 0.000000e+00
  br i1 %4679, label %4680, label %4706

; <label>:4680                                    ; preds = %4535
  %4681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %4231, float %4555, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4682 = extractvalue %dx.types.ResRet.f32 %4681, 0
  %4683 = extractvalue %dx.types.ResRet.f32 %4681, 1
  %4684 = extractvalue %dx.types.ResRet.f32 %4681, 2
  %4685 = fadd fast float %4682, -5.000000e-01
  %4686 = fadd fast float %4683, -5.000000e-01
  %4687 = fadd fast float %4684, -5.000000e-01
  %4688 = fsub fast float 1.000000e+00, %4545
  %4689 = fsub fast float 1.000000e+00, %4546
  %4690 = fsub fast float 1.000000e+00, %4553
  %4691 = fmul fast float %4545, 4.000000e+00
  %4692 = fmul fast float %4691, %4688
  %4693 = fmul fast float %4692, %4685
  %4694 = fmul fast float %4546, 4.000000e+00
  %4695 = fmul fast float %4694, %4689
  %4696 = fmul fast float %4695, %4686
  %4697 = fmul fast float %4553, 4.000000e+00
  %4698 = fmul fast float %4697, %4690
  %4699 = fmul fast float %4698, %4687
  %4700 = fadd fast float %4693, %4676
  %4701 = fadd fast float %4696, %4677
  %4702 = fadd fast float %4699, %4678
  %4703 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4704 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4705 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  br label %4706

; <label>:4706                                    ; preds = %4680, %4535
  %4707 = phi float [ %4703, %4680 ], [ %4676, %4535 ]
  %4708 = phi float [ %4704, %4680 ], [ %4677, %4535 ]
  %4709 = phi float [ %4705, %4680 ], [ %4678, %4535 ]
  %4710 = call float @dx.op.binary.f32(i32 35, float %4708, float %4709)  ; FMax(a,b)
  %4711 = call float @dx.op.binary.f32(i32 35, float %4707, float %4710)  ; FMax(a,b)
  %4712 = fsub fast float 1.000000e+00, %4711
  %4713 = fmul fast float %4712, %4659
  %4714 = fmul fast float %4712, %4660
  %4715 = fmul fast float %4712, %4661
  %4716 = call float @dx.op.dot3.f32(i32 55, float %4542, float %4543, float %4544, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4717 = fcmp fast ogt float %4716, 0x3E7FF19E20000000
  %4718 = fdiv fast float 1.000000e+00, %4716
  %4719 = select i1 %4717, float %4718, float 0.000000e+00
  %4720 = fmul fast float %4719, %4542
  %4721 = fmul fast float %4719, %4543
  %4722 = fmul fast float %4719, %4544
  %4723 = fadd fast float %4720, -1.000000e+00
  %4724 = fadd fast float %4721, -1.000000e+00
  %4725 = fadd fast float %4722, -1.000000e+00
  %4726 = fmul fast float %4723, 5.000000e-01
  %4727 = fmul fast float %4724, 5.000000e-01
  %4728 = fmul fast float %4725, 5.000000e-01
  %4729 = fadd fast float %4726, 1.000000e+00
  %4730 = fadd fast float %4727, 1.000000e+00
  %4731 = fadd fast float %4728, 1.000000e+00
  %4732 = fmul fast float %4707, %4663
  %4733 = fmul fast float %4708, %4664
  %4734 = fmul fast float %4709, %4665
  %4735 = fsub fast float 1.000000e+00, %4555
  %4736 = bitcast float %4735 to i32
  %4737 = sitofp i32 %4736 to float
  %4738 = fmul fast float %4737, 5.000000e+00
  %4739 = fadd fast float %4738, 0xC1EFBF8940000000
  %4740 = fptosi float %4739 to i32
  %4741 = bitcast i32 %4740 to float
  %4742 = fmul fast float %4741, %4232
  %4743 = fmul fast float %4659, %4742
  %4744 = fmul fast float %4743, %4712
  %4745 = fmul fast float %4744, %4729
  %4746 = fmul fast float %4660, %4742
  %4747 = fmul fast float %4746, %4712
  %4748 = fmul fast float %4747, %4730
  %4749 = fmul fast float %4661, %4742
  %4750 = fmul fast float %4749, %4712
  %4751 = fmul fast float %4750, %4731
  %4752 = fmul fast float %4713, %4228
  %4753 = fmul fast float %4714, %4228
  %4754 = fmul fast float %4715, %4228
  %4755 = fadd fast float %4732, %4224
  %4756 = fadd fast float %4755, %4745
  %4757 = fmul fast float %4756, %4228
  %4758 = fadd fast float %4733, %4225
  %4759 = fadd fast float %4758, %4748
  %4760 = fmul fast float %4759, %4228
  %4761 = fadd fast float %4734, %4226
  %4762 = fadd fast float %4761, %4751
  %4763 = fmul fast float %4762, %4228
  %4764 = bitcast i32 %4567 to float
  %4765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4766 = extractvalue %dx.types.CBufRet.f32 %4765, 3
  %4767 = fcmp fast oeq float %4766, 0.000000e+00
  br i1 %4767, label %5762, label %4768

; <label>:4768                                    ; preds = %4706
  %4769 = extractvalue %dx.types.CBufRet.f32 %4765, 0
  %4770 = extractvalue %dx.types.CBufRet.f32 %4765, 1
  %4771 = extractvalue %dx.types.CBufRet.f32 %4765, 2
  %4772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4773 = extractvalue %dx.types.CBufRet.f32 %4772, 0
  %4774 = extractvalue %dx.types.CBufRet.f32 %4772, 1
  %4775 = extractvalue %dx.types.CBufRet.f32 %4772, 2
  %4776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4777 = extractvalue %dx.types.CBufRet.f32 %4776, 0
  %4778 = extractvalue %dx.types.CBufRet.f32 %4776, 1
  %4779 = call float @dx.op.dot3.f32(i32 55, float %4773, float %4774, float %4775, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4780 = select i1 %206, float %4777, float %4773
  %4781 = select i1 %206, float %4779, float %4774
  %4782 = select i1 %206, float %4778, float %4775
  %4783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4784 = extractvalue %dx.types.CBufRet.f32 %4783, 2
  %4785 = fmul fast float %4784, %89
  %4786 = fmul fast float %4784, %90
  %4787 = fmul fast float %4784, %91
  %4788 = fadd fast float %4785, %145
  %4789 = fadd fast float %4786, %146
  %4790 = fadd fast float %4787, %147
  %4791 = fcmp fast olt float %4766, 0.000000e+00
  br i1 %4791, label %5416, label %4792

; <label>:4792                                    ; preds = %4768
  %4793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4794 = extractvalue %dx.types.CBufRet.f32 %4793, 0
  %4795 = extractvalue %dx.types.CBufRet.f32 %4793, 1
  %4796 = extractvalue %dx.types.CBufRet.f32 %4793, 2
  %4797 = extractvalue %dx.types.CBufRet.f32 %4793, 3
  %4798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4799 = extractvalue %dx.types.CBufRet.f32 %4798, 0
  %4800 = extractvalue %dx.types.CBufRet.f32 %4798, 1
  %4801 = extractvalue %dx.types.CBufRet.f32 %4798, 2
  %4802 = extractvalue %dx.types.CBufRet.f32 %4798, 3
  %4803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4804 = extractvalue %dx.types.CBufRet.f32 %4803, 0
  %4805 = extractvalue %dx.types.CBufRet.f32 %4803, 1
  %4806 = extractvalue %dx.types.CBufRet.f32 %4803, 2
  %4807 = extractvalue %dx.types.CBufRet.f32 %4803, 3
  %4808 = fmul fast float %4794, %4788
  %4809 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %4795, float %4808)  ; FMad(a,b,c)
  %4810 = call float @dx.op.tertiary.f32(i32 46, float %4790, float %4796, float %4809)  ; FMad(a,b,c)
  %4811 = fadd fast float %4810, %4797
  %4812 = fmul fast float %4799, %4788
  %4813 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %4800, float %4812)  ; FMad(a,b,c)
  %4814 = call float @dx.op.tertiary.f32(i32 46, float %4790, float %4801, float %4813)  ; FMad(a,b,c)
  %4815 = fadd fast float %4814, %4802
  %4816 = fmul fast float %4804, %4788
  %4817 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %4805, float %4816)  ; FMad(a,b,c)
  %4818 = call float @dx.op.tertiary.f32(i32 46, float %4790, float %4806, float %4817)  ; FMad(a,b,c)
  %4819 = fadd fast float %4818, %4807
  %4820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4821 = extractvalue %dx.types.CBufRet.f32 %4820, 0
  %4822 = extractvalue %dx.types.CBufRet.f32 %4820, 1
  %4823 = extractvalue %dx.types.CBufRet.f32 %4820, 3
  %4824 = fmul fast float %4823, %4811
  %4825 = fmul fast float %4823, %4815
  %4826 = fadd fast float %4824, %4821
  %4827 = fadd fast float %4825, %4822
  %4828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4829 = extractvalue %dx.types.CBufRet.f32 %4828, 0
  %4830 = extractvalue %dx.types.CBufRet.f32 %4828, 1
  %4831 = extractvalue %dx.types.CBufRet.f32 %4828, 3
  %4832 = fmul fast float %4831, %4811
  %4833 = fmul fast float %4831, %4815
  %4834 = fadd fast float %4832, %4829
  %4835 = fadd fast float %4833, %4830
  %4836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4837 = extractvalue %dx.types.CBufRet.f32 %4836, 1
  %4838 = fsub fast float %4837, %4819
  %4839 = extractvalue %dx.types.CBufRet.f32 %4836, 2
  %4840 = fmul fast float %4838, %4839
  %4841 = fsub fast float 1.000000e+00, %4840
  %4842 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4843 = extractvalue %dx.types.CBufRet.f32 %4828, 2
  %4844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4845 = extractvalue %dx.types.CBufRet.f32 %4844, 2
  %4846 = fadd fast float %4845, %4843
  %4847 = fcmp fast ogt float %4846, 0.000000e+00
  br i1 %4847, label %4848, label %4872

; <label>:4848                                    ; preds = %4792
  %4849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4850 = extractvalue %dx.types.CBufRet.f32 %4849, 0
  %4851 = extractvalue %dx.types.CBufRet.f32 %4849, 1
  %4852 = fsub fast float %4834, %4850
  %4853 = fsub fast float %4835, %4851
  %4854 = fcmp fast olt float %4852, 0.000000e+00
  %4855 = fcmp fast olt float %4853, 0.000000e+00
  %4856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4857 = extractvalue %dx.types.CBufRet.f32 %4856, 0
  %4858 = extractvalue %dx.types.CBufRet.f32 %4856, 1
  %4859 = extractvalue %dx.types.CBufRet.f32 %4856, 2
  %4860 = extractvalue %dx.types.CBufRet.f32 %4856, 3
  %4861 = select i1 %4854, float %4857, float %4859
  %4862 = select i1 %4855, float %4858, float %4860
  %4863 = fmul fast float %4861, %4852
  %4864 = fmul fast float %4862, %4853
  %4865 = call float @dx.op.unary.f32(i32 6, float %4863)  ; FAbs(value)
  %4866 = call float @dx.op.unary.f32(i32 6, float %4864)  ; FAbs(value)
  %4867 = extractvalue %dx.types.CBufRet.f32 %4783, 0
  %4868 = call float @dx.op.binary.f32(i32 35, float %4865, float %4866)  ; FMax(a,b)
  %4869 = fsub fast float %4867, %4868
  %4870 = call float @dx.op.unary.f32(i32 7, float %4869)  ; Saturate(value)
  %4871 = fmul fast float %4870, %4842
  br label %4872

; <label>:4872                                    ; preds = %4848, %4792
  %4873 = phi float [ %4871, %4848 ], [ 0.000000e+00, %4792 ]
  %4874 = extractvalue %dx.types.CBufRet.f32 %4820, 2
  %4875 = extractvalue %dx.types.CBufRet.f32 %4844, 1
  %4876 = fadd fast float %4875, %4874
  %4877 = fcmp fast ogt float %4876, 0.000000e+00
  %4878 = extractvalue %dx.types.CBufRet.f32 %4783, 0
  br i1 %4877, label %4879, label %4902

; <label>:4879                                    ; preds = %4872
  %4880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4881 = extractvalue %dx.types.CBufRet.f32 %4880, 0
  %4882 = extractvalue %dx.types.CBufRet.f32 %4880, 1
  %4883 = fsub fast float %4826, %4881
  %4884 = fsub fast float %4827, %4882
  %4885 = fcmp fast olt float %4883, 0.000000e+00
  %4886 = fcmp fast olt float %4884, 0.000000e+00
  %4887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4888 = extractvalue %dx.types.CBufRet.f32 %4887, 0
  %4889 = extractvalue %dx.types.CBufRet.f32 %4887, 1
  %4890 = extractvalue %dx.types.CBufRet.f32 %4887, 2
  %4891 = extractvalue %dx.types.CBufRet.f32 %4887, 3
  %4892 = select i1 %4885, float %4888, float %4890
  %4893 = select i1 %4886, float %4889, float %4891
  %4894 = fmul fast float %4892, %4883
  %4895 = fmul fast float %4893, %4884
  %4896 = call float @dx.op.unary.f32(i32 6, float %4894)  ; FAbs(value)
  %4897 = call float @dx.op.unary.f32(i32 6, float %4895)  ; FAbs(value)
  %4898 = call float @dx.op.binary.f32(i32 35, float %4896, float %4897)  ; FMax(a,b)
  %4899 = fsub fast float %4878, %4898
  %4900 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4901 = fmul fast float %4900, %4842
  br label %4902

; <label>:4902                                    ; preds = %4879, %4872
  %4903 = phi float [ %4901, %4879 ], [ 0.000000e+00, %4872 ]
  %4904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4905 = extractvalue %dx.types.CBufRet.f32 %4904, 1
  %4906 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4908 = extractvalue %dx.types.CBufRet.f32 %4907, 0
  %4909 = extractvalue %dx.types.CBufRet.f32 %4907, 1
  %4910 = fsub fast float %4811, %4908
  %4911 = fsub fast float %4815, %4909
  %4912 = fcmp fast olt float %4910, 0.000000e+00
  %4913 = fcmp fast olt float %4911, 0.000000e+00
  %4914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4915 = extractvalue %dx.types.CBufRet.f32 %4914, 0
  %4916 = extractvalue %dx.types.CBufRet.f32 %4914, 1
  %4917 = extractvalue %dx.types.CBufRet.f32 %4914, 2
  %4918 = extractvalue %dx.types.CBufRet.f32 %4914, 3
  %4919 = select i1 %4912, float %4915, float %4917
  %4920 = select i1 %4913, float %4916, float %4918
  %4921 = fmul fast float %4919, %4910
  %4922 = fmul fast float %4920, %4911
  %4923 = call float @dx.op.unary.f32(i32 6, float %4921)  ; FAbs(value)
  %4924 = call float @dx.op.unary.f32(i32 6, float %4922)  ; FAbs(value)
  %4925 = call float @dx.op.binary.f32(i32 35, float %4923, float %4924)  ; FMax(a,b)
  %4926 = fsub fast float %4878, %4925
  %4927 = call float @dx.op.unary.f32(i32 7, float %4926)  ; Saturate(value)
  %4928 = call float @dx.op.binary.f32(i32 36, float %4927, float %4906)  ; FMin(a,b)
  %4929 = fmul fast float %4928, %4842
  %4930 = fsub fast float %4903, %4929
  %4931 = fsub fast float %4873, %4903
  %4932 = fsub fast float %4931, %4929
  %4933 = call float @dx.op.binary.f32(i32 35, float %4903, float %4873)  ; FMax(a,b)
  %4934 = call float @dx.op.binary.f32(i32 35, float %4929, float %4933)  ; FMax(a,b)
  %4935 = fcmp fast olt float %4934, 1.000000e+00
  br i1 %4935, label %4936, label %5334, !dx.controlflow.hints !77

; <label>:4936                                    ; preds = %4902
  %4937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4938 = extractvalue %dx.types.CBufRet.f32 %4937, 0
  %4939 = fcmp fast une float %4938, 0.000000e+00
  br i1 %4939, label %4940, label %5334, !dx.controlflow.hints !78

; <label>:4940                                    ; preds = %4936
  %4941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4942 = extractvalue %dx.types.CBufRet.f32 %4941, 0
  %4943 = extractvalue %dx.types.CBufRet.f32 %4941, 1
  %4944 = extractvalue %dx.types.CBufRet.f32 %4941, 2
  %4945 = extractvalue %dx.types.CBufRet.f32 %4941, 3
  %4946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4947 = extractvalue %dx.types.CBufRet.f32 %4946, 0
  %4948 = extractvalue %dx.types.CBufRet.f32 %4946, 1
  %4949 = extractvalue %dx.types.CBufRet.f32 %4946, 2
  %4950 = extractvalue %dx.types.CBufRet.f32 %4946, 3
  %4951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4952 = extractvalue %dx.types.CBufRet.f32 %4951, 0
  %4953 = extractvalue %dx.types.CBufRet.f32 %4951, 1
  %4954 = extractvalue %dx.types.CBufRet.f32 %4951, 2
  %4955 = extractvalue %dx.types.CBufRet.f32 %4951, 3
  %4956 = fmul fast float %4942, %4788
  %4957 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %4943, float %4956)  ; FMad(a,b,c)
  %4958 = call float @dx.op.tertiary.f32(i32 46, float %4790, float %4944, float %4957)  ; FMad(a,b,c)
  %4959 = fadd fast float %4958, %4945
  %4960 = fmul fast float %4947, %4788
  %4961 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %4948, float %4960)  ; FMad(a,b,c)
  %4962 = call float @dx.op.tertiary.f32(i32 46, float %4790, float %4949, float %4961)  ; FMad(a,b,c)
  %4963 = fadd fast float %4962, %4950
  %4964 = fmul fast float %4952, %4788
  %4965 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %4953, float %4964)  ; FMad(a,b,c)
  %4966 = call float @dx.op.tertiary.f32(i32 46, float %4790, float %4954, float %4965)  ; FMad(a,b,c)
  %4967 = fadd fast float %4966, %4955
  %4968 = fcmp fast oge float %4959, 1.000000e+00
  %4969 = fcmp fast oge float %4963, 1.000000e+00
  %4970 = or i1 %4968, %4969
  %4971 = fcmp fast olt float %4959, 0.000000e+00
  %4972 = fcmp fast olt float %4963, 0.000000e+00
  %4973 = or i1 %4971, %4972
  %4974 = or i1 %4970, %4973
  br i1 %4974, label %5334, label %4975, !dx.controlflow.hints !79

; <label>:4975                                    ; preds = %4940
  %4976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4977 = extractvalue %dx.types.CBufRet.f32 %4976, 0
  %4978 = extractvalue %dx.types.CBufRet.f32 %4976, 1
  %4979 = extractvalue %dx.types.CBufRet.f32 %4976, 2
  %4980 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4981 = extractvalue %dx.types.CBufRet.i32 %4980, 2
  %4982 = uitofp i32 %4981 to float
  %4983 = extractvalue %dx.types.CBufRet.i32 %4980, 3
  %4984 = uitofp i32 %4983 to float
  %4985 = extractvalue %dx.types.CBufRet.f32 %4976, 3
  %4986 = fmul fast float %4985, 2.000000e+00
  %4987 = fsub fast float %4959, %4977
  %4988 = fsub fast float %4963, %4978
  %4989 = fmul fast float %4986, %4987
  %4990 = fmul fast float %4986, %4988
  %4991 = fdiv fast float 1.000000e+00, %4771
  %4992 = fmul fast float %4990, %4991
  %4993 = call float @dx.op.unary.f32(i32 6, float %4992)  ; FAbs(value)
  %4994 = fmul fast float %4979, %4790
  %4995 = fmul fast float %4994, %4986
  %4996 = call float @dx.op.unary.f32(i32 6, float %4995)  ; FAbs(value)
  %4997 = call float @dx.op.unary.f32(i32 6, float %4989)  ; FAbs(value)
  %4998 = call float @dx.op.binary.f32(i32 35, float %4996, float %4993)  ; FMax(a,b)
  %4999 = call float @dx.op.binary.f32(i32 35, float %4997, float %4998)  ; FMax(a,b)
  %5000 = fmul fast float %4999, 2.000000e+00
  %5001 = call float @dx.op.unary.f32(i32 23, float %5000)  ; Log(value)
  %5002 = call float @dx.op.binary.f32(i32 35, float %5001, float %4982)  ; FMax(a,b)
  %5003 = call float @dx.op.unary.f32(i32 22, float %5002)  ; Frc(value)
  %5004 = fadd fast float %5003, 0xBFEA666660000000
  %5005 = fmul fast float %5004, 8.000000e+00
  %5006 = call float @dx.op.unary.f32(i32 7, float %5005)  ; Saturate(value)
  %5007 = call float @dx.op.unary.f32(i32 27, float %5002)  ; Round_ni(value)
  %5008 = fadd fast float %5007, %5006
  %5009 = call float @dx.op.binary.f32(i32 36, float %5008, float %4984)  ; FMin(a,b)
  %5010 = call float @dx.op.unary.f32(i32 27, float %5009)  ; Round_ni(value)
  %5011 = fsub fast float -0.000000e+00, %5010
  %5012 = call float @dx.op.unary.f32(i32 21, float %5011)  ; Exp(value)
  %5013 = fmul fast float %5012, %4986
  %5014 = fmul fast float %5013, %4959
  %5015 = fmul fast float %5013, %4963
  %5016 = fmul fast float %5014, 2.500000e-01
  %5017 = fmul fast float %5015, 2.500000e-01
  %5018 = fadd fast float %5016, 5.000000e-01
  %5019 = fadd fast float %5017, 5.000000e-01
  %5020 = fsub fast float %4984, %4982
  %5021 = fptoui float %5020 to i32
  %5022 = add i32 %5021, 320
  %5023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %5022)  ; CBufferLoadLegacy(handle,regIndex)
  %5024 = extractvalue %dx.types.CBufRet.f32 %5023, 0
  %5025 = extractvalue %dx.types.CBufRet.f32 %5023, 1
  %5026 = fcmp fast une float %5009, %4984
  %5027 = fsub fast float %4959, %5024
  %5028 = fsub fast float %4963, %5025
  %5029 = call float @dx.op.unary.f32(i32 6, float %5027)  ; FAbs(value)
  %5030 = call float @dx.op.unary.f32(i32 6, float %5028)  ; FAbs(value)
  %5031 = fmul fast float %5029, %5013
  %5032 = fmul fast float %5030, %5013
  %5033 = fcmp fast olt float %5031, 1.000000e+00
  %5034 = fcmp fast olt float %5032, 1.000000e+00
  %5035 = and i1 %5033, %5034
  %5036 = or i1 %5026, %5035
  br i1 %5036, label %5037, label %5334, !dx.controlflow.hints !80

; <label>:5037                                    ; preds = %4975
  %5038 = fmul fast float %5015, 5.000000e-01
  %5039 = fmul fast float %5014, 5.000000e-01
  %5040 = fadd fast float %5038, 5.000000e-01
  %5041 = fadd fast float %5039, 5.000000e-01
  %5042 = sitofp i32 %4981 to float
  %5043 = fsub fast float %5009, %5042
  %5044 = call float @dx.op.unary.f32(i32 27, float %5043)  ; Round_ni(value)
  %5045 = call float @dx.op.unary.f32(i32 22, float %5009)  ; Frc(value)
  %5046 = call float @dx.op.unary.f32(i32 22, float %5041)  ; Frc(value)
  %5047 = call float @dx.op.unary.f32(i32 22, float %5040)  ; Frc(value)
  %5048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %5046, float %5047, float %5044, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5049 = extractvalue %dx.types.ResRet.f32 %5048, 0
  %5050 = extractvalue %dx.types.ResRet.f32 %5048, 1
  %5051 = extractvalue %dx.types.ResRet.f32 %5048, 2
  %5052 = extractvalue %dx.types.ResRet.f32 %5048, 3
  %5053 = fcmp fast ogt float %5045, 0.000000e+00
  br i1 %5053, label %5054, label %5075, !dx.controlflow.hints !81

; <label>:5054                                    ; preds = %5037
  %5055 = fadd fast float %5044, 1.000000e+00
  %5056 = call float @dx.op.unary.f32(i32 22, float %5018)  ; Frc(value)
  %5057 = call float @dx.op.unary.f32(i32 22, float %5019)  ; Frc(value)
  %5058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %5056, float %5057, float %5055, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5059 = extractvalue %dx.types.ResRet.f32 %5058, 0
  %5060 = extractvalue %dx.types.ResRet.f32 %5058, 1
  %5061 = extractvalue %dx.types.ResRet.f32 %5058, 2
  %5062 = extractvalue %dx.types.ResRet.f32 %5058, 3
  %5063 = fsub fast float %5059, %5049
  %5064 = fsub fast float %5060, %5050
  %5065 = fsub fast float %5061, %5051
  %5066 = fsub fast float %5062, %5052
  %5067 = fmul fast float %5063, %5045
  %5068 = fmul fast float %5064, %5045
  %5069 = fmul fast float %5065, %5045
  %5070 = fmul fast float %5066, %5045
  %5071 = fadd fast float %5067, %5049
  %5072 = fadd fast float %5068, %5050
  %5073 = fadd fast float %5069, %5051
  %5074 = fadd fast float %5070, %5052
  br label %5075

; <label>:5075                                    ; preds = %5054, %5037
  %5076 = phi float [ %5071, %5054 ], [ %5049, %5037 ]
  %5077 = phi float [ %5072, %5054 ], [ %5050, %5037 ]
  %5078 = phi float [ %5073, %5054 ], [ %5051, %5037 ]
  %5079 = phi float [ %5074, %5054 ], [ %5052, %5037 ]
  %5080 = fadd fast float %5076, -5.000000e-01
  %5081 = fadd fast float %5078, -5.000000e-01
  %5082 = fmul fast float %5080, 0xBFD5555560000000
  %5083 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5081, float %5082)  ; FMad(a,b,c)
  %5084 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5077, float 0.000000e+00)  ; FMad(a,b,c)
  %5085 = fadd fast float %5084, %5079
  %5086 = fmul fast float %5080, -7.500000e-01
  %5087 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5081, float %5086)  ; FMad(a,b,c)
  %5088 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5077, float 0.000000e+00)  ; FMad(a,b,c)
  %5089 = fadd fast float %5088, %5079
  %5090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5091 = extractvalue %dx.types.CBufRet.f32 %5090, 0
  %5092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5093 = extractvalue %dx.types.CBufRet.f32 %5092, 0
  %5094 = extractvalue %dx.types.CBufRet.f32 %5092, 1
  %5095 = extractvalue %dx.types.CBufRet.f32 %5092, 2
  %5096 = extractvalue %dx.types.CBufRet.f32 %5092, 3
  %5097 = fsub fast float %5093, %5083
  %5098 = fsub fast float %5094, %5085
  %5099 = fsub fast float %5095, %5087
  %5100 = fsub fast float %5096, %5089
  %5101 = fmul fast float %5097, %5091
  %5102 = fmul fast float %5098, %5091
  %5103 = fmul fast float %5099, %5091
  %5104 = fmul fast float %5100, %5091
  %5105 = fadd fast float %5101, %5083
  %5106 = fadd fast float %5102, %5085
  %5107 = fadd fast float %5103, %5087
  %5108 = fadd fast float %5104, %5089
  %5109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5110 = extractvalue %dx.types.ResRet.i32 %5109, 0
  %5111 = and i32 %5110, 536870911
  %5112 = uitofp i32 %5111 to float
  %5113 = fmul fast float %5112, %4959
  %5114 = fmul fast float %5112, %4963
  %5115 = fptoui float %5113 to i32
  %5116 = fptoui float %5114 to i32
  %5117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5118 = extractvalue %dx.types.ResRet.i32 %5117, 0
  %5119 = and i32 %5118, 31
  %5120 = lshr i32 %5115, %5119
  %5121 = lshr i32 %5116, %5119
  %5122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5123 = extractvalue %dx.types.ResRet.i32 %5122, 0
  %5124 = and i32 %5123, 31
  %5125 = shl i32 1, %5124
  %5126 = call i32 @dx.op.binary.i32(i32 40, i32 %5125, i32 4)  ; UMin(a,b)
  %5127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5128 = extractvalue %dx.types.ResRet.i32 %5127, 0
  %5129 = extractvalue %dx.types.ResRet.i32 %5127, 1
  %5130 = icmp eq i32 %5126, 0
  br i1 %5130, label %5172, label %5131

; <label>:5131                                    ; preds = %5075
  br label %5132

; <label>:5132                                    ; preds = %5160, %5131
  %5133 = phi i32 [ %5163, %5160 ], [ 0, %5131 ]
  %5134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5135 = extractvalue %dx.types.ResRet.i32 %5134, 0
  %5136 = lshr i32 %5135, 16
  %5137 = and i32 %5136, 31
  %5138 = shl i32 %5121, %5137
  %5139 = add i32 %5138, %5120
  %5140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5141 = extractvalue %dx.types.ResRet.i32 %5140, 0
  %5142 = and i32 %5141, 31
  %5143 = shl i32 %5139, %5142
  %5144 = add i32 %5143, %5133
  %5145 = shl i32 %5144, 2
  %5146 = add i32 %5145, 32
  %5147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5146, i32 undef)  ; BufferLoad(srv,index,wot)
  %5148 = extractvalue %dx.types.ResRet.i32 %5147, 0
  %5149 = icmp slt i32 %5148, 0
  %5150 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %5133
  %5151 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 %5133
  %5152 = bitcast float* %5150 to i32*
  %5153 = bitcast float* %5151 to i32*
  br i1 %5149, label %5154, label %5160

; <label>:5154                                    ; preds = %5132
  %5155 = and i32 %5148, 1073741823
  %5156 = add nuw nsw i32 %5155, 20
  %5157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5156, i32 undef)  ; BufferLoad(srv,index,wot)
  %5158 = extractvalue %dx.types.ResRet.i32 %5157, 0
  %5159 = extractvalue %dx.types.ResRet.i32 %5157, 1
  br label %5160

; <label>:5160                                    ; preds = %5154, %5132
  %5161 = phi i32 [ %5158, %5154 ], [ %5128, %5132 ]
  %5162 = phi i32 [ %5159, %5154 ], [ %5129, %5132 ]
  store i32 %5161, i32* %5152, align 4
  store i32 %5162, i32* %5153, align 4
  %5163 = add nuw i32 %5133, 1
  %5164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5165 = extractvalue %dx.types.CBufRet.i32 %5164, 2
  %5166 = icmp eq i32 %5165, 0
  %5167 = icmp ugt i32 %5148, -1073741825
  %5168 = and i1 %5167, %5166
  %5169 = icmp ult i32 %5163, %5126
  %5170 = and i1 %5168, %5169
  br i1 %5170, label %5132, label %5171

; <label>:5171                                    ; preds = %5160
  br label %5172

; <label>:5172                                    ; preds = %5171, %5075
  %5173 = phi i32 [ 0, %5075 ], [ %5163, %5171 ]
  %5174 = extractvalue %dx.types.CBufRet.f32 %4937, 2
  %5175 = fptoui float %5174 to i32
  %5176 = icmp eq i32 %5175, 0
  br i1 %5176, label %5228, label %5177

; <label>:5177                                    ; preds = %5172
  br label %5178

; <label>:5178                                    ; preds = %5223, %5177
  %5179 = phi i32 [ %5224, %5223 ], [ %5173, %5177 ]
  %5180 = phi i32 [ %5225, %5223 ], [ 0, %5177 ]
  %5181 = lshr i32 %5180, 2
  %5182 = and i32 %5180, 3
  %5183 = add nuw nsw i32 %5181, 83
  %5184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 %5183)  ; CBufferLoadLegacy(handle,regIndex)
  %5185 = extractvalue %dx.types.CBufRet.i32 %5184, 0
  %5186 = extractvalue %dx.types.CBufRet.i32 %5184, 1
  %5187 = extractvalue %dx.types.CBufRet.i32 %5184, 2
  %5188 = extractvalue %dx.types.CBufRet.i32 %5184, 3
  %5189 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 0
  store i32 %5185, i32* %5189, align 4
  %5190 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 1
  store i32 %5186, i32* %5190, align 4
  %5191 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 2
  store i32 %5187, i32* %5191, align 4
  %5192 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 3
  store i32 %5188, i32* %5192, align 4
  %5193 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 %5182
  %5194 = load i32, i32* %5193, align 4, !tbaa !82, !noalias !86
  %5195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5196 = extractvalue %dx.types.ResRet.i32 %5195, 0
  %5197 = lshr i32 %5196, 16
  %5198 = and i32 %5197, 31
  %5199 = shl i32 %5121, %5198
  %5200 = add i32 %5199, %5120
  %5201 = shl i32 %5200, 2
  %5202 = add i32 %5201, %5194
  %5203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5202, i32 undef)  ; BufferLoad(srv,index,wot)
  %5204 = extractvalue %dx.types.ResRet.i32 %5203, 0
  %5205 = icmp eq i32 %5204, 0
  br i1 %5205, label %5223, label %5206

; <label>:5206                                    ; preds = %5178
  %5207 = icmp slt i32 %5204, 0
  %5208 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %5179
  %5209 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 %5179
  %5210 = bitcast float* %5208 to i32*
  %5211 = bitcast float* %5209 to i32*
  br i1 %5207, label %5212, label %5219

; <label>:5212                                    ; preds = %5206
  %5213 = and i32 %5204, 1073741823
  %5214 = add i32 %5194, 20
  %5215 = add i32 %5214, %5213
  %5216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5215, i32 undef)  ; BufferLoad(srv,index,wot)
  %5217 = extractvalue %dx.types.ResRet.i32 %5216, 0
  %5218 = extractvalue %dx.types.ResRet.i32 %5216, 1
  br label %5219

; <label>:5219                                    ; preds = %5212, %5206
  %5220 = phi i32 [ %5217, %5212 ], [ %5128, %5206 ]
  %5221 = phi i32 [ %5218, %5212 ], [ %5129, %5206 ]
  store i32 %5220, i32* %5210, align 4
  store i32 %5221, i32* %5211, align 4
  %5222 = add i32 %5179, 1
  br label %5223

; <label>:5223                                    ; preds = %5219, %5178
  %5224 = phi i32 [ %5179, %5178 ], [ %5222, %5219 ]
  %5225 = add nuw i32 %5180, 1
  %5226 = icmp eq i32 %5225, %5175
  br i1 %5226, label %5227, label %5178

; <label>:5227                                    ; preds = %5223
  br label %5228

; <label>:5228                                    ; preds = %5227, %5172
  %5229 = phi i32 [ %5173, %5172 ], [ %5224, %5227 ]
  %5230 = icmp eq i32 %5229, 1
  %5231 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 0
  %5232 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 0
  br i1 %5230, label %5233, label %5236

; <label>:5233                                    ; preds = %5228
  %5234 = load float, float* %5231, align 4
  %5235 = load float, float* %5232, align 4
  br label %5263

; <label>:5236                                    ; preds = %5228
  %5237 = load float, float* %5231, align 4
  %5238 = load float, float* %5232, align 4
  %5239 = fdiv fast float 1.000000e+00, %5238
  %5240 = fsub fast float %5237, %5239
  %5241 = icmp ugt i32 %5229, 1
  br i1 %5241, label %5242, label %5258

; <label>:5242                                    ; preds = %5236
  br label %5243

; <label>:5243                                    ; preds = %5243, %5242
  %5244 = phi float [ %5253, %5243 ], [ %5240, %5242 ]
  %5245 = phi float [ %5254, %5243 ], [ %5237, %5242 ]
  %5246 = phi i32 [ %5255, %5243 ], [ 1, %5242 ]
  %5247 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %5246
  %5248 = load float, float* %5247, align 4
  %5249 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 %5246
  %5250 = load float, float* %5249, align 4
  %5251 = fdiv fast float 1.000000e+00, %5250
  %5252 = fsub fast float %5248, %5251
  %5253 = call float @dx.op.binary.f32(i32 36, float %5244, float %5252)  ; FMin(a,b)
  %5254 = call float @dx.op.binary.f32(i32 35, float %5245, float %5248)  ; FMax(a,b)
  %5255 = add nuw i32 %5246, 1
  %5256 = icmp eq i32 %5255, %5229
  br i1 %5256, label %5257, label %5243

; <label>:5257                                    ; preds = %5243
  br label %5258

; <label>:5258                                    ; preds = %5257, %5236
  %5259 = phi float [ %5240, %5236 ], [ %5253, %5257 ]
  %5260 = phi float [ %5237, %5236 ], [ %5254, %5257 ]
  %5261 = fsub fast float %5260, %5259
  %5262 = fdiv fast float 1.000000e+00, %5261
  br label %5263

; <label>:5263                                    ; preds = %5258, %5233
  %5264 = phi float [ %5234, %5233 ], [ %5260, %5258 ]
  %5265 = phi float [ %5235, %5233 ], [ %5262, %5258 ]
  %5266 = fadd fast float %4967, %5264
  %5267 = fmul fast float %5266, %5265
  %5268 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5269 = fmul fast float %5268, 2.000000e+00
  %5270 = fsub fast float 1.000000e+00, %5269
  %5271 = fmul fast float %5105, %5105
  %5272 = fsub fast float %5106, %5271
  %5273 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5272)  ; FMax(a,b)
  %5274 = fdiv fast float 1.000000e+00, %5273
  %5275 = fmul fast float %5106, %5105
  %5276 = fsub fast float %5107, %5275
  %5277 = fsub fast float %5270, %5105
  %5278 = fmul fast float %5270, %5270
  %5279 = fsub fast float %5278, %5106
  %5280 = fmul fast float %5274, %5276
  %5281 = fmul fast float %5280, %5277
  %5282 = fsub fast float %5279, %5281
  %5283 = fmul fast float %5106, %5106
  %5284 = fsub fast float %5108, %5283
  %5285 = fmul fast float %5276, %5276
  %5286 = fmul fast float %5285, %5274
  %5287 = fsub fast float %5284, %5286
  %5288 = fdiv fast float %5282, %5287
  %5289 = fmul fast float %5288, %5276
  %5290 = fsub fast float %5277, %5289
  %5291 = fmul fast float %5290, %5274
  %5292 = fmul fast float %5291, %5105
  %5293 = fsub fast float 1.000000e+00, %5292
  %5294 = fmul fast float %5288, %5106
  %5295 = fsub fast float %5293, %5294
  %5296 = fmul fast float %5291, %5291
  %5297 = fmul fast float %5288, 4.000000e+00
  %5298 = fmul fast float %5297, %5295
  %5299 = fsub fast float %5296, %5298
  %5300 = call float @dx.op.unary.f32(i32 24, float %5299)  ; Sqrt(value)
  %5301 = fcmp fast oge float %5291, 0.000000e+00
  %5302 = fsub fast float -0.000000e+00, %5300
  %5303 = select i1 %5301, float %5302, float %5300
  %5304 = fsub fast float %5303, %5291
  %5305 = fdiv fast float %5304, %5288
  %5306 = fdiv fast float %5295, %5304
  %5307 = fmul fast float %5305, 5.000000e-01
  %5308 = fmul fast float %5306, 2.000000e+00
  %5309 = select i1 %5301, float %5307, float %5308
  %5310 = select i1 %5301, float %5308, float %5307
  %5311 = call float @dx.op.binary.f32(i32 35, float %5309, float %5310)  ; FMax(a,b)
  %5312 = call float @dx.op.binary.f32(i32 36, float %5309, float %5310)  ; FMin(a,b)
  %5313 = fcmp fast ogt float %5270, %5311
  %5314 = fsub fast float %5270, %5312
  %5315 = fsub fast float %5270, %5311
  %5316 = fsub fast float %5311, %5312
  %5317 = select i1 %5313, float %5315, float %5316
  %5318 = fmul float %5314, %5317
  %5319 = select i1 %5313, float %5312, float %5270
  %5320 = fcmp fast ogt float %5270, %5312
  %5321 = fmul fast float %5319, %5311
  %5322 = fadd fast float %5319, %5311
  %5323 = fmul fast float %5322, %5105
  %5324 = fadd fast float %5321, %5106
  %5325 = fsub fast float %5324, %5323
  %5326 = fdiv fast float %5325, %5318
  %5327 = select i1 %5320, float %5326, float 0.000000e+00
  %5328 = fsub fast float 1.000000e+00, %5327
  %5329 = select i1 %5313, float %5328, float %5327
  %5330 = call float @dx.op.unary.f32(i32 7, float %5329)  ; Saturate(value)
  %5331 = extractvalue %dx.types.CBufRet.f32 %5090, 3
  %5332 = fmul fast float %5331, %5330
  %5333 = fsub fast float 1.000000e+00, %5332
  br label %5334

; <label>:5334                                    ; preds = %5263, %4975, %4940, %4936, %4902
  %5335 = phi float [ 1.000000e+00, %4902 ], [ %5333, %5263 ], [ 1.000000e+00, %4940 ], [ 1.000000e+00, %4975 ], [ 1.000000e+00, %4936 ]
  %5336 = fcmp fast ogt float %4932, 0.000000e+00
  br i1 %5336, label %5337, label %5343, !dx.controlflow.hints !95

; <label>:5337                                    ; preds = %5334
  %5338 = fadd fast float %4845, %4819
  %5339 = call float @dx.op.binary.f32(i32 35, float %5338, float 0.000000e+00)  ; FMax(a,b)
  %5340 = fadd fast float %5339, 0x3F10000000000000
  %5341 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %37, float %4834, float %4835, float undef, float undef, i32 0, i32 0, i32 undef, float %5340)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5342 = extractvalue %dx.types.ResRet.f32 %5341, 0
  br label %5343

; <label>:5343                                    ; preds = %5337, %5334
  %5344 = phi float [ %5342, %5337 ], [ 1.000000e+00, %5334 ]
  %5345 = fcmp fast ogt float %4930, 0.000000e+00
  br i1 %5345, label %5346, label %5352, !dx.controlflow.hints !96

; <label>:5346                                    ; preds = %5343
  %5347 = fadd fast float %4875, %4819
  %5348 = call float @dx.op.binary.f32(i32 35, float %5347, float 0.000000e+00)  ; FMax(a,b)
  %5349 = fadd fast float %5348, 0x3F10000000000000
  %5350 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %37, float %4826, float %4827, float undef, float undef, i32 0, i32 0, i32 undef, float %5349)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5351 = extractvalue %dx.types.ResRet.f32 %5350, 0
  br label %5352

; <label>:5352                                    ; preds = %5346, %5343
  %5353 = phi float [ %5351, %5346 ], [ 1.000000e+00, %5343 ]
  %5354 = fcmp fast ogt float %4929, 0.000000e+00
  br i1 %5354, label %5355, label %5362, !dx.controlflow.hints !97

; <label>:5355                                    ; preds = %5352
  %5356 = extractvalue %dx.types.CBufRet.f32 %4844, 0
  %5357 = fadd fast float %5356, %4819
  %5358 = call float @dx.op.binary.f32(i32 35, float %5357, float 0.000000e+00)  ; FMax(a,b)
  %5359 = fadd fast float %5358, 0x3F10000000000000
  %5360 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %37, float %4811, float %4815, float undef, float undef, i32 0, i32 0, i32 undef, float %5359)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5361 = extractvalue %dx.types.ResRet.f32 %5360, 0
  br label %5362

; <label>:5362                                    ; preds = %5355, %5352
  %5363 = phi float [ %5361, %5355 ], [ 1.000000e+00, %5352 ]
  %5364 = fsub fast float %5344, %5335
  %5365 = fmul fast float %5364, %4873
  %5366 = fadd fast float %5365, %5335
  %5367 = fsub fast float %5353, %5366
  %5368 = fmul fast float %5367, %4903
  %5369 = fadd fast float %5368, %5366
  %5370 = fsub fast float %5363, %5369
  %5371 = fmul fast float %5370, %4929
  %5372 = fadd fast float %5371, %5369
  %5373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5374 = extractvalue %dx.types.CBufRet.f32 %5373, 2
  %5375 = fcmp fast ogt float %5374, 0.000000e+00
  br i1 %5375, label %5376, label %5416, !dx.controlflow.hints !98

; <label>:5376                                    ; preds = %5362
  %5377 = fcmp fast ugt float %5374, 0.000000e+00
  br i1 %5377, label %5378, label %5413

; <label>:5378                                    ; preds = %5376
  %5379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5380 = extractvalue %dx.types.CBufRet.f32 %5379, 0
  %5381 = extractvalue %dx.types.CBufRet.f32 %5379, 1
  %5382 = extractvalue %dx.types.CBufRet.f32 %5379, 2
  %5383 = extractvalue %dx.types.CBufRet.f32 %5379, 3
  %5384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5385 = extractvalue %dx.types.CBufRet.f32 %5384, 0
  %5386 = extractvalue %dx.types.CBufRet.f32 %5384, 1
  %5387 = extractvalue %dx.types.CBufRet.f32 %5384, 2
  %5388 = extractvalue %dx.types.CBufRet.f32 %5384, 3
  %5389 = extractvalue %dx.types.CBufRet.f32 %5373, 0
  %5390 = extractvalue %dx.types.CBufRet.f32 %5373, 1
  %5391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5392 = extractvalue %dx.types.CBufRet.f32 %5391, 0
  %5393 = extractvalue %dx.types.CBufRet.f32 %5391, 1
  %5394 = extractvalue %dx.types.CBufRet.f32 %5391, 2
  %5395 = fadd fast float %5392, %4788
  %5396 = fadd fast float %5393, %4789
  %5397 = fadd fast float %5394, %4790
  %5398 = fmul fast float %5395, %5380
  %5399 = call float @dx.op.tertiary.f32(i32 46, float %5381, float %5396, float %5398)  ; FMad(a,b,c)
  %5400 = call float @dx.op.tertiary.f32(i32 46, float %5382, float %5397, float %5399)  ; FMad(a,b,c)
  %5401 = fadd fast float %5400, %5383
  %5402 = fmul fast float %5395, %5385
  %5403 = call float @dx.op.tertiary.f32(i32 46, float %5386, float %5396, float %5402)  ; FMad(a,b,c)
  %5404 = call float @dx.op.tertiary.f32(i32 46, float %5387, float %5397, float %5403)  ; FMad(a,b,c)
  %5405 = fadd fast float %5404, %5388
  %5406 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %32, float %5401, float %5405, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5407 = extractvalue %dx.types.ResRet.f32 %5406, 0
  %5408 = fmul fast float %5407, %5390
  %5409 = fadd fast float %5408, %5389
  %5410 = call float @dx.op.unary.f32(i32 7, float %5409)  ; Saturate(value)
  %5411 = fmul fast float %5410, %5374
  %5412 = fsub fast float 1.000000e+00, %5411
  br label %5413

; <label>:5413                                    ; preds = %5378, %5376
  %5414 = phi float [ %5412, %5378 ], [ 1.000000e+00, %5376 ]
  %5415 = fmul fast float %5414, %5372
  br label %5416

; <label>:5416                                    ; preds = %5413, %5362, %4768
  %5417 = phi float [ 1.000000e+00, %4768 ], [ %5415, %5413 ], [ %5372, %5362 ]
  %5418 = call float @dx.op.binary.f32(i32 36, float %5417, float %5417)  ; FMin(a,b)
  %5419 = call float @dx.op.binary.f32(i32 36, float %5417, float %5418)  ; FMin(a,b)
  %5420 = fcmp fast ogt float %5419, 0.000000e+00
  br i1 %5420, label %5421, label %5582, !dx.controlflow.hints !99

; <label>:5421                                    ; preds = %5416
  %5422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5423 = extractvalue %dx.types.CBufRet.f32 %5422, 0
  %5424 = extractvalue %dx.types.CBufRet.f32 %5422, 1
  %5425 = extractvalue %dx.types.CBufRet.f32 %5422, 2
  %5426 = extractvalue %dx.types.CBufRet.f32 %5422, 3
  %5427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5428 = extractvalue %dx.types.CBufRet.f32 %5427, 0
  %5429 = extractvalue %dx.types.CBufRet.f32 %5427, 1
  %5430 = extractvalue %dx.types.CBufRet.f32 %5427, 2
  %5431 = extractvalue %dx.types.CBufRet.f32 %5427, 3
  %5432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5433 = extractvalue %dx.types.CBufRet.f32 %5432, 0
  %5434 = extractvalue %dx.types.CBufRet.f32 %5432, 1
  %5435 = extractvalue %dx.types.CBufRet.f32 %5432, 2
  %5436 = extractvalue %dx.types.CBufRet.f32 %5432, 3
  %5437 = fmul fast float %5423, %4788
  %5438 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %5424, float %5437)  ; FMad(a,b,c)
  %5439 = call float @dx.op.tertiary.f32(i32 46, float %4790, float %5425, float %5438)  ; FMad(a,b,c)
  %5440 = fadd fast float %5439, %5426
  %5441 = fmul fast float %5428, %4788
  %5442 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %5429, float %5441)  ; FMad(a,b,c)
  %5443 = call float @dx.op.tertiary.f32(i32 46, float %4790, float %5430, float %5442)  ; FMad(a,b,c)
  %5444 = fadd fast float %5443, %5431
  %5445 = fmul fast float %5433, %4788
  %5446 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %5434, float %5445)  ; FMad(a,b,c)
  %5447 = call float @dx.op.tertiary.f32(i32 46, float %4790, float %5435, float %5446)  ; FMad(a,b,c)
  %5448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5449 = extractvalue %dx.types.CBufRet.f32 %5448, 0
  %5450 = extractvalue %dx.types.CBufRet.f32 %5448, 1
  %5451 = extractvalue %dx.types.CBufRet.f32 %5448, 3
  %5452 = fmul fast float %5451, %5440
  %5453 = fmul fast float %5451, %5444
  %5454 = fadd fast float %5452, %5449
  %5455 = fadd fast float %5453, %5450
  %5456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5457 = extractvalue %dx.types.CBufRet.f32 %5456, 0
  %5458 = extractvalue %dx.types.CBufRet.f32 %5456, 1
  %5459 = fsub fast float %5454, %5457
  %5460 = fsub fast float %5455, %5458
  %5461 = fcmp fast olt float %5459, 0.000000e+00
  %5462 = fcmp fast olt float %5460, 0.000000e+00
  %5463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5464 = extractvalue %dx.types.CBufRet.f32 %5463, 0
  %5465 = extractvalue %dx.types.CBufRet.f32 %5463, 1
  %5466 = extractvalue %dx.types.CBufRet.f32 %5463, 2
  %5467 = extractvalue %dx.types.CBufRet.f32 %5463, 3
  %5468 = select i1 %5461, float %5464, float %5466
  %5469 = select i1 %5462, float %5465, float %5467
  %5470 = fmul fast float %5468, %5459
  %5471 = fmul fast float %5469, %5460
  %5472 = call float @dx.op.unary.f32(i32 6, float %5470)  ; FAbs(value)
  %5473 = call float @dx.op.unary.f32(i32 6, float %5471)  ; FAbs(value)
  %5474 = extractvalue %dx.types.CBufRet.f32 %4783, 0
  %5475 = call float @dx.op.binary.f32(i32 35, float %5472, float %5473)  ; FMax(a,b)
  %5476 = fsub fast float %5474, %5475
  %5477 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5478 = fcmp fast ogt float %5477, 0.000000e+00
  br i1 %5478, label %5479, label %5520, !dx.controlflow.hints !100

; <label>:5479                                    ; preds = %5421
  %5480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %35, float %5454, float %5455, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5481 = extractvalue %dx.types.ResRet.f32 %5480, 1
  %5482 = fcmp fast ogt float %5481, 0.000000e+00
  br i1 %5482, label %5483, label %5515

; <label>:5483                                    ; preds = %5479
  %5484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %35, float %5454, float %5455, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5485 = extractvalue %dx.types.ResRet.f32 %5484, 0
  %5486 = extractvalue %dx.types.ResRet.f32 %5484, 1
  %5487 = extractvalue %dx.types.ResRet.f32 %5484, 2
  %5488 = extractvalue %dx.types.ResRet.f32 %5484, 3
  %5489 = fsub fast float 1.000000e+00, %5436
  %5490 = fsub fast float %5489, %5447
  %5491 = fmul fast float %5490, 0x400921FB60000000
  %5492 = fadd fast float %5491, 0x3FF921FB60000000
  %5493 = call float @dx.op.unary.f32(i32 13, float %5492)  ; Sin(value)
  %5494 = fadd fast float %5493, -1.000000e+00
  %5495 = fmul fast float %5494, 0x3FD45F3060000000
  %5496 = fmul fast float %5490, 0x401921FB60000000
  %5497 = fadd fast float %5496, 0x400921FB60000000
  %5498 = call float @dx.op.unary.f32(i32 13, float %5497)  ; Sin(value)
  %5499 = fadd fast float %5498, 0x3E7777A5C0000000
  %5500 = fmul fast float %5499, 0x3FC45F3060000000
  %5501 = fmul fast float %5490, 0x4022D97C80000000
  %5502 = fadd fast float %5501, 0x4012D97C80000000
  %5503 = call float @dx.op.unary.f32(i32 13, float %5502)  ; Sin(value)
  %5504 = fadd fast float %5503, 1.000000e+00
  %5505 = fmul fast float %5504, 0x3FBB2995E0000000
  %5506 = fmul fast float %5490, 0x402921FB60000000
  %5507 = fadd fast float %5506, 0x401921FB60000000
  %5508 = call float @dx.op.unary.f32(i32 13, float %5507)  ; Sin(value)
  %5509 = fadd fast float %5508, 0xBE8777A5C0000000
  %5510 = fmul fast float %5509, 0x3FB45F3060000000
  %5511 = call float @dx.op.dot4.f32(i32 56, float %5485, float %5486, float %5487, float %5488, float %5495, float %5500, float %5505, float %5510)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5512 = fmul fast float %5511, 0xBFF7154760000000
  %5513 = call float @dx.op.unary.f32(i32 21, float %5512)  ; Exp(value)
  %5514 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  br label %5515

; <label>:5515                                    ; preds = %5483, %5479
  %5516 = phi float [ %5514, %5483 ], [ 1.000000e+00, %5479 ]
  %5517 = fadd fast float %5516, -1.000000e+00
  %5518 = fmul fast float %5517, %5477
  %5519 = fadd fast float %5518, 1.000000e+00
  br label %5520

; <label>:5520                                    ; preds = %5515, %5421
  %5521 = phi float [ %5519, %5515 ], [ 1.000000e+00, %5421 ]
  %5522 = fmul fast float %5521, %5417
  %5523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5524 = extractvalue %dx.types.CBufRet.f32 %5523, 0
  %5525 = extractvalue %dx.types.CBufRet.f32 %5523, 1
  %5526 = extractvalue %dx.types.CBufRet.f32 %5523, 2
  %5527 = fadd fast float %5524, %145
  %5528 = fadd fast float %5525, %146
  %5529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5530 = extractvalue %dx.types.CBufRet.f32 %5529, 1
  %5531 = fsub fast float -0.000000e+00, %5527
  %5532 = fsub fast float -0.000000e+00, %5528
  %5533 = fsub fast float -0.000000e+00, %147
  %5534 = fsub fast float %5533, %5526
  %5535 = fadd fast float %5534, %5530
  %5536 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5531, float %5532, float %5535)  ; Dot3(ax,ay,az,bx,by,bz)
  %5537 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4769, float %4770, float %4771)  ; Dot3(ax,ay,az,bx,by,bz)
  %5538 = fdiv fast float 1.000000e+00, %5537
  %5539 = fmul fast float %5538, %5536
  %5540 = fmul fast float %4769, %5539
  %5541 = fmul fast float %4770, %5539
  %5542 = fadd fast float %5540, %5527
  %5543 = fadd fast float %5541, %5528
  %5544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5545 = extractvalue %dx.types.CBufRet.f32 %5544, 0
  %5546 = extractvalue %dx.types.CBufRet.f32 %5544, 1
  %5547 = fsub fast float %5542, %5545
  %5548 = fsub fast float %5543, %5546
  %5549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5550 = extractvalue %dx.types.CBufRet.f32 %5549, 2
  %5551 = extractvalue %dx.types.CBufRet.f32 %5549, 3
  %5552 = fmul fast float %5547, %5550
  %5553 = fmul fast float %5548, %5551
  %5554 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5555 = extractvalue %dx.types.CBufRet.i32 %5554, 3
  %5556 = icmp eq i32 %5555, 0
  br i1 %5556, label %5562, label %5557

; <label>:5557                                    ; preds = %5520
  %5558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %5552, float %5553, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5559 = extractvalue %dx.types.ResRet.f32 %5558, 0
  %5560 = extractvalue %dx.types.ResRet.f32 %5558, 1
  %5561 = extractvalue %dx.types.ResRet.f32 %5558, 2
  br label %5567

; <label>:5562                                    ; preds = %5520
  %5563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %5552, float %5553, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5564 = extractvalue %dx.types.ResRet.f32 %5563, 0
  %5565 = extractvalue %dx.types.ResRet.f32 %5563, 1
  %5566 = extractvalue %dx.types.ResRet.f32 %5563, 2
  br label %5567

; <label>:5567                                    ; preds = %5562, %5557
  %5568 = phi float [ %5559, %5557 ], [ %5564, %5562 ]
  %5569 = phi float [ %5560, %5557 ], [ %5565, %5562 ]
  %5570 = phi float [ %5561, %5557 ], [ %5566, %5562 ]
  %5571 = extractvalue %dx.types.CBufRet.f32 %5529, 2
  %5572 = fmul fast float %5571, %5568
  %5573 = extractvalue %dx.types.CBufRet.f32 %5529, 0
  %5574 = fsub fast float %5539, %5573
  %5575 = fsub fast float %5574, %5572
  %5576 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5575)  ; FMax(a,b)
  %5577 = fmul fast float %5576, %5569
  %5578 = call float @dx.op.binary.f32(i32 36, float %5570, float %5577)  ; FMin(a,b)
  %5579 = fmul fast float %5578, 0xBFF7154760000000
  %5580 = call float @dx.op.unary.f32(i32 21, float %5579)  ; Exp(value)
  %5581 = fmul fast float %5522, %5580
  br label %5582

; <label>:5582                                    ; preds = %5567, %5416
  %5583 = phi float [ %5581, %5567 ], [ %5417, %5416 ]
  %5584 = call float @dx.op.binary.f32(i32 36, float %5583, float %5583)  ; FMin(a,b)
  %5585 = call float @dx.op.binary.f32(i32 36, float %5583, float %5584)  ; FMin(a,b)
  %5586 = fcmp fast ogt float %5585, 0.000000e+00
  br i1 %5586, label %5587, label %5762, !dx.controlflow.hints !101

; <label>:5587                                    ; preds = %5582
  %5588 = fmul fast float %5583, %4780
  %5589 = fmul fast float %5583, %4781
  %5590 = fmul fast float %5583, %4782
  %5591 = fsub fast float %4769, %4541
  %5592 = fsub fast float %4770, %4540
  %5593 = fsub fast float %4771, %4539
  %5594 = call float @dx.op.dot3.f32(i32 55, float %5591, float %5592, float %5593, float %5591, float %5592, float %5593)  ; Dot3(ax,ay,az,bx,by,bz)
  %5595 = call float @dx.op.unary.f32(i32 25, float %5594)  ; Rsqrt(value)
  %5596 = fmul fast float %5595, %5591
  %5597 = fmul fast float %5595, %5592
  %5598 = fmul fast float %5595, %5593
  %5599 = call float @dx.op.dot3.f32(i32 55, float %4769, float %4770, float %4771, float %4548, float %4549, float %4550)  ; Dot3(ax,ay,az,bx,by,bz)
  %5600 = call float @dx.op.dot3.f32(i32 55, float %4538, float %4537, float %4536, float %5596, float %5597, float %5598)  ; Dot3(ax,ay,az,bx,by,bz)
  %5601 = call float @dx.op.unary.f32(i32 7, float %5599)  ; Saturate(value)
  %5602 = fmul fast float %5601, %5601
  %5603 = fmul fast float %5602, %4764
  %5604 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  %5605 = fmul fast float %5604, %5601
  %5606 = call float @dx.op.dot3.f32(i32 55, float %4548, float %4549, float %4550, float %5596, float %5597, float %5598)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = fmul fast float %5606, %5606
  %5608 = call float @dx.op.unary.f32(i32 6, float %5599)  ; FAbs(value)
  %5609 = fsub fast float 1.000000e+00, %4551
  %5610 = call float @dx.op.binary.f32(i32 35, float %5609, float 0x3F847AE140000000)  ; FMax(a,b)
  %5611 = fmul fast float %5610, %5610
  %5612 = fmul fast float %5611, %5611
  %5613 = fsub fast float 1.000000e+00, %5612
  %5614 = fmul fast float %4555, %4555
  %5615 = fmul fast float %5614, %5613
  %5616 = fadd fast float %5615, %5612
  %5617 = bitcast float %5616 to i32
  %5618 = ashr i32 %5617, 1
  %5619 = add nsw i32 %5618, 532487669
  %5620 = bitcast i32 %5619 to float
  %5621 = fadd fast float %5620, %4555
  %5622 = fmul fast float %5612, %5607
  %5623 = fsub fast float 1.000000e+00, %5607
  %5624 = fadd fast float %5623, %5622
  %5625 = fmul fast float %5608, %5608
  %5626 = fmul fast float %5625, %5613
  %5627 = fadd fast float %5626, %5612
  %5628 = bitcast float %5627 to i32
  %5629 = ashr i32 %5628, 1
  %5630 = add nsw i32 %5629, 532487669
  %5631 = bitcast i32 %5630 to float
  %5632 = fadd fast float %5631, %5608
  %5633 = fmul fast float %5624, %5624
  %5634 = fmul fast float %5633, %5621
  %5635 = fmul fast float %5634, %5632
  %5636 = fdiv fast float 0x3FF0A00000000000, %5635
  %5637 = fmul fast float %5636, %5612
  %5638 = call float @dx.op.unary.f32(i32 6, float %5600)  ; FAbs(value)
  %5639 = fsub fast float 1.000000e+00, %5638
  %5640 = bitcast float %5639 to i32
  %5641 = sitofp i32 %5640 to float
  %5642 = fmul fast float %5641, 5.000000e+00
  %5643 = fadd fast float %5642, 0xC1EFBF8940000000
  %5644 = fptosi float %5643 to i32
  %5645 = bitcast i32 %5644 to float
  %5646 = fsub fast float 1.000000e+00, %4545
  %5647 = fsub fast float 1.000000e+00, %4546
  %5648 = fsub fast float 1.000000e+00, %4553
  %5649 = fmul fast float %5645, %5646
  %5650 = fmul fast float %5645, %5647
  %5651 = fmul fast float %5645, %5648
  %5652 = fadd fast float %5649, %4545
  %5653 = fadd fast float %5650, %4546
  %5654 = fadd fast float %5651, %4553
  br i1 %4679, label %5655, label %5678

; <label>:5655                                    ; preds = %5587
  %5656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %4231, float %5638, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5657 = extractvalue %dx.types.ResRet.f32 %5656, 0
  %5658 = extractvalue %dx.types.ResRet.f32 %5656, 1
  %5659 = extractvalue %dx.types.ResRet.f32 %5656, 2
  %5660 = fadd fast float %5657, -5.000000e-01
  %5661 = fadd fast float %5658, -5.000000e-01
  %5662 = fadd fast float %5659, -5.000000e-01
  %5663 = fmul fast float %4545, 4.000000e+00
  %5664 = fmul fast float %5663, %5646
  %5665 = fmul fast float %5664, %5660
  %5666 = fmul fast float %4546, 4.000000e+00
  %5667 = fmul fast float %5666, %5647
  %5668 = fmul fast float %5667, %5661
  %5669 = fmul fast float %4553, 4.000000e+00
  %5670 = fmul fast float %5669, %5648
  %5671 = fmul fast float %5670, %5662
  %5672 = fadd fast float %5665, %5652
  %5673 = fadd fast float %5668, %5653
  %5674 = fadd fast float %5671, %5654
  %5675 = call float @dx.op.unary.f32(i32 7, float %5672)  ; Saturate(value)
  %5676 = call float @dx.op.unary.f32(i32 7, float %5673)  ; Saturate(value)
  %5677 = call float @dx.op.unary.f32(i32 7, float %5674)  ; Saturate(value)
  br label %5678

; <label>:5678                                    ; preds = %5655, %5587
  %5679 = phi float [ %5675, %5655 ], [ %5652, %5587 ]
  %5680 = phi float [ %5676, %5655 ], [ %5653, %5587 ]
  %5681 = phi float [ %5677, %5655 ], [ %5654, %5587 ]
  %5682 = fmul fast float %5599, 9.843750e-01
  %5683 = fadd fast float %5682, 7.812500e-03
  %5684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %5683, float %4669, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5685 = extractvalue %dx.types.ResRet.f32 %5684, 2
  %5686 = extractvalue %dx.types.ResRet.f32 %5684, 3
  %5687 = fmul fast float %5685, %4545
  %5688 = fmul fast float %5685, %4546
  %5689 = fmul fast float %5685, %4553
  %5690 = fadd fast float %5687, %5686
  %5691 = fadd fast float %5688, %5686
  %5692 = fadd fast float %5689, %5686
  br i1 %4679, label %5693, label %5716

; <label>:5693                                    ; preds = %5678
  %5694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %4231, float %5599, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5695 = extractvalue %dx.types.ResRet.f32 %5694, 0
  %5696 = extractvalue %dx.types.ResRet.f32 %5694, 1
  %5697 = extractvalue %dx.types.ResRet.f32 %5694, 2
  %5698 = fadd fast float %5695, -5.000000e-01
  %5699 = fadd fast float %5696, -5.000000e-01
  %5700 = fadd fast float %5697, -5.000000e-01
  %5701 = fmul fast float %4545, 4.000000e+00
  %5702 = fmul fast float %5701, %5646
  %5703 = fmul fast float %5702, %5698
  %5704 = fmul fast float %4546, 4.000000e+00
  %5705 = fmul fast float %5704, %5647
  %5706 = fmul fast float %5705, %5699
  %5707 = fmul fast float %4553, 4.000000e+00
  %5708 = fmul fast float %5707, %5648
  %5709 = fmul fast float %5708, %5700
  %5710 = fadd fast float %5703, %5690
  %5711 = fadd fast float %5706, %5691
  %5712 = fadd fast float %5709, %5692
  %5713 = call float @dx.op.unary.f32(i32 7, float %5710)  ; Saturate(value)
  %5714 = call float @dx.op.unary.f32(i32 7, float %5711)  ; Saturate(value)
  %5715 = call float @dx.op.unary.f32(i32 7, float %5712)  ; Saturate(value)
  br label %5716

; <label>:5716                                    ; preds = %5693, %5678
  %5717 = phi float [ %5713, %5693 ], [ %5690, %5678 ]
  %5718 = phi float [ %5714, %5693 ], [ %5691, %5678 ]
  %5719 = phi float [ %5715, %5693 ], [ %5692, %5678 ]
  %5720 = call float @dx.op.binary.f32(i32 35, float %5718, float %5719)  ; FMax(a,b)
  %5721 = call float @dx.op.binary.f32(i32 35, float %5717, float %5720)  ; FMax(a,b)
  %5722 = fsub fast float 1.000000e+00, %5721
  %5723 = fmul fast float %5679, %5637
  %5724 = fmul fast float %5680, %5637
  %5725 = fmul fast float %5681, %5637
  %5726 = fsub fast float 1.000000e+00, %5600
  %5727 = bitcast float %5726 to i32
  %5728 = sitofp i32 %5727 to float
  %5729 = fmul fast float %5728, 5.000000e+00
  %5730 = fadd fast float %5729, 0xC1EFBF8940000000
  %5731 = fptosi float %5730 to i32
  %5732 = bitcast i32 %5731 to float
  %5733 = fmul fast float %5732, %4232
  %5734 = fmul fast float %5722, %5733
  %5735 = fmul fast float %5734, %4729
  %5736 = fmul fast float %5734, %4730
  %5737 = fmul fast float %5734, %4731
  %5738 = fadd fast float %5735, %5723
  %5739 = fadd fast float %5736, %5724
  %5740 = fadd fast float %5737, %5725
  %5741 = fmul fast float %5605, %5588
  %5742 = fmul fast float %5741, %5722
  %5743 = fmul fast float %5605, %5589
  %5744 = fmul fast float %5743, %5722
  %5745 = fmul fast float %5605, %5590
  %5746 = fmul fast float %5745, %5722
  %5747 = fmul fast float %5741, %5738
  %5748 = fmul fast float %5743, %5739
  %5749 = fmul fast float %5745, %5740
  %5750 = fadd fast float %5742, %4713
  %5751 = fmul fast float %5750, %4228
  %5752 = fadd fast float %5744, %4714
  %5753 = fmul fast float %5752, %4228
  %5754 = fadd fast float %5746, %4715
  %5755 = fmul fast float %5754, %4228
  %5756 = fadd fast float %5747, %4756
  %5757 = fmul fast float %5756, %4228
  %5758 = fadd fast float %5748, %4759
  %5759 = fmul fast float %5758, %4228
  %5760 = fadd fast float %5749, %4762
  %5761 = fmul fast float %5760, %4228
  br label %5762

; <label>:5762                                    ; preds = %5716, %5582, %4706
  %5763 = phi float [ %4757, %4706 ], [ %4757, %5582 ], [ %5757, %5716 ]
  %5764 = phi float [ %4760, %4706 ], [ %4760, %5582 ], [ %5759, %5716 ]
  %5765 = phi float [ %4763, %4706 ], [ %4763, %5582 ], [ %5761, %5716 ]
  %5766 = phi float [ %4752, %4706 ], [ %4752, %5582 ], [ %5751, %5716 ]
  %5767 = phi float [ %4753, %4706 ], [ %4753, %5582 ], [ %5753, %5716 ]
  %5768 = phi float [ %4754, %4706 ], [ %4754, %5582 ], [ %5755, %5716 ]
  %5769 = fmul fast float %4228, %4228
  %5770 = fsub fast float 1.000000e+00, %5769
  %5771 = call float @dx.op.dot3.f32(i32 55, float %5770, float %5770, float %5770, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5772 = fsub fast float 1.000000e+00, %5771
  %5773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5774 = extractvalue %dx.types.CBufRet.f32 %5773, 0
  %5775 = fmul fast float %5774, %4735
  %5776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5777 = extractvalue %dx.types.CBufRet.f32 %5776, 3
  %5778 = fsub fast float 1.000000e+00, %4235
  %5779 = call float @dx.op.unary.f32(i32 7, float %5778)  ; Saturate(value)
  %5780 = fadd fast float %5768, %4234
  %5781 = fmul fast float %5780, %4235
  %5782 = fmul fast float %5779, %5777
  %5783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5784 = extractvalue %dx.types.CBufRet.f32 %5783, 3
  %5785 = fmul fast float %5766, %4542
  %5786 = fmul fast float %5767, %4543
  %5787 = fmul fast float %5768, %4544
  %5788 = fcmp fast ogt float %73, %167
  %5789 = and i1 %5788, %4274
  %5790 = or i1 %4353, %5789
  %5791 = icmp eq i32 %4273, 2
  %5792 = fcmp fast ole float %73, %167
  %5793 = and i1 %5792, %5791
  %5794 = or i1 %5793, %5790
  br i1 %5789, label %5795, label %6052

; <label>:5795                                    ; preds = %5762
  %5796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5797 = extractvalue %dx.types.CBufRet.f32 %5796, 2
  %5798 = extractvalue %dx.types.CBufRet.f32 %5796, 3
  %5799 = fmul fast float %5797, %82
  %5800 = fmul fast float %5798, %83
  %5801 = call float @dx.op.unary.f32(i32 7, float %5799)  ; Saturate(value)
  %5802 = call float @dx.op.unary.f32(i32 7, float %5800)  ; Saturate(value)
  %5803 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %5801, float %5802, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5804 = extractvalue %dx.types.ResRet.f32 %5803, 0
  %5805 = extractvalue %dx.types.ResRet.f32 %5803, 1
  %5806 = extractvalue %dx.types.ResRet.f32 %5803, 2
  %5807 = extractvalue %dx.types.ResRet.f32 %5803, 3
  %5808 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %5801, float %5802, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5809 = extractvalue %dx.types.ResRet.f32 %5808, 0
  %5810 = extractvalue %dx.types.ResRet.f32 %5808, 1
  %5811 = extractvalue %dx.types.ResRet.f32 %5808, 2
  %5812 = extractvalue %dx.types.ResRet.f32 %5808, 3
  %5813 = call float @dx.op.binary.f32(i32 35, float %5805, float %5806)  ; FMax(a,b)
  %5814 = call float @dx.op.binary.f32(i32 35, float %5804, float %5813)  ; FMax(a,b)
  %5815 = call float @dx.op.binary.f32(i32 35, float %5814, float %5807)  ; FMax(a,b)
  %5816 = call float @dx.op.binary.f32(i32 36, float %5810, float %5811)  ; FMin(a,b)
  %5817 = call float @dx.op.binary.f32(i32 36, float %5809, float %5816)  ; FMin(a,b)
  %5818 = call float @dx.op.binary.f32(i32 36, float %5817, float %5812)  ; FMin(a,b)
  %5819 = fmul fast float %5815, 2.550000e+02
  %5820 = fadd fast float %5819, 0x3F70101020000000
  %5821 = fptoui float %5820 to i32
  %5822 = fmul fast float %5818, 2.550000e+02
  %5823 = fadd fast float %5822, 0x3F70101020000000
  %5824 = fptoui float %5823 to i32
  %5825 = icmp ult i32 %5821, %5824
  br i1 %5825, label %5826, label %5994

; <label>:5826                                    ; preds = %5795
  %5827 = fcmp fast ogt float %72, 9.843750e-01
  %5828 = fadd fast float %73, -4.000000e+00
  %5829 = select i1 %5827, float -4.000000e+00, float %5828
  %5830 = call float @dx.op.binary.f32(i32 35, float %5829, float 0.000000e+00)  ; FMax(a,b)
  %5831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5832 = extractvalue %dx.types.CBufRet.f32 %5831, 0
  %5833 = fadd fast float %5832, %5830
  %5834 = extractvalue %dx.types.CBufRet.f32 %5831, 2
  %5835 = fmul fast float %5833, %5834
  %5836 = call float @dx.op.unary.f32(i32 23, float %5835)  ; Log(value)
  %5837 = extractvalue %dx.types.CBufRet.f32 %5831, 3
  %5838 = fmul fast float %5837, %5836
  %5839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5840 = extractvalue %dx.types.CBufRet.f32 %5839, 2
  %5841 = fmul fast float %5838, %5840
  %5842 = call float @dx.op.unary.f32(i32 7, float %5841)  ; Saturate(value)
  %5843 = uitofp i32 %5821 to float
  %5844 = uitofp i32 %5824 to float
  %5845 = fadd fast float %5843, 5.000000e-01
  %5846 = fadd fast float %5844, 5.000000e-01
  %5847 = fmul fast float %5840, %5845
  %5848 = fmul fast float %5840, %5846
  %5849 = fadd fast float %5847, 0x3F0FFB4800000000
  %5850 = fadd fast float %5848, 0xBF0FFB4800000000
  %5851 = call float @dx.op.binary.f32(i32 35, float %5842, float %5849)  ; FMax(a,b)
  %5852 = call float @dx.op.binary.f32(i32 36, float %5851, float %5850)  ; FMin(a,b)
  %5853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5854 = extractvalue %dx.types.CBufRet.f32 %5853, 1
  %5855 = extractvalue %dx.types.CBufRet.f32 %5853, 2
  %5856 = extractvalue %dx.types.CBufRet.f32 %5853, 0
  %5857 = fmul fast float %5854, %5852
  %5858 = fadd fast float %5856, %5857
  %5859 = fadd fast float %5856, %5855
  %5860 = fsub fast float %5854, %5855
  %5861 = fadd fast float %5860, %5856
  %5862 = call float @dx.op.binary.f32(i32 35, float %5858, float %5859)  ; FMax(a,b)
  %5863 = call float @dx.op.binary.f32(i32 36, float %5862, float %5861)  ; FMin(a,b)
  %5864 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %5801, float %5802, float %5863, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5865 = extractvalue %dx.types.ResRet.f32 %5864, 0
  %5866 = extractvalue %dx.types.ResRet.f32 %5864, 1
  %5867 = extractvalue %dx.types.ResRet.f32 %5864, 2
  %5868 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5869 = extractvalue %dx.types.CBufRet.i32 %5868, 0
  %5870 = extractvalue %dx.types.CBufRet.i32 %5868, 1
  %5871 = uitofp i32 %5869 to float
  %5872 = uitofp i32 %5870 to float
  %5873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5874 = extractvalue %dx.types.CBufRet.f32 %5873, 0
  %5875 = extractvalue %dx.types.CBufRet.f32 %5873, 1
  %5876 = fmul fast float %5871, %5801
  %5877 = fmul fast float %5872, %5802
  %5878 = fadd fast float %5876, -5.000000e-01
  %5879 = fadd fast float %5877, -5.000000e-01
  %5880 = call float @dx.op.unary.f32(i32 22, float %5878)  ; Frc(value)
  %5881 = call float @dx.op.unary.f32(i32 22, float %5879)  ; Frc(value)
  %5882 = fmul fast float %5880, %5880
  %5883 = fmul fast float %5882, %5880
  %5884 = fsub fast float 3.000000e+00, %5880
  %5885 = fmul fast float %5882, %5884
  %5886 = fmul fast float %5880, 3.000000e+00
  %5887 = fmul fast float %5883, 3.000000e+00
  %5888 = fmul fast float %5882, 6.000000e+00
  %5889 = fsub fast float %5887, %5888
  %5890 = fadd fast float %5889, 4.000000e+00
  %5891 = fmul fast float %5890, 0x3FC5555560000000
  %5892 = fmul fast float %5883, -3.000000e+00
  %5893 = fadd fast float %5882, %5880
  %5894 = fmul fast float %5893, 3.000000e+00
  %5895 = fadd fast float %5892, 1.000000e+00
  %5896 = fadd fast float %5895, %5894
  %5897 = fmul fast float %5883, 0x3FC5555560000000
  %5898 = fmul fast float %5881, %5881
  %5899 = fmul fast float %5898, %5881
  %5900 = fsub fast float 3.000000e+00, %5881
  %5901 = fmul fast float %5898, %5900
  %5902 = fmul fast float %5881, 3.000000e+00
  %5903 = fmul fast float %5899, 3.000000e+00
  %5904 = fmul fast float %5898, 6.000000e+00
  %5905 = fsub fast float %5903, %5904
  %5906 = fadd fast float %5905, 4.000000e+00
  %5907 = fmul fast float %5906, 0x3FC5555560000000
  %5908 = fmul fast float %5899, -3.000000e+00
  %5909 = fadd fast float %5898, %5881
  %5910 = fmul fast float %5909, 3.000000e+00
  %5911 = fadd fast float %5908, 1.000000e+00
  %5912 = fadd fast float %5911, %5910
  %5913 = fmul fast float %5899, 0x3FC5555560000000
  %5914 = fadd fast float %5880, 1.000000e+00
  %5915 = fsub fast float 1.000000e+00, %5886
  %5916 = fadd fast float %5915, %5885
  %5917 = fadd fast float %5916, %5890
  %5918 = fmul fast float %5917, 0x3FC5555560000000
  %5919 = fdiv fast float %5891, %5918
  %5920 = fsub fast float %5914, %5919
  %5921 = fsub fast float 1.000000e+00, %5880
  %5922 = fadd fast float %5896, %5883
  %5923 = fmul fast float %5922, 0x3FC5555560000000
  %5924 = fdiv fast float %5897, %5923
  %5925 = fadd fast float %5921, %5924
  %5926 = fadd fast float %5881, 1.000000e+00
  %5927 = fsub fast float 1.000000e+00, %5902
  %5928 = fadd fast float %5927, %5901
  %5929 = fadd fast float %5928, %5906
  %5930 = fmul fast float %5929, 0x3FC5555560000000
  %5931 = fdiv fast float %5907, %5930
  %5932 = fsub fast float %5926, %5931
  %5933 = fsub fast float 1.000000e+00, %5881
  %5934 = fadd fast float %5912, %5899
  %5935 = fmul fast float %5934, 0x3FC5555560000000
  %5936 = fdiv fast float %5913, %5935
  %5937 = fadd fast float %5936, %5933
  %5938 = fmul fast float %5920, %5874
  %5939 = fsub fast float %5801, %5938
  %5940 = fmul fast float %5925, %5874
  %5941 = fadd fast float %5940, %5801
  %5942 = fmul fast float %5937, %5875
  %5943 = fadd fast float %5942, %5802
  %5944 = fmul fast float %5932, %5875
  %5945 = fsub fast float %5802, %5944
  %5946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %5939, float %5945, float %5863, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5947 = extractvalue %dx.types.ResRet.f32 %5946, 0
  %5948 = extractvalue %dx.types.ResRet.f32 %5946, 1
  %5949 = extractvalue %dx.types.ResRet.f32 %5946, 2
  %5950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %5941, float %5945, float %5863, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5951 = extractvalue %dx.types.ResRet.f32 %5950, 0
  %5952 = extractvalue %dx.types.ResRet.f32 %5950, 1
  %5953 = extractvalue %dx.types.ResRet.f32 %5950, 2
  %5954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %5939, float %5943, float %5863, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5955 = extractvalue %dx.types.ResRet.f32 %5954, 0
  %5956 = extractvalue %dx.types.ResRet.f32 %5954, 1
  %5957 = extractvalue %dx.types.ResRet.f32 %5954, 2
  %5958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %5941, float %5943, float %5863, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5959 = extractvalue %dx.types.ResRet.f32 %5958, 0
  %5960 = extractvalue %dx.types.ResRet.f32 %5958, 1
  %5961 = extractvalue %dx.types.ResRet.f32 %5958, 2
  %5962 = fsub fast float %5955, %5947
  %5963 = fsub fast float %5956, %5948
  %5964 = fsub fast float %5957, %5949
  %5965 = fmul fast float %5962, %5935
  %5966 = fmul fast float %5963, %5935
  %5967 = fmul fast float %5964, %5935
  %5968 = fadd fast float %5965, %5947
  %5969 = fadd fast float %5966, %5948
  %5970 = fadd fast float %5967, %5949
  %5971 = fsub fast float %5959, %5951
  %5972 = fsub fast float %5960, %5952
  %5973 = fsub fast float %5961, %5953
  %5974 = fmul fast float %5971, %5935
  %5975 = fmul fast float %5972, %5935
  %5976 = fmul fast float %5973, %5935
  %5977 = fsub fast float %5951, %5968
  %5978 = fadd fast float %5977, %5974
  %5979 = fsub fast float %5952, %5969
  %5980 = fadd fast float %5979, %5975
  %5981 = fsub fast float %5953, %5970
  %5982 = fadd fast float %5981, %5976
  %5983 = fmul fast float %5978, %5923
  %5984 = fmul fast float %5980, %5923
  %5985 = fmul fast float %5982, %5923
  %5986 = fadd fast float %5983, %5968
  %5987 = fadd fast float %5984, %5969
  %5988 = fadd fast float %5985, %5970
  %5989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5990 = extractvalue %dx.types.CBufRet.f32 %5989, 1
  %5991 = fmul fast float %5986, %5990
  %5992 = fmul fast float %5987, %5990
  %5993 = fmul fast float %5988, %5990
  br label %5994

; <label>:5994                                    ; preds = %5826, %5795
  %5995 = phi float [ %5865, %5826 ], [ 1.000000e+00, %5795 ]
  %5996 = phi float [ %5866, %5826 ], [ 1.000000e+00, %5795 ]
  %5997 = phi float [ %5867, %5826 ], [ 1.000000e+00, %5795 ]
  %5998 = phi float [ %5991, %5826 ], [ 0.000000e+00, %5795 ]
  %5999 = phi float [ %5992, %5826 ], [ 0.000000e+00, %5795 ]
  %6000 = phi float [ %5993, %5826 ], [ 0.000000e+00, %5795 ]
  %6001 = fmul fast float %5998, %5772
  %6002 = fmul fast float %5999, %5772
  %6003 = fmul fast float %6000, %5772
  %6004 = call float @dx.op.dot3.f32(i32 55, float %5995, float %5996, float %5997, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6005 = call float @dx.op.dot3.f32(i32 55, float %6001, float %6002, float %6003, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6006 = select i1 %206, float %6004, float %5995
  %6007 = select i1 %206, float %6004, float %5996
  %6008 = select i1 %206, float 1.000000e+00, float %5997
  %6009 = select i1 %206, float %6005, float %6001
  %6010 = select i1 %206, float 0.000000e+00, float %6002
  %6011 = select i1 %206, float 0.000000e+00, float %6003
  %6012 = fmul fast float %6006, %5785
  %6013 = fmul fast float %6007, %5786
  %6014 = fmul fast float %6008, %5787
  %6015 = fadd fast float %6012, %6009
  %6016 = fadd fast float %6013, %6010
  %6017 = fadd fast float %6011, %6014
  %6018 = fmul fast float %6006, %5763
  %6019 = fmul fast float %6007, %5764
  %6020 = fmul fast float %6008, %5765
  %6021 = fmul fast float %115, %5797
  %6022 = fmul fast float %117, %5798
  %6023 = fsub fast float 1.000000e+00, %6021
  %6024 = fsub fast float 1.000000e+00, %6022
  %6025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6026 = extractvalue %dx.types.CBufRet.f32 %6025, 0
  %6027 = extractvalue %dx.types.CBufRet.f32 %6025, 1
  %6028 = extractvalue %dx.types.CBufRet.f32 %6025, 2
  %6029 = fmul fast float %6023, %6026
  %6030 = fmul fast float %6023, %6027
  %6031 = fmul fast float %6023, %6028
  %6032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6033 = extractvalue %dx.types.CBufRet.f32 %6032, 0
  %6034 = extractvalue %dx.types.CBufRet.f32 %6032, 1
  %6035 = extractvalue %dx.types.CBufRet.f32 %6032, 2
  %6036 = fmul fast float %6024, %6033
  %6037 = fmul fast float %6024, %6034
  %6038 = fmul fast float %6024, %6035
  %6039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6040 = extractvalue %dx.types.CBufRet.f32 %6039, 0
  %6041 = extractvalue %dx.types.CBufRet.f32 %6039, 1
  %6042 = extractvalue %dx.types.CBufRet.f32 %6039, 2
  %6043 = fadd fast float %6036, %6040
  %6044 = fadd fast float %6043, %6029
  %6045 = fadd fast float %6037, %6041
  %6046 = fadd fast float %6045, %6030
  %6047 = fadd fast float %6038, %6042
  %6048 = fadd fast float %6047, %6031
  %6049 = fmul fast float %6044, %167
  %6050 = fmul fast float %6046, %167
  %6051 = fmul fast float %6048, %167
  br label %6052

; <label>:6052                                    ; preds = %5994, %5762
  %6053 = phi float [ %6049, %5994 ], [ %145, %5762 ]
  %6054 = phi float [ %6050, %5994 ], [ %146, %5762 ]
  %6055 = phi float [ %6051, %5994 ], [ %147, %5762 ]
  %6056 = phi float [ %167, %5994 ], [ %73, %5762 ]
  %6057 = phi float [ %6015, %5994 ], [ %5785, %5762 ]
  %6058 = phi float [ %6016, %5994 ], [ %5786, %5762 ]
  %6059 = phi float [ %6017, %5994 ], [ %5787, %5762 ]
  %6060 = phi float [ %6018, %5994 ], [ %5763, %5762 ]
  %6061 = phi float [ %6019, %5994 ], [ %5764, %5762 ]
  %6062 = phi float [ %6020, %5994 ], [ %5765, %5762 ]
  %6063 = phi float [ %5995, %5994 ], [ 1.000000e+00, %5762 ]
  br i1 %5794, label %7218, label %6064

; <label>:6064                                    ; preds = %6052
  %6065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6066 = extractvalue %dx.types.CBufRet.f32 %6065, 0
  %6067 = extractvalue %dx.types.CBufRet.f32 %6065, 1
  %6068 = extractvalue %dx.types.CBufRet.f32 %6065, 2
  %6069 = extractvalue %dx.types.CBufRet.f32 %6065, 3
  %6070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6071 = extractvalue %dx.types.CBufRet.f32 %6070, 0
  %6072 = extractvalue %dx.types.CBufRet.f32 %6070, 1
  %6073 = extractvalue %dx.types.CBufRet.f32 %6070, 2
  %6074 = extractvalue %dx.types.CBufRet.f32 %6070, 3
  %6075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6076 = extractvalue %dx.types.CBufRet.f32 %6075, 0
  %6077 = extractvalue %dx.types.CBufRet.f32 %6075, 1
  %6078 = extractvalue %dx.types.CBufRet.f32 %6075, 2
  %6079 = extractvalue %dx.types.CBufRet.f32 %6075, 3
  %6080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6081 = extractvalue %dx.types.CBufRet.f32 %6080, 0
  %6082 = extractvalue %dx.types.CBufRet.f32 %6080, 1
  %6083 = extractvalue %dx.types.CBufRet.f32 %6080, 2
  %6084 = extractvalue %dx.types.CBufRet.f32 %6080, 3
  %6085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6086 = extractvalue %dx.types.CBufRet.f32 %6085, 3
  %6087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6088 = extractvalue %dx.types.CBufRet.f32 %6087, 3
  %6089 = extractvalue %dx.types.CBufRet.f32 %6087, 0
  %6090 = extractvalue %dx.types.CBufRet.f32 %6087, 1
  %6091 = extractvalue %dx.types.CBufRet.f32 %6087, 2
  %6092 = fcmp fast olt float %6091, -5.000000e-01
  %6093 = call float @dx.op.dot3.f32(i32 55, float %6053, float %6054, float %6055, float %6053, float %6054, float %6055)  ; Dot3(ax,ay,az,bx,by,bz)
  %6094 = call float @dx.op.unary.f32(i32 25, float %6093)  ; Rsqrt(value)
  %6095 = fmul fast float %6094, %6093
  %6096 = fmul fast float %6094, %6053
  %6097 = fmul fast float %6094, %6054
  %6098 = fmul fast float %6094, %6055
  %6099 = fadd fast float %6095, %6069
  %6100 = call float @dx.op.dot3.f32(i32 55, float %6096, float %6097, float %6098, float %6066, float %6067, float %6068)  ; Dot3(ax,ay,az,bx,by,bz)
  %6101 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6102 = extractvalue %dx.types.CBufRet.i32 %6101, 1
  %6103 = and i32 %6102, 1
  %6104 = icmp ne i32 %6103, 0
  %6105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6106 = extractvalue %dx.types.CBufRet.f32 %6105, 2
  %6107 = fcmp fast ogt float %6106, 0.000000e+00
  %6108 = and i1 %6104, %6107
  br i1 %6108, label %6109, label %6515, !dx.controlflow.hints !102

; <label>:6109                                    ; preds = %6064
  %6110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6111 = extractvalue %dx.types.CBufRet.f32 %6110, 3
  %6112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6113 = extractvalue %dx.types.CBufRet.f32 %6112, 2
  %6114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6115 = extractvalue %dx.types.CBufRet.f32 %6114, 2
  %6116 = fsub fast float %6113, %6115
  %6117 = and i32 %6102, 2
  %6118 = extractvalue %dx.types.CBufRet.i32 %6101, 0
  %6119 = call i32 @dx.op.binary.i32(i32 40, i32 %6118, i32 3)  ; UMin(a,b)
  %6120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6121 = extractvalue %dx.types.CBufRet.f32 %6120, 0
  %6122 = extractvalue %dx.types.CBufRet.f32 %6120, 1
  %6123 = extractvalue %dx.types.CBufRet.f32 %6114, 0
  %6124 = extractvalue %dx.types.CBufRet.f32 %6114, 1
  %6125 = fsub fast float %6121, %6123
  %6126 = fsub fast float %6122, %6124
  %6127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6128 = extractvalue %dx.types.CBufRet.f32 %6127, 0
  %6129 = fcmp fast ogt float %6128, 0.000000e+00
  %6130 = fsub fast float -0.000000e+00, %6125
  %6131 = fsub fast float -0.000000e+00, %6126
  %6132 = call float @dx.op.dot2.f32(i32 54, float %6096, float %6097, float %6096, float %6097)  ; Dot2(ax,ay,bx,by)
  %6133 = call float @dx.op.dot2.f32(i32 54, float %6096, float %6097, float %6130, float %6131)  ; Dot2(ax,ay,bx,by)
  %6134 = fmul fast float %6133, 2.000000e+00
  %6135 = call float @dx.op.dot2.f32(i32 54, float %6130, float %6131, float %6130, float %6131)  ; Dot2(ax,ay,bx,by)
  %6136 = fmul fast float %6128, %6128
  %6137 = fsub fast float %6135, %6136
  %6138 = fmul fast float %6134, %6134
  %6139 = fmul fast float %6132, 4.000000e+00
  %6140 = fmul fast float %6139, %6137
  %6141 = fsub fast float %6138, %6140
  %6142 = fcmp fast ogt float %6141, 0.000000e+00
  br i1 %6142, label %6143, label %6158

; <label>:6143                                    ; preds = %6109
  %6144 = fcmp fast ogt float %6134, 0.000000e+00
  %6145 = call float @dx.op.unary.f32(i32 24, float %6141)  ; Sqrt(value)
  %6146 = fsub fast float -0.000000e+00, %6145
  %6147 = select i1 %6144, float %6145, float %6146
  %6148 = fadd fast float %6147, %6134
  %6149 = fmul float %6148, -5.000000e-01
  %6150 = fdiv fast float %6149, %6132
  %6151 = call float @dx.op.binary.f32(i32 35, float %6150, float 0.000000e+00)  ; FMax(a,b)
  %6152 = call float @dx.op.binary.f32(i32 36, float %6095, float %6151)  ; FMin(a,b)
  %6153 = fdiv fast float %6137, %6149
  %6154 = call float @dx.op.binary.f32(i32 35, float %6153, float 0.000000e+00)  ; FMax(a,b)
  %6155 = call float @dx.op.binary.f32(i32 36, float %6095, float %6154)  ; FMin(a,b)
  %6156 = call float @dx.op.binary.f32(i32 36, float %6152, float %6155)  ; FMin(a,b)
  %6157 = call float @dx.op.binary.f32(i32 35, float %6152, float %6155)  ; FMax(a,b)
  br label %6158

; <label>:6158                                    ; preds = %6143, %6109
  %6159 = phi float [ %6157, %6143 ], [ -1.000000e+00, %6109 ]
  %6160 = phi float [ %6156, %6143 ], [ -1.000000e+00, %6109 ]
  %6161 = phi i1 [ true, %6143 ], [ false, %6109 ]
  %6162 = and i1 %6129, %6161
  br i1 %6162, label %6163, label %6165

; <label>:6163                                    ; preds = %6158
  %6164 = fcmp fast oeq float %6160, %6159
  br i1 %6164, label %6468, label %6166

; <label>:6165                                    ; preds = %6158
  br i1 %6129, label %6468, label %6166

; <label>:6166                                    ; preds = %6165, %6163
  %6167 = phi float [ %6095, %6165 ], [ %6159, %6163 ]
  %6168 = phi float [ 0.000000e+00, %6165 ], [ %6160, %6163 ]
  %6169 = icmp ne i32 %6117, 0
  %6170 = fmul fast float %6167, %6098
  %6171 = fadd fast float %6170, %6111
  %6172 = fmul fast float %6171, %6167
  %6173 = select i1 %6169, float 0.000000e+00, float %6172
  %6174 = fcmp fast oeq float %6098, 0.000000e+00
  %6175 = fdiv fast float %6116, %6098
  %6176 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6175)  ; FMax(a,b)
  %6177 = select i1 %6174, float %6167, float %6176
  %6178 = call float @dx.op.binary.f32(i32 36, float %6167, float %6177)  ; FMin(a,b)
  %6179 = fcmp fast ogt float %6098, 0.000000e+00
  %6180 = fcmp fast olt float %6116, 0.000000e+00
  br i1 %6179, label %6181, label %6238

; <label>:6181                                    ; preds = %6166
  %6182 = icmp eq i32 %6117, 0
  br i1 %6180, label %6183, label %6227

; <label>:6183                                    ; preds = %6181
  %6184 = select i1 %6182, float %6167, float 0.000000e+00
  %6185 = fsub fast float -0.000000e+00, %6184
  %6186 = call float @dx.op.unary.f32(i32 6, float %6185)  ; FAbs(value)
  %6187 = fmul fast float %6184, %6098
  %6188 = fadd fast float %6187, %6111
  %6189 = fmul fast float %6186, %6188
  %6190 = fsub fast float %6173, %6189
  %6191 = fsub fast float %6167, %6186
  %6192 = select i1 %6182, float %6191, float 0.000000e+00
  %6193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6194 = extractvalue %dx.types.CBufRet.f32 %6193, 0
  %6195 = extractvalue %dx.types.CBufRet.f32 %6193, 1
  %6196 = extractvalue %dx.types.CBufRet.f32 %6193, 2
  %6197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6198 = extractvalue %dx.types.CBufRet.f32 %6197, 0
  %6199 = extractvalue %dx.types.CBufRet.f32 %6197, 1
  %6200 = extractvalue %dx.types.CBufRet.f32 %6197, 2
  %6201 = extractvalue %dx.types.CBufRet.f32 %6197, 3
  %6202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6203 = extractvalue %dx.types.CBufRet.f32 %6202, 3
  %6204 = call float @dx.op.binary.f32(i32 36, float %6190, float %6203)  ; FMin(a,b)
  %6205 = fmul fast float %6201, %6192
  %6206 = call float @dx.op.unary.f32(i32 7, float %6205)  ; Saturate(value)
  %6207 = fsub fast float %6198, %6194
  %6208 = fsub fast float %6199, %6195
  %6209 = fsub fast float %6200, %6196
  %6210 = fmul fast float %6206, %6207
  %6211 = fmul fast float %6206, %6208
  %6212 = fmul fast float %6206, %6209
  %6213 = fadd fast float %6210, %6194
  %6214 = fadd fast float %6211, %6195
  %6215 = fadd fast float %6212, %6196
  %6216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6217 = extractvalue %dx.types.CBufRet.f32 %6216, 0
  %6218 = extractvalue %dx.types.CBufRet.f32 %6216, 1
  %6219 = fadd fast float %6218, %6217
  %6220 = call float @dx.op.unary.f32(i32 7, float %6219)  ; Saturate(value)
  %6221 = extractvalue %dx.types.CBufRet.f32 %6216, 2
  %6222 = extractvalue %dx.types.CBufRet.f32 %6216, 3
  %6223 = fadd fast float %6222, %6221
  %6224 = call float @dx.op.unary.f32(i32 7, float %6223)  ; Saturate(value)
  %6225 = fmul fast float %6220, %6204
  %6226 = fmul fast float %6225, %6224
  br label %6468

; <label>:6227                                    ; preds = %6181
  br i1 %6182, label %6228, label %6249

; <label>:6228                                    ; preds = %6227
  %6229 = call float @dx.op.binary.f32(i32 36, float %6178, float %6168)  ; FMin(a,b)
  %6230 = fsub fast float %6178, %6229
  %6231 = fsub fast float %6230, %6167
  %6232 = call float @dx.op.unary.f32(i32 6, float %6231)  ; FAbs(value)
  %6233 = fadd fast float %6230, %6167
  %6234 = fmul fast float %6233, %6098
  %6235 = fadd fast float %6234, %6111
  %6236 = fmul fast float %6235, %6232
  %6237 = fsub fast float %6173, %6236
  br label %6249

; <label>:6238                                    ; preds = %6166
  br i1 %6180, label %6239, label %6249

; <label>:6239                                    ; preds = %6238
  %6240 = call float @dx.op.binary.f32(i32 35, float %6168, float %6178)  ; FMax(a,b)
  %6241 = icmp eq i32 %6117, 0
  %6242 = select i1 %6241, float %6178, float 0.000000e+00
  %6243 = fsub fast float -0.000000e+00, %6242
  %6244 = call float @dx.op.unary.f32(i32 6, float %6243)  ; FAbs(value)
  %6245 = fmul fast float %6242, %6098
  %6246 = fadd fast float %6245, %6111
  %6247 = fmul fast float %6244, %6246
  %6248 = fsub fast float %6173, %6247
  br label %6249

; <label>:6249                                    ; preds = %6239, %6238, %6228, %6227
  %6250 = phi float [ %6168, %6227 ], [ %6168, %6228 ], [ %6240, %6239 ], [ %6168, %6238 ]
  %6251 = phi float [ 0.000000e+00, %6227 ], [ %6232, %6228 ], [ %6244, %6239 ], [ 0.000000e+00, %6238 ]
  %6252 = phi float [ %6173, %6227 ], [ %6237, %6228 ], [ %6248, %6239 ], [ %6173, %6238 ]
  %6253 = phi float [ %6178, %6227 ], [ %6178, %6228 ], [ %6167, %6239 ], [ %6167, %6238 ]
  %6254 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 0
  store float -1.000000e+00, float* %6254, align 4, !tbaa !103, !noalias !105
  %6255 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 1
  store float -1.000000e+00, float* %6255, align 4, !tbaa !103, !noalias !105
  %6256 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 2
  store float -1.000000e+00, float* %6256, align 4, !tbaa !103, !noalias !105
  %6257 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 0
  store float -1.000000e+00, float* %6257, align 4, !tbaa !103, !noalias !105
  %6258 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 1
  store float -1.000000e+00, float* %6258, align 4, !tbaa !103, !noalias !105
  %6259 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 2
  store float -1.000000e+00, float* %6259, align 4, !tbaa !103, !noalias !105
  %6260 = icmp sgt i32 %6119, 0
  br i1 %6260, label %6261, label %6322

; <label>:6261                                    ; preds = %6249
  br label %6262

; <label>:6262                                    ; preds = %6311, %6261
  %6263 = phi i32 [ %6312, %6311 ], [ 0, %6261 ]
  %6264 = phi i32 [ %6313, %6311 ], [ 0, %6261 ]
  %6265 = add nuw i32 %6264, 171
  %6266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %6265)  ; CBufferLoadLegacy(handle,regIndex)
  %6267 = extractvalue %dx.types.CBufRet.f32 %6266, 0
  %6268 = extractvalue %dx.types.CBufRet.f32 %6266, 1
  %6269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6270 = extractvalue %dx.types.CBufRet.f32 %6269, 0
  %6271 = extractvalue %dx.types.CBufRet.f32 %6269, 1
  %6272 = fsub fast float %6267, %6270
  %6273 = fsub fast float %6268, %6271
  %6274 = extractvalue %dx.types.CBufRet.f32 %6266, 2
  %6275 = fsub fast float -0.000000e+00, %6272
  %6276 = fsub fast float -0.000000e+00, %6273
  %6277 = call float @dx.op.dot2.f32(i32 54, float %6096, float %6097, float %6275, float %6276)  ; Dot2(ax,ay,bx,by)
  %6278 = fmul fast float %6277, 2.000000e+00
  %6279 = call float @dx.op.dot2.f32(i32 54, float %6275, float %6276, float %6275, float %6276)  ; Dot2(ax,ay,bx,by)
  %6280 = fmul fast float %6274, %6274
  %6281 = fsub fast float %6279, %6280
  %6282 = fmul fast float %6278, %6278
  %6283 = fmul fast float %6139, %6281
  %6284 = fsub fast float %6282, %6283
  %6285 = fcmp fast ogt float %6284, 0.000000e+00
  br i1 %6285, label %6286, label %6301

; <label>:6286                                    ; preds = %6262
  %6287 = fcmp fast ogt float %6278, 0.000000e+00
  %6288 = call float @dx.op.unary.f32(i32 24, float %6284)  ; Sqrt(value)
  %6289 = fsub fast float -0.000000e+00, %6288
  %6290 = select i1 %6287, float %6288, float %6289
  %6291 = fadd fast float %6290, %6278
  %6292 = fmul float %6291, -5.000000e-01
  %6293 = fdiv fast float %6292, %6132
  %6294 = call float @dx.op.binary.f32(i32 35, float %6293, float 0.000000e+00)  ; FMax(a,b)
  %6295 = call float @dx.op.binary.f32(i32 36, float %6167, float %6294)  ; FMin(a,b)
  %6296 = fdiv fast float %6281, %6292
  %6297 = call float @dx.op.binary.f32(i32 35, float %6296, float 0.000000e+00)  ; FMax(a,b)
  %6298 = call float @dx.op.binary.f32(i32 36, float %6167, float %6297)  ; FMin(a,b)
  %6299 = call float @dx.op.binary.f32(i32 36, float %6295, float %6298)  ; FMin(a,b)
  %6300 = call float @dx.op.binary.f32(i32 35, float %6295, float %6298)  ; FMax(a,b)
  br label %6301

; <label>:6301                                    ; preds = %6286, %6262
  %6302 = phi float [ %6300, %6286 ], [ -1.000000e+00, %6262 ]
  %6303 = phi float [ %6299, %6286 ], [ -1.000000e+00, %6262 ]
  %6304 = phi i1 [ true, %6286 ], [ false, %6262 ]
  br i1 %6304, label %6305, label %6311

; <label>:6305                                    ; preds = %6301
  %6306 = call float @dx.op.binary.f32(i32 35, float %6250, float %6303)  ; FMax(a,b)
  %6307 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %6264
  store float %6306, float* %6307, align 4, !tbaa !103, !noalias !105
  %6308 = call float @dx.op.binary.f32(i32 35, float %6250, float %6302)  ; FMax(a,b)
  %6309 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 %6264
  store float %6308, float* %6309, align 4, !tbaa !103, !noalias !105
  %6310 = add nsw i32 %6263, 1
  br label %6311

; <label>:6311                                    ; preds = %6305, %6301
  %6312 = phi i32 [ %6310, %6305 ], [ %6263, %6301 ]
  %6313 = add nuw nsw i32 %6264, 1
  %6314 = icmp eq i32 %6313, %6119
  br i1 %6314, label %6315, label %6262

; <label>:6315                                    ; preds = %6311
  %6316 = load float, float* %6256, align 4, !tbaa !103, !alias.scope !121, !noalias !124
  %6317 = load float, float* %6255, align 4, !tbaa !103, !alias.scope !127, !noalias !128
  %6318 = load float, float* %6254, align 4, !tbaa !103, !alias.scope !129, !noalias !130
  %6319 = load float, float* %6259, align 4, !tbaa !103, !alias.scope !131, !noalias !134
  %6320 = load float, float* %6258, align 4, !tbaa !103, !alias.scope !137, !noalias !138
  %6321 = load float, float* %6257, align 4, !tbaa !103, !alias.scope !139, !noalias !140
  br label %6322

; <label>:6322                                    ; preds = %6315, %6249
  %6323 = phi float [ -1.000000e+00, %6249 ], [ %6321, %6315 ]
  %6324 = phi float [ -1.000000e+00, %6249 ], [ %6320, %6315 ]
  %6325 = phi float [ -1.000000e+00, %6249 ], [ %6319, %6315 ]
  %6326 = phi float [ -1.000000e+00, %6249 ], [ %6318, %6315 ]
  %6327 = phi float [ -1.000000e+00, %6249 ], [ %6317, %6315 ]
  %6328 = phi float [ -1.000000e+00, %6249 ], [ %6316, %6315 ]
  %6329 = phi i32 [ 0, %6249 ], [ %6312, %6315 ]
  %6330 = call float @dx.op.binary.f32(i32 36, float %6327, float %6328)  ; FMin(a,b)
  %6331 = call float @dx.op.binary.f32(i32 36, float %6326, float %6330)  ; FMin(a,b)
  %6332 = call float @dx.op.binary.f32(i32 35, float %6326, float %6327)  ; FMax(a,b)
  %6333 = call float @dx.op.binary.f32(i32 36, float %6332, float %6328)  ; FMin(a,b)
  %6334 = call float @dx.op.binary.f32(i32 36, float %6326, float %6327)  ; FMin(a,b)
  %6335 = call float @dx.op.binary.f32(i32 35, float %6334, float %6333)  ; FMax(a,b)
  %6336 = call float @dx.op.binary.f32(i32 35, float %6327, float %6328)  ; FMax(a,b)
  %6337 = call float @dx.op.binary.f32(i32 35, float %6326, float %6336)  ; FMax(a,b)
  store float %6331, float* %6254, align 4, !tbaa !103, !alias.scope !129, !noalias !130
  store float %6335, float* %6255, align 4, !tbaa !103, !alias.scope !127, !noalias !128
  store float %6337, float* %6256, align 4, !tbaa !103, !alias.scope !121, !noalias !124
  %6338 = call float @dx.op.binary.f32(i32 36, float %6324, float %6325)  ; FMin(a,b)
  %6339 = call float @dx.op.binary.f32(i32 36, float %6323, float %6338)  ; FMin(a,b)
  %6340 = call float @dx.op.binary.f32(i32 35, float %6323, float %6324)  ; FMax(a,b)
  %6341 = call float @dx.op.binary.f32(i32 36, float %6340, float %6325)  ; FMin(a,b)
  %6342 = call float @dx.op.binary.f32(i32 36, float %6323, float %6324)  ; FMin(a,b)
  %6343 = call float @dx.op.binary.f32(i32 35, float %6342, float %6341)  ; FMax(a,b)
  %6344 = call float @dx.op.binary.f32(i32 35, float %6324, float %6325)  ; FMax(a,b)
  %6345 = call float @dx.op.binary.f32(i32 35, float %6323, float %6344)  ; FMax(a,b)
  store float %6339, float* %6257, align 4, !tbaa !103, !alias.scope !139, !noalias !140
  store float %6343, float* %6258, align 4, !tbaa !103, !alias.scope !137, !noalias !138
  store float %6345, float* %6259, align 4, !tbaa !103, !alias.scope !131, !noalias !134
  %6346 = sub nsw i32 3, %6329
  %6347 = icmp sgt i32 %6346, 2
  br i1 %6347, label %6348, label %6386

; <label>:6348                                    ; preds = %6322
  %6349 = icmp eq i32 %6117, 0
  %6350 = fsub fast float %6167, %6251
  %6351 = select i1 %6349, float %6350, float %6251
  %6352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6353 = extractvalue %dx.types.CBufRet.f32 %6352, 0
  %6354 = extractvalue %dx.types.CBufRet.f32 %6352, 1
  %6355 = extractvalue %dx.types.CBufRet.f32 %6352, 2
  %6356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6357 = extractvalue %dx.types.CBufRet.f32 %6356, 0
  %6358 = extractvalue %dx.types.CBufRet.f32 %6356, 1
  %6359 = extractvalue %dx.types.CBufRet.f32 %6356, 2
  %6360 = extractvalue %dx.types.CBufRet.f32 %6356, 3
  %6361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6362 = extractvalue %dx.types.CBufRet.f32 %6361, 3
  %6363 = call float @dx.op.binary.f32(i32 36, float %6252, float %6362)  ; FMin(a,b)
  %6364 = fmul fast float %6360, %6351
  %6365 = call float @dx.op.unary.f32(i32 7, float %6364)  ; Saturate(value)
  %6366 = fsub fast float %6357, %6353
  %6367 = fsub fast float %6358, %6354
  %6368 = fsub fast float %6359, %6355
  %6369 = fmul fast float %6365, %6366
  %6370 = fmul fast float %6365, %6367
  %6371 = fmul fast float %6365, %6368
  %6372 = fadd fast float %6369, %6353
  %6373 = fadd fast float %6370, %6354
  %6374 = fadd fast float %6371, %6355
  %6375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6376 = extractvalue %dx.types.CBufRet.f32 %6375, 0
  %6377 = extractvalue %dx.types.CBufRet.f32 %6375, 1
  %6378 = fadd fast float %6377, %6376
  %6379 = call float @dx.op.unary.f32(i32 7, float %6378)  ; Saturate(value)
  %6380 = extractvalue %dx.types.CBufRet.f32 %6375, 2
  %6381 = extractvalue %dx.types.CBufRet.f32 %6375, 3
  %6382 = fadd fast float %6381, %6380
  %6383 = call float @dx.op.unary.f32(i32 7, float %6382)  ; Saturate(value)
  %6384 = fmul fast float %6379, %6363
  %6385 = fmul fast float %6384, %6383
  br label %6468

; <label>:6386                                    ; preds = %6322
  %6387 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %6346
  %6388 = load float, float* %6387, align 4, !tbaa !103, !noalias !105
  %6389 = fcmp fast olt float %6388, %6253
  %6390 = icmp sgt i32 %6329, 0
  %6391 = and i1 %6390, %6389
  br i1 %6391, label %6392, label %6429

; <label>:6392                                    ; preds = %6386
  br label %6393

; <label>:6393                                    ; preds = %6422, %6392
  %6394 = phi float [ %6423, %6422 ], [ %6251, %6392 ]
  %6395 = phi float [ %6424, %6422 ], [ %6252, %6392 ]
  %6396 = phi float [ %6404, %6422 ], [ %6388, %6392 ]
  %6397 = phi i32 [ %6401, %6422 ], [ %6346, %6392 ]
  %6398 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 %6397
  %6399 = load float, float* %6398, align 4, !tbaa !103, !noalias !105
  %6400 = icmp slt i32 %6397, 2
  %6401 = add nsw i32 %6397, 1
  %6402 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %6401
  %6403 = load float, float* %6402, align 4, !tbaa !103, !noalias !105
  %6404 = select i1 %6400, float %6403, float %6167
  %6405 = call float @dx.op.binary.f32(i32 36, float %6404, float %6399)  ; FMin(a,b)
  %6406 = call float @dx.op.binary.f32(i32 36, float %6253, float %6405)  ; FMin(a,b)
  %6407 = icmp eq i32 %6117, 0
  %6408 = fadd fast float %6406, %6396
  %6409 = fmul fast float %6408, %6098
  %6410 = fadd fast float %6409, %6111
  br i1 %6407, label %6416, label %6411

; <label>:6411                                    ; preds = %6393
  %6412 = fsub fast float %6406, %6396
  %6413 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6412)  ; FMax(a,b)
  %6414 = fmul fast float %6413, %6410
  %6415 = fadd fast float %6414, %6395
  br label %6422

; <label>:6416                                    ; preds = %6393
  %6417 = fsub fast float %6396, %6406
  %6418 = call float @dx.op.unary.f32(i32 6, float %6417)  ; FAbs(value)
  %6419 = fadd fast float %6418, %6394
  %6420 = fmul fast float %6418, %6410
  %6421 = fsub fast float %6395, %6420
  br label %6422

; <label>:6422                                    ; preds = %6416, %6411
  %6423 = phi float [ %6413, %6411 ], [ %6419, %6416 ]
  %6424 = phi float [ %6415, %6411 ], [ %6421, %6416 ]
  %6425 = fcmp fast olt float %6404, %6253
  %6426 = icmp slt i32 %6401, 3
  %6427 = and i1 %6426, %6425
  br i1 %6427, label %6393, label %6428

; <label>:6428                                    ; preds = %6422
  br label %6429

; <label>:6429                                    ; preds = %6428, %6386
  %6430 = phi float [ %6251, %6386 ], [ %6423, %6428 ]
  %6431 = phi float [ %6252, %6386 ], [ %6424, %6428 ]
  %6432 = fsub fast float %6167, %6430
  %6433 = select i1 %6169, float %6430, float %6432
  %6434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6435 = extractvalue %dx.types.CBufRet.f32 %6434, 0
  %6436 = extractvalue %dx.types.CBufRet.f32 %6434, 1
  %6437 = extractvalue %dx.types.CBufRet.f32 %6434, 2
  %6438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6439 = extractvalue %dx.types.CBufRet.f32 %6438, 0
  %6440 = extractvalue %dx.types.CBufRet.f32 %6438, 1
  %6441 = extractvalue %dx.types.CBufRet.f32 %6438, 2
  %6442 = extractvalue %dx.types.CBufRet.f32 %6438, 3
  %6443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6444 = extractvalue %dx.types.CBufRet.f32 %6443, 3
  %6445 = call float @dx.op.binary.f32(i32 36, float %6431, float %6444)  ; FMin(a,b)
  %6446 = fmul fast float %6442, %6433
  %6447 = call float @dx.op.unary.f32(i32 7, float %6446)  ; Saturate(value)
  %6448 = fsub fast float %6439, %6435
  %6449 = fsub fast float %6440, %6436
  %6450 = fsub fast float %6441, %6437
  %6451 = fmul fast float %6447, %6448
  %6452 = fmul fast float %6447, %6449
  %6453 = fmul fast float %6447, %6450
  %6454 = fadd fast float %6451, %6435
  %6455 = fadd fast float %6452, %6436
  %6456 = fadd fast float %6453, %6437
  %6457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6458 = extractvalue %dx.types.CBufRet.f32 %6457, 0
  %6459 = extractvalue %dx.types.CBufRet.f32 %6457, 1
  %6460 = fadd fast float %6459, %6458
  %6461 = call float @dx.op.unary.f32(i32 7, float %6460)  ; Saturate(value)
  %6462 = extractvalue %dx.types.CBufRet.f32 %6457, 2
  %6463 = extractvalue %dx.types.CBufRet.f32 %6457, 3
  %6464 = fadd fast float %6463, %6462
  %6465 = call float @dx.op.unary.f32(i32 7, float %6464)  ; Saturate(value)
  %6466 = fmul fast float %6461, %6445
  %6467 = fmul fast float %6466, %6465
  br label %6468

; <label>:6468                                    ; preds = %6429, %6348, %6183, %6165, %6163
  %6469 = phi float [ %6192, %6183 ], [ %6351, %6348 ], [ %6433, %6429 ], [ 0.000000e+00, %6163 ], [ 0.000000e+00, %6165 ]
  %6470 = phi float [ %6226, %6183 ], [ %6385, %6348 ], [ %6467, %6429 ], [ 0.000000e+00, %6163 ], [ 0.000000e+00, %6165 ]
  %6471 = phi float [ %6213, %6183 ], [ %6372, %6348 ], [ %6454, %6429 ], [ 0.000000e+00, %6163 ], [ 0.000000e+00, %6165 ]
  %6472 = phi float [ %6214, %6183 ], [ %6373, %6348 ], [ %6455, %6429 ], [ 0.000000e+00, %6163 ], [ 0.000000e+00, %6165 ]
  %6473 = phi float [ %6215, %6183 ], [ %6374, %6348 ], [ %6456, %6429 ], [ 0.000000e+00, %6163 ], [ 0.000000e+00, %6165 ]
  %6474 = fmul fast float %6106, %6470
  %6475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6476 = extractvalue %dx.types.CBufRet.f32 %6475, 2
  %6477 = fsub fast float %6113, %6476
  %6478 = fcmp fast olt float %6474, -2.000000e+01
  %6479 = call float @dx.op.unary.f32(i32 21, float %6474)  ; Exp(value)
  %6480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6481 = extractvalue %dx.types.CBufRet.f32 %6480, 2
  %6482 = extractvalue %dx.types.CBufRet.f32 %6480, 3
  %6483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6484 = extractvalue %dx.types.CBufRet.f32 %6483, 2
  %6485 = fmul fast float %6482, %6477
  %6486 = call float @dx.op.unary.f32(i32 7, float %6485)  ; Saturate(value)
  %6487 = fsub fast float 1.000000e+00, %6486
  %6488 = fmul fast float %6098, 5.000000e-01
  %6489 = fadd fast float %6488, 5.000000e-01
  %6490 = call float @dx.op.unary.f32(i32 7, float %6489)  ; Saturate(value)
  %6491 = fsub fast float 1.000000e+00, %6490
  %6492 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6487)  ; FMax(a,b)
  %6493 = fdiv fast float %6491, %6492
  %6494 = fsub fast float %6477, %6055
  %6495 = call float @dx.op.unary.f32(i32 6, float %6494)  ; FAbs(value)
  %6496 = fmul fast float %6495, %6481
  %6497 = call float @dx.op.unary.f32(i32 7, float %6493)  ; Saturate(value)
  %6498 = fsub fast float 1.000000e+00, %6496
  %6499 = fmul fast float %6498, %6497
  %6500 = fadd fast float %6499, %6496
  %6501 = fmul fast float %6484, %6477
  %6502 = call float @dx.op.unary.f32(i32 7, float %6501)  ; Saturate(value)
  %6503 = fsub fast float 1.000000e+00, %6500
  %6504 = fmul fast float %6503, %6502
  %6505 = fadd fast float %6504, %6500
  %6506 = call float @dx.op.unary.f32(i32 7, float %6505)  ; Saturate(value)
  %6507 = fadd fast float %6479, -1.000000e+00
  %6508 = select i1 %6478, float -1.000000e+00, float %6507
  %6509 = fmul fast float %6506, %6508
  %6510 = fadd fast float %6509, 1.000000e+00
  %6511 = fsub fast float -0.000000e+00, %6509
  %6512 = fmul fast float %6471, %6511
  %6513 = fmul fast float %6472, %6511
  %6514 = fmul fast float %6473, %6511
  br label %6515

; <label>:6515                                    ; preds = %6468, %6064
  %6516 = phi float [ %6469, %6468 ], [ 0.000000e+00, %6064 ]
  %6517 = phi float [ %6510, %6468 ], [ 1.000000e+00, %6064 ]
  %6518 = phi float [ %6512, %6468 ], [ 0.000000e+00, %6064 ]
  %6519 = phi float [ %6513, %6468 ], [ 0.000000e+00, %6064 ]
  %6520 = phi float [ %6514, %6468 ], [ 0.000000e+00, %6064 ]
  %6521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6522 = extractvalue %dx.types.CBufRet.f32 %6521, 1
  %6523 = fsub fast float 1.000000e+00, %6517
  %6524 = fmul fast float %6523, %6099
  %6525 = fmul fast float %6524, %6522
  %6526 = fsub fast float %6099, %6525
  br i1 %6092, label %6527, label %6556, !dx.controlflow.hints !141

; <label>:6527                                    ; preds = %6515
  %6528 = fmul fast float %6100, %6089
  %6529 = fadd fast float %6528, %6090
  %6530 = call float @dx.op.unary.f32(i32 7, float %6529)  ; Saturate(value)
  %6531 = fmul fast float %6071, %6526
  %6532 = fsub fast float -0.000000e+00, %6531
  %6533 = fmul fast float %6072, %6526
  %6534 = fsub fast float -0.000000e+00, %6533
  %6535 = call float @dx.op.unary.f32(i32 21, float %6532)  ; Exp(value)
  %6536 = call float @dx.op.unary.f32(i32 21, float %6534)  ; Exp(value)
  %6537 = call float @dx.op.binary.f32(i32 35, float %6079, float %6535)  ; FMax(a,b)
  %6538 = call float @dx.op.binary.f32(i32 35, float %6079, float %6536)  ; FMax(a,b)
  %6539 = fsub fast float %6538, %6537
  %6540 = fmul fast float %6539, %6530
  %6541 = fadd fast float %6540, %6537
  %6542 = call float @dx.op.unary.f32(i32 7, float %6541)  ; Saturate(value)
  %6543 = fsub fast float %6076, %6081
  %6544 = fsub fast float %6077, %6082
  %6545 = fsub fast float %6078, %6083
  %6546 = fmul fast float %6530, %6543
  %6547 = fmul fast float %6530, %6544
  %6548 = fmul fast float %6530, %6545
  %6549 = fadd fast float %6546, %6081
  %6550 = fadd fast float %6547, %6082
  %6551 = fadd fast float %6548, %6083
  %6552 = fsub fast float 1.000000e+00, %6542
  %6553 = fmul fast float %6552, %6549
  %6554 = fmul fast float %6552, %6550
  %6555 = fmul fast float %6552, %6551
  br label %6615

; <label>:6556                                    ; preds = %6515
  %6557 = fmul fast float %6526, %6088
  %6558 = call float @dx.op.unary.f32(i32 7, float %6557)  ; Saturate(value)
  %6559 = fsub fast float 2.000000e+00, %6558
  %6560 = fmul fast float %6558, 9.921875e-01
  %6561 = fmul fast float %6560, %6559
  %6562 = fadd fast float %6561, 3.906250e-03
  %6563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %35, float %6562, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6564 = extractvalue %dx.types.ResRet.f32 %6563, 0
  %6565 = fsub fast float %6558, %6564
  %6566 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6565)  ; FMax(a,b)
  %6567 = fmul fast float %6074, %6055
  %6568 = call float @dx.op.unary.f32(i32 6, float %6567)  ; FAbs(value)
  %6569 = fcmp fast ogt float %6568, 0x3EB0C6F7A0000000
  br i1 %6569, label %6570, label %6576, !dx.controlflow.hints !142

; <label>:6570                                    ; preds = %6556
  %6571 = fmul fast float %6567, 0xBFF7154760000000
  %6572 = call float @dx.op.unary.f32(i32 21, float %6571)  ; Exp(value)
  %6573 = fsub fast float 1.000000e+00, %6572
  %6574 = fdiv fast float %6573, %6567
  %6575 = fmul fast float %6574, %6084
  br label %6576

; <label>:6576                                    ; preds = %6570, %6556
  %6577 = phi float [ %6575, %6570 ], [ %6084, %6556 ]
  %6578 = fadd fast float %6577, %6086
  %6579 = fmul fast float %6578, %6566
  %6580 = fmul fast float %6071, %6579
  %6581 = fsub fast float -0.000000e+00, %6580
  %6582 = fmul fast float %6072, %6579
  %6583 = fsub fast float -0.000000e+00, %6582
  %6584 = fmul fast float %6073, %6579
  %6585 = fsub fast float -0.000000e+00, %6584
  %6586 = call float @dx.op.unary.f32(i32 21, float %6581)  ; Exp(value)
  %6587 = call float @dx.op.unary.f32(i32 21, float %6583)  ; Exp(value)
  %6588 = call float @dx.op.unary.f32(i32 21, float %6585)  ; Exp(value)
  %6589 = fmul fast float %6100, %6100
  %6590 = fadd fast float %6589, 1.000000e+00
  %6591 = fmul fast float %6590, 0x3FAE8EC8A0000000
  %6592 = fmul fast float %6591, %6081
  %6593 = fmul fast float %6591, %6082
  %6594 = fmul fast float %6591, %6083
  %6595 = fmul fast float %6100, %6079
  %6596 = fsub fast float 1.000000e+00, %6595
  %6597 = fmul fast float %6079, %6079
  %6598 = fsub fast float 1.000000e+00, %6597
  %6599 = fmul fast float %6598, 0x3FB45F3060000000
  %6600 = fmul fast float %6596, %6596
  %6601 = fdiv fast float 1.000000e+00, %6600
  %6602 = fmul fast float %6599, %6601
  %6603 = fmul fast float %6602, %6076
  %6604 = fmul fast float %6602, %6077
  %6605 = fmul fast float %6602, %6078
  %6606 = fadd fast float %6603, %6592
  %6607 = fadd fast float %6604, %6593
  %6608 = fadd fast float %6605, %6594
  %6609 = fsub fast float 1.000000e+00, %6586
  %6610 = fsub fast float 1.000000e+00, %6587
  %6611 = fsub fast float 1.000000e+00, %6588
  %6612 = fmul fast float %6606, %6609
  %6613 = fmul fast float %6607, %6610
  %6614 = fmul fast float %6608, %6611
  br label %6615

; <label>:6615                                    ; preds = %6576, %6527
  %6616 = phi float [ %6553, %6527 ], [ %6612, %6576 ]
  %6617 = phi float [ %6554, %6527 ], [ %6613, %6576 ]
  %6618 = phi float [ %6555, %6527 ], [ %6614, %6576 ]
  %6619 = phi float [ %6542, %6527 ], [ %6586, %6576 ]
  %6620 = phi float [ %6542, %6527 ], [ %6587, %6576 ]
  %6621 = phi float [ %6542, %6527 ], [ %6588, %6576 ]
  br i1 %6108, label %6622, label %6820, !dx.controlflow.hints !143

; <label>:6622                                    ; preds = %6615
  %6623 = extractvalue %dx.types.CBufRet.f32 %6521, 0
  %6624 = fmul fast float %6623, %6523
  %6625 = fsub fast float %6518, %6616
  %6626 = fsub fast float %6519, %6617
  %6627 = fsub fast float %6520, %6618
  %6628 = fmul fast float %6624, %6625
  %6629 = fmul fast float %6624, %6626
  %6630 = fmul fast float %6624, %6627
  %6631 = fadd fast float %6628, %6616
  %6632 = fadd fast float %6629, %6617
  %6633 = fadd fast float %6630, %6618
  %6634 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6619)  ; FMax(a,b)
  %6635 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6620)  ; FMax(a,b)
  %6636 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6621)  ; FMax(a,b)
  %6637 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6517)  ; FMax(a,b)
  %6638 = call float @dx.op.binary.f32(i32 35, float %6516, float %6526)  ; FMax(a,b)
  %6639 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6638)  ; FMax(a,b)
  %6640 = fdiv fast float %6516, %6639
  %6641 = call float @dx.op.unary.f32(i32 7, float %6640)  ; Saturate(value)
  %6642 = fdiv fast float %6526, %6639
  %6643 = call float @dx.op.unary.f32(i32 7, float %6642)  ; Saturate(value)
  %6644 = fcmp fast une float %6637, 1.000000e+00
  br i1 %6644, label %6645, label %6658, !dx.controlflow.hints !144

; <label>:6645                                    ; preds = %6622
  %6646 = call float @dx.op.unary.f32(i32 23, float %6637)  ; Log(value)
  %6647 = fmul fast float %6646, 0x3FE62E4300000000
  %6648 = fmul fast float %6518, %6647
  %6649 = fsub fast float -0.000000e+00, %6648
  %6650 = fmul fast float %6519, %6647
  %6651 = fsub fast float -0.000000e+00, %6650
  %6652 = fmul fast float %6520, %6647
  %6653 = fsub fast float -0.000000e+00, %6652
  %6654 = fsub fast float 1.000000e+00, %6637
  %6655 = fdiv fast float %6649, %6654
  %6656 = fdiv fast float %6651, %6654
  %6657 = fdiv fast float %6653, %6654
  br label %6658

; <label>:6658                                    ; preds = %6645, %6622
  %6659 = phi float [ %6655, %6645 ], [ %6518, %6622 ]
  %6660 = phi float [ %6656, %6645 ], [ %6519, %6622 ]
  %6661 = phi float [ %6657, %6645 ], [ %6520, %6622 ]
  %6662 = phi float [ %6647, %6645 ], [ 0.000000e+00, %6622 ]
  %6663 = fcmp fast une float %6634, 1.000000e+00
  br i1 %6663, label %6664, label %6671, !dx.controlflow.hints !145

; <label>:6664                                    ; preds = %6658
  %6665 = call float @dx.op.unary.f32(i32 23, float %6634)  ; Log(value)
  %6666 = fmul fast float %6665, 0x3FE62E4300000000
  %6667 = fmul fast float %6631, %6666
  %6668 = fsub fast float -0.000000e+00, %6667
  %6669 = fsub fast float 1.000000e+00, %6634
  %6670 = fdiv fast float %6668, %6669
  br label %6671

; <label>:6671                                    ; preds = %6664, %6658
  %6672 = phi float [ %6670, %6664 ], [ %6631, %6658 ]
  %6673 = phi float [ %6666, %6664 ], [ 0.000000e+00, %6658 ]
  %6674 = fcmp fast une float %6635, 1.000000e+00
  br i1 %6674, label %6675, label %6682, !dx.controlflow.hints !145

; <label>:6675                                    ; preds = %6671
  %6676 = call float @dx.op.unary.f32(i32 23, float %6635)  ; Log(value)
  %6677 = fmul fast float %6676, 0x3FE62E4300000000
  %6678 = fmul fast float %6632, %6677
  %6679 = fsub fast float -0.000000e+00, %6678
  %6680 = fsub fast float 1.000000e+00, %6635
  %6681 = fdiv fast float %6679, %6680
  br label %6682

; <label>:6682                                    ; preds = %6675, %6671
  %6683 = phi float [ %6681, %6675 ], [ %6632, %6671 ]
  %6684 = phi float [ %6677, %6675 ], [ 0.000000e+00, %6671 ]
  %6685 = fcmp fast une float %6636, 1.000000e+00
  br i1 %6685, label %6686, label %6693, !dx.controlflow.hints !145

; <label>:6686                                    ; preds = %6682
  %6687 = call float @dx.op.unary.f32(i32 23, float %6636)  ; Log(value)
  %6688 = fmul fast float %6687, 0x3FE62E4300000000
  %6689 = fmul fast float %6633, %6688
  %6690 = fsub fast float -0.000000e+00, %6689
  %6691 = fsub fast float 1.000000e+00, %6636
  %6692 = fdiv fast float %6690, %6691
  br label %6693

; <label>:6693                                    ; preds = %6686, %6682
  %6694 = phi float [ %6692, %6686 ], [ %6633, %6682 ]
  %6695 = phi float [ %6688, %6686 ], [ 0.000000e+00, %6682 ]
  %6696 = fmul fast float %6659, %6643
  %6697 = fmul fast float %6660, %6643
  %6698 = fmul fast float %6661, %6643
  %6699 = fmul fast float %6662, %6643
  %6700 = fmul fast float %6672, %6641
  %6701 = fmul fast float %6683, %6641
  %6702 = fmul fast float %6694, %6641
  %6703 = fmul fast float %6673, %6641
  %6704 = fmul fast float %6684, %6641
  %6705 = fmul fast float %6695, %6641
  %6706 = fadd fast float %6700, %6696
  %6707 = fadd fast float %6701, %6697
  %6708 = fadd fast float %6702, %6698
  %6709 = fadd fast float %6703, %6699
  %6710 = fadd fast float %6704, %6699
  %6711 = fadd fast float %6705, %6699
  %6712 = fcmp fast une float %6709, 0.000000e+00
  br i1 %6712, label %6713, label %6720, !dx.controlflow.hints !146

; <label>:6713                                    ; preds = %6693
  %6714 = fmul fast float %6709, 0x3FF7154760000000
  %6715 = call float @dx.op.unary.f32(i32 21, float %6714)  ; Exp(value)
  %6716 = fsub fast float 1.000000e+00, %6715
  %6717 = fmul fast float %6706, %6716
  %6718 = fsub fast float -0.000000e+00, %6717
  %6719 = fdiv fast float %6718, %6709
  br label %6720

; <label>:6720                                    ; preds = %6713, %6693
  %6721 = phi float [ %6715, %6713 ], [ 1.000000e+00, %6693 ]
  %6722 = phi float [ %6719, %6713 ], [ %6706, %6693 ]
  %6723 = fcmp fast une float %6710, 0.000000e+00
  br i1 %6723, label %6724, label %6731, !dx.controlflow.hints !146

; <label>:6724                                    ; preds = %6720
  %6725 = fmul fast float %6710, 0x3FF7154760000000
  %6726 = call float @dx.op.unary.f32(i32 21, float %6725)  ; Exp(value)
  %6727 = fsub fast float 1.000000e+00, %6726
  %6728 = fmul fast float %6707, %6727
  %6729 = fsub fast float -0.000000e+00, %6728
  %6730 = fdiv fast float %6729, %6710
  br label %6731

; <label>:6731                                    ; preds = %6724, %6720
  %6732 = phi float [ %6726, %6724 ], [ 1.000000e+00, %6720 ]
  %6733 = phi float [ %6730, %6724 ], [ %6707, %6720 ]
  %6734 = fcmp fast une float %6711, 0.000000e+00
  br i1 %6734, label %6735, label %6742, !dx.controlflow.hints !146

; <label>:6735                                    ; preds = %6731
  %6736 = fmul fast float %6711, 0x3FF7154760000000
  %6737 = call float @dx.op.unary.f32(i32 21, float %6736)  ; Exp(value)
  %6738 = fsub fast float 1.000000e+00, %6737
  %6739 = fmul fast float %6708, %6738
  %6740 = fsub fast float -0.000000e+00, %6739
  %6741 = fdiv fast float %6740, %6711
  br label %6742

; <label>:6742                                    ; preds = %6735, %6731
  %6743 = phi float [ %6737, %6735 ], [ 1.000000e+00, %6731 ]
  %6744 = phi float [ %6741, %6735 ], [ %6708, %6731 ]
  %6745 = fcmp fast ogt float %6641, %6643
  br i1 %6745, label %6746, label %6766

; <label>:6746                                    ; preds = %6742
  %6747 = fsub fast float 1.000000e+00, %6643
  %6748 = fmul fast float %6659, %6747
  %6749 = fmul fast float %6660, %6747
  %6750 = fmul fast float %6661, %6747
  %6751 = fmul fast float %6662, %6747
  %6752 = fcmp fast une float %6751, 0.000000e+00
  br i1 %6752, label %6753, label %6804, !dx.controlflow.hints !147

; <label>:6753                                    ; preds = %6746
  %6754 = fmul fast float %6751, 0x3FF7154760000000
  %6755 = call float @dx.op.unary.f32(i32 21, float %6754)  ; Exp(value)
  %6756 = fsub fast float 1.000000e+00, %6755
  %6757 = fmul fast float %6748, %6756
  %6758 = fsub fast float -0.000000e+00, %6757
  %6759 = fmul fast float %6749, %6756
  %6760 = fsub fast float -0.000000e+00, %6759
  %6761 = fmul fast float %6750, %6756
  %6762 = fsub fast float -0.000000e+00, %6761
  %6763 = fdiv fast float %6758, %6751
  %6764 = fdiv fast float %6760, %6751
  %6765 = fdiv fast float %6762, %6751
  br label %6804

; <label>:6766                                    ; preds = %6742
  %6767 = fsub fast float 1.000000e+00, %6641
  %6768 = fmul fast float %6672, %6767
  %6769 = fmul fast float %6683, %6767
  %6770 = fmul fast float %6694, %6767
  %6771 = fmul fast float %6673, %6767
  %6772 = fmul fast float %6684, %6767
  %6773 = fmul fast float %6695, %6767
  %6774 = fcmp fast une float %6771, 0.000000e+00
  br i1 %6774, label %6775, label %6782, !dx.controlflow.hints !146

; <label>:6775                                    ; preds = %6766
  %6776 = fmul fast float %6771, 0x3FF7154760000000
  %6777 = call float @dx.op.unary.f32(i32 21, float %6776)  ; Exp(value)
  %6778 = fsub fast float 1.000000e+00, %6777
  %6779 = fmul fast float %6768, %6778
  %6780 = fsub fast float -0.000000e+00, %6779
  %6781 = fdiv fast float %6780, %6771
  br label %6782

; <label>:6782                                    ; preds = %6775, %6766
  %6783 = phi float [ %6781, %6775 ], [ %6768, %6766 ]
  %6784 = phi float [ %6777, %6775 ], [ 1.000000e+00, %6766 ]
  %6785 = fcmp fast une float %6772, 0.000000e+00
  br i1 %6785, label %6786, label %6793, !dx.controlflow.hints !146

; <label>:6786                                    ; preds = %6782
  %6787 = fmul fast float %6772, 0x3FF7154760000000
  %6788 = call float @dx.op.unary.f32(i32 21, float %6787)  ; Exp(value)
  %6789 = fsub fast float 1.000000e+00, %6788
  %6790 = fmul fast float %6769, %6789
  %6791 = fsub fast float -0.000000e+00, %6790
  %6792 = fdiv fast float %6791, %6772
  br label %6793

; <label>:6793                                    ; preds = %6786, %6782
  %6794 = phi float [ %6792, %6786 ], [ %6769, %6782 ]
  %6795 = phi float [ %6788, %6786 ], [ 1.000000e+00, %6782 ]
  %6796 = fcmp fast une float %6773, 0.000000e+00
  br i1 %6796, label %6797, label %6804, !dx.controlflow.hints !146

; <label>:6797                                    ; preds = %6793
  %6798 = fmul fast float %6773, 0x3FF7154760000000
  %6799 = call float @dx.op.unary.f32(i32 21, float %6798)  ; Exp(value)
  %6800 = fsub fast float 1.000000e+00, %6799
  %6801 = fmul fast float %6770, %6800
  %6802 = fsub fast float -0.000000e+00, %6801
  %6803 = fdiv fast float %6802, %6773
  br label %6804

; <label>:6804                                    ; preds = %6797, %6793, %6753, %6746
  %6805 = phi float [ %6803, %6797 ], [ %6765, %6753 ], [ %6750, %6746 ], [ %6770, %6793 ]
  %6806 = phi float [ %6794, %6797 ], [ %6764, %6753 ], [ %6749, %6746 ], [ %6794, %6793 ]
  %6807 = phi float [ %6783, %6797 ], [ %6763, %6753 ], [ %6748, %6746 ], [ %6783, %6793 ]
  %6808 = phi float [ %6799, %6797 ], [ %6755, %6753 ], [ 1.000000e+00, %6746 ], [ 1.000000e+00, %6793 ]
  %6809 = phi float [ %6795, %6797 ], [ %6755, %6753 ], [ 1.000000e+00, %6746 ], [ %6795, %6793 ]
  %6810 = phi float [ %6784, %6797 ], [ %6755, %6753 ], [ 1.000000e+00, %6746 ], [ %6784, %6793 ]
  %6811 = fmul fast float %6810, %6722
  %6812 = fmul fast float %6809, %6733
  %6813 = fmul fast float %6808, %6744
  %6814 = fadd fast float %6811, %6807
  %6815 = fadd fast float %6812, %6806
  %6816 = fadd fast float %6813, %6805
  %6817 = fmul fast float %6810, %6721
  %6818 = fmul fast float %6809, %6732
  %6819 = fmul fast float %6808, %6743
  br label %6820

; <label>:6820                                    ; preds = %6804, %6615
  %6821 = phi float [ %6819, %6804 ], [ %6621, %6615 ]
  %6822 = phi float [ %6818, %6804 ], [ %6620, %6615 ]
  %6823 = phi float [ %6817, %6804 ], [ %6619, %6615 ]
  %6824 = phi float [ %6816, %6804 ], [ %6618, %6615 ]
  %6825 = phi float [ %6815, %6804 ], [ %6617, %6615 ]
  %6826 = phi float [ %6814, %6804 ], [ %6616, %6615 ]
  %6827 = fmul fast float %6826, %5772
  %6828 = fmul fast float %6825, %5772
  %6829 = fmul fast float %6824, %5772
  %6830 = fmul fast float %6823, %6063
  %6831 = call float @dx.op.dot3.f32(i32 55, float %6823, float %6822, float %6821, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6832 = call float @dx.op.dot3.f32(i32 55, float %6827, float %6828, float %6829, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6833 = select i1 %206, float %6831, float %6823
  %6834 = select i1 %206, float %6831, float %6822
  %6835 = select i1 %206, float 1.000000e+00, float %6821
  %6836 = select i1 %206, float %6832, float %6827
  %6837 = select i1 %206, float 0.000000e+00, float %6828
  %6838 = select i1 %206, float 0.000000e+00, float %6829
  %6839 = fmul fast float %6833, %6057
  %6840 = fmul fast float %6834, %6058
  %6841 = fmul fast float %6835, %6059
  %6842 = fadd fast float %6839, %6836
  %6843 = fadd fast float %6840, %6837
  %6844 = fadd fast float %6838, %6841
  %6845 = fmul fast float %6833, %6060
  %6846 = fmul fast float %6834, %6061
  %6847 = fmul fast float %6835, %6062
  %6848 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.i32 %6848, 0
  %6850 = icmp eq i32 %6849, 0
  br i1 %6850, label %7218, label %6851, !dx.controlflow.hints !148

; <label>:6851                                    ; preds = %6820
  %6852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6853 = extractvalue %dx.types.CBufRet.f32 %6852, 2
  %6854 = extractvalue %dx.types.CBufRet.f32 %6852, 3
  %6855 = fmul fast float %6853, %82
  %6856 = fmul fast float %6854, %83
  %6857 = fmul fast float %6855, 2.000000e+00
  %6858 = fmul fast float %6856, 2.000000e+00
  %6859 = fsub fast float 1.000000e+00, %6857
  %6860 = fsub fast float 1.000000e+00, %6858
  %6861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6862 = extractvalue %dx.types.CBufRet.f32 %6861, 0
  %6863 = extractvalue %dx.types.CBufRet.f32 %6861, 1
  %6864 = extractvalue %dx.types.CBufRet.f32 %6861, 2
  %6865 = fmul fast float %6859, %6862
  %6866 = fmul fast float %6859, %6863
  %6867 = fmul fast float %6859, %6864
  %6868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6869 = extractvalue %dx.types.CBufRet.f32 %6868, 0
  %6870 = extractvalue %dx.types.CBufRet.f32 %6868, 1
  %6871 = extractvalue %dx.types.CBufRet.f32 %6868, 2
  %6872 = fmul fast float %6860, %6869
  %6873 = fmul fast float %6860, %6870
  %6874 = fmul fast float %6860, %6871
  %6875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6876 = extractvalue %dx.types.CBufRet.f32 %6875, 0
  %6877 = extractvalue %dx.types.CBufRet.f32 %6875, 1
  %6878 = extractvalue %dx.types.CBufRet.f32 %6875, 2
  %6879 = fadd fast float %6872, %6876
  %6880 = fadd fast float %6879, %6865
  %6881 = fadd fast float %6873, %6877
  %6882 = fadd fast float %6881, %6866
  %6883 = fadd fast float %6874, %6878
  %6884 = fadd fast float %6883, %6867
  %6885 = fmul fast float %6880, %6056
  %6886 = fmul fast float %6882, %6056
  %6887 = fmul fast float %6884, %6056
  %6888 = fmul fast float %6885, %6885
  %6889 = fmul fast float %6886, %6886
  %6890 = fadd fast float %6888, %6889
  %6891 = fmul fast float %6887, %6887
  %6892 = fadd fast float %6890, %6891
  %6893 = call float @dx.op.unary.f32(i32 24, float %6892)  ; Sqrt(value)
  %6894 = extractvalue %dx.types.CBufRet.f32 %5783, 0
  %6895 = fsub fast float %6893, %6894
  %6896 = extractvalue %dx.types.CBufRet.f32 %5783, 2
  %6897 = fmul fast float %6895, %6896
  %6898 = call float @dx.op.unary.f32(i32 7, float %6897)  ; Saturate(value)
  %6899 = fadd fast float %6898, -5.000000e-01
  %6900 = fmul fast float %6899, 2.000000e+00
  %6901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6902 = extractvalue %dx.types.CBufRet.f32 %6901, 2
  %6903 = call float @dx.op.binary.f32(i32 36, float %6902, float %6900)  ; FMin(a,b)
  %6904 = fsub fast float -0.000000e+00, %6902
  %6905 = fcmp fast ogt float %6903, %6904
  br i1 %6905, label %6906, label %7218, !dx.controlflow.hints !149

; <label>:6906                                    ; preds = %6851
  %6907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6908 = extractvalue %dx.types.CBufRet.f32 %6907, 3
  %6909 = fcmp fast ogt float %6908, 0.000000e+00
  br i1 %6909, label %6910, label %6985, !dx.controlflow.hints !150

; <label>:6910                                    ; preds = %6906
  %6911 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %6912 = extractvalue %dx.types.Dimensions %6911, 0
  %6913 = sitofp i32 %6912 to float
  %6914 = extractvalue %dx.types.Dimensions %6911, 1
  %6915 = sitofp i32 %6914 to float
  %6916 = fmul fast float %6855, %6913
  %6917 = fmul fast float %6856, %6915
  %6918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6919 = extractvalue %dx.types.CBufRet.f32 %6918, 1
  %6920 = fsub fast float -0.000000e+00, %6919
  %6921 = fptoui float %6920 to i32
  %6922 = fptoui float %6916 to i32
  %6923 = fptoui float %6917 to i32
  %6924 = and i32 %6921, 31
  %6925 = lshr i32 %6922, %6924
  %6926 = lshr i32 %6923, %6924
  %6927 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %6921, i32 %6925, i32 %6926, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6928 = extractvalue %dx.types.ResRet.f32 %6927, 0
  %6929 = fcmp fast olt float %6928, -1.000000e+00
  %6930 = fcmp fast ogt float %6928, -1.000000e+00
  %6931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6932 = extractvalue %dx.types.CBufRet.f32 %6931, 1
  %6933 = select i1 %6930, float %6932, float 1.000000e+00
  %6934 = fadd fast float %6928, 1.000000e+00
  %6935 = fmul fast float %6933, %6934
  %6936 = call float @dx.op.unary.f32(i32 6, float %6935)  ; FAbs(value)
  %6937 = extractvalue %dx.types.CBufRet.f32 %6931, 3
  %6938 = fcmp fast oge float %6936, %6937
  %6939 = select i1 %6938, float 0x4197782600000000, float %6936
  %6940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6941 = extractvalue %dx.types.CBufRet.f32 %6940, 0
  %6942 = extractvalue %dx.types.CBufRet.f32 %6940, 1
  %6943 = extractvalue %dx.types.CBufRet.f32 %6940, 2
  %6944 = select i1 %6929, float %6941, float %6862
  %6945 = select i1 %6929, float %6942, float %6863
  %6946 = select i1 %6929, float %6943, float %6864
  %6947 = fmul fast float %6944, %6859
  %6948 = fmul fast float %6945, %6859
  %6949 = fmul fast float %6946, %6859
  %6950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6951 = extractvalue %dx.types.CBufRet.f32 %6950, 0
  %6952 = extractvalue %dx.types.CBufRet.f32 %6950, 1
  %6953 = extractvalue %dx.types.CBufRet.f32 %6950, 2
  %6954 = select i1 %6929, float %6951, float %6869
  %6955 = select i1 %6929, float %6952, float %6870
  %6956 = select i1 %6929, float %6953, float %6871
  %6957 = fmul fast float %6954, %6860
  %6958 = fmul fast float %6955, %6860
  %6959 = fmul fast float %6956, %6860
  %6960 = fadd fast float %6957, %6947
  %6961 = fadd fast float %6958, %6948
  %6962 = fadd fast float %6959, %6949
  %6963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6964 = extractvalue %dx.types.CBufRet.f32 %6963, 0
  %6965 = extractvalue %dx.types.CBufRet.f32 %6963, 1
  %6966 = extractvalue %dx.types.CBufRet.f32 %6963, 2
  %6967 = select i1 %6929, float %6964, float %6876
  %6968 = select i1 %6929, float %6965, float %6877
  %6969 = select i1 %6929, float %6966, float %6878
  %6970 = fadd fast float %6960, %6967
  %6971 = fadd fast float %6961, %6968
  %6972 = fadd fast float %6962, %6969
  %6973 = fmul fast float %6970, %6939
  %6974 = fmul fast float %6971, %6939
  %6975 = fmul fast float %6972, %6939
  %6976 = fmul fast float %6973, %6973
  %6977 = fmul fast float %6974, %6974
  %6978 = fadd fast float %6976, %6977
  %6979 = fmul fast float %6975, %6975
  %6980 = fadd fast float %6978, %6979
  %6981 = call float @dx.op.unary.f32(i32 24, float %6980)  ; Sqrt(value)
  %6982 = fsub fast float %6981, %6894
  %6983 = fmul fast float %6982, %6896
  %6984 = call float @dx.op.unary.f32(i32 7, float %6983)  ; Saturate(value)
  br label %6985

; <label>:6985                                    ; preds = %6910, %6906
  %6986 = phi float [ %6984, %6910 ], [ 1.000000e+00, %6906 ]
  %6987 = fmul fast float %6903, 5.000000e-01
  %6988 = fadd fast float %6987, 5.000000e-01
  %6989 = call float @dx.op.unary.f32(i32 22, float %6988)  ; Frc(value)
  %6990 = call float @dx.op.unary.f32(i32 27, float %6989)  ; Round_ni(value)
  %6991 = call float @dx.op.unary.f32(i32 22, float %6989)  ; Frc(value)
  %6992 = fmul fast float %6991, 2.000000e+00
  %6993 = fadd fast float %6992, -1.000000e+00
  %6994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %6855, float %6856, float %6990, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6995 = extractvalue %dx.types.ResRet.f32 %6994, 0
  %6996 = extractvalue %dx.types.ResRet.f32 %6994, 1
  %6997 = extractvalue %dx.types.ResRet.f32 %6994, 2
  %6998 = extractvalue %dx.types.ResRet.f32 %6994, 3
  %6999 = fadd fast float %6995, -5.000000e-01
  %7000 = fadd fast float %6997, -5.000000e-01
  %7001 = fmul fast float %6999, 0xBFD5555560000000
  %7002 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7000, float %7001)  ; FMad(a,b,c)
  %7003 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6996, float 0.000000e+00)  ; FMad(a,b,c)
  %7004 = fadd fast float %7003, %6998
  %7005 = fmul fast float %6999, -7.500000e-01
  %7006 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7000, float %7005)  ; FMad(a,b,c)
  %7007 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6996, float 0.000000e+00)  ; FMad(a,b,c)
  %7008 = fadd fast float %7007, %6998
  %7009 = call float @dx.op.binary.f32(i32 35, float %7002, float -1.000000e+00)  ; FMax(a,b)
  %7010 = call float @dx.op.binary.f32(i32 35, float %7004, float -1.000000e+00)  ; FMax(a,b)
  %7011 = call float @dx.op.binary.f32(i32 35, float %7006, float -1.000000e+00)  ; FMax(a,b)
  %7012 = call float @dx.op.binary.f32(i32 35, float %7008, float -1.000000e+00)  ; FMax(a,b)
  %7013 = call float @dx.op.binary.f32(i32 36, float %7009, float 1.000000e+00)  ; FMin(a,b)
  %7014 = call float @dx.op.binary.f32(i32 36, float %7010, float 1.000000e+00)  ; FMin(a,b)
  %7015 = call float @dx.op.binary.f32(i32 36, float %7011, float 1.000000e+00)  ; FMin(a,b)
  %7016 = call float @dx.op.binary.f32(i32 36, float %7012, float 1.000000e+00)  ; FMin(a,b)
  %7017 = fcmp fast olt float %7013, 0x3FEFFF8020000000
  br i1 %7017, label %7018, label %7133, !dx.controlflow.hints !151

; <label>:7018                                    ; preds = %6985
  %7019 = extractvalue %dx.types.CBufRet.f32 %6901, 3
  %7020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7021 = extractvalue %dx.types.CBufRet.f32 %7020, 0
  %7022 = extractvalue %dx.types.CBufRet.f32 %7020, 1
  %7023 = extractvalue %dx.types.CBufRet.f32 %7020, 2
  %7024 = extractvalue %dx.types.CBufRet.f32 %7020, 3
  %7025 = fsub fast float %7021, %7013
  %7026 = fsub fast float %7022, %7014
  %7027 = fsub fast float %7023, %7015
  %7028 = fsub fast float %7024, %7016
  %7029 = fmul fast float %7025, %7019
  %7030 = fmul fast float %7026, %7019
  %7031 = fmul fast float %7027, %7019
  %7032 = fmul fast float %7028, %7019
  %7033 = fadd fast float %7029, %7013
  %7034 = fadd fast float %7030, %7014
  %7035 = fsub fast float -0.000000e+00, %7034
  %7036 = fadd fast float %7031, %7015
  %7037 = fadd fast float %7032, %7016
  %7038 = fmul fast float %7033, %7033
  %7039 = fsub fast float %7034, %7038
  %7040 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7039)  ; FMax(a,b)
  %7041 = fdiv fast float 1.000000e+00, %7040
  %7042 = fmul fast float %7034, %7033
  %7043 = fsub fast float %7036, %7042
  %7044 = fsub fast float %6993, %7033
  %7045 = fmul fast float %6993, %6993
  %7046 = fsub fast float %7045, %7034
  %7047 = fmul fast float %7044, %7041
  %7048 = fmul fast float %7047, %7043
  %7049 = fsub fast float %7046, %7048
  %7050 = fmul fast float %7034, %7034
  %7051 = fsub fast float %7037, %7050
  %7052 = fmul fast float %7043, %7043
  %7053 = fmul fast float %7052, %7041
  %7054 = fsub fast float %7051, %7053
  %7055 = fdiv fast float %7049, %7054
  %7056 = fmul fast float %7043, %7055
  %7057 = fsub fast float %7044, %7056
  %7058 = fmul fast float %7057, %7041
  %7059 = fmul fast float %7058, %7033
  %7060 = fsub fast float 1.000000e+00, %7059
  %7061 = fmul fast float %7034, %7055
  %7062 = fsub fast float %7060, %7061
  %7063 = fmul fast float %7058, %7058
  %7064 = fmul fast float %7055, 4.000000e+00
  %7065 = fmul fast float %7064, %7062
  %7066 = fsub fast float %7063, %7065
  %7067 = call float @dx.op.unary.f32(i32 24, float %7066)  ; Sqrt(value)
  %7068 = fcmp fast oge float %7058, 0.000000e+00
  %7069 = fsub fast float -0.000000e+00, %7067
  %7070 = select i1 %7068, float %7069, float %7067
  %7071 = fsub fast float %7070, %7058
  %7072 = fdiv fast float %7071, %7055
  %7073 = fdiv fast float %7062, %7071
  %7074 = fmul fast float %7072, 5.000000e-01
  %7075 = fmul fast float %7073, 2.000000e+00
  %7076 = select i1 %7068, float %7074, float %7075
  %7077 = select i1 %7068, float %7075, float %7074
  %7078 = call float @dx.op.binary.f32(i32 35, float %7076, float %7077)  ; FMax(a,b)
  %7079 = call float @dx.op.binary.f32(i32 36, float %7076, float %7077)  ; FMin(a,b)
  %7080 = fcmp fast ogt float %6993, %7079
  br i1 %7080, label %7081, label %7091

; <label>:7081                                    ; preds = %7018
  %7082 = fsub fast float %6993, %7079
  %7083 = fsub fast float %7078, %7079
  %7084 = fmul fast float %7082, %7083
  %7085 = fmul fast float %7078, %6993
  %7086 = fadd fast float %7078, %6993
  %7087 = fmul fast float %7086, %7033
  %7088 = fadd fast float %7085, %7034
  %7089 = fsub fast float %7088, %7087
  %7090 = fdiv fast float %7089, %7084
  br label %7091

; <label>:7091                                    ; preds = %7081, %7018
  %7092 = phi float [ %7090, %7081 ], [ 0.000000e+00, %7018 ]
  %7093 = fcmp fast ogt float %6993, %7078
  %7094 = fsub fast float %6993, %7078
  br i1 %7093, label %7095, label %7105

; <label>:7095                                    ; preds = %7091
  %7096 = fsub fast float %7078, %7079
  %7097 = fmul fast float %7096, %7094
  %7098 = fmul fast float %7079, %6993
  %7099 = fadd fast float %7079, %6993
  %7100 = fmul fast float %7099, %7033
  %7101 = fsub fast float %7035, %7098
  %7102 = fadd fast float %7101, %7100
  %7103 = fdiv fast float %7102, %7097
  %7104 = fadd fast float %7103, %7092
  br label %7105

; <label>:7105                                    ; preds = %7095, %7091
  %7106 = phi float [ %7104, %7095 ], [ %7092, %7091 ]
  %7107 = fsub fast float %6993, %7079
  %7108 = fmul fast float %7107, %7094
  %7109 = fmul fast float %7079, %7078
  %7110 = fadd fast float %7079, %7078
  %7111 = fmul fast float %7110, %7033
  %7112 = fadd fast float %7109, %7034
  %7113 = fsub fast float %7112, %7111
  %7114 = fdiv fast float %7113, %7108
  %7115 = call float @dx.op.unary.f32(i32 7, float %7106)  ; Saturate(value)
  %7116 = fcmp fast oeq float %5784, 0.000000e+00
  %7117 = extractvalue %dx.types.CBufRet.f32 %6901, 0
  %7118 = fcmp fast oeq float %7117, 0.000000e+00
  %7119 = or i1 %7116, %7118
  %7120 = fmul fast float %7117, 2.000000e+00
  %7121 = fadd fast float %6902, %6903
  %7122 = fdiv fast float %7121, %7120
  %7123 = call float @dx.op.unary.f32(i32 7, float %7122)  ; Saturate(value)
  %7124 = fmul fast float %7123, 2.000000e+00
  %7125 = fsub fast float 3.000000e+00, %7124
  %7126 = fmul fast float %7123, %7123
  %7127 = fmul fast float %7126, %7125
  %7128 = select i1 %7119, float 1.000000e+00, float %7127
  %7129 = fmul fast float %7114, %5784
  %7130 = fadd fast float %7115, %7129
  %7131 = call float @dx.op.unary.f32(i32 7, float %7130)  ; Saturate(value)
  %7132 = fmul fast float %7128, %7131
  br label %7133

; <label>:7133                                    ; preds = %7105, %6985
  %7134 = phi float [ %7132, %7105 ], [ 0.000000e+00, %6985 ]
  %7135 = fsub fast float 1.000000e+00, %7134
  %7136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %35, float %6855, float %6856, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7137 = extractvalue %dx.types.ResRet.f32 %7136, 0
  %7138 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7139 = extractvalue %dx.types.CBufRet.i32 %7138, 2
  %7140 = icmp eq i32 %7139, 0
  br i1 %7140, label %7146, label %7141

; <label>:7141                                    ; preds = %7133
  %7142 = call float @dx.op.unary.f32(i32 7, float %7134)  ; Saturate(value)
  %7143 = fadd fast float %7137, -1.000000e+00
  %7144 = fmul fast float %7142, %7143
  %7145 = fadd fast float %7144, 1.000000e+00
  br label %7146

; <label>:7146                                    ; preds = %7141, %7133
  %7147 = phi float [ %7145, %7141 ], [ %7135, %7133 ]
  br i1 %6909, label %7148, label %7166

; <label>:7148                                    ; preds = %7146
  %7149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7150 = extractvalue %dx.types.CBufRet.f32 %7149, 1
  %7151 = fsub fast float %6986, %7150
  %7152 = call float @dx.op.unary.f32(i32 7, float %7151)  ; Saturate(value)
  %7153 = fsub fast float %6986, %6908
  %7154 = call float @dx.op.unary.f32(i32 7, float %7153)  ; Saturate(value)
  %7155 = fsub fast float %7152, %7154
  %7156 = fsub fast float %6988, %7154
  %7157 = fdiv fast float %7156, %7155
  %7158 = call float @dx.op.unary.f32(i32 7, float %7157)  ; Saturate(value)
  %7159 = fmul fast float %7158, 2.000000e+00
  %7160 = fsub fast float 3.000000e+00, %7159
  %7161 = fsub fast float %7137, %7147
  %7162 = fmul fast float %7158, %7158
  %7163 = fmul fast float %7162, %7161
  %7164 = fmul fast float %7163, %7160
  %7165 = fadd fast float %7164, %7147
  br label %7166

; <label>:7166                                    ; preds = %7148, %7146
  %7167 = phi float [ %7165, %7148 ], [ %7147, %7146 ]
  %7168 = call float @dx.op.binary.f32(i32 35, float %7137, float %7167)  ; FMax(a,b)
  %7169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7170 = extractvalue %dx.types.CBufRet.i32 %7169, 2
  %7171 = and i32 %7170, 1
  %7172 = icmp eq i32 %7171, 0
  %7173 = fcmp fast une float %7168, 1.000000e+00
  %7174 = and i1 %7173, %7172
  br i1 %7174, label %7175, label %7194

; <label>:7175                                    ; preds = %7166
  %7176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %35, float %6855, float %6856, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7177 = extractvalue %dx.types.ResRet.f32 %7176, 0
  %7178 = extractvalue %dx.types.ResRet.f32 %7176, 1
  %7179 = extractvalue %dx.types.ResRet.f32 %7176, 2
  %7180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7181 = extractvalue %dx.types.CBufRet.f32 %7180, 1
  %7182 = fmul fast float %7181, %7177
  %7183 = fmul fast float %7181, %7178
  %7184 = fmul fast float %7181, %7179
  %7185 = fcmp fast ogt float %7137, 0x3FEFFF2E40000000
  %7186 = fsub fast float 1.000000e+00, %7168
  %7187 = fsub fast float 1.000000e+00, %7137
  %7188 = fdiv fast float %7186, %7187
  %7189 = call float @dx.op.unary.f32(i32 7, float %7188)  ; Saturate(value)
  %7190 = select i1 %7185, float 0.000000e+00, float %7189
  %7191 = fmul fast float %7182, %7190
  %7192 = fmul fast float %7183, %7190
  %7193 = fmul fast float %7184, %7190
  br label %7194

; <label>:7194                                    ; preds = %7175, %7166
  %7195 = phi float [ 0.000000e+00, %7166 ], [ %7191, %7175 ]
  %7196 = phi float [ 0.000000e+00, %7166 ], [ %7192, %7175 ]
  %7197 = phi float [ 0.000000e+00, %7166 ], [ %7193, %7175 ]
  %7198 = fmul fast float %7195, %5772
  %7199 = fmul fast float %7196, %5772
  %7200 = fmul fast float %7197, %5772
  %7201 = fmul fast float %7168, %6830
  %7202 = call float @dx.op.dot3.f32(i32 55, float %7168, float %7168, float %7168, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7203 = call float @dx.op.dot3.f32(i32 55, float %7198, float %7199, float %7200, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7204 = select i1 %206, float %7202, float %7168
  %7205 = select i1 %206, float 1.000000e+00, float %7168
  %7206 = select i1 %206, float %7203, float %7198
  %7207 = select i1 %206, float 0.000000e+00, float %7199
  %7208 = select i1 %206, float 0.000000e+00, float %7200
  %7209 = fmul fast float %7204, %6842
  %7210 = fmul fast float %7204, %6843
  %7211 = fmul fast float %7205, %6844
  %7212 = fadd fast float %7209, %7206
  %7213 = fadd fast float %7210, %7207
  %7214 = fadd fast float %7208, %7211
  %7215 = fmul fast float %7204, %6845
  %7216 = fmul fast float %7204, %6846
  %7217 = fmul fast float %7205, %6847
  br label %7218

; <label>:7218                                    ; preds = %7194, %6851, %6820, %6052
  %7219 = phi float [ %6057, %6052 ], [ %6842, %6820 ], [ %7212, %7194 ], [ %6842, %6851 ]
  %7220 = phi float [ %6058, %6052 ], [ %6843, %6820 ], [ %7213, %7194 ], [ %6843, %6851 ]
  %7221 = phi float [ %6059, %6052 ], [ %6844, %6820 ], [ %7214, %7194 ], [ %6844, %6851 ]
  %7222 = phi float [ %6060, %6052 ], [ %6845, %6820 ], [ %7215, %7194 ], [ %6845, %6851 ]
  %7223 = phi float [ %6061, %6052 ], [ %6846, %6820 ], [ %7216, %7194 ], [ %6846, %6851 ]
  %7224 = phi float [ %6062, %6052 ], [ %6847, %6820 ], [ %7217, %7194 ], [ %6847, %6851 ]
  %7225 = phi float [ %6063, %6052 ], [ %6830, %6820 ], [ %7201, %7194 ], [ %6830, %6851 ]
  %7226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7227 = extractvalue %dx.types.CBufRet.f32 %7226, 2
  %7228 = extractvalue %dx.types.CBufRet.f32 %7226, 3
  %7229 = fmul fast float %7227, %82
  %7230 = fmul fast float %7228, %83
  %7231 = call float @dx.op.unary.f32(i32 7, float %7229)  ; Saturate(value)
  %7232 = call float @dx.op.unary.f32(i32 7, float %7230)  ; Saturate(value)
  %7233 = select i1 %5794, i32 2, i32 0
  %7234 = or i32 %7233, 1
  %7235 = uitofp i32 %7234 to float
  %7236 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7231, float %7232, float %7235, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7237 = extractvalue %dx.types.ResRet.f32 %7236, 0
  %7238 = extractvalue %dx.types.ResRet.f32 %7236, 1
  %7239 = extractvalue %dx.types.ResRet.f32 %7236, 2
  %7240 = extractvalue %dx.types.ResRet.f32 %7236, 3
  %7241 = add nuw nsw i32 %7233, 2
  %7242 = uitofp i32 %7241 to float
  %7243 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7231, float %7232, float %7242, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7244 = extractvalue %dx.types.ResRet.f32 %7243, 0
  %7245 = extractvalue %dx.types.ResRet.f32 %7243, 1
  %7246 = extractvalue %dx.types.ResRet.f32 %7243, 2
  %7247 = extractvalue %dx.types.ResRet.f32 %7243, 3
  %7248 = call float @dx.op.binary.f32(i32 35, float %7238, float %7239)  ; FMax(a,b)
  %7249 = call float @dx.op.binary.f32(i32 35, float %7237, float %7248)  ; FMax(a,b)
  %7250 = call float @dx.op.binary.f32(i32 35, float %7249, float %7240)  ; FMax(a,b)
  %7251 = call float @dx.op.binary.f32(i32 36, float %7245, float %7246)  ; FMin(a,b)
  %7252 = call float @dx.op.binary.f32(i32 36, float %7244, float %7251)  ; FMin(a,b)
  %7253 = call float @dx.op.binary.f32(i32 36, float %7252, float %7247)  ; FMin(a,b)
  %7254 = fmul fast float %7250, 2.550000e+02
  %7255 = fadd fast float %7254, 0x3F70101020000000
  %7256 = fptoui float %7255 to i32
  %7257 = fmul fast float %7253, 2.550000e+02
  %7258 = fadd fast float %7257, 0x3F70101020000000
  %7259 = fptoui float %7258 to i32
  %7260 = icmp ult i32 %7256, %7259
  br i1 %7260, label %7261, label %7430

; <label>:7261                                    ; preds = %7218
  %7262 = fcmp fast ogt float %72, 9.843750e-01
  %7263 = fadd fast float %6056, -4.000000e+00
  %7264 = select i1 %7262, float -4.000000e+00, float %7263
  %7265 = call float @dx.op.binary.f32(i32 35, float %7264, float 0.000000e+00)  ; FMax(a,b)
  %7266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7267 = extractvalue %dx.types.CBufRet.f32 %7266, 0
  %7268 = fadd fast float %7267, %7265
  %7269 = extractvalue %dx.types.CBufRet.f32 %7266, 2
  %7270 = fmul fast float %7268, %7269
  %7271 = call float @dx.op.unary.f32(i32 23, float %7270)  ; Log(value)
  %7272 = extractvalue %dx.types.CBufRet.f32 %7266, 3
  %7273 = fmul fast float %7272, %7271
  %7274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7275 = extractvalue %dx.types.CBufRet.f32 %7274, 2
  %7276 = fmul fast float %7273, %7275
  %7277 = call float @dx.op.unary.f32(i32 7, float %7276)  ; Saturate(value)
  %7278 = uitofp i32 %7256 to float
  %7279 = uitofp i32 %7259 to float
  %7280 = fadd fast float %7278, 5.000000e-01
  %7281 = fadd fast float %7279, 5.000000e-01
  %7282 = fmul fast float %7275, %7280
  %7283 = fmul fast float %7275, %7281
  %7284 = fadd fast float %7282, 0x3F0FFB4800000000
  %7285 = fadd fast float %7283, 0xBF0FFB4800000000
  %7286 = call float @dx.op.binary.f32(i32 35, float %7277, float %7284)  ; FMax(a,b)
  %7287 = call float @dx.op.binary.f32(i32 36, float %7286, float %7285)  ; FMin(a,b)
  %7288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7289 = extractvalue %dx.types.CBufRet.f32 %7288, 1
  %7290 = extractvalue %dx.types.CBufRet.f32 %7288, 2
  %7291 = extractvalue %dx.types.CBufRet.f32 %7288, 0
  %7292 = select i1 %5794, float %7291, float 0.000000e+00
  %7293 = fmul fast float %7289, %7287
  %7294 = fadd fast float %7292, %7293
  %7295 = fadd fast float %7292, %7290
  %7296 = fsub fast float %7289, %7290
  %7297 = fadd fast float %7296, %7292
  %7298 = call float @dx.op.binary.f32(i32 35, float %7294, float %7295)  ; FMax(a,b)
  %7299 = call float @dx.op.binary.f32(i32 36, float %7298, float %7297)  ; FMin(a,b)
  %7300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %7231, float %7232, float %7299, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7301 = extractvalue %dx.types.ResRet.f32 %7300, 0
  %7302 = extractvalue %dx.types.ResRet.f32 %7300, 1
  %7303 = extractvalue %dx.types.ResRet.f32 %7300, 2
  %7304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7305 = extractvalue %dx.types.CBufRet.i32 %7304, 0
  %7306 = extractvalue %dx.types.CBufRet.i32 %7304, 1
  %7307 = uitofp i32 %7305 to float
  %7308 = uitofp i32 %7306 to float
  %7309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7310 = extractvalue %dx.types.CBufRet.f32 %7309, 0
  %7311 = extractvalue %dx.types.CBufRet.f32 %7309, 1
  %7312 = fmul fast float %7307, %7231
  %7313 = fmul fast float %7308, %7232
  %7314 = fadd fast float %7312, -5.000000e-01
  %7315 = fadd fast float %7313, -5.000000e-01
  %7316 = call float @dx.op.unary.f32(i32 22, float %7314)  ; Frc(value)
  %7317 = call float @dx.op.unary.f32(i32 22, float %7315)  ; Frc(value)
  %7318 = fmul fast float %7316, %7316
  %7319 = fmul fast float %7318, %7316
  %7320 = fsub fast float 3.000000e+00, %7316
  %7321 = fmul fast float %7318, %7320
  %7322 = fmul fast float %7316, 3.000000e+00
  %7323 = fmul fast float %7319, 3.000000e+00
  %7324 = fmul fast float %7318, 6.000000e+00
  %7325 = fsub fast float %7323, %7324
  %7326 = fadd fast float %7325, 4.000000e+00
  %7327 = fmul fast float %7326, 0x3FC5555560000000
  %7328 = fmul fast float %7319, -3.000000e+00
  %7329 = fadd fast float %7318, %7316
  %7330 = fmul fast float %7329, 3.000000e+00
  %7331 = fadd fast float %7328, 1.000000e+00
  %7332 = fadd fast float %7331, %7330
  %7333 = fmul fast float %7319, 0x3FC5555560000000
  %7334 = fmul fast float %7317, %7317
  %7335 = fmul fast float %7334, %7317
  %7336 = fsub fast float 3.000000e+00, %7317
  %7337 = fmul fast float %7334, %7336
  %7338 = fmul fast float %7317, 3.000000e+00
  %7339 = fmul fast float %7335, 3.000000e+00
  %7340 = fmul fast float %7334, 6.000000e+00
  %7341 = fsub fast float %7339, %7340
  %7342 = fadd fast float %7341, 4.000000e+00
  %7343 = fmul fast float %7342, 0x3FC5555560000000
  %7344 = fmul fast float %7335, -3.000000e+00
  %7345 = fadd fast float %7334, %7317
  %7346 = fmul fast float %7345, 3.000000e+00
  %7347 = fadd fast float %7344, 1.000000e+00
  %7348 = fadd fast float %7347, %7346
  %7349 = fmul fast float %7335, 0x3FC5555560000000
  %7350 = fadd fast float %7316, 1.000000e+00
  %7351 = fsub fast float 1.000000e+00, %7322
  %7352 = fadd fast float %7351, %7321
  %7353 = fadd fast float %7352, %7326
  %7354 = fmul fast float %7353, 0x3FC5555560000000
  %7355 = fdiv fast float %7327, %7354
  %7356 = fsub fast float %7350, %7355
  %7357 = fsub fast float 1.000000e+00, %7316
  %7358 = fadd fast float %7332, %7319
  %7359 = fmul fast float %7358, 0x3FC5555560000000
  %7360 = fdiv fast float %7333, %7359
  %7361 = fadd fast float %7357, %7360
  %7362 = fadd fast float %7317, 1.000000e+00
  %7363 = fsub fast float 1.000000e+00, %7338
  %7364 = fadd fast float %7363, %7337
  %7365 = fadd fast float %7364, %7342
  %7366 = fmul fast float %7365, 0x3FC5555560000000
  %7367 = fdiv fast float %7343, %7366
  %7368 = fsub fast float %7362, %7367
  %7369 = fsub fast float 1.000000e+00, %7317
  %7370 = fadd fast float %7348, %7335
  %7371 = fmul fast float %7370, 0x3FC5555560000000
  %7372 = fdiv fast float %7349, %7371
  %7373 = fadd fast float %7372, %7369
  %7374 = fmul fast float %7356, %7310
  %7375 = fsub fast float %7231, %7374
  %7376 = fmul fast float %7361, %7310
  %7377 = fadd fast float %7376, %7231
  %7378 = fmul fast float %7373, %7311
  %7379 = fadd fast float %7378, %7232
  %7380 = fmul fast float %7368, %7311
  %7381 = fsub fast float %7232, %7380
  %7382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7375, float %7381, float %7299, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7383 = extractvalue %dx.types.ResRet.f32 %7382, 0
  %7384 = extractvalue %dx.types.ResRet.f32 %7382, 1
  %7385 = extractvalue %dx.types.ResRet.f32 %7382, 2
  %7386 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7377, float %7381, float %7299, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7387 = extractvalue %dx.types.ResRet.f32 %7386, 0
  %7388 = extractvalue %dx.types.ResRet.f32 %7386, 1
  %7389 = extractvalue %dx.types.ResRet.f32 %7386, 2
  %7390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7375, float %7379, float %7299, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7391 = extractvalue %dx.types.ResRet.f32 %7390, 0
  %7392 = extractvalue %dx.types.ResRet.f32 %7390, 1
  %7393 = extractvalue %dx.types.ResRet.f32 %7390, 2
  %7394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7377, float %7379, float %7299, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7395 = extractvalue %dx.types.ResRet.f32 %7394, 0
  %7396 = extractvalue %dx.types.ResRet.f32 %7394, 1
  %7397 = extractvalue %dx.types.ResRet.f32 %7394, 2
  %7398 = fsub fast float %7391, %7383
  %7399 = fsub fast float %7392, %7384
  %7400 = fsub fast float %7393, %7385
  %7401 = fmul fast float %7398, %7371
  %7402 = fmul fast float %7399, %7371
  %7403 = fmul fast float %7400, %7371
  %7404 = fadd fast float %7401, %7383
  %7405 = fadd fast float %7402, %7384
  %7406 = fadd fast float %7403, %7385
  %7407 = fsub fast float %7395, %7387
  %7408 = fsub fast float %7396, %7388
  %7409 = fsub fast float %7397, %7389
  %7410 = fmul fast float %7407, %7371
  %7411 = fmul fast float %7408, %7371
  %7412 = fmul fast float %7409, %7371
  %7413 = fsub fast float %7387, %7404
  %7414 = fadd fast float %7413, %7410
  %7415 = fsub fast float %7388, %7405
  %7416 = fadd fast float %7415, %7411
  %7417 = fsub fast float %7389, %7406
  %7418 = fadd fast float %7417, %7412
  %7419 = fmul fast float %7414, %7359
  %7420 = fmul fast float %7416, %7359
  %7421 = fmul fast float %7418, %7359
  %7422 = fadd fast float %7419, %7404
  %7423 = fadd fast float %7420, %7405
  %7424 = fadd fast float %7421, %7406
  %7425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7426 = extractvalue %dx.types.CBufRet.f32 %7425, 1
  %7427 = fmul fast float %7422, %7426
  %7428 = fmul fast float %7423, %7426
  %7429 = fmul fast float %7424, %7426
  br label %7430

; <label>:7430                                    ; preds = %7261, %7218
  %7431 = phi float [ %7301, %7261 ], [ 1.000000e+00, %7218 ]
  %7432 = phi float [ %7302, %7261 ], [ 1.000000e+00, %7218 ]
  %7433 = phi float [ %7303, %7261 ], [ 1.000000e+00, %7218 ]
  %7434 = phi float [ %7427, %7261 ], [ 0.000000e+00, %7218 ]
  %7435 = phi float [ %7428, %7261 ], [ 0.000000e+00, %7218 ]
  %7436 = phi float [ %7429, %7261 ], [ 0.000000e+00, %7218 ]
  %7437 = fmul fast float %7434, %5772
  %7438 = fmul fast float %7435, %5772
  %7439 = fmul fast float %7436, %5772
  %7440 = fmul fast float %7431, %7225
  %7441 = call float @dx.op.dot3.f32(i32 55, float %7431, float %7432, float %7433, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7442 = call float @dx.op.dot3.f32(i32 55, float %7437, float %7438, float %7439, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7443 = select i1 %206, float %7441, float %7431
  %7444 = select i1 %206, float %7441, float %7432
  %7445 = select i1 %206, float 1.000000e+00, float %7433
  %7446 = select i1 %206, float %7442, float %7437
  %7447 = select i1 %206, float 0.000000e+00, float %7438
  %7448 = select i1 %206, float 0.000000e+00, float %7439
  %7449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7450 = extractvalue %dx.types.CBufRet.i32 %7449, 3
  %7451 = and i32 %7450, 3
  %7452 = icmp ne i32 %7451, 0
  %7453 = and i32 %7450, 4
  %7454 = icmp ne i32 %7453, 0
  %7455 = and i1 %7452, %7454
  %7456 = and i1 %206, %7455
  br i1 %7456, label %7457, label %7463

; <label>:7457                                    ; preds = %7430
  %7458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7459 = extractvalue %dx.types.CBufRet.f32 %7458, 1
  %7460 = fadd fast float %7440, -1.000000e+00
  %7461 = fmul fast float %7459, %7460
  %7462 = fadd fast float %7461, 1.000000e+00
  br label %7463

; <label>:7463                                    ; preds = %7457, %7430
  %7464 = phi float [ %7462, %7457 ], [ %7440, %7430 ]
  %7465 = fadd fast float %7222, %7219
  %7466 = fmul fast float %7443, %7465
  %7467 = fadd fast float %7466, %7446
  %7468 = fadd fast float %7223, %7220
  %7469 = fmul fast float %7444, %7468
  %7470 = fadd fast float %7469, %7447
  %7471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7472 = extractvalue %dx.types.CBufRet.f32 %7471, 0
  br i1 %206, label %7473, label %7496

; <label>:7473                                    ; preds = %7463
  %7474 = fadd fast float %7467, %7470
  %7475 = fmul fast float %7472, %7474
  %7476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7477 = extractvalue %dx.types.CBufRet.f32 %7476, 3
  %7478 = extractvalue %dx.types.CBufRet.f32 %5776, 1
  %7479 = fsub fast float %5781, %5775
  %7480 = fadd fast float %7479, %5782
  %7481 = fsub fast float %7480, %7478
  %7482 = extractvalue %dx.types.CBufRet.f32 %5776, 2
  %7483 = fmul fast float %7481, %7482
  %7484 = call float @dx.op.unary.f32(i32 7, float %7483)  ; Saturate(value)
  %7485 = fsub fast float %7484, %7477
  %7486 = fmul fast float %7485, %7464
  %7487 = fadd fast float %7486, %7477
  %7488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7489 = extractvalue %dx.types.CBufRet.f32 %7488, 0
  %7490 = fsub fast float %7487, %7489
  %7491 = fmul fast float %7490, 1.000000e+01
  %7492 = call float @dx.op.unary.f32(i32 7, float %7491)  ; Saturate(value)
  %7493 = fmul fast float %7492, %5771
  %7494 = fadd fast float %7493, %5772
  %7495 = fmul fast float %7494, %7487
  br label %7520

; <label>:7496                                    ; preds = %7463
  %7497 = fadd fast float %7224, %7221
  %7498 = fmul fast float %7445, %7497
  %7499 = fadd fast float %7498, %7448
  %7500 = fmul fast float %7472, %7467
  %7501 = fmul fast float %7472, %7470
  %7502 = fmul fast float %7472, %7499
  %7503 = call float @dx.op.binary.f32(i32 35, float %7501, float %7502)  ; FMax(a,b)
  %7504 = call float @dx.op.binary.f32(i32 35, float %7500, float %7503)  ; FMax(a,b)
  %7505 = call float @dx.op.binary.f32(i32 35, float %7504, float %5772)  ; FMax(a,b)
  %7506 = fcmp fast ugt float %7505, 0x3F10000000000000
  br i1 %7506, label %7508, label %7507

; <label>:7507                                    ; preds = %7496
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7508

; <label>:7508                                    ; preds = %7507, %7496
  %7509 = add i32 %41, 356
  %7510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %7509, i32 undef)  ; BufferLoad(srv,index,wot)
  %7511 = extractvalue %dx.types.ResRet.i32 %7510, 0
  %7512 = and i32 %7511, 32
  %7513 = icmp eq i32 %7512, 0
  br i1 %7513, label %7520, label %7514

; <label>:7514                                    ; preds = %7508
  %7515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7516 = extractvalue %dx.types.CBufRet.f32 %7515, 0
  %7517 = fmul fast float %7516, 0x3FE99999A0000000
  %7518 = fadd fast float %7516, %7500
  %7519 = fadd fast float %7517, %7502
  br label %7520

; <label>:7520                                    ; preds = %7514, %7508, %7473
  %7521 = phi float [ %7475, %7473 ], [ %7518, %7514 ], [ %7500, %7508 ]
  %7522 = phi float [ %7495, %7473 ], [ %7501, %7514 ], [ %7501, %7508 ]
  %7523 = phi float [ %7494, %7473 ], [ %7519, %7514 ], [ %7502, %7508 ]
  %7524 = phi float [ %7494, %7473 ], [ %5772, %7514 ], [ %5772, %7508 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7525 = call float @dx.op.binary.f32(i32 36, float %7521, float 3.225500e+04)  ; FMin(a,b)
  %7526 = call float @dx.op.binary.f32(i32 36, float %7522, float 3.225500e+04)  ; FMin(a,b)
  %7527 = call float @dx.op.binary.f32(i32 36, float %7523, float 3.225500e+04)  ; FMin(a,b)
  %7528 = call float @dx.op.binary.f32(i32 36, float %7524, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7525)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7526)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7527)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7528)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!54 = !{[42 x i32] [i32 40, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
!55 = !{void ()* @ps_main, !"ps_main", !56, !4, !76}
!56 = !{!57, !74, null}
!57 = !{!58, !61, !62, !64, !66, !67, !68, !69, !70, !71, !73}
!58 = !{i32 0, !"SV_Position", i8 9, i8 3, !59, i8 4, i32 1, i8 4, i32 0, i8 0, !60}
!59 = !{i32 0}
!60 = !{i32 3, i32 15}
!61 = !{i32 1, !"COLOR", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 1, i8 0, !60}
!62 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 2, i8 0, !63}
!63 = !{i32 3, i32 3}
!64 = !{i32 3, !"NORMAL", i8 9, i8 0, !59, i8 2, i32 1, i8 3, i32 3, i8 0, !65}
!65 = !{i32 3, i32 7}
!66 = !{i32 4, !"TANGENT", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 4, i8 0, !60}
!67 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !59, i8 2, i32 1, i8 3, i32 5, i8 0, !65}
!68 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 6, i8 0, !60}
!69 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !59, i8 2, i32 1, i8 2, i32 7, i8 0, !63}
!70 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 8, i8 0, !60}
!71 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !59, i8 1, i32 1, i8 4, i32 9, i8 0, !72}
!72 = !{i32 3, i32 13}
!73 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !59, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!74 = !{!75}
!75 = !{i32 0, !"SV_Target", i8 9, i8 16, !59, i8 0, i32 1, i8 4, i32 0, i8 0, !60}
!76 = !{i32 0, i64 16}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = !{!83, !83, i64 0}
!83 = !{!"int", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C/C++ TBAA"}
!86 = !{!87, !89, !91, !93}
!87 = distinct !{!87, !88, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!88 = distinct !{!88, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!89 = distinct !{!89, !90, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!90 = distinct !{!90, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!91 = distinct !{!91, !92, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!92 = distinct !{!92, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!93 = distinct !{!93, !94, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!94 = distinct !{!94, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = !{!104, !104, i64 0}
!104 = !{!"float", !84, i64 0}
!105 = !{!106, !108, !110, !111, !113, !114, !115, !117, !118, !119}
!106 = distinct !{!106, !107, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!107 = distinct !{!107, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!108 = distinct !{!108, !109, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!109 = distinct !{!109, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!110 = distinct !{!110, !109, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!111 = distinct !{!111, !112, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!112 = distinct !{!112, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!113 = distinct !{!113, !112, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!114 = distinct !{!114, !112, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!115 = distinct !{!115, !116, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!116 = distinct !{!116, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!117 = distinct !{!117, !116, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!118 = distinct !{!118, !116, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!119 = distinct !{!119, !120, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!120 = distinct !{!120, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"\01?sort@@YAXAIAM00@Z: %c"}
!123 = distinct !{!123, !"\01?sort@@YAXAIAM00@Z"}
!124 = !{!125, !126, !106, !108, !110, !111, !113, !114, !115, !117, !118, !119}
!125 = distinct !{!125, !123, !"\01?sort@@YAXAIAM00@Z: %a"}
!126 = distinct !{!126, !123, !"\01?sort@@YAXAIAM00@Z: %b"}
!127 = !{!126}
!128 = !{!125, !122, !106, !108, !110, !111, !113, !114, !115, !117, !118, !119}
!129 = !{!125}
!130 = !{!126, !122, !106, !108, !110, !111, !113, !114, !115, !117, !118, !119}
!131 = !{!132}
!132 = distinct !{!132, !133, !"\01?sort@@YAXAIAM00@Z: %c"}
!133 = distinct !{!133, !"\01?sort@@YAXAIAM00@Z"}
!134 = !{!135, !136, !106, !108, !110, !111, !113, !114, !115, !117, !118, !119}
!135 = distinct !{!135, !133, !"\01?sort@@YAXAIAM00@Z: %a"}
!136 = distinct !{!136, !133, !"\01?sort@@YAXAIAM00@Z: %b"}
!137 = !{!136}
!138 = !{!135, !132, !106, !108, !110, !111, !113, !114, !115, !117, !118, !119}
!139 = !{!135}
!140 = !{!136, !132, !106, !108, !110, !111, !113, !114, !115, !117, !118, !119}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 2}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 1}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}

