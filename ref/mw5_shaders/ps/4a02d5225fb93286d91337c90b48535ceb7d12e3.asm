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
; shader hash: 70c14c87ed547a61e0c95fa100ea1fe5
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
;   [144 x i8] (type annotation not present)
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %386 = add i32 %41, 504
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
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
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
  %662 = add i32 %41, 440
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
  %714 = add i32 %41, 424
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
  %738 = add i32 %41, 376
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
  %761 = add i32 %41, 456
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
  %959 = add i32 %41, 392
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
  %1043 = add i32 %41, 408
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
  %1101 = add i32 %41, 472
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
  %1142 = add i32 %41, 488
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
  %1206 = phi float [ 0.000000e+00, %428 ], [ %948, %1185 ]
  %1207 = phi float [ 0.000000e+00, %428 ], [ %949, %1185 ]
  %1208 = phi float [ 0.000000e+00, %428 ], [ %950, %1185 ]
  %1209 = phi float [ 0.000000e+00, %428 ], [ %1186, %1185 ]
  %1210 = phi float [ 0.000000e+00, %428 ], [ %1187, %1185 ]
  %1211 = phi float [ 0.000000e+00, %428 ], [ %1188, %1185 ]
  %1212 = phi float [ 0.000000e+00, %428 ], [ %1076, %1185 ]
  %1213 = phi float [ 0.000000e+00, %428 ], [ %1077, %1185 ]
  %1214 = phi float [ 0.000000e+00, %428 ], [ %1078, %1185 ]
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
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1453 = add i32 %41, 444
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
  %1505 = add i32 %41, 428
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
  %1531 = add i32 %41, 380
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
  %1554 = add i32 %41, 460
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
  %1752 = add i32 %41, 396
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
  %1836 = add i32 %41, 412
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
  %1894 = add i32 %41, 476
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
  %1935 = add i32 %41, 492
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
  %2025 = fmul fast float %2022, %1206
  %2026 = fmul fast float %2023, %1207
  %2027 = fmul fast float %2024, %1208
  %2028 = fmul fast float %2022, %1212
  %2029 = fmul fast float %2023, %1213
  %2030 = fmul fast float %2024, %1214
  br label %2031

; <label>:2031                                    ; preds = %1996, %1978
  %2032 = phi float [ %2025, %1996 ], [ %1206, %1978 ]
  %2033 = phi float [ %2026, %1996 ], [ %1207, %1978 ]
  %2034 = phi float [ %2027, %1996 ], [ %1208, %1978 ]
  %2035 = phi float [ %2028, %1996 ], [ %1212, %1978 ]
  %2036 = phi float [ %2029, %1996 ], [ %1213, %1978 ]
  %2037 = phi float [ %2030, %1996 ], [ %1214, %1978 ]
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
  %2051 = fsub fast float %1741, %2032
  %2052 = fsub fast float %1742, %2033
  %2053 = fsub fast float %1743, %2034
  %2054 = fmul fast float %2045, %2051
  %2055 = fmul fast float %2045, %2052
  %2056 = fmul fast float %2045, %2053
  %2057 = fadd fast float %2054, %2032
  %2058 = fadd fast float %2055, %2033
  %2059 = fadd fast float %2056, %2034
  %2060 = fsub fast float %1727, %1218
  %2061 = fmul fast float %2045, %2060
  %2062 = fadd fast float %2061, %1218
  %2063 = fsub fast float %1869, %2035
  %2064 = fsub fast float %1870, %2036
  %2065 = fsub fast float %1871, %2037
  %2066 = fmul fast float %2050, %2063
  %2067 = fmul fast float %2050, %2064
  %2068 = fmul fast float %2050, %2065
  %2069 = fadd fast float %2066, %2035
  %2070 = fadd fast float %2067, %2036
  %2071 = fadd fast float %2068, %2037
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
  %2087 = fmul fast float %2084, %2032
  %2088 = fmul fast float %2085, %2033
  %2089 = fmul fast float %2086, %2034
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
  %2107 = fmul fast float %2106, %2032
  %2108 = fadd fast float %2107, %2105
  %2109 = fmul fast float %2108, %2032
  %2110 = fmul fast float %2103, 2.000000e+00
  %2111 = fsub fast float 1.000000e+00, %2110
  %2112 = fmul fast float %2111, %2033
  %2113 = fadd fast float %2112, %2110
  %2114 = fmul fast float %2113, %2033
  %2115 = fmul fast float %2104, 2.000000e+00
  %2116 = fsub fast float 1.000000e+00, %2115
  %2117 = fmul fast float %2116, %2034
  %2118 = fadd fast float %2117, %2115
  %2119 = fmul fast float %2118, %2034
  br label %2120

; <label>:2120                                    ; preds = %2092, %2090, %2077, %2047, %2031
  %2121 = phi float [ %2032, %2031 ], [ %2109, %2092 ], [ %2032, %2090 ], [ %2087, %2077 ], [ %2057, %2047 ]
  %2122 = phi float [ %2033, %2031 ], [ %2114, %2092 ], [ %2033, %2090 ], [ %2088, %2077 ], [ %2058, %2047 ]
  %2123 = phi float [ %2034, %2031 ], [ %2119, %2092 ], [ %2034, %2090 ], [ %2089, %2077 ], [ %2059, %2047 ]
  %2124 = phi float [ %2035, %2031 ], [ %2035, %2092 ], [ %2035, %2090 ], [ %2035, %2077 ], [ %2069, %2047 ]
  %2125 = phi float [ %2036, %2031 ], [ %2036, %2092 ], [ %2036, %2090 ], [ %2036, %2077 ], [ %2070, %2047 ]
  %2126 = phi float [ %2037, %2031 ], [ %2037, %2092 ], [ %2037, %2090 ], [ %2037, %2077 ], [ %2071, %2047 ]
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
  %2176 = fsub fast float %1979, %1209
  %2177 = fsub fast float %1980, %1210
  %2178 = fsub fast float %1981, %1211
  %2179 = fmul fast float %2149, %2176
  %2180 = fmul fast float %2149, %2177
  %2181 = fmul fast float %2149, %2178
  %2182 = fadd fast float %2179, %1209
  %2183 = fadd fast float %2180, %1210
  %2184 = fadd fast float %2181, %1211
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
  %2230 = fadd fast float %2227, %1209
  %2231 = fadd fast float %2228, %1210
  %2232 = fadd fast float %2229, %1211
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
  %2258 = fadd fast float %2255, %1209
  %2259 = fadd fast float %2256, %1210
  %2260 = fadd fast float %2257, %1211
  br label %2261

; <label>:2261                                    ; preds = %2235, %2233, %2187, %2151, %2120, %1520, %1224, %1203
  %2262 = phi float [ %1204, %2120 ], [ %1204, %1520 ], [ %1204, %1203 ], [ %2238, %2235 ], [ %1204, %2233 ], [ %2190, %2187 ], [ %2156, %2151 ], [ %1204, %1224 ]
  %2263 = phi float [ %1205, %2120 ], [ %1205, %1520 ], [ %1205, %1203 ], [ %2239, %2235 ], [ %1205, %2233 ], [ %2191, %2187 ], [ %2157, %2151 ], [ %1205, %1224 ]
  %2264 = phi float [ %2121, %2120 ], [ %1206, %1520 ], [ %1206, %1203 ], [ %2121, %2235 ], [ %2121, %2233 ], [ %2121, %2187 ], [ %2121, %2151 ], [ %1206, %1224 ]
  %2265 = phi float [ %2122, %2120 ], [ %1207, %1520 ], [ %1207, %1203 ], [ %2122, %2235 ], [ %2122, %2233 ], [ %2122, %2187 ], [ %2122, %2151 ], [ %1207, %1224 ]
  %2266 = phi float [ %2123, %2120 ], [ %1208, %1520 ], [ %1208, %1203 ], [ %2123, %2235 ], [ %2123, %2233 ], [ %2123, %2187 ], [ %2123, %2151 ], [ %1208, %1224 ]
  %2267 = phi float [ %1209, %2120 ], [ %1209, %1520 ], [ %1209, %1203 ], [ %2258, %2235 ], [ %1209, %2233 ], [ %2230, %2187 ], [ %2182, %2151 ], [ %1209, %1224 ]
  %2268 = phi float [ %1210, %2120 ], [ %1210, %1520 ], [ %1210, %1203 ], [ %2259, %2235 ], [ %1210, %2233 ], [ %2231, %2187 ], [ %2183, %2151 ], [ %1210, %1224 ]
  %2269 = phi float [ %1211, %2120 ], [ %1211, %1520 ], [ %1211, %1203 ], [ %2260, %2235 ], [ %1211, %2233 ], [ %2232, %2187 ], [ %2184, %2151 ], [ %1211, %1224 ]
  %2270 = phi float [ %2124, %2120 ], [ %1212, %1520 ], [ %1212, %1203 ], [ %2124, %2235 ], [ %2124, %2233 ], [ %2124, %2187 ], [ %2124, %2151 ], [ %1212, %1224 ]
  %2271 = phi float [ %2125, %2120 ], [ %1213, %1520 ], [ %1213, %1203 ], [ %2125, %2235 ], [ %2125, %2233 ], [ %2125, %2187 ], [ %2125, %2151 ], [ %1213, %1224 ]
  %2272 = phi float [ %2126, %2120 ], [ %1214, %1520 ], [ %1214, %1203 ], [ %2126, %2235 ], [ %2126, %2233 ], [ %2126, %2187 ], [ %2126, %2151 ], [ %1214, %1224 ]
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
  %2395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2510 = add i32 %41, 448
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
  %2562 = add i32 %41, 432
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
  %2588 = add i32 %41, 384
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
  %2611 = add i32 %41, 464
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
  %2809 = add i32 %41, 400
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
  %2893 = add i32 %41, 416
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
  %2951 = add i32 %41, 480
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
  %2992 = add i32 %41, 496
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
  %3082 = fmul fast float %3079, %2264
  %3083 = fmul fast float %3080, %2265
  %3084 = fmul fast float %3081, %2266
  %3085 = fmul fast float %3079, %2270
  %3086 = fmul fast float %3080, %2271
  %3087 = fmul fast float %3081, %2272
  br label %3088

; <label>:3088                                    ; preds = %3053, %3035
  %3089 = phi float [ %3082, %3053 ], [ %2264, %3035 ]
  %3090 = phi float [ %3083, %3053 ], [ %2265, %3035 ]
  %3091 = phi float [ %3084, %3053 ], [ %2266, %3035 ]
  %3092 = phi float [ %3085, %3053 ], [ %2270, %3035 ]
  %3093 = phi float [ %3086, %3053 ], [ %2271, %3035 ]
  %3094 = phi float [ %3087, %3053 ], [ %2272, %3035 ]
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
  %3108 = fsub fast float %2798, %3089
  %3109 = fsub fast float %2799, %3090
  %3110 = fsub fast float %2800, %3091
  %3111 = fmul fast float %3102, %3108
  %3112 = fmul fast float %3102, %3109
  %3113 = fmul fast float %3102, %3110
  %3114 = fadd fast float %3111, %3089
  %3115 = fadd fast float %3112, %3090
  %3116 = fadd fast float %3113, %3091
  %3117 = fsub fast float %2784, %2276
  %3118 = fmul fast float %3102, %3117
  %3119 = fadd fast float %3118, %2276
  %3120 = fsub fast float %2926, %3092
  %3121 = fsub fast float %2927, %3093
  %3122 = fsub fast float %2928, %3094
  %3123 = fmul fast float %3107, %3120
  %3124 = fmul fast float %3107, %3121
  %3125 = fmul fast float %3107, %3122
  %3126 = fadd fast float %3123, %3092
  %3127 = fadd fast float %3124, %3093
  %3128 = fadd fast float %3125, %3094
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
  %3144 = fmul fast float %3141, %3089
  %3145 = fmul fast float %3142, %3090
  %3146 = fmul fast float %3143, %3091
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
  %3164 = fmul fast float %3163, %3089
  %3165 = fadd fast float %3164, %3162
  %3166 = fmul fast float %3165, %3089
  %3167 = fmul fast float %3160, 2.000000e+00
  %3168 = fsub fast float 1.000000e+00, %3167
  %3169 = fmul fast float %3168, %3090
  %3170 = fadd fast float %3169, %3167
  %3171 = fmul fast float %3170, %3090
  %3172 = fmul fast float %3161, 2.000000e+00
  %3173 = fsub fast float 1.000000e+00, %3172
  %3174 = fmul fast float %3173, %3091
  %3175 = fadd fast float %3174, %3172
  %3176 = fmul fast float %3175, %3091
  br label %3177

; <label>:3177                                    ; preds = %3149, %3147, %3134, %3104, %3088
  %3178 = phi float [ %3089, %3088 ], [ %3166, %3149 ], [ %3089, %3147 ], [ %3144, %3134 ], [ %3114, %3104 ]
  %3179 = phi float [ %3090, %3088 ], [ %3171, %3149 ], [ %3090, %3147 ], [ %3145, %3134 ], [ %3115, %3104 ]
  %3180 = phi float [ %3091, %3088 ], [ %3176, %3149 ], [ %3091, %3147 ], [ %3146, %3134 ], [ %3116, %3104 ]
  %3181 = phi float [ %3092, %3088 ], [ %3092, %3149 ], [ %3092, %3147 ], [ %3092, %3134 ], [ %3126, %3104 ]
  %3182 = phi float [ %3093, %3088 ], [ %3093, %3149 ], [ %3093, %3147 ], [ %3093, %3134 ], [ %3127, %3104 ]
  %3183 = phi float [ %3094, %3088 ], [ %3094, %3149 ], [ %3094, %3147 ], [ %3094, %3134 ], [ %3128, %3104 ]
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
  %3233 = fsub fast float %3036, %2267
  %3234 = fsub fast float %3037, %2268
  %3235 = fsub fast float %3038, %2269
  %3236 = fmul fast float %3206, %3233
  %3237 = fmul fast float %3206, %3234
  %3238 = fmul fast float %3206, %3235
  %3239 = fadd fast float %3236, %2267
  %3240 = fadd fast float %3237, %2268
  %3241 = fadd fast float %3238, %2269
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
  %3287 = fadd fast float %3284, %2267
  %3288 = fadd fast float %3285, %2268
  %3289 = fadd fast float %3286, %2269
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
  %3315 = fadd fast float %3312, %2267
  %3316 = fadd fast float %3313, %2268
  %3317 = fadd fast float %3314, %2269
  br label %3318

; <label>:3318                                    ; preds = %3292, %3290, %3244, %3208, %3177, %2577, %2281, %2261
  %3319 = phi float [ %2262, %3177 ], [ %2262, %2577 ], [ %2262, %2261 ], [ %3295, %3292 ], [ %2262, %3290 ], [ %3247, %3244 ], [ %3213, %3208 ], [ %2262, %2281 ]
  %3320 = phi float [ %2263, %3177 ], [ %2263, %2577 ], [ %2263, %2261 ], [ %3296, %3292 ], [ %2263, %3290 ], [ %3248, %3244 ], [ %3214, %3208 ], [ %2263, %2281 ]
  %3321 = phi float [ %3178, %3177 ], [ %2264, %2577 ], [ %2264, %2261 ], [ %3178, %3292 ], [ %3178, %3290 ], [ %3178, %3244 ], [ %3178, %3208 ], [ %2264, %2281 ]
  %3322 = phi float [ %3179, %3177 ], [ %2265, %2577 ], [ %2265, %2261 ], [ %3179, %3292 ], [ %3179, %3290 ], [ %3179, %3244 ], [ %3179, %3208 ], [ %2265, %2281 ]
  %3323 = phi float [ %3180, %3177 ], [ %2266, %2577 ], [ %2266, %2261 ], [ %3180, %3292 ], [ %3180, %3290 ], [ %3180, %3244 ], [ %3180, %3208 ], [ %2266, %2281 ]
  %3324 = phi float [ %2267, %3177 ], [ %2267, %2577 ], [ %2267, %2261 ], [ %3315, %3292 ], [ %2267, %3290 ], [ %3287, %3244 ], [ %3239, %3208 ], [ %2267, %2281 ]
  %3325 = phi float [ %2268, %3177 ], [ %2268, %2577 ], [ %2268, %2261 ], [ %3316, %3292 ], [ %2268, %3290 ], [ %3288, %3244 ], [ %3240, %3208 ], [ %2268, %2281 ]
  %3326 = phi float [ %2269, %3177 ], [ %2269, %2577 ], [ %2269, %2261 ], [ %3317, %3292 ], [ %2269, %3290 ], [ %3289, %3244 ], [ %3241, %3208 ], [ %2269, %2281 ]
  %3327 = phi float [ %3181, %3177 ], [ %2270, %2577 ], [ %2270, %2261 ], [ %3181, %3292 ], [ %3181, %3290 ], [ %3181, %3244 ], [ %3181, %3208 ], [ %2270, %2281 ]
  %3328 = phi float [ %3182, %3177 ], [ %2271, %2577 ], [ %2271, %2261 ], [ %3182, %3292 ], [ %3182, %3290 ], [ %3182, %3244 ], [ %3182, %3208 ], [ %2271, %2281 ]
  %3329 = phi float [ %3183, %3177 ], [ %2272, %2577 ], [ %2272, %2261 ], [ %3183, %3292 ], [ %3183, %3290 ], [ %3183, %3244 ], [ %3183, %3208 ], [ %2272, %2281 ]
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
  %3452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
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
  %3567 = add i32 %41, 452
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
  %3619 = add i32 %41, 436
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
  %3645 = add i32 %41, 388
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
  %3668 = add i32 %41, 468
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
  %3866 = add i32 %41, 404
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
  %3950 = add i32 %41, 420
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
  %4008 = add i32 %41, 484
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
  %4049 = add i32 %41, 500
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
  %4139 = fmul fast float %4136, %3321
  %4140 = fmul fast float %4137, %3322
  %4141 = fmul fast float %4138, %3323
  %4142 = fmul fast float %4136, %3327
  %4143 = fmul fast float %4137, %3328
  %4144 = fmul fast float %4138, %3329
  br label %4145

; <label>:4145                                    ; preds = %4110, %4092
  %4146 = phi float [ %4139, %4110 ], [ %3321, %4092 ]
  %4147 = phi float [ %4140, %4110 ], [ %3322, %4092 ]
  %4148 = phi float [ %4141, %4110 ], [ %3323, %4092 ]
  %4149 = phi float [ %4142, %4110 ], [ %3327, %4092 ]
  %4150 = phi float [ %4143, %4110 ], [ %3328, %4092 ]
  %4151 = phi float [ %4144, %4110 ], [ %3329, %4092 ]
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
  %4165 = fsub fast float %3855, %4146
  %4166 = fsub fast float %3856, %4147
  %4167 = fsub fast float %3857, %4148
  %4168 = fmul fast float %4159, %4165
  %4169 = fmul fast float %4159, %4166
  %4170 = fmul fast float %4159, %4167
  %4171 = fadd fast float %4168, %4146
  %4172 = fadd fast float %4169, %4147
  %4173 = fadd fast float %4170, %4148
  %4174 = fsub fast float %3841, %3333
  %4175 = fmul fast float %4159, %4174
  %4176 = fadd fast float %4175, %3333
  %4177 = fsub fast float %3983, %4149
  %4178 = fsub fast float %3984, %4150
  %4179 = fsub fast float %3985, %4151
  %4180 = fmul fast float %4164, %4177
  %4181 = fmul fast float %4164, %4178
  %4182 = fmul fast float %4164, %4179
  %4183 = fadd fast float %4180, %4149
  %4184 = fadd fast float %4181, %4150
  %4185 = fadd fast float %4182, %4151
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
  %4201 = fmul fast float %4198, %4146
  %4202 = fmul fast float %4199, %4147
  %4203 = fmul fast float %4200, %4148
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
  %4221 = fmul fast float %4220, %4146
  %4222 = fadd fast float %4221, %4219
  %4223 = fmul fast float %4222, %4146
  %4224 = fmul fast float %4217, 2.000000e+00
  %4225 = fsub fast float 1.000000e+00, %4224
  %4226 = fmul fast float %4225, %4147
  %4227 = fadd fast float %4226, %4224
  %4228 = fmul fast float %4227, %4147
  %4229 = fmul fast float %4218, 2.000000e+00
  %4230 = fsub fast float 1.000000e+00, %4229
  %4231 = fmul fast float %4230, %4148
  %4232 = fadd fast float %4231, %4229
  %4233 = fmul fast float %4232, %4148
  br label %4234

; <label>:4234                                    ; preds = %4206, %4204, %4191, %4161, %4145
  %4235 = phi float [ %4146, %4145 ], [ %4223, %4206 ], [ %4146, %4204 ], [ %4201, %4191 ], [ %4171, %4161 ]
  %4236 = phi float [ %4147, %4145 ], [ %4228, %4206 ], [ %4147, %4204 ], [ %4202, %4191 ], [ %4172, %4161 ]
  %4237 = phi float [ %4148, %4145 ], [ %4233, %4206 ], [ %4148, %4204 ], [ %4203, %4191 ], [ %4173, %4161 ]
  %4238 = phi float [ %4149, %4145 ], [ %4149, %4206 ], [ %4149, %4204 ], [ %4149, %4191 ], [ %4183, %4161 ]
  %4239 = phi float [ %4150, %4145 ], [ %4150, %4206 ], [ %4150, %4204 ], [ %4150, %4191 ], [ %4184, %4161 ]
  %4240 = phi float [ %4151, %4145 ], [ %4151, %4206 ], [ %4151, %4204 ], [ %4151, %4191 ], [ %4185, %4161 ]
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
  %4290 = fsub fast float %4093, %3324
  %4291 = fsub fast float %4094, %3325
  %4292 = fsub fast float %4095, %3326
  %4293 = fmul fast float %4263, %4290
  %4294 = fmul fast float %4263, %4291
  %4295 = fmul fast float %4263, %4292
  %4296 = fadd fast float %4293, %3324
  %4297 = fadd fast float %4294, %3325
  %4298 = fadd fast float %4295, %3326
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
  %4344 = fadd fast float %4341, %3324
  %4345 = fadd fast float %4342, %3325
  %4346 = fadd fast float %4343, %3326
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
  %4372 = fadd fast float %4369, %3324
  %4373 = fadd fast float %4370, %3325
  %4374 = fadd fast float %4371, %3326
  br label %4375

; <label>:4375                                    ; preds = %4349, %4347, %4301, %4265, %4234, %3634, %3338, %3318
  %4376 = phi float [ %3319, %4234 ], [ %3319, %3634 ], [ %3319, %3318 ], [ %3319, %3338 ], [ %4270, %4265 ], [ %4304, %4301 ], [ %3319, %4347 ], [ %4352, %4349 ]
  %4377 = phi float [ %3320, %4234 ], [ %3320, %3634 ], [ %3320, %3318 ], [ %3320, %3338 ], [ %4271, %4265 ], [ %4305, %4301 ], [ %3320, %4347 ], [ %4353, %4349 ]
  %4378 = phi float [ %4235, %4234 ], [ %3321, %3634 ], [ %3321, %3318 ], [ %3321, %3338 ], [ %4235, %4265 ], [ %4235, %4301 ], [ %4235, %4347 ], [ %4235, %4349 ]
  %4379 = phi float [ %4236, %4234 ], [ %3322, %3634 ], [ %3322, %3318 ], [ %3322, %3338 ], [ %4236, %4265 ], [ %4236, %4301 ], [ %4236, %4347 ], [ %4236, %4349 ]
  %4380 = phi float [ %4237, %4234 ], [ %3323, %3634 ], [ %3323, %3318 ], [ %3323, %3338 ], [ %4237, %4265 ], [ %4237, %4301 ], [ %4237, %4347 ], [ %4237, %4349 ]
  %4381 = phi float [ %3324, %4234 ], [ %3324, %3634 ], [ %3324, %3318 ], [ %3324, %3338 ], [ %4296, %4265 ], [ %4344, %4301 ], [ %3324, %4347 ], [ %4372, %4349 ]
  %4382 = phi float [ %3325, %4234 ], [ %3325, %3634 ], [ %3325, %3318 ], [ %3325, %3338 ], [ %4297, %4265 ], [ %4345, %4301 ], [ %3325, %4347 ], [ %4373, %4349 ]
  %4383 = phi float [ %3326, %4234 ], [ %3326, %3634 ], [ %3326, %3318 ], [ %3326, %3338 ], [ %4298, %4265 ], [ %4346, %4301 ], [ %3326, %4347 ], [ %4374, %4349 ]
  %4384 = phi float [ %4238, %4234 ], [ %3327, %3634 ], [ %3327, %3318 ], [ %3327, %3338 ], [ %4238, %4265 ], [ %4238, %4301 ], [ %4238, %4347 ], [ %4238, %4349 ]
  %4385 = phi float [ %4239, %4234 ], [ %3328, %3634 ], [ %3328, %3318 ], [ %3328, %3338 ], [ %4239, %4265 ], [ %4239, %4301 ], [ %4239, %4347 ], [ %4239, %4349 ]
  %4386 = phi float [ %4240, %4234 ], [ %3329, %3634 ], [ %3329, %3318 ], [ %3329, %3338 ], [ %4240, %4265 ], [ %4240, %4301 ], [ %4240, %4347 ], [ %4240, %4349 ]
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
  %4414 = fmul fast float %4403, %106
  %4415 = fmul fast float %4403, %107
  %4416 = fmul fast float %4403, %108
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
  %4444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4491 = phi float [ %4622, %4613 ], [ %4381, %4479 ]
  %4492 = phi float [ %4623, %4613 ], [ %4382, %4479 ]
  %4493 = phi float [ %4624, %4613 ], [ %4383, %4479 ]
  %4494 = phi float [ %4625, %4613 ], [ %4384, %4479 ]
  %4495 = phi float [ %4626, %4613 ], [ %4385, %4479 ]
  %4496 = phi float [ %4627, %4613 ], [ %4386, %4479 ]
  %4497 = phi float [ %4628, %4613 ], [ %4422, %4479 ]
  %4498 = phi float [ %4629, %4613 ], [ %4423, %4479 ]
  %4499 = phi float [ %4630, %4613 ], [ %4424, %4479 ]
  %4500 = phi float [ %4631, %4613 ], [ %4392, %4479 ]
  %4501 = phi float [ %4632, %4613 ], [ %4391, %4479 ]
  %4502 = phi float [ %4633, %4613 ], [ 0.000000e+00, %4479 ]
  %4503 = phi float [ %4634, %4613 ], [ %4390, %4479 ]
  %4504 = phi float [ %4635, %4613 ], [ %4378, %4479 ]
  %4505 = phi float [ %4636, %4613 ], [ %4379, %4479 ]
  %4506 = phi float [ %4637, %4613 ], [ %4380, %4479 ]
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
  %4991 = phi float [ %4381, %4427 ], [ %4622, %4981 ]
  %4992 = phi float [ %4382, %4427 ], [ %4623, %4981 ]
  %4993 = phi float [ %4383, %4427 ], [ %4624, %4981 ]
  %4994 = phi float [ %4384, %4427 ], [ %4625, %4981 ]
  %4995 = phi float [ %4385, %4427 ], [ %4626, %4981 ]
  %4996 = phi float [ %4386, %4427 ], [ %4627, %4981 ]
  %4997 = phi float [ %4422, %4427 ], [ %4628, %4981 ]
  %4998 = phi float [ %4423, %4427 ], [ %4629, %4981 ]
  %4999 = phi float [ %4424, %4427 ], [ %4630, %4981 ]
  %5000 = phi float [ %4392, %4427 ], [ %4631, %4981 ]
  %5001 = phi float [ %4391, %4427 ], [ %4632, %4981 ]
  %5002 = phi float [ 0.000000e+00, %4427 ], [ %4633, %4981 ]
  %5003 = phi float [ %4390, %4427 ], [ %4634, %4981 ]
  %5004 = phi float [ %4378, %4427 ], [ %4635, %4981 ]
  %5005 = phi float [ %4379, %4427 ], [ %4636, %4981 ]
  %5006 = phi float [ %4380, %4427 ], [ %4637, %4981 ]
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
  %5023 = phi float [ %5004, %4982 ], [ %4378, %4375 ]
  %5024 = phi float [ %5005, %4982 ], [ %4379, %4375 ]
  %5025 = phi float [ %5006, %4982 ], [ %4380, %4375 ]
  %5026 = phi float [ %4991, %4982 ], [ %4381, %4375 ]
  %5027 = phi float [ %4992, %4982 ], [ %4382, %4375 ]
  %5028 = phi float [ %4993, %4982 ], [ %4383, %4375 ]
  %5029 = phi float [ %4994, %4982 ], [ %4384, %4375 ]
  %5030 = phi float [ %4995, %4982 ], [ %4385, %4375 ]
  %5031 = phi float [ %4996, %4982 ], [ %4386, %4375 ]
  %5032 = phi float [ %4986, %4982 ], [ %4387, %4375 ]
  %5033 = phi float [ %4987, %4982 ], [ %4388, %4375 ]
  %5034 = phi float [ %4988, %4982 ], [ %4389, %4375 ]
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
  %5050 = fmul fast float %5049, %5023
  %5051 = fmul fast float %5049, %5024
  %5052 = fmul fast float %5049, %5025
  %5053 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5054 = call float @dx.op.unary.f32(i32 7, float %5051)  ; Saturate(value)
  %5055 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5056 = fmul fast float %5046, %5023
  %5057 = fmul fast float %5046, %5024
  %5058 = fmul fast float %5046, %5025
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
  %5088 = call float @dx.op.binary.f32(i32 36, float %5032, float 1.270000e+02)  ; FMin(a,b)
  %5089 = call float @dx.op.binary.f32(i32 36, float %5033, float 1.270000e+02)  ; FMin(a,b)
  %5090 = call float @dx.op.binary.f32(i32 36, float %5034, float 1.270000e+02)  ; FMin(a,b)
  %5091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5092 = extractvalue %dx.types.CBufRet.i32 %5091, 3
  %5093 = and i32 %5092, 8
  %5094 = icmp ne i32 %5093, 0
  %5095 = call float @dx.op.binary.f32(i32 35, float %5053, float %5023)  ; FMax(a,b)
  %5096 = call float @dx.op.binary.f32(i32 35, float %5054, float %5023)  ; FMax(a,b)
  %5097 = call float @dx.op.binary.f32(i32 35, float %5055, float %5023)  ; FMax(a,b)
  %5098 = call float @dx.op.dot3.f32(i32 55, float %5053, float %5054, float %5055, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5099 = select i1 %203, float %5023, float %5053
  %5100 = select i1 %203, float %5098, float %5054
  %5101 = select i1 %203, float 1.000000e+00, float %5055
  %5102 = select i1 %5094, float %5095, float %5099
  %5103 = select i1 %5094, float %5096, float %5100
  %5104 = select i1 %5094, float %5097, float %5101
  %5105 = call float @dx.op.dot3.f32(i32 55, float %5085, float %5086, float %5087, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = select i1 %203, float %5105, float %5085
  %5107 = select i1 %203, float %5105, float %5086
  %5108 = select i1 %203, float %5105, float %5087
  %5109 = add i32 %41, 508
  %5110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5109, i32 undef)  ; BufferLoad(srv,index,wot)
  %5111 = extractvalue %dx.types.ResRet.i32 %5110, 0
  %5112 = add i32 %5111, 0
  %5113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %5112, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5114 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5113, %dx.types.Handle %84, float %69, float %70, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5115 = extractvalue %dx.types.ResRet.f32 %5114, 0
  %5116 = extractvalue %dx.types.ResRet.f32 %5114, 1
  %5117 = extractvalue %dx.types.ResRet.f32 %5114, 2
  %5118 = extractvalue %dx.types.ResRet.f32 %5114, 3
  %5119 = fmul fast float %5115, 2.000000e+00
  %5120 = fadd fast float %5119, -1.000000e+00
  %5121 = fmul fast float %5116, 2.000000e+00
  %5122 = fadd fast float %5121, -1.000000e+00
  %5123 = fmul fast float %5120, %62
  %5124 = fmul fast float %5120, %63
  %5125 = fmul fast float %5120, %64
  %5126 = fmul fast float %5122, %106
  %5127 = fmul fast float %5122, %107
  %5128 = fmul fast float %5122, %108
  %5129 = fadd fast float %5123, %5126
  %5130 = fadd fast float %5124, %5127
  %5131 = fadd fast float %5125, %5128
  %5132 = call float @dx.op.dot3.f32(i32 55, float %5129, float %5130, float %5131, float %5129, float %5130, float %5131)  ; Dot3(ax,ay,az,bx,by,bz)
  %5133 = call float @dx.op.unary.f32(i32 25, float %5132)  ; Rsqrt(value)
  %5134 = fmul fast float %5129, %5133
  %5135 = fmul fast float %5130, %5133
  %5136 = fmul fast float %5131, %5133
  %5137 = add i32 %41, 360
  %5138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5137, i32 undef)  ; BufferLoad(srv,index,wot)
  %5139 = extractvalue %dx.types.ResRet.i32 %5138, 0
  %5140 = bitcast i32 %5139 to float
  %5141 = fmul fast float %5140, %5117
  %5142 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  %5143 = extractvalue %dx.types.ResRet.i32 %5138, 1
  %5144 = bitcast i32 %5143 to float
  %5145 = fmul fast float %5144, %5118
  %5146 = fmul fast float %5145, %5020
  %5147 = fmul fast float %5145, %5021
  %5148 = fmul fast float %5145, %5022
  %5149 = fadd fast float %5146, %5134
  %5150 = fadd fast float %5147, %5135
  %5151 = fadd fast float %5148, %5136
  %5152 = call float @dx.op.dot3.f32(i32 55, float %5149, float %5150, float %5151, float %5149, float %5150, float %5151)  ; Dot3(ax,ay,az,bx,by,bz)
  %5153 = call float @dx.op.unary.f32(i32 25, float %5152)  ; Rsqrt(value)
  %5154 = fmul fast float %5149, %5153
  %5155 = fmul fast float %5150, %5153
  %5156 = fmul fast float %5151, %5153
  %5157 = and i32 %179, 3
  %5158 = select i1 %173, i32 %5157, i32 0
  %5159 = icmp eq i32 %5158, 1
  br i1 %5159, label %5160, label %5236

