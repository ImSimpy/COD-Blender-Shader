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
; shader hash: d4cfe69beb40a2374a95f7242d57169f
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
; Number of inputs: 44, outputs: 8
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
  %148 = add i32 %44, 360
  %149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %148, i32 undef)  ; BufferLoad(srv,index,wot)
  %150 = extractvalue %dx.types.ResRet.i32 %149, 0
  %151 = extractvalue %dx.types.ResRet.i32 %149, 1
  %152 = extractvalue %dx.types.ResRet.i32 %149, 2
  %153 = extractvalue %dx.types.ResRet.i32 %149, 3
  %154 = bitcast i32 %150 to float
  %155 = bitcast i32 %151 to float
  %156 = bitcast i32 %152 to float
  %157 = bitcast i32 %153 to float
  %158 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %159 = call float @dx.op.unary.f32(i32 25, float %158)  ; Rsqrt(value)
  %160 = fmul fast float %159, %97
  %161 = fmul fast float %159, %98
  %162 = fmul fast float %159, %99
  %163 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %164 = call float @dx.op.unary.f32(i32 25, float %163)  ; Rsqrt(value)
  %165 = fmul fast float %164, %145
  %166 = fmul fast float %164, %146
  %167 = fmul fast float %164, %147
  %168 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %160, float %161, float %162)  ; Dot3(ax,ay,az,bx,by,bz)
  %169 = fmul fast float %168, %168
  %170 = fmul fast float %169, %156
  %171 = fadd fast float %170, %157
  %172 = call float @dx.op.unary.f32(i32 7, float %171)  ; Saturate(value)
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 3
  %175 = fmul fast float %174, %163
  %176 = fsub fast float %154, %175
  %177 = fmul fast float %176, %155
  %178 = call float @dx.op.unary.f32(i32 7, float %177)  ; Saturate(value)
  %179 = fmul fast float %178, %172
  %180 = fmul fast float %90, 5.000000e-01
  %181 = fmul fast float %91, 5.000000e-01
  %182 = fptosi float %180 to i32
  %183 = fptosi float %181 to i32
  %184 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %182, i32 %183, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = lshr i32 %185, 18
  %187 = uitofp i32 %186 to float
  %188 = fmul fast float %187, 0x3F4C00EBA0000000
  %189 = call float @dx.op.unary.f32(i32 21, float %188)  ; Exp(value)
  %190 = fadd fast float %189, -1.000000e+00
  %191 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %18, i32 0)  ; GetDimensions(handle,mipLevel)
  %192 = extractvalue %dx.types.Dimensions %191, 0
  %193 = sitofp i32 %192 to float
  %194 = extractvalue %dx.types.Dimensions %191, 1
  %195 = sitofp i32 %194 to float
  %196 = fcmp fast oge float %180, %193
  %197 = fcmp fast oge float %181, %195
  %198 = or i1 %196, %197
  %199 = select i1 %198, float 0x4197782600000000, float %190
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %202 = extractvalue %dx.types.CBufRet.f32 %200, 3
  %203 = fmul fast float %201, %90
  %204 = fmul fast float %202, %91
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = and i32 %206, 114688
  %208 = icmp ne i32 %207, 0
  %209 = select i1 %208, float %203, float 0.000000e+00
  %210 = select i1 %208, float %204, float 0.000000e+00
  %211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %209, float %210, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = fmul fast float %212, 2.550000e+02
  %214 = fptoui float %213 to i32
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.i32 %216, 3
  %218 = and i32 %217, 3
  %219 = icmp ne i32 %218, 0
  %220 = and i32 %217, 4
  %221 = icmp ne i32 %220, 0
  %222 = and i1 %219, %221
  br i1 %222, label %223, label %234

; <label>:223                                     ; preds = %0
  %224 = extractvalue %dx.types.CBufRet.f32 %215, 3
  %225 = fmul fast float %224, %91
  %226 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %227 = fmul fast float %226, %90
  %228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %227, float %225, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = fsub fast float 1.000000e+00, %229
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %233 = fcmp fast olt float %230, %232
  br label %237

; <label>:234                                     ; preds = %0
  %235 = icmp eq i32 %220, 0
  %236 = and i1 %219, %235
  br label %237

; <label>:237                                     ; preds = %234, %223
  %238 = phi i1 [ %233, %223 ], [ %236, %234 ]
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %241 = fmul fast float %240, 0x3FE3C6EF40000000
  %242 = frem fast float %90, 2.560000e+02
  %243 = frem fast float %91, 2.560000e+02
  %244 = fptoui float %242 to i32
  %245 = fptoui float %243 to i32
  %246 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %244, i32 %245, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = fadd fast float %247, %241
  %250 = fadd fast float %248, %241
  %251 = call float @dx.op.unary.f32(i32 22, float %249)  ; Frc(value)
  %252 = call float @dx.op.unary.f32(i32 22, float %250)  ; Frc(value)
  %253 = add i32 %44, 156
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = shl i32 %255, 4
  %257 = and i32 %256, 32752
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = lshr i32 %255, 7
  %260 = and i32 %259, 32752
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = lshr i32 %255, 22
  %263 = shl nuw nsw i32 %262, 5
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = add i32 %44, 216
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = and i32 %267, 255
  %269 = uitofp i32 %268 to float
  %270 = fmul fast float %269, 0x3F70101020000000
  %271 = lshr i32 %267, 8
  %272 = and i32 %271, 255
  %273 = uitofp i32 %272 to float
  %274 = fmul fast float %273, 0x3F70101020000000
  %275 = lshr i32 %267, 16
  %276 = and i32 %275, 255
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F70101020000000
  %279 = add i32 %44, 36
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = and i32 %281, 65535
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %281, 16
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = add i32 %44, 288
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 65535
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %288, 16
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = fmul fast float %290, 0x3F50624DE0000000
  %294 = fmul fast float %292, 0x3F50624DE0000000
  %295 = add i32 %44, 172
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = shl i32 %297, 4
  %299 = and i32 %298, 32752
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %297, 7
  %302 = and i32 %301, 32752
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %297, 22
  %305 = shl nuw nsw i32 %304, 5
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = add i32 %44, 232
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 255
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %311, 0x3F70101020000000
  %313 = lshr i32 %309, 8
  %314 = and i32 %313, 255
  %315 = uitofp i32 %314 to float
  %316 = fmul fast float %315, 0x3F70101020000000
  %317 = lshr i32 %309, 16
  %318 = and i32 %317, 255
  %319 = uitofp i32 %318 to float
  %320 = fmul fast float %319, 0x3F70101020000000
  %321 = add i32 %44, 52
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = and i32 %323, 65535
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = lshr i32 %323, 16
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = add i32 %44, 304
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 65535
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %330, 16
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = fmul fast float %332, 0x3F50624DE0000000
  %336 = fmul fast float %334, 0x3F50624DE0000000
  %337 = add i32 %44, 188
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = shl i32 %339, 4
  %341 = and i32 %340, 32752
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %339, 7
  %344 = and i32 %343, 32752
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %339, 22
  %347 = shl nuw nsw i32 %346, 5
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = add i32 %44, 248
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 255
  %353 = uitofp i32 %352 to float
  %354 = fmul fast float %353, 0x3F70101020000000
  %355 = lshr i32 %351, 8
  %356 = and i32 %355, 255
  %357 = uitofp i32 %356 to float
  %358 = fmul fast float %357, 0x3F70101020000000
  %359 = lshr i32 %351, 16
  %360 = and i32 %359, 255
  %361 = uitofp i32 %360 to float
  %362 = fmul fast float %361, 0x3F70101020000000
  %363 = add i32 %44, 68
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = and i32 %365, 65535
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = lshr i32 %365, 16
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = add i32 %44, 320
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 65535
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %372, 16
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = fmul fast float %374, 0x3F50624DE0000000
  %378 = fmul fast float %376, 0x3F50624DE0000000
  %379 = add i32 %44, 204
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = shl i32 %381, 4
  %383 = and i32 %382, 32752
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = lshr i32 %381, 7
  %386 = and i32 %385, 32752
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = lshr i32 %381, 22
  %389 = shl nuw nsw i32 %388, 5
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = add i32 %44, 264
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 255
  %395 = uitofp i32 %394 to float
  %396 = fmul fast float %395, 0x3F70101020000000
  %397 = lshr i32 %393, 8
  %398 = and i32 %397, 255
  %399 = uitofp i32 %398 to float
  %400 = fmul fast float %399, 0x3F70101020000000
  %401 = lshr i32 %393, 16
  %402 = and i32 %401, 255
  %403 = uitofp i32 %402 to float
  %404 = fmul fast float %403, 0x3F70101020000000
  %405 = add i32 %44, 84
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 65535
  %409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %408)  ; LegacyF16ToF32(value)
  %410 = lshr i32 %407, 16
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = add i32 %44, 336
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %414, 65535
  %416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %415)  ; LegacyF16ToF32(value)
  %417 = lshr i32 %414, 16
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = fmul fast float %416, 0x3F50624DE0000000
  %420 = fmul fast float %418, 0x3F50624DE0000000
  %421 = add i32 %44, 348
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 32
  %425 = icmp eq i32 %424, 0
  %426 = and i32 %423, 64
  %427 = icmp eq i32 %426, 0
  %428 = and i32 %423, 128
  %429 = icmp eq i32 %428, 0
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 2
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %449, label %434

; <label>:434                                     ; preds = %237
  %435 = add i32 %44, 536
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = add i32 %437, 0
  %439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %438, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %440 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %439, %dx.types.Handle %87, float %72, float %73, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = extractvalue %dx.types.ResRet.f32 %440, 1
  %443 = extractvalue %dx.types.ResRet.f32 %440, 2
  %444 = extractvalue %dx.types.ResRet.f32 %440, 3
  %445 = fmul fast float %444, %74
  %446 = fmul fast float %441, %75
  %447 = fmul fast float %442, %76
  %448 = fmul fast float %443, %77
  br label %449

; <label>:449                                     ; preds = %434, %237
  %450 = phi float [ %77, %237 ], [ %448, %434 ]
  %451 = phi float [ %76, %237 ], [ %447, %434 ]
  %452 = phi float [ %75, %237 ], [ %446, %434 ]
  %453 = phi float [ %74, %237 ], [ %445, %434 ]
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 2
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %477, label %458

; <label>:458                                     ; preds = %449
  %459 = add i32 %44, 44
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = and i32 %461, 1
  %463 = icmp ne i32 %462, 0
  %464 = select i1 %463, float %452, float 1.000000e+00
  %465 = add i32 %44, 60
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = and i32 %467, 1
  %469 = icmp ne i32 %468, 0
  %470 = select i1 %469, float %451, float 1.000000e+00
  %471 = add i32 %44, 76
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = and i32 %473, 1
  %475 = icmp ne i32 %474, 0
  %476 = select i1 %475, float %450, float 1.000000e+00
  br label %477

; <label>:477                                     ; preds = %458, %449
  %478 = phi float [ %450, %449 ], [ %476, %458 ]
  %479 = phi float [ %451, %449 ], [ %470, %458 ]
  %480 = phi float [ %452, %449 ], [ %464, %458 ]
  %481 = lshr i32 %455, 20
  %482 = and i32 %481, 3
  %483 = add nuw nsw i32 %482, 1
  %484 = add i32 %44, 24
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = add i32 %44, 28
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = or i32 %489, %486
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %1252, label %492

; <label>:492                                     ; preds = %477
  %493 = and i32 %486, 262144
  %494 = icmp ne i32 %493, 0
  %495 = select i1 %494, float %47, float 1.000000e+00
  %496 = select i1 %494, float %48, float 0.000000e+00
  %497 = select i1 %494, float %49, float 0.000000e+00
  %498 = select i1 %494, float %50, float 1.000000e+00
  %499 = select i1 %494, float %51, float %72
  %500 = select i1 %494, float %52, float %73
  %501 = add i32 %44, 284
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = lshr i32 %503, 16
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = fmul fast float %505, 0x3F50624DE0000000
  %507 = add i32 %44, 88
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = lshr i32 %509, 16
  %511 = and i32 %510, 255
  %512 = lshr i32 %509, 24
  %513 = add i32 %44, 292
  %514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.i32 %514, 0
  %516 = and i32 %515, 65535
  %517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %516)  ; LegacyF16ToF32(value)
  %518 = lshr i32 %515, 16
  %519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %518)  ; LegacyF16ToF32(value)
  %520 = add i32 %44, 32
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = lshr i32 %522, 22
  %524 = shl nuw nsw i32 %523, 5
  %525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %524)  ; LegacyF16ToF32(value)
  %526 = shl i32 %522, 4
  %527 = and i32 %526, 32752
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = lshr i32 %522, 7
  %530 = and i32 %529, 32752
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 3
  %534 = fmul fast float %533, 1.000000e+03
  %535 = fmul fast float %293, %534
  %536 = call float @dx.op.unary.f32(i32 22, float %535)  ; Frc(value)
  %537 = fadd fast float %536, %283
  %538 = fmul fast float %294, %534
  %539 = call float @dx.op.unary.f32(i32 22, float %538)  ; Frc(value)
  %540 = fadd fast float %539, %285
  %541 = fmul fast float %506, %534
  %542 = call float @dx.op.unary.f32(i32 22, float %541)  ; Frc(value)
  %543 = fmul fast float %542, 0x401921FB60000000
  %544 = fadd fast float %543, %525
  %545 = call float @dx.op.unary.f32(i32 13, float %544)  ; Sin(value)
  %546 = call float @dx.op.unary.f32(i32 12, float %544)  ; Cos(value)
  %547 = fsub fast float -0.000000e+00, %545
  %548 = fadd fast float %499, -5.000000e-01
  %549 = fadd fast float %500, -5.000000e-01
  %550 = fmul fast float %517, %548
  %551 = fmul fast float %519, %549
  %552 = fadd fast float %550, 5.000000e-01
  %553 = fadd fast float %551, 5.000000e-01
  %554 = fmul fast float %528, %552
  %555 = fmul fast float %531, %553
  %556 = fmul fast float %546, %554
  %557 = call float @dx.op.tertiary.f32(i32 46, float %547, float %555, float %556)  ; FMad(a,b,c)
  %558 = fmul fast float %545, %554
  %559 = call float @dx.op.tertiary.f32(i32 46, float %546, float %555, float %558)  ; FMad(a,b,c)
  %560 = fadd fast float %537, %557
  %561 = fadd fast float %540, %559
  %562 = icmp ugt i32 %511, 1
  %563 = icmp ugt i32 %509, 33554431
  %564 = or i1 %563, %562
  br i1 %564, label %565, label %590

; <label>:565                                     ; preds = %492
  %566 = add i32 %44, 228
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = lshr i32 %568, 16
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = fmul fast float %533, %570
  %572 = call float @dx.op.unary.f32(i32 22, float %571)  ; Frc(value)
  %573 = mul nuw nsw i32 %511, %512
  %574 = uitofp i32 %573 to float
  %575 = fmul fast float %572, %574
  %576 = call float @dx.op.unary.f32(i32 27, float %575)  ; Round_ni(value)
  %577 = fptoui float %576 to i32
  %578 = urem i32 %577, %511
  %579 = udiv i32 %577, %512
  %580 = call float @dx.op.unary.f32(i32 22, float %560)  ; Frc(value)
  %581 = call float @dx.op.unary.f32(i32 22, float %561)  ; Frc(value)
  %582 = uitofp i32 %578 to float
  %583 = uitofp i32 %579 to float
  %584 = fadd fast float %580, %582
  %585 = fadd fast float %581, %583
  %586 = uitofp i32 %511 to float
  %587 = uitofp i32 %512 to float
  %588 = fdiv fast float %584, %586
  %589 = fdiv fast float %585, %587
  br label %590

; <label>:590                                     ; preds = %565, %492
  %591 = phi float [ %588, %565 ], [ %560, %492 ]
  %592 = phi float [ %589, %565 ], [ %561, %492 ]
  %593 = and i32 %486, 16777216
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %704, label %595

; <label>:595                                     ; preds = %590
  %596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.f32 %596, 0
  %598 = extractvalue %dx.types.CBufRet.f32 %596, 1
  %599 = extractvalue %dx.types.CBufRet.f32 %596, 2
  %600 = fadd fast float %597, %145
  %601 = fadd fast float %598, %146
  %602 = fadd fast float %599, %147
  %603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.f32 %603, 0
  %605 = call float @dx.op.unary.f32(i32 7, float %604)  ; Saturate(value)
  %606 = icmp eq i32 %45, 65535
  br i1 %606, label %701, label %607

; <label>:607                                     ; preds = %595
  %608 = lshr i32 %45, 1
  %609 = shl i32 %608, 2
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = and i32 %45, 1
  %613 = icmp ne i32 %612, 0
  %614 = lshr i32 %611, 16
  %615 = and i32 %611, 65535
  %616 = select i1 %613, i32 %614, i32 %615
  %617 = icmp eq i32 %616, 65535
  br i1 %617, label %697, label %618

; <label>:618                                     ; preds = %607
  %619 = mul nuw nsw i32 %616, 40
  %620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = extractvalue %dx.types.ResRet.f32 %620, 1
  %623 = extractvalue %dx.types.ResRet.f32 %620, 2
  %624 = add nuw nsw i32 %619, 12
  %625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = extractvalue %dx.types.ResRet.f32 %625, 1
  %628 = extractvalue %dx.types.ResRet.f32 %625, 2
  %629 = add nuw nsw i32 %619, 24
  %630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.f32 %630, 0
  %632 = extractvalue %dx.types.ResRet.f32 %630, 1
  %633 = extractvalue %dx.types.ResRet.f32 %630, 2
  %634 = add nuw nsw i32 %619, 36
  %635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.f32 %635, 0
  %637 = fsub fast float %600, %621
  %638 = fsub fast float %601, %622
  %639 = fsub fast float %602, %623
  %640 = fmul fast float %636, %637
  %641 = fmul fast float %636, %638
  %642 = fmul fast float %636, %639
  %643 = call float @dx.op.unary.f32(i32 27, float %640)  ; Round_ni(value)
  %644 = call float @dx.op.unary.f32(i32 27, float %641)  ; Round_ni(value)
  %645 = call float @dx.op.unary.f32(i32 27, float %642)  ; Round_ni(value)
  %646 = fadd fast float %643, 5.000000e-01
  %647 = fadd fast float %644, 5.000000e-01
  %648 = fadd fast float %645, 5.000000e-01
  %649 = fmul fast float %646, %626
  %650 = fmul fast float %647, %627
  %651 = fmul fast float %648, %628
  %652 = shl i32 %45, 2
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = add i32 %654, 0
  %656 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %655, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %657 = call float @dx.op.unary.f32(i32 22, float %649)  ; Frc(value)
  %658 = call float @dx.op.unary.f32(i32 22, float %650)  ; Frc(value)
  %659 = call float @dx.op.unary.f32(i32 22, float %651)  ; Frc(value)
  %660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %656, %dx.types.Handle %39, float %657, float %658, float %659, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %661 = extractvalue %dx.types.ResRet.f32 %660, 0
  %662 = extractvalue %dx.types.ResRet.f32 %660, 1
  %663 = extractvalue %dx.types.ResRet.f32 %660, 2
  %664 = fmul fast float %661, 1.023000e+03
  %665 = fmul fast float %662, 1.023000e+03
  %666 = fmul fast float %663, 1.023000e+03
  %667 = fadd fast float %664, 5.000000e-01
  %668 = fadd fast float %665, 5.000000e-01
  %669 = fadd fast float %666, 5.000000e-01
  %670 = call float @dx.op.unary.f32(i32 27, float %667)  ; Round_ni(value)
  %671 = call float @dx.op.unary.f32(i32 27, float %668)  ; Round_ni(value)
  %672 = call float @dx.op.unary.f32(i32 27, float %669)  ; Round_ni(value)
  %673 = fsub fast float %640, %643
  %674 = fsub fast float %641, %644
  %675 = fsub fast float %642, %645
  %676 = fmul fast float %673, 7.500000e-01
  %677 = fmul fast float %674, 7.500000e-01
  %678 = fmul fast float %675, 7.500000e-01
  %679 = fadd fast float %643, 1.250000e-01
  %680 = fadd fast float %679, %676
  %681 = fadd fast float %680, %670
  %682 = fadd fast float %644, 1.250000e-01
  %683 = fadd fast float %682, %677
  %684 = fadd fast float %683, %671
  %685 = fadd fast float %645, 1.250000e-01
  %686 = fadd fast float %685, %678
  %687 = fadd fast float %686, %672
  %688 = fmul fast float %681, %631
  %689 = fmul fast float %684, %632
  %690 = fmul fast float %687, %633
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = add i32 %692, 0
  %694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %693, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %694, %dx.types.Handle %37, float %688, float %689, float %690, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %696 = extractvalue %dx.types.ResRet.f32 %695, 0
  br label %697

; <label>:697                                     ; preds = %618, %607
  %698 = phi float [ %696, %618 ], [ -1.000000e+00, %607 ]
  %699 = fadd fast float %698, %605
  %700 = call float @dx.op.unary.f32(i32 7, float %699)  ; Saturate(value)
  br label %701

; <label>:701                                     ; preds = %697, %595
  %702 = phi float [ %700, %697 ], [ %605, %595 ]
  %703 = fmul fast float %702, %453
  br label %704

; <label>:704                                     ; preds = %701, %590
  %705 = phi float [ %703, %701 ], [ %453, %590 ]
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = and i32 %707, 256
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %756, label %710

; <label>:710                                     ; preds = %704
  %711 = add i32 %44, 472
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = add i32 %713, 0
  %715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %714, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %716 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %715, %dx.types.Handle %87, float %591, float %592, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %717 = extractvalue %dx.types.ResRet.f32 %716, 0
  %718 = add i32 %44, 100
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = shl i32 %720, 4
  %722 = and i32 %721, 32752
  %723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %722)  ; LegacyF16ToF32(value)
  %724 = lshr i32 %720, 7
  %725 = and i32 %724, 32752
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = fsub fast float 1.000000e+00, %705
  %728 = call float @dx.op.binary.f32(i32 35, float %727, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %729 = bitcast float %705 to i32
  %730 = sitofp i32 %729 to float
  %731 = fadd fast float %730, 0xC1CFBF8940000000
  %732 = fmul fast float %726, %731
  %733 = fadd fast float %732, 0x41CFBF8940000000
  %734 = fptosi float %733 to i32
  %735 = bitcast i32 %734 to float
  %736 = bitcast float %728 to i32
  %737 = sitofp i32 %736 to float
  %738 = fadd fast float %737, 0xC1CFBF8940000000
  %739 = fmul fast float %738, %726
  %740 = fadd fast float %739, 0x41CFBF8940000000
  %741 = fptosi float %740 to i32
  %742 = bitcast i32 %741 to float
  %743 = fmul fast float %735, %723
  %744 = fmul fast float %742, %723
  %745 = fsub fast float %728, %743
  %746 = fadd fast float %744, %728
  %747 = call float @dx.op.unary.f32(i32 7, float %745)  ; Saturate(value)
  %748 = call float @dx.op.unary.f32(i32 7, float %746)  ; Saturate(value)
  %749 = fsub fast float %717, %747
  %750 = fsub fast float %748, %747
  %751 = bitcast float %750 to i32
  %752 = sub nsw i32 2129859010, %751
  %753 = bitcast i32 %752 to float
  %754 = fmul fast float %753, %749
  %755 = call float @dx.op.unary.f32(i32 7, float %754)  ; Saturate(value)
  br label %756

; <label>:756                                     ; preds = %710, %704
  %757 = phi float [ %755, %710 ], [ %705, %704 ]
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = and i32 %759, 128
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %778, label %762

; <label>:762                                     ; preds = %756
  %763 = add i32 %44, 456
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = add i32 %765, 0
  %767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %766, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %768 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %767, %dx.types.Handle %87, float %591, float %592, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 0
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = and i32 %771, 524288
  %773 = icmp ne i32 %772, 0
  %774 = fcmp fast ogt float %769, 0x3FE0101020000000
  %775 = select i1 %774, float 1.000000e+00, float 0.000000e+00
  %776 = select i1 %773, float %775, float %769
  %777 = fmul fast float %776, %757
  br label %778

; <label>:778                                     ; preds = %762, %756
  %779 = phi float [ %777, %762 ], [ %757, %756 ]
  %780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.i32 %780, 0
  %782 = and i32 %781, 16
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %982, label %784

; <label>:784                                     ; preds = %778
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = add i32 %44, 408
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = add i32 %789, 0
  %791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %792 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %791, %dx.types.Handle %86, float %591, float %592, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  %794 = extractvalue %dx.types.ResRet.f32 %792, 1
  %795 = extractvalue %dx.types.ResRet.f32 %792, 2
  %796 = extractvalue %dx.types.ResRet.f32 %792, 3
  %797 = and i32 %786, 255
  %798 = uitofp i32 %797 to float
  %799 = lshr i32 %786, 8
  %800 = and i32 %799, 255
  %801 = uitofp i32 %800 to float
  %802 = fmul fast float %796, %798
  %803 = fadd fast float %802, %801
  %804 = fmul fast float %803, 0x3F70101000000000
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = and i32 %806, 512
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %817, label %809

; <label>:809                                     ; preds = %784
  %810 = add i32 %44, 488
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = add i32 %812, 0
  %814 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %813, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %815 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %814, %dx.types.Handle %87, float %591, float %592, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %816 = extractvalue %dx.types.ResRet.f32 %815, 0
  br label %817

; <label>:817                                     ; preds = %809, %784
  %818 = phi float [ %816, %809 ], [ 1.000000e+00, %784 ]
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = and i32 %820, 33554432
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %929, label %823

; <label>:823                                     ; preds = %817
  %824 = add i32 %44, 224
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %824, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = and i32 %826, 65535
  %828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %827)  ; LegacyF16ToF32(value)
  %829 = lshr i32 %826, 16
  %830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %829)  ; LegacyF16ToF32(value)
  %831 = add i32 %44, 228
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %831, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = and i32 %833, 65535
  %835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %834)  ; LegacyF16ToF32(value)
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = lshr i32 %837, 24
  %839 = uitofp i32 %838 to float
  %840 = fmul fast float %839, 0x3F70101020000000
  %841 = and i32 %837, 255
  %842 = uitofp i32 %841 to float
  %843 = fmul fast float %842, 0x3F70101020000000
  %844 = lshr i32 %837, 8
  %845 = and i32 %844, 255
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %846, 0x3F70101020000000
  %848 = lshr i32 %837, 16
  %849 = and i32 %848, 255
  %850 = uitofp i32 %849 to float
  %851 = fmul fast float %850, 0x3F70101020000000
  %852 = add i32 %44, 220
  %853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %852, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.i32 %853, 0
  %855 = lshr i32 %854, 24
  %856 = uitofp i32 %855 to float
  %857 = fmul fast float %856, 0x3F70101020000000
  %858 = and i32 %854, 255
  %859 = uitofp i32 %858 to float
  %860 = fmul fast float %859, 0x3F70101020000000
  %861 = lshr i32 %854, 8
  %862 = and i32 %861, 255
  %863 = uitofp i32 %862 to float
  %864 = fmul fast float %863, 0x3F70101020000000
  %865 = lshr i32 %854, 16
  %866 = and i32 %865, 255
  %867 = uitofp i32 %866 to float
  %868 = fmul fast float %867, 0x3F70101020000000
  %869 = bitcast float %793 to i32
  %870 = ashr i32 %869, 1
  %871 = sub nsw i32 1597463174, %870
  %872 = bitcast i32 %871 to float
  %873 = fmul fast float %793, 5.000000e-01
  %874 = fmul fast float %872, %872
  %875 = fmul fast float %874, %873
  %876 = fsub fast float 1.500000e+00, %875
  %877 = fmul fast float %872, %793
  %878 = fmul fast float %877, %876
  %879 = bitcast float %794 to i32
  %880 = ashr i32 %879, 1
  %881 = sub nsw i32 1597463174, %880
  %882 = bitcast i32 %881 to float
  %883 = fmul fast float %794, 5.000000e-01
  %884 = fmul fast float %882, %882
  %885 = fmul fast float %884, %883
  %886 = fsub fast float 1.500000e+00, %885
  %887 = fmul fast float %882, %794
  %888 = fmul fast float %887, %886
  %889 = bitcast float %795 to i32
  %890 = ashr i32 %889, 1
  %891 = sub nsw i32 1597463174, %890
  %892 = bitcast i32 %891 to float
  %893 = fmul fast float %795, 5.000000e-01
  %894 = fmul fast float %892, %892
  %895 = fmul fast float %894, %893
  %896 = fsub fast float 1.500000e+00, %895
  %897 = fmul fast float %892, %795
  %898 = fmul fast float %897, %896
  %899 = fsub fast float %878, %860
  %900 = fsub fast float %888, %864
  %901 = fsub fast float %898, %868
  %902 = fmul fast float %899, %828
  %903 = fmul fast float %900, %830
  %904 = fmul fast float %901, %835
  %905 = fadd fast float %902, %843
  %906 = fadd fast float %903, %847
  %907 = fadd fast float %904, %851
  %908 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  %909 = call float @dx.op.unary.f32(i32 7, float %906)  ; Saturate(value)
  %910 = call float @dx.op.unary.f32(i32 7, float %907)  ; Saturate(value)
  %911 = fmul fast float %908, %908
  %912 = fmul fast float %909, %909
  %913 = fmul fast float %910, %910
  %914 = fsub fast float %911, %793
  %915 = fsub fast float %912, %794
  %916 = fsub fast float %913, %795
  %917 = fmul fast float %914, %818
  %918 = fmul fast float %915, %818
  %919 = fmul fast float %916, %818
  %920 = fadd fast float %917, %793
  %921 = fadd fast float %918, %794
  %922 = fadd fast float %919, %795
  %923 = fadd fast float %840, %804
  %924 = fsub fast float %923, %857
  %925 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %926 = fsub fast float %925, %804
  %927 = fmul fast float %926, %818
  %928 = fadd fast float %927, %804
  br label %982

; <label>:929                                     ; preds = %817
  %930 = and i32 %820, 134217728
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %966, label %932

; <label>:932                                     ; preds = %929
  %933 = call float @dx.op.unary.f32(i32 24, float %270)  ; Sqrt(value)
  %934 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %935 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %936 = fadd fast float %933, -5.000000e-01
  %937 = fadd fast float %934, -5.000000e-01
  %938 = fadd fast float %935, -5.000000e-01
  %939 = fmul fast float %936, %818
  %940 = fmul fast float %937, %818
  %941 = fmul fast float %938, %818
  %942 = fadd fast float %939, 5.000000e-01
  %943 = fadd fast float %940, 5.000000e-01
  %944 = fadd fast float %941, 5.000000e-01
  %945 = call float @dx.op.unary.f32(i32 24, float %793)  ; Sqrt(value)
  %946 = call float @dx.op.unary.f32(i32 24, float %794)  ; Sqrt(value)
  %947 = call float @dx.op.unary.f32(i32 24, float %795)  ; Sqrt(value)
  %948 = fmul fast float %942, 2.000000e+00
  %949 = fsub fast float 1.000000e+00, %948
  %950 = fmul fast float %949, %945
  %951 = fadd fast float %950, %948
  %952 = fmul fast float %951, %945
  %953 = fmul fast float %943, 2.000000e+00
  %954 = fsub fast float 1.000000e+00, %953
  %955 = fmul fast float %954, %946
  %956 = fadd fast float %955, %953
  %957 = fmul fast float %956, %946
  %958 = fmul fast float %944, 2.000000e+00
  %959 = fsub fast float 1.000000e+00, %958
  %960 = fmul fast float %959, %947
  %961 = fadd fast float %960, %958
  %962 = fmul fast float %961, %947
  %963 = fmul fast float %952, %952
  %964 = fmul fast float %957, %957
  %965 = fmul fast float %962, %962
  br label %982

; <label>:966                                     ; preds = %929
  %967 = fmul fast float %270, %270
  %968 = fmul fast float %274, %274
  %969 = fmul fast float %278, %278
  %970 = fadd fast float %967, -1.000000e+00
  %971 = fadd fast float %968, -1.000000e+00
  %972 = fadd fast float %969, -1.000000e+00
  %973 = fmul fast float %818, %970
  %974 = fmul fast float %818, %971
  %975 = fmul fast float %818, %972
  %976 = fadd fast float %973, 1.000000e+00
  %977 = fadd fast float %974, 1.000000e+00
  %978 = fadd fast float %975, 1.000000e+00
  %979 = fmul fast float %976, %793
  %980 = fmul fast float %977, %794
  %981 = fmul fast float %978, %795
  br label %982

; <label>:982                                     ; preds = %966, %932, %823, %778
  %983 = phi float [ %928, %823 ], [ %804, %932 ], [ %804, %966 ], [ 0x3FA23C0BE0000000, %778 ]
  %984 = phi float [ %920, %823 ], [ %963, %932 ], [ %979, %966 ], [ 1.000000e+00, %778 ]
  %985 = phi float [ %921, %823 ], [ %964, %932 ], [ %980, %966 ], [ 1.000000e+00, %778 ]
  %986 = phi float [ %922, %823 ], [ %965, %932 ], [ %981, %966 ], [ 1.000000e+00, %778 ]
  %987 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.i32 %987, 1
  %989 = and i32 %988, 1
  %990 = icmp ne i32 %989, 0
  %991 = add i32 %44, 356
  %992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %991, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.i32 %992, 0
  %994 = and i32 %993, 32
  %995 = icmp ne i32 %994, 0
  %996 = and i1 %990, %995
  %997 = select i1 %996, float 1.000000e+00, float %984
  %998 = select i1 %996, float 0x3FD3333340000000, float %985
  %999 = select i1 %996, float 0x3FD3333340000000, float %986
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = and i32 %1001, 32
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1076, label %1004

; <label>:1004                                    ; preds = %982
  %1005 = add i32 %44, 92
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = add i32 %44, 424
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1008, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = add i32 %1010, 0
  %1012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1011, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1013 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1012, %dx.types.Handle %86, float %591, float %592, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1014 = extractvalue %dx.types.ResRet.f32 %1013, 0
  %1015 = extractvalue %dx.types.ResRet.f32 %1013, 1
  %1016 = extractvalue %dx.types.ResRet.f32 %1013, 2
  %1017 = extractvalue %dx.types.ResRet.f32 %1013, 3
  %1018 = and i32 %1007, 255
  %1019 = uitofp i32 %1018 to float
  %1020 = lshr i32 %1007, 8
  %1021 = and i32 %1020, 255
  %1022 = uitofp i32 %1021 to float
  %1023 = lshr i32 %1007, 16
  %1024 = and i32 %1023, 255
  %1025 = uitofp i32 %1024 to float
  %1026 = fmul fast float %1025, 0x3F70101000000000
  %1027 = fmul fast float %1014, %1019
  %1028 = fadd fast float %1027, %1022
  %1029 = fmul fast float %1028, 0x3F70101000000000
  %1030 = fadd fast float %1015, -5.000000e-01
  %1031 = fadd fast float %1017, -5.000000e-01
  %1032 = fmul fast float %1030, %1026
  %1033 = fmul fast float %1031, %1026
  %1034 = fadd fast float %1032, 5.000000e-01
  %1035 = fadd fast float %1033, 5.000000e-01
  %1036 = fmul fast float %1034, 2.000000e+00
  %1037 = fadd fast float %1036, -1.000000e+00
  %1038 = fmul fast float %1035, 2.000000e+00
  %1039 = fadd fast float %1038, -1.000000e+00
  %1040 = fadd fast float %1037, %1039
  %1041 = fmul fast float %1040, 5.000000e-01
  %1042 = fsub fast float %1037, %1039
  %1043 = fmul fast float %1042, 5.000000e-01
  %1044 = call float @dx.op.unary.f32(i32 6, float %1041)  ; FAbs(value)
  %1045 = fsub fast float 1.000000e+00, %1044
  %1046 = call float @dx.op.unary.f32(i32 6, float %1043)  ; FAbs(value)
  %1047 = fsub fast float %1045, %1046
  %1048 = call float @dx.op.dot3.f32(i32 55, float %1041, float %1043, float %1047, float %1041, float %1043, float %1047)  ; Dot3(ax,ay,az,bx,by,bz)
  %1049 = call float @dx.op.unary.f32(i32 25, float %1048)  ; Rsqrt(value)
  %1050 = fmul fast float %1041, %1049
  %1051 = fmul fast float %1043, %1049
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = and i32 %1053, 67108864
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %1072, label %1056

; <label>:1056                                    ; preds = %1004
  %1057 = add i32 %44, 280
  %1058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = and i32 %1059, 65535
  %1061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1060)  ; LegacyF16ToF32(value)
  %1062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.i32 %1062, 0
  %1064 = and i32 %1063, 65535
  %1065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1064)  ; LegacyF16ToF32(value)
  %1066 = lshr i32 %1059, 16
  %1067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1066)  ; LegacyF16ToF32(value)
  %1068 = fsub fast float %1029, %1067
  %1069 = fmul fast float %1068, %1061
  %1070 = fadd fast float %1069, %1065
  %1071 = call float @dx.op.unary.f32(i32 7, float %1070)  ; Saturate(value)
  br label %1072

; <label>:1072                                    ; preds = %1056, %1004
  %1073 = phi float [ %1071, %1056 ], [ %1029, %1004 ]
  %1074 = call float @dx.op.dot2.f32(i32 54, float %1050, float %1051, float %495, float %496)  ; Dot2(ax,ay,bx,by)
  %1075 = call float @dx.op.dot2.f32(i32 54, float %1050, float %1051, float %497, float %498)  ; Dot2(ax,ay,bx,by)
  br label %1076

; <label>:1076                                    ; preds = %1072, %982
  %1077 = phi float [ %1073, %1072 ], [ 0x3FD6666660000000, %982 ]
  %1078 = phi float [ %1074, %1072 ], [ 0.000000e+00, %982 ]
  %1079 = phi float [ %1075, %1072 ], [ 0.000000e+00, %982 ]
  %1080 = phi float [ %1016, %1072 ], [ 1.000000e+00, %982 ]
  %1081 = add i32 %44, 160
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = lshr i32 %1083, 22
  %1085 = shl nuw nsw i32 %1084, 5
  %1086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1085)  ; LegacyF16ToF32(value)
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = and i32 %1088, 64
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1124, label %1091

; <label>:1091                                    ; preds = %1076
  %1092 = add i32 %44, 440
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = add i32 %1094, 0
  %1096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1095, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = and i32 %1098, 131072
  %1100 = icmp eq i32 %1099, 0
  %1101 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1096, %dx.types.Handle %86, float %591, float %592, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1102 = extractvalue %dx.types.ResRet.f32 %1101, 0
  %1103 = extractvalue %dx.types.ResRet.f32 %1101, 1
  %1104 = extractvalue %dx.types.ResRet.f32 %1101, 2
  %1105 = fmul fast float %1102, %258
  %1106 = fmul fast float %1103, %261
  %1107 = fmul fast float %1104, %264
  br i1 %1100, label %1114, label %1108

; <label>:1108                                    ; preds = %1091
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 0
  %1111 = fmul fast float %1110, %1105
  %1112 = fmul fast float %1110, %1106
  %1113 = fmul fast float %1110, %1107
  br label %1114

; <label>:1114                                    ; preds = %1108, %1091
  %1115 = phi float [ %1111, %1108 ], [ %1105, %1091 ]
  %1116 = phi float [ %1112, %1108 ], [ %1106, %1091 ]
  %1117 = phi float [ %1113, %1108 ], [ %1107, %1091 ]
  %1118 = fmul fast float %1115, %1086
  %1119 = select i1 %238, float %1118, float %1115
  %1120 = call float @dx.op.dot3.f32(i32 55, float %1119, float %1116, float %1117, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1121 = select i1 %238, float 0.000000e+00, float %1115
  %1122 = select i1 %238, float %1120, float %1116
  %1123 = select i1 %238, float 0.000000e+00, float %1117
  br label %1124

; <label>:1124                                    ; preds = %1114, %1076
  %1125 = phi float [ %1121, %1114 ], [ 0.000000e+00, %1076 ]
  %1126 = phi float [ %1122, %1114 ], [ 0.000000e+00, %1076 ]
  %1127 = phi float [ %1123, %1114 ], [ 0.000000e+00, %1076 ]
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = and i32 %1129, 1024
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1162, label %1132

; <label>:1132                                    ; preds = %1124
  %1133 = add i32 %44, 152
  %1134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.i32 %1134, 0
  %1136 = and i32 %1135, 255
  %1137 = uitofp i32 %1136 to float
  %1138 = fmul fast float %1137, 0x3F70101020000000
  %1139 = lshr i32 %1135, 8
  %1140 = and i32 %1139, 255
  %1141 = uitofp i32 %1140 to float
  %1142 = fmul fast float %1141, 0x3F70101020000000
  %1143 = lshr i32 %1135, 16
  %1144 = and i32 %1143, 255
  %1145 = uitofp i32 %1144 to float
  %1146 = fmul fast float %1145, 0x3F70101020000000
  %1147 = fmul fast float %1138, %1138
  %1148 = fmul fast float %1142, %1142
  %1149 = fmul fast float %1146, %1146
  %1150 = add i32 %44, 504
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = add i32 %1152, 0
  %1154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1153, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1155 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1154, %dx.types.Handle %87, float %591, float %592, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1156 = extractvalue %dx.types.ResRet.f32 %1155, 0
  %1157 = extractvalue %dx.types.ResRet.f32 %1155, 1
  %1158 = extractvalue %dx.types.ResRet.f32 %1155, 2
  %1159 = fmul fast float %1147, %1156
  %1160 = fmul fast float %1148, %1157
  %1161 = fmul fast float %1149, %1158
  br label %1162

; <label>:1162                                    ; preds = %1132, %1124
  %1163 = phi float [ %1159, %1132 ], [ 0.000000e+00, %1124 ]
  %1164 = phi float [ %1160, %1132 ], [ 0.000000e+00, %1124 ]
  %1165 = phi float [ %1161, %1132 ], [ 0.000000e+00, %1124 ]
  %1166 = fcmp fast ogt float %1163, 0.000000e+00
  %1167 = fcmp fast ogt float %1164, 0.000000e+00
  %1168 = fcmp fast ogt float %1165, 0.000000e+00
  %1169 = call float @dx.op.unary.f32(i32 23, float %1163)  ; Log(value)
  %1170 = call float @dx.op.unary.f32(i32 23, float %1164)  ; Log(value)
  %1171 = call float @dx.op.unary.f32(i32 23, float %1165)  ; Log(value)
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = lshr i32 %1173, 7
  %1175 = and i32 %1174, 32752
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = fmul fast float %1169, 0xBFE62E4300000000
  %1178 = fmul fast float %1177, %1176
  %1179 = fmul fast float %1170, 0xBFE62E4300000000
  %1180 = fmul fast float %1179, %1176
  %1181 = fmul fast float %1171, 0xBFE62E4300000000
  %1182 = fmul fast float %1181, %1176
  %1183 = select i1 %1166, float %1178, float 1.270000e+02
  %1184 = select i1 %1167, float %1180, float 1.270000e+02
  %1185 = select i1 %1168, float %1182, float 1.270000e+02
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = and i32 %1187, 10240
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1234, label %1190

; <label>:1190                                    ; preds = %1162
  %1191 = add i32 %44, 520
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = add i32 %1193, 0
  %1195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1194, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1196 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1195, %dx.types.Handle %87, float %591, float %592, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1197 = extractvalue %dx.types.ResRet.f32 %1196, 1
  %1198 = extractvalue %dx.types.ResRet.f32 %1196, 3
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = and i32 %1200, 1048576
  %1202 = icmp ne i32 %1201, 0
  %1203 = and i32 %1200, 8192
  %1204 = icmp eq i32 %1203, 0
  br i1 %1204, label %1220, label %1205

; <label>:1205                                    ; preds = %1190
  %1206 = extractvalue %dx.types.ResRet.f32 %1196, 2
  %1207 = select i1 %1202, float %1206, float %1197
  %1208 = extractvalue %dx.types.ResRet.f32 %1196, 0
  %1209 = select i1 %1202, float %1208, float %1197
  %1210 = add i32 %44, 96
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1210, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = lshr i32 %1212, 16
  %1214 = and i32 %1213, 255
  %1215 = uitofp i32 %1214 to float
  %1216 = fmul fast float %1215, 0x3F80101020000000
  %1217 = fmul fast float %1216, %1209
  %1218 = fmul fast float %1216, %1197
  %1219 = fmul fast float %1216, %1207
  br label %1220

; <label>:1220                                    ; preds = %1205, %1190
  %1221 = phi float [ %1217, %1205 ], [ 0.000000e+00, %1190 ]
  %1222 = phi float [ %1218, %1205 ], [ 0.000000e+00, %1190 ]
  %1223 = phi float [ %1219, %1205 ], [ 0.000000e+00, %1190 ]
  %1224 = and i32 %1200, 2048
  %1225 = icmp eq i32 %1224, 0
  br i1 %1225, label %1234, label %1226

; <label>:1226                                    ; preds = %1220
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = shl i32 %1228, 4
  %1230 = and i32 %1229, 32752
  %1231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1230)  ; LegacyF16ToF32(value)
  %1232 = fmul fast float %1231, %1198
  %1233 = call float @dx.op.binary.f32(i32 35, float %1232, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1234

; <label>:1234                                    ; preds = %1226, %1220, %1162
  %1235 = phi float [ %1221, %1226 ], [ %1221, %1220 ], [ 0.000000e+00, %1162 ]
  %1236 = phi float [ %1222, %1226 ], [ %1222, %1220 ], [ 0.000000e+00, %1162 ]
  %1237 = phi float [ %1223, %1226 ], [ %1223, %1220 ], [ 0.000000e+00, %1162 ]
  %1238 = phi float [ %1233, %1226 ], [ 0x3F70101020000000, %1220 ], [ 0x3F70101020000000, %1162 ]
  %1239 = add i32 %44, 96
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = and i32 %1241, 255
  %1243 = uitofp i32 %1242 to float
  %1244 = lshr i32 %1241, 8
  %1245 = and i32 %1244, 255
  %1246 = uitofp i32 %1245 to float
  %1247 = call float @dx.op.dot3.f32(i32 55, float %997, float %998, float %999, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1248 = fmul fast float %1246, %1247
  %1249 = fadd fast float %1248, %1243
  %1250 = fmul fast float %1249, 0x3F70101020000000
  %1251 = call float @dx.op.unary.f32(i32 7, float %1250)  ; Saturate(value)
  br label %1252

; <label>:1252                                    ; preds = %1234, %477
  %1253 = phi float [ 0.000000e+00, %477 ], [ %1078, %1234 ]
  %1254 = phi float [ 0.000000e+00, %477 ], [ %1079, %1234 ]
  %1255 = phi float [ 0.000000e+00, %477 ], [ %997, %1234 ]
  %1256 = phi float [ 0.000000e+00, %477 ], [ %998, %1234 ]
  %1257 = phi float [ 0.000000e+00, %477 ], [ %999, %1234 ]
  %1258 = phi float [ 0.000000e+00, %477 ], [ %1125, %1234 ]
  %1259 = phi float [ 0.000000e+00, %477 ], [ %1126, %1234 ]
  %1260 = phi float [ 0.000000e+00, %477 ], [ %1127, %1234 ]
  %1261 = phi float [ 0.000000e+00, %477 ], [ %1235, %1234 ]
  %1262 = phi float [ 0.000000e+00, %477 ], [ %1236, %1234 ]
  %1263 = phi float [ 0.000000e+00, %477 ], [ %1237, %1234 ]
  %1264 = phi float [ 0.000000e+00, %477 ], [ %1183, %1234 ]
  %1265 = phi float [ 0.000000e+00, %477 ], [ %1184, %1234 ]
  %1266 = phi float [ 0.000000e+00, %477 ], [ %1185, %1234 ]
  %1267 = phi float [ 0.000000e+00, %477 ], [ %983, %1234 ]
  %1268 = phi float [ 0.000000e+00, %477 ], [ %779, %1234 ]
  %1269 = phi float [ 0.000000e+00, %477 ], [ %1077, %1234 ]
  %1270 = phi float [ 0.000000e+00, %477 ], [ %1080, %1234 ]
  %1271 = phi float [ 0.000000e+00, %477 ], [ %1238, %1234 ]
  %1272 = phi float [ 0.000000e+00, %477 ], [ %1251, %1234 ]
  br i1 %425, label %2310, label %1273

; <label>:1273                                    ; preds = %1252
  %1274 = icmp ult i32 %483, 2
  %1275 = add i32 %44, 40
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = add i32 %44, 44
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = or i32 %1280, %1277
  %1282 = icmp eq i32 %1281, 0
  br i1 %1282, label %2310, label %1283

; <label>:1283                                    ; preds = %1273
  %1284 = and i32 %1277, 262144
  %1285 = icmp ne i32 %1284, 0
  %1286 = select i1 %1285, float %47, float 1.000000e+00
  %1287 = select i1 %1285, float %48, float 0.000000e+00
  %1288 = select i1 %1285, float %49, float 0.000000e+00
  %1289 = select i1 %1285, float %50, float 1.000000e+00
  %1290 = select i1 %1285, float %51, float %72
  %1291 = select i1 %1285, float %52, float %73
  %1292 = add i32 %44, 300
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = lshr i32 %1294, 16
  %1296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1295)  ; LegacyF16ToF32(value)
  %1297 = fmul fast float %1296, 0x3F50624DE0000000
  %1298 = add i32 %44, 104
  %1299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.i32 %1299, 0
  %1301 = lshr i32 %1300, 16
  %1302 = and i32 %1301, 255
  %1303 = lshr i32 %1300, 24
  %1304 = add i32 %44, 308
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = and i32 %1306, 65535
  %1308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1307)  ; LegacyF16ToF32(value)
  %1309 = lshr i32 %1306, 16
  %1310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1309)  ; LegacyF16ToF32(value)
  %1311 = add i32 %44, 48
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = lshr i32 %1313, 22
  %1315 = shl nuw nsw i32 %1314, 5
  %1316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1315)  ; LegacyF16ToF32(value)
  %1317 = shl i32 %1313, 4
  %1318 = and i32 %1317, 32752
  %1319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1318)  ; LegacyF16ToF32(value)
  %1320 = lshr i32 %1313, 7
  %1321 = and i32 %1320, 32752
  %1322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1321)  ; LegacyF16ToF32(value)
  %1323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.f32 %1323, 3
  %1325 = fmul fast float %1324, 1.000000e+03
  %1326 = fmul fast float %335, %1325
  %1327 = call float @dx.op.unary.f32(i32 22, float %1326)  ; Frc(value)
  %1328 = fadd fast float %1327, %325
  %1329 = fmul fast float %336, %1325
  %1330 = call float @dx.op.unary.f32(i32 22, float %1329)  ; Frc(value)
  %1331 = fadd fast float %1330, %327
  %1332 = fmul fast float %1297, %1325
  %1333 = call float @dx.op.unary.f32(i32 22, float %1332)  ; Frc(value)
  %1334 = fmul fast float %1333, 0x401921FB60000000
  %1335 = fadd fast float %1334, %1316
  %1336 = call float @dx.op.unary.f32(i32 13, float %1335)  ; Sin(value)
  %1337 = call float @dx.op.unary.f32(i32 12, float %1335)  ; Cos(value)
  %1338 = fsub fast float -0.000000e+00, %1336
  %1339 = fadd fast float %1290, -5.000000e-01
  %1340 = fadd fast float %1291, -5.000000e-01
  %1341 = fmul fast float %1308, %1339
  %1342 = fmul fast float %1310, %1340
  %1343 = fadd fast float %1341, 5.000000e-01
  %1344 = fadd fast float %1342, 5.000000e-01
  %1345 = fmul fast float %1319, %1343
  %1346 = fmul fast float %1322, %1344
  %1347 = fmul fast float %1337, %1345
  %1348 = call float @dx.op.tertiary.f32(i32 46, float %1338, float %1346, float %1347)  ; FMad(a,b,c)
  %1349 = fmul fast float %1336, %1345
  %1350 = call float @dx.op.tertiary.f32(i32 46, float %1337, float %1346, float %1349)  ; FMad(a,b,c)
  %1351 = fadd fast float %1328, %1348
  %1352 = fadd fast float %1331, %1350
  %1353 = icmp ugt i32 %1302, 1
  %1354 = icmp ugt i32 %1300, 33554431
  %1355 = or i1 %1354, %1353
  br i1 %1355, label %1356, label %1381

; <label>:1356                                    ; preds = %1283
  %1357 = add i32 %44, 244
  %1358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1357, i32 undef)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.i32 %1358, 0
  %1360 = lshr i32 %1359, 16
  %1361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1360)  ; LegacyF16ToF32(value)
  %1362 = fmul fast float %1324, %1361
  %1363 = call float @dx.op.unary.f32(i32 22, float %1362)  ; Frc(value)
  %1364 = mul nuw nsw i32 %1302, %1303
  %1365 = uitofp i32 %1364 to float
  %1366 = fmul fast float %1363, %1365
  %1367 = call float @dx.op.unary.f32(i32 27, float %1366)  ; Round_ni(value)
  %1368 = fptoui float %1367 to i32
  %1369 = urem i32 %1368, %1302
  %1370 = udiv i32 %1368, %1303
  %1371 = call float @dx.op.unary.f32(i32 22, float %1351)  ; Frc(value)
  %1372 = call float @dx.op.unary.f32(i32 22, float %1352)  ; Frc(value)
  %1373 = uitofp i32 %1369 to float
  %1374 = uitofp i32 %1370 to float
  %1375 = fadd fast float %1371, %1373
  %1376 = fadd fast float %1372, %1374
  %1377 = uitofp i32 %1302 to float
  %1378 = uitofp i32 %1303 to float
  %1379 = fdiv fast float %1375, %1377
  %1380 = fdiv fast float %1376, %1378
  br label %1381

; <label>:1381                                    ; preds = %1356, %1283
  %1382 = phi float [ %1379, %1356 ], [ %1351, %1283 ]
  %1383 = phi float [ %1380, %1356 ], [ %1352, %1283 ]
  %1384 = and i32 %1277, 16777216
  %1385 = icmp eq i32 %1384, 0
  br i1 %1385, label %1495, label %1386

; <label>:1386                                    ; preds = %1381
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.CBufRet.f32 %1387, 1
  %1390 = extractvalue %dx.types.CBufRet.f32 %1387, 2
  %1391 = fadd fast float %1388, %145
  %1392 = fadd fast float %1389, %146
  %1393 = fadd fast float %1390, %147
  %1394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1395 = extractvalue %dx.types.CBufRet.f32 %1394, 0
  %1396 = call float @dx.op.unary.f32(i32 7, float %1395)  ; Saturate(value)
  %1397 = icmp eq i32 %45, 65535
  br i1 %1397, label %1492, label %1398

; <label>:1398                                    ; preds = %1386
  %1399 = lshr i32 %45, 1
  %1400 = shl i32 %1399, 2
  %1401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1400, i32 undef)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.i32 %1401, 0
  %1403 = and i32 %45, 1
  %1404 = icmp ne i32 %1403, 0
  %1405 = lshr i32 %1402, 16
  %1406 = and i32 %1402, 65535
  %1407 = select i1 %1404, i32 %1405, i32 %1406
  %1408 = icmp eq i32 %1407, 65535
  br i1 %1408, label %1488, label %1409

; <label>:1409                                    ; preds = %1398
  %1410 = mul nuw nsw i32 %1407, 40
  %1411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1410, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.f32 %1411, 0
  %1413 = extractvalue %dx.types.ResRet.f32 %1411, 1
  %1414 = extractvalue %dx.types.ResRet.f32 %1411, 2
  %1415 = add nuw nsw i32 %1410, 12
  %1416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  %1418 = extractvalue %dx.types.ResRet.f32 %1416, 1
  %1419 = extractvalue %dx.types.ResRet.f32 %1416, 2
  %1420 = add nuw nsw i32 %1410, 24
  %1421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1420, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.f32 %1421, 0
  %1423 = extractvalue %dx.types.ResRet.f32 %1421, 1
  %1424 = extractvalue %dx.types.ResRet.f32 %1421, 2
  %1425 = add nuw nsw i32 %1410, 36
  %1426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.f32 %1426, 0
  %1428 = fsub fast float %1391, %1412
  %1429 = fsub fast float %1392, %1413
  %1430 = fsub fast float %1393, %1414
  %1431 = fmul fast float %1427, %1428
  %1432 = fmul fast float %1427, %1429
  %1433 = fmul fast float %1427, %1430
  %1434 = call float @dx.op.unary.f32(i32 27, float %1431)  ; Round_ni(value)
  %1435 = call float @dx.op.unary.f32(i32 27, float %1432)  ; Round_ni(value)
  %1436 = call float @dx.op.unary.f32(i32 27, float %1433)  ; Round_ni(value)
  %1437 = fadd fast float %1434, 5.000000e-01
  %1438 = fadd fast float %1435, 5.000000e-01
  %1439 = fadd fast float %1436, 5.000000e-01
  %1440 = fmul fast float %1437, %1417
  %1441 = fmul fast float %1438, %1418
  %1442 = fmul fast float %1439, %1419
  %1443 = shl i32 %45, 2
  %1444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1443, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.i32 %1444, 0
  %1446 = add i32 %1445, 0
  %1447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1446, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1448 = call float @dx.op.unary.f32(i32 22, float %1440)  ; Frc(value)
  %1449 = call float @dx.op.unary.f32(i32 22, float %1441)  ; Frc(value)
  %1450 = call float @dx.op.unary.f32(i32 22, float %1442)  ; Frc(value)
  %1451 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1447, %dx.types.Handle %39, float %1448, float %1449, float %1450, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1452 = extractvalue %dx.types.ResRet.f32 %1451, 0
  %1453 = extractvalue %dx.types.ResRet.f32 %1451, 1
  %1454 = extractvalue %dx.types.ResRet.f32 %1451, 2
  %1455 = fmul fast float %1452, 1.023000e+03
  %1456 = fmul fast float %1453, 1.023000e+03
  %1457 = fmul fast float %1454, 1.023000e+03
  %1458 = fadd fast float %1455, 5.000000e-01
  %1459 = fadd fast float %1456, 5.000000e-01
  %1460 = fadd fast float %1457, 5.000000e-01
  %1461 = call float @dx.op.unary.f32(i32 27, float %1458)  ; Round_ni(value)
  %1462 = call float @dx.op.unary.f32(i32 27, float %1459)  ; Round_ni(value)
  %1463 = call float @dx.op.unary.f32(i32 27, float %1460)  ; Round_ni(value)
  %1464 = fsub fast float %1431, %1434
  %1465 = fsub fast float %1432, %1435
  %1466 = fsub fast float %1433, %1436
  %1467 = fmul fast float %1464, 7.500000e-01
  %1468 = fmul fast float %1465, 7.500000e-01
  %1469 = fmul fast float %1466, 7.500000e-01
  %1470 = fadd fast float %1434, 1.250000e-01
  %1471 = fadd fast float %1470, %1467
  %1472 = fadd fast float %1471, %1461
  %1473 = fadd fast float %1435, 1.250000e-01
  %1474 = fadd fast float %1473, %1468
  %1475 = fadd fast float %1474, %1462
  %1476 = fadd fast float %1436, 1.250000e-01
  %1477 = fadd fast float %1476, %1469
  %1478 = fadd fast float %1477, %1463
  %1479 = fmul fast float %1472, %1422
  %1480 = fmul fast float %1475, %1423
  %1481 = fmul fast float %1478, %1424
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1443, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = add i32 %1483, 0
  %1485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1485, %dx.types.Handle %37, float %1479, float %1480, float %1481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1487 = extractvalue %dx.types.ResRet.f32 %1486, 0
  br label %1488

; <label>:1488                                    ; preds = %1409, %1398
  %1489 = phi float [ %1487, %1409 ], [ -1.000000e+00, %1398 ]
  %1490 = fadd fast float %1489, %1396
  %1491 = call float @dx.op.unary.f32(i32 7, float %1490)  ; Saturate(value)
  br label %1492

; <label>:1492                                    ; preds = %1488, %1386
  %1493 = phi float [ %1491, %1488 ], [ %1396, %1386 ]
  %1494 = fmul fast float %1493, %480
  br label %1495

; <label>:1495                                    ; preds = %1492, %1381
  %1496 = phi float [ %1494, %1492 ], [ %480, %1381 ]
  %1497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1498 = extractvalue %dx.types.ResRet.i32 %1497, 0
  %1499 = and i32 %1498, 256
  %1500 = icmp eq i32 %1499, 0
  br i1 %1500, label %1547, label %1501

; <label>:1501                                    ; preds = %1495
  %1502 = add i32 %44, 476
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = add i32 %1504, 0
  %1506 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1505, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1507 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1506, %dx.types.Handle %87, float %1382, float %1383, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1508 = extractvalue %dx.types.ResRet.f32 %1507, 0
  %1509 = add i32 %44, 116
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = shl i32 %1511, 4
  %1513 = and i32 %1512, 32752
  %1514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1513)  ; LegacyF16ToF32(value)
  %1515 = lshr i32 %1511, 7
  %1516 = and i32 %1515, 32752
  %1517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1516)  ; LegacyF16ToF32(value)
  %1518 = fsub fast float 1.000000e+00, %1496
  %1519 = call float @dx.op.binary.f32(i32 35, float %1518, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1520 = bitcast float %1496 to i32
  %1521 = sitofp i32 %1520 to float
  %1522 = fadd fast float %1521, 0xC1CFBF8940000000
  %1523 = fmul fast float %1517, %1522
  %1524 = fadd fast float %1523, 0x41CFBF8940000000
  %1525 = fptosi float %1524 to i32
  %1526 = bitcast i32 %1525 to float
  %1527 = bitcast float %1519 to i32
  %1528 = sitofp i32 %1527 to float
  %1529 = fadd fast float %1528, 0xC1CFBF8940000000
  %1530 = fmul fast float %1529, %1517
  %1531 = fadd fast float %1530, 0x41CFBF8940000000
  %1532 = fptosi float %1531 to i32
  %1533 = bitcast i32 %1532 to float
  %1534 = fmul fast float %1526, %1514
  %1535 = fmul fast float %1533, %1514
  %1536 = fsub fast float %1519, %1534
  %1537 = fadd fast float %1535, %1519
  %1538 = call float @dx.op.unary.f32(i32 7, float %1536)  ; Saturate(value)
  %1539 = call float @dx.op.unary.f32(i32 7, float %1537)  ; Saturate(value)
  %1540 = fsub fast float %1508, %1538
  %1541 = fsub fast float %1539, %1538
  %1542 = bitcast float %1541 to i32
  %1543 = sub nsw i32 2129859010, %1542
  %1544 = bitcast i32 %1543 to float
  %1545 = fmul fast float %1544, %1540
  %1546 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  br label %1547

; <label>:1547                                    ; preds = %1501, %1495
  %1548 = phi float [ %1546, %1501 ], [ %1496, %1495 ]
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = and i32 %1550, 128
  %1552 = icmp eq i32 %1551, 0
  br i1 %1552, label %1569, label %1553

; <label>:1553                                    ; preds = %1547
  %1554 = add i32 %44, 460
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1554, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = add i32 %1556, 0
  %1558 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1557, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1559 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1558, %dx.types.Handle %87, float %1382, float %1383, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1560 = extractvalue %dx.types.ResRet.f32 %1559, 0
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = and i32 %1562, 524288
  %1564 = icmp ne i32 %1563, 0
  %1565 = fcmp fast ogt float %1560, 0x3FE0101020000000
  %1566 = select i1 %1565, float 1.000000e+00, float 0.000000e+00
  %1567 = select i1 %1564, float %1566, float %1560
  %1568 = fmul fast float %1567, %1548
  br label %1569

; <label>:1569                                    ; preds = %1553, %1547
  %1570 = phi float [ %1568, %1553 ], [ %1548, %1547 ]
  %1571 = fcmp fast ult float %1570, 0x3F70101020000000
  br i1 %1571, label %2310, label %1572

; <label>:1572                                    ; preds = %1569
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = and i32 %1574, 16
  %1576 = icmp eq i32 %1575, 0
  br i1 %1576, label %1775, label %1577

; <label>:1577                                    ; preds = %1572
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = add i32 %44, 412
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1580, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = add i32 %1582, 0
  %1584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1584, %dx.types.Handle %86, float %1382, float %1383, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1586 = extractvalue %dx.types.ResRet.f32 %1585, 0
  %1587 = extractvalue %dx.types.ResRet.f32 %1585, 1
  %1588 = extractvalue %dx.types.ResRet.f32 %1585, 2
  %1589 = extractvalue %dx.types.ResRet.f32 %1585, 3
  %1590 = and i32 %1579, 255
  %1591 = uitofp i32 %1590 to float
  %1592 = lshr i32 %1579, 8
  %1593 = and i32 %1592, 255
  %1594 = uitofp i32 %1593 to float
  %1595 = fmul fast float %1589, %1591
  %1596 = fadd fast float %1595, %1594
  %1597 = fmul fast float %1596, 0x3F70101000000000
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = and i32 %1599, 512
  %1601 = icmp eq i32 %1600, 0
  br i1 %1601, label %1610, label %1602

; <label>:1602                                    ; preds = %1577
  %1603 = add i32 %44, 492
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1603, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = add i32 %1605, 0
  %1607 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1606, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1608 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1607, %dx.types.Handle %87, float %1382, float %1383, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1609 = extractvalue %dx.types.ResRet.f32 %1608, 0
  br label %1610

; <label>:1610                                    ; preds = %1602, %1577
  %1611 = phi float [ %1609, %1602 ], [ 1.000000e+00, %1577 ]
  %1612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1613 = extractvalue %dx.types.ResRet.i32 %1612, 0
  %1614 = and i32 %1613, 33554432
  %1615 = icmp eq i32 %1614, 0
  br i1 %1615, label %1722, label %1616

; <label>:1616                                    ; preds = %1610
  %1617 = add i32 %44, 240
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1617, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = and i32 %1619, 65535
  %1621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1620)  ; LegacyF16ToF32(value)
  %1622 = lshr i32 %1619, 16
  %1623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1622)  ; LegacyF16ToF32(value)
  %1624 = add i32 %44, 244
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1624, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = and i32 %1626, 65535
  %1628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1627)  ; LegacyF16ToF32(value)
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = lshr i32 %1630, 24
  %1632 = uitofp i32 %1631 to float
  %1633 = fmul fast float %1632, 0x3F70101020000000
  %1634 = and i32 %1630, 255
  %1635 = uitofp i32 %1634 to float
  %1636 = fmul fast float %1635, 0x3F70101020000000
  %1637 = lshr i32 %1630, 8
  %1638 = and i32 %1637, 255
  %1639 = uitofp i32 %1638 to float
  %1640 = fmul fast float %1639, 0x3F70101020000000
  %1641 = lshr i32 %1630, 16
  %1642 = and i32 %1641, 255
  %1643 = uitofp i32 %1642 to float
  %1644 = fmul fast float %1643, 0x3F70101020000000
  %1645 = add i32 %44, 236
  %1646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1645, i32 undef)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.i32 %1646, 0
  %1648 = lshr i32 %1647, 24
  %1649 = uitofp i32 %1648 to float
  %1650 = fmul fast float %1649, 0x3F70101020000000
  %1651 = and i32 %1647, 255
  %1652 = uitofp i32 %1651 to float
  %1653 = fmul fast float %1652, 0x3F70101020000000
  %1654 = lshr i32 %1647, 8
  %1655 = and i32 %1654, 255
  %1656 = uitofp i32 %1655 to float
  %1657 = fmul fast float %1656, 0x3F70101020000000
  %1658 = lshr i32 %1647, 16
  %1659 = and i32 %1658, 255
  %1660 = uitofp i32 %1659 to float
  %1661 = fmul fast float %1660, 0x3F70101020000000
  %1662 = bitcast float %1586 to i32
  %1663 = ashr i32 %1662, 1
  %1664 = sub nsw i32 1597463174, %1663
  %1665 = bitcast i32 %1664 to float
  %1666 = fmul fast float %1586, 5.000000e-01
  %1667 = fmul fast float %1665, %1665
  %1668 = fmul fast float %1667, %1666
  %1669 = fsub fast float 1.500000e+00, %1668
  %1670 = fmul fast float %1665, %1586
  %1671 = fmul fast float %1670, %1669
  %1672 = bitcast float %1587 to i32
  %1673 = ashr i32 %1672, 1
  %1674 = sub nsw i32 1597463174, %1673
  %1675 = bitcast i32 %1674 to float
  %1676 = fmul fast float %1587, 5.000000e-01
  %1677 = fmul fast float %1675, %1675
  %1678 = fmul fast float %1677, %1676
  %1679 = fsub fast float 1.500000e+00, %1678
  %1680 = fmul fast float %1675, %1587
  %1681 = fmul fast float %1680, %1679
  %1682 = bitcast float %1588 to i32
  %1683 = ashr i32 %1682, 1
  %1684 = sub nsw i32 1597463174, %1683
  %1685 = bitcast i32 %1684 to float
  %1686 = fmul fast float %1588, 5.000000e-01
  %1687 = fmul fast float %1685, %1685
  %1688 = fmul fast float %1687, %1686
  %1689 = fsub fast float 1.500000e+00, %1688
  %1690 = fmul fast float %1685, %1588
  %1691 = fmul fast float %1690, %1689
  %1692 = fsub fast float %1671, %1653
  %1693 = fsub fast float %1681, %1657
  %1694 = fsub fast float %1691, %1661
  %1695 = fmul fast float %1692, %1621
  %1696 = fmul fast float %1693, %1623
  %1697 = fmul fast float %1694, %1628
  %1698 = fadd fast float %1695, %1636
  %1699 = fadd fast float %1696, %1640
  %1700 = fadd fast float %1697, %1644
  %1701 = call float @dx.op.unary.f32(i32 7, float %1698)  ; Saturate(value)
  %1702 = call float @dx.op.unary.f32(i32 7, float %1699)  ; Saturate(value)
  %1703 = call float @dx.op.unary.f32(i32 7, float %1700)  ; Saturate(value)
  %1704 = fmul fast float %1701, %1701
  %1705 = fmul fast float %1702, %1702
  %1706 = fmul fast float %1703, %1703
  %1707 = fsub fast float %1704, %1586
  %1708 = fsub fast float %1705, %1587
  %1709 = fsub fast float %1706, %1588
  %1710 = fmul fast float %1707, %1611
  %1711 = fmul fast float %1708, %1611
  %1712 = fmul fast float %1709, %1611
  %1713 = fadd fast float %1710, %1586
  %1714 = fadd fast float %1711, %1587
  %1715 = fadd fast float %1712, %1588
  %1716 = fadd fast float %1633, %1597
  %1717 = fsub fast float %1716, %1650
  %1718 = call float @dx.op.unary.f32(i32 7, float %1717)  ; Saturate(value)
  %1719 = fsub fast float %1718, %1597
  %1720 = fmul fast float %1719, %1611
  %1721 = fadd fast float %1720, %1597
  br label %1775

; <label>:1722                                    ; preds = %1610
  %1723 = and i32 %1613, 134217728
  %1724 = icmp eq i32 %1723, 0
  br i1 %1724, label %1759, label %1725

; <label>:1725                                    ; preds = %1722
  %1726 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %1727 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %1728 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %1729 = fadd fast float %1726, -5.000000e-01
  %1730 = fadd fast float %1727, -5.000000e-01
  %1731 = fadd fast float %1728, -5.000000e-01
  %1732 = fmul fast float %1729, %1611
  %1733 = fmul fast float %1730, %1611
  %1734 = fmul fast float %1731, %1611
  %1735 = fadd fast float %1732, 5.000000e-01
  %1736 = fadd fast float %1733, 5.000000e-01
  %1737 = fadd fast float %1734, 5.000000e-01
  %1738 = call float @dx.op.unary.f32(i32 24, float %1586)  ; Sqrt(value)
  %1739 = call float @dx.op.unary.f32(i32 24, float %1587)  ; Sqrt(value)
  %1740 = call float @dx.op.unary.f32(i32 24, float %1588)  ; Sqrt(value)
  %1741 = fmul fast float %1735, 2.000000e+00
  %1742 = fsub fast float 1.000000e+00, %1741
  %1743 = fmul fast float %1742, %1738
  %1744 = fadd fast float %1743, %1741
  %1745 = fmul fast float %1744, %1738
  %1746 = fmul fast float %1736, 2.000000e+00
  %1747 = fsub fast float 1.000000e+00, %1746
  %1748 = fmul fast float %1747, %1739
  %1749 = fadd fast float %1748, %1746
  %1750 = fmul fast float %1749, %1739
  %1751 = fmul fast float %1737, 2.000000e+00
  %1752 = fsub fast float 1.000000e+00, %1751
  %1753 = fmul fast float %1752, %1740
  %1754 = fadd fast float %1753, %1751
  %1755 = fmul fast float %1754, %1740
  %1756 = fmul fast float %1745, %1745
  %1757 = fmul fast float %1750, %1750
  %1758 = fmul fast float %1755, %1755
  br label %1775

; <label>:1759                                    ; preds = %1722
  %1760 = fmul fast float %312, %312
  %1761 = fmul fast float %316, %316
  %1762 = fmul fast float %320, %320
  %1763 = fadd fast float %1760, -1.000000e+00
  %1764 = fadd fast float %1761, -1.000000e+00
  %1765 = fadd fast float %1762, -1.000000e+00
  %1766 = fmul fast float %1611, %1763
  %1767 = fmul fast float %1611, %1764
  %1768 = fmul fast float %1611, %1765
  %1769 = fadd fast float %1766, 1.000000e+00
  %1770 = fadd fast float %1767, 1.000000e+00
  %1771 = fadd fast float %1768, 1.000000e+00
  %1772 = fmul fast float %1769, %1586
  %1773 = fmul fast float %1770, %1587
  %1774 = fmul fast float %1771, %1588
  br label %1775

; <label>:1775                                    ; preds = %1759, %1725, %1616, %1572
  %1776 = phi float [ %1721, %1616 ], [ %1597, %1725 ], [ %1597, %1759 ], [ 0x3FA23C0BE0000000, %1572 ]
  %1777 = phi float [ %1713, %1616 ], [ %1756, %1725 ], [ %1772, %1759 ], [ 1.000000e+00, %1572 ]
  %1778 = phi float [ %1714, %1616 ], [ %1757, %1725 ], [ %1773, %1759 ], [ 1.000000e+00, %1572 ]
  %1779 = phi float [ %1715, %1616 ], [ %1758, %1725 ], [ %1774, %1759 ], [ 1.000000e+00, %1572 ]
  %1780 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.i32 %1780, 1
  %1782 = and i32 %1781, 1
  %1783 = icmp ne i32 %1782, 0
  %1784 = add i32 %44, 356
  %1785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1784, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.i32 %1785, 0
  %1787 = and i32 %1786, 32
  %1788 = icmp ne i32 %1787, 0
  %1789 = and i1 %1783, %1788
  %1790 = select i1 %1789, float 1.000000e+00, float %1777
  %1791 = select i1 %1789, float 0x3FD3333340000000, float %1778
  %1792 = select i1 %1789, float 0x3FD3333340000000, float %1779
  %1793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1794 = extractvalue %dx.types.ResRet.i32 %1793, 0
  %1795 = and i32 %1794, 32
  %1796 = icmp eq i32 %1795, 0
  br i1 %1796, label %1869, label %1797

; <label>:1797                                    ; preds = %1775
  %1798 = add i32 %44, 108
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = add i32 %44, 428
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = add i32 %1803, 0
  %1805 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1804, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1806 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1805, %dx.types.Handle %86, float %1382, float %1383, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1807 = extractvalue %dx.types.ResRet.f32 %1806, 0
  %1808 = extractvalue %dx.types.ResRet.f32 %1806, 1
  %1809 = extractvalue %dx.types.ResRet.f32 %1806, 2
  %1810 = extractvalue %dx.types.ResRet.f32 %1806, 3
  %1811 = and i32 %1800, 255
  %1812 = uitofp i32 %1811 to float
  %1813 = lshr i32 %1800, 8
  %1814 = and i32 %1813, 255
  %1815 = uitofp i32 %1814 to float
  %1816 = lshr i32 %1800, 16
  %1817 = and i32 %1816, 255
  %1818 = uitofp i32 %1817 to float
  %1819 = fmul fast float %1818, 0x3F70101000000000
  %1820 = fmul fast float %1807, %1812
  %1821 = fadd fast float %1820, %1815
  %1822 = fmul fast float %1821, 0x3F70101000000000
  %1823 = fadd fast float %1808, -5.000000e-01
  %1824 = fadd fast float %1810, -5.000000e-01
  %1825 = fmul fast float %1823, %1819
  %1826 = fmul fast float %1824, %1819
  %1827 = fadd fast float %1825, 5.000000e-01
  %1828 = fadd fast float %1826, 5.000000e-01
  %1829 = fmul fast float %1827, 2.000000e+00
  %1830 = fadd fast float %1829, -1.000000e+00
  %1831 = fmul fast float %1828, 2.000000e+00
  %1832 = fadd fast float %1831, -1.000000e+00
  %1833 = fadd fast float %1830, %1832
  %1834 = fmul fast float %1833, 5.000000e-01
  %1835 = fsub fast float %1830, %1832
  %1836 = fmul fast float %1835, 5.000000e-01
  %1837 = call float @dx.op.unary.f32(i32 6, float %1834)  ; FAbs(value)
  %1838 = fsub fast float 1.000000e+00, %1837
  %1839 = call float @dx.op.unary.f32(i32 6, float %1836)  ; FAbs(value)
  %1840 = fsub fast float %1838, %1839
  %1841 = call float @dx.op.dot3.f32(i32 55, float %1834, float %1836, float %1840, float %1834, float %1836, float %1840)  ; Dot3(ax,ay,az,bx,by,bz)
  %1842 = call float @dx.op.unary.f32(i32 25, float %1841)  ; Rsqrt(value)
  %1843 = fmul fast float %1834, %1842
  %1844 = fmul fast float %1836, %1842
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = and i32 %1846, 67108864
  %1848 = icmp eq i32 %1847, 0
  br i1 %1848, label %1865, label %1849

; <label>:1849                                    ; preds = %1797
  %1850 = add i32 %44, 296
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = and i32 %1852, 65535
  %1854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1853)  ; LegacyF16ToF32(value)
  %1855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.i32 %1855, 0
  %1857 = and i32 %1856, 65535
  %1858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1857)  ; LegacyF16ToF32(value)
  %1859 = lshr i32 %1852, 16
  %1860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1859)  ; LegacyF16ToF32(value)
  %1861 = fsub fast float %1822, %1860
  %1862 = fmul fast float %1861, %1854
  %1863 = fadd fast float %1862, %1858
  %1864 = call float @dx.op.unary.f32(i32 7, float %1863)  ; Saturate(value)
  br label %1865

; <label>:1865                                    ; preds = %1849, %1797
  %1866 = phi float [ %1864, %1849 ], [ %1822, %1797 ]
  %1867 = call float @dx.op.dot2.f32(i32 54, float %1843, float %1844, float %1286, float %1287)  ; Dot2(ax,ay,bx,by)
  %1868 = call float @dx.op.dot2.f32(i32 54, float %1843, float %1844, float %1288, float %1289)  ; Dot2(ax,ay,bx,by)
  br label %1869

; <label>:1869                                    ; preds = %1865, %1775
  %1870 = phi float [ %1866, %1865 ], [ 0x3FD6666660000000, %1775 ]
  %1871 = phi float [ %1867, %1865 ], [ 0.000000e+00, %1775 ]
  %1872 = phi float [ %1868, %1865 ], [ 0.000000e+00, %1775 ]
  %1873 = phi float [ %1809, %1865 ], [ 1.000000e+00, %1775 ]
  %1874 = add i32 %44, 176
  %1875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1876 = extractvalue %dx.types.ResRet.i32 %1875, 0
  %1877 = lshr i32 %1876, 22
  %1878 = shl nuw nsw i32 %1877, 5
  %1879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1878)  ; LegacyF16ToF32(value)
  %1880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1881 = extractvalue %dx.types.ResRet.i32 %1880, 0
  %1882 = and i32 %1881, 64
  %1883 = icmp eq i32 %1882, 0
  br i1 %1883, label %1917, label %1884

; <label>:1884                                    ; preds = %1869
  %1885 = add i32 %44, 444
  %1886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.i32 %1886, 0
  %1888 = add i32 %1887, 0
  %1889 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1888, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1891 = extractvalue %dx.types.ResRet.i32 %1890, 0
  %1892 = and i32 %1891, 131072
  %1893 = icmp eq i32 %1892, 0
  %1894 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1889, %dx.types.Handle %86, float %1382, float %1383, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1895 = extractvalue %dx.types.ResRet.f32 %1894, 0
  %1896 = extractvalue %dx.types.ResRet.f32 %1894, 1
  %1897 = extractvalue %dx.types.ResRet.f32 %1894, 2
  %1898 = fmul fast float %1895, %300
  %1899 = fmul fast float %1896, %303
  %1900 = fmul fast float %1897, %306
  br i1 %1893, label %1907, label %1901

; <label>:1901                                    ; preds = %1884
  %1902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1903 = extractvalue %dx.types.CBufRet.f32 %1902, 0
  %1904 = fmul fast float %1903, %1898
  %1905 = fmul fast float %1903, %1899
  %1906 = fmul fast float %1903, %1900
  br label %1907

; <label>:1907                                    ; preds = %1901, %1884
  %1908 = phi float [ %1904, %1901 ], [ %1898, %1884 ]
  %1909 = phi float [ %1905, %1901 ], [ %1899, %1884 ]
  %1910 = phi float [ %1906, %1901 ], [ %1900, %1884 ]
  %1911 = fmul fast float %1908, %1879
  %1912 = select i1 %238, float %1911, float %1908
  %1913 = call float @dx.op.dot3.f32(i32 55, float %1912, float %1909, float %1910, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1914 = select i1 %238, float 0.000000e+00, float %1908
  %1915 = select i1 %238, float %1913, float %1909
  %1916 = select i1 %238, float 0.000000e+00, float %1910
  br label %1917

; <label>:1917                                    ; preds = %1907, %1869
  %1918 = phi float [ %1914, %1907 ], [ 0.000000e+00, %1869 ]
  %1919 = phi float [ %1915, %1907 ], [ 0.000000e+00, %1869 ]
  %1920 = phi float [ %1916, %1907 ], [ 0.000000e+00, %1869 ]
  %1921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1922 = extractvalue %dx.types.ResRet.i32 %1921, 0
  %1923 = and i32 %1922, 1024
  %1924 = icmp eq i32 %1923, 0
  br i1 %1924, label %1955, label %1925

; <label>:1925                                    ; preds = %1917
  %1926 = add i32 %44, 168
  %1927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1926, i32 undef)  ; BufferLoad(srv,index,wot)
  %1928 = extractvalue %dx.types.ResRet.i32 %1927, 0
  %1929 = and i32 %1928, 255
  %1930 = uitofp i32 %1929 to float
  %1931 = fmul fast float %1930, 0x3F70101020000000
  %1932 = lshr i32 %1928, 8
  %1933 = and i32 %1932, 255
  %1934 = uitofp i32 %1933 to float
  %1935 = fmul fast float %1934, 0x3F70101020000000
  %1936 = lshr i32 %1928, 16
  %1937 = and i32 %1936, 255
  %1938 = uitofp i32 %1937 to float
  %1939 = fmul fast float %1938, 0x3F70101020000000
  %1940 = fmul fast float %1931, %1931
  %1941 = fmul fast float %1935, %1935
  %1942 = fmul fast float %1939, %1939
  %1943 = add i32 %44, 508
  %1944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.i32 %1944, 0
  %1946 = add i32 %1945, 0
  %1947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1946, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1948 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1947, %dx.types.Handle %87, float %1382, float %1383, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1949 = extractvalue %dx.types.ResRet.f32 %1948, 0
  %1950 = extractvalue %dx.types.ResRet.f32 %1948, 1
  %1951 = extractvalue %dx.types.ResRet.f32 %1948, 2
  %1952 = fmul fast float %1940, %1949
  %1953 = fmul fast float %1941, %1950
  %1954 = fmul fast float %1942, %1951
  br label %1955

; <label>:1955                                    ; preds = %1925, %1917
  %1956 = phi float [ %1952, %1925 ], [ 0.000000e+00, %1917 ]
  %1957 = phi float [ %1953, %1925 ], [ 0.000000e+00, %1917 ]
  %1958 = phi float [ %1954, %1925 ], [ 0.000000e+00, %1917 ]
  %1959 = fcmp fast ogt float %1956, 0.000000e+00
  %1960 = fcmp fast ogt float %1957, 0.000000e+00
  %1961 = fcmp fast ogt float %1958, 0.000000e+00
  %1962 = call float @dx.op.unary.f32(i32 23, float %1956)  ; Log(value)
  %1963 = call float @dx.op.unary.f32(i32 23, float %1957)  ; Log(value)
  %1964 = call float @dx.op.unary.f32(i32 23, float %1958)  ; Log(value)
  %1965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.i32 %1965, 0
  %1967 = lshr i32 %1966, 7
  %1968 = and i32 %1967, 32752
  %1969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1968)  ; LegacyF16ToF32(value)
  %1970 = fmul fast float %1962, 0xBFE62E4300000000
  %1971 = fmul fast float %1970, %1969
  %1972 = fmul fast float %1963, 0xBFE62E4300000000
  %1973 = fmul fast float %1972, %1969
  %1974 = fmul fast float %1964, 0xBFE62E4300000000
  %1975 = fmul fast float %1974, %1969
  %1976 = select i1 %1959, float %1971, float 1.270000e+02
  %1977 = select i1 %1960, float %1973, float 1.270000e+02
  %1978 = select i1 %1961, float %1975, float 1.270000e+02
  %1979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1980 = extractvalue %dx.types.ResRet.i32 %1979, 0
  %1981 = and i32 %1980, 10240
  %1982 = icmp eq i32 %1981, 0
  br i1 %1982, label %2027, label %1983

; <label>:1983                                    ; preds = %1955
  %1984 = add i32 %44, 524
  %1985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.i32 %1985, 0
  %1987 = add i32 %1986, 0
  %1988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1987, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1989 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1988, %dx.types.Handle %87, float %1382, float %1383, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1990 = extractvalue %dx.types.ResRet.f32 %1989, 1
  %1991 = extractvalue %dx.types.ResRet.f32 %1989, 3
  %1992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.i32 %1992, 0
  %1994 = and i32 %1993, 1048576
  %1995 = icmp ne i32 %1994, 0
  %1996 = and i32 %1993, 8192
  %1997 = icmp eq i32 %1996, 0
  br i1 %1997, label %2013, label %1998

; <label>:1998                                    ; preds = %1983
  %1999 = extractvalue %dx.types.ResRet.f32 %1989, 2
  %2000 = select i1 %1995, float %1999, float %1990
  %2001 = extractvalue %dx.types.ResRet.f32 %1989, 0
  %2002 = select i1 %1995, float %2001, float %1990
  %2003 = add i32 %44, 112
  %2004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.i32 %2004, 0
  %2006 = lshr i32 %2005, 16
  %2007 = and i32 %2006, 255
  %2008 = uitofp i32 %2007 to float
  %2009 = fmul fast float %2008, 0x3F80101020000000
  %2010 = fmul fast float %2009, %2002
  %2011 = fmul fast float %2009, %1990
  %2012 = fmul fast float %2009, %2000
  br label %2013

; <label>:2013                                    ; preds = %1998, %1983
  %2014 = phi float [ %2010, %1998 ], [ 0.000000e+00, %1983 ]
  %2015 = phi float [ %2011, %1998 ], [ 0.000000e+00, %1983 ]
  %2016 = phi float [ %2012, %1998 ], [ 0.000000e+00, %1983 ]
  %2017 = and i32 %1993, 2048
  %2018 = icmp eq i32 %2017, 0
  br i1 %2018, label %2027, label %2019

; <label>:2019                                    ; preds = %2013
  %2020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2021 = extractvalue %dx.types.ResRet.i32 %2020, 0
  %2022 = shl i32 %2021, 4
  %2023 = and i32 %2022, 32752
  %2024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2023)  ; LegacyF16ToF32(value)
  %2025 = fmul fast float %2024, %1991
  %2026 = call float @dx.op.binary.f32(i32 35, float %2025, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2027

; <label>:2027                                    ; preds = %2019, %2013, %1955
  %2028 = phi float [ %2014, %2019 ], [ %2014, %2013 ], [ 0.000000e+00, %1955 ]
  %2029 = phi float [ %2015, %2019 ], [ %2015, %2013 ], [ 0.000000e+00, %1955 ]
  %2030 = phi float [ %2016, %2019 ], [ %2016, %2013 ], [ 0.000000e+00, %1955 ]
  %2031 = phi float [ %2026, %2019 ], [ 0x3F70101020000000, %2013 ], [ 0x3F70101020000000, %1955 ]
  %2032 = add i32 %44, 112
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = and i32 %2034, 255
  %2036 = uitofp i32 %2035 to float
  %2037 = lshr i32 %2034, 8
  %2038 = and i32 %2037, 255
  %2039 = uitofp i32 %2038 to float
  %2040 = call float @dx.op.dot3.f32(i32 55, float %1790, float %1791, float %1792, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2041 = fmul fast float %2039, %2040
  %2042 = fadd fast float %2041, %2036
  %2043 = fmul fast float %2042, 0x3F70101020000000
  %2044 = call float @dx.op.unary.f32(i32 7, float %2043)  ; Saturate(value)
  br i1 %1274, label %2045, label %2080

; <label>:2045                                    ; preds = %2027
  %2046 = fmul fast float %2031, 2.000000e+00
  %2047 = fcmp fast olt float %1976, 1.270000e+02
  %2048 = fcmp fast olt float %1977, 1.270000e+02
  %2049 = fcmp fast olt float %1978, 1.270000e+02
  %2050 = fmul fast float %1976, 0xBFF7154760000000
  %2051 = fmul fast float %2050, %2046
  %2052 = fmul fast float %1977, 0xBFF7154760000000
  %2053 = fmul fast float %2052, %2046
  %2054 = fmul fast float %1978, 0xBFF7154760000000
  %2055 = fmul fast float %2054, %2046
  %2056 = call float @dx.op.unary.f32(i32 21, float %2051)  ; Exp(value)
  %2057 = call float @dx.op.unary.f32(i32 21, float %2053)  ; Exp(value)
  %2058 = call float @dx.op.unary.f32(i32 21, float %2055)  ; Exp(value)
  %2059 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  %2060 = call float @dx.op.unary.f32(i32 7, float %2057)  ; Saturate(value)
  %2061 = call float @dx.op.unary.f32(i32 7, float %2058)  ; Saturate(value)
  %2062 = fadd fast float %2059, -1.000000e+00
  %2063 = select i1 %2047, float %2062, float -1.000000e+00
  %2064 = fadd fast float %2060, -1.000000e+00
  %2065 = select i1 %2048, float %2064, float -1.000000e+00
  %2066 = fadd fast float %2061, -1.000000e+00
  %2067 = select i1 %2049, float %2066, float -1.000000e+00
  %2068 = fmul fast float %2063, %1570
  %2069 = fmul fast float %2065, %1570
  %2070 = fmul fast float %2067, %1570
  %2071 = fadd fast float %2068, 1.000000e+00
  %2072 = fadd fast float %2069, 1.000000e+00
  %2073 = fadd fast float %2070, 1.000000e+00
  %2074 = fmul fast float %2071, %1255
  %2075 = fmul fast float %2072, %1256
  %2076 = fmul fast float %2073, %1257
  %2077 = fmul fast float %2071, %1258
  %2078 = fmul fast float %2072, %1259
  %2079 = fmul fast float %2073, %1260
  br label %2080

; <label>:2080                                    ; preds = %2045, %2027
  %2081 = phi float [ %2074, %2045 ], [ %1255, %2027 ]
  %2082 = phi float [ %2075, %2045 ], [ %1256, %2027 ]
  %2083 = phi float [ %2076, %2045 ], [ %1257, %2027 ]
  %2084 = phi float [ %2077, %2045 ], [ %1258, %2027 ]
  %2085 = phi float [ %2078, %2045 ], [ %1259, %2027 ]
  %2086 = phi float [ %2079, %2045 ], [ %1260, %2027 ]
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = and i32 %2088, 3
  %2090 = icmp eq i32 %2089, 3
  br i1 %2090, label %2169, label %2091

; <label>:2091                                    ; preds = %2080
  %2092 = and i32 %2088, 16
  %2093 = icmp ne i32 %2092, 0
  %2094 = select i1 %2093, float %1570, float 0.000000e+00
  %2095 = icmp eq i32 %2089, 0
  br i1 %2095, label %2096, label %2124

; <label>:2096                                    ; preds = %2091
  %2097 = and i32 %2088, 64
  %2098 = icmp ne i32 %2097, 0
  %2099 = select i1 %2098, float %1570, float 0.000000e+00
  %2100 = fsub fast float %1790, %2081
  %2101 = fsub fast float %1791, %2082
  %2102 = fsub fast float %1792, %2083
  %2103 = fmul fast float %2094, %2100
  %2104 = fmul fast float %2094, %2101
  %2105 = fmul fast float %2094, %2102
  %2106 = fadd fast float %2103, %2081
  %2107 = fadd fast float %2104, %2082
  %2108 = fadd fast float %2105, %2083
  %2109 = fsub fast float %1776, %1267
  %2110 = fmul fast float %2094, %2109
  %2111 = fadd fast float %2110, %1267
  %2112 = fsub fast float %1918, %2084
  %2113 = fsub fast float %1919, %2085
  %2114 = fsub fast float %1920, %2086
  %2115 = fmul fast float %2099, %2112
  %2116 = fmul fast float %2099, %2113
  %2117 = fmul fast float %2099, %2114
  %2118 = fadd fast float %2115, %2084
  %2119 = fadd fast float %2116, %2085
  %2120 = fadd fast float %2117, %2086
  %2121 = fsub fast float %2044, %1272
  %2122 = fmul fast float %2094, %2121
  %2123 = fadd fast float %2122, %1272
  br label %2169

; <label>:2124                                    ; preds = %2091
  %2125 = icmp eq i32 %2089, 1
  br i1 %2125, label %2126, label %2139

; <label>:2126                                    ; preds = %2124
  %2127 = fadd fast float %1790, -1.000000e+00
  %2128 = fadd fast float %1791, -1.000000e+00
  %2129 = fadd fast float %1792, -1.000000e+00
  %2130 = fmul fast float %2094, %2127
  %2131 = fmul fast float %2094, %2128
  %2132 = fmul fast float %2094, %2129
  %2133 = fadd fast float %2130, 1.000000e+00
  %2134 = fadd fast float %2131, 1.000000e+00
  %2135 = fadd fast float %2132, 1.000000e+00
  %2136 = fmul fast float %2133, %2081
  %2137 = fmul fast float %2134, %2082
  %2138 = fmul fast float %2135, %2083
  br label %2169

; <label>:2139                                    ; preds = %2124
  %2140 = icmp eq i32 %2089, 2
  br i1 %2140, label %2141, label %2169

; <label>:2141                                    ; preds = %2139
  %2142 = call float @dx.op.unary.f32(i32 24, float %1790)  ; Sqrt(value)
  %2143 = call float @dx.op.unary.f32(i32 24, float %1791)  ; Sqrt(value)
  %2144 = call float @dx.op.unary.f32(i32 24, float %1792)  ; Sqrt(value)
  %2145 = fadd fast float %2142, -5.000000e-01
  %2146 = fadd fast float %2143, -5.000000e-01
  %2147 = fadd fast float %2144, -5.000000e-01
  %2148 = fmul fast float %2145, %2094
  %2149 = fmul fast float %2146, %2094
  %2150 = fmul fast float %2147, %2094
  %2151 = fadd fast float %2148, 5.000000e-01
  %2152 = fadd fast float %2149, 5.000000e-01
  %2153 = fadd fast float %2150, 5.000000e-01
  %2154 = fmul fast float %2151, 2.000000e+00
  %2155 = fsub fast float 1.000000e+00, %2154
  %2156 = fmul fast float %2155, %2081
  %2157 = fadd fast float %2156, %2154
  %2158 = fmul fast float %2157, %2081
  %2159 = fmul fast float %2152, 2.000000e+00
  %2160 = fsub fast float 1.000000e+00, %2159
  %2161 = fmul fast float %2160, %2082
  %2162 = fadd fast float %2161, %2159
  %2163 = fmul fast float %2162, %2082
  %2164 = fmul fast float %2153, 2.000000e+00
  %2165 = fsub fast float 1.000000e+00, %2164
  %2166 = fmul fast float %2165, %2083
  %2167 = fadd fast float %2166, %2164
  %2168 = fmul fast float %2167, %2083
  br label %2169

; <label>:2169                                    ; preds = %2141, %2139, %2126, %2096, %2080
  %2170 = phi float [ %2081, %2080 ], [ %2158, %2141 ], [ %2081, %2139 ], [ %2136, %2126 ], [ %2106, %2096 ]
  %2171 = phi float [ %2082, %2080 ], [ %2163, %2141 ], [ %2082, %2139 ], [ %2137, %2126 ], [ %2107, %2096 ]
  %2172 = phi float [ %2083, %2080 ], [ %2168, %2141 ], [ %2083, %2139 ], [ %2138, %2126 ], [ %2108, %2096 ]
  %2173 = phi float [ %2084, %2080 ], [ %2084, %2141 ], [ %2084, %2139 ], [ %2084, %2126 ], [ %2118, %2096 ]
  %2174 = phi float [ %2085, %2080 ], [ %2085, %2141 ], [ %2085, %2139 ], [ %2085, %2126 ], [ %2119, %2096 ]
  %2175 = phi float [ %2086, %2080 ], [ %2086, %2141 ], [ %2086, %2139 ], [ %2086, %2126 ], [ %2120, %2096 ]
  %2176 = phi float [ %1267, %2080 ], [ %1267, %2141 ], [ %1267, %2139 ], [ %1267, %2126 ], [ %2111, %2096 ]
  %2177 = phi float [ %1272, %2080 ], [ %1272, %2141 ], [ %1272, %2139 ], [ %1272, %2126 ], [ %2123, %2096 ]
  %2178 = and i32 %2088, 12
  %2179 = icmp eq i32 %2178, 12
  br i1 %2179, label %2310, label %2180

; <label>:2180                                    ; preds = %2169
  %2181 = and i32 %2088, 2097184
  %2182 = icmp eq i32 %2181, 2097184
  %2183 = select i1 %2182, float %1570, float 0.000000e+00
  %2184 = and i32 %2088, 4194336
  %2185 = icmp eq i32 %2184, 4194336
  %2186 = select i1 %2185, float %1570, float 0.000000e+00
  %2187 = and i32 %2088, 8388640
  %2188 = icmp eq i32 %2187, 8388640
  %2189 = select i1 %2188, float %1570, float 0.000000e+00
  %2190 = and i32 %2088, 1024
  %2191 = icmp ne i32 %2190, 0
  %2192 = select i1 %2191, float %1570, float 0.000000e+00
  %2193 = and i32 %2088, 2048
  %2194 = icmp ne i32 %2193, 0
  %2195 = select i1 %2194, float %1570, float 0.000000e+00
  %2196 = and i32 %2088, 8192
  %2197 = icmp ne i32 %2196, 0
  %2198 = select i1 %2197, float %1570, float 0.000000e+00
  %2199 = icmp eq i32 %2178, 0
  br i1 %2199, label %2200, label %2234

; <label>:2200                                    ; preds = %2180
  %2201 = fsub fast float %1871, %1253
  %2202 = fsub fast float %1872, %1254
  %2203 = fmul fast float %2183, %2201
  %2204 = fmul fast float %2183, %2202
  %2205 = fadd fast float %2203, %1253
  %2206 = fadd fast float %2204, %1254
  %2207 = fsub fast float %1873, %1270
  %2208 = fmul fast float %2186, %2207
  %2209 = fadd fast float %2208, %1270
  %2210 = fsub fast float %1870, %1269
  %2211 = fmul fast float %2189, %2210
  %2212 = fadd fast float %2211, %1269
  %2213 = fsub fast float %1976, %1264
  %2214 = fsub fast float %1977, %1265
  %2215 = fsub fast float %1978, %1266
  %2216 = fmul fast float %2192, %2213
  %2217 = fmul fast float %2192, %2214
  %2218 = fmul fast float %2192, %2215
  %2219 = fadd fast float %2216, %1264
  %2220 = fadd fast float %2217, %1265
  %2221 = fadd fast float %2218, %1266
  %2222 = fsub fast float %2031, %1271
  %2223 = fmul fast float %2195, %2222
  %2224 = fadd fast float %2223, %1271
  %2225 = fsub fast float %2028, %1261
  %2226 = fsub fast float %2029, %1262
  %2227 = fsub fast float %2030, %1263
  %2228 = fmul fast float %2198, %2225
  %2229 = fmul fast float %2198, %2226
  %2230 = fmul fast float %2198, %2227
  %2231 = fadd fast float %2228, %1261
  %2232 = fadd fast float %2229, %1262
  %2233 = fadd fast float %2230, %1263
  br label %2310

; <label>:2234                                    ; preds = %2180
  %2235 = icmp eq i32 %2178, 4
  br i1 %2235, label %2236, label %2282

; <label>:2236                                    ; preds = %2234
  %2237 = fmul fast float %2183, %1871
  %2238 = fmul fast float %2183, %1872
  %2239 = fadd fast float %2237, %1253
  %2240 = fadd fast float %2238, %1254
  %2241 = call float @dx.op.binary.f32(i32 36, float %1270, float %1873)  ; FMin(a,b)
  %2242 = fsub fast float %2241, %1270
  %2243 = fmul fast float %2242, %2186
  %2244 = fadd fast float %2243, %1270
  %2245 = fadd fast float %1870, %1269
  %2246 = fmul fast float %2245, 0x3FF337FAE0000000
  %2247 = fmul fast float %1269, %1269
  %2248 = fmul fast float %1870, %1870
  %2249 = fadd fast float %2248, %2247
  %2250 = fmul fast float %2249, 0x3FE5152B00000000
  %2251 = fmul fast float %1269, 0xBFCC1F85E0000000
  %2252 = fmul fast float %2251, %1870
  %2253 = fadd fast float %2252, 0xBFE1363700000000
  %2254 = fadd fast float %2253, %2246
  %2255 = fsub fast float %2254, %2250
  %2256 = fmul fast float %2245, 0x3FBA6F0D00000000
  %2257 = fmul fast float %2249, 0x3FD0432880000000
  %2258 = fmul fast float %1269, 0xBFEF110800000000
  %2259 = fmul fast float %2258, %1870
  %2260 = fadd fast float %2259, 1.000000e+00
  %2261 = fsub fast float %2260, %2256
  %2262 = fadd fast float %2261, %2257
  %2263 = fdiv fast float %2255, %2262
  %2264 = call float @dx.op.unary.f32(i32 7, float %2263)  ; Saturate(value)
  %2265 = fsub fast float %2264, %1269
  %2266 = fmul fast float %2265, %2189
  %2267 = fadd fast float %2266, %1269
  %2268 = fmul fast float %2192, %1976
  %2269 = fmul fast float %2192, %1977
  %2270 = fmul fast float %2192, %1978
  %2271 = fadd fast float %2268, %1264
  %2272 = fadd fast float %2269, %1265
  %2273 = fadd fast float %2270, %1266
  %2274 = fmul fast float %2195, %2031
  %2275 = fadd fast float %2274, %1271
  %2276 = fmul fast float %2198, %2028
  %2277 = fmul fast float %2198, %2029
  %2278 = fmul fast float %2198, %2030
  %2279 = fadd fast float %2276, %1261
  %2280 = fadd fast float %2277, %1262
  %2281 = fadd fast float %2278, %1263
  br label %2310

; <label>:2282                                    ; preds = %2234
  %2283 = icmp eq i32 %2178, 8
  br i1 %2283, label %2284, label %2310

; <label>:2284                                    ; preds = %2282
  %2285 = fmul fast float %2183, %1871
  %2286 = fmul fast float %2183, %1872
  %2287 = fadd fast float %2285, %1253
  %2288 = fadd fast float %2286, %1254
  %2289 = call float @dx.op.binary.f32(i32 36, float %1270, float %1873)  ; FMin(a,b)
  %2290 = fsub fast float %2289, %1270
  %2291 = fmul fast float %2290, %2186
  %2292 = fadd fast float %2291, %1270
  %2293 = fsub fast float %1870, %1269
  %2294 = fmul fast float %2189, %2293
  %2295 = fadd fast float %2294, %1269
  %2296 = fmul fast float %2192, %1976
  %2297 = fmul fast float %2192, %1977
  %2298 = fmul fast float %2192, %1978
  %2299 = fadd fast float %2296, %1264
  %2300 = fadd fast float %2297, %1265
  %2301 = fadd fast float %2298, %1266
  %2302 = fmul fast float %2195, %2031
  %2303 = fadd fast float %2302, %1271
  %2304 = fmul fast float %2198, %2028
  %2305 = fmul fast float %2198, %2029
  %2306 = fmul fast float %2198, %2030
  %2307 = fadd fast float %2304, %1261
  %2308 = fadd fast float %2305, %1262
  %2309 = fadd fast float %2306, %1263
  br label %2310

; <label>:2310                                    ; preds = %2284, %2282, %2236, %2200, %2169, %1569, %1273, %1252
  %2311 = phi float [ %1253, %2169 ], [ %1253, %1569 ], [ %1253, %1252 ], [ %2287, %2284 ], [ %1253, %2282 ], [ %2239, %2236 ], [ %2205, %2200 ], [ %1253, %1273 ]
  %2312 = phi float [ %1254, %2169 ], [ %1254, %1569 ], [ %1254, %1252 ], [ %2288, %2284 ], [ %1254, %2282 ], [ %2240, %2236 ], [ %2206, %2200 ], [ %1254, %1273 ]
  %2313 = phi float [ %2170, %2169 ], [ %1255, %1569 ], [ %1255, %1252 ], [ %2170, %2284 ], [ %2170, %2282 ], [ %2170, %2236 ], [ %2170, %2200 ], [ %1255, %1273 ]
  %2314 = phi float [ %2171, %2169 ], [ %1256, %1569 ], [ %1256, %1252 ], [ %2171, %2284 ], [ %2171, %2282 ], [ %2171, %2236 ], [ %2171, %2200 ], [ %1256, %1273 ]
  %2315 = phi float [ %2172, %2169 ], [ %1257, %1569 ], [ %1257, %1252 ], [ %2172, %2284 ], [ %2172, %2282 ], [ %2172, %2236 ], [ %2172, %2200 ], [ %1257, %1273 ]
  %2316 = phi float [ %2173, %2169 ], [ %1258, %1569 ], [ %1258, %1252 ], [ %2173, %2284 ], [ %2173, %2282 ], [ %2173, %2236 ], [ %2173, %2200 ], [ %1258, %1273 ]
  %2317 = phi float [ %2174, %2169 ], [ %1259, %1569 ], [ %1259, %1252 ], [ %2174, %2284 ], [ %2174, %2282 ], [ %2174, %2236 ], [ %2174, %2200 ], [ %1259, %1273 ]
  %2318 = phi float [ %2175, %2169 ], [ %1260, %1569 ], [ %1260, %1252 ], [ %2175, %2284 ], [ %2175, %2282 ], [ %2175, %2236 ], [ %2175, %2200 ], [ %1260, %1273 ]
  %2319 = phi float [ %1261, %2169 ], [ %1261, %1569 ], [ %1261, %1252 ], [ %2307, %2284 ], [ %1261, %2282 ], [ %2279, %2236 ], [ %2231, %2200 ], [ %1261, %1273 ]
  %2320 = phi float [ %1262, %2169 ], [ %1262, %1569 ], [ %1262, %1252 ], [ %2308, %2284 ], [ %1262, %2282 ], [ %2280, %2236 ], [ %2232, %2200 ], [ %1262, %1273 ]
  %2321 = phi float [ %1263, %2169 ], [ %1263, %1569 ], [ %1263, %1252 ], [ %2309, %2284 ], [ %1263, %2282 ], [ %2281, %2236 ], [ %2233, %2200 ], [ %1263, %1273 ]
  %2322 = phi float [ %1264, %2169 ], [ %1264, %1569 ], [ %1264, %1252 ], [ %2299, %2284 ], [ %1264, %2282 ], [ %2271, %2236 ], [ %2219, %2200 ], [ %1264, %1273 ]
  %2323 = phi float [ %1265, %2169 ], [ %1265, %1569 ], [ %1265, %1252 ], [ %2300, %2284 ], [ %1265, %2282 ], [ %2272, %2236 ], [ %2220, %2200 ], [ %1265, %1273 ]
  %2324 = phi float [ %1266, %2169 ], [ %1266, %1569 ], [ %1266, %1252 ], [ %2301, %2284 ], [ %1266, %2282 ], [ %2273, %2236 ], [ %2221, %2200 ], [ %1266, %1273 ]
  %2325 = phi float [ %2176, %2169 ], [ %1267, %1569 ], [ %1267, %1252 ], [ %2176, %2284 ], [ %2176, %2282 ], [ %2176, %2236 ], [ %2176, %2200 ], [ %1267, %1273 ]
  %2326 = phi float [ %1269, %2169 ], [ %1269, %1569 ], [ %1269, %1252 ], [ %2295, %2284 ], [ %1269, %2282 ], [ %2267, %2236 ], [ %2212, %2200 ], [ %1269, %1273 ]
  %2327 = phi float [ %1270, %2169 ], [ %1270, %1569 ], [ %1270, %1252 ], [ %2292, %2284 ], [ %1270, %2282 ], [ %2244, %2236 ], [ %2209, %2200 ], [ %1270, %1273 ]
  %2328 = phi float [ %1271, %2169 ], [ %1271, %1569 ], [ %1271, %1252 ], [ %2303, %2284 ], [ %1271, %2282 ], [ %2275, %2236 ], [ %2224, %2200 ], [ %1271, %1273 ]
  %2329 = phi float [ %2177, %2169 ], [ %1272, %1569 ], [ %1272, %1252 ], [ %2177, %2284 ], [ %2177, %2282 ], [ %2177, %2236 ], [ %2177, %2200 ], [ %1272, %1273 ]
  br i1 %427, label %3367, label %2330

; <label>:2330                                    ; preds = %2310
  %2331 = icmp ult i32 %483, 3
  %2332 = add i32 %44, 56
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = add i32 %44, 60
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = or i32 %2337, %2334
  %2339 = icmp eq i32 %2338, 0
  br i1 %2339, label %3367, label %2340

; <label>:2340                                    ; preds = %2330
  %2341 = and i32 %2334, 262144
  %2342 = icmp ne i32 %2341, 0
  %2343 = select i1 %2342, float %47, float 1.000000e+00
  %2344 = select i1 %2342, float %48, float 0.000000e+00
  %2345 = select i1 %2342, float %49, float 0.000000e+00
  %2346 = select i1 %2342, float %50, float 1.000000e+00
  %2347 = select i1 %2342, float %51, float %72
  %2348 = select i1 %2342, float %52, float %73
  %2349 = add i32 %44, 316
  %2350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.i32 %2350, 0
  %2352 = lshr i32 %2351, 16
  %2353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2352)  ; LegacyF16ToF32(value)
  %2354 = fmul fast float %2353, 0x3F50624DE0000000
  %2355 = add i32 %44, 120
  %2356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2355, i32 undef)  ; BufferLoad(srv,index,wot)
  %2357 = extractvalue %dx.types.ResRet.i32 %2356, 0
  %2358 = lshr i32 %2357, 16
  %2359 = and i32 %2358, 255
  %2360 = lshr i32 %2357, 24
  %2361 = add i32 %44, 324
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2361, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = and i32 %2363, 65535
  %2365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2364)  ; LegacyF16ToF32(value)
  %2366 = lshr i32 %2363, 16
  %2367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2366)  ; LegacyF16ToF32(value)
  %2368 = add i32 %44, 64
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = lshr i32 %2370, 22
  %2372 = shl nuw nsw i32 %2371, 5
  %2373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2372)  ; LegacyF16ToF32(value)
  %2374 = shl i32 %2370, 4
  %2375 = and i32 %2374, 32752
  %2376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2375)  ; LegacyF16ToF32(value)
  %2377 = lshr i32 %2370, 7
  %2378 = and i32 %2377, 32752
  %2379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2378)  ; LegacyF16ToF32(value)
  %2380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2381 = extractvalue %dx.types.CBufRet.f32 %2380, 3
  %2382 = fmul fast float %2381, 1.000000e+03
  %2383 = fmul fast float %377, %2382
  %2384 = call float @dx.op.unary.f32(i32 22, float %2383)  ; Frc(value)
  %2385 = fadd fast float %2384, %367
  %2386 = fmul fast float %378, %2382
  %2387 = call float @dx.op.unary.f32(i32 22, float %2386)  ; Frc(value)
  %2388 = fadd fast float %2387, %369
  %2389 = fmul fast float %2354, %2382
  %2390 = call float @dx.op.unary.f32(i32 22, float %2389)  ; Frc(value)
  %2391 = fmul fast float %2390, 0x401921FB60000000
  %2392 = fadd fast float %2391, %2373
  %2393 = call float @dx.op.unary.f32(i32 13, float %2392)  ; Sin(value)
  %2394 = call float @dx.op.unary.f32(i32 12, float %2392)  ; Cos(value)
  %2395 = fsub fast float -0.000000e+00, %2393
  %2396 = fadd fast float %2347, -5.000000e-01
  %2397 = fadd fast float %2348, -5.000000e-01
  %2398 = fmul fast float %2365, %2396
  %2399 = fmul fast float %2367, %2397
  %2400 = fadd fast float %2398, 5.000000e-01
  %2401 = fadd fast float %2399, 5.000000e-01
  %2402 = fmul fast float %2376, %2400
  %2403 = fmul fast float %2379, %2401
  %2404 = fmul fast float %2394, %2402
  %2405 = call float @dx.op.tertiary.f32(i32 46, float %2395, float %2403, float %2404)  ; FMad(a,b,c)
  %2406 = fmul fast float %2393, %2402
  %2407 = call float @dx.op.tertiary.f32(i32 46, float %2394, float %2403, float %2406)  ; FMad(a,b,c)
  %2408 = fadd fast float %2385, %2405
  %2409 = fadd fast float %2388, %2407
  %2410 = icmp ugt i32 %2359, 1
  %2411 = icmp ugt i32 %2357, 33554431
  %2412 = or i1 %2411, %2410
  br i1 %2412, label %2413, label %2438

; <label>:2413                                    ; preds = %2340
  %2414 = add i32 %44, 260
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2414, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = lshr i32 %2416, 16
  %2418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2417)  ; LegacyF16ToF32(value)
  %2419 = fmul fast float %2381, %2418
  %2420 = call float @dx.op.unary.f32(i32 22, float %2419)  ; Frc(value)
  %2421 = mul nuw nsw i32 %2359, %2360
  %2422 = uitofp i32 %2421 to float
  %2423 = fmul fast float %2420, %2422
  %2424 = call float @dx.op.unary.f32(i32 27, float %2423)  ; Round_ni(value)
  %2425 = fptoui float %2424 to i32
  %2426 = urem i32 %2425, %2359
  %2427 = udiv i32 %2425, %2360
  %2428 = call float @dx.op.unary.f32(i32 22, float %2408)  ; Frc(value)
  %2429 = call float @dx.op.unary.f32(i32 22, float %2409)  ; Frc(value)
  %2430 = uitofp i32 %2426 to float
  %2431 = uitofp i32 %2427 to float
  %2432 = fadd fast float %2428, %2430
  %2433 = fadd fast float %2429, %2431
  %2434 = uitofp i32 %2359 to float
  %2435 = uitofp i32 %2360 to float
  %2436 = fdiv fast float %2432, %2434
  %2437 = fdiv fast float %2433, %2435
  br label %2438

; <label>:2438                                    ; preds = %2413, %2340
  %2439 = phi float [ %2436, %2413 ], [ %2408, %2340 ]
  %2440 = phi float [ %2437, %2413 ], [ %2409, %2340 ]
  %2441 = and i32 %2334, 16777216
  %2442 = icmp eq i32 %2441, 0
  br i1 %2442, label %2552, label %2443

; <label>:2443                                    ; preds = %2438
  %2444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2445 = extractvalue %dx.types.CBufRet.f32 %2444, 0
  %2446 = extractvalue %dx.types.CBufRet.f32 %2444, 1
  %2447 = extractvalue %dx.types.CBufRet.f32 %2444, 2
  %2448 = fadd fast float %2445, %145
  %2449 = fadd fast float %2446, %146
  %2450 = fadd fast float %2447, %147
  %2451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2452 = extractvalue %dx.types.CBufRet.f32 %2451, 0
  %2453 = call float @dx.op.unary.f32(i32 7, float %2452)  ; Saturate(value)
  %2454 = icmp eq i32 %45, 65535
  br i1 %2454, label %2549, label %2455

; <label>:2455                                    ; preds = %2443
  %2456 = lshr i32 %45, 1
  %2457 = shl i32 %2456, 2
  %2458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.i32 %2458, 0
  %2460 = and i32 %45, 1
  %2461 = icmp ne i32 %2460, 0
  %2462 = lshr i32 %2459, 16
  %2463 = and i32 %2459, 65535
  %2464 = select i1 %2461, i32 %2462, i32 %2463
  %2465 = icmp eq i32 %2464, 65535
  br i1 %2465, label %2545, label %2466

; <label>:2466                                    ; preds = %2455
  %2467 = mul nuw nsw i32 %2464, 40
  %2468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2467, i32 undef)  ; BufferLoad(srv,index,wot)
  %2469 = extractvalue %dx.types.ResRet.f32 %2468, 0
  %2470 = extractvalue %dx.types.ResRet.f32 %2468, 1
  %2471 = extractvalue %dx.types.ResRet.f32 %2468, 2
  %2472 = add nuw nsw i32 %2467, 12
  %2473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2472, i32 undef)  ; BufferLoad(srv,index,wot)
  %2474 = extractvalue %dx.types.ResRet.f32 %2473, 0
  %2475 = extractvalue %dx.types.ResRet.f32 %2473, 1
  %2476 = extractvalue %dx.types.ResRet.f32 %2473, 2
  %2477 = add nuw nsw i32 %2467, 24
  %2478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2477, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.f32 %2478, 0
  %2480 = extractvalue %dx.types.ResRet.f32 %2478, 1
  %2481 = extractvalue %dx.types.ResRet.f32 %2478, 2
  %2482 = add nuw nsw i32 %2467, 36
  %2483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2482, i32 undef)  ; BufferLoad(srv,index,wot)
  %2484 = extractvalue %dx.types.ResRet.f32 %2483, 0
  %2485 = fsub fast float %2448, %2469
  %2486 = fsub fast float %2449, %2470
  %2487 = fsub fast float %2450, %2471
  %2488 = fmul fast float %2484, %2485
  %2489 = fmul fast float %2484, %2486
  %2490 = fmul fast float %2484, %2487
  %2491 = call float @dx.op.unary.f32(i32 27, float %2488)  ; Round_ni(value)
  %2492 = call float @dx.op.unary.f32(i32 27, float %2489)  ; Round_ni(value)
  %2493 = call float @dx.op.unary.f32(i32 27, float %2490)  ; Round_ni(value)
  %2494 = fadd fast float %2491, 5.000000e-01
  %2495 = fadd fast float %2492, 5.000000e-01
  %2496 = fadd fast float %2493, 5.000000e-01
  %2497 = fmul fast float %2494, %2474
  %2498 = fmul fast float %2495, %2475
  %2499 = fmul fast float %2496, %2476
  %2500 = shl i32 %45, 2
  %2501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2500, i32 undef)  ; BufferLoad(srv,index,wot)
  %2502 = extractvalue %dx.types.ResRet.i32 %2501, 0
  %2503 = add i32 %2502, 0
  %2504 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2503, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2505 = call float @dx.op.unary.f32(i32 22, float %2497)  ; Frc(value)
  %2506 = call float @dx.op.unary.f32(i32 22, float %2498)  ; Frc(value)
  %2507 = call float @dx.op.unary.f32(i32 22, float %2499)  ; Frc(value)
  %2508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2504, %dx.types.Handle %39, float %2505, float %2506, float %2507, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2509 = extractvalue %dx.types.ResRet.f32 %2508, 0
  %2510 = extractvalue %dx.types.ResRet.f32 %2508, 1
  %2511 = extractvalue %dx.types.ResRet.f32 %2508, 2
  %2512 = fmul fast float %2509, 1.023000e+03
  %2513 = fmul fast float %2510, 1.023000e+03
  %2514 = fmul fast float %2511, 1.023000e+03
  %2515 = fadd fast float %2512, 5.000000e-01
  %2516 = fadd fast float %2513, 5.000000e-01
  %2517 = fadd fast float %2514, 5.000000e-01
  %2518 = call float @dx.op.unary.f32(i32 27, float %2515)  ; Round_ni(value)
  %2519 = call float @dx.op.unary.f32(i32 27, float %2516)  ; Round_ni(value)
  %2520 = call float @dx.op.unary.f32(i32 27, float %2517)  ; Round_ni(value)
  %2521 = fsub fast float %2488, %2491
  %2522 = fsub fast float %2489, %2492
  %2523 = fsub fast float %2490, %2493
  %2524 = fmul fast float %2521, 7.500000e-01
  %2525 = fmul fast float %2522, 7.500000e-01
  %2526 = fmul fast float %2523, 7.500000e-01
  %2527 = fadd fast float %2491, 1.250000e-01
  %2528 = fadd fast float %2527, %2524
  %2529 = fadd fast float %2528, %2518
  %2530 = fadd fast float %2492, 1.250000e-01
  %2531 = fadd fast float %2530, %2525
  %2532 = fadd fast float %2531, %2519
  %2533 = fadd fast float %2493, 1.250000e-01
  %2534 = fadd fast float %2533, %2526
  %2535 = fadd fast float %2534, %2520
  %2536 = fmul fast float %2529, %2479
  %2537 = fmul fast float %2532, %2480
  %2538 = fmul fast float %2535, %2481
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2500, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = add i32 %2540, 0
  %2542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2541, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2542, %dx.types.Handle %37, float %2536, float %2537, float %2538, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2544 = extractvalue %dx.types.ResRet.f32 %2543, 0
  br label %2545

; <label>:2545                                    ; preds = %2466, %2455
  %2546 = phi float [ %2544, %2466 ], [ -1.000000e+00, %2455 ]
  %2547 = fadd fast float %2546, %2453
  %2548 = call float @dx.op.unary.f32(i32 7, float %2547)  ; Saturate(value)
  br label %2549

; <label>:2549                                    ; preds = %2545, %2443
  %2550 = phi float [ %2548, %2545 ], [ %2453, %2443 ]
  %2551 = fmul fast float %2550, %479
  br label %2552

; <label>:2552                                    ; preds = %2549, %2438
  %2553 = phi float [ %2551, %2549 ], [ %479, %2438 ]
  %2554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2555 = extractvalue %dx.types.ResRet.i32 %2554, 0
  %2556 = and i32 %2555, 256
  %2557 = icmp eq i32 %2556, 0
  br i1 %2557, label %2604, label %2558

; <label>:2558                                    ; preds = %2552
  %2559 = add i32 %44, 480
  %2560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %2561 = extractvalue %dx.types.ResRet.i32 %2560, 0
  %2562 = add i32 %2561, 0
  %2563 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2562, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2564 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2563, %dx.types.Handle %87, float %2439, float %2440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2565 = extractvalue %dx.types.ResRet.f32 %2564, 0
  %2566 = add i32 %44, 132
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2566, i32 undef)  ; BufferLoad(srv,index,wot)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = shl i32 %2568, 4
  %2570 = and i32 %2569, 32752
  %2571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2570)  ; LegacyF16ToF32(value)
  %2572 = lshr i32 %2568, 7
  %2573 = and i32 %2572, 32752
  %2574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2573)  ; LegacyF16ToF32(value)
  %2575 = fsub fast float 1.000000e+00, %2553
  %2576 = call float @dx.op.binary.f32(i32 35, float %2575, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2577 = bitcast float %2553 to i32
  %2578 = sitofp i32 %2577 to float
  %2579 = fadd fast float %2578, 0xC1CFBF8940000000
  %2580 = fmul fast float %2574, %2579
  %2581 = fadd fast float %2580, 0x41CFBF8940000000
  %2582 = fptosi float %2581 to i32
  %2583 = bitcast i32 %2582 to float
  %2584 = bitcast float %2576 to i32
  %2585 = sitofp i32 %2584 to float
  %2586 = fadd fast float %2585, 0xC1CFBF8940000000
  %2587 = fmul fast float %2586, %2574
  %2588 = fadd fast float %2587, 0x41CFBF8940000000
  %2589 = fptosi float %2588 to i32
  %2590 = bitcast i32 %2589 to float
  %2591 = fmul fast float %2583, %2571
  %2592 = fmul fast float %2590, %2571
  %2593 = fsub fast float %2576, %2591
  %2594 = fadd fast float %2592, %2576
  %2595 = call float @dx.op.unary.f32(i32 7, float %2593)  ; Saturate(value)
  %2596 = call float @dx.op.unary.f32(i32 7, float %2594)  ; Saturate(value)
  %2597 = fsub fast float %2565, %2595
  %2598 = fsub fast float %2596, %2595
  %2599 = bitcast float %2598 to i32
  %2600 = sub nsw i32 2129859010, %2599
  %2601 = bitcast i32 %2600 to float
  %2602 = fmul fast float %2601, %2597
  %2603 = call float @dx.op.unary.f32(i32 7, float %2602)  ; Saturate(value)
  br label %2604

; <label>:2604                                    ; preds = %2558, %2552
  %2605 = phi float [ %2603, %2558 ], [ %2553, %2552 ]
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = and i32 %2607, 128
  %2609 = icmp eq i32 %2608, 0
  br i1 %2609, label %2626, label %2610

; <label>:2610                                    ; preds = %2604
  %2611 = add i32 %44, 464
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2611, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = add i32 %2613, 0
  %2615 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2614, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2616 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2615, %dx.types.Handle %87, float %2439, float %2440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2617 = extractvalue %dx.types.ResRet.f32 %2616, 0
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = and i32 %2619, 524288
  %2621 = icmp ne i32 %2620, 0
  %2622 = fcmp fast ogt float %2617, 0x3FE0101020000000
  %2623 = select i1 %2622, float 1.000000e+00, float 0.000000e+00
  %2624 = select i1 %2621, float %2623, float %2617
  %2625 = fmul fast float %2624, %2605
  br label %2626

; <label>:2626                                    ; preds = %2610, %2604
  %2627 = phi float [ %2625, %2610 ], [ %2605, %2604 ]
  %2628 = fcmp fast ult float %2627, 0x3F70101020000000
  br i1 %2628, label %3367, label %2629

; <label>:2629                                    ; preds = %2626
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = and i32 %2631, 16
  %2633 = icmp eq i32 %2632, 0
  br i1 %2633, label %2832, label %2634

; <label>:2634                                    ; preds = %2629
  %2635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2355, i32 undef)  ; BufferLoad(srv,index,wot)
  %2636 = extractvalue %dx.types.ResRet.i32 %2635, 0
  %2637 = add i32 %44, 416
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = add i32 %2639, 0
  %2641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2640, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2642 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2641, %dx.types.Handle %86, float %2439, float %2440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2643 = extractvalue %dx.types.ResRet.f32 %2642, 0
  %2644 = extractvalue %dx.types.ResRet.f32 %2642, 1
  %2645 = extractvalue %dx.types.ResRet.f32 %2642, 2
  %2646 = extractvalue %dx.types.ResRet.f32 %2642, 3
  %2647 = and i32 %2636, 255
  %2648 = uitofp i32 %2647 to float
  %2649 = lshr i32 %2636, 8
  %2650 = and i32 %2649, 255
  %2651 = uitofp i32 %2650 to float
  %2652 = fmul fast float %2646, %2648
  %2653 = fadd fast float %2652, %2651
  %2654 = fmul fast float %2653, 0x3F70101000000000
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = and i32 %2656, 512
  %2658 = icmp eq i32 %2657, 0
  br i1 %2658, label %2667, label %2659

; <label>:2659                                    ; preds = %2634
  %2660 = add i32 %44, 496
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = add i32 %2662, 0
  %2664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2663, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2665 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2664, %dx.types.Handle %87, float %2439, float %2440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2666 = extractvalue %dx.types.ResRet.f32 %2665, 0
  br label %2667

; <label>:2667                                    ; preds = %2659, %2634
  %2668 = phi float [ %2666, %2659 ], [ 1.000000e+00, %2634 ]
  %2669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2670 = extractvalue %dx.types.ResRet.i32 %2669, 0
  %2671 = and i32 %2670, 33554432
  %2672 = icmp eq i32 %2671, 0
  br i1 %2672, label %2779, label %2673

; <label>:2673                                    ; preds = %2667
  %2674 = add i32 %44, 256
  %2675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2674, i32 undef)  ; BufferLoad(srv,index,wot)
  %2676 = extractvalue %dx.types.ResRet.i32 %2675, 0
  %2677 = and i32 %2676, 65535
  %2678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2677)  ; LegacyF16ToF32(value)
  %2679 = lshr i32 %2676, 16
  %2680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2679)  ; LegacyF16ToF32(value)
  %2681 = add i32 %44, 260
  %2682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2681, i32 undef)  ; BufferLoad(srv,index,wot)
  %2683 = extractvalue %dx.types.ResRet.i32 %2682, 0
  %2684 = and i32 %2683, 65535
  %2685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2684)  ; LegacyF16ToF32(value)
  %2686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.i32 %2686, 0
  %2688 = lshr i32 %2687, 24
  %2689 = uitofp i32 %2688 to float
  %2690 = fmul fast float %2689, 0x3F70101020000000
  %2691 = and i32 %2687, 255
  %2692 = uitofp i32 %2691 to float
  %2693 = fmul fast float %2692, 0x3F70101020000000
  %2694 = lshr i32 %2687, 8
  %2695 = and i32 %2694, 255
  %2696 = uitofp i32 %2695 to float
  %2697 = fmul fast float %2696, 0x3F70101020000000
  %2698 = lshr i32 %2687, 16
  %2699 = and i32 %2698, 255
  %2700 = uitofp i32 %2699 to float
  %2701 = fmul fast float %2700, 0x3F70101020000000
  %2702 = add i32 %44, 252
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = lshr i32 %2704, 24
  %2706 = uitofp i32 %2705 to float
  %2707 = fmul fast float %2706, 0x3F70101020000000
  %2708 = and i32 %2704, 255
  %2709 = uitofp i32 %2708 to float
  %2710 = fmul fast float %2709, 0x3F70101020000000
  %2711 = lshr i32 %2704, 8
  %2712 = and i32 %2711, 255
  %2713 = uitofp i32 %2712 to float
  %2714 = fmul fast float %2713, 0x3F70101020000000
  %2715 = lshr i32 %2704, 16
  %2716 = and i32 %2715, 255
  %2717 = uitofp i32 %2716 to float
  %2718 = fmul fast float %2717, 0x3F70101020000000
  %2719 = bitcast float %2643 to i32
  %2720 = ashr i32 %2719, 1
  %2721 = sub nsw i32 1597463174, %2720
  %2722 = bitcast i32 %2721 to float
  %2723 = fmul fast float %2643, 5.000000e-01
  %2724 = fmul fast float %2722, %2722
  %2725 = fmul fast float %2724, %2723
  %2726 = fsub fast float 1.500000e+00, %2725
  %2727 = fmul fast float %2722, %2643
  %2728 = fmul fast float %2727, %2726
  %2729 = bitcast float %2644 to i32
  %2730 = ashr i32 %2729, 1
  %2731 = sub nsw i32 1597463174, %2730
  %2732 = bitcast i32 %2731 to float
  %2733 = fmul fast float %2644, 5.000000e-01
  %2734 = fmul fast float %2732, %2732
  %2735 = fmul fast float %2734, %2733
  %2736 = fsub fast float 1.500000e+00, %2735
  %2737 = fmul fast float %2732, %2644
  %2738 = fmul fast float %2737, %2736
  %2739 = bitcast float %2645 to i32
  %2740 = ashr i32 %2739, 1
  %2741 = sub nsw i32 1597463174, %2740
  %2742 = bitcast i32 %2741 to float
  %2743 = fmul fast float %2645, 5.000000e-01
  %2744 = fmul fast float %2742, %2742
  %2745 = fmul fast float %2744, %2743
  %2746 = fsub fast float 1.500000e+00, %2745
  %2747 = fmul fast float %2742, %2645
  %2748 = fmul fast float %2747, %2746
  %2749 = fsub fast float %2728, %2710
  %2750 = fsub fast float %2738, %2714
  %2751 = fsub fast float %2748, %2718
  %2752 = fmul fast float %2749, %2678
  %2753 = fmul fast float %2750, %2680
  %2754 = fmul fast float %2751, %2685
  %2755 = fadd fast float %2752, %2693
  %2756 = fadd fast float %2753, %2697
  %2757 = fadd fast float %2754, %2701
  %2758 = call float @dx.op.unary.f32(i32 7, float %2755)  ; Saturate(value)
  %2759 = call float @dx.op.unary.f32(i32 7, float %2756)  ; Saturate(value)
  %2760 = call float @dx.op.unary.f32(i32 7, float %2757)  ; Saturate(value)
  %2761 = fmul fast float %2758, %2758
  %2762 = fmul fast float %2759, %2759
  %2763 = fmul fast float %2760, %2760
  %2764 = fsub fast float %2761, %2643
  %2765 = fsub fast float %2762, %2644
  %2766 = fsub fast float %2763, %2645
  %2767 = fmul fast float %2764, %2668
  %2768 = fmul fast float %2765, %2668
  %2769 = fmul fast float %2766, %2668
  %2770 = fadd fast float %2767, %2643
  %2771 = fadd fast float %2768, %2644
  %2772 = fadd fast float %2769, %2645
  %2773 = fadd fast float %2690, %2654
  %2774 = fsub fast float %2773, %2707
  %2775 = call float @dx.op.unary.f32(i32 7, float %2774)  ; Saturate(value)
  %2776 = fsub fast float %2775, %2654
  %2777 = fmul fast float %2776, %2668
  %2778 = fadd fast float %2777, %2654
  br label %2832

; <label>:2779                                    ; preds = %2667
  %2780 = and i32 %2670, 134217728
  %2781 = icmp eq i32 %2780, 0
  br i1 %2781, label %2816, label %2782

; <label>:2782                                    ; preds = %2779
  %2783 = call float @dx.op.unary.f32(i32 24, float %354)  ; Sqrt(value)
  %2784 = call float @dx.op.unary.f32(i32 24, float %358)  ; Sqrt(value)
  %2785 = call float @dx.op.unary.f32(i32 24, float %362)  ; Sqrt(value)
  %2786 = fadd fast float %2783, -5.000000e-01
  %2787 = fadd fast float %2784, -5.000000e-01
  %2788 = fadd fast float %2785, -5.000000e-01
  %2789 = fmul fast float %2786, %2668
  %2790 = fmul fast float %2787, %2668
  %2791 = fmul fast float %2788, %2668
  %2792 = fadd fast float %2789, 5.000000e-01
  %2793 = fadd fast float %2790, 5.000000e-01
  %2794 = fadd fast float %2791, 5.000000e-01
  %2795 = call float @dx.op.unary.f32(i32 24, float %2643)  ; Sqrt(value)
  %2796 = call float @dx.op.unary.f32(i32 24, float %2644)  ; Sqrt(value)
  %2797 = call float @dx.op.unary.f32(i32 24, float %2645)  ; Sqrt(value)
  %2798 = fmul fast float %2792, 2.000000e+00
  %2799 = fsub fast float 1.000000e+00, %2798
  %2800 = fmul fast float %2799, %2795
  %2801 = fadd fast float %2800, %2798
  %2802 = fmul fast float %2801, %2795
  %2803 = fmul fast float %2793, 2.000000e+00
  %2804 = fsub fast float 1.000000e+00, %2803
  %2805 = fmul fast float %2804, %2796
  %2806 = fadd fast float %2805, %2803
  %2807 = fmul fast float %2806, %2796
  %2808 = fmul fast float %2794, 2.000000e+00
  %2809 = fsub fast float 1.000000e+00, %2808
  %2810 = fmul fast float %2809, %2797
  %2811 = fadd fast float %2810, %2808
  %2812 = fmul fast float %2811, %2797
  %2813 = fmul fast float %2802, %2802
  %2814 = fmul fast float %2807, %2807
  %2815 = fmul fast float %2812, %2812
  br label %2832

; <label>:2816                                    ; preds = %2779
  %2817 = fmul fast float %354, %354
  %2818 = fmul fast float %358, %358
  %2819 = fmul fast float %362, %362
  %2820 = fadd fast float %2817, -1.000000e+00
  %2821 = fadd fast float %2818, -1.000000e+00
  %2822 = fadd fast float %2819, -1.000000e+00
  %2823 = fmul fast float %2668, %2820
  %2824 = fmul fast float %2668, %2821
  %2825 = fmul fast float %2668, %2822
  %2826 = fadd fast float %2823, 1.000000e+00
  %2827 = fadd fast float %2824, 1.000000e+00
  %2828 = fadd fast float %2825, 1.000000e+00
  %2829 = fmul fast float %2826, %2643
  %2830 = fmul fast float %2827, %2644
  %2831 = fmul fast float %2828, %2645
  br label %2832

; <label>:2832                                    ; preds = %2816, %2782, %2673, %2629
  %2833 = phi float [ %2778, %2673 ], [ %2654, %2782 ], [ %2654, %2816 ], [ 0x3FA23C0BE0000000, %2629 ]
  %2834 = phi float [ %2770, %2673 ], [ %2813, %2782 ], [ %2829, %2816 ], [ 1.000000e+00, %2629 ]
  %2835 = phi float [ %2771, %2673 ], [ %2814, %2782 ], [ %2830, %2816 ], [ 1.000000e+00, %2629 ]
  %2836 = phi float [ %2772, %2673 ], [ %2815, %2782 ], [ %2831, %2816 ], [ 1.000000e+00, %2629 ]
  %2837 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2838 = extractvalue %dx.types.CBufRet.i32 %2837, 1
  %2839 = and i32 %2838, 1
  %2840 = icmp ne i32 %2839, 0
  %2841 = add i32 %44, 356
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = and i32 %2843, 32
  %2845 = icmp ne i32 %2844, 0
  %2846 = and i1 %2840, %2845
  %2847 = select i1 %2846, float 1.000000e+00, float %2834
  %2848 = select i1 %2846, float 0x3FD3333340000000, float %2835
  %2849 = select i1 %2846, float 0x3FD3333340000000, float %2836
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = and i32 %2851, 32
  %2853 = icmp eq i32 %2852, 0
  br i1 %2853, label %2926, label %2854

; <label>:2854                                    ; preds = %2832
  %2855 = add i32 %44, 124
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = add i32 %44, 432
  %2859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2860 = extractvalue %dx.types.ResRet.i32 %2859, 0
  %2861 = add i32 %2860, 0
  %2862 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2861, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2863 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2862, %dx.types.Handle %86, float %2439, float %2440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2864 = extractvalue %dx.types.ResRet.f32 %2863, 0
  %2865 = extractvalue %dx.types.ResRet.f32 %2863, 1
  %2866 = extractvalue %dx.types.ResRet.f32 %2863, 2
  %2867 = extractvalue %dx.types.ResRet.f32 %2863, 3
  %2868 = and i32 %2857, 255
  %2869 = uitofp i32 %2868 to float
  %2870 = lshr i32 %2857, 8
  %2871 = and i32 %2870, 255
  %2872 = uitofp i32 %2871 to float
  %2873 = lshr i32 %2857, 16
  %2874 = and i32 %2873, 255
  %2875 = uitofp i32 %2874 to float
  %2876 = fmul fast float %2875, 0x3F70101000000000
  %2877 = fmul fast float %2864, %2869
  %2878 = fadd fast float %2877, %2872
  %2879 = fmul fast float %2878, 0x3F70101000000000
  %2880 = fadd fast float %2865, -5.000000e-01
  %2881 = fadd fast float %2867, -5.000000e-01
  %2882 = fmul fast float %2880, %2876
  %2883 = fmul fast float %2881, %2876
  %2884 = fadd fast float %2882, 5.000000e-01
  %2885 = fadd fast float %2883, 5.000000e-01
  %2886 = fmul fast float %2884, 2.000000e+00
  %2887 = fadd fast float %2886, -1.000000e+00
  %2888 = fmul fast float %2885, 2.000000e+00
  %2889 = fadd fast float %2888, -1.000000e+00
  %2890 = fadd fast float %2887, %2889
  %2891 = fmul fast float %2890, 5.000000e-01
  %2892 = fsub fast float %2887, %2889
  %2893 = fmul fast float %2892, 5.000000e-01
  %2894 = call float @dx.op.unary.f32(i32 6, float %2891)  ; FAbs(value)
  %2895 = fsub fast float 1.000000e+00, %2894
  %2896 = call float @dx.op.unary.f32(i32 6, float %2893)  ; FAbs(value)
  %2897 = fsub fast float %2895, %2896
  %2898 = call float @dx.op.dot3.f32(i32 55, float %2891, float %2893, float %2897, float %2891, float %2893, float %2897)  ; Dot3(ax,ay,az,bx,by,bz)
  %2899 = call float @dx.op.unary.f32(i32 25, float %2898)  ; Rsqrt(value)
  %2900 = fmul fast float %2891, %2899
  %2901 = fmul fast float %2893, %2899
  %2902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2903 = extractvalue %dx.types.ResRet.i32 %2902, 0
  %2904 = and i32 %2903, 67108864
  %2905 = icmp eq i32 %2904, 0
  br i1 %2905, label %2922, label %2906

; <label>:2906                                    ; preds = %2854
  %2907 = add i32 %44, 312
  %2908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2909 = extractvalue %dx.types.ResRet.i32 %2908, 0
  %2910 = and i32 %2909, 65535
  %2911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2910)  ; LegacyF16ToF32(value)
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = and i32 %2913, 65535
  %2915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2914)  ; LegacyF16ToF32(value)
  %2916 = lshr i32 %2909, 16
  %2917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2916)  ; LegacyF16ToF32(value)
  %2918 = fsub fast float %2879, %2917
  %2919 = fmul fast float %2918, %2911
  %2920 = fadd fast float %2919, %2915
  %2921 = call float @dx.op.unary.f32(i32 7, float %2920)  ; Saturate(value)
  br label %2922

; <label>:2922                                    ; preds = %2906, %2854
  %2923 = phi float [ %2921, %2906 ], [ %2879, %2854 ]
  %2924 = call float @dx.op.dot2.f32(i32 54, float %2900, float %2901, float %2343, float %2344)  ; Dot2(ax,ay,bx,by)
  %2925 = call float @dx.op.dot2.f32(i32 54, float %2900, float %2901, float %2345, float %2346)  ; Dot2(ax,ay,bx,by)
  br label %2926

; <label>:2926                                    ; preds = %2922, %2832
  %2927 = phi float [ %2923, %2922 ], [ 0x3FD6666660000000, %2832 ]
  %2928 = phi float [ %2924, %2922 ], [ 0.000000e+00, %2832 ]
  %2929 = phi float [ %2925, %2922 ], [ 0.000000e+00, %2832 ]
  %2930 = phi float [ %2866, %2922 ], [ 1.000000e+00, %2832 ]
  %2931 = add i32 %44, 192
  %2932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2933 = extractvalue %dx.types.ResRet.i32 %2932, 0
  %2934 = lshr i32 %2933, 22
  %2935 = shl nuw nsw i32 %2934, 5
  %2936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2935)  ; LegacyF16ToF32(value)
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = and i32 %2938, 64
  %2940 = icmp eq i32 %2939, 0
  br i1 %2940, label %2974, label %2941

; <label>:2941                                    ; preds = %2926
  %2942 = add i32 %44, 448
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2942, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = add i32 %2944, 0
  %2946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2945, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = and i32 %2948, 131072
  %2950 = icmp eq i32 %2949, 0
  %2951 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2946, %dx.types.Handle %86, float %2439, float %2440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2952 = extractvalue %dx.types.ResRet.f32 %2951, 0
  %2953 = extractvalue %dx.types.ResRet.f32 %2951, 1
  %2954 = extractvalue %dx.types.ResRet.f32 %2951, 2
  %2955 = fmul fast float %2952, %342
  %2956 = fmul fast float %2953, %345
  %2957 = fmul fast float %2954, %348
  br i1 %2950, label %2964, label %2958

; <label>:2958                                    ; preds = %2941
  %2959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2960 = extractvalue %dx.types.CBufRet.f32 %2959, 0
  %2961 = fmul fast float %2960, %2955
  %2962 = fmul fast float %2960, %2956
  %2963 = fmul fast float %2960, %2957
  br label %2964

; <label>:2964                                    ; preds = %2958, %2941
  %2965 = phi float [ %2961, %2958 ], [ %2955, %2941 ]
  %2966 = phi float [ %2962, %2958 ], [ %2956, %2941 ]
  %2967 = phi float [ %2963, %2958 ], [ %2957, %2941 ]
  %2968 = fmul fast float %2965, %2936
  %2969 = select i1 %238, float %2968, float %2965
  %2970 = call float @dx.op.dot3.f32(i32 55, float %2969, float %2966, float %2967, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2971 = select i1 %238, float 0.000000e+00, float %2965
  %2972 = select i1 %238, float %2970, float %2966
  %2973 = select i1 %238, float 0.000000e+00, float %2967
  br label %2974

; <label>:2974                                    ; preds = %2964, %2926
  %2975 = phi float [ %2971, %2964 ], [ 0.000000e+00, %2926 ]
  %2976 = phi float [ %2972, %2964 ], [ 0.000000e+00, %2926 ]
  %2977 = phi float [ %2973, %2964 ], [ 0.000000e+00, %2926 ]
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = and i32 %2979, 1024
  %2981 = icmp eq i32 %2980, 0
  br i1 %2981, label %3012, label %2982

; <label>:2982                                    ; preds = %2974
  %2983 = add i32 %44, 184
  %2984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.i32 %2984, 0
  %2986 = and i32 %2985, 255
  %2987 = uitofp i32 %2986 to float
  %2988 = fmul fast float %2987, 0x3F70101020000000
  %2989 = lshr i32 %2985, 8
  %2990 = and i32 %2989, 255
  %2991 = uitofp i32 %2990 to float
  %2992 = fmul fast float %2991, 0x3F70101020000000
  %2993 = lshr i32 %2985, 16
  %2994 = and i32 %2993, 255
  %2995 = uitofp i32 %2994 to float
  %2996 = fmul fast float %2995, 0x3F70101020000000
  %2997 = fmul fast float %2988, %2988
  %2998 = fmul fast float %2992, %2992
  %2999 = fmul fast float %2996, %2996
  %3000 = add i32 %44, 512
  %3001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.i32 %3001, 0
  %3003 = add i32 %3002, 0
  %3004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3003, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3005 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3004, %dx.types.Handle %87, float %2439, float %2440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3006 = extractvalue %dx.types.ResRet.f32 %3005, 0
  %3007 = extractvalue %dx.types.ResRet.f32 %3005, 1
  %3008 = extractvalue %dx.types.ResRet.f32 %3005, 2
  %3009 = fmul fast float %2997, %3006
  %3010 = fmul fast float %2998, %3007
  %3011 = fmul fast float %2999, %3008
  br label %3012

; <label>:3012                                    ; preds = %2982, %2974
  %3013 = phi float [ %3009, %2982 ], [ 0.000000e+00, %2974 ]
  %3014 = phi float [ %3010, %2982 ], [ 0.000000e+00, %2974 ]
  %3015 = phi float [ %3011, %2982 ], [ 0.000000e+00, %2974 ]
  %3016 = fcmp fast ogt float %3013, 0.000000e+00
  %3017 = fcmp fast ogt float %3014, 0.000000e+00
  %3018 = fcmp fast ogt float %3015, 0.000000e+00
  %3019 = call float @dx.op.unary.f32(i32 23, float %3013)  ; Log(value)
  %3020 = call float @dx.op.unary.f32(i32 23, float %3014)  ; Log(value)
  %3021 = call float @dx.op.unary.f32(i32 23, float %3015)  ; Log(value)
  %3022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2931, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.i32 %3022, 0
  %3024 = lshr i32 %3023, 7
  %3025 = and i32 %3024, 32752
  %3026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3025)  ; LegacyF16ToF32(value)
  %3027 = fmul fast float %3019, 0xBFE62E4300000000
  %3028 = fmul fast float %3027, %3026
  %3029 = fmul fast float %3020, 0xBFE62E4300000000
  %3030 = fmul fast float %3029, %3026
  %3031 = fmul fast float %3021, 0xBFE62E4300000000
  %3032 = fmul fast float %3031, %3026
  %3033 = select i1 %3016, float %3028, float 1.270000e+02
  %3034 = select i1 %3017, float %3030, float 1.270000e+02
  %3035 = select i1 %3018, float %3032, float 1.270000e+02
  %3036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.i32 %3036, 0
  %3038 = and i32 %3037, 10240
  %3039 = icmp eq i32 %3038, 0
  br i1 %3039, label %3084, label %3040

; <label>:3040                                    ; preds = %3012
  %3041 = add i32 %44, 528
  %3042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3041, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.i32 %3042, 0
  %3044 = add i32 %3043, 0
  %3045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3044, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3046 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3045, %dx.types.Handle %87, float %2439, float %2440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3047 = extractvalue %dx.types.ResRet.f32 %3046, 1
  %3048 = extractvalue %dx.types.ResRet.f32 %3046, 3
  %3049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %3050 = extractvalue %dx.types.ResRet.i32 %3049, 0
  %3051 = and i32 %3050, 1048576
  %3052 = icmp ne i32 %3051, 0
  %3053 = and i32 %3050, 8192
  %3054 = icmp eq i32 %3053, 0
  br i1 %3054, label %3070, label %3055

; <label>:3055                                    ; preds = %3040
  %3056 = extractvalue %dx.types.ResRet.f32 %3046, 2
  %3057 = select i1 %3052, float %3056, float %3047
  %3058 = extractvalue %dx.types.ResRet.f32 %3046, 0
  %3059 = select i1 %3052, float %3058, float %3047
  %3060 = add i32 %44, 128
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = lshr i32 %3062, 16
  %3064 = and i32 %3063, 255
  %3065 = uitofp i32 %3064 to float
  %3066 = fmul fast float %3065, 0x3F80101020000000
  %3067 = fmul fast float %3066, %3059
  %3068 = fmul fast float %3066, %3047
  %3069 = fmul fast float %3066, %3057
  br label %3070

; <label>:3070                                    ; preds = %3055, %3040
  %3071 = phi float [ %3067, %3055 ], [ 0.000000e+00, %3040 ]
  %3072 = phi float [ %3068, %3055 ], [ 0.000000e+00, %3040 ]
  %3073 = phi float [ %3069, %3055 ], [ 0.000000e+00, %3040 ]
  %3074 = and i32 %3050, 2048
  %3075 = icmp eq i32 %3074, 0
  br i1 %3075, label %3084, label %3076

; <label>:3076                                    ; preds = %3070
  %3077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2931, i32 undef)  ; BufferLoad(srv,index,wot)
  %3078 = extractvalue %dx.types.ResRet.i32 %3077, 0
  %3079 = shl i32 %3078, 4
  %3080 = and i32 %3079, 32752
  %3081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3080)  ; LegacyF16ToF32(value)
  %3082 = fmul fast float %3081, %3048
  %3083 = call float @dx.op.binary.f32(i32 35, float %3082, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3084

; <label>:3084                                    ; preds = %3076, %3070, %3012
  %3085 = phi float [ %3071, %3076 ], [ %3071, %3070 ], [ 0.000000e+00, %3012 ]
  %3086 = phi float [ %3072, %3076 ], [ %3072, %3070 ], [ 0.000000e+00, %3012 ]
  %3087 = phi float [ %3073, %3076 ], [ %3073, %3070 ], [ 0.000000e+00, %3012 ]
  %3088 = phi float [ %3083, %3076 ], [ 0x3F70101020000000, %3070 ], [ 0x3F70101020000000, %3012 ]
  %3089 = add i32 %44, 128
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = and i32 %3091, 255
  %3093 = uitofp i32 %3092 to float
  %3094 = lshr i32 %3091, 8
  %3095 = and i32 %3094, 255
  %3096 = uitofp i32 %3095 to float
  %3097 = call float @dx.op.dot3.f32(i32 55, float %2847, float %2848, float %2849, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3098 = fmul fast float %3096, %3097
  %3099 = fadd fast float %3098, %3093
  %3100 = fmul fast float %3099, 0x3F70101020000000
  %3101 = call float @dx.op.unary.f32(i32 7, float %3100)  ; Saturate(value)
  br i1 %2331, label %3102, label %3137

; <label>:3102                                    ; preds = %3084
  %3103 = fmul fast float %3088, 2.000000e+00
  %3104 = fcmp fast olt float %3033, 1.270000e+02
  %3105 = fcmp fast olt float %3034, 1.270000e+02
  %3106 = fcmp fast olt float %3035, 1.270000e+02
  %3107 = fmul fast float %3033, 0xBFF7154760000000
  %3108 = fmul fast float %3107, %3103
  %3109 = fmul fast float %3034, 0xBFF7154760000000
  %3110 = fmul fast float %3109, %3103
  %3111 = fmul fast float %3035, 0xBFF7154760000000
  %3112 = fmul fast float %3111, %3103
  %3113 = call float @dx.op.unary.f32(i32 21, float %3108)  ; Exp(value)
  %3114 = call float @dx.op.unary.f32(i32 21, float %3110)  ; Exp(value)
  %3115 = call float @dx.op.unary.f32(i32 21, float %3112)  ; Exp(value)
  %3116 = call float @dx.op.unary.f32(i32 7, float %3113)  ; Saturate(value)
  %3117 = call float @dx.op.unary.f32(i32 7, float %3114)  ; Saturate(value)
  %3118 = call float @dx.op.unary.f32(i32 7, float %3115)  ; Saturate(value)
  %3119 = fadd fast float %3116, -1.000000e+00
  %3120 = select i1 %3104, float %3119, float -1.000000e+00
  %3121 = fadd fast float %3117, -1.000000e+00
  %3122 = select i1 %3105, float %3121, float -1.000000e+00
  %3123 = fadd fast float %3118, -1.000000e+00
  %3124 = select i1 %3106, float %3123, float -1.000000e+00
  %3125 = fmul fast float %3120, %2627
  %3126 = fmul fast float %3122, %2627
  %3127 = fmul fast float %3124, %2627
  %3128 = fadd fast float %3125, 1.000000e+00
  %3129 = fadd fast float %3126, 1.000000e+00
  %3130 = fadd fast float %3127, 1.000000e+00
  %3131 = fmul fast float %3128, %2313
  %3132 = fmul fast float %3129, %2314
  %3133 = fmul fast float %3130, %2315
  %3134 = fmul fast float %3128, %2316
  %3135 = fmul fast float %3129, %2317
  %3136 = fmul fast float %3130, %2318
  br label %3137

; <label>:3137                                    ; preds = %3102, %3084
  %3138 = phi float [ %3131, %3102 ], [ %2313, %3084 ]
  %3139 = phi float [ %3132, %3102 ], [ %2314, %3084 ]
  %3140 = phi float [ %3133, %3102 ], [ %2315, %3084 ]
  %3141 = phi float [ %3134, %3102 ], [ %2316, %3084 ]
  %3142 = phi float [ %3135, %3102 ], [ %2317, %3084 ]
  %3143 = phi float [ %3136, %3102 ], [ %2318, %3084 ]
  %3144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %3145 = extractvalue %dx.types.ResRet.i32 %3144, 0
  %3146 = and i32 %3145, 3
  %3147 = icmp eq i32 %3146, 3
  br i1 %3147, label %3226, label %3148

; <label>:3148                                    ; preds = %3137
  %3149 = and i32 %3145, 16
  %3150 = icmp ne i32 %3149, 0
  %3151 = select i1 %3150, float %2627, float 0.000000e+00
  %3152 = icmp eq i32 %3146, 0
  br i1 %3152, label %3153, label %3181

; <label>:3153                                    ; preds = %3148
  %3154 = and i32 %3145, 64
  %3155 = icmp ne i32 %3154, 0
  %3156 = select i1 %3155, float %2627, float 0.000000e+00
  %3157 = fsub fast float %2847, %3138
  %3158 = fsub fast float %2848, %3139
  %3159 = fsub fast float %2849, %3140
  %3160 = fmul fast float %3151, %3157
  %3161 = fmul fast float %3151, %3158
  %3162 = fmul fast float %3151, %3159
  %3163 = fadd fast float %3160, %3138
  %3164 = fadd fast float %3161, %3139
  %3165 = fadd fast float %3162, %3140
  %3166 = fsub fast float %2833, %2325
  %3167 = fmul fast float %3151, %3166
  %3168 = fadd fast float %3167, %2325
  %3169 = fsub fast float %2975, %3141
  %3170 = fsub fast float %2976, %3142
  %3171 = fsub fast float %2977, %3143
  %3172 = fmul fast float %3156, %3169
  %3173 = fmul fast float %3156, %3170
  %3174 = fmul fast float %3156, %3171
  %3175 = fadd fast float %3172, %3141
  %3176 = fadd fast float %3173, %3142
  %3177 = fadd fast float %3174, %3143
  %3178 = fsub fast float %3101, %2329
  %3179 = fmul fast float %3151, %3178
  %3180 = fadd fast float %3179, %2329
  br label %3226

; <label>:3181                                    ; preds = %3148
  %3182 = icmp eq i32 %3146, 1
  br i1 %3182, label %3183, label %3196

; <label>:3183                                    ; preds = %3181
  %3184 = fadd fast float %2847, -1.000000e+00
  %3185 = fadd fast float %2848, -1.000000e+00
  %3186 = fadd fast float %2849, -1.000000e+00
  %3187 = fmul fast float %3151, %3184
  %3188 = fmul fast float %3151, %3185
  %3189 = fmul fast float %3151, %3186
  %3190 = fadd fast float %3187, 1.000000e+00
  %3191 = fadd fast float %3188, 1.000000e+00
  %3192 = fadd fast float %3189, 1.000000e+00
  %3193 = fmul fast float %3190, %3138
  %3194 = fmul fast float %3191, %3139
  %3195 = fmul fast float %3192, %3140
  br label %3226

; <label>:3196                                    ; preds = %3181
  %3197 = icmp eq i32 %3146, 2
  br i1 %3197, label %3198, label %3226

; <label>:3198                                    ; preds = %3196
  %3199 = call float @dx.op.unary.f32(i32 24, float %2847)  ; Sqrt(value)
  %3200 = call float @dx.op.unary.f32(i32 24, float %2848)  ; Sqrt(value)
  %3201 = call float @dx.op.unary.f32(i32 24, float %2849)  ; Sqrt(value)
  %3202 = fadd fast float %3199, -5.000000e-01
  %3203 = fadd fast float %3200, -5.000000e-01
  %3204 = fadd fast float %3201, -5.000000e-01
  %3205 = fmul fast float %3202, %3151
  %3206 = fmul fast float %3203, %3151
  %3207 = fmul fast float %3204, %3151
  %3208 = fadd fast float %3205, 5.000000e-01
  %3209 = fadd fast float %3206, 5.000000e-01
  %3210 = fadd fast float %3207, 5.000000e-01
  %3211 = fmul fast float %3208, 2.000000e+00
  %3212 = fsub fast float 1.000000e+00, %3211
  %3213 = fmul fast float %3212, %3138
  %3214 = fadd fast float %3213, %3211
  %3215 = fmul fast float %3214, %3138
  %3216 = fmul fast float %3209, 2.000000e+00
  %3217 = fsub fast float 1.000000e+00, %3216
  %3218 = fmul fast float %3217, %3139
  %3219 = fadd fast float %3218, %3216
  %3220 = fmul fast float %3219, %3139
  %3221 = fmul fast float %3210, 2.000000e+00
  %3222 = fsub fast float 1.000000e+00, %3221
  %3223 = fmul fast float %3222, %3140
  %3224 = fadd fast float %3223, %3221
  %3225 = fmul fast float %3224, %3140
  br label %3226

; <label>:3226                                    ; preds = %3198, %3196, %3183, %3153, %3137
  %3227 = phi float [ %3138, %3137 ], [ %3215, %3198 ], [ %3138, %3196 ], [ %3193, %3183 ], [ %3163, %3153 ]
  %3228 = phi float [ %3139, %3137 ], [ %3220, %3198 ], [ %3139, %3196 ], [ %3194, %3183 ], [ %3164, %3153 ]
  %3229 = phi float [ %3140, %3137 ], [ %3225, %3198 ], [ %3140, %3196 ], [ %3195, %3183 ], [ %3165, %3153 ]
  %3230 = phi float [ %3141, %3137 ], [ %3141, %3198 ], [ %3141, %3196 ], [ %3141, %3183 ], [ %3175, %3153 ]
  %3231 = phi float [ %3142, %3137 ], [ %3142, %3198 ], [ %3142, %3196 ], [ %3142, %3183 ], [ %3176, %3153 ]
  %3232 = phi float [ %3143, %3137 ], [ %3143, %3198 ], [ %3143, %3196 ], [ %3143, %3183 ], [ %3177, %3153 ]
  %3233 = phi float [ %2325, %3137 ], [ %2325, %3198 ], [ %2325, %3196 ], [ %2325, %3183 ], [ %3168, %3153 ]
  %3234 = phi float [ %2329, %3137 ], [ %2329, %3198 ], [ %2329, %3196 ], [ %2329, %3183 ], [ %3180, %3153 ]
  %3235 = and i32 %3145, 12
  %3236 = icmp eq i32 %3235, 12
  br i1 %3236, label %3367, label %3237

; <label>:3237                                    ; preds = %3226
  %3238 = and i32 %3145, 2097184
  %3239 = icmp eq i32 %3238, 2097184
  %3240 = select i1 %3239, float %2627, float 0.000000e+00
  %3241 = and i32 %3145, 4194336
  %3242 = icmp eq i32 %3241, 4194336
  %3243 = select i1 %3242, float %2627, float 0.000000e+00
  %3244 = and i32 %3145, 8388640
  %3245 = icmp eq i32 %3244, 8388640
  %3246 = select i1 %3245, float %2627, float 0.000000e+00
  %3247 = and i32 %3145, 1024
  %3248 = icmp ne i32 %3247, 0
  %3249 = select i1 %3248, float %2627, float 0.000000e+00
  %3250 = and i32 %3145, 2048
  %3251 = icmp ne i32 %3250, 0
  %3252 = select i1 %3251, float %2627, float 0.000000e+00
  %3253 = and i32 %3145, 8192
  %3254 = icmp ne i32 %3253, 0
  %3255 = select i1 %3254, float %2627, float 0.000000e+00
  %3256 = icmp eq i32 %3235, 0
  br i1 %3256, label %3257, label %3291

; <label>:3257                                    ; preds = %3237
  %3258 = fsub fast float %2928, %2311
  %3259 = fsub fast float %2929, %2312
  %3260 = fmul fast float %3240, %3258
  %3261 = fmul fast float %3240, %3259
  %3262 = fadd fast float %3260, %2311
  %3263 = fadd fast float %3261, %2312
  %3264 = fsub fast float %2930, %2327
  %3265 = fmul fast float %3243, %3264
  %3266 = fadd fast float %3265, %2327
  %3267 = fsub fast float %2927, %2326
  %3268 = fmul fast float %3246, %3267
  %3269 = fadd fast float %3268, %2326
  %3270 = fsub fast float %3033, %2322
  %3271 = fsub fast float %3034, %2323
  %3272 = fsub fast float %3035, %2324
  %3273 = fmul fast float %3249, %3270
  %3274 = fmul fast float %3249, %3271
  %3275 = fmul fast float %3249, %3272
  %3276 = fadd fast float %3273, %2322
  %3277 = fadd fast float %3274, %2323
  %3278 = fadd fast float %3275, %2324
  %3279 = fsub fast float %3088, %2328
  %3280 = fmul fast float %3252, %3279
  %3281 = fadd fast float %3280, %2328
  %3282 = fsub fast float %3085, %2319
  %3283 = fsub fast float %3086, %2320
  %3284 = fsub fast float %3087, %2321
  %3285 = fmul fast float %3255, %3282
  %3286 = fmul fast float %3255, %3283
  %3287 = fmul fast float %3255, %3284
  %3288 = fadd fast float %3285, %2319
  %3289 = fadd fast float %3286, %2320
  %3290 = fadd fast float %3287, %2321
  br label %3367

; <label>:3291                                    ; preds = %3237
  %3292 = icmp eq i32 %3235, 4
  br i1 %3292, label %3293, label %3339

; <label>:3293                                    ; preds = %3291
  %3294 = fmul fast float %3240, %2928
  %3295 = fmul fast float %3240, %2929
  %3296 = fadd fast float %3294, %2311
  %3297 = fadd fast float %3295, %2312
  %3298 = call float @dx.op.binary.f32(i32 36, float %2327, float %2930)  ; FMin(a,b)
  %3299 = fsub fast float %3298, %2327
  %3300 = fmul fast float %3299, %3243
  %3301 = fadd fast float %3300, %2327
  %3302 = fadd fast float %2927, %2326
  %3303 = fmul fast float %3302, 0x3FF337FAE0000000
  %3304 = fmul fast float %2326, %2326
  %3305 = fmul fast float %2927, %2927
  %3306 = fadd fast float %3305, %3304
  %3307 = fmul fast float %3306, 0x3FE5152B00000000
  %3308 = fmul fast float %2326, 0xBFCC1F85E0000000
  %3309 = fmul fast float %3308, %2927
  %3310 = fadd fast float %3309, 0xBFE1363700000000
  %3311 = fadd fast float %3310, %3303
  %3312 = fsub fast float %3311, %3307
  %3313 = fmul fast float %3302, 0x3FBA6F0D00000000
  %3314 = fmul fast float %3306, 0x3FD0432880000000
  %3315 = fmul fast float %2326, 0xBFEF110800000000
  %3316 = fmul fast float %3315, %2927
  %3317 = fadd fast float %3316, 1.000000e+00
  %3318 = fsub fast float %3317, %3313
  %3319 = fadd fast float %3318, %3314
  %3320 = fdiv fast float %3312, %3319
  %3321 = call float @dx.op.unary.f32(i32 7, float %3320)  ; Saturate(value)
  %3322 = fsub fast float %3321, %2326
  %3323 = fmul fast float %3322, %3246
  %3324 = fadd fast float %3323, %2326
  %3325 = fmul fast float %3249, %3033
  %3326 = fmul fast float %3249, %3034
  %3327 = fmul fast float %3249, %3035
  %3328 = fadd fast float %3325, %2322
  %3329 = fadd fast float %3326, %2323
  %3330 = fadd fast float %3327, %2324
  %3331 = fmul fast float %3252, %3088
  %3332 = fadd fast float %3331, %2328
  %3333 = fmul fast float %3255, %3085
  %3334 = fmul fast float %3255, %3086
  %3335 = fmul fast float %3255, %3087
  %3336 = fadd fast float %3333, %2319
  %3337 = fadd fast float %3334, %2320
  %3338 = fadd fast float %3335, %2321
  br label %3367

; <label>:3339                                    ; preds = %3291
  %3340 = icmp eq i32 %3235, 8
  br i1 %3340, label %3341, label %3367

; <label>:3341                                    ; preds = %3339
  %3342 = fmul fast float %3240, %2928
  %3343 = fmul fast float %3240, %2929
  %3344 = fadd fast float %3342, %2311
  %3345 = fadd fast float %3343, %2312
  %3346 = call float @dx.op.binary.f32(i32 36, float %2327, float %2930)  ; FMin(a,b)
  %3347 = fsub fast float %3346, %2327
  %3348 = fmul fast float %3347, %3243
  %3349 = fadd fast float %3348, %2327
  %3350 = fsub fast float %2927, %2326
  %3351 = fmul fast float %3246, %3350
  %3352 = fadd fast float %3351, %2326
  %3353 = fmul fast float %3249, %3033
  %3354 = fmul fast float %3249, %3034
  %3355 = fmul fast float %3249, %3035
  %3356 = fadd fast float %3353, %2322
  %3357 = fadd fast float %3354, %2323
  %3358 = fadd fast float %3355, %2324
  %3359 = fmul fast float %3252, %3088
  %3360 = fadd fast float %3359, %2328
  %3361 = fmul fast float %3255, %3085
  %3362 = fmul fast float %3255, %3086
  %3363 = fmul fast float %3255, %3087
  %3364 = fadd fast float %3361, %2319
  %3365 = fadd fast float %3362, %2320
  %3366 = fadd fast float %3363, %2321
  br label %3367

; <label>:3367                                    ; preds = %3341, %3339, %3293, %3257, %3226, %2626, %2330, %2310
  %3368 = phi float [ %2311, %3226 ], [ %2311, %2626 ], [ %2311, %2310 ], [ %3344, %3341 ], [ %2311, %3339 ], [ %3296, %3293 ], [ %3262, %3257 ], [ %2311, %2330 ]
  %3369 = phi float [ %2312, %3226 ], [ %2312, %2626 ], [ %2312, %2310 ], [ %3345, %3341 ], [ %2312, %3339 ], [ %3297, %3293 ], [ %3263, %3257 ], [ %2312, %2330 ]
  %3370 = phi float [ %3227, %3226 ], [ %2313, %2626 ], [ %2313, %2310 ], [ %3227, %3341 ], [ %3227, %3339 ], [ %3227, %3293 ], [ %3227, %3257 ], [ %2313, %2330 ]
  %3371 = phi float [ %3228, %3226 ], [ %2314, %2626 ], [ %2314, %2310 ], [ %3228, %3341 ], [ %3228, %3339 ], [ %3228, %3293 ], [ %3228, %3257 ], [ %2314, %2330 ]
  %3372 = phi float [ %3229, %3226 ], [ %2315, %2626 ], [ %2315, %2310 ], [ %3229, %3341 ], [ %3229, %3339 ], [ %3229, %3293 ], [ %3229, %3257 ], [ %2315, %2330 ]
  %3373 = phi float [ %3230, %3226 ], [ %2316, %2626 ], [ %2316, %2310 ], [ %3230, %3341 ], [ %3230, %3339 ], [ %3230, %3293 ], [ %3230, %3257 ], [ %2316, %2330 ]
  %3374 = phi float [ %3231, %3226 ], [ %2317, %2626 ], [ %2317, %2310 ], [ %3231, %3341 ], [ %3231, %3339 ], [ %3231, %3293 ], [ %3231, %3257 ], [ %2317, %2330 ]
  %3375 = phi float [ %3232, %3226 ], [ %2318, %2626 ], [ %2318, %2310 ], [ %3232, %3341 ], [ %3232, %3339 ], [ %3232, %3293 ], [ %3232, %3257 ], [ %2318, %2330 ]
  %3376 = phi float [ %2319, %3226 ], [ %2319, %2626 ], [ %2319, %2310 ], [ %3364, %3341 ], [ %2319, %3339 ], [ %3336, %3293 ], [ %3288, %3257 ], [ %2319, %2330 ]
  %3377 = phi float [ %2320, %3226 ], [ %2320, %2626 ], [ %2320, %2310 ], [ %3365, %3341 ], [ %2320, %3339 ], [ %3337, %3293 ], [ %3289, %3257 ], [ %2320, %2330 ]
  %3378 = phi float [ %2321, %3226 ], [ %2321, %2626 ], [ %2321, %2310 ], [ %3366, %3341 ], [ %2321, %3339 ], [ %3338, %3293 ], [ %3290, %3257 ], [ %2321, %2330 ]
  %3379 = phi float [ %2322, %3226 ], [ %2322, %2626 ], [ %2322, %2310 ], [ %3356, %3341 ], [ %2322, %3339 ], [ %3328, %3293 ], [ %3276, %3257 ], [ %2322, %2330 ]
  %3380 = phi float [ %2323, %3226 ], [ %2323, %2626 ], [ %2323, %2310 ], [ %3357, %3341 ], [ %2323, %3339 ], [ %3329, %3293 ], [ %3277, %3257 ], [ %2323, %2330 ]
  %3381 = phi float [ %2324, %3226 ], [ %2324, %2626 ], [ %2324, %2310 ], [ %3358, %3341 ], [ %2324, %3339 ], [ %3330, %3293 ], [ %3278, %3257 ], [ %2324, %2330 ]
  %3382 = phi float [ %3233, %3226 ], [ %2325, %2626 ], [ %2325, %2310 ], [ %3233, %3341 ], [ %3233, %3339 ], [ %3233, %3293 ], [ %3233, %3257 ], [ %2325, %2330 ]
  %3383 = phi float [ %2326, %3226 ], [ %2326, %2626 ], [ %2326, %2310 ], [ %3352, %3341 ], [ %2326, %3339 ], [ %3324, %3293 ], [ %3269, %3257 ], [ %2326, %2330 ]
  %3384 = phi float [ %2327, %3226 ], [ %2327, %2626 ], [ %2327, %2310 ], [ %3349, %3341 ], [ %2327, %3339 ], [ %3301, %3293 ], [ %3266, %3257 ], [ %2327, %2330 ]
  %3385 = phi float [ %2328, %3226 ], [ %2328, %2626 ], [ %2328, %2310 ], [ %3360, %3341 ], [ %2328, %3339 ], [ %3332, %3293 ], [ %3281, %3257 ], [ %2328, %2330 ]
  %3386 = phi float [ %3234, %3226 ], [ %2329, %2626 ], [ %2329, %2310 ], [ %3234, %3341 ], [ %3234, %3339 ], [ %3234, %3293 ], [ %3234, %3257 ], [ %2329, %2330 ]
  br i1 %429, label %4424, label %3387

; <label>:3387                                    ; preds = %3367
  %3388 = icmp ult i32 %483, 4
  %3389 = add i32 %44, 72
  %3390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3391 = extractvalue %dx.types.ResRet.i32 %3390, 0
  %3392 = add i32 %44, 76
  %3393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3392, i32 undef)  ; BufferLoad(srv,index,wot)
  %3394 = extractvalue %dx.types.ResRet.i32 %3393, 0
  %3395 = or i32 %3394, %3391
  %3396 = icmp eq i32 %3395, 0
  br i1 %3396, label %4424, label %3397

; <label>:3397                                    ; preds = %3387
  %3398 = and i32 %3391, 262144
  %3399 = icmp ne i32 %3398, 0
  %3400 = select i1 %3399, float %47, float 1.000000e+00
  %3401 = select i1 %3399, float %48, float 0.000000e+00
  %3402 = select i1 %3399, float %49, float 0.000000e+00
  %3403 = select i1 %3399, float %50, float 1.000000e+00
  %3404 = select i1 %3399, float %51, float %72
  %3405 = select i1 %3399, float %52, float %73
  %3406 = add i32 %44, 332
  %3407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.i32 %3407, 0
  %3409 = lshr i32 %3408, 16
  %3410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3409)  ; LegacyF16ToF32(value)
  %3411 = fmul fast float %3410, 0x3F50624DE0000000
  %3412 = add i32 %44, 136
  %3413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.i32 %3413, 0
  %3415 = lshr i32 %3414, 16
  %3416 = and i32 %3415, 255
  %3417 = lshr i32 %3414, 24
  %3418 = add i32 %44, 340
  %3419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.i32 %3419, 0
  %3421 = and i32 %3420, 65535
  %3422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3421)  ; LegacyF16ToF32(value)
  %3423 = lshr i32 %3420, 16
  %3424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3423)  ; LegacyF16ToF32(value)
  %3425 = add i32 %44, 80
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = lshr i32 %3427, 22
  %3429 = shl nuw nsw i32 %3428, 5
  %3430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3429)  ; LegacyF16ToF32(value)
  %3431 = shl i32 %3427, 4
  %3432 = and i32 %3431, 32752
  %3433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3432)  ; LegacyF16ToF32(value)
  %3434 = lshr i32 %3427, 7
  %3435 = and i32 %3434, 32752
  %3436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3435)  ; LegacyF16ToF32(value)
  %3437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3438 = extractvalue %dx.types.CBufRet.f32 %3437, 3
  %3439 = fmul fast float %3438, 1.000000e+03
  %3440 = fmul fast float %419, %3439
  %3441 = call float @dx.op.unary.f32(i32 22, float %3440)  ; Frc(value)
  %3442 = fadd fast float %3441, %409
  %3443 = fmul fast float %420, %3439
  %3444 = call float @dx.op.unary.f32(i32 22, float %3443)  ; Frc(value)
  %3445 = fadd fast float %3444, %411
  %3446 = fmul fast float %3411, %3439
  %3447 = call float @dx.op.unary.f32(i32 22, float %3446)  ; Frc(value)
  %3448 = fmul fast float %3447, 0x401921FB60000000
  %3449 = fadd fast float %3448, %3430
  %3450 = call float @dx.op.unary.f32(i32 13, float %3449)  ; Sin(value)
  %3451 = call float @dx.op.unary.f32(i32 12, float %3449)  ; Cos(value)
  %3452 = fsub fast float -0.000000e+00, %3450
  %3453 = fadd fast float %3404, -5.000000e-01
  %3454 = fadd fast float %3405, -5.000000e-01
  %3455 = fmul fast float %3422, %3453
  %3456 = fmul fast float %3424, %3454
  %3457 = fadd fast float %3455, 5.000000e-01
  %3458 = fadd fast float %3456, 5.000000e-01
  %3459 = fmul fast float %3433, %3457
  %3460 = fmul fast float %3436, %3458
  %3461 = fmul fast float %3451, %3459
  %3462 = call float @dx.op.tertiary.f32(i32 46, float %3452, float %3460, float %3461)  ; FMad(a,b,c)
  %3463 = fmul fast float %3450, %3459
  %3464 = call float @dx.op.tertiary.f32(i32 46, float %3451, float %3460, float %3463)  ; FMad(a,b,c)
  %3465 = fadd fast float %3442, %3462
  %3466 = fadd fast float %3445, %3464
  %3467 = icmp ugt i32 %3416, 1
  %3468 = icmp ugt i32 %3414, 33554431
  %3469 = or i1 %3468, %3467
  br i1 %3469, label %3470, label %3495

; <label>:3470                                    ; preds = %3397
  %3471 = add i32 %44, 276
  %3472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3471, i32 undef)  ; BufferLoad(srv,index,wot)
  %3473 = extractvalue %dx.types.ResRet.i32 %3472, 0
  %3474 = lshr i32 %3473, 16
  %3475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3474)  ; LegacyF16ToF32(value)
  %3476 = fmul fast float %3438, %3475
  %3477 = call float @dx.op.unary.f32(i32 22, float %3476)  ; Frc(value)
  %3478 = mul nuw nsw i32 %3416, %3417
  %3479 = uitofp i32 %3478 to float
  %3480 = fmul fast float %3477, %3479
  %3481 = call float @dx.op.unary.f32(i32 27, float %3480)  ; Round_ni(value)
  %3482 = fptoui float %3481 to i32
  %3483 = urem i32 %3482, %3416
  %3484 = udiv i32 %3482, %3417
  %3485 = call float @dx.op.unary.f32(i32 22, float %3465)  ; Frc(value)
  %3486 = call float @dx.op.unary.f32(i32 22, float %3466)  ; Frc(value)
  %3487 = uitofp i32 %3483 to float
  %3488 = uitofp i32 %3484 to float
  %3489 = fadd fast float %3485, %3487
  %3490 = fadd fast float %3486, %3488
  %3491 = uitofp i32 %3416 to float
  %3492 = uitofp i32 %3417 to float
  %3493 = fdiv fast float %3489, %3491
  %3494 = fdiv fast float %3490, %3492
  br label %3495

; <label>:3495                                    ; preds = %3470, %3397
  %3496 = phi float [ %3493, %3470 ], [ %3465, %3397 ]
  %3497 = phi float [ %3494, %3470 ], [ %3466, %3397 ]
  %3498 = and i32 %3391, 16777216
  %3499 = icmp eq i32 %3498, 0
  br i1 %3499, label %3609, label %3500

; <label>:3500                                    ; preds = %3495
  %3501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3502 = extractvalue %dx.types.CBufRet.f32 %3501, 0
  %3503 = extractvalue %dx.types.CBufRet.f32 %3501, 1
  %3504 = extractvalue %dx.types.CBufRet.f32 %3501, 2
  %3505 = fadd fast float %3502, %145
  %3506 = fadd fast float %3503, %146
  %3507 = fadd fast float %3504, %147
  %3508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3509 = extractvalue %dx.types.CBufRet.f32 %3508, 0
  %3510 = call float @dx.op.unary.f32(i32 7, float %3509)  ; Saturate(value)
  %3511 = icmp eq i32 %45, 65535
  br i1 %3511, label %3606, label %3512

; <label>:3512                                    ; preds = %3500
  %3513 = lshr i32 %45, 1
  %3514 = shl i32 %3513, 2
  %3515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3514, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.i32 %3515, 0
  %3517 = and i32 %45, 1
  %3518 = icmp ne i32 %3517, 0
  %3519 = lshr i32 %3516, 16
  %3520 = and i32 %3516, 65535
  %3521 = select i1 %3518, i32 %3519, i32 %3520
  %3522 = icmp eq i32 %3521, 65535
  br i1 %3522, label %3602, label %3523

; <label>:3523                                    ; preds = %3512
  %3524 = mul nuw nsw i32 %3521, 40
  %3525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.f32 %3525, 0
  %3527 = extractvalue %dx.types.ResRet.f32 %3525, 1
  %3528 = extractvalue %dx.types.ResRet.f32 %3525, 2
  %3529 = add nuw nsw i32 %3524, 12
  %3530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3529, i32 undef)  ; BufferLoad(srv,index,wot)
  %3531 = extractvalue %dx.types.ResRet.f32 %3530, 0
  %3532 = extractvalue %dx.types.ResRet.f32 %3530, 1
  %3533 = extractvalue %dx.types.ResRet.f32 %3530, 2
  %3534 = add nuw nsw i32 %3524, 24
  %3535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.f32 %3535, 0
  %3537 = extractvalue %dx.types.ResRet.f32 %3535, 1
  %3538 = extractvalue %dx.types.ResRet.f32 %3535, 2
  %3539 = add nuw nsw i32 %3524, 36
  %3540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3541 = extractvalue %dx.types.ResRet.f32 %3540, 0
  %3542 = fsub fast float %3505, %3526
  %3543 = fsub fast float %3506, %3527
  %3544 = fsub fast float %3507, %3528
  %3545 = fmul fast float %3541, %3542
  %3546 = fmul fast float %3541, %3543
  %3547 = fmul fast float %3541, %3544
  %3548 = call float @dx.op.unary.f32(i32 27, float %3545)  ; Round_ni(value)
  %3549 = call float @dx.op.unary.f32(i32 27, float %3546)  ; Round_ni(value)
  %3550 = call float @dx.op.unary.f32(i32 27, float %3547)  ; Round_ni(value)
  %3551 = fadd fast float %3548, 5.000000e-01
  %3552 = fadd fast float %3549, 5.000000e-01
  %3553 = fadd fast float %3550, 5.000000e-01
  %3554 = fmul fast float %3551, %3531
  %3555 = fmul fast float %3552, %3532
  %3556 = fmul fast float %3553, %3533
  %3557 = shl i32 %45, 2
  %3558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3559 = extractvalue %dx.types.ResRet.i32 %3558, 0
  %3560 = add i32 %3559, 0
  %3561 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3560, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3562 = call float @dx.op.unary.f32(i32 22, float %3554)  ; Frc(value)
  %3563 = call float @dx.op.unary.f32(i32 22, float %3555)  ; Frc(value)
  %3564 = call float @dx.op.unary.f32(i32 22, float %3556)  ; Frc(value)
  %3565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3561, %dx.types.Handle %39, float %3562, float %3563, float %3564, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3566 = extractvalue %dx.types.ResRet.f32 %3565, 0
  %3567 = extractvalue %dx.types.ResRet.f32 %3565, 1
  %3568 = extractvalue %dx.types.ResRet.f32 %3565, 2
  %3569 = fmul fast float %3566, 1.023000e+03
  %3570 = fmul fast float %3567, 1.023000e+03
  %3571 = fmul fast float %3568, 1.023000e+03
  %3572 = fadd fast float %3569, 5.000000e-01
  %3573 = fadd fast float %3570, 5.000000e-01
  %3574 = fadd fast float %3571, 5.000000e-01
  %3575 = call float @dx.op.unary.f32(i32 27, float %3572)  ; Round_ni(value)
  %3576 = call float @dx.op.unary.f32(i32 27, float %3573)  ; Round_ni(value)
  %3577 = call float @dx.op.unary.f32(i32 27, float %3574)  ; Round_ni(value)
  %3578 = fsub fast float %3545, %3548
  %3579 = fsub fast float %3546, %3549
  %3580 = fsub fast float %3547, %3550
  %3581 = fmul fast float %3578, 7.500000e-01
  %3582 = fmul fast float %3579, 7.500000e-01
  %3583 = fmul fast float %3580, 7.500000e-01
  %3584 = fadd fast float %3548, 1.250000e-01
  %3585 = fadd fast float %3584, %3581
  %3586 = fadd fast float %3585, %3575
  %3587 = fadd fast float %3549, 1.250000e-01
  %3588 = fadd fast float %3587, %3582
  %3589 = fadd fast float %3588, %3576
  %3590 = fadd fast float %3550, 1.250000e-01
  %3591 = fadd fast float %3590, %3583
  %3592 = fadd fast float %3591, %3577
  %3593 = fmul fast float %3586, %3536
  %3594 = fmul fast float %3589, %3537
  %3595 = fmul fast float %3592, %3538
  %3596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.i32 %3596, 0
  %3598 = add i32 %3597, 0
  %3599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3598, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3599, %dx.types.Handle %37, float %3593, float %3594, float %3595, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 0
  br label %3602

; <label>:3602                                    ; preds = %3523, %3512
  %3603 = phi float [ %3601, %3523 ], [ -1.000000e+00, %3512 ]
  %3604 = fadd fast float %3603, %3510
  %3605 = call float @dx.op.unary.f32(i32 7, float %3604)  ; Saturate(value)
  br label %3606

; <label>:3606                                    ; preds = %3602, %3500
  %3607 = phi float [ %3605, %3602 ], [ %3510, %3500 ]
  %3608 = fmul fast float %3607, %478
  br label %3609

; <label>:3609                                    ; preds = %3606, %3495
  %3610 = phi float [ %3608, %3606 ], [ %478, %3495 ]
  %3611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.i32 %3611, 0
  %3613 = and i32 %3612, 256
  %3614 = icmp eq i32 %3613, 0
  br i1 %3614, label %3661, label %3615

; <label>:3615                                    ; preds = %3609
  %3616 = add i32 %44, 484
  %3617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3618 = extractvalue %dx.types.ResRet.i32 %3617, 0
  %3619 = add i32 %3618, 0
  %3620 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3619, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3621 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3620, %dx.types.Handle %87, float %3496, float %3497, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3622 = extractvalue %dx.types.ResRet.f32 %3621, 0
  %3623 = add i32 %44, 148
  %3624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.i32 %3624, 0
  %3626 = shl i32 %3625, 4
  %3627 = and i32 %3626, 32752
  %3628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3627)  ; LegacyF16ToF32(value)
  %3629 = lshr i32 %3625, 7
  %3630 = and i32 %3629, 32752
  %3631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3630)  ; LegacyF16ToF32(value)
  %3632 = fsub fast float 1.000000e+00, %3610
  %3633 = call float @dx.op.binary.f32(i32 35, float %3632, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3634 = bitcast float %3610 to i32
  %3635 = sitofp i32 %3634 to float
  %3636 = fadd fast float %3635, 0xC1CFBF8940000000
  %3637 = fmul fast float %3631, %3636
  %3638 = fadd fast float %3637, 0x41CFBF8940000000
  %3639 = fptosi float %3638 to i32
  %3640 = bitcast i32 %3639 to float
  %3641 = bitcast float %3633 to i32
  %3642 = sitofp i32 %3641 to float
  %3643 = fadd fast float %3642, 0xC1CFBF8940000000
  %3644 = fmul fast float %3643, %3631
  %3645 = fadd fast float %3644, 0x41CFBF8940000000
  %3646 = fptosi float %3645 to i32
  %3647 = bitcast i32 %3646 to float
  %3648 = fmul fast float %3640, %3628
  %3649 = fmul fast float %3647, %3628
  %3650 = fsub fast float %3633, %3648
  %3651 = fadd fast float %3649, %3633
  %3652 = call float @dx.op.unary.f32(i32 7, float %3650)  ; Saturate(value)
  %3653 = call float @dx.op.unary.f32(i32 7, float %3651)  ; Saturate(value)
  %3654 = fsub fast float %3622, %3652
  %3655 = fsub fast float %3653, %3652
  %3656 = bitcast float %3655 to i32
  %3657 = sub nsw i32 2129859010, %3656
  %3658 = bitcast i32 %3657 to float
  %3659 = fmul fast float %3658, %3654
  %3660 = call float @dx.op.unary.f32(i32 7, float %3659)  ; Saturate(value)
  br label %3661

; <label>:3661                                    ; preds = %3615, %3609
  %3662 = phi float [ %3660, %3615 ], [ %3610, %3609 ]
  %3663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3664 = extractvalue %dx.types.ResRet.i32 %3663, 0
  %3665 = and i32 %3664, 128
  %3666 = icmp eq i32 %3665, 0
  br i1 %3666, label %3683, label %3667

; <label>:3667                                    ; preds = %3661
  %3668 = add i32 %44, 468
  %3669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3668, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.i32 %3669, 0
  %3671 = add i32 %3670, 0
  %3672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3671, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3673 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3672, %dx.types.Handle %87, float %3496, float %3497, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3674 = extractvalue %dx.types.ResRet.f32 %3673, 0
  %3675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3676 = extractvalue %dx.types.ResRet.i32 %3675, 0
  %3677 = and i32 %3676, 524288
  %3678 = icmp ne i32 %3677, 0
  %3679 = fcmp fast ogt float %3674, 0x3FE0101020000000
  %3680 = select i1 %3679, float 1.000000e+00, float 0.000000e+00
  %3681 = select i1 %3678, float %3680, float %3674
  %3682 = fmul fast float %3681, %3662
  br label %3683

; <label>:3683                                    ; preds = %3667, %3661
  %3684 = phi float [ %3682, %3667 ], [ %3662, %3661 ]
  %3685 = fcmp fast ult float %3684, 0x3F70101020000000
  br i1 %3685, label %4424, label %3686

; <label>:3686                                    ; preds = %3683
  %3687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.i32 %3687, 0
  %3689 = and i32 %3688, 16
  %3690 = icmp eq i32 %3689, 0
  br i1 %3690, label %3889, label %3691

; <label>:3691                                    ; preds = %3686
  %3692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3693 = extractvalue %dx.types.ResRet.i32 %3692, 0
  %3694 = add i32 %44, 420
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = add i32 %3696, 0
  %3698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3697, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3699 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3698, %dx.types.Handle %86, float %3496, float %3497, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3700 = extractvalue %dx.types.ResRet.f32 %3699, 0
  %3701 = extractvalue %dx.types.ResRet.f32 %3699, 1
  %3702 = extractvalue %dx.types.ResRet.f32 %3699, 2
  %3703 = extractvalue %dx.types.ResRet.f32 %3699, 3
  %3704 = and i32 %3693, 255
  %3705 = uitofp i32 %3704 to float
  %3706 = lshr i32 %3693, 8
  %3707 = and i32 %3706, 255
  %3708 = uitofp i32 %3707 to float
  %3709 = fmul fast float %3703, %3705
  %3710 = fadd fast float %3709, %3708
  %3711 = fmul fast float %3710, 0x3F70101000000000
  %3712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3713 = extractvalue %dx.types.ResRet.i32 %3712, 0
  %3714 = and i32 %3713, 512
  %3715 = icmp eq i32 %3714, 0
  br i1 %3715, label %3724, label %3716

; <label>:3716                                    ; preds = %3691
  %3717 = add i32 %44, 500
  %3718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3717, i32 undef)  ; BufferLoad(srv,index,wot)
  %3719 = extractvalue %dx.types.ResRet.i32 %3718, 0
  %3720 = add i32 %3719, 0
  %3721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3720, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3722 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3721, %dx.types.Handle %87, float %3496, float %3497, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3723 = extractvalue %dx.types.ResRet.f32 %3722, 0
  br label %3724

; <label>:3724                                    ; preds = %3716, %3691
  %3725 = phi float [ %3723, %3716 ], [ 1.000000e+00, %3691 ]
  %3726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3727 = extractvalue %dx.types.ResRet.i32 %3726, 0
  %3728 = and i32 %3727, 33554432
  %3729 = icmp eq i32 %3728, 0
  br i1 %3729, label %3836, label %3730

; <label>:3730                                    ; preds = %3724
  %3731 = add i32 %44, 272
  %3732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3731, i32 undef)  ; BufferLoad(srv,index,wot)
  %3733 = extractvalue %dx.types.ResRet.i32 %3732, 0
  %3734 = and i32 %3733, 65535
  %3735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3734)  ; LegacyF16ToF32(value)
  %3736 = lshr i32 %3733, 16
  %3737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3736)  ; LegacyF16ToF32(value)
  %3738 = add i32 %44, 276
  %3739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3738, i32 undef)  ; BufferLoad(srv,index,wot)
  %3740 = extractvalue %dx.types.ResRet.i32 %3739, 0
  %3741 = and i32 %3740, 65535
  %3742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3741)  ; LegacyF16ToF32(value)
  %3743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.i32 %3743, 0
  %3745 = lshr i32 %3744, 24
  %3746 = uitofp i32 %3745 to float
  %3747 = fmul fast float %3746, 0x3F70101020000000
  %3748 = and i32 %3744, 255
  %3749 = uitofp i32 %3748 to float
  %3750 = fmul fast float %3749, 0x3F70101020000000
  %3751 = lshr i32 %3744, 8
  %3752 = and i32 %3751, 255
  %3753 = uitofp i32 %3752 to float
  %3754 = fmul fast float %3753, 0x3F70101020000000
  %3755 = lshr i32 %3744, 16
  %3756 = and i32 %3755, 255
  %3757 = uitofp i32 %3756 to float
  %3758 = fmul fast float %3757, 0x3F70101020000000
  %3759 = add i32 %44, 268
  %3760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3759, i32 undef)  ; BufferLoad(srv,index,wot)
  %3761 = extractvalue %dx.types.ResRet.i32 %3760, 0
  %3762 = lshr i32 %3761, 24
  %3763 = uitofp i32 %3762 to float
  %3764 = fmul fast float %3763, 0x3F70101020000000
  %3765 = and i32 %3761, 255
  %3766 = uitofp i32 %3765 to float
  %3767 = fmul fast float %3766, 0x3F70101020000000
  %3768 = lshr i32 %3761, 8
  %3769 = and i32 %3768, 255
  %3770 = uitofp i32 %3769 to float
  %3771 = fmul fast float %3770, 0x3F70101020000000
  %3772 = lshr i32 %3761, 16
  %3773 = and i32 %3772, 255
  %3774 = uitofp i32 %3773 to float
  %3775 = fmul fast float %3774, 0x3F70101020000000
  %3776 = bitcast float %3700 to i32
  %3777 = ashr i32 %3776, 1
  %3778 = sub nsw i32 1597463174, %3777
  %3779 = bitcast i32 %3778 to float
  %3780 = fmul fast float %3700, 5.000000e-01
  %3781 = fmul fast float %3779, %3779
  %3782 = fmul fast float %3781, %3780
  %3783 = fsub fast float 1.500000e+00, %3782
  %3784 = fmul fast float %3779, %3700
  %3785 = fmul fast float %3784, %3783
  %3786 = bitcast float %3701 to i32
  %3787 = ashr i32 %3786, 1
  %3788 = sub nsw i32 1597463174, %3787
  %3789 = bitcast i32 %3788 to float
  %3790 = fmul fast float %3701, 5.000000e-01
  %3791 = fmul fast float %3789, %3789
  %3792 = fmul fast float %3791, %3790
  %3793 = fsub fast float 1.500000e+00, %3792
  %3794 = fmul fast float %3789, %3701
  %3795 = fmul fast float %3794, %3793
  %3796 = bitcast float %3702 to i32
  %3797 = ashr i32 %3796, 1
  %3798 = sub nsw i32 1597463174, %3797
  %3799 = bitcast i32 %3798 to float
  %3800 = fmul fast float %3702, 5.000000e-01
  %3801 = fmul fast float %3799, %3799
  %3802 = fmul fast float %3801, %3800
  %3803 = fsub fast float 1.500000e+00, %3802
  %3804 = fmul fast float %3799, %3702
  %3805 = fmul fast float %3804, %3803
  %3806 = fsub fast float %3785, %3767
  %3807 = fsub fast float %3795, %3771
  %3808 = fsub fast float %3805, %3775
  %3809 = fmul fast float %3806, %3735
  %3810 = fmul fast float %3807, %3737
  %3811 = fmul fast float %3808, %3742
  %3812 = fadd fast float %3809, %3750
  %3813 = fadd fast float %3810, %3754
  %3814 = fadd fast float %3811, %3758
  %3815 = call float @dx.op.unary.f32(i32 7, float %3812)  ; Saturate(value)
  %3816 = call float @dx.op.unary.f32(i32 7, float %3813)  ; Saturate(value)
  %3817 = call float @dx.op.unary.f32(i32 7, float %3814)  ; Saturate(value)
  %3818 = fmul fast float %3815, %3815
  %3819 = fmul fast float %3816, %3816
  %3820 = fmul fast float %3817, %3817
  %3821 = fsub fast float %3818, %3700
  %3822 = fsub fast float %3819, %3701
  %3823 = fsub fast float %3820, %3702
  %3824 = fmul fast float %3821, %3725
  %3825 = fmul fast float %3822, %3725
  %3826 = fmul fast float %3823, %3725
  %3827 = fadd fast float %3824, %3700
  %3828 = fadd fast float %3825, %3701
  %3829 = fadd fast float %3826, %3702
  %3830 = fadd fast float %3747, %3711
  %3831 = fsub fast float %3830, %3764
  %3832 = call float @dx.op.unary.f32(i32 7, float %3831)  ; Saturate(value)
  %3833 = fsub fast float %3832, %3711
  %3834 = fmul fast float %3833, %3725
  %3835 = fadd fast float %3834, %3711
  br label %3889

; <label>:3836                                    ; preds = %3724
  %3837 = and i32 %3727, 134217728
  %3838 = icmp eq i32 %3837, 0
  br i1 %3838, label %3873, label %3839

; <label>:3839                                    ; preds = %3836
  %3840 = call float @dx.op.unary.f32(i32 24, float %396)  ; Sqrt(value)
  %3841 = call float @dx.op.unary.f32(i32 24, float %400)  ; Sqrt(value)
  %3842 = call float @dx.op.unary.f32(i32 24, float %404)  ; Sqrt(value)
  %3843 = fadd fast float %3840, -5.000000e-01
  %3844 = fadd fast float %3841, -5.000000e-01
  %3845 = fadd fast float %3842, -5.000000e-01
  %3846 = fmul fast float %3843, %3725
  %3847 = fmul fast float %3844, %3725
  %3848 = fmul fast float %3845, %3725
  %3849 = fadd fast float %3846, 5.000000e-01
  %3850 = fadd fast float %3847, 5.000000e-01
  %3851 = fadd fast float %3848, 5.000000e-01
  %3852 = call float @dx.op.unary.f32(i32 24, float %3700)  ; Sqrt(value)
  %3853 = call float @dx.op.unary.f32(i32 24, float %3701)  ; Sqrt(value)
  %3854 = call float @dx.op.unary.f32(i32 24, float %3702)  ; Sqrt(value)
  %3855 = fmul fast float %3849, 2.000000e+00
  %3856 = fsub fast float 1.000000e+00, %3855
  %3857 = fmul fast float %3856, %3852
  %3858 = fadd fast float %3857, %3855
  %3859 = fmul fast float %3858, %3852
  %3860 = fmul fast float %3850, 2.000000e+00
  %3861 = fsub fast float 1.000000e+00, %3860
  %3862 = fmul fast float %3861, %3853
  %3863 = fadd fast float %3862, %3860
  %3864 = fmul fast float %3863, %3853
  %3865 = fmul fast float %3851, 2.000000e+00
  %3866 = fsub fast float 1.000000e+00, %3865
  %3867 = fmul fast float %3866, %3854
  %3868 = fadd fast float %3867, %3865
  %3869 = fmul fast float %3868, %3854
  %3870 = fmul fast float %3859, %3859
  %3871 = fmul fast float %3864, %3864
  %3872 = fmul fast float %3869, %3869
  br label %3889

; <label>:3873                                    ; preds = %3836
  %3874 = fmul fast float %396, %396
  %3875 = fmul fast float %400, %400
  %3876 = fmul fast float %404, %404
  %3877 = fadd fast float %3874, -1.000000e+00
  %3878 = fadd fast float %3875, -1.000000e+00
  %3879 = fadd fast float %3876, -1.000000e+00
  %3880 = fmul fast float %3725, %3877
  %3881 = fmul fast float %3725, %3878
  %3882 = fmul fast float %3725, %3879
  %3883 = fadd fast float %3880, 1.000000e+00
  %3884 = fadd fast float %3881, 1.000000e+00
  %3885 = fadd fast float %3882, 1.000000e+00
  %3886 = fmul fast float %3883, %3700
  %3887 = fmul fast float %3884, %3701
  %3888 = fmul fast float %3885, %3702
  br label %3889

; <label>:3889                                    ; preds = %3873, %3839, %3730, %3686
  %3890 = phi float [ %3835, %3730 ], [ %3711, %3839 ], [ %3711, %3873 ], [ 0x3FA23C0BE0000000, %3686 ]
  %3891 = phi float [ %3827, %3730 ], [ %3870, %3839 ], [ %3886, %3873 ], [ 1.000000e+00, %3686 ]
  %3892 = phi float [ %3828, %3730 ], [ %3871, %3839 ], [ %3887, %3873 ], [ 1.000000e+00, %3686 ]
  %3893 = phi float [ %3829, %3730 ], [ %3872, %3839 ], [ %3888, %3873 ], [ 1.000000e+00, %3686 ]
  %3894 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3895 = extractvalue %dx.types.CBufRet.i32 %3894, 1
  %3896 = and i32 %3895, 1
  %3897 = icmp ne i32 %3896, 0
  %3898 = add i32 %44, 356
  %3899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3898, i32 undef)  ; BufferLoad(srv,index,wot)
  %3900 = extractvalue %dx.types.ResRet.i32 %3899, 0
  %3901 = and i32 %3900, 32
  %3902 = icmp ne i32 %3901, 0
  %3903 = and i1 %3897, %3902
  %3904 = select i1 %3903, float 1.000000e+00, float %3891
  %3905 = select i1 %3903, float 0x3FD3333340000000, float %3892
  %3906 = select i1 %3903, float 0x3FD3333340000000, float %3893
  %3907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3908 = extractvalue %dx.types.ResRet.i32 %3907, 0
  %3909 = and i32 %3908, 32
  %3910 = icmp eq i32 %3909, 0
  br i1 %3910, label %3983, label %3911

; <label>:3911                                    ; preds = %3889
  %3912 = add i32 %44, 140
  %3913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3912, i32 undef)  ; BufferLoad(srv,index,wot)
  %3914 = extractvalue %dx.types.ResRet.i32 %3913, 0
  %3915 = add i32 %44, 436
  %3916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3917 = extractvalue %dx.types.ResRet.i32 %3916, 0
  %3918 = add i32 %3917, 0
  %3919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3918, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3920 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3919, %dx.types.Handle %86, float %3496, float %3497, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3921 = extractvalue %dx.types.ResRet.f32 %3920, 0
  %3922 = extractvalue %dx.types.ResRet.f32 %3920, 1
  %3923 = extractvalue %dx.types.ResRet.f32 %3920, 2
  %3924 = extractvalue %dx.types.ResRet.f32 %3920, 3
  %3925 = and i32 %3914, 255
  %3926 = uitofp i32 %3925 to float
  %3927 = lshr i32 %3914, 8
  %3928 = and i32 %3927, 255
  %3929 = uitofp i32 %3928 to float
  %3930 = lshr i32 %3914, 16
  %3931 = and i32 %3930, 255
  %3932 = uitofp i32 %3931 to float
  %3933 = fmul fast float %3932, 0x3F70101000000000
  %3934 = fmul fast float %3921, %3926
  %3935 = fadd fast float %3934, %3929
  %3936 = fmul fast float %3935, 0x3F70101000000000
  %3937 = fadd fast float %3922, -5.000000e-01
  %3938 = fadd fast float %3924, -5.000000e-01
  %3939 = fmul fast float %3937, %3933
  %3940 = fmul fast float %3938, %3933
  %3941 = fadd fast float %3939, 5.000000e-01
  %3942 = fadd fast float %3940, 5.000000e-01
  %3943 = fmul fast float %3941, 2.000000e+00
  %3944 = fadd fast float %3943, -1.000000e+00
  %3945 = fmul fast float %3942, 2.000000e+00
  %3946 = fadd fast float %3945, -1.000000e+00
  %3947 = fadd fast float %3944, %3946
  %3948 = fmul fast float %3947, 5.000000e-01
  %3949 = fsub fast float %3944, %3946
  %3950 = fmul fast float %3949, 5.000000e-01
  %3951 = call float @dx.op.unary.f32(i32 6, float %3948)  ; FAbs(value)
  %3952 = fsub fast float 1.000000e+00, %3951
  %3953 = call float @dx.op.unary.f32(i32 6, float %3950)  ; FAbs(value)
  %3954 = fsub fast float %3952, %3953
  %3955 = call float @dx.op.dot3.f32(i32 55, float %3948, float %3950, float %3954, float %3948, float %3950, float %3954)  ; Dot3(ax,ay,az,bx,by,bz)
  %3956 = call float @dx.op.unary.f32(i32 25, float %3955)  ; Rsqrt(value)
  %3957 = fmul fast float %3948, %3956
  %3958 = fmul fast float %3950, %3956
  %3959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3960 = extractvalue %dx.types.ResRet.i32 %3959, 0
  %3961 = and i32 %3960, 67108864
  %3962 = icmp eq i32 %3961, 0
  br i1 %3962, label %3979, label %3963

; <label>:3963                                    ; preds = %3911
  %3964 = add i32 %44, 328
  %3965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %3966 = extractvalue %dx.types.ResRet.i32 %3965, 0
  %3967 = and i32 %3966, 65535
  %3968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3967)  ; LegacyF16ToF32(value)
  %3969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3970 = extractvalue %dx.types.ResRet.i32 %3969, 0
  %3971 = and i32 %3970, 65535
  %3972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3971)  ; LegacyF16ToF32(value)
  %3973 = lshr i32 %3966, 16
  %3974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3973)  ; LegacyF16ToF32(value)
  %3975 = fsub fast float %3936, %3974
  %3976 = fmul fast float %3975, %3968
  %3977 = fadd fast float %3976, %3972
  %3978 = call float @dx.op.unary.f32(i32 7, float %3977)  ; Saturate(value)
  br label %3979

; <label>:3979                                    ; preds = %3963, %3911
  %3980 = phi float [ %3978, %3963 ], [ %3936, %3911 ]
  %3981 = call float @dx.op.dot2.f32(i32 54, float %3957, float %3958, float %3400, float %3401)  ; Dot2(ax,ay,bx,by)
  %3982 = call float @dx.op.dot2.f32(i32 54, float %3957, float %3958, float %3402, float %3403)  ; Dot2(ax,ay,bx,by)
  br label %3983

; <label>:3983                                    ; preds = %3979, %3889
  %3984 = phi float [ %3980, %3979 ], [ 0x3FD6666660000000, %3889 ]
  %3985 = phi float [ %3981, %3979 ], [ 0.000000e+00, %3889 ]
  %3986 = phi float [ %3982, %3979 ], [ 0.000000e+00, %3889 ]
  %3987 = phi float [ %3923, %3979 ], [ 1.000000e+00, %3889 ]
  %3988 = add i32 %44, 208
  %3989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3988, i32 undef)  ; BufferLoad(srv,index,wot)
  %3990 = extractvalue %dx.types.ResRet.i32 %3989, 0
  %3991 = lshr i32 %3990, 22
  %3992 = shl nuw nsw i32 %3991, 5
  %3993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3992)  ; LegacyF16ToF32(value)
  %3994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3995 = extractvalue %dx.types.ResRet.i32 %3994, 0
  %3996 = and i32 %3995, 64
  %3997 = icmp eq i32 %3996, 0
  br i1 %3997, label %4031, label %3998

; <label>:3998                                    ; preds = %3983
  %3999 = add i32 %44, 452
  %4000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3999, i32 undef)  ; BufferLoad(srv,index,wot)
  %4001 = extractvalue %dx.types.ResRet.i32 %4000, 0
  %4002 = add i32 %4001, 0
  %4003 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4002, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4005 = extractvalue %dx.types.ResRet.i32 %4004, 0
  %4006 = and i32 %4005, 131072
  %4007 = icmp eq i32 %4006, 0
  %4008 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4003, %dx.types.Handle %86, float %3496, float %3497, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4009 = extractvalue %dx.types.ResRet.f32 %4008, 0
  %4010 = extractvalue %dx.types.ResRet.f32 %4008, 1
  %4011 = extractvalue %dx.types.ResRet.f32 %4008, 2
  %4012 = fmul fast float %4009, %384
  %4013 = fmul fast float %4010, %387
  %4014 = fmul fast float %4011, %390
  br i1 %4007, label %4021, label %4015

; <label>:4015                                    ; preds = %3998
  %4016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.f32 %4016, 0
  %4018 = fmul fast float %4017, %4012
  %4019 = fmul fast float %4017, %4013
  %4020 = fmul fast float %4017, %4014
  br label %4021

; <label>:4021                                    ; preds = %4015, %3998
  %4022 = phi float [ %4018, %4015 ], [ %4012, %3998 ]
  %4023 = phi float [ %4019, %4015 ], [ %4013, %3998 ]
  %4024 = phi float [ %4020, %4015 ], [ %4014, %3998 ]
  %4025 = fmul fast float %4022, %3993
  %4026 = select i1 %238, float %4025, float %4022
  %4027 = call float @dx.op.dot3.f32(i32 55, float %4026, float %4023, float %4024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4028 = select i1 %238, float 0.000000e+00, float %4022
  %4029 = select i1 %238, float %4027, float %4023
  %4030 = select i1 %238, float 0.000000e+00, float %4024
  br label %4031

; <label>:4031                                    ; preds = %4021, %3983
  %4032 = phi float [ %4028, %4021 ], [ 0.000000e+00, %3983 ]
  %4033 = phi float [ %4029, %4021 ], [ 0.000000e+00, %3983 ]
  %4034 = phi float [ %4030, %4021 ], [ 0.000000e+00, %3983 ]
  %4035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4036 = extractvalue %dx.types.ResRet.i32 %4035, 0
  %4037 = and i32 %4036, 1024
  %4038 = icmp eq i32 %4037, 0
  br i1 %4038, label %4069, label %4039

; <label>:4039                                    ; preds = %4031
  %4040 = add i32 %44, 200
  %4041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.i32 %4041, 0
  %4043 = and i32 %4042, 255
  %4044 = uitofp i32 %4043 to float
  %4045 = fmul fast float %4044, 0x3F70101020000000
  %4046 = lshr i32 %4042, 8
  %4047 = and i32 %4046, 255
  %4048 = uitofp i32 %4047 to float
  %4049 = fmul fast float %4048, 0x3F70101020000000
  %4050 = lshr i32 %4042, 16
  %4051 = and i32 %4050, 255
  %4052 = uitofp i32 %4051 to float
  %4053 = fmul fast float %4052, 0x3F70101020000000
  %4054 = fmul fast float %4045, %4045
  %4055 = fmul fast float %4049, %4049
  %4056 = fmul fast float %4053, %4053
  %4057 = add i32 %44, 516
  %4058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4057, i32 undef)  ; BufferLoad(srv,index,wot)
  %4059 = extractvalue %dx.types.ResRet.i32 %4058, 0
  %4060 = add i32 %4059, 0
  %4061 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4060, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4062 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4061, %dx.types.Handle %87, float %3496, float %3497, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4063 = extractvalue %dx.types.ResRet.f32 %4062, 0
  %4064 = extractvalue %dx.types.ResRet.f32 %4062, 1
  %4065 = extractvalue %dx.types.ResRet.f32 %4062, 2
  %4066 = fmul fast float %4054, %4063
  %4067 = fmul fast float %4055, %4064
  %4068 = fmul fast float %4056, %4065
  br label %4069

; <label>:4069                                    ; preds = %4039, %4031
  %4070 = phi float [ %4066, %4039 ], [ 0.000000e+00, %4031 ]
  %4071 = phi float [ %4067, %4039 ], [ 0.000000e+00, %4031 ]
  %4072 = phi float [ %4068, %4039 ], [ 0.000000e+00, %4031 ]
  %4073 = fcmp fast ogt float %4070, 0.000000e+00
  %4074 = fcmp fast ogt float %4071, 0.000000e+00
  %4075 = fcmp fast ogt float %4072, 0.000000e+00
  %4076 = call float @dx.op.unary.f32(i32 23, float %4070)  ; Log(value)
  %4077 = call float @dx.op.unary.f32(i32 23, float %4071)  ; Log(value)
  %4078 = call float @dx.op.unary.f32(i32 23, float %4072)  ; Log(value)
  %4079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3988, i32 undef)  ; BufferLoad(srv,index,wot)
  %4080 = extractvalue %dx.types.ResRet.i32 %4079, 0
  %4081 = lshr i32 %4080, 7
  %4082 = and i32 %4081, 32752
  %4083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4082)  ; LegacyF16ToF32(value)
  %4084 = fmul fast float %4076, 0xBFE62E4300000000
  %4085 = fmul fast float %4084, %4083
  %4086 = fmul fast float %4077, 0xBFE62E4300000000
  %4087 = fmul fast float %4086, %4083
  %4088 = fmul fast float %4078, 0xBFE62E4300000000
  %4089 = fmul fast float %4088, %4083
  %4090 = select i1 %4073, float %4085, float 1.270000e+02
  %4091 = select i1 %4074, float %4087, float 1.270000e+02
  %4092 = select i1 %4075, float %4089, float 1.270000e+02
  %4093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4094 = extractvalue %dx.types.ResRet.i32 %4093, 0
  %4095 = and i32 %4094, 10240
  %4096 = icmp eq i32 %4095, 0
  br i1 %4096, label %4141, label %4097

; <label>:4097                                    ; preds = %4069
  %4098 = add i32 %44, 532
  %4099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4098, i32 undef)  ; BufferLoad(srv,index,wot)
  %4100 = extractvalue %dx.types.ResRet.i32 %4099, 0
  %4101 = add i32 %4100, 0
  %4102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4101, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4103 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4102, %dx.types.Handle %87, float %3496, float %3497, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4104 = extractvalue %dx.types.ResRet.f32 %4103, 1
  %4105 = extractvalue %dx.types.ResRet.f32 %4103, 3
  %4106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4107 = extractvalue %dx.types.ResRet.i32 %4106, 0
  %4108 = and i32 %4107, 1048576
  %4109 = icmp ne i32 %4108, 0
  %4110 = and i32 %4107, 8192
  %4111 = icmp eq i32 %4110, 0
  br i1 %4111, label %4127, label %4112

; <label>:4112                                    ; preds = %4097
  %4113 = extractvalue %dx.types.ResRet.f32 %4103, 2
  %4114 = select i1 %4109, float %4113, float %4104
  %4115 = extractvalue %dx.types.ResRet.f32 %4103, 0
  %4116 = select i1 %4109, float %4115, float %4104
  %4117 = add i32 %44, 144
  %4118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4117, i32 undef)  ; BufferLoad(srv,index,wot)
  %4119 = extractvalue %dx.types.ResRet.i32 %4118, 0
  %4120 = lshr i32 %4119, 16
  %4121 = and i32 %4120, 255
  %4122 = uitofp i32 %4121 to float
  %4123 = fmul fast float %4122, 0x3F80101020000000
  %4124 = fmul fast float %4123, %4116
  %4125 = fmul fast float %4123, %4104
  %4126 = fmul fast float %4123, %4114
  br label %4127

; <label>:4127                                    ; preds = %4112, %4097
  %4128 = phi float [ %4124, %4112 ], [ 0.000000e+00, %4097 ]
  %4129 = phi float [ %4125, %4112 ], [ 0.000000e+00, %4097 ]
  %4130 = phi float [ %4126, %4112 ], [ 0.000000e+00, %4097 ]
  %4131 = and i32 %4107, 2048
  %4132 = icmp eq i32 %4131, 0
  br i1 %4132, label %4141, label %4133

; <label>:4133                                    ; preds = %4127
  %4134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3988, i32 undef)  ; BufferLoad(srv,index,wot)
  %4135 = extractvalue %dx.types.ResRet.i32 %4134, 0
  %4136 = shl i32 %4135, 4
  %4137 = and i32 %4136, 32752
  %4138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4137)  ; LegacyF16ToF32(value)
  %4139 = fmul fast float %4138, %4105
  %4140 = call float @dx.op.binary.f32(i32 35, float %4139, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4141

; <label>:4141                                    ; preds = %4133, %4127, %4069
  %4142 = phi float [ %4128, %4133 ], [ %4128, %4127 ], [ 0.000000e+00, %4069 ]
  %4143 = phi float [ %4129, %4133 ], [ %4129, %4127 ], [ 0.000000e+00, %4069 ]
  %4144 = phi float [ %4130, %4133 ], [ %4130, %4127 ], [ 0.000000e+00, %4069 ]
  %4145 = phi float [ %4140, %4133 ], [ 0x3F70101020000000, %4127 ], [ 0x3F70101020000000, %4069 ]
  %4146 = add i32 %44, 144
  %4147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4146, i32 undef)  ; BufferLoad(srv,index,wot)
  %4148 = extractvalue %dx.types.ResRet.i32 %4147, 0
  %4149 = and i32 %4148, 255
  %4150 = uitofp i32 %4149 to float
  %4151 = lshr i32 %4148, 8
  %4152 = and i32 %4151, 255
  %4153 = uitofp i32 %4152 to float
  %4154 = call float @dx.op.dot3.f32(i32 55, float %3904, float %3905, float %3906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4155 = fmul fast float %4153, %4154
  %4156 = fadd fast float %4155, %4150
  %4157 = fmul fast float %4156, 0x3F70101020000000
  %4158 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  br i1 %3388, label %4159, label %4194

; <label>:4159                                    ; preds = %4141
  %4160 = fmul fast float %4145, 2.000000e+00
  %4161 = fcmp fast olt float %4090, 1.270000e+02
  %4162 = fcmp fast olt float %4091, 1.270000e+02
  %4163 = fcmp fast olt float %4092, 1.270000e+02
  %4164 = fmul fast float %4090, 0xBFF7154760000000
  %4165 = fmul fast float %4164, %4160
  %4166 = fmul fast float %4091, 0xBFF7154760000000
  %4167 = fmul fast float %4166, %4160
  %4168 = fmul fast float %4092, 0xBFF7154760000000
  %4169 = fmul fast float %4168, %4160
  %4170 = call float @dx.op.unary.f32(i32 21, float %4165)  ; Exp(value)
  %4171 = call float @dx.op.unary.f32(i32 21, float %4167)  ; Exp(value)
  %4172 = call float @dx.op.unary.f32(i32 21, float %4169)  ; Exp(value)
  %4173 = call float @dx.op.unary.f32(i32 7, float %4170)  ; Saturate(value)
  %4174 = call float @dx.op.unary.f32(i32 7, float %4171)  ; Saturate(value)
  %4175 = call float @dx.op.unary.f32(i32 7, float %4172)  ; Saturate(value)
  %4176 = fadd fast float %4173, -1.000000e+00
  %4177 = select i1 %4161, float %4176, float -1.000000e+00
  %4178 = fadd fast float %4174, -1.000000e+00
  %4179 = select i1 %4162, float %4178, float -1.000000e+00
  %4180 = fadd fast float %4175, -1.000000e+00
  %4181 = select i1 %4163, float %4180, float -1.000000e+00
  %4182 = fmul fast float %4177, %3684
  %4183 = fmul fast float %4179, %3684
  %4184 = fmul fast float %4181, %3684
  %4185 = fadd fast float %4182, 1.000000e+00
  %4186 = fadd fast float %4183, 1.000000e+00
  %4187 = fadd fast float %4184, 1.000000e+00
  %4188 = fmul fast float %4185, %3370
  %4189 = fmul fast float %4186, %3371
  %4190 = fmul fast float %4187, %3372
  %4191 = fmul fast float %4185, %3373
  %4192 = fmul fast float %4186, %3374
  %4193 = fmul fast float %4187, %3375
  br label %4194

; <label>:4194                                    ; preds = %4159, %4141
  %4195 = phi float [ %4188, %4159 ], [ %3370, %4141 ]
  %4196 = phi float [ %4189, %4159 ], [ %3371, %4141 ]
  %4197 = phi float [ %4190, %4159 ], [ %3372, %4141 ]
  %4198 = phi float [ %4191, %4159 ], [ %3373, %4141 ]
  %4199 = phi float [ %4192, %4159 ], [ %3374, %4141 ]
  %4200 = phi float [ %4193, %4159 ], [ %3375, %4141 ]
  %4201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4202 = extractvalue %dx.types.ResRet.i32 %4201, 0
  %4203 = and i32 %4202, 3
  %4204 = icmp eq i32 %4203, 3
  br i1 %4204, label %4283, label %4205

; <label>:4205                                    ; preds = %4194
  %4206 = and i32 %4202, 16
  %4207 = icmp ne i32 %4206, 0
  %4208 = select i1 %4207, float %3684, float 0.000000e+00
  %4209 = icmp eq i32 %4203, 0
  br i1 %4209, label %4210, label %4238

; <label>:4210                                    ; preds = %4205
  %4211 = and i32 %4202, 64
  %4212 = icmp ne i32 %4211, 0
  %4213 = select i1 %4212, float %3684, float 0.000000e+00
  %4214 = fsub fast float %3904, %4195
  %4215 = fsub fast float %3905, %4196
  %4216 = fsub fast float %3906, %4197
  %4217 = fmul fast float %4208, %4214
  %4218 = fmul fast float %4208, %4215
  %4219 = fmul fast float %4208, %4216
  %4220 = fadd fast float %4217, %4195
  %4221 = fadd fast float %4218, %4196
  %4222 = fadd fast float %4219, %4197
  %4223 = fsub fast float %3890, %3382
  %4224 = fmul fast float %4208, %4223
  %4225 = fadd fast float %4224, %3382
  %4226 = fsub fast float %4032, %4198
  %4227 = fsub fast float %4033, %4199
  %4228 = fsub fast float %4034, %4200
  %4229 = fmul fast float %4213, %4226
  %4230 = fmul fast float %4213, %4227
  %4231 = fmul fast float %4213, %4228
  %4232 = fadd fast float %4229, %4198
  %4233 = fadd fast float %4230, %4199
  %4234 = fadd fast float %4231, %4200
  %4235 = fsub fast float %4158, %3386
  %4236 = fmul fast float %4208, %4235
  %4237 = fadd fast float %4236, %3386
  br label %4283

; <label>:4238                                    ; preds = %4205
  %4239 = icmp eq i32 %4203, 1
  br i1 %4239, label %4240, label %4253

; <label>:4240                                    ; preds = %4238
  %4241 = fadd fast float %3904, -1.000000e+00
  %4242 = fadd fast float %3905, -1.000000e+00
  %4243 = fadd fast float %3906, -1.000000e+00
  %4244 = fmul fast float %4208, %4241
  %4245 = fmul fast float %4208, %4242
  %4246 = fmul fast float %4208, %4243
  %4247 = fadd fast float %4244, 1.000000e+00
  %4248 = fadd fast float %4245, 1.000000e+00
  %4249 = fadd fast float %4246, 1.000000e+00
  %4250 = fmul fast float %4247, %4195
  %4251 = fmul fast float %4248, %4196
  %4252 = fmul fast float %4249, %4197
  br label %4283

; <label>:4253                                    ; preds = %4238
  %4254 = icmp eq i32 %4203, 2
  br i1 %4254, label %4255, label %4283

; <label>:4255                                    ; preds = %4253
  %4256 = call float @dx.op.unary.f32(i32 24, float %3904)  ; Sqrt(value)
  %4257 = call float @dx.op.unary.f32(i32 24, float %3905)  ; Sqrt(value)
  %4258 = call float @dx.op.unary.f32(i32 24, float %3906)  ; Sqrt(value)
  %4259 = fadd fast float %4256, -5.000000e-01
  %4260 = fadd fast float %4257, -5.000000e-01
  %4261 = fadd fast float %4258, -5.000000e-01
  %4262 = fmul fast float %4259, %4208
  %4263 = fmul fast float %4260, %4208
  %4264 = fmul fast float %4261, %4208
  %4265 = fadd fast float %4262, 5.000000e-01
  %4266 = fadd fast float %4263, 5.000000e-01
  %4267 = fadd fast float %4264, 5.000000e-01
  %4268 = fmul fast float %4265, 2.000000e+00
  %4269 = fsub fast float 1.000000e+00, %4268
  %4270 = fmul fast float %4269, %4195
  %4271 = fadd fast float %4270, %4268
  %4272 = fmul fast float %4271, %4195
  %4273 = fmul fast float %4266, 2.000000e+00
  %4274 = fsub fast float 1.000000e+00, %4273
  %4275 = fmul fast float %4274, %4196
  %4276 = fadd fast float %4275, %4273
  %4277 = fmul fast float %4276, %4196
  %4278 = fmul fast float %4267, 2.000000e+00
  %4279 = fsub fast float 1.000000e+00, %4278
  %4280 = fmul fast float %4279, %4197
  %4281 = fadd fast float %4280, %4278
  %4282 = fmul fast float %4281, %4197
  br label %4283

; <label>:4283                                    ; preds = %4255, %4253, %4240, %4210, %4194
  %4284 = phi float [ %4195, %4194 ], [ %4272, %4255 ], [ %4195, %4253 ], [ %4250, %4240 ], [ %4220, %4210 ]
  %4285 = phi float [ %4196, %4194 ], [ %4277, %4255 ], [ %4196, %4253 ], [ %4251, %4240 ], [ %4221, %4210 ]
  %4286 = phi float [ %4197, %4194 ], [ %4282, %4255 ], [ %4197, %4253 ], [ %4252, %4240 ], [ %4222, %4210 ]
  %4287 = phi float [ %4198, %4194 ], [ %4198, %4255 ], [ %4198, %4253 ], [ %4198, %4240 ], [ %4232, %4210 ]
  %4288 = phi float [ %4199, %4194 ], [ %4199, %4255 ], [ %4199, %4253 ], [ %4199, %4240 ], [ %4233, %4210 ]
  %4289 = phi float [ %4200, %4194 ], [ %4200, %4255 ], [ %4200, %4253 ], [ %4200, %4240 ], [ %4234, %4210 ]
  %4290 = phi float [ %3382, %4194 ], [ %3382, %4255 ], [ %3382, %4253 ], [ %3382, %4240 ], [ %4225, %4210 ]
  %4291 = phi float [ %3386, %4194 ], [ %3386, %4255 ], [ %3386, %4253 ], [ %3386, %4240 ], [ %4237, %4210 ]
  %4292 = and i32 %4202, 12
  %4293 = icmp eq i32 %4292, 12
  br i1 %4293, label %4424, label %4294

; <label>:4294                                    ; preds = %4283
  %4295 = and i32 %4202, 2097184
  %4296 = icmp eq i32 %4295, 2097184
  %4297 = select i1 %4296, float %3684, float 0.000000e+00
  %4298 = and i32 %4202, 4194336
  %4299 = icmp eq i32 %4298, 4194336
  %4300 = select i1 %4299, float %3684, float 0.000000e+00
  %4301 = and i32 %4202, 8388640
  %4302 = icmp eq i32 %4301, 8388640
  %4303 = select i1 %4302, float %3684, float 0.000000e+00
  %4304 = and i32 %4202, 1024
  %4305 = icmp ne i32 %4304, 0
  %4306 = select i1 %4305, float %3684, float 0.000000e+00
  %4307 = and i32 %4202, 2048
  %4308 = icmp ne i32 %4307, 0
  %4309 = select i1 %4308, float %3684, float 0.000000e+00
  %4310 = and i32 %4202, 8192
  %4311 = icmp ne i32 %4310, 0
  %4312 = select i1 %4311, float %3684, float 0.000000e+00
  %4313 = icmp eq i32 %4292, 0
  br i1 %4313, label %4314, label %4348

; <label>:4314                                    ; preds = %4294
  %4315 = fsub fast float %3985, %3368
  %4316 = fsub fast float %3986, %3369
  %4317 = fmul fast float %4297, %4315
  %4318 = fmul fast float %4297, %4316
  %4319 = fadd fast float %4317, %3368
  %4320 = fadd fast float %4318, %3369
  %4321 = fsub fast float %3987, %3384
  %4322 = fmul fast float %4300, %4321
  %4323 = fadd fast float %4322, %3384
  %4324 = fsub fast float %3984, %3383
  %4325 = fmul fast float %4303, %4324
  %4326 = fadd fast float %4325, %3383
  %4327 = fsub fast float %4090, %3379
  %4328 = fsub fast float %4091, %3380
  %4329 = fsub fast float %4092, %3381
  %4330 = fmul fast float %4306, %4327
  %4331 = fmul fast float %4306, %4328
  %4332 = fmul fast float %4306, %4329
  %4333 = fadd fast float %4330, %3379
  %4334 = fadd fast float %4331, %3380
  %4335 = fadd fast float %4332, %3381
  %4336 = fsub fast float %4145, %3385
  %4337 = fmul fast float %4309, %4336
  %4338 = fadd fast float %4337, %3385
  %4339 = fsub fast float %4142, %3376
  %4340 = fsub fast float %4143, %3377
  %4341 = fsub fast float %4144, %3378
  %4342 = fmul fast float %4312, %4339
  %4343 = fmul fast float %4312, %4340
  %4344 = fmul fast float %4312, %4341
  %4345 = fadd fast float %4342, %3376
  %4346 = fadd fast float %4343, %3377
  %4347 = fadd fast float %4344, %3378
  br label %4424

; <label>:4348                                    ; preds = %4294
  %4349 = icmp eq i32 %4292, 4
  br i1 %4349, label %4350, label %4396

; <label>:4350                                    ; preds = %4348
  %4351 = fmul fast float %4297, %3985
  %4352 = fmul fast float %4297, %3986
  %4353 = fadd fast float %4351, %3368
  %4354 = fadd fast float %4352, %3369
  %4355 = call float @dx.op.binary.f32(i32 36, float %3384, float %3987)  ; FMin(a,b)
  %4356 = fsub fast float %4355, %3384
  %4357 = fmul fast float %4356, %4300
  %4358 = fadd fast float %4357, %3384
  %4359 = fadd fast float %3984, %3383
  %4360 = fmul fast float %4359, 0x3FF337FAE0000000
  %4361 = fmul fast float %3383, %3383
  %4362 = fmul fast float %3984, %3984
  %4363 = fadd fast float %4362, %4361
  %4364 = fmul fast float %4363, 0x3FE5152B00000000
  %4365 = fmul fast float %3383, 0xBFCC1F85E0000000
  %4366 = fmul fast float %4365, %3984
  %4367 = fadd fast float %4366, 0xBFE1363700000000
  %4368 = fadd fast float %4367, %4360
  %4369 = fsub fast float %4368, %4364
  %4370 = fmul fast float %4359, 0x3FBA6F0D00000000
  %4371 = fmul fast float %4363, 0x3FD0432880000000
  %4372 = fmul fast float %3383, 0xBFEF110800000000
  %4373 = fmul fast float %4372, %3984
  %4374 = fadd fast float %4373, 1.000000e+00
  %4375 = fsub fast float %4374, %4370
  %4376 = fadd fast float %4375, %4371
  %4377 = fdiv fast float %4369, %4376
  %4378 = call float @dx.op.unary.f32(i32 7, float %4377)  ; Saturate(value)
  %4379 = fsub fast float %4378, %3383
  %4380 = fmul fast float %4379, %4303
  %4381 = fadd fast float %4380, %3383
  %4382 = fmul fast float %4306, %4090
  %4383 = fmul fast float %4306, %4091
  %4384 = fmul fast float %4306, %4092
  %4385 = fadd fast float %4382, %3379
  %4386 = fadd fast float %4383, %3380
  %4387 = fadd fast float %4384, %3381
  %4388 = fmul fast float %4309, %4145
  %4389 = fadd fast float %4388, %3385
  %4390 = fmul fast float %4312, %4142
  %4391 = fmul fast float %4312, %4143
  %4392 = fmul fast float %4312, %4144
  %4393 = fadd fast float %4390, %3376
  %4394 = fadd fast float %4391, %3377
  %4395 = fadd fast float %4392, %3378
  br label %4424

; <label>:4396                                    ; preds = %4348
  %4397 = icmp eq i32 %4292, 8
  br i1 %4397, label %4398, label %4424

; <label>:4398                                    ; preds = %4396
  %4399 = fmul fast float %4297, %3985
  %4400 = fmul fast float %4297, %3986
  %4401 = fadd fast float %4399, %3368
  %4402 = fadd fast float %4400, %3369
  %4403 = call float @dx.op.binary.f32(i32 36, float %3384, float %3987)  ; FMin(a,b)
  %4404 = fsub fast float %4403, %3384
  %4405 = fmul fast float %4404, %4300
  %4406 = fadd fast float %4405, %3384
  %4407 = fsub fast float %3984, %3383
  %4408 = fmul fast float %4303, %4407
  %4409 = fadd fast float %4408, %3383
  %4410 = fmul fast float %4306, %4090
  %4411 = fmul fast float %4306, %4091
  %4412 = fmul fast float %4306, %4092
  %4413 = fadd fast float %4410, %3379
  %4414 = fadd fast float %4411, %3380
  %4415 = fadd fast float %4412, %3381
  %4416 = fmul fast float %4309, %4145
  %4417 = fadd fast float %4416, %3385
  %4418 = fmul fast float %4312, %4142
  %4419 = fmul fast float %4312, %4143
  %4420 = fmul fast float %4312, %4144
  %4421 = fadd fast float %4418, %3376
  %4422 = fadd fast float %4419, %3377
  %4423 = fadd fast float %4420, %3378
  br label %4424

; <label>:4424                                    ; preds = %4398, %4396, %4350, %4314, %4283, %3683, %3387, %3367
  %4425 = phi float [ %3368, %4283 ], [ %3368, %3683 ], [ %3368, %3367 ], [ %3368, %3387 ], [ %4319, %4314 ], [ %4353, %4350 ], [ %3368, %4396 ], [ %4401, %4398 ]
  %4426 = phi float [ %3369, %4283 ], [ %3369, %3683 ], [ %3369, %3367 ], [ %3369, %3387 ], [ %4320, %4314 ], [ %4354, %4350 ], [ %3369, %4396 ], [ %4402, %4398 ]
  %4427 = phi float [ %4284, %4283 ], [ %3370, %3683 ], [ %3370, %3367 ], [ %3370, %3387 ], [ %4284, %4314 ], [ %4284, %4350 ], [ %4284, %4396 ], [ %4284, %4398 ]
  %4428 = phi float [ %4285, %4283 ], [ %3371, %3683 ], [ %3371, %3367 ], [ %3371, %3387 ], [ %4285, %4314 ], [ %4285, %4350 ], [ %4285, %4396 ], [ %4285, %4398 ]
  %4429 = phi float [ %4286, %4283 ], [ %3372, %3683 ], [ %3372, %3367 ], [ %3372, %3387 ], [ %4286, %4314 ], [ %4286, %4350 ], [ %4286, %4396 ], [ %4286, %4398 ]
  %4430 = phi float [ %4287, %4283 ], [ %3373, %3683 ], [ %3373, %3367 ], [ %3373, %3387 ], [ %4287, %4314 ], [ %4287, %4350 ], [ %4287, %4396 ], [ %4287, %4398 ]
  %4431 = phi float [ %4288, %4283 ], [ %3374, %3683 ], [ %3374, %3367 ], [ %3374, %3387 ], [ %4288, %4314 ], [ %4288, %4350 ], [ %4288, %4396 ], [ %4288, %4398 ]
  %4432 = phi float [ %4289, %4283 ], [ %3375, %3683 ], [ %3375, %3367 ], [ %3375, %3387 ], [ %4289, %4314 ], [ %4289, %4350 ], [ %4289, %4396 ], [ %4289, %4398 ]
  %4433 = phi float [ %3376, %4283 ], [ %3376, %3683 ], [ %3376, %3367 ], [ %3376, %3387 ], [ %4345, %4314 ], [ %4393, %4350 ], [ %3376, %4396 ], [ %4421, %4398 ]
  %4434 = phi float [ %3377, %4283 ], [ %3377, %3683 ], [ %3377, %3367 ], [ %3377, %3387 ], [ %4346, %4314 ], [ %4394, %4350 ], [ %3377, %4396 ], [ %4422, %4398 ]
  %4435 = phi float [ %3378, %4283 ], [ %3378, %3683 ], [ %3378, %3367 ], [ %3378, %3387 ], [ %4347, %4314 ], [ %4395, %4350 ], [ %3378, %4396 ], [ %4423, %4398 ]
  %4436 = phi float [ %3379, %4283 ], [ %3379, %3683 ], [ %3379, %3367 ], [ %3379, %3387 ], [ %4333, %4314 ], [ %4385, %4350 ], [ %3379, %4396 ], [ %4413, %4398 ]
  %4437 = phi float [ %3380, %4283 ], [ %3380, %3683 ], [ %3380, %3367 ], [ %3380, %3387 ], [ %4334, %4314 ], [ %4386, %4350 ], [ %3380, %4396 ], [ %4414, %4398 ]
  %4438 = phi float [ %3381, %4283 ], [ %3381, %3683 ], [ %3381, %3367 ], [ %3381, %3387 ], [ %4335, %4314 ], [ %4387, %4350 ], [ %3381, %4396 ], [ %4415, %4398 ]
  %4439 = phi float [ %4290, %4283 ], [ %3382, %3683 ], [ %3382, %3367 ], [ %3382, %3387 ], [ %4290, %4314 ], [ %4290, %4350 ], [ %4290, %4396 ], [ %4290, %4398 ]
  %4440 = phi float [ %3383, %4283 ], [ %3383, %3683 ], [ %3383, %3367 ], [ %3383, %3387 ], [ %4326, %4314 ], [ %4381, %4350 ], [ %3383, %4396 ], [ %4409, %4398 ]
  %4441 = phi float [ %3384, %4283 ], [ %3384, %3683 ], [ %3384, %3367 ], [ %3384, %3387 ], [ %4323, %4314 ], [ %4358, %4350 ], [ %3384, %4396 ], [ %4406, %4398 ]
  %4442 = phi float [ %3385, %4283 ], [ %3385, %3683 ], [ %3385, %3367 ], [ %3385, %3387 ], [ %4338, %4314 ], [ %4389, %4350 ], [ %3385, %4396 ], [ %4417, %4398 ]
  %4443 = phi float [ %4291, %4283 ], [ %3386, %3683 ], [ %3386, %3367 ], [ %3386, %3387 ], [ %4291, %4314 ], [ %4291, %4350 ], [ %4291, %4396 ], [ %4291, %4398 ]
  %4444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4445 = extractvalue %dx.types.CBufRet.f32 %4444, 0
  %4446 = call float @dx.op.dot2.f32(i32 54, float %4425, float %4426, float %4425, float %4426)  ; Dot2(ax,ay,bx,by)
  %4447 = fmul fast float %4446, 0x3FE3333340000000
  %4448 = fsub fast float 1.000000e+00, %4447
  %4449 = call float @dx.op.dot3.f32(i32 55, float %4425, float %4426, float %4448, float %4425, float %4426, float %4448)  ; Dot3(ax,ay,az,bx,by,bz)
  %4450 = call float @dx.op.unary.f32(i32 25, float %4449)  ; Rsqrt(value)
  %4451 = fmul fast float %4450, %4425
  %4452 = fmul fast float %4450, %4426
  %4453 = fmul fast float %4448, %4450
  %4454 = fmul fast float %4453, %97
  %4455 = fmul fast float %4453, %98
  %4456 = fmul fast float %4453, %99
  %4457 = fmul fast float %4451, %65
  %4458 = fmul fast float %4451, %66
  %4459 = fmul fast float %4451, %67
  %4460 = fadd fast float %4454, %4457
  %4461 = fadd fast float %4455, %4458
  %4462 = fadd fast float %4456, %4459
  %4463 = fmul fast float %109, %4452
  %4464 = fmul fast float %110, %4452
  %4465 = fmul fast float %111, %4452
  %4466 = fadd fast float %4460, %4463
  %4467 = fadd fast float %4461, %4464
  %4468 = fadd fast float %4462, %4465
  %4469 = call float @dx.op.dot3.f32(i32 55, float %4466, float %4467, float %4468, float %4466, float %4467, float %4468)  ; Dot3(ax,ay,az,bx,by,bz)
  %4470 = call float @dx.op.unary.f32(i32 25, float %4469)  ; Rsqrt(value)
  %4471 = fmul fast float %4466, %4470
  %4472 = fmul fast float %4467, %4470
  %4473 = fmul fast float %4468, %4470
  %4474 = and i32 %46, 1
  %4475 = icmp eq i32 %4474, 0
  br i1 %4475, label %4476, label %5068

; <label>:4476                                    ; preds = %4424
  %4477 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %4478 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %4479 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %4480 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %4481 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %4482 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %4483 = fadd fast float %4477, %145
  %4484 = fadd fast float %4478, %146
  %4485 = fadd fast float %4479, %147
  %4486 = fadd fast float %4480, %145
  %4487 = fadd fast float %4481, %146
  %4488 = fadd fast float %4482, %147
  %4489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4490 = extractvalue %dx.types.CBufRet.f32 %4489, 0
  %4491 = extractvalue %dx.types.CBufRet.f32 %4489, 1
  %4492 = extractvalue %dx.types.CBufRet.f32 %4489, 2
  %4493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4494 = extractvalue %dx.types.CBufRet.f32 %4493, 2
  %4495 = extractvalue %dx.types.CBufRet.f32 %4493, 3
  %4496 = fmul fast float %4490, %90
  %4497 = fmul fast float %4496, %4494
  %4498 = fmul fast float %4491, %91
  %4499 = fmul fast float %4498, %4495
  %4500 = fptoui float %4497 to i32
  %4501 = fptoui float %4499 to i32
  %4502 = fadd fast float %4490, -1.000000e+00
  %4503 = fadd fast float %4491, -1.000000e+00
  %4504 = fptoui float %4502 to i32
  %4505 = fptoui float %4503 to i32
  %4506 = call i32 @dx.op.binary.i32(i32 40, i32 %4500, i32 %4504)  ; UMin(a,b)
  %4507 = call i32 @dx.op.binary.i32(i32 40, i32 %4501, i32 %4505)  ; UMin(a,b)
  %4508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4509 = extractvalue %dx.types.CBufRet.f32 %4508, 2
  %4510 = extractvalue %dx.types.CBufRet.f32 %4508, 3
  %4511 = fmul fast float %4509, %81
  %4512 = fsub fast float %4511, %4510
  %4513 = fadd fast float %4492, -1.000000e+00
  %4514 = call float @dx.op.binary.f32(i32 36, float %4512, float %4513)  ; FMin(a,b)
  %4515 = fptoui float %4514 to i32
  %4516 = fptoui float %4490 to i32
  %4517 = fptoui float %4491 to i32
  %4518 = mul i32 %4515, %4517
  %4519 = add i32 %4518, %4507
  %4520 = mul i32 %4519, %4516
  %4521 = add i32 %4520, %4506
  %4522 = shl i32 %4521, 2
  %4523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4522, i32 undef)  ; BufferLoad(srv,index,wot)
  %4524 = extractvalue %dx.types.ResRet.i32 %4523, 0
  %4525 = and i32 %4524, 1023
  %4526 = lshr i32 %4524, 10
  %4527 = icmp eq i32 %4525, 0
  br i1 %4527, label %5031, label %4528

; <label>:4528                                    ; preds = %4476
  %4529 = and i32 %4524, 1023
  br label %4530

; <label>:4530                                    ; preds = %4662, %4528
  %4531 = phi i32 [ %4612, %4662 ], [ 0, %4528 ]
  %4532 = phi float [ %4663, %4662 ], [ 0.000000e+00, %4528 ]
  %4533 = phi float [ %4664, %4662 ], [ %4445, %4528 ]
  %4534 = phi float [ %4665, %4662 ], [ %4443, %4528 ]
  %4535 = phi float [ %4666, %4662 ], [ %4436, %4528 ]
  %4536 = phi float [ %4667, %4662 ], [ %4437, %4528 ]
  %4537 = phi float [ %4668, %4662 ], [ %4438, %4528 ]
  %4538 = phi float [ %4669, %4662 ], [ 0.000000e+00, %4528 ]
  %4539 = phi float [ %4670, %4662 ], [ 0.000000e+00, %4528 ]
  %4540 = phi float [ %4671, %4662 ], [ %4433, %4528 ]
  %4541 = phi float [ %4672, %4662 ], [ %4434, %4528 ]
  %4542 = phi float [ %4673, %4662 ], [ %4435, %4528 ]
  %4543 = phi float [ %4674, %4662 ], [ %4430, %4528 ]
  %4544 = phi float [ %4675, %4662 ], [ %4431, %4528 ]
  %4545 = phi float [ %4676, %4662 ], [ %4432, %4528 ]
  %4546 = phi float [ %4677, %4662 ], [ %4471, %4528 ]
  %4547 = phi float [ %4678, %4662 ], [ %4472, %4528 ]
  %4548 = phi float [ %4679, %4662 ], [ %4473, %4528 ]
  %4549 = phi float [ %4680, %4662 ], [ %4441, %4528 ]
  %4550 = phi float [ %4681, %4662 ], [ %4440, %4528 ]
  %4551 = phi float [ %4682, %4662 ], [ 0.000000e+00, %4528 ]
  %4552 = phi float [ %4683, %4662 ], [ %4439, %4528 ]
  %4553 = phi float [ %4684, %4662 ], [ %4427, %4528 ]
  %4554 = phi float [ %4685, %4662 ], [ %4428, %4528 ]
  %4555 = phi float [ %4686, %4662 ], [ %4429, %4528 ]
  %4556 = add nuw nsw i32 %4531, %4526
  %4557 = shl i32 %4556, 2
  %4558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4557, i32 undef)  ; BufferLoad(srv,index,wot)
  %4559 = extractvalue %dx.types.ResRet.i32 %4558, 0
  %4560 = shl i32 %4559, 8
  %4561 = or i32 %4560, 48
  %4562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4561, i32 undef)  ; BufferLoad(srv,index,wot)
  %4563 = extractvalue %dx.types.ResRet.f32 %4562, 0
  %4564 = extractvalue %dx.types.ResRet.f32 %4562, 1
  %4565 = extractvalue %dx.types.ResRet.f32 %4562, 2
  %4566 = extractvalue %dx.types.ResRet.f32 %4562, 3
  %4567 = or i32 %4560, 64
  %4568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4567, i32 undef)  ; BufferLoad(srv,index,wot)
  %4569 = extractvalue %dx.types.ResRet.i32 %4568, 0
  %4570 = extractvalue %dx.types.ResRet.i32 %4568, 1
  %4571 = or i32 %4560, 80
  %4572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4571, i32 undef)  ; BufferLoad(srv,index,wot)
  %4573 = extractvalue %dx.types.ResRet.f32 %4572, 2
  %4574 = extractvalue %dx.types.ResRet.f32 %4572, 3
  %4575 = or i32 %4560, 96
  %4576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4575, i32 undef)  ; BufferLoad(srv,index,wot)
  %4577 = extractvalue %dx.types.ResRet.f32 %4576, 0
  %4578 = extractvalue %dx.types.ResRet.f32 %4576, 1
  %4579 = extractvalue %dx.types.ResRet.f32 %4576, 2
  %4580 = extractvalue %dx.types.ResRet.f32 %4576, 3
  %4581 = or i32 %4560, 112
  %4582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4581, i32 undef)  ; BufferLoad(srv,index,wot)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 2
  %4584 = or i32 %4560, 128
  %4585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4584, i32 undef)  ; BufferLoad(srv,index,wot)
  %4586 = extractvalue %dx.types.ResRet.f32 %4585, 0
  %4587 = extractvalue %dx.types.ResRet.f32 %4585, 1
  %4588 = extractvalue %dx.types.ResRet.f32 %4585, 2
  %4589 = extractvalue %dx.types.ResRet.f32 %4585, 3
  %4590 = or i32 %4560, 144
  %4591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4590, i32 undef)  ; BufferLoad(srv,index,wot)
  %4592 = extractvalue %dx.types.ResRet.f32 %4591, 0
  %4593 = extractvalue %dx.types.ResRet.f32 %4591, 1
  %4594 = extractvalue %dx.types.ResRet.f32 %4591, 2
  %4595 = extractvalue %dx.types.ResRet.f32 %4591, 3
  %4596 = or i32 %4560, 160
  %4597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4596, i32 undef)  ; BufferLoad(srv,index,wot)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4599 = extractvalue %dx.types.ResRet.f32 %4597, 1
  %4600 = extractvalue %dx.types.ResRet.f32 %4597, 2
  %4601 = extractvalue %dx.types.ResRet.f32 %4597, 3
  %4602 = or i32 %4560, 192
  %4603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4602, i32 undef)  ; BufferLoad(srv,index,wot)
  %4604 = extractvalue %dx.types.ResRet.i32 %4603, 0
  %4605 = or i32 %4560, 208
  %4606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4605, i32 undef)  ; BufferLoad(srv,index,wot)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = or i32 %4560, 248
  %4609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4608, i32 undef)  ; BufferLoad(srv,index,wot)
  %4610 = extractvalue %dx.types.ResRet.f32 %4609, 0
  %4611 = extractvalue %dx.types.ResRet.f32 %4609, 1
  %4612 = add nuw nsw i32 %4531, 1
  %4613 = bitcast float %4566 to i32
  %4614 = and i32 %4613, 512
  %4615 = icmp eq i32 %4614, 0
  %4616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4560, i32 undef)  ; BufferLoad(srv,index,wot)
  %4617 = extractvalue %dx.types.ResRet.f32 %4616, 0
  %4618 = extractvalue %dx.types.ResRet.f32 %4616, 1
  %4619 = extractvalue %dx.types.ResRet.f32 %4616, 2
  %4620 = extractvalue %dx.types.ResRet.f32 %4616, 3
  %4621 = call float @dx.op.dot4.f32(i32 56, float %4617, float %4618, float %4619, float %4620, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4622 = or i32 %4560, 16
  %4623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4622, i32 undef)  ; BufferLoad(srv,index,wot)
  %4624 = extractvalue %dx.types.ResRet.f32 %4623, 0
  %4625 = extractvalue %dx.types.ResRet.f32 %4623, 1
  %4626 = extractvalue %dx.types.ResRet.f32 %4623, 2
  %4627 = extractvalue %dx.types.ResRet.f32 %4623, 3
  %4628 = call float @dx.op.dot4.f32(i32 56, float %4624, float %4625, float %4626, float %4627, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4629 = or i32 %4560, 32
  %4630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4629, i32 undef)  ; BufferLoad(srv,index,wot)
  %4631 = extractvalue %dx.types.ResRet.f32 %4630, 0
  %4632 = extractvalue %dx.types.ResRet.f32 %4630, 1
  %4633 = extractvalue %dx.types.ResRet.f32 %4630, 2
  %4634 = extractvalue %dx.types.ResRet.f32 %4630, 3
  %4635 = call float @dx.op.dot4.f32(i32 56, float %4631, float %4632, float %4633, float %4634, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4636 = call float @dx.op.unary.f32(i32 27, float %4621)  ; Round_ni(value)
  %4637 = call float @dx.op.unary.f32(i32 6, float %4636)  ; FAbs(value)
  %4638 = call float @dx.op.unary.f32(i32 27, float %4628)  ; Round_ni(value)
  %4639 = call float @dx.op.unary.f32(i32 6, float %4638)  ; FAbs(value)
  %4640 = call float @dx.op.unary.f32(i32 6, float %4635)  ; FAbs(value)
  %4641 = call float @dx.op.unary.f32(i32 27, float %4640)  ; Round_ni(value)
  %4642 = fadd fast float %4639, %4637
  %4643 = fadd fast float %4642, %4641
  %4644 = fcmp fast oeq float %4643, 0.000000e+00
  %4645 = call float @dx.op.dot4.f32(i32 56, float %4617, float %4618, float %4619, float %4620, float %4483, float %4484, float %4485, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4646 = call float @dx.op.dot4.f32(i32 56, float %4624, float %4625, float %4626, float %4627, float %4483, float %4484, float %4485, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4647 = call float @dx.op.dot4.f32(i32 56, float %4617, float %4618, float %4619, float %4620, float %4486, float %4487, float %4488, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4648 = call float @dx.op.dot4.f32(i32 56, float %4624, float %4625, float %4626, float %4627, float %4486, float %4487, float %4488, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4649 = fsub fast float %4645, %4621
  %4650 = fsub fast float %4647, %4621
  %4651 = fsub fast float %4646, %4628
  %4652 = fsub fast float %4648, %4628
  %4653 = call float @dx.op.dot3.f32(i32 55, float %4563, float %4564, float %4565, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %4654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4655 = extractvalue %dx.types.CBufRet.f32 %4654, 2
  %4656 = fadd fast float %4655, %4653
  %4657 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4658 = extractvalue %dx.types.CBufRet.f32 %4654, 0
  %4659 = fcmp fast ogt float %4657, %4658
  %4660 = and i1 %4644, %4659
  %4661 = and i1 %4615, %4660
  br i1 %4661, label %4688, label %4662

; <label>:4662                                    ; preds = %5017, %4769, %4688, %4530
  %4663 = phi float [ %4532, %4688 ], [ %4772, %4769 ], [ %4772, %5017 ], [ %4532, %4530 ]
  %4664 = phi float [ %4533, %4688 ], [ %4533, %4769 ], [ %4993, %5017 ], [ %4533, %4530 ]
  %4665 = phi float [ %4534, %4688 ], [ %4534, %4769 ], [ %4991, %5017 ], [ %4534, %4530 ]
  %4666 = phi float [ %4535, %4688 ], [ %4535, %4769 ], [ %4969, %5017 ], [ %4535, %4530 ]
  %4667 = phi float [ %4536, %4688 ], [ %4536, %4769 ], [ %4970, %5017 ], [ %4536, %4530 ]
  %4668 = phi float [ %4537, %4688 ], [ %4537, %4769 ], [ %4971, %5017 ], [ %4537, %4530 ]
  %4669 = phi float [ %4538, %4688 ], [ %4538, %4769 ], [ %4896, %5017 ], [ %4538, %4530 ]
  %4670 = phi float [ %4539, %4688 ], [ %4539, %4769 ], [ %4894, %5017 ], [ %4539, %4530 ]
  %4671 = phi float [ %4540, %4688 ], [ %4540, %4769 ], [ %4939, %5017 ], [ %4540, %4530 ]
  %4672 = phi float [ %4541, %4688 ], [ %4541, %4769 ], [ %4940, %5017 ], [ %4541, %4530 ]
  %4673 = phi float [ %4542, %4688 ], [ %4542, %4769 ], [ %4941, %5017 ], [ %4542, %4530 ]
  %4674 = phi float [ %4543, %4688 ], [ %4543, %4769 ], [ %5027, %5017 ], [ %4543, %4530 ]
  %4675 = phi float [ %4544, %4688 ], [ %4544, %4769 ], [ %5028, %5017 ], [ %4544, %4530 ]
  %4676 = phi float [ %4545, %4688 ], [ %4545, %4769 ], [ %5029, %5017 ], [ %4545, %4530 ]
  %4677 = phi float [ %4546, %4688 ], [ %4546, %4769 ], [ %4875, %5017 ], [ %4546, %4530 ]
  %4678 = phi float [ %4547, %4688 ], [ %4547, %4769 ], [ %4876, %5017 ], [ %4547, %4530 ]
  %4679 = phi float [ %4548, %4688 ], [ %4548, %4769 ], [ %4877, %5017 ], [ %4548, %4530 ]
  %4680 = phi float [ %4549, %4688 ], [ %4549, %4769 ], [ %4949, %5017 ], [ %4549, %4530 ]
  %4681 = phi float [ %4550, %4688 ], [ %4550, %4769 ], [ %4946, %5017 ], [ %4550, %4530 ]
  %4682 = phi float [ %4551, %4688 ], [ %4551, %4769 ], [ %4943, %5017 ], [ %4551, %4530 ]
  %4683 = phi float [ %4552, %4688 ], [ %4552, %4769 ], [ %4892, %5017 ], [ %4552, %4530 ]
  %4684 = phi float [ %4553, %4688 ], [ %4553, %4769 ], [ %4887, %5017 ], [ %4553, %4530 ]
  %4685 = phi float [ %4554, %4688 ], [ %4554, %4769 ], [ %4888, %5017 ], [ %4554, %4530 ]
  %4686 = phi float [ %4555, %4688 ], [ %4555, %4769 ], [ %4889, %5017 ], [ %4555, %4530 ]
  %4687 = icmp eq i32 %4612, %4529
  br i1 %4687, label %5030, label %4530

; <label>:4688                                    ; preds = %4530
  %4689 = extractvalue %dx.types.ResRet.f32 %4582, 3
  %4690 = extractvalue %dx.types.ResRet.f32 %4582, 1
  %4691 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4692 = extractvalue %dx.types.ResRet.f32 %4572, 1
  %4693 = extractvalue %dx.types.ResRet.f32 %4572, 0
  %4694 = extractvalue %dx.types.ResRet.i32 %4568, 3
  %4695 = extractvalue %dx.types.ResRet.i32 %4568, 2
  %4696 = add i32 %4694, 0
  %4697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4696, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4699 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4697, %dx.types.Handle %4698, float %4621, float %4628, float undef, float undef, i32 0, i32 0, i32 undef, float %4649, float %4651, float undef, float %4650, float %4652, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4700 = extractvalue %dx.types.ResRet.f32 %4699, 0
  %4701 = fmul fast float %4700, %4693
  %4702 = fadd fast float %4701, %4692
  %4703 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4704 = fmul fast float %4621, %4577
  %4705 = call float @dx.op.tertiary.f32(i32 46, float %4578, float %4628, float %4704)  ; FMad(a,b,c)
  %4706 = fadd fast float %4705, %4691
  %4707 = fmul fast float %4621, %4579
  %4708 = call float @dx.op.tertiary.f32(i32 46, float %4580, float %4628, float %4707)  ; FMad(a,b,c)
  %4709 = fadd fast float %4708, %4690
  %4710 = fmul fast float %4649, %4577
  %4711 = call float @dx.op.tertiary.f32(i32 46, float %4578, float %4651, float %4710)  ; FMad(a,b,c)
  %4712 = fmul fast float %4649, %4579
  %4713 = call float @dx.op.tertiary.f32(i32 46, float %4580, float %4651, float %4712)  ; FMad(a,b,c)
  %4714 = fmul fast float %4650, %4577
  %4715 = call float @dx.op.tertiary.f32(i32 46, float %4578, float %4652, float %4714)  ; FMad(a,b,c)
  %4716 = fmul fast float %4650, %4579
  %4717 = call float @dx.op.tertiary.f32(i32 46, float %4580, float %4652, float %4716)  ; FMad(a,b,c)
  %4718 = add i32 %4695, 0
  %4719 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4718, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4720 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4719, %dx.types.Handle %4698, float %4706, float %4709, float undef, float undef, i32 0, i32 0, i32 undef, float %4711, float %4713, float undef, float %4715, float %4717, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4721 = extractvalue %dx.types.ResRet.f32 %4720, 0
  %4722 = and i32 %4613, 1024
  %4723 = icmp ne i32 %4722, 0
  %4724 = fcmp fast ogt float %4721, 0x3FE0101020000000
  %4725 = uitofp i1 %4724 to float
  %4726 = select i1 %4723, float %4725, float %4721
  %4727 = and i32 %4613, 8192
  %4728 = icmp ne i32 %4727, 0
  %4729 = select i1 %4728, float %4689, float 1.000000e+00
  %4730 = fmul fast float %4621, 2.000000e+00
  %4731 = fadd fast float %4730, -1.000000e+00
  %4732 = call float @dx.op.unary.f32(i32 6, float %4731)  ; FAbs(value)
  %4733 = fmul fast float %4732, %4610
  %4734 = fsub fast float %4733, %4610
  %4735 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4736 = fmul fast float %4628, 2.000000e+00
  %4737 = fadd fast float %4736, -1.000000e+00
  %4738 = call float @dx.op.unary.f32(i32 6, float %4737)  ; FAbs(value)
  %4739 = fmul fast float %4738, %4611
  %4740 = fsub fast float %4739, %4611
  %4741 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4742 = fmul fast float %4640, %4573
  %4743 = fsub fast float %4742, %4573
  %4744 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4745 = fmul fast float %4703, %4729
  %4746 = fmul fast float %4745, %4700
  %4747 = fmul fast float %4746, %4735
  %4748 = fmul fast float %4747, %4726
  %4749 = fmul fast float %4748, %4741
  %4750 = fmul fast float %4749, %4744
  %4751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4752 = extractvalue %dx.types.CBufRet.f32 %4751, 1
  %4753 = extractvalue %dx.types.CBufRet.f32 %4751, 0
  %4754 = fsub fast float %4657, %4753
  %4755 = fmul fast float %4754, %4752
  %4756 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  %4757 = fmul fast float %4750, %4574
  %4758 = fadd fast float %4750, %4574
  %4759 = fmul fast float %4758, %4583
  %4760 = fsub fast float %4759, %4583
  %4761 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4762 = and i32 %4613, 128
  %4763 = icmp ne i32 %4762, 0
  %4764 = select i1 %4763, float %4761, float %4757
  %4765 = fmul fast float %4764, %4756
  %4766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4767 = extractvalue %dx.types.CBufRet.f32 %4766, 0
  %4768 = fcmp fast ugt float %4765, %4767
  br i1 %4768, label %4769, label %4662

; <label>:4769                                    ; preds = %4688
  %4770 = select i1 %4728, float %4765, float 0.000000e+00
  %4771 = fadd fast float %4770, %4532
  %4772 = call float @dx.op.unary.f32(i32 7, float %4771)  ; Saturate(value)
  br i1 %4728, label %4662, label %4773

; <label>:4773                                    ; preds = %4769
  %4774 = and i32 %4613, 4
  %4775 = and i32 %4613, 8
  %4776 = add i32 %4569, 0
  %4777 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4776, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4779 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4777, %dx.types.Handle %4778, float %4706, float %4709, float undef, float undef, i32 0, i32 0, i32 undef, float %4711, float %4713, float undef, float %4715, float %4717, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4780 = extractvalue %dx.types.ResRet.f32 %4779, 0
  %4781 = extractvalue %dx.types.ResRet.f32 %4779, 1
  %4782 = extractvalue %dx.types.ResRet.f32 %4779, 2
  %4783 = extractvalue %dx.types.ResRet.f32 %4779, 3
  %4784 = bitcast float %4595 to i32
  %4785 = and i32 %4784, 255
  %4786 = uitofp i32 %4785 to float
  %4787 = lshr i32 %4784, 8
  %4788 = and i32 %4787, 255
  %4789 = uitofp i32 %4788 to float
  %4790 = fmul fast float %4783, %4786
  %4791 = fadd fast float %4790, %4789
  %4792 = fmul fast float %4791, 0x3F70101000000000
  %4793 = add i32 %4570, 0
  %4794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4793, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4795 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4794, %dx.types.Handle %4778, float %4706, float %4709, float undef, float undef, i32 0, i32 0, i32 undef, float %4711, float %4713, float undef, float %4715, float %4717, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4796 = extractvalue %dx.types.ResRet.f32 %4795, 0
  %4797 = extractvalue %dx.types.ResRet.f32 %4795, 1
  %4798 = extractvalue %dx.types.ResRet.f32 %4795, 2
  %4799 = extractvalue %dx.types.ResRet.f32 %4795, 3
  %4800 = bitcast float %4589 to i32
  %4801 = and i32 %4800, 255
  %4802 = uitofp i32 %4801 to float
  %4803 = lshr i32 %4800, 8
  %4804 = and i32 %4803, 255
  %4805 = uitofp i32 %4804 to float
  %4806 = lshr i32 %4800, 16
  %4807 = and i32 %4806, 255
  %4808 = uitofp i32 %4807 to float
  %4809 = fmul fast float %4808, 0x3F70101000000000
  %4810 = fmul fast float %4796, %4802
  %4811 = fadd fast float %4810, %4805
  %4812 = fmul fast float %4811, 0x3F70101000000000
  %4813 = fadd fast float %4797, -5.000000e-01
  %4814 = fadd fast float %4799, -5.000000e-01
  %4815 = fmul fast float %4813, %4809
  %4816 = fmul fast float %4814, %4809
  %4817 = fadd fast float %4815, 5.000000e-01
  %4818 = fadd fast float %4816, 5.000000e-01
  %4819 = fmul fast float %4780, %4598
  %4820 = fmul fast float %4781, %4599
  %4821 = fmul fast float %4782, %4600
  %4822 = fmul fast float %4817, 2.000000e+00
  %4823 = fadd fast float %4822, -1.000000e+00
  %4824 = fmul fast float %4818, 2.000000e+00
  %4825 = fadd fast float %4824, -1.000000e+00
  %4826 = fadd fast float %4823, %4825
  %4827 = fmul fast float %4826, 5.000000e-01
  %4828 = fsub fast float %4823, %4825
  %4829 = fmul fast float %4828, 5.000000e-01
  %4830 = call float @dx.op.unary.f32(i32 6, float %4827)  ; FAbs(value)
  %4831 = fsub fast float 1.000000e+00, %4830
  %4832 = call float @dx.op.unary.f32(i32 6, float %4829)  ; FAbs(value)
  %4833 = fsub fast float %4831, %4832
  %4834 = call float @dx.op.dot3.f32(i32 55, float %4827, float %4829, float %4833, float %4827, float %4829, float %4833)  ; Dot3(ax,ay,az,bx,by,bz)
  %4835 = call float @dx.op.unary.f32(i32 25, float %4834)  ; Rsqrt(value)
  %4836 = fmul fast float %4827, %4835
  %4837 = fmul fast float %4829, %4835
  %4838 = fmul fast float %4835, %4833
  %4839 = fmul fast float %4838, %4563
  %4840 = fmul fast float %4838, %4564
  %4841 = fmul fast float %4838, %4565
  %4842 = fmul fast float %4836, %4586
  %4843 = fmul fast float %4836, %4587
  %4844 = fmul fast float %4836, %4588
  %4845 = fadd fast float %4842, %4839
  %4846 = fadd fast float %4843, %4840
  %4847 = fadd fast float %4844, %4841
  %4848 = fmul fast float %4837, %4592
  %4849 = fmul fast float %4837, %4593
  %4850 = fmul fast float %4837, %4594
  %4851 = fadd fast float %4845, %4848
  %4852 = fadd fast float %4846, %4849
  %4853 = fadd fast float %4847, %4850
  %4854 = call float @dx.op.dot3.f32(i32 55, float %4851, float %4852, float %4853, float %4851, float %4852, float %4853)  ; Dot3(ax,ay,az,bx,by,bz)
  %4855 = call float @dx.op.unary.f32(i32 25, float %4854)  ; Rsqrt(value)
  %4856 = fmul fast float %4851, %4855
  %4857 = fmul fast float %4852, %4855
  %4858 = fmul fast float %4853, %4855
  %4859 = icmp ne i32 %4775, 0
  %4860 = select i1 %4859, float 1.000000e+00, float 0.000000e+00
  %4861 = fmul fast float %4765, %4860
  %4862 = and i32 %4613, 1
  %4863 = icmp eq i32 %4862, 0
  br i1 %4863, label %4864, label %4868

; <label>:4864                                    ; preds = %4773
  %4865 = fsub fast float %4856, %4546
  %4866 = fsub fast float %4857, %4547
  %4867 = fsub fast float %4858, %4548
  br label %4868

; <label>:4868                                    ; preds = %4864, %4773
  %4869 = phi float [ %4865, %4864 ], [ %4856, %4773 ]
  %4870 = phi float [ %4866, %4864 ], [ %4857, %4773 ]
  %4871 = phi float [ %4867, %4864 ], [ %4858, %4773 ]
  %4872 = fmul float %4871, %4861
  %4873 = fmul float %4870, %4861
  %4874 = fmul float %4869, %4861
  %4875 = fadd fast float %4874, %4546
  %4876 = fadd fast float %4873, %4547
  %4877 = fadd fast float %4872, %4548
  %4878 = icmp ne i32 %4774, 0
  %4879 = select i1 %4878, float 1.000000e+00, float 0.000000e+00
  %4880 = fmul fast float %4765, %4879
  %4881 = fsub fast float %4819, %4553
  %4882 = fsub fast float %4820, %4554
  %4883 = fsub fast float %4821, %4555
  %4884 = fmul fast float %4881, %4880
  %4885 = fmul fast float %4882, %4880
  %4886 = fmul fast float %4883, %4880
  %4887 = fadd fast float %4884, %4553
  %4888 = fadd fast float %4885, %4554
  %4889 = fadd fast float %4886, %4555
  %4890 = fsub fast float %4792, %4552
  %4891 = fmul fast float %4890, %4880
  %4892 = fadd fast float %4891, %4552
  %4893 = fmul fast float %4880, %4539
  %4894 = fsub fast float %4539, %4893
  %4895 = fmul fast float %4880, %4538
  %4896 = fsub fast float %4538, %4895
  %4897 = bitcast float %4607 to i32
  %4898 = lshr i32 %4897, 16
  %4899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4898)  ; LegacyF16ToF32(value)
  %4900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %4901 = extractvalue %dx.types.ResRet.i32 %4900, 0
  %4902 = and i32 %4901, 1
  %4903 = icmp eq i32 %4902, 0
  br i1 %4903, label %4904, label %4929

; <label>:4904                                    ; preds = %4868
  %4905 = fadd fast float %4792, 0xBFB99999A0000000
  %4906 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4907 = fmul fast float %4906, 0x3FF1C71C80000000
  %4908 = fsub fast float 1.000000e+00, %4907
  %4909 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4910 = fmul fast float %4909, %4819
  %4911 = fmul fast float %4909, %4820
  %4912 = fmul fast float %4909, %4821
  %4913 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4914 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4915 = call float @dx.op.unary.f32(i32 7, float %4912)  ; Saturate(value)
  %4916 = call float @dx.op.binary.f32(i32 35, float %4914, float %4915)  ; FMax(a,b)
  %4917 = call float @dx.op.binary.f32(i32 35, float %4913, float %4916)  ; FMax(a,b)
  %4918 = fcmp fast ogt float %4917, 0.000000e+00
  %4919 = bitcast float %4917 to i32
  %4920 = sub nsw i32 2129859010, %4919
  %4921 = bitcast i32 %4920 to float
  %4922 = select i1 %4918, float %4921, float 0.000000e+00
  %4923 = fmul fast float %4913, %4899
  %4924 = fmul fast float %4914, %4899
  %4925 = fmul fast float %4915, %4899
  %4926 = fmul fast float %4923, %4922
  %4927 = fmul fast float %4924, %4922
  %4928 = fmul fast float %4925, %4922
  br label %4929

; <label>:4929                                    ; preds = %4904, %4868
  %4930 = phi float [ %4899, %4868 ], [ %4926, %4904 ]
  %4931 = phi float [ %4899, %4868 ], [ %4927, %4904 ]
  %4932 = phi float [ %4899, %4868 ], [ %4928, %4904 ]
  %4933 = fsub fast float %4930, %4540
  %4934 = fsub fast float %4931, %4541
  %4935 = fsub fast float %4932, %4542
  %4936 = fmul fast float %4933, %4880
  %4937 = fmul fast float %4934, %4880
  %4938 = fmul fast float %4935, %4880
  %4939 = fadd fast float %4936, %4540
  %4940 = fadd fast float %4937, %4541
  %4941 = fadd fast float %4938, %4542
  %4942 = fadd fast float %4765, %4551
  %4943 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4944 = fsub fast float %4812, %4550
  %4945 = fmul fast float %4944, %4861
  %4946 = fadd fast float %4945, %4550
  %4947 = fsub fast float %4798, %4549
  %4948 = fmul fast float %4947, %4861
  %4949 = fadd fast float %4948, %4549
  br i1 %4863, label %4958, label %4950

; <label>:4950                                    ; preds = %4929
  %4951 = and i32 %4613, 32768
  %4952 = icmp eq i32 %4951, 0
  br i1 %4952, label %4968, label %4953

; <label>:4953                                    ; preds = %4950
  %4954 = fmul fast float %4861, 1.270000e+02
  %4955 = fadd fast float %4954, %4535
  %4956 = fadd fast float %4954, %4536
  %4957 = fadd fast float %4954, %4537
  br label %4968

; <label>:4958                                    ; preds = %4929
  %4959 = fsub fast float 1.270000e+02, %4535
  %4960 = fsub fast float 1.270000e+02, %4536
  %4961 = fsub fast float 1.270000e+02, %4537
  %4962 = fmul fast float %4861, %4959
  %4963 = fmul fast float %4861, %4960
  %4964 = fmul fast float %4861, %4961
  %4965 = fadd fast float %4962, %4535
  %4966 = fadd fast float %4963, %4536
  %4967 = fadd fast float %4964, %4537
  br label %4968

; <label>:4968                                    ; preds = %4958, %4953, %4950
  %4969 = phi float [ %4955, %4953 ], [ %4535, %4950 ], [ %4965, %4958 ]
  %4970 = phi float [ %4956, %4953 ], [ %4536, %4950 ], [ %4966, %4958 ]
  %4971 = phi float [ %4957, %4953 ], [ %4537, %4950 ], [ %4967, %4958 ]
  %4972 = call float @dx.op.dot3.f32(i32 55, float %4819, float %4820, float %4821, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4974 = extractvalue %dx.types.CBufRet.f32 %4973, 0
  %4975 = extractvalue %dx.types.CBufRet.f32 %4973, 1
  %4976 = fmul fast float %4975, %4972
  %4977 = fadd fast float %4976, %4974
  %4978 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4979 = bitcast float %4601 to i32
  %4980 = and i32 %4979, 65535
  %4981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4980)  ; LegacyF16ToF32(value)
  %4982 = lshr i32 %4979, 16
  %4983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4982)  ; LegacyF16ToF32(value)
  %4984 = fcmp fast oge float %4981, 0.000000e+00
  %4985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4986 = extractvalue %dx.types.CBufRet.f32 %4985, 0
  %4987 = select i1 %4984, float %4981, float %4986
  %4988 = fadd fast float %4987, %4983
  %4989 = fsub fast float %4978, %4534
  %4990 = fmul fast float %4989, %4765
  %4991 = fadd fast float %4990, %4534
  %4992 = fmul fast float %4988, %4765
  %4993 = call float @dx.op.binary.f32(i32 35, float %4533, float %4992)  ; FMax(a,b)
  %4994 = and i32 %4613, 16
  %4995 = icmp eq i32 %4994, 0
  br i1 %4995, label %5017, label %4996

; <label>:4996                                    ; preds = %4968
  %4997 = add i32 %4604, 0
  %4998 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4997, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4999 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4998, %dx.types.Handle %4778, float %4706, float %4709, float undef, float undef, i32 0, i32 0, i32 undef, float %4711, float %4713, float undef, float %4715, float %4717, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5000 = extractvalue %dx.types.ResRet.f32 %4999, 0
  %5001 = extractvalue %dx.types.ResRet.f32 %4999, 1
  %5002 = extractvalue %dx.types.ResRet.f32 %4999, 2
  %5003 = and i32 %4897, 65535
  %5004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5003)  ; LegacyF16ToF32(value)
  %5005 = fmul fast float %5000, %4598
  %5006 = fmul fast float %5001, %4599
  %5007 = fmul fast float %5002, %4600
  %5008 = and i32 %4613, 16384
  %5009 = icmp ne i32 %5008, 0
  %5010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.f32 %5010, 0
  %5012 = select i1 %5009, float %5011, float 1.000000e+00
  %5013 = fmul fast float %5012, %5004
  %5014 = fmul fast float %5005, %5013
  %5015 = fmul fast float %5006, %5013
  %5016 = fmul fast float %5007, %5013
  br label %5017

; <label>:5017                                    ; preds = %4996, %4968
  %5018 = phi float [ %5014, %4996 ], [ 0.000000e+00, %4968 ]
  %5019 = phi float [ %5015, %4996 ], [ 0.000000e+00, %4968 ]
  %5020 = phi float [ %5016, %4996 ], [ 0.000000e+00, %4968 ]
  %5021 = fsub fast float %5018, %4543
  %5022 = fsub fast float %5019, %4544
  %5023 = fsub fast float %5020, %4545
  %5024 = fmul fast float %5021, %4765
  %5025 = fmul fast float %5022, %4765
  %5026 = fmul fast float %5023, %4765
  %5027 = fadd fast float %5024, %4543
  %5028 = fadd fast float %5025, %4544
  %5029 = fadd fast float %5026, %4545
  br label %4662

; <label>:5030                                    ; preds = %4662
  br label %5031

; <label>:5031                                    ; preds = %5030, %4476
  %5032 = phi float [ 0.000000e+00, %4476 ], [ %4663, %5030 ]
  %5033 = phi float [ %4445, %4476 ], [ %4664, %5030 ]
  %5034 = phi float [ %4443, %4476 ], [ %4665, %5030 ]
  %5035 = phi float [ %4436, %4476 ], [ %4666, %5030 ]
  %5036 = phi float [ %4437, %4476 ], [ %4667, %5030 ]
  %5037 = phi float [ %4438, %4476 ], [ %4668, %5030 ]
  %5038 = phi float [ 0.000000e+00, %4476 ], [ %4669, %5030 ]
  %5039 = phi float [ 0.000000e+00, %4476 ], [ %4670, %5030 ]
  %5040 = phi float [ %4433, %4476 ], [ %4671, %5030 ]
  %5041 = phi float [ %4434, %4476 ], [ %4672, %5030 ]
  %5042 = phi float [ %4435, %4476 ], [ %4673, %5030 ]
  %5043 = phi float [ %4430, %4476 ], [ %4674, %5030 ]
  %5044 = phi float [ %4431, %4476 ], [ %4675, %5030 ]
  %5045 = phi float [ %4432, %4476 ], [ %4676, %5030 ]
  %5046 = phi float [ %4471, %4476 ], [ %4677, %5030 ]
  %5047 = phi float [ %4472, %4476 ], [ %4678, %5030 ]
  %5048 = phi float [ %4473, %4476 ], [ %4679, %5030 ]
  %5049 = phi float [ %4441, %4476 ], [ %4680, %5030 ]
  %5050 = phi float [ %4440, %4476 ], [ %4681, %5030 ]
  %5051 = phi float [ 0.000000e+00, %4476 ], [ %4682, %5030 ]
  %5052 = phi float [ %4439, %4476 ], [ %4683, %5030 ]
  %5053 = phi float [ %4427, %4476 ], [ %4684, %5030 ]
  %5054 = phi float [ %4428, %4476 ], [ %4685, %5030 ]
  %5055 = phi float [ %4429, %4476 ], [ %4686, %5030 ]
  %5056 = call float @dx.op.dot3.f32(i32 55, float %5046, float %5047, float %5048, float %5046, float %5047, float %5048)  ; Dot3(ax,ay,az,bx,by,bz)
  %5057 = call float @dx.op.unary.f32(i32 25, float %5056)  ; Rsqrt(value)
  %5058 = fmul fast float %5057, %5046
  %5059 = fmul fast float %5057, %5047
  %5060 = fmul fast float %5057, %5048
  %5061 = fadd fast float %5051, %1268
  %5062 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5063 = call float @dx.op.dot3.f32(i32 55, float %5058, float %5059, float %5060, float %5058, float %5059, float %5060)  ; Dot3(ax,ay,az,bx,by,bz)
  %5064 = call float @dx.op.unary.f32(i32 25, float %5063)  ; Rsqrt(value)
  %5065 = fmul fast float %5064, %5058
  %5066 = fmul fast float %5064, %5059
  %5067 = fmul fast float %5064, %5060
  br label %5068

; <label>:5068                                    ; preds = %5031, %4424
  %5069 = phi float [ %5065, %5031 ], [ %4471, %4424 ]
  %5070 = phi float [ %5066, %5031 ], [ %4472, %4424 ]
  %5071 = phi float [ %5067, %5031 ], [ %4473, %4424 ]
  %5072 = phi float [ %5053, %5031 ], [ %4427, %4424 ]
  %5073 = phi float [ %5054, %5031 ], [ %4428, %4424 ]
  %5074 = phi float [ %5055, %5031 ], [ %4429, %4424 ]
  %5075 = phi float [ %5043, %5031 ], [ %4430, %4424 ]
  %5076 = phi float [ %5044, %5031 ], [ %4431, %4424 ]
  %5077 = phi float [ %5045, %5031 ], [ %4432, %4424 ]
  %5078 = phi float [ %5040, %5031 ], [ %4433, %4424 ]
  %5079 = phi float [ %5041, %5031 ], [ %4434, %4424 ]
  %5080 = phi float [ %5042, %5031 ], [ %4435, %4424 ]
  %5081 = phi float [ %5035, %5031 ], [ %4436, %4424 ]
  %5082 = phi float [ %5036, %5031 ], [ %4437, %4424 ]
  %5083 = phi float [ %5037, %5031 ], [ %4438, %4424 ]
  %5084 = phi float [ %5052, %5031 ], [ %4439, %4424 ]
  %5085 = phi float [ %5062, %5031 ], [ %1268, %4424 ]
  %5086 = phi float [ %5050, %5031 ], [ %4440, %4424 ]
  %5087 = phi float [ %5049, %5031 ], [ %4441, %4424 ]
  %5088 = phi float [ %5039, %5031 ], [ 0.000000e+00, %4424 ]
  %5089 = phi float [ %5038, %5031 ], [ 0.000000e+00, %4424 ]
  %5090 = phi float [ %5032, %5031 ], [ 0.000000e+00, %4424 ]
  %5091 = phi float [ %5033, %5031 ], [ %4445, %4424 ]
  %5092 = phi float [ %5034, %5031 ], [ %4443, %4424 ]
  %5093 = add i32 %44, 392
  %5094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5093, i32 undef)  ; BufferLoad(srv,index,wot)
  %5095 = extractvalue %dx.types.ResRet.i32 %5094, 0
  %5096 = extractvalue %dx.types.ResRet.i32 %5094, 1
  %5097 = extractvalue %dx.types.ResRet.i32 %5094, 2
  %5098 = extractvalue %dx.types.ResRet.i32 %5094, 3
  %5099 = bitcast i32 %5095 to float
  %5100 = bitcast i32 %5096 to float
  %5101 = bitcast i32 %5097 to float
  %5102 = bitcast i32 %5098 to float
  %5103 = fsub fast float %5072, %5099
  %5104 = fsub fast float %5073, %5100
  %5105 = fsub fast float %5074, %5101
  %5106 = fmul fast float %5103, %179
  %5107 = fmul fast float %5104, %179
  %5108 = fmul fast float %5105, %179
  %5109 = fadd fast float %5106, %5099
  %5110 = fadd fast float %5107, %5100
  %5111 = fadd fast float %5108, %5101
  %5112 = fsub fast float %5085, %5102
  %5113 = fmul fast float %5112, %179
  %5114 = fadd fast float %5113, %5102
  %5115 = fadd fast float %5084, 0xBFB99999A0000000
  %5116 = call float @dx.op.unary.f32(i32 7, float %5115)  ; Saturate(value)
  %5117 = fmul fast float %5116, 0x3FF1C71C80000000
  %5118 = call float @dx.op.binary.f32(i32 36, float %5084, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5119 = fsub fast float 1.000000e+00, %5117
  %5120 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5121 = fmul fast float %5109, %5120
  %5122 = fmul fast float %5110, %5120
  %5123 = fmul fast float %5111, %5120
  %5124 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5125 = call float @dx.op.unary.f32(i32 7, float %5122)  ; Saturate(value)
  %5126 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5127 = fmul fast float %5109, %5117
  %5128 = fmul fast float %5110, %5117
  %5129 = fmul fast float %5111, %5117
  %5130 = fadd fast float %5127, %5118
  %5131 = fadd fast float %5128, %5118
  %5132 = fadd fast float %5129, %5118
  %5133 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  %5134 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5135 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5136 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %5138 = extractvalue %dx.types.ResRet.i32 %5137, 0
  %5139 = and i32 %5138, 1
  %5140 = icmp eq i32 %5139, 0
  br i1 %5140, label %5155, label %5141

; <label>:5141                                    ; preds = %5068
  %5142 = call float @dx.op.binary.f32(i32 35, float %5125, float %5126)  ; FMax(a,b)
  %5143 = call float @dx.op.binary.f32(i32 35, float %5124, float %5142)  ; FMax(a,b)
  %5144 = fcmp fast ogt float %5143, 0.000000e+00
  %5145 = bitcast float %5143 to i32
  %5146 = sub nsw i32 2129859010, %5145
  %5147 = bitcast i32 %5146 to float
  %5148 = select i1 %5144, float %5147, float 0.000000e+00
  %5149 = fmul fast float %5124, %5078
  %5150 = fmul fast float %5125, %5079
  %5151 = fmul fast float %5126, %5080
  %5152 = fmul fast float %5149, %5148
  %5153 = fmul fast float %5150, %5148
  %5154 = fmul fast float %5151, %5148
  br label %5155

; <label>:5155                                    ; preds = %5141, %5068
  %5156 = phi float [ %5152, %5141 ], [ %5078, %5068 ]
  %5157 = phi float [ %5153, %5141 ], [ %5079, %5068 ]
  %5158 = phi float [ %5154, %5141 ], [ %5080, %5068 ]
  %5159 = call float @dx.op.binary.f32(i32 36, float %5081, float 1.270000e+02)  ; FMin(a,b)
  %5160 = call float @dx.op.binary.f32(i32 36, float %5082, float 1.270000e+02)  ; FMin(a,b)
  %5161 = call float @dx.op.binary.f32(i32 36, float %5083, float 1.270000e+02)  ; FMin(a,b)
  %5162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5163 = extractvalue %dx.types.CBufRet.i32 %5162, 3
  %5164 = and i32 %5163, 8
  %5165 = icmp ne i32 %5164, 0
  %5166 = call float @dx.op.binary.f32(i32 35, float %5124, float %5109)  ; FMax(a,b)
  %5167 = call float @dx.op.binary.f32(i32 35, float %5125, float %5109)  ; FMax(a,b)
  %5168 = call float @dx.op.binary.f32(i32 35, float %5126, float %5109)  ; FMax(a,b)
  %5169 = call float @dx.op.dot3.f32(i32 55, float %5124, float %5125, float %5126, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5170 = select i1 %238, float %5109, float %5124
  %5171 = select i1 %238, float %5169, float %5125
  %5172 = select i1 %238, float 1.000000e+00, float %5126
  %5173 = select i1 %5165, float %5166, float %5170
  %5174 = select i1 %5165, float %5167, float %5171
  %5175 = select i1 %5165, float %5168, float %5172
  %5176 = call float @dx.op.dot3.f32(i32 55, float %5156, float %5157, float %5158, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5177 = select i1 %238, float %5176, float %5156
  %5178 = select i1 %238, float %5176, float %5157
  %5179 = select i1 %238, float %5176, float %5158
  %5180 = and i32 %214, 3
  %5181 = select i1 %208, i32 %5180, i32 0
  %5182 = icmp eq i32 %5181, 1
  br i1 %5182, label %5183, label %5259

; <label>:5183                                    ; preds = %5155
  %5184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5185 = extractvalue %dx.types.CBufRet.f32 %5184, 0
  %5186 = extractvalue %dx.types.CBufRet.f32 %5184, 1
  %5187 = fadd fast float %5185, %145
  %5188 = fadd fast float %5186, %146
  %5189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5190 = extractvalue %dx.types.CBufRet.f32 %5189, 0
  %5191 = extractvalue %dx.types.CBufRet.f32 %5189, 1
  %5192 = fsub fast float %5187, %5190
  %5193 = fsub fast float %5188, %5191
  %5194 = fmul fast float %5192, %5192
  %5195 = fmul fast float %5193, %5193
  %5196 = fadd fast float %5194, %5195
  %5197 = call float @dx.op.unary.f32(i32 24, float %5196)  ; Sqrt(value)
  %5198 = extractvalue %dx.types.CBufRet.f32 %5189, 2
  %5199 = fcmp fast olt float %5197, %5198
  br i1 %5199, label %5200, label %5253

; <label>:5200                                    ; preds = %5183
  %5201 = extractvalue %dx.types.CBufRet.f32 %5184, 2
  %5202 = fadd fast float %5201, %147
  %5203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5204 = extractvalue %dx.types.CBufRet.f32 %5203, 0
  %5205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5206 = extractvalue %dx.types.CBufRet.f32 %5205, 0
  %5207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5208 = extractvalue %dx.types.CBufRet.f32 %5207, 0
  %5209 = extractvalue %dx.types.CBufRet.f32 %5203, 1
  %5210 = extractvalue %dx.types.CBufRet.f32 %5205, 1
  %5211 = extractvalue %dx.types.CBufRet.f32 %5207, 1
  %5212 = extractvalue %dx.types.CBufRet.f32 %5203, 3
  %5213 = extractvalue %dx.types.CBufRet.f32 %5205, 3
  %5214 = extractvalue %dx.types.CBufRet.f32 %5207, 3
  %5215 = fadd fast float %5212, %5187
  %5216 = fadd fast float %5213, %5188
  %5217 = fadd fast float %5202, %5214
  %5218 = fmul fast float %5215, %5204
  %5219 = call float @dx.op.tertiary.f32(i32 46, float %5216, float %5206, float %5218)  ; FMad(a,b,c)
  %5220 = call float @dx.op.tertiary.f32(i32 46, float %5217, float %5208, float %5219)  ; FMad(a,b,c)
  %5221 = fmul fast float %5215, %5209
  %5222 = call float @dx.op.tertiary.f32(i32 46, float %5216, float %5210, float %5221)  ; FMad(a,b,c)
  %5223 = call float @dx.op.tertiary.f32(i32 46, float %5217, float %5211, float %5222)  ; FMad(a,b,c)
  %5224 = fsub fast float %5220, %5212
  %5225 = fsub fast float %5223, %5213
  %5226 = fsub fast float %5224, %5190
  %5227 = fadd fast float %5226, %5198
  %5228 = fsub fast float %5225, %5191
  %5229 = fadd fast float %5228, %5198
  %5230 = extractvalue %dx.types.CBufRet.f32 %5189, 3
  %5231 = fmul fast float %5227, %5230
  %5232 = fmul fast float %5229, %5230
  %5233 = call float @dx.op.unary.f32(i32 7, float %5231)  ; Saturate(value)
  %5234 = call float @dx.op.unary.f32(i32 7, float %5232)  ; Saturate(value)
  %5235 = fsub fast float 1.000000e+00, %5233
  %5236 = fsub fast float 1.000000e+00, %5234
  %5237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %5235, float %5236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5238 = extractvalue %dx.types.ResRet.f32 %5237, 0
  %5239 = fcmp fast ugt float %5238, 0.000000e+00
  br i1 %5239, label %5240, label %5253

; <label>:5240                                    ; preds = %5200
  %5241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5242 = extractvalue %dx.types.CBufRet.f32 %5241, 2
  %5243 = fmul fast float %5242, %5238
  %5244 = extractvalue %dx.types.CBufRet.f32 %5241, 3
  %5245 = fadd fast float %5244, %5243
  %5246 = extractvalue %dx.types.CBufRet.f32 %5207, 2
  %5247 = fadd fast float %5245, %5214
  %5248 = fmul fast float %5220, %5208
  %5249 = call float @dx.op.tertiary.f32(i32 46, float %5223, float %5211, float %5248)  ; FMad(a,b,c)
  %5250 = call float @dx.op.tertiary.f32(i32 46, float %5247, float %5246, float %5249)  ; FMad(a,b,c)
  %5251 = fsub fast float %5250, %5214
  %5252 = fsub fast float %5251, %5201
  br label %5253

; <label>:5253                                    ; preds = %5240, %5200, %5183
  %5254 = phi i1 [ true, %5240 ], [ false, %5200 ], [ false, %5183 ]
  %5255 = phi float [ %5252, %5240 ], [ -1.310720e+05, %5200 ], [ -1.310720e+05, %5183 ]
  %5256 = fsub fast float %5255, %147
  %5257 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5258 = select i1 %5254, float %5257, float 1.000000e+00
  br label %5259

; <label>:5259                                    ; preds = %5253, %5155
  %5260 = phi float [ %5258, %5253 ], [ 0.000000e+00, %5155 ]
  %5261 = icmp eq i32 %5181, 3
  %5262 = select i1 %5261, float 1.000000e+00, float %5260
  %5263 = call float @dx.op.binary.f32(i32 35, float %5090, float %5262)  ; FMax(a,b)
  %5264 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5265 = fcmp fast une float %5264, 0.000000e+00
  %5266 = fsub fast float -0.000000e+00, %165
  %5267 = fsub fast float -0.000000e+00, %166
  %5268 = fsub fast float -0.000000e+00, %167
  br i1 %5265, label %5269, label %5431

; <label>:5269                                    ; preds = %5259
  %5270 = call float @dx.op.dot3.f32(i32 55, float %5266, float %5267, float %5268, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %5271 = fmul fast float %5264, 2.500000e+00
  %5272 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5273 = fmul fast float %5264, 0x4013FFFFE0000000
  %5274 = fadd fast float %5273, 0xBFFFFFFFE0000000
  %5275 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5276 = fmul fast float %5264, 0x4004000020000000
  %5277 = fadd fast float %5276, 0xBFF8000040000000
  %5278 = call float @dx.op.unary.f32(i32 7, float %5277)  ; Saturate(value)
  %5279 = call float @dx.op.unary.f32(i32 7, float %5272)  ; Saturate(value)
  %5280 = fmul fast float %5115, 1.000000e+01
  %5281 = call float @dx.op.unary.f32(i32 7, float %5280)  ; Saturate(value)
  %5282 = fmul fast float %5281, 2.000000e+00
  %5283 = fsub fast float 3.000000e+00, %5282
  %5284 = fmul fast float %5281, %5281
  %5285 = fmul fast float %5284, %5283
  %5286 = fsub fast float 1.000000e+00, %5285
  %5287 = fsub fast float 0x3FE3333340000000, %5136
  %5288 = fmul fast float %5287, 0x400AAAAAA0000000
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = fmul fast float %5286, %5289
  %5291 = fmul fast float %5173, 0x3FEA2B8620000000
  %5292 = fmul fast float %5174, 0x3FEA2B8620000000
  %5293 = fmul fast float %5175, 0x3FEA2B8620000000
  %5294 = fadd fast float %5291, 0x3FC81DFBA0000000
  %5295 = fmul fast float %5294, %5173
  %5296 = fadd fast float %5295, 0x3F910E6020000000
  %5297 = fadd fast float %5292, 0x3FC81DFBA0000000
  %5298 = fmul fast float %5297, %5174
  %5299 = fadd fast float %5298, 0x3F910E6020000000
  %5300 = fadd fast float %5293, 0x3FC81DFBA0000000
  %5301 = fmul fast float %5300, %5175
  %5302 = fadd fast float %5301, 0x3F910E6020000000
  %5303 = call float @dx.op.unary.f32(i32 7, float %5296)  ; Saturate(value)
  %5304 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5305 = call float @dx.op.unary.f32(i32 7, float %5302)  ; Saturate(value)
  %5306 = fsub fast float %5303, %5173
  %5307 = fsub fast float %5304, %5174
  %5308 = fsub fast float %5305, %5175
  %5309 = fmul fast float %5306, %5279
  %5310 = fmul fast float %5309, %5290
  %5311 = fmul fast float %5307, %5279
  %5312 = fmul fast float %5311, %5290
  %5313 = fmul fast float %5308, %5279
  %5314 = fmul fast float %5313, %5290
  %5315 = fadd fast float %5310, %5173
  %5316 = fadd fast float %5312, %5174
  %5317 = fadd fast float %5314, %5175
  %5318 = fmul fast float %5087, %5087
  %5319 = fmul fast float %5318, %5318
  %5320 = fadd fast float %5275, 1.000000e+00
  %5321 = fsub fast float %5320, %5290
  %5322 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5323 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5324 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5325 = fsub fast float 1.000000e+00, %5319
  %5326 = call float @dx.op.binary.f32(i32 36, float %5322, float %5325)  ; FMin(a,b)
  %5327 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5328 = call float @dx.op.binary.f32(i32 35, float %5326, float %5327)  ; FMax(a,b)
  %5329 = fadd fast float %5324, 0xBFE4CCCCC0000000
  %5330 = fmul fast float %5329, 0x4006DB6DA0000000
  %5331 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5332 = fmul fast float %5331, 2.000000e+00
  %5333 = fsub fast float 3.000000e+00, %5332
  %5334 = bitcast float %5133 to i32
  %5335 = ashr i32 %5334, 1
  %5336 = add nsw i32 %5335, 532487669
  %5337 = bitcast i32 %5336 to float
  %5338 = fsub fast float 1.000000e+00, %5337
  %5339 = bitcast float %5338 to i32
  %5340 = sub nsw i32 2129859010, %5339
  %5341 = bitcast i32 %5340 to float
  %5342 = fmul fast float %5341, 2.000000e+00
  %5343 = bitcast float %5134 to i32
  %5344 = ashr i32 %5343, 1
  %5345 = add nsw i32 %5344, 532487669
  %5346 = bitcast i32 %5345 to float
  %5347 = fsub fast float 1.000000e+00, %5346
  %5348 = bitcast float %5347 to i32
  %5349 = sub nsw i32 2129859010, %5348
  %5350 = bitcast i32 %5349 to float
  %5351 = fmul fast float %5350, 2.000000e+00
  %5352 = bitcast float %5135 to i32
  %5353 = ashr i32 %5352, 1
  %5354 = add nsw i32 %5353, 532487669
  %5355 = bitcast i32 %5354 to float
  %5356 = fsub fast float 1.000000e+00, %5355
  %5357 = bitcast float %5356 to i32
  %5358 = sub nsw i32 2129859010, %5357
  %5359 = bitcast i32 %5358 to float
  %5360 = fmul fast float %5359, 2.000000e+00
  %5361 = fsub fast float 0x4002A9FBE0000000, %5342
  %5362 = fadd fast float %5342, 0x3FD54FDF00000000
  %5363 = bitcast float %5362 to i32
  %5364 = sub nsw i32 2129859010, %5363
  %5365 = bitcast i32 %5364 to float
  %5366 = fmul fast float %5365, %5361
  %5367 = fmul fast float %5366, %5366
  %5368 = fsub fast float 0x4002A9FBE0000000, %5351
  %5369 = fadd fast float %5351, 0x3FD54FDF00000000
  %5370 = bitcast float %5369 to i32
  %5371 = sub nsw i32 2129859010, %5370
  %5372 = bitcast i32 %5371 to float
  %5373 = fmul fast float %5372, %5368
  %5374 = fmul fast float %5373, %5373
  %5375 = fsub fast float 0x4002A9FBE0000000, %5360
  %5376 = fadd fast float %5360, 0x3FD54FDF00000000
  %5377 = bitcast float %5376 to i32
  %5378 = sub nsw i32 2129859010, %5377
  %5379 = bitcast i32 %5378 to float
  %5380 = fmul fast float %5379, %5375
  %5381 = fmul fast float %5380, %5380
  %5382 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5367)  ; FMax(a,b)
  %5383 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5374)  ; FMax(a,b)
  %5384 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5381)  ; FMax(a,b)
  %5385 = fsub fast float 1.000000e+00, %5270
  %5386 = fadd fast float %5385, %5286
  %5387 = call float @dx.op.unary.f32(i32 7, float %5386)  ; Saturate(value)
  %5388 = fsub fast float 1.000000e+00, %5262
  %5389 = fmul fast float %5328, %5388
  %5390 = fmul fast float %5331, %5331
  %5391 = fmul fast float %5390, %5389
  %5392 = fmul fast float %5391, %5333
  %5393 = fmul fast float %5388, 0xBFE99999A0000000
  %5394 = fmul fast float %5393, %5279
  %5395 = fmul fast float %5394, %5290
  %5396 = fadd fast float %5395, 1.000000e+00
  %5397 = fadd fast float %5136, -1.000000e+00
  %5398 = fmul fast float %5396, %5397
  %5399 = fadd fast float %5398, 1.000000e+00
  %5400 = fsub fast float %5382, %5133
  %5401 = fsub fast float %5383, %5134
  %5402 = fsub fast float %5384, %5135
  %5403 = fmul fast float %5392, %5400
  %5404 = fmul fast float %5392, %5401
  %5405 = fmul fast float %5392, %5402
  %5406 = fadd fast float %5403, %5133
  %5407 = fadd fast float %5404, %5134
  %5408 = fadd fast float %5405, %5135
  %5409 = fsub fast float %97, %5069
  %5410 = fsub fast float %98, %5070
  %5411 = fsub fast float %99, %5071
  %5412 = fmul fast float %5392, %5409
  %5413 = fmul fast float %5392, %5410
  %5414 = fmul fast float %5392, %5411
  %5415 = fadd fast float %5412, %5069
  %5416 = fadd fast float %5413, %5070
  %5417 = fadd fast float %5414, %5071
  %5418 = fmul fast float %5392, %5387
  %5419 = call float @dx.op.unary.f32(i32 7, float %5399)  ; Saturate(value)
  %5420 = fsub fast float 1.000000e+00, %5419
  %5421 = fmul fast float %5418, %5420
  %5422 = fadd fast float %5421, %5419
  %5423 = fsub fast float 1.000000e+00, %5087
  %5424 = fmul fast float %5392, %5423
  %5425 = fadd fast float %5424, %5087
  %5426 = call float @dx.op.dot3.f32(i32 55, float %5415, float %5416, float %5417, float %5415, float %5416, float %5417)  ; Dot3(ax,ay,az,bx,by,bz)
  %5427 = call float @dx.op.unary.f32(i32 25, float %5426)  ; Rsqrt(value)
  %5428 = fmul fast float %5415, %5427
  %5429 = fmul fast float %5416, %5427
  %5430 = fmul fast float %5417, %5427
  br label %5431

; <label>:5431                                    ; preds = %5269, %5259
  %5432 = phi float [ %5406, %5269 ], [ %5133, %5259 ]
  %5433 = phi float [ %5407, %5269 ], [ %5134, %5259 ]
  %5434 = phi float [ %5408, %5269 ], [ %5135, %5259 ]
  %5435 = phi float [ %5315, %5269 ], [ %5173, %5259 ]
  %5436 = phi float [ %5316, %5269 ], [ %5174, %5259 ]
  %5437 = phi float [ %5317, %5269 ], [ %5175, %5259 ]
  %5438 = phi float [ %5428, %5269 ], [ %5069, %5259 ]
  %5439 = phi float [ %5429, %5269 ], [ %5070, %5259 ]
  %5440 = phi float [ %5430, %5269 ], [ %5071, %5259 ]
  %5441 = phi float [ %5422, %5269 ], [ %5136, %5259 ]
  %5442 = phi float [ %5425, %5269 ], [ %5087, %5259 ]
  %5443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5444 = extractvalue %dx.types.CBufRet.f32 %5443, 2
  %5445 = extractvalue %dx.types.CBufRet.f32 %5443, 3
  %5446 = fmul fast float %115, %5444
  %5447 = fmul fast float %117, %5445
  %5448 = fsub fast float 1.000000e+00, %5446
  %5449 = fsub fast float 1.000000e+00, %5447
  %5450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5451 = extractvalue %dx.types.CBufRet.f32 %5450, 0
  %5452 = extractvalue %dx.types.CBufRet.f32 %5450, 1
  %5453 = extractvalue %dx.types.CBufRet.f32 %5450, 2
  %5454 = fmul fast float %5448, %5451
  %5455 = fmul fast float %5448, %5452
  %5456 = fmul fast float %5448, %5453
  %5457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5458 = extractvalue %dx.types.CBufRet.f32 %5457, 0
  %5459 = extractvalue %dx.types.CBufRet.f32 %5457, 1
  %5460 = extractvalue %dx.types.CBufRet.f32 %5457, 2
  %5461 = fmul fast float %5449, %5458
  %5462 = fmul fast float %5449, %5459
  %5463 = fmul fast float %5449, %5460
  %5464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5465 = extractvalue %dx.types.CBufRet.f32 %5464, 0
  %5466 = extractvalue %dx.types.CBufRet.f32 %5464, 1
  %5467 = extractvalue %dx.types.CBufRet.f32 %5464, 2
  %5468 = fadd fast float %5461, %5465
  %5469 = fadd fast float %5468, %5454
  %5470 = fadd fast float %5462, %5466
  %5471 = fadd fast float %5470, %5455
  %5472 = fadd fast float %5463, %5467
  %5473 = fadd fast float %5472, %5456
  %5474 = fmul fast float %5469, %81
  %5475 = fmul fast float %5471, %81
  %5476 = fmul fast float %5473, %81
  %5477 = select i1 %238, float 0.000000e+00, float %5434
  %5478 = call float @dx.op.dot3.f32(i32 55, float %5438, float %5439, float %5440, float %5266, float %5267, float %5268)  ; Dot3(ax,ay,az,bx,by,bz)
  %5479 = call float @dx.op.unary.f32(i32 7, float %5478)  ; Saturate(value)
  %5480 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %5438, float %5439, float %5440)  ; Dot3(ax,ay,az,bx,by,bz)
  %5481 = fmul fast float %5480, 2.000000e+00
  %5482 = fmul fast float %5481, %5438
  %5483 = fmul fast float %5481, %5439
  %5484 = fmul fast float %5481, %5440
  %5485 = fsub fast float %165, %5482
  %5486 = fsub fast float %166, %5483
  %5487 = fsub fast float %167, %5484
  %5488 = call float @dx.op.binary.f32(i32 36, float %5442, float 1.000000e+00)  ; FMin(a,b)
  %5489 = fsub fast float 1.000000e+00, %5442
  %5490 = bitcast float %5489 to i32
  %5491 = sub nsw i32 2129859010, %5490
  %5492 = bitcast i32 %5491 to float
  %5493 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %61)  ; FMax(a,b)
  %5494 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5495 = fcmp fast oeq float %5494, 0.000000e+00
  %5496 = fcmp fast oeq float %5493, 0.000000e+00
  %5497 = or i1 %5496, %5495
  br i1 %5497, label %5527, label %5498

; <label>:5498                                    ; preds = %5431
  %5499 = fsub fast float -0.000000e+00, %64
  %5500 = fsub fast float -0.000000e+00, %62
  %5501 = call float @dx.op.unary.f32(i32 24, float %5494)  ; Sqrt(value)
  %5502 = fdiv fast float %5501, %5493
  %5503 = fcmp fast ogt float %5502, 0x3FFB6F8900000000
  %5504 = select i1 %5503, float 0x3FFB6F8900000000, float %5502
  %5505 = fmul fast float %5504, 0x3FE8A23460000000
  %5506 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5507 = call float @dx.op.binary.f32(i32 35, float %5504, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5508 = fmul fast float %5506, %5493
  %5509 = fmul fast float %5507, 0x3FF279A740000000
  %5510 = fadd fast float %5509, -1.000000e+00
  %5511 = call float @dx.op.dot3.f32(i32 55, float %5499, float %5500, float %63, float %5499, float %5500, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5512 = call float @dx.op.unary.f32(i32 25, float %5511)  ; Rsqrt(value)
  %5513 = fmul fast float %5512, %5499
  %5514 = fmul fast float %5512, %5500
  %5515 = fmul fast float %5512, %63
  %5516 = fmul fast float %5510, %5510
  %5517 = fsub fast float 1.000000e+00, %5516
  %5518 = fmul fast float %5507, 0x40005F8BE0000000
  %5519 = fsub fast float 0x400C5BF8A0000000, %5518
  %5520 = fdiv fast float %5508, %5519
  %5521 = fmul fast float %5520, 0x3FEE31C3C0000000
  %5522 = fmul fast float %5521, %5517
  %5523 = fmul fast float %5507, 0x3FDACB7480000000
  %5524 = fadd fast float %5523, 0xBFD7347680000000
  %5525 = fmul fast float %5524, %5520
  %5526 = fmul fast float %5525, %5517
  br label %5527

; <label>:5527                                    ; preds = %5498, %5431
  %5528 = phi float [ %5513, %5498 ], [ 0.000000e+00, %5431 ]
  %5529 = phi float [ %5514, %5498 ], [ 0.000000e+00, %5431 ]
  %5530 = phi float [ %5515, %5498 ], [ 0.000000e+00, %5431 ]
  %5531 = phi float [ %5522, %5498 ], [ 0.000000e+00, %5431 ]
  %5532 = phi float [ %5526, %5498 ], [ 0.000000e+00, %5431 ]
  %5533 = call float @dx.op.dot3.f32(i32 55, float %5528, float %5529, float %5530, float %5438, float %5439, float %5440)  ; Dot3(ax,ay,az,bx,by,bz)
  %5534 = fmul fast float %5533, %5533
  %5535 = fmul fast float %5534, 0x3FEE471020000000
  %5536 = fadd fast float %5535, 0xBFD42F6020000000
  %5537 = fmul fast float %5493, 0x3FD20DD760000000
  %5538 = fmul fast float %5536, %5532
  %5539 = fmul fast float %5531, 0x3FDF454380000000
  %5540 = fmul fast float %5539, %5533
  %5541 = fadd fast float %5540, %5537
  %5542 = fadd fast float %5541, %5538
  %5543 = call float @dx.op.dot3.f32(i32 55, float %5528, float %5529, float %5530, float %5485, float %5486, float %5487)  ; Dot3(ax,ay,az,bx,by,bz)
  %5544 = fmul fast float %5543, 0x3FDF454380000000
  %5545 = fmul fast float %5543, %5543
  %5546 = fmul fast float %5545, 0x3FEE471020000000
  %5547 = fadd fast float %5546, 0xBFD42F6020000000
  %5548 = call float @dx.op.dot3.f32(i32 55, float %5493, float %5531, float %5532, float 0x3FD20DD760000000, float %5544, float %5547)  ; Dot3(ax,ay,az,bx,by,bz)
  %5549 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %57)  ; FMax(a,b)
  %5550 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5551 = fcmp fast oeq float %5550, 0.000000e+00
  %5552 = fcmp fast oeq float %5549, 0.000000e+00
  %5553 = or i1 %5552, %5551
  br i1 %5553, label %5583, label %5554

; <label>:5554                                    ; preds = %5527
  %5555 = fsub fast float -0.000000e+00, %60
  %5556 = fsub fast float -0.000000e+00, %58
  %5557 = call float @dx.op.unary.f32(i32 24, float %5550)  ; Sqrt(value)
  %5558 = fdiv fast float %5557, %5549
  %5559 = fcmp fast ogt float %5558, 0x3FFB6F8900000000
  %5560 = select i1 %5559, float 0x3FFB6F8900000000, float %5558
  %5561 = fmul fast float %5560, 0x3FE8A23460000000
  %5562 = call float @dx.op.unary.f32(i32 7, float %5561)  ; Saturate(value)
  %5563 = call float @dx.op.binary.f32(i32 35, float %5560, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5564 = fmul fast float %5562, %5549
  %5565 = fmul fast float %5563, 0x3FF279A740000000
  %5566 = fadd fast float %5565, -1.000000e+00
  %5567 = call float @dx.op.dot3.f32(i32 55, float %5555, float %5556, float %59, float %5555, float %5556, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %5568 = call float @dx.op.unary.f32(i32 25, float %5567)  ; Rsqrt(value)
  %5569 = fmul fast float %5568, %5555
  %5570 = fmul fast float %5568, %5556
  %5571 = fmul fast float %5568, %59
  %5572 = fmul fast float %5566, %5566
  %5573 = fsub fast float 1.000000e+00, %5572
  %5574 = fmul fast float %5563, 0x40005F8BE0000000
  %5575 = fsub fast float 0x400C5BF8A0000000, %5574
  %5576 = fdiv fast float %5564, %5575
  %5577 = fmul fast float %5576, 0x3FEE31C3C0000000
  %5578 = fmul fast float %5577, %5573
  %5579 = fmul fast float %5563, 0x3FDACB7480000000
  %5580 = fadd fast float %5579, 0xBFD7347680000000
  %5581 = fmul fast float %5580, %5576
  %5582 = fmul fast float %5581, %5573
  br label %5583

; <label>:5583                                    ; preds = %5554, %5527
  %5584 = phi float [ %5569, %5554 ], [ 0.000000e+00, %5527 ]
  %5585 = phi float [ %5570, %5554 ], [ 0.000000e+00, %5527 ]
  %5586 = phi float [ %5571, %5554 ], [ 0.000000e+00, %5527 ]
  %5587 = phi float [ %5578, %5554 ], [ 0.000000e+00, %5527 ]
  %5588 = phi float [ %5582, %5554 ], [ 0.000000e+00, %5527 ]
  %5589 = call float @dx.op.dot3.f32(i32 55, float %5584, float %5585, float %5586, float %5438, float %5439, float %5440)  ; Dot3(ax,ay,az,bx,by,bz)
  %5590 = fmul fast float %5589, %5589
  %5591 = fmul fast float %5590, 0x3FEE471020000000
  %5592 = fadd fast float %5591, 0xBFD42F6020000000
  %5593 = fmul fast float %5549, 0x3FD20DD760000000
  %5594 = fmul fast float %5592, %5588
  %5595 = fmul fast float %5587, 0x3FDF454380000000
  %5596 = fmul fast float %5595, %5589
  %5597 = fadd fast float %5596, %5593
  %5598 = fadd fast float %5597, %5594
  %5599 = call float @dx.op.dot3.f32(i32 55, float %5584, float %5585, float %5586, float %5485, float %5486, float %5487)  ; Dot3(ax,ay,az,bx,by,bz)
  %5600 = fmul fast float %5599, 0x3FDF454380000000
  %5601 = fmul fast float %5599, %5599
  %5602 = fmul fast float %5601, 0x3FEE471020000000
  %5603 = fadd fast float %5602, 0xBFD42F6020000000
  %5604 = call float @dx.op.dot3.f32(i32 55, float %5549, float %5587, float %5588, float 0x3FD20DD760000000, float %5600, float %5603)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %53)  ; FMax(a,b)
  %5606 = call float @dx.op.dot3.f32(i32 55, float %54, float %55, float %56, float %54, float %55, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = fcmp fast oeq float %5606, 0.000000e+00
  %5608 = fcmp fast oeq float %5605, 0.000000e+00
  %5609 = or i1 %5608, %5607
  br i1 %5609, label %5639, label %5610

; <label>:5610                                    ; preds = %5583
  %5611 = fsub fast float -0.000000e+00, %56
  %5612 = fsub fast float -0.000000e+00, %54
  %5613 = call float @dx.op.unary.f32(i32 24, float %5606)  ; Sqrt(value)
  %5614 = fdiv fast float %5613, %5605
  %5615 = fcmp fast ogt float %5614, 0x3FFB6F8900000000
  %5616 = select i1 %5615, float 0x3FFB6F8900000000, float %5614
  %5617 = fmul fast float %5616, 0x3FE8A23460000000
  %5618 = call float @dx.op.unary.f32(i32 7, float %5617)  ; Saturate(value)
  %5619 = call float @dx.op.binary.f32(i32 35, float %5616, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5620 = fmul fast float %5618, %5605
  %5621 = fmul fast float %5619, 0x3FF279A740000000
  %5622 = fadd fast float %5621, -1.000000e+00
  %5623 = call float @dx.op.dot3.f32(i32 55, float %5611, float %5612, float %55, float %5611, float %5612, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %5624 = call float @dx.op.unary.f32(i32 25, float %5623)  ; Rsqrt(value)
  %5625 = fmul fast float %5624, %5611
  %5626 = fmul fast float %5624, %5612
  %5627 = fmul fast float %5624, %55
  %5628 = fmul fast float %5622, %5622
  %5629 = fsub fast float 1.000000e+00, %5628
  %5630 = fmul fast float %5619, 0x40005F8BE0000000
  %5631 = fsub fast float 0x400C5BF8A0000000, %5630
  %5632 = fdiv fast float %5620, %5631
  %5633 = fmul fast float %5632, 0x3FEE31C3C0000000
  %5634 = fmul fast float %5633, %5629
  %5635 = fmul fast float %5619, 0x3FDACB7480000000
  %5636 = fadd fast float %5635, 0xBFD7347680000000
  %5637 = fmul fast float %5636, %5632
  %5638 = fmul fast float %5637, %5629
  br label %5639

; <label>:5639                                    ; preds = %5610, %5583
  %5640 = phi float [ %5625, %5610 ], [ 0.000000e+00, %5583 ]
  %5641 = phi float [ %5626, %5610 ], [ 0.000000e+00, %5583 ]
  %5642 = phi float [ %5627, %5610 ], [ 0.000000e+00, %5583 ]
  %5643 = phi float [ %5634, %5610 ], [ 0.000000e+00, %5583 ]
  %5644 = phi float [ %5638, %5610 ], [ 0.000000e+00, %5583 ]
  %5645 = call float @dx.op.dot3.f32(i32 55, float %5640, float %5641, float %5642, float %5438, float %5439, float %5440)  ; Dot3(ax,ay,az,bx,by,bz)
  %5646 = fmul fast float %5645, %5645
  %5647 = fmul fast float %5646, 0x3FEE471020000000
  %5648 = fadd fast float %5647, 0xBFD42F6020000000
  %5649 = fmul fast float %5605, 0x3FD20DD760000000
  %5650 = fmul fast float %5648, %5644
  %5651 = fmul fast float %5643, 0x3FDF454380000000
  %5652 = fmul fast float %5651, %5645
  %5653 = fadd fast float %5652, %5649
  %5654 = fadd fast float %5653, %5650
  %5655 = call float @dx.op.dot3.f32(i32 55, float %5640, float %5641, float %5642, float %5485, float %5486, float %5487)  ; Dot3(ax,ay,az,bx,by,bz)
  %5656 = fmul fast float %5655, 0x3FDF454380000000
  %5657 = fmul fast float %5655, %5655
  %5658 = fmul fast float %5657, 0x3FEE471020000000
  %5659 = fadd fast float %5658, 0xBFD42F6020000000
  %5660 = call float @dx.op.dot3.f32(i32 55, float %5605, float %5643, float %5644, float 0x3FD20DD760000000, float %5656, float %5659)  ; Dot3(ax,ay,az,bx,by,bz)
  %5661 = call float @dx.op.binary.f32(i32 35, float %5542, float 0.000000e+00)  ; FMax(a,b)
  %5662 = call float @dx.op.binary.f32(i32 35, float %5598, float 0.000000e+00)  ; FMax(a,b)
  %5663 = call float @dx.op.binary.f32(i32 35, float %5654, float 0.000000e+00)  ; FMax(a,b)
  %5664 = call float @dx.op.binary.f32(i32 35, float %5548, float 0.000000e+00)  ; FMax(a,b)
  %5665 = call float @dx.op.binary.f32(i32 35, float %5604, float 0.000000e+00)  ; FMax(a,b)
  %5666 = call float @dx.op.binary.f32(i32 35, float %5660, float 0.000000e+00)  ; FMax(a,b)
  %5667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5668 = extractvalue %dx.types.CBufRet.f32 %5667, 0
  %5669 = call float @dx.op.binary.f32(i32 36, float %5435, float %5668)  ; FMin(a,b)
  %5670 = fsub fast float 1.000000e+00, %5488
  %5671 = fmul fast float %5669, %5670
  %5672 = fsub fast float 1.000000e+00, %5671
  %5673 = bitcast float %5672 to i32
  %5674 = sub nsw i32 2129859010, %5673
  %5675 = bitcast i32 %5674 to float
  %5676 = call float @dx.op.binary.f32(i32 36, float %5436, float %5668)  ; FMin(a,b)
  %5677 = fmul fast float %5676, %5670
  %5678 = fsub fast float 1.000000e+00, %5677
  %5679 = bitcast float %5678 to i32
  %5680 = sub nsw i32 2129859010, %5679
  %5681 = bitcast i32 %5680 to float
  %5682 = call float @dx.op.binary.f32(i32 36, float %5437, float %5668)  ; FMin(a,b)
  %5683 = fmul fast float %5682, %5670
  %5684 = fsub fast float 1.000000e+00, %5683
  %5685 = bitcast float %5684 to i32
  %5686 = sub nsw i32 2129859010, %5685
  %5687 = bitcast i32 %5686 to float
  %5688 = fmul fast float %5661, %5488
  %5689 = fmul fast float %5688, %5675
  %5690 = fmul fast float %5662, %5488
  %5691 = fmul fast float %5690, %5681
  %5692 = fmul fast float %5663, %5488
  %5693 = fmul fast float %5692, %5687
  %5694 = call float @dx.op.binary.f32(i32 36, float %5432, float %5668)  ; FMin(a,b)
  %5695 = fmul fast float %5694, %5670
  %5696 = fsub fast float 1.000000e+00, %5695
  %5697 = bitcast float %5696 to i32
  %5698 = sub nsw i32 2129859010, %5697
  %5699 = bitcast i32 %5698 to float
  %5700 = call float @dx.op.binary.f32(i32 36, float %5433, float %5668)  ; FMin(a,b)
  %5701 = fmul fast float %5700, %5670
  %5702 = fsub fast float 1.000000e+00, %5701
  %5703 = bitcast float %5702 to i32
  %5704 = sub nsw i32 2129859010, %5703
  %5705 = bitcast i32 %5704 to float
  %5706 = call float @dx.op.binary.f32(i32 36, float %5477, float %5668)  ; FMin(a,b)
  %5707 = fmul fast float %5706, %5670
  %5708 = fsub fast float 1.000000e+00, %5707
  %5709 = bitcast float %5708 to i32
  %5710 = sub nsw i32 2129859010, %5709
  %5711 = bitcast i32 %5710 to float
  %5712 = fmul fast float %5664, %5488
  %5713 = fmul fast float %5712, %5699
  %5714 = fmul fast float %5665, %5488
  %5715 = fmul fast float %5714, %5705
  %5716 = fmul fast float %5666, %5488
  %5717 = fmul fast float %5716, %5711
  %5718 = call float @dx.op.dot3.f32(i32 55, float %5689, float %5691, float %5693, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5719 = select i1 %238, float 0.000000e+00, float %5689
  %5720 = select i1 %238, float %5718, float %5691
  %5721 = select i1 %238, float 0.000000e+00, float %5693
  %5722 = call float @dx.op.dot3.f32(i32 55, float %5713, float %5715, float %5717, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5723 = select i1 %238, float 0.000000e+00, float %5713
  %5724 = select i1 %238, float %5722, float %5715
  %5725 = select i1 %238, float 0.000000e+00, float %5717
  %5726 = fmul fast float %4442, %4442
  %5727 = call float @dx.op.unary.f32(i32 7, float %5726)  ; Saturate(value)
  %5728 = fmul fast float %5479, 9.843750e-01
  %5729 = fmul fast float %5441, 9.843750e-01
  %5730 = fadd fast float %5728, 7.812500e-03
  %5731 = fadd fast float %5729, 7.812500e-03
  %5732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %38, float %5730, float %5731, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5733 = extractvalue %dx.types.ResRet.f32 %5732, 0
  %5734 = extractvalue %dx.types.ResRet.f32 %5732, 1
  %5735 = extractvalue %dx.types.ResRet.f32 %5732, 2
  %5736 = extractvalue %dx.types.ResRet.f32 %5732, 3
  %5737 = fsub fast float 1.000000e+00, %5727
  %5738 = fsub fast float %5735, %5733
  %5739 = fsub fast float %5736, %5734
  %5740 = fmul fast float %5738, %5737
  %5741 = fmul fast float %5739, %5737
  %5742 = fadd fast float %5740, %5733
  %5743 = fadd fast float %5741, %5734
  %5744 = fmul fast float %5742, %5432
  %5745 = fmul fast float %5742, %5433
  %5746 = fmul fast float %5742, %5477
  %5747 = fadd fast float %5744, %5743
  %5748 = fadd fast float %5745, %5743
  %5749 = fadd fast float %5746, %5743
  %5750 = fcmp fast ogt float %5088, 0.000000e+00
  br i1 %5750, label %5751, label %5777

; <label>:5751                                    ; preds = %5639
  %5752 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %5088, float %5479, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5753 = extractvalue %dx.types.ResRet.f32 %5752, 0
  %5754 = extractvalue %dx.types.ResRet.f32 %5752, 1
  %5755 = extractvalue %dx.types.ResRet.f32 %5752, 2
  %5756 = fadd fast float %5753, -5.000000e-01
  %5757 = fadd fast float %5754, -5.000000e-01
  %5758 = fadd fast float %5755, -5.000000e-01
  %5759 = fsub fast float 1.000000e+00, %5432
  %5760 = fsub fast float 1.000000e+00, %5433
  %5761 = fsub fast float 1.000000e+00, %5477
  %5762 = fmul fast float %5432, 4.000000e+00
  %5763 = fmul fast float %5762, %5759
  %5764 = fmul fast float %5763, %5756
  %5765 = fmul fast float %5433, 4.000000e+00
  %5766 = fmul fast float %5765, %5760
  %5767 = fmul fast float %5766, %5757
  %5768 = fmul fast float %5477, 4.000000e+00
  %5769 = fmul fast float %5768, %5761
  %5770 = fmul fast float %5769, %5758
  %5771 = fadd fast float %5764, %5747
  %5772 = fadd fast float %5767, %5748
  %5773 = fadd fast float %5770, %5749
  %5774 = call float @dx.op.unary.f32(i32 7, float %5771)  ; Saturate(value)
  %5775 = call float @dx.op.unary.f32(i32 7, float %5772)  ; Saturate(value)
  %5776 = call float @dx.op.unary.f32(i32 7, float %5773)  ; Saturate(value)
  br label %5777

; <label>:5777                                    ; preds = %5751, %5639
  %5778 = phi float [ %5774, %5751 ], [ %5747, %5639 ]
  %5779 = phi float [ %5775, %5751 ], [ %5748, %5639 ]
  %5780 = phi float [ %5776, %5751 ], [ %5749, %5639 ]
  %5781 = call float @dx.op.binary.f32(i32 35, float %5779, float %5780)  ; FMax(a,b)
  %5782 = call float @dx.op.binary.f32(i32 35, float %5778, float %5781)  ; FMax(a,b)
  %5783 = fsub fast float 1.000000e+00, %5782
  %5784 = fmul fast float %5783, %5719
  %5785 = fmul fast float %5783, %5720
  %5786 = fmul fast float %5783, %5721
  %5787 = call float @dx.op.dot3.f32(i32 55, float %5435, float %5436, float %5437, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5788 = fcmp fast ogt float %5787, 0x3E7FF19E20000000
  %5789 = fdiv fast float 1.000000e+00, %5787
  %5790 = select i1 %5788, float %5789, float 0.000000e+00
  %5791 = fmul fast float %5790, %5435
  %5792 = fmul fast float %5790, %5436
  %5793 = fmul fast float %5790, %5437
  %5794 = fadd fast float %5791, -1.000000e+00
  %5795 = fadd fast float %5792, -1.000000e+00
  %5796 = fadd fast float %5793, -1.000000e+00
  %5797 = fmul fast float %5794, 5.000000e-01
  %5798 = fmul fast float %5795, 5.000000e-01
  %5799 = fmul fast float %5796, 5.000000e-01
  %5800 = fadd fast float %5797, 1.000000e+00
  %5801 = fadd fast float %5798, 1.000000e+00
  %5802 = fadd fast float %5799, 1.000000e+00
  %5803 = call float @dx.op.binary.f32(i32 35, float %5479, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5804 = fdiv fast float %4442, %5803
  %5805 = fcmp fast olt float %5159, 1.270000e+02
  %5806 = fcmp fast olt float %5160, 1.270000e+02
  %5807 = fcmp fast olt float %5161, 1.270000e+02
  %5808 = fmul fast float %5159, 0xBFF7154760000000
  %5809 = fmul fast float %5808, %5804
  %5810 = fmul fast float %5160, 0xBFF7154760000000
  %5811 = fmul fast float %5810, %5804
  %5812 = fmul fast float %5161, 0xBFF7154760000000
  %5813 = fmul fast float %5812, %5804
  %5814 = call float @dx.op.unary.f32(i32 21, float %5809)  ; Exp(value)
  %5815 = call float @dx.op.unary.f32(i32 21, float %5811)  ; Exp(value)
  %5816 = call float @dx.op.unary.f32(i32 21, float %5813)  ; Exp(value)
  %5817 = call float @dx.op.unary.f32(i32 7, float %5814)  ; Saturate(value)
  %5818 = call float @dx.op.unary.f32(i32 7, float %5815)  ; Saturate(value)
  %5819 = call float @dx.op.unary.f32(i32 7, float %5816)  ; Saturate(value)
  %5820 = select i1 %5805, float %5817, float 0.000000e+00
  %5821 = select i1 %5806, float %5818, float 0.000000e+00
  %5822 = select i1 %5807, float %5819, float 0.000000e+00
  %5823 = fmul fast float %5820, %5783
  %5824 = fmul fast float %5821, %5783
  %5825 = fmul fast float %5822, %5783
  %5826 = fadd fast float %5823, -1.000000e+00
  %5827 = fadd fast float %5824, -1.000000e+00
  %5828 = fadd fast float %5825, -1.000000e+00
  %5829 = fmul fast float %5826, %5114
  %5830 = fmul fast float %5827, %5114
  %5831 = fmul fast float %5828, %5114
  %5832 = fadd fast float %5829, 1.000000e+00
  %5833 = fadd fast float %5830, 1.000000e+00
  %5834 = fadd fast float %5831, 1.000000e+00
  %5835 = fmul fast float %5433, 0x401CF23780000000
  %5836 = fadd fast float %5835, 0x3FF32641C0000000
  %5837 = fdiv fast float 1.000000e+00, %5836
  %5838 = call float @dx.op.dot3.f32(i32 55, float %5266, float %5267, float %5268, float %5438, float %5439, float %5440)  ; Dot3(ax,ay,az,bx,by,bz)
  %5839 = fmul fast float %5837, %5837
  %5840 = fmul fast float %5838, %5838
  %5841 = fsub fast float 1.000000e+00, %5840
  %5842 = fmul fast float %5839, %5841
  %5843 = fsub fast float 1.000000e+00, %5842
  %5844 = fcmp fast oge float %5843, 0.000000e+00
  %5845 = fmul fast float %5837, %5266
  %5846 = fmul fast float %5837, %5267
  %5847 = fmul fast float %5837, %5268
  %5848 = call float @dx.op.unary.f32(i32 24, float %5843)  ; Sqrt(value)
  %5849 = fmul fast float %5838, %5837
  %5850 = fadd fast float %5849, %5848
  %5851 = fmul fast float %5850, %5438
  %5852 = fmul fast float %5850, %5439
  %5853 = fmul fast float %5850, %5440
  %5854 = fsub fast float %5845, %5851
  %5855 = fsub fast float %5846, %5852
  %5856 = fsub fast float %5847, %5853
  %5857 = select i1 %5844, float %5854, float 0.000000e+00
  %5858 = select i1 %5844, float %5855, float 0.000000e+00
  %5859 = select i1 %5844, float %5856, float 0.000000e+00
  %5860 = fmul fast float %5857, %4442
  %5861 = fmul fast float %5858, %4442
  %5862 = fmul fast float %5859, %4442
  %5863 = fadd fast float %5860, %5474
  %5864 = fadd fast float %5861, %5475
  %5865 = fadd fast float %5862, %5476
  %5866 = call float @dx.op.dot3.f32(i32 55, float %5177, float %5178, float %5179, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5867 = fsub fast float 1.000000e+00, %5441
  %5868 = fmul fast float %5867, %5114
  %5869 = fsub fast float 1.000000e+00, %5868
  %5870 = call float @dx.op.unary.f32(i32 7, float %5869)  ; Saturate(value)
  %5871 = fsub fast float 1.000000e+00, %5870
  %5872 = fmul fast float %5433, 0x4012D0A400000000
  %5873 = fadd fast float %5872, 0x3FDB6377A0000000
  %5874 = fmul fast float %5871, %5873
  %5875 = fadd fast float %5874, %5866
  %5876 = call float @dx.op.unary.f32(i32 7, float %5875)  ; Saturate(value)
  %5877 = fmul fast float %5778, %5723
  %5878 = fmul fast float %5779, %5724
  %5879 = fmul fast float %5780, %5725
  %5880 = fsub fast float 1.000000e+00, %5479
  %5881 = bitcast float %5880 to i32
  %5882 = sitofp i32 %5881 to float
  %5883 = fmul fast float %5882, 5.000000e+00
  %5884 = fadd fast float %5883, 0xC1EFBF8940000000
  %5885 = fptosi float %5884 to i32
  %5886 = bitcast i32 %5885 to float
  %5887 = fmul fast float %5886, %5089
  %5888 = fmul fast float %5719, %5887
  %5889 = fmul fast float %5888, %5783
  %5890 = fmul fast float %5889, %5800
  %5891 = fmul fast float %5720, %5887
  %5892 = fmul fast float %5891, %5783
  %5893 = fmul fast float %5892, %5801
  %5894 = fmul fast float %5721, %5887
  %5895 = fmul fast float %5894, %5783
  %5896 = fmul fast float %5895, %5802
  %5897 = fmul fast float %5784, %5114
  %5898 = fmul fast float %5785, %5114
  %5899 = fmul fast float %5786, %5114
  %5900 = fsub fast float 1.000000e+00, %5876
  %5901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5901, 0
  %5903 = extractvalue %dx.types.CBufRet.f32 %5901, 1
  %5904 = extractvalue %dx.types.CBufRet.f32 %5901, 2
  %5905 = extractvalue %dx.types.CBufRet.f32 %5901, 3
  %5906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5907 = extractvalue %dx.types.CBufRet.f32 %5906, 0
  %5908 = extractvalue %dx.types.CBufRet.f32 %5906, 1
  %5909 = extractvalue %dx.types.CBufRet.f32 %5906, 2
  %5910 = extractvalue %dx.types.CBufRet.f32 %5906, 3
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 0
  %5913 = extractvalue %dx.types.CBufRet.f32 %5911, 1
  %5914 = extractvalue %dx.types.CBufRet.f32 %5911, 2
  %5915 = extractvalue %dx.types.CBufRet.f32 %5911, 3
  %5916 = fmul fast float %5863, %5902
  %5917 = call float @dx.op.tertiary.f32(i32 46, float %5864, float %5903, float %5916)  ; FMad(a,b,c)
  %5918 = call float @dx.op.tertiary.f32(i32 46, float %5865, float %5904, float %5917)  ; FMad(a,b,c)
  %5919 = fadd fast float %5918, %5905
  %5920 = fmul fast float %5863, %5907
  %5921 = call float @dx.op.tertiary.f32(i32 46, float %5864, float %5908, float %5920)  ; FMad(a,b,c)
  %5922 = call float @dx.op.tertiary.f32(i32 46, float %5865, float %5909, float %5921)  ; FMad(a,b,c)
  %5923 = fadd fast float %5922, %5910
  %5924 = fmul fast float %5863, %5912
  %5925 = call float @dx.op.tertiary.f32(i32 46, float %5864, float %5913, float %5924)  ; FMad(a,b,c)
  %5926 = call float @dx.op.tertiary.f32(i32 46, float %5865, float %5914, float %5925)  ; FMad(a,b,c)
  %5927 = fadd fast float %5926, %5915
  %5928 = fdiv fast float %5919, %5927
  %5929 = fdiv fast float %5923, %5927
  %5930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5931 = extractvalue %dx.types.CBufRet.f32 %5930, 0
  %5932 = extractvalue %dx.types.CBufRet.f32 %5930, 1
  %5933 = fmul fast float %5931, %5928
  %5934 = fmul fast float %5932, %5929
  %5935 = extractvalue %dx.types.CBufRet.f32 %5930, 2
  %5936 = extractvalue %dx.types.CBufRet.f32 %5930, 3
  %5937 = fadd fast float %5933, %5935
  %5938 = fadd fast float %5934, %5936
  %5939 = call float @dx.op.unary.f32(i32 7, float %5937)  ; Saturate(value)
  %5940 = call float @dx.op.unary.f32(i32 7, float %5938)  ; Saturate(value)
  %5941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5942 = extractvalue %dx.types.CBufRet.f32 %5941, 0
  %5943 = extractvalue %dx.types.CBufRet.f32 %5941, 1
  %5944 = fmul fast float %5942, %5939
  %5945 = fmul fast float %5943, %5940
  %5946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5947 = extractvalue %dx.types.CBufRet.f32 %5946, 1
  %5948 = extractvalue %dx.types.CBufRet.f32 %5946, 2
  %5949 = fsub fast float %5947, %5948
  %5950 = fmul fast float %5949, %5900
  %5951 = fadd fast float %5950, %5948
  %5952 = fmul fast float %251, 2.000000e+00
  %5953 = fmul fast float %252, 2.000000e+00
  %5954 = fadd fast float %5952, -1.000000e+00
  %5955 = fadd fast float %5953, -1.000000e+00
  %5956 = fmul fast float %5951, %5954
  %5957 = fmul fast float %5951, %5955
  %5958 = fadd fast float %5956, %5944
  %5959 = fadd fast float %5957, %5945
  %5960 = extractvalue %dx.types.CBufRet.f32 %5941, 2
  %5961 = extractvalue %dx.types.CBufRet.f32 %5941, 3
  %5962 = fmul fast float %5958, %5960
  %5963 = fmul fast float %5959, %5961
  %5964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %39, float %5962, float %5963, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5965 = extractvalue %dx.types.ResRet.f32 %5964, 0
  %5966 = fcmp fast ogt float %5965, -1.000000e+00
  %5967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5968 = extractvalue %dx.types.CBufRet.f32 %5967, 1
  %5969 = select i1 %5966, float %5968, float 1.000000e+00
  %5970 = fadd fast float %5965, 1.000000e+00
  %5971 = fmul fast float %5969, %5970
  %5972 = call float @dx.op.unary.f32(i32 6, float %5971)  ; FAbs(value)
  %5973 = fsub fast float %5972, %5927
  %5974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5975 = extractvalue %dx.types.CBufRet.f32 %5974, 2
  %5976 = fmul fast float %5975, %5972
  %5977 = fdiv fast float 1.600000e+02, %5976
  %5978 = fmul fast float %5876, %5876
  %5979 = fmul fast float %5978, 0xBFB5B17960000000
  %5980 = fmul fast float %5979, %5973
  %5981 = fmul fast float %5980, %5977
  %5982 = call float @dx.op.unary.f32(i32 21, float %5981)  ; Exp(value)
  %5983 = fmul fast float %5982, 0x3FF04B2960000000
  %5984 = fsub fast float 0x3FF04B2960000000, %5983
  %5985 = call float @dx.op.unary.f32(i32 7, float %5984)  ; Saturate(value)
  %5986 = fmul fast float %5985, 4.000000e+00
  %5987 = fadd fast float %251, -5.000000e-01
  %5988 = fadd fast float %252, -5.000000e-01
  %5989 = fmul fast float %5985, 0x3FBEB851E0000000
  %5990 = call float @dx.op.unary.f32(i32 7, float %5989)  ; Saturate(value)
  %5991 = fmul fast float %5990, %5987
  %5992 = fmul fast float %5990, %5988
  %5993 = fadd fast float %5991, %5937
  %5994 = fadd fast float %5992, %5938
  %5995 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %5996 = extractvalue %dx.types.CBufRet.i32 %5995, 0
  %5997 = icmp eq i32 %5996, 0
  br i1 %5997, label %6003, label %5998, !dx.controlflow.hints !83

; <label>:5998                                    ; preds = %5777
  %5999 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %5993, float %5994, float undef, float undef, i32 0, i32 0, i32 undef, float %5986)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6000 = extractvalue %dx.types.ResRet.f32 %5999, 0
  %6001 = extractvalue %dx.types.ResRet.f32 %5999, 1
  %6002 = extractvalue %dx.types.ResRet.f32 %5999, 2
  br label %6008

; <label>:6003                                    ; preds = %5777
  %6004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %36, float %5993, float %5994, float undef, float undef, i32 0, i32 0, i32 undef, float %5986)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6005 = extractvalue %dx.types.ResRet.f32 %6004, 0
  %6006 = extractvalue %dx.types.ResRet.f32 %6004, 1
  %6007 = extractvalue %dx.types.ResRet.f32 %6004, 2
  br label %6008

; <label>:6008                                    ; preds = %6003, %5998
  %6009 = phi float [ %6000, %5998 ], [ %6005, %6003 ]
  %6010 = phi float [ %6001, %5998 ], [ %6006, %6003 ]
  %6011 = phi float [ %6002, %5998 ], [ %6007, %6003 ]
  %6012 = select i1 %238, float 0.000000e+00, float %6010
  %6013 = select i1 %238, float 0.000000e+00, float %6011
  %6014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6015 = extractvalue %dx.types.CBufRet.f32 %6014, 1
  %6016 = fmul fast float %6009, %5832
  %6017 = fmul fast float %6016, %6015
  %6018 = fmul fast float %6012, %5833
  %6019 = fmul fast float %6018, %6015
  %6020 = fmul fast float %6013, %5834
  %6021 = fmul fast float %6020, %6015
  %6022 = fadd fast float %5877, %5075
  %6023 = fadd fast float %6022, %5890
  %6024 = fadd fast float %6023, %6017
  %6025 = fmul fast float %6024, %5114
  %6026 = fadd fast float %5878, %5076
  %6027 = fadd fast float %6026, %5893
  %6028 = fadd fast float %6027, %6019
  %6029 = fmul fast float %6028, %5114
  %6030 = fadd fast float %5879, %5077
  %6031 = fadd fast float %6030, %5896
  %6032 = fadd fast float %6031, %6021
  %6033 = fmul fast float %6032, %5114
  %6034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6035 = extractvalue %dx.types.CBufRet.f32 %6034, 3
  %6036 = fcmp fast oeq float %6035, 0.000000e+00
  br i1 %6036, label %7166, label %6037

; <label>:6037                                    ; preds = %6008
  %6038 = extractvalue %dx.types.CBufRet.f32 %6034, 0
  %6039 = extractvalue %dx.types.CBufRet.f32 %6034, 1
  %6040 = extractvalue %dx.types.CBufRet.f32 %6034, 2
  %6041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6042 = extractvalue %dx.types.CBufRet.f32 %6041, 0
  %6043 = extractvalue %dx.types.CBufRet.f32 %6041, 1
  %6044 = extractvalue %dx.types.CBufRet.f32 %6041, 2
  %6045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6046 = extractvalue %dx.types.CBufRet.f32 %6045, 0
  %6047 = extractvalue %dx.types.CBufRet.f32 %6045, 1
  %6048 = call float @dx.op.dot3.f32(i32 55, float %6042, float %6043, float %6044, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6049 = select i1 %238, float %6046, float %6042
  %6050 = select i1 %238, float %6048, float %6043
  %6051 = select i1 %238, float %6047, float %6044
  %6052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6053 = extractvalue %dx.types.CBufRet.f32 %6052, 2
  %6054 = fmul fast float %6053, %97
  %6055 = fmul fast float %6053, %98
  %6056 = fmul fast float %6053, %99
  %6057 = fadd fast float %6054, %145
  %6058 = fadd fast float %6055, %146
  %6059 = fadd fast float %6056, %147
  %6060 = fcmp fast olt float %6035, 0.000000e+00
  br i1 %6060, label %6685, label %6061

; <label>:6061                                    ; preds = %6037
  %6062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6063 = extractvalue %dx.types.CBufRet.f32 %6062, 0
  %6064 = extractvalue %dx.types.CBufRet.f32 %6062, 1
  %6065 = extractvalue %dx.types.CBufRet.f32 %6062, 2
  %6066 = extractvalue %dx.types.CBufRet.f32 %6062, 3
  %6067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6068 = extractvalue %dx.types.CBufRet.f32 %6067, 0
  %6069 = extractvalue %dx.types.CBufRet.f32 %6067, 1
  %6070 = extractvalue %dx.types.CBufRet.f32 %6067, 2
  %6071 = extractvalue %dx.types.CBufRet.f32 %6067, 3
  %6072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6073 = extractvalue %dx.types.CBufRet.f32 %6072, 0
  %6074 = extractvalue %dx.types.CBufRet.f32 %6072, 1
  %6075 = extractvalue %dx.types.CBufRet.f32 %6072, 2
  %6076 = extractvalue %dx.types.CBufRet.f32 %6072, 3
  %6077 = fmul fast float %6063, %6057
  %6078 = call float @dx.op.tertiary.f32(i32 46, float %6058, float %6064, float %6077)  ; FMad(a,b,c)
  %6079 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6065, float %6078)  ; FMad(a,b,c)
  %6080 = fadd fast float %6079, %6066
  %6081 = fmul fast float %6068, %6057
  %6082 = call float @dx.op.tertiary.f32(i32 46, float %6058, float %6069, float %6081)  ; FMad(a,b,c)
  %6083 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6070, float %6082)  ; FMad(a,b,c)
  %6084 = fadd fast float %6083, %6071
  %6085 = fmul fast float %6073, %6057
  %6086 = call float @dx.op.tertiary.f32(i32 46, float %6058, float %6074, float %6085)  ; FMad(a,b,c)
  %6087 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6075, float %6086)  ; FMad(a,b,c)
  %6088 = fadd fast float %6087, %6076
  %6089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6090 = extractvalue %dx.types.CBufRet.f32 %6089, 0
  %6091 = extractvalue %dx.types.CBufRet.f32 %6089, 1
  %6092 = extractvalue %dx.types.CBufRet.f32 %6089, 3
  %6093 = fmul fast float %6092, %6080
  %6094 = fmul fast float %6092, %6084
  %6095 = fadd fast float %6093, %6090
  %6096 = fadd fast float %6094, %6091
  %6097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6098 = extractvalue %dx.types.CBufRet.f32 %6097, 0
  %6099 = extractvalue %dx.types.CBufRet.f32 %6097, 1
  %6100 = extractvalue %dx.types.CBufRet.f32 %6097, 3
  %6101 = fmul fast float %6100, %6080
  %6102 = fmul fast float %6100, %6084
  %6103 = fadd fast float %6101, %6098
  %6104 = fadd fast float %6102, %6099
  %6105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6106 = extractvalue %dx.types.CBufRet.f32 %6105, 1
  %6107 = fsub fast float %6106, %6088
  %6108 = extractvalue %dx.types.CBufRet.f32 %6105, 2
  %6109 = fmul fast float %6107, %6108
  %6110 = fsub fast float 1.000000e+00, %6109
  %6111 = call float @dx.op.unary.f32(i32 7, float %6110)  ; Saturate(value)
  %6112 = extractvalue %dx.types.CBufRet.f32 %6097, 2
  %6113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6114 = extractvalue %dx.types.CBufRet.f32 %6113, 2
  %6115 = fadd fast float %6114, %6112
  %6116 = fcmp fast ogt float %6115, 0.000000e+00
  br i1 %6116, label %6117, label %6141

; <label>:6117                                    ; preds = %6061
  %6118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6119 = extractvalue %dx.types.CBufRet.f32 %6118, 0
  %6120 = extractvalue %dx.types.CBufRet.f32 %6118, 1
  %6121 = fsub fast float %6103, %6119
  %6122 = fsub fast float %6104, %6120
  %6123 = fcmp fast olt float %6121, 0.000000e+00
  %6124 = fcmp fast olt float %6122, 0.000000e+00
  %6125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6126 = extractvalue %dx.types.CBufRet.f32 %6125, 0
  %6127 = extractvalue %dx.types.CBufRet.f32 %6125, 1
  %6128 = extractvalue %dx.types.CBufRet.f32 %6125, 2
  %6129 = extractvalue %dx.types.CBufRet.f32 %6125, 3
  %6130 = select i1 %6123, float %6126, float %6128
  %6131 = select i1 %6124, float %6127, float %6129
  %6132 = fmul fast float %6130, %6121
  %6133 = fmul fast float %6131, %6122
  %6134 = call float @dx.op.unary.f32(i32 6, float %6132)  ; FAbs(value)
  %6135 = call float @dx.op.unary.f32(i32 6, float %6133)  ; FAbs(value)
  %6136 = extractvalue %dx.types.CBufRet.f32 %6052, 0
  %6137 = call float @dx.op.binary.f32(i32 35, float %6134, float %6135)  ; FMax(a,b)
  %6138 = fsub fast float %6136, %6137
  %6139 = call float @dx.op.unary.f32(i32 7, float %6138)  ; Saturate(value)
  %6140 = fmul fast float %6139, %6111
  br label %6141

; <label>:6141                                    ; preds = %6117, %6061
  %6142 = phi float [ %6140, %6117 ], [ 0.000000e+00, %6061 ]
  %6143 = extractvalue %dx.types.CBufRet.f32 %6089, 2
  %6144 = extractvalue %dx.types.CBufRet.f32 %6113, 1
  %6145 = fadd fast float %6144, %6143
  %6146 = fcmp fast ogt float %6145, 0.000000e+00
  %6147 = extractvalue %dx.types.CBufRet.f32 %6052, 0
  br i1 %6146, label %6148, label %6171

; <label>:6148                                    ; preds = %6141
  %6149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6150 = extractvalue %dx.types.CBufRet.f32 %6149, 0
  %6151 = extractvalue %dx.types.CBufRet.f32 %6149, 1
  %6152 = fsub fast float %6095, %6150
  %6153 = fsub fast float %6096, %6151
  %6154 = fcmp fast olt float %6152, 0.000000e+00
  %6155 = fcmp fast olt float %6153, 0.000000e+00
  %6156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6157 = extractvalue %dx.types.CBufRet.f32 %6156, 0
  %6158 = extractvalue %dx.types.CBufRet.f32 %6156, 1
  %6159 = extractvalue %dx.types.CBufRet.f32 %6156, 2
  %6160 = extractvalue %dx.types.CBufRet.f32 %6156, 3
  %6161 = select i1 %6154, float %6157, float %6159
  %6162 = select i1 %6155, float %6158, float %6160
  %6163 = fmul fast float %6161, %6152
  %6164 = fmul fast float %6162, %6153
  %6165 = call float @dx.op.unary.f32(i32 6, float %6163)  ; FAbs(value)
  %6166 = call float @dx.op.unary.f32(i32 6, float %6164)  ; FAbs(value)
  %6167 = call float @dx.op.binary.f32(i32 35, float %6165, float %6166)  ; FMax(a,b)
  %6168 = fsub fast float %6147, %6167
  %6169 = call float @dx.op.unary.f32(i32 7, float %6168)  ; Saturate(value)
  %6170 = fmul fast float %6169, %6111
  br label %6171

; <label>:6171                                    ; preds = %6148, %6141
  %6172 = phi float [ %6170, %6148 ], [ 0.000000e+00, %6141 ]
  %6173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6174 = extractvalue %dx.types.CBufRet.f32 %6173, 1
  %6175 = call float @dx.op.unary.f32(i32 7, float %6174)  ; Saturate(value)
  %6176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.f32 %6176, 0
  %6178 = extractvalue %dx.types.CBufRet.f32 %6176, 1
  %6179 = fsub fast float %6080, %6177
  %6180 = fsub fast float %6084, %6178
  %6181 = fcmp fast olt float %6179, 0.000000e+00
  %6182 = fcmp fast olt float %6180, 0.000000e+00
  %6183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6184 = extractvalue %dx.types.CBufRet.f32 %6183, 0
  %6185 = extractvalue %dx.types.CBufRet.f32 %6183, 1
  %6186 = extractvalue %dx.types.CBufRet.f32 %6183, 2
  %6187 = extractvalue %dx.types.CBufRet.f32 %6183, 3
  %6188 = select i1 %6181, float %6184, float %6186
  %6189 = select i1 %6182, float %6185, float %6187
  %6190 = fmul fast float %6188, %6179
  %6191 = fmul fast float %6189, %6180
  %6192 = call float @dx.op.unary.f32(i32 6, float %6190)  ; FAbs(value)
  %6193 = call float @dx.op.unary.f32(i32 6, float %6191)  ; FAbs(value)
  %6194 = call float @dx.op.binary.f32(i32 35, float %6192, float %6193)  ; FMax(a,b)
  %6195 = fsub fast float %6147, %6194
  %6196 = call float @dx.op.unary.f32(i32 7, float %6195)  ; Saturate(value)
  %6197 = call float @dx.op.binary.f32(i32 36, float %6196, float %6175)  ; FMin(a,b)
  %6198 = fmul fast float %6197, %6111
  %6199 = fsub fast float %6172, %6198
  %6200 = fsub fast float %6142, %6172
  %6201 = fsub fast float %6200, %6198
  %6202 = call float @dx.op.binary.f32(i32 35, float %6172, float %6142)  ; FMax(a,b)
  %6203 = call float @dx.op.binary.f32(i32 35, float %6198, float %6202)  ; FMax(a,b)
  %6204 = fcmp fast olt float %6203, 1.000000e+00
  br i1 %6204, label %6205, label %6603, !dx.controlflow.hints !84

; <label>:6205                                    ; preds = %6171
  %6206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6207 = extractvalue %dx.types.CBufRet.f32 %6206, 0
  %6208 = fcmp fast une float %6207, 0.000000e+00
  br i1 %6208, label %6209, label %6603, !dx.controlflow.hints !85

; <label>:6209                                    ; preds = %6205
  %6210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6211 = extractvalue %dx.types.CBufRet.f32 %6210, 0
  %6212 = extractvalue %dx.types.CBufRet.f32 %6210, 1
  %6213 = extractvalue %dx.types.CBufRet.f32 %6210, 2
  %6214 = extractvalue %dx.types.CBufRet.f32 %6210, 3
  %6215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6216 = extractvalue %dx.types.CBufRet.f32 %6215, 0
  %6217 = extractvalue %dx.types.CBufRet.f32 %6215, 1
  %6218 = extractvalue %dx.types.CBufRet.f32 %6215, 2
  %6219 = extractvalue %dx.types.CBufRet.f32 %6215, 3
  %6220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6221 = extractvalue %dx.types.CBufRet.f32 %6220, 0
  %6222 = extractvalue %dx.types.CBufRet.f32 %6220, 1
  %6223 = extractvalue %dx.types.CBufRet.f32 %6220, 2
  %6224 = extractvalue %dx.types.CBufRet.f32 %6220, 3
  %6225 = fmul fast float %6211, %6057
  %6226 = call float @dx.op.tertiary.f32(i32 46, float %6058, float %6212, float %6225)  ; FMad(a,b,c)
  %6227 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6213, float %6226)  ; FMad(a,b,c)
  %6228 = fadd fast float %6227, %6214
  %6229 = fmul fast float %6216, %6057
  %6230 = call float @dx.op.tertiary.f32(i32 46, float %6058, float %6217, float %6229)  ; FMad(a,b,c)
  %6231 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6218, float %6230)  ; FMad(a,b,c)
  %6232 = fadd fast float %6231, %6219
  %6233 = fmul fast float %6221, %6057
  %6234 = call float @dx.op.tertiary.f32(i32 46, float %6058, float %6222, float %6233)  ; FMad(a,b,c)
  %6235 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6223, float %6234)  ; FMad(a,b,c)
  %6236 = fadd fast float %6235, %6224
  %6237 = fcmp fast oge float %6228, 1.000000e+00
  %6238 = fcmp fast oge float %6232, 1.000000e+00
  %6239 = or i1 %6237, %6238
  %6240 = fcmp fast olt float %6228, 0.000000e+00
  %6241 = fcmp fast olt float %6232, 0.000000e+00
  %6242 = or i1 %6240, %6241
  %6243 = or i1 %6239, %6242
  br i1 %6243, label %6603, label %6244, !dx.controlflow.hints !86

; <label>:6244                                    ; preds = %6209
  %6245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6245, 0
  %6247 = extractvalue %dx.types.CBufRet.f32 %6245, 1
  %6248 = extractvalue %dx.types.CBufRet.f32 %6245, 2
  %6249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6250 = extractvalue %dx.types.CBufRet.i32 %6249, 2
  %6251 = uitofp i32 %6250 to float
  %6252 = extractvalue %dx.types.CBufRet.i32 %6249, 3
  %6253 = uitofp i32 %6252 to float
  %6254 = extractvalue %dx.types.CBufRet.f32 %6245, 3
  %6255 = fmul fast float %6254, 2.000000e+00
  %6256 = fsub fast float %6228, %6246
  %6257 = fsub fast float %6232, %6247
  %6258 = fmul fast float %6255, %6256
  %6259 = fmul fast float %6255, %6257
  %6260 = fdiv fast float 1.000000e+00, %6040
  %6261 = fmul fast float %6259, %6260
  %6262 = call float @dx.op.unary.f32(i32 6, float %6261)  ; FAbs(value)
  %6263 = fmul fast float %6248, %6059
  %6264 = fmul fast float %6263, %6255
  %6265 = call float @dx.op.unary.f32(i32 6, float %6264)  ; FAbs(value)
  %6266 = call float @dx.op.unary.f32(i32 6, float %6258)  ; FAbs(value)
  %6267 = call float @dx.op.binary.f32(i32 35, float %6265, float %6262)  ; FMax(a,b)
  %6268 = call float @dx.op.binary.f32(i32 35, float %6266, float %6267)  ; FMax(a,b)
  %6269 = fmul fast float %6268, 2.000000e+00
  %6270 = call float @dx.op.unary.f32(i32 23, float %6269)  ; Log(value)
  %6271 = call float @dx.op.binary.f32(i32 35, float %6270, float %6251)  ; FMax(a,b)
  %6272 = call float @dx.op.unary.f32(i32 22, float %6271)  ; Frc(value)
  %6273 = fadd fast float %6272, 0xBFEA666660000000
  %6274 = fmul fast float %6273, 8.000000e+00
  %6275 = call float @dx.op.unary.f32(i32 7, float %6274)  ; Saturate(value)
  %6276 = call float @dx.op.unary.f32(i32 27, float %6271)  ; Round_ni(value)
  %6277 = fadd fast float %6276, %6275
  %6278 = call float @dx.op.binary.f32(i32 36, float %6277, float %6253)  ; FMin(a,b)
  %6279 = call float @dx.op.unary.f32(i32 27, float %6278)  ; Round_ni(value)
  %6280 = fsub fast float -0.000000e+00, %6279
  %6281 = call float @dx.op.unary.f32(i32 21, float %6280)  ; Exp(value)
  %6282 = fmul fast float %6281, %6255
  %6283 = fmul fast float %6282, %6228
  %6284 = fmul fast float %6282, %6232
  %6285 = fmul fast float %6283, 2.500000e-01
  %6286 = fmul fast float %6284, 2.500000e-01
  %6287 = fadd fast float %6285, 5.000000e-01
  %6288 = fadd fast float %6286, 5.000000e-01
  %6289 = fsub fast float %6253, %6251
  %6290 = fptoui float %6289 to i32
  %6291 = add i32 %6290, 320
  %6292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 %6291)  ; CBufferLoadLegacy(handle,regIndex)
  %6293 = extractvalue %dx.types.CBufRet.f32 %6292, 0
  %6294 = extractvalue %dx.types.CBufRet.f32 %6292, 1
  %6295 = fcmp fast une float %6278, %6253
  %6296 = fsub fast float %6228, %6293
  %6297 = fsub fast float %6232, %6294
  %6298 = call float @dx.op.unary.f32(i32 6, float %6296)  ; FAbs(value)
  %6299 = call float @dx.op.unary.f32(i32 6, float %6297)  ; FAbs(value)
  %6300 = fmul fast float %6298, %6282
  %6301 = fmul fast float %6299, %6282
  %6302 = fcmp fast olt float %6300, 1.000000e+00
  %6303 = fcmp fast olt float %6301, 1.000000e+00
  %6304 = and i1 %6302, %6303
  %6305 = or i1 %6295, %6304
  br i1 %6305, label %6306, label %6603, !dx.controlflow.hints !87

; <label>:6306                                    ; preds = %6244
  %6307 = fmul fast float %6284, 5.000000e-01
  %6308 = fmul fast float %6283, 5.000000e-01
  %6309 = fadd fast float %6307, 5.000000e-01
  %6310 = fadd fast float %6308, 5.000000e-01
  %6311 = sitofp i32 %6250 to float
  %6312 = fsub fast float %6278, %6311
  %6313 = call float @dx.op.unary.f32(i32 27, float %6312)  ; Round_ni(value)
  %6314 = call float @dx.op.unary.f32(i32 22, float %6278)  ; Frc(value)
  %6315 = call float @dx.op.unary.f32(i32 22, float %6310)  ; Frc(value)
  %6316 = call float @dx.op.unary.f32(i32 22, float %6309)  ; Frc(value)
  %6317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %37, float %6315, float %6316, float %6313, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6318 = extractvalue %dx.types.ResRet.f32 %6317, 0
  %6319 = extractvalue %dx.types.ResRet.f32 %6317, 1
  %6320 = extractvalue %dx.types.ResRet.f32 %6317, 2
  %6321 = extractvalue %dx.types.ResRet.f32 %6317, 3
  %6322 = fcmp fast ogt float %6314, 0.000000e+00
  br i1 %6322, label %6323, label %6344, !dx.controlflow.hints !88

; <label>:6323                                    ; preds = %6306
  %6324 = fadd fast float %6313, 1.000000e+00
  %6325 = call float @dx.op.unary.f32(i32 22, float %6287)  ; Frc(value)
  %6326 = call float @dx.op.unary.f32(i32 22, float %6288)  ; Frc(value)
  %6327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %37, float %6325, float %6326, float %6324, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6328 = extractvalue %dx.types.ResRet.f32 %6327, 0
  %6329 = extractvalue %dx.types.ResRet.f32 %6327, 1
  %6330 = extractvalue %dx.types.ResRet.f32 %6327, 2
  %6331 = extractvalue %dx.types.ResRet.f32 %6327, 3
  %6332 = fsub fast float %6328, %6318
  %6333 = fsub fast float %6329, %6319
  %6334 = fsub fast float %6330, %6320
  %6335 = fsub fast float %6331, %6321
  %6336 = fmul fast float %6332, %6314
  %6337 = fmul fast float %6333, %6314
  %6338 = fmul fast float %6334, %6314
  %6339 = fmul fast float %6335, %6314
  %6340 = fadd fast float %6336, %6318
  %6341 = fadd fast float %6337, %6319
  %6342 = fadd fast float %6338, %6320
  %6343 = fadd fast float %6339, %6321
  br label %6344

; <label>:6344                                    ; preds = %6323, %6306
  %6345 = phi float [ %6340, %6323 ], [ %6318, %6306 ]
  %6346 = phi float [ %6341, %6323 ], [ %6319, %6306 ]
  %6347 = phi float [ %6342, %6323 ], [ %6320, %6306 ]
  %6348 = phi float [ %6343, %6323 ], [ %6321, %6306 ]
  %6349 = fadd fast float %6345, -5.000000e-01
  %6350 = fadd fast float %6347, -5.000000e-01
  %6351 = fmul fast float %6349, 0xBFD5555560000000
  %6352 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6350, float %6351)  ; FMad(a,b,c)
  %6353 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6346, float 0.000000e+00)  ; FMad(a,b,c)
  %6354 = fadd fast float %6353, %6348
  %6355 = fmul fast float %6349, -7.500000e-01
  %6356 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6350, float %6355)  ; FMad(a,b,c)
  %6357 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6346, float 0.000000e+00)  ; FMad(a,b,c)
  %6358 = fadd fast float %6357, %6348
  %6359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6360 = extractvalue %dx.types.CBufRet.f32 %6359, 0
  %6361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6362 = extractvalue %dx.types.CBufRet.f32 %6361, 0
  %6363 = extractvalue %dx.types.CBufRet.f32 %6361, 1
  %6364 = extractvalue %dx.types.CBufRet.f32 %6361, 2
  %6365 = extractvalue %dx.types.CBufRet.f32 %6361, 3
  %6366 = fsub fast float %6362, %6352
  %6367 = fsub fast float %6363, %6354
  %6368 = fsub fast float %6364, %6356
  %6369 = fsub fast float %6365, %6358
  %6370 = fmul fast float %6366, %6360
  %6371 = fmul fast float %6367, %6360
  %6372 = fmul fast float %6368, %6360
  %6373 = fmul fast float %6369, %6360
  %6374 = fadd fast float %6370, %6352
  %6375 = fadd fast float %6371, %6354
  %6376 = fadd fast float %6372, %6356
  %6377 = fadd fast float %6373, %6358
  %6378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6379 = extractvalue %dx.types.ResRet.i32 %6378, 0
  %6380 = and i32 %6379, 536870911
  %6381 = uitofp i32 %6380 to float
  %6382 = fmul fast float %6381, %6228
  %6383 = fmul fast float %6381, %6232
  %6384 = fptoui float %6382 to i32
  %6385 = fptoui float %6383 to i32
  %6386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6387 = extractvalue %dx.types.ResRet.i32 %6386, 0
  %6388 = and i32 %6387, 31
  %6389 = lshr i32 %6384, %6388
  %6390 = lshr i32 %6385, %6388
  %6391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6392 = extractvalue %dx.types.ResRet.i32 %6391, 0
  %6393 = and i32 %6392, 31
  %6394 = shl i32 1, %6393
  %6395 = call i32 @dx.op.binary.i32(i32 40, i32 %6394, i32 4)  ; UMin(a,b)
  %6396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6397 = extractvalue %dx.types.ResRet.i32 %6396, 0
  %6398 = extractvalue %dx.types.ResRet.i32 %6396, 1
  %6399 = icmp eq i32 %6395, 0
  br i1 %6399, label %6441, label %6400

; <label>:6400                                    ; preds = %6344
  br label %6401

; <label>:6401                                    ; preds = %6429, %6400
  %6402 = phi i32 [ %6432, %6429 ], [ 0, %6400 ]
  %6403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6404 = extractvalue %dx.types.ResRet.i32 %6403, 0
  %6405 = lshr i32 %6404, 16
  %6406 = and i32 %6405, 31
  %6407 = shl i32 %6390, %6406
  %6408 = add i32 %6407, %6389
  %6409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6410 = extractvalue %dx.types.ResRet.i32 %6409, 0
  %6411 = and i32 %6410, 31
  %6412 = shl i32 %6408, %6411
  %6413 = add i32 %6412, %6402
  %6414 = shl i32 %6413, 2
  %6415 = add i32 %6414, 32
  %6416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6415, i32 undef)  ; BufferLoad(srv,index,wot)
  %6417 = extractvalue %dx.types.ResRet.i32 %6416, 0
  %6418 = icmp slt i32 %6417, 0
  %6419 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %6402
  %6420 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %6402
  %6421 = bitcast float* %6419 to i32*
  %6422 = bitcast float* %6420 to i32*
  br i1 %6418, label %6423, label %6429

; <label>:6423                                    ; preds = %6401
  %6424 = and i32 %6417, 1073741823
  %6425 = add nuw nsw i32 %6424, 20
  %6426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6425, i32 undef)  ; BufferLoad(srv,index,wot)
  %6427 = extractvalue %dx.types.ResRet.i32 %6426, 0
  %6428 = extractvalue %dx.types.ResRet.i32 %6426, 1
  br label %6429

; <label>:6429                                    ; preds = %6423, %6401
  %6430 = phi i32 [ %6427, %6423 ], [ %6397, %6401 ]
  %6431 = phi i32 [ %6428, %6423 ], [ %6398, %6401 ]
  store i32 %6430, i32* %6421, align 4
  store i32 %6431, i32* %6422, align 4
  %6432 = add nuw i32 %6402, 1
  %6433 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6434 = extractvalue %dx.types.CBufRet.i32 %6433, 2
  %6435 = icmp eq i32 %6434, 0
  %6436 = icmp ugt i32 %6417, -1073741825
  %6437 = and i1 %6436, %6435
  %6438 = icmp ult i32 %6432, %6395
  %6439 = and i1 %6437, %6438
  br i1 %6439, label %6401, label %6440

; <label>:6440                                    ; preds = %6429
  br label %6441

; <label>:6441                                    ; preds = %6440, %6344
  %6442 = phi i32 [ 0, %6344 ], [ %6432, %6440 ]
  %6443 = extractvalue %dx.types.CBufRet.f32 %6206, 2
  %6444 = fptoui float %6443 to i32
  %6445 = icmp eq i32 %6444, 0
  br i1 %6445, label %6497, label %6446

; <label>:6446                                    ; preds = %6441
  br label %6447

; <label>:6447                                    ; preds = %6492, %6446
  %6448 = phi i32 [ %6493, %6492 ], [ %6442, %6446 ]
  %6449 = phi i32 [ %6494, %6492 ], [ 0, %6446 ]
  %6450 = lshr i32 %6449, 2
  %6451 = and i32 %6449, 3
  %6452 = add nuw nsw i32 %6450, 83
  %6453 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 %6452)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.i32 %6453, 0
  %6455 = extractvalue %dx.types.CBufRet.i32 %6453, 1
  %6456 = extractvalue %dx.types.CBufRet.i32 %6453, 2
  %6457 = extractvalue %dx.types.CBufRet.i32 %6453, 3
  %6458 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 0
  store i32 %6454, i32* %6458, align 4
  %6459 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 1
  store i32 %6455, i32* %6459, align 4
  %6460 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 2
  store i32 %6456, i32* %6460, align 4
  %6461 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 3
  store i32 %6457, i32* %6461, align 4
  %6462 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 %6451
  %6463 = load i32, i32* %6462, align 4, !tbaa !89, !noalias !93
  %6464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6465 = extractvalue %dx.types.ResRet.i32 %6464, 0
  %6466 = lshr i32 %6465, 16
  %6467 = and i32 %6466, 31
  %6468 = shl i32 %6390, %6467
  %6469 = add i32 %6468, %6389
  %6470 = shl i32 %6469, 2
  %6471 = add i32 %6470, %6463
  %6472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6471, i32 undef)  ; BufferLoad(srv,index,wot)
  %6473 = extractvalue %dx.types.ResRet.i32 %6472, 0
  %6474 = icmp eq i32 %6473, 0
  br i1 %6474, label %6492, label %6475

; <label>:6475                                    ; preds = %6447
  %6476 = icmp slt i32 %6473, 0
  %6477 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %6448
  %6478 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %6448
  %6479 = bitcast float* %6477 to i32*
  %6480 = bitcast float* %6478 to i32*
  br i1 %6476, label %6481, label %6488

; <label>:6481                                    ; preds = %6475
  %6482 = and i32 %6473, 1073741823
  %6483 = add i32 %6463, 20
  %6484 = add i32 %6483, %6482
  %6485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6484, i32 undef)  ; BufferLoad(srv,index,wot)
  %6486 = extractvalue %dx.types.ResRet.i32 %6485, 0
  %6487 = extractvalue %dx.types.ResRet.i32 %6485, 1
  br label %6488

; <label>:6488                                    ; preds = %6481, %6475
  %6489 = phi i32 [ %6486, %6481 ], [ %6397, %6475 ]
  %6490 = phi i32 [ %6487, %6481 ], [ %6398, %6475 ]
  store i32 %6489, i32* %6479, align 4
  store i32 %6490, i32* %6480, align 4
  %6491 = add i32 %6448, 1
  br label %6492

; <label>:6492                                    ; preds = %6488, %6447
  %6493 = phi i32 [ %6448, %6447 ], [ %6491, %6488 ]
  %6494 = add nuw i32 %6449, 1
  %6495 = icmp eq i32 %6494, %6444
  br i1 %6495, label %6496, label %6447

; <label>:6496                                    ; preds = %6492
  br label %6497

; <label>:6497                                    ; preds = %6496, %6441
  %6498 = phi i32 [ %6442, %6441 ], [ %6493, %6496 ]
  %6499 = icmp eq i32 %6498, 1
  %6500 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 0
  %6501 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  br i1 %6499, label %6502, label %6505

; <label>:6502                                    ; preds = %6497
  %6503 = load float, float* %6500, align 4
  %6504 = load float, float* %6501, align 4
  br label %6532

; <label>:6505                                    ; preds = %6497
  %6506 = load float, float* %6500, align 4
  %6507 = load float, float* %6501, align 4
  %6508 = fdiv fast float 1.000000e+00, %6507
  %6509 = fsub fast float %6506, %6508
  %6510 = icmp ugt i32 %6498, 1
  br i1 %6510, label %6511, label %6527

; <label>:6511                                    ; preds = %6505
  br label %6512

; <label>:6512                                    ; preds = %6512, %6511
  %6513 = phi float [ %6522, %6512 ], [ %6509, %6511 ]
  %6514 = phi float [ %6523, %6512 ], [ %6506, %6511 ]
  %6515 = phi i32 [ %6524, %6512 ], [ 1, %6511 ]
  %6516 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %6515
  %6517 = load float, float* %6516, align 4
  %6518 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %6515
  %6519 = load float, float* %6518, align 4
  %6520 = fdiv fast float 1.000000e+00, %6519
  %6521 = fsub fast float %6517, %6520
  %6522 = call float @dx.op.binary.f32(i32 36, float %6513, float %6521)  ; FMin(a,b)
  %6523 = call float @dx.op.binary.f32(i32 35, float %6514, float %6517)  ; FMax(a,b)
  %6524 = add nuw i32 %6515, 1
  %6525 = icmp eq i32 %6524, %6498
  br i1 %6525, label %6526, label %6512

; <label>:6526                                    ; preds = %6512
  br label %6527

; <label>:6527                                    ; preds = %6526, %6505
  %6528 = phi float [ %6509, %6505 ], [ %6522, %6526 ]
  %6529 = phi float [ %6506, %6505 ], [ %6523, %6526 ]
  %6530 = fsub fast float %6529, %6528
  %6531 = fdiv fast float 1.000000e+00, %6530
  br label %6532

; <label>:6532                                    ; preds = %6527, %6502
  %6533 = phi float [ %6503, %6502 ], [ %6529, %6527 ]
  %6534 = phi float [ %6504, %6502 ], [ %6531, %6527 ]
  %6535 = fadd fast float %6236, %6533
  %6536 = fmul fast float %6535, %6534
  %6537 = call float @dx.op.unary.f32(i32 7, float %6536)  ; Saturate(value)
  %6538 = fmul fast float %6537, 2.000000e+00
  %6539 = fsub fast float 1.000000e+00, %6538
  %6540 = fmul fast float %6374, %6374
  %6541 = fsub fast float %6375, %6540
  %6542 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6541)  ; FMax(a,b)
  %6543 = fdiv fast float 1.000000e+00, %6542
  %6544 = fmul fast float %6375, %6374
  %6545 = fsub fast float %6376, %6544
  %6546 = fsub fast float %6539, %6374
  %6547 = fmul fast float %6539, %6539
  %6548 = fsub fast float %6547, %6375
  %6549 = fmul fast float %6543, %6545
  %6550 = fmul fast float %6549, %6546
  %6551 = fsub fast float %6548, %6550
  %6552 = fmul fast float %6375, %6375
  %6553 = fsub fast float %6377, %6552
  %6554 = fmul fast float %6545, %6545
  %6555 = fmul fast float %6554, %6543
  %6556 = fsub fast float %6553, %6555
  %6557 = fdiv fast float %6551, %6556
  %6558 = fmul fast float %6557, %6545
  %6559 = fsub fast float %6546, %6558
  %6560 = fmul fast float %6559, %6543
  %6561 = fmul fast float %6560, %6374
  %6562 = fsub fast float 1.000000e+00, %6561
  %6563 = fmul fast float %6557, %6375
  %6564 = fsub fast float %6562, %6563
  %6565 = fmul fast float %6560, %6560
  %6566 = fmul fast float %6557, 4.000000e+00
  %6567 = fmul fast float %6566, %6564
  %6568 = fsub fast float %6565, %6567
  %6569 = call float @dx.op.unary.f32(i32 24, float %6568)  ; Sqrt(value)
  %6570 = fcmp fast oge float %6560, 0.000000e+00
  %6571 = fsub fast float -0.000000e+00, %6569
  %6572 = select i1 %6570, float %6571, float %6569
  %6573 = fsub fast float %6572, %6560
  %6574 = fdiv fast float %6573, %6557
  %6575 = fdiv fast float %6564, %6573
  %6576 = fmul fast float %6574, 5.000000e-01
  %6577 = fmul fast float %6575, 2.000000e+00
  %6578 = select i1 %6570, float %6576, float %6577
  %6579 = select i1 %6570, float %6577, float %6576
  %6580 = call float @dx.op.binary.f32(i32 35, float %6578, float %6579)  ; FMax(a,b)
  %6581 = call float @dx.op.binary.f32(i32 36, float %6578, float %6579)  ; FMin(a,b)
  %6582 = fcmp fast ogt float %6539, %6580
  %6583 = fsub fast float %6539, %6581
  %6584 = fsub fast float %6539, %6580
  %6585 = fsub fast float %6580, %6581
  %6586 = select i1 %6582, float %6584, float %6585
  %6587 = fmul float %6583, %6586
  %6588 = select i1 %6582, float %6581, float %6539
  %6589 = fcmp fast ogt float %6539, %6581
  %6590 = fmul fast float %6588, %6580
  %6591 = fadd fast float %6588, %6580
  %6592 = fmul fast float %6591, %6374
  %6593 = fadd fast float %6590, %6375
  %6594 = fsub fast float %6593, %6592
  %6595 = fdiv fast float %6594, %6587
  %6596 = select i1 %6589, float %6595, float 0.000000e+00
  %6597 = fsub fast float 1.000000e+00, %6596
  %6598 = select i1 %6582, float %6597, float %6596
  %6599 = call float @dx.op.unary.f32(i32 7, float %6598)  ; Saturate(value)
  %6600 = extractvalue %dx.types.CBufRet.f32 %6359, 3
  %6601 = fmul fast float %6600, %6599
  %6602 = fsub fast float 1.000000e+00, %6601
  br label %6603

; <label>:6603                                    ; preds = %6532, %6244, %6209, %6205, %6171
  %6604 = phi float [ 1.000000e+00, %6171 ], [ %6602, %6532 ], [ 1.000000e+00, %6209 ], [ 1.000000e+00, %6244 ], [ 1.000000e+00, %6205 ]
  %6605 = fcmp fast ogt float %6201, 0.000000e+00
  br i1 %6605, label %6606, label %6612, !dx.controlflow.hints !102

; <label>:6606                                    ; preds = %6603
  %6607 = fadd fast float %6114, %6088
  %6608 = call float @dx.op.binary.f32(i32 35, float %6607, float 0.000000e+00)  ; FMax(a,b)
  %6609 = fadd fast float %6608, 0x3F10000000000000
  %6610 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %40, float %6103, float %6104, float undef, float undef, i32 0, i32 0, i32 undef, float %6609)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6611 = extractvalue %dx.types.ResRet.f32 %6610, 0
  br label %6612

; <label>:6612                                    ; preds = %6606, %6603
  %6613 = phi float [ %6611, %6606 ], [ 1.000000e+00, %6603 ]
  %6614 = fcmp fast ogt float %6199, 0.000000e+00
  br i1 %6614, label %6615, label %6621, !dx.controlflow.hints !103

; <label>:6615                                    ; preds = %6612
  %6616 = fadd fast float %6144, %6088
  %6617 = call float @dx.op.binary.f32(i32 35, float %6616, float 0.000000e+00)  ; FMax(a,b)
  %6618 = fadd fast float %6617, 0x3F10000000000000
  %6619 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %40, float %6095, float %6096, float undef, float undef, i32 0, i32 0, i32 undef, float %6618)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6620 = extractvalue %dx.types.ResRet.f32 %6619, 0
  br label %6621

; <label>:6621                                    ; preds = %6615, %6612
  %6622 = phi float [ %6620, %6615 ], [ 1.000000e+00, %6612 ]
  %6623 = fcmp fast ogt float %6198, 0.000000e+00
  br i1 %6623, label %6624, label %6631, !dx.controlflow.hints !104

; <label>:6624                                    ; preds = %6621
  %6625 = extractvalue %dx.types.CBufRet.f32 %6113, 0
  %6626 = fadd fast float %6625, %6088
  %6627 = call float @dx.op.binary.f32(i32 35, float %6626, float 0.000000e+00)  ; FMax(a,b)
  %6628 = fadd fast float %6627, 0x3F10000000000000
  %6629 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %40, float %6080, float %6084, float undef, float undef, i32 0, i32 0, i32 undef, float %6628)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6630 = extractvalue %dx.types.ResRet.f32 %6629, 0
  br label %6631

; <label>:6631                                    ; preds = %6624, %6621
  %6632 = phi float [ %6630, %6624 ], [ 1.000000e+00, %6621 ]
  %6633 = fsub fast float %6613, %6604
  %6634 = fmul fast float %6633, %6142
  %6635 = fadd fast float %6634, %6604
  %6636 = fsub fast float %6622, %6635
  %6637 = fmul fast float %6636, %6172
  %6638 = fadd fast float %6637, %6635
  %6639 = fsub fast float %6632, %6638
  %6640 = fmul fast float %6639, %6198
  %6641 = fadd fast float %6640, %6638
  %6642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6643 = extractvalue %dx.types.CBufRet.f32 %6642, 2
  %6644 = fcmp fast ogt float %6643, 0.000000e+00
  br i1 %6644, label %6645, label %6685, !dx.controlflow.hints !105

; <label>:6645                                    ; preds = %6631
  %6646 = fcmp fast ugt float %6643, 0.000000e+00
  br i1 %6646, label %6647, label %6682

; <label>:6647                                    ; preds = %6645
  %6648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6649 = extractvalue %dx.types.CBufRet.f32 %6648, 0
  %6650 = extractvalue %dx.types.CBufRet.f32 %6648, 1
  %6651 = extractvalue %dx.types.CBufRet.f32 %6648, 2
  %6652 = extractvalue %dx.types.CBufRet.f32 %6648, 3
  %6653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6654 = extractvalue %dx.types.CBufRet.f32 %6653, 0
  %6655 = extractvalue %dx.types.CBufRet.f32 %6653, 1
  %6656 = extractvalue %dx.types.CBufRet.f32 %6653, 2
  %6657 = extractvalue %dx.types.CBufRet.f32 %6653, 3
  %6658 = extractvalue %dx.types.CBufRet.f32 %6642, 0
  %6659 = extractvalue %dx.types.CBufRet.f32 %6642, 1
  %6660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6661 = extractvalue %dx.types.CBufRet.f32 %6660, 0
  %6662 = extractvalue %dx.types.CBufRet.f32 %6660, 1
  %6663 = extractvalue %dx.types.CBufRet.f32 %6660, 2
  %6664 = fadd fast float %6661, %6057
  %6665 = fadd fast float %6662, %6058
  %6666 = fadd fast float %6663, %6059
  %6667 = fmul fast float %6664, %6649
  %6668 = call float @dx.op.tertiary.f32(i32 46, float %6650, float %6665, float %6667)  ; FMad(a,b,c)
  %6669 = call float @dx.op.tertiary.f32(i32 46, float %6651, float %6666, float %6668)  ; FMad(a,b,c)
  %6670 = fadd fast float %6669, %6652
  %6671 = fmul fast float %6664, %6654
  %6672 = call float @dx.op.tertiary.f32(i32 46, float %6655, float %6665, float %6671)  ; FMad(a,b,c)
  %6673 = call float @dx.op.tertiary.f32(i32 46, float %6656, float %6666, float %6672)  ; FMad(a,b,c)
  %6674 = fadd fast float %6673, %6657
  %6675 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %35, float %6670, float %6674, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6676 = extractvalue %dx.types.ResRet.f32 %6675, 0
  %6677 = fmul fast float %6676, %6659
  %6678 = fadd fast float %6677, %6658
  %6679 = call float @dx.op.unary.f32(i32 7, float %6678)  ; Saturate(value)
  %6680 = fmul fast float %6679, %6643
  %6681 = fsub fast float 1.000000e+00, %6680
  br label %6682

; <label>:6682                                    ; preds = %6647, %6645
  %6683 = phi float [ %6681, %6647 ], [ 1.000000e+00, %6645 ]
  %6684 = fmul fast float %6683, %6641
  br label %6685

; <label>:6685                                    ; preds = %6682, %6631, %6037
  %6686 = phi float [ 1.000000e+00, %6037 ], [ %6684, %6682 ], [ %6641, %6631 ]
  %6687 = call float @dx.op.binary.f32(i32 36, float %6686, float %6686)  ; FMin(a,b)
  %6688 = call float @dx.op.binary.f32(i32 36, float %6686, float %6687)  ; FMin(a,b)
  %6689 = fcmp fast ogt float %6688, 0.000000e+00
  br i1 %6689, label %6690, label %6851, !dx.controlflow.hints !106

; <label>:6690                                    ; preds = %6685
  %6691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6692 = extractvalue %dx.types.CBufRet.f32 %6691, 0
  %6693 = extractvalue %dx.types.CBufRet.f32 %6691, 1
  %6694 = extractvalue %dx.types.CBufRet.f32 %6691, 2
  %6695 = extractvalue %dx.types.CBufRet.f32 %6691, 3
  %6696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6697 = extractvalue %dx.types.CBufRet.f32 %6696, 0
  %6698 = extractvalue %dx.types.CBufRet.f32 %6696, 1
  %6699 = extractvalue %dx.types.CBufRet.f32 %6696, 2
  %6700 = extractvalue %dx.types.CBufRet.f32 %6696, 3
  %6701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6702 = extractvalue %dx.types.CBufRet.f32 %6701, 0
  %6703 = extractvalue %dx.types.CBufRet.f32 %6701, 1
  %6704 = extractvalue %dx.types.CBufRet.f32 %6701, 2
  %6705 = extractvalue %dx.types.CBufRet.f32 %6701, 3
  %6706 = fmul fast float %6692, %6057
  %6707 = call float @dx.op.tertiary.f32(i32 46, float %6058, float %6693, float %6706)  ; FMad(a,b,c)
  %6708 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6694, float %6707)  ; FMad(a,b,c)
  %6709 = fadd fast float %6708, %6695
  %6710 = fmul fast float %6697, %6057
  %6711 = call float @dx.op.tertiary.f32(i32 46, float %6058, float %6698, float %6710)  ; FMad(a,b,c)
  %6712 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6699, float %6711)  ; FMad(a,b,c)
  %6713 = fadd fast float %6712, %6700
  %6714 = fmul fast float %6702, %6057
  %6715 = call float @dx.op.tertiary.f32(i32 46, float %6058, float %6703, float %6714)  ; FMad(a,b,c)
  %6716 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6704, float %6715)  ; FMad(a,b,c)
  %6717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6718 = extractvalue %dx.types.CBufRet.f32 %6717, 0
  %6719 = extractvalue %dx.types.CBufRet.f32 %6717, 1
  %6720 = extractvalue %dx.types.CBufRet.f32 %6717, 3
  %6721 = fmul fast float %6720, %6709
  %6722 = fmul fast float %6720, %6713
  %6723 = fadd fast float %6721, %6718
  %6724 = fadd fast float %6722, %6719
  %6725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6726 = extractvalue %dx.types.CBufRet.f32 %6725, 0
  %6727 = extractvalue %dx.types.CBufRet.f32 %6725, 1
  %6728 = fsub fast float %6723, %6726
  %6729 = fsub fast float %6724, %6727
  %6730 = fcmp fast olt float %6728, 0.000000e+00
  %6731 = fcmp fast olt float %6729, 0.000000e+00
  %6732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6733 = extractvalue %dx.types.CBufRet.f32 %6732, 0
  %6734 = extractvalue %dx.types.CBufRet.f32 %6732, 1
  %6735 = extractvalue %dx.types.CBufRet.f32 %6732, 2
  %6736 = extractvalue %dx.types.CBufRet.f32 %6732, 3
  %6737 = select i1 %6730, float %6733, float %6735
  %6738 = select i1 %6731, float %6734, float %6736
  %6739 = fmul fast float %6737, %6728
  %6740 = fmul fast float %6738, %6729
  %6741 = call float @dx.op.unary.f32(i32 6, float %6739)  ; FAbs(value)
  %6742 = call float @dx.op.unary.f32(i32 6, float %6740)  ; FAbs(value)
  %6743 = extractvalue %dx.types.CBufRet.f32 %6052, 0
  %6744 = call float @dx.op.binary.f32(i32 35, float %6741, float %6742)  ; FMax(a,b)
  %6745 = fsub fast float %6743, %6744
  %6746 = call float @dx.op.unary.f32(i32 7, float %6745)  ; Saturate(value)
  %6747 = fcmp fast ogt float %6746, 0.000000e+00
  br i1 %6747, label %6748, label %6789, !dx.controlflow.hints !107

; <label>:6748                                    ; preds = %6690
  %6749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %38, float %6723, float %6724, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6750 = extractvalue %dx.types.ResRet.f32 %6749, 1
  %6751 = fcmp fast ogt float %6750, 0.000000e+00
  br i1 %6751, label %6752, label %6784

; <label>:6752                                    ; preds = %6748
  %6753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %38, float %6723, float %6724, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6754 = extractvalue %dx.types.ResRet.f32 %6753, 0
  %6755 = extractvalue %dx.types.ResRet.f32 %6753, 1
  %6756 = extractvalue %dx.types.ResRet.f32 %6753, 2
  %6757 = extractvalue %dx.types.ResRet.f32 %6753, 3
  %6758 = fsub fast float 1.000000e+00, %6705
  %6759 = fsub fast float %6758, %6716
  %6760 = fmul fast float %6759, 0x400921FB60000000
  %6761 = fadd fast float %6760, 0x3FF921FB60000000
  %6762 = call float @dx.op.unary.f32(i32 13, float %6761)  ; Sin(value)
  %6763 = fadd fast float %6762, -1.000000e+00
  %6764 = fmul fast float %6763, 0x3FD45F3060000000
  %6765 = fmul fast float %6759, 0x401921FB60000000
  %6766 = fadd fast float %6765, 0x400921FB60000000
  %6767 = call float @dx.op.unary.f32(i32 13, float %6766)  ; Sin(value)
  %6768 = fadd fast float %6767, 0x3E7777A5C0000000
  %6769 = fmul fast float %6768, 0x3FC45F3060000000
  %6770 = fmul fast float %6759, 0x4022D97C80000000
  %6771 = fadd fast float %6770, 0x4012D97C80000000
  %6772 = call float @dx.op.unary.f32(i32 13, float %6771)  ; Sin(value)
  %6773 = fadd fast float %6772, 1.000000e+00
  %6774 = fmul fast float %6773, 0x3FBB2995E0000000
  %6775 = fmul fast float %6759, 0x402921FB60000000
  %6776 = fadd fast float %6775, 0x401921FB60000000
  %6777 = call float @dx.op.unary.f32(i32 13, float %6776)  ; Sin(value)
  %6778 = fadd fast float %6777, 0xBE8777A5C0000000
  %6779 = fmul fast float %6778, 0x3FB45F3060000000
  %6780 = call float @dx.op.dot4.f32(i32 56, float %6754, float %6755, float %6756, float %6757, float %6764, float %6769, float %6774, float %6779)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6781 = fmul fast float %6780, 0xBFF7154760000000
  %6782 = call float @dx.op.unary.f32(i32 21, float %6781)  ; Exp(value)
  %6783 = call float @dx.op.unary.f32(i32 7, float %6782)  ; Saturate(value)
  br label %6784

; <label>:6784                                    ; preds = %6752, %6748
  %6785 = phi float [ %6783, %6752 ], [ 1.000000e+00, %6748 ]
  %6786 = fadd fast float %6785, -1.000000e+00
  %6787 = fmul fast float %6786, %6746
  %6788 = fadd fast float %6787, 1.000000e+00
  br label %6789

; <label>:6789                                    ; preds = %6784, %6690
  %6790 = phi float [ %6788, %6784 ], [ 1.000000e+00, %6690 ]
  %6791 = fmul fast float %6790, %6686
  %6792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6793 = extractvalue %dx.types.CBufRet.f32 %6792, 0
  %6794 = extractvalue %dx.types.CBufRet.f32 %6792, 1
  %6795 = extractvalue %dx.types.CBufRet.f32 %6792, 2
  %6796 = fadd fast float %6793, %145
  %6797 = fadd fast float %6794, %146
  %6798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6799 = extractvalue %dx.types.CBufRet.f32 %6798, 1
  %6800 = fsub fast float -0.000000e+00, %6796
  %6801 = fsub fast float -0.000000e+00, %6797
  %6802 = fsub fast float -0.000000e+00, %147
  %6803 = fsub fast float %6802, %6795
  %6804 = fadd fast float %6803, %6799
  %6805 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6800, float %6801, float %6804)  ; Dot3(ax,ay,az,bx,by,bz)
  %6806 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6038, float %6039, float %6040)  ; Dot3(ax,ay,az,bx,by,bz)
  %6807 = fdiv fast float 1.000000e+00, %6806
  %6808 = fmul fast float %6807, %6805
  %6809 = fmul fast float %6038, %6808
  %6810 = fmul fast float %6039, %6808
  %6811 = fadd fast float %6809, %6796
  %6812 = fadd fast float %6810, %6797
  %6813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6814 = extractvalue %dx.types.CBufRet.f32 %6813, 0
  %6815 = extractvalue %dx.types.CBufRet.f32 %6813, 1
  %6816 = fsub fast float %6811, %6814
  %6817 = fsub fast float %6812, %6815
  %6818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6819 = extractvalue %dx.types.CBufRet.f32 %6818, 2
  %6820 = extractvalue %dx.types.CBufRet.f32 %6818, 3
  %6821 = fmul fast float %6816, %6819
  %6822 = fmul fast float %6817, %6820
  %6823 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6824 = extractvalue %dx.types.CBufRet.i32 %6823, 3
  %6825 = icmp eq i32 %6824, 0
  br i1 %6825, label %6831, label %6826

; <label>:6826                                    ; preds = %6789
  %6827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %37, float %6821, float %6822, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6828 = extractvalue %dx.types.ResRet.f32 %6827, 0
  %6829 = extractvalue %dx.types.ResRet.f32 %6827, 1
  %6830 = extractvalue %dx.types.ResRet.f32 %6827, 2
  br label %6836

; <label>:6831                                    ; preds = %6789
  %6832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %6821, float %6822, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6833 = extractvalue %dx.types.ResRet.f32 %6832, 0
  %6834 = extractvalue %dx.types.ResRet.f32 %6832, 1
  %6835 = extractvalue %dx.types.ResRet.f32 %6832, 2
  br label %6836

; <label>:6836                                    ; preds = %6831, %6826
  %6837 = phi float [ %6828, %6826 ], [ %6833, %6831 ]
  %6838 = phi float [ %6829, %6826 ], [ %6834, %6831 ]
  %6839 = phi float [ %6830, %6826 ], [ %6835, %6831 ]
  %6840 = extractvalue %dx.types.CBufRet.f32 %6798, 2
  %6841 = fmul fast float %6840, %6837
  %6842 = extractvalue %dx.types.CBufRet.f32 %6798, 0
  %6843 = fsub fast float %6808, %6842
  %6844 = fsub fast float %6843, %6841
  %6845 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6844)  ; FMax(a,b)
  %6846 = fmul fast float %6845, %6838
  %6847 = call float @dx.op.binary.f32(i32 36, float %6839, float %6846)  ; FMin(a,b)
  %6848 = fmul fast float %6847, 0xBFF7154760000000
  %6849 = call float @dx.op.unary.f32(i32 21, float %6848)  ; Exp(value)
  %6850 = fmul fast float %6791, %6849
  br label %6851

; <label>:6851                                    ; preds = %6836, %6685
  %6852 = phi float [ %6850, %6836 ], [ %6686, %6685 ]
  %6853 = call float @dx.op.binary.f32(i32 36, float %6852, float %6852)  ; FMin(a,b)
  %6854 = call float @dx.op.binary.f32(i32 36, float %6852, float %6853)  ; FMin(a,b)
  %6855 = fcmp fast ogt float %6854, 0.000000e+00
  br i1 %6855, label %6856, label %7166, !dx.controlflow.hints !108

; <label>:6856                                    ; preds = %6851
  %6857 = fmul fast float %6852, %6049
  %6858 = fmul fast float %6852, %6050
  %6859 = fmul fast float %6852, %6051
  %6860 = fsub fast float %6038, %165
  %6861 = fsub fast float %6039, %166
  %6862 = fsub fast float %6040, %167
  %6863 = call float @dx.op.dot3.f32(i32 55, float %6860, float %6861, float %6862, float %6860, float %6861, float %6862)  ; Dot3(ax,ay,az,bx,by,bz)
  %6864 = call float @dx.op.unary.f32(i32 25, float %6863)  ; Rsqrt(value)
  %6865 = fmul fast float %6864, %6860
  %6866 = fmul fast float %6864, %6861
  %6867 = fmul fast float %6864, %6862
  %6868 = call float @dx.op.dot3.f32(i32 55, float %6038, float %6039, float %6040, float %5438, float %5439, float %5440)  ; Dot3(ax,ay,az,bx,by,bz)
  %6869 = call float @dx.op.dot3.f32(i32 55, float %5266, float %5267, float %5268, float %6865, float %6866, float %6867)  ; Dot3(ax,ay,az,bx,by,bz)
  %6870 = call float @dx.op.unary.f32(i32 7, float %6868)  ; Saturate(value)
  %6871 = fmul fast float %6870, %6870
  %6872 = fmul fast float %6871, %5492
  %6873 = call float @dx.op.unary.f32(i32 7, float %6872)  ; Saturate(value)
  %6874 = fmul fast float %6873, %6870
  %6875 = call float @dx.op.dot3.f32(i32 55, float %5438, float %5439, float %5440, float %6865, float %6866, float %6867)  ; Dot3(ax,ay,az,bx,by,bz)
  %6876 = fmul fast float %6875, %6875
  %6877 = call float @dx.op.unary.f32(i32 6, float %6868)  ; FAbs(value)
  %6878 = call float @dx.op.binary.f32(i32 35, float %5867, float 0x3F847AE140000000)  ; FMax(a,b)
  %6879 = fmul fast float %6878, %6878
  %6880 = fmul fast float %6879, %6879
  %6881 = fsub fast float 1.000000e+00, %6880
  %6882 = fmul fast float %5479, %5479
  %6883 = fmul fast float %6882, %6881
  %6884 = fadd fast float %6883, %6880
  %6885 = bitcast float %6884 to i32
  %6886 = ashr i32 %6885, 1
  %6887 = add nsw i32 %6886, 532487669
  %6888 = bitcast i32 %6887 to float
  %6889 = fadd fast float %6888, %5479
  %6890 = fmul fast float %6880, %6876
  %6891 = fsub fast float 1.000000e+00, %6876
  %6892 = fadd fast float %6891, %6890
  %6893 = fmul fast float %6877, %6877
  %6894 = fmul fast float %6893, %6881
  %6895 = fadd fast float %6894, %6880
  %6896 = bitcast float %6895 to i32
  %6897 = ashr i32 %6896, 1
  %6898 = add nsw i32 %6897, 532487669
  %6899 = bitcast i32 %6898 to float
  %6900 = fadd fast float %6899, %6877
  %6901 = fmul fast float %6892, %6892
  %6902 = fmul fast float %6901, %6889
  %6903 = fmul fast float %6902, %6900
  %6904 = fdiv fast float 0x3FF0A00000000000, %6903
  %6905 = fmul fast float %6904, %6880
  %6906 = fmul fast float %5727, 0x3FF9999980000000
  %6907 = fsub fast float 5.000000e+00, %6906
  %6908 = call float @dx.op.unary.f32(i32 6, float %6869)  ; FAbs(value)
  %6909 = fsub fast float 1.000000e+00, %6908
  %6910 = fmul fast float %5727, 0x41D9660740000000
  %6911 = fadd fast float %6910, 0xC1EFBF8940000000
  %6912 = bitcast float %6909 to i32
  %6913 = sitofp i32 %6912 to float
  %6914 = fmul fast float %6913, %6907
  %6915 = fadd fast float %6911, %6914
  %6916 = fptosi float %6915 to i32
  %6917 = bitcast i32 %6916 to float
  %6918 = fsub fast float 1.000000e+00, %5432
  %6919 = fsub fast float 1.000000e+00, %5433
  %6920 = fsub fast float 1.000000e+00, %5477
  %6921 = fmul fast float %6917, %6918
  %6922 = fmul fast float %6917, %6919
  %6923 = fmul fast float %6917, %6920
  %6924 = fadd fast float %6921, %5432
  %6925 = fadd fast float %6922, %5433
  %6926 = fadd fast float %6923, %5477
  br i1 %5750, label %6927, label %6950

; <label>:6927                                    ; preds = %6856
  %6928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %5088, float %6908, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6929 = extractvalue %dx.types.ResRet.f32 %6928, 0
  %6930 = extractvalue %dx.types.ResRet.f32 %6928, 1
  %6931 = extractvalue %dx.types.ResRet.f32 %6928, 2
  %6932 = fadd fast float %6929, -5.000000e-01
  %6933 = fadd fast float %6930, -5.000000e-01
  %6934 = fadd fast float %6931, -5.000000e-01
  %6935 = fmul fast float %5432, 4.000000e+00
  %6936 = fmul fast float %6935, %6918
  %6937 = fmul fast float %6936, %6932
  %6938 = fmul fast float %5433, 4.000000e+00
  %6939 = fmul fast float %6938, %6919
  %6940 = fmul fast float %6939, %6933
  %6941 = fmul fast float %5477, 4.000000e+00
  %6942 = fmul fast float %6941, %6920
  %6943 = fmul fast float %6942, %6934
  %6944 = fadd fast float %6937, %6924
  %6945 = fadd fast float %6940, %6925
  %6946 = fadd fast float %6943, %6926
  %6947 = call float @dx.op.unary.f32(i32 7, float %6944)  ; Saturate(value)
  %6948 = call float @dx.op.unary.f32(i32 7, float %6945)  ; Saturate(value)
  %6949 = call float @dx.op.unary.f32(i32 7, float %6946)  ; Saturate(value)
  br label %6950

; <label>:6950                                    ; preds = %6927, %6856
  %6951 = phi float [ %6947, %6927 ], [ %6924, %6856 ]
  %6952 = phi float [ %6948, %6927 ], [ %6925, %6856 ]
  %6953 = phi float [ %6949, %6927 ], [ %6926, %6856 ]
  %6954 = fmul fast float %6868, 9.843750e-01
  %6955 = fadd fast float %6954, 7.812500e-03
  %6956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %38, float %6955, float %5731, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6957 = extractvalue %dx.types.ResRet.f32 %6956, 0
  %6958 = extractvalue %dx.types.ResRet.f32 %6956, 1
  %6959 = extractvalue %dx.types.ResRet.f32 %6956, 2
  %6960 = extractvalue %dx.types.ResRet.f32 %6956, 3
  %6961 = fsub fast float %6959, %6957
  %6962 = fsub fast float %6960, %6958
  %6963 = fmul fast float %6961, %5737
  %6964 = fmul fast float %6962, %5737
  %6965 = fadd fast float %6963, %6957
  %6966 = fadd fast float %6964, %6958
  %6967 = fmul fast float %6965, %5432
  %6968 = fmul fast float %6965, %5433
  %6969 = fmul fast float %6965, %5477
  %6970 = fadd fast float %6967, %6966
  %6971 = fadd fast float %6968, %6966
  %6972 = fadd fast float %6969, %6966
  br i1 %5750, label %6973, label %6996

; <label>:6973                                    ; preds = %6950
  %6974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %5088, float %6868, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6975 = extractvalue %dx.types.ResRet.f32 %6974, 0
  %6976 = extractvalue %dx.types.ResRet.f32 %6974, 1
  %6977 = extractvalue %dx.types.ResRet.f32 %6974, 2
  %6978 = fadd fast float %6975, -5.000000e-01
  %6979 = fadd fast float %6976, -5.000000e-01
  %6980 = fadd fast float %6977, -5.000000e-01
  %6981 = fmul fast float %5432, 4.000000e+00
  %6982 = fmul fast float %6981, %6918
  %6983 = fmul fast float %6982, %6978
  %6984 = fmul fast float %5433, 4.000000e+00
  %6985 = fmul fast float %6984, %6919
  %6986 = fmul fast float %6985, %6979
  %6987 = fmul fast float %5477, 4.000000e+00
  %6988 = fmul fast float %6987, %6920
  %6989 = fmul fast float %6988, %6980
  %6990 = fadd fast float %6983, %6970
  %6991 = fadd fast float %6986, %6971
  %6992 = fadd fast float %6989, %6972
  %6993 = call float @dx.op.unary.f32(i32 7, float %6990)  ; Saturate(value)
  %6994 = call float @dx.op.unary.f32(i32 7, float %6991)  ; Saturate(value)
  %6995 = call float @dx.op.unary.f32(i32 7, float %6992)  ; Saturate(value)
  br label %6996

; <label>:6996                                    ; preds = %6973, %6950
  %6997 = phi float [ %6993, %6973 ], [ %6970, %6950 ]
  %6998 = phi float [ %6994, %6973 ], [ %6971, %6950 ]
  %6999 = phi float [ %6995, %6973 ], [ %6972, %6950 ]
  %7000 = call float @dx.op.binary.f32(i32 35, float %6998, float %6999)  ; FMax(a,b)
  %7001 = call float @dx.op.binary.f32(i32 35, float %6997, float %7000)  ; FMax(a,b)
  %7002 = fsub fast float 1.000000e+00, %7001
  %7003 = call float @dx.op.binary.f32(i32 35, float %6877, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7004 = fdiv fast float %4442, %7003
  %7005 = fmul fast float %5808, %7004
  %7006 = fmul fast float %5810, %7004
  %7007 = fmul fast float %5812, %7004
  %7008 = call float @dx.op.unary.f32(i32 21, float %7005)  ; Exp(value)
  %7009 = call float @dx.op.unary.f32(i32 21, float %7006)  ; Exp(value)
  %7010 = call float @dx.op.unary.f32(i32 21, float %7007)  ; Exp(value)
  %7011 = call float @dx.op.unary.f32(i32 7, float %7008)  ; Saturate(value)
  %7012 = call float @dx.op.unary.f32(i32 7, float %7009)  ; Saturate(value)
  %7013 = call float @dx.op.unary.f32(i32 7, float %7010)  ; Saturate(value)
  %7014 = select i1 %5805, float %7011, float 0.000000e+00
  %7015 = select i1 %5806, float %7012, float 0.000000e+00
  %7016 = select i1 %5807, float %7013, float 0.000000e+00
  %7017 = fsub fast float -0.000000e+00, %5438
  %7018 = fsub fast float -0.000000e+00, %5439
  %7019 = fsub fast float -0.000000e+00, %5440
  %7020 = call float @dx.op.dot3.f32(i32 55, float %6038, float %6039, float %6040, float %7017, float %7018, float %7019)  ; Dot3(ax,ay,az,bx,by,bz)
  %7021 = call float @dx.op.unary.f32(i32 7, float %7020)  ; Saturate(value)
  %7022 = fmul fast float %7021, 9.843750e-01
  %7023 = fadd fast float %7022, 7.812500e-03
  %7024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %38, float %7023, float %5731, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7025 = extractvalue %dx.types.ResRet.f32 %7024, 0
  %7026 = extractvalue %dx.types.ResRet.f32 %7024, 1
  %7027 = extractvalue %dx.types.ResRet.f32 %7024, 2
  %7028 = extractvalue %dx.types.ResRet.f32 %7024, 3
  %7029 = fsub fast float %7027, %7025
  %7030 = fsub fast float %7028, %7026
  %7031 = fmul fast float %7029, %5737
  %7032 = fmul fast float %7030, %5737
  %7033 = fadd fast float %7031, %7025
  %7034 = fadd fast float %7032, %7026
  %7035 = fmul fast float %7033, %5432
  %7036 = fmul fast float %7033, %5433
  %7037 = fmul fast float %7033, %5477
  %7038 = fadd fast float %7035, %7034
  %7039 = fadd fast float %7036, %7034
  %7040 = fadd fast float %7037, %7034
  br i1 %5750, label %7041, label %7064

; <label>:7041                                    ; preds = %6996
  %7042 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %5088, float %7021, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7043 = extractvalue %dx.types.ResRet.f32 %7042, 0
  %7044 = extractvalue %dx.types.ResRet.f32 %7042, 1
  %7045 = extractvalue %dx.types.ResRet.f32 %7042, 2
  %7046 = fadd fast float %7043, -5.000000e-01
  %7047 = fadd fast float %7044, -5.000000e-01
  %7048 = fadd fast float %7045, -5.000000e-01
  %7049 = fmul fast float %5432, 4.000000e+00
  %7050 = fmul fast float %7049, %6918
  %7051 = fmul fast float %7050, %7046
  %7052 = fmul fast float %5433, 4.000000e+00
  %7053 = fmul fast float %7052, %6919
  %7054 = fmul fast float %7053, %7047
  %7055 = fmul fast float %5477, 4.000000e+00
  %7056 = fmul fast float %7055, %6920
  %7057 = fmul fast float %7056, %7048
  %7058 = fadd fast float %7051, %7038
  %7059 = fadd fast float %7054, %7039
  %7060 = fadd fast float %7057, %7040
  %7061 = call float @dx.op.unary.f32(i32 7, float %7058)  ; Saturate(value)
  %7062 = call float @dx.op.unary.f32(i32 7, float %7059)  ; Saturate(value)
  %7063 = call float @dx.op.unary.f32(i32 7, float %7060)  ; Saturate(value)
  br label %7064

; <label>:7064                                    ; preds = %7041, %6996
  %7065 = phi float [ %7061, %7041 ], [ %7038, %6996 ]
  %7066 = phi float [ %7062, %7041 ], [ %7039, %6996 ]
  %7067 = phi float [ %7063, %7041 ], [ %7040, %6996 ]
  %7068 = call float @dx.op.binary.f32(i32 35, float %7066, float %7067)  ; FMax(a,b)
  %7069 = call float @dx.op.binary.f32(i32 35, float %7065, float %7068)  ; FMax(a,b)
  %7070 = fsub fast float 1.000000e+00, %7069
  %7071 = fmul fast float %5867, %5873
  %7072 = fadd fast float %5866, %7071
  %7073 = call float @dx.op.unary.f32(i32 7, float %7072)  ; Saturate(value)
  %7074 = fsub fast float %6038, %5485
  %7075 = fsub fast float %6039, %5486
  %7076 = fsub fast float %6040, %5487
  %7077 = call float @dx.op.dot3.f32(i32 55, float %7074, float %7075, float %7076, float %7074, float %7075, float %7076)  ; Dot3(ax,ay,az,bx,by,bz)
  %7078 = call float @dx.op.unary.f32(i32 25, float %7077)  ; Rsqrt(value)
  %7079 = fmul fast float %7078, %7074
  %7080 = fmul fast float %7078, %7075
  %7081 = fmul fast float %7078, %7076
  %7082 = call float @dx.op.dot3.f32(i32 55, float %7017, float %7018, float %7019, float %7079, float %7080, float %7081)  ; Dot3(ax,ay,az,bx,by,bz)
  %7083 = fmul fast float %7082, %7082
  %7084 = call float @dx.op.unary.f32(i32 6, float %7021)  ; FAbs(value)
  %7085 = call float @dx.op.binary.f32(i32 35, float %7073, float 0x3F847AE140000000)  ; FMax(a,b)
  %7086 = fmul fast float %7085, %7085
  %7087 = fmul fast float %7086, %7086
  %7088 = fsub fast float 1.000000e+00, %7087
  %7089 = fmul fast float %6882, %7088
  %7090 = fadd fast float %7089, %7087
  %7091 = bitcast float %7090 to i32
  %7092 = ashr i32 %7091, 1
  %7093 = add nsw i32 %7092, 532487669
  %7094 = bitcast i32 %7093 to float
  %7095 = fadd fast float %7094, %5479
  %7096 = fmul fast float %7087, %7083
  %7097 = fsub fast float 1.000000e+00, %7083
  %7098 = fadd fast float %7097, %7096
  %7099 = fmul fast float %7084, %7084
  %7100 = fmul fast float %7099, %7088
  %7101 = fadd fast float %7100, %7087
  %7102 = bitcast float %7101 to i32
  %7103 = ashr i32 %7102, 1
  %7104 = add nsw i32 %7103, 532487669
  %7105 = bitcast i32 %7104 to float
  %7106 = fadd fast float %7105, %7084
  %7107 = fmul fast float %7098, %7098
  %7108 = fmul fast float %7107, %7095
  %7109 = fmul fast float %7108, %7106
  %7110 = fdiv fast float 0x3FF0A00000000000, %7109
  %7111 = fmul fast float %7110, %7087
  %7112 = fmul fast float %7021, %7014
  %7113 = fmul fast float %7021, %7015
  %7114 = fmul fast float %7021, %7016
  %7115 = fmul fast float %7112, %7070
  %7116 = fmul fast float %7115, %7111
  %7117 = fmul fast float %7113, %7070
  %7118 = fmul fast float %7117, %7111
  %7119 = fmul fast float %7114, %7070
  %7120 = fmul fast float %7119, %7111
  %7121 = fmul fast float %6951, %6905
  %7122 = fmul fast float %6952, %6905
  %7123 = fmul fast float %6953, %6905
  %7124 = fsub fast float 1.000000e+00, %6869
  %7125 = bitcast float %7124 to i32
  %7126 = sitofp i32 %7125 to float
  %7127 = fmul fast float %7126, 5.000000e+00
  %7128 = fadd fast float %7127, 0xC1EFBF8940000000
  %7129 = fptosi float %7128 to i32
  %7130 = bitcast i32 %7129 to float
  %7131 = fmul fast float %7130, %5089
  %7132 = fmul fast float %7002, %7131
  %7133 = fmul fast float %7132, %5800
  %7134 = fmul fast float %7132, %5801
  %7135 = fmul fast float %7132, %5802
  %7136 = fadd fast float %7133, %7121
  %7137 = fadd fast float %7134, %7122
  %7138 = fadd fast float %7135, %7123
  %7139 = fmul fast float %7136, %6874
  %7140 = fmul fast float %7137, %6874
  %7141 = fmul fast float %7138, %6874
  %7142 = fmul fast float %6874, %6857
  %7143 = fmul fast float %7142, %7002
  %7144 = fmul fast float %6874, %6858
  %7145 = fmul fast float %7144, %7002
  %7146 = fmul fast float %6874, %6859
  %7147 = fmul fast float %7146, %7002
  %7148 = fadd fast float %7139, %7116
  %7149 = fadd fast float %7140, %7118
  %7150 = fadd fast float %7141, %7120
  %7151 = fmul fast float %7148, %6857
  %7152 = fmul fast float %7149, %6858
  %7153 = fmul fast float %7150, %6859
  %7154 = fadd fast float %7143, %5784
  %7155 = fmul fast float %7154, %5114
  %7156 = fadd fast float %7145, %5785
  %7157 = fmul fast float %7156, %5114
  %7158 = fadd fast float %7147, %5786
  %7159 = fmul fast float %7158, %5114
  %7160 = fadd fast float %7151, %6024
  %7161 = fmul fast float %7160, %5114
  %7162 = fadd fast float %7152, %6028
  %7163 = fmul fast float %7162, %5114
  %7164 = fadd fast float %7153, %6032
  %7165 = fmul fast float %7164, %5114
  br label %7166

; <label>:7166                                    ; preds = %7064, %6851, %6008
  %7167 = phi float [ %6025, %6008 ], [ %6025, %6851 ], [ %7161, %7064 ]
  %7168 = phi float [ %6029, %6008 ], [ %6029, %6851 ], [ %7163, %7064 ]
  %7169 = phi float [ %6033, %6008 ], [ %6033, %6851 ], [ %7165, %7064 ]
  %7170 = phi float [ %5897, %6008 ], [ %5897, %6851 ], [ %7155, %7064 ]
  %7171 = phi float [ %5898, %6008 ], [ %5898, %6851 ], [ %7157, %7064 ]
  %7172 = phi float [ %5899, %6008 ], [ %5899, %6851 ], [ %7159, %7064 ]
  %7173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7174 = extractvalue %dx.types.CBufRet.f32 %7173, 0
  %7175 = fmul fast float %7174, %5880
  %7176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7177 = extractvalue %dx.types.CBufRet.f32 %7176, 3
  %7178 = fsub fast float 1.000000e+00, %5092
  %7179 = call float @dx.op.unary.f32(i32 7, float %7178)  ; Saturate(value)
  %7180 = fadd fast float %7172, %5091
  %7181 = fmul fast float %7180, %5092
  %7182 = fmul fast float %7179, %7177
  %7183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7184 = extractvalue %dx.types.CBufRet.f32 %7183, 3
  %7185 = fmul fast float %7170, %5435
  %7186 = fmul fast float %7171, %5436
  %7187 = fmul fast float %7172, %5437
  %7188 = fcmp fast ogt float %81, %199
  %7189 = and i1 %7188, %5182
  %7190 = or i1 %5261, %7189
  %7191 = icmp eq i32 %5181, 2
  %7192 = fcmp fast ole float %81, %199
  %7193 = and i1 %7192, %7191
  %7194 = or i1 %7193, %7190
  br i1 %7189, label %7195, label %7444

; <label>:7195                                    ; preds = %7166
  %7196 = fmul fast float %5960, %90
  %7197 = fmul fast float %5961, %91
  %7198 = call float @dx.op.unary.f32(i32 7, float %7196)  ; Saturate(value)
  %7199 = call float @dx.op.unary.f32(i32 7, float %7197)  ; Saturate(value)
  %7200 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %7198, float %7199, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7201 = extractvalue %dx.types.ResRet.f32 %7200, 0
  %7202 = extractvalue %dx.types.ResRet.f32 %7200, 1
  %7203 = extractvalue %dx.types.ResRet.f32 %7200, 2
  %7204 = extractvalue %dx.types.ResRet.f32 %7200, 3
  %7205 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %7198, float %7199, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7206 = extractvalue %dx.types.ResRet.f32 %7205, 0
  %7207 = extractvalue %dx.types.ResRet.f32 %7205, 1
  %7208 = extractvalue %dx.types.ResRet.f32 %7205, 2
  %7209 = extractvalue %dx.types.ResRet.f32 %7205, 3
  %7210 = call float @dx.op.binary.f32(i32 35, float %7202, float %7203)  ; FMax(a,b)
  %7211 = call float @dx.op.binary.f32(i32 35, float %7201, float %7210)  ; FMax(a,b)
  %7212 = call float @dx.op.binary.f32(i32 35, float %7211, float %7204)  ; FMax(a,b)
  %7213 = call float @dx.op.binary.f32(i32 36, float %7207, float %7208)  ; FMin(a,b)
  %7214 = call float @dx.op.binary.f32(i32 36, float %7206, float %7213)  ; FMin(a,b)
  %7215 = call float @dx.op.binary.f32(i32 36, float %7214, float %7209)  ; FMin(a,b)
  %7216 = fmul fast float %7212, 2.550000e+02
  %7217 = fadd fast float %7216, 0x3F70101020000000
  %7218 = fptoui float %7217 to i32
  %7219 = fmul fast float %7215, 2.550000e+02
  %7220 = fadd fast float %7219, 0x3F70101020000000
  %7221 = fptoui float %7220 to i32
  %7222 = icmp ult i32 %7218, %7221
  br i1 %7222, label %7223, label %7389

; <label>:7223                                    ; preds = %7195
  %7224 = fcmp fast ogt float %80, 9.843750e-01
  %7225 = fadd fast float %81, -4.000000e+00
  %7226 = select i1 %7224, float -4.000000e+00, float %7225
  %7227 = call float @dx.op.binary.f32(i32 35, float %7226, float 0.000000e+00)  ; FMax(a,b)
  %7228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7229 = extractvalue %dx.types.CBufRet.f32 %7228, 0
  %7230 = fadd fast float %7229, %7227
  %7231 = extractvalue %dx.types.CBufRet.f32 %7228, 2
  %7232 = fmul fast float %7230, %7231
  %7233 = call float @dx.op.unary.f32(i32 23, float %7232)  ; Log(value)
  %7234 = extractvalue %dx.types.CBufRet.f32 %7228, 3
  %7235 = fmul fast float %7234, %7233
  %7236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7237 = extractvalue %dx.types.CBufRet.f32 %7236, 2
  %7238 = fmul fast float %7235, %7237
  %7239 = call float @dx.op.unary.f32(i32 7, float %7238)  ; Saturate(value)
  %7240 = uitofp i32 %7218 to float
  %7241 = uitofp i32 %7221 to float
  %7242 = fadd fast float %7240, 5.000000e-01
  %7243 = fadd fast float %7241, 5.000000e-01
  %7244 = fmul fast float %7237, %7242
  %7245 = fmul fast float %7237, %7243
  %7246 = fadd fast float %7244, 0x3F0FFB4800000000
  %7247 = fadd fast float %7245, 0xBF0FFB4800000000
  %7248 = call float @dx.op.binary.f32(i32 35, float %7239, float %7246)  ; FMax(a,b)
  %7249 = call float @dx.op.binary.f32(i32 36, float %7248, float %7247)  ; FMin(a,b)
  %7250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7251 = extractvalue %dx.types.CBufRet.f32 %7250, 1
  %7252 = extractvalue %dx.types.CBufRet.f32 %7250, 2
  %7253 = extractvalue %dx.types.CBufRet.f32 %7250, 0
  %7254 = fmul fast float %7251, %7249
  %7255 = fadd fast float %7253, %7254
  %7256 = fadd fast float %7253, %7252
  %7257 = fsub fast float %7251, %7252
  %7258 = fadd fast float %7257, %7253
  %7259 = call float @dx.op.binary.f32(i32 35, float %7255, float %7256)  ; FMax(a,b)
  %7260 = call float @dx.op.binary.f32(i32 36, float %7259, float %7258)  ; FMin(a,b)
  %7261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %36, float %7198, float %7199, float %7260, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7262 = extractvalue %dx.types.ResRet.f32 %7261, 0
  %7263 = extractvalue %dx.types.ResRet.f32 %7261, 1
  %7264 = extractvalue %dx.types.ResRet.f32 %7261, 2
  %7265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7266 = extractvalue %dx.types.CBufRet.i32 %7265, 0
  %7267 = extractvalue %dx.types.CBufRet.i32 %7265, 1
  %7268 = uitofp i32 %7266 to float
  %7269 = uitofp i32 %7267 to float
  %7270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7271 = extractvalue %dx.types.CBufRet.f32 %7270, 0
  %7272 = extractvalue %dx.types.CBufRet.f32 %7270, 1
  %7273 = fmul fast float %7268, %7198
  %7274 = fmul fast float %7269, %7199
  %7275 = fadd fast float %7273, -5.000000e-01
  %7276 = fadd fast float %7274, -5.000000e-01
  %7277 = call float @dx.op.unary.f32(i32 22, float %7275)  ; Frc(value)
  %7278 = call float @dx.op.unary.f32(i32 22, float %7276)  ; Frc(value)
  %7279 = fmul fast float %7277, %7277
  %7280 = fmul fast float %7279, %7277
  %7281 = fsub fast float 3.000000e+00, %7277
  %7282 = fmul fast float %7279, %7281
  %7283 = fmul fast float %7277, 3.000000e+00
  %7284 = fmul fast float %7280, 3.000000e+00
  %7285 = fmul fast float %7279, 6.000000e+00
  %7286 = fsub fast float %7284, %7285
  %7287 = fadd fast float %7286, 4.000000e+00
  %7288 = fmul fast float %7287, 0x3FC5555560000000
  %7289 = fmul fast float %7280, -3.000000e+00
  %7290 = fadd fast float %7279, %7277
  %7291 = fmul fast float %7290, 3.000000e+00
  %7292 = fadd fast float %7289, 1.000000e+00
  %7293 = fadd fast float %7292, %7291
  %7294 = fmul fast float %7280, 0x3FC5555560000000
  %7295 = fmul fast float %7278, %7278
  %7296 = fmul fast float %7295, %7278
  %7297 = fsub fast float 3.000000e+00, %7278
  %7298 = fmul fast float %7295, %7297
  %7299 = fmul fast float %7278, 3.000000e+00
  %7300 = fmul fast float %7296, 3.000000e+00
  %7301 = fmul fast float %7295, 6.000000e+00
  %7302 = fsub fast float %7300, %7301
  %7303 = fadd fast float %7302, 4.000000e+00
  %7304 = fmul fast float %7303, 0x3FC5555560000000
  %7305 = fmul fast float %7296, -3.000000e+00
  %7306 = fadd fast float %7295, %7278
  %7307 = fmul fast float %7306, 3.000000e+00
  %7308 = fadd fast float %7305, 1.000000e+00
  %7309 = fadd fast float %7308, %7307
  %7310 = fmul fast float %7296, 0x3FC5555560000000
  %7311 = fadd fast float %7277, 1.000000e+00
  %7312 = fsub fast float 1.000000e+00, %7283
  %7313 = fadd fast float %7312, %7282
  %7314 = fadd fast float %7313, %7287
  %7315 = fmul fast float %7314, 0x3FC5555560000000
  %7316 = fdiv fast float %7288, %7315
  %7317 = fsub fast float %7311, %7316
  %7318 = fsub fast float 1.000000e+00, %7277
  %7319 = fadd fast float %7293, %7280
  %7320 = fmul fast float %7319, 0x3FC5555560000000
  %7321 = fdiv fast float %7294, %7320
  %7322 = fadd fast float %7318, %7321
  %7323 = fadd fast float %7278, 1.000000e+00
  %7324 = fsub fast float 1.000000e+00, %7299
  %7325 = fadd fast float %7324, %7298
  %7326 = fadd fast float %7325, %7303
  %7327 = fmul fast float %7326, 0x3FC5555560000000
  %7328 = fdiv fast float %7304, %7327
  %7329 = fsub fast float %7323, %7328
  %7330 = fsub fast float 1.000000e+00, %7278
  %7331 = fadd fast float %7309, %7296
  %7332 = fmul fast float %7331, 0x3FC5555560000000
  %7333 = fdiv fast float %7310, %7332
  %7334 = fadd fast float %7333, %7330
  %7335 = fmul fast float %7317, %7271
  %7336 = fsub fast float %7198, %7335
  %7337 = fmul fast float %7322, %7271
  %7338 = fadd fast float %7337, %7198
  %7339 = fmul fast float %7334, %7272
  %7340 = fadd fast float %7339, %7199
  %7341 = fmul fast float %7329, %7272
  %7342 = fsub fast float %7199, %7341
  %7343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %7336, float %7342, float %7260, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7344 = extractvalue %dx.types.ResRet.f32 %7343, 0
  %7345 = extractvalue %dx.types.ResRet.f32 %7343, 1
  %7346 = extractvalue %dx.types.ResRet.f32 %7343, 2
  %7347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %7338, float %7342, float %7260, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7348 = extractvalue %dx.types.ResRet.f32 %7347, 0
  %7349 = extractvalue %dx.types.ResRet.f32 %7347, 1
  %7350 = extractvalue %dx.types.ResRet.f32 %7347, 2
  %7351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %7336, float %7340, float %7260, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7352 = extractvalue %dx.types.ResRet.f32 %7351, 0
  %7353 = extractvalue %dx.types.ResRet.f32 %7351, 1
  %7354 = extractvalue %dx.types.ResRet.f32 %7351, 2
  %7355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %7338, float %7340, float %7260, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7356 = extractvalue %dx.types.ResRet.f32 %7355, 0
  %7357 = extractvalue %dx.types.ResRet.f32 %7355, 1
  %7358 = extractvalue %dx.types.ResRet.f32 %7355, 2
  %7359 = fsub fast float %7352, %7344
  %7360 = fsub fast float %7353, %7345
  %7361 = fsub fast float %7354, %7346
  %7362 = fmul fast float %7359, %7332
  %7363 = fmul fast float %7360, %7332
  %7364 = fmul fast float %7361, %7332
  %7365 = fadd fast float %7362, %7344
  %7366 = fadd fast float %7363, %7345
  %7367 = fadd fast float %7364, %7346
  %7368 = fsub fast float %7356, %7348
  %7369 = fsub fast float %7357, %7349
  %7370 = fsub fast float %7358, %7350
  %7371 = fmul fast float %7368, %7332
  %7372 = fmul fast float %7369, %7332
  %7373 = fmul fast float %7370, %7332
  %7374 = fsub fast float %7348, %7365
  %7375 = fadd fast float %7374, %7371
  %7376 = fsub fast float %7349, %7366
  %7377 = fadd fast float %7376, %7372
  %7378 = fsub fast float %7350, %7367
  %7379 = fadd fast float %7378, %7373
  %7380 = fmul fast float %7375, %7320
  %7381 = fmul fast float %7377, %7320
  %7382 = fmul fast float %7379, %7320
  %7383 = fadd fast float %7380, %7365
  %7384 = fadd fast float %7381, %7366
  %7385 = fadd fast float %7382, %7367
  %7386 = fmul fast float %7383, %6015
  %7387 = fmul fast float %7384, %6015
  %7388 = fmul fast float %7385, %6015
  br label %7389

; <label>:7389                                    ; preds = %7223, %7195
  %7390 = phi float [ %7262, %7223 ], [ 1.000000e+00, %7195 ]
  %7391 = phi float [ %7263, %7223 ], [ 1.000000e+00, %7195 ]
  %7392 = phi float [ %7264, %7223 ], [ 1.000000e+00, %7195 ]
  %7393 = phi float [ %7386, %7223 ], [ 0.000000e+00, %7195 ]
  %7394 = phi float [ %7387, %7223 ], [ 0.000000e+00, %7195 ]
  %7395 = phi float [ %7388, %7223 ], [ 0.000000e+00, %7195 ]
  %7396 = call float @dx.op.dot3.f32(i32 55, float %7390, float %7391, float %7392, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7397 = call float @dx.op.dot3.f32(i32 55, float %7393, float %7394, float %7395, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7398 = select i1 %238, float %7396, float %7390
  %7399 = select i1 %238, float %7396, float %7391
  %7400 = select i1 %238, float 1.000000e+00, float %7392
  %7401 = select i1 %238, float %7397, float %7393
  %7402 = select i1 %238, float 0.000000e+00, float %7394
  %7403 = select i1 %238, float 0.000000e+00, float %7395
  %7404 = fmul fast float %7398, %7185
  %7405 = fmul fast float %7399, %7186
  %7406 = fmul fast float %7400, %7187
  %7407 = fadd fast float %7404, %7401
  %7408 = fadd fast float %7405, %7402
  %7409 = fadd fast float %7403, %7406
  %7410 = fmul fast float %7398, %7167
  %7411 = fmul fast float %7399, %7168
  %7412 = fmul fast float %7400, %7169
  %7413 = fmul fast float %115, %5960
  %7414 = fmul fast float %117, %5961
  %7415 = fsub fast float 1.000000e+00, %7413
  %7416 = fsub fast float 1.000000e+00, %7414
  %7417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7418 = extractvalue %dx.types.CBufRet.f32 %7417, 0
  %7419 = extractvalue %dx.types.CBufRet.f32 %7417, 1
  %7420 = extractvalue %dx.types.CBufRet.f32 %7417, 2
  %7421 = fmul fast float %7415, %7418
  %7422 = fmul fast float %7415, %7419
  %7423 = fmul fast float %7415, %7420
  %7424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7425 = extractvalue %dx.types.CBufRet.f32 %7424, 0
  %7426 = extractvalue %dx.types.CBufRet.f32 %7424, 1
  %7427 = extractvalue %dx.types.CBufRet.f32 %7424, 2
  %7428 = fmul fast float %7416, %7425
  %7429 = fmul fast float %7416, %7426
  %7430 = fmul fast float %7416, %7427
  %7431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7432 = extractvalue %dx.types.CBufRet.f32 %7431, 0
  %7433 = extractvalue %dx.types.CBufRet.f32 %7431, 1
  %7434 = extractvalue %dx.types.CBufRet.f32 %7431, 2
  %7435 = fadd fast float %7428, %7432
  %7436 = fadd fast float %7435, %7421
  %7437 = fadd fast float %7429, %7433
  %7438 = fadd fast float %7437, %7422
  %7439 = fadd fast float %7430, %7434
  %7440 = fadd fast float %7439, %7423
  %7441 = fmul fast float %7436, %199
  %7442 = fmul fast float %7438, %199
  %7443 = fmul fast float %7440, %199
  br label %7444

; <label>:7444                                    ; preds = %7389, %7166
  %7445 = phi float [ %7441, %7389 ], [ %145, %7166 ]
  %7446 = phi float [ %7442, %7389 ], [ %146, %7166 ]
  %7447 = phi float [ %7443, %7389 ], [ %147, %7166 ]
  %7448 = phi float [ %199, %7389 ], [ %81, %7166 ]
  %7449 = phi float [ %7407, %7389 ], [ %7185, %7166 ]
  %7450 = phi float [ %7408, %7389 ], [ %7186, %7166 ]
  %7451 = phi float [ %7409, %7389 ], [ %7187, %7166 ]
  %7452 = phi float [ %7410, %7389 ], [ %7167, %7166 ]
  %7453 = phi float [ %7411, %7389 ], [ %7168, %7166 ]
  %7454 = phi float [ %7412, %7389 ], [ %7169, %7166 ]
  %7455 = phi float [ %7390, %7389 ], [ 1.000000e+00, %7166 ]
  br i1 %7194, label %8597, label %7456

; <label>:7456                                    ; preds = %7444
  %7457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7458 = extractvalue %dx.types.CBufRet.f32 %7457, 0
  %7459 = extractvalue %dx.types.CBufRet.f32 %7457, 1
  %7460 = extractvalue %dx.types.CBufRet.f32 %7457, 2
  %7461 = extractvalue %dx.types.CBufRet.f32 %7457, 3
  %7462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7463 = extractvalue %dx.types.CBufRet.f32 %7462, 0
  %7464 = extractvalue %dx.types.CBufRet.f32 %7462, 1
  %7465 = extractvalue %dx.types.CBufRet.f32 %7462, 2
  %7466 = extractvalue %dx.types.CBufRet.f32 %7462, 3
  %7467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7468 = extractvalue %dx.types.CBufRet.f32 %7467, 0
  %7469 = extractvalue %dx.types.CBufRet.f32 %7467, 1
  %7470 = extractvalue %dx.types.CBufRet.f32 %7467, 2
  %7471 = extractvalue %dx.types.CBufRet.f32 %7467, 3
  %7472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7473 = extractvalue %dx.types.CBufRet.f32 %7472, 0
  %7474 = extractvalue %dx.types.CBufRet.f32 %7472, 1
  %7475 = extractvalue %dx.types.CBufRet.f32 %7472, 2
  %7476 = extractvalue %dx.types.CBufRet.f32 %7472, 3
  %7477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7478 = extractvalue %dx.types.CBufRet.f32 %7477, 3
  %7479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7480 = extractvalue %dx.types.CBufRet.f32 %7479, 3
  %7481 = extractvalue %dx.types.CBufRet.f32 %7479, 0
  %7482 = extractvalue %dx.types.CBufRet.f32 %7479, 1
  %7483 = extractvalue %dx.types.CBufRet.f32 %7479, 2
  %7484 = fcmp fast olt float %7483, -5.000000e-01
  %7485 = call float @dx.op.dot3.f32(i32 55, float %7445, float %7446, float %7447, float %7445, float %7446, float %7447)  ; Dot3(ax,ay,az,bx,by,bz)
  %7486 = call float @dx.op.unary.f32(i32 25, float %7485)  ; Rsqrt(value)
  %7487 = fmul fast float %7486, %7485
  %7488 = fmul fast float %7486, %7445
  %7489 = fmul fast float %7486, %7446
  %7490 = fmul fast float %7486, %7447
  %7491 = fadd fast float %7487, %7461
  %7492 = call float @dx.op.dot3.f32(i32 55, float %7488, float %7489, float %7490, float %7458, float %7459, float %7460)  ; Dot3(ax,ay,az,bx,by,bz)
  %7493 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7494 = extractvalue %dx.types.CBufRet.i32 %7493, 1
  %7495 = and i32 %7494, 1
  %7496 = icmp ne i32 %7495, 0
  %7497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7498 = extractvalue %dx.types.CBufRet.f32 %7497, 2
  %7499 = fcmp fast ogt float %7498, 0.000000e+00
  %7500 = and i1 %7496, %7499
  br i1 %7500, label %7501, label %7907, !dx.controlflow.hints !109

; <label>:7501                                    ; preds = %7456
  %7502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7503 = extractvalue %dx.types.CBufRet.f32 %7502, 3
  %7504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7505 = extractvalue %dx.types.CBufRet.f32 %7504, 2
  %7506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7507 = extractvalue %dx.types.CBufRet.f32 %7506, 2
  %7508 = fsub fast float %7505, %7507
  %7509 = and i32 %7494, 2
  %7510 = extractvalue %dx.types.CBufRet.i32 %7493, 0
  %7511 = call i32 @dx.op.binary.i32(i32 40, i32 %7510, i32 3)  ; UMin(a,b)
  %7512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7513 = extractvalue %dx.types.CBufRet.f32 %7512, 0
  %7514 = extractvalue %dx.types.CBufRet.f32 %7512, 1
  %7515 = extractvalue %dx.types.CBufRet.f32 %7506, 0
  %7516 = extractvalue %dx.types.CBufRet.f32 %7506, 1
  %7517 = fsub fast float %7513, %7515
  %7518 = fsub fast float %7514, %7516
  %7519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7520 = extractvalue %dx.types.CBufRet.f32 %7519, 0
  %7521 = fcmp fast ogt float %7520, 0.000000e+00
  %7522 = fsub fast float -0.000000e+00, %7517
  %7523 = fsub fast float -0.000000e+00, %7518
  %7524 = call float @dx.op.dot2.f32(i32 54, float %7488, float %7489, float %7488, float %7489)  ; Dot2(ax,ay,bx,by)
  %7525 = call float @dx.op.dot2.f32(i32 54, float %7488, float %7489, float %7522, float %7523)  ; Dot2(ax,ay,bx,by)
  %7526 = fmul fast float %7525, 2.000000e+00
  %7527 = call float @dx.op.dot2.f32(i32 54, float %7522, float %7523, float %7522, float %7523)  ; Dot2(ax,ay,bx,by)
  %7528 = fmul fast float %7520, %7520
  %7529 = fsub fast float %7527, %7528
  %7530 = fmul fast float %7526, %7526
  %7531 = fmul fast float %7524, 4.000000e+00
  %7532 = fmul fast float %7531, %7529
  %7533 = fsub fast float %7530, %7532
  %7534 = fcmp fast ogt float %7533, 0.000000e+00
  br i1 %7534, label %7535, label %7550

; <label>:7535                                    ; preds = %7501
  %7536 = fcmp fast ogt float %7526, 0.000000e+00
  %7537 = call float @dx.op.unary.f32(i32 24, float %7533)  ; Sqrt(value)
  %7538 = fsub fast float -0.000000e+00, %7537
  %7539 = select i1 %7536, float %7537, float %7538
  %7540 = fadd fast float %7539, %7526
  %7541 = fmul float %7540, -5.000000e-01
  %7542 = fdiv fast float %7541, %7524
  %7543 = call float @dx.op.binary.f32(i32 35, float %7542, float 0.000000e+00)  ; FMax(a,b)
  %7544 = call float @dx.op.binary.f32(i32 36, float %7487, float %7543)  ; FMin(a,b)
  %7545 = fdiv fast float %7529, %7541
  %7546 = call float @dx.op.binary.f32(i32 35, float %7545, float 0.000000e+00)  ; FMax(a,b)
  %7547 = call float @dx.op.binary.f32(i32 36, float %7487, float %7546)  ; FMin(a,b)
  %7548 = call float @dx.op.binary.f32(i32 36, float %7544, float %7547)  ; FMin(a,b)
  %7549 = call float @dx.op.binary.f32(i32 35, float %7544, float %7547)  ; FMax(a,b)
  br label %7550

; <label>:7550                                    ; preds = %7535, %7501
  %7551 = phi float [ %7549, %7535 ], [ -1.000000e+00, %7501 ]
  %7552 = phi float [ %7548, %7535 ], [ -1.000000e+00, %7501 ]
  %7553 = phi i1 [ true, %7535 ], [ false, %7501 ]
  %7554 = and i1 %7521, %7553
  br i1 %7554, label %7555, label %7557

; <label>:7555                                    ; preds = %7550
  %7556 = fcmp fast oeq float %7552, %7551
  br i1 %7556, label %7860, label %7558

; <label>:7557                                    ; preds = %7550
  br i1 %7521, label %7860, label %7558

; <label>:7558                                    ; preds = %7557, %7555
  %7559 = phi float [ %7487, %7557 ], [ %7551, %7555 ]
  %7560 = phi float [ 0.000000e+00, %7557 ], [ %7552, %7555 ]
  %7561 = icmp ne i32 %7509, 0
  %7562 = fmul fast float %7559, %7490
  %7563 = fadd fast float %7562, %7503
  %7564 = fmul fast float %7563, %7559
  %7565 = select i1 %7561, float 0.000000e+00, float %7564
  %7566 = fcmp fast oeq float %7490, 0.000000e+00
  %7567 = fdiv fast float %7508, %7490
  %7568 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7567)  ; FMax(a,b)
  %7569 = select i1 %7566, float %7559, float %7568
  %7570 = call float @dx.op.binary.f32(i32 36, float %7559, float %7569)  ; FMin(a,b)
  %7571 = fcmp fast ogt float %7490, 0.000000e+00
  %7572 = fcmp fast olt float %7508, 0.000000e+00
  br i1 %7571, label %7573, label %7630

; <label>:7573                                    ; preds = %7558
  %7574 = icmp eq i32 %7509, 0
  br i1 %7572, label %7575, label %7619

; <label>:7575                                    ; preds = %7573
  %7576 = select i1 %7574, float %7559, float 0.000000e+00
  %7577 = fsub fast float -0.000000e+00, %7576
  %7578 = call float @dx.op.unary.f32(i32 6, float %7577)  ; FAbs(value)
  %7579 = fmul fast float %7576, %7490
  %7580 = fadd fast float %7579, %7503
  %7581 = fmul fast float %7578, %7580
  %7582 = fsub fast float %7565, %7581
  %7583 = fsub fast float %7559, %7578
  %7584 = select i1 %7574, float %7583, float 0.000000e+00
  %7585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7586 = extractvalue %dx.types.CBufRet.f32 %7585, 0
  %7587 = extractvalue %dx.types.CBufRet.f32 %7585, 1
  %7588 = extractvalue %dx.types.CBufRet.f32 %7585, 2
  %7589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7590 = extractvalue %dx.types.CBufRet.f32 %7589, 0
  %7591 = extractvalue %dx.types.CBufRet.f32 %7589, 1
  %7592 = extractvalue %dx.types.CBufRet.f32 %7589, 2
  %7593 = extractvalue %dx.types.CBufRet.f32 %7589, 3
  %7594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7595 = extractvalue %dx.types.CBufRet.f32 %7594, 3
  %7596 = call float @dx.op.binary.f32(i32 36, float %7582, float %7595)  ; FMin(a,b)
  %7597 = fmul fast float %7593, %7584
  %7598 = call float @dx.op.unary.f32(i32 7, float %7597)  ; Saturate(value)
  %7599 = fsub fast float %7590, %7586
  %7600 = fsub fast float %7591, %7587
  %7601 = fsub fast float %7592, %7588
  %7602 = fmul fast float %7598, %7599
  %7603 = fmul fast float %7598, %7600
  %7604 = fmul fast float %7598, %7601
  %7605 = fadd fast float %7602, %7586
  %7606 = fadd fast float %7603, %7587
  %7607 = fadd fast float %7604, %7588
  %7608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7609 = extractvalue %dx.types.CBufRet.f32 %7608, 0
  %7610 = extractvalue %dx.types.CBufRet.f32 %7608, 1
  %7611 = fadd fast float %7610, %7609
  %7612 = call float @dx.op.unary.f32(i32 7, float %7611)  ; Saturate(value)
  %7613 = extractvalue %dx.types.CBufRet.f32 %7608, 2
  %7614 = extractvalue %dx.types.CBufRet.f32 %7608, 3
  %7615 = fadd fast float %7614, %7613
  %7616 = call float @dx.op.unary.f32(i32 7, float %7615)  ; Saturate(value)
  %7617 = fmul fast float %7612, %7596
  %7618 = fmul fast float %7617, %7616
  br label %7860

; <label>:7619                                    ; preds = %7573
  br i1 %7574, label %7620, label %7641

; <label>:7620                                    ; preds = %7619
  %7621 = call float @dx.op.binary.f32(i32 36, float %7570, float %7560)  ; FMin(a,b)
  %7622 = fsub fast float %7570, %7621
  %7623 = fsub fast float %7622, %7559
  %7624 = call float @dx.op.unary.f32(i32 6, float %7623)  ; FAbs(value)
  %7625 = fadd fast float %7622, %7559
  %7626 = fmul fast float %7625, %7490
  %7627 = fadd fast float %7626, %7503
  %7628 = fmul fast float %7627, %7624
  %7629 = fsub fast float %7565, %7628
  br label %7641

; <label>:7630                                    ; preds = %7558
  br i1 %7572, label %7631, label %7641

; <label>:7631                                    ; preds = %7630
  %7632 = call float @dx.op.binary.f32(i32 35, float %7560, float %7570)  ; FMax(a,b)
  %7633 = icmp eq i32 %7509, 0
  %7634 = select i1 %7633, float %7570, float 0.000000e+00
  %7635 = fsub fast float -0.000000e+00, %7634
  %7636 = call float @dx.op.unary.f32(i32 6, float %7635)  ; FAbs(value)
  %7637 = fmul fast float %7634, %7490
  %7638 = fadd fast float %7637, %7503
  %7639 = fmul fast float %7636, %7638
  %7640 = fsub fast float %7565, %7639
  br label %7641

; <label>:7641                                    ; preds = %7631, %7630, %7620, %7619
  %7642 = phi float [ %7560, %7619 ], [ %7560, %7620 ], [ %7632, %7631 ], [ %7560, %7630 ]
  %7643 = phi float [ 0.000000e+00, %7619 ], [ %7624, %7620 ], [ %7636, %7631 ], [ 0.000000e+00, %7630 ]
  %7644 = phi float [ %7565, %7619 ], [ %7629, %7620 ], [ %7640, %7631 ], [ %7565, %7630 ]
  %7645 = phi float [ %7570, %7619 ], [ %7570, %7620 ], [ %7559, %7631 ], [ %7559, %7630 ]
  %7646 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 0
  store float -1.000000e+00, float* %7646, align 4, !tbaa !110, !noalias !112
  %7647 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 1
  store float -1.000000e+00, float* %7647, align 4, !tbaa !110, !noalias !112
  %7648 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 2
  store float -1.000000e+00, float* %7648, align 4, !tbaa !110, !noalias !112
  %7649 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 0
  store float -1.000000e+00, float* %7649, align 4, !tbaa !110, !noalias !112
  %7650 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 1
  store float -1.000000e+00, float* %7650, align 4, !tbaa !110, !noalias !112
  %7651 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 2
  store float -1.000000e+00, float* %7651, align 4, !tbaa !110, !noalias !112
  %7652 = icmp sgt i32 %7511, 0
  br i1 %7652, label %7653, label %7714

; <label>:7653                                    ; preds = %7641
  br label %7654

; <label>:7654                                    ; preds = %7703, %7653
  %7655 = phi i32 [ %7704, %7703 ], [ 0, %7653 ]
  %7656 = phi i32 [ %7705, %7703 ], [ 0, %7653 ]
  %7657 = add nuw i32 %7656, 171
  %7658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 %7657)  ; CBufferLoadLegacy(handle,regIndex)
  %7659 = extractvalue %dx.types.CBufRet.f32 %7658, 0
  %7660 = extractvalue %dx.types.CBufRet.f32 %7658, 1
  %7661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7662 = extractvalue %dx.types.CBufRet.f32 %7661, 0
  %7663 = extractvalue %dx.types.CBufRet.f32 %7661, 1
  %7664 = fsub fast float %7659, %7662
  %7665 = fsub fast float %7660, %7663
  %7666 = extractvalue %dx.types.CBufRet.f32 %7658, 2
  %7667 = fsub fast float -0.000000e+00, %7664
  %7668 = fsub fast float -0.000000e+00, %7665
  %7669 = call float @dx.op.dot2.f32(i32 54, float %7488, float %7489, float %7667, float %7668)  ; Dot2(ax,ay,bx,by)
  %7670 = fmul fast float %7669, 2.000000e+00
  %7671 = call float @dx.op.dot2.f32(i32 54, float %7667, float %7668, float %7667, float %7668)  ; Dot2(ax,ay,bx,by)
  %7672 = fmul fast float %7666, %7666
  %7673 = fsub fast float %7671, %7672
  %7674 = fmul fast float %7670, %7670
  %7675 = fmul fast float %7531, %7673
  %7676 = fsub fast float %7674, %7675
  %7677 = fcmp fast ogt float %7676, 0.000000e+00
  br i1 %7677, label %7678, label %7693

; <label>:7678                                    ; preds = %7654
  %7679 = fcmp fast ogt float %7670, 0.000000e+00
  %7680 = call float @dx.op.unary.f32(i32 24, float %7676)  ; Sqrt(value)
  %7681 = fsub fast float -0.000000e+00, %7680
  %7682 = select i1 %7679, float %7680, float %7681
  %7683 = fadd fast float %7682, %7670
  %7684 = fmul float %7683, -5.000000e-01
  %7685 = fdiv fast float %7684, %7524
  %7686 = call float @dx.op.binary.f32(i32 35, float %7685, float 0.000000e+00)  ; FMax(a,b)
  %7687 = call float @dx.op.binary.f32(i32 36, float %7559, float %7686)  ; FMin(a,b)
  %7688 = fdiv fast float %7673, %7684
  %7689 = call float @dx.op.binary.f32(i32 35, float %7688, float 0.000000e+00)  ; FMax(a,b)
  %7690 = call float @dx.op.binary.f32(i32 36, float %7559, float %7689)  ; FMin(a,b)
  %7691 = call float @dx.op.binary.f32(i32 36, float %7687, float %7690)  ; FMin(a,b)
  %7692 = call float @dx.op.binary.f32(i32 35, float %7687, float %7690)  ; FMax(a,b)
  br label %7693

; <label>:7693                                    ; preds = %7678, %7654
  %7694 = phi float [ %7692, %7678 ], [ -1.000000e+00, %7654 ]
  %7695 = phi float [ %7691, %7678 ], [ -1.000000e+00, %7654 ]
  %7696 = phi i1 [ true, %7678 ], [ false, %7654 ]
  br i1 %7696, label %7697, label %7703

; <label>:7697                                    ; preds = %7693
  %7698 = call float @dx.op.binary.f32(i32 35, float %7642, float %7695)  ; FMax(a,b)
  %7699 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %7656
  store float %7698, float* %7699, align 4, !tbaa !110, !noalias !112
  %7700 = call float @dx.op.binary.f32(i32 35, float %7642, float %7694)  ; FMax(a,b)
  %7701 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %7656
  store float %7700, float* %7701, align 4, !tbaa !110, !noalias !112
  %7702 = add nsw i32 %7655, 1
  br label %7703

; <label>:7703                                    ; preds = %7697, %7693
  %7704 = phi i32 [ %7702, %7697 ], [ %7655, %7693 ]
  %7705 = add nuw nsw i32 %7656, 1
  %7706 = icmp eq i32 %7705, %7511
  br i1 %7706, label %7707, label %7654

; <label>:7707                                    ; preds = %7703
  %7708 = load float, float* %7648, align 4, !tbaa !110, !alias.scope !128, !noalias !131
  %7709 = load float, float* %7647, align 4, !tbaa !110, !alias.scope !134, !noalias !135
  %7710 = load float, float* %7646, align 4, !tbaa !110, !alias.scope !136, !noalias !137
  %7711 = load float, float* %7651, align 4, !tbaa !110, !alias.scope !138, !noalias !141
  %7712 = load float, float* %7650, align 4, !tbaa !110, !alias.scope !144, !noalias !145
  %7713 = load float, float* %7649, align 4, !tbaa !110, !alias.scope !146, !noalias !147
  br label %7714

; <label>:7714                                    ; preds = %7707, %7641
  %7715 = phi float [ -1.000000e+00, %7641 ], [ %7713, %7707 ]
  %7716 = phi float [ -1.000000e+00, %7641 ], [ %7712, %7707 ]
  %7717 = phi float [ -1.000000e+00, %7641 ], [ %7711, %7707 ]
  %7718 = phi float [ -1.000000e+00, %7641 ], [ %7710, %7707 ]
  %7719 = phi float [ -1.000000e+00, %7641 ], [ %7709, %7707 ]
  %7720 = phi float [ -1.000000e+00, %7641 ], [ %7708, %7707 ]
  %7721 = phi i32 [ 0, %7641 ], [ %7704, %7707 ]
  %7722 = call float @dx.op.binary.f32(i32 36, float %7719, float %7720)  ; FMin(a,b)
  %7723 = call float @dx.op.binary.f32(i32 36, float %7718, float %7722)  ; FMin(a,b)
  %7724 = call float @dx.op.binary.f32(i32 35, float %7718, float %7719)  ; FMax(a,b)
  %7725 = call float @dx.op.binary.f32(i32 36, float %7724, float %7720)  ; FMin(a,b)
  %7726 = call float @dx.op.binary.f32(i32 36, float %7718, float %7719)  ; FMin(a,b)
  %7727 = call float @dx.op.binary.f32(i32 35, float %7726, float %7725)  ; FMax(a,b)
  %7728 = call float @dx.op.binary.f32(i32 35, float %7719, float %7720)  ; FMax(a,b)
  %7729 = call float @dx.op.binary.f32(i32 35, float %7718, float %7728)  ; FMax(a,b)
  store float %7723, float* %7646, align 4, !tbaa !110, !alias.scope !136, !noalias !137
  store float %7727, float* %7647, align 4, !tbaa !110, !alias.scope !134, !noalias !135
  store float %7729, float* %7648, align 4, !tbaa !110, !alias.scope !128, !noalias !131
  %7730 = call float @dx.op.binary.f32(i32 36, float %7716, float %7717)  ; FMin(a,b)
  %7731 = call float @dx.op.binary.f32(i32 36, float %7715, float %7730)  ; FMin(a,b)
  %7732 = call float @dx.op.binary.f32(i32 35, float %7715, float %7716)  ; FMax(a,b)
  %7733 = call float @dx.op.binary.f32(i32 36, float %7732, float %7717)  ; FMin(a,b)
  %7734 = call float @dx.op.binary.f32(i32 36, float %7715, float %7716)  ; FMin(a,b)
  %7735 = call float @dx.op.binary.f32(i32 35, float %7734, float %7733)  ; FMax(a,b)
  %7736 = call float @dx.op.binary.f32(i32 35, float %7716, float %7717)  ; FMax(a,b)
  %7737 = call float @dx.op.binary.f32(i32 35, float %7715, float %7736)  ; FMax(a,b)
  store float %7731, float* %7649, align 4, !tbaa !110, !alias.scope !146, !noalias !147
  store float %7735, float* %7650, align 4, !tbaa !110, !alias.scope !144, !noalias !145
  store float %7737, float* %7651, align 4, !tbaa !110, !alias.scope !138, !noalias !141
  %7738 = sub nsw i32 3, %7721
  %7739 = icmp sgt i32 %7738, 2
  br i1 %7739, label %7740, label %7778

; <label>:7740                                    ; preds = %7714
  %7741 = icmp eq i32 %7509, 0
  %7742 = fsub fast float %7559, %7643
  %7743 = select i1 %7741, float %7742, float %7643
  %7744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7745 = extractvalue %dx.types.CBufRet.f32 %7744, 0
  %7746 = extractvalue %dx.types.CBufRet.f32 %7744, 1
  %7747 = extractvalue %dx.types.CBufRet.f32 %7744, 2
  %7748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7749 = extractvalue %dx.types.CBufRet.f32 %7748, 0
  %7750 = extractvalue %dx.types.CBufRet.f32 %7748, 1
  %7751 = extractvalue %dx.types.CBufRet.f32 %7748, 2
  %7752 = extractvalue %dx.types.CBufRet.f32 %7748, 3
  %7753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7754 = extractvalue %dx.types.CBufRet.f32 %7753, 3
  %7755 = call float @dx.op.binary.f32(i32 36, float %7644, float %7754)  ; FMin(a,b)
  %7756 = fmul fast float %7752, %7743
  %7757 = call float @dx.op.unary.f32(i32 7, float %7756)  ; Saturate(value)
  %7758 = fsub fast float %7749, %7745
  %7759 = fsub fast float %7750, %7746
  %7760 = fsub fast float %7751, %7747
  %7761 = fmul fast float %7757, %7758
  %7762 = fmul fast float %7757, %7759
  %7763 = fmul fast float %7757, %7760
  %7764 = fadd fast float %7761, %7745
  %7765 = fadd fast float %7762, %7746
  %7766 = fadd fast float %7763, %7747
  %7767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7768 = extractvalue %dx.types.CBufRet.f32 %7767, 0
  %7769 = extractvalue %dx.types.CBufRet.f32 %7767, 1
  %7770 = fadd fast float %7769, %7768
  %7771 = call float @dx.op.unary.f32(i32 7, float %7770)  ; Saturate(value)
  %7772 = extractvalue %dx.types.CBufRet.f32 %7767, 2
  %7773 = extractvalue %dx.types.CBufRet.f32 %7767, 3
  %7774 = fadd fast float %7773, %7772
  %7775 = call float @dx.op.unary.f32(i32 7, float %7774)  ; Saturate(value)
  %7776 = fmul fast float %7771, %7755
  %7777 = fmul fast float %7776, %7775
  br label %7860

; <label>:7778                                    ; preds = %7714
  %7779 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %7738
  %7780 = load float, float* %7779, align 4, !tbaa !110, !noalias !112
  %7781 = fcmp fast olt float %7780, %7645
  %7782 = icmp sgt i32 %7721, 0
  %7783 = and i1 %7782, %7781
  br i1 %7783, label %7784, label %7821

; <label>:7784                                    ; preds = %7778
  br label %7785

; <label>:7785                                    ; preds = %7814, %7784
  %7786 = phi float [ %7815, %7814 ], [ %7643, %7784 ]
  %7787 = phi float [ %7816, %7814 ], [ %7644, %7784 ]
  %7788 = phi float [ %7796, %7814 ], [ %7780, %7784 ]
  %7789 = phi i32 [ %7793, %7814 ], [ %7738, %7784 ]
  %7790 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %7789
  %7791 = load float, float* %7790, align 4, !tbaa !110, !noalias !112
  %7792 = icmp slt i32 %7789, 2
  %7793 = add nsw i32 %7789, 1
  %7794 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %7793
  %7795 = load float, float* %7794, align 4, !tbaa !110, !noalias !112
  %7796 = select i1 %7792, float %7795, float %7559
  %7797 = call float @dx.op.binary.f32(i32 36, float %7796, float %7791)  ; FMin(a,b)
  %7798 = call float @dx.op.binary.f32(i32 36, float %7645, float %7797)  ; FMin(a,b)
  %7799 = icmp eq i32 %7509, 0
  %7800 = fadd fast float %7798, %7788
  %7801 = fmul fast float %7800, %7490
  %7802 = fadd fast float %7801, %7503
  br i1 %7799, label %7808, label %7803

; <label>:7803                                    ; preds = %7785
  %7804 = fsub fast float %7798, %7788
  %7805 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7804)  ; FMax(a,b)
  %7806 = fmul fast float %7805, %7802
  %7807 = fadd fast float %7806, %7787
  br label %7814

; <label>:7808                                    ; preds = %7785
  %7809 = fsub fast float %7788, %7798
  %7810 = call float @dx.op.unary.f32(i32 6, float %7809)  ; FAbs(value)
  %7811 = fadd fast float %7810, %7786
  %7812 = fmul fast float %7810, %7802
  %7813 = fsub fast float %7787, %7812
  br label %7814

; <label>:7814                                    ; preds = %7808, %7803
  %7815 = phi float [ %7805, %7803 ], [ %7811, %7808 ]
  %7816 = phi float [ %7807, %7803 ], [ %7813, %7808 ]
  %7817 = fcmp fast olt float %7796, %7645
  %7818 = icmp slt i32 %7793, 3
  %7819 = and i1 %7818, %7817
  br i1 %7819, label %7785, label %7820

; <label>:7820                                    ; preds = %7814
  br label %7821

; <label>:7821                                    ; preds = %7820, %7778
  %7822 = phi float [ %7643, %7778 ], [ %7815, %7820 ]
  %7823 = phi float [ %7644, %7778 ], [ %7816, %7820 ]
  %7824 = fsub fast float %7559, %7822
  %7825 = select i1 %7561, float %7822, float %7824
  %7826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7827 = extractvalue %dx.types.CBufRet.f32 %7826, 0
  %7828 = extractvalue %dx.types.CBufRet.f32 %7826, 1
  %7829 = extractvalue %dx.types.CBufRet.f32 %7826, 2
  %7830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7831 = extractvalue %dx.types.CBufRet.f32 %7830, 0
  %7832 = extractvalue %dx.types.CBufRet.f32 %7830, 1
  %7833 = extractvalue %dx.types.CBufRet.f32 %7830, 2
  %7834 = extractvalue %dx.types.CBufRet.f32 %7830, 3
  %7835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7836 = extractvalue %dx.types.CBufRet.f32 %7835, 3
  %7837 = call float @dx.op.binary.f32(i32 36, float %7823, float %7836)  ; FMin(a,b)
  %7838 = fmul fast float %7834, %7825
  %7839 = call float @dx.op.unary.f32(i32 7, float %7838)  ; Saturate(value)
  %7840 = fsub fast float %7831, %7827
  %7841 = fsub fast float %7832, %7828
  %7842 = fsub fast float %7833, %7829
  %7843 = fmul fast float %7839, %7840
  %7844 = fmul fast float %7839, %7841
  %7845 = fmul fast float %7839, %7842
  %7846 = fadd fast float %7843, %7827
  %7847 = fadd fast float %7844, %7828
  %7848 = fadd fast float %7845, %7829
  %7849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7850 = extractvalue %dx.types.CBufRet.f32 %7849, 0
  %7851 = extractvalue %dx.types.CBufRet.f32 %7849, 1
  %7852 = fadd fast float %7851, %7850
  %7853 = call float @dx.op.unary.f32(i32 7, float %7852)  ; Saturate(value)
  %7854 = extractvalue %dx.types.CBufRet.f32 %7849, 2
  %7855 = extractvalue %dx.types.CBufRet.f32 %7849, 3
  %7856 = fadd fast float %7855, %7854
  %7857 = call float @dx.op.unary.f32(i32 7, float %7856)  ; Saturate(value)
  %7858 = fmul fast float %7853, %7837
  %7859 = fmul fast float %7858, %7857
  br label %7860

; <label>:7860                                    ; preds = %7821, %7740, %7575, %7557, %7555
  %7861 = phi float [ %7584, %7575 ], [ %7743, %7740 ], [ %7825, %7821 ], [ 0.000000e+00, %7555 ], [ 0.000000e+00, %7557 ]
  %7862 = phi float [ %7618, %7575 ], [ %7777, %7740 ], [ %7859, %7821 ], [ 0.000000e+00, %7555 ], [ 0.000000e+00, %7557 ]
  %7863 = phi float [ %7605, %7575 ], [ %7764, %7740 ], [ %7846, %7821 ], [ 0.000000e+00, %7555 ], [ 0.000000e+00, %7557 ]
  %7864 = phi float [ %7606, %7575 ], [ %7765, %7740 ], [ %7847, %7821 ], [ 0.000000e+00, %7555 ], [ 0.000000e+00, %7557 ]
  %7865 = phi float [ %7607, %7575 ], [ %7766, %7740 ], [ %7848, %7821 ], [ 0.000000e+00, %7555 ], [ 0.000000e+00, %7557 ]
  %7866 = fmul fast float %7498, %7862
  %7867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7868 = extractvalue %dx.types.CBufRet.f32 %7867, 2
  %7869 = fsub fast float %7505, %7868
  %7870 = fcmp fast olt float %7866, -2.000000e+01
  %7871 = call float @dx.op.unary.f32(i32 21, float %7866)  ; Exp(value)
  %7872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7873 = extractvalue %dx.types.CBufRet.f32 %7872, 2
  %7874 = extractvalue %dx.types.CBufRet.f32 %7872, 3
  %7875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7876 = extractvalue %dx.types.CBufRet.f32 %7875, 2
  %7877 = fmul fast float %7874, %7869
  %7878 = call float @dx.op.unary.f32(i32 7, float %7877)  ; Saturate(value)
  %7879 = fsub fast float 1.000000e+00, %7878
  %7880 = fmul fast float %7490, 5.000000e-01
  %7881 = fadd fast float %7880, 5.000000e-01
  %7882 = call float @dx.op.unary.f32(i32 7, float %7881)  ; Saturate(value)
  %7883 = fsub fast float 1.000000e+00, %7882
  %7884 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7879)  ; FMax(a,b)
  %7885 = fdiv fast float %7883, %7884
  %7886 = fsub fast float %7869, %7447
  %7887 = call float @dx.op.unary.f32(i32 6, float %7886)  ; FAbs(value)
  %7888 = fmul fast float %7887, %7873
  %7889 = call float @dx.op.unary.f32(i32 7, float %7885)  ; Saturate(value)
  %7890 = fsub fast float 1.000000e+00, %7888
  %7891 = fmul fast float %7890, %7889
  %7892 = fadd fast float %7891, %7888
  %7893 = fmul fast float %7876, %7869
  %7894 = call float @dx.op.unary.f32(i32 7, float %7893)  ; Saturate(value)
  %7895 = fsub fast float 1.000000e+00, %7892
  %7896 = fmul fast float %7895, %7894
  %7897 = fadd fast float %7896, %7892
  %7898 = call float @dx.op.unary.f32(i32 7, float %7897)  ; Saturate(value)
  %7899 = fadd fast float %7871, -1.000000e+00
  %7900 = select i1 %7870, float -1.000000e+00, float %7899
  %7901 = fmul fast float %7898, %7900
  %7902 = fadd fast float %7901, 1.000000e+00
  %7903 = fsub fast float -0.000000e+00, %7901
  %7904 = fmul fast float %7863, %7903
  %7905 = fmul fast float %7864, %7903
  %7906 = fmul fast float %7865, %7903
  br label %7907

; <label>:7907                                    ; preds = %7860, %7456
  %7908 = phi float [ %7861, %7860 ], [ 0.000000e+00, %7456 ]
  %7909 = phi float [ %7902, %7860 ], [ 1.000000e+00, %7456 ]
  %7910 = phi float [ %7904, %7860 ], [ 0.000000e+00, %7456 ]
  %7911 = phi float [ %7905, %7860 ], [ 0.000000e+00, %7456 ]
  %7912 = phi float [ %7906, %7860 ], [ 0.000000e+00, %7456 ]
  %7913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7914 = extractvalue %dx.types.CBufRet.f32 %7913, 1
  %7915 = fsub fast float 1.000000e+00, %7909
  %7916 = fmul fast float %7915, %7491
  %7917 = fmul fast float %7916, %7914
  %7918 = fsub fast float %7491, %7917
  br i1 %7484, label %7919, label %7948, !dx.controlflow.hints !148

; <label>:7919                                    ; preds = %7907
  %7920 = fmul fast float %7492, %7481
  %7921 = fadd fast float %7920, %7482
  %7922 = call float @dx.op.unary.f32(i32 7, float %7921)  ; Saturate(value)
  %7923 = fmul fast float %7463, %7918
  %7924 = fsub fast float -0.000000e+00, %7923
  %7925 = fmul fast float %7464, %7918
  %7926 = fsub fast float -0.000000e+00, %7925
  %7927 = call float @dx.op.unary.f32(i32 21, float %7924)  ; Exp(value)
  %7928 = call float @dx.op.unary.f32(i32 21, float %7926)  ; Exp(value)
  %7929 = call float @dx.op.binary.f32(i32 35, float %7471, float %7927)  ; FMax(a,b)
  %7930 = call float @dx.op.binary.f32(i32 35, float %7471, float %7928)  ; FMax(a,b)
  %7931 = fsub fast float %7930, %7929
  %7932 = fmul fast float %7931, %7922
  %7933 = fadd fast float %7932, %7929
  %7934 = call float @dx.op.unary.f32(i32 7, float %7933)  ; Saturate(value)
  %7935 = fsub fast float %7468, %7473
  %7936 = fsub fast float %7469, %7474
  %7937 = fsub fast float %7470, %7475
  %7938 = fmul fast float %7922, %7935
  %7939 = fmul fast float %7922, %7936
  %7940 = fmul fast float %7922, %7937
  %7941 = fadd fast float %7938, %7473
  %7942 = fadd fast float %7939, %7474
  %7943 = fadd fast float %7940, %7475
  %7944 = fsub fast float 1.000000e+00, %7934
  %7945 = fmul fast float %7944, %7941
  %7946 = fmul fast float %7944, %7942
  %7947 = fmul fast float %7944, %7943
  br label %8007

; <label>:7948                                    ; preds = %7907
  %7949 = fmul fast float %7918, %7480
  %7950 = call float @dx.op.unary.f32(i32 7, float %7949)  ; Saturate(value)
  %7951 = fsub fast float 2.000000e+00, %7950
  %7952 = fmul fast float %7950, 9.921875e-01
  %7953 = fmul fast float %7952, %7951
  %7954 = fadd fast float %7953, 3.906250e-03
  %7955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %7954, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7956 = extractvalue %dx.types.ResRet.f32 %7955, 0
  %7957 = fsub fast float %7950, %7956
  %7958 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7957)  ; FMax(a,b)
  %7959 = fmul fast float %7466, %7447
  %7960 = call float @dx.op.unary.f32(i32 6, float %7959)  ; FAbs(value)
  %7961 = fcmp fast ogt float %7960, 0x3EB0C6F7A0000000
  br i1 %7961, label %7962, label %7968, !dx.controlflow.hints !149

; <label>:7962                                    ; preds = %7948
  %7963 = fmul fast float %7959, 0xBFF7154760000000
  %7964 = call float @dx.op.unary.f32(i32 21, float %7963)  ; Exp(value)
  %7965 = fsub fast float 1.000000e+00, %7964
  %7966 = fdiv fast float %7965, %7959
  %7967 = fmul fast float %7966, %7476
  br label %7968

; <label>:7968                                    ; preds = %7962, %7948
  %7969 = phi float [ %7967, %7962 ], [ %7476, %7948 ]
  %7970 = fadd fast float %7969, %7478
  %7971 = fmul fast float %7970, %7958
  %7972 = fmul fast float %7463, %7971
  %7973 = fsub fast float -0.000000e+00, %7972
  %7974 = fmul fast float %7464, %7971
  %7975 = fsub fast float -0.000000e+00, %7974
  %7976 = fmul fast float %7465, %7971
  %7977 = fsub fast float -0.000000e+00, %7976
  %7978 = call float @dx.op.unary.f32(i32 21, float %7973)  ; Exp(value)
  %7979 = call float @dx.op.unary.f32(i32 21, float %7975)  ; Exp(value)
  %7980 = call float @dx.op.unary.f32(i32 21, float %7977)  ; Exp(value)
  %7981 = fmul fast float %7492, %7492
  %7982 = fadd fast float %7981, 1.000000e+00
  %7983 = fmul fast float %7982, 0x3FAE8EC8A0000000
  %7984 = fmul fast float %7983, %7473
  %7985 = fmul fast float %7983, %7474
  %7986 = fmul fast float %7983, %7475
  %7987 = fmul fast float %7492, %7471
  %7988 = fsub fast float 1.000000e+00, %7987
  %7989 = fmul fast float %7471, %7471
  %7990 = fsub fast float 1.000000e+00, %7989
  %7991 = fmul fast float %7990, 0x3FB45F3060000000
  %7992 = fmul fast float %7988, %7988
  %7993 = fdiv fast float 1.000000e+00, %7992
  %7994 = fmul fast float %7991, %7993
  %7995 = fmul fast float %7994, %7468
  %7996 = fmul fast float %7994, %7469
  %7997 = fmul fast float %7994, %7470
  %7998 = fadd fast float %7995, %7984
  %7999 = fadd fast float %7996, %7985
  %8000 = fadd fast float %7997, %7986
  %8001 = fsub fast float 1.000000e+00, %7978
  %8002 = fsub fast float 1.000000e+00, %7979
  %8003 = fsub fast float 1.000000e+00, %7980
  %8004 = fmul fast float %7998, %8001
  %8005 = fmul fast float %7999, %8002
  %8006 = fmul fast float %8000, %8003
  br label %8007

; <label>:8007                                    ; preds = %7968, %7919
  %8008 = phi float [ %7945, %7919 ], [ %8004, %7968 ]
  %8009 = phi float [ %7946, %7919 ], [ %8005, %7968 ]
  %8010 = phi float [ %7947, %7919 ], [ %8006, %7968 ]
  %8011 = phi float [ %7934, %7919 ], [ %7978, %7968 ]
  %8012 = phi float [ %7934, %7919 ], [ %7979, %7968 ]
  %8013 = phi float [ %7934, %7919 ], [ %7980, %7968 ]
  br i1 %7500, label %8014, label %8212, !dx.controlflow.hints !150

; <label>:8014                                    ; preds = %8007
  %8015 = extractvalue %dx.types.CBufRet.f32 %7913, 0
  %8016 = fmul fast float %8015, %7915
  %8017 = fsub fast float %7910, %8008
  %8018 = fsub fast float %7911, %8009
  %8019 = fsub fast float %7912, %8010
  %8020 = fmul fast float %8016, %8017
  %8021 = fmul fast float %8016, %8018
  %8022 = fmul fast float %8016, %8019
  %8023 = fadd fast float %8020, %8008
  %8024 = fadd fast float %8021, %8009
  %8025 = fadd fast float %8022, %8010
  %8026 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8011)  ; FMax(a,b)
  %8027 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8012)  ; FMax(a,b)
  %8028 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8013)  ; FMax(a,b)
  %8029 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7909)  ; FMax(a,b)
  %8030 = call float @dx.op.binary.f32(i32 35, float %7908, float %7918)  ; FMax(a,b)
  %8031 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8030)  ; FMax(a,b)
  %8032 = fdiv fast float %7908, %8031
  %8033 = call float @dx.op.unary.f32(i32 7, float %8032)  ; Saturate(value)
  %8034 = fdiv fast float %7918, %8031
  %8035 = call float @dx.op.unary.f32(i32 7, float %8034)  ; Saturate(value)
  %8036 = fcmp fast une float %8029, 1.000000e+00
  br i1 %8036, label %8037, label %8050, !dx.controlflow.hints !151

; <label>:8037                                    ; preds = %8014
  %8038 = call float @dx.op.unary.f32(i32 23, float %8029)  ; Log(value)
  %8039 = fmul fast float %8038, 0x3FE62E4300000000
  %8040 = fmul fast float %7910, %8039
  %8041 = fsub fast float -0.000000e+00, %8040
  %8042 = fmul fast float %7911, %8039
  %8043 = fsub fast float -0.000000e+00, %8042
  %8044 = fmul fast float %7912, %8039
  %8045 = fsub fast float -0.000000e+00, %8044
  %8046 = fsub fast float 1.000000e+00, %8029
  %8047 = fdiv fast float %8041, %8046
  %8048 = fdiv fast float %8043, %8046
  %8049 = fdiv fast float %8045, %8046
  br label %8050

; <label>:8050                                    ; preds = %8037, %8014
  %8051 = phi float [ %8047, %8037 ], [ %7910, %8014 ]
  %8052 = phi float [ %8048, %8037 ], [ %7911, %8014 ]
  %8053 = phi float [ %8049, %8037 ], [ %7912, %8014 ]
  %8054 = phi float [ %8039, %8037 ], [ 0.000000e+00, %8014 ]
  %8055 = fcmp fast une float %8026, 1.000000e+00
  br i1 %8055, label %8056, label %8063, !dx.controlflow.hints !152

; <label>:8056                                    ; preds = %8050
  %8057 = call float @dx.op.unary.f32(i32 23, float %8026)  ; Log(value)
  %8058 = fmul fast float %8057, 0x3FE62E4300000000
  %8059 = fmul fast float %8023, %8058
  %8060 = fsub fast float -0.000000e+00, %8059
  %8061 = fsub fast float 1.000000e+00, %8026
  %8062 = fdiv fast float %8060, %8061
  br label %8063

; <label>:8063                                    ; preds = %8056, %8050
  %8064 = phi float [ %8062, %8056 ], [ %8023, %8050 ]
  %8065 = phi float [ %8058, %8056 ], [ 0.000000e+00, %8050 ]
  %8066 = fcmp fast une float %8027, 1.000000e+00
  br i1 %8066, label %8067, label %8074, !dx.controlflow.hints !152

; <label>:8067                                    ; preds = %8063
  %8068 = call float @dx.op.unary.f32(i32 23, float %8027)  ; Log(value)
  %8069 = fmul fast float %8068, 0x3FE62E4300000000
  %8070 = fmul fast float %8024, %8069
  %8071 = fsub fast float -0.000000e+00, %8070
  %8072 = fsub fast float 1.000000e+00, %8027
  %8073 = fdiv fast float %8071, %8072
  br label %8074

; <label>:8074                                    ; preds = %8067, %8063
  %8075 = phi float [ %8073, %8067 ], [ %8024, %8063 ]
  %8076 = phi float [ %8069, %8067 ], [ 0.000000e+00, %8063 ]
  %8077 = fcmp fast une float %8028, 1.000000e+00
  br i1 %8077, label %8078, label %8085, !dx.controlflow.hints !152

; <label>:8078                                    ; preds = %8074
  %8079 = call float @dx.op.unary.f32(i32 23, float %8028)  ; Log(value)
  %8080 = fmul fast float %8079, 0x3FE62E4300000000
  %8081 = fmul fast float %8025, %8080
  %8082 = fsub fast float -0.000000e+00, %8081
  %8083 = fsub fast float 1.000000e+00, %8028
  %8084 = fdiv fast float %8082, %8083
  br label %8085

; <label>:8085                                    ; preds = %8078, %8074
  %8086 = phi float [ %8084, %8078 ], [ %8025, %8074 ]
  %8087 = phi float [ %8080, %8078 ], [ 0.000000e+00, %8074 ]
  %8088 = fmul fast float %8051, %8035
  %8089 = fmul fast float %8052, %8035
  %8090 = fmul fast float %8053, %8035
  %8091 = fmul fast float %8054, %8035
  %8092 = fmul fast float %8064, %8033
  %8093 = fmul fast float %8075, %8033
  %8094 = fmul fast float %8086, %8033
  %8095 = fmul fast float %8065, %8033
  %8096 = fmul fast float %8076, %8033
  %8097 = fmul fast float %8087, %8033
  %8098 = fadd fast float %8092, %8088
  %8099 = fadd fast float %8093, %8089
  %8100 = fadd fast float %8094, %8090
  %8101 = fadd fast float %8095, %8091
  %8102 = fadd fast float %8096, %8091
  %8103 = fadd fast float %8097, %8091
  %8104 = fcmp fast une float %8101, 0.000000e+00
  br i1 %8104, label %8105, label %8112, !dx.controlflow.hints !153

; <label>:8105                                    ; preds = %8085
  %8106 = fmul fast float %8101, 0x3FF7154760000000
  %8107 = call float @dx.op.unary.f32(i32 21, float %8106)  ; Exp(value)
  %8108 = fsub fast float 1.000000e+00, %8107
  %8109 = fmul fast float %8098, %8108
  %8110 = fsub fast float -0.000000e+00, %8109
  %8111 = fdiv fast float %8110, %8101
  br label %8112

; <label>:8112                                    ; preds = %8105, %8085
  %8113 = phi float [ %8107, %8105 ], [ 1.000000e+00, %8085 ]
  %8114 = phi float [ %8111, %8105 ], [ %8098, %8085 ]
  %8115 = fcmp fast une float %8102, 0.000000e+00
  br i1 %8115, label %8116, label %8123, !dx.controlflow.hints !153

; <label>:8116                                    ; preds = %8112
  %8117 = fmul fast float %8102, 0x3FF7154760000000
  %8118 = call float @dx.op.unary.f32(i32 21, float %8117)  ; Exp(value)
  %8119 = fsub fast float 1.000000e+00, %8118
  %8120 = fmul fast float %8099, %8119
  %8121 = fsub fast float -0.000000e+00, %8120
  %8122 = fdiv fast float %8121, %8102
  br label %8123

; <label>:8123                                    ; preds = %8116, %8112
  %8124 = phi float [ %8118, %8116 ], [ 1.000000e+00, %8112 ]
  %8125 = phi float [ %8122, %8116 ], [ %8099, %8112 ]
  %8126 = fcmp fast une float %8103, 0.000000e+00
  br i1 %8126, label %8127, label %8134, !dx.controlflow.hints !153

; <label>:8127                                    ; preds = %8123
  %8128 = fmul fast float %8103, 0x3FF7154760000000
  %8129 = call float @dx.op.unary.f32(i32 21, float %8128)  ; Exp(value)
  %8130 = fsub fast float 1.000000e+00, %8129
  %8131 = fmul fast float %8100, %8130
  %8132 = fsub fast float -0.000000e+00, %8131
  %8133 = fdiv fast float %8132, %8103
  br label %8134

; <label>:8134                                    ; preds = %8127, %8123
  %8135 = phi float [ %8129, %8127 ], [ 1.000000e+00, %8123 ]
  %8136 = phi float [ %8133, %8127 ], [ %8100, %8123 ]
  %8137 = fcmp fast ogt float %8033, %8035
  br i1 %8137, label %8138, label %8158

; <label>:8138                                    ; preds = %8134
  %8139 = fsub fast float 1.000000e+00, %8035
  %8140 = fmul fast float %8051, %8139
  %8141 = fmul fast float %8052, %8139
  %8142 = fmul fast float %8053, %8139
  %8143 = fmul fast float %8054, %8139
  %8144 = fcmp fast une float %8143, 0.000000e+00
  br i1 %8144, label %8145, label %8196, !dx.controlflow.hints !154

; <label>:8145                                    ; preds = %8138
  %8146 = fmul fast float %8143, 0x3FF7154760000000
  %8147 = call float @dx.op.unary.f32(i32 21, float %8146)  ; Exp(value)
  %8148 = fsub fast float 1.000000e+00, %8147
  %8149 = fmul fast float %8140, %8148
  %8150 = fsub fast float -0.000000e+00, %8149
  %8151 = fmul fast float %8141, %8148
  %8152 = fsub fast float -0.000000e+00, %8151
  %8153 = fmul fast float %8142, %8148
  %8154 = fsub fast float -0.000000e+00, %8153
  %8155 = fdiv fast float %8150, %8143
  %8156 = fdiv fast float %8152, %8143
  %8157 = fdiv fast float %8154, %8143
  br label %8196

; <label>:8158                                    ; preds = %8134
  %8159 = fsub fast float 1.000000e+00, %8033
  %8160 = fmul fast float %8064, %8159
  %8161 = fmul fast float %8075, %8159
  %8162 = fmul fast float %8086, %8159
  %8163 = fmul fast float %8065, %8159
  %8164 = fmul fast float %8076, %8159
  %8165 = fmul fast float %8087, %8159
  %8166 = fcmp fast une float %8163, 0.000000e+00
  br i1 %8166, label %8167, label %8174, !dx.controlflow.hints !153

; <label>:8167                                    ; preds = %8158
  %8168 = fmul fast float %8163, 0x3FF7154760000000
  %8169 = call float @dx.op.unary.f32(i32 21, float %8168)  ; Exp(value)
  %8170 = fsub fast float 1.000000e+00, %8169
  %8171 = fmul fast float %8160, %8170
  %8172 = fsub fast float -0.000000e+00, %8171
  %8173 = fdiv fast float %8172, %8163
  br label %8174

; <label>:8174                                    ; preds = %8167, %8158
  %8175 = phi float [ %8173, %8167 ], [ %8160, %8158 ]
  %8176 = phi float [ %8169, %8167 ], [ 1.000000e+00, %8158 ]
  %8177 = fcmp fast une float %8164, 0.000000e+00
  br i1 %8177, label %8178, label %8185, !dx.controlflow.hints !153

; <label>:8178                                    ; preds = %8174
  %8179 = fmul fast float %8164, 0x3FF7154760000000
  %8180 = call float @dx.op.unary.f32(i32 21, float %8179)  ; Exp(value)
  %8181 = fsub fast float 1.000000e+00, %8180
  %8182 = fmul fast float %8161, %8181
  %8183 = fsub fast float -0.000000e+00, %8182
  %8184 = fdiv fast float %8183, %8164
  br label %8185

; <label>:8185                                    ; preds = %8178, %8174
  %8186 = phi float [ %8184, %8178 ], [ %8161, %8174 ]
  %8187 = phi float [ %8180, %8178 ], [ 1.000000e+00, %8174 ]
  %8188 = fcmp fast une float %8165, 0.000000e+00
  br i1 %8188, label %8189, label %8196, !dx.controlflow.hints !153

; <label>:8189                                    ; preds = %8185
  %8190 = fmul fast float %8165, 0x3FF7154760000000
  %8191 = call float @dx.op.unary.f32(i32 21, float %8190)  ; Exp(value)
  %8192 = fsub fast float 1.000000e+00, %8191
  %8193 = fmul fast float %8162, %8192
  %8194 = fsub fast float -0.000000e+00, %8193
  %8195 = fdiv fast float %8194, %8165
  br label %8196

; <label>:8196                                    ; preds = %8189, %8185, %8145, %8138
  %8197 = phi float [ %8195, %8189 ], [ %8157, %8145 ], [ %8142, %8138 ], [ %8162, %8185 ]
  %8198 = phi float [ %8186, %8189 ], [ %8156, %8145 ], [ %8141, %8138 ], [ %8186, %8185 ]
  %8199 = phi float [ %8175, %8189 ], [ %8155, %8145 ], [ %8140, %8138 ], [ %8175, %8185 ]
  %8200 = phi float [ %8191, %8189 ], [ %8147, %8145 ], [ 1.000000e+00, %8138 ], [ 1.000000e+00, %8185 ]
  %8201 = phi float [ %8187, %8189 ], [ %8147, %8145 ], [ 1.000000e+00, %8138 ], [ %8187, %8185 ]
  %8202 = phi float [ %8176, %8189 ], [ %8147, %8145 ], [ 1.000000e+00, %8138 ], [ %8176, %8185 ]
  %8203 = fmul fast float %8202, %8114
  %8204 = fmul fast float %8201, %8125
  %8205 = fmul fast float %8200, %8136
  %8206 = fadd fast float %8203, %8199
  %8207 = fadd fast float %8204, %8198
  %8208 = fadd fast float %8205, %8197
  %8209 = fmul fast float %8202, %8113
  %8210 = fmul fast float %8201, %8124
  %8211 = fmul fast float %8200, %8135
  br label %8212

; <label>:8212                                    ; preds = %8196, %8007
  %8213 = phi float [ %8211, %8196 ], [ %8013, %8007 ]
  %8214 = phi float [ %8210, %8196 ], [ %8012, %8007 ]
  %8215 = phi float [ %8209, %8196 ], [ %8011, %8007 ]
  %8216 = phi float [ %8208, %8196 ], [ %8010, %8007 ]
  %8217 = phi float [ %8207, %8196 ], [ %8009, %8007 ]
  %8218 = phi float [ %8206, %8196 ], [ %8008, %8007 ]
  %8219 = fmul fast float %8215, %7455
  %8220 = call float @dx.op.dot3.f32(i32 55, float %8215, float %8214, float %8213, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8221 = call float @dx.op.dot3.f32(i32 55, float %8218, float %8217, float %8216, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8222 = select i1 %238, float %8220, float %8215
  %8223 = select i1 %238, float %8220, float %8214
  %8224 = select i1 %238, float 1.000000e+00, float %8213
  %8225 = select i1 %238, float %8221, float %8218
  %8226 = select i1 %238, float 0.000000e+00, float %8217
  %8227 = select i1 %238, float 0.000000e+00, float %8216
  %8228 = fmul fast float %8222, %7449
  %8229 = fmul fast float %8223, %7450
  %8230 = fmul fast float %8224, %7451
  %8231 = fadd fast float %8228, %8225
  %8232 = fadd fast float %8229, %8226
  %8233 = fadd fast float %8227, %8230
  %8234 = fmul fast float %8222, %7452
  %8235 = fmul fast float %8223, %7453
  %8236 = fmul fast float %8224, %7454
  %8237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8238 = extractvalue %dx.types.CBufRet.i32 %8237, 0
  %8239 = icmp eq i32 %8238, 0
  br i1 %8239, label %8597, label %8240, !dx.controlflow.hints !155

; <label>:8240                                    ; preds = %8212
  %8241 = fmul fast float %5960, %90
  %8242 = fmul fast float %5961, %91
  %8243 = fmul fast float %8241, 2.000000e+00
  %8244 = fmul fast float %8242, 2.000000e+00
  %8245 = fsub fast float 1.000000e+00, %8243
  %8246 = fsub fast float 1.000000e+00, %8244
  %8247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8248 = extractvalue %dx.types.CBufRet.f32 %8247, 0
  %8249 = extractvalue %dx.types.CBufRet.f32 %8247, 1
  %8250 = extractvalue %dx.types.CBufRet.f32 %8247, 2
  %8251 = fmul fast float %8245, %8248
  %8252 = fmul fast float %8245, %8249
  %8253 = fmul fast float %8245, %8250
  %8254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8255 = extractvalue %dx.types.CBufRet.f32 %8254, 0
  %8256 = extractvalue %dx.types.CBufRet.f32 %8254, 1
  %8257 = extractvalue %dx.types.CBufRet.f32 %8254, 2
  %8258 = fmul fast float %8246, %8255
  %8259 = fmul fast float %8246, %8256
  %8260 = fmul fast float %8246, %8257
  %8261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8262 = extractvalue %dx.types.CBufRet.f32 %8261, 0
  %8263 = extractvalue %dx.types.CBufRet.f32 %8261, 1
  %8264 = extractvalue %dx.types.CBufRet.f32 %8261, 2
  %8265 = fadd fast float %8258, %8262
  %8266 = fadd fast float %8265, %8251
  %8267 = fadd fast float %8259, %8263
  %8268 = fadd fast float %8267, %8252
  %8269 = fadd fast float %8260, %8264
  %8270 = fadd fast float %8269, %8253
  %8271 = fmul fast float %8266, %7448
  %8272 = fmul fast float %8268, %7448
  %8273 = fmul fast float %8270, %7448
  %8274 = fmul fast float %8271, %8271
  %8275 = fmul fast float %8272, %8272
  %8276 = fadd fast float %8274, %8275
  %8277 = fmul fast float %8273, %8273
  %8278 = fadd fast float %8276, %8277
  %8279 = call float @dx.op.unary.f32(i32 24, float %8278)  ; Sqrt(value)
  %8280 = extractvalue %dx.types.CBufRet.f32 %7183, 0
  %8281 = fsub fast float %8279, %8280
  %8282 = extractvalue %dx.types.CBufRet.f32 %7183, 2
  %8283 = fmul fast float %8281, %8282
  %8284 = call float @dx.op.unary.f32(i32 7, float %8283)  ; Saturate(value)
  %8285 = fadd fast float %8284, -5.000000e-01
  %8286 = fmul fast float %8285, 2.000000e+00
  %8287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8288 = extractvalue %dx.types.CBufRet.f32 %8287, 2
  %8289 = call float @dx.op.binary.f32(i32 36, float %8288, float %8286)  ; FMin(a,b)
  %8290 = fsub fast float -0.000000e+00, %8288
  %8291 = fcmp fast ogt float %8289, %8290
  br i1 %8291, label %8292, label %8597, !dx.controlflow.hints !156

; <label>:8292                                    ; preds = %8240
  %8293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8294 = extractvalue %dx.types.CBufRet.f32 %8293, 3
  %8295 = fcmp fast ogt float %8294, 0.000000e+00
  br i1 %8295, label %8296, label %8369, !dx.controlflow.hints !157

; <label>:8296                                    ; preds = %8292
  %8297 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %8298 = extractvalue %dx.types.Dimensions %8297, 0
  %8299 = sitofp i32 %8298 to float
  %8300 = extractvalue %dx.types.Dimensions %8297, 1
  %8301 = sitofp i32 %8300 to float
  %8302 = fmul fast float %8241, %8299
  %8303 = fmul fast float %8242, %8301
  %8304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8305 = extractvalue %dx.types.CBufRet.f32 %8304, 1
  %8306 = fsub fast float -0.000000e+00, %8305
  %8307 = fptoui float %8306 to i32
  %8308 = fptoui float %8302 to i32
  %8309 = fptoui float %8303 to i32
  %8310 = and i32 %8307, 31
  %8311 = lshr i32 %8308, %8310
  %8312 = lshr i32 %8309, %8310
  %8313 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 %8307, i32 %8311, i32 %8312, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8314 = extractvalue %dx.types.ResRet.f32 %8313, 0
  %8315 = fcmp fast olt float %8314, -1.000000e+00
  %8316 = fcmp fast ogt float %8314, -1.000000e+00
  %8317 = select i1 %8316, float %5968, float 1.000000e+00
  %8318 = fadd fast float %8314, 1.000000e+00
  %8319 = fmul fast float %8317, %8318
  %8320 = call float @dx.op.unary.f32(i32 6, float %8319)  ; FAbs(value)
  %8321 = extractvalue %dx.types.CBufRet.f32 %5967, 3
  %8322 = fcmp fast oge float %8320, %8321
  %8323 = select i1 %8322, float 0x4197782600000000, float %8320
  %8324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8325 = extractvalue %dx.types.CBufRet.f32 %8324, 0
  %8326 = extractvalue %dx.types.CBufRet.f32 %8324, 1
  %8327 = extractvalue %dx.types.CBufRet.f32 %8324, 2
  %8328 = select i1 %8315, float %8325, float %8248
  %8329 = select i1 %8315, float %8326, float %8249
  %8330 = select i1 %8315, float %8327, float %8250
  %8331 = fmul fast float %8328, %8245
  %8332 = fmul fast float %8329, %8245
  %8333 = fmul fast float %8330, %8245
  %8334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8335 = extractvalue %dx.types.CBufRet.f32 %8334, 0
  %8336 = extractvalue %dx.types.CBufRet.f32 %8334, 1
  %8337 = extractvalue %dx.types.CBufRet.f32 %8334, 2
  %8338 = select i1 %8315, float %8335, float %8255
  %8339 = select i1 %8315, float %8336, float %8256
  %8340 = select i1 %8315, float %8337, float %8257
  %8341 = fmul fast float %8338, %8246
  %8342 = fmul fast float %8339, %8246
  %8343 = fmul fast float %8340, %8246
  %8344 = fadd fast float %8341, %8331
  %8345 = fadd fast float %8342, %8332
  %8346 = fadd fast float %8343, %8333
  %8347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8348 = extractvalue %dx.types.CBufRet.f32 %8347, 0
  %8349 = extractvalue %dx.types.CBufRet.f32 %8347, 1
  %8350 = extractvalue %dx.types.CBufRet.f32 %8347, 2
  %8351 = select i1 %8315, float %8348, float %8262
  %8352 = select i1 %8315, float %8349, float %8263
  %8353 = select i1 %8315, float %8350, float %8264
  %8354 = fadd fast float %8344, %8351
  %8355 = fadd fast float %8345, %8352
  %8356 = fadd fast float %8346, %8353
  %8357 = fmul fast float %8354, %8323
  %8358 = fmul fast float %8355, %8323
  %8359 = fmul fast float %8356, %8323
  %8360 = fmul fast float %8357, %8357
  %8361 = fmul fast float %8358, %8358
  %8362 = fadd fast float %8360, %8361
  %8363 = fmul fast float %8359, %8359
  %8364 = fadd fast float %8362, %8363
  %8365 = call float @dx.op.unary.f32(i32 24, float %8364)  ; Sqrt(value)
  %8366 = fsub fast float %8365, %8280
  %8367 = fmul fast float %8366, %8282
  %8368 = call float @dx.op.unary.f32(i32 7, float %8367)  ; Saturate(value)
  br label %8369

; <label>:8369                                    ; preds = %8296, %8292
  %8370 = phi float [ %8368, %8296 ], [ 1.000000e+00, %8292 ]
  %8371 = fmul fast float %8289, 5.000000e-01
  %8372 = fadd fast float %8371, 5.000000e-01
  %8373 = call float @dx.op.unary.f32(i32 22, float %8372)  ; Frc(value)
  %8374 = call float @dx.op.unary.f32(i32 27, float %8373)  ; Round_ni(value)
  %8375 = call float @dx.op.unary.f32(i32 22, float %8373)  ; Frc(value)
  %8376 = fmul fast float %8375, 2.000000e+00
  %8377 = fadd fast float %8376, -1.000000e+00
  %8378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %38, float %8241, float %8242, float %8374, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8379 = extractvalue %dx.types.ResRet.f32 %8378, 0
  %8380 = extractvalue %dx.types.ResRet.f32 %8378, 1
  %8381 = extractvalue %dx.types.ResRet.f32 %8378, 2
  %8382 = extractvalue %dx.types.ResRet.f32 %8378, 3
  %8383 = fadd fast float %8379, -5.000000e-01
  %8384 = fadd fast float %8381, -5.000000e-01
  %8385 = fmul fast float %8383, 0xBFD5555560000000
  %8386 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8384, float %8385)  ; FMad(a,b,c)
  %8387 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8380, float 0.000000e+00)  ; FMad(a,b,c)
  %8388 = fadd fast float %8387, %8382
  %8389 = fmul fast float %8383, -7.500000e-01
  %8390 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8384, float %8389)  ; FMad(a,b,c)
  %8391 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8380, float 0.000000e+00)  ; FMad(a,b,c)
  %8392 = fadd fast float %8391, %8382
  %8393 = call float @dx.op.binary.f32(i32 35, float %8386, float -1.000000e+00)  ; FMax(a,b)
  %8394 = call float @dx.op.binary.f32(i32 35, float %8388, float -1.000000e+00)  ; FMax(a,b)
  %8395 = call float @dx.op.binary.f32(i32 35, float %8390, float -1.000000e+00)  ; FMax(a,b)
  %8396 = call float @dx.op.binary.f32(i32 35, float %8392, float -1.000000e+00)  ; FMax(a,b)
  %8397 = call float @dx.op.binary.f32(i32 36, float %8393, float 1.000000e+00)  ; FMin(a,b)
  %8398 = call float @dx.op.binary.f32(i32 36, float %8394, float 1.000000e+00)  ; FMin(a,b)
  %8399 = call float @dx.op.binary.f32(i32 36, float %8395, float 1.000000e+00)  ; FMin(a,b)
  %8400 = call float @dx.op.binary.f32(i32 36, float %8396, float 1.000000e+00)  ; FMin(a,b)
  %8401 = fcmp fast olt float %8397, 0x3FEFFF8020000000
  br i1 %8401, label %8402, label %8517, !dx.controlflow.hints !158

; <label>:8402                                    ; preds = %8369
  %8403 = extractvalue %dx.types.CBufRet.f32 %8287, 3
  %8404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8405 = extractvalue %dx.types.CBufRet.f32 %8404, 0
  %8406 = extractvalue %dx.types.CBufRet.f32 %8404, 1
  %8407 = extractvalue %dx.types.CBufRet.f32 %8404, 2
  %8408 = extractvalue %dx.types.CBufRet.f32 %8404, 3
  %8409 = fsub fast float %8405, %8397
  %8410 = fsub fast float %8406, %8398
  %8411 = fsub fast float %8407, %8399
  %8412 = fsub fast float %8408, %8400
  %8413 = fmul fast float %8409, %8403
  %8414 = fmul fast float %8410, %8403
  %8415 = fmul fast float %8411, %8403
  %8416 = fmul fast float %8412, %8403
  %8417 = fadd fast float %8413, %8397
  %8418 = fadd fast float %8414, %8398
  %8419 = fsub fast float -0.000000e+00, %8418
  %8420 = fadd fast float %8415, %8399
  %8421 = fadd fast float %8416, %8400
  %8422 = fmul fast float %8417, %8417
  %8423 = fsub fast float %8418, %8422
  %8424 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8423)  ; FMax(a,b)
  %8425 = fdiv fast float 1.000000e+00, %8424
  %8426 = fmul fast float %8418, %8417
  %8427 = fsub fast float %8420, %8426
  %8428 = fsub fast float %8377, %8417
  %8429 = fmul fast float %8377, %8377
  %8430 = fsub fast float %8429, %8418
  %8431 = fmul fast float %8428, %8425
  %8432 = fmul fast float %8431, %8427
  %8433 = fsub fast float %8430, %8432
  %8434 = fmul fast float %8418, %8418
  %8435 = fsub fast float %8421, %8434
  %8436 = fmul fast float %8427, %8427
  %8437 = fmul fast float %8436, %8425
  %8438 = fsub fast float %8435, %8437
  %8439 = fdiv fast float %8433, %8438
  %8440 = fmul fast float %8427, %8439
  %8441 = fsub fast float %8428, %8440
  %8442 = fmul fast float %8441, %8425
  %8443 = fmul fast float %8442, %8417
  %8444 = fsub fast float 1.000000e+00, %8443
  %8445 = fmul fast float %8418, %8439
  %8446 = fsub fast float %8444, %8445
  %8447 = fmul fast float %8442, %8442
  %8448 = fmul fast float %8439, 4.000000e+00
  %8449 = fmul fast float %8448, %8446
  %8450 = fsub fast float %8447, %8449
  %8451 = call float @dx.op.unary.f32(i32 24, float %8450)  ; Sqrt(value)
  %8452 = fcmp fast oge float %8442, 0.000000e+00
  %8453 = fsub fast float -0.000000e+00, %8451
  %8454 = select i1 %8452, float %8453, float %8451
  %8455 = fsub fast float %8454, %8442
  %8456 = fdiv fast float %8455, %8439
  %8457 = fdiv fast float %8446, %8455
  %8458 = fmul fast float %8456, 5.000000e-01
  %8459 = fmul fast float %8457, 2.000000e+00
  %8460 = select i1 %8452, float %8458, float %8459
  %8461 = select i1 %8452, float %8459, float %8458
  %8462 = call float @dx.op.binary.f32(i32 35, float %8460, float %8461)  ; FMax(a,b)
  %8463 = call float @dx.op.binary.f32(i32 36, float %8460, float %8461)  ; FMin(a,b)
  %8464 = fcmp fast ogt float %8377, %8463
  br i1 %8464, label %8465, label %8475

; <label>:8465                                    ; preds = %8402
  %8466 = fsub fast float %8377, %8463
  %8467 = fsub fast float %8462, %8463
  %8468 = fmul fast float %8466, %8467
  %8469 = fmul fast float %8462, %8377
  %8470 = fadd fast float %8462, %8377
  %8471 = fmul fast float %8470, %8417
  %8472 = fadd fast float %8469, %8418
  %8473 = fsub fast float %8472, %8471
  %8474 = fdiv fast float %8473, %8468
  br label %8475

; <label>:8475                                    ; preds = %8465, %8402
  %8476 = phi float [ %8474, %8465 ], [ 0.000000e+00, %8402 ]
  %8477 = fcmp fast ogt float %8377, %8462
  %8478 = fsub fast float %8377, %8462
  br i1 %8477, label %8479, label %8489

; <label>:8479                                    ; preds = %8475
  %8480 = fsub fast float %8462, %8463
  %8481 = fmul fast float %8480, %8478
  %8482 = fmul fast float %8463, %8377
  %8483 = fadd fast float %8463, %8377
  %8484 = fmul fast float %8483, %8417
  %8485 = fsub fast float %8419, %8482
  %8486 = fadd fast float %8485, %8484
  %8487 = fdiv fast float %8486, %8481
  %8488 = fadd fast float %8487, %8476
  br label %8489

; <label>:8489                                    ; preds = %8479, %8475
  %8490 = phi float [ %8488, %8479 ], [ %8476, %8475 ]
  %8491 = fsub fast float %8377, %8463
  %8492 = fmul fast float %8491, %8478
  %8493 = fmul fast float %8463, %8462
  %8494 = fadd fast float %8463, %8462
  %8495 = fmul fast float %8494, %8417
  %8496 = fadd fast float %8493, %8418
  %8497 = fsub fast float %8496, %8495
  %8498 = fdiv fast float %8497, %8492
  %8499 = call float @dx.op.unary.f32(i32 7, float %8490)  ; Saturate(value)
  %8500 = fcmp fast oeq float %7184, 0.000000e+00
  %8501 = extractvalue %dx.types.CBufRet.f32 %8287, 0
  %8502 = fcmp fast oeq float %8501, 0.000000e+00
  %8503 = or i1 %8500, %8502
  %8504 = fmul fast float %8501, 2.000000e+00
  %8505 = fadd fast float %8288, %8289
  %8506 = fdiv fast float %8505, %8504
  %8507 = call float @dx.op.unary.f32(i32 7, float %8506)  ; Saturate(value)
  %8508 = fmul fast float %8507, 2.000000e+00
  %8509 = fsub fast float 3.000000e+00, %8508
  %8510 = fmul fast float %8507, %8507
  %8511 = fmul fast float %8510, %8509
  %8512 = select i1 %8503, float 1.000000e+00, float %8511
  %8513 = fmul fast float %8498, %7184
  %8514 = fadd fast float %8499, %8513
  %8515 = call float @dx.op.unary.f32(i32 7, float %8514)  ; Saturate(value)
  %8516 = fmul fast float %8512, %8515
  br label %8517

; <label>:8517                                    ; preds = %8489, %8369
  %8518 = phi float [ %8516, %8489 ], [ 0.000000e+00, %8369 ]
  %8519 = fsub fast float 1.000000e+00, %8518
  %8520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %38, float %8241, float %8242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8521 = extractvalue %dx.types.ResRet.f32 %8520, 0
  %8522 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8523 = extractvalue %dx.types.CBufRet.i32 %8522, 2
  %8524 = icmp eq i32 %8523, 0
  br i1 %8524, label %8530, label %8525

; <label>:8525                                    ; preds = %8517
  %8526 = call float @dx.op.unary.f32(i32 7, float %8518)  ; Saturate(value)
  %8527 = fadd fast float %8521, -1.000000e+00
  %8528 = fmul fast float %8526, %8527
  %8529 = fadd fast float %8528, 1.000000e+00
  br label %8530

; <label>:8530                                    ; preds = %8525, %8517
  %8531 = phi float [ %8529, %8525 ], [ %8519, %8517 ]
  br i1 %8295, label %8532, label %8550

; <label>:8532                                    ; preds = %8530
  %8533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8534 = extractvalue %dx.types.CBufRet.f32 %8533, 1
  %8535 = fsub fast float %8370, %8534
  %8536 = call float @dx.op.unary.f32(i32 7, float %8535)  ; Saturate(value)
  %8537 = fsub fast float %8370, %8294
  %8538 = call float @dx.op.unary.f32(i32 7, float %8537)  ; Saturate(value)
  %8539 = fsub fast float %8536, %8538
  %8540 = fsub fast float %8372, %8538
  %8541 = fdiv fast float %8540, %8539
  %8542 = call float @dx.op.unary.f32(i32 7, float %8541)  ; Saturate(value)
  %8543 = fmul fast float %8542, 2.000000e+00
  %8544 = fsub fast float 3.000000e+00, %8543
  %8545 = fsub fast float %8521, %8531
  %8546 = fmul fast float %8542, %8542
  %8547 = fmul fast float %8546, %8545
  %8548 = fmul fast float %8547, %8544
  %8549 = fadd fast float %8548, %8531
  br label %8550

; <label>:8550                                    ; preds = %8532, %8530
  %8551 = phi float [ %8549, %8532 ], [ %8531, %8530 ]
  %8552 = call float @dx.op.binary.f32(i32 35, float %8521, float %8551)  ; FMax(a,b)
  %8553 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8554 = extractvalue %dx.types.CBufRet.i32 %8553, 2
  %8555 = and i32 %8554, 1
  %8556 = icmp eq i32 %8555, 0
  %8557 = fcmp fast une float %8552, 1.000000e+00
  %8558 = and i1 %8557, %8556
  br i1 %8558, label %8559, label %8576

; <label>:8559                                    ; preds = %8550
  %8560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %38, float %8241, float %8242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8561 = extractvalue %dx.types.ResRet.f32 %8560, 0
  %8562 = extractvalue %dx.types.ResRet.f32 %8560, 1
  %8563 = extractvalue %dx.types.ResRet.f32 %8560, 2
  %8564 = fmul fast float %6015, %8561
  %8565 = fmul fast float %6015, %8562
  %8566 = fmul fast float %6015, %8563
  %8567 = fcmp fast ogt float %8521, 0x3FEFFF2E40000000
  %8568 = fsub fast float 1.000000e+00, %8552
  %8569 = fsub fast float 1.000000e+00, %8521
  %8570 = fdiv fast float %8568, %8569
  %8571 = call float @dx.op.unary.f32(i32 7, float %8570)  ; Saturate(value)
  %8572 = select i1 %8567, float 0.000000e+00, float %8571
  %8573 = fmul fast float %8564, %8572
  %8574 = fmul fast float %8565, %8572
  %8575 = fmul fast float %8566, %8572
  br label %8576

; <label>:8576                                    ; preds = %8559, %8550
  %8577 = phi float [ 0.000000e+00, %8550 ], [ %8573, %8559 ]
  %8578 = phi float [ 0.000000e+00, %8550 ], [ %8574, %8559 ]
  %8579 = phi float [ 0.000000e+00, %8550 ], [ %8575, %8559 ]
  %8580 = fmul fast float %8552, %8219
  %8581 = call float @dx.op.dot3.f32(i32 55, float %8552, float %8552, float %8552, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8582 = call float @dx.op.dot3.f32(i32 55, float %8577, float %8578, float %8579, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8583 = select i1 %238, float %8581, float %8552
  %8584 = select i1 %238, float 1.000000e+00, float %8552
  %8585 = select i1 %238, float %8582, float %8577
  %8586 = select i1 %238, float 0.000000e+00, float %8578
  %8587 = select i1 %238, float 0.000000e+00, float %8579
  %8588 = fmul fast float %8583, %8231
  %8589 = fmul fast float %8583, %8232
  %8590 = fmul fast float %8584, %8233
  %8591 = fadd fast float %8588, %8585
  %8592 = fadd fast float %8589, %8586
  %8593 = fadd fast float %8587, %8590
  %8594 = fmul fast float %8583, %8234
  %8595 = fmul fast float %8583, %8235
  %8596 = fmul fast float %8584, %8236
  br label %8597

; <label>:8597                                    ; preds = %8576, %8240, %8212, %7444
  %8598 = phi float [ %7449, %7444 ], [ %8231, %8212 ], [ %8591, %8576 ], [ %8231, %8240 ]
  %8599 = phi float [ %7450, %7444 ], [ %8232, %8212 ], [ %8592, %8576 ], [ %8232, %8240 ]
  %8600 = phi float [ %7451, %7444 ], [ %8233, %8212 ], [ %8593, %8576 ], [ %8233, %8240 ]
  %8601 = phi float [ %7452, %7444 ], [ %8234, %8212 ], [ %8594, %8576 ], [ %8234, %8240 ]
  %8602 = phi float [ %7453, %7444 ], [ %8235, %8212 ], [ %8595, %8576 ], [ %8235, %8240 ]
  %8603 = phi float [ %7454, %7444 ], [ %8236, %8212 ], [ %8596, %8576 ], [ %8236, %8240 ]
  %8604 = phi float [ %7455, %7444 ], [ %8219, %8212 ], [ %8580, %8576 ], [ %8219, %8240 ]
  %8605 = fmul fast float %5960, %90
  %8606 = fmul fast float %5961, %91
  %8607 = call float @dx.op.unary.f32(i32 7, float %8605)  ; Saturate(value)
  %8608 = call float @dx.op.unary.f32(i32 7, float %8606)  ; Saturate(value)
  %8609 = select i1 %7194, i32 2, i32 0
  %8610 = or i32 %8609, 1
  %8611 = uitofp i32 %8610 to float
  %8612 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %8607, float %8608, float %8611, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8613 = extractvalue %dx.types.ResRet.f32 %8612, 0
  %8614 = extractvalue %dx.types.ResRet.f32 %8612, 1
  %8615 = extractvalue %dx.types.ResRet.f32 %8612, 2
  %8616 = extractvalue %dx.types.ResRet.f32 %8612, 3
  %8617 = add nuw nsw i32 %8609, 2
  %8618 = uitofp i32 %8617 to float
  %8619 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %8607, float %8608, float %8618, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8620 = extractvalue %dx.types.ResRet.f32 %8619, 0
  %8621 = extractvalue %dx.types.ResRet.f32 %8619, 1
  %8622 = extractvalue %dx.types.ResRet.f32 %8619, 2
  %8623 = extractvalue %dx.types.ResRet.f32 %8619, 3
  %8624 = call float @dx.op.binary.f32(i32 35, float %8614, float %8615)  ; FMax(a,b)
  %8625 = call float @dx.op.binary.f32(i32 35, float %8613, float %8624)  ; FMax(a,b)
  %8626 = call float @dx.op.binary.f32(i32 35, float %8625, float %8616)  ; FMax(a,b)
  %8627 = call float @dx.op.binary.f32(i32 36, float %8621, float %8622)  ; FMin(a,b)
  %8628 = call float @dx.op.binary.f32(i32 36, float %8620, float %8627)  ; FMin(a,b)
  %8629 = call float @dx.op.binary.f32(i32 36, float %8628, float %8623)  ; FMin(a,b)
  %8630 = fmul fast float %8626, 2.550000e+02
  %8631 = fadd fast float %8630, 0x3F70101020000000
  %8632 = fptoui float %8631 to i32
  %8633 = fmul fast float %8629, 2.550000e+02
  %8634 = fadd fast float %8633, 0x3F70101020000000
  %8635 = fptoui float %8634 to i32
  %8636 = icmp ult i32 %8632, %8635
  br i1 %8636, label %8637, label %8804

; <label>:8637                                    ; preds = %8597
  %8638 = fcmp fast ogt float %80, 9.843750e-01
  %8639 = fadd fast float %7448, -4.000000e+00
  %8640 = select i1 %8638, float -4.000000e+00, float %8639
  %8641 = call float @dx.op.binary.f32(i32 35, float %8640, float 0.000000e+00)  ; FMax(a,b)
  %8642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8643 = extractvalue %dx.types.CBufRet.f32 %8642, 0
  %8644 = fadd fast float %8643, %8641
  %8645 = extractvalue %dx.types.CBufRet.f32 %8642, 2
  %8646 = fmul fast float %8644, %8645
  %8647 = call float @dx.op.unary.f32(i32 23, float %8646)  ; Log(value)
  %8648 = extractvalue %dx.types.CBufRet.f32 %8642, 3
  %8649 = fmul fast float %8648, %8647
  %8650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8651 = extractvalue %dx.types.CBufRet.f32 %8650, 2
  %8652 = fmul fast float %8649, %8651
  %8653 = call float @dx.op.unary.f32(i32 7, float %8652)  ; Saturate(value)
  %8654 = uitofp i32 %8632 to float
  %8655 = uitofp i32 %8635 to float
  %8656 = fadd fast float %8654, 5.000000e-01
  %8657 = fadd fast float %8655, 5.000000e-01
  %8658 = fmul fast float %8651, %8656
  %8659 = fmul fast float %8651, %8657
  %8660 = fadd fast float %8658, 0x3F0FFB4800000000
  %8661 = fadd fast float %8659, 0xBF0FFB4800000000
  %8662 = call float @dx.op.binary.f32(i32 35, float %8653, float %8660)  ; FMax(a,b)
  %8663 = call float @dx.op.binary.f32(i32 36, float %8662, float %8661)  ; FMin(a,b)
  %8664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8665 = extractvalue %dx.types.CBufRet.f32 %8664, 1
  %8666 = extractvalue %dx.types.CBufRet.f32 %8664, 2
  %8667 = extractvalue %dx.types.CBufRet.f32 %8664, 0
  %8668 = select i1 %7194, float %8667, float 0.000000e+00
  %8669 = fmul fast float %8665, %8663
  %8670 = fadd fast float %8668, %8669
  %8671 = fadd fast float %8668, %8666
  %8672 = fsub fast float %8665, %8666
  %8673 = fadd fast float %8672, %8668
  %8674 = call float @dx.op.binary.f32(i32 35, float %8670, float %8671)  ; FMax(a,b)
  %8675 = call float @dx.op.binary.f32(i32 36, float %8674, float %8673)  ; FMin(a,b)
  %8676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %36, float %8607, float %8608, float %8675, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8677 = extractvalue %dx.types.ResRet.f32 %8676, 0
  %8678 = extractvalue %dx.types.ResRet.f32 %8676, 1
  %8679 = extractvalue %dx.types.ResRet.f32 %8676, 2
  %8680 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8681 = extractvalue %dx.types.CBufRet.i32 %8680, 0
  %8682 = extractvalue %dx.types.CBufRet.i32 %8680, 1
  %8683 = uitofp i32 %8681 to float
  %8684 = uitofp i32 %8682 to float
  %8685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8686 = extractvalue %dx.types.CBufRet.f32 %8685, 0
  %8687 = extractvalue %dx.types.CBufRet.f32 %8685, 1
  %8688 = fmul fast float %8683, %8607
  %8689 = fmul fast float %8684, %8608
  %8690 = fadd fast float %8688, -5.000000e-01
  %8691 = fadd fast float %8689, -5.000000e-01
  %8692 = call float @dx.op.unary.f32(i32 22, float %8690)  ; Frc(value)
  %8693 = call float @dx.op.unary.f32(i32 22, float %8691)  ; Frc(value)
  %8694 = fmul fast float %8692, %8692
  %8695 = fmul fast float %8694, %8692
  %8696 = fsub fast float 3.000000e+00, %8692
  %8697 = fmul fast float %8694, %8696
  %8698 = fmul fast float %8692, 3.000000e+00
  %8699 = fmul fast float %8695, 3.000000e+00
  %8700 = fmul fast float %8694, 6.000000e+00
  %8701 = fsub fast float %8699, %8700
  %8702 = fadd fast float %8701, 4.000000e+00
  %8703 = fmul fast float %8702, 0x3FC5555560000000
  %8704 = fmul fast float %8695, -3.000000e+00
  %8705 = fadd fast float %8694, %8692
  %8706 = fmul fast float %8705, 3.000000e+00
  %8707 = fadd fast float %8704, 1.000000e+00
  %8708 = fadd fast float %8707, %8706
  %8709 = fmul fast float %8695, 0x3FC5555560000000
  %8710 = fmul fast float %8693, %8693
  %8711 = fmul fast float %8710, %8693
  %8712 = fsub fast float 3.000000e+00, %8693
  %8713 = fmul fast float %8710, %8712
  %8714 = fmul fast float %8693, 3.000000e+00
  %8715 = fmul fast float %8711, 3.000000e+00
  %8716 = fmul fast float %8710, 6.000000e+00
  %8717 = fsub fast float %8715, %8716
  %8718 = fadd fast float %8717, 4.000000e+00
  %8719 = fmul fast float %8718, 0x3FC5555560000000
  %8720 = fmul fast float %8711, -3.000000e+00
  %8721 = fadd fast float %8710, %8693
  %8722 = fmul fast float %8721, 3.000000e+00
  %8723 = fadd fast float %8720, 1.000000e+00
  %8724 = fadd fast float %8723, %8722
  %8725 = fmul fast float %8711, 0x3FC5555560000000
  %8726 = fadd fast float %8692, 1.000000e+00
  %8727 = fsub fast float 1.000000e+00, %8698
  %8728 = fadd fast float %8727, %8697
  %8729 = fadd fast float %8728, %8702
  %8730 = fmul fast float %8729, 0x3FC5555560000000
  %8731 = fdiv fast float %8703, %8730
  %8732 = fsub fast float %8726, %8731
  %8733 = fsub fast float 1.000000e+00, %8692
  %8734 = fadd fast float %8708, %8695
  %8735 = fmul fast float %8734, 0x3FC5555560000000
  %8736 = fdiv fast float %8709, %8735
  %8737 = fadd fast float %8733, %8736
  %8738 = fadd fast float %8693, 1.000000e+00
  %8739 = fsub fast float 1.000000e+00, %8714
  %8740 = fadd fast float %8739, %8713
  %8741 = fadd fast float %8740, %8718
  %8742 = fmul fast float %8741, 0x3FC5555560000000
  %8743 = fdiv fast float %8719, %8742
  %8744 = fsub fast float %8738, %8743
  %8745 = fsub fast float 1.000000e+00, %8693
  %8746 = fadd fast float %8724, %8711
  %8747 = fmul fast float %8746, 0x3FC5555560000000
  %8748 = fdiv fast float %8725, %8747
  %8749 = fadd fast float %8748, %8745
  %8750 = fmul fast float %8732, %8686
  %8751 = fsub fast float %8607, %8750
  %8752 = fmul fast float %8737, %8686
  %8753 = fadd fast float %8752, %8607
  %8754 = fmul fast float %8749, %8687
  %8755 = fadd fast float %8754, %8608
  %8756 = fmul fast float %8744, %8687
  %8757 = fsub fast float %8608, %8756
  %8758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %8751, float %8757, float %8675, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8759 = extractvalue %dx.types.ResRet.f32 %8758, 0
  %8760 = extractvalue %dx.types.ResRet.f32 %8758, 1
  %8761 = extractvalue %dx.types.ResRet.f32 %8758, 2
  %8762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %8753, float %8757, float %8675, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8763 = extractvalue %dx.types.ResRet.f32 %8762, 0
  %8764 = extractvalue %dx.types.ResRet.f32 %8762, 1
  %8765 = extractvalue %dx.types.ResRet.f32 %8762, 2
  %8766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %8751, float %8755, float %8675, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8767 = extractvalue %dx.types.ResRet.f32 %8766, 0
  %8768 = extractvalue %dx.types.ResRet.f32 %8766, 1
  %8769 = extractvalue %dx.types.ResRet.f32 %8766, 2
  %8770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %8753, float %8755, float %8675, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8771 = extractvalue %dx.types.ResRet.f32 %8770, 0
  %8772 = extractvalue %dx.types.ResRet.f32 %8770, 1
  %8773 = extractvalue %dx.types.ResRet.f32 %8770, 2
  %8774 = fsub fast float %8767, %8759
  %8775 = fsub fast float %8768, %8760
  %8776 = fsub fast float %8769, %8761
  %8777 = fmul fast float %8774, %8747
  %8778 = fmul fast float %8775, %8747
  %8779 = fmul fast float %8776, %8747
  %8780 = fadd fast float %8777, %8759
  %8781 = fadd fast float %8778, %8760
  %8782 = fadd fast float %8779, %8761
  %8783 = fsub fast float %8771, %8763
  %8784 = fsub fast float %8772, %8764
  %8785 = fsub fast float %8773, %8765
  %8786 = fmul fast float %8783, %8747
  %8787 = fmul fast float %8784, %8747
  %8788 = fmul fast float %8785, %8747
  %8789 = fsub fast float %8763, %8780
  %8790 = fadd fast float %8789, %8786
  %8791 = fsub fast float %8764, %8781
  %8792 = fadd fast float %8791, %8787
  %8793 = fsub fast float %8765, %8782
  %8794 = fadd fast float %8793, %8788
  %8795 = fmul fast float %8790, %8735
  %8796 = fmul fast float %8792, %8735
  %8797 = fmul fast float %8794, %8735
  %8798 = fadd fast float %8795, %8780
  %8799 = fadd fast float %8796, %8781
  %8800 = fadd fast float %8797, %8782
  %8801 = fmul fast float %8798, %6015
  %8802 = fmul fast float %8799, %6015
  %8803 = fmul fast float %8800, %6015
  br label %8804

; <label>:8804                                    ; preds = %8637, %8597
  %8805 = phi float [ %8677, %8637 ], [ 1.000000e+00, %8597 ]
  %8806 = phi float [ %8678, %8637 ], [ 1.000000e+00, %8597 ]
  %8807 = phi float [ %8679, %8637 ], [ 1.000000e+00, %8597 ]
  %8808 = phi float [ %8801, %8637 ], [ 0.000000e+00, %8597 ]
  %8809 = phi float [ %8802, %8637 ], [ 0.000000e+00, %8597 ]
  %8810 = phi float [ %8803, %8637 ], [ 0.000000e+00, %8597 ]
  %8811 = fmul fast float %8805, %8604
  %8812 = call float @dx.op.dot3.f32(i32 55, float %8805, float %8806, float %8807, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8813 = call float @dx.op.dot3.f32(i32 55, float %8808, float %8809, float %8810, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8814 = select i1 %238, float %8812, float %8805
  %8815 = select i1 %238, float %8812, float %8806
  %8816 = select i1 %238, float 1.000000e+00, float %8807
  %8817 = select i1 %238, float %8813, float %8808
  %8818 = select i1 %238, float 0.000000e+00, float %8809
  %8819 = select i1 %238, float 0.000000e+00, float %8810
  %8820 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8821 = extractvalue %dx.types.CBufRet.i32 %8820, 3
  %8822 = and i32 %8821, 3
  %8823 = icmp ne i32 %8822, 0
  %8824 = and i32 %8821, 4
  %8825 = icmp ne i32 %8824, 0
  %8826 = and i1 %8823, %8825
  %8827 = and i1 %238, %8826
  br i1 %8827, label %8828, label %8834

; <label>:8828                                    ; preds = %8804
  %8829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8830 = extractvalue %dx.types.CBufRet.f32 %8829, 1
  %8831 = fadd fast float %8811, -1.000000e+00
  %8832 = fmul fast float %8830, %8831
  %8833 = fadd fast float %8832, 1.000000e+00
  br label %8834

; <label>:8834                                    ; preds = %8828, %8804
  %8835 = phi float [ %8833, %8828 ], [ %8811, %8804 ]
  %8836 = fadd fast float %8601, %8598
  %8837 = fmul fast float %8814, %8836
  %8838 = fadd fast float %8837, %8817
  %8839 = fadd fast float %8602, %8599
  %8840 = fmul fast float %8815, %8839
  %8841 = fadd fast float %8840, %8818
  %8842 = extractvalue %dx.types.CBufRet.f32 %6014, 0
  br i1 %238, label %8843, label %8858

; <label>:8843                                    ; preds = %8834
  %8844 = fadd fast float %8838, %8841
  %8845 = fmul fast float %8842, %8844
  %8846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8847 = extractvalue %dx.types.CBufRet.f32 %8846, 3
  %8848 = extractvalue %dx.types.CBufRet.f32 %7176, 1
  %8849 = fsub fast float %7181, %7175
  %8850 = fadd fast float %8849, %7182
  %8851 = fsub fast float %8850, %8848
  %8852 = extractvalue %dx.types.CBufRet.f32 %7176, 2
  %8853 = fmul fast float %8851, %8852
  %8854 = call float @dx.op.unary.f32(i32 7, float %8853)  ; Saturate(value)
  %8855 = fsub fast float %8854, %8847
  %8856 = fmul fast float %8855, %8835
  %8857 = fadd fast float %8856, %8847
  br label %8882

; <label>:8858                                    ; preds = %8834
  %8859 = fadd fast float %8603, %8600
  %8860 = fmul fast float %8816, %8859
  %8861 = fadd fast float %8860, %8819
  %8862 = fmul fast float %8842, %8838
  %8863 = fmul fast float %8842, %8841
  %8864 = fmul fast float %8842, %8861
  %8865 = call float @dx.op.binary.f32(i32 35, float %8863, float %8864)  ; FMax(a,b)
  %8866 = call float @dx.op.binary.f32(i32 35, float %8862, float %8865)  ; FMax(a,b)
  %8867 = call float @dx.op.binary.f32(i32 35, float %8866, float 1.000000e+00)  ; FMax(a,b)
  %8868 = fcmp fast ugt float %8867, 0x3F10000000000000
  br i1 %8868, label %8870, label %8869

; <label>:8869                                    ; preds = %8858
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8870

; <label>:8870                                    ; preds = %8869, %8858
  %8871 = add i32 %44, 356
  %8872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %8871, i32 undef)  ; BufferLoad(srv,index,wot)
  %8873 = extractvalue %dx.types.ResRet.i32 %8872, 0
  %8874 = and i32 %8873, 32
  %8875 = icmp eq i32 %8874, 0
  br i1 %8875, label %8882, label %8876

; <label>:8876                                    ; preds = %8870
  %8877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8878 = extractvalue %dx.types.CBufRet.f32 %8877, 0
  %8879 = fmul fast float %8878, 0x3FE99999A0000000
  %8880 = fadd fast float %8878, %8862
  %8881 = fadd fast float %8879, %8864
  br label %8882

; <label>:8882                                    ; preds = %8876, %8870, %8843
  %8883 = phi float [ %8845, %8843 ], [ %8880, %8876 ], [ %8862, %8870 ]
  %8884 = phi float [ %8857, %8843 ], [ %8863, %8876 ], [ %8863, %8870 ]
  %8885 = phi float [ 1.000000e+00, %8843 ], [ %8881, %8876 ], [ %8864, %8870 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8886 = call float @dx.op.binary.f32(i32 36, float %8883, float 3.225500e+04)  ; FMin(a,b)
  %8887 = call float @dx.op.binary.f32(i32 36, float %8884, float 3.225500e+04)  ; FMin(a,b)
  %8888 = call float @dx.op.binary.f32(i32 36, float %8885, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8886)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8887)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8888)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[46 x i32] [i32 44, i32 8, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !82}
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
!78 = !{!79, !80}
!79 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !63}
!80 = !{i32 1, !"SV_Target", i8 9, i8 16, !81, i8 0, i32 1, i8 4, i32 1, i8 0, !63}
!81 = !{i32 1}
!82 = !{i32 0, i64 16}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = !{!90, !90, i64 0}
!90 = !{!"int", !91, i64 0}
!91 = !{!"omnipotent char", !92, i64 0}
!92 = !{!"Simple C/C++ TBAA"}
!93 = !{!94, !96, !98, !100}
!94 = distinct !{!94, !95, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!95 = distinct !{!95, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!96 = distinct !{!96, !97, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!97 = distinct !{!97, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!98 = distinct !{!98, !99, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!99 = distinct !{!99, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!100 = distinct !{!100, !101, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!101 = distinct !{!101, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = !{!111, !111, i64 0}
!111 = !{!"float", !91, i64 0}
!112 = !{!113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!113 = distinct !{!113, !114, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!114 = distinct !{!114, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!115 = distinct !{!115, !116, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!116 = distinct !{!116, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!117 = distinct !{!117, !116, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!118 = distinct !{!118, !119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!119 = distinct !{!119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!120 = distinct !{!120, !119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!121 = distinct !{!121, !119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!122 = distinct !{!122, !123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!123 = distinct !{!123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!124 = distinct !{!124, !123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!125 = distinct !{!125, !123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!126 = distinct !{!126, !127, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!127 = distinct !{!127, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"\01?sort@@YAXAIAM00@Z: %c"}
!130 = distinct !{!130, !"\01?sort@@YAXAIAM00@Z"}
!131 = !{!132, !133, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!132 = distinct !{!132, !130, !"\01?sort@@YAXAIAM00@Z: %a"}
!133 = distinct !{!133, !130, !"\01?sort@@YAXAIAM00@Z: %b"}
!134 = !{!133}
!135 = !{!132, !129, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!136 = !{!132}
!137 = !{!133, !129, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!138 = !{!139}
!139 = distinct !{!139, !140, !"\01?sort@@YAXAIAM00@Z: %c"}
!140 = distinct !{!140, !"\01?sort@@YAXAIAM00@Z"}
!141 = !{!142, !143, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!142 = distinct !{!142, !140, !"\01?sort@@YAXAIAM00@Z: %a"}
!143 = distinct !{!143, !140, !"\01?sort@@YAXAIAM00@Z: %b"}
!144 = !{!143}
!145 = !{!142, !139, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!146 = !{!142}
!147 = !{!143, !139, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 2}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}

