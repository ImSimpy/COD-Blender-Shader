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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 45d61233f47080a842cba280f616c1a2
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
; Number of inputs: 40, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 28, 29, 36, 38, 39 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 28, 29, 36, 38, 39 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 28, 29, 36, 38, 39 }
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
  %389 = add i32 %41, 472
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
  %665 = add i32 %41, 424
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
  %717 = add i32 %41, 408
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
  %741 = add i32 %41, 360
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
  %764 = add i32 %41, 440
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
  %962 = add i32 %41, 376
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
  %1046 = add i32 %41, 392
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
  %1098 = phi float [ 0.000000e+00, %431 ], [ %1079, %1078 ]
  %1099 = phi float [ 0.000000e+00, %431 ], [ %1080, %1078 ]
  %1100 = phi float [ 0.000000e+00, %431 ], [ %1081, %1078 ]
  %1101 = phi float [ 0.000000e+00, %431 ], [ %951, %1078 ]
  %1102 = phi float [ 0.000000e+00, %431 ], [ %952, %1078 ]
  %1103 = phi float [ 0.000000e+00, %431 ], [ %953, %1078 ]
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
  %1338 = add i32 %41, 428
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
  %1390 = add i32 %41, 412
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
  %1416 = add i32 %41, 364
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
  %1439 = add i32 %41, 444
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
  %1637 = add i32 %41, 380
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
  %1721 = add i32 %41, 396
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
  %1772 = fmul fast float %1771, %1101
  %1773 = fmul fast float %1771, %1102
  %1774 = fmul fast float %1771, %1103
  %1775 = fmul fast float %1771, %1098
  %1776 = fmul fast float %1771, %1099
  %1777 = fmul fast float %1771, %1100
  br label %1778

; <label>:1778                                    ; preds = %1770, %1753
  %1779 = phi float [ %1775, %1770 ], [ %1098, %1753 ]
  %1780 = phi float [ %1776, %1770 ], [ %1099, %1753 ]
  %1781 = phi float [ %1777, %1770 ], [ %1100, %1753 ]
  %1782 = phi float [ %1772, %1770 ], [ %1101, %1753 ]
  %1783 = phi float [ %1773, %1770 ], [ %1102, %1753 ]
  %1784 = phi float [ %1774, %1770 ], [ %1103, %1753 ]
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
  %1798 = fsub fast float %1626, %1782
  %1799 = fsub fast float %1627, %1783
  %1800 = fsub fast float %1628, %1784
  %1801 = fmul fast float %1792, %1798
  %1802 = fmul fast float %1792, %1799
  %1803 = fmul fast float %1792, %1800
  %1804 = fadd fast float %1801, %1782
  %1805 = fadd fast float %1802, %1783
  %1806 = fadd fast float %1803, %1784
  %1807 = fsub fast float %1612, %1104
  %1808 = fmul fast float %1792, %1807
  %1809 = fadd fast float %1808, %1104
  %1810 = fsub fast float %1754, %1779
  %1811 = fsub fast float %1755, %1780
  %1812 = fsub fast float %1756, %1781
  %1813 = fmul fast float %1797, %1810
  %1814 = fmul fast float %1797, %1811
  %1815 = fmul fast float %1797, %1812
  %1816 = fadd fast float %1813, %1779
  %1817 = fadd fast float %1814, %1780
  %1818 = fadd fast float %1815, %1781
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
  %1834 = fmul fast float %1831, %1782
  %1835 = fmul fast float %1832, %1783
  %1836 = fmul fast float %1833, %1784
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
  %1854 = fmul fast float %1853, %1782
  %1855 = fadd fast float %1854, %1852
  %1856 = fmul fast float %1855, %1782
  %1857 = fmul fast float %1850, 2.000000e+00
  %1858 = fsub fast float 1.000000e+00, %1857
  %1859 = fmul fast float %1858, %1783
  %1860 = fadd fast float %1859, %1857
  %1861 = fmul fast float %1860, %1783
  %1862 = fmul fast float %1851, 2.000000e+00
  %1863 = fsub fast float 1.000000e+00, %1862
  %1864 = fmul fast float %1863, %1784
  %1865 = fadd fast float %1864, %1862
  %1866 = fmul fast float %1865, %1784
  br label %1867

; <label>:1867                                    ; preds = %1839, %1837, %1824, %1794, %1778
  %1868 = phi float [ %1779, %1778 ], [ %1779, %1839 ], [ %1779, %1837 ], [ %1779, %1824 ], [ %1816, %1794 ]
  %1869 = phi float [ %1780, %1778 ], [ %1780, %1839 ], [ %1780, %1837 ], [ %1780, %1824 ], [ %1817, %1794 ]
  %1870 = phi float [ %1781, %1778 ], [ %1781, %1839 ], [ %1781, %1837 ], [ %1781, %1824 ], [ %1818, %1794 ]
  %1871 = phi float [ %1782, %1778 ], [ %1856, %1839 ], [ %1782, %1837 ], [ %1834, %1824 ], [ %1804, %1794 ]
  %1872 = phi float [ %1783, %1778 ], [ %1861, %1839 ], [ %1783, %1837 ], [ %1835, %1824 ], [ %1805, %1794 ]
  %1873 = phi float [ %1784, %1778 ], [ %1866, %1839 ], [ %1784, %1837 ], [ %1836, %1824 ], [ %1806, %1794 ]
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
  %2192 = add i32 %41, 432
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
  %2244 = add i32 %41, 416
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
  %2270 = add i32 %41, 368
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
  %2293 = add i32 %41, 448
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
  %2491 = add i32 %41, 384
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
  %2575 = add i32 %41, 400
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
  %2626 = fmul fast float %2625, %1956
  %2627 = fmul fast float %2625, %1957
  %2628 = fmul fast float %2625, %1958
  %2629 = fmul fast float %2625, %1953
  %2630 = fmul fast float %2625, %1954
  %2631 = fmul fast float %2625, %1955
  br label %2632

; <label>:2632                                    ; preds = %2624, %2607
  %2633 = phi float [ %2629, %2624 ], [ %1953, %2607 ]
  %2634 = phi float [ %2630, %2624 ], [ %1954, %2607 ]
  %2635 = phi float [ %2631, %2624 ], [ %1955, %2607 ]
  %2636 = phi float [ %2626, %2624 ], [ %1956, %2607 ]
  %2637 = phi float [ %2627, %2624 ], [ %1957, %2607 ]
  %2638 = phi float [ %2628, %2624 ], [ %1958, %2607 ]
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
  %2652 = fsub fast float %2480, %2636
  %2653 = fsub fast float %2481, %2637
  %2654 = fsub fast float %2482, %2638
  %2655 = fmul fast float %2646, %2652
  %2656 = fmul fast float %2646, %2653
  %2657 = fmul fast float %2646, %2654
  %2658 = fadd fast float %2655, %2636
  %2659 = fadd fast float %2656, %2637
  %2660 = fadd fast float %2657, %2638
  %2661 = fsub fast float %2466, %1959
  %2662 = fmul fast float %2646, %2661
  %2663 = fadd fast float %2662, %1959
  %2664 = fsub fast float %2608, %2633
  %2665 = fsub fast float %2609, %2634
  %2666 = fsub fast float %2610, %2635
  %2667 = fmul fast float %2651, %2664
  %2668 = fmul fast float %2651, %2665
  %2669 = fmul fast float %2651, %2666
  %2670 = fadd fast float %2667, %2633
  %2671 = fadd fast float %2668, %2634
  %2672 = fadd fast float %2669, %2635
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
  %2688 = fmul fast float %2685, %2636
  %2689 = fmul fast float %2686, %2637
  %2690 = fmul fast float %2687, %2638
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
  %2708 = fmul fast float %2707, %2636
  %2709 = fadd fast float %2708, %2706
  %2710 = fmul fast float %2709, %2636
  %2711 = fmul fast float %2704, 2.000000e+00
  %2712 = fsub fast float 1.000000e+00, %2711
  %2713 = fmul fast float %2712, %2637
  %2714 = fadd fast float %2713, %2711
  %2715 = fmul fast float %2714, %2637
  %2716 = fmul fast float %2705, 2.000000e+00
  %2717 = fsub fast float 1.000000e+00, %2716
  %2718 = fmul fast float %2717, %2638
  %2719 = fadd fast float %2718, %2716
  %2720 = fmul fast float %2719, %2638
  br label %2721

; <label>:2721                                    ; preds = %2693, %2691, %2678, %2648, %2632
  %2722 = phi float [ %2633, %2632 ], [ %2633, %2693 ], [ %2633, %2691 ], [ %2633, %2678 ], [ %2670, %2648 ]
  %2723 = phi float [ %2634, %2632 ], [ %2634, %2693 ], [ %2634, %2691 ], [ %2634, %2678 ], [ %2671, %2648 ]
  %2724 = phi float [ %2635, %2632 ], [ %2635, %2693 ], [ %2635, %2691 ], [ %2635, %2678 ], [ %2672, %2648 ]
  %2725 = phi float [ %2636, %2632 ], [ %2710, %2693 ], [ %2636, %2691 ], [ %2688, %2678 ], [ %2658, %2648 ]
  %2726 = phi float [ %2637, %2632 ], [ %2715, %2693 ], [ %2637, %2691 ], [ %2689, %2678 ], [ %2659, %2648 ]
  %2727 = phi float [ %2638, %2632 ], [ %2720, %2693 ], [ %2638, %2691 ], [ %2690, %2678 ], [ %2660, %2648 ]
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
  %3046 = add i32 %41, 436
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
  %3098 = add i32 %41, 420
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
  %3124 = add i32 %41, 372
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
  %3147 = add i32 %41, 452
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
  %3345 = add i32 %41, 388
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
  %3429 = add i32 %41, 404
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
  %3480 = fmul fast float %3479, %2810
  %3481 = fmul fast float %3479, %2811
  %3482 = fmul fast float %3479, %2812
  %3483 = fmul fast float %3479, %2807
  %3484 = fmul fast float %3479, %2808
  %3485 = fmul fast float %3479, %2809
  br label %3486

; <label>:3486                                    ; preds = %3478, %3461
  %3487 = phi float [ %3483, %3478 ], [ %2807, %3461 ]
  %3488 = phi float [ %3484, %3478 ], [ %2808, %3461 ]
  %3489 = phi float [ %3485, %3478 ], [ %2809, %3461 ]
  %3490 = phi float [ %3480, %3478 ], [ %2810, %3461 ]
  %3491 = phi float [ %3481, %3478 ], [ %2811, %3461 ]
  %3492 = phi float [ %3482, %3478 ], [ %2812, %3461 ]
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
  %3506 = fsub fast float %3334, %3490
  %3507 = fsub fast float %3335, %3491
  %3508 = fsub fast float %3336, %3492
  %3509 = fmul fast float %3500, %3506
  %3510 = fmul fast float %3500, %3507
  %3511 = fmul fast float %3500, %3508
  %3512 = fadd fast float %3509, %3490
  %3513 = fadd fast float %3510, %3491
  %3514 = fadd fast float %3511, %3492
  %3515 = fsub fast float %3320, %2813
  %3516 = fmul fast float %3500, %3515
  %3517 = fadd fast float %3516, %2813
  %3518 = fsub fast float %3462, %3487
  %3519 = fsub fast float %3463, %3488
  %3520 = fsub fast float %3464, %3489
  %3521 = fmul fast float %3505, %3518
  %3522 = fmul fast float %3505, %3519
  %3523 = fmul fast float %3505, %3520
  %3524 = fadd fast float %3521, %3487
  %3525 = fadd fast float %3522, %3488
  %3526 = fadd fast float %3523, %3489
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
  %3542 = fmul fast float %3539, %3490
  %3543 = fmul fast float %3540, %3491
  %3544 = fmul fast float %3541, %3492
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
  %3562 = fmul fast float %3561, %3490
  %3563 = fadd fast float %3562, %3560
  %3564 = fmul fast float %3563, %3490
  %3565 = fmul fast float %3558, 2.000000e+00
  %3566 = fsub fast float 1.000000e+00, %3565
  %3567 = fmul fast float %3566, %3491
  %3568 = fadd fast float %3567, %3565
  %3569 = fmul fast float %3568, %3491
  %3570 = fmul fast float %3559, 2.000000e+00
  %3571 = fsub fast float 1.000000e+00, %3570
  %3572 = fmul fast float %3571, %3492
  %3573 = fadd fast float %3572, %3570
  %3574 = fmul fast float %3573, %3492
  br label %3575

; <label>:3575                                    ; preds = %3547, %3545, %3532, %3502, %3486
  %3576 = phi float [ %3487, %3486 ], [ %3487, %3547 ], [ %3487, %3545 ], [ %3487, %3532 ], [ %3524, %3502 ]
  %3577 = phi float [ %3488, %3486 ], [ %3488, %3547 ], [ %3488, %3545 ], [ %3488, %3532 ], [ %3525, %3502 ]
  %3578 = phi float [ %3489, %3486 ], [ %3489, %3547 ], [ %3489, %3545 ], [ %3489, %3532 ], [ %3526, %3502 ]
  %3579 = phi float [ %3490, %3486 ], [ %3564, %3547 ], [ %3490, %3545 ], [ %3542, %3532 ], [ %3512, %3502 ]
  %3580 = phi float [ %3491, %3486 ], [ %3569, %3547 ], [ %3491, %3545 ], [ %3543, %3532 ], [ %3513, %3502 ]
  %3581 = phi float [ %3492, %3486 ], [ %3574, %3547 ], [ %3492, %3545 ], [ %3544, %3532 ], [ %3514, %3502 ]
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
  %3671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3672 = extractvalue %dx.types.CBufRet.f32 %3671, 0
  %3673 = call float @dx.op.dot2.f32(i32 54, float %3659, float %3660, float %3659, float %3660)  ; Dot2(ax,ay,bx,by)
  %3674 = fmul fast float %3673, 0x3FE3333340000000
  %3675 = fsub fast float 1.000000e+00, %3674
  %3676 = call float @dx.op.dot3.f32(i32 55, float %3659, float %3660, float %3675, float %3659, float %3660, float %3675)  ; Dot3(ax,ay,az,bx,by,bz)
  %3677 = call float @dx.op.unary.f32(i32 25, float %3676)  ; Rsqrt(value)
  %3678 = fmul fast float %3677, %3659
  %3679 = fmul fast float %3677, %3660
  %3680 = fmul fast float %3675, %3677
  %3681 = fmul fast float %3680, %89
  %3682 = fmul fast float %3680, %90
  %3683 = fmul fast float %3680, %91
  %3684 = fmul fast float %3678, %57
  %3685 = fmul fast float %3678, %58
  %3686 = fmul fast float %3678, %59
  %3687 = fadd fast float %3681, %3684
  %3688 = fadd fast float %3682, %3685
  %3689 = fadd fast float %3683, %3686
  %3690 = fmul fast float %101, %3679
  %3691 = fmul fast float %102, %3679
  %3692 = fmul fast float %103, %3679
  %3693 = fadd fast float %3687, %3690
  %3694 = fadd fast float %3688, %3691
  %3695 = fadd fast float %3689, %3692
  %3696 = call float @dx.op.dot3.f32(i32 55, float %3693, float %3694, float %3695, float %3693, float %3694, float %3695)  ; Dot3(ax,ay,az,bx,by,bz)
  %3697 = call float @dx.op.unary.f32(i32 25, float %3696)  ; Rsqrt(value)
  %3698 = fmul fast float %3693, %3697
  %3699 = fmul fast float %3694, %3697
  %3700 = fmul fast float %3695, %3697
  %3701 = and i32 %43, 1
  %3702 = icmp eq i32 %3701, 0
  br i1 %3702, label %3703, label %4215

; <label>:3703                                    ; preds = %3658
  %3704 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3705 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %3706 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %3707 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3708 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %3709 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %3710 = fadd fast float %3704, %145
  %3711 = fadd fast float %3705, %146
  %3712 = fadd fast float %3706, %147
  %3713 = fadd fast float %3707, %145
  %3714 = fadd fast float %3708, %146
  %3715 = fadd fast float %3709, %147
  %3716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3717 = extractvalue %dx.types.CBufRet.f32 %3716, 0
  %3718 = extractvalue %dx.types.CBufRet.f32 %3716, 1
  %3719 = extractvalue %dx.types.CBufRet.f32 %3716, 2
  %3720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3721 = extractvalue %dx.types.CBufRet.f32 %3720, 2
  %3722 = extractvalue %dx.types.CBufRet.f32 %3720, 3
  %3723 = fmul fast float %3717, %82
  %3724 = fmul fast float %3723, %3721
  %3725 = fmul fast float %3718, %83
  %3726 = fmul fast float %3725, %3722
  %3727 = fptoui float %3724 to i32
  %3728 = fptoui float %3726 to i32
  %3729 = fadd fast float %3717, -1.000000e+00
  %3730 = fadd fast float %3718, -1.000000e+00
  %3731 = fptoui float %3729 to i32
  %3732 = fptoui float %3730 to i32
  %3733 = call i32 @dx.op.binary.i32(i32 40, i32 %3727, i32 %3731)  ; UMin(a,b)
  %3734 = call i32 @dx.op.binary.i32(i32 40, i32 %3728, i32 %3732)  ; UMin(a,b)
  %3735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3736 = extractvalue %dx.types.CBufRet.f32 %3735, 2
  %3737 = extractvalue %dx.types.CBufRet.f32 %3735, 3
  %3738 = fmul fast float %3736, %73
  %3739 = fsub fast float %3738, %3737
  %3740 = fadd fast float %3719, -1.000000e+00
  %3741 = call float @dx.op.binary.f32(i32 36, float %3739, float %3740)  ; FMin(a,b)
  %3742 = fptoui float %3741 to i32
  %3743 = fptoui float %3717 to i32
  %3744 = fptoui float %3718 to i32
  %3745 = mul i32 %3742, %3744
  %3746 = add i32 %3745, %3734
  %3747 = mul i32 %3746, %3743
  %3748 = add i32 %3747, %3733
  %3749 = shl i32 %3748, 2
  %3750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.i32 %3750, 0
  %3752 = and i32 %3751, 1023
  %3753 = lshr i32 %3751, 10
  %3754 = icmp eq i32 %3752, 0
  br i1 %3754, label %4183, label %3755

; <label>:3755                                    ; preds = %3703
  %3756 = and i32 %3751, 1023
  br label %3757

