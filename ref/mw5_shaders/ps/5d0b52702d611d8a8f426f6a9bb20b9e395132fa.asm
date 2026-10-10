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
; shader hash: e453c224173537de2cdd26cff05cd0a6
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
  br i1 %445, label %1179, label %446

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
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = and i32 %1083, 1024
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1116, label %1086

; <label>:1086                                    ; preds = %1078
  %1087 = add i32 %41, 152
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = and i32 %1089, 255
  %1091 = uitofp i32 %1090 to float
  %1092 = fmul fast float %1091, 0x3F70101020000000
  %1093 = lshr i32 %1089, 8
  %1094 = and i32 %1093, 255
  %1095 = uitofp i32 %1094 to float
  %1096 = fmul fast float %1095, 0x3F70101020000000
  %1097 = lshr i32 %1089, 16
  %1098 = and i32 %1097, 255
  %1099 = uitofp i32 %1098 to float
  %1100 = fmul fast float %1099, 0x3F70101020000000
  %1101 = fmul fast float %1092, %1092
  %1102 = fmul fast float %1096, %1096
  %1103 = fmul fast float %1100, %1100
  %1104 = add i32 %41, 456
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = add i32 %1106, 0
  %1108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1107, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1109 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1108, %dx.types.Handle %79, float %545, float %546, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1110 = extractvalue %dx.types.ResRet.f32 %1109, 0
  %1111 = extractvalue %dx.types.ResRet.f32 %1109, 1
  %1112 = extractvalue %dx.types.ResRet.f32 %1109, 2
  %1113 = fmul fast float %1101, %1110
  %1114 = fmul fast float %1102, %1111
  %1115 = fmul fast float %1103, %1112
  br label %1116

; <label>:1116                                    ; preds = %1086, %1078
  %1117 = phi float [ %1113, %1086 ], [ 0.000000e+00, %1078 ]
  %1118 = phi float [ %1114, %1086 ], [ 0.000000e+00, %1078 ]
  %1119 = phi float [ %1115, %1086 ], [ 0.000000e+00, %1078 ]
  %1120 = fcmp fast ogt float %1117, 0.000000e+00
  %1121 = fcmp fast ogt float %1118, 0.000000e+00
  %1122 = fcmp fast ogt float %1119, 0.000000e+00
  %1123 = call float @dx.op.unary.f32(i32 23, float %1117)  ; Log(value)
  %1124 = call float @dx.op.unary.f32(i32 23, float %1118)  ; Log(value)
  %1125 = call float @dx.op.unary.f32(i32 23, float %1119)  ; Log(value)
  %1126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.i32 %1126, 0
  %1128 = lshr i32 %1127, 7
  %1129 = and i32 %1128, 32752
  %1130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1129)  ; LegacyF16ToF32(value)
  %1131 = fmul fast float %1123, 0xBFE62E4300000000
  %1132 = fmul fast float %1131, %1130
  %1133 = fmul fast float %1124, 0xBFE62E4300000000
  %1134 = fmul fast float %1133, %1130
  %1135 = fmul fast float %1125, 0xBFE62E4300000000
  %1136 = fmul fast float %1135, %1130
  %1137 = select i1 %1120, float %1132, float 1.270000e+02
  %1138 = select i1 %1121, float %1134, float 1.270000e+02
  %1139 = select i1 %1122, float %1136, float 1.270000e+02
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = and i32 %1141, 10240
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1164, label %1144

; <label>:1144                                    ; preds = %1116
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = and i32 %1146, 2048
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %1164, label %1149

; <label>:1149                                    ; preds = %1144
  %1150 = add i32 %41, 472
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = add i32 %1152, 0
  %1154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1153, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1155 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1154, %dx.types.Handle %79, float %545, float %546, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1156 = extractvalue %dx.types.ResRet.f32 %1155, 3
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = shl i32 %1158, 4
  %1160 = and i32 %1159, 32752
  %1161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1160)  ; LegacyF16ToF32(value)
  %1162 = fmul fast float %1161, %1156
  %1163 = call float @dx.op.binary.f32(i32 35, float %1162, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1164

; <label>:1164                                    ; preds = %1149, %1144, %1116
  %1165 = phi float [ %1163, %1149 ], [ 0x3F70101020000000, %1144 ], [ 0x3F70101020000000, %1116 ]
  %1166 = add i32 %41, 96
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = and i32 %1168, 255
  %1170 = uitofp i32 %1169 to float
  %1171 = lshr i32 %1168, 8
  %1172 = and i32 %1171, 255
  %1173 = uitofp i32 %1172 to float
  %1174 = call float @dx.op.dot3.f32(i32 55, float %951, float %952, float %953, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1175 = fmul fast float %1173, %1174
  %1176 = fadd fast float %1175, %1170
  %1177 = fmul fast float %1176, 0x3F70101020000000
  %1178 = call float @dx.op.unary.f32(i32 7, float %1177)  ; Saturate(value)
  br label %1179

; <label>:1179                                    ; preds = %1164, %431
  %1180 = phi float [ 0.000000e+00, %431 ], [ %1032, %1164 ]
  %1181 = phi float [ 0.000000e+00, %431 ], [ %1033, %1164 ]
  %1182 = phi float [ 0.000000e+00, %431 ], [ %1079, %1164 ]
  %1183 = phi float [ 0.000000e+00, %431 ], [ %1080, %1164 ]
  %1184 = phi float [ 0.000000e+00, %431 ], [ %1081, %1164 ]
  %1185 = phi float [ 0.000000e+00, %431 ], [ %1137, %1164 ]
  %1186 = phi float [ 0.000000e+00, %431 ], [ %1138, %1164 ]
  %1187 = phi float [ 0.000000e+00, %431 ], [ %1139, %1164 ]
  %1188 = phi float [ 0.000000e+00, %431 ], [ %951, %1164 ]
  %1189 = phi float [ 0.000000e+00, %431 ], [ %952, %1164 ]
  %1190 = phi float [ 0.000000e+00, %431 ], [ %953, %1164 ]
  %1191 = phi float [ 0.000000e+00, %431 ], [ %937, %1164 ]
  %1192 = phi float [ 0.000000e+00, %431 ], [ %733, %1164 ]
  %1193 = phi float [ 0.000000e+00, %431 ], [ %1031, %1164 ]
  %1194 = phi float [ 0.000000e+00, %431 ], [ %1034, %1164 ]
  %1195 = phi float [ 0.000000e+00, %431 ], [ %1165, %1164 ]
  %1196 = phi float [ 0.000000e+00, %431 ], [ %1178, %1164 ]
  br i1 %379, label %2183, label %1197

; <label>:1197                                    ; preds = %1179
  %1198 = icmp ult i32 %437, 2
  %1199 = add i32 %41, 40
  %1200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.i32 %1200, 0
  %1202 = add i32 %41, 44
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = or i32 %1204, %1201
  %1206 = icmp eq i32 %1205, 0
  br i1 %1206, label %2183, label %1207

; <label>:1207                                    ; preds = %1197
  %1208 = and i32 %1201, 262144
  %1209 = icmp ne i32 %1208, 0
  %1210 = select i1 %1209, float %44, float 1.000000e+00
  %1211 = select i1 %1209, float %45, float 0.000000e+00
  %1212 = select i1 %1209, float %46, float 0.000000e+00
  %1213 = select i1 %1209, float %47, float 1.000000e+00
  %1214 = select i1 %1209, float %48, float %64
  %1215 = select i1 %1209, float %49, float %65
  %1216 = add i32 %41, 300
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = lshr i32 %1218, 16
  %1220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1219)  ; LegacyF16ToF32(value)
  %1221 = fmul fast float %1220, 0x3F50624DE0000000
  %1222 = add i32 %41, 104
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = lshr i32 %1224, 16
  %1226 = and i32 %1225, 255
  %1227 = lshr i32 %1224, 24
  %1228 = add i32 %41, 308
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = and i32 %1230, 65535
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = lshr i32 %1230, 16
  %1234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1233)  ; LegacyF16ToF32(value)
  %1235 = add i32 %41, 48
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = lshr i32 %1237, 22
  %1239 = shl nuw nsw i32 %1238, 5
  %1240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1239)  ; LegacyF16ToF32(value)
  %1241 = shl i32 %1237, 4
  %1242 = and i32 %1241, 32752
  %1243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1242)  ; LegacyF16ToF32(value)
  %1244 = lshr i32 %1237, 7
  %1245 = and i32 %1244, 32752
  %1246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1245)  ; LegacyF16ToF32(value)
  %1247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1248 = extractvalue %dx.types.CBufRet.f32 %1247, 3
  %1249 = fmul fast float %1248, 1.000000e+03
  %1250 = fmul fast float %289, %1249
  %1251 = call float @dx.op.unary.f32(i32 22, float %1250)  ; Frc(value)
  %1252 = fadd fast float %1251, %279
  %1253 = fmul fast float %290, %1249
  %1254 = call float @dx.op.unary.f32(i32 22, float %1253)  ; Frc(value)
  %1255 = fadd fast float %1254, %281
  %1256 = fmul fast float %1221, %1249
  %1257 = call float @dx.op.unary.f32(i32 22, float %1256)  ; Frc(value)
  %1258 = fmul fast float %1257, 0x401921FB60000000
  %1259 = fadd fast float %1258, %1240
  %1260 = call float @dx.op.unary.f32(i32 13, float %1259)  ; Sin(value)
  %1261 = call float @dx.op.unary.f32(i32 12, float %1259)  ; Cos(value)
  %1262 = fsub fast float -0.000000e+00, %1260
  %1263 = fadd fast float %1214, -5.000000e-01
  %1264 = fadd fast float %1215, -5.000000e-01
  %1265 = fmul fast float %1232, %1263
  %1266 = fmul fast float %1234, %1264
  %1267 = fadd fast float %1265, 5.000000e-01
  %1268 = fadd fast float %1266, 5.000000e-01
  %1269 = fmul fast float %1243, %1267
  %1270 = fmul fast float %1246, %1268
  %1271 = fmul fast float %1261, %1269
  %1272 = call float @dx.op.tertiary.f32(i32 46, float %1262, float %1270, float %1271)  ; FMad(a,b,c)
  %1273 = fmul fast float %1260, %1269
  %1274 = call float @dx.op.tertiary.f32(i32 46, float %1261, float %1270, float %1273)  ; FMad(a,b,c)
  %1275 = fadd fast float %1252, %1272
  %1276 = fadd fast float %1255, %1274
  %1277 = icmp ugt i32 %1226, 1
  %1278 = icmp ugt i32 %1224, 33554431
  %1279 = or i1 %1278, %1277
  br i1 %1279, label %1280, label %1305

; <label>:1280                                    ; preds = %1207
  %1281 = add i32 %41, 244
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = lshr i32 %1283, 16
  %1285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1284)  ; LegacyF16ToF32(value)
  %1286 = fmul fast float %1248, %1285
  %1287 = call float @dx.op.unary.f32(i32 22, float %1286)  ; Frc(value)
  %1288 = mul nuw nsw i32 %1226, %1227
  %1289 = uitofp i32 %1288 to float
  %1290 = fmul fast float %1287, %1289
  %1291 = call float @dx.op.unary.f32(i32 27, float %1290)  ; Round_ni(value)
  %1292 = fptoui float %1291 to i32
  %1293 = urem i32 %1292, %1226
  %1294 = udiv i32 %1292, %1227
  %1295 = call float @dx.op.unary.f32(i32 22, float %1275)  ; Frc(value)
  %1296 = call float @dx.op.unary.f32(i32 22, float %1276)  ; Frc(value)
  %1297 = uitofp i32 %1293 to float
  %1298 = uitofp i32 %1294 to float
  %1299 = fadd fast float %1295, %1297
  %1300 = fadd fast float %1296, %1298
  %1301 = uitofp i32 %1226 to float
  %1302 = uitofp i32 %1227 to float
  %1303 = fdiv fast float %1299, %1301
  %1304 = fdiv fast float %1300, %1302
  br label %1305

; <label>:1305                                    ; preds = %1280, %1207
  %1306 = phi float [ %1303, %1280 ], [ %1275, %1207 ]
  %1307 = phi float [ %1304, %1280 ], [ %1276, %1207 ]
  %1308 = and i32 %1201, 16777216
  %1309 = icmp eq i32 %1308, 0
  br i1 %1309, label %1419, label %1310

; <label>:1310                                    ; preds = %1305
  %1311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1312 = extractvalue %dx.types.CBufRet.f32 %1311, 0
  %1313 = extractvalue %dx.types.CBufRet.f32 %1311, 1
  %1314 = extractvalue %dx.types.CBufRet.f32 %1311, 2
  %1315 = fadd fast float %1312, %145
  %1316 = fadd fast float %1313, %146
  %1317 = fadd fast float %1314, %147
  %1318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1319 = extractvalue %dx.types.CBufRet.f32 %1318, 0
  %1320 = call float @dx.op.unary.f32(i32 7, float %1319)  ; Saturate(value)
  %1321 = icmp eq i32 %42, 65535
  br i1 %1321, label %1416, label %1322

; <label>:1322                                    ; preds = %1310
  %1323 = lshr i32 %42, 1
  %1324 = shl i32 %1323, 2
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1324, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = and i32 %42, 1
  %1328 = icmp ne i32 %1327, 0
  %1329 = lshr i32 %1326, 16
  %1330 = and i32 %1326, 65535
  %1331 = select i1 %1328, i32 %1329, i32 %1330
  %1332 = icmp eq i32 %1331, 65535
  br i1 %1332, label %1412, label %1333

; <label>:1333                                    ; preds = %1322
  %1334 = mul nuw nsw i32 %1331, 40
  %1335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1334, i32 undef)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.f32 %1335, 0
  %1337 = extractvalue %dx.types.ResRet.f32 %1335, 1
  %1338 = extractvalue %dx.types.ResRet.f32 %1335, 2
  %1339 = add nuw nsw i32 %1334, 12
  %1340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.f32 %1340, 0
  %1342 = extractvalue %dx.types.ResRet.f32 %1340, 1
  %1343 = extractvalue %dx.types.ResRet.f32 %1340, 2
  %1344 = add nuw nsw i32 %1334, 24
  %1345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.f32 %1345, 0
  %1347 = extractvalue %dx.types.ResRet.f32 %1345, 1
  %1348 = extractvalue %dx.types.ResRet.f32 %1345, 2
  %1349 = add nuw nsw i32 %1334, 36
  %1350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1349, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.f32 %1350, 0
  %1352 = fsub fast float %1315, %1336
  %1353 = fsub fast float %1316, %1337
  %1354 = fsub fast float %1317, %1338
  %1355 = fmul fast float %1351, %1352
  %1356 = fmul fast float %1351, %1353
  %1357 = fmul fast float %1351, %1354
  %1358 = call float @dx.op.unary.f32(i32 27, float %1355)  ; Round_ni(value)
  %1359 = call float @dx.op.unary.f32(i32 27, float %1356)  ; Round_ni(value)
  %1360 = call float @dx.op.unary.f32(i32 27, float %1357)  ; Round_ni(value)
  %1361 = fadd fast float %1358, 5.000000e-01
  %1362 = fadd fast float %1359, 5.000000e-01
  %1363 = fadd fast float %1360, 5.000000e-01
  %1364 = fmul fast float %1361, %1341
  %1365 = fmul fast float %1362, %1342
  %1366 = fmul fast float %1363, %1343
  %1367 = shl i32 %42, 2
  %1368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1367, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.i32 %1368, 0
  %1370 = add i32 %1369, 0
  %1371 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1370, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1372 = call float @dx.op.unary.f32(i32 22, float %1364)  ; Frc(value)
  %1373 = call float @dx.op.unary.f32(i32 22, float %1365)  ; Frc(value)
  %1374 = call float @dx.op.unary.f32(i32 22, float %1366)  ; Frc(value)
  %1375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1371, %dx.types.Handle %36, float %1372, float %1373, float %1374, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1376 = extractvalue %dx.types.ResRet.f32 %1375, 0
  %1377 = extractvalue %dx.types.ResRet.f32 %1375, 1
  %1378 = extractvalue %dx.types.ResRet.f32 %1375, 2
  %1379 = fmul fast float %1376, 1.023000e+03
  %1380 = fmul fast float %1377, 1.023000e+03
  %1381 = fmul fast float %1378, 1.023000e+03
  %1382 = fadd fast float %1379, 5.000000e-01
  %1383 = fadd fast float %1380, 5.000000e-01
  %1384 = fadd fast float %1381, 5.000000e-01
  %1385 = call float @dx.op.unary.f32(i32 27, float %1382)  ; Round_ni(value)
  %1386 = call float @dx.op.unary.f32(i32 27, float %1383)  ; Round_ni(value)
  %1387 = call float @dx.op.unary.f32(i32 27, float %1384)  ; Round_ni(value)
  %1388 = fsub fast float %1355, %1358
  %1389 = fsub fast float %1356, %1359
  %1390 = fsub fast float %1357, %1360
  %1391 = fmul fast float %1388, 7.500000e-01
  %1392 = fmul fast float %1389, 7.500000e-01
  %1393 = fmul fast float %1390, 7.500000e-01
  %1394 = fadd fast float %1358, 1.250000e-01
  %1395 = fadd fast float %1394, %1391
  %1396 = fadd fast float %1395, %1385
  %1397 = fadd fast float %1359, 1.250000e-01
  %1398 = fadd fast float %1397, %1392
  %1399 = fadd fast float %1398, %1386
  %1400 = fadd fast float %1360, 1.250000e-01
  %1401 = fadd fast float %1400, %1393
  %1402 = fadd fast float %1401, %1387
  %1403 = fmul fast float %1396, %1346
  %1404 = fmul fast float %1399, %1347
  %1405 = fmul fast float %1402, %1348
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1367, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.i32 %1406, 0
  %1408 = add i32 %1407, 0
  %1409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1408, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1409, %dx.types.Handle %34, float %1403, float %1404, float %1405, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1411 = extractvalue %dx.types.ResRet.f32 %1410, 0
  br label %1412

; <label>:1412                                    ; preds = %1333, %1322
  %1413 = phi float [ %1411, %1333 ], [ -1.000000e+00, %1322 ]
  %1414 = fadd fast float %1413, %1320
  %1415 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  br label %1416

; <label>:1416                                    ; preds = %1412, %1310
  %1417 = phi float [ %1415, %1412 ], [ %1320, %1310 ]
  %1418 = fmul fast float %1417, %434
  br label %1419

; <label>:1419                                    ; preds = %1416, %1305
  %1420 = phi float [ %1418, %1416 ], [ %434, %1305 ]
  %1421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.i32 %1421, 0
  %1423 = and i32 %1422, 256
  %1424 = icmp eq i32 %1423, 0
  br i1 %1424, label %1471, label %1425

; <label>:1425                                    ; preds = %1419
  %1426 = add i32 %41, 428
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1426, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = add i32 %1428, 0
  %1430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1429, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1431 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1430, %dx.types.Handle %79, float %1306, float %1307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1432 = extractvalue %dx.types.ResRet.f32 %1431, 0
  %1433 = add i32 %41, 116
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1433, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = shl i32 %1435, 4
  %1437 = and i32 %1436, 32752
  %1438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1437)  ; LegacyF16ToF32(value)
  %1439 = lshr i32 %1435, 7
  %1440 = and i32 %1439, 32752
  %1441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1440)  ; LegacyF16ToF32(value)
  %1442 = fsub fast float 1.000000e+00, %1420
  %1443 = call float @dx.op.binary.f32(i32 35, float %1442, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1444 = bitcast float %1420 to i32
  %1445 = sitofp i32 %1444 to float
  %1446 = fadd fast float %1445, 0xC1CFBF8940000000
  %1447 = fmul fast float %1441, %1446
  %1448 = fadd fast float %1447, 0x41CFBF8940000000
  %1449 = fptosi float %1448 to i32
  %1450 = bitcast i32 %1449 to float
  %1451 = bitcast float %1443 to i32
  %1452 = sitofp i32 %1451 to float
  %1453 = fadd fast float %1452, 0xC1CFBF8940000000
  %1454 = fmul fast float %1453, %1441
  %1455 = fadd fast float %1454, 0x41CFBF8940000000
  %1456 = fptosi float %1455 to i32
  %1457 = bitcast i32 %1456 to float
  %1458 = fmul fast float %1450, %1438
  %1459 = fmul fast float %1457, %1438
  %1460 = fsub fast float %1443, %1458
  %1461 = fadd fast float %1459, %1443
  %1462 = call float @dx.op.unary.f32(i32 7, float %1460)  ; Saturate(value)
  %1463 = call float @dx.op.unary.f32(i32 7, float %1461)  ; Saturate(value)
  %1464 = fsub fast float %1432, %1462
  %1465 = fsub fast float %1463, %1462
  %1466 = bitcast float %1465 to i32
  %1467 = sub nsw i32 2129859010, %1466
  %1468 = bitcast i32 %1467 to float
  %1469 = fmul fast float %1468, %1464
  %1470 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  br label %1471

; <label>:1471                                    ; preds = %1425, %1419
  %1472 = phi float [ %1470, %1425 ], [ %1420, %1419 ]
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = and i32 %1474, 128
  %1476 = icmp eq i32 %1475, 0
  br i1 %1476, label %1493, label %1477

; <label>:1477                                    ; preds = %1471
  %1478 = add i32 %41, 412
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1478, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = add i32 %1480, 0
  %1482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1482, %dx.types.Handle %79, float %1306, float %1307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1484 = extractvalue %dx.types.ResRet.f32 %1483, 0
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = and i32 %1486, 524288
  %1488 = icmp ne i32 %1487, 0
  %1489 = fcmp fast ogt float %1484, 0x3FE0101020000000
  %1490 = select i1 %1489, float 1.000000e+00, float 0.000000e+00
  %1491 = select i1 %1488, float %1490, float %1484
  %1492 = fmul fast float %1491, %1472
  br label %1493

; <label>:1493                                    ; preds = %1477, %1471
  %1494 = phi float [ %1492, %1477 ], [ %1472, %1471 ]
  %1495 = fcmp fast ult float %1494, 0x3F70101020000000
  br i1 %1495, label %2183, label %1496

; <label>:1496                                    ; preds = %1493
  %1497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1498 = extractvalue %dx.types.ResRet.i32 %1497, 0
  %1499 = and i32 %1498, 16
  %1500 = icmp eq i32 %1499, 0
  br i1 %1500, label %1699, label %1501

; <label>:1501                                    ; preds = %1496
  %1502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.i32 %1502, 0
  %1504 = add i32 %41, 364
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = add i32 %1506, 0
  %1508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1507, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1509 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1508, %dx.types.Handle %78, float %1306, float %1307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1510 = extractvalue %dx.types.ResRet.f32 %1509, 0
  %1511 = extractvalue %dx.types.ResRet.f32 %1509, 1
  %1512 = extractvalue %dx.types.ResRet.f32 %1509, 2
  %1513 = extractvalue %dx.types.ResRet.f32 %1509, 3
  %1514 = and i32 %1503, 255
  %1515 = uitofp i32 %1514 to float
  %1516 = lshr i32 %1503, 8
  %1517 = and i32 %1516, 255
  %1518 = uitofp i32 %1517 to float
  %1519 = fmul fast float %1513, %1515
  %1520 = fadd fast float %1519, %1518
  %1521 = fmul fast float %1520, 0x3F70101000000000
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = and i32 %1523, 512
  %1525 = icmp eq i32 %1524, 0
  br i1 %1525, label %1534, label %1526

; <label>:1526                                    ; preds = %1501
  %1527 = add i32 %41, 444
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1527, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = add i32 %1529, 0
  %1531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1532 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1531, %dx.types.Handle %79, float %1306, float %1307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1533 = extractvalue %dx.types.ResRet.f32 %1532, 0
  br label %1534

; <label>:1534                                    ; preds = %1526, %1501
  %1535 = phi float [ %1533, %1526 ], [ 1.000000e+00, %1501 ]
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = and i32 %1537, 33554432
  %1539 = icmp eq i32 %1538, 0
  br i1 %1539, label %1646, label %1540

; <label>:1540                                    ; preds = %1534
  %1541 = add i32 %41, 240
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = and i32 %1543, 65535
  %1545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1544)  ; LegacyF16ToF32(value)
  %1546 = lshr i32 %1543, 16
  %1547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1546)  ; LegacyF16ToF32(value)
  %1548 = add i32 %41, 244
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1548, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = and i32 %1550, 65535
  %1552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1551)  ; LegacyF16ToF32(value)
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1569 = add i32 %41, 236
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = lshr i32 %1571, 24
  %1573 = uitofp i32 %1572 to float
  %1574 = fmul fast float %1573, 0x3F70101020000000
  %1575 = and i32 %1571, 255
  %1576 = uitofp i32 %1575 to float
  %1577 = fmul fast float %1576, 0x3F70101020000000
  %1578 = lshr i32 %1571, 8
  %1579 = and i32 %1578, 255
  %1580 = uitofp i32 %1579 to float
  %1581 = fmul fast float %1580, 0x3F70101020000000
  %1582 = lshr i32 %1571, 16
  %1583 = and i32 %1582, 255
  %1584 = uitofp i32 %1583 to float
  %1585 = fmul fast float %1584, 0x3F70101020000000
  %1586 = bitcast float %1510 to i32
  %1587 = ashr i32 %1586, 1
  %1588 = sub nsw i32 1597463174, %1587
  %1589 = bitcast i32 %1588 to float
  %1590 = fmul fast float %1510, 5.000000e-01
  %1591 = fmul fast float %1589, %1589
  %1592 = fmul fast float %1591, %1590
  %1593 = fsub fast float 1.500000e+00, %1592
  %1594 = fmul fast float %1589, %1510
  %1595 = fmul fast float %1594, %1593
  %1596 = bitcast float %1511 to i32
  %1597 = ashr i32 %1596, 1
  %1598 = sub nsw i32 1597463174, %1597
  %1599 = bitcast i32 %1598 to float
  %1600 = fmul fast float %1511, 5.000000e-01
  %1601 = fmul fast float %1599, %1599
  %1602 = fmul fast float %1601, %1600
  %1603 = fsub fast float 1.500000e+00, %1602
  %1604 = fmul fast float %1599, %1511
  %1605 = fmul fast float %1604, %1603
  %1606 = bitcast float %1512 to i32
  %1607 = ashr i32 %1606, 1
  %1608 = sub nsw i32 1597463174, %1607
  %1609 = bitcast i32 %1608 to float
  %1610 = fmul fast float %1512, 5.000000e-01
  %1611 = fmul fast float %1609, %1609
  %1612 = fmul fast float %1611, %1610
  %1613 = fsub fast float 1.500000e+00, %1612
  %1614 = fmul fast float %1609, %1512
  %1615 = fmul fast float %1614, %1613
  %1616 = fsub fast float %1595, %1577
  %1617 = fsub fast float %1605, %1581
  %1618 = fsub fast float %1615, %1585
  %1619 = fmul fast float %1616, %1545
  %1620 = fmul fast float %1617, %1547
  %1621 = fmul fast float %1618, %1552
  %1622 = fadd fast float %1619, %1560
  %1623 = fadd fast float %1620, %1564
  %1624 = fadd fast float %1621, %1568
  %1625 = call float @dx.op.unary.f32(i32 7, float %1622)  ; Saturate(value)
  %1626 = call float @dx.op.unary.f32(i32 7, float %1623)  ; Saturate(value)
  %1627 = call float @dx.op.unary.f32(i32 7, float %1624)  ; Saturate(value)
  %1628 = fmul fast float %1625, %1625
  %1629 = fmul fast float %1626, %1626
  %1630 = fmul fast float %1627, %1627
  %1631 = fsub fast float %1628, %1510
  %1632 = fsub fast float %1629, %1511
  %1633 = fsub fast float %1630, %1512
  %1634 = fmul fast float %1631, %1535
  %1635 = fmul fast float %1632, %1535
  %1636 = fmul fast float %1633, %1535
  %1637 = fadd fast float %1634, %1510
  %1638 = fadd fast float %1635, %1511
  %1639 = fadd fast float %1636, %1512
  %1640 = fadd fast float %1557, %1521
  %1641 = fsub fast float %1640, %1574
  %1642 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1643 = fsub fast float %1642, %1521
  %1644 = fmul fast float %1643, %1535
  %1645 = fadd fast float %1644, %1521
  br label %1699

; <label>:1646                                    ; preds = %1534
  %1647 = and i32 %1537, 134217728
  %1648 = icmp eq i32 %1647, 0
  br i1 %1648, label %1683, label %1649

; <label>:1649                                    ; preds = %1646
  %1650 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %1651 = call float @dx.op.unary.f32(i32 24, float %270)  ; Sqrt(value)
  %1652 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %1653 = fadd fast float %1650, -5.000000e-01
  %1654 = fadd fast float %1651, -5.000000e-01
  %1655 = fadd fast float %1652, -5.000000e-01
  %1656 = fmul fast float %1653, %1535
  %1657 = fmul fast float %1654, %1535
  %1658 = fmul fast float %1655, %1535
  %1659 = fadd fast float %1656, 5.000000e-01
  %1660 = fadd fast float %1657, 5.000000e-01
  %1661 = fadd fast float %1658, 5.000000e-01
  %1662 = call float @dx.op.unary.f32(i32 24, float %1510)  ; Sqrt(value)
  %1663 = call float @dx.op.unary.f32(i32 24, float %1511)  ; Sqrt(value)
  %1664 = call float @dx.op.unary.f32(i32 24, float %1512)  ; Sqrt(value)
  %1665 = fmul fast float %1659, 2.000000e+00
  %1666 = fsub fast float 1.000000e+00, %1665
  %1667 = fmul fast float %1666, %1662
  %1668 = fadd fast float %1667, %1665
  %1669 = fmul fast float %1668, %1662
  %1670 = fmul fast float %1660, 2.000000e+00
  %1671 = fsub fast float 1.000000e+00, %1670
  %1672 = fmul fast float %1671, %1663
  %1673 = fadd fast float %1672, %1670
  %1674 = fmul fast float %1673, %1663
  %1675 = fmul fast float %1661, 2.000000e+00
  %1676 = fsub fast float 1.000000e+00, %1675
  %1677 = fmul fast float %1676, %1664
  %1678 = fadd fast float %1677, %1675
  %1679 = fmul fast float %1678, %1664
  %1680 = fmul fast float %1669, %1669
  %1681 = fmul fast float %1674, %1674
  %1682 = fmul fast float %1679, %1679
  br label %1699

; <label>:1683                                    ; preds = %1646
  %1684 = fmul fast float %266, %266
  %1685 = fmul fast float %270, %270
  %1686 = fmul fast float %274, %274
  %1687 = fadd fast float %1684, -1.000000e+00
  %1688 = fadd fast float %1685, -1.000000e+00
  %1689 = fadd fast float %1686, -1.000000e+00
  %1690 = fmul fast float %1535, %1687
  %1691 = fmul fast float %1535, %1688
  %1692 = fmul fast float %1535, %1689
  %1693 = fadd fast float %1690, 1.000000e+00
  %1694 = fadd fast float %1691, 1.000000e+00
  %1695 = fadd fast float %1692, 1.000000e+00
  %1696 = fmul fast float %1693, %1510
  %1697 = fmul fast float %1694, %1511
  %1698 = fmul fast float %1695, %1512
  br label %1699

; <label>:1699                                    ; preds = %1683, %1649, %1540, %1496
  %1700 = phi float [ %1645, %1540 ], [ %1521, %1649 ], [ %1521, %1683 ], [ 0x3FA23C0BE0000000, %1496 ]
  %1701 = phi float [ %1637, %1540 ], [ %1680, %1649 ], [ %1696, %1683 ], [ 1.000000e+00, %1496 ]
  %1702 = phi float [ %1638, %1540 ], [ %1681, %1649 ], [ %1697, %1683 ], [ 1.000000e+00, %1496 ]
  %1703 = phi float [ %1639, %1540 ], [ %1682, %1649 ], [ %1698, %1683 ], [ 1.000000e+00, %1496 ]
  %1704 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1705 = extractvalue %dx.types.CBufRet.i32 %1704, 1
  %1706 = and i32 %1705, 1
  %1707 = icmp ne i32 %1706, 0
  %1708 = add i32 %41, 356
  %1709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1710 = extractvalue %dx.types.ResRet.i32 %1709, 0
  %1711 = and i32 %1710, 32
  %1712 = icmp ne i32 %1711, 0
  %1713 = and i1 %1707, %1712
  %1714 = select i1 %1713, float 1.000000e+00, float %1701
  %1715 = select i1 %1713, float 0x3FD3333340000000, float %1702
  %1716 = select i1 %1713, float 0x3FD3333340000000, float %1703
  %1717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.i32 %1717, 0
  %1719 = and i32 %1718, 32
  %1720 = icmp eq i32 %1719, 0
  br i1 %1720, label %1793, label %1721

; <label>:1721                                    ; preds = %1699
  %1722 = add i32 %41, 108
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = add i32 %41, 380
  %1726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %1727 = extractvalue %dx.types.ResRet.i32 %1726, 0
  %1728 = add i32 %1727, 0
  %1729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1728, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1730 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1729, %dx.types.Handle %78, float %1306, float %1307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1731 = extractvalue %dx.types.ResRet.f32 %1730, 0
  %1732 = extractvalue %dx.types.ResRet.f32 %1730, 1
  %1733 = extractvalue %dx.types.ResRet.f32 %1730, 2
  %1734 = extractvalue %dx.types.ResRet.f32 %1730, 3
  %1735 = and i32 %1724, 255
  %1736 = uitofp i32 %1735 to float
  %1737 = lshr i32 %1724, 8
  %1738 = and i32 %1737, 255
  %1739 = uitofp i32 %1738 to float
  %1740 = lshr i32 %1724, 16
  %1741 = and i32 %1740, 255
  %1742 = uitofp i32 %1741 to float
  %1743 = fmul fast float %1742, 0x3F70101000000000
  %1744 = fmul fast float %1731, %1736
  %1745 = fadd fast float %1744, %1739
  %1746 = fmul fast float %1745, 0x3F70101000000000
  %1747 = fadd fast float %1732, -5.000000e-01
  %1748 = fadd fast float %1734, -5.000000e-01
  %1749 = fmul fast float %1747, %1743
  %1750 = fmul fast float %1748, %1743
  %1751 = fadd fast float %1749, 5.000000e-01
  %1752 = fadd fast float %1750, 5.000000e-01
  %1753 = fmul fast float %1751, 2.000000e+00
  %1754 = fadd fast float %1753, -1.000000e+00
  %1755 = fmul fast float %1752, 2.000000e+00
  %1756 = fadd fast float %1755, -1.000000e+00
  %1757 = fadd fast float %1754, %1756
  %1758 = fmul fast float %1757, 5.000000e-01
  %1759 = fsub fast float %1754, %1756
  %1760 = fmul fast float %1759, 5.000000e-01
  %1761 = call float @dx.op.unary.f32(i32 6, float %1758)  ; FAbs(value)
  %1762 = fsub fast float 1.000000e+00, %1761
  %1763 = call float @dx.op.unary.f32(i32 6, float %1760)  ; FAbs(value)
  %1764 = fsub fast float %1762, %1763
  %1765 = call float @dx.op.dot3.f32(i32 55, float %1758, float %1760, float %1764, float %1758, float %1760, float %1764)  ; Dot3(ax,ay,az,bx,by,bz)
  %1766 = call float @dx.op.unary.f32(i32 25, float %1765)  ; Rsqrt(value)
  %1767 = fmul fast float %1758, %1766
  %1768 = fmul fast float %1760, %1766
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = and i32 %1770, 67108864
  %1772 = icmp eq i32 %1771, 0
  br i1 %1772, label %1789, label %1773

; <label>:1773                                    ; preds = %1721
  %1774 = add i32 %41, 296
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = and i32 %1776, 65535
  %1778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1777)  ; LegacyF16ToF32(value)
  %1779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1780 = extractvalue %dx.types.ResRet.i32 %1779, 0
  %1781 = and i32 %1780, 65535
  %1782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1781)  ; LegacyF16ToF32(value)
  %1783 = lshr i32 %1776, 16
  %1784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1783)  ; LegacyF16ToF32(value)
  %1785 = fsub fast float %1746, %1784
  %1786 = fmul fast float %1785, %1778
  %1787 = fadd fast float %1786, %1782
  %1788 = call float @dx.op.unary.f32(i32 7, float %1787)  ; Saturate(value)
  br label %1789

; <label>:1789                                    ; preds = %1773, %1721
  %1790 = phi float [ %1788, %1773 ], [ %1746, %1721 ]
  %1791 = call float @dx.op.dot2.f32(i32 54, float %1767, float %1768, float %1210, float %1211)  ; Dot2(ax,ay,bx,by)
  %1792 = call float @dx.op.dot2.f32(i32 54, float %1767, float %1768, float %1212, float %1213)  ; Dot2(ax,ay,bx,by)
  br label %1793

; <label>:1793                                    ; preds = %1789, %1699
  %1794 = phi float [ %1790, %1789 ], [ 0x3FD6666660000000, %1699 ]
  %1795 = phi float [ %1791, %1789 ], [ 0.000000e+00, %1699 ]
  %1796 = phi float [ %1792, %1789 ], [ 0.000000e+00, %1699 ]
  %1797 = phi float [ %1733, %1789 ], [ 1.000000e+00, %1699 ]
  %1798 = add i32 %41, 176
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = lshr i32 %1800, 22
  %1802 = shl nuw nsw i32 %1801, 5
  %1803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1802)  ; LegacyF16ToF32(value)
  %1804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1805 = extractvalue %dx.types.ResRet.i32 %1804, 0
  %1806 = and i32 %1805, 64
  %1807 = icmp eq i32 %1806, 0
  br i1 %1807, label %1841, label %1808

; <label>:1808                                    ; preds = %1793
  %1809 = add i32 %41, 396
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = add i32 %1811, 0
  %1813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1812, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1815 = extractvalue %dx.types.ResRet.i32 %1814, 0
  %1816 = and i32 %1815, 131072
  %1817 = icmp eq i32 %1816, 0
  %1818 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1813, %dx.types.Handle %78, float %1306, float %1307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1819 = extractvalue %dx.types.ResRet.f32 %1818, 0
  %1820 = extractvalue %dx.types.ResRet.f32 %1818, 1
  %1821 = extractvalue %dx.types.ResRet.f32 %1818, 2
  %1822 = fmul fast float %1819, %254
  %1823 = fmul fast float %1820, %257
  %1824 = fmul fast float %1821, %260
  br i1 %1817, label %1831, label %1825

; <label>:1825                                    ; preds = %1808
  %1826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1827 = extractvalue %dx.types.CBufRet.f32 %1826, 0
  %1828 = fmul fast float %1827, %1822
  %1829 = fmul fast float %1827, %1823
  %1830 = fmul fast float %1827, %1824
  br label %1831

; <label>:1831                                    ; preds = %1825, %1808
  %1832 = phi float [ %1828, %1825 ], [ %1822, %1808 ]
  %1833 = phi float [ %1829, %1825 ], [ %1823, %1808 ]
  %1834 = phi float [ %1830, %1825 ], [ %1824, %1808 ]
  %1835 = fmul fast float %1832, %1803
  %1836 = select i1 %206, float %1835, float %1832
  %1837 = call float @dx.op.dot3.f32(i32 55, float %1836, float %1833, float %1834, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1838 = select i1 %206, float 0.000000e+00, float %1832
  %1839 = select i1 %206, float %1837, float %1833
  %1840 = select i1 %206, float 0.000000e+00, float %1834
  br label %1841

; <label>:1841                                    ; preds = %1831, %1793
  %1842 = phi float [ %1838, %1831 ], [ 0.000000e+00, %1793 ]
  %1843 = phi float [ %1839, %1831 ], [ 0.000000e+00, %1793 ]
  %1844 = phi float [ %1840, %1831 ], [ 0.000000e+00, %1793 ]
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = and i32 %1846, 1024
  %1848 = icmp eq i32 %1847, 0
  br i1 %1848, label %1879, label %1849

; <label>:1849                                    ; preds = %1841
  %1850 = add i32 %41, 168
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = and i32 %1852, 255
  %1854 = uitofp i32 %1853 to float
  %1855 = fmul fast float %1854, 0x3F70101020000000
  %1856 = lshr i32 %1852, 8
  %1857 = and i32 %1856, 255
  %1858 = uitofp i32 %1857 to float
  %1859 = fmul fast float %1858, 0x3F70101020000000
  %1860 = lshr i32 %1852, 16
  %1861 = and i32 %1860, 255
  %1862 = uitofp i32 %1861 to float
  %1863 = fmul fast float %1862, 0x3F70101020000000
  %1864 = fmul fast float %1855, %1855
  %1865 = fmul fast float %1859, %1859
  %1866 = fmul fast float %1863, %1863
  %1867 = add i32 %41, 460
  %1868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.i32 %1868, 0
  %1870 = add i32 %1869, 0
  %1871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1870, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1872 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1871, %dx.types.Handle %79, float %1306, float %1307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1873 = extractvalue %dx.types.ResRet.f32 %1872, 0
  %1874 = extractvalue %dx.types.ResRet.f32 %1872, 1
  %1875 = extractvalue %dx.types.ResRet.f32 %1872, 2
  %1876 = fmul fast float %1864, %1873
  %1877 = fmul fast float %1865, %1874
  %1878 = fmul fast float %1866, %1875
  br label %1879

; <label>:1879                                    ; preds = %1849, %1841
  %1880 = phi float [ %1876, %1849 ], [ 0.000000e+00, %1841 ]
  %1881 = phi float [ %1877, %1849 ], [ 0.000000e+00, %1841 ]
  %1882 = phi float [ %1878, %1849 ], [ 0.000000e+00, %1841 ]
  %1883 = fcmp fast ogt float %1880, 0.000000e+00
  %1884 = fcmp fast ogt float %1881, 0.000000e+00
  %1885 = fcmp fast ogt float %1882, 0.000000e+00
  %1886 = call float @dx.op.unary.f32(i32 23, float %1880)  ; Log(value)
  %1887 = call float @dx.op.unary.f32(i32 23, float %1881)  ; Log(value)
  %1888 = call float @dx.op.unary.f32(i32 23, float %1882)  ; Log(value)
  %1889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.i32 %1889, 0
  %1891 = lshr i32 %1890, 7
  %1892 = and i32 %1891, 32752
  %1893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1892)  ; LegacyF16ToF32(value)
  %1894 = fmul fast float %1886, 0xBFE62E4300000000
  %1895 = fmul fast float %1894, %1893
  %1896 = fmul fast float %1887, 0xBFE62E4300000000
  %1897 = fmul fast float %1896, %1893
  %1898 = fmul fast float %1888, 0xBFE62E4300000000
  %1899 = fmul fast float %1898, %1893
  %1900 = select i1 %1883, float %1895, float 1.270000e+02
  %1901 = select i1 %1884, float %1897, float 1.270000e+02
  %1902 = select i1 %1885, float %1899, float 1.270000e+02
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = and i32 %1904, 10240
  %1906 = icmp eq i32 %1905, 0
  br i1 %1906, label %1927, label %1907

; <label>:1907                                    ; preds = %1879
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.i32 %1908, 0
  %1910 = and i32 %1909, 2048
  %1911 = icmp eq i32 %1910, 0
  br i1 %1911, label %1927, label %1912

; <label>:1912                                    ; preds = %1907
  %1913 = add i32 %41, 476
  %1914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1915 = extractvalue %dx.types.ResRet.i32 %1914, 0
  %1916 = add i32 %1915, 0
  %1917 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1916, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1918 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1917, %dx.types.Handle %79, float %1306, float %1307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1919 = extractvalue %dx.types.ResRet.f32 %1918, 3
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = shl i32 %1921, 4
  %1923 = and i32 %1922, 32752
  %1924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1923)  ; LegacyF16ToF32(value)
  %1925 = fmul fast float %1924, %1919
  %1926 = call float @dx.op.binary.f32(i32 35, float %1925, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1927

; <label>:1927                                    ; preds = %1912, %1907, %1879
  %1928 = phi float [ %1926, %1912 ], [ 0x3F70101020000000, %1907 ], [ 0x3F70101020000000, %1879 ]
  %1929 = add i32 %41, 112
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = and i32 %1931, 255
  %1933 = uitofp i32 %1932 to float
  %1934 = lshr i32 %1931, 8
  %1935 = and i32 %1934, 255
  %1936 = uitofp i32 %1935 to float
  %1937 = call float @dx.op.dot3.f32(i32 55, float %1714, float %1715, float %1716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1938 = fmul fast float %1936, %1937
  %1939 = fadd fast float %1938, %1933
  %1940 = fmul fast float %1939, 0x3F70101020000000
  %1941 = call float @dx.op.unary.f32(i32 7, float %1940)  ; Saturate(value)
  br i1 %1198, label %1942, label %1977

; <label>:1942                                    ; preds = %1927
  %1943 = fmul fast float %1928, 2.000000e+00
  %1944 = fcmp fast olt float %1900, 1.270000e+02
  %1945 = fcmp fast olt float %1901, 1.270000e+02
  %1946 = fcmp fast olt float %1902, 1.270000e+02
  %1947 = fmul fast float %1900, 0xBFF7154760000000
  %1948 = fmul fast float %1947, %1943
  %1949 = fmul fast float %1901, 0xBFF7154760000000
  %1950 = fmul fast float %1949, %1943
  %1951 = fmul fast float %1902, 0xBFF7154760000000
  %1952 = fmul fast float %1951, %1943
  %1953 = call float @dx.op.unary.f32(i32 21, float %1948)  ; Exp(value)
  %1954 = call float @dx.op.unary.f32(i32 21, float %1950)  ; Exp(value)
  %1955 = call float @dx.op.unary.f32(i32 21, float %1952)  ; Exp(value)
  %1956 = call float @dx.op.unary.f32(i32 7, float %1953)  ; Saturate(value)
  %1957 = call float @dx.op.unary.f32(i32 7, float %1954)  ; Saturate(value)
  %1958 = call float @dx.op.unary.f32(i32 7, float %1955)  ; Saturate(value)
  %1959 = fadd fast float %1956, -1.000000e+00
  %1960 = select i1 %1944, float %1959, float -1.000000e+00
  %1961 = fadd fast float %1957, -1.000000e+00
  %1962 = select i1 %1945, float %1961, float -1.000000e+00
  %1963 = fadd fast float %1958, -1.000000e+00
  %1964 = select i1 %1946, float %1963, float -1.000000e+00
  %1965 = fmul fast float %1960, %1494
  %1966 = fmul fast float %1962, %1494
  %1967 = fmul fast float %1964, %1494
  %1968 = fadd fast float %1965, 1.000000e+00
  %1969 = fadd fast float %1966, 1.000000e+00
  %1970 = fadd fast float %1967, 1.000000e+00
  %1971 = fmul fast float %1968, %1188
  %1972 = fmul fast float %1969, %1189
  %1973 = fmul fast float %1970, %1190
  %1974 = fmul fast float %1968, %1182
  %1975 = fmul fast float %1969, %1183
  %1976 = fmul fast float %1970, %1184
  br label %1977

; <label>:1977                                    ; preds = %1942, %1927
  %1978 = phi float [ %1974, %1942 ], [ %1182, %1927 ]
  %1979 = phi float [ %1975, %1942 ], [ %1183, %1927 ]
  %1980 = phi float [ %1976, %1942 ], [ %1184, %1927 ]
  %1981 = phi float [ %1971, %1942 ], [ %1188, %1927 ]
  %1982 = phi float [ %1972, %1942 ], [ %1189, %1927 ]
  %1983 = phi float [ %1973, %1942 ], [ %1190, %1927 ]
  %1984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1985 = extractvalue %dx.types.ResRet.i32 %1984, 0
  %1986 = and i32 %1985, 3
  %1987 = icmp eq i32 %1986, 3
  br i1 %1987, label %2066, label %1988

; <label>:1988                                    ; preds = %1977
  %1989 = and i32 %1985, 16
  %1990 = icmp ne i32 %1989, 0
  %1991 = select i1 %1990, float %1494, float 0.000000e+00
  %1992 = icmp eq i32 %1986, 0
  br i1 %1992, label %1993, label %2021

; <label>:1993                                    ; preds = %1988
  %1994 = and i32 %1985, 64
  %1995 = icmp ne i32 %1994, 0
  %1996 = select i1 %1995, float %1494, float 0.000000e+00
  %1997 = fsub fast float %1714, %1981
  %1998 = fsub fast float %1715, %1982
  %1999 = fsub fast float %1716, %1983
  %2000 = fmul fast float %1991, %1997
  %2001 = fmul fast float %1991, %1998
  %2002 = fmul fast float %1991, %1999
  %2003 = fadd fast float %2000, %1981
  %2004 = fadd fast float %2001, %1982
  %2005 = fadd fast float %2002, %1983
  %2006 = fsub fast float %1700, %1191
  %2007 = fmul fast float %1991, %2006
  %2008 = fadd fast float %2007, %1191
  %2009 = fsub fast float %1842, %1978
  %2010 = fsub fast float %1843, %1979
  %2011 = fsub fast float %1844, %1980
  %2012 = fmul fast float %1996, %2009
  %2013 = fmul fast float %1996, %2010
  %2014 = fmul fast float %1996, %2011
  %2015 = fadd fast float %2012, %1978
  %2016 = fadd fast float %2013, %1979
  %2017 = fadd fast float %2014, %1980
  %2018 = fsub fast float %1941, %1196
  %2019 = fmul fast float %1991, %2018
  %2020 = fadd fast float %2019, %1196
  br label %2066

; <label>:2021                                    ; preds = %1988
  %2022 = icmp eq i32 %1986, 1
  br i1 %2022, label %2023, label %2036

; <label>:2023                                    ; preds = %2021
  %2024 = fadd fast float %1714, -1.000000e+00
  %2025 = fadd fast float %1715, -1.000000e+00
  %2026 = fadd fast float %1716, -1.000000e+00
  %2027 = fmul fast float %1991, %2024
  %2028 = fmul fast float %1991, %2025
  %2029 = fmul fast float %1991, %2026
  %2030 = fadd fast float %2027, 1.000000e+00
  %2031 = fadd fast float %2028, 1.000000e+00
  %2032 = fadd fast float %2029, 1.000000e+00
  %2033 = fmul fast float %2030, %1981
  %2034 = fmul fast float %2031, %1982
  %2035 = fmul fast float %2032, %1983
  br label %2066

; <label>:2036                                    ; preds = %2021
  %2037 = icmp eq i32 %1986, 2
  br i1 %2037, label %2038, label %2066

; <label>:2038                                    ; preds = %2036
  %2039 = call float @dx.op.unary.f32(i32 24, float %1714)  ; Sqrt(value)
  %2040 = call float @dx.op.unary.f32(i32 24, float %1715)  ; Sqrt(value)
  %2041 = call float @dx.op.unary.f32(i32 24, float %1716)  ; Sqrt(value)
  %2042 = fadd fast float %2039, -5.000000e-01
  %2043 = fadd fast float %2040, -5.000000e-01
  %2044 = fadd fast float %2041, -5.000000e-01
  %2045 = fmul fast float %2042, %1991
  %2046 = fmul fast float %2043, %1991
  %2047 = fmul fast float %2044, %1991
  %2048 = fadd fast float %2045, 5.000000e-01
  %2049 = fadd fast float %2046, 5.000000e-01
  %2050 = fadd fast float %2047, 5.000000e-01
  %2051 = fmul fast float %2048, 2.000000e+00
  %2052 = fsub fast float 1.000000e+00, %2051
  %2053 = fmul fast float %2052, %1981
  %2054 = fadd fast float %2053, %2051
  %2055 = fmul fast float %2054, %1981
  %2056 = fmul fast float %2049, 2.000000e+00
  %2057 = fsub fast float 1.000000e+00, %2056
  %2058 = fmul fast float %2057, %1982
  %2059 = fadd fast float %2058, %2056
  %2060 = fmul fast float %2059, %1982
  %2061 = fmul fast float %2050, 2.000000e+00
  %2062 = fsub fast float 1.000000e+00, %2061
  %2063 = fmul fast float %2062, %1983
  %2064 = fadd fast float %2063, %2061
  %2065 = fmul fast float %2064, %1983
  br label %2066

; <label>:2066                                    ; preds = %2038, %2036, %2023, %1993, %1977
  %2067 = phi float [ %1978, %1977 ], [ %1978, %2038 ], [ %1978, %2036 ], [ %1978, %2023 ], [ %2015, %1993 ]
  %2068 = phi float [ %1979, %1977 ], [ %1979, %2038 ], [ %1979, %2036 ], [ %1979, %2023 ], [ %2016, %1993 ]
  %2069 = phi float [ %1980, %1977 ], [ %1980, %2038 ], [ %1980, %2036 ], [ %1980, %2023 ], [ %2017, %1993 ]
  %2070 = phi float [ %1981, %1977 ], [ %2055, %2038 ], [ %1981, %2036 ], [ %2033, %2023 ], [ %2003, %1993 ]
  %2071 = phi float [ %1982, %1977 ], [ %2060, %2038 ], [ %1982, %2036 ], [ %2034, %2023 ], [ %2004, %1993 ]
  %2072 = phi float [ %1983, %1977 ], [ %2065, %2038 ], [ %1983, %2036 ], [ %2035, %2023 ], [ %2005, %1993 ]
  %2073 = phi float [ %1191, %1977 ], [ %1191, %2038 ], [ %1191, %2036 ], [ %1191, %2023 ], [ %2008, %1993 ]
  %2074 = phi float [ %1196, %1977 ], [ %1196, %2038 ], [ %1196, %2036 ], [ %1196, %2023 ], [ %2020, %1993 ]
  %2075 = and i32 %1985, 12
  %2076 = icmp eq i32 %2075, 12
  br i1 %2076, label %2183, label %2077

; <label>:2077                                    ; preds = %2066
  %2078 = and i32 %1985, 2097184
  %2079 = icmp eq i32 %2078, 2097184
  %2080 = select i1 %2079, float %1494, float 0.000000e+00
  %2081 = and i32 %1985, 4194336
  %2082 = icmp eq i32 %2081, 4194336
  %2083 = select i1 %2082, float %1494, float 0.000000e+00
  %2084 = and i32 %1985, 8388640
  %2085 = icmp eq i32 %2084, 8388640
  %2086 = select i1 %2085, float %1494, float 0.000000e+00
  %2087 = and i32 %1985, 1024
  %2088 = icmp ne i32 %2087, 0
  %2089 = select i1 %2088, float %1494, float 0.000000e+00
  %2090 = and i32 %1985, 2048
  %2091 = icmp ne i32 %2090, 0
  %2092 = select i1 %2091, float %1494, float 0.000000e+00
  %2093 = icmp eq i32 %2075, 0
  br i1 %2093, label %2094, label %2119

; <label>:2094                                    ; preds = %2077
  %2095 = fsub fast float %1795, %1180
  %2096 = fsub fast float %1796, %1181
  %2097 = fmul fast float %2080, %2095
  %2098 = fmul fast float %2080, %2096
  %2099 = fadd fast float %2097, %1180
  %2100 = fadd fast float %2098, %1181
  %2101 = fsub fast float %1797, %1194
  %2102 = fmul fast float %2083, %2101
  %2103 = fadd fast float %2102, %1194
  %2104 = fsub fast float %1794, %1193
  %2105 = fmul fast float %2086, %2104
  %2106 = fadd fast float %2105, %1193
  %2107 = fsub fast float %1900, %1185
  %2108 = fsub fast float %1901, %1186
  %2109 = fsub fast float %1902, %1187
  %2110 = fmul fast float %2089, %2107
  %2111 = fmul fast float %2089, %2108
  %2112 = fmul fast float %2089, %2109
  %2113 = fadd fast float %2110, %1185
  %2114 = fadd fast float %2111, %1186
  %2115 = fadd fast float %2112, %1187
  %2116 = fsub fast float %1928, %1195
  %2117 = fmul fast float %2092, %2116
  %2118 = fadd fast float %2117, %1195
  br label %2183

; <label>:2119                                    ; preds = %2077
  %2120 = icmp eq i32 %2075, 4
  br i1 %2120, label %2121, label %2161

; <label>:2121                                    ; preds = %2119
  %2122 = fmul fast float %2080, %1795
  %2123 = fmul fast float %2080, %1796
  %2124 = fadd fast float %2122, %1180
  %2125 = fadd fast float %2123, %1181
  %2126 = call float @dx.op.binary.f32(i32 36, float %1194, float %1797)  ; FMin(a,b)
  %2127 = fsub fast float %2126, %1194
  %2128 = fmul fast float %2127, %2083
  %2129 = fadd fast float %2128, %1194
  %2130 = fadd fast float %1794, %1193
  %2131 = fmul fast float %2130, 0x3FF337FAE0000000
  %2132 = fmul fast float %1193, %1193
  %2133 = fmul fast float %1794, %1794
  %2134 = fadd fast float %2133, %2132
  %2135 = fmul fast float %2134, 0x3FE5152B00000000
  %2136 = fmul fast float %1193, 0xBFCC1F85E0000000
  %2137 = fmul fast float %2136, %1794
  %2138 = fadd fast float %2137, 0xBFE1363700000000
  %2139 = fadd fast float %2138, %2131
  %2140 = fsub fast float %2139, %2135
  %2141 = fmul fast float %2130, 0x3FBA6F0D00000000
  %2142 = fmul fast float %2134, 0x3FD0432880000000
  %2143 = fmul fast float %1193, 0xBFEF110800000000
  %2144 = fmul fast float %2143, %1794
  %2145 = fadd fast float %2144, 1.000000e+00
  %2146 = fsub fast float %2145, %2141
  %2147 = fadd fast float %2146, %2142
  %2148 = fdiv fast float %2140, %2147
  %2149 = call float @dx.op.unary.f32(i32 7, float %2148)  ; Saturate(value)
  %2150 = fsub fast float %2149, %1193
  %2151 = fmul fast float %2150, %2086
  %2152 = fadd fast float %2151, %1193
  %2153 = fmul fast float %2089, %1900
  %2154 = fmul fast float %2089, %1901
  %2155 = fmul fast float %2089, %1902
  %2156 = fadd fast float %2153, %1185
  %2157 = fadd fast float %2154, %1186
  %2158 = fadd fast float %2155, %1187
  %2159 = fmul fast float %2092, %1928
  %2160 = fadd fast float %2159, %1195
  br label %2183

; <label>:2161                                    ; preds = %2119
  %2162 = icmp eq i32 %2075, 8
  br i1 %2162, label %2163, label %2183

; <label>:2163                                    ; preds = %2161
  %2164 = fmul fast float %2080, %1795
  %2165 = fmul fast float %2080, %1796
  %2166 = fadd fast float %2164, %1180
  %2167 = fadd fast float %2165, %1181
  %2168 = call float @dx.op.binary.f32(i32 36, float %1194, float %1797)  ; FMin(a,b)
  %2169 = fsub fast float %2168, %1194
  %2170 = fmul fast float %2169, %2083
  %2171 = fadd fast float %2170, %1194
  %2172 = fsub fast float %1794, %1193
  %2173 = fmul fast float %2086, %2172
  %2174 = fadd fast float %2173, %1193
  %2175 = fmul fast float %2089, %1900
  %2176 = fmul fast float %2089, %1901
  %2177 = fmul fast float %2089, %1902
  %2178 = fadd fast float %2175, %1185
  %2179 = fadd fast float %2176, %1186
  %2180 = fadd fast float %2177, %1187
  %2181 = fmul fast float %2092, %1928
  %2182 = fadd fast float %2181, %1195
  br label %2183

; <label>:2183                                    ; preds = %2163, %2161, %2121, %2094, %2066, %1493, %1197, %1179
  %2184 = phi float [ %1180, %2066 ], [ %1180, %1493 ], [ %1180, %1179 ], [ %2166, %2163 ], [ %1180, %2161 ], [ %2124, %2121 ], [ %2099, %2094 ], [ %1180, %1197 ]
  %2185 = phi float [ %1181, %2066 ], [ %1181, %1493 ], [ %1181, %1179 ], [ %2167, %2163 ], [ %1181, %2161 ], [ %2125, %2121 ], [ %2100, %2094 ], [ %1181, %1197 ]
  %2186 = phi float [ %2067, %2066 ], [ %1182, %1493 ], [ %1182, %1179 ], [ %2067, %2163 ], [ %2067, %2161 ], [ %2067, %2121 ], [ %2067, %2094 ], [ %1182, %1197 ]
  %2187 = phi float [ %2068, %2066 ], [ %1183, %1493 ], [ %1183, %1179 ], [ %2068, %2163 ], [ %2068, %2161 ], [ %2068, %2121 ], [ %2068, %2094 ], [ %1183, %1197 ]
  %2188 = phi float [ %2069, %2066 ], [ %1184, %1493 ], [ %1184, %1179 ], [ %2069, %2163 ], [ %2069, %2161 ], [ %2069, %2121 ], [ %2069, %2094 ], [ %1184, %1197 ]
  %2189 = phi float [ %1185, %2066 ], [ %1185, %1493 ], [ %1185, %1179 ], [ %2178, %2163 ], [ %1185, %2161 ], [ %2156, %2121 ], [ %2113, %2094 ], [ %1185, %1197 ]
  %2190 = phi float [ %1186, %2066 ], [ %1186, %1493 ], [ %1186, %1179 ], [ %2179, %2163 ], [ %1186, %2161 ], [ %2157, %2121 ], [ %2114, %2094 ], [ %1186, %1197 ]
  %2191 = phi float [ %1187, %2066 ], [ %1187, %1493 ], [ %1187, %1179 ], [ %2180, %2163 ], [ %1187, %2161 ], [ %2158, %2121 ], [ %2115, %2094 ], [ %1187, %1197 ]
  %2192 = phi float [ %2070, %2066 ], [ %1188, %1493 ], [ %1188, %1179 ], [ %2070, %2163 ], [ %2070, %2161 ], [ %2070, %2121 ], [ %2070, %2094 ], [ %1188, %1197 ]
  %2193 = phi float [ %2071, %2066 ], [ %1189, %1493 ], [ %1189, %1179 ], [ %2071, %2163 ], [ %2071, %2161 ], [ %2071, %2121 ], [ %2071, %2094 ], [ %1189, %1197 ]
  %2194 = phi float [ %2072, %2066 ], [ %1190, %1493 ], [ %1190, %1179 ], [ %2072, %2163 ], [ %2072, %2161 ], [ %2072, %2121 ], [ %2072, %2094 ], [ %1190, %1197 ]
  %2195 = phi float [ %2073, %2066 ], [ %1191, %1493 ], [ %1191, %1179 ], [ %2073, %2163 ], [ %2073, %2161 ], [ %2073, %2121 ], [ %2073, %2094 ], [ %1191, %1197 ]
  %2196 = phi float [ %1193, %2066 ], [ %1193, %1493 ], [ %1193, %1179 ], [ %2174, %2163 ], [ %1193, %2161 ], [ %2152, %2121 ], [ %2106, %2094 ], [ %1193, %1197 ]
  %2197 = phi float [ %1194, %2066 ], [ %1194, %1493 ], [ %1194, %1179 ], [ %2171, %2163 ], [ %1194, %2161 ], [ %2129, %2121 ], [ %2103, %2094 ], [ %1194, %1197 ]
  %2198 = phi float [ %1195, %2066 ], [ %1195, %1493 ], [ %1195, %1179 ], [ %2182, %2163 ], [ %1195, %2161 ], [ %2160, %2121 ], [ %2118, %2094 ], [ %1195, %1197 ]
  %2199 = phi float [ %2074, %2066 ], [ %1196, %1493 ], [ %1196, %1179 ], [ %2074, %2163 ], [ %2074, %2161 ], [ %2074, %2121 ], [ %2074, %2094 ], [ %1196, %1197 ]
  br i1 %381, label %3186, label %2200

; <label>:2200                                    ; preds = %2183
  %2201 = icmp ult i32 %437, 3
  %2202 = add i32 %41, 56
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = add i32 %41, 60
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2205, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.i32 %2206, 0
  %2208 = or i32 %2207, %2204
  %2209 = icmp eq i32 %2208, 0
  br i1 %2209, label %3186, label %2210

; <label>:2210                                    ; preds = %2200
  %2211 = and i32 %2204, 262144
  %2212 = icmp ne i32 %2211, 0
  %2213 = select i1 %2212, float %44, float 1.000000e+00
  %2214 = select i1 %2212, float %45, float 0.000000e+00
  %2215 = select i1 %2212, float %46, float 0.000000e+00
  %2216 = select i1 %2212, float %47, float 1.000000e+00
  %2217 = select i1 %2212, float %48, float %64
  %2218 = select i1 %2212, float %49, float %65
  %2219 = add i32 %41, 316
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2219, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = lshr i32 %2221, 16
  %2223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2222)  ; LegacyF16ToF32(value)
  %2224 = fmul fast float %2223, 0x3F50624DE0000000
  %2225 = add i32 %41, 120
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = lshr i32 %2227, 16
  %2229 = and i32 %2228, 255
  %2230 = lshr i32 %2227, 24
  %2231 = add i32 %41, 324
  %2232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2231, i32 undef)  ; BufferLoad(srv,index,wot)
  %2233 = extractvalue %dx.types.ResRet.i32 %2232, 0
  %2234 = and i32 %2233, 65535
  %2235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2234)  ; LegacyF16ToF32(value)
  %2236 = lshr i32 %2233, 16
  %2237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2236)  ; LegacyF16ToF32(value)
  %2238 = add i32 %41, 64
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2238, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = lshr i32 %2240, 22
  %2242 = shl nuw nsw i32 %2241, 5
  %2243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2242)  ; LegacyF16ToF32(value)
  %2244 = shl i32 %2240, 4
  %2245 = and i32 %2244, 32752
  %2246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2245)  ; LegacyF16ToF32(value)
  %2247 = lshr i32 %2240, 7
  %2248 = and i32 %2247, 32752
  %2249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2248)  ; LegacyF16ToF32(value)
  %2250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2251 = extractvalue %dx.types.CBufRet.f32 %2250, 3
  %2252 = fmul fast float %2251, 1.000000e+03
  %2253 = fmul fast float %331, %2252
  %2254 = call float @dx.op.unary.f32(i32 22, float %2253)  ; Frc(value)
  %2255 = fadd fast float %2254, %321
  %2256 = fmul fast float %332, %2252
  %2257 = call float @dx.op.unary.f32(i32 22, float %2256)  ; Frc(value)
  %2258 = fadd fast float %2257, %323
  %2259 = fmul fast float %2224, %2252
  %2260 = call float @dx.op.unary.f32(i32 22, float %2259)  ; Frc(value)
  %2261 = fmul fast float %2260, 0x401921FB60000000
  %2262 = fadd fast float %2261, %2243
  %2263 = call float @dx.op.unary.f32(i32 13, float %2262)  ; Sin(value)
  %2264 = call float @dx.op.unary.f32(i32 12, float %2262)  ; Cos(value)
  %2265 = fsub fast float -0.000000e+00, %2263
  %2266 = fadd fast float %2217, -5.000000e-01
  %2267 = fadd fast float %2218, -5.000000e-01
  %2268 = fmul fast float %2235, %2266
  %2269 = fmul fast float %2237, %2267
  %2270 = fadd fast float %2268, 5.000000e-01
  %2271 = fadd fast float %2269, 5.000000e-01
  %2272 = fmul fast float %2246, %2270
  %2273 = fmul fast float %2249, %2271
  %2274 = fmul fast float %2264, %2272
  %2275 = call float @dx.op.tertiary.f32(i32 46, float %2265, float %2273, float %2274)  ; FMad(a,b,c)
  %2276 = fmul fast float %2263, %2272
  %2277 = call float @dx.op.tertiary.f32(i32 46, float %2264, float %2273, float %2276)  ; FMad(a,b,c)
  %2278 = fadd fast float %2255, %2275
  %2279 = fadd fast float %2258, %2277
  %2280 = icmp ugt i32 %2229, 1
  %2281 = icmp ugt i32 %2227, 33554431
  %2282 = or i1 %2281, %2280
  br i1 %2282, label %2283, label %2308

; <label>:2283                                    ; preds = %2210
  %2284 = add i32 %41, 260
  %2285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2284, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.i32 %2285, 0
  %2287 = lshr i32 %2286, 16
  %2288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2287)  ; LegacyF16ToF32(value)
  %2289 = fmul fast float %2251, %2288
  %2290 = call float @dx.op.unary.f32(i32 22, float %2289)  ; Frc(value)
  %2291 = mul nuw nsw i32 %2229, %2230
  %2292 = uitofp i32 %2291 to float
  %2293 = fmul fast float %2290, %2292
  %2294 = call float @dx.op.unary.f32(i32 27, float %2293)  ; Round_ni(value)
  %2295 = fptoui float %2294 to i32
  %2296 = urem i32 %2295, %2229
  %2297 = udiv i32 %2295, %2230
  %2298 = call float @dx.op.unary.f32(i32 22, float %2278)  ; Frc(value)
  %2299 = call float @dx.op.unary.f32(i32 22, float %2279)  ; Frc(value)
  %2300 = uitofp i32 %2296 to float
  %2301 = uitofp i32 %2297 to float
  %2302 = fadd fast float %2298, %2300
  %2303 = fadd fast float %2299, %2301
  %2304 = uitofp i32 %2229 to float
  %2305 = uitofp i32 %2230 to float
  %2306 = fdiv fast float %2302, %2304
  %2307 = fdiv fast float %2303, %2305
  br label %2308

; <label>:2308                                    ; preds = %2283, %2210
  %2309 = phi float [ %2306, %2283 ], [ %2278, %2210 ]
  %2310 = phi float [ %2307, %2283 ], [ %2279, %2210 ]
  %2311 = and i32 %2204, 16777216
  %2312 = icmp eq i32 %2311, 0
  br i1 %2312, label %2422, label %2313

; <label>:2313                                    ; preds = %2308
  %2314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2315 = extractvalue %dx.types.CBufRet.f32 %2314, 0
  %2316 = extractvalue %dx.types.CBufRet.f32 %2314, 1
  %2317 = extractvalue %dx.types.CBufRet.f32 %2314, 2
  %2318 = fadd fast float %2315, %145
  %2319 = fadd fast float %2316, %146
  %2320 = fadd fast float %2317, %147
  %2321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2322 = extractvalue %dx.types.CBufRet.f32 %2321, 0
  %2323 = call float @dx.op.unary.f32(i32 7, float %2322)  ; Saturate(value)
  %2324 = icmp eq i32 %42, 65535
  br i1 %2324, label %2419, label %2325

; <label>:2325                                    ; preds = %2313
  %2326 = lshr i32 %42, 1
  %2327 = shl i32 %2326, 2
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2327, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = and i32 %42, 1
  %2331 = icmp ne i32 %2330, 0
  %2332 = lshr i32 %2329, 16
  %2333 = and i32 %2329, 65535
  %2334 = select i1 %2331, i32 %2332, i32 %2333
  %2335 = icmp eq i32 %2334, 65535
  br i1 %2335, label %2415, label %2336

; <label>:2336                                    ; preds = %2325
  %2337 = mul nuw nsw i32 %2334, 40
  %2338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.f32 %2338, 0
  %2340 = extractvalue %dx.types.ResRet.f32 %2338, 1
  %2341 = extractvalue %dx.types.ResRet.f32 %2338, 2
  %2342 = add nuw nsw i32 %2337, 12
  %2343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2342, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.f32 %2343, 0
  %2345 = extractvalue %dx.types.ResRet.f32 %2343, 1
  %2346 = extractvalue %dx.types.ResRet.f32 %2343, 2
  %2347 = add nuw nsw i32 %2337, 24
  %2348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2347, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.f32 %2348, 0
  %2350 = extractvalue %dx.types.ResRet.f32 %2348, 1
  %2351 = extractvalue %dx.types.ResRet.f32 %2348, 2
  %2352 = add nuw nsw i32 %2337, 36
  %2353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.f32 %2353, 0
  %2355 = fsub fast float %2318, %2339
  %2356 = fsub fast float %2319, %2340
  %2357 = fsub fast float %2320, %2341
  %2358 = fmul fast float %2354, %2355
  %2359 = fmul fast float %2354, %2356
  %2360 = fmul fast float %2354, %2357
  %2361 = call float @dx.op.unary.f32(i32 27, float %2358)  ; Round_ni(value)
  %2362 = call float @dx.op.unary.f32(i32 27, float %2359)  ; Round_ni(value)
  %2363 = call float @dx.op.unary.f32(i32 27, float %2360)  ; Round_ni(value)
  %2364 = fadd fast float %2361, 5.000000e-01
  %2365 = fadd fast float %2362, 5.000000e-01
  %2366 = fadd fast float %2363, 5.000000e-01
  %2367 = fmul fast float %2364, %2344
  %2368 = fmul fast float %2365, %2345
  %2369 = fmul fast float %2366, %2346
  %2370 = shl i32 %42, 2
  %2371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.i32 %2371, 0
  %2373 = add i32 %2372, 0
  %2374 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2373, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2375 = call float @dx.op.unary.f32(i32 22, float %2367)  ; Frc(value)
  %2376 = call float @dx.op.unary.f32(i32 22, float %2368)  ; Frc(value)
  %2377 = call float @dx.op.unary.f32(i32 22, float %2369)  ; Frc(value)
  %2378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2374, %dx.types.Handle %36, float %2375, float %2376, float %2377, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2379 = extractvalue %dx.types.ResRet.f32 %2378, 0
  %2380 = extractvalue %dx.types.ResRet.f32 %2378, 1
  %2381 = extractvalue %dx.types.ResRet.f32 %2378, 2
  %2382 = fmul fast float %2379, 1.023000e+03
  %2383 = fmul fast float %2380, 1.023000e+03
  %2384 = fmul fast float %2381, 1.023000e+03
  %2385 = fadd fast float %2382, 5.000000e-01
  %2386 = fadd fast float %2383, 5.000000e-01
  %2387 = fadd fast float %2384, 5.000000e-01
  %2388 = call float @dx.op.unary.f32(i32 27, float %2385)  ; Round_ni(value)
  %2389 = call float @dx.op.unary.f32(i32 27, float %2386)  ; Round_ni(value)
  %2390 = call float @dx.op.unary.f32(i32 27, float %2387)  ; Round_ni(value)
  %2391 = fsub fast float %2358, %2361
  %2392 = fsub fast float %2359, %2362
  %2393 = fsub fast float %2360, %2363
  %2394 = fmul fast float %2391, 7.500000e-01
  %2395 = fmul fast float %2392, 7.500000e-01
  %2396 = fmul fast float %2393, 7.500000e-01
  %2397 = fadd fast float %2361, 1.250000e-01
  %2398 = fadd fast float %2397, %2394
  %2399 = fadd fast float %2398, %2388
  %2400 = fadd fast float %2362, 1.250000e-01
  %2401 = fadd fast float %2400, %2395
  %2402 = fadd fast float %2401, %2389
  %2403 = fadd fast float %2363, 1.250000e-01
  %2404 = fadd fast float %2403, %2396
  %2405 = fadd fast float %2404, %2390
  %2406 = fmul fast float %2399, %2349
  %2407 = fmul fast float %2402, %2350
  %2408 = fmul fast float %2405, %2351
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = add i32 %2410, 0
  %2412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2411, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2412, %dx.types.Handle %34, float %2406, float %2407, float %2408, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2414 = extractvalue %dx.types.ResRet.f32 %2413, 0
  br label %2415

; <label>:2415                                    ; preds = %2336, %2325
  %2416 = phi float [ %2414, %2336 ], [ -1.000000e+00, %2325 ]
  %2417 = fadd fast float %2416, %2323
  %2418 = call float @dx.op.unary.f32(i32 7, float %2417)  ; Saturate(value)
  br label %2419

; <label>:2419                                    ; preds = %2415, %2313
  %2420 = phi float [ %2418, %2415 ], [ %2323, %2313 ]
  %2421 = fmul fast float %2420, %433
  br label %2422

; <label>:2422                                    ; preds = %2419, %2308
  %2423 = phi float [ %2421, %2419 ], [ %433, %2308 ]
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = and i32 %2425, 256
  %2427 = icmp eq i32 %2426, 0
  br i1 %2427, label %2474, label %2428

; <label>:2428                                    ; preds = %2422
  %2429 = add i32 %41, 432
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2429, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = add i32 %2431, 0
  %2433 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2432, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2434 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2433, %dx.types.Handle %79, float %2309, float %2310, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2435 = extractvalue %dx.types.ResRet.f32 %2434, 0
  %2436 = add i32 %41, 132
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = shl i32 %2438, 4
  %2440 = and i32 %2439, 32752
  %2441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2440)  ; LegacyF16ToF32(value)
  %2442 = lshr i32 %2438, 7
  %2443 = and i32 %2442, 32752
  %2444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2443)  ; LegacyF16ToF32(value)
  %2445 = fsub fast float 1.000000e+00, %2423
  %2446 = call float @dx.op.binary.f32(i32 35, float %2445, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2447 = bitcast float %2423 to i32
  %2448 = sitofp i32 %2447 to float
  %2449 = fadd fast float %2448, 0xC1CFBF8940000000
  %2450 = fmul fast float %2444, %2449
  %2451 = fadd fast float %2450, 0x41CFBF8940000000
  %2452 = fptosi float %2451 to i32
  %2453 = bitcast i32 %2452 to float
  %2454 = bitcast float %2446 to i32
  %2455 = sitofp i32 %2454 to float
  %2456 = fadd fast float %2455, 0xC1CFBF8940000000
  %2457 = fmul fast float %2456, %2444
  %2458 = fadd fast float %2457, 0x41CFBF8940000000
  %2459 = fptosi float %2458 to i32
  %2460 = bitcast i32 %2459 to float
  %2461 = fmul fast float %2453, %2441
  %2462 = fmul fast float %2460, %2441
  %2463 = fsub fast float %2446, %2461
  %2464 = fadd fast float %2462, %2446
  %2465 = call float @dx.op.unary.f32(i32 7, float %2463)  ; Saturate(value)
  %2466 = call float @dx.op.unary.f32(i32 7, float %2464)  ; Saturate(value)
  %2467 = fsub fast float %2435, %2465
  %2468 = fsub fast float %2466, %2465
  %2469 = bitcast float %2468 to i32
  %2470 = sub nsw i32 2129859010, %2469
  %2471 = bitcast i32 %2470 to float
  %2472 = fmul fast float %2471, %2467
  %2473 = call float @dx.op.unary.f32(i32 7, float %2472)  ; Saturate(value)
  br label %2474

; <label>:2474                                    ; preds = %2428, %2422
  %2475 = phi float [ %2473, %2428 ], [ %2423, %2422 ]
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = and i32 %2477, 128
  %2479 = icmp eq i32 %2478, 0
  br i1 %2479, label %2496, label %2480

; <label>:2480                                    ; preds = %2474
  %2481 = add i32 %41, 416
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2481, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = add i32 %2483, 0
  %2485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2486 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2485, %dx.types.Handle %79, float %2309, float %2310, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2487 = extractvalue %dx.types.ResRet.f32 %2486, 0
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = and i32 %2489, 524288
  %2491 = icmp ne i32 %2490, 0
  %2492 = fcmp fast ogt float %2487, 0x3FE0101020000000
  %2493 = select i1 %2492, float 1.000000e+00, float 0.000000e+00
  %2494 = select i1 %2491, float %2493, float %2487
  %2495 = fmul fast float %2494, %2475
  br label %2496

; <label>:2496                                    ; preds = %2480, %2474
  %2497 = phi float [ %2495, %2480 ], [ %2475, %2474 ]
  %2498 = fcmp fast ult float %2497, 0x3F70101020000000
  br i1 %2498, label %3186, label %2499

; <label>:2499                                    ; preds = %2496
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = and i32 %2501, 16
  %2503 = icmp eq i32 %2502, 0
  br i1 %2503, label %2702, label %2504

; <label>:2504                                    ; preds = %2499
  %2505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2506 = extractvalue %dx.types.ResRet.i32 %2505, 0
  %2507 = add i32 %41, 368
  %2508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2507, i32 undef)  ; BufferLoad(srv,index,wot)
  %2509 = extractvalue %dx.types.ResRet.i32 %2508, 0
  %2510 = add i32 %2509, 0
  %2511 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2510, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2512 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2511, %dx.types.Handle %78, float %2309, float %2310, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2513 = extractvalue %dx.types.ResRet.f32 %2512, 0
  %2514 = extractvalue %dx.types.ResRet.f32 %2512, 1
  %2515 = extractvalue %dx.types.ResRet.f32 %2512, 2
  %2516 = extractvalue %dx.types.ResRet.f32 %2512, 3
  %2517 = and i32 %2506, 255
  %2518 = uitofp i32 %2517 to float
  %2519 = lshr i32 %2506, 8
  %2520 = and i32 %2519, 255
  %2521 = uitofp i32 %2520 to float
  %2522 = fmul fast float %2516, %2518
  %2523 = fadd fast float %2522, %2521
  %2524 = fmul fast float %2523, 0x3F70101000000000
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = and i32 %2526, 512
  %2528 = icmp eq i32 %2527, 0
  br i1 %2528, label %2537, label %2529

; <label>:2529                                    ; preds = %2504
  %2530 = add i32 %41, 448
  %2531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2530, i32 undef)  ; BufferLoad(srv,index,wot)
  %2532 = extractvalue %dx.types.ResRet.i32 %2531, 0
  %2533 = add i32 %2532, 0
  %2534 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2533, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2535 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2534, %dx.types.Handle %79, float %2309, float %2310, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2536 = extractvalue %dx.types.ResRet.f32 %2535, 0
  br label %2537

; <label>:2537                                    ; preds = %2529, %2504
  %2538 = phi float [ %2536, %2529 ], [ 1.000000e+00, %2504 ]
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = and i32 %2540, 33554432
  %2542 = icmp eq i32 %2541, 0
  br i1 %2542, label %2649, label %2543

; <label>:2543                                    ; preds = %2537
  %2544 = add i32 %41, 256
  %2545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.i32 %2545, 0
  %2547 = and i32 %2546, 65535
  %2548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2547)  ; LegacyF16ToF32(value)
  %2549 = lshr i32 %2546, 16
  %2550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2549)  ; LegacyF16ToF32(value)
  %2551 = add i32 %41, 260
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = and i32 %2553, 65535
  %2555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2554)  ; LegacyF16ToF32(value)
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = lshr i32 %2557, 24
  %2559 = uitofp i32 %2558 to float
  %2560 = fmul fast float %2559, 0x3F70101020000000
  %2561 = and i32 %2557, 255
  %2562 = uitofp i32 %2561 to float
  %2563 = fmul fast float %2562, 0x3F70101020000000
  %2564 = lshr i32 %2557, 8
  %2565 = and i32 %2564, 255
  %2566 = uitofp i32 %2565 to float
  %2567 = fmul fast float %2566, 0x3F70101020000000
  %2568 = lshr i32 %2557, 16
  %2569 = and i32 %2568, 255
  %2570 = uitofp i32 %2569 to float
  %2571 = fmul fast float %2570, 0x3F70101020000000
  %2572 = add i32 %41, 252
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2572, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = lshr i32 %2574, 24
  %2576 = uitofp i32 %2575 to float
  %2577 = fmul fast float %2576, 0x3F70101020000000
  %2578 = and i32 %2574, 255
  %2579 = uitofp i32 %2578 to float
  %2580 = fmul fast float %2579, 0x3F70101020000000
  %2581 = lshr i32 %2574, 8
  %2582 = and i32 %2581, 255
  %2583 = uitofp i32 %2582 to float
  %2584 = fmul fast float %2583, 0x3F70101020000000
  %2585 = lshr i32 %2574, 16
  %2586 = and i32 %2585, 255
  %2587 = uitofp i32 %2586 to float
  %2588 = fmul fast float %2587, 0x3F70101020000000
  %2589 = bitcast float %2513 to i32
  %2590 = ashr i32 %2589, 1
  %2591 = sub nsw i32 1597463174, %2590
  %2592 = bitcast i32 %2591 to float
  %2593 = fmul fast float %2513, 5.000000e-01
  %2594 = fmul fast float %2592, %2592
  %2595 = fmul fast float %2594, %2593
  %2596 = fsub fast float 1.500000e+00, %2595
  %2597 = fmul fast float %2592, %2513
  %2598 = fmul fast float %2597, %2596
  %2599 = bitcast float %2514 to i32
  %2600 = ashr i32 %2599, 1
  %2601 = sub nsw i32 1597463174, %2600
  %2602 = bitcast i32 %2601 to float
  %2603 = fmul fast float %2514, 5.000000e-01
  %2604 = fmul fast float %2602, %2602
  %2605 = fmul fast float %2604, %2603
  %2606 = fsub fast float 1.500000e+00, %2605
  %2607 = fmul fast float %2602, %2514
  %2608 = fmul fast float %2607, %2606
  %2609 = bitcast float %2515 to i32
  %2610 = ashr i32 %2609, 1
  %2611 = sub nsw i32 1597463174, %2610
  %2612 = bitcast i32 %2611 to float
  %2613 = fmul fast float %2515, 5.000000e-01
  %2614 = fmul fast float %2612, %2612
  %2615 = fmul fast float %2614, %2613
  %2616 = fsub fast float 1.500000e+00, %2615
  %2617 = fmul fast float %2612, %2515
  %2618 = fmul fast float %2617, %2616
  %2619 = fsub fast float %2598, %2580
  %2620 = fsub fast float %2608, %2584
  %2621 = fsub fast float %2618, %2588
  %2622 = fmul fast float %2619, %2548
  %2623 = fmul fast float %2620, %2550
  %2624 = fmul fast float %2621, %2555
  %2625 = fadd fast float %2622, %2563
  %2626 = fadd fast float %2623, %2567
  %2627 = fadd fast float %2624, %2571
  %2628 = call float @dx.op.unary.f32(i32 7, float %2625)  ; Saturate(value)
  %2629 = call float @dx.op.unary.f32(i32 7, float %2626)  ; Saturate(value)
  %2630 = call float @dx.op.unary.f32(i32 7, float %2627)  ; Saturate(value)
  %2631 = fmul fast float %2628, %2628
  %2632 = fmul fast float %2629, %2629
  %2633 = fmul fast float %2630, %2630
  %2634 = fsub fast float %2631, %2513
  %2635 = fsub fast float %2632, %2514
  %2636 = fsub fast float %2633, %2515
  %2637 = fmul fast float %2634, %2538
  %2638 = fmul fast float %2635, %2538
  %2639 = fmul fast float %2636, %2538
  %2640 = fadd fast float %2637, %2513
  %2641 = fadd fast float %2638, %2514
  %2642 = fadd fast float %2639, %2515
  %2643 = fadd fast float %2560, %2524
  %2644 = fsub fast float %2643, %2577
  %2645 = call float @dx.op.unary.f32(i32 7, float %2644)  ; Saturate(value)
  %2646 = fsub fast float %2645, %2524
  %2647 = fmul fast float %2646, %2538
  %2648 = fadd fast float %2647, %2524
  br label %2702

; <label>:2649                                    ; preds = %2537
  %2650 = and i32 %2540, 134217728
  %2651 = icmp eq i32 %2650, 0
  br i1 %2651, label %2686, label %2652

; <label>:2652                                    ; preds = %2649
  %2653 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %2654 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %2655 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %2656 = fadd fast float %2653, -5.000000e-01
  %2657 = fadd fast float %2654, -5.000000e-01
  %2658 = fadd fast float %2655, -5.000000e-01
  %2659 = fmul fast float %2656, %2538
  %2660 = fmul fast float %2657, %2538
  %2661 = fmul fast float %2658, %2538
  %2662 = fadd fast float %2659, 5.000000e-01
  %2663 = fadd fast float %2660, 5.000000e-01
  %2664 = fadd fast float %2661, 5.000000e-01
  %2665 = call float @dx.op.unary.f32(i32 24, float %2513)  ; Sqrt(value)
  %2666 = call float @dx.op.unary.f32(i32 24, float %2514)  ; Sqrt(value)
  %2667 = call float @dx.op.unary.f32(i32 24, float %2515)  ; Sqrt(value)
  %2668 = fmul fast float %2662, 2.000000e+00
  %2669 = fsub fast float 1.000000e+00, %2668
  %2670 = fmul fast float %2669, %2665
  %2671 = fadd fast float %2670, %2668
  %2672 = fmul fast float %2671, %2665
  %2673 = fmul fast float %2663, 2.000000e+00
  %2674 = fsub fast float 1.000000e+00, %2673
  %2675 = fmul fast float %2674, %2666
  %2676 = fadd fast float %2675, %2673
  %2677 = fmul fast float %2676, %2666
  %2678 = fmul fast float %2664, 2.000000e+00
  %2679 = fsub fast float 1.000000e+00, %2678
  %2680 = fmul fast float %2679, %2667
  %2681 = fadd fast float %2680, %2678
  %2682 = fmul fast float %2681, %2667
  %2683 = fmul fast float %2672, %2672
  %2684 = fmul fast float %2677, %2677
  %2685 = fmul fast float %2682, %2682
  br label %2702

; <label>:2686                                    ; preds = %2649
  %2687 = fmul fast float %308, %308
  %2688 = fmul fast float %312, %312
  %2689 = fmul fast float %316, %316
  %2690 = fadd fast float %2687, -1.000000e+00
  %2691 = fadd fast float %2688, -1.000000e+00
  %2692 = fadd fast float %2689, -1.000000e+00
  %2693 = fmul fast float %2538, %2690
  %2694 = fmul fast float %2538, %2691
  %2695 = fmul fast float %2538, %2692
  %2696 = fadd fast float %2693, 1.000000e+00
  %2697 = fadd fast float %2694, 1.000000e+00
  %2698 = fadd fast float %2695, 1.000000e+00
  %2699 = fmul fast float %2696, %2513
  %2700 = fmul fast float %2697, %2514
  %2701 = fmul fast float %2698, %2515
  br label %2702

; <label>:2702                                    ; preds = %2686, %2652, %2543, %2499
  %2703 = phi float [ %2648, %2543 ], [ %2524, %2652 ], [ %2524, %2686 ], [ 0x3FA23C0BE0000000, %2499 ]
  %2704 = phi float [ %2640, %2543 ], [ %2683, %2652 ], [ %2699, %2686 ], [ 1.000000e+00, %2499 ]
  %2705 = phi float [ %2641, %2543 ], [ %2684, %2652 ], [ %2700, %2686 ], [ 1.000000e+00, %2499 ]
  %2706 = phi float [ %2642, %2543 ], [ %2685, %2652 ], [ %2701, %2686 ], [ 1.000000e+00, %2499 ]
  %2707 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2708 = extractvalue %dx.types.CBufRet.i32 %2707, 1
  %2709 = and i32 %2708, 1
  %2710 = icmp ne i32 %2709, 0
  %2711 = add i32 %41, 356
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = and i32 %2713, 32
  %2715 = icmp ne i32 %2714, 0
  %2716 = and i1 %2710, %2715
  %2717 = select i1 %2716, float 1.000000e+00, float %2704
  %2718 = select i1 %2716, float 0x3FD3333340000000, float %2705
  %2719 = select i1 %2716, float 0x3FD3333340000000, float %2706
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = and i32 %2721, 32
  %2723 = icmp eq i32 %2722, 0
  br i1 %2723, label %2796, label %2724

; <label>:2724                                    ; preds = %2702
  %2725 = add i32 %41, 124
  %2726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.i32 %2726, 0
  %2728 = add i32 %41, 384
  %2729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.i32 %2729, 0
  %2731 = add i32 %2730, 0
  %2732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2731, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2733 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2732, %dx.types.Handle %78, float %2309, float %2310, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2734 = extractvalue %dx.types.ResRet.f32 %2733, 0
  %2735 = extractvalue %dx.types.ResRet.f32 %2733, 1
  %2736 = extractvalue %dx.types.ResRet.f32 %2733, 2
  %2737 = extractvalue %dx.types.ResRet.f32 %2733, 3
  %2738 = and i32 %2727, 255
  %2739 = uitofp i32 %2738 to float
  %2740 = lshr i32 %2727, 8
  %2741 = and i32 %2740, 255
  %2742 = uitofp i32 %2741 to float
  %2743 = lshr i32 %2727, 16
  %2744 = and i32 %2743, 255
  %2745 = uitofp i32 %2744 to float
  %2746 = fmul fast float %2745, 0x3F70101000000000
  %2747 = fmul fast float %2734, %2739
  %2748 = fadd fast float %2747, %2742
  %2749 = fmul fast float %2748, 0x3F70101000000000
  %2750 = fadd fast float %2735, -5.000000e-01
  %2751 = fadd fast float %2737, -5.000000e-01
  %2752 = fmul fast float %2750, %2746
  %2753 = fmul fast float %2751, %2746
  %2754 = fadd fast float %2752, 5.000000e-01
  %2755 = fadd fast float %2753, 5.000000e-01
  %2756 = fmul fast float %2754, 2.000000e+00
  %2757 = fadd fast float %2756, -1.000000e+00
  %2758 = fmul fast float %2755, 2.000000e+00
  %2759 = fadd fast float %2758, -1.000000e+00
  %2760 = fadd fast float %2757, %2759
  %2761 = fmul fast float %2760, 5.000000e-01
  %2762 = fsub fast float %2757, %2759
  %2763 = fmul fast float %2762, 5.000000e-01
  %2764 = call float @dx.op.unary.f32(i32 6, float %2761)  ; FAbs(value)
  %2765 = fsub fast float 1.000000e+00, %2764
  %2766 = call float @dx.op.unary.f32(i32 6, float %2763)  ; FAbs(value)
  %2767 = fsub fast float %2765, %2766
  %2768 = call float @dx.op.dot3.f32(i32 55, float %2761, float %2763, float %2767, float %2761, float %2763, float %2767)  ; Dot3(ax,ay,az,bx,by,bz)
  %2769 = call float @dx.op.unary.f32(i32 25, float %2768)  ; Rsqrt(value)
  %2770 = fmul fast float %2761, %2769
  %2771 = fmul fast float %2763, %2769
  %2772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2773 = extractvalue %dx.types.ResRet.i32 %2772, 0
  %2774 = and i32 %2773, 67108864
  %2775 = icmp eq i32 %2774, 0
  br i1 %2775, label %2792, label %2776

; <label>:2776                                    ; preds = %2724
  %2777 = add i32 %41, 312
  %2778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2779 = extractvalue %dx.types.ResRet.i32 %2778, 0
  %2780 = and i32 %2779, 65535
  %2781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2780)  ; LegacyF16ToF32(value)
  %2782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2219, i32 undef)  ; BufferLoad(srv,index,wot)
  %2783 = extractvalue %dx.types.ResRet.i32 %2782, 0
  %2784 = and i32 %2783, 65535
  %2785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2784)  ; LegacyF16ToF32(value)
  %2786 = lshr i32 %2779, 16
  %2787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2786)  ; LegacyF16ToF32(value)
  %2788 = fsub fast float %2749, %2787
  %2789 = fmul fast float %2788, %2781
  %2790 = fadd fast float %2789, %2785
  %2791 = call float @dx.op.unary.f32(i32 7, float %2790)  ; Saturate(value)
  br label %2792

; <label>:2792                                    ; preds = %2776, %2724
  %2793 = phi float [ %2791, %2776 ], [ %2749, %2724 ]
  %2794 = call float @dx.op.dot2.f32(i32 54, float %2770, float %2771, float %2213, float %2214)  ; Dot2(ax,ay,bx,by)
  %2795 = call float @dx.op.dot2.f32(i32 54, float %2770, float %2771, float %2215, float %2216)  ; Dot2(ax,ay,bx,by)
  br label %2796

; <label>:2796                                    ; preds = %2792, %2702
  %2797 = phi float [ %2793, %2792 ], [ 0x3FD6666660000000, %2702 ]
  %2798 = phi float [ %2794, %2792 ], [ 0.000000e+00, %2702 ]
  %2799 = phi float [ %2795, %2792 ], [ 0.000000e+00, %2702 ]
  %2800 = phi float [ %2736, %2792 ], [ 1.000000e+00, %2702 ]
  %2801 = add i32 %41, 192
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = lshr i32 %2803, 22
  %2805 = shl nuw nsw i32 %2804, 5
  %2806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2805)  ; LegacyF16ToF32(value)
  %2807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2808 = extractvalue %dx.types.ResRet.i32 %2807, 0
  %2809 = and i32 %2808, 64
  %2810 = icmp eq i32 %2809, 0
  br i1 %2810, label %2844, label %2811

; <label>:2811                                    ; preds = %2796
  %2812 = add i32 %41, 400
  %2813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %2814 = extractvalue %dx.types.ResRet.i32 %2813, 0
  %2815 = add i32 %2814, 0
  %2816 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2815, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = and i32 %2818, 131072
  %2820 = icmp eq i32 %2819, 0
  %2821 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2816, %dx.types.Handle %78, float %2309, float %2310, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2822 = extractvalue %dx.types.ResRet.f32 %2821, 0
  %2823 = extractvalue %dx.types.ResRet.f32 %2821, 1
  %2824 = extractvalue %dx.types.ResRet.f32 %2821, 2
  %2825 = fmul fast float %2822, %296
  %2826 = fmul fast float %2823, %299
  %2827 = fmul fast float %2824, %302
  br i1 %2820, label %2834, label %2828

; <label>:2828                                    ; preds = %2811
  %2829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2830 = extractvalue %dx.types.CBufRet.f32 %2829, 0
  %2831 = fmul fast float %2830, %2825
  %2832 = fmul fast float %2830, %2826
  %2833 = fmul fast float %2830, %2827
  br label %2834

; <label>:2834                                    ; preds = %2828, %2811
  %2835 = phi float [ %2831, %2828 ], [ %2825, %2811 ]
  %2836 = phi float [ %2832, %2828 ], [ %2826, %2811 ]
  %2837 = phi float [ %2833, %2828 ], [ %2827, %2811 ]
  %2838 = fmul fast float %2835, %2806
  %2839 = select i1 %206, float %2838, float %2835
  %2840 = call float @dx.op.dot3.f32(i32 55, float %2839, float %2836, float %2837, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2841 = select i1 %206, float 0.000000e+00, float %2835
  %2842 = select i1 %206, float %2840, float %2836
  %2843 = select i1 %206, float 0.000000e+00, float %2837
  br label %2844

; <label>:2844                                    ; preds = %2834, %2796
  %2845 = phi float [ %2841, %2834 ], [ 0.000000e+00, %2796 ]
  %2846 = phi float [ %2842, %2834 ], [ 0.000000e+00, %2796 ]
  %2847 = phi float [ %2843, %2834 ], [ 0.000000e+00, %2796 ]
  %2848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2849 = extractvalue %dx.types.ResRet.i32 %2848, 0
  %2850 = and i32 %2849, 1024
  %2851 = icmp eq i32 %2850, 0
  br i1 %2851, label %2882, label %2852

; <label>:2852                                    ; preds = %2844
  %2853 = add i32 %41, 184
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = and i32 %2855, 255
  %2857 = uitofp i32 %2856 to float
  %2858 = fmul fast float %2857, 0x3F70101020000000
  %2859 = lshr i32 %2855, 8
  %2860 = and i32 %2859, 255
  %2861 = uitofp i32 %2860 to float
  %2862 = fmul fast float %2861, 0x3F70101020000000
  %2863 = lshr i32 %2855, 16
  %2864 = and i32 %2863, 255
  %2865 = uitofp i32 %2864 to float
  %2866 = fmul fast float %2865, 0x3F70101020000000
  %2867 = fmul fast float %2858, %2858
  %2868 = fmul fast float %2862, %2862
  %2869 = fmul fast float %2866, %2866
  %2870 = add i32 %41, 464
  %2871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2872 = extractvalue %dx.types.ResRet.i32 %2871, 0
  %2873 = add i32 %2872, 0
  %2874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2873, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2875 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2874, %dx.types.Handle %79, float %2309, float %2310, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2876 = extractvalue %dx.types.ResRet.f32 %2875, 0
  %2877 = extractvalue %dx.types.ResRet.f32 %2875, 1
  %2878 = extractvalue %dx.types.ResRet.f32 %2875, 2
  %2879 = fmul fast float %2867, %2876
  %2880 = fmul fast float %2868, %2877
  %2881 = fmul fast float %2869, %2878
  br label %2882

; <label>:2882                                    ; preds = %2852, %2844
  %2883 = phi float [ %2879, %2852 ], [ 0.000000e+00, %2844 ]
  %2884 = phi float [ %2880, %2852 ], [ 0.000000e+00, %2844 ]
  %2885 = phi float [ %2881, %2852 ], [ 0.000000e+00, %2844 ]
  %2886 = fcmp fast ogt float %2883, 0.000000e+00
  %2887 = fcmp fast ogt float %2884, 0.000000e+00
  %2888 = fcmp fast ogt float %2885, 0.000000e+00
  %2889 = call float @dx.op.unary.f32(i32 23, float %2883)  ; Log(value)
  %2890 = call float @dx.op.unary.f32(i32 23, float %2884)  ; Log(value)
  %2891 = call float @dx.op.unary.f32(i32 23, float %2885)  ; Log(value)
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = lshr i32 %2893, 7
  %2895 = and i32 %2894, 32752
  %2896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2895)  ; LegacyF16ToF32(value)
  %2897 = fmul fast float %2889, 0xBFE62E4300000000
  %2898 = fmul fast float %2897, %2896
  %2899 = fmul fast float %2890, 0xBFE62E4300000000
  %2900 = fmul fast float %2899, %2896
  %2901 = fmul fast float %2891, 0xBFE62E4300000000
  %2902 = fmul fast float %2901, %2896
  %2903 = select i1 %2886, float %2898, float 1.270000e+02
  %2904 = select i1 %2887, float %2900, float 1.270000e+02
  %2905 = select i1 %2888, float %2902, float 1.270000e+02
  %2906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2907 = extractvalue %dx.types.ResRet.i32 %2906, 0
  %2908 = and i32 %2907, 10240
  %2909 = icmp eq i32 %2908, 0
  br i1 %2909, label %2930, label %2910

; <label>:2910                                    ; preds = %2882
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = and i32 %2912, 2048
  %2914 = icmp eq i32 %2913, 0
  br i1 %2914, label %2930, label %2915

; <label>:2915                                    ; preds = %2910
  %2916 = add i32 %41, 480
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2916, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = add i32 %2918, 0
  %2920 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2919, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2921 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2920, %dx.types.Handle %79, float %2309, float %2310, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2922 = extractvalue %dx.types.ResRet.f32 %2921, 3
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = shl i32 %2924, 4
  %2926 = and i32 %2925, 32752
  %2927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2926)  ; LegacyF16ToF32(value)
  %2928 = fmul fast float %2927, %2922
  %2929 = call float @dx.op.binary.f32(i32 35, float %2928, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2930

; <label>:2930                                    ; preds = %2915, %2910, %2882
  %2931 = phi float [ %2929, %2915 ], [ 0x3F70101020000000, %2910 ], [ 0x3F70101020000000, %2882 ]
  %2932 = add i32 %41, 128
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2932, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = and i32 %2934, 255
  %2936 = uitofp i32 %2935 to float
  %2937 = lshr i32 %2934, 8
  %2938 = and i32 %2937, 255
  %2939 = uitofp i32 %2938 to float
  %2940 = call float @dx.op.dot3.f32(i32 55, float %2717, float %2718, float %2719, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2941 = fmul fast float %2939, %2940
  %2942 = fadd fast float %2941, %2936
  %2943 = fmul fast float %2942, 0x3F70101020000000
  %2944 = call float @dx.op.unary.f32(i32 7, float %2943)  ; Saturate(value)
  br i1 %2201, label %2945, label %2980

; <label>:2945                                    ; preds = %2930
  %2946 = fmul fast float %2931, 2.000000e+00
  %2947 = fcmp fast olt float %2903, 1.270000e+02
  %2948 = fcmp fast olt float %2904, 1.270000e+02
  %2949 = fcmp fast olt float %2905, 1.270000e+02
  %2950 = fmul fast float %2903, 0xBFF7154760000000
  %2951 = fmul fast float %2950, %2946
  %2952 = fmul fast float %2904, 0xBFF7154760000000
  %2953 = fmul fast float %2952, %2946
  %2954 = fmul fast float %2905, 0xBFF7154760000000
  %2955 = fmul fast float %2954, %2946
  %2956 = call float @dx.op.unary.f32(i32 21, float %2951)  ; Exp(value)
  %2957 = call float @dx.op.unary.f32(i32 21, float %2953)  ; Exp(value)
  %2958 = call float @dx.op.unary.f32(i32 21, float %2955)  ; Exp(value)
  %2959 = call float @dx.op.unary.f32(i32 7, float %2956)  ; Saturate(value)
  %2960 = call float @dx.op.unary.f32(i32 7, float %2957)  ; Saturate(value)
  %2961 = call float @dx.op.unary.f32(i32 7, float %2958)  ; Saturate(value)
  %2962 = fadd fast float %2959, -1.000000e+00
  %2963 = select i1 %2947, float %2962, float -1.000000e+00
  %2964 = fadd fast float %2960, -1.000000e+00
  %2965 = select i1 %2948, float %2964, float -1.000000e+00
  %2966 = fadd fast float %2961, -1.000000e+00
  %2967 = select i1 %2949, float %2966, float -1.000000e+00
  %2968 = fmul fast float %2963, %2497
  %2969 = fmul fast float %2965, %2497
  %2970 = fmul fast float %2967, %2497
  %2971 = fadd fast float %2968, 1.000000e+00
  %2972 = fadd fast float %2969, 1.000000e+00
  %2973 = fadd fast float %2970, 1.000000e+00
  %2974 = fmul fast float %2971, %2192
  %2975 = fmul fast float %2972, %2193
  %2976 = fmul fast float %2973, %2194
  %2977 = fmul fast float %2971, %2186
  %2978 = fmul fast float %2972, %2187
  %2979 = fmul fast float %2973, %2188
  br label %2980

; <label>:2980                                    ; preds = %2945, %2930
  %2981 = phi float [ %2977, %2945 ], [ %2186, %2930 ]
  %2982 = phi float [ %2978, %2945 ], [ %2187, %2930 ]
  %2983 = phi float [ %2979, %2945 ], [ %2188, %2930 ]
  %2984 = phi float [ %2974, %2945 ], [ %2192, %2930 ]
  %2985 = phi float [ %2975, %2945 ], [ %2193, %2930 ]
  %2986 = phi float [ %2976, %2945 ], [ %2194, %2930 ]
  %2987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.i32 %2987, 0
  %2989 = and i32 %2988, 3
  %2990 = icmp eq i32 %2989, 3
  br i1 %2990, label %3069, label %2991

; <label>:2991                                    ; preds = %2980
  %2992 = and i32 %2988, 16
  %2993 = icmp ne i32 %2992, 0
  %2994 = select i1 %2993, float %2497, float 0.000000e+00
  %2995 = icmp eq i32 %2989, 0
  br i1 %2995, label %2996, label %3024

; <label>:2996                                    ; preds = %2991
  %2997 = and i32 %2988, 64
  %2998 = icmp ne i32 %2997, 0
  %2999 = select i1 %2998, float %2497, float 0.000000e+00
  %3000 = fsub fast float %2717, %2984
  %3001 = fsub fast float %2718, %2985
  %3002 = fsub fast float %2719, %2986
  %3003 = fmul fast float %2994, %3000
  %3004 = fmul fast float %2994, %3001
  %3005 = fmul fast float %2994, %3002
  %3006 = fadd fast float %3003, %2984
  %3007 = fadd fast float %3004, %2985
  %3008 = fadd fast float %3005, %2986
  %3009 = fsub fast float %2703, %2195
  %3010 = fmul fast float %2994, %3009
  %3011 = fadd fast float %3010, %2195
  %3012 = fsub fast float %2845, %2981
  %3013 = fsub fast float %2846, %2982
  %3014 = fsub fast float %2847, %2983
  %3015 = fmul fast float %2999, %3012
  %3016 = fmul fast float %2999, %3013
  %3017 = fmul fast float %2999, %3014
  %3018 = fadd fast float %3015, %2981
  %3019 = fadd fast float %3016, %2982
  %3020 = fadd fast float %3017, %2983
  %3021 = fsub fast float %2944, %2199
  %3022 = fmul fast float %2994, %3021
  %3023 = fadd fast float %3022, %2199
  br label %3069

; <label>:3024                                    ; preds = %2991
  %3025 = icmp eq i32 %2989, 1
  br i1 %3025, label %3026, label %3039

; <label>:3026                                    ; preds = %3024
  %3027 = fadd fast float %2717, -1.000000e+00
  %3028 = fadd fast float %2718, -1.000000e+00
  %3029 = fadd fast float %2719, -1.000000e+00
  %3030 = fmul fast float %2994, %3027
  %3031 = fmul fast float %2994, %3028
  %3032 = fmul fast float %2994, %3029
  %3033 = fadd fast float %3030, 1.000000e+00
  %3034 = fadd fast float %3031, 1.000000e+00
  %3035 = fadd fast float %3032, 1.000000e+00
  %3036 = fmul fast float %3033, %2984
  %3037 = fmul fast float %3034, %2985
  %3038 = fmul fast float %3035, %2986
  br label %3069

; <label>:3039                                    ; preds = %3024
  %3040 = icmp eq i32 %2989, 2
  br i1 %3040, label %3041, label %3069

; <label>:3041                                    ; preds = %3039
  %3042 = call float @dx.op.unary.f32(i32 24, float %2717)  ; Sqrt(value)
  %3043 = call float @dx.op.unary.f32(i32 24, float %2718)  ; Sqrt(value)
  %3044 = call float @dx.op.unary.f32(i32 24, float %2719)  ; Sqrt(value)
  %3045 = fadd fast float %3042, -5.000000e-01
  %3046 = fadd fast float %3043, -5.000000e-01
  %3047 = fadd fast float %3044, -5.000000e-01
  %3048 = fmul fast float %3045, %2994
  %3049 = fmul fast float %3046, %2994
  %3050 = fmul fast float %3047, %2994
  %3051 = fadd fast float %3048, 5.000000e-01
  %3052 = fadd fast float %3049, 5.000000e-01
  %3053 = fadd fast float %3050, 5.000000e-01
  %3054 = fmul fast float %3051, 2.000000e+00
  %3055 = fsub fast float 1.000000e+00, %3054
  %3056 = fmul fast float %3055, %2984
  %3057 = fadd fast float %3056, %3054
  %3058 = fmul fast float %3057, %2984
  %3059 = fmul fast float %3052, 2.000000e+00
  %3060 = fsub fast float 1.000000e+00, %3059
  %3061 = fmul fast float %3060, %2985
  %3062 = fadd fast float %3061, %3059
  %3063 = fmul fast float %3062, %2985
  %3064 = fmul fast float %3053, 2.000000e+00
  %3065 = fsub fast float 1.000000e+00, %3064
  %3066 = fmul fast float %3065, %2986
  %3067 = fadd fast float %3066, %3064
  %3068 = fmul fast float %3067, %2986
  br label %3069

; <label>:3069                                    ; preds = %3041, %3039, %3026, %2996, %2980
  %3070 = phi float [ %2981, %2980 ], [ %2981, %3041 ], [ %2981, %3039 ], [ %2981, %3026 ], [ %3018, %2996 ]
  %3071 = phi float [ %2982, %2980 ], [ %2982, %3041 ], [ %2982, %3039 ], [ %2982, %3026 ], [ %3019, %2996 ]
  %3072 = phi float [ %2983, %2980 ], [ %2983, %3041 ], [ %2983, %3039 ], [ %2983, %3026 ], [ %3020, %2996 ]
  %3073 = phi float [ %2984, %2980 ], [ %3058, %3041 ], [ %2984, %3039 ], [ %3036, %3026 ], [ %3006, %2996 ]
  %3074 = phi float [ %2985, %2980 ], [ %3063, %3041 ], [ %2985, %3039 ], [ %3037, %3026 ], [ %3007, %2996 ]
  %3075 = phi float [ %2986, %2980 ], [ %3068, %3041 ], [ %2986, %3039 ], [ %3038, %3026 ], [ %3008, %2996 ]
  %3076 = phi float [ %2195, %2980 ], [ %2195, %3041 ], [ %2195, %3039 ], [ %2195, %3026 ], [ %3011, %2996 ]
  %3077 = phi float [ %2199, %2980 ], [ %2199, %3041 ], [ %2199, %3039 ], [ %2199, %3026 ], [ %3023, %2996 ]
  %3078 = and i32 %2988, 12
  %3079 = icmp eq i32 %3078, 12
  br i1 %3079, label %3186, label %3080

; <label>:3080                                    ; preds = %3069
  %3081 = and i32 %2988, 2097184
  %3082 = icmp eq i32 %3081, 2097184
  %3083 = select i1 %3082, float %2497, float 0.000000e+00
  %3084 = and i32 %2988, 4194336
  %3085 = icmp eq i32 %3084, 4194336
  %3086 = select i1 %3085, float %2497, float 0.000000e+00
  %3087 = and i32 %2988, 8388640
  %3088 = icmp eq i32 %3087, 8388640
  %3089 = select i1 %3088, float %2497, float 0.000000e+00
  %3090 = and i32 %2988, 1024
  %3091 = icmp ne i32 %3090, 0
  %3092 = select i1 %3091, float %2497, float 0.000000e+00
  %3093 = and i32 %2988, 2048
  %3094 = icmp ne i32 %3093, 0
  %3095 = select i1 %3094, float %2497, float 0.000000e+00
  %3096 = icmp eq i32 %3078, 0
  br i1 %3096, label %3097, label %3122

; <label>:3097                                    ; preds = %3080
  %3098 = fsub fast float %2798, %2184
  %3099 = fsub fast float %2799, %2185
  %3100 = fmul fast float %3083, %3098
  %3101 = fmul fast float %3083, %3099
  %3102 = fadd fast float %3100, %2184
  %3103 = fadd fast float %3101, %2185
  %3104 = fsub fast float %2800, %2197
  %3105 = fmul fast float %3086, %3104
  %3106 = fadd fast float %3105, %2197
  %3107 = fsub fast float %2797, %2196
  %3108 = fmul fast float %3089, %3107
  %3109 = fadd fast float %3108, %2196
  %3110 = fsub fast float %2903, %2189
  %3111 = fsub fast float %2904, %2190
  %3112 = fsub fast float %2905, %2191
  %3113 = fmul fast float %3092, %3110
  %3114 = fmul fast float %3092, %3111
  %3115 = fmul fast float %3092, %3112
  %3116 = fadd fast float %3113, %2189
  %3117 = fadd fast float %3114, %2190
  %3118 = fadd fast float %3115, %2191
  %3119 = fsub fast float %2931, %2198
  %3120 = fmul fast float %3095, %3119
  %3121 = fadd fast float %3120, %2198
  br label %3186

; <label>:3122                                    ; preds = %3080
  %3123 = icmp eq i32 %3078, 4
  br i1 %3123, label %3124, label %3164

; <label>:3124                                    ; preds = %3122
  %3125 = fmul fast float %3083, %2798
  %3126 = fmul fast float %3083, %2799
  %3127 = fadd fast float %3125, %2184
  %3128 = fadd fast float %3126, %2185
  %3129 = call float @dx.op.binary.f32(i32 36, float %2197, float %2800)  ; FMin(a,b)
  %3130 = fsub fast float %3129, %2197
  %3131 = fmul fast float %3130, %3086
  %3132 = fadd fast float %3131, %2197
  %3133 = fadd fast float %2797, %2196
  %3134 = fmul fast float %3133, 0x3FF337FAE0000000
  %3135 = fmul fast float %2196, %2196
  %3136 = fmul fast float %2797, %2797
  %3137 = fadd fast float %3136, %3135
  %3138 = fmul fast float %3137, 0x3FE5152B00000000
  %3139 = fmul fast float %2196, 0xBFCC1F85E0000000
  %3140 = fmul fast float %3139, %2797
  %3141 = fadd fast float %3140, 0xBFE1363700000000
  %3142 = fadd fast float %3141, %3134
  %3143 = fsub fast float %3142, %3138
  %3144 = fmul fast float %3133, 0x3FBA6F0D00000000
  %3145 = fmul fast float %3137, 0x3FD0432880000000
  %3146 = fmul fast float %2196, 0xBFEF110800000000
  %3147 = fmul fast float %3146, %2797
  %3148 = fadd fast float %3147, 1.000000e+00
  %3149 = fsub fast float %3148, %3144
  %3150 = fadd fast float %3149, %3145
  %3151 = fdiv fast float %3143, %3150
  %3152 = call float @dx.op.unary.f32(i32 7, float %3151)  ; Saturate(value)
  %3153 = fsub fast float %3152, %2196
  %3154 = fmul fast float %3153, %3089
  %3155 = fadd fast float %3154, %2196
  %3156 = fmul fast float %3092, %2903
  %3157 = fmul fast float %3092, %2904
  %3158 = fmul fast float %3092, %2905
  %3159 = fadd fast float %3156, %2189
  %3160 = fadd fast float %3157, %2190
  %3161 = fadd fast float %3158, %2191
  %3162 = fmul fast float %3095, %2931
  %3163 = fadd fast float %3162, %2198
  br label %3186

; <label>:3164                                    ; preds = %3122
  %3165 = icmp eq i32 %3078, 8
  br i1 %3165, label %3166, label %3186

; <label>:3166                                    ; preds = %3164
  %3167 = fmul fast float %3083, %2798
  %3168 = fmul fast float %3083, %2799
  %3169 = fadd fast float %3167, %2184
  %3170 = fadd fast float %3168, %2185
  %3171 = call float @dx.op.binary.f32(i32 36, float %2197, float %2800)  ; FMin(a,b)
  %3172 = fsub fast float %3171, %2197
  %3173 = fmul fast float %3172, %3086
  %3174 = fadd fast float %3173, %2197
  %3175 = fsub fast float %2797, %2196
  %3176 = fmul fast float %3089, %3175
  %3177 = fadd fast float %3176, %2196
  %3178 = fmul fast float %3092, %2903
  %3179 = fmul fast float %3092, %2904
  %3180 = fmul fast float %3092, %2905
  %3181 = fadd fast float %3178, %2189
  %3182 = fadd fast float %3179, %2190
  %3183 = fadd fast float %3180, %2191
  %3184 = fmul fast float %3095, %2931
  %3185 = fadd fast float %3184, %2198
  br label %3186

; <label>:3186                                    ; preds = %3166, %3164, %3124, %3097, %3069, %2496, %2200, %2183
  %3187 = phi float [ %2184, %3069 ], [ %2184, %2496 ], [ %2184, %2183 ], [ %3169, %3166 ], [ %2184, %3164 ], [ %3127, %3124 ], [ %3102, %3097 ], [ %2184, %2200 ]
  %3188 = phi float [ %2185, %3069 ], [ %2185, %2496 ], [ %2185, %2183 ], [ %3170, %3166 ], [ %2185, %3164 ], [ %3128, %3124 ], [ %3103, %3097 ], [ %2185, %2200 ]
  %3189 = phi float [ %3070, %3069 ], [ %2186, %2496 ], [ %2186, %2183 ], [ %3070, %3166 ], [ %3070, %3164 ], [ %3070, %3124 ], [ %3070, %3097 ], [ %2186, %2200 ]
  %3190 = phi float [ %3071, %3069 ], [ %2187, %2496 ], [ %2187, %2183 ], [ %3071, %3166 ], [ %3071, %3164 ], [ %3071, %3124 ], [ %3071, %3097 ], [ %2187, %2200 ]
  %3191 = phi float [ %3072, %3069 ], [ %2188, %2496 ], [ %2188, %2183 ], [ %3072, %3166 ], [ %3072, %3164 ], [ %3072, %3124 ], [ %3072, %3097 ], [ %2188, %2200 ]
  %3192 = phi float [ %2189, %3069 ], [ %2189, %2496 ], [ %2189, %2183 ], [ %3181, %3166 ], [ %2189, %3164 ], [ %3159, %3124 ], [ %3116, %3097 ], [ %2189, %2200 ]
  %3193 = phi float [ %2190, %3069 ], [ %2190, %2496 ], [ %2190, %2183 ], [ %3182, %3166 ], [ %2190, %3164 ], [ %3160, %3124 ], [ %3117, %3097 ], [ %2190, %2200 ]
  %3194 = phi float [ %2191, %3069 ], [ %2191, %2496 ], [ %2191, %2183 ], [ %3183, %3166 ], [ %2191, %3164 ], [ %3161, %3124 ], [ %3118, %3097 ], [ %2191, %2200 ]
  %3195 = phi float [ %3073, %3069 ], [ %2192, %2496 ], [ %2192, %2183 ], [ %3073, %3166 ], [ %3073, %3164 ], [ %3073, %3124 ], [ %3073, %3097 ], [ %2192, %2200 ]
  %3196 = phi float [ %3074, %3069 ], [ %2193, %2496 ], [ %2193, %2183 ], [ %3074, %3166 ], [ %3074, %3164 ], [ %3074, %3124 ], [ %3074, %3097 ], [ %2193, %2200 ]
  %3197 = phi float [ %3075, %3069 ], [ %2194, %2496 ], [ %2194, %2183 ], [ %3075, %3166 ], [ %3075, %3164 ], [ %3075, %3124 ], [ %3075, %3097 ], [ %2194, %2200 ]
  %3198 = phi float [ %3076, %3069 ], [ %2195, %2496 ], [ %2195, %2183 ], [ %3076, %3166 ], [ %3076, %3164 ], [ %3076, %3124 ], [ %3076, %3097 ], [ %2195, %2200 ]
  %3199 = phi float [ %2196, %3069 ], [ %2196, %2496 ], [ %2196, %2183 ], [ %3177, %3166 ], [ %2196, %3164 ], [ %3155, %3124 ], [ %3109, %3097 ], [ %2196, %2200 ]
  %3200 = phi float [ %2197, %3069 ], [ %2197, %2496 ], [ %2197, %2183 ], [ %3174, %3166 ], [ %2197, %3164 ], [ %3132, %3124 ], [ %3106, %3097 ], [ %2197, %2200 ]
  %3201 = phi float [ %2198, %3069 ], [ %2198, %2496 ], [ %2198, %2183 ], [ %3185, %3166 ], [ %2198, %3164 ], [ %3163, %3124 ], [ %3121, %3097 ], [ %2198, %2200 ]
  %3202 = phi float [ %3077, %3069 ], [ %2199, %2496 ], [ %2199, %2183 ], [ %3077, %3166 ], [ %3077, %3164 ], [ %3077, %3124 ], [ %3077, %3097 ], [ %2199, %2200 ]
  br i1 %383, label %4189, label %3203

; <label>:3203                                    ; preds = %3186
  %3204 = icmp ult i32 %437, 4
  %3205 = add i32 %41, 72
  %3206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3207 = extractvalue %dx.types.ResRet.i32 %3206, 0
  %3208 = add i32 %41, 76
  %3209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3208, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.i32 %3209, 0
  %3211 = or i32 %3210, %3207
  %3212 = icmp eq i32 %3211, 0
  br i1 %3212, label %4189, label %3213

; <label>:3213                                    ; preds = %3203
  %3214 = and i32 %3207, 262144
  %3215 = icmp ne i32 %3214, 0
  %3216 = select i1 %3215, float %44, float 1.000000e+00
  %3217 = select i1 %3215, float %45, float 0.000000e+00
  %3218 = select i1 %3215, float %46, float 0.000000e+00
  %3219 = select i1 %3215, float %47, float 1.000000e+00
  %3220 = select i1 %3215, float %48, float %64
  %3221 = select i1 %3215, float %49, float %65
  %3222 = add i32 %41, 332
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3222, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = lshr i32 %3224, 16
  %3226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3225)  ; LegacyF16ToF32(value)
  %3227 = fmul fast float %3226, 0x3F50624DE0000000
  %3228 = add i32 %41, 136
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3228, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = lshr i32 %3230, 16
  %3232 = and i32 %3231, 255
  %3233 = lshr i32 %3230, 24
  %3234 = add i32 %41, 340
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = and i32 %3236, 65535
  %3238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3237)  ; LegacyF16ToF32(value)
  %3239 = lshr i32 %3236, 16
  %3240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3239)  ; LegacyF16ToF32(value)
  %3241 = add i32 %41, 80
  %3242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3241, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.i32 %3242, 0
  %3244 = lshr i32 %3243, 22
  %3245 = shl nuw nsw i32 %3244, 5
  %3246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3245)  ; LegacyF16ToF32(value)
  %3247 = shl i32 %3243, 4
  %3248 = and i32 %3247, 32752
  %3249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3248)  ; LegacyF16ToF32(value)
  %3250 = lshr i32 %3243, 7
  %3251 = and i32 %3250, 32752
  %3252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3251)  ; LegacyF16ToF32(value)
  %3253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3254 = extractvalue %dx.types.CBufRet.f32 %3253, 3
  %3255 = fmul fast float %3254, 1.000000e+03
  %3256 = fmul fast float %373, %3255
  %3257 = call float @dx.op.unary.f32(i32 22, float %3256)  ; Frc(value)
  %3258 = fadd fast float %3257, %363
  %3259 = fmul fast float %374, %3255
  %3260 = call float @dx.op.unary.f32(i32 22, float %3259)  ; Frc(value)
  %3261 = fadd fast float %3260, %365
  %3262 = fmul fast float %3227, %3255
  %3263 = call float @dx.op.unary.f32(i32 22, float %3262)  ; Frc(value)
  %3264 = fmul fast float %3263, 0x401921FB60000000
  %3265 = fadd fast float %3264, %3246
  %3266 = call float @dx.op.unary.f32(i32 13, float %3265)  ; Sin(value)
  %3267 = call float @dx.op.unary.f32(i32 12, float %3265)  ; Cos(value)
  %3268 = fsub fast float -0.000000e+00, %3266
  %3269 = fadd fast float %3220, -5.000000e-01
  %3270 = fadd fast float %3221, -5.000000e-01
  %3271 = fmul fast float %3238, %3269
  %3272 = fmul fast float %3240, %3270
  %3273 = fadd fast float %3271, 5.000000e-01
  %3274 = fadd fast float %3272, 5.000000e-01
  %3275 = fmul fast float %3249, %3273
  %3276 = fmul fast float %3252, %3274
  %3277 = fmul fast float %3267, %3275
  %3278 = call float @dx.op.tertiary.f32(i32 46, float %3268, float %3276, float %3277)  ; FMad(a,b,c)
  %3279 = fmul fast float %3266, %3275
  %3280 = call float @dx.op.tertiary.f32(i32 46, float %3267, float %3276, float %3279)  ; FMad(a,b,c)
  %3281 = fadd fast float %3258, %3278
  %3282 = fadd fast float %3261, %3280
  %3283 = icmp ugt i32 %3232, 1
  %3284 = icmp ugt i32 %3230, 33554431
  %3285 = or i1 %3284, %3283
  br i1 %3285, label %3286, label %3311

; <label>:3286                                    ; preds = %3213
  %3287 = add i32 %41, 276
  %3288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3287, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.i32 %3288, 0
  %3290 = lshr i32 %3289, 16
  %3291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3290)  ; LegacyF16ToF32(value)
  %3292 = fmul fast float %3254, %3291
  %3293 = call float @dx.op.unary.f32(i32 22, float %3292)  ; Frc(value)
  %3294 = mul nuw nsw i32 %3232, %3233
  %3295 = uitofp i32 %3294 to float
  %3296 = fmul fast float %3293, %3295
  %3297 = call float @dx.op.unary.f32(i32 27, float %3296)  ; Round_ni(value)
  %3298 = fptoui float %3297 to i32
  %3299 = urem i32 %3298, %3232
  %3300 = udiv i32 %3298, %3233
  %3301 = call float @dx.op.unary.f32(i32 22, float %3281)  ; Frc(value)
  %3302 = call float @dx.op.unary.f32(i32 22, float %3282)  ; Frc(value)
  %3303 = uitofp i32 %3299 to float
  %3304 = uitofp i32 %3300 to float
  %3305 = fadd fast float %3301, %3303
  %3306 = fadd fast float %3302, %3304
  %3307 = uitofp i32 %3232 to float
  %3308 = uitofp i32 %3233 to float
  %3309 = fdiv fast float %3305, %3307
  %3310 = fdiv fast float %3306, %3308
  br label %3311

; <label>:3311                                    ; preds = %3286, %3213
  %3312 = phi float [ %3309, %3286 ], [ %3281, %3213 ]
  %3313 = phi float [ %3310, %3286 ], [ %3282, %3213 ]
  %3314 = and i32 %3207, 16777216
  %3315 = icmp eq i32 %3314, 0
  br i1 %3315, label %3425, label %3316

; <label>:3316                                    ; preds = %3311
  %3317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3318 = extractvalue %dx.types.CBufRet.f32 %3317, 0
  %3319 = extractvalue %dx.types.CBufRet.f32 %3317, 1
  %3320 = extractvalue %dx.types.CBufRet.f32 %3317, 2
  %3321 = fadd fast float %3318, %145
  %3322 = fadd fast float %3319, %146
  %3323 = fadd fast float %3320, %147
  %3324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3325 = extractvalue %dx.types.CBufRet.f32 %3324, 0
  %3326 = call float @dx.op.unary.f32(i32 7, float %3325)  ; Saturate(value)
  %3327 = icmp eq i32 %42, 65535
  br i1 %3327, label %3422, label %3328

; <label>:3328                                    ; preds = %3316
  %3329 = lshr i32 %42, 1
  %3330 = shl i32 %3329, 2
  %3331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3330, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.i32 %3331, 0
  %3333 = and i32 %42, 1
  %3334 = icmp ne i32 %3333, 0
  %3335 = lshr i32 %3332, 16
  %3336 = and i32 %3332, 65535
  %3337 = select i1 %3334, i32 %3335, i32 %3336
  %3338 = icmp eq i32 %3337, 65535
  br i1 %3338, label %3418, label %3339

; <label>:3339                                    ; preds = %3328
  %3340 = mul nuw nsw i32 %3337, 40
  %3341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3342 = extractvalue %dx.types.ResRet.f32 %3341, 0
  %3343 = extractvalue %dx.types.ResRet.f32 %3341, 1
  %3344 = extractvalue %dx.types.ResRet.f32 %3341, 2
  %3345 = add nuw nsw i32 %3340, 12
  %3346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.f32 %3346, 0
  %3348 = extractvalue %dx.types.ResRet.f32 %3346, 1
  %3349 = extractvalue %dx.types.ResRet.f32 %3346, 2
  %3350 = add nuw nsw i32 %3340, 24
  %3351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3350, i32 undef)  ; BufferLoad(srv,index,wot)
  %3352 = extractvalue %dx.types.ResRet.f32 %3351, 0
  %3353 = extractvalue %dx.types.ResRet.f32 %3351, 1
  %3354 = extractvalue %dx.types.ResRet.f32 %3351, 2
  %3355 = add nuw nsw i32 %3340, 36
  %3356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3355, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.f32 %3356, 0
  %3358 = fsub fast float %3321, %3342
  %3359 = fsub fast float %3322, %3343
  %3360 = fsub fast float %3323, %3344
  %3361 = fmul fast float %3357, %3358
  %3362 = fmul fast float %3357, %3359
  %3363 = fmul fast float %3357, %3360
  %3364 = call float @dx.op.unary.f32(i32 27, float %3361)  ; Round_ni(value)
  %3365 = call float @dx.op.unary.f32(i32 27, float %3362)  ; Round_ni(value)
  %3366 = call float @dx.op.unary.f32(i32 27, float %3363)  ; Round_ni(value)
  %3367 = fadd fast float %3364, 5.000000e-01
  %3368 = fadd fast float %3365, 5.000000e-01
  %3369 = fadd fast float %3366, 5.000000e-01
  %3370 = fmul fast float %3367, %3347
  %3371 = fmul fast float %3368, %3348
  %3372 = fmul fast float %3369, %3349
  %3373 = shl i32 %42, 2
  %3374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.i32 %3374, 0
  %3376 = add i32 %3375, 0
  %3377 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3376, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3378 = call float @dx.op.unary.f32(i32 22, float %3370)  ; Frc(value)
  %3379 = call float @dx.op.unary.f32(i32 22, float %3371)  ; Frc(value)
  %3380 = call float @dx.op.unary.f32(i32 22, float %3372)  ; Frc(value)
  %3381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3377, %dx.types.Handle %36, float %3378, float %3379, float %3380, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3382 = extractvalue %dx.types.ResRet.f32 %3381, 0
  %3383 = extractvalue %dx.types.ResRet.f32 %3381, 1
  %3384 = extractvalue %dx.types.ResRet.f32 %3381, 2
  %3385 = fmul fast float %3382, 1.023000e+03
  %3386 = fmul fast float %3383, 1.023000e+03
  %3387 = fmul fast float %3384, 1.023000e+03
  %3388 = fadd fast float %3385, 5.000000e-01
  %3389 = fadd fast float %3386, 5.000000e-01
  %3390 = fadd fast float %3387, 5.000000e-01
  %3391 = call float @dx.op.unary.f32(i32 27, float %3388)  ; Round_ni(value)
  %3392 = call float @dx.op.unary.f32(i32 27, float %3389)  ; Round_ni(value)
  %3393 = call float @dx.op.unary.f32(i32 27, float %3390)  ; Round_ni(value)
  %3394 = fsub fast float %3361, %3364
  %3395 = fsub fast float %3362, %3365
  %3396 = fsub fast float %3363, %3366
  %3397 = fmul fast float %3394, 7.500000e-01
  %3398 = fmul fast float %3395, 7.500000e-01
  %3399 = fmul fast float %3396, 7.500000e-01
  %3400 = fadd fast float %3364, 1.250000e-01
  %3401 = fadd fast float %3400, %3397
  %3402 = fadd fast float %3401, %3391
  %3403 = fadd fast float %3365, 1.250000e-01
  %3404 = fadd fast float %3403, %3398
  %3405 = fadd fast float %3404, %3392
  %3406 = fadd fast float %3366, 1.250000e-01
  %3407 = fadd fast float %3406, %3399
  %3408 = fadd fast float %3407, %3393
  %3409 = fmul fast float %3402, %3352
  %3410 = fmul fast float %3405, %3353
  %3411 = fmul fast float %3408, %3354
  %3412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.i32 %3412, 0
  %3414 = add i32 %3413, 0
  %3415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3415, %dx.types.Handle %34, float %3409, float %3410, float %3411, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3417 = extractvalue %dx.types.ResRet.f32 %3416, 0
  br label %3418

; <label>:3418                                    ; preds = %3339, %3328
  %3419 = phi float [ %3417, %3339 ], [ -1.000000e+00, %3328 ]
  %3420 = fadd fast float %3419, %3326
  %3421 = call float @dx.op.unary.f32(i32 7, float %3420)  ; Saturate(value)
  br label %3422

; <label>:3422                                    ; preds = %3418, %3316
  %3423 = phi float [ %3421, %3418 ], [ %3326, %3316 ]
  %3424 = fmul fast float %3423, %432
  br label %3425

; <label>:3425                                    ; preds = %3422, %3311
  %3426 = phi float [ %3424, %3422 ], [ %432, %3311 ]
  %3427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.i32 %3427, 0
  %3429 = and i32 %3428, 256
  %3430 = icmp eq i32 %3429, 0
  br i1 %3430, label %3477, label %3431

; <label>:3431                                    ; preds = %3425
  %3432 = add i32 %41, 436
  %3433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.i32 %3433, 0
  %3435 = add i32 %3434, 0
  %3436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3437 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3436, %dx.types.Handle %79, float %3312, float %3313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3438 = extractvalue %dx.types.ResRet.f32 %3437, 0
  %3439 = add i32 %41, 148
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = shl i32 %3441, 4
  %3443 = and i32 %3442, 32752
  %3444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3443)  ; LegacyF16ToF32(value)
  %3445 = lshr i32 %3441, 7
  %3446 = and i32 %3445, 32752
  %3447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3446)  ; LegacyF16ToF32(value)
  %3448 = fsub fast float 1.000000e+00, %3426
  %3449 = call float @dx.op.binary.f32(i32 35, float %3448, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3450 = bitcast float %3426 to i32
  %3451 = sitofp i32 %3450 to float
  %3452 = fadd fast float %3451, 0xC1CFBF8940000000
  %3453 = fmul fast float %3447, %3452
  %3454 = fadd fast float %3453, 0x41CFBF8940000000
  %3455 = fptosi float %3454 to i32
  %3456 = bitcast i32 %3455 to float
  %3457 = bitcast float %3449 to i32
  %3458 = sitofp i32 %3457 to float
  %3459 = fadd fast float %3458, 0xC1CFBF8940000000
  %3460 = fmul fast float %3459, %3447
  %3461 = fadd fast float %3460, 0x41CFBF8940000000
  %3462 = fptosi float %3461 to i32
  %3463 = bitcast i32 %3462 to float
  %3464 = fmul fast float %3456, %3444
  %3465 = fmul fast float %3463, %3444
  %3466 = fsub fast float %3449, %3464
  %3467 = fadd fast float %3465, %3449
  %3468 = call float @dx.op.unary.f32(i32 7, float %3466)  ; Saturate(value)
  %3469 = call float @dx.op.unary.f32(i32 7, float %3467)  ; Saturate(value)
  %3470 = fsub fast float %3438, %3468
  %3471 = fsub fast float %3469, %3468
  %3472 = bitcast float %3471 to i32
  %3473 = sub nsw i32 2129859010, %3472
  %3474 = bitcast i32 %3473 to float
  %3475 = fmul fast float %3474, %3470
  %3476 = call float @dx.op.unary.f32(i32 7, float %3475)  ; Saturate(value)
  br label %3477

; <label>:3477                                    ; preds = %3431, %3425
  %3478 = phi float [ %3476, %3431 ], [ %3426, %3425 ]
  %3479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = and i32 %3480, 128
  %3482 = icmp eq i32 %3481, 0
  br i1 %3482, label %3499, label %3483

; <label>:3483                                    ; preds = %3477
  %3484 = add i32 %41, 420
  %3485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3484, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.i32 %3485, 0
  %3487 = add i32 %3486, 0
  %3488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3487, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3489 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3488, %dx.types.Handle %79, float %3312, float %3313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3490 = extractvalue %dx.types.ResRet.f32 %3489, 0
  %3491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.i32 %3491, 0
  %3493 = and i32 %3492, 524288
  %3494 = icmp ne i32 %3493, 0
  %3495 = fcmp fast ogt float %3490, 0x3FE0101020000000
  %3496 = select i1 %3495, float 1.000000e+00, float 0.000000e+00
  %3497 = select i1 %3494, float %3496, float %3490
  %3498 = fmul fast float %3497, %3478
  br label %3499

; <label>:3499                                    ; preds = %3483, %3477
  %3500 = phi float [ %3498, %3483 ], [ %3478, %3477 ]
  %3501 = fcmp fast ult float %3500, 0x3F70101020000000
  br i1 %3501, label %4189, label %3502

; <label>:3502                                    ; preds = %3499
  %3503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.i32 %3503, 0
  %3505 = and i32 %3504, 16
  %3506 = icmp eq i32 %3505, 0
  br i1 %3506, label %3705, label %3507

; <label>:3507                                    ; preds = %3502
  %3508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3228, i32 undef)  ; BufferLoad(srv,index,wot)
  %3509 = extractvalue %dx.types.ResRet.i32 %3508, 0
  %3510 = add i32 %41, 372
  %3511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.i32 %3511, 0
  %3513 = add i32 %3512, 0
  %3514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3513, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3515 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3514, %dx.types.Handle %78, float %3312, float %3313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3516 = extractvalue %dx.types.ResRet.f32 %3515, 0
  %3517 = extractvalue %dx.types.ResRet.f32 %3515, 1
  %3518 = extractvalue %dx.types.ResRet.f32 %3515, 2
  %3519 = extractvalue %dx.types.ResRet.f32 %3515, 3
  %3520 = and i32 %3509, 255
  %3521 = uitofp i32 %3520 to float
  %3522 = lshr i32 %3509, 8
  %3523 = and i32 %3522, 255
  %3524 = uitofp i32 %3523 to float
  %3525 = fmul fast float %3519, %3521
  %3526 = fadd fast float %3525, %3524
  %3527 = fmul fast float %3526, 0x3F70101000000000
  %3528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.i32 %3528, 0
  %3530 = and i32 %3529, 512
  %3531 = icmp eq i32 %3530, 0
  br i1 %3531, label %3540, label %3532

; <label>:3532                                    ; preds = %3507
  %3533 = add i32 %41, 452
  %3534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3535 = extractvalue %dx.types.ResRet.i32 %3534, 0
  %3536 = add i32 %3535, 0
  %3537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3536, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3538 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3537, %dx.types.Handle %79, float %3312, float %3313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3539 = extractvalue %dx.types.ResRet.f32 %3538, 0
  br label %3540

; <label>:3540                                    ; preds = %3532, %3507
  %3541 = phi float [ %3539, %3532 ], [ 1.000000e+00, %3507 ]
  %3542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3543 = extractvalue %dx.types.ResRet.i32 %3542, 0
  %3544 = and i32 %3543, 33554432
  %3545 = icmp eq i32 %3544, 0
  br i1 %3545, label %3652, label %3546

; <label>:3546                                    ; preds = %3540
  %3547 = add i32 %41, 272
  %3548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.i32 %3548, 0
  %3550 = and i32 %3549, 65535
  %3551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3550)  ; LegacyF16ToF32(value)
  %3552 = lshr i32 %3549, 16
  %3553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3552)  ; LegacyF16ToF32(value)
  %3554 = add i32 %41, 276
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = and i32 %3556, 65535
  %3558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3557)  ; LegacyF16ToF32(value)
  %3559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3560 = extractvalue %dx.types.ResRet.i32 %3559, 0
  %3561 = lshr i32 %3560, 24
  %3562 = uitofp i32 %3561 to float
  %3563 = fmul fast float %3562, 0x3F70101020000000
  %3564 = and i32 %3560, 255
  %3565 = uitofp i32 %3564 to float
  %3566 = fmul fast float %3565, 0x3F70101020000000
  %3567 = lshr i32 %3560, 8
  %3568 = and i32 %3567, 255
  %3569 = uitofp i32 %3568 to float
  %3570 = fmul fast float %3569, 0x3F70101020000000
  %3571 = lshr i32 %3560, 16
  %3572 = and i32 %3571, 255
  %3573 = uitofp i32 %3572 to float
  %3574 = fmul fast float %3573, 0x3F70101020000000
  %3575 = add i32 %41, 268
  %3576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3575, i32 undef)  ; BufferLoad(srv,index,wot)
  %3577 = extractvalue %dx.types.ResRet.i32 %3576, 0
  %3578 = lshr i32 %3577, 24
  %3579 = uitofp i32 %3578 to float
  %3580 = fmul fast float %3579, 0x3F70101020000000
  %3581 = and i32 %3577, 255
  %3582 = uitofp i32 %3581 to float
  %3583 = fmul fast float %3582, 0x3F70101020000000
  %3584 = lshr i32 %3577, 8
  %3585 = and i32 %3584, 255
  %3586 = uitofp i32 %3585 to float
  %3587 = fmul fast float %3586, 0x3F70101020000000
  %3588 = lshr i32 %3577, 16
  %3589 = and i32 %3588, 255
  %3590 = uitofp i32 %3589 to float
  %3591 = fmul fast float %3590, 0x3F70101020000000
  %3592 = bitcast float %3516 to i32
  %3593 = ashr i32 %3592, 1
  %3594 = sub nsw i32 1597463174, %3593
  %3595 = bitcast i32 %3594 to float
  %3596 = fmul fast float %3516, 5.000000e-01
  %3597 = fmul fast float %3595, %3595
  %3598 = fmul fast float %3597, %3596
  %3599 = fsub fast float 1.500000e+00, %3598
  %3600 = fmul fast float %3595, %3516
  %3601 = fmul fast float %3600, %3599
  %3602 = bitcast float %3517 to i32
  %3603 = ashr i32 %3602, 1
  %3604 = sub nsw i32 1597463174, %3603
  %3605 = bitcast i32 %3604 to float
  %3606 = fmul fast float %3517, 5.000000e-01
  %3607 = fmul fast float %3605, %3605
  %3608 = fmul fast float %3607, %3606
  %3609 = fsub fast float 1.500000e+00, %3608
  %3610 = fmul fast float %3605, %3517
  %3611 = fmul fast float %3610, %3609
  %3612 = bitcast float %3518 to i32
  %3613 = ashr i32 %3612, 1
  %3614 = sub nsw i32 1597463174, %3613
  %3615 = bitcast i32 %3614 to float
  %3616 = fmul fast float %3518, 5.000000e-01
  %3617 = fmul fast float %3615, %3615
  %3618 = fmul fast float %3617, %3616
  %3619 = fsub fast float 1.500000e+00, %3618
  %3620 = fmul fast float %3615, %3518
  %3621 = fmul fast float %3620, %3619
  %3622 = fsub fast float %3601, %3583
  %3623 = fsub fast float %3611, %3587
  %3624 = fsub fast float %3621, %3591
  %3625 = fmul fast float %3622, %3551
  %3626 = fmul fast float %3623, %3553
  %3627 = fmul fast float %3624, %3558
  %3628 = fadd fast float %3625, %3566
  %3629 = fadd fast float %3626, %3570
  %3630 = fadd fast float %3627, %3574
  %3631 = call float @dx.op.unary.f32(i32 7, float %3628)  ; Saturate(value)
  %3632 = call float @dx.op.unary.f32(i32 7, float %3629)  ; Saturate(value)
  %3633 = call float @dx.op.unary.f32(i32 7, float %3630)  ; Saturate(value)
  %3634 = fmul fast float %3631, %3631
  %3635 = fmul fast float %3632, %3632
  %3636 = fmul fast float %3633, %3633
  %3637 = fsub fast float %3634, %3516
  %3638 = fsub fast float %3635, %3517
  %3639 = fsub fast float %3636, %3518
  %3640 = fmul fast float %3637, %3541
  %3641 = fmul fast float %3638, %3541
  %3642 = fmul fast float %3639, %3541
  %3643 = fadd fast float %3640, %3516
  %3644 = fadd fast float %3641, %3517
  %3645 = fadd fast float %3642, %3518
  %3646 = fadd fast float %3563, %3527
  %3647 = fsub fast float %3646, %3580
  %3648 = call float @dx.op.unary.f32(i32 7, float %3647)  ; Saturate(value)
  %3649 = fsub fast float %3648, %3527
  %3650 = fmul fast float %3649, %3541
  %3651 = fadd fast float %3650, %3527
  br label %3705

; <label>:3652                                    ; preds = %3540
  %3653 = and i32 %3543, 134217728
  %3654 = icmp eq i32 %3653, 0
  br i1 %3654, label %3689, label %3655

; <label>:3655                                    ; preds = %3652
  %3656 = call float @dx.op.unary.f32(i32 24, float %350)  ; Sqrt(value)
  %3657 = call float @dx.op.unary.f32(i32 24, float %354)  ; Sqrt(value)
  %3658 = call float @dx.op.unary.f32(i32 24, float %358)  ; Sqrt(value)
  %3659 = fadd fast float %3656, -5.000000e-01
  %3660 = fadd fast float %3657, -5.000000e-01
  %3661 = fadd fast float %3658, -5.000000e-01
  %3662 = fmul fast float %3659, %3541
  %3663 = fmul fast float %3660, %3541
  %3664 = fmul fast float %3661, %3541
  %3665 = fadd fast float %3662, 5.000000e-01
  %3666 = fadd fast float %3663, 5.000000e-01
  %3667 = fadd fast float %3664, 5.000000e-01
  %3668 = call float @dx.op.unary.f32(i32 24, float %3516)  ; Sqrt(value)
  %3669 = call float @dx.op.unary.f32(i32 24, float %3517)  ; Sqrt(value)
  %3670 = call float @dx.op.unary.f32(i32 24, float %3518)  ; Sqrt(value)
  %3671 = fmul fast float %3665, 2.000000e+00
  %3672 = fsub fast float 1.000000e+00, %3671
  %3673 = fmul fast float %3672, %3668
  %3674 = fadd fast float %3673, %3671
  %3675 = fmul fast float %3674, %3668
  %3676 = fmul fast float %3666, 2.000000e+00
  %3677 = fsub fast float 1.000000e+00, %3676
  %3678 = fmul fast float %3677, %3669
  %3679 = fadd fast float %3678, %3676
  %3680 = fmul fast float %3679, %3669
  %3681 = fmul fast float %3667, 2.000000e+00
  %3682 = fsub fast float 1.000000e+00, %3681
  %3683 = fmul fast float %3682, %3670
  %3684 = fadd fast float %3683, %3681
  %3685 = fmul fast float %3684, %3670
  %3686 = fmul fast float %3675, %3675
  %3687 = fmul fast float %3680, %3680
  %3688 = fmul fast float %3685, %3685
  br label %3705

; <label>:3689                                    ; preds = %3652
  %3690 = fmul fast float %350, %350
  %3691 = fmul fast float %354, %354
  %3692 = fmul fast float %358, %358
  %3693 = fadd fast float %3690, -1.000000e+00
  %3694 = fadd fast float %3691, -1.000000e+00
  %3695 = fadd fast float %3692, -1.000000e+00
  %3696 = fmul fast float %3541, %3693
  %3697 = fmul fast float %3541, %3694
  %3698 = fmul fast float %3541, %3695
  %3699 = fadd fast float %3696, 1.000000e+00
  %3700 = fadd fast float %3697, 1.000000e+00
  %3701 = fadd fast float %3698, 1.000000e+00
  %3702 = fmul fast float %3699, %3516
  %3703 = fmul fast float %3700, %3517
  %3704 = fmul fast float %3701, %3518
  br label %3705

; <label>:3705                                    ; preds = %3689, %3655, %3546, %3502
  %3706 = phi float [ %3651, %3546 ], [ %3527, %3655 ], [ %3527, %3689 ], [ 0x3FA23C0BE0000000, %3502 ]
  %3707 = phi float [ %3643, %3546 ], [ %3686, %3655 ], [ %3702, %3689 ], [ 1.000000e+00, %3502 ]
  %3708 = phi float [ %3644, %3546 ], [ %3687, %3655 ], [ %3703, %3689 ], [ 1.000000e+00, %3502 ]
  %3709 = phi float [ %3645, %3546 ], [ %3688, %3655 ], [ %3704, %3689 ], [ 1.000000e+00, %3502 ]
  %3710 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3711 = extractvalue %dx.types.CBufRet.i32 %3710, 1
  %3712 = and i32 %3711, 1
  %3713 = icmp ne i32 %3712, 0
  %3714 = add i32 %41, 356
  %3715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3714, i32 undef)  ; BufferLoad(srv,index,wot)
  %3716 = extractvalue %dx.types.ResRet.i32 %3715, 0
  %3717 = and i32 %3716, 32
  %3718 = icmp ne i32 %3717, 0
  %3719 = and i1 %3713, %3718
  %3720 = select i1 %3719, float 1.000000e+00, float %3707
  %3721 = select i1 %3719, float 0x3FD3333340000000, float %3708
  %3722 = select i1 %3719, float 0x3FD3333340000000, float %3709
  %3723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3724 = extractvalue %dx.types.ResRet.i32 %3723, 0
  %3725 = and i32 %3724, 32
  %3726 = icmp eq i32 %3725, 0
  br i1 %3726, label %3799, label %3727

; <label>:3727                                    ; preds = %3705
  %3728 = add i32 %41, 140
  %3729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3730 = extractvalue %dx.types.ResRet.i32 %3729, 0
  %3731 = add i32 %41, 388
  %3732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3731, i32 undef)  ; BufferLoad(srv,index,wot)
  %3733 = extractvalue %dx.types.ResRet.i32 %3732, 0
  %3734 = add i32 %3733, 0
  %3735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3734, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3736 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3735, %dx.types.Handle %78, float %3312, float %3313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3737 = extractvalue %dx.types.ResRet.f32 %3736, 0
  %3738 = extractvalue %dx.types.ResRet.f32 %3736, 1
  %3739 = extractvalue %dx.types.ResRet.f32 %3736, 2
  %3740 = extractvalue %dx.types.ResRet.f32 %3736, 3
  %3741 = and i32 %3730, 255
  %3742 = uitofp i32 %3741 to float
  %3743 = lshr i32 %3730, 8
  %3744 = and i32 %3743, 255
  %3745 = uitofp i32 %3744 to float
  %3746 = lshr i32 %3730, 16
  %3747 = and i32 %3746, 255
  %3748 = uitofp i32 %3747 to float
  %3749 = fmul fast float %3748, 0x3F70101000000000
  %3750 = fmul fast float %3737, %3742
  %3751 = fadd fast float %3750, %3745
  %3752 = fmul fast float %3751, 0x3F70101000000000
  %3753 = fadd fast float %3738, -5.000000e-01
  %3754 = fadd fast float %3740, -5.000000e-01
  %3755 = fmul fast float %3753, %3749
  %3756 = fmul fast float %3754, %3749
  %3757 = fadd fast float %3755, 5.000000e-01
  %3758 = fadd fast float %3756, 5.000000e-01
  %3759 = fmul fast float %3757, 2.000000e+00
  %3760 = fadd fast float %3759, -1.000000e+00
  %3761 = fmul fast float %3758, 2.000000e+00
  %3762 = fadd fast float %3761, -1.000000e+00
  %3763 = fadd fast float %3760, %3762
  %3764 = fmul fast float %3763, 5.000000e-01
  %3765 = fsub fast float %3760, %3762
  %3766 = fmul fast float %3765, 5.000000e-01
  %3767 = call float @dx.op.unary.f32(i32 6, float %3764)  ; FAbs(value)
  %3768 = fsub fast float 1.000000e+00, %3767
  %3769 = call float @dx.op.unary.f32(i32 6, float %3766)  ; FAbs(value)
  %3770 = fsub fast float %3768, %3769
  %3771 = call float @dx.op.dot3.f32(i32 55, float %3764, float %3766, float %3770, float %3764, float %3766, float %3770)  ; Dot3(ax,ay,az,bx,by,bz)
  %3772 = call float @dx.op.unary.f32(i32 25, float %3771)  ; Rsqrt(value)
  %3773 = fmul fast float %3764, %3772
  %3774 = fmul fast float %3766, %3772
  %3775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3776 = extractvalue %dx.types.ResRet.i32 %3775, 0
  %3777 = and i32 %3776, 67108864
  %3778 = icmp eq i32 %3777, 0
  br i1 %3778, label %3795, label %3779

; <label>:3779                                    ; preds = %3727
  %3780 = add i32 %41, 328
  %3781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3780, i32 undef)  ; BufferLoad(srv,index,wot)
  %3782 = extractvalue %dx.types.ResRet.i32 %3781, 0
  %3783 = and i32 %3782, 65535
  %3784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3783)  ; LegacyF16ToF32(value)
  %3785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3222, i32 undef)  ; BufferLoad(srv,index,wot)
  %3786 = extractvalue %dx.types.ResRet.i32 %3785, 0
  %3787 = and i32 %3786, 65535
  %3788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3787)  ; LegacyF16ToF32(value)
  %3789 = lshr i32 %3782, 16
  %3790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3789)  ; LegacyF16ToF32(value)
  %3791 = fsub fast float %3752, %3790
  %3792 = fmul fast float %3791, %3784
  %3793 = fadd fast float %3792, %3788
  %3794 = call float @dx.op.unary.f32(i32 7, float %3793)  ; Saturate(value)
  br label %3795

; <label>:3795                                    ; preds = %3779, %3727
  %3796 = phi float [ %3794, %3779 ], [ %3752, %3727 ]
  %3797 = call float @dx.op.dot2.f32(i32 54, float %3773, float %3774, float %3216, float %3217)  ; Dot2(ax,ay,bx,by)
  %3798 = call float @dx.op.dot2.f32(i32 54, float %3773, float %3774, float %3218, float %3219)  ; Dot2(ax,ay,bx,by)
  br label %3799

; <label>:3799                                    ; preds = %3795, %3705
  %3800 = phi float [ %3796, %3795 ], [ 0x3FD6666660000000, %3705 ]
  %3801 = phi float [ %3797, %3795 ], [ 0.000000e+00, %3705 ]
  %3802 = phi float [ %3798, %3795 ], [ 0.000000e+00, %3705 ]
  %3803 = phi float [ %3739, %3795 ], [ 1.000000e+00, %3705 ]
  %3804 = add i32 %41, 208
  %3805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.i32 %3805, 0
  %3807 = lshr i32 %3806, 22
  %3808 = shl nuw nsw i32 %3807, 5
  %3809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3808)  ; LegacyF16ToF32(value)
  %3810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3811 = extractvalue %dx.types.ResRet.i32 %3810, 0
  %3812 = and i32 %3811, 64
  %3813 = icmp eq i32 %3812, 0
  br i1 %3813, label %3847, label %3814

; <label>:3814                                    ; preds = %3799
  %3815 = add i32 %41, 404
  %3816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3817 = extractvalue %dx.types.ResRet.i32 %3816, 0
  %3818 = add i32 %3817, 0
  %3819 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3818, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3821 = extractvalue %dx.types.ResRet.i32 %3820, 0
  %3822 = and i32 %3821, 131072
  %3823 = icmp eq i32 %3822, 0
  %3824 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3819, %dx.types.Handle %78, float %3312, float %3313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3825 = extractvalue %dx.types.ResRet.f32 %3824, 0
  %3826 = extractvalue %dx.types.ResRet.f32 %3824, 1
  %3827 = extractvalue %dx.types.ResRet.f32 %3824, 2
  %3828 = fmul fast float %3825, %338
  %3829 = fmul fast float %3826, %341
  %3830 = fmul fast float %3827, %344
  br i1 %3823, label %3837, label %3831

; <label>:3831                                    ; preds = %3814
  %3832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3833 = extractvalue %dx.types.CBufRet.f32 %3832, 0
  %3834 = fmul fast float %3833, %3828
  %3835 = fmul fast float %3833, %3829
  %3836 = fmul fast float %3833, %3830
  br label %3837

; <label>:3837                                    ; preds = %3831, %3814
  %3838 = phi float [ %3834, %3831 ], [ %3828, %3814 ]
  %3839 = phi float [ %3835, %3831 ], [ %3829, %3814 ]
  %3840 = phi float [ %3836, %3831 ], [ %3830, %3814 ]
  %3841 = fmul fast float %3838, %3809
  %3842 = select i1 %206, float %3841, float %3838
  %3843 = call float @dx.op.dot3.f32(i32 55, float %3842, float %3839, float %3840, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3844 = select i1 %206, float 0.000000e+00, float %3838
  %3845 = select i1 %206, float %3843, float %3839
  %3846 = select i1 %206, float 0.000000e+00, float %3840
  br label %3847

; <label>:3847                                    ; preds = %3837, %3799
  %3848 = phi float [ %3844, %3837 ], [ 0.000000e+00, %3799 ]
  %3849 = phi float [ %3845, %3837 ], [ 0.000000e+00, %3799 ]
  %3850 = phi float [ %3846, %3837 ], [ 0.000000e+00, %3799 ]
  %3851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3852 = extractvalue %dx.types.ResRet.i32 %3851, 0
  %3853 = and i32 %3852, 1024
  %3854 = icmp eq i32 %3853, 0
  br i1 %3854, label %3885, label %3855

; <label>:3855                                    ; preds = %3847
  %3856 = add i32 %41, 200
  %3857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3858 = extractvalue %dx.types.ResRet.i32 %3857, 0
  %3859 = and i32 %3858, 255
  %3860 = uitofp i32 %3859 to float
  %3861 = fmul fast float %3860, 0x3F70101020000000
  %3862 = lshr i32 %3858, 8
  %3863 = and i32 %3862, 255
  %3864 = uitofp i32 %3863 to float
  %3865 = fmul fast float %3864, 0x3F70101020000000
  %3866 = lshr i32 %3858, 16
  %3867 = and i32 %3866, 255
  %3868 = uitofp i32 %3867 to float
  %3869 = fmul fast float %3868, 0x3F70101020000000
  %3870 = fmul fast float %3861, %3861
  %3871 = fmul fast float %3865, %3865
  %3872 = fmul fast float %3869, %3869
  %3873 = add i32 %41, 468
  %3874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3873, i32 undef)  ; BufferLoad(srv,index,wot)
  %3875 = extractvalue %dx.types.ResRet.i32 %3874, 0
  %3876 = add i32 %3875, 0
  %3877 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3876, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3878 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3877, %dx.types.Handle %79, float %3312, float %3313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3879 = extractvalue %dx.types.ResRet.f32 %3878, 0
  %3880 = extractvalue %dx.types.ResRet.f32 %3878, 1
  %3881 = extractvalue %dx.types.ResRet.f32 %3878, 2
  %3882 = fmul fast float %3870, %3879
  %3883 = fmul fast float %3871, %3880
  %3884 = fmul fast float %3872, %3881
  br label %3885

; <label>:3885                                    ; preds = %3855, %3847
  %3886 = phi float [ %3882, %3855 ], [ 0.000000e+00, %3847 ]
  %3887 = phi float [ %3883, %3855 ], [ 0.000000e+00, %3847 ]
  %3888 = phi float [ %3884, %3855 ], [ 0.000000e+00, %3847 ]
  %3889 = fcmp fast ogt float %3886, 0.000000e+00
  %3890 = fcmp fast ogt float %3887, 0.000000e+00
  %3891 = fcmp fast ogt float %3888, 0.000000e+00
  %3892 = call float @dx.op.unary.f32(i32 23, float %3886)  ; Log(value)
  %3893 = call float @dx.op.unary.f32(i32 23, float %3887)  ; Log(value)
  %3894 = call float @dx.op.unary.f32(i32 23, float %3888)  ; Log(value)
  %3895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3896 = extractvalue %dx.types.ResRet.i32 %3895, 0
  %3897 = lshr i32 %3896, 7
  %3898 = and i32 %3897, 32752
  %3899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3898)  ; LegacyF16ToF32(value)
  %3900 = fmul fast float %3892, 0xBFE62E4300000000
  %3901 = fmul fast float %3900, %3899
  %3902 = fmul fast float %3893, 0xBFE62E4300000000
  %3903 = fmul fast float %3902, %3899
  %3904 = fmul fast float %3894, 0xBFE62E4300000000
  %3905 = fmul fast float %3904, %3899
  %3906 = select i1 %3889, float %3901, float 1.270000e+02
  %3907 = select i1 %3890, float %3903, float 1.270000e+02
  %3908 = select i1 %3891, float %3905, float 1.270000e+02
  %3909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3910 = extractvalue %dx.types.ResRet.i32 %3909, 0
  %3911 = and i32 %3910, 10240
  %3912 = icmp eq i32 %3911, 0
  br i1 %3912, label %3933, label %3913

; <label>:3913                                    ; preds = %3885
  %3914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3915 = extractvalue %dx.types.ResRet.i32 %3914, 0
  %3916 = and i32 %3915, 2048
  %3917 = icmp eq i32 %3916, 0
  br i1 %3917, label %3933, label %3918

; <label>:3918                                    ; preds = %3913
  %3919 = add i32 %41, 484
  %3920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3919, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.i32 %3920, 0
  %3922 = add i32 %3921, 0
  %3923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3923, %dx.types.Handle %79, float %3312, float %3313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3925 = extractvalue %dx.types.ResRet.f32 %3924, 3
  %3926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3927 = extractvalue %dx.types.ResRet.i32 %3926, 0
  %3928 = shl i32 %3927, 4
  %3929 = and i32 %3928, 32752
  %3930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3929)  ; LegacyF16ToF32(value)
  %3931 = fmul fast float %3930, %3925
  %3932 = call float @dx.op.binary.f32(i32 35, float %3931, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3933

; <label>:3933                                    ; preds = %3918, %3913, %3885
  %3934 = phi float [ %3932, %3918 ], [ 0x3F70101020000000, %3913 ], [ 0x3F70101020000000, %3885 ]
  %3935 = add i32 %41, 144
  %3936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3935, i32 undef)  ; BufferLoad(srv,index,wot)
  %3937 = extractvalue %dx.types.ResRet.i32 %3936, 0
  %3938 = and i32 %3937, 255
  %3939 = uitofp i32 %3938 to float
  %3940 = lshr i32 %3937, 8
  %3941 = and i32 %3940, 255
  %3942 = uitofp i32 %3941 to float
  %3943 = call float @dx.op.dot3.f32(i32 55, float %3720, float %3721, float %3722, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3944 = fmul fast float %3942, %3943
  %3945 = fadd fast float %3944, %3939
  %3946 = fmul fast float %3945, 0x3F70101020000000
  %3947 = call float @dx.op.unary.f32(i32 7, float %3946)  ; Saturate(value)
  br i1 %3204, label %3948, label %3983

; <label>:3948                                    ; preds = %3933
  %3949 = fmul fast float %3934, 2.000000e+00
  %3950 = fcmp fast olt float %3906, 1.270000e+02
  %3951 = fcmp fast olt float %3907, 1.270000e+02
  %3952 = fcmp fast olt float %3908, 1.270000e+02
  %3953 = fmul fast float %3906, 0xBFF7154760000000
  %3954 = fmul fast float %3953, %3949
  %3955 = fmul fast float %3907, 0xBFF7154760000000
  %3956 = fmul fast float %3955, %3949
  %3957 = fmul fast float %3908, 0xBFF7154760000000
  %3958 = fmul fast float %3957, %3949
  %3959 = call float @dx.op.unary.f32(i32 21, float %3954)  ; Exp(value)
  %3960 = call float @dx.op.unary.f32(i32 21, float %3956)  ; Exp(value)
  %3961 = call float @dx.op.unary.f32(i32 21, float %3958)  ; Exp(value)
  %3962 = call float @dx.op.unary.f32(i32 7, float %3959)  ; Saturate(value)
  %3963 = call float @dx.op.unary.f32(i32 7, float %3960)  ; Saturate(value)
  %3964 = call float @dx.op.unary.f32(i32 7, float %3961)  ; Saturate(value)
  %3965 = fadd fast float %3962, -1.000000e+00
  %3966 = select i1 %3950, float %3965, float -1.000000e+00
  %3967 = fadd fast float %3963, -1.000000e+00
  %3968 = select i1 %3951, float %3967, float -1.000000e+00
  %3969 = fadd fast float %3964, -1.000000e+00
  %3970 = select i1 %3952, float %3969, float -1.000000e+00
  %3971 = fmul fast float %3966, %3500
  %3972 = fmul fast float %3968, %3500
  %3973 = fmul fast float %3970, %3500
  %3974 = fadd fast float %3971, 1.000000e+00
  %3975 = fadd fast float %3972, 1.000000e+00
  %3976 = fadd fast float %3973, 1.000000e+00
  %3977 = fmul fast float %3974, %3195
  %3978 = fmul fast float %3975, %3196
  %3979 = fmul fast float %3976, %3197
  %3980 = fmul fast float %3974, %3189
  %3981 = fmul fast float %3975, %3190
  %3982 = fmul fast float %3976, %3191
  br label %3983

; <label>:3983                                    ; preds = %3948, %3933
  %3984 = phi float [ %3980, %3948 ], [ %3189, %3933 ]
  %3985 = phi float [ %3981, %3948 ], [ %3190, %3933 ]
  %3986 = phi float [ %3982, %3948 ], [ %3191, %3933 ]
  %3987 = phi float [ %3977, %3948 ], [ %3195, %3933 ]
  %3988 = phi float [ %3978, %3948 ], [ %3196, %3933 ]
  %3989 = phi float [ %3979, %3948 ], [ %3197, %3933 ]
  %3990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3991 = extractvalue %dx.types.ResRet.i32 %3990, 0
  %3992 = and i32 %3991, 3
  %3993 = icmp eq i32 %3992, 3
  br i1 %3993, label %4072, label %3994

; <label>:3994                                    ; preds = %3983
  %3995 = and i32 %3991, 16
  %3996 = icmp ne i32 %3995, 0
  %3997 = select i1 %3996, float %3500, float 0.000000e+00
  %3998 = icmp eq i32 %3992, 0
  br i1 %3998, label %3999, label %4027

; <label>:3999                                    ; preds = %3994
  %4000 = and i32 %3991, 64
  %4001 = icmp ne i32 %4000, 0
  %4002 = select i1 %4001, float %3500, float 0.000000e+00
  %4003 = fsub fast float %3720, %3987
  %4004 = fsub fast float %3721, %3988
  %4005 = fsub fast float %3722, %3989
  %4006 = fmul fast float %3997, %4003
  %4007 = fmul fast float %3997, %4004
  %4008 = fmul fast float %3997, %4005
  %4009 = fadd fast float %4006, %3987
  %4010 = fadd fast float %4007, %3988
  %4011 = fadd fast float %4008, %3989
  %4012 = fsub fast float %3706, %3198
  %4013 = fmul fast float %3997, %4012
  %4014 = fadd fast float %4013, %3198
  %4015 = fsub fast float %3848, %3984
  %4016 = fsub fast float %3849, %3985
  %4017 = fsub fast float %3850, %3986
  %4018 = fmul fast float %4002, %4015
  %4019 = fmul fast float %4002, %4016
  %4020 = fmul fast float %4002, %4017
  %4021 = fadd fast float %4018, %3984
  %4022 = fadd fast float %4019, %3985
  %4023 = fadd fast float %4020, %3986
  %4024 = fsub fast float %3947, %3202
  %4025 = fmul fast float %3997, %4024
  %4026 = fadd fast float %4025, %3202
  br label %4072

; <label>:4027                                    ; preds = %3994
  %4028 = icmp eq i32 %3992, 1
  br i1 %4028, label %4029, label %4042

; <label>:4029                                    ; preds = %4027
  %4030 = fadd fast float %3720, -1.000000e+00
  %4031 = fadd fast float %3721, -1.000000e+00
  %4032 = fadd fast float %3722, -1.000000e+00
  %4033 = fmul fast float %3997, %4030
  %4034 = fmul fast float %3997, %4031
  %4035 = fmul fast float %3997, %4032
  %4036 = fadd fast float %4033, 1.000000e+00
  %4037 = fadd fast float %4034, 1.000000e+00
  %4038 = fadd fast float %4035, 1.000000e+00
  %4039 = fmul fast float %4036, %3987
  %4040 = fmul fast float %4037, %3988
  %4041 = fmul fast float %4038, %3989
  br label %4072

; <label>:4042                                    ; preds = %4027
  %4043 = icmp eq i32 %3992, 2
  br i1 %4043, label %4044, label %4072

; <label>:4044                                    ; preds = %4042
  %4045 = call float @dx.op.unary.f32(i32 24, float %3720)  ; Sqrt(value)
  %4046 = call float @dx.op.unary.f32(i32 24, float %3721)  ; Sqrt(value)
  %4047 = call float @dx.op.unary.f32(i32 24, float %3722)  ; Sqrt(value)
  %4048 = fadd fast float %4045, -5.000000e-01
  %4049 = fadd fast float %4046, -5.000000e-01
  %4050 = fadd fast float %4047, -5.000000e-01
  %4051 = fmul fast float %4048, %3997
  %4052 = fmul fast float %4049, %3997
  %4053 = fmul fast float %4050, %3997
  %4054 = fadd fast float %4051, 5.000000e-01
  %4055 = fadd fast float %4052, 5.000000e-01
  %4056 = fadd fast float %4053, 5.000000e-01
  %4057 = fmul fast float %4054, 2.000000e+00
  %4058 = fsub fast float 1.000000e+00, %4057
  %4059 = fmul fast float %4058, %3987
  %4060 = fadd fast float %4059, %4057
  %4061 = fmul fast float %4060, %3987
  %4062 = fmul fast float %4055, 2.000000e+00
  %4063 = fsub fast float 1.000000e+00, %4062
  %4064 = fmul fast float %4063, %3988
  %4065 = fadd fast float %4064, %4062
  %4066 = fmul fast float %4065, %3988
  %4067 = fmul fast float %4056, 2.000000e+00
  %4068 = fsub fast float 1.000000e+00, %4067
  %4069 = fmul fast float %4068, %3989
  %4070 = fadd fast float %4069, %4067
  %4071 = fmul fast float %4070, %3989
  br label %4072

; <label>:4072                                    ; preds = %4044, %4042, %4029, %3999, %3983
  %4073 = phi float [ %3984, %3983 ], [ %3984, %4044 ], [ %3984, %4042 ], [ %3984, %4029 ], [ %4021, %3999 ]
  %4074 = phi float [ %3985, %3983 ], [ %3985, %4044 ], [ %3985, %4042 ], [ %3985, %4029 ], [ %4022, %3999 ]
  %4075 = phi float [ %3986, %3983 ], [ %3986, %4044 ], [ %3986, %4042 ], [ %3986, %4029 ], [ %4023, %3999 ]
  %4076 = phi float [ %3987, %3983 ], [ %4061, %4044 ], [ %3987, %4042 ], [ %4039, %4029 ], [ %4009, %3999 ]
  %4077 = phi float [ %3988, %3983 ], [ %4066, %4044 ], [ %3988, %4042 ], [ %4040, %4029 ], [ %4010, %3999 ]
  %4078 = phi float [ %3989, %3983 ], [ %4071, %4044 ], [ %3989, %4042 ], [ %4041, %4029 ], [ %4011, %3999 ]
  %4079 = phi float [ %3198, %3983 ], [ %3198, %4044 ], [ %3198, %4042 ], [ %3198, %4029 ], [ %4014, %3999 ]
  %4080 = phi float [ %3202, %3983 ], [ %3202, %4044 ], [ %3202, %4042 ], [ %3202, %4029 ], [ %4026, %3999 ]
  %4081 = and i32 %3991, 12
  %4082 = icmp eq i32 %4081, 12
  br i1 %4082, label %4189, label %4083

; <label>:4083                                    ; preds = %4072
  %4084 = and i32 %3991, 2097184
  %4085 = icmp eq i32 %4084, 2097184
  %4086 = select i1 %4085, float %3500, float 0.000000e+00
  %4087 = and i32 %3991, 4194336
  %4088 = icmp eq i32 %4087, 4194336
  %4089 = select i1 %4088, float %3500, float 0.000000e+00
  %4090 = and i32 %3991, 8388640
  %4091 = icmp eq i32 %4090, 8388640
  %4092 = select i1 %4091, float %3500, float 0.000000e+00
  %4093 = and i32 %3991, 1024
  %4094 = icmp ne i32 %4093, 0
  %4095 = select i1 %4094, float %3500, float 0.000000e+00
  %4096 = and i32 %3991, 2048
  %4097 = icmp ne i32 %4096, 0
  %4098 = select i1 %4097, float %3500, float 0.000000e+00
  %4099 = icmp eq i32 %4081, 0
  br i1 %4099, label %4100, label %4125

; <label>:4100                                    ; preds = %4083
  %4101 = fsub fast float %3801, %3187
  %4102 = fsub fast float %3802, %3188
  %4103 = fmul fast float %4086, %4101
  %4104 = fmul fast float %4086, %4102
  %4105 = fadd fast float %4103, %3187
  %4106 = fadd fast float %4104, %3188
  %4107 = fsub fast float %3803, %3200
  %4108 = fmul fast float %4089, %4107
  %4109 = fadd fast float %4108, %3200
  %4110 = fsub fast float %3800, %3199
  %4111 = fmul fast float %4092, %4110
  %4112 = fadd fast float %4111, %3199
  %4113 = fsub fast float %3906, %3192
  %4114 = fsub fast float %3907, %3193
  %4115 = fsub fast float %3908, %3194
  %4116 = fmul fast float %4095, %4113
  %4117 = fmul fast float %4095, %4114
  %4118 = fmul fast float %4095, %4115
  %4119 = fadd fast float %4116, %3192
  %4120 = fadd fast float %4117, %3193
  %4121 = fadd fast float %4118, %3194
  %4122 = fsub fast float %3934, %3201
  %4123 = fmul fast float %4098, %4122
  %4124 = fadd fast float %4123, %3201
  br label %4189

; <label>:4125                                    ; preds = %4083
  %4126 = icmp eq i32 %4081, 4
  br i1 %4126, label %4127, label %4167

; <label>:4127                                    ; preds = %4125
  %4128 = fmul fast float %4086, %3801
  %4129 = fmul fast float %4086, %3802
  %4130 = fadd fast float %4128, %3187
  %4131 = fadd fast float %4129, %3188
  %4132 = call float @dx.op.binary.f32(i32 36, float %3200, float %3803)  ; FMin(a,b)
  %4133 = fsub fast float %4132, %3200
  %4134 = fmul fast float %4133, %4089
  %4135 = fadd fast float %4134, %3200
  %4136 = fadd fast float %3800, %3199
  %4137 = fmul fast float %4136, 0x3FF337FAE0000000
  %4138 = fmul fast float %3199, %3199
  %4139 = fmul fast float %3800, %3800
  %4140 = fadd fast float %4139, %4138
  %4141 = fmul fast float %4140, 0x3FE5152B00000000
  %4142 = fmul fast float %3199, 0xBFCC1F85E0000000
  %4143 = fmul fast float %4142, %3800
  %4144 = fadd fast float %4143, 0xBFE1363700000000
  %4145 = fadd fast float %4144, %4137
  %4146 = fsub fast float %4145, %4141
  %4147 = fmul fast float %4136, 0x3FBA6F0D00000000
  %4148 = fmul fast float %4140, 0x3FD0432880000000
  %4149 = fmul fast float %3199, 0xBFEF110800000000
  %4150 = fmul fast float %4149, %3800
  %4151 = fadd fast float %4150, 1.000000e+00
  %4152 = fsub fast float %4151, %4147
  %4153 = fadd fast float %4152, %4148
  %4154 = fdiv fast float %4146, %4153
  %4155 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4156 = fsub fast float %4155, %3199
  %4157 = fmul fast float %4156, %4092
  %4158 = fadd fast float %4157, %3199
  %4159 = fmul fast float %4095, %3906
  %4160 = fmul fast float %4095, %3907
  %4161 = fmul fast float %4095, %3908
  %4162 = fadd fast float %4159, %3192
  %4163 = fadd fast float %4160, %3193
  %4164 = fadd fast float %4161, %3194
  %4165 = fmul fast float %4098, %3934
  %4166 = fadd fast float %4165, %3201
  br label %4189

; <label>:4167                                    ; preds = %4125
  %4168 = icmp eq i32 %4081, 8
  br i1 %4168, label %4169, label %4189

; <label>:4169                                    ; preds = %4167
  %4170 = fmul fast float %4086, %3801
  %4171 = fmul fast float %4086, %3802
  %4172 = fadd fast float %4170, %3187
  %4173 = fadd fast float %4171, %3188
  %4174 = call float @dx.op.binary.f32(i32 36, float %3200, float %3803)  ; FMin(a,b)
  %4175 = fsub fast float %4174, %3200
  %4176 = fmul fast float %4175, %4089
  %4177 = fadd fast float %4176, %3200
  %4178 = fsub fast float %3800, %3199
  %4179 = fmul fast float %4092, %4178
  %4180 = fadd fast float %4179, %3199
  %4181 = fmul fast float %4095, %3906
  %4182 = fmul fast float %4095, %3907
  %4183 = fmul fast float %4095, %3908
  %4184 = fadd fast float %4181, %3192
  %4185 = fadd fast float %4182, %3193
  %4186 = fadd fast float %4183, %3194
  %4187 = fmul fast float %4098, %3934
  %4188 = fadd fast float %4187, %3201
  br label %4189

; <label>:4189                                    ; preds = %4169, %4167, %4127, %4100, %4072, %3499, %3203, %3186
  %4190 = phi float [ %3187, %4072 ], [ %3187, %3499 ], [ %3187, %3186 ], [ %3187, %3203 ], [ %4105, %4100 ], [ %4130, %4127 ], [ %3187, %4167 ], [ %4172, %4169 ]
  %4191 = phi float [ %3188, %4072 ], [ %3188, %3499 ], [ %3188, %3186 ], [ %3188, %3203 ], [ %4106, %4100 ], [ %4131, %4127 ], [ %3188, %4167 ], [ %4173, %4169 ]
  %4192 = phi float [ %4073, %4072 ], [ %3189, %3499 ], [ %3189, %3186 ], [ %3189, %3203 ], [ %4073, %4100 ], [ %4073, %4127 ], [ %4073, %4167 ], [ %4073, %4169 ]
  %4193 = phi float [ %4074, %4072 ], [ %3190, %3499 ], [ %3190, %3186 ], [ %3190, %3203 ], [ %4074, %4100 ], [ %4074, %4127 ], [ %4074, %4167 ], [ %4074, %4169 ]
  %4194 = phi float [ %4075, %4072 ], [ %3191, %3499 ], [ %3191, %3186 ], [ %3191, %3203 ], [ %4075, %4100 ], [ %4075, %4127 ], [ %4075, %4167 ], [ %4075, %4169 ]
  %4195 = phi float [ %3192, %4072 ], [ %3192, %3499 ], [ %3192, %3186 ], [ %3192, %3203 ], [ %4119, %4100 ], [ %4162, %4127 ], [ %3192, %4167 ], [ %4184, %4169 ]
  %4196 = phi float [ %3193, %4072 ], [ %3193, %3499 ], [ %3193, %3186 ], [ %3193, %3203 ], [ %4120, %4100 ], [ %4163, %4127 ], [ %3193, %4167 ], [ %4185, %4169 ]
  %4197 = phi float [ %3194, %4072 ], [ %3194, %3499 ], [ %3194, %3186 ], [ %3194, %3203 ], [ %4121, %4100 ], [ %4164, %4127 ], [ %3194, %4167 ], [ %4186, %4169 ]
  %4198 = phi float [ %4076, %4072 ], [ %3195, %3499 ], [ %3195, %3186 ], [ %3195, %3203 ], [ %4076, %4100 ], [ %4076, %4127 ], [ %4076, %4167 ], [ %4076, %4169 ]
  %4199 = phi float [ %4077, %4072 ], [ %3196, %3499 ], [ %3196, %3186 ], [ %3196, %3203 ], [ %4077, %4100 ], [ %4077, %4127 ], [ %4077, %4167 ], [ %4077, %4169 ]
  %4200 = phi float [ %4078, %4072 ], [ %3197, %3499 ], [ %3197, %3186 ], [ %3197, %3203 ], [ %4078, %4100 ], [ %4078, %4127 ], [ %4078, %4167 ], [ %4078, %4169 ]
  %4201 = phi float [ %4079, %4072 ], [ %3198, %3499 ], [ %3198, %3186 ], [ %3198, %3203 ], [ %4079, %4100 ], [ %4079, %4127 ], [ %4079, %4167 ], [ %4079, %4169 ]
  %4202 = phi float [ %3199, %4072 ], [ %3199, %3499 ], [ %3199, %3186 ], [ %3199, %3203 ], [ %4112, %4100 ], [ %4158, %4127 ], [ %3199, %4167 ], [ %4180, %4169 ]
  %4203 = phi float [ %3200, %4072 ], [ %3200, %3499 ], [ %3200, %3186 ], [ %3200, %3203 ], [ %4109, %4100 ], [ %4135, %4127 ], [ %3200, %4167 ], [ %4177, %4169 ]
  %4204 = phi float [ %3201, %4072 ], [ %3201, %3499 ], [ %3201, %3186 ], [ %3201, %3203 ], [ %4124, %4100 ], [ %4166, %4127 ], [ %3201, %4167 ], [ %4188, %4169 ]
  %4205 = phi float [ %4080, %4072 ], [ %3202, %3499 ], [ %3202, %3186 ], [ %3202, %3203 ], [ %4080, %4100 ], [ %4080, %4127 ], [ %4080, %4167 ], [ %4080, %4169 ]
  %4206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4207 = extractvalue %dx.types.CBufRet.f32 %4206, 0
  %4208 = call float @dx.op.dot2.f32(i32 54, float %4190, float %4191, float %4190, float %4191)  ; Dot2(ax,ay,bx,by)
  %4209 = fmul fast float %4208, 0x3FE3333340000000
  %4210 = fsub fast float 1.000000e+00, %4209
  %4211 = call float @dx.op.dot3.f32(i32 55, float %4190, float %4191, float %4210, float %4190, float %4191, float %4210)  ; Dot3(ax,ay,az,bx,by,bz)
  %4212 = call float @dx.op.unary.f32(i32 25, float %4211)  ; Rsqrt(value)
  %4213 = fmul fast float %4212, %4190
  %4214 = fmul fast float %4212, %4191
  %4215 = fmul fast float %4210, %4212
  %4216 = fmul fast float %4215, %89
  %4217 = fmul fast float %4215, %90
  %4218 = fmul fast float %4215, %91
  %4219 = fmul fast float %4213, %57
  %4220 = fmul fast float %4213, %58
  %4221 = fmul fast float %4213, %59
  %4222 = fadd fast float %4216, %4219
  %4223 = fadd fast float %4217, %4220
  %4224 = fadd fast float %4218, %4221
  %4225 = fmul fast float %101, %4214
  %4226 = fmul fast float %102, %4214
  %4227 = fmul fast float %103, %4214
  %4228 = fadd fast float %4222, %4225
  %4229 = fadd fast float %4223, %4226
  %4230 = fadd fast float %4224, %4227
  %4231 = call float @dx.op.dot3.f32(i32 55, float %4228, float %4229, float %4230, float %4228, float %4229, float %4230)  ; Dot3(ax,ay,az,bx,by,bz)
  %4232 = call float @dx.op.unary.f32(i32 25, float %4231)  ; Rsqrt(value)
  %4233 = fmul fast float %4228, %4232
  %4234 = fmul fast float %4229, %4232
  %4235 = fmul fast float %4230, %4232
  %4236 = and i32 %43, 1
  %4237 = icmp eq i32 %4236, 0
  br i1 %4237, label %4238, label %4777

; <label>:4238                                    ; preds = %4189
  %4239 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %4240 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %4241 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %4242 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %4243 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %4244 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %4245 = fadd fast float %4239, %145
  %4246 = fadd fast float %4240, %146
  %4247 = fadd fast float %4241, %147
  %4248 = fadd fast float %4242, %145
  %4249 = fadd fast float %4243, %146
  %4250 = fadd fast float %4244, %147
  %4251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4252 = extractvalue %dx.types.CBufRet.f32 %4251, 0
  %4253 = extractvalue %dx.types.CBufRet.f32 %4251, 1
  %4254 = extractvalue %dx.types.CBufRet.f32 %4251, 2
  %4255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.f32 %4255, 2
  %4257 = extractvalue %dx.types.CBufRet.f32 %4255, 3
  %4258 = fmul fast float %4252, %82
  %4259 = fmul fast float %4258, %4256
  %4260 = fmul fast float %4253, %83
  %4261 = fmul fast float %4260, %4257
  %4262 = fptoui float %4259 to i32
  %4263 = fptoui float %4261 to i32
  %4264 = fadd fast float %4252, -1.000000e+00
  %4265 = fadd fast float %4253, -1.000000e+00
  %4266 = fptoui float %4264 to i32
  %4267 = fptoui float %4265 to i32
  %4268 = call i32 @dx.op.binary.i32(i32 40, i32 %4262, i32 %4266)  ; UMin(a,b)
  %4269 = call i32 @dx.op.binary.i32(i32 40, i32 %4263, i32 %4267)  ; UMin(a,b)
  %4270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4271 = extractvalue %dx.types.CBufRet.f32 %4270, 2
  %4272 = extractvalue %dx.types.CBufRet.f32 %4270, 3
  %4273 = fmul fast float %4271, %73
  %4274 = fsub fast float %4273, %4272
  %4275 = fadd fast float %4254, -1.000000e+00
  %4276 = call float @dx.op.binary.f32(i32 36, float %4274, float %4275)  ; FMin(a,b)
  %4277 = fptoui float %4276 to i32
  %4278 = fptoui float %4252 to i32
  %4279 = fptoui float %4253 to i32
  %4280 = mul i32 %4277, %4279
  %4281 = add i32 %4280, %4269
  %4282 = mul i32 %4281, %4278
  %4283 = add i32 %4282, %4268
  %4284 = shl i32 %4283, 2
  %4285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4284, i32 undef)  ; BufferLoad(srv,index,wot)
  %4286 = extractvalue %dx.types.ResRet.i32 %4285, 0
  %4287 = and i32 %4286, 1023
  %4288 = lshr i32 %4286, 10
  %4289 = icmp eq i32 %4287, 0
  br i1 %4289, label %4743, label %4290

; <label>:4290                                    ; preds = %4238
  %4291 = and i32 %4286, 1023
  br label %4292

; <label>:4292                                    ; preds = %4421, %4290
  %4293 = phi i32 [ %4371, %4421 ], [ 0, %4290 ]
  %4294 = phi float [ %4422, %4421 ], [ 0.000000e+00, %4290 ]
  %4295 = phi float [ %4423, %4421 ], [ %4207, %4290 ]
  %4296 = phi float [ %4424, %4421 ], [ %4205, %4290 ]
  %4297 = phi float [ %4425, %4421 ], [ %4195, %4290 ]
  %4298 = phi float [ %4426, %4421 ], [ %4196, %4290 ]
  %4299 = phi float [ %4427, %4421 ], [ %4197, %4290 ]
  %4300 = phi float [ %4428, %4421 ], [ 0.000000e+00, %4290 ]
  %4301 = phi float [ %4429, %4421 ], [ 0.000000e+00, %4290 ]
  %4302 = phi float [ %4430, %4421 ], [ %4192, %4290 ]
  %4303 = phi float [ %4431, %4421 ], [ %4193, %4290 ]
  %4304 = phi float [ %4432, %4421 ], [ %4194, %4290 ]
  %4305 = phi float [ %4433, %4421 ], [ %4233, %4290 ]
  %4306 = phi float [ %4434, %4421 ], [ %4234, %4290 ]
  %4307 = phi float [ %4435, %4421 ], [ %4235, %4290 ]
  %4308 = phi float [ %4436, %4421 ], [ %4203, %4290 ]
  %4309 = phi float [ %4437, %4421 ], [ %4202, %4290 ]
  %4310 = phi float [ %4438, %4421 ], [ 0.000000e+00, %4290 ]
  %4311 = phi float [ %4439, %4421 ], [ %4201, %4290 ]
  %4312 = phi float [ %4440, %4421 ], [ %4198, %4290 ]
  %4313 = phi float [ %4441, %4421 ], [ %4199, %4290 ]
  %4314 = phi float [ %4442, %4421 ], [ %4200, %4290 ]
  %4315 = add nuw nsw i32 %4293, %4288
  %4316 = shl i32 %4315, 2
  %4317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4316, i32 undef)  ; BufferLoad(srv,index,wot)
  %4318 = extractvalue %dx.types.ResRet.i32 %4317, 0
  %4319 = shl i32 %4318, 8
  %4320 = or i32 %4319, 48
  %4321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4320, i32 undef)  ; BufferLoad(srv,index,wot)
  %4322 = extractvalue %dx.types.ResRet.f32 %4321, 0
  %4323 = extractvalue %dx.types.ResRet.f32 %4321, 1
  %4324 = extractvalue %dx.types.ResRet.f32 %4321, 2
  %4325 = extractvalue %dx.types.ResRet.f32 %4321, 3
  %4326 = or i32 %4319, 64
  %4327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %4326, i32 undef)  ; BufferLoad(srv,index,wot)
  %4328 = extractvalue %dx.types.ResRet.i32 %4327, 0
  %4329 = extractvalue %dx.types.ResRet.i32 %4327, 1
  %4330 = or i32 %4319, 80
  %4331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4330, i32 undef)  ; BufferLoad(srv,index,wot)
  %4332 = extractvalue %dx.types.ResRet.f32 %4331, 2
  %4333 = extractvalue %dx.types.ResRet.f32 %4331, 3
  %4334 = or i32 %4319, 96
  %4335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4334, i32 undef)  ; BufferLoad(srv,index,wot)
  %4336 = extractvalue %dx.types.ResRet.f32 %4335, 0
  %4337 = extractvalue %dx.types.ResRet.f32 %4335, 1
  %4338 = extractvalue %dx.types.ResRet.f32 %4335, 2
  %4339 = extractvalue %dx.types.ResRet.f32 %4335, 3
  %4340 = or i32 %4319, 112
  %4341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4340, i32 undef)  ; BufferLoad(srv,index,wot)
  %4342 = extractvalue %dx.types.ResRet.f32 %4341, 2
  %4343 = or i32 %4319, 128
  %4344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4343, i32 undef)  ; BufferLoad(srv,index,wot)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = extractvalue %dx.types.ResRet.f32 %4344, 1
  %4347 = extractvalue %dx.types.ResRet.f32 %4344, 2
  %4348 = extractvalue %dx.types.ResRet.f32 %4344, 3
  %4349 = or i32 %4319, 144
  %4350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4349, i32 undef)  ; BufferLoad(srv,index,wot)
  %4351 = extractvalue %dx.types.ResRet.f32 %4350, 0
  %4352 = extractvalue %dx.types.ResRet.f32 %4350, 1
  %4353 = extractvalue %dx.types.ResRet.f32 %4350, 2
  %4354 = extractvalue %dx.types.ResRet.f32 %4350, 3
  %4355 = or i32 %4319, 160
  %4356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4355, i32 undef)  ; BufferLoad(srv,index,wot)
  %4357 = extractvalue %dx.types.ResRet.f32 %4356, 0
  %4358 = extractvalue %dx.types.ResRet.f32 %4356, 1
  %4359 = extractvalue %dx.types.ResRet.f32 %4356, 2
  %4360 = extractvalue %dx.types.ResRet.f32 %4356, 3
  %4361 = or i32 %4319, 192
  %4362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %4361, i32 undef)  ; BufferLoad(srv,index,wot)
  %4363 = extractvalue %dx.types.ResRet.i32 %4362, 0
  %4364 = or i32 %4319, 208
  %4365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4364, i32 undef)  ; BufferLoad(srv,index,wot)
  %4366 = extractvalue %dx.types.ResRet.f32 %4365, 0
  %4367 = or i32 %4319, 248
  %4368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4367, i32 undef)  ; BufferLoad(srv,index,wot)
  %4369 = extractvalue %dx.types.ResRet.f32 %4368, 0
  %4370 = extractvalue %dx.types.ResRet.f32 %4368, 1
  %4371 = add nuw nsw i32 %4293, 1
  %4372 = bitcast float %4325 to i32
  %4373 = and i32 %4372, 512
  %4374 = icmp eq i32 %4373, 0
  %4375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4319, i32 undef)  ; BufferLoad(srv,index,wot)
  %4376 = extractvalue %dx.types.ResRet.f32 %4375, 0
  %4377 = extractvalue %dx.types.ResRet.f32 %4375, 1
  %4378 = extractvalue %dx.types.ResRet.f32 %4375, 2
  %4379 = extractvalue %dx.types.ResRet.f32 %4375, 3
  %4380 = call float @dx.op.dot4.f32(i32 56, float %4376, float %4377, float %4378, float %4379, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4381 = or i32 %4319, 16
  %4382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4381, i32 undef)  ; BufferLoad(srv,index,wot)
  %4383 = extractvalue %dx.types.ResRet.f32 %4382, 0
  %4384 = extractvalue %dx.types.ResRet.f32 %4382, 1
  %4385 = extractvalue %dx.types.ResRet.f32 %4382, 2
  %4386 = extractvalue %dx.types.ResRet.f32 %4382, 3
  %4387 = call float @dx.op.dot4.f32(i32 56, float %4383, float %4384, float %4385, float %4386, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4388 = or i32 %4319, 32
  %4389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4388, i32 undef)  ; BufferLoad(srv,index,wot)
  %4390 = extractvalue %dx.types.ResRet.f32 %4389, 0
  %4391 = extractvalue %dx.types.ResRet.f32 %4389, 1
  %4392 = extractvalue %dx.types.ResRet.f32 %4389, 2
  %4393 = extractvalue %dx.types.ResRet.f32 %4389, 3
  %4394 = call float @dx.op.dot4.f32(i32 56, float %4390, float %4391, float %4392, float %4393, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4395 = call float @dx.op.unary.f32(i32 27, float %4380)  ; Round_ni(value)
  %4396 = call float @dx.op.unary.f32(i32 6, float %4395)  ; FAbs(value)
  %4397 = call float @dx.op.unary.f32(i32 27, float %4387)  ; Round_ni(value)
  %4398 = call float @dx.op.unary.f32(i32 6, float %4397)  ; FAbs(value)
  %4399 = call float @dx.op.unary.f32(i32 6, float %4394)  ; FAbs(value)
  %4400 = call float @dx.op.unary.f32(i32 27, float %4399)  ; Round_ni(value)
  %4401 = fadd fast float %4398, %4396
  %4402 = fadd fast float %4401, %4400
  %4403 = fcmp fast oeq float %4402, 0.000000e+00
  %4404 = call float @dx.op.dot4.f32(i32 56, float %4376, float %4377, float %4378, float %4379, float %4245, float %4246, float %4247, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4405 = call float @dx.op.dot4.f32(i32 56, float %4383, float %4384, float %4385, float %4386, float %4245, float %4246, float %4247, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4406 = call float @dx.op.dot4.f32(i32 56, float %4376, float %4377, float %4378, float %4379, float %4248, float %4249, float %4250, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4407 = call float @dx.op.dot4.f32(i32 56, float %4383, float %4384, float %4385, float %4386, float %4248, float %4249, float %4250, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4408 = fsub fast float %4404, %4380
  %4409 = fsub fast float %4406, %4380
  %4410 = fsub fast float %4405, %4387
  %4411 = fsub fast float %4407, %4387
  %4412 = call float @dx.op.dot3.f32(i32 55, float %4322, float %4323, float %4324, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %4413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4414 = extractvalue %dx.types.CBufRet.f32 %4413, 2
  %4415 = fadd fast float %4414, %4412
  %4416 = call float @dx.op.unary.f32(i32 7, float %4415)  ; Saturate(value)
  %4417 = extractvalue %dx.types.CBufRet.f32 %4413, 0
  %4418 = fcmp fast ogt float %4416, %4417
  %4419 = and i1 %4403, %4418
  %4420 = and i1 %4374, %4419
  br i1 %4420, label %4444, label %4421

; <label>:4421                                    ; preds = %4729, %4525, %4444, %4292
  %4422 = phi float [ %4294, %4444 ], [ %4528, %4525 ], [ %4528, %4729 ], [ %4294, %4292 ]
  %4423 = phi float [ %4295, %4444 ], [ %4295, %4525 ], [ %4705, %4729 ], [ %4295, %4292 ]
  %4424 = phi float [ %4296, %4444 ], [ %4296, %4525 ], [ %4703, %4729 ], [ %4296, %4292 ]
  %4425 = phi float [ %4297, %4444 ], [ %4297, %4525 ], [ %4681, %4729 ], [ %4297, %4292 ]
  %4426 = phi float [ %4298, %4444 ], [ %4298, %4525 ], [ %4682, %4729 ], [ %4298, %4292 ]
  %4427 = phi float [ %4299, %4444 ], [ %4299, %4525 ], [ %4683, %4729 ], [ %4299, %4292 ]
  %4428 = phi float [ %4300, %4444 ], [ %4300, %4525 ], [ %4652, %4729 ], [ %4300, %4292 ]
  %4429 = phi float [ %4301, %4444 ], [ %4301, %4525 ], [ %4650, %4729 ], [ %4301, %4292 ]
  %4430 = phi float [ %4302, %4444 ], [ %4302, %4525 ], [ %4739, %4729 ], [ %4302, %4292 ]
  %4431 = phi float [ %4303, %4444 ], [ %4303, %4525 ], [ %4740, %4729 ], [ %4303, %4292 ]
  %4432 = phi float [ %4304, %4444 ], [ %4304, %4525 ], [ %4741, %4729 ], [ %4304, %4292 ]
  %4433 = phi float [ %4305, %4444 ], [ %4305, %4525 ], [ %4631, %4729 ], [ %4305, %4292 ]
  %4434 = phi float [ %4306, %4444 ], [ %4306, %4525 ], [ %4632, %4729 ], [ %4306, %4292 ]
  %4435 = phi float [ %4307, %4444 ], [ %4307, %4525 ], [ %4633, %4729 ], [ %4307, %4292 ]
  %4436 = phi float [ %4308, %4444 ], [ %4308, %4525 ], [ %4661, %4729 ], [ %4308, %4292 ]
  %4437 = phi float [ %4309, %4444 ], [ %4309, %4525 ], [ %4658, %4729 ], [ %4309, %4292 ]
  %4438 = phi float [ %4310, %4444 ], [ %4310, %4525 ], [ %4655, %4729 ], [ %4310, %4292 ]
  %4439 = phi float [ %4311, %4444 ], [ %4311, %4525 ], [ %4648, %4729 ], [ %4311, %4292 ]
  %4440 = phi float [ %4312, %4444 ], [ %4312, %4525 ], [ %4643, %4729 ], [ %4312, %4292 ]
  %4441 = phi float [ %4313, %4444 ], [ %4313, %4525 ], [ %4644, %4729 ], [ %4313, %4292 ]
  %4442 = phi float [ %4314, %4444 ], [ %4314, %4525 ], [ %4645, %4729 ], [ %4314, %4292 ]
  %4443 = icmp eq i32 %4371, %4291
  br i1 %4443, label %4742, label %4292

; <label>:4444                                    ; preds = %4292
  %4445 = extractvalue %dx.types.ResRet.f32 %4341, 3
  %4446 = extractvalue %dx.types.ResRet.f32 %4341, 1
  %4447 = extractvalue %dx.types.ResRet.f32 %4341, 0
  %4448 = extractvalue %dx.types.ResRet.f32 %4331, 1
  %4449 = extractvalue %dx.types.ResRet.f32 %4331, 0
  %4450 = extractvalue %dx.types.ResRet.i32 %4327, 3
  %4451 = extractvalue %dx.types.ResRet.i32 %4327, 2
  %4452 = add i32 %4450, 0
  %4453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4452, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4454 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4455 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4453, %dx.types.Handle %4454, float %4380, float %4387, float undef, float undef, i32 0, i32 0, i32 undef, float %4408, float %4410, float undef, float %4409, float %4411, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4456 = extractvalue %dx.types.ResRet.f32 %4455, 0
  %4457 = fmul fast float %4456, %4449
  %4458 = fadd fast float %4457, %4448
  %4459 = call float @dx.op.unary.f32(i32 7, float %4458)  ; Saturate(value)
  %4460 = fmul fast float %4380, %4336
  %4461 = call float @dx.op.tertiary.f32(i32 46, float %4337, float %4387, float %4460)  ; FMad(a,b,c)
  %4462 = fadd fast float %4461, %4447
  %4463 = fmul fast float %4380, %4338
  %4464 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %4387, float %4463)  ; FMad(a,b,c)
  %4465 = fadd fast float %4464, %4446
  %4466 = fmul fast float %4408, %4336
  %4467 = call float @dx.op.tertiary.f32(i32 46, float %4337, float %4410, float %4466)  ; FMad(a,b,c)
  %4468 = fmul fast float %4408, %4338
  %4469 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %4410, float %4468)  ; FMad(a,b,c)
  %4470 = fmul fast float %4409, %4336
  %4471 = call float @dx.op.tertiary.f32(i32 46, float %4337, float %4411, float %4470)  ; FMad(a,b,c)
  %4472 = fmul fast float %4409, %4338
  %4473 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %4411, float %4472)  ; FMad(a,b,c)
  %4474 = add i32 %4451, 0
  %4475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4474, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4476 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4475, %dx.types.Handle %4454, float %4462, float %4465, float undef, float undef, i32 0, i32 0, i32 undef, float %4467, float %4469, float undef, float %4471, float %4473, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4477 = extractvalue %dx.types.ResRet.f32 %4476, 0
  %4478 = and i32 %4372, 1024
  %4479 = icmp ne i32 %4478, 0
  %4480 = fcmp fast ogt float %4477, 0x3FE0101020000000
  %4481 = uitofp i1 %4480 to float
  %4482 = select i1 %4479, float %4481, float %4477
  %4483 = and i32 %4372, 8192
  %4484 = icmp ne i32 %4483, 0
  %4485 = select i1 %4484, float %4445, float 1.000000e+00
  %4486 = fmul fast float %4380, 2.000000e+00
  %4487 = fadd fast float %4486, -1.000000e+00
  %4488 = call float @dx.op.unary.f32(i32 6, float %4487)  ; FAbs(value)
  %4489 = fmul fast float %4488, %4369
  %4490 = fsub fast float %4489, %4369
  %4491 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4492 = fmul fast float %4387, 2.000000e+00
  %4493 = fadd fast float %4492, -1.000000e+00
  %4494 = call float @dx.op.unary.f32(i32 6, float %4493)  ; FAbs(value)
  %4495 = fmul fast float %4494, %4370
  %4496 = fsub fast float %4495, %4370
  %4497 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4498 = fmul fast float %4399, %4332
  %4499 = fsub fast float %4498, %4332
  %4500 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4501 = fmul fast float %4459, %4485
  %4502 = fmul fast float %4501, %4456
  %4503 = fmul fast float %4502, %4491
  %4504 = fmul fast float %4503, %4482
  %4505 = fmul fast float %4504, %4497
  %4506 = fmul fast float %4505, %4500
  %4507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4508 = extractvalue %dx.types.CBufRet.f32 %4507, 1
  %4509 = extractvalue %dx.types.CBufRet.f32 %4507, 0
  %4510 = fsub fast float %4416, %4509
  %4511 = fmul fast float %4510, %4508
  %4512 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4513 = fmul fast float %4506, %4333
  %4514 = fadd fast float %4506, %4333
  %4515 = fmul fast float %4514, %4342
  %4516 = fsub fast float %4515, %4342
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = and i32 %4372, 128
  %4519 = icmp ne i32 %4518, 0
  %4520 = select i1 %4519, float %4517, float %4513
  %4521 = fmul fast float %4520, %4512
  %4522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4523 = extractvalue %dx.types.CBufRet.f32 %4522, 0
  %4524 = fcmp fast ugt float %4521, %4523
  br i1 %4524, label %4525, label %4421

; <label>:4525                                    ; preds = %4444
  %4526 = select i1 %4484, float %4521, float 0.000000e+00
  %4527 = fadd fast float %4526, %4294
  %4528 = call float @dx.op.unary.f32(i32 7, float %4527)  ; Saturate(value)
  br i1 %4484, label %4421, label %4529

; <label>:4529                                    ; preds = %4525
  %4530 = and i32 %4372, 4
  %4531 = and i32 %4372, 8
  %4532 = add i32 %4328, 0
  %4533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4532, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4534 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4535 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4533, %dx.types.Handle %4534, float %4462, float %4465, float undef, float undef, i32 0, i32 0, i32 undef, float %4467, float %4469, float undef, float %4471, float %4473, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4536 = extractvalue %dx.types.ResRet.f32 %4535, 0
  %4537 = extractvalue %dx.types.ResRet.f32 %4535, 1
  %4538 = extractvalue %dx.types.ResRet.f32 %4535, 2
  %4539 = extractvalue %dx.types.ResRet.f32 %4535, 3
  %4540 = bitcast float %4354 to i32
  %4541 = and i32 %4540, 255
  %4542 = uitofp i32 %4541 to float
  %4543 = lshr i32 %4540, 8
  %4544 = and i32 %4543, 255
  %4545 = uitofp i32 %4544 to float
  %4546 = fmul fast float %4539, %4542
  %4547 = fadd fast float %4546, %4545
  %4548 = fmul fast float %4547, 0x3F70101000000000
  %4549 = add i32 %4329, 0
  %4550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4549, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4551 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4550, %dx.types.Handle %4534, float %4462, float %4465, float undef, float undef, i32 0, i32 0, i32 undef, float %4467, float %4469, float undef, float %4471, float %4473, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4552 = extractvalue %dx.types.ResRet.f32 %4551, 0
  %4553 = extractvalue %dx.types.ResRet.f32 %4551, 1
  %4554 = extractvalue %dx.types.ResRet.f32 %4551, 2
  %4555 = extractvalue %dx.types.ResRet.f32 %4551, 3
  %4556 = bitcast float %4348 to i32
  %4557 = and i32 %4556, 255
  %4558 = uitofp i32 %4557 to float
  %4559 = lshr i32 %4556, 8
  %4560 = and i32 %4559, 255
  %4561 = uitofp i32 %4560 to float
  %4562 = lshr i32 %4556, 16
  %4563 = and i32 %4562, 255
  %4564 = uitofp i32 %4563 to float
  %4565 = fmul fast float %4564, 0x3F70101000000000
  %4566 = fmul fast float %4552, %4558
  %4567 = fadd fast float %4566, %4561
  %4568 = fmul fast float %4567, 0x3F70101000000000
  %4569 = fadd fast float %4553, -5.000000e-01
  %4570 = fadd fast float %4555, -5.000000e-01
  %4571 = fmul fast float %4569, %4565
  %4572 = fmul fast float %4570, %4565
  %4573 = fadd fast float %4571, 5.000000e-01
  %4574 = fadd fast float %4572, 5.000000e-01
  %4575 = fmul fast float %4536, %4357
  %4576 = fmul fast float %4537, %4358
  %4577 = fmul fast float %4538, %4359
  %4578 = fmul fast float %4573, 2.000000e+00
  %4579 = fadd fast float %4578, -1.000000e+00
  %4580 = fmul fast float %4574, 2.000000e+00
  %4581 = fadd fast float %4580, -1.000000e+00
  %4582 = fadd fast float %4579, %4581
  %4583 = fmul fast float %4582, 5.000000e-01
  %4584 = fsub fast float %4579, %4581
  %4585 = fmul fast float %4584, 5.000000e-01
  %4586 = call float @dx.op.unary.f32(i32 6, float %4583)  ; FAbs(value)
  %4587 = fsub fast float 1.000000e+00, %4586
  %4588 = call float @dx.op.unary.f32(i32 6, float %4585)  ; FAbs(value)
  %4589 = fsub fast float %4587, %4588
  %4590 = call float @dx.op.dot3.f32(i32 55, float %4583, float %4585, float %4589, float %4583, float %4585, float %4589)  ; Dot3(ax,ay,az,bx,by,bz)
  %4591 = call float @dx.op.unary.f32(i32 25, float %4590)  ; Rsqrt(value)
  %4592 = fmul fast float %4583, %4591
  %4593 = fmul fast float %4585, %4591
  %4594 = fmul fast float %4591, %4589
  %4595 = fmul fast float %4594, %4322
  %4596 = fmul fast float %4594, %4323
  %4597 = fmul fast float %4594, %4324
  %4598 = fmul fast float %4592, %4345
  %4599 = fmul fast float %4592, %4346
  %4600 = fmul fast float %4592, %4347
  %4601 = fadd fast float %4598, %4595
  %4602 = fadd fast float %4599, %4596
  %4603 = fadd fast float %4600, %4597
  %4604 = fmul fast float %4593, %4351
  %4605 = fmul fast float %4593, %4352
  %4606 = fmul fast float %4593, %4353
  %4607 = fadd fast float %4601, %4604
  %4608 = fadd fast float %4602, %4605
  %4609 = fadd fast float %4603, %4606
  %4610 = call float @dx.op.dot3.f32(i32 55, float %4607, float %4608, float %4609, float %4607, float %4608, float %4609)  ; Dot3(ax,ay,az,bx,by,bz)
  %4611 = call float @dx.op.unary.f32(i32 25, float %4610)  ; Rsqrt(value)
  %4612 = fmul fast float %4607, %4611
  %4613 = fmul fast float %4608, %4611
  %4614 = fmul fast float %4609, %4611
  %4615 = icmp ne i32 %4531, 0
  %4616 = select i1 %4615, float 1.000000e+00, float 0.000000e+00
  %4617 = fmul fast float %4521, %4616
  %4618 = and i32 %4372, 1
  %4619 = icmp eq i32 %4618, 0
  br i1 %4619, label %4620, label %4624

; <label>:4620                                    ; preds = %4529
  %4621 = fsub fast float %4612, %4305
  %4622 = fsub fast float %4613, %4306
  %4623 = fsub fast float %4614, %4307
  br label %4624

; <label>:4624                                    ; preds = %4620, %4529
  %4625 = phi float [ %4621, %4620 ], [ %4612, %4529 ]
  %4626 = phi float [ %4622, %4620 ], [ %4613, %4529 ]
  %4627 = phi float [ %4623, %4620 ], [ %4614, %4529 ]
  %4628 = fmul float %4627, %4617
  %4629 = fmul float %4626, %4617
  %4630 = fmul float %4625, %4617
  %4631 = fadd fast float %4630, %4305
  %4632 = fadd fast float %4629, %4306
  %4633 = fadd fast float %4628, %4307
  %4634 = icmp ne i32 %4530, 0
  %4635 = select i1 %4634, float 1.000000e+00, float 0.000000e+00
  %4636 = fmul fast float %4521, %4635
  %4637 = fsub fast float %4575, %4312
  %4638 = fsub fast float %4576, %4313
  %4639 = fsub fast float %4577, %4314
  %4640 = fmul fast float %4637, %4636
  %4641 = fmul fast float %4638, %4636
  %4642 = fmul fast float %4639, %4636
  %4643 = fadd fast float %4640, %4312
  %4644 = fadd fast float %4641, %4313
  %4645 = fadd fast float %4642, %4314
  %4646 = fsub fast float %4548, %4311
  %4647 = fmul fast float %4646, %4636
  %4648 = fadd fast float %4647, %4311
  %4649 = fmul fast float %4636, %4301
  %4650 = fsub fast float %4301, %4649
  %4651 = fmul fast float %4636, %4300
  %4652 = fsub fast float %4300, %4651
  %4653 = bitcast float %4366 to i32
  %4654 = fadd fast float %4521, %4310
  %4655 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4656 = fsub fast float %4568, %4309
  %4657 = fmul fast float %4656, %4617
  %4658 = fadd fast float %4657, %4309
  %4659 = fsub fast float %4554, %4308
  %4660 = fmul fast float %4659, %4617
  %4661 = fadd fast float %4660, %4308
  br i1 %4619, label %4670, label %4662

; <label>:4662                                    ; preds = %4624
  %4663 = and i32 %4372, 32768
  %4664 = icmp eq i32 %4663, 0
  br i1 %4664, label %4680, label %4665

; <label>:4665                                    ; preds = %4662
  %4666 = fmul fast float %4617, 1.270000e+02
  %4667 = fadd fast float %4666, %4297
  %4668 = fadd fast float %4666, %4298
  %4669 = fadd fast float %4666, %4299
  br label %4680

; <label>:4670                                    ; preds = %4624
  %4671 = fsub fast float 1.270000e+02, %4297
  %4672 = fsub fast float 1.270000e+02, %4298
  %4673 = fsub fast float 1.270000e+02, %4299
  %4674 = fmul fast float %4617, %4671
  %4675 = fmul fast float %4617, %4672
  %4676 = fmul fast float %4617, %4673
  %4677 = fadd fast float %4674, %4297
  %4678 = fadd fast float %4675, %4298
  %4679 = fadd fast float %4676, %4299
  br label %4680

; <label>:4680                                    ; preds = %4670, %4665, %4662
  %4681 = phi float [ %4667, %4665 ], [ %4297, %4662 ], [ %4677, %4670 ]
  %4682 = phi float [ %4668, %4665 ], [ %4298, %4662 ], [ %4678, %4670 ]
  %4683 = phi float [ %4669, %4665 ], [ %4299, %4662 ], [ %4679, %4670 ]
  %4684 = call float @dx.op.dot3.f32(i32 55, float %4575, float %4576, float %4577, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4686 = extractvalue %dx.types.CBufRet.f32 %4685, 0
  %4687 = extractvalue %dx.types.CBufRet.f32 %4685, 1
  %4688 = fmul fast float %4687, %4684
  %4689 = fadd fast float %4688, %4686
  %4690 = call float @dx.op.unary.f32(i32 7, float %4689)  ; Saturate(value)
  %4691 = bitcast float %4360 to i32
  %4692 = and i32 %4691, 65535
  %4693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4692)  ; LegacyF16ToF32(value)
  %4694 = lshr i32 %4691, 16
  %4695 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4694)  ; LegacyF16ToF32(value)
  %4696 = fcmp fast oge float %4693, 0.000000e+00
  %4697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4698 = extractvalue %dx.types.CBufRet.f32 %4697, 0
  %4699 = select i1 %4696, float %4693, float %4698
  %4700 = fadd fast float %4699, %4695
  %4701 = fsub fast float %4690, %4296
  %4702 = fmul fast float %4701, %4521
  %4703 = fadd fast float %4702, %4296
  %4704 = fmul fast float %4700, %4521
  %4705 = call float @dx.op.binary.f32(i32 35, float %4295, float %4704)  ; FMax(a,b)
  %4706 = and i32 %4372, 16
  %4707 = icmp eq i32 %4706, 0
  br i1 %4707, label %4729, label %4708

; <label>:4708                                    ; preds = %4680
  %4709 = add i32 %4363, 0
  %4710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4709, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4711 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4710, %dx.types.Handle %4534, float %4462, float %4465, float undef, float undef, i32 0, i32 0, i32 undef, float %4467, float %4469, float undef, float %4471, float %4473, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4712 = extractvalue %dx.types.ResRet.f32 %4711, 0
  %4713 = extractvalue %dx.types.ResRet.f32 %4711, 1
  %4714 = extractvalue %dx.types.ResRet.f32 %4711, 2
  %4715 = and i32 %4653, 65535
  %4716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4715)  ; LegacyF16ToF32(value)
  %4717 = fmul fast float %4712, %4357
  %4718 = fmul fast float %4713, %4358
  %4719 = fmul fast float %4714, %4359
  %4720 = and i32 %4372, 16384
  %4721 = icmp ne i32 %4720, 0
  %4722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4723 = extractvalue %dx.types.CBufRet.f32 %4722, 0
  %4724 = select i1 %4721, float %4723, float 1.000000e+00
  %4725 = fmul fast float %4724, %4716
  %4726 = fmul fast float %4717, %4725
  %4727 = fmul fast float %4718, %4725
  %4728 = fmul fast float %4719, %4725
  br label %4729

; <label>:4729                                    ; preds = %4708, %4680
  %4730 = phi float [ %4726, %4708 ], [ 0.000000e+00, %4680 ]
  %4731 = phi float [ %4727, %4708 ], [ 0.000000e+00, %4680 ]
  %4732 = phi float [ %4728, %4708 ], [ 0.000000e+00, %4680 ]
  %4733 = fsub fast float %4730, %4302
  %4734 = fsub fast float %4731, %4303
  %4735 = fsub fast float %4732, %4304
  %4736 = fmul fast float %4733, %4521
  %4737 = fmul fast float %4734, %4521
  %4738 = fmul fast float %4735, %4521
  %4739 = fadd fast float %4736, %4302
  %4740 = fadd fast float %4737, %4303
  %4741 = fadd fast float %4738, %4304
  br label %4421

; <label>:4742                                    ; preds = %4421
  br label %4743

; <label>:4743                                    ; preds = %4742, %4238
  %4744 = phi float [ 0.000000e+00, %4238 ], [ %4422, %4742 ]
  %4745 = phi float [ %4207, %4238 ], [ %4423, %4742 ]
  %4746 = phi float [ %4205, %4238 ], [ %4424, %4742 ]
  %4747 = phi float [ %4195, %4238 ], [ %4425, %4742 ]
  %4748 = phi float [ %4196, %4238 ], [ %4426, %4742 ]
  %4749 = phi float [ %4197, %4238 ], [ %4427, %4742 ]
  %4750 = phi float [ 0.000000e+00, %4238 ], [ %4428, %4742 ]
  %4751 = phi float [ 0.000000e+00, %4238 ], [ %4429, %4742 ]
  %4752 = phi float [ %4192, %4238 ], [ %4430, %4742 ]
  %4753 = phi float [ %4193, %4238 ], [ %4431, %4742 ]
  %4754 = phi float [ %4194, %4238 ], [ %4432, %4742 ]
  %4755 = phi float [ %4233, %4238 ], [ %4433, %4742 ]
  %4756 = phi float [ %4234, %4238 ], [ %4434, %4742 ]
  %4757 = phi float [ %4235, %4238 ], [ %4435, %4742 ]
  %4758 = phi float [ %4203, %4238 ], [ %4436, %4742 ]
  %4759 = phi float [ %4202, %4238 ], [ %4437, %4742 ]
  %4760 = phi float [ 0.000000e+00, %4238 ], [ %4438, %4742 ]
  %4761 = phi float [ %4201, %4238 ], [ %4439, %4742 ]
  %4762 = phi float [ %4198, %4238 ], [ %4440, %4742 ]
  %4763 = phi float [ %4199, %4238 ], [ %4441, %4742 ]
  %4764 = phi float [ %4200, %4238 ], [ %4442, %4742 ]
  %4765 = call float @dx.op.dot3.f32(i32 55, float %4755, float %4756, float %4757, float %4755, float %4756, float %4757)  ; Dot3(ax,ay,az,bx,by,bz)
  %4766 = call float @dx.op.unary.f32(i32 25, float %4765)  ; Rsqrt(value)
  %4767 = fmul fast float %4766, %4755
  %4768 = fmul fast float %4766, %4756
  %4769 = fmul fast float %4766, %4757
  %4770 = fadd fast float %4760, %1192
  %4771 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4772 = call float @dx.op.dot3.f32(i32 55, float %4767, float %4768, float %4769, float %4767, float %4768, float %4769)  ; Dot3(ax,ay,az,bx,by,bz)
  %4773 = call float @dx.op.unary.f32(i32 25, float %4772)  ; Rsqrt(value)
  %4774 = fmul fast float %4773, %4767
  %4775 = fmul fast float %4773, %4768
  %4776 = fmul fast float %4773, %4769
  br label %4777

; <label>:4777                                    ; preds = %4743, %4189
  %4778 = phi float [ %4774, %4743 ], [ %4233, %4189 ]
  %4779 = phi float [ %4775, %4743 ], [ %4234, %4189 ]
  %4780 = phi float [ %4776, %4743 ], [ %4235, %4189 ]
  %4781 = phi float [ %4752, %4743 ], [ %4192, %4189 ]
  %4782 = phi float [ %4753, %4743 ], [ %4193, %4189 ]
  %4783 = phi float [ %4754, %4743 ], [ %4194, %4189 ]
  %4784 = phi float [ %4747, %4743 ], [ %4195, %4189 ]
  %4785 = phi float [ %4748, %4743 ], [ %4196, %4189 ]
  %4786 = phi float [ %4749, %4743 ], [ %4197, %4189 ]
  %4787 = phi float [ %4762, %4743 ], [ %4198, %4189 ]
  %4788 = phi float [ %4763, %4743 ], [ %4199, %4189 ]
  %4789 = phi float [ %4764, %4743 ], [ %4200, %4189 ]
  %4790 = phi float [ %4761, %4743 ], [ %4201, %4189 ]
  %4791 = phi float [ %4771, %4743 ], [ %1192, %4189 ]
  %4792 = phi float [ %4759, %4743 ], [ %4202, %4189 ]
  %4793 = phi float [ %4758, %4743 ], [ %4203, %4189 ]
  %4794 = phi float [ %4751, %4743 ], [ 0.000000e+00, %4189 ]
  %4795 = phi float [ %4750, %4743 ], [ 0.000000e+00, %4189 ]
  %4796 = phi float [ %4744, %4743 ], [ 0.000000e+00, %4189 ]
  %4797 = phi float [ %4745, %4743 ], [ %4207, %4189 ]
  %4798 = phi float [ %4746, %4743 ], [ %4205, %4189 ]
  %4799 = fadd fast float %4790, 0xBFB99999A0000000
  %4800 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4801 = fmul fast float %4800, 0x3FF1C71C80000000
  %4802 = call float @dx.op.binary.f32(i32 36, float %4790, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4803 = fsub fast float 1.000000e+00, %4801
  %4804 = call float @dx.op.unary.f32(i32 7, float %4803)  ; Saturate(value)
  %4805 = fmul fast float %4804, %4787
  %4806 = fmul fast float %4804, %4788
  %4807 = fmul fast float %4804, %4789
  %4808 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4809 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4810 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4811 = fmul fast float %4801, %4787
  %4812 = fmul fast float %4801, %4788
  %4813 = fmul fast float %4801, %4789
  %4814 = fadd fast float %4811, %4802
  %4815 = fadd fast float %4812, %4802
  %4816 = fadd fast float %4813, %4802
  %4817 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4818 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  %4819 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  %4820 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  %4821 = call float @dx.op.binary.f32(i32 36, float %4784, float 1.270000e+02)  ; FMin(a,b)
  %4822 = call float @dx.op.binary.f32(i32 36, float %4785, float 1.270000e+02)  ; FMin(a,b)
  %4823 = call float @dx.op.binary.f32(i32 36, float %4786, float 1.270000e+02)  ; FMin(a,b)
  %4824 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4825 = extractvalue %dx.types.CBufRet.i32 %4824, 3
  %4826 = and i32 %4825, 8
  %4827 = icmp ne i32 %4826, 0
  %4828 = call float @dx.op.binary.f32(i32 35, float %4808, float %4787)  ; FMax(a,b)
  %4829 = call float @dx.op.binary.f32(i32 35, float %4809, float %4787)  ; FMax(a,b)
  %4830 = call float @dx.op.binary.f32(i32 35, float %4810, float %4787)  ; FMax(a,b)
  %4831 = call float @dx.op.dot3.f32(i32 55, float %4808, float %4809, float %4810, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4832 = select i1 %206, float %4787, float %4808
  %4833 = select i1 %206, float %4831, float %4809
  %4834 = select i1 %206, float 1.000000e+00, float %4810
  %4835 = select i1 %4827, float %4828, float %4832
  %4836 = select i1 %4827, float %4829, float %4833
  %4837 = select i1 %4827, float %4830, float %4834
  %4838 = and i32 %182, 3
  %4839 = select i1 %176, i32 %4838, i32 0
  %4840 = icmp eq i32 %4839, 1
  br i1 %4840, label %4841, label %4917

; <label>:4841                                    ; preds = %4777
  %4842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4843 = extractvalue %dx.types.CBufRet.f32 %4842, 0
  %4844 = extractvalue %dx.types.CBufRet.f32 %4842, 1
  %4845 = fadd fast float %4843, %145
  %4846 = fadd fast float %4844, %146
  %4847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.f32 %4847, 0
  %4849 = extractvalue %dx.types.CBufRet.f32 %4847, 1
  %4850 = fsub fast float %4845, %4848
  %4851 = fsub fast float %4846, %4849
  %4852 = fmul fast float %4850, %4850
  %4853 = fmul fast float %4851, %4851
  %4854 = fadd fast float %4852, %4853
  %4855 = call float @dx.op.unary.f32(i32 24, float %4854)  ; Sqrt(value)
  %4856 = extractvalue %dx.types.CBufRet.f32 %4847, 2
  %4857 = fcmp fast olt float %4855, %4856
  br i1 %4857, label %4858, label %4911

; <label>:4858                                    ; preds = %4841
  %4859 = extractvalue %dx.types.CBufRet.f32 %4842, 2
  %4860 = fadd fast float %4859, %147
  %4861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4862 = extractvalue %dx.types.CBufRet.f32 %4861, 0
  %4863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4864 = extractvalue %dx.types.CBufRet.f32 %4863, 0
  %4865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4866 = extractvalue %dx.types.CBufRet.f32 %4865, 0
  %4867 = extractvalue %dx.types.CBufRet.f32 %4861, 1
  %4868 = extractvalue %dx.types.CBufRet.f32 %4863, 1
  %4869 = extractvalue %dx.types.CBufRet.f32 %4865, 1
  %4870 = extractvalue %dx.types.CBufRet.f32 %4861, 3
  %4871 = extractvalue %dx.types.CBufRet.f32 %4863, 3
  %4872 = extractvalue %dx.types.CBufRet.f32 %4865, 3
  %4873 = fadd fast float %4870, %4845
  %4874 = fadd fast float %4871, %4846
  %4875 = fadd fast float %4860, %4872
  %4876 = fmul fast float %4873, %4862
  %4877 = call float @dx.op.tertiary.f32(i32 46, float %4874, float %4864, float %4876)  ; FMad(a,b,c)
  %4878 = call float @dx.op.tertiary.f32(i32 46, float %4875, float %4866, float %4877)  ; FMad(a,b,c)
  %4879 = fmul fast float %4873, %4867
  %4880 = call float @dx.op.tertiary.f32(i32 46, float %4874, float %4868, float %4879)  ; FMad(a,b,c)
  %4881 = call float @dx.op.tertiary.f32(i32 46, float %4875, float %4869, float %4880)  ; FMad(a,b,c)
  %4882 = fsub fast float %4878, %4870
  %4883 = fsub fast float %4881, %4871
  %4884 = fsub fast float %4882, %4848
  %4885 = fadd fast float %4884, %4856
  %4886 = fsub fast float %4883, %4849
  %4887 = fadd fast float %4886, %4856
  %4888 = extractvalue %dx.types.CBufRet.f32 %4847, 3
  %4889 = fmul fast float %4885, %4888
  %4890 = fmul fast float %4887, %4888
  %4891 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4892 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4893 = fsub fast float 1.000000e+00, %4891
  %4894 = fsub fast float 1.000000e+00, %4892
  %4895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %4893, float %4894, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4896 = extractvalue %dx.types.ResRet.f32 %4895, 0
  %4897 = fcmp fast ugt float %4896, 0.000000e+00
  br i1 %4897, label %4898, label %4911

; <label>:4898                                    ; preds = %4858
  %4899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4900 = extractvalue %dx.types.CBufRet.f32 %4899, 2
  %4901 = fmul fast float %4900, %4896
  %4902 = extractvalue %dx.types.CBufRet.f32 %4899, 3
  %4903 = fadd fast float %4902, %4901
  %4904 = extractvalue %dx.types.CBufRet.f32 %4865, 2
  %4905 = fadd fast float %4903, %4872
  %4906 = fmul fast float %4878, %4866
  %4907 = call float @dx.op.tertiary.f32(i32 46, float %4881, float %4869, float %4906)  ; FMad(a,b,c)
  %4908 = call float @dx.op.tertiary.f32(i32 46, float %4905, float %4904, float %4907)  ; FMad(a,b,c)
  %4909 = fsub fast float %4908, %4872
  %4910 = fsub fast float %4909, %4859
  br label %4911

; <label>:4911                                    ; preds = %4898, %4858, %4841
  %4912 = phi i1 [ true, %4898 ], [ false, %4858 ], [ false, %4841 ]
  %4913 = phi float [ %4910, %4898 ], [ -1.310720e+05, %4858 ], [ -1.310720e+05, %4841 ]
  %4914 = fsub fast float %4913, %147
  %4915 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4916 = select i1 %4912, float %4915, float 1.000000e+00
  br label %4917

; <label>:4917                                    ; preds = %4911, %4777
  %4918 = phi float [ %4916, %4911 ], [ 0.000000e+00, %4777 ]
  %4919 = icmp eq i32 %4839, 3
  %4920 = select i1 %4919, float 1.000000e+00, float %4918
  %4921 = call float @dx.op.binary.f32(i32 35, float %4796, float %4920)  ; FMax(a,b)
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4923 = fcmp fast une float %4922, 0.000000e+00
  %4924 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %4925 = call float @dx.op.unary.f32(i32 25, float %4924)  ; Rsqrt(value)
  br i1 %4923, label %4933, label %4926

; <label>:4926                                    ; preds = %4917
  %4927 = fmul fast float %4925, %145
  %4928 = fmul fast float %4925, %146
  %4929 = fmul fast float %4925, %147
  %4930 = fsub fast float -0.000000e+00, %4927
  %4931 = fsub fast float -0.000000e+00, %4928
  %4932 = fsub fast float -0.000000e+00, %4929
  br label %5101

; <label>:4933                                    ; preds = %4917
  %4934 = fmul fast float %145, %4925
  %4935 = fsub fast float -0.000000e+00, %4934
  %4936 = fmul fast float %146, %4925
  %4937 = fsub fast float -0.000000e+00, %4936
  %4938 = fmul fast float %147, %4925
  %4939 = fsub fast float -0.000000e+00, %4938
  %4940 = call float @dx.op.dot3.f32(i32 55, float %4935, float %4937, float %4939, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %4941 = fmul fast float %4922, 2.500000e+00
  %4942 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4943 = fmul fast float %4922, 0x4013FFFFE0000000
  %4944 = fadd fast float %4943, 0xBFFFFFFFE0000000
  %4945 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4946 = fmul fast float %4922, 0x4004000020000000
  %4947 = fadd fast float %4946, 0xBFF8000040000000
  %4948 = call float @dx.op.unary.f32(i32 7, float %4947)  ; Saturate(value)
  %4949 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4950 = fmul fast float %4799, 1.000000e+01
  %4951 = call float @dx.op.unary.f32(i32 7, float %4950)  ; Saturate(value)
  %4952 = fmul fast float %4951, 2.000000e+00
  %4953 = fsub fast float 3.000000e+00, %4952
  %4954 = fmul fast float %4951, %4951
  %4955 = fmul fast float %4954, %4953
  %4956 = fsub fast float 1.000000e+00, %4955
  %4957 = fsub fast float 0x3FE3333340000000, %4820
  %4958 = fmul fast float %4957, 0x400AAAAAA0000000
  %4959 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4960 = fmul fast float %4956, %4959
  %4961 = fmul fast float %4835, 0x3FEA2B8620000000
  %4962 = fmul fast float %4836, 0x3FEA2B8620000000
  %4963 = fmul fast float %4837, 0x3FEA2B8620000000
  %4964 = fadd fast float %4961, 0x3FC81DFBA0000000
  %4965 = fmul fast float %4964, %4835
  %4966 = fadd fast float %4965, 0x3F910E6020000000
  %4967 = fadd fast float %4962, 0x3FC81DFBA0000000
  %4968 = fmul fast float %4967, %4836
  %4969 = fadd fast float %4968, 0x3F910E6020000000
  %4970 = fadd fast float %4963, 0x3FC81DFBA0000000
  %4971 = fmul fast float %4970, %4837
  %4972 = fadd fast float %4971, 0x3F910E6020000000
  %4973 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4974 = call float @dx.op.unary.f32(i32 7, float %4969)  ; Saturate(value)
  %4975 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4976 = fsub fast float %4973, %4835
  %4977 = fsub fast float %4974, %4836
  %4978 = fsub fast float %4975, %4837
  %4979 = fmul fast float %4976, %4949
  %4980 = fmul fast float %4979, %4960
  %4981 = fmul fast float %4977, %4949
  %4982 = fmul fast float %4981, %4960
  %4983 = fmul fast float %4978, %4949
  %4984 = fmul fast float %4983, %4960
  %4985 = fadd fast float %4980, %4835
  %4986 = fadd fast float %4982, %4836
  %4987 = fadd fast float %4984, %4837
  %4988 = fmul fast float %4793, %4793
  %4989 = fmul fast float %4988, %4988
  %4990 = fadd fast float %4945, 1.000000e+00
  %4991 = fsub fast float %4990, %4960
  %4992 = call float @dx.op.unary.f32(i32 7, float %4991)  ; Saturate(value)
  %4993 = call float @dx.op.dot3.f32(i32 55, float %89, float %90, float %91, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4994 = call float @dx.op.unary.f32(i32 7, float %4993)  ; Saturate(value)
  %4995 = fsub fast float 1.000000e+00, %4989
  %4996 = call float @dx.op.binary.f32(i32 36, float %4992, float %4995)  ; FMin(a,b)
  %4997 = call float @dx.op.unary.f32(i32 7, float %4948)  ; Saturate(value)
  %4998 = call float @dx.op.binary.f32(i32 35, float %4996, float %4997)  ; FMax(a,b)
  %4999 = fadd fast float %4994, 0xBFE4CCCCC0000000
  %5000 = fmul fast float %4999, 0x4006DB6DA0000000
  %5001 = call float @dx.op.unary.f32(i32 7, float %5000)  ; Saturate(value)
  %5002 = fmul fast float %5001, 2.000000e+00
  %5003 = fsub fast float 3.000000e+00, %5002
  %5004 = bitcast float %4817 to i32
  %5005 = ashr i32 %5004, 1
  %5006 = add nsw i32 %5005, 532487669
  %5007 = bitcast i32 %5006 to float
  %5008 = fsub fast float 1.000000e+00, %5007
  %5009 = bitcast float %5008 to i32
  %5010 = sub nsw i32 2129859010, %5009
  %5011 = bitcast i32 %5010 to float
  %5012 = fmul fast float %5011, 2.000000e+00
  %5013 = bitcast float %4818 to i32
  %5014 = ashr i32 %5013, 1
  %5015 = add nsw i32 %5014, 532487669
  %5016 = bitcast i32 %5015 to float
  %5017 = fsub fast float 1.000000e+00, %5016
  %5018 = bitcast float %5017 to i32
  %5019 = sub nsw i32 2129859010, %5018
  %5020 = bitcast i32 %5019 to float
  %5021 = fmul fast float %5020, 2.000000e+00
  %5022 = bitcast float %4819 to i32
  %5023 = ashr i32 %5022, 1
  %5024 = add nsw i32 %5023, 532487669
  %5025 = bitcast i32 %5024 to float
  %5026 = fsub fast float 1.000000e+00, %5025
  %5027 = bitcast float %5026 to i32
  %5028 = sub nsw i32 2129859010, %5027
  %5029 = bitcast i32 %5028 to float
  %5030 = fmul fast float %5029, 2.000000e+00
  %5031 = fsub fast float 0x4002A9FBE0000000, %5012
  %5032 = fadd fast float %5012, 0x3FD54FDF00000000
  %5033 = bitcast float %5032 to i32
  %5034 = sub nsw i32 2129859010, %5033
  %5035 = bitcast i32 %5034 to float
  %5036 = fmul fast float %5035, %5031
  %5037 = fmul fast float %5036, %5036
  %5038 = fsub fast float 0x4002A9FBE0000000, %5021
  %5039 = fadd fast float %5021, 0x3FD54FDF00000000
  %5040 = bitcast float %5039 to i32
  %5041 = sub nsw i32 2129859010, %5040
  %5042 = bitcast i32 %5041 to float
  %5043 = fmul fast float %5042, %5038
  %5044 = fmul fast float %5043, %5043
  %5045 = fsub fast float 0x4002A9FBE0000000, %5030
  %5046 = fadd fast float %5030, 0x3FD54FDF00000000
  %5047 = bitcast float %5046 to i32
  %5048 = sub nsw i32 2129859010, %5047
  %5049 = bitcast i32 %5048 to float
  %5050 = fmul fast float %5049, %5045
  %5051 = fmul fast float %5050, %5050
  %5052 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5037)  ; FMax(a,b)
  %5053 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5044)  ; FMax(a,b)
  %5054 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5051)  ; FMax(a,b)
  %5055 = fsub fast float 1.000000e+00, %4940
  %5056 = fadd fast float %5055, %4956
  %5057 = call float @dx.op.unary.f32(i32 7, float %5056)  ; Saturate(value)
  %5058 = fsub fast float 1.000000e+00, %4920
  %5059 = fmul fast float %4998, %5058
  %5060 = fmul fast float %5001, %5001
  %5061 = fmul fast float %5060, %5059
  %5062 = fmul fast float %5061, %5003
  %5063 = fmul fast float %5058, 0xBFE99999A0000000
  %5064 = fmul fast float %5063, %4949
  %5065 = fmul fast float %5064, %4960
  %5066 = fadd fast float %5065, 1.000000e+00
  %5067 = fadd fast float %4820, -1.000000e+00
  %5068 = fmul fast float %5066, %5067
  %5069 = fadd fast float %5068, 1.000000e+00
  %5070 = fsub fast float %5052, %4817
  %5071 = fsub fast float %5053, %4818
  %5072 = fsub fast float %5054, %4819
  %5073 = fmul fast float %5062, %5070
  %5074 = fmul fast float %5062, %5071
  %5075 = fmul fast float %5062, %5072
  %5076 = fadd fast float %5073, %4817
  %5077 = fadd fast float %5074, %4818
  %5078 = fadd fast float %5075, %4819
  %5079 = fsub fast float %89, %4778
  %5080 = fsub fast float %90, %4779
  %5081 = fsub fast float %91, %4780
  %5082 = fmul fast float %5062, %5079
  %5083 = fmul fast float %5062, %5080
  %5084 = fmul fast float %5062, %5081
  %5085 = fadd fast float %5082, %4778
  %5086 = fadd fast float %5083, %4779
  %5087 = fadd fast float %5084, %4780
  %5088 = fmul fast float %5062, %5057
  %5089 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5090 = fsub fast float 1.000000e+00, %5089
  %5091 = fmul fast float %5088, %5090
  %5092 = fadd fast float %5091, %5089
  %5093 = fsub fast float 1.000000e+00, %4793
  %5094 = fmul fast float %5062, %5093
  %5095 = fadd fast float %5094, %4793
  %5096 = call float @dx.op.dot3.f32(i32 55, float %5085, float %5086, float %5087, float %5085, float %5086, float %5087)  ; Dot3(ax,ay,az,bx,by,bz)
  %5097 = call float @dx.op.unary.f32(i32 25, float %5096)  ; Rsqrt(value)
  %5098 = fmul fast float %5085, %5097
  %5099 = fmul fast float %5086, %5097
  %5100 = fmul fast float %5087, %5097
  br label %5101

; <label>:5101                                    ; preds = %4933, %4926
  %5102 = phi float [ %4932, %4926 ], [ %4939, %4933 ]
  %5103 = phi float [ %4931, %4926 ], [ %4937, %4933 ]
  %5104 = phi float [ %4930, %4926 ], [ %4935, %4933 ]
  %5105 = phi float [ %4929, %4926 ], [ %4938, %4933 ]
  %5106 = phi float [ %4928, %4926 ], [ %4936, %4933 ]
  %5107 = phi float [ %4927, %4926 ], [ %4934, %4933 ]
  %5108 = phi float [ %4835, %4926 ], [ %4985, %4933 ]
  %5109 = phi float [ %4836, %4926 ], [ %4986, %4933 ]
  %5110 = phi float [ %4837, %4926 ], [ %4987, %4933 ]
  %5111 = phi float [ %4817, %4926 ], [ %5076, %4933 ]
  %5112 = phi float [ %4818, %4926 ], [ %5077, %4933 ]
  %5113 = phi float [ %4819, %4926 ], [ %5078, %4933 ]
  %5114 = phi float [ %4778, %4926 ], [ %5098, %4933 ]
  %5115 = phi float [ %4779, %4926 ], [ %5099, %4933 ]
  %5116 = phi float [ %4780, %4926 ], [ %5100, %4933 ]
  %5117 = phi float [ %4820, %4926 ], [ %5092, %4933 ]
  %5118 = phi float [ %4793, %4926 ], [ %5095, %4933 ]
  %5119 = select i1 %206, float 0.000000e+00, float %5113
  %5120 = call float @dx.op.dot3.f32(i32 55, float %5114, float %5115, float %5116, float %5104, float %5103, float %5102)  ; Dot3(ax,ay,az,bx,by,bz)
  %5121 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5122 = call float @dx.op.dot3.f32(i32 55, float %5107, float %5106, float %5105, float %5114, float %5115, float %5116)  ; Dot3(ax,ay,az,bx,by,bz)
  %5123 = fmul fast float %5122, 2.000000e+00
  %5124 = fmul fast float %5123, %5114
  %5125 = fmul fast float %5123, %5115
  %5126 = fmul fast float %5123, %5116
  %5127 = fsub fast float %5107, %5124
  %5128 = fsub fast float %5106, %5125
  %5129 = fsub fast float %5105, %5126
  %5130 = call float @dx.op.binary.f32(i32 36, float %5118, float 1.000000e+00)  ; FMin(a,b)
  %5131 = fsub fast float 1.000000e+00, %5118
  %5132 = bitcast float %5131 to i32
  %5133 = sub nsw i32 2129859010, %5132
  %5134 = bitcast i32 %5133 to float
  %5135 = fsub fast float 1.000000e+00, %53
  %5136 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %5137 = call float @dx.op.binary.f32(i32 35, float %5136, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5138 = fdiv fast float %5135, %5137
  %5139 = call float @dx.op.dot3.f32(i32 55, float %5114, float %5115, float %5116, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %5140 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5141 = fmul fast float %5140, 5.000000e-01
  %5142 = fadd fast float %5141, 5.000000e-01
  %5143 = fmul fast float %5142, %53
  %5144 = call float @dx.op.dot3.f32(i32 55, float %5114, float %5115, float %5116, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %5145 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5146 = fmul fast float %5145, %5138
  %5147 = fadd fast float %5143, %5146
  %5148 = fsub fast float 5.000000e-01, %5141
  %5149 = fmul fast float %5148, %5108
  %5150 = fmul fast float %5148, %5109
  %5151 = fmul fast float %5148, %5110
  %5152 = fadd fast float %5147, %5149
  %5153 = fadd fast float %5147, %5150
  %5154 = fadd fast float %5147, %5151
  %5155 = call float @dx.op.dot3.f32(i32 55, float %5127, float %5128, float %5129, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %5156 = call float @dx.op.unary.f32(i32 7, float %5155)  ; Saturate(value)
  %5157 = fmul fast float %5156, 5.000000e-01
  %5158 = fadd fast float %5157, 5.000000e-01
  %5159 = fmul fast float %5158, %53
  %5160 = call float @dx.op.dot3.f32(i32 55, float %5127, float %5128, float %5129, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %5161 = call float @dx.op.unary.f32(i32 7, float %5160)  ; Saturate(value)
  %5162 = fmul fast float %5161, %5138
  %5163 = fadd fast float %5159, %5162
  %5164 = fsub fast float 5.000000e-01, %5157
  %5165 = fmul fast float %5164, %5108
  %5166 = fmul fast float %5164, %5109
  %5167 = fmul fast float %5164, %5110
  %5168 = fadd fast float %5163, %5165
  %5169 = fadd fast float %5163, %5166
  %5170 = fadd fast float %5163, %5167
  %5171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5172 = extractvalue %dx.types.CBufRet.f32 %5171, 0
  %5173 = call float @dx.op.binary.f32(i32 36, float %5108, float %5172)  ; FMin(a,b)
  %5174 = fsub fast float 1.000000e+00, %5130
  %5175 = fmul fast float %5173, %5174
  %5176 = fsub fast float 1.000000e+00, %5175
  %5177 = bitcast float %5176 to i32
  %5178 = sub nsw i32 2129859010, %5177
  %5179 = bitcast i32 %5178 to float
  %5180 = call float @dx.op.binary.f32(i32 36, float %5109, float %5172)  ; FMin(a,b)
  %5181 = fmul fast float %5180, %5174
  %5182 = fsub fast float 1.000000e+00, %5181
  %5183 = bitcast float %5182 to i32
  %5184 = sub nsw i32 2129859010, %5183
  %5185 = bitcast i32 %5184 to float
  %5186 = call float @dx.op.binary.f32(i32 36, float %5110, float %5172)  ; FMin(a,b)
  %5187 = fmul fast float %5186, %5174
  %5188 = fsub fast float 1.000000e+00, %5187
  %5189 = bitcast float %5188 to i32
  %5190 = sub nsw i32 2129859010, %5189
  %5191 = bitcast i32 %5190 to float
  %5192 = fmul fast float %5130, %54
  %5193 = fmul fast float %5192, %5152
  %5194 = fmul fast float %5193, %5179
  %5195 = fmul fast float %5130, %55
  %5196 = fmul fast float %5195, %5153
  %5197 = fmul fast float %5196, %5185
  %5198 = fmul fast float %5130, %56
  %5199 = fmul fast float %5198, %5154
  %5200 = fmul fast float %5199, %5191
  %5201 = call float @dx.op.binary.f32(i32 36, float %5111, float %5172)  ; FMin(a,b)
  %5202 = fmul fast float %5201, %5174
  %5203 = fsub fast float 1.000000e+00, %5202
  %5204 = bitcast float %5203 to i32
  %5205 = sub nsw i32 2129859010, %5204
  %5206 = bitcast i32 %5205 to float
  %5207 = call float @dx.op.binary.f32(i32 36, float %5112, float %5172)  ; FMin(a,b)
  %5208 = fmul fast float %5207, %5174
  %5209 = fsub fast float 1.000000e+00, %5208
  %5210 = bitcast float %5209 to i32
  %5211 = sub nsw i32 2129859010, %5210
  %5212 = bitcast i32 %5211 to float
  %5213 = call float @dx.op.binary.f32(i32 36, float %5119, float %5172)  ; FMin(a,b)
  %5214 = fmul fast float %5213, %5174
  %5215 = fsub fast float 1.000000e+00, %5214
  %5216 = bitcast float %5215 to i32
  %5217 = sub nsw i32 2129859010, %5216
  %5218 = bitcast i32 %5217 to float
  %5219 = fmul fast float %5192, %5168
  %5220 = fmul fast float %5219, %5206
  %5221 = fmul fast float %5195, %5169
  %5222 = fmul fast float %5221, %5212
  %5223 = fmul fast float %5198, %5170
  %5224 = fmul fast float %5223, %5218
  %5225 = call float @dx.op.dot3.f32(i32 55, float %5194, float %5197, float %5200, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5226 = select i1 %206, float 0.000000e+00, float %5194
  %5227 = select i1 %206, float %5225, float %5197
  %5228 = select i1 %206, float 0.000000e+00, float %5200
  %5229 = call float @dx.op.dot3.f32(i32 55, float %5220, float %5222, float %5224, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5230 = select i1 %206, float 0.000000e+00, float %5220
  %5231 = select i1 %206, float %5229, float %5222
  %5232 = select i1 %206, float 0.000000e+00, float %5224
  %5233 = fmul fast float %4204, %4204
  %5234 = call float @dx.op.unary.f32(i32 7, float %5233)  ; Saturate(value)
  %5235 = fmul fast float %5121, 9.843750e-01
  %5236 = fmul fast float %5117, 9.843750e-01
  %5237 = fadd fast float %5235, 7.812500e-03
  %5238 = fadd fast float %5236, 7.812500e-03
  %5239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %5237, float %5238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5240 = extractvalue %dx.types.ResRet.f32 %5239, 0
  %5241 = extractvalue %dx.types.ResRet.f32 %5239, 1
  %5242 = extractvalue %dx.types.ResRet.f32 %5239, 2
  %5243 = extractvalue %dx.types.ResRet.f32 %5239, 3
  %5244 = fsub fast float 1.000000e+00, %5234
  %5245 = fsub fast float %5242, %5240
  %5246 = fsub fast float %5243, %5241
  %5247 = fmul fast float %5245, %5244
  %5248 = fmul fast float %5246, %5244
  %5249 = fadd fast float %5247, %5240
  %5250 = fadd fast float %5248, %5241
  %5251 = fmul fast float %5249, %5111
  %5252 = fmul fast float %5249, %5112
  %5253 = fmul fast float %5249, %5119
  %5254 = fadd fast float %5251, %5250
  %5255 = fadd fast float %5252, %5250
  %5256 = fadd fast float %5253, %5250
  %5257 = fcmp fast ogt float %4794, 0.000000e+00
  br i1 %5257, label %5258, label %5284

; <label>:5258                                    ; preds = %5101
  %5259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %4794, float %5121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5260 = extractvalue %dx.types.ResRet.f32 %5259, 0
  %5261 = extractvalue %dx.types.ResRet.f32 %5259, 1
  %5262 = extractvalue %dx.types.ResRet.f32 %5259, 2
  %5263 = fadd fast float %5260, -5.000000e-01
  %5264 = fadd fast float %5261, -5.000000e-01
  %5265 = fadd fast float %5262, -5.000000e-01
  %5266 = fsub fast float 1.000000e+00, %5111
  %5267 = fsub fast float 1.000000e+00, %5112
  %5268 = fsub fast float 1.000000e+00, %5119
  %5269 = fmul fast float %5111, 4.000000e+00
  %5270 = fmul fast float %5269, %5266
  %5271 = fmul fast float %5270, %5263
  %5272 = fmul fast float %5112, 4.000000e+00
  %5273 = fmul fast float %5272, %5267
  %5274 = fmul fast float %5273, %5264
  %5275 = fmul fast float %5119, 4.000000e+00
  %5276 = fmul fast float %5275, %5268
  %5277 = fmul fast float %5276, %5265
  %5278 = fadd fast float %5271, %5254
  %5279 = fadd fast float %5274, %5255
  %5280 = fadd fast float %5277, %5256
  %5281 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5282 = call float @dx.op.unary.f32(i32 7, float %5279)  ; Saturate(value)
  %5283 = call float @dx.op.unary.f32(i32 7, float %5280)  ; Saturate(value)
  br label %5284

; <label>:5284                                    ; preds = %5258, %5101
  %5285 = phi float [ %5281, %5258 ], [ %5254, %5101 ]
  %5286 = phi float [ %5282, %5258 ], [ %5255, %5101 ]
  %5287 = phi float [ %5283, %5258 ], [ %5256, %5101 ]
  %5288 = call float @dx.op.binary.f32(i32 35, float %5286, float %5287)  ; FMax(a,b)
  %5289 = call float @dx.op.binary.f32(i32 35, float %5285, float %5288)  ; FMax(a,b)
  %5290 = fsub fast float 1.000000e+00, %5289
  %5291 = fmul fast float %5290, %5226
  %5292 = fmul fast float %5290, %5227
  %5293 = fmul fast float %5290, %5228
  %5294 = call float @dx.op.dot3.f32(i32 55, float %5108, float %5109, float %5110, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5295 = fcmp fast ogt float %5294, 0x3E7FF19E20000000
  %5296 = fdiv fast float 1.000000e+00, %5294
  %5297 = select i1 %5295, float %5296, float 0.000000e+00
  %5298 = fmul fast float %5297, %5108
  %5299 = fmul fast float %5297, %5109
  %5300 = fmul fast float %5297, %5110
  %5301 = fadd fast float %5298, -1.000000e+00
  %5302 = fadd fast float %5299, -1.000000e+00
  %5303 = fadd fast float %5300, -1.000000e+00
  %5304 = fmul fast float %5301, 5.000000e-01
  %5305 = fmul fast float %5302, 5.000000e-01
  %5306 = fmul fast float %5303, 5.000000e-01
  %5307 = fadd fast float %5304, 1.000000e+00
  %5308 = fadd fast float %5305, 1.000000e+00
  %5309 = fadd fast float %5306, 1.000000e+00
  %5310 = call float @dx.op.binary.f32(i32 35, float %5121, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5311 = fdiv fast float %4204, %5310
  %5312 = fcmp fast olt float %4821, 1.270000e+02
  %5313 = fcmp fast olt float %4822, 1.270000e+02
  %5314 = fcmp fast olt float %4823, 1.270000e+02
  %5315 = fmul fast float %4821, 0xBFF7154760000000
  %5316 = fmul fast float %5315, %5311
  %5317 = fmul fast float %4822, 0xBFF7154760000000
  %5318 = fmul fast float %5317, %5311
  %5319 = fmul fast float %4823, 0xBFF7154760000000
  %5320 = fmul fast float %5319, %5311
  %5321 = call float @dx.op.unary.f32(i32 21, float %5316)  ; Exp(value)
  %5322 = call float @dx.op.unary.f32(i32 21, float %5318)  ; Exp(value)
  %5323 = call float @dx.op.unary.f32(i32 21, float %5320)  ; Exp(value)
  %5324 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5325 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5326 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5327 = select i1 %5312, float %5324, float 0.000000e+00
  %5328 = select i1 %5313, float %5325, float 0.000000e+00
  %5329 = select i1 %5314, float %5326, float 0.000000e+00
  %5330 = fmul fast float %5327, %5290
  %5331 = fmul fast float %5328, %5290
  %5332 = fmul fast float %5329, %5290
  %5333 = fadd fast float %5330, -1.000000e+00
  %5334 = fadd fast float %5331, -1.000000e+00
  %5335 = fadd fast float %5332, -1.000000e+00
  %5336 = fmul fast float %5285, %5230
  %5337 = fmul fast float %5286, %5231
  %5338 = fmul fast float %5287, %5232
  %5339 = fsub fast float 1.000000e+00, %5121
  %5340 = bitcast float %5339 to i32
  %5341 = sitofp i32 %5340 to float
  %5342 = fmul fast float %5341, 5.000000e+00
  %5343 = fadd fast float %5342, 0xC1EFBF8940000000
  %5344 = fptosi float %5343 to i32
  %5345 = bitcast i32 %5344 to float
  %5346 = fmul fast float %5345, %4795
  %5347 = fmul fast float %5226, %5346
  %5348 = fmul fast float %5347, %5290
  %5349 = fmul fast float %5348, %5307
  %5350 = fmul fast float %5227, %5346
  %5351 = fmul fast float %5350, %5290
  %5352 = fmul fast float %5351, %5308
  %5353 = fmul fast float %5228, %5346
  %5354 = fmul fast float %5353, %5290
  %5355 = fmul fast float %5354, %5309
  %5356 = fmul fast float %5291, %4791
  %5357 = fmul fast float %5292, %4791
  %5358 = fmul fast float %5293, %4791
  %5359 = fadd fast float %5336, %4781
  %5360 = fadd fast float %5359, %5349
  %5361 = fmul fast float %5360, %4791
  %5362 = fadd fast float %5337, %4782
  %5363 = fadd fast float %5362, %5352
  %5364 = fmul fast float %5363, %4791
  %5365 = fadd fast float %5338, %4783
  %5366 = fadd fast float %5365, %5355
  %5367 = fmul fast float %5366, %4791
  %5368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5369 = extractvalue %dx.types.CBufRet.f32 %5368, 3
  %5370 = fcmp fast oeq float %5369, 0.000000e+00
  br i1 %5370, label %6377, label %5371

; <label>:5371                                    ; preds = %5284
  %5372 = extractvalue %dx.types.CBufRet.f32 %5368, 0
  %5373 = extractvalue %dx.types.CBufRet.f32 %5368, 1
  %5374 = extractvalue %dx.types.CBufRet.f32 %5368, 2
  %5375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5376 = extractvalue %dx.types.CBufRet.f32 %5375, 0
  %5377 = extractvalue %dx.types.CBufRet.f32 %5375, 1
  %5378 = extractvalue %dx.types.CBufRet.f32 %5375, 2
  %5379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5380 = extractvalue %dx.types.CBufRet.f32 %5379, 0
  %5381 = extractvalue %dx.types.CBufRet.f32 %5379, 1
  %5382 = call float @dx.op.dot3.f32(i32 55, float %5376, float %5377, float %5378, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5383 = select i1 %206, float %5380, float %5376
  %5384 = select i1 %206, float %5382, float %5377
  %5385 = select i1 %206, float %5381, float %5378
  %5386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5387 = extractvalue %dx.types.CBufRet.f32 %5386, 2
  %5388 = fmul fast float %5387, %89
  %5389 = fmul fast float %5387, %90
  %5390 = fmul fast float %5387, %91
  %5391 = fadd fast float %5388, %145
  %5392 = fadd fast float %5389, %146
  %5393 = fadd fast float %5390, %147
  %5394 = fcmp fast olt float %5369, 0.000000e+00
  br i1 %5394, label %6019, label %5395

; <label>:5395                                    ; preds = %5371
  %5396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5397 = extractvalue %dx.types.CBufRet.f32 %5396, 0
  %5398 = extractvalue %dx.types.CBufRet.f32 %5396, 1
  %5399 = extractvalue %dx.types.CBufRet.f32 %5396, 2
  %5400 = extractvalue %dx.types.CBufRet.f32 %5396, 3
  %5401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5402 = extractvalue %dx.types.CBufRet.f32 %5401, 0
  %5403 = extractvalue %dx.types.CBufRet.f32 %5401, 1
  %5404 = extractvalue %dx.types.CBufRet.f32 %5401, 2
  %5405 = extractvalue %dx.types.CBufRet.f32 %5401, 3
  %5406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5407 = extractvalue %dx.types.CBufRet.f32 %5406, 0
  %5408 = extractvalue %dx.types.CBufRet.f32 %5406, 1
  %5409 = extractvalue %dx.types.CBufRet.f32 %5406, 2
  %5410 = extractvalue %dx.types.CBufRet.f32 %5406, 3
  %5411 = fmul fast float %5397, %5391
  %5412 = call float @dx.op.tertiary.f32(i32 46, float %5392, float %5398, float %5411)  ; FMad(a,b,c)
  %5413 = call float @dx.op.tertiary.f32(i32 46, float %5393, float %5399, float %5412)  ; FMad(a,b,c)
  %5414 = fadd fast float %5413, %5400
  %5415 = fmul fast float %5402, %5391
  %5416 = call float @dx.op.tertiary.f32(i32 46, float %5392, float %5403, float %5415)  ; FMad(a,b,c)
  %5417 = call float @dx.op.tertiary.f32(i32 46, float %5393, float %5404, float %5416)  ; FMad(a,b,c)
  %5418 = fadd fast float %5417, %5405
  %5419 = fmul fast float %5407, %5391
  %5420 = call float @dx.op.tertiary.f32(i32 46, float %5392, float %5408, float %5419)  ; FMad(a,b,c)
  %5421 = call float @dx.op.tertiary.f32(i32 46, float %5393, float %5409, float %5420)  ; FMad(a,b,c)
  %5422 = fadd fast float %5421, %5410
  %5423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5424 = extractvalue %dx.types.CBufRet.f32 %5423, 0
  %5425 = extractvalue %dx.types.CBufRet.f32 %5423, 1
  %5426 = extractvalue %dx.types.CBufRet.f32 %5423, 3
  %5427 = fmul fast float %5426, %5414
  %5428 = fmul fast float %5426, %5418
  %5429 = fadd fast float %5427, %5424
  %5430 = fadd fast float %5428, %5425
  %5431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5432 = extractvalue %dx.types.CBufRet.f32 %5431, 0
  %5433 = extractvalue %dx.types.CBufRet.f32 %5431, 1
  %5434 = extractvalue %dx.types.CBufRet.f32 %5431, 3
  %5435 = fmul fast float %5434, %5414
  %5436 = fmul fast float %5434, %5418
  %5437 = fadd fast float %5435, %5432
  %5438 = fadd fast float %5436, %5433
  %5439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5440 = extractvalue %dx.types.CBufRet.f32 %5439, 1
  %5441 = fsub fast float %5440, %5422
  %5442 = extractvalue %dx.types.CBufRet.f32 %5439, 2
  %5443 = fmul fast float %5441, %5442
  %5444 = fsub fast float 1.000000e+00, %5443
  %5445 = call float @dx.op.unary.f32(i32 7, float %5444)  ; Saturate(value)
  %5446 = extractvalue %dx.types.CBufRet.f32 %5431, 2
  %5447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5448 = extractvalue %dx.types.CBufRet.f32 %5447, 2
  %5449 = fadd fast float %5448, %5446
  %5450 = fcmp fast ogt float %5449, 0.000000e+00
  br i1 %5450, label %5451, label %5475

; <label>:5451                                    ; preds = %5395
  %5452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = extractvalue %dx.types.CBufRet.f32 %5452, 0
  %5454 = extractvalue %dx.types.CBufRet.f32 %5452, 1
  %5455 = fsub fast float %5437, %5453
  %5456 = fsub fast float %5438, %5454
  %5457 = fcmp fast olt float %5455, 0.000000e+00
  %5458 = fcmp fast olt float %5456, 0.000000e+00
  %5459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5460 = extractvalue %dx.types.CBufRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.CBufRet.f32 %5459, 1
  %5462 = extractvalue %dx.types.CBufRet.f32 %5459, 2
  %5463 = extractvalue %dx.types.CBufRet.f32 %5459, 3
  %5464 = select i1 %5457, float %5460, float %5462
  %5465 = select i1 %5458, float %5461, float %5463
  %5466 = fmul fast float %5464, %5455
  %5467 = fmul fast float %5465, %5456
  %5468 = call float @dx.op.unary.f32(i32 6, float %5466)  ; FAbs(value)
  %5469 = call float @dx.op.unary.f32(i32 6, float %5467)  ; FAbs(value)
  %5470 = extractvalue %dx.types.CBufRet.f32 %5386, 0
  %5471 = call float @dx.op.binary.f32(i32 35, float %5468, float %5469)  ; FMax(a,b)
  %5472 = fsub fast float %5470, %5471
  %5473 = call float @dx.op.unary.f32(i32 7, float %5472)  ; Saturate(value)
  %5474 = fmul fast float %5473, %5445
  br label %5475

; <label>:5475                                    ; preds = %5451, %5395
  %5476 = phi float [ %5474, %5451 ], [ 0.000000e+00, %5395 ]
  %5477 = extractvalue %dx.types.CBufRet.f32 %5423, 2
  %5478 = extractvalue %dx.types.CBufRet.f32 %5447, 1
  %5479 = fadd fast float %5478, %5477
  %5480 = fcmp fast ogt float %5479, 0.000000e+00
  %5481 = extractvalue %dx.types.CBufRet.f32 %5386, 0
  br i1 %5480, label %5482, label %5505

; <label>:5482                                    ; preds = %5475
  %5483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5484 = extractvalue %dx.types.CBufRet.f32 %5483, 0
  %5485 = extractvalue %dx.types.CBufRet.f32 %5483, 1
  %5486 = fsub fast float %5429, %5484
  %5487 = fsub fast float %5430, %5485
  %5488 = fcmp fast olt float %5486, 0.000000e+00
  %5489 = fcmp fast olt float %5487, 0.000000e+00
  %5490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5491 = extractvalue %dx.types.CBufRet.f32 %5490, 0
  %5492 = extractvalue %dx.types.CBufRet.f32 %5490, 1
  %5493 = extractvalue %dx.types.CBufRet.f32 %5490, 2
  %5494 = extractvalue %dx.types.CBufRet.f32 %5490, 3
  %5495 = select i1 %5488, float %5491, float %5493
  %5496 = select i1 %5489, float %5492, float %5494
  %5497 = fmul fast float %5495, %5486
  %5498 = fmul fast float %5496, %5487
  %5499 = call float @dx.op.unary.f32(i32 6, float %5497)  ; FAbs(value)
  %5500 = call float @dx.op.unary.f32(i32 6, float %5498)  ; FAbs(value)
  %5501 = call float @dx.op.binary.f32(i32 35, float %5499, float %5500)  ; FMax(a,b)
  %5502 = fsub fast float %5481, %5501
  %5503 = call float @dx.op.unary.f32(i32 7, float %5502)  ; Saturate(value)
  %5504 = fmul fast float %5503, %5445
  br label %5505

; <label>:5505                                    ; preds = %5482, %5475
  %5506 = phi float [ %5504, %5482 ], [ 0.000000e+00, %5475 ]
  %5507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5508 = extractvalue %dx.types.CBufRet.f32 %5507, 1
  %5509 = call float @dx.op.unary.f32(i32 7, float %5508)  ; Saturate(value)
  %5510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5511 = extractvalue %dx.types.CBufRet.f32 %5510, 0
  %5512 = extractvalue %dx.types.CBufRet.f32 %5510, 1
  %5513 = fsub fast float %5414, %5511
  %5514 = fsub fast float %5418, %5512
  %5515 = fcmp fast olt float %5513, 0.000000e+00
  %5516 = fcmp fast olt float %5514, 0.000000e+00
  %5517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5518 = extractvalue %dx.types.CBufRet.f32 %5517, 0
  %5519 = extractvalue %dx.types.CBufRet.f32 %5517, 1
  %5520 = extractvalue %dx.types.CBufRet.f32 %5517, 2
  %5521 = extractvalue %dx.types.CBufRet.f32 %5517, 3
  %5522 = select i1 %5515, float %5518, float %5520
  %5523 = select i1 %5516, float %5519, float %5521
  %5524 = fmul fast float %5522, %5513
  %5525 = fmul fast float %5523, %5514
  %5526 = call float @dx.op.unary.f32(i32 6, float %5524)  ; FAbs(value)
  %5527 = call float @dx.op.unary.f32(i32 6, float %5525)  ; FAbs(value)
  %5528 = call float @dx.op.binary.f32(i32 35, float %5526, float %5527)  ; FMax(a,b)
  %5529 = fsub fast float %5481, %5528
  %5530 = call float @dx.op.unary.f32(i32 7, float %5529)  ; Saturate(value)
  %5531 = call float @dx.op.binary.f32(i32 36, float %5530, float %5509)  ; FMin(a,b)
  %5532 = fmul fast float %5531, %5445
  %5533 = fsub fast float %5506, %5532
  %5534 = fsub fast float %5476, %5506
  %5535 = fsub fast float %5534, %5532
  %5536 = call float @dx.op.binary.f32(i32 35, float %5506, float %5476)  ; FMax(a,b)
  %5537 = call float @dx.op.binary.f32(i32 35, float %5532, float %5536)  ; FMax(a,b)
  %5538 = fcmp fast olt float %5537, 1.000000e+00
  br i1 %5538, label %5539, label %5937, !dx.controlflow.hints !77

; <label>:5539                                    ; preds = %5505
  %5540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5541 = extractvalue %dx.types.CBufRet.f32 %5540, 0
  %5542 = fcmp fast une float %5541, 0.000000e+00
  br i1 %5542, label %5543, label %5937, !dx.controlflow.hints !78

; <label>:5543                                    ; preds = %5539
  %5544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5545 = extractvalue %dx.types.CBufRet.f32 %5544, 0
  %5546 = extractvalue %dx.types.CBufRet.f32 %5544, 1
  %5547 = extractvalue %dx.types.CBufRet.f32 %5544, 2
  %5548 = extractvalue %dx.types.CBufRet.f32 %5544, 3
  %5549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5550 = extractvalue %dx.types.CBufRet.f32 %5549, 0
  %5551 = extractvalue %dx.types.CBufRet.f32 %5549, 1
  %5552 = extractvalue %dx.types.CBufRet.f32 %5549, 2
  %5553 = extractvalue %dx.types.CBufRet.f32 %5549, 3
  %5554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5555 = extractvalue %dx.types.CBufRet.f32 %5554, 0
  %5556 = extractvalue %dx.types.CBufRet.f32 %5554, 1
  %5557 = extractvalue %dx.types.CBufRet.f32 %5554, 2
  %5558 = extractvalue %dx.types.CBufRet.f32 %5554, 3
  %5559 = fmul fast float %5545, %5391
  %5560 = call float @dx.op.tertiary.f32(i32 46, float %5392, float %5546, float %5559)  ; FMad(a,b,c)
  %5561 = call float @dx.op.tertiary.f32(i32 46, float %5393, float %5547, float %5560)  ; FMad(a,b,c)
  %5562 = fadd fast float %5561, %5548
  %5563 = fmul fast float %5550, %5391
  %5564 = call float @dx.op.tertiary.f32(i32 46, float %5392, float %5551, float %5563)  ; FMad(a,b,c)
  %5565 = call float @dx.op.tertiary.f32(i32 46, float %5393, float %5552, float %5564)  ; FMad(a,b,c)
  %5566 = fadd fast float %5565, %5553
  %5567 = fmul fast float %5555, %5391
  %5568 = call float @dx.op.tertiary.f32(i32 46, float %5392, float %5556, float %5567)  ; FMad(a,b,c)
  %5569 = call float @dx.op.tertiary.f32(i32 46, float %5393, float %5557, float %5568)  ; FMad(a,b,c)
  %5570 = fadd fast float %5569, %5558
  %5571 = fcmp fast oge float %5562, 1.000000e+00
  %5572 = fcmp fast oge float %5566, 1.000000e+00
  %5573 = or i1 %5571, %5572
  %5574 = fcmp fast olt float %5562, 0.000000e+00
  %5575 = fcmp fast olt float %5566, 0.000000e+00
  %5576 = or i1 %5574, %5575
  %5577 = or i1 %5573, %5576
  br i1 %5577, label %5937, label %5578, !dx.controlflow.hints !79

; <label>:5578                                    ; preds = %5543
  %5579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5580 = extractvalue %dx.types.CBufRet.f32 %5579, 0
  %5581 = extractvalue %dx.types.CBufRet.f32 %5579, 1
  %5582 = extractvalue %dx.types.CBufRet.f32 %5579, 2
  %5583 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5584 = extractvalue %dx.types.CBufRet.i32 %5583, 2
  %5585 = uitofp i32 %5584 to float
  %5586 = extractvalue %dx.types.CBufRet.i32 %5583, 3
  %5587 = uitofp i32 %5586 to float
  %5588 = extractvalue %dx.types.CBufRet.f32 %5579, 3
  %5589 = fmul fast float %5588, 2.000000e+00
  %5590 = fsub fast float %5562, %5580
  %5591 = fsub fast float %5566, %5581
  %5592 = fmul fast float %5589, %5590
  %5593 = fmul fast float %5589, %5591
  %5594 = fdiv fast float 1.000000e+00, %5374
  %5595 = fmul fast float %5593, %5594
  %5596 = call float @dx.op.unary.f32(i32 6, float %5595)  ; FAbs(value)
  %5597 = fmul fast float %5582, %5393
  %5598 = fmul fast float %5597, %5589
  %5599 = call float @dx.op.unary.f32(i32 6, float %5598)  ; FAbs(value)
  %5600 = call float @dx.op.unary.f32(i32 6, float %5592)  ; FAbs(value)
  %5601 = call float @dx.op.binary.f32(i32 35, float %5599, float %5596)  ; FMax(a,b)
  %5602 = call float @dx.op.binary.f32(i32 35, float %5600, float %5601)  ; FMax(a,b)
  %5603 = fmul fast float %5602, 2.000000e+00
  %5604 = call float @dx.op.unary.f32(i32 23, float %5603)  ; Log(value)
  %5605 = call float @dx.op.binary.f32(i32 35, float %5604, float %5585)  ; FMax(a,b)
  %5606 = call float @dx.op.unary.f32(i32 22, float %5605)  ; Frc(value)
  %5607 = fadd fast float %5606, 0xBFEA666660000000
  %5608 = fmul fast float %5607, 8.000000e+00
  %5609 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5610 = call float @dx.op.unary.f32(i32 27, float %5605)  ; Round_ni(value)
  %5611 = fadd fast float %5610, %5609
  %5612 = call float @dx.op.binary.f32(i32 36, float %5611, float %5587)  ; FMin(a,b)
  %5613 = call float @dx.op.unary.f32(i32 27, float %5612)  ; Round_ni(value)
  %5614 = fsub fast float -0.000000e+00, %5613
  %5615 = call float @dx.op.unary.f32(i32 21, float %5614)  ; Exp(value)
  %5616 = fmul fast float %5615, %5589
  %5617 = fmul fast float %5616, %5562
  %5618 = fmul fast float %5616, %5566
  %5619 = fmul fast float %5617, 2.500000e-01
  %5620 = fmul fast float %5618, 2.500000e-01
  %5621 = fadd fast float %5619, 5.000000e-01
  %5622 = fadd fast float %5620, 5.000000e-01
  %5623 = fsub fast float %5587, %5585
  %5624 = fptoui float %5623 to i32
  %5625 = add i32 %5624, 320
  %5626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %5625)  ; CBufferLoadLegacy(handle,regIndex)
  %5627 = extractvalue %dx.types.CBufRet.f32 %5626, 0
  %5628 = extractvalue %dx.types.CBufRet.f32 %5626, 1
  %5629 = fcmp fast une float %5612, %5587
  %5630 = fsub fast float %5562, %5627
  %5631 = fsub fast float %5566, %5628
  %5632 = call float @dx.op.unary.f32(i32 6, float %5630)  ; FAbs(value)
  %5633 = call float @dx.op.unary.f32(i32 6, float %5631)  ; FAbs(value)
  %5634 = fmul fast float %5632, %5616
  %5635 = fmul fast float %5633, %5616
  %5636 = fcmp fast olt float %5634, 1.000000e+00
  %5637 = fcmp fast olt float %5635, 1.000000e+00
  %5638 = and i1 %5636, %5637
  %5639 = or i1 %5629, %5638
  br i1 %5639, label %5640, label %5937, !dx.controlflow.hints !80

; <label>:5640                                    ; preds = %5578
  %5641 = fmul fast float %5618, 5.000000e-01
  %5642 = fmul fast float %5617, 5.000000e-01
  %5643 = fadd fast float %5641, 5.000000e-01
  %5644 = fadd fast float %5642, 5.000000e-01
  %5645 = sitofp i32 %5584 to float
  %5646 = fsub fast float %5612, %5645
  %5647 = call float @dx.op.unary.f32(i32 27, float %5646)  ; Round_ni(value)
  %5648 = call float @dx.op.unary.f32(i32 22, float %5612)  ; Frc(value)
  %5649 = call float @dx.op.unary.f32(i32 22, float %5644)  ; Frc(value)
  %5650 = call float @dx.op.unary.f32(i32 22, float %5643)  ; Frc(value)
  %5651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %5649, float %5650, float %5647, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5652 = extractvalue %dx.types.ResRet.f32 %5651, 0
  %5653 = extractvalue %dx.types.ResRet.f32 %5651, 1
  %5654 = extractvalue %dx.types.ResRet.f32 %5651, 2
  %5655 = extractvalue %dx.types.ResRet.f32 %5651, 3
  %5656 = fcmp fast ogt float %5648, 0.000000e+00
  br i1 %5656, label %5657, label %5678, !dx.controlflow.hints !81

; <label>:5657                                    ; preds = %5640
  %5658 = fadd fast float %5647, 1.000000e+00
  %5659 = call float @dx.op.unary.f32(i32 22, float %5621)  ; Frc(value)
  %5660 = call float @dx.op.unary.f32(i32 22, float %5622)  ; Frc(value)
  %5661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %5659, float %5660, float %5658, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5662 = extractvalue %dx.types.ResRet.f32 %5661, 0
  %5663 = extractvalue %dx.types.ResRet.f32 %5661, 1
  %5664 = extractvalue %dx.types.ResRet.f32 %5661, 2
  %5665 = extractvalue %dx.types.ResRet.f32 %5661, 3
  %5666 = fsub fast float %5662, %5652
  %5667 = fsub fast float %5663, %5653
  %5668 = fsub fast float %5664, %5654
  %5669 = fsub fast float %5665, %5655
  %5670 = fmul fast float %5666, %5648
  %5671 = fmul fast float %5667, %5648
  %5672 = fmul fast float %5668, %5648
  %5673 = fmul fast float %5669, %5648
  %5674 = fadd fast float %5670, %5652
  %5675 = fadd fast float %5671, %5653
  %5676 = fadd fast float %5672, %5654
  %5677 = fadd fast float %5673, %5655
  br label %5678

; <label>:5678                                    ; preds = %5657, %5640
  %5679 = phi float [ %5674, %5657 ], [ %5652, %5640 ]
  %5680 = phi float [ %5675, %5657 ], [ %5653, %5640 ]
  %5681 = phi float [ %5676, %5657 ], [ %5654, %5640 ]
  %5682 = phi float [ %5677, %5657 ], [ %5655, %5640 ]
  %5683 = fadd fast float %5679, -5.000000e-01
  %5684 = fadd fast float %5681, -5.000000e-01
  %5685 = fmul fast float %5683, 0xBFD5555560000000
  %5686 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5684, float %5685)  ; FMad(a,b,c)
  %5687 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5680, float 0.000000e+00)  ; FMad(a,b,c)
  %5688 = fadd fast float %5687, %5682
  %5689 = fmul fast float %5683, -7.500000e-01
  %5690 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5684, float %5689)  ; FMad(a,b,c)
  %5691 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5680, float 0.000000e+00)  ; FMad(a,b,c)
  %5692 = fadd fast float %5691, %5682
  %5693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5694 = extractvalue %dx.types.CBufRet.f32 %5693, 0
  %5695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5696 = extractvalue %dx.types.CBufRet.f32 %5695, 0
  %5697 = extractvalue %dx.types.CBufRet.f32 %5695, 1
  %5698 = extractvalue %dx.types.CBufRet.f32 %5695, 2
  %5699 = extractvalue %dx.types.CBufRet.f32 %5695, 3
  %5700 = fsub fast float %5696, %5686
  %5701 = fsub fast float %5697, %5688
  %5702 = fsub fast float %5698, %5690
  %5703 = fsub fast float %5699, %5692
  %5704 = fmul fast float %5700, %5694
  %5705 = fmul fast float %5701, %5694
  %5706 = fmul fast float %5702, %5694
  %5707 = fmul fast float %5703, %5694
  %5708 = fadd fast float %5704, %5686
  %5709 = fadd fast float %5705, %5688
  %5710 = fadd fast float %5706, %5690
  %5711 = fadd fast float %5707, %5692
  %5712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5713 = extractvalue %dx.types.ResRet.i32 %5712, 0
  %5714 = and i32 %5713, 536870911
  %5715 = uitofp i32 %5714 to float
  %5716 = fmul fast float %5715, %5562
  %5717 = fmul fast float %5715, %5566
  %5718 = fptoui float %5716 to i32
  %5719 = fptoui float %5717 to i32
  %5720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5721 = extractvalue %dx.types.ResRet.i32 %5720, 0
  %5722 = and i32 %5721, 31
  %5723 = lshr i32 %5718, %5722
  %5724 = lshr i32 %5719, %5722
  %5725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5726 = extractvalue %dx.types.ResRet.i32 %5725, 0
  %5727 = and i32 %5726, 31
  %5728 = shl i32 1, %5727
  %5729 = call i32 @dx.op.binary.i32(i32 40, i32 %5728, i32 4)  ; UMin(a,b)
  %5730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5731 = extractvalue %dx.types.ResRet.i32 %5730, 0
  %5732 = extractvalue %dx.types.ResRet.i32 %5730, 1
  %5733 = icmp eq i32 %5729, 0
  br i1 %5733, label %5775, label %5734

; <label>:5734                                    ; preds = %5678
  br label %5735

; <label>:5735                                    ; preds = %5763, %5734
  %5736 = phi i32 [ %5766, %5763 ], [ 0, %5734 ]
  %5737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5738 = extractvalue %dx.types.ResRet.i32 %5737, 0
  %5739 = lshr i32 %5738, 16
  %5740 = and i32 %5739, 31
  %5741 = shl i32 %5724, %5740
  %5742 = add i32 %5741, %5723
  %5743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5744 = extractvalue %dx.types.ResRet.i32 %5743, 0
  %5745 = and i32 %5744, 31
  %5746 = shl i32 %5742, %5745
  %5747 = add i32 %5746, %5736
  %5748 = shl i32 %5747, 2
  %5749 = add i32 %5748, 32
  %5750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5749, i32 undef)  ; BufferLoad(srv,index,wot)
  %5751 = extractvalue %dx.types.ResRet.i32 %5750, 0
  %5752 = icmp slt i32 %5751, 0
  %5753 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %5736
  %5754 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 %5736
  %5755 = bitcast float* %5753 to i32*
  %5756 = bitcast float* %5754 to i32*
  br i1 %5752, label %5757, label %5763

; <label>:5757                                    ; preds = %5735
  %5758 = and i32 %5751, 1073741823
  %5759 = add nuw nsw i32 %5758, 20
  %5760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5759, i32 undef)  ; BufferLoad(srv,index,wot)
  %5761 = extractvalue %dx.types.ResRet.i32 %5760, 0
  %5762 = extractvalue %dx.types.ResRet.i32 %5760, 1
  br label %5763

; <label>:5763                                    ; preds = %5757, %5735
  %5764 = phi i32 [ %5761, %5757 ], [ %5731, %5735 ]
  %5765 = phi i32 [ %5762, %5757 ], [ %5732, %5735 ]
  store i32 %5764, i32* %5755, align 4
  store i32 %5765, i32* %5756, align 4
  %5766 = add nuw i32 %5736, 1
  %5767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.i32 %5767, 2
  %5769 = icmp eq i32 %5768, 0
  %5770 = icmp ugt i32 %5751, -1073741825
  %5771 = and i1 %5770, %5769
  %5772 = icmp ult i32 %5766, %5729
  %5773 = and i1 %5771, %5772
  br i1 %5773, label %5735, label %5774

; <label>:5774                                    ; preds = %5763
  br label %5775

; <label>:5775                                    ; preds = %5774, %5678
  %5776 = phi i32 [ 0, %5678 ], [ %5766, %5774 ]
  %5777 = extractvalue %dx.types.CBufRet.f32 %5540, 2
  %5778 = fptoui float %5777 to i32
  %5779 = icmp eq i32 %5778, 0
  br i1 %5779, label %5831, label %5780

; <label>:5780                                    ; preds = %5775
  br label %5781

; <label>:5781                                    ; preds = %5826, %5780
  %5782 = phi i32 [ %5827, %5826 ], [ %5776, %5780 ]
  %5783 = phi i32 [ %5828, %5826 ], [ 0, %5780 ]
  %5784 = lshr i32 %5783, 2
  %5785 = and i32 %5783, 3
  %5786 = add nuw nsw i32 %5784, 83
  %5787 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 %5786)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.i32 %5787, 0
  %5789 = extractvalue %dx.types.CBufRet.i32 %5787, 1
  %5790 = extractvalue %dx.types.CBufRet.i32 %5787, 2
  %5791 = extractvalue %dx.types.CBufRet.i32 %5787, 3
  %5792 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 0
  store i32 %5788, i32* %5792, align 4
  %5793 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 1
  store i32 %5789, i32* %5793, align 4
  %5794 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 2
  store i32 %5790, i32* %5794, align 4
  %5795 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 3
  store i32 %5791, i32* %5795, align 4
  %5796 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 %5785
  %5797 = load i32, i32* %5796, align 4, !tbaa !82, !noalias !86
  %5798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5799 = extractvalue %dx.types.ResRet.i32 %5798, 0
  %5800 = lshr i32 %5799, 16
  %5801 = and i32 %5800, 31
  %5802 = shl i32 %5724, %5801
  %5803 = add i32 %5802, %5723
  %5804 = shl i32 %5803, 2
  %5805 = add i32 %5804, %5797
  %5806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5805, i32 undef)  ; BufferLoad(srv,index,wot)
  %5807 = extractvalue %dx.types.ResRet.i32 %5806, 0
  %5808 = icmp eq i32 %5807, 0
  br i1 %5808, label %5826, label %5809

; <label>:5809                                    ; preds = %5781
  %5810 = icmp slt i32 %5807, 0
  %5811 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %5782
  %5812 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 %5782
  %5813 = bitcast float* %5811 to i32*
  %5814 = bitcast float* %5812 to i32*
  br i1 %5810, label %5815, label %5822

; <label>:5815                                    ; preds = %5809
  %5816 = and i32 %5807, 1073741823
  %5817 = add i32 %5797, 20
  %5818 = add i32 %5817, %5816
  %5819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5818, i32 undef)  ; BufferLoad(srv,index,wot)
  %5820 = extractvalue %dx.types.ResRet.i32 %5819, 0
  %5821 = extractvalue %dx.types.ResRet.i32 %5819, 1
  br label %5822

; <label>:5822                                    ; preds = %5815, %5809
  %5823 = phi i32 [ %5820, %5815 ], [ %5731, %5809 ]
  %5824 = phi i32 [ %5821, %5815 ], [ %5732, %5809 ]
  store i32 %5823, i32* %5813, align 4
  store i32 %5824, i32* %5814, align 4
  %5825 = add i32 %5782, 1
  br label %5826

; <label>:5826                                    ; preds = %5822, %5781
  %5827 = phi i32 [ %5782, %5781 ], [ %5825, %5822 ]
  %5828 = add nuw i32 %5783, 1
  %5829 = icmp eq i32 %5828, %5778
  br i1 %5829, label %5830, label %5781

; <label>:5830                                    ; preds = %5826
  br label %5831

; <label>:5831                                    ; preds = %5830, %5775
  %5832 = phi i32 [ %5776, %5775 ], [ %5827, %5830 ]
  %5833 = icmp eq i32 %5832, 1
  %5834 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 0
  %5835 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 0
  br i1 %5833, label %5836, label %5839

; <label>:5836                                    ; preds = %5831
  %5837 = load float, float* %5834, align 4
  %5838 = load float, float* %5835, align 4
  br label %5866

; <label>:5839                                    ; preds = %5831
  %5840 = load float, float* %5834, align 4
  %5841 = load float, float* %5835, align 4
  %5842 = fdiv fast float 1.000000e+00, %5841
  %5843 = fsub fast float %5840, %5842
  %5844 = icmp ugt i32 %5832, 1
  br i1 %5844, label %5845, label %5861

; <label>:5845                                    ; preds = %5839
  br label %5846

; <label>:5846                                    ; preds = %5846, %5845
  %5847 = phi float [ %5856, %5846 ], [ %5843, %5845 ]
  %5848 = phi float [ %5857, %5846 ], [ %5840, %5845 ]
  %5849 = phi i32 [ %5858, %5846 ], [ 1, %5845 ]
  %5850 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %5849
  %5851 = load float, float* %5850, align 4
  %5852 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 %5849
  %5853 = load float, float* %5852, align 4
  %5854 = fdiv fast float 1.000000e+00, %5853
  %5855 = fsub fast float %5851, %5854
  %5856 = call float @dx.op.binary.f32(i32 36, float %5847, float %5855)  ; FMin(a,b)
  %5857 = call float @dx.op.binary.f32(i32 35, float %5848, float %5851)  ; FMax(a,b)
  %5858 = add nuw i32 %5849, 1
  %5859 = icmp eq i32 %5858, %5832
  br i1 %5859, label %5860, label %5846

; <label>:5860                                    ; preds = %5846
  br label %5861

; <label>:5861                                    ; preds = %5860, %5839
  %5862 = phi float [ %5843, %5839 ], [ %5856, %5860 ]
  %5863 = phi float [ %5840, %5839 ], [ %5857, %5860 ]
  %5864 = fsub fast float %5863, %5862
  %5865 = fdiv fast float 1.000000e+00, %5864
  br label %5866

; <label>:5866                                    ; preds = %5861, %5836
  %5867 = phi float [ %5837, %5836 ], [ %5863, %5861 ]
  %5868 = phi float [ %5838, %5836 ], [ %5865, %5861 ]
  %5869 = fadd fast float %5570, %5867
  %5870 = fmul fast float %5869, %5868
  %5871 = call float @dx.op.unary.f32(i32 7, float %5870)  ; Saturate(value)
  %5872 = fmul fast float %5871, 2.000000e+00
  %5873 = fsub fast float 1.000000e+00, %5872
  %5874 = fmul fast float %5708, %5708
  %5875 = fsub fast float %5709, %5874
  %5876 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5875)  ; FMax(a,b)
  %5877 = fdiv fast float 1.000000e+00, %5876
  %5878 = fmul fast float %5709, %5708
  %5879 = fsub fast float %5710, %5878
  %5880 = fsub fast float %5873, %5708
  %5881 = fmul fast float %5873, %5873
  %5882 = fsub fast float %5881, %5709
  %5883 = fmul fast float %5877, %5879
  %5884 = fmul fast float %5883, %5880
  %5885 = fsub fast float %5882, %5884
  %5886 = fmul fast float %5709, %5709
  %5887 = fsub fast float %5711, %5886
  %5888 = fmul fast float %5879, %5879
  %5889 = fmul fast float %5888, %5877
  %5890 = fsub fast float %5887, %5889
  %5891 = fdiv fast float %5885, %5890
  %5892 = fmul fast float %5891, %5879
  %5893 = fsub fast float %5880, %5892
  %5894 = fmul fast float %5893, %5877
  %5895 = fmul fast float %5894, %5708
  %5896 = fsub fast float 1.000000e+00, %5895
  %5897 = fmul fast float %5891, %5709
  %5898 = fsub fast float %5896, %5897
  %5899 = fmul fast float %5894, %5894
  %5900 = fmul fast float %5891, 4.000000e+00
  %5901 = fmul fast float %5900, %5898
  %5902 = fsub fast float %5899, %5901
  %5903 = call float @dx.op.unary.f32(i32 24, float %5902)  ; Sqrt(value)
  %5904 = fcmp fast oge float %5894, 0.000000e+00
  %5905 = fsub fast float -0.000000e+00, %5903
  %5906 = select i1 %5904, float %5905, float %5903
  %5907 = fsub fast float %5906, %5894
  %5908 = fdiv fast float %5907, %5891
  %5909 = fdiv fast float %5898, %5907
  %5910 = fmul fast float %5908, 5.000000e-01
  %5911 = fmul fast float %5909, 2.000000e+00
  %5912 = select i1 %5904, float %5910, float %5911
  %5913 = select i1 %5904, float %5911, float %5910
  %5914 = call float @dx.op.binary.f32(i32 35, float %5912, float %5913)  ; FMax(a,b)
  %5915 = call float @dx.op.binary.f32(i32 36, float %5912, float %5913)  ; FMin(a,b)
  %5916 = fcmp fast ogt float %5873, %5914
  %5917 = fsub fast float %5873, %5915
  %5918 = fsub fast float %5873, %5914
  %5919 = fsub fast float %5914, %5915
  %5920 = select i1 %5916, float %5918, float %5919
  %5921 = fmul float %5917, %5920
  %5922 = select i1 %5916, float %5915, float %5873
  %5923 = fcmp fast ogt float %5873, %5915
  %5924 = fmul fast float %5922, %5914
  %5925 = fadd fast float %5922, %5914
  %5926 = fmul fast float %5925, %5708
  %5927 = fadd fast float %5924, %5709
  %5928 = fsub fast float %5927, %5926
  %5929 = fdiv fast float %5928, %5921
  %5930 = select i1 %5923, float %5929, float 0.000000e+00
  %5931 = fsub fast float 1.000000e+00, %5930
  %5932 = select i1 %5916, float %5931, float %5930
  %5933 = call float @dx.op.unary.f32(i32 7, float %5932)  ; Saturate(value)
  %5934 = extractvalue %dx.types.CBufRet.f32 %5693, 3
  %5935 = fmul fast float %5934, %5933
  %5936 = fsub fast float 1.000000e+00, %5935
  br label %5937

; <label>:5937                                    ; preds = %5866, %5578, %5543, %5539, %5505
  %5938 = phi float [ 1.000000e+00, %5505 ], [ %5936, %5866 ], [ 1.000000e+00, %5543 ], [ 1.000000e+00, %5578 ], [ 1.000000e+00, %5539 ]
  %5939 = fcmp fast ogt float %5535, 0.000000e+00
  br i1 %5939, label %5940, label %5946, !dx.controlflow.hints !95

; <label>:5940                                    ; preds = %5937
  %5941 = fadd fast float %5448, %5422
  %5942 = call float @dx.op.binary.f32(i32 35, float %5941, float 0.000000e+00)  ; FMax(a,b)
  %5943 = fadd fast float %5942, 0x3F10000000000000
  %5944 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %37, float %5437, float %5438, float undef, float undef, i32 0, i32 0, i32 undef, float %5943)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5945 = extractvalue %dx.types.ResRet.f32 %5944, 0
  br label %5946

; <label>:5946                                    ; preds = %5940, %5937
  %5947 = phi float [ %5945, %5940 ], [ 1.000000e+00, %5937 ]
  %5948 = fcmp fast ogt float %5533, 0.000000e+00
  br i1 %5948, label %5949, label %5955, !dx.controlflow.hints !96

; <label>:5949                                    ; preds = %5946
  %5950 = fadd fast float %5478, %5422
  %5951 = call float @dx.op.binary.f32(i32 35, float %5950, float 0.000000e+00)  ; FMax(a,b)
  %5952 = fadd fast float %5951, 0x3F10000000000000
  %5953 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %37, float %5429, float %5430, float undef, float undef, i32 0, i32 0, i32 undef, float %5952)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5954 = extractvalue %dx.types.ResRet.f32 %5953, 0
  br label %5955

; <label>:5955                                    ; preds = %5949, %5946
  %5956 = phi float [ %5954, %5949 ], [ 1.000000e+00, %5946 ]
  %5957 = fcmp fast ogt float %5532, 0.000000e+00
  br i1 %5957, label %5958, label %5965, !dx.controlflow.hints !97

; <label>:5958                                    ; preds = %5955
  %5959 = extractvalue %dx.types.CBufRet.f32 %5447, 0
  %5960 = fadd fast float %5959, %5422
  %5961 = call float @dx.op.binary.f32(i32 35, float %5960, float 0.000000e+00)  ; FMax(a,b)
  %5962 = fadd fast float %5961, 0x3F10000000000000
  %5963 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %37, float %5414, float %5418, float undef, float undef, i32 0, i32 0, i32 undef, float %5962)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5964 = extractvalue %dx.types.ResRet.f32 %5963, 0
  br label %5965

; <label>:5965                                    ; preds = %5958, %5955
  %5966 = phi float [ %5964, %5958 ], [ 1.000000e+00, %5955 ]
  %5967 = fsub fast float %5947, %5938
  %5968 = fmul fast float %5967, %5476
  %5969 = fadd fast float %5968, %5938
  %5970 = fsub fast float %5956, %5969
  %5971 = fmul fast float %5970, %5506
  %5972 = fadd fast float %5971, %5969
  %5973 = fsub fast float %5966, %5972
  %5974 = fmul fast float %5973, %5532
  %5975 = fadd fast float %5974, %5972
  %5976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5977 = extractvalue %dx.types.CBufRet.f32 %5976, 2
  %5978 = fcmp fast ogt float %5977, 0.000000e+00
  br i1 %5978, label %5979, label %6019, !dx.controlflow.hints !98

; <label>:5979                                    ; preds = %5965
  %5980 = fcmp fast ugt float %5977, 0.000000e+00
  br i1 %5980, label %5981, label %6016

; <label>:5981                                    ; preds = %5979
  %5982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5983 = extractvalue %dx.types.CBufRet.f32 %5982, 0
  %5984 = extractvalue %dx.types.CBufRet.f32 %5982, 1
  %5985 = extractvalue %dx.types.CBufRet.f32 %5982, 2
  %5986 = extractvalue %dx.types.CBufRet.f32 %5982, 3
  %5987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5988 = extractvalue %dx.types.CBufRet.f32 %5987, 0
  %5989 = extractvalue %dx.types.CBufRet.f32 %5987, 1
  %5990 = extractvalue %dx.types.CBufRet.f32 %5987, 2
  %5991 = extractvalue %dx.types.CBufRet.f32 %5987, 3
  %5992 = extractvalue %dx.types.CBufRet.f32 %5976, 0
  %5993 = extractvalue %dx.types.CBufRet.f32 %5976, 1
  %5994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5995 = extractvalue %dx.types.CBufRet.f32 %5994, 0
  %5996 = extractvalue %dx.types.CBufRet.f32 %5994, 1
  %5997 = extractvalue %dx.types.CBufRet.f32 %5994, 2
  %5998 = fadd fast float %5995, %5391
  %5999 = fadd fast float %5996, %5392
  %6000 = fadd fast float %5997, %5393
  %6001 = fmul fast float %5998, %5983
  %6002 = call float @dx.op.tertiary.f32(i32 46, float %5984, float %5999, float %6001)  ; FMad(a,b,c)
  %6003 = call float @dx.op.tertiary.f32(i32 46, float %5985, float %6000, float %6002)  ; FMad(a,b,c)
  %6004 = fadd fast float %6003, %5986
  %6005 = fmul fast float %5998, %5988
  %6006 = call float @dx.op.tertiary.f32(i32 46, float %5989, float %5999, float %6005)  ; FMad(a,b,c)
  %6007 = call float @dx.op.tertiary.f32(i32 46, float %5990, float %6000, float %6006)  ; FMad(a,b,c)
  %6008 = fadd fast float %6007, %5991
  %6009 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %32, float %6004, float %6008, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6010 = extractvalue %dx.types.ResRet.f32 %6009, 0
  %6011 = fmul fast float %6010, %5993
  %6012 = fadd fast float %6011, %5992
  %6013 = call float @dx.op.unary.f32(i32 7, float %6012)  ; Saturate(value)
  %6014 = fmul fast float %6013, %5977
  %6015 = fsub fast float 1.000000e+00, %6014
  br label %6016

; <label>:6016                                    ; preds = %5981, %5979
  %6017 = phi float [ %6015, %5981 ], [ 1.000000e+00, %5979 ]
  %6018 = fmul fast float %6017, %5975
  br label %6019

; <label>:6019                                    ; preds = %6016, %5965, %5371
  %6020 = phi float [ 1.000000e+00, %5371 ], [ %6018, %6016 ], [ %5975, %5965 ]
  %6021 = call float @dx.op.binary.f32(i32 36, float %6020, float %6020)  ; FMin(a,b)
  %6022 = call float @dx.op.binary.f32(i32 36, float %6020, float %6021)  ; FMin(a,b)
  %6023 = fcmp fast ogt float %6022, 0.000000e+00
  br i1 %6023, label %6024, label %6185, !dx.controlflow.hints !99

; <label>:6024                                    ; preds = %6019
  %6025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6026 = extractvalue %dx.types.CBufRet.f32 %6025, 0
  %6027 = extractvalue %dx.types.CBufRet.f32 %6025, 1
  %6028 = extractvalue %dx.types.CBufRet.f32 %6025, 2
  %6029 = extractvalue %dx.types.CBufRet.f32 %6025, 3
  %6030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6031 = extractvalue %dx.types.CBufRet.f32 %6030, 0
  %6032 = extractvalue %dx.types.CBufRet.f32 %6030, 1
  %6033 = extractvalue %dx.types.CBufRet.f32 %6030, 2
  %6034 = extractvalue %dx.types.CBufRet.f32 %6030, 3
  %6035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6036 = extractvalue %dx.types.CBufRet.f32 %6035, 0
  %6037 = extractvalue %dx.types.CBufRet.f32 %6035, 1
  %6038 = extractvalue %dx.types.CBufRet.f32 %6035, 2
  %6039 = extractvalue %dx.types.CBufRet.f32 %6035, 3
  %6040 = fmul fast float %6026, %5391
  %6041 = call float @dx.op.tertiary.f32(i32 46, float %5392, float %6027, float %6040)  ; FMad(a,b,c)
  %6042 = call float @dx.op.tertiary.f32(i32 46, float %5393, float %6028, float %6041)  ; FMad(a,b,c)
  %6043 = fadd fast float %6042, %6029
  %6044 = fmul fast float %6031, %5391
  %6045 = call float @dx.op.tertiary.f32(i32 46, float %5392, float %6032, float %6044)  ; FMad(a,b,c)
  %6046 = call float @dx.op.tertiary.f32(i32 46, float %5393, float %6033, float %6045)  ; FMad(a,b,c)
  %6047 = fadd fast float %6046, %6034
  %6048 = fmul fast float %6036, %5391
  %6049 = call float @dx.op.tertiary.f32(i32 46, float %5392, float %6037, float %6048)  ; FMad(a,b,c)
  %6050 = call float @dx.op.tertiary.f32(i32 46, float %5393, float %6038, float %6049)  ; FMad(a,b,c)
  %6051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6052 = extractvalue %dx.types.CBufRet.f32 %6051, 0
  %6053 = extractvalue %dx.types.CBufRet.f32 %6051, 1
  %6054 = extractvalue %dx.types.CBufRet.f32 %6051, 3
  %6055 = fmul fast float %6054, %6043
  %6056 = fmul fast float %6054, %6047
  %6057 = fadd fast float %6055, %6052
  %6058 = fadd fast float %6056, %6053
  %6059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6060 = extractvalue %dx.types.CBufRet.f32 %6059, 0
  %6061 = extractvalue %dx.types.CBufRet.f32 %6059, 1
  %6062 = fsub fast float %6057, %6060
  %6063 = fsub fast float %6058, %6061
  %6064 = fcmp fast olt float %6062, 0.000000e+00
  %6065 = fcmp fast olt float %6063, 0.000000e+00
  %6066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6067 = extractvalue %dx.types.CBufRet.f32 %6066, 0
  %6068 = extractvalue %dx.types.CBufRet.f32 %6066, 1
  %6069 = extractvalue %dx.types.CBufRet.f32 %6066, 2
  %6070 = extractvalue %dx.types.CBufRet.f32 %6066, 3
  %6071 = select i1 %6064, float %6067, float %6069
  %6072 = select i1 %6065, float %6068, float %6070
  %6073 = fmul fast float %6071, %6062
  %6074 = fmul fast float %6072, %6063
  %6075 = call float @dx.op.unary.f32(i32 6, float %6073)  ; FAbs(value)
  %6076 = call float @dx.op.unary.f32(i32 6, float %6074)  ; FAbs(value)
  %6077 = extractvalue %dx.types.CBufRet.f32 %5386, 0
  %6078 = call float @dx.op.binary.f32(i32 35, float %6075, float %6076)  ; FMax(a,b)
  %6079 = fsub fast float %6077, %6078
  %6080 = call float @dx.op.unary.f32(i32 7, float %6079)  ; Saturate(value)
  %6081 = fcmp fast ogt float %6080, 0.000000e+00
  br i1 %6081, label %6082, label %6123, !dx.controlflow.hints !100

; <label>:6082                                    ; preds = %6024
  %6083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %35, float %6057, float %6058, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6084 = extractvalue %dx.types.ResRet.f32 %6083, 1
  %6085 = fcmp fast ogt float %6084, 0.000000e+00
  br i1 %6085, label %6086, label %6118

; <label>:6086                                    ; preds = %6082
  %6087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %35, float %6057, float %6058, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6088 = extractvalue %dx.types.ResRet.f32 %6087, 0
  %6089 = extractvalue %dx.types.ResRet.f32 %6087, 1
  %6090 = extractvalue %dx.types.ResRet.f32 %6087, 2
  %6091 = extractvalue %dx.types.ResRet.f32 %6087, 3
  %6092 = fsub fast float 1.000000e+00, %6039
  %6093 = fsub fast float %6092, %6050
  %6094 = fmul fast float %6093, 0x400921FB60000000
  %6095 = fadd fast float %6094, 0x3FF921FB60000000
  %6096 = call float @dx.op.unary.f32(i32 13, float %6095)  ; Sin(value)
  %6097 = fadd fast float %6096, -1.000000e+00
  %6098 = fmul fast float %6097, 0x3FD45F3060000000
  %6099 = fmul fast float %6093, 0x401921FB60000000
  %6100 = fadd fast float %6099, 0x400921FB60000000
  %6101 = call float @dx.op.unary.f32(i32 13, float %6100)  ; Sin(value)
  %6102 = fadd fast float %6101, 0x3E7777A5C0000000
  %6103 = fmul fast float %6102, 0x3FC45F3060000000
  %6104 = fmul fast float %6093, 0x4022D97C80000000
  %6105 = fadd fast float %6104, 0x4012D97C80000000
  %6106 = call float @dx.op.unary.f32(i32 13, float %6105)  ; Sin(value)
  %6107 = fadd fast float %6106, 1.000000e+00
  %6108 = fmul fast float %6107, 0x3FBB2995E0000000
  %6109 = fmul fast float %6093, 0x402921FB60000000
  %6110 = fadd fast float %6109, 0x401921FB60000000
  %6111 = call float @dx.op.unary.f32(i32 13, float %6110)  ; Sin(value)
  %6112 = fadd fast float %6111, 0xBE8777A5C0000000
  %6113 = fmul fast float %6112, 0x3FB45F3060000000
  %6114 = call float @dx.op.dot4.f32(i32 56, float %6088, float %6089, float %6090, float %6091, float %6098, float %6103, float %6108, float %6113)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6115 = fmul fast float %6114, 0xBFF7154760000000
  %6116 = call float @dx.op.unary.f32(i32 21, float %6115)  ; Exp(value)
  %6117 = call float @dx.op.unary.f32(i32 7, float %6116)  ; Saturate(value)
  br label %6118

; <label>:6118                                    ; preds = %6086, %6082
  %6119 = phi float [ %6117, %6086 ], [ 1.000000e+00, %6082 ]
  %6120 = fadd fast float %6119, -1.000000e+00
  %6121 = fmul fast float %6120, %6080
  %6122 = fadd fast float %6121, 1.000000e+00
  br label %6123

; <label>:6123                                    ; preds = %6118, %6024
  %6124 = phi float [ %6122, %6118 ], [ 1.000000e+00, %6024 ]
  %6125 = fmul fast float %6124, %6020
  %6126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6127 = extractvalue %dx.types.CBufRet.f32 %6126, 0
  %6128 = extractvalue %dx.types.CBufRet.f32 %6126, 1
  %6129 = extractvalue %dx.types.CBufRet.f32 %6126, 2
  %6130 = fadd fast float %6127, %145
  %6131 = fadd fast float %6128, %146
  %6132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6133 = extractvalue %dx.types.CBufRet.f32 %6132, 1
  %6134 = fsub fast float -0.000000e+00, %6130
  %6135 = fsub fast float -0.000000e+00, %6131
  %6136 = fsub fast float -0.000000e+00, %147
  %6137 = fsub fast float %6136, %6129
  %6138 = fadd fast float %6137, %6133
  %6139 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6134, float %6135, float %6138)  ; Dot3(ax,ay,az,bx,by,bz)
  %6140 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5372, float %5373, float %5374)  ; Dot3(ax,ay,az,bx,by,bz)
  %6141 = fdiv fast float 1.000000e+00, %6140
  %6142 = fmul fast float %6141, %6139
  %6143 = fmul fast float %5372, %6142
  %6144 = fmul fast float %5373, %6142
  %6145 = fadd fast float %6143, %6130
  %6146 = fadd fast float %6144, %6131
  %6147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6148 = extractvalue %dx.types.CBufRet.f32 %6147, 0
  %6149 = extractvalue %dx.types.CBufRet.f32 %6147, 1
  %6150 = fsub fast float %6145, %6148
  %6151 = fsub fast float %6146, %6149
  %6152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6153 = extractvalue %dx.types.CBufRet.f32 %6152, 2
  %6154 = extractvalue %dx.types.CBufRet.f32 %6152, 3
  %6155 = fmul fast float %6150, %6153
  %6156 = fmul fast float %6151, %6154
  %6157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.i32 %6157, 3
  %6159 = icmp eq i32 %6158, 0
  br i1 %6159, label %6165, label %6160

; <label>:6160                                    ; preds = %6123
  %6161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %6155, float %6156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6162 = extractvalue %dx.types.ResRet.f32 %6161, 0
  %6163 = extractvalue %dx.types.ResRet.f32 %6161, 1
  %6164 = extractvalue %dx.types.ResRet.f32 %6161, 2
  br label %6170

; <label>:6165                                    ; preds = %6123
  %6166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %6155, float %6156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6167 = extractvalue %dx.types.ResRet.f32 %6166, 0
  %6168 = extractvalue %dx.types.ResRet.f32 %6166, 1
  %6169 = extractvalue %dx.types.ResRet.f32 %6166, 2
  br label %6170

; <label>:6170                                    ; preds = %6165, %6160
  %6171 = phi float [ %6162, %6160 ], [ %6167, %6165 ]
  %6172 = phi float [ %6163, %6160 ], [ %6168, %6165 ]
  %6173 = phi float [ %6164, %6160 ], [ %6169, %6165 ]
  %6174 = extractvalue %dx.types.CBufRet.f32 %6132, 2
  %6175 = fmul fast float %6174, %6171
  %6176 = extractvalue %dx.types.CBufRet.f32 %6132, 0
  %6177 = fsub fast float %6142, %6176
  %6178 = fsub fast float %6177, %6175
  %6179 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6178)  ; FMax(a,b)
  %6180 = fmul fast float %6179, %6172
  %6181 = call float @dx.op.binary.f32(i32 36, float %6173, float %6180)  ; FMin(a,b)
  %6182 = fmul fast float %6181, 0xBFF7154760000000
  %6183 = call float @dx.op.unary.f32(i32 21, float %6182)  ; Exp(value)
  %6184 = fmul fast float %6125, %6183
  br label %6185

; <label>:6185                                    ; preds = %6170, %6019
  %6186 = phi float [ %6184, %6170 ], [ %6020, %6019 ]
  %6187 = call float @dx.op.binary.f32(i32 36, float %6186, float %6186)  ; FMin(a,b)
  %6188 = call float @dx.op.binary.f32(i32 36, float %6186, float %6187)  ; FMin(a,b)
  %6189 = fcmp fast ogt float %6188, 0.000000e+00
  br i1 %6189, label %6190, label %6377, !dx.controlflow.hints !101

; <label>:6190                                    ; preds = %6185
  %6191 = fmul fast float %6186, %5383
  %6192 = fmul fast float %6186, %5384
  %6193 = fmul fast float %6186, %5385
  %6194 = fsub fast float %5372, %5107
  %6195 = fsub fast float %5373, %5106
  %6196 = fsub fast float %5374, %5105
  %6197 = call float @dx.op.dot3.f32(i32 55, float %6194, float %6195, float %6196, float %6194, float %6195, float %6196)  ; Dot3(ax,ay,az,bx,by,bz)
  %6198 = call float @dx.op.unary.f32(i32 25, float %6197)  ; Rsqrt(value)
  %6199 = fmul fast float %6198, %6194
  %6200 = fmul fast float %6198, %6195
  %6201 = fmul fast float %6198, %6196
  %6202 = call float @dx.op.dot3.f32(i32 55, float %5372, float %5373, float %5374, float %5114, float %5115, float %5116)  ; Dot3(ax,ay,az,bx,by,bz)
  %6203 = call float @dx.op.dot3.f32(i32 55, float %5104, float %5103, float %5102, float %6199, float %6200, float %6201)  ; Dot3(ax,ay,az,bx,by,bz)
  %6204 = call float @dx.op.unary.f32(i32 7, float %6202)  ; Saturate(value)
  %6205 = fmul fast float %6204, %6204
  %6206 = fmul fast float %6205, %5134
  %6207 = call float @dx.op.unary.f32(i32 7, float %6206)  ; Saturate(value)
  %6208 = fmul fast float %6207, %6204
  %6209 = call float @dx.op.dot3.f32(i32 55, float %5114, float %5115, float %5116, float %6199, float %6200, float %6201)  ; Dot3(ax,ay,az,bx,by,bz)
  %6210 = fmul fast float %6209, %6209
  %6211 = call float @dx.op.unary.f32(i32 6, float %6202)  ; FAbs(value)
  %6212 = fsub fast float 1.000000e+00, %5117
  %6213 = call float @dx.op.binary.f32(i32 35, float %6212, float 0x3F847AE140000000)  ; FMax(a,b)
  %6214 = fmul fast float %6213, %6213
  %6215 = fmul fast float %6214, %6214
  %6216 = fsub fast float 1.000000e+00, %6215
  %6217 = fmul fast float %5121, %5121
  %6218 = fmul fast float %6217, %6216
  %6219 = fadd fast float %6218, %6215
  %6220 = bitcast float %6219 to i32
  %6221 = ashr i32 %6220, 1
  %6222 = add nsw i32 %6221, 532487669
  %6223 = bitcast i32 %6222 to float
  %6224 = fadd fast float %6223, %5121
  %6225 = fmul fast float %6215, %6210
  %6226 = fsub fast float 1.000000e+00, %6210
  %6227 = fadd fast float %6226, %6225
  %6228 = fmul fast float %6211, %6211
  %6229 = fmul fast float %6228, %6216
  %6230 = fadd fast float %6229, %6215
  %6231 = bitcast float %6230 to i32
  %6232 = ashr i32 %6231, 1
  %6233 = add nsw i32 %6232, 532487669
  %6234 = bitcast i32 %6233 to float
  %6235 = fadd fast float %6234, %6211
  %6236 = fmul fast float %6227, %6227
  %6237 = fmul fast float %6236, %6224
  %6238 = fmul fast float %6237, %6235
  %6239 = fdiv fast float 0x3FF0A00000000000, %6238
  %6240 = fmul fast float %6239, %6215
  %6241 = fmul fast float %5234, 0x3FF9999980000000
  %6242 = fsub fast float 5.000000e+00, %6241
  %6243 = call float @dx.op.unary.f32(i32 6, float %6203)  ; FAbs(value)
  %6244 = fsub fast float 1.000000e+00, %6243
  %6245 = fmul fast float %5234, 0x41D9660740000000
  %6246 = fadd fast float %6245, 0xC1EFBF8940000000
  %6247 = bitcast float %6244 to i32
  %6248 = sitofp i32 %6247 to float
  %6249 = fmul fast float %6248, %6242
  %6250 = fadd fast float %6246, %6249
  %6251 = fptosi float %6250 to i32
  %6252 = bitcast i32 %6251 to float
  %6253 = fsub fast float 1.000000e+00, %5111
  %6254 = fsub fast float 1.000000e+00, %5112
  %6255 = fsub fast float 1.000000e+00, %5119
  %6256 = fmul fast float %6252, %6253
  %6257 = fmul fast float %6252, %6254
  %6258 = fmul fast float %6252, %6255
  %6259 = fadd fast float %6256, %5111
  %6260 = fadd fast float %6257, %5112
  %6261 = fadd fast float %6258, %5119
  br i1 %5257, label %6262, label %6285

; <label>:6262                                    ; preds = %6190
  %6263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %4794, float %6243, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6264 = extractvalue %dx.types.ResRet.f32 %6263, 0
  %6265 = extractvalue %dx.types.ResRet.f32 %6263, 1
  %6266 = extractvalue %dx.types.ResRet.f32 %6263, 2
  %6267 = fadd fast float %6264, -5.000000e-01
  %6268 = fadd fast float %6265, -5.000000e-01
  %6269 = fadd fast float %6266, -5.000000e-01
  %6270 = fmul fast float %5111, 4.000000e+00
  %6271 = fmul fast float %6270, %6253
  %6272 = fmul fast float %6271, %6267
  %6273 = fmul fast float %5112, 4.000000e+00
  %6274 = fmul fast float %6273, %6254
  %6275 = fmul fast float %6274, %6268
  %6276 = fmul fast float %5119, 4.000000e+00
  %6277 = fmul fast float %6276, %6255
  %6278 = fmul fast float %6277, %6269
  %6279 = fadd fast float %6272, %6259
  %6280 = fadd fast float %6275, %6260
  %6281 = fadd fast float %6278, %6261
  %6282 = call float @dx.op.unary.f32(i32 7, float %6279)  ; Saturate(value)
  %6283 = call float @dx.op.unary.f32(i32 7, float %6280)  ; Saturate(value)
  %6284 = call float @dx.op.unary.f32(i32 7, float %6281)  ; Saturate(value)
  br label %6285

; <label>:6285                                    ; preds = %6262, %6190
  %6286 = phi float [ %6282, %6262 ], [ %6259, %6190 ]
  %6287 = phi float [ %6283, %6262 ], [ %6260, %6190 ]
  %6288 = phi float [ %6284, %6262 ], [ %6261, %6190 ]
  %6289 = fmul fast float %6202, 9.843750e-01
  %6290 = fadd fast float %6289, 7.812500e-03
  %6291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %6290, float %5238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6292 = extractvalue %dx.types.ResRet.f32 %6291, 0
  %6293 = extractvalue %dx.types.ResRet.f32 %6291, 1
  %6294 = extractvalue %dx.types.ResRet.f32 %6291, 2
  %6295 = extractvalue %dx.types.ResRet.f32 %6291, 3
  %6296 = fsub fast float %6294, %6292
  %6297 = fsub fast float %6295, %6293
  %6298 = fmul fast float %6296, %5244
  %6299 = fmul fast float %6297, %5244
  %6300 = fadd fast float %6298, %6292
  %6301 = fadd fast float %6299, %6293
  %6302 = fmul fast float %6300, %5111
  %6303 = fmul fast float %6300, %5112
  %6304 = fmul fast float %6300, %5119
  %6305 = fadd fast float %6302, %6301
  %6306 = fadd fast float %6303, %6301
  %6307 = fadd fast float %6304, %6301
  br i1 %5257, label %6308, label %6331

; <label>:6308                                    ; preds = %6285
  %6309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %4794, float %6202, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6310 = extractvalue %dx.types.ResRet.f32 %6309, 0
  %6311 = extractvalue %dx.types.ResRet.f32 %6309, 1
  %6312 = extractvalue %dx.types.ResRet.f32 %6309, 2
  %6313 = fadd fast float %6310, -5.000000e-01
  %6314 = fadd fast float %6311, -5.000000e-01
  %6315 = fadd fast float %6312, -5.000000e-01
  %6316 = fmul fast float %5111, 4.000000e+00
  %6317 = fmul fast float %6316, %6253
  %6318 = fmul fast float %6317, %6313
  %6319 = fmul fast float %5112, 4.000000e+00
  %6320 = fmul fast float %6319, %6254
  %6321 = fmul fast float %6320, %6314
  %6322 = fmul fast float %5119, 4.000000e+00
  %6323 = fmul fast float %6322, %6255
  %6324 = fmul fast float %6323, %6315
  %6325 = fadd fast float %6318, %6305
  %6326 = fadd fast float %6321, %6306
  %6327 = fadd fast float %6324, %6307
  %6328 = call float @dx.op.unary.f32(i32 7, float %6325)  ; Saturate(value)
  %6329 = call float @dx.op.unary.f32(i32 7, float %6326)  ; Saturate(value)
  %6330 = call float @dx.op.unary.f32(i32 7, float %6327)  ; Saturate(value)
  br label %6331

; <label>:6331                                    ; preds = %6308, %6285
  %6332 = phi float [ %6328, %6308 ], [ %6305, %6285 ]
  %6333 = phi float [ %6329, %6308 ], [ %6306, %6285 ]
  %6334 = phi float [ %6330, %6308 ], [ %6307, %6285 ]
  %6335 = call float @dx.op.binary.f32(i32 35, float %6333, float %6334)  ; FMax(a,b)
  %6336 = call float @dx.op.binary.f32(i32 35, float %6332, float %6335)  ; FMax(a,b)
  %6337 = fsub fast float 1.000000e+00, %6336
  %6338 = fmul fast float %6286, %6240
  %6339 = fmul fast float %6287, %6240
  %6340 = fmul fast float %6288, %6240
  %6341 = fsub fast float 1.000000e+00, %6203
  %6342 = bitcast float %6341 to i32
  %6343 = sitofp i32 %6342 to float
  %6344 = fmul fast float %6343, 5.000000e+00
  %6345 = fadd fast float %6344, 0xC1EFBF8940000000
  %6346 = fptosi float %6345 to i32
  %6347 = bitcast i32 %6346 to float
  %6348 = fmul fast float %6347, %4795
  %6349 = fmul fast float %6337, %6348
  %6350 = fmul fast float %6349, %5307
  %6351 = fmul fast float %6349, %5308
  %6352 = fmul fast float %6349, %5309
  %6353 = fadd fast float %6350, %6338
  %6354 = fadd fast float %6351, %6339
  %6355 = fadd fast float %6352, %6340
  %6356 = fmul fast float %6208, %6191
  %6357 = fmul fast float %6356, %6337
  %6358 = fmul fast float %6208, %6192
  %6359 = fmul fast float %6358, %6337
  %6360 = fmul fast float %6208, %6193
  %6361 = fmul fast float %6360, %6337
  %6362 = fmul fast float %6356, %6353
  %6363 = fmul fast float %6358, %6354
  %6364 = fmul fast float %6360, %6355
  %6365 = fadd fast float %6357, %5291
  %6366 = fmul fast float %6365, %4791
  %6367 = fadd fast float %6359, %5292
  %6368 = fmul fast float %6367, %4791
  %6369 = fadd fast float %6361, %5293
  %6370 = fmul fast float %6369, %4791
  %6371 = fadd fast float %6362, %5360
  %6372 = fmul fast float %6371, %4791
  %6373 = fadd fast float %6363, %5363
  %6374 = fmul fast float %6373, %4791
  %6375 = fadd fast float %6364, %5366
  %6376 = fmul fast float %6375, %4791
  br label %6377

; <label>:6377                                    ; preds = %6331, %6185, %5284
  %6378 = phi float [ %5361, %5284 ], [ %5361, %6185 ], [ %6372, %6331 ]
  %6379 = phi float [ %5364, %5284 ], [ %5364, %6185 ], [ %6374, %6331 ]
  %6380 = phi float [ %5367, %5284 ], [ %5367, %6185 ], [ %6376, %6331 ]
  %6381 = phi float [ %5356, %5284 ], [ %5356, %6185 ], [ %6366, %6331 ]
  %6382 = phi float [ %5357, %5284 ], [ %5357, %6185 ], [ %6368, %6331 ]
  %6383 = phi float [ %5358, %5284 ], [ %5358, %6185 ], [ %6370, %6331 ]
  %6384 = fmul fast float %4791, %4791
  %6385 = fmul fast float %6384, %5333
  %6386 = fmul fast float %6384, %5334
  %6387 = fmul fast float %6384, %5335
  %6388 = fadd fast float %6385, 1.000000e+00
  %6389 = fadd fast float %6386, 1.000000e+00
  %6390 = fadd fast float %6387, 1.000000e+00
  %6391 = call float @dx.op.dot3.f32(i32 55, float %6388, float %6389, float %6390, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6392 = fsub fast float 1.000000e+00, %6391
  %6393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6394 = extractvalue %dx.types.CBufRet.f32 %6393, 0
  %6395 = fmul fast float %6394, %5339
  %6396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6397 = extractvalue %dx.types.CBufRet.f32 %6396, 3
  %6398 = fsub fast float 1.000000e+00, %4798
  %6399 = call float @dx.op.unary.f32(i32 7, float %6398)  ; Saturate(value)
  %6400 = fadd fast float %6383, %4797
  %6401 = fmul fast float %6400, %4798
  %6402 = fmul fast float %6399, %6397
  %6403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.f32 %6403, 3
  %6405 = fmul fast float %6381, %5108
  %6406 = fmul fast float %6382, %5109
  %6407 = fmul fast float %6383, %5110
  %6408 = fcmp fast ogt float %73, %167
  %6409 = and i1 %6408, %4840
  %6410 = or i1 %4919, %6409
  %6411 = icmp eq i32 %4839, 2
  %6412 = fcmp fast ole float %73, %167
  %6413 = and i1 %6412, %6411
  %6414 = or i1 %6413, %6410
  br i1 %6409, label %6415, label %6672

; <label>:6415                                    ; preds = %6377
  %6416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6417 = extractvalue %dx.types.CBufRet.f32 %6416, 2
  %6418 = extractvalue %dx.types.CBufRet.f32 %6416, 3
  %6419 = fmul fast float %6417, %82
  %6420 = fmul fast float %6418, %83
  %6421 = call float @dx.op.unary.f32(i32 7, float %6419)  ; Saturate(value)
  %6422 = call float @dx.op.unary.f32(i32 7, float %6420)  ; Saturate(value)
  %6423 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %6421, float %6422, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6424 = extractvalue %dx.types.ResRet.f32 %6423, 0
  %6425 = extractvalue %dx.types.ResRet.f32 %6423, 1
  %6426 = extractvalue %dx.types.ResRet.f32 %6423, 2
  %6427 = extractvalue %dx.types.ResRet.f32 %6423, 3
  %6428 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %6421, float %6422, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6429 = extractvalue %dx.types.ResRet.f32 %6428, 0
  %6430 = extractvalue %dx.types.ResRet.f32 %6428, 1
  %6431 = extractvalue %dx.types.ResRet.f32 %6428, 2
  %6432 = extractvalue %dx.types.ResRet.f32 %6428, 3
  %6433 = call float @dx.op.binary.f32(i32 35, float %6425, float %6426)  ; FMax(a,b)
  %6434 = call float @dx.op.binary.f32(i32 35, float %6424, float %6433)  ; FMax(a,b)
  %6435 = call float @dx.op.binary.f32(i32 35, float %6434, float %6427)  ; FMax(a,b)
  %6436 = call float @dx.op.binary.f32(i32 36, float %6430, float %6431)  ; FMin(a,b)
  %6437 = call float @dx.op.binary.f32(i32 36, float %6429, float %6436)  ; FMin(a,b)
  %6438 = call float @dx.op.binary.f32(i32 36, float %6437, float %6432)  ; FMin(a,b)
  %6439 = fmul fast float %6435, 2.550000e+02
  %6440 = fadd fast float %6439, 0x3F70101020000000
  %6441 = fptoui float %6440 to i32
  %6442 = fmul fast float %6438, 2.550000e+02
  %6443 = fadd fast float %6442, 0x3F70101020000000
  %6444 = fptoui float %6443 to i32
  %6445 = icmp ult i32 %6441, %6444
  br i1 %6445, label %6446, label %6614

; <label>:6446                                    ; preds = %6415
  %6447 = fcmp fast ogt float %72, 9.843750e-01
  %6448 = fadd fast float %73, -4.000000e+00
  %6449 = select i1 %6447, float -4.000000e+00, float %6448
  %6450 = call float @dx.op.binary.f32(i32 35, float %6449, float 0.000000e+00)  ; FMax(a,b)
  %6451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6452 = extractvalue %dx.types.CBufRet.f32 %6451, 0
  %6453 = fadd fast float %6452, %6450
  %6454 = extractvalue %dx.types.CBufRet.f32 %6451, 2
  %6455 = fmul fast float %6453, %6454
  %6456 = call float @dx.op.unary.f32(i32 23, float %6455)  ; Log(value)
  %6457 = extractvalue %dx.types.CBufRet.f32 %6451, 3
  %6458 = fmul fast float %6457, %6456
  %6459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.f32 %6459, 2
  %6461 = fmul fast float %6458, %6460
  %6462 = call float @dx.op.unary.f32(i32 7, float %6461)  ; Saturate(value)
  %6463 = uitofp i32 %6441 to float
  %6464 = uitofp i32 %6444 to float
  %6465 = fadd fast float %6463, 5.000000e-01
  %6466 = fadd fast float %6464, 5.000000e-01
  %6467 = fmul fast float %6460, %6465
  %6468 = fmul fast float %6460, %6466
  %6469 = fadd fast float %6467, 0x3F0FFB4800000000
  %6470 = fadd fast float %6468, 0xBF0FFB4800000000
  %6471 = call float @dx.op.binary.f32(i32 35, float %6462, float %6469)  ; FMax(a,b)
  %6472 = call float @dx.op.binary.f32(i32 36, float %6471, float %6470)  ; FMin(a,b)
  %6473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6474 = extractvalue %dx.types.CBufRet.f32 %6473, 1
  %6475 = extractvalue %dx.types.CBufRet.f32 %6473, 2
  %6476 = extractvalue %dx.types.CBufRet.f32 %6473, 0
  %6477 = fmul fast float %6474, %6472
  %6478 = fadd fast float %6476, %6477
  %6479 = fadd fast float %6476, %6475
  %6480 = fsub fast float %6474, %6475
  %6481 = fadd fast float %6480, %6476
  %6482 = call float @dx.op.binary.f32(i32 35, float %6478, float %6479)  ; FMax(a,b)
  %6483 = call float @dx.op.binary.f32(i32 36, float %6482, float %6481)  ; FMin(a,b)
  %6484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %6421, float %6422, float %6483, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6485 = extractvalue %dx.types.ResRet.f32 %6484, 0
  %6486 = extractvalue %dx.types.ResRet.f32 %6484, 1
  %6487 = extractvalue %dx.types.ResRet.f32 %6484, 2
  %6488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6489 = extractvalue %dx.types.CBufRet.i32 %6488, 0
  %6490 = extractvalue %dx.types.CBufRet.i32 %6488, 1
  %6491 = uitofp i32 %6489 to float
  %6492 = uitofp i32 %6490 to float
  %6493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6494 = extractvalue %dx.types.CBufRet.f32 %6493, 0
  %6495 = extractvalue %dx.types.CBufRet.f32 %6493, 1
  %6496 = fmul fast float %6491, %6421
  %6497 = fmul fast float %6492, %6422
  %6498 = fadd fast float %6496, -5.000000e-01
  %6499 = fadd fast float %6497, -5.000000e-01
  %6500 = call float @dx.op.unary.f32(i32 22, float %6498)  ; Frc(value)
  %6501 = call float @dx.op.unary.f32(i32 22, float %6499)  ; Frc(value)
  %6502 = fmul fast float %6500, %6500
  %6503 = fmul fast float %6502, %6500
  %6504 = fsub fast float 3.000000e+00, %6500
  %6505 = fmul fast float %6502, %6504
  %6506 = fmul fast float %6500, 3.000000e+00
  %6507 = fmul fast float %6503, 3.000000e+00
  %6508 = fmul fast float %6502, 6.000000e+00
  %6509 = fsub fast float %6507, %6508
  %6510 = fadd fast float %6509, 4.000000e+00
  %6511 = fmul fast float %6510, 0x3FC5555560000000
  %6512 = fmul fast float %6503, -3.000000e+00
  %6513 = fadd fast float %6502, %6500
  %6514 = fmul fast float %6513, 3.000000e+00
  %6515 = fadd fast float %6512, 1.000000e+00
  %6516 = fadd fast float %6515, %6514
  %6517 = fmul fast float %6503, 0x3FC5555560000000
  %6518 = fmul fast float %6501, %6501
  %6519 = fmul fast float %6518, %6501
  %6520 = fsub fast float 3.000000e+00, %6501
  %6521 = fmul fast float %6518, %6520
  %6522 = fmul fast float %6501, 3.000000e+00
  %6523 = fmul fast float %6519, 3.000000e+00
  %6524 = fmul fast float %6518, 6.000000e+00
  %6525 = fsub fast float %6523, %6524
  %6526 = fadd fast float %6525, 4.000000e+00
  %6527 = fmul fast float %6526, 0x3FC5555560000000
  %6528 = fmul fast float %6519, -3.000000e+00
  %6529 = fadd fast float %6518, %6501
  %6530 = fmul fast float %6529, 3.000000e+00
  %6531 = fadd fast float %6528, 1.000000e+00
  %6532 = fadd fast float %6531, %6530
  %6533 = fmul fast float %6519, 0x3FC5555560000000
  %6534 = fadd fast float %6500, 1.000000e+00
  %6535 = fsub fast float 1.000000e+00, %6506
  %6536 = fadd fast float %6535, %6505
  %6537 = fadd fast float %6536, %6510
  %6538 = fmul fast float %6537, 0x3FC5555560000000
  %6539 = fdiv fast float %6511, %6538
  %6540 = fsub fast float %6534, %6539
  %6541 = fsub fast float 1.000000e+00, %6500
  %6542 = fadd fast float %6516, %6503
  %6543 = fmul fast float %6542, 0x3FC5555560000000
  %6544 = fdiv fast float %6517, %6543
  %6545 = fadd fast float %6541, %6544
  %6546 = fadd fast float %6501, 1.000000e+00
  %6547 = fsub fast float 1.000000e+00, %6522
  %6548 = fadd fast float %6547, %6521
  %6549 = fadd fast float %6548, %6526
  %6550 = fmul fast float %6549, 0x3FC5555560000000
  %6551 = fdiv fast float %6527, %6550
  %6552 = fsub fast float %6546, %6551
  %6553 = fsub fast float 1.000000e+00, %6501
  %6554 = fadd fast float %6532, %6519
  %6555 = fmul fast float %6554, 0x3FC5555560000000
  %6556 = fdiv fast float %6533, %6555
  %6557 = fadd fast float %6556, %6553
  %6558 = fmul fast float %6540, %6494
  %6559 = fsub fast float %6421, %6558
  %6560 = fmul fast float %6545, %6494
  %6561 = fadd fast float %6560, %6421
  %6562 = fmul fast float %6557, %6495
  %6563 = fadd fast float %6562, %6422
  %6564 = fmul fast float %6552, %6495
  %6565 = fsub fast float %6422, %6564
  %6566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %6559, float %6565, float %6483, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6567 = extractvalue %dx.types.ResRet.f32 %6566, 0
  %6568 = extractvalue %dx.types.ResRet.f32 %6566, 1
  %6569 = extractvalue %dx.types.ResRet.f32 %6566, 2
  %6570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %6561, float %6565, float %6483, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6571 = extractvalue %dx.types.ResRet.f32 %6570, 0
  %6572 = extractvalue %dx.types.ResRet.f32 %6570, 1
  %6573 = extractvalue %dx.types.ResRet.f32 %6570, 2
  %6574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %6559, float %6563, float %6483, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6575 = extractvalue %dx.types.ResRet.f32 %6574, 0
  %6576 = extractvalue %dx.types.ResRet.f32 %6574, 1
  %6577 = extractvalue %dx.types.ResRet.f32 %6574, 2
  %6578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %6561, float %6563, float %6483, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6579 = extractvalue %dx.types.ResRet.f32 %6578, 0
  %6580 = extractvalue %dx.types.ResRet.f32 %6578, 1
  %6581 = extractvalue %dx.types.ResRet.f32 %6578, 2
  %6582 = fsub fast float %6575, %6567
  %6583 = fsub fast float %6576, %6568
  %6584 = fsub fast float %6577, %6569
  %6585 = fmul fast float %6582, %6555
  %6586 = fmul fast float %6583, %6555
  %6587 = fmul fast float %6584, %6555
  %6588 = fadd fast float %6585, %6567
  %6589 = fadd fast float %6586, %6568
  %6590 = fadd fast float %6587, %6569
  %6591 = fsub fast float %6579, %6571
  %6592 = fsub fast float %6580, %6572
  %6593 = fsub fast float %6581, %6573
  %6594 = fmul fast float %6591, %6555
  %6595 = fmul fast float %6592, %6555
  %6596 = fmul fast float %6593, %6555
  %6597 = fsub fast float %6571, %6588
  %6598 = fadd fast float %6597, %6594
  %6599 = fsub fast float %6572, %6589
  %6600 = fadd fast float %6599, %6595
  %6601 = fsub fast float %6573, %6590
  %6602 = fadd fast float %6601, %6596
  %6603 = fmul fast float %6598, %6543
  %6604 = fmul fast float %6600, %6543
  %6605 = fmul fast float %6602, %6543
  %6606 = fadd fast float %6603, %6588
  %6607 = fadd fast float %6604, %6589
  %6608 = fadd fast float %6605, %6590
  %6609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6610 = extractvalue %dx.types.CBufRet.f32 %6609, 1
  %6611 = fmul fast float %6606, %6610
  %6612 = fmul fast float %6607, %6610
  %6613 = fmul fast float %6608, %6610
  br label %6614

; <label>:6614                                    ; preds = %6446, %6415
  %6615 = phi float [ %6485, %6446 ], [ 1.000000e+00, %6415 ]
  %6616 = phi float [ %6486, %6446 ], [ 1.000000e+00, %6415 ]
  %6617 = phi float [ %6487, %6446 ], [ 1.000000e+00, %6415 ]
  %6618 = phi float [ %6611, %6446 ], [ 0.000000e+00, %6415 ]
  %6619 = phi float [ %6612, %6446 ], [ 0.000000e+00, %6415 ]
  %6620 = phi float [ %6613, %6446 ], [ 0.000000e+00, %6415 ]
  %6621 = fmul fast float %6618, %6392
  %6622 = fmul fast float %6619, %6392
  %6623 = fmul fast float %6620, %6392
  %6624 = call float @dx.op.dot3.f32(i32 55, float %6615, float %6616, float %6617, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6625 = call float @dx.op.dot3.f32(i32 55, float %6621, float %6622, float %6623, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6626 = select i1 %206, float %6624, float %6615
  %6627 = select i1 %206, float %6624, float %6616
  %6628 = select i1 %206, float 1.000000e+00, float %6617
  %6629 = select i1 %206, float %6625, float %6621
  %6630 = select i1 %206, float 0.000000e+00, float %6622
  %6631 = select i1 %206, float 0.000000e+00, float %6623
  %6632 = fmul fast float %6626, %6405
  %6633 = fmul fast float %6627, %6406
  %6634 = fmul fast float %6628, %6407
  %6635 = fadd fast float %6632, %6629
  %6636 = fadd fast float %6633, %6630
  %6637 = fadd fast float %6631, %6634
  %6638 = fmul fast float %6626, %6378
  %6639 = fmul fast float %6627, %6379
  %6640 = fmul fast float %6628, %6380
  %6641 = fmul fast float %115, %6417
  %6642 = fmul fast float %117, %6418
  %6643 = fsub fast float 1.000000e+00, %6641
  %6644 = fsub fast float 1.000000e+00, %6642
  %6645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6646 = extractvalue %dx.types.CBufRet.f32 %6645, 0
  %6647 = extractvalue %dx.types.CBufRet.f32 %6645, 1
  %6648 = extractvalue %dx.types.CBufRet.f32 %6645, 2
  %6649 = fmul fast float %6643, %6646
  %6650 = fmul fast float %6643, %6647
  %6651 = fmul fast float %6643, %6648
  %6652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6653 = extractvalue %dx.types.CBufRet.f32 %6652, 0
  %6654 = extractvalue %dx.types.CBufRet.f32 %6652, 1
  %6655 = extractvalue %dx.types.CBufRet.f32 %6652, 2
  %6656 = fmul fast float %6644, %6653
  %6657 = fmul fast float %6644, %6654
  %6658 = fmul fast float %6644, %6655
  %6659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6660 = extractvalue %dx.types.CBufRet.f32 %6659, 0
  %6661 = extractvalue %dx.types.CBufRet.f32 %6659, 1
  %6662 = extractvalue %dx.types.CBufRet.f32 %6659, 2
  %6663 = fadd fast float %6656, %6660
  %6664 = fadd fast float %6663, %6649
  %6665 = fadd fast float %6657, %6661
  %6666 = fadd fast float %6665, %6650
  %6667 = fadd fast float %6658, %6662
  %6668 = fadd fast float %6667, %6651
  %6669 = fmul fast float %6664, %167
  %6670 = fmul fast float %6666, %167
  %6671 = fmul fast float %6668, %167
  br label %6672

; <label>:6672                                    ; preds = %6614, %6377
  %6673 = phi float [ %6669, %6614 ], [ %145, %6377 ]
  %6674 = phi float [ %6670, %6614 ], [ %146, %6377 ]
  %6675 = phi float [ %6671, %6614 ], [ %147, %6377 ]
  %6676 = phi float [ %167, %6614 ], [ %73, %6377 ]
  %6677 = phi float [ %6635, %6614 ], [ %6405, %6377 ]
  %6678 = phi float [ %6636, %6614 ], [ %6406, %6377 ]
  %6679 = phi float [ %6637, %6614 ], [ %6407, %6377 ]
  %6680 = phi float [ %6638, %6614 ], [ %6378, %6377 ]
  %6681 = phi float [ %6639, %6614 ], [ %6379, %6377 ]
  %6682 = phi float [ %6640, %6614 ], [ %6380, %6377 ]
  %6683 = phi float [ %6615, %6614 ], [ 1.000000e+00, %6377 ]
  br i1 %6414, label %7838, label %6684

; <label>:6684                                    ; preds = %6672
  %6685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6686 = extractvalue %dx.types.CBufRet.f32 %6685, 0
  %6687 = extractvalue %dx.types.CBufRet.f32 %6685, 1
  %6688 = extractvalue %dx.types.CBufRet.f32 %6685, 2
  %6689 = extractvalue %dx.types.CBufRet.f32 %6685, 3
  %6690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6691 = extractvalue %dx.types.CBufRet.f32 %6690, 0
  %6692 = extractvalue %dx.types.CBufRet.f32 %6690, 1
  %6693 = extractvalue %dx.types.CBufRet.f32 %6690, 2
  %6694 = extractvalue %dx.types.CBufRet.f32 %6690, 3
  %6695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6696 = extractvalue %dx.types.CBufRet.f32 %6695, 0
  %6697 = extractvalue %dx.types.CBufRet.f32 %6695, 1
  %6698 = extractvalue %dx.types.CBufRet.f32 %6695, 2
  %6699 = extractvalue %dx.types.CBufRet.f32 %6695, 3
  %6700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6701 = extractvalue %dx.types.CBufRet.f32 %6700, 0
  %6702 = extractvalue %dx.types.CBufRet.f32 %6700, 1
  %6703 = extractvalue %dx.types.CBufRet.f32 %6700, 2
  %6704 = extractvalue %dx.types.CBufRet.f32 %6700, 3
  %6705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6706 = extractvalue %dx.types.CBufRet.f32 %6705, 3
  %6707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6708 = extractvalue %dx.types.CBufRet.f32 %6707, 3
  %6709 = extractvalue %dx.types.CBufRet.f32 %6707, 0
  %6710 = extractvalue %dx.types.CBufRet.f32 %6707, 1
  %6711 = extractvalue %dx.types.CBufRet.f32 %6707, 2
  %6712 = fcmp fast olt float %6711, -5.000000e-01
  %6713 = call float @dx.op.dot3.f32(i32 55, float %6673, float %6674, float %6675, float %6673, float %6674, float %6675)  ; Dot3(ax,ay,az,bx,by,bz)
  %6714 = call float @dx.op.unary.f32(i32 25, float %6713)  ; Rsqrt(value)
  %6715 = fmul fast float %6714, %6713
  %6716 = fmul fast float %6714, %6673
  %6717 = fmul fast float %6714, %6674
  %6718 = fmul fast float %6714, %6675
  %6719 = fadd fast float %6715, %6689
  %6720 = call float @dx.op.dot3.f32(i32 55, float %6716, float %6717, float %6718, float %6686, float %6687, float %6688)  ; Dot3(ax,ay,az,bx,by,bz)
  %6721 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6722 = extractvalue %dx.types.CBufRet.i32 %6721, 1
  %6723 = and i32 %6722, 1
  %6724 = icmp ne i32 %6723, 0
  %6725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6726 = extractvalue %dx.types.CBufRet.f32 %6725, 2
  %6727 = fcmp fast ogt float %6726, 0.000000e+00
  %6728 = and i1 %6724, %6727
  br i1 %6728, label %6729, label %7135, !dx.controlflow.hints !102

; <label>:6729                                    ; preds = %6684
  %6730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6731 = extractvalue %dx.types.CBufRet.f32 %6730, 3
  %6732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6733 = extractvalue %dx.types.CBufRet.f32 %6732, 2
  %6734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6735 = extractvalue %dx.types.CBufRet.f32 %6734, 2
  %6736 = fsub fast float %6733, %6735
  %6737 = and i32 %6722, 2
  %6738 = extractvalue %dx.types.CBufRet.i32 %6721, 0
  %6739 = call i32 @dx.op.binary.i32(i32 40, i32 %6738, i32 3)  ; UMin(a,b)
  %6740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6741 = extractvalue %dx.types.CBufRet.f32 %6740, 0
  %6742 = extractvalue %dx.types.CBufRet.f32 %6740, 1
  %6743 = extractvalue %dx.types.CBufRet.f32 %6734, 0
  %6744 = extractvalue %dx.types.CBufRet.f32 %6734, 1
  %6745 = fsub fast float %6741, %6743
  %6746 = fsub fast float %6742, %6744
  %6747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6748 = extractvalue %dx.types.CBufRet.f32 %6747, 0
  %6749 = fcmp fast ogt float %6748, 0.000000e+00
  %6750 = fsub fast float -0.000000e+00, %6745
  %6751 = fsub fast float -0.000000e+00, %6746
  %6752 = call float @dx.op.dot2.f32(i32 54, float %6716, float %6717, float %6716, float %6717)  ; Dot2(ax,ay,bx,by)
  %6753 = call float @dx.op.dot2.f32(i32 54, float %6716, float %6717, float %6750, float %6751)  ; Dot2(ax,ay,bx,by)
  %6754 = fmul fast float %6753, 2.000000e+00
  %6755 = call float @dx.op.dot2.f32(i32 54, float %6750, float %6751, float %6750, float %6751)  ; Dot2(ax,ay,bx,by)
  %6756 = fmul fast float %6748, %6748
  %6757 = fsub fast float %6755, %6756
  %6758 = fmul fast float %6754, %6754
  %6759 = fmul fast float %6752, 4.000000e+00
  %6760 = fmul fast float %6759, %6757
  %6761 = fsub fast float %6758, %6760
  %6762 = fcmp fast ogt float %6761, 0.000000e+00
  br i1 %6762, label %6763, label %6778

; <label>:6763                                    ; preds = %6729
  %6764 = fcmp fast ogt float %6754, 0.000000e+00
  %6765 = call float @dx.op.unary.f32(i32 24, float %6761)  ; Sqrt(value)
  %6766 = fsub fast float -0.000000e+00, %6765
  %6767 = select i1 %6764, float %6765, float %6766
  %6768 = fadd fast float %6767, %6754
  %6769 = fmul float %6768, -5.000000e-01
  %6770 = fdiv fast float %6769, %6752
  %6771 = call float @dx.op.binary.f32(i32 35, float %6770, float 0.000000e+00)  ; FMax(a,b)
  %6772 = call float @dx.op.binary.f32(i32 36, float %6715, float %6771)  ; FMin(a,b)
  %6773 = fdiv fast float %6757, %6769
  %6774 = call float @dx.op.binary.f32(i32 35, float %6773, float 0.000000e+00)  ; FMax(a,b)
  %6775 = call float @dx.op.binary.f32(i32 36, float %6715, float %6774)  ; FMin(a,b)
  %6776 = call float @dx.op.binary.f32(i32 36, float %6772, float %6775)  ; FMin(a,b)
  %6777 = call float @dx.op.binary.f32(i32 35, float %6772, float %6775)  ; FMax(a,b)
  br label %6778

; <label>:6778                                    ; preds = %6763, %6729
  %6779 = phi float [ %6777, %6763 ], [ -1.000000e+00, %6729 ]
  %6780 = phi float [ %6776, %6763 ], [ -1.000000e+00, %6729 ]
  %6781 = phi i1 [ true, %6763 ], [ false, %6729 ]
  %6782 = and i1 %6749, %6781
  br i1 %6782, label %6783, label %6785

; <label>:6783                                    ; preds = %6778
  %6784 = fcmp fast oeq float %6780, %6779
  br i1 %6784, label %7088, label %6786

; <label>:6785                                    ; preds = %6778
  br i1 %6749, label %7088, label %6786

; <label>:6786                                    ; preds = %6785, %6783
  %6787 = phi float [ %6715, %6785 ], [ %6779, %6783 ]
  %6788 = phi float [ 0.000000e+00, %6785 ], [ %6780, %6783 ]
  %6789 = icmp ne i32 %6737, 0
  %6790 = fmul fast float %6787, %6718
  %6791 = fadd fast float %6790, %6731
  %6792 = fmul fast float %6791, %6787
  %6793 = select i1 %6789, float 0.000000e+00, float %6792
  %6794 = fcmp fast oeq float %6718, 0.000000e+00
  %6795 = fdiv fast float %6736, %6718
  %6796 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6795)  ; FMax(a,b)
  %6797 = select i1 %6794, float %6787, float %6796
  %6798 = call float @dx.op.binary.f32(i32 36, float %6787, float %6797)  ; FMin(a,b)
  %6799 = fcmp fast ogt float %6718, 0.000000e+00
  %6800 = fcmp fast olt float %6736, 0.000000e+00
  br i1 %6799, label %6801, label %6858

; <label>:6801                                    ; preds = %6786
  %6802 = icmp eq i32 %6737, 0
  br i1 %6800, label %6803, label %6847

; <label>:6803                                    ; preds = %6801
  %6804 = select i1 %6802, float %6787, float 0.000000e+00
  %6805 = fsub fast float -0.000000e+00, %6804
  %6806 = call float @dx.op.unary.f32(i32 6, float %6805)  ; FAbs(value)
  %6807 = fmul fast float %6804, %6718
  %6808 = fadd fast float %6807, %6731
  %6809 = fmul fast float %6806, %6808
  %6810 = fsub fast float %6793, %6809
  %6811 = fsub fast float %6787, %6806
  %6812 = select i1 %6802, float %6811, float 0.000000e+00
  %6813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6814 = extractvalue %dx.types.CBufRet.f32 %6813, 0
  %6815 = extractvalue %dx.types.CBufRet.f32 %6813, 1
  %6816 = extractvalue %dx.types.CBufRet.f32 %6813, 2
  %6817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6818 = extractvalue %dx.types.CBufRet.f32 %6817, 0
  %6819 = extractvalue %dx.types.CBufRet.f32 %6817, 1
  %6820 = extractvalue %dx.types.CBufRet.f32 %6817, 2
  %6821 = extractvalue %dx.types.CBufRet.f32 %6817, 3
  %6822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6823 = extractvalue %dx.types.CBufRet.f32 %6822, 3
  %6824 = call float @dx.op.binary.f32(i32 36, float %6810, float %6823)  ; FMin(a,b)
  %6825 = fmul fast float %6821, %6812
  %6826 = call float @dx.op.unary.f32(i32 7, float %6825)  ; Saturate(value)
  %6827 = fsub fast float %6818, %6814
  %6828 = fsub fast float %6819, %6815
  %6829 = fsub fast float %6820, %6816
  %6830 = fmul fast float %6826, %6827
  %6831 = fmul fast float %6826, %6828
  %6832 = fmul fast float %6826, %6829
  %6833 = fadd fast float %6830, %6814
  %6834 = fadd fast float %6831, %6815
  %6835 = fadd fast float %6832, %6816
  %6836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6837 = extractvalue %dx.types.CBufRet.f32 %6836, 0
  %6838 = extractvalue %dx.types.CBufRet.f32 %6836, 1
  %6839 = fadd fast float %6838, %6837
  %6840 = call float @dx.op.unary.f32(i32 7, float %6839)  ; Saturate(value)
  %6841 = extractvalue %dx.types.CBufRet.f32 %6836, 2
  %6842 = extractvalue %dx.types.CBufRet.f32 %6836, 3
  %6843 = fadd fast float %6842, %6841
  %6844 = call float @dx.op.unary.f32(i32 7, float %6843)  ; Saturate(value)
  %6845 = fmul fast float %6840, %6824
  %6846 = fmul fast float %6845, %6844
  br label %7088

; <label>:6847                                    ; preds = %6801
  br i1 %6802, label %6848, label %6869

; <label>:6848                                    ; preds = %6847
  %6849 = call float @dx.op.binary.f32(i32 36, float %6798, float %6788)  ; FMin(a,b)
  %6850 = fsub fast float %6798, %6849
  %6851 = fsub fast float %6850, %6787
  %6852 = call float @dx.op.unary.f32(i32 6, float %6851)  ; FAbs(value)
  %6853 = fadd fast float %6850, %6787
  %6854 = fmul fast float %6853, %6718
  %6855 = fadd fast float %6854, %6731
  %6856 = fmul fast float %6855, %6852
  %6857 = fsub fast float %6793, %6856
  br label %6869

; <label>:6858                                    ; preds = %6786
  br i1 %6800, label %6859, label %6869

; <label>:6859                                    ; preds = %6858
  %6860 = call float @dx.op.binary.f32(i32 35, float %6788, float %6798)  ; FMax(a,b)
  %6861 = icmp eq i32 %6737, 0
  %6862 = select i1 %6861, float %6798, float 0.000000e+00
  %6863 = fsub fast float -0.000000e+00, %6862
  %6864 = call float @dx.op.unary.f32(i32 6, float %6863)  ; FAbs(value)
  %6865 = fmul fast float %6862, %6718
  %6866 = fadd fast float %6865, %6731
  %6867 = fmul fast float %6864, %6866
  %6868 = fsub fast float %6793, %6867
  br label %6869

; <label>:6869                                    ; preds = %6859, %6858, %6848, %6847
  %6870 = phi float [ %6788, %6847 ], [ %6788, %6848 ], [ %6860, %6859 ], [ %6788, %6858 ]
  %6871 = phi float [ 0.000000e+00, %6847 ], [ %6852, %6848 ], [ %6864, %6859 ], [ 0.000000e+00, %6858 ]
  %6872 = phi float [ %6793, %6847 ], [ %6857, %6848 ], [ %6868, %6859 ], [ %6793, %6858 ]
  %6873 = phi float [ %6798, %6847 ], [ %6798, %6848 ], [ %6787, %6859 ], [ %6787, %6858 ]
  %6874 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 0
  store float -1.000000e+00, float* %6874, align 4, !tbaa !103, !noalias !105
  %6875 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 1
  store float -1.000000e+00, float* %6875, align 4, !tbaa !103, !noalias !105
  %6876 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 2
  store float -1.000000e+00, float* %6876, align 4, !tbaa !103, !noalias !105
  %6877 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 0
  store float -1.000000e+00, float* %6877, align 4, !tbaa !103, !noalias !105
  %6878 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 1
  store float -1.000000e+00, float* %6878, align 4, !tbaa !103, !noalias !105
  %6879 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 2
  store float -1.000000e+00, float* %6879, align 4, !tbaa !103, !noalias !105
  %6880 = icmp sgt i32 %6739, 0
  br i1 %6880, label %6881, label %6942

; <label>:6881                                    ; preds = %6869
  br label %6882

; <label>:6882                                    ; preds = %6931, %6881
  %6883 = phi i32 [ %6932, %6931 ], [ 0, %6881 ]
  %6884 = phi i32 [ %6933, %6931 ], [ 0, %6881 ]
  %6885 = add nuw i32 %6884, 171
  %6886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %6885)  ; CBufferLoadLegacy(handle,regIndex)
  %6887 = extractvalue %dx.types.CBufRet.f32 %6886, 0
  %6888 = extractvalue %dx.types.CBufRet.f32 %6886, 1
  %6889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6890 = extractvalue %dx.types.CBufRet.f32 %6889, 0
  %6891 = extractvalue %dx.types.CBufRet.f32 %6889, 1
  %6892 = fsub fast float %6887, %6890
  %6893 = fsub fast float %6888, %6891
  %6894 = extractvalue %dx.types.CBufRet.f32 %6886, 2
  %6895 = fsub fast float -0.000000e+00, %6892
  %6896 = fsub fast float -0.000000e+00, %6893
  %6897 = call float @dx.op.dot2.f32(i32 54, float %6716, float %6717, float %6895, float %6896)  ; Dot2(ax,ay,bx,by)
  %6898 = fmul fast float %6897, 2.000000e+00
  %6899 = call float @dx.op.dot2.f32(i32 54, float %6895, float %6896, float %6895, float %6896)  ; Dot2(ax,ay,bx,by)
  %6900 = fmul fast float %6894, %6894
  %6901 = fsub fast float %6899, %6900
  %6902 = fmul fast float %6898, %6898
  %6903 = fmul fast float %6759, %6901
  %6904 = fsub fast float %6902, %6903
  %6905 = fcmp fast ogt float %6904, 0.000000e+00
  br i1 %6905, label %6906, label %6921

; <label>:6906                                    ; preds = %6882
  %6907 = fcmp fast ogt float %6898, 0.000000e+00
  %6908 = call float @dx.op.unary.f32(i32 24, float %6904)  ; Sqrt(value)
  %6909 = fsub fast float -0.000000e+00, %6908
  %6910 = select i1 %6907, float %6908, float %6909
  %6911 = fadd fast float %6910, %6898
  %6912 = fmul float %6911, -5.000000e-01
  %6913 = fdiv fast float %6912, %6752
  %6914 = call float @dx.op.binary.f32(i32 35, float %6913, float 0.000000e+00)  ; FMax(a,b)
  %6915 = call float @dx.op.binary.f32(i32 36, float %6787, float %6914)  ; FMin(a,b)
  %6916 = fdiv fast float %6901, %6912
  %6917 = call float @dx.op.binary.f32(i32 35, float %6916, float 0.000000e+00)  ; FMax(a,b)
  %6918 = call float @dx.op.binary.f32(i32 36, float %6787, float %6917)  ; FMin(a,b)
  %6919 = call float @dx.op.binary.f32(i32 36, float %6915, float %6918)  ; FMin(a,b)
  %6920 = call float @dx.op.binary.f32(i32 35, float %6915, float %6918)  ; FMax(a,b)
  br label %6921

; <label>:6921                                    ; preds = %6906, %6882
  %6922 = phi float [ %6920, %6906 ], [ -1.000000e+00, %6882 ]
  %6923 = phi float [ %6919, %6906 ], [ -1.000000e+00, %6882 ]
  %6924 = phi i1 [ true, %6906 ], [ false, %6882 ]
  br i1 %6924, label %6925, label %6931

; <label>:6925                                    ; preds = %6921
  %6926 = call float @dx.op.binary.f32(i32 35, float %6870, float %6923)  ; FMax(a,b)
  %6927 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %6884
  store float %6926, float* %6927, align 4, !tbaa !103, !noalias !105
  %6928 = call float @dx.op.binary.f32(i32 35, float %6870, float %6922)  ; FMax(a,b)
  %6929 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 %6884
  store float %6928, float* %6929, align 4, !tbaa !103, !noalias !105
  %6930 = add nsw i32 %6883, 1
  br label %6931

; <label>:6931                                    ; preds = %6925, %6921
  %6932 = phi i32 [ %6930, %6925 ], [ %6883, %6921 ]
  %6933 = add nuw nsw i32 %6884, 1
  %6934 = icmp eq i32 %6933, %6739
  br i1 %6934, label %6935, label %6882

; <label>:6935                                    ; preds = %6931
  %6936 = load float, float* %6876, align 4, !tbaa !103, !alias.scope !121, !noalias !124
  %6937 = load float, float* %6875, align 4, !tbaa !103, !alias.scope !127, !noalias !128
  %6938 = load float, float* %6874, align 4, !tbaa !103, !alias.scope !129, !noalias !130
  %6939 = load float, float* %6879, align 4, !tbaa !103, !alias.scope !131, !noalias !134
  %6940 = load float, float* %6878, align 4, !tbaa !103, !alias.scope !137, !noalias !138
  %6941 = load float, float* %6877, align 4, !tbaa !103, !alias.scope !139, !noalias !140
  br label %6942

; <label>:6942                                    ; preds = %6935, %6869
  %6943 = phi float [ -1.000000e+00, %6869 ], [ %6941, %6935 ]
  %6944 = phi float [ -1.000000e+00, %6869 ], [ %6940, %6935 ]
  %6945 = phi float [ -1.000000e+00, %6869 ], [ %6939, %6935 ]
  %6946 = phi float [ -1.000000e+00, %6869 ], [ %6938, %6935 ]
  %6947 = phi float [ -1.000000e+00, %6869 ], [ %6937, %6935 ]
  %6948 = phi float [ -1.000000e+00, %6869 ], [ %6936, %6935 ]
  %6949 = phi i32 [ 0, %6869 ], [ %6932, %6935 ]
  %6950 = call float @dx.op.binary.f32(i32 36, float %6947, float %6948)  ; FMin(a,b)
  %6951 = call float @dx.op.binary.f32(i32 36, float %6946, float %6950)  ; FMin(a,b)
  %6952 = call float @dx.op.binary.f32(i32 35, float %6946, float %6947)  ; FMax(a,b)
  %6953 = call float @dx.op.binary.f32(i32 36, float %6952, float %6948)  ; FMin(a,b)
  %6954 = call float @dx.op.binary.f32(i32 36, float %6946, float %6947)  ; FMin(a,b)
  %6955 = call float @dx.op.binary.f32(i32 35, float %6954, float %6953)  ; FMax(a,b)
  %6956 = call float @dx.op.binary.f32(i32 35, float %6947, float %6948)  ; FMax(a,b)
  %6957 = call float @dx.op.binary.f32(i32 35, float %6946, float %6956)  ; FMax(a,b)
  store float %6951, float* %6874, align 4, !tbaa !103, !alias.scope !129, !noalias !130
  store float %6955, float* %6875, align 4, !tbaa !103, !alias.scope !127, !noalias !128
  store float %6957, float* %6876, align 4, !tbaa !103, !alias.scope !121, !noalias !124
  %6958 = call float @dx.op.binary.f32(i32 36, float %6944, float %6945)  ; FMin(a,b)
  %6959 = call float @dx.op.binary.f32(i32 36, float %6943, float %6958)  ; FMin(a,b)
  %6960 = call float @dx.op.binary.f32(i32 35, float %6943, float %6944)  ; FMax(a,b)
  %6961 = call float @dx.op.binary.f32(i32 36, float %6960, float %6945)  ; FMin(a,b)
  %6962 = call float @dx.op.binary.f32(i32 36, float %6943, float %6944)  ; FMin(a,b)
  %6963 = call float @dx.op.binary.f32(i32 35, float %6962, float %6961)  ; FMax(a,b)
  %6964 = call float @dx.op.binary.f32(i32 35, float %6944, float %6945)  ; FMax(a,b)
  %6965 = call float @dx.op.binary.f32(i32 35, float %6943, float %6964)  ; FMax(a,b)
  store float %6959, float* %6877, align 4, !tbaa !103, !alias.scope !139, !noalias !140
  store float %6963, float* %6878, align 4, !tbaa !103, !alias.scope !137, !noalias !138
  store float %6965, float* %6879, align 4, !tbaa !103, !alias.scope !131, !noalias !134
  %6966 = sub nsw i32 3, %6949
  %6967 = icmp sgt i32 %6966, 2
  br i1 %6967, label %6968, label %7006

; <label>:6968                                    ; preds = %6942
  %6969 = icmp eq i32 %6737, 0
  %6970 = fsub fast float %6787, %6871
  %6971 = select i1 %6969, float %6970, float %6871
  %6972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6973 = extractvalue %dx.types.CBufRet.f32 %6972, 0
  %6974 = extractvalue %dx.types.CBufRet.f32 %6972, 1
  %6975 = extractvalue %dx.types.CBufRet.f32 %6972, 2
  %6976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6977 = extractvalue %dx.types.CBufRet.f32 %6976, 0
  %6978 = extractvalue %dx.types.CBufRet.f32 %6976, 1
  %6979 = extractvalue %dx.types.CBufRet.f32 %6976, 2
  %6980 = extractvalue %dx.types.CBufRet.f32 %6976, 3
  %6981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6982 = extractvalue %dx.types.CBufRet.f32 %6981, 3
  %6983 = call float @dx.op.binary.f32(i32 36, float %6872, float %6982)  ; FMin(a,b)
  %6984 = fmul fast float %6980, %6971
  %6985 = call float @dx.op.unary.f32(i32 7, float %6984)  ; Saturate(value)
  %6986 = fsub fast float %6977, %6973
  %6987 = fsub fast float %6978, %6974
  %6988 = fsub fast float %6979, %6975
  %6989 = fmul fast float %6985, %6986
  %6990 = fmul fast float %6985, %6987
  %6991 = fmul fast float %6985, %6988
  %6992 = fadd fast float %6989, %6973
  %6993 = fadd fast float %6990, %6974
  %6994 = fadd fast float %6991, %6975
  %6995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6996 = extractvalue %dx.types.CBufRet.f32 %6995, 0
  %6997 = extractvalue %dx.types.CBufRet.f32 %6995, 1
  %6998 = fadd fast float %6997, %6996
  %6999 = call float @dx.op.unary.f32(i32 7, float %6998)  ; Saturate(value)
  %7000 = extractvalue %dx.types.CBufRet.f32 %6995, 2
  %7001 = extractvalue %dx.types.CBufRet.f32 %6995, 3
  %7002 = fadd fast float %7001, %7000
  %7003 = call float @dx.op.unary.f32(i32 7, float %7002)  ; Saturate(value)
  %7004 = fmul fast float %6999, %6983
  %7005 = fmul fast float %7004, %7003
  br label %7088

; <label>:7006                                    ; preds = %6942
  %7007 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %6966
  %7008 = load float, float* %7007, align 4, !tbaa !103, !noalias !105
  %7009 = fcmp fast olt float %7008, %6873
  %7010 = icmp sgt i32 %6949, 0
  %7011 = and i1 %7010, %7009
  br i1 %7011, label %7012, label %7049

; <label>:7012                                    ; preds = %7006
  br label %7013

; <label>:7013                                    ; preds = %7042, %7012
  %7014 = phi float [ %7043, %7042 ], [ %6871, %7012 ]
  %7015 = phi float [ %7044, %7042 ], [ %6872, %7012 ]
  %7016 = phi float [ %7024, %7042 ], [ %7008, %7012 ]
  %7017 = phi i32 [ %7021, %7042 ], [ %6966, %7012 ]
  %7018 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 %7017
  %7019 = load float, float* %7018, align 4, !tbaa !103, !noalias !105
  %7020 = icmp slt i32 %7017, 2
  %7021 = add nsw i32 %7017, 1
  %7022 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %7021
  %7023 = load float, float* %7022, align 4, !tbaa !103, !noalias !105
  %7024 = select i1 %7020, float %7023, float %6787
  %7025 = call float @dx.op.binary.f32(i32 36, float %7024, float %7019)  ; FMin(a,b)
  %7026 = call float @dx.op.binary.f32(i32 36, float %6873, float %7025)  ; FMin(a,b)
  %7027 = icmp eq i32 %6737, 0
  %7028 = fadd fast float %7026, %7016
  %7029 = fmul fast float %7028, %6718
  %7030 = fadd fast float %7029, %6731
  br i1 %7027, label %7036, label %7031

; <label>:7031                                    ; preds = %7013
  %7032 = fsub fast float %7026, %7016
  %7033 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7032)  ; FMax(a,b)
  %7034 = fmul fast float %7033, %7030
  %7035 = fadd fast float %7034, %7015
  br label %7042

; <label>:7036                                    ; preds = %7013
  %7037 = fsub fast float %7016, %7026
  %7038 = call float @dx.op.unary.f32(i32 6, float %7037)  ; FAbs(value)
  %7039 = fadd fast float %7038, %7014
  %7040 = fmul fast float %7038, %7030
  %7041 = fsub fast float %7015, %7040
  br label %7042

; <label>:7042                                    ; preds = %7036, %7031
  %7043 = phi float [ %7033, %7031 ], [ %7039, %7036 ]
  %7044 = phi float [ %7035, %7031 ], [ %7041, %7036 ]
  %7045 = fcmp fast olt float %7024, %6873
  %7046 = icmp slt i32 %7021, 3
  %7047 = and i1 %7046, %7045
  br i1 %7047, label %7013, label %7048

; <label>:7048                                    ; preds = %7042
  br label %7049

; <label>:7049                                    ; preds = %7048, %7006
  %7050 = phi float [ %6871, %7006 ], [ %7043, %7048 ]
  %7051 = phi float [ %6872, %7006 ], [ %7044, %7048 ]
  %7052 = fsub fast float %6787, %7050
  %7053 = select i1 %6789, float %7050, float %7052
  %7054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7055 = extractvalue %dx.types.CBufRet.f32 %7054, 0
  %7056 = extractvalue %dx.types.CBufRet.f32 %7054, 1
  %7057 = extractvalue %dx.types.CBufRet.f32 %7054, 2
  %7058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7059 = extractvalue %dx.types.CBufRet.f32 %7058, 0
  %7060 = extractvalue %dx.types.CBufRet.f32 %7058, 1
  %7061 = extractvalue %dx.types.CBufRet.f32 %7058, 2
  %7062 = extractvalue %dx.types.CBufRet.f32 %7058, 3
  %7063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7064 = extractvalue %dx.types.CBufRet.f32 %7063, 3
  %7065 = call float @dx.op.binary.f32(i32 36, float %7051, float %7064)  ; FMin(a,b)
  %7066 = fmul fast float %7062, %7053
  %7067 = call float @dx.op.unary.f32(i32 7, float %7066)  ; Saturate(value)
  %7068 = fsub fast float %7059, %7055
  %7069 = fsub fast float %7060, %7056
  %7070 = fsub fast float %7061, %7057
  %7071 = fmul fast float %7067, %7068
  %7072 = fmul fast float %7067, %7069
  %7073 = fmul fast float %7067, %7070
  %7074 = fadd fast float %7071, %7055
  %7075 = fadd fast float %7072, %7056
  %7076 = fadd fast float %7073, %7057
  %7077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7078 = extractvalue %dx.types.CBufRet.f32 %7077, 0
  %7079 = extractvalue %dx.types.CBufRet.f32 %7077, 1
  %7080 = fadd fast float %7079, %7078
  %7081 = call float @dx.op.unary.f32(i32 7, float %7080)  ; Saturate(value)
  %7082 = extractvalue %dx.types.CBufRet.f32 %7077, 2
  %7083 = extractvalue %dx.types.CBufRet.f32 %7077, 3
  %7084 = fadd fast float %7083, %7082
  %7085 = call float @dx.op.unary.f32(i32 7, float %7084)  ; Saturate(value)
  %7086 = fmul fast float %7081, %7065
  %7087 = fmul fast float %7086, %7085
  br label %7088

; <label>:7088                                    ; preds = %7049, %6968, %6803, %6785, %6783
  %7089 = phi float [ %6812, %6803 ], [ %6971, %6968 ], [ %7053, %7049 ], [ 0.000000e+00, %6783 ], [ 0.000000e+00, %6785 ]
  %7090 = phi float [ %6846, %6803 ], [ %7005, %6968 ], [ %7087, %7049 ], [ 0.000000e+00, %6783 ], [ 0.000000e+00, %6785 ]
  %7091 = phi float [ %6833, %6803 ], [ %6992, %6968 ], [ %7074, %7049 ], [ 0.000000e+00, %6783 ], [ 0.000000e+00, %6785 ]
  %7092 = phi float [ %6834, %6803 ], [ %6993, %6968 ], [ %7075, %7049 ], [ 0.000000e+00, %6783 ], [ 0.000000e+00, %6785 ]
  %7093 = phi float [ %6835, %6803 ], [ %6994, %6968 ], [ %7076, %7049 ], [ 0.000000e+00, %6783 ], [ 0.000000e+00, %6785 ]
  %7094 = fmul fast float %6726, %7090
  %7095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7096 = extractvalue %dx.types.CBufRet.f32 %7095, 2
  %7097 = fsub fast float %6733, %7096
  %7098 = fcmp fast olt float %7094, -2.000000e+01
  %7099 = call float @dx.op.unary.f32(i32 21, float %7094)  ; Exp(value)
  %7100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7101 = extractvalue %dx.types.CBufRet.f32 %7100, 2
  %7102 = extractvalue %dx.types.CBufRet.f32 %7100, 3
  %7103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7104 = extractvalue %dx.types.CBufRet.f32 %7103, 2
  %7105 = fmul fast float %7102, %7097
  %7106 = call float @dx.op.unary.f32(i32 7, float %7105)  ; Saturate(value)
  %7107 = fsub fast float 1.000000e+00, %7106
  %7108 = fmul fast float %6718, 5.000000e-01
  %7109 = fadd fast float %7108, 5.000000e-01
  %7110 = call float @dx.op.unary.f32(i32 7, float %7109)  ; Saturate(value)
  %7111 = fsub fast float 1.000000e+00, %7110
  %7112 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7107)  ; FMax(a,b)
  %7113 = fdiv fast float %7111, %7112
  %7114 = fsub fast float %7097, %6675
  %7115 = call float @dx.op.unary.f32(i32 6, float %7114)  ; FAbs(value)
  %7116 = fmul fast float %7115, %7101
  %7117 = call float @dx.op.unary.f32(i32 7, float %7113)  ; Saturate(value)
  %7118 = fsub fast float 1.000000e+00, %7116
  %7119 = fmul fast float %7118, %7117
  %7120 = fadd fast float %7119, %7116
  %7121 = fmul fast float %7104, %7097
  %7122 = call float @dx.op.unary.f32(i32 7, float %7121)  ; Saturate(value)
  %7123 = fsub fast float 1.000000e+00, %7120
  %7124 = fmul fast float %7123, %7122
  %7125 = fadd fast float %7124, %7120
  %7126 = call float @dx.op.unary.f32(i32 7, float %7125)  ; Saturate(value)
  %7127 = fadd fast float %7099, -1.000000e+00
  %7128 = select i1 %7098, float -1.000000e+00, float %7127
  %7129 = fmul fast float %7126, %7128
  %7130 = fadd fast float %7129, 1.000000e+00
  %7131 = fsub fast float -0.000000e+00, %7129
  %7132 = fmul fast float %7091, %7131
  %7133 = fmul fast float %7092, %7131
  %7134 = fmul fast float %7093, %7131
  br label %7135

; <label>:7135                                    ; preds = %7088, %6684
  %7136 = phi float [ %7089, %7088 ], [ 0.000000e+00, %6684 ]
  %7137 = phi float [ %7130, %7088 ], [ 1.000000e+00, %6684 ]
  %7138 = phi float [ %7132, %7088 ], [ 0.000000e+00, %6684 ]
  %7139 = phi float [ %7133, %7088 ], [ 0.000000e+00, %6684 ]
  %7140 = phi float [ %7134, %7088 ], [ 0.000000e+00, %6684 ]
  %7141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7142 = extractvalue %dx.types.CBufRet.f32 %7141, 1
  %7143 = fsub fast float 1.000000e+00, %7137
  %7144 = fmul fast float %7143, %6719
  %7145 = fmul fast float %7144, %7142
  %7146 = fsub fast float %6719, %7145
  br i1 %6712, label %7147, label %7176, !dx.controlflow.hints !141

; <label>:7147                                    ; preds = %7135
  %7148 = fmul fast float %6720, %6709
  %7149 = fadd fast float %7148, %6710
  %7150 = call float @dx.op.unary.f32(i32 7, float %7149)  ; Saturate(value)
  %7151 = fmul fast float %6691, %7146
  %7152 = fsub fast float -0.000000e+00, %7151
  %7153 = fmul fast float %6692, %7146
  %7154 = fsub fast float -0.000000e+00, %7153
  %7155 = call float @dx.op.unary.f32(i32 21, float %7152)  ; Exp(value)
  %7156 = call float @dx.op.unary.f32(i32 21, float %7154)  ; Exp(value)
  %7157 = call float @dx.op.binary.f32(i32 35, float %6699, float %7155)  ; FMax(a,b)
  %7158 = call float @dx.op.binary.f32(i32 35, float %6699, float %7156)  ; FMax(a,b)
  %7159 = fsub fast float %7158, %7157
  %7160 = fmul fast float %7159, %7150
  %7161 = fadd fast float %7160, %7157
  %7162 = call float @dx.op.unary.f32(i32 7, float %7161)  ; Saturate(value)
  %7163 = fsub fast float %6696, %6701
  %7164 = fsub fast float %6697, %6702
  %7165 = fsub fast float %6698, %6703
  %7166 = fmul fast float %7150, %7163
  %7167 = fmul fast float %7150, %7164
  %7168 = fmul fast float %7150, %7165
  %7169 = fadd fast float %7166, %6701
  %7170 = fadd fast float %7167, %6702
  %7171 = fadd fast float %7168, %6703
  %7172 = fsub fast float 1.000000e+00, %7162
  %7173 = fmul fast float %7172, %7169
  %7174 = fmul fast float %7172, %7170
  %7175 = fmul fast float %7172, %7171
  br label %7235

; <label>:7176                                    ; preds = %7135
  %7177 = fmul fast float %7146, %6708
  %7178 = call float @dx.op.unary.f32(i32 7, float %7177)  ; Saturate(value)
  %7179 = fsub fast float 2.000000e+00, %7178
  %7180 = fmul fast float %7178, 9.921875e-01
  %7181 = fmul fast float %7180, %7179
  %7182 = fadd fast float %7181, 3.906250e-03
  %7183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %35, float %7182, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7184 = extractvalue %dx.types.ResRet.f32 %7183, 0
  %7185 = fsub fast float %7178, %7184
  %7186 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7185)  ; FMax(a,b)
  %7187 = fmul fast float %6694, %6675
  %7188 = call float @dx.op.unary.f32(i32 6, float %7187)  ; FAbs(value)
  %7189 = fcmp fast ogt float %7188, 0x3EB0C6F7A0000000
  br i1 %7189, label %7190, label %7196, !dx.controlflow.hints !142

; <label>:7190                                    ; preds = %7176
  %7191 = fmul fast float %7187, 0xBFF7154760000000
  %7192 = call float @dx.op.unary.f32(i32 21, float %7191)  ; Exp(value)
  %7193 = fsub fast float 1.000000e+00, %7192
  %7194 = fdiv fast float %7193, %7187
  %7195 = fmul fast float %7194, %6704
  br label %7196

; <label>:7196                                    ; preds = %7190, %7176
  %7197 = phi float [ %7195, %7190 ], [ %6704, %7176 ]
  %7198 = fadd fast float %7197, %6706
  %7199 = fmul fast float %7198, %7186
  %7200 = fmul fast float %6691, %7199
  %7201 = fsub fast float -0.000000e+00, %7200
  %7202 = fmul fast float %6692, %7199
  %7203 = fsub fast float -0.000000e+00, %7202
  %7204 = fmul fast float %6693, %7199
  %7205 = fsub fast float -0.000000e+00, %7204
  %7206 = call float @dx.op.unary.f32(i32 21, float %7201)  ; Exp(value)
  %7207 = call float @dx.op.unary.f32(i32 21, float %7203)  ; Exp(value)
  %7208 = call float @dx.op.unary.f32(i32 21, float %7205)  ; Exp(value)
  %7209 = fmul fast float %6720, %6720
  %7210 = fadd fast float %7209, 1.000000e+00
  %7211 = fmul fast float %7210, 0x3FAE8EC8A0000000
  %7212 = fmul fast float %7211, %6701
  %7213 = fmul fast float %7211, %6702
  %7214 = fmul fast float %7211, %6703
  %7215 = fmul fast float %6720, %6699
  %7216 = fsub fast float 1.000000e+00, %7215
  %7217 = fmul fast float %6699, %6699
  %7218 = fsub fast float 1.000000e+00, %7217
  %7219 = fmul fast float %7218, 0x3FB45F3060000000
  %7220 = fmul fast float %7216, %7216
  %7221 = fdiv fast float 1.000000e+00, %7220
  %7222 = fmul fast float %7219, %7221
  %7223 = fmul fast float %7222, %6696
  %7224 = fmul fast float %7222, %6697
  %7225 = fmul fast float %7222, %6698
  %7226 = fadd fast float %7223, %7212
  %7227 = fadd fast float %7224, %7213
  %7228 = fadd fast float %7225, %7214
  %7229 = fsub fast float 1.000000e+00, %7206
  %7230 = fsub fast float 1.000000e+00, %7207
  %7231 = fsub fast float 1.000000e+00, %7208
  %7232 = fmul fast float %7226, %7229
  %7233 = fmul fast float %7227, %7230
  %7234 = fmul fast float %7228, %7231
  br label %7235

; <label>:7235                                    ; preds = %7196, %7147
  %7236 = phi float [ %7173, %7147 ], [ %7232, %7196 ]
  %7237 = phi float [ %7174, %7147 ], [ %7233, %7196 ]
  %7238 = phi float [ %7175, %7147 ], [ %7234, %7196 ]
  %7239 = phi float [ %7162, %7147 ], [ %7206, %7196 ]
  %7240 = phi float [ %7162, %7147 ], [ %7207, %7196 ]
  %7241 = phi float [ %7162, %7147 ], [ %7208, %7196 ]
  br i1 %6728, label %7242, label %7440, !dx.controlflow.hints !143

; <label>:7242                                    ; preds = %7235
  %7243 = extractvalue %dx.types.CBufRet.f32 %7141, 0
  %7244 = fmul fast float %7243, %7143
  %7245 = fsub fast float %7138, %7236
  %7246 = fsub fast float %7139, %7237
  %7247 = fsub fast float %7140, %7238
  %7248 = fmul fast float %7244, %7245
  %7249 = fmul fast float %7244, %7246
  %7250 = fmul fast float %7244, %7247
  %7251 = fadd fast float %7248, %7236
  %7252 = fadd fast float %7249, %7237
  %7253 = fadd fast float %7250, %7238
  %7254 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7239)  ; FMax(a,b)
  %7255 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7240)  ; FMax(a,b)
  %7256 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7241)  ; FMax(a,b)
  %7257 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7137)  ; FMax(a,b)
  %7258 = call float @dx.op.binary.f32(i32 35, float %7136, float %7146)  ; FMax(a,b)
  %7259 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7258)  ; FMax(a,b)
  %7260 = fdiv fast float %7136, %7259
  %7261 = call float @dx.op.unary.f32(i32 7, float %7260)  ; Saturate(value)
  %7262 = fdiv fast float %7146, %7259
  %7263 = call float @dx.op.unary.f32(i32 7, float %7262)  ; Saturate(value)
  %7264 = fcmp fast une float %7257, 1.000000e+00
  br i1 %7264, label %7265, label %7278, !dx.controlflow.hints !144

; <label>:7265                                    ; preds = %7242
  %7266 = call float @dx.op.unary.f32(i32 23, float %7257)  ; Log(value)
  %7267 = fmul fast float %7266, 0x3FE62E4300000000
  %7268 = fmul fast float %7138, %7267
  %7269 = fsub fast float -0.000000e+00, %7268
  %7270 = fmul fast float %7139, %7267
  %7271 = fsub fast float -0.000000e+00, %7270
  %7272 = fmul fast float %7140, %7267
  %7273 = fsub fast float -0.000000e+00, %7272
  %7274 = fsub fast float 1.000000e+00, %7257
  %7275 = fdiv fast float %7269, %7274
  %7276 = fdiv fast float %7271, %7274
  %7277 = fdiv fast float %7273, %7274
  br label %7278

; <label>:7278                                    ; preds = %7265, %7242
  %7279 = phi float [ %7275, %7265 ], [ %7138, %7242 ]
  %7280 = phi float [ %7276, %7265 ], [ %7139, %7242 ]
  %7281 = phi float [ %7277, %7265 ], [ %7140, %7242 ]
  %7282 = phi float [ %7267, %7265 ], [ 0.000000e+00, %7242 ]
  %7283 = fcmp fast une float %7254, 1.000000e+00
  br i1 %7283, label %7284, label %7291, !dx.controlflow.hints !145

; <label>:7284                                    ; preds = %7278
  %7285 = call float @dx.op.unary.f32(i32 23, float %7254)  ; Log(value)
  %7286 = fmul fast float %7285, 0x3FE62E4300000000
  %7287 = fmul fast float %7251, %7286
  %7288 = fsub fast float -0.000000e+00, %7287
  %7289 = fsub fast float 1.000000e+00, %7254
  %7290 = fdiv fast float %7288, %7289
  br label %7291

; <label>:7291                                    ; preds = %7284, %7278
  %7292 = phi float [ %7290, %7284 ], [ %7251, %7278 ]
  %7293 = phi float [ %7286, %7284 ], [ 0.000000e+00, %7278 ]
  %7294 = fcmp fast une float %7255, 1.000000e+00
  br i1 %7294, label %7295, label %7302, !dx.controlflow.hints !145

; <label>:7295                                    ; preds = %7291
  %7296 = call float @dx.op.unary.f32(i32 23, float %7255)  ; Log(value)
  %7297 = fmul fast float %7296, 0x3FE62E4300000000
  %7298 = fmul fast float %7252, %7297
  %7299 = fsub fast float -0.000000e+00, %7298
  %7300 = fsub fast float 1.000000e+00, %7255
  %7301 = fdiv fast float %7299, %7300
  br label %7302

; <label>:7302                                    ; preds = %7295, %7291
  %7303 = phi float [ %7301, %7295 ], [ %7252, %7291 ]
  %7304 = phi float [ %7297, %7295 ], [ 0.000000e+00, %7291 ]
  %7305 = fcmp fast une float %7256, 1.000000e+00
  br i1 %7305, label %7306, label %7313, !dx.controlflow.hints !145

; <label>:7306                                    ; preds = %7302
  %7307 = call float @dx.op.unary.f32(i32 23, float %7256)  ; Log(value)
  %7308 = fmul fast float %7307, 0x3FE62E4300000000
  %7309 = fmul fast float %7253, %7308
  %7310 = fsub fast float -0.000000e+00, %7309
  %7311 = fsub fast float 1.000000e+00, %7256
  %7312 = fdiv fast float %7310, %7311
  br label %7313

; <label>:7313                                    ; preds = %7306, %7302
  %7314 = phi float [ %7312, %7306 ], [ %7253, %7302 ]
  %7315 = phi float [ %7308, %7306 ], [ 0.000000e+00, %7302 ]
  %7316 = fmul fast float %7279, %7263
  %7317 = fmul fast float %7280, %7263
  %7318 = fmul fast float %7281, %7263
  %7319 = fmul fast float %7282, %7263
  %7320 = fmul fast float %7292, %7261
  %7321 = fmul fast float %7303, %7261
  %7322 = fmul fast float %7314, %7261
  %7323 = fmul fast float %7293, %7261
  %7324 = fmul fast float %7304, %7261
  %7325 = fmul fast float %7315, %7261
  %7326 = fadd fast float %7320, %7316
  %7327 = fadd fast float %7321, %7317
  %7328 = fadd fast float %7322, %7318
  %7329 = fadd fast float %7323, %7319
  %7330 = fadd fast float %7324, %7319
  %7331 = fadd fast float %7325, %7319
  %7332 = fcmp fast une float %7329, 0.000000e+00
  br i1 %7332, label %7333, label %7340, !dx.controlflow.hints !146

; <label>:7333                                    ; preds = %7313
  %7334 = fmul fast float %7329, 0x3FF7154760000000
  %7335 = call float @dx.op.unary.f32(i32 21, float %7334)  ; Exp(value)
  %7336 = fsub fast float 1.000000e+00, %7335
  %7337 = fmul fast float %7326, %7336
  %7338 = fsub fast float -0.000000e+00, %7337
  %7339 = fdiv fast float %7338, %7329
  br label %7340

; <label>:7340                                    ; preds = %7333, %7313
  %7341 = phi float [ %7335, %7333 ], [ 1.000000e+00, %7313 ]
  %7342 = phi float [ %7339, %7333 ], [ %7326, %7313 ]
  %7343 = fcmp fast une float %7330, 0.000000e+00
  br i1 %7343, label %7344, label %7351, !dx.controlflow.hints !146

; <label>:7344                                    ; preds = %7340
  %7345 = fmul fast float %7330, 0x3FF7154760000000
  %7346 = call float @dx.op.unary.f32(i32 21, float %7345)  ; Exp(value)
  %7347 = fsub fast float 1.000000e+00, %7346
  %7348 = fmul fast float %7327, %7347
  %7349 = fsub fast float -0.000000e+00, %7348
  %7350 = fdiv fast float %7349, %7330
  br label %7351

; <label>:7351                                    ; preds = %7344, %7340
  %7352 = phi float [ %7346, %7344 ], [ 1.000000e+00, %7340 ]
  %7353 = phi float [ %7350, %7344 ], [ %7327, %7340 ]
  %7354 = fcmp fast une float %7331, 0.000000e+00
  br i1 %7354, label %7355, label %7362, !dx.controlflow.hints !146

; <label>:7355                                    ; preds = %7351
  %7356 = fmul fast float %7331, 0x3FF7154760000000
  %7357 = call float @dx.op.unary.f32(i32 21, float %7356)  ; Exp(value)
  %7358 = fsub fast float 1.000000e+00, %7357
  %7359 = fmul fast float %7328, %7358
  %7360 = fsub fast float -0.000000e+00, %7359
  %7361 = fdiv fast float %7360, %7331
  br label %7362

; <label>:7362                                    ; preds = %7355, %7351
  %7363 = phi float [ %7357, %7355 ], [ 1.000000e+00, %7351 ]
  %7364 = phi float [ %7361, %7355 ], [ %7328, %7351 ]
  %7365 = fcmp fast ogt float %7261, %7263
  br i1 %7365, label %7366, label %7386

; <label>:7366                                    ; preds = %7362
  %7367 = fsub fast float 1.000000e+00, %7263
  %7368 = fmul fast float %7279, %7367
  %7369 = fmul fast float %7280, %7367
  %7370 = fmul fast float %7281, %7367
  %7371 = fmul fast float %7282, %7367
  %7372 = fcmp fast une float %7371, 0.000000e+00
  br i1 %7372, label %7373, label %7424, !dx.controlflow.hints !147

; <label>:7373                                    ; preds = %7366
  %7374 = fmul fast float %7371, 0x3FF7154760000000
  %7375 = call float @dx.op.unary.f32(i32 21, float %7374)  ; Exp(value)
  %7376 = fsub fast float 1.000000e+00, %7375
  %7377 = fmul fast float %7368, %7376
  %7378 = fsub fast float -0.000000e+00, %7377
  %7379 = fmul fast float %7369, %7376
  %7380 = fsub fast float -0.000000e+00, %7379
  %7381 = fmul fast float %7370, %7376
  %7382 = fsub fast float -0.000000e+00, %7381
  %7383 = fdiv fast float %7378, %7371
  %7384 = fdiv fast float %7380, %7371
  %7385 = fdiv fast float %7382, %7371
  br label %7424

; <label>:7386                                    ; preds = %7362
  %7387 = fsub fast float 1.000000e+00, %7261
  %7388 = fmul fast float %7292, %7387
  %7389 = fmul fast float %7303, %7387
  %7390 = fmul fast float %7314, %7387
  %7391 = fmul fast float %7293, %7387
  %7392 = fmul fast float %7304, %7387
  %7393 = fmul fast float %7315, %7387
  %7394 = fcmp fast une float %7391, 0.000000e+00
  br i1 %7394, label %7395, label %7402, !dx.controlflow.hints !146

; <label>:7395                                    ; preds = %7386
  %7396 = fmul fast float %7391, 0x3FF7154760000000
  %7397 = call float @dx.op.unary.f32(i32 21, float %7396)  ; Exp(value)
  %7398 = fsub fast float 1.000000e+00, %7397
  %7399 = fmul fast float %7388, %7398
  %7400 = fsub fast float -0.000000e+00, %7399
  %7401 = fdiv fast float %7400, %7391
  br label %7402

; <label>:7402                                    ; preds = %7395, %7386
  %7403 = phi float [ %7401, %7395 ], [ %7388, %7386 ]
  %7404 = phi float [ %7397, %7395 ], [ 1.000000e+00, %7386 ]
  %7405 = fcmp fast une float %7392, 0.000000e+00
  br i1 %7405, label %7406, label %7413, !dx.controlflow.hints !146

; <label>:7406                                    ; preds = %7402
  %7407 = fmul fast float %7392, 0x3FF7154760000000
  %7408 = call float @dx.op.unary.f32(i32 21, float %7407)  ; Exp(value)
  %7409 = fsub fast float 1.000000e+00, %7408
  %7410 = fmul fast float %7389, %7409
  %7411 = fsub fast float -0.000000e+00, %7410
  %7412 = fdiv fast float %7411, %7392
  br label %7413

; <label>:7413                                    ; preds = %7406, %7402
  %7414 = phi float [ %7412, %7406 ], [ %7389, %7402 ]
  %7415 = phi float [ %7408, %7406 ], [ 1.000000e+00, %7402 ]
  %7416 = fcmp fast une float %7393, 0.000000e+00
  br i1 %7416, label %7417, label %7424, !dx.controlflow.hints !146

; <label>:7417                                    ; preds = %7413
  %7418 = fmul fast float %7393, 0x3FF7154760000000
  %7419 = call float @dx.op.unary.f32(i32 21, float %7418)  ; Exp(value)
  %7420 = fsub fast float 1.000000e+00, %7419
  %7421 = fmul fast float %7390, %7420
  %7422 = fsub fast float -0.000000e+00, %7421
  %7423 = fdiv fast float %7422, %7393
  br label %7424

; <label>:7424                                    ; preds = %7417, %7413, %7373, %7366
  %7425 = phi float [ %7423, %7417 ], [ %7385, %7373 ], [ %7370, %7366 ], [ %7390, %7413 ]
  %7426 = phi float [ %7414, %7417 ], [ %7384, %7373 ], [ %7369, %7366 ], [ %7414, %7413 ]
  %7427 = phi float [ %7403, %7417 ], [ %7383, %7373 ], [ %7368, %7366 ], [ %7403, %7413 ]
  %7428 = phi float [ %7419, %7417 ], [ %7375, %7373 ], [ 1.000000e+00, %7366 ], [ 1.000000e+00, %7413 ]
  %7429 = phi float [ %7415, %7417 ], [ %7375, %7373 ], [ 1.000000e+00, %7366 ], [ %7415, %7413 ]
  %7430 = phi float [ %7404, %7417 ], [ %7375, %7373 ], [ 1.000000e+00, %7366 ], [ %7404, %7413 ]
  %7431 = fmul fast float %7430, %7342
  %7432 = fmul fast float %7429, %7353
  %7433 = fmul fast float %7428, %7364
  %7434 = fadd fast float %7431, %7427
  %7435 = fadd fast float %7432, %7426
  %7436 = fadd fast float %7433, %7425
  %7437 = fmul fast float %7430, %7341
  %7438 = fmul fast float %7429, %7352
  %7439 = fmul fast float %7428, %7363
  br label %7440

; <label>:7440                                    ; preds = %7424, %7235
  %7441 = phi float [ %7439, %7424 ], [ %7241, %7235 ]
  %7442 = phi float [ %7438, %7424 ], [ %7240, %7235 ]
  %7443 = phi float [ %7437, %7424 ], [ %7239, %7235 ]
  %7444 = phi float [ %7436, %7424 ], [ %7238, %7235 ]
  %7445 = phi float [ %7435, %7424 ], [ %7237, %7235 ]
  %7446 = phi float [ %7434, %7424 ], [ %7236, %7235 ]
  %7447 = fmul fast float %7446, %6392
  %7448 = fmul fast float %7445, %6392
  %7449 = fmul fast float %7444, %6392
  %7450 = fmul fast float %7443, %6683
  %7451 = call float @dx.op.dot3.f32(i32 55, float %7443, float %7442, float %7441, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7452 = call float @dx.op.dot3.f32(i32 55, float %7447, float %7448, float %7449, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7453 = select i1 %206, float %7451, float %7443
  %7454 = select i1 %206, float %7451, float %7442
  %7455 = select i1 %206, float 1.000000e+00, float %7441
  %7456 = select i1 %206, float %7452, float %7447
  %7457 = select i1 %206, float 0.000000e+00, float %7448
  %7458 = select i1 %206, float 0.000000e+00, float %7449
  %7459 = fmul fast float %7453, %6677
  %7460 = fmul fast float %7454, %6678
  %7461 = fmul fast float %7455, %6679
  %7462 = fadd fast float %7459, %7456
  %7463 = fadd fast float %7460, %7457
  %7464 = fadd fast float %7458, %7461
  %7465 = fmul fast float %7453, %6680
  %7466 = fmul fast float %7454, %6681
  %7467 = fmul fast float %7455, %6682
  %7468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7469 = extractvalue %dx.types.CBufRet.i32 %7468, 0
  %7470 = icmp eq i32 %7469, 0
  br i1 %7470, label %7838, label %7471, !dx.controlflow.hints !148

; <label>:7471                                    ; preds = %7440
  %7472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7473 = extractvalue %dx.types.CBufRet.f32 %7472, 2
  %7474 = extractvalue %dx.types.CBufRet.f32 %7472, 3
  %7475 = fmul fast float %7473, %82
  %7476 = fmul fast float %7474, %83
  %7477 = fmul fast float %7475, 2.000000e+00
  %7478 = fmul fast float %7476, 2.000000e+00
  %7479 = fsub fast float 1.000000e+00, %7477
  %7480 = fsub fast float 1.000000e+00, %7478
  %7481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7482 = extractvalue %dx.types.CBufRet.f32 %7481, 0
  %7483 = extractvalue %dx.types.CBufRet.f32 %7481, 1
  %7484 = extractvalue %dx.types.CBufRet.f32 %7481, 2
  %7485 = fmul fast float %7479, %7482
  %7486 = fmul fast float %7479, %7483
  %7487 = fmul fast float %7479, %7484
  %7488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7489 = extractvalue %dx.types.CBufRet.f32 %7488, 0
  %7490 = extractvalue %dx.types.CBufRet.f32 %7488, 1
  %7491 = extractvalue %dx.types.CBufRet.f32 %7488, 2
  %7492 = fmul fast float %7480, %7489
  %7493 = fmul fast float %7480, %7490
  %7494 = fmul fast float %7480, %7491
  %7495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7496 = extractvalue %dx.types.CBufRet.f32 %7495, 0
  %7497 = extractvalue %dx.types.CBufRet.f32 %7495, 1
  %7498 = extractvalue %dx.types.CBufRet.f32 %7495, 2
  %7499 = fadd fast float %7492, %7496
  %7500 = fadd fast float %7499, %7485
  %7501 = fadd fast float %7493, %7497
  %7502 = fadd fast float %7501, %7486
  %7503 = fadd fast float %7494, %7498
  %7504 = fadd fast float %7503, %7487
  %7505 = fmul fast float %7500, %6676
  %7506 = fmul fast float %7502, %6676
  %7507 = fmul fast float %7504, %6676
  %7508 = fmul fast float %7505, %7505
  %7509 = fmul fast float %7506, %7506
  %7510 = fadd fast float %7508, %7509
  %7511 = fmul fast float %7507, %7507
  %7512 = fadd fast float %7510, %7511
  %7513 = call float @dx.op.unary.f32(i32 24, float %7512)  ; Sqrt(value)
  %7514 = extractvalue %dx.types.CBufRet.f32 %6403, 0
  %7515 = fsub fast float %7513, %7514
  %7516 = extractvalue %dx.types.CBufRet.f32 %6403, 2
  %7517 = fmul fast float %7515, %7516
  %7518 = call float @dx.op.unary.f32(i32 7, float %7517)  ; Saturate(value)
  %7519 = fadd fast float %7518, -5.000000e-01
  %7520 = fmul fast float %7519, 2.000000e+00
  %7521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7522 = extractvalue %dx.types.CBufRet.f32 %7521, 2
  %7523 = call float @dx.op.binary.f32(i32 36, float %7522, float %7520)  ; FMin(a,b)
  %7524 = fsub fast float -0.000000e+00, %7522
  %7525 = fcmp fast ogt float %7523, %7524
  br i1 %7525, label %7526, label %7838, !dx.controlflow.hints !149

; <label>:7526                                    ; preds = %7471
  %7527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7528 = extractvalue %dx.types.CBufRet.f32 %7527, 3
  %7529 = fcmp fast ogt float %7528, 0.000000e+00
  br i1 %7529, label %7530, label %7605, !dx.controlflow.hints !150

; <label>:7530                                    ; preds = %7526
  %7531 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %7532 = extractvalue %dx.types.Dimensions %7531, 0
  %7533 = sitofp i32 %7532 to float
  %7534 = extractvalue %dx.types.Dimensions %7531, 1
  %7535 = sitofp i32 %7534 to float
  %7536 = fmul fast float %7475, %7533
  %7537 = fmul fast float %7476, %7535
  %7538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7539 = extractvalue %dx.types.CBufRet.f32 %7538, 1
  %7540 = fsub fast float -0.000000e+00, %7539
  %7541 = fptoui float %7540 to i32
  %7542 = fptoui float %7536 to i32
  %7543 = fptoui float %7537 to i32
  %7544 = and i32 %7541, 31
  %7545 = lshr i32 %7542, %7544
  %7546 = lshr i32 %7543, %7544
  %7547 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %7541, i32 %7545, i32 %7546, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7548 = extractvalue %dx.types.ResRet.f32 %7547, 0
  %7549 = fcmp fast olt float %7548, -1.000000e+00
  %7550 = fcmp fast ogt float %7548, -1.000000e+00
  %7551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7552 = extractvalue %dx.types.CBufRet.f32 %7551, 1
  %7553 = select i1 %7550, float %7552, float 1.000000e+00
  %7554 = fadd fast float %7548, 1.000000e+00
  %7555 = fmul fast float %7553, %7554
  %7556 = call float @dx.op.unary.f32(i32 6, float %7555)  ; FAbs(value)
  %7557 = extractvalue %dx.types.CBufRet.f32 %7551, 3
  %7558 = fcmp fast oge float %7556, %7557
  %7559 = select i1 %7558, float 0x4197782600000000, float %7556
  %7560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7561 = extractvalue %dx.types.CBufRet.f32 %7560, 0
  %7562 = extractvalue %dx.types.CBufRet.f32 %7560, 1
  %7563 = extractvalue %dx.types.CBufRet.f32 %7560, 2
  %7564 = select i1 %7549, float %7561, float %7482
  %7565 = select i1 %7549, float %7562, float %7483
  %7566 = select i1 %7549, float %7563, float %7484
  %7567 = fmul fast float %7564, %7479
  %7568 = fmul fast float %7565, %7479
  %7569 = fmul fast float %7566, %7479
  %7570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7571 = extractvalue %dx.types.CBufRet.f32 %7570, 0
  %7572 = extractvalue %dx.types.CBufRet.f32 %7570, 1
  %7573 = extractvalue %dx.types.CBufRet.f32 %7570, 2
  %7574 = select i1 %7549, float %7571, float %7489
  %7575 = select i1 %7549, float %7572, float %7490
  %7576 = select i1 %7549, float %7573, float %7491
  %7577 = fmul fast float %7574, %7480
  %7578 = fmul fast float %7575, %7480
  %7579 = fmul fast float %7576, %7480
  %7580 = fadd fast float %7577, %7567
  %7581 = fadd fast float %7578, %7568
  %7582 = fadd fast float %7579, %7569
  %7583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7584 = extractvalue %dx.types.CBufRet.f32 %7583, 0
  %7585 = extractvalue %dx.types.CBufRet.f32 %7583, 1
  %7586 = extractvalue %dx.types.CBufRet.f32 %7583, 2
  %7587 = select i1 %7549, float %7584, float %7496
  %7588 = select i1 %7549, float %7585, float %7497
  %7589 = select i1 %7549, float %7586, float %7498
  %7590 = fadd fast float %7580, %7587
  %7591 = fadd fast float %7581, %7588
  %7592 = fadd fast float %7582, %7589
  %7593 = fmul fast float %7590, %7559
  %7594 = fmul fast float %7591, %7559
  %7595 = fmul fast float %7592, %7559
  %7596 = fmul fast float %7593, %7593
  %7597 = fmul fast float %7594, %7594
  %7598 = fadd fast float %7596, %7597
  %7599 = fmul fast float %7595, %7595
  %7600 = fadd fast float %7598, %7599
  %7601 = call float @dx.op.unary.f32(i32 24, float %7600)  ; Sqrt(value)
  %7602 = fsub fast float %7601, %7514
  %7603 = fmul fast float %7602, %7516
  %7604 = call float @dx.op.unary.f32(i32 7, float %7603)  ; Saturate(value)
  br label %7605

; <label>:7605                                    ; preds = %7530, %7526
  %7606 = phi float [ %7604, %7530 ], [ 1.000000e+00, %7526 ]
  %7607 = fmul fast float %7523, 5.000000e-01
  %7608 = fadd fast float %7607, 5.000000e-01
  %7609 = call float @dx.op.unary.f32(i32 22, float %7608)  ; Frc(value)
  %7610 = call float @dx.op.unary.f32(i32 27, float %7609)  ; Round_ni(value)
  %7611 = call float @dx.op.unary.f32(i32 22, float %7609)  ; Frc(value)
  %7612 = fmul fast float %7611, 2.000000e+00
  %7613 = fadd fast float %7612, -1.000000e+00
  %7614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %7475, float %7476, float %7610, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7615 = extractvalue %dx.types.ResRet.f32 %7614, 0
  %7616 = extractvalue %dx.types.ResRet.f32 %7614, 1
  %7617 = extractvalue %dx.types.ResRet.f32 %7614, 2
  %7618 = extractvalue %dx.types.ResRet.f32 %7614, 3
  %7619 = fadd fast float %7615, -5.000000e-01
  %7620 = fadd fast float %7617, -5.000000e-01
  %7621 = fmul fast float %7619, 0xBFD5555560000000
  %7622 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7620, float %7621)  ; FMad(a,b,c)
  %7623 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7616, float 0.000000e+00)  ; FMad(a,b,c)
  %7624 = fadd fast float %7623, %7618
  %7625 = fmul fast float %7619, -7.500000e-01
  %7626 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7620, float %7625)  ; FMad(a,b,c)
  %7627 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7616, float 0.000000e+00)  ; FMad(a,b,c)
  %7628 = fadd fast float %7627, %7618
  %7629 = call float @dx.op.binary.f32(i32 35, float %7622, float -1.000000e+00)  ; FMax(a,b)
  %7630 = call float @dx.op.binary.f32(i32 35, float %7624, float -1.000000e+00)  ; FMax(a,b)
  %7631 = call float @dx.op.binary.f32(i32 35, float %7626, float -1.000000e+00)  ; FMax(a,b)
  %7632 = call float @dx.op.binary.f32(i32 35, float %7628, float -1.000000e+00)  ; FMax(a,b)
  %7633 = call float @dx.op.binary.f32(i32 36, float %7629, float 1.000000e+00)  ; FMin(a,b)
  %7634 = call float @dx.op.binary.f32(i32 36, float %7630, float 1.000000e+00)  ; FMin(a,b)
  %7635 = call float @dx.op.binary.f32(i32 36, float %7631, float 1.000000e+00)  ; FMin(a,b)
  %7636 = call float @dx.op.binary.f32(i32 36, float %7632, float 1.000000e+00)  ; FMin(a,b)
  %7637 = fcmp fast olt float %7633, 0x3FEFFF8020000000
  br i1 %7637, label %7638, label %7753, !dx.controlflow.hints !151

; <label>:7638                                    ; preds = %7605
  %7639 = extractvalue %dx.types.CBufRet.f32 %7521, 3
  %7640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7641 = extractvalue %dx.types.CBufRet.f32 %7640, 0
  %7642 = extractvalue %dx.types.CBufRet.f32 %7640, 1
  %7643 = extractvalue %dx.types.CBufRet.f32 %7640, 2
  %7644 = extractvalue %dx.types.CBufRet.f32 %7640, 3
  %7645 = fsub fast float %7641, %7633
  %7646 = fsub fast float %7642, %7634
  %7647 = fsub fast float %7643, %7635
  %7648 = fsub fast float %7644, %7636
  %7649 = fmul fast float %7645, %7639
  %7650 = fmul fast float %7646, %7639
  %7651 = fmul fast float %7647, %7639
  %7652 = fmul fast float %7648, %7639
  %7653 = fadd fast float %7649, %7633
  %7654 = fadd fast float %7650, %7634
  %7655 = fsub fast float -0.000000e+00, %7654
  %7656 = fadd fast float %7651, %7635
  %7657 = fadd fast float %7652, %7636
  %7658 = fmul fast float %7653, %7653
  %7659 = fsub fast float %7654, %7658
  %7660 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7659)  ; FMax(a,b)
  %7661 = fdiv fast float 1.000000e+00, %7660
  %7662 = fmul fast float %7654, %7653
  %7663 = fsub fast float %7656, %7662
  %7664 = fsub fast float %7613, %7653
  %7665 = fmul fast float %7613, %7613
  %7666 = fsub fast float %7665, %7654
  %7667 = fmul fast float %7664, %7661
  %7668 = fmul fast float %7667, %7663
  %7669 = fsub fast float %7666, %7668
  %7670 = fmul fast float %7654, %7654
  %7671 = fsub fast float %7657, %7670
  %7672 = fmul fast float %7663, %7663
  %7673 = fmul fast float %7672, %7661
  %7674 = fsub fast float %7671, %7673
  %7675 = fdiv fast float %7669, %7674
  %7676 = fmul fast float %7663, %7675
  %7677 = fsub fast float %7664, %7676
  %7678 = fmul fast float %7677, %7661
  %7679 = fmul fast float %7678, %7653
  %7680 = fsub fast float 1.000000e+00, %7679
  %7681 = fmul fast float %7654, %7675
  %7682 = fsub fast float %7680, %7681
  %7683 = fmul fast float %7678, %7678
  %7684 = fmul fast float %7675, 4.000000e+00
  %7685 = fmul fast float %7684, %7682
  %7686 = fsub fast float %7683, %7685
  %7687 = call float @dx.op.unary.f32(i32 24, float %7686)  ; Sqrt(value)
  %7688 = fcmp fast oge float %7678, 0.000000e+00
  %7689 = fsub fast float -0.000000e+00, %7687
  %7690 = select i1 %7688, float %7689, float %7687
  %7691 = fsub fast float %7690, %7678
  %7692 = fdiv fast float %7691, %7675
  %7693 = fdiv fast float %7682, %7691
  %7694 = fmul fast float %7692, 5.000000e-01
  %7695 = fmul fast float %7693, 2.000000e+00
  %7696 = select i1 %7688, float %7694, float %7695
  %7697 = select i1 %7688, float %7695, float %7694
  %7698 = call float @dx.op.binary.f32(i32 35, float %7696, float %7697)  ; FMax(a,b)
  %7699 = call float @dx.op.binary.f32(i32 36, float %7696, float %7697)  ; FMin(a,b)
  %7700 = fcmp fast ogt float %7613, %7699
  br i1 %7700, label %7701, label %7711

; <label>:7701                                    ; preds = %7638
  %7702 = fsub fast float %7613, %7699
  %7703 = fsub fast float %7698, %7699
  %7704 = fmul fast float %7702, %7703
  %7705 = fmul fast float %7698, %7613
  %7706 = fadd fast float %7698, %7613
  %7707 = fmul fast float %7706, %7653
  %7708 = fadd fast float %7705, %7654
  %7709 = fsub fast float %7708, %7707
  %7710 = fdiv fast float %7709, %7704
  br label %7711

; <label>:7711                                    ; preds = %7701, %7638
  %7712 = phi float [ %7710, %7701 ], [ 0.000000e+00, %7638 ]
  %7713 = fcmp fast ogt float %7613, %7698
  %7714 = fsub fast float %7613, %7698
  br i1 %7713, label %7715, label %7725

; <label>:7715                                    ; preds = %7711
  %7716 = fsub fast float %7698, %7699
  %7717 = fmul fast float %7716, %7714
  %7718 = fmul fast float %7699, %7613
  %7719 = fadd fast float %7699, %7613
  %7720 = fmul fast float %7719, %7653
  %7721 = fsub fast float %7655, %7718
  %7722 = fadd fast float %7721, %7720
  %7723 = fdiv fast float %7722, %7717
  %7724 = fadd fast float %7723, %7712
  br label %7725

; <label>:7725                                    ; preds = %7715, %7711
  %7726 = phi float [ %7724, %7715 ], [ %7712, %7711 ]
  %7727 = fsub fast float %7613, %7699
  %7728 = fmul fast float %7727, %7714
  %7729 = fmul fast float %7699, %7698
  %7730 = fadd fast float %7699, %7698
  %7731 = fmul fast float %7730, %7653
  %7732 = fadd fast float %7729, %7654
  %7733 = fsub fast float %7732, %7731
  %7734 = fdiv fast float %7733, %7728
  %7735 = call float @dx.op.unary.f32(i32 7, float %7726)  ; Saturate(value)
  %7736 = fcmp fast oeq float %6404, 0.000000e+00
  %7737 = extractvalue %dx.types.CBufRet.f32 %7521, 0
  %7738 = fcmp fast oeq float %7737, 0.000000e+00
  %7739 = or i1 %7736, %7738
  %7740 = fmul fast float %7737, 2.000000e+00
  %7741 = fadd fast float %7522, %7523
  %7742 = fdiv fast float %7741, %7740
  %7743 = call float @dx.op.unary.f32(i32 7, float %7742)  ; Saturate(value)
  %7744 = fmul fast float %7743, 2.000000e+00
  %7745 = fsub fast float 3.000000e+00, %7744
  %7746 = fmul fast float %7743, %7743
  %7747 = fmul fast float %7746, %7745
  %7748 = select i1 %7739, float 1.000000e+00, float %7747
  %7749 = fmul fast float %7734, %6404
  %7750 = fadd fast float %7735, %7749
  %7751 = call float @dx.op.unary.f32(i32 7, float %7750)  ; Saturate(value)
  %7752 = fmul fast float %7748, %7751
  br label %7753

; <label>:7753                                    ; preds = %7725, %7605
  %7754 = phi float [ %7752, %7725 ], [ 0.000000e+00, %7605 ]
  %7755 = fsub fast float 1.000000e+00, %7754
  %7756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %35, float %7475, float %7476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7757 = extractvalue %dx.types.ResRet.f32 %7756, 0
  %7758 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7759 = extractvalue %dx.types.CBufRet.i32 %7758, 2
  %7760 = icmp eq i32 %7759, 0
  br i1 %7760, label %7766, label %7761

; <label>:7761                                    ; preds = %7753
  %7762 = call float @dx.op.unary.f32(i32 7, float %7754)  ; Saturate(value)
  %7763 = fadd fast float %7757, -1.000000e+00
  %7764 = fmul fast float %7762, %7763
  %7765 = fadd fast float %7764, 1.000000e+00
  br label %7766

; <label>:7766                                    ; preds = %7761, %7753
  %7767 = phi float [ %7765, %7761 ], [ %7755, %7753 ]
  br i1 %7529, label %7768, label %7786

; <label>:7768                                    ; preds = %7766
  %7769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7770 = extractvalue %dx.types.CBufRet.f32 %7769, 1
  %7771 = fsub fast float %7606, %7770
  %7772 = call float @dx.op.unary.f32(i32 7, float %7771)  ; Saturate(value)
  %7773 = fsub fast float %7606, %7528
  %7774 = call float @dx.op.unary.f32(i32 7, float %7773)  ; Saturate(value)
  %7775 = fsub fast float %7772, %7774
  %7776 = fsub fast float %7608, %7774
  %7777 = fdiv fast float %7776, %7775
  %7778 = call float @dx.op.unary.f32(i32 7, float %7777)  ; Saturate(value)
  %7779 = fmul fast float %7778, 2.000000e+00
  %7780 = fsub fast float 3.000000e+00, %7779
  %7781 = fsub fast float %7757, %7767
  %7782 = fmul fast float %7778, %7778
  %7783 = fmul fast float %7782, %7781
  %7784 = fmul fast float %7783, %7780
  %7785 = fadd fast float %7784, %7767
  br label %7786

; <label>:7786                                    ; preds = %7768, %7766
  %7787 = phi float [ %7785, %7768 ], [ %7767, %7766 ]
  %7788 = call float @dx.op.binary.f32(i32 35, float %7757, float %7787)  ; FMax(a,b)
  %7789 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7790 = extractvalue %dx.types.CBufRet.i32 %7789, 2
  %7791 = and i32 %7790, 1
  %7792 = icmp eq i32 %7791, 0
  %7793 = fcmp fast une float %7788, 1.000000e+00
  %7794 = and i1 %7793, %7792
  br i1 %7794, label %7795, label %7814

; <label>:7795                                    ; preds = %7786
  %7796 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %35, float %7475, float %7476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7797 = extractvalue %dx.types.ResRet.f32 %7796, 0
  %7798 = extractvalue %dx.types.ResRet.f32 %7796, 1
  %7799 = extractvalue %dx.types.ResRet.f32 %7796, 2
  %7800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7801 = extractvalue %dx.types.CBufRet.f32 %7800, 1
  %7802 = fmul fast float %7801, %7797
  %7803 = fmul fast float %7801, %7798
  %7804 = fmul fast float %7801, %7799
  %7805 = fcmp fast ogt float %7757, 0x3FEFFF2E40000000
  %7806 = fsub fast float 1.000000e+00, %7788
  %7807 = fsub fast float 1.000000e+00, %7757
  %7808 = fdiv fast float %7806, %7807
  %7809 = call float @dx.op.unary.f32(i32 7, float %7808)  ; Saturate(value)
  %7810 = select i1 %7805, float 0.000000e+00, float %7809
  %7811 = fmul fast float %7802, %7810
  %7812 = fmul fast float %7803, %7810
  %7813 = fmul fast float %7804, %7810
  br label %7814

; <label>:7814                                    ; preds = %7795, %7786
  %7815 = phi float [ 0.000000e+00, %7786 ], [ %7811, %7795 ]
  %7816 = phi float [ 0.000000e+00, %7786 ], [ %7812, %7795 ]
  %7817 = phi float [ 0.000000e+00, %7786 ], [ %7813, %7795 ]
  %7818 = fmul fast float %7815, %6392
  %7819 = fmul fast float %7816, %6392
  %7820 = fmul fast float %7817, %6392
  %7821 = fmul fast float %7788, %7450
  %7822 = call float @dx.op.dot3.f32(i32 55, float %7788, float %7788, float %7788, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7823 = call float @dx.op.dot3.f32(i32 55, float %7818, float %7819, float %7820, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7824 = select i1 %206, float %7822, float %7788
  %7825 = select i1 %206, float 1.000000e+00, float %7788
  %7826 = select i1 %206, float %7823, float %7818
  %7827 = select i1 %206, float 0.000000e+00, float %7819
  %7828 = select i1 %206, float 0.000000e+00, float %7820
  %7829 = fmul fast float %7824, %7462
  %7830 = fmul fast float %7824, %7463
  %7831 = fmul fast float %7825, %7464
  %7832 = fadd fast float %7829, %7826
  %7833 = fadd fast float %7830, %7827
  %7834 = fadd fast float %7828, %7831
  %7835 = fmul fast float %7824, %7465
  %7836 = fmul fast float %7824, %7466
  %7837 = fmul fast float %7825, %7467
  br label %7838

; <label>:7838                                    ; preds = %7814, %7471, %7440, %6672
  %7839 = phi float [ %6677, %6672 ], [ %7462, %7440 ], [ %7832, %7814 ], [ %7462, %7471 ]
  %7840 = phi float [ %6678, %6672 ], [ %7463, %7440 ], [ %7833, %7814 ], [ %7463, %7471 ]
  %7841 = phi float [ %6679, %6672 ], [ %7464, %7440 ], [ %7834, %7814 ], [ %7464, %7471 ]
  %7842 = phi float [ %6680, %6672 ], [ %7465, %7440 ], [ %7835, %7814 ], [ %7465, %7471 ]
  %7843 = phi float [ %6681, %6672 ], [ %7466, %7440 ], [ %7836, %7814 ], [ %7466, %7471 ]
  %7844 = phi float [ %6682, %6672 ], [ %7467, %7440 ], [ %7837, %7814 ], [ %7467, %7471 ]
  %7845 = phi float [ %6683, %6672 ], [ %7450, %7440 ], [ %7821, %7814 ], [ %7450, %7471 ]
  %7846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7847 = extractvalue %dx.types.CBufRet.f32 %7846, 2
  %7848 = extractvalue %dx.types.CBufRet.f32 %7846, 3
  %7849 = fmul fast float %7847, %82
  %7850 = fmul fast float %7848, %83
  %7851 = call float @dx.op.unary.f32(i32 7, float %7849)  ; Saturate(value)
  %7852 = call float @dx.op.unary.f32(i32 7, float %7850)  ; Saturate(value)
  %7853 = select i1 %6414, i32 2, i32 0
  %7854 = or i32 %7853, 1
  %7855 = uitofp i32 %7854 to float
  %7856 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7851, float %7852, float %7855, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7857 = extractvalue %dx.types.ResRet.f32 %7856, 0
  %7858 = extractvalue %dx.types.ResRet.f32 %7856, 1
  %7859 = extractvalue %dx.types.ResRet.f32 %7856, 2
  %7860 = extractvalue %dx.types.ResRet.f32 %7856, 3
  %7861 = add nuw nsw i32 %7853, 2
  %7862 = uitofp i32 %7861 to float
  %7863 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %35, float %7851, float %7852, float %7862, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7864 = extractvalue %dx.types.ResRet.f32 %7863, 0
  %7865 = extractvalue %dx.types.ResRet.f32 %7863, 1
  %7866 = extractvalue %dx.types.ResRet.f32 %7863, 2
  %7867 = extractvalue %dx.types.ResRet.f32 %7863, 3
  %7868 = call float @dx.op.binary.f32(i32 35, float %7858, float %7859)  ; FMax(a,b)
  %7869 = call float @dx.op.binary.f32(i32 35, float %7857, float %7868)  ; FMax(a,b)
  %7870 = call float @dx.op.binary.f32(i32 35, float %7869, float %7860)  ; FMax(a,b)
  %7871 = call float @dx.op.binary.f32(i32 36, float %7865, float %7866)  ; FMin(a,b)
  %7872 = call float @dx.op.binary.f32(i32 36, float %7864, float %7871)  ; FMin(a,b)
  %7873 = call float @dx.op.binary.f32(i32 36, float %7872, float %7867)  ; FMin(a,b)
  %7874 = fmul fast float %7870, 2.550000e+02
  %7875 = fadd fast float %7874, 0x3F70101020000000
  %7876 = fptoui float %7875 to i32
  %7877 = fmul fast float %7873, 2.550000e+02
  %7878 = fadd fast float %7877, 0x3F70101020000000
  %7879 = fptoui float %7878 to i32
  %7880 = icmp ult i32 %7876, %7879
  br i1 %7880, label %7881, label %8050

; <label>:7881                                    ; preds = %7838
  %7882 = fcmp fast ogt float %72, 9.843750e-01
  %7883 = fadd fast float %6676, -4.000000e+00
  %7884 = select i1 %7882, float -4.000000e+00, float %7883
  %7885 = call float @dx.op.binary.f32(i32 35, float %7884, float 0.000000e+00)  ; FMax(a,b)
  %7886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7887 = extractvalue %dx.types.CBufRet.f32 %7886, 0
  %7888 = fadd fast float %7887, %7885
  %7889 = extractvalue %dx.types.CBufRet.f32 %7886, 2
  %7890 = fmul fast float %7888, %7889
  %7891 = call float @dx.op.unary.f32(i32 23, float %7890)  ; Log(value)
  %7892 = extractvalue %dx.types.CBufRet.f32 %7886, 3
  %7893 = fmul fast float %7892, %7891
  %7894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7895 = extractvalue %dx.types.CBufRet.f32 %7894, 2
  %7896 = fmul fast float %7893, %7895
  %7897 = call float @dx.op.unary.f32(i32 7, float %7896)  ; Saturate(value)
  %7898 = uitofp i32 %7876 to float
  %7899 = uitofp i32 %7879 to float
  %7900 = fadd fast float %7898, 5.000000e-01
  %7901 = fadd fast float %7899, 5.000000e-01
  %7902 = fmul fast float %7895, %7900
  %7903 = fmul fast float %7895, %7901
  %7904 = fadd fast float %7902, 0x3F0FFB4800000000
  %7905 = fadd fast float %7903, 0xBF0FFB4800000000
  %7906 = call float @dx.op.binary.f32(i32 35, float %7897, float %7904)  ; FMax(a,b)
  %7907 = call float @dx.op.binary.f32(i32 36, float %7906, float %7905)  ; FMin(a,b)
  %7908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7909 = extractvalue %dx.types.CBufRet.f32 %7908, 1
  %7910 = extractvalue %dx.types.CBufRet.f32 %7908, 2
  %7911 = extractvalue %dx.types.CBufRet.f32 %7908, 0
  %7912 = select i1 %6414, float %7911, float 0.000000e+00
  %7913 = fmul fast float %7909, %7907
  %7914 = fadd fast float %7912, %7913
  %7915 = fadd fast float %7912, %7910
  %7916 = fsub fast float %7909, %7910
  %7917 = fadd fast float %7916, %7912
  %7918 = call float @dx.op.binary.f32(i32 35, float %7914, float %7915)  ; FMax(a,b)
  %7919 = call float @dx.op.binary.f32(i32 36, float %7918, float %7917)  ; FMin(a,b)
  %7920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %33, float %7851, float %7852, float %7919, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7921 = extractvalue %dx.types.ResRet.f32 %7920, 0
  %7922 = extractvalue %dx.types.ResRet.f32 %7920, 1
  %7923 = extractvalue %dx.types.ResRet.f32 %7920, 2
  %7924 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7925 = extractvalue %dx.types.CBufRet.i32 %7924, 0
  %7926 = extractvalue %dx.types.CBufRet.i32 %7924, 1
  %7927 = uitofp i32 %7925 to float
  %7928 = uitofp i32 %7926 to float
  %7929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7930 = extractvalue %dx.types.CBufRet.f32 %7929, 0
  %7931 = extractvalue %dx.types.CBufRet.f32 %7929, 1
  %7932 = fmul fast float %7927, %7851
  %7933 = fmul fast float %7928, %7852
  %7934 = fadd fast float %7932, -5.000000e-01
  %7935 = fadd fast float %7933, -5.000000e-01
  %7936 = call float @dx.op.unary.f32(i32 22, float %7934)  ; Frc(value)
  %7937 = call float @dx.op.unary.f32(i32 22, float %7935)  ; Frc(value)
  %7938 = fmul fast float %7936, %7936
  %7939 = fmul fast float %7938, %7936
  %7940 = fsub fast float 3.000000e+00, %7936
  %7941 = fmul fast float %7938, %7940
  %7942 = fmul fast float %7936, 3.000000e+00
  %7943 = fmul fast float %7939, 3.000000e+00
  %7944 = fmul fast float %7938, 6.000000e+00
  %7945 = fsub fast float %7943, %7944
  %7946 = fadd fast float %7945, 4.000000e+00
  %7947 = fmul fast float %7946, 0x3FC5555560000000
  %7948 = fmul fast float %7939, -3.000000e+00
  %7949 = fadd fast float %7938, %7936
  %7950 = fmul fast float %7949, 3.000000e+00
  %7951 = fadd fast float %7948, 1.000000e+00
  %7952 = fadd fast float %7951, %7950
  %7953 = fmul fast float %7939, 0x3FC5555560000000
  %7954 = fmul fast float %7937, %7937
  %7955 = fmul fast float %7954, %7937
  %7956 = fsub fast float 3.000000e+00, %7937
  %7957 = fmul fast float %7954, %7956
  %7958 = fmul fast float %7937, 3.000000e+00
  %7959 = fmul fast float %7955, 3.000000e+00
  %7960 = fmul fast float %7954, 6.000000e+00
  %7961 = fsub fast float %7959, %7960
  %7962 = fadd fast float %7961, 4.000000e+00
  %7963 = fmul fast float %7962, 0x3FC5555560000000
  %7964 = fmul fast float %7955, -3.000000e+00
  %7965 = fadd fast float %7954, %7937
  %7966 = fmul fast float %7965, 3.000000e+00
  %7967 = fadd fast float %7964, 1.000000e+00
  %7968 = fadd fast float %7967, %7966
  %7969 = fmul fast float %7955, 0x3FC5555560000000
  %7970 = fadd fast float %7936, 1.000000e+00
  %7971 = fsub fast float 1.000000e+00, %7942
  %7972 = fadd fast float %7971, %7941
  %7973 = fadd fast float %7972, %7946
  %7974 = fmul fast float %7973, 0x3FC5555560000000
  %7975 = fdiv fast float %7947, %7974
  %7976 = fsub fast float %7970, %7975
  %7977 = fsub fast float 1.000000e+00, %7936
  %7978 = fadd fast float %7952, %7939
  %7979 = fmul fast float %7978, 0x3FC5555560000000
  %7980 = fdiv fast float %7953, %7979
  %7981 = fadd fast float %7977, %7980
  %7982 = fadd fast float %7937, 1.000000e+00
  %7983 = fsub fast float 1.000000e+00, %7958
  %7984 = fadd fast float %7983, %7957
  %7985 = fadd fast float %7984, %7962
  %7986 = fmul fast float %7985, 0x3FC5555560000000
  %7987 = fdiv fast float %7963, %7986
  %7988 = fsub fast float %7982, %7987
  %7989 = fsub fast float 1.000000e+00, %7937
  %7990 = fadd fast float %7968, %7955
  %7991 = fmul fast float %7990, 0x3FC5555560000000
  %7992 = fdiv fast float %7969, %7991
  %7993 = fadd fast float %7992, %7989
  %7994 = fmul fast float %7976, %7930
  %7995 = fsub fast float %7851, %7994
  %7996 = fmul fast float %7981, %7930
  %7997 = fadd fast float %7996, %7851
  %7998 = fmul fast float %7993, %7931
  %7999 = fadd fast float %7998, %7852
  %8000 = fmul fast float %7988, %7931
  %8001 = fsub fast float %7852, %8000
  %8002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7995, float %8001, float %7919, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8003 = extractvalue %dx.types.ResRet.f32 %8002, 0
  %8004 = extractvalue %dx.types.ResRet.f32 %8002, 1
  %8005 = extractvalue %dx.types.ResRet.f32 %8002, 2
  %8006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7997, float %8001, float %7919, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8007 = extractvalue %dx.types.ResRet.f32 %8006, 0
  %8008 = extractvalue %dx.types.ResRet.f32 %8006, 1
  %8009 = extractvalue %dx.types.ResRet.f32 %8006, 2
  %8010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7995, float %7999, float %7919, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8011 = extractvalue %dx.types.ResRet.f32 %8010, 0
  %8012 = extractvalue %dx.types.ResRet.f32 %8010, 1
  %8013 = extractvalue %dx.types.ResRet.f32 %8010, 2
  %8014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %33, float %7997, float %7999, float %7919, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8015 = extractvalue %dx.types.ResRet.f32 %8014, 0
  %8016 = extractvalue %dx.types.ResRet.f32 %8014, 1
  %8017 = extractvalue %dx.types.ResRet.f32 %8014, 2
  %8018 = fsub fast float %8011, %8003
  %8019 = fsub fast float %8012, %8004
  %8020 = fsub fast float %8013, %8005
  %8021 = fmul fast float %8018, %7991
  %8022 = fmul fast float %8019, %7991
  %8023 = fmul fast float %8020, %7991
  %8024 = fadd fast float %8021, %8003
  %8025 = fadd fast float %8022, %8004
  %8026 = fadd fast float %8023, %8005
  %8027 = fsub fast float %8015, %8007
  %8028 = fsub fast float %8016, %8008
  %8029 = fsub fast float %8017, %8009
  %8030 = fmul fast float %8027, %7991
  %8031 = fmul fast float %8028, %7991
  %8032 = fmul fast float %8029, %7991
  %8033 = fsub fast float %8007, %8024
  %8034 = fadd fast float %8033, %8030
  %8035 = fsub fast float %8008, %8025
  %8036 = fadd fast float %8035, %8031
  %8037 = fsub fast float %8009, %8026
  %8038 = fadd fast float %8037, %8032
  %8039 = fmul fast float %8034, %7979
  %8040 = fmul fast float %8036, %7979
  %8041 = fmul fast float %8038, %7979
  %8042 = fadd fast float %8039, %8024
  %8043 = fadd fast float %8040, %8025
  %8044 = fadd fast float %8041, %8026
  %8045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8046 = extractvalue %dx.types.CBufRet.f32 %8045, 1
  %8047 = fmul fast float %8042, %8046
  %8048 = fmul fast float %8043, %8046
  %8049 = fmul fast float %8044, %8046
  br label %8050

; <label>:8050                                    ; preds = %7881, %7838
  %8051 = phi float [ %7921, %7881 ], [ 1.000000e+00, %7838 ]
  %8052 = phi float [ %7922, %7881 ], [ 1.000000e+00, %7838 ]
  %8053 = phi float [ %7923, %7881 ], [ 1.000000e+00, %7838 ]
  %8054 = phi float [ %8047, %7881 ], [ 0.000000e+00, %7838 ]
  %8055 = phi float [ %8048, %7881 ], [ 0.000000e+00, %7838 ]
  %8056 = phi float [ %8049, %7881 ], [ 0.000000e+00, %7838 ]
  %8057 = fmul fast float %8054, %6392
  %8058 = fmul fast float %8055, %6392
  %8059 = fmul fast float %8056, %6392
  %8060 = fmul fast float %8051, %7845
  %8061 = call float @dx.op.dot3.f32(i32 55, float %8051, float %8052, float %8053, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8062 = call float @dx.op.dot3.f32(i32 55, float %8057, float %8058, float %8059, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8063 = select i1 %206, float %8061, float %8051
  %8064 = select i1 %206, float %8061, float %8052
  %8065 = select i1 %206, float 1.000000e+00, float %8053
  %8066 = select i1 %206, float %8062, float %8057
  %8067 = select i1 %206, float 0.000000e+00, float %8058
  %8068 = select i1 %206, float 0.000000e+00, float %8059
  %8069 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8070 = extractvalue %dx.types.CBufRet.i32 %8069, 3
  %8071 = and i32 %8070, 3
  %8072 = icmp ne i32 %8071, 0
  %8073 = and i32 %8070, 4
  %8074 = icmp ne i32 %8073, 0
  %8075 = and i1 %8072, %8074
  %8076 = and i1 %206, %8075
  br i1 %8076, label %8077, label %8083

; <label>:8077                                    ; preds = %8050
  %8078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8079 = extractvalue %dx.types.CBufRet.f32 %8078, 1
  %8080 = fadd fast float %8060, -1.000000e+00
  %8081 = fmul fast float %8079, %8080
  %8082 = fadd fast float %8081, 1.000000e+00
  br label %8083

; <label>:8083                                    ; preds = %8077, %8050
  %8084 = phi float [ %8082, %8077 ], [ %8060, %8050 ]
  %8085 = fadd fast float %7842, %7839
  %8086 = fmul fast float %8063, %8085
  %8087 = fadd fast float %8086, %8066
  %8088 = fadd fast float %7843, %7840
  %8089 = fmul fast float %8064, %8088
  %8090 = fadd fast float %8089, %8067
  %8091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8092 = extractvalue %dx.types.CBufRet.f32 %8091, 0
  br i1 %206, label %8093, label %8116

; <label>:8093                                    ; preds = %8083
  %8094 = fadd fast float %8087, %8090
  %8095 = fmul fast float %8092, %8094
  %8096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8097 = extractvalue %dx.types.CBufRet.f32 %8096, 3
  %8098 = extractvalue %dx.types.CBufRet.f32 %6396, 1
  %8099 = fsub fast float %6401, %6395
  %8100 = fadd fast float %8099, %6402
  %8101 = fsub fast float %8100, %8098
  %8102 = extractvalue %dx.types.CBufRet.f32 %6396, 2
  %8103 = fmul fast float %8101, %8102
  %8104 = call float @dx.op.unary.f32(i32 7, float %8103)  ; Saturate(value)
  %8105 = fsub fast float %8104, %8097
  %8106 = fmul fast float %8105, %8084
  %8107 = fadd fast float %8106, %8097
  %8108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8109 = extractvalue %dx.types.CBufRet.f32 %8108, 0
  %8110 = fsub fast float %8107, %8109
  %8111 = fmul fast float %8110, 1.000000e+01
  %8112 = call float @dx.op.unary.f32(i32 7, float %8111)  ; Saturate(value)
  %8113 = fmul fast float %8112, %6392
  %8114 = fsub fast float %6392, %8113
  %8115 = fmul fast float %8114, %8107
  br label %8140

; <label>:8116                                    ; preds = %8083
  %8117 = fadd fast float %7844, %7841
  %8118 = fmul fast float %8065, %8117
  %8119 = fadd fast float %8118, %8068
  %8120 = fmul fast float %8092, %8087
  %8121 = fmul fast float %8092, %8090
  %8122 = fmul fast float %8092, %8119
  %8123 = call float @dx.op.binary.f32(i32 35, float %8121, float %8122)  ; FMax(a,b)
  %8124 = call float @dx.op.binary.f32(i32 35, float %8120, float %8123)  ; FMax(a,b)
  %8125 = call float @dx.op.binary.f32(i32 35, float %8124, float %6392)  ; FMax(a,b)
  %8126 = fcmp fast ugt float %8125, 0x3F10000000000000
  br i1 %8126, label %8128, label %8127

; <label>:8127                                    ; preds = %8116
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8128

; <label>:8128                                    ; preds = %8127, %8116
  %8129 = add i32 %41, 356
  %8130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %8129, i32 undef)  ; BufferLoad(srv,index,wot)
  %8131 = extractvalue %dx.types.ResRet.i32 %8130, 0
  %8132 = and i32 %8131, 32
  %8133 = icmp eq i32 %8132, 0
  br i1 %8133, label %8140, label %8134

; <label>:8134                                    ; preds = %8128
  %8135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8136 = extractvalue %dx.types.CBufRet.f32 %8135, 0
  %8137 = fmul fast float %8136, 0x3FE99999A0000000
  %8138 = fadd fast float %8136, %8120
  %8139 = fadd fast float %8137, %8122
  br label %8140

; <label>:8140                                    ; preds = %8134, %8128, %8093
  %8141 = phi float [ %8095, %8093 ], [ %8138, %8134 ], [ %8120, %8128 ]
  %8142 = phi float [ %8115, %8093 ], [ %8121, %8134 ], [ %8121, %8128 ]
  %8143 = phi float [ %8114, %8093 ], [ %8139, %8134 ], [ %8122, %8128 ]
  %8144 = phi float [ %8114, %8093 ], [ %6392, %8134 ], [ %6392, %8128 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8145 = call float @dx.op.binary.f32(i32 36, float %8141, float 3.225500e+04)  ; FMin(a,b)
  %8146 = call float @dx.op.binary.f32(i32 36, float %8142, float 3.225500e+04)  ; FMin(a,b)
  %8147 = call float @dx.op.binary.f32(i32 36, float %8143, float 3.225500e+04)  ; FMin(a,b)
  %8148 = call float @dx.op.binary.f32(i32 36, float %8144, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8145)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8146)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8147)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8148)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