; <label>:5160                                    ; preds = %5084
  %5161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.f32 %5161, 0
  %5163 = extractvalue %dx.types.CBufRet.f32 %5161, 1
  %5164 = fadd fast float %5162, %142
  %5165 = fadd fast float %5163, %143
  %5166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5167 = extractvalue %dx.types.CBufRet.f32 %5166, 0
  %5168 = extractvalue %dx.types.CBufRet.f32 %5166, 1
  %5169 = fsub fast float %5164, %5167
  %5170 = fsub fast float %5165, %5168
  %5171 = fmul fast float %5169, %5169
  %5172 = fmul fast float %5170, %5170
  %5173 = fadd fast float %5171, %5172
  %5174 = call float @dx.op.unary.f32(i32 24, float %5173)  ; Sqrt(value)
  %5175 = extractvalue %dx.types.CBufRet.f32 %5166, 2
  %5176 = fcmp fast olt float %5174, %5175
  br i1 %5176, label %5177, label %5230

; <label>:5177                                    ; preds = %5160
  %5178 = extractvalue %dx.types.CBufRet.f32 %5161, 2
  %5179 = fadd fast float %5178, %144
  %5180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5181 = extractvalue %dx.types.CBufRet.f32 %5180, 0
  %5182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5183 = extractvalue %dx.types.CBufRet.f32 %5182, 0
  %5184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5185 = extractvalue %dx.types.CBufRet.f32 %5184, 0
  %5186 = extractvalue %dx.types.CBufRet.f32 %5180, 1
  %5187 = extractvalue %dx.types.CBufRet.f32 %5182, 1
  %5188 = extractvalue %dx.types.CBufRet.f32 %5184, 1
  %5189 = extractvalue %dx.types.CBufRet.f32 %5180, 3
  %5190 = extractvalue %dx.types.CBufRet.f32 %5182, 3
  %5191 = extractvalue %dx.types.CBufRet.f32 %5184, 3
  %5192 = fadd fast float %5189, %5164
  %5193 = fadd fast float %5190, %5165
  %5194 = fadd fast float %5179, %5191
  %5195 = fmul fast float %5192, %5181
  %5196 = call float @dx.op.tertiary.f32(i32 46, float %5193, float %5183, float %5195)  ; FMad(a,b,c)
  %5197 = call float @dx.op.tertiary.f32(i32 46, float %5194, float %5185, float %5196)  ; FMad(a,b,c)
  %5198 = fmul fast float %5192, %5186
  %5199 = call float @dx.op.tertiary.f32(i32 46, float %5193, float %5187, float %5198)  ; FMad(a,b,c)
  %5200 = call float @dx.op.tertiary.f32(i32 46, float %5194, float %5188, float %5199)  ; FMad(a,b,c)
  %5201 = fsub fast float %5197, %5189
  %5202 = fsub fast float %5200, %5190
  %5203 = fsub fast float %5201, %5167
  %5204 = fadd fast float %5203, %5175
  %5205 = fsub fast float %5202, %5168
  %5206 = fadd fast float %5205, %5175
  %5207 = extractvalue %dx.types.CBufRet.f32 %5166, 3
  %5208 = fmul fast float %5204, %5207
  %5209 = fmul fast float %5206, %5207
  %5210 = call float @dx.op.unary.f32(i32 7, float %5208)  ; Saturate(value)
  %5211 = call float @dx.op.unary.f32(i32 7, float %5209)  ; Saturate(value)
  %5212 = fsub fast float 1.000000e+00, %5210
  %5213 = fsub fast float 1.000000e+00, %5211
  %5214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %5212, float %5213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5215 = extractvalue %dx.types.ResRet.f32 %5214, 0
  %5216 = fcmp fast ugt float %5215, 0.000000e+00
  br i1 %5216, label %5217, label %5230

; <label>:5217                                    ; preds = %5177
  %5218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5219 = extractvalue %dx.types.CBufRet.f32 %5218, 2
  %5220 = fmul fast float %5219, %5215
  %5221 = extractvalue %dx.types.CBufRet.f32 %5218, 3
  %5222 = fadd fast float %5221, %5220
  %5223 = extractvalue %dx.types.CBufRet.f32 %5184, 2
  %5224 = fadd fast float %5222, %5191
  %5225 = fmul fast float %5197, %5185
  %5226 = call float @dx.op.tertiary.f32(i32 46, float %5200, float %5188, float %5225)  ; FMad(a,b,c)
  %5227 = call float @dx.op.tertiary.f32(i32 46, float %5224, float %5223, float %5226)  ; FMad(a,b,c)
  %5228 = fsub fast float %5227, %5191
  %5229 = fsub fast float %5228, %5178
  br label %5230

; <label>:5230                                    ; preds = %5217, %5177, %5160
  %5231 = phi i1 [ true, %5217 ], [ false, %5177 ], [ false, %5160 ]
  %5232 = phi float [ %5229, %5217 ], [ -1.310720e+05, %5177 ], [ -1.310720e+05, %5160 ]
  %5233 = fsub fast float %5232, %144
  %5234 = call float @dx.op.unary.f32(i32 7, float %5233)  ; Saturate(value)
  %5235 = select i1 %5231, float %5234, float 1.000000e+00
  br label %5236

; <label>:5236                                    ; preds = %5230, %5084
  %5237 = phi float [ %5235, %5230 ], [ 0.000000e+00, %5084 ]
  %5238 = icmp eq i32 %5158, 3
  %5239 = select i1 %5238, float 1.000000e+00, float %5237
  %5240 = call float @dx.op.binary.f32(i32 35, float %5041, float %5239)  ; FMax(a,b)
  %5241 = call float @dx.op.unary.f32(i32 7, float %5240)  ; Saturate(value)
  %5242 = fcmp fast une float %5241, 0.000000e+00
  %5243 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %142, float %143, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %5244 = call float @dx.op.unary.f32(i32 25, float %5243)  ; Rsqrt(value)
  br i1 %5242, label %5252, label %5245

; <label>:5245                                    ; preds = %5236
  %5246 = fmul fast float %5244, %142
  %5247 = fmul fast float %5244, %143
  %5248 = fmul fast float %5244, %144
  %5249 = fsub fast float -0.000000e+00, %5246
  %5250 = fsub fast float -0.000000e+00, %5247
  %5251 = fsub fast float -0.000000e+00, %5248
  br label %5420

; <label>:5252                                    ; preds = %5236
  %5253 = fmul fast float %142, %5244
  %5254 = fsub fast float -0.000000e+00, %5253
  %5255 = fmul fast float %143, %5244
  %5256 = fsub fast float -0.000000e+00, %5255
  %5257 = fmul fast float %144, %5244
  %5258 = fsub fast float -0.000000e+00, %5257
  %5259 = call float @dx.op.dot3.f32(i32 55, float %5254, float %5256, float %5258, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %5260 = fmul fast float %5241, 2.500000e+00
  %5261 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5262 = fmul fast float %5241, 0x4013FFFFE0000000
  %5263 = fadd fast float %5262, 0xBFFFFFFFE0000000
  %5264 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5265 = fmul fast float %5241, 0x4004000020000000
  %5266 = fadd fast float %5265, 0xBFF8000040000000
  %5267 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5268 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5269 = fmul fast float %5044, 1.000000e+01
  %5270 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5271 = fmul fast float %5270, 2.000000e+00
  %5272 = fsub fast float 3.000000e+00, %5271
  %5273 = fmul fast float %5270, %5270
  %5274 = fmul fast float %5273, %5272
  %5275 = fsub fast float 1.000000e+00, %5274
  %5276 = fsub fast float 0x3FE3333340000000, %5065
  %5277 = fmul fast float %5276, 0x400AAAAAA0000000
  %5278 = call float @dx.op.unary.f32(i32 7, float %5277)  ; Saturate(value)
  %5279 = fmul fast float %5275, %5278
  %5280 = fmul fast float %5102, 0x3FEA2B8620000000
  %5281 = fmul fast float %5103, 0x3FEA2B8620000000
  %5282 = fmul fast float %5104, 0x3FEA2B8620000000
  %5283 = fadd fast float %5280, 0x3FC81DFBA0000000
  %5284 = fmul fast float %5283, %5102
  %5285 = fadd fast float %5284, 0x3F910E6020000000
  %5286 = fadd fast float %5281, 0x3FC81DFBA0000000
  %5287 = fmul fast float %5286, %5103
  %5288 = fadd fast float %5287, 0x3F910E6020000000
  %5289 = fadd fast float %5282, 0x3FC81DFBA0000000
  %5290 = fmul fast float %5289, %5104
  %5291 = fadd fast float %5290, 0x3F910E6020000000
  %5292 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5293 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5294 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5295 = fsub fast float %5292, %5102
  %5296 = fsub fast float %5293, %5103
  %5297 = fsub fast float %5294, %5104
  %5298 = fmul fast float %5295, %5268
  %5299 = fmul fast float %5298, %5279
  %5300 = fmul fast float %5296, %5268
  %5301 = fmul fast float %5300, %5279
  %5302 = fmul fast float %5297, %5268
  %5303 = fmul fast float %5302, %5279
  %5304 = fadd fast float %5299, %5102
  %5305 = fadd fast float %5301, %5103
  %5306 = fadd fast float %5303, %5104
  %5307 = fmul fast float %5038, %5038
  %5308 = fmul fast float %5307, %5307
  %5309 = fadd fast float %5264, 1.000000e+00
  %5310 = fsub fast float %5309, %5279
  %5311 = call float @dx.op.unary.f32(i32 7, float %5310)  ; Saturate(value)
  %5312 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5313 = call float @dx.op.unary.f32(i32 7, float %5312)  ; Saturate(value)
  %5314 = fsub fast float 1.000000e+00, %5308
  %5315 = call float @dx.op.binary.f32(i32 36, float %5311, float %5314)  ; FMin(a,b)
  %5316 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5317 = call float @dx.op.binary.f32(i32 35, float %5315, float %5316)  ; FMax(a,b)
  %5318 = fadd fast float %5313, 0xBFE4CCCCC0000000
  %5319 = fmul fast float %5318, 0x4006DB6DA0000000
  %5320 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5321 = fmul fast float %5320, 2.000000e+00
  %5322 = fsub fast float 3.000000e+00, %5321
  %5323 = bitcast float %5062 to i32
  %5324 = ashr i32 %5323, 1
  %5325 = add nsw i32 %5324, 532487669
  %5326 = bitcast i32 %5325 to float
  %5327 = fsub fast float 1.000000e+00, %5326
  %5328 = bitcast float %5327 to i32
  %5329 = sub nsw i32 2129859010, %5328
  %5330 = bitcast i32 %5329 to float
  %5331 = fmul fast float %5330, 2.000000e+00
  %5332 = bitcast float %5063 to i32
  %5333 = ashr i32 %5332, 1
  %5334 = add nsw i32 %5333, 532487669
  %5335 = bitcast i32 %5334 to float
  %5336 = fsub fast float 1.000000e+00, %5335
  %5337 = bitcast float %5336 to i32
  %5338 = sub nsw i32 2129859010, %5337
  %5339 = bitcast i32 %5338 to float
  %5340 = fmul fast float %5339, 2.000000e+00
  %5341 = bitcast float %5064 to i32
  %5342 = ashr i32 %5341, 1
  %5343 = add nsw i32 %5342, 532487669
  %5344 = bitcast i32 %5343 to float
  %5345 = fsub fast float 1.000000e+00, %5344
  %5346 = bitcast float %5345 to i32
  %5347 = sub nsw i32 2129859010, %5346
  %5348 = bitcast i32 %5347 to float
  %5349 = fmul fast float %5348, 2.000000e+00
  %5350 = fsub fast float 0x4002A9FBE0000000, %5331
  %5351 = fadd fast float %5331, 0x3FD54FDF00000000
  %5352 = bitcast float %5351 to i32
  %5353 = sub nsw i32 2129859010, %5352
  %5354 = bitcast i32 %5353 to float
  %5355 = fmul fast float %5354, %5350
  %5356 = fmul fast float %5355, %5355
  %5357 = fsub fast float 0x4002A9FBE0000000, %5340
  %5358 = fadd fast float %5340, 0x3FD54FDF00000000
  %5359 = bitcast float %5358 to i32
  %5360 = sub nsw i32 2129859010, %5359
  %5361 = bitcast i32 %5360 to float
  %5362 = fmul fast float %5361, %5357
  %5363 = fmul fast float %5362, %5362
  %5364 = fsub fast float 0x4002A9FBE0000000, %5349
  %5365 = fadd fast float %5349, 0x3FD54FDF00000000
  %5366 = bitcast float %5365 to i32
  %5367 = sub nsw i32 2129859010, %5366
  %5368 = bitcast i32 %5367 to float
  %5369 = fmul fast float %5368, %5364
  %5370 = fmul fast float %5369, %5369
  %5371 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5356)  ; FMax(a,b)
  %5372 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5363)  ; FMax(a,b)
  %5373 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5370)  ; FMax(a,b)
  %5374 = fsub fast float 1.000000e+00, %5259
  %5375 = fadd fast float %5374, %5275
  %5376 = call float @dx.op.unary.f32(i32 7, float %5375)  ; Saturate(value)
  %5377 = fsub fast float 1.000000e+00, %5239
  %5378 = fmul fast float %5317, %5377
  %5379 = fmul fast float %5320, %5320
  %5380 = fmul fast float %5379, %5378
  %5381 = fmul fast float %5380, %5322
  %5382 = fmul fast float %5377, 0xBFE99999A0000000
  %5383 = fmul fast float %5382, %5268
  %5384 = fmul fast float %5383, %5279
  %5385 = fadd fast float %5384, 1.000000e+00
  %5386 = fadd fast float %5065, -1.000000e+00
  %5387 = fmul fast float %5385, %5386
  %5388 = fadd fast float %5387, 1.000000e+00
  %5389 = fsub fast float %5371, %5062
  %5390 = fsub fast float %5372, %5063
  %5391 = fsub fast float %5373, %5064
  %5392 = fmul fast float %5381, %5389
  %5393 = fmul fast float %5381, %5390
  %5394 = fmul fast float %5381, %5391
  %5395 = fadd fast float %5392, %5062
  %5396 = fadd fast float %5393, %5063
  %5397 = fadd fast float %5394, %5064
  %5398 = fsub fast float %94, %5020
  %5399 = fsub fast float %95, %5021
  %5400 = fsub fast float %96, %5022
  %5401 = fmul fast float %5381, %5398
  %5402 = fmul fast float %5381, %5399
  %5403 = fmul fast float %5381, %5400
  %5404 = fadd fast float %5401, %5020
  %5405 = fadd fast float %5402, %5021
  %5406 = fadd fast float %5403, %5022
  %5407 = fmul fast float %5381, %5376
  %5408 = call float @dx.op.unary.f32(i32 7, float %5388)  ; Saturate(value)
  %5409 = fsub fast float 1.000000e+00, %5408
  %5410 = fmul fast float %5407, %5409
  %5411 = fadd fast float %5410, %5408
  %5412 = fsub fast float 1.000000e+00, %5038
  %5413 = fmul fast float %5381, %5412
  %5414 = fadd fast float %5413, %5038
  %5415 = call float @dx.op.dot3.f32(i32 55, float %5404, float %5405, float %5406, float %5404, float %5405, float %5406)  ; Dot3(ax,ay,az,bx,by,bz)
  %5416 = call float @dx.op.unary.f32(i32 25, float %5415)  ; Rsqrt(value)
  %5417 = fmul fast float %5404, %5416
  %5418 = fmul fast float %5405, %5416
  %5419 = fmul fast float %5406, %5416
  br label %5420

; <label>:5420                                    ; preds = %5252, %5245
  %5421 = phi float [ %5251, %5245 ], [ %5258, %5252 ]
  %5422 = phi float [ %5250, %5245 ], [ %5256, %5252 ]
  %5423 = phi float [ %5249, %5245 ], [ %5254, %5252 ]
  %5424 = phi float [ %5248, %5245 ], [ %5257, %5252 ]
  %5425 = phi float [ %5247, %5245 ], [ %5255, %5252 ]
  %5426 = phi float [ %5246, %5245 ], [ %5253, %5252 ]
  %5427 = phi float [ %5062, %5245 ], [ %5395, %5252 ]
  %5428 = phi float [ %5063, %5245 ], [ %5396, %5252 ]
  %5429 = phi float [ %5064, %5245 ], [ %5397, %5252 ]
  %5430 = phi float [ %5102, %5245 ], [ %5304, %5252 ]
  %5431 = phi float [ %5103, %5245 ], [ %5305, %5252 ]
  %5432 = phi float [ %5104, %5245 ], [ %5306, %5252 ]
  %5433 = phi float [ %5020, %5245 ], [ %5417, %5252 ]
  %5434 = phi float [ %5021, %5245 ], [ %5418, %5252 ]
  %5435 = phi float [ %5022, %5245 ], [ %5419, %5252 ]
  %5436 = phi float [ %5065, %5245 ], [ %5411, %5252 ]
  %5437 = phi float [ %5038, %5245 ], [ %5414, %5252 ]
  %5438 = fsub fast float -0.000000e+00, %5435
  %5439 = fsub fast float -0.000000e+00, %5434
  %5440 = fsub fast float -0.000000e+00, %5433
  %5441 = select i1 %203, float 0.000000e+00, float %5429
  %5442 = call float @dx.op.dot3.f32(i32 55, float %5433, float %5434, float %5435, float %5423, float %5422, float %5421)  ; Dot3(ax,ay,az,bx,by,bz)
  %5443 = call float @dx.op.unary.f32(i32 7, float %5442)  ; Saturate(value)
  %5444 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5425, float %5424, float %5433, float %5434, float %5435)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = fmul fast float %5444, 2.000000e+00
  %5446 = fmul fast float %5445, %5433
  %5447 = fmul fast float %5445, %5434
  %5448 = fmul fast float %5445, %5435
  %5449 = fsub fast float %5426, %5446
  %5450 = fsub fast float %5425, %5447
  %5451 = fsub fast float %5424, %5448
  %5452 = fmul fast float %5425, %5156
  %5453 = fmul fast float %5424, %5155
  %5454 = fsub fast float %5452, %5453
  %5455 = fmul fast float %5424, %5154
  %5456 = fmul fast float %5426, %5156
  %5457 = fsub fast float %5455, %5456
  %5458 = fmul fast float %5426, %5155
  %5459 = fmul fast float %5425, %5154
  %5460 = fsub fast float %5458, %5459
  %5461 = fmul fast float %5457, %5156
  %5462 = fmul fast float %5460, %5155
  %5463 = fmul fast float %5460, %5154
  %5464 = fmul fast float %5454, %5156
  %5465 = fmul fast float %5454, %5155
  %5466 = fmul fast float %5457, %5154
  %5467 = fsub fast float %5440, %5462
  %5468 = fadd fast float %5467, %5461
  %5469 = fsub fast float %5439, %5464
  %5470 = fadd fast float %5469, %5463
  %5471 = fsub fast float %5438, %5466
  %5472 = fadd fast float %5471, %5465
  %5473 = fmul fast float %5468, %5142
  %5474 = fmul fast float %5470, %5142
  %5475 = fmul fast float %5472, %5142
  %5476 = fadd fast float %5473, %5433
  %5477 = fadd fast float %5474, %5434
  %5478 = fadd fast float %5475, %5435
  %5479 = call float @dx.op.dot3.f32(i32 55, float %5476, float %5477, float %5478, float %5476, float %5477, float %5478)  ; Dot3(ax,ay,az,bx,by,bz)
  %5480 = call float @dx.op.unary.f32(i32 25, float %5479)  ; Rsqrt(value)
  %5481 = fmul fast float %5476, %5480
  %5482 = fmul fast float %5477, %5480
  %5483 = fmul fast float %5478, %5480
  %5484 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5425, float %5424, float %5481, float %5482, float %5483)  ; Dot3(ax,ay,az,bx,by,bz)
  %5485 = fmul fast float %5484, 2.000000e+00
  %5486 = fmul fast float %5481, %5485
  %5487 = fmul fast float %5482, %5485
  %5488 = fmul fast float %5483, %5485
  %5489 = fsub fast float %5426, %5486
  %5490 = fsub fast float %5425, %5487
  %5491 = fsub fast float %5424, %5488
  %5492 = call float @dx.op.binary.f32(i32 36, float %5437, float 1.000000e+00)  ; FMin(a,b)
  %5493 = fsub fast float 1.000000e+00, %5437
  %5494 = bitcast float %5493 to i32
  %5495 = sub nsw i32 2129859010, %5494
  %5496 = bitcast i32 %5495 to float
  %5497 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %5498 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5499 = fcmp fast oeq float %5498, 0.000000e+00
  %5500 = fcmp fast oeq float %5497, 0.000000e+00
  %5501 = or i1 %5500, %5499
  br i1 %5501, label %5531, label %5502