; <label>:3757                                    ; preds = %3884, %3755
  %3758 = phi i32 [ %3834, %3884 ], [ 0, %3755 ]
  %3759 = phi float [ %3885, %3884 ], [ 0.000000e+00, %3755 ]
  %3760 = phi float [ %3886, %3884 ], [ %1105, %3755 ]
  %3761 = phi float [ %3887, %3884 ], [ %3672, %3755 ]
  %3762 = phi float [ %3888, %3884 ], [ %3670, %3755 ]
  %3763 = phi float [ %3889, %3884 ], [ 0.000000e+00, %3755 ]
  %3764 = phi float [ %3890, %3884 ], [ 0.000000e+00, %3755 ]
  %3765 = phi float [ %3891, %3884 ], [ %3661, %3755 ]
  %3766 = phi float [ %3892, %3884 ], [ %3662, %3755 ]
  %3767 = phi float [ %3893, %3884 ], [ %3663, %3755 ]
  %3768 = phi float [ %3894, %3884 ], [ %3698, %3755 ]
  %3769 = phi float [ %3895, %3884 ], [ %3699, %3755 ]
  %3770 = phi float [ %3896, %3884 ], [ %3700, %3755 ]
  %3771 = phi float [ %3897, %3884 ], [ %3669, %3755 ]
  %3772 = phi float [ %3898, %3884 ], [ %3668, %3755 ]
  %3773 = phi float [ %3899, %3884 ], [ 0.000000e+00, %3755 ]
  %3774 = phi float [ %3900, %3884 ], [ %3667, %3755 ]
  %3775 = phi float [ %3901, %3884 ], [ %3664, %3755 ]
  %3776 = phi float [ %3902, %3884 ], [ %3665, %3755 ]
  %3777 = phi float [ %3903, %3884 ], [ %3666, %3755 ]
  %3778 = add nuw nsw i32 %3758, %3753
  %3779 = shl i32 %3778, 2
  %3780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3779, i32 undef)  ; BufferLoad(srv,index,wot)
  %3781 = extractvalue %dx.types.ResRet.i32 %3780, 0
  %3782 = shl i32 %3781, 8
  %3783 = or i32 %3782, 48
  %3784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3783, i32 undef)  ; BufferLoad(srv,index,wot)
  %3785 = extractvalue %dx.types.ResRet.f32 %3784, 0
  %3786 = extractvalue %dx.types.ResRet.f32 %3784, 1
  %3787 = extractvalue %dx.types.ResRet.f32 %3784, 2
  %3788 = extractvalue %dx.types.ResRet.f32 %3784, 3
  %3789 = or i32 %3782, 64
  %3790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3789, i32 undef)  ; BufferLoad(srv,index,wot)
  %3791 = extractvalue %dx.types.ResRet.i32 %3790, 0
  %3792 = extractvalue %dx.types.ResRet.i32 %3790, 1
  %3793 = or i32 %3782, 80
  %3794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3793, i32 undef)  ; BufferLoad(srv,index,wot)
  %3795 = extractvalue %dx.types.ResRet.f32 %3794, 2
  %3796 = extractvalue %dx.types.ResRet.f32 %3794, 3
  %3797 = or i32 %3782, 96
  %3798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3797, i32 undef)  ; BufferLoad(srv,index,wot)
  %3799 = extractvalue %dx.types.ResRet.f32 %3798, 0
  %3800 = extractvalue %dx.types.ResRet.f32 %3798, 1
  %3801 = extractvalue %dx.types.ResRet.f32 %3798, 2
  %3802 = extractvalue %dx.types.ResRet.f32 %3798, 3
  %3803 = or i32 %3782, 112
  %3804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3803, i32 undef)  ; BufferLoad(srv,index,wot)
  %3805 = extractvalue %dx.types.ResRet.f32 %3804, 2
  %3806 = or i32 %3782, 128
  %3807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3808 = extractvalue %dx.types.ResRet.f32 %3807, 0
  %3809 = extractvalue %dx.types.ResRet.f32 %3807, 1
  %3810 = extractvalue %dx.types.ResRet.f32 %3807, 2
  %3811 = extractvalue %dx.types.ResRet.f32 %3807, 3
  %3812 = or i32 %3782, 144
  %3813 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3814 = extractvalue %dx.types.ResRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.ResRet.f32 %3813, 1
  %3816 = extractvalue %dx.types.ResRet.f32 %3813, 2
  %3817 = extractvalue %dx.types.ResRet.f32 %3813, 3
  %3818 = or i32 %3782, 160
  %3819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3818, i32 undef)  ; BufferLoad(srv,index,wot)
  %3820 = extractvalue %dx.types.ResRet.f32 %3819, 0
  %3821 = extractvalue %dx.types.ResRet.f32 %3819, 1
  %3822 = extractvalue %dx.types.ResRet.f32 %3819, 2
  %3823 = extractvalue %dx.types.ResRet.f32 %3819, 3
  %3824 = or i32 %3782, 192
  %3825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3824, i32 undef)  ; BufferLoad(srv,index,wot)
  %3826 = extractvalue %dx.types.ResRet.i32 %3825, 0
  %3827 = or i32 %3782, 208
  %3828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3829 = extractvalue %dx.types.ResRet.f32 %3828, 0
  %3830 = or i32 %3782, 248
  %3831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3830, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.f32 %3831, 1
  %3834 = add nuw nsw i32 %3758, 1
  %3835 = bitcast float %3788 to i32
  %3836 = and i32 %3835, 512
  %3837 = icmp eq i32 %3836, 0
  %3838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3782, i32 undef)  ; BufferLoad(srv,index,wot)
  %3839 = extractvalue %dx.types.ResRet.f32 %3838, 0
  %3840 = extractvalue %dx.types.ResRet.f32 %3838, 1
  %3841 = extractvalue %dx.types.ResRet.f32 %3838, 2
  %3842 = extractvalue %dx.types.ResRet.f32 %3838, 3
  %3843 = call float @dx.op.dot4.f32(i32 56, float %3839, float %3840, float %3841, float %3842, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3844 = or i32 %3782, 16
  %3845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3846 = extractvalue %dx.types.ResRet.f32 %3845, 0
  %3847 = extractvalue %dx.types.ResRet.f32 %3845, 1
  %3848 = extractvalue %dx.types.ResRet.f32 %3845, 2
  %3849 = extractvalue %dx.types.ResRet.f32 %3845, 3
  %3850 = call float @dx.op.dot4.f32(i32 56, float %3846, float %3847, float %3848, float %3849, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3851 = or i32 %3782, 32
  %3852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.f32 %3852, 0
  %3854 = extractvalue %dx.types.ResRet.f32 %3852, 1
  %3855 = extractvalue %dx.types.ResRet.f32 %3852, 2
  %3856 = extractvalue %dx.types.ResRet.f32 %3852, 3
  %3857 = call float @dx.op.dot4.f32(i32 56, float %3853, float %3854, float %3855, float %3856, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3858 = call float @dx.op.unary.f32(i32 27, float %3843)  ; Round_ni(value)
  %3859 = call float @dx.op.unary.f32(i32 6, float %3858)  ; FAbs(value)
  %3860 = call float @dx.op.unary.f32(i32 27, float %3850)  ; Round_ni(value)
  %3861 = call float @dx.op.unary.f32(i32 6, float %3860)  ; FAbs(value)
  %3862 = call float @dx.op.unary.f32(i32 6, float %3857)  ; FAbs(value)
  %3863 = call float @dx.op.unary.f32(i32 27, float %3862)  ; Round_ni(value)
  %3864 = fadd fast float %3861, %3859
  %3865 = fadd fast float %3864, %3863
  %3866 = fcmp fast oeq float %3865, 0.000000e+00
  %3867 = call float @dx.op.dot4.f32(i32 56, float %3839, float %3840, float %3841, float %3842, float %3710, float %3711, float %3712, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3868 = call float @dx.op.dot4.f32(i32 56, float %3846, float %3847, float %3848, float %3849, float %3710, float %3711, float %3712, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3869 = call float @dx.op.dot4.f32(i32 56, float %3839, float %3840, float %3841, float %3842, float %3713, float %3714, float %3715, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3870 = call float @dx.op.dot4.f32(i32 56, float %3846, float %3847, float %3848, float %3849, float %3713, float %3714, float %3715, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3871 = fsub fast float %3867, %3843
  %3872 = fsub fast float %3869, %3843
  %3873 = fsub fast float %3868, %3850
  %3874 = fsub fast float %3870, %3850
  %3875 = call float @dx.op.dot3.f32(i32 55, float %3785, float %3786, float %3787, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %3876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3877 = extractvalue %dx.types.CBufRet.f32 %3876, 2
  %3878 = fadd fast float %3877, %3875
  %3879 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3880 = extractvalue %dx.types.CBufRet.f32 %3876, 0
  %3881 = fcmp fast ogt float %3879, %3880
  %3882 = and i1 %3866, %3881
  %3883 = and i1 %3837, %3882
  br i1 %3883, label %3905, label %3884

; <label>:3884                                    ; preds = %4169, %3986, %3905, %3757
  %3885 = phi float [ %3759, %3905 ], [ %3989, %3986 ], [ %3989, %4169 ], [ %3759, %3757 ]
  %3886 = phi float [ %3760, %3905 ], [ %3760, %3986 ], [ %4144, %4169 ], [ %3760, %3757 ]
  %3887 = phi float [ %3761, %3905 ], [ %3761, %3986 ], [ %4143, %4169 ], [ %3761, %3757 ]
  %3888 = phi float [ %3762, %3905 ], [ %3762, %3986 ], [ %4141, %4169 ], [ %3762, %3757 ]
  %3889 = phi float [ %3763, %3905 ], [ %3763, %3986 ], [ %4113, %4169 ], [ %3763, %3757 ]
  %3890 = phi float [ %3764, %3905 ], [ %3764, %3986 ], [ %4111, %4169 ], [ %3764, %3757 ]
  %3891 = phi float [ %3765, %3905 ], [ %3765, %3986 ], [ %4179, %4169 ], [ %3765, %3757 ]
  %3892 = phi float [ %3766, %3905 ], [ %3766, %3986 ], [ %4180, %4169 ], [ %3766, %3757 ]
  %3893 = phi float [ %3767, %3905 ], [ %3767, %3986 ], [ %4181, %4169 ], [ %3767, %3757 ]
  %3894 = phi float [ %3768, %3905 ], [ %3768, %3986 ], [ %4092, %4169 ], [ %3768, %3757 ]
  %3895 = phi float [ %3769, %3905 ], [ %3769, %3986 ], [ %4093, %4169 ], [ %3769, %3757 ]
  %3896 = phi float [ %3770, %3905 ], [ %3770, %3986 ], [ %4094, %4169 ], [ %3770, %3757 ]
  %3897 = phi float [ %3771, %3905 ], [ %3771, %3986 ], [ %4121, %4169 ], [ %3771, %3757 ]
  %3898 = phi float [ %3772, %3905 ], [ %3772, %3986 ], [ %4118, %4169 ], [ %3772, %3757 ]
  %3899 = phi float [ %3773, %3905 ], [ %3773, %3986 ], [ %4115, %4169 ], [ %3773, %3757 ]
  %3900 = phi float [ %3774, %3905 ], [ %3774, %3986 ], [ %4109, %4169 ], [ %3774, %3757 ]
  %3901 = phi float [ %3775, %3905 ], [ %3775, %3986 ], [ %4104, %4169 ], [ %3775, %3757 ]
  %3902 = phi float [ %3776, %3905 ], [ %3776, %3986 ], [ %4105, %4169 ], [ %3776, %3757 ]
  %3903 = phi float [ %3777, %3905 ], [ %3777, %3986 ], [ %4106, %4169 ], [ %3777, %3757 ]
  %3904 = icmp eq i32 %3834, %3756
  br i1 %3904, label %4182, label %3757

; <label>:3905                                    ; preds = %3757
  %3906 = extractvalue %dx.types.ResRet.f32 %3804, 3
  %3907 = extractvalue %dx.types.ResRet.f32 %3804, 1
  %3908 = extractvalue %dx.types.ResRet.f32 %3804, 0
  %3909 = extractvalue %dx.types.ResRet.f32 %3794, 1
  %3910 = extractvalue %dx.types.ResRet.f32 %3794, 0
  %3911 = extractvalue %dx.types.ResRet.i32 %3790, 3
  %3912 = extractvalue %dx.types.ResRet.i32 %3790, 2
  %3913 = add i32 %3911, 0
  %3914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3913, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3916 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3914, %dx.types.Handle %3915, float %3843, float %3850, float undef, float undef, i32 0, i32 0, i32 undef, float %3871, float %3873, float undef, float %3872, float %3874, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3917 = extractvalue %dx.types.ResRet.f32 %3916, 0
  %3918 = fmul fast float %3917, %3910
  %3919 = fadd fast float %3918, %3909
  %3920 = call float @dx.op.unary.f32(i32 7, float %3919)  ; Saturate(value)
  %3921 = fmul fast float %3843, %3799
  %3922 = call float @dx.op.tertiary.f32(i32 46, float %3800, float %3850, float %3921)  ; FMad(a,b,c)
  %3923 = fadd fast float %3922, %3908
  %3924 = fmul fast float %3843, %3801
  %3925 = call float @dx.op.tertiary.f32(i32 46, float %3802, float %3850, float %3924)  ; FMad(a,b,c)
  %3926 = fadd fast float %3925, %3907
  %3927 = fmul fast float %3871, %3799
  %3928 = call float @dx.op.tertiary.f32(i32 46, float %3800, float %3873, float %3927)  ; FMad(a,b,c)
  %3929 = fmul fast float %3871, %3801
  %3930 = call float @dx.op.tertiary.f32(i32 46, float %3802, float %3873, float %3929)  ; FMad(a,b,c)
  %3931 = fmul fast float %3872, %3799
  %3932 = call float @dx.op.tertiary.f32(i32 46, float %3800, float %3874, float %3931)  ; FMad(a,b,c)
  %3933 = fmul fast float %3872, %3801
  %3934 = call float @dx.op.tertiary.f32(i32 46, float %3802, float %3874, float %3933)  ; FMad(a,b,c)
  %3935 = add i32 %3912, 0
  %3936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3935, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3937 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3936, %dx.types.Handle %3915, float %3923, float %3926, float undef, float undef, i32 0, i32 0, i32 undef, float %3928, float %3930, float undef, float %3932, float %3934, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3938 = extractvalue %dx.types.ResRet.f32 %3937, 0
  %3939 = and i32 %3835, 1024
  %3940 = icmp ne i32 %3939, 0
  %3941 = fcmp fast ogt float %3938, 0x3FE0101020000000
  %3942 = uitofp i1 %3941 to float
  %3943 = select i1 %3940, float %3942, float %3938
  %3944 = and i32 %3835, 8192
  %3945 = icmp ne i32 %3944, 0
  %3946 = select i1 %3945, float %3906, float 1.000000e+00
  %3947 = fmul fast float %3843, 2.000000e+00
  %3948 = fadd fast float %3947, -1.000000e+00
  %3949 = call float @dx.op.unary.f32(i32 6, float %3948)  ; FAbs(value)
  %3950 = fmul fast float %3949, %3832
  %3951 = fsub fast float %3950, %3832
  %3952 = call float @dx.op.unary.f32(i32 7, float %3951)  ; Saturate(value)
  %3953 = fmul fast float %3850, 2.000000e+00
  %3954 = fadd fast float %3953, -1.000000e+00
  %3955 = call float @dx.op.unary.f32(i32 6, float %3954)  ; FAbs(value)
  %3956 = fmul fast float %3955, %3833
  %3957 = fsub fast float %3956, %3833
  %3958 = call float @dx.op.unary.f32(i32 7, float %3957)  ; Saturate(value)
  %3959 = fmul fast float %3862, %3795
  %3960 = fsub fast float %3959, %3795
  %3961 = call float @dx.op.unary.f32(i32 7, float %3960)  ; Saturate(value)
  %3962 = fmul fast float %3920, %3946
  %3963 = fmul fast float %3962, %3917
  %3964 = fmul fast float %3963, %3952
  %3965 = fmul fast float %3964, %3943
  %3966 = fmul fast float %3965, %3958
  %3967 = fmul fast float %3966, %3961
  %3968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3969 = extractvalue %dx.types.CBufRet.f32 %3968, 1
  %3970 = extractvalue %dx.types.CBufRet.f32 %3968, 0
  %3971 = fsub fast float %3879, %3970
  %3972 = fmul fast float %3971, %3969
  %3973 = call float @dx.op.unary.f32(i32 7, float %3972)  ; Saturate(value)
  %3974 = fmul fast float %3967, %3796
  %3975 = fadd fast float %3967, %3796
  %3976 = fmul fast float %3975, %3805
  %3977 = fsub fast float %3976, %3805
  %3978 = call float @dx.op.unary.f32(i32 7, float %3977)  ; Saturate(value)
  %3979 = and i32 %3835, 128
  %3980 = icmp ne i32 %3979, 0
  %3981 = select i1 %3980, float %3978, float %3974
  %3982 = fmul fast float %3981, %3973
  %3983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3984 = extractvalue %dx.types.CBufRet.f32 %3983, 0
  %3985 = fcmp fast ugt float %3982, %3984
  br i1 %3985, label %3986, label %3884

; <label>:3986                                    ; preds = %3905
  %3987 = select i1 %3945, float %3982, float 0.000000e+00
  %3988 = fadd fast float %3987, %3759
  %3989 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  br i1 %3945, label %3884, label %3990

; <label>:3990                                    ; preds = %3986
  %3991 = and i32 %3835, 4
  %3992 = and i32 %3835, 8
  %3993 = add i32 %3791, 0
  %3994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3993, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3995 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3996 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3994, %dx.types.Handle %3995, float %3923, float %3926, float undef, float undef, i32 0, i32 0, i32 undef, float %3928, float %3930, float undef, float %3932, float %3934, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3997 = extractvalue %dx.types.ResRet.f32 %3996, 0
  %3998 = extractvalue %dx.types.ResRet.f32 %3996, 1
  %3999 = extractvalue %dx.types.ResRet.f32 %3996, 2
  %4000 = extractvalue %dx.types.ResRet.f32 %3996, 3
  %4001 = bitcast float %3817 to i32
  %4002 = and i32 %4001, 255
  %4003 = uitofp i32 %4002 to float
  %4004 = lshr i32 %4001, 8
  %4005 = and i32 %4004, 255
  %4006 = uitofp i32 %4005 to float
  %4007 = fmul fast float %4000, %4003
  %4008 = fadd fast float %4007, %4006
  %4009 = fmul fast float %4008, 0x3F70101000000000
  %4010 = add i32 %3792, 0
  %4011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4010, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4012 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4011, %dx.types.Handle %3995, float %3923, float %3926, float undef, float undef, i32 0, i32 0, i32 undef, float %3928, float %3930, float undef, float %3932, float %3934, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4013 = extractvalue %dx.types.ResRet.f32 %4012, 0
  %4014 = extractvalue %dx.types.ResRet.f32 %4012, 1
  %4015 = extractvalue %dx.types.ResRet.f32 %4012, 2
  %4016 = extractvalue %dx.types.ResRet.f32 %4012, 3
  %4017 = bitcast float %3811 to i32
  %4018 = and i32 %4017, 255
  %4019 = uitofp i32 %4018 to float
  %4020 = lshr i32 %4017, 8
  %4021 = and i32 %4020, 255
  %4022 = uitofp i32 %4021 to float
  %4023 = lshr i32 %4017, 16
  %4024 = and i32 %4023, 255
  %4025 = uitofp i32 %4024 to float
  %4026 = fmul fast float %4025, 0x3F70101000000000
  %4027 = fmul fast float %4013, %4019
  %4028 = fadd fast float %4027, %4022
  %4029 = fmul fast float %4028, 0x3F70101000000000
  %4030 = fadd fast float %4014, -5.000000e-01
  %4031 = fadd fast float %4016, -5.000000e-01
  %4032 = fmul fast float %4030, %4026
  %4033 = fmul fast float %4031, %4026
  %4034 = fadd fast float %4032, 5.000000e-01
  %4035 = fadd fast float %4033, 5.000000e-01
  %4036 = fmul fast float %3997, %3820
  %4037 = fmul fast float %3998, %3821
  %4038 = fmul fast float %3999, %3822
  %4039 = fmul fast float %4034, 2.000000e+00
  %4040 = fadd fast float %4039, -1.000000e+00
  %4041 = fmul fast float %4035, 2.000000e+00
  %4042 = fadd fast float %4041, -1.000000e+00
  %4043 = fadd fast float %4040, %4042
  %4044 = fmul fast float %4043, 5.000000e-01
  %4045 = fsub fast float %4040, %4042
  %4046 = fmul fast float %4045, 5.000000e-01
  %4047 = call float @dx.op.unary.f32(i32 6, float %4044)  ; FAbs(value)
  %4048 = fsub fast float 1.000000e+00, %4047
  %4049 = call float @dx.op.unary.f32(i32 6, float %4046)  ; FAbs(value)
  %4050 = fsub fast float %4048, %4049
  %4051 = call float @dx.op.dot3.f32(i32 55, float %4044, float %4046, float %4050, float %4044, float %4046, float %4050)  ; Dot3(ax,ay,az,bx,by,bz)
  %4052 = call float @dx.op.unary.f32(i32 25, float %4051)  ; Rsqrt(value)
  %4053 = fmul fast float %4044, %4052
  %4054 = fmul fast float %4046, %4052
  %4055 = fmul fast float %4052, %4050
  %4056 = fmul fast float %4055, %3785
  %4057 = fmul fast float %4055, %3786
  %4058 = fmul fast float %4055, %3787
  %4059 = fmul fast float %4053, %3808
  %4060 = fmul fast float %4053, %3809
  %4061 = fmul fast float %4053, %3810
  %4062 = fadd fast float %4059, %4056
  %4063 = fadd fast float %4060, %4057
  %4064 = fadd fast float %4061, %4058
  %4065 = fmul fast float %4054, %3814
  %4066 = fmul fast float %4054, %3815
  %4067 = fmul fast float %4054, %3816
  %4068 = fadd fast float %4062, %4065
  %4069 = fadd fast float %4063, %4066
  %4070 = fadd fast float %4064, %4067
  %4071 = call float @dx.op.dot3.f32(i32 55, float %4068, float %4069, float %4070, float %4068, float %4069, float %4070)  ; Dot3(ax,ay,az,bx,by,bz)
  %4072 = call float @dx.op.unary.f32(i32 25, float %4071)  ; Rsqrt(value)
  %4073 = fmul fast float %4068, %4072
  %4074 = fmul fast float %4069, %4072
  %4075 = fmul fast float %4070, %4072
  %4076 = icmp ne i32 %3992, 0
  %4077 = select i1 %4076, float 1.000000e+00, float 0.000000e+00
  %4078 = fmul fast float %3982, %4077
  %4079 = and i32 %3835, 1
  %4080 = icmp eq i32 %4079, 0
  br i1 %4080, label %4081, label %4085

; <label>:4081                                    ; preds = %3990
  %4082 = fsub fast float %4073, %3768
  %4083 = fsub fast float %4074, %3769
  %4084 = fsub fast float %4075, %3770
  br label %4085

; <label>:4085                                    ; preds = %4081, %3990
  %4086 = phi float [ %4082, %4081 ], [ %4073, %3990 ]
  %4087 = phi float [ %4083, %4081 ], [ %4074, %3990 ]
  %4088 = phi float [ %4084, %4081 ], [ %4075, %3990 ]
  %4089 = fmul float %4088, %4078
  %4090 = fmul float %4087, %4078
  %4091 = fmul float %4086, %4078
  %4092 = fadd fast float %4091, %3768
  %4093 = fadd fast float %4090, %3769
  %4094 = fadd fast float %4089, %3770
  %4095 = icmp ne i32 %3991, 0
  %4096 = select i1 %4095, float 1.000000e+00, float 0.000000e+00
  %4097 = fmul fast float %3982, %4096
  %4098 = fsub fast float %4036, %3775
  %4099 = fsub fast float %4037, %3776
  %4100 = fsub fast float %4038, %3777
  %4101 = fmul fast float %4098, %4097
  %4102 = fmul fast float %4099, %4097
  %4103 = fmul fast float %4100, %4097
  %4104 = fadd fast float %4101, %3775
  %4105 = fadd fast float %4102, %3776
  %4106 = fadd fast float %4103, %3777
  %4107 = fsub fast float %4009, %3774
  %4108 = fmul fast float %4107, %4097
  %4109 = fadd fast float %4108, %3774
  %4110 = fmul fast float %4097, %3764
  %4111 = fsub fast float %3764, %4110
  %4112 = fmul fast float %4097, %3763
  %4113 = fsub fast float %3763, %4112
  %4114 = fadd fast float %3982, %3773
  %4115 = call float @dx.op.unary.f32(i32 7, float %4114)  ; Saturate(value)
  %4116 = fsub fast float %4029, %3772
  %4117 = fmul fast float %4116, %4078
  %4118 = fadd fast float %4117, %3772
  %4119 = fsub fast float %4015, %3771
  %4120 = fmul fast float %4119, %4078
  %4121 = fadd fast float %4120, %3771
  %4122 = call float @dx.op.dot3.f32(i32 55, float %4036, float %4037, float %4038, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4124 = extractvalue %dx.types.CBufRet.f32 %4123, 0
  %4125 = extractvalue %dx.types.CBufRet.f32 %4123, 1
  %4126 = fmul fast float %4125, %4122
  %4127 = fadd fast float %4126, %4124
  %4128 = call float @dx.op.unary.f32(i32 7, float %4127)  ; Saturate(value)
  %4129 = bitcast float %3823 to i32
  %4130 = and i32 %4129, 65535
  %4131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4130)  ; LegacyF16ToF32(value)
  %4132 = lshr i32 %4129, 16
  %4133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4132)  ; LegacyF16ToF32(value)
  %4134 = fcmp fast oge float %4131, 0.000000e+00
  %4135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.f32 %4135, 0
  %4137 = select i1 %4134, float %4131, float %4136
  %4138 = fadd fast float %4137, %4133
  %4139 = fsub fast float %4128, %3762
  %4140 = fmul fast float %4139, %3982
  %4141 = fadd fast float %4140, %3762
  %4142 = fmul fast float %4138, %3982
  %4143 = call float @dx.op.binary.f32(i32 35, float %3761, float %4142)  ; FMax(a,b)
  %4144 = call float @dx.op.binary.f32(i32 35, float %3760, float %3982)  ; FMax(a,b)
  %4145 = and i32 %3835, 16
  %4146 = icmp eq i32 %4145, 0
  br i1 %4146, label %4169, label %4147

; <label>:4147                                    ; preds = %4085
  %4148 = bitcast float %3829 to i32
  %4149 = add i32 %3826, 0
  %4150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4149, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4151 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4150, %dx.types.Handle %3995, float %3923, float %3926, float undef, float undef, i32 0, i32 0, i32 undef, float %3928, float %3930, float undef, float %3932, float %3934, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = extractvalue %dx.types.ResRet.f32 %4151, 1
  %4154 = extractvalue %dx.types.ResRet.f32 %4151, 2
  %4155 = and i32 %4148, 65535
  %4156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4155)  ; LegacyF16ToF32(value)
  %4157 = fmul fast float %4152, %3820
  %4158 = fmul fast float %4153, %3821
  %4159 = fmul fast float %4154, %3822
  %4160 = and i32 %3835, 16384
  %4161 = icmp ne i32 %4160, 0
  %4162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4163 = extractvalue %dx.types.CBufRet.f32 %4162, 0
  %4164 = select i1 %4161, float %4163, float 1.000000e+00
  %4165 = fmul fast float %4164, %4156
  %4166 = fmul fast float %4157, %4165
  %4167 = fmul fast float %4158, %4165
  %4168 = fmul fast float %4159, %4165
  br label %4169

; <label>:4169                                    ; preds = %4147, %4085
  %4170 = phi float [ %4166, %4147 ], [ 0.000000e+00, %4085 ]
  %4171 = phi float [ %4167, %4147 ], [ 0.000000e+00, %4085 ]
  %4172 = phi float [ %4168, %4147 ], [ 0.000000e+00, %4085 ]
  %4173 = fsub fast float %4170, %3765
  %4174 = fsub fast float %4171, %3766
  %4175 = fsub fast float %4172, %3767
  %4176 = fmul fast float %4173, %3982
  %4177 = fmul fast float %4174, %3982
  %4178 = fmul fast float %4175, %3982
  %4179 = fadd fast float %4176, %3765
  %4180 = fadd fast float %4177, %3766
  %4181 = fadd fast float %4178, %3767
  br label %3884

; <label>:4182                                    ; preds = %3884
  br label %4183

; <label>:4183                                    ; preds = %4182, %3703
  %4184 = phi float [ 0.000000e+00, %3703 ], [ %3885, %4182 ]
  %4185 = phi float [ %1105, %3703 ], [ %3886, %4182 ]
  %4186 = phi float [ %3672, %3703 ], [ %3887, %4182 ]
  %4187 = phi float [ %3670, %3703 ], [ %3888, %4182 ]
  %4188 = phi float [ 0.000000e+00, %3703 ], [ %3889, %4182 ]
  %4189 = phi float [ 0.000000e+00, %3703 ], [ %3890, %4182 ]
  %4190 = phi float [ %3661, %3703 ], [ %3891, %4182 ]
  %4191 = phi float [ %3662, %3703 ], [ %3892, %4182 ]
  %4192 = phi float [ %3663, %3703 ], [ %3893, %4182 ]
  %4193 = phi float [ %3698, %3703 ], [ %3894, %4182 ]
  %4194 = phi float [ %3699, %3703 ], [ %3895, %4182 ]
  %4195 = phi float [ %3700, %3703 ], [ %3896, %4182 ]
  %4196 = phi float [ %3669, %3703 ], [ %3897, %4182 ]
  %4197 = phi float [ %3668, %3703 ], [ %3898, %4182 ]
  %4198 = phi float [ 0.000000e+00, %3703 ], [ %3899, %4182 ]
  %4199 = phi float [ %3667, %3703 ], [ %3900, %4182 ]
  %4200 = phi float [ %3664, %3703 ], [ %3901, %4182 ]
  %4201 = phi float [ %3665, %3703 ], [ %3902, %4182 ]
  %4202 = phi float [ %3666, %3703 ], [ %3903, %4182 ]
  %4203 = call float @dx.op.dot3.f32(i32 55, float %4193, float %4194, float %4195, float %4193, float %4194, float %4195)  ; Dot3(ax,ay,az,bx,by,bz)
  %4204 = call float @dx.op.unary.f32(i32 25, float %4203)  ; Rsqrt(value)
  %4205 = fmul fast float %4204, %4193
  %4206 = fmul fast float %4204, %4194
  %4207 = fmul fast float %4204, %4195
  %4208 = fadd fast float %4198, %1105
  %4209 = call float @dx.op.unary.f32(i32 7, float %4208)  ; Saturate(value)
  %4210 = call float @dx.op.dot3.f32(i32 55, float %4205, float %4206, float %4207, float %4205, float %4206, float %4207)  ; Dot3(ax,ay,az,bx,by,bz)
  %4211 = call float @dx.op.unary.f32(i32 25, float %4210)  ; Rsqrt(value)
  %4212 = fmul fast float %4211, %4205
  %4213 = fmul fast float %4211, %4206
  %4214 = fmul fast float %4211, %4207
  br label %4215

; <label>:4215                                    ; preds = %4183, %3658
  %4216 = phi float [ %4212, %4183 ], [ %3698, %3658 ]
  %4217 = phi float [ %4213, %4183 ], [ %3699, %3658 ]
  %4218 = phi float [ %4214, %4183 ], [ %3700, %3658 ]
  %4219 = phi float [ %4190, %4183 ], [ %3661, %3658 ]
  %4220 = phi float [ %4191, %4183 ], [ %3662, %3658 ]
  %4221 = phi float [ %4192, %4183 ], [ %3663, %3658 ]
  %4222 = phi float [ %4200, %4183 ], [ %3664, %3658 ]
  %4223 = phi float [ %4201, %4183 ], [ %3665, %3658 ]
  %4224 = phi float [ %4202, %4183 ], [ %3666, %3658 ]
  %4225 = phi float [ %4199, %4183 ], [ %3667, %3658 ]
  %4226 = phi float [ %4209, %4183 ], [ %1105, %3658 ]
  %4227 = phi float [ %4197, %4183 ], [ %3668, %3658 ]
  %4228 = phi float [ %4196, %4183 ], [ %3669, %3658 ]
  %4229 = phi float [ %4189, %4183 ], [ 0.000000e+00, %3658 ]
  %4230 = phi float [ %4188, %4183 ], [ 0.000000e+00, %3658 ]
  %4231 = phi float [ %4184, %4183 ], [ 0.000000e+00, %3658 ]
  %4232 = phi float [ %4186, %4183 ], [ %3672, %3658 ]
  %4233 = phi float [ %4185, %4183 ], [ %1105, %3658 ]
  %4234 = phi float [ %4187, %4183 ], [ %3670, %3658 ]
  %4235 = fadd fast float %4225, 0xBFB99999A0000000
  %4236 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4237 = fmul fast float %4236, 0x3FF1C71C80000000
  %4238 = call float @dx.op.binary.f32(i32 36, float %4225, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4239 = fsub fast float 1.000000e+00, %4237
  %4240 = call float @dx.op.unary.f32(i32 7, float %4239)  ; Saturate(value)
  %4241 = fmul fast float %4240, %4222
  %4242 = fmul fast float %4240, %4223
  %4243 = fmul fast float %4240, %4224
  %4244 = call float @dx.op.unary.f32(i32 7, float %4241)  ; Saturate(value)
  %4245 = call float @dx.op.unary.f32(i32 7, float %4242)  ; Saturate(value)
  %4246 = call float @dx.op.unary.f32(i32 7, float %4243)  ; Saturate(value)
  %4247 = fmul fast float %4237, %4222
  %4248 = fmul fast float %4237, %4223
  %4249 = fmul fast float %4237, %4224
  %4250 = fadd fast float %4247, %4238
  %4251 = fadd fast float %4248, %4238
  %4252 = fadd fast float %4249, %4238
  %4253 = call float @dx.op.unary.f32(i32 7, float %4250)  ; Saturate(value)
  %4254 = call float @dx.op.unary.f32(i32 7, float %4251)  ; Saturate(value)
  %4255 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4256 = call float @dx.op.unary.f32(i32 7, float %4227)  ; Saturate(value)
  %4257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4258 = extractvalue %dx.types.CBufRet.i32 %4257, 3
  %4259 = and i32 %4258, 8
  %4260 = icmp ne i32 %4259, 0
  %4261 = call float @dx.op.binary.f32(i32 35, float %4244, float %4222)  ; FMax(a,b)
  %4262 = call float @dx.op.binary.f32(i32 35, float %4245, float %4222)  ; FMax(a,b)
  %4263 = call float @dx.op.binary.f32(i32 35, float %4246, float %4222)  ; FMax(a,b)
  %4264 = call float @dx.op.dot3.f32(i32 55, float %4244, float %4245, float %4246, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4265 = select i1 %206, float %4222, float %4244
  %4266 = select i1 %206, float %4264, float %4245
  %4267 = select i1 %206, float 1.000000e+00, float %4246
  %4268 = select i1 %4260, float %4261, float %4265
  %4269 = select i1 %4260, float %4262, float %4266
  %4270 = select i1 %4260, float %4263, float %4267
  %4271 = and i32 %182, 3
  %4272 = select i1 %176, i32 %4271, i32 0
  %4273 = icmp eq i32 %4272, 1
  br i1 %4273, label %4274, label %4350

; <label>:4274                                    ; preds = %4215
  %4275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4276 = extractvalue %dx.types.CBufRet.f32 %4275, 0
  %4277 = extractvalue %dx.types.CBufRet.f32 %4275, 1
  %4278 = fadd fast float %4276, %145
  %4279 = fadd fast float %4277, %146
  %4280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4281 = extractvalue %dx.types.CBufRet.f32 %4280, 0
  %4282 = extractvalue %dx.types.CBufRet.f32 %4280, 1
  %4283 = fsub fast float %4278, %4281
  %4284 = fsub fast float %4279, %4282
  %4285 = fmul fast float %4283, %4283
  %4286 = fmul fast float %4284, %4284
  %4287 = fadd fast float %4285, %4286
  %4288 = call float @dx.op.unary.f32(i32 24, float %4287)  ; Sqrt(value)
  %4289 = extractvalue %dx.types.CBufRet.f32 %4280, 2
  %4290 = fcmp fast olt float %4288, %4289
  br i1 %4290, label %4291, label %4344

; <label>:4291                                    ; preds = %4274
  %4292 = extractvalue %dx.types.CBufRet.f32 %4275, 2
  %4293 = fadd fast float %4292, %147
  %4294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4295 = extractvalue %dx.types.CBufRet.f32 %4294, 0
  %4296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4296, 0
  %4298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.f32 %4298, 0
  %4300 = extractvalue %dx.types.CBufRet.f32 %4294, 1
  %4301 = extractvalue %dx.types.CBufRet.f32 %4296, 1
  %4302 = extractvalue %dx.types.CBufRet.f32 %4298, 1
  %4303 = extractvalue %dx.types.CBufRet.f32 %4294, 3
  %4304 = extractvalue %dx.types.CBufRet.f32 %4296, 3
  %4305 = extractvalue %dx.types.CBufRet.f32 %4298, 3
  %4306 = fadd fast float %4303, %4278
  %4307 = fadd fast float %4304, %4279
  %4308 = fadd fast float %4293, %4305
  %4309 = fmul fast float %4306, %4295
  %4310 = call float @dx.op.tertiary.f32(i32 46, float %4307, float %4297, float %4309)  ; FMad(a,b,c)
  %4311 = call float @dx.op.tertiary.f32(i32 46, float %4308, float %4299, float %4310)  ; FMad(a,b,c)
  %4312 = fmul fast float %4306, %4300
  %4313 = call float @dx.op.tertiary.f32(i32 46, float %4307, float %4301, float %4312)  ; FMad(a,b,c)
  %4314 = call float @dx.op.tertiary.f32(i32 46, float %4308, float %4302, float %4313)  ; FMad(a,b,c)
  %4315 = fsub fast float %4311, %4303
  %4316 = fsub fast float %4314, %4304
  %4317 = fsub fast float %4315, %4281
  %4318 = fadd fast float %4317, %4289
  %4319 = fsub fast float %4316, %4282
  %4320 = fadd fast float %4319, %4289
  %4321 = extractvalue %dx.types.CBufRet.f32 %4280, 3
  %4322 = fmul fast float %4318, %4321
  %4323 = fmul fast float %4320, %4321
  %4324 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4325 = call float @dx.op.unary.f32(i32 7, float %4323)  ; Saturate(value)
  %4326 = fsub fast float 1.000000e+00, %4324
  %4327 = fsub fast float 1.000000e+00, %4325
  %4328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %4326, float %4327, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4329 = extractvalue %dx.types.ResRet.f32 %4328, 0
  %4330 = fcmp fast ugt float %4329, 0.000000e+00
  br i1 %4330, label %4331, label %4344

; <label>:4331                                    ; preds = %4291
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 2
  %4334 = fmul fast float %4333, %4329
  %4335 = extractvalue %dx.types.CBufRet.f32 %4332, 3
  %4336 = fadd fast float %4335, %4334
  %4337 = extractvalue %dx.types.CBufRet.f32 %4298, 2
  %4338 = fadd fast float %4336, %4305
  %4339 = fmul fast float %4311, %4299
  %4340 = call float @dx.op.tertiary.f32(i32 46, float %4314, float %4302, float %4339)  ; FMad(a,b,c)
  %4341 = call float @dx.op.tertiary.f32(i32 46, float %4338, float %4337, float %4340)  ; FMad(a,b,c)
  %4342 = fsub fast float %4341, %4305
  %4343 = fsub fast float %4342, %4292
  br label %4344

; <label>:4344                                    ; preds = %4331, %4291, %4274
  %4345 = phi i1 [ true, %4331 ], [ false, %4291 ], [ false, %4274 ]
  %4346 = phi float [ %4343, %4331 ], [ -1.310720e+05, %4291 ], [ -1.310720e+05, %4274 ]
  %4347 = fsub fast float %4346, %147
  %4348 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4349 = select i1 %4345, float %4348, float 1.000000e+00
  br label %4350

; <label>:4350                                    ; preds = %4344, %4215
  %4351 = phi float [ %4349, %4344 ], [ 0.000000e+00, %4215 ]
  %4352 = icmp eq i32 %4272, 3
  %4353 = select i1 %4352, float 1.000000e+00, float %4351
  %4354 = call float @dx.op.binary.f32(i32 35, float %4231, float %4353)  ; FMax(a,b)
  %4355 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  %4356 = fcmp fast une float %4355, 0.000000e+00
  %4357 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %4358 = call float @dx.op.unary.f32(i32 25, float %4357)  ; Rsqrt(value)
  br i1 %4356, label %4366, label %4359

; <label>:4359                                    ; preds = %4350
  %4360 = fmul fast float %4358, %145
  %4361 = fmul fast float %4358, %146
  %4362 = fmul fast float %4358, %147
  %4363 = fsub fast float -0.000000e+00, %4360
  %4364 = fsub fast float -0.000000e+00, %4361
  %4365 = fsub fast float -0.000000e+00, %4362
  br label %4534

; <label>:4366                                    ; preds = %4350
  %4367 = fmul fast float %145, %4358
  %4368 = fsub fast float -0.000000e+00, %4367
  %4369 = fmul fast float %146, %4358
  %4370 = fsub fast float -0.000000e+00, %4369
  %4371 = fmul fast float %147, %4358
  %4372 = fsub fast float -0.000000e+00, %4371
  %4373 = call float @dx.op.dot3.f32(i32 55, float %4368, float %4370, float %4372, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %4374 = fmul fast float %4355, 2.500000e+00
  %4375 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4376 = fmul fast float %4355, 0x4013FFFFE0000000
  %4377 = fadd fast float %4376, 0xBFFFFFFFE0000000
  %4378 = call float @dx.op.unary.f32(i32 7, float %4377)  ; Saturate(value)
  %4379 = fmul fast float %4355, 0x4004000020000000
  %4380 = fadd fast float %4379, 0xBFF8000040000000
  %4381 = call float @dx.op.unary.f32(i32 7, float %4380)  ; Saturate(value)
  %4382 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4383 = fmul fast float %4235, 1.000000e+01
  %4384 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4385 = fmul fast float %4384, 2.000000e+00
  %4386 = fsub fast float 3.000000e+00, %4385
  %4387 = fmul fast float %4384, %4384
  %4388 = fmul fast float %4387, %4386
  %4389 = fsub fast float 1.000000e+00, %4388
  %4390 = fsub fast float 0x3FE3333340000000, %4256
  %4391 = fmul fast float %4390, 0x400AAAAAA0000000
  %4392 = call float @dx.op.unary.f32(i32 7, float %4391)  ; Saturate(value)
  %4393 = fmul fast float %4389, %4392
  %4394 = fmul fast float %4268, 0x3FEA2B8620000000
  %4395 = fmul fast float %4269, 0x3FEA2B8620000000
  %4396 = fmul fast float %4270, 0x3FEA2B8620000000
  %4397 = fadd fast float %4394, 0x3FC81DFBA0000000
  %4398 = fmul fast float %4397, %4268
  %4399 = fadd fast float %4398, 0x3F910E6020000000
  %4400 = fadd fast float %4395, 0x3FC81DFBA0000000
  %4401 = fmul fast float %4400, %4269
  %4402 = fadd fast float %4401, 0x3F910E6020000000
  %4403 = fadd fast float %4396, 0x3FC81DFBA0000000
  %4404 = fmul fast float %4403, %4270
  %4405 = fadd fast float %4404, 0x3F910E6020000000
  %4406 = call float @dx.op.unary.f32(i32 7, float %4399)  ; Saturate(value)
  %4407 = call float @dx.op.unary.f32(i32 7, float %4402)  ; Saturate(value)
  %4408 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4409 = fsub fast float %4406, %4268
  %4410 = fsub fast float %4407, %4269
  %4411 = fsub fast float %4408, %4270
  %4412 = fmul fast float %4409, %4382
  %4413 = fmul fast float %4412, %4393
  %4414 = fmul fast float %4410, %4382
  %4415 = fmul fast float %4414, %4393
  %4416 = fmul fast float %4411, %4382
  %4417 = fmul fast float %4416, %4393
  %4418 = fadd fast float %4413, %4268
  %4419 = fadd fast float %4415, %4269
  %4420 = fadd fast float %4417, %4270
  %4421 = fmul fast float %4228, %4228
  %4422 = fmul fast float %4421, %4421
  %4423 = fadd fast float %4378, 1.000000e+00
  %4424 = fsub fast float %4423, %4393
  %4425 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4426 = call float @dx.op.dot3.f32(i32 55, float %89, float %90, float %91, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4427 = call float @dx.op.unary.f32(i32 7, float %4426)  ; Saturate(value)
  %4428 = fsub fast float 1.000000e+00, %4422
  %4429 = call float @dx.op.binary.f32(i32 36, float %4425, float %4428)  ; FMin(a,b)
  %4430 = call float @dx.op.unary.f32(i32 7, float %4381)  ; Saturate(value)
  %4431 = call float @dx.op.binary.f32(i32 35, float %4429, float %4430)  ; FMax(a,b)
  %4432 = fadd fast float %4427, 0xBFE4CCCCC0000000
  %4433 = fmul fast float %4432, 0x4006DB6DA0000000
  %4434 = call float @dx.op.unary.f32(i32 7, float %4433)  ; Saturate(value)
  %4435 = fmul fast float %4434, 2.000000e+00
  %4436 = fsub fast float 3.000000e+00, %4435
  %4437 = bitcast float %4253 to i32
  %4438 = ashr i32 %4437, 1
  %4439 = add nsw i32 %4438, 532487669
  %4440 = bitcast i32 %4439 to float
  %4441 = fsub fast float 1.000000e+00, %4440
  %4442 = bitcast float %4441 to i32
  %4443 = sub nsw i32 2129859010, %4442
  %4444 = bitcast i32 %4443 to float
  %4445 = fmul fast float %4444, 2.000000e+00
  %4446 = bitcast float %4254 to i32
  %4447 = ashr i32 %4446, 1
  %4448 = add nsw i32 %4447, 532487669
  %4449 = bitcast i32 %4448 to float
  %4450 = fsub fast float 1.000000e+00, %4449
  %4451 = bitcast float %4450 to i32
  %4452 = sub nsw i32 2129859010, %4451
  %4453 = bitcast i32 %4452 to float
  %4454 = fmul fast float %4453, 2.000000e+00
  %4455 = bitcast float %4255 to i32
  %4456 = ashr i32 %4455, 1
  %4457 = add nsw i32 %4456, 532487669
  %4458 = bitcast i32 %4457 to float
  %4459 = fsub fast float 1.000000e+00, %4458
  %4460 = bitcast float %4459 to i32
  %4461 = sub nsw i32 2129859010, %4460
  %4462 = bitcast i32 %4461 to float
  %4463 = fmul fast float %4462, 2.000000e+00
  %4464 = fsub fast float 0x4002A9FBE0000000, %4445
  %4465 = fadd fast float %4445, 0x3FD54FDF00000000
  %4466 = bitcast float %4465 to i32
  %4467 = sub nsw i32 2129859010, %4466
  %4468 = bitcast i32 %4467 to float
  %4469 = fmul fast float %4468, %4464
  %4470 = fmul fast float %4469, %4469
  %4471 = fsub fast float 0x4002A9FBE0000000, %4454
  %4472 = fadd fast float %4454, 0x3FD54FDF00000000
  %4473 = bitcast float %4472 to i32
  %4474 = sub nsw i32 2129859010, %4473
  %4475 = bitcast i32 %4474 to float
  %4476 = fmul fast float %4475, %4471
  %4477 = fmul fast float %4476, %4476
  %4478 = fsub fast float 0x4002A9FBE0000000, %4463
  %4479 = fadd fast float %4463, 0x3FD54FDF00000000
  %4480 = bitcast float %4479 to i32
  %4481 = sub nsw i32 2129859010, %4480
  %4482 = bitcast i32 %4481 to float
  %4483 = fmul fast float %4482, %4478
  %4484 = fmul fast float %4483, %4483
  %4485 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4470)  ; FMax(a,b)
  %4486 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4477)  ; FMax(a,b)
  %4487 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4484)  ; FMax(a,b)
  %4488 = fsub fast float 1.000000e+00, %4373
  %4489 = fadd fast float %4488, %4389
  %4490 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4491 = fsub fast float 1.000000e+00, %4353
  %4492 = fmul fast float %4431, %4491
  %4493 = fmul fast float %4434, %4434
  %4494 = fmul fast float %4493, %4492
  %4495 = fmul fast float %4494, %4436
  %4496 = fmul fast float %4491, 0xBFE99999A0000000
  %4497 = fmul fast float %4496, %4382
  %4498 = fmul fast float %4497, %4393
  %4499 = fadd fast float %4498, 1.000000e+00
  %4500 = fadd fast float %4256, -1.000000e+00
  %4501 = fmul fast float %4499, %4500
  %4502 = fadd fast float %4501, 1.000000e+00
  %4503 = fsub fast float %4485, %4253
  %4504 = fsub fast float %4486, %4254
  %4505 = fsub fast float %4487, %4255
  %4506 = fmul fast float %4495, %4503
  %4507 = fmul fast float %4495, %4504
  %4508 = fmul fast float %4495, %4505
  %4509 = fadd fast float %4506, %4253
  %4510 = fadd fast float %4507, %4254
  %4511 = fadd fast float %4508, %4255
  %4512 = fsub fast float %89, %4216
  %4513 = fsub fast float %90, %4217
  %4514 = fsub fast float %91, %4218
  %4515 = fmul fast float %4495, %4512
  %4516 = fmul fast float %4495, %4513
  %4517 = fmul fast float %4495, %4514
  %4518 = fadd fast float %4515, %4216
  %4519 = fadd fast float %4516, %4217
  %4520 = fadd fast float %4517, %4218
  %4521 = fmul fast float %4495, %4490
  %4522 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4523 = fsub fast float 1.000000e+00, %4522
  %4524 = fmul fast float %4521, %4523
  %4525 = fadd fast float %4524, %4522
  %4526 = fsub fast float 1.000000e+00, %4228
  %4527 = fmul fast float %4495, %4526
  %4528 = fadd fast float %4527, %4228
  %4529 = call float @dx.op.dot3.f32(i32 55, float %4518, float %4519, float %4520, float %4518, float %4519, float %4520)  ; Dot3(ax,ay,az,bx,by,bz)
  %4530 = call float @dx.op.unary.f32(i32 25, float %4529)  ; Rsqrt(value)
  %4531 = fmul fast float %4518, %4530
  %4532 = fmul fast float %4519, %4530
  %4533 = fmul fast float %4520, %4530
  br label %4534

; <label>:4534                                    ; preds = %4366, %4359
  %4535 = phi float [ %4365, %4359 ], [ %4372, %4366 ]
  %4536 = phi float [ %4364, %4359 ], [ %4370, %4366 ]
  %4537 = phi float [ %4363, %4359 ], [ %4368, %4366 ]
  %4538 = phi float [ %4362, %4359 ], [ %4371, %4366 ]
  %4539 = phi float [ %4361, %4359 ], [ %4369, %4366 ]
  %4540 = phi float [ %4360, %4359 ], [ %4367, %4366 ]
  %4541 = phi float [ %4268, %4359 ], [ %4418, %4366 ]
  %4542 = phi float [ %4269, %4359 ], [ %4419, %4366 ]
  %4543 = phi float [ %4270, %4359 ], [ %4420, %4366 ]
  %4544 = phi float [ %4216, %4359 ], [ %4531, %4366 ]
  %4545 = phi float [ %4217, %4359 ], [ %4532, %4366 ]
  %4546 = phi float [ %4218, %4359 ], [ %4533, %4366 ]
  %4547 = phi float [ %4253, %4359 ], [ %4509, %4366 ]
  %4548 = phi float [ %4254, %4359 ], [ %4510, %4366 ]
  %4549 = phi float [ %4255, %4359 ], [ %4511, %4366 ]
  %4550 = phi float [ %4256, %4359 ], [ %4525, %4366 ]
  %4551 = phi float [ %4228, %4359 ], [ %4528, %4366 ]
  %4552 = select i1 %206, float 0.000000e+00, float %4549
  %4553 = call float @dx.op.dot3.f32(i32 55, float %4544, float %4545, float %4546, float %4537, float %4536, float %4535)  ; Dot3(ax,ay,az,bx,by,bz)
  %4554 = call float @dx.op.unary.f32(i32 7, float %4553)  ; Saturate(value)
  %4555 = call float @dx.op.dot3.f32(i32 55, float %4540, float %4539, float %4538, float %4544, float %4545, float %4546)  ; Dot3(ax,ay,az,bx,by,bz)
  %4556 = fmul fast float %4555, 2.000000e+00
  %4557 = fmul fast float %4556, %4544
  %4558 = fmul fast float %4556, %4545
  %4559 = fmul fast float %4556, %4546
  %4560 = fsub fast float %4540, %4557
  %4561 = fsub fast float %4539, %4558
  %4562 = fsub fast float %4538, %4559
  %4563 = call float @dx.op.binary.f32(i32 36, float %4551, float 1.000000e+00)  ; FMin(a,b)
  %4564 = fsub fast float 1.000000e+00, %4551
  %4565 = bitcast float %4564 to i32
  %4566 = sub nsw i32 2129859010, %4565
  %4567 = fsub fast float 1.000000e+00, %53
  %4568 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %4569 = call float @dx.op.binary.f32(i32 35, float %4568, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4570 = fdiv fast float %4567, %4569
  %4571 = call float @dx.op.dot3.f32(i32 55, float %4544, float %4545, float %4546, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %4572 = call float @dx.op.unary.f32(i32 7, float %4571)  ; Saturate(value)
  %4573 = fmul fast float %4572, 5.000000e-01
  %4574 = fadd fast float %4573, 5.000000e-01
  %4575 = fmul fast float %4574, %53
  %4576 = call float @dx.op.dot3.f32(i32 55, float %4544, float %4545, float %4546, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4577 = call float @dx.op.unary.f32(i32 7, float %4576)  ; Saturate(value)
  %4578 = fmul fast float %4577, %4570
  %4579 = fadd fast float %4575, %4578
  %4580 = fsub fast float 5.000000e-01, %4573
  %4581 = fmul fast float %4580, %4541
  %4582 = fmul fast float %4580, %4542
  %4583 = fmul fast float %4580, %4543
  %4584 = fadd fast float %4579, %4581
  %4585 = fadd fast float %4579, %4582
  %4586 = fadd fast float %4579, %4583
  %4587 = call float @dx.op.dot3.f32(i32 55, float %4560, float %4561, float %4562, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %4588 = call float @dx.op.unary.f32(i32 7, float %4587)  ; Saturate(value)
  %4589 = fmul fast float %4588, 5.000000e-01
  %4590 = fadd fast float %4589, 5.000000e-01
  %4591 = fmul fast float %4590, %53
  %4592 = call float @dx.op.dot3.f32(i32 55, float %4560, float %4561, float %4562, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4593 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4594 = fmul fast float %4593, %4570
  %4595 = fadd fast float %4591, %4594
  %4596 = fsub fast float 5.000000e-01, %4589
  %4597 = fmul fast float %4596, %4541
  %4598 = fmul fast float %4596, %4542
  %4599 = fmul fast float %4596, %4543
  %4600 = fadd fast float %4595, %4597
  %4601 = fadd fast float %4595, %4598
  %4602 = fadd fast float %4595, %4599
  %4603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4604 = extractvalue %dx.types.CBufRet.f32 %4603, 0
  %4605 = call float @dx.op.binary.f32(i32 36, float %4541, float %4604)  ; FMin(a,b)
  %4606 = fsub fast float 1.000000e+00, %4563
  %4607 = fmul fast float %4605, %4606
  %4608 = fsub fast float 1.000000e+00, %4607
  %4609 = bitcast float %4608 to i32
  %4610 = sub nsw i32 2129859010, %4609
  %4611 = bitcast i32 %4610 to float
  %4612 = call float @dx.op.binary.f32(i32 36, float %4542, float %4604)  ; FMin(a,b)
  %4613 = fmul fast float %4612, %4606
  %4614 = fsub fast float 1.000000e+00, %4613
  %4615 = bitcast float %4614 to i32
  %4616 = sub nsw i32 2129859010, %4615
  %4617 = bitcast i32 %4616 to float
  %4618 = call float @dx.op.binary.f32(i32 36, float %4543, float %4604)  ; FMin(a,b)
  %4619 = fmul fast float %4618, %4606
  %4620 = fsub fast float 1.000000e+00, %4619
  %4621 = bitcast float %4620 to i32
  %4622 = sub nsw i32 2129859010, %4621
  %4623 = bitcast i32 %4622 to float
  %4624 = fmul fast float %4563, %54
  %4625 = fmul fast float %4624, %4584
  %4626 = fmul fast float %4625, %4611
  %4627 = fmul fast float %4563, %55
  %4628 = fmul fast float %4627, %4585
  %4629 = fmul fast float %4628, %4617
  %4630 = fmul fast float %4563, %56
  %4631 = fmul fast float %4630, %4586
  %4632 = fmul fast float %4631, %4623
  %4633 = call float @dx.op.binary.f32(i32 36, float %4547, float %4604)  ; FMin(a,b)
  %4634 = fmul fast float %4633, %4606
  %4635 = fsub fast float 1.000000e+00, %4634
  %4636 = bitcast float %4635 to i32
  %4637 = sub nsw i32 2129859010, %4636
  %4638 = bitcast i32 %4637 to float
  %4639 = call float @dx.op.binary.f32(i32 36, float %4548, float %4604)  ; FMin(a,b)
  %4640 = fmul fast float %4639, %4606
  %4641 = fsub fast float 1.000000e+00, %4640
  %4642 = bitcast float %4641 to i32
  %4643 = sub nsw i32 2129859010, %4642
  %4644 = bitcast i32 %4643 to float
  %4645 = call float @dx.op.binary.f32(i32 36, float %4552, float %4604)  ; FMin(a,b)
  %4646 = fmul fast float %4645, %4606
  %4647 = fsub fast float 1.000000e+00, %4646
  %4648 = bitcast float %4647 to i32
  %4649 = sub nsw i32 2129859010, %4648
  %4650 = bitcast i32 %4649 to float
  %4651 = fmul fast float %4624, %4600
  %4652 = fmul fast float %4651, %4638
  %4653 = fmul fast float %4627, %4601
  %4654 = fmul fast float %4653, %4644
  %4655 = fmul fast float %4630, %4602
  %4656 = fmul fast float %4655, %4650
  %4657 = call float @dx.op.dot3.f32(i32 55, float %4626, float %4629, float %4632, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4658 = select i1 %206, float 0.000000e+00, float %4626
  %4659 = select i1 %206, float %4657, float %4629
  %4660 = select i1 %206, float 0.000000e+00, float %4632
  %4661 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4654, float %4656, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4662 = select i1 %206, float 0.000000e+00, float %4652
  %4663 = select i1 %206, float %4661, float %4654
  %4664 = select i1 %206, float 0.000000e+00, float %4656
  %4665 = fmul fast float %4554, 9.843750e-01
  %4666 = fmul fast float %4550, 9.843750e-01
  %4667 = fadd fast float %4665, 7.812500e-03
  %4668 = fadd fast float %4666, 7.812500e-03
  %4669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %4667, float %4668, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4670 = extractvalue %dx.types.ResRet.f32 %4669, 2
  %4671 = extractvalue %dx.types.ResRet.f32 %4669, 3
  %4672 = fmul fast float %4670, %4547
  %4673 = fmul fast float %4670, %4548
  %4674 = fmul fast float %4670, %4552
  %4675 = fadd fast float %4672, %4671
  %4676 = fadd fast float %4673, %4671
  %4677 = fadd fast float %4674, %4671
  %4678 = fcmp fast ogt float %4229, 0.000000e+00
  br i1 %4678, label %4679, label %4705

; <label>:4679                                    ; preds = %4534
  %4680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %4229, float %4554, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4681 = extractvalue %dx.types.ResRet.f32 %4680, 0
  %4682 = extractvalue %dx.types.ResRet.f32 %4680, 1
  %4683 = extractvalue %dx.types.ResRet.f32 %4680, 2
  %4684 = fadd fast float %4681, -5.000000e-01
  %4685 = fadd fast float %4682, -5.000000e-01
  %4686 = fadd fast float %4683, -5.000000e-01
  %4687 = fsub fast float 1.000000e+00, %4547
  %4688 = fsub fast float 1.000000e+00, %4548
  %4689 = fsub fast float 1.000000e+00, %4552
  %4690 = fmul fast float %4547, 4.000000e+00
  %4691 = fmul fast float %4690, %4687
  %4692 = fmul fast float %4691, %4684
  %4693 = fmul fast float %4548, 4.000000e+00
  %4694 = fmul fast float %4693, %4688
  %4695 = fmul fast float %4694, %4685
  %4696 = fmul fast float %4552, 4.000000e+00
  %4697 = fmul fast float %4696, %4689
  %4698 = fmul fast float %4697, %4686
  %4699 = fadd fast float %4692, %4675
  %4700 = fadd fast float %4695, %4676
  %4701 = fadd fast float %4698, %4677
  %4702 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4703 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4704 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  br label %4705

; <label>:4705                                    ; preds = %4679, %4534
  %4706 = phi float [ %4702, %4679 ], [ %4675, %4534 ]
  %4707 = phi float [ %4703, %4679 ], [ %4676, %4534 ]
  %4708 = phi float [ %4704, %4679 ], [ %4677, %4534 ]
  %4709 = call float @dx.op.binary.f32(i32 35, float %4707, float %4708)  ; FMax(a,b)
  %4710 = call float @dx.op.binary.f32(i32 35, float %4706, float %4709)  ; FMax(a,b)
  %4711 = fsub fast float 1.000000e+00, %4710
  %4712 = fmul fast float %4711, %4658
  %4713 = fmul fast float %4711, %4659
  %4714 = fmul fast float %4711, %4660
  %4715 = call float @dx.op.dot3.f32(i32 55, float %4541, float %4542, float %4543, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4716 = fcmp fast ogt float %4715, 0x3E7FF19E20000000
  %4717 = fdiv fast float 1.000000e+00, %4715
  %4718 = select i1 %4716, float %4717, float 0.000000e+00
  %4719 = fmul fast float %4718, %4541
  %4720 = fmul fast float %4718, %4542
  %4721 = fmul fast float %4718, %4543
  %4722 = fadd fast float %4719, -1.000000e+00
  %4723 = fadd fast float %4720, -1.000000e+00
  %4724 = fadd fast float %4721, -1.000000e+00
  %4725 = fmul fast float %4722, 5.000000e-01
  %4726 = fmul fast float %4723, 5.000000e-01
  %4727 = fmul fast float %4724, 5.000000e-01
  %4728 = fadd fast float %4725, 1.000000e+00
  %4729 = fadd fast float %4726, 1.000000e+00
  %4730 = fadd fast float %4727, 1.000000e+00
  %4731 = fmul fast float %4706, %4662
  %4732 = fmul fast float %4707, %4663
  %4733 = fmul fast float %4708, %4664
  %4734 = fsub fast float 1.000000e+00, %4554
  %4735 = bitcast float %4734 to i32
  %4736 = sitofp i32 %4735 to float
  %4737 = fmul fast float %4736, 5.000000e+00
  %4738 = fadd fast float %4737, 0xC1EFBF8940000000
  %4739 = fptosi float %4738 to i32
  %4740 = bitcast i32 %4739 to float
  %4741 = fmul fast float %4740, %4230
  %4742 = fmul fast float %4658, %4741
  %4743 = fmul fast float %4742, %4711
  %4744 = fmul fast float %4743, %4728
  %4745 = fmul fast float %4659, %4741
  %4746 = fmul fast float %4745, %4711
  %4747 = fmul fast float %4746, %4729
  %4748 = fmul fast float %4660, %4741
  %4749 = fmul fast float %4748, %4711
  %4750 = fmul fast float %4749, %4730
  %4751 = fmul fast float %4712, %4226
  %4752 = fmul fast float %4713, %4226
  %4753 = fmul fast float %4714, %4226
  %4754 = fadd fast float %4731, %4219
  %4755 = fadd fast float %4754, %4744
  %4756 = fmul fast float %4755, %4226
  %4757 = fadd fast float %4732, %4220
  %4758 = fadd fast float %4757, %4747
  %4759 = fmul fast float %4758, %4226
  %4760 = fadd fast float %4733, %4221
  %4761 = fadd fast float %4760, %4750
  %4762 = fmul fast float %4761, %4226
  %4763 = bitcast i32 %4566 to float
  %4764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4765 = extractvalue %dx.types.CBufRet.f32 %4764, 3
  %4766 = fcmp fast oeq float %4765, 0.000000e+00
  br i1 %4766, label %5761, label %4767

; <label>:4767                                    ; preds = %4705
  %4768 = extractvalue %dx.types.CBufRet.f32 %4764, 0
  %4769 = extractvalue %dx.types.CBufRet.f32 %4764, 1
  %4770 = extractvalue %dx.types.CBufRet.f32 %4764, 2
  %4771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4772 = extractvalue %dx.types.CBufRet.f32 %4771, 0
  %4773 = extractvalue %dx.types.CBufRet.f32 %4771, 1
  %4774 = extractvalue %dx.types.CBufRet.f32 %4771, 2
  %4775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4776 = extractvalue %dx.types.CBufRet.f32 %4775, 0
  %4777 = extractvalue %dx.types.CBufRet.f32 %4775, 1
  %4778 = call float @dx.op.dot3.f32(i32 55, float %4772, float %4773, float %4774, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4779 = select i1 %206, float %4776, float %4772
  %4780 = select i1 %206, float %4778, float %4773
  %4781 = select i1 %206, float %4777, float %4774
  %4782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4783 = extractvalue %dx.types.CBufRet.f32 %4782, 2
  %4784 = fmul fast float %4783, %89
  %4785 = fmul fast float %4783, %90
  %4786 = fmul fast float %4783, %91
  %4787 = fadd fast float %4784, %145
  %4788 = fadd fast float %4785, %146
  %4789 = fadd fast float %4786, %147
  %4790 = fcmp fast olt float %4765, 0.000000e+00
  br i1 %4790, label %5415, label %4791

; <label>:4791                                    ; preds = %4767
  %4792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4793 = extractvalue %dx.types.CBufRet.f32 %4792, 0
  %4794 = extractvalue %dx.types.CBufRet.f32 %4792, 1
  %4795 = extractvalue %dx.types.CBufRet.f32 %4792, 2
  %4796 = extractvalue %dx.types.CBufRet.f32 %4792, 3
  %4797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.f32 %4797, 0
  %4799 = extractvalue %dx.types.CBufRet.f32 %4797, 1
  %4800 = extractvalue %dx.types.CBufRet.f32 %4797, 2
  %4801 = extractvalue %dx.types.CBufRet.f32 %4797, 3
  %4802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4803 = extractvalue %dx.types.CBufRet.f32 %4802, 0
  %4804 = extractvalue %dx.types.CBufRet.f32 %4802, 1
  %4805 = extractvalue %dx.types.CBufRet.f32 %4802, 2
  %4806 = extractvalue %dx.types.CBufRet.f32 %4802, 3
  %4807 = fmul fast float %4793, %4787
  %4808 = call float @dx.op.tertiary.f32(i32 46, float %4788, float %4794, float %4807)  ; FMad(a,b,c)
  %4809 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %4795, float %4808)  ; FMad(a,b,c)
  %4810 = fadd fast float %4809, %4796
  %4811 = fmul fast float %4798, %4787
  %4812 = call float @dx.op.tertiary.f32(i32 46, float %4788, float %4799, float %4811)  ; FMad(a,b,c)
  %4813 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %4800, float %4812)  ; FMad(a,b,c)
  %4814 = fadd fast float %4813, %4801
  %4815 = fmul fast float %4803, %4787
  %4816 = call float @dx.op.tertiary.f32(i32 46, float %4788, float %4804, float %4815)  ; FMad(a,b,c)
  %4817 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %4805, float %4816)  ; FMad(a,b,c)
  %4818 = fadd fast float %4817, %4806
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 0
  %4821 = extractvalue %dx.types.CBufRet.f32 %4819, 1
  %4822 = extractvalue %dx.types.CBufRet.f32 %4819, 3
  %4823 = fmul fast float %4822, %4810
  %4824 = fmul fast float %4822, %4814
  %4825 = fadd fast float %4823, %4820
  %4826 = fadd fast float %4824, %4821
  %4827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4828 = extractvalue %dx.types.CBufRet.f32 %4827, 0
  %4829 = extractvalue %dx.types.CBufRet.f32 %4827, 1
  %4830 = extractvalue %dx.types.CBufRet.f32 %4827, 3
  %4831 = fmul fast float %4830, %4810
  %4832 = fmul fast float %4830, %4814
  %4833 = fadd fast float %4831, %4828
  %4834 = fadd fast float %4832, %4829
  %4835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.f32 %4835, 1
  %4837 = fsub fast float %4836, %4818
  %4838 = extractvalue %dx.types.CBufRet.f32 %4835, 2
  %4839 = fmul fast float %4837, %4838
  %4840 = fsub fast float 1.000000e+00, %4839
  %4841 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4842 = extractvalue %dx.types.CBufRet.f32 %4827, 2
  %4843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4844 = extractvalue %dx.types.CBufRet.f32 %4843, 2
  %4845 = fadd fast float %4844, %4842
  %4846 = fcmp fast ogt float %4845, 0.000000e+00
  br i1 %4846, label %4847, label %4871

; <label>:4847                                    ; preds = %4791
  %4848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4849 = extractvalue %dx.types.CBufRet.f32 %4848, 0
  %4850 = extractvalue %dx.types.CBufRet.f32 %4848, 1
  %4851 = fsub fast float %4833, %4849
  %4852 = fsub fast float %4834, %4850
  %4853 = fcmp fast olt float %4851, 0.000000e+00
  %4854 = fcmp fast olt float %4852, 0.000000e+00
  %4855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4856 = extractvalue %dx.types.CBufRet.f32 %4855, 0
  %4857 = extractvalue %dx.types.CBufRet.f32 %4855, 1
  %4858 = extractvalue %dx.types.CBufRet.f32 %4855, 2
  %4859 = extractvalue %dx.types.CBufRet.f32 %4855, 3
  %4860 = select i1 %4853, float %4856, float %4858
  %4861 = select i1 %4854, float %4857, float %4859
  %4862 = fmul fast float %4860, %4851
  %4863 = fmul fast float %4861, %4852
  %4864 = call float @dx.op.unary.f32(i32 6, float %4862)  ; FAbs(value)
  %4865 = call float @dx.op.unary.f32(i32 6, float %4863)  ; FAbs(value)
  %4866 = extractvalue %dx.types.CBufRet.f32 %4782, 0
  %4867 = call float @dx.op.binary.f32(i32 35, float %4864, float %4865)  ; FMax(a,b)
  %4868 = fsub fast float %4866, %4867
  %4869 = call float @dx.op.unary.f32(i32 7, float %4868)  ; Saturate(value)
  %4870 = fmul fast float %4869, %4841
  br label %4871

; <label>:4871                                    ; preds = %4847, %4791
  %4872 = phi float [ %4870, %4847 ], [ 0.000000e+00, %4791 ]
  %4873 = extractvalue %dx.types.CBufRet.f32 %4819, 2
  %4874 = extractvalue %dx.types.CBufRet.f32 %4843, 1
  %4875 = fadd fast float %4874, %4873
  %4876 = fcmp fast ogt float %4875, 0.000000e+00
  %4877 = extractvalue %dx.types.CBufRet.f32 %4782, 0
  br i1 %4876, label %4878, label %4901

; <label>:4878                                    ; preds = %4871
  %4879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.f32 %4879, 0
  %4881 = extractvalue %dx.types.CBufRet.f32 %4879, 1
  %4882 = fsub fast float %4825, %4880
  %4883 = fsub fast float %4826, %4881
  %4884 = fcmp fast olt float %4882, 0.000000e+00
  %4885 = fcmp fast olt float %4883, 0.000000e+00
  %4886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.f32 %4886, 0
  %4888 = extractvalue %dx.types.CBufRet.f32 %4886, 1
  %4889 = extractvalue %dx.types.CBufRet.f32 %4886, 2
  %4890 = extractvalue %dx.types.CBufRet.f32 %4886, 3
  %4891 = select i1 %4884, float %4887, float %4889
  %4892 = select i1 %4885, float %4888, float %4890
  %4893 = fmul fast float %4891, %4882
  %4894 = fmul fast float %4892, %4883
  %4895 = call float @dx.op.unary.f32(i32 6, float %4893)  ; FAbs(value)
  %4896 = call float @dx.op.unary.f32(i32 6, float %4894)  ; FAbs(value)
  %4897 = call float @dx.op.binary.f32(i32 35, float %4895, float %4896)  ; FMax(a,b)
  %4898 = fsub fast float %4877, %4897
  %4899 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4900 = fmul fast float %4899, %4841
  br label %4901

; <label>:4901                                    ; preds = %4878, %4871
  %4902 = phi float [ %4900, %4878 ], [ 0.000000e+00, %4871 ]
  %4903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4904 = extractvalue %dx.types.CBufRet.f32 %4903, 1
  %4905 = call float @dx.op.unary.f32(i32 7, float %4904)  ; Saturate(value)
  %4906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4907 = extractvalue %dx.types.CBufRet.f32 %4906, 0
  %4908 = extractvalue %dx.types.CBufRet.f32 %4906, 1
  %4909 = fsub fast float %4810, %4907
  %4910 = fsub fast float %4814, %4908
  %4911 = fcmp fast olt float %4909, 0.000000e+00
  %4912 = fcmp fast olt float %4910, 0.000000e+00
  %4913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4914 = extractvalue %dx.types.CBufRet.f32 %4913, 0
  %4915 = extractvalue %dx.types.CBufRet.f32 %4913, 1
  %4916 = extractvalue %dx.types.CBufRet.f32 %4913, 2
  %4917 = extractvalue %dx.types.CBufRet.f32 %4913, 3
  %4918 = select i1 %4911, float %4914, float %4916
  %4919 = select i1 %4912, float %4915, float %4917
  %4920 = fmul fast float %4918, %4909
  %4921 = fmul fast float %4919, %4910
  %4922 = call float @dx.op.unary.f32(i32 6, float %4920)  ; FAbs(value)
  %4923 = call float @dx.op.unary.f32(i32 6, float %4921)  ; FAbs(value)
  %4924 = call float @dx.op.binary.f32(i32 35, float %4922, float %4923)  ; FMax(a,b)
  %4925 = fsub fast float %4877, %4924
  %4926 = call float @dx.op.unary.f32(i32 7, float %4925)  ; Saturate(value)
  %4927 = call float @dx.op.binary.f32(i32 36, float %4926, float %4905)  ; FMin(a,b)
  %4928 = fmul fast float %4927, %4841
  %4929 = fsub fast float %4902, %4928
  %4930 = fsub fast float %4872, %4902
  %4931 = fsub fast float %4930, %4928
  %4932 = call float @dx.op.binary.f32(i32 35, float %4902, float %4872)  ; FMax(a,b)
  %4933 = call float @dx.op.binary.f32(i32 35, float %4928, float %4932)  ; FMax(a,b)
  %4934 = fcmp fast olt float %4933, 1.000000e+00
  br i1 %4934, label %4935, label %5333, !dx.controlflow.hints !79

; <label>:4935                                    ; preds = %4901
  %4936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4937 = extractvalue %dx.types.CBufRet.f32 %4936, 0
  %4938 = fcmp fast une float %4937, 0.000000e+00
  br i1 %4938, label %4939, label %5333, !dx.controlflow.hints !80

; <label>:4939                                    ; preds = %4935
  %4940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4941 = extractvalue %dx.types.CBufRet.f32 %4940, 0
  %4942 = extractvalue %dx.types.CBufRet.f32 %4940, 1
  %4943 = extractvalue %dx.types.CBufRet.f32 %4940, 2
  %4944 = extractvalue %dx.types.CBufRet.f32 %4940, 3
  %4945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4946 = extractvalue %dx.types.CBufRet.f32 %4945, 0
  %4947 = extractvalue %dx.types.CBufRet.f32 %4945, 1
  %4948 = extractvalue %dx.types.CBufRet.f32 %4945, 2
  %4949 = extractvalue %dx.types.CBufRet.f32 %4945, 3
  %4950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4951 = extractvalue %dx.types.CBufRet.f32 %4950, 0
  %4952 = extractvalue %dx.types.CBufRet.f32 %4950, 1
  %4953 = extractvalue %dx.types.CBufRet.f32 %4950, 2
  %4954 = extractvalue %dx.types.CBufRet.f32 %4950, 3
  %4955 = fmul fast float %4941, %4787
  %4956 = call float @dx.op.tertiary.f32(i32 46, float %4788, float %4942, float %4955)  ; FMad(a,b,c)
  %4957 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %4943, float %4956)  ; FMad(a,b,c)
  %4958 = fadd fast float %4957, %4944
  %4959 = fmul fast float %4946, %4787
  %4960 = call float @dx.op.tertiary.f32(i32 46, float %4788, float %4947, float %4959)  ; FMad(a,b,c)
  %4961 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %4948, float %4960)  ; FMad(a,b,c)
  %4962 = fadd fast float %4961, %4949
  %4963 = fmul fast float %4951, %4787
  %4964 = call float @dx.op.tertiary.f32(i32 46, float %4788, float %4952, float %4963)  ; FMad(a,b,c)
  %4965 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %4953, float %4964)  ; FMad(a,b,c)
  %4966 = fadd fast float %4965, %4954
  %4967 = fcmp fast oge float %4958, 1.000000e+00
  %4968 = fcmp fast oge float %4962, 1.000000e+00
  %4969 = or i1 %4967, %4968
  %4970 = fcmp fast olt float %4958, 0.000000e+00
  %4971 = fcmp fast olt float %4962, 0.000000e+00
  %4972 = or i1 %4970, %4971
  %4973 = or i1 %4969, %4972
  br i1 %4973, label %5333, label %4974, !dx.controlflow.hints !81

; <label>:4974                                    ; preds = %4939
  %4975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4976 = extractvalue %dx.types.CBufRet.f32 %4975, 0
  %4977 = extractvalue %dx.types.CBufRet.f32 %4975, 1
  %4978 = extractvalue %dx.types.CBufRet.f32 %4975, 2
  %4979 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.i32 %4979, 2
  %4981 = uitofp i32 %4980 to float
  %4982 = extractvalue %dx.types.CBufRet.i32 %4979, 3
  %4983 = uitofp i32 %4982 to float
  %4984 = extractvalue %dx.types.CBufRet.f32 %4975, 3
  %4985 = fmul fast float %4984, 2.000000e+00
  %4986 = fsub fast float %4958, %4976
  %4987 = fsub fast float %4962, %4977
  %4988 = fmul fast float %4985, %4986
  %4989 = fmul fast float %4985, %4987
  %4990 = fdiv fast float 1.000000e+00, %4770
  %4991 = fmul fast float %4989, %4990
  %4992 = call float @dx.op.unary.f32(i32 6, float %4991)  ; FAbs(value)
  %4993 = fmul fast float %4978, %4789
  %4994 = fmul fast float %4993, %4985
  %4995 = call float @dx.op.unary.f32(i32 6, float %4994)  ; FAbs(value)
  %4996 = call float @dx.op.unary.f32(i32 6, float %4988)  ; FAbs(value)
  %4997 = call float @dx.op.binary.f32(i32 35, float %4995, float %4992)  ; FMax(a,b)
  %4998 = call float @dx.op.binary.f32(i32 35, float %4996, float %4997)  ; FMax(a,b)
  %4999 = fmul fast float %4998, 2.000000e+00
  %5000 = call float @dx.op.unary.f32(i32 23, float %4999)  ; Log(value)
  %5001 = call float @dx.op.binary.f32(i32 35, float %5000, float %4981)  ; FMax(a,b)
  %5002 = call float @dx.op.unary.f32(i32 22, float %5001)  ; Frc(value)
  %5003 = fadd fast float %5002, 0xBFEA666660000000
  %5004 = fmul fast float %5003, 8.000000e+00
  %5005 = call float @dx.op.unary.f32(i32 7, float %5004)  ; Saturate(value)
  %5006 = call float @dx.op.unary.f32(i32 27, float %5001)  ; Round_ni(value)
  %5007 = fadd fast float %5006, %5005
  %5008 = call float @dx.op.binary.f32(i32 36, float %5007, float %4983)  ; FMin(a,b)
  %5009 = call float @dx.op.unary.f32(i32 27, float %5008)  ; Round_ni(value)
  %5010 = fsub fast float -0.000000e+00, %5009
  %5011 = call float @dx.op.unary.f32(i32 21, float %5010)  ; Exp(value)
  %5012 = fmul fast float %5011, %4985
  %5013 = fmul fast float %5012, %4958
  %5014 = fmul fast float %5012, %4962
  %5015 = fmul fast float %5013, 2.500000e-01
  %5016 = fmul fast float %5014, 2.500000e-01
  %5017 = fadd fast float %5015, 5.000000e-01
  %5018 = fadd fast float %5016, 5.000000e-01
  %5019 = fsub fast float %4983, %4981
  %5020 = fptoui float %5019 to i32
  %5021 = add i32 %5020, 320
  %5022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %5021)  ; CBufferLoadLegacy(handle,regIndex)
  %5023 = extractvalue %dx.types.CBufRet.f32 %5022, 0
  %5024 = extractvalue %dx.types.CBufRet.f32 %5022, 1
  %5025 = fcmp fast une float %5008, %4983
  %5026 = fsub fast float %4958, %5023
  %5027 = fsub fast float %4962, %5024
  %5028 = call float @dx.op.unary.f32(i32 6, float %5026)  ; FAbs(value)
  %5029 = call float @dx.op.unary.f32(i32 6, float %5027)  ; FAbs(value)
  %5030 = fmul fast float %5028, %5012
  %5031 = fmul fast float %5029, %5012
  %5032 = fcmp fast olt float %5030, 1.000000e+00
  %5033 = fcmp fast olt float %5031, 1.000000e+00
  %5034 = and i1 %5032, %5033
  %5035 = or i1 %5025, %5034
  br i1 %5035, label %5036, label %5333, !dx.controlflow.hints !82

; <label>:5036                                    ; preds = %4974
  %5037 = fmul fast float %5014, 5.000000e-01
  %5038 = fmul fast float %5013, 5.000000e-01
  %5039 = fadd fast float %5037, 5.000000e-01
  %5040 = fadd fast float %5038, 5.000000e-01
  %5041 = sitofp i32 %4980 to float
  %5042 = fsub fast float %5008, %5041
  %5043 = call float @dx.op.unary.f32(i32 27, float %5042)  ; Round_ni(value)
  %5044 = call float @dx.op.unary.f32(i32 22, float %5008)  ; Frc(value)
  %5045 = call float @dx.op.unary.f32(i32 22, float %5040)  ; Frc(value)
  %5046 = call float @dx.op.unary.f32(i32 22, float %5039)  ; Frc(value)
  %5047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %5045, float %5046, float %5043, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5048 = extractvalue %dx.types.ResRet.f32 %5047, 0
  %5049 = extractvalue %dx.types.ResRet.f32 %5047, 1
  %5050 = extractvalue %dx.types.ResRet.f32 %5047, 2
  %5051 = extractvalue %dx.types.ResRet.f32 %5047, 3
  %5052 = fcmp fast ogt float %5044, 0.000000e+00
  br i1 %5052, label %5053, label %5074, !dx.controlflow.hints !83

; <label>:5053                                    ; preds = %5036
  %5054 = fadd fast float %5043, 1.000000e+00
  %5055 = call float @dx.op.unary.f32(i32 22, float %5017)  ; Frc(value)
  %5056 = call float @dx.op.unary.f32(i32 22, float %5018)  ; Frc(value)
  %5057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %5055, float %5056, float %5054, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5058 = extractvalue %dx.types.ResRet.f32 %5057, 0
  %5059 = extractvalue %dx.types.ResRet.f32 %5057, 1
  %5060 = extractvalue %dx.types.ResRet.f32 %5057, 2
  %5061 = extractvalue %dx.types.ResRet.f32 %5057, 3
  %5062 = fsub fast float %5058, %5048
  %5063 = fsub fast float %5059, %5049
  %5064 = fsub fast float %5060, %5050
  %5065 = fsub fast float %5061, %5051
  %5066 = fmul fast float %5062, %5044
  %5067 = fmul fast float %5063, %5044
  %5068 = fmul fast float %5064, %5044
  %5069 = fmul fast float %5065, %5044
  %5070 = fadd fast float %5066, %5048
  %5071 = fadd fast float %5067, %5049
  %5072 = fadd fast float %5068, %5050
  %5073 = fadd fast float %5069, %5051
  br label %5074

; <label>:5074                                    ; preds = %5053, %5036
  %5075 = phi float [ %5070, %5053 ], [ %5048, %5036 ]
  %5076 = phi float [ %5071, %5053 ], [ %5049, %5036 ]
  %5077 = phi float [ %5072, %5053 ], [ %5050, %5036 ]
  %5078 = phi float [ %5073, %5053 ], [ %5051, %5036 ]
  %5079 = fadd fast float %5075, -5.000000e-01
  %5080 = fadd fast float %5077, -5.000000e-01
  %5081 = fmul fast float %5079, 0xBFD5555560000000
  %5082 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5080, float %5081)  ; FMad(a,b,c)
  %5083 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5076, float 0.000000e+00)  ; FMad(a,b,c)
  %5084 = fadd fast float %5083, %5078
  %5085 = fmul fast float %5079, -7.500000e-01
  %5086 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5080, float %5085)  ; FMad(a,b,c)
  %5087 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5076, float 0.000000e+00)  ; FMad(a,b,c)
  %5088 = fadd fast float %5087, %5078
  %5089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5090 = extractvalue %dx.types.CBufRet.f32 %5089, 0
  %5091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5092 = extractvalue %dx.types.CBufRet.f32 %5091, 0
  %5093 = extractvalue %dx.types.CBufRet.f32 %5091, 1
  %5094 = extractvalue %dx.types.CBufRet.f32 %5091, 2
  %5095 = extractvalue %dx.types.CBufRet.f32 %5091, 3
  %5096 = fsub fast float %5092, %5082
  %5097 = fsub fast float %5093, %5084
  %5098 = fsub fast float %5094, %5086
  %5099 = fsub fast float %5095, %5088
  %5100 = fmul fast float %5096, %5090
  %5101 = fmul fast float %5097, %5090
  %5102 = fmul fast float %5098, %5090
  %5103 = fmul fast float %5099, %5090
  %5104 = fadd fast float %5100, %5082
  %5105 = fadd fast float %5101, %5084
  %5106 = fadd fast float %5102, %5086
  %5107 = fadd fast float %5103, %5088
  %5108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5109 = extractvalue %dx.types.ResRet.i32 %5108, 0
  %5110 = and i32 %5109, 536870911
  %5111 = uitofp i32 %5110 to float
  %5112 = fmul fast float %5111, %4958
  %5113 = fmul fast float %5111, %4962
  %5114 = fptoui float %5112 to i32
  %5115 = fptoui float %5113 to i32
  %5116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5117 = extractvalue %dx.types.ResRet.i32 %5116, 0
  %5118 = and i32 %5117, 31
  %5119 = lshr i32 %5114, %5118
  %5120 = lshr i32 %5115, %5118
  %5121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5122 = extractvalue %dx.types.ResRet.i32 %5121, 0
  %5123 = and i32 %5122, 31
  %5124 = shl i32 1, %5123
  %5125 = call i32 @dx.op.binary.i32(i32 40, i32 %5124, i32 4)  ; UMin(a,b)
  %5126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5127 = extractvalue %dx.types.ResRet.i32 %5126, 0
  %5128 = extractvalue %dx.types.ResRet.i32 %5126, 1
  %5129 = icmp eq i32 %5125, 0
  br i1 %5129, label %5171, label %5130

; <label>:5130                                    ; preds = %5074
  br label %5131

; <label>:5131                                    ; preds = %5159, %5130
  %5132 = phi i32 [ %5162, %5159 ], [ 0, %5130 ]
  %5133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5134 = extractvalue %dx.types.ResRet.i32 %5133, 0
  %5135 = lshr i32 %5134, 16
  %5136 = and i32 %5135, 31
  %5137 = shl i32 %5120, %5136
  %5138 = add i32 %5137, %5119
  %5139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5140 = extractvalue %dx.types.ResRet.i32 %5139, 0
  %5141 = and i32 %5140, 31
  %5142 = shl i32 %5138, %5141
  %5143 = add i32 %5142, %5132
  %5144 = shl i32 %5143, 2
  %5145 = add i32 %5144, 32
  %5146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5145, i32 undef)  ; BufferLoad(srv,index,wot)
  %5147 = extractvalue %dx.types.ResRet.i32 %5146, 0
  %5148 = icmp slt i32 %5147, 0
  %5149 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %5132
  %5150 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 %5132
  %5151 = bitcast float* %5149 to i32*
  %5152 = bitcast float* %5150 to i32*
  br i1 %5148, label %5153, label %5159

; <label>:5153                                    ; preds = %5131
  %5154 = and i32 %5147, 1073741823
  %5155 = add nuw nsw i32 %5154, 20
  %5156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5155, i32 undef)  ; BufferLoad(srv,index,wot)
  %5157 = extractvalue %dx.types.ResRet.i32 %5156, 0
  %5158 = extractvalue %dx.types.ResRet.i32 %5156, 1
  br label %5159

; <label>:5159                                    ; preds = %5153, %5131
  %5160 = phi i32 [ %5157, %5153 ], [ %5127, %5131 ]
  %5161 = phi i32 [ %5158, %5153 ], [ %5128, %5131 ]
  store i32 %5160, i32* %5151, align 4
  store i32 %5161, i32* %5152, align 4
  %5162 = add nuw i32 %5132, 1
  %5163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5164 = extractvalue %dx.types.CBufRet.i32 %5163, 2
  %5165 = icmp eq i32 %5164, 0
  %5166 = icmp ugt i32 %5147, -1073741825
  %5167 = and i1 %5166, %5165
  %5168 = icmp ult i32 %5162, %5125
  %5169 = and i1 %5167, %5168
  br i1 %5169, label %5131, label %5170

; <label>:5170                                    ; preds = %5159
  br label %5171

; <label>:5171                                    ; preds = %5170, %5074
  %5172 = phi i32 [ 0, %5074 ], [ %5162, %5170 ]
  %5173 = extractvalue %dx.types.CBufRet.f32 %4936, 2
  %5174 = fptoui float %5173 to i32
  %5175 = icmp eq i32 %5174, 0
  br i1 %5175, label %5227, label %5176

; <label>:5176                                    ; preds = %5171
  br label %5177

; <label>:5177                                    ; preds = %5222, %5176
  %5178 = phi i32 [ %5223, %5222 ], [ %5172, %5176 ]
  %5179 = phi i32 [ %5224, %5222 ], [ 0, %5176 ]
  %5180 = lshr i32 %5179, 2
  %5181 = and i32 %5179, 3
  %5182 = add nuw nsw i32 %5180, 83
  %5183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 %5182)  ; CBufferLoadLegacy(handle,regIndex)
  %5184 = extractvalue %dx.types.CBufRet.i32 %5183, 0
  %5185 = extractvalue %dx.types.CBufRet.i32 %5183, 1
  %5186 = extractvalue %dx.types.CBufRet.i32 %5183, 2
  %5187 = extractvalue %dx.types.CBufRet.i32 %5183, 3
  %5188 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 0
  store i32 %5184, i32* %5188, align 4
  %5189 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 1
  store i32 %5185, i32* %5189, align 4
  %5190 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 2
  store i32 %5186, i32* %5190, align 4
  %5191 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 3
  store i32 %5187, i32* %5191, align 4
  %5192 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 %5181
  %5193 = load i32, i32* %5192, align 4, !tbaa !84, !noalias !88
  %5194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5195 = extractvalue %dx.types.ResRet.i32 %5194, 0
  %5196 = lshr i32 %5195, 16
  %5197 = and i32 %5196, 31
  %5198 = shl i32 %5120, %5197
  %5199 = add i32 %5198, %5119
  %5200 = shl i32 %5199, 2
  %5201 = add i32 %5200, %5193
  %5202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5201, i32 undef)  ; BufferLoad(srv,index,wot)
  %5203 = extractvalue %dx.types.ResRet.i32 %5202, 0
  %5204 = icmp eq i32 %5203, 0
  br i1 %5204, label %5222, label %5205

