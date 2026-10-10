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
; shader hash: 207216adb39b74916616505805735f57
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
  br i1 %3702, label %3703, label %4211

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
  br i1 %3754, label %4180, label %3755

; <label>:3755                                    ; preds = %3703
  %3756 = and i32 %3751, 1023
  br label %3757

; <label>:3757                                    ; preds = %3883, %3755
  %3758 = phi i32 [ %3833, %3883 ], [ 0, %3755 ]
  %3759 = phi float [ %3884, %3883 ], [ 0.000000e+00, %3755 ]
  %3760 = phi float [ %3885, %3883 ], [ %3672, %3755 ]
  %3761 = phi float [ %3886, %3883 ], [ %3670, %3755 ]
  %3762 = phi float [ %3887, %3883 ], [ 0.000000e+00, %3755 ]
  %3763 = phi float [ %3888, %3883 ], [ 0.000000e+00, %3755 ]
  %3764 = phi float [ %3889, %3883 ], [ %3664, %3755 ]
  %3765 = phi float [ %3890, %3883 ], [ %3665, %3755 ]
  %3766 = phi float [ %3891, %3883 ], [ %3666, %3755 ]
  %3767 = phi float [ %3892, %3883 ], [ %3698, %3755 ]
  %3768 = phi float [ %3893, %3883 ], [ %3699, %3755 ]
  %3769 = phi float [ %3894, %3883 ], [ %3700, %3755 ]
  %3770 = phi float [ %3895, %3883 ], [ %3669, %3755 ]
  %3771 = phi float [ %3896, %3883 ], [ %3668, %3755 ]
  %3772 = phi float [ %3897, %3883 ], [ 0.000000e+00, %3755 ]
  %3773 = phi float [ %3898, %3883 ], [ %3667, %3755 ]
  %3774 = phi float [ %3899, %3883 ], [ %3661, %3755 ]
  %3775 = phi float [ %3900, %3883 ], [ %3662, %3755 ]
  %3776 = phi float [ %3901, %3883 ], [ %3663, %3755 ]
  %3777 = add nuw nsw i32 %3758, %3753
  %3778 = shl i32 %3777, 2
  %3779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3778, i32 undef)  ; BufferLoad(srv,index,wot)
  %3780 = extractvalue %dx.types.ResRet.i32 %3779, 0
  %3781 = shl i32 %3780, 8
  %3782 = or i32 %3781, 48
  %3783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3782, i32 undef)  ; BufferLoad(srv,index,wot)
  %3784 = extractvalue %dx.types.ResRet.f32 %3783, 0
  %3785 = extractvalue %dx.types.ResRet.f32 %3783, 1
  %3786 = extractvalue %dx.types.ResRet.f32 %3783, 2
  %3787 = extractvalue %dx.types.ResRet.f32 %3783, 3
  %3788 = or i32 %3781, 64
  %3789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3788, i32 undef)  ; BufferLoad(srv,index,wot)
  %3790 = extractvalue %dx.types.ResRet.i32 %3789, 0
  %3791 = extractvalue %dx.types.ResRet.i32 %3789, 1
  %3792 = or i32 %3781, 80
  %3793 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3792, i32 undef)  ; BufferLoad(srv,index,wot)
  %3794 = extractvalue %dx.types.ResRet.f32 %3793, 2
  %3795 = extractvalue %dx.types.ResRet.f32 %3793, 3
  %3796 = or i32 %3781, 96
  %3797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3796, i32 undef)  ; BufferLoad(srv,index,wot)
  %3798 = extractvalue %dx.types.ResRet.f32 %3797, 0
  %3799 = extractvalue %dx.types.ResRet.f32 %3797, 1
  %3800 = extractvalue %dx.types.ResRet.f32 %3797, 2
  %3801 = extractvalue %dx.types.ResRet.f32 %3797, 3
  %3802 = or i32 %3781, 112
  %3803 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3804 = extractvalue %dx.types.ResRet.f32 %3803, 2
  %3805 = or i32 %3781, 128
  %3806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3807 = extractvalue %dx.types.ResRet.f32 %3806, 0
  %3808 = extractvalue %dx.types.ResRet.f32 %3806, 1
  %3809 = extractvalue %dx.types.ResRet.f32 %3806, 2
  %3810 = extractvalue %dx.types.ResRet.f32 %3806, 3
  %3811 = or i32 %3781, 144
  %3812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.f32 %3812, 0
  %3814 = extractvalue %dx.types.ResRet.f32 %3812, 1
  %3815 = extractvalue %dx.types.ResRet.f32 %3812, 2
  %3816 = extractvalue %dx.types.ResRet.f32 %3812, 3
  %3817 = or i32 %3781, 160
  %3818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.f32 %3818, 0
  %3820 = extractvalue %dx.types.ResRet.f32 %3818, 1
  %3821 = extractvalue %dx.types.ResRet.f32 %3818, 2
  %3822 = extractvalue %dx.types.ResRet.f32 %3818, 3
  %3823 = or i32 %3781, 192
  %3824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3823, i32 undef)  ; BufferLoad(srv,index,wot)
  %3825 = extractvalue %dx.types.ResRet.i32 %3824, 0
  %3826 = or i32 %3781, 208
  %3827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3828 = extractvalue %dx.types.ResRet.f32 %3827, 0
  %3829 = or i32 %3781, 248
  %3830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.f32 %3830, 0
  %3832 = extractvalue %dx.types.ResRet.f32 %3830, 1
  %3833 = add nuw nsw i32 %3758, 1
  %3834 = bitcast float %3787 to i32
  %3835 = and i32 %3834, 512
  %3836 = icmp eq i32 %3835, 0
  %3837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3781, i32 undef)  ; BufferLoad(srv,index,wot)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3839 = extractvalue %dx.types.ResRet.f32 %3837, 1
  %3840 = extractvalue %dx.types.ResRet.f32 %3837, 2
  %3841 = extractvalue %dx.types.ResRet.f32 %3837, 3
  %3842 = call float @dx.op.dot4.f32(i32 56, float %3838, float %3839, float %3840, float %3841, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3843 = or i32 %3781, 16
  %3844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3843, i32 undef)  ; BufferLoad(srv,index,wot)
  %3845 = extractvalue %dx.types.ResRet.f32 %3844, 0
  %3846 = extractvalue %dx.types.ResRet.f32 %3844, 1
  %3847 = extractvalue %dx.types.ResRet.f32 %3844, 2
  %3848 = extractvalue %dx.types.ResRet.f32 %3844, 3
  %3849 = call float @dx.op.dot4.f32(i32 56, float %3845, float %3846, float %3847, float %3848, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3850 = or i32 %3781, 32
  %3851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3852 = extractvalue %dx.types.ResRet.f32 %3851, 0
  %3853 = extractvalue %dx.types.ResRet.f32 %3851, 1
  %3854 = extractvalue %dx.types.ResRet.f32 %3851, 2
  %3855 = extractvalue %dx.types.ResRet.f32 %3851, 3
  %3856 = call float @dx.op.dot4.f32(i32 56, float %3852, float %3853, float %3854, float %3855, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3857 = call float @dx.op.unary.f32(i32 27, float %3842)  ; Round_ni(value)
  %3858 = call float @dx.op.unary.f32(i32 6, float %3857)  ; FAbs(value)
  %3859 = call float @dx.op.unary.f32(i32 27, float %3849)  ; Round_ni(value)
  %3860 = call float @dx.op.unary.f32(i32 6, float %3859)  ; FAbs(value)
  %3861 = call float @dx.op.unary.f32(i32 6, float %3856)  ; FAbs(value)
  %3862 = call float @dx.op.unary.f32(i32 27, float %3861)  ; Round_ni(value)
  %3863 = fadd fast float %3860, %3858
  %3864 = fadd fast float %3863, %3862
  %3865 = fcmp fast oeq float %3864, 0.000000e+00
  %3866 = call float @dx.op.dot4.f32(i32 56, float %3838, float %3839, float %3840, float %3841, float %3710, float %3711, float %3712, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3867 = call float @dx.op.dot4.f32(i32 56, float %3845, float %3846, float %3847, float %3848, float %3710, float %3711, float %3712, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3868 = call float @dx.op.dot4.f32(i32 56, float %3838, float %3839, float %3840, float %3841, float %3713, float %3714, float %3715, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3869 = call float @dx.op.dot4.f32(i32 56, float %3845, float %3846, float %3847, float %3848, float %3713, float %3714, float %3715, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3870 = fsub fast float %3866, %3842
  %3871 = fsub fast float %3868, %3842
  %3872 = fsub fast float %3867, %3849
  %3873 = fsub fast float %3869, %3849
  %3874 = call float @dx.op.dot3.f32(i32 55, float %3784, float %3785, float %3786, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %3875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3876 = extractvalue %dx.types.CBufRet.f32 %3875, 2
  %3877 = fadd fast float %3876, %3874
  %3878 = call float @dx.op.unary.f32(i32 7, float %3877)  ; Saturate(value)
  %3879 = extractvalue %dx.types.CBufRet.f32 %3875, 0
  %3880 = fcmp fast ogt float %3878, %3879
  %3881 = and i1 %3865, %3880
  %3882 = and i1 %3836, %3881
  br i1 %3882, label %3903, label %3883

; <label>:3883                                    ; preds = %4166, %3984, %3903, %3757
  %3884 = phi float [ %3759, %3903 ], [ %3987, %3984 ], [ %3987, %4166 ], [ %3759, %3757 ]
  %3885 = phi float [ %3760, %3903 ], [ %3760, %3984 ], [ %4141, %4166 ], [ %3760, %3757 ]
  %3886 = phi float [ %3761, %3903 ], [ %3761, %3984 ], [ %4139, %4166 ], [ %3761, %3757 ]
  %3887 = phi float [ %3762, %3903 ], [ %3762, %3984 ], [ %4111, %4166 ], [ %3762, %3757 ]
  %3888 = phi float [ %3763, %3903 ], [ %3763, %3984 ], [ %4109, %4166 ], [ %3763, %3757 ]
  %3889 = phi float [ %3764, %3903 ], [ %3764, %3984 ], [ %4176, %4166 ], [ %3764, %3757 ]
  %3890 = phi float [ %3765, %3903 ], [ %3765, %3984 ], [ %4177, %4166 ], [ %3765, %3757 ]
  %3891 = phi float [ %3766, %3903 ], [ %3766, %3984 ], [ %4178, %4166 ], [ %3766, %3757 ]
  %3892 = phi float [ %3767, %3903 ], [ %3767, %3984 ], [ %4090, %4166 ], [ %3767, %3757 ]
  %3893 = phi float [ %3768, %3903 ], [ %3768, %3984 ], [ %4091, %4166 ], [ %3768, %3757 ]
  %3894 = phi float [ %3769, %3903 ], [ %3769, %3984 ], [ %4092, %4166 ], [ %3769, %3757 ]
  %3895 = phi float [ %3770, %3903 ], [ %3770, %3984 ], [ %4119, %4166 ], [ %3770, %3757 ]
  %3896 = phi float [ %3771, %3903 ], [ %3771, %3984 ], [ %4116, %4166 ], [ %3771, %3757 ]
  %3897 = phi float [ %3772, %3903 ], [ %3772, %3984 ], [ %4113, %4166 ], [ %3772, %3757 ]
  %3898 = phi float [ %3773, %3903 ], [ %3773, %3984 ], [ %4107, %4166 ], [ %3773, %3757 ]
  %3899 = phi float [ %3774, %3903 ], [ %3774, %3984 ], [ %4102, %4166 ], [ %3774, %3757 ]
  %3900 = phi float [ %3775, %3903 ], [ %3775, %3984 ], [ %4103, %4166 ], [ %3775, %3757 ]
  %3901 = phi float [ %3776, %3903 ], [ %3776, %3984 ], [ %4104, %4166 ], [ %3776, %3757 ]
  %3902 = icmp eq i32 %3833, %3756
  br i1 %3902, label %4179, label %3757

; <label>:3903                                    ; preds = %3757
  %3904 = extractvalue %dx.types.ResRet.f32 %3803, 3
  %3905 = extractvalue %dx.types.ResRet.f32 %3803, 1
  %3906 = extractvalue %dx.types.ResRet.f32 %3803, 0
  %3907 = extractvalue %dx.types.ResRet.f32 %3793, 1
  %3908 = extractvalue %dx.types.ResRet.f32 %3793, 0
  %3909 = extractvalue %dx.types.ResRet.i32 %3789, 3
  %3910 = extractvalue %dx.types.ResRet.i32 %3789, 2
  %3911 = add i32 %3909, 0
  %3912 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3911, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3913 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3914 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3912, %dx.types.Handle %3913, float %3842, float %3849, float undef, float undef, i32 0, i32 0, i32 undef, float %3870, float %3872, float undef, float %3871, float %3873, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3915 = extractvalue %dx.types.ResRet.f32 %3914, 0
  %3916 = fmul fast float %3915, %3908
  %3917 = fadd fast float %3916, %3907
  %3918 = call float @dx.op.unary.f32(i32 7, float %3917)  ; Saturate(value)
  %3919 = fmul fast float %3842, %3798
  %3920 = call float @dx.op.tertiary.f32(i32 46, float %3799, float %3849, float %3919)  ; FMad(a,b,c)
  %3921 = fadd fast float %3920, %3906
  %3922 = fmul fast float %3842, %3800
  %3923 = call float @dx.op.tertiary.f32(i32 46, float %3801, float %3849, float %3922)  ; FMad(a,b,c)
  %3924 = fadd fast float %3923, %3905
  %3925 = fmul fast float %3870, %3798
  %3926 = call float @dx.op.tertiary.f32(i32 46, float %3799, float %3872, float %3925)  ; FMad(a,b,c)
  %3927 = fmul fast float %3870, %3800
  %3928 = call float @dx.op.tertiary.f32(i32 46, float %3801, float %3872, float %3927)  ; FMad(a,b,c)
  %3929 = fmul fast float %3871, %3798
  %3930 = call float @dx.op.tertiary.f32(i32 46, float %3799, float %3873, float %3929)  ; FMad(a,b,c)
  %3931 = fmul fast float %3871, %3800
  %3932 = call float @dx.op.tertiary.f32(i32 46, float %3801, float %3873, float %3931)  ; FMad(a,b,c)
  %3933 = add i32 %3910, 0
  %3934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3933, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3935 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3934, %dx.types.Handle %3913, float %3921, float %3924, float undef, float undef, i32 0, i32 0, i32 undef, float %3926, float %3928, float undef, float %3930, float %3932, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3936 = extractvalue %dx.types.ResRet.f32 %3935, 0
  %3937 = and i32 %3834, 1024
  %3938 = icmp ne i32 %3937, 0
  %3939 = fcmp fast ogt float %3936, 0x3FE0101020000000
  %3940 = uitofp i1 %3939 to float
  %3941 = select i1 %3938, float %3940, float %3936
  %3942 = and i32 %3834, 8192
  %3943 = icmp ne i32 %3942, 0
  %3944 = select i1 %3943, float %3904, float 1.000000e+00
  %3945 = fmul fast float %3842, 2.000000e+00
  %3946 = fadd fast float %3945, -1.000000e+00
  %3947 = call float @dx.op.unary.f32(i32 6, float %3946)  ; FAbs(value)
  %3948 = fmul fast float %3947, %3831
  %3949 = fsub fast float %3948, %3831
  %3950 = call float @dx.op.unary.f32(i32 7, float %3949)  ; Saturate(value)
  %3951 = fmul fast float %3849, 2.000000e+00
  %3952 = fadd fast float %3951, -1.000000e+00
  %3953 = call float @dx.op.unary.f32(i32 6, float %3952)  ; FAbs(value)
  %3954 = fmul fast float %3953, %3832
  %3955 = fsub fast float %3954, %3832
  %3956 = call float @dx.op.unary.f32(i32 7, float %3955)  ; Saturate(value)
  %3957 = fmul fast float %3861, %3794
  %3958 = fsub fast float %3957, %3794
  %3959 = call float @dx.op.unary.f32(i32 7, float %3958)  ; Saturate(value)
  %3960 = fmul fast float %3918, %3944
  %3961 = fmul fast float %3960, %3915
  %3962 = fmul fast float %3961, %3950
  %3963 = fmul fast float %3962, %3941
  %3964 = fmul fast float %3963, %3956
  %3965 = fmul fast float %3964, %3959
  %3966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3967 = extractvalue %dx.types.CBufRet.f32 %3966, 1
  %3968 = extractvalue %dx.types.CBufRet.f32 %3966, 0
  %3969 = fsub fast float %3878, %3968
  %3970 = fmul fast float %3969, %3967
  %3971 = call float @dx.op.unary.f32(i32 7, float %3970)  ; Saturate(value)
  %3972 = fmul fast float %3965, %3795
  %3973 = fadd fast float %3965, %3795
  %3974 = fmul fast float %3973, %3804
  %3975 = fsub fast float %3974, %3804
  %3976 = call float @dx.op.unary.f32(i32 7, float %3975)  ; Saturate(value)
  %3977 = and i32 %3834, 128
  %3978 = icmp ne i32 %3977, 0
  %3979 = select i1 %3978, float %3976, float %3972
  %3980 = fmul fast float %3979, %3971
  %3981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3982 = extractvalue %dx.types.CBufRet.f32 %3981, 0
  %3983 = fcmp fast ugt float %3980, %3982
  br i1 %3983, label %3984, label %3883

; <label>:3984                                    ; preds = %3903
  %3985 = select i1 %3943, float %3980, float 0.000000e+00
  %3986 = fadd fast float %3985, %3759
  %3987 = call float @dx.op.unary.f32(i32 7, float %3986)  ; Saturate(value)
  br i1 %3943, label %3883, label %3988

; <label>:3988                                    ; preds = %3984
  %3989 = and i32 %3834, 4
  %3990 = and i32 %3834, 8
  %3991 = add i32 %3790, 0
  %3992 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3991, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3994 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3992, %dx.types.Handle %3993, float %3921, float %3924, float undef, float undef, i32 0, i32 0, i32 undef, float %3926, float %3928, float undef, float %3930, float %3932, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3995 = extractvalue %dx.types.ResRet.f32 %3994, 0
  %3996 = extractvalue %dx.types.ResRet.f32 %3994, 1
  %3997 = extractvalue %dx.types.ResRet.f32 %3994, 2
  %3998 = extractvalue %dx.types.ResRet.f32 %3994, 3
  %3999 = bitcast float %3816 to i32
  %4000 = and i32 %3999, 255
  %4001 = uitofp i32 %4000 to float
  %4002 = lshr i32 %3999, 8
  %4003 = and i32 %4002, 255
  %4004 = uitofp i32 %4003 to float
  %4005 = fmul fast float %3998, %4001
  %4006 = fadd fast float %4005, %4004
  %4007 = fmul fast float %4006, 0x3F70101000000000
  %4008 = add i32 %3791, 0
  %4009 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4008, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4010 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4009, %dx.types.Handle %3993, float %3921, float %3924, float undef, float undef, i32 0, i32 0, i32 undef, float %3926, float %3928, float undef, float %3930, float %3932, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4011 = extractvalue %dx.types.ResRet.f32 %4010, 0
  %4012 = extractvalue %dx.types.ResRet.f32 %4010, 1
  %4013 = extractvalue %dx.types.ResRet.f32 %4010, 2
  %4014 = extractvalue %dx.types.ResRet.f32 %4010, 3
  %4015 = bitcast float %3810 to i32
  %4016 = and i32 %4015, 255
  %4017 = uitofp i32 %4016 to float
  %4018 = lshr i32 %4015, 8
  %4019 = and i32 %4018, 255
  %4020 = uitofp i32 %4019 to float
  %4021 = lshr i32 %4015, 16
  %4022 = and i32 %4021, 255
  %4023 = uitofp i32 %4022 to float
  %4024 = fmul fast float %4023, 0x3F70101000000000
  %4025 = fmul fast float %4011, %4017
  %4026 = fadd fast float %4025, %4020
  %4027 = fmul fast float %4026, 0x3F70101000000000
  %4028 = fadd fast float %4012, -5.000000e-01
  %4029 = fadd fast float %4014, -5.000000e-01
  %4030 = fmul fast float %4028, %4024
  %4031 = fmul fast float %4029, %4024
  %4032 = fadd fast float %4030, 5.000000e-01
  %4033 = fadd fast float %4031, 5.000000e-01
  %4034 = fmul fast float %3995, %3819
  %4035 = fmul fast float %3996, %3820
  %4036 = fmul fast float %3997, %3821
  %4037 = fmul fast float %4032, 2.000000e+00
  %4038 = fadd fast float %4037, -1.000000e+00
  %4039 = fmul fast float %4033, 2.000000e+00
  %4040 = fadd fast float %4039, -1.000000e+00
  %4041 = fadd fast float %4038, %4040
  %4042 = fmul fast float %4041, 5.000000e-01
  %4043 = fsub fast float %4038, %4040
  %4044 = fmul fast float %4043, 5.000000e-01
  %4045 = call float @dx.op.unary.f32(i32 6, float %4042)  ; FAbs(value)
  %4046 = fsub fast float 1.000000e+00, %4045
  %4047 = call float @dx.op.unary.f32(i32 6, float %4044)  ; FAbs(value)
  %4048 = fsub fast float %4046, %4047
  %4049 = call float @dx.op.dot3.f32(i32 55, float %4042, float %4044, float %4048, float %4042, float %4044, float %4048)  ; Dot3(ax,ay,az,bx,by,bz)
  %4050 = call float @dx.op.unary.f32(i32 25, float %4049)  ; Rsqrt(value)
  %4051 = fmul fast float %4042, %4050
  %4052 = fmul fast float %4044, %4050
  %4053 = fmul fast float %4050, %4048
  %4054 = fmul fast float %4053, %3784
  %4055 = fmul fast float %4053, %3785
  %4056 = fmul fast float %4053, %3786
  %4057 = fmul fast float %4051, %3807
  %4058 = fmul fast float %4051, %3808
  %4059 = fmul fast float %4051, %3809
  %4060 = fadd fast float %4057, %4054
  %4061 = fadd fast float %4058, %4055
  %4062 = fadd fast float %4059, %4056
  %4063 = fmul fast float %4052, %3813
  %4064 = fmul fast float %4052, %3814
  %4065 = fmul fast float %4052, %3815
  %4066 = fadd fast float %4060, %4063
  %4067 = fadd fast float %4061, %4064
  %4068 = fadd fast float %4062, %4065
  %4069 = call float @dx.op.dot3.f32(i32 55, float %4066, float %4067, float %4068, float %4066, float %4067, float %4068)  ; Dot3(ax,ay,az,bx,by,bz)
  %4070 = call float @dx.op.unary.f32(i32 25, float %4069)  ; Rsqrt(value)
  %4071 = fmul fast float %4066, %4070
  %4072 = fmul fast float %4067, %4070
  %4073 = fmul fast float %4068, %4070
  %4074 = icmp ne i32 %3990, 0
  %4075 = select i1 %4074, float 1.000000e+00, float 0.000000e+00
  %4076 = fmul fast float %3980, %4075
  %4077 = and i32 %3834, 1
  %4078 = icmp eq i32 %4077, 0
  br i1 %4078, label %4079, label %4083

; <label>:4079                                    ; preds = %3988
  %4080 = fsub fast float %4071, %3767
  %4081 = fsub fast float %4072, %3768
  %4082 = fsub fast float %4073, %3769
  br label %4083

; <label>:4083                                    ; preds = %4079, %3988
  %4084 = phi float [ %4080, %4079 ], [ %4071, %3988 ]
  %4085 = phi float [ %4081, %4079 ], [ %4072, %3988 ]
  %4086 = phi float [ %4082, %4079 ], [ %4073, %3988 ]
  %4087 = fmul float %4086, %4076
  %4088 = fmul float %4085, %4076
  %4089 = fmul float %4084, %4076
  %4090 = fadd fast float %4089, %3767
  %4091 = fadd fast float %4088, %3768
  %4092 = fadd fast float %4087, %3769
  %4093 = icmp ne i32 %3989, 0
  %4094 = select i1 %4093, float 1.000000e+00, float 0.000000e+00
  %4095 = fmul fast float %3980, %4094
  %4096 = fsub fast float %4034, %3774
  %4097 = fsub fast float %4035, %3775
  %4098 = fsub fast float %4036, %3776
  %4099 = fmul fast float %4096, %4095
  %4100 = fmul fast float %4097, %4095
  %4101 = fmul fast float %4098, %4095
  %4102 = fadd fast float %4099, %3774
  %4103 = fadd fast float %4100, %3775
  %4104 = fadd fast float %4101, %3776
  %4105 = fsub fast float %4007, %3773
  %4106 = fmul fast float %4105, %4095
  %4107 = fadd fast float %4106, %3773
  %4108 = fmul fast float %4095, %3763
  %4109 = fsub fast float %3763, %4108
  %4110 = fmul fast float %4095, %3762
  %4111 = fsub fast float %3762, %4110
  %4112 = fadd fast float %3980, %3772
  %4113 = call float @dx.op.unary.f32(i32 7, float %4112)  ; Saturate(value)
  %4114 = fsub fast float %4027, %3771
  %4115 = fmul fast float %4114, %4076
  %4116 = fadd fast float %4115, %3771
  %4117 = fsub fast float %4013, %3770
  %4118 = fmul fast float %4117, %4076
  %4119 = fadd fast float %4118, %3770
  %4120 = call float @dx.op.dot3.f32(i32 55, float %4034, float %4035, float %4036, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 0
  %4123 = extractvalue %dx.types.CBufRet.f32 %4121, 1
  %4124 = fmul fast float %4123, %4120
  %4125 = fadd fast float %4124, %4122
  %4126 = call float @dx.op.unary.f32(i32 7, float %4125)  ; Saturate(value)
  %4127 = bitcast float %3822 to i32
  %4128 = and i32 %4127, 65535
  %4129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4128)  ; LegacyF16ToF32(value)
  %4130 = lshr i32 %4127, 16
  %4131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4130)  ; LegacyF16ToF32(value)
  %4132 = fcmp fast oge float %4129, 0.000000e+00
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 0
  %4135 = select i1 %4132, float %4129, float %4134
  %4136 = fadd fast float %4135, %4131
  %4137 = fsub fast float %4126, %3761
  %4138 = fmul fast float %4137, %3980
  %4139 = fadd fast float %4138, %3761
  %4140 = fmul fast float %4136, %3980
  %4141 = call float @dx.op.binary.f32(i32 35, float %3760, float %4140)  ; FMax(a,b)
  %4142 = and i32 %3834, 16
  %4143 = icmp eq i32 %4142, 0
  br i1 %4143, label %4166, label %4144

; <label>:4144                                    ; preds = %4083
  %4145 = bitcast float %3828 to i32
  %4146 = add i32 %3825, 0
  %4147 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4146, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4148 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4147, %dx.types.Handle %3993, float %3921, float %3924, float undef, float undef, i32 0, i32 0, i32 undef, float %3926, float %3928, float undef, float %3930, float %3932, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4149 = extractvalue %dx.types.ResRet.f32 %4148, 0
  %4150 = extractvalue %dx.types.ResRet.f32 %4148, 1
  %4151 = extractvalue %dx.types.ResRet.f32 %4148, 2
  %4152 = and i32 %4145, 65535
  %4153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4152)  ; LegacyF16ToF32(value)
  %4154 = fmul fast float %4149, %3819
  %4155 = fmul fast float %4150, %3820
  %4156 = fmul fast float %4151, %3821
  %4157 = and i32 %3834, 16384
  %4158 = icmp ne i32 %4157, 0
  %4159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.f32 %4159, 0
  %4161 = select i1 %4158, float %4160, float 1.000000e+00
  %4162 = fmul fast float %4161, %4153
  %4163 = fmul fast float %4154, %4162
  %4164 = fmul fast float %4155, %4162
  %4165 = fmul fast float %4156, %4162
  br label %4166

; <label>:4166                                    ; preds = %4144, %4083
  %4167 = phi float [ %4163, %4144 ], [ 0.000000e+00, %4083 ]
  %4168 = phi float [ %4164, %4144 ], [ 0.000000e+00, %4083 ]
  %4169 = phi float [ %4165, %4144 ], [ 0.000000e+00, %4083 ]
  %4170 = fsub fast float %4167, %3764
  %4171 = fsub fast float %4168, %3765
  %4172 = fsub fast float %4169, %3766
  %4173 = fmul fast float %4170, %3980
  %4174 = fmul fast float %4171, %3980
  %4175 = fmul fast float %4172, %3980
  %4176 = fadd fast float %4173, %3764
  %4177 = fadd fast float %4174, %3765
  %4178 = fadd fast float %4175, %3766
  br label %3883

; <label>:4179                                    ; preds = %3883
  br label %4180

; <label>:4180                                    ; preds = %4179, %3703
  %4181 = phi float [ 0.000000e+00, %3703 ], [ %3884, %4179 ]
  %4182 = phi float [ %3672, %3703 ], [ %3885, %4179 ]
  %4183 = phi float [ %3670, %3703 ], [ %3886, %4179 ]
  %4184 = phi float [ 0.000000e+00, %3703 ], [ %3887, %4179 ]
  %4185 = phi float [ 0.000000e+00, %3703 ], [ %3888, %4179 ]
  %4186 = phi float [ %3664, %3703 ], [ %3889, %4179 ]
  %4187 = phi float [ %3665, %3703 ], [ %3890, %4179 ]
  %4188 = phi float [ %3666, %3703 ], [ %3891, %4179 ]
  %4189 = phi float [ %3698, %3703 ], [ %3892, %4179 ]
  %4190 = phi float [ %3699, %3703 ], [ %3893, %4179 ]
  %4191 = phi float [ %3700, %3703 ], [ %3894, %4179 ]
  %4192 = phi float [ %3669, %3703 ], [ %3895, %4179 ]
  %4193 = phi float [ %3668, %3703 ], [ %3896, %4179 ]
  %4194 = phi float [ 0.000000e+00, %3703 ], [ %3897, %4179 ]
  %4195 = phi float [ %3667, %3703 ], [ %3898, %4179 ]
  %4196 = phi float [ %3661, %3703 ], [ %3899, %4179 ]
  %4197 = phi float [ %3662, %3703 ], [ %3900, %4179 ]
  %4198 = phi float [ %3663, %3703 ], [ %3901, %4179 ]
  %4199 = call float @dx.op.dot3.f32(i32 55, float %4189, float %4190, float %4191, float %4189, float %4190, float %4191)  ; Dot3(ax,ay,az,bx,by,bz)
  %4200 = call float @dx.op.unary.f32(i32 25, float %4199)  ; Rsqrt(value)
  %4201 = fmul fast float %4200, %4189
  %4202 = fmul fast float %4200, %4190
  %4203 = fmul fast float %4200, %4191
  %4204 = fadd fast float %4194, %1105
  %4205 = call float @dx.op.unary.f32(i32 7, float %4204)  ; Saturate(value)
  %4206 = call float @dx.op.dot3.f32(i32 55, float %4201, float %4202, float %4203, float %4201, float %4202, float %4203)  ; Dot3(ax,ay,az,bx,by,bz)
  %4207 = call float @dx.op.unary.f32(i32 25, float %4206)  ; Rsqrt(value)
  %4208 = fmul fast float %4207, %4201
  %4209 = fmul fast float %4207, %4202
  %4210 = fmul fast float %4207, %4203
  br label %4211

; <label>:4211                                    ; preds = %4180, %3658
  %4212 = phi float [ %4208, %4180 ], [ %3698, %3658 ]
  %4213 = phi float [ %4209, %4180 ], [ %3699, %3658 ]
  %4214 = phi float [ %4210, %4180 ], [ %3700, %3658 ]
  %4215 = phi float [ %4196, %4180 ], [ %3661, %3658 ]
  %4216 = phi float [ %4197, %4180 ], [ %3662, %3658 ]
  %4217 = phi float [ %4198, %4180 ], [ %3663, %3658 ]
  %4218 = phi float [ %4186, %4180 ], [ %3664, %3658 ]
  %4219 = phi float [ %4187, %4180 ], [ %3665, %3658 ]
  %4220 = phi float [ %4188, %4180 ], [ %3666, %3658 ]
  %4221 = phi float [ %4195, %4180 ], [ %3667, %3658 ]
  %4222 = phi float [ %4205, %4180 ], [ %1105, %3658 ]
  %4223 = phi float [ %4193, %4180 ], [ %3668, %3658 ]
  %4224 = phi float [ %4192, %4180 ], [ %3669, %3658 ]
  %4225 = phi float [ %4185, %4180 ], [ 0.000000e+00, %3658 ]
  %4226 = phi float [ %4184, %4180 ], [ 0.000000e+00, %3658 ]
  %4227 = phi float [ %4181, %4180 ], [ 0.000000e+00, %3658 ]
  %4228 = phi float [ %4182, %4180 ], [ %3672, %3658 ]
  %4229 = phi float [ %4183, %4180 ], [ %3670, %3658 ]
  %4230 = fadd fast float %4221, 0xBFB99999A0000000
  %4231 = call float @dx.op.unary.f32(i32 7, float %4230)  ; Saturate(value)
  %4232 = fmul fast float %4231, 0x3FF1C71C80000000
  %4233 = call float @dx.op.binary.f32(i32 36, float %4221, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4234 = fsub fast float 1.000000e+00, %4232
  %4235 = call float @dx.op.unary.f32(i32 7, float %4234)  ; Saturate(value)
  %4236 = fmul fast float %4235, %4215
  %4237 = fmul fast float %4235, %4216
  %4238 = fmul fast float %4235, %4217
  %4239 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4240 = call float @dx.op.unary.f32(i32 7, float %4237)  ; Saturate(value)
  %4241 = call float @dx.op.unary.f32(i32 7, float %4238)  ; Saturate(value)
  %4242 = fmul fast float %4232, %4215
  %4243 = fmul fast float %4232, %4216
  %4244 = fmul fast float %4232, %4217
  %4245 = fadd fast float %4242, %4233
  %4246 = fadd fast float %4243, %4233
  %4247 = fadd fast float %4244, %4233
  %4248 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  %4249 = call float @dx.op.unary.f32(i32 7, float %4246)  ; Saturate(value)
  %4250 = call float @dx.op.unary.f32(i32 7, float %4247)  ; Saturate(value)
  %4251 = call float @dx.op.unary.f32(i32 7, float %4223)  ; Saturate(value)
  %4252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4253 = extractvalue %dx.types.CBufRet.i32 %4252, 3
  %4254 = and i32 %4253, 8
  %4255 = icmp ne i32 %4254, 0
  %4256 = call float @dx.op.binary.f32(i32 35, float %4239, float %4215)  ; FMax(a,b)
  %4257 = call float @dx.op.binary.f32(i32 35, float %4240, float %4215)  ; FMax(a,b)
  %4258 = call float @dx.op.binary.f32(i32 35, float %4241, float %4215)  ; FMax(a,b)
  %4259 = call float @dx.op.dot3.f32(i32 55, float %4239, float %4240, float %4241, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4260 = select i1 %206, float %4215, float %4239
  %4261 = select i1 %206, float %4259, float %4240
  %4262 = select i1 %206, float 1.000000e+00, float %4241
  %4263 = select i1 %4255, float %4256, float %4260
  %4264 = select i1 %4255, float %4257, float %4261
  %4265 = select i1 %4255, float %4258, float %4262
  %4266 = and i32 %182, 3
  %4267 = select i1 %176, i32 %4266, i32 0
  %4268 = icmp eq i32 %4267, 1
  br i1 %4268, label %4269, label %4345

; <label>:4269                                    ; preds = %4211
  %4270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4271 = extractvalue %dx.types.CBufRet.f32 %4270, 0
  %4272 = extractvalue %dx.types.CBufRet.f32 %4270, 1
  %4273 = fadd fast float %4271, %145
  %4274 = fadd fast float %4272, %146
  %4275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4276 = extractvalue %dx.types.CBufRet.f32 %4275, 0
  %4277 = extractvalue %dx.types.CBufRet.f32 %4275, 1
  %4278 = fsub fast float %4273, %4276
  %4279 = fsub fast float %4274, %4277
  %4280 = fmul fast float %4278, %4278
  %4281 = fmul fast float %4279, %4279
  %4282 = fadd fast float %4280, %4281
  %4283 = call float @dx.op.unary.f32(i32 24, float %4282)  ; Sqrt(value)
  %4284 = extractvalue %dx.types.CBufRet.f32 %4275, 2
  %4285 = fcmp fast olt float %4283, %4284
  br i1 %4285, label %4286, label %4339

; <label>:4286                                    ; preds = %4269
  %4287 = extractvalue %dx.types.CBufRet.f32 %4270, 2
  %4288 = fadd fast float %4287, %147
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 0
  %4291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.f32 %4291, 0
  %4293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4294 = extractvalue %dx.types.CBufRet.f32 %4293, 0
  %4295 = extractvalue %dx.types.CBufRet.f32 %4289, 1
  %4296 = extractvalue %dx.types.CBufRet.f32 %4291, 1
  %4297 = extractvalue %dx.types.CBufRet.f32 %4293, 1
  %4298 = extractvalue %dx.types.CBufRet.f32 %4289, 3
  %4299 = extractvalue %dx.types.CBufRet.f32 %4291, 3
  %4300 = extractvalue %dx.types.CBufRet.f32 %4293, 3
  %4301 = fadd fast float %4298, %4273
  %4302 = fadd fast float %4299, %4274
  %4303 = fadd fast float %4288, %4300
  %4304 = fmul fast float %4301, %4290
  %4305 = call float @dx.op.tertiary.f32(i32 46, float %4302, float %4292, float %4304)  ; FMad(a,b,c)
  %4306 = call float @dx.op.tertiary.f32(i32 46, float %4303, float %4294, float %4305)  ; FMad(a,b,c)
  %4307 = fmul fast float %4301, %4295
  %4308 = call float @dx.op.tertiary.f32(i32 46, float %4302, float %4296, float %4307)  ; FMad(a,b,c)
  %4309 = call float @dx.op.tertiary.f32(i32 46, float %4303, float %4297, float %4308)  ; FMad(a,b,c)
  %4310 = fsub fast float %4306, %4298
  %4311 = fsub fast float %4309, %4299
  %4312 = fsub fast float %4310, %4276
  %4313 = fadd fast float %4312, %4284
  %4314 = fsub fast float %4311, %4277
  %4315 = fadd fast float %4314, %4284
  %4316 = extractvalue %dx.types.CBufRet.f32 %4275, 3
  %4317 = fmul fast float %4313, %4316
  %4318 = fmul fast float %4315, %4316
  %4319 = call float @dx.op.unary.f32(i32 7, float %4317)  ; Saturate(value)
  %4320 = call float @dx.op.unary.f32(i32 7, float %4318)  ; Saturate(value)
  %4321 = fsub fast float 1.000000e+00, %4319
  %4322 = fsub fast float 1.000000e+00, %4320
  %4323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %4321, float %4322, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4324 = extractvalue %dx.types.ResRet.f32 %4323, 0
  %4325 = fcmp fast ugt float %4324, 0.000000e+00
  br i1 %4325, label %4326, label %4339

; <label>:4326                                    ; preds = %4286
  %4327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.f32 %4327, 2
  %4329 = fmul fast float %4328, %4324
  %4330 = extractvalue %dx.types.CBufRet.f32 %4327, 3
  %4331 = fadd fast float %4330, %4329
  %4332 = extractvalue %dx.types.CBufRet.f32 %4293, 2
  %4333 = fadd fast float %4331, %4300
  %4334 = fmul fast float %4306, %4294
  %4335 = call float @dx.op.tertiary.f32(i32 46, float %4309, float %4297, float %4334)  ; FMad(a,b,c)
  %4336 = call float @dx.op.tertiary.f32(i32 46, float %4333, float %4332, float %4335)  ; FMad(a,b,c)
  %4337 = fsub fast float %4336, %4300
  %4338 = fsub fast float %4337, %4287
  br label %4339

; <label>:4339                                    ; preds = %4326, %4286, %4269
  %4340 = phi i1 [ true, %4326 ], [ false, %4286 ], [ false, %4269 ]
  %4341 = phi float [ %4338, %4326 ], [ -1.310720e+05, %4286 ], [ -1.310720e+05, %4269 ]
  %4342 = fsub fast float %4341, %147
  %4343 = call float @dx.op.unary.f32(i32 7, float %4342)  ; Saturate(value)
  %4344 = select i1 %4340, float %4343, float 1.000000e+00
  br label %4345

; <label>:4345                                    ; preds = %4339, %4211
  %4346 = phi float [ %4344, %4339 ], [ 0.000000e+00, %4211 ]
  %4347 = icmp eq i32 %4267, 3
  %4348 = select i1 %4347, float 1.000000e+00, float %4346
  %4349 = call float @dx.op.binary.f32(i32 35, float %4227, float %4348)  ; FMax(a,b)
  %4350 = call float @dx.op.unary.f32(i32 7, float %4349)  ; Saturate(value)
  %4351 = fcmp fast une float %4350, 0.000000e+00
  %4352 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %4353 = call float @dx.op.unary.f32(i32 25, float %4352)  ; Rsqrt(value)
  br i1 %4351, label %4361, label %4354

; <label>:4354                                    ; preds = %4345
  %4355 = fmul fast float %4353, %145
  %4356 = fmul fast float %4353, %146
  %4357 = fmul fast float %4353, %147
  %4358 = fsub fast float -0.000000e+00, %4355
  %4359 = fsub fast float -0.000000e+00, %4356
  %4360 = fsub fast float -0.000000e+00, %4357
  br label %4529

; <label>:4361                                    ; preds = %4345
  %4362 = fmul fast float %145, %4353
  %4363 = fsub fast float -0.000000e+00, %4362
  %4364 = fmul fast float %146, %4353
  %4365 = fsub fast float -0.000000e+00, %4364
  %4366 = fmul fast float %147, %4353
  %4367 = fsub fast float -0.000000e+00, %4366
  %4368 = call float @dx.op.dot3.f32(i32 55, float %4363, float %4365, float %4367, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %4369 = fmul fast float %4350, 2.500000e+00
  %4370 = call float @dx.op.unary.f32(i32 7, float %4369)  ; Saturate(value)
  %4371 = fmul fast float %4350, 0x4013FFFFE0000000
  %4372 = fadd fast float %4371, 0xBFFFFFFFE0000000
  %4373 = call float @dx.op.unary.f32(i32 7, float %4372)  ; Saturate(value)
  %4374 = fmul fast float %4350, 0x4004000020000000
  %4375 = fadd fast float %4374, 0xBFF8000040000000
  %4376 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4377 = call float @dx.op.unary.f32(i32 7, float %4370)  ; Saturate(value)
  %4378 = fmul fast float %4230, 1.000000e+01
  %4379 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4380 = fmul fast float %4379, 2.000000e+00
  %4381 = fsub fast float 3.000000e+00, %4380
  %4382 = fmul fast float %4379, %4379
  %4383 = fmul fast float %4382, %4381
  %4384 = fsub fast float 1.000000e+00, %4383
  %4385 = fsub fast float 0x3FE3333340000000, %4251
  %4386 = fmul fast float %4385, 0x400AAAAAA0000000
  %4387 = call float @dx.op.unary.f32(i32 7, float %4386)  ; Saturate(value)
  %4388 = fmul fast float %4384, %4387
  %4389 = fmul fast float %4263, 0x3FEA2B8620000000
  %4390 = fmul fast float %4264, 0x3FEA2B8620000000
  %4391 = fmul fast float %4265, 0x3FEA2B8620000000
  %4392 = fadd fast float %4389, 0x3FC81DFBA0000000
  %4393 = fmul fast float %4392, %4263
  %4394 = fadd fast float %4393, 0x3F910E6020000000
  %4395 = fadd fast float %4390, 0x3FC81DFBA0000000
  %4396 = fmul fast float %4395, %4264
  %4397 = fadd fast float %4396, 0x3F910E6020000000
  %4398 = fadd fast float %4391, 0x3FC81DFBA0000000
  %4399 = fmul fast float %4398, %4265
  %4400 = fadd fast float %4399, 0x3F910E6020000000
  %4401 = call float @dx.op.unary.f32(i32 7, float %4394)  ; Saturate(value)
  %4402 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4403 = call float @dx.op.unary.f32(i32 7, float %4400)  ; Saturate(value)
  %4404 = fsub fast float %4401, %4263
  %4405 = fsub fast float %4402, %4264
  %4406 = fsub fast float %4403, %4265
  %4407 = fmul fast float %4404, %4377
  %4408 = fmul fast float %4407, %4388
  %4409 = fmul fast float %4405, %4377
  %4410 = fmul fast float %4409, %4388
  %4411 = fmul fast float %4406, %4377
  %4412 = fmul fast float %4411, %4388
  %4413 = fadd fast float %4408, %4263
  %4414 = fadd fast float %4410, %4264
  %4415 = fadd fast float %4412, %4265
  %4416 = fmul fast float %4224, %4224
  %4417 = fmul fast float %4416, %4416
  %4418 = fadd fast float %4373, 1.000000e+00
  %4419 = fsub fast float %4418, %4388
  %4420 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4421 = call float @dx.op.dot3.f32(i32 55, float %89, float %90, float %91, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4422 = call float @dx.op.unary.f32(i32 7, float %4421)  ; Saturate(value)
  %4423 = fsub fast float 1.000000e+00, %4417
  %4424 = call float @dx.op.binary.f32(i32 36, float %4420, float %4423)  ; FMin(a,b)
  %4425 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  %4426 = call float @dx.op.binary.f32(i32 35, float %4424, float %4425)  ; FMax(a,b)
  %4427 = fadd fast float %4422, 0xBFE4CCCCC0000000
  %4428 = fmul fast float %4427, 0x4006DB6DA0000000
  %4429 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4430 = fmul fast float %4429, 2.000000e+00
  %4431 = fsub fast float 3.000000e+00, %4430
  %4432 = bitcast float %4248 to i32
  %4433 = ashr i32 %4432, 1
  %4434 = add nsw i32 %4433, 532487669
  %4435 = bitcast i32 %4434 to float
  %4436 = fsub fast float 1.000000e+00, %4435
  %4437 = bitcast float %4436 to i32
  %4438 = sub nsw i32 2129859010, %4437
  %4439 = bitcast i32 %4438 to float
  %4440 = fmul fast float %4439, 2.000000e+00
  %4441 = bitcast float %4249 to i32
  %4442 = ashr i32 %4441, 1
  %4443 = add nsw i32 %4442, 532487669
  %4444 = bitcast i32 %4443 to float
  %4445 = fsub fast float 1.000000e+00, %4444
  %4446 = bitcast float %4445 to i32
  %4447 = sub nsw i32 2129859010, %4446
  %4448 = bitcast i32 %4447 to float
  %4449 = fmul fast float %4448, 2.000000e+00
  %4450 = bitcast float %4250 to i32
  %4451 = ashr i32 %4450, 1
  %4452 = add nsw i32 %4451, 532487669
  %4453 = bitcast i32 %4452 to float
  %4454 = fsub fast float 1.000000e+00, %4453
  %4455 = bitcast float %4454 to i32
  %4456 = sub nsw i32 2129859010, %4455
  %4457 = bitcast i32 %4456 to float
  %4458 = fmul fast float %4457, 2.000000e+00
  %4459 = fsub fast float 0x4002A9FBE0000000, %4440
  %4460 = fadd fast float %4440, 0x3FD54FDF00000000
  %4461 = bitcast float %4460 to i32
  %4462 = sub nsw i32 2129859010, %4461
  %4463 = bitcast i32 %4462 to float
  %4464 = fmul fast float %4463, %4459
  %4465 = fmul fast float %4464, %4464
  %4466 = fsub fast float 0x4002A9FBE0000000, %4449
  %4467 = fadd fast float %4449, 0x3FD54FDF00000000
  %4468 = bitcast float %4467 to i32
  %4469 = sub nsw i32 2129859010, %4468
  %4470 = bitcast i32 %4469 to float
  %4471 = fmul fast float %4470, %4466
  %4472 = fmul fast float %4471, %4471
  %4473 = fsub fast float 0x4002A9FBE0000000, %4458
  %4474 = fadd fast float %4458, 0x3FD54FDF00000000
  %4475 = bitcast float %4474 to i32
  %4476 = sub nsw i32 2129859010, %4475
  %4477 = bitcast i32 %4476 to float
  %4478 = fmul fast float %4477, %4473
  %4479 = fmul fast float %4478, %4478
  %4480 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4465)  ; FMax(a,b)
  %4481 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4472)  ; FMax(a,b)
  %4482 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4479)  ; FMax(a,b)
  %4483 = fsub fast float 1.000000e+00, %4368
  %4484 = fadd fast float %4483, %4384
  %4485 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4486 = fsub fast float 1.000000e+00, %4348
  %4487 = fmul fast float %4426, %4486
  %4488 = fmul fast float %4429, %4429
  %4489 = fmul fast float %4488, %4487
  %4490 = fmul fast float %4489, %4431
  %4491 = fmul fast float %4486, 0xBFE99999A0000000
  %4492 = fmul fast float %4491, %4377
  %4493 = fmul fast float %4492, %4388
  %4494 = fadd fast float %4493, 1.000000e+00
  %4495 = fadd fast float %4251, -1.000000e+00
  %4496 = fmul fast float %4494, %4495
  %4497 = fadd fast float %4496, 1.000000e+00
  %4498 = fsub fast float %4480, %4248
  %4499 = fsub fast float %4481, %4249
  %4500 = fsub fast float %4482, %4250
  %4501 = fmul fast float %4490, %4498
  %4502 = fmul fast float %4490, %4499
  %4503 = fmul fast float %4490, %4500
  %4504 = fadd fast float %4501, %4248
  %4505 = fadd fast float %4502, %4249
  %4506 = fadd fast float %4503, %4250
  %4507 = fsub fast float %89, %4212
  %4508 = fsub fast float %90, %4213
  %4509 = fsub fast float %91, %4214
  %4510 = fmul fast float %4490, %4507
  %4511 = fmul fast float %4490, %4508
  %4512 = fmul fast float %4490, %4509
  %4513 = fadd fast float %4510, %4212
  %4514 = fadd fast float %4511, %4213
  %4515 = fadd fast float %4512, %4214
  %4516 = fmul fast float %4490, %4485
  %4517 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4518 = fsub fast float 1.000000e+00, %4517
  %4519 = fmul fast float %4516, %4518
  %4520 = fadd fast float %4519, %4517
  %4521 = fsub fast float 1.000000e+00, %4224
  %4522 = fmul fast float %4490, %4521
  %4523 = fadd fast float %4522, %4224
  %4524 = call float @dx.op.dot3.f32(i32 55, float %4513, float %4514, float %4515, float %4513, float %4514, float %4515)  ; Dot3(ax,ay,az,bx,by,bz)
  %4525 = call float @dx.op.unary.f32(i32 25, float %4524)  ; Rsqrt(value)
  %4526 = fmul fast float %4513, %4525
  %4527 = fmul fast float %4514, %4525
  %4528 = fmul fast float %4515, %4525
  br label %4529

; <label>:4529                                    ; preds = %4361, %4354
  %4530 = phi float [ %4360, %4354 ], [ %4367, %4361 ]
  %4531 = phi float [ %4359, %4354 ], [ %4365, %4361 ]
  %4532 = phi float [ %4358, %4354 ], [ %4363, %4361 ]
  %4533 = phi float [ %4357, %4354 ], [ %4366, %4361 ]
  %4534 = phi float [ %4356, %4354 ], [ %4364, %4361 ]
  %4535 = phi float [ %4355, %4354 ], [ %4362, %4361 ]
  %4536 = phi float [ %4248, %4354 ], [ %4504, %4361 ]
  %4537 = phi float [ %4249, %4354 ], [ %4505, %4361 ]
  %4538 = phi float [ %4250, %4354 ], [ %4506, %4361 ]
  %4539 = phi float [ %4212, %4354 ], [ %4526, %4361 ]
  %4540 = phi float [ %4213, %4354 ], [ %4527, %4361 ]
  %4541 = phi float [ %4214, %4354 ], [ %4528, %4361 ]
  %4542 = phi float [ %4263, %4354 ], [ %4413, %4361 ]
  %4543 = phi float [ %4264, %4354 ], [ %4414, %4361 ]
  %4544 = phi float [ %4265, %4354 ], [ %4415, %4361 ]
  %4545 = phi float [ %4251, %4354 ], [ %4520, %4361 ]
  %4546 = phi float [ %4224, %4354 ], [ %4523, %4361 ]
  %4547 = select i1 %206, float 0.000000e+00, float %4538
  %4548 = call float @dx.op.dot3.f32(i32 55, float %4539, float %4540, float %4541, float %4532, float %4531, float %4530)  ; Dot3(ax,ay,az,bx,by,bz)
  %4549 = call float @dx.op.unary.f32(i32 7, float %4548)  ; Saturate(value)
  %4550 = call float @dx.op.dot3.f32(i32 55, float %4535, float %4534, float %4533, float %4539, float %4540, float %4541)  ; Dot3(ax,ay,az,bx,by,bz)
  %4551 = fmul fast float %4550, 2.000000e+00
  %4552 = fmul fast float %4551, %4539
  %4553 = fmul fast float %4551, %4540
  %4554 = fmul fast float %4551, %4541
  %4555 = fsub fast float %4535, %4552
  %4556 = fsub fast float %4534, %4553
  %4557 = fsub fast float %4533, %4554
  %4558 = call float @dx.op.binary.f32(i32 36, float %4546, float 1.000000e+00)  ; FMin(a,b)
  %4559 = fsub fast float 1.000000e+00, %4546
  %4560 = bitcast float %4559 to i32
  %4561 = sub nsw i32 2129859010, %4560
  %4562 = fsub fast float 1.000000e+00, %53
  %4563 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %4564 = call float @dx.op.binary.f32(i32 35, float %4563, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4565 = fdiv fast float %4562, %4564
  %4566 = call float @dx.op.dot3.f32(i32 55, float %4539, float %4540, float %4541, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %4567 = call float @dx.op.unary.f32(i32 7, float %4566)  ; Saturate(value)
  %4568 = fmul fast float %4567, 5.000000e-01
  %4569 = fadd fast float %4568, 5.000000e-01
  %4570 = fmul fast float %4569, %53
  %4571 = call float @dx.op.dot3.f32(i32 55, float %4539, float %4540, float %4541, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4572 = call float @dx.op.unary.f32(i32 7, float %4571)  ; Saturate(value)
  %4573 = fmul fast float %4572, %4565
  %4574 = fadd fast float %4570, %4573
  %4575 = fsub fast float 5.000000e-01, %4568
  %4576 = fmul fast float %4575, %4542
  %4577 = fmul fast float %4575, %4543
  %4578 = fmul fast float %4575, %4544
  %4579 = fadd fast float %4574, %4576
  %4580 = fadd fast float %4574, %4577
  %4581 = fadd fast float %4574, %4578
  %4582 = call float @dx.op.dot3.f32(i32 55, float %4555, float %4556, float %4557, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %4583 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4584 = fmul fast float %4583, 5.000000e-01
  %4585 = fadd fast float %4584, 5.000000e-01
  %4586 = fmul fast float %4585, %53
  %4587 = call float @dx.op.dot3.f32(i32 55, float %4555, float %4556, float %4557, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4588 = call float @dx.op.unary.f32(i32 7, float %4587)  ; Saturate(value)
  %4589 = fmul fast float %4588, %4565
  %4590 = fadd fast float %4586, %4589
  %4591 = fsub fast float 5.000000e-01, %4584
  %4592 = fmul fast float %4591, %4542
  %4593 = fmul fast float %4591, %4543
  %4594 = fmul fast float %4591, %4544
  %4595 = fadd fast float %4590, %4592
  %4596 = fadd fast float %4590, %4593
  %4597 = fadd fast float %4590, %4594
  %4598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4599 = extractvalue %dx.types.CBufRet.f32 %4598, 0
  %4600 = call float @dx.op.binary.f32(i32 36, float %4542, float %4599)  ; FMin(a,b)
  %4601 = fsub fast float 1.000000e+00, %4558
  %4602 = fmul fast float %4600, %4601
  %4603 = fsub fast float 1.000000e+00, %4602
  %4604 = bitcast float %4603 to i32
  %4605 = sub nsw i32 2129859010, %4604
  %4606 = bitcast i32 %4605 to float
  %4607 = call float @dx.op.binary.f32(i32 36, float %4543, float %4599)  ; FMin(a,b)
  %4608 = fmul fast float %4607, %4601
  %4609 = fsub fast float 1.000000e+00, %4608
  %4610 = bitcast float %4609 to i32
  %4611 = sub nsw i32 2129859010, %4610
  %4612 = bitcast i32 %4611 to float
  %4613 = call float @dx.op.binary.f32(i32 36, float %4544, float %4599)  ; FMin(a,b)
  %4614 = fmul fast float %4613, %4601
  %4615 = fsub fast float 1.000000e+00, %4614
  %4616 = bitcast float %4615 to i32
  %4617 = sub nsw i32 2129859010, %4616
  %4618 = bitcast i32 %4617 to float
  %4619 = fmul fast float %4558, %54
  %4620 = fmul fast float %4619, %4579
  %4621 = fmul fast float %4620, %4606
  %4622 = fmul fast float %4558, %55
  %4623 = fmul fast float %4622, %4580
  %4624 = fmul fast float %4623, %4612
  %4625 = fmul fast float %4558, %56
  %4626 = fmul fast float %4625, %4581
  %4627 = fmul fast float %4626, %4618
  %4628 = call float @dx.op.binary.f32(i32 36, float %4536, float %4599)  ; FMin(a,b)
  %4629 = fmul fast float %4628, %4601
  %4630 = fsub fast float 1.000000e+00, %4629
  %4631 = bitcast float %4630 to i32
  %4632 = sub nsw i32 2129859010, %4631
  %4633 = bitcast i32 %4632 to float
  %4634 = call float @dx.op.binary.f32(i32 36, float %4537, float %4599)  ; FMin(a,b)
  %4635 = fmul fast float %4634, %4601
  %4636 = fsub fast float 1.000000e+00, %4635
  %4637 = bitcast float %4636 to i32
  %4638 = sub nsw i32 2129859010, %4637
  %4639 = bitcast i32 %4638 to float
  %4640 = call float @dx.op.binary.f32(i32 36, float %4547, float %4599)  ; FMin(a,b)
  %4641 = fmul fast float %4640, %4601
  %4642 = fsub fast float 1.000000e+00, %4641
  %4643 = bitcast float %4642 to i32
  %4644 = sub nsw i32 2129859010, %4643
  %4645 = bitcast i32 %4644 to float
  %4646 = fmul fast float %4619, %4595
  %4647 = fmul fast float %4646, %4633
  %4648 = fmul fast float %4622, %4596
  %4649 = fmul fast float %4648, %4639
  %4650 = fmul fast float %4625, %4597
  %4651 = fmul fast float %4650, %4645
  %4652 = call float @dx.op.dot3.f32(i32 55, float %4621, float %4624, float %4627, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4653 = select i1 %206, float 0.000000e+00, float %4621
  %4654 = select i1 %206, float %4652, float %4624
  %4655 = select i1 %206, float 0.000000e+00, float %4627
  %4656 = call float @dx.op.dot3.f32(i32 55, float %4647, float %4649, float %4651, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4657 = select i1 %206, float 0.000000e+00, float %4647
  %4658 = select i1 %206, float %4656, float %4649
  %4659 = select i1 %206, float 0.000000e+00, float %4651
  %4660 = fmul fast float %4549, 9.843750e-01
  %4661 = fmul fast float %4545, 9.843750e-01
  %4662 = fadd fast float %4660, 7.812500e-03
  %4663 = fadd fast float %4661, 7.812500e-03
  %4664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %4662, float %4663, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4665 = extractvalue %dx.types.ResRet.f32 %4664, 2
  %4666 = extractvalue %dx.types.ResRet.f32 %4664, 3
  %4667 = fmul fast float %4665, %4536
  %4668 = fmul fast float %4665, %4537
  %4669 = fmul fast float %4665, %4547
  %4670 = fadd fast float %4667, %4666
  %4671 = fadd fast float %4668, %4666
  %4672 = fadd fast float %4669, %4666
  %4673 = fcmp fast ogt float %4225, 0.000000e+00
  br i1 %4673, label %4674, label %4700

; <label>:4674                                    ; preds = %4529
  %4675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %4225, float %4549, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4676 = extractvalue %dx.types.ResRet.f32 %4675, 0
  %4677 = extractvalue %dx.types.ResRet.f32 %4675, 1
  %4678 = extractvalue %dx.types.ResRet.f32 %4675, 2
  %4679 = fadd fast float %4676, -5.000000e-01
  %4680 = fadd fast float %4677, -5.000000e-01
  %4681 = fadd fast float %4678, -5.000000e-01
  %4682 = fsub fast float 1.000000e+00, %4536
  %4683 = fsub fast float 1.000000e+00, %4537
  %4684 = fsub fast float 1.000000e+00, %4547
  %4685 = fmul fast float %4536, 4.000000e+00
  %4686 = fmul fast float %4685, %4682
  %4687 = fmul fast float %4686, %4679
  %4688 = fmul fast float %4537, 4.000000e+00
  %4689 = fmul fast float %4688, %4683
  %4690 = fmul fast float %4689, %4680
  %4691 = fmul fast float %4547, 4.000000e+00
  %4692 = fmul fast float %4691, %4684
  %4693 = fmul fast float %4692, %4681
  %4694 = fadd fast float %4687, %4670
  %4695 = fadd fast float %4690, %4671
  %4696 = fadd fast float %4693, %4672
  %4697 = call float @dx.op.unary.f32(i32 7, float %4694)  ; Saturate(value)
  %4698 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4699 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  br label %4700

; <label>:4700                                    ; preds = %4674, %4529
  %4701 = phi float [ %4697, %4674 ], [ %4670, %4529 ]
  %4702 = phi float [ %4698, %4674 ], [ %4671, %4529 ]
  %4703 = phi float [ %4699, %4674 ], [ %4672, %4529 ]
  %4704 = call float @dx.op.binary.f32(i32 35, float %4702, float %4703)  ; FMax(a,b)
  %4705 = call float @dx.op.binary.f32(i32 35, float %4701, float %4704)  ; FMax(a,b)
  %4706 = fsub fast float 1.000000e+00, %4705
  %4707 = fmul fast float %4706, %4653
  %4708 = fmul fast float %4706, %4654
  %4709 = fmul fast float %4706, %4655
  %4710 = call float @dx.op.dot3.f32(i32 55, float %4542, float %4543, float %4544, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4711 = fcmp fast ogt float %4710, 0x3E7FF19E20000000
  %4712 = fdiv fast float 1.000000e+00, %4710
  %4713 = select i1 %4711, float %4712, float 0.000000e+00
  %4714 = fmul fast float %4713, %4542
  %4715 = fmul fast float %4713, %4543
  %4716 = fmul fast float %4713, %4544
  %4717 = fadd fast float %4714, -1.000000e+00
  %4718 = fadd fast float %4715, -1.000000e+00
  %4719 = fadd fast float %4716, -1.000000e+00
  %4720 = fmul fast float %4717, 5.000000e-01
  %4721 = fmul fast float %4718, 5.000000e-01
  %4722 = fmul fast float %4719, 5.000000e-01
  %4723 = fadd fast float %4720, 1.000000e+00
  %4724 = fadd fast float %4721, 1.000000e+00
  %4725 = fadd fast float %4722, 1.000000e+00
  %4726 = fmul fast float %4701, %4657
  %4727 = fmul fast float %4702, %4658
  %4728 = fmul fast float %4703, %4659
  %4729 = fsub fast float 1.000000e+00, %4549
  %4730 = bitcast float %4729 to i32
  %4731 = sitofp i32 %4730 to float
  %4732 = fmul fast float %4731, 5.000000e+00
  %4733 = fadd fast float %4732, 0xC1EFBF8940000000
  %4734 = fptosi float %4733 to i32
  %4735 = bitcast i32 %4734 to float
  %4736 = fmul fast float %4735, %4226
  %4737 = fmul fast float %4653, %4736
  %4738 = fmul fast float %4737, %4706
  %4739 = fmul fast float %4738, %4723
  %4740 = fmul fast float %4654, %4736
  %4741 = fmul fast float %4740, %4706
  %4742 = fmul fast float %4741, %4724
  %4743 = fmul fast float %4655, %4736
  %4744 = fmul fast float %4743, %4706
  %4745 = fmul fast float %4744, %4725
  %4746 = fmul fast float %4707, %4222
  %4747 = fmul fast float %4708, %4222
  %4748 = fmul fast float %4709, %4222
  %4749 = fadd fast float %4726, %4218
  %4750 = fadd fast float %4749, %4739
  %4751 = fmul fast float %4750, %4222
  %4752 = fadd fast float %4727, %4219
  %4753 = fadd fast float %4752, %4742
  %4754 = fmul fast float %4753, %4222
  %4755 = fadd fast float %4728, %4220
  %4756 = fadd fast float %4755, %4745
  %4757 = fmul fast float %4756, %4222
  %4758 = bitcast i32 %4561 to float
  %4759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4760 = extractvalue %dx.types.CBufRet.f32 %4759, 3
  %4761 = fcmp fast oeq float %4760, 0.000000e+00
  br i1 %4761, label %5756, label %4762

; <label>:4762                                    ; preds = %4700
  %4763 = extractvalue %dx.types.CBufRet.f32 %4759, 0
  %4764 = extractvalue %dx.types.CBufRet.f32 %4759, 1
  %4765 = extractvalue %dx.types.CBufRet.f32 %4759, 2
  %4766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4767 = extractvalue %dx.types.CBufRet.f32 %4766, 0
  %4768 = extractvalue %dx.types.CBufRet.f32 %4766, 1
  %4769 = extractvalue %dx.types.CBufRet.f32 %4766, 2
  %4770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4771 = extractvalue %dx.types.CBufRet.f32 %4770, 0
  %4772 = extractvalue %dx.types.CBufRet.f32 %4770, 1
  %4773 = call float @dx.op.dot3.f32(i32 55, float %4767, float %4768, float %4769, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4774 = select i1 %206, float %4771, float %4767
  %4775 = select i1 %206, float %4773, float %4768
  %4776 = select i1 %206, float %4772, float %4769
  %4777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4778 = extractvalue %dx.types.CBufRet.f32 %4777, 2
  %4779 = fmul fast float %4778, %89
  %4780 = fmul fast float %4778, %90
  %4781 = fmul fast float %4778, %91
  %4782 = fadd fast float %4779, %145
  %4783 = fadd fast float %4780, %146
  %4784 = fadd fast float %4781, %147
  %4785 = fcmp fast olt float %4760, 0.000000e+00
  br i1 %4785, label %5410, label %4786

; <label>:4786                                    ; preds = %4762
  %4787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4788 = extractvalue %dx.types.CBufRet.f32 %4787, 0
  %4789 = extractvalue %dx.types.CBufRet.f32 %4787, 1
  %4790 = extractvalue %dx.types.CBufRet.f32 %4787, 2
  %4791 = extractvalue %dx.types.CBufRet.f32 %4787, 3
  %4792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4793 = extractvalue %dx.types.CBufRet.f32 %4792, 0
  %4794 = extractvalue %dx.types.CBufRet.f32 %4792, 1
  %4795 = extractvalue %dx.types.CBufRet.f32 %4792, 2
  %4796 = extractvalue %dx.types.CBufRet.f32 %4792, 3
  %4797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.f32 %4797, 0
  %4799 = extractvalue %dx.types.CBufRet.f32 %4797, 1
  %4800 = extractvalue %dx.types.CBufRet.f32 %4797, 2
  %4801 = extractvalue %dx.types.CBufRet.f32 %4797, 3
  %4802 = fmul fast float %4788, %4782
  %4803 = call float @dx.op.tertiary.f32(i32 46, float %4783, float %4789, float %4802)  ; FMad(a,b,c)
  %4804 = call float @dx.op.tertiary.f32(i32 46, float %4784, float %4790, float %4803)  ; FMad(a,b,c)
  %4805 = fadd fast float %4804, %4791
  %4806 = fmul fast float %4793, %4782
  %4807 = call float @dx.op.tertiary.f32(i32 46, float %4783, float %4794, float %4806)  ; FMad(a,b,c)
  %4808 = call float @dx.op.tertiary.f32(i32 46, float %4784, float %4795, float %4807)  ; FMad(a,b,c)
  %4809 = fadd fast float %4808, %4796
  %4810 = fmul fast float %4798, %4782
  %4811 = call float @dx.op.tertiary.f32(i32 46, float %4783, float %4799, float %4810)  ; FMad(a,b,c)
  %4812 = call float @dx.op.tertiary.f32(i32 46, float %4784, float %4800, float %4811)  ; FMad(a,b,c)
  %4813 = fadd fast float %4812, %4801
  %4814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4815 = extractvalue %dx.types.CBufRet.f32 %4814, 0
  %4816 = extractvalue %dx.types.CBufRet.f32 %4814, 1
  %4817 = extractvalue %dx.types.CBufRet.f32 %4814, 3
  %4818 = fmul fast float %4817, %4805
  %4819 = fmul fast float %4817, %4809
  %4820 = fadd fast float %4818, %4815
  %4821 = fadd fast float %4819, %4816
  %4822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4823 = extractvalue %dx.types.CBufRet.f32 %4822, 0
  %4824 = extractvalue %dx.types.CBufRet.f32 %4822, 1
  %4825 = extractvalue %dx.types.CBufRet.f32 %4822, 3
  %4826 = fmul fast float %4825, %4805
  %4827 = fmul fast float %4825, %4809
  %4828 = fadd fast float %4826, %4823
  %4829 = fadd fast float %4827, %4824
  %4830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.f32 %4830, 1
  %4832 = fsub fast float %4831, %4813
  %4833 = extractvalue %dx.types.CBufRet.f32 %4830, 2
  %4834 = fmul fast float %4832, %4833
  %4835 = fsub fast float 1.000000e+00, %4834
  %4836 = call float @dx.op.unary.f32(i32 7, float %4835)  ; Saturate(value)
  %4837 = extractvalue %dx.types.CBufRet.f32 %4822, 2
  %4838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4839 = extractvalue %dx.types.CBufRet.f32 %4838, 2
  %4840 = fadd fast float %4839, %4837
  %4841 = fcmp fast ogt float %4840, 0.000000e+00
  br i1 %4841, label %4842, label %4866

; <label>:4842                                    ; preds = %4786
  %4843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4844 = extractvalue %dx.types.CBufRet.f32 %4843, 0
  %4845 = extractvalue %dx.types.CBufRet.f32 %4843, 1
  %4846 = fsub fast float %4828, %4844
  %4847 = fsub fast float %4829, %4845
  %4848 = fcmp fast olt float %4846, 0.000000e+00
  %4849 = fcmp fast olt float %4847, 0.000000e+00
  %4850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4851 = extractvalue %dx.types.CBufRet.f32 %4850, 0
  %4852 = extractvalue %dx.types.CBufRet.f32 %4850, 1
  %4853 = extractvalue %dx.types.CBufRet.f32 %4850, 2
  %4854 = extractvalue %dx.types.CBufRet.f32 %4850, 3
  %4855 = select i1 %4848, float %4851, float %4853
  %4856 = select i1 %4849, float %4852, float %4854
  %4857 = fmul fast float %4855, %4846
  %4858 = fmul fast float %4856, %4847
  %4859 = call float @dx.op.unary.f32(i32 6, float %4857)  ; FAbs(value)
  %4860 = call float @dx.op.unary.f32(i32 6, float %4858)  ; FAbs(value)
  %4861 = extractvalue %dx.types.CBufRet.f32 %4777, 0
  %4862 = call float @dx.op.binary.f32(i32 35, float %4859, float %4860)  ; FMax(a,b)
  %4863 = fsub fast float %4861, %4862
  %4864 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  %4865 = fmul fast float %4864, %4836
  br label %4866

; <label>:4866                                    ; preds = %4842, %4786
  %4867 = phi float [ %4865, %4842 ], [ 0.000000e+00, %4786 ]
  %4868 = extractvalue %dx.types.CBufRet.f32 %4814, 2
  %4869 = extractvalue %dx.types.CBufRet.f32 %4838, 1
  %4870 = fadd fast float %4869, %4868
  %4871 = fcmp fast ogt float %4870, 0.000000e+00
  %4872 = extractvalue %dx.types.CBufRet.f32 %4777, 0
  br i1 %4871, label %4873, label %4896

; <label>:4873                                    ; preds = %4866
  %4874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4875 = extractvalue %dx.types.CBufRet.f32 %4874, 0
  %4876 = extractvalue %dx.types.CBufRet.f32 %4874, 1
  %4877 = fsub fast float %4820, %4875
  %4878 = fsub fast float %4821, %4876
  %4879 = fcmp fast olt float %4877, 0.000000e+00
  %4880 = fcmp fast olt float %4878, 0.000000e+00
  %4881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4882 = extractvalue %dx.types.CBufRet.f32 %4881, 0
  %4883 = extractvalue %dx.types.CBufRet.f32 %4881, 1
  %4884 = extractvalue %dx.types.CBufRet.f32 %4881, 2
  %4885 = extractvalue %dx.types.CBufRet.f32 %4881, 3
  %4886 = select i1 %4879, float %4882, float %4884
  %4887 = select i1 %4880, float %4883, float %4885
  %4888 = fmul fast float %4886, %4877
  %4889 = fmul fast float %4887, %4878
  %4890 = call float @dx.op.unary.f32(i32 6, float %4888)  ; FAbs(value)
  %4891 = call float @dx.op.unary.f32(i32 6, float %4889)  ; FAbs(value)
  %4892 = call float @dx.op.binary.f32(i32 35, float %4890, float %4891)  ; FMax(a,b)
  %4893 = fsub fast float %4872, %4892
  %4894 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4895 = fmul fast float %4894, %4836
  br label %4896

; <label>:4896                                    ; preds = %4873, %4866
  %4897 = phi float [ %4895, %4873 ], [ 0.000000e+00, %4866 ]
  %4898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4899 = extractvalue %dx.types.CBufRet.f32 %4898, 1
  %4900 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4902 = extractvalue %dx.types.CBufRet.f32 %4901, 0
  %4903 = extractvalue %dx.types.CBufRet.f32 %4901, 1
  %4904 = fsub fast float %4805, %4902
  %4905 = fsub fast float %4809, %4903
  %4906 = fcmp fast olt float %4904, 0.000000e+00
  %4907 = fcmp fast olt float %4905, 0.000000e+00
  %4908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4909 = extractvalue %dx.types.CBufRet.f32 %4908, 0
  %4910 = extractvalue %dx.types.CBufRet.f32 %4908, 1
  %4911 = extractvalue %dx.types.CBufRet.f32 %4908, 2
  %4912 = extractvalue %dx.types.CBufRet.f32 %4908, 3
  %4913 = select i1 %4906, float %4909, float %4911
  %4914 = select i1 %4907, float %4910, float %4912
  %4915 = fmul fast float %4913, %4904
  %4916 = fmul fast float %4914, %4905
  %4917 = call float @dx.op.unary.f32(i32 6, float %4915)  ; FAbs(value)
  %4918 = call float @dx.op.unary.f32(i32 6, float %4916)  ; FAbs(value)
  %4919 = call float @dx.op.binary.f32(i32 35, float %4917, float %4918)  ; FMax(a,b)
  %4920 = fsub fast float %4872, %4919
  %4921 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4922 = call float @dx.op.binary.f32(i32 36, float %4921, float %4900)  ; FMin(a,b)
  %4923 = fmul fast float %4922, %4836
  %4924 = fsub fast float %4897, %4923
  %4925 = fsub fast float %4867, %4897
  %4926 = fsub fast float %4925, %4923
  %4927 = call float @dx.op.binary.f32(i32 35, float %4897, float %4867)  ; FMax(a,b)
  %4928 = call float @dx.op.binary.f32(i32 35, float %4923, float %4927)  ; FMax(a,b)
  %4929 = fcmp fast olt float %4928, 1.000000e+00
  br i1 %4929, label %4930, label %5328, !dx.controlflow.hints !77

; <label>:4930                                    ; preds = %4896
  %4931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4932 = extractvalue %dx.types.CBufRet.f32 %4931, 0
  %4933 = fcmp fast une float %4932, 0.000000e+00
  br i1 %4933, label %4934, label %5328, !dx.controlflow.hints !78

; <label>:4934                                    ; preds = %4930
  %4935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4936 = extractvalue %dx.types.CBufRet.f32 %4935, 0
  %4937 = extractvalue %dx.types.CBufRet.f32 %4935, 1
  %4938 = extractvalue %dx.types.CBufRet.f32 %4935, 2
  %4939 = extractvalue %dx.types.CBufRet.f32 %4935, 3
  %4940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4941 = extractvalue %dx.types.CBufRet.f32 %4940, 0
  %4942 = extractvalue %dx.types.CBufRet.f32 %4940, 1
  %4943 = extractvalue %dx.types.CBufRet.f32 %4940, 2
  %4944 = extractvalue %dx.types.CBufRet.f32 %4940, 3
  %4945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4946 = extractvalue %dx.types.CBufRet.f32 %4945, 0
  %4947 = extractvalue %dx.types.CBufRet.f32 %4945, 1
  %4948 = extractvalue %dx.types.CBufRet.f32 %4945, 2
  %4949 = extractvalue %dx.types.CBufRet.f32 %4945, 3
  %4950 = fmul fast float %4936, %4782
  %4951 = call float @dx.op.tertiary.f32(i32 46, float %4783, float %4937, float %4950)  ; FMad(a,b,c)
  %4952 = call float @dx.op.tertiary.f32(i32 46, float %4784, float %4938, float %4951)  ; FMad(a,b,c)
  %4953 = fadd fast float %4952, %4939
  %4954 = fmul fast float %4941, %4782
  %4955 = call float @dx.op.tertiary.f32(i32 46, float %4783, float %4942, float %4954)  ; FMad(a,b,c)
  %4956 = call float @dx.op.tertiary.f32(i32 46, float %4784, float %4943, float %4955)  ; FMad(a,b,c)
  %4957 = fadd fast float %4956, %4944
  %4958 = fmul fast float %4946, %4782
  %4959 = call float @dx.op.tertiary.f32(i32 46, float %4783, float %4947, float %4958)  ; FMad(a,b,c)
  %4960 = call float @dx.op.tertiary.f32(i32 46, float %4784, float %4948, float %4959)  ; FMad(a,b,c)
  %4961 = fadd fast float %4960, %4949
  %4962 = fcmp fast oge float %4953, 1.000000e+00
  %4963 = fcmp fast oge float %4957, 1.000000e+00
  %4964 = or i1 %4962, %4963
  %4965 = fcmp fast olt float %4953, 0.000000e+00
  %4966 = fcmp fast olt float %4957, 0.000000e+00
  %4967 = or i1 %4965, %4966
  %4968 = or i1 %4964, %4967
  br i1 %4968, label %5328, label %4969, !dx.controlflow.hints !79

; <label>:4969                                    ; preds = %4934
  %4970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4971 = extractvalue %dx.types.CBufRet.f32 %4970, 0
  %4972 = extractvalue %dx.types.CBufRet.f32 %4970, 1
  %4973 = extractvalue %dx.types.CBufRet.f32 %4970, 2
  %4974 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4975 = extractvalue %dx.types.CBufRet.i32 %4974, 2
  %4976 = uitofp i32 %4975 to float
  %4977 = extractvalue %dx.types.CBufRet.i32 %4974, 3
  %4978 = uitofp i32 %4977 to float
  %4979 = extractvalue %dx.types.CBufRet.f32 %4970, 3
  %4980 = fmul fast float %4979, 2.000000e+00
  %4981 = fsub fast float %4953, %4971
  %4982 = fsub fast float %4957, %4972
  %4983 = fmul fast float %4980, %4981
  %4984 = fmul fast float %4980, %4982
  %4985 = fdiv fast float 1.000000e+00, %4765
  %4986 = fmul fast float %4984, %4985
  %4987 = call float @dx.op.unary.f32(i32 6, float %4986)  ; FAbs(value)
  %4988 = fmul fast float %4973, %4784
  %4989 = fmul fast float %4988, %4980
  %4990 = call float @dx.op.unary.f32(i32 6, float %4989)  ; FAbs(value)
  %4991 = call float @dx.op.unary.f32(i32 6, float %4983)  ; FAbs(value)
  %4992 = call float @dx.op.binary.f32(i32 35, float %4990, float %4987)  ; FMax(a,b)
  %4993 = call float @dx.op.binary.f32(i32 35, float %4991, float %4992)  ; FMax(a,b)
  %4994 = fmul fast float %4993, 2.000000e+00
  %4995 = call float @dx.op.unary.f32(i32 23, float %4994)  ; Log(value)
  %4996 = call float @dx.op.binary.f32(i32 35, float %4995, float %4976)  ; FMax(a,b)
  %4997 = call float @dx.op.unary.f32(i32 22, float %4996)  ; Frc(value)
  %4998 = fadd fast float %4997, 0xBFEA666660000000
  %4999 = fmul fast float %4998, 8.000000e+00
  %5000 = call float @dx.op.unary.f32(i32 7, float %4999)  ; Saturate(value)
  %5001 = call float @dx.op.unary.f32(i32 27, float %4996)  ; Round_ni(value)
  %5002 = fadd fast float %5001, %5000
  %5003 = call float @dx.op.binary.f32(i32 36, float %5002, float %4978)  ; FMin(a,b)
  %5004 = call float @dx.op.unary.f32(i32 27, float %5003)  ; Round_ni(value)
  %5005 = fsub fast float -0.000000e+00, %5004
  %5006 = call float @dx.op.unary.f32(i32 21, float %5005)  ; Exp(value)
  %5007 = fmul fast float %5006, %4980
  %5008 = fmul fast float %5007, %4953
  %5009 = fmul fast float %5007, %4957
  %5010 = fmul fast float %5008, 2.500000e-01
  %5011 = fmul fast float %5009, 2.500000e-01
  %5012 = fadd fast float %5010, 5.000000e-01
  %5013 = fadd fast float %5011, 5.000000e-01
  %5014 = fsub fast float %4978, %4976
  %5015 = fptoui float %5014 to i32
  %5016 = add i32 %5015, 320
  %5017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %5016)  ; CBufferLoadLegacy(handle,regIndex)
  %5018 = extractvalue %dx.types.CBufRet.f32 %5017, 0
  %5019 = extractvalue %dx.types.CBufRet.f32 %5017, 1
  %5020 = fcmp fast une float %5003, %4978
  %5021 = fsub fast float %4953, %5018
  %5022 = fsub fast float %4957, %5019
  %5023 = call float @dx.op.unary.f32(i32 6, float %5021)  ; FAbs(value)
  %5024 = call float @dx.op.unary.f32(i32 6, float %5022)  ; FAbs(value)
  %5025 = fmul fast float %5023, %5007
  %5026 = fmul fast float %5024, %5007
  %5027 = fcmp fast olt float %5025, 1.000000e+00
  %5028 = fcmp fast olt float %5026, 1.000000e+00
  %5029 = and i1 %5027, %5028
  %5030 = or i1 %5020, %5029
  br i1 %5030, label %5031, label %5328, !dx.controlflow.hints !80

; <label>:5031                                    ; preds = %4969
  %5032 = fmul fast float %5009, 5.000000e-01
  %5033 = fmul fast float %5008, 5.000000e-01
  %5034 = fadd fast float %5032, 5.000000e-01
  %5035 = fadd fast float %5033, 5.000000e-01
  %5036 = sitofp i32 %4975 to float
  %5037 = fsub fast float %5003, %5036
  %5038 = call float @dx.op.unary.f32(i32 27, float %5037)  ; Round_ni(value)
  %5039 = call float @dx.op.unary.f32(i32 22, float %5003)  ; Frc(value)
  %5040 = call float @dx.op.unary.f32(i32 22, float %5035)  ; Frc(value)
  %5041 = call float @dx.op.unary.f32(i32 22, float %5034)  ; Frc(value)
  %5042 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %5040, float %5041, float %5038, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5043 = extractvalue %dx.types.ResRet.f32 %5042, 0
  %5044 = extractvalue %dx.types.ResRet.f32 %5042, 1
  %5045 = extractvalue %dx.types.ResRet.f32 %5042, 2
  %5046 = extractvalue %dx.types.ResRet.f32 %5042, 3
  %5047 = fcmp fast ogt float %5039, 0.000000e+00
  br i1 %5047, label %5048, label %5069, !dx.controlflow.hints !81

; <label>:5048                                    ; preds = %5031
  %5049 = fadd fast float %5038, 1.000000e+00
  %5050 = call float @dx.op.unary.f32(i32 22, float %5012)  ; Frc(value)
  %5051 = call float @dx.op.unary.f32(i32 22, float %5013)  ; Frc(value)
  %5052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %5050, float %5051, float %5049, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5053 = extractvalue %dx.types.ResRet.f32 %5052, 0
  %5054 = extractvalue %dx.types.ResRet.f32 %5052, 1
  %5055 = extractvalue %dx.types.ResRet.f32 %5052, 2
  %5056 = extractvalue %dx.types.ResRet.f32 %5052, 3
  %5057 = fsub fast float %5053, %5043
  %5058 = fsub fast float %5054, %5044
  %5059 = fsub fast float %5055, %5045
  %5060 = fsub fast float %5056, %5046
  %5061 = fmul fast float %5057, %5039
  %5062 = fmul fast float %5058, %5039
  %5063 = fmul fast float %5059, %5039
  %5064 = fmul fast float %5060, %5039
  %5065 = fadd fast float %5061, %5043
  %5066 = fadd fast float %5062, %5044
  %5067 = fadd fast float %5063, %5045
  %5068 = fadd fast float %5064, %5046
  br label %5069

; <label>:5069                                    ; preds = %5048, %5031
  %5070 = phi float [ %5065, %5048 ], [ %5043, %5031 ]
  %5071 = phi float [ %5066, %5048 ], [ %5044, %5031 ]
  %5072 = phi float [ %5067, %5048 ], [ %5045, %5031 ]
  %5073 = phi float [ %5068, %5048 ], [ %5046, %5031 ]
  %5074 = fadd fast float %5070, -5.000000e-01
  %5075 = fadd fast float %5072, -5.000000e-01
  %5076 = fmul fast float %5074, 0xBFD5555560000000
  %5077 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5075, float %5076)  ; FMad(a,b,c)
  %5078 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5071, float 0.000000e+00)  ; FMad(a,b,c)
  %5079 = fadd fast float %5078, %5073
  %5080 = fmul fast float %5074, -7.500000e-01
  %5081 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5075, float %5080)  ; FMad(a,b,c)
  %5082 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5071, float 0.000000e+00)  ; FMad(a,b,c)
  %5083 = fadd fast float %5082, %5073
  %5084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.f32 %5084, 0
  %5086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5087 = extractvalue %dx.types.CBufRet.f32 %5086, 0
  %5088 = extractvalue %dx.types.CBufRet.f32 %5086, 1
  %5089 = extractvalue %dx.types.CBufRet.f32 %5086, 2
  %5090 = extractvalue %dx.types.CBufRet.f32 %5086, 3
  %5091 = fsub fast float %5087, %5077
  %5092 = fsub fast float %5088, %5079
  %5093 = fsub fast float %5089, %5081
  %5094 = fsub fast float %5090, %5083
  %5095 = fmul fast float %5091, %5085
  %5096 = fmul fast float %5092, %5085
  %5097 = fmul fast float %5093, %5085
  %5098 = fmul fast float %5094, %5085
  %5099 = fadd fast float %5095, %5077
  %5100 = fadd fast float %5096, %5079
  %5101 = fadd fast float %5097, %5081
  %5102 = fadd fast float %5098, %5083
  %5103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5104 = extractvalue %dx.types.ResRet.i32 %5103, 0
  %5105 = and i32 %5104, 536870911
  %5106 = uitofp i32 %5105 to float
  %5107 = fmul fast float %5106, %4953
  %5108 = fmul fast float %5106, %4957
  %5109 = fptoui float %5107 to i32
  %5110 = fptoui float %5108 to i32
  %5111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5112 = extractvalue %dx.types.ResRet.i32 %5111, 0
  %5113 = and i32 %5112, 31
  %5114 = lshr i32 %5109, %5113
  %5115 = lshr i32 %5110, %5113
  %5116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5117 = extractvalue %dx.types.ResRet.i32 %5116, 0
  %5118 = and i32 %5117, 31
  %5119 = shl i32 1, %5118
  %5120 = call i32 @dx.op.binary.i32(i32 40, i32 %5119, i32 4)  ; UMin(a,b)
  %5121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5122 = extractvalue %dx.types.ResRet.i32 %5121, 0
  %5123 = extractvalue %dx.types.ResRet.i32 %5121, 1
  %5124 = icmp eq i32 %5120, 0
  br i1 %5124, label %5166, label %5125

; <label>:5125                                    ; preds = %5069
  br label %5126

; <label>:5126                                    ; preds = %5154, %5125
  %5127 = phi i32 [ %5157, %5154 ], [ 0, %5125 ]
  %5128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5129 = extractvalue %dx.types.ResRet.i32 %5128, 0
  %5130 = lshr i32 %5129, 16
  %5131 = and i32 %5130, 31
  %5132 = shl i32 %5115, %5131
  %5133 = add i32 %5132, %5114
  %5134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5135 = extractvalue %dx.types.ResRet.i32 %5134, 0
  %5136 = and i32 %5135, 31
  %5137 = shl i32 %5133, %5136
  %5138 = add i32 %5137, %5127
  %5139 = shl i32 %5138, 2
  %5140 = add i32 %5139, 32
  %5141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5140, i32 undef)  ; BufferLoad(srv,index,wot)
  %5142 = extractvalue %dx.types.ResRet.i32 %5141, 0
  %5143 = icmp slt i32 %5142, 0
  %5144 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %5127
  %5145 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 %5127
  %5146 = bitcast float* %5144 to i32*
  %5147 = bitcast float* %5145 to i32*
  br i1 %5143, label %5148, label %5154

; <label>:5148                                    ; preds = %5126
  %5149 = and i32 %5142, 1073741823
  %5150 = add nuw nsw i32 %5149, 20
  %5151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5150, i32 undef)  ; BufferLoad(srv,index,wot)
  %5152 = extractvalue %dx.types.ResRet.i32 %5151, 0
  %5153 = extractvalue %dx.types.ResRet.i32 %5151, 1
  br label %5154

; <label>:5154                                    ; preds = %5148, %5126
  %5155 = phi i32 [ %5152, %5148 ], [ %5122, %5126 ]
  %5156 = phi i32 [ %5153, %5148 ], [ %5123, %5126 ]
  store i32 %5155, i32* %5146, align 4
  store i32 %5156, i32* %5147, align 4
  %5157 = add nuw i32 %5127, 1
  %5158 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.i32 %5158, 2
  %5160 = icmp eq i32 %5159, 0
  %5161 = icmp ugt i32 %5142, -1073741825
  %5162 = and i1 %5161, %5160
  %5163 = icmp ult i32 %5157, %5120
  %5164 = and i1 %5162, %5163
  br i1 %5164, label %5126, label %5165

; <label>:5165                                    ; preds = %5154
  br label %5166

; <label>:5166                                    ; preds = %5165, %5069
  %5167 = phi i32 [ 0, %5069 ], [ %5157, %5165 ]
  %5168 = extractvalue %dx.types.CBufRet.f32 %4931, 2
  %5169 = fptoui float %5168 to i32
  %5170 = icmp eq i32 %5169, 0
  br i1 %5170, label %5222, label %5171

; <label>:5171                                    ; preds = %5166
  br label %5172

; <label>:5172                                    ; preds = %5217, %5171
  %5173 = phi i32 [ %5218, %5217 ], [ %5167, %5171 ]
  %5174 = phi i32 [ %5219, %5217 ], [ 0, %5171 ]
  %5175 = lshr i32 %5174, 2
  %5176 = and i32 %5174, 3
  %5177 = add nuw nsw i32 %5175, 83
  %5178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 %5177)  ; CBufferLoadLegacy(handle,regIndex)
  %5179 = extractvalue %dx.types.CBufRet.i32 %5178, 0
  %5180 = extractvalue %dx.types.CBufRet.i32 %5178, 1
  %5181 = extractvalue %dx.types.CBufRet.i32 %5178, 2
  %5182 = extractvalue %dx.types.CBufRet.i32 %5178, 3
  %5183 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 0
  store i32 %5179, i32* %5183, align 4
  %5184 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 1
  store i32 %5180, i32* %5184, align 4
  %5185 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 2
  store i32 %5181, i32* %5185, align 4
  %5186 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 3
  store i32 %5182, i32* %5186, align 4
  %5187 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 %5176
  %5188 = load i32, i32* %5187, align 4, !tbaa !82, !noalias !86
  %5189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5190 = extractvalue %dx.types.ResRet.i32 %5189, 0
  %5191 = lshr i32 %5190, 16
  %5192 = and i32 %5191, 31
  %5193 = shl i32 %5115, %5192
  %5194 = add i32 %5193, %5114
  %5195 = shl i32 %5194, 2
  %5196 = add i32 %5195, %5188
  %5197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5196, i32 undef)  ; BufferLoad(srv,index,wot)
  %5198 = extractvalue %dx.types.ResRet.i32 %5197, 0
  %5199 = icmp eq i32 %5198, 0
  br i1 %5199, label %5217, label %5200

; <label>:5200                                    ; preds = %5172
  %5201 = icmp slt i32 %5198, 0
  %5202 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %5173
  %5203 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 %5173
  %5204 = bitcast float* %5202 to i32*
  %5205 = bitcast float* %5203 to i32*
  br i1 %5201, label %5206, label %5213

; <label>:5206                                    ; preds = %5200
  %5207 = and i32 %5198, 1073741823
  %5208 = add i32 %5188, 20
  %5209 = add i32 %5208, %5207
  %5210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5209, i32 undef)  ; BufferLoad(srv,index,wot)
  %5211 = extractvalue %dx.types.ResRet.i32 %5210, 0
  %5212 = extractvalue %dx.types.ResRet.i32 %5210, 1
  br label %5213

; <label>:5213                                    ; preds = %5206, %5200
  %5214 = phi i32 [ %5211, %5206 ], [ %5122, %5200 ]
  %5215 = phi i32 [ %5212, %5206 ], [ %5123, %5200 ]
  store i32 %5214, i32* %5204, align 4
  store i32 %5215, i32* %5205, align 4
  %5216 = add i32 %5173, 1
  br label %5217

; <label>:5217                                    ; preds = %5213, %5172
  %5218 = phi i32 [ %5173, %5172 ], [ %5216, %5213 ]
  %5219 = add nuw i32 %5174, 1
  %5220 = icmp eq i32 %5219, %5169
  br i1 %5220, label %5221, label %5172

; <label>:5221                                    ; preds = %5217
  br label %5222

; <label>:5222                                    ; preds = %5221, %5166
  %5223 = phi i32 [ %5167, %5166 ], [ %5218, %5221 ]
  %5224 = icmp eq i32 %5223, 1
  %5225 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 0
  %5226 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 0
  br i1 %5224, label %5227, label %5230

; <label>:5227                                    ; preds = %5222
  %5228 = load float, float* %5225, align 4
  %5229 = load float, float* %5226, align 4
  br label %5257

; <label>:5230                                    ; preds = %5222
  %5231 = load float, float* %5225, align 4
  %5232 = load float, float* %5226, align 4
  %5233 = fdiv fast float 1.000000e+00, %5232
  %5234 = fsub fast float %5231, %5233
  %5235 = icmp ugt i32 %5223, 1
  br i1 %5235, label %5236, label %5252

; <label>:5236                                    ; preds = %5230
  br label %5237

; <label>:5237                                    ; preds = %5237, %5236
  %5238 = phi float [ %5247, %5237 ], [ %5234, %5236 ]
  %5239 = phi float [ %5248, %5237 ], [ %5231, %5236 ]
  %5240 = phi i32 [ %5249, %5237 ], [ 1, %5236 ]
  %5241 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %5240
  %5242 = load float, float* %5241, align 4
  %5243 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 %5240
  %5244 = load float, float* %5243, align 4
  %5245 = fdiv fast float 1.000000e+00, %5244
  %5246 = fsub fast float %5242, %5245
  %5247 = call float @dx.op.binary.f32(i32 36, float %5238, float %5246)  ; FMin(a,b)
  %5248 = call float @dx.op.binary.f32(i32 35, float %5239, float %5242)  ; FMax(a,b)
  %5249 = add nuw i32 %5240, 1
  %5250 = icmp eq i32 %5249, %5223
  br i1 %5250, label %5251, label %5237

; <label>:5251                                    ; preds = %5237
  br label %5252

; <label>:5252                                    ; preds = %5251, %5230
  %5253 = phi float [ %5234, %5230 ], [ %5247, %5251 ]
  %5254 = phi float [ %5231, %5230 ], [ %5248, %5251 ]
  %5255 = fsub fast float %5254, %5253
  %5256 = fdiv fast float 1.000000e+00, %5255
  br label %5257

; <label>:5257                                    ; preds = %5252, %5227
  %5258 = phi float [ %5228, %5227 ], [ %5254, %5252 ]
  %5259 = phi float [ %5229, %5227 ], [ %5256, %5252 ]
  %5260 = fadd fast float %4961, %5258
  %5261 = fmul fast float %5260, %5259
  %5262 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5263 = fmul fast float %5262, 2.000000e+00
  %5264 = fsub fast float 1.000000e+00, %5263
  %5265 = fmul fast float %5099, %5099
  %5266 = fsub fast float %5100, %5265
  %5267 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5266)  ; FMax(a,b)
  %5268 = fdiv fast float 1.000000e+00, %5267
  %5269 = fmul fast float %5100, %5099
  %5270 = fsub fast float %5101, %5269
  %5271 = fsub fast float %5264, %5099
  %5272 = fmul fast float %5264, %5264
  %5273 = fsub fast float %5272, %5100
  %5274 = fmul fast float %5268, %5270
  %5275 = fmul fast float %5274, %5271
  %5276 = fsub fast float %5273, %5275
  %5277 = fmul fast float %5100, %5100
  %5278 = fsub fast float %5102, %5277
  %5279 = fmul fast float %5270, %5270
  %5280 = fmul fast float %5279, %5268
  %5281 = fsub fast float %5278, %5280
  %5282 = fdiv fast float %5276, %5281
  %5283 = fmul fast float %5282, %5270
  %5284 = fsub fast float %5271, %5283
  %5285 = fmul fast float %5284, %5268
  %5286 = fmul fast float %5285, %5099
  %5287 = fsub fast float 1.000000e+00, %5286
  %5288 = fmul fast float %5282, %5100
  %5289 = fsub fast float %5287, %5288
  %5290 = fmul fast float %5285, %5285
  %5291 = fmul fast float %5282, 4.000000e+00
  %5292 = fmul fast float %5291, %5289
  %5293 = fsub fast float %5290, %5292
  %5294 = call float @dx.op.unary.f32(i32 24, float %5293)  ; Sqrt(value)
  %5295 = fcmp fast oge float %5285, 0.000000e+00
  %5296 = fsub fast float -0.000000e+00, %5294
  %5297 = select i1 %5295, float %5296, float %5294
  %5298 = fsub fast float %5297, %5285
  %5299 = fdiv fast float %5298, %5282
  %5300 = fdiv fast float %5289, %5298
  %5301 = fmul fast float %5299, 5.000000e-01
  %5302 = fmul fast float %5300, 2.000000e+00
  %5303 = select i1 %5295, float %5301, float %5302
  %5304 = select i1 %5295, float %5302, float %5301
  %5305 = call float @dx.op.binary.f32(i32 35, float %5303, float %5304)  ; FMax(a,b)
  %5306 = call float @dx.op.binary.f32(i32 36, float %5303, float %5304)  ; FMin(a,b)
  %5307 = fcmp fast ogt float %5264, %5305
  %5308 = fsub fast float %5264, %5306
  %5309 = fsub fast float %5264, %5305
  %5310 = fsub fast float %5305, %5306
  %5311 = select i1 %5307, float %5309, float %5310
  %5312 = fmul float %5308, %5311
  %5313 = select i1 %5307, float %5306, float %5264
  %5314 = fcmp fast ogt float %5264, %5306
  %5315 = fmul fast float %5313, %5305
  %5316 = fadd fast float %5313, %5305
  %5317 = fmul fast float %5316, %5099
  %5318 = fadd fast float %5315, %5100
  %5319 = fsub fast float %5318, %5317
  %5320 = fdiv fast float %5319, %5312
  %5321 = select i1 %5314, float %5320, float 0.000000e+00
  %5322 = fsub fast float 1.000000e+00, %5321
  %5323 = select i1 %5307, float %5322, float %5321
  %5324 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5325 = extractvalue %dx.types.CBufRet.f32 %5084, 3
  %5326 = fmul fast float %5325, %5324
  %5327 = fsub fast float 1.000000e+00, %5326
  br label %5328

; <label>:5328                                    ; preds = %5257, %4969, %4934, %4930, %4896
  %5329 = phi float [ 1.000000e+00, %4896 ], [ %5327, %5257 ], [ 1.000000e+00, %4934 ], [ 1.000000e+00, %4969 ], [ 1.000000e+00, %4930 ]
  %5330 = fcmp fast ogt float %4926, 0.000000e+00
  br i1 %5330, label %5331, label %5337, !dx.controlflow.hints !95

; <label>:5331                                    ; preds = %5328
  %5332 = fadd fast float %4839, %4813
  %5333 = call float @dx.op.binary.f32(i32 35, float %5332, float 0.000000e+00)  ; FMax(a,b)
  %5334 = fadd fast float %5333, 0x3F10000000000000
  %5335 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %37, float %4828, float %4829, float undef, float undef, i32 0, i32 0, i32 undef, float %5334)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5336 = extractvalue %dx.types.ResRet.f32 %5335, 0
  br label %5337

; <label>:5337                                    ; preds = %5331, %5328
  %5338 = phi float [ %5336, %5331 ], [ 1.000000e+00, %5328 ]
  %5339 = fcmp fast ogt float %4924, 0.000000e+00
  br i1 %5339, label %5340, label %5346, !dx.controlflow.hints !96

; <label>:5340                                    ; preds = %5337
  %5341 = fadd fast float %4869, %4813
  %5342 = call float @dx.op.binary.f32(i32 35, float %5341, float 0.000000e+00)  ; FMax(a,b)
  %5343 = fadd fast float %5342, 0x3F10000000000000
  %5344 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %37, float %4820, float %4821, float undef, float undef, i32 0, i32 0, i32 undef, float %5343)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5345 = extractvalue %dx.types.ResRet.f32 %5344, 0
  br label %5346

; <label>:5346                                    ; preds = %5340, %5337
  %5347 = phi float [ %5345, %5340 ], [ 1.000000e+00, %5337 ]
  %5348 = fcmp fast ogt float %4923, 0.000000e+00
  br i1 %5348, label %5349, label %5356, !dx.controlflow.hints !97

; <label>:5349                                    ; preds = %5346
  %5350 = extractvalue %dx.types.CBufRet.f32 %4838, 0
  %5351 = fadd fast float %5350, %4813
  %5352 = call float @dx.op.binary.f32(i32 35, float %5351, float 0.000000e+00)  ; FMax(a,b)
  %5353 = fadd fast float %5352, 0x3F10000000000000
  %5354 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %37, float %4805, float %4809, float undef, float undef, i32 0, i32 0, i32 undef, float %5353)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5355 = extractvalue %dx.types.ResRet.f32 %5354, 0
  br label %5356

; <label>:5356                                    ; preds = %5349, %5346
  %5357 = phi float [ %5355, %5349 ], [ 1.000000e+00, %5346 ]
  %5358 = fsub fast float %5338, %5329
  %5359 = fmul fast float %5358, %4867
  %5360 = fadd fast float %5359, %5329
  %5361 = fsub fast float %5347, %5360
  %5362 = fmul fast float %5361, %4897
  %5363 = fadd fast float %5362, %5360
  %5364 = fsub fast float %5357, %5363
  %5365 = fmul fast float %5364, %4923
  %5366 = fadd fast float %5365, %5363
  %5367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5368 = extractvalue %dx.types.CBufRet.f32 %5367, 2
  %5369 = fcmp fast ogt float %5368, 0.000000e+00
  br i1 %5369, label %5370, label %5410, !dx.controlflow.hints !98

; <label>:5370                                    ; preds = %5356
  %5371 = fcmp fast ugt float %5368, 0.000000e+00
  br i1 %5371, label %5372, label %5407

; <label>:5372                                    ; preds = %5370
  %5373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5374 = extractvalue %dx.types.CBufRet.f32 %5373, 0
  %5375 = extractvalue %dx.types.CBufRet.f32 %5373, 1
  %5376 = extractvalue %dx.types.CBufRet.f32 %5373, 2
  %5377 = extractvalue %dx.types.CBufRet.f32 %5373, 3
  %5378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5379 = extractvalue %dx.types.CBufRet.f32 %5378, 0
  %5380 = extractvalue %dx.types.CBufRet.f32 %5378, 1
  %5381 = extractvalue %dx.types.CBufRet.f32 %5378, 2
  %5382 = extractvalue %dx.types.CBufRet.f32 %5378, 3
  %5383 = extractvalue %dx.types.CBufRet.f32 %5367, 0
  %5384 = extractvalue %dx.types.CBufRet.f32 %5367, 1
  %5385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5386 = extractvalue %dx.types.CBufRet.f32 %5385, 0
  %5387 = extractvalue %dx.types.CBufRet.f32 %5385, 1
  %5388 = extractvalue %dx.types.CBufRet.f32 %5385, 2
  %5389 = fadd fast float %5386, %4782
  %5390 = fadd fast float %5387, %4783
  %5391 = fadd fast float %5388, %4784
  %5392 = fmul fast float %5389, %5374
  %5393 = call float @dx.op.tertiary.f32(i32 46, float %5375, float %5390, float %5392)  ; FMad(a,b,c)
  %5394 = call float @dx.op.tertiary.f32(i32 46, float %5376, float %5391, float %5393)  ; FMad(a,b,c)
  %5395 = fadd fast float %5394, %5377
  %5396 = fmul fast float %5389, %5379
  %5397 = call float @dx.op.tertiary.f32(i32 46, float %5380, float %5390, float %5396)  ; FMad(a,b,c)
  %5398 = call float @dx.op.tertiary.f32(i32 46, float %5381, float %5391, float %5397)  ; FMad(a,b,c)
  %5399 = fadd fast float %5398, %5382
  %5400 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %32, float %5395, float %5399, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5401 = extractvalue %dx.types.ResRet.f32 %5400, 0
  %5402 = fmul fast float %5401, %5384
  %5403 = fadd fast float %5402, %5383
  %5404 = call float @dx.op.unary.f32(i32 7, float %5403)  ; Saturate(value)
  %5405 = fmul fast float %5404, %5368
  %5406 = fsub fast float 1.000000e+00, %5405
  br label %5407

; <label>:5407                                    ; preds = %5372, %5370
  %5408 = phi float [ %5406, %5372 ], [ 1.000000e+00, %5370 ]
  %5409 = fmul fast float %5408, %5366
  br label %5410

; <label>:5410                                    ; preds = %5407, %5356, %4762
  %5411 = phi float [ 1.000000e+00, %4762 ], [ %5409, %5407 ], [ %5366, %5356 ]
  %5412 = call float @dx.op.binary.f32(i32 36, float %5411, float %5411)  ; FMin(a,b)
  %5413 = call float @dx.op.binary.f32(i32 36, float %5411, float %5412)  ; FMin(a,b)
  %5414 = fcmp fast ogt float %5413, 0.000000e+00
  br i1 %5414, label %5415, label %5576, !dx.controlflow.hints !99

; <label>:5415                                    ; preds = %5410
  %5416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5417 = extractvalue %dx.types.CBufRet.f32 %5416, 0
  %5418 = extractvalue %dx.types.CBufRet.f32 %5416, 1
  %5419 = extractvalue %dx.types.CBufRet.f32 %5416, 2
  %5420 = extractvalue %dx.types.CBufRet.f32 %5416, 3
  %5421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5422 = extractvalue %dx.types.CBufRet.f32 %5421, 0
  %5423 = extractvalue %dx.types.CBufRet.f32 %5421, 1
  %5424 = extractvalue %dx.types.CBufRet.f32 %5421, 2
  %5425 = extractvalue %dx.types.CBufRet.f32 %5421, 3
  %5426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5427 = extractvalue %dx.types.CBufRet.f32 %5426, 0
  %5428 = extractvalue %dx.types.CBufRet.f32 %5426, 1
  %5429 = extractvalue %dx.types.CBufRet.f32 %5426, 2
  %5430 = extractvalue %dx.types.CBufRet.f32 %5426, 3
  %5431 = fmul fast float %5417, %4782
  %5432 = call float @dx.op.tertiary.f32(i32 46, float %4783, float %5418, float %5431)  ; FMad(a,b,c)
  %5433 = call float @dx.op.tertiary.f32(i32 46, float %4784, float %5419, float %5432)  ; FMad(a,b,c)
  %5434 = fadd fast float %5433, %5420
  %5435 = fmul fast float %5422, %4782
  %5436 = call float @dx.op.tertiary.f32(i32 46, float %4783, float %5423, float %5435)  ; FMad(a,b,c)
  %5437 = call float @dx.op.tertiary.f32(i32 46, float %4784, float %5424, float %5436)  ; FMad(a,b,c)
  %5438 = fadd fast float %5437, %5425
  %5439 = fmul fast float %5427, %4782
  %5440 = call float @dx.op.tertiary.f32(i32 46, float %4783, float %5428, float %5439)  ; FMad(a,b,c)
  %5441 = call float @dx.op.tertiary.f32(i32 46, float %4784, float %5429, float %5440)  ; FMad(a,b,c)
  %5442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5443 = extractvalue %dx.types.CBufRet.f32 %5442, 0
  %5444 = extractvalue %dx.types.CBufRet.f32 %5442, 1
  %5445 = extractvalue %dx.types.CBufRet.f32 %5442, 3
  %5446 = fmul fast float %5445, %5434
  %5447 = fmul fast float %5445, %5438
  %5448 = fadd fast float %5446, %5443
  %5449 = fadd fast float %5447, %5444
  %5450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5451 = extractvalue %dx.types.CBufRet.f32 %5450, 0
  %5452 = extractvalue %dx.types.CBufRet.f32 %5450, 1
  %5453 = fsub fast float %5448, %5451
  %5454 = fsub fast float %5449, %5452
  %5455 = fcmp fast olt float %5453, 0.000000e+00
  %5456 = fcmp fast olt float %5454, 0.000000e+00
  %5457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5458 = extractvalue %dx.types.CBufRet.f32 %5457, 0
  %5459 = extractvalue %dx.types.CBufRet.f32 %5457, 1
  %5460 = extractvalue %dx.types.CBufRet.f32 %5457, 2
  %5461 = extractvalue %dx.types.CBufRet.f32 %5457, 3
  %5462 = select i1 %5455, float %5458, float %5460
  %5463 = select i1 %5456, float %5459, float %5461
  %5464 = fmul fast float %5462, %5453
  %5465 = fmul fast float %5463, %5454
  %5466 = call float @dx.op.unary.f32(i32 6, float %5464)  ; FAbs(value)
  %5467 = call float @dx.op.unary.f32(i32 6, float %5465)  ; FAbs(value)
  %5468 = extractvalue %dx.types.CBufRet.f32 %4777, 0
  %5469 = call float @dx.op.binary.f32(i32 35, float %5466, float %5467)  ; FMax(a,b)
  %5470 = fsub fast float %5468, %5469
  %5471 = call float @dx.op.unary.f32(i32 7, float %5470)  ; Saturate(value)
  %5472 = fcmp fast ogt float %5471, 0.000000e+00
  br i1 %5472, label %5473, label %5514, !dx.controlflow.hints !100

; <label>:5473                                    ; preds = %5415
  %5474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %35, float %5448, float %5449, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5475 = extractvalue %dx.types.ResRet.f32 %5474, 1
  %5476 = fcmp fast ogt float %5475, 0.000000e+00
  br i1 %5476, label %5477, label %5509

; <label>:5477                                    ; preds = %5473
  %5478 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %35, float %5448, float %5449, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5479 = extractvalue %dx.types.ResRet.f32 %5478, 0
  %5480 = extractvalue %dx.types.ResRet.f32 %5478, 1
  %5481 = extractvalue %dx.types.ResRet.f32 %5478, 2
  %5482 = extractvalue %dx.types.ResRet.f32 %5478, 3
  %5483 = fsub fast float 1.000000e+00, %5430
  %5484 = fsub fast float %5483, %5441
  %5485 = fmul fast float %5484, 0x400921FB60000000
  %5486 = fadd fast float %5485, 0x3FF921FB60000000
  %5487 = call float @dx.op.unary.f32(i32 13, float %5486)  ; Sin(value)
  %5488 = fadd fast float %5487, -1.000000e+00
  %5489 = fmul fast float %5488, 0x3FD45F3060000000
  %5490 = fmul fast float %5484, 0x401921FB60000000
  %5491 = fadd fast float %5490, 0x400921FB60000000
  %5492 = call float @dx.op.unary.f32(i32 13, float %5491)  ; Sin(value)
  %5493 = fadd fast float %5492, 0x3E7777A5C0000000
  %5494 = fmul fast float %5493, 0x3FC45F3060000000
  %5495 = fmul fast float %5484, 0x4022D97C80000000
  %5496 = fadd fast float %5495, 0x4012D97C80000000
  %5497 = call float @dx.op.unary.f32(i32 13, float %5496)  ; Sin(value)
  %5498 = fadd fast float %5497, 1.000000e+00
  %5499 = fmul fast float %5498, 0x3FBB2995E0000000
  %5500 = fmul fast float %5484, 0x402921FB60000000
  %5501 = fadd fast float %5500, 0x401921FB60000000
  %5502 = call float @dx.op.unary.f32(i32 13, float %5501)  ; Sin(value)
  %5503 = fadd fast float %5502, 0xBE8777A5C0000000
  %5504 = fmul fast float %5503, 0x3FB45F3060000000
  %5505 = call float @dx.op.dot4.f32(i32 56, float %5479, float %5480, float %5481, float %5482, float %5489, float %5494, float %5499, float %5504)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5506 = fmul fast float %5505, 0xBFF7154760000000
  %5507 = call float @dx.op.unary.f32(i32 21, float %5506)  ; Exp(value)
  %5508 = call float @dx.op.unary.f32(i32 7, float %5507)  ; Saturate(value)
  br label %5509

; <label>:5509                                    ; preds = %5477, %5473
  %5510 = phi float [ %5508, %5477 ], [ 1.000000e+00, %5473 ]
  %5511 = fadd fast float %5510, -1.000000e+00
  %5512 = fmul fast float %5511, %5471
  %5513 = fadd fast float %5512, 1.000000e+00
  br label %5514

; <label>:5514                                    ; preds = %5509, %5415
  %5515 = phi float [ %5513, %5509 ], [ 1.000000e+00, %5415 ]
  %5516 = fmul fast float %5515, %5411
  %5517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5518 = extractvalue %dx.types.CBufRet.f32 %5517, 0
  %5519 = extractvalue %dx.types.CBufRet.f32 %5517, 1
  %5520 = extractvalue %dx.types.CBufRet.f32 %5517, 2
  %5521 = fadd fast float %5518, %145
  %5522 = fadd fast float %5519, %146
  %5523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5524 = extractvalue %dx.types.CBufRet.f32 %5523, 1
  %5525 = fsub fast float -0.000000e+00, %5521
  %5526 = fsub fast float -0.000000e+00, %5522
  %5527 = fsub fast float -0.000000e+00, %147
  %5528 = fsub fast float %5527, %5520
  %5529 = fadd fast float %5528, %5524
  %5530 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5525, float %5526, float %5529)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4763, float %4764, float %4765)  ; Dot3(ax,ay,az,bx,by,bz)
  %5532 = fdiv fast float 1.000000e+00, %5531
  %5533 = fmul fast float %5532, %5530
  %5534 = fmul fast float %4763, %5533
  %5535 = fmul fast float %4764, %5533
  %5536 = fadd fast float %5534, %5521
  %5537 = fadd fast float %5535, %5522
  %5538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5539 = extractvalue %dx.types.CBufRet.f32 %5538, 0
  %5540 = extractvalue %dx.types.CBufRet.f32 %5538, 1
  %5541 = fsub fast float %5536, %5539
  %5542 = fsub fast float %5537, %5540
  %5543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5544 = extractvalue %dx.types.CBufRet.f32 %5543, 2
  %5545 = extractvalue %dx.types.CBufRet.f32 %5543, 3
  %5546 = fmul fast float %5541, %5544
  %5547 = fmul fast float %5542, %5545
  %5548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5549 = extractvalue %dx.types.CBufRet.i32 %5548, 3
  %5550 = icmp eq i32 %5549, 0
  br i1 %5550, label %5556, label %5551