; <label>:5502                                    ; preds = %5420
  %5503 = fsub fast float -0.000000e+00, %61
  %5504 = fsub fast float -0.000000e+00, %59
  %5505 = call float @dx.op.unary.f32(i32 24, float %5498)  ; Sqrt(value)
  %5506 = fdiv fast float %5505, %5497
  %5507 = fcmp fast ogt float %5506, 0x3FFB6F8900000000
  %5508 = select i1 %5507, float 0x3FFB6F8900000000, float %5506
  %5509 = fmul fast float %5508, 0x3FE8A23460000000
  %5510 = call float @dx.op.unary.f32(i32 7, float %5509)  ; Saturate(value)
  %5511 = call float @dx.op.binary.f32(i32 35, float %5508, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5512 = fmul fast float %5510, %5497
  %5513 = fmul fast float %5511, 0x3FF279A740000000
  %5514 = fadd fast float %5513, -1.000000e+00
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5503, float %5504, float %60, float %5503, float %5504, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = call float @dx.op.unary.f32(i32 25, float %5515)  ; Rsqrt(value)
  %5517 = fmul fast float %5516, %5503
  %5518 = fmul fast float %5516, %5504
  %5519 = fmul fast float %5516, %60
  %5520 = fmul fast float %5514, %5514
  %5521 = fsub fast float 1.000000e+00, %5520
  %5522 = fmul fast float %5511, 0x40005F8BE0000000
  %5523 = fsub fast float 0x400C5BF8A0000000, %5522
  %5524 = fdiv fast float %5512, %5523
  %5525 = fmul fast float %5524, 0x3FEE31C3C0000000
  %5526 = fmul fast float %5525, %5521
  %5527 = fmul fast float %5511, 0x3FDACB7480000000
  %5528 = fadd fast float %5527, 0xBFD7347680000000
  %5529 = fmul fast float %5528, %5524
  %5530 = fmul fast float %5529, %5521
  br label %5531

; <label>:5531                                    ; preds = %5502, %5420
  %5532 = phi float [ %5517, %5502 ], [ 0.000000e+00, %5420 ]
  %5533 = phi float [ %5518, %5502 ], [ 0.000000e+00, %5420 ]
  %5534 = phi float [ %5519, %5502 ], [ 0.000000e+00, %5420 ]
  %5535 = phi float [ %5526, %5502 ], [ 0.000000e+00, %5420 ]
  %5536 = phi float [ %5530, %5502 ], [ 0.000000e+00, %5420 ]
  %5537 = call float @dx.op.dot3.f32(i32 55, float %5532, float %5533, float %5534, float %5433, float %5434, float %5435)  ; Dot3(ax,ay,az,bx,by,bz)
  %5538 = fmul fast float %5537, 0x3FDF454380000000
  %5539 = fmul fast float %5537, %5537
  %5540 = fmul fast float %5539, 0x3FEE471020000000
  %5541 = fadd fast float %5540, 0xBFD42F6020000000
  %5542 = fmul fast float %5497, 0x3FD20DD760000000
  %5543 = fmul fast float %5541, %5536
  %5544 = fadd fast float %5543, %5542
  %5545 = fmul fast float %5538, %5535
  %5546 = fadd fast float %5544, %5545
  %5547 = fsub fast float %5544, %5545
  %5548 = call float @dx.op.dot3.f32(i32 55, float %5532, float %5533, float %5534, float %5489, float %5490, float %5491)  ; Dot3(ax,ay,az,bx,by,bz)
  %5549 = fmul fast float %5548, 0x3FDF454380000000
  %5550 = fmul fast float %5548, %5548
  %5551 = fmul fast float %5550, 0x3FEE471020000000
  %5552 = fadd fast float %5551, 0xBFD42F6020000000
  %5553 = call float @dx.op.dot3.f32(i32 55, float %5497, float %5535, float %5536, float 0x3FD20DD760000000, float %5549, float %5552)  ; Dot3(ax,ay,az,bx,by,bz)
  %5554 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %5555 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %5556 = fcmp fast oeq float %5555, 0.000000e+00
  %5557 = fcmp fast oeq float %5554, 0.000000e+00
  %5558 = or i1 %5557, %5556
  br i1 %5558, label %5588, label %5559

; <label>:5559                                    ; preds = %5531
  %5560 = fsub fast float -0.000000e+00, %57
  %5561 = fsub fast float -0.000000e+00, %55
  %5562 = call float @dx.op.unary.f32(i32 24, float %5555)  ; Sqrt(value)
  %5563 = fdiv fast float %5562, %5554
  %5564 = fcmp fast ogt float %5563, 0x3FFB6F8900000000
  %5565 = select i1 %5564, float 0x3FFB6F8900000000, float %5563
  %5566 = fmul fast float %5565, 0x3FE8A23460000000
  %5567 = call float @dx.op.unary.f32(i32 7, float %5566)  ; Saturate(value)
  %5568 = call float @dx.op.binary.f32(i32 35, float %5565, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5569 = fmul fast float %5567, %5554
  %5570 = fmul fast float %5568, 0x3FF279A740000000
  %5571 = fadd fast float %5570, -1.000000e+00
  %5572 = call float @dx.op.dot3.f32(i32 55, float %5560, float %5561, float %56, float %5560, float %5561, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = call float @dx.op.unary.f32(i32 25, float %5572)  ; Rsqrt(value)
  %5574 = fmul fast float %5573, %5560
  %5575 = fmul fast float %5573, %5561
  %5576 = fmul fast float %5573, %56
  %5577 = fmul fast float %5571, %5571
  %5578 = fsub fast float 1.000000e+00, %5577
  %5579 = fmul fast float %5568, 0x40005F8BE0000000
  %5580 = fsub fast float 0x400C5BF8A0000000, %5579
  %5581 = fdiv fast float %5569, %5580
  %5582 = fmul fast float %5581, 0x3FEE31C3C0000000
  %5583 = fmul fast float %5582, %5578
  %5584 = fmul fast float %5568, 0x3FDACB7480000000
  %5585 = fadd fast float %5584, 0xBFD7347680000000
  %5586 = fmul fast float %5585, %5581
  %5587 = fmul fast float %5586, %5578
  br label %5588

; <label>:5588                                    ; preds = %5559, %5531
  %5589 = phi float [ %5574, %5559 ], [ 0.000000e+00, %5531 ]
  %5590 = phi float [ %5575, %5559 ], [ 0.000000e+00, %5531 ]
  %5591 = phi float [ %5576, %5559 ], [ 0.000000e+00, %5531 ]
  %5592 = phi float [ %5583, %5559 ], [ 0.000000e+00, %5531 ]
  %5593 = phi float [ %5587, %5559 ], [ 0.000000e+00, %5531 ]
  %5594 = call float @dx.op.dot3.f32(i32 55, float %5589, float %5590, float %5591, float %5433, float %5434, float %5435)  ; Dot3(ax,ay,az,bx,by,bz)
  %5595 = fmul fast float %5594, 0x3FDF454380000000
  %5596 = fmul fast float %5594, %5594
  %5597 = fmul fast float %5596, 0x3FEE471020000000
  %5598 = fadd fast float %5597, 0xBFD42F6020000000
  %5599 = fmul fast float %5554, 0x3FD20DD760000000
  %5600 = fmul fast float %5598, %5593
  %5601 = fadd fast float %5600, %5599
  %5602 = fmul fast float %5595, %5592
  %5603 = fadd fast float %5601, %5602
  %5604 = fsub fast float %5601, %5602
  %5605 = call float @dx.op.dot3.f32(i32 55, float %5589, float %5590, float %5591, float %5489, float %5490, float %5491)  ; Dot3(ax,ay,az,bx,by,bz)
  %5606 = fmul fast float %5605, 0x3FDF454380000000
  %5607 = fmul fast float %5605, %5605
  %5608 = fmul fast float %5607, 0x3FEE471020000000
  %5609 = fadd fast float %5608, 0xBFD42F6020000000
  %5610 = call float @dx.op.dot3.f32(i32 55, float %5554, float %5592, float %5593, float 0x3FD20DD760000000, float %5606, float %5609)  ; Dot3(ax,ay,az,bx,by,bz)
  %5611 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %5612 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %5613 = fcmp fast oeq float %5612, 0.000000e+00
  %5614 = fcmp fast oeq float %5611, 0.000000e+00
  %5615 = or i1 %5614, %5613
  br i1 %5615, label %5645, label %5616

; <label>:5616                                    ; preds = %5588
  %5617 = fsub fast float -0.000000e+00, %53
  %5618 = fsub fast float -0.000000e+00, %51
  %5619 = call float @dx.op.unary.f32(i32 24, float %5612)  ; Sqrt(value)
  %5620 = fdiv fast float %5619, %5611
  %5621 = fcmp fast ogt float %5620, 0x3FFB6F8900000000
  %5622 = select i1 %5621, float 0x3FFB6F8900000000, float %5620
  %5623 = fmul fast float %5622, 0x3FE8A23460000000
  %5624 = call float @dx.op.unary.f32(i32 7, float %5623)  ; Saturate(value)
  %5625 = call float @dx.op.binary.f32(i32 35, float %5622, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5626 = fmul fast float %5624, %5611
  %5627 = fmul fast float %5625, 0x3FF279A740000000
  %5628 = fadd fast float %5627, -1.000000e+00
  %5629 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %52, float %5617, float %5618, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = call float @dx.op.unary.f32(i32 25, float %5629)  ; Rsqrt(value)
  %5631 = fmul fast float %5630, %5617
  %5632 = fmul fast float %5630, %5618
  %5633 = fmul fast float %5630, %52
  %5634 = fmul fast float %5628, %5628
  %5635 = fsub fast float 1.000000e+00, %5634
  %5636 = fmul fast float %5625, 0x40005F8BE0000000
  %5637 = fsub fast float 0x400C5BF8A0000000, %5636
  %5638 = fdiv fast float %5626, %5637
  %5639 = fmul fast float %5638, 0x3FEE31C3C0000000
  %5640 = fmul fast float %5639, %5635
  %5641 = fmul fast float %5625, 0x3FDACB7480000000
  %5642 = fadd fast float %5641, 0xBFD7347680000000
  %5643 = fmul fast float %5642, %5638
  %5644 = fmul fast float %5643, %5635
  br label %5645

; <label>:5645                                    ; preds = %5616, %5588
  %5646 = phi float [ %5631, %5616 ], [ 0.000000e+00, %5588 ]
  %5647 = phi float [ %5632, %5616 ], [ 0.000000e+00, %5588 ]
  %5648 = phi float [ %5633, %5616 ], [ 0.000000e+00, %5588 ]
  %5649 = phi float [ %5640, %5616 ], [ 0.000000e+00, %5588 ]
  %5650 = phi float [ %5644, %5616 ], [ 0.000000e+00, %5588 ]
  %5651 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5647, float %5648, float %5433, float %5434, float %5435)  ; Dot3(ax,ay,az,bx,by,bz)
  %5652 = fmul fast float %5651, 0x3FDF454380000000
  %5653 = fmul fast float %5651, %5651
  %5654 = fmul fast float %5653, 0x3FEE471020000000
  %5655 = fadd fast float %5654, 0xBFD42F6020000000
  %5656 = fmul fast float %5611, 0x3FD20DD760000000
  %5657 = fmul fast float %5655, %5650
  %5658 = fadd fast float %5657, %5656
  %5659 = fmul fast float %5652, %5649
  %5660 = fadd fast float %5658, %5659
  %5661 = fsub fast float %5658, %5659
  %5662 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5647, float %5648, float %5489, float %5490, float %5491)  ; Dot3(ax,ay,az,bx,by,bz)
  %5663 = fmul fast float %5662, 0x3FDF454380000000
  %5664 = fmul fast float %5662, %5662
  %5665 = fmul fast float %5664, 0x3FEE471020000000
  %5666 = fadd fast float %5665, 0xBFD42F6020000000
  %5667 = call float @dx.op.dot3.f32(i32 55, float %5611, float %5649, float %5650, float 0x3FD20DD760000000, float %5663, float %5666)  ; Dot3(ax,ay,az,bx,by,bz)
  %5668 = call float @dx.op.binary.f32(i32 35, float %5546, float 0.000000e+00)  ; FMax(a,b)
  %5669 = call float @dx.op.binary.f32(i32 35, float %5603, float 0.000000e+00)  ; FMax(a,b)
  %5670 = call float @dx.op.binary.f32(i32 35, float %5660, float 0.000000e+00)  ; FMax(a,b)
  %5671 = call float @dx.op.binary.f32(i32 35, float %5547, float 0.000000e+00)  ; FMax(a,b)
  %5672 = call float @dx.op.binary.f32(i32 35, float %5604, float 0.000000e+00)  ; FMax(a,b)
  %5673 = call float @dx.op.binary.f32(i32 35, float %5661, float 0.000000e+00)  ; FMax(a,b)
  %5674 = call float @dx.op.binary.f32(i32 35, float %5553, float 0.000000e+00)  ; FMax(a,b)
  %5675 = call float @dx.op.binary.f32(i32 35, float %5610, float 0.000000e+00)  ; FMax(a,b)
  %5676 = call float @dx.op.binary.f32(i32 35, float %5667, float 0.000000e+00)  ; FMax(a,b)
  %5677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5677, 0
  %5679 = call float @dx.op.binary.f32(i32 36, float %5430, float %5678)  ; FMin(a,b)
  %5680 = fsub fast float 1.000000e+00, %5492
  %5681 = fmul fast float %5679, %5680
  %5682 = fsub fast float 1.000000e+00, %5681
  %5683 = bitcast float %5682 to i32
  %5684 = sub nsw i32 2129859010, %5683
  %5685 = bitcast i32 %5684 to float
  %5686 = call float @dx.op.binary.f32(i32 36, float %5431, float %5678)  ; FMin(a,b)
  %5687 = fmul fast float %5686, %5680
  %5688 = fsub fast float 1.000000e+00, %5687
  %5689 = bitcast float %5688 to i32
  %5690 = sub nsw i32 2129859010, %5689
  %5691 = bitcast i32 %5690 to float
  %5692 = call float @dx.op.binary.f32(i32 36, float %5432, float %5678)  ; FMin(a,b)
  %5693 = fmul fast float %5692, %5680
  %5694 = fsub fast float 1.000000e+00, %5693
  %5695 = bitcast float %5694 to i32
  %5696 = sub nsw i32 2129859010, %5695
  %5697 = bitcast i32 %5696 to float
  %5698 = fmul fast float %5668, %5492
  %5699 = fmul fast float %5698, %5685
  %5700 = fmul fast float %5669, %5492
  %5701 = fmul fast float %5700, %5691
  %5702 = fmul fast float %5670, %5492
  %5703 = fmul fast float %5702, %5697
  %5704 = call float @dx.op.binary.f32(i32 36, float %5427, float %5678)  ; FMin(a,b)
  %5705 = fmul fast float %5704, %5680
  %5706 = fsub fast float 1.000000e+00, %5705
  %5707 = bitcast float %5706 to i32
  %5708 = sub nsw i32 2129859010, %5707
  %5709 = bitcast i32 %5708 to float
  %5710 = call float @dx.op.binary.f32(i32 36, float %5428, float %5678)  ; FMin(a,b)
  %5711 = fmul fast float %5710, %5680
  %5712 = fsub fast float 1.000000e+00, %5711
  %5713 = bitcast float %5712 to i32
  %5714 = sub nsw i32 2129859010, %5713
  %5715 = bitcast i32 %5714 to float
  %5716 = call float @dx.op.binary.f32(i32 36, float %5441, float %5678)  ; FMin(a,b)
  %5717 = fmul fast float %5716, %5680
  %5718 = fsub fast float 1.000000e+00, %5717
  %5719 = bitcast float %5718 to i32
  %5720 = sub nsw i32 2129859010, %5719
  %5721 = bitcast i32 %5720 to float
  %5722 = fmul fast float %5674, %5492
  %5723 = fmul fast float %5722, %5709
  %5724 = fmul fast float %5675, %5492
  %5725 = fmul fast float %5724, %5715
  %5726 = fmul fast float %5676, %5492
  %5727 = fmul fast float %5726, %5721
  %5728 = call float @dx.op.dot3.f32(i32 55, float %5699, float %5701, float %5703, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5729 = select i1 %203, float 0.000000e+00, float %5699
  %5730 = select i1 %203, float %5728, float %5701
  %5731 = select i1 %203, float 0.000000e+00, float %5703
  %5732 = call float @dx.op.dot3.f32(i32 55, float %5671, float %5672, float %5673, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5733 = select i1 %203, float 0.000000e+00, float %5671
  %5734 = select i1 %203, float %5732, float %5672
  %5735 = select i1 %203, float 0.000000e+00, float %5673
  %5736 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5725, float %5727, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5737 = select i1 %203, float 0.000000e+00, float %5723
  %5738 = select i1 %203, float %5736, float %5725
  %5739 = select i1 %203, float 0.000000e+00, float %5727
  %5740 = fmul fast float %4393, %4393
  %5741 = call float @dx.op.unary.f32(i32 7, float %5740)  ; Saturate(value)
  %5742 = fmul fast float %5443, 9.843750e-01
  %5743 = fmul fast float %5436, 9.843750e-01
  %5744 = fadd fast float %5742, 7.812500e-03
  %5745 = fadd fast float %5743, 7.812500e-03
  %5746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %5744, float %5745, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5747 = extractvalue %dx.types.ResRet.f32 %5746, 0
  %5748 = extractvalue %dx.types.ResRet.f32 %5746, 1
  %5749 = extractvalue %dx.types.ResRet.f32 %5746, 2
  %5750 = extractvalue %dx.types.ResRet.f32 %5746, 3
  %5751 = fsub fast float 1.000000e+00, %5741
  %5752 = fsub fast float %5749, %5747
  %5753 = fsub fast float %5750, %5748
  %5754 = fmul fast float %5752, %5751
  %5755 = fmul fast float %5753, %5751
  %5756 = fadd fast float %5754, %5747
  %5757 = fadd fast float %5755, %5748
  %5758 = fmul fast float %5756, %5427
  %5759 = fmul fast float %5756, %5428
  %5760 = fmul fast float %5756, %5441
  %5761 = fadd fast float %5758, %5757
  %5762 = fadd fast float %5759, %5757
  %5763 = fadd fast float %5760, %5757
  %5764 = fcmp fast ogt float %5039, 0.000000e+00
  br i1 %5764, label %5765, label %5791

; <label>:5765                                    ; preds = %5645
  %5766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5039, float %5443, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5767 = extractvalue %dx.types.ResRet.f32 %5766, 0
  %5768 = extractvalue %dx.types.ResRet.f32 %5766, 1
  %5769 = extractvalue %dx.types.ResRet.f32 %5766, 2
  %5770 = fadd fast float %5767, -5.000000e-01
  %5771 = fadd fast float %5768, -5.000000e-01
  %5772 = fadd fast float %5769, -5.000000e-01
  %5773 = fsub fast float 1.000000e+00, %5427
  %5774 = fsub fast float 1.000000e+00, %5428
  %5775 = fsub fast float 1.000000e+00, %5441
  %5776 = fmul fast float %5427, 4.000000e+00
  %5777 = fmul fast float %5776, %5773
  %5778 = fmul fast float %5777, %5770
  %5779 = fmul fast float %5428, 4.000000e+00
  %5780 = fmul fast float %5779, %5774
  %5781 = fmul fast float %5780, %5771
  %5782 = fmul fast float %5441, 4.000000e+00
  %5783 = fmul fast float %5782, %5775
  %5784 = fmul fast float %5783, %5772
  %5785 = fadd fast float %5778, %5761
  %5786 = fadd fast float %5781, %5762
  %5787 = fadd fast float %5784, %5763
  %5788 = call float @dx.op.unary.f32(i32 7, float %5785)  ; Saturate(value)
  %5789 = call float @dx.op.unary.f32(i32 7, float %5786)  ; Saturate(value)
  %5790 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  br label %5791

; <label>:5791                                    ; preds = %5765, %5645
  %5792 = phi float [ %5788, %5765 ], [ %5761, %5645 ]
  %5793 = phi float [ %5789, %5765 ], [ %5762, %5645 ]
  %5794 = phi float [ %5790, %5765 ], [ %5763, %5645 ]
  %5795 = call float @dx.op.binary.f32(i32 35, float %5793, float %5794)  ; FMax(a,b)
  %5796 = call float @dx.op.binary.f32(i32 35, float %5792, float %5795)  ; FMax(a,b)
  %5797 = fsub fast float 1.000000e+00, %5796
  %5798 = call float @dx.op.dot3.f32(i32 55, float %5430, float %5431, float %5432, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5799 = fcmp fast ogt float %5798, 0x3E7FF19E20000000
  %5800 = fdiv fast float 1.000000e+00, %5798
  %5801 = select i1 %5799, float %5800, float 0.000000e+00
  %5802 = fmul fast float %5801, %5430
  %5803 = fmul fast float %5801, %5431
  %5804 = fmul fast float %5801, %5432
  %5805 = fadd fast float %5802, -1.000000e+00
  %5806 = fadd fast float %5803, -1.000000e+00
  %5807 = fadd fast float %5804, -1.000000e+00
  %5808 = fmul fast float %5805, 5.000000e-01
  %5809 = fmul fast float %5806, 5.000000e-01
  %5810 = fmul fast float %5807, 5.000000e-01
  %5811 = fadd fast float %5808, 1.000000e+00
  %5812 = fadd fast float %5809, 1.000000e+00
  %5813 = fadd fast float %5810, 1.000000e+00
  %5814 = call float @dx.op.binary.f32(i32 35, float %5443, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5815 = fdiv fast float %4393, %5814
  %5816 = fcmp fast olt float %5088, 1.270000e+02
  %5817 = fcmp fast olt float %5089, 1.270000e+02
  %5818 = fcmp fast olt float %5090, 1.270000e+02
  %5819 = fmul fast float %5088, 0xBFF7154760000000
  %5820 = fmul fast float %5819, %5815
  %5821 = fmul fast float %5089, 0xBFF7154760000000
  %5822 = fmul fast float %5821, %5815
  %5823 = fmul fast float %5090, 0xBFF7154760000000
  %5824 = fmul fast float %5823, %5815
  %5825 = call float @dx.op.unary.f32(i32 21, float %5820)  ; Exp(value)
  %5826 = call float @dx.op.unary.f32(i32 21, float %5822)  ; Exp(value)
  %5827 = call float @dx.op.unary.f32(i32 21, float %5824)  ; Exp(value)
  %5828 = call float @dx.op.unary.f32(i32 7, float %5825)  ; Saturate(value)
  %5829 = call float @dx.op.unary.f32(i32 7, float %5826)  ; Saturate(value)
  %5830 = call float @dx.op.unary.f32(i32 7, float %5827)  ; Saturate(value)
  %5831 = select i1 %5816, float %5828, float 0.000000e+00
  %5832 = select i1 %5817, float %5829, float 0.000000e+00
  %5833 = select i1 %5818, float %5830, float 0.000000e+00
  %5834 = fmul fast float %5831, %5797
  %5835 = fmul fast float %5832, %5797
  %5836 = fmul fast float %5833, %5797
  %5837 = fadd fast float %5834, -1.000000e+00
  %5838 = fadd fast float %5835, -1.000000e+00
  %5839 = fadd fast float %5836, -1.000000e+00
  %5840 = fmul fast float %5837, %5036
  %5841 = fmul fast float %5838, %5036
  %5842 = fmul fast float %5839, %5036
  %5843 = fmul fast float %5792, %5737
  %5844 = fmul fast float %5793, %5738
  %5845 = fmul fast float %5794, %5739
  %5846 = fsub fast float 1.000000e+00, %5443
  %5847 = bitcast float %5846 to i32
  %5848 = sitofp i32 %5847 to float
  %5849 = fmul fast float %5848, 5.000000e+00
  %5850 = fadd fast float %5849, 0xC1EFBF8940000000
  %5851 = fptosi float %5850 to i32
  %5852 = bitcast i32 %5851 to float
  %5853 = fmul fast float %5852, %5040
  %5854 = fmul fast float %5729, %5853
  %5855 = fmul fast float %5854, %5797
  %5856 = fmul fast float %5855, %5811
  %5857 = fmul fast float %5730, %5853
  %5858 = fmul fast float %5857, %5797
  %5859 = fmul fast float %5858, %5812
  %5860 = fmul fast float %5731, %5853
  %5861 = fmul fast float %5860, %5797
  %5862 = fmul fast float %5861, %5813
  %5863 = fadd fast float %5843, %5029
  %5864 = fadd fast float %5863, %5856
  %5865 = fmul fast float %5864, %5036
  %5866 = fadd fast float %5844, %5030
  %5867 = fadd fast float %5866, %5859
  %5868 = fmul fast float %5867, %5036
  %5869 = fadd fast float %5845, %5031
  %5870 = fadd fast float %5869, %5862
  %5871 = fmul fast float %5870, %5036
  %5872 = fmul fast float %5428, 0x4012D0A400000000
  %5873 = fadd fast float %5842, 1.000000e+00
  %5874 = fadd fast float %5841, 1.000000e+00
  %5875 = fadd fast float %5840, 1.000000e+00
  %5876 = fmul fast float %5797, %5731
  %5877 = fmul fast float %5797, %5730
  %5878 = fmul fast float %5797, %5729
  %5879 = fsub fast float 1.000000e+00, %5436
  %5880 = fmul fast float %5879, %5036
  %5881 = fsub fast float 1.000000e+00, %5880
  %5882 = call float @dx.op.unary.f32(i32 7, float %5881)  ; Saturate(value)
  %5883 = fsub fast float 1.000000e+00, %5882
  %5884 = fadd fast float %5872, 0x3FDB6377A0000000
  %5885 = fmul fast float %5883, %5884
  %5886 = call float @dx.op.dot3.f32(i32 55, float %5106, float %5107, float %5108, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5887 = fadd fast float %5885, %5886
  %5888 = call float @dx.op.unary.f32(i32 7, float %5887)  ; Saturate(value)
  %5889 = call float @dx.op.binary.f32(i32 35, float %5888, float 0x3F847AE140000000)  ; FMax(a,b)
  %5890 = fmul fast float %5889, %5889
  %5891 = fmul fast float %5890, %5890
  %5892 = fmul fast float %5891, 0xC00A935000000000
  %5893 = call float @dx.op.unary.f32(i32 21, float %5892)  ; Exp(value)
  %5894 = fsub fast float 1.000000e+00, %5893
  %5895 = fmul fast float %5875, %5733
  %5896 = fmul fast float %5895, %5894
  %5897 = fmul fast float %5874, %5734
  %5898 = fmul fast float %5897, %5894
  %5899 = fmul fast float %5873, %5735
  %5900 = fmul fast float %5899, %5894
  %5901 = fadd fast float %5896, %5878
  %5902 = fmul fast float %5901, %5036
  %5903 = fadd fast float %5898, %5877
  %5904 = fmul fast float %5903, %5036
  %5905 = fadd fast float %5900, %5876
  %5906 = fmul fast float %5905, %5036
  %5907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5908 = extractvalue %dx.types.CBufRet.f32 %5907, 3
  %5909 = fcmp fast oeq float %5908, 0.000000e+00
  br i1 %5909, label %7053, label %5910

; <label>:5910                                    ; preds = %5791
  %5911 = extractvalue %dx.types.CBufRet.f32 %5907, 0
  %5912 = extractvalue %dx.types.CBufRet.f32 %5907, 1
  %5913 = extractvalue %dx.types.CBufRet.f32 %5907, 2
  %5914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5915 = extractvalue %dx.types.CBufRet.f32 %5914, 0
  %5916 = extractvalue %dx.types.CBufRet.f32 %5914, 1
  %5917 = extractvalue %dx.types.CBufRet.f32 %5914, 2
  %5918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5919 = extractvalue %dx.types.CBufRet.f32 %5918, 0
  %5920 = extractvalue %dx.types.CBufRet.f32 %5918, 1
  %5921 = call float @dx.op.dot3.f32(i32 55, float %5915, float %5916, float %5917, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5922 = select i1 %203, float %5919, float %5915
  %5923 = select i1 %203, float %5921, float %5916
  %5924 = select i1 %203, float %5920, float %5917
  %5925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5926 = extractvalue %dx.types.CBufRet.f32 %5925, 2
  %5927 = fmul fast float %5926, %94
  %5928 = fmul fast float %5926, %95
  %5929 = fmul fast float %5926, %96
  %5930 = fadd fast float %5927, %142
  %5931 = fadd fast float %5928, %143
  %5932 = fadd fast float %5929, %144
  %5933 = fcmp fast olt float %5908, 0.000000e+00
  br i1 %5933, label %6558, label %5934

; <label>:5934                                    ; preds = %5910
  %5935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5936 = extractvalue %dx.types.CBufRet.f32 %5935, 0
  %5937 = extractvalue %dx.types.CBufRet.f32 %5935, 1
  %5938 = extractvalue %dx.types.CBufRet.f32 %5935, 2
  %5939 = extractvalue %dx.types.CBufRet.f32 %5935, 3
  %5940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %5942 = extractvalue %dx.types.CBufRet.f32 %5940, 1
  %5943 = extractvalue %dx.types.CBufRet.f32 %5940, 2
  %5944 = extractvalue %dx.types.CBufRet.f32 %5940, 3
  %5945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5946 = extractvalue %dx.types.CBufRet.f32 %5945, 0
  %5947 = extractvalue %dx.types.CBufRet.f32 %5945, 1
  %5948 = extractvalue %dx.types.CBufRet.f32 %5945, 2
  %5949 = extractvalue %dx.types.CBufRet.f32 %5945, 3
  %5950 = fmul fast float %5936, %5930
  %5951 = call float @dx.op.tertiary.f32(i32 46, float %5931, float %5937, float %5950)  ; FMad(a,b,c)
  %5952 = call float @dx.op.tertiary.f32(i32 46, float %5932, float %5938, float %5951)  ; FMad(a,b,c)
  %5953 = fadd fast float %5952, %5939
  %5954 = fmul fast float %5941, %5930
  %5955 = call float @dx.op.tertiary.f32(i32 46, float %5931, float %5942, float %5954)  ; FMad(a,b,c)
  %5956 = call float @dx.op.tertiary.f32(i32 46, float %5932, float %5943, float %5955)  ; FMad(a,b,c)
  %5957 = fadd fast float %5956, %5944
  %5958 = fmul fast float %5946, %5930
  %5959 = call float @dx.op.tertiary.f32(i32 46, float %5931, float %5947, float %5958)  ; FMad(a,b,c)
  %5960 = call float @dx.op.tertiary.f32(i32 46, float %5932, float %5948, float %5959)  ; FMad(a,b,c)
  %5961 = fadd fast float %5960, %5949
  %5962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5963 = extractvalue %dx.types.CBufRet.f32 %5962, 0
  %5964 = extractvalue %dx.types.CBufRet.f32 %5962, 1
  %5965 = extractvalue %dx.types.CBufRet.f32 %5962, 3
  %5966 = fmul fast float %5965, %5953
  %5967 = fmul fast float %5965, %5957
  %5968 = fadd fast float %5966, %5963
  %5969 = fadd fast float %5967, %5964
  %5970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5971 = extractvalue %dx.types.CBufRet.f32 %5970, 0
  %5972 = extractvalue %dx.types.CBufRet.f32 %5970, 1
  %5973 = extractvalue %dx.types.CBufRet.f32 %5970, 3
  %5974 = fmul fast float %5973, %5953
  %5975 = fmul fast float %5973, %5957
  %5976 = fadd fast float %5974, %5971
  %5977 = fadd fast float %5975, %5972
  %5978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5979 = extractvalue %dx.types.CBufRet.f32 %5978, 1
  %5980 = fsub fast float %5979, %5961
  %5981 = extractvalue %dx.types.CBufRet.f32 %5978, 2
  %5982 = fmul fast float %5980, %5981
  %5983 = fsub fast float 1.000000e+00, %5982
  %5984 = call float @dx.op.unary.f32(i32 7, float %5983)  ; Saturate(value)
  %5985 = extractvalue %dx.types.CBufRet.f32 %5970, 2
  %5986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5987 = extractvalue %dx.types.CBufRet.f32 %5986, 2
  %5988 = fadd fast float %5987, %5985
  %5989 = fcmp fast ogt float %5988, 0.000000e+00
  br i1 %5989, label %5990, label %6014

; <label>:5990                                    ; preds = %5934
  %5991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5992 = extractvalue %dx.types.CBufRet.f32 %5991, 0
  %5993 = extractvalue %dx.types.CBufRet.f32 %5991, 1
  %5994 = fsub fast float %5976, %5992
  %5995 = fsub fast float %5977, %5993
  %5996 = fcmp fast olt float %5994, 0.000000e+00
  %5997 = fcmp fast olt float %5995, 0.000000e+00
  %5998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5999 = extractvalue %dx.types.CBufRet.f32 %5998, 0
  %6000 = extractvalue %dx.types.CBufRet.f32 %5998, 1
  %6001 = extractvalue %dx.types.CBufRet.f32 %5998, 2
  %6002 = extractvalue %dx.types.CBufRet.f32 %5998, 3
  %6003 = select i1 %5996, float %5999, float %6001
  %6004 = select i1 %5997, float %6000, float %6002
  %6005 = fmul fast float %6003, %5994
  %6006 = fmul fast float %6004, %5995
  %6007 = call float @dx.op.unary.f32(i32 6, float %6005)  ; FAbs(value)
  %6008 = call float @dx.op.unary.f32(i32 6, float %6006)  ; FAbs(value)
  %6009 = extractvalue %dx.types.CBufRet.f32 %5925, 0
  %6010 = call float @dx.op.binary.f32(i32 35, float %6007, float %6008)  ; FMax(a,b)
  %6011 = fsub fast float %6009, %6010
  %6012 = call float @dx.op.unary.f32(i32 7, float %6011)  ; Saturate(value)
  %6013 = fmul fast float %6012, %5984
  br label %6014

; <label>:6014                                    ; preds = %5990, %5934
  %6015 = phi float [ %6013, %5990 ], [ 0.000000e+00, %5934 ]
  %6016 = extractvalue %dx.types.CBufRet.f32 %5962, 2
  %6017 = extractvalue %dx.types.CBufRet.f32 %5986, 1
  %6018 = fadd fast float %6017, %6016
  %6019 = fcmp fast ogt float %6018, 0.000000e+00
  %6020 = extractvalue %dx.types.CBufRet.f32 %5925, 0
  br i1 %6019, label %6021, label %6044

; <label>:6021                                    ; preds = %6014
  %6022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6023 = extractvalue %dx.types.CBufRet.f32 %6022, 0
  %6024 = extractvalue %dx.types.CBufRet.f32 %6022, 1
  %6025 = fsub fast float %5968, %6023
  %6026 = fsub fast float %5969, %6024
  %6027 = fcmp fast olt float %6025, 0.000000e+00
  %6028 = fcmp fast olt float %6026, 0.000000e+00
  %6029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6030 = extractvalue %dx.types.CBufRet.f32 %6029, 0
  %6031 = extractvalue %dx.types.CBufRet.f32 %6029, 1
  %6032 = extractvalue %dx.types.CBufRet.f32 %6029, 2
  %6033 = extractvalue %dx.types.CBufRet.f32 %6029, 3
  %6034 = select i1 %6027, float %6030, float %6032
  %6035 = select i1 %6028, float %6031, float %6033
  %6036 = fmul fast float %6034, %6025
  %6037 = fmul fast float %6035, %6026
  %6038 = call float @dx.op.unary.f32(i32 6, float %6036)  ; FAbs(value)
  %6039 = call float @dx.op.unary.f32(i32 6, float %6037)  ; FAbs(value)
  %6040 = call float @dx.op.binary.f32(i32 35, float %6038, float %6039)  ; FMax(a,b)
  %6041 = fsub fast float %6020, %6040
  %6042 = call float @dx.op.unary.f32(i32 7, float %6041)  ; Saturate(value)
  %6043 = fmul fast float %6042, %5984
  br label %6044

; <label>:6044                                    ; preds = %6021, %6014
  %6045 = phi float [ %6043, %6021 ], [ 0.000000e+00, %6014 ]
  %6046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6047 = extractvalue %dx.types.CBufRet.f32 %6046, 1
  %6048 = call float @dx.op.unary.f32(i32 7, float %6047)  ; Saturate(value)
  %6049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6050 = extractvalue %dx.types.CBufRet.f32 %6049, 0
  %6051 = extractvalue %dx.types.CBufRet.f32 %6049, 1
  %6052 = fsub fast float %5953, %6050
  %6053 = fsub fast float %5957, %6051
  %6054 = fcmp fast olt float %6052, 0.000000e+00
  %6055 = fcmp fast olt float %6053, 0.000000e+00
  %6056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6057 = extractvalue %dx.types.CBufRet.f32 %6056, 0
  %6058 = extractvalue %dx.types.CBufRet.f32 %6056, 1
  %6059 = extractvalue %dx.types.CBufRet.f32 %6056, 2
  %6060 = extractvalue %dx.types.CBufRet.f32 %6056, 3
  %6061 = select i1 %6054, float %6057, float %6059
  %6062 = select i1 %6055, float %6058, float %6060
  %6063 = fmul fast float %6061, %6052
  %6064 = fmul fast float %6062, %6053
  %6065 = call float @dx.op.unary.f32(i32 6, float %6063)  ; FAbs(value)
  %6066 = call float @dx.op.unary.f32(i32 6, float %6064)  ; FAbs(value)
  %6067 = call float @dx.op.binary.f32(i32 35, float %6065, float %6066)  ; FMax(a,b)
  %6068 = fsub fast float %6020, %6067
  %6069 = call float @dx.op.unary.f32(i32 7, float %6068)  ; Saturate(value)
  %6070 = call float @dx.op.binary.f32(i32 36, float %6069, float %6048)  ; FMin(a,b)
  %6071 = fmul fast float %6070, %5984
  %6072 = fsub fast float %6045, %6071
  %6073 = fsub fast float %6015, %6045
  %6074 = fsub fast float %6073, %6071
  %6075 = call float @dx.op.binary.f32(i32 35, float %6045, float %6015)  ; FMax(a,b)
  %6076 = call float @dx.op.binary.f32(i32 35, float %6071, float %6075)  ; FMax(a,b)
  %6077 = fcmp fast olt float %6076, 1.000000e+00
  br i1 %6077, label %6078, label %6476, !dx.controlflow.hints !80

; <label>:6078                                    ; preds = %6044
  %6079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6080 = extractvalue %dx.types.CBufRet.f32 %6079, 0
  %6081 = fcmp fast une float %6080, 0.000000e+00
  br i1 %6081, label %6082, label %6476, !dx.controlflow.hints !81

; <label>:6082                                    ; preds = %6078
  %6083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6084 = extractvalue %dx.types.CBufRet.f32 %6083, 0
  %6085 = extractvalue %dx.types.CBufRet.f32 %6083, 1
  %6086 = extractvalue %dx.types.CBufRet.f32 %6083, 2
  %6087 = extractvalue %dx.types.CBufRet.f32 %6083, 3
  %6088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6089 = extractvalue %dx.types.CBufRet.f32 %6088, 0
  %6090 = extractvalue %dx.types.CBufRet.f32 %6088, 1
  %6091 = extractvalue %dx.types.CBufRet.f32 %6088, 2
  %6092 = extractvalue %dx.types.CBufRet.f32 %6088, 3
  %6093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6094 = extractvalue %dx.types.CBufRet.f32 %6093, 0
  %6095 = extractvalue %dx.types.CBufRet.f32 %6093, 1
  %6096 = extractvalue %dx.types.CBufRet.f32 %6093, 2
  %6097 = extractvalue %dx.types.CBufRet.f32 %6093, 3
  %6098 = fmul fast float %6084, %5930
  %6099 = call float @dx.op.tertiary.f32(i32 46, float %5931, float %6085, float %6098)  ; FMad(a,b,c)
  %6100 = call float @dx.op.tertiary.f32(i32 46, float %5932, float %6086, float %6099)  ; FMad(a,b,c)
  %6101 = fadd fast float %6100, %6087
  %6102 = fmul fast float %6089, %5930
  %6103 = call float @dx.op.tertiary.f32(i32 46, float %5931, float %6090, float %6102)  ; FMad(a,b,c)
  %6104 = call float @dx.op.tertiary.f32(i32 46, float %5932, float %6091, float %6103)  ; FMad(a,b,c)
  %6105 = fadd fast float %6104, %6092
  %6106 = fmul fast float %6094, %5930
  %6107 = call float @dx.op.tertiary.f32(i32 46, float %5931, float %6095, float %6106)  ; FMad(a,b,c)
  %6108 = call float @dx.op.tertiary.f32(i32 46, float %5932, float %6096, float %6107)  ; FMad(a,b,c)
  %6109 = fadd fast float %6108, %6097
  %6110 = fcmp fast oge float %6101, 1.000000e+00
  %6111 = fcmp fast oge float %6105, 1.000000e+00
  %6112 = or i1 %6110, %6111
  %6113 = fcmp fast olt float %6101, 0.000000e+00
  %6114 = fcmp fast olt float %6105, 0.000000e+00
  %6115 = or i1 %6113, %6114
  %6116 = or i1 %6112, %6115
  br i1 %6116, label %6476, label %6117, !dx.controlflow.hints !82

; <label>:6117                                    ; preds = %6082
  %6118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6119 = extractvalue %dx.types.CBufRet.f32 %6118, 0
  %6120 = extractvalue %dx.types.CBufRet.f32 %6118, 1
  %6121 = extractvalue %dx.types.CBufRet.f32 %6118, 2
  %6122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6123 = extractvalue %dx.types.CBufRet.i32 %6122, 2
  %6124 = uitofp i32 %6123 to float
  %6125 = extractvalue %dx.types.CBufRet.i32 %6122, 3
  %6126 = uitofp i32 %6125 to float
  %6127 = extractvalue %dx.types.CBufRet.f32 %6118, 3
  %6128 = fmul fast float %6127, 2.000000e+00
  %6129 = fsub fast float %6101, %6119
  %6130 = fsub fast float %6105, %6120
  %6131 = fmul fast float %6128, %6129
  %6132 = fmul fast float %6128, %6130
  %6133 = fdiv fast float 1.000000e+00, %5913
  %6134 = fmul fast float %6132, %6133
  %6135 = call float @dx.op.unary.f32(i32 6, float %6134)  ; FAbs(value)
  %6136 = fmul fast float %6121, %5932
  %6137 = fmul fast float %6136, %6128
  %6138 = call float @dx.op.unary.f32(i32 6, float %6137)  ; FAbs(value)
  %6139 = call float @dx.op.unary.f32(i32 6, float %6131)  ; FAbs(value)
  %6140 = call float @dx.op.binary.f32(i32 35, float %6138, float %6135)  ; FMax(a,b)
  %6141 = call float @dx.op.binary.f32(i32 35, float %6139, float %6140)  ; FMax(a,b)
  %6142 = fmul fast float %6141, 2.000000e+00
  %6143 = call float @dx.op.unary.f32(i32 23, float %6142)  ; Log(value)
  %6144 = call float @dx.op.binary.f32(i32 35, float %6143, float %6124)  ; FMax(a,b)
  %6145 = call float @dx.op.unary.f32(i32 22, float %6144)  ; Frc(value)
  %6146 = fadd fast float %6145, 0xBFEA666660000000
  %6147 = fmul fast float %6146, 8.000000e+00
  %6148 = call float @dx.op.unary.f32(i32 7, float %6147)  ; Saturate(value)
  %6149 = call float @dx.op.unary.f32(i32 27, float %6144)  ; Round_ni(value)
  %6150 = fadd fast float %6149, %6148
  %6151 = call float @dx.op.binary.f32(i32 36, float %6150, float %6126)  ; FMin(a,b)
  %6152 = call float @dx.op.unary.f32(i32 27, float %6151)  ; Round_ni(value)
  %6153 = fsub fast float -0.000000e+00, %6152
  %6154 = call float @dx.op.unary.f32(i32 21, float %6153)  ; Exp(value)
  %6155 = fmul fast float %6154, %6128
  %6156 = fmul fast float %6155, %6101
  %6157 = fmul fast float %6155, %6105
  %6158 = fmul fast float %6156, 2.500000e-01
  %6159 = fmul fast float %6157, 2.500000e-01
  %6160 = fadd fast float %6158, 5.000000e-01
  %6161 = fadd fast float %6159, 5.000000e-01
  %6162 = fsub fast float %6126, %6124
  %6163 = fptoui float %6162 to i32
  %6164 = add i32 %6163, 320
  %6165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %6164)  ; CBufferLoadLegacy(handle,regIndex)
  %6166 = extractvalue %dx.types.CBufRet.f32 %6165, 0
  %6167 = extractvalue %dx.types.CBufRet.f32 %6165, 1
  %6168 = fcmp fast une float %6151, %6126
  %6169 = fsub fast float %6101, %6166
  %6170 = fsub fast float %6105, %6167
  %6171 = call float @dx.op.unary.f32(i32 6, float %6169)  ; FAbs(value)
  %6172 = call float @dx.op.unary.f32(i32 6, float %6170)  ; FAbs(value)
  %6173 = fmul fast float %6171, %6155
  %6174 = fmul fast float %6172, %6155
  %6175 = fcmp fast olt float %6173, 1.000000e+00
  %6176 = fcmp fast olt float %6174, 1.000000e+00
  %6177 = and i1 %6175, %6176
  %6178 = or i1 %6168, %6177
  br i1 %6178, label %6179, label %6476, !dx.controlflow.hints !83

; <label>:6179                                    ; preds = %6117
  %6180 = fmul fast float %6157, 5.000000e-01
  %6181 = fmul fast float %6156, 5.000000e-01
  %6182 = fadd fast float %6180, 5.000000e-01
  %6183 = fadd fast float %6181, 5.000000e-01
  %6184 = sitofp i32 %6123 to float
  %6185 = fsub fast float %6151, %6184
  %6186 = call float @dx.op.unary.f32(i32 27, float %6185)  ; Round_ni(value)
  %6187 = call float @dx.op.unary.f32(i32 22, float %6151)  ; Frc(value)
  %6188 = call float @dx.op.unary.f32(i32 22, float %6183)  ; Frc(value)
  %6189 = call float @dx.op.unary.f32(i32 22, float %6182)  ; Frc(value)
  %6190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %6188, float %6189, float %6186, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6191 = extractvalue %dx.types.ResRet.f32 %6190, 0
  %6192 = extractvalue %dx.types.ResRet.f32 %6190, 1
  %6193 = extractvalue %dx.types.ResRet.f32 %6190, 2
  %6194 = extractvalue %dx.types.ResRet.f32 %6190, 3
  %6195 = fcmp fast ogt float %6187, 0.000000e+00
  br i1 %6195, label %6196, label %6217, !dx.controlflow.hints !84

; <label>:6196                                    ; preds = %6179
  %6197 = fadd fast float %6186, 1.000000e+00
  %6198 = call float @dx.op.unary.f32(i32 22, float %6160)  ; Frc(value)
  %6199 = call float @dx.op.unary.f32(i32 22, float %6161)  ; Frc(value)
  %6200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %6198, float %6199, float %6197, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6201 = extractvalue %dx.types.ResRet.f32 %6200, 0
  %6202 = extractvalue %dx.types.ResRet.f32 %6200, 1
  %6203 = extractvalue %dx.types.ResRet.f32 %6200, 2
  %6204 = extractvalue %dx.types.ResRet.f32 %6200, 3
  %6205 = fsub fast float %6201, %6191
  %6206 = fsub fast float %6202, %6192
  %6207 = fsub fast float %6203, %6193
  %6208 = fsub fast float %6204, %6194
  %6209 = fmul fast float %6205, %6187
  %6210 = fmul fast float %6206, %6187
  %6211 = fmul fast float %6207, %6187
  %6212 = fmul fast float %6208, %6187
  %6213 = fadd fast float %6209, %6191
  %6214 = fadd fast float %6210, %6192
  %6215 = fadd fast float %6211, %6193
  %6216 = fadd fast float %6212, %6194
  br label %6217

; <label>:6217                                    ; preds = %6196, %6179
  %6218 = phi float [ %6213, %6196 ], [ %6191, %6179 ]
  %6219 = phi float [ %6214, %6196 ], [ %6192, %6179 ]
  %6220 = phi float [ %6215, %6196 ], [ %6193, %6179 ]
  %6221 = phi float [ %6216, %6196 ], [ %6194, %6179 ]
  %6222 = fadd fast float %6218, -5.000000e-01
  %6223 = fadd fast float %6220, -5.000000e-01
  %6224 = fmul fast float %6222, 0xBFD5555560000000
  %6225 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6223, float %6224)  ; FMad(a,b,c)
  %6226 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6219, float 0.000000e+00)  ; FMad(a,b,c)
  %6227 = fadd fast float %6226, %6221
  %6228 = fmul fast float %6222, -7.500000e-01
  %6229 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6223, float %6228)  ; FMad(a,b,c)
  %6230 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6219, float 0.000000e+00)  ; FMad(a,b,c)
  %6231 = fadd fast float %6230, %6221
  %6232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6233 = extractvalue %dx.types.CBufRet.f32 %6232, 0
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 0
  %6236 = extractvalue %dx.types.CBufRet.f32 %6234, 1
  %6237 = extractvalue %dx.types.CBufRet.f32 %6234, 2
  %6238 = extractvalue %dx.types.CBufRet.f32 %6234, 3
  %6239 = fsub fast float %6235, %6225
  %6240 = fsub fast float %6236, %6227
  %6241 = fsub fast float %6237, %6229
  %6242 = fsub fast float %6238, %6231
  %6243 = fmul fast float %6239, %6233
  %6244 = fmul fast float %6240, %6233
  %6245 = fmul fast float %6241, %6233
  %6246 = fmul fast float %6242, %6233
  %6247 = fadd fast float %6243, %6225
  %6248 = fadd fast float %6244, %6227
  %6249 = fadd fast float %6245, %6229
  %6250 = fadd fast float %6246, %6231
  %6251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6252 = extractvalue %dx.types.ResRet.i32 %6251, 0
  %6253 = and i32 %6252, 536870911
  %6254 = uitofp i32 %6253 to float
  %6255 = fmul fast float %6254, %6101
  %6256 = fmul fast float %6254, %6105
  %6257 = fptoui float %6255 to i32
  %6258 = fptoui float %6256 to i32
  %6259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6260 = extractvalue %dx.types.ResRet.i32 %6259, 0
  %6261 = and i32 %6260, 31
  %6262 = lshr i32 %6257, %6261
  %6263 = lshr i32 %6258, %6261
  %6264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6265 = extractvalue %dx.types.ResRet.i32 %6264, 0
  %6266 = and i32 %6265, 31
  %6267 = shl i32 1, %6266
  %6268 = call i32 @dx.op.binary.i32(i32 40, i32 %6267, i32 4)  ; UMin(a,b)
  %6269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6270 = extractvalue %dx.types.ResRet.i32 %6269, 0
  %6271 = extractvalue %dx.types.ResRet.i32 %6269, 1
  %6272 = icmp eq i32 %6268, 0
  br i1 %6272, label %6314, label %6273

; <label>:6273                                    ; preds = %6217
  br label %6274

; <label>:6274                                    ; preds = %6302, %6273
  %6275 = phi i32 [ %6305, %6302 ], [ 0, %6273 ]
  %6276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6277 = extractvalue %dx.types.ResRet.i32 %6276, 0
  %6278 = lshr i32 %6277, 16
  %6279 = and i32 %6278, 31
  %6280 = shl i32 %6263, %6279
  %6281 = add i32 %6280, %6262
  %6282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6283 = extractvalue %dx.types.ResRet.i32 %6282, 0
  %6284 = and i32 %6283, 31
  %6285 = shl i32 %6281, %6284
  %6286 = add i32 %6285, %6275
  %6287 = shl i32 %6286, 2
  %6288 = add i32 %6287, 32
  %6289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6288, i32 undef)  ; BufferLoad(srv,index,wot)
  %6290 = extractvalue %dx.types.ResRet.i32 %6289, 0
  %6291 = icmp slt i32 %6290, 0
  %6292 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6275
  %6293 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6275
  %6294 = bitcast float* %6292 to i32*
  %6295 = bitcast float* %6293 to i32*
  br i1 %6291, label %6296, label %6302

; <label>:6296                                    ; preds = %6274
  %6297 = and i32 %6290, 1073741823
  %6298 = add nuw nsw i32 %6297, 20
  %6299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6298, i32 undef)  ; BufferLoad(srv,index,wot)
  %6300 = extractvalue %dx.types.ResRet.i32 %6299, 0
  %6301 = extractvalue %dx.types.ResRet.i32 %6299, 1
  br label %6302

; <label>:6302                                    ; preds = %6296, %6274
  %6303 = phi i32 [ %6300, %6296 ], [ %6270, %6274 ]
  %6304 = phi i32 [ %6301, %6296 ], [ %6271, %6274 ]
  store i32 %6303, i32* %6294, align 4
  store i32 %6304, i32* %6295, align 4
  %6305 = add nuw i32 %6275, 1
  %6306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6307 = extractvalue %dx.types.CBufRet.i32 %6306, 2
  %6308 = icmp eq i32 %6307, 0
  %6309 = icmp ugt i32 %6290, -1073741825
  %6310 = and i1 %6309, %6308
  %6311 = icmp ult i32 %6305, %6268
  %6312 = and i1 %6310, %6311
  br i1 %6312, label %6274, label %6313

; <label>:6313                                    ; preds = %6302
  br label %6314

; <label>:6314                                    ; preds = %6313, %6217
  %6315 = phi i32 [ 0, %6217 ], [ %6305, %6313 ]
  %6316 = extractvalue %dx.types.CBufRet.f32 %6079, 2
  %6317 = fptoui float %6316 to i32
  %6318 = icmp eq i32 %6317, 0
  br i1 %6318, label %6370, label %6319

; <label>:6319                                    ; preds = %6314
  br label %6320

; <label>:6320                                    ; preds = %6365, %6319
  %6321 = phi i32 [ %6366, %6365 ], [ %6315, %6319 ]
  %6322 = phi i32 [ %6367, %6365 ], [ 0, %6319 ]
  %6323 = lshr i32 %6322, 2
  %6324 = and i32 %6322, 3
  %6325 = add nuw nsw i32 %6323, 83
  %6326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 %6325)  ; CBufferLoadLegacy(handle,regIndex)
  %6327 = extractvalue %dx.types.CBufRet.i32 %6326, 0
  %6328 = extractvalue %dx.types.CBufRet.i32 %6326, 1
  %6329 = extractvalue %dx.types.CBufRet.i32 %6326, 2
  %6330 = extractvalue %dx.types.CBufRet.i32 %6326, 3
  %6331 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 0
  store i32 %6327, i32* %6331, align 4
  %6332 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 1
  store i32 %6328, i32* %6332, align 4
  %6333 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 2
  store i32 %6329, i32* %6333, align 4
  %6334 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 3
  store i32 %6330, i32* %6334, align 4
  %6335 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 %6324
  %6336 = load i32, i32* %6335, align 4, !tbaa !85, !noalias !89
  %6337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6338 = extractvalue %dx.types.ResRet.i32 %6337, 0
  %6339 = lshr i32 %6338, 16
  %6340 = and i32 %6339, 31
  %6341 = shl i32 %6263, %6340
  %6342 = add i32 %6341, %6262
  %6343 = shl i32 %6342, 2
  %6344 = add i32 %6343, %6336
  %6345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6344, i32 undef)  ; BufferLoad(srv,index,wot)
  %6346 = extractvalue %dx.types.ResRet.i32 %6345, 0
  %6347 = icmp eq i32 %6346, 0
  br i1 %6347, label %6365, label %6348

