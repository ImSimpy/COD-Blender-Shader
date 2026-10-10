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
; shader hash: 6394d780567ed16bd7072ea27628b45d
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
;                                   sampler      NA          NA      S7             s6     1
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
;                                   texture     f32          2d     T12     t37,space2     1
;                                   texture     f32          2d     T13             t0     1
;                                   texture     f32          2d     T14             t1     1
;                                   texture     f32          2d     T15     t58,space2     1
;                                   texture     f32          2d     T16     t57,space2     1
;                                   texture    byte         r/o     T17     t69,space1     1
;                                   texture     u32          2d     T18     t56,space2     1
;                                   texture     f32          2d     T19     t34,space2     1
;                                   texture     f32          2d     T20      t2,space2     1
;                                   texture     f32          2d     T21      t3,space2     1
;                                   texture     f32          2d     T22      t4,space2     1
;                                   textureunorm_f32     2darray     T23     t80,space2     1
;                                   texture    byte         r/o     T24     t67,space1     1
;                                   texture     f32          2d     T25      t7,space2     1
;                                   texture     f32          2d     T26      t6,space2     1
;                                   texture     f32          2d     T27      t5,space2     1
;                                   texture     f32          2d     T28     t38,space2     1
;                                   texture     f32          1d     T29     t30,space2     1
;                                   texture     f32          3d     T30     t44,space2     1
;                                   texture     f32          3d     T31     t45,space2     1
;                                   texture     f32     2darray     T32     t47,space2     1
;                                   textureunorm_f32     2darray     T33     t85,space2     1
;                                   texture     f32          2d     T34     t83,space2     1
;                                   texture     f32          2d     T35     t86,space2     1
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = alloca [4 x i32], align 4
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = alloca [12 x float], align 4
  %83 = alloca [12 x float], align 4
  %84 = alloca [3 x float], align 4
  %85 = alloca [3 x float], align 4
  %86 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %87 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = fmul fast float %89, %78
  %91 = fmul fast float %89, %79
  %92 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %93 = bitcast float %92 to i32
  %94 = ashr i32 %93, 1
  %95 = sub nsw i32 1597250115, %94
  %96 = bitcast i32 %95 to float
  %97 = fmul fast float %96, %69
  %98 = fmul fast float %96, %70
  %99 = fmul fast float %96, %71
  %100 = fmul fast float %70, %67
  %101 = fmul fast float %71, %66
  %102 = fsub fast float %100, %101
  %103 = fmul fast float %71, %65
  %104 = fmul fast float %69, %67
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %69, %66
  %107 = fmul fast float %70, %65
  %108 = fsub fast float %106, %107
  %109 = fmul fast float %102, %68
  %110 = fmul fast float %105, %68
  %111 = fmul fast float %108, %68
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %115 = fmul fast float %90, 2.000000e+00
  %116 = fmul fast float %115, %113
  %117 = fmul fast float %91, 2.000000e+00
  %118 = fmul fast float %117, %114
  %119 = fsub fast float 1.000000e+00, %116
  %120 = fsub fast float 1.000000e+00, %118
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = fmul fast float %119, %122
  %126 = fmul fast float %119, %123
  %127 = fmul fast float %119, %124
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = fmul fast float %120, %129
  %133 = fmul fast float %120, %130
  %134 = fmul fast float %120, %131
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = fadd fast float %132, %136
  %140 = fadd fast float %139, %125
  %141 = fadd fast float %133, %137
  %142 = fadd fast float %141, %126
  %143 = fadd fast float %134, %138
  %144 = fadd fast float %143, %127
  %145 = fmul fast float %140, %81
  %146 = fmul fast float %142, %81
  %147 = fmul fast float %144, %81
  %148 = fmul fast float %90, 5.000000e-01
  %149 = fmul fast float %91, 5.000000e-01
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
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 3
  %171 = fmul fast float %169, %90
  %172 = fmul fast float %170, %91
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = and i32 %174, 114688
  %176 = icmp ne i32 %175, 0
  %177 = select i1 %176, float %171, float 0.000000e+00
  %178 = select i1 %176, float %172, float 0.000000e+00
  %179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %177, float %178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = fmul fast float %180, 2.550000e+02
  %182 = fptoui float %181 to i32
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.i32 %184, 3
  %186 = and i32 %185, 3
  %187 = icmp ne i32 %186, 0
  %188 = and i32 %185, 4
  %189 = icmp ne i32 %188, 0
  %190 = and i1 %187, %189
  br i1 %190, label %191, label %202

; <label>:191                                     ; preds = %0
  %192 = extractvalue %dx.types.CBufRet.f32 %183, 3
  %193 = fmul fast float %192, %91
  %194 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %195 = fmul fast float %194, %90
  %196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %195, float %193, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %197 = extractvalue %dx.types.ResRet.f32 %196, 0
  %198 = fsub fast float 1.000000e+00, %197
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 0
  %201 = fcmp fast olt float %198, %200
  br label %205

; <label>:202                                     ; preds = %0
  %203 = icmp eq i32 %188, 0
  %204 = and i1 %187, %203
  br label %205

; <label>:205                                     ; preds = %202, %191
  %206 = phi i1 [ %201, %191 ], [ %204, %202 ]
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %209 = fmul fast float %208, 0x3FE3C6EF40000000
  %210 = frem fast float %90, 2.560000e+02
  %211 = frem fast float %91, 2.560000e+02
  %212 = fptoui float %210 to i32
  %213 = fptoui float %211 to i32
  %214 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %212, i32 %213, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = extractvalue %dx.types.ResRet.f32 %214, 1
  %217 = fadd fast float %215, %209
  %218 = fadd fast float %216, %209
  %219 = call float @dx.op.unary.f32(i32 22, float %217)  ; Frc(value)
  %220 = call float @dx.op.unary.f32(i32 22, float %218)  ; Frc(value)
  %221 = add i32 %44, 156
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = shl i32 %223, 4
  %225 = and i32 %224, 32752
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = lshr i32 %223, 7
  %228 = and i32 %227, 32752
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = lshr i32 %223, 22
  %231 = shl nuw nsw i32 %230, 5
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = add i32 %44, 216
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 255
  %237 = uitofp i32 %236 to float
  %238 = fmul fast float %237, 0x3F70101020000000
  %239 = lshr i32 %235, 8
  %240 = and i32 %239, 255
  %241 = uitofp i32 %240 to float
  %242 = fmul fast float %241, 0x3F70101020000000
  %243 = lshr i32 %235, 16
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F70101020000000
  %247 = add i32 %44, 36
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 65535
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %249, 16
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = add i32 %44, 288
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = and i32 %256, 65535
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = lshr i32 %256, 16
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = fmul fast float %258, 0x3F50624DE0000000
  %262 = fmul fast float %260, 0x3F50624DE0000000
  %263 = add i32 %44, 172
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = shl i32 %265, 4
  %267 = and i32 %266, 32752
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %265, 7
  %270 = and i32 %269, 32752
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = lshr i32 %265, 22
  %273 = shl nuw nsw i32 %272, 5
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = add i32 %44, 232
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 255
  %279 = uitofp i32 %278 to float
  %280 = fmul fast float %279, 0x3F70101020000000
  %281 = lshr i32 %277, 8
  %282 = and i32 %281, 255
  %283 = uitofp i32 %282 to float
  %284 = fmul fast float %283, 0x3F70101020000000
  %285 = lshr i32 %277, 16
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = add i32 %44, 52
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 65535
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %291, 16
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = add i32 %44, 304
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = and i32 %298, 65535
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %298, 16
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = fmul fast float %300, 0x3F50624DE0000000
  %304 = fmul fast float %302, 0x3F50624DE0000000
  %305 = add i32 %44, 188
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = shl i32 %307, 4
  %309 = and i32 %308, 32752
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %307, 7
  %312 = and i32 %311, 32752
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %307, 22
  %315 = shl nuw nsw i32 %314, 5
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = add i32 %44, 248
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 255
  %321 = uitofp i32 %320 to float
  %322 = fmul fast float %321, 0x3F70101020000000
  %323 = lshr i32 %319, 8
  %324 = and i32 %323, 255
  %325 = uitofp i32 %324 to float
  %326 = fmul fast float %325, 0x3F70101020000000
  %327 = lshr i32 %319, 16
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = add i32 %44, 68
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 65535
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %333, 16
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = add i32 %44, 320
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = and i32 %340, 65535
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %340, 16
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = fmul fast float %342, 0x3F50624DE0000000
  %346 = fmul fast float %344, 0x3F50624DE0000000
  %347 = add i32 %44, 204
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = shl i32 %349, 4
  %351 = and i32 %350, 32752
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %349, 7
  %354 = and i32 %353, 32752
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %349, 22
  %357 = shl nuw nsw i32 %356, 5
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = add i32 %44, 264
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 255
  %363 = uitofp i32 %362 to float
  %364 = fmul fast float %363, 0x3F70101020000000
  %365 = lshr i32 %361, 8
  %366 = and i32 %365, 255
  %367 = uitofp i32 %366 to float
  %368 = fmul fast float %367, 0x3F70101020000000
  %369 = lshr i32 %361, 16
  %370 = and i32 %369, 255
  %371 = uitofp i32 %370 to float
  %372 = fmul fast float %371, 0x3F70101020000000
  %373 = add i32 %44, 84
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 65535
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = lshr i32 %375, 16
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = add i32 %44, 336
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = and i32 %382, 65535
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = lshr i32 %382, 16
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = fmul fast float %384, 0x3F50624DE0000000
  %388 = fmul fast float %386, 0x3F50624DE0000000
  %389 = add i32 %44, 348
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 32
  %393 = icmp eq i32 %392, 0
  %394 = and i32 %391, 64
  %395 = icmp eq i32 %394, 0
  %396 = and i32 %391, 128
  %397 = icmp eq i32 %396, 0
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 2
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %417, label %402

; <label>:402                                     ; preds = %205
  %403 = add i32 %44, 472
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = add i32 %405, 0
  %407 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %406, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %408 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %407, %dx.types.Handle %87, float %72, float %73, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %409 = extractvalue %dx.types.ResRet.f32 %408, 0
  %410 = extractvalue %dx.types.ResRet.f32 %408, 1
  %411 = extractvalue %dx.types.ResRet.f32 %408, 2
  %412 = extractvalue %dx.types.ResRet.f32 %408, 3
  %413 = fmul fast float %412, %74
  %414 = fmul fast float %409, %75
  %415 = fmul fast float %410, %76
  %416 = fmul fast float %411, %77
  br label %417

; <label>:417                                     ; preds = %402, %205
  %418 = phi float [ %77, %205 ], [ %416, %402 ]
  %419 = phi float [ %76, %205 ], [ %415, %402 ]
  %420 = phi float [ %75, %205 ], [ %414, %402 ]
  %421 = phi float [ %74, %205 ], [ %413, %402 ]
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 2
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %445, label %426

; <label>:426                                     ; preds = %417
  %427 = add i32 %44, 44
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = and i32 %429, 1
  %431 = icmp ne i32 %430, 0
  %432 = select i1 %431, float %420, float 1.000000e+00
  %433 = add i32 %44, 60
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 1
  %437 = icmp ne i32 %436, 0
  %438 = select i1 %437, float %419, float 1.000000e+00
  %439 = add i32 %44, 76
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 1
  %443 = icmp ne i32 %442, 0
  %444 = select i1 %443, float %418, float 1.000000e+00
  br label %445

; <label>:445                                     ; preds = %426, %417
  %446 = phi float [ %418, %417 ], [ %444, %426 ]
  %447 = phi float [ %419, %417 ], [ %438, %426 ]
  %448 = phi float [ %420, %417 ], [ %432, %426 ]
  %449 = lshr i32 %423, 20
  %450 = and i32 %449, 3
  %451 = add nuw nsw i32 %450, 1
  %452 = add i32 %44, 24
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = add i32 %44, 28
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = or i32 %457, %454
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %1162, label %460

; <label>:460                                     ; preds = %445
  %461 = and i32 %454, 262144
  %462 = icmp ne i32 %461, 0
  %463 = select i1 %462, float %47, float 1.000000e+00
  %464 = select i1 %462, float %48, float 0.000000e+00
  %465 = select i1 %462, float %49, float 0.000000e+00
  %466 = select i1 %462, float %50, float 1.000000e+00
  %467 = select i1 %462, float %51, float %72
  %468 = select i1 %462, float %52, float %73
  %469 = add i32 %44, 284
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = lshr i32 %471, 16
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = fmul fast float %473, 0x3F50624DE0000000
  %475 = add i32 %44, 88
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = lshr i32 %477, 16
  %479 = and i32 %478, 255
  %480 = lshr i32 %477, 24
  %481 = add i32 %44, 292
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = and i32 %483, 65535
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = lshr i32 %483, 16
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = add i32 %44, 32
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = lshr i32 %490, 22
  %492 = shl nuw nsw i32 %491, 5
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = shl i32 %490, 4
  %495 = and i32 %494, 32752
  %496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %495)  ; LegacyF16ToF32(value)
  %497 = lshr i32 %490, 7
  %498 = and i32 %497, 32752
  %499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %498)  ; LegacyF16ToF32(value)
  %500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.f32 %500, 3
  %502 = fmul fast float %501, 1.000000e+03
  %503 = fmul fast float %261, %502
  %504 = call float @dx.op.unary.f32(i32 22, float %503)  ; Frc(value)
  %505 = fadd fast float %504, %251
  %506 = fmul fast float %262, %502
  %507 = call float @dx.op.unary.f32(i32 22, float %506)  ; Frc(value)
  %508 = fadd fast float %507, %253
  %509 = fmul fast float %474, %502
  %510 = call float @dx.op.unary.f32(i32 22, float %509)  ; Frc(value)
  %511 = fmul fast float %510, 0x401921FB60000000
  %512 = fadd fast float %511, %493
  %513 = call float @dx.op.unary.f32(i32 13, float %512)  ; Sin(value)
  %514 = call float @dx.op.unary.f32(i32 12, float %512)  ; Cos(value)
  %515 = fsub fast float -0.000000e+00, %513
  %516 = fadd fast float %467, -5.000000e-01
  %517 = fadd fast float %468, -5.000000e-01
  %518 = fmul fast float %485, %516
  %519 = fmul fast float %487, %517
  %520 = fadd fast float %518, 5.000000e-01
  %521 = fadd fast float %519, 5.000000e-01
  %522 = fmul fast float %496, %520
  %523 = fmul fast float %499, %521
  %524 = fmul fast float %514, %522
  %525 = call float @dx.op.tertiary.f32(i32 46, float %515, float %523, float %524)  ; FMad(a,b,c)
  %526 = fmul fast float %513, %522
  %527 = call float @dx.op.tertiary.f32(i32 46, float %514, float %523, float %526)  ; FMad(a,b,c)
  %528 = fadd fast float %505, %525
  %529 = fadd fast float %508, %527
  %530 = icmp ugt i32 %479, 1
  %531 = icmp ugt i32 %477, 33554431
  %532 = or i1 %531, %530
  br i1 %532, label %533, label %558

; <label>:533                                     ; preds = %460
  %534 = add i32 %44, 228
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = lshr i32 %536, 16
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = fmul fast float %501, %538
  %540 = call float @dx.op.unary.f32(i32 22, float %539)  ; Frc(value)
  %541 = mul nuw nsw i32 %479, %480
  %542 = uitofp i32 %541 to float
  %543 = fmul fast float %540, %542
  %544 = call float @dx.op.unary.f32(i32 27, float %543)  ; Round_ni(value)
  %545 = fptoui float %544 to i32
  %546 = urem i32 %545, %479
  %547 = udiv i32 %545, %480
  %548 = call float @dx.op.unary.f32(i32 22, float %528)  ; Frc(value)
  %549 = call float @dx.op.unary.f32(i32 22, float %529)  ; Frc(value)
  %550 = uitofp i32 %546 to float
  %551 = uitofp i32 %547 to float
  %552 = fadd fast float %548, %550
  %553 = fadd fast float %549, %551
  %554 = uitofp i32 %479 to float
  %555 = uitofp i32 %480 to float
  %556 = fdiv fast float %552, %554
  %557 = fdiv fast float %553, %555
  br label %558

; <label>:558                                     ; preds = %533, %460
  %559 = phi float [ %556, %533 ], [ %528, %460 ]
  %560 = phi float [ %557, %533 ], [ %529, %460 ]
  %561 = and i32 %454, 16777216
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %672, label %563

; <label>:563                                     ; preds = %558
  %564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %565 = extractvalue %dx.types.CBufRet.f32 %564, 0
  %566 = extractvalue %dx.types.CBufRet.f32 %564, 1
  %567 = extractvalue %dx.types.CBufRet.f32 %564, 2
  %568 = fadd fast float %565, %145
  %569 = fadd fast float %566, %146
  %570 = fadd fast float %567, %147
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 0
  %573 = call float @dx.op.unary.f32(i32 7, float %572)  ; Saturate(value)
  %574 = icmp eq i32 %45, 65535
  br i1 %574, label %669, label %575

; <label>:575                                     ; preds = %563
  %576 = lshr i32 %45, 1
  %577 = shl i32 %576, 2
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %45, 1
  %581 = icmp ne i32 %580, 0
  %582 = lshr i32 %579, 16
  %583 = and i32 %579, 65535
  %584 = select i1 %581, i32 %582, i32 %583
  %585 = icmp eq i32 %584, 65535
  br i1 %585, label %665, label %586

; <label>:586                                     ; preds = %575
  %587 = mul nuw nsw i32 %584, 40
  %588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  %590 = extractvalue %dx.types.ResRet.f32 %588, 1
  %591 = extractvalue %dx.types.ResRet.f32 %588, 2
  %592 = add nuw nsw i32 %587, 12
  %593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = extractvalue %dx.types.ResRet.f32 %593, 1
  %596 = extractvalue %dx.types.ResRet.f32 %593, 2
  %597 = add nuw nsw i32 %587, 24
  %598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 0
  %600 = extractvalue %dx.types.ResRet.f32 %598, 1
  %601 = extractvalue %dx.types.ResRet.f32 %598, 2
  %602 = add nuw nsw i32 %587, 36
  %603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = fsub fast float %568, %589
  %606 = fsub fast float %569, %590
  %607 = fsub fast float %570, %591
  %608 = fmul fast float %604, %605
  %609 = fmul fast float %604, %606
  %610 = fmul fast float %604, %607
  %611 = call float @dx.op.unary.f32(i32 27, float %608)  ; Round_ni(value)
  %612 = call float @dx.op.unary.f32(i32 27, float %609)  ; Round_ni(value)
  %613 = call float @dx.op.unary.f32(i32 27, float %610)  ; Round_ni(value)
  %614 = fadd fast float %611, 5.000000e-01
  %615 = fadd fast float %612, 5.000000e-01
  %616 = fadd fast float %613, 5.000000e-01
  %617 = fmul fast float %614, %594
  %618 = fmul fast float %615, %595
  %619 = fmul fast float %616, %596
  %620 = shl i32 %45, 2
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = add i32 %622, 0
  %624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %625 = call float @dx.op.unary.f32(i32 22, float %617)  ; Frc(value)
  %626 = call float @dx.op.unary.f32(i32 22, float %618)  ; Frc(value)
  %627 = call float @dx.op.unary.f32(i32 22, float %619)  ; Frc(value)
  %628 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %624, %dx.types.Handle %39, float %625, float %626, float %627, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 0
  %630 = extractvalue %dx.types.ResRet.f32 %628, 1
  %631 = extractvalue %dx.types.ResRet.f32 %628, 2
  %632 = fmul fast float %629, 1.023000e+03
  %633 = fmul fast float %630, 1.023000e+03
  %634 = fmul fast float %631, 1.023000e+03
  %635 = fadd fast float %632, 5.000000e-01
  %636 = fadd fast float %633, 5.000000e-01
  %637 = fadd fast float %634, 5.000000e-01
  %638 = call float @dx.op.unary.f32(i32 27, float %635)  ; Round_ni(value)
  %639 = call float @dx.op.unary.f32(i32 27, float %636)  ; Round_ni(value)
  %640 = call float @dx.op.unary.f32(i32 27, float %637)  ; Round_ni(value)
  %641 = fsub fast float %608, %611
  %642 = fsub fast float %609, %612
  %643 = fsub fast float %610, %613
  %644 = fmul fast float %641, 7.500000e-01
  %645 = fmul fast float %642, 7.500000e-01
  %646 = fmul fast float %643, 7.500000e-01
  %647 = fadd fast float %611, 1.250000e-01
  %648 = fadd fast float %647, %644
  %649 = fadd fast float %648, %638
  %650 = fadd fast float %612, 1.250000e-01
  %651 = fadd fast float %650, %645
  %652 = fadd fast float %651, %639
  %653 = fadd fast float %613, 1.250000e-01
  %654 = fadd fast float %653, %646
  %655 = fadd fast float %654, %640
  %656 = fmul fast float %649, %599
  %657 = fmul fast float %652, %600
  %658 = fmul fast float %655, %601
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = add i32 %660, 0
  %662 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %661, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %662, %dx.types.Handle %37, float %656, float %657, float %658, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  br label %665

; <label>:665                                     ; preds = %586, %575
  %666 = phi float [ %664, %586 ], [ -1.000000e+00, %575 ]
  %667 = fadd fast float %666, %573
  %668 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  br label %669

; <label>:669                                     ; preds = %665, %563
  %670 = phi float [ %668, %665 ], [ %573, %563 ]
  %671 = fmul fast float %670, %421
  br label %672

; <label>:672                                     ; preds = %669, %558
  %673 = phi float [ %671, %669 ], [ %421, %558 ]
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = and i32 %675, 256
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %724, label %678

; <label>:678                                     ; preds = %672
  %679 = add i32 %44, 424
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %679, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = add i32 %681, 0
  %683 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %682, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %684 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %683, %dx.types.Handle %87, float %559, float %560, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %685 = extractvalue %dx.types.ResRet.f32 %684, 0
  %686 = add i32 %44, 100
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %686, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = shl i32 %688, 4
  %690 = and i32 %689, 32752
  %691 = call float @dx.op.legacyF16ToF32(i32 131, i32 %690)  ; LegacyF16ToF32(value)
  %692 = lshr i32 %688, 7
  %693 = and i32 %692, 32752
  %694 = call float @dx.op.legacyF16ToF32(i32 131, i32 %693)  ; LegacyF16ToF32(value)
  %695 = fsub fast float 1.000000e+00, %673
  %696 = call float @dx.op.binary.f32(i32 35, float %695, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %697 = bitcast float %673 to i32
  %698 = sitofp i32 %697 to float
  %699 = fadd fast float %698, 0xC1CFBF8940000000
  %700 = fmul fast float %694, %699
  %701 = fadd fast float %700, 0x41CFBF8940000000
  %702 = fptosi float %701 to i32
  %703 = bitcast i32 %702 to float
  %704 = bitcast float %696 to i32
  %705 = sitofp i32 %704 to float
  %706 = fadd fast float %705, 0xC1CFBF8940000000
  %707 = fmul fast float %706, %694
  %708 = fadd fast float %707, 0x41CFBF8940000000
  %709 = fptosi float %708 to i32
  %710 = bitcast i32 %709 to float
  %711 = fmul fast float %703, %691
  %712 = fmul fast float %710, %691
  %713 = fsub fast float %696, %711
  %714 = fadd fast float %712, %696
  %715 = call float @dx.op.unary.f32(i32 7, float %713)  ; Saturate(value)
  %716 = call float @dx.op.unary.f32(i32 7, float %714)  ; Saturate(value)
  %717 = fsub fast float %685, %715
  %718 = fsub fast float %716, %715
  %719 = bitcast float %718 to i32
  %720 = sub nsw i32 2129859010, %719
  %721 = bitcast i32 %720 to float
  %722 = fmul fast float %721, %717
  %723 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  br label %724

; <label>:724                                     ; preds = %678, %672
  %725 = phi float [ %723, %678 ], [ %673, %672 ]
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = and i32 %727, 128
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %746, label %730

; <label>:730                                     ; preds = %724
  %731 = add i32 %44, 408
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = add i32 %733, 0
  %735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %734, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %736 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %735, %dx.types.Handle %87, float %559, float %560, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %737 = extractvalue %dx.types.ResRet.f32 %736, 0
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 524288
  %741 = icmp ne i32 %740, 0
  %742 = fcmp fast ogt float %737, 0x3FE0101020000000
  %743 = select i1 %742, float 1.000000e+00, float 0.000000e+00
  %744 = select i1 %741, float %743, float %737
  %745 = fmul fast float %744, %725
  br label %746

; <label>:746                                     ; preds = %730, %724
  %747 = phi float [ %745, %730 ], [ %725, %724 ]
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = and i32 %749, 16
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %950, label %752

; <label>:752                                     ; preds = %746
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = add i32 %44, 360
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = add i32 %757, 0
  %759 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %758, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %760 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %759, %dx.types.Handle %86, float %559, float %560, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %761 = extractvalue %dx.types.ResRet.f32 %760, 0
  %762 = extractvalue %dx.types.ResRet.f32 %760, 1
  %763 = extractvalue %dx.types.ResRet.f32 %760, 2
  %764 = extractvalue %dx.types.ResRet.f32 %760, 3
  %765 = and i32 %754, 255
  %766 = uitofp i32 %765 to float
  %767 = lshr i32 %754, 8
  %768 = and i32 %767, 255
  %769 = uitofp i32 %768 to float
  %770 = fmul fast float %764, %766
  %771 = fadd fast float %770, %769
  %772 = fmul fast float %771, 0x3F70101000000000
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = and i32 %774, 512
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %785, label %777

; <label>:777                                     ; preds = %752
  %778 = add i32 %44, 440
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %778, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = add i32 %780, 0
  %782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %781, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %783 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %782, %dx.types.Handle %87, float %559, float %560, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 0
  br label %785

; <label>:785                                     ; preds = %777, %752
  %786 = phi float [ %784, %777 ], [ 1.000000e+00, %752 ]
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = and i32 %788, 33554432
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %897, label %791

; <label>:791                                     ; preds = %785
  %792 = add i32 %44, 224
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = and i32 %794, 65535
  %796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %795)  ; LegacyF16ToF32(value)
  %797 = lshr i32 %794, 16
  %798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %797)  ; LegacyF16ToF32(value)
  %799 = add i32 %44, 228
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %799, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = and i32 %801, 65535
  %803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %802)  ; LegacyF16ToF32(value)
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %820 = add i32 %44, 220
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = lshr i32 %822, 24
  %824 = uitofp i32 %823 to float
  %825 = fmul fast float %824, 0x3F70101020000000
  %826 = and i32 %822, 255
  %827 = uitofp i32 %826 to float
  %828 = fmul fast float %827, 0x3F70101020000000
  %829 = lshr i32 %822, 8
  %830 = and i32 %829, 255
  %831 = uitofp i32 %830 to float
  %832 = fmul fast float %831, 0x3F70101020000000
  %833 = lshr i32 %822, 16
  %834 = and i32 %833, 255
  %835 = uitofp i32 %834 to float
  %836 = fmul fast float %835, 0x3F70101020000000
  %837 = bitcast float %761 to i32
  %838 = ashr i32 %837, 1
  %839 = sub nsw i32 1597463174, %838
  %840 = bitcast i32 %839 to float
  %841 = fmul fast float %761, 5.000000e-01
  %842 = fmul fast float %840, %840
  %843 = fmul fast float %842, %841
  %844 = fsub fast float 1.500000e+00, %843
  %845 = fmul fast float %840, %761
  %846 = fmul fast float %845, %844
  %847 = bitcast float %762 to i32
  %848 = ashr i32 %847, 1
  %849 = sub nsw i32 1597463174, %848
  %850 = bitcast i32 %849 to float
  %851 = fmul fast float %762, 5.000000e-01
  %852 = fmul fast float %850, %850
  %853 = fmul fast float %852, %851
  %854 = fsub fast float 1.500000e+00, %853
  %855 = fmul fast float %850, %762
  %856 = fmul fast float %855, %854
  %857 = bitcast float %763 to i32
  %858 = ashr i32 %857, 1
  %859 = sub nsw i32 1597463174, %858
  %860 = bitcast i32 %859 to float
  %861 = fmul fast float %763, 5.000000e-01
  %862 = fmul fast float %860, %860
  %863 = fmul fast float %862, %861
  %864 = fsub fast float 1.500000e+00, %863
  %865 = fmul fast float %860, %763
  %866 = fmul fast float %865, %864
  %867 = fsub fast float %846, %828
  %868 = fsub fast float %856, %832
  %869 = fsub fast float %866, %836
  %870 = fmul fast float %867, %796
  %871 = fmul fast float %868, %798
  %872 = fmul fast float %869, %803
  %873 = fadd fast float %870, %811
  %874 = fadd fast float %871, %815
  %875 = fadd fast float %872, %819
  %876 = call float @dx.op.unary.f32(i32 7, float %873)  ; Saturate(value)
  %877 = call float @dx.op.unary.f32(i32 7, float %874)  ; Saturate(value)
  %878 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  %879 = fmul fast float %876, %876
  %880 = fmul fast float %877, %877
  %881 = fmul fast float %878, %878
  %882 = fsub fast float %879, %761
  %883 = fsub fast float %880, %762
  %884 = fsub fast float %881, %763
  %885 = fmul fast float %882, %786
  %886 = fmul fast float %883, %786
  %887 = fmul fast float %884, %786
  %888 = fadd fast float %885, %761
  %889 = fadd fast float %886, %762
  %890 = fadd fast float %887, %763
  %891 = fadd fast float %808, %772
  %892 = fsub fast float %891, %825
  %893 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  %894 = fsub fast float %893, %772
  %895 = fmul fast float %894, %786
  %896 = fadd fast float %895, %772
  br label %950

; <label>:897                                     ; preds = %785
  %898 = and i32 %788, 134217728
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %934, label %900

; <label>:900                                     ; preds = %897
  %901 = call float @dx.op.unary.f32(i32 24, float %238)  ; Sqrt(value)
  %902 = call float @dx.op.unary.f32(i32 24, float %242)  ; Sqrt(value)
  %903 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %904 = fadd fast float %901, -5.000000e-01
  %905 = fadd fast float %902, -5.000000e-01
  %906 = fadd fast float %903, -5.000000e-01
  %907 = fmul fast float %904, %786
  %908 = fmul fast float %905, %786
  %909 = fmul fast float %906, %786
  %910 = fadd fast float %907, 5.000000e-01
  %911 = fadd fast float %908, 5.000000e-01
  %912 = fadd fast float %909, 5.000000e-01
  %913 = call float @dx.op.unary.f32(i32 24, float %761)  ; Sqrt(value)
  %914 = call float @dx.op.unary.f32(i32 24, float %762)  ; Sqrt(value)
  %915 = call float @dx.op.unary.f32(i32 24, float %763)  ; Sqrt(value)
  %916 = fmul fast float %910, 2.000000e+00
  %917 = fsub fast float 1.000000e+00, %916
  %918 = fmul fast float %917, %913
  %919 = fadd fast float %918, %916
  %920 = fmul fast float %919, %913
  %921 = fmul fast float %911, 2.000000e+00
  %922 = fsub fast float 1.000000e+00, %921
  %923 = fmul fast float %922, %914
  %924 = fadd fast float %923, %921
  %925 = fmul fast float %924, %914
  %926 = fmul fast float %912, 2.000000e+00
  %927 = fsub fast float 1.000000e+00, %926
  %928 = fmul fast float %927, %915
  %929 = fadd fast float %928, %926
  %930 = fmul fast float %929, %915
  %931 = fmul fast float %920, %920
  %932 = fmul fast float %925, %925
  %933 = fmul fast float %930, %930
  br label %950

; <label>:934                                     ; preds = %897
  %935 = fmul fast float %238, %238
  %936 = fmul fast float %242, %242
  %937 = fmul fast float %246, %246
  %938 = fadd fast float %935, -1.000000e+00
  %939 = fadd fast float %936, -1.000000e+00
  %940 = fadd fast float %937, -1.000000e+00
  %941 = fmul fast float %786, %938
  %942 = fmul fast float %786, %939
  %943 = fmul fast float %786, %940
  %944 = fadd fast float %941, 1.000000e+00
  %945 = fadd fast float %942, 1.000000e+00
  %946 = fadd fast float %943, 1.000000e+00
  %947 = fmul fast float %944, %761
  %948 = fmul fast float %945, %762
  %949 = fmul fast float %946, %763
  br label %950

; <label>:950                                     ; preds = %934, %900, %791, %746
  %951 = phi float [ %896, %791 ], [ %772, %900 ], [ %772, %934 ], [ 0x3FA23C0BE0000000, %746 ]
  %952 = phi float [ %888, %791 ], [ %931, %900 ], [ %947, %934 ], [ 1.000000e+00, %746 ]
  %953 = phi float [ %889, %791 ], [ %932, %900 ], [ %948, %934 ], [ 1.000000e+00, %746 ]
  %954 = phi float [ %890, %791 ], [ %933, %900 ], [ %949, %934 ], [ 1.000000e+00, %746 ]
  %955 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.i32 %955, 1
  %957 = and i32 %956, 1
  %958 = icmp ne i32 %957, 0
  %959 = add i32 %44, 356
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = and i32 %961, 32
  %963 = icmp ne i32 %962, 0
  %964 = and i1 %958, %963
  %965 = select i1 %964, float 1.000000e+00, float %952
  %966 = select i1 %964, float 0x3FD3333340000000, float %953
  %967 = select i1 %964, float 0x3FD3333340000000, float %954
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = and i32 %969, 32
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %1044, label %972

; <label>:972                                     ; preds = %950
  %973 = add i32 %44, 92
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = add i32 %44, 376
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = add i32 %978, 0
  %980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %981 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %980, %dx.types.Handle %86, float %559, float %560, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %982 = extractvalue %dx.types.ResRet.f32 %981, 0
  %983 = extractvalue %dx.types.ResRet.f32 %981, 1
  %984 = extractvalue %dx.types.ResRet.f32 %981, 2
  %985 = extractvalue %dx.types.ResRet.f32 %981, 3
  %986 = and i32 %975, 255
  %987 = uitofp i32 %986 to float
  %988 = lshr i32 %975, 8
  %989 = and i32 %988, 255
  %990 = uitofp i32 %989 to float
  %991 = lshr i32 %975, 16
  %992 = and i32 %991, 255
  %993 = uitofp i32 %992 to float
  %994 = fmul fast float %993, 0x3F70101000000000
  %995 = fmul fast float %982, %987
  %996 = fadd fast float %995, %990
  %997 = fmul fast float %996, 0x3F70101000000000
  %998 = fadd fast float %983, -5.000000e-01
  %999 = fadd fast float %985, -5.000000e-01
  %1000 = fmul fast float %998, %994
  %1001 = fmul fast float %999, %994
  %1002 = fadd fast float %1000, 5.000000e-01
  %1003 = fadd fast float %1001, 5.000000e-01
  %1004 = fmul fast float %1002, 2.000000e+00
  %1005 = fadd fast float %1004, -1.000000e+00
  %1006 = fmul fast float %1003, 2.000000e+00
  %1007 = fadd fast float %1006, -1.000000e+00
  %1008 = fadd fast float %1005, %1007
  %1009 = fmul fast float %1008, 5.000000e-01
  %1010 = fsub fast float %1005, %1007
  %1011 = fmul fast float %1010, 5.000000e-01
  %1012 = call float @dx.op.unary.f32(i32 6, float %1009)  ; FAbs(value)
  %1013 = fsub fast float 1.000000e+00, %1012
  %1014 = call float @dx.op.unary.f32(i32 6, float %1011)  ; FAbs(value)
  %1015 = fsub fast float %1013, %1014
  %1016 = call float @dx.op.dot3.f32(i32 55, float %1009, float %1011, float %1015, float %1009, float %1011, float %1015)  ; Dot3(ax,ay,az,bx,by,bz)
  %1017 = call float @dx.op.unary.f32(i32 25, float %1016)  ; Rsqrt(value)
  %1018 = fmul fast float %1009, %1017
  %1019 = fmul fast float %1011, %1017
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = and i32 %1021, 67108864
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1040, label %1024

; <label>:1024                                    ; preds = %972
  %1025 = add i32 %44, 280
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = and i32 %1027, 65535
  %1029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1028)  ; LegacyF16ToF32(value)
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = and i32 %1031, 65535
  %1033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1032)  ; LegacyF16ToF32(value)
  %1034 = lshr i32 %1027, 16
  %1035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1034)  ; LegacyF16ToF32(value)
  %1036 = fsub fast float %997, %1035
  %1037 = fmul fast float %1036, %1029
  %1038 = fadd fast float %1037, %1033
  %1039 = call float @dx.op.unary.f32(i32 7, float %1038)  ; Saturate(value)
  br label %1040

; <label>:1040                                    ; preds = %1024, %972
  %1041 = phi float [ %1039, %1024 ], [ %997, %972 ]
  %1042 = call float @dx.op.dot2.f32(i32 54, float %1018, float %1019, float %463, float %464)  ; Dot2(ax,ay,bx,by)
  %1043 = call float @dx.op.dot2.f32(i32 54, float %1018, float %1019, float %465, float %466)  ; Dot2(ax,ay,bx,by)
  br label %1044

; <label>:1044                                    ; preds = %1040, %950
  %1045 = phi float [ %1041, %1040 ], [ 0x3FD6666660000000, %950 ]
  %1046 = phi float [ %1042, %1040 ], [ 0.000000e+00, %950 ]
  %1047 = phi float [ %1043, %1040 ], [ 0.000000e+00, %950 ]
  %1048 = phi float [ %984, %1040 ], [ 1.000000e+00, %950 ]
  %1049 = add i32 %44, 160
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = lshr i32 %1051, 22
  %1053 = shl nuw nsw i32 %1052, 5
  %1054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1053)  ; LegacyF16ToF32(value)
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = and i32 %1056, 64
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %1092, label %1059

; <label>:1059                                    ; preds = %1044
  %1060 = add i32 %44, 392
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = add i32 %1062, 0
  %1064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1063, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = and i32 %1066, 131072
  %1068 = icmp eq i32 %1067, 0
  %1069 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1064, %dx.types.Handle %86, float %559, float %560, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1070 = extractvalue %dx.types.ResRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.ResRet.f32 %1069, 1
  %1072 = extractvalue %dx.types.ResRet.f32 %1069, 2
  %1073 = fmul fast float %1070, %226
  %1074 = fmul fast float %1071, %229
  %1075 = fmul fast float %1072, %232
  br i1 %1068, label %1082, label %1076

; <label>:1076                                    ; preds = %1059
  %1077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1078 = extractvalue %dx.types.CBufRet.f32 %1077, 0
  %1079 = fmul fast float %1078, %1073
  %1080 = fmul fast float %1078, %1074
  %1081 = fmul fast float %1078, %1075
  br label %1082

; <label>:1082                                    ; preds = %1076, %1059
  %1083 = phi float [ %1079, %1076 ], [ %1073, %1059 ]
  %1084 = phi float [ %1080, %1076 ], [ %1074, %1059 ]
  %1085 = phi float [ %1081, %1076 ], [ %1075, %1059 ]
  %1086 = fmul fast float %1083, %1054
  %1087 = select i1 %206, float %1086, float %1083
  %1088 = call float @dx.op.dot3.f32(i32 55, float %1087, float %1084, float %1085, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1089 = select i1 %206, float 0.000000e+00, float %1083
  %1090 = select i1 %206, float %1088, float %1084
  %1091 = select i1 %206, float 0.000000e+00, float %1085
  br label %1092

; <label>:1092                                    ; preds = %1082, %1044
  %1093 = phi float [ %1089, %1082 ], [ 0.000000e+00, %1044 ]
  %1094 = phi float [ %1090, %1082 ], [ 0.000000e+00, %1044 ]
  %1095 = phi float [ %1091, %1082 ], [ 0.000000e+00, %1044 ]
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = and i32 %1097, 10240
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1144, label %1100

; <label>:1100                                    ; preds = %1092
  %1101 = add i32 %44, 456
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = add i32 %1103, 0
  %1105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1104, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1106 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1105, %dx.types.Handle %87, float %559, float %560, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1107 = extractvalue %dx.types.ResRet.f32 %1106, 1
  %1108 = extractvalue %dx.types.ResRet.f32 %1106, 3
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %1110, 1048576
  %1112 = icmp ne i32 %1111, 0
  %1113 = and i32 %1110, 8192
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1130, label %1115

; <label>:1115                                    ; preds = %1100
  %1116 = extractvalue %dx.types.ResRet.f32 %1106, 2
  %1117 = select i1 %1112, float %1116, float %1107
  %1118 = extractvalue %dx.types.ResRet.f32 %1106, 0
  %1119 = select i1 %1112, float %1118, float %1107
  %1120 = add i32 %44, 96
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = lshr i32 %1122, 16
  %1124 = and i32 %1123, 255
  %1125 = uitofp i32 %1124 to float
  %1126 = fmul fast float %1125, 0x3F80101020000000
  %1127 = fmul fast float %1126, %1119
  %1128 = fmul fast float %1126, %1107
  %1129 = fmul fast float %1126, %1117
  br label %1130

; <label>:1130                                    ; preds = %1115, %1100
  %1131 = phi float [ %1127, %1115 ], [ 0.000000e+00, %1100 ]
  %1132 = phi float [ %1128, %1115 ], [ 0.000000e+00, %1100 ]
  %1133 = phi float [ %1129, %1115 ], [ 0.000000e+00, %1100 ]
  %1134 = and i32 %1110, 2048
  %1135 = icmp eq i32 %1134, 0
  br i1 %1135, label %1144, label %1136

; <label>:1136                                    ; preds = %1130
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = shl i32 %1138, 4
  %1140 = and i32 %1139, 32752
  %1141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1140)  ; LegacyF16ToF32(value)
  %1142 = fmul fast float %1141, %1108
  %1143 = call float @dx.op.binary.f32(i32 35, float %1142, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1144

; <label>:1144                                    ; preds = %1136, %1130, %1092
  %1145 = phi float [ %1131, %1136 ], [ %1131, %1130 ], [ 0.000000e+00, %1092 ]
  %1146 = phi float [ %1132, %1136 ], [ %1132, %1130 ], [ 0.000000e+00, %1092 ]
  %1147 = phi float [ %1133, %1136 ], [ %1133, %1130 ], [ 0.000000e+00, %1092 ]
  %1148 = phi float [ %1143, %1136 ], [ 0x3F70101020000000, %1130 ], [ 0x3F70101020000000, %1092 ]
  %1149 = add i32 %44, 96
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = and i32 %1151, 255
  %1153 = uitofp i32 %1152 to float
  %1154 = lshr i32 %1151, 8
  %1155 = and i32 %1154, 255
  %1156 = uitofp i32 %1155 to float
  %1157 = call float @dx.op.dot3.f32(i32 55, float %965, float %966, float %967, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1158 = fmul fast float %1156, %1157
  %1159 = fadd fast float %1158, %1153
  %1160 = fmul fast float %1159, 0x3F70101020000000
  %1161 = call float @dx.op.unary.f32(i32 7, float %1160)  ; Saturate(value)
  br label %1162

; <label>:1162                                    ; preds = %1144, %445
  %1163 = phi float [ 0.000000e+00, %445 ], [ %1046, %1144 ]
  %1164 = phi float [ 0.000000e+00, %445 ], [ %1047, %1144 ]
  %1165 = phi float [ 0.000000e+00, %445 ], [ %965, %1144 ]
  %1166 = phi float [ 0.000000e+00, %445 ], [ %966, %1144 ]
  %1167 = phi float [ 0.000000e+00, %445 ], [ %967, %1144 ]
  %1168 = phi float [ 0.000000e+00, %445 ], [ %1145, %1144 ]
  %1169 = phi float [ 0.000000e+00, %445 ], [ %1146, %1144 ]
  %1170 = phi float [ 0.000000e+00, %445 ], [ %1147, %1144 ]
  %1171 = phi float [ 0.000000e+00, %445 ], [ %1093, %1144 ]
  %1172 = phi float [ 0.000000e+00, %445 ], [ %1094, %1144 ]
  %1173 = phi float [ 0.000000e+00, %445 ], [ %1095, %1144 ]
  %1174 = phi float [ 0.000000e+00, %445 ], [ %951, %1144 ]
  %1175 = phi float [ 0.000000e+00, %445 ], [ %747, %1144 ]
  %1176 = phi float [ 0.000000e+00, %445 ], [ %1045, %1144 ]
  %1177 = phi float [ 0.000000e+00, %445 ], [ %1048, %1144 ]
  %1178 = phi float [ 0.000000e+00, %445 ], [ %1148, %1144 ]
  %1179 = phi float [ 0.000000e+00, %445 ], [ %1161, %1144 ]
  br i1 %393, label %2108, label %1180

; <label>:1180                                    ; preds = %1162
  %1181 = icmp ult i32 %451, 2
  %1182 = add i32 %44, 40
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = add i32 %44, 44
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = or i32 %1187, %1184
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %2108, label %1190

; <label>:1190                                    ; preds = %1180
  %1191 = and i32 %1184, 262144
  %1192 = icmp ne i32 %1191, 0
  %1193 = select i1 %1192, float %47, float 1.000000e+00
  %1194 = select i1 %1192, float %48, float 0.000000e+00
  %1195 = select i1 %1192, float %49, float 0.000000e+00
  %1196 = select i1 %1192, float %50, float 1.000000e+00
  %1197 = select i1 %1192, float %51, float %72
  %1198 = select i1 %1192, float %52, float %73
  %1199 = add i32 %44, 300
  %1200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.i32 %1200, 0
  %1202 = lshr i32 %1201, 16
  %1203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1202)  ; LegacyF16ToF32(value)
  %1204 = fmul fast float %1203, 0x3F50624DE0000000
  %1205 = add i32 %44, 104
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = lshr i32 %1207, 16
  %1209 = and i32 %1208, 255
  %1210 = lshr i32 %1207, 24
  %1211 = add i32 %44, 308
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = and i32 %1213, 65535
  %1215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1214)  ; LegacyF16ToF32(value)
  %1216 = lshr i32 %1213, 16
  %1217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1216)  ; LegacyF16ToF32(value)
  %1218 = add i32 %44, 48
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = lshr i32 %1220, 22
  %1222 = shl nuw nsw i32 %1221, 5
  %1223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1222)  ; LegacyF16ToF32(value)
  %1224 = shl i32 %1220, 4
  %1225 = and i32 %1224, 32752
  %1226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1225)  ; LegacyF16ToF32(value)
  %1227 = lshr i32 %1220, 7
  %1228 = and i32 %1227, 32752
  %1229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1228)  ; LegacyF16ToF32(value)
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 3
  %1232 = fmul fast float %1231, 1.000000e+03
  %1233 = fmul fast float %303, %1232
  %1234 = call float @dx.op.unary.f32(i32 22, float %1233)  ; Frc(value)
  %1235 = fadd fast float %1234, %293
  %1236 = fmul fast float %304, %1232
  %1237 = call float @dx.op.unary.f32(i32 22, float %1236)  ; Frc(value)
  %1238 = fadd fast float %1237, %295
  %1239 = fmul fast float %1204, %1232
  %1240 = call float @dx.op.unary.f32(i32 22, float %1239)  ; Frc(value)
  %1241 = fmul fast float %1240, 0x401921FB60000000
  %1242 = fadd fast float %1241, %1223
  %1243 = call float @dx.op.unary.f32(i32 13, float %1242)  ; Sin(value)
  %1244 = call float @dx.op.unary.f32(i32 12, float %1242)  ; Cos(value)
  %1245 = fsub fast float -0.000000e+00, %1243
  %1246 = fadd fast float %1197, -5.000000e-01
  %1247 = fadd fast float %1198, -5.000000e-01
  %1248 = fmul fast float %1215, %1246
  %1249 = fmul fast float %1217, %1247
  %1250 = fadd fast float %1248, 5.000000e-01
  %1251 = fadd fast float %1249, 5.000000e-01
  %1252 = fmul fast float %1226, %1250
  %1253 = fmul fast float %1229, %1251
  %1254 = fmul fast float %1244, %1252
  %1255 = call float @dx.op.tertiary.f32(i32 46, float %1245, float %1253, float %1254)  ; FMad(a,b,c)
  %1256 = fmul fast float %1243, %1252
  %1257 = call float @dx.op.tertiary.f32(i32 46, float %1244, float %1253, float %1256)  ; FMad(a,b,c)
  %1258 = fadd fast float %1235, %1255
  %1259 = fadd fast float %1238, %1257
  %1260 = icmp ugt i32 %1209, 1
  %1261 = icmp ugt i32 %1207, 33554431
  %1262 = or i1 %1261, %1260
  br i1 %1262, label %1263, label %1288

; <label>:1263                                    ; preds = %1190
  %1264 = add i32 %44, 244
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = lshr i32 %1266, 16
  %1268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1267)  ; LegacyF16ToF32(value)
  %1269 = fmul fast float %1231, %1268
  %1270 = call float @dx.op.unary.f32(i32 22, float %1269)  ; Frc(value)
  %1271 = mul nuw nsw i32 %1209, %1210
  %1272 = uitofp i32 %1271 to float
  %1273 = fmul fast float %1270, %1272
  %1274 = call float @dx.op.unary.f32(i32 27, float %1273)  ; Round_ni(value)
  %1275 = fptoui float %1274 to i32
  %1276 = urem i32 %1275, %1209
  %1277 = udiv i32 %1275, %1210
  %1278 = call float @dx.op.unary.f32(i32 22, float %1258)  ; Frc(value)
  %1279 = call float @dx.op.unary.f32(i32 22, float %1259)  ; Frc(value)
  %1280 = uitofp i32 %1276 to float
  %1281 = uitofp i32 %1277 to float
  %1282 = fadd fast float %1278, %1280
  %1283 = fadd fast float %1279, %1281
  %1284 = uitofp i32 %1209 to float
  %1285 = uitofp i32 %1210 to float
  %1286 = fdiv fast float %1282, %1284
  %1287 = fdiv fast float %1283, %1285
  br label %1288

; <label>:1288                                    ; preds = %1263, %1190
  %1289 = phi float [ %1286, %1263 ], [ %1258, %1190 ]
  %1290 = phi float [ %1287, %1263 ], [ %1259, %1190 ]
  %1291 = and i32 %1184, 16777216
  %1292 = icmp eq i32 %1291, 0
  br i1 %1292, label %1402, label %1293

; <label>:1293                                    ; preds = %1288
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 0
  %1296 = extractvalue %dx.types.CBufRet.f32 %1294, 1
  %1297 = extractvalue %dx.types.CBufRet.f32 %1294, 2
  %1298 = fadd fast float %1295, %145
  %1299 = fadd fast float %1296, %146
  %1300 = fadd fast float %1297, %147
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1303 = call float @dx.op.unary.f32(i32 7, float %1302)  ; Saturate(value)
  %1304 = icmp eq i32 %45, 65535
  br i1 %1304, label %1399, label %1305

; <label>:1305                                    ; preds = %1293
  %1306 = lshr i32 %45, 1
  %1307 = shl i32 %1306, 2
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1307, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = and i32 %45, 1
  %1311 = icmp ne i32 %1310, 0
  %1312 = lshr i32 %1309, 16
  %1313 = and i32 %1309, 65535
  %1314 = select i1 %1311, i32 %1312, i32 %1313
  %1315 = icmp eq i32 %1314, 65535
  br i1 %1315, label %1395, label %1316

; <label>:1316                                    ; preds = %1305
  %1317 = mul nuw nsw i32 %1314, 40
  %1318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.f32 %1318, 0
  %1320 = extractvalue %dx.types.ResRet.f32 %1318, 1
  %1321 = extractvalue %dx.types.ResRet.f32 %1318, 2
  %1322 = add nuw nsw i32 %1317, 12
  %1323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1322, i32 undef)  ; BufferLoad(srv,index,wot)
  %1324 = extractvalue %dx.types.ResRet.f32 %1323, 0
  %1325 = extractvalue %dx.types.ResRet.f32 %1323, 1
  %1326 = extractvalue %dx.types.ResRet.f32 %1323, 2
  %1327 = add nuw nsw i32 %1317, 24
  %1328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1327, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.f32 %1328, 0
  %1330 = extractvalue %dx.types.ResRet.f32 %1328, 1
  %1331 = extractvalue %dx.types.ResRet.f32 %1328, 2
  %1332 = add nuw nsw i32 %1317, 36
  %1333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.f32 %1333, 0
  %1335 = fsub fast float %1298, %1319
  %1336 = fsub fast float %1299, %1320
  %1337 = fsub fast float %1300, %1321
  %1338 = fmul fast float %1334, %1335
  %1339 = fmul fast float %1334, %1336
  %1340 = fmul fast float %1334, %1337
  %1341 = call float @dx.op.unary.f32(i32 27, float %1338)  ; Round_ni(value)
  %1342 = call float @dx.op.unary.f32(i32 27, float %1339)  ; Round_ni(value)
  %1343 = call float @dx.op.unary.f32(i32 27, float %1340)  ; Round_ni(value)
  %1344 = fadd fast float %1341, 5.000000e-01
  %1345 = fadd fast float %1342, 5.000000e-01
  %1346 = fadd fast float %1343, 5.000000e-01
  %1347 = fmul fast float %1344, %1324
  %1348 = fmul fast float %1345, %1325
  %1349 = fmul fast float %1346, %1326
  %1350 = shl i32 %45, 2
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1350, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = add i32 %1352, 0
  %1354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1355 = call float @dx.op.unary.f32(i32 22, float %1347)  ; Frc(value)
  %1356 = call float @dx.op.unary.f32(i32 22, float %1348)  ; Frc(value)
  %1357 = call float @dx.op.unary.f32(i32 22, float %1349)  ; Frc(value)
  %1358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1354, %dx.types.Handle %39, float %1355, float %1356, float %1357, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  %1360 = extractvalue %dx.types.ResRet.f32 %1358, 1
  %1361 = extractvalue %dx.types.ResRet.f32 %1358, 2
  %1362 = fmul fast float %1359, 1.023000e+03
  %1363 = fmul fast float %1360, 1.023000e+03
  %1364 = fmul fast float %1361, 1.023000e+03
  %1365 = fadd fast float %1362, 5.000000e-01
  %1366 = fadd fast float %1363, 5.000000e-01
  %1367 = fadd fast float %1364, 5.000000e-01
  %1368 = call float @dx.op.unary.f32(i32 27, float %1365)  ; Round_ni(value)
  %1369 = call float @dx.op.unary.f32(i32 27, float %1366)  ; Round_ni(value)
  %1370 = call float @dx.op.unary.f32(i32 27, float %1367)  ; Round_ni(value)
  %1371 = fsub fast float %1338, %1341
  %1372 = fsub fast float %1339, %1342
  %1373 = fsub fast float %1340, %1343
  %1374 = fmul fast float %1371, 7.500000e-01
  %1375 = fmul fast float %1372, 7.500000e-01
  %1376 = fmul fast float %1373, 7.500000e-01
  %1377 = fadd fast float %1341, 1.250000e-01
  %1378 = fadd fast float %1377, %1374
  %1379 = fadd fast float %1378, %1368
  %1380 = fadd fast float %1342, 1.250000e-01
  %1381 = fadd fast float %1380, %1375
  %1382 = fadd fast float %1381, %1369
  %1383 = fadd fast float %1343, 1.250000e-01
  %1384 = fadd fast float %1383, %1376
  %1385 = fadd fast float %1384, %1370
  %1386 = fmul fast float %1379, %1329
  %1387 = fmul fast float %1382, %1330
  %1388 = fmul fast float %1385, %1331
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1350, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = add i32 %1390, 0
  %1392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1392, %dx.types.Handle %37, float %1386, float %1387, float %1388, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1394 = extractvalue %dx.types.ResRet.f32 %1393, 0
  br label %1395

; <label>:1395                                    ; preds = %1316, %1305
  %1396 = phi float [ %1394, %1316 ], [ -1.000000e+00, %1305 ]
  %1397 = fadd fast float %1396, %1303
  %1398 = call float @dx.op.unary.f32(i32 7, float %1397)  ; Saturate(value)
  br label %1399

; <label>:1399                                    ; preds = %1395, %1293
  %1400 = phi float [ %1398, %1395 ], [ %1303, %1293 ]
  %1401 = fmul fast float %1400, %448
  br label %1402

; <label>:1402                                    ; preds = %1399, %1288
  %1403 = phi float [ %1401, %1399 ], [ %448, %1288 ]
  %1404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.i32 %1404, 0
  %1406 = and i32 %1405, 256
  %1407 = icmp eq i32 %1406, 0
  br i1 %1407, label %1454, label %1408

; <label>:1408                                    ; preds = %1402
  %1409 = add i32 %44, 428
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1409, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = add i32 %1411, 0
  %1413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1412, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1414 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1413, %dx.types.Handle %87, float %1289, float %1290, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1415 = extractvalue %dx.types.ResRet.f32 %1414, 0
  %1416 = add i32 %44, 116
  %1417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1416, i32 undef)  ; BufferLoad(srv,index,wot)
  %1418 = extractvalue %dx.types.ResRet.i32 %1417, 0
  %1419 = shl i32 %1418, 4
  %1420 = and i32 %1419, 32752
  %1421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1420)  ; LegacyF16ToF32(value)
  %1422 = lshr i32 %1418, 7
  %1423 = and i32 %1422, 32752
  %1424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1423)  ; LegacyF16ToF32(value)
  %1425 = fsub fast float 1.000000e+00, %1403
  %1426 = call float @dx.op.binary.f32(i32 35, float %1425, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1427 = bitcast float %1403 to i32
  %1428 = sitofp i32 %1427 to float
  %1429 = fadd fast float %1428, 0xC1CFBF8940000000
  %1430 = fmul fast float %1424, %1429
  %1431 = fadd fast float %1430, 0x41CFBF8940000000
  %1432 = fptosi float %1431 to i32
  %1433 = bitcast i32 %1432 to float
  %1434 = bitcast float %1426 to i32
  %1435 = sitofp i32 %1434 to float
  %1436 = fadd fast float %1435, 0xC1CFBF8940000000
  %1437 = fmul fast float %1436, %1424
  %1438 = fadd fast float %1437, 0x41CFBF8940000000
  %1439 = fptosi float %1438 to i32
  %1440 = bitcast i32 %1439 to float
  %1441 = fmul fast float %1433, %1421
  %1442 = fmul fast float %1440, %1421
  %1443 = fsub fast float %1426, %1441
  %1444 = fadd fast float %1442, %1426
  %1445 = call float @dx.op.unary.f32(i32 7, float %1443)  ; Saturate(value)
  %1446 = call float @dx.op.unary.f32(i32 7, float %1444)  ; Saturate(value)
  %1447 = fsub fast float %1415, %1445
  %1448 = fsub fast float %1446, %1445
  %1449 = bitcast float %1448 to i32
  %1450 = sub nsw i32 2129859010, %1449
  %1451 = bitcast i32 %1450 to float
  %1452 = fmul fast float %1451, %1447
  %1453 = call float @dx.op.unary.f32(i32 7, float %1452)  ; Saturate(value)
  br label %1454

; <label>:1454                                    ; preds = %1408, %1402
  %1455 = phi float [ %1453, %1408 ], [ %1403, %1402 ]
  %1456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.i32 %1456, 0
  %1458 = and i32 %1457, 128
  %1459 = icmp eq i32 %1458, 0
  br i1 %1459, label %1476, label %1460

; <label>:1460                                    ; preds = %1454
  %1461 = add i32 %44, 412
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = add i32 %1463, 0
  %1465 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1464, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1466 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1465, %dx.types.Handle %87, float %1289, float %1290, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1467 = extractvalue %dx.types.ResRet.f32 %1466, 0
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = and i32 %1469, 524288
  %1471 = icmp ne i32 %1470, 0
  %1472 = fcmp fast ogt float %1467, 0x3FE0101020000000
  %1473 = select i1 %1472, float 1.000000e+00, float 0.000000e+00
  %1474 = select i1 %1471, float %1473, float %1467
  %1475 = fmul fast float %1474, %1455
  br label %1476

; <label>:1476                                    ; preds = %1460, %1454
  %1477 = phi float [ %1475, %1460 ], [ %1455, %1454 ]
  %1478 = fcmp fast ult float %1477, 0x3F70101020000000
  br i1 %1478, label %2108, label %1479

; <label>:1479                                    ; preds = %1476
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = and i32 %1481, 16
  %1483 = icmp eq i32 %1482, 0
  br i1 %1483, label %1682, label %1484

; <label>:1484                                    ; preds = %1479
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = add i32 %44, 364
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1487, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = add i32 %1489, 0
  %1491 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1490, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1492 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1491, %dx.types.Handle %86, float %1289, float %1290, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1493 = extractvalue %dx.types.ResRet.f32 %1492, 0
  %1494 = extractvalue %dx.types.ResRet.f32 %1492, 1
  %1495 = extractvalue %dx.types.ResRet.f32 %1492, 2
  %1496 = extractvalue %dx.types.ResRet.f32 %1492, 3
  %1497 = and i32 %1486, 255
  %1498 = uitofp i32 %1497 to float
  %1499 = lshr i32 %1486, 8
  %1500 = and i32 %1499, 255
  %1501 = uitofp i32 %1500 to float
  %1502 = fmul fast float %1496, %1498
  %1503 = fadd fast float %1502, %1501
  %1504 = fmul fast float %1503, 0x3F70101000000000
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = and i32 %1506, 512
  %1508 = icmp eq i32 %1507, 0
  br i1 %1508, label %1517, label %1509

; <label>:1509                                    ; preds = %1484
  %1510 = add i32 %44, 444
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = add i32 %1512, 0
  %1514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1513, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1515 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1514, %dx.types.Handle %87, float %1289, float %1290, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1516 = extractvalue %dx.types.ResRet.f32 %1515, 0
  br label %1517

; <label>:1517                                    ; preds = %1509, %1484
  %1518 = phi float [ %1516, %1509 ], [ 1.000000e+00, %1484 ]
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = and i32 %1520, 33554432
  %1522 = icmp eq i32 %1521, 0
  br i1 %1522, label %1629, label %1523

; <label>:1523                                    ; preds = %1517
  %1524 = add i32 %44, 240
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1524, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 65535
  %1528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1527)  ; LegacyF16ToF32(value)
  %1529 = lshr i32 %1526, 16
  %1530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1529)  ; LegacyF16ToF32(value)
  %1531 = add i32 %44, 244
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1531, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = and i32 %1533, 65535
  %1535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1534)  ; LegacyF16ToF32(value)
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = lshr i32 %1537, 24
  %1539 = uitofp i32 %1538 to float
  %1540 = fmul fast float %1539, 0x3F70101020000000
  %1541 = and i32 %1537, 255
  %1542 = uitofp i32 %1541 to float
  %1543 = fmul fast float %1542, 0x3F70101020000000
  %1544 = lshr i32 %1537, 8
  %1545 = and i32 %1544, 255
  %1546 = uitofp i32 %1545 to float
  %1547 = fmul fast float %1546, 0x3F70101020000000
  %1548 = lshr i32 %1537, 16
  %1549 = and i32 %1548, 255
  %1550 = uitofp i32 %1549 to float
  %1551 = fmul fast float %1550, 0x3F70101020000000
  %1552 = add i32 %44, 236
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = lshr i32 %1554, 24
  %1556 = uitofp i32 %1555 to float
  %1557 = fmul fast float %1556, 0x3F70101020000000
  %1558 = and i32 %1554, 255
  %1559 = uitofp i32 %1558 to float
  %1560 = fmul fast float %1559, 0x3F70101020000000
  %1561 = lshr i32 %1554, 8
  %1562 = and i32 %1561, 255
  %1563 = uitofp i32 %1562 to float
  %1564 = fmul fast float %1563, 0x3F70101020000000
  %1565 = lshr i32 %1554, 16
  %1566 = and i32 %1565, 255
  %1567 = uitofp i32 %1566 to float
  %1568 = fmul fast float %1567, 0x3F70101020000000
  %1569 = bitcast float %1493 to i32
  %1570 = ashr i32 %1569, 1
  %1571 = sub nsw i32 1597463174, %1570
  %1572 = bitcast i32 %1571 to float
  %1573 = fmul fast float %1493, 5.000000e-01
  %1574 = fmul fast float %1572, %1572
  %1575 = fmul fast float %1574, %1573
  %1576 = fsub fast float 1.500000e+00, %1575
  %1577 = fmul fast float %1572, %1493
  %1578 = fmul fast float %1577, %1576
  %1579 = bitcast float %1494 to i32
  %1580 = ashr i32 %1579, 1
  %1581 = sub nsw i32 1597463174, %1580
  %1582 = bitcast i32 %1581 to float
  %1583 = fmul fast float %1494, 5.000000e-01
  %1584 = fmul fast float %1582, %1582
  %1585 = fmul fast float %1584, %1583
  %1586 = fsub fast float 1.500000e+00, %1585
  %1587 = fmul fast float %1582, %1494
  %1588 = fmul fast float %1587, %1586
  %1589 = bitcast float %1495 to i32
  %1590 = ashr i32 %1589, 1
  %1591 = sub nsw i32 1597463174, %1590
  %1592 = bitcast i32 %1591 to float
  %1593 = fmul fast float %1495, 5.000000e-01
  %1594 = fmul fast float %1592, %1592
  %1595 = fmul fast float %1594, %1593
  %1596 = fsub fast float 1.500000e+00, %1595
  %1597 = fmul fast float %1592, %1495
  %1598 = fmul fast float %1597, %1596
  %1599 = fsub fast float %1578, %1560
  %1600 = fsub fast float %1588, %1564
  %1601 = fsub fast float %1598, %1568
  %1602 = fmul fast float %1599, %1528
  %1603 = fmul fast float %1600, %1530
  %1604 = fmul fast float %1601, %1535
  %1605 = fadd fast float %1602, %1543
  %1606 = fadd fast float %1603, %1547
  %1607 = fadd fast float %1604, %1551
  %1608 = call float @dx.op.unary.f32(i32 7, float %1605)  ; Saturate(value)
  %1609 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1610 = call float @dx.op.unary.f32(i32 7, float %1607)  ; Saturate(value)
  %1611 = fmul fast float %1608, %1608
  %1612 = fmul fast float %1609, %1609
  %1613 = fmul fast float %1610, %1610
  %1614 = fsub fast float %1611, %1493
  %1615 = fsub fast float %1612, %1494
  %1616 = fsub fast float %1613, %1495
  %1617 = fmul fast float %1614, %1518
  %1618 = fmul fast float %1615, %1518
  %1619 = fmul fast float %1616, %1518
  %1620 = fadd fast float %1617, %1493
  %1621 = fadd fast float %1618, %1494
  %1622 = fadd fast float %1619, %1495
  %1623 = fadd fast float %1540, %1504
  %1624 = fsub fast float %1623, %1557
  %1625 = call float @dx.op.unary.f32(i32 7, float %1624)  ; Saturate(value)
  %1626 = fsub fast float %1625, %1504
  %1627 = fmul fast float %1626, %1518
  %1628 = fadd fast float %1627, %1504
  br label %1682

; <label>:1629                                    ; preds = %1517
  %1630 = and i32 %1520, 134217728
  %1631 = icmp eq i32 %1630, 0
  br i1 %1631, label %1666, label %1632

; <label>:1632                                    ; preds = %1629
  %1633 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %1634 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %1635 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %1636 = fadd fast float %1633, -5.000000e-01
  %1637 = fadd fast float %1634, -5.000000e-01
  %1638 = fadd fast float %1635, -5.000000e-01
  %1639 = fmul fast float %1636, %1518
  %1640 = fmul fast float %1637, %1518
  %1641 = fmul fast float %1638, %1518
  %1642 = fadd fast float %1639, 5.000000e-01
  %1643 = fadd fast float %1640, 5.000000e-01
  %1644 = fadd fast float %1641, 5.000000e-01
  %1645 = call float @dx.op.unary.f32(i32 24, float %1493)  ; Sqrt(value)
  %1646 = call float @dx.op.unary.f32(i32 24, float %1494)  ; Sqrt(value)
  %1647 = call float @dx.op.unary.f32(i32 24, float %1495)  ; Sqrt(value)
  %1648 = fmul fast float %1642, 2.000000e+00
  %1649 = fsub fast float 1.000000e+00, %1648
  %1650 = fmul fast float %1649, %1645
  %1651 = fadd fast float %1650, %1648
  %1652 = fmul fast float %1651, %1645
  %1653 = fmul fast float %1643, 2.000000e+00
  %1654 = fsub fast float 1.000000e+00, %1653
  %1655 = fmul fast float %1654, %1646
  %1656 = fadd fast float %1655, %1653
  %1657 = fmul fast float %1656, %1646
  %1658 = fmul fast float %1644, 2.000000e+00
  %1659 = fsub fast float 1.000000e+00, %1658
  %1660 = fmul fast float %1659, %1647
  %1661 = fadd fast float %1660, %1658
  %1662 = fmul fast float %1661, %1647
  %1663 = fmul fast float %1652, %1652
  %1664 = fmul fast float %1657, %1657
  %1665 = fmul fast float %1662, %1662
  br label %1682

; <label>:1666                                    ; preds = %1629
  %1667 = fmul fast float %280, %280
  %1668 = fmul fast float %284, %284
  %1669 = fmul fast float %288, %288
  %1670 = fadd fast float %1667, -1.000000e+00
  %1671 = fadd fast float %1668, -1.000000e+00
  %1672 = fadd fast float %1669, -1.000000e+00
  %1673 = fmul fast float %1518, %1670
  %1674 = fmul fast float %1518, %1671
  %1675 = fmul fast float %1518, %1672
  %1676 = fadd fast float %1673, 1.000000e+00
  %1677 = fadd fast float %1674, 1.000000e+00
  %1678 = fadd fast float %1675, 1.000000e+00
  %1679 = fmul fast float %1676, %1493
  %1680 = fmul fast float %1677, %1494
  %1681 = fmul fast float %1678, %1495
  br label %1682

; <label>:1682                                    ; preds = %1666, %1632, %1523, %1479
  %1683 = phi float [ %1628, %1523 ], [ %1504, %1632 ], [ %1504, %1666 ], [ 0x3FA23C0BE0000000, %1479 ]
  %1684 = phi float [ %1620, %1523 ], [ %1663, %1632 ], [ %1679, %1666 ], [ 1.000000e+00, %1479 ]
  %1685 = phi float [ %1621, %1523 ], [ %1664, %1632 ], [ %1680, %1666 ], [ 1.000000e+00, %1479 ]
  %1686 = phi float [ %1622, %1523 ], [ %1665, %1632 ], [ %1681, %1666 ], [ 1.000000e+00, %1479 ]
  %1687 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1688 = extractvalue %dx.types.CBufRet.i32 %1687, 1
  %1689 = and i32 %1688, 1
  %1690 = icmp ne i32 %1689, 0
  %1691 = add i32 %44, 356
  %1692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1693 = extractvalue %dx.types.ResRet.i32 %1692, 0
  %1694 = and i32 %1693, 32
  %1695 = icmp ne i32 %1694, 0
  %1696 = and i1 %1690, %1695
  %1697 = select i1 %1696, float 1.000000e+00, float %1684
  %1698 = select i1 %1696, float 0x3FD3333340000000, float %1685
  %1699 = select i1 %1696, float 0x3FD3333340000000, float %1686
  %1700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1701 = extractvalue %dx.types.ResRet.i32 %1700, 0
  %1702 = and i32 %1701, 32
  %1703 = icmp eq i32 %1702, 0
  br i1 %1703, label %1776, label %1704

; <label>:1704                                    ; preds = %1682
  %1705 = add i32 %44, 108
  %1706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %1707 = extractvalue %dx.types.ResRet.i32 %1706, 0
  %1708 = add i32 %44, 380
  %1709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1710 = extractvalue %dx.types.ResRet.i32 %1709, 0
  %1711 = add i32 %1710, 0
  %1712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1711, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1713 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1712, %dx.types.Handle %86, float %1289, float %1290, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1714 = extractvalue %dx.types.ResRet.f32 %1713, 0
  %1715 = extractvalue %dx.types.ResRet.f32 %1713, 1
  %1716 = extractvalue %dx.types.ResRet.f32 %1713, 2
  %1717 = extractvalue %dx.types.ResRet.f32 %1713, 3
  %1718 = and i32 %1707, 255
  %1719 = uitofp i32 %1718 to float
  %1720 = lshr i32 %1707, 8
  %1721 = and i32 %1720, 255
  %1722 = uitofp i32 %1721 to float
  %1723 = lshr i32 %1707, 16
  %1724 = and i32 %1723, 255
  %1725 = uitofp i32 %1724 to float
  %1726 = fmul fast float %1725, 0x3F70101000000000
  %1727 = fmul fast float %1714, %1719
  %1728 = fadd fast float %1727, %1722
  %1729 = fmul fast float %1728, 0x3F70101000000000
  %1730 = fadd fast float %1715, -5.000000e-01
  %1731 = fadd fast float %1717, -5.000000e-01
  %1732 = fmul fast float %1730, %1726
  %1733 = fmul fast float %1731, %1726
  %1734 = fadd fast float %1732, 5.000000e-01
  %1735 = fadd fast float %1733, 5.000000e-01
  %1736 = fmul fast float %1734, 2.000000e+00
  %1737 = fadd fast float %1736, -1.000000e+00
  %1738 = fmul fast float %1735, 2.000000e+00
  %1739 = fadd fast float %1738, -1.000000e+00
  %1740 = fadd fast float %1737, %1739
  %1741 = fmul fast float %1740, 5.000000e-01
  %1742 = fsub fast float %1737, %1739
  %1743 = fmul fast float %1742, 5.000000e-01
  %1744 = call float @dx.op.unary.f32(i32 6, float %1741)  ; FAbs(value)
  %1745 = fsub fast float 1.000000e+00, %1744
  %1746 = call float @dx.op.unary.f32(i32 6, float %1743)  ; FAbs(value)
  %1747 = fsub fast float %1745, %1746
  %1748 = call float @dx.op.dot3.f32(i32 55, float %1741, float %1743, float %1747, float %1741, float %1743, float %1747)  ; Dot3(ax,ay,az,bx,by,bz)
  %1749 = call float @dx.op.unary.f32(i32 25, float %1748)  ; Rsqrt(value)
  %1750 = fmul fast float %1741, %1749
  %1751 = fmul fast float %1743, %1749
  %1752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.i32 %1752, 0
  %1754 = and i32 %1753, 67108864
  %1755 = icmp eq i32 %1754, 0
  br i1 %1755, label %1772, label %1756

; <label>:1756                                    ; preds = %1704
  %1757 = add i32 %44, 296
  %1758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1757, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.i32 %1758, 0
  %1760 = and i32 %1759, 65535
  %1761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1760)  ; LegacyF16ToF32(value)
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = and i32 %1763, 65535
  %1765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1764)  ; LegacyF16ToF32(value)
  %1766 = lshr i32 %1759, 16
  %1767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1766)  ; LegacyF16ToF32(value)
  %1768 = fsub fast float %1729, %1767
  %1769 = fmul fast float %1768, %1761
  %1770 = fadd fast float %1769, %1765
  %1771 = call float @dx.op.unary.f32(i32 7, float %1770)  ; Saturate(value)
  br label %1772

; <label>:1772                                    ; preds = %1756, %1704
  %1773 = phi float [ %1771, %1756 ], [ %1729, %1704 ]
  %1774 = call float @dx.op.dot2.f32(i32 54, float %1750, float %1751, float %1193, float %1194)  ; Dot2(ax,ay,bx,by)
  %1775 = call float @dx.op.dot2.f32(i32 54, float %1750, float %1751, float %1195, float %1196)  ; Dot2(ax,ay,bx,by)
  br label %1776

; <label>:1776                                    ; preds = %1772, %1682
  %1777 = phi float [ %1773, %1772 ], [ 0x3FD6666660000000, %1682 ]
  %1778 = phi float [ %1774, %1772 ], [ 0.000000e+00, %1682 ]
  %1779 = phi float [ %1775, %1772 ], [ 0.000000e+00, %1682 ]
  %1780 = phi float [ %1716, %1772 ], [ 1.000000e+00, %1682 ]
  %1781 = add i32 %44, 176
  %1782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.i32 %1782, 0
  %1784 = lshr i32 %1783, 22
  %1785 = shl nuw nsw i32 %1784, 5
  %1786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1785)  ; LegacyF16ToF32(value)
  %1787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1788 = extractvalue %dx.types.ResRet.i32 %1787, 0
  %1789 = and i32 %1788, 64
  %1790 = icmp eq i32 %1789, 0
  br i1 %1790, label %1824, label %1791

; <label>:1791                                    ; preds = %1776
  %1792 = add i32 %44, 396
  %1793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1794 = extractvalue %dx.types.ResRet.i32 %1793, 0
  %1795 = add i32 %1794, 0
  %1796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1795, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.i32 %1797, 0
  %1799 = and i32 %1798, 131072
  %1800 = icmp eq i32 %1799, 0
  %1801 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1796, %dx.types.Handle %86, float %1289, float %1290, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1802 = extractvalue %dx.types.ResRet.f32 %1801, 0
  %1803 = extractvalue %dx.types.ResRet.f32 %1801, 1
  %1804 = extractvalue %dx.types.ResRet.f32 %1801, 2
  %1805 = fmul fast float %1802, %268
  %1806 = fmul fast float %1803, %271
  %1807 = fmul fast float %1804, %274
  br i1 %1800, label %1814, label %1808

; <label>:1808                                    ; preds = %1791
  %1809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.f32 %1809, 0
  %1811 = fmul fast float %1810, %1805
  %1812 = fmul fast float %1810, %1806
  %1813 = fmul fast float %1810, %1807
  br label %1814

; <label>:1814                                    ; preds = %1808, %1791
  %1815 = phi float [ %1811, %1808 ], [ %1805, %1791 ]
  %1816 = phi float [ %1812, %1808 ], [ %1806, %1791 ]
  %1817 = phi float [ %1813, %1808 ], [ %1807, %1791 ]
  %1818 = fmul fast float %1815, %1786
  %1819 = select i1 %206, float %1818, float %1815
  %1820 = call float @dx.op.dot3.f32(i32 55, float %1819, float %1816, float %1817, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1821 = select i1 %206, float 0.000000e+00, float %1815
  %1822 = select i1 %206, float %1820, float %1816
  %1823 = select i1 %206, float 0.000000e+00, float %1817
  br label %1824

; <label>:1824                                    ; preds = %1814, %1776
  %1825 = phi float [ %1821, %1814 ], [ 0.000000e+00, %1776 ]
  %1826 = phi float [ %1822, %1814 ], [ 0.000000e+00, %1776 ]
  %1827 = phi float [ %1823, %1814 ], [ 0.000000e+00, %1776 ]
  %1828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.i32 %1828, 0
  %1830 = and i32 %1829, 10240
  %1831 = icmp eq i32 %1830, 0
  br i1 %1831, label %1876, label %1832

; <label>:1832                                    ; preds = %1824
  %1833 = add i32 %44, 460
  %1834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1833, i32 undef)  ; BufferLoad(srv,index,wot)
  %1835 = extractvalue %dx.types.ResRet.i32 %1834, 0
  %1836 = add i32 %1835, 0
  %1837 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1836, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1838 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1837, %dx.types.Handle %87, float %1289, float %1290, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1839 = extractvalue %dx.types.ResRet.f32 %1838, 1
  %1840 = extractvalue %dx.types.ResRet.f32 %1838, 3
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = and i32 %1842, 1048576
  %1844 = icmp ne i32 %1843, 0
  %1845 = and i32 %1842, 8192
  %1846 = icmp eq i32 %1845, 0
  br i1 %1846, label %1862, label %1847

; <label>:1847                                    ; preds = %1832
  %1848 = extractvalue %dx.types.ResRet.f32 %1838, 2
  %1849 = select i1 %1844, float %1848, float %1839
  %1850 = extractvalue %dx.types.ResRet.f32 %1838, 0
  %1851 = select i1 %1844, float %1850, float %1839
  %1852 = add i32 %44, 112
  %1853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %1854 = extractvalue %dx.types.ResRet.i32 %1853, 0
  %1855 = lshr i32 %1854, 16
  %1856 = and i32 %1855, 255
  %1857 = uitofp i32 %1856 to float
  %1858 = fmul fast float %1857, 0x3F80101020000000
  %1859 = fmul fast float %1858, %1851
  %1860 = fmul fast float %1858, %1839
  %1861 = fmul fast float %1858, %1849
  br label %1862

; <label>:1862                                    ; preds = %1847, %1832
  %1863 = phi float [ %1859, %1847 ], [ 0.000000e+00, %1832 ]
  %1864 = phi float [ %1860, %1847 ], [ 0.000000e+00, %1832 ]
  %1865 = phi float [ %1861, %1847 ], [ 0.000000e+00, %1832 ]
  %1866 = and i32 %1842, 2048
  %1867 = icmp eq i32 %1866, 0
  br i1 %1867, label %1876, label %1868

; <label>:1868                                    ; preds = %1862
  %1869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.i32 %1869, 0
  %1871 = shl i32 %1870, 4
  %1872 = and i32 %1871, 32752
  %1873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1872)  ; LegacyF16ToF32(value)
  %1874 = fmul fast float %1873, %1840
  %1875 = call float @dx.op.binary.f32(i32 35, float %1874, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1876

; <label>:1876                                    ; preds = %1868, %1862, %1824
  %1877 = phi float [ %1863, %1868 ], [ %1863, %1862 ], [ 0.000000e+00, %1824 ]
  %1878 = phi float [ %1864, %1868 ], [ %1864, %1862 ], [ 0.000000e+00, %1824 ]
  %1879 = phi float [ %1865, %1868 ], [ %1865, %1862 ], [ 0.000000e+00, %1824 ]
  %1880 = phi float [ %1875, %1868 ], [ 0x3F70101020000000, %1862 ], [ 0x3F70101020000000, %1824 ]
  %1881 = add i32 %44, 112
  %1882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.i32 %1882, 0
  %1884 = and i32 %1883, 255
  %1885 = uitofp i32 %1884 to float
  %1886 = lshr i32 %1883, 8
  %1887 = and i32 %1886, 255
  %1888 = uitofp i32 %1887 to float
  %1889 = call float @dx.op.dot3.f32(i32 55, float %1697, float %1698, float %1699, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1890 = fmul fast float %1888, %1889
  %1891 = fadd fast float %1890, %1885
  %1892 = fmul fast float %1891, 0x3F70101020000000
  %1893 = call float @dx.op.unary.f32(i32 7, float %1892)  ; Saturate(value)
  br i1 %1181, label %1894, label %1902

; <label>:1894                                    ; preds = %1876
  %1895 = fsub fast float 1.000000e+00, %1477
  %1896 = fmul fast float %1895, %1165
  %1897 = fmul fast float %1895, %1166
  %1898 = fmul fast float %1895, %1167
  %1899 = fmul fast float %1895, %1171
  %1900 = fmul fast float %1895, %1172
  %1901 = fmul fast float %1895, %1173
  br label %1902

; <label>:1902                                    ; preds = %1894, %1876
  %1903 = phi float [ %1896, %1894 ], [ %1165, %1876 ]
  %1904 = phi float [ %1897, %1894 ], [ %1166, %1876 ]
  %1905 = phi float [ %1898, %1894 ], [ %1167, %1876 ]
  %1906 = phi float [ %1899, %1894 ], [ %1171, %1876 ]
  %1907 = phi float [ %1900, %1894 ], [ %1172, %1876 ]
  %1908 = phi float [ %1901, %1894 ], [ %1173, %1876 ]
  %1909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.i32 %1909, 0
  %1911 = and i32 %1910, 3
  %1912 = icmp eq i32 %1911, 3
  br i1 %1912, label %1991, label %1913

; <label>:1913                                    ; preds = %1902
  %1914 = and i32 %1910, 16
  %1915 = icmp ne i32 %1914, 0
  %1916 = select i1 %1915, float %1477, float 0.000000e+00
  %1917 = icmp eq i32 %1911, 0
  br i1 %1917, label %1918, label %1946

; <label>:1918                                    ; preds = %1913
  %1919 = and i32 %1910, 64
  %1920 = icmp ne i32 %1919, 0
  %1921 = select i1 %1920, float %1477, float 0.000000e+00
  %1922 = fsub fast float %1697, %1903
  %1923 = fsub fast float %1698, %1904
  %1924 = fsub fast float %1699, %1905
  %1925 = fmul fast float %1916, %1922
  %1926 = fmul fast float %1916, %1923
  %1927 = fmul fast float %1916, %1924
  %1928 = fadd fast float %1925, %1903
  %1929 = fadd fast float %1926, %1904
  %1930 = fadd fast float %1927, %1905
  %1931 = fsub fast float %1683, %1174
  %1932 = fmul fast float %1916, %1931
  %1933 = fadd fast float %1932, %1174
  %1934 = fsub fast float %1825, %1906
  %1935 = fsub fast float %1826, %1907
  %1936 = fsub fast float %1827, %1908
  %1937 = fmul fast float %1921, %1934
  %1938 = fmul fast float %1921, %1935
  %1939 = fmul fast float %1921, %1936
  %1940 = fadd fast float %1937, %1906
  %1941 = fadd fast float %1938, %1907
  %1942 = fadd fast float %1939, %1908
  %1943 = fsub fast float %1893, %1179
  %1944 = fmul fast float %1916, %1943
  %1945 = fadd fast float %1944, %1179
  br label %1991

; <label>:1946                                    ; preds = %1913
  %1947 = icmp eq i32 %1911, 1
  br i1 %1947, label %1948, label %1961

; <label>:1948                                    ; preds = %1946
  %1949 = fadd fast float %1697, -1.000000e+00
  %1950 = fadd fast float %1698, -1.000000e+00
  %1951 = fadd fast float %1699, -1.000000e+00
  %1952 = fmul fast float %1916, %1949
  %1953 = fmul fast float %1916, %1950
  %1954 = fmul fast float %1916, %1951
  %1955 = fadd fast float %1952, 1.000000e+00
  %1956 = fadd fast float %1953, 1.000000e+00
  %1957 = fadd fast float %1954, 1.000000e+00
  %1958 = fmul fast float %1955, %1903
  %1959 = fmul fast float %1956, %1904
  %1960 = fmul fast float %1957, %1905
  br label %1991

; <label>:1961                                    ; preds = %1946
  %1962 = icmp eq i32 %1911, 2
  br i1 %1962, label %1963, label %1991

; <label>:1963                                    ; preds = %1961
  %1964 = call float @dx.op.unary.f32(i32 24, float %1697)  ; Sqrt(value)
  %1965 = call float @dx.op.unary.f32(i32 24, float %1698)  ; Sqrt(value)
  %1966 = call float @dx.op.unary.f32(i32 24, float %1699)  ; Sqrt(value)
  %1967 = fadd fast float %1964, -5.000000e-01
  %1968 = fadd fast float %1965, -5.000000e-01
  %1969 = fadd fast float %1966, -5.000000e-01
  %1970 = fmul fast float %1967, %1916
  %1971 = fmul fast float %1968, %1916
  %1972 = fmul fast float %1969, %1916
  %1973 = fadd fast float %1970, 5.000000e-01
  %1974 = fadd fast float %1971, 5.000000e-01
  %1975 = fadd fast float %1972, 5.000000e-01
  %1976 = fmul fast float %1973, 2.000000e+00
  %1977 = fsub fast float 1.000000e+00, %1976
  %1978 = fmul fast float %1977, %1903
  %1979 = fadd fast float %1978, %1976
  %1980 = fmul fast float %1979, %1903
  %1981 = fmul fast float %1974, 2.000000e+00
  %1982 = fsub fast float 1.000000e+00, %1981
  %1983 = fmul fast float %1982, %1904
  %1984 = fadd fast float %1983, %1981
  %1985 = fmul fast float %1984, %1904
  %1986 = fmul fast float %1975, 2.000000e+00
  %1987 = fsub fast float 1.000000e+00, %1986
  %1988 = fmul fast float %1987, %1905
  %1989 = fadd fast float %1988, %1986
  %1990 = fmul fast float %1989, %1905
  br label %1991

; <label>:1991                                    ; preds = %1963, %1961, %1948, %1918, %1902
  %1992 = phi float [ %1903, %1902 ], [ %1980, %1963 ], [ %1903, %1961 ], [ %1958, %1948 ], [ %1928, %1918 ]
  %1993 = phi float [ %1904, %1902 ], [ %1985, %1963 ], [ %1904, %1961 ], [ %1959, %1948 ], [ %1929, %1918 ]
  %1994 = phi float [ %1905, %1902 ], [ %1990, %1963 ], [ %1905, %1961 ], [ %1960, %1948 ], [ %1930, %1918 ]
  %1995 = phi float [ %1906, %1902 ], [ %1906, %1963 ], [ %1906, %1961 ], [ %1906, %1948 ], [ %1940, %1918 ]
  %1996 = phi float [ %1907, %1902 ], [ %1907, %1963 ], [ %1907, %1961 ], [ %1907, %1948 ], [ %1941, %1918 ]
  %1997 = phi float [ %1908, %1902 ], [ %1908, %1963 ], [ %1908, %1961 ], [ %1908, %1948 ], [ %1942, %1918 ]
  %1998 = phi float [ %1174, %1902 ], [ %1174, %1963 ], [ %1174, %1961 ], [ %1174, %1948 ], [ %1933, %1918 ]
  %1999 = phi float [ %1179, %1902 ], [ %1179, %1963 ], [ %1179, %1961 ], [ %1179, %1948 ], [ %1945, %1918 ]
  %2000 = and i32 %1910, 12
  %2001 = icmp eq i32 %2000, 12
  br i1 %2001, label %2108, label %2002

; <label>:2002                                    ; preds = %1991
  %2003 = and i32 %1910, 2097184
  %2004 = icmp eq i32 %2003, 2097184
  %2005 = select i1 %2004, float %1477, float 0.000000e+00
  %2006 = and i32 %1910, 4194336
  %2007 = icmp eq i32 %2006, 4194336
  %2008 = select i1 %2007, float %1477, float 0.000000e+00
  %2009 = and i32 %1910, 8388640
  %2010 = icmp eq i32 %2009, 8388640
  %2011 = select i1 %2010, float %1477, float 0.000000e+00
  %2012 = and i32 %1910, 2048
  %2013 = icmp ne i32 %2012, 0
  %2014 = select i1 %2013, float %1477, float 0.000000e+00
  %2015 = and i32 %1910, 8192
  %2016 = icmp ne i32 %2015, 0
  %2017 = select i1 %2016, float %1477, float 0.000000e+00
  %2018 = icmp eq i32 %2000, 0
  br i1 %2018, label %2019, label %2044

; <label>:2019                                    ; preds = %2002
  %2020 = fsub fast float %1778, %1163
  %2021 = fsub fast float %1779, %1164
  %2022 = fmul fast float %2005, %2020
  %2023 = fmul fast float %2005, %2021
  %2024 = fadd fast float %2022, %1163
  %2025 = fadd fast float %2023, %1164
  %2026 = fsub fast float %1780, %1177
  %2027 = fmul fast float %2008, %2026
  %2028 = fadd fast float %2027, %1177
  %2029 = fsub fast float %1777, %1176
  %2030 = fmul fast float %2011, %2029
  %2031 = fadd fast float %2030, %1176
  %2032 = fsub fast float %1880, %1178
  %2033 = fmul fast float %2014, %2032
  %2034 = fadd fast float %2033, %1178
  %2035 = fsub fast float %1877, %1168
  %2036 = fsub fast float %1878, %1169
  %2037 = fsub fast float %1879, %1170
  %2038 = fmul fast float %2017, %2035
  %2039 = fmul fast float %2017, %2036
  %2040 = fmul fast float %2017, %2037
  %2041 = fadd fast float %2038, %1168
  %2042 = fadd fast float %2039, %1169
  %2043 = fadd fast float %2040, %1170
  br label %2108

; <label>:2044                                    ; preds = %2002
  %2045 = icmp eq i32 %2000, 4
  br i1 %2045, label %2046, label %2086

; <label>:2046                                    ; preds = %2044
  %2047 = fmul fast float %2005, %1778
  %2048 = fmul fast float %2005, %1779
  %2049 = fadd fast float %2047, %1163
  %2050 = fadd fast float %2048, %1164
  %2051 = call float @dx.op.binary.f32(i32 36, float %1177, float %1780)  ; FMin(a,b)
  %2052 = fsub fast float %2051, %1177
  %2053 = fmul fast float %2052, %2008
  %2054 = fadd fast float %2053, %1177
  %2055 = fadd fast float %1777, %1176
  %2056 = fmul fast float %2055, 0x3FF337FAE0000000
  %2057 = fmul fast float %1176, %1176
  %2058 = fmul fast float %1777, %1777
  %2059 = fadd fast float %2058, %2057
  %2060 = fmul fast float %2059, 0x3FE5152B00000000
  %2061 = fmul fast float %1176, 0xBFCC1F85E0000000
  %2062 = fmul fast float %2061, %1777
  %2063 = fadd fast float %2062, 0xBFE1363700000000
  %2064 = fadd fast float %2063, %2056
  %2065 = fsub fast float %2064, %2060
  %2066 = fmul fast float %2055, 0x3FBA6F0D00000000
  %2067 = fmul fast float %2059, 0x3FD0432880000000
  %2068 = fmul fast float %1176, 0xBFEF110800000000
  %2069 = fmul fast float %2068, %1777
  %2070 = fadd fast float %2069, 1.000000e+00
  %2071 = fsub fast float %2070, %2066
  %2072 = fadd fast float %2071, %2067
  %2073 = fdiv fast float %2065, %2072
  %2074 = call float @dx.op.unary.f32(i32 7, float %2073)  ; Saturate(value)
  %2075 = fsub fast float %2074, %1176
  %2076 = fmul fast float %2075, %2011
  %2077 = fadd fast float %2076, %1176
  %2078 = fmul fast float %2014, %1880
  %2079 = fadd fast float %2078, %1178
  %2080 = fmul fast float %2017, %1877
  %2081 = fmul fast float %2017, %1878
  %2082 = fmul fast float %2017, %1879
  %2083 = fadd fast float %2080, %1168
  %2084 = fadd fast float %2081, %1169
  %2085 = fadd fast float %2082, %1170
  br label %2108

; <label>:2086                                    ; preds = %2044
  %2087 = icmp eq i32 %2000, 8
  br i1 %2087, label %2088, label %2108

; <label>:2088                                    ; preds = %2086
  %2089 = fmul fast float %2005, %1778
  %2090 = fmul fast float %2005, %1779
  %2091 = fadd fast float %2089, %1163
  %2092 = fadd fast float %2090, %1164
  %2093 = call float @dx.op.binary.f32(i32 36, float %1177, float %1780)  ; FMin(a,b)
  %2094 = fsub fast float %2093, %1177
  %2095 = fmul fast float %2094, %2008
  %2096 = fadd fast float %2095, %1177
  %2097 = fsub fast float %1777, %1176
  %2098 = fmul fast float %2011, %2097
  %2099 = fadd fast float %2098, %1176
  %2100 = fmul fast float %2014, %1880
  %2101 = fadd fast float %2100, %1178
  %2102 = fmul fast float %2017, %1877
  %2103 = fmul fast float %2017, %1878
  %2104 = fmul fast float %2017, %1879
  %2105 = fadd fast float %2102, %1168
  %2106 = fadd fast float %2103, %1169
  %2107 = fadd fast float %2104, %1170
  br label %2108

; <label>:2108                                    ; preds = %2088, %2086, %2046, %2019, %1991, %1476, %1180, %1162
  %2109 = phi float [ %1163, %1991 ], [ %1163, %1476 ], [ %1163, %1162 ], [ %2091, %2088 ], [ %1163, %2086 ], [ %2049, %2046 ], [ %2024, %2019 ], [ %1163, %1180 ]
  %2110 = phi float [ %1164, %1991 ], [ %1164, %1476 ], [ %1164, %1162 ], [ %2092, %2088 ], [ %1164, %2086 ], [ %2050, %2046 ], [ %2025, %2019 ], [ %1164, %1180 ]
  %2111 = phi float [ %1992, %1991 ], [ %1165, %1476 ], [ %1165, %1162 ], [ %1992, %2088 ], [ %1992, %2086 ], [ %1992, %2046 ], [ %1992, %2019 ], [ %1165, %1180 ]
  %2112 = phi float [ %1993, %1991 ], [ %1166, %1476 ], [ %1166, %1162 ], [ %1993, %2088 ], [ %1993, %2086 ], [ %1993, %2046 ], [ %1993, %2019 ], [ %1166, %1180 ]
  %2113 = phi float [ %1994, %1991 ], [ %1167, %1476 ], [ %1167, %1162 ], [ %1994, %2088 ], [ %1994, %2086 ], [ %1994, %2046 ], [ %1994, %2019 ], [ %1167, %1180 ]
  %2114 = phi float [ %1168, %1991 ], [ %1168, %1476 ], [ %1168, %1162 ], [ %2105, %2088 ], [ %1168, %2086 ], [ %2083, %2046 ], [ %2041, %2019 ], [ %1168, %1180 ]
  %2115 = phi float [ %1169, %1991 ], [ %1169, %1476 ], [ %1169, %1162 ], [ %2106, %2088 ], [ %1169, %2086 ], [ %2084, %2046 ], [ %2042, %2019 ], [ %1169, %1180 ]
  %2116 = phi float [ %1170, %1991 ], [ %1170, %1476 ], [ %1170, %1162 ], [ %2107, %2088 ], [ %1170, %2086 ], [ %2085, %2046 ], [ %2043, %2019 ], [ %1170, %1180 ]
  %2117 = phi float [ %1995, %1991 ], [ %1171, %1476 ], [ %1171, %1162 ], [ %1995, %2088 ], [ %1995, %2086 ], [ %1995, %2046 ], [ %1995, %2019 ], [ %1171, %1180 ]
  %2118 = phi float [ %1996, %1991 ], [ %1172, %1476 ], [ %1172, %1162 ], [ %1996, %2088 ], [ %1996, %2086 ], [ %1996, %2046 ], [ %1996, %2019 ], [ %1172, %1180 ]
  %2119 = phi float [ %1997, %1991 ], [ %1173, %1476 ], [ %1173, %1162 ], [ %1997, %2088 ], [ %1997, %2086 ], [ %1997, %2046 ], [ %1997, %2019 ], [ %1173, %1180 ]
  %2120 = phi float [ %1998, %1991 ], [ %1174, %1476 ], [ %1174, %1162 ], [ %1998, %2088 ], [ %1998, %2086 ], [ %1998, %2046 ], [ %1998, %2019 ], [ %1174, %1180 ]
  %2121 = phi float [ %1176, %1991 ], [ %1176, %1476 ], [ %1176, %1162 ], [ %2099, %2088 ], [ %1176, %2086 ], [ %2077, %2046 ], [ %2031, %2019 ], [ %1176, %1180 ]
  %2122 = phi float [ %1177, %1991 ], [ %1177, %1476 ], [ %1177, %1162 ], [ %2096, %2088 ], [ %1177, %2086 ], [ %2054, %2046 ], [ %2028, %2019 ], [ %1177, %1180 ]
  %2123 = phi float [ %1178, %1991 ], [ %1178, %1476 ], [ %1178, %1162 ], [ %2101, %2088 ], [ %1178, %2086 ], [ %2079, %2046 ], [ %2034, %2019 ], [ %1178, %1180 ]
  %2124 = phi float [ %1999, %1991 ], [ %1179, %1476 ], [ %1179, %1162 ], [ %1999, %2088 ], [ %1999, %2086 ], [ %1999, %2046 ], [ %1999, %2019 ], [ %1179, %1180 ]
  br i1 %395, label %3053, label %2125

; <label>:2125                                    ; preds = %2108
  %2126 = icmp ult i32 %451, 3
  %2127 = add i32 %44, 56
  %2128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.i32 %2128, 0
  %2130 = add i32 %44, 60
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = or i32 %2132, %2129
  %2134 = icmp eq i32 %2133, 0
  br i1 %2134, label %3053, label %2135

; <label>:2135                                    ; preds = %2125
  %2136 = and i32 %2129, 262144
  %2137 = icmp ne i32 %2136, 0
  %2138 = select i1 %2137, float %47, float 1.000000e+00
  %2139 = select i1 %2137, float %48, float 0.000000e+00
  %2140 = select i1 %2137, float %49, float 0.000000e+00
  %2141 = select i1 %2137, float %50, float 1.000000e+00
  %2142 = select i1 %2137, float %51, float %72
  %2143 = select i1 %2137, float %52, float %73
  %2144 = add i32 %44, 316
  %2145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2144, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.i32 %2145, 0
  %2147 = lshr i32 %2146, 16
  %2148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2147)  ; LegacyF16ToF32(value)
  %2149 = fmul fast float %2148, 0x3F50624DE0000000
  %2150 = add i32 %44, 120
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = lshr i32 %2152, 16
  %2154 = and i32 %2153, 255
  %2155 = lshr i32 %2152, 24
  %2156 = add i32 %44, 324
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2156, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = and i32 %2158, 65535
  %2160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2159)  ; LegacyF16ToF32(value)
  %2161 = lshr i32 %2158, 16
  %2162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2161)  ; LegacyF16ToF32(value)
  %2163 = add i32 %44, 64
  %2164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2163, i32 undef)  ; BufferLoad(srv,index,wot)
  %2165 = extractvalue %dx.types.ResRet.i32 %2164, 0
  %2166 = lshr i32 %2165, 22
  %2167 = shl nuw nsw i32 %2166, 5
  %2168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2167)  ; LegacyF16ToF32(value)
  %2169 = shl i32 %2165, 4
  %2170 = and i32 %2169, 32752
  %2171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2170)  ; LegacyF16ToF32(value)
  %2172 = lshr i32 %2165, 7
  %2173 = and i32 %2172, 32752
  %2174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2173)  ; LegacyF16ToF32(value)
  %2175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2176 = extractvalue %dx.types.CBufRet.f32 %2175, 3
  %2177 = fmul fast float %2176, 1.000000e+03
  %2178 = fmul fast float %345, %2177
  %2179 = call float @dx.op.unary.f32(i32 22, float %2178)  ; Frc(value)
  %2180 = fadd fast float %2179, %335
  %2181 = fmul fast float %346, %2177
  %2182 = call float @dx.op.unary.f32(i32 22, float %2181)  ; Frc(value)
  %2183 = fadd fast float %2182, %337
  %2184 = fmul fast float %2149, %2177
  %2185 = call float @dx.op.unary.f32(i32 22, float %2184)  ; Frc(value)
  %2186 = fmul fast float %2185, 0x401921FB60000000
  %2187 = fadd fast float %2186, %2168
  %2188 = call float @dx.op.unary.f32(i32 13, float %2187)  ; Sin(value)
  %2189 = call float @dx.op.unary.f32(i32 12, float %2187)  ; Cos(value)
  %2190 = fsub fast float -0.000000e+00, %2188
  %2191 = fadd fast float %2142, -5.000000e-01
  %2192 = fadd fast float %2143, -5.000000e-01
  %2193 = fmul fast float %2160, %2191
  %2194 = fmul fast float %2162, %2192
  %2195 = fadd fast float %2193, 5.000000e-01
  %2196 = fadd fast float %2194, 5.000000e-01
  %2197 = fmul fast float %2171, %2195
  %2198 = fmul fast float %2174, %2196
  %2199 = fmul fast float %2189, %2197
  %2200 = call float @dx.op.tertiary.f32(i32 46, float %2190, float %2198, float %2199)  ; FMad(a,b,c)
  %2201 = fmul fast float %2188, %2197
  %2202 = call float @dx.op.tertiary.f32(i32 46, float %2189, float %2198, float %2201)  ; FMad(a,b,c)
  %2203 = fadd fast float %2180, %2200
  %2204 = fadd fast float %2183, %2202
  %2205 = icmp ugt i32 %2154, 1
  %2206 = icmp ugt i32 %2152, 33554431
  %2207 = or i1 %2206, %2205
  br i1 %2207, label %2208, label %2233

; <label>:2208                                    ; preds = %2135
  %2209 = add i32 %44, 260
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2209, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = lshr i32 %2211, 16
  %2213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2212)  ; LegacyF16ToF32(value)
  %2214 = fmul fast float %2176, %2213
  %2215 = call float @dx.op.unary.f32(i32 22, float %2214)  ; Frc(value)
  %2216 = mul nuw nsw i32 %2154, %2155
  %2217 = uitofp i32 %2216 to float
  %2218 = fmul fast float %2215, %2217
  %2219 = call float @dx.op.unary.f32(i32 27, float %2218)  ; Round_ni(value)
  %2220 = fptoui float %2219 to i32
  %2221 = urem i32 %2220, %2154
  %2222 = udiv i32 %2220, %2155
  %2223 = call float @dx.op.unary.f32(i32 22, float %2203)  ; Frc(value)
  %2224 = call float @dx.op.unary.f32(i32 22, float %2204)  ; Frc(value)
  %2225 = uitofp i32 %2221 to float
  %2226 = uitofp i32 %2222 to float
  %2227 = fadd fast float %2223, %2225
  %2228 = fadd fast float %2224, %2226
  %2229 = uitofp i32 %2154 to float
  %2230 = uitofp i32 %2155 to float
  %2231 = fdiv fast float %2227, %2229
  %2232 = fdiv fast float %2228, %2230
  br label %2233

; <label>:2233                                    ; preds = %2208, %2135
  %2234 = phi float [ %2231, %2208 ], [ %2203, %2135 ]
  %2235 = phi float [ %2232, %2208 ], [ %2204, %2135 ]
  %2236 = and i32 %2129, 16777216
  %2237 = icmp eq i32 %2236, 0
  br i1 %2237, label %2347, label %2238

; <label>:2238                                    ; preds = %2233
  %2239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2240 = extractvalue %dx.types.CBufRet.f32 %2239, 0
  %2241 = extractvalue %dx.types.CBufRet.f32 %2239, 1
  %2242 = extractvalue %dx.types.CBufRet.f32 %2239, 2
  %2243 = fadd fast float %2240, %145
  %2244 = fadd fast float %2241, %146
  %2245 = fadd fast float %2242, %147
  %2246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2247 = extractvalue %dx.types.CBufRet.f32 %2246, 0
  %2248 = call float @dx.op.unary.f32(i32 7, float %2247)  ; Saturate(value)
  %2249 = icmp eq i32 %45, 65535
  br i1 %2249, label %2344, label %2250

; <label>:2250                                    ; preds = %2238
  %2251 = lshr i32 %45, 1
  %2252 = shl i32 %2251, 2
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = and i32 %45, 1
  %2256 = icmp ne i32 %2255, 0
  %2257 = lshr i32 %2254, 16
  %2258 = and i32 %2254, 65535
  %2259 = select i1 %2256, i32 %2257, i32 %2258
  %2260 = icmp eq i32 %2259, 65535
  br i1 %2260, label %2340, label %2261

; <label>:2261                                    ; preds = %2250
  %2262 = mul nuw nsw i32 %2259, 40
  %2263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.f32 %2263, 0
  %2265 = extractvalue %dx.types.ResRet.f32 %2263, 1
  %2266 = extractvalue %dx.types.ResRet.f32 %2263, 2
  %2267 = add nuw nsw i32 %2262, 12
  %2268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2267, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.f32 %2268, 0
  %2270 = extractvalue %dx.types.ResRet.f32 %2268, 1
  %2271 = extractvalue %dx.types.ResRet.f32 %2268, 2
  %2272 = add nuw nsw i32 %2262, 24
  %2273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.f32 %2273, 0
  %2275 = extractvalue %dx.types.ResRet.f32 %2273, 1
  %2276 = extractvalue %dx.types.ResRet.f32 %2273, 2
  %2277 = add nuw nsw i32 %2262, 36
  %2278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2277, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.f32 %2278, 0
  %2280 = fsub fast float %2243, %2264
  %2281 = fsub fast float %2244, %2265
  %2282 = fsub fast float %2245, %2266
  %2283 = fmul fast float %2279, %2280
  %2284 = fmul fast float %2279, %2281
  %2285 = fmul fast float %2279, %2282
  %2286 = call float @dx.op.unary.f32(i32 27, float %2283)  ; Round_ni(value)
  %2287 = call float @dx.op.unary.f32(i32 27, float %2284)  ; Round_ni(value)
  %2288 = call float @dx.op.unary.f32(i32 27, float %2285)  ; Round_ni(value)
  %2289 = fadd fast float %2286, 5.000000e-01
  %2290 = fadd fast float %2287, 5.000000e-01
  %2291 = fadd fast float %2288, 5.000000e-01
  %2292 = fmul fast float %2289, %2269
  %2293 = fmul fast float %2290, %2270
  %2294 = fmul fast float %2291, %2271
  %2295 = shl i32 %45, 2
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = add i32 %2297, 0
  %2299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2300 = call float @dx.op.unary.f32(i32 22, float %2292)  ; Frc(value)
  %2301 = call float @dx.op.unary.f32(i32 22, float %2293)  ; Frc(value)
  %2302 = call float @dx.op.unary.f32(i32 22, float %2294)  ; Frc(value)
  %2303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2299, %dx.types.Handle %39, float %2300, float %2301, float %2302, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2304 = extractvalue %dx.types.ResRet.f32 %2303, 0
  %2305 = extractvalue %dx.types.ResRet.f32 %2303, 1
  %2306 = extractvalue %dx.types.ResRet.f32 %2303, 2
  %2307 = fmul fast float %2304, 1.023000e+03
  %2308 = fmul fast float %2305, 1.023000e+03
  %2309 = fmul fast float %2306, 1.023000e+03
  %2310 = fadd fast float %2307, 5.000000e-01
  %2311 = fadd fast float %2308, 5.000000e-01
  %2312 = fadd fast float %2309, 5.000000e-01
  %2313 = call float @dx.op.unary.f32(i32 27, float %2310)  ; Round_ni(value)
  %2314 = call float @dx.op.unary.f32(i32 27, float %2311)  ; Round_ni(value)
  %2315 = call float @dx.op.unary.f32(i32 27, float %2312)  ; Round_ni(value)
  %2316 = fsub fast float %2283, %2286
  %2317 = fsub fast float %2284, %2287
  %2318 = fsub fast float %2285, %2288
  %2319 = fmul fast float %2316, 7.500000e-01
  %2320 = fmul fast float %2317, 7.500000e-01
  %2321 = fmul fast float %2318, 7.500000e-01
  %2322 = fadd fast float %2286, 1.250000e-01
  %2323 = fadd fast float %2322, %2319
  %2324 = fadd fast float %2323, %2313
  %2325 = fadd fast float %2287, 1.250000e-01
  %2326 = fadd fast float %2325, %2320
  %2327 = fadd fast float %2326, %2314
  %2328 = fadd fast float %2288, 1.250000e-01
  %2329 = fadd fast float %2328, %2321
  %2330 = fadd fast float %2329, %2315
  %2331 = fmul fast float %2324, %2274
  %2332 = fmul fast float %2327, %2275
  %2333 = fmul fast float %2330, %2276
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = add i32 %2335, 0
  %2337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2336, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2337, %dx.types.Handle %37, float %2331, float %2332, float %2333, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2339 = extractvalue %dx.types.ResRet.f32 %2338, 0
  br label %2340

; <label>:2340                                    ; preds = %2261, %2250
  %2341 = phi float [ %2339, %2261 ], [ -1.000000e+00, %2250 ]
  %2342 = fadd fast float %2341, %2248
  %2343 = call float @dx.op.unary.f32(i32 7, float %2342)  ; Saturate(value)
  br label %2344

; <label>:2344                                    ; preds = %2340, %2238
  %2345 = phi float [ %2343, %2340 ], [ %2248, %2238 ]
  %2346 = fmul fast float %2345, %447
  br label %2347

; <label>:2347                                    ; preds = %2344, %2233
  %2348 = phi float [ %2346, %2344 ], [ %447, %2233 ]
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = and i32 %2350, 256
  %2352 = icmp eq i32 %2351, 0
  br i1 %2352, label %2399, label %2353

; <label>:2353                                    ; preds = %2347
  %2354 = add i32 %44, 432
  %2355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2356 = extractvalue %dx.types.ResRet.i32 %2355, 0
  %2357 = add i32 %2356, 0
  %2358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2357, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2359 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2358, %dx.types.Handle %87, float %2234, float %2235, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2360 = extractvalue %dx.types.ResRet.f32 %2359, 0
  %2361 = add i32 %44, 132
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2361, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = shl i32 %2363, 4
  %2365 = and i32 %2364, 32752
  %2366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2365)  ; LegacyF16ToF32(value)
  %2367 = lshr i32 %2363, 7
  %2368 = and i32 %2367, 32752
  %2369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2368)  ; LegacyF16ToF32(value)
  %2370 = fsub fast float 1.000000e+00, %2348
  %2371 = call float @dx.op.binary.f32(i32 35, float %2370, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2372 = bitcast float %2348 to i32
  %2373 = sitofp i32 %2372 to float
  %2374 = fadd fast float %2373, 0xC1CFBF8940000000
  %2375 = fmul fast float %2369, %2374
  %2376 = fadd fast float %2375, 0x41CFBF8940000000
  %2377 = fptosi float %2376 to i32
  %2378 = bitcast i32 %2377 to float
  %2379 = bitcast float %2371 to i32
  %2380 = sitofp i32 %2379 to float
  %2381 = fadd fast float %2380, 0xC1CFBF8940000000
  %2382 = fmul fast float %2381, %2369
  %2383 = fadd fast float %2382, 0x41CFBF8940000000
  %2384 = fptosi float %2383 to i32
  %2385 = bitcast i32 %2384 to float
  %2386 = fmul fast float %2378, %2366
  %2387 = fmul fast float %2385, %2366
  %2388 = fsub fast float %2371, %2386
  %2389 = fadd fast float %2387, %2371
  %2390 = call float @dx.op.unary.f32(i32 7, float %2388)  ; Saturate(value)
  %2391 = call float @dx.op.unary.f32(i32 7, float %2389)  ; Saturate(value)
  %2392 = fsub fast float %2360, %2390
  %2393 = fsub fast float %2391, %2390
  %2394 = bitcast float %2393 to i32
  %2395 = sub nsw i32 2129859010, %2394
  %2396 = bitcast i32 %2395 to float
  %2397 = fmul fast float %2396, %2392
  %2398 = call float @dx.op.unary.f32(i32 7, float %2397)  ; Saturate(value)
  br label %2399

; <label>:2399                                    ; preds = %2353, %2347
  %2400 = phi float [ %2398, %2353 ], [ %2348, %2347 ]
  %2401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2402 = extractvalue %dx.types.ResRet.i32 %2401, 0
  %2403 = and i32 %2402, 128
  %2404 = icmp eq i32 %2403, 0
  br i1 %2404, label %2421, label %2405

; <label>:2405                                    ; preds = %2399
  %2406 = add i32 %44, 416
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = add i32 %2408, 0
  %2410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2409, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2411 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2410, %dx.types.Handle %87, float %2234, float %2235, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2412 = extractvalue %dx.types.ResRet.f32 %2411, 0
  %2413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2414 = extractvalue %dx.types.ResRet.i32 %2413, 0
  %2415 = and i32 %2414, 524288
  %2416 = icmp ne i32 %2415, 0
  %2417 = fcmp fast ogt float %2412, 0x3FE0101020000000
  %2418 = select i1 %2417, float 1.000000e+00, float 0.000000e+00
  %2419 = select i1 %2416, float %2418, float %2412
  %2420 = fmul fast float %2419, %2400
  br label %2421

; <label>:2421                                    ; preds = %2405, %2399
  %2422 = phi float [ %2420, %2405 ], [ %2400, %2399 ]
  %2423 = fcmp fast ult float %2422, 0x3F70101020000000
  br i1 %2423, label %3053, label %2424

; <label>:2424                                    ; preds = %2421
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = and i32 %2426, 16
  %2428 = icmp eq i32 %2427, 0
  br i1 %2428, label %2627, label %2429

; <label>:2429                                    ; preds = %2424
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = add i32 %44, 368
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = add i32 %2434, 0
  %2436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2437 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2436, %dx.types.Handle %86, float %2234, float %2235, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2438 = extractvalue %dx.types.ResRet.f32 %2437, 0
  %2439 = extractvalue %dx.types.ResRet.f32 %2437, 1
  %2440 = extractvalue %dx.types.ResRet.f32 %2437, 2
  %2441 = extractvalue %dx.types.ResRet.f32 %2437, 3
  %2442 = and i32 %2431, 255
  %2443 = uitofp i32 %2442 to float
  %2444 = lshr i32 %2431, 8
  %2445 = and i32 %2444, 255
  %2446 = uitofp i32 %2445 to float
  %2447 = fmul fast float %2441, %2443
  %2448 = fadd fast float %2447, %2446
  %2449 = fmul fast float %2448, 0x3F70101000000000
  %2450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.i32 %2450, 0
  %2452 = and i32 %2451, 512
  %2453 = icmp eq i32 %2452, 0
  br i1 %2453, label %2462, label %2454

; <label>:2454                                    ; preds = %2429
  %2455 = add i32 %44, 448
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2455, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = add i32 %2457, 0
  %2459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2458, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2460 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2459, %dx.types.Handle %87, float %2234, float %2235, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  br label %2462

; <label>:2462                                    ; preds = %2454, %2429
  %2463 = phi float [ %2461, %2454 ], [ 1.000000e+00, %2429 ]
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = and i32 %2465, 33554432
  %2467 = icmp eq i32 %2466, 0
  br i1 %2467, label %2574, label %2468

; <label>:2468                                    ; preds = %2462
  %2469 = add i32 %44, 256
  %2470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2469, i32 undef)  ; BufferLoad(srv,index,wot)
  %2471 = extractvalue %dx.types.ResRet.i32 %2470, 0
  %2472 = and i32 %2471, 65535
  %2473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2472)  ; LegacyF16ToF32(value)
  %2474 = lshr i32 %2471, 16
  %2475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2474)  ; LegacyF16ToF32(value)
  %2476 = add i32 %44, 260
  %2477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2476, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.i32 %2477, 0
  %2479 = and i32 %2478, 65535
  %2480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2479)  ; LegacyF16ToF32(value)
  %2481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.i32 %2481, 0
  %2483 = lshr i32 %2482, 24
  %2484 = uitofp i32 %2483 to float
  %2485 = fmul fast float %2484, 0x3F70101020000000
  %2486 = and i32 %2482, 255
  %2487 = uitofp i32 %2486 to float
  %2488 = fmul fast float %2487, 0x3F70101020000000
  %2489 = lshr i32 %2482, 8
  %2490 = and i32 %2489, 255
  %2491 = uitofp i32 %2490 to float
  %2492 = fmul fast float %2491, 0x3F70101020000000
  %2493 = lshr i32 %2482, 16
  %2494 = and i32 %2493, 255
  %2495 = uitofp i32 %2494 to float
  %2496 = fmul fast float %2495, 0x3F70101020000000
  %2497 = add i32 %44, 252
  %2498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2497, i32 undef)  ; BufferLoad(srv,index,wot)
  %2499 = extractvalue %dx.types.ResRet.i32 %2498, 0
  %2500 = lshr i32 %2499, 24
  %2501 = uitofp i32 %2500 to float
  %2502 = fmul fast float %2501, 0x3F70101020000000
  %2503 = and i32 %2499, 255
  %2504 = uitofp i32 %2503 to float
  %2505 = fmul fast float %2504, 0x3F70101020000000
  %2506 = lshr i32 %2499, 8
  %2507 = and i32 %2506, 255
  %2508 = uitofp i32 %2507 to float
  %2509 = fmul fast float %2508, 0x3F70101020000000
  %2510 = lshr i32 %2499, 16
  %2511 = and i32 %2510, 255
  %2512 = uitofp i32 %2511 to float
  %2513 = fmul fast float %2512, 0x3F70101020000000
  %2514 = bitcast float %2438 to i32
  %2515 = ashr i32 %2514, 1
  %2516 = sub nsw i32 1597463174, %2515
  %2517 = bitcast i32 %2516 to float
  %2518 = fmul fast float %2438, 5.000000e-01
  %2519 = fmul fast float %2517, %2517
  %2520 = fmul fast float %2519, %2518
  %2521 = fsub fast float 1.500000e+00, %2520
  %2522 = fmul fast float %2517, %2438
  %2523 = fmul fast float %2522, %2521
  %2524 = bitcast float %2439 to i32
  %2525 = ashr i32 %2524, 1
  %2526 = sub nsw i32 1597463174, %2525
  %2527 = bitcast i32 %2526 to float
  %2528 = fmul fast float %2439, 5.000000e-01
  %2529 = fmul fast float %2527, %2527
  %2530 = fmul fast float %2529, %2528
  %2531 = fsub fast float 1.500000e+00, %2530
  %2532 = fmul fast float %2527, %2439
  %2533 = fmul fast float %2532, %2531
  %2534 = bitcast float %2440 to i32
  %2535 = ashr i32 %2534, 1
  %2536 = sub nsw i32 1597463174, %2535
  %2537 = bitcast i32 %2536 to float
  %2538 = fmul fast float %2440, 5.000000e-01
  %2539 = fmul fast float %2537, %2537
  %2540 = fmul fast float %2539, %2538
  %2541 = fsub fast float 1.500000e+00, %2540
  %2542 = fmul fast float %2537, %2440
  %2543 = fmul fast float %2542, %2541
  %2544 = fsub fast float %2523, %2505
  %2545 = fsub fast float %2533, %2509
  %2546 = fsub fast float %2543, %2513
  %2547 = fmul fast float %2544, %2473
  %2548 = fmul fast float %2545, %2475
  %2549 = fmul fast float %2546, %2480
  %2550 = fadd fast float %2547, %2488
  %2551 = fadd fast float %2548, %2492
  %2552 = fadd fast float %2549, %2496
  %2553 = call float @dx.op.unary.f32(i32 7, float %2550)  ; Saturate(value)
  %2554 = call float @dx.op.unary.f32(i32 7, float %2551)  ; Saturate(value)
  %2555 = call float @dx.op.unary.f32(i32 7, float %2552)  ; Saturate(value)
  %2556 = fmul fast float %2553, %2553
  %2557 = fmul fast float %2554, %2554
  %2558 = fmul fast float %2555, %2555
  %2559 = fsub fast float %2556, %2438
  %2560 = fsub fast float %2557, %2439
  %2561 = fsub fast float %2558, %2440
  %2562 = fmul fast float %2559, %2463
  %2563 = fmul fast float %2560, %2463
  %2564 = fmul fast float %2561, %2463
  %2565 = fadd fast float %2562, %2438
  %2566 = fadd fast float %2563, %2439
  %2567 = fadd fast float %2564, %2440
  %2568 = fadd fast float %2485, %2449
  %2569 = fsub fast float %2568, %2502
  %2570 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  %2571 = fsub fast float %2570, %2449
  %2572 = fmul fast float %2571, %2463
  %2573 = fadd fast float %2572, %2449
  br label %2627

; <label>:2574                                    ; preds = %2462
  %2575 = and i32 %2465, 134217728
  %2576 = icmp eq i32 %2575, 0
  br i1 %2576, label %2611, label %2577

; <label>:2577                                    ; preds = %2574
  %2578 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %2579 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %2580 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %2581 = fadd fast float %2578, -5.000000e-01
  %2582 = fadd fast float %2579, -5.000000e-01
  %2583 = fadd fast float %2580, -5.000000e-01
  %2584 = fmul fast float %2581, %2463
  %2585 = fmul fast float %2582, %2463
  %2586 = fmul fast float %2583, %2463
  %2587 = fadd fast float %2584, 5.000000e-01
  %2588 = fadd fast float %2585, 5.000000e-01
  %2589 = fadd fast float %2586, 5.000000e-01
  %2590 = call float @dx.op.unary.f32(i32 24, float %2438)  ; Sqrt(value)
  %2591 = call float @dx.op.unary.f32(i32 24, float %2439)  ; Sqrt(value)
  %2592 = call float @dx.op.unary.f32(i32 24, float %2440)  ; Sqrt(value)
  %2593 = fmul fast float %2587, 2.000000e+00
  %2594 = fsub fast float 1.000000e+00, %2593
  %2595 = fmul fast float %2594, %2590
  %2596 = fadd fast float %2595, %2593
  %2597 = fmul fast float %2596, %2590
  %2598 = fmul fast float %2588, 2.000000e+00
  %2599 = fsub fast float 1.000000e+00, %2598
  %2600 = fmul fast float %2599, %2591
  %2601 = fadd fast float %2600, %2598
  %2602 = fmul fast float %2601, %2591
  %2603 = fmul fast float %2589, 2.000000e+00
  %2604 = fsub fast float 1.000000e+00, %2603
  %2605 = fmul fast float %2604, %2592
  %2606 = fadd fast float %2605, %2603
  %2607 = fmul fast float %2606, %2592
  %2608 = fmul fast float %2597, %2597
  %2609 = fmul fast float %2602, %2602
  %2610 = fmul fast float %2607, %2607
  br label %2627

; <label>:2611                                    ; preds = %2574
  %2612 = fmul fast float %322, %322
  %2613 = fmul fast float %326, %326
  %2614 = fmul fast float %330, %330
  %2615 = fadd fast float %2612, -1.000000e+00
  %2616 = fadd fast float %2613, -1.000000e+00
  %2617 = fadd fast float %2614, -1.000000e+00
  %2618 = fmul fast float %2463, %2615
  %2619 = fmul fast float %2463, %2616
  %2620 = fmul fast float %2463, %2617
  %2621 = fadd fast float %2618, 1.000000e+00
  %2622 = fadd fast float %2619, 1.000000e+00
  %2623 = fadd fast float %2620, 1.000000e+00
  %2624 = fmul fast float %2621, %2438
  %2625 = fmul fast float %2622, %2439
  %2626 = fmul fast float %2623, %2440
  br label %2627

; <label>:2627                                    ; preds = %2611, %2577, %2468, %2424
  %2628 = phi float [ %2573, %2468 ], [ %2449, %2577 ], [ %2449, %2611 ], [ 0x3FA23C0BE0000000, %2424 ]
  %2629 = phi float [ %2565, %2468 ], [ %2608, %2577 ], [ %2624, %2611 ], [ 1.000000e+00, %2424 ]
  %2630 = phi float [ %2566, %2468 ], [ %2609, %2577 ], [ %2625, %2611 ], [ 1.000000e+00, %2424 ]
  %2631 = phi float [ %2567, %2468 ], [ %2610, %2577 ], [ %2626, %2611 ], [ 1.000000e+00, %2424 ]
  %2632 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2633 = extractvalue %dx.types.CBufRet.i32 %2632, 1
  %2634 = and i32 %2633, 1
  %2635 = icmp ne i32 %2634, 0
  %2636 = add i32 %44, 356
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 32
  %2640 = icmp ne i32 %2639, 0
  %2641 = and i1 %2635, %2640
  %2642 = select i1 %2641, float 1.000000e+00, float %2629
  %2643 = select i1 %2641, float 0x3FD3333340000000, float %2630
  %2644 = select i1 %2641, float 0x3FD3333340000000, float %2631
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = and i32 %2646, 32
  %2648 = icmp eq i32 %2647, 0
  br i1 %2648, label %2721, label %2649

; <label>:2649                                    ; preds = %2627
  %2650 = add i32 %44, 124
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = add i32 %44, 384
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = add i32 %2655, 0
  %2657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2656, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2658 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2657, %dx.types.Handle %86, float %2234, float %2235, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2659 = extractvalue %dx.types.ResRet.f32 %2658, 0
  %2660 = extractvalue %dx.types.ResRet.f32 %2658, 1
  %2661 = extractvalue %dx.types.ResRet.f32 %2658, 2
  %2662 = extractvalue %dx.types.ResRet.f32 %2658, 3
  %2663 = and i32 %2652, 255
  %2664 = uitofp i32 %2663 to float
  %2665 = lshr i32 %2652, 8
  %2666 = and i32 %2665, 255
  %2667 = uitofp i32 %2666 to float
  %2668 = lshr i32 %2652, 16
  %2669 = and i32 %2668, 255
  %2670 = uitofp i32 %2669 to float
  %2671 = fmul fast float %2670, 0x3F70101000000000
  %2672 = fmul fast float %2659, %2664
  %2673 = fadd fast float %2672, %2667
  %2674 = fmul fast float %2673, 0x3F70101000000000
  %2675 = fadd fast float %2660, -5.000000e-01
  %2676 = fadd fast float %2662, -5.000000e-01
  %2677 = fmul fast float %2675, %2671
  %2678 = fmul fast float %2676, %2671
  %2679 = fadd fast float %2677, 5.000000e-01
  %2680 = fadd fast float %2678, 5.000000e-01
  %2681 = fmul fast float %2679, 2.000000e+00
  %2682 = fadd fast float %2681, -1.000000e+00
  %2683 = fmul fast float %2680, 2.000000e+00
  %2684 = fadd fast float %2683, -1.000000e+00
  %2685 = fadd fast float %2682, %2684
  %2686 = fmul fast float %2685, 5.000000e-01
  %2687 = fsub fast float %2682, %2684
  %2688 = fmul fast float %2687, 5.000000e-01
  %2689 = call float @dx.op.unary.f32(i32 6, float %2686)  ; FAbs(value)
  %2690 = fsub fast float 1.000000e+00, %2689
  %2691 = call float @dx.op.unary.f32(i32 6, float %2688)  ; FAbs(value)
  %2692 = fsub fast float %2690, %2691
  %2693 = call float @dx.op.dot3.f32(i32 55, float %2686, float %2688, float %2692, float %2686, float %2688, float %2692)  ; Dot3(ax,ay,az,bx,by,bz)
  %2694 = call float @dx.op.unary.f32(i32 25, float %2693)  ; Rsqrt(value)
  %2695 = fmul fast float %2686, %2694
  %2696 = fmul fast float %2688, %2694
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = and i32 %2698, 67108864
  %2700 = icmp eq i32 %2699, 0
  br i1 %2700, label %2717, label %2701

; <label>:2701                                    ; preds = %2649
  %2702 = add i32 %44, 312
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = and i32 %2704, 65535
  %2706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2705)  ; LegacyF16ToF32(value)
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2144, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = and i32 %2708, 65535
  %2710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2709)  ; LegacyF16ToF32(value)
  %2711 = lshr i32 %2704, 16
  %2712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2711)  ; LegacyF16ToF32(value)
  %2713 = fsub fast float %2674, %2712
  %2714 = fmul fast float %2713, %2706
  %2715 = fadd fast float %2714, %2710
  %2716 = call float @dx.op.unary.f32(i32 7, float %2715)  ; Saturate(value)
  br label %2717

; <label>:2717                                    ; preds = %2701, %2649
  %2718 = phi float [ %2716, %2701 ], [ %2674, %2649 ]
  %2719 = call float @dx.op.dot2.f32(i32 54, float %2695, float %2696, float %2138, float %2139)  ; Dot2(ax,ay,bx,by)
  %2720 = call float @dx.op.dot2.f32(i32 54, float %2695, float %2696, float %2140, float %2141)  ; Dot2(ax,ay,bx,by)
  br label %2721

; <label>:2721                                    ; preds = %2717, %2627
  %2722 = phi float [ %2718, %2717 ], [ 0x3FD6666660000000, %2627 ]
  %2723 = phi float [ %2719, %2717 ], [ 0.000000e+00, %2627 ]
  %2724 = phi float [ %2720, %2717 ], [ 0.000000e+00, %2627 ]
  %2725 = phi float [ %2661, %2717 ], [ 1.000000e+00, %2627 ]
  %2726 = add i32 %44, 192
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = lshr i32 %2728, 22
  %2730 = shl nuw nsw i32 %2729, 5
  %2731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2730)  ; LegacyF16ToF32(value)
  %2732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.i32 %2732, 0
  %2734 = and i32 %2733, 64
  %2735 = icmp eq i32 %2734, 0
  br i1 %2735, label %2769, label %2736

; <label>:2736                                    ; preds = %2721
  %2737 = add i32 %44, 400
  %2738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2739 = extractvalue %dx.types.ResRet.i32 %2738, 0
  %2740 = add i32 %2739, 0
  %2741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2740, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = and i32 %2743, 131072
  %2745 = icmp eq i32 %2744, 0
  %2746 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2741, %dx.types.Handle %86, float %2234, float %2235, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2747 = extractvalue %dx.types.ResRet.f32 %2746, 0
  %2748 = extractvalue %dx.types.ResRet.f32 %2746, 1
  %2749 = extractvalue %dx.types.ResRet.f32 %2746, 2
  %2750 = fmul fast float %2747, %310
  %2751 = fmul fast float %2748, %313
  %2752 = fmul fast float %2749, %316
  br i1 %2745, label %2759, label %2753

; <label>:2753                                    ; preds = %2736
  %2754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2755 = extractvalue %dx.types.CBufRet.f32 %2754, 0
  %2756 = fmul fast float %2755, %2750
  %2757 = fmul fast float %2755, %2751
  %2758 = fmul fast float %2755, %2752
  br label %2759

; <label>:2759                                    ; preds = %2753, %2736
  %2760 = phi float [ %2756, %2753 ], [ %2750, %2736 ]
  %2761 = phi float [ %2757, %2753 ], [ %2751, %2736 ]
  %2762 = phi float [ %2758, %2753 ], [ %2752, %2736 ]
  %2763 = fmul fast float %2760, %2731
  %2764 = select i1 %206, float %2763, float %2760
  %2765 = call float @dx.op.dot3.f32(i32 55, float %2764, float %2761, float %2762, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2766 = select i1 %206, float 0.000000e+00, float %2760
  %2767 = select i1 %206, float %2765, float %2761
  %2768 = select i1 %206, float 0.000000e+00, float %2762
  br label %2769

; <label>:2769                                    ; preds = %2759, %2721
  %2770 = phi float [ %2766, %2759 ], [ 0.000000e+00, %2721 ]
  %2771 = phi float [ %2767, %2759 ], [ 0.000000e+00, %2721 ]
  %2772 = phi float [ %2768, %2759 ], [ 0.000000e+00, %2721 ]
  %2773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.i32 %2773, 0
  %2775 = and i32 %2774, 10240
  %2776 = icmp eq i32 %2775, 0
  br i1 %2776, label %2821, label %2777

; <label>:2777                                    ; preds = %2769
  %2778 = add i32 %44, 464
  %2779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2778, i32 undef)  ; BufferLoad(srv,index,wot)
  %2780 = extractvalue %dx.types.ResRet.i32 %2779, 0
  %2781 = add i32 %2780, 0
  %2782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2781, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2783 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2782, %dx.types.Handle %87, float %2234, float %2235, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2784 = extractvalue %dx.types.ResRet.f32 %2783, 1
  %2785 = extractvalue %dx.types.ResRet.f32 %2783, 3
  %2786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2787 = extractvalue %dx.types.ResRet.i32 %2786, 0
  %2788 = and i32 %2787, 1048576
  %2789 = icmp ne i32 %2788, 0
  %2790 = and i32 %2787, 8192
  %2791 = icmp eq i32 %2790, 0
  br i1 %2791, label %2807, label %2792

; <label>:2792                                    ; preds = %2777
  %2793 = extractvalue %dx.types.ResRet.f32 %2783, 2
  %2794 = select i1 %2789, float %2793, float %2784
  %2795 = extractvalue %dx.types.ResRet.f32 %2783, 0
  %2796 = select i1 %2789, float %2795, float %2784
  %2797 = add i32 %44, 128
  %2798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2799 = extractvalue %dx.types.ResRet.i32 %2798, 0
  %2800 = lshr i32 %2799, 16
  %2801 = and i32 %2800, 255
  %2802 = uitofp i32 %2801 to float
  %2803 = fmul fast float %2802, 0x3F80101020000000
  %2804 = fmul fast float %2803, %2796
  %2805 = fmul fast float %2803, %2784
  %2806 = fmul fast float %2803, %2794
  br label %2807

; <label>:2807                                    ; preds = %2792, %2777
  %2808 = phi float [ %2804, %2792 ], [ 0.000000e+00, %2777 ]
  %2809 = phi float [ %2805, %2792 ], [ 0.000000e+00, %2777 ]
  %2810 = phi float [ %2806, %2792 ], [ 0.000000e+00, %2777 ]
  %2811 = and i32 %2787, 2048
  %2812 = icmp eq i32 %2811, 0
  br i1 %2812, label %2821, label %2813

; <label>:2813                                    ; preds = %2807
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = shl i32 %2815, 4
  %2817 = and i32 %2816, 32752
  %2818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2817)  ; LegacyF16ToF32(value)
  %2819 = fmul fast float %2818, %2785
  %2820 = call float @dx.op.binary.f32(i32 35, float %2819, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2821

; <label>:2821                                    ; preds = %2813, %2807, %2769
  %2822 = phi float [ %2808, %2813 ], [ %2808, %2807 ], [ 0.000000e+00, %2769 ]
  %2823 = phi float [ %2809, %2813 ], [ %2809, %2807 ], [ 0.000000e+00, %2769 ]
  %2824 = phi float [ %2810, %2813 ], [ %2810, %2807 ], [ 0.000000e+00, %2769 ]
  %2825 = phi float [ %2820, %2813 ], [ 0x3F70101020000000, %2807 ], [ 0x3F70101020000000, %2769 ]
  %2826 = add i32 %44, 128
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = and i32 %2828, 255
  %2830 = uitofp i32 %2829 to float
  %2831 = lshr i32 %2828, 8
  %2832 = and i32 %2831, 255
  %2833 = uitofp i32 %2832 to float
  %2834 = call float @dx.op.dot3.f32(i32 55, float %2642, float %2643, float %2644, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2835 = fmul fast float %2833, %2834
  %2836 = fadd fast float %2835, %2830
  %2837 = fmul fast float %2836, 0x3F70101020000000
  %2838 = call float @dx.op.unary.f32(i32 7, float %2837)  ; Saturate(value)
  br i1 %2126, label %2839, label %2847

; <label>:2839                                    ; preds = %2821
  %2840 = fsub fast float 1.000000e+00, %2422
  %2841 = fmul fast float %2840, %2111
  %2842 = fmul fast float %2840, %2112
  %2843 = fmul fast float %2840, %2113
  %2844 = fmul fast float %2840, %2117
  %2845 = fmul fast float %2840, %2118
  %2846 = fmul fast float %2840, %2119
  br label %2847

; <label>:2847                                    ; preds = %2839, %2821
  %2848 = phi float [ %2841, %2839 ], [ %2111, %2821 ]
  %2849 = phi float [ %2842, %2839 ], [ %2112, %2821 ]
  %2850 = phi float [ %2843, %2839 ], [ %2113, %2821 ]
  %2851 = phi float [ %2844, %2839 ], [ %2117, %2821 ]
  %2852 = phi float [ %2845, %2839 ], [ %2118, %2821 ]
  %2853 = phi float [ %2846, %2839 ], [ %2119, %2821 ]
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = and i32 %2855, 3
  %2857 = icmp eq i32 %2856, 3
  br i1 %2857, label %2936, label %2858

; <label>:2858                                    ; preds = %2847
  %2859 = and i32 %2855, 16
  %2860 = icmp ne i32 %2859, 0
  %2861 = select i1 %2860, float %2422, float 0.000000e+00
  %2862 = icmp eq i32 %2856, 0
  br i1 %2862, label %2863, label %2891

; <label>:2863                                    ; preds = %2858
  %2864 = and i32 %2855, 64
  %2865 = icmp ne i32 %2864, 0
  %2866 = select i1 %2865, float %2422, float 0.000000e+00
  %2867 = fsub fast float %2642, %2848
  %2868 = fsub fast float %2643, %2849
  %2869 = fsub fast float %2644, %2850
  %2870 = fmul fast float %2861, %2867
  %2871 = fmul fast float %2861, %2868
  %2872 = fmul fast float %2861, %2869
  %2873 = fadd fast float %2870, %2848
  %2874 = fadd fast float %2871, %2849
  %2875 = fadd fast float %2872, %2850
  %2876 = fsub fast float %2628, %2120
  %2877 = fmul fast float %2861, %2876
  %2878 = fadd fast float %2877, %2120
  %2879 = fsub fast float %2770, %2851
  %2880 = fsub fast float %2771, %2852
  %2881 = fsub fast float %2772, %2853
  %2882 = fmul fast float %2866, %2879
  %2883 = fmul fast float %2866, %2880
  %2884 = fmul fast float %2866, %2881
  %2885 = fadd fast float %2882, %2851
  %2886 = fadd fast float %2883, %2852
  %2887 = fadd fast float %2884, %2853
  %2888 = fsub fast float %2838, %2124
  %2889 = fmul fast float %2861, %2888
  %2890 = fadd fast float %2889, %2124
  br label %2936

; <label>:2891                                    ; preds = %2858
  %2892 = icmp eq i32 %2856, 1
  br i1 %2892, label %2893, label %2906

; <label>:2893                                    ; preds = %2891
  %2894 = fadd fast float %2642, -1.000000e+00
  %2895 = fadd fast float %2643, -1.000000e+00
  %2896 = fadd fast float %2644, -1.000000e+00
  %2897 = fmul fast float %2861, %2894
  %2898 = fmul fast float %2861, %2895
  %2899 = fmul fast float %2861, %2896
  %2900 = fadd fast float %2897, 1.000000e+00
  %2901 = fadd fast float %2898, 1.000000e+00
  %2902 = fadd fast float %2899, 1.000000e+00
  %2903 = fmul fast float %2900, %2848
  %2904 = fmul fast float %2901, %2849
  %2905 = fmul fast float %2902, %2850
  br label %2936

; <label>:2906                                    ; preds = %2891
  %2907 = icmp eq i32 %2856, 2
  br i1 %2907, label %2908, label %2936

; <label>:2908                                    ; preds = %2906
  %2909 = call float @dx.op.unary.f32(i32 24, float %2642)  ; Sqrt(value)
  %2910 = call float @dx.op.unary.f32(i32 24, float %2643)  ; Sqrt(value)
  %2911 = call float @dx.op.unary.f32(i32 24, float %2644)  ; Sqrt(value)
  %2912 = fadd fast float %2909, -5.000000e-01
  %2913 = fadd fast float %2910, -5.000000e-01
  %2914 = fadd fast float %2911, -5.000000e-01
  %2915 = fmul fast float %2912, %2861
  %2916 = fmul fast float %2913, %2861
  %2917 = fmul fast float %2914, %2861
  %2918 = fadd fast float %2915, 5.000000e-01
  %2919 = fadd fast float %2916, 5.000000e-01
  %2920 = fadd fast float %2917, 5.000000e-01
  %2921 = fmul fast float %2918, 2.000000e+00
  %2922 = fsub fast float 1.000000e+00, %2921
  %2923 = fmul fast float %2922, %2848
  %2924 = fadd fast float %2923, %2921
  %2925 = fmul fast float %2924, %2848
  %2926 = fmul fast float %2919, 2.000000e+00
  %2927 = fsub fast float 1.000000e+00, %2926
  %2928 = fmul fast float %2927, %2849
  %2929 = fadd fast float %2928, %2926
  %2930 = fmul fast float %2929, %2849
  %2931 = fmul fast float %2920, 2.000000e+00
  %2932 = fsub fast float 1.000000e+00, %2931
  %2933 = fmul fast float %2932, %2850
  %2934 = fadd fast float %2933, %2931
  %2935 = fmul fast float %2934, %2850
  br label %2936

; <label>:2936                                    ; preds = %2908, %2906, %2893, %2863, %2847
  %2937 = phi float [ %2848, %2847 ], [ %2925, %2908 ], [ %2848, %2906 ], [ %2903, %2893 ], [ %2873, %2863 ]
  %2938 = phi float [ %2849, %2847 ], [ %2930, %2908 ], [ %2849, %2906 ], [ %2904, %2893 ], [ %2874, %2863 ]
  %2939 = phi float [ %2850, %2847 ], [ %2935, %2908 ], [ %2850, %2906 ], [ %2905, %2893 ], [ %2875, %2863 ]
  %2940 = phi float [ %2851, %2847 ], [ %2851, %2908 ], [ %2851, %2906 ], [ %2851, %2893 ], [ %2885, %2863 ]
  %2941 = phi float [ %2852, %2847 ], [ %2852, %2908 ], [ %2852, %2906 ], [ %2852, %2893 ], [ %2886, %2863 ]
  %2942 = phi float [ %2853, %2847 ], [ %2853, %2908 ], [ %2853, %2906 ], [ %2853, %2893 ], [ %2887, %2863 ]
  %2943 = phi float [ %2120, %2847 ], [ %2120, %2908 ], [ %2120, %2906 ], [ %2120, %2893 ], [ %2878, %2863 ]
  %2944 = phi float [ %2124, %2847 ], [ %2124, %2908 ], [ %2124, %2906 ], [ %2124, %2893 ], [ %2890, %2863 ]
  %2945 = and i32 %2855, 12
  %2946 = icmp eq i32 %2945, 12
  br i1 %2946, label %3053, label %2947

; <label>:2947                                    ; preds = %2936
  %2948 = and i32 %2855, 2097184
  %2949 = icmp eq i32 %2948, 2097184
  %2950 = select i1 %2949, float %2422, float 0.000000e+00
  %2951 = and i32 %2855, 4194336
  %2952 = icmp eq i32 %2951, 4194336
  %2953 = select i1 %2952, float %2422, float 0.000000e+00
  %2954 = and i32 %2855, 8388640
  %2955 = icmp eq i32 %2954, 8388640
  %2956 = select i1 %2955, float %2422, float 0.000000e+00
  %2957 = and i32 %2855, 2048
  %2958 = icmp ne i32 %2957, 0
  %2959 = select i1 %2958, float %2422, float 0.000000e+00
  %2960 = and i32 %2855, 8192
  %2961 = icmp ne i32 %2960, 0
  %2962 = select i1 %2961, float %2422, float 0.000000e+00
  %2963 = icmp eq i32 %2945, 0
  br i1 %2963, label %2964, label %2989

; <label>:2964                                    ; preds = %2947
  %2965 = fsub fast float %2723, %2109
  %2966 = fsub fast float %2724, %2110
  %2967 = fmul fast float %2950, %2965
  %2968 = fmul fast float %2950, %2966
  %2969 = fadd fast float %2967, %2109
  %2970 = fadd fast float %2968, %2110
  %2971 = fsub fast float %2725, %2122
  %2972 = fmul fast float %2953, %2971
  %2973 = fadd fast float %2972, %2122
  %2974 = fsub fast float %2722, %2121
  %2975 = fmul fast float %2956, %2974
  %2976 = fadd fast float %2975, %2121
  %2977 = fsub fast float %2825, %2123
  %2978 = fmul fast float %2959, %2977
  %2979 = fadd fast float %2978, %2123
  %2980 = fsub fast float %2822, %2114
  %2981 = fsub fast float %2823, %2115
  %2982 = fsub fast float %2824, %2116
  %2983 = fmul fast float %2962, %2980
  %2984 = fmul fast float %2962, %2981
  %2985 = fmul fast float %2962, %2982
  %2986 = fadd fast float %2983, %2114
  %2987 = fadd fast float %2984, %2115
  %2988 = fadd fast float %2985, %2116
  br label %3053

; <label>:2989                                    ; preds = %2947
  %2990 = icmp eq i32 %2945, 4
  br i1 %2990, label %2991, label %3031

; <label>:2991                                    ; preds = %2989
  %2992 = fmul fast float %2950, %2723
  %2993 = fmul fast float %2950, %2724
  %2994 = fadd fast float %2992, %2109
  %2995 = fadd fast float %2993, %2110
  %2996 = call float @dx.op.binary.f32(i32 36, float %2122, float %2725)  ; FMin(a,b)
  %2997 = fsub fast float %2996, %2122
  %2998 = fmul fast float %2997, %2953
  %2999 = fadd fast float %2998, %2122
  %3000 = fadd fast float %2722, %2121
  %3001 = fmul fast float %3000, 0x3FF337FAE0000000
  %3002 = fmul fast float %2121, %2121
  %3003 = fmul fast float %2722, %2722
  %3004 = fadd fast float %3003, %3002
  %3005 = fmul fast float %3004, 0x3FE5152B00000000
  %3006 = fmul fast float %2121, 0xBFCC1F85E0000000
  %3007 = fmul fast float %3006, %2722
  %3008 = fadd fast float %3007, 0xBFE1363700000000
  %3009 = fadd fast float %3008, %3001
  %3010 = fsub fast float %3009, %3005
  %3011 = fmul fast float %3000, 0x3FBA6F0D00000000
  %3012 = fmul fast float %3004, 0x3FD0432880000000
  %3013 = fmul fast float %2121, 0xBFEF110800000000
  %3014 = fmul fast float %3013, %2722
  %3015 = fadd fast float %3014, 1.000000e+00
  %3016 = fsub fast float %3015, %3011
  %3017 = fadd fast float %3016, %3012
  %3018 = fdiv fast float %3010, %3017
  %3019 = call float @dx.op.unary.f32(i32 7, float %3018)  ; Saturate(value)
  %3020 = fsub fast float %3019, %2121
  %3021 = fmul fast float %3020, %2956
  %3022 = fadd fast float %3021, %2121
  %3023 = fmul fast float %2959, %2825
  %3024 = fadd fast float %3023, %2123
  %3025 = fmul fast float %2962, %2822
  %3026 = fmul fast float %2962, %2823
  %3027 = fmul fast float %2962, %2824
  %3028 = fadd fast float %3025, %2114
  %3029 = fadd fast float %3026, %2115
  %3030 = fadd fast float %3027, %2116
  br label %3053

; <label>:3031                                    ; preds = %2989
  %3032 = icmp eq i32 %2945, 8
  br i1 %3032, label %3033, label %3053

; <label>:3033                                    ; preds = %3031
  %3034 = fmul fast float %2950, %2723
  %3035 = fmul fast float %2950, %2724
  %3036 = fadd fast float %3034, %2109
  %3037 = fadd fast float %3035, %2110
  %3038 = call float @dx.op.binary.f32(i32 36, float %2122, float %2725)  ; FMin(a,b)
  %3039 = fsub fast float %3038, %2122
  %3040 = fmul fast float %3039, %2953
  %3041 = fadd fast float %3040, %2122
  %3042 = fsub fast float %2722, %2121
  %3043 = fmul fast float %2956, %3042
  %3044 = fadd fast float %3043, %2121
  %3045 = fmul fast float %2959, %2825
  %3046 = fadd fast float %3045, %2123
  %3047 = fmul fast float %2962, %2822
  %3048 = fmul fast float %2962, %2823
  %3049 = fmul fast float %2962, %2824
  %3050 = fadd fast float %3047, %2114
  %3051 = fadd fast float %3048, %2115
  %3052 = fadd fast float %3049, %2116
  br label %3053

; <label>:3053                                    ; preds = %3033, %3031, %2991, %2964, %2936, %2421, %2125, %2108
  %3054 = phi float [ %2109, %2936 ], [ %2109, %2421 ], [ %2109, %2108 ], [ %3036, %3033 ], [ %2109, %3031 ], [ %2994, %2991 ], [ %2969, %2964 ], [ %2109, %2125 ]
  %3055 = phi float [ %2110, %2936 ], [ %2110, %2421 ], [ %2110, %2108 ], [ %3037, %3033 ], [ %2110, %3031 ], [ %2995, %2991 ], [ %2970, %2964 ], [ %2110, %2125 ]
  %3056 = phi float [ %2937, %2936 ], [ %2111, %2421 ], [ %2111, %2108 ], [ %2937, %3033 ], [ %2937, %3031 ], [ %2937, %2991 ], [ %2937, %2964 ], [ %2111, %2125 ]
  %3057 = phi float [ %2938, %2936 ], [ %2112, %2421 ], [ %2112, %2108 ], [ %2938, %3033 ], [ %2938, %3031 ], [ %2938, %2991 ], [ %2938, %2964 ], [ %2112, %2125 ]
  %3058 = phi float [ %2939, %2936 ], [ %2113, %2421 ], [ %2113, %2108 ], [ %2939, %3033 ], [ %2939, %3031 ], [ %2939, %2991 ], [ %2939, %2964 ], [ %2113, %2125 ]
  %3059 = phi float [ %2114, %2936 ], [ %2114, %2421 ], [ %2114, %2108 ], [ %3050, %3033 ], [ %2114, %3031 ], [ %3028, %2991 ], [ %2986, %2964 ], [ %2114, %2125 ]
  %3060 = phi float [ %2115, %2936 ], [ %2115, %2421 ], [ %2115, %2108 ], [ %3051, %3033 ], [ %2115, %3031 ], [ %3029, %2991 ], [ %2987, %2964 ], [ %2115, %2125 ]
  %3061 = phi float [ %2116, %2936 ], [ %2116, %2421 ], [ %2116, %2108 ], [ %3052, %3033 ], [ %2116, %3031 ], [ %3030, %2991 ], [ %2988, %2964 ], [ %2116, %2125 ]
  %3062 = phi float [ %2940, %2936 ], [ %2117, %2421 ], [ %2117, %2108 ], [ %2940, %3033 ], [ %2940, %3031 ], [ %2940, %2991 ], [ %2940, %2964 ], [ %2117, %2125 ]
  %3063 = phi float [ %2941, %2936 ], [ %2118, %2421 ], [ %2118, %2108 ], [ %2941, %3033 ], [ %2941, %3031 ], [ %2941, %2991 ], [ %2941, %2964 ], [ %2118, %2125 ]
  %3064 = phi float [ %2942, %2936 ], [ %2119, %2421 ], [ %2119, %2108 ], [ %2942, %3033 ], [ %2942, %3031 ], [ %2942, %2991 ], [ %2942, %2964 ], [ %2119, %2125 ]
  %3065 = phi float [ %2943, %2936 ], [ %2120, %2421 ], [ %2120, %2108 ], [ %2943, %3033 ], [ %2943, %3031 ], [ %2943, %2991 ], [ %2943, %2964 ], [ %2120, %2125 ]
  %3066 = phi float [ %2121, %2936 ], [ %2121, %2421 ], [ %2121, %2108 ], [ %3044, %3033 ], [ %2121, %3031 ], [ %3022, %2991 ], [ %2976, %2964 ], [ %2121, %2125 ]
  %3067 = phi float [ %2122, %2936 ], [ %2122, %2421 ], [ %2122, %2108 ], [ %3041, %3033 ], [ %2122, %3031 ], [ %2999, %2991 ], [ %2973, %2964 ], [ %2122, %2125 ]
  %3068 = phi float [ %2123, %2936 ], [ %2123, %2421 ], [ %2123, %2108 ], [ %3046, %3033 ], [ %2123, %3031 ], [ %3024, %2991 ], [ %2979, %2964 ], [ %2123, %2125 ]
  %3069 = phi float [ %2944, %2936 ], [ %2124, %2421 ], [ %2124, %2108 ], [ %2944, %3033 ], [ %2944, %3031 ], [ %2944, %2991 ], [ %2944, %2964 ], [ %2124, %2125 ]
  br i1 %397, label %3998, label %3070

; <label>:3070                                    ; preds = %3053
  %3071 = icmp ult i32 %451, 4
  %3072 = add i32 %44, 72
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = add i32 %44, 76
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3075, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = or i32 %3077, %3074
  %3079 = icmp eq i32 %3078, 0
  br i1 %3079, label %3998, label %3080

; <label>:3080                                    ; preds = %3070
  %3081 = and i32 %3074, 262144
  %3082 = icmp ne i32 %3081, 0
  %3083 = select i1 %3082, float %47, float 1.000000e+00
  %3084 = select i1 %3082, float %48, float 0.000000e+00
  %3085 = select i1 %3082, float %49, float 0.000000e+00
  %3086 = select i1 %3082, float %50, float 1.000000e+00
  %3087 = select i1 %3082, float %51, float %72
  %3088 = select i1 %3082, float %52, float %73
  %3089 = add i32 %44, 332
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = lshr i32 %3091, 16
  %3093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3092)  ; LegacyF16ToF32(value)
  %3094 = fmul fast float %3093, 0x3F50624DE0000000
  %3095 = add i32 %44, 136
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = lshr i32 %3097, 16
  %3099 = and i32 %3098, 255
  %3100 = lshr i32 %3097, 24
  %3101 = add i32 %44, 340
  %3102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.i32 %3102, 0
  %3104 = and i32 %3103, 65535
  %3105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3104)  ; LegacyF16ToF32(value)
  %3106 = lshr i32 %3103, 16
  %3107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3106)  ; LegacyF16ToF32(value)
  %3108 = add i32 %44, 80
  %3109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3108, i32 undef)  ; BufferLoad(srv,index,wot)
  %3110 = extractvalue %dx.types.ResRet.i32 %3109, 0
  %3111 = lshr i32 %3110, 22
  %3112 = shl nuw nsw i32 %3111, 5
  %3113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3112)  ; LegacyF16ToF32(value)
  %3114 = shl i32 %3110, 4
  %3115 = and i32 %3114, 32752
  %3116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3115)  ; LegacyF16ToF32(value)
  %3117 = lshr i32 %3110, 7
  %3118 = and i32 %3117, 32752
  %3119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3118)  ; LegacyF16ToF32(value)
  %3120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3121 = extractvalue %dx.types.CBufRet.f32 %3120, 3
  %3122 = fmul fast float %3121, 1.000000e+03
  %3123 = fmul fast float %387, %3122
  %3124 = call float @dx.op.unary.f32(i32 22, float %3123)  ; Frc(value)
  %3125 = fadd fast float %3124, %377
  %3126 = fmul fast float %388, %3122
  %3127 = call float @dx.op.unary.f32(i32 22, float %3126)  ; Frc(value)
  %3128 = fadd fast float %3127, %379
  %3129 = fmul fast float %3094, %3122
  %3130 = call float @dx.op.unary.f32(i32 22, float %3129)  ; Frc(value)
  %3131 = fmul fast float %3130, 0x401921FB60000000
  %3132 = fadd fast float %3131, %3113
  %3133 = call float @dx.op.unary.f32(i32 13, float %3132)  ; Sin(value)
  %3134 = call float @dx.op.unary.f32(i32 12, float %3132)  ; Cos(value)
  %3135 = fsub fast float -0.000000e+00, %3133
  %3136 = fadd fast float %3087, -5.000000e-01
  %3137 = fadd fast float %3088, -5.000000e-01
  %3138 = fmul fast float %3105, %3136
  %3139 = fmul fast float %3107, %3137
  %3140 = fadd fast float %3138, 5.000000e-01
  %3141 = fadd fast float %3139, 5.000000e-01
  %3142 = fmul fast float %3116, %3140
  %3143 = fmul fast float %3119, %3141
  %3144 = fmul fast float %3134, %3142
  %3145 = call float @dx.op.tertiary.f32(i32 46, float %3135, float %3143, float %3144)  ; FMad(a,b,c)
  %3146 = fmul fast float %3133, %3142
  %3147 = call float @dx.op.tertiary.f32(i32 46, float %3134, float %3143, float %3146)  ; FMad(a,b,c)
  %3148 = fadd fast float %3125, %3145
  %3149 = fadd fast float %3128, %3147
  %3150 = icmp ugt i32 %3099, 1
  %3151 = icmp ugt i32 %3097, 33554431
  %3152 = or i1 %3151, %3150
  br i1 %3152, label %3153, label %3178

; <label>:3153                                    ; preds = %3080
  %3154 = add i32 %44, 276
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3154, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = lshr i32 %3156, 16
  %3158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3157)  ; LegacyF16ToF32(value)
  %3159 = fmul fast float %3121, %3158
  %3160 = call float @dx.op.unary.f32(i32 22, float %3159)  ; Frc(value)
  %3161 = mul nuw nsw i32 %3099, %3100
  %3162 = uitofp i32 %3161 to float
  %3163 = fmul fast float %3160, %3162
  %3164 = call float @dx.op.unary.f32(i32 27, float %3163)  ; Round_ni(value)
  %3165 = fptoui float %3164 to i32
  %3166 = urem i32 %3165, %3099
  %3167 = udiv i32 %3165, %3100
  %3168 = call float @dx.op.unary.f32(i32 22, float %3148)  ; Frc(value)
  %3169 = call float @dx.op.unary.f32(i32 22, float %3149)  ; Frc(value)
  %3170 = uitofp i32 %3166 to float
  %3171 = uitofp i32 %3167 to float
  %3172 = fadd fast float %3168, %3170
  %3173 = fadd fast float %3169, %3171
  %3174 = uitofp i32 %3099 to float
  %3175 = uitofp i32 %3100 to float
  %3176 = fdiv fast float %3172, %3174
  %3177 = fdiv fast float %3173, %3175
  br label %3178

; <label>:3178                                    ; preds = %3153, %3080
  %3179 = phi float [ %3176, %3153 ], [ %3148, %3080 ]
  %3180 = phi float [ %3177, %3153 ], [ %3149, %3080 ]
  %3181 = and i32 %3074, 16777216
  %3182 = icmp eq i32 %3181, 0
  br i1 %3182, label %3292, label %3183

; <label>:3183                                    ; preds = %3178
  %3184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3185 = extractvalue %dx.types.CBufRet.f32 %3184, 0
  %3186 = extractvalue %dx.types.CBufRet.f32 %3184, 1
  %3187 = extractvalue %dx.types.CBufRet.f32 %3184, 2
  %3188 = fadd fast float %3185, %145
  %3189 = fadd fast float %3186, %146
  %3190 = fadd fast float %3187, %147
  %3191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3192 = extractvalue %dx.types.CBufRet.f32 %3191, 0
  %3193 = call float @dx.op.unary.f32(i32 7, float %3192)  ; Saturate(value)
  %3194 = icmp eq i32 %45, 65535
  br i1 %3194, label %3289, label %3195

; <label>:3195                                    ; preds = %3183
  %3196 = lshr i32 %45, 1
  %3197 = shl i32 %3196, 2
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3197, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = and i32 %45, 1
  %3201 = icmp ne i32 %3200, 0
  %3202 = lshr i32 %3199, 16
  %3203 = and i32 %3199, 65535
  %3204 = select i1 %3201, i32 %3202, i32 %3203
  %3205 = icmp eq i32 %3204, 65535
  br i1 %3205, label %3285, label %3206

; <label>:3206                                    ; preds = %3195
  %3207 = mul nuw nsw i32 %3204, 40
  %3208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3207, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.f32 %3208, 0
  %3210 = extractvalue %dx.types.ResRet.f32 %3208, 1
  %3211 = extractvalue %dx.types.ResRet.f32 %3208, 2
  %3212 = add nuw nsw i32 %3207, 12
  %3213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3214 = extractvalue %dx.types.ResRet.f32 %3213, 0
  %3215 = extractvalue %dx.types.ResRet.f32 %3213, 1
  %3216 = extractvalue %dx.types.ResRet.f32 %3213, 2
  %3217 = add nuw nsw i32 %3207, 24
  %3218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3217, i32 undef)  ; BufferLoad(srv,index,wot)
  %3219 = extractvalue %dx.types.ResRet.f32 %3218, 0
  %3220 = extractvalue %dx.types.ResRet.f32 %3218, 1
  %3221 = extractvalue %dx.types.ResRet.f32 %3218, 2
  %3222 = add nuw nsw i32 %3207, 36
  %3223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3222, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.f32 %3223, 0
  %3225 = fsub fast float %3188, %3209
  %3226 = fsub fast float %3189, %3210
  %3227 = fsub fast float %3190, %3211
  %3228 = fmul fast float %3224, %3225
  %3229 = fmul fast float %3224, %3226
  %3230 = fmul fast float %3224, %3227
  %3231 = call float @dx.op.unary.f32(i32 27, float %3228)  ; Round_ni(value)
  %3232 = call float @dx.op.unary.f32(i32 27, float %3229)  ; Round_ni(value)
  %3233 = call float @dx.op.unary.f32(i32 27, float %3230)  ; Round_ni(value)
  %3234 = fadd fast float %3231, 5.000000e-01
  %3235 = fadd fast float %3232, 5.000000e-01
  %3236 = fadd fast float %3233, 5.000000e-01
  %3237 = fmul fast float %3234, %3214
  %3238 = fmul fast float %3235, %3215
  %3239 = fmul fast float %3236, %3216
  %3240 = shl i32 %45, 2
  %3241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3240, i32 undef)  ; BufferLoad(srv,index,wot)
  %3242 = extractvalue %dx.types.ResRet.i32 %3241, 0
  %3243 = add i32 %3242, 0
  %3244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3243, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3245 = call float @dx.op.unary.f32(i32 22, float %3237)  ; Frc(value)
  %3246 = call float @dx.op.unary.f32(i32 22, float %3238)  ; Frc(value)
  %3247 = call float @dx.op.unary.f32(i32 22, float %3239)  ; Frc(value)
  %3248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3244, %dx.types.Handle %39, float %3245, float %3246, float %3247, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3249 = extractvalue %dx.types.ResRet.f32 %3248, 0
  %3250 = extractvalue %dx.types.ResRet.f32 %3248, 1
  %3251 = extractvalue %dx.types.ResRet.f32 %3248, 2
  %3252 = fmul fast float %3249, 1.023000e+03
  %3253 = fmul fast float %3250, 1.023000e+03
  %3254 = fmul fast float %3251, 1.023000e+03
  %3255 = fadd fast float %3252, 5.000000e-01
  %3256 = fadd fast float %3253, 5.000000e-01
  %3257 = fadd fast float %3254, 5.000000e-01
  %3258 = call float @dx.op.unary.f32(i32 27, float %3255)  ; Round_ni(value)
  %3259 = call float @dx.op.unary.f32(i32 27, float %3256)  ; Round_ni(value)
  %3260 = call float @dx.op.unary.f32(i32 27, float %3257)  ; Round_ni(value)
  %3261 = fsub fast float %3228, %3231
  %3262 = fsub fast float %3229, %3232
  %3263 = fsub fast float %3230, %3233
  %3264 = fmul fast float %3261, 7.500000e-01
  %3265 = fmul fast float %3262, 7.500000e-01
  %3266 = fmul fast float %3263, 7.500000e-01
  %3267 = fadd fast float %3231, 1.250000e-01
  %3268 = fadd fast float %3267, %3264
  %3269 = fadd fast float %3268, %3258
  %3270 = fadd fast float %3232, 1.250000e-01
  %3271 = fadd fast float %3270, %3265
  %3272 = fadd fast float %3271, %3259
  %3273 = fadd fast float %3233, 1.250000e-01
  %3274 = fadd fast float %3273, %3266
  %3275 = fadd fast float %3274, %3260
  %3276 = fmul fast float %3269, %3219
  %3277 = fmul fast float %3272, %3220
  %3278 = fmul fast float %3275, %3221
  %3279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3240, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.i32 %3279, 0
  %3281 = add i32 %3280, 0
  %3282 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3281, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3282, %dx.types.Handle %37, float %3276, float %3277, float %3278, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3284 = extractvalue %dx.types.ResRet.f32 %3283, 0
  br label %3285

; <label>:3285                                    ; preds = %3206, %3195
  %3286 = phi float [ %3284, %3206 ], [ -1.000000e+00, %3195 ]
  %3287 = fadd fast float %3286, %3193
  %3288 = call float @dx.op.unary.f32(i32 7, float %3287)  ; Saturate(value)
  br label %3289

; <label>:3289                                    ; preds = %3285, %3183
  %3290 = phi float [ %3288, %3285 ], [ %3193, %3183 ]
  %3291 = fmul fast float %3290, %446
  br label %3292

; <label>:3292                                    ; preds = %3289, %3178
  %3293 = phi float [ %3291, %3289 ], [ %446, %3178 ]
  %3294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.i32 %3294, 0
  %3296 = and i32 %3295, 256
  %3297 = icmp eq i32 %3296, 0
  br i1 %3297, label %3344, label %3298

; <label>:3298                                    ; preds = %3292
  %3299 = add i32 %44, 436
  %3300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3299, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.i32 %3300, 0
  %3302 = add i32 %3301, 0
  %3303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3302, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3304 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3303, %dx.types.Handle %87, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3305 = extractvalue %dx.types.ResRet.f32 %3304, 0
  %3306 = add i32 %44, 148
  %3307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3306, i32 undef)  ; BufferLoad(srv,index,wot)
  %3308 = extractvalue %dx.types.ResRet.i32 %3307, 0
  %3309 = shl i32 %3308, 4
  %3310 = and i32 %3309, 32752
  %3311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3310)  ; LegacyF16ToF32(value)
  %3312 = lshr i32 %3308, 7
  %3313 = and i32 %3312, 32752
  %3314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3313)  ; LegacyF16ToF32(value)
  %3315 = fsub fast float 1.000000e+00, %3293
  %3316 = call float @dx.op.binary.f32(i32 35, float %3315, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3317 = bitcast float %3293 to i32
  %3318 = sitofp i32 %3317 to float
  %3319 = fadd fast float %3318, 0xC1CFBF8940000000
  %3320 = fmul fast float %3314, %3319
  %3321 = fadd fast float %3320, 0x41CFBF8940000000
  %3322 = fptosi float %3321 to i32
  %3323 = bitcast i32 %3322 to float
  %3324 = bitcast float %3316 to i32
  %3325 = sitofp i32 %3324 to float
  %3326 = fadd fast float %3325, 0xC1CFBF8940000000
  %3327 = fmul fast float %3326, %3314
  %3328 = fadd fast float %3327, 0x41CFBF8940000000
  %3329 = fptosi float %3328 to i32
  %3330 = bitcast i32 %3329 to float
  %3331 = fmul fast float %3323, %3311
  %3332 = fmul fast float %3330, %3311
  %3333 = fsub fast float %3316, %3331
  %3334 = fadd fast float %3332, %3316
  %3335 = call float @dx.op.unary.f32(i32 7, float %3333)  ; Saturate(value)
  %3336 = call float @dx.op.unary.f32(i32 7, float %3334)  ; Saturate(value)
  %3337 = fsub fast float %3305, %3335
  %3338 = fsub fast float %3336, %3335
  %3339 = bitcast float %3338 to i32
  %3340 = sub nsw i32 2129859010, %3339
  %3341 = bitcast i32 %3340 to float
  %3342 = fmul fast float %3341, %3337
  %3343 = call float @dx.op.unary.f32(i32 7, float %3342)  ; Saturate(value)
  br label %3344

; <label>:3344                                    ; preds = %3298, %3292
  %3345 = phi float [ %3343, %3298 ], [ %3293, %3292 ]
  %3346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.i32 %3346, 0
  %3348 = and i32 %3347, 128
  %3349 = icmp eq i32 %3348, 0
  br i1 %3349, label %3366, label %3350

; <label>:3350                                    ; preds = %3344
  %3351 = add i32 %44, 420
  %3352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3351, i32 undef)  ; BufferLoad(srv,index,wot)
  %3353 = extractvalue %dx.types.ResRet.i32 %3352, 0
  %3354 = add i32 %3353, 0
  %3355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3354, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3356 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3355, %dx.types.Handle %87, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3357 = extractvalue %dx.types.ResRet.f32 %3356, 0
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = and i32 %3359, 524288
  %3361 = icmp ne i32 %3360, 0
  %3362 = fcmp fast ogt float %3357, 0x3FE0101020000000
  %3363 = select i1 %3362, float 1.000000e+00, float 0.000000e+00
  %3364 = select i1 %3361, float %3363, float %3357
  %3365 = fmul fast float %3364, %3345
  br label %3366

; <label>:3366                                    ; preds = %3350, %3344
  %3367 = phi float [ %3365, %3350 ], [ %3345, %3344 ]
  %3368 = fcmp fast ult float %3367, 0x3F70101020000000
  br i1 %3368, label %3998, label %3369

; <label>:3369                                    ; preds = %3366
  %3370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.i32 %3370, 0
  %3372 = and i32 %3371, 16
  %3373 = icmp eq i32 %3372, 0
  br i1 %3373, label %3572, label %3374

; <label>:3374                                    ; preds = %3369
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = add i32 %44, 372
  %3378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3377, i32 undef)  ; BufferLoad(srv,index,wot)
  %3379 = extractvalue %dx.types.ResRet.i32 %3378, 0
  %3380 = add i32 %3379, 0
  %3381 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3380, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3382 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3381, %dx.types.Handle %86, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3383 = extractvalue %dx.types.ResRet.f32 %3382, 0
  %3384 = extractvalue %dx.types.ResRet.f32 %3382, 1
  %3385 = extractvalue %dx.types.ResRet.f32 %3382, 2
  %3386 = extractvalue %dx.types.ResRet.f32 %3382, 3
  %3387 = and i32 %3376, 255
  %3388 = uitofp i32 %3387 to float
  %3389 = lshr i32 %3376, 8
  %3390 = and i32 %3389, 255
  %3391 = uitofp i32 %3390 to float
  %3392 = fmul fast float %3386, %3388
  %3393 = fadd fast float %3392, %3391
  %3394 = fmul fast float %3393, 0x3F70101000000000
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 512
  %3398 = icmp eq i32 %3397, 0
  br i1 %3398, label %3407, label %3399

; <label>:3399                                    ; preds = %3374
  %3400 = add i32 %44, 452
  %3401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.i32 %3401, 0
  %3403 = add i32 %3402, 0
  %3404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3403, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3405 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3404, %dx.types.Handle %87, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3406 = extractvalue %dx.types.ResRet.f32 %3405, 0
  br label %3407

; <label>:3407                                    ; preds = %3399, %3374
  %3408 = phi float [ %3406, %3399 ], [ 1.000000e+00, %3374 ]
  %3409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.i32 %3409, 0
  %3411 = and i32 %3410, 33554432
  %3412 = icmp eq i32 %3411, 0
  br i1 %3412, label %3519, label %3413

; <label>:3413                                    ; preds = %3407
  %3414 = add i32 %44, 272
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = and i32 %3416, 65535
  %3418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3417)  ; LegacyF16ToF32(value)
  %3419 = lshr i32 %3416, 16
  %3420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3419)  ; LegacyF16ToF32(value)
  %3421 = add i32 %44, 276
  %3422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3421, i32 undef)  ; BufferLoad(srv,index,wot)
  %3423 = extractvalue %dx.types.ResRet.i32 %3422, 0
  %3424 = and i32 %3423, 65535
  %3425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3424)  ; LegacyF16ToF32(value)
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = lshr i32 %3427, 24
  %3429 = uitofp i32 %3428 to float
  %3430 = fmul fast float %3429, 0x3F70101020000000
  %3431 = and i32 %3427, 255
  %3432 = uitofp i32 %3431 to float
  %3433 = fmul fast float %3432, 0x3F70101020000000
  %3434 = lshr i32 %3427, 8
  %3435 = and i32 %3434, 255
  %3436 = uitofp i32 %3435 to float
  %3437 = fmul fast float %3436, 0x3F70101020000000
  %3438 = lshr i32 %3427, 16
  %3439 = and i32 %3438, 255
  %3440 = uitofp i32 %3439 to float
  %3441 = fmul fast float %3440, 0x3F70101020000000
  %3442 = add i32 %44, 268
  %3443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3442, i32 undef)  ; BufferLoad(srv,index,wot)
  %3444 = extractvalue %dx.types.ResRet.i32 %3443, 0
  %3445 = lshr i32 %3444, 24
  %3446 = uitofp i32 %3445 to float
  %3447 = fmul fast float %3446, 0x3F70101020000000
  %3448 = and i32 %3444, 255
  %3449 = uitofp i32 %3448 to float
  %3450 = fmul fast float %3449, 0x3F70101020000000
  %3451 = lshr i32 %3444, 8
  %3452 = and i32 %3451, 255
  %3453 = uitofp i32 %3452 to float
  %3454 = fmul fast float %3453, 0x3F70101020000000
  %3455 = lshr i32 %3444, 16
  %3456 = and i32 %3455, 255
  %3457 = uitofp i32 %3456 to float
  %3458 = fmul fast float %3457, 0x3F70101020000000
  %3459 = bitcast float %3383 to i32
  %3460 = ashr i32 %3459, 1
  %3461 = sub nsw i32 1597463174, %3460
  %3462 = bitcast i32 %3461 to float
  %3463 = fmul fast float %3383, 5.000000e-01
  %3464 = fmul fast float %3462, %3462
  %3465 = fmul fast float %3464, %3463
  %3466 = fsub fast float 1.500000e+00, %3465
  %3467 = fmul fast float %3462, %3383
  %3468 = fmul fast float %3467, %3466
  %3469 = bitcast float %3384 to i32
  %3470 = ashr i32 %3469, 1
  %3471 = sub nsw i32 1597463174, %3470
  %3472 = bitcast i32 %3471 to float
  %3473 = fmul fast float %3384, 5.000000e-01
  %3474 = fmul fast float %3472, %3472
  %3475 = fmul fast float %3474, %3473
  %3476 = fsub fast float 1.500000e+00, %3475
  %3477 = fmul fast float %3472, %3384
  %3478 = fmul fast float %3477, %3476
  %3479 = bitcast float %3385 to i32
  %3480 = ashr i32 %3479, 1
  %3481 = sub nsw i32 1597463174, %3480
  %3482 = bitcast i32 %3481 to float
  %3483 = fmul fast float %3385, 5.000000e-01
  %3484 = fmul fast float %3482, %3482
  %3485 = fmul fast float %3484, %3483
  %3486 = fsub fast float 1.500000e+00, %3485
  %3487 = fmul fast float %3482, %3385
  %3488 = fmul fast float %3487, %3486
  %3489 = fsub fast float %3468, %3450
  %3490 = fsub fast float %3478, %3454
  %3491 = fsub fast float %3488, %3458
  %3492 = fmul fast float %3489, %3418
  %3493 = fmul fast float %3490, %3420
  %3494 = fmul fast float %3491, %3425
  %3495 = fadd fast float %3492, %3433
  %3496 = fadd fast float %3493, %3437
  %3497 = fadd fast float %3494, %3441
  %3498 = call float @dx.op.unary.f32(i32 7, float %3495)  ; Saturate(value)
  %3499 = call float @dx.op.unary.f32(i32 7, float %3496)  ; Saturate(value)
  %3500 = call float @dx.op.unary.f32(i32 7, float %3497)  ; Saturate(value)
  %3501 = fmul fast float %3498, %3498
  %3502 = fmul fast float %3499, %3499
  %3503 = fmul fast float %3500, %3500
  %3504 = fsub fast float %3501, %3383
  %3505 = fsub fast float %3502, %3384
  %3506 = fsub fast float %3503, %3385
  %3507 = fmul fast float %3504, %3408
  %3508 = fmul fast float %3505, %3408
  %3509 = fmul fast float %3506, %3408
  %3510 = fadd fast float %3507, %3383
  %3511 = fadd fast float %3508, %3384
  %3512 = fadd fast float %3509, %3385
  %3513 = fadd fast float %3430, %3394
  %3514 = fsub fast float %3513, %3447
  %3515 = call float @dx.op.unary.f32(i32 7, float %3514)  ; Saturate(value)
  %3516 = fsub fast float %3515, %3394
  %3517 = fmul fast float %3516, %3408
  %3518 = fadd fast float %3517, %3394
  br label %3572

; <label>:3519                                    ; preds = %3407
  %3520 = and i32 %3410, 134217728
  %3521 = icmp eq i32 %3520, 0
  br i1 %3521, label %3556, label %3522

; <label>:3522                                    ; preds = %3519
  %3523 = call float @dx.op.unary.f32(i32 24, float %364)  ; Sqrt(value)
  %3524 = call float @dx.op.unary.f32(i32 24, float %368)  ; Sqrt(value)
  %3525 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %3526 = fadd fast float %3523, -5.000000e-01
  %3527 = fadd fast float %3524, -5.000000e-01
  %3528 = fadd fast float %3525, -5.000000e-01
  %3529 = fmul fast float %3526, %3408
  %3530 = fmul fast float %3527, %3408
  %3531 = fmul fast float %3528, %3408
  %3532 = fadd fast float %3529, 5.000000e-01
  %3533 = fadd fast float %3530, 5.000000e-01
  %3534 = fadd fast float %3531, 5.000000e-01
  %3535 = call float @dx.op.unary.f32(i32 24, float %3383)  ; Sqrt(value)
  %3536 = call float @dx.op.unary.f32(i32 24, float %3384)  ; Sqrt(value)
  %3537 = call float @dx.op.unary.f32(i32 24, float %3385)  ; Sqrt(value)
  %3538 = fmul fast float %3532, 2.000000e+00
  %3539 = fsub fast float 1.000000e+00, %3538
  %3540 = fmul fast float %3539, %3535
  %3541 = fadd fast float %3540, %3538
  %3542 = fmul fast float %3541, %3535
  %3543 = fmul fast float %3533, 2.000000e+00
  %3544 = fsub fast float 1.000000e+00, %3543
  %3545 = fmul fast float %3544, %3536
  %3546 = fadd fast float %3545, %3543
  %3547 = fmul fast float %3546, %3536
  %3548 = fmul fast float %3534, 2.000000e+00
  %3549 = fsub fast float 1.000000e+00, %3548
  %3550 = fmul fast float %3549, %3537
  %3551 = fadd fast float %3550, %3548
  %3552 = fmul fast float %3551, %3537
  %3553 = fmul fast float %3542, %3542
  %3554 = fmul fast float %3547, %3547
  %3555 = fmul fast float %3552, %3552
  br label %3572

; <label>:3556                                    ; preds = %3519
  %3557 = fmul fast float %364, %364
  %3558 = fmul fast float %368, %368
  %3559 = fmul fast float %372, %372
  %3560 = fadd fast float %3557, -1.000000e+00
  %3561 = fadd fast float %3558, -1.000000e+00
  %3562 = fadd fast float %3559, -1.000000e+00
  %3563 = fmul fast float %3408, %3560
  %3564 = fmul fast float %3408, %3561
  %3565 = fmul fast float %3408, %3562
  %3566 = fadd fast float %3563, 1.000000e+00
  %3567 = fadd fast float %3564, 1.000000e+00
  %3568 = fadd fast float %3565, 1.000000e+00
  %3569 = fmul fast float %3566, %3383
  %3570 = fmul fast float %3567, %3384
  %3571 = fmul fast float %3568, %3385
  br label %3572

; <label>:3572                                    ; preds = %3556, %3522, %3413, %3369
  %3573 = phi float [ %3518, %3413 ], [ %3394, %3522 ], [ %3394, %3556 ], [ 0x3FA23C0BE0000000, %3369 ]
  %3574 = phi float [ %3510, %3413 ], [ %3553, %3522 ], [ %3569, %3556 ], [ 1.000000e+00, %3369 ]
  %3575 = phi float [ %3511, %3413 ], [ %3554, %3522 ], [ %3570, %3556 ], [ 1.000000e+00, %3369 ]
  %3576 = phi float [ %3512, %3413 ], [ %3555, %3522 ], [ %3571, %3556 ], [ 1.000000e+00, %3369 ]
  %3577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3578 = extractvalue %dx.types.CBufRet.i32 %3577, 1
  %3579 = and i32 %3578, 1
  %3580 = icmp ne i32 %3579, 0
  %3581 = add i32 %44, 356
  %3582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.i32 %3582, 0
  %3584 = and i32 %3583, 32
  %3585 = icmp ne i32 %3584, 0
  %3586 = and i1 %3580, %3585
  %3587 = select i1 %3586, float 1.000000e+00, float %3574
  %3588 = select i1 %3586, float 0x3FD3333340000000, float %3575
  %3589 = select i1 %3586, float 0x3FD3333340000000, float %3576
  %3590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3591 = extractvalue %dx.types.ResRet.i32 %3590, 0
  %3592 = and i32 %3591, 32
  %3593 = icmp eq i32 %3592, 0
  br i1 %3593, label %3666, label %3594

; <label>:3594                                    ; preds = %3572
  %3595 = add i32 %44, 140
  %3596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.i32 %3596, 0
  %3598 = add i32 %44, 388
  %3599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.i32 %3599, 0
  %3601 = add i32 %3600, 0
  %3602 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3601, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3603 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3602, %dx.types.Handle %86, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3604 = extractvalue %dx.types.ResRet.f32 %3603, 0
  %3605 = extractvalue %dx.types.ResRet.f32 %3603, 1
  %3606 = extractvalue %dx.types.ResRet.f32 %3603, 2
  %3607 = extractvalue %dx.types.ResRet.f32 %3603, 3
  %3608 = and i32 %3597, 255
  %3609 = uitofp i32 %3608 to float
  %3610 = lshr i32 %3597, 8
  %3611 = and i32 %3610, 255
  %3612 = uitofp i32 %3611 to float
  %3613 = lshr i32 %3597, 16
  %3614 = and i32 %3613, 255
  %3615 = uitofp i32 %3614 to float
  %3616 = fmul fast float %3615, 0x3F70101000000000
  %3617 = fmul fast float %3604, %3609
  %3618 = fadd fast float %3617, %3612
  %3619 = fmul fast float %3618, 0x3F70101000000000
  %3620 = fadd fast float %3605, -5.000000e-01
  %3621 = fadd fast float %3607, -5.000000e-01
  %3622 = fmul fast float %3620, %3616
  %3623 = fmul fast float %3621, %3616
  %3624 = fadd fast float %3622, 5.000000e-01
  %3625 = fadd fast float %3623, 5.000000e-01
  %3626 = fmul fast float %3624, 2.000000e+00
  %3627 = fadd fast float %3626, -1.000000e+00
  %3628 = fmul fast float %3625, 2.000000e+00
  %3629 = fadd fast float %3628, -1.000000e+00
  %3630 = fadd fast float %3627, %3629
  %3631 = fmul fast float %3630, 5.000000e-01
  %3632 = fsub fast float %3627, %3629
  %3633 = fmul fast float %3632, 5.000000e-01
  %3634 = call float @dx.op.unary.f32(i32 6, float %3631)  ; FAbs(value)
  %3635 = fsub fast float 1.000000e+00, %3634
  %3636 = call float @dx.op.unary.f32(i32 6, float %3633)  ; FAbs(value)
  %3637 = fsub fast float %3635, %3636
  %3638 = call float @dx.op.dot3.f32(i32 55, float %3631, float %3633, float %3637, float %3631, float %3633, float %3637)  ; Dot3(ax,ay,az,bx,by,bz)
  %3639 = call float @dx.op.unary.f32(i32 25, float %3638)  ; Rsqrt(value)
  %3640 = fmul fast float %3631, %3639
  %3641 = fmul fast float %3633, %3639
  %3642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.i32 %3642, 0
  %3644 = and i32 %3643, 67108864
  %3645 = icmp eq i32 %3644, 0
  br i1 %3645, label %3662, label %3646

; <label>:3646                                    ; preds = %3594
  %3647 = add i32 %44, 328
  %3648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.i32 %3648, 0
  %3650 = and i32 %3649, 65535
  %3651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3650)  ; LegacyF16ToF32(value)
  %3652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.i32 %3652, 0
  %3654 = and i32 %3653, 65535
  %3655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3654)  ; LegacyF16ToF32(value)
  %3656 = lshr i32 %3649, 16
  %3657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3656)  ; LegacyF16ToF32(value)
  %3658 = fsub fast float %3619, %3657
  %3659 = fmul fast float %3658, %3651
  %3660 = fadd fast float %3659, %3655
  %3661 = call float @dx.op.unary.f32(i32 7, float %3660)  ; Saturate(value)
  br label %3662

; <label>:3662                                    ; preds = %3646, %3594
  %3663 = phi float [ %3661, %3646 ], [ %3619, %3594 ]
  %3664 = call float @dx.op.dot2.f32(i32 54, float %3640, float %3641, float %3083, float %3084)  ; Dot2(ax,ay,bx,by)
  %3665 = call float @dx.op.dot2.f32(i32 54, float %3640, float %3641, float %3085, float %3086)  ; Dot2(ax,ay,bx,by)
  br label %3666

; <label>:3666                                    ; preds = %3662, %3572
  %3667 = phi float [ %3663, %3662 ], [ 0x3FD6666660000000, %3572 ]
  %3668 = phi float [ %3664, %3662 ], [ 0.000000e+00, %3572 ]
  %3669 = phi float [ %3665, %3662 ], [ 0.000000e+00, %3572 ]
  %3670 = phi float [ %3606, %3662 ], [ 1.000000e+00, %3572 ]
  %3671 = add i32 %44, 208
  %3672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3671, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.i32 %3672, 0
  %3674 = lshr i32 %3673, 22
  %3675 = shl nuw nsw i32 %3674, 5
  %3676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3675)  ; LegacyF16ToF32(value)
  %3677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.i32 %3677, 0
  %3679 = and i32 %3678, 64
  %3680 = icmp eq i32 %3679, 0
  br i1 %3680, label %3714, label %3681

; <label>:3681                                    ; preds = %3666
  %3682 = add i32 %44, 404
  %3683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3682, i32 undef)  ; BufferLoad(srv,index,wot)
  %3684 = extractvalue %dx.types.ResRet.i32 %3683, 0
  %3685 = add i32 %3684, 0
  %3686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3685, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.i32 %3687, 0
  %3689 = and i32 %3688, 131072
  %3690 = icmp eq i32 %3689, 0
  %3691 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3686, %dx.types.Handle %86, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3692 = extractvalue %dx.types.ResRet.f32 %3691, 0
  %3693 = extractvalue %dx.types.ResRet.f32 %3691, 1
  %3694 = extractvalue %dx.types.ResRet.f32 %3691, 2
  %3695 = fmul fast float %3692, %352
  %3696 = fmul fast float %3693, %355
  %3697 = fmul fast float %3694, %358
  br i1 %3690, label %3704, label %3698

; <label>:3698                                    ; preds = %3681
  %3699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3700 = extractvalue %dx.types.CBufRet.f32 %3699, 0
  %3701 = fmul fast float %3700, %3695
  %3702 = fmul fast float %3700, %3696
  %3703 = fmul fast float %3700, %3697
  br label %3704

; <label>:3704                                    ; preds = %3698, %3681
  %3705 = phi float [ %3701, %3698 ], [ %3695, %3681 ]
  %3706 = phi float [ %3702, %3698 ], [ %3696, %3681 ]
  %3707 = phi float [ %3703, %3698 ], [ %3697, %3681 ]
  %3708 = fmul fast float %3705, %3676
  %3709 = select i1 %206, float %3708, float %3705
  %3710 = call float @dx.op.dot3.f32(i32 55, float %3709, float %3706, float %3707, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3711 = select i1 %206, float 0.000000e+00, float %3705
  %3712 = select i1 %206, float %3710, float %3706
  %3713 = select i1 %206, float 0.000000e+00, float %3707
  br label %3714

; <label>:3714                                    ; preds = %3704, %3666
  %3715 = phi float [ %3711, %3704 ], [ 0.000000e+00, %3666 ]
  %3716 = phi float [ %3712, %3704 ], [ 0.000000e+00, %3666 ]
  %3717 = phi float [ %3713, %3704 ], [ 0.000000e+00, %3666 ]
  %3718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3719 = extractvalue %dx.types.ResRet.i32 %3718, 0
  %3720 = and i32 %3719, 10240
  %3721 = icmp eq i32 %3720, 0
  br i1 %3721, label %3766, label %3722

; <label>:3722                                    ; preds = %3714
  %3723 = add i32 %44, 468
  %3724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3723, i32 undef)  ; BufferLoad(srv,index,wot)
  %3725 = extractvalue %dx.types.ResRet.i32 %3724, 0
  %3726 = add i32 %3725, 0
  %3727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3726, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3728 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3727, %dx.types.Handle %87, float %3179, float %3180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3729 = extractvalue %dx.types.ResRet.f32 %3728, 1
  %3730 = extractvalue %dx.types.ResRet.f32 %3728, 3
  %3731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3732 = extractvalue %dx.types.ResRet.i32 %3731, 0
  %3733 = and i32 %3732, 1048576
  %3734 = icmp ne i32 %3733, 0
  %3735 = and i32 %3732, 8192
  %3736 = icmp eq i32 %3735, 0
  br i1 %3736, label %3752, label %3737

; <label>:3737                                    ; preds = %3722
  %3738 = extractvalue %dx.types.ResRet.f32 %3728, 2
  %3739 = select i1 %3734, float %3738, float %3729
  %3740 = extractvalue %dx.types.ResRet.f32 %3728, 0
  %3741 = select i1 %3734, float %3740, float %3729
  %3742 = add i32 %44, 144
  %3743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.i32 %3743, 0
  %3745 = lshr i32 %3744, 16
  %3746 = and i32 %3745, 255
  %3747 = uitofp i32 %3746 to float
  %3748 = fmul fast float %3747, 0x3F80101020000000
  %3749 = fmul fast float %3748, %3741
  %3750 = fmul fast float %3748, %3729
  %3751 = fmul fast float %3748, %3739
  br label %3752

; <label>:3752                                    ; preds = %3737, %3722
  %3753 = phi float [ %3749, %3737 ], [ 0.000000e+00, %3722 ]
  %3754 = phi float [ %3750, %3737 ], [ 0.000000e+00, %3722 ]
  %3755 = phi float [ %3751, %3737 ], [ 0.000000e+00, %3722 ]
  %3756 = and i32 %3732, 2048
  %3757 = icmp eq i32 %3756, 0
  br i1 %3757, label %3766, label %3758

; <label>:3758                                    ; preds = %3752
  %3759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3671, i32 undef)  ; BufferLoad(srv,index,wot)
  %3760 = extractvalue %dx.types.ResRet.i32 %3759, 0
  %3761 = shl i32 %3760, 4
  %3762 = and i32 %3761, 32752
  %3763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3762)  ; LegacyF16ToF32(value)
  %3764 = fmul fast float %3763, %3730
  %3765 = call float @dx.op.binary.f32(i32 35, float %3764, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3766

; <label>:3766                                    ; preds = %3758, %3752, %3714
  %3767 = phi float [ %3753, %3758 ], [ %3753, %3752 ], [ 0.000000e+00, %3714 ]
  %3768 = phi float [ %3754, %3758 ], [ %3754, %3752 ], [ 0.000000e+00, %3714 ]
  %3769 = phi float [ %3755, %3758 ], [ %3755, %3752 ], [ 0.000000e+00, %3714 ]
  %3770 = phi float [ %3765, %3758 ], [ 0x3F70101020000000, %3752 ], [ 0x3F70101020000000, %3714 ]
  %3771 = add i32 %44, 144
  %3772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3771, i32 undef)  ; BufferLoad(srv,index,wot)
  %3773 = extractvalue %dx.types.ResRet.i32 %3772, 0
  %3774 = and i32 %3773, 255
  %3775 = uitofp i32 %3774 to float
  %3776 = lshr i32 %3773, 8
  %3777 = and i32 %3776, 255
  %3778 = uitofp i32 %3777 to float
  %3779 = call float @dx.op.dot3.f32(i32 55, float %3587, float %3588, float %3589, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3780 = fmul fast float %3778, %3779
  %3781 = fadd fast float %3780, %3775
  %3782 = fmul fast float %3781, 0x3F70101020000000
  %3783 = call float @dx.op.unary.f32(i32 7, float %3782)  ; Saturate(value)
  br i1 %3071, label %3784, label %3792

; <label>:3784                                    ; preds = %3766
  %3785 = fsub fast float 1.000000e+00, %3367
  %3786 = fmul fast float %3785, %3056
  %3787 = fmul fast float %3785, %3057
  %3788 = fmul fast float %3785, %3058
  %3789 = fmul fast float %3785, %3062
  %3790 = fmul fast float %3785, %3063
  %3791 = fmul fast float %3785, %3064
  br label %3792

; <label>:3792                                    ; preds = %3784, %3766
  %3793 = phi float [ %3786, %3784 ], [ %3056, %3766 ]
  %3794 = phi float [ %3787, %3784 ], [ %3057, %3766 ]
  %3795 = phi float [ %3788, %3784 ], [ %3058, %3766 ]
  %3796 = phi float [ %3789, %3784 ], [ %3062, %3766 ]
  %3797 = phi float [ %3790, %3784 ], [ %3063, %3766 ]
  %3798 = phi float [ %3791, %3784 ], [ %3064, %3766 ]
  %3799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.i32 %3799, 0
  %3801 = and i32 %3800, 3
  %3802 = icmp eq i32 %3801, 3
  br i1 %3802, label %3881, label %3803

; <label>:3803                                    ; preds = %3792
  %3804 = and i32 %3800, 16
  %3805 = icmp ne i32 %3804, 0
  %3806 = select i1 %3805, float %3367, float 0.000000e+00
  %3807 = icmp eq i32 %3801, 0
  br i1 %3807, label %3808, label %3836

; <label>:3808                                    ; preds = %3803
  %3809 = and i32 %3800, 64
  %3810 = icmp ne i32 %3809, 0
  %3811 = select i1 %3810, float %3367, float 0.000000e+00
  %3812 = fsub fast float %3587, %3793
  %3813 = fsub fast float %3588, %3794
  %3814 = fsub fast float %3589, %3795
  %3815 = fmul fast float %3806, %3812
  %3816 = fmul fast float %3806, %3813
  %3817 = fmul fast float %3806, %3814
  %3818 = fadd fast float %3815, %3793
  %3819 = fadd fast float %3816, %3794
  %3820 = fadd fast float %3817, %3795
  %3821 = fsub fast float %3573, %3065
  %3822 = fmul fast float %3806, %3821
  %3823 = fadd fast float %3822, %3065
  %3824 = fsub fast float %3715, %3796
  %3825 = fsub fast float %3716, %3797
  %3826 = fsub fast float %3717, %3798
  %3827 = fmul fast float %3811, %3824
  %3828 = fmul fast float %3811, %3825
  %3829 = fmul fast float %3811, %3826
  %3830 = fadd fast float %3827, %3796
  %3831 = fadd fast float %3828, %3797
  %3832 = fadd fast float %3829, %3798
  %3833 = fsub fast float %3783, %3069
  %3834 = fmul fast float %3806, %3833
  %3835 = fadd fast float %3834, %3069
  br label %3881

; <label>:3836                                    ; preds = %3803
  %3837 = icmp eq i32 %3801, 1
  br i1 %3837, label %3838, label %3851

; <label>:3838                                    ; preds = %3836
  %3839 = fadd fast float %3587, -1.000000e+00
  %3840 = fadd fast float %3588, -1.000000e+00
  %3841 = fadd fast float %3589, -1.000000e+00
  %3842 = fmul fast float %3806, %3839
  %3843 = fmul fast float %3806, %3840
  %3844 = fmul fast float %3806, %3841
  %3845 = fadd fast float %3842, 1.000000e+00
  %3846 = fadd fast float %3843, 1.000000e+00
  %3847 = fadd fast float %3844, 1.000000e+00
  %3848 = fmul fast float %3845, %3793
  %3849 = fmul fast float %3846, %3794
  %3850 = fmul fast float %3847, %3795
  br label %3881

; <label>:3851                                    ; preds = %3836
  %3852 = icmp eq i32 %3801, 2
  br i1 %3852, label %3853, label %3881

; <label>:3853                                    ; preds = %3851
  %3854 = call float @dx.op.unary.f32(i32 24, float %3587)  ; Sqrt(value)
  %3855 = call float @dx.op.unary.f32(i32 24, float %3588)  ; Sqrt(value)
  %3856 = call float @dx.op.unary.f32(i32 24, float %3589)  ; Sqrt(value)
  %3857 = fadd fast float %3854, -5.000000e-01
  %3858 = fadd fast float %3855, -5.000000e-01
  %3859 = fadd fast float %3856, -5.000000e-01
  %3860 = fmul fast float %3857, %3806
  %3861 = fmul fast float %3858, %3806
  %3862 = fmul fast float %3859, %3806
  %3863 = fadd fast float %3860, 5.000000e-01
  %3864 = fadd fast float %3861, 5.000000e-01
  %3865 = fadd fast float %3862, 5.000000e-01
  %3866 = fmul fast float %3863, 2.000000e+00
  %3867 = fsub fast float 1.000000e+00, %3866
  %3868 = fmul fast float %3867, %3793
  %3869 = fadd fast float %3868, %3866
  %3870 = fmul fast float %3869, %3793
  %3871 = fmul fast float %3864, 2.000000e+00
  %3872 = fsub fast float 1.000000e+00, %3871
  %3873 = fmul fast float %3872, %3794
  %3874 = fadd fast float %3873, %3871
  %3875 = fmul fast float %3874, %3794
  %3876 = fmul fast float %3865, 2.000000e+00
  %3877 = fsub fast float 1.000000e+00, %3876
  %3878 = fmul fast float %3877, %3795
  %3879 = fadd fast float %3878, %3876
  %3880 = fmul fast float %3879, %3795
  br label %3881

; <label>:3881                                    ; preds = %3853, %3851, %3838, %3808, %3792
  %3882 = phi float [ %3793, %3792 ], [ %3870, %3853 ], [ %3793, %3851 ], [ %3848, %3838 ], [ %3818, %3808 ]
  %3883 = phi float [ %3794, %3792 ], [ %3875, %3853 ], [ %3794, %3851 ], [ %3849, %3838 ], [ %3819, %3808 ]
  %3884 = phi float [ %3795, %3792 ], [ %3880, %3853 ], [ %3795, %3851 ], [ %3850, %3838 ], [ %3820, %3808 ]
  %3885 = phi float [ %3796, %3792 ], [ %3796, %3853 ], [ %3796, %3851 ], [ %3796, %3838 ], [ %3830, %3808 ]
  %3886 = phi float [ %3797, %3792 ], [ %3797, %3853 ], [ %3797, %3851 ], [ %3797, %3838 ], [ %3831, %3808 ]
  %3887 = phi float [ %3798, %3792 ], [ %3798, %3853 ], [ %3798, %3851 ], [ %3798, %3838 ], [ %3832, %3808 ]
  %3888 = phi float [ %3065, %3792 ], [ %3065, %3853 ], [ %3065, %3851 ], [ %3065, %3838 ], [ %3823, %3808 ]
  %3889 = phi float [ %3069, %3792 ], [ %3069, %3853 ], [ %3069, %3851 ], [ %3069, %3838 ], [ %3835, %3808 ]
  %3890 = and i32 %3800, 12
  %3891 = icmp eq i32 %3890, 12
  br i1 %3891, label %3998, label %3892

; <label>:3892                                    ; preds = %3881
  %3893 = and i32 %3800, 2097184
  %3894 = icmp eq i32 %3893, 2097184
  %3895 = select i1 %3894, float %3367, float 0.000000e+00
  %3896 = and i32 %3800, 4194336
  %3897 = icmp eq i32 %3896, 4194336
  %3898 = select i1 %3897, float %3367, float 0.000000e+00
  %3899 = and i32 %3800, 8388640
  %3900 = icmp eq i32 %3899, 8388640
  %3901 = select i1 %3900, float %3367, float 0.000000e+00
  %3902 = and i32 %3800, 2048
  %3903 = icmp ne i32 %3902, 0
  %3904 = select i1 %3903, float %3367, float 0.000000e+00
  %3905 = and i32 %3800, 8192
  %3906 = icmp ne i32 %3905, 0
  %3907 = select i1 %3906, float %3367, float 0.000000e+00
  %3908 = icmp eq i32 %3890, 0
  br i1 %3908, label %3909, label %3934

; <label>:3909                                    ; preds = %3892
  %3910 = fsub fast float %3668, %3054
  %3911 = fsub fast float %3669, %3055
  %3912 = fmul fast float %3895, %3910
  %3913 = fmul fast float %3895, %3911
  %3914 = fadd fast float %3912, %3054
  %3915 = fadd fast float %3913, %3055
  %3916 = fsub fast float %3670, %3067
  %3917 = fmul fast float %3898, %3916
  %3918 = fadd fast float %3917, %3067
  %3919 = fsub fast float %3667, %3066
  %3920 = fmul fast float %3901, %3919
  %3921 = fadd fast float %3920, %3066
  %3922 = fsub fast float %3770, %3068
  %3923 = fmul fast float %3904, %3922
  %3924 = fadd fast float %3923, %3068
  %3925 = fsub fast float %3767, %3059
  %3926 = fsub fast float %3768, %3060
  %3927 = fsub fast float %3769, %3061
  %3928 = fmul fast float %3907, %3925
  %3929 = fmul fast float %3907, %3926
  %3930 = fmul fast float %3907, %3927
  %3931 = fadd fast float %3928, %3059
  %3932 = fadd fast float %3929, %3060
  %3933 = fadd fast float %3930, %3061
  br label %3998

; <label>:3934                                    ; preds = %3892
  %3935 = icmp eq i32 %3890, 4
  br i1 %3935, label %3936, label %3976

; <label>:3936                                    ; preds = %3934
  %3937 = fmul fast float %3895, %3668
  %3938 = fmul fast float %3895, %3669
  %3939 = fadd fast float %3937, %3054
  %3940 = fadd fast float %3938, %3055
  %3941 = call float @dx.op.binary.f32(i32 36, float %3067, float %3670)  ; FMin(a,b)
  %3942 = fsub fast float %3941, %3067
  %3943 = fmul fast float %3942, %3898
  %3944 = fadd fast float %3943, %3067
  %3945 = fadd fast float %3667, %3066
  %3946 = fmul fast float %3945, 0x3FF337FAE0000000
  %3947 = fmul fast float %3066, %3066
  %3948 = fmul fast float %3667, %3667
  %3949 = fadd fast float %3948, %3947
  %3950 = fmul fast float %3949, 0x3FE5152B00000000
  %3951 = fmul fast float %3066, 0xBFCC1F85E0000000
  %3952 = fmul fast float %3951, %3667
  %3953 = fadd fast float %3952, 0xBFE1363700000000
  %3954 = fadd fast float %3953, %3946
  %3955 = fsub fast float %3954, %3950
  %3956 = fmul fast float %3945, 0x3FBA6F0D00000000
  %3957 = fmul fast float %3949, 0x3FD0432880000000
  %3958 = fmul fast float %3066, 0xBFEF110800000000
  %3959 = fmul fast float %3958, %3667
  %3960 = fadd fast float %3959, 1.000000e+00
  %3961 = fsub fast float %3960, %3956
  %3962 = fadd fast float %3961, %3957
  %3963 = fdiv fast float %3955, %3962
  %3964 = call float @dx.op.unary.f32(i32 7, float %3963)  ; Saturate(value)
  %3965 = fsub fast float %3964, %3066
  %3966 = fmul fast float %3965, %3901
  %3967 = fadd fast float %3966, %3066
  %3968 = fmul fast float %3904, %3770
  %3969 = fadd fast float %3968, %3068
  %3970 = fmul fast float %3907, %3767
  %3971 = fmul fast float %3907, %3768
  %3972 = fmul fast float %3907, %3769
  %3973 = fadd fast float %3970, %3059
  %3974 = fadd fast float %3971, %3060
  %3975 = fadd fast float %3972, %3061
  br label %3998

; <label>:3976                                    ; preds = %3934
  %3977 = icmp eq i32 %3890, 8
  br i1 %3977, label %3978, label %3998

; <label>:3978                                    ; preds = %3976
  %3979 = fmul fast float %3895, %3668
  %3980 = fmul fast float %3895, %3669
  %3981 = fadd fast float %3979, %3054
  %3982 = fadd fast float %3980, %3055
  %3983 = call float @dx.op.binary.f32(i32 36, float %3067, float %3670)  ; FMin(a,b)
  %3984 = fsub fast float %3983, %3067
  %3985 = fmul fast float %3984, %3898
  %3986 = fadd fast float %3985, %3067
  %3987 = fsub fast float %3667, %3066
  %3988 = fmul fast float %3901, %3987
  %3989 = fadd fast float %3988, %3066
  %3990 = fmul fast float %3904, %3770
  %3991 = fadd fast float %3990, %3068
  %3992 = fmul fast float %3907, %3767
  %3993 = fmul fast float %3907, %3768
  %3994 = fmul fast float %3907, %3769
  %3995 = fadd fast float %3992, %3059
  %3996 = fadd fast float %3993, %3060
  %3997 = fadd fast float %3994, %3061
  br label %3998

; <label>:3998                                    ; preds = %3978, %3976, %3936, %3909, %3881, %3366, %3070, %3053
  %3999 = phi float [ %3054, %3881 ], [ %3054, %3366 ], [ %3054, %3053 ], [ %3054, %3070 ], [ %3914, %3909 ], [ %3939, %3936 ], [ %3054, %3976 ], [ %3981, %3978 ]
  %4000 = phi float [ %3055, %3881 ], [ %3055, %3366 ], [ %3055, %3053 ], [ %3055, %3070 ], [ %3915, %3909 ], [ %3940, %3936 ], [ %3055, %3976 ], [ %3982, %3978 ]
  %4001 = phi float [ %3882, %3881 ], [ %3056, %3366 ], [ %3056, %3053 ], [ %3056, %3070 ], [ %3882, %3909 ], [ %3882, %3936 ], [ %3882, %3976 ], [ %3882, %3978 ]
  %4002 = phi float [ %3883, %3881 ], [ %3057, %3366 ], [ %3057, %3053 ], [ %3057, %3070 ], [ %3883, %3909 ], [ %3883, %3936 ], [ %3883, %3976 ], [ %3883, %3978 ]
  %4003 = phi float [ %3884, %3881 ], [ %3058, %3366 ], [ %3058, %3053 ], [ %3058, %3070 ], [ %3884, %3909 ], [ %3884, %3936 ], [ %3884, %3976 ], [ %3884, %3978 ]
  %4004 = phi float [ %3059, %3881 ], [ %3059, %3366 ], [ %3059, %3053 ], [ %3059, %3070 ], [ %3931, %3909 ], [ %3973, %3936 ], [ %3059, %3976 ], [ %3995, %3978 ]
  %4005 = phi float [ %3060, %3881 ], [ %3060, %3366 ], [ %3060, %3053 ], [ %3060, %3070 ], [ %3932, %3909 ], [ %3974, %3936 ], [ %3060, %3976 ], [ %3996, %3978 ]
  %4006 = phi float [ %3061, %3881 ], [ %3061, %3366 ], [ %3061, %3053 ], [ %3061, %3070 ], [ %3933, %3909 ], [ %3975, %3936 ], [ %3061, %3976 ], [ %3997, %3978 ]
  %4007 = phi float [ %3885, %3881 ], [ %3062, %3366 ], [ %3062, %3053 ], [ %3062, %3070 ], [ %3885, %3909 ], [ %3885, %3936 ], [ %3885, %3976 ], [ %3885, %3978 ]
  %4008 = phi float [ %3886, %3881 ], [ %3063, %3366 ], [ %3063, %3053 ], [ %3063, %3070 ], [ %3886, %3909 ], [ %3886, %3936 ], [ %3886, %3976 ], [ %3886, %3978 ]
  %4009 = phi float [ %3887, %3881 ], [ %3064, %3366 ], [ %3064, %3053 ], [ %3064, %3070 ], [ %3887, %3909 ], [ %3887, %3936 ], [ %3887, %3976 ], [ %3887, %3978 ]
  %4010 = phi float [ %3888, %3881 ], [ %3065, %3366 ], [ %3065, %3053 ], [ %3065, %3070 ], [ %3888, %3909 ], [ %3888, %3936 ], [ %3888, %3976 ], [ %3888, %3978 ]
  %4011 = phi float [ %3066, %3881 ], [ %3066, %3366 ], [ %3066, %3053 ], [ %3066, %3070 ], [ %3921, %3909 ], [ %3967, %3936 ], [ %3066, %3976 ], [ %3989, %3978 ]
  %4012 = phi float [ %3067, %3881 ], [ %3067, %3366 ], [ %3067, %3053 ], [ %3067, %3070 ], [ %3918, %3909 ], [ %3944, %3936 ], [ %3067, %3976 ], [ %3986, %3978 ]
  %4013 = phi float [ %3068, %3881 ], [ %3068, %3366 ], [ %3068, %3053 ], [ %3068, %3070 ], [ %3924, %3909 ], [ %3969, %3936 ], [ %3068, %3976 ], [ %3991, %3978 ]
  %4014 = phi float [ %3889, %3881 ], [ %3069, %3366 ], [ %3069, %3053 ], [ %3069, %3070 ], [ %3889, %3909 ], [ %3889, %3936 ], [ %3889, %3976 ], [ %3889, %3978 ]
  %4015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4016 = extractvalue %dx.types.CBufRet.f32 %4015, 0
  %4017 = call float @dx.op.dot2.f32(i32 54, float %3999, float %4000, float %3999, float %4000)  ; Dot2(ax,ay,bx,by)
  %4018 = fmul fast float %4017, 0x3FE3333340000000
  %4019 = fsub fast float 1.000000e+00, %4018
  %4020 = call float @dx.op.dot3.f32(i32 55, float %3999, float %4000, float %4019, float %3999, float %4000, float %4019)  ; Dot3(ax,ay,az,bx,by,bz)
  %4021 = call float @dx.op.unary.f32(i32 25, float %4020)  ; Rsqrt(value)
  %4022 = fmul fast float %4021, %3999
  %4023 = fmul fast float %4021, %4000
  %4024 = fmul fast float %4019, %4021
  %4025 = fmul fast float %4024, %97
  %4026 = fmul fast float %4024, %98
  %4027 = fmul fast float %4024, %99
  %4028 = fmul fast float %4022, %65
  %4029 = fmul fast float %4022, %66
  %4030 = fmul fast float %4022, %67
  %4031 = fadd fast float %4025, %4028
  %4032 = fadd fast float %4026, %4029
  %4033 = fadd fast float %4027, %4030
  %4034 = fmul fast float %109, %4023
  %4035 = fmul fast float %110, %4023
  %4036 = fmul fast float %111, %4023
  %4037 = fadd fast float %4031, %4034
  %4038 = fadd fast float %4032, %4035
  %4039 = fadd fast float %4033, %4036
  %4040 = call float @dx.op.dot3.f32(i32 55, float %4037, float %4038, float %4039, float %4037, float %4038, float %4039)  ; Dot3(ax,ay,az,bx,by,bz)
  %4041 = call float @dx.op.unary.f32(i32 25, float %4040)  ; Rsqrt(value)
  %4042 = fmul fast float %4037, %4041
  %4043 = fmul fast float %4038, %4041
  %4044 = fmul fast float %4039, %4041
  %4045 = and i32 %46, 1
  %4046 = icmp eq i32 %4045, 0
  br i1 %4046, label %4047, label %4608

; <label>:4047                                    ; preds = %3998
  %4048 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %4049 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %4050 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %4051 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %4052 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %4053 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %4054 = fadd fast float %4048, %145
  %4055 = fadd fast float %4049, %146
  %4056 = fadd fast float %4050, %147
  %4057 = fadd fast float %4051, %145
  %4058 = fadd fast float %4052, %146
  %4059 = fadd fast float %4053, %147
  %4060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.f32 %4060, 0
  %4062 = extractvalue %dx.types.CBufRet.f32 %4060, 1
  %4063 = extractvalue %dx.types.CBufRet.f32 %4060, 2
  %4064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4065 = extractvalue %dx.types.CBufRet.f32 %4064, 2
  %4066 = extractvalue %dx.types.CBufRet.f32 %4064, 3
  %4067 = fmul fast float %4061, %90
  %4068 = fmul fast float %4067, %4065
  %4069 = fmul fast float %4062, %91
  %4070 = fmul fast float %4069, %4066
  %4071 = fptoui float %4068 to i32
  %4072 = fptoui float %4070 to i32
  %4073 = fadd fast float %4061, -1.000000e+00
  %4074 = fadd fast float %4062, -1.000000e+00
  %4075 = fptoui float %4073 to i32
  %4076 = fptoui float %4074 to i32
  %4077 = call i32 @dx.op.binary.i32(i32 40, i32 %4071, i32 %4075)  ; UMin(a,b)
  %4078 = call i32 @dx.op.binary.i32(i32 40, i32 %4072, i32 %4076)  ; UMin(a,b)
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 2
  %4081 = extractvalue %dx.types.CBufRet.f32 %4079, 3
  %4082 = fmul fast float %4080, %81
  %4083 = fsub fast float %4082, %4081
  %4084 = fadd fast float %4063, -1.000000e+00
  %4085 = call float @dx.op.binary.f32(i32 36, float %4083, float %4084)  ; FMin(a,b)
  %4086 = fptoui float %4085 to i32
  %4087 = fptoui float %4061 to i32
  %4088 = fptoui float %4062 to i32
  %4089 = mul i32 %4086, %4088
  %4090 = add i32 %4089, %4078
  %4091 = mul i32 %4090, %4087
  %4092 = add i32 %4091, %4077
  %4093 = shl i32 %4092, 2
  %4094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4093, i32 undef)  ; BufferLoad(srv,index,wot)
  %4095 = extractvalue %dx.types.ResRet.i32 %4094, 0
  %4096 = and i32 %4095, 1023
  %4097 = lshr i32 %4095, 10
  %4098 = icmp eq i32 %4096, 0
  br i1 %4098, label %4574, label %4099

; <label>:4099                                    ; preds = %4047
  %4100 = and i32 %4095, 1023
  br label %4101

; <label>:4101                                    ; preds = %4230, %4099
  %4102 = phi i32 [ %4180, %4230 ], [ 0, %4099 ]
  %4103 = phi float [ %4231, %4230 ], [ 0.000000e+00, %4099 ]
  %4104 = phi float [ %4232, %4230 ], [ %4016, %4099 ]
  %4105 = phi float [ %4233, %4230 ], [ %4014, %4099 ]
  %4106 = phi float [ %4234, %4230 ], [ 0.000000e+00, %4099 ]
  %4107 = phi float [ %4235, %4230 ], [ 0.000000e+00, %4099 ]
  %4108 = phi float [ %4236, %4230 ], [ %4004, %4099 ]
  %4109 = phi float [ %4237, %4230 ], [ %4005, %4099 ]
  %4110 = phi float [ %4238, %4230 ], [ %4006, %4099 ]
  %4111 = phi float [ %4239, %4230 ], [ %4007, %4099 ]
  %4112 = phi float [ %4240, %4230 ], [ %4008, %4099 ]
  %4113 = phi float [ %4241, %4230 ], [ %4009, %4099 ]
  %4114 = phi float [ %4242, %4230 ], [ %4042, %4099 ]
  %4115 = phi float [ %4243, %4230 ], [ %4043, %4099 ]
  %4116 = phi float [ %4244, %4230 ], [ %4044, %4099 ]
  %4117 = phi float [ %4245, %4230 ], [ %4012, %4099 ]
  %4118 = phi float [ %4246, %4230 ], [ %4011, %4099 ]
  %4119 = phi float [ %4247, %4230 ], [ 0.000000e+00, %4099 ]
  %4120 = phi float [ %4248, %4230 ], [ %4010, %4099 ]
  %4121 = phi float [ %4249, %4230 ], [ %4001, %4099 ]
  %4122 = phi float [ %4250, %4230 ], [ %4002, %4099 ]
  %4123 = phi float [ %4251, %4230 ], [ %4003, %4099 ]
  %4124 = add nuw nsw i32 %4102, %4097
  %4125 = shl i32 %4124, 2
  %4126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4125, i32 undef)  ; BufferLoad(srv,index,wot)
  %4127 = extractvalue %dx.types.ResRet.i32 %4126, 0
  %4128 = shl i32 %4127, 8
  %4129 = or i32 %4128, 48
  %4130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4129, i32 undef)  ; BufferLoad(srv,index,wot)
  %4131 = extractvalue %dx.types.ResRet.f32 %4130, 0
  %4132 = extractvalue %dx.types.ResRet.f32 %4130, 1
  %4133 = extractvalue %dx.types.ResRet.f32 %4130, 2
  %4134 = extractvalue %dx.types.ResRet.f32 %4130, 3
  %4135 = or i32 %4128, 64
  %4136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4135, i32 undef)  ; BufferLoad(srv,index,wot)
  %4137 = extractvalue %dx.types.ResRet.i32 %4136, 0
  %4138 = extractvalue %dx.types.ResRet.i32 %4136, 1
  %4139 = or i32 %4128, 80
  %4140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4139, i32 undef)  ; BufferLoad(srv,index,wot)
  %4141 = extractvalue %dx.types.ResRet.f32 %4140, 2
  %4142 = extractvalue %dx.types.ResRet.f32 %4140, 3
  %4143 = or i32 %4128, 96
  %4144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4143, i32 undef)  ; BufferLoad(srv,index,wot)
  %4145 = extractvalue %dx.types.ResRet.f32 %4144, 0
  %4146 = extractvalue %dx.types.ResRet.f32 %4144, 1
  %4147 = extractvalue %dx.types.ResRet.f32 %4144, 2
  %4148 = extractvalue %dx.types.ResRet.f32 %4144, 3
  %4149 = or i32 %4128, 112
  %4150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4149, i32 undef)  ; BufferLoad(srv,index,wot)
  %4151 = extractvalue %dx.types.ResRet.f32 %4150, 2
  %4152 = or i32 %4128, 128
  %4153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4152, i32 undef)  ; BufferLoad(srv,index,wot)
  %4154 = extractvalue %dx.types.ResRet.f32 %4153, 0
  %4155 = extractvalue %dx.types.ResRet.f32 %4153, 1
  %4156 = extractvalue %dx.types.ResRet.f32 %4153, 2
  %4157 = extractvalue %dx.types.ResRet.f32 %4153, 3
  %4158 = or i32 %4128, 144
  %4159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4158, i32 undef)  ; BufferLoad(srv,index,wot)
  %4160 = extractvalue %dx.types.ResRet.f32 %4159, 0
  %4161 = extractvalue %dx.types.ResRet.f32 %4159, 1
  %4162 = extractvalue %dx.types.ResRet.f32 %4159, 2
  %4163 = extractvalue %dx.types.ResRet.f32 %4159, 3
  %4164 = or i32 %4128, 160
  %4165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4164, i32 undef)  ; BufferLoad(srv,index,wot)
  %4166 = extractvalue %dx.types.ResRet.f32 %4165, 0
  %4167 = extractvalue %dx.types.ResRet.f32 %4165, 1
  %4168 = extractvalue %dx.types.ResRet.f32 %4165, 2
  %4169 = extractvalue %dx.types.ResRet.f32 %4165, 3
  %4170 = or i32 %4128, 192
  %4171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4170, i32 undef)  ; BufferLoad(srv,index,wot)
  %4172 = extractvalue %dx.types.ResRet.i32 %4171, 0
  %4173 = or i32 %4128, 208
  %4174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4173, i32 undef)  ; BufferLoad(srv,index,wot)
  %4175 = extractvalue %dx.types.ResRet.f32 %4174, 0
  %4176 = or i32 %4128, 248
  %4177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4176, i32 undef)  ; BufferLoad(srv,index,wot)
  %4178 = extractvalue %dx.types.ResRet.f32 %4177, 0
  %4179 = extractvalue %dx.types.ResRet.f32 %4177, 1
  %4180 = add nuw nsw i32 %4102, 1
  %4181 = bitcast float %4134 to i32
  %4182 = and i32 %4181, 512
  %4183 = icmp eq i32 %4182, 0
  %4184 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4128, i32 undef)  ; BufferLoad(srv,index,wot)
  %4185 = extractvalue %dx.types.ResRet.f32 %4184, 0
  %4186 = extractvalue %dx.types.ResRet.f32 %4184, 1
  %4187 = extractvalue %dx.types.ResRet.f32 %4184, 2
  %4188 = extractvalue %dx.types.ResRet.f32 %4184, 3
  %4189 = call float @dx.op.dot4.f32(i32 56, float %4185, float %4186, float %4187, float %4188, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4190 = or i32 %4128, 16
  %4191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4190, i32 undef)  ; BufferLoad(srv,index,wot)
  %4192 = extractvalue %dx.types.ResRet.f32 %4191, 0
  %4193 = extractvalue %dx.types.ResRet.f32 %4191, 1
  %4194 = extractvalue %dx.types.ResRet.f32 %4191, 2
  %4195 = extractvalue %dx.types.ResRet.f32 %4191, 3
  %4196 = call float @dx.op.dot4.f32(i32 56, float %4192, float %4193, float %4194, float %4195, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4197 = or i32 %4128, 32
  %4198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4197, i32 undef)  ; BufferLoad(srv,index,wot)
  %4199 = extractvalue %dx.types.ResRet.f32 %4198, 0
  %4200 = extractvalue %dx.types.ResRet.f32 %4198, 1
  %4201 = extractvalue %dx.types.ResRet.f32 %4198, 2
  %4202 = extractvalue %dx.types.ResRet.f32 %4198, 3
  %4203 = call float @dx.op.dot4.f32(i32 56, float %4199, float %4200, float %4201, float %4202, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4204 = call float @dx.op.unary.f32(i32 27, float %4189)  ; Round_ni(value)
  %4205 = call float @dx.op.unary.f32(i32 6, float %4204)  ; FAbs(value)
  %4206 = call float @dx.op.unary.f32(i32 27, float %4196)  ; Round_ni(value)
  %4207 = call float @dx.op.unary.f32(i32 6, float %4206)  ; FAbs(value)
  %4208 = call float @dx.op.unary.f32(i32 6, float %4203)  ; FAbs(value)
  %4209 = call float @dx.op.unary.f32(i32 27, float %4208)  ; Round_ni(value)
  %4210 = fadd fast float %4207, %4205
  %4211 = fadd fast float %4210, %4209
  %4212 = fcmp fast oeq float %4211, 0.000000e+00
  %4213 = call float @dx.op.dot4.f32(i32 56, float %4185, float %4186, float %4187, float %4188, float %4054, float %4055, float %4056, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4214 = call float @dx.op.dot4.f32(i32 56, float %4192, float %4193, float %4194, float %4195, float %4054, float %4055, float %4056, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4215 = call float @dx.op.dot4.f32(i32 56, float %4185, float %4186, float %4187, float %4188, float %4057, float %4058, float %4059, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4216 = call float @dx.op.dot4.f32(i32 56, float %4192, float %4193, float %4194, float %4195, float %4057, float %4058, float %4059, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4217 = fsub fast float %4213, %4189
  %4218 = fsub fast float %4215, %4189
  %4219 = fsub fast float %4214, %4196
  %4220 = fsub fast float %4216, %4196
  %4221 = call float @dx.op.dot3.f32(i32 55, float %4131, float %4132, float %4133, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %4222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4223 = extractvalue %dx.types.CBufRet.f32 %4222, 2
  %4224 = fadd fast float %4223, %4221
  %4225 = call float @dx.op.unary.f32(i32 7, float %4224)  ; Saturate(value)
  %4226 = extractvalue %dx.types.CBufRet.f32 %4222, 0
  %4227 = fcmp fast ogt float %4225, %4226
  %4228 = and i1 %4212, %4227
  %4229 = and i1 %4183, %4228
  br i1 %4229, label %4253, label %4230

; <label>:4230                                    ; preds = %4560, %4334, %4253, %4101
  %4231 = phi float [ %4103, %4253 ], [ %4337, %4334 ], [ %4337, %4560 ], [ %4103, %4101 ]
  %4232 = phi float [ %4104, %4253 ], [ %4104, %4334 ], [ %4536, %4560 ], [ %4104, %4101 ]
  %4233 = phi float [ %4105, %4253 ], [ %4105, %4334 ], [ %4534, %4560 ], [ %4105, %4101 ]
  %4234 = phi float [ %4106, %4253 ], [ %4106, %4334 ], [ %4461, %4560 ], [ %4106, %4101 ]
  %4235 = phi float [ %4107, %4253 ], [ %4107, %4334 ], [ %4459, %4560 ], [ %4107, %4101 ]
  %4236 = phi float [ %4108, %4253 ], [ %4108, %4334 ], [ %4504, %4560 ], [ %4108, %4101 ]
  %4237 = phi float [ %4109, %4253 ], [ %4109, %4334 ], [ %4505, %4560 ], [ %4109, %4101 ]
  %4238 = phi float [ %4110, %4253 ], [ %4110, %4334 ], [ %4506, %4560 ], [ %4110, %4101 ]
  %4239 = phi float [ %4111, %4253 ], [ %4111, %4334 ], [ %4570, %4560 ], [ %4111, %4101 ]
  %4240 = phi float [ %4112, %4253 ], [ %4112, %4334 ], [ %4571, %4560 ], [ %4112, %4101 ]
  %4241 = phi float [ %4113, %4253 ], [ %4113, %4334 ], [ %4572, %4560 ], [ %4113, %4101 ]
  %4242 = phi float [ %4114, %4253 ], [ %4114, %4334 ], [ %4440, %4560 ], [ %4114, %4101 ]
  %4243 = phi float [ %4115, %4253 ], [ %4115, %4334 ], [ %4441, %4560 ], [ %4115, %4101 ]
  %4244 = phi float [ %4116, %4253 ], [ %4116, %4334 ], [ %4442, %4560 ], [ %4116, %4101 ]
  %4245 = phi float [ %4117, %4253 ], [ %4117, %4334 ], [ %4514, %4560 ], [ %4117, %4101 ]
  %4246 = phi float [ %4118, %4253 ], [ %4118, %4334 ], [ %4511, %4560 ], [ %4118, %4101 ]
  %4247 = phi float [ %4119, %4253 ], [ %4119, %4334 ], [ %4508, %4560 ], [ %4119, %4101 ]
  %4248 = phi float [ %4120, %4253 ], [ %4120, %4334 ], [ %4457, %4560 ], [ %4120, %4101 ]
  %4249 = phi float [ %4121, %4253 ], [ %4121, %4334 ], [ %4452, %4560 ], [ %4121, %4101 ]
  %4250 = phi float [ %4122, %4253 ], [ %4122, %4334 ], [ %4453, %4560 ], [ %4122, %4101 ]
  %4251 = phi float [ %4123, %4253 ], [ %4123, %4334 ], [ %4454, %4560 ], [ %4123, %4101 ]
  %4252 = icmp eq i32 %4180, %4100
  br i1 %4252, label %4573, label %4101

; <label>:4253                                    ; preds = %4101
  %4254 = extractvalue %dx.types.ResRet.f32 %4150, 3
  %4255 = extractvalue %dx.types.ResRet.f32 %4150, 1
  %4256 = extractvalue %dx.types.ResRet.f32 %4150, 0
  %4257 = extractvalue %dx.types.ResRet.f32 %4140, 1
  %4258 = extractvalue %dx.types.ResRet.f32 %4140, 0
  %4259 = extractvalue %dx.types.ResRet.i32 %4136, 3
  %4260 = extractvalue %dx.types.ResRet.i32 %4136, 2
  %4261 = add i32 %4259, 0
  %4262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4261, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4263 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4264 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4262, %dx.types.Handle %4263, float %4189, float %4196, float undef, float undef, i32 0, i32 0, i32 undef, float %4217, float %4219, float undef, float %4218, float %4220, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4265 = extractvalue %dx.types.ResRet.f32 %4264, 0
  %4266 = fmul fast float %4265, %4258
  %4267 = fadd fast float %4266, %4257
  %4268 = call float @dx.op.unary.f32(i32 7, float %4267)  ; Saturate(value)
  %4269 = fmul fast float %4189, %4145
  %4270 = call float @dx.op.tertiary.f32(i32 46, float %4146, float %4196, float %4269)  ; FMad(a,b,c)
  %4271 = fadd fast float %4270, %4256
  %4272 = fmul fast float %4189, %4147
  %4273 = call float @dx.op.tertiary.f32(i32 46, float %4148, float %4196, float %4272)  ; FMad(a,b,c)
  %4274 = fadd fast float %4273, %4255
  %4275 = fmul fast float %4217, %4145
  %4276 = call float @dx.op.tertiary.f32(i32 46, float %4146, float %4219, float %4275)  ; FMad(a,b,c)
  %4277 = fmul fast float %4217, %4147
  %4278 = call float @dx.op.tertiary.f32(i32 46, float %4148, float %4219, float %4277)  ; FMad(a,b,c)
  %4279 = fmul fast float %4218, %4145
  %4280 = call float @dx.op.tertiary.f32(i32 46, float %4146, float %4220, float %4279)  ; FMad(a,b,c)
  %4281 = fmul fast float %4218, %4147
  %4282 = call float @dx.op.tertiary.f32(i32 46, float %4148, float %4220, float %4281)  ; FMad(a,b,c)
  %4283 = add i32 %4260, 0
  %4284 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4283, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4285 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4284, %dx.types.Handle %4263, float %4271, float %4274, float undef, float undef, i32 0, i32 0, i32 undef, float %4276, float %4278, float undef, float %4280, float %4282, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = and i32 %4181, 1024
  %4288 = icmp ne i32 %4287, 0
  %4289 = fcmp fast ogt float %4286, 0x3FE0101020000000
  %4290 = uitofp i1 %4289 to float
  %4291 = select i1 %4288, float %4290, float %4286
  %4292 = and i32 %4181, 8192
  %4293 = icmp ne i32 %4292, 0
  %4294 = select i1 %4293, float %4254, float 1.000000e+00
  %4295 = fmul fast float %4189, 2.000000e+00
  %4296 = fadd fast float %4295, -1.000000e+00
  %4297 = call float @dx.op.unary.f32(i32 6, float %4296)  ; FAbs(value)
  %4298 = fmul fast float %4297, %4178
  %4299 = fsub fast float %4298, %4178
  %4300 = call float @dx.op.unary.f32(i32 7, float %4299)  ; Saturate(value)
  %4301 = fmul fast float %4196, 2.000000e+00
  %4302 = fadd fast float %4301, -1.000000e+00
  %4303 = call float @dx.op.unary.f32(i32 6, float %4302)  ; FAbs(value)
  %4304 = fmul fast float %4303, %4179
  %4305 = fsub fast float %4304, %4179
  %4306 = call float @dx.op.unary.f32(i32 7, float %4305)  ; Saturate(value)
  %4307 = fmul fast float %4208, %4141
  %4308 = fsub fast float %4307, %4141
  %4309 = call float @dx.op.unary.f32(i32 7, float %4308)  ; Saturate(value)
  %4310 = fmul fast float %4268, %4294
  %4311 = fmul fast float %4310, %4265
  %4312 = fmul fast float %4311, %4300
  %4313 = fmul fast float %4312, %4291
  %4314 = fmul fast float %4313, %4306
  %4315 = fmul fast float %4314, %4309
  %4316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4317 = extractvalue %dx.types.CBufRet.f32 %4316, 1
  %4318 = extractvalue %dx.types.CBufRet.f32 %4316, 0
  %4319 = fsub fast float %4225, %4318
  %4320 = fmul fast float %4319, %4317
  %4321 = call float @dx.op.unary.f32(i32 7, float %4320)  ; Saturate(value)
  %4322 = fmul fast float %4315, %4142
  %4323 = fadd fast float %4315, %4142
  %4324 = fmul fast float %4323, %4151
  %4325 = fsub fast float %4324, %4151
  %4326 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4327 = and i32 %4181, 128
  %4328 = icmp ne i32 %4327, 0
  %4329 = select i1 %4328, float %4326, float %4322
  %4330 = fmul fast float %4329, %4321
  %4331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4332 = extractvalue %dx.types.CBufRet.f32 %4331, 0
  %4333 = fcmp fast ugt float %4330, %4332
  br i1 %4333, label %4334, label %4230

; <label>:4334                                    ; preds = %4253
  %4335 = select i1 %4293, float %4330, float 0.000000e+00
  %4336 = fadd fast float %4335, %4103
  %4337 = call float @dx.op.unary.f32(i32 7, float %4336)  ; Saturate(value)
  br i1 %4293, label %4230, label %4338

; <label>:4338                                    ; preds = %4334
  %4339 = and i32 %4181, 4
  %4340 = and i32 %4181, 8
  %4341 = add i32 %4137, 0
  %4342 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4341, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4343 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4344 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4342, %dx.types.Handle %4343, float %4271, float %4274, float undef, float undef, i32 0, i32 0, i32 undef, float %4276, float %4278, float undef, float %4280, float %4282, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = extractvalue %dx.types.ResRet.f32 %4344, 1
  %4347 = extractvalue %dx.types.ResRet.f32 %4344, 2
  %4348 = extractvalue %dx.types.ResRet.f32 %4344, 3
  %4349 = bitcast float %4163 to i32
  %4350 = and i32 %4349, 255
  %4351 = uitofp i32 %4350 to float
  %4352 = lshr i32 %4349, 8
  %4353 = and i32 %4352, 255
  %4354 = uitofp i32 %4353 to float
  %4355 = fmul fast float %4348, %4351
  %4356 = fadd fast float %4355, %4354
  %4357 = fmul fast float %4356, 0x3F70101000000000
  %4358 = add i32 %4138, 0
  %4359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4358, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4360 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4359, %dx.types.Handle %4343, float %4271, float %4274, float undef, float undef, i32 0, i32 0, i32 undef, float %4276, float %4278, float undef, float %4280, float %4282, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4361 = extractvalue %dx.types.ResRet.f32 %4360, 0
  %4362 = extractvalue %dx.types.ResRet.f32 %4360, 1
  %4363 = extractvalue %dx.types.ResRet.f32 %4360, 2
  %4364 = extractvalue %dx.types.ResRet.f32 %4360, 3
  %4365 = bitcast float %4157 to i32
  %4366 = and i32 %4365, 255
  %4367 = uitofp i32 %4366 to float
  %4368 = lshr i32 %4365, 8
  %4369 = and i32 %4368, 255
  %4370 = uitofp i32 %4369 to float
  %4371 = lshr i32 %4365, 16
  %4372 = and i32 %4371, 255
  %4373 = uitofp i32 %4372 to float
  %4374 = fmul fast float %4373, 0x3F70101000000000
  %4375 = fmul fast float %4361, %4367
  %4376 = fadd fast float %4375, %4370
  %4377 = fmul fast float %4376, 0x3F70101000000000
  %4378 = fadd fast float %4362, -5.000000e-01
  %4379 = fadd fast float %4364, -5.000000e-01
  %4380 = fmul fast float %4378, %4374
  %4381 = fmul fast float %4379, %4374
  %4382 = fadd fast float %4380, 5.000000e-01
  %4383 = fadd fast float %4381, 5.000000e-01
  %4384 = fmul fast float %4345, %4166
  %4385 = fmul fast float %4346, %4167
  %4386 = fmul fast float %4347, %4168
  %4387 = fmul fast float %4382, 2.000000e+00
  %4388 = fadd fast float %4387, -1.000000e+00
  %4389 = fmul fast float %4383, 2.000000e+00
  %4390 = fadd fast float %4389, -1.000000e+00
  %4391 = fadd fast float %4388, %4390
  %4392 = fmul fast float %4391, 5.000000e-01
  %4393 = fsub fast float %4388, %4390
  %4394 = fmul fast float %4393, 5.000000e-01
  %4395 = call float @dx.op.unary.f32(i32 6, float %4392)  ; FAbs(value)
  %4396 = fsub fast float 1.000000e+00, %4395
  %4397 = call float @dx.op.unary.f32(i32 6, float %4394)  ; FAbs(value)
  %4398 = fsub fast float %4396, %4397
  %4399 = call float @dx.op.dot3.f32(i32 55, float %4392, float %4394, float %4398, float %4392, float %4394, float %4398)  ; Dot3(ax,ay,az,bx,by,bz)
  %4400 = call float @dx.op.unary.f32(i32 25, float %4399)  ; Rsqrt(value)
  %4401 = fmul fast float %4392, %4400
  %4402 = fmul fast float %4394, %4400
  %4403 = fmul fast float %4400, %4398
  %4404 = fmul fast float %4403, %4131
  %4405 = fmul fast float %4403, %4132
  %4406 = fmul fast float %4403, %4133
  %4407 = fmul fast float %4401, %4154
  %4408 = fmul fast float %4401, %4155
  %4409 = fmul fast float %4401, %4156
  %4410 = fadd fast float %4407, %4404
  %4411 = fadd fast float %4408, %4405
  %4412 = fadd fast float %4409, %4406
  %4413 = fmul fast float %4402, %4160
  %4414 = fmul fast float %4402, %4161
  %4415 = fmul fast float %4402, %4162
  %4416 = fadd fast float %4410, %4413
  %4417 = fadd fast float %4411, %4414
  %4418 = fadd fast float %4412, %4415
  %4419 = call float @dx.op.dot3.f32(i32 55, float %4416, float %4417, float %4418, float %4416, float %4417, float %4418)  ; Dot3(ax,ay,az,bx,by,bz)
  %4420 = call float @dx.op.unary.f32(i32 25, float %4419)  ; Rsqrt(value)
  %4421 = fmul fast float %4416, %4420
  %4422 = fmul fast float %4417, %4420
  %4423 = fmul fast float %4418, %4420
  %4424 = icmp ne i32 %4340, 0
  %4425 = select i1 %4424, float 1.000000e+00, float 0.000000e+00
  %4426 = fmul fast float %4330, %4425
  %4427 = and i32 %4181, 1
  %4428 = icmp eq i32 %4427, 0
  br i1 %4428, label %4429, label %4433

; <label>:4429                                    ; preds = %4338
  %4430 = fsub fast float %4421, %4114
  %4431 = fsub fast float %4422, %4115
  %4432 = fsub fast float %4423, %4116
  br label %4433

; <label>:4433                                    ; preds = %4429, %4338
  %4434 = phi float [ %4430, %4429 ], [ %4421, %4338 ]
  %4435 = phi float [ %4431, %4429 ], [ %4422, %4338 ]
  %4436 = phi float [ %4432, %4429 ], [ %4423, %4338 ]
  %4437 = fmul float %4436, %4426
  %4438 = fmul float %4435, %4426
  %4439 = fmul float %4434, %4426
  %4440 = fadd fast float %4439, %4114
  %4441 = fadd fast float %4438, %4115
  %4442 = fadd fast float %4437, %4116
  %4443 = icmp ne i32 %4339, 0
  %4444 = select i1 %4443, float 1.000000e+00, float 0.000000e+00
  %4445 = fmul fast float %4330, %4444
  %4446 = fsub fast float %4384, %4121
  %4447 = fsub fast float %4385, %4122
  %4448 = fsub fast float %4386, %4123
  %4449 = fmul fast float %4446, %4445
  %4450 = fmul fast float %4447, %4445
  %4451 = fmul fast float %4448, %4445
  %4452 = fadd fast float %4449, %4121
  %4453 = fadd fast float %4450, %4122
  %4454 = fadd fast float %4451, %4123
  %4455 = fsub fast float %4357, %4120
  %4456 = fmul fast float %4455, %4445
  %4457 = fadd fast float %4456, %4120
  %4458 = fmul fast float %4445, %4107
  %4459 = fsub fast float %4107, %4458
  %4460 = fmul fast float %4445, %4106
  %4461 = fsub fast float %4106, %4460
  %4462 = bitcast float %4175 to i32
  %4463 = lshr i32 %4462, 16
  %4464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4463)  ; LegacyF16ToF32(value)
  %4465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4466 = extractvalue %dx.types.ResRet.i32 %4465, 0
  %4467 = and i32 %4466, 1
  %4468 = icmp eq i32 %4467, 0
  br i1 %4468, label %4469, label %4494

; <label>:4469                                    ; preds = %4433
  %4470 = fadd fast float %4357, 0xBFB99999A0000000
  %4471 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4472 = fmul fast float %4471, 0x3FF1C71C80000000
  %4473 = fsub fast float 1.000000e+00, %4472
  %4474 = call float @dx.op.unary.f32(i32 7, float %4473)  ; Saturate(value)
  %4475 = fmul fast float %4474, %4384
  %4476 = fmul fast float %4474, %4385
  %4477 = fmul fast float %4474, %4386
  %4478 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4479 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4480 = call float @dx.op.unary.f32(i32 7, float %4477)  ; Saturate(value)
  %4481 = call float @dx.op.binary.f32(i32 35, float %4479, float %4480)  ; FMax(a,b)
  %4482 = call float @dx.op.binary.f32(i32 35, float %4478, float %4481)  ; FMax(a,b)
  %4483 = fcmp fast ogt float %4482, 0.000000e+00
  %4484 = bitcast float %4482 to i32
  %4485 = sub nsw i32 2129859010, %4484
  %4486 = bitcast i32 %4485 to float
  %4487 = select i1 %4483, float %4486, float 0.000000e+00
  %4488 = fmul fast float %4478, %4464
  %4489 = fmul fast float %4479, %4464
  %4490 = fmul fast float %4480, %4464
  %4491 = fmul fast float %4488, %4487
  %4492 = fmul fast float %4489, %4487
  %4493 = fmul fast float %4490, %4487
  br label %4494

; <label>:4494                                    ; preds = %4469, %4433
  %4495 = phi float [ %4464, %4433 ], [ %4491, %4469 ]
  %4496 = phi float [ %4464, %4433 ], [ %4492, %4469 ]
  %4497 = phi float [ %4464, %4433 ], [ %4493, %4469 ]
  %4498 = fsub fast float %4495, %4108
  %4499 = fsub fast float %4496, %4109
  %4500 = fsub fast float %4497, %4110
  %4501 = fmul fast float %4498, %4445
  %4502 = fmul fast float %4499, %4445
  %4503 = fmul fast float %4500, %4445
  %4504 = fadd fast float %4501, %4108
  %4505 = fadd fast float %4502, %4109
  %4506 = fadd fast float %4503, %4110
  %4507 = fadd fast float %4330, %4119
  %4508 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4509 = fsub fast float %4377, %4118
  %4510 = fmul fast float %4509, %4426
  %4511 = fadd fast float %4510, %4118
  %4512 = fsub fast float %4363, %4117
  %4513 = fmul fast float %4512, %4426
  %4514 = fadd fast float %4513, %4117
  %4515 = call float @dx.op.dot3.f32(i32 55, float %4384, float %4385, float %4386, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4517 = extractvalue %dx.types.CBufRet.f32 %4516, 0
  %4518 = extractvalue %dx.types.CBufRet.f32 %4516, 1
  %4519 = fmul fast float %4518, %4515
  %4520 = fadd fast float %4519, %4517
  %4521 = call float @dx.op.unary.f32(i32 7, float %4520)  ; Saturate(value)
  %4522 = bitcast float %4169 to i32
  %4523 = and i32 %4522, 65535
  %4524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4523)  ; LegacyF16ToF32(value)
  %4525 = lshr i32 %4522, 16
  %4526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4525)  ; LegacyF16ToF32(value)
  %4527 = fcmp fast oge float %4524, 0.000000e+00
  %4528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4528, 0
  %4530 = select i1 %4527, float %4524, float %4529
  %4531 = fadd fast float %4530, %4526
  %4532 = fsub fast float %4521, %4105
  %4533 = fmul fast float %4532, %4330
  %4534 = fadd fast float %4533, %4105
  %4535 = fmul fast float %4531, %4330
  %4536 = call float @dx.op.binary.f32(i32 35, float %4104, float %4535)  ; FMax(a,b)
  %4537 = and i32 %4181, 16
  %4538 = icmp eq i32 %4537, 0
  br i1 %4538, label %4560, label %4539

; <label>:4539                                    ; preds = %4494
  %4540 = add i32 %4172, 0
  %4541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4540, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4542 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4541, %dx.types.Handle %4343, float %4271, float %4274, float undef, float undef, i32 0, i32 0, i32 undef, float %4276, float %4278, float undef, float %4280, float %4282, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4543 = extractvalue %dx.types.ResRet.f32 %4542, 0
  %4544 = extractvalue %dx.types.ResRet.f32 %4542, 1
  %4545 = extractvalue %dx.types.ResRet.f32 %4542, 2
  %4546 = and i32 %4462, 65535
  %4547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4546)  ; LegacyF16ToF32(value)
  %4548 = fmul fast float %4543, %4166
  %4549 = fmul fast float %4544, %4167
  %4550 = fmul fast float %4545, %4168
  %4551 = and i32 %4181, 16384
  %4552 = icmp ne i32 %4551, 0
  %4553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4554 = extractvalue %dx.types.CBufRet.f32 %4553, 0
  %4555 = select i1 %4552, float %4554, float 1.000000e+00
  %4556 = fmul fast float %4555, %4547
  %4557 = fmul fast float %4548, %4556
  %4558 = fmul fast float %4549, %4556
  %4559 = fmul fast float %4550, %4556
  br label %4560

; <label>:4560                                    ; preds = %4539, %4494
  %4561 = phi float [ %4557, %4539 ], [ 0.000000e+00, %4494 ]
  %4562 = phi float [ %4558, %4539 ], [ 0.000000e+00, %4494 ]
  %4563 = phi float [ %4559, %4539 ], [ 0.000000e+00, %4494 ]
  %4564 = fsub fast float %4561, %4111
  %4565 = fsub fast float %4562, %4112
  %4566 = fsub fast float %4563, %4113
  %4567 = fmul fast float %4564, %4330
  %4568 = fmul fast float %4565, %4330
  %4569 = fmul fast float %4566, %4330
  %4570 = fadd fast float %4567, %4111
  %4571 = fadd fast float %4568, %4112
  %4572 = fadd fast float %4569, %4113
  br label %4230

; <label>:4573                                    ; preds = %4230
  br label %4574

; <label>:4574                                    ; preds = %4573, %4047
  %4575 = phi float [ 0.000000e+00, %4047 ], [ %4231, %4573 ]
  %4576 = phi float [ %4016, %4047 ], [ %4232, %4573 ]
  %4577 = phi float [ %4014, %4047 ], [ %4233, %4573 ]
  %4578 = phi float [ 0.000000e+00, %4047 ], [ %4234, %4573 ]
  %4579 = phi float [ 0.000000e+00, %4047 ], [ %4235, %4573 ]
  %4580 = phi float [ %4004, %4047 ], [ %4236, %4573 ]
  %4581 = phi float [ %4005, %4047 ], [ %4237, %4573 ]
  %4582 = phi float [ %4006, %4047 ], [ %4238, %4573 ]
  %4583 = phi float [ %4007, %4047 ], [ %4239, %4573 ]
  %4584 = phi float [ %4008, %4047 ], [ %4240, %4573 ]
  %4585 = phi float [ %4009, %4047 ], [ %4241, %4573 ]
  %4586 = phi float [ %4042, %4047 ], [ %4242, %4573 ]
  %4587 = phi float [ %4043, %4047 ], [ %4243, %4573 ]
  %4588 = phi float [ %4044, %4047 ], [ %4244, %4573 ]
  %4589 = phi float [ %4012, %4047 ], [ %4245, %4573 ]
  %4590 = phi float [ %4011, %4047 ], [ %4246, %4573 ]
  %4591 = phi float [ 0.000000e+00, %4047 ], [ %4247, %4573 ]
  %4592 = phi float [ %4010, %4047 ], [ %4248, %4573 ]
  %4593 = phi float [ %4001, %4047 ], [ %4249, %4573 ]
  %4594 = phi float [ %4002, %4047 ], [ %4250, %4573 ]
  %4595 = phi float [ %4003, %4047 ], [ %4251, %4573 ]
  %4596 = call float @dx.op.dot3.f32(i32 55, float %4586, float %4587, float %4588, float %4586, float %4587, float %4588)  ; Dot3(ax,ay,az,bx,by,bz)
  %4597 = call float @dx.op.unary.f32(i32 25, float %4596)  ; Rsqrt(value)
  %4598 = fmul fast float %4597, %4586
  %4599 = fmul fast float %4597, %4587
  %4600 = fmul fast float %4597, %4588
  %4601 = fadd fast float %4591, %1175
  %4602 = call float @dx.op.unary.f32(i32 7, float %4601)  ; Saturate(value)
  %4603 = call float @dx.op.dot3.f32(i32 55, float %4598, float %4599, float %4600, float %4598, float %4599, float %4600)  ; Dot3(ax,ay,az,bx,by,bz)
  %4604 = call float @dx.op.unary.f32(i32 25, float %4603)  ; Rsqrt(value)
  %4605 = fmul fast float %4604, %4598
  %4606 = fmul fast float %4604, %4599
  %4607 = fmul fast float %4604, %4600
  br label %4608

; <label>:4608                                    ; preds = %4574, %3998
  %4609 = phi float [ %4605, %4574 ], [ %4042, %3998 ]
  %4610 = phi float [ %4606, %4574 ], [ %4043, %3998 ]
  %4611 = phi float [ %4607, %4574 ], [ %4044, %3998 ]
  %4612 = phi float [ %4593, %4574 ], [ %4001, %3998 ]
  %4613 = phi float [ %4594, %4574 ], [ %4002, %3998 ]
  %4614 = phi float [ %4595, %4574 ], [ %4003, %3998 ]
  %4615 = phi float [ %4580, %4574 ], [ %4004, %3998 ]
  %4616 = phi float [ %4581, %4574 ], [ %4005, %3998 ]
  %4617 = phi float [ %4582, %4574 ], [ %4006, %3998 ]
  %4618 = phi float [ %4583, %4574 ], [ %4007, %3998 ]
  %4619 = phi float [ %4584, %4574 ], [ %4008, %3998 ]
  %4620 = phi float [ %4585, %4574 ], [ %4009, %3998 ]
  %4621 = phi float [ %4592, %4574 ], [ %4010, %3998 ]
  %4622 = phi float [ %4602, %4574 ], [ %1175, %3998 ]
  %4623 = phi float [ %4590, %4574 ], [ %4011, %3998 ]
  %4624 = phi float [ %4589, %4574 ], [ %4012, %3998 ]
  %4625 = phi float [ %4579, %4574 ], [ 0.000000e+00, %3998 ]
  %4626 = phi float [ %4578, %4574 ], [ 0.000000e+00, %3998 ]
  %4627 = phi float [ %4575, %4574 ], [ 0.000000e+00, %3998 ]
  %4628 = phi float [ %4576, %4574 ], [ %4016, %3998 ]
  %4629 = phi float [ %4577, %4574 ], [ %4014, %3998 ]
  %4630 = fadd fast float %4621, 0xBFB99999A0000000
  %4631 = call float @dx.op.unary.f32(i32 7, float %4630)  ; Saturate(value)
  %4632 = fmul fast float %4631, 0x3FF1C71C80000000
  %4633 = call float @dx.op.binary.f32(i32 36, float %4621, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4634 = fsub fast float 1.000000e+00, %4632
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = fmul fast float %4635, %4612
  %4637 = fmul fast float %4635, %4613
  %4638 = fmul fast float %4635, %4614
  %4639 = call float @dx.op.unary.f32(i32 7, float %4636)  ; Saturate(value)
  %4640 = call float @dx.op.unary.f32(i32 7, float %4637)  ; Saturate(value)
  %4641 = call float @dx.op.unary.f32(i32 7, float %4638)  ; Saturate(value)
  %4642 = fmul fast float %4632, %4612
  %4643 = fmul fast float %4632, %4613
  %4644 = fmul fast float %4632, %4614
  %4645 = fadd fast float %4642, %4633
  %4646 = fadd fast float %4643, %4633
  %4647 = fadd fast float %4644, %4633
  %4648 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4649 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4650 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4651 = call float @dx.op.unary.f32(i32 7, float %4623)  ; Saturate(value)
  %4652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4653 = extractvalue %dx.types.ResRet.i32 %4652, 0
  %4654 = and i32 %4653, 1
  %4655 = icmp eq i32 %4654, 0
  br i1 %4655, label %4670, label %4656

; <label>:4656                                    ; preds = %4608
  %4657 = call float @dx.op.binary.f32(i32 35, float %4640, float %4641)  ; FMax(a,b)
  %4658 = call float @dx.op.binary.f32(i32 35, float %4639, float %4657)  ; FMax(a,b)
  %4659 = fcmp fast ogt float %4658, 0.000000e+00
  %4660 = bitcast float %4658 to i32
  %4661 = sub nsw i32 2129859010, %4660
  %4662 = bitcast i32 %4661 to float
  %4663 = select i1 %4659, float %4662, float 0.000000e+00
  %4664 = fmul fast float %4639, %4615
  %4665 = fmul fast float %4640, %4616
  %4666 = fmul fast float %4641, %4617
  %4667 = fmul fast float %4664, %4663
  %4668 = fmul fast float %4665, %4663
  %4669 = fmul fast float %4666, %4663
  br label %4670

; <label>:4670                                    ; preds = %4656, %4608
  %4671 = phi float [ %4667, %4656 ], [ %4615, %4608 ]
  %4672 = phi float [ %4668, %4656 ], [ %4616, %4608 ]
  %4673 = phi float [ %4669, %4656 ], [ %4617, %4608 ]
  %4674 = fadd fast float %4639, 0xBFD51EB860000000
  %4675 = fadd fast float %4640, 0xBFD51EB860000000
  %4676 = fadd fast float %4641, 0xBFD51EB860000000
  %4677 = fmul fast float %4674, %4674
  %4678 = fmul fast float %4675, %4675
  %4679 = fmul fast float %4676, %4676
  %4680 = fmul fast float %4677, %4677
  %4681 = fmul fast float %4680, 1.000000e+02
  %4682 = fmul fast float %4678, %4678
  %4683 = fmul fast float %4682, 1.000000e+02
  %4684 = fmul fast float %4679, %4679
  %4685 = fmul fast float %4684, 1.000000e+02
  %4686 = fadd fast float %4681, 3.500000e+00
  %4687 = fadd fast float %4683, 3.500000e+00
  %4688 = fadd fast float %4685, 3.500000e+00
  %4689 = call float @dx.op.binary.f32(i32 35, float %4671, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4690 = call float @dx.op.binary.f32(i32 35, float %4672, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4691 = call float @dx.op.binary.f32(i32 35, float %4673, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4692 = fdiv fast float %4686, %4689
  %4693 = fdiv fast float %4687, %4690
  %4694 = fdiv fast float %4688, %4691
  %4695 = fmul fast float %4013, 0xBFF7154760000000
  %4696 = fmul fast float %4695, %4692
  %4697 = call float @dx.op.unary.f32(i32 21, float %4696)  ; Exp(value)
  %4698 = fmul fast float %4697, 2.500000e-01
  %4699 = fmul fast float %4013, 0xBFDEC709E0000000
  %4700 = fmul fast float %4699, %4692
  %4701 = call float @dx.op.unary.f32(i32 21, float %4700)  ; Exp(value)
  %4702 = fmul fast float %4701, 7.500000e-01
  %4703 = fmul fast float %4695, %4693
  %4704 = call float @dx.op.unary.f32(i32 21, float %4703)  ; Exp(value)
  %4705 = fmul fast float %4704, 2.500000e-01
  %4706 = fmul fast float %4699, %4693
  %4707 = call float @dx.op.unary.f32(i32 21, float %4706)  ; Exp(value)
  %4708 = fmul fast float %4707, 7.500000e-01
  %4709 = fmul fast float %4695, %4694
  %4710 = call float @dx.op.unary.f32(i32 21, float %4709)  ; Exp(value)
  %4711 = fmul fast float %4710, 2.500000e-01
  %4712 = fmul fast float %4699, %4694
  %4713 = call float @dx.op.unary.f32(i32 21, float %4712)  ; Exp(value)
  %4714 = fmul fast float %4713, 7.500000e-01
  %4715 = fadd fast float %4698, %4702
  %4716 = fadd fast float %4705, %4708
  %4717 = fadd fast float %4711, %4714
  %4718 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4719 = extractvalue %dx.types.CBufRet.i32 %4718, 3
  %4720 = and i32 %4719, 8
  %4721 = icmp ne i32 %4720, 0
  %4722 = call float @dx.op.binary.f32(i32 35, float %4639, float %4612)  ; FMax(a,b)
  %4723 = call float @dx.op.binary.f32(i32 35, float %4640, float %4612)  ; FMax(a,b)
  %4724 = call float @dx.op.binary.f32(i32 35, float %4641, float %4612)  ; FMax(a,b)
  %4725 = call float @dx.op.dot3.f32(i32 55, float %4639, float %4640, float %4641, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4726 = select i1 %206, float %4612, float %4639
  %4727 = select i1 %206, float %4725, float %4640
  %4728 = select i1 %206, float 1.000000e+00, float %4641
  %4729 = select i1 %4721, float %4722, float %4726
  %4730 = select i1 %4721, float %4723, float %4727
  %4731 = select i1 %4721, float %4724, float %4728
  %4732 = call float @dx.op.dot3.f32(i32 55, float %4671, float %4672, float %4673, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4733 = select i1 %206, float %4732, float %4671
  %4734 = select i1 %206, float %4732, float %4672
  %4735 = select i1 %206, float %4732, float %4673
  %4736 = and i32 %182, 3
  %4737 = select i1 %176, i32 %4736, i32 0
  %4738 = icmp eq i32 %4737, 1
  br i1 %4738, label %4739, label %4815

; <label>:4739                                    ; preds = %4670
  %4740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4741 = extractvalue %dx.types.CBufRet.f32 %4740, 0
  %4742 = extractvalue %dx.types.CBufRet.f32 %4740, 1
  %4743 = fadd fast float %4741, %145
  %4744 = fadd fast float %4742, %146
  %4745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4746 = extractvalue %dx.types.CBufRet.f32 %4745, 0
  %4747 = extractvalue %dx.types.CBufRet.f32 %4745, 1
  %4748 = fsub fast float %4743, %4746
  %4749 = fsub fast float %4744, %4747
  %4750 = fmul fast float %4748, %4748
  %4751 = fmul fast float %4749, %4749
  %4752 = fadd fast float %4750, %4751
  %4753 = call float @dx.op.unary.f32(i32 24, float %4752)  ; Sqrt(value)
  %4754 = extractvalue %dx.types.CBufRet.f32 %4745, 2
  %4755 = fcmp fast olt float %4753, %4754
  br i1 %4755, label %4756, label %4809

; <label>:4756                                    ; preds = %4739
  %4757 = extractvalue %dx.types.CBufRet.f32 %4740, 2
  %4758 = fadd fast float %4757, %147
  %4759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4760 = extractvalue %dx.types.CBufRet.f32 %4759, 0
  %4761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4762 = extractvalue %dx.types.CBufRet.f32 %4761, 0
  %4763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4764 = extractvalue %dx.types.CBufRet.f32 %4763, 0
  %4765 = extractvalue %dx.types.CBufRet.f32 %4759, 1
  %4766 = extractvalue %dx.types.CBufRet.f32 %4761, 1
  %4767 = extractvalue %dx.types.CBufRet.f32 %4763, 1
  %4768 = extractvalue %dx.types.CBufRet.f32 %4759, 3
  %4769 = extractvalue %dx.types.CBufRet.f32 %4761, 3
  %4770 = extractvalue %dx.types.CBufRet.f32 %4763, 3
  %4771 = fadd fast float %4768, %4743
  %4772 = fadd fast float %4769, %4744
  %4773 = fadd fast float %4758, %4770
  %4774 = fmul fast float %4771, %4760
  %4775 = call float @dx.op.tertiary.f32(i32 46, float %4772, float %4762, float %4774)  ; FMad(a,b,c)
  %4776 = call float @dx.op.tertiary.f32(i32 46, float %4773, float %4764, float %4775)  ; FMad(a,b,c)
  %4777 = fmul fast float %4771, %4765
  %4778 = call float @dx.op.tertiary.f32(i32 46, float %4772, float %4766, float %4777)  ; FMad(a,b,c)
  %4779 = call float @dx.op.tertiary.f32(i32 46, float %4773, float %4767, float %4778)  ; FMad(a,b,c)
  %4780 = fsub fast float %4776, %4768
  %4781 = fsub fast float %4779, %4769
  %4782 = fsub fast float %4780, %4746
  %4783 = fadd fast float %4782, %4754
  %4784 = fsub fast float %4781, %4747
  %4785 = fadd fast float %4784, %4754
  %4786 = extractvalue %dx.types.CBufRet.f32 %4745, 3
  %4787 = fmul fast float %4783, %4786
  %4788 = fmul fast float %4785, %4786
  %4789 = call float @dx.op.unary.f32(i32 7, float %4787)  ; Saturate(value)
  %4790 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4791 = fsub fast float 1.000000e+00, %4789
  %4792 = fsub fast float 1.000000e+00, %4790
  %4793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %4791, float %4792, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4794 = extractvalue %dx.types.ResRet.f32 %4793, 0
  %4795 = fcmp fast ugt float %4794, 0.000000e+00
  br i1 %4795, label %4796, label %4809

; <label>:4796                                    ; preds = %4756
  %4797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.f32 %4797, 2
  %4799 = fmul fast float %4798, %4794
  %4800 = extractvalue %dx.types.CBufRet.f32 %4797, 3
  %4801 = fadd fast float %4800, %4799
  %4802 = extractvalue %dx.types.CBufRet.f32 %4763, 2
  %4803 = fadd fast float %4801, %4770
  %4804 = fmul fast float %4776, %4764
  %4805 = call float @dx.op.tertiary.f32(i32 46, float %4779, float %4767, float %4804)  ; FMad(a,b,c)
  %4806 = call float @dx.op.tertiary.f32(i32 46, float %4803, float %4802, float %4805)  ; FMad(a,b,c)
  %4807 = fsub fast float %4806, %4770
  %4808 = fsub fast float %4807, %4757
  br label %4809

; <label>:4809                                    ; preds = %4796, %4756, %4739
  %4810 = phi i1 [ true, %4796 ], [ false, %4756 ], [ false, %4739 ]
  %4811 = phi float [ %4808, %4796 ], [ -1.310720e+05, %4756 ], [ -1.310720e+05, %4739 ]
  %4812 = fsub fast float %4811, %147
  %4813 = call float @dx.op.unary.f32(i32 7, float %4812)  ; Saturate(value)
  %4814 = select i1 %4810, float %4813, float 1.000000e+00
  br label %4815

; <label>:4815                                    ; preds = %4809, %4670
  %4816 = phi float [ %4814, %4809 ], [ 0.000000e+00, %4670 ]
  %4817 = icmp eq i32 %4737, 3
  %4818 = select i1 %4817, float 1.000000e+00, float %4816
  %4819 = call float @dx.op.binary.f32(i32 35, float %4627, float %4818)  ; FMax(a,b)
  %4820 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4821 = fcmp fast une float %4820, 0.000000e+00
  %4822 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %4823 = call float @dx.op.unary.f32(i32 25, float %4822)  ; Rsqrt(value)
  br i1 %4821, label %4831, label %4824

; <label>:4824                                    ; preds = %4815
  %4825 = fmul fast float %4823, %145
  %4826 = fmul fast float %4823, %146
  %4827 = fmul fast float %4823, %147
  %4828 = fsub fast float -0.000000e+00, %4825
  %4829 = fsub fast float -0.000000e+00, %4826
  %4830 = fsub fast float -0.000000e+00, %4827
  br label %4999

; <label>:4831                                    ; preds = %4815
  %4832 = fmul fast float %145, %4823
  %4833 = fsub fast float -0.000000e+00, %4832
  %4834 = fmul fast float %146, %4823
  %4835 = fsub fast float -0.000000e+00, %4834
  %4836 = fmul fast float %147, %4823
  %4837 = fsub fast float -0.000000e+00, %4836
  %4838 = call float @dx.op.dot3.f32(i32 55, float %4833, float %4835, float %4837, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %4839 = fmul fast float %4820, 2.500000e+00
  %4840 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4841 = fmul fast float %4820, 0x4013FFFFE0000000
  %4842 = fadd fast float %4841, 0xBFFFFFFFE0000000
  %4843 = call float @dx.op.unary.f32(i32 7, float %4842)  ; Saturate(value)
  %4844 = fmul fast float %4820, 0x4004000020000000
  %4845 = fadd fast float %4844, 0xBFF8000040000000
  %4846 = call float @dx.op.unary.f32(i32 7, float %4845)  ; Saturate(value)
  %4847 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4848 = fmul fast float %4630, 1.000000e+01
  %4849 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4850 = fmul fast float %4849, 2.000000e+00
  %4851 = fsub fast float 3.000000e+00, %4850
  %4852 = fmul fast float %4849, %4849
  %4853 = fmul fast float %4852, %4851
  %4854 = fsub fast float 1.000000e+00, %4853
  %4855 = fsub fast float 0x3FE3333340000000, %4651
  %4856 = fmul fast float %4855, 0x400AAAAAA0000000
  %4857 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4858 = fmul fast float %4854, %4857
  %4859 = fmul fast float %4729, 0x3FEA2B8620000000
  %4860 = fmul fast float %4730, 0x3FEA2B8620000000
  %4861 = fmul fast float %4731, 0x3FEA2B8620000000
  %4862 = fadd fast float %4859, 0x3FC81DFBA0000000
  %4863 = fmul fast float %4862, %4729
  %4864 = fadd fast float %4863, 0x3F910E6020000000
  %4865 = fadd fast float %4860, 0x3FC81DFBA0000000
  %4866 = fmul fast float %4865, %4730
  %4867 = fadd fast float %4866, 0x3F910E6020000000
  %4868 = fadd fast float %4861, 0x3FC81DFBA0000000
  %4869 = fmul fast float %4868, %4731
  %4870 = fadd fast float %4869, 0x3F910E6020000000
  %4871 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4872 = call float @dx.op.unary.f32(i32 7, float %4867)  ; Saturate(value)
  %4873 = call float @dx.op.unary.f32(i32 7, float %4870)  ; Saturate(value)
  %4874 = fsub fast float %4871, %4729
  %4875 = fsub fast float %4872, %4730
  %4876 = fsub fast float %4873, %4731
  %4877 = fmul fast float %4874, %4847
  %4878 = fmul fast float %4877, %4858
  %4879 = fmul fast float %4875, %4847
  %4880 = fmul fast float %4879, %4858
  %4881 = fmul fast float %4876, %4847
  %4882 = fmul fast float %4881, %4858
  %4883 = fadd fast float %4878, %4729
  %4884 = fadd fast float %4880, %4730
  %4885 = fadd fast float %4882, %4731
  %4886 = fmul fast float %4624, %4624
  %4887 = fmul fast float %4886, %4886
  %4888 = fadd fast float %4843, 1.000000e+00
  %4889 = fsub fast float %4888, %4858
  %4890 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4891 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4892 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4893 = fsub fast float 1.000000e+00, %4887
  %4894 = call float @dx.op.binary.f32(i32 36, float %4890, float %4893)  ; FMin(a,b)
  %4895 = call float @dx.op.unary.f32(i32 7, float %4846)  ; Saturate(value)
  %4896 = call float @dx.op.binary.f32(i32 35, float %4894, float %4895)  ; FMax(a,b)
  %4897 = fadd fast float %4892, 0xBFE4CCCCC0000000
  %4898 = fmul fast float %4897, 0x4006DB6DA0000000
  %4899 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4900 = fmul fast float %4899, 2.000000e+00
  %4901 = fsub fast float 3.000000e+00, %4900
  %4902 = bitcast float %4648 to i32
  %4903 = ashr i32 %4902, 1
  %4904 = add nsw i32 %4903, 532487669
  %4905 = bitcast i32 %4904 to float
  %4906 = fsub fast float 1.000000e+00, %4905
  %4907 = bitcast float %4906 to i32
  %4908 = sub nsw i32 2129859010, %4907
  %4909 = bitcast i32 %4908 to float
  %4910 = fmul fast float %4909, 2.000000e+00
  %4911 = bitcast float %4649 to i32
  %4912 = ashr i32 %4911, 1
  %4913 = add nsw i32 %4912, 532487669
  %4914 = bitcast i32 %4913 to float
  %4915 = fsub fast float 1.000000e+00, %4914
  %4916 = bitcast float %4915 to i32
  %4917 = sub nsw i32 2129859010, %4916
  %4918 = bitcast i32 %4917 to float
  %4919 = fmul fast float %4918, 2.000000e+00
  %4920 = bitcast float %4650 to i32
  %4921 = ashr i32 %4920, 1
  %4922 = add nsw i32 %4921, 532487669
  %4923 = bitcast i32 %4922 to float
  %4924 = fsub fast float 1.000000e+00, %4923
  %4925 = bitcast float %4924 to i32
  %4926 = sub nsw i32 2129859010, %4925
  %4927 = bitcast i32 %4926 to float
  %4928 = fmul fast float %4927, 2.000000e+00
  %4929 = fsub fast float 0x4002A9FBE0000000, %4910
  %4930 = fadd fast float %4910, 0x3FD54FDF00000000
  %4931 = bitcast float %4930 to i32
  %4932 = sub nsw i32 2129859010, %4931
  %4933 = bitcast i32 %4932 to float
  %4934 = fmul fast float %4933, %4929
  %4935 = fmul fast float %4934, %4934
  %4936 = fsub fast float 0x4002A9FBE0000000, %4919
  %4937 = fadd fast float %4919, 0x3FD54FDF00000000
  %4938 = bitcast float %4937 to i32
  %4939 = sub nsw i32 2129859010, %4938
  %4940 = bitcast i32 %4939 to float
  %4941 = fmul fast float %4940, %4936
  %4942 = fmul fast float %4941, %4941
  %4943 = fsub fast float 0x4002A9FBE0000000, %4928
  %4944 = fadd fast float %4928, 0x3FD54FDF00000000
  %4945 = bitcast float %4944 to i32
  %4946 = sub nsw i32 2129859010, %4945
  %4947 = bitcast i32 %4946 to float
  %4948 = fmul fast float %4947, %4943
  %4949 = fmul fast float %4948, %4948
  %4950 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4935)  ; FMax(a,b)
  %4951 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4942)  ; FMax(a,b)
  %4952 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4949)  ; FMax(a,b)
  %4953 = fsub fast float 1.000000e+00, %4838
  %4954 = fadd fast float %4953, %4854
  %4955 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4956 = fsub fast float 1.000000e+00, %4818
  %4957 = fmul fast float %4896, %4956
  %4958 = fmul fast float %4899, %4899
  %4959 = fmul fast float %4958, %4957
  %4960 = fmul fast float %4959, %4901
  %4961 = fmul fast float %4956, 0xBFE99999A0000000
  %4962 = fmul fast float %4961, %4847
  %4963 = fmul fast float %4962, %4858
  %4964 = fadd fast float %4963, 1.000000e+00
  %4965 = fadd fast float %4651, -1.000000e+00
  %4966 = fmul fast float %4964, %4965
  %4967 = fadd fast float %4966, 1.000000e+00
  %4968 = fsub fast float %4950, %4648
  %4969 = fsub fast float %4951, %4649
  %4970 = fsub fast float %4952, %4650
  %4971 = fmul fast float %4960, %4968
  %4972 = fmul fast float %4960, %4969
  %4973 = fmul fast float %4960, %4970
  %4974 = fadd fast float %4971, %4648
  %4975 = fadd fast float %4972, %4649
  %4976 = fadd fast float %4973, %4650
  %4977 = fsub fast float %97, %4609
  %4978 = fsub fast float %98, %4610
  %4979 = fsub fast float %99, %4611
  %4980 = fmul fast float %4960, %4977
  %4981 = fmul fast float %4960, %4978
  %4982 = fmul fast float %4960, %4979
  %4983 = fadd fast float %4980, %4609
  %4984 = fadd fast float %4981, %4610
  %4985 = fadd fast float %4982, %4611
  %4986 = fmul fast float %4960, %4955
  %4987 = call float @dx.op.unary.f32(i32 7, float %4967)  ; Saturate(value)
  %4988 = fsub fast float 1.000000e+00, %4987
  %4989 = fmul fast float %4986, %4988
  %4990 = fadd fast float %4989, %4987
  %4991 = fsub fast float 1.000000e+00, %4624
  %4992 = fmul fast float %4960, %4991
  %4993 = fadd fast float %4992, %4624
  %4994 = call float @dx.op.dot3.f32(i32 55, float %4983, float %4984, float %4985, float %4983, float %4984, float %4985)  ; Dot3(ax,ay,az,bx,by,bz)
  %4995 = call float @dx.op.unary.f32(i32 25, float %4994)  ; Rsqrt(value)
  %4996 = fmul fast float %4983, %4995
  %4997 = fmul fast float %4984, %4995
  %4998 = fmul fast float %4985, %4995
  br label %4999

; <label>:4999                                    ; preds = %4831, %4824
  %5000 = phi float [ %4830, %4824 ], [ %4837, %4831 ]
  %5001 = phi float [ %4829, %4824 ], [ %4835, %4831 ]
  %5002 = phi float [ %4828, %4824 ], [ %4833, %4831 ]
  %5003 = phi float [ %4827, %4824 ], [ %4836, %4831 ]
  %5004 = phi float [ %4826, %4824 ], [ %4834, %4831 ]
  %5005 = phi float [ %4825, %4824 ], [ %4832, %4831 ]
  %5006 = phi float [ %4729, %4824 ], [ %4883, %4831 ]
  %5007 = phi float [ %4730, %4824 ], [ %4884, %4831 ]
  %5008 = phi float [ %4731, %4824 ], [ %4885, %4831 ]
  %5009 = phi float [ %4648, %4824 ], [ %4974, %4831 ]
  %5010 = phi float [ %4649, %4824 ], [ %4975, %4831 ]
  %5011 = phi float [ %4650, %4824 ], [ %4976, %4831 ]
  %5012 = phi float [ %4609, %4824 ], [ %4996, %4831 ]
  %5013 = phi float [ %4610, %4824 ], [ %4997, %4831 ]
  %5014 = phi float [ %4611, %4824 ], [ %4998, %4831 ]
  %5015 = phi float [ %4651, %4824 ], [ %4990, %4831 ]
  %5016 = phi float [ %4624, %4824 ], [ %4993, %4831 ]
  %5017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5018 = extractvalue %dx.types.CBufRet.f32 %5017, 2
  %5019 = extractvalue %dx.types.CBufRet.f32 %5017, 3
  %5020 = fmul fast float %115, %5018
  %5021 = fmul fast float %117, %5019
  %5022 = fsub fast float 1.000000e+00, %5020
  %5023 = fsub fast float 1.000000e+00, %5021
  %5024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5025 = extractvalue %dx.types.CBufRet.f32 %5024, 0
  %5026 = extractvalue %dx.types.CBufRet.f32 %5024, 1
  %5027 = extractvalue %dx.types.CBufRet.f32 %5024, 2
  %5028 = fmul fast float %5022, %5025
  %5029 = fmul fast float %5022, %5026
  %5030 = fmul fast float %5022, %5027
  %5031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5032 = extractvalue %dx.types.CBufRet.f32 %5031, 0
  %5033 = extractvalue %dx.types.CBufRet.f32 %5031, 1
  %5034 = extractvalue %dx.types.CBufRet.f32 %5031, 2
  %5035 = fmul fast float %5023, %5032
  %5036 = fmul fast float %5023, %5033
  %5037 = fmul fast float %5023, %5034
  %5038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.f32 %5038, 0
  %5040 = extractvalue %dx.types.CBufRet.f32 %5038, 1
  %5041 = extractvalue %dx.types.CBufRet.f32 %5038, 2
  %5042 = fadd fast float %5035, %5039
  %5043 = fadd fast float %5042, %5028
  %5044 = fadd fast float %5036, %5040
  %5045 = fadd fast float %5044, %5029
  %5046 = fadd fast float %5037, %5041
  %5047 = fadd fast float %5046, %5030
  %5048 = fmul fast float %5043, %81
  %5049 = fmul fast float %5045, %81
  %5050 = fmul fast float %5047, %81
  %5051 = select i1 %206, float 0.000000e+00, float %5011
  %5052 = call float @dx.op.dot3.f32(i32 55, float %5012, float %5013, float %5014, float %5002, float %5001, float %5000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5053 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5054 = call float @dx.op.dot3.f32(i32 55, float %5005, float %5004, float %5003, float %5012, float %5013, float %5014)  ; Dot3(ax,ay,az,bx,by,bz)
  %5055 = fmul fast float %5054, 2.000000e+00
  %5056 = fmul fast float %5055, %5012
  %5057 = fmul fast float %5055, %5013
  %5058 = fmul fast float %5055, %5014
  %5059 = fsub fast float %5005, %5056
  %5060 = fsub fast float %5004, %5057
  %5061 = fsub fast float %5003, %5058
  %5062 = call float @dx.op.binary.f32(i32 36, float %5016, float 1.000000e+00)  ; FMin(a,b)
  %5063 = fsub fast float 1.000000e+00, %5016
  %5064 = bitcast float %5063 to i32
  %5065 = sub nsw i32 2129859010, %5064
  %5066 = bitcast i32 %5065 to float
  %5067 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %61)  ; FMax(a,b)
  %5068 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5069 = fcmp fast oeq float %5068, 0.000000e+00
  %5070 = fcmp fast oeq float %5067, 0.000000e+00
  %5071 = or i1 %5070, %5069
  br i1 %5071, label %5101, label %5072

; <label>:5072                                    ; preds = %4999
  %5073 = fsub fast float -0.000000e+00, %64
  %5074 = fsub fast float -0.000000e+00, %62
  %5075 = call float @dx.op.unary.f32(i32 24, float %5068)  ; Sqrt(value)
  %5076 = fdiv fast float %5075, %5067
  %5077 = fcmp fast ogt float %5076, 0x3FFB6F8900000000
  %5078 = select i1 %5077, float 0x3FFB6F8900000000, float %5076
  %5079 = fmul fast float %5078, 0x3FE8A23460000000
  %5080 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5081 = call float @dx.op.binary.f32(i32 35, float %5078, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5082 = fmul fast float %5080, %5067
  %5083 = fmul fast float %5081, 0x3FF279A740000000
  %5084 = fadd fast float %5083, -1.000000e+00
  %5085 = call float @dx.op.dot3.f32(i32 55, float %5073, float %5074, float %63, float %5073, float %5074, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5086 = call float @dx.op.unary.f32(i32 25, float %5085)  ; Rsqrt(value)
  %5087 = fmul fast float %5086, %5073
  %5088 = fmul fast float %5086, %5074
  %5089 = fmul fast float %5086, %63
  %5090 = fmul fast float %5084, %5084
  %5091 = fsub fast float 1.000000e+00, %5090
  %5092 = fmul fast float %5081, 0x40005F8BE0000000
  %5093 = fsub fast float 0x400C5BF8A0000000, %5092
  %5094 = fdiv fast float %5082, %5093
  %5095 = fmul fast float %5094, 0x3FEE31C3C0000000
  %5096 = fmul fast float %5095, %5091
  %5097 = fmul fast float %5081, 0x3FDACB7480000000
  %5098 = fadd fast float %5097, 0xBFD7347680000000
  %5099 = fmul fast float %5098, %5094
  %5100 = fmul fast float %5099, %5091
  br label %5101

; <label>:5101                                    ; preds = %5072, %4999
  %5102 = phi float [ %5087, %5072 ], [ 0.000000e+00, %4999 ]
  %5103 = phi float [ %5088, %5072 ], [ 0.000000e+00, %4999 ]
  %5104 = phi float [ %5089, %5072 ], [ 0.000000e+00, %4999 ]
  %5105 = phi float [ %5096, %5072 ], [ 0.000000e+00, %4999 ]
  %5106 = phi float [ %5100, %5072 ], [ 0.000000e+00, %4999 ]
  %5107 = call float @dx.op.dot3.f32(i32 55, float %5102, float %5103, float %5104, float %5012, float %5013, float %5014)  ; Dot3(ax,ay,az,bx,by,bz)
  %5108 = fmul fast float %5107, %5107
  %5109 = fmul fast float %5108, 0x3FEE471020000000
  %5110 = fadd fast float %5109, 0xBFD42F6020000000
  %5111 = fmul fast float %5067, 0x3FD20DD760000000
  %5112 = fmul fast float %5110, %5106
  %5113 = fmul fast float %5105, 0x3FDF454380000000
  %5114 = fmul fast float %5113, %5107
  %5115 = fadd fast float %5114, %5111
  %5116 = fadd fast float %5115, %5112
  %5117 = call float @dx.op.dot3.f32(i32 55, float %5102, float %5103, float %5104, float %5059, float %5060, float %5061)  ; Dot3(ax,ay,az,bx,by,bz)
  %5118 = fmul fast float %5117, 0x3FDF454380000000
  %5119 = fmul fast float %5117, %5117
  %5120 = fmul fast float %5119, 0x3FEE471020000000
  %5121 = fadd fast float %5120, 0xBFD42F6020000000
  %5122 = call float @dx.op.dot3.f32(i32 55, float %5067, float %5105, float %5106, float 0x3FD20DD760000000, float %5118, float %5121)  ; Dot3(ax,ay,az,bx,by,bz)
  %5123 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %57)  ; FMax(a,b)
  %5124 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5125 = fcmp fast oeq float %5124, 0.000000e+00
  %5126 = fcmp fast oeq float %5123, 0.000000e+00
  %5127 = or i1 %5126, %5125
  br i1 %5127, label %5157, label %5128

; <label>:5128                                    ; preds = %5101
  %5129 = fsub fast float -0.000000e+00, %60
  %5130 = fsub fast float -0.000000e+00, %58
  %5131 = call float @dx.op.unary.f32(i32 24, float %5124)  ; Sqrt(value)
  %5132 = fdiv fast float %5131, %5123
  %5133 = fcmp fast ogt float %5132, 0x3FFB6F8900000000
  %5134 = select i1 %5133, float 0x3FFB6F8900000000, float %5132
  %5135 = fmul fast float %5134, 0x3FE8A23460000000
  %5136 = call float @dx.op.unary.f32(i32 7, float %5135)  ; Saturate(value)
  %5137 = call float @dx.op.binary.f32(i32 35, float %5134, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5138 = fmul fast float %5136, %5123
  %5139 = fmul fast float %5137, 0x3FF279A740000000
  %5140 = fadd fast float %5139, -1.000000e+00
  %5141 = call float @dx.op.dot3.f32(i32 55, float %5129, float %5130, float %59, float %5129, float %5130, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %5142 = call float @dx.op.unary.f32(i32 25, float %5141)  ; Rsqrt(value)
  %5143 = fmul fast float %5142, %5129
  %5144 = fmul fast float %5142, %5130
  %5145 = fmul fast float %5142, %59
  %5146 = fmul fast float %5140, %5140
  %5147 = fsub fast float 1.000000e+00, %5146
  %5148 = fmul fast float %5137, 0x40005F8BE0000000
  %5149 = fsub fast float 0x400C5BF8A0000000, %5148
  %5150 = fdiv fast float %5138, %5149
  %5151 = fmul fast float %5150, 0x3FEE31C3C0000000
  %5152 = fmul fast float %5151, %5147
  %5153 = fmul fast float %5137, 0x3FDACB7480000000
  %5154 = fadd fast float %5153, 0xBFD7347680000000
  %5155 = fmul fast float %5154, %5150
  %5156 = fmul fast float %5155, %5147
  br label %5157

; <label>:5157                                    ; preds = %5128, %5101
  %5158 = phi float [ %5143, %5128 ], [ 0.000000e+00, %5101 ]
  %5159 = phi float [ %5144, %5128 ], [ 0.000000e+00, %5101 ]
  %5160 = phi float [ %5145, %5128 ], [ 0.000000e+00, %5101 ]
  %5161 = phi float [ %5152, %5128 ], [ 0.000000e+00, %5101 ]
  %5162 = phi float [ %5156, %5128 ], [ 0.000000e+00, %5101 ]
  %5163 = call float @dx.op.dot3.f32(i32 55, float %5158, float %5159, float %5160, float %5012, float %5013, float %5014)  ; Dot3(ax,ay,az,bx,by,bz)
  %5164 = fmul fast float %5163, %5163
  %5165 = fmul fast float %5164, 0x3FEE471020000000
  %5166 = fadd fast float %5165, 0xBFD42F6020000000
  %5167 = fmul fast float %5123, 0x3FD20DD760000000
  %5168 = fmul fast float %5166, %5162
  %5169 = fmul fast float %5161, 0x3FDF454380000000
  %5170 = fmul fast float %5169, %5163
  %5171 = fadd fast float %5170, %5167
  %5172 = fadd fast float %5171, %5168
  %5173 = call float @dx.op.dot3.f32(i32 55, float %5158, float %5159, float %5160, float %5059, float %5060, float %5061)  ; Dot3(ax,ay,az,bx,by,bz)
  %5174 = fmul fast float %5173, 0x3FDF454380000000
  %5175 = fmul fast float %5173, %5173
  %5176 = fmul fast float %5175, 0x3FEE471020000000
  %5177 = fadd fast float %5176, 0xBFD42F6020000000
  %5178 = call float @dx.op.dot3.f32(i32 55, float %5123, float %5161, float %5162, float 0x3FD20DD760000000, float %5174, float %5177)  ; Dot3(ax,ay,az,bx,by,bz)
  %5179 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %53)  ; FMax(a,b)
  %5180 = call float @dx.op.dot3.f32(i32 55, float %54, float %55, float %56, float %54, float %55, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %5181 = fcmp fast oeq float %5180, 0.000000e+00
  %5182 = fcmp fast oeq float %5179, 0.000000e+00
  %5183 = or i1 %5182, %5181
  br i1 %5183, label %5213, label %5184

; <label>:5184                                    ; preds = %5157
  %5185 = fsub fast float -0.000000e+00, %56
  %5186 = fsub fast float -0.000000e+00, %54
  %5187 = call float @dx.op.unary.f32(i32 24, float %5180)  ; Sqrt(value)
  %5188 = fdiv fast float %5187, %5179
  %5189 = fcmp fast ogt float %5188, 0x3FFB6F8900000000
  %5190 = select i1 %5189, float 0x3FFB6F8900000000, float %5188
  %5191 = fmul fast float %5190, 0x3FE8A23460000000
  %5192 = call float @dx.op.unary.f32(i32 7, float %5191)  ; Saturate(value)
  %5193 = call float @dx.op.binary.f32(i32 35, float %5190, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5194 = fmul fast float %5192, %5179
  %5195 = fmul fast float %5193, 0x3FF279A740000000
  %5196 = fadd fast float %5195, -1.000000e+00
  %5197 = call float @dx.op.dot3.f32(i32 55, float %5185, float %5186, float %55, float %5185, float %5186, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %5198 = call float @dx.op.unary.f32(i32 25, float %5197)  ; Rsqrt(value)
  %5199 = fmul fast float %5198, %5185
  %5200 = fmul fast float %5198, %5186
  %5201 = fmul fast float %5198, %55
  %5202 = fmul fast float %5196, %5196
  %5203 = fsub fast float 1.000000e+00, %5202
  %5204 = fmul fast float %5193, 0x40005F8BE0000000
  %5205 = fsub fast float 0x400C5BF8A0000000, %5204
  %5206 = fdiv fast float %5194, %5205
  %5207 = fmul fast float %5206, 0x3FEE31C3C0000000
  %5208 = fmul fast float %5207, %5203
  %5209 = fmul fast float %5193, 0x3FDACB7480000000
  %5210 = fadd fast float %5209, 0xBFD7347680000000
  %5211 = fmul fast float %5210, %5206
  %5212 = fmul fast float %5211, %5203
  br label %5213

; <label>:5213                                    ; preds = %5184, %5157
  %5214 = phi float [ %5199, %5184 ], [ 0.000000e+00, %5157 ]
  %5215 = phi float [ %5200, %5184 ], [ 0.000000e+00, %5157 ]
  %5216 = phi float [ %5201, %5184 ], [ 0.000000e+00, %5157 ]
  %5217 = phi float [ %5208, %5184 ], [ 0.000000e+00, %5157 ]
  %5218 = phi float [ %5212, %5184 ], [ 0.000000e+00, %5157 ]
  %5219 = call float @dx.op.dot3.f32(i32 55, float %5214, float %5215, float %5216, float %5012, float %5013, float %5014)  ; Dot3(ax,ay,az,bx,by,bz)
  %5220 = fmul fast float %5219, %5219
  %5221 = fmul fast float %5220, 0x3FEE471020000000
  %5222 = fadd fast float %5221, 0xBFD42F6020000000
  %5223 = fmul fast float %5179, 0x3FD20DD760000000
  %5224 = fmul fast float %5222, %5218
  %5225 = fmul fast float %5217, 0x3FDF454380000000
  %5226 = fmul fast float %5225, %5219
  %5227 = fadd fast float %5226, %5223
  %5228 = fadd fast float %5227, %5224
  %5229 = call float @dx.op.dot3.f32(i32 55, float %5214, float %5215, float %5216, float %5059, float %5060, float %5061)  ; Dot3(ax,ay,az,bx,by,bz)
  %5230 = fmul fast float %5229, 0x3FDF454380000000
  %5231 = fmul fast float %5229, %5229
  %5232 = fmul fast float %5231, 0x3FEE471020000000
  %5233 = fadd fast float %5232, 0xBFD42F6020000000
  %5234 = call float @dx.op.dot3.f32(i32 55, float %5179, float %5217, float %5218, float 0x3FD20DD760000000, float %5230, float %5233)  ; Dot3(ax,ay,az,bx,by,bz)
  %5235 = call float @dx.op.binary.f32(i32 35, float %5116, float 0.000000e+00)  ; FMax(a,b)
  %5236 = call float @dx.op.binary.f32(i32 35, float %5172, float 0.000000e+00)  ; FMax(a,b)
  %5237 = call float @dx.op.binary.f32(i32 35, float %5228, float 0.000000e+00)  ; FMax(a,b)
  %5238 = call float @dx.op.binary.f32(i32 35, float %5122, float 0.000000e+00)  ; FMax(a,b)
  %5239 = call float @dx.op.binary.f32(i32 35, float %5178, float 0.000000e+00)  ; FMax(a,b)
  %5240 = call float @dx.op.binary.f32(i32 35, float %5234, float 0.000000e+00)  ; FMax(a,b)
  %5241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5242 = extractvalue %dx.types.CBufRet.f32 %5241, 0
  %5243 = call float @dx.op.binary.f32(i32 36, float %5006, float %5242)  ; FMin(a,b)
  %5244 = fsub fast float 1.000000e+00, %5062
  %5245 = fmul fast float %5243, %5244
  %5246 = fsub fast float 1.000000e+00, %5245
  %5247 = bitcast float %5246 to i32
  %5248 = sub nsw i32 2129859010, %5247
  %5249 = bitcast i32 %5248 to float
  %5250 = call float @dx.op.binary.f32(i32 36, float %5007, float %5242)  ; FMin(a,b)
  %5251 = fmul fast float %5250, %5244
  %5252 = fsub fast float 1.000000e+00, %5251
  %5253 = bitcast float %5252 to i32
  %5254 = sub nsw i32 2129859010, %5253
  %5255 = bitcast i32 %5254 to float
  %5256 = call float @dx.op.binary.f32(i32 36, float %5008, float %5242)  ; FMin(a,b)
  %5257 = fmul fast float %5256, %5244
  %5258 = fsub fast float 1.000000e+00, %5257
  %5259 = bitcast float %5258 to i32
  %5260 = sub nsw i32 2129859010, %5259
  %5261 = bitcast i32 %5260 to float
  %5262 = fmul fast float %5235, %5062
  %5263 = fmul fast float %5262, %5249
  %5264 = fmul fast float %5236, %5062
  %5265 = fmul fast float %5264, %5255
  %5266 = fmul fast float %5237, %5062
  %5267 = fmul fast float %5266, %5261
  %5268 = call float @dx.op.binary.f32(i32 36, float %5009, float %5242)  ; FMin(a,b)
  %5269 = fmul fast float %5268, %5244
  %5270 = fsub fast float 1.000000e+00, %5269
  %5271 = bitcast float %5270 to i32
  %5272 = sub nsw i32 2129859010, %5271
  %5273 = bitcast i32 %5272 to float
  %5274 = call float @dx.op.binary.f32(i32 36, float %5010, float %5242)  ; FMin(a,b)
  %5275 = fmul fast float %5274, %5244
  %5276 = fsub fast float 1.000000e+00, %5275
  %5277 = bitcast float %5276 to i32
  %5278 = sub nsw i32 2129859010, %5277
  %5279 = bitcast i32 %5278 to float
  %5280 = call float @dx.op.binary.f32(i32 36, float %5051, float %5242)  ; FMin(a,b)
  %5281 = fmul fast float %5280, %5244
  %5282 = fsub fast float 1.000000e+00, %5281
  %5283 = bitcast float %5282 to i32
  %5284 = sub nsw i32 2129859010, %5283
  %5285 = bitcast i32 %5284 to float
  %5286 = fmul fast float %5238, %5062
  %5287 = fmul fast float %5286, %5273
  %5288 = fmul fast float %5239, %5062
  %5289 = fmul fast float %5288, %5279
  %5290 = fmul fast float %5240, %5062
  %5291 = fmul fast float %5290, %5285
  %5292 = call float @dx.op.dot3.f32(i32 55, float %5263, float %5265, float %5267, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5293 = select i1 %206, float 0.000000e+00, float %5263
  %5294 = select i1 %206, float %5292, float %5265
  %5295 = select i1 %206, float 0.000000e+00, float %5267
  %5296 = call float @dx.op.dot3.f32(i32 55, float %5287, float %5289, float %5291, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5297 = select i1 %206, float 0.000000e+00, float %5287
  %5298 = select i1 %206, float %5296, float %5289
  %5299 = select i1 %206, float 0.000000e+00, float %5291
  %5300 = fmul fast float %5053, 9.843750e-01
  %5301 = fmul fast float %5015, 9.843750e-01
  %5302 = fadd fast float %5300, 7.812500e-03
  %5303 = fadd fast float %5301, 7.812500e-03
  %5304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %38, float %5302, float %5303, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5305 = extractvalue %dx.types.ResRet.f32 %5304, 2
  %5306 = extractvalue %dx.types.ResRet.f32 %5304, 3
  %5307 = fmul fast float %5305, %5009
  %5308 = fmul fast float %5305, %5010
  %5309 = fmul fast float %5305, %5051
  %5310 = fadd fast float %5307, %5306
  %5311 = fadd fast float %5308, %5306
  %5312 = fadd fast float %5309, %5306
  %5313 = fcmp fast ogt float %4625, 0.000000e+00
  br i1 %5313, label %5314, label %5340

; <label>:5314                                    ; preds = %5213
  %5315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %4625, float %5053, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5316 = extractvalue %dx.types.ResRet.f32 %5315, 0
  %5317 = extractvalue %dx.types.ResRet.f32 %5315, 1
  %5318 = extractvalue %dx.types.ResRet.f32 %5315, 2
  %5319 = fadd fast float %5316, -5.000000e-01
  %5320 = fadd fast float %5317, -5.000000e-01
  %5321 = fadd fast float %5318, -5.000000e-01
  %5322 = fsub fast float 1.000000e+00, %5009
  %5323 = fsub fast float 1.000000e+00, %5010
  %5324 = fsub fast float 1.000000e+00, %5051
  %5325 = fmul fast float %5009, 4.000000e+00
  %5326 = fmul fast float %5325, %5322
  %5327 = fmul fast float %5326, %5319
  %5328 = fmul fast float %5010, 4.000000e+00
  %5329 = fmul fast float %5328, %5323
  %5330 = fmul fast float %5329, %5320
  %5331 = fmul fast float %5051, 4.000000e+00
  %5332 = fmul fast float %5331, %5324
  %5333 = fmul fast float %5332, %5321
  %5334 = fadd fast float %5327, %5310
  %5335 = fadd fast float %5330, %5311
  %5336 = fadd fast float %5333, %5312
  %5337 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5338 = call float @dx.op.unary.f32(i32 7, float %5335)  ; Saturate(value)
  %5339 = call float @dx.op.unary.f32(i32 7, float %5336)  ; Saturate(value)
  br label %5340

; <label>:5340                                    ; preds = %5314, %5213
  %5341 = phi float [ %5337, %5314 ], [ %5310, %5213 ]
  %5342 = phi float [ %5338, %5314 ], [ %5311, %5213 ]
  %5343 = phi float [ %5339, %5314 ], [ %5312, %5213 ]
  %5344 = call float @dx.op.binary.f32(i32 35, float %5342, float %5343)  ; FMax(a,b)
  %5345 = call float @dx.op.binary.f32(i32 35, float %5341, float %5344)  ; FMax(a,b)
  %5346 = fsub fast float 1.000000e+00, %5345
  %5347 = fmul fast float %5346, %5293
  %5348 = fmul fast float %5346, %5294
  %5349 = fmul fast float %5346, %5295
  %5350 = call float @dx.op.dot3.f32(i32 55, float %5006, float %5007, float %5008, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5351 = fcmp fast ogt float %5350, 0x3E7FF19E20000000
  %5352 = fdiv fast float 1.000000e+00, %5350
  %5353 = select i1 %5351, float %5352, float 0.000000e+00
  %5354 = fmul fast float %5353, %5006
  %5355 = fmul fast float %5353, %5007
  %5356 = fmul fast float %5353, %5008
  %5357 = fadd fast float %5354, -1.000000e+00
  %5358 = fadd fast float %5355, -1.000000e+00
  %5359 = fadd fast float %5356, -1.000000e+00
  %5360 = fmul fast float %5357, 5.000000e-01
  %5361 = fmul fast float %5358, 5.000000e-01
  %5362 = fmul fast float %5359, 5.000000e-01
  %5363 = fadd fast float %5360, 1.000000e+00
  %5364 = fadd fast float %5361, 1.000000e+00
  %5365 = fadd fast float %5362, 1.000000e+00
  %5366 = fmul fast float %5346, %4715
  %5367 = fmul fast float %5346, %4716
  %5368 = fmul fast float %5346, %4717
  %5369 = fadd fast float %5366, -1.000000e+00
  %5370 = fadd fast float %5367, -1.000000e+00
  %5371 = fadd fast float %5368, -1.000000e+00
  %5372 = fmul fast float %5369, %4622
  %5373 = fmul fast float %5370, %4622
  %5374 = fmul fast float %5371, %4622
  %5375 = fadd fast float %5372, 1.000000e+00
  %5376 = fadd fast float %5373, 1.000000e+00
  %5377 = fadd fast float %5374, 1.000000e+00
  %5378 = fmul fast float %5010, 0x401CF23780000000
  %5379 = fadd fast float %5378, 0x3FF32641C0000000
  %5380 = fdiv fast float 1.000000e+00, %5379
  %5381 = call float @dx.op.dot3.f32(i32 55, float %5002, float %5001, float %5000, float %5012, float %5013, float %5014)  ; Dot3(ax,ay,az,bx,by,bz)
  %5382 = fmul fast float %5380, %5380
  %5383 = fmul fast float %5381, %5381
  %5384 = fsub fast float 1.000000e+00, %5383
  %5385 = fmul fast float %5382, %5384
  %5386 = fsub fast float 1.000000e+00, %5385
  %5387 = fcmp fast oge float %5386, 0.000000e+00
  %5388 = fmul fast float %5380, %5002
  %5389 = fmul fast float %5380, %5001
  %5390 = fmul fast float %5380, %5000
  %5391 = call float @dx.op.unary.f32(i32 24, float %5386)  ; Sqrt(value)
  %5392 = fmul fast float %5381, %5380
  %5393 = fadd fast float %5392, %5391
  %5394 = fmul fast float %5393, %5012
  %5395 = fmul fast float %5393, %5013
  %5396 = fmul fast float %5393, %5014
  %5397 = fsub fast float %5388, %5394
  %5398 = fsub fast float %5389, %5395
  %5399 = fsub fast float %5390, %5396
  %5400 = select i1 %5387, float %5397, float 0.000000e+00
  %5401 = select i1 %5387, float %5398, float 0.000000e+00
  %5402 = select i1 %5387, float %5399, float 0.000000e+00
  %5403 = fmul fast float %5400, %4013
  %5404 = fmul fast float %5401, %4013
  %5405 = fmul fast float %5402, %4013
  %5406 = fadd fast float %5403, %5048
  %5407 = fadd fast float %5404, %5049
  %5408 = fadd fast float %5405, %5050
  %5409 = call float @dx.op.dot3.f32(i32 55, float %4733, float %4734, float %4735, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5410 = fsub fast float 1.000000e+00, %5015
  %5411 = fmul fast float %5410, %4622
  %5412 = fsub fast float 1.000000e+00, %5411
  %5413 = call float @dx.op.unary.f32(i32 7, float %5412)  ; Saturate(value)
  %5414 = fsub fast float 1.000000e+00, %5413
  %5415 = fmul fast float %5010, 0x4012D0A400000000
  %5416 = fadd fast float %5415, 0x3FDB6377A0000000
  %5417 = fmul fast float %5414, %5416
  %5418 = fadd fast float %5417, %5409
  %5419 = call float @dx.op.unary.f32(i32 7, float %5418)  ; Saturate(value)
  %5420 = fmul fast float %5341, %5297
  %5421 = fmul fast float %5342, %5298
  %5422 = fmul fast float %5343, %5299
  %5423 = fsub fast float 1.000000e+00, %5053
  %5424 = bitcast float %5423 to i32
  %5425 = sitofp i32 %5424 to float
  %5426 = fmul fast float %5425, 5.000000e+00
  %5427 = fadd fast float %5426, 0xC1EFBF8940000000
  %5428 = fptosi float %5427 to i32
  %5429 = bitcast i32 %5428 to float
  %5430 = fmul fast float %5429, %4626
  %5431 = fmul fast float %5293, %5430
  %5432 = fmul fast float %5431, %5346
  %5433 = fmul fast float %5432, %5363
  %5434 = fmul fast float %5294, %5430
  %5435 = fmul fast float %5434, %5346
  %5436 = fmul fast float %5435, %5364
  %5437 = fmul fast float %5295, %5430
  %5438 = fmul fast float %5437, %5346
  %5439 = fmul fast float %5438, %5365
  %5440 = fmul fast float %5347, %4622
  %5441 = fmul fast float %5348, %4622
  %5442 = fmul fast float %5349, %4622
  %5443 = fsub fast float 1.000000e+00, %5419
  %5444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5445 = extractvalue %dx.types.CBufRet.f32 %5444, 0
  %5446 = extractvalue %dx.types.CBufRet.f32 %5444, 1
  %5447 = extractvalue %dx.types.CBufRet.f32 %5444, 2
  %5448 = extractvalue %dx.types.CBufRet.f32 %5444, 3
  %5449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5450 = extractvalue %dx.types.CBufRet.f32 %5449, 0
  %5451 = extractvalue %dx.types.CBufRet.f32 %5449, 1
  %5452 = extractvalue %dx.types.CBufRet.f32 %5449, 2
  %5453 = extractvalue %dx.types.CBufRet.f32 %5449, 3
  %5454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5455 = extractvalue %dx.types.CBufRet.f32 %5454, 0
  %5456 = extractvalue %dx.types.CBufRet.f32 %5454, 1
  %5457 = extractvalue %dx.types.CBufRet.f32 %5454, 2
  %5458 = extractvalue %dx.types.CBufRet.f32 %5454, 3
  %5459 = fmul fast float %5406, %5445
  %5460 = call float @dx.op.tertiary.f32(i32 46, float %5407, float %5446, float %5459)  ; FMad(a,b,c)
  %5461 = call float @dx.op.tertiary.f32(i32 46, float %5408, float %5447, float %5460)  ; FMad(a,b,c)
  %5462 = fadd fast float %5461, %5448
  %5463 = fmul fast float %5406, %5450
  %5464 = call float @dx.op.tertiary.f32(i32 46, float %5407, float %5451, float %5463)  ; FMad(a,b,c)
  %5465 = call float @dx.op.tertiary.f32(i32 46, float %5408, float %5452, float %5464)  ; FMad(a,b,c)
  %5466 = fadd fast float %5465, %5453
  %5467 = fmul fast float %5406, %5455
  %5468 = call float @dx.op.tertiary.f32(i32 46, float %5407, float %5456, float %5467)  ; FMad(a,b,c)
  %5469 = call float @dx.op.tertiary.f32(i32 46, float %5408, float %5457, float %5468)  ; FMad(a,b,c)
  %5470 = fadd fast float %5469, %5458
  %5471 = fdiv fast float %5462, %5470
  %5472 = fdiv fast float %5466, %5470
  %5473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5474 = extractvalue %dx.types.CBufRet.f32 %5473, 0
  %5475 = extractvalue %dx.types.CBufRet.f32 %5473, 1
  %5476 = fmul fast float %5474, %5471
  %5477 = fmul fast float %5475, %5472
  %5478 = extractvalue %dx.types.CBufRet.f32 %5473, 2
  %5479 = extractvalue %dx.types.CBufRet.f32 %5473, 3
  %5480 = fadd fast float %5476, %5478
  %5481 = fadd fast float %5477, %5479
  %5482 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  %5483 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5485 = extractvalue %dx.types.CBufRet.f32 %5484, 0
  %5486 = extractvalue %dx.types.CBufRet.f32 %5484, 1
  %5487 = fmul fast float %5485, %5482
  %5488 = fmul fast float %5486, %5483
  %5489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5490 = extractvalue %dx.types.CBufRet.f32 %5489, 1
  %5491 = extractvalue %dx.types.CBufRet.f32 %5489, 2
  %5492 = fsub fast float %5490, %5491
  %5493 = fmul fast float %5492, %5443
  %5494 = fadd fast float %5493, %5491
  %5495 = fmul fast float %219, 2.000000e+00
  %5496 = fmul fast float %220, 2.000000e+00
  %5497 = fadd fast float %5495, -1.000000e+00
  %5498 = fadd fast float %5496, -1.000000e+00
  %5499 = fmul fast float %5494, %5497
  %5500 = fmul fast float %5494, %5498
  %5501 = fadd fast float %5499, %5487
  %5502 = fadd fast float %5500, %5488
  %5503 = extractvalue %dx.types.CBufRet.f32 %5484, 2
  %5504 = extractvalue %dx.types.CBufRet.f32 %5484, 3
  %5505 = fmul fast float %5501, %5503
  %5506 = fmul fast float %5502, %5504
  %5507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %39, float %5505, float %5506, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5508 = extractvalue %dx.types.ResRet.f32 %5507, 0
  %5509 = fcmp fast ogt float %5508, -1.000000e+00
  %5510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5511 = extractvalue %dx.types.CBufRet.f32 %5510, 1
  %5512 = select i1 %5509, float %5511, float 1.000000e+00
  %5513 = fadd fast float %5508, 1.000000e+00
  %5514 = fmul fast float %5512, %5513
  %5515 = call float @dx.op.unary.f32(i32 6, float %5514)  ; FAbs(value)
  %5516 = fsub fast float %5515, %5470
  %5517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5518 = extractvalue %dx.types.CBufRet.f32 %5517, 2
  %5519 = fmul fast float %5518, %5515
  %5520 = fdiv fast float 1.600000e+02, %5519
  %5521 = fmul fast float %5419, %5419
  %5522 = fmul fast float %5521, 0xBFB5B17960000000
  %5523 = fmul fast float %5522, %5516
  %5524 = fmul fast float %5523, %5520
  %5525 = call float @dx.op.unary.f32(i32 21, float %5524)  ; Exp(value)
  %5526 = fmul fast float %5525, 0x3FF04B2960000000
  %5527 = fsub fast float 0x3FF04B2960000000, %5526
  %5528 = call float @dx.op.unary.f32(i32 7, float %5527)  ; Saturate(value)
  %5529 = fmul fast float %5528, 4.000000e+00
  %5530 = fadd fast float %219, -5.000000e-01
  %5531 = fadd fast float %220, -5.000000e-01
  %5532 = fmul fast float %5528, 0x3FBEB851E0000000
  %5533 = call float @dx.op.unary.f32(i32 7, float %5532)  ; Saturate(value)
  %5534 = fmul fast float %5533, %5530
  %5535 = fmul fast float %5533, %5531
  %5536 = fadd fast float %5534, %5480
  %5537 = fadd fast float %5535, %5481
  %5538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %5539 = extractvalue %dx.types.CBufRet.i32 %5538, 0
  %5540 = icmp eq i32 %5539, 0
  br i1 %5540, label %5546, label %5541, !dx.controlflow.hints !81

; <label>:5541                                    ; preds = %5340
  %5542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %5536, float %5537, float undef, float undef, i32 0, i32 0, i32 undef, float %5529)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5543 = extractvalue %dx.types.ResRet.f32 %5542, 0
  %5544 = extractvalue %dx.types.ResRet.f32 %5542, 1
  %5545 = extractvalue %dx.types.ResRet.f32 %5542, 2
  br label %5551

; <label>:5546                                    ; preds = %5340
  %5547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %36, float %5536, float %5537, float undef, float undef, i32 0, i32 0, i32 undef, float %5529)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5548 = extractvalue %dx.types.ResRet.f32 %5547, 0
  %5549 = extractvalue %dx.types.ResRet.f32 %5547, 1
  %5550 = extractvalue %dx.types.ResRet.f32 %5547, 2
  br label %5551

; <label>:5551                                    ; preds = %5546, %5541
  %5552 = phi float [ %5543, %5541 ], [ %5548, %5546 ]
  %5553 = phi float [ %5544, %5541 ], [ %5549, %5546 ]
  %5554 = phi float [ %5545, %5541 ], [ %5550, %5546 ]
  %5555 = select i1 %206, float 0.000000e+00, float %5553
  %5556 = select i1 %206, float 0.000000e+00, float %5554
  %5557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5558 = extractvalue %dx.types.CBufRet.f32 %5557, 1
  %5559 = fmul fast float %5552, %5375
  %5560 = fmul fast float %5559, %5558
  %5561 = fmul fast float %5555, %5376
  %5562 = fmul fast float %5561, %5558
  %5563 = fmul fast float %5556, %5377
  %5564 = fmul fast float %5563, %5558
  %5565 = fadd fast float %5420, %4618
  %5566 = fadd fast float %5565, %5433
  %5567 = fadd fast float %5566, %5560
  %5568 = fmul fast float %5567, %4622
  %5569 = fadd fast float %5421, %4619
  %5570 = fadd fast float %5569, %5436
  %5571 = fadd fast float %5570, %5562
  %5572 = fmul fast float %5571, %4622
  %5573 = fadd fast float %5422, %4620
  %5574 = fadd fast float %5573, %5439
  %5575 = fadd fast float %5574, %5564
  %5576 = fmul fast float %5575, %4622
  %5577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5578 = extractvalue %dx.types.CBufRet.f32 %5577, 3
  %5579 = fcmp fast oeq float %5578, 0.000000e+00
  br i1 %5579, label %6627, label %5580

; <label>:5580                                    ; preds = %5551
  %5581 = extractvalue %dx.types.CBufRet.f32 %5577, 0
  %5582 = extractvalue %dx.types.CBufRet.f32 %5577, 1
  %5583 = extractvalue %dx.types.CBufRet.f32 %5577, 2
  %5584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5585 = extractvalue %dx.types.CBufRet.f32 %5584, 0
  %5586 = extractvalue %dx.types.CBufRet.f32 %5584, 1
  %5587 = extractvalue %dx.types.CBufRet.f32 %5584, 2
  %5588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5589 = extractvalue %dx.types.CBufRet.f32 %5588, 0
  %5590 = extractvalue %dx.types.CBufRet.f32 %5588, 1
  %5591 = call float @dx.op.dot3.f32(i32 55, float %5585, float %5586, float %5587, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5592 = select i1 %206, float %5589, float %5585
  %5593 = select i1 %206, float %5591, float %5586
  %5594 = select i1 %206, float %5590, float %5587
  %5595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5596 = extractvalue %dx.types.CBufRet.f32 %5595, 2
  %5597 = fmul fast float %5596, %97
  %5598 = fmul fast float %5596, %98
  %5599 = fmul fast float %5596, %99
  %5600 = fadd fast float %5597, %145
  %5601 = fadd fast float %5598, %146
  %5602 = fadd fast float %5599, %147
  %5603 = fcmp fast olt float %5578, 0.000000e+00
  br i1 %5603, label %6228, label %5604

; <label>:5604                                    ; preds = %5580
  %5605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5606 = extractvalue %dx.types.CBufRet.f32 %5605, 0
  %5607 = extractvalue %dx.types.CBufRet.f32 %5605, 1
  %5608 = extractvalue %dx.types.CBufRet.f32 %5605, 2
  %5609 = extractvalue %dx.types.CBufRet.f32 %5605, 3
  %5610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5611 = extractvalue %dx.types.CBufRet.f32 %5610, 0
  %5612 = extractvalue %dx.types.CBufRet.f32 %5610, 1
  %5613 = extractvalue %dx.types.CBufRet.f32 %5610, 2
  %5614 = extractvalue %dx.types.CBufRet.f32 %5610, 3
  %5615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5616 = extractvalue %dx.types.CBufRet.f32 %5615, 0
  %5617 = extractvalue %dx.types.CBufRet.f32 %5615, 1
  %5618 = extractvalue %dx.types.CBufRet.f32 %5615, 2
  %5619 = extractvalue %dx.types.CBufRet.f32 %5615, 3
  %5620 = fmul fast float %5606, %5600
  %5621 = call float @dx.op.tertiary.f32(i32 46, float %5601, float %5607, float %5620)  ; FMad(a,b,c)
  %5622 = call float @dx.op.tertiary.f32(i32 46, float %5602, float %5608, float %5621)  ; FMad(a,b,c)
  %5623 = fadd fast float %5622, %5609
  %5624 = fmul fast float %5611, %5600
  %5625 = call float @dx.op.tertiary.f32(i32 46, float %5601, float %5612, float %5624)  ; FMad(a,b,c)
  %5626 = call float @dx.op.tertiary.f32(i32 46, float %5602, float %5613, float %5625)  ; FMad(a,b,c)
  %5627 = fadd fast float %5626, %5614
  %5628 = fmul fast float %5616, %5600
  %5629 = call float @dx.op.tertiary.f32(i32 46, float %5601, float %5617, float %5628)  ; FMad(a,b,c)
  %5630 = call float @dx.op.tertiary.f32(i32 46, float %5602, float %5618, float %5629)  ; FMad(a,b,c)
  %5631 = fadd fast float %5630, %5619
  %5632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5633 = extractvalue %dx.types.CBufRet.f32 %5632, 0
  %5634 = extractvalue %dx.types.CBufRet.f32 %5632, 1
  %5635 = extractvalue %dx.types.CBufRet.f32 %5632, 3
  %5636 = fmul fast float %5635, %5623
  %5637 = fmul fast float %5635, %5627
  %5638 = fadd fast float %5636, %5633
  %5639 = fadd fast float %5637, %5634
  %5640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5641 = extractvalue %dx.types.CBufRet.f32 %5640, 0
  %5642 = extractvalue %dx.types.CBufRet.f32 %5640, 1
  %5643 = extractvalue %dx.types.CBufRet.f32 %5640, 3
  %5644 = fmul fast float %5643, %5623
  %5645 = fmul fast float %5643, %5627
  %5646 = fadd fast float %5644, %5641
  %5647 = fadd fast float %5645, %5642
  %5648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5649 = extractvalue %dx.types.CBufRet.f32 %5648, 1
  %5650 = fsub fast float %5649, %5631
  %5651 = extractvalue %dx.types.CBufRet.f32 %5648, 2
  %5652 = fmul fast float %5650, %5651
  %5653 = fsub fast float 1.000000e+00, %5652
  %5654 = call float @dx.op.unary.f32(i32 7, float %5653)  ; Saturate(value)
  %5655 = extractvalue %dx.types.CBufRet.f32 %5640, 2
  %5656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5657 = extractvalue %dx.types.CBufRet.f32 %5656, 2
  %5658 = fadd fast float %5657, %5655
  %5659 = fcmp fast ogt float %5658, 0.000000e+00
  br i1 %5659, label %5660, label %5684

; <label>:5660                                    ; preds = %5604
  %5661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5662 = extractvalue %dx.types.CBufRet.f32 %5661, 0
  %5663 = extractvalue %dx.types.CBufRet.f32 %5661, 1
  %5664 = fsub fast float %5646, %5662
  %5665 = fsub fast float %5647, %5663
  %5666 = fcmp fast olt float %5664, 0.000000e+00
  %5667 = fcmp fast olt float %5665, 0.000000e+00
  %5668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5669 = extractvalue %dx.types.CBufRet.f32 %5668, 0
  %5670 = extractvalue %dx.types.CBufRet.f32 %5668, 1
  %5671 = extractvalue %dx.types.CBufRet.f32 %5668, 2
  %5672 = extractvalue %dx.types.CBufRet.f32 %5668, 3
  %5673 = select i1 %5666, float %5669, float %5671
  %5674 = select i1 %5667, float %5670, float %5672
  %5675 = fmul fast float %5673, %5664
  %5676 = fmul fast float %5674, %5665
  %5677 = call float @dx.op.unary.f32(i32 6, float %5675)  ; FAbs(value)
  %5678 = call float @dx.op.unary.f32(i32 6, float %5676)  ; FAbs(value)
  %5679 = extractvalue %dx.types.CBufRet.f32 %5595, 0
  %5680 = call float @dx.op.binary.f32(i32 35, float %5677, float %5678)  ; FMax(a,b)
  %5681 = fsub fast float %5679, %5680
  %5682 = call float @dx.op.unary.f32(i32 7, float %5681)  ; Saturate(value)
  %5683 = fmul fast float %5682, %5654
  br label %5684

; <label>:5684                                    ; preds = %5660, %5604
  %5685 = phi float [ %5683, %5660 ], [ 0.000000e+00, %5604 ]
  %5686 = extractvalue %dx.types.CBufRet.f32 %5632, 2
  %5687 = extractvalue %dx.types.CBufRet.f32 %5656, 1
  %5688 = fadd fast float %5687, %5686
  %5689 = fcmp fast ogt float %5688, 0.000000e+00
  %5690 = extractvalue %dx.types.CBufRet.f32 %5595, 0
  br i1 %5689, label %5691, label %5714

; <label>:5691                                    ; preds = %5684
  %5692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5693 = extractvalue %dx.types.CBufRet.f32 %5692, 0
  %5694 = extractvalue %dx.types.CBufRet.f32 %5692, 1
  %5695 = fsub fast float %5638, %5693
  %5696 = fsub fast float %5639, %5694
  %5697 = fcmp fast olt float %5695, 0.000000e+00
  %5698 = fcmp fast olt float %5696, 0.000000e+00
  %5699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5700 = extractvalue %dx.types.CBufRet.f32 %5699, 0
  %5701 = extractvalue %dx.types.CBufRet.f32 %5699, 1
  %5702 = extractvalue %dx.types.CBufRet.f32 %5699, 2
  %5703 = extractvalue %dx.types.CBufRet.f32 %5699, 3
  %5704 = select i1 %5697, float %5700, float %5702
  %5705 = select i1 %5698, float %5701, float %5703
  %5706 = fmul fast float %5704, %5695
  %5707 = fmul fast float %5705, %5696
  %5708 = call float @dx.op.unary.f32(i32 6, float %5706)  ; FAbs(value)
  %5709 = call float @dx.op.unary.f32(i32 6, float %5707)  ; FAbs(value)
  %5710 = call float @dx.op.binary.f32(i32 35, float %5708, float %5709)  ; FMax(a,b)
  %5711 = fsub fast float %5690, %5710
  %5712 = call float @dx.op.unary.f32(i32 7, float %5711)  ; Saturate(value)
  %5713 = fmul fast float %5712, %5654
  br label %5714

; <label>:5714                                    ; preds = %5691, %5684
  %5715 = phi float [ %5713, %5691 ], [ 0.000000e+00, %5684 ]
  %5716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5717 = extractvalue %dx.types.CBufRet.f32 %5716, 1
  %5718 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  %5719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5720 = extractvalue %dx.types.CBufRet.f32 %5719, 0
  %5721 = extractvalue %dx.types.CBufRet.f32 %5719, 1
  %5722 = fsub fast float %5623, %5720
  %5723 = fsub fast float %5627, %5721
  %5724 = fcmp fast olt float %5722, 0.000000e+00
  %5725 = fcmp fast olt float %5723, 0.000000e+00
  %5726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5727 = extractvalue %dx.types.CBufRet.f32 %5726, 0
  %5728 = extractvalue %dx.types.CBufRet.f32 %5726, 1
  %5729 = extractvalue %dx.types.CBufRet.f32 %5726, 2
  %5730 = extractvalue %dx.types.CBufRet.f32 %5726, 3
  %5731 = select i1 %5724, float %5727, float %5729
  %5732 = select i1 %5725, float %5728, float %5730
  %5733 = fmul fast float %5731, %5722
  %5734 = fmul fast float %5732, %5723
  %5735 = call float @dx.op.unary.f32(i32 6, float %5733)  ; FAbs(value)
  %5736 = call float @dx.op.unary.f32(i32 6, float %5734)  ; FAbs(value)
  %5737 = call float @dx.op.binary.f32(i32 35, float %5735, float %5736)  ; FMax(a,b)
  %5738 = fsub fast float %5690, %5737
  %5739 = call float @dx.op.unary.f32(i32 7, float %5738)  ; Saturate(value)
  %5740 = call float @dx.op.binary.f32(i32 36, float %5739, float %5718)  ; FMin(a,b)
  %5741 = fmul fast float %5740, %5654
  %5742 = fsub fast float %5715, %5741
  %5743 = fsub fast float %5685, %5715
  %5744 = fsub fast float %5743, %5741
  %5745 = call float @dx.op.binary.f32(i32 35, float %5715, float %5685)  ; FMax(a,b)
  %5746 = call float @dx.op.binary.f32(i32 35, float %5741, float %5745)  ; FMax(a,b)
  %5747 = fcmp fast olt float %5746, 1.000000e+00
  br i1 %5747, label %5748, label %6146, !dx.controlflow.hints !82

; <label>:5748                                    ; preds = %5714
  %5749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5750 = extractvalue %dx.types.CBufRet.f32 %5749, 0
  %5751 = fcmp fast une float %5750, 0.000000e+00
  br i1 %5751, label %5752, label %6146, !dx.controlflow.hints !83

; <label>:5752                                    ; preds = %5748
  %5753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5754 = extractvalue %dx.types.CBufRet.f32 %5753, 0
  %5755 = extractvalue %dx.types.CBufRet.f32 %5753, 1
  %5756 = extractvalue %dx.types.CBufRet.f32 %5753, 2
  %5757 = extractvalue %dx.types.CBufRet.f32 %5753, 3
  %5758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5759 = extractvalue %dx.types.CBufRet.f32 %5758, 0
  %5760 = extractvalue %dx.types.CBufRet.f32 %5758, 1
  %5761 = extractvalue %dx.types.CBufRet.f32 %5758, 2
  %5762 = extractvalue %dx.types.CBufRet.f32 %5758, 3
  %5763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5764 = extractvalue %dx.types.CBufRet.f32 %5763, 0
  %5765 = extractvalue %dx.types.CBufRet.f32 %5763, 1
  %5766 = extractvalue %dx.types.CBufRet.f32 %5763, 2
  %5767 = extractvalue %dx.types.CBufRet.f32 %5763, 3
  %5768 = fmul fast float %5754, %5600
  %5769 = call float @dx.op.tertiary.f32(i32 46, float %5601, float %5755, float %5768)  ; FMad(a,b,c)
  %5770 = call float @dx.op.tertiary.f32(i32 46, float %5602, float %5756, float %5769)  ; FMad(a,b,c)
  %5771 = fadd fast float %5770, %5757
  %5772 = fmul fast float %5759, %5600
  %5773 = call float @dx.op.tertiary.f32(i32 46, float %5601, float %5760, float %5772)  ; FMad(a,b,c)
  %5774 = call float @dx.op.tertiary.f32(i32 46, float %5602, float %5761, float %5773)  ; FMad(a,b,c)
  %5775 = fadd fast float %5774, %5762
  %5776 = fmul fast float %5764, %5600
  %5777 = call float @dx.op.tertiary.f32(i32 46, float %5601, float %5765, float %5776)  ; FMad(a,b,c)
  %5778 = call float @dx.op.tertiary.f32(i32 46, float %5602, float %5766, float %5777)  ; FMad(a,b,c)
  %5779 = fadd fast float %5778, %5767
  %5780 = fcmp fast oge float %5771, 1.000000e+00
  %5781 = fcmp fast oge float %5775, 1.000000e+00
  %5782 = or i1 %5780, %5781
  %5783 = fcmp fast olt float %5771, 0.000000e+00
  %5784 = fcmp fast olt float %5775, 0.000000e+00
  %5785 = or i1 %5783, %5784
  %5786 = or i1 %5782, %5785
  br i1 %5786, label %6146, label %5787, !dx.controlflow.hints !84

; <label>:5787                                    ; preds = %5752
  %5788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5789 = extractvalue %dx.types.CBufRet.f32 %5788, 0
  %5790 = extractvalue %dx.types.CBufRet.f32 %5788, 1
  %5791 = extractvalue %dx.types.CBufRet.f32 %5788, 2
  %5792 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.i32 %5792, 2
  %5794 = uitofp i32 %5793 to float
  %5795 = extractvalue %dx.types.CBufRet.i32 %5792, 3
  %5796 = uitofp i32 %5795 to float
  %5797 = extractvalue %dx.types.CBufRet.f32 %5788, 3
  %5798 = fmul fast float %5797, 2.000000e+00
  %5799 = fsub fast float %5771, %5789
  %5800 = fsub fast float %5775, %5790
  %5801 = fmul fast float %5798, %5799
  %5802 = fmul fast float %5798, %5800
  %5803 = fdiv fast float 1.000000e+00, %5583
  %5804 = fmul fast float %5802, %5803
  %5805 = call float @dx.op.unary.f32(i32 6, float %5804)  ; FAbs(value)
  %5806 = fmul fast float %5791, %5602
  %5807 = fmul fast float %5806, %5798
  %5808 = call float @dx.op.unary.f32(i32 6, float %5807)  ; FAbs(value)
  %5809 = call float @dx.op.unary.f32(i32 6, float %5801)  ; FAbs(value)
  %5810 = call float @dx.op.binary.f32(i32 35, float %5808, float %5805)  ; FMax(a,b)
  %5811 = call float @dx.op.binary.f32(i32 35, float %5809, float %5810)  ; FMax(a,b)
  %5812 = fmul fast float %5811, 2.000000e+00
  %5813 = call float @dx.op.unary.f32(i32 23, float %5812)  ; Log(value)
  %5814 = call float @dx.op.binary.f32(i32 35, float %5813, float %5794)  ; FMax(a,b)
  %5815 = call float @dx.op.unary.f32(i32 22, float %5814)  ; Frc(value)
  %5816 = fadd fast float %5815, 0xBFEA666660000000
  %5817 = fmul fast float %5816, 8.000000e+00
  %5818 = call float @dx.op.unary.f32(i32 7, float %5817)  ; Saturate(value)
  %5819 = call float @dx.op.unary.f32(i32 27, float %5814)  ; Round_ni(value)
  %5820 = fadd fast float %5819, %5818
  %5821 = call float @dx.op.binary.f32(i32 36, float %5820, float %5796)  ; FMin(a,b)
  %5822 = call float @dx.op.unary.f32(i32 27, float %5821)  ; Round_ni(value)
  %5823 = fsub fast float -0.000000e+00, %5822
  %5824 = call float @dx.op.unary.f32(i32 21, float %5823)  ; Exp(value)
  %5825 = fmul fast float %5824, %5798
  %5826 = fmul fast float %5825, %5771
  %5827 = fmul fast float %5825, %5775
  %5828 = fmul fast float %5826, 2.500000e-01
  %5829 = fmul fast float %5827, 2.500000e-01
  %5830 = fadd fast float %5828, 5.000000e-01
  %5831 = fadd fast float %5829, 5.000000e-01
  %5832 = fsub fast float %5796, %5794
  %5833 = fptoui float %5832 to i32
  %5834 = add i32 %5833, 320
  %5835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 %5834)  ; CBufferLoadLegacy(handle,regIndex)
  %5836 = extractvalue %dx.types.CBufRet.f32 %5835, 0
  %5837 = extractvalue %dx.types.CBufRet.f32 %5835, 1
  %5838 = fcmp fast une float %5821, %5796
  %5839 = fsub fast float %5771, %5836
  %5840 = fsub fast float %5775, %5837
  %5841 = call float @dx.op.unary.f32(i32 6, float %5839)  ; FAbs(value)
  %5842 = call float @dx.op.unary.f32(i32 6, float %5840)  ; FAbs(value)
  %5843 = fmul fast float %5841, %5825
  %5844 = fmul fast float %5842, %5825
  %5845 = fcmp fast olt float %5843, 1.000000e+00
  %5846 = fcmp fast olt float %5844, 1.000000e+00
  %5847 = and i1 %5845, %5846
  %5848 = or i1 %5838, %5847
  br i1 %5848, label %5849, label %6146, !dx.controlflow.hints !85

; <label>:5849                                    ; preds = %5787
  %5850 = fmul fast float %5827, 5.000000e-01
  %5851 = fmul fast float %5826, 5.000000e-01
  %5852 = fadd fast float %5850, 5.000000e-01
  %5853 = fadd fast float %5851, 5.000000e-01
  %5854 = sitofp i32 %5793 to float
  %5855 = fsub fast float %5821, %5854
  %5856 = call float @dx.op.unary.f32(i32 27, float %5855)  ; Round_ni(value)
  %5857 = call float @dx.op.unary.f32(i32 22, float %5821)  ; Frc(value)
  %5858 = call float @dx.op.unary.f32(i32 22, float %5853)  ; Frc(value)
  %5859 = call float @dx.op.unary.f32(i32 22, float %5852)  ; Frc(value)
  %5860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %37, float %5858, float %5859, float %5856, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5861 = extractvalue %dx.types.ResRet.f32 %5860, 0
  %5862 = extractvalue %dx.types.ResRet.f32 %5860, 1
  %5863 = extractvalue %dx.types.ResRet.f32 %5860, 2
  %5864 = extractvalue %dx.types.ResRet.f32 %5860, 3
  %5865 = fcmp fast ogt float %5857, 0.000000e+00
  br i1 %5865, label %5866, label %5887, !dx.controlflow.hints !86

; <label>:5866                                    ; preds = %5849
  %5867 = fadd fast float %5856, 1.000000e+00
  %5868 = call float @dx.op.unary.f32(i32 22, float %5830)  ; Frc(value)
  %5869 = call float @dx.op.unary.f32(i32 22, float %5831)  ; Frc(value)
  %5870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %37, float %5868, float %5869, float %5867, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5871 = extractvalue %dx.types.ResRet.f32 %5870, 0
  %5872 = extractvalue %dx.types.ResRet.f32 %5870, 1
  %5873 = extractvalue %dx.types.ResRet.f32 %5870, 2
  %5874 = extractvalue %dx.types.ResRet.f32 %5870, 3
  %5875 = fsub fast float %5871, %5861
  %5876 = fsub fast float %5872, %5862
  %5877 = fsub fast float %5873, %5863
  %5878 = fsub fast float %5874, %5864
  %5879 = fmul fast float %5875, %5857
  %5880 = fmul fast float %5876, %5857
  %5881 = fmul fast float %5877, %5857
  %5882 = fmul fast float %5878, %5857
  %5883 = fadd fast float %5879, %5861
  %5884 = fadd fast float %5880, %5862
  %5885 = fadd fast float %5881, %5863
  %5886 = fadd fast float %5882, %5864
  br label %5887

; <label>:5887                                    ; preds = %5866, %5849
  %5888 = phi float [ %5883, %5866 ], [ %5861, %5849 ]
  %5889 = phi float [ %5884, %5866 ], [ %5862, %5849 ]
  %5890 = phi float [ %5885, %5866 ], [ %5863, %5849 ]
  %5891 = phi float [ %5886, %5866 ], [ %5864, %5849 ]
  %5892 = fadd fast float %5888, -5.000000e-01
  %5893 = fadd fast float %5890, -5.000000e-01
  %5894 = fmul fast float %5892, 0xBFD5555560000000
  %5895 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5893, float %5894)  ; FMad(a,b,c)
  %5896 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5889, float 0.000000e+00)  ; FMad(a,b,c)
  %5897 = fadd fast float %5896, %5891
  %5898 = fmul fast float %5892, -7.500000e-01
  %5899 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5893, float %5898)  ; FMad(a,b,c)
  %5900 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5889, float 0.000000e+00)  ; FMad(a,b,c)
  %5901 = fadd fast float %5900, %5891
  %5902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5903 = extractvalue %dx.types.CBufRet.f32 %5902, 0
  %5904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5905 = extractvalue %dx.types.CBufRet.f32 %5904, 0
  %5906 = extractvalue %dx.types.CBufRet.f32 %5904, 1
  %5907 = extractvalue %dx.types.CBufRet.f32 %5904, 2
  %5908 = extractvalue %dx.types.CBufRet.f32 %5904, 3
  %5909 = fsub fast float %5905, %5895
  %5910 = fsub fast float %5906, %5897
  %5911 = fsub fast float %5907, %5899
  %5912 = fsub fast float %5908, %5901
  %5913 = fmul fast float %5909, %5903
  %5914 = fmul fast float %5910, %5903
  %5915 = fmul fast float %5911, %5903
  %5916 = fmul fast float %5912, %5903
  %5917 = fadd fast float %5913, %5895
  %5918 = fadd fast float %5914, %5897
  %5919 = fadd fast float %5915, %5899
  %5920 = fadd fast float %5916, %5901
  %5921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5922 = extractvalue %dx.types.ResRet.i32 %5921, 0
  %5923 = and i32 %5922, 536870911
  %5924 = uitofp i32 %5923 to float
  %5925 = fmul fast float %5924, %5771
  %5926 = fmul fast float %5924, %5775
  %5927 = fptoui float %5925 to i32
  %5928 = fptoui float %5926 to i32
  %5929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5930 = extractvalue %dx.types.ResRet.i32 %5929, 0
  %5931 = and i32 %5930, 31
  %5932 = lshr i32 %5927, %5931
  %5933 = lshr i32 %5928, %5931
  %5934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5935 = extractvalue %dx.types.ResRet.i32 %5934, 0
  %5936 = and i32 %5935, 31
  %5937 = shl i32 1, %5936
  %5938 = call i32 @dx.op.binary.i32(i32 40, i32 %5937, i32 4)  ; UMin(a,b)
  %5939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5940 = extractvalue %dx.types.ResRet.i32 %5939, 0
  %5941 = extractvalue %dx.types.ResRet.i32 %5939, 1
  %5942 = icmp eq i32 %5938, 0
  br i1 %5942, label %5984, label %5943

; <label>:5943                                    ; preds = %5887
  br label %5944

; <label>:5944                                    ; preds = %5972, %5943
  %5945 = phi i32 [ %5975, %5972 ], [ 0, %5943 ]
  %5946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5947 = extractvalue %dx.types.ResRet.i32 %5946, 0
  %5948 = lshr i32 %5947, 16
  %5949 = and i32 %5948, 31
  %5950 = shl i32 %5933, %5949
  %5951 = add i32 %5950, %5932
  %5952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5953 = extractvalue %dx.types.ResRet.i32 %5952, 0
  %5954 = and i32 %5953, 31
  %5955 = shl i32 %5951, %5954
  %5956 = add i32 %5955, %5945
  %5957 = shl i32 %5956, 2
  %5958 = add i32 %5957, 32
  %5959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5958, i32 undef)  ; BufferLoad(srv,index,wot)
  %5960 = extractvalue %dx.types.ResRet.i32 %5959, 0
  %5961 = icmp slt i32 %5960, 0
  %5962 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %5945
  %5963 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %5945
  %5964 = bitcast float* %5962 to i32*
  %5965 = bitcast float* %5963 to i32*
  br i1 %5961, label %5966, label %5972

; <label>:5966                                    ; preds = %5944
  %5967 = and i32 %5960, 1073741823
  %5968 = add nuw nsw i32 %5967, 20
  %5969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5968, i32 undef)  ; BufferLoad(srv,index,wot)
  %5970 = extractvalue %dx.types.ResRet.i32 %5969, 0
  %5971 = extractvalue %dx.types.ResRet.i32 %5969, 1
  br label %5972

; <label>:5972                                    ; preds = %5966, %5944
  %5973 = phi i32 [ %5970, %5966 ], [ %5940, %5944 ]
  %5974 = phi i32 [ %5971, %5966 ], [ %5941, %5944 ]
  store i32 %5973, i32* %5964, align 4
  store i32 %5974, i32* %5965, align 4
  %5975 = add nuw i32 %5945, 1
  %5976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5977 = extractvalue %dx.types.CBufRet.i32 %5976, 2
  %5978 = icmp eq i32 %5977, 0
  %5979 = icmp ugt i32 %5960, -1073741825
  %5980 = and i1 %5979, %5978
  %5981 = icmp ult i32 %5975, %5938
  %5982 = and i1 %5980, %5981
  br i1 %5982, label %5944, label %5983

; <label>:5983                                    ; preds = %5972
  br label %5984

; <label>:5984                                    ; preds = %5983, %5887
  %5985 = phi i32 [ 0, %5887 ], [ %5975, %5983 ]
  %5986 = extractvalue %dx.types.CBufRet.f32 %5749, 2
  %5987 = fptoui float %5986 to i32
  %5988 = icmp eq i32 %5987, 0
  br i1 %5988, label %6040, label %5989

; <label>:5989                                    ; preds = %5984
  br label %5990

; <label>:5990                                    ; preds = %6035, %5989
  %5991 = phi i32 [ %6036, %6035 ], [ %5985, %5989 ]
  %5992 = phi i32 [ %6037, %6035 ], [ 0, %5989 ]
  %5993 = lshr i32 %5992, 2
  %5994 = and i32 %5992, 3
  %5995 = add nuw nsw i32 %5993, 83
  %5996 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 %5995)  ; CBufferLoadLegacy(handle,regIndex)
  %5997 = extractvalue %dx.types.CBufRet.i32 %5996, 0
  %5998 = extractvalue %dx.types.CBufRet.i32 %5996, 1
  %5999 = extractvalue %dx.types.CBufRet.i32 %5996, 2
  %6000 = extractvalue %dx.types.CBufRet.i32 %5996, 3
  %6001 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 0
  store i32 %5997, i32* %6001, align 4
  %6002 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 1
  store i32 %5998, i32* %6002, align 4
  %6003 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 2
  store i32 %5999, i32* %6003, align 4
  %6004 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 3
  store i32 %6000, i32* %6004, align 4
  %6005 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 %5994
  %6006 = load i32, i32* %6005, align 4, !tbaa !87, !noalias !91
  %6007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6008 = extractvalue %dx.types.ResRet.i32 %6007, 0
  %6009 = lshr i32 %6008, 16
  %6010 = and i32 %6009, 31
  %6011 = shl i32 %5933, %6010
  %6012 = add i32 %6011, %5932
  %6013 = shl i32 %6012, 2
  %6014 = add i32 %6013, %6006
  %6015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6014, i32 undef)  ; BufferLoad(srv,index,wot)
  %6016 = extractvalue %dx.types.ResRet.i32 %6015, 0
  %6017 = icmp eq i32 %6016, 0
  br i1 %6017, label %6035, label %6018

; <label>:6018                                    ; preds = %5990
  %6019 = icmp slt i32 %6016, 0
  %6020 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %5991
  %6021 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %5991
  %6022 = bitcast float* %6020 to i32*
  %6023 = bitcast float* %6021 to i32*
  br i1 %6019, label %6024, label %6031

; <label>:6024                                    ; preds = %6018
  %6025 = and i32 %6016, 1073741823
  %6026 = add i32 %6006, 20
  %6027 = add i32 %6026, %6025
  %6028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6027, i32 undef)  ; BufferLoad(srv,index,wot)
  %6029 = extractvalue %dx.types.ResRet.i32 %6028, 0
  %6030 = extractvalue %dx.types.ResRet.i32 %6028, 1
  br label %6031

; <label>:6031                                    ; preds = %6024, %6018
  %6032 = phi i32 [ %6029, %6024 ], [ %5940, %6018 ]
  %6033 = phi i32 [ %6030, %6024 ], [ %5941, %6018 ]
  store i32 %6032, i32* %6022, align 4
  store i32 %6033, i32* %6023, align 4
  %6034 = add i32 %5991, 1
  br label %6035

; <label>:6035                                    ; preds = %6031, %5990
  %6036 = phi i32 [ %5991, %5990 ], [ %6034, %6031 ]
  %6037 = add nuw i32 %5992, 1
  %6038 = icmp eq i32 %6037, %5987
  br i1 %6038, label %6039, label %5990

; <label>:6039                                    ; preds = %6035
  br label %6040

; <label>:6040                                    ; preds = %6039, %5984
  %6041 = phi i32 [ %5985, %5984 ], [ %6036, %6039 ]
  %6042 = icmp eq i32 %6041, 1
  %6043 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 0
  %6044 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  br i1 %6042, label %6045, label %6048

; <label>:6045                                    ; preds = %6040
  %6046 = load float, float* %6043, align 4
  %6047 = load float, float* %6044, align 4
  br label %6075

; <label>:6048                                    ; preds = %6040
  %6049 = load float, float* %6043, align 4
  %6050 = load float, float* %6044, align 4
  %6051 = fdiv fast float 1.000000e+00, %6050
  %6052 = fsub fast float %6049, %6051
  %6053 = icmp ugt i32 %6041, 1
  br i1 %6053, label %6054, label %6070

; <label>:6054                                    ; preds = %6048
  br label %6055

; <label>:6055                                    ; preds = %6055, %6054
  %6056 = phi float [ %6065, %6055 ], [ %6052, %6054 ]
  %6057 = phi float [ %6066, %6055 ], [ %6049, %6054 ]
  %6058 = phi i32 [ %6067, %6055 ], [ 1, %6054 ]
  %6059 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %6058
  %6060 = load float, float* %6059, align 4
  %6061 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %6058
  %6062 = load float, float* %6061, align 4
  %6063 = fdiv fast float 1.000000e+00, %6062
  %6064 = fsub fast float %6060, %6063
  %6065 = call float @dx.op.binary.f32(i32 36, float %6056, float %6064)  ; FMin(a,b)
  %6066 = call float @dx.op.binary.f32(i32 35, float %6057, float %6060)  ; FMax(a,b)
  %6067 = add nuw i32 %6058, 1
  %6068 = icmp eq i32 %6067, %6041
  br i1 %6068, label %6069, label %6055

; <label>:6069                                    ; preds = %6055
  br label %6070

; <label>:6070                                    ; preds = %6069, %6048
  %6071 = phi float [ %6052, %6048 ], [ %6065, %6069 ]
  %6072 = phi float [ %6049, %6048 ], [ %6066, %6069 ]
  %6073 = fsub fast float %6072, %6071
  %6074 = fdiv fast float 1.000000e+00, %6073
  br label %6075

; <label>:6075                                    ; preds = %6070, %6045
  %6076 = phi float [ %6046, %6045 ], [ %6072, %6070 ]
  %6077 = phi float [ %6047, %6045 ], [ %6074, %6070 ]
  %6078 = fadd fast float %5779, %6076
  %6079 = fmul fast float %6078, %6077
  %6080 = call float @dx.op.unary.f32(i32 7, float %6079)  ; Saturate(value)
  %6081 = fmul fast float %6080, 2.000000e+00
  %6082 = fsub fast float 1.000000e+00, %6081
  %6083 = fmul fast float %5917, %5917
  %6084 = fsub fast float %5918, %6083
  %6085 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6084)  ; FMax(a,b)
  %6086 = fdiv fast float 1.000000e+00, %6085
  %6087 = fmul fast float %5918, %5917
  %6088 = fsub fast float %5919, %6087
  %6089 = fsub fast float %6082, %5917
  %6090 = fmul fast float %6082, %6082
  %6091 = fsub fast float %6090, %5918
  %6092 = fmul fast float %6086, %6088
  %6093 = fmul fast float %6092, %6089
  %6094 = fsub fast float %6091, %6093
  %6095 = fmul fast float %5918, %5918
  %6096 = fsub fast float %5920, %6095
  %6097 = fmul fast float %6088, %6088
  %6098 = fmul fast float %6097, %6086
  %6099 = fsub fast float %6096, %6098
  %6100 = fdiv fast float %6094, %6099
  %6101 = fmul fast float %6100, %6088
  %6102 = fsub fast float %6089, %6101
  %6103 = fmul fast float %6102, %6086
  %6104 = fmul fast float %6103, %5917
  %6105 = fsub fast float 1.000000e+00, %6104
  %6106 = fmul fast float %6100, %5918
  %6107 = fsub fast float %6105, %6106
  %6108 = fmul fast float %6103, %6103
  %6109 = fmul fast float %6100, 4.000000e+00
  %6110 = fmul fast float %6109, %6107
  %6111 = fsub fast float %6108, %6110
  %6112 = call float @dx.op.unary.f32(i32 24, float %6111)  ; Sqrt(value)
  %6113 = fcmp fast oge float %6103, 0.000000e+00
  %6114 = fsub fast float -0.000000e+00, %6112
  %6115 = select i1 %6113, float %6114, float %6112
  %6116 = fsub fast float %6115, %6103
  %6117 = fdiv fast float %6116, %6100
  %6118 = fdiv fast float %6107, %6116
  %6119 = fmul fast float %6117, 5.000000e-01
  %6120 = fmul fast float %6118, 2.000000e+00
  %6121 = select i1 %6113, float %6119, float %6120
  %6122 = select i1 %6113, float %6120, float %6119
  %6123 = call float @dx.op.binary.f32(i32 35, float %6121, float %6122)  ; FMax(a,b)
  %6124 = call float @dx.op.binary.f32(i32 36, float %6121, float %6122)  ; FMin(a,b)
  %6125 = fcmp fast ogt float %6082, %6123
  %6126 = fsub fast float %6082, %6124
  %6127 = fsub fast float %6082, %6123
  %6128 = fsub fast float %6123, %6124
  %6129 = select i1 %6125, float %6127, float %6128
  %6130 = fmul float %6126, %6129
  %6131 = select i1 %6125, float %6124, float %6082
  %6132 = fcmp fast ogt float %6082, %6124
  %6133 = fmul fast float %6131, %6123
  %6134 = fadd fast float %6131, %6123
  %6135 = fmul fast float %6134, %5917
  %6136 = fadd fast float %6133, %5918
  %6137 = fsub fast float %6136, %6135
  %6138 = fdiv fast float %6137, %6130
  %6139 = select i1 %6132, float %6138, float 0.000000e+00
  %6140 = fsub fast float 1.000000e+00, %6139
  %6141 = select i1 %6125, float %6140, float %6139
  %6142 = call float @dx.op.unary.f32(i32 7, float %6141)  ; Saturate(value)
  %6143 = extractvalue %dx.types.CBufRet.f32 %5902, 3
  %6144 = fmul fast float %6143, %6142
  %6145 = fsub fast float 1.000000e+00, %6144
  br label %6146

; <label>:6146                                    ; preds = %6075, %5787, %5752, %5748, %5714
  %6147 = phi float [ 1.000000e+00, %5714 ], [ %6145, %6075 ], [ 1.000000e+00, %5752 ], [ 1.000000e+00, %5787 ], [ 1.000000e+00, %5748 ]
  %6148 = fcmp fast ogt float %5744, 0.000000e+00
  br i1 %6148, label %6149, label %6155, !dx.controlflow.hints !100

; <label>:6149                                    ; preds = %6146
  %6150 = fadd fast float %5657, %5631
  %6151 = call float @dx.op.binary.f32(i32 35, float %6150, float 0.000000e+00)  ; FMax(a,b)
  %6152 = fadd fast float %6151, 0x3F10000000000000
  %6153 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %40, float %5646, float %5647, float undef, float undef, i32 0, i32 0, i32 undef, float %6152)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6154 = extractvalue %dx.types.ResRet.f32 %6153, 0
  br label %6155

; <label>:6155                                    ; preds = %6149, %6146
  %6156 = phi float [ %6154, %6149 ], [ 1.000000e+00, %6146 ]
  %6157 = fcmp fast ogt float %5742, 0.000000e+00
  br i1 %6157, label %6158, label %6164, !dx.controlflow.hints !101

; <label>:6158                                    ; preds = %6155
  %6159 = fadd fast float %5687, %5631
  %6160 = call float @dx.op.binary.f32(i32 35, float %6159, float 0.000000e+00)  ; FMax(a,b)
  %6161 = fadd fast float %6160, 0x3F10000000000000
  %6162 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %40, float %5638, float %5639, float undef, float undef, i32 0, i32 0, i32 undef, float %6161)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6163 = extractvalue %dx.types.ResRet.f32 %6162, 0
  br label %6164

; <label>:6164                                    ; preds = %6158, %6155
  %6165 = phi float [ %6163, %6158 ], [ 1.000000e+00, %6155 ]
  %6166 = fcmp fast ogt float %5741, 0.000000e+00
  br i1 %6166, label %6167, label %6174, !dx.controlflow.hints !102

; <label>:6167                                    ; preds = %6164
  %6168 = extractvalue %dx.types.CBufRet.f32 %5656, 0
  %6169 = fadd fast float %6168, %5631
  %6170 = call float @dx.op.binary.f32(i32 35, float %6169, float 0.000000e+00)  ; FMax(a,b)
  %6171 = fadd fast float %6170, 0x3F10000000000000
  %6172 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %40, float %5623, float %5627, float undef, float undef, i32 0, i32 0, i32 undef, float %6171)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6173 = extractvalue %dx.types.ResRet.f32 %6172, 0
  br label %6174

; <label>:6174                                    ; preds = %6167, %6164
  %6175 = phi float [ %6173, %6167 ], [ 1.000000e+00, %6164 ]
  %6176 = fsub fast float %6156, %6147
  %6177 = fmul fast float %6176, %5685
  %6178 = fadd fast float %6177, %6147
  %6179 = fsub fast float %6165, %6178
  %6180 = fmul fast float %6179, %5715
  %6181 = fadd fast float %6180, %6178
  %6182 = fsub fast float %6175, %6181
  %6183 = fmul fast float %6182, %5741
  %6184 = fadd fast float %6183, %6181
  %6185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6186 = extractvalue %dx.types.CBufRet.f32 %6185, 2
  %6187 = fcmp fast ogt float %6186, 0.000000e+00
  br i1 %6187, label %6188, label %6228, !dx.controlflow.hints !103

; <label>:6188                                    ; preds = %6174
  %6189 = fcmp fast ugt float %6186, 0.000000e+00
  br i1 %6189, label %6190, label %6225

; <label>:6190                                    ; preds = %6188
  %6191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6192 = extractvalue %dx.types.CBufRet.f32 %6191, 0
  %6193 = extractvalue %dx.types.CBufRet.f32 %6191, 1
  %6194 = extractvalue %dx.types.CBufRet.f32 %6191, 2
  %6195 = extractvalue %dx.types.CBufRet.f32 %6191, 3
  %6196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6197 = extractvalue %dx.types.CBufRet.f32 %6196, 0
  %6198 = extractvalue %dx.types.CBufRet.f32 %6196, 1
  %6199 = extractvalue %dx.types.CBufRet.f32 %6196, 2
  %6200 = extractvalue %dx.types.CBufRet.f32 %6196, 3
  %6201 = extractvalue %dx.types.CBufRet.f32 %6185, 0
  %6202 = extractvalue %dx.types.CBufRet.f32 %6185, 1
  %6203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6204 = extractvalue %dx.types.CBufRet.f32 %6203, 0
  %6205 = extractvalue %dx.types.CBufRet.f32 %6203, 1
  %6206 = extractvalue %dx.types.CBufRet.f32 %6203, 2
  %6207 = fadd fast float %6204, %5600
  %6208 = fadd fast float %6205, %5601
  %6209 = fadd fast float %6206, %5602
  %6210 = fmul fast float %6207, %6192
  %6211 = call float @dx.op.tertiary.f32(i32 46, float %6193, float %6208, float %6210)  ; FMad(a,b,c)
  %6212 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6209, float %6211)  ; FMad(a,b,c)
  %6213 = fadd fast float %6212, %6195
  %6214 = fmul fast float %6207, %6197
  %6215 = call float @dx.op.tertiary.f32(i32 46, float %6198, float %6208, float %6214)  ; FMad(a,b,c)
  %6216 = call float @dx.op.tertiary.f32(i32 46, float %6199, float %6209, float %6215)  ; FMad(a,b,c)
  %6217 = fadd fast float %6216, %6200
  %6218 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %35, float %6213, float %6217, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6219 = extractvalue %dx.types.ResRet.f32 %6218, 0
  %6220 = fmul fast float %6219, %6202
  %6221 = fadd fast float %6220, %6201
  %6222 = call float @dx.op.unary.f32(i32 7, float %6221)  ; Saturate(value)
  %6223 = fmul fast float %6222, %6186
  %6224 = fsub fast float 1.000000e+00, %6223
  br label %6225

; <label>:6225                                    ; preds = %6190, %6188
  %6226 = phi float [ %6224, %6190 ], [ 1.000000e+00, %6188 ]
  %6227 = fmul fast float %6226, %6184
  br label %6228

; <label>:6228                                    ; preds = %6225, %6174, %5580
  %6229 = phi float [ 1.000000e+00, %5580 ], [ %6227, %6225 ], [ %6184, %6174 ]
  %6230 = call float @dx.op.binary.f32(i32 36, float %6229, float %6229)  ; FMin(a,b)
  %6231 = call float @dx.op.binary.f32(i32 36, float %6229, float %6230)  ; FMin(a,b)
  %6232 = fcmp fast ogt float %6231, 0.000000e+00
  br i1 %6232, label %6233, label %6394, !dx.controlflow.hints !104

; <label>:6233                                    ; preds = %6228
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 0
  %6236 = extractvalue %dx.types.CBufRet.f32 %6234, 1
  %6237 = extractvalue %dx.types.CBufRet.f32 %6234, 2
  %6238 = extractvalue %dx.types.CBufRet.f32 %6234, 3
  %6239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6240 = extractvalue %dx.types.CBufRet.f32 %6239, 0
  %6241 = extractvalue %dx.types.CBufRet.f32 %6239, 1
  %6242 = extractvalue %dx.types.CBufRet.f32 %6239, 2
  %6243 = extractvalue %dx.types.CBufRet.f32 %6239, 3
  %6244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6245 = extractvalue %dx.types.CBufRet.f32 %6244, 0
  %6246 = extractvalue %dx.types.CBufRet.f32 %6244, 1
  %6247 = extractvalue %dx.types.CBufRet.f32 %6244, 2
  %6248 = extractvalue %dx.types.CBufRet.f32 %6244, 3
  %6249 = fmul fast float %6235, %5600
  %6250 = call float @dx.op.tertiary.f32(i32 46, float %5601, float %6236, float %6249)  ; FMad(a,b,c)
  %6251 = call float @dx.op.tertiary.f32(i32 46, float %5602, float %6237, float %6250)  ; FMad(a,b,c)
  %6252 = fadd fast float %6251, %6238
  %6253 = fmul fast float %6240, %5600
  %6254 = call float @dx.op.tertiary.f32(i32 46, float %5601, float %6241, float %6253)  ; FMad(a,b,c)
  %6255 = call float @dx.op.tertiary.f32(i32 46, float %5602, float %6242, float %6254)  ; FMad(a,b,c)
  %6256 = fadd fast float %6255, %6243
  %6257 = fmul fast float %6245, %5600
  %6258 = call float @dx.op.tertiary.f32(i32 46, float %5601, float %6246, float %6257)  ; FMad(a,b,c)
  %6259 = call float @dx.op.tertiary.f32(i32 46, float %5602, float %6247, float %6258)  ; FMad(a,b,c)
  %6260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6261 = extractvalue %dx.types.CBufRet.f32 %6260, 0
  %6262 = extractvalue %dx.types.CBufRet.f32 %6260, 1
  %6263 = extractvalue %dx.types.CBufRet.f32 %6260, 3
  %6264 = fmul fast float %6263, %6252
  %6265 = fmul fast float %6263, %6256
  %6266 = fadd fast float %6264, %6261
  %6267 = fadd fast float %6265, %6262
  %6268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6269 = extractvalue %dx.types.CBufRet.f32 %6268, 0
  %6270 = extractvalue %dx.types.CBufRet.f32 %6268, 1
  %6271 = fsub fast float %6266, %6269
  %6272 = fsub fast float %6267, %6270
  %6273 = fcmp fast olt float %6271, 0.000000e+00
  %6274 = fcmp fast olt float %6272, 0.000000e+00
  %6275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6276 = extractvalue %dx.types.CBufRet.f32 %6275, 0
  %6277 = extractvalue %dx.types.CBufRet.f32 %6275, 1
  %6278 = extractvalue %dx.types.CBufRet.f32 %6275, 2
  %6279 = extractvalue %dx.types.CBufRet.f32 %6275, 3
  %6280 = select i1 %6273, float %6276, float %6278
  %6281 = select i1 %6274, float %6277, float %6279
  %6282 = fmul fast float %6280, %6271
  %6283 = fmul fast float %6281, %6272
  %6284 = call float @dx.op.unary.f32(i32 6, float %6282)  ; FAbs(value)
  %6285 = call float @dx.op.unary.f32(i32 6, float %6283)  ; FAbs(value)
  %6286 = extractvalue %dx.types.CBufRet.f32 %5595, 0
  %6287 = call float @dx.op.binary.f32(i32 35, float %6284, float %6285)  ; FMax(a,b)
  %6288 = fsub fast float %6286, %6287
  %6289 = call float @dx.op.unary.f32(i32 7, float %6288)  ; Saturate(value)
  %6290 = fcmp fast ogt float %6289, 0.000000e+00
  br i1 %6290, label %6291, label %6332, !dx.controlflow.hints !105

; <label>:6291                                    ; preds = %6233
  %6292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %38, float %6266, float %6267, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6293 = extractvalue %dx.types.ResRet.f32 %6292, 1
  %6294 = fcmp fast ogt float %6293, 0.000000e+00
  br i1 %6294, label %6295, label %6327

; <label>:6295                                    ; preds = %6291
  %6296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %38, float %6266, float %6267, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6297 = extractvalue %dx.types.ResRet.f32 %6296, 0
  %6298 = extractvalue %dx.types.ResRet.f32 %6296, 1
  %6299 = extractvalue %dx.types.ResRet.f32 %6296, 2
  %6300 = extractvalue %dx.types.ResRet.f32 %6296, 3
  %6301 = fsub fast float 1.000000e+00, %6248
  %6302 = fsub fast float %6301, %6259
  %6303 = fmul fast float %6302, 0x400921FB60000000
  %6304 = fadd fast float %6303, 0x3FF921FB60000000
  %6305 = call float @dx.op.unary.f32(i32 13, float %6304)  ; Sin(value)
  %6306 = fadd fast float %6305, -1.000000e+00
  %6307 = fmul fast float %6306, 0x3FD45F3060000000
  %6308 = fmul fast float %6302, 0x401921FB60000000
  %6309 = fadd fast float %6308, 0x400921FB60000000
  %6310 = call float @dx.op.unary.f32(i32 13, float %6309)  ; Sin(value)
  %6311 = fadd fast float %6310, 0x3E7777A5C0000000
  %6312 = fmul fast float %6311, 0x3FC45F3060000000
  %6313 = fmul fast float %6302, 0x4022D97C80000000
  %6314 = fadd fast float %6313, 0x4012D97C80000000
  %6315 = call float @dx.op.unary.f32(i32 13, float %6314)  ; Sin(value)
  %6316 = fadd fast float %6315, 1.000000e+00
  %6317 = fmul fast float %6316, 0x3FBB2995E0000000
  %6318 = fmul fast float %6302, 0x402921FB60000000
  %6319 = fadd fast float %6318, 0x401921FB60000000
  %6320 = call float @dx.op.unary.f32(i32 13, float %6319)  ; Sin(value)
  %6321 = fadd fast float %6320, 0xBE8777A5C0000000
  %6322 = fmul fast float %6321, 0x3FB45F3060000000
  %6323 = call float @dx.op.dot4.f32(i32 56, float %6297, float %6298, float %6299, float %6300, float %6307, float %6312, float %6317, float %6322)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6324 = fmul fast float %6323, 0xBFF7154760000000
  %6325 = call float @dx.op.unary.f32(i32 21, float %6324)  ; Exp(value)
  %6326 = call float @dx.op.unary.f32(i32 7, float %6325)  ; Saturate(value)
  br label %6327

; <label>:6327                                    ; preds = %6295, %6291
  %6328 = phi float [ %6326, %6295 ], [ 1.000000e+00, %6291 ]
  %6329 = fadd fast float %6328, -1.000000e+00
  %6330 = fmul fast float %6329, %6289
  %6331 = fadd fast float %6330, 1.000000e+00
  br label %6332

; <label>:6332                                    ; preds = %6327, %6233
  %6333 = phi float [ %6331, %6327 ], [ 1.000000e+00, %6233 ]
  %6334 = fmul fast float %6333, %6229
  %6335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6336 = extractvalue %dx.types.CBufRet.f32 %6335, 0
  %6337 = extractvalue %dx.types.CBufRet.f32 %6335, 1
  %6338 = extractvalue %dx.types.CBufRet.f32 %6335, 2
  %6339 = fadd fast float %6336, %145
  %6340 = fadd fast float %6337, %146
  %6341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.f32 %6341, 1
  %6343 = fsub fast float -0.000000e+00, %6339
  %6344 = fsub fast float -0.000000e+00, %6340
  %6345 = fsub fast float -0.000000e+00, %147
  %6346 = fsub fast float %6345, %6338
  %6347 = fadd fast float %6346, %6342
  %6348 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6343, float %6344, float %6347)  ; Dot3(ax,ay,az,bx,by,bz)
  %6349 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5581, float %5582, float %5583)  ; Dot3(ax,ay,az,bx,by,bz)
  %6350 = fdiv fast float 1.000000e+00, %6349
  %6351 = fmul fast float %6350, %6348
  %6352 = fmul fast float %5581, %6351
  %6353 = fmul fast float %5582, %6351
  %6354 = fadd fast float %6352, %6339
  %6355 = fadd fast float %6353, %6340
  %6356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6357 = extractvalue %dx.types.CBufRet.f32 %6356, 0
  %6358 = extractvalue %dx.types.CBufRet.f32 %6356, 1
  %6359 = fsub fast float %6354, %6357
  %6360 = fsub fast float %6355, %6358
  %6361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6362 = extractvalue %dx.types.CBufRet.f32 %6361, 2
  %6363 = extractvalue %dx.types.CBufRet.f32 %6361, 3
  %6364 = fmul fast float %6359, %6362
  %6365 = fmul fast float %6360, %6363
  %6366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6367 = extractvalue %dx.types.CBufRet.i32 %6366, 3
  %6368 = icmp eq i32 %6367, 0
  br i1 %6368, label %6374, label %6369

; <label>:6369                                    ; preds = %6332
  %6370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %37, float %6364, float %6365, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6371 = extractvalue %dx.types.ResRet.f32 %6370, 0
  %6372 = extractvalue %dx.types.ResRet.f32 %6370, 1
  %6373 = extractvalue %dx.types.ResRet.f32 %6370, 2
  br label %6379

; <label>:6374                                    ; preds = %6332
  %6375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %6364, float %6365, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6376 = extractvalue %dx.types.ResRet.f32 %6375, 0
  %6377 = extractvalue %dx.types.ResRet.f32 %6375, 1
  %6378 = extractvalue %dx.types.ResRet.f32 %6375, 2
  br label %6379

; <label>:6379                                    ; preds = %6374, %6369
  %6380 = phi float [ %6371, %6369 ], [ %6376, %6374 ]
  %6381 = phi float [ %6372, %6369 ], [ %6377, %6374 ]
  %6382 = phi float [ %6373, %6369 ], [ %6378, %6374 ]
  %6383 = extractvalue %dx.types.CBufRet.f32 %6341, 2
  %6384 = fmul fast float %6383, %6380
  %6385 = extractvalue %dx.types.CBufRet.f32 %6341, 0
  %6386 = fsub fast float %6351, %6385
  %6387 = fsub fast float %6386, %6384
  %6388 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6387)  ; FMax(a,b)
  %6389 = fmul fast float %6388, %6381
  %6390 = call float @dx.op.binary.f32(i32 36, float %6382, float %6389)  ; FMin(a,b)
  %6391 = fmul fast float %6390, 0xBFF7154760000000
  %6392 = call float @dx.op.unary.f32(i32 21, float %6391)  ; Exp(value)
  %6393 = fmul fast float %6334, %6392
  br label %6394

; <label>:6394                                    ; preds = %6379, %6228
  %6395 = phi float [ %6393, %6379 ], [ %6229, %6228 ]
  %6396 = call float @dx.op.binary.f32(i32 36, float %6395, float %6395)  ; FMin(a,b)
  %6397 = call float @dx.op.binary.f32(i32 36, float %6395, float %6396)  ; FMin(a,b)
  %6398 = fcmp fast ogt float %6397, 0.000000e+00
  br i1 %6398, label %6399, label %6627, !dx.controlflow.hints !106

; <label>:6399                                    ; preds = %6394
  %6400 = fmul fast float %6395, %5592
  %6401 = fmul fast float %6395, %5593
  %6402 = fmul fast float %6395, %5594
  %6403 = fsub fast float %5581, %5005
  %6404 = fsub fast float %5582, %5004
  %6405 = fsub fast float %5583, %5003
  %6406 = call float @dx.op.dot3.f32(i32 55, float %6403, float %6404, float %6405, float %6403, float %6404, float %6405)  ; Dot3(ax,ay,az,bx,by,bz)
  %6407 = call float @dx.op.unary.f32(i32 25, float %6406)  ; Rsqrt(value)
  %6408 = fmul fast float %6407, %6403
  %6409 = fmul fast float %6407, %6404
  %6410 = fmul fast float %6407, %6405
  %6411 = call float @dx.op.dot3.f32(i32 55, float %5581, float %5582, float %5583, float %5012, float %5013, float %5014)  ; Dot3(ax,ay,az,bx,by,bz)
  %6412 = call float @dx.op.dot3.f32(i32 55, float %5002, float %5001, float %5000, float %6408, float %6409, float %6410)  ; Dot3(ax,ay,az,bx,by,bz)
  %6413 = call float @dx.op.unary.f32(i32 7, float %6411)  ; Saturate(value)
  %6414 = fmul fast float %6413, %6413
  %6415 = fmul fast float %6414, %5066
  %6416 = call float @dx.op.unary.f32(i32 7, float %6415)  ; Saturate(value)
  %6417 = fmul fast float %6416, %6413
  %6418 = call float @dx.op.dot3.f32(i32 55, float %5012, float %5013, float %5014, float %6408, float %6409, float %6410)  ; Dot3(ax,ay,az,bx,by,bz)
  %6419 = fmul fast float %6418, %6418
  %6420 = call float @dx.op.unary.f32(i32 6, float %6411)  ; FAbs(value)
  %6421 = call float @dx.op.binary.f32(i32 35, float %5410, float 0x3F847AE140000000)  ; FMax(a,b)
  %6422 = fmul fast float %6421, %6421
  %6423 = fmul fast float %6422, %6422
  %6424 = fsub fast float 1.000000e+00, %6423
  %6425 = fmul fast float %5053, %5053
  %6426 = fmul fast float %6425, %6424
  %6427 = fadd fast float %6426, %6423
  %6428 = bitcast float %6427 to i32
  %6429 = ashr i32 %6428, 1
  %6430 = add nsw i32 %6429, 532487669
  %6431 = bitcast i32 %6430 to float
  %6432 = fadd fast float %6431, %5053
  %6433 = fmul fast float %6423, %6419
  %6434 = fsub fast float 1.000000e+00, %6419
  %6435 = fadd fast float %6434, %6433
  %6436 = fmul fast float %6420, %6420
  %6437 = fmul fast float %6436, %6424
  %6438 = fadd fast float %6437, %6423
  %6439 = bitcast float %6438 to i32
  %6440 = ashr i32 %6439, 1
  %6441 = add nsw i32 %6440, 532487669
  %6442 = bitcast i32 %6441 to float
  %6443 = fadd fast float %6442, %6420
  %6444 = fmul fast float %6435, %6435
  %6445 = fmul fast float %6444, %6432
  %6446 = fmul fast float %6445, %6443
  %6447 = fdiv fast float 0x3FF0A00000000000, %6446
  %6448 = fmul fast float %6447, %6423
  %6449 = call float @dx.op.unary.f32(i32 6, float %6412)  ; FAbs(value)
  %6450 = fsub fast float 1.000000e+00, %6449
  %6451 = bitcast float %6450 to i32
  %6452 = sitofp i32 %6451 to float
  %6453 = fmul fast float %6452, 5.000000e+00
  %6454 = fadd fast float %6453, 0xC1EFBF8940000000
  %6455 = fptosi float %6454 to i32
  %6456 = bitcast i32 %6455 to float
  %6457 = fsub fast float 1.000000e+00, %5009
  %6458 = fsub fast float 1.000000e+00, %5010
  %6459 = fsub fast float 1.000000e+00, %5051
  %6460 = fmul fast float %6456, %6457
  %6461 = fmul fast float %6456, %6458
  %6462 = fmul fast float %6456, %6459
  %6463 = fadd fast float %6460, %5009
  %6464 = fadd fast float %6461, %5010
  %6465 = fadd fast float %6462, %5051
  br i1 %5313, label %6466, label %6489

; <label>:6466                                    ; preds = %6399
  %6467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %4625, float %6449, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6468 = extractvalue %dx.types.ResRet.f32 %6467, 0
  %6469 = extractvalue %dx.types.ResRet.f32 %6467, 1
  %6470 = extractvalue %dx.types.ResRet.f32 %6467, 2
  %6471 = fadd fast float %6468, -5.000000e-01
  %6472 = fadd fast float %6469, -5.000000e-01
  %6473 = fadd fast float %6470, -5.000000e-01
  %6474 = fmul fast float %5009, 4.000000e+00
  %6475 = fmul fast float %6474, %6457
  %6476 = fmul fast float %6475, %6471
  %6477 = fmul fast float %5010, 4.000000e+00
  %6478 = fmul fast float %6477, %6458
  %6479 = fmul fast float %6478, %6472
  %6480 = fmul fast float %5051, 4.000000e+00
  %6481 = fmul fast float %6480, %6459
  %6482 = fmul fast float %6481, %6473
  %6483 = fadd fast float %6476, %6463
  %6484 = fadd fast float %6479, %6464
  %6485 = fadd fast float %6482, %6465
  %6486 = call float @dx.op.unary.f32(i32 7, float %6483)  ; Saturate(value)
  %6487 = call float @dx.op.unary.f32(i32 7, float %6484)  ; Saturate(value)
  %6488 = call float @dx.op.unary.f32(i32 7, float %6485)  ; Saturate(value)
  br label %6489

; <label>:6489                                    ; preds = %6466, %6399
  %6490 = phi float [ %6486, %6466 ], [ %6463, %6399 ]
  %6491 = phi float [ %6487, %6466 ], [ %6464, %6399 ]
  %6492 = phi float [ %6488, %6466 ], [ %6465, %6399 ]
  %6493 = fmul fast float %6411, 9.843750e-01
  %6494 = fadd fast float %6493, 7.812500e-03
  %6495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %38, float %6494, float %5303, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6496 = extractvalue %dx.types.ResRet.f32 %6495, 2
  %6497 = extractvalue %dx.types.ResRet.f32 %6495, 3
  %6498 = fmul fast float %6496, %5009
  %6499 = fmul fast float %6496, %5010
  %6500 = fmul fast float %6496, %5051
  %6501 = fadd fast float %6498, %6497
  %6502 = fadd fast float %6499, %6497
  %6503 = fadd fast float %6500, %6497
  br i1 %5313, label %6504, label %6527

; <label>:6504                                    ; preds = %6489
  %6505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %4625, float %6411, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6506 = extractvalue %dx.types.ResRet.f32 %6505, 0
  %6507 = extractvalue %dx.types.ResRet.f32 %6505, 1
  %6508 = extractvalue %dx.types.ResRet.f32 %6505, 2
  %6509 = fadd fast float %6506, -5.000000e-01
  %6510 = fadd fast float %6507, -5.000000e-01
  %6511 = fadd fast float %6508, -5.000000e-01
  %6512 = fmul fast float %5009, 4.000000e+00
  %6513 = fmul fast float %6512, %6457
  %6514 = fmul fast float %6513, %6509
  %6515 = fmul fast float %5010, 4.000000e+00
  %6516 = fmul fast float %6515, %6458
  %6517 = fmul fast float %6516, %6510
  %6518 = fmul fast float %5051, 4.000000e+00
  %6519 = fmul fast float %6518, %6459
  %6520 = fmul fast float %6519, %6511
  %6521 = fadd fast float %6514, %6501
  %6522 = fadd fast float %6517, %6502
  %6523 = fadd fast float %6520, %6503
  %6524 = call float @dx.op.unary.f32(i32 7, float %6521)  ; Saturate(value)
  %6525 = call float @dx.op.unary.f32(i32 7, float %6522)  ; Saturate(value)
  %6526 = call float @dx.op.unary.f32(i32 7, float %6523)  ; Saturate(value)
  br label %6527

; <label>:6527                                    ; preds = %6504, %6489
  %6528 = phi float [ %6524, %6504 ], [ %6501, %6489 ]
  %6529 = phi float [ %6525, %6504 ], [ %6502, %6489 ]
  %6530 = phi float [ %6526, %6504 ], [ %6503, %6489 ]
  %6531 = call float @dx.op.binary.f32(i32 35, float %6529, float %6530)  ; FMax(a,b)
  %6532 = call float @dx.op.binary.f32(i32 35, float %6528, float %6531)  ; FMax(a,b)
  %6533 = fsub fast float 1.000000e+00, %6532
  %6534 = fsub fast float -0.000000e+00, %5012
  %6535 = fsub fast float -0.000000e+00, %5013
  %6536 = fsub fast float -0.000000e+00, %5014
  %6537 = call float @dx.op.dot3.f32(i32 55, float %5581, float %5582, float %5583, float %6534, float %6535, float %6536)  ; Dot3(ax,ay,az,bx,by,bz)
  %6538 = call float @dx.op.unary.f32(i32 7, float %6537)  ; Saturate(value)
  %6539 = fmul fast float %6538, 9.843750e-01
  %6540 = fadd fast float %6539, 7.812500e-03
  %6541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %38, float %6540, float %5303, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6542 = extractvalue %dx.types.ResRet.f32 %6541, 2
  %6543 = extractvalue %dx.types.ResRet.f32 %6541, 3
  %6544 = fmul fast float %6542, %5009
  %6545 = fmul fast float %6542, %5010
  %6546 = fmul fast float %6542, %5051
  %6547 = fadd fast float %6544, %6543
  %6548 = fadd fast float %6545, %6543
  %6549 = fadd fast float %6546, %6543
  br i1 %5313, label %6550, label %6573

; <label>:6550                                    ; preds = %6527
  %6551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %4625, float %6538, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6552 = extractvalue %dx.types.ResRet.f32 %6551, 0
  %6553 = extractvalue %dx.types.ResRet.f32 %6551, 1
  %6554 = extractvalue %dx.types.ResRet.f32 %6551, 2
  %6555 = fadd fast float %6552, -5.000000e-01
  %6556 = fadd fast float %6553, -5.000000e-01
  %6557 = fadd fast float %6554, -5.000000e-01
  %6558 = fmul fast float %5009, 4.000000e+00
  %6559 = fmul fast float %6558, %6457
  %6560 = fmul fast float %6559, %6555
  %6561 = fmul fast float %5010, 4.000000e+00
  %6562 = fmul fast float %6561, %6458
  %6563 = fmul fast float %6562, %6556
  %6564 = fmul fast float %5051, 4.000000e+00
  %6565 = fmul fast float %6564, %6459
  %6566 = fmul fast float %6565, %6557
  %6567 = fadd fast float %6560, %6547
  %6568 = fadd fast float %6563, %6548
  %6569 = fadd fast float %6566, %6549
  %6570 = call float @dx.op.unary.f32(i32 7, float %6567)  ; Saturate(value)
  %6571 = call float @dx.op.unary.f32(i32 7, float %6568)  ; Saturate(value)
  %6572 = call float @dx.op.unary.f32(i32 7, float %6569)  ; Saturate(value)
  br label %6573

; <label>:6573                                    ; preds = %6550, %6527
  %6574 = phi float [ %6570, %6550 ], [ %6547, %6527 ]
  %6575 = phi float [ %6571, %6550 ], [ %6548, %6527 ]
  %6576 = phi float [ %6572, %6550 ], [ %6549, %6527 ]
  %6577 = call float @dx.op.binary.f32(i32 35, float %6575, float %6576)  ; FMax(a,b)
  %6578 = call float @dx.op.binary.f32(i32 35, float %6574, float %6577)  ; FMax(a,b)
  %6579 = fsub fast float 1.000000e+00, %6578
  %6580 = fmul fast float %6579, %6538
  %6581 = fmul fast float %6580, %4715
  %6582 = fmul fast float %6580, %4716
  %6583 = fmul fast float %6580, %4717
  %6584 = fmul fast float %6490, %6448
  %6585 = fmul fast float %6491, %6448
  %6586 = fmul fast float %6492, %6448
  %6587 = fsub fast float 1.000000e+00, %6412
  %6588 = bitcast float %6587 to i32
  %6589 = sitofp i32 %6588 to float
  %6590 = fmul fast float %6589, 5.000000e+00
  %6591 = fadd fast float %6590, 0xC1EFBF8940000000
  %6592 = fptosi float %6591 to i32
  %6593 = bitcast i32 %6592 to float
  %6594 = fmul fast float %6593, %4626
  %6595 = fmul fast float %6533, %6594
  %6596 = fmul fast float %6595, %5363
  %6597 = fmul fast float %6595, %5364
  %6598 = fmul fast float %6595, %5365
  %6599 = fmul fast float %6533, %6417
  %6600 = fadd fast float %6596, %6584
  %6601 = fadd fast float %6597, %6585
  %6602 = fadd fast float %6598, %6586
  %6603 = fadd fast float %6581, %6599
  %6604 = fadd fast float %6582, %6599
  %6605 = fadd fast float %6583, %6599
  %6606 = fmul fast float %6603, %6400
  %6607 = fmul fast float %6604, %6401
  %6608 = fmul fast float %6605, %6402
  %6609 = fmul fast float %6417, %6400
  %6610 = fmul fast float %6609, %6600
  %6611 = fmul fast float %6417, %6401
  %6612 = fmul fast float %6611, %6601
  %6613 = fmul fast float %6417, %6402
  %6614 = fmul fast float %6613, %6602
  %6615 = fadd fast float %6606, %5347
  %6616 = fmul fast float %6615, %4622
  %6617 = fadd fast float %6607, %5348
  %6618 = fmul fast float %6617, %4622
  %6619 = fadd fast float %6608, %5349
  %6620 = fmul fast float %6619, %4622
  %6621 = fadd fast float %6610, %5567
  %6622 = fmul fast float %6621, %4622
  %6623 = fadd fast float %6612, %5571
  %6624 = fmul fast float %6623, %4622
  %6625 = fadd fast float %6614, %5575
  %6626 = fmul fast float %6625, %4622
  br label %6627

; <label>:6627                                    ; preds = %6573, %6394, %5551
  %6628 = phi float [ %5568, %5551 ], [ %5568, %6394 ], [ %6622, %6573 ]
  %6629 = phi float [ %5572, %5551 ], [ %5572, %6394 ], [ %6624, %6573 ]
  %6630 = phi float [ %5576, %5551 ], [ %5576, %6394 ], [ %6626, %6573 ]
  %6631 = phi float [ %5440, %5551 ], [ %5440, %6394 ], [ %6616, %6573 ]
  %6632 = phi float [ %5441, %5551 ], [ %5441, %6394 ], [ %6618, %6573 ]
  %6633 = phi float [ %5442, %5551 ], [ %5442, %6394 ], [ %6620, %6573 ]
  %6634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6635 = extractvalue %dx.types.CBufRet.f32 %6634, 0
  %6636 = fmul fast float %6635, %5423
  %6637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6638 = extractvalue %dx.types.CBufRet.f32 %6637, 3
  %6639 = fsub fast float 1.000000e+00, %4629
  %6640 = call float @dx.op.unary.f32(i32 7, float %6639)  ; Saturate(value)
  %6641 = fadd fast float %6633, %4628
  %6642 = fmul fast float %6641, %4629
  %6643 = fmul fast float %6640, %6638
  %6644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6645 = extractvalue %dx.types.CBufRet.f32 %6644, 3
  %6646 = fmul fast float %6631, %5006
  %6647 = fmul fast float %6632, %5007
  %6648 = fmul fast float %6633, %5008
  %6649 = fcmp fast ogt float %81, %167
  %6650 = and i1 %6649, %4738
  %6651 = or i1 %4817, %6650
  %6652 = icmp eq i32 %4737, 2
  %6653 = fcmp fast ole float %81, %167
  %6654 = and i1 %6653, %6652
  %6655 = or i1 %6654, %6651
  br i1 %6650, label %6656, label %6905

; <label>:6656                                    ; preds = %6627
  %6657 = fmul fast float %5503, %90
  %6658 = fmul fast float %5504, %91
  %6659 = call float @dx.op.unary.f32(i32 7, float %6657)  ; Saturate(value)
  %6660 = call float @dx.op.unary.f32(i32 7, float %6658)  ; Saturate(value)
  %6661 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %6659, float %6660, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6662 = extractvalue %dx.types.ResRet.f32 %6661, 0
  %6663 = extractvalue %dx.types.ResRet.f32 %6661, 1
  %6664 = extractvalue %dx.types.ResRet.f32 %6661, 2
  %6665 = extractvalue %dx.types.ResRet.f32 %6661, 3
  %6666 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %6659, float %6660, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6667 = extractvalue %dx.types.ResRet.f32 %6666, 0
  %6668 = extractvalue %dx.types.ResRet.f32 %6666, 1
  %6669 = extractvalue %dx.types.ResRet.f32 %6666, 2
  %6670 = extractvalue %dx.types.ResRet.f32 %6666, 3
  %6671 = call float @dx.op.binary.f32(i32 35, float %6663, float %6664)  ; FMax(a,b)
  %6672 = call float @dx.op.binary.f32(i32 35, float %6662, float %6671)  ; FMax(a,b)
  %6673 = call float @dx.op.binary.f32(i32 35, float %6672, float %6665)  ; FMax(a,b)
  %6674 = call float @dx.op.binary.f32(i32 36, float %6668, float %6669)  ; FMin(a,b)
  %6675 = call float @dx.op.binary.f32(i32 36, float %6667, float %6674)  ; FMin(a,b)
  %6676 = call float @dx.op.binary.f32(i32 36, float %6675, float %6670)  ; FMin(a,b)
  %6677 = fmul fast float %6673, 2.550000e+02
  %6678 = fadd fast float %6677, 0x3F70101020000000
  %6679 = fptoui float %6678 to i32
  %6680 = fmul fast float %6676, 2.550000e+02
  %6681 = fadd fast float %6680, 0x3F70101020000000
  %6682 = fptoui float %6681 to i32
  %6683 = icmp ult i32 %6679, %6682
  br i1 %6683, label %6684, label %6850

; <label>:6684                                    ; preds = %6656
  %6685 = fcmp fast ogt float %80, 9.843750e-01
  %6686 = fadd fast float %81, -4.000000e+00
  %6687 = select i1 %6685, float -4.000000e+00, float %6686
  %6688 = call float @dx.op.binary.f32(i32 35, float %6687, float 0.000000e+00)  ; FMax(a,b)
  %6689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6690 = extractvalue %dx.types.CBufRet.f32 %6689, 0
  %6691 = fadd fast float %6690, %6688
  %6692 = extractvalue %dx.types.CBufRet.f32 %6689, 2
  %6693 = fmul fast float %6691, %6692
  %6694 = call float @dx.op.unary.f32(i32 23, float %6693)  ; Log(value)
  %6695 = extractvalue %dx.types.CBufRet.f32 %6689, 3
  %6696 = fmul fast float %6695, %6694
  %6697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6698 = extractvalue %dx.types.CBufRet.f32 %6697, 2
  %6699 = fmul fast float %6696, %6698
  %6700 = call float @dx.op.unary.f32(i32 7, float %6699)  ; Saturate(value)
  %6701 = uitofp i32 %6679 to float
  %6702 = uitofp i32 %6682 to float
  %6703 = fadd fast float %6701, 5.000000e-01
  %6704 = fadd fast float %6702, 5.000000e-01
  %6705 = fmul fast float %6698, %6703
  %6706 = fmul fast float %6698, %6704
  %6707 = fadd fast float %6705, 0x3F0FFB4800000000
  %6708 = fadd fast float %6706, 0xBF0FFB4800000000
  %6709 = call float @dx.op.binary.f32(i32 35, float %6700, float %6707)  ; FMax(a,b)
  %6710 = call float @dx.op.binary.f32(i32 36, float %6709, float %6708)  ; FMin(a,b)
  %6711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6712 = extractvalue %dx.types.CBufRet.f32 %6711, 1
  %6713 = extractvalue %dx.types.CBufRet.f32 %6711, 2
  %6714 = extractvalue %dx.types.CBufRet.f32 %6711, 0
  %6715 = fmul fast float %6712, %6710
  %6716 = fadd fast float %6714, %6715
  %6717 = fadd fast float %6714, %6713
  %6718 = fsub fast float %6712, %6713
  %6719 = fadd fast float %6718, %6714
  %6720 = call float @dx.op.binary.f32(i32 35, float %6716, float %6717)  ; FMax(a,b)
  %6721 = call float @dx.op.binary.f32(i32 36, float %6720, float %6719)  ; FMin(a,b)
  %6722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %36, float %6659, float %6660, float %6721, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6723 = extractvalue %dx.types.ResRet.f32 %6722, 0
  %6724 = extractvalue %dx.types.ResRet.f32 %6722, 1
  %6725 = extractvalue %dx.types.ResRet.f32 %6722, 2
  %6726 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6727 = extractvalue %dx.types.CBufRet.i32 %6726, 0
  %6728 = extractvalue %dx.types.CBufRet.i32 %6726, 1
  %6729 = uitofp i32 %6727 to float
  %6730 = uitofp i32 %6728 to float
  %6731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6732 = extractvalue %dx.types.CBufRet.f32 %6731, 0
  %6733 = extractvalue %dx.types.CBufRet.f32 %6731, 1
  %6734 = fmul fast float %6729, %6659
  %6735 = fmul fast float %6730, %6660
  %6736 = fadd fast float %6734, -5.000000e-01
  %6737 = fadd fast float %6735, -5.000000e-01
  %6738 = call float @dx.op.unary.f32(i32 22, float %6736)  ; Frc(value)
  %6739 = call float @dx.op.unary.f32(i32 22, float %6737)  ; Frc(value)
  %6740 = fmul fast float %6738, %6738
  %6741 = fmul fast float %6740, %6738
  %6742 = fsub fast float 3.000000e+00, %6738
  %6743 = fmul fast float %6740, %6742
  %6744 = fmul fast float %6738, 3.000000e+00
  %6745 = fmul fast float %6741, 3.000000e+00
  %6746 = fmul fast float %6740, 6.000000e+00
  %6747 = fsub fast float %6745, %6746
  %6748 = fadd fast float %6747, 4.000000e+00
  %6749 = fmul fast float %6748, 0x3FC5555560000000
  %6750 = fmul fast float %6741, -3.000000e+00
  %6751 = fadd fast float %6740, %6738
  %6752 = fmul fast float %6751, 3.000000e+00
  %6753 = fadd fast float %6750, 1.000000e+00
  %6754 = fadd fast float %6753, %6752
  %6755 = fmul fast float %6741, 0x3FC5555560000000
  %6756 = fmul fast float %6739, %6739
  %6757 = fmul fast float %6756, %6739
  %6758 = fsub fast float 3.000000e+00, %6739
  %6759 = fmul fast float %6756, %6758
  %6760 = fmul fast float %6739, 3.000000e+00
  %6761 = fmul fast float %6757, 3.000000e+00
  %6762 = fmul fast float %6756, 6.000000e+00
  %6763 = fsub fast float %6761, %6762
  %6764 = fadd fast float %6763, 4.000000e+00
  %6765 = fmul fast float %6764, 0x3FC5555560000000
  %6766 = fmul fast float %6757, -3.000000e+00
  %6767 = fadd fast float %6756, %6739
  %6768 = fmul fast float %6767, 3.000000e+00
  %6769 = fadd fast float %6766, 1.000000e+00
  %6770 = fadd fast float %6769, %6768
  %6771 = fmul fast float %6757, 0x3FC5555560000000
  %6772 = fadd fast float %6738, 1.000000e+00
  %6773 = fsub fast float 1.000000e+00, %6744
  %6774 = fadd fast float %6773, %6743
  %6775 = fadd fast float %6774, %6748
  %6776 = fmul fast float %6775, 0x3FC5555560000000
  %6777 = fdiv fast float %6749, %6776
  %6778 = fsub fast float %6772, %6777
  %6779 = fsub fast float 1.000000e+00, %6738
  %6780 = fadd fast float %6754, %6741
  %6781 = fmul fast float %6780, 0x3FC5555560000000
  %6782 = fdiv fast float %6755, %6781
  %6783 = fadd fast float %6779, %6782
  %6784 = fadd fast float %6739, 1.000000e+00
  %6785 = fsub fast float 1.000000e+00, %6760
  %6786 = fadd fast float %6785, %6759
  %6787 = fadd fast float %6786, %6764
  %6788 = fmul fast float %6787, 0x3FC5555560000000
  %6789 = fdiv fast float %6765, %6788
  %6790 = fsub fast float %6784, %6789
  %6791 = fsub fast float 1.000000e+00, %6739
  %6792 = fadd fast float %6770, %6757
  %6793 = fmul fast float %6792, 0x3FC5555560000000
  %6794 = fdiv fast float %6771, %6793
  %6795 = fadd fast float %6794, %6791
  %6796 = fmul fast float %6778, %6732
  %6797 = fsub fast float %6659, %6796
  %6798 = fmul fast float %6783, %6732
  %6799 = fadd fast float %6798, %6659
  %6800 = fmul fast float %6795, %6733
  %6801 = fadd fast float %6800, %6660
  %6802 = fmul fast float %6790, %6733
  %6803 = fsub fast float %6660, %6802
  %6804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %6797, float %6803, float %6721, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6805 = extractvalue %dx.types.ResRet.f32 %6804, 0
  %6806 = extractvalue %dx.types.ResRet.f32 %6804, 1
  %6807 = extractvalue %dx.types.ResRet.f32 %6804, 2
  %6808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %6799, float %6803, float %6721, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6809 = extractvalue %dx.types.ResRet.f32 %6808, 0
  %6810 = extractvalue %dx.types.ResRet.f32 %6808, 1
  %6811 = extractvalue %dx.types.ResRet.f32 %6808, 2
  %6812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %6797, float %6801, float %6721, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6813 = extractvalue %dx.types.ResRet.f32 %6812, 0
  %6814 = extractvalue %dx.types.ResRet.f32 %6812, 1
  %6815 = extractvalue %dx.types.ResRet.f32 %6812, 2
  %6816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %6799, float %6801, float %6721, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6817 = extractvalue %dx.types.ResRet.f32 %6816, 0
  %6818 = extractvalue %dx.types.ResRet.f32 %6816, 1
  %6819 = extractvalue %dx.types.ResRet.f32 %6816, 2
  %6820 = fsub fast float %6813, %6805
  %6821 = fsub fast float %6814, %6806
  %6822 = fsub fast float %6815, %6807
  %6823 = fmul fast float %6820, %6793
  %6824 = fmul fast float %6821, %6793
  %6825 = fmul fast float %6822, %6793
  %6826 = fadd fast float %6823, %6805
  %6827 = fadd fast float %6824, %6806
  %6828 = fadd fast float %6825, %6807
  %6829 = fsub fast float %6817, %6809
  %6830 = fsub fast float %6818, %6810
  %6831 = fsub fast float %6819, %6811
  %6832 = fmul fast float %6829, %6793
  %6833 = fmul fast float %6830, %6793
  %6834 = fmul fast float %6831, %6793
  %6835 = fsub fast float %6809, %6826
  %6836 = fadd fast float %6835, %6832
  %6837 = fsub fast float %6810, %6827
  %6838 = fadd fast float %6837, %6833
  %6839 = fsub fast float %6811, %6828
  %6840 = fadd fast float %6839, %6834
  %6841 = fmul fast float %6836, %6781
  %6842 = fmul fast float %6838, %6781
  %6843 = fmul fast float %6840, %6781
  %6844 = fadd fast float %6841, %6826
  %6845 = fadd fast float %6842, %6827
  %6846 = fadd fast float %6843, %6828
  %6847 = fmul fast float %6844, %5558
  %6848 = fmul fast float %6845, %5558
  %6849 = fmul fast float %6846, %5558
  br label %6850

; <label>:6850                                    ; preds = %6684, %6656
  %6851 = phi float [ %6723, %6684 ], [ 1.000000e+00, %6656 ]
  %6852 = phi float [ %6724, %6684 ], [ 1.000000e+00, %6656 ]
  %6853 = phi float [ %6725, %6684 ], [ 1.000000e+00, %6656 ]
  %6854 = phi float [ %6847, %6684 ], [ 0.000000e+00, %6656 ]
  %6855 = phi float [ %6848, %6684 ], [ 0.000000e+00, %6656 ]
  %6856 = phi float [ %6849, %6684 ], [ 0.000000e+00, %6656 ]
  %6857 = call float @dx.op.dot3.f32(i32 55, float %6851, float %6852, float %6853, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6858 = call float @dx.op.dot3.f32(i32 55, float %6854, float %6855, float %6856, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6859 = select i1 %206, float %6857, float %6851
  %6860 = select i1 %206, float %6857, float %6852
  %6861 = select i1 %206, float 1.000000e+00, float %6853
  %6862 = select i1 %206, float %6858, float %6854
  %6863 = select i1 %206, float 0.000000e+00, float %6855
  %6864 = select i1 %206, float 0.000000e+00, float %6856
  %6865 = fmul fast float %6859, %6646
  %6866 = fmul fast float %6860, %6647
  %6867 = fmul fast float %6861, %6648
  %6868 = fadd fast float %6865, %6862
  %6869 = fadd fast float %6866, %6863
  %6870 = fadd fast float %6864, %6867
  %6871 = fmul fast float %6859, %6628
  %6872 = fmul fast float %6860, %6629
  %6873 = fmul fast float %6861, %6630
  %6874 = fmul fast float %115, %5503
  %6875 = fmul fast float %117, %5504
  %6876 = fsub fast float 1.000000e+00, %6874
  %6877 = fsub fast float 1.000000e+00, %6875
  %6878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6879 = extractvalue %dx.types.CBufRet.f32 %6878, 0
  %6880 = extractvalue %dx.types.CBufRet.f32 %6878, 1
  %6881 = extractvalue %dx.types.CBufRet.f32 %6878, 2
  %6882 = fmul fast float %6876, %6879
  %6883 = fmul fast float %6876, %6880
  %6884 = fmul fast float %6876, %6881
  %6885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6886 = extractvalue %dx.types.CBufRet.f32 %6885, 0
  %6887 = extractvalue %dx.types.CBufRet.f32 %6885, 1
  %6888 = extractvalue %dx.types.CBufRet.f32 %6885, 2
  %6889 = fmul fast float %6877, %6886
  %6890 = fmul fast float %6877, %6887
  %6891 = fmul fast float %6877, %6888
  %6892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6893 = extractvalue %dx.types.CBufRet.f32 %6892, 0
  %6894 = extractvalue %dx.types.CBufRet.f32 %6892, 1
  %6895 = extractvalue %dx.types.CBufRet.f32 %6892, 2
  %6896 = fadd fast float %6889, %6893
  %6897 = fadd fast float %6896, %6882
  %6898 = fadd fast float %6890, %6894
  %6899 = fadd fast float %6898, %6883
  %6900 = fadd fast float %6891, %6895
  %6901 = fadd fast float %6900, %6884
  %6902 = fmul fast float %6897, %167
  %6903 = fmul fast float %6899, %167
  %6904 = fmul fast float %6901, %167
  br label %6905

; <label>:6905                                    ; preds = %6850, %6627
  %6906 = phi float [ %6902, %6850 ], [ %145, %6627 ]
  %6907 = phi float [ %6903, %6850 ], [ %146, %6627 ]
  %6908 = phi float [ %6904, %6850 ], [ %147, %6627 ]
  %6909 = phi float [ %167, %6850 ], [ %81, %6627 ]
  %6910 = phi float [ %6868, %6850 ], [ %6646, %6627 ]
  %6911 = phi float [ %6869, %6850 ], [ %6647, %6627 ]
  %6912 = phi float [ %6870, %6850 ], [ %6648, %6627 ]
  %6913 = phi float [ %6871, %6850 ], [ %6628, %6627 ]
  %6914 = phi float [ %6872, %6850 ], [ %6629, %6627 ]
  %6915 = phi float [ %6873, %6850 ], [ %6630, %6627 ]
  %6916 = phi float [ %6851, %6850 ], [ 1.000000e+00, %6627 ]
  br i1 %6655, label %8058, label %6917

; <label>:6917                                    ; preds = %6905
  %6918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6919 = extractvalue %dx.types.CBufRet.f32 %6918, 0
  %6920 = extractvalue %dx.types.CBufRet.f32 %6918, 1
  %6921 = extractvalue %dx.types.CBufRet.f32 %6918, 2
  %6922 = extractvalue %dx.types.CBufRet.f32 %6918, 3
  %6923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6924 = extractvalue %dx.types.CBufRet.f32 %6923, 0
  %6925 = extractvalue %dx.types.CBufRet.f32 %6923, 1
  %6926 = extractvalue %dx.types.CBufRet.f32 %6923, 2
  %6927 = extractvalue %dx.types.CBufRet.f32 %6923, 3
  %6928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6929 = extractvalue %dx.types.CBufRet.f32 %6928, 0
  %6930 = extractvalue %dx.types.CBufRet.f32 %6928, 1
  %6931 = extractvalue %dx.types.CBufRet.f32 %6928, 2
  %6932 = extractvalue %dx.types.CBufRet.f32 %6928, 3
  %6933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6934 = extractvalue %dx.types.CBufRet.f32 %6933, 0
  %6935 = extractvalue %dx.types.CBufRet.f32 %6933, 1
  %6936 = extractvalue %dx.types.CBufRet.f32 %6933, 2
  %6937 = extractvalue %dx.types.CBufRet.f32 %6933, 3
  %6938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6939 = extractvalue %dx.types.CBufRet.f32 %6938, 3
  %6940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6941 = extractvalue %dx.types.CBufRet.f32 %6940, 3
  %6942 = extractvalue %dx.types.CBufRet.f32 %6940, 0
  %6943 = extractvalue %dx.types.CBufRet.f32 %6940, 1
  %6944 = extractvalue %dx.types.CBufRet.f32 %6940, 2
  %6945 = fcmp fast olt float %6944, -5.000000e-01
  %6946 = call float @dx.op.dot3.f32(i32 55, float %6906, float %6907, float %6908, float %6906, float %6907, float %6908)  ; Dot3(ax,ay,az,bx,by,bz)
  %6947 = call float @dx.op.unary.f32(i32 25, float %6946)  ; Rsqrt(value)
  %6948 = fmul fast float %6947, %6946
  %6949 = fmul fast float %6947, %6906
  %6950 = fmul fast float %6947, %6907
  %6951 = fmul fast float %6947, %6908
  %6952 = fadd fast float %6948, %6922
  %6953 = call float @dx.op.dot3.f32(i32 55, float %6949, float %6950, float %6951, float %6919, float %6920, float %6921)  ; Dot3(ax,ay,az,bx,by,bz)
  %6954 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6955 = extractvalue %dx.types.CBufRet.i32 %6954, 1
  %6956 = and i32 %6955, 1
  %6957 = icmp ne i32 %6956, 0
  %6958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6959 = extractvalue %dx.types.CBufRet.f32 %6958, 2
  %6960 = fcmp fast ogt float %6959, 0.000000e+00
  %6961 = and i1 %6957, %6960
  br i1 %6961, label %6962, label %7368, !dx.controlflow.hints !107

; <label>:6962                                    ; preds = %6917
  %6963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6964 = extractvalue %dx.types.CBufRet.f32 %6963, 3
  %6965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6966 = extractvalue %dx.types.CBufRet.f32 %6965, 2
  %6967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6968 = extractvalue %dx.types.CBufRet.f32 %6967, 2
  %6969 = fsub fast float %6966, %6968
  %6970 = and i32 %6955, 2
  %6971 = extractvalue %dx.types.CBufRet.i32 %6954, 0
  %6972 = call i32 @dx.op.binary.i32(i32 40, i32 %6971, i32 3)  ; UMin(a,b)
  %6973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6974 = extractvalue %dx.types.CBufRet.f32 %6973, 0
  %6975 = extractvalue %dx.types.CBufRet.f32 %6973, 1
  %6976 = extractvalue %dx.types.CBufRet.f32 %6967, 0
  %6977 = extractvalue %dx.types.CBufRet.f32 %6967, 1
  %6978 = fsub fast float %6974, %6976
  %6979 = fsub fast float %6975, %6977
  %6980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6981 = extractvalue %dx.types.CBufRet.f32 %6980, 0
  %6982 = fcmp fast ogt float %6981, 0.000000e+00
  %6983 = fsub fast float -0.000000e+00, %6978
  %6984 = fsub fast float -0.000000e+00, %6979
  %6985 = call float @dx.op.dot2.f32(i32 54, float %6949, float %6950, float %6949, float %6950)  ; Dot2(ax,ay,bx,by)
  %6986 = call float @dx.op.dot2.f32(i32 54, float %6949, float %6950, float %6983, float %6984)  ; Dot2(ax,ay,bx,by)
  %6987 = fmul fast float %6986, 2.000000e+00
  %6988 = call float @dx.op.dot2.f32(i32 54, float %6983, float %6984, float %6983, float %6984)  ; Dot2(ax,ay,bx,by)
  %6989 = fmul fast float %6981, %6981
  %6990 = fsub fast float %6988, %6989
  %6991 = fmul fast float %6987, %6987
  %6992 = fmul fast float %6985, 4.000000e+00
  %6993 = fmul fast float %6992, %6990
  %6994 = fsub fast float %6991, %6993
  %6995 = fcmp fast ogt float %6994, 0.000000e+00
  br i1 %6995, label %6996, label %7011

; <label>:6996                                    ; preds = %6962
  %6997 = fcmp fast ogt float %6987, 0.000000e+00
  %6998 = call float @dx.op.unary.f32(i32 24, float %6994)  ; Sqrt(value)
  %6999 = fsub fast float -0.000000e+00, %6998
  %7000 = select i1 %6997, float %6998, float %6999
  %7001 = fadd fast float %7000, %6987
  %7002 = fmul float %7001, -5.000000e-01
  %7003 = fdiv fast float %7002, %6985
  %7004 = call float @dx.op.binary.f32(i32 35, float %7003, float 0.000000e+00)  ; FMax(a,b)
  %7005 = call float @dx.op.binary.f32(i32 36, float %6948, float %7004)  ; FMin(a,b)
  %7006 = fdiv fast float %6990, %7002
  %7007 = call float @dx.op.binary.f32(i32 35, float %7006, float 0.000000e+00)  ; FMax(a,b)
  %7008 = call float @dx.op.binary.f32(i32 36, float %6948, float %7007)  ; FMin(a,b)
  %7009 = call float @dx.op.binary.f32(i32 36, float %7005, float %7008)  ; FMin(a,b)
  %7010 = call float @dx.op.binary.f32(i32 35, float %7005, float %7008)  ; FMax(a,b)
  br label %7011

; <label>:7011                                    ; preds = %6996, %6962
  %7012 = phi float [ %7010, %6996 ], [ -1.000000e+00, %6962 ]
  %7013 = phi float [ %7009, %6996 ], [ -1.000000e+00, %6962 ]
  %7014 = phi i1 [ true, %6996 ], [ false, %6962 ]
  %7015 = and i1 %6982, %7014
  br i1 %7015, label %7016, label %7018

; <label>:7016                                    ; preds = %7011
  %7017 = fcmp fast oeq float %7013, %7012
  br i1 %7017, label %7321, label %7019

; <label>:7018                                    ; preds = %7011
  br i1 %6982, label %7321, label %7019

; <label>:7019                                    ; preds = %7018, %7016
  %7020 = phi float [ %6948, %7018 ], [ %7012, %7016 ]
  %7021 = phi float [ 0.000000e+00, %7018 ], [ %7013, %7016 ]
  %7022 = icmp ne i32 %6970, 0
  %7023 = fmul fast float %7020, %6951
  %7024 = fadd fast float %7023, %6964
  %7025 = fmul fast float %7024, %7020
  %7026 = select i1 %7022, float 0.000000e+00, float %7025
  %7027 = fcmp fast oeq float %6951, 0.000000e+00
  %7028 = fdiv fast float %6969, %6951
  %7029 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7028)  ; FMax(a,b)
  %7030 = select i1 %7027, float %7020, float %7029
  %7031 = call float @dx.op.binary.f32(i32 36, float %7020, float %7030)  ; FMin(a,b)
  %7032 = fcmp fast ogt float %6951, 0.000000e+00
  %7033 = fcmp fast olt float %6969, 0.000000e+00
  br i1 %7032, label %7034, label %7091

; <label>:7034                                    ; preds = %7019
  %7035 = icmp eq i32 %6970, 0
  br i1 %7033, label %7036, label %7080

; <label>:7036                                    ; preds = %7034
  %7037 = select i1 %7035, float %7020, float 0.000000e+00
  %7038 = fsub fast float -0.000000e+00, %7037
  %7039 = call float @dx.op.unary.f32(i32 6, float %7038)  ; FAbs(value)
  %7040 = fmul fast float %7037, %6951
  %7041 = fadd fast float %7040, %6964
  %7042 = fmul fast float %7039, %7041
  %7043 = fsub fast float %7026, %7042
  %7044 = fsub fast float %7020, %7039
  %7045 = select i1 %7035, float %7044, float 0.000000e+00
  %7046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7047 = extractvalue %dx.types.CBufRet.f32 %7046, 0
  %7048 = extractvalue %dx.types.CBufRet.f32 %7046, 1
  %7049 = extractvalue %dx.types.CBufRet.f32 %7046, 2
  %7050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7051 = extractvalue %dx.types.CBufRet.f32 %7050, 0
  %7052 = extractvalue %dx.types.CBufRet.f32 %7050, 1
  %7053 = extractvalue %dx.types.CBufRet.f32 %7050, 2
  %7054 = extractvalue %dx.types.CBufRet.f32 %7050, 3
  %7055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7056 = extractvalue %dx.types.CBufRet.f32 %7055, 3
  %7057 = call float @dx.op.binary.f32(i32 36, float %7043, float %7056)  ; FMin(a,b)
  %7058 = fmul fast float %7054, %7045
  %7059 = call float @dx.op.unary.f32(i32 7, float %7058)  ; Saturate(value)
  %7060 = fsub fast float %7051, %7047
  %7061 = fsub fast float %7052, %7048
  %7062 = fsub fast float %7053, %7049
  %7063 = fmul fast float %7059, %7060
  %7064 = fmul fast float %7059, %7061
  %7065 = fmul fast float %7059, %7062
  %7066 = fadd fast float %7063, %7047
  %7067 = fadd fast float %7064, %7048
  %7068 = fadd fast float %7065, %7049
  %7069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7070 = extractvalue %dx.types.CBufRet.f32 %7069, 0
  %7071 = extractvalue %dx.types.CBufRet.f32 %7069, 1
  %7072 = fadd fast float %7071, %7070
  %7073 = call float @dx.op.unary.f32(i32 7, float %7072)  ; Saturate(value)
  %7074 = extractvalue %dx.types.CBufRet.f32 %7069, 2
  %7075 = extractvalue %dx.types.CBufRet.f32 %7069, 3
  %7076 = fadd fast float %7075, %7074
  %7077 = call float @dx.op.unary.f32(i32 7, float %7076)  ; Saturate(value)
  %7078 = fmul fast float %7073, %7057
  %7079 = fmul fast float %7078, %7077
  br label %7321

; <label>:7080                                    ; preds = %7034
  br i1 %7035, label %7081, label %7102

; <label>:7081                                    ; preds = %7080
  %7082 = call float @dx.op.binary.f32(i32 36, float %7031, float %7021)  ; FMin(a,b)
  %7083 = fsub fast float %7031, %7082
  %7084 = fsub fast float %7083, %7020
  %7085 = call float @dx.op.unary.f32(i32 6, float %7084)  ; FAbs(value)
  %7086 = fadd fast float %7083, %7020
  %7087 = fmul fast float %7086, %6951
  %7088 = fadd fast float %7087, %6964
  %7089 = fmul fast float %7088, %7085
  %7090 = fsub fast float %7026, %7089
  br label %7102

; <label>:7091                                    ; preds = %7019
  br i1 %7033, label %7092, label %7102

; <label>:7092                                    ; preds = %7091
  %7093 = call float @dx.op.binary.f32(i32 35, float %7021, float %7031)  ; FMax(a,b)
  %7094 = icmp eq i32 %6970, 0
  %7095 = select i1 %7094, float %7031, float 0.000000e+00
  %7096 = fsub fast float -0.000000e+00, %7095
  %7097 = call float @dx.op.unary.f32(i32 6, float %7096)  ; FAbs(value)
  %7098 = fmul fast float %7095, %6951
  %7099 = fadd fast float %7098, %6964
  %7100 = fmul fast float %7097, %7099
  %7101 = fsub fast float %7026, %7100
  br label %7102

; <label>:7102                                    ; preds = %7092, %7091, %7081, %7080
  %7103 = phi float [ %7021, %7080 ], [ %7021, %7081 ], [ %7093, %7092 ], [ %7021, %7091 ]
  %7104 = phi float [ 0.000000e+00, %7080 ], [ %7085, %7081 ], [ %7097, %7092 ], [ 0.000000e+00, %7091 ]
  %7105 = phi float [ %7026, %7080 ], [ %7090, %7081 ], [ %7101, %7092 ], [ %7026, %7091 ]
  %7106 = phi float [ %7031, %7080 ], [ %7031, %7081 ], [ %7020, %7092 ], [ %7020, %7091 ]
  %7107 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 0
  store float -1.000000e+00, float* %7107, align 4, !tbaa !108, !noalias !110
  %7108 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 1
  store float -1.000000e+00, float* %7108, align 4, !tbaa !108, !noalias !110
  %7109 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 2
  store float -1.000000e+00, float* %7109, align 4, !tbaa !108, !noalias !110
  %7110 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 0
  store float -1.000000e+00, float* %7110, align 4, !tbaa !108, !noalias !110
  %7111 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 1
  store float -1.000000e+00, float* %7111, align 4, !tbaa !108, !noalias !110
  %7112 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 2
  store float -1.000000e+00, float* %7112, align 4, !tbaa !108, !noalias !110
  %7113 = icmp sgt i32 %6972, 0
  br i1 %7113, label %7114, label %7175

; <label>:7114                                    ; preds = %7102
  br label %7115

; <label>:7115                                    ; preds = %7164, %7114
  %7116 = phi i32 [ %7165, %7164 ], [ 0, %7114 ]
  %7117 = phi i32 [ %7166, %7164 ], [ 0, %7114 ]
  %7118 = add nuw i32 %7117, 171
  %7119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 %7118)  ; CBufferLoadLegacy(handle,regIndex)
  %7120 = extractvalue %dx.types.CBufRet.f32 %7119, 0
  %7121 = extractvalue %dx.types.CBufRet.f32 %7119, 1
  %7122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7123 = extractvalue %dx.types.CBufRet.f32 %7122, 0
  %7124 = extractvalue %dx.types.CBufRet.f32 %7122, 1
  %7125 = fsub fast float %7120, %7123
  %7126 = fsub fast float %7121, %7124
  %7127 = extractvalue %dx.types.CBufRet.f32 %7119, 2
  %7128 = fsub fast float -0.000000e+00, %7125
  %7129 = fsub fast float -0.000000e+00, %7126
  %7130 = call float @dx.op.dot2.f32(i32 54, float %6949, float %6950, float %7128, float %7129)  ; Dot2(ax,ay,bx,by)
  %7131 = fmul fast float %7130, 2.000000e+00
  %7132 = call float @dx.op.dot2.f32(i32 54, float %7128, float %7129, float %7128, float %7129)  ; Dot2(ax,ay,bx,by)
  %7133 = fmul fast float %7127, %7127
  %7134 = fsub fast float %7132, %7133
  %7135 = fmul fast float %7131, %7131
  %7136 = fmul fast float %6992, %7134
  %7137 = fsub fast float %7135, %7136
  %7138 = fcmp fast ogt float %7137, 0.000000e+00
  br i1 %7138, label %7139, label %7154

; <label>:7139                                    ; preds = %7115
  %7140 = fcmp fast ogt float %7131, 0.000000e+00
  %7141 = call float @dx.op.unary.f32(i32 24, float %7137)  ; Sqrt(value)
  %7142 = fsub fast float -0.000000e+00, %7141
  %7143 = select i1 %7140, float %7141, float %7142
  %7144 = fadd fast float %7143, %7131
  %7145 = fmul float %7144, -5.000000e-01
  %7146 = fdiv fast float %7145, %6985
  %7147 = call float @dx.op.binary.f32(i32 35, float %7146, float 0.000000e+00)  ; FMax(a,b)
  %7148 = call float @dx.op.binary.f32(i32 36, float %7020, float %7147)  ; FMin(a,b)
  %7149 = fdiv fast float %7134, %7145
  %7150 = call float @dx.op.binary.f32(i32 35, float %7149, float 0.000000e+00)  ; FMax(a,b)
  %7151 = call float @dx.op.binary.f32(i32 36, float %7020, float %7150)  ; FMin(a,b)
  %7152 = call float @dx.op.binary.f32(i32 36, float %7148, float %7151)  ; FMin(a,b)
  %7153 = call float @dx.op.binary.f32(i32 35, float %7148, float %7151)  ; FMax(a,b)
  br label %7154

; <label>:7154                                    ; preds = %7139, %7115
  %7155 = phi float [ %7153, %7139 ], [ -1.000000e+00, %7115 ]
  %7156 = phi float [ %7152, %7139 ], [ -1.000000e+00, %7115 ]
  %7157 = phi i1 [ true, %7139 ], [ false, %7115 ]
  br i1 %7157, label %7158, label %7164

; <label>:7158                                    ; preds = %7154
  %7159 = call float @dx.op.binary.f32(i32 35, float %7103, float %7156)  ; FMax(a,b)
  %7160 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %7117
  store float %7159, float* %7160, align 4, !tbaa !108, !noalias !110
  %7161 = call float @dx.op.binary.f32(i32 35, float %7103, float %7155)  ; FMax(a,b)
  %7162 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %7117
  store float %7161, float* %7162, align 4, !tbaa !108, !noalias !110
  %7163 = add nsw i32 %7116, 1
  br label %7164

; <label>:7164                                    ; preds = %7158, %7154
  %7165 = phi i32 [ %7163, %7158 ], [ %7116, %7154 ]
  %7166 = add nuw nsw i32 %7117, 1
  %7167 = icmp eq i32 %7166, %6972
  br i1 %7167, label %7168, label %7115

; <label>:7168                                    ; preds = %7164
  %7169 = load float, float* %7109, align 4, !tbaa !108, !alias.scope !126, !noalias !129
  %7170 = load float, float* %7108, align 4, !tbaa !108, !alias.scope !132, !noalias !133
  %7171 = load float, float* %7107, align 4, !tbaa !108, !alias.scope !134, !noalias !135
  %7172 = load float, float* %7112, align 4, !tbaa !108, !alias.scope !136, !noalias !139
  %7173 = load float, float* %7111, align 4, !tbaa !108, !alias.scope !142, !noalias !143
  %7174 = load float, float* %7110, align 4, !tbaa !108, !alias.scope !144, !noalias !145
  br label %7175

; <label>:7175                                    ; preds = %7168, %7102
  %7176 = phi float [ -1.000000e+00, %7102 ], [ %7174, %7168 ]
  %7177 = phi float [ -1.000000e+00, %7102 ], [ %7173, %7168 ]
  %7178 = phi float [ -1.000000e+00, %7102 ], [ %7172, %7168 ]
  %7179 = phi float [ -1.000000e+00, %7102 ], [ %7171, %7168 ]
  %7180 = phi float [ -1.000000e+00, %7102 ], [ %7170, %7168 ]
  %7181 = phi float [ -1.000000e+00, %7102 ], [ %7169, %7168 ]
  %7182 = phi i32 [ 0, %7102 ], [ %7165, %7168 ]
  %7183 = call float @dx.op.binary.f32(i32 36, float %7180, float %7181)  ; FMin(a,b)
  %7184 = call float @dx.op.binary.f32(i32 36, float %7179, float %7183)  ; FMin(a,b)
  %7185 = call float @dx.op.binary.f32(i32 35, float %7179, float %7180)  ; FMax(a,b)
  %7186 = call float @dx.op.binary.f32(i32 36, float %7185, float %7181)  ; FMin(a,b)
  %7187 = call float @dx.op.binary.f32(i32 36, float %7179, float %7180)  ; FMin(a,b)
  %7188 = call float @dx.op.binary.f32(i32 35, float %7187, float %7186)  ; FMax(a,b)
  %7189 = call float @dx.op.binary.f32(i32 35, float %7180, float %7181)  ; FMax(a,b)
  %7190 = call float @dx.op.binary.f32(i32 35, float %7179, float %7189)  ; FMax(a,b)
  store float %7184, float* %7107, align 4, !tbaa !108, !alias.scope !134, !noalias !135
  store float %7188, float* %7108, align 4, !tbaa !108, !alias.scope !132, !noalias !133
  store float %7190, float* %7109, align 4, !tbaa !108, !alias.scope !126, !noalias !129
  %7191 = call float @dx.op.binary.f32(i32 36, float %7177, float %7178)  ; FMin(a,b)
  %7192 = call float @dx.op.binary.f32(i32 36, float %7176, float %7191)  ; FMin(a,b)
  %7193 = call float @dx.op.binary.f32(i32 35, float %7176, float %7177)  ; FMax(a,b)
  %7194 = call float @dx.op.binary.f32(i32 36, float %7193, float %7178)  ; FMin(a,b)
  %7195 = call float @dx.op.binary.f32(i32 36, float %7176, float %7177)  ; FMin(a,b)
  %7196 = call float @dx.op.binary.f32(i32 35, float %7195, float %7194)  ; FMax(a,b)
  %7197 = call float @dx.op.binary.f32(i32 35, float %7177, float %7178)  ; FMax(a,b)
  %7198 = call float @dx.op.binary.f32(i32 35, float %7176, float %7197)  ; FMax(a,b)
  store float %7192, float* %7110, align 4, !tbaa !108, !alias.scope !144, !noalias !145
  store float %7196, float* %7111, align 4, !tbaa !108, !alias.scope !142, !noalias !143
  store float %7198, float* %7112, align 4, !tbaa !108, !alias.scope !136, !noalias !139
  %7199 = sub nsw i32 3, %7182
  %7200 = icmp sgt i32 %7199, 2
  br i1 %7200, label %7201, label %7239

; <label>:7201                                    ; preds = %7175
  %7202 = icmp eq i32 %6970, 0
  %7203 = fsub fast float %7020, %7104
  %7204 = select i1 %7202, float %7203, float %7104
  %7205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7206 = extractvalue %dx.types.CBufRet.f32 %7205, 0
  %7207 = extractvalue %dx.types.CBufRet.f32 %7205, 1
  %7208 = extractvalue %dx.types.CBufRet.f32 %7205, 2
  %7209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7210 = extractvalue %dx.types.CBufRet.f32 %7209, 0
  %7211 = extractvalue %dx.types.CBufRet.f32 %7209, 1
  %7212 = extractvalue %dx.types.CBufRet.f32 %7209, 2
  %7213 = extractvalue %dx.types.CBufRet.f32 %7209, 3
  %7214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7215 = extractvalue %dx.types.CBufRet.f32 %7214, 3
  %7216 = call float @dx.op.binary.f32(i32 36, float %7105, float %7215)  ; FMin(a,b)
  %7217 = fmul fast float %7213, %7204
  %7218 = call float @dx.op.unary.f32(i32 7, float %7217)  ; Saturate(value)
  %7219 = fsub fast float %7210, %7206
  %7220 = fsub fast float %7211, %7207
  %7221 = fsub fast float %7212, %7208
  %7222 = fmul fast float %7218, %7219
  %7223 = fmul fast float %7218, %7220
  %7224 = fmul fast float %7218, %7221
  %7225 = fadd fast float %7222, %7206
  %7226 = fadd fast float %7223, %7207
  %7227 = fadd fast float %7224, %7208
  %7228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7229 = extractvalue %dx.types.CBufRet.f32 %7228, 0
  %7230 = extractvalue %dx.types.CBufRet.f32 %7228, 1
  %7231 = fadd fast float %7230, %7229
  %7232 = call float @dx.op.unary.f32(i32 7, float %7231)  ; Saturate(value)
  %7233 = extractvalue %dx.types.CBufRet.f32 %7228, 2
  %7234 = extractvalue %dx.types.CBufRet.f32 %7228, 3
  %7235 = fadd fast float %7234, %7233
  %7236 = call float @dx.op.unary.f32(i32 7, float %7235)  ; Saturate(value)
  %7237 = fmul fast float %7232, %7216
  %7238 = fmul fast float %7237, %7236
  br label %7321

; <label>:7239                                    ; preds = %7175
  %7240 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %7199
  %7241 = load float, float* %7240, align 4, !tbaa !108, !noalias !110
  %7242 = fcmp fast olt float %7241, %7106
  %7243 = icmp sgt i32 %7182, 0
  %7244 = and i1 %7243, %7242
  br i1 %7244, label %7245, label %7282

; <label>:7245                                    ; preds = %7239
  br label %7246

; <label>:7246                                    ; preds = %7275, %7245
  %7247 = phi float [ %7276, %7275 ], [ %7104, %7245 ]
  %7248 = phi float [ %7277, %7275 ], [ %7105, %7245 ]
  %7249 = phi float [ %7257, %7275 ], [ %7241, %7245 ]
  %7250 = phi i32 [ %7254, %7275 ], [ %7199, %7245 ]
  %7251 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %7250
  %7252 = load float, float* %7251, align 4, !tbaa !108, !noalias !110
  %7253 = icmp slt i32 %7250, 2
  %7254 = add nsw i32 %7250, 1
  %7255 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %7254
  %7256 = load float, float* %7255, align 4, !tbaa !108, !noalias !110
  %7257 = select i1 %7253, float %7256, float %7020
  %7258 = call float @dx.op.binary.f32(i32 36, float %7257, float %7252)  ; FMin(a,b)
  %7259 = call float @dx.op.binary.f32(i32 36, float %7106, float %7258)  ; FMin(a,b)
  %7260 = icmp eq i32 %6970, 0
  %7261 = fadd fast float %7259, %7249
  %7262 = fmul fast float %7261, %6951
  %7263 = fadd fast float %7262, %6964
  br i1 %7260, label %7269, label %7264

; <label>:7264                                    ; preds = %7246
  %7265 = fsub fast float %7259, %7249
  %7266 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7265)  ; FMax(a,b)
  %7267 = fmul fast float %7266, %7263
  %7268 = fadd fast float %7267, %7248
  br label %7275

; <label>:7269                                    ; preds = %7246
  %7270 = fsub fast float %7249, %7259
  %7271 = call float @dx.op.unary.f32(i32 6, float %7270)  ; FAbs(value)
  %7272 = fadd fast float %7271, %7247
  %7273 = fmul fast float %7271, %7263
  %7274 = fsub fast float %7248, %7273
  br label %7275

; <label>:7275                                    ; preds = %7269, %7264
  %7276 = phi float [ %7266, %7264 ], [ %7272, %7269 ]
  %7277 = phi float [ %7268, %7264 ], [ %7274, %7269 ]
  %7278 = fcmp fast olt float %7257, %7106
  %7279 = icmp slt i32 %7254, 3
  %7280 = and i1 %7279, %7278
  br i1 %7280, label %7246, label %7281

; <label>:7281                                    ; preds = %7275
  br label %7282

; <label>:7282                                    ; preds = %7281, %7239
  %7283 = phi float [ %7104, %7239 ], [ %7276, %7281 ]
  %7284 = phi float [ %7105, %7239 ], [ %7277, %7281 ]
  %7285 = fsub fast float %7020, %7283
  %7286 = select i1 %7022, float %7283, float %7285
  %7287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7288 = extractvalue %dx.types.CBufRet.f32 %7287, 0
  %7289 = extractvalue %dx.types.CBufRet.f32 %7287, 1
  %7290 = extractvalue %dx.types.CBufRet.f32 %7287, 2
  %7291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7292 = extractvalue %dx.types.CBufRet.f32 %7291, 0
  %7293 = extractvalue %dx.types.CBufRet.f32 %7291, 1
  %7294 = extractvalue %dx.types.CBufRet.f32 %7291, 2
  %7295 = extractvalue %dx.types.CBufRet.f32 %7291, 3
  %7296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7297 = extractvalue %dx.types.CBufRet.f32 %7296, 3
  %7298 = call float @dx.op.binary.f32(i32 36, float %7284, float %7297)  ; FMin(a,b)
  %7299 = fmul fast float %7295, %7286
  %7300 = call float @dx.op.unary.f32(i32 7, float %7299)  ; Saturate(value)
  %7301 = fsub fast float %7292, %7288
  %7302 = fsub fast float %7293, %7289
  %7303 = fsub fast float %7294, %7290
  %7304 = fmul fast float %7300, %7301
  %7305 = fmul fast float %7300, %7302
  %7306 = fmul fast float %7300, %7303
  %7307 = fadd fast float %7304, %7288
  %7308 = fadd fast float %7305, %7289
  %7309 = fadd fast float %7306, %7290
  %7310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7311 = extractvalue %dx.types.CBufRet.f32 %7310, 0
  %7312 = extractvalue %dx.types.CBufRet.f32 %7310, 1
  %7313 = fadd fast float %7312, %7311
  %7314 = call float @dx.op.unary.f32(i32 7, float %7313)  ; Saturate(value)
  %7315 = extractvalue %dx.types.CBufRet.f32 %7310, 2
  %7316 = extractvalue %dx.types.CBufRet.f32 %7310, 3
  %7317 = fadd fast float %7316, %7315
  %7318 = call float @dx.op.unary.f32(i32 7, float %7317)  ; Saturate(value)
  %7319 = fmul fast float %7314, %7298
  %7320 = fmul fast float %7319, %7318
  br label %7321

; <label>:7321                                    ; preds = %7282, %7201, %7036, %7018, %7016
  %7322 = phi float [ %7045, %7036 ], [ %7204, %7201 ], [ %7286, %7282 ], [ 0.000000e+00, %7016 ], [ 0.000000e+00, %7018 ]
  %7323 = phi float [ %7079, %7036 ], [ %7238, %7201 ], [ %7320, %7282 ], [ 0.000000e+00, %7016 ], [ 0.000000e+00, %7018 ]
  %7324 = phi float [ %7066, %7036 ], [ %7225, %7201 ], [ %7307, %7282 ], [ 0.000000e+00, %7016 ], [ 0.000000e+00, %7018 ]
  %7325 = phi float [ %7067, %7036 ], [ %7226, %7201 ], [ %7308, %7282 ], [ 0.000000e+00, %7016 ], [ 0.000000e+00, %7018 ]
  %7326 = phi float [ %7068, %7036 ], [ %7227, %7201 ], [ %7309, %7282 ], [ 0.000000e+00, %7016 ], [ 0.000000e+00, %7018 ]
  %7327 = fmul fast float %6959, %7323
  %7328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7329 = extractvalue %dx.types.CBufRet.f32 %7328, 2
  %7330 = fsub fast float %6966, %7329
  %7331 = fcmp fast olt float %7327, -2.000000e+01
  %7332 = call float @dx.op.unary.f32(i32 21, float %7327)  ; Exp(value)
  %7333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7334 = extractvalue %dx.types.CBufRet.f32 %7333, 2
  %7335 = extractvalue %dx.types.CBufRet.f32 %7333, 3
  %7336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7337 = extractvalue %dx.types.CBufRet.f32 %7336, 2
  %7338 = fmul fast float %7335, %7330
  %7339 = call float @dx.op.unary.f32(i32 7, float %7338)  ; Saturate(value)
  %7340 = fsub fast float 1.000000e+00, %7339
  %7341 = fmul fast float %6951, 5.000000e-01
  %7342 = fadd fast float %7341, 5.000000e-01
  %7343 = call float @dx.op.unary.f32(i32 7, float %7342)  ; Saturate(value)
  %7344 = fsub fast float 1.000000e+00, %7343
  %7345 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7340)  ; FMax(a,b)
  %7346 = fdiv fast float %7344, %7345
  %7347 = fsub fast float %7330, %6908
  %7348 = call float @dx.op.unary.f32(i32 6, float %7347)  ; FAbs(value)
  %7349 = fmul fast float %7348, %7334
  %7350 = call float @dx.op.unary.f32(i32 7, float %7346)  ; Saturate(value)
  %7351 = fsub fast float 1.000000e+00, %7349
  %7352 = fmul fast float %7351, %7350
  %7353 = fadd fast float %7352, %7349
  %7354 = fmul fast float %7337, %7330
  %7355 = call float @dx.op.unary.f32(i32 7, float %7354)  ; Saturate(value)
  %7356 = fsub fast float 1.000000e+00, %7353
  %7357 = fmul fast float %7356, %7355
  %7358 = fadd fast float %7357, %7353
  %7359 = call float @dx.op.unary.f32(i32 7, float %7358)  ; Saturate(value)
  %7360 = fadd fast float %7332, -1.000000e+00
  %7361 = select i1 %7331, float -1.000000e+00, float %7360
  %7362 = fmul fast float %7359, %7361
  %7363 = fadd fast float %7362, 1.000000e+00
  %7364 = fsub fast float -0.000000e+00, %7362
  %7365 = fmul fast float %7324, %7364
  %7366 = fmul fast float %7325, %7364
  %7367 = fmul fast float %7326, %7364
  br label %7368

; <label>:7368                                    ; preds = %7321, %6917
  %7369 = phi float [ %7322, %7321 ], [ 0.000000e+00, %6917 ]
  %7370 = phi float [ %7363, %7321 ], [ 1.000000e+00, %6917 ]
  %7371 = phi float [ %7365, %7321 ], [ 0.000000e+00, %6917 ]
  %7372 = phi float [ %7366, %7321 ], [ 0.000000e+00, %6917 ]
  %7373 = phi float [ %7367, %7321 ], [ 0.000000e+00, %6917 ]
  %7374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7375 = extractvalue %dx.types.CBufRet.f32 %7374, 1
  %7376 = fsub fast float 1.000000e+00, %7370
  %7377 = fmul fast float %7376, %6952
  %7378 = fmul fast float %7377, %7375
  %7379 = fsub fast float %6952, %7378
  br i1 %6945, label %7380, label %7409, !dx.controlflow.hints !146

; <label>:7380                                    ; preds = %7368
  %7381 = fmul fast float %6953, %6942
  %7382 = fadd fast float %7381, %6943
  %7383 = call float @dx.op.unary.f32(i32 7, float %7382)  ; Saturate(value)
  %7384 = fmul fast float %6924, %7379
  %7385 = fsub fast float -0.000000e+00, %7384
  %7386 = fmul fast float %6925, %7379
  %7387 = fsub fast float -0.000000e+00, %7386
  %7388 = call float @dx.op.unary.f32(i32 21, float %7385)  ; Exp(value)
  %7389 = call float @dx.op.unary.f32(i32 21, float %7387)  ; Exp(value)
  %7390 = call float @dx.op.binary.f32(i32 35, float %6932, float %7388)  ; FMax(a,b)
  %7391 = call float @dx.op.binary.f32(i32 35, float %6932, float %7389)  ; FMax(a,b)
  %7392 = fsub fast float %7391, %7390
  %7393 = fmul fast float %7392, %7383
  %7394 = fadd fast float %7393, %7390
  %7395 = call float @dx.op.unary.f32(i32 7, float %7394)  ; Saturate(value)
  %7396 = fsub fast float %6929, %6934
  %7397 = fsub fast float %6930, %6935
  %7398 = fsub fast float %6931, %6936
  %7399 = fmul fast float %7383, %7396
  %7400 = fmul fast float %7383, %7397
  %7401 = fmul fast float %7383, %7398
  %7402 = fadd fast float %7399, %6934
  %7403 = fadd fast float %7400, %6935
  %7404 = fadd fast float %7401, %6936
  %7405 = fsub fast float 1.000000e+00, %7395
  %7406 = fmul fast float %7405, %7402
  %7407 = fmul fast float %7405, %7403
  %7408 = fmul fast float %7405, %7404
  br label %7468

; <label>:7409                                    ; preds = %7368
  %7410 = fmul fast float %7379, %6941
  %7411 = call float @dx.op.unary.f32(i32 7, float %7410)  ; Saturate(value)
  %7412 = fsub fast float 2.000000e+00, %7411
  %7413 = fmul fast float %7411, 9.921875e-01
  %7414 = fmul fast float %7413, %7412
  %7415 = fadd fast float %7414, 3.906250e-03
  %7416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %7415, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7417 = extractvalue %dx.types.ResRet.f32 %7416, 0
  %7418 = fsub fast float %7411, %7417
  %7419 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7418)  ; FMax(a,b)
  %7420 = fmul fast float %6927, %6908
  %7421 = call float @dx.op.unary.f32(i32 6, float %7420)  ; FAbs(value)
  %7422 = fcmp fast ogt float %7421, 0x3EB0C6F7A0000000
  br i1 %7422, label %7423, label %7429, !dx.controlflow.hints !147

; <label>:7423                                    ; preds = %7409
  %7424 = fmul fast float %7420, 0xBFF7154760000000
  %7425 = call float @dx.op.unary.f32(i32 21, float %7424)  ; Exp(value)
  %7426 = fsub fast float 1.000000e+00, %7425
  %7427 = fdiv fast float %7426, %7420
  %7428 = fmul fast float %7427, %6937
  br label %7429

; <label>:7429                                    ; preds = %7423, %7409
  %7430 = phi float [ %7428, %7423 ], [ %6937, %7409 ]
  %7431 = fadd fast float %7430, %6939
  %7432 = fmul fast float %7431, %7419
  %7433 = fmul fast float %6924, %7432
  %7434 = fsub fast float -0.000000e+00, %7433
  %7435 = fmul fast float %6925, %7432
  %7436 = fsub fast float -0.000000e+00, %7435
  %7437 = fmul fast float %6926, %7432
  %7438 = fsub fast float -0.000000e+00, %7437
  %7439 = call float @dx.op.unary.f32(i32 21, float %7434)  ; Exp(value)
  %7440 = call float @dx.op.unary.f32(i32 21, float %7436)  ; Exp(value)
  %7441 = call float @dx.op.unary.f32(i32 21, float %7438)  ; Exp(value)
  %7442 = fmul fast float %6953, %6953
  %7443 = fadd fast float %7442, 1.000000e+00
  %7444 = fmul fast float %7443, 0x3FAE8EC8A0000000
  %7445 = fmul fast float %7444, %6934
  %7446 = fmul fast float %7444, %6935
  %7447 = fmul fast float %7444, %6936
  %7448 = fmul fast float %6953, %6932
  %7449 = fsub fast float 1.000000e+00, %7448
  %7450 = fmul fast float %6932, %6932
  %7451 = fsub fast float 1.000000e+00, %7450
  %7452 = fmul fast float %7451, 0x3FB45F3060000000
  %7453 = fmul fast float %7449, %7449
  %7454 = fdiv fast float 1.000000e+00, %7453
  %7455 = fmul fast float %7452, %7454
  %7456 = fmul fast float %7455, %6929
  %7457 = fmul fast float %7455, %6930
  %7458 = fmul fast float %7455, %6931
  %7459 = fadd fast float %7456, %7445
  %7460 = fadd fast float %7457, %7446
  %7461 = fadd fast float %7458, %7447
  %7462 = fsub fast float 1.000000e+00, %7439
  %7463 = fsub fast float 1.000000e+00, %7440
  %7464 = fsub fast float 1.000000e+00, %7441
  %7465 = fmul fast float %7459, %7462
  %7466 = fmul fast float %7460, %7463
  %7467 = fmul fast float %7461, %7464
  br label %7468

; <label>:7468                                    ; preds = %7429, %7380
  %7469 = phi float [ %7406, %7380 ], [ %7465, %7429 ]
  %7470 = phi float [ %7407, %7380 ], [ %7466, %7429 ]
  %7471 = phi float [ %7408, %7380 ], [ %7467, %7429 ]
  %7472 = phi float [ %7395, %7380 ], [ %7439, %7429 ]
  %7473 = phi float [ %7395, %7380 ], [ %7440, %7429 ]
  %7474 = phi float [ %7395, %7380 ], [ %7441, %7429 ]
  br i1 %6961, label %7475, label %7673, !dx.controlflow.hints !148

; <label>:7475                                    ; preds = %7468
  %7476 = extractvalue %dx.types.CBufRet.f32 %7374, 0
  %7477 = fmul fast float %7476, %7376
  %7478 = fsub fast float %7371, %7469
  %7479 = fsub fast float %7372, %7470
  %7480 = fsub fast float %7373, %7471
  %7481 = fmul fast float %7477, %7478
  %7482 = fmul fast float %7477, %7479
  %7483 = fmul fast float %7477, %7480
  %7484 = fadd fast float %7481, %7469
  %7485 = fadd fast float %7482, %7470
  %7486 = fadd fast float %7483, %7471
  %7487 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7472)  ; FMax(a,b)
  %7488 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7473)  ; FMax(a,b)
  %7489 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7474)  ; FMax(a,b)
  %7490 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7370)  ; FMax(a,b)
  %7491 = call float @dx.op.binary.f32(i32 35, float %7369, float %7379)  ; FMax(a,b)
  %7492 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7491)  ; FMax(a,b)
  %7493 = fdiv fast float %7369, %7492
  %7494 = call float @dx.op.unary.f32(i32 7, float %7493)  ; Saturate(value)
  %7495 = fdiv fast float %7379, %7492
  %7496 = call float @dx.op.unary.f32(i32 7, float %7495)  ; Saturate(value)
  %7497 = fcmp fast une float %7490, 1.000000e+00
  br i1 %7497, label %7498, label %7511, !dx.controlflow.hints !149

; <label>:7498                                    ; preds = %7475
  %7499 = call float @dx.op.unary.f32(i32 23, float %7490)  ; Log(value)
  %7500 = fmul fast float %7499, 0x3FE62E4300000000
  %7501 = fmul fast float %7371, %7500
  %7502 = fsub fast float -0.000000e+00, %7501
  %7503 = fmul fast float %7372, %7500
  %7504 = fsub fast float -0.000000e+00, %7503
  %7505 = fmul fast float %7373, %7500
  %7506 = fsub fast float -0.000000e+00, %7505
  %7507 = fsub fast float 1.000000e+00, %7490
  %7508 = fdiv fast float %7502, %7507
  %7509 = fdiv fast float %7504, %7507
  %7510 = fdiv fast float %7506, %7507
  br label %7511

; <label>:7511                                    ; preds = %7498, %7475
  %7512 = phi float [ %7508, %7498 ], [ %7371, %7475 ]
  %7513 = phi float [ %7509, %7498 ], [ %7372, %7475 ]
  %7514 = phi float [ %7510, %7498 ], [ %7373, %7475 ]
  %7515 = phi float [ %7500, %7498 ], [ 0.000000e+00, %7475 ]
  %7516 = fcmp fast une float %7487, 1.000000e+00
  br i1 %7516, label %7517, label %7524, !dx.controlflow.hints !150

; <label>:7517                                    ; preds = %7511
  %7518 = call float @dx.op.unary.f32(i32 23, float %7487)  ; Log(value)
  %7519 = fmul fast float %7518, 0x3FE62E4300000000
  %7520 = fmul fast float %7484, %7519
  %7521 = fsub fast float -0.000000e+00, %7520
  %7522 = fsub fast float 1.000000e+00, %7487
  %7523 = fdiv fast float %7521, %7522
  br label %7524

; <label>:7524                                    ; preds = %7517, %7511
  %7525 = phi float [ %7523, %7517 ], [ %7484, %7511 ]
  %7526 = phi float [ %7519, %7517 ], [ 0.000000e+00, %7511 ]
  %7527 = fcmp fast une float %7488, 1.000000e+00
  br i1 %7527, label %7528, label %7535, !dx.controlflow.hints !150

; <label>:7528                                    ; preds = %7524
  %7529 = call float @dx.op.unary.f32(i32 23, float %7488)  ; Log(value)
  %7530 = fmul fast float %7529, 0x3FE62E4300000000
  %7531 = fmul fast float %7485, %7530
  %7532 = fsub fast float -0.000000e+00, %7531
  %7533 = fsub fast float 1.000000e+00, %7488
  %7534 = fdiv fast float %7532, %7533
  br label %7535

; <label>:7535                                    ; preds = %7528, %7524
  %7536 = phi float [ %7534, %7528 ], [ %7485, %7524 ]
  %7537 = phi float [ %7530, %7528 ], [ 0.000000e+00, %7524 ]
  %7538 = fcmp fast une float %7489, 1.000000e+00
  br i1 %7538, label %7539, label %7546, !dx.controlflow.hints !150

; <label>:7539                                    ; preds = %7535
  %7540 = call float @dx.op.unary.f32(i32 23, float %7489)  ; Log(value)
  %7541 = fmul fast float %7540, 0x3FE62E4300000000
  %7542 = fmul fast float %7486, %7541
  %7543 = fsub fast float -0.000000e+00, %7542
  %7544 = fsub fast float 1.000000e+00, %7489
  %7545 = fdiv fast float %7543, %7544
  br label %7546

; <label>:7546                                    ; preds = %7539, %7535
  %7547 = phi float [ %7545, %7539 ], [ %7486, %7535 ]
  %7548 = phi float [ %7541, %7539 ], [ 0.000000e+00, %7535 ]
  %7549 = fmul fast float %7512, %7496
  %7550 = fmul fast float %7513, %7496
  %7551 = fmul fast float %7514, %7496
  %7552 = fmul fast float %7515, %7496
  %7553 = fmul fast float %7525, %7494
  %7554 = fmul fast float %7536, %7494
  %7555 = fmul fast float %7547, %7494
  %7556 = fmul fast float %7526, %7494
  %7557 = fmul fast float %7537, %7494
  %7558 = fmul fast float %7548, %7494
  %7559 = fadd fast float %7553, %7549
  %7560 = fadd fast float %7554, %7550
  %7561 = fadd fast float %7555, %7551
  %7562 = fadd fast float %7556, %7552
  %7563 = fadd fast float %7557, %7552
  %7564 = fadd fast float %7558, %7552
  %7565 = fcmp fast une float %7562, 0.000000e+00
  br i1 %7565, label %7566, label %7573, !dx.controlflow.hints !151

; <label>:7566                                    ; preds = %7546
  %7567 = fmul fast float %7562, 0x3FF7154760000000
  %7568 = call float @dx.op.unary.f32(i32 21, float %7567)  ; Exp(value)
  %7569 = fsub fast float 1.000000e+00, %7568
  %7570 = fmul fast float %7559, %7569
  %7571 = fsub fast float -0.000000e+00, %7570
  %7572 = fdiv fast float %7571, %7562
  br label %7573

; <label>:7573                                    ; preds = %7566, %7546
  %7574 = phi float [ %7568, %7566 ], [ 1.000000e+00, %7546 ]
  %7575 = phi float [ %7572, %7566 ], [ %7559, %7546 ]
  %7576 = fcmp fast une float %7563, 0.000000e+00
  br i1 %7576, label %7577, label %7584, !dx.controlflow.hints !151

; <label>:7577                                    ; preds = %7573
  %7578 = fmul fast float %7563, 0x3FF7154760000000
  %7579 = call float @dx.op.unary.f32(i32 21, float %7578)  ; Exp(value)
  %7580 = fsub fast float 1.000000e+00, %7579
  %7581 = fmul fast float %7560, %7580
  %7582 = fsub fast float -0.000000e+00, %7581
  %7583 = fdiv fast float %7582, %7563
  br label %7584

; <label>:7584                                    ; preds = %7577, %7573
  %7585 = phi float [ %7579, %7577 ], [ 1.000000e+00, %7573 ]
  %7586 = phi float [ %7583, %7577 ], [ %7560, %7573 ]
  %7587 = fcmp fast une float %7564, 0.000000e+00
  br i1 %7587, label %7588, label %7595, !dx.controlflow.hints !151

; <label>:7588                                    ; preds = %7584
  %7589 = fmul fast float %7564, 0x3FF7154760000000
  %7590 = call float @dx.op.unary.f32(i32 21, float %7589)  ; Exp(value)
  %7591 = fsub fast float 1.000000e+00, %7590
  %7592 = fmul fast float %7561, %7591
  %7593 = fsub fast float -0.000000e+00, %7592
  %7594 = fdiv fast float %7593, %7564
  br label %7595

; <label>:7595                                    ; preds = %7588, %7584
  %7596 = phi float [ %7590, %7588 ], [ 1.000000e+00, %7584 ]
  %7597 = phi float [ %7594, %7588 ], [ %7561, %7584 ]
  %7598 = fcmp fast ogt float %7494, %7496
  br i1 %7598, label %7599, label %7619

; <label>:7599                                    ; preds = %7595
  %7600 = fsub fast float 1.000000e+00, %7496
  %7601 = fmul fast float %7512, %7600
  %7602 = fmul fast float %7513, %7600
  %7603 = fmul fast float %7514, %7600
  %7604 = fmul fast float %7515, %7600
  %7605 = fcmp fast une float %7604, 0.000000e+00
  br i1 %7605, label %7606, label %7657, !dx.controlflow.hints !152

; <label>:7606                                    ; preds = %7599
  %7607 = fmul fast float %7604, 0x3FF7154760000000
  %7608 = call float @dx.op.unary.f32(i32 21, float %7607)  ; Exp(value)
  %7609 = fsub fast float 1.000000e+00, %7608
  %7610 = fmul fast float %7601, %7609
  %7611 = fsub fast float -0.000000e+00, %7610
  %7612 = fmul fast float %7602, %7609
  %7613 = fsub fast float -0.000000e+00, %7612
  %7614 = fmul fast float %7603, %7609
  %7615 = fsub fast float -0.000000e+00, %7614
  %7616 = fdiv fast float %7611, %7604
  %7617 = fdiv fast float %7613, %7604
  %7618 = fdiv fast float %7615, %7604
  br label %7657

; <label>:7619                                    ; preds = %7595
  %7620 = fsub fast float 1.000000e+00, %7494
  %7621 = fmul fast float %7525, %7620
  %7622 = fmul fast float %7536, %7620
  %7623 = fmul fast float %7547, %7620
  %7624 = fmul fast float %7526, %7620
  %7625 = fmul fast float %7537, %7620
  %7626 = fmul fast float %7548, %7620
  %7627 = fcmp fast une float %7624, 0.000000e+00
  br i1 %7627, label %7628, label %7635, !dx.controlflow.hints !151

; <label>:7628                                    ; preds = %7619
  %7629 = fmul fast float %7624, 0x3FF7154760000000
  %7630 = call float @dx.op.unary.f32(i32 21, float %7629)  ; Exp(value)
  %7631 = fsub fast float 1.000000e+00, %7630
  %7632 = fmul fast float %7621, %7631
  %7633 = fsub fast float -0.000000e+00, %7632
  %7634 = fdiv fast float %7633, %7624
  br label %7635

; <label>:7635                                    ; preds = %7628, %7619
  %7636 = phi float [ %7634, %7628 ], [ %7621, %7619 ]
  %7637 = phi float [ %7630, %7628 ], [ 1.000000e+00, %7619 ]
  %7638 = fcmp fast une float %7625, 0.000000e+00
  br i1 %7638, label %7639, label %7646, !dx.controlflow.hints !151

; <label>:7639                                    ; preds = %7635
  %7640 = fmul fast float %7625, 0x3FF7154760000000
  %7641 = call float @dx.op.unary.f32(i32 21, float %7640)  ; Exp(value)
  %7642 = fsub fast float 1.000000e+00, %7641
  %7643 = fmul fast float %7622, %7642
  %7644 = fsub fast float -0.000000e+00, %7643
  %7645 = fdiv fast float %7644, %7625
  br label %7646

; <label>:7646                                    ; preds = %7639, %7635
  %7647 = phi float [ %7645, %7639 ], [ %7622, %7635 ]
  %7648 = phi float [ %7641, %7639 ], [ 1.000000e+00, %7635 ]
  %7649 = fcmp fast une float %7626, 0.000000e+00
  br i1 %7649, label %7650, label %7657, !dx.controlflow.hints !151

; <label>:7650                                    ; preds = %7646
  %7651 = fmul fast float %7626, 0x3FF7154760000000
  %7652 = call float @dx.op.unary.f32(i32 21, float %7651)  ; Exp(value)
  %7653 = fsub fast float 1.000000e+00, %7652
  %7654 = fmul fast float %7623, %7653
  %7655 = fsub fast float -0.000000e+00, %7654
  %7656 = fdiv fast float %7655, %7626
  br label %7657

; <label>:7657                                    ; preds = %7650, %7646, %7606, %7599
  %7658 = phi float [ %7656, %7650 ], [ %7618, %7606 ], [ %7603, %7599 ], [ %7623, %7646 ]
  %7659 = phi float [ %7647, %7650 ], [ %7617, %7606 ], [ %7602, %7599 ], [ %7647, %7646 ]
  %7660 = phi float [ %7636, %7650 ], [ %7616, %7606 ], [ %7601, %7599 ], [ %7636, %7646 ]
  %7661 = phi float [ %7652, %7650 ], [ %7608, %7606 ], [ 1.000000e+00, %7599 ], [ 1.000000e+00, %7646 ]
  %7662 = phi float [ %7648, %7650 ], [ %7608, %7606 ], [ 1.000000e+00, %7599 ], [ %7648, %7646 ]
  %7663 = phi float [ %7637, %7650 ], [ %7608, %7606 ], [ 1.000000e+00, %7599 ], [ %7637, %7646 ]
  %7664 = fmul fast float %7663, %7575
  %7665 = fmul fast float %7662, %7586
  %7666 = fmul fast float %7661, %7597
  %7667 = fadd fast float %7664, %7660
  %7668 = fadd fast float %7665, %7659
  %7669 = fadd fast float %7666, %7658
  %7670 = fmul fast float %7663, %7574
  %7671 = fmul fast float %7662, %7585
  %7672 = fmul fast float %7661, %7596
  br label %7673

; <label>:7673                                    ; preds = %7657, %7468
  %7674 = phi float [ %7672, %7657 ], [ %7474, %7468 ]
  %7675 = phi float [ %7671, %7657 ], [ %7473, %7468 ]
  %7676 = phi float [ %7670, %7657 ], [ %7472, %7468 ]
  %7677 = phi float [ %7669, %7657 ], [ %7471, %7468 ]
  %7678 = phi float [ %7668, %7657 ], [ %7470, %7468 ]
  %7679 = phi float [ %7667, %7657 ], [ %7469, %7468 ]
  %7680 = fmul fast float %7676, %6916
  %7681 = call float @dx.op.dot3.f32(i32 55, float %7676, float %7675, float %7674, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7682 = call float @dx.op.dot3.f32(i32 55, float %7679, float %7678, float %7677, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7683 = select i1 %206, float %7681, float %7676
  %7684 = select i1 %206, float %7681, float %7675
  %7685 = select i1 %206, float 1.000000e+00, float %7674
  %7686 = select i1 %206, float %7682, float %7679
  %7687 = select i1 %206, float 0.000000e+00, float %7678
  %7688 = select i1 %206, float 0.000000e+00, float %7677
  %7689 = fmul fast float %7683, %6910
  %7690 = fmul fast float %7684, %6911
  %7691 = fmul fast float %7685, %6912
  %7692 = fadd fast float %7689, %7686
  %7693 = fadd fast float %7690, %7687
  %7694 = fadd fast float %7688, %7691
  %7695 = fmul fast float %7683, %6913
  %7696 = fmul fast float %7684, %6914
  %7697 = fmul fast float %7685, %6915
  %7698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7699 = extractvalue %dx.types.CBufRet.i32 %7698, 0
  %7700 = icmp eq i32 %7699, 0
  br i1 %7700, label %8058, label %7701, !dx.controlflow.hints !153

; <label>:7701                                    ; preds = %7673
  %7702 = fmul fast float %5503, %90
  %7703 = fmul fast float %5504, %91
  %7704 = fmul fast float %7702, 2.000000e+00
  %7705 = fmul fast float %7703, 2.000000e+00
  %7706 = fsub fast float 1.000000e+00, %7704
  %7707 = fsub fast float 1.000000e+00, %7705
  %7708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7709 = extractvalue %dx.types.CBufRet.f32 %7708, 0
  %7710 = extractvalue %dx.types.CBufRet.f32 %7708, 1
  %7711 = extractvalue %dx.types.CBufRet.f32 %7708, 2
  %7712 = fmul fast float %7706, %7709
  %7713 = fmul fast float %7706, %7710
  %7714 = fmul fast float %7706, %7711
  %7715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7716 = extractvalue %dx.types.CBufRet.f32 %7715, 0
  %7717 = extractvalue %dx.types.CBufRet.f32 %7715, 1
  %7718 = extractvalue %dx.types.CBufRet.f32 %7715, 2
  %7719 = fmul fast float %7707, %7716
  %7720 = fmul fast float %7707, %7717
  %7721 = fmul fast float %7707, %7718
  %7722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7723 = extractvalue %dx.types.CBufRet.f32 %7722, 0
  %7724 = extractvalue %dx.types.CBufRet.f32 %7722, 1
  %7725 = extractvalue %dx.types.CBufRet.f32 %7722, 2
  %7726 = fadd fast float %7719, %7723
  %7727 = fadd fast float %7726, %7712
  %7728 = fadd fast float %7720, %7724
  %7729 = fadd fast float %7728, %7713
  %7730 = fadd fast float %7721, %7725
  %7731 = fadd fast float %7730, %7714
  %7732 = fmul fast float %7727, %6909
  %7733 = fmul fast float %7729, %6909
  %7734 = fmul fast float %7731, %6909
  %7735 = fmul fast float %7732, %7732
  %7736 = fmul fast float %7733, %7733
  %7737 = fadd fast float %7735, %7736
  %7738 = fmul fast float %7734, %7734
  %7739 = fadd fast float %7737, %7738
  %7740 = call float @dx.op.unary.f32(i32 24, float %7739)  ; Sqrt(value)
  %7741 = extractvalue %dx.types.CBufRet.f32 %6644, 0
  %7742 = fsub fast float %7740, %7741
  %7743 = extractvalue %dx.types.CBufRet.f32 %6644, 2
  %7744 = fmul fast float %7742, %7743
  %7745 = call float @dx.op.unary.f32(i32 7, float %7744)  ; Saturate(value)
  %7746 = fadd fast float %7745, -5.000000e-01
  %7747 = fmul fast float %7746, 2.000000e+00
  %7748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7749 = extractvalue %dx.types.CBufRet.f32 %7748, 2
  %7750 = call float @dx.op.binary.f32(i32 36, float %7749, float %7747)  ; FMin(a,b)
  %7751 = fsub fast float -0.000000e+00, %7749
  %7752 = fcmp fast ogt float %7750, %7751
  br i1 %7752, label %7753, label %8058, !dx.controlflow.hints !154

; <label>:7753                                    ; preds = %7701
  %7754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7755 = extractvalue %dx.types.CBufRet.f32 %7754, 3
  %7756 = fcmp fast ogt float %7755, 0.000000e+00
  br i1 %7756, label %7757, label %7830, !dx.controlflow.hints !155

; <label>:7757                                    ; preds = %7753
  %7758 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %7759 = extractvalue %dx.types.Dimensions %7758, 0
  %7760 = sitofp i32 %7759 to float
  %7761 = extractvalue %dx.types.Dimensions %7758, 1
  %7762 = sitofp i32 %7761 to float
  %7763 = fmul fast float %7702, %7760
  %7764 = fmul fast float %7703, %7762
  %7765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7766 = extractvalue %dx.types.CBufRet.f32 %7765, 1
  %7767 = fsub fast float -0.000000e+00, %7766
  %7768 = fptoui float %7767 to i32
  %7769 = fptoui float %7763 to i32
  %7770 = fptoui float %7764 to i32
  %7771 = and i32 %7768, 31
  %7772 = lshr i32 %7769, %7771
  %7773 = lshr i32 %7770, %7771
  %7774 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 %7768, i32 %7772, i32 %7773, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7775 = extractvalue %dx.types.ResRet.f32 %7774, 0
  %7776 = fcmp fast olt float %7775, -1.000000e+00
  %7777 = fcmp fast ogt float %7775, -1.000000e+00
  %7778 = select i1 %7777, float %5511, float 1.000000e+00
  %7779 = fadd fast float %7775, 1.000000e+00
  %7780 = fmul fast float %7778, %7779
  %7781 = call float @dx.op.unary.f32(i32 6, float %7780)  ; FAbs(value)
  %7782 = extractvalue %dx.types.CBufRet.f32 %5510, 3
  %7783 = fcmp fast oge float %7781, %7782
  %7784 = select i1 %7783, float 0x4197782600000000, float %7781
  %7785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7786 = extractvalue %dx.types.CBufRet.f32 %7785, 0
  %7787 = extractvalue %dx.types.CBufRet.f32 %7785, 1
  %7788 = extractvalue %dx.types.CBufRet.f32 %7785, 2
  %7789 = select i1 %7776, float %7786, float %7709
  %7790 = select i1 %7776, float %7787, float %7710
  %7791 = select i1 %7776, float %7788, float %7711
  %7792 = fmul fast float %7789, %7706
  %7793 = fmul fast float %7790, %7706
  %7794 = fmul fast float %7791, %7706
  %7795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7796 = extractvalue %dx.types.CBufRet.f32 %7795, 0
  %7797 = extractvalue %dx.types.CBufRet.f32 %7795, 1
  %7798 = extractvalue %dx.types.CBufRet.f32 %7795, 2
  %7799 = select i1 %7776, float %7796, float %7716
  %7800 = select i1 %7776, float %7797, float %7717
  %7801 = select i1 %7776, float %7798, float %7718
  %7802 = fmul fast float %7799, %7707
  %7803 = fmul fast float %7800, %7707
  %7804 = fmul fast float %7801, %7707
  %7805 = fadd fast float %7802, %7792
  %7806 = fadd fast float %7803, %7793
  %7807 = fadd fast float %7804, %7794
  %7808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7809 = extractvalue %dx.types.CBufRet.f32 %7808, 0
  %7810 = extractvalue %dx.types.CBufRet.f32 %7808, 1
  %7811 = extractvalue %dx.types.CBufRet.f32 %7808, 2
  %7812 = select i1 %7776, float %7809, float %7723
  %7813 = select i1 %7776, float %7810, float %7724
  %7814 = select i1 %7776, float %7811, float %7725
  %7815 = fadd fast float %7805, %7812
  %7816 = fadd fast float %7806, %7813
  %7817 = fadd fast float %7807, %7814
  %7818 = fmul fast float %7815, %7784
  %7819 = fmul fast float %7816, %7784
  %7820 = fmul fast float %7817, %7784
  %7821 = fmul fast float %7818, %7818
  %7822 = fmul fast float %7819, %7819
  %7823 = fadd fast float %7821, %7822
  %7824 = fmul fast float %7820, %7820
  %7825 = fadd fast float %7823, %7824
  %7826 = call float @dx.op.unary.f32(i32 24, float %7825)  ; Sqrt(value)
  %7827 = fsub fast float %7826, %7741
  %7828 = fmul fast float %7827, %7743
  %7829 = call float @dx.op.unary.f32(i32 7, float %7828)  ; Saturate(value)
  br label %7830

; <label>:7830                                    ; preds = %7757, %7753
  %7831 = phi float [ %7829, %7757 ], [ 1.000000e+00, %7753 ]
  %7832 = fmul fast float %7750, 5.000000e-01
  %7833 = fadd fast float %7832, 5.000000e-01
  %7834 = call float @dx.op.unary.f32(i32 22, float %7833)  ; Frc(value)
  %7835 = call float @dx.op.unary.f32(i32 27, float %7834)  ; Round_ni(value)
  %7836 = call float @dx.op.unary.f32(i32 22, float %7834)  ; Frc(value)
  %7837 = fmul fast float %7836, 2.000000e+00
  %7838 = fadd fast float %7837, -1.000000e+00
  %7839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %38, float %7702, float %7703, float %7835, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7840 = extractvalue %dx.types.ResRet.f32 %7839, 0
  %7841 = extractvalue %dx.types.ResRet.f32 %7839, 1
  %7842 = extractvalue %dx.types.ResRet.f32 %7839, 2
  %7843 = extractvalue %dx.types.ResRet.f32 %7839, 3
  %7844 = fadd fast float %7840, -5.000000e-01
  %7845 = fadd fast float %7842, -5.000000e-01
  %7846 = fmul fast float %7844, 0xBFD5555560000000
  %7847 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7845, float %7846)  ; FMad(a,b,c)
  %7848 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7841, float 0.000000e+00)  ; FMad(a,b,c)
  %7849 = fadd fast float %7848, %7843
  %7850 = fmul fast float %7844, -7.500000e-01
  %7851 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7845, float %7850)  ; FMad(a,b,c)
  %7852 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7841, float 0.000000e+00)  ; FMad(a,b,c)
  %7853 = fadd fast float %7852, %7843
  %7854 = call float @dx.op.binary.f32(i32 35, float %7847, float -1.000000e+00)  ; FMax(a,b)
  %7855 = call float @dx.op.binary.f32(i32 35, float %7849, float -1.000000e+00)  ; FMax(a,b)
  %7856 = call float @dx.op.binary.f32(i32 35, float %7851, float -1.000000e+00)  ; FMax(a,b)
  %7857 = call float @dx.op.binary.f32(i32 35, float %7853, float -1.000000e+00)  ; FMax(a,b)
  %7858 = call float @dx.op.binary.f32(i32 36, float %7854, float 1.000000e+00)  ; FMin(a,b)
  %7859 = call float @dx.op.binary.f32(i32 36, float %7855, float 1.000000e+00)  ; FMin(a,b)
  %7860 = call float @dx.op.binary.f32(i32 36, float %7856, float 1.000000e+00)  ; FMin(a,b)
  %7861 = call float @dx.op.binary.f32(i32 36, float %7857, float 1.000000e+00)  ; FMin(a,b)
  %7862 = fcmp fast olt float %7858, 0x3FEFFF8020000000
  br i1 %7862, label %7863, label %7978, !dx.controlflow.hints !156

; <label>:7863                                    ; preds = %7830
  %7864 = extractvalue %dx.types.CBufRet.f32 %7748, 3
  %7865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7866 = extractvalue %dx.types.CBufRet.f32 %7865, 0
  %7867 = extractvalue %dx.types.CBufRet.f32 %7865, 1
  %7868 = extractvalue %dx.types.CBufRet.f32 %7865, 2
  %7869 = extractvalue %dx.types.CBufRet.f32 %7865, 3
  %7870 = fsub fast float %7866, %7858
  %7871 = fsub fast float %7867, %7859
  %7872 = fsub fast float %7868, %7860
  %7873 = fsub fast float %7869, %7861
  %7874 = fmul fast float %7870, %7864
  %7875 = fmul fast float %7871, %7864
  %7876 = fmul fast float %7872, %7864
  %7877 = fmul fast float %7873, %7864
  %7878 = fadd fast float %7874, %7858
  %7879 = fadd fast float %7875, %7859
  %7880 = fsub fast float -0.000000e+00, %7879
  %7881 = fadd fast float %7876, %7860
  %7882 = fadd fast float %7877, %7861
  %7883 = fmul fast float %7878, %7878
  %7884 = fsub fast float %7879, %7883
  %7885 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7884)  ; FMax(a,b)
  %7886 = fdiv fast float 1.000000e+00, %7885
  %7887 = fmul fast float %7879, %7878
  %7888 = fsub fast float %7881, %7887
  %7889 = fsub fast float %7838, %7878
  %7890 = fmul fast float %7838, %7838
  %7891 = fsub fast float %7890, %7879
  %7892 = fmul fast float %7889, %7886
  %7893 = fmul fast float %7892, %7888
  %7894 = fsub fast float %7891, %7893
  %7895 = fmul fast float %7879, %7879
  %7896 = fsub fast float %7882, %7895
  %7897 = fmul fast float %7888, %7888
  %7898 = fmul fast float %7897, %7886
  %7899 = fsub fast float %7896, %7898
  %7900 = fdiv fast float %7894, %7899
  %7901 = fmul fast float %7888, %7900
  %7902 = fsub fast float %7889, %7901
  %7903 = fmul fast float %7902, %7886
  %7904 = fmul fast float %7903, %7878
  %7905 = fsub fast float 1.000000e+00, %7904
  %7906 = fmul fast float %7879, %7900
  %7907 = fsub fast float %7905, %7906
  %7908 = fmul fast float %7903, %7903
  %7909 = fmul fast float %7900, 4.000000e+00
  %7910 = fmul fast float %7909, %7907
  %7911 = fsub fast float %7908, %7910
  %7912 = call float @dx.op.unary.f32(i32 24, float %7911)  ; Sqrt(value)
  %7913 = fcmp fast oge float %7903, 0.000000e+00
  %7914 = fsub fast float -0.000000e+00, %7912
  %7915 = select i1 %7913, float %7914, float %7912
  %7916 = fsub fast float %7915, %7903
  %7917 = fdiv fast float %7916, %7900
  %7918 = fdiv fast float %7907, %7916
  %7919 = fmul fast float %7917, 5.000000e-01
  %7920 = fmul fast float %7918, 2.000000e+00
  %7921 = select i1 %7913, float %7919, float %7920
  %7922 = select i1 %7913, float %7920, float %7919
  %7923 = call float @dx.op.binary.f32(i32 35, float %7921, float %7922)  ; FMax(a,b)
  %7924 = call float @dx.op.binary.f32(i32 36, float %7921, float %7922)  ; FMin(a,b)
  %7925 = fcmp fast ogt float %7838, %7924
  br i1 %7925, label %7926, label %7936

; <label>:7926                                    ; preds = %7863
  %7927 = fsub fast float %7838, %7924
  %7928 = fsub fast float %7923, %7924
  %7929 = fmul fast float %7927, %7928
  %7930 = fmul fast float %7923, %7838
  %7931 = fadd fast float %7923, %7838
  %7932 = fmul fast float %7931, %7878
  %7933 = fadd fast float %7930, %7879
  %7934 = fsub fast float %7933, %7932
  %7935 = fdiv fast float %7934, %7929
  br label %7936

; <label>:7936                                    ; preds = %7926, %7863
  %7937 = phi float [ %7935, %7926 ], [ 0.000000e+00, %7863 ]
  %7938 = fcmp fast ogt float %7838, %7923
  %7939 = fsub fast float %7838, %7923
  br i1 %7938, label %7940, label %7950

; <label>:7940                                    ; preds = %7936
  %7941 = fsub fast float %7923, %7924
  %7942 = fmul fast float %7941, %7939
  %7943 = fmul fast float %7924, %7838
  %7944 = fadd fast float %7924, %7838
  %7945 = fmul fast float %7944, %7878
  %7946 = fsub fast float %7880, %7943
  %7947 = fadd fast float %7946, %7945
  %7948 = fdiv fast float %7947, %7942
  %7949 = fadd fast float %7948, %7937
  br label %7950

; <label>:7950                                    ; preds = %7940, %7936
  %7951 = phi float [ %7949, %7940 ], [ %7937, %7936 ]
  %7952 = fsub fast float %7838, %7924
  %7953 = fmul fast float %7952, %7939
  %7954 = fmul fast float %7924, %7923
  %7955 = fadd fast float %7924, %7923
  %7956 = fmul fast float %7955, %7878
  %7957 = fadd fast float %7954, %7879
  %7958 = fsub fast float %7957, %7956
  %7959 = fdiv fast float %7958, %7953
  %7960 = call float @dx.op.unary.f32(i32 7, float %7951)  ; Saturate(value)
  %7961 = fcmp fast oeq float %6645, 0.000000e+00
  %7962 = extractvalue %dx.types.CBufRet.f32 %7748, 0
  %7963 = fcmp fast oeq float %7962, 0.000000e+00
  %7964 = or i1 %7961, %7963
  %7965 = fmul fast float %7962, 2.000000e+00
  %7966 = fadd fast float %7749, %7750
  %7967 = fdiv fast float %7966, %7965
  %7968 = call float @dx.op.unary.f32(i32 7, float %7967)  ; Saturate(value)
  %7969 = fmul fast float %7968, 2.000000e+00
  %7970 = fsub fast float 3.000000e+00, %7969
  %7971 = fmul fast float %7968, %7968
  %7972 = fmul fast float %7971, %7970
  %7973 = select i1 %7964, float 1.000000e+00, float %7972
  %7974 = fmul fast float %7959, %6645
  %7975 = fadd fast float %7960, %7974
  %7976 = call float @dx.op.unary.f32(i32 7, float %7975)  ; Saturate(value)
  %7977 = fmul fast float %7973, %7976
  br label %7978

; <label>:7978                                    ; preds = %7950, %7830
  %7979 = phi float [ %7977, %7950 ], [ 0.000000e+00, %7830 ]
  %7980 = fsub fast float 1.000000e+00, %7979
  %7981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %38, float %7702, float %7703, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7982 = extractvalue %dx.types.ResRet.f32 %7981, 0
  %7983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7984 = extractvalue %dx.types.CBufRet.i32 %7983, 2
  %7985 = icmp eq i32 %7984, 0
  br i1 %7985, label %7991, label %7986

; <label>:7986                                    ; preds = %7978
  %7987 = call float @dx.op.unary.f32(i32 7, float %7979)  ; Saturate(value)
  %7988 = fadd fast float %7982, -1.000000e+00
  %7989 = fmul fast float %7987, %7988
  %7990 = fadd fast float %7989, 1.000000e+00
  br label %7991

; <label>:7991                                    ; preds = %7986, %7978
  %7992 = phi float [ %7990, %7986 ], [ %7980, %7978 ]
  br i1 %7756, label %7993, label %8011

; <label>:7993                                    ; preds = %7991
  %7994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7995 = extractvalue %dx.types.CBufRet.f32 %7994, 1
  %7996 = fsub fast float %7831, %7995
  %7997 = call float @dx.op.unary.f32(i32 7, float %7996)  ; Saturate(value)
  %7998 = fsub fast float %7831, %7755
  %7999 = call float @dx.op.unary.f32(i32 7, float %7998)  ; Saturate(value)
  %8000 = fsub fast float %7997, %7999
  %8001 = fsub fast float %7833, %7999
  %8002 = fdiv fast float %8001, %8000
  %8003 = call float @dx.op.unary.f32(i32 7, float %8002)  ; Saturate(value)
  %8004 = fmul fast float %8003, 2.000000e+00
  %8005 = fsub fast float 3.000000e+00, %8004
  %8006 = fsub fast float %7982, %7992
  %8007 = fmul fast float %8003, %8003
  %8008 = fmul fast float %8007, %8006
  %8009 = fmul fast float %8008, %8005
  %8010 = fadd fast float %8009, %7992
  br label %8011

; <label>:8011                                    ; preds = %7993, %7991
  %8012 = phi float [ %8010, %7993 ], [ %7992, %7991 ]
  %8013 = call float @dx.op.binary.f32(i32 35, float %7982, float %8012)  ; FMax(a,b)
  %8014 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8015 = extractvalue %dx.types.CBufRet.i32 %8014, 2
  %8016 = and i32 %8015, 1
  %8017 = icmp eq i32 %8016, 0
  %8018 = fcmp fast une float %8013, 1.000000e+00
  %8019 = and i1 %8018, %8017
  br i1 %8019, label %8020, label %8037

; <label>:8020                                    ; preds = %8011
  %8021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %38, float %7702, float %7703, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8022 = extractvalue %dx.types.ResRet.f32 %8021, 0
  %8023 = extractvalue %dx.types.ResRet.f32 %8021, 1
  %8024 = extractvalue %dx.types.ResRet.f32 %8021, 2
  %8025 = fmul fast float %5558, %8022
  %8026 = fmul fast float %5558, %8023
  %8027 = fmul fast float %5558, %8024
  %8028 = fcmp fast ogt float %7982, 0x3FEFFF2E40000000
  %8029 = fsub fast float 1.000000e+00, %8013
  %8030 = fsub fast float 1.000000e+00, %7982
  %8031 = fdiv fast float %8029, %8030
  %8032 = call float @dx.op.unary.f32(i32 7, float %8031)  ; Saturate(value)
  %8033 = select i1 %8028, float 0.000000e+00, float %8032
  %8034 = fmul fast float %8025, %8033
  %8035 = fmul fast float %8026, %8033
  %8036 = fmul fast float %8027, %8033
  br label %8037

; <label>:8037                                    ; preds = %8020, %8011
  %8038 = phi float [ 0.000000e+00, %8011 ], [ %8034, %8020 ]
  %8039 = phi float [ 0.000000e+00, %8011 ], [ %8035, %8020 ]
  %8040 = phi float [ 0.000000e+00, %8011 ], [ %8036, %8020 ]
  %8041 = fmul fast float %8013, %7680
  %8042 = call float @dx.op.dot3.f32(i32 55, float %8013, float %8013, float %8013, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8043 = call float @dx.op.dot3.f32(i32 55, float %8038, float %8039, float %8040, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8044 = select i1 %206, float %8042, float %8013
  %8045 = select i1 %206, float 1.000000e+00, float %8013
  %8046 = select i1 %206, float %8043, float %8038
  %8047 = select i1 %206, float 0.000000e+00, float %8039
  %8048 = select i1 %206, float 0.000000e+00, float %8040
  %8049 = fmul fast float %8044, %7692
  %8050 = fmul fast float %8044, %7693
  %8051 = fmul fast float %8045, %7694
  %8052 = fadd fast float %8049, %8046
  %8053 = fadd fast float %8050, %8047
  %8054 = fadd fast float %8048, %8051
  %8055 = fmul fast float %8044, %7695
  %8056 = fmul fast float %8044, %7696
  %8057 = fmul fast float %8045, %7697
  br label %8058

; <label>:8058                                    ; preds = %8037, %7701, %7673, %6905
  %8059 = phi float [ %6910, %6905 ], [ %7692, %7673 ], [ %8052, %8037 ], [ %7692, %7701 ]
  %8060 = phi float [ %6911, %6905 ], [ %7693, %7673 ], [ %8053, %8037 ], [ %7693, %7701 ]
  %8061 = phi float [ %6912, %6905 ], [ %7694, %7673 ], [ %8054, %8037 ], [ %7694, %7701 ]
  %8062 = phi float [ %6913, %6905 ], [ %7695, %7673 ], [ %8055, %8037 ], [ %7695, %7701 ]
  %8063 = phi float [ %6914, %6905 ], [ %7696, %7673 ], [ %8056, %8037 ], [ %7696, %7701 ]
  %8064 = phi float [ %6915, %6905 ], [ %7697, %7673 ], [ %8057, %8037 ], [ %7697, %7701 ]
  %8065 = phi float [ %6916, %6905 ], [ %7680, %7673 ], [ %8041, %8037 ], [ %7680, %7701 ]
  %8066 = fmul fast float %5503, %90
  %8067 = fmul fast float %5504, %91
  %8068 = call float @dx.op.unary.f32(i32 7, float %8066)  ; Saturate(value)
  %8069 = call float @dx.op.unary.f32(i32 7, float %8067)  ; Saturate(value)
  %8070 = select i1 %6655, i32 2, i32 0
  %8071 = or i32 %8070, 1
  %8072 = uitofp i32 %8071 to float
  %8073 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %8068, float %8069, float %8072, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8074 = extractvalue %dx.types.ResRet.f32 %8073, 0
  %8075 = extractvalue %dx.types.ResRet.f32 %8073, 1
  %8076 = extractvalue %dx.types.ResRet.f32 %8073, 2
  %8077 = extractvalue %dx.types.ResRet.f32 %8073, 3
  %8078 = add nuw nsw i32 %8070, 2
  %8079 = uitofp i32 %8078 to float
  %8080 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %8068, float %8069, float %8079, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8081 = extractvalue %dx.types.ResRet.f32 %8080, 0
  %8082 = extractvalue %dx.types.ResRet.f32 %8080, 1
  %8083 = extractvalue %dx.types.ResRet.f32 %8080, 2
  %8084 = extractvalue %dx.types.ResRet.f32 %8080, 3
  %8085 = call float @dx.op.binary.f32(i32 35, float %8075, float %8076)  ; FMax(a,b)
  %8086 = call float @dx.op.binary.f32(i32 35, float %8074, float %8085)  ; FMax(a,b)
  %8087 = call float @dx.op.binary.f32(i32 35, float %8086, float %8077)  ; FMax(a,b)
  %8088 = call float @dx.op.binary.f32(i32 36, float %8082, float %8083)  ; FMin(a,b)
  %8089 = call float @dx.op.binary.f32(i32 36, float %8081, float %8088)  ; FMin(a,b)
  %8090 = call float @dx.op.binary.f32(i32 36, float %8089, float %8084)  ; FMin(a,b)
  %8091 = fmul fast float %8087, 2.550000e+02
  %8092 = fadd fast float %8091, 0x3F70101020000000
  %8093 = fptoui float %8092 to i32
  %8094 = fmul fast float %8090, 2.550000e+02
  %8095 = fadd fast float %8094, 0x3F70101020000000
  %8096 = fptoui float %8095 to i32
  %8097 = icmp ult i32 %8093, %8096
  br i1 %8097, label %8098, label %8265

; <label>:8098                                    ; preds = %8058
  %8099 = fcmp fast ogt float %80, 9.843750e-01
  %8100 = fadd fast float %6909, -4.000000e+00
  %8101 = select i1 %8099, float -4.000000e+00, float %8100
  %8102 = call float @dx.op.binary.f32(i32 35, float %8101, float 0.000000e+00)  ; FMax(a,b)
  %8103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8104 = extractvalue %dx.types.CBufRet.f32 %8103, 0
  %8105 = fadd fast float %8104, %8102
  %8106 = extractvalue %dx.types.CBufRet.f32 %8103, 2
  %8107 = fmul fast float %8105, %8106
  %8108 = call float @dx.op.unary.f32(i32 23, float %8107)  ; Log(value)
  %8109 = extractvalue %dx.types.CBufRet.f32 %8103, 3
  %8110 = fmul fast float %8109, %8108
  %8111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8112 = extractvalue %dx.types.CBufRet.f32 %8111, 2
  %8113 = fmul fast float %8110, %8112
  %8114 = call float @dx.op.unary.f32(i32 7, float %8113)  ; Saturate(value)
  %8115 = uitofp i32 %8093 to float
  %8116 = uitofp i32 %8096 to float
  %8117 = fadd fast float %8115, 5.000000e-01
  %8118 = fadd fast float %8116, 5.000000e-01
  %8119 = fmul fast float %8112, %8117
  %8120 = fmul fast float %8112, %8118
  %8121 = fadd fast float %8119, 0x3F0FFB4800000000
  %8122 = fadd fast float %8120, 0xBF0FFB4800000000
  %8123 = call float @dx.op.binary.f32(i32 35, float %8114, float %8121)  ; FMax(a,b)
  %8124 = call float @dx.op.binary.f32(i32 36, float %8123, float %8122)  ; FMin(a,b)
  %8125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8126 = extractvalue %dx.types.CBufRet.f32 %8125, 1
  %8127 = extractvalue %dx.types.CBufRet.f32 %8125, 2
  %8128 = extractvalue %dx.types.CBufRet.f32 %8125, 0
  %8129 = select i1 %6655, float %8128, float 0.000000e+00
  %8130 = fmul fast float %8126, %8124
  %8131 = fadd fast float %8129, %8130
  %8132 = fadd fast float %8129, %8127
  %8133 = fsub fast float %8126, %8127
  %8134 = fadd fast float %8133, %8129
  %8135 = call float @dx.op.binary.f32(i32 35, float %8131, float %8132)  ; FMax(a,b)
  %8136 = call float @dx.op.binary.f32(i32 36, float %8135, float %8134)  ; FMin(a,b)
  %8137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %36, float %8068, float %8069, float %8136, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8138 = extractvalue %dx.types.ResRet.f32 %8137, 0
  %8139 = extractvalue %dx.types.ResRet.f32 %8137, 1
  %8140 = extractvalue %dx.types.ResRet.f32 %8137, 2
  %8141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8142 = extractvalue %dx.types.CBufRet.i32 %8141, 0
  %8143 = extractvalue %dx.types.CBufRet.i32 %8141, 1
  %8144 = uitofp i32 %8142 to float
  %8145 = uitofp i32 %8143 to float
  %8146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8147 = extractvalue %dx.types.CBufRet.f32 %8146, 0
  %8148 = extractvalue %dx.types.CBufRet.f32 %8146, 1
  %8149 = fmul fast float %8144, %8068
  %8150 = fmul fast float %8145, %8069
  %8151 = fadd fast float %8149, -5.000000e-01
  %8152 = fadd fast float %8150, -5.000000e-01
  %8153 = call float @dx.op.unary.f32(i32 22, float %8151)  ; Frc(value)
  %8154 = call float @dx.op.unary.f32(i32 22, float %8152)  ; Frc(value)
  %8155 = fmul fast float %8153, %8153
  %8156 = fmul fast float %8155, %8153
  %8157 = fsub fast float 3.000000e+00, %8153
  %8158 = fmul fast float %8155, %8157
  %8159 = fmul fast float %8153, 3.000000e+00
  %8160 = fmul fast float %8156, 3.000000e+00
  %8161 = fmul fast float %8155, 6.000000e+00
  %8162 = fsub fast float %8160, %8161
  %8163 = fadd fast float %8162, 4.000000e+00
  %8164 = fmul fast float %8163, 0x3FC5555560000000
  %8165 = fmul fast float %8156, -3.000000e+00
  %8166 = fadd fast float %8155, %8153
  %8167 = fmul fast float %8166, 3.000000e+00
  %8168 = fadd fast float %8165, 1.000000e+00
  %8169 = fadd fast float %8168, %8167
  %8170 = fmul fast float %8156, 0x3FC5555560000000
  %8171 = fmul fast float %8154, %8154
  %8172 = fmul fast float %8171, %8154
  %8173 = fsub fast float 3.000000e+00, %8154
  %8174 = fmul fast float %8171, %8173
  %8175 = fmul fast float %8154, 3.000000e+00
  %8176 = fmul fast float %8172, 3.000000e+00
  %8177 = fmul fast float %8171, 6.000000e+00
  %8178 = fsub fast float %8176, %8177
  %8179 = fadd fast float %8178, 4.000000e+00
  %8180 = fmul fast float %8179, 0x3FC5555560000000
  %8181 = fmul fast float %8172, -3.000000e+00
  %8182 = fadd fast float %8171, %8154
  %8183 = fmul fast float %8182, 3.000000e+00
  %8184 = fadd fast float %8181, 1.000000e+00
  %8185 = fadd fast float %8184, %8183
  %8186 = fmul fast float %8172, 0x3FC5555560000000
  %8187 = fadd fast float %8153, 1.000000e+00
  %8188 = fsub fast float 1.000000e+00, %8159
  %8189 = fadd fast float %8188, %8158
  %8190 = fadd fast float %8189, %8163
  %8191 = fmul fast float %8190, 0x3FC5555560000000
  %8192 = fdiv fast float %8164, %8191
  %8193 = fsub fast float %8187, %8192
  %8194 = fsub fast float 1.000000e+00, %8153
  %8195 = fadd fast float %8169, %8156
  %8196 = fmul fast float %8195, 0x3FC5555560000000
  %8197 = fdiv fast float %8170, %8196
  %8198 = fadd fast float %8194, %8197
  %8199 = fadd fast float %8154, 1.000000e+00
  %8200 = fsub fast float 1.000000e+00, %8175
  %8201 = fadd fast float %8200, %8174
  %8202 = fadd fast float %8201, %8179
  %8203 = fmul fast float %8202, 0x3FC5555560000000
  %8204 = fdiv fast float %8180, %8203
  %8205 = fsub fast float %8199, %8204
  %8206 = fsub fast float 1.000000e+00, %8154
  %8207 = fadd fast float %8185, %8172
  %8208 = fmul fast float %8207, 0x3FC5555560000000
  %8209 = fdiv fast float %8186, %8208
  %8210 = fadd fast float %8209, %8206
  %8211 = fmul fast float %8193, %8147
  %8212 = fsub fast float %8068, %8211
  %8213 = fmul fast float %8198, %8147
  %8214 = fadd fast float %8213, %8068
  %8215 = fmul fast float %8210, %8148
  %8216 = fadd fast float %8215, %8069
  %8217 = fmul fast float %8205, %8148
  %8218 = fsub fast float %8069, %8217
  %8219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %8212, float %8218, float %8136, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8220 = extractvalue %dx.types.ResRet.f32 %8219, 0
  %8221 = extractvalue %dx.types.ResRet.f32 %8219, 1
  %8222 = extractvalue %dx.types.ResRet.f32 %8219, 2
  %8223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %8214, float %8218, float %8136, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8224 = extractvalue %dx.types.ResRet.f32 %8223, 0
  %8225 = extractvalue %dx.types.ResRet.f32 %8223, 1
  %8226 = extractvalue %dx.types.ResRet.f32 %8223, 2
  %8227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %8212, float %8216, float %8136, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8228 = extractvalue %dx.types.ResRet.f32 %8227, 0
  %8229 = extractvalue %dx.types.ResRet.f32 %8227, 1
  %8230 = extractvalue %dx.types.ResRet.f32 %8227, 2
  %8231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %8214, float %8216, float %8136, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8232 = extractvalue %dx.types.ResRet.f32 %8231, 0
  %8233 = extractvalue %dx.types.ResRet.f32 %8231, 1
  %8234 = extractvalue %dx.types.ResRet.f32 %8231, 2
  %8235 = fsub fast float %8228, %8220
  %8236 = fsub fast float %8229, %8221
  %8237 = fsub fast float %8230, %8222
  %8238 = fmul fast float %8235, %8208
  %8239 = fmul fast float %8236, %8208
  %8240 = fmul fast float %8237, %8208
  %8241 = fadd fast float %8238, %8220
  %8242 = fadd fast float %8239, %8221
  %8243 = fadd fast float %8240, %8222
  %8244 = fsub fast float %8232, %8224
  %8245 = fsub fast float %8233, %8225
  %8246 = fsub fast float %8234, %8226
  %8247 = fmul fast float %8244, %8208
  %8248 = fmul fast float %8245, %8208
  %8249 = fmul fast float %8246, %8208
  %8250 = fsub fast float %8224, %8241
  %8251 = fadd fast float %8250, %8247
  %8252 = fsub fast float %8225, %8242
  %8253 = fadd fast float %8252, %8248
  %8254 = fsub fast float %8226, %8243
  %8255 = fadd fast float %8254, %8249
  %8256 = fmul fast float %8251, %8196
  %8257 = fmul fast float %8253, %8196
  %8258 = fmul fast float %8255, %8196
  %8259 = fadd fast float %8256, %8241
  %8260 = fadd fast float %8257, %8242
  %8261 = fadd fast float %8258, %8243
  %8262 = fmul fast float %8259, %5558
  %8263 = fmul fast float %8260, %5558
  %8264 = fmul fast float %8261, %5558
  br label %8265

; <label>:8265                                    ; preds = %8098, %8058
  %8266 = phi float [ %8138, %8098 ], [ 1.000000e+00, %8058 ]
  %8267 = phi float [ %8139, %8098 ], [ 1.000000e+00, %8058 ]
  %8268 = phi float [ %8140, %8098 ], [ 1.000000e+00, %8058 ]
  %8269 = phi float [ %8262, %8098 ], [ 0.000000e+00, %8058 ]
  %8270 = phi float [ %8263, %8098 ], [ 0.000000e+00, %8058 ]
  %8271 = phi float [ %8264, %8098 ], [ 0.000000e+00, %8058 ]
  %8272 = fmul fast float %8266, %8065
  %8273 = call float @dx.op.dot3.f32(i32 55, float %8266, float %8267, float %8268, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8274 = call float @dx.op.dot3.f32(i32 55, float %8269, float %8270, float %8271, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8275 = select i1 %206, float %8273, float %8266
  %8276 = select i1 %206, float %8273, float %8267
  %8277 = select i1 %206, float 1.000000e+00, float %8268
  %8278 = select i1 %206, float %8274, float %8269
  %8279 = select i1 %206, float 0.000000e+00, float %8270
  %8280 = select i1 %206, float 0.000000e+00, float %8271
  %8281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8282 = extractvalue %dx.types.CBufRet.i32 %8281, 3
  %8283 = and i32 %8282, 3
  %8284 = icmp ne i32 %8283, 0
  %8285 = and i32 %8282, 4
  %8286 = icmp ne i32 %8285, 0
  %8287 = and i1 %8284, %8286
  %8288 = and i1 %206, %8287
  br i1 %8288, label %8289, label %8295

; <label>:8289                                    ; preds = %8265
  %8290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8291 = extractvalue %dx.types.CBufRet.f32 %8290, 1
  %8292 = fadd fast float %8272, -1.000000e+00
  %8293 = fmul fast float %8291, %8292
  %8294 = fadd fast float %8293, 1.000000e+00
  br label %8295

; <label>:8295                                    ; preds = %8289, %8265
  %8296 = phi float [ %8294, %8289 ], [ %8272, %8265 ]
  %8297 = fadd fast float %8062, %8059
  %8298 = fmul fast float %8275, %8297
  %8299 = fadd fast float %8298, %8278
  %8300 = fadd fast float %8063, %8060
  %8301 = fmul fast float %8276, %8300
  %8302 = fadd fast float %8301, %8279
  %8303 = extractvalue %dx.types.CBufRet.f32 %5557, 0
  br i1 %206, label %8304, label %8319

; <label>:8304                                    ; preds = %8295
  %8305 = fadd fast float %8299, %8302
  %8306 = fmul fast float %8303, %8305
  %8307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8308 = extractvalue %dx.types.CBufRet.f32 %8307, 3
  %8309 = extractvalue %dx.types.CBufRet.f32 %6637, 1
  %8310 = fsub fast float %6642, %6636
  %8311 = fadd fast float %8310, %6643
  %8312 = fsub fast float %8311, %8309
  %8313 = extractvalue %dx.types.CBufRet.f32 %6637, 2
  %8314 = fmul fast float %8312, %8313
  %8315 = call float @dx.op.unary.f32(i32 7, float %8314)  ; Saturate(value)
  %8316 = fsub fast float %8315, %8308
  %8317 = fmul fast float %8316, %8296
  %8318 = fadd fast float %8317, %8308
  br label %8343

; <label>:8319                                    ; preds = %8295
  %8320 = fadd fast float %8064, %8061
  %8321 = fmul fast float %8277, %8320
  %8322 = fadd fast float %8321, %8280
  %8323 = fmul fast float %8303, %8299
  %8324 = fmul fast float %8303, %8302
  %8325 = fmul fast float %8303, %8322
  %8326 = call float @dx.op.binary.f32(i32 35, float %8324, float %8325)  ; FMax(a,b)
  %8327 = call float @dx.op.binary.f32(i32 35, float %8323, float %8326)  ; FMax(a,b)
  %8328 = call float @dx.op.binary.f32(i32 35, float %8327, float 1.000000e+00)  ; FMax(a,b)
  %8329 = fcmp fast ugt float %8328, 0x3F10000000000000
  br i1 %8329, label %8331, label %8330

; <label>:8330                                    ; preds = %8319
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8331

; <label>:8331                                    ; preds = %8330, %8319
  %8332 = add i32 %44, 356
  %8333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %8332, i32 undef)  ; BufferLoad(srv,index,wot)
  %8334 = extractvalue %dx.types.ResRet.i32 %8333, 0
  %8335 = and i32 %8334, 32
  %8336 = icmp eq i32 %8335, 0
  br i1 %8336, label %8343, label %8337

; <label>:8337                                    ; preds = %8331
  %8338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8339 = extractvalue %dx.types.CBufRet.f32 %8338, 0
  %8340 = fmul fast float %8339, 0x3FE99999A0000000
  %8341 = fadd fast float %8339, %8323
  %8342 = fadd fast float %8340, %8325
  br label %8343

; <label>:8343                                    ; preds = %8337, %8331, %8304
  %8344 = phi float [ %8306, %8304 ], [ %8341, %8337 ], [ %8323, %8331 ]
  %8345 = phi float [ %8318, %8304 ], [ %8324, %8337 ], [ %8324, %8331 ]
  %8346 = phi float [ 1.000000e+00, %8304 ], [ %8342, %8337 ], [ %8325, %8331 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8347 = call float @dx.op.binary.f32(i32 36, float %8344, float 3.225500e+04)  ; FMin(a,b)
  %8348 = call float @dx.op.binary.f32(i32 36, float %8345, float 3.225500e+04)  ; FMin(a,b)
  %8349 = call float @dx.op.binary.f32(i32 36, float %8346, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8347)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8348)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8349)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!57}
!dx.entryPoints = !{!58}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !45, !48}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
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
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!25 = !{i32 18, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !26}
!26 = !{i32 0, i32 5}
!27 = !{i32 19, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !32}
!32 = !{i32 0, i32 14}
!33 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!34 = !{i32 25, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!35 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!36 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!37 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!38 = !{i32 29, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!39 = !{i32 30, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!40 = !{i32 31, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!41 = !{i32 32, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!42 = !{i32 33, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !32}
!43 = !{i32 34, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!45 = !{!46, !47}
!46 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!47 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56}
!49 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!50 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!51 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!52 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!53 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!54 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!55 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!56 = !{i32 7, %struct.SamplerState* undef, !"", i32 0, i32 6, i32 1, i32 0, null}
!57 = !{[46 x i32] [i32 44, i32 4, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !80}
!59 = !{!60, !78, null}
!60 = !{!61, !64, !65, !67, !69, !70, !71, !72, !73, !74, !75, !77}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 15}
!64 = !{i32 1, !"COLOR", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 1, i8 0, !63}
!65 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 2, i8 0, !66}
!66 = !{i32 3, i32 3}
!67 = !{i32 3, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 3, i8 0, !68}
!68 = !{i32 3, i32 7}
!69 = !{i32 4, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 4, i8 0, !63}
!70 = !{i32 5, !"SH_RED", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 5, i8 0, !63}
!71 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 6, i8 0, !63}
!72 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 7, i8 0, !63}
!73 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 2, i32 8, i8 0, !66}
!74 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 9, i8 0, !63}
!75 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !62, i8 1, i32 1, i8 4, i32 10, i8 0, !76}
!76 = !{i32 3, i32 13}
!77 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!78 = !{!79}
!79 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !63}
!80 = !{i32 0, i64 16}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = !{!88, !88, i64 0}
!88 = !{!"int", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C/C++ TBAA"}
!91 = !{!92, !94, !96, !98}
!92 = distinct !{!92, !93, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!93 = distinct !{!93, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!94 = distinct !{!94, !95, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!95 = distinct !{!95, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!96 = distinct !{!96, !97, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!97 = distinct !{!97, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!98 = distinct !{!98, !99, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!99 = distinct !{!99, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = !{!109, !109, i64 0}
!109 = !{!"float", !89, i64 0}
!110 = !{!111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!111 = distinct !{!111, !112, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!112 = distinct !{!112, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!113 = distinct !{!113, !114, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!114 = distinct !{!114, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!115 = distinct !{!115, !114, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!116 = distinct !{!116, !117, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!117 = distinct !{!117, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!118 = distinct !{!118, !117, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!119 = distinct !{!119, !117, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!120 = distinct !{!120, !121, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!121 = distinct !{!121, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!122 = distinct !{!122, !121, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!123 = distinct !{!123, !121, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!124 = distinct !{!124, !125, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!125 = distinct !{!125, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"\01?sort@@YAXAIAM00@Z: %c"}
!128 = distinct !{!128, !"\01?sort@@YAXAIAM00@Z"}
!129 = !{!130, !131, !111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!130 = distinct !{!130, !128, !"\01?sort@@YAXAIAM00@Z: %a"}
!131 = distinct !{!131, !128, !"\01?sort@@YAXAIAM00@Z: %b"}
!132 = !{!131}
!133 = !{!130, !127, !111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!134 = !{!130}
!135 = !{!131, !127, !111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!136 = !{!137}
!137 = distinct !{!137, !138, !"\01?sort@@YAXAIAM00@Z: %c"}
!138 = distinct !{!138, !"\01?sort@@YAXAIAM00@Z"}
!139 = !{!140, !141, !111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!140 = distinct !{!140, !138, !"\01?sort@@YAXAIAM00@Z: %a"}
!141 = distinct !{!141, !138, !"\01?sort@@YAXAIAM00@Z: %b"}
!142 = !{!141}
!143 = !{!140, !137, !111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!144 = !{!140}
!145 = !{!141, !137, !111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 2}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}