; <label>:5551                                    ; preds = %5514
  %5552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %5546, float %5547, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5553 = extractvalue %dx.types.ResRet.f32 %5552, 0
  %5554 = extractvalue %dx.types.ResRet.f32 %5552, 1
  %5555 = extractvalue %dx.types.ResRet.f32 %5552, 2
  br label %5561

; <label>:5556                                    ; preds = %5514
  %5557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %5546, float %5547, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5558 = extractvalue %dx.types.ResRet.f32 %5557, 0
  %5559 = extractvalue %dx.types.ResRet.f32 %5557, 1
  %5560 = extractvalue %dx.types.ResRet.f32 %5557, 2
  br label %5561

; <label>:5561                                    ; preds = %5556, %5551
  %5562 = phi float [ %5553, %5551 ], [ %5558, %5556 ]
  %5563 = phi float [ %5554, %5551 ], [ %5559, %5556 ]
  %5564 = phi float [ %5555, %5551 ], [ %5560, %5556 ]
  %5565 = extractvalue %dx.types.CBufRet.f32 %5523, 2
  %5566 = fmul fast float %5565, %5562
  %5567 = extractvalue %dx.types.CBufRet.f32 %5523, 0
  %5568 = fsub fast float %5533, %5567
  %5569 = fsub fast float %5568, %5566
  %5570 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5569)  ; FMax(a,b)
  %5571 = fmul fast float %5570, %5563
  %5572 = call float @dx.op.binary.f32(i32 36, float %5564, float %5571)  ; FMin(a,b)
  %5573 = fmul fast float %5572, 0xBFF7154760000000
  %5574 = call float @dx.op.unary.f32(i32 21, float %5573)  ; Exp(value)
  %5575 = fmul fast float %5516, %5574
  br label %5576