; <label>:6348                                    ; preds = %6320
  %6349 = icmp slt i32 %6346, 0
  %6350 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6321
  %6351 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6321
  %6352 = bitcast float* %6350 to i32*
  %6353 = bitcast float* %6351 to i32*
  br i1 %6349, label %6354, label %6361

; <label>:6354                                    ; preds = %6348
  %6355 = and i32 %6346, 1073741823
  %6356 = add i32 %6336, 20
  %6357 = add i32 %6356, %6355
  %6358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6357, i32 undef)  ; BufferLoad(srv,index,wot)
  %6359 = extractvalue %dx.types.ResRet.i32 %6358, 0
  %6360 = extractvalue %dx.types.ResRet.i32 %6358, 1
  br label %6361

; <label>:6361                                    ; preds = %6354, %6348
  %6362 = phi i32 [ %6359, %6354 ], [ %6270, %6348 ]
  %6363 = phi i32 [ %6360, %6354 ], [ %6271, %6348 ]
  store i32 %6362, i32* %6352, align 4
  store i32 %6363, i32* %6353, align 4
  %6364 = add i32 %6321, 1
  br label %6365

; <label>:6365                                    ; preds = %6361, %6320
  %6366 = phi i32 [ %6321, %6320 ], [ %6364, %6361 ]
  %6367 = add nuw i32 %6322, 1
  %6368 = icmp eq i32 %6367, %6317
  br i1 %6368, label %6369, label %6320

; <label>:6369                                    ; preds = %6365
  br label %6370

; <label>:6370                                    ; preds = %6369, %6314
  %6371 = phi i32 [ %6315, %6314 ], [ %6366, %6369 ]
  %6372 = icmp eq i32 %6371, 1
  %6373 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 0
  %6374 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 0
  br i1 %6372, label %6375, label %6378

; <label>:6375                                    ; preds = %6370
  %6376 = load float, float* %6373, align 4
  %6377 = load float, float* %6374, align 4
  br label %6405

; <label>:6378                                    ; preds = %6370
  %6379 = load float, float* %6373, align 4
  %6380 = load float, float* %6374, align 4
  %6381 = fdiv fast float 1.000000e+00, %6380
  %6382 = fsub fast float %6379, %6381
  %6383 = icmp ugt i32 %6371, 1
  br i1 %6383, label %6384, label %6400

; <label>:6384                                    ; preds = %6378
  br label %6385

; <label>:6385                                    ; preds = %6385, %6384
  %6386 = phi float [ %6395, %6385 ], [ %6382, %6384 ]
  %6387 = phi float [ %6396, %6385 ], [ %6379, %6384 ]
  %6388 = phi i32 [ %6397, %6385 ], [ 1, %6384 ]
  %6389 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %6388
  %6390 = load float, float* %6389, align 4
  %6391 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %6388
  %6392 = load float, float* %6391, align 4
  %6393 = fdiv fast float 1.000000e+00, %6392
  %6394 = fsub fast float %6390, %6393
  %6395 = call float @dx.op.binary.f32(i32 36, float %6386, float %6394)  ; FMin(a,b)
  %6396 = call float @dx.op.binary.f32(i32 35, float %6387, float %6390)  ; FMax(a,b)
  %6397 = add nuw i32 %6388, 1
  %6398 = icmp eq i32 %6397, %6371
  br i1 %6398, label %6399, label %6385

; <label>:6399                                    ; preds = %6385
  br label %6400

; <label>:6400                                    ; preds = %6399, %6378
  %6401 = phi float [ %6382, %6378 ], [ %6395, %6399 ]
  %6402 = phi float [ %6379, %6378 ], [ %6396, %6399 ]
  %6403 = fsub fast float %6402, %6401
  %6404 = fdiv fast float 1.000000e+00, %6403
  br label %6405

; <label>:6405                                    ; preds = %6400, %6375
  %6406 = phi float [ %6376, %6375 ], [ %6402, %6400 ]
  %6407 = phi float [ %6377, %6375 ], [ %6404, %6400 ]
  %6408 = fadd fast float %6109, %6406
  %6409 = fmul fast float %6408, %6407
  %6410 = call float @dx.op.unary.f32(i32 7, float %6409)  ; Saturate(value)
  %6411 = fmul fast float %6410, 2.000000e+00
  %6412 = fsub fast float 1.000000e+00, %6411
  %6413 = fmul fast float %6247, %6247
  %6414 = fsub fast float %6248, %6413
  %6415 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6414)  ; FMax(a,b)
  %6416 = fdiv fast float 1.000000e+00, %6415
  %6417 = fmul fast float %6248, %6247
  %6418 = fsub fast float %6249, %6417
  %6419 = fsub fast float %6412, %6247
  %6420 = fmul fast float %6412, %6412
  %6421 = fsub fast float %6420, %6248
  %6422 = fmul fast float %6416, %6418
  %6423 = fmul fast float %6422, %6419
  %6424 = fsub fast float %6421, %6423
  %6425 = fmul fast float %6248, %6248
  %6426 = fsub fast float %6250, %6425
  %6427 = fmul fast float %6418, %6418
  %6428 = fmul fast float %6427, %6416
  %6429 = fsub fast float %6426, %6428
  %6430 = fdiv fast float %6424, %6429
  %6431 = fmul fast float %6430, %6418
  %6432 = fsub fast float %6419, %6431
  %6433 = fmul fast float %6432, %6416
  %6434 = fmul fast float %6433, %6247
  %6435 = fsub fast float 1.000000e+00, %6434
  %6436 = fmul fast float %6430, %6248
  %6437 = fsub fast float %6435, %6436
  %6438 = fmul fast float %6433, %6433
  %6439 = fmul fast float %6430, 4.000000e+00
  %6440 = fmul fast float %6439, %6437
  %6441 = fsub fast float %6438, %6440
  %6442 = call float @dx.op.unary.f32(i32 24, float %6441)  ; Sqrt(value)
  %6443 = fcmp fast oge float %6433, 0.000000e+00
  %6444 = fsub fast float -0.000000e+00, %6442
  %6445 = select i1 %6443, float %6444, float %6442
  %6446 = fsub fast float %6445, %6433
  %6447 = fdiv fast float %6446, %6430
  %6448 = fdiv fast float %6437, %6446
  %6449 = fmul fast float %6447, 5.000000e-01
  %6450 = fmul fast float %6448, 2.000000e+00
  %6451 = select i1 %6443, float %6449, float %6450
  %6452 = select i1 %6443, float %6450, float %6449
  %6453 = call float @dx.op.binary.f32(i32 35, float %6451, float %6452)  ; FMax(a,b)
  %6454 = call float @dx.op.binary.f32(i32 36, float %6451, float %6452)  ; FMin(a,b)
  %6455 = fcmp fast ogt float %6412, %6453
  %6456 = fsub fast float %6412, %6454
  %6457 = fsub fast float %6412, %6453
  %6458 = fsub fast float %6453, %6454
  %6459 = select i1 %6455, float %6457, float %6458
  %6460 = fmul float %6456, %6459
  %6461 = select i1 %6455, float %6454, float %6412
  %6462 = fcmp fast ogt float %6412, %6454
  %6463 = fmul fast float %6461, %6453
  %6464 = fadd fast float %6461, %6453
  %6465 = fmul fast float %6464, %6247
  %6466 = fadd fast float %6463, %6248
  %6467 = fsub fast float %6466, %6465
  %6468 = fdiv fast float %6467, %6460
  %6469 = select i1 %6462, float %6468, float 0.000000e+00
  %6470 = fsub fast float 1.000000e+00, %6469
  %6471 = select i1 %6455, float %6470, float %6469
  %6472 = call float @dx.op.unary.f32(i32 7, float %6471)  ; Saturate(value)
  %6473 = extractvalue %dx.types.CBufRet.f32 %6232, 3
  %6474 = fmul fast float %6473, %6472
  %6475 = fsub fast float 1.000000e+00, %6474
  br label %6476

; <label>:6476                                    ; preds = %6405, %6117, %6082, %6078, %6044
  %6477 = phi float [ 1.000000e+00, %6044 ], [ %6475, %6405 ], [ 1.000000e+00, %6082 ], [ 1.000000e+00, %6117 ], [ 1.000000e+00, %6078 ]
  %6478 = fcmp fast ogt float %6074, 0.000000e+00
  br i1 %6478, label %6479, label %6485, !dx.controlflow.hints !98

; <label>:6479                                    ; preds = %6476
  %6480 = fadd fast float %5987, %5961
  %6481 = call float @dx.op.binary.f32(i32 35, float %6480, float 0.000000e+00)  ; FMax(a,b)
  %6482 = fadd fast float %6481, 0x3F10000000000000
  %6483 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %37, float %5976, float %5977, float undef, float undef, i32 0, i32 0, i32 undef, float %6482)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6484 = extractvalue %dx.types.ResRet.f32 %6483, 0
  br label %6485

; <label>:6485                                    ; preds = %6479, %6476
  %6486 = phi float [ %6484, %6479 ], [ 1.000000e+00, %6476 ]
  %6487 = fcmp fast ogt float %6072, 0.000000e+00
  br i1 %6487, label %6488, label %6494, !dx.controlflow.hints !99

; <label>:6488                                    ; preds = %6485
  %6489 = fadd fast float %6017, %5961
  %6490 = call float @dx.op.binary.f32(i32 35, float %6489, float 0.000000e+00)  ; FMax(a,b)
  %6491 = fadd fast float %6490, 0x3F10000000000000
  %6492 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %37, float %5968, float %5969, float undef, float undef, i32 0, i32 0, i32 undef, float %6491)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6493 = extractvalue %dx.types.ResRet.f32 %6492, 0
  br label %6494

; <label>:6494                                    ; preds = %6488, %6485
  %6495 = phi float [ %6493, %6488 ], [ 1.000000e+00, %6485 ]
  %6496 = fcmp fast ogt float %6071, 0.000000e+00
  br i1 %6496, label %6497, label %6504, !dx.controlflow.hints !100

; <label>:6497                                    ; preds = %6494
  %6498 = extractvalue %dx.types.CBufRet.f32 %5986, 0
  %6499 = fadd fast float %6498, %5961
  %6500 = call float @dx.op.binary.f32(i32 35, float %6499, float 0.000000e+00)  ; FMax(a,b)
  %6501 = fadd fast float %6500, 0x3F10000000000000
  %6502 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %37, float %5953, float %5957, float undef, float undef, i32 0, i32 0, i32 undef, float %6501)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6503 = extractvalue %dx.types.ResRet.f32 %6502, 0
  br label %6504

; <label>:6504                                    ; preds = %6497, %6494
  %6505 = phi float [ %6503, %6497 ], [ 1.000000e+00, %6494 ]
  %6506 = fsub fast float %6486, %6477
  %6507 = fmul fast float %6506, %6015
  %6508 = fadd fast float %6507, %6477
  %6509 = fsub fast float %6495, %6508
  %6510 = fmul fast float %6509, %6045
  %6511 = fadd fast float %6510, %6508
  %6512 = fsub fast float %6505, %6511
  %6513 = fmul fast float %6512, %6071
  %6514 = fadd fast float %6513, %6511
  %6515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6516 = extractvalue %dx.types.CBufRet.f32 %6515, 2
  %6517 = fcmp fast ogt float %6516, 0.000000e+00
  br i1 %6517, label %6518, label %6558, !dx.controlflow.hints !101

; <label>:6518                                    ; preds = %6504
  %6519 = fcmp fast ugt float %6516, 0.000000e+00
  br i1 %6519, label %6520, label %6555

; <label>:6520                                    ; preds = %6518
  %6521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6522 = extractvalue %dx.types.CBufRet.f32 %6521, 0
  %6523 = extractvalue %dx.types.CBufRet.f32 %6521, 1
  %6524 = extractvalue %dx.types.CBufRet.f32 %6521, 2
  %6525 = extractvalue %dx.types.CBufRet.f32 %6521, 3
  %6526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6527 = extractvalue %dx.types.CBufRet.f32 %6526, 0
  %6528 = extractvalue %dx.types.CBufRet.f32 %6526, 1
  %6529 = extractvalue %dx.types.CBufRet.f32 %6526, 2
  %6530 = extractvalue %dx.types.CBufRet.f32 %6526, 3
  %6531 = extractvalue %dx.types.CBufRet.f32 %6515, 0
  %6532 = extractvalue %dx.types.CBufRet.f32 %6515, 1
  %6533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6534 = extractvalue %dx.types.CBufRet.f32 %6533, 0
  %6535 = extractvalue %dx.types.CBufRet.f32 %6533, 1
  %6536 = extractvalue %dx.types.CBufRet.f32 %6533, 2
  %6537 = fadd fast float %6534, %5930
  %6538 = fadd fast float %6535, %5931
  %6539 = fadd fast float %6536, %5932
  %6540 = fmul fast float %6537, %6522
  %6541 = call float @dx.op.tertiary.f32(i32 46, float %6523, float %6538, float %6540)  ; FMad(a,b,c)
  %6542 = call float @dx.op.tertiary.f32(i32 46, float %6524, float %6539, float %6541)  ; FMad(a,b,c)
  %6543 = fadd fast float %6542, %6525
  %6544 = fmul fast float %6537, %6527
  %6545 = call float @dx.op.tertiary.f32(i32 46, float %6528, float %6538, float %6544)  ; FMad(a,b,c)
  %6546 = call float @dx.op.tertiary.f32(i32 46, float %6529, float %6539, float %6545)  ; FMad(a,b,c)
  %6547 = fadd fast float %6546, %6530
  %6548 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %32, float %6543, float %6547, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6549 = extractvalue %dx.types.ResRet.f32 %6548, 0
  %6550 = fmul fast float %6549, %6532
  %6551 = fadd fast float %6550, %6531
  %6552 = call float @dx.op.unary.f32(i32 7, float %6551)  ; Saturate(value)
  %6553 = fmul fast float %6552, %6516
  %6554 = fsub fast float 1.000000e+00, %6553
  br label %6555

; <label>:6555                                    ; preds = %6520, %6518
  %6556 = phi float [ %6554, %6520 ], [ 1.000000e+00, %6518 ]
  %6557 = fmul fast float %6556, %6514
  br label %6558

; <label>:6558                                    ; preds = %6555, %6504, %5910
  %6559 = phi float [ 1.000000e+00, %5910 ], [ %6557, %6555 ], [ %6514, %6504 ]
  %6560 = call float @dx.op.binary.f32(i32 36, float %6559, float %6559)  ; FMin(a,b)
  %6561 = call float @dx.op.binary.f32(i32 36, float %6559, float %6560)  ; FMin(a,b)
  %6562 = fcmp fast ogt float %6561, 0.000000e+00
  br i1 %6562, label %6563, label %6724, !dx.controlflow.hints !102

; <label>:6563                                    ; preds = %6558
  %6564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6565 = extractvalue %dx.types.CBufRet.f32 %6564, 0
  %6566 = extractvalue %dx.types.CBufRet.f32 %6564, 1
  %6567 = extractvalue %dx.types.CBufRet.f32 %6564, 2
  %6568 = extractvalue %dx.types.CBufRet.f32 %6564, 3
  %6569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6570 = extractvalue %dx.types.CBufRet.f32 %6569, 0
  %6571 = extractvalue %dx.types.CBufRet.f32 %6569, 1
  %6572 = extractvalue %dx.types.CBufRet.f32 %6569, 2
  %6573 = extractvalue %dx.types.CBufRet.f32 %6569, 3
  %6574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6575 = extractvalue %dx.types.CBufRet.f32 %6574, 0
  %6576 = extractvalue %dx.types.CBufRet.f32 %6574, 1
  %6577 = extractvalue %dx.types.CBufRet.f32 %6574, 2
  %6578 = extractvalue %dx.types.CBufRet.f32 %6574, 3
  %6579 = fmul fast float %6565, %5930
  %6580 = call float @dx.op.tertiary.f32(i32 46, float %5931, float %6566, float %6579)  ; FMad(a,b,c)
  %6581 = call float @dx.op.tertiary.f32(i32 46, float %5932, float %6567, float %6580)  ; FMad(a,b,c)
  %6582 = fadd fast float %6581, %6568
  %6583 = fmul fast float %6570, %5930
  %6584 = call float @dx.op.tertiary.f32(i32 46, float %5931, float %6571, float %6583)  ; FMad(a,b,c)
  %6585 = call float @dx.op.tertiary.f32(i32 46, float %5932, float %6572, float %6584)  ; FMad(a,b,c)
  %6586 = fadd fast float %6585, %6573
  %6587 = fmul fast float %6575, %5930
  %6588 = call float @dx.op.tertiary.f32(i32 46, float %5931, float %6576, float %6587)  ; FMad(a,b,c)
  %6589 = call float @dx.op.tertiary.f32(i32 46, float %5932, float %6577, float %6588)  ; FMad(a,b,c)
  %6590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6591 = extractvalue %dx.types.CBufRet.f32 %6590, 0
  %6592 = extractvalue %dx.types.CBufRet.f32 %6590, 1
  %6593 = extractvalue %dx.types.CBufRet.f32 %6590, 3
  %6594 = fmul fast float %6593, %6582
  %6595 = fmul fast float %6593, %6586
  %6596 = fadd fast float %6594, %6591
  %6597 = fadd fast float %6595, %6592
  %6598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6599 = extractvalue %dx.types.CBufRet.f32 %6598, 0
  %6600 = extractvalue %dx.types.CBufRet.f32 %6598, 1
  %6601 = fsub fast float %6596, %6599
  %6602 = fsub fast float %6597, %6600
  %6603 = fcmp fast olt float %6601, 0.000000e+00
  %6604 = fcmp fast olt float %6602, 0.000000e+00
  %6605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6606 = extractvalue %dx.types.CBufRet.f32 %6605, 0
  %6607 = extractvalue %dx.types.CBufRet.f32 %6605, 1
  %6608 = extractvalue %dx.types.CBufRet.f32 %6605, 2
  %6609 = extractvalue %dx.types.CBufRet.f32 %6605, 3
  %6610 = select i1 %6603, float %6606, float %6608
  %6611 = select i1 %6604, float %6607, float %6609
  %6612 = fmul fast float %6610, %6601
  %6613 = fmul fast float %6611, %6602
  %6614 = call float @dx.op.unary.f32(i32 6, float %6612)  ; FAbs(value)
  %6615 = call float @dx.op.unary.f32(i32 6, float %6613)  ; FAbs(value)
  %6616 = extractvalue %dx.types.CBufRet.f32 %5925, 0
  %6617 = call float @dx.op.binary.f32(i32 35, float %6614, float %6615)  ; FMax(a,b)
  %6618 = fsub fast float %6616, %6617
  %6619 = call float @dx.op.unary.f32(i32 7, float %6618)  ; Saturate(value)
  %6620 = fcmp fast ogt float %6619, 0.000000e+00
  br i1 %6620, label %6621, label %6662, !dx.controlflow.hints !103

; <label>:6621                                    ; preds = %6563
  %6622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %35, float %6596, float %6597, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6623 = extractvalue %dx.types.ResRet.f32 %6622, 1
  %6624 = fcmp fast ogt float %6623, 0.000000e+00
  br i1 %6624, label %6625, label %6657

; <label>:6625                                    ; preds = %6621
  %6626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %35, float %6596, float %6597, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6627 = extractvalue %dx.types.ResRet.f32 %6626, 0
  %6628 = extractvalue %dx.types.ResRet.f32 %6626, 1
  %6629 = extractvalue %dx.types.ResRet.f32 %6626, 2
  %6630 = extractvalue %dx.types.ResRet.f32 %6626, 3
  %6631 = fsub fast float 1.000000e+00, %6578
  %6632 = fsub fast float %6631, %6589
  %6633 = fmul fast float %6632, 0x400921FB60000000
  %6634 = fadd fast float %6633, 0x3FF921FB60000000
  %6635 = call float @dx.op.unary.f32(i32 13, float %6634)  ; Sin(value)
  %6636 = fadd fast float %6635, -1.000000e+00
  %6637 = fmul fast float %6636, 0x3FD45F3060000000
  %6638 = fmul fast float %6632, 0x401921FB60000000
  %6639 = fadd fast float %6638, 0x400921FB60000000
  %6640 = call float @dx.op.unary.f32(i32 13, float %6639)  ; Sin(value)
  %6641 = fadd fast float %6640, 0x3E7777A5C0000000
  %6642 = fmul fast float %6641, 0x3FC45F3060000000
  %6643 = fmul fast float %6632, 0x4022D97C80000000
  %6644 = fadd fast float %6643, 0x4012D97C80000000
  %6645 = call float @dx.op.unary.f32(i32 13, float %6644)  ; Sin(value)
  %6646 = fadd fast float %6645, 1.000000e+00
  %6647 = fmul fast float %6646, 0x3FBB2995E0000000
  %6648 = fmul fast float %6632, 0x402921FB60000000
  %6649 = fadd fast float %6648, 0x401921FB60000000
  %6650 = call float @dx.op.unary.f32(i32 13, float %6649)  ; Sin(value)
  %6651 = fadd fast float %6650, 0xBE8777A5C0000000
  %6652 = fmul fast float %6651, 0x3FB45F3060000000
  %6653 = call float @dx.op.dot4.f32(i32 56, float %6627, float %6628, float %6629, float %6630, float %6637, float %6642, float %6647, float %6652)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6654 = fmul fast float %6653, 0xBFF7154760000000
  %6655 = call float @dx.op.unary.f32(i32 21, float %6654)  ; Exp(value)
  %6656 = call float @dx.op.unary.f32(i32 7, float %6655)  ; Saturate(value)
  br label %6657

; <label>:6657                                    ; preds = %6625, %6621
  %6658 = phi float [ %6656, %6625 ], [ 1.000000e+00, %6621 ]
  %6659 = fadd fast float %6658, -1.000000e+00
  %6660 = fmul fast float %6659, %6619
  %6661 = fadd fast float %6660, 1.000000e+00
  br label %6662

; <label>:6662                                    ; preds = %6657, %6563
  %6663 = phi float [ %6661, %6657 ], [ 1.000000e+00, %6563 ]
  %6664 = fmul fast float %6663, %6559
  %6665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6666 = extractvalue %dx.types.CBufRet.f32 %6665, 0
  %6667 = extractvalue %dx.types.CBufRet.f32 %6665, 1
  %6668 = extractvalue %dx.types.CBufRet.f32 %6665, 2
  %6669 = fadd fast float %6666, %142
  %6670 = fadd fast float %6667, %143
  %6671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6672 = extractvalue %dx.types.CBufRet.f32 %6671, 1
  %6673 = fsub fast float -0.000000e+00, %6669
  %6674 = fsub fast float -0.000000e+00, %6670
  %6675 = fsub fast float -0.000000e+00, %144
  %6676 = fsub fast float %6675, %6668
  %6677 = fadd fast float %6676, %6672
  %6678 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6673, float %6674, float %6677)  ; Dot3(ax,ay,az,bx,by,bz)
  %6679 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5911, float %5912, float %5913)  ; Dot3(ax,ay,az,bx,by,bz)
  %6680 = fdiv fast float 1.000000e+00, %6679
  %6681 = fmul fast float %6680, %6678
  %6682 = fmul fast float %5911, %6681
  %6683 = fmul fast float %5912, %6681
  %6684 = fadd fast float %6682, %6669
  %6685 = fadd fast float %6683, %6670
  %6686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6687 = extractvalue %dx.types.CBufRet.f32 %6686, 0
  %6688 = extractvalue %dx.types.CBufRet.f32 %6686, 1
  %6689 = fsub fast float %6684, %6687
  %6690 = fsub fast float %6685, %6688
  %6691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6692 = extractvalue %dx.types.CBufRet.f32 %6691, 2
  %6693 = extractvalue %dx.types.CBufRet.f32 %6691, 3
  %6694 = fmul fast float %6689, %6692
  %6695 = fmul fast float %6690, %6693
  %6696 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6697 = extractvalue %dx.types.CBufRet.i32 %6696, 3
  %6698 = icmp eq i32 %6697, 0
  br i1 %6698, label %6704, label %6699

; <label>:6699                                    ; preds = %6662
  %6700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %6694, float %6695, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6701 = extractvalue %dx.types.ResRet.f32 %6700, 0
  %6702 = extractvalue %dx.types.ResRet.f32 %6700, 1
  %6703 = extractvalue %dx.types.ResRet.f32 %6700, 2
  br label %6709

; <label>:6704                                    ; preds = %6662
  %6705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %6694, float %6695, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6706 = extractvalue %dx.types.ResRet.f32 %6705, 0
  %6707 = extractvalue %dx.types.ResRet.f32 %6705, 1
  %6708 = extractvalue %dx.types.ResRet.f32 %6705, 2
  br label %6709

; <label>:6709                                    ; preds = %6704, %6699
  %6710 = phi float [ %6701, %6699 ], [ %6706, %6704 ]
  %6711 = phi float [ %6702, %6699 ], [ %6707, %6704 ]
  %6712 = phi float [ %6703, %6699 ], [ %6708, %6704 ]
  %6713 = extractvalue %dx.types.CBufRet.f32 %6671, 2
  %6714 = fmul fast float %6713, %6710
  %6715 = extractvalue %dx.types.CBufRet.f32 %6671, 0
  %6716 = fsub fast float %6681, %6715
  %6717 = fsub fast float %6716, %6714
  %6718 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6717)  ; FMax(a,b)
  %6719 = fmul fast float %6718, %6711
  %6720 = call float @dx.op.binary.f32(i32 36, float %6712, float %6719)  ; FMin(a,b)
  %6721 = fmul fast float %6720, 0xBFF7154760000000
  %6722 = call float @dx.op.unary.f32(i32 21, float %6721)  ; Exp(value)
  %6723 = fmul fast float %6664, %6722
  br label %6724

; <label>:6724                                    ; preds = %6709, %6558
  %6725 = phi float [ %6723, %6709 ], [ %6559, %6558 ]
  %6726 = call float @dx.op.binary.f32(i32 36, float %6725, float %6725)  ; FMin(a,b)
  %6727 = call float @dx.op.binary.f32(i32 36, float %6725, float %6726)  ; FMin(a,b)
  %6728 = fcmp fast ogt float %6727, 0.000000e+00
  br i1 %6728, label %6729, label %7053, !dx.controlflow.hints !104