; <label>:5205                                    ; preds = %5177
  %5206 = icmp slt i32 %5203, 0
  %5207 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %5178
  %5208 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 %5178
  %5209 = bitcast float* %5207 to i32*
  %5210 = bitcast float* %5208 to i32*
  br i1 %5206, label %5211, label %5218

; <label>:5211                                    ; preds = %5205
  %5212 = and i32 %5203, 1073741823
  %5213 = add i32 %5193, 20
  %5214 = add i32 %5213, %5212
  %5215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5214, i32 undef)  ; BufferLoad(srv,index,wot)
  %5216 = extractvalue %dx.types.ResRet.i32 %5215, 0
  %5217 = extractvalue %dx.types.ResRet.i32 %5215, 1
  br label %5218

; <label>:5218                                    ; preds = %5211, %5205
  %5219 = phi i32 [ %5216, %5211 ], [ %5127, %5205 ]
  %5220 = phi i32 [ %5217, %5211 ], [ %5128, %5205 ]
  store i32 %5219, i32* %5209, align 4
  store i32 %5220, i32* %5210, align 4
  %5221 = add i32 %5178, 1
  br label %5222

; <label>:5222                                    ; preds = %5218, %5177
  %5223 = phi i32 [ %5178, %5177 ], [ %5221, %5218 ]
  %5224 = add nuw i32 %5179, 1
  %5225 = icmp eq i32 %5224, %5174
  br i1 %5225, label %5226, label %5177