; <label>:5576                                    ; preds = %5561, %5410
  %5577 = phi float [ %5575, %5561 ], [ %5411, %5410 ]
  %5578 = call float @dx.op.binary.f32(i32 36, float %5577, float %5577)  ; FMin(a,b)
  %5579 = call float @dx.op.binary.f32(i32 36, float %5577, float %5578)  ; FMin(a,b)
  %5580 = fcmp fast ogt float %5579, 0.000000e+00
  br i1 %5580, label %5581, label %5756, !dx.controlflow.hints !101

; <label>:5581                                    ; preds = %5576
  %5582 = fmul fast float %5577, %4774
  %5583 = fmul fast float %5577, %4775
  %5584 = fmul fast float %5577, %4776
  %5585 = fsub fast float %4763, %4535
  %5586 = fsub fast float %4764, %4534
  %5587 = fsub fast float %4765, %4533
  %5588 = call float @dx.op.dot3.f32(i32 55, float %5585, float %5586, float %5587, float %5585, float %5586, float %5587)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = call float @dx.op.unary.f32(i32 25, float %5588)  ; Rsqrt(value)
  %5590 = fmul fast float %5589, %5585
  %5591 = fmul fast float %5589, %5586
  %5592 = fmul fast float %5589, %5587
  %5593 = call float @dx.op.dot3.f32(i32 55, float %4763, float %4764, float %4765, float %4539, float %4540, float %4541)  ; Dot3(ax,ay,az,bx,by,bz)
  %5594 = call float @dx.op.dot3.f32(i32 55, float %4532, float %4531, float %4530, float %5590, float %5591, float %5592)  ; Dot3(ax,ay,az,bx,by,bz)
  %5595 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5596 = fmul fast float %5595, %5595
  %5597 = fmul fast float %5596, %4758
  %5598 = call float @dx.op.unary.f32(i32 7, float %5597)  ; Saturate(value)
  %5599 = fmul fast float %5598, %5595
  %5600 = call float @dx.op.dot3.f32(i32 55, float %4539, float %4540, float %4541, float %5590, float %5591, float %5592)  ; Dot3(ax,ay,az,bx,by,bz)
  %5601 = fmul fast float %5600, %5600
  %5602 = call float @dx.op.unary.f32(i32 6, float %5593)  ; FAbs(value)
  %5603 = fsub fast float 1.000000e+00, %4545
  %5604 = call float @dx.op.binary.f32(i32 35, float %5603, float 0x3F847AE140000000)  ; FMax(a,b)
  %5605 = fmul fast float %5604, %5604
  %5606 = fmul fast float %5605, %5605
  %5607 = fsub fast float 1.000000e+00, %5606
  %5608 = fmul fast float %4549, %4549
  %5609 = fmul fast float %5608, %5607
  %5610 = fadd fast float %5609, %5606
  %5611 = bitcast float %5610 to i32
  %5612 = ashr i32 %5611, 1
  %5613 = add nsw i32 %5612, 532487669
  %5614 = bitcast i32 %5613 to float
  %5615 = fadd fast float %5614, %4549
  %5616 = fmul fast float %5606, %5601
  %5617 = fsub fast float 1.000000e+00, %5601
  %5618 = fadd fast float %5617, %5616
  %5619 = fmul fast float %5602, %5602
  %5620 = fmul fast float %5619, %5607
  %5621 = fadd fast float %5620, %5606
  %5622 = bitcast float %5621 to i32
  %5623 = ashr i32 %5622, 1
  %5624 = add nsw i32 %5623, 532487669
  %5625 = bitcast i32 %5624 to float
  %5626 = fadd fast float %5625, %5602
  %5627 = fmul fast float %5618, %5618
  %5628 = fmul fast float %5627, %5615
  %5629 = fmul fast float %5628, %5626
  %5630 = fdiv fast float 0x3FF0A00000000000, %5629
  %5631 = fmul fast float %5630, %5606
  %5632 = call float @dx.op.unary.f32(i32 6, float %5594)  ; FAbs(value)
  %5633 = fsub fast float 1.000000e+00, %5632
  %5634 = bitcast float %5633 to i32
  %5635 = sitofp i32 %5634 to float
  %5636 = fmul fast float %5635, 5.000000e+00
  %5637 = fadd fast float %5636, 0xC1EFBF8940000000
  %5638 = fptosi float %5637 to i32
  %5639 = bitcast i32 %5638 to float
  %5640 = fsub fast float 1.000000e+00, %4536
  %5641 = fsub fast float 1.000000e+00, %4537
  %5642 = fsub fast float 1.000000e+00, %4547
  %5643 = fmul fast float %5639, %5640
  %5644 = fmul fast float %5639, %5641
  %5645 = fmul fast float %5639, %5642
  %5646 = fadd fast float %5643, %4536
  %5647 = fadd fast float %5644, %4537
  %5648 = fadd fast float %5645, %4547
  br i1 %4673, label %5649, label %5672