; <label>:6729                                    ; preds = %6724
  %6730 = fmul fast float %6725, %5922
  %6731 = fmul fast float %6725, %5923
  %6732 = fmul fast float %6725, %5924
  %6733 = fsub fast float %5911, %5426
  %6734 = fsub fast float %5912, %5425
  %6735 = fsub fast float %5913, %5424
  %6736 = call float @dx.op.dot3.f32(i32 55, float %6733, float %6734, float %6735, float %6733, float %6734, float %6735)  ; Dot3(ax,ay,az,bx,by,bz)
  %6737 = call float @dx.op.unary.f32(i32 25, float %6736)  ; Rsqrt(value)
  %6738 = fmul fast float %6737, %6733
  %6739 = fmul fast float %6737, %6734
  %6740 = fmul fast float %6737, %6735
  %6741 = call float @dx.op.dot3.f32(i32 55, float %5911, float %5912, float %5913, float %5433, float %5434, float %5435)  ; Dot3(ax,ay,az,bx,by,bz)
  %6742 = call float @dx.op.dot3.f32(i32 55, float %5423, float %5422, float %5421, float %6738, float %6739, float %6740)  ; Dot3(ax,ay,az,bx,by,bz)
  %6743 = call float @dx.op.unary.f32(i32 7, float %6741)  ; Saturate(value)
  %6744 = fmul fast float %6743, %6743
  %6745 = fmul fast float %6744, %5496
  %6746 = call float @dx.op.unary.f32(i32 7, float %6745)  ; Saturate(value)
  %6747 = fmul fast float %6746, %6743
  %6748 = call float @dx.op.dot3.f32(i32 55, float %5433, float %5434, float %5435, float %6738, float %6739, float %6740)  ; Dot3(ax,ay,az,bx,by,bz)
  %6749 = fmul fast float %6748, %6748
  %6750 = call float @dx.op.unary.f32(i32 6, float %6741)  ; FAbs(value)
  %6751 = call float @dx.op.binary.f32(i32 35, float %5879, float 0x3F847AE140000000)  ; FMax(a,b)
  %6752 = fmul fast float %6751, %6751
  %6753 = fmul fast float %6752, %6752
  %6754 = fsub fast float 1.000000e+00, %6753
  %6755 = fmul fast float %5443, %5443
  %6756 = fmul fast float %6755, %6754
  %6757 = fadd fast float %6756, %6753
  %6758 = bitcast float %6757 to i32
  %6759 = ashr i32 %6758, 1
  %6760 = add nsw i32 %6759, 532487669
  %6761 = bitcast i32 %6760 to float
  %6762 = fadd fast float %6761, %5443
  %6763 = call float @dx.op.dot3.f32(i32 55, float %5154, float %5155, float %5156, float %6738, float %6739, float %6740)  ; Dot3(ax,ay,az,bx,by,bz)
  %6764 = fsub fast float 1.000000e+00, %5142
  %6765 = call float @dx.op.binary.f32(i32 35, float %6764, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6766 = fmul fast float %6765, %6765
  %6767 = fmul fast float %6766, %6753
  %6768 = fmul fast float %6763, %6763
  %6769 = fsub fast float 1.000000e+00, %6749
  %6770 = fsub fast float %6769, %6768
  %6771 = fdiv fast float %6768, %6767
  %6772 = fadd fast float %6771, %6749
  %6773 = fdiv fast float %6770, %6753
  %6774 = fadd fast float %6772, %6773
  %6775 = fmul fast float %6750, %6750
  %6776 = fmul fast float %6775, %6754
  %6777 = fadd fast float %6776, %6753
  %6778 = bitcast float %6777 to i32
  %6779 = ashr i32 %6778, 1
  %6780 = add nsw i32 %6779, 532487669
  %6781 = bitcast i32 %6780 to float
  %6782 = fadd fast float %6781, %6750
  %6783 = fmul fast float %6753, %6765
  %6784 = fmul fast float %6774, %6774
  %6785 = fmul fast float %6784, %6783
  %6786 = fmul fast float %6785, %6762
  %6787 = fmul fast float %6786, %6782
  %6788 = fdiv fast float 0x3FF0A00000000000, %6787
  %6789 = fmul fast float %5741, 0x3FF9999980000000
  %6790 = fsub fast float 5.000000e+00, %6789
  %6791 = call float @dx.op.unary.f32(i32 6, float %6742)  ; FAbs(value)
  %6792 = fsub fast float 1.000000e+00, %6791
  %6793 = fmul fast float %5741, 0x41D9660740000000
  %6794 = fadd fast float %6793, 0xC1EFBF8940000000
  %6795 = bitcast float %6792 to i32
  %6796 = sitofp i32 %6795 to float
  %6797 = fmul fast float %6796, %6790
  %6798 = fadd fast float %6794, %6797
  %6799 = fptosi float %6798 to i32
  %6800 = bitcast i32 %6799 to float
  %6801 = fsub fast float 1.000000e+00, %5427
  %6802 = fsub fast float 1.000000e+00, %5428
  %6803 = fsub fast float 1.000000e+00, %5441
  %6804 = fmul fast float %6800, %6801
  %6805 = fmul fast float %6800, %6802
  %6806 = fmul fast float %6800, %6803
  %6807 = fadd fast float %6804, %5427
  %6808 = fadd fast float %6805, %5428
  %6809 = fadd fast float %6806, %5441
  br i1 %5764, label %6810, label %6833

; <label>:6810                                    ; preds = %6729
  %6811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5039, float %6791, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6812 = extractvalue %dx.types.ResRet.f32 %6811, 0
  %6813 = extractvalue %dx.types.ResRet.f32 %6811, 1
  %6814 = extractvalue %dx.types.ResRet.f32 %6811, 2
  %6815 = fadd fast float %6812, -5.000000e-01
  %6816 = fadd fast float %6813, -5.000000e-01
  %6817 = fadd fast float %6814, -5.000000e-01
  %6818 = fmul fast float %5427, 4.000000e+00
  %6819 = fmul fast float %6818, %6801
  %6820 = fmul fast float %6819, %6815
  %6821 = fmul fast float %5428, 4.000000e+00
  %6822 = fmul fast float %6821, %6802
  %6823 = fmul fast float %6822, %6816
  %6824 = fmul fast float %5441, 4.000000e+00
  %6825 = fmul fast float %6824, %6803
  %6826 = fmul fast float %6825, %6817
  %6827 = fadd fast float %6820, %6807
  %6828 = fadd fast float %6823, %6808
  %6829 = fadd fast float %6826, %6809
  %6830 = call float @dx.op.unary.f32(i32 7, float %6827)  ; Saturate(value)
  %6831 = call float @dx.op.unary.f32(i32 7, float %6828)  ; Saturate(value)
  %6832 = call float @dx.op.unary.f32(i32 7, float %6829)  ; Saturate(value)
  br label %6833

; <label>:6833                                    ; preds = %6810, %6729
  %6834 = phi float [ %6830, %6810 ], [ %6807, %6729 ]
  %6835 = phi float [ %6831, %6810 ], [ %6808, %6729 ]
  %6836 = phi float [ %6832, %6810 ], [ %6809, %6729 ]
  %6837 = fmul fast float %6741, 9.843750e-01
  %6838 = fadd fast float %6837, 7.812500e-03
  %6839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %6838, float %5745, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6840 = extractvalue %dx.types.ResRet.f32 %6839, 0
  %6841 = extractvalue %dx.types.ResRet.f32 %6839, 1
  %6842 = extractvalue %dx.types.ResRet.f32 %6839, 2
  %6843 = extractvalue %dx.types.ResRet.f32 %6839, 3
  %6844 = fsub fast float %6842, %6840
  %6845 = fsub fast float %6843, %6841
  %6846 = fmul fast float %6844, %5751
  %6847 = fmul fast float %6845, %5751
  %6848 = fadd fast float %6846, %6840
  %6849 = fadd fast float %6847, %6841
  %6850 = fmul fast float %6848, %5427
  %6851 = fmul fast float %6848, %5428
  %6852 = fmul fast float %6848, %5441
  %6853 = fadd fast float %6850, %6849
  %6854 = fadd fast float %6851, %6849
  %6855 = fadd fast float %6852, %6849
  br i1 %5764, label %6856, label %6879

; <label>:6856                                    ; preds = %6833
  %6857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5039, float %6741, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6858 = extractvalue %dx.types.ResRet.f32 %6857, 0
  %6859 = extractvalue %dx.types.ResRet.f32 %6857, 1
  %6860 = extractvalue %dx.types.ResRet.f32 %6857, 2
  %6861 = fadd fast float %6858, -5.000000e-01
  %6862 = fadd fast float %6859, -5.000000e-01
  %6863 = fadd fast float %6860, -5.000000e-01
  %6864 = fmul fast float %5427, 4.000000e+00
  %6865 = fmul fast float %6864, %6801
  %6866 = fmul fast float %6865, %6861
  %6867 = fmul fast float %5428, 4.000000e+00
  %6868 = fmul fast float %6867, %6802
  %6869 = fmul fast float %6868, %6862
  %6870 = fmul fast float %5441, 4.000000e+00
  %6871 = fmul fast float %6870, %6803
  %6872 = fmul fast float %6871, %6863
  %6873 = fadd fast float %6866, %6853
  %6874 = fadd fast float %6869, %6854
  %6875 = fadd fast float %6872, %6855
  %6876 = call float @dx.op.unary.f32(i32 7, float %6873)  ; Saturate(value)
  %6877 = call float @dx.op.unary.f32(i32 7, float %6874)  ; Saturate(value)
  %6878 = call float @dx.op.unary.f32(i32 7, float %6875)  ; Saturate(value)
  br label %6879

; <label>:6879                                    ; preds = %6856, %6833
  %6880 = phi float [ %6876, %6856 ], [ %6853, %6833 ]
  %6881 = phi float [ %6877, %6856 ], [ %6854, %6833 ]
  %6882 = phi float [ %6878, %6856 ], [ %6855, %6833 ]
  %6883 = call float @dx.op.binary.f32(i32 35, float %6881, float %6882)  ; FMax(a,b)
  %6884 = call float @dx.op.binary.f32(i32 35, float %6880, float %6883)  ; FMax(a,b)
  %6885 = fsub fast float 1.000000e+00, %6884
  %6886 = call float @dx.op.binary.f32(i32 35, float %6750, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6887 = fdiv fast float %4393, %6886
  %6888 = fmul fast float %5819, %6887
  %6889 = fmul fast float %5821, %6887
  %6890 = fmul fast float %5823, %6887
  %6891 = call float @dx.op.unary.f32(i32 21, float %6888)  ; Exp(value)
  %6892 = call float @dx.op.unary.f32(i32 21, float %6889)  ; Exp(value)
  %6893 = call float @dx.op.unary.f32(i32 21, float %6890)  ; Exp(value)
  %6894 = call float @dx.op.unary.f32(i32 7, float %6891)  ; Saturate(value)
  %6895 = call float @dx.op.unary.f32(i32 7, float %6892)  ; Saturate(value)
  %6896 = call float @dx.op.unary.f32(i32 7, float %6893)  ; Saturate(value)
  %6897 = select i1 %5816, float %6894, float 0.000000e+00
  %6898 = select i1 %5817, float %6895, float 0.000000e+00
  %6899 = select i1 %5818, float %6896, float 0.000000e+00
  %6900 = call float @dx.op.dot3.f32(i32 55, float %5911, float %5912, float %5913, float %5440, float %5439, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %6901 = call float @dx.op.unary.f32(i32 7, float %6900)  ; Saturate(value)
  %6902 = fmul fast float %6901, 9.843750e-01
  %6903 = fadd fast float %6902, 7.812500e-03
  %6904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %6903, float %5745, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6905 = extractvalue %dx.types.ResRet.f32 %6904, 0
  %6906 = extractvalue %dx.types.ResRet.f32 %6904, 1
  %6907 = extractvalue %dx.types.ResRet.f32 %6904, 2
  %6908 = extractvalue %dx.types.ResRet.f32 %6904, 3
  %6909 = fsub fast float %6907, %6905
  %6910 = fsub fast float %6908, %6906
  %6911 = fmul fast float %6909, %5751
  %6912 = fmul fast float %6910, %5751
  %6913 = fadd fast float %6911, %6905
  %6914 = fadd fast float %6912, %6906
  %6915 = fmul fast float %6913, %5427
  %6916 = fmul fast float %6913, %5428
  %6917 = fmul fast float %6913, %5441
  %6918 = fadd fast float %6915, %6914
  %6919 = fadd fast float %6916, %6914
  %6920 = fadd fast float %6917, %6914
  br i1 %5764, label %6921, label %6944

; <label>:6921                                    ; preds = %6879
  %6922 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %5039, float %6901, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6923 = extractvalue %dx.types.ResRet.f32 %6922, 0
  %6924 = extractvalue %dx.types.ResRet.f32 %6922, 1
  %6925 = extractvalue %dx.types.ResRet.f32 %6922, 2
  %6926 = fadd fast float %6923, -5.000000e-01
  %6927 = fadd fast float %6924, -5.000000e-01
  %6928 = fadd fast float %6925, -5.000000e-01
  %6929 = fmul fast float %5427, 4.000000e+00
  %6930 = fmul fast float %6929, %6801
  %6931 = fmul fast float %6930, %6926
  %6932 = fmul fast float %5428, 4.000000e+00
  %6933 = fmul fast float %6932, %6802
  %6934 = fmul fast float %6933, %6927
  %6935 = fmul fast float %5441, 4.000000e+00
  %6936 = fmul fast float %6935, %6803
  %6937 = fmul fast float %6936, %6928
  %6938 = fadd fast float %6931, %6918
  %6939 = fadd fast float %6934, %6919
  %6940 = fadd fast float %6937, %6920
  %6941 = call float @dx.op.unary.f32(i32 7, float %6938)  ; Saturate(value)
  %6942 = call float @dx.op.unary.f32(i32 7, float %6939)  ; Saturate(value)
  %6943 = call float @dx.op.unary.f32(i32 7, float %6940)  ; Saturate(value)
  br label %6944

; <label>:6944                                    ; preds = %6921, %6879
  %6945 = phi float [ %6941, %6921 ], [ %6918, %6879 ]
  %6946 = phi float [ %6942, %6921 ], [ %6919, %6879 ]
  %6947 = phi float [ %6943, %6921 ], [ %6920, %6879 ]
  %6948 = call float @dx.op.binary.f32(i32 35, float %6946, float %6947)  ; FMax(a,b)
  %6949 = call float @dx.op.binary.f32(i32 35, float %6945, float %6948)  ; FMax(a,b)
  %6950 = fsub fast float 1.000000e+00, %6949
  %6951 = fmul fast float %5879, %5884
  %6952 = fadd fast float %5886, %6951
  %6953 = call float @dx.op.unary.f32(i32 7, float %6952)  ; Saturate(value)
  %6954 = fsub fast float %5911, %5449
  %6955 = fsub fast float %5912, %5450
  %6956 = fsub fast float %5913, %5451
  %6957 = call float @dx.op.dot3.f32(i32 55, float %6954, float %6955, float %6956, float %6954, float %6955, float %6956)  ; Dot3(ax,ay,az,bx,by,bz)
  %6958 = call float @dx.op.unary.f32(i32 25, float %6957)  ; Rsqrt(value)
  %6959 = fmul fast float %6958, %6954
  %6960 = fmul fast float %6958, %6955
  %6961 = fmul fast float %6958, %6956
  %6962 = call float @dx.op.dot3.f32(i32 55, float %5440, float %5439, float %5438, float %6959, float %6960, float %6961)  ; Dot3(ax,ay,az,bx,by,bz)
  %6963 = fmul fast float %6962, %6962
  %6964 = call float @dx.op.unary.f32(i32 6, float %6901)  ; FAbs(value)
  %6965 = call float @dx.op.binary.f32(i32 35, float %6953, float 0x3F847AE140000000)  ; FMax(a,b)
  %6966 = fmul fast float %6965, %6965
  %6967 = fmul fast float %6966, %6966
  %6968 = fsub fast float 1.000000e+00, %6967
  %6969 = fmul fast float %6755, %6968
  %6970 = fadd fast float %6969, %6967
  %6971 = bitcast float %6970 to i32
  %6972 = ashr i32 %6971, 1
  %6973 = add nsw i32 %6972, 532487669
  %6974 = bitcast i32 %6973 to float
  %6975 = fadd fast float %6974, %5443
  %6976 = call float @dx.op.dot3.f32(i32 55, float %5154, float %5155, float %5156, float %6959, float %6960, float %6961)  ; Dot3(ax,ay,az,bx,by,bz)
  %6977 = fmul fast float %6766, %6967
  %6978 = fmul fast float %6976, %6976
  %6979 = fsub fast float 1.000000e+00, %6963
  %6980 = fsub fast float %6979, %6978
  %6981 = fdiv fast float %6978, %6977
  %6982 = fadd fast float %6981, %6963
  %6983 = fdiv fast float %6980, %6967
  %6984 = fadd fast float %6982, %6983
  %6985 = fmul fast float %6964, %6964
  %6986 = fmul fast float %6985, %6968
  %6987 = fadd fast float %6986, %6967
  %6988 = bitcast float %6987 to i32
  %6989 = ashr i32 %6988, 1
  %6990 = add nsw i32 %6989, 532487669
  %6991 = bitcast i32 %6990 to float
  %6992 = fadd fast float %6991, %6964
  %6993 = fmul fast float %6967, %6765
  %6994 = fmul fast float %6984, %6984
  %6995 = fmul fast float %6994, %6993
  %6996 = fmul fast float %6995, %6975
  %6997 = fmul fast float %6996, %6992
  %6998 = fdiv fast float 0x3FF0A00000000000, %6997
  %6999 = fmul fast float %6901, %6897
  %7000 = fmul fast float %6901, %6898
  %7001 = fmul fast float %6901, %6899
  %7002 = fmul fast float %6999, %6950
  %7003 = fmul fast float %7002, %6998
  %7004 = fmul fast float %7000, %6950
  %7005 = fmul fast float %7004, %6998
  %7006 = fmul fast float %7001, %6950
  %7007 = fmul fast float %7006, %6998
  %7008 = fmul fast float %6834, %6788
  %7009 = fmul fast float %6835, %6788
  %7010 = fmul fast float %6836, %6788
  %7011 = fsub fast float 1.000000e+00, %6742
  %7012 = bitcast float %7011 to i32
  %7013 = sitofp i32 %7012 to float
  %7014 = fmul fast float %7013, 5.000000e+00
  %7015 = fadd fast float %7014, 0xC1EFBF8940000000
  %7016 = fptosi float %7015 to i32
  %7017 = bitcast i32 %7016 to float
  %7018 = fmul fast float %7017, %5040
  %7019 = fmul fast float %6885, %7018
  %7020 = fmul fast float %7019, %5811
  %7021 = fmul fast float %7019, %5812
  %7022 = fmul fast float %7019, %5813
  %7023 = fadd fast float %7020, %7008
  %7024 = fadd fast float %7021, %7009
  %7025 = fadd fast float %7022, %7010
  %7026 = fmul fast float %7023, %6747
  %7027 = fmul fast float %7024, %6747
  %7028 = fmul fast float %7025, %6747
  %7029 = fmul fast float %6747, %6730
  %7030 = fmul fast float %7029, %6885
  %7031 = fmul fast float %6747, %6731
  %7032 = fmul fast float %7031, %6885
  %7033 = fmul fast float %6747, %6732
  %7034 = fmul fast float %7033, %6885
  %7035 = fadd fast float %7026, %7003
  %7036 = fadd fast float %7027, %7005
  %7037 = fadd fast float %7028, %7007
  %7038 = fmul fast float %7035, %6730
  %7039 = fmul fast float %7036, %6731
  %7040 = fmul fast float %7037, %6732
  %7041 = fadd fast float %7030, %5901
  %7042 = fmul fast float %7041, %5036
  %7043 = fadd fast float %7032, %5903
  %7044 = fmul fast float %7043, %5036
  %7045 = fadd fast float %7034, %5905
  %7046 = fmul fast float %7045, %5036
  %7047 = fadd fast float %7038, %5864
  %7048 = fmul fast float %7047, %5036
  %7049 = fadd fast float %7039, %5867
  %7050 = fmul fast float %7049, %5036
  %7051 = fadd fast float %7040, %5870
  %7052 = fmul fast float %7051, %5036
  br label %7053

; <label>:7053                                    ; preds = %6944, %6724, %5791
  %7054 = phi float [ %5865, %5791 ], [ %5865, %6724 ], [ %7048, %6944 ]
  %7055 = phi float [ %5868, %5791 ], [ %5868, %6724 ], [ %7050, %6944 ]
  %7056 = phi float [ %5871, %5791 ], [ %5871, %6724 ], [ %7052, %6944 ]
  %7057 = phi float [ %5902, %5791 ], [ %5902, %6724 ], [ %7042, %6944 ]
  %7058 = phi float [ %5904, %5791 ], [ %5904, %6724 ], [ %7044, %6944 ]
  %7059 = phi float [ %5906, %5791 ], [ %5906, %6724 ], [ %7046, %6944 ]
  %7060 = fmul fast float %5036, %5840
  %7061 = fsub fast float -0.000000e+00, %7060
  %7062 = fmul fast float %5036, %5841
  %7063 = fsub fast float -0.000000e+00, %7062
  %7064 = fmul fast float %5036, %5842
  %7065 = fsub fast float -0.000000e+00, %7064
  %7066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7067 = extractvalue %dx.types.CBufRet.f32 %7066, 0
  %7068 = fmul fast float %7067, %5846
  %7069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7070 = extractvalue %dx.types.CBufRet.f32 %7069, 3
  %7071 = fsub fast float 1.000000e+00, %5043
  %7072 = call float @dx.op.unary.f32(i32 7, float %7071)  ; Saturate(value)
  %7073 = fadd fast float %7059, %5042
  %7074 = fmul fast float %7073, %5043
  %7075 = fmul fast float %7072, %7070
  %7076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7077 = extractvalue %dx.types.CBufRet.f32 %7076, 3
  %7078 = fmul fast float %7057, %5430
  %7079 = fmul fast float %7058, %5431
  %7080 = fmul fast float %7059, %5432
  %7081 = fcmp fast ogt float %78, %164
  %7082 = and i1 %7081, %5159
  %7083 = or i1 %5238, %7082
  %7084 = icmp eq i32 %5158, 2
  %7085 = fcmp fast ole float %78, %164
  %7086 = and i1 %7085, %7084
  %7087 = or i1 %7086, %7083
  br i1 %7082, label %7088, label %7345

; <label>:7088                                    ; preds = %7053
  %7089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7090 = extractvalue %dx.types.CBufRet.f32 %7089, 2
  %7091 = extractvalue %dx.types.CBufRet.f32 %7089, 3
  %7092 = fmul fast float %7090, %87
  %7093 = fmul fast float %7091, %88
  %7094 = call float @dx.op.unary.f32(i32 7, float %7092)  ; Saturate(value)
  %7095 = call float @dx.op.unary.f32(i32 7, float %7093)  ; Saturate(value)
  %7096 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7094, float %7095, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7097 = extractvalue %dx.types.ResRet.f32 %7096, 0
  %7098 = extractvalue %dx.types.ResRet.f32 %7096, 1
  %7099 = extractvalue %dx.types.ResRet.f32 %7096, 2
  %7100 = extractvalue %dx.types.ResRet.f32 %7096, 3
  %7101 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7094, float %7095, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7102 = extractvalue %dx.types.ResRet.f32 %7101, 0
  %7103 = extractvalue %dx.types.ResRet.f32 %7101, 1
  %7104 = extractvalue %dx.types.ResRet.f32 %7101, 2
  %7105 = extractvalue %dx.types.ResRet.f32 %7101, 3
  %7106 = call float @dx.op.binary.f32(i32 35, float %7098, float %7099)  ; FMax(a,b)
  %7107 = call float @dx.op.binary.f32(i32 35, float %7097, float %7106)  ; FMax(a,b)
  %7108 = call float @dx.op.binary.f32(i32 35, float %7107, float %7100)  ; FMax(a,b)
  %7109 = call float @dx.op.binary.f32(i32 36, float %7103, float %7104)  ; FMin(a,b)
  %7110 = call float @dx.op.binary.f32(i32 36, float %7102, float %7109)  ; FMin(a,b)
  %7111 = call float @dx.op.binary.f32(i32 36, float %7110, float %7105)  ; FMin(a,b)
  %7112 = fmul fast float %7108, 2.550000e+02
  %7113 = fadd fast float %7112, 0x3F70101020000000
  %7114 = fptoui float %7113 to i32
  %7115 = fmul fast float %7111, 2.550000e+02
  %7116 = fadd fast float %7115, 0x3F70101020000000
  %7117 = fptoui float %7116 to i32
  %7118 = icmp ult i32 %7114, %7117
  br i1 %7118, label %7119, label %7287

; <label>:7119                                    ; preds = %7088
  %7120 = fcmp fast ogt float %77, 9.843750e-01
  %7121 = fadd fast float %78, -4.000000e+00
  %7122 = select i1 %7120, float -4.000000e+00, float %7121
  %7123 = call float @dx.op.binary.f32(i32 35, float %7122, float 0.000000e+00)  ; FMax(a,b)
  %7124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7125 = extractvalue %dx.types.CBufRet.f32 %7124, 0
  %7126 = fadd fast float %7125, %7123
  %7127 = extractvalue %dx.types.CBufRet.f32 %7124, 2
  %7128 = fmul fast float %7126, %7127
  %7129 = call float @dx.op.unary.f32(i32 23, float %7128)  ; Log(value)
  %7130 = extractvalue %dx.types.CBufRet.f32 %7124, 3
  %7131 = fmul fast float %7130, %7129
  %7132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7133 = extractvalue %dx.types.CBufRet.f32 %7132, 2
  %7134 = fmul fast float %7131, %7133
  %7135 = call float @dx.op.unary.f32(i32 7, float %7134)  ; Saturate(value)
  %7136 = uitofp i32 %7114 to float
  %7137 = uitofp i32 %7117 to float
  %7138 = fadd fast float %7136, 5.000000e-01
  %7139 = fadd fast float %7137, 5.000000e-01
  %7140 = fmul fast float %7133, %7138
  %7141 = fmul fast float %7133, %7139
  %7142 = fadd fast float %7140, 0x3F0FFB4800000000
  %7143 = fadd fast float %7141, 0xBF0FFB4800000000
  %7144 = call float @dx.op.binary.f32(i32 35, float %7135, float %7142)  ; FMax(a,b)
  %7145 = call float @dx.op.binary.f32(i32 36, float %7144, float %7143)  ; FMin(a,b)
  %7146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7147 = extractvalue %dx.types.CBufRet.f32 %7146, 1
  %7148 = extractvalue %dx.types.CBufRet.f32 %7146, 2
  %7149 = extractvalue %dx.types.CBufRet.f32 %7146, 0
  %7150 = fmul fast float %7147, %7145
  %7151 = fadd fast float %7149, %7150
  %7152 = fadd fast float %7149, %7148
  %7153 = fsub fast float %7147, %7148
  %7154 = fadd fast float %7153, %7149
  %7155 = call float @dx.op.binary.f32(i32 35, float %7151, float %7152)  ; FMax(a,b)
  %7156 = call float @dx.op.binary.f32(i32 36, float %7155, float %7154)  ; FMin(a,b)
  %7157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %7094, float %7095, float %7156, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7158 = extractvalue %dx.types.ResRet.f32 %7157, 0
  %7159 = extractvalue %dx.types.ResRet.f32 %7157, 1
  %7160 = extractvalue %dx.types.ResRet.f32 %7157, 2
  %7161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7162 = extractvalue %dx.types.CBufRet.i32 %7161, 0
  %7163 = extractvalue %dx.types.CBufRet.i32 %7161, 1
  %7164 = uitofp i32 %7162 to float
  %7165 = uitofp i32 %7163 to float
  %7166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7167 = extractvalue %dx.types.CBufRet.f32 %7166, 0
  %7168 = extractvalue %dx.types.CBufRet.f32 %7166, 1
  %7169 = fmul fast float %7164, %7094
  %7170 = fmul fast float %7165, %7095
  %7171 = fadd fast float %7169, -5.000000e-01
  %7172 = fadd fast float %7170, -5.000000e-01
  %7173 = call float @dx.op.unary.f32(i32 22, float %7171)  ; Frc(value)
  %7174 = call float @dx.op.unary.f32(i32 22, float %7172)  ; Frc(value)
  %7175 = fmul fast float %7173, %7173
  %7176 = fmul fast float %7175, %7173
  %7177 = fsub fast float 3.000000e+00, %7173
  %7178 = fmul fast float %7175, %7177
  %7179 = fmul fast float %7173, 3.000000e+00
  %7180 = fmul fast float %7176, 3.000000e+00
  %7181 = fmul fast float %7175, 6.000000e+00
  %7182 = fsub fast float %7180, %7181
  %7183 = fadd fast float %7182, 4.000000e+00
  %7184 = fmul fast float %7183, 0x3FC5555560000000
  %7185 = fmul fast float %7176, -3.000000e+00
  %7186 = fadd fast float %7175, %7173
  %7187 = fmul fast float %7186, 3.000000e+00
  %7188 = fadd fast float %7185, 1.000000e+00
  %7189 = fadd fast float %7188, %7187
  %7190 = fmul fast float %7176, 0x3FC5555560000000
  %7191 = fmul fast float %7174, %7174
  %7192 = fmul fast float %7191, %7174
  %7193 = fsub fast float 3.000000e+00, %7174
  %7194 = fmul fast float %7191, %7193
  %7195 = fmul fast float %7174, 3.000000e+00
  %7196 = fmul fast float %7192, 3.000000e+00
  %7197 = fmul fast float %7191, 6.000000e+00
  %7198 = fsub fast float %7196, %7197
  %7199 = fadd fast float %7198, 4.000000e+00
  %7200 = fmul fast float %7199, 0x3FC5555560000000
  %7201 = fmul fast float %7192, -3.000000e+00
  %7202 = fadd fast float %7191, %7174
  %7203 = fmul fast float %7202, 3.000000e+00
  %7204 = fadd fast float %7201, 1.000000e+00
  %7205 = fadd fast float %7204, %7203
  %7206 = fmul fast float %7192, 0x3FC5555560000000
  %7207 = fadd fast float %7173, 1.000000e+00
  %7208 = fsub fast float 1.000000e+00, %7179
  %7209 = fadd fast float %7208, %7178
  %7210 = fadd fast float %7209, %7183
  %7211 = fmul fast float %7210, 0x3FC5555560000000
  %7212 = fdiv fast float %7184, %7211
  %7213 = fsub fast float %7207, %7212
  %7214 = fsub fast float 1.000000e+00, %7173
  %7215 = fadd fast float %7189, %7176
  %7216 = fmul fast float %7215, 0x3FC5555560000000
  %7217 = fdiv fast float %7190, %7216
  %7218 = fadd fast float %7214, %7217
  %7219 = fadd fast float %7174, 1.000000e+00
  %7220 = fsub fast float 1.000000e+00, %7195
  %7221 = fadd fast float %7220, %7194
  %7222 = fadd fast float %7221, %7199
  %7223 = fmul fast float %7222, 0x3FC5555560000000
  %7224 = fdiv fast float %7200, %7223
  %7225 = fsub fast float %7219, %7224
  %7226 = fsub fast float 1.000000e+00, %7174
  %7227 = fadd fast float %7205, %7192
  %7228 = fmul fast float %7227, 0x3FC5555560000000
  %7229 = fdiv fast float %7206, %7228
  %7230 = fadd fast float %7229, %7226
  %7231 = fmul fast float %7213, %7167
  %7232 = fsub fast float %7094, %7231
  %7233 = fmul fast float %7218, %7167
  %7234 = fadd fast float %7233, %7094
  %7235 = fmul fast float %7230, %7168
  %7236 = fadd fast float %7235, %7095
  %7237 = fmul fast float %7225, %7168
  %7238 = fsub fast float %7095, %7237
  %7239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7232, float %7238, float %7156, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7240 = extractvalue %dx.types.ResRet.f32 %7239, 0
  %7241 = extractvalue %dx.types.ResRet.f32 %7239, 1
  %7242 = extractvalue %dx.types.ResRet.f32 %7239, 2
  %7243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7234, float %7238, float %7156, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7244 = extractvalue %dx.types.ResRet.f32 %7243, 0
  %7245 = extractvalue %dx.types.ResRet.f32 %7243, 1
  %7246 = extractvalue %dx.types.ResRet.f32 %7243, 2
  %7247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7232, float %7236, float %7156, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7248 = extractvalue %dx.types.ResRet.f32 %7247, 0
  %7249 = extractvalue %dx.types.ResRet.f32 %7247, 1
  %7250 = extractvalue %dx.types.ResRet.f32 %7247, 2
  %7251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7234, float %7236, float %7156, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7252 = extractvalue %dx.types.ResRet.f32 %7251, 0
  %7253 = extractvalue %dx.types.ResRet.f32 %7251, 1
  %7254 = extractvalue %dx.types.ResRet.f32 %7251, 2
  %7255 = fsub fast float %7248, %7240
  %7256 = fsub fast float %7249, %7241
  %7257 = fsub fast float %7250, %7242
  %7258 = fmul fast float %7255, %7228
  %7259 = fmul fast float %7256, %7228
  %7260 = fmul fast float %7257, %7228
  %7261 = fadd fast float %7258, %7240
  %7262 = fadd fast float %7259, %7241
  %7263 = fadd fast float %7260, %7242
  %7264 = fsub fast float %7252, %7244
  %7265 = fsub fast float %7253, %7245
  %7266 = fsub fast float %7254, %7246
  %7267 = fmul fast float %7264, %7228
  %7268 = fmul fast float %7265, %7228
  %7269 = fmul fast float %7266, %7228
  %7270 = fsub fast float %7244, %7261
  %7271 = fadd fast float %7270, %7267
  %7272 = fsub fast float %7245, %7262
  %7273 = fadd fast float %7272, %7268
  %7274 = fsub fast float %7246, %7263
  %7275 = fadd fast float %7274, %7269
  %7276 = fmul fast float %7271, %7216
  %7277 = fmul fast float %7273, %7216
  %7278 = fmul fast float %7275, %7216
  %7279 = fadd fast float %7276, %7261
  %7280 = fadd fast float %7277, %7262
  %7281 = fadd fast float %7278, %7263
  %7282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7283 = extractvalue %dx.types.CBufRet.f32 %7282, 1
  %7284 = fmul fast float %7279, %7283
  %7285 = fmul fast float %7280, %7283
  %7286 = fmul fast float %7281, %7283
  br label %7287

; <label>:7287                                    ; preds = %7119, %7088
  %7288 = phi float [ %7158, %7119 ], [ 1.000000e+00, %7088 ]
  %7289 = phi float [ %7159, %7119 ], [ 1.000000e+00, %7088 ]
  %7290 = phi float [ %7160, %7119 ], [ 1.000000e+00, %7088 ]
  %7291 = phi float [ %7284, %7119 ], [ 0.000000e+00, %7088 ]
  %7292 = phi float [ %7285, %7119 ], [ 0.000000e+00, %7088 ]
  %7293 = phi float [ %7286, %7119 ], [ 0.000000e+00, %7088 ]
  %7294 = fmul fast float %7291, %7061
  %7295 = fmul fast float %7292, %7063
  %7296 = fmul fast float %7293, %7065
  %7297 = call float @dx.op.dot3.f32(i32 55, float %7288, float %7289, float %7290, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7298 = call float @dx.op.dot3.f32(i32 55, float %7294, float %7295, float %7296, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7299 = select i1 %203, float %7297, float %7288
  %7300 = select i1 %203, float %7297, float %7289
  %7301 = select i1 %203, float 1.000000e+00, float %7290
  %7302 = select i1 %203, float %7298, float %7294
  %7303 = select i1 %203, float 0.000000e+00, float %7295
  %7304 = select i1 %203, float 0.000000e+00, float %7296
  %7305 = fmul fast float %7299, %7078
  %7306 = fmul fast float %7300, %7079
  %7307 = fmul fast float %7301, %7080
  %7308 = fadd fast float %7305, %7302
  %7309 = fadd fast float %7306, %7303
  %7310 = fadd fast float %7304, %7307
  %7311 = fmul fast float %7299, %7054
  %7312 = fmul fast float %7300, %7055
  %7313 = fmul fast float %7301, %7056
  %7314 = fmul fast float %112, %7090
  %7315 = fmul fast float %114, %7091
  %7316 = fsub fast float 1.000000e+00, %7314
  %7317 = fsub fast float 1.000000e+00, %7315
  %7318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7319 = extractvalue %dx.types.CBufRet.f32 %7318, 0
  %7320 = extractvalue %dx.types.CBufRet.f32 %7318, 1
  %7321 = extractvalue %dx.types.CBufRet.f32 %7318, 2
  %7322 = fmul fast float %7316, %7319
  %7323 = fmul fast float %7316, %7320
  %7324 = fmul fast float %7316, %7321
  %7325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7326 = extractvalue %dx.types.CBufRet.f32 %7325, 0
  %7327 = extractvalue %dx.types.CBufRet.f32 %7325, 1
  %7328 = extractvalue %dx.types.CBufRet.f32 %7325, 2
  %7329 = fmul fast float %7317, %7326
  %7330 = fmul fast float %7317, %7327
  %7331 = fmul fast float %7317, %7328
  %7332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7333 = extractvalue %dx.types.CBufRet.f32 %7332, 0
  %7334 = extractvalue %dx.types.CBufRet.f32 %7332, 1
  %7335 = extractvalue %dx.types.CBufRet.f32 %7332, 2
  %7336 = fadd fast float %7329, %7333
  %7337 = fadd fast float %7336, %7322
  %7338 = fadd fast float %7330, %7334
  %7339 = fadd fast float %7338, %7323
  %7340 = fadd fast float %7331, %7335
  %7341 = fadd fast float %7340, %7324
  %7342 = fmul fast float %7337, %164
  %7343 = fmul fast float %7339, %164
  %7344 = fmul fast float %7341, %164
  br label %7345

; <label>:7345                                    ; preds = %7287, %7053
  %7346 = phi float [ %7342, %7287 ], [ %142, %7053 ]
  %7347 = phi float [ %7343, %7287 ], [ %143, %7053 ]
  %7348 = phi float [ %7344, %7287 ], [ %144, %7053 ]
  %7349 = phi float [ %164, %7287 ], [ %78, %7053 ]
  %7350 = phi float [ %7308, %7287 ], [ %7078, %7053 ]
  %7351 = phi float [ %7309, %7287 ], [ %7079, %7053 ]
  %7352 = phi float [ %7310, %7287 ], [ %7080, %7053 ]
  %7353 = phi float [ %7311, %7287 ], [ %7054, %7053 ]
  %7354 = phi float [ %7312, %7287 ], [ %7055, %7053 ]
  %7355 = phi float [ %7313, %7287 ], [ %7056, %7053 ]
  %7356 = phi float [ %7288, %7287 ], [ 1.000000e+00, %7053 ]
  br i1 %7087, label %8511, label %7357

; <label>:7357                                    ; preds = %7345
  %7358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7359 = extractvalue %dx.types.CBufRet.f32 %7358, 0
  %7360 = extractvalue %dx.types.CBufRet.f32 %7358, 1
  %7361 = extractvalue %dx.types.CBufRet.f32 %7358, 2
  %7362 = extractvalue %dx.types.CBufRet.f32 %7358, 3
  %7363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7364 = extractvalue %dx.types.CBufRet.f32 %7363, 0
  %7365 = extractvalue %dx.types.CBufRet.f32 %7363, 1
  %7366 = extractvalue %dx.types.CBufRet.f32 %7363, 2
  %7367 = extractvalue %dx.types.CBufRet.f32 %7363, 3
  %7368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7369 = extractvalue %dx.types.CBufRet.f32 %7368, 0
  %7370 = extractvalue %dx.types.CBufRet.f32 %7368, 1
  %7371 = extractvalue %dx.types.CBufRet.f32 %7368, 2
  %7372 = extractvalue %dx.types.CBufRet.f32 %7368, 3
  %7373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7374 = extractvalue %dx.types.CBufRet.f32 %7373, 0
  %7375 = extractvalue %dx.types.CBufRet.f32 %7373, 1
  %7376 = extractvalue %dx.types.CBufRet.f32 %7373, 2
  %7377 = extractvalue %dx.types.CBufRet.f32 %7373, 3
  %7378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7379 = extractvalue %dx.types.CBufRet.f32 %7378, 3
  %7380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7381 = extractvalue %dx.types.CBufRet.f32 %7380, 3
  %7382 = extractvalue %dx.types.CBufRet.f32 %7380, 0
  %7383 = extractvalue %dx.types.CBufRet.f32 %7380, 1
  %7384 = extractvalue %dx.types.CBufRet.f32 %7380, 2
  %7385 = fcmp fast olt float %7384, -5.000000e-01
  %7386 = call float @dx.op.dot3.f32(i32 55, float %7346, float %7347, float %7348, float %7346, float %7347, float %7348)  ; Dot3(ax,ay,az,bx,by,bz)
  %7387 = call float @dx.op.unary.f32(i32 25, float %7386)  ; Rsqrt(value)
  %7388 = fmul fast float %7387, %7386
  %7389 = fmul fast float %7387, %7346
  %7390 = fmul fast float %7387, %7347
  %7391 = fmul fast float %7387, %7348
  %7392 = fadd fast float %7388, %7362
  %7393 = call float @dx.op.dot3.f32(i32 55, float %7389, float %7390, float %7391, float %7359, float %7360, float %7361)  ; Dot3(ax,ay,az,bx,by,bz)
  %7394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7395 = extractvalue %dx.types.CBufRet.i32 %7394, 1
  %7396 = and i32 %7395, 1
  %7397 = icmp ne i32 %7396, 0
  %7398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7399 = extractvalue %dx.types.CBufRet.f32 %7398, 2
  %7400 = fcmp fast ogt float %7399, 0.000000e+00
  %7401 = and i1 %7397, %7400
  br i1 %7401, label %7402, label %7808, !dx.controlflow.hints !105

; <label>:7402                                    ; preds = %7357
  %7403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7404 = extractvalue %dx.types.CBufRet.f32 %7403, 3
  %7405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7406 = extractvalue %dx.types.CBufRet.f32 %7405, 2
  %7407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7408 = extractvalue %dx.types.CBufRet.f32 %7407, 2
  %7409 = fsub fast float %7406, %7408
  %7410 = and i32 %7395, 2
  %7411 = extractvalue %dx.types.CBufRet.i32 %7394, 0
  %7412 = call i32 @dx.op.binary.i32(i32 40, i32 %7411, i32 3)  ; UMin(a,b)
  %7413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7414 = extractvalue %dx.types.CBufRet.f32 %7413, 0
  %7415 = extractvalue %dx.types.CBufRet.f32 %7413, 1
  %7416 = extractvalue %dx.types.CBufRet.f32 %7407, 0
  %7417 = extractvalue %dx.types.CBufRet.f32 %7407, 1
  %7418 = fsub fast float %7414, %7416
  %7419 = fsub fast float %7415, %7417
  %7420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7421 = extractvalue %dx.types.CBufRet.f32 %7420, 0
  %7422 = fcmp fast ogt float %7421, 0.000000e+00
  %7423 = fsub fast float -0.000000e+00, %7418
  %7424 = fsub fast float -0.000000e+00, %7419
  %7425 = call float @dx.op.dot2.f32(i32 54, float %7389, float %7390, float %7389, float %7390)  ; Dot2(ax,ay,bx,by)
  %7426 = call float @dx.op.dot2.f32(i32 54, float %7389, float %7390, float %7423, float %7424)  ; Dot2(ax,ay,bx,by)
  %7427 = fmul fast float %7426, 2.000000e+00
  %7428 = call float @dx.op.dot2.f32(i32 54, float %7423, float %7424, float %7423, float %7424)  ; Dot2(ax,ay,bx,by)
  %7429 = fmul fast float %7421, %7421
  %7430 = fsub fast float %7428, %7429
  %7431 = fmul fast float %7427, %7427
  %7432 = fmul fast float %7425, 4.000000e+00
  %7433 = fmul fast float %7432, %7430
  %7434 = fsub fast float %7431, %7433
  %7435 = fcmp fast ogt float %7434, 0.000000e+00
  br i1 %7435, label %7436, label %7451

; <label>:7436                                    ; preds = %7402
  %7437 = fcmp fast ogt float %7427, 0.000000e+00
  %7438 = call float @dx.op.unary.f32(i32 24, float %7434)  ; Sqrt(value)
  %7439 = fsub fast float -0.000000e+00, %7438
  %7440 = select i1 %7437, float %7438, float %7439
  %7441 = fadd fast float %7440, %7427
  %7442 = fmul float %7441, -5.000000e-01
  %7443 = fdiv fast float %7442, %7425
  %7444 = call float @dx.op.binary.f32(i32 35, float %7443, float 0.000000e+00)  ; FMax(a,b)
  %7445 = call float @dx.op.binary.f32(i32 36, float %7388, float %7444)  ; FMin(a,b)
  %7446 = fdiv fast float %7430, %7442
  %7447 = call float @dx.op.binary.f32(i32 35, float %7446, float 0.000000e+00)  ; FMax(a,b)
  %7448 = call float @dx.op.binary.f32(i32 36, float %7388, float %7447)  ; FMin(a,b)
  %7449 = call float @dx.op.binary.f32(i32 36, float %7445, float %7448)  ; FMin(a,b)
  %7450 = call float @dx.op.binary.f32(i32 35, float %7445, float %7448)  ; FMax(a,b)
  br label %7451

; <label>:7451                                    ; preds = %7436, %7402
  %7452 = phi float [ %7450, %7436 ], [ -1.000000e+00, %7402 ]
  %7453 = phi float [ %7449, %7436 ], [ -1.000000e+00, %7402 ]
  %7454 = phi i1 [ true, %7436 ], [ false, %7402 ]
  %7455 = and i1 %7422, %7454
  br i1 %7455, label %7456, label %7458

; <label>:7456                                    ; preds = %7451
  %7457 = fcmp fast oeq float %7453, %7452
  br i1 %7457, label %7761, label %7459

; <label>:7458                                    ; preds = %7451
  br i1 %7422, label %7761, label %7459

; <label>:7459                                    ; preds = %7458, %7456
  %7460 = phi float [ %7388, %7458 ], [ %7452, %7456 ]
  %7461 = phi float [ 0.000000e+00, %7458 ], [ %7453, %7456 ]
  %7462 = icmp ne i32 %7410, 0
  %7463 = fmul fast float %7460, %7391
  %7464 = fadd fast float %7463, %7404
  %7465 = fmul fast float %7464, %7460
  %7466 = select i1 %7462, float 0.000000e+00, float %7465
  %7467 = fcmp fast oeq float %7391, 0.000000e+00
  %7468 = fdiv fast float %7409, %7391
  %7469 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7468)  ; FMax(a,b)
  %7470 = select i1 %7467, float %7460, float %7469
  %7471 = call float @dx.op.binary.f32(i32 36, float %7460, float %7470)  ; FMin(a,b)
  %7472 = fcmp fast ogt float %7391, 0.000000e+00
  %7473 = fcmp fast olt float %7409, 0.000000e+00
  br i1 %7472, label %7474, label %7531

; <label>:7474                                    ; preds = %7459
  %7475 = icmp eq i32 %7410, 0
  br i1 %7473, label %7476, label %7520

; <label>:7476                                    ; preds = %7474
  %7477 = select i1 %7475, float %7460, float 0.000000e+00
  %7478 = fsub fast float -0.000000e+00, %7477
  %7479 = call float @dx.op.unary.f32(i32 6, float %7478)  ; FAbs(value)
  %7480 = fmul fast float %7477, %7391
  %7481 = fadd fast float %7480, %7404
  %7482 = fmul fast float %7479, %7481
  %7483 = fsub fast float %7466, %7482
  %7484 = fsub fast float %7460, %7479
  %7485 = select i1 %7475, float %7484, float 0.000000e+00
  %7486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7487 = extractvalue %dx.types.CBufRet.f32 %7486, 0
  %7488 = extractvalue %dx.types.CBufRet.f32 %7486, 1
  %7489 = extractvalue %dx.types.CBufRet.f32 %7486, 2
  %7490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7491 = extractvalue %dx.types.CBufRet.f32 %7490, 0
  %7492 = extractvalue %dx.types.CBufRet.f32 %7490, 1
  %7493 = extractvalue %dx.types.CBufRet.f32 %7490, 2
  %7494 = extractvalue %dx.types.CBufRet.f32 %7490, 3
  %7495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7496 = extractvalue %dx.types.CBufRet.f32 %7495, 3
  %7497 = call float @dx.op.binary.f32(i32 36, float %7483, float %7496)  ; FMin(a,b)
  %7498 = fmul fast float %7494, %7485
  %7499 = call float @dx.op.unary.f32(i32 7, float %7498)  ; Saturate(value)
  %7500 = fsub fast float %7491, %7487
  %7501 = fsub fast float %7492, %7488
  %7502 = fsub fast float %7493, %7489
  %7503 = fmul fast float %7499, %7500
  %7504 = fmul fast float %7499, %7501
  %7505 = fmul fast float %7499, %7502
  %7506 = fadd fast float %7503, %7487
  %7507 = fadd fast float %7504, %7488
  %7508 = fadd fast float %7505, %7489
  %7509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7510 = extractvalue %dx.types.CBufRet.f32 %7509, 0
  %7511 = extractvalue %dx.types.CBufRet.f32 %7509, 1
  %7512 = fadd fast float %7511, %7510
  %7513 = call float @dx.op.unary.f32(i32 7, float %7512)  ; Saturate(value)
  %7514 = extractvalue %dx.types.CBufRet.f32 %7509, 2
  %7515 = extractvalue %dx.types.CBufRet.f32 %7509, 3
  %7516 = fadd fast float %7515, %7514
  %7517 = call float @dx.op.unary.f32(i32 7, float %7516)  ; Saturate(value)
  %7518 = fmul fast float %7513, %7497
  %7519 = fmul fast float %7518, %7517
  br label %7761

; <label>:7520                                    ; preds = %7474
  br i1 %7475, label %7521, label %7542

; <label>:7521                                    ; preds = %7520
  %7522 = call float @dx.op.binary.f32(i32 36, float %7471, float %7461)  ; FMin(a,b)
  %7523 = fsub fast float %7471, %7522
  %7524 = fsub fast float %7523, %7460
  %7525 = call float @dx.op.unary.f32(i32 6, float %7524)  ; FAbs(value)
  %7526 = fadd fast float %7523, %7460
  %7527 = fmul fast float %7526, %7391
  %7528 = fadd fast float %7527, %7404
  %7529 = fmul fast float %7528, %7525
  %7530 = fsub fast float %7466, %7529
  br label %7542

; <label>:7531                                    ; preds = %7459
  br i1 %7473, label %7532, label %7542

; <label>:7532                                    ; preds = %7531
  %7533 = call float @dx.op.binary.f32(i32 35, float %7461, float %7471)  ; FMax(a,b)
  %7534 = icmp eq i32 %7410, 0
  %7535 = select i1 %7534, float %7471, float 0.000000e+00
  %7536 = fsub fast float -0.000000e+00, %7535
  %7537 = call float @dx.op.unary.f32(i32 6, float %7536)  ; FAbs(value)
  %7538 = fmul fast float %7535, %7391
  %7539 = fadd fast float %7538, %7404
  %7540 = fmul fast float %7537, %7539
  %7541 = fsub fast float %7466, %7540
  br label %7542

; <label>:7542                                    ; preds = %7532, %7531, %7521, %7520
  %7543 = phi float [ %7461, %7520 ], [ %7461, %7521 ], [ %7533, %7532 ], [ %7461, %7531 ]
  %7544 = phi float [ 0.000000e+00, %7520 ], [ %7525, %7521 ], [ %7537, %7532 ], [ 0.000000e+00, %7531 ]
  %7545 = phi float [ %7466, %7520 ], [ %7530, %7521 ], [ %7541, %7532 ], [ %7466, %7531 ]
  %7546 = phi float [ %7471, %7520 ], [ %7471, %7521 ], [ %7460, %7532 ], [ %7460, %7531 ]
  %7547 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 0
  store float -1.000000e+00, float* %7547, align 4, !tbaa !106, !noalias !108
  %7548 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 1
  store float -1.000000e+00, float* %7548, align 4, !tbaa !106, !noalias !108
  %7549 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 2
  store float -1.000000e+00, float* %7549, align 4, !tbaa !106, !noalias !108
  %7550 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 0
  store float -1.000000e+00, float* %7550, align 4, !tbaa !106, !noalias !108
  %7551 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 1
  store float -1.000000e+00, float* %7551, align 4, !tbaa !106, !noalias !108
  %7552 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 2
  store float -1.000000e+00, float* %7552, align 4, !tbaa !106, !noalias !108
  %7553 = icmp sgt i32 %7412, 0
  br i1 %7553, label %7554, label %7615

; <label>:7554                                    ; preds = %7542
  br label %7555

; <label>:7555                                    ; preds = %7604, %7554
  %7556 = phi i32 [ %7605, %7604 ], [ 0, %7554 ]
  %7557 = phi i32 [ %7606, %7604 ], [ 0, %7554 ]
  %7558 = add nuw i32 %7557, 171
  %7559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %7558)  ; CBufferLoadLegacy(handle,regIndex)
  %7560 = extractvalue %dx.types.CBufRet.f32 %7559, 0
  %7561 = extractvalue %dx.types.CBufRet.f32 %7559, 1
  %7562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7563 = extractvalue %dx.types.CBufRet.f32 %7562, 0
  %7564 = extractvalue %dx.types.CBufRet.f32 %7562, 1
  %7565 = fsub fast float %7560, %7563
  %7566 = fsub fast float %7561, %7564
  %7567 = extractvalue %dx.types.CBufRet.f32 %7559, 2
  %7568 = fsub fast float -0.000000e+00, %7565
  %7569 = fsub fast float -0.000000e+00, %7566
  %7570 = call float @dx.op.dot2.f32(i32 54, float %7389, float %7390, float %7568, float %7569)  ; Dot2(ax,ay,bx,by)
  %7571 = fmul fast float %7570, 2.000000e+00
  %7572 = call float @dx.op.dot2.f32(i32 54, float %7568, float %7569, float %7568, float %7569)  ; Dot2(ax,ay,bx,by)
  %7573 = fmul fast float %7567, %7567
  %7574 = fsub fast float %7572, %7573
  %7575 = fmul fast float %7571, %7571
  %7576 = fmul fast float %7432, %7574
  %7577 = fsub fast float %7575, %7576
  %7578 = fcmp fast ogt float %7577, 0.000000e+00
  br i1 %7578, label %7579, label %7594

; <label>:7579                                    ; preds = %7555
  %7580 = fcmp fast ogt float %7571, 0.000000e+00
  %7581 = call float @dx.op.unary.f32(i32 24, float %7577)  ; Sqrt(value)
  %7582 = fsub fast float -0.000000e+00, %7581
  %7583 = select i1 %7580, float %7581, float %7582
  %7584 = fadd fast float %7583, %7571
  %7585 = fmul float %7584, -5.000000e-01
  %7586 = fdiv fast float %7585, %7425
  %7587 = call float @dx.op.binary.f32(i32 35, float %7586, float 0.000000e+00)  ; FMax(a,b)
  %7588 = call float @dx.op.binary.f32(i32 36, float %7460, float %7587)  ; FMin(a,b)
  %7589 = fdiv fast float %7574, %7585
  %7590 = call float @dx.op.binary.f32(i32 35, float %7589, float 0.000000e+00)  ; FMax(a,b)
  %7591 = call float @dx.op.binary.f32(i32 36, float %7460, float %7590)  ; FMin(a,b)
  %7592 = call float @dx.op.binary.f32(i32 36, float %7588, float %7591)  ; FMin(a,b)
  %7593 = call float @dx.op.binary.f32(i32 35, float %7588, float %7591)  ; FMax(a,b)
  br label %7594

; <label>:7594                                    ; preds = %7579, %7555
  %7595 = phi float [ %7593, %7579 ], [ -1.000000e+00, %7555 ]
  %7596 = phi float [ %7592, %7579 ], [ -1.000000e+00, %7555 ]
  %7597 = phi i1 [ true, %7579 ], [ false, %7555 ]
  br i1 %7597, label %7598, label %7604

; <label>:7598                                    ; preds = %7594
  %7599 = call float @dx.op.binary.f32(i32 35, float %7543, float %7596)  ; FMax(a,b)
  %7600 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7557
  store float %7599, float* %7600, align 4, !tbaa !106, !noalias !108
  %7601 = call float @dx.op.binary.f32(i32 35, float %7543, float %7595)  ; FMax(a,b)
  %7602 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %7557
  store float %7601, float* %7602, align 4, !tbaa !106, !noalias !108
  %7603 = add nsw i32 %7556, 1
  br label %7604

; <label>:7604                                    ; preds = %7598, %7594
  %7605 = phi i32 [ %7603, %7598 ], [ %7556, %7594 ]
  %7606 = add nuw nsw i32 %7557, 1
  %7607 = icmp eq i32 %7606, %7412
  br i1 %7607, label %7608, label %7555

; <label>:7608                                    ; preds = %7604
  %7609 = load float, float* %7549, align 4, !tbaa !106, !alias.scope !124, !noalias !127
  %7610 = load float, float* %7548, align 4, !tbaa !106, !alias.scope !130, !noalias !131
  %7611 = load float, float* %7547, align 4, !tbaa !106, !alias.scope !132, !noalias !133
  %7612 = load float, float* %7552, align 4, !tbaa !106, !alias.scope !134, !noalias !137
  %7613 = load float, float* %7551, align 4, !tbaa !106, !alias.scope !140, !noalias !141
  %7614 = load float, float* %7550, align 4, !tbaa !106, !alias.scope !142, !noalias !143
  br label %7615

; <label>:7615                                    ; preds = %7608, %7542
  %7616 = phi float [ -1.000000e+00, %7542 ], [ %7614, %7608 ]
  %7617 = phi float [ -1.000000e+00, %7542 ], [ %7613, %7608 ]
  %7618 = phi float [ -1.000000e+00, %7542 ], [ %7612, %7608 ]
  %7619 = phi float [ -1.000000e+00, %7542 ], [ %7611, %7608 ]
  %7620 = phi float [ -1.000000e+00, %7542 ], [ %7610, %7608 ]
  %7621 = phi float [ -1.000000e+00, %7542 ], [ %7609, %7608 ]
  %7622 = phi i32 [ 0, %7542 ], [ %7605, %7608 ]
  %7623 = call float @dx.op.binary.f32(i32 36, float %7620, float %7621)  ; FMin(a,b)
  %7624 = call float @dx.op.binary.f32(i32 36, float %7619, float %7623)  ; FMin(a,b)
  %7625 = call float @dx.op.binary.f32(i32 35, float %7619, float %7620)  ; FMax(a,b)
  %7626 = call float @dx.op.binary.f32(i32 36, float %7625, float %7621)  ; FMin(a,b)
  %7627 = call float @dx.op.binary.f32(i32 36, float %7619, float %7620)  ; FMin(a,b)
  %7628 = call float @dx.op.binary.f32(i32 35, float %7627, float %7626)  ; FMax(a,b)
  %7629 = call float @dx.op.binary.f32(i32 35, float %7620, float %7621)  ; FMax(a,b)
  %7630 = call float @dx.op.binary.f32(i32 35, float %7619, float %7629)  ; FMax(a,b)
  store float %7624, float* %7547, align 4, !tbaa !106, !alias.scope !132, !noalias !133
  store float %7628, float* %7548, align 4, !tbaa !106, !alias.scope !130, !noalias !131
  store float %7630, float* %7549, align 4, !tbaa !106, !alias.scope !124, !noalias !127
  %7631 = call float @dx.op.binary.f32(i32 36, float %7617, float %7618)  ; FMin(a,b)
  %7632 = call float @dx.op.binary.f32(i32 36, float %7616, float %7631)  ; FMin(a,b)
  %7633 = call float @dx.op.binary.f32(i32 35, float %7616, float %7617)  ; FMax(a,b)
  %7634 = call float @dx.op.binary.f32(i32 36, float %7633, float %7618)  ; FMin(a,b)
  %7635 = call float @dx.op.binary.f32(i32 36, float %7616, float %7617)  ; FMin(a,b)
  %7636 = call float @dx.op.binary.f32(i32 35, float %7635, float %7634)  ; FMax(a,b)
  %7637 = call float @dx.op.binary.f32(i32 35, float %7617, float %7618)  ; FMax(a,b)
  %7638 = call float @dx.op.binary.f32(i32 35, float %7616, float %7637)  ; FMax(a,b)
  store float %7632, float* %7550, align 4, !tbaa !106, !alias.scope !142, !noalias !143
  store float %7636, float* %7551, align 4, !tbaa !106, !alias.scope !140, !noalias !141
  store float %7638, float* %7552, align 4, !tbaa !106, !alias.scope !134, !noalias !137
  %7639 = sub nsw i32 3, %7622
  %7640 = icmp sgt i32 %7639, 2
  br i1 %7640, label %7641, label %7679

; <label>:7641                                    ; preds = %7615
  %7642 = icmp eq i32 %7410, 0
  %7643 = fsub fast float %7460, %7544
  %7644 = select i1 %7642, float %7643, float %7544
  %7645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7646 = extractvalue %dx.types.CBufRet.f32 %7645, 0
  %7647 = extractvalue %dx.types.CBufRet.f32 %7645, 1
  %7648 = extractvalue %dx.types.CBufRet.f32 %7645, 2
  %7649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7650 = extractvalue %dx.types.CBufRet.f32 %7649, 0
  %7651 = extractvalue %dx.types.CBufRet.f32 %7649, 1
  %7652 = extractvalue %dx.types.CBufRet.f32 %7649, 2
  %7653 = extractvalue %dx.types.CBufRet.f32 %7649, 3
  %7654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7655 = extractvalue %dx.types.CBufRet.f32 %7654, 3
  %7656 = call float @dx.op.binary.f32(i32 36, float %7545, float %7655)  ; FMin(a,b)
  %7657 = fmul fast float %7653, %7644
  %7658 = call float @dx.op.unary.f32(i32 7, float %7657)  ; Saturate(value)
  %7659 = fsub fast float %7650, %7646
  %7660 = fsub fast float %7651, %7647
  %7661 = fsub fast float %7652, %7648
  %7662 = fmul fast float %7658, %7659
  %7663 = fmul fast float %7658, %7660
  %7664 = fmul fast float %7658, %7661
  %7665 = fadd fast float %7662, %7646
  %7666 = fadd fast float %7663, %7647
  %7667 = fadd fast float %7664, %7648
  %7668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7669 = extractvalue %dx.types.CBufRet.f32 %7668, 0
  %7670 = extractvalue %dx.types.CBufRet.f32 %7668, 1
  %7671 = fadd fast float %7670, %7669
  %7672 = call float @dx.op.unary.f32(i32 7, float %7671)  ; Saturate(value)
  %7673 = extractvalue %dx.types.CBufRet.f32 %7668, 2
  %7674 = extractvalue %dx.types.CBufRet.f32 %7668, 3
  %7675 = fadd fast float %7674, %7673
  %7676 = call float @dx.op.unary.f32(i32 7, float %7675)  ; Saturate(value)
  %7677 = fmul fast float %7672, %7656
  %7678 = fmul fast float %7677, %7676
  br label %7761

; <label>:7679                                    ; preds = %7615
  %7680 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7639
  %7681 = load float, float* %7680, align 4, !tbaa !106, !noalias !108
  %7682 = fcmp fast olt float %7681, %7546
  %7683 = icmp sgt i32 %7622, 0
  %7684 = and i1 %7683, %7682
  br i1 %7684, label %7685, label %7722

; <label>:7685                                    ; preds = %7679
  br label %7686

; <label>:7686                                    ; preds = %7715, %7685
  %7687 = phi float [ %7716, %7715 ], [ %7544, %7685 ]
  %7688 = phi float [ %7717, %7715 ], [ %7545, %7685 ]
  %7689 = phi float [ %7697, %7715 ], [ %7681, %7685 ]
  %7690 = phi i32 [ %7694, %7715 ], [ %7639, %7685 ]
  %7691 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %7690
  %7692 = load float, float* %7691, align 4, !tbaa !106, !noalias !108
  %7693 = icmp slt i32 %7690, 2
  %7694 = add nsw i32 %7690, 1
  %7695 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7694
  %7696 = load float, float* %7695, align 4, !tbaa !106, !noalias !108
  %7697 = select i1 %7693, float %7696, float %7460
  %7698 = call float @dx.op.binary.f32(i32 36, float %7697, float %7692)  ; FMin(a,b)
  %7699 = call float @dx.op.binary.f32(i32 36, float %7546, float %7698)  ; FMin(a,b)
  %7700 = icmp eq i32 %7410, 0
  %7701 = fadd fast float %7699, %7689
  %7702 = fmul fast float %7701, %7391
  %7703 = fadd fast float %7702, %7404
  br i1 %7700, label %7709, label %7704

; <label>:7704                                    ; preds = %7686
  %7705 = fsub fast float %7699, %7689
  %7706 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7705)  ; FMax(a,b)
  %7707 = fmul fast float %7706, %7703
  %7708 = fadd fast float %7707, %7688
  br label %7715

; <label>:7709                                    ; preds = %7686
  %7710 = fsub fast float %7689, %7699
  %7711 = call float @dx.op.unary.f32(i32 6, float %7710)  ; FAbs(value)
  %7712 = fadd fast float %7711, %7687
  %7713 = fmul fast float %7711, %7703
  %7714 = fsub fast float %7688, %7713
  br label %7715

; <label>:7715                                    ; preds = %7709, %7704
  %7716 = phi float [ %7706, %7704 ], [ %7712, %7709 ]
  %7717 = phi float [ %7708, %7704 ], [ %7714, %7709 ]
  %7718 = fcmp fast olt float %7697, %7546
  %7719 = icmp slt i32 %7694, 3
  %7720 = and i1 %7719, %7718
  br i1 %7720, label %7686, label %7721

; <label>:7721                                    ; preds = %7715
  br label %7722

; <label>:7722                                    ; preds = %7721, %7679
  %7723 = phi float [ %7544, %7679 ], [ %7716, %7721 ]
  %7724 = phi float [ %7545, %7679 ], [ %7717, %7721 ]
  %7725 = fsub fast float %7460, %7723
  %7726 = select i1 %7462, float %7723, float %7725
  %7727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7728 = extractvalue %dx.types.CBufRet.f32 %7727, 0
  %7729 = extractvalue %dx.types.CBufRet.f32 %7727, 1
  %7730 = extractvalue %dx.types.CBufRet.f32 %7727, 2
  %7731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7732 = extractvalue %dx.types.CBufRet.f32 %7731, 0
  %7733 = extractvalue %dx.types.CBufRet.f32 %7731, 1
  %7734 = extractvalue %dx.types.CBufRet.f32 %7731, 2
  %7735 = extractvalue %dx.types.CBufRet.f32 %7731, 3
  %7736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7737 = extractvalue %dx.types.CBufRet.f32 %7736, 3
  %7738 = call float @dx.op.binary.f32(i32 36, float %7724, float %7737)  ; FMin(a,b)
  %7739 = fmul fast float %7735, %7726
  %7740 = call float @dx.op.unary.f32(i32 7, float %7739)  ; Saturate(value)
  %7741 = fsub fast float %7732, %7728
  %7742 = fsub fast float %7733, %7729
  %7743 = fsub fast float %7734, %7730
  %7744 = fmul fast float %7740, %7741
  %7745 = fmul fast float %7740, %7742
  %7746 = fmul fast float %7740, %7743
  %7747 = fadd fast float %7744, %7728
  %7748 = fadd fast float %7745, %7729
  %7749 = fadd fast float %7746, %7730
  %7750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7751 = extractvalue %dx.types.CBufRet.f32 %7750, 0
  %7752 = extractvalue %dx.types.CBufRet.f32 %7750, 1
  %7753 = fadd fast float %7752, %7751
  %7754 = call float @dx.op.unary.f32(i32 7, float %7753)  ; Saturate(value)
  %7755 = extractvalue %dx.types.CBufRet.f32 %7750, 2
  %7756 = extractvalue %dx.types.CBufRet.f32 %7750, 3
  %7757 = fadd fast float %7756, %7755
  %7758 = call float @dx.op.unary.f32(i32 7, float %7757)  ; Saturate(value)
  %7759 = fmul fast float %7754, %7738
  %7760 = fmul fast float %7759, %7758
  br label %7761

; <label>:7761                                    ; preds = %7722, %7641, %7476, %7458, %7456
  %7762 = phi float [ %7485, %7476 ], [ %7644, %7641 ], [ %7726, %7722 ], [ 0.000000e+00, %7456 ], [ 0.000000e+00, %7458 ]
  %7763 = phi float [ %7519, %7476 ], [ %7678, %7641 ], [ %7760, %7722 ], [ 0.000000e+00, %7456 ], [ 0.000000e+00, %7458 ]
  %7764 = phi float [ %7506, %7476 ], [ %7665, %7641 ], [ %7747, %7722 ], [ 0.000000e+00, %7456 ], [ 0.000000e+00, %7458 ]
  %7765 = phi float [ %7507, %7476 ], [ %7666, %7641 ], [ %7748, %7722 ], [ 0.000000e+00, %7456 ], [ 0.000000e+00, %7458 ]
  %7766 = phi float [ %7508, %7476 ], [ %7667, %7641 ], [ %7749, %7722 ], [ 0.000000e+00, %7456 ], [ 0.000000e+00, %7458 ]
  %7767 = fmul fast float %7399, %7763
  %7768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7769 = extractvalue %dx.types.CBufRet.f32 %7768, 2
  %7770 = fsub fast float %7406, %7769
  %7771 = fcmp fast olt float %7767, -2.000000e+01
  %7772 = call float @dx.op.unary.f32(i32 21, float %7767)  ; Exp(value)
  %7773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7774 = extractvalue %dx.types.CBufRet.f32 %7773, 2
  %7775 = extractvalue %dx.types.CBufRet.f32 %7773, 3
  %7776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7777 = extractvalue %dx.types.CBufRet.f32 %7776, 2
  %7778 = fmul fast float %7775, %7770
  %7779 = call float @dx.op.unary.f32(i32 7, float %7778)  ; Saturate(value)
  %7780 = fsub fast float 1.000000e+00, %7779
  %7781 = fmul fast float %7391, 5.000000e-01
  %7782 = fadd fast float %7781, 5.000000e-01
  %7783 = call float @dx.op.unary.f32(i32 7, float %7782)  ; Saturate(value)
  %7784 = fsub fast float 1.000000e+00, %7783
  %7785 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7780)  ; FMax(a,b)
  %7786 = fdiv fast float %7784, %7785
  %7787 = fsub fast float %7770, %7348
  %7788 = call float @dx.op.unary.f32(i32 6, float %7787)  ; FAbs(value)
  %7789 = fmul fast float %7788, %7774
  %7790 = call float @dx.op.unary.f32(i32 7, float %7786)  ; Saturate(value)
  %7791 = fsub fast float 1.000000e+00, %7789
  %7792 = fmul fast float %7791, %7790
  %7793 = fadd fast float %7792, %7789
  %7794 = fmul fast float %7777, %7770
  %7795 = call float @dx.op.unary.f32(i32 7, float %7794)  ; Saturate(value)
  %7796 = fsub fast float 1.000000e+00, %7793
  %7797 = fmul fast float %7796, %7795
  %7798 = fadd fast float %7797, %7793
  %7799 = call float @dx.op.unary.f32(i32 7, float %7798)  ; Saturate(value)
  %7800 = fadd fast float %7772, -1.000000e+00
  %7801 = select i1 %7771, float -1.000000e+00, float %7800
  %7802 = fmul fast float %7799, %7801
  %7803 = fadd fast float %7802, 1.000000e+00
  %7804 = fsub fast float -0.000000e+00, %7802
  %7805 = fmul fast float %7764, %7804
  %7806 = fmul fast float %7765, %7804
  %7807 = fmul fast float %7766, %7804
  br label %7808

; <label>:7808                                    ; preds = %7761, %7357
  %7809 = phi float [ %7762, %7761 ], [ 0.000000e+00, %7357 ]
  %7810 = phi float [ %7803, %7761 ], [ 1.000000e+00, %7357 ]
  %7811 = phi float [ %7805, %7761 ], [ 0.000000e+00, %7357 ]
  %7812 = phi float [ %7806, %7761 ], [ 0.000000e+00, %7357 ]
  %7813 = phi float [ %7807, %7761 ], [ 0.000000e+00, %7357 ]
  %7814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7815 = extractvalue %dx.types.CBufRet.f32 %7814, 1
  %7816 = fsub fast float 1.000000e+00, %7810
  %7817 = fmul fast float %7816, %7392
  %7818 = fmul fast float %7817, %7815
  %7819 = fsub fast float %7392, %7818
  br i1 %7385, label %7820, label %7849, !dx.controlflow.hints !144

; <label>:7820                                    ; preds = %7808
  %7821 = fmul fast float %7393, %7382
  %7822 = fadd fast float %7821, %7383
  %7823 = call float @dx.op.unary.f32(i32 7, float %7822)  ; Saturate(value)
  %7824 = fmul fast float %7364, %7819
  %7825 = fsub fast float -0.000000e+00, %7824
  %7826 = fmul fast float %7365, %7819
  %7827 = fsub fast float -0.000000e+00, %7826
  %7828 = call float @dx.op.unary.f32(i32 21, float %7825)  ; Exp(value)
  %7829 = call float @dx.op.unary.f32(i32 21, float %7827)  ; Exp(value)
  %7830 = call float @dx.op.binary.f32(i32 35, float %7372, float %7828)  ; FMax(a,b)
  %7831 = call float @dx.op.binary.f32(i32 35, float %7372, float %7829)  ; FMax(a,b)
  %7832 = fsub fast float %7831, %7830
  %7833 = fmul fast float %7832, %7823
  %7834 = fadd fast float %7833, %7830
  %7835 = call float @dx.op.unary.f32(i32 7, float %7834)  ; Saturate(value)
  %7836 = fsub fast float %7369, %7374
  %7837 = fsub fast float %7370, %7375
  %7838 = fsub fast float %7371, %7376
  %7839 = fmul fast float %7823, %7836
  %7840 = fmul fast float %7823, %7837
  %7841 = fmul fast float %7823, %7838
  %7842 = fadd fast float %7839, %7374
  %7843 = fadd fast float %7840, %7375
  %7844 = fadd fast float %7841, %7376
  %7845 = fsub fast float 1.000000e+00, %7835
  %7846 = fmul fast float %7845, %7842
  %7847 = fmul fast float %7845, %7843
  %7848 = fmul fast float %7845, %7844
  br label %7908

; <label>:7849                                    ; preds = %7808
  %7850 = fmul fast float %7819, %7381
  %7851 = call float @dx.op.unary.f32(i32 7, float %7850)  ; Saturate(value)
  %7852 = fsub fast float 2.000000e+00, %7851
  %7853 = fmul fast float %7851, 9.921875e-01
  %7854 = fmul fast float %7853, %7852
  %7855 = fadd fast float %7854, 3.906250e-03
  %7856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %35, float %7855, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7857 = extractvalue %dx.types.ResRet.f32 %7856, 0
  %7858 = fsub fast float %7851, %7857
  %7859 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7858)  ; FMax(a,b)
  %7860 = fmul fast float %7367, %7348
  %7861 = call float @dx.op.unary.f32(i32 6, float %7860)  ; FAbs(value)
  %7862 = fcmp fast ogt float %7861, 0x3EB0C6F7A0000000
  br i1 %7862, label %7863, label %7869, !dx.controlflow.hints !145