; <label>:5226                                    ; preds = %5222
  br label %5227

; <label>:5227                                    ; preds = %5226, %5171
  %5228 = phi i32 [ %5172, %5171 ], [ %5223, %5226 ]
  %5229 = icmp eq i32 %5228, 1
  %5230 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 0
  %5231 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 0
  br i1 %5229, label %5232, label %5235

; <label>:5232                                    ; preds = %5227
  %5233 = load float, float* %5230, align 4
  %5234 = load float, float* %5231, align 4
  br label %5262

; <label>:5235                                    ; preds = %5227
  %5236 = load float, float* %5230, align 4
  %5237 = load float, float* %5231, align 4
  %5238 = fdiv fast float 1.000000e+00, %5237
  %5239 = fsub fast float %5236, %5238
  %5240 = icmp ugt i32 %5228, 1
  br i1 %5240, label %5241, label %5257

; <label>:5241                                    ; preds = %5235
  br label %5242

; <label>:5242                                    ; preds = %5242, %5241
  %5243 = phi float [ %5252, %5242 ], [ %5239, %5241 ]
  %5244 = phi float [ %5253, %5242 ], [ %5236, %5241 ]
  %5245 = phi i32 [ %5254, %5242 ], [ 1, %5241 ]
  %5246 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %5245
  %5247 = load float, float* %5246, align 4
  %5248 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 %5245
  %5249 = load float, float* %5248, align 4
  %5250 = fdiv fast float 1.000000e+00, %5249
  %5251 = fsub fast float %5247, %5250
  %5252 = call float @dx.op.binary.f32(i32 36, float %5243, float %5251)  ; FMin(a,b)
  %5253 = call float @dx.op.binary.f32(i32 35, float %5244, float %5247)  ; FMax(a,b)
  %5254 = add nuw i32 %5245, 1
  %5255 = icmp eq i32 %5254, %5228
  br i1 %5255, label %5256, label %5242

; <label>:5256                                    ; preds = %5242
  br label %5257

; <label>:5257                                    ; preds = %5256, %5235
  %5258 = phi float [ %5239, %5235 ], [ %5252, %5256 ]
  %5259 = phi float [ %5236, %5235 ], [ %5253, %5256 ]
  %5260 = fsub fast float %5259, %5258
  %5261 = fdiv fast float 1.000000e+00, %5260
  br label %5262

; <label>:5262                                    ; preds = %5257, %5232
  %5263 = phi float [ %5233, %5232 ], [ %5259, %5257 ]
  %5264 = phi float [ %5234, %5232 ], [ %5261, %5257 ]
  %5265 = fadd fast float %4966, %5263
  %5266 = fmul fast float %5265, %5264
  %5267 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5268 = fmul fast float %5267, 2.000000e+00
  %5269 = fsub fast float 1.000000e+00, %5268
  %5270 = fmul fast float %5104, %5104
  %5271 = fsub fast float %5105, %5270
  %5272 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5271)  ; FMax(a,b)
  %5273 = fdiv fast float 1.000000e+00, %5272
  %5274 = fmul fast float %5105, %5104
  %5275 = fsub fast float %5106, %5274
  %5276 = fsub fast float %5269, %5104
  %5277 = fmul fast float %5269, %5269
  %5278 = fsub fast float %5277, %5105
  %5279 = fmul fast float %5273, %5275
  %5280 = fmul fast float %5279, %5276
  %5281 = fsub fast float %5278, %5280
  %5282 = fmul fast float %5105, %5105
  %5283 = fsub fast float %5107, %5282
  %5284 = fmul fast float %5275, %5275
  %5285 = fmul fast float %5284, %5273
  %5286 = fsub fast float %5283, %5285
  %5287 = fdiv fast float %5281, %5286
  %5288 = fmul fast float %5287, %5275
  %5289 = fsub fast float %5276, %5288
  %5290 = fmul fast float %5289, %5273
  %5291 = fmul fast float %5290, %5104
  %5292 = fsub fast float 1.000000e+00, %5291
  %5293 = fmul fast float %5287, %5105
  %5294 = fsub fast float %5292, %5293
  %5295 = fmul fast float %5290, %5290
  %5296 = fmul fast float %5287, 4.000000e+00
  %5297 = fmul fast float %5296, %5294
  %5298 = fsub fast float %5295, %5297
  %5299 = call float @dx.op.unary.f32(i32 24, float %5298)  ; Sqrt(value)
  %5300 = fcmp fast oge float %5290, 0.000000e+00
  %5301 = fsub fast float -0.000000e+00, %5299
  %5302 = select i1 %5300, float %5301, float %5299
  %5303 = fsub fast float %5302, %5290
  %5304 = fdiv fast float %5303, %5287
  %5305 = fdiv fast float %5294, %5303
  %5306 = fmul fast float %5304, 5.000000e-01
  %5307 = fmul fast float %5305, 2.000000e+00
  %5308 = select i1 %5300, float %5306, float %5307
  %5309 = select i1 %5300, float %5307, float %5306
  %5310 = call float @dx.op.binary.f32(i32 35, float %5308, float %5309)  ; FMax(a,b)
  %5311 = call float @dx.op.binary.f32(i32 36, float %5308, float %5309)  ; FMin(a,b)
  %5312 = fcmp fast ogt float %5269, %5310
  %5313 = fsub fast float %5269, %5311
  %5314 = fsub fast float %5269, %5310
  %5315 = fsub fast float %5310, %5311
  %5316 = select i1 %5312, float %5314, float %5315
  %5317 = fmul float %5313, %5316
  %5318 = select i1 %5312, float %5311, float %5269
  %5319 = fcmp fast ogt float %5269, %5311
  %5320 = fmul fast float %5318, %5310
  %5321 = fadd fast float %5318, %5310
  %5322 = fmul fast float %5321, %5104
  %5323 = fadd fast float %5320, %5105
  %5324 = fsub fast float %5323, %5322
  %5325 = fdiv fast float %5324, %5317
  %5326 = select i1 %5319, float %5325, float 0.000000e+00
  %5327 = fsub fast float 1.000000e+00, %5326
  %5328 = select i1 %5312, float %5327, float %5326
  %5329 = call float @dx.op.unary.f32(i32 7, float %5328)  ; Saturate(value)
  %5330 = extractvalue %dx.types.CBufRet.f32 %5089, 3
  %5331 = fmul fast float %5330, %5329
  %5332 = fsub fast float 1.000000e+00, %5331
  br label %5333

; <label>:5333                                    ; preds = %5262, %4974, %4939, %4935, %4901
  %5334 = phi float [ 1.000000e+00, %4901 ], [ %5332, %5262 ], [ 1.000000e+00, %4939 ], [ 1.000000e+00, %4974 ], [ 1.000000e+00, %4935 ]
  %5335 = fcmp fast ogt float %4931, 0.000000e+00
  br i1 %5335, label %5336, label %5342, !dx.controlflow.hints !97

; <label>:5336                                    ; preds = %5333
  %5337 = fadd fast float %4844, %4818
  %5338 = call float @dx.op.binary.f32(i32 35, float %5337, float 0.000000e+00)  ; FMax(a,b)
  %5339 = fadd fast float %5338, 0x3F10000000000000
  %5340 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %37, float %4833, float %4834, float undef, float undef, i32 0, i32 0, i32 undef, float %5339)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5341 = extractvalue %dx.types.ResRet.f32 %5340, 0
  br label %5342

; <label>:5342                                    ; preds = %5336, %5333
  %5343 = phi float [ %5341, %5336 ], [ 1.000000e+00, %5333 ]
  %5344 = fcmp fast ogt float %4929, 0.000000e+00
  br i1 %5344, label %5345, label %5351, !dx.controlflow.hints !98

; <label>:5345                                    ; preds = %5342
  %5346 = fadd fast float %4874, %4818
  %5347 = call float @dx.op.binary.f32(i32 35, float %5346, float 0.000000e+00)  ; FMax(a,b)
  %5348 = fadd fast float %5347, 0x3F10000000000000
  %5349 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %37, float %4825, float %4826, float undef, float undef, i32 0, i32 0, i32 undef, float %5348)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5350 = extractvalue %dx.types.ResRet.f32 %5349, 0
  br label %5351

; <label>:5351                                    ; preds = %5345, %5342
  %5352 = phi float [ %5350, %5345 ], [ 1.000000e+00, %5342 ]
  %5353 = fcmp fast ogt float %4928, 0.000000e+00
  br i1 %5353, label %5354, label %5361, !dx.controlflow.hints !99

; <label>:5354                                    ; preds = %5351
  %5355 = extractvalue %dx.types.CBufRet.f32 %4843, 0
  %5356 = fadd fast float %5355, %4818
  %5357 = call float @dx.op.binary.f32(i32 35, float %5356, float 0.000000e+00)  ; FMax(a,b)
  %5358 = fadd fast float %5357, 0x3F10000000000000
  %5359 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %37, float %4810, float %4814, float undef, float undef, i32 0, i32 0, i32 undef, float %5358)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5360 = extractvalue %dx.types.ResRet.f32 %5359, 0
  br label %5361

; <label>:5361                                    ; preds = %5354, %5351
  %5362 = phi float [ %5360, %5354 ], [ 1.000000e+00, %5351 ]
  %5363 = fsub fast float %5343, %5334
  %5364 = fmul fast float %5363, %4872
  %5365 = fadd fast float %5364, %5334
  %5366 = fsub fast float %5352, %5365
  %5367 = fmul fast float %5366, %4902
  %5368 = fadd fast float %5367, %5365
  %5369 = fsub fast float %5362, %5368
  %5370 = fmul fast float %5369, %4928
  %5371 = fadd fast float %5370, %5368
  %5372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5373 = extractvalue %dx.types.CBufRet.f32 %5372, 2
  %5374 = fcmp fast ogt float %5373, 0.000000e+00
  br i1 %5374, label %5375, label %5415, !dx.controlflow.hints !100

; <label>:5375                                    ; preds = %5361
  %5376 = fcmp fast ugt float %5373, 0.000000e+00
  br i1 %5376, label %5377, label %5412

; <label>:5377                                    ; preds = %5375
  %5378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5379 = extractvalue %dx.types.CBufRet.f32 %5378, 0
  %5380 = extractvalue %dx.types.CBufRet.f32 %5378, 1
  %5381 = extractvalue %dx.types.CBufRet.f32 %5378, 2
  %5382 = extractvalue %dx.types.CBufRet.f32 %5378, 3
  %5383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5384 = extractvalue %dx.types.CBufRet.f32 %5383, 0
  %5385 = extractvalue %dx.types.CBufRet.f32 %5383, 1
  %5386 = extractvalue %dx.types.CBufRet.f32 %5383, 2
  %5387 = extractvalue %dx.types.CBufRet.f32 %5383, 3
  %5388 = extractvalue %dx.types.CBufRet.f32 %5372, 0
  %5389 = extractvalue %dx.types.CBufRet.f32 %5372, 1
  %5390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5391 = extractvalue %dx.types.CBufRet.f32 %5390, 0
  %5392 = extractvalue %dx.types.CBufRet.f32 %5390, 1
  %5393 = extractvalue %dx.types.CBufRet.f32 %5390, 2
  %5394 = fadd fast float %5391, %4787
  %5395 = fadd fast float %5392, %4788
  %5396 = fadd fast float %5393, %4789
  %5397 = fmul fast float %5394, %5379
  %5398 = call float @dx.op.tertiary.f32(i32 46, float %5380, float %5395, float %5397)  ; FMad(a,b,c)
  %5399 = call float @dx.op.tertiary.f32(i32 46, float %5381, float %5396, float %5398)  ; FMad(a,b,c)
  %5400 = fadd fast float %5399, %5382
  %5401 = fmul fast float %5394, %5384
  %5402 = call float @dx.op.tertiary.f32(i32 46, float %5385, float %5395, float %5401)  ; FMad(a,b,c)
  %5403 = call float @dx.op.tertiary.f32(i32 46, float %5386, float %5396, float %5402)  ; FMad(a,b,c)
  %5404 = fadd fast float %5403, %5387
  %5405 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %32, float %5400, float %5404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5406 = extractvalue %dx.types.ResRet.f32 %5405, 0
  %5407 = fmul fast float %5406, %5389
  %5408 = fadd fast float %5407, %5388
  %5409 = call float @dx.op.unary.f32(i32 7, float %5408)  ; Saturate(value)
  %5410 = fmul fast float %5409, %5373
  %5411 = fsub fast float 1.000000e+00, %5410
  br label %5412

; <label>:5412                                    ; preds = %5377, %5375
  %5413 = phi float [ %5411, %5377 ], [ 1.000000e+00, %5375 ]
  %5414 = fmul fast float %5413, %5371
  br label %5415

; <label>:5415                                    ; preds = %5412, %5361, %4767
  %5416 = phi float [ 1.000000e+00, %4767 ], [ %5414, %5412 ], [ %5371, %5361 ]
  %5417 = call float @dx.op.binary.f32(i32 36, float %5416, float %5416)  ; FMin(a,b)
  %5418 = call float @dx.op.binary.f32(i32 36, float %5416, float %5417)  ; FMin(a,b)
  %5419 = fcmp fast ogt float %5418, 0.000000e+00
  br i1 %5419, label %5420, label %5581, !dx.controlflow.hints !101

; <label>:5420                                    ; preds = %5415
  %5421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5422 = extractvalue %dx.types.CBufRet.f32 %5421, 0
  %5423 = extractvalue %dx.types.CBufRet.f32 %5421, 1
  %5424 = extractvalue %dx.types.CBufRet.f32 %5421, 2
  %5425 = extractvalue %dx.types.CBufRet.f32 %5421, 3
  %5426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5427 = extractvalue %dx.types.CBufRet.f32 %5426, 0
  %5428 = extractvalue %dx.types.CBufRet.f32 %5426, 1
  %5429 = extractvalue %dx.types.CBufRet.f32 %5426, 2
  %5430 = extractvalue %dx.types.CBufRet.f32 %5426, 3
  %5431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5432 = extractvalue %dx.types.CBufRet.f32 %5431, 0
  %5433 = extractvalue %dx.types.CBufRet.f32 %5431, 1
  %5434 = extractvalue %dx.types.CBufRet.f32 %5431, 2
  %5435 = extractvalue %dx.types.CBufRet.f32 %5431, 3
  %5436 = fmul fast float %5422, %4787
  %5437 = call float @dx.op.tertiary.f32(i32 46, float %4788, float %5423, float %5436)  ; FMad(a,b,c)
  %5438 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %5424, float %5437)  ; FMad(a,b,c)
  %5439 = fadd fast float %5438, %5425
  %5440 = fmul fast float %5427, %4787
  %5441 = call float @dx.op.tertiary.f32(i32 46, float %4788, float %5428, float %5440)  ; FMad(a,b,c)
  %5442 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %5429, float %5441)  ; FMad(a,b,c)
  %5443 = fadd fast float %5442, %5430
  %5444 = fmul fast float %5432, %4787
  %5445 = call float @dx.op.tertiary.f32(i32 46, float %4788, float %5433, float %5444)  ; FMad(a,b,c)
  %5446 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %5434, float %5445)  ; FMad(a,b,c)
  %5447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5448 = extractvalue %dx.types.CBufRet.f32 %5447, 0
  %5449 = extractvalue %dx.types.CBufRet.f32 %5447, 1
  %5450 = extractvalue %dx.types.CBufRet.f32 %5447, 3
  %5451 = fmul fast float %5450, %5439
  %5452 = fmul fast float %5450, %5443
  %5453 = fadd fast float %5451, %5448
  %5454 = fadd fast float %5452, %5449
  %5455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5456 = extractvalue %dx.types.CBufRet.f32 %5455, 0
  %5457 = extractvalue %dx.types.CBufRet.f32 %5455, 1
  %5458 = fsub fast float %5453, %5456
  %5459 = fsub fast float %5454, %5457
  %5460 = fcmp fast olt float %5458, 0.000000e+00
  %5461 = fcmp fast olt float %5459, 0.000000e+00
  %5462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5463 = extractvalue %dx.types.CBufRet.f32 %5462, 0
  %5464 = extractvalue %dx.types.CBufRet.f32 %5462, 1
  %5465 = extractvalue %dx.types.CBufRet.f32 %5462, 2
  %5466 = extractvalue %dx.types.CBufRet.f32 %5462, 3
  %5467 = select i1 %5460, float %5463, float %5465
  %5468 = select i1 %5461, float %5464, float %5466
  %5469 = fmul fast float %5467, %5458
  %5470 = fmul fast float %5468, %5459
  %5471 = call float @dx.op.unary.f32(i32 6, float %5469)  ; FAbs(value)
  %5472 = call float @dx.op.unary.f32(i32 6, float %5470)  ; FAbs(value)
  %5473 = extractvalue %dx.types.CBufRet.f32 %4782, 0
  %5474 = call float @dx.op.binary.f32(i32 35, float %5471, float %5472)  ; FMax(a,b)
  %5475 = fsub fast float %5473, %5474
  %5476 = call float @dx.op.unary.f32(i32 7, float %5475)  ; Saturate(value)
  %5477 = fcmp fast ogt float %5476, 0.000000e+00
  br i1 %5477, label %5478, label %5519, !dx.controlflow.hints !102

; <label>:5478                                    ; preds = %5420
  %5479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %35, float %5453, float %5454, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5480 = extractvalue %dx.types.ResRet.f32 %5479, 1
  %5481 = fcmp fast ogt float %5480, 0.000000e+00
  br i1 %5481, label %5482, label %5514

; <label>:5482                                    ; preds = %5478
  %5483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %35, float %5453, float %5454, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5484 = extractvalue %dx.types.ResRet.f32 %5483, 0
  %5485 = extractvalue %dx.types.ResRet.f32 %5483, 1
  %5486 = extractvalue %dx.types.ResRet.f32 %5483, 2
  %5487 = extractvalue %dx.types.ResRet.f32 %5483, 3
  %5488 = fsub fast float 1.000000e+00, %5435
  %5489 = fsub fast float %5488, %5446
  %5490 = fmul fast float %5489, 0x400921FB60000000
  %5491 = fadd fast float %5490, 0x3FF921FB60000000
  %5492 = call float @dx.op.unary.f32(i32 13, float %5491)  ; Sin(value)
  %5493 = fadd fast float %5492, -1.000000e+00
  %5494 = fmul fast float %5493, 0x3FD45F3060000000
  %5495 = fmul fast float %5489, 0x401921FB60000000
  %5496 = fadd fast float %5495, 0x400921FB60000000
  %5497 = call float @dx.op.unary.f32(i32 13, float %5496)  ; Sin(value)
  %5498 = fadd fast float %5497, 0x3E7777A5C0000000
  %5499 = fmul fast float %5498, 0x3FC45F3060000000
  %5500 = fmul fast float %5489, 0x4022D97C80000000
  %5501 = fadd fast float %5500, 0x4012D97C80000000
  %5502 = call float @dx.op.unary.f32(i32 13, float %5501)  ; Sin(value)
  %5503 = fadd fast float %5502, 1.000000e+00
  %5504 = fmul fast float %5503, 0x3FBB2995E0000000
  %5505 = fmul fast float %5489, 0x402921FB60000000
  %5506 = fadd fast float %5505, 0x401921FB60000000
  %5507 = call float @dx.op.unary.f32(i32 13, float %5506)  ; Sin(value)
  %5508 = fadd fast float %5507, 0xBE8777A5C0000000
  %5509 = fmul fast float %5508, 0x3FB45F3060000000
  %5510 = call float @dx.op.dot4.f32(i32 56, float %5484, float %5485, float %5486, float %5487, float %5494, float %5499, float %5504, float %5509)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5511 = fmul fast float %5510, 0xBFF7154760000000
  %5512 = call float @dx.op.unary.f32(i32 21, float %5511)  ; Exp(value)
  %5513 = call float @dx.op.unary.f32(i32 7, float %5512)  ; Saturate(value)
  br label %5514

; <label>:5514                                    ; preds = %5482, %5478
  %5515 = phi float [ %5513, %5482 ], [ 1.000000e+00, %5478 ]
  %5516 = fadd fast float %5515, -1.000000e+00
  %5517 = fmul fast float %5516, %5476
  %5518 = fadd fast float %5517, 1.000000e+00
  br label %5519

; <label>:5519                                    ; preds = %5514, %5420
  %5520 = phi float [ %5518, %5514 ], [ 1.000000e+00, %5420 ]
  %5521 = fmul fast float %5520, %5416
  %5522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5523 = extractvalue %dx.types.CBufRet.f32 %5522, 0
  %5524 = extractvalue %dx.types.CBufRet.f32 %5522, 1
  %5525 = extractvalue %dx.types.CBufRet.f32 %5522, 2
  %5526 = fadd fast float %5523, %145
  %5527 = fadd fast float %5524, %146
  %5528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5529 = extractvalue %dx.types.CBufRet.f32 %5528, 1
  %5530 = fsub fast float -0.000000e+00, %5526
  %5531 = fsub fast float -0.000000e+00, %5527
  %5532 = fsub fast float -0.000000e+00, %147
  %5533 = fsub fast float %5532, %5525
  %5534 = fadd fast float %5533, %5529
  %5535 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5530, float %5531, float %5534)  ; Dot3(ax,ay,az,bx,by,bz)
  %5536 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4768, float %4769, float %4770)  ; Dot3(ax,ay,az,bx,by,bz)
  %5537 = fdiv fast float 1.000000e+00, %5536
  %5538 = fmul fast float %5537, %5535
  %5539 = fmul fast float %4768, %5538
  %5540 = fmul fast float %4769, %5538
  %5541 = fadd fast float %5539, %5526
  %5542 = fadd fast float %5540, %5527
  %5543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5544 = extractvalue %dx.types.CBufRet.f32 %5543, 0
  %5545 = extractvalue %dx.types.CBufRet.f32 %5543, 1
  %5546 = fsub fast float %5541, %5544
  %5547 = fsub fast float %5542, %5545
  %5548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5549 = extractvalue %dx.types.CBufRet.f32 %5548, 2
  %5550 = extractvalue %dx.types.CBufRet.f32 %5548, 3
  %5551 = fmul fast float %5546, %5549
  %5552 = fmul fast float %5547, %5550
  %5553 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5554 = extractvalue %dx.types.CBufRet.i32 %5553, 3
  %5555 = icmp eq i32 %5554, 0
  br i1 %5555, label %5561, label %5556