; <label>:5649                                    ; preds = %5581
  %5650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %4225, float %5632, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5651 = extractvalue %dx.types.ResRet.f32 %5650, 0
  %5652 = extractvalue %dx.types.ResRet.f32 %5650, 1
  %5653 = extractvalue %dx.types.ResRet.f32 %5650, 2
  %5654 = fadd fast float %5651, -5.000000e-01
  %5655 = fadd fast float %5652, -5.000000e-01
  %5656 = fadd fast float %5653, -5.000000e-01
  %5657 = fmul fast float %4536, 4.000000e+00
  %5658 = fmul fast float %5657, %5640
  %5659 = fmul fast float %5658, %5654
  %5660 = fmul fast float %4537, 4.000000e+00
  %5661 = fmul fast float %5660, %5641
  %5662 = fmul fast float %5661, %5655
  %5663 = fmul fast float %4547, 4.000000e+00
  %5664 = fmul fast float %5663, %5642
  %5665 = fmul fast float %5664, %5656
  %5666 = fadd fast float %5659, %5646
  %5667 = fadd fast float %5662, %5647
  %5668 = fadd fast float %5665, %5648
  %5669 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5670 = call float @dx.op.unary.f32(i32 7, float %5667)  ; Saturate(value)
  %5671 = call float @dx.op.unary.f32(i32 7, float %5668)  ; Saturate(value)
  br label %5672