; <label>:7863                                    ; preds = %7849
  %7864 = fmul fast float %7860, 0xBFF7154760000000
  %7865 = call float @dx.op.unary.f32(i32 21, float %7864)  ; Exp(value)
  %7866 = fsub fast float 1.000000e+00, %7865
  %7867 = fdiv fast float %7866, %7860
  %7868 = fmul fast float %7867, %7377
  br label %7869

; <label>:7869                                    ; preds = %7863, %7849
  %7870 = phi float [ %7868, %7863 ], [ %7377, %7849 ]
  %7871 = fadd fast float %7870, %7379
  %7872 = fmul fast float %7871, %7859
  %7873 = fmul fast float %7364, %7872
  %7874 = fsub fast float -0.000000e+00, %7873
  %7875 = fmul fast float %7365, %7872
  %7876 = fsub fast float -0.000000e+00, %7875
  %7877 = fmul fast float %7366, %7872
  %7878 = fsub fast float -0.000000e+00, %7877
  %7879 = call float @dx.op.unary.f32(i32 21, float %7874)  ; Exp(value)
  %7880 = call float @dx.op.unary.f32(i32 21, float %7876)  ; Exp(value)
  %7881 = call float @dx.op.unary.f32(i32 21, float %7878)  ; Exp(value)
  %7882 = fmul fast float %7393, %7393
  %7883 = fadd fast float %7882, 1.000000e+00
  %7884 = fmul fast float %7883, 0x3FAE8EC8A0000000
  %7885 = fmul fast float %7884, %7374
  %7886 = fmul fast float %7884, %7375
  %7887 = fmul fast float %7884, %7376
  %7888 = fmul fast float %7393, %7372
  %7889 = fsub fast float 1.000000e+00, %7888
  %7890 = fmul fast float %7372, %7372
  %7891 = fsub fast float 1.000000e+00, %7890
  %7892 = fmul fast float %7891, 0x3FB45F3060000000
  %7893 = fmul fast float %7889, %7889
  %7894 = fdiv fast float 1.000000e+00, %7893
  %7895 = fmul fast float %7892, %7894
  %7896 = fmul fast float %7895, %7369
  %7897 = fmul fast float %7895, %7370
  %7898 = fmul fast float %7895, %7371
  %7899 = fadd fast float %7896, %7885
  %7900 = fadd fast float %7897, %7886
  %7901 = fadd fast float %7898, %7887
  %7902 = fsub fast float 1.000000e+00, %7879
  %7903 = fsub fast float 1.000000e+00, %7880
  %7904 = fsub fast float 1.000000e+00, %7881
  %7905 = fmul fast float %7899, %7902
  %7906 = fmul fast float %7900, %7903
  %7907 = fmul fast float %7901, %7904
  br label %7908