; <label>:5556                                    ; preds = %5519
  %5557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %5551, float %5552, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5558 = extractvalue %dx.types.ResRet.f32 %5557, 0
  %5559 = extractvalue %dx.types.ResRet.f32 %5557, 1
  %5560 = extractvalue %dx.types.ResRet.f32 %5557, 2
  br label %5566

; <label>:5561                                    ; preds = %5519
  %5562 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %5551, float %5552, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5563 = extractvalue %dx.types.ResRet.f32 %5562, 0
  %5564 = extractvalue %dx.types.ResRet.f32 %5562, 1
  %5565 = extractvalue %dx.types.ResRet.f32 %5562, 2
  br label %5566

; <label>:5566                                    ; preds = %5561, %5556
  %5567 = phi float [ %5558, %5556 ], [ %5563, %5561 ]
  %5568 = phi float [ %5559, %5556 ], [ %5564, %5561 ]
  %5569 = phi float [ %5560, %5556 ], [ %5565, %5561 ]
  %5570 = extractvalue %dx.types.CBufRet.f32 %5528, 2
  %5571 = fmul fast float %5570, %5567
  %5572 = extractvalue %dx.types.CBufRet.f32 %5528, 0
  %5573 = fsub fast float %5538, %5572
  %5574 = fsub fast float %5573, %5571
  %5575 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5574)  ; FMax(a,b)
  %5576 = fmul fast float %5575, %5568
  %5577 = call float @dx.op.binary.f32(i32 36, float %5569, float %5576)  ; FMin(a,b)
  %5578 = fmul fast float %5577, 0xBFF7154760000000
  %5579 = call float @dx.op.unary.f32(i32 21, float %5578)  ; Exp(value)
  %5580 = fmul fast float %5521, %5579
  br label %5581

; <label>:5581                                    ; preds = %5566, %5415
  %5582 = phi float [ %5580, %5566 ], [ %5416, %5415 ]
  %5583 = call float @dx.op.binary.f32(i32 36, float %5582, float %5582)  ; FMin(a,b)
  %5584 = call float @dx.op.binary.f32(i32 36, float %5582, float %5583)  ; FMin(a,b)
  %5585 = fcmp fast ogt float %5584, 0.000000e+00
  br i1 %5585, label %5586, label %5761, !dx.controlflow.hints !103

; <label>:5586                                    ; preds = %5581
  %5587 = fmul fast float %5582, %4779
  %5588 = fmul fast float %5582, %4780
  %5589 = fmul fast float %5582, %4781
  %5590 = fsub fast float %4768, %4540
  %5591 = fsub fast float %4769, %4539
  %5592 = fsub fast float %4770, %4538
  %5593 = call float @dx.op.dot3.f32(i32 55, float %5590, float %5591, float %5592, float %5590, float %5591, float %5592)  ; Dot3(ax,ay,az,bx,by,bz)
  %5594 = call float @dx.op.unary.f32(i32 25, float %5593)  ; Rsqrt(value)
  %5595 = fmul fast float %5594, %5590
  %5596 = fmul fast float %5594, %5591
  %5597 = fmul fast float %5594, %5592
  %5598 = call float @dx.op.dot3.f32(i32 55, float %4768, float %4769, float %4770, float %4544, float %4545, float %4546)  ; Dot3(ax,ay,az,bx,by,bz)
  %5599 = call float @dx.op.dot3.f32(i32 55, float %4537, float %4536, float %4535, float %5595, float %5596, float %5597)  ; Dot3(ax,ay,az,bx,by,bz)
  %5600 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5601 = fmul fast float %5600, %5600
  %5602 = fmul fast float %5601, %4763
  %5603 = call float @dx.op.unary.f32(i32 7, float %5602)  ; Saturate(value)
  %5604 = fmul fast float %5603, %5600
  %5605 = call float @dx.op.dot3.f32(i32 55, float %4544, float %4545, float %4546, float %5595, float %5596, float %5597)  ; Dot3(ax,ay,az,bx,by,bz)
  %5606 = fmul fast float %5605, %5605
  %5607 = call float @dx.op.unary.f32(i32 6, float %5598)  ; FAbs(value)
  %5608 = fsub fast float 1.000000e+00, %4550
  %5609 = call float @dx.op.binary.f32(i32 35, float %5608, float 0x3F847AE140000000)  ; FMax(a,b)
  %5610 = fmul fast float %5609, %5609
  %5611 = fmul fast float %5610, %5610
  %5612 = fsub fast float 1.000000e+00, %5611
  %5613 = fmul fast float %4554, %4554
  %5614 = fmul fast float %5613, %5612
  %5615 = fadd fast float %5614, %5611
  %5616 = bitcast float %5615 to i32
  %5617 = ashr i32 %5616, 1
  %5618 = add nsw i32 %5617, 532487669
  %5619 = bitcast i32 %5618 to float
  %5620 = fadd fast float %5619, %4554
  %5621 = fmul fast float %5611, %5606
  %5622 = fsub fast float 1.000000e+00, %5606
  %5623 = fadd fast float %5622, %5621
  %5624 = fmul fast float %5607, %5607
  %5625 = fmul fast float %5624, %5612
  %5626 = fadd fast float %5625, %5611
  %5627 = bitcast float %5626 to i32
  %5628 = ashr i32 %5627, 1
  %5629 = add nsw i32 %5628, 532487669
  %5630 = bitcast i32 %5629 to float
  %5631 = fadd fast float %5630, %5607
  %5632 = fmul fast float %5623, %5623
  %5633 = fmul fast float %5632, %5620
  %5634 = fmul fast float %5633, %5631
  %5635 = fdiv fast float 0x3FF0A00000000000, %5634
  %5636 = fmul fast float %5635, %5611
  %5637 = call float @dx.op.unary.f32(i32 6, float %5599)  ; FAbs(value)
  %5638 = fsub fast float 1.000000e+00, %5637
  %5639 = bitcast float %5638 to i32
  %5640 = sitofp i32 %5639 to float
  %5641 = fmul fast float %5640, 5.000000e+00
  %5642 = fadd fast float %5641, 0xC1EFBF8940000000
  %5643 = fptosi float %5642 to i32
  %5644 = bitcast i32 %5643 to float
  %5645 = fsub fast float 1.000000e+00, %4547
  %5646 = fsub fast float 1.000000e+00, %4548
  %5647 = fsub fast float 1.000000e+00, %4552
  %5648 = fmul fast float %5644, %5645
  %5649 = fmul fast float %5644, %5646
  %5650 = fmul fast float %5644, %5647
  %5651 = fadd fast float %5648, %4547
  %5652 = fadd fast float %5649, %4548
  %5653 = fadd fast float %5650, %4552
  br i1 %4678, label %5654, label %5677

; <label>:5654                                    ; preds = %5586
  %5655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %4229, float %5637, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5656 = extractvalue %dx.types.ResRet.f32 %5655, 0
  %5657 = extractvalue %dx.types.ResRet.f32 %5655, 1
  %5658 = extractvalue %dx.types.ResRet.f32 %5655, 2
  %5659 = fadd fast float %5656, -5.000000e-01
  %5660 = fadd fast float %5657, -5.000000e-01
  %5661 = fadd fast float %5658, -5.000000e-01
  %5662 = fmul fast float %4547, 4.000000e+00
  %5663 = fmul fast float %5662, %5645
  %5664 = fmul fast float %5663, %5659
  %5665 = fmul fast float %4548, 4.000000e+00
  %5666 = fmul fast float %5665, %5646
  %5667 = fmul fast float %5666, %5660
  %5668 = fmul fast float %4552, 4.000000e+00
  %5669 = fmul fast float %5668, %5647
  %5670 = fmul fast float %5669, %5661
  %5671 = fadd fast float %5664, %5651
  %5672 = fadd fast float %5667, %5652
  %5673 = fadd fast float %5670, %5653
  %5674 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5675 = call float @dx.op.unary.f32(i32 7, float %5672)  ; Saturate(value)
  %5676 = call float @dx.op.unary.f32(i32 7, float %5673)  ; Saturate(value)
  br label %5677

; <label>:5677                                    ; preds = %5654, %5586
  %5678 = phi float [ %5674, %5654 ], [ %5651, %5586 ]
  %5679 = phi float [ %5675, %5654 ], [ %5652, %5586 ]
  %5680 = phi float [ %5676, %5654 ], [ %5653, %5586 ]
  %5681 = fmul fast float %5598, 9.843750e-01
  %5682 = fadd fast float %5681, 7.812500e-03
  %5683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %5682, float %4668, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5684 = extractvalue %dx.types.ResRet.f32 %5683, 2
  %5685 = extractvalue %dx.types.ResRet.f32 %5683, 3
  %5686 = fmul fast float %5684, %4547
  %5687 = fmul fast float %5684, %4548
  %5688 = fmul fast float %5684, %4552
  %5689 = fadd fast float %5686, %5685
  %5690 = fadd fast float %5687, %5685
  %5691 = fadd fast float %5688, %5685
  br i1 %4678, label %5692, label %5715

; <label>:5692                                    ; preds = %5677
  %5693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %4229, float %5598, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5694 = extractvalue %dx.types.ResRet.f32 %5693, 0
  %5695 = extractvalue %dx.types.ResRet.f32 %5693, 1
  %5696 = extractvalue %dx.types.ResRet.f32 %5693, 2
  %5697 = fadd fast float %5694, -5.000000e-01
  %5698 = fadd fast float %5695, -5.000000e-01
  %5699 = fadd fast float %5696, -5.000000e-01
  %5700 = fmul fast float %4547, 4.000000e+00
  %5701 = fmul fast float %5700, %5645
  %5702 = fmul fast float %5701, %5697
  %5703 = fmul fast float %4548, 4.000000e+00
  %5704 = fmul fast float %5703, %5646
  %5705 = fmul fast float %5704, %5698
  %5706 = fmul fast float %4552, 4.000000e+00
  %5707 = fmul fast float %5706, %5647
  %5708 = fmul fast float %5707, %5699
  %5709 = fadd fast float %5702, %5689
  %5710 = fadd fast float %5705, %5690
  %5711 = fadd fast float %5708, %5691
  %5712 = call float @dx.op.unary.f32(i32 7, float %5709)  ; Saturate(value)
  %5713 = call float @dx.op.unary.f32(i32 7, float %5710)  ; Saturate(value)
  %5714 = call float @dx.op.unary.f32(i32 7, float %5711)  ; Saturate(value)
  br label %5715

; <label>:5715                                    ; preds = %5692, %5677
  %5716 = phi float [ %5712, %5692 ], [ %5689, %5677 ]
  %5717 = phi float [ %5713, %5692 ], [ %5690, %5677 ]
  %5718 = phi float [ %5714, %5692 ], [ %5691, %5677 ]
  %5719 = call float @dx.op.binary.f32(i32 35, float %5717, float %5718)  ; FMax(a,b)
  %5720 = call float @dx.op.binary.f32(i32 35, float %5716, float %5719)  ; FMax(a,b)
  %5721 = fsub fast float 1.000000e+00, %5720
  %5722 = fmul fast float %5678, %5636
  %5723 = fmul fast float %5679, %5636
  %5724 = fmul fast float %5680, %5636
  %5725 = fsub fast float 1.000000e+00, %5599
  %5726 = bitcast float %5725 to i32
  %5727 = sitofp i32 %5726 to float
  %5728 = fmul fast float %5727, 5.000000e+00
  %5729 = fadd fast float %5728, 0xC1EFBF8940000000
  %5730 = fptosi float %5729 to i32
  %5731 = bitcast i32 %5730 to float
  %5732 = fmul fast float %5731, %4230
  %5733 = fmul fast float %5721, %5732
  %5734 = fmul fast float %5733, %4728
  %5735 = fmul fast float %5733, %4729
  %5736 = fmul fast float %5733, %4730
  %5737 = fadd fast float %5734, %5722
  %5738 = fadd fast float %5735, %5723
  %5739 = fadd fast float %5736, %5724
  %5740 = fmul fast float %5604, %5587
  %5741 = fmul fast float %5740, %5721
  %5742 = fmul fast float %5604, %5588
  %5743 = fmul fast float %5742, %5721
  %5744 = fmul fast float %5604, %5589
  %5745 = fmul fast float %5744, %5721
  %5746 = fmul fast float %5740, %5737
  %5747 = fmul fast float %5742, %5738
  %5748 = fmul fast float %5744, %5739
  %5749 = fadd fast float %5741, %4712
  %5750 = fmul fast float %5749, %4226
  %5751 = fadd fast float %5743, %4713
  %5752 = fmul fast float %5751, %4226
  %5753 = fadd fast float %5745, %4714
  %5754 = fmul fast float %5753, %4226
  %5755 = fadd fast float %5746, %4755
  %5756 = fmul fast float %5755, %4226
  %5757 = fadd fast float %5747, %4758
  %5758 = fmul fast float %5757, %4226
  %5759 = fadd fast float %5748, %4761
  %5760 = fmul fast float %5759, %4226
  br label %5761

; <label>:5761                                    ; preds = %5715, %5581, %4705
  %5762 = phi float [ %4756, %4705 ], [ %4756, %5581 ], [ %5756, %5715 ]
  %5763 = phi float [ %4759, %4705 ], [ %4759, %5581 ], [ %5758, %5715 ]
  %5764 = phi float [ %4762, %4705 ], [ %4762, %5581 ], [ %5760, %5715 ]
  %5765 = phi float [ %4751, %4705 ], [ %4751, %5581 ], [ %5750, %5715 ]
  %5766 = phi float [ %4752, %4705 ], [ %4752, %5581 ], [ %5752, %5715 ]
  %5767 = phi float [ %4753, %4705 ], [ %4753, %5581 ], [ %5754, %5715 ]
  %5768 = fmul fast float %4226, %4226
  %5769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5770 = extractvalue %dx.types.CBufRet.f32 %5769, 0
  %5771 = fmul fast float %5770, %4734
  %5772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5773 = extractvalue %dx.types.CBufRet.f32 %5772, 3
  %5774 = fsub fast float 1.000000e+00, %4234
  %5775 = call float @dx.op.unary.f32(i32 7, float %5774)  ; Saturate(value)
  %5776 = fadd fast float %5767, %4232
  %5777 = fmul fast float %5776, %4234
  %5778 = fmul fast float %5775, %5773
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 3
  %5781 = fmul fast float %5765, %4541
  %5782 = fmul fast float %5766, %4542
  %5783 = fmul fast float %5767, %4543
  %5784 = fcmp fast ogt float %73, %167
  %5785 = and i1 %5784, %4273
  %5786 = or i1 %4352, %5785
  %5787 = icmp eq i32 %4272, 2
  %5788 = fcmp fast ole float %73, %167
  %5789 = and i1 %5788, %5787
  %5790 = or i1 %5789, %5786
  br i1 %5785, label %5791, label %6048

; <label>:5791                                    ; preds = %5761
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 2
  %5794 = extractvalue %dx.types.CBufRet.f32 %5792, 3
  %5795 = fmul fast float %5793, %82
  %5796 = fmul fast float %5794, %83
  %5797 = call float @dx.op.unary.f32(i32 7, float %5795)  ; Saturate(value)
  %5798 = call float @dx.op.unary.f32(i32 7, float %5796)  ; Saturate(value)
  %5799 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %5797, float %5798, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5800 = extractvalue %dx.types.ResRet.f32 %5799, 0
  %5801 = extractvalue %dx.types.ResRet.f32 %5799, 1
  %5802 = extractvalue %dx.types.ResRet.f32 %5799, 2
  %5803 = extractvalue %dx.types.ResRet.f32 %5799, 3
  %5804 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %5797, float %5798, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5805 = extractvalue %dx.types.ResRet.f32 %5804, 0
  %5806 = extractvalue %dx.types.ResRet.f32 %5804, 1
  %5807 = extractvalue %dx.types.ResRet.f32 %5804, 2
  %5808 = extractvalue %dx.types.ResRet.f32 %5804, 3
  %5809 = call float @dx.op.binary.f32(i32 35, float %5801, float %5802)  ; FMax(a,b)
  %5810 = call float @dx.op.binary.f32(i32 35, float %5800, float %5809)  ; FMax(a,b)
  %5811 = call float @dx.op.binary.f32(i32 35, float %5810, float %5803)  ; FMax(a,b)
  %5812 = call float @dx.op.binary.f32(i32 36, float %5806, float %5807)  ; FMin(a,b)
  %5813 = call float @dx.op.binary.f32(i32 36, float %5805, float %5812)  ; FMin(a,b)
  %5814 = call float @dx.op.binary.f32(i32 36, float %5813, float %5808)  ; FMin(a,b)
  %5815 = fmul fast float %5811, 2.550000e+02
  %5816 = fadd fast float %5815, 0x3F70101020000000
  %5817 = fptoui float %5816 to i32
  %5818 = fmul fast float %5814, 2.550000e+02
  %5819 = fadd fast float %5818, 0x3F70101020000000
  %5820 = fptoui float %5819 to i32
  %5821 = icmp ult i32 %5817, %5820
  br i1 %5821, label %5822, label %5990

; <label>:5822                                    ; preds = %5791
  %5823 = fcmp fast ogt float %72, 9.843750e-01
  %5824 = fadd fast float %73, -4.000000e+00
  %5825 = select i1 %5823, float -4.000000e+00, float %5824
  %5826 = call float @dx.op.binary.f32(i32 35, float %5825, float 0.000000e+00)  ; FMax(a,b)
  %5827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5828 = extractvalue %dx.types.CBufRet.f32 %5827, 0
  %5829 = fadd fast float %5828, %5826
  %5830 = extractvalue %dx.types.CBufRet.f32 %5827, 2
  %5831 = fmul fast float %5829, %5830
  %5832 = call float @dx.op.unary.f32(i32 23, float %5831)  ; Log(value)
  %5833 = extractvalue %dx.types.CBufRet.f32 %5827, 3
  %5834 = fmul fast float %5833, %5832
  %5835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5836 = extractvalue %dx.types.CBufRet.f32 %5835, 2
  %5837 = fmul fast float %5834, %5836
  %5838 = call float @dx.op.unary.f32(i32 7, float %5837)  ; Saturate(value)
  %5839 = uitofp i32 %5817 to float
  %5840 = uitofp i32 %5820 to float
  %5841 = fadd fast float %5839, 5.000000e-01
  %5842 = fadd fast float %5840, 5.000000e-01
  %5843 = fmul fast float %5836, %5841
  %5844 = fmul fast float %5836, %5842
  %5845 = fadd fast float %5843, 0x3F0FFB4800000000
  %5846 = fadd fast float %5844, 0xBF0FFB4800000000
  %5847 = call float @dx.op.binary.f32(i32 35, float %5838, float %5845)  ; FMax(a,b)
  %5848 = call float @dx.op.binary.f32(i32 36, float %5847, float %5846)  ; FMin(a,b)
  %5849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5850 = extractvalue %dx.types.CBufRet.f32 %5849, 1
  %5851 = extractvalue %dx.types.CBufRet.f32 %5849, 2
  %5852 = extractvalue %dx.types.CBufRet.f32 %5849, 0
  %5853 = fmul fast float %5850, %5848
  %5854 = fadd fast float %5852, %5853
  %5855 = fadd fast float %5852, %5851
  %5856 = fsub fast float %5850, %5851
  %5857 = fadd fast float %5856, %5852
  %5858 = call float @dx.op.binary.f32(i32 35, float %5854, float %5855)  ; FMax(a,b)
  %5859 = call float @dx.op.binary.f32(i32 36, float %5858, float %5857)  ; FMin(a,b)
  %5860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %5797, float %5798, float %5859, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5861 = extractvalue %dx.types.ResRet.f32 %5860, 0
  %5862 = extractvalue %dx.types.ResRet.f32 %5860, 1
  %5863 = extractvalue %dx.types.ResRet.f32 %5860, 2
  %5864 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5865 = extractvalue %dx.types.CBufRet.i32 %5864, 0
  %5866 = extractvalue %dx.types.CBufRet.i32 %5864, 1
  %5867 = uitofp i32 %5865 to float
  %5868 = uitofp i32 %5866 to float
  %5869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5870 = extractvalue %dx.types.CBufRet.f32 %5869, 0
  %5871 = extractvalue %dx.types.CBufRet.f32 %5869, 1
  %5872 = fmul fast float %5867, %5797
  %5873 = fmul fast float %5868, %5798
  %5874 = fadd fast float %5872, -5.000000e-01
  %5875 = fadd fast float %5873, -5.000000e-01
  %5876 = call float @dx.op.unary.f32(i32 22, float %5874)  ; Frc(value)
  %5877 = call float @dx.op.unary.f32(i32 22, float %5875)  ; Frc(value)
  %5878 = fmul fast float %5876, %5876
  %5879 = fmul fast float %5878, %5876
  %5880 = fsub fast float 3.000000e+00, %5876
  %5881 = fmul fast float %5878, %5880
  %5882 = fmul fast float %5876, 3.000000e+00
  %5883 = fmul fast float %5879, 3.000000e+00
  %5884 = fmul fast float %5878, 6.000000e+00
  %5885 = fsub fast float %5883, %5884
  %5886 = fadd fast float %5885, 4.000000e+00
  %5887 = fmul fast float %5886, 0x3FC5555560000000
  %5888 = fmul fast float %5879, -3.000000e+00
  %5889 = fadd fast float %5878, %5876
  %5890 = fmul fast float %5889, 3.000000e+00
  %5891 = fadd fast float %5888, 1.000000e+00
  %5892 = fadd fast float %5891, %5890
  %5893 = fmul fast float %5879, 0x3FC5555560000000
  %5894 = fmul fast float %5877, %5877
  %5895 = fmul fast float %5894, %5877
  %5896 = fsub fast float 3.000000e+00, %5877
  %5897 = fmul fast float %5894, %5896
  %5898 = fmul fast float %5877, 3.000000e+00
  %5899 = fmul fast float %5895, 3.000000e+00
  %5900 = fmul fast float %5894, 6.000000e+00
  %5901 = fsub fast float %5899, %5900
  %5902 = fadd fast float %5901, 4.000000e+00
  %5903 = fmul fast float %5902, 0x3FC5555560000000
  %5904 = fmul fast float %5895, -3.000000e+00
  %5905 = fadd fast float %5894, %5877
  %5906 = fmul fast float %5905, 3.000000e+00
  %5907 = fadd fast float %5904, 1.000000e+00
  %5908 = fadd fast float %5907, %5906
  %5909 = fmul fast float %5895, 0x3FC5555560000000
  %5910 = fadd fast float %5876, 1.000000e+00
  %5911 = fsub fast float 1.000000e+00, %5882
  %5912 = fadd fast float %5911, %5881
  %5913 = fadd fast float %5912, %5886
  %5914 = fmul fast float %5913, 0x3FC5555560000000
  %5915 = fdiv fast float %5887, %5914
  %5916 = fsub fast float %5910, %5915
  %5917 = fsub fast float 1.000000e+00, %5876
  %5918 = fadd fast float %5892, %5879
  %5919 = fmul fast float %5918, 0x3FC5555560000000
  %5920 = fdiv fast float %5893, %5919
  %5921 = fadd fast float %5917, %5920
  %5922 = fadd fast float %5877, 1.000000e+00
  %5923 = fsub fast float 1.000000e+00, %5898
  %5924 = fadd fast float %5923, %5897
  %5925 = fadd fast float %5924, %5902
  %5926 = fmul fast float %5925, 0x3FC5555560000000
  %5927 = fdiv fast float %5903, %5926
  %5928 = fsub fast float %5922, %5927
  %5929 = fsub fast float 1.000000e+00, %5877
  %5930 = fadd fast float %5908, %5895
  %5931 = fmul fast float %5930, 0x3FC5555560000000
  %5932 = fdiv fast float %5909, %5931
  %5933 = fadd fast float %5932, %5929
  %5934 = fmul fast float %5916, %5870
  %5935 = fsub fast float %5797, %5934
  %5936 = fmul fast float %5921, %5870
  %5937 = fadd fast float %5936, %5797
  %5938 = fmul fast float %5933, %5871
  %5939 = fadd fast float %5938, %5798
  %5940 = fmul fast float %5928, %5871
  %5941 = fsub fast float %5798, %5940
  %5942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %5935, float %5941, float %5859, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5943 = extractvalue %dx.types.ResRet.f32 %5942, 0
  %5944 = extractvalue %dx.types.ResRet.f32 %5942, 1
  %5945 = extractvalue %dx.types.ResRet.f32 %5942, 2
  %5946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %5937, float %5941, float %5859, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5947 = extractvalue %dx.types.ResRet.f32 %5946, 0
  %5948 = extractvalue %dx.types.ResRet.f32 %5946, 1
  %5949 = extractvalue %dx.types.ResRet.f32 %5946, 2
  %5950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %5935, float %5939, float %5859, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5951 = extractvalue %dx.types.ResRet.f32 %5950, 0
  %5952 = extractvalue %dx.types.ResRet.f32 %5950, 1
  %5953 = extractvalue %dx.types.ResRet.f32 %5950, 2
  %5954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %5937, float %5939, float %5859, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5955 = extractvalue %dx.types.ResRet.f32 %5954, 0
  %5956 = extractvalue %dx.types.ResRet.f32 %5954, 1
  %5957 = extractvalue %dx.types.ResRet.f32 %5954, 2
  %5958 = fsub fast float %5951, %5943
  %5959 = fsub fast float %5952, %5944
  %5960 = fsub fast float %5953, %5945
  %5961 = fmul fast float %5958, %5931
  %5962 = fmul fast float %5959, %5931
  %5963 = fmul fast float %5960, %5931
  %5964 = fadd fast float %5961, %5943
  %5965 = fadd fast float %5962, %5944
  %5966 = fadd fast float %5963, %5945
  %5967 = fsub fast float %5955, %5947
  %5968 = fsub fast float %5956, %5948
  %5969 = fsub fast float %5957, %5949
  %5970 = fmul fast float %5967, %5931
  %5971 = fmul fast float %5968, %5931
  %5972 = fmul fast float %5969, %5931
  %5973 = fsub fast float %5947, %5964
  %5974 = fadd fast float %5973, %5970
  %5975 = fsub fast float %5948, %5965
  %5976 = fadd fast float %5975, %5971
  %5977 = fsub fast float %5949, %5966
  %5978 = fadd fast float %5977, %5972
  %5979 = fmul fast float %5974, %5919
  %5980 = fmul fast float %5976, %5919
  %5981 = fmul fast float %5978, %5919
  %5982 = fadd fast float %5979, %5964
  %5983 = fadd fast float %5980, %5965
  %5984 = fadd fast float %5981, %5966
  %5985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5986 = extractvalue %dx.types.CBufRet.f32 %5985, 1
  %5987 = fmul fast float %5982, %5986
  %5988 = fmul fast float %5983, %5986
  %5989 = fmul fast float %5984, %5986
  br label %5990