; <label>:5672                                    ; preds = %5649, %5581
  %5673 = phi float [ %5669, %5649 ], [ %5646, %5581 ]
  %5674 = phi float [ %5670, %5649 ], [ %5647, %5581 ]
  %5675 = phi float [ %5671, %5649 ], [ %5648, %5581 ]
  %5676 = fmul fast float %5593, 9.843750e-01
  %5677 = fadd fast float %5676, 7.812500e-03
  %5678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %5677, float %4663, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5679 = extractvalue %dx.types.ResRet.f32 %5678, 2
  %5680 = extractvalue %dx.types.ResRet.f32 %5678, 3
  %5681 = fmul fast float %5679, %4536
  %5682 = fmul fast float %5679, %4537
  %5683 = fmul fast float %5679, %4547
  %5684 = fadd fast float %5681, %5680
  %5685 = fadd fast float %5682, %5680
  %5686 = fadd fast float %5683, %5680
  br i1 %4673, label %5687, label %5710

; <label>:5687                                    ; preds = %5672
  %5688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %4225, float %5593, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5689 = extractvalue %dx.types.ResRet.f32 %5688, 0
  %5690 = extractvalue %dx.types.ResRet.f32 %5688, 1
  %5691 = extractvalue %dx.types.ResRet.f32 %5688, 2
  %5692 = fadd fast float %5689, -5.000000e-01
  %5693 = fadd fast float %5690, -5.000000e-01
  %5694 = fadd fast float %5691, -5.000000e-01
  %5695 = fmul fast float %4536, 4.000000e+00
  %5696 = fmul fast float %5695, %5640
  %5697 = fmul fast float %5696, %5692
  %5698 = fmul fast float %4537, 4.000000e+00
  %5699 = fmul fast float %5698, %5641
  %5700 = fmul fast float %5699, %5693
  %5701 = fmul fast float %4547, 4.000000e+00
  %5702 = fmul fast float %5701, %5642
  %5703 = fmul fast float %5702, %5694
  %5704 = fadd fast float %5697, %5684
  %5705 = fadd fast float %5700, %5685
  %5706 = fadd fast float %5703, %5686
  %5707 = call float @dx.op.unary.f32(i32 7, float %5704)  ; Saturate(value)
  %5708 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  %5709 = call float @dx.op.unary.f32(i32 7, float %5706)  ; Saturate(value)
  br label %5710

; <label>:5710                                    ; preds = %5687, %5672
  %5711 = phi float [ %5707, %5687 ], [ %5684, %5672 ]
  %5712 = phi float [ %5708, %5687 ], [ %5685, %5672 ]
  %5713 = phi float [ %5709, %5687 ], [ %5686, %5672 ]
  %5714 = call float @dx.op.binary.f32(i32 35, float %5712, float %5713)  ; FMax(a,b)
  %5715 = call float @dx.op.binary.f32(i32 35, float %5711, float %5714)  ; FMax(a,b)
  %5716 = fsub fast float 1.000000e+00, %5715
  %5717 = fmul fast float %5673, %5631
  %5718 = fmul fast float %5674, %5631
  %5719 = fmul fast float %5675, %5631
  %5720 = fsub fast float 1.000000e+00, %5594
  %5721 = bitcast float %5720 to i32
  %5722 = sitofp i32 %5721 to float
  %5723 = fmul fast float %5722, 5.000000e+00
  %5724 = fadd fast float %5723, 0xC1EFBF8940000000
  %5725 = fptosi float %5724 to i32
  %5726 = bitcast i32 %5725 to float
  %5727 = fmul fast float %5726, %4226
  %5728 = fmul fast float %5716, %5727
  %5729 = fmul fast float %5728, %4723
  %5730 = fmul fast float %5728, %4724
  %5731 = fmul fast float %5728, %4725
  %5732 = fadd fast float %5729, %5717
  %5733 = fadd fast float %5730, %5718
  %5734 = fadd fast float %5731, %5719
  %5735 = fmul fast float %5599, %5582
  %5736 = fmul fast float %5735, %5716
  %5737 = fmul fast float %5599, %5583
  %5738 = fmul fast float %5737, %5716
  %5739 = fmul fast float %5599, %5584
  %5740 = fmul fast float %5739, %5716
  %5741 = fmul fast float %5735, %5732
  %5742 = fmul fast float %5737, %5733
  %5743 = fmul fast float %5739, %5734
  %5744 = fadd fast float %5736, %4707
  %5745 = fmul fast float %5744, %4222
  %5746 = fadd fast float %5738, %4708
  %5747 = fmul fast float %5746, %4222
  %5748 = fadd fast float %5740, %4709
  %5749 = fmul fast float %5748, %4222
  %5750 = fadd fast float %5741, %4750
  %5751 = fmul fast float %5750, %4222
  %5752 = fadd fast float %5742, %4753
  %5753 = fmul fast float %5752, %4222
  %5754 = fadd fast float %5743, %4756
  %5755 = fmul fast float %5754, %4222
  br label %5756

; <label>:5756                                    ; preds = %5710, %5576, %4700
  %5757 = phi float [ %4751, %4700 ], [ %4751, %5576 ], [ %5751, %5710 ]
  %5758 = phi float [ %4754, %4700 ], [ %4754, %5576 ], [ %5753, %5710 ]
  %5759 = phi float [ %4757, %4700 ], [ %4757, %5576 ], [ %5755, %5710 ]
  %5760 = phi float [ %4746, %4700 ], [ %4746, %5576 ], [ %5745, %5710 ]
  %5761 = phi float [ %4747, %4700 ], [ %4747, %5576 ], [ %5747, %5710 ]
  %5762 = phi float [ %4748, %4700 ], [ %4748, %5576 ], [ %5749, %5710 ]
  %5763 = fmul fast float %4222, %4222
  %5764 = fsub fast float 1.000000e+00, %5763
  %5765 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5764, float %5764, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5766 = fsub fast float 1.000000e+00, %5765
  %5767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.f32 %5767, 0
  %5769 = fmul fast float %5768, %4729
  %5770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5771 = extractvalue %dx.types.CBufRet.f32 %5770, 3
  %5772 = fsub fast float 1.000000e+00, %4229
  %5773 = call float @dx.op.unary.f32(i32 7, float %5772)  ; Saturate(value)
  %5774 = fadd fast float %5762, %4228
  %5775 = fmul fast float %5774, %4229
  %5776 = fmul fast float %5773, %5771
  %5777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5778 = extractvalue %dx.types.CBufRet.f32 %5777, 3
  %5779 = fmul fast float %5760, %4542
  %5780 = fmul fast float %5761, %4543
  %5781 = fmul fast float %5762, %4544
  %5782 = fcmp fast ogt float %73, %167
  %5783 = and i1 %5782, %4268
  %5784 = or i1 %4347, %5783
  %5785 = icmp eq i32 %4267, 2
  %5786 = fcmp fast ole float %73, %167
  %5787 = and i1 %5786, %5785
  %5788 = or i1 %5787, %5784
  br i1 %5783, label %5789, label %6046

; <label>:5789                                    ; preds = %5756
  %5790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5791 = extractvalue %dx.types.CBufRet.f32 %5790, 2
  %5792 = extractvalue %dx.types.CBufRet.f32 %5790, 3
  %5793 = fmul fast float %5791, %82
  %5794 = fmul fast float %5792, %83
  %5795 = call float @dx.op.unary.f32(i32 7, float %5793)  ; Saturate(value)
  %5796 = call float @dx.op.unary.f32(i32 7, float %5794)  ; Saturate(value)
  %5797 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %5795, float %5796, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5798 = extractvalue %dx.types.ResRet.f32 %5797, 0
  %5799 = extractvalue %dx.types.ResRet.f32 %5797, 1
  %5800 = extractvalue %dx.types.ResRet.f32 %5797, 2
  %5801 = extractvalue %dx.types.ResRet.f32 %5797, 3
  %5802 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %5795, float %5796, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5803 = extractvalue %dx.types.ResRet.f32 %5802, 0
  %5804 = extractvalue %dx.types.ResRet.f32 %5802, 1
  %5805 = extractvalue %dx.types.ResRet.f32 %5802, 2
  %5806 = extractvalue %dx.types.ResRet.f32 %5802, 3
  %5807 = call float @dx.op.binary.f32(i32 35, float %5799, float %5800)  ; FMax(a,b)
  %5808 = call float @dx.op.binary.f32(i32 35, float %5798, float %5807)  ; FMax(a,b)
  %5809 = call float @dx.op.binary.f32(i32 35, float %5808, float %5801)  ; FMax(a,b)
  %5810 = call float @dx.op.binary.f32(i32 36, float %5804, float %5805)  ; FMin(a,b)
  %5811 = call float @dx.op.binary.f32(i32 36, float %5803, float %5810)  ; FMin(a,b)
  %5812 = call float @dx.op.binary.f32(i32 36, float %5811, float %5806)  ; FMin(a,b)
  %5813 = fmul fast float %5809, 2.550000e+02
  %5814 = fadd fast float %5813, 0x3F70101020000000
  %5815 = fptoui float %5814 to i32
  %5816 = fmul fast float %5812, 2.550000e+02
  %5817 = fadd fast float %5816, 0x3F70101020000000
  %5818 = fptoui float %5817 to i32
  %5819 = icmp ult i32 %5815, %5818
  br i1 %5819, label %5820, label %5988

; <label>:5820                                    ; preds = %5789
  %5821 = fcmp fast ogt float %72, 9.843750e-01
  %5822 = fadd fast float %73, -4.000000e+00
  %5823 = select i1 %5821, float -4.000000e+00, float %5822
  %5824 = call float @dx.op.binary.f32(i32 35, float %5823, float 0.000000e+00)  ; FMax(a,b)
  %5825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5826 = extractvalue %dx.types.CBufRet.f32 %5825, 0
  %5827 = fadd fast float %5826, %5824
  %5828 = extractvalue %dx.types.CBufRet.f32 %5825, 2
  %5829 = fmul fast float %5827, %5828
  %5830 = call float @dx.op.unary.f32(i32 23, float %5829)  ; Log(value)
  %5831 = extractvalue %dx.types.CBufRet.f32 %5825, 3
  %5832 = fmul fast float %5831, %5830
  %5833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5834 = extractvalue %dx.types.CBufRet.f32 %5833, 2
  %5835 = fmul fast float %5832, %5834
  %5836 = call float @dx.op.unary.f32(i32 7, float %5835)  ; Saturate(value)
  %5837 = uitofp i32 %5815 to float
  %5838 = uitofp i32 %5818 to float
  %5839 = fadd fast float %5837, 5.000000e-01
  %5840 = fadd fast float %5838, 5.000000e-01
  %5841 = fmul fast float %5834, %5839
  %5842 = fmul fast float %5834, %5840
  %5843 = fadd fast float %5841, 0x3F0FFB4800000000
  %5844 = fadd fast float %5842, 0xBF0FFB4800000000
  %5845 = call float @dx.op.binary.f32(i32 35, float %5836, float %5843)  ; FMax(a,b)
  %5846 = call float @dx.op.binary.f32(i32 36, float %5845, float %5844)  ; FMin(a,b)
  %5847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.f32 %5847, 1
  %5849 = extractvalue %dx.types.CBufRet.f32 %5847, 2
  %5850 = extractvalue %dx.types.CBufRet.f32 %5847, 0
  %5851 = fmul fast float %5848, %5846
  %5852 = fadd fast float %5850, %5851
  %5853 = fadd fast float %5850, %5849
  %5854 = fsub fast float %5848, %5849
  %5855 = fadd fast float %5854, %5850
  %5856 = call float @dx.op.binary.f32(i32 35, float %5852, float %5853)  ; FMax(a,b)
  %5857 = call float @dx.op.binary.f32(i32 36, float %5856, float %5855)  ; FMin(a,b)
  %5858 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %5795, float %5796, float %5857, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5859 = extractvalue %dx.types.ResRet.f32 %5858, 0
  %5860 = extractvalue %dx.types.ResRet.f32 %5858, 1
  %5861 = extractvalue %dx.types.ResRet.f32 %5858, 2
  %5862 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5863 = extractvalue %dx.types.CBufRet.i32 %5862, 0
  %5864 = extractvalue %dx.types.CBufRet.i32 %5862, 1
  %5865 = uitofp i32 %5863 to float
  %5866 = uitofp i32 %5864 to float
  %5867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5868 = extractvalue %dx.types.CBufRet.f32 %5867, 0
  %5869 = extractvalue %dx.types.CBufRet.f32 %5867, 1
  %5870 = fmul fast float %5865, %5795
  %5871 = fmul fast float %5866, %5796
  %5872 = fadd fast float %5870, -5.000000e-01
  %5873 = fadd fast float %5871, -5.000000e-01
  %5874 = call float @dx.op.unary.f32(i32 22, float %5872)  ; Frc(value)
  %5875 = call float @dx.op.unary.f32(i32 22, float %5873)  ; Frc(value)
  %5876 = fmul fast float %5874, %5874
  %5877 = fmul fast float %5876, %5874
  %5878 = fsub fast float 3.000000e+00, %5874
  %5879 = fmul fast float %5876, %5878
  %5880 = fmul fast float %5874, 3.000000e+00
  %5881 = fmul fast float %5877, 3.000000e+00
  %5882 = fmul fast float %5876, 6.000000e+00
  %5883 = fsub fast float %5881, %5882
  %5884 = fadd fast float %5883, 4.000000e+00
  %5885 = fmul fast float %5884, 0x3FC5555560000000
  %5886 = fmul fast float %5877, -3.000000e+00
  %5887 = fadd fast float %5876, %5874
  %5888 = fmul fast float %5887, 3.000000e+00
  %5889 = fadd fast float %5886, 1.000000e+00
  %5890 = fadd fast float %5889, %5888
  %5891 = fmul fast float %5877, 0x3FC5555560000000
  %5892 = fmul fast float %5875, %5875
  %5893 = fmul fast float %5892, %5875
  %5894 = fsub fast float 3.000000e+00, %5875
  %5895 = fmul fast float %5892, %5894
  %5896 = fmul fast float %5875, 3.000000e+00
  %5897 = fmul fast float %5893, 3.000000e+00
  %5898 = fmul fast float %5892, 6.000000e+00
  %5899 = fsub fast float %5897, %5898
  %5900 = fadd fast float %5899, 4.000000e+00
  %5901 = fmul fast float %5900, 0x3FC5555560000000
  %5902 = fmul fast float %5893, -3.000000e+00
  %5903 = fadd fast float %5892, %5875
  %5904 = fmul fast float %5903, 3.000000e+00
  %5905 = fadd fast float %5902, 1.000000e+00
  %5906 = fadd fast float %5905, %5904
  %5907 = fmul fast float %5893, 0x3FC5555560000000
  %5908 = fadd fast float %5874, 1.000000e+00
  %5909 = fsub fast float 1.000000e+00, %5880
  %5910 = fadd fast float %5909, %5879
  %5911 = fadd fast float %5910, %5884
  %5912 = fmul fast float %5911, 0x3FC5555560000000
  %5913 = fdiv fast float %5885, %5912
  %5914 = fsub fast float %5908, %5913
  %5915 = fsub fast float 1.000000e+00, %5874
  %5916 = fadd fast float %5890, %5877
  %5917 = fmul fast float %5916, 0x3FC5555560000000
  %5918 = fdiv fast float %5891, %5917
  %5919 = fadd fast float %5915, %5918
  %5920 = fadd fast float %5875, 1.000000e+00
  %5921 = fsub fast float 1.000000e+00, %5896
  %5922 = fadd fast float %5921, %5895
  %5923 = fadd fast float %5922, %5900
  %5924 = fmul fast float %5923, 0x3FC5555560000000
  %5925 = fdiv fast float %5901, %5924
  %5926 = fsub fast float %5920, %5925
  %5927 = fsub fast float 1.000000e+00, %5875
  %5928 = fadd fast float %5906, %5893
  %5929 = fmul fast float %5928, 0x3FC5555560000000
  %5930 = fdiv fast float %5907, %5929
  %5931 = fadd fast float %5930, %5927
  %5932 = fmul fast float %5914, %5868
  %5933 = fsub fast float %5795, %5932
  %5934 = fmul fast float %5919, %5868
  %5935 = fadd fast float %5934, %5795
  %5936 = fmul fast float %5931, %5869
  %5937 = fadd fast float %5936, %5796
  %5938 = fmul fast float %5926, %5869
  %5939 = fsub fast float %5796, %5938
  %5940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %5933, float %5939, float %5857, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5941 = extractvalue %dx.types.ResRet.f32 %5940, 0
  %5942 = extractvalue %dx.types.ResRet.f32 %5940, 1
  %5943 = extractvalue %dx.types.ResRet.f32 %5940, 2
  %5944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %5935, float %5939, float %5857, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5945 = extractvalue %dx.types.ResRet.f32 %5944, 0
  %5946 = extractvalue %dx.types.ResRet.f32 %5944, 1
  %5947 = extractvalue %dx.types.ResRet.f32 %5944, 2
  %5948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %5933, float %5937, float %5857, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5949 = extractvalue %dx.types.ResRet.f32 %5948, 0
  %5950 = extractvalue %dx.types.ResRet.f32 %5948, 1
  %5951 = extractvalue %dx.types.ResRet.f32 %5948, 2
  %5952 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %5935, float %5937, float %5857, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5953 = extractvalue %dx.types.ResRet.f32 %5952, 0
  %5954 = extractvalue %dx.types.ResRet.f32 %5952, 1
  %5955 = extractvalue %dx.types.ResRet.f32 %5952, 2
  %5956 = fsub fast float %5949, %5941
  %5957 = fsub fast float %5950, %5942
  %5958 = fsub fast float %5951, %5943
  %5959 = fmul fast float %5956, %5929
  %5960 = fmul fast float %5957, %5929
  %5961 = fmul fast float %5958, %5929
  %5962 = fadd fast float %5959, %5941
  %5963 = fadd fast float %5960, %5942
  %5964 = fadd fast float %5961, %5943
  %5965 = fsub fast float %5953, %5945
  %5966 = fsub fast float %5954, %5946
  %5967 = fsub fast float %5955, %5947
  %5968 = fmul fast float %5965, %5929
  %5969 = fmul fast float %5966, %5929
  %5970 = fmul fast float %5967, %5929
  %5971 = fsub fast float %5945, %5962
  %5972 = fadd fast float %5971, %5968
  %5973 = fsub fast float %5946, %5963
  %5974 = fadd fast float %5973, %5969
  %5975 = fsub fast float %5947, %5964
  %5976 = fadd fast float %5975, %5970
  %5977 = fmul fast float %5972, %5917
  %5978 = fmul fast float %5974, %5917
  %5979 = fmul fast float %5976, %5917
  %5980 = fadd fast float %5977, %5962
  %5981 = fadd fast float %5978, %5963
  %5982 = fadd fast float %5979, %5964
  %5983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.f32 %5983, 1
  %5985 = fmul fast float %5980, %5984
  %5986 = fmul fast float %5981, %5984
  %5987 = fmul fast float %5982, %5984
  br label %5988

; <label>:5988                                    ; preds = %5820, %5789
  %5989 = phi float [ %5859, %5820 ], [ 1.000000e+00, %5789 ]
  %5990 = phi float [ %5860, %5820 ], [ 1.000000e+00, %5789 ]
  %5991 = phi float [ %5861, %5820 ], [ 1.000000e+00, %5789 ]
  %5992 = phi float [ %5985, %5820 ], [ 0.000000e+00, %5789 ]
  %5993 = phi float [ %5986, %5820 ], [ 0.000000e+00, %5789 ]
  %5994 = phi float [ %5987, %5820 ], [ 0.000000e+00, %5789 ]
  %5995 = fmul fast float %5992, %5766
  %5996 = fmul fast float %5993, %5766
  %5997 = fmul fast float %5994, %5766
  %5998 = call float @dx.op.dot3.f32(i32 55, float %5989, float %5990, float %5991, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5999 = call float @dx.op.dot3.f32(i32 55, float %5995, float %5996, float %5997, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6000 = select i1 %206, float %5998, float %5989
  %6001 = select i1 %206, float %5998, float %5990
  %6002 = select i1 %206, float 1.000000e+00, float %5991
  %6003 = select i1 %206, float %5999, float %5995
  %6004 = select i1 %206, float 0.000000e+00, float %5996
  %6005 = select i1 %206, float 0.000000e+00, float %5997
  %6006 = fmul fast float %6000, %5779
  %6007 = fmul fast float %6001, %5780
  %6008 = fmul fast float %6002, %5781
  %6009 = fadd fast float %6006, %6003
  %6010 = fadd fast float %6007, %6004
  %6011 = fadd fast float %6005, %6008
  %6012 = fmul fast float %6000, %5757
  %6013 = fmul fast float %6001, %5758
  %6014 = fmul fast float %6002, %5759
  %6015 = fmul fast float %115, %5791
  %6016 = fmul fast float %117, %5792
  %6017 = fsub fast float 1.000000e+00, %6015
  %6018 = fsub fast float 1.000000e+00, %6016
  %6019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6020 = extractvalue %dx.types.CBufRet.f32 %6019, 0
  %6021 = extractvalue %dx.types.CBufRet.f32 %6019, 1
  %6022 = extractvalue %dx.types.CBufRet.f32 %6019, 2
  %6023 = fmul fast float %6017, %6020
  %6024 = fmul fast float %6017, %6021
  %6025 = fmul fast float %6017, %6022
  %6026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6027 = extractvalue %dx.types.CBufRet.f32 %6026, 0
  %6028 = extractvalue %dx.types.CBufRet.f32 %6026, 1
  %6029 = extractvalue %dx.types.CBufRet.f32 %6026, 2
  %6030 = fmul fast float %6018, %6027
  %6031 = fmul fast float %6018, %6028
  %6032 = fmul fast float %6018, %6029
  %6033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6034 = extractvalue %dx.types.CBufRet.f32 %6033, 0
  %6035 = extractvalue %dx.types.CBufRet.f32 %6033, 1
  %6036 = extractvalue %dx.types.CBufRet.f32 %6033, 2
  %6037 = fadd fast float %6030, %6034
  %6038 = fadd fast float %6037, %6023
  %6039 = fadd fast float %6031, %6035
  %6040 = fadd fast float %6039, %6024
  %6041 = fadd fast float %6032, %6036
  %6042 = fadd fast float %6041, %6025
  %6043 = fmul fast float %6038, %167
  %6044 = fmul fast float %6040, %167
  %6045 = fmul fast float %6042, %167
  br label %6046

; <label>:6046                                    ; preds = %5988, %5756
  %6047 = phi float [ %6043, %5988 ], [ %145, %5756 ]
  %6048 = phi float [ %6044, %5988 ], [ %146, %5756 ]
  %6049 = phi float [ %6045, %5988 ], [ %147, %5756 ]
  %6050 = phi float [ %167, %5988 ], [ %73, %5756 ]
  %6051 = phi float [ %6009, %5988 ], [ %5779, %5756 ]
  %6052 = phi float [ %6010, %5988 ], [ %5780, %5756 ]
  %6053 = phi float [ %6011, %5988 ], [ %5781, %5756 ]
  %6054 = phi float [ %6012, %5988 ], [ %5757, %5756 ]
  %6055 = phi float [ %6013, %5988 ], [ %5758, %5756 ]
  %6056 = phi float [ %6014, %5988 ], [ %5759, %5756 ]
  %6057 = phi float [ %5989, %5988 ], [ 1.000000e+00, %5756 ]
  br i1 %5788, label %7212, label %6058

; <label>:6058                                    ; preds = %6046
  %6059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6060 = extractvalue %dx.types.CBufRet.f32 %6059, 0
  %6061 = extractvalue %dx.types.CBufRet.f32 %6059, 1
  %6062 = extractvalue %dx.types.CBufRet.f32 %6059, 2
  %6063 = extractvalue %dx.types.CBufRet.f32 %6059, 3
  %6064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6065 = extractvalue %dx.types.CBufRet.f32 %6064, 0
  %6066 = extractvalue %dx.types.CBufRet.f32 %6064, 1
  %6067 = extractvalue %dx.types.CBufRet.f32 %6064, 2
  %6068 = extractvalue %dx.types.CBufRet.f32 %6064, 3
  %6069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6070 = extractvalue %dx.types.CBufRet.f32 %6069, 0
  %6071 = extractvalue %dx.types.CBufRet.f32 %6069, 1
  %6072 = extractvalue %dx.types.CBufRet.f32 %6069, 2
  %6073 = extractvalue %dx.types.CBufRet.f32 %6069, 3
  %6074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6075 = extractvalue %dx.types.CBufRet.f32 %6074, 0
  %6076 = extractvalue %dx.types.CBufRet.f32 %6074, 1
  %6077 = extractvalue %dx.types.CBufRet.f32 %6074, 2
  %6078 = extractvalue %dx.types.CBufRet.f32 %6074, 3
  %6079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6080 = extractvalue %dx.types.CBufRet.f32 %6079, 3
  %6081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6082 = extractvalue %dx.types.CBufRet.f32 %6081, 3
  %6083 = extractvalue %dx.types.CBufRet.f32 %6081, 0
  %6084 = extractvalue %dx.types.CBufRet.f32 %6081, 1
  %6085 = extractvalue %dx.types.CBufRet.f32 %6081, 2
  %6086 = fcmp fast olt float %6085, -5.000000e-01
  %6087 = call float @dx.op.dot3.f32(i32 55, float %6047, float %6048, float %6049, float %6047, float %6048, float %6049)  ; Dot3(ax,ay,az,bx,by,bz)
  %6088 = call float @dx.op.unary.f32(i32 25, float %6087)  ; Rsqrt(value)
  %6089 = fmul fast float %6088, %6087
  %6090 = fmul fast float %6088, %6047
  %6091 = fmul fast float %6088, %6048
  %6092 = fmul fast float %6088, %6049
  %6093 = fadd fast float %6089, %6063
  %6094 = call float @dx.op.dot3.f32(i32 55, float %6090, float %6091, float %6092, float %6060, float %6061, float %6062)  ; Dot3(ax,ay,az,bx,by,bz)
  %6095 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6096 = extractvalue %dx.types.CBufRet.i32 %6095, 1
  %6097 = and i32 %6096, 1
  %6098 = icmp ne i32 %6097, 0
  %6099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6100 = extractvalue %dx.types.CBufRet.f32 %6099, 2
  %6101 = fcmp fast ogt float %6100, 0.000000e+00
  %6102 = and i1 %6098, %6101
  br i1 %6102, label %6103, label %6509, !dx.controlflow.hints !102

; <label>:6103                                    ; preds = %6058
  %6104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6105 = extractvalue %dx.types.CBufRet.f32 %6104, 3
  %6106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6107 = extractvalue %dx.types.CBufRet.f32 %6106, 2
  %6108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6109 = extractvalue %dx.types.CBufRet.f32 %6108, 2
  %6110 = fsub fast float %6107, %6109
  %6111 = and i32 %6096, 2
  %6112 = extractvalue %dx.types.CBufRet.i32 %6095, 0
  %6113 = call i32 @dx.op.binary.i32(i32 40, i32 %6112, i32 3)  ; UMin(a,b)
  %6114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6115 = extractvalue %dx.types.CBufRet.f32 %6114, 0
  %6116 = extractvalue %dx.types.CBufRet.f32 %6114, 1
  %6117 = extractvalue %dx.types.CBufRet.f32 %6108, 0
  %6118 = extractvalue %dx.types.CBufRet.f32 %6108, 1
  %6119 = fsub fast float %6115, %6117
  %6120 = fsub fast float %6116, %6118
  %6121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6122 = extractvalue %dx.types.CBufRet.f32 %6121, 0
  %6123 = fcmp fast ogt float %6122, 0.000000e+00
  %6124 = fsub fast float -0.000000e+00, %6119
  %6125 = fsub fast float -0.000000e+00, %6120
  %6126 = call float @dx.op.dot2.f32(i32 54, float %6090, float %6091, float %6090, float %6091)  ; Dot2(ax,ay,bx,by)
  %6127 = call float @dx.op.dot2.f32(i32 54, float %6090, float %6091, float %6124, float %6125)  ; Dot2(ax,ay,bx,by)
  %6128 = fmul fast float %6127, 2.000000e+00
  %6129 = call float @dx.op.dot2.f32(i32 54, float %6124, float %6125, float %6124, float %6125)  ; Dot2(ax,ay,bx,by)
  %6130 = fmul fast float %6122, %6122
  %6131 = fsub fast float %6129, %6130
  %6132 = fmul fast float %6128, %6128
  %6133 = fmul fast float %6126, 4.000000e+00
  %6134 = fmul fast float %6133, %6131
  %6135 = fsub fast float %6132, %6134
  %6136 = fcmp fast ogt float %6135, 0.000000e+00
  br i1 %6136, label %6137, label %6152

; <label>:6137                                    ; preds = %6103
  %6138 = fcmp fast ogt float %6128, 0.000000e+00
  %6139 = call float @dx.op.unary.f32(i32 24, float %6135)  ; Sqrt(value)
  %6140 = fsub fast float -0.000000e+00, %6139
  %6141 = select i1 %6138, float %6139, float %6140
  %6142 = fadd fast float %6141, %6128
  %6143 = fmul float %6142, -5.000000e-01
  %6144 = fdiv fast float %6143, %6126
  %6145 = call float @dx.op.binary.f32(i32 35, float %6144, float 0.000000e+00)  ; FMax(a,b)
  %6146 = call float @dx.op.binary.f32(i32 36, float %6089, float %6145)  ; FMin(a,b)
  %6147 = fdiv fast float %6131, %6143
  %6148 = call float @dx.op.binary.f32(i32 35, float %6147, float 0.000000e+00)  ; FMax(a,b)
  %6149 = call float @dx.op.binary.f32(i32 36, float %6089, float %6148)  ; FMin(a,b)
  %6150 = call float @dx.op.binary.f32(i32 36, float %6146, float %6149)  ; FMin(a,b)
  %6151 = call float @dx.op.binary.f32(i32 35, float %6146, float %6149)  ; FMax(a,b)
  br label %6152

; <label>:6152                                    ; preds = %6137, %6103
  %6153 = phi float [ %6151, %6137 ], [ -1.000000e+00, %6103 ]
  %6154 = phi float [ %6150, %6137 ], [ -1.000000e+00, %6103 ]
  %6155 = phi i1 [ true, %6137 ], [ false, %6103 ]
  %6156 = and i1 %6123, %6155
  br i1 %6156, label %6157, label %6159

; <label>:6157                                    ; preds = %6152
  %6158 = fcmp fast oeq float %6154, %6153
  br i1 %6158, label %6462, label %6160

; <label>:6159                                    ; preds = %6152
  br i1 %6123, label %6462, label %6160

; <label>:6160                                    ; preds = %6159, %6157
  %6161 = phi float [ %6089, %6159 ], [ %6153, %6157 ]
  %6162 = phi float [ 0.000000e+00, %6159 ], [ %6154, %6157 ]
  %6163 = icmp ne i32 %6111, 0
  %6164 = fmul fast float %6161, %6092
  %6165 = fadd fast float %6164, %6105
  %6166 = fmul fast float %6165, %6161
  %6167 = select i1 %6163, float 0.000000e+00, float %6166
  %6168 = fcmp fast oeq float %6092, 0.000000e+00
  %6169 = fdiv fast float %6110, %6092
  %6170 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6169)  ; FMax(a,b)
  %6171 = select i1 %6168, float %6161, float %6170
  %6172 = call float @dx.op.binary.f32(i32 36, float %6161, float %6171)  ; FMin(a,b)
  %6173 = fcmp fast ogt float %6092, 0.000000e+00
  %6174 = fcmp fast olt float %6110, 0.000000e+00
  br i1 %6173, label %6175, label %6232

; <label>:6175                                    ; preds = %6160
  %6176 = icmp eq i32 %6111, 0
  br i1 %6174, label %6177, label %6221

; <label>:6177                                    ; preds = %6175
  %6178 = select i1 %6176, float %6161, float 0.000000e+00
  %6179 = fsub fast float -0.000000e+00, %6178
  %6180 = call float @dx.op.unary.f32(i32 6, float %6179)  ; FAbs(value)
  %6181 = fmul fast float %6178, %6092
  %6182 = fadd fast float %6181, %6105
  %6183 = fmul fast float %6180, %6182
  %6184 = fsub fast float %6167, %6183
  %6185 = fsub fast float %6161, %6180
  %6186 = select i1 %6176, float %6185, float 0.000000e+00
  %6187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6188 = extractvalue %dx.types.CBufRet.f32 %6187, 0
  %6189 = extractvalue %dx.types.CBufRet.f32 %6187, 1
  %6190 = extractvalue %dx.types.CBufRet.f32 %6187, 2
  %6191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6192 = extractvalue %dx.types.CBufRet.f32 %6191, 0
  %6193 = extractvalue %dx.types.CBufRet.f32 %6191, 1
  %6194 = extractvalue %dx.types.CBufRet.f32 %6191, 2
  %6195 = extractvalue %dx.types.CBufRet.f32 %6191, 3
  %6196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6197 = extractvalue %dx.types.CBufRet.f32 %6196, 3
  %6198 = call float @dx.op.binary.f32(i32 36, float %6184, float %6197)  ; FMin(a,b)
  %6199 = fmul fast float %6195, %6186
  %6200 = call float @dx.op.unary.f32(i32 7, float %6199)  ; Saturate(value)
  %6201 = fsub fast float %6192, %6188
  %6202 = fsub fast float %6193, %6189
  %6203 = fsub fast float %6194, %6190
  %6204 = fmul fast float %6200, %6201
  %6205 = fmul fast float %6200, %6202
  %6206 = fmul fast float %6200, %6203
  %6207 = fadd fast float %6204, %6188
  %6208 = fadd fast float %6205, %6189
  %6209 = fadd fast float %6206, %6190
  %6210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6211 = extractvalue %dx.types.CBufRet.f32 %6210, 0
  %6212 = extractvalue %dx.types.CBufRet.f32 %6210, 1
  %6213 = fadd fast float %6212, %6211
  %6214 = call float @dx.op.unary.f32(i32 7, float %6213)  ; Saturate(value)
  %6215 = extractvalue %dx.types.CBufRet.f32 %6210, 2
  %6216 = extractvalue %dx.types.CBufRet.f32 %6210, 3
  %6217 = fadd fast float %6216, %6215
  %6218 = call float @dx.op.unary.f32(i32 7, float %6217)  ; Saturate(value)
  %6219 = fmul fast float %6214, %6198
  %6220 = fmul fast float %6219, %6218
  br label %6462

; <label>:6221                                    ; preds = %6175
  br i1 %6176, label %6222, label %6243

; <label>:6222                                    ; preds = %6221
  %6223 = call float @dx.op.binary.f32(i32 36, float %6172, float %6162)  ; FMin(a,b)
  %6224 = fsub fast float %6172, %6223
  %6225 = fsub fast float %6224, %6161
  %6226 = call float @dx.op.unary.f32(i32 6, float %6225)  ; FAbs(value)
  %6227 = fadd fast float %6224, %6161
  %6228 = fmul fast float %6227, %6092
  %6229 = fadd fast float %6228, %6105
  %6230 = fmul fast float %6229, %6226
  %6231 = fsub fast float %6167, %6230
  br label %6243

; <label>:6232                                    ; preds = %6160
  br i1 %6174, label %6233, label %6243

; <label>:6233                                    ; preds = %6232
  %6234 = call float @dx.op.binary.f32(i32 35, float %6162, float %6172)  ; FMax(a,b)
  %6235 = icmp eq i32 %6111, 0
  %6236 = select i1 %6235, float %6172, float 0.000000e+00
  %6237 = fsub fast float -0.000000e+00, %6236
  %6238 = call float @dx.op.unary.f32(i32 6, float %6237)  ; FAbs(value)
  %6239 = fmul fast float %6236, %6092
  %6240 = fadd fast float %6239, %6105
  %6241 = fmul fast float %6238, %6240
  %6242 = fsub fast float %6167, %6241
  br label %6243

; <label>:6243                                    ; preds = %6233, %6232, %6222, %6221
  %6244 = phi float [ %6162, %6221 ], [ %6162, %6222 ], [ %6234, %6233 ], [ %6162, %6232 ]
  %6245 = phi float [ 0.000000e+00, %6221 ], [ %6226, %6222 ], [ %6238, %6233 ], [ 0.000000e+00, %6232 ]
  %6246 = phi float [ %6167, %6221 ], [ %6231, %6222 ], [ %6242, %6233 ], [ %6167, %6232 ]
  %6247 = phi float [ %6172, %6221 ], [ %6172, %6222 ], [ %6161, %6233 ], [ %6161, %6232 ]
  %6248 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 0
  store float -1.000000e+00, float* %6248, align 4, !tbaa !103, !noalias !105
  %6249 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 1
  store float -1.000000e+00, float* %6249, align 4, !tbaa !103, !noalias !105
  %6250 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 2
  store float -1.000000e+00, float* %6250, align 4, !tbaa !103, !noalias !105
  %6251 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 0
  store float -1.000000e+00, float* %6251, align 4, !tbaa !103, !noalias !105
  %6252 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 1
  store float -1.000000e+00, float* %6252, align 4, !tbaa !103, !noalias !105
  %6253 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 2
  store float -1.000000e+00, float* %6253, align 4, !tbaa !103, !noalias !105
  %6254 = icmp sgt i32 %6113, 0
  br i1 %6254, label %6255, label %6316

; <label>:6255                                    ; preds = %6243
  br label %6256

; <label>:6256                                    ; preds = %6305, %6255
  %6257 = phi i32 [ %6306, %6305 ], [ 0, %6255 ]
  %6258 = phi i32 [ %6307, %6305 ], [ 0, %6255 ]
  %6259 = add nuw i32 %6258, 171
  %6260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %6259)  ; CBufferLoadLegacy(handle,regIndex)
  %6261 = extractvalue %dx.types.CBufRet.f32 %6260, 0
  %6262 = extractvalue %dx.types.CBufRet.f32 %6260, 1
  %6263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6264 = extractvalue %dx.types.CBufRet.f32 %6263, 0
  %6265 = extractvalue %dx.types.CBufRet.f32 %6263, 1
  %6266 = fsub fast float %6261, %6264
  %6267 = fsub fast float %6262, %6265
  %6268 = extractvalue %dx.types.CBufRet.f32 %6260, 2
  %6269 = fsub fast float -0.000000e+00, %6266
  %6270 = fsub fast float -0.000000e+00, %6267
  %6271 = call float @dx.op.dot2.f32(i32 54, float %6090, float %6091, float %6269, float %6270)  ; Dot2(ax,ay,bx,by)
  %6272 = fmul fast float %6271, 2.000000e+00
  %6273 = call float @dx.op.dot2.f32(i32 54, float %6269, float %6270, float %6269, float %6270)  ; Dot2(ax,ay,bx,by)
  %6274 = fmul fast float %6268, %6268
  %6275 = fsub fast float %6273, %6274
  %6276 = fmul fast float %6272, %6272
  %6277 = fmul fast float %6133, %6275
  %6278 = fsub fast float %6276, %6277
  %6279 = fcmp fast ogt float %6278, 0.000000e+00
  br i1 %6279, label %6280, label %6295