; <label>:7908                                    ; preds = %7869, %7820
  %7909 = phi float [ %7846, %7820 ], [ %7905, %7869 ]
  %7910 = phi float [ %7847, %7820 ], [ %7906, %7869 ]
  %7911 = phi float [ %7848, %7820 ], [ %7907, %7869 ]
  %7912 = phi float [ %7835, %7820 ], [ %7879, %7869 ]
  %7913 = phi float [ %7835, %7820 ], [ %7880, %7869 ]
  %7914 = phi float [ %7835, %7820 ], [ %7881, %7869 ]
  br i1 %7401, label %7915, label %8113, !dx.controlflow.hints !146

; <label>:7915                                    ; preds = %7908
  %7916 = extractvalue %dx.types.CBufRet.f32 %7814, 0
  %7917 = fmul fast float %7916, %7816
  %7918 = fsub fast float %7811, %7909
  %7919 = fsub fast float %7812, %7910
  %7920 = fsub fast float %7813, %7911
  %7921 = fmul fast float %7917, %7918
  %7922 = fmul fast float %7917, %7919
  %7923 = fmul fast float %7917, %7920
  %7924 = fadd fast float %7921, %7909
  %7925 = fadd fast float %7922, %7910
  %7926 = fadd fast float %7923, %7911
  %7927 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7912)  ; FMax(a,b)
  %7928 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7913)  ; FMax(a,b)
  %7929 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7914)  ; FMax(a,b)
  %7930 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7810)  ; FMax(a,b)
  %7931 = call float @dx.op.binary.f32(i32 35, float %7809, float %7819)  ; FMax(a,b)
  %7932 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7931)  ; FMax(a,b)
  %7933 = fdiv fast float %7809, %7932
  %7934 = call float @dx.op.unary.f32(i32 7, float %7933)  ; Saturate(value)
  %7935 = fdiv fast float %7819, %7932
  %7936 = call float @dx.op.unary.f32(i32 7, float %7935)  ; Saturate(value)
  %7937 = fcmp fast une float %7930, 1.000000e+00
  br i1 %7937, label %7938, label %7951, !dx.controlflow.hints !147

; <label>:7938                                    ; preds = %7915
  %7939 = call float @dx.op.unary.f32(i32 23, float %7930)  ; Log(value)
  %7940 = fmul fast float %7939, 0x3FE62E4300000000
  %7941 = fmul fast float %7811, %7940
  %7942 = fsub fast float -0.000000e+00, %7941
  %7943 = fmul fast float %7812, %7940
  %7944 = fsub fast float -0.000000e+00, %7943
  %7945 = fmul fast float %7813, %7940
  %7946 = fsub fast float -0.000000e+00, %7945
  %7947 = fsub fast float 1.000000e+00, %7930
  %7948 = fdiv fast float %7942, %7947
  %7949 = fdiv fast float %7944, %7947
  %7950 = fdiv fast float %7946, %7947
  br label %7951

; <label>:7951                                    ; preds = %7938, %7915
  %7952 = phi float [ %7948, %7938 ], [ %7811, %7915 ]
  %7953 = phi float [ %7949, %7938 ], [ %7812, %7915 ]
  %7954 = phi float [ %7950, %7938 ], [ %7813, %7915 ]
  %7955 = phi float [ %7940, %7938 ], [ 0.000000e+00, %7915 ]
  %7956 = fcmp fast une float %7927, 1.000000e+00
  br i1 %7956, label %7957, label %7964, !dx.controlflow.hints !148

; <label>:7957                                    ; preds = %7951
  %7958 = call float @dx.op.unary.f32(i32 23, float %7927)  ; Log(value)
  %7959 = fmul fast float %7958, 0x3FE62E4300000000
  %7960 = fmul fast float %7924, %7959
  %7961 = fsub fast float -0.000000e+00, %7960
  %7962 = fsub fast float 1.000000e+00, %7927
  %7963 = fdiv fast float %7961, %7962
  br label %7964

; <label>:7964                                    ; preds = %7957, %7951
  %7965 = phi float [ %7963, %7957 ], [ %7924, %7951 ]
  %7966 = phi float [ %7959, %7957 ], [ 0.000000e+00, %7951 ]
  %7967 = fcmp fast une float %7928, 1.000000e+00
  br i1 %7967, label %7968, label %7975, !dx.controlflow.hints !148

; <label>:7968                                    ; preds = %7964
  %7969 = call float @dx.op.unary.f32(i32 23, float %7928)  ; Log(value)
  %7970 = fmul fast float %7969, 0x3FE62E4300000000
  %7971 = fmul fast float %7925, %7970
  %7972 = fsub fast float -0.000000e+00, %7971
  %7973 = fsub fast float 1.000000e+00, %7928
  %7974 = fdiv fast float %7972, %7973
  br label %7975

; <label>:7975                                    ; preds = %7968, %7964
  %7976 = phi float [ %7974, %7968 ], [ %7925, %7964 ]
  %7977 = phi float [ %7970, %7968 ], [ 0.000000e+00, %7964 ]
  %7978 = fcmp fast une float %7929, 1.000000e+00
  br i1 %7978, label %7979, label %7986, !dx.controlflow.hints !148

; <label>:7979                                    ; preds = %7975
  %7980 = call float @dx.op.unary.f32(i32 23, float %7929)  ; Log(value)
  %7981 = fmul fast float %7980, 0x3FE62E4300000000
  %7982 = fmul fast float %7926, %7981
  %7983 = fsub fast float -0.000000e+00, %7982
  %7984 = fsub fast float 1.000000e+00, %7929
  %7985 = fdiv fast float %7983, %7984
  br label %7986

; <label>:7986                                    ; preds = %7979, %7975
  %7987 = phi float [ %7985, %7979 ], [ %7926, %7975 ]
  %7988 = phi float [ %7981, %7979 ], [ 0.000000e+00, %7975 ]
  %7989 = fmul fast float %7952, %7936
  %7990 = fmul fast float %7953, %7936
  %7991 = fmul fast float %7954, %7936
  %7992 = fmul fast float %7955, %7936
  %7993 = fmul fast float %7965, %7934
  %7994 = fmul fast float %7976, %7934
  %7995 = fmul fast float %7987, %7934
  %7996 = fmul fast float %7966, %7934
  %7997 = fmul fast float %7977, %7934
  %7998 = fmul fast float %7988, %7934
  %7999 = fadd fast float %7993, %7989
  %8000 = fadd fast float %7994, %7990
  %8001 = fadd fast float %7995, %7991
  %8002 = fadd fast float %7996, %7992
  %8003 = fadd fast float %7997, %7992
  %8004 = fadd fast float %7998, %7992
  %8005 = fcmp fast une float %8002, 0.000000e+00
  br i1 %8005, label %8006, label %8013, !dx.controlflow.hints !149

; <label>:8006                                    ; preds = %7986
  %8007 = fmul fast float %8002, 0x3FF7154760000000
  %8008 = call float @dx.op.unary.f32(i32 21, float %8007)  ; Exp(value)
  %8009 = fsub fast float 1.000000e+00, %8008
  %8010 = fmul fast float %7999, %8009
  %8011 = fsub fast float -0.000000e+00, %8010
  %8012 = fdiv fast float %8011, %8002
  br label %8013

; <label>:8013                                    ; preds = %8006, %7986
  %8014 = phi float [ %8008, %8006 ], [ 1.000000e+00, %7986 ]
  %8015 = phi float [ %8012, %8006 ], [ %7999, %7986 ]
  %8016 = fcmp fast une float %8003, 0.000000e+00
  br i1 %8016, label %8017, label %8024, !dx.controlflow.hints !149

; <label>:8017                                    ; preds = %8013
  %8018 = fmul fast float %8003, 0x3FF7154760000000
  %8019 = call float @dx.op.unary.f32(i32 21, float %8018)  ; Exp(value)
  %8020 = fsub fast float 1.000000e+00, %8019
  %8021 = fmul fast float %8000, %8020
  %8022 = fsub fast float -0.000000e+00, %8021
  %8023 = fdiv fast float %8022, %8003
  br label %8024

; <label>:8024                                    ; preds = %8017, %8013
  %8025 = phi float [ %8019, %8017 ], [ 1.000000e+00, %8013 ]
  %8026 = phi float [ %8023, %8017 ], [ %8000, %8013 ]
  %8027 = fcmp fast une float %8004, 0.000000e+00
  br i1 %8027, label %8028, label %8035, !dx.controlflow.hints !149

; <label>:8028                                    ; preds = %8024
  %8029 = fmul fast float %8004, 0x3FF7154760000000
  %8030 = call float @dx.op.unary.f32(i32 21, float %8029)  ; Exp(value)
  %8031 = fsub fast float 1.000000e+00, %8030
  %8032 = fmul fast float %8001, %8031
  %8033 = fsub fast float -0.000000e+00, %8032
  %8034 = fdiv fast float %8033, %8004
  br label %8035

; <label>:8035                                    ; preds = %8028, %8024
  %8036 = phi float [ %8030, %8028 ], [ 1.000000e+00, %8024 ]
  %8037 = phi float [ %8034, %8028 ], [ %8001, %8024 ]
  %8038 = fcmp fast ogt float %7934, %7936
  br i1 %8038, label %8039, label %8059

; <label>:8039                                    ; preds = %8035
  %8040 = fsub fast float 1.000000e+00, %7936
  %8041 = fmul fast float %7952, %8040
  %8042 = fmul fast float %7953, %8040
  %8043 = fmul fast float %7954, %8040
  %8044 = fmul fast float %7955, %8040
  %8045 = fcmp fast une float %8044, 0.000000e+00
  br i1 %8045, label %8046, label %8097, !dx.controlflow.hints !150

; <label>:8046                                    ; preds = %8039
  %8047 = fmul fast float %8044, 0x3FF7154760000000
  %8048 = call float @dx.op.unary.f32(i32 21, float %8047)  ; Exp(value)
  %8049 = fsub fast float 1.000000e+00, %8048
  %8050 = fmul fast float %8041, %8049
  %8051 = fsub fast float -0.000000e+00, %8050
  %8052 = fmul fast float %8042, %8049
  %8053 = fsub fast float -0.000000e+00, %8052
  %8054 = fmul fast float %8043, %8049
  %8055 = fsub fast float -0.000000e+00, %8054
  %8056 = fdiv fast float %8051, %8044
  %8057 = fdiv fast float %8053, %8044
  %8058 = fdiv fast float %8055, %8044
  br label %8097

; <label>:8059                                    ; preds = %8035
  %8060 = fsub fast float 1.000000e+00, %7934
  %8061 = fmul fast float %7965, %8060
  %8062 = fmul fast float %7976, %8060
  %8063 = fmul fast float %7987, %8060
  %8064 = fmul fast float %7966, %8060
  %8065 = fmul fast float %7977, %8060
  %8066 = fmul fast float %7988, %8060
  %8067 = fcmp fast une float %8064, 0.000000e+00
  br i1 %8067, label %8068, label %8075, !dx.controlflow.hints !149

; <label>:8068                                    ; preds = %8059
  %8069 = fmul fast float %8064, 0x3FF7154760000000
  %8070 = call float @dx.op.unary.f32(i32 21, float %8069)  ; Exp(value)
  %8071 = fsub fast float 1.000000e+00, %8070
  %8072 = fmul fast float %8061, %8071
  %8073 = fsub fast float -0.000000e+00, %8072
  %8074 = fdiv fast float %8073, %8064
  br label %8075

; <label>:8075                                    ; preds = %8068, %8059
  %8076 = phi float [ %8074, %8068 ], [ %8061, %8059 ]
  %8077 = phi float [ %8070, %8068 ], [ 1.000000e+00, %8059 ]
  %8078 = fcmp fast une float %8065, 0.000000e+00
  br i1 %8078, label %8079, label %8086, !dx.controlflow.hints !149

; <label>:8079                                    ; preds = %8075
  %8080 = fmul fast float %8065, 0x3FF7154760000000
  %8081 = call float @dx.op.unary.f32(i32 21, float %8080)  ; Exp(value)
  %8082 = fsub fast float 1.000000e+00, %8081
  %8083 = fmul fast float %8062, %8082
  %8084 = fsub fast float -0.000000e+00, %8083
  %8085 = fdiv fast float %8084, %8065
  br label %8086

; <label>:8086                                    ; preds = %8079, %8075
  %8087 = phi float [ %8085, %8079 ], [ %8062, %8075 ]
  %8088 = phi float [ %8081, %8079 ], [ 1.000000e+00, %8075 ]
  %8089 = fcmp fast une float %8066, 0.000000e+00
  br i1 %8089, label %8090, label %8097, !dx.controlflow.hints !149

; <label>:8090                                    ; preds = %8086
  %8091 = fmul fast float %8066, 0x3FF7154760000000
  %8092 = call float @dx.op.unary.f32(i32 21, float %8091)  ; Exp(value)
  %8093 = fsub fast float 1.000000e+00, %8092
  %8094 = fmul fast float %8063, %8093
  %8095 = fsub fast float -0.000000e+00, %8094
  %8096 = fdiv fast float %8095, %8066
  br label %8097

; <label>:8097                                    ; preds = %8090, %8086, %8046, %8039
  %8098 = phi float [ %8096, %8090 ], [ %8058, %8046 ], [ %8043, %8039 ], [ %8063, %8086 ]
  %8099 = phi float [ %8087, %8090 ], [ %8057, %8046 ], [ %8042, %8039 ], [ %8087, %8086 ]
  %8100 = phi float [ %8076, %8090 ], [ %8056, %8046 ], [ %8041, %8039 ], [ %8076, %8086 ]
  %8101 = phi float [ %8092, %8090 ], [ %8048, %8046 ], [ 1.000000e+00, %8039 ], [ 1.000000e+00, %8086 ]
  %8102 = phi float [ %8088, %8090 ], [ %8048, %8046 ], [ 1.000000e+00, %8039 ], [ %8088, %8086 ]
  %8103 = phi float [ %8077, %8090 ], [ %8048, %8046 ], [ 1.000000e+00, %8039 ], [ %8077, %8086 ]
  %8104 = fmul fast float %8103, %8015
  %8105 = fmul fast float %8102, %8026
  %8106 = fmul fast float %8101, %8037
  %8107 = fadd fast float %8104, %8100
  %8108 = fadd fast float %8105, %8099
  %8109 = fadd fast float %8106, %8098
  %8110 = fmul fast float %8103, %8014
  %8111 = fmul fast float %8102, %8025
  %8112 = fmul fast float %8101, %8036
  br label %8113

; <label>:8113                                    ; preds = %8097, %7908
  %8114 = phi float [ %8112, %8097 ], [ %7914, %7908 ]
  %8115 = phi float [ %8111, %8097 ], [ %7913, %7908 ]
  %8116 = phi float [ %8110, %8097 ], [ %7912, %7908 ]
  %8117 = phi float [ %8109, %8097 ], [ %7911, %7908 ]
  %8118 = phi float [ %8108, %8097 ], [ %7910, %7908 ]
  %8119 = phi float [ %8107, %8097 ], [ %7909, %7908 ]
  %8120 = fmul fast float %8119, %7061
  %8121 = fmul fast float %8118, %7063
  %8122 = fmul fast float %8117, %7065
  %8123 = fmul fast float %8116, %7356
  %8124 = call float @dx.op.dot3.f32(i32 55, float %8116, float %8115, float %8114, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8125 = call float @dx.op.dot3.f32(i32 55, float %8120, float %8121, float %8122, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8126 = select i1 %203, float %8124, float %8116
  %8127 = select i1 %203, float %8124, float %8115
  %8128 = select i1 %203, float 1.000000e+00, float %8114
  %8129 = select i1 %203, float %8125, float %8120
  %8130 = select i1 %203, float 0.000000e+00, float %8121
  %8131 = select i1 %203, float 0.000000e+00, float %8122
  %8132 = fmul fast float %8126, %7350
  %8133 = fmul fast float %8127, %7351
  %8134 = fmul fast float %8128, %7352
  %8135 = fadd fast float %8132, %8129
  %8136 = fadd fast float %8133, %8130
  %8137 = fadd fast float %8131, %8134
  %8138 = fmul fast float %8126, %7353
  %8139 = fmul fast float %8127, %7354
  %8140 = fmul fast float %8128, %7355
  %8141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8142 = extractvalue %dx.types.CBufRet.i32 %8141, 0
  %8143 = icmp eq i32 %8142, 0
  br i1 %8143, label %8511, label %8144, !dx.controlflow.hints !151

; <label>:8144                                    ; preds = %8113
  %8145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8146 = extractvalue %dx.types.CBufRet.f32 %8145, 2
  %8147 = extractvalue %dx.types.CBufRet.f32 %8145, 3
  %8148 = fmul fast float %8146, %87
  %8149 = fmul fast float %8147, %88
  %8150 = fmul fast float %8148, 2.000000e+00
  %8151 = fmul fast float %8149, 2.000000e+00
  %8152 = fsub fast float 1.000000e+00, %8150
  %8153 = fsub fast float 1.000000e+00, %8151
  %8154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8155 = extractvalue %dx.types.CBufRet.f32 %8154, 0
  %8156 = extractvalue %dx.types.CBufRet.f32 %8154, 1
  %8157 = extractvalue %dx.types.CBufRet.f32 %8154, 2
  %8158 = fmul fast float %8152, %8155
  %8159 = fmul fast float %8152, %8156
  %8160 = fmul fast float %8152, %8157
  %8161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8162 = extractvalue %dx.types.CBufRet.f32 %8161, 0
  %8163 = extractvalue %dx.types.CBufRet.f32 %8161, 1
  %8164 = extractvalue %dx.types.CBufRet.f32 %8161, 2
  %8165 = fmul fast float %8153, %8162
  %8166 = fmul fast float %8153, %8163
  %8167 = fmul fast float %8153, %8164
  %8168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8169 = extractvalue %dx.types.CBufRet.f32 %8168, 0
  %8170 = extractvalue %dx.types.CBufRet.f32 %8168, 1
  %8171 = extractvalue %dx.types.CBufRet.f32 %8168, 2
  %8172 = fadd fast float %8165, %8169
  %8173 = fadd fast float %8172, %8158
  %8174 = fadd fast float %8166, %8170
  %8175 = fadd fast float %8174, %8159
  %8176 = fadd fast float %8167, %8171
  %8177 = fadd fast float %8176, %8160
  %8178 = fmul fast float %8173, %7349
  %8179 = fmul fast float %8175, %7349
  %8180 = fmul fast float %8177, %7349
  %8181 = fmul fast float %8178, %8178
  %8182 = fmul fast float %8179, %8179
  %8183 = fadd fast float %8181, %8182
  %8184 = fmul fast float %8180, %8180
  %8185 = fadd fast float %8183, %8184
  %8186 = call float @dx.op.unary.f32(i32 24, float %8185)  ; Sqrt(value)
  %8187 = extractvalue %dx.types.CBufRet.f32 %7076, 0
  %8188 = fsub fast float %8186, %8187
  %8189 = extractvalue %dx.types.CBufRet.f32 %7076, 2
  %8190 = fmul fast float %8188, %8189
  %8191 = call float @dx.op.unary.f32(i32 7, float %8190)  ; Saturate(value)
  %8192 = fadd fast float %8191, -5.000000e-01
  %8193 = fmul fast float %8192, 2.000000e+00
  %8194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8195 = extractvalue %dx.types.CBufRet.f32 %8194, 2
  %8196 = call float @dx.op.binary.f32(i32 36, float %8195, float %8193)  ; FMin(a,b)
  %8197 = fsub fast float -0.000000e+00, %8195
  %8198 = fcmp fast ogt float %8196, %8197
  br i1 %8198, label %8199, label %8511, !dx.controlflow.hints !152

; <label>:8199                                    ; preds = %8144
  %8200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8201 = extractvalue %dx.types.CBufRet.f32 %8200, 3
  %8202 = fcmp fast ogt float %8201, 0.000000e+00
  br i1 %8202, label %8203, label %8278, !dx.controlflow.hints !153

; <label>:8203                                    ; preds = %8199
  %8204 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %8205 = extractvalue %dx.types.Dimensions %8204, 0
  %8206 = sitofp i32 %8205 to float
  %8207 = extractvalue %dx.types.Dimensions %8204, 1
  %8208 = sitofp i32 %8207 to float
  %8209 = fmul fast float %8148, %8206
  %8210 = fmul fast float %8149, %8208
  %8211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8212 = extractvalue %dx.types.CBufRet.f32 %8211, 1
  %8213 = fsub fast float -0.000000e+00, %8212
  %8214 = fptoui float %8213 to i32
  %8215 = fptoui float %8209 to i32
  %8216 = fptoui float %8210 to i32
  %8217 = and i32 %8214, 31
  %8218 = lshr i32 %8215, %8217
  %8219 = lshr i32 %8216, %8217
  %8220 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %8214, i32 %8218, i32 %8219, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8221 = extractvalue %dx.types.ResRet.f32 %8220, 0
  %8222 = fcmp fast olt float %8221, -1.000000e+00
  %8223 = fcmp fast ogt float %8221, -1.000000e+00
  %8224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8225 = extractvalue %dx.types.CBufRet.f32 %8224, 1
  %8226 = select i1 %8223, float %8225, float 1.000000e+00
  %8227 = fadd fast float %8221, 1.000000e+00
  %8228 = fmul fast float %8226, %8227
  %8229 = call float @dx.op.unary.f32(i32 6, float %8228)  ; FAbs(value)
  %8230 = extractvalue %dx.types.CBufRet.f32 %8224, 3
  %8231 = fcmp fast oge float %8229, %8230
  %8232 = select i1 %8231, float 0x4197782600000000, float %8229
  %8233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8234 = extractvalue %dx.types.CBufRet.f32 %8233, 0
  %8235 = extractvalue %dx.types.CBufRet.f32 %8233, 1
  %8236 = extractvalue %dx.types.CBufRet.f32 %8233, 2
  %8237 = select i1 %8222, float %8234, float %8155
  %8238 = select i1 %8222, float %8235, float %8156
  %8239 = select i1 %8222, float %8236, float %8157
  %8240 = fmul fast float %8237, %8152
  %8241 = fmul fast float %8238, %8152
  %8242 = fmul fast float %8239, %8152
  %8243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8244 = extractvalue %dx.types.CBufRet.f32 %8243, 0
  %8245 = extractvalue %dx.types.CBufRet.f32 %8243, 1
  %8246 = extractvalue %dx.types.CBufRet.f32 %8243, 2
  %8247 = select i1 %8222, float %8244, float %8162
  %8248 = select i1 %8222, float %8245, float %8163
  %8249 = select i1 %8222, float %8246, float %8164
  %8250 = fmul fast float %8247, %8153
  %8251 = fmul fast float %8248, %8153
  %8252 = fmul fast float %8249, %8153
  %8253 = fadd fast float %8250, %8240
  %8254 = fadd fast float %8251, %8241
  %8255 = fadd fast float %8252, %8242
  %8256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8257 = extractvalue %dx.types.CBufRet.f32 %8256, 0
  %8258 = extractvalue %dx.types.CBufRet.f32 %8256, 1
  %8259 = extractvalue %dx.types.CBufRet.f32 %8256, 2
  %8260 = select i1 %8222, float %8257, float %8169
  %8261 = select i1 %8222, float %8258, float %8170
  %8262 = select i1 %8222, float %8259, float %8171
  %8263 = fadd fast float %8253, %8260
  %8264 = fadd fast float %8254, %8261
  %8265 = fadd fast float %8255, %8262
  %8266 = fmul fast float %8263, %8232
  %8267 = fmul fast float %8264, %8232
  %8268 = fmul fast float %8265, %8232
  %8269 = fmul fast float %8266, %8266
  %8270 = fmul fast float %8267, %8267
  %8271 = fadd fast float %8269, %8270
  %8272 = fmul fast float %8268, %8268
  %8273 = fadd fast float %8271, %8272
  %8274 = call float @dx.op.unary.f32(i32 24, float %8273)  ; Sqrt(value)
  %8275 = fsub fast float %8274, %8187
  %8276 = fmul fast float %8275, %8189
  %8277 = call float @dx.op.unary.f32(i32 7, float %8276)  ; Saturate(value)
  br label %8278

; <label>:8278                                    ; preds = %8203, %8199
  %8279 = phi float [ %8277, %8203 ], [ 1.000000e+00, %8199 ]
  %8280 = fmul fast float %8196, 5.000000e-01
  %8281 = fadd fast float %8280, 5.000000e-01
  %8282 = call float @dx.op.unary.f32(i32 22, float %8281)  ; Frc(value)
  %8283 = call float @dx.op.unary.f32(i32 27, float %8282)  ; Round_ni(value)
  %8284 = call float @dx.op.unary.f32(i32 22, float %8282)  ; Frc(value)
  %8285 = fmul fast float %8284, 2.000000e+00
  %8286 = fadd fast float %8285, -1.000000e+00
  %8287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %8148, float %8149, float %8283, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8288 = extractvalue %dx.types.ResRet.f32 %8287, 0
  %8289 = extractvalue %dx.types.ResRet.f32 %8287, 1
  %8290 = extractvalue %dx.types.ResRet.f32 %8287, 2
  %8291 = extractvalue %dx.types.ResRet.f32 %8287, 3
  %8292 = fadd fast float %8288, -5.000000e-01
  %8293 = fadd fast float %8290, -5.000000e-01
  %8294 = fmul fast float %8292, 0xBFD5555560000000
  %8295 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8293, float %8294)  ; FMad(a,b,c)
  %8296 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8289, float 0.000000e+00)  ; FMad(a,b,c)
  %8297 = fadd fast float %8296, %8291
  %8298 = fmul fast float %8292, -7.500000e-01
  %8299 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8293, float %8298)  ; FMad(a,b,c)
  %8300 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8289, float 0.000000e+00)  ; FMad(a,b,c)
  %8301 = fadd fast float %8300, %8291
  %8302 = call float @dx.op.binary.f32(i32 35, float %8295, float -1.000000e+00)  ; FMax(a,b)
  %8303 = call float @dx.op.binary.f32(i32 35, float %8297, float -1.000000e+00)  ; FMax(a,b)
  %8304 = call float @dx.op.binary.f32(i32 35, float %8299, float -1.000000e+00)  ; FMax(a,b)
  %8305 = call float @dx.op.binary.f32(i32 35, float %8301, float -1.000000e+00)  ; FMax(a,b)
  %8306 = call float @dx.op.binary.f32(i32 36, float %8302, float 1.000000e+00)  ; FMin(a,b)
  %8307 = call float @dx.op.binary.f32(i32 36, float %8303, float 1.000000e+00)  ; FMin(a,b)
  %8308 = call float @dx.op.binary.f32(i32 36, float %8304, float 1.000000e+00)  ; FMin(a,b)
  %8309 = call float @dx.op.binary.f32(i32 36, float %8305, float 1.000000e+00)  ; FMin(a,b)
  %8310 = fcmp fast olt float %8306, 0x3FEFFF8020000000
  br i1 %8310, label %8311, label %8426, !dx.controlflow.hints !154