; <label>:5990                                    ; preds = %5822, %5791
  %5991 = phi float [ %5861, %5822 ], [ 1.000000e+00, %5791 ]
  %5992 = phi float [ %5862, %5822 ], [ 1.000000e+00, %5791 ]
  %5993 = phi float [ %5863, %5822 ], [ 1.000000e+00, %5791 ]
  %5994 = phi float [ %5987, %5822 ], [ 0.000000e+00, %5791 ]
  %5995 = phi float [ %5988, %5822 ], [ 0.000000e+00, %5791 ]
  %5996 = phi float [ %5989, %5822 ], [ 0.000000e+00, %5791 ]
  %5997 = fmul fast float %5994, %5768
  %5998 = fmul fast float %5995, %5768
  %5999 = fmul fast float %5996, %5768
  %6000 = call float @dx.op.dot3.f32(i32 55, float %5991, float %5992, float %5993, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6001 = call float @dx.op.dot3.f32(i32 55, float %5997, float %5998, float %5999, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6002 = select i1 %206, float %6000, float %5991
  %6003 = select i1 %206, float %6000, float %5992
  %6004 = select i1 %206, float 1.000000e+00, float %5993
  %6005 = select i1 %206, float %6001, float %5997
  %6006 = select i1 %206, float 0.000000e+00, float %5998
  %6007 = select i1 %206, float 0.000000e+00, float %5999
  %6008 = fmul fast float %6002, %5781
  %6009 = fmul fast float %6003, %5782
  %6010 = fmul fast float %6004, %5783
  %6011 = fadd fast float %6008, %6005
  %6012 = fadd fast float %6009, %6006
  %6013 = fadd fast float %6007, %6010
  %6014 = fmul fast float %6002, %5762
  %6015 = fmul fast float %6003, %5763
  %6016 = fmul fast float %6004, %5764
  %6017 = fmul fast float %115, %5793
  %6018 = fmul fast float %117, %5794
  %6019 = fsub fast float 1.000000e+00, %6017
  %6020 = fsub fast float 1.000000e+00, %6018
  %6021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6022 = extractvalue %dx.types.CBufRet.f32 %6021, 0
  %6023 = extractvalue %dx.types.CBufRet.f32 %6021, 1
  %6024 = extractvalue %dx.types.CBufRet.f32 %6021, 2
  %6025 = fmul fast float %6019, %6022
  %6026 = fmul fast float %6019, %6023
  %6027 = fmul fast float %6019, %6024
  %6028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6029 = extractvalue %dx.types.CBufRet.f32 %6028, 0
  %6030 = extractvalue %dx.types.CBufRet.f32 %6028, 1
  %6031 = extractvalue %dx.types.CBufRet.f32 %6028, 2
  %6032 = fmul fast float %6020, %6029
  %6033 = fmul fast float %6020, %6030
  %6034 = fmul fast float %6020, %6031
  %6035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6036 = extractvalue %dx.types.CBufRet.f32 %6035, 0
  %6037 = extractvalue %dx.types.CBufRet.f32 %6035, 1
  %6038 = extractvalue %dx.types.CBufRet.f32 %6035, 2
  %6039 = fadd fast float %6032, %6036
  %6040 = fadd fast float %6039, %6025
  %6041 = fadd fast float %6033, %6037
  %6042 = fadd fast float %6041, %6026
  %6043 = fadd fast float %6034, %6038
  %6044 = fadd fast float %6043, %6027
  %6045 = fmul fast float %6040, %167
  %6046 = fmul fast float %6042, %167
  %6047 = fmul fast float %6044, %167
  br label %6048

; <label>:6048                                    ; preds = %5990, %5761
  %6049 = phi float [ %6045, %5990 ], [ %145, %5761 ]
  %6050 = phi float [ %6046, %5990 ], [ %146, %5761 ]
  %6051 = phi float [ %6047, %5990 ], [ %147, %5761 ]
  %6052 = phi float [ %167, %5990 ], [ %73, %5761 ]
  %6053 = phi float [ %6011, %5990 ], [ %5781, %5761 ]
  %6054 = phi float [ %6012, %5990 ], [ %5782, %5761 ]
  %6055 = phi float [ %6013, %5990 ], [ %5783, %5761 ]
  %6056 = phi float [ %6014, %5990 ], [ %5762, %5761 ]
  %6057 = phi float [ %6015, %5990 ], [ %5763, %5761 ]
  %6058 = phi float [ %6016, %5990 ], [ %5764, %5761 ]
  %6059 = phi float [ %5991, %5990 ], [ 1.000000e+00, %5761 ]
  br i1 %5790, label %7214, label %6060

; <label>:6060                                    ; preds = %6048
  %6061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6062 = extractvalue %dx.types.CBufRet.f32 %6061, 0
  %6063 = extractvalue %dx.types.CBufRet.f32 %6061, 1
  %6064 = extractvalue %dx.types.CBufRet.f32 %6061, 2
  %6065 = extractvalue %dx.types.CBufRet.f32 %6061, 3
  %6066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6067 = extractvalue %dx.types.CBufRet.f32 %6066, 0
  %6068 = extractvalue %dx.types.CBufRet.f32 %6066, 1
  %6069 = extractvalue %dx.types.CBufRet.f32 %6066, 2
  %6070 = extractvalue %dx.types.CBufRet.f32 %6066, 3
  %6071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6072 = extractvalue %dx.types.CBufRet.f32 %6071, 0
  %6073 = extractvalue %dx.types.CBufRet.f32 %6071, 1
  %6074 = extractvalue %dx.types.CBufRet.f32 %6071, 2
  %6075 = extractvalue %dx.types.CBufRet.f32 %6071, 3
  %6076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6077 = extractvalue %dx.types.CBufRet.f32 %6076, 0
  %6078 = extractvalue %dx.types.CBufRet.f32 %6076, 1
  %6079 = extractvalue %dx.types.CBufRet.f32 %6076, 2
  %6080 = extractvalue %dx.types.CBufRet.f32 %6076, 3
  %6081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6082 = extractvalue %dx.types.CBufRet.f32 %6081, 3
  %6083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6084 = extractvalue %dx.types.CBufRet.f32 %6083, 3
  %6085 = extractvalue %dx.types.CBufRet.f32 %6083, 0
  %6086 = extractvalue %dx.types.CBufRet.f32 %6083, 1
  %6087 = extractvalue %dx.types.CBufRet.f32 %6083, 2
  %6088 = fcmp fast olt float %6087, -5.000000e-01
  %6089 = call float @dx.op.dot3.f32(i32 55, float %6049, float %6050, float %6051, float %6049, float %6050, float %6051)  ; Dot3(ax,ay,az,bx,by,bz)
  %6090 = call float @dx.op.unary.f32(i32 25, float %6089)  ; Rsqrt(value)
  %6091 = fmul fast float %6090, %6089
  %6092 = fmul fast float %6090, %6049
  %6093 = fmul fast float %6090, %6050
  %6094 = fmul fast float %6090, %6051
  %6095 = fadd fast float %6091, %6065
  %6096 = call float @dx.op.dot3.f32(i32 55, float %6092, float %6093, float %6094, float %6062, float %6063, float %6064)  ; Dot3(ax,ay,az,bx,by,bz)
  %6097 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6098 = extractvalue %dx.types.CBufRet.i32 %6097, 1
  %6099 = and i32 %6098, 1
  %6100 = icmp ne i32 %6099, 0
  %6101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6102 = extractvalue %dx.types.CBufRet.f32 %6101, 2
  %6103 = fcmp fast ogt float %6102, 0.000000e+00
  %6104 = and i1 %6100, %6103
  br i1 %6104, label %6105, label %6511, !dx.controlflow.hints !104

; <label>:6105                                    ; preds = %6060
  %6106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6107 = extractvalue %dx.types.CBufRet.f32 %6106, 3
  %6108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6109 = extractvalue %dx.types.CBufRet.f32 %6108, 2
  %6110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6111 = extractvalue %dx.types.CBufRet.f32 %6110, 2
  %6112 = fsub fast float %6109, %6111
  %6113 = and i32 %6098, 2
  %6114 = extractvalue %dx.types.CBufRet.i32 %6097, 0
  %6115 = call i32 @dx.op.binary.i32(i32 40, i32 %6114, i32 3)  ; UMin(a,b)
  %6116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6117 = extractvalue %dx.types.CBufRet.f32 %6116, 0
  %6118 = extractvalue %dx.types.CBufRet.f32 %6116, 1
  %6119 = extractvalue %dx.types.CBufRet.f32 %6110, 0
  %6120 = extractvalue %dx.types.CBufRet.f32 %6110, 1
  %6121 = fsub fast float %6117, %6119
  %6122 = fsub fast float %6118, %6120
  %6123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6124 = extractvalue %dx.types.CBufRet.f32 %6123, 0
  %6125 = fcmp fast ogt float %6124, 0.000000e+00
  %6126 = fsub fast float -0.000000e+00, %6121
  %6127 = fsub fast float -0.000000e+00, %6122
  %6128 = call float @dx.op.dot2.f32(i32 54, float %6092, float %6093, float %6092, float %6093)  ; Dot2(ax,ay,bx,by)
  %6129 = call float @dx.op.dot2.f32(i32 54, float %6092, float %6093, float %6126, float %6127)  ; Dot2(ax,ay,bx,by)
  %6130 = fmul fast float %6129, 2.000000e+00
  %6131 = call float @dx.op.dot2.f32(i32 54, float %6126, float %6127, float %6126, float %6127)  ; Dot2(ax,ay,bx,by)
  %6132 = fmul fast float %6124, %6124
  %6133 = fsub fast float %6131, %6132
  %6134 = fmul fast float %6130, %6130
  %6135 = fmul fast float %6128, 4.000000e+00
  %6136 = fmul fast float %6135, %6133
  %6137 = fsub fast float %6134, %6136
  %6138 = fcmp fast ogt float %6137, 0.000000e+00
  br i1 %6138, label %6139, label %6154

; <label>:6139                                    ; preds = %6105
  %6140 = fcmp fast ogt float %6130, 0.000000e+00
  %6141 = call float @dx.op.unary.f32(i32 24, float %6137)  ; Sqrt(value)
  %6142 = fsub fast float -0.000000e+00, %6141
  %6143 = select i1 %6140, float %6141, float %6142
  %6144 = fadd fast float %6143, %6130
  %6145 = fmul float %6144, -5.000000e-01
  %6146 = fdiv fast float %6145, %6128
  %6147 = call float @dx.op.binary.f32(i32 35, float %6146, float 0.000000e+00)  ; FMax(a,b)
  %6148 = call float @dx.op.binary.f32(i32 36, float %6091, float %6147)  ; FMin(a,b)
  %6149 = fdiv fast float %6133, %6145
  %6150 = call float @dx.op.binary.f32(i32 35, float %6149, float 0.000000e+00)  ; FMax(a,b)
  %6151 = call float @dx.op.binary.f32(i32 36, float %6091, float %6150)  ; FMin(a,b)
  %6152 = call float @dx.op.binary.f32(i32 36, float %6148, float %6151)  ; FMin(a,b)
  %6153 = call float @dx.op.binary.f32(i32 35, float %6148, float %6151)  ; FMax(a,b)
  br label %6154

; <label>:6154                                    ; preds = %6139, %6105
  %6155 = phi float [ %6153, %6139 ], [ -1.000000e+00, %6105 ]
  %6156 = phi float [ %6152, %6139 ], [ -1.000000e+00, %6105 ]
  %6157 = phi i1 [ true, %6139 ], [ false, %6105 ]
  %6158 = and i1 %6125, %6157
  br i1 %6158, label %6159, label %6161

; <label>:6159                                    ; preds = %6154
  %6160 = fcmp fast oeq float %6156, %6155
  br i1 %6160, label %6464, label %6162

; <label>:6161                                    ; preds = %6154
  br i1 %6125, label %6464, label %6162

; <label>:6162                                    ; preds = %6161, %6159
  %6163 = phi float [ %6091, %6161 ], [ %6155, %6159 ]
  %6164 = phi float [ 0.000000e+00, %6161 ], [ %6156, %6159 ]
  %6165 = icmp ne i32 %6113, 0
  %6166 = fmul fast float %6163, %6094
  %6167 = fadd fast float %6166, %6107
  %6168 = fmul fast float %6167, %6163
  %6169 = select i1 %6165, float 0.000000e+00, float %6168
  %6170 = fcmp fast oeq float %6094, 0.000000e+00
  %6171 = fdiv fast float %6112, %6094
  %6172 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6171)  ; FMax(a,b)
  %6173 = select i1 %6170, float %6163, float %6172
  %6174 = call float @dx.op.binary.f32(i32 36, float %6163, float %6173)  ; FMin(a,b)
  %6175 = fcmp fast ogt float %6094, 0.000000e+00
  %6176 = fcmp fast olt float %6112, 0.000000e+00
  br i1 %6175, label %6177, label %6234

; <label>:6177                                    ; preds = %6162
  %6178 = icmp eq i32 %6113, 0
  br i1 %6176, label %6179, label %6223

; <label>:6179                                    ; preds = %6177
  %6180 = select i1 %6178, float %6163, float 0.000000e+00
  %6181 = fsub fast float -0.000000e+00, %6180
  %6182 = call float @dx.op.unary.f32(i32 6, float %6181)  ; FAbs(value)
  %6183 = fmul fast float %6180, %6094
  %6184 = fadd fast float %6183, %6107
  %6185 = fmul fast float %6182, %6184
  %6186 = fsub fast float %6169, %6185
  %6187 = fsub fast float %6163, %6182
  %6188 = select i1 %6178, float %6187, float 0.000000e+00
  %6189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6190 = extractvalue %dx.types.CBufRet.f32 %6189, 0
  %6191 = extractvalue %dx.types.CBufRet.f32 %6189, 1
  %6192 = extractvalue %dx.types.CBufRet.f32 %6189, 2
  %6193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6194 = extractvalue %dx.types.CBufRet.f32 %6193, 0
  %6195 = extractvalue %dx.types.CBufRet.f32 %6193, 1
  %6196 = extractvalue %dx.types.CBufRet.f32 %6193, 2
  %6197 = extractvalue %dx.types.CBufRet.f32 %6193, 3
  %6198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6199 = extractvalue %dx.types.CBufRet.f32 %6198, 3
  %6200 = call float @dx.op.binary.f32(i32 36, float %6186, float %6199)  ; FMin(a,b)
  %6201 = fmul fast float %6197, %6188
  %6202 = call float @dx.op.unary.f32(i32 7, float %6201)  ; Saturate(value)
  %6203 = fsub fast float %6194, %6190
  %6204 = fsub fast float %6195, %6191
  %6205 = fsub fast float %6196, %6192
  %6206 = fmul fast float %6202, %6203
  %6207 = fmul fast float %6202, %6204
  %6208 = fmul fast float %6202, %6205
  %6209 = fadd fast float %6206, %6190
  %6210 = fadd fast float %6207, %6191
  %6211 = fadd fast float %6208, %6192
  %6212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6213 = extractvalue %dx.types.CBufRet.f32 %6212, 0
  %6214 = extractvalue %dx.types.CBufRet.f32 %6212, 1
  %6215 = fadd fast float %6214, %6213
  %6216 = call float @dx.op.unary.f32(i32 7, float %6215)  ; Saturate(value)
  %6217 = extractvalue %dx.types.CBufRet.f32 %6212, 2
  %6218 = extractvalue %dx.types.CBufRet.f32 %6212, 3
  %6219 = fadd fast float %6218, %6217
  %6220 = call float @dx.op.unary.f32(i32 7, float %6219)  ; Saturate(value)
  %6221 = fmul fast float %6216, %6200
  %6222 = fmul fast float %6221, %6220
  br label %6464

; <label>:6223                                    ; preds = %6177
  br i1 %6178, label %6224, label %6245

; <label>:6224                                    ; preds = %6223
  %6225 = call float @dx.op.binary.f32(i32 36, float %6174, float %6164)  ; FMin(a,b)
  %6226 = fsub fast float %6174, %6225
  %6227 = fsub fast float %6226, %6163
  %6228 = call float @dx.op.unary.f32(i32 6, float %6227)  ; FAbs(value)
  %6229 = fadd fast float %6226, %6163
  %6230 = fmul fast float %6229, %6094
  %6231 = fadd fast float %6230, %6107
  %6232 = fmul fast float %6231, %6228
  %6233 = fsub fast float %6169, %6232
  br label %6245

; <label>:6234                                    ; preds = %6162
  br i1 %6176, label %6235, label %6245

; <label>:6235                                    ; preds = %6234
  %6236 = call float @dx.op.binary.f32(i32 35, float %6164, float %6174)  ; FMax(a,b)
  %6237 = icmp eq i32 %6113, 0
  %6238 = select i1 %6237, float %6174, float 0.000000e+00
  %6239 = fsub fast float -0.000000e+00, %6238
  %6240 = call float @dx.op.unary.f32(i32 6, float %6239)  ; FAbs(value)
  %6241 = fmul fast float %6238, %6094
  %6242 = fadd fast float %6241, %6107
  %6243 = fmul fast float %6240, %6242
  %6244 = fsub fast float %6169, %6243
  br label %6245

; <label>:6245                                    ; preds = %6235, %6234, %6224, %6223
  %6246 = phi float [ %6164, %6223 ], [ %6164, %6224 ], [ %6236, %6235 ], [ %6164, %6234 ]
  %6247 = phi float [ 0.000000e+00, %6223 ], [ %6228, %6224 ], [ %6240, %6235 ], [ 0.000000e+00, %6234 ]
  %6248 = phi float [ %6169, %6223 ], [ %6233, %6224 ], [ %6244, %6235 ], [ %6169, %6234 ]
  %6249 = phi float [ %6174, %6223 ], [ %6174, %6224 ], [ %6163, %6235 ], [ %6163, %6234 ]
  %6250 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 0
  store float -1.000000e+00, float* %6250, align 4, !tbaa !105, !noalias !107
  %6251 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 1
  store float -1.000000e+00, float* %6251, align 4, !tbaa !105, !noalias !107
  %6252 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 2
  store float -1.000000e+00, float* %6252, align 4, !tbaa !105, !noalias !107
  %6253 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 0
  store float -1.000000e+00, float* %6253, align 4, !tbaa !105, !noalias !107
  %6254 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 1
  store float -1.000000e+00, float* %6254, align 4, !tbaa !105, !noalias !107
  %6255 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 2
  store float -1.000000e+00, float* %6255, align 4, !tbaa !105, !noalias !107
  %6256 = icmp sgt i32 %6115, 0
  br i1 %6256, label %6257, label %6318

; <label>:6257                                    ; preds = %6245
  br label %6258

; <label>:6258                                    ; preds = %6307, %6257
  %6259 = phi i32 [ %6308, %6307 ], [ 0, %6257 ]
  %6260 = phi i32 [ %6309, %6307 ], [ 0, %6257 ]
  %6261 = add nuw i32 %6260, 171
  %6262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %6261)  ; CBufferLoadLegacy(handle,regIndex)
  %6263 = extractvalue %dx.types.CBufRet.f32 %6262, 0
  %6264 = extractvalue %dx.types.CBufRet.f32 %6262, 1
  %6265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6266 = extractvalue %dx.types.CBufRet.f32 %6265, 0
  %6267 = extractvalue %dx.types.CBufRet.f32 %6265, 1
  %6268 = fsub fast float %6263, %6266
  %6269 = fsub fast float %6264, %6267
  %6270 = extractvalue %dx.types.CBufRet.f32 %6262, 2
  %6271 = fsub fast float -0.000000e+00, %6268
  %6272 = fsub fast float -0.000000e+00, %6269
  %6273 = call float @dx.op.dot2.f32(i32 54, float %6092, float %6093, float %6271, float %6272)  ; Dot2(ax,ay,bx,by)
  %6274 = fmul fast float %6273, 2.000000e+00
  %6275 = call float @dx.op.dot2.f32(i32 54, float %6271, float %6272, float %6271, float %6272)  ; Dot2(ax,ay,bx,by)
  %6276 = fmul fast float %6270, %6270
  %6277 = fsub fast float %6275, %6276
  %6278 = fmul fast float %6274, %6274
  %6279 = fmul fast float %6135, %6277
  %6280 = fsub fast float %6278, %6279
  %6281 = fcmp fast ogt float %6280, 0.000000e+00
  br i1 %6281, label %6282, label %6297

; <label>:6282                                    ; preds = %6258
  %6283 = fcmp fast ogt float %6274, 0.000000e+00
  %6284 = call float @dx.op.unary.f32(i32 24, float %6280)  ; Sqrt(value)
  %6285 = fsub fast float -0.000000e+00, %6284
  %6286 = select i1 %6283, float %6284, float %6285
  %6287 = fadd fast float %6286, %6274
  %6288 = fmul float %6287, -5.000000e-01
  %6289 = fdiv fast float %6288, %6128
  %6290 = call float @dx.op.binary.f32(i32 35, float %6289, float 0.000000e+00)  ; FMax(a,b)
  %6291 = call float @dx.op.binary.f32(i32 36, float %6163, float %6290)  ; FMin(a,b)
  %6292 = fdiv fast float %6277, %6288
  %6293 = call float @dx.op.binary.f32(i32 35, float %6292, float 0.000000e+00)  ; FMax(a,b)
  %6294 = call float @dx.op.binary.f32(i32 36, float %6163, float %6293)  ; FMin(a,b)
  %6295 = call float @dx.op.binary.f32(i32 36, float %6291, float %6294)  ; FMin(a,b)
  %6296 = call float @dx.op.binary.f32(i32 35, float %6291, float %6294)  ; FMax(a,b)
  br label %6297

; <label>:6297                                    ; preds = %6282, %6258
  %6298 = phi float [ %6296, %6282 ], [ -1.000000e+00, %6258 ]
  %6299 = phi float [ %6295, %6282 ], [ -1.000000e+00, %6258 ]
  %6300 = phi i1 [ true, %6282 ], [ false, %6258 ]
  br i1 %6300, label %6301, label %6307

; <label>:6301                                    ; preds = %6297
  %6302 = call float @dx.op.binary.f32(i32 35, float %6246, float %6299)  ; FMax(a,b)
  %6303 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %6260
  store float %6302, float* %6303, align 4, !tbaa !105, !noalias !107
  %6304 = call float @dx.op.binary.f32(i32 35, float %6246, float %6298)  ; FMax(a,b)
  %6305 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 %6260
  store float %6304, float* %6305, align 4, !tbaa !105, !noalias !107
  %6306 = add nsw i32 %6259, 1
  br label %6307

; <label>:6307                                    ; preds = %6301, %6297
  %6308 = phi i32 [ %6306, %6301 ], [ %6259, %6297 ]
  %6309 = add nuw nsw i32 %6260, 1
  %6310 = icmp eq i32 %6309, %6115
  br i1 %6310, label %6311, label %6258

; <label>:6311                                    ; preds = %6307
  %6312 = load float, float* %6252, align 4, !tbaa !105, !alias.scope !123, !noalias !126
  %6313 = load float, float* %6251, align 4, !tbaa !105, !alias.scope !129, !noalias !130
  %6314 = load float, float* %6250, align 4, !tbaa !105, !alias.scope !131, !noalias !132
  %6315 = load float, float* %6255, align 4, !tbaa !105, !alias.scope !133, !noalias !136
  %6316 = load float, float* %6254, align 4, !tbaa !105, !alias.scope !139, !noalias !140
  %6317 = load float, float* %6253, align 4, !tbaa !105, !alias.scope !141, !noalias !142
  br label %6318

; <label>:6318                                    ; preds = %6311, %6245
  %6319 = phi float [ -1.000000e+00, %6245 ], [ %6317, %6311 ]
  %6320 = phi float [ -1.000000e+00, %6245 ], [ %6316, %6311 ]
  %6321 = phi float [ -1.000000e+00, %6245 ], [ %6315, %6311 ]
  %6322 = phi float [ -1.000000e+00, %6245 ], [ %6314, %6311 ]
  %6323 = phi float [ -1.000000e+00, %6245 ], [ %6313, %6311 ]
  %6324 = phi float [ -1.000000e+00, %6245 ], [ %6312, %6311 ]
  %6325 = phi i32 [ 0, %6245 ], [ %6308, %6311 ]
  %6326 = call float @dx.op.binary.f32(i32 36, float %6323, float %6324)  ; FMin(a,b)
  %6327 = call float @dx.op.binary.f32(i32 36, float %6322, float %6326)  ; FMin(a,b)
  %6328 = call float @dx.op.binary.f32(i32 35, float %6322, float %6323)  ; FMax(a,b)
  %6329 = call float @dx.op.binary.f32(i32 36, float %6328, float %6324)  ; FMin(a,b)
  %6330 = call float @dx.op.binary.f32(i32 36, float %6322, float %6323)  ; FMin(a,b)
  %6331 = call float @dx.op.binary.f32(i32 35, float %6330, float %6329)  ; FMax(a,b)
  %6332 = call float @dx.op.binary.f32(i32 35, float %6323, float %6324)  ; FMax(a,b)
  %6333 = call float @dx.op.binary.f32(i32 35, float %6322, float %6332)  ; FMax(a,b)
  store float %6327, float* %6250, align 4, !tbaa !105, !alias.scope !131, !noalias !132
  store float %6331, float* %6251, align 4, !tbaa !105, !alias.scope !129, !noalias !130
  store float %6333, float* %6252, align 4, !tbaa !105, !alias.scope !123, !noalias !126
  %6334 = call float @dx.op.binary.f32(i32 36, float %6320, float %6321)  ; FMin(a,b)
  %6335 = call float @dx.op.binary.f32(i32 36, float %6319, float %6334)  ; FMin(a,b)
  %6336 = call float @dx.op.binary.f32(i32 35, float %6319, float %6320)  ; FMax(a,b)
  %6337 = call float @dx.op.binary.f32(i32 36, float %6336, float %6321)  ; FMin(a,b)
  %6338 = call float @dx.op.binary.f32(i32 36, float %6319, float %6320)  ; FMin(a,b)
  %6339 = call float @dx.op.binary.f32(i32 35, float %6338, float %6337)  ; FMax(a,b)
  %6340 = call float @dx.op.binary.f32(i32 35, float %6320, float %6321)  ; FMax(a,b)
  %6341 = call float @dx.op.binary.f32(i32 35, float %6319, float %6340)  ; FMax(a,b)
  store float %6335, float* %6253, align 4, !tbaa !105, !alias.scope !141, !noalias !142
  store float %6339, float* %6254, align 4, !tbaa !105, !alias.scope !139, !noalias !140
  store float %6341, float* %6255, align 4, !tbaa !105, !alias.scope !133, !noalias !136
  %6342 = sub nsw i32 3, %6325
  %6343 = icmp sgt i32 %6342, 2
  br i1 %6343, label %6344, label %6382

; <label>:6344                                    ; preds = %6318
  %6345 = icmp eq i32 %6113, 0
  %6346 = fsub fast float %6163, %6247
  %6347 = select i1 %6345, float %6346, float %6247
  %6348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6349 = extractvalue %dx.types.CBufRet.f32 %6348, 0
  %6350 = extractvalue %dx.types.CBufRet.f32 %6348, 1
  %6351 = extractvalue %dx.types.CBufRet.f32 %6348, 2
  %6352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6353 = extractvalue %dx.types.CBufRet.f32 %6352, 0
  %6354 = extractvalue %dx.types.CBufRet.f32 %6352, 1
  %6355 = extractvalue %dx.types.CBufRet.f32 %6352, 2
  %6356 = extractvalue %dx.types.CBufRet.f32 %6352, 3
  %6357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6358 = extractvalue %dx.types.CBufRet.f32 %6357, 3
  %6359 = call float @dx.op.binary.f32(i32 36, float %6248, float %6358)  ; FMin(a,b)
  %6360 = fmul fast float %6356, %6347
  %6361 = call float @dx.op.unary.f32(i32 7, float %6360)  ; Saturate(value)
  %6362 = fsub fast float %6353, %6349
  %6363 = fsub fast float %6354, %6350
  %6364 = fsub fast float %6355, %6351
  %6365 = fmul fast float %6361, %6362
  %6366 = fmul fast float %6361, %6363
  %6367 = fmul fast float %6361, %6364
  %6368 = fadd fast float %6365, %6349
  %6369 = fadd fast float %6366, %6350
  %6370 = fadd fast float %6367, %6351
  %6371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6372 = extractvalue %dx.types.CBufRet.f32 %6371, 0
  %6373 = extractvalue %dx.types.CBufRet.f32 %6371, 1
  %6374 = fadd fast float %6373, %6372
  %6375 = call float @dx.op.unary.f32(i32 7, float %6374)  ; Saturate(value)
  %6376 = extractvalue %dx.types.CBufRet.f32 %6371, 2
  %6377 = extractvalue %dx.types.CBufRet.f32 %6371, 3
  %6378 = fadd fast float %6377, %6376
  %6379 = call float @dx.op.unary.f32(i32 7, float %6378)  ; Saturate(value)
  %6380 = fmul fast float %6375, %6359
  %6381 = fmul fast float %6380, %6379
  br label %6464

; <label>:6382                                    ; preds = %6318
  %6383 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %6342
  %6384 = load float, float* %6383, align 4, !tbaa !105, !noalias !107
  %6385 = fcmp fast olt float %6384, %6249
  %6386 = icmp sgt i32 %6325, 0
  %6387 = and i1 %6386, %6385
  br i1 %6387, label %6388, label %6425

; <label>:6388                                    ; preds = %6382
  br label %6389

; <label>:6389                                    ; preds = %6418, %6388
  %6390 = phi float [ %6419, %6418 ], [ %6247, %6388 ]
  %6391 = phi float [ %6420, %6418 ], [ %6248, %6388 ]
  %6392 = phi float [ %6400, %6418 ], [ %6384, %6388 ]
  %6393 = phi i32 [ %6397, %6418 ], [ %6342, %6388 ]
  %6394 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 %6393
  %6395 = load float, float* %6394, align 4, !tbaa !105, !noalias !107
  %6396 = icmp slt i32 %6393, 2
  %6397 = add nsw i32 %6393, 1
  %6398 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %6397
  %6399 = load float, float* %6398, align 4, !tbaa !105, !noalias !107
  %6400 = select i1 %6396, float %6399, float %6163
  %6401 = call float @dx.op.binary.f32(i32 36, float %6400, float %6395)  ; FMin(a,b)
  %6402 = call float @dx.op.binary.f32(i32 36, float %6249, float %6401)  ; FMin(a,b)
  %6403 = icmp eq i32 %6113, 0
  %6404 = fadd fast float %6402, %6392
  %6405 = fmul fast float %6404, %6094
  %6406 = fadd fast float %6405, %6107
  br i1 %6403, label %6412, label %6407

; <label>:6407                                    ; preds = %6389
  %6408 = fsub fast float %6402, %6392
  %6409 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6408)  ; FMax(a,b)
  %6410 = fmul fast float %6409, %6406
  %6411 = fadd fast float %6410, %6391
  br label %6418

; <label>:6412                                    ; preds = %6389
  %6413 = fsub fast float %6392, %6402
  %6414 = call float @dx.op.unary.f32(i32 6, float %6413)  ; FAbs(value)
  %6415 = fadd fast float %6414, %6390
  %6416 = fmul fast float %6414, %6406
  %6417 = fsub fast float %6391, %6416
  br label %6418

; <label>:6418                                    ; preds = %6412, %6407
  %6419 = phi float [ %6409, %6407 ], [ %6415, %6412 ]
  %6420 = phi float [ %6411, %6407 ], [ %6417, %6412 ]
  %6421 = fcmp fast olt float %6400, %6249
  %6422 = icmp slt i32 %6397, 3
  %6423 = and i1 %6422, %6421
  br i1 %6423, label %6389, label %6424

; <label>:6424                                    ; preds = %6418
  br label %6425

; <label>:6425                                    ; preds = %6424, %6382
  %6426 = phi float [ %6247, %6382 ], [ %6419, %6424 ]
  %6427 = phi float [ %6248, %6382 ], [ %6420, %6424 ]
  %6428 = fsub fast float %6163, %6426
  %6429 = select i1 %6165, float %6426, float %6428
  %6430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6431 = extractvalue %dx.types.CBufRet.f32 %6430, 0
  %6432 = extractvalue %dx.types.CBufRet.f32 %6430, 1
  %6433 = extractvalue %dx.types.CBufRet.f32 %6430, 2
  %6434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6435 = extractvalue %dx.types.CBufRet.f32 %6434, 0
  %6436 = extractvalue %dx.types.CBufRet.f32 %6434, 1
  %6437 = extractvalue %dx.types.CBufRet.f32 %6434, 2
  %6438 = extractvalue %dx.types.CBufRet.f32 %6434, 3
  %6439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6440 = extractvalue %dx.types.CBufRet.f32 %6439, 3
  %6441 = call float @dx.op.binary.f32(i32 36, float %6427, float %6440)  ; FMin(a,b)
  %6442 = fmul fast float %6438, %6429
  %6443 = call float @dx.op.unary.f32(i32 7, float %6442)  ; Saturate(value)
  %6444 = fsub fast float %6435, %6431
  %6445 = fsub fast float %6436, %6432
  %6446 = fsub fast float %6437, %6433
  %6447 = fmul fast float %6443, %6444
  %6448 = fmul fast float %6443, %6445
  %6449 = fmul fast float %6443, %6446
  %6450 = fadd fast float %6447, %6431
  %6451 = fadd fast float %6448, %6432
  %6452 = fadd fast float %6449, %6433
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 0
  %6455 = extractvalue %dx.types.CBufRet.f32 %6453, 1
  %6456 = fadd fast float %6455, %6454
  %6457 = call float @dx.op.unary.f32(i32 7, float %6456)  ; Saturate(value)
  %6458 = extractvalue %dx.types.CBufRet.f32 %6453, 2
  %6459 = extractvalue %dx.types.CBufRet.f32 %6453, 3
  %6460 = fadd fast float %6459, %6458
  %6461 = call float @dx.op.unary.f32(i32 7, float %6460)  ; Saturate(value)
  %6462 = fmul fast float %6457, %6441
  %6463 = fmul fast float %6462, %6461
  br label %6464

; <label>:6464                                    ; preds = %6425, %6344, %6179, %6161, %6159
  %6465 = phi float [ %6188, %6179 ], [ %6347, %6344 ], [ %6429, %6425 ], [ 0.000000e+00, %6159 ], [ 0.000000e+00, %6161 ]
  %6466 = phi float [ %6222, %6179 ], [ %6381, %6344 ], [ %6463, %6425 ], [ 0.000000e+00, %6159 ], [ 0.000000e+00, %6161 ]
  %6467 = phi float [ %6209, %6179 ], [ %6368, %6344 ], [ %6450, %6425 ], [ 0.000000e+00, %6159 ], [ 0.000000e+00, %6161 ]
  %6468 = phi float [ %6210, %6179 ], [ %6369, %6344 ], [ %6451, %6425 ], [ 0.000000e+00, %6159 ], [ 0.000000e+00, %6161 ]
  %6469 = phi float [ %6211, %6179 ], [ %6370, %6344 ], [ %6452, %6425 ], [ 0.000000e+00, %6159 ], [ 0.000000e+00, %6161 ]
  %6470 = fmul fast float %6102, %6466
  %6471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6472 = extractvalue %dx.types.CBufRet.f32 %6471, 2
  %6473 = fsub fast float %6109, %6472
  %6474 = fcmp fast olt float %6470, -2.000000e+01
  %6475 = call float @dx.op.unary.f32(i32 21, float %6470)  ; Exp(value)
  %6476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6477 = extractvalue %dx.types.CBufRet.f32 %6476, 2
  %6478 = extractvalue %dx.types.CBufRet.f32 %6476, 3
  %6479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6480 = extractvalue %dx.types.CBufRet.f32 %6479, 2
  %6481 = fmul fast float %6478, %6473
  %6482 = call float @dx.op.unary.f32(i32 7, float %6481)  ; Saturate(value)
  %6483 = fsub fast float 1.000000e+00, %6482
  %6484 = fmul fast float %6094, 5.000000e-01
  %6485 = fadd fast float %6484, 5.000000e-01
  %6486 = call float @dx.op.unary.f32(i32 7, float %6485)  ; Saturate(value)
  %6487 = fsub fast float 1.000000e+00, %6486
  %6488 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6483)  ; FMax(a,b)
  %6489 = fdiv fast float %6487, %6488
  %6490 = fsub fast float %6473, %6051
  %6491 = call float @dx.op.unary.f32(i32 6, float %6490)  ; FAbs(value)
  %6492 = fmul fast float %6491, %6477
  %6493 = call float @dx.op.unary.f32(i32 7, float %6489)  ; Saturate(value)
  %6494 = fsub fast float 1.000000e+00, %6492
  %6495 = fmul fast float %6494, %6493
  %6496 = fadd fast float %6495, %6492
  %6497 = fmul fast float %6480, %6473
  %6498 = call float @dx.op.unary.f32(i32 7, float %6497)  ; Saturate(value)
  %6499 = fsub fast float 1.000000e+00, %6496
  %6500 = fmul fast float %6499, %6498
  %6501 = fadd fast float %6500, %6496
  %6502 = call float @dx.op.unary.f32(i32 7, float %6501)  ; Saturate(value)
  %6503 = fadd fast float %6475, -1.000000e+00
  %6504 = select i1 %6474, float -1.000000e+00, float %6503
  %6505 = fmul fast float %6502, %6504
  %6506 = fadd fast float %6505, 1.000000e+00
  %6507 = fsub fast float -0.000000e+00, %6505
  %6508 = fmul fast float %6467, %6507
  %6509 = fmul fast float %6468, %6507
  %6510 = fmul fast float %6469, %6507
  br label %6511

; <label>:6511                                    ; preds = %6464, %6060
  %6512 = phi float [ %6465, %6464 ], [ 0.000000e+00, %6060 ]
  %6513 = phi float [ %6506, %6464 ], [ 1.000000e+00, %6060 ]
  %6514 = phi float [ %6508, %6464 ], [ 0.000000e+00, %6060 ]
  %6515 = phi float [ %6509, %6464 ], [ 0.000000e+00, %6060 ]
  %6516 = phi float [ %6510, %6464 ], [ 0.000000e+00, %6060 ]
  %6517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6518 = extractvalue %dx.types.CBufRet.f32 %6517, 1
  %6519 = fsub fast float 1.000000e+00, %6513
  %6520 = fmul fast float %6519, %6095
  %6521 = fmul fast float %6520, %6518
  %6522 = fsub fast float %6095, %6521
  br i1 %6088, label %6523, label %6552, !dx.controlflow.hints !143