; <label>:6280                                    ; preds = %6256
  %6281 = fcmp fast ogt float %6272, 0.000000e+00
  %6282 = call float @dx.op.unary.f32(i32 24, float %6278)  ; Sqrt(value)
  %6283 = fsub fast float -0.000000e+00, %6282
  %6284 = select i1 %6281, float %6282, float %6283
  %6285 = fadd fast float %6284, %6272
  %6286 = fmul float %6285, -5.000000e-01
  %6287 = fdiv fast float %6286, %6126
  %6288 = call float @dx.op.binary.f32(i32 35, float %6287, float 0.000000e+00)  ; FMax(a,b)
  %6289 = call float @dx.op.binary.f32(i32 36, float %6161, float %6288)  ; FMin(a,b)
  %6290 = fdiv fast float %6275, %6286
  %6291 = call float @dx.op.binary.f32(i32 35, float %6290, float 0.000000e+00)  ; FMax(a,b)
  %6292 = call float @dx.op.binary.f32(i32 36, float %6161, float %6291)  ; FMin(a,b)
  %6293 = call float @dx.op.binary.f32(i32 36, float %6289, float %6292)  ; FMin(a,b)
  %6294 = call float @dx.op.binary.f32(i32 35, float %6289, float %6292)  ; FMax(a,b)
  br label %6295

; <label>:6295                                    ; preds = %6280, %6256
  %6296 = phi float [ %6294, %6280 ], [ -1.000000e+00, %6256 ]
  %6297 = phi float [ %6293, %6280 ], [ -1.000000e+00, %6256 ]
  %6298 = phi i1 [ true, %6280 ], [ false, %6256 ]
  br i1 %6298, label %6299, label %6305

; <label>:6299                                    ; preds = %6295
  %6300 = call float @dx.op.binary.f32(i32 35, float %6244, float %6297)  ; FMax(a,b)
  %6301 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %6258
  store float %6300, float* %6301, align 4, !tbaa !103, !noalias !105
  %6302 = call float @dx.op.binary.f32(i32 35, float %6244, float %6296)  ; FMax(a,b)
  %6303 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 %6258
  store float %6302, float* %6303, align 4, !tbaa !103, !noalias !105
  %6304 = add nsw i32 %6257, 1
  br label %6305

; <label>:6305                                    ; preds = %6299, %6295
  %6306 = phi i32 [ %6304, %6299 ], [ %6257, %6295 ]
  %6307 = add nuw nsw i32 %6258, 1
  %6308 = icmp eq i32 %6307, %6113
  br i1 %6308, label %6309, label %6256

; <label>:6309                                    ; preds = %6305
  %6310 = load float, float* %6250, align 4, !tbaa !103, !alias.scope !121, !noalias !124
  %6311 = load float, float* %6249, align 4, !tbaa !103, !alias.scope !127, !noalias !128
  %6312 = load float, float* %6248, align 4, !tbaa !103, !alias.scope !129, !noalias !130
  %6313 = load float, float* %6253, align 4, !tbaa !103, !alias.scope !131, !noalias !134
  %6314 = load float, float* %6252, align 4, !tbaa !103, !alias.scope !137, !noalias !138
  %6315 = load float, float* %6251, align 4, !tbaa !103, !alias.scope !139, !noalias !140
  br label %6316

; <label>:6316                                    ; preds = %6309, %6243
  %6317 = phi float [ -1.000000e+00, %6243 ], [ %6315, %6309 ]
  %6318 = phi float [ -1.000000e+00, %6243 ], [ %6314, %6309 ]
  %6319 = phi float [ -1.000000e+00, %6243 ], [ %6313, %6309 ]
  %6320 = phi float [ -1.000000e+00, %6243 ], [ %6312, %6309 ]
  %6321 = phi float [ -1.000000e+00, %6243 ], [ %6311, %6309 ]
  %6322 = phi float [ -1.000000e+00, %6243 ], [ %6310, %6309 ]
  %6323 = phi i32 [ 0, %6243 ], [ %6306, %6309 ]
  %6324 = call float @dx.op.binary.f32(i32 36, float %6321, float %6322)  ; FMin(a,b)
  %6325 = call float @dx.op.binary.f32(i32 36, float %6320, float %6324)  ; FMin(a,b)
  %6326 = call float @dx.op.binary.f32(i32 35, float %6320, float %6321)  ; FMax(a,b)
  %6327 = call float @dx.op.binary.f32(i32 36, float %6326, float %6322)  ; FMin(a,b)
  %6328 = call float @dx.op.binary.f32(i32 36, float %6320, float %6321)  ; FMin(a,b)
  %6329 = call float @dx.op.binary.f32(i32 35, float %6328, float %6327)  ; FMax(a,b)
  %6330 = call float @dx.op.binary.f32(i32 35, float %6321, float %6322)  ; FMax(a,b)
  %6331 = call float @dx.op.binary.f32(i32 35, float %6320, float %6330)  ; FMax(a,b)
  store float %6325, float* %6248, align 4, !tbaa !103, !alias.scope !129, !noalias !130
  store float %6329, float* %6249, align 4, !tbaa !103, !alias.scope !127, !noalias !128
  store float %6331, float* %6250, align 4, !tbaa !103, !alias.scope !121, !noalias !124
  %6332 = call float @dx.op.binary.f32(i32 36, float %6318, float %6319)  ; FMin(a,b)
  %6333 = call float @dx.op.binary.f32(i32 36, float %6317, float %6332)  ; FMin(a,b)
  %6334 = call float @dx.op.binary.f32(i32 35, float %6317, float %6318)  ; FMax(a,b)
  %6335 = call float @dx.op.binary.f32(i32 36, float %6334, float %6319)  ; FMin(a,b)
  %6336 = call float @dx.op.binary.f32(i32 36, float %6317, float %6318)  ; FMin(a,b)
  %6337 = call float @dx.op.binary.f32(i32 35, float %6336, float %6335)  ; FMax(a,b)
  %6338 = call float @dx.op.binary.f32(i32 35, float %6318, float %6319)  ; FMax(a,b)
  %6339 = call float @dx.op.binary.f32(i32 35, float %6317, float %6338)  ; FMax(a,b)
  store float %6333, float* %6251, align 4, !tbaa !103, !alias.scope !139, !noalias !140
  store float %6337, float* %6252, align 4, !tbaa !103, !alias.scope !137, !noalias !138
  store float %6339, float* %6253, align 4, !tbaa !103, !alias.scope !131, !noalias !134
  %6340 = sub nsw i32 3, %6323
  %6341 = icmp sgt i32 %6340, 2
  br i1 %6341, label %6342, label %6380

; <label>:6342                                    ; preds = %6316
  %6343 = icmp eq i32 %6111, 0
  %6344 = fsub fast float %6161, %6245
  %6345 = select i1 %6343, float %6344, float %6245
  %6346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6347 = extractvalue %dx.types.CBufRet.f32 %6346, 0
  %6348 = extractvalue %dx.types.CBufRet.f32 %6346, 1
  %6349 = extractvalue %dx.types.CBufRet.f32 %6346, 2
  %6350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6350, 0
  %6352 = extractvalue %dx.types.CBufRet.f32 %6350, 1
  %6353 = extractvalue %dx.types.CBufRet.f32 %6350, 2
  %6354 = extractvalue %dx.types.CBufRet.f32 %6350, 3
  %6355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6356 = extractvalue %dx.types.CBufRet.f32 %6355, 3
  %6357 = call float @dx.op.binary.f32(i32 36, float %6246, float %6356)  ; FMin(a,b)
  %6358 = fmul fast float %6354, %6345
  %6359 = call float @dx.op.unary.f32(i32 7, float %6358)  ; Saturate(value)
  %6360 = fsub fast float %6351, %6347
  %6361 = fsub fast float %6352, %6348
  %6362 = fsub fast float %6353, %6349
  %6363 = fmul fast float %6359, %6360
  %6364 = fmul fast float %6359, %6361
  %6365 = fmul fast float %6359, %6362
  %6366 = fadd fast float %6363, %6347
  %6367 = fadd fast float %6364, %6348
  %6368 = fadd fast float %6365, %6349
  %6369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6370 = extractvalue %dx.types.CBufRet.f32 %6369, 0
  %6371 = extractvalue %dx.types.CBufRet.f32 %6369, 1
  %6372 = fadd fast float %6371, %6370
  %6373 = call float @dx.op.unary.f32(i32 7, float %6372)  ; Saturate(value)
  %6374 = extractvalue %dx.types.CBufRet.f32 %6369, 2
  %6375 = extractvalue %dx.types.CBufRet.f32 %6369, 3
  %6376 = fadd fast float %6375, %6374
  %6377 = call float @dx.op.unary.f32(i32 7, float %6376)  ; Saturate(value)
  %6378 = fmul fast float %6373, %6357
  %6379 = fmul fast float %6378, %6377
  br label %6462

; <label>:6380                                    ; preds = %6316
  %6381 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %6340
  %6382 = load float, float* %6381, align 4, !tbaa !103, !noalias !105
  %6383 = fcmp fast olt float %6382, %6247
  %6384 = icmp sgt i32 %6323, 0
  %6385 = and i1 %6384, %6383
  br i1 %6385, label %6386, label %6423

; <label>:6386                                    ; preds = %6380
  br label %6387

; <label>:6387                                    ; preds = %6416, %6386
  %6388 = phi float [ %6417, %6416 ], [ %6245, %6386 ]
  %6389 = phi float [ %6418, %6416 ], [ %6246, %6386 ]
  %6390 = phi float [ %6398, %6416 ], [ %6382, %6386 ]
  %6391 = phi i32 [ %6395, %6416 ], [ %6340, %6386 ]
  %6392 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 %6391
  %6393 = load float, float* %6392, align 4, !tbaa !103, !noalias !105
  %6394 = icmp slt i32 %6391, 2
  %6395 = add nsw i32 %6391, 1
  %6396 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %6395
  %6397 = load float, float* %6396, align 4, !tbaa !103, !noalias !105
  %6398 = select i1 %6394, float %6397, float %6161
  %6399 = call float @dx.op.binary.f32(i32 36, float %6398, float %6393)  ; FMin(a,b)
  %6400 = call float @dx.op.binary.f32(i32 36, float %6247, float %6399)  ; FMin(a,b)
  %6401 = icmp eq i32 %6111, 0
  %6402 = fadd fast float %6400, %6390
  %6403 = fmul fast float %6402, %6092
  %6404 = fadd fast float %6403, %6105
  br i1 %6401, label %6410, label %6405

; <label>:6405                                    ; preds = %6387
  %6406 = fsub fast float %6400, %6390
  %6407 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6406)  ; FMax(a,b)
  %6408 = fmul fast float %6407, %6404
  %6409 = fadd fast float %6408, %6389
  br label %6416

; <label>:6410                                    ; preds = %6387
  %6411 = fsub fast float %6390, %6400
  %6412 = call float @dx.op.unary.f32(i32 6, float %6411)  ; FAbs(value)
  %6413 = fadd fast float %6412, %6388
  %6414 = fmul fast float %6412, %6404
  %6415 = fsub fast float %6389, %6414
  br label %6416

; <label>:6416                                    ; preds = %6410, %6405
  %6417 = phi float [ %6407, %6405 ], [ %6413, %6410 ]
  %6418 = phi float [ %6409, %6405 ], [ %6415, %6410 ]
  %6419 = fcmp fast olt float %6398, %6247
  %6420 = icmp slt i32 %6395, 3
  %6421 = and i1 %6420, %6419
  br i1 %6421, label %6387, label %6422

; <label>:6422                                    ; preds = %6416
  br label %6423

; <label>:6423                                    ; preds = %6422, %6380
  %6424 = phi float [ %6245, %6380 ], [ %6417, %6422 ]
  %6425 = phi float [ %6246, %6380 ], [ %6418, %6422 ]
  %6426 = fsub fast float %6161, %6424
  %6427 = select i1 %6163, float %6424, float %6426
  %6428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6429 = extractvalue %dx.types.CBufRet.f32 %6428, 0
  %6430 = extractvalue %dx.types.CBufRet.f32 %6428, 1
  %6431 = extractvalue %dx.types.CBufRet.f32 %6428, 2
  %6432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6433 = extractvalue %dx.types.CBufRet.f32 %6432, 0
  %6434 = extractvalue %dx.types.CBufRet.f32 %6432, 1
  %6435 = extractvalue %dx.types.CBufRet.f32 %6432, 2
  %6436 = extractvalue %dx.types.CBufRet.f32 %6432, 3
  %6437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6438 = extractvalue %dx.types.CBufRet.f32 %6437, 3
  %6439 = call float @dx.op.binary.f32(i32 36, float %6425, float %6438)  ; FMin(a,b)
  %6440 = fmul fast float %6436, %6427
  %6441 = call float @dx.op.unary.f32(i32 7, float %6440)  ; Saturate(value)
  %6442 = fsub fast float %6433, %6429
  %6443 = fsub fast float %6434, %6430
  %6444 = fsub fast float %6435, %6431
  %6445 = fmul fast float %6441, %6442
  %6446 = fmul fast float %6441, %6443
  %6447 = fmul fast float %6441, %6444
  %6448 = fadd fast float %6445, %6429
  %6449 = fadd fast float %6446, %6430
  %6450 = fadd fast float %6447, %6431
  %6451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6452 = extractvalue %dx.types.CBufRet.f32 %6451, 0
  %6453 = extractvalue %dx.types.CBufRet.f32 %6451, 1
  %6454 = fadd fast float %6453, %6452
  %6455 = call float @dx.op.unary.f32(i32 7, float %6454)  ; Saturate(value)
  %6456 = extractvalue %dx.types.CBufRet.f32 %6451, 2
  %6457 = extractvalue %dx.types.CBufRet.f32 %6451, 3
  %6458 = fadd fast float %6457, %6456
  %6459 = call float @dx.op.unary.f32(i32 7, float %6458)  ; Saturate(value)
  %6460 = fmul fast float %6455, %6439
  %6461 = fmul fast float %6460, %6459
  br label %6462

; <label>:6462                                    ; preds = %6423, %6342, %6177, %6159, %6157
  %6463 = phi float [ %6186, %6177 ], [ %6345, %6342 ], [ %6427, %6423 ], [ 0.000000e+00, %6157 ], [ 0.000000e+00, %6159 ]
  %6464 = phi float [ %6220, %6177 ], [ %6379, %6342 ], [ %6461, %6423 ], [ 0.000000e+00, %6157 ], [ 0.000000e+00, %6159 ]
  %6465 = phi float [ %6207, %6177 ], [ %6366, %6342 ], [ %6448, %6423 ], [ 0.000000e+00, %6157 ], [ 0.000000e+00, %6159 ]
  %6466 = phi float [ %6208, %6177 ], [ %6367, %6342 ], [ %6449, %6423 ], [ 0.000000e+00, %6157 ], [ 0.000000e+00, %6159 ]
  %6467 = phi float [ %6209, %6177 ], [ %6368, %6342 ], [ %6450, %6423 ], [ 0.000000e+00, %6157 ], [ 0.000000e+00, %6159 ]
  %6468 = fmul fast float %6100, %6464
  %6469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6470 = extractvalue %dx.types.CBufRet.f32 %6469, 2
  %6471 = fsub fast float %6107, %6470
  %6472 = fcmp fast olt float %6468, -2.000000e+01
  %6473 = call float @dx.op.unary.f32(i32 21, float %6468)  ; Exp(value)
  %6474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6475 = extractvalue %dx.types.CBufRet.f32 %6474, 2
  %6476 = extractvalue %dx.types.CBufRet.f32 %6474, 3
  %6477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6478 = extractvalue %dx.types.CBufRet.f32 %6477, 2
  %6479 = fmul fast float %6476, %6471
  %6480 = call float @dx.op.unary.f32(i32 7, float %6479)  ; Saturate(value)
  %6481 = fsub fast float 1.000000e+00, %6480
  %6482 = fmul fast float %6092, 5.000000e-01
  %6483 = fadd fast float %6482, 5.000000e-01
  %6484 = call float @dx.op.unary.f32(i32 7, float %6483)  ; Saturate(value)
  %6485 = fsub fast float 1.000000e+00, %6484
  %6486 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6481)  ; FMax(a,b)
  %6487 = fdiv fast float %6485, %6486
  %6488 = fsub fast float %6471, %6049
  %6489 = call float @dx.op.unary.f32(i32 6, float %6488)  ; FAbs(value)
  %6490 = fmul fast float %6489, %6475
  %6491 = call float @dx.op.unary.f32(i32 7, float %6487)  ; Saturate(value)
  %6492 = fsub fast float 1.000000e+00, %6490
  %6493 = fmul fast float %6492, %6491
  %6494 = fadd fast float %6493, %6490
  %6495 = fmul fast float %6478, %6471
  %6496 = call float @dx.op.unary.f32(i32 7, float %6495)  ; Saturate(value)
  %6497 = fsub fast float 1.000000e+00, %6494
  %6498 = fmul fast float %6497, %6496
  %6499 = fadd fast float %6498, %6494
  %6500 = call float @dx.op.unary.f32(i32 7, float %6499)  ; Saturate(value)
  %6501 = fadd fast float %6473, -1.000000e+00
  %6502 = select i1 %6472, float -1.000000e+00, float %6501
  %6503 = fmul fast float %6500, %6502
  %6504 = fadd fast float %6503, 1.000000e+00
  %6505 = fsub fast float -0.000000e+00, %6503
  %6506 = fmul fast float %6465, %6505
  %6507 = fmul fast float %6466, %6505
  %6508 = fmul fast float %6467, %6505
  br label %6509

; <label>:6509                                    ; preds = %6462, %6058
  %6510 = phi float [ %6463, %6462 ], [ 0.000000e+00, %6058 ]
  %6511 = phi float [ %6504, %6462 ], [ 1.000000e+00, %6058 ]
  %6512 = phi float [ %6506, %6462 ], [ 0.000000e+00, %6058 ]
  %6513 = phi float [ %6507, %6462 ], [ 0.000000e+00, %6058 ]
  %6514 = phi float [ %6508, %6462 ], [ 0.000000e+00, %6058 ]
  %6515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6516 = extractvalue %dx.types.CBufRet.f32 %6515, 1
  %6517 = fsub fast float 1.000000e+00, %6511
  %6518 = fmul fast float %6517, %6093
  %6519 = fmul fast float %6518, %6516
  %6520 = fsub fast float %6093, %6519
  br i1 %6086, label %6521, label %6550, !dx.controlflow.hints !141

; <label>:6521                                    ; preds = %6509
  %6522 = fmul fast float %6094, %6083
  %6523 = fadd fast float %6522, %6084
  %6524 = call float @dx.op.unary.f32(i32 7, float %6523)  ; Saturate(value)
  %6525 = fmul fast float %6065, %6520
  %6526 = fsub fast float -0.000000e+00, %6525
  %6527 = fmul fast float %6066, %6520
  %6528 = fsub fast float -0.000000e+00, %6527
  %6529 = call float @dx.op.unary.f32(i32 21, float %6526)  ; Exp(value)
  %6530 = call float @dx.op.unary.f32(i32 21, float %6528)  ; Exp(value)
  %6531 = call float @dx.op.binary.f32(i32 35, float %6073, float %6529)  ; FMax(a,b)
  %6532 = call float @dx.op.binary.f32(i32 35, float %6073, float %6530)  ; FMax(a,b)
  %6533 = fsub fast float %6532, %6531
  %6534 = fmul fast float %6533, %6524
  %6535 = fadd fast float %6534, %6531
  %6536 = call float @dx.op.unary.f32(i32 7, float %6535)  ; Saturate(value)
  %6537 = fsub fast float %6070, %6075
  %6538 = fsub fast float %6071, %6076
  %6539 = fsub fast float %6072, %6077
  %6540 = fmul fast float %6524, %6537
  %6541 = fmul fast float %6524, %6538
  %6542 = fmul fast float %6524, %6539
  %6543 = fadd fast float %6540, %6075
  %6544 = fadd fast float %6541, %6076
  %6545 = fadd fast float %6542, %6077
  %6546 = fsub fast float 1.000000e+00, %6536
  %6547 = fmul fast float %6546, %6543
  %6548 = fmul fast float %6546, %6544
  %6549 = fmul fast float %6546, %6545
  br label %6609

; <label>:6550                                    ; preds = %6509
  %6551 = fmul fast float %6520, %6082
  %6552 = call float @dx.op.unary.f32(i32 7, float %6551)  ; Saturate(value)
  %6553 = fsub fast float 2.000000e+00, %6552
  %6554 = fmul fast float %6552, 9.921875e-01
  %6555 = fmul fast float %6554, %6553
  %6556 = fadd fast float %6555, 3.906250e-03
  %6557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %35, float %6556, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6558 = extractvalue %dx.types.ResRet.f32 %6557, 0
  %6559 = fsub fast float %6552, %6558
  %6560 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6559)  ; FMax(a,b)
  %6561 = fmul fast float %6068, %6049
  %6562 = call float @dx.op.unary.f32(i32 6, float %6561)  ; FAbs(value)
  %6563 = fcmp fast ogt float %6562, 0x3EB0C6F7A0000000
  br i1 %6563, label %6564, label %6570, !dx.controlflow.hints !142