; <label>:8311                                    ; preds = %8278
  %8312 = extractvalue %dx.types.CBufRet.f32 %8194, 3
  %8313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8314 = extractvalue %dx.types.CBufRet.f32 %8313, 0
  %8315 = extractvalue %dx.types.CBufRet.f32 %8313, 1
  %8316 = extractvalue %dx.types.CBufRet.f32 %8313, 2
  %8317 = extractvalue %dx.types.CBufRet.f32 %8313, 3
  %8318 = fsub fast float %8314, %8306
  %8319 = fsub fast float %8315, %8307
  %8320 = fsub fast float %8316, %8308
  %8321 = fsub fast float %8317, %8309
  %8322 = fmul fast float %8318, %8312
  %8323 = fmul fast float %8319, %8312
  %8324 = fmul fast float %8320, %8312
  %8325 = fmul fast float %8321, %8312
  %8326 = fadd fast float %8322, %8306
  %8327 = fadd fast float %8323, %8307
  %8328 = fsub fast float -0.000000e+00, %8327
  %8329 = fadd fast float %8324, %8308
  %8330 = fadd fast float %8325, %8309
  %8331 = fmul fast float %8326, %8326
  %8332 = fsub fast float %8327, %8331
  %8333 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8332)  ; FMax(a,b)
  %8334 = fdiv fast float 1.000000e+00, %8333
  %8335 = fmul fast float %8327, %8326
  %8336 = fsub fast float %8329, %8335
  %8337 = fsub fast float %8286, %8326
  %8338 = fmul fast float %8286, %8286
  %8339 = fsub fast float %8338, %8327
  %8340 = fmul fast float %8337, %8334
  %8341 = fmul fast float %8340, %8336
  %8342 = fsub fast float %8339, %8341
  %8343 = fmul fast float %8327, %8327
  %8344 = fsub fast float %8330, %8343
  %8345 = fmul fast float %8336, %8336
  %8346 = fmul fast float %8345, %8334
  %8347 = fsub fast float %8344, %8346
  %8348 = fdiv fast float %8342, %8347
  %8349 = fmul fast float %8336, %8348
  %8350 = fsub fast float %8337, %8349
  %8351 = fmul fast float %8350, %8334
  %8352 = fmul fast float %8351, %8326
  %8353 = fsub fast float 1.000000e+00, %8352
  %8354 = fmul fast float %8327, %8348
  %8355 = fsub fast float %8353, %8354
  %8356 = fmul fast float %8351, %8351
  %8357 = fmul fast float %8348, 4.000000e+00
  %8358 = fmul fast float %8357, %8355
  %8359 = fsub fast float %8356, %8358
  %8360 = call float @dx.op.unary.f32(i32 24, float %8359)  ; Sqrt(value)
  %8361 = fcmp fast oge float %8351, 0.000000e+00
  %8362 = fsub fast float -0.000000e+00, %8360
  %8363 = select i1 %8361, float %8362, float %8360
  %8364 = fsub fast float %8363, %8351
  %8365 = fdiv fast float %8364, %8348
  %8366 = fdiv fast float %8355, %8364
  %8367 = fmul fast float %8365, 5.000000e-01
  %8368 = fmul fast float %8366, 2.000000e+00
  %8369 = select i1 %8361, float %8367, float %8368
  %8370 = select i1 %8361, float %8368, float %8367
  %8371 = call float @dx.op.binary.f32(i32 35, float %8369, float %8370)  ; FMax(a,b)
  %8372 = call float @dx.op.binary.f32(i32 36, float %8369, float %8370)  ; FMin(a,b)
  %8373 = fcmp fast ogt float %8286, %8372
  br i1 %8373, label %8374, label %8384

; <label>:8374                                    ; preds = %8311
  %8375 = fsub fast float %8286, %8372
  %8376 = fsub fast float %8371, %8372
  %8377 = fmul fast float %8375, %8376
  %8378 = fmul fast float %8371, %8286
  %8379 = fadd fast float %8371, %8286
  %8380 = fmul fast float %8379, %8326
  %8381 = fadd fast float %8378, %8327
  %8382 = fsub fast float %8381, %8380
  %8383 = fdiv fast float %8382, %8377
  br label %8384

; <label>:8384                                    ; preds = %8374, %8311
  %8385 = phi float [ %8383, %8374 ], [ 0.000000e+00, %8311 ]
  %8386 = fcmp fast ogt float %8286, %8371
  %8387 = fsub fast float %8286, %8371
  br i1 %8386, label %8388, label %8398

; <label>:8388                                    ; preds = %8384
  %8389 = fsub fast float %8371, %8372
  %8390 = fmul fast float %8389, %8387
  %8391 = fmul fast float %8372, %8286
  %8392 = fadd fast float %8372, %8286
  %8393 = fmul fast float %8392, %8326
  %8394 = fsub fast float %8328, %8391
  %8395 = fadd fast float %8394, %8393
  %8396 = fdiv fast float %8395, %8390
  %8397 = fadd fast float %8396, %8385
  br label %8398

; <label>:8398                                    ; preds = %8388, %8384
  %8399 = phi float [ %8397, %8388 ], [ %8385, %8384 ]
  %8400 = fsub fast float %8286, %8372
  %8401 = fmul fast float %8400, %8387
  %8402 = fmul fast float %8372, %8371
  %8403 = fadd fast float %8372, %8371
  %8404 = fmul fast float %8403, %8326
  %8405 = fadd fast float %8402, %8327
  %8406 = fsub fast float %8405, %8404
  %8407 = fdiv fast float %8406, %8401
  %8408 = call float @dx.op.unary.f32(i32 7, float %8399)  ; Saturate(value)
  %8409 = fcmp fast oeq float %7077, 0.000000e+00
  %8410 = extractvalue %dx.types.CBufRet.f32 %8194, 0
  %8411 = fcmp fast oeq float %8410, 0.000000e+00
  %8412 = or i1 %8409, %8411
  %8413 = fmul fast float %8410, 2.000000e+00
  %8414 = fadd fast float %8195, %8196
  %8415 = fdiv fast float %8414, %8413
  %8416 = call float @dx.op.unary.f32(i32 7, float %8415)  ; Saturate(value)
  %8417 = fmul fast float %8416, 2.000000e+00
  %8418 = fsub fast float 3.000000e+00, %8417
  %8419 = fmul fast float %8416, %8416
  %8420 = fmul fast float %8419, %8418
  %8421 = select i1 %8412, float 1.000000e+00, float %8420
  %8422 = fmul fast float %8407, %7077
  %8423 = fadd fast float %8408, %8422
  %8424 = call float @dx.op.unary.f32(i32 7, float %8423)  ; Saturate(value)
  %8425 = fmul fast float %8421, %8424
  br label %8426

; <label>:8426                                    ; preds = %8398, %8278
  %8427 = phi float [ %8425, %8398 ], [ 0.000000e+00, %8278 ]
  %8428 = fsub fast float 1.000000e+00, %8427
  %8429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %35, float %8148, float %8149, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8430 = extractvalue %dx.types.ResRet.f32 %8429, 0
  %8431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8432 = extractvalue %dx.types.CBufRet.i32 %8431, 2
  %8433 = icmp eq i32 %8432, 0
  br i1 %8433, label %8439, label %8434

; <label>:8434                                    ; preds = %8426
  %8435 = call float @dx.op.unary.f32(i32 7, float %8427)  ; Saturate(value)
  %8436 = fadd fast float %8430, -1.000000e+00
  %8437 = fmul fast float %8435, %8436
  %8438 = fadd fast float %8437, 1.000000e+00
  br label %8439

; <label>:8439                                    ; preds = %8434, %8426
  %8440 = phi float [ %8438, %8434 ], [ %8428, %8426 ]
  br i1 %8202, label %8441, label %8459

; <label>:8441                                    ; preds = %8439
  %8442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8443 = extractvalue %dx.types.CBufRet.f32 %8442, 1
  %8444 = fsub fast float %8279, %8443
  %8445 = call float @dx.op.unary.f32(i32 7, float %8444)  ; Saturate(value)
  %8446 = fsub fast float %8279, %8201
  %8447 = call float @dx.op.unary.f32(i32 7, float %8446)  ; Saturate(value)
  %8448 = fsub fast float %8445, %8447
  %8449 = fsub fast float %8281, %8447
  %8450 = fdiv fast float %8449, %8448
  %8451 = call float @dx.op.unary.f32(i32 7, float %8450)  ; Saturate(value)
  %8452 = fmul fast float %8451, 2.000000e+00
  %8453 = fsub fast float 3.000000e+00, %8452
  %8454 = fsub fast float %8430, %8440
  %8455 = fmul fast float %8451, %8451
  %8456 = fmul fast float %8455, %8454
  %8457 = fmul fast float %8456, %8453
  %8458 = fadd fast float %8457, %8440
  br label %8459

; <label>:8459                                    ; preds = %8441, %8439
  %8460 = phi float [ %8458, %8441 ], [ %8440, %8439 ]
  %8461 = call float @dx.op.binary.f32(i32 35, float %8430, float %8460)  ; FMax(a,b)
  %8462 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8463 = extractvalue %dx.types.CBufRet.i32 %8462, 2
  %8464 = and i32 %8463, 1
  %8465 = icmp eq i32 %8464, 0
  %8466 = fcmp fast une float %8461, 1.000000e+00
  %8467 = and i1 %8466, %8465
  br i1 %8467, label %8468, label %8487

; <label>:8468                                    ; preds = %8459
  %8469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %35, float %8148, float %8149, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8470 = extractvalue %dx.types.ResRet.f32 %8469, 0
  %8471 = extractvalue %dx.types.ResRet.f32 %8469, 1
  %8472 = extractvalue %dx.types.ResRet.f32 %8469, 2
  %8473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8474 = extractvalue %dx.types.CBufRet.f32 %8473, 1
  %8475 = fmul fast float %8474, %8470
  %8476 = fmul fast float %8474, %8471
  %8477 = fmul fast float %8474, %8472
  %8478 = fcmp fast ogt float %8430, 0x3FEFFF2E40000000
  %8479 = fsub fast float 1.000000e+00, %8461
  %8480 = fsub fast float 1.000000e+00, %8430
  %8481 = fdiv fast float %8479, %8480
  %8482 = call float @dx.op.unary.f32(i32 7, float %8481)  ; Saturate(value)
  %8483 = select i1 %8478, float 0.000000e+00, float %8482
  %8484 = fmul fast float %8475, %8483
  %8485 = fmul fast float %8476, %8483
  %8486 = fmul fast float %8477, %8483
  br label %8487

; <label>:8487                                    ; preds = %8468, %8459
  %8488 = phi float [ 0.000000e+00, %8459 ], [ %8484, %8468 ]
  %8489 = phi float [ 0.000000e+00, %8459 ], [ %8485, %8468 ]
  %8490 = phi float [ 0.000000e+00, %8459 ], [ %8486, %8468 ]
  %8491 = fmul fast float %8488, %7061
  %8492 = fmul fast float %8489, %7063
  %8493 = fmul fast float %8490, %7065
  %8494 = fmul fast float %8461, %8123
  %8495 = call float @dx.op.dot3.f32(i32 55, float %8461, float %8461, float %8461, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8496 = call float @dx.op.dot3.f32(i32 55, float %8491, float %8492, float %8493, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8497 = select i1 %203, float %8495, float %8461
  %8498 = select i1 %203, float 1.000000e+00, float %8461
  %8499 = select i1 %203, float %8496, float %8491
  %8500 = select i1 %203, float 0.000000e+00, float %8492
  %8501 = select i1 %203, float 0.000000e+00, float %8493
  %8502 = fmul fast float %8497, %8135
  %8503 = fmul fast float %8497, %8136
  %8504 = fmul fast float %8498, %8137
  %8505 = fadd fast float %8502, %8499
  %8506 = fadd fast float %8503, %8500
  %8507 = fadd fast float %8501, %8504
  %8508 = fmul fast float %8497, %8138
  %8509 = fmul fast float %8497, %8139
  %8510 = fmul fast float %8498, %8140
  br label %8511

; <label>:8511                                    ; preds = %8487, %8144, %8113, %7345
  %8512 = phi float [ %7350, %7345 ], [ %8135, %8113 ], [ %8505, %8487 ], [ %8135, %8144 ]
  %8513 = phi float [ %7351, %7345 ], [ %8136, %8113 ], [ %8506, %8487 ], [ %8136, %8144 ]
  %8514 = phi float [ %7352, %7345 ], [ %8137, %8113 ], [ %8507, %8487 ], [ %8137, %8144 ]
  %8515 = phi float [ %7353, %7345 ], [ %8138, %8113 ], [ %8508, %8487 ], [ %8138, %8144 ]
  %8516 = phi float [ %7354, %7345 ], [ %8139, %8113 ], [ %8509, %8487 ], [ %8139, %8144 ]
  %8517 = phi float [ %7355, %7345 ], [ %8140, %8113 ], [ %8510, %8487 ], [ %8140, %8144 ]
  %8518 = phi float [ %7356, %7345 ], [ %8123, %8113 ], [ %8494, %8487 ], [ %8123, %8144 ]
  %8519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8520 = extractvalue %dx.types.CBufRet.f32 %8519, 2
  %8521 = extractvalue %dx.types.CBufRet.f32 %8519, 3
  %8522 = fmul fast float %8520, %87
  %8523 = fmul fast float %8521, %88
  %8524 = call float @dx.op.unary.f32(i32 7, float %8522)  ; Saturate(value)
  %8525 = call float @dx.op.unary.f32(i32 7, float %8523)  ; Saturate(value)
  %8526 = select i1 %7087, i32 2, i32 0
  %8527 = or i32 %8526, 1
  %8528 = uitofp i32 %8527 to float
  %8529 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %8524, float %8525, float %8528, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8530 = extractvalue %dx.types.ResRet.f32 %8529, 0
  %8531 = extractvalue %dx.types.ResRet.f32 %8529, 1
  %8532 = extractvalue %dx.types.ResRet.f32 %8529, 2
  %8533 = extractvalue %dx.types.ResRet.f32 %8529, 3
  %8534 = add nuw nsw i32 %8526, 2
  %8535 = uitofp i32 %8534 to float
  %8536 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %8524, float %8525, float %8535, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8537 = extractvalue %dx.types.ResRet.f32 %8536, 0
  %8538 = extractvalue %dx.types.ResRet.f32 %8536, 1
  %8539 = extractvalue %dx.types.ResRet.f32 %8536, 2
  %8540 = extractvalue %dx.types.ResRet.f32 %8536, 3
  %8541 = call float @dx.op.binary.f32(i32 35, float %8531, float %8532)  ; FMax(a,b)
  %8542 = call float @dx.op.binary.f32(i32 35, float %8530, float %8541)  ; FMax(a,b)
  %8543 = call float @dx.op.binary.f32(i32 35, float %8542, float %8533)  ; FMax(a,b)
  %8544 = call float @dx.op.binary.f32(i32 36, float %8538, float %8539)  ; FMin(a,b)
  %8545 = call float @dx.op.binary.f32(i32 36, float %8537, float %8544)  ; FMin(a,b)
  %8546 = call float @dx.op.binary.f32(i32 36, float %8545, float %8540)  ; FMin(a,b)
  %8547 = fmul fast float %8543, 2.550000e+02
  %8548 = fadd fast float %8547, 0x3F70101020000000
  %8549 = fptoui float %8548 to i32
  %8550 = fmul fast float %8546, 2.550000e+02
  %8551 = fadd fast float %8550, 0x3F70101020000000
  %8552 = fptoui float %8551 to i32
  %8553 = icmp ult i32 %8549, %8552
  br i1 %8553, label %8554, label %8723

; <label>:8554                                    ; preds = %8511
  %8555 = fcmp fast ogt float %77, 9.843750e-01
  %8556 = fadd fast float %7349, -4.000000e+00
  %8557 = select i1 %8555, float -4.000000e+00, float %8556
  %8558 = call float @dx.op.binary.f32(i32 35, float %8557, float 0.000000e+00)  ; FMax(a,b)
  %8559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8560 = extractvalue %dx.types.CBufRet.f32 %8559, 0
  %8561 = fadd fast float %8560, %8558
  %8562 = extractvalue %dx.types.CBufRet.f32 %8559, 2
  %8563 = fmul fast float %8561, %8562
  %8564 = call float @dx.op.unary.f32(i32 23, float %8563)  ; Log(value)
  %8565 = extractvalue %dx.types.CBufRet.f32 %8559, 3
  %8566 = fmul fast float %8565, %8564
  %8567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8568 = extractvalue %dx.types.CBufRet.f32 %8567, 2
  %8569 = fmul fast float %8566, %8568
  %8570 = call float @dx.op.unary.f32(i32 7, float %8569)  ; Saturate(value)
  %8571 = uitofp i32 %8549 to float
  %8572 = uitofp i32 %8552 to float
  %8573 = fadd fast float %8571, 5.000000e-01
  %8574 = fadd fast float %8572, 5.000000e-01
  %8575 = fmul fast float %8568, %8573
  %8576 = fmul fast float %8568, %8574
  %8577 = fadd fast float %8575, 0x3F0FFB4800000000
  %8578 = fadd fast float %8576, 0xBF0FFB4800000000
  %8579 = call float @dx.op.binary.f32(i32 35, float %8570, float %8577)  ; FMax(a,b)
  %8580 = call float @dx.op.binary.f32(i32 36, float %8579, float %8578)  ; FMin(a,b)
  %8581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8582 = extractvalue %dx.types.CBufRet.f32 %8581, 1
  %8583 = extractvalue %dx.types.CBufRet.f32 %8581, 2
  %8584 = extractvalue %dx.types.CBufRet.f32 %8581, 0
  %8585 = select i1 %7087, float %8584, float 0.000000e+00
  %8586 = fmul fast float %8582, %8580
  %8587 = fadd fast float %8585, %8586
  %8588 = fadd fast float %8585, %8583
  %8589 = fsub fast float %8582, %8583
  %8590 = fadd fast float %8589, %8585
  %8591 = call float @dx.op.binary.f32(i32 35, float %8587, float %8588)  ; FMax(a,b)
  %8592 = call float @dx.op.binary.f32(i32 36, float %8591, float %8590)  ; FMin(a,b)
  %8593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %8524, float %8525, float %8592, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8594 = extractvalue %dx.types.ResRet.f32 %8593, 0
  %8595 = extractvalue %dx.types.ResRet.f32 %8593, 1
  %8596 = extractvalue %dx.types.ResRet.f32 %8593, 2
  %8597 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8598 = extractvalue %dx.types.CBufRet.i32 %8597, 0
  %8599 = extractvalue %dx.types.CBufRet.i32 %8597, 1
  %8600 = uitofp i32 %8598 to float
  %8601 = uitofp i32 %8599 to float
  %8602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8603 = extractvalue %dx.types.CBufRet.f32 %8602, 0
  %8604 = extractvalue %dx.types.CBufRet.f32 %8602, 1
  %8605 = fmul fast float %8600, %8524
  %8606 = fmul fast float %8601, %8525
  %8607 = fadd fast float %8605, -5.000000e-01
  %8608 = fadd fast float %8606, -5.000000e-01
  %8609 = call float @dx.op.unary.f32(i32 22, float %8607)  ; Frc(value)
  %8610 = call float @dx.op.unary.f32(i32 22, float %8608)  ; Frc(value)
  %8611 = fmul fast float %8609, %8609
  %8612 = fmul fast float %8611, %8609
  %8613 = fsub fast float 3.000000e+00, %8609
  %8614 = fmul fast float %8611, %8613
  %8615 = fmul fast float %8609, 3.000000e+00
  %8616 = fmul fast float %8612, 3.000000e+00
  %8617 = fmul fast float %8611, 6.000000e+00
  %8618 = fsub fast float %8616, %8617
  %8619 = fadd fast float %8618, 4.000000e+00
  %8620 = fmul fast float %8619, 0x3FC5555560000000
  %8621 = fmul fast float %8612, -3.000000e+00
  %8622 = fadd fast float %8611, %8609
  %8623 = fmul fast float %8622, 3.000000e+00
  %8624 = fadd fast float %8621, 1.000000e+00
  %8625 = fadd fast float %8624, %8623
  %8626 = fmul fast float %8612, 0x3FC5555560000000
  %8627 = fmul fast float %8610, %8610
  %8628 = fmul fast float %8627, %8610
  %8629 = fsub fast float 3.000000e+00, %8610
  %8630 = fmul fast float %8627, %8629
  %8631 = fmul fast float %8610, 3.000000e+00
  %8632 = fmul fast float %8628, 3.000000e+00
  %8633 = fmul fast float %8627, 6.000000e+00
  %8634 = fsub fast float %8632, %8633
  %8635 = fadd fast float %8634, 4.000000e+00
  %8636 = fmul fast float %8635, 0x3FC5555560000000
  %8637 = fmul fast float %8628, -3.000000e+00
  %8638 = fadd fast float %8627, %8610
  %8639 = fmul fast float %8638, 3.000000e+00
  %8640 = fadd fast float %8637, 1.000000e+00
  %8641 = fadd fast float %8640, %8639
  %8642 = fmul fast float %8628, 0x3FC5555560000000
  %8643 = fadd fast float %8609, 1.000000e+00
  %8644 = fsub fast float 1.000000e+00, %8615
  %8645 = fadd fast float %8644, %8614
  %8646 = fadd fast float %8645, %8619
  %8647 = fmul fast float %8646, 0x3FC5555560000000
  %8648 = fdiv fast float %8620, %8647
  %8649 = fsub fast float %8643, %8648
  %8650 = fsub fast float 1.000000e+00, %8609
  %8651 = fadd fast float %8625, %8612
  %8652 = fmul fast float %8651, 0x3FC5555560000000
  %8653 = fdiv fast float %8626, %8652
  %8654 = fadd fast float %8650, %8653
  %8655 = fadd fast float %8610, 1.000000e+00
  %8656 = fsub fast float 1.000000e+00, %8631
  %8657 = fadd fast float %8656, %8630
  %8658 = fadd fast float %8657, %8635
  %8659 = fmul fast float %8658, 0x3FC5555560000000
  %8660 = fdiv fast float %8636, %8659
  %8661 = fsub fast float %8655, %8660
  %8662 = fsub fast float 1.000000e+00, %8610
  %8663 = fadd fast float %8641, %8628
  %8664 = fmul fast float %8663, 0x3FC5555560000000
  %8665 = fdiv fast float %8642, %8664
  %8666 = fadd fast float %8665, %8662
  %8667 = fmul fast float %8649, %8603
  %8668 = fsub fast float %8524, %8667
  %8669 = fmul fast float %8654, %8603
  %8670 = fadd fast float %8669, %8524
  %8671 = fmul fast float %8666, %8604
  %8672 = fadd fast float %8671, %8525
  %8673 = fmul fast float %8661, %8604
  %8674 = fsub fast float %8525, %8673
  %8675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8668, float %8674, float %8592, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8676 = extractvalue %dx.types.ResRet.f32 %8675, 0
  %8677 = extractvalue %dx.types.ResRet.f32 %8675, 1
  %8678 = extractvalue %dx.types.ResRet.f32 %8675, 2
  %8679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8670, float %8674, float %8592, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8680 = extractvalue %dx.types.ResRet.f32 %8679, 0
  %8681 = extractvalue %dx.types.ResRet.f32 %8679, 1
  %8682 = extractvalue %dx.types.ResRet.f32 %8679, 2
  %8683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8668, float %8672, float %8592, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8684 = extractvalue %dx.types.ResRet.f32 %8683, 0
  %8685 = extractvalue %dx.types.ResRet.f32 %8683, 1
  %8686 = extractvalue %dx.types.ResRet.f32 %8683, 2
  %8687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %8670, float %8672, float %8592, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8688 = extractvalue %dx.types.ResRet.f32 %8687, 0
  %8689 = extractvalue %dx.types.ResRet.f32 %8687, 1
  %8690 = extractvalue %dx.types.ResRet.f32 %8687, 2
  %8691 = fsub fast float %8684, %8676
  %8692 = fsub fast float %8685, %8677
  %8693 = fsub fast float %8686, %8678
  %8694 = fmul fast float %8691, %8664
  %8695 = fmul fast float %8692, %8664
  %8696 = fmul fast float %8693, %8664
  %8697 = fadd fast float %8694, %8676
  %8698 = fadd fast float %8695, %8677
  %8699 = fadd fast float %8696, %8678
  %8700 = fsub fast float %8688, %8680
  %8701 = fsub fast float %8689, %8681
  %8702 = fsub fast float %8690, %8682
  %8703 = fmul fast float %8700, %8664
  %8704 = fmul fast float %8701, %8664
  %8705 = fmul fast float %8702, %8664
  %8706 = fsub fast float %8680, %8697
  %8707 = fadd fast float %8706, %8703
  %8708 = fsub fast float %8681, %8698
  %8709 = fadd fast float %8708, %8704
  %8710 = fsub fast float %8682, %8699
  %8711 = fadd fast float %8710, %8705
  %8712 = fmul fast float %8707, %8652
  %8713 = fmul fast float %8709, %8652
  %8714 = fmul fast float %8711, %8652
  %8715 = fadd fast float %8712, %8697
  %8716 = fadd fast float %8713, %8698
  %8717 = fadd fast float %8714, %8699
  %8718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8719 = extractvalue %dx.types.CBufRet.f32 %8718, 1
  %8720 = fmul fast float %8715, %8719
  %8721 = fmul fast float %8716, %8719
  %8722 = fmul fast float %8717, %8719
  br label %8723

; <label>:8723                                    ; preds = %8554, %8511
  %8724 = phi float [ %8594, %8554 ], [ 1.000000e+00, %8511 ]
  %8725 = phi float [ %8595, %8554 ], [ 1.000000e+00, %8511 ]
  %8726 = phi float [ %8596, %8554 ], [ 1.000000e+00, %8511 ]
  %8727 = phi float [ %8720, %8554 ], [ 0.000000e+00, %8511 ]
  %8728 = phi float [ %8721, %8554 ], [ 0.000000e+00, %8511 ]
  %8729 = phi float [ %8722, %8554 ], [ 0.000000e+00, %8511 ]
  %8730 = fmul fast float %8727, %7061
  %8731 = fmul fast float %8728, %7063
  %8732 = fmul fast float %8729, %7065
  %8733 = fmul fast float %8724, %8518
  %8734 = call float @dx.op.dot3.f32(i32 55, float %8724, float %8725, float %8726, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8735 = call float @dx.op.dot3.f32(i32 55, float %8730, float %8731, float %8732, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8736 = select i1 %203, float %8734, float %8724
  %8737 = select i1 %203, float %8734, float %8725
  %8738 = select i1 %203, float 1.000000e+00, float %8726
  %8739 = select i1 %203, float %8735, float %8730
  %8740 = select i1 %203, float 0.000000e+00, float %8731
  %8741 = select i1 %203, float 0.000000e+00, float %8732
  %8742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8743 = extractvalue %dx.types.CBufRet.i32 %8742, 3
  %8744 = and i32 %8743, 3
  %8745 = icmp ne i32 %8744, 0
  %8746 = and i32 %8743, 4
  %8747 = icmp ne i32 %8746, 0
  %8748 = and i1 %8745, %8747
  %8749 = and i1 %203, %8748
  br i1 %8749, label %8750, label %8756

; <label>:8750                                    ; preds = %8723
  %8751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8752 = extractvalue %dx.types.CBufRet.f32 %8751, 1
  %8753 = fadd fast float %8733, -1.000000e+00
  %8754 = fmul fast float %8752, %8753
  %8755 = fadd fast float %8754, 1.000000e+00
  br label %8756

; <label>:8756                                    ; preds = %8750, %8723
  %8757 = phi float [ %8755, %8750 ], [ %8733, %8723 ]
  %8758 = fadd fast float %8515, %8512
  %8759 = fmul fast float %8736, %8758
  %8760 = fadd fast float %8759, %8739
  %8761 = fadd fast float %8516, %8513
  %8762 = fmul fast float %8737, %8761
  %8763 = fadd fast float %8762, %8740
  %8764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8765 = extractvalue %dx.types.CBufRet.f32 %8764, 0
  br i1 %203, label %8766, label %8781

; <label>:8766                                    ; preds = %8756
  %8767 = fadd fast float %8760, %8763
  %8768 = fmul fast float %8765, %8767
  %8769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8770 = extractvalue %dx.types.CBufRet.f32 %8769, 3
  %8771 = extractvalue %dx.types.CBufRet.f32 %7069, 1
  %8772 = fsub fast float %7074, %7068
  %8773 = fadd fast float %8772, %7075
  %8774 = fsub fast float %8773, %8771
  %8775 = extractvalue %dx.types.CBufRet.f32 %7069, 2
  %8776 = fmul fast float %8774, %8775
  %8777 = call float @dx.op.unary.f32(i32 7, float %8776)  ; Saturate(value)
  %8778 = fsub fast float %8777, %8770
  %8779 = fmul fast float %8778, %8757
  %8780 = fadd fast float %8779, %8770
  br label %8807

; <label>:8781                                    ; preds = %8756
  %8782 = fadd fast float %8517, %8514
  %8783 = fmul fast float %8738, %8782
  %8784 = fadd fast float %8783, %8741
  %8785 = fmul fast float %8765, %8760
  %8786 = fmul fast float %8765, %8763
  %8787 = fmul fast float %8765, %8784
  %8788 = call float @dx.op.binary.f32(i32 35, float %8786, float %8787)  ; FMax(a,b)
  %8789 = call float @dx.op.binary.f32(i32 35, float %8785, float %8788)  ; FMax(a,b)
  %8790 = call float @dx.op.binary.f32(i32 35, float %7063, float %7065)  ; FMax(a,b)
  %8791 = call float @dx.op.binary.f32(i32 35, float %7061, float %8790)  ; FMax(a,b)
  %8792 = call float @dx.op.binary.f32(i32 35, float %8789, float %8791)  ; FMax(a,b)
  %8793 = fcmp fast ugt float %8792, 0x3F10000000000000
  br i1 %8793, label %8795, label %8794

; <label>:8794                                    ; preds = %8781
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8795

; <label>:8795                                    ; preds = %8794, %8781
  %8796 = add i32 %41, 356
  %8797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %8796, i32 undef)  ; BufferLoad(srv,index,wot)
  %8798 = extractvalue %dx.types.ResRet.i32 %8797, 0
  %8799 = and i32 %8798, 32
  %8800 = icmp eq i32 %8799, 0
  br i1 %8800, label %8807, label %8801

; <label>:8801                                    ; preds = %8795
  %8802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8803 = extractvalue %dx.types.CBufRet.f32 %8802, 0
  %8804 = fmul fast float %8803, 0x3FE99999A0000000
  %8805 = fadd fast float %8803, %8785
  %8806 = fadd fast float %8804, %8787
  br label %8807

; <label>:8807                                    ; preds = %8801, %8795, %8766
  %8808 = phi float [ 1.000000e+00, %8766 ], [ %7063, %8801 ], [ %7063, %8795 ]
  %8809 = phi float [ 1.000000e+00, %8766 ], [ %7065, %8801 ], [ %7065, %8795 ]
  %8810 = phi float [ %8768, %8766 ], [ %8805, %8801 ], [ %8785, %8795 ]
  %8811 = phi float [ %8780, %8766 ], [ %8786, %8801 ], [ %8786, %8795 ]
  %8812 = phi float [ 1.000000e+00, %8766 ], [ %8806, %8801 ], [ %8787, %8795 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8813 = call float @dx.op.binary.f32(i32 36, float %8810, float 3.225500e+04)  ; FMin(a,b)
  %8814 = call float @dx.op.binary.f32(i32 36, float %8811, float 3.225500e+04)  ; FMin(a,b)
  %8815 = call float @dx.op.binary.f32(i32 36, float %8812, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8813)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8814)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8815)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8816 = call float @dx.op.binary.f32(i32 36, float %7061, float 3.225500e+04)  ; FMin(a,b)
  %8817 = call float @dx.op.binary.f32(i32 36, float %8808, float 3.225500e+04)  ; FMin(a,b)
  %8818 = call float @dx.op.binary.f32(i32 36, float %8809, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8816)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8817)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8818)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!45 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
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