; <label>:6523                                    ; preds = %6511
  %6524 = fmul fast float %6096, %6085
  %6525 = fadd fast float %6524, %6086
  %6526 = call float @dx.op.unary.f32(i32 7, float %6525)  ; Saturate(value)
  %6527 = fmul fast float %6067, %6522
  %6528 = fsub fast float -0.000000e+00, %6527
  %6529 = fmul fast float %6068, %6522
  %6530 = fsub fast float -0.000000e+00, %6529
  %6531 = call float @dx.op.unary.f32(i32 21, float %6528)  ; Exp(value)
  %6532 = call float @dx.op.unary.f32(i32 21, float %6530)  ; Exp(value)
  %6533 = call float @dx.op.binary.f32(i32 35, float %6075, float %6531)  ; FMax(a,b)
  %6534 = call float @dx.op.binary.f32(i32 35, float %6075, float %6532)  ; FMax(a,b)
  %6535 = fsub fast float %6534, %6533
  %6536 = fmul fast float %6535, %6526
  %6537 = fadd fast float %6536, %6533
  %6538 = call float @dx.op.unary.f32(i32 7, float %6537)  ; Saturate(value)
  %6539 = fsub fast float %6072, %6077
  %6540 = fsub fast float %6073, %6078
  %6541 = fsub fast float %6074, %6079
  %6542 = fmul fast float %6526, %6539
  %6543 = fmul fast float %6526, %6540
  %6544 = fmul fast float %6526, %6541
  %6545 = fadd fast float %6542, %6077
  %6546 = fadd fast float %6543, %6078
  %6547 = fadd fast float %6544, %6079
  %6548 = fsub fast float 1.000000e+00, %6538
  %6549 = fmul fast float %6548, %6545
  %6550 = fmul fast float %6548, %6546
  %6551 = fmul fast float %6548, %6547
  br label %6611

; <label>:6552                                    ; preds = %6511
  %6553 = fmul fast float %6522, %6084
  %6554 = call float @dx.op.unary.f32(i32 7, float %6553)  ; Saturate(value)
  %6555 = fsub fast float 2.000000e+00, %6554
  %6556 = fmul fast float %6554, 9.921875e-01
  %6557 = fmul fast float %6556, %6555
  %6558 = fadd fast float %6557, 3.906250e-03
  %6559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %35, float %6558, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6560 = extractvalue %dx.types.ResRet.f32 %6559, 0
  %6561 = fsub fast float %6554, %6560
  %6562 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6561)  ; FMax(a,b)
  %6563 = fmul fast float %6070, %6051
  %6564 = call float @dx.op.unary.f32(i32 6, float %6563)  ; FAbs(value)
  %6565 = fcmp fast ogt float %6564, 0x3EB0C6F7A0000000
  br i1 %6565, label %6566, label %6572, !dx.controlflow.hints !144

; <label>:6566                                    ; preds = %6552
  %6567 = fmul fast float %6563, 0xBFF7154760000000
  %6568 = call float @dx.op.unary.f32(i32 21, float %6567)  ; Exp(value)
  %6569 = fsub fast float 1.000000e+00, %6568
  %6570 = fdiv fast float %6569, %6563
  %6571 = fmul fast float %6570, %6080
  br label %6572

; <label>:6572                                    ; preds = %6566, %6552
  %6573 = phi float [ %6571, %6566 ], [ %6080, %6552 ]
  %6574 = fadd fast float %6573, %6082
  %6575 = fmul fast float %6574, %6562
  %6576 = fmul fast float %6067, %6575
  %6577 = fsub fast float -0.000000e+00, %6576
  %6578 = fmul fast float %6068, %6575
  %6579 = fsub fast float -0.000000e+00, %6578
  %6580 = fmul fast float %6069, %6575
  %6581 = fsub fast float -0.000000e+00, %6580
  %6582 = call float @dx.op.unary.f32(i32 21, float %6577)  ; Exp(value)
  %6583 = call float @dx.op.unary.f32(i32 21, float %6579)  ; Exp(value)
  %6584 = call float @dx.op.unary.f32(i32 21, float %6581)  ; Exp(value)
  %6585 = fmul fast float %6096, %6096
  %6586 = fadd fast float %6585, 1.000000e+00
  %6587 = fmul fast float %6586, 0x3FAE8EC8A0000000
  %6588 = fmul fast float %6587, %6077
  %6589 = fmul fast float %6587, %6078
  %6590 = fmul fast float %6587, %6079
  %6591 = fmul fast float %6096, %6075
  %6592 = fsub fast float 1.000000e+00, %6591
  %6593 = fmul fast float %6075, %6075
  %6594 = fsub fast float 1.000000e+00, %6593
  %6595 = fmul fast float %6594, 0x3FB45F3060000000
  %6596 = fmul fast float %6592, %6592
  %6597 = fdiv fast float 1.000000e+00, %6596
  %6598 = fmul fast float %6595, %6597
  %6599 = fmul fast float %6598, %6072
  %6600 = fmul fast float %6598, %6073
  %6601 = fmul fast float %6598, %6074
  %6602 = fadd fast float %6599, %6588
  %6603 = fadd fast float %6600, %6589
  %6604 = fadd fast float %6601, %6590
  %6605 = fsub fast float 1.000000e+00, %6582
  %6606 = fsub fast float 1.000000e+00, %6583
  %6607 = fsub fast float 1.000000e+00, %6584
  %6608 = fmul fast float %6602, %6605
  %6609 = fmul fast float %6603, %6606
  %6610 = fmul fast float %6604, %6607
  br label %6611

; <label>:6611                                    ; preds = %6572, %6523
  %6612 = phi float [ %6549, %6523 ], [ %6608, %6572 ]
  %6613 = phi float [ %6550, %6523 ], [ %6609, %6572 ]
  %6614 = phi float [ %6551, %6523 ], [ %6610, %6572 ]
  %6615 = phi float [ %6538, %6523 ], [ %6582, %6572 ]
  %6616 = phi float [ %6538, %6523 ], [ %6583, %6572 ]
  %6617 = phi float [ %6538, %6523 ], [ %6584, %6572 ]
  br i1 %6104, label %6618, label %6816, !dx.controlflow.hints !145

; <label>:6618                                    ; preds = %6611
  %6619 = extractvalue %dx.types.CBufRet.f32 %6517, 0
  %6620 = fmul fast float %6619, %6519
  %6621 = fsub fast float %6514, %6612
  %6622 = fsub fast float %6515, %6613
  %6623 = fsub fast float %6516, %6614
  %6624 = fmul fast float %6620, %6621
  %6625 = fmul fast float %6620, %6622
  %6626 = fmul fast float %6620, %6623
  %6627 = fadd fast float %6624, %6612
  %6628 = fadd fast float %6625, %6613
  %6629 = fadd fast float %6626, %6614
  %6630 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6615)  ; FMax(a,b)
  %6631 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6616)  ; FMax(a,b)
  %6632 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6617)  ; FMax(a,b)
  %6633 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6513)  ; FMax(a,b)
  %6634 = call float @dx.op.binary.f32(i32 35, float %6512, float %6522)  ; FMax(a,b)
  %6635 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6634)  ; FMax(a,b)
  %6636 = fdiv fast float %6512, %6635
  %6637 = call float @dx.op.unary.f32(i32 7, float %6636)  ; Saturate(value)
  %6638 = fdiv fast float %6522, %6635
  %6639 = call float @dx.op.unary.f32(i32 7, float %6638)  ; Saturate(value)
  %6640 = fcmp fast une float %6633, 1.000000e+00
  br i1 %6640, label %6641, label %6654, !dx.controlflow.hints !146

; <label>:6641                                    ; preds = %6618
  %6642 = call float @dx.op.unary.f32(i32 23, float %6633)  ; Log(value)
  %6643 = fmul fast float %6642, 0x3FE62E4300000000
  %6644 = fmul fast float %6514, %6643
  %6645 = fsub fast float -0.000000e+00, %6644
  %6646 = fmul fast float %6515, %6643
  %6647 = fsub fast float -0.000000e+00, %6646
  %6648 = fmul fast float %6516, %6643
  %6649 = fsub fast float -0.000000e+00, %6648
  %6650 = fsub fast float 1.000000e+00, %6633
  %6651 = fdiv fast float %6645, %6650
  %6652 = fdiv fast float %6647, %6650
  %6653 = fdiv fast float %6649, %6650
  br label %6654

; <label>:6654                                    ; preds = %6641, %6618
  %6655 = phi float [ %6651, %6641 ], [ %6514, %6618 ]
  %6656 = phi float [ %6652, %6641 ], [ %6515, %6618 ]
  %6657 = phi float [ %6653, %6641 ], [ %6516, %6618 ]
  %6658 = phi float [ %6643, %6641 ], [ 0.000000e+00, %6618 ]
  %6659 = fcmp fast une float %6630, 1.000000e+00
  br i1 %6659, label %6660, label %6667, !dx.controlflow.hints !147

; <label>:6660                                    ; preds = %6654
  %6661 = call float @dx.op.unary.f32(i32 23, float %6630)  ; Log(value)
  %6662 = fmul fast float %6661, 0x3FE62E4300000000
  %6663 = fmul fast float %6627, %6662
  %6664 = fsub fast float -0.000000e+00, %6663
  %6665 = fsub fast float 1.000000e+00, %6630
  %6666 = fdiv fast float %6664, %6665
  br label %6667

; <label>:6667                                    ; preds = %6660, %6654
  %6668 = phi float [ %6666, %6660 ], [ %6627, %6654 ]
  %6669 = phi float [ %6662, %6660 ], [ 0.000000e+00, %6654 ]
  %6670 = fcmp fast une float %6631, 1.000000e+00
  br i1 %6670, label %6671, label %6678, !dx.controlflow.hints !147

; <label>:6671                                    ; preds = %6667
  %6672 = call float @dx.op.unary.f32(i32 23, float %6631)  ; Log(value)
  %6673 = fmul fast float %6672, 0x3FE62E4300000000
  %6674 = fmul fast float %6628, %6673
  %6675 = fsub fast float -0.000000e+00, %6674
  %6676 = fsub fast float 1.000000e+00, %6631
  %6677 = fdiv fast float %6675, %6676
  br label %6678

; <label>:6678                                    ; preds = %6671, %6667
  %6679 = phi float [ %6677, %6671 ], [ %6628, %6667 ]
  %6680 = phi float [ %6673, %6671 ], [ 0.000000e+00, %6667 ]
  %6681 = fcmp fast une float %6632, 1.000000e+00
  br i1 %6681, label %6682, label %6689, !dx.controlflow.hints !147

; <label>:6682                                    ; preds = %6678
  %6683 = call float @dx.op.unary.f32(i32 23, float %6632)  ; Log(value)
  %6684 = fmul fast float %6683, 0x3FE62E4300000000
  %6685 = fmul fast float %6629, %6684
  %6686 = fsub fast float -0.000000e+00, %6685
  %6687 = fsub fast float 1.000000e+00, %6632
  %6688 = fdiv fast float %6686, %6687
  br label %6689

; <label>:6689                                    ; preds = %6682, %6678
  %6690 = phi float [ %6688, %6682 ], [ %6629, %6678 ]
  %6691 = phi float [ %6684, %6682 ], [ 0.000000e+00, %6678 ]
  %6692 = fmul fast float %6655, %6639
  %6693 = fmul fast float %6656, %6639
  %6694 = fmul fast float %6657, %6639
  %6695 = fmul fast float %6658, %6639
  %6696 = fmul fast float %6668, %6637
  %6697 = fmul fast float %6679, %6637
  %6698 = fmul fast float %6690, %6637
  %6699 = fmul fast float %6669, %6637
  %6700 = fmul fast float %6680, %6637
  %6701 = fmul fast float %6691, %6637
  %6702 = fadd fast float %6696, %6692
  %6703 = fadd fast float %6697, %6693
  %6704 = fadd fast float %6698, %6694
  %6705 = fadd fast float %6699, %6695
  %6706 = fadd fast float %6700, %6695
  %6707 = fadd fast float %6701, %6695
  %6708 = fcmp fast une float %6705, 0.000000e+00
  br i1 %6708, label %6709, label %6716, !dx.controlflow.hints !148

; <label>:6709                                    ; preds = %6689
  %6710 = fmul fast float %6705, 0x3FF7154760000000
  %6711 = call float @dx.op.unary.f32(i32 21, float %6710)  ; Exp(value)
  %6712 = fsub fast float 1.000000e+00, %6711
  %6713 = fmul fast float %6702, %6712
  %6714 = fsub fast float -0.000000e+00, %6713
  %6715 = fdiv fast float %6714, %6705
  br label %6716

; <label>:6716                                    ; preds = %6709, %6689
  %6717 = phi float [ %6711, %6709 ], [ 1.000000e+00, %6689 ]
  %6718 = phi float [ %6715, %6709 ], [ %6702, %6689 ]
  %6719 = fcmp fast une float %6706, 0.000000e+00
  br i1 %6719, label %6720, label %6727, !dx.controlflow.hints !148

; <label>:6720                                    ; preds = %6716
  %6721 = fmul fast float %6706, 0x3FF7154760000000
  %6722 = call float @dx.op.unary.f32(i32 21, float %6721)  ; Exp(value)
  %6723 = fsub fast float 1.000000e+00, %6722
  %6724 = fmul fast float %6703, %6723
  %6725 = fsub fast float -0.000000e+00, %6724
  %6726 = fdiv fast float %6725, %6706
  br label %6727

; <label>:6727                                    ; preds = %6720, %6716
  %6728 = phi float [ %6722, %6720 ], [ 1.000000e+00, %6716 ]
  %6729 = phi float [ %6726, %6720 ], [ %6703, %6716 ]
  %6730 = fcmp fast une float %6707, 0.000000e+00
  br i1 %6730, label %6731, label %6738, !dx.controlflow.hints !148

; <label>:6731                                    ; preds = %6727
  %6732 = fmul fast float %6707, 0x3FF7154760000000
  %6733 = call float @dx.op.unary.f32(i32 21, float %6732)  ; Exp(value)
  %6734 = fsub fast float 1.000000e+00, %6733
  %6735 = fmul fast float %6704, %6734
  %6736 = fsub fast float -0.000000e+00, %6735
  %6737 = fdiv fast float %6736, %6707
  br label %6738

; <label>:6738                                    ; preds = %6731, %6727
  %6739 = phi float [ %6733, %6731 ], [ 1.000000e+00, %6727 ]
  %6740 = phi float [ %6737, %6731 ], [ %6704, %6727 ]
  %6741 = fcmp fast ogt float %6637, %6639
  br i1 %6741, label %6742, label %6762

; <label>:6742                                    ; preds = %6738
  %6743 = fsub fast float 1.000000e+00, %6639
  %6744 = fmul fast float %6655, %6743
  %6745 = fmul fast float %6656, %6743
  %6746 = fmul fast float %6657, %6743
  %6747 = fmul fast float %6658, %6743
  %6748 = fcmp fast une float %6747, 0.000000e+00
  br i1 %6748, label %6749, label %6800, !dx.controlflow.hints !149

; <label>:6749                                    ; preds = %6742
  %6750 = fmul fast float %6747, 0x3FF7154760000000
  %6751 = call float @dx.op.unary.f32(i32 21, float %6750)  ; Exp(value)
  %6752 = fsub fast float 1.000000e+00, %6751
  %6753 = fmul fast float %6744, %6752
  %6754 = fsub fast float -0.000000e+00, %6753
  %6755 = fmul fast float %6745, %6752
  %6756 = fsub fast float -0.000000e+00, %6755
  %6757 = fmul fast float %6746, %6752
  %6758 = fsub fast float -0.000000e+00, %6757
  %6759 = fdiv fast float %6754, %6747
  %6760 = fdiv fast float %6756, %6747
  %6761 = fdiv fast float %6758, %6747
  br label %6800

; <label>:6762                                    ; preds = %6738
  %6763 = fsub fast float 1.000000e+00, %6637
  %6764 = fmul fast float %6668, %6763
  %6765 = fmul fast float %6679, %6763
  %6766 = fmul fast float %6690, %6763
  %6767 = fmul fast float %6669, %6763
  %6768 = fmul fast float %6680, %6763
  %6769 = fmul fast float %6691, %6763
  %6770 = fcmp fast une float %6767, 0.000000e+00
  br i1 %6770, label %6771, label %6778, !dx.controlflow.hints !148

; <label>:6771                                    ; preds = %6762
  %6772 = fmul fast float %6767, 0x3FF7154760000000
  %6773 = call float @dx.op.unary.f32(i32 21, float %6772)  ; Exp(value)
  %6774 = fsub fast float 1.000000e+00, %6773
  %6775 = fmul fast float %6764, %6774
  %6776 = fsub fast float -0.000000e+00, %6775
  %6777 = fdiv fast float %6776, %6767
  br label %6778

; <label>:6778                                    ; preds = %6771, %6762
  %6779 = phi float [ %6777, %6771 ], [ %6764, %6762 ]
  %6780 = phi float [ %6773, %6771 ], [ 1.000000e+00, %6762 ]
  %6781 = fcmp fast une float %6768, 0.000000e+00
  br i1 %6781, label %6782, label %6789, !dx.controlflow.hints !148

; <label>:6782                                    ; preds = %6778
  %6783 = fmul fast float %6768, 0x3FF7154760000000
  %6784 = call float @dx.op.unary.f32(i32 21, float %6783)  ; Exp(value)
  %6785 = fsub fast float 1.000000e+00, %6784
  %6786 = fmul fast float %6765, %6785
  %6787 = fsub fast float -0.000000e+00, %6786
  %6788 = fdiv fast float %6787, %6768
  br label %6789

; <label>:6789                                    ; preds = %6782, %6778
  %6790 = phi float [ %6788, %6782 ], [ %6765, %6778 ]
  %6791 = phi float [ %6784, %6782 ], [ 1.000000e+00, %6778 ]
  %6792 = fcmp fast une float %6769, 0.000000e+00
  br i1 %6792, label %6793, label %6800, !dx.controlflow.hints !148

; <label>:6793                                    ; preds = %6789
  %6794 = fmul fast float %6769, 0x3FF7154760000000
  %6795 = call float @dx.op.unary.f32(i32 21, float %6794)  ; Exp(value)
  %6796 = fsub fast float 1.000000e+00, %6795
  %6797 = fmul fast float %6766, %6796
  %6798 = fsub fast float -0.000000e+00, %6797
  %6799 = fdiv fast float %6798, %6769
  br label %6800

; <label>:6800                                    ; preds = %6793, %6789, %6749, %6742
  %6801 = phi float [ %6799, %6793 ], [ %6761, %6749 ], [ %6746, %6742 ], [ %6766, %6789 ]
  %6802 = phi float [ %6790, %6793 ], [ %6760, %6749 ], [ %6745, %6742 ], [ %6790, %6789 ]
  %6803 = phi float [ %6779, %6793 ], [ %6759, %6749 ], [ %6744, %6742 ], [ %6779, %6789 ]
  %6804 = phi float [ %6795, %6793 ], [ %6751, %6749 ], [ 1.000000e+00, %6742 ], [ 1.000000e+00, %6789 ]
  %6805 = phi float [ %6791, %6793 ], [ %6751, %6749 ], [ 1.000000e+00, %6742 ], [ %6791, %6789 ]
  %6806 = phi float [ %6780, %6793 ], [ %6751, %6749 ], [ 1.000000e+00, %6742 ], [ %6780, %6789 ]
  %6807 = fmul fast float %6806, %6718
  %6808 = fmul fast float %6805, %6729
  %6809 = fmul fast float %6804, %6740
  %6810 = fadd fast float %6807, %6803
  %6811 = fadd fast float %6808, %6802
  %6812 = fadd fast float %6809, %6801
  %6813 = fmul fast float %6806, %6717
  %6814 = fmul fast float %6805, %6728
  %6815 = fmul fast float %6804, %6739
  br label %6816

; <label>:6816                                    ; preds = %6800, %6611
  %6817 = phi float [ %6815, %6800 ], [ %6617, %6611 ]
  %6818 = phi float [ %6814, %6800 ], [ %6616, %6611 ]
  %6819 = phi float [ %6813, %6800 ], [ %6615, %6611 ]
  %6820 = phi float [ %6812, %6800 ], [ %6614, %6611 ]
  %6821 = phi float [ %6811, %6800 ], [ %6613, %6611 ]
  %6822 = phi float [ %6810, %6800 ], [ %6612, %6611 ]
  %6823 = fmul fast float %6822, %5768
  %6824 = fmul fast float %6821, %5768
  %6825 = fmul fast float %6820, %5768
  %6826 = fmul fast float %6819, %6059
  %6827 = call float @dx.op.dot3.f32(i32 55, float %6819, float %6818, float %6817, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6828 = call float @dx.op.dot3.f32(i32 55, float %6823, float %6824, float %6825, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6829 = select i1 %206, float %6827, float %6819
  %6830 = select i1 %206, float %6827, float %6818
  %6831 = select i1 %206, float 1.000000e+00, float %6817
  %6832 = select i1 %206, float %6828, float %6823
  %6833 = select i1 %206, float 0.000000e+00, float %6824
  %6834 = select i1 %206, float 0.000000e+00, float %6825
  %6835 = fmul fast float %6829, %6053
  %6836 = fmul fast float %6830, %6054
  %6837 = fmul fast float %6831, %6055
  %6838 = fadd fast float %6835, %6832
  %6839 = fadd fast float %6836, %6833
  %6840 = fadd fast float %6834, %6837
  %6841 = fmul fast float %6829, %6056
  %6842 = fmul fast float %6830, %6057
  %6843 = fmul fast float %6831, %6058
  %6844 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6845 = extractvalue %dx.types.CBufRet.i32 %6844, 0
  %6846 = icmp eq i32 %6845, 0
  br i1 %6846, label %7214, label %6847, !dx.controlflow.hints !150

; <label>:6847                                    ; preds = %6816
  %6848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.f32 %6848, 2
  %6850 = extractvalue %dx.types.CBufRet.f32 %6848, 3
  %6851 = fmul fast float %6849, %82
  %6852 = fmul fast float %6850, %83
  %6853 = fmul fast float %6851, 2.000000e+00
  %6854 = fmul fast float %6852, 2.000000e+00
  %6855 = fsub fast float 1.000000e+00, %6853
  %6856 = fsub fast float 1.000000e+00, %6854
  %6857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6858 = extractvalue %dx.types.CBufRet.f32 %6857, 0
  %6859 = extractvalue %dx.types.CBufRet.f32 %6857, 1
  %6860 = extractvalue %dx.types.CBufRet.f32 %6857, 2
  %6861 = fmul fast float %6855, %6858
  %6862 = fmul fast float %6855, %6859
  %6863 = fmul fast float %6855, %6860
  %6864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6865 = extractvalue %dx.types.CBufRet.f32 %6864, 0
  %6866 = extractvalue %dx.types.CBufRet.f32 %6864, 1
  %6867 = extractvalue %dx.types.CBufRet.f32 %6864, 2
  %6868 = fmul fast float %6856, %6865
  %6869 = fmul fast float %6856, %6866
  %6870 = fmul fast float %6856, %6867
  %6871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6872 = extractvalue %dx.types.CBufRet.f32 %6871, 0
  %6873 = extractvalue %dx.types.CBufRet.f32 %6871, 1
  %6874 = extractvalue %dx.types.CBufRet.f32 %6871, 2
  %6875 = fadd fast float %6868, %6872
  %6876 = fadd fast float %6875, %6861
  %6877 = fadd fast float %6869, %6873
  %6878 = fadd fast float %6877, %6862
  %6879 = fadd fast float %6870, %6874
  %6880 = fadd fast float %6879, %6863
  %6881 = fmul fast float %6876, %6052
  %6882 = fmul fast float %6878, %6052
  %6883 = fmul fast float %6880, %6052
  %6884 = fmul fast float %6881, %6881
  %6885 = fmul fast float %6882, %6882
  %6886 = fadd fast float %6884, %6885
  %6887 = fmul fast float %6883, %6883
  %6888 = fadd fast float %6886, %6887
  %6889 = call float @dx.op.unary.f32(i32 24, float %6888)  ; Sqrt(value)
  %6890 = extractvalue %dx.types.CBufRet.f32 %5779, 0
  %6891 = fsub fast float %6889, %6890
  %6892 = extractvalue %dx.types.CBufRet.f32 %5779, 2
  %6893 = fmul fast float %6891, %6892
  %6894 = call float @dx.op.unary.f32(i32 7, float %6893)  ; Saturate(value)
  %6895 = fadd fast float %6894, -5.000000e-01
  %6896 = fmul fast float %6895, 2.000000e+00
  %6897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6898 = extractvalue %dx.types.CBufRet.f32 %6897, 2
  %6899 = call float @dx.op.binary.f32(i32 36, float %6898, float %6896)  ; FMin(a,b)
  %6900 = fsub fast float -0.000000e+00, %6898
  %6901 = fcmp fast ogt float %6899, %6900
  br i1 %6901, label %6902, label %7214, !dx.controlflow.hints !151

; <label>:6902                                    ; preds = %6847
  %6903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6904 = extractvalue %dx.types.CBufRet.f32 %6903, 3
  %6905 = fcmp fast ogt float %6904, 0.000000e+00
  br i1 %6905, label %6906, label %6981, !dx.controlflow.hints !152

; <label>:6906                                    ; preds = %6902
  %6907 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %6908 = extractvalue %dx.types.Dimensions %6907, 0
  %6909 = sitofp i32 %6908 to float
  %6910 = extractvalue %dx.types.Dimensions %6907, 1
  %6911 = sitofp i32 %6910 to float
  %6912 = fmul fast float %6851, %6909
  %6913 = fmul fast float %6852, %6911
  %6914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6915 = extractvalue %dx.types.CBufRet.f32 %6914, 1
  %6916 = fsub fast float -0.000000e+00, %6915
  %6917 = fptoui float %6916 to i32
  %6918 = fptoui float %6912 to i32
  %6919 = fptoui float %6913 to i32
  %6920 = and i32 %6917, 31
  %6921 = lshr i32 %6918, %6920
  %6922 = lshr i32 %6919, %6920
  %6923 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %6917, i32 %6921, i32 %6922, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6924 = extractvalue %dx.types.ResRet.f32 %6923, 0
  %6925 = fcmp fast olt float %6924, -1.000000e+00
  %6926 = fcmp fast ogt float %6924, -1.000000e+00
  %6927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6928 = extractvalue %dx.types.CBufRet.f32 %6927, 1
  %6929 = select i1 %6926, float %6928, float 1.000000e+00
  %6930 = fadd fast float %6924, 1.000000e+00
  %6931 = fmul fast float %6929, %6930
  %6932 = call float @dx.op.unary.f32(i32 6, float %6931)  ; FAbs(value)
  %6933 = extractvalue %dx.types.CBufRet.f32 %6927, 3
  %6934 = fcmp fast oge float %6932, %6933
  %6935 = select i1 %6934, float 0x4197782600000000, float %6932
  %6936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6937 = extractvalue %dx.types.CBufRet.f32 %6936, 0
  %6938 = extractvalue %dx.types.CBufRet.f32 %6936, 1
  %6939 = extractvalue %dx.types.CBufRet.f32 %6936, 2
  %6940 = select i1 %6925, float %6937, float %6858
  %6941 = select i1 %6925, float %6938, float %6859
  %6942 = select i1 %6925, float %6939, float %6860
  %6943 = fmul fast float %6940, %6855
  %6944 = fmul fast float %6941, %6855
  %6945 = fmul fast float %6942, %6855
  %6946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6947 = extractvalue %dx.types.CBufRet.f32 %6946, 0
  %6948 = extractvalue %dx.types.CBufRet.f32 %6946, 1
  %6949 = extractvalue %dx.types.CBufRet.f32 %6946, 2
  %6950 = select i1 %6925, float %6947, float %6865
  %6951 = select i1 %6925, float %6948, float %6866
  %6952 = select i1 %6925, float %6949, float %6867
  %6953 = fmul fast float %6950, %6856
  %6954 = fmul fast float %6951, %6856
  %6955 = fmul fast float %6952, %6856
  %6956 = fadd fast float %6953, %6943
  %6957 = fadd fast float %6954, %6944
  %6958 = fadd fast float %6955, %6945
  %6959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6960 = extractvalue %dx.types.CBufRet.f32 %6959, 0
  %6961 = extractvalue %dx.types.CBufRet.f32 %6959, 1
  %6962 = extractvalue %dx.types.CBufRet.f32 %6959, 2
  %6963 = select i1 %6925, float %6960, float %6872
  %6964 = select i1 %6925, float %6961, float %6873
  %6965 = select i1 %6925, float %6962, float %6874
  %6966 = fadd fast float %6956, %6963
  %6967 = fadd fast float %6957, %6964
  %6968 = fadd fast float %6958, %6965
  %6969 = fmul fast float %6966, %6935
  %6970 = fmul fast float %6967, %6935
  %6971 = fmul fast float %6968, %6935
  %6972 = fmul fast float %6969, %6969
  %6973 = fmul fast float %6970, %6970
  %6974 = fadd fast float %6972, %6973
  %6975 = fmul fast float %6971, %6971
  %6976 = fadd fast float %6974, %6975
  %6977 = call float @dx.op.unary.f32(i32 24, float %6976)  ; Sqrt(value)
  %6978 = fsub fast float %6977, %6890
  %6979 = fmul fast float %6978, %6892
  %6980 = call float @dx.op.unary.f32(i32 7, float %6979)  ; Saturate(value)
  br label %6981

; <label>:6981                                    ; preds = %6906, %6902
  %6982 = phi float [ %6980, %6906 ], [ 1.000000e+00, %6902 ]
  %6983 = fmul fast float %6899, 5.000000e-01
  %6984 = fadd fast float %6983, 5.000000e-01
  %6985 = call float @dx.op.unary.f32(i32 22, float %6984)  ; Frc(value)
  %6986 = call float @dx.op.unary.f32(i32 27, float %6985)  ; Round_ni(value)
  %6987 = call float @dx.op.unary.f32(i32 22, float %6985)  ; Frc(value)
  %6988 = fmul fast float %6987, 2.000000e+00
  %6989 = fadd fast float %6988, -1.000000e+00
  %6990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %6851, float %6852, float %6986, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6991 = extractvalue %dx.types.ResRet.f32 %6990, 0
  %6992 = extractvalue %dx.types.ResRet.f32 %6990, 1
  %6993 = extractvalue %dx.types.ResRet.f32 %6990, 2
  %6994 = extractvalue %dx.types.ResRet.f32 %6990, 3
  %6995 = fadd fast float %6991, -5.000000e-01
  %6996 = fadd fast float %6993, -5.000000e-01
  %6997 = fmul fast float %6995, 0xBFD5555560000000
  %6998 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6996, float %6997)  ; FMad(a,b,c)
  %6999 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6992, float 0.000000e+00)  ; FMad(a,b,c)
  %7000 = fadd fast float %6999, %6994
  %7001 = fmul fast float %6995, -7.500000e-01
  %7002 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6996, float %7001)  ; FMad(a,b,c)
  %7003 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6992, float 0.000000e+00)  ; FMad(a,b,c)
  %7004 = fadd fast float %7003, %6994
  %7005 = call float @dx.op.binary.f32(i32 35, float %6998, float -1.000000e+00)  ; FMax(a,b)
  %7006 = call float @dx.op.binary.f32(i32 35, float %7000, float -1.000000e+00)  ; FMax(a,b)
  %7007 = call float @dx.op.binary.f32(i32 35, float %7002, float -1.000000e+00)  ; FMax(a,b)
  %7008 = call float @dx.op.binary.f32(i32 35, float %7004, float -1.000000e+00)  ; FMax(a,b)
  %7009 = call float @dx.op.binary.f32(i32 36, float %7005, float 1.000000e+00)  ; FMin(a,b)
  %7010 = call float @dx.op.binary.f32(i32 36, float %7006, float 1.000000e+00)  ; FMin(a,b)
  %7011 = call float @dx.op.binary.f32(i32 36, float %7007, float 1.000000e+00)  ; FMin(a,b)
  %7012 = call float @dx.op.binary.f32(i32 36, float %7008, float 1.000000e+00)  ; FMin(a,b)
  %7013 = fcmp fast olt float %7009, 0x3FEFFF8020000000
  br i1 %7013, label %7014, label %7129, !dx.controlflow.hints !153

; <label>:7014                                    ; preds = %6981
  %7015 = extractvalue %dx.types.CBufRet.f32 %6897, 3
  %7016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7017 = extractvalue %dx.types.CBufRet.f32 %7016, 0
  %7018 = extractvalue %dx.types.CBufRet.f32 %7016, 1
  %7019 = extractvalue %dx.types.CBufRet.f32 %7016, 2
  %7020 = extractvalue %dx.types.CBufRet.f32 %7016, 3
  %7021 = fsub fast float %7017, %7009
  %7022 = fsub fast float %7018, %7010
  %7023 = fsub fast float %7019, %7011
  %7024 = fsub fast float %7020, %7012
  %7025 = fmul fast float %7021, %7015
  %7026 = fmul fast float %7022, %7015
  %7027 = fmul fast float %7023, %7015
  %7028 = fmul fast float %7024, %7015
  %7029 = fadd fast float %7025, %7009
  %7030 = fadd fast float %7026, %7010
  %7031 = fsub fast float -0.000000e+00, %7030
  %7032 = fadd fast float %7027, %7011
  %7033 = fadd fast float %7028, %7012
  %7034 = fmul fast float %7029, %7029
  %7035 = fsub fast float %7030, %7034
  %7036 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7035)  ; FMax(a,b)
  %7037 = fdiv fast float 1.000000e+00, %7036
  %7038 = fmul fast float %7030, %7029
  %7039 = fsub fast float %7032, %7038
  %7040 = fsub fast float %6989, %7029
  %7041 = fmul fast float %6989, %6989
  %7042 = fsub fast float %7041, %7030
  %7043 = fmul fast float %7040, %7037
  %7044 = fmul fast float %7043, %7039
  %7045 = fsub fast float %7042, %7044
  %7046 = fmul fast float %7030, %7030
  %7047 = fsub fast float %7033, %7046
  %7048 = fmul fast float %7039, %7039
  %7049 = fmul fast float %7048, %7037
  %7050 = fsub fast float %7047, %7049
  %7051 = fdiv fast float %7045, %7050
  %7052 = fmul fast float %7039, %7051
  %7053 = fsub fast float %7040, %7052
  %7054 = fmul fast float %7053, %7037
  %7055 = fmul fast float %7054, %7029
  %7056 = fsub fast float 1.000000e+00, %7055
  %7057 = fmul fast float %7030, %7051
  %7058 = fsub fast float %7056, %7057
  %7059 = fmul fast float %7054, %7054
  %7060 = fmul fast float %7051, 4.000000e+00
  %7061 = fmul fast float %7060, %7058
  %7062 = fsub fast float %7059, %7061
  %7063 = call float @dx.op.unary.f32(i32 24, float %7062)  ; Sqrt(value)
  %7064 = fcmp fast oge float %7054, 0.000000e+00
  %7065 = fsub fast float -0.000000e+00, %7063
  %7066 = select i1 %7064, float %7065, float %7063
  %7067 = fsub fast float %7066, %7054
  %7068 = fdiv fast float %7067, %7051
  %7069 = fdiv fast float %7058, %7067
  %7070 = fmul fast float %7068, 5.000000e-01
  %7071 = fmul fast float %7069, 2.000000e+00
  %7072 = select i1 %7064, float %7070, float %7071
  %7073 = select i1 %7064, float %7071, float %7070
  %7074 = call float @dx.op.binary.f32(i32 35, float %7072, float %7073)  ; FMax(a,b)
  %7075 = call float @dx.op.binary.f32(i32 36, float %7072, float %7073)  ; FMin(a,b)
  %7076 = fcmp fast ogt float %6989, %7075
  br i1 %7076, label %7077, label %7087