; <label>:6564                                    ; preds = %6550
  %6565 = fmul fast float %6561, 0xBFF7154760000000
  %6566 = call float @dx.op.unary.f32(i32 21, float %6565)  ; Exp(value)
  %6567 = fsub fast float 1.000000e+00, %6566
  %6568 = fdiv fast float %6567, %6561
  %6569 = fmul fast float %6568, %6078
  br label %6570

; <label>:6570                                    ; preds = %6564, %6550
  %6571 = phi float [ %6569, %6564 ], [ %6078, %6550 ]
  %6572 = fadd fast float %6571, %6080
  %6573 = fmul fast float %6572, %6560
  %6574 = fmul fast float %6065, %6573
  %6575 = fsub fast float -0.000000e+00, %6574
  %6576 = fmul fast float %6066, %6573
  %6577 = fsub fast float -0.000000e+00, %6576
  %6578 = fmul fast float %6067, %6573
  %6579 = fsub fast float -0.000000e+00, %6578
  %6580 = call float @dx.op.unary.f32(i32 21, float %6575)  ; Exp(value)
  %6581 = call float @dx.op.unary.f32(i32 21, float %6577)  ; Exp(value)
  %6582 = call float @dx.op.unary.f32(i32 21, float %6579)  ; Exp(value)
  %6583 = fmul fast float %6094, %6094
  %6584 = fadd fast float %6583, 1.000000e+00
  %6585 = fmul fast float %6584, 0x3FAE8EC8A0000000
  %6586 = fmul fast float %6585, %6075
  %6587 = fmul fast float %6585, %6076
  %6588 = fmul fast float %6585, %6077
  %6589 = fmul fast float %6094, %6073
  %6590 = fsub fast float 1.000000e+00, %6589
  %6591 = fmul fast float %6073, %6073
  %6592 = fsub fast float 1.000000e+00, %6591
  %6593 = fmul fast float %6592, 0x3FB45F3060000000
  %6594 = fmul fast float %6590, %6590
  %6595 = fdiv fast float 1.000000e+00, %6594
  %6596 = fmul fast float %6593, %6595
  %6597 = fmul fast float %6596, %6070
  %6598 = fmul fast float %6596, %6071
  %6599 = fmul fast float %6596, %6072
  %6600 = fadd fast float %6597, %6586
  %6601 = fadd fast float %6598, %6587
  %6602 = fadd fast float %6599, %6588
  %6603 = fsub fast float 1.000000e+00, %6580
  %6604 = fsub fast float 1.000000e+00, %6581
  %6605 = fsub fast float 1.000000e+00, %6582
  %6606 = fmul fast float %6600, %6603
  %6607 = fmul fast float %6601, %6604
  %6608 = fmul fast float %6602, %6605
  br label %6609

; <label>:6609                                    ; preds = %6570, %6521
  %6610 = phi float [ %6547, %6521 ], [ %6606, %6570 ]
  %6611 = phi float [ %6548, %6521 ], [ %6607, %6570 ]
  %6612 = phi float [ %6549, %6521 ], [ %6608, %6570 ]
  %6613 = phi float [ %6536, %6521 ], [ %6580, %6570 ]
  %6614 = phi float [ %6536, %6521 ], [ %6581, %6570 ]
  %6615 = phi float [ %6536, %6521 ], [ %6582, %6570 ]
  br i1 %6102, label %6616, label %6814, !dx.controlflow.hints !143

; <label>:6616                                    ; preds = %6609
  %6617 = extractvalue %dx.types.CBufRet.f32 %6515, 0
  %6618 = fmul fast float %6617, %6517
  %6619 = fsub fast float %6512, %6610
  %6620 = fsub fast float %6513, %6611
  %6621 = fsub fast float %6514, %6612
  %6622 = fmul fast float %6618, %6619
  %6623 = fmul fast float %6618, %6620
  %6624 = fmul fast float %6618, %6621
  %6625 = fadd fast float %6622, %6610
  %6626 = fadd fast float %6623, %6611
  %6627 = fadd fast float %6624, %6612
  %6628 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6613)  ; FMax(a,b)
  %6629 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6614)  ; FMax(a,b)
  %6630 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6615)  ; FMax(a,b)
  %6631 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6511)  ; FMax(a,b)
  %6632 = call float @dx.op.binary.f32(i32 35, float %6510, float %6520)  ; FMax(a,b)
  %6633 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6632)  ; FMax(a,b)
  %6634 = fdiv fast float %6510, %6633
  %6635 = call float @dx.op.unary.f32(i32 7, float %6634)  ; Saturate(value)
  %6636 = fdiv fast float %6520, %6633
  %6637 = call float @dx.op.unary.f32(i32 7, float %6636)  ; Saturate(value)
  %6638 = fcmp fast une float %6631, 1.000000e+00
  br i1 %6638, label %6639, label %6652, !dx.controlflow.hints !144

; <label>:6639                                    ; preds = %6616
  %6640 = call float @dx.op.unary.f32(i32 23, float %6631)  ; Log(value)
  %6641 = fmul fast float %6640, 0x3FE62E4300000000
  %6642 = fmul fast float %6512, %6641
  %6643 = fsub fast float -0.000000e+00, %6642
  %6644 = fmul fast float %6513, %6641
  %6645 = fsub fast float -0.000000e+00, %6644
  %6646 = fmul fast float %6514, %6641
  %6647 = fsub fast float -0.000000e+00, %6646
  %6648 = fsub fast float 1.000000e+00, %6631
  %6649 = fdiv fast float %6643, %6648
  %6650 = fdiv fast float %6645, %6648
  %6651 = fdiv fast float %6647, %6648
  br label %6652

; <label>:6652                                    ; preds = %6639, %6616
  %6653 = phi float [ %6649, %6639 ], [ %6512, %6616 ]
  %6654 = phi float [ %6650, %6639 ], [ %6513, %6616 ]
  %6655 = phi float [ %6651, %6639 ], [ %6514, %6616 ]
  %6656 = phi float [ %6641, %6639 ], [ 0.000000e+00, %6616 ]
  %6657 = fcmp fast une float %6628, 1.000000e+00
  br i1 %6657, label %6658, label %6665, !dx.controlflow.hints !145

; <label>:6658                                    ; preds = %6652
  %6659 = call float @dx.op.unary.f32(i32 23, float %6628)  ; Log(value)
  %6660 = fmul fast float %6659, 0x3FE62E4300000000
  %6661 = fmul fast float %6625, %6660
  %6662 = fsub fast float -0.000000e+00, %6661
  %6663 = fsub fast float 1.000000e+00, %6628
  %6664 = fdiv fast float %6662, %6663
  br label %6665

; <label>:6665                                    ; preds = %6658, %6652
  %6666 = phi float [ %6664, %6658 ], [ %6625, %6652 ]
  %6667 = phi float [ %6660, %6658 ], [ 0.000000e+00, %6652 ]
  %6668 = fcmp fast une float %6629, 1.000000e+00
  br i1 %6668, label %6669, label %6676, !dx.controlflow.hints !145

; <label>:6669                                    ; preds = %6665
  %6670 = call float @dx.op.unary.f32(i32 23, float %6629)  ; Log(value)
  %6671 = fmul fast float %6670, 0x3FE62E4300000000
  %6672 = fmul fast float %6626, %6671
  %6673 = fsub fast float -0.000000e+00, %6672
  %6674 = fsub fast float 1.000000e+00, %6629
  %6675 = fdiv fast float %6673, %6674
  br label %6676

; <label>:6676                                    ; preds = %6669, %6665
  %6677 = phi float [ %6675, %6669 ], [ %6626, %6665 ]
  %6678 = phi float [ %6671, %6669 ], [ 0.000000e+00, %6665 ]
  %6679 = fcmp fast une float %6630, 1.000000e+00
  br i1 %6679, label %6680, label %6687, !dx.controlflow.hints !145

; <label>:6680                                    ; preds = %6676
  %6681 = call float @dx.op.unary.f32(i32 23, float %6630)  ; Log(value)
  %6682 = fmul fast float %6681, 0x3FE62E4300000000
  %6683 = fmul fast float %6627, %6682
  %6684 = fsub fast float -0.000000e+00, %6683
  %6685 = fsub fast float 1.000000e+00, %6630
  %6686 = fdiv fast float %6684, %6685
  br label %6687

; <label>:6687                                    ; preds = %6680, %6676
  %6688 = phi float [ %6686, %6680 ], [ %6627, %6676 ]
  %6689 = phi float [ %6682, %6680 ], [ 0.000000e+00, %6676 ]
  %6690 = fmul fast float %6653, %6637
  %6691 = fmul fast float %6654, %6637
  %6692 = fmul fast float %6655, %6637
  %6693 = fmul fast float %6656, %6637
  %6694 = fmul fast float %6666, %6635
  %6695 = fmul fast float %6677, %6635
  %6696 = fmul fast float %6688, %6635
  %6697 = fmul fast float %6667, %6635
  %6698 = fmul fast float %6678, %6635
  %6699 = fmul fast float %6689, %6635
  %6700 = fadd fast float %6694, %6690
  %6701 = fadd fast float %6695, %6691
  %6702 = fadd fast float %6696, %6692
  %6703 = fadd fast float %6697, %6693
  %6704 = fadd fast float %6698, %6693
  %6705 = fadd fast float %6699, %6693
  %6706 = fcmp fast une float %6703, 0.000000e+00
  br i1 %6706, label %6707, label %6714, !dx.controlflow.hints !146

; <label>:6707                                    ; preds = %6687
  %6708 = fmul fast float %6703, 0x3FF7154760000000
  %6709 = call float @dx.op.unary.f32(i32 21, float %6708)  ; Exp(value)
  %6710 = fsub fast float 1.000000e+00, %6709
  %6711 = fmul fast float %6700, %6710
  %6712 = fsub fast float -0.000000e+00, %6711
  %6713 = fdiv fast float %6712, %6703
  br label %6714

; <label>:6714                                    ; preds = %6707, %6687
  %6715 = phi float [ %6709, %6707 ], [ 1.000000e+00, %6687 ]
  %6716 = phi float [ %6713, %6707 ], [ %6700, %6687 ]
  %6717 = fcmp fast une float %6704, 0.000000e+00
  br i1 %6717, label %6718, label %6725, !dx.controlflow.hints !146

; <label>:6718                                    ; preds = %6714
  %6719 = fmul fast float %6704, 0x3FF7154760000000
  %6720 = call float @dx.op.unary.f32(i32 21, float %6719)  ; Exp(value)
  %6721 = fsub fast float 1.000000e+00, %6720
  %6722 = fmul fast float %6701, %6721
  %6723 = fsub fast float -0.000000e+00, %6722
  %6724 = fdiv fast float %6723, %6704
  br label %6725

; <label>:6725                                    ; preds = %6718, %6714
  %6726 = phi float [ %6720, %6718 ], [ 1.000000e+00, %6714 ]
  %6727 = phi float [ %6724, %6718 ], [ %6701, %6714 ]
  %6728 = fcmp fast une float %6705, 0.000000e+00
  br i1 %6728, label %6729, label %6736, !dx.controlflow.hints !146

; <label>:6729                                    ; preds = %6725
  %6730 = fmul fast float %6705, 0x3FF7154760000000
  %6731 = call float @dx.op.unary.f32(i32 21, float %6730)  ; Exp(value)
  %6732 = fsub fast float 1.000000e+00, %6731
  %6733 = fmul fast float %6702, %6732
  %6734 = fsub fast float -0.000000e+00, %6733
  %6735 = fdiv fast float %6734, %6705
  br label %6736

; <label>:6736                                    ; preds = %6729, %6725
  %6737 = phi float [ %6731, %6729 ], [ 1.000000e+00, %6725 ]
  %6738 = phi float [ %6735, %6729 ], [ %6702, %6725 ]
  %6739 = fcmp fast ogt float %6635, %6637
  br i1 %6739, label %6740, label %6760

; <label>:6740                                    ; preds = %6736
  %6741 = fsub fast float 1.000000e+00, %6637
  %6742 = fmul fast float %6653, %6741
  %6743 = fmul fast float %6654, %6741
  %6744 = fmul fast float %6655, %6741
  %6745 = fmul fast float %6656, %6741
  %6746 = fcmp fast une float %6745, 0.000000e+00
  br i1 %6746, label %6747, label %6798, !dx.controlflow.hints !147

; <label>:6747                                    ; preds = %6740
  %6748 = fmul fast float %6745, 0x3FF7154760000000
  %6749 = call float @dx.op.unary.f32(i32 21, float %6748)  ; Exp(value)
  %6750 = fsub fast float 1.000000e+00, %6749
  %6751 = fmul fast float %6742, %6750
  %6752 = fsub fast float -0.000000e+00, %6751
  %6753 = fmul fast float %6743, %6750
  %6754 = fsub fast float -0.000000e+00, %6753
  %6755 = fmul fast float %6744, %6750
  %6756 = fsub fast float -0.000000e+00, %6755
  %6757 = fdiv fast float %6752, %6745
  %6758 = fdiv fast float %6754, %6745
  %6759 = fdiv fast float %6756, %6745
  br label %6798

; <label>:6760                                    ; preds = %6736
  %6761 = fsub fast float 1.000000e+00, %6635
  %6762 = fmul fast float %6666, %6761
  %6763 = fmul fast float %6677, %6761
  %6764 = fmul fast float %6688, %6761
  %6765 = fmul fast float %6667, %6761
  %6766 = fmul fast float %6678, %6761
  %6767 = fmul fast float %6689, %6761
  %6768 = fcmp fast une float %6765, 0.000000e+00
  br i1 %6768, label %6769, label %6776, !dx.controlflow.hints !146

; <label>:6769                                    ; preds = %6760
  %6770 = fmul fast float %6765, 0x3FF7154760000000
  %6771 = call float @dx.op.unary.f32(i32 21, float %6770)  ; Exp(value)
  %6772 = fsub fast float 1.000000e+00, %6771
  %6773 = fmul fast float %6762, %6772
  %6774 = fsub fast float -0.000000e+00, %6773
  %6775 = fdiv fast float %6774, %6765
  br label %6776

; <label>:6776                                    ; preds = %6769, %6760
  %6777 = phi float [ %6775, %6769 ], [ %6762, %6760 ]
  %6778 = phi float [ %6771, %6769 ], [ 1.000000e+00, %6760 ]
  %6779 = fcmp fast une float %6766, 0.000000e+00
  br i1 %6779, label %6780, label %6787, !dx.controlflow.hints !146

; <label>:6780                                    ; preds = %6776
  %6781 = fmul fast float %6766, 0x3FF7154760000000
  %6782 = call float @dx.op.unary.f32(i32 21, float %6781)  ; Exp(value)
  %6783 = fsub fast float 1.000000e+00, %6782
  %6784 = fmul fast float %6763, %6783
  %6785 = fsub fast float -0.000000e+00, %6784
  %6786 = fdiv fast float %6785, %6766
  br label %6787

; <label>:6787                                    ; preds = %6780, %6776
  %6788 = phi float [ %6786, %6780 ], [ %6763, %6776 ]
  %6789 = phi float [ %6782, %6780 ], [ 1.000000e+00, %6776 ]
  %6790 = fcmp fast une float %6767, 0.000000e+00
  br i1 %6790, label %6791, label %6798, !dx.controlflow.hints !146

; <label>:6791                                    ; preds = %6787
  %6792 = fmul fast float %6767, 0x3FF7154760000000
  %6793 = call float @dx.op.unary.f32(i32 21, float %6792)  ; Exp(value)
  %6794 = fsub fast float 1.000000e+00, %6793
  %6795 = fmul fast float %6764, %6794
  %6796 = fsub fast float -0.000000e+00, %6795
  %6797 = fdiv fast float %6796, %6767
  br label %6798

; <label>:6798                                    ; preds = %6791, %6787, %6747, %6740
  %6799 = phi float [ %6797, %6791 ], [ %6759, %6747 ], [ %6744, %6740 ], [ %6764, %6787 ]
  %6800 = phi float [ %6788, %6791 ], [ %6758, %6747 ], [ %6743, %6740 ], [ %6788, %6787 ]
  %6801 = phi float [ %6777, %6791 ], [ %6757, %6747 ], [ %6742, %6740 ], [ %6777, %6787 ]
  %6802 = phi float [ %6793, %6791 ], [ %6749, %6747 ], [ 1.000000e+00, %6740 ], [ 1.000000e+00, %6787 ]
  %6803 = phi float [ %6789, %6791 ], [ %6749, %6747 ], [ 1.000000e+00, %6740 ], [ %6789, %6787 ]
  %6804 = phi float [ %6778, %6791 ], [ %6749, %6747 ], [ 1.000000e+00, %6740 ], [ %6778, %6787 ]
  %6805 = fmul fast float %6804, %6716
  %6806 = fmul fast float %6803, %6727
  %6807 = fmul fast float %6802, %6738
  %6808 = fadd fast float %6805, %6801
  %6809 = fadd fast float %6806, %6800
  %6810 = fadd fast float %6807, %6799
  %6811 = fmul fast float %6804, %6715
  %6812 = fmul fast float %6803, %6726
  %6813 = fmul fast float %6802, %6737
  br label %6814

; <label>:6814                                    ; preds = %6798, %6609
  %6815 = phi float [ %6813, %6798 ], [ %6615, %6609 ]
  %6816 = phi float [ %6812, %6798 ], [ %6614, %6609 ]
  %6817 = phi float [ %6811, %6798 ], [ %6613, %6609 ]
  %6818 = phi float [ %6810, %6798 ], [ %6612, %6609 ]
  %6819 = phi float [ %6809, %6798 ], [ %6611, %6609 ]
  %6820 = phi float [ %6808, %6798 ], [ %6610, %6609 ]
  %6821 = fmul fast float %6820, %5766
  %6822 = fmul fast float %6819, %5766
  %6823 = fmul fast float %6818, %5766
  %6824 = fmul fast float %6817, %6057
  %6825 = call float @dx.op.dot3.f32(i32 55, float %6817, float %6816, float %6815, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6826 = call float @dx.op.dot3.f32(i32 55, float %6821, float %6822, float %6823, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6827 = select i1 %206, float %6825, float %6817
  %6828 = select i1 %206, float %6825, float %6816
  %6829 = select i1 %206, float 1.000000e+00, float %6815
  %6830 = select i1 %206, float %6826, float %6821
  %6831 = select i1 %206, float 0.000000e+00, float %6822
  %6832 = select i1 %206, float 0.000000e+00, float %6823
  %6833 = fmul fast float %6827, %6051
  %6834 = fmul fast float %6828, %6052
  %6835 = fmul fast float %6829, %6053
  %6836 = fadd fast float %6833, %6830
  %6837 = fadd fast float %6834, %6831
  %6838 = fadd fast float %6832, %6835
  %6839 = fmul fast float %6827, %6054
  %6840 = fmul fast float %6828, %6055
  %6841 = fmul fast float %6829, %6056
  %6842 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6843 = extractvalue %dx.types.CBufRet.i32 %6842, 0
  %6844 = icmp eq i32 %6843, 0
  br i1 %6844, label %7212, label %6845, !dx.controlflow.hints !148

; <label>:6845                                    ; preds = %6814
  %6846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6847 = extractvalue %dx.types.CBufRet.f32 %6846, 2
  %6848 = extractvalue %dx.types.CBufRet.f32 %6846, 3
  %6849 = fmul fast float %6847, %82
  %6850 = fmul fast float %6848, %83
  %6851 = fmul fast float %6849, 2.000000e+00
  %6852 = fmul fast float %6850, 2.000000e+00
  %6853 = fsub fast float 1.000000e+00, %6851
  %6854 = fsub fast float 1.000000e+00, %6852
  %6855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6856 = extractvalue %dx.types.CBufRet.f32 %6855, 0
  %6857 = extractvalue %dx.types.CBufRet.f32 %6855, 1
  %6858 = extractvalue %dx.types.CBufRet.f32 %6855, 2
  %6859 = fmul fast float %6853, %6856
  %6860 = fmul fast float %6853, %6857
  %6861 = fmul fast float %6853, %6858
  %6862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6863 = extractvalue %dx.types.CBufRet.f32 %6862, 0
  %6864 = extractvalue %dx.types.CBufRet.f32 %6862, 1
  %6865 = extractvalue %dx.types.CBufRet.f32 %6862, 2
  %6866 = fmul fast float %6854, %6863
  %6867 = fmul fast float %6854, %6864
  %6868 = fmul fast float %6854, %6865
  %6869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6870 = extractvalue %dx.types.CBufRet.f32 %6869, 0
  %6871 = extractvalue %dx.types.CBufRet.f32 %6869, 1
  %6872 = extractvalue %dx.types.CBufRet.f32 %6869, 2
  %6873 = fadd fast float %6866, %6870
  %6874 = fadd fast float %6873, %6859
  %6875 = fadd fast float %6867, %6871
  %6876 = fadd fast float %6875, %6860
  %6877 = fadd fast float %6868, %6872
  %6878 = fadd fast float %6877, %6861
  %6879 = fmul fast float %6874, %6050
  %6880 = fmul fast float %6876, %6050
  %6881 = fmul fast float %6878, %6050
  %6882 = fmul fast float %6879, %6879
  %6883 = fmul fast float %6880, %6880
  %6884 = fadd fast float %6882, %6883
  %6885 = fmul fast float %6881, %6881
  %6886 = fadd fast float %6884, %6885
  %6887 = call float @dx.op.unary.f32(i32 24, float %6886)  ; Sqrt(value)
  %6888 = extractvalue %dx.types.CBufRet.f32 %5777, 0
  %6889 = fsub fast float %6887, %6888
  %6890 = extractvalue %dx.types.CBufRet.f32 %5777, 2
  %6891 = fmul fast float %6889, %6890
  %6892 = call float @dx.op.unary.f32(i32 7, float %6891)  ; Saturate(value)
  %6893 = fadd fast float %6892, -5.000000e-01
  %6894 = fmul fast float %6893, 2.000000e+00
  %6895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6896 = extractvalue %dx.types.CBufRet.f32 %6895, 2
  %6897 = call float @dx.op.binary.f32(i32 36, float %6896, float %6894)  ; FMin(a,b)
  %6898 = fsub fast float -0.000000e+00, %6896
  %6899 = fcmp fast ogt float %6897, %6898
  br i1 %6899, label %6900, label %7212, !dx.controlflow.hints !149

; <label>:6900                                    ; preds = %6845
  %6901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6902 = extractvalue %dx.types.CBufRet.f32 %6901, 3
  %6903 = fcmp fast ogt float %6902, 0.000000e+00
  br i1 %6903, label %6904, label %6979, !dx.controlflow.hints !150

; <label>:6904                                    ; preds = %6900
  %6905 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %6906 = extractvalue %dx.types.Dimensions %6905, 0
  %6907 = sitofp i32 %6906 to float
  %6908 = extractvalue %dx.types.Dimensions %6905, 1
  %6909 = sitofp i32 %6908 to float
  %6910 = fmul fast float %6849, %6907
  %6911 = fmul fast float %6850, %6909
  %6912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6913 = extractvalue %dx.types.CBufRet.f32 %6912, 1
  %6914 = fsub fast float -0.000000e+00, %6913
  %6915 = fptoui float %6914 to i32
  %6916 = fptoui float %6910 to i32
  %6917 = fptoui float %6911 to i32
  %6918 = and i32 %6915, 31
  %6919 = lshr i32 %6916, %6918
  %6920 = lshr i32 %6917, %6918
  %6921 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %6915, i32 %6919, i32 %6920, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6922 = extractvalue %dx.types.ResRet.f32 %6921, 0
  %6923 = fcmp fast olt float %6922, -1.000000e+00
  %6924 = fcmp fast ogt float %6922, -1.000000e+00
  %6925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6926 = extractvalue %dx.types.CBufRet.f32 %6925, 1
  %6927 = select i1 %6924, float %6926, float 1.000000e+00
  %6928 = fadd fast float %6922, 1.000000e+00
  %6929 = fmul fast float %6927, %6928
  %6930 = call float @dx.op.unary.f32(i32 6, float %6929)  ; FAbs(value)
  %6931 = extractvalue %dx.types.CBufRet.f32 %6925, 3
  %6932 = fcmp fast oge float %6930, %6931
  %6933 = select i1 %6932, float 0x4197782600000000, float %6930
  %6934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6935 = extractvalue %dx.types.CBufRet.f32 %6934, 0
  %6936 = extractvalue %dx.types.CBufRet.f32 %6934, 1
  %6937 = extractvalue %dx.types.CBufRet.f32 %6934, 2
  %6938 = select i1 %6923, float %6935, float %6856
  %6939 = select i1 %6923, float %6936, float %6857
  %6940 = select i1 %6923, float %6937, float %6858
  %6941 = fmul fast float %6938, %6853
  %6942 = fmul fast float %6939, %6853
  %6943 = fmul fast float %6940, %6853
  %6944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6945 = extractvalue %dx.types.CBufRet.f32 %6944, 0
  %6946 = extractvalue %dx.types.CBufRet.f32 %6944, 1
  %6947 = extractvalue %dx.types.CBufRet.f32 %6944, 2
  %6948 = select i1 %6923, float %6945, float %6863
  %6949 = select i1 %6923, float %6946, float %6864
  %6950 = select i1 %6923, float %6947, float %6865
  %6951 = fmul fast float %6948, %6854
  %6952 = fmul fast float %6949, %6854
  %6953 = fmul fast float %6950, %6854
  %6954 = fadd fast float %6951, %6941
  %6955 = fadd fast float %6952, %6942
  %6956 = fadd fast float %6953, %6943
  %6957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6958 = extractvalue %dx.types.CBufRet.f32 %6957, 0
  %6959 = extractvalue %dx.types.CBufRet.f32 %6957, 1
  %6960 = extractvalue %dx.types.CBufRet.f32 %6957, 2
  %6961 = select i1 %6923, float %6958, float %6870
  %6962 = select i1 %6923, float %6959, float %6871
  %6963 = select i1 %6923, float %6960, float %6872
  %6964 = fadd fast float %6954, %6961
  %6965 = fadd fast float %6955, %6962
  %6966 = fadd fast float %6956, %6963
  %6967 = fmul fast float %6964, %6933
  %6968 = fmul fast float %6965, %6933
  %6969 = fmul fast float %6966, %6933
  %6970 = fmul fast float %6967, %6967
  %6971 = fmul fast float %6968, %6968
  %6972 = fadd fast float %6970, %6971
  %6973 = fmul fast float %6969, %6969
  %6974 = fadd fast float %6972, %6973
  %6975 = call float @dx.op.unary.f32(i32 24, float %6974)  ; Sqrt(value)
  %6976 = fsub fast float %6975, %6888
  %6977 = fmul fast float %6976, %6890
  %6978 = call float @dx.op.unary.f32(i32 7, float %6977)  ; Saturate(value)
  br label %6979

; <label>:6979                                    ; preds = %6904, %6900
  %6980 = phi float [ %6978, %6904 ], [ 1.000000e+00, %6900 ]
  %6981 = fmul fast float %6897, 5.000000e-01
  %6982 = fadd fast float %6981, 5.000000e-01
  %6983 = call float @dx.op.unary.f32(i32 22, float %6982)  ; Frc(value)
  %6984 = call float @dx.op.unary.f32(i32 27, float %6983)  ; Round_ni(value)
  %6985 = call float @dx.op.unary.f32(i32 22, float %6983)  ; Frc(value)
  %6986 = fmul fast float %6985, 2.000000e+00
  %6987 = fadd fast float %6986, -1.000000e+00
  %6988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %6849, float %6850, float %6984, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6989 = extractvalue %dx.types.ResRet.f32 %6988, 0
  %6990 = extractvalue %dx.types.ResRet.f32 %6988, 1
  %6991 = extractvalue %dx.types.ResRet.f32 %6988, 2
  %6992 = extractvalue %dx.types.ResRet.f32 %6988, 3
  %6993 = fadd fast float %6989, -5.000000e-01
  %6994 = fadd fast float %6991, -5.000000e-01
  %6995 = fmul fast float %6993, 0xBFD5555560000000
  %6996 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6994, float %6995)  ; FMad(a,b,c)
  %6997 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6990, float 0.000000e+00)  ; FMad(a,b,c)
  %6998 = fadd fast float %6997, %6992
  %6999 = fmul fast float %6993, -7.500000e-01
  %7000 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6994, float %6999)  ; FMad(a,b,c)
  %7001 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6990, float 0.000000e+00)  ; FMad(a,b,c)
  %7002 = fadd fast float %7001, %6992
  %7003 = call float @dx.op.binary.f32(i32 35, float %6996, float -1.000000e+00)  ; FMax(a,b)
  %7004 = call float @dx.op.binary.f32(i32 35, float %6998, float -1.000000e+00)  ; FMax(a,b)
  %7005 = call float @dx.op.binary.f32(i32 35, float %7000, float -1.000000e+00)  ; FMax(a,b)
  %7006 = call float @dx.op.binary.f32(i32 35, float %7002, float -1.000000e+00)  ; FMax(a,b)
  %7007 = call float @dx.op.binary.f32(i32 36, float %7003, float 1.000000e+00)  ; FMin(a,b)
  %7008 = call float @dx.op.binary.f32(i32 36, float %7004, float 1.000000e+00)  ; FMin(a,b)
  %7009 = call float @dx.op.binary.f32(i32 36, float %7005, float 1.000000e+00)  ; FMin(a,b)
  %7010 = call float @dx.op.binary.f32(i32 36, float %7006, float 1.000000e+00)  ; FMin(a,b)
  %7011 = fcmp fast olt float %7007, 0x3FEFFF8020000000
  br i1 %7011, label %7012, label %7127, !dx.controlflow.hints !151