; <label>:7077                                    ; preds = %7014
  %7078 = fsub fast float %6989, %7075
  %7079 = fsub fast float %7074, %7075
  %7080 = fmul fast float %7078, %7079
  %7081 = fmul fast float %7074, %6989
  %7082 = fadd fast float %7074, %6989
  %7083 = fmul fast float %7082, %7029
  %7084 = fadd fast float %7081, %7030
  %7085 = fsub fast float %7084, %7083
  %7086 = fdiv fast float %7085, %7080
  br label %7087

; <label>:7087                                    ; preds = %7077, %7014
  %7088 = phi float [ %7086, %7077 ], [ 0.000000e+00, %7014 ]
  %7089 = fcmp fast ogt float %6989, %7074
  %7090 = fsub fast float %6989, %7074
  br i1 %7089, label %7091, label %7101

; <label>:7091                                    ; preds = %7087
  %7092 = fsub fast float %7074, %7075
  %7093 = fmul fast float %7092, %7090
  %7094 = fmul fast float %7075, %6989
  %7095 = fadd fast float %7075, %6989
  %7096 = fmul fast float %7095, %7029
  %7097 = fsub fast float %7031, %7094
  %7098 = fadd fast float %7097, %7096
  %7099 = fdiv fast float %7098, %7093
  %7100 = fadd fast float %7099, %7088
  br label %7101

; <label>:7101                                    ; preds = %7091, %7087
  %7102 = phi float [ %7100, %7091 ], [ %7088, %7087 ]
  %7103 = fsub fast float %6989, %7075
  %7104 = fmul fast float %7103, %7090
  %7105 = fmul fast float %7075, %7074
  %7106 = fadd fast float %7075, %7074
  %7107 = fmul fast float %7106, %7029
  %7108 = fadd fast float %7105, %7030
  %7109 = fsub fast float %7108, %7107
  %7110 = fdiv fast float %7109, %7104
  %7111 = call float @dx.op.unary.f32(i32 7, float %7102)  ; Saturate(value)
  %7112 = fcmp fast oeq float %5780, 0.000000e+00
  %7113 = extractvalue %dx.types.CBufRet.f32 %6897, 0
  %7114 = fcmp fast oeq float %7113, 0.000000e+00
  %7115 = or i1 %7112, %7114
  %7116 = fmul fast float %7113, 2.000000e+00
  %7117 = fadd fast float %6898, %6899
  %7118 = fdiv fast float %7117, %7116
  %7119 = call float @dx.op.unary.f32(i32 7, float %7118)  ; Saturate(value)
  %7120 = fmul fast float %7119, 2.000000e+00
  %7121 = fsub fast float 3.000000e+00, %7120
  %7122 = fmul fast float %7119, %7119
  %7123 = fmul fast float %7122, %7121
  %7124 = select i1 %7115, float 1.000000e+00, float %7123
  %7125 = fmul fast float %7110, %5780
  %7126 = fadd fast float %7111, %7125
  %7127 = call float @dx.op.unary.f32(i32 7, float %7126)  ; Saturate(value)
  %7128 = fmul fast float %7124, %7127
  br label %7129

; <label>:7129                                    ; preds = %7101, %6981
  %7130 = phi float [ %7128, %7101 ], [ 0.000000e+00, %6981 ]
  %7131 = fsub fast float 1.000000e+00, %7130
  %7132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %35, float %6851, float %6852, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7133 = extractvalue %dx.types.ResRet.f32 %7132, 0
  %7134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7135 = extractvalue %dx.types.CBufRet.i32 %7134, 2
  %7136 = icmp eq i32 %7135, 0
  br i1 %7136, label %7142, label %7137

; <label>:7137                                    ; preds = %7129
  %7138 = call float @dx.op.unary.f32(i32 7, float %7130)  ; Saturate(value)
  %7139 = fadd fast float %7133, -1.000000e+00
  %7140 = fmul fast float %7138, %7139
  %7141 = fadd fast float %7140, 1.000000e+00
  br label %7142

; <label>:7142                                    ; preds = %7137, %7129
  %7143 = phi float [ %7141, %7137 ], [ %7131, %7129 ]
  br i1 %6905, label %7144, label %7162

; <label>:7144                                    ; preds = %7142
  %7145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7146 = extractvalue %dx.types.CBufRet.f32 %7145, 1
  %7147 = fsub fast float %6982, %7146
  %7148 = call float @dx.op.unary.f32(i32 7, float %7147)  ; Saturate(value)
  %7149 = fsub fast float %6982, %6904
  %7150 = call float @dx.op.unary.f32(i32 7, float %7149)  ; Saturate(value)
  %7151 = fsub fast float %7148, %7150
  %7152 = fsub fast float %6984, %7150
  %7153 = fdiv fast float %7152, %7151
  %7154 = call float @dx.op.unary.f32(i32 7, float %7153)  ; Saturate(value)
  %7155 = fmul fast float %7154, 2.000000e+00
  %7156 = fsub fast float 3.000000e+00, %7155
  %7157 = fsub fast float %7133, %7143
  %7158 = fmul fast float %7154, %7154
  %7159 = fmul fast float %7158, %7157
  %7160 = fmul fast float %7159, %7156
  %7161 = fadd fast float %7160, %7143
  br label %7162

; <label>:7162                                    ; preds = %7144, %7142
  %7163 = phi float [ %7161, %7144 ], [ %7143, %7142 ]
  %7164 = call float @dx.op.binary.f32(i32 35, float %7133, float %7163)  ; FMax(a,b)
  %7165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7166 = extractvalue %dx.types.CBufRet.i32 %7165, 2
  %7167 = and i32 %7166, 1
  %7168 = icmp eq i32 %7167, 0
  %7169 = fcmp fast une float %7164, 1.000000e+00
  %7170 = and i1 %7169, %7168
  br i1 %7170, label %7171, label %7190

; <label>:7171                                    ; preds = %7162
  %7172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %35, float %6851, float %6852, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7173 = extractvalue %dx.types.ResRet.f32 %7172, 0
  %7174 = extractvalue %dx.types.ResRet.f32 %7172, 1
  %7175 = extractvalue %dx.types.ResRet.f32 %7172, 2
  %7176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7177 = extractvalue %dx.types.CBufRet.f32 %7176, 1
  %7178 = fmul fast float %7177, %7173
  %7179 = fmul fast float %7177, %7174
  %7180 = fmul fast float %7177, %7175
  %7181 = fcmp fast ogt float %7133, 0x3FEFFF2E40000000
  %7182 = fsub fast float 1.000000e+00, %7164
  %7183 = fsub fast float 1.000000e+00, %7133
  %7184 = fdiv fast float %7182, %7183
  %7185 = call float @dx.op.unary.f32(i32 7, float %7184)  ; Saturate(value)
  %7186 = select i1 %7181, float 0.000000e+00, float %7185
  %7187 = fmul fast float %7178, %7186
  %7188 = fmul fast float %7179, %7186
  %7189 = fmul fast float %7180, %7186
  br label %7190

; <label>:7190                                    ; preds = %7171, %7162
  %7191 = phi float [ 0.000000e+00, %7162 ], [ %7187, %7171 ]
  %7192 = phi float [ 0.000000e+00, %7162 ], [ %7188, %7171 ]
  %7193 = phi float [ 0.000000e+00, %7162 ], [ %7189, %7171 ]
  %7194 = fmul fast float %7191, %5768
  %7195 = fmul fast float %7192, %5768
  %7196 = fmul fast float %7193, %5768
  %7197 = fmul fast float %7164, %6826
  %7198 = call float @dx.op.dot3.f32(i32 55, float %7164, float %7164, float %7164, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7199 = call float @dx.op.dot3.f32(i32 55, float %7194, float %7195, float %7196, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7200 = select i1 %206, float %7198, float %7164
  %7201 = select i1 %206, float 1.000000e+00, float %7164
  %7202 = select i1 %206, float %7199, float %7194
  %7203 = select i1 %206, float 0.000000e+00, float %7195
  %7204 = select i1 %206, float 0.000000e+00, float %7196
  %7205 = fmul fast float %7200, %6838
  %7206 = fmul fast float %7200, %6839
  %7207 = fmul fast float %7201, %6840
  %7208 = fadd fast float %7205, %7202
  %7209 = fadd fast float %7206, %7203
  %7210 = fadd fast float %7204, %7207
  %7211 = fmul fast float %7200, %6841
  %7212 = fmul fast float %7200, %6842
  %7213 = fmul fast float %7201, %6843
  br label %7214

; <label>:7214                                    ; preds = %7190, %6847, %6816, %6048
  %7215 = phi float [ %6053, %6048 ], [ %6838, %6816 ], [ %7208, %7190 ], [ %6838, %6847 ]
  %7216 = phi float [ %6054, %6048 ], [ %6839, %6816 ], [ %7209, %7190 ], [ %6839, %6847 ]
  %7217 = phi float [ %6055, %6048 ], [ %6840, %6816 ], [ %7210, %7190 ], [ %6840, %6847 ]
  %7218 = phi float [ %6056, %6048 ], [ %6841, %6816 ], [ %7211, %7190 ], [ %6841, %6847 ]
  %7219 = phi float [ %6057, %6048 ], [ %6842, %6816 ], [ %7212, %7190 ], [ %6842, %6847 ]
  %7220 = phi float [ %6058, %6048 ], [ %6843, %6816 ], [ %7213, %7190 ], [ %6843, %6847 ]
  %7221 = phi float [ %6059, %6048 ], [ %6826, %6816 ], [ %7197, %7190 ], [ %6826, %6847 ]
  %7222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7223 = extractvalue %dx.types.CBufRet.f32 %7222, 2
  %7224 = extractvalue %dx.types.CBufRet.f32 %7222, 3
  %7225 = fmul fast float %7223, %82
  %7226 = fmul fast float %7224, %83
  %7227 = call float @dx.op.unary.f32(i32 7, float %7225)  ; Saturate(value)
  %7228 = call float @dx.op.unary.f32(i32 7, float %7226)  ; Saturate(value)
  %7229 = select i1 %5790, i32 2, i32 0
  %7230 = or i32 %7229, 1
  %7231 = uitofp i32 %7230 to float
  %7232 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7227, float %7228, float %7231, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7233 = extractvalue %dx.types.ResRet.f32 %7232, 0
  %7234 = extractvalue %dx.types.ResRet.f32 %7232, 1
  %7235 = extractvalue %dx.types.ResRet.f32 %7232, 2
  %7236 = extractvalue %dx.types.ResRet.f32 %7232, 3
  %7237 = add nuw nsw i32 %7229, 2
  %7238 = uitofp i32 %7237 to float
  %7239 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7227, float %7228, float %7238, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7240 = extractvalue %dx.types.ResRet.f32 %7239, 0
  %7241 = extractvalue %dx.types.ResRet.f32 %7239, 1
  %7242 = extractvalue %dx.types.ResRet.f32 %7239, 2
  %7243 = extractvalue %dx.types.ResRet.f32 %7239, 3
  %7244 = call float @dx.op.binary.f32(i32 35, float %7234, float %7235)  ; FMax(a,b)
  %7245 = call float @dx.op.binary.f32(i32 35, float %7233, float %7244)  ; FMax(a,b)
  %7246 = call float @dx.op.binary.f32(i32 35, float %7245, float %7236)  ; FMax(a,b)
  %7247 = call float @dx.op.binary.f32(i32 36, float %7241, float %7242)  ; FMin(a,b)
  %7248 = call float @dx.op.binary.f32(i32 36, float %7240, float %7247)  ; FMin(a,b)
  %7249 = call float @dx.op.binary.f32(i32 36, float %7248, float %7243)  ; FMin(a,b)
  %7250 = fmul fast float %7246, 2.550000e+02
  %7251 = fadd fast float %7250, 0x3F70101020000000
  %7252 = fptoui float %7251 to i32
  %7253 = fmul fast float %7249, 2.550000e+02
  %7254 = fadd fast float %7253, 0x3F70101020000000
  %7255 = fptoui float %7254 to i32
  %7256 = icmp ult i32 %7252, %7255
  br i1 %7256, label %7257, label %7426

; <label>:7257                                    ; preds = %7214
  %7258 = fcmp fast ogt float %72, 9.843750e-01
  %7259 = fadd fast float %6052, -4.000000e+00
  %7260 = select i1 %7258, float -4.000000e+00, float %7259
  %7261 = call float @dx.op.binary.f32(i32 35, float %7260, float 0.000000e+00)  ; FMax(a,b)
  %7262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7263 = extractvalue %dx.types.CBufRet.f32 %7262, 0
  %7264 = fadd fast float %7263, %7261
  %7265 = extractvalue %dx.types.CBufRet.f32 %7262, 2
  %7266 = fmul fast float %7264, %7265
  %7267 = call float @dx.op.unary.f32(i32 23, float %7266)  ; Log(value)
  %7268 = extractvalue %dx.types.CBufRet.f32 %7262, 3
  %7269 = fmul fast float %7268, %7267
  %7270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7271 = extractvalue %dx.types.CBufRet.f32 %7270, 2
  %7272 = fmul fast float %7269, %7271
  %7273 = call float @dx.op.unary.f32(i32 7, float %7272)  ; Saturate(value)
  %7274 = uitofp i32 %7252 to float
  %7275 = uitofp i32 %7255 to float
  %7276 = fadd fast float %7274, 5.000000e-01
  %7277 = fadd fast float %7275, 5.000000e-01
  %7278 = fmul fast float %7271, %7276
  %7279 = fmul fast float %7271, %7277
  %7280 = fadd fast float %7278, 0x3F0FFB4800000000
  %7281 = fadd fast float %7279, 0xBF0FFB4800000000
  %7282 = call float @dx.op.binary.f32(i32 35, float %7273, float %7280)  ; FMax(a,b)
  %7283 = call float @dx.op.binary.f32(i32 36, float %7282, float %7281)  ; FMin(a,b)
  %7284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7285 = extractvalue %dx.types.CBufRet.f32 %7284, 1
  %7286 = extractvalue %dx.types.CBufRet.f32 %7284, 2
  %7287 = extractvalue %dx.types.CBufRet.f32 %7284, 0
  %7288 = select i1 %5790, float %7287, float 0.000000e+00
  %7289 = fmul fast float %7285, %7283
  %7290 = fadd fast float %7288, %7289
  %7291 = fadd fast float %7288, %7286
  %7292 = fsub fast float %7285, %7286
  %7293 = fadd fast float %7292, %7288
  %7294 = call float @dx.op.binary.f32(i32 35, float %7290, float %7291)  ; FMax(a,b)
  %7295 = call float @dx.op.binary.f32(i32 36, float %7294, float %7293)  ; FMin(a,b)
  %7296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %7227, float %7228, float %7295, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7297 = extractvalue %dx.types.ResRet.f32 %7296, 0
  %7298 = extractvalue %dx.types.ResRet.f32 %7296, 1
  %7299 = extractvalue %dx.types.ResRet.f32 %7296, 2
  %7300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7301 = extractvalue %dx.types.CBufRet.i32 %7300, 0
  %7302 = extractvalue %dx.types.CBufRet.i32 %7300, 1
  %7303 = uitofp i32 %7301 to float
  %7304 = uitofp i32 %7302 to float
  %7305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7306 = extractvalue %dx.types.CBufRet.f32 %7305, 0
  %7307 = extractvalue %dx.types.CBufRet.f32 %7305, 1
  %7308 = fmul fast float %7303, %7227
  %7309 = fmul fast float %7304, %7228
  %7310 = fadd fast float %7308, -5.000000e-01
  %7311 = fadd fast float %7309, -5.000000e-01
  %7312 = call float @dx.op.unary.f32(i32 22, float %7310)  ; Frc(value)
  %7313 = call float @dx.op.unary.f32(i32 22, float %7311)  ; Frc(value)
  %7314 = fmul fast float %7312, %7312
  %7315 = fmul fast float %7314, %7312
  %7316 = fsub fast float 3.000000e+00, %7312
  %7317 = fmul fast float %7314, %7316
  %7318 = fmul fast float %7312, 3.000000e+00
  %7319 = fmul fast float %7315, 3.000000e+00
  %7320 = fmul fast float %7314, 6.000000e+00
  %7321 = fsub fast float %7319, %7320
  %7322 = fadd fast float %7321, 4.000000e+00
  %7323 = fmul fast float %7322, 0x3FC5555560000000
  %7324 = fmul fast float %7315, -3.000000e+00
  %7325 = fadd fast float %7314, %7312
  %7326 = fmul fast float %7325, 3.000000e+00
  %7327 = fadd fast float %7324, 1.000000e+00
  %7328 = fadd fast float %7327, %7326
  %7329 = fmul fast float %7315, 0x3FC5555560000000
  %7330 = fmul fast float %7313, %7313
  %7331 = fmul fast float %7330, %7313
  %7332 = fsub fast float 3.000000e+00, %7313
  %7333 = fmul fast float %7330, %7332
  %7334 = fmul fast float %7313, 3.000000e+00
  %7335 = fmul fast float %7331, 3.000000e+00
  %7336 = fmul fast float %7330, 6.000000e+00
  %7337 = fsub fast float %7335, %7336
  %7338 = fadd fast float %7337, 4.000000e+00
  %7339 = fmul fast float %7338, 0x3FC5555560000000
  %7340 = fmul fast float %7331, -3.000000e+00
  %7341 = fadd fast float %7330, %7313
  %7342 = fmul fast float %7341, 3.000000e+00
  %7343 = fadd fast float %7340, 1.000000e+00
  %7344 = fadd fast float %7343, %7342
  %7345 = fmul fast float %7331, 0x3FC5555560000000
  %7346 = fadd fast float %7312, 1.000000e+00
  %7347 = fsub fast float 1.000000e+00, %7318
  %7348 = fadd fast float %7347, %7317
  %7349 = fadd fast float %7348, %7322
  %7350 = fmul fast float %7349, 0x3FC5555560000000
  %7351 = fdiv fast float %7323, %7350
  %7352 = fsub fast float %7346, %7351
  %7353 = fsub fast float 1.000000e+00, %7312
  %7354 = fadd fast float %7328, %7315
  %7355 = fmul fast float %7354, 0x3FC5555560000000
  %7356 = fdiv fast float %7329, %7355
  %7357 = fadd fast float %7353, %7356
  %7358 = fadd fast float %7313, 1.000000e+00
  %7359 = fsub fast float 1.000000e+00, %7334
  %7360 = fadd fast float %7359, %7333
  %7361 = fadd fast float %7360, %7338
  %7362 = fmul fast float %7361, 0x3FC5555560000000
  %7363 = fdiv fast float %7339, %7362
  %7364 = fsub fast float %7358, %7363
  %7365 = fsub fast float 1.000000e+00, %7313
  %7366 = fadd fast float %7344, %7331
  %7367 = fmul fast float %7366, 0x3FC5555560000000
  %7368 = fdiv fast float %7345, %7367
  %7369 = fadd fast float %7368, %7365
  %7370 = fmul fast float %7352, %7306
  %7371 = fsub fast float %7227, %7370
  %7372 = fmul fast float %7357, %7306
  %7373 = fadd fast float %7372, %7227
  %7374 = fmul fast float %7369, %7307
  %7375 = fadd fast float %7374, %7228
  %7376 = fmul fast float %7364, %7307
  %7377 = fsub fast float %7228, %7376
  %7378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7371, float %7377, float %7295, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7379 = extractvalue %dx.types.ResRet.f32 %7378, 0
  %7380 = extractvalue %dx.types.ResRet.f32 %7378, 1
  %7381 = extractvalue %dx.types.ResRet.f32 %7378, 2
  %7382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7373, float %7377, float %7295, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7383 = extractvalue %dx.types.ResRet.f32 %7382, 0
  %7384 = extractvalue %dx.types.ResRet.f32 %7382, 1
  %7385 = extractvalue %dx.types.ResRet.f32 %7382, 2
  %7386 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7371, float %7375, float %7295, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7387 = extractvalue %dx.types.ResRet.f32 %7386, 0
  %7388 = extractvalue %dx.types.ResRet.f32 %7386, 1
  %7389 = extractvalue %dx.types.ResRet.f32 %7386, 2
  %7390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7373, float %7375, float %7295, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7391 = extractvalue %dx.types.ResRet.f32 %7390, 0
  %7392 = extractvalue %dx.types.ResRet.f32 %7390, 1
  %7393 = extractvalue %dx.types.ResRet.f32 %7390, 2
  %7394 = fsub fast float %7387, %7379
  %7395 = fsub fast float %7388, %7380
  %7396 = fsub fast float %7389, %7381
  %7397 = fmul fast float %7394, %7367
  %7398 = fmul fast float %7395, %7367
  %7399 = fmul fast float %7396, %7367
  %7400 = fadd fast float %7397, %7379
  %7401 = fadd fast float %7398, %7380
  %7402 = fadd fast float %7399, %7381
  %7403 = fsub fast float %7391, %7383
  %7404 = fsub fast float %7392, %7384
  %7405 = fsub fast float %7393, %7385
  %7406 = fmul fast float %7403, %7367
  %7407 = fmul fast float %7404, %7367
  %7408 = fmul fast float %7405, %7367
  %7409 = fsub fast float %7383, %7400
  %7410 = fadd fast float %7409, %7406
  %7411 = fsub fast float %7384, %7401
  %7412 = fadd fast float %7411, %7407
  %7413 = fsub fast float %7385, %7402
  %7414 = fadd fast float %7413, %7408
  %7415 = fmul fast float %7410, %7355
  %7416 = fmul fast float %7412, %7355
  %7417 = fmul fast float %7414, %7355
  %7418 = fadd fast float %7415, %7400
  %7419 = fadd fast float %7416, %7401
  %7420 = fadd fast float %7417, %7402
  %7421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7422 = extractvalue %dx.types.CBufRet.f32 %7421, 1
  %7423 = fmul fast float %7418, %7422
  %7424 = fmul fast float %7419, %7422
  %7425 = fmul fast float %7420, %7422
  br label %7426

; <label>:7426                                    ; preds = %7257, %7214
  %7427 = phi float [ %7297, %7257 ], [ 1.000000e+00, %7214 ]
  %7428 = phi float [ %7298, %7257 ], [ 1.000000e+00, %7214 ]
  %7429 = phi float [ %7299, %7257 ], [ 1.000000e+00, %7214 ]
  %7430 = phi float [ %7423, %7257 ], [ 0.000000e+00, %7214 ]
  %7431 = phi float [ %7424, %7257 ], [ 0.000000e+00, %7214 ]
  %7432 = phi float [ %7425, %7257 ], [ 0.000000e+00, %7214 ]
  %7433 = fmul fast float %7430, %5768
  %7434 = fmul fast float %7431, %5768
  %7435 = fmul fast float %7432, %5768
  %7436 = fmul fast float %7427, %7221
  %7437 = call float @dx.op.dot3.f32(i32 55, float %7427, float %7428, float %7429, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7438 = call float @dx.op.dot3.f32(i32 55, float %7433, float %7434, float %7435, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7439 = select i1 %206, float %7437, float %7427
  %7440 = select i1 %206, float %7437, float %7428
  %7441 = select i1 %206, float 1.000000e+00, float %7429
  %7442 = select i1 %206, float %7438, float %7433
  %7443 = select i1 %206, float 0.000000e+00, float %7434
  %7444 = select i1 %206, float 0.000000e+00, float %7435
  %7445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7446 = extractvalue %dx.types.CBufRet.i32 %7445, 3
  %7447 = and i32 %7446, 3
  %7448 = icmp ne i32 %7447, 0
  %7449 = and i32 %7446, 4
  %7450 = icmp ne i32 %7449, 0
  %7451 = and i1 %7448, %7450
  %7452 = and i1 %206, %7451
  br i1 %7452, label %7453, label %7459

; <label>:7453                                    ; preds = %7426
  %7454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7455 = extractvalue %dx.types.CBufRet.f32 %7454, 1
  %7456 = fadd fast float %7436, -1.000000e+00
  %7457 = fmul fast float %7455, %7456
  %7458 = fadd fast float %7457, 1.000000e+00
  br label %7459

; <label>:7459                                    ; preds = %7453, %7426
  %7460 = phi float [ %7458, %7453 ], [ %7436, %7426 ]
  %7461 = fadd fast float %7218, %7215
  %7462 = fmul fast float %7439, %7461
  %7463 = fadd fast float %7462, %7442
  %7464 = fadd fast float %7219, %7216
  %7465 = fmul fast float %7440, %7464
  %7466 = fadd fast float %7465, %7443
  %7467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7468 = extractvalue %dx.types.CBufRet.f32 %7467, 0
  br i1 %206, label %7469, label %7485

; <label>:7469                                    ; preds = %7459
  %7470 = fadd fast float %7463, %7466
  %7471 = fmul fast float %7468, %7470
  %7472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7473 = extractvalue %dx.types.CBufRet.f32 %7472, 3
  %7474 = extractvalue %dx.types.CBufRet.f32 %5772, 1
  %7475 = fsub fast float %5777, %5771
  %7476 = fadd fast float %7475, %5778
  %7477 = fsub fast float %7476, %7474
  %7478 = extractvalue %dx.types.CBufRet.f32 %5772, 2
  %7479 = fmul fast float %7477, %7478
  %7480 = call float @dx.op.unary.f32(i32 7, float %7479)  ; Saturate(value)
  %7481 = fsub fast float %7480, %7473
  %7482 = fmul fast float %7481, %7460
  %7483 = fadd fast float %7482, %7473
  %7484 = fmul fast float %7483, %4233
  br label %7511

; <label>:7485                                    ; preds = %7459
  %7486 = fadd fast float %7220, %7217
  %7487 = fmul fast float %7441, %7486
  %7488 = fadd fast float %7487, %7444
  %7489 = fmul fast float %7468, %7463
  %7490 = fmul fast float %7468, %7466
  %7491 = fmul fast float %7468, %7488
  %7492 = call float @dx.op.binary.f32(i32 35, float %7490, float %7491)  ; FMax(a,b)
  %7493 = call float @dx.op.binary.f32(i32 35, float %7489, float %7492)  ; FMax(a,b)
  %7494 = call float @dx.op.binary.f32(i32 35, float %5768, float %5768)  ; FMax(a,b)
  %7495 = call float @dx.op.binary.f32(i32 35, float %5768, float %7494)  ; FMax(a,b)
  %7496 = call float @dx.op.binary.f32(i32 35, float %7493, float %7495)  ; FMax(a,b)
  %7497 = fcmp fast ugt float %7496, 0x3F10000000000000
  br i1 %7497, label %7499, label %7498

; <label>:7498                                    ; preds = %7485
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7499

; <label>:7499                                    ; preds = %7498, %7485
  %7500 = add i32 %41, 356
  %7501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %7500, i32 undef)  ; BufferLoad(srv,index,wot)
  %7502 = extractvalue %dx.types.ResRet.i32 %7501, 0
  %7503 = and i32 %7502, 32
  %7504 = icmp eq i32 %7503, 0
  br i1 %7504, label %7511, label %7505

; <label>:7505                                    ; preds = %7499
  %7506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7507 = extractvalue %dx.types.CBufRet.f32 %7506, 0
  %7508 = fmul fast float %7507, 0x3FE99999A0000000
  %7509 = fadd fast float %7507, %7489
  %7510 = fadd fast float %7508, %7491
  br label %7511

; <label>:7511                                    ; preds = %7505, %7499, %7469
  %7512 = phi float [ %4233, %7469 ], [ %5768, %7505 ], [ %5768, %7499 ]
  %7513 = phi float [ %7471, %7469 ], [ %7509, %7505 ], [ %7489, %7499 ]
  %7514 = phi float [ %7484, %7469 ], [ %7490, %7505 ], [ %7490, %7499 ]
  %7515 = phi float [ %4233, %7469 ], [ %7510, %7505 ], [ %7491, %7499 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7516 = call float @dx.op.binary.f32(i32 36, float %7513, float 3.225500e+04)  ; FMin(a,b)
  %7517 = call float @dx.op.binary.f32(i32 36, float %7514, float 3.225500e+04)  ; FMin(a,b)
  %7518 = call float @dx.op.binary.f32(i32 36, float %7515, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7516)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7517)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7518)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7519 = call float @dx.op.binary.f32(i32 36, float %5768, float 3.225500e+04)  ; FMin(a,b)
  %7520 = call float @dx.op.binary.f32(i32 36, float %7512, float 3.225500e+04)  ; FMin(a,b)
  %7521 = call float @dx.op.binary.f32(i32 36, float %7512, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %7519)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %7520)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %7521)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!54 = !{[42 x i32] [i32 40, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 0, i32 119, i32 119]}
!55 = !{void ()* @ps_main, !"ps_main", !56, !4, !78}
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
!74 = !{!75, !76}
!75 = !{i32 0, !"SV_Target", i8 9, i8 16, !59, i8 0, i32 1, i8 4, i32 0, i8 0, !60}
!76 = !{i32 1, !"SV_Target", i8 9, i8 16, !77, i8 0, i32 1, i8 4, i32 1, i8 0, !60}
!77 = !{i32 1}
!78 = !{i32 0, i64 16}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = !{!85, !85, i64 0}
!85 = !{!"int", !86, i64 0}
!86 = !{!"omnipotent char", !87, i64 0}
!87 = !{!"Simple C/C++ TBAA"}
!88 = !{!89, !91, !93, !95}
!89 = distinct !{!89, !90, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!90 = distinct !{!90, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!91 = distinct !{!91, !92, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!92 = distinct !{!92, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!93 = distinct !{!93, !94, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!94 = distinct !{!94, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!95 = distinct !{!95, !96, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!96 = distinct !{!96, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = !{!106, !106, i64 0}
!106 = !{!"float", !86, i64 0}
!107 = !{!108, !110, !112, !113, !115, !116, !117, !119, !120, !121}
!108 = distinct !{!108, !109, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!109 = distinct !{!109, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!110 = distinct !{!110, !111, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!111 = distinct !{!111, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!112 = distinct !{!112, !111, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!113 = distinct !{!113, !114, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!114 = distinct !{!114, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!115 = distinct !{!115, !114, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!116 = distinct !{!116, !114, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!117 = distinct !{!117, !118, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!118 = distinct !{!118, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!119 = distinct !{!119, !118, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!120 = distinct !{!120, !118, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!121 = distinct !{!121, !122, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!122 = distinct !{!122, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"\01?sort@@YAXAIAM00@Z: %c"}
!125 = distinct !{!125, !"\01?sort@@YAXAIAM00@Z"}
!126 = !{!127, !128, !108, !110, !112, !113, !115, !116, !117, !119, !120, !121}
!127 = distinct !{!127, !125, !"\01?sort@@YAXAIAM00@Z: %a"}
!128 = distinct !{!128, !125, !"\01?sort@@YAXAIAM00@Z: %b"}
!129 = !{!128}
!130 = !{!127, !124, !108, !110, !112, !113, !115, !116, !117, !119, !120, !121}
!131 = !{!127}
!132 = !{!128, !124, !108, !110, !112, !113, !115, !116, !117, !119, !120, !121}
!133 = !{!134}
!134 = distinct !{!134, !135, !"\01?sort@@YAXAIAM00@Z: %c"}
!135 = distinct !{!135, !"\01?sort@@YAXAIAM00@Z"}
!136 = !{!137, !138, !108, !110, !112, !113, !115, !116, !117, !119, !120, !121}
!137 = distinct !{!137, !135, !"\01?sort@@YAXAIAM00@Z: %a"}
!138 = distinct !{!138, !135, !"\01?sort@@YAXAIAM00@Z: %b"}
!139 = !{!138}
!140 = !{!137, !134, !108, !110, !112, !113, !115, !116, !117, !119, !120, !121}
!141 = !{!137}
!142 = !{!138, !134, !108, !110, !112, !113, !115, !116, !117, !119, !120, !121}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 2}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 1}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}