; <label>:7012                                    ; preds = %6979
  %7013 = extractvalue %dx.types.CBufRet.f32 %6895, 3
  %7014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7015 = extractvalue %dx.types.CBufRet.f32 %7014, 0
  %7016 = extractvalue %dx.types.CBufRet.f32 %7014, 1
  %7017 = extractvalue %dx.types.CBufRet.f32 %7014, 2
  %7018 = extractvalue %dx.types.CBufRet.f32 %7014, 3
  %7019 = fsub fast float %7015, %7007
  %7020 = fsub fast float %7016, %7008
  %7021 = fsub fast float %7017, %7009
  %7022 = fsub fast float %7018, %7010
  %7023 = fmul fast float %7019, %7013
  %7024 = fmul fast float %7020, %7013
  %7025 = fmul fast float %7021, %7013
  %7026 = fmul fast float %7022, %7013
  %7027 = fadd fast float %7023, %7007
  %7028 = fadd fast float %7024, %7008
  %7029 = fsub fast float -0.000000e+00, %7028
  %7030 = fadd fast float %7025, %7009
  %7031 = fadd fast float %7026, %7010
  %7032 = fmul fast float %7027, %7027
  %7033 = fsub fast float %7028, %7032
  %7034 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7033)  ; FMax(a,b)
  %7035 = fdiv fast float 1.000000e+00, %7034
  %7036 = fmul fast float %7028, %7027
  %7037 = fsub fast float %7030, %7036
  %7038 = fsub fast float %6987, %7027
  %7039 = fmul fast float %6987, %6987
  %7040 = fsub fast float %7039, %7028
  %7041 = fmul fast float %7038, %7035
  %7042 = fmul fast float %7041, %7037
  %7043 = fsub fast float %7040, %7042
  %7044 = fmul fast float %7028, %7028
  %7045 = fsub fast float %7031, %7044
  %7046 = fmul fast float %7037, %7037
  %7047 = fmul fast float %7046, %7035
  %7048 = fsub fast float %7045, %7047
  %7049 = fdiv fast float %7043, %7048
  %7050 = fmul fast float %7037, %7049
  %7051 = fsub fast float %7038, %7050
  %7052 = fmul fast float %7051, %7035
  %7053 = fmul fast float %7052, %7027
  %7054 = fsub fast float 1.000000e+00, %7053
  %7055 = fmul fast float %7028, %7049
  %7056 = fsub fast float %7054, %7055
  %7057 = fmul fast float %7052, %7052
  %7058 = fmul fast float %7049, 4.000000e+00
  %7059 = fmul fast float %7058, %7056
  %7060 = fsub fast float %7057, %7059
  %7061 = call float @dx.op.unary.f32(i32 24, float %7060)  ; Sqrt(value)
  %7062 = fcmp fast oge float %7052, 0.000000e+00
  %7063 = fsub fast float -0.000000e+00, %7061
  %7064 = select i1 %7062, float %7063, float %7061
  %7065 = fsub fast float %7064, %7052
  %7066 = fdiv fast float %7065, %7049
  %7067 = fdiv fast float %7056, %7065
  %7068 = fmul fast float %7066, 5.000000e-01
  %7069 = fmul fast float %7067, 2.000000e+00
  %7070 = select i1 %7062, float %7068, float %7069
  %7071 = select i1 %7062, float %7069, float %7068
  %7072 = call float @dx.op.binary.f32(i32 35, float %7070, float %7071)  ; FMax(a,b)
  %7073 = call float @dx.op.binary.f32(i32 36, float %7070, float %7071)  ; FMin(a,b)
  %7074 = fcmp fast ogt float %6987, %7073
  br i1 %7074, label %7075, label %7085

; <label>:7075                                    ; preds = %7012
  %7076 = fsub fast float %6987, %7073
  %7077 = fsub fast float %7072, %7073
  %7078 = fmul fast float %7076, %7077
  %7079 = fmul fast float %7072, %6987
  %7080 = fadd fast float %7072, %6987
  %7081 = fmul fast float %7080, %7027
  %7082 = fadd fast float %7079, %7028
  %7083 = fsub fast float %7082, %7081
  %7084 = fdiv fast float %7083, %7078
  br label %7085

; <label>:7085                                    ; preds = %7075, %7012
  %7086 = phi float [ %7084, %7075 ], [ 0.000000e+00, %7012 ]
  %7087 = fcmp fast ogt float %6987, %7072
  %7088 = fsub fast float %6987, %7072
  br i1 %7087, label %7089, label %7099

; <label>:7089                                    ; preds = %7085
  %7090 = fsub fast float %7072, %7073
  %7091 = fmul fast float %7090, %7088
  %7092 = fmul fast float %7073, %6987
  %7093 = fadd fast float %7073, %6987
  %7094 = fmul fast float %7093, %7027
  %7095 = fsub fast float %7029, %7092
  %7096 = fadd fast float %7095, %7094
  %7097 = fdiv fast float %7096, %7091
  %7098 = fadd fast float %7097, %7086
  br label %7099

; <label>:7099                                    ; preds = %7089, %7085
  %7100 = phi float [ %7098, %7089 ], [ %7086, %7085 ]
  %7101 = fsub fast float %6987, %7073
  %7102 = fmul fast float %7101, %7088
  %7103 = fmul fast float %7073, %7072
  %7104 = fadd fast float %7073, %7072
  %7105 = fmul fast float %7104, %7027
  %7106 = fadd fast float %7103, %7028
  %7107 = fsub fast float %7106, %7105
  %7108 = fdiv fast float %7107, %7102
  %7109 = call float @dx.op.unary.f32(i32 7, float %7100)  ; Saturate(value)
  %7110 = fcmp fast oeq float %5778, 0.000000e+00
  %7111 = extractvalue %dx.types.CBufRet.f32 %6895, 0
  %7112 = fcmp fast oeq float %7111, 0.000000e+00
  %7113 = or i1 %7110, %7112
  %7114 = fmul fast float %7111, 2.000000e+00
  %7115 = fadd fast float %6896, %6897
  %7116 = fdiv fast float %7115, %7114
  %7117 = call float @dx.op.unary.f32(i32 7, float %7116)  ; Saturate(value)
  %7118 = fmul fast float %7117, 2.000000e+00
  %7119 = fsub fast float 3.000000e+00, %7118
  %7120 = fmul fast float %7117, %7117
  %7121 = fmul fast float %7120, %7119
  %7122 = select i1 %7113, float 1.000000e+00, float %7121
  %7123 = fmul fast float %7108, %5778
  %7124 = fadd fast float %7109, %7123
  %7125 = call float @dx.op.unary.f32(i32 7, float %7124)  ; Saturate(value)
  %7126 = fmul fast float %7122, %7125
  br label %7127

; <label>:7127                                    ; preds = %7099, %6979
  %7128 = phi float [ %7126, %7099 ], [ 0.000000e+00, %6979 ]
  %7129 = fsub fast float 1.000000e+00, %7128
  %7130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %35, float %6849, float %6850, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7131 = extractvalue %dx.types.ResRet.f32 %7130, 0
  %7132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7133 = extractvalue %dx.types.CBufRet.i32 %7132, 2
  %7134 = icmp eq i32 %7133, 0
  br i1 %7134, label %7140, label %7135

; <label>:7135                                    ; preds = %7127
  %7136 = call float @dx.op.unary.f32(i32 7, float %7128)  ; Saturate(value)
  %7137 = fadd fast float %7131, -1.000000e+00
  %7138 = fmul fast float %7136, %7137
  %7139 = fadd fast float %7138, 1.000000e+00
  br label %7140

; <label>:7140                                    ; preds = %7135, %7127
  %7141 = phi float [ %7139, %7135 ], [ %7129, %7127 ]
  br i1 %6903, label %7142, label %7160

; <label>:7142                                    ; preds = %7140
  %7143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7144 = extractvalue %dx.types.CBufRet.f32 %7143, 1
  %7145 = fsub fast float %6980, %7144
  %7146 = call float @dx.op.unary.f32(i32 7, float %7145)  ; Saturate(value)
  %7147 = fsub fast float %6980, %6902
  %7148 = call float @dx.op.unary.f32(i32 7, float %7147)  ; Saturate(value)
  %7149 = fsub fast float %7146, %7148
  %7150 = fsub fast float %6982, %7148
  %7151 = fdiv fast float %7150, %7149
  %7152 = call float @dx.op.unary.f32(i32 7, float %7151)  ; Saturate(value)
  %7153 = fmul fast float %7152, 2.000000e+00
  %7154 = fsub fast float 3.000000e+00, %7153
  %7155 = fsub fast float %7131, %7141
  %7156 = fmul fast float %7152, %7152
  %7157 = fmul fast float %7156, %7155
  %7158 = fmul fast float %7157, %7154
  %7159 = fadd fast float %7158, %7141
  br label %7160

; <label>:7160                                    ; preds = %7142, %7140
  %7161 = phi float [ %7159, %7142 ], [ %7141, %7140 ]
  %7162 = call float @dx.op.binary.f32(i32 35, float %7131, float %7161)  ; FMax(a,b)
  %7163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7164 = extractvalue %dx.types.CBufRet.i32 %7163, 2
  %7165 = and i32 %7164, 1
  %7166 = icmp eq i32 %7165, 0
  %7167 = fcmp fast une float %7162, 1.000000e+00
  %7168 = and i1 %7167, %7166
  br i1 %7168, label %7169, label %7188

; <label>:7169                                    ; preds = %7160
  %7170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %35, float %6849, float %6850, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7171 = extractvalue %dx.types.ResRet.f32 %7170, 0
  %7172 = extractvalue %dx.types.ResRet.f32 %7170, 1
  %7173 = extractvalue %dx.types.ResRet.f32 %7170, 2
  %7174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7174, 1
  %7176 = fmul fast float %7175, %7171
  %7177 = fmul fast float %7175, %7172
  %7178 = fmul fast float %7175, %7173
  %7179 = fcmp fast ogt float %7131, 0x3FEFFF2E40000000
  %7180 = fsub fast float 1.000000e+00, %7162
  %7181 = fsub fast float 1.000000e+00, %7131
  %7182 = fdiv fast float %7180, %7181
  %7183 = call float @dx.op.unary.f32(i32 7, float %7182)  ; Saturate(value)
  %7184 = select i1 %7179, float 0.000000e+00, float %7183
  %7185 = fmul fast float %7176, %7184
  %7186 = fmul fast float %7177, %7184
  %7187 = fmul fast float %7178, %7184
  br label %7188

; <label>:7188                                    ; preds = %7169, %7160
  %7189 = phi float [ 0.000000e+00, %7160 ], [ %7185, %7169 ]
  %7190 = phi float [ 0.000000e+00, %7160 ], [ %7186, %7169 ]
  %7191 = phi float [ 0.000000e+00, %7160 ], [ %7187, %7169 ]
  %7192 = fmul fast float %7189, %5766
  %7193 = fmul fast float %7190, %5766
  %7194 = fmul fast float %7191, %5766
  %7195 = fmul fast float %7162, %6824
  %7196 = call float @dx.op.dot3.f32(i32 55, float %7162, float %7162, float %7162, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7197 = call float @dx.op.dot3.f32(i32 55, float %7192, float %7193, float %7194, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7198 = select i1 %206, float %7196, float %7162
  %7199 = select i1 %206, float 1.000000e+00, float %7162
  %7200 = select i1 %206, float %7197, float %7192
  %7201 = select i1 %206, float 0.000000e+00, float %7193
  %7202 = select i1 %206, float 0.000000e+00, float %7194
  %7203 = fmul fast float %7198, %6836
  %7204 = fmul fast float %7198, %6837
  %7205 = fmul fast float %7199, %6838
  %7206 = fadd fast float %7203, %7200
  %7207 = fadd fast float %7204, %7201
  %7208 = fadd fast float %7202, %7205
  %7209 = fmul fast float %7198, %6839
  %7210 = fmul fast float %7198, %6840
  %7211 = fmul fast float %7199, %6841
  br label %7212

; <label>:7212                                    ; preds = %7188, %6845, %6814, %6046
  %7213 = phi float [ %6051, %6046 ], [ %6836, %6814 ], [ %7206, %7188 ], [ %6836, %6845 ]
  %7214 = phi float [ %6052, %6046 ], [ %6837, %6814 ], [ %7207, %7188 ], [ %6837, %6845 ]
  %7215 = phi float [ %6053, %6046 ], [ %6838, %6814 ], [ %7208, %7188 ], [ %6838, %6845 ]
  %7216 = phi float [ %6054, %6046 ], [ %6839, %6814 ], [ %7209, %7188 ], [ %6839, %6845 ]
  %7217 = phi float [ %6055, %6046 ], [ %6840, %6814 ], [ %7210, %7188 ], [ %6840, %6845 ]
  %7218 = phi float [ %6056, %6046 ], [ %6841, %6814 ], [ %7211, %7188 ], [ %6841, %6845 ]
  %7219 = phi float [ %6057, %6046 ], [ %6824, %6814 ], [ %7195, %7188 ], [ %6824, %6845 ]
  %7220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7221 = extractvalue %dx.types.CBufRet.f32 %7220, 2
  %7222 = extractvalue %dx.types.CBufRet.f32 %7220, 3
  %7223 = fmul fast float %7221, %82
  %7224 = fmul fast float %7222, %83
  %7225 = call float @dx.op.unary.f32(i32 7, float %7223)  ; Saturate(value)
  %7226 = call float @dx.op.unary.f32(i32 7, float %7224)  ; Saturate(value)
  %7227 = select i1 %5788, i32 2, i32 0
  %7228 = or i32 %7227, 1
  %7229 = uitofp i32 %7228 to float
  %7230 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7225, float %7226, float %7229, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7231 = extractvalue %dx.types.ResRet.f32 %7230, 0
  %7232 = extractvalue %dx.types.ResRet.f32 %7230, 1
  %7233 = extractvalue %dx.types.ResRet.f32 %7230, 2
  %7234 = extractvalue %dx.types.ResRet.f32 %7230, 3
  %7235 = add nuw nsw i32 %7227, 2
  %7236 = uitofp i32 %7235 to float
  %7237 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7225, float %7226, float %7236, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7238 = extractvalue %dx.types.ResRet.f32 %7237, 0
  %7239 = extractvalue %dx.types.ResRet.f32 %7237, 1
  %7240 = extractvalue %dx.types.ResRet.f32 %7237, 2
  %7241 = extractvalue %dx.types.ResRet.f32 %7237, 3
  %7242 = call float @dx.op.binary.f32(i32 35, float %7232, float %7233)  ; FMax(a,b)
  %7243 = call float @dx.op.binary.f32(i32 35, float %7231, float %7242)  ; FMax(a,b)
  %7244 = call float @dx.op.binary.f32(i32 35, float %7243, float %7234)  ; FMax(a,b)
  %7245 = call float @dx.op.binary.f32(i32 36, float %7239, float %7240)  ; FMin(a,b)
  %7246 = call float @dx.op.binary.f32(i32 36, float %7238, float %7245)  ; FMin(a,b)
  %7247 = call float @dx.op.binary.f32(i32 36, float %7246, float %7241)  ; FMin(a,b)
  %7248 = fmul fast float %7244, 2.550000e+02
  %7249 = fadd fast float %7248, 0x3F70101020000000
  %7250 = fptoui float %7249 to i32
  %7251 = fmul fast float %7247, 2.550000e+02
  %7252 = fadd fast float %7251, 0x3F70101020000000
  %7253 = fptoui float %7252 to i32
  %7254 = icmp ult i32 %7250, %7253
  br i1 %7254, label %7255, label %7424

; <label>:7255                                    ; preds = %7212
  %7256 = fcmp fast ogt float %72, 9.843750e-01
  %7257 = fadd fast float %6050, -4.000000e+00
  %7258 = select i1 %7256, float -4.000000e+00, float %7257
  %7259 = call float @dx.op.binary.f32(i32 35, float %7258, float 0.000000e+00)  ; FMax(a,b)
  %7260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7261 = extractvalue %dx.types.CBufRet.f32 %7260, 0
  %7262 = fadd fast float %7261, %7259
  %7263 = extractvalue %dx.types.CBufRet.f32 %7260, 2
  %7264 = fmul fast float %7262, %7263
  %7265 = call float @dx.op.unary.f32(i32 23, float %7264)  ; Log(value)
  %7266 = extractvalue %dx.types.CBufRet.f32 %7260, 3
  %7267 = fmul fast float %7266, %7265
  %7268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7269 = extractvalue %dx.types.CBufRet.f32 %7268, 2
  %7270 = fmul fast float %7267, %7269
  %7271 = call float @dx.op.unary.f32(i32 7, float %7270)  ; Saturate(value)
  %7272 = uitofp i32 %7250 to float
  %7273 = uitofp i32 %7253 to float
  %7274 = fadd fast float %7272, 5.000000e-01
  %7275 = fadd fast float %7273, 5.000000e-01
  %7276 = fmul fast float %7269, %7274
  %7277 = fmul fast float %7269, %7275
  %7278 = fadd fast float %7276, 0x3F0FFB4800000000
  %7279 = fadd fast float %7277, 0xBF0FFB4800000000
  %7280 = call float @dx.op.binary.f32(i32 35, float %7271, float %7278)  ; FMax(a,b)
  %7281 = call float @dx.op.binary.f32(i32 36, float %7280, float %7279)  ; FMin(a,b)
  %7282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7283 = extractvalue %dx.types.CBufRet.f32 %7282, 1
  %7284 = extractvalue %dx.types.CBufRet.f32 %7282, 2
  %7285 = extractvalue %dx.types.CBufRet.f32 %7282, 0
  %7286 = select i1 %5788, float %7285, float 0.000000e+00
  %7287 = fmul fast float %7283, %7281
  %7288 = fadd fast float %7286, %7287
  %7289 = fadd fast float %7286, %7284
  %7290 = fsub fast float %7283, %7284
  %7291 = fadd fast float %7290, %7286
  %7292 = call float @dx.op.binary.f32(i32 35, float %7288, float %7289)  ; FMax(a,b)
  %7293 = call float @dx.op.binary.f32(i32 36, float %7292, float %7291)  ; FMin(a,b)
  %7294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %7225, float %7226, float %7293, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7295 = extractvalue %dx.types.ResRet.f32 %7294, 0
  %7296 = extractvalue %dx.types.ResRet.f32 %7294, 1
  %7297 = extractvalue %dx.types.ResRet.f32 %7294, 2
  %7298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7299 = extractvalue %dx.types.CBufRet.i32 %7298, 0
  %7300 = extractvalue %dx.types.CBufRet.i32 %7298, 1
  %7301 = uitofp i32 %7299 to float
  %7302 = uitofp i32 %7300 to float
  %7303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7304 = extractvalue %dx.types.CBufRet.f32 %7303, 0
  %7305 = extractvalue %dx.types.CBufRet.f32 %7303, 1
  %7306 = fmul fast float %7301, %7225
  %7307 = fmul fast float %7302, %7226
  %7308 = fadd fast float %7306, -5.000000e-01
  %7309 = fadd fast float %7307, -5.000000e-01
  %7310 = call float @dx.op.unary.f32(i32 22, float %7308)  ; Frc(value)
  %7311 = call float @dx.op.unary.f32(i32 22, float %7309)  ; Frc(value)
  %7312 = fmul fast float %7310, %7310
  %7313 = fmul fast float %7312, %7310
  %7314 = fsub fast float 3.000000e+00, %7310
  %7315 = fmul fast float %7312, %7314
  %7316 = fmul fast float %7310, 3.000000e+00
  %7317 = fmul fast float %7313, 3.000000e+00
  %7318 = fmul fast float %7312, 6.000000e+00
  %7319 = fsub fast float %7317, %7318
  %7320 = fadd fast float %7319, 4.000000e+00
  %7321 = fmul fast float %7320, 0x3FC5555560000000
  %7322 = fmul fast float %7313, -3.000000e+00
  %7323 = fadd fast float %7312, %7310
  %7324 = fmul fast float %7323, 3.000000e+00
  %7325 = fadd fast float %7322, 1.000000e+00
  %7326 = fadd fast float %7325, %7324
  %7327 = fmul fast float %7313, 0x3FC5555560000000
  %7328 = fmul fast float %7311, %7311
  %7329 = fmul fast float %7328, %7311
  %7330 = fsub fast float 3.000000e+00, %7311
  %7331 = fmul fast float %7328, %7330
  %7332 = fmul fast float %7311, 3.000000e+00
  %7333 = fmul fast float %7329, 3.000000e+00
  %7334 = fmul fast float %7328, 6.000000e+00
  %7335 = fsub fast float %7333, %7334
  %7336 = fadd fast float %7335, 4.000000e+00
  %7337 = fmul fast float %7336, 0x3FC5555560000000
  %7338 = fmul fast float %7329, -3.000000e+00
  %7339 = fadd fast float %7328, %7311
  %7340 = fmul fast float %7339, 3.000000e+00
  %7341 = fadd fast float %7338, 1.000000e+00
  %7342 = fadd fast float %7341, %7340
  %7343 = fmul fast float %7329, 0x3FC5555560000000
  %7344 = fadd fast float %7310, 1.000000e+00
  %7345 = fsub fast float 1.000000e+00, %7316
  %7346 = fadd fast float %7345, %7315
  %7347 = fadd fast float %7346, %7320
  %7348 = fmul fast float %7347, 0x3FC5555560000000
  %7349 = fdiv fast float %7321, %7348
  %7350 = fsub fast float %7344, %7349
  %7351 = fsub fast float 1.000000e+00, %7310
  %7352 = fadd fast float %7326, %7313
  %7353 = fmul fast float %7352, 0x3FC5555560000000
  %7354 = fdiv fast float %7327, %7353
  %7355 = fadd fast float %7351, %7354
  %7356 = fadd fast float %7311, 1.000000e+00
  %7357 = fsub fast float 1.000000e+00, %7332
  %7358 = fadd fast float %7357, %7331
  %7359 = fadd fast float %7358, %7336
  %7360 = fmul fast float %7359, 0x3FC5555560000000
  %7361 = fdiv fast float %7337, %7360
  %7362 = fsub fast float %7356, %7361
  %7363 = fsub fast float 1.000000e+00, %7311
  %7364 = fadd fast float %7342, %7329
  %7365 = fmul fast float %7364, 0x3FC5555560000000
  %7366 = fdiv fast float %7343, %7365
  %7367 = fadd fast float %7366, %7363
  %7368 = fmul fast float %7350, %7304
  %7369 = fsub fast float %7225, %7368
  %7370 = fmul fast float %7355, %7304
  %7371 = fadd fast float %7370, %7225
  %7372 = fmul fast float %7367, %7305
  %7373 = fadd fast float %7372, %7226
  %7374 = fmul fast float %7362, %7305
  %7375 = fsub fast float %7226, %7374
  %7376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7369, float %7375, float %7293, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7377 = extractvalue %dx.types.ResRet.f32 %7376, 0
  %7378 = extractvalue %dx.types.ResRet.f32 %7376, 1
  %7379 = extractvalue %dx.types.ResRet.f32 %7376, 2
  %7380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7371, float %7375, float %7293, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7381 = extractvalue %dx.types.ResRet.f32 %7380, 0
  %7382 = extractvalue %dx.types.ResRet.f32 %7380, 1
  %7383 = extractvalue %dx.types.ResRet.f32 %7380, 2
  %7384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7369, float %7373, float %7293, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7385 = extractvalue %dx.types.ResRet.f32 %7384, 0
  %7386 = extractvalue %dx.types.ResRet.f32 %7384, 1
  %7387 = extractvalue %dx.types.ResRet.f32 %7384, 2
  %7388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7371, float %7373, float %7293, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7389 = extractvalue %dx.types.ResRet.f32 %7388, 0
  %7390 = extractvalue %dx.types.ResRet.f32 %7388, 1
  %7391 = extractvalue %dx.types.ResRet.f32 %7388, 2
  %7392 = fsub fast float %7385, %7377
  %7393 = fsub fast float %7386, %7378
  %7394 = fsub fast float %7387, %7379
  %7395 = fmul fast float %7392, %7365
  %7396 = fmul fast float %7393, %7365
  %7397 = fmul fast float %7394, %7365
  %7398 = fadd fast float %7395, %7377
  %7399 = fadd fast float %7396, %7378
  %7400 = fadd fast float %7397, %7379
  %7401 = fsub fast float %7389, %7381
  %7402 = fsub fast float %7390, %7382
  %7403 = fsub fast float %7391, %7383
  %7404 = fmul fast float %7401, %7365
  %7405 = fmul fast float %7402, %7365
  %7406 = fmul fast float %7403, %7365
  %7407 = fsub fast float %7381, %7398
  %7408 = fadd fast float %7407, %7404
  %7409 = fsub fast float %7382, %7399
  %7410 = fadd fast float %7409, %7405
  %7411 = fsub fast float %7383, %7400
  %7412 = fadd fast float %7411, %7406
  %7413 = fmul fast float %7408, %7353
  %7414 = fmul fast float %7410, %7353
  %7415 = fmul fast float %7412, %7353
  %7416 = fadd fast float %7413, %7398
  %7417 = fadd fast float %7414, %7399
  %7418 = fadd fast float %7415, %7400
  %7419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7420 = extractvalue %dx.types.CBufRet.f32 %7419, 1
  %7421 = fmul fast float %7416, %7420
  %7422 = fmul fast float %7417, %7420
  %7423 = fmul fast float %7418, %7420
  br label %7424

; <label>:7424                                    ; preds = %7255, %7212
  %7425 = phi float [ %7295, %7255 ], [ 1.000000e+00, %7212 ]
  %7426 = phi float [ %7296, %7255 ], [ 1.000000e+00, %7212 ]
  %7427 = phi float [ %7297, %7255 ], [ 1.000000e+00, %7212 ]
  %7428 = phi float [ %7421, %7255 ], [ 0.000000e+00, %7212 ]
  %7429 = phi float [ %7422, %7255 ], [ 0.000000e+00, %7212 ]
  %7430 = phi float [ %7423, %7255 ], [ 0.000000e+00, %7212 ]
  %7431 = fmul fast float %7428, %5766
  %7432 = fmul fast float %7429, %5766
  %7433 = fmul fast float %7430, %5766
  %7434 = fmul fast float %7425, %7219
  %7435 = call float @dx.op.dot3.f32(i32 55, float %7425, float %7426, float %7427, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7436 = call float @dx.op.dot3.f32(i32 55, float %7431, float %7432, float %7433, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7437 = select i1 %206, float %7435, float %7425
  %7438 = select i1 %206, float %7435, float %7426
  %7439 = select i1 %206, float 1.000000e+00, float %7427
  %7440 = select i1 %206, float %7436, float %7431
  %7441 = select i1 %206, float 0.000000e+00, float %7432
  %7442 = select i1 %206, float 0.000000e+00, float %7433
  %7443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7444 = extractvalue %dx.types.CBufRet.i32 %7443, 3
  %7445 = and i32 %7444, 3
  %7446 = icmp ne i32 %7445, 0
  %7447 = and i32 %7444, 4
  %7448 = icmp ne i32 %7447, 0
  %7449 = and i1 %7446, %7448
  %7450 = and i1 %206, %7449
  br i1 %7450, label %7451, label %7457

; <label>:7451                                    ; preds = %7424
  %7452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7453 = extractvalue %dx.types.CBufRet.f32 %7452, 1
  %7454 = fadd fast float %7434, -1.000000e+00
  %7455 = fmul fast float %7453, %7454
  %7456 = fadd fast float %7455, 1.000000e+00
  br label %7457

; <label>:7457                                    ; preds = %7451, %7424
  %7458 = phi float [ %7456, %7451 ], [ %7434, %7424 ]
  %7459 = fadd fast float %7216, %7213
  %7460 = fmul fast float %7437, %7459
  %7461 = fadd fast float %7460, %7440
  %7462 = fadd fast float %7217, %7214
  %7463 = fmul fast float %7438, %7462
  %7464 = fadd fast float %7463, %7441
  %7465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7466 = extractvalue %dx.types.CBufRet.f32 %7465, 0
  br i1 %206, label %7467, label %7490

; <label>:7467                                    ; preds = %7457
  %7468 = fadd fast float %7461, %7464
  %7469 = fmul fast float %7466, %7468
  %7470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7471 = extractvalue %dx.types.CBufRet.f32 %7470, 3
  %7472 = extractvalue %dx.types.CBufRet.f32 %5770, 1
  %7473 = fsub fast float %5775, %5769
  %7474 = fadd fast float %7473, %5776
  %7475 = fsub fast float %7474, %7472
  %7476 = extractvalue %dx.types.CBufRet.f32 %5770, 2
  %7477 = fmul fast float %7475, %7476
  %7478 = call float @dx.op.unary.f32(i32 7, float %7477)  ; Saturate(value)
  %7479 = fsub fast float %7478, %7471
  %7480 = fmul fast float %7479, %7458
  %7481 = fadd fast float %7480, %7471
  %7482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7483 = extractvalue %dx.types.CBufRet.f32 %7482, 0
  %7484 = fsub fast float %7481, %7483
  %7485 = fmul fast float %7484, 1.000000e+01
  %7486 = call float @dx.op.unary.f32(i32 7, float %7485)  ; Saturate(value)
  %7487 = fmul fast float %7486, %5765
  %7488 = fadd fast float %7487, %5766
  %7489 = fmul fast float %7488, %7481
  br label %7514

; <label>:7490                                    ; preds = %7457
  %7491 = fadd fast float %7218, %7215
  %7492 = fmul fast float %7439, %7491
  %7493 = fadd fast float %7492, %7442
  %7494 = fmul fast float %7466, %7461
  %7495 = fmul fast float %7466, %7464
  %7496 = fmul fast float %7466, %7493
  %7497 = call float @dx.op.binary.f32(i32 35, float %7495, float %7496)  ; FMax(a,b)
  %7498 = call float @dx.op.binary.f32(i32 35, float %7494, float %7497)  ; FMax(a,b)
  %7499 = call float @dx.op.binary.f32(i32 35, float %7498, float %5766)  ; FMax(a,b)
  %7500 = fcmp fast ugt float %7499, 0x3F10000000000000
  br i1 %7500, label %7502, label %7501

; <label>:7501                                    ; preds = %7490
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7502

; <label>:7502                                    ; preds = %7501, %7490
  %7503 = add i32 %41, 356
  %7504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %7503, i32 undef)  ; BufferLoad(srv,index,wot)
  %7505 = extractvalue %dx.types.ResRet.i32 %7504, 0
  %7506 = and i32 %7505, 32
  %7507 = icmp eq i32 %7506, 0
  br i1 %7507, label %7514, label %7508

; <label>:7508                                    ; preds = %7502
  %7509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7510 = extractvalue %dx.types.CBufRet.f32 %7509, 0
  %7511 = fmul fast float %7510, 0x3FE99999A0000000
  %7512 = fadd fast float %7510, %7494
  %7513 = fadd fast float %7511, %7496
  br label %7514

; <label>:7514                                    ; preds = %7508, %7502, %7467
  %7515 = phi float [ %7469, %7467 ], [ %7512, %7508 ], [ %7494, %7502 ]
  %7516 = phi float [ %7489, %7467 ], [ %7495, %7508 ], [ %7495, %7502 ]
  %7517 = phi float [ %7488, %7467 ], [ %7513, %7508 ], [ %7496, %7502 ]
  %7518 = phi float [ %7488, %7467 ], [ %5766, %7508 ], [ %5766, %7502 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7519 = call float @dx.op.binary.f32(i32 36, float %7515, float 3.225500e+04)  ; FMin(a,b)
  %7520 = call float @dx.op.binary.f32(i32 36, float %7516, float 3.225500e+04)  ; FMin(a,b)
  %7521 = call float @dx.op.binary.f32(i32 36, float %7517, float 3.225500e+04)  ; FMin(a,b)
  %7522 = call float @dx.op.binary.f32(i32 36, float %7518, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7519)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7520)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7521)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7522)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

