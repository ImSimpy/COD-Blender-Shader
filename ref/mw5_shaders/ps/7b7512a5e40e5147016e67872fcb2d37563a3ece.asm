;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xy          1     NONE   float   xy  
; NORMAL                   0   xyz         2     NONE   float   xyz 
; TANGENT                  0   xyzw        3     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         4     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        5     NONE   float   xyzw
; SV_IsFrontFace           0   x           6    FFACE    uint   x   
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
; shader hash: b4688451c3d6931bc47619fbfd848bd2
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
; TEXCOORDS                0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
; SV_IsFrontFace           0        nointerpolation       
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
;                                   texture    byte         r/o      T2             t0     1
;                                   texture     f32          2d      T3     t33,space2     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture    byte         r/o      T5     t16,space1     1
;                                   texture    byte         r/o      T6     t17,space1     1
;                                   texture     f32          2d      T7             t1     1
;                                   texture     f32          2d      T8     t58,space2     1
;                                   texture     f32          2d      T9     t57,space2     1
;                                   texture    byte         r/o     T10     t69,space1     1
;                                   texture     u32          2d     T11     t56,space2     1
;                                   texture     f32          2d     T12     t34,space2     1
;                                   texture     f32          2d     T13      t2,space2     1
;                                   texture     f32          2d     T14      t3,space2     1
;                                   texture     f32          2d     T15      t4,space2     1
;                                   textureunorm_f32     2darray     T16     t80,space2     1
;                                   texture    byte         r/o     T17     t67,space1     1
;                                   texture     f32          2d     T18      t7,space2     1
;                                   texture     f32          2d     T19      t6,space2     1
;                                   texture     f32          2d     T20      t5,space2     1
;                                   texture     f32          2d     T21     t38,space2     1
;                                   texture     f32          1d     T22     t30,space2     1
;                                   texture     f32          3d     T23     t44,space2     1
;                                   texture     f32          3d     T24     t45,space2     1
;                                   texture     f32     2darray     T25     t47,space2     1
;                                   textureunorm_f32     2darray     T26     t85,space2     1
;                                   texture     f32          2d     T27     t83,space2     1
;                                   texture     f32          2d     T28     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 25, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 18, 20, 21, 22, 23, 24 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 24 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 24 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 24 }
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = alloca [4 x i32], align 4
  %37 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = icmp ne i32 %37, 0
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = alloca [12 x float], align 4
  %60 = alloca [12 x float], align 4
  %61 = alloca [3 x float], align 4
  %62 = alloca [3 x float], align 4
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = fmul fast float %66, %55
  %68 = fmul fast float %66, %56
  %69 = select i1 %38, float 1.000000e+00, float -1.000000e+00
  %70 = fmul fast float %50, %69
  %71 = fmul fast float %51, %69
  %72 = fmul fast float %52, %69
  %73 = fmul fast float %51, %48
  %74 = fmul fast float %52, %47
  %75 = fsub fast float %73, %74
  %76 = fmul fast float %52, %46
  %77 = fmul fast float %50, %48
  %78 = fsub fast float %76, %77
  %79 = fmul fast float %50, %47
  %80 = fmul fast float %51, %46
  %81 = fsub fast float %79, %80
  %82 = call float @dx.op.dot3.f32(i32 55, float %39, float %40, float %41, float %39, float %40, float %41)  ; Dot3(ax,ay,az,bx,by,bz)
  %83 = bitcast float %82 to i32
  %84 = ashr i32 %83, 1
  %85 = sub nsw i32 1597250115, %84
  %86 = bitcast i32 %85 to float
  %87 = fmul fast float %86, %39
  %88 = fmul fast float %86, %40
  %89 = fmul fast float %86, %41
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %92 = extractvalue %dx.types.CBufRet.f32 %90, 3
  %93 = fmul fast float %67, 2.000000e+00
  %94 = fmul fast float %93, %91
  %95 = fmul fast float %68, 2.000000e+00
  %96 = fmul fast float %95, %92
  %97 = fsub fast float 1.000000e+00, %94
  %98 = fsub fast float 1.000000e+00, %96
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = fmul fast float %97, %100
  %104 = fmul fast float %97, %101
  %105 = fmul fast float %97, %102
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = fmul fast float %98, %107
  %111 = fmul fast float %98, %108
  %112 = fmul fast float %98, %109
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = fadd fast float %110, %114
  %118 = fadd fast float %117, %103
  %119 = fadd fast float %111, %115
  %120 = fadd fast float %119, %104
  %121 = fadd fast float %112, %116
  %122 = fadd fast float %121, %105
  %123 = fmul fast float %118, %58
  %124 = fmul fast float %120, %58
  %125 = fmul fast float %122, %58
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 0
  %128 = extractvalue %dx.types.ResRet.i32 %126, 1
  %129 = extractvalue %dx.types.ResRet.i32 %126, 2
  %130 = extractvalue %dx.types.ResRet.i32 %126, 3
  %131 = bitcast i32 %127 to float
  %132 = bitcast i32 %128 to float
  %133 = bitcast i32 %129 to float
  %134 = bitcast i32 %130 to float
  %135 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %136 = call float @dx.op.unary.f32(i32 25, float %135)  ; Rsqrt(value)
  %137 = fmul fast float %136, %70
  %138 = fmul fast float %136, %71
  %139 = fmul fast float %136, %72
  %140 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %141 = call float @dx.op.unary.f32(i32 25, float %140)  ; Rsqrt(value)
  %142 = fmul fast float %141, %123
  %143 = fmul fast float %141, %124
  %144 = fmul fast float %141, %125
  %145 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %146 = fmul fast float %145, %145
  %147 = fmul fast float %146, %133
  %148 = fadd fast float %147, %134
  %149 = call float @dx.op.unary.f32(i32 7, float %148)  ; Saturate(value)
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %152 = fmul fast float %151, %140
  %153 = fsub fast float %131, %152
  %154 = fmul fast float %153, %132
  %155 = call float @dx.op.unary.f32(i32 7, float %154)  ; Saturate(value)
  %156 = fmul fast float %155, %149
  %157 = fmul fast float %67, 5.000000e-01
  %158 = fmul fast float %68, 5.000000e-01
  %159 = fptosi float %157 to i32
  %160 = fptosi float %158 to i32
  %161 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %159, i32 %160, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = lshr i32 %162, 18
  %164 = uitofp i32 %163 to float
  %165 = fmul fast float %164, 0x3F4C00EBA0000000
  %166 = call float @dx.op.unary.f32(i32 21, float %165)  ; Exp(value)
  %167 = fadd fast float %166, -1.000000e+00
  %168 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %18, i32 0)  ; GetDimensions(handle,mipLevel)
  %169 = extractvalue %dx.types.Dimensions %168, 0
  %170 = sitofp i32 %169 to float
  %171 = extractvalue %dx.types.Dimensions %168, 1
  %172 = sitofp i32 %171 to float
  %173 = fcmp fast oge float %157, %170
  %174 = fcmp fast oge float %158, %172
  %175 = or i1 %173, %174
  %176 = select i1 %175, float 0x4197782600000000, float %167
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 3
  %180 = fmul fast float %178, %67
  %181 = fmul fast float %179, %68
  %182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %183 = extractvalue %dx.types.ResRet.i32 %182, 0
  %184 = and i32 %183, 114688
  %185 = icmp ne i32 %184, 0
  %186 = select i1 %185, float %180, float 0.000000e+00
  %187 = select i1 %185, float %181, float 0.000000e+00
  %188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %32, float %186, float %187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = fmul fast float %189, 2.550000e+02
  %191 = fptoui float %190 to i32
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.i32 %193, 3
  %195 = and i32 %194, 3
  %196 = icmp ne i32 %195, 0
  %197 = and i32 %194, 4
  %198 = icmp ne i32 %197, 0
  %199 = and i1 %196, %198
  br i1 %199, label %200, label %211

; <label>:200                                     ; preds = %0
  %201 = extractvalue %dx.types.CBufRet.f32 %192, 3
  %202 = fmul fast float %201, %68
  %203 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %204 = fmul fast float %203, %67
  %205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %31, float %204, float %202, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = fsub fast float 1.000000e+00, %206
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %210 = fcmp fast olt float %207, %209
  br label %214

; <label>:211                                     ; preds = %0
  %212 = icmp eq i32 %197, 0
  %213 = and i1 %196, %212
  br label %214

; <label>:214                                     ; preds = %211, %200
  %215 = phi i1 [ %210, %200 ], [ %213, %211 ]
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = shl i32 %217, 4
  %219 = and i32 %218, 32752
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = lshr i32 %217, 7
  %222 = and i32 %221, 32752
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %217, 22
  %225 = shl nuw nsw i32 %224, 5
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 255
  %230 = uitofp i32 %229 to float
  %231 = fmul fast float %230, 0x3F70101020000000
  %232 = lshr i32 %228, 8
  %233 = and i32 %232, 255
  %234 = uitofp i32 %233 to float
  %235 = fmul fast float %234, 0x3F70101020000000
  %236 = lshr i32 %228, 16
  %237 = and i32 %236, 255
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3F70101020000000
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = and i32 %241, 65535
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %241, 16
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = and i32 %247, 65535
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %247, 16
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = fmul fast float %249, 0x3F50624DE0000000
  %253 = fmul fast float %251, 0x3F50624DE0000000
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = and i32 %255, 2
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %265, label %258

; <label>:258                                     ; preds = %214
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = add i32 %260, 0
  %262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %262, %dx.types.Handle %64, float %53, float %54, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 3
  br label %265

; <label>:265                                     ; preds = %258, %214
  %266 = phi float [ 1.000000e+00, %214 ], [ %264, %258 ]
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = or i32 %270, %268
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %860, label %273

; <label>:273                                     ; preds = %265
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = lshr i32 %275, 16
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = fmul fast float %277, 0x3F50624DE0000000
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = lshr i32 %280, 16
  %282 = and i32 %281, 255
  %283 = lshr i32 %280, 24
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 65535
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %285, 16
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = lshr i32 %291, 22
  %293 = shl nuw nsw i32 %292, 5
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = shl i32 %291, 4
  %296 = and i32 %295, 32752
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %291, 7
  %299 = and i32 %298, 32752
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 3
  %303 = fmul fast float %302, 1.000000e+03
  %304 = fmul fast float %252, %303
  %305 = call float @dx.op.unary.f32(i32 22, float %304)  ; Frc(value)
  %306 = fadd fast float %305, %243
  %307 = fmul fast float %253, %303
  %308 = call float @dx.op.unary.f32(i32 22, float %307)  ; Frc(value)
  %309 = fadd fast float %308, %245
  %310 = fmul fast float %278, %303
  %311 = call float @dx.op.unary.f32(i32 22, float %310)  ; Frc(value)
  %312 = fmul fast float %311, 0x401921FB60000000
  %313 = fadd fast float %312, %294
  %314 = call float @dx.op.unary.f32(i32 13, float %313)  ; Sin(value)
  %315 = call float @dx.op.unary.f32(i32 12, float %313)  ; Cos(value)
  %316 = fsub fast float -0.000000e+00, %314
  %317 = fadd fast float %53, -5.000000e-01
  %318 = fadd fast float %54, -5.000000e-01
  %319 = fmul fast float %287, %317
  %320 = fmul fast float %289, %318
  %321 = fadd fast float %319, 5.000000e-01
  %322 = fadd fast float %320, 5.000000e-01
  %323 = fmul fast float %297, %321
  %324 = fmul fast float %300, %322
  %325 = fmul fast float %315, %323
  %326 = call float @dx.op.tertiary.f32(i32 46, float %316, float %324, float %325)  ; FMad(a,b,c)
  %327 = fmul fast float %314, %323
  %328 = call float @dx.op.tertiary.f32(i32 46, float %315, float %324, float %327)  ; FMad(a,b,c)
  %329 = fadd fast float %306, %326
  %330 = fadd fast float %309, %328
  %331 = icmp ugt i32 %282, 1
  %332 = icmp ugt i32 %280, 33554431
  %333 = or i1 %332, %331
  br i1 %333, label %334, label %358

; <label>:334                                     ; preds = %273
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = lshr i32 %336, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = fmul fast float %302, %338
  %340 = call float @dx.op.unary.f32(i32 22, float %339)  ; Frc(value)
  %341 = mul nuw nsw i32 %282, %283
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %340, %342
  %344 = call float @dx.op.unary.f32(i32 27, float %343)  ; Round_ni(value)
  %345 = fptoui float %344 to i32
  %346 = urem i32 %345, %282
  %347 = udiv i32 %345, %283
  %348 = call float @dx.op.unary.f32(i32 22, float %329)  ; Frc(value)
  %349 = call float @dx.op.unary.f32(i32 22, float %330)  ; Frc(value)
  %350 = uitofp i32 %346 to float
  %351 = uitofp i32 %347 to float
  %352 = fadd fast float %348, %350
  %353 = fadd fast float %349, %351
  %354 = uitofp i32 %282 to float
  %355 = uitofp i32 %283 to float
  %356 = fdiv fast float %352, %354
  %357 = fdiv fast float %353, %355
  br label %358

; <label>:358                                     ; preds = %334, %273
  %359 = phi float [ %356, %334 ], [ %329, %273 ]
  %360 = phi float [ %357, %334 ], [ %330, %273 ]
  %361 = and i32 %268, 256
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %407, label %363

; <label>:363                                     ; preds = %358
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = add i32 %365, 0
  %367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %368 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %367, %dx.types.Handle %64, float %359, float %360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = shl i32 %371, 4
  %373 = and i32 %372, 32752
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %371, 7
  %376 = and i32 %375, 32752
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = fsub fast float 1.000000e+00, %266
  %379 = call float @dx.op.binary.f32(i32 35, float %378, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %380 = bitcast float %266 to i32
  %381 = sitofp i32 %380 to float
  %382 = fadd fast float %381, 0xC1CFBF8940000000
  %383 = fmul fast float %377, %382
  %384 = fadd fast float %383, 0x41CFBF8940000000
  %385 = fptosi float %384 to i32
  %386 = bitcast i32 %385 to float
  %387 = bitcast float %379 to i32
  %388 = sitofp i32 %387 to float
  %389 = fadd fast float %388, 0xC1CFBF8940000000
  %390 = fmul fast float %389, %377
  %391 = fadd fast float %390, 0x41CFBF8940000000
  %392 = fptosi float %391 to i32
  %393 = bitcast i32 %392 to float
  %394 = fmul fast float %386, %374
  %395 = fmul fast float %393, %374
  %396 = fsub fast float %379, %394
  %397 = fadd fast float %395, %379
  %398 = call float @dx.op.unary.f32(i32 7, float %396)  ; Saturate(value)
  %399 = call float @dx.op.unary.f32(i32 7, float %397)  ; Saturate(value)
  %400 = fsub fast float %369, %398
  %401 = fsub fast float %399, %398
  %402 = bitcast float %401 to i32
  %403 = sub nsw i32 2129859010, %402
  %404 = bitcast i32 %403 to float
  %405 = fmul fast float %404, %400
  %406 = call float @dx.op.unary.f32(i32 7, float %405)  ; Saturate(value)
  br label %407

; <label>:407                                     ; preds = %363, %358
  %408 = phi float [ %406, %363 ], [ %266, %358 ]
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 128
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %428, label %413

; <label>:413                                     ; preds = %407
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 180, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = add i32 %415, 0
  %417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %416, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %418 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %417, %dx.types.Handle %64, float %359, float %360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, 524288
  %423 = icmp ne i32 %422, 0
  %424 = fcmp fast ogt float %419, 0x3FE0101020000000
  %425 = select i1 %424, float 1.000000e+00, float 0.000000e+00
  %426 = select i1 %423, float %425, float %419
  %427 = fmul fast float %426, %408
  br label %428

; <label>:428                                     ; preds = %413, %407
  %429 = phi float [ %427, %413 ], [ %408, %407 ]
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 16
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %627, label %434

; <label>:434                                     ; preds = %428
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = add i32 %438, 0
  %440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %439, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %441 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %440, %dx.types.Handle %63, float %359, float %360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = extractvalue %dx.types.ResRet.f32 %441, 1
  %444 = extractvalue %dx.types.ResRet.f32 %441, 2
  %445 = extractvalue %dx.types.ResRet.f32 %441, 3
  %446 = and i32 %436, 255
  %447 = uitofp i32 %446 to float
  %448 = lshr i32 %436, 8
  %449 = and i32 %448, 255
  %450 = uitofp i32 %449 to float
  %451 = fmul fast float %445, %447
  %452 = fadd fast float %451, %450
  %453 = fmul fast float %452, 0x3F70101000000000
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 512
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %465, label %458

; <label>:458                                     ; preds = %434
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = add i32 %460, 0
  %462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %463 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %462, %dx.types.Handle %64, float %359, float %360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  br label %465

; <label>:465                                     ; preds = %458, %434
  %466 = phi float [ %464, %458 ], [ 1.000000e+00, %434 ]
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = and i32 %468, 33554432
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %574, label %471

; <label>:471                                     ; preds = %465
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = and i32 %473, 65535
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = lshr i32 %473, 16
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 65535
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = lshr i32 %483, 24
  %485 = uitofp i32 %484 to float
  %486 = fmul fast float %485, 0x3F70101020000000
  %487 = and i32 %483, 255
  %488 = uitofp i32 %487 to float
  %489 = fmul fast float %488, 0x3F70101020000000
  %490 = lshr i32 %483, 8
  %491 = and i32 %490, 255
  %492 = uitofp i32 %491 to float
  %493 = fmul fast float %492, 0x3F70101020000000
  %494 = lshr i32 %483, 16
  %495 = and i32 %494, 255
  %496 = uitofp i32 %495 to float
  %497 = fmul fast float %496, 0x3F70101020000000
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = lshr i32 %499, 24
  %501 = uitofp i32 %500 to float
  %502 = fmul fast float %501, 0x3F70101020000000
  %503 = and i32 %499, 255
  %504 = uitofp i32 %503 to float
  %505 = fmul fast float %504, 0x3F70101020000000
  %506 = lshr i32 %499, 8
  %507 = and i32 %506, 255
  %508 = uitofp i32 %507 to float
  %509 = fmul fast float %508, 0x3F70101020000000
  %510 = lshr i32 %499, 16
  %511 = and i32 %510, 255
  %512 = uitofp i32 %511 to float
  %513 = fmul fast float %512, 0x3F70101020000000
  %514 = bitcast float %442 to i32
  %515 = ashr i32 %514, 1
  %516 = sub nsw i32 1597463174, %515
  %517 = bitcast i32 %516 to float
  %518 = fmul fast float %442, 5.000000e-01
  %519 = fmul fast float %517, %517
  %520 = fmul fast float %519, %518
  %521 = fsub fast float 1.500000e+00, %520
  %522 = fmul fast float %517, %442
  %523 = fmul fast float %522, %521
  %524 = bitcast float %443 to i32
  %525 = ashr i32 %524, 1
  %526 = sub nsw i32 1597463174, %525
  %527 = bitcast i32 %526 to float
  %528 = fmul fast float %443, 5.000000e-01
  %529 = fmul fast float %527, %527
  %530 = fmul fast float %529, %528
  %531 = fsub fast float 1.500000e+00, %530
  %532 = fmul fast float %527, %443
  %533 = fmul fast float %532, %531
  %534 = bitcast float %444 to i32
  %535 = ashr i32 %534, 1
  %536 = sub nsw i32 1597463174, %535
  %537 = bitcast i32 %536 to float
  %538 = fmul fast float %444, 5.000000e-01
  %539 = fmul fast float %537, %537
  %540 = fmul fast float %539, %538
  %541 = fsub fast float 1.500000e+00, %540
  %542 = fmul fast float %537, %444
  %543 = fmul fast float %542, %541
  %544 = fsub fast float %523, %505
  %545 = fsub fast float %533, %509
  %546 = fsub fast float %543, %513
  %547 = fmul fast float %544, %475
  %548 = fmul fast float %545, %477
  %549 = fmul fast float %546, %481
  %550 = fadd fast float %547, %489
  %551 = fadd fast float %548, %493
  %552 = fadd fast float %549, %497
  %553 = call float @dx.op.unary.f32(i32 7, float %550)  ; Saturate(value)
  %554 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  %555 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %556 = fmul fast float %553, %553
  %557 = fmul fast float %554, %554
  %558 = fmul fast float %555, %555
  %559 = fsub fast float %556, %442
  %560 = fsub fast float %557, %443
  %561 = fsub fast float %558, %444
  %562 = fmul fast float %559, %466
  %563 = fmul fast float %560, %466
  %564 = fmul fast float %561, %466
  %565 = fadd fast float %562, %442
  %566 = fadd fast float %563, %443
  %567 = fadd fast float %564, %444
  %568 = fadd fast float %486, %453
  %569 = fsub fast float %568, %502
  %570 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  %571 = fsub fast float %570, %453
  %572 = fmul fast float %571, %466
  %573 = fadd fast float %572, %453
  br label %627

; <label>:574                                     ; preds = %465
  %575 = and i32 %468, 134217728
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %611, label %577

; <label>:577                                     ; preds = %574
  %578 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %579 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %580 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %581 = fadd fast float %578, -5.000000e-01
  %582 = fadd fast float %579, -5.000000e-01
  %583 = fadd fast float %580, -5.000000e-01
  %584 = fmul fast float %581, %466
  %585 = fmul fast float %582, %466
  %586 = fmul fast float %583, %466
  %587 = fadd fast float %584, 5.000000e-01
  %588 = fadd fast float %585, 5.000000e-01
  %589 = fadd fast float %586, 5.000000e-01
  %590 = call float @dx.op.unary.f32(i32 24, float %442)  ; Sqrt(value)
  %591 = call float @dx.op.unary.f32(i32 24, float %443)  ; Sqrt(value)
  %592 = call float @dx.op.unary.f32(i32 24, float %444)  ; Sqrt(value)
  %593 = fmul fast float %587, 2.000000e+00
  %594 = fsub fast float 1.000000e+00, %593
  %595 = fmul fast float %594, %590
  %596 = fadd fast float %595, %593
  %597 = fmul fast float %596, %590
  %598 = fmul fast float %588, 2.000000e+00
  %599 = fsub fast float 1.000000e+00, %598
  %600 = fmul fast float %599, %591
  %601 = fadd fast float %600, %598
  %602 = fmul fast float %601, %591
  %603 = fmul fast float %589, 2.000000e+00
  %604 = fsub fast float 1.000000e+00, %603
  %605 = fmul fast float %604, %592
  %606 = fadd fast float %605, %603
  %607 = fmul fast float %606, %592
  %608 = fmul fast float %597, %597
  %609 = fmul fast float %602, %602
  %610 = fmul fast float %607, %607
  br label %627

; <label>:611                                     ; preds = %574
  %612 = fmul fast float %231, %231
  %613 = fmul fast float %235, %235
  %614 = fmul fast float %239, %239
  %615 = fadd fast float %612, -1.000000e+00
  %616 = fadd fast float %613, -1.000000e+00
  %617 = fadd fast float %614, -1.000000e+00
  %618 = fmul fast float %466, %615
  %619 = fmul fast float %466, %616
  %620 = fmul fast float %466, %617
  %621 = fadd fast float %618, 1.000000e+00
  %622 = fadd fast float %619, 1.000000e+00
  %623 = fadd fast float %620, 1.000000e+00
  %624 = fmul fast float %621, %442
  %625 = fmul fast float %622, %443
  %626 = fmul fast float %623, %444
  br label %627

; <label>:627                                     ; preds = %611, %577, %471, %428
  %628 = phi float [ %573, %471 ], [ %453, %577 ], [ %453, %611 ], [ 0x3FA23C0BE0000000, %428 ]
  %629 = phi float [ %565, %471 ], [ %608, %577 ], [ %624, %611 ], [ 1.000000e+00, %428 ]
  %630 = phi float [ %566, %471 ], [ %609, %577 ], [ %625, %611 ], [ 1.000000e+00, %428 ]
  %631 = phi float [ %567, %471 ], [ %610, %577 ], [ %626, %611 ], [ 1.000000e+00, %428 ]
  %632 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.i32 %632, 1
  %634 = and i32 %633, 1
  %635 = icmp ne i32 %634, 0
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = and i32 %637, 32
  %639 = icmp ne i32 %638, 0
  %640 = and i1 %635, %639
  %641 = select i1 %640, float 1.000000e+00, float %629
  %642 = select i1 %640, float 0x3FD3333340000000, float %630
  %643 = select i1 %640, float 0x3FD3333340000000, float %631
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = and i32 %645, 32
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %717, label %648

; <label>:648                                     ; preds = %627
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = add i32 %652, 0
  %654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %653, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %655 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %654, %dx.types.Handle %63, float %359, float %360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %656 = extractvalue %dx.types.ResRet.f32 %655, 0
  %657 = extractvalue %dx.types.ResRet.f32 %655, 1
  %658 = extractvalue %dx.types.ResRet.f32 %655, 2
  %659 = extractvalue %dx.types.ResRet.f32 %655, 3
  %660 = and i32 %650, 255
  %661 = uitofp i32 %660 to float
  %662 = lshr i32 %650, 8
  %663 = and i32 %662, 255
  %664 = uitofp i32 %663 to float
  %665 = lshr i32 %650, 16
  %666 = and i32 %665, 255
  %667 = uitofp i32 %666 to float
  %668 = fmul fast float %667, 0x3F70101000000000
  %669 = fmul fast float %656, %661
  %670 = fadd fast float %669, %664
  %671 = fmul fast float %670, 0x3F70101000000000
  %672 = fadd fast float %657, -5.000000e-01
  %673 = fadd fast float %659, -5.000000e-01
  %674 = fmul fast float %672, %668
  %675 = fmul fast float %673, %668
  %676 = fadd fast float %674, 5.000000e-01
  %677 = fadd fast float %675, 5.000000e-01
  %678 = fmul fast float %676, 2.000000e+00
  %679 = fadd fast float %678, -1.000000e+00
  %680 = fmul fast float %677, 2.000000e+00
  %681 = fadd fast float %680, -1.000000e+00
  %682 = fadd fast float %679, %681
  %683 = fmul fast float %682, 5.000000e-01
  %684 = fsub fast float %679, %681
  %685 = fmul fast float %684, 5.000000e-01
  %686 = call float @dx.op.unary.f32(i32 6, float %683)  ; FAbs(value)
  %687 = fsub fast float 1.000000e+00, %686
  %688 = call float @dx.op.unary.f32(i32 6, float %685)  ; FAbs(value)
  %689 = fsub fast float %687, %688
  %690 = call float @dx.op.dot3.f32(i32 55, float %683, float %685, float %689, float %683, float %685, float %689)  ; Dot3(ax,ay,az,bx,by,bz)
  %691 = call float @dx.op.unary.f32(i32 25, float %690)  ; Rsqrt(value)
  %692 = fmul fast float %683, %691
  %693 = fmul fast float %685, %691
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = and i32 %695, 67108864
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %713, label %698

; <label>:698                                     ; preds = %648
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = and i32 %700, 65535
  %702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %701)  ; LegacyF16ToF32(value)
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = and i32 %704, 65535
  %706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %705)  ; LegacyF16ToF32(value)
  %707 = lshr i32 %700, 16
  %708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %707)  ; LegacyF16ToF32(value)
  %709 = fsub fast float %671, %708
  %710 = fmul fast float %709, %702
  %711 = fadd fast float %710, %706
  %712 = call float @dx.op.unary.f32(i32 7, float %711)  ; Saturate(value)
  br label %713

; <label>:713                                     ; preds = %698, %648
  %714 = phi float [ %712, %698 ], [ %671, %648 ]
  %715 = call float @dx.op.dot2.f32(i32 54, float %692, float %693, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %716 = call float @dx.op.dot2.f32(i32 54, float %692, float %693, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %717

; <label>:717                                     ; preds = %713, %627
  %718 = phi float [ %714, %713 ], [ 0x3FD6666660000000, %627 ]
  %719 = phi float [ %715, %713 ], [ 0.000000e+00, %627 ]
  %720 = phi float [ %716, %713 ], [ 0.000000e+00, %627 ]
  %721 = phi float [ %658, %713 ], [ 1.000000e+00, %627 ]
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = lshr i32 %723, 22
  %725 = shl nuw nsw i32 %724, 5
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = and i32 %728, 64
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %763, label %731

; <label>:731                                     ; preds = %717
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 176, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = add i32 %733, 0
  %735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %734, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = and i32 %737, 131072
  %739 = icmp eq i32 %738, 0
  %740 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %735, %dx.types.Handle %63, float %359, float %360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = extractvalue %dx.types.ResRet.f32 %740, 1
  %743 = extractvalue %dx.types.ResRet.f32 %740, 2
  %744 = fmul fast float %741, %220
  %745 = fmul fast float %742, %223
  %746 = fmul fast float %743, %226
  br i1 %739, label %753, label %747

; <label>:747                                     ; preds = %731
  %748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %749 = extractvalue %dx.types.CBufRet.f32 %748, 0
  %750 = fmul fast float %749, %744
  %751 = fmul fast float %749, %745
  %752 = fmul fast float %749, %746
  br label %753

; <label>:753                                     ; preds = %747, %731
  %754 = phi float [ %750, %747 ], [ %744, %731 ]
  %755 = phi float [ %751, %747 ], [ %745, %731 ]
  %756 = phi float [ %752, %747 ], [ %746, %731 ]
  %757 = fmul fast float %754, %726
  %758 = select i1 %215, float %757, float %754
  %759 = call float @dx.op.dot3.f32(i32 55, float %758, float %755, float %756, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %760 = select i1 %215, float 0.000000e+00, float %754
  %761 = select i1 %215, float %759, float %755
  %762 = select i1 %215, float 0.000000e+00, float %756
  br label %763

; <label>:763                                     ; preds = %753, %717
  %764 = phi float [ %760, %753 ], [ 0.000000e+00, %717 ]
  %765 = phi float [ %761, %753 ], [ 0.000000e+00, %717 ]
  %766 = phi float [ %762, %753 ], [ 0.000000e+00, %717 ]
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = and i32 %768, 1024
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %799, label %771

; <label>:771                                     ; preds = %763
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = and i32 %773, 255
  %775 = uitofp i32 %774 to float
  %776 = fmul fast float %775, 0x3F70101020000000
  %777 = lshr i32 %773, 8
  %778 = and i32 %777, 255
  %779 = uitofp i32 %778 to float
  %780 = fmul fast float %779, 0x3F70101020000000
  %781 = lshr i32 %773, 16
  %782 = and i32 %781, 255
  %783 = uitofp i32 %782 to float
  %784 = fmul fast float %783, 0x3F70101020000000
  %785 = fmul fast float %776, %776
  %786 = fmul fast float %780, %780
  %787 = fmul fast float %784, %784
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 192, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = add i32 %789, 0
  %791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %792 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %791, %dx.types.Handle %64, float %359, float %360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  %794 = extractvalue %dx.types.ResRet.f32 %792, 1
  %795 = extractvalue %dx.types.ResRet.f32 %792, 2
  %796 = fmul fast float %785, %793
  %797 = fmul fast float %786, %794
  %798 = fmul fast float %787, %795
  br label %799

; <label>:799                                     ; preds = %771, %763
  %800 = phi float [ %796, %771 ], [ 0.000000e+00, %763 ]
  %801 = phi float [ %797, %771 ], [ 0.000000e+00, %763 ]
  %802 = phi float [ %798, %771 ], [ 0.000000e+00, %763 ]
  %803 = fcmp fast ogt float %800, 0.000000e+00
  %804 = fcmp fast ogt float %801, 0.000000e+00
  %805 = fcmp fast ogt float %802, 0.000000e+00
  %806 = call float @dx.op.unary.f32(i32 23, float %800)  ; Log(value)
  %807 = call float @dx.op.unary.f32(i32 23, float %801)  ; Log(value)
  %808 = call float @dx.op.unary.f32(i32 23, float %802)  ; Log(value)
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = lshr i32 %810, 7
  %812 = and i32 %811, 32752
  %813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %812)  ; LegacyF16ToF32(value)
  %814 = fmul fast float %806, 0xBFE62E4300000000
  %815 = fmul fast float %814, %813
  %816 = fmul fast float %807, 0xBFE62E4300000000
  %817 = fmul fast float %816, %813
  %818 = fmul fast float %808, 0xBFE62E4300000000
  %819 = fmul fast float %818, %813
  %820 = select i1 %803, float %815, float 1.270000e+02
  %821 = select i1 %804, float %817, float 1.270000e+02
  %822 = select i1 %805, float %819, float 1.270000e+02
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = and i32 %824, 10240
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %846, label %827

; <label>:827                                     ; preds = %799
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = and i32 %829, 2048
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %846, label %832

; <label>:832                                     ; preds = %827
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = add i32 %834, 0
  %836 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %835, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %837 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %836, %dx.types.Handle %64, float %359, float %360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %838 = extractvalue %dx.types.ResRet.f32 %837, 3
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = shl i32 %840, 4
  %842 = and i32 %841, 32752
  %843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %842)  ; LegacyF16ToF32(value)
  %844 = fmul fast float %843, %838
  %845 = call float @dx.op.binary.f32(i32 35, float %844, float 0x3F70101020000000)  ; FMax(a,b)
  br label %846

; <label>:846                                     ; preds = %832, %827, %799
  %847 = phi float [ %845, %832 ], [ 0x3F70101020000000, %827 ], [ 0x3F70101020000000, %799 ]
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = and i32 %849, 255
  %851 = uitofp i32 %850 to float
  %852 = lshr i32 %849, 8
  %853 = and i32 %852, 255
  %854 = uitofp i32 %853 to float
  %855 = call float @dx.op.dot3.f32(i32 55, float %641, float %642, float %643, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %856 = fmul fast float %854, %855
  %857 = fadd fast float %856, %851
  %858 = fmul fast float %857, 0x3F70101020000000
  %859 = call float @dx.op.unary.f32(i32 7, float %858)  ; Saturate(value)
  br label %860

; <label>:860                                     ; preds = %846, %265
  %861 = phi float [ 0.000000e+00, %265 ], [ %719, %846 ]
  %862 = phi float [ 0.000000e+00, %265 ], [ %720, %846 ]
  %863 = phi float [ 0.000000e+00, %265 ], [ %641, %846 ]
  %864 = phi float [ 0.000000e+00, %265 ], [ %642, %846 ]
  %865 = phi float [ 0.000000e+00, %265 ], [ %643, %846 ]
  %866 = phi float [ 0.000000e+00, %265 ], [ %764, %846 ]
  %867 = phi float [ 0.000000e+00, %265 ], [ %765, %846 ]
  %868 = phi float [ 0.000000e+00, %265 ], [ %766, %846 ]
  %869 = phi float [ 0.000000e+00, %265 ], [ %820, %846 ]
  %870 = phi float [ 0.000000e+00, %265 ], [ %821, %846 ]
  %871 = phi float [ 0.000000e+00, %265 ], [ %822, %846 ]
  %872 = phi float [ 0.000000e+00, %265 ], [ %628, %846 ]
  %873 = phi float [ 0.000000e+00, %265 ], [ %429, %846 ]
  %874 = phi float [ 0.000000e+00, %265 ], [ %718, %846 ]
  %875 = phi float [ 0.000000e+00, %265 ], [ %721, %846 ]
  %876 = phi float [ 0.000000e+00, %265 ], [ %847, %846 ]
  %877 = phi float [ 0.000000e+00, %265 ], [ %859, %846 ]
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 0
  %880 = call float @dx.op.dot2.f32(i32 54, float %861, float %862, float %861, float %862)  ; Dot2(ax,ay,bx,by)
  %881 = fmul fast float %880, 0x3FE3333340000000
  %882 = fsub fast float 1.000000e+00, %881
  %883 = call float @dx.op.dot3.f32(i32 55, float %861, float %862, float %882, float %861, float %862, float %882)  ; Dot3(ax,ay,az,bx,by,bz)
  %884 = call float @dx.op.unary.f32(i32 25, float %883)  ; Rsqrt(value)
  %885 = fmul fast float %884, %861
  %886 = fmul fast float %884, %862
  %887 = fmul fast float %882, %884
  %888 = fmul fast float %887, %70
  %889 = fmul fast float %887, %71
  %890 = fmul fast float %887, %72
  %891 = fmul fast float %885, %46
  %892 = fmul fast float %885, %47
  %893 = fmul fast float %885, %48
  %894 = fmul fast float %75, %49
  %895 = fmul fast float %894, %886
  %896 = fmul fast float %78, %49
  %897 = fmul fast float %896, %886
  %898 = fmul fast float %81, %49
  %899 = fmul fast float %898, %886
  %900 = fadd fast float %895, %891
  %901 = fmul fast float %900, %69
  %902 = fadd fast float %901, %888
  %903 = fadd fast float %897, %892
  %904 = fmul fast float %903, %69
  %905 = fadd fast float %904, %889
  %906 = fadd fast float %899, %893
  %907 = fmul fast float %906, %69
  %908 = fadd fast float %907, %890
  %909 = call float @dx.op.dot3.f32(i32 55, float %902, float %905, float %908, float %902, float %905, float %908)  ; Dot3(ax,ay,az,bx,by,bz)
  %910 = call float @dx.op.unary.f32(i32 25, float %909)  ; Rsqrt(value)
  %911 = fmul fast float %902, %910
  %912 = fmul fast float %905, %910
  %913 = fmul fast float %908, %910
  %914 = call float @dx.op.unary.f32(i32 83, float %123)  ; DerivCoarseX(value)
  %915 = call float @dx.op.unary.f32(i32 83, float %124)  ; DerivCoarseX(value)
  %916 = call float @dx.op.unary.f32(i32 83, float %125)  ; DerivCoarseX(value)
  %917 = call float @dx.op.unary.f32(i32 84, float %123)  ; DerivCoarseY(value)
  %918 = call float @dx.op.unary.f32(i32 84, float %124)  ; DerivCoarseY(value)
  %919 = call float @dx.op.unary.f32(i32 84, float %125)  ; DerivCoarseY(value)
  %920 = fadd fast float %914, %123
  %921 = fadd fast float %915, %124
  %922 = fadd fast float %916, %125
  %923 = fadd fast float %917, %123
  %924 = fadd fast float %918, %124
  %925 = fadd fast float %919, %125
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 0
  %928 = extractvalue %dx.types.CBufRet.f32 %926, 1
  %929 = extractvalue %dx.types.CBufRet.f32 %926, 2
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 2
  %932 = extractvalue %dx.types.CBufRet.f32 %930, 3
  %933 = fmul fast float %927, %67
  %934 = fmul fast float %933, %931
  %935 = fmul fast float %928, %68
  %936 = fmul fast float %935, %932
  %937 = fptoui float %934 to i32
  %938 = fptoui float %936 to i32
  %939 = fadd fast float %927, -1.000000e+00
  %940 = fadd fast float %928, -1.000000e+00
  %941 = fptoui float %939 to i32
  %942 = fptoui float %940 to i32
  %943 = call i32 @dx.op.binary.i32(i32 40, i32 %937, i32 %941)  ; UMin(a,b)
  %944 = call i32 @dx.op.binary.i32(i32 40, i32 %938, i32 %942)  ; UMin(a,b)
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 2
  %947 = extractvalue %dx.types.CBufRet.f32 %945, 3
  %948 = fmul fast float %946, %58
  %949 = fsub fast float %948, %947
  %950 = fadd fast float %929, -1.000000e+00
  %951 = call float @dx.op.binary.f32(i32 36, float %949, float %950)  ; FMin(a,b)
  %952 = fptoui float %951 to i32
  %953 = fptoui float %927 to i32
  %954 = fptoui float %928 to i32
  %955 = mul i32 %952, %954
  %956 = add i32 %955, %944
  %957 = mul i32 %956, %953
  %958 = add i32 %957, %943
  %959 = shl i32 %958, 2
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = and i32 %961, 1023
  %963 = lshr i32 %961, 10
  %964 = icmp eq i32 %962, 0
  br i1 %964, label %1418, label %965

; <label>:965                                     ; preds = %860
  %966 = and i32 %961, 1023
  br label %967

; <label>:967                                     ; preds = %1096, %965
  %968 = phi i32 [ %1046, %1096 ], [ 0, %965 ]
  %969 = phi float [ %1097, %1096 ], [ 0.000000e+00, %965 ]
  %970 = phi float [ %1098, %1096 ], [ %879, %965 ]
  %971 = phi float [ %1099, %1096 ], [ %877, %965 ]
  %972 = phi float [ %1100, %1096 ], [ %869, %965 ]
  %973 = phi float [ %1101, %1096 ], [ %870, %965 ]
  %974 = phi float [ %1102, %1096 ], [ %871, %965 ]
  %975 = phi float [ %1103, %1096 ], [ 0.000000e+00, %965 ]
  %976 = phi float [ %1104, %1096 ], [ 0.000000e+00, %965 ]
  %977 = phi float [ %1105, %1096 ], [ %866, %965 ]
  %978 = phi float [ %1106, %1096 ], [ %867, %965 ]
  %979 = phi float [ %1107, %1096 ], [ %868, %965 ]
  %980 = phi float [ %1108, %1096 ], [ %911, %965 ]
  %981 = phi float [ %1109, %1096 ], [ %912, %965 ]
  %982 = phi float [ %1110, %1096 ], [ %913, %965 ]
  %983 = phi float [ %1111, %1096 ], [ %875, %965 ]
  %984 = phi float [ %1112, %1096 ], [ %874, %965 ]
  %985 = phi float [ %1113, %1096 ], [ 0.000000e+00, %965 ]
  %986 = phi float [ %1114, %1096 ], [ %872, %965 ]
  %987 = phi float [ %1115, %1096 ], [ %863, %965 ]
  %988 = phi float [ %1116, %1096 ], [ %864, %965 ]
  %989 = phi float [ %1117, %1096 ], [ %865, %965 ]
  %990 = add nuw nsw i32 %968, %963
  %991 = shl i32 %990, 2
  %992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %991, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.i32 %992, 0
  %994 = shl i32 %993, 8
  %995 = or i32 %994, 48
  %996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.f32 %996, 0
  %998 = extractvalue %dx.types.ResRet.f32 %996, 1
  %999 = extractvalue %dx.types.ResRet.f32 %996, 2
  %1000 = extractvalue %dx.types.ResRet.f32 %996, 3
  %1001 = or i32 %994, 64
  %1002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1001, i32 undef)  ; BufferLoad(srv,index,wot)
  %1003 = extractvalue %dx.types.ResRet.i32 %1002, 0
  %1004 = extractvalue %dx.types.ResRet.i32 %1002, 1
  %1005 = or i32 %994, 80
  %1006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.f32 %1006, 2
  %1008 = extractvalue %dx.types.ResRet.f32 %1006, 3
  %1009 = or i32 %994, 96
  %1010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.ResRet.f32 %1010, 1
  %1013 = extractvalue %dx.types.ResRet.f32 %1010, 2
  %1014 = extractvalue %dx.types.ResRet.f32 %1010, 3
  %1015 = or i32 %994, 112
  %1016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.f32 %1016, 2
  %1018 = or i32 %994, 128
  %1019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.f32 %1019, 0
  %1021 = extractvalue %dx.types.ResRet.f32 %1019, 1
  %1022 = extractvalue %dx.types.ResRet.f32 %1019, 2
  %1023 = extractvalue %dx.types.ResRet.f32 %1019, 3
  %1024 = or i32 %994, 144
  %1025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.f32 %1025, 0
  %1027 = extractvalue %dx.types.ResRet.f32 %1025, 1
  %1028 = extractvalue %dx.types.ResRet.f32 %1025, 2
  %1029 = extractvalue %dx.types.ResRet.f32 %1025, 3
  %1030 = or i32 %994, 160
  %1031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1030, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.f32 %1031, 0
  %1033 = extractvalue %dx.types.ResRet.f32 %1031, 1
  %1034 = extractvalue %dx.types.ResRet.f32 %1031, 2
  %1035 = extractvalue %dx.types.ResRet.f32 %1031, 3
  %1036 = or i32 %994, 192
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = or i32 %994, 208
  %1040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 0
  %1042 = or i32 %994, 248
  %1043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.f32 %1043, 0
  %1045 = extractvalue %dx.types.ResRet.f32 %1043, 1
  %1046 = add nuw nsw i32 %968, 1
  %1047 = bitcast float %1000 to i32
  %1048 = and i32 %1047, 512
  %1049 = icmp eq i32 %1048, 0
  %1050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.ResRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.ResRet.f32 %1050, 2
  %1054 = extractvalue %dx.types.ResRet.f32 %1050, 3
  %1055 = call float @dx.op.dot4.f32(i32 56, float %1051, float %1052, float %1053, float %1054, float %123, float %124, float %125, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1056 = or i32 %994, 16
  %1057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = extractvalue %dx.types.ResRet.f32 %1057, 1
  %1060 = extractvalue %dx.types.ResRet.f32 %1057, 2
  %1061 = extractvalue %dx.types.ResRet.f32 %1057, 3
  %1062 = call float @dx.op.dot4.f32(i32 56, float %1058, float %1059, float %1060, float %1061, float %123, float %124, float %125, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1063 = or i32 %994, 32
  %1064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.ResRet.f32 %1064, 1
  %1067 = extractvalue %dx.types.ResRet.f32 %1064, 2
  %1068 = extractvalue %dx.types.ResRet.f32 %1064, 3
  %1069 = call float @dx.op.dot4.f32(i32 56, float %1065, float %1066, float %1067, float %1068, float %123, float %124, float %125, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1070 = call float @dx.op.unary.f32(i32 27, float %1055)  ; Round_ni(value)
  %1071 = call float @dx.op.unary.f32(i32 6, float %1070)  ; FAbs(value)
  %1072 = call float @dx.op.unary.f32(i32 27, float %1062)  ; Round_ni(value)
  %1073 = call float @dx.op.unary.f32(i32 6, float %1072)  ; FAbs(value)
  %1074 = call float @dx.op.unary.f32(i32 6, float %1069)  ; FAbs(value)
  %1075 = call float @dx.op.unary.f32(i32 27, float %1074)  ; Round_ni(value)
  %1076 = fadd fast float %1073, %1071
  %1077 = fadd fast float %1076, %1075
  %1078 = fcmp fast oeq float %1077, 0.000000e+00
  %1079 = call float @dx.op.dot4.f32(i32 56, float %1051, float %1052, float %1053, float %1054, float %920, float %921, float %922, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1080 = call float @dx.op.dot4.f32(i32 56, float %1058, float %1059, float %1060, float %1061, float %920, float %921, float %922, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1081 = call float @dx.op.dot4.f32(i32 56, float %1051, float %1052, float %1053, float %1054, float %923, float %924, float %925, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1082 = call float @dx.op.dot4.f32(i32 56, float %1058, float %1059, float %1060, float %1061, float %923, float %924, float %925, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1083 = fsub fast float %1079, %1055
  %1084 = fsub fast float %1081, %1055
  %1085 = fsub fast float %1080, %1062
  %1086 = fsub fast float %1082, %1062
  %1087 = call float @dx.op.dot3.f32(i32 55, float %997, float %998, float %999, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1088, 2
  %1090 = fadd fast float %1089, %1087
  %1091 = call float @dx.op.unary.f32(i32 7, float %1090)  ; Saturate(value)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1088, 0
  %1093 = fcmp fast ogt float %1091, %1092
  %1094 = and i1 %1078, %1093
  %1095 = and i1 %1049, %1094
  br i1 %1095, label %1119, label %1096

; <label>:1096                                    ; preds = %1404, %1200, %1119, %967
  %1097 = phi float [ %969, %1119 ], [ %1203, %1200 ], [ %1203, %1404 ], [ %969, %967 ]
  %1098 = phi float [ %970, %1119 ], [ %970, %1200 ], [ %1380, %1404 ], [ %970, %967 ]
  %1099 = phi float [ %971, %1119 ], [ %971, %1200 ], [ %1378, %1404 ], [ %971, %967 ]
  %1100 = phi float [ %972, %1119 ], [ %972, %1200 ], [ %1356, %1404 ], [ %972, %967 ]
  %1101 = phi float [ %973, %1119 ], [ %973, %1200 ], [ %1357, %1404 ], [ %973, %967 ]
  %1102 = phi float [ %974, %1119 ], [ %974, %1200 ], [ %1358, %1404 ], [ %974, %967 ]
  %1103 = phi float [ %975, %1119 ], [ %975, %1200 ], [ %1327, %1404 ], [ %975, %967 ]
  %1104 = phi float [ %976, %1119 ], [ %976, %1200 ], [ %1325, %1404 ], [ %976, %967 ]
  %1105 = phi float [ %977, %1119 ], [ %977, %1200 ], [ %1414, %1404 ], [ %977, %967 ]
  %1106 = phi float [ %978, %1119 ], [ %978, %1200 ], [ %1415, %1404 ], [ %978, %967 ]
  %1107 = phi float [ %979, %1119 ], [ %979, %1200 ], [ %1416, %1404 ], [ %979, %967 ]
  %1108 = phi float [ %980, %1119 ], [ %980, %1200 ], [ %1306, %1404 ], [ %980, %967 ]
  %1109 = phi float [ %981, %1119 ], [ %981, %1200 ], [ %1307, %1404 ], [ %981, %967 ]
  %1110 = phi float [ %982, %1119 ], [ %982, %1200 ], [ %1308, %1404 ], [ %982, %967 ]
  %1111 = phi float [ %983, %1119 ], [ %983, %1200 ], [ %1336, %1404 ], [ %983, %967 ]
  %1112 = phi float [ %984, %1119 ], [ %984, %1200 ], [ %1333, %1404 ], [ %984, %967 ]
  %1113 = phi float [ %985, %1119 ], [ %985, %1200 ], [ %1330, %1404 ], [ %985, %967 ]
  %1114 = phi float [ %986, %1119 ], [ %986, %1200 ], [ %1323, %1404 ], [ %986, %967 ]
  %1115 = phi float [ %987, %1119 ], [ %987, %1200 ], [ %1318, %1404 ], [ %987, %967 ]
  %1116 = phi float [ %988, %1119 ], [ %988, %1200 ], [ %1319, %1404 ], [ %988, %967 ]
  %1117 = phi float [ %989, %1119 ], [ %989, %1200 ], [ %1320, %1404 ], [ %989, %967 ]
  %1118 = icmp eq i32 %1046, %966
  br i1 %1118, label %1417, label %967

; <label>:1119                                    ; preds = %967
  %1120 = extractvalue %dx.types.ResRet.f32 %1016, 3
  %1121 = extractvalue %dx.types.ResRet.f32 %1016, 1
  %1122 = extractvalue %dx.types.ResRet.f32 %1016, 0
  %1123 = extractvalue %dx.types.ResRet.f32 %1006, 1
  %1124 = extractvalue %dx.types.ResRet.f32 %1006, 0
  %1125 = extractvalue %dx.types.ResRet.i32 %1002, 3
  %1126 = extractvalue %dx.types.ResRet.i32 %1002, 2
  %1127 = add i32 %1125, 0
  %1128 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1127, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1130 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1128, %dx.types.Handle %1129, float %1055, float %1062, float undef, float undef, i32 0, i32 0, i32 undef, float %1083, float %1085, float undef, float %1084, float %1086, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 0
  %1132 = fmul fast float %1131, %1124
  %1133 = fadd fast float %1132, %1123
  %1134 = call float @dx.op.unary.f32(i32 7, float %1133)  ; Saturate(value)
  %1135 = fmul fast float %1055, %1011
  %1136 = call float @dx.op.tertiary.f32(i32 46, float %1012, float %1062, float %1135)  ; FMad(a,b,c)
  %1137 = fadd fast float %1136, %1122
  %1138 = fmul fast float %1055, %1013
  %1139 = call float @dx.op.tertiary.f32(i32 46, float %1014, float %1062, float %1138)  ; FMad(a,b,c)
  %1140 = fadd fast float %1139, %1121
  %1141 = fmul fast float %1083, %1011
  %1142 = call float @dx.op.tertiary.f32(i32 46, float %1012, float %1085, float %1141)  ; FMad(a,b,c)
  %1143 = fmul fast float %1083, %1013
  %1144 = call float @dx.op.tertiary.f32(i32 46, float %1014, float %1085, float %1143)  ; FMad(a,b,c)
  %1145 = fmul fast float %1084, %1011
  %1146 = call float @dx.op.tertiary.f32(i32 46, float %1012, float %1086, float %1145)  ; FMad(a,b,c)
  %1147 = fmul fast float %1084, %1013
  %1148 = call float @dx.op.tertiary.f32(i32 46, float %1014, float %1086, float %1147)  ; FMad(a,b,c)
  %1149 = add i32 %1126, 0
  %1150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1149, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1151 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1150, %dx.types.Handle %1129, float %1137, float %1140, float undef, float undef, i32 0, i32 0, i32 undef, float %1142, float %1144, float undef, float %1146, float %1148, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1152 = extractvalue %dx.types.ResRet.f32 %1151, 0
  %1153 = and i32 %1047, 1024
  %1154 = icmp ne i32 %1153, 0
  %1155 = fcmp fast ogt float %1152, 0x3FE0101020000000
  %1156 = uitofp i1 %1155 to float
  %1157 = select i1 %1154, float %1156, float %1152
  %1158 = and i32 %1047, 8192
  %1159 = icmp ne i32 %1158, 0
  %1160 = select i1 %1159, float %1120, float 1.000000e+00
  %1161 = fmul fast float %1055, 2.000000e+00
  %1162 = fadd fast float %1161, -1.000000e+00
  %1163 = call float @dx.op.unary.f32(i32 6, float %1162)  ; FAbs(value)
  %1164 = fmul fast float %1163, %1044
  %1165 = fsub fast float %1164, %1044
  %1166 = call float @dx.op.unary.f32(i32 7, float %1165)  ; Saturate(value)
  %1167 = fmul fast float %1062, 2.000000e+00
  %1168 = fadd fast float %1167, -1.000000e+00
  %1169 = call float @dx.op.unary.f32(i32 6, float %1168)  ; FAbs(value)
  %1170 = fmul fast float %1169, %1045
  %1171 = fsub fast float %1170, %1045
  %1172 = call float @dx.op.unary.f32(i32 7, float %1171)  ; Saturate(value)
  %1173 = fmul fast float %1074, %1007
  %1174 = fsub fast float %1173, %1007
  %1175 = call float @dx.op.unary.f32(i32 7, float %1174)  ; Saturate(value)
  %1176 = fmul fast float %1134, %1160
  %1177 = fmul fast float %1176, %1131
  %1178 = fmul fast float %1177, %1166
  %1179 = fmul fast float %1178, %1157
  %1180 = fmul fast float %1179, %1172
  %1181 = fmul fast float %1180, %1175
  %1182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1182, 1
  %1184 = extractvalue %dx.types.CBufRet.f32 %1182, 0
  %1185 = fsub fast float %1091, %1184
  %1186 = fmul fast float %1185, %1183
  %1187 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  %1188 = fmul fast float %1181, %1008
  %1189 = fadd fast float %1181, %1008
  %1190 = fmul fast float %1189, %1017
  %1191 = fsub fast float %1190, %1017
  %1192 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  %1193 = and i32 %1047, 128
  %1194 = icmp ne i32 %1193, 0
  %1195 = select i1 %1194, float %1192, float %1188
  %1196 = fmul fast float %1195, %1187
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 0
  %1199 = fcmp fast ugt float %1196, %1198
  br i1 %1199, label %1200, label %1096

; <label>:1200                                    ; preds = %1119
  %1201 = select i1 %1159, float %1196, float 0.000000e+00
  %1202 = fadd fast float %1201, %969
  %1203 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  br i1 %1159, label %1096, label %1204

; <label>:1204                                    ; preds = %1200
  %1205 = and i32 %1047, 4
  %1206 = and i32 %1047, 8
  %1207 = add i32 %1003, 0
  %1208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1207, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1210 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1208, %dx.types.Handle %1209, float %1137, float %1140, float undef, float undef, i32 0, i32 0, i32 undef, float %1142, float %1144, float undef, float %1146, float %1148, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = extractvalue %dx.types.ResRet.f32 %1210, 1
  %1213 = extractvalue %dx.types.ResRet.f32 %1210, 2
  %1214 = extractvalue %dx.types.ResRet.f32 %1210, 3
  %1215 = bitcast float %1029 to i32
  %1216 = and i32 %1215, 255
  %1217 = uitofp i32 %1216 to float
  %1218 = lshr i32 %1215, 8
  %1219 = and i32 %1218, 255
  %1220 = uitofp i32 %1219 to float
  %1221 = fmul fast float %1214, %1217
  %1222 = fadd fast float %1221, %1220
  %1223 = fmul fast float %1222, 0x3F70101000000000
  %1224 = add i32 %1004, 0
  %1225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1224, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1226 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1225, %dx.types.Handle %1209, float %1137, float %1140, float undef, float undef, i32 0, i32 0, i32 undef, float %1142, float %1144, float undef, float %1146, float %1148, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1227 = extractvalue %dx.types.ResRet.f32 %1226, 0
  %1228 = extractvalue %dx.types.ResRet.f32 %1226, 1
  %1229 = extractvalue %dx.types.ResRet.f32 %1226, 2
  %1230 = extractvalue %dx.types.ResRet.f32 %1226, 3
  %1231 = bitcast float %1023 to i32
  %1232 = and i32 %1231, 255
  %1233 = uitofp i32 %1232 to float
  %1234 = lshr i32 %1231, 8
  %1235 = and i32 %1234, 255
  %1236 = uitofp i32 %1235 to float
  %1237 = lshr i32 %1231, 16
  %1238 = and i32 %1237, 255
  %1239 = uitofp i32 %1238 to float
  %1240 = fmul fast float %1239, 0x3F70101000000000
  %1241 = fmul fast float %1227, %1233
  %1242 = fadd fast float %1241, %1236
  %1243 = fmul fast float %1242, 0x3F70101000000000
  %1244 = fadd fast float %1228, -5.000000e-01
  %1245 = fadd fast float %1230, -5.000000e-01
  %1246 = fmul fast float %1244, %1240
  %1247 = fmul fast float %1245, %1240
  %1248 = fadd fast float %1246, 5.000000e-01
  %1249 = fadd fast float %1247, 5.000000e-01
  %1250 = fmul fast float %1211, %1032
  %1251 = fmul fast float %1212, %1033
  %1252 = fmul fast float %1213, %1034
  %1253 = fmul fast float %1248, 2.000000e+00
  %1254 = fadd fast float %1253, -1.000000e+00
  %1255 = fmul fast float %1249, 2.000000e+00
  %1256 = fadd fast float %1255, -1.000000e+00
  %1257 = fadd fast float %1254, %1256
  %1258 = fmul fast float %1257, 5.000000e-01
  %1259 = fsub fast float %1254, %1256
  %1260 = fmul fast float %1259, 5.000000e-01
  %1261 = call float @dx.op.unary.f32(i32 6, float %1258)  ; FAbs(value)
  %1262 = fsub fast float 1.000000e+00, %1261
  %1263 = call float @dx.op.unary.f32(i32 6, float %1260)  ; FAbs(value)
  %1264 = fsub fast float %1262, %1263
  %1265 = call float @dx.op.dot3.f32(i32 55, float %1258, float %1260, float %1264, float %1258, float %1260, float %1264)  ; Dot3(ax,ay,az,bx,by,bz)
  %1266 = call float @dx.op.unary.f32(i32 25, float %1265)  ; Rsqrt(value)
  %1267 = fmul fast float %1258, %1266
  %1268 = fmul fast float %1260, %1266
  %1269 = fmul fast float %1266, %1264
  %1270 = fmul fast float %1269, %997
  %1271 = fmul fast float %1269, %998
  %1272 = fmul fast float %1269, %999
  %1273 = fmul fast float %1267, %1020
  %1274 = fmul fast float %1267, %1021
  %1275 = fmul fast float %1267, %1022
  %1276 = fadd fast float %1273, %1270
  %1277 = fadd fast float %1274, %1271
  %1278 = fadd fast float %1275, %1272
  %1279 = fmul fast float %1268, %1026
  %1280 = fmul fast float %1268, %1027
  %1281 = fmul fast float %1268, %1028
  %1282 = fadd fast float %1276, %1279
  %1283 = fadd fast float %1277, %1280
  %1284 = fadd fast float %1278, %1281
  %1285 = call float @dx.op.dot3.f32(i32 55, float %1282, float %1283, float %1284, float %1282, float %1283, float %1284)  ; Dot3(ax,ay,az,bx,by,bz)
  %1286 = call float @dx.op.unary.f32(i32 25, float %1285)  ; Rsqrt(value)
  %1287 = fmul fast float %1282, %1286
  %1288 = fmul fast float %1283, %1286
  %1289 = fmul fast float %1284, %1286
  %1290 = icmp ne i32 %1206, 0
  %1291 = select i1 %1290, float 1.000000e+00, float 0.000000e+00
  %1292 = fmul fast float %1196, %1291
  %1293 = and i32 %1047, 1
  %1294 = icmp eq i32 %1293, 0
  br i1 %1294, label %1295, label %1299

; <label>:1295                                    ; preds = %1204
  %1296 = fsub fast float %1287, %980
  %1297 = fsub fast float %1288, %981
  %1298 = fsub fast float %1289, %982
  br label %1299

; <label>:1299                                    ; preds = %1295, %1204
  %1300 = phi float [ %1296, %1295 ], [ %1287, %1204 ]
  %1301 = phi float [ %1297, %1295 ], [ %1288, %1204 ]
  %1302 = phi float [ %1298, %1295 ], [ %1289, %1204 ]
  %1303 = fmul float %1302, %1292
  %1304 = fmul float %1301, %1292
  %1305 = fmul float %1300, %1292
  %1306 = fadd fast float %1305, %980
  %1307 = fadd fast float %1304, %981
  %1308 = fadd fast float %1303, %982
  %1309 = icmp ne i32 %1205, 0
  %1310 = select i1 %1309, float 1.000000e+00, float 0.000000e+00
  %1311 = fmul fast float %1196, %1310
  %1312 = fsub fast float %1250, %987
  %1313 = fsub fast float %1251, %988
  %1314 = fsub fast float %1252, %989
  %1315 = fmul fast float %1312, %1311
  %1316 = fmul fast float %1313, %1311
  %1317 = fmul fast float %1314, %1311
  %1318 = fadd fast float %1315, %987
  %1319 = fadd fast float %1316, %988
  %1320 = fadd fast float %1317, %989
  %1321 = fsub fast float %1223, %986
  %1322 = fmul fast float %1321, %1311
  %1323 = fadd fast float %1322, %986
  %1324 = fmul fast float %1311, %976
  %1325 = fsub fast float %976, %1324
  %1326 = fmul fast float %1311, %975
  %1327 = fsub fast float %975, %1326
  %1328 = bitcast float %1041 to i32
  %1329 = fadd fast float %1196, %985
  %1330 = call float @dx.op.unary.f32(i32 7, float %1329)  ; Saturate(value)
  %1331 = fsub fast float %1243, %984
  %1332 = fmul fast float %1331, %1292
  %1333 = fadd fast float %1332, %984
  %1334 = fsub fast float %1229, %983
  %1335 = fmul fast float %1334, %1292
  %1336 = fadd fast float %1335, %983
  br i1 %1294, label %1345, label %1337

; <label>:1337                                    ; preds = %1299
  %1338 = and i32 %1047, 32768
  %1339 = icmp eq i32 %1338, 0
  br i1 %1339, label %1355, label %1340

; <label>:1340                                    ; preds = %1337
  %1341 = fmul fast float %1292, 1.270000e+02
  %1342 = fadd fast float %1341, %972
  %1343 = fadd fast float %1341, %973
  %1344 = fadd fast float %1341, %974
  br label %1355

; <label>:1345                                    ; preds = %1299
  %1346 = fsub fast float 1.270000e+02, %972
  %1347 = fsub fast float 1.270000e+02, %973
  %1348 = fsub fast float 1.270000e+02, %974
  %1349 = fmul fast float %1292, %1346
  %1350 = fmul fast float %1292, %1347
  %1351 = fmul fast float %1292, %1348
  %1352 = fadd fast float %1349, %972
  %1353 = fadd fast float %1350, %973
  %1354 = fadd fast float %1351, %974
  br label %1355

; <label>:1355                                    ; preds = %1345, %1340, %1337
  %1356 = phi float [ %1342, %1340 ], [ %972, %1337 ], [ %1352, %1345 ]
  %1357 = phi float [ %1343, %1340 ], [ %973, %1337 ], [ %1353, %1345 ]
  %1358 = phi float [ %1344, %1340 ], [ %974, %1337 ], [ %1354, %1345 ]
  %1359 = call float @dx.op.dot3.f32(i32 55, float %1250, float %1251, float %1252, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1361 = extractvalue %dx.types.CBufRet.f32 %1360, 0
  %1362 = extractvalue %dx.types.CBufRet.f32 %1360, 1
  %1363 = fmul fast float %1362, %1359
  %1364 = fadd fast float %1363, %1361
  %1365 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1366 = bitcast float %1035 to i32
  %1367 = and i32 %1366, 65535
  %1368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1367)  ; LegacyF16ToF32(value)
  %1369 = lshr i32 %1366, 16
  %1370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1369)  ; LegacyF16ToF32(value)
  %1371 = fcmp fast oge float %1368, 0.000000e+00
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 0
  %1374 = select i1 %1371, float %1368, float %1373
  %1375 = fadd fast float %1374, %1370
  %1376 = fsub fast float %1365, %971
  %1377 = fmul fast float %1376, %1196
  %1378 = fadd fast float %1377, %971
  %1379 = fmul fast float %1375, %1196
  %1380 = call float @dx.op.binary.f32(i32 35, float %970, float %1379)  ; FMax(a,b)
  %1381 = and i32 %1047, 16
  %1382 = icmp eq i32 %1381, 0
  br i1 %1382, label %1404, label %1383

; <label>:1383                                    ; preds = %1355
  %1384 = add i32 %1038, 0
  %1385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1384, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1386 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1385, %dx.types.Handle %1209, float %1137, float %1140, float undef, float undef, i32 0, i32 0, i32 undef, float %1142, float %1144, float undef, float %1146, float %1148, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1387 = extractvalue %dx.types.ResRet.f32 %1386, 0
  %1388 = extractvalue %dx.types.ResRet.f32 %1386, 1
  %1389 = extractvalue %dx.types.ResRet.f32 %1386, 2
  %1390 = and i32 %1328, 65535
  %1391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1390)  ; LegacyF16ToF32(value)
  %1392 = fmul fast float %1387, %1032
  %1393 = fmul fast float %1388, %1033
  %1394 = fmul fast float %1389, %1034
  %1395 = and i32 %1047, 16384
  %1396 = icmp ne i32 %1395, 0
  %1397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1398 = extractvalue %dx.types.CBufRet.f32 %1397, 0
  %1399 = select i1 %1396, float %1398, float 1.000000e+00
  %1400 = fmul fast float %1399, %1391
  %1401 = fmul fast float %1392, %1400
  %1402 = fmul fast float %1393, %1400
  %1403 = fmul fast float %1394, %1400
  br label %1404

; <label>:1404                                    ; preds = %1383, %1355
  %1405 = phi float [ %1401, %1383 ], [ 0.000000e+00, %1355 ]
  %1406 = phi float [ %1402, %1383 ], [ 0.000000e+00, %1355 ]
  %1407 = phi float [ %1403, %1383 ], [ 0.000000e+00, %1355 ]
  %1408 = fsub fast float %1405, %977
  %1409 = fsub fast float %1406, %978
  %1410 = fsub fast float %1407, %979
  %1411 = fmul fast float %1408, %1196
  %1412 = fmul fast float %1409, %1196
  %1413 = fmul fast float %1410, %1196
  %1414 = fadd fast float %1411, %977
  %1415 = fadd fast float %1412, %978
  %1416 = fadd fast float %1413, %979
  br label %1096

; <label>:1417                                    ; preds = %1096
  br label %1418

; <label>:1418                                    ; preds = %1417, %860
  %1419 = phi float [ 0.000000e+00, %860 ], [ %1097, %1417 ]
  %1420 = phi float [ %879, %860 ], [ %1098, %1417 ]
  %1421 = phi float [ %877, %860 ], [ %1099, %1417 ]
  %1422 = phi float [ %869, %860 ], [ %1100, %1417 ]
  %1423 = phi float [ %870, %860 ], [ %1101, %1417 ]
  %1424 = phi float [ %871, %860 ], [ %1102, %1417 ]
  %1425 = phi float [ 0.000000e+00, %860 ], [ %1103, %1417 ]
  %1426 = phi float [ 0.000000e+00, %860 ], [ %1104, %1417 ]
  %1427 = phi float [ %866, %860 ], [ %1105, %1417 ]
  %1428 = phi float [ %867, %860 ], [ %1106, %1417 ]
  %1429 = phi float [ %868, %860 ], [ %1107, %1417 ]
  %1430 = phi float [ %911, %860 ], [ %1108, %1417 ]
  %1431 = phi float [ %912, %860 ], [ %1109, %1417 ]
  %1432 = phi float [ %913, %860 ], [ %1110, %1417 ]
  %1433 = phi float [ %875, %860 ], [ %1111, %1417 ]
  %1434 = phi float [ %874, %860 ], [ %1112, %1417 ]
  %1435 = phi float [ 0.000000e+00, %860 ], [ %1113, %1417 ]
  %1436 = phi float [ %872, %860 ], [ %1114, %1417 ]
  %1437 = phi float [ %863, %860 ], [ %1115, %1417 ]
  %1438 = phi float [ %864, %860 ], [ %1116, %1417 ]
  %1439 = phi float [ %865, %860 ], [ %1117, %1417 ]
  %1440 = call float @dx.op.dot3.f32(i32 55, float %1430, float %1431, float %1432, float %1430, float %1431, float %1432)  ; Dot3(ax,ay,az,bx,by,bz)
  %1441 = call float @dx.op.unary.f32(i32 25, float %1440)  ; Rsqrt(value)
  %1442 = fmul fast float %1441, %1430
  %1443 = fmul fast float %1441, %1431
  %1444 = fmul fast float %1441, %1432
  %1445 = fadd fast float %1435, %873
  %1446 = call float @dx.op.unary.f32(i32 7, float %1445)  ; Saturate(value)
  %1447 = call float @dx.op.dot3.f32(i32 55, float %1442, float %1443, float %1444, float %1442, float %1443, float %1444)  ; Dot3(ax,ay,az,bx,by,bz)
  %1448 = call float @dx.op.unary.f32(i32 25, float %1447)  ; Rsqrt(value)
  %1449 = fmul fast float %1448, %1442
  %1450 = fmul fast float %1448, %1443
  %1451 = fmul fast float %1448, %1444
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = extractvalue %dx.types.ResRet.i32 %1452, 1
  %1455 = extractvalue %dx.types.ResRet.i32 %1452, 2
  %1456 = extractvalue %dx.types.ResRet.i32 %1452, 3
  %1457 = bitcast i32 %1453 to float
  %1458 = bitcast i32 %1454 to float
  %1459 = bitcast i32 %1455 to float
  %1460 = bitcast i32 %1456 to float
  %1461 = fsub fast float %1437, %1457
  %1462 = fsub fast float %1438, %1458
  %1463 = fsub fast float %1439, %1459
  %1464 = fmul fast float %1461, %156
  %1465 = fmul fast float %1462, %156
  %1466 = fmul fast float %1463, %156
  %1467 = fadd fast float %1464, %1457
  %1468 = fadd fast float %1465, %1458
  %1469 = fadd fast float %1466, %1459
  %1470 = fsub fast float %1446, %1460
  %1471 = fmul fast float %1470, %156
  %1472 = fadd fast float %1471, %1460
  %1473 = fadd fast float %1436, 0xBFB99999A0000000
  %1474 = call float @dx.op.unary.f32(i32 7, float %1473)  ; Saturate(value)
  %1475 = fmul fast float %1474, 0x3FF1C71C80000000
  %1476 = call float @dx.op.binary.f32(i32 36, float %1436, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1477 = fsub fast float 1.000000e+00, %1475
  %1478 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1479 = fmul fast float %1467, %1478
  %1480 = fmul fast float %1468, %1478
  %1481 = fmul fast float %1469, %1478
  %1482 = call float @dx.op.unary.f32(i32 7, float %1479)  ; Saturate(value)
  %1483 = call float @dx.op.unary.f32(i32 7, float %1480)  ; Saturate(value)
  %1484 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  %1485 = fmul fast float %1467, %1475
  %1486 = fmul fast float %1468, %1475
  %1487 = fmul fast float %1469, %1475
  %1488 = fadd fast float %1485, %1476
  %1489 = fadd fast float %1486, %1476
  %1490 = fadd fast float %1487, %1476
  %1491 = call float @dx.op.unary.f32(i32 7, float %1488)  ; Saturate(value)
  %1492 = call float @dx.op.unary.f32(i32 7, float %1489)  ; Saturate(value)
  %1493 = call float @dx.op.unary.f32(i32 7, float %1490)  ; Saturate(value)
  %1494 = call float @dx.op.unary.f32(i32 7, float %1434)  ; Saturate(value)
  %1495 = call float @dx.op.binary.f32(i32 36, float %1422, float 1.270000e+02)  ; FMin(a,b)
  %1496 = call float @dx.op.binary.f32(i32 36, float %1423, float 1.270000e+02)  ; FMin(a,b)
  %1497 = call float @dx.op.binary.f32(i32 36, float %1424, float 1.270000e+02)  ; FMin(a,b)
  %1498 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1499 = extractvalue %dx.types.CBufRet.i32 %1498, 3
  %1500 = and i32 %1499, 8
  %1501 = icmp ne i32 %1500, 0
  %1502 = call float @dx.op.binary.f32(i32 35, float %1482, float %1467)  ; FMax(a,b)
  %1503 = call float @dx.op.binary.f32(i32 35, float %1483, float %1467)  ; FMax(a,b)
  %1504 = call float @dx.op.binary.f32(i32 35, float %1484, float %1467)  ; FMax(a,b)
  %1505 = call float @dx.op.dot3.f32(i32 55, float %1482, float %1483, float %1484, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1506 = select i1 %215, float %1467, float %1482
  %1507 = select i1 %215, float %1505, float %1483
  %1508 = select i1 %215, float 1.000000e+00, float %1484
  %1509 = select i1 %1501, float %1502, float %1506
  %1510 = select i1 %1501, float %1503, float %1507
  %1511 = select i1 %1501, float %1504, float %1508
  %1512 = and i32 %191, 3
  %1513 = select i1 %185, i32 %1512, i32 0
  %1514 = icmp eq i32 %1513, 1
  br i1 %1514, label %1515, label %1591

; <label>:1515                                    ; preds = %1418
  %1516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1517 = extractvalue %dx.types.CBufRet.f32 %1516, 0
  %1518 = extractvalue %dx.types.CBufRet.f32 %1516, 1
  %1519 = fadd fast float %1517, %123
  %1520 = fadd fast float %1518, %124
  %1521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1522 = extractvalue %dx.types.CBufRet.f32 %1521, 0
  %1523 = extractvalue %dx.types.CBufRet.f32 %1521, 1
  %1524 = fsub fast float %1519, %1522
  %1525 = fsub fast float %1520, %1523
  %1526 = fmul fast float %1524, %1524
  %1527 = fmul fast float %1525, %1525
  %1528 = fadd fast float %1526, %1527
  %1529 = call float @dx.op.unary.f32(i32 24, float %1528)  ; Sqrt(value)
  %1530 = extractvalue %dx.types.CBufRet.f32 %1521, 2
  %1531 = fcmp fast olt float %1529, %1530
  br i1 %1531, label %1532, label %1585

; <label>:1532                                    ; preds = %1515
  %1533 = extractvalue %dx.types.CBufRet.f32 %1516, 2
  %1534 = fadd fast float %1533, %125
  %1535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1536 = extractvalue %dx.types.CBufRet.f32 %1535, 0
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 0
  %1539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1540 = extractvalue %dx.types.CBufRet.f32 %1539, 0
  %1541 = extractvalue %dx.types.CBufRet.f32 %1535, 1
  %1542 = extractvalue %dx.types.CBufRet.f32 %1537, 1
  %1543 = extractvalue %dx.types.CBufRet.f32 %1539, 1
  %1544 = extractvalue %dx.types.CBufRet.f32 %1535, 3
  %1545 = extractvalue %dx.types.CBufRet.f32 %1537, 3
  %1546 = extractvalue %dx.types.CBufRet.f32 %1539, 3
  %1547 = fadd fast float %1544, %1519
  %1548 = fadd fast float %1545, %1520
  %1549 = fadd fast float %1534, %1546
  %1550 = fmul fast float %1547, %1536
  %1551 = call float @dx.op.tertiary.f32(i32 46, float %1548, float %1538, float %1550)  ; FMad(a,b,c)
  %1552 = call float @dx.op.tertiary.f32(i32 46, float %1549, float %1540, float %1551)  ; FMad(a,b,c)
  %1553 = fmul fast float %1547, %1541
  %1554 = call float @dx.op.tertiary.f32(i32 46, float %1548, float %1542, float %1553)  ; FMad(a,b,c)
  %1555 = call float @dx.op.tertiary.f32(i32 46, float %1549, float %1543, float %1554)  ; FMad(a,b,c)
  %1556 = fsub fast float %1552, %1544
  %1557 = fsub fast float %1555, %1545
  %1558 = fsub fast float %1556, %1522
  %1559 = fadd fast float %1558, %1530
  %1560 = fsub fast float %1557, %1523
  %1561 = fadd fast float %1560, %1530
  %1562 = extractvalue %dx.types.CBufRet.f32 %1521, 3
  %1563 = fmul fast float %1559, %1562
  %1564 = fmul fast float %1561, %1562
  %1565 = call float @dx.op.unary.f32(i32 7, float %1563)  ; Saturate(value)
  %1566 = call float @dx.op.unary.f32(i32 7, float %1564)  ; Saturate(value)
  %1567 = fsub fast float 1.000000e+00, %1565
  %1568 = fsub fast float 1.000000e+00, %1566
  %1569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %31, float %1567, float %1568, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1570 = extractvalue %dx.types.ResRet.f32 %1569, 0
  %1571 = fcmp fast ugt float %1570, 0.000000e+00
  br i1 %1571, label %1572, label %1585

; <label>:1572                                    ; preds = %1532
  %1573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1574 = extractvalue %dx.types.CBufRet.f32 %1573, 2
  %1575 = fmul fast float %1574, %1570
  %1576 = extractvalue %dx.types.CBufRet.f32 %1573, 3
  %1577 = fadd fast float %1576, %1575
  %1578 = extractvalue %dx.types.CBufRet.f32 %1539, 2
  %1579 = fadd fast float %1577, %1546
  %1580 = fmul fast float %1552, %1540
  %1581 = call float @dx.op.tertiary.f32(i32 46, float %1555, float %1543, float %1580)  ; FMad(a,b,c)
  %1582 = call float @dx.op.tertiary.f32(i32 46, float %1579, float %1578, float %1581)  ; FMad(a,b,c)
  %1583 = fsub fast float %1582, %1546
  %1584 = fsub fast float %1583, %1533
  br label %1585

; <label>:1585                                    ; preds = %1572, %1532, %1515
  %1586 = phi i1 [ true, %1572 ], [ false, %1532 ], [ false, %1515 ]
  %1587 = phi float [ %1584, %1572 ], [ -1.310720e+05, %1532 ], [ -1.310720e+05, %1515 ]
  %1588 = fsub fast float %1587, %125
  %1589 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  %1590 = select i1 %1586, float %1589, float 1.000000e+00
  br label %1591

; <label>:1591                                    ; preds = %1585, %1418
  %1592 = phi float [ %1590, %1585 ], [ 0.000000e+00, %1418 ]
  %1593 = icmp eq i32 %1513, 3
  %1594 = select i1 %1593, float 1.000000e+00, float %1592
  %1595 = call float @dx.op.binary.f32(i32 35, float %1419, float %1594)  ; FMax(a,b)
  %1596 = call float @dx.op.unary.f32(i32 7, float %1595)  ; Saturate(value)
  %1597 = fcmp fast une float %1596, 0.000000e+00
  %1598 = fsub fast float -0.000000e+00, %142
  %1599 = fsub fast float -0.000000e+00, %143
  %1600 = fsub fast float -0.000000e+00, %144
  br i1 %1597, label %1601, label %1763

; <label>:1601                                    ; preds = %1591
  %1602 = call float @dx.op.dot3.f32(i32 55, float %1598, float %1599, float %1600, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1603 = fmul fast float %1596, 2.500000e+00
  %1604 = call float @dx.op.unary.f32(i32 7, float %1603)  ; Saturate(value)
  %1605 = fmul fast float %1596, 0x4013FFFFE0000000
  %1606 = fadd fast float %1605, 0xBFFFFFFFE0000000
  %1607 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1608 = fmul fast float %1596, 0x4004000020000000
  %1609 = fadd fast float %1608, 0xBFF8000040000000
  %1610 = call float @dx.op.unary.f32(i32 7, float %1609)  ; Saturate(value)
  %1611 = call float @dx.op.unary.f32(i32 7, float %1604)  ; Saturate(value)
  %1612 = fmul fast float %1473, 1.000000e+01
  %1613 = call float @dx.op.unary.f32(i32 7, float %1612)  ; Saturate(value)
  %1614 = fmul fast float %1613, 2.000000e+00
  %1615 = fsub fast float 3.000000e+00, %1614
  %1616 = fmul fast float %1613, %1613
  %1617 = fmul fast float %1616, %1615
  %1618 = fsub fast float 1.000000e+00, %1617
  %1619 = fsub fast float 0x3FE3333340000000, %1494
  %1620 = fmul fast float %1619, 0x400AAAAAA0000000
  %1621 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  %1622 = fmul fast float %1618, %1621
  %1623 = fmul fast float %1509, 0x3FEA2B8620000000
  %1624 = fmul fast float %1510, 0x3FEA2B8620000000
  %1625 = fmul fast float %1511, 0x3FEA2B8620000000
  %1626 = fadd fast float %1623, 0x3FC81DFBA0000000
  %1627 = fmul fast float %1626, %1509
  %1628 = fadd fast float %1627, 0x3F910E6020000000
  %1629 = fadd fast float %1624, 0x3FC81DFBA0000000
  %1630 = fmul fast float %1629, %1510
  %1631 = fadd fast float %1630, 0x3F910E6020000000
  %1632 = fadd fast float %1625, 0x3FC81DFBA0000000
  %1633 = fmul fast float %1632, %1511
  %1634 = fadd fast float %1633, 0x3F910E6020000000
  %1635 = call float @dx.op.unary.f32(i32 7, float %1628)  ; Saturate(value)
  %1636 = call float @dx.op.unary.f32(i32 7, float %1631)  ; Saturate(value)
  %1637 = call float @dx.op.unary.f32(i32 7, float %1634)  ; Saturate(value)
  %1638 = fsub fast float %1635, %1509
  %1639 = fsub fast float %1636, %1510
  %1640 = fsub fast float %1637, %1511
  %1641 = fmul fast float %1638, %1611
  %1642 = fmul fast float %1641, %1622
  %1643 = fmul fast float %1639, %1611
  %1644 = fmul fast float %1643, %1622
  %1645 = fmul fast float %1640, %1611
  %1646 = fmul fast float %1645, %1622
  %1647 = fadd fast float %1642, %1509
  %1648 = fadd fast float %1644, %1510
  %1649 = fadd fast float %1646, %1511
  %1650 = fmul fast float %1433, %1433
  %1651 = fmul fast float %1650, %1650
  %1652 = fadd fast float %1607, 1.000000e+00
  %1653 = fsub fast float %1652, %1622
  %1654 = call float @dx.op.unary.f32(i32 7, float %1653)  ; Saturate(value)
  %1655 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1656 = call float @dx.op.unary.f32(i32 7, float %1655)  ; Saturate(value)
  %1657 = fsub fast float 1.000000e+00, %1651
  %1658 = call float @dx.op.binary.f32(i32 36, float %1654, float %1657)  ; FMin(a,b)
  %1659 = call float @dx.op.unary.f32(i32 7, float %1610)  ; Saturate(value)
  %1660 = call float @dx.op.binary.f32(i32 35, float %1658, float %1659)  ; FMax(a,b)
  %1661 = fadd fast float %1656, 0xBFE4CCCCC0000000
  %1662 = fmul fast float %1661, 0x4006DB6DA0000000
  %1663 = call float @dx.op.unary.f32(i32 7, float %1662)  ; Saturate(value)
  %1664 = fmul fast float %1663, 2.000000e+00
  %1665 = fsub fast float 3.000000e+00, %1664
  %1666 = bitcast float %1491 to i32
  %1667 = ashr i32 %1666, 1
  %1668 = add nsw i32 %1667, 532487669
  %1669 = bitcast i32 %1668 to float
  %1670 = fsub fast float 1.000000e+00, %1669
  %1671 = bitcast float %1670 to i32
  %1672 = sub nsw i32 2129859010, %1671
  %1673 = bitcast i32 %1672 to float
  %1674 = fmul fast float %1673, 2.000000e+00
  %1675 = bitcast float %1492 to i32
  %1676 = ashr i32 %1675, 1
  %1677 = add nsw i32 %1676, 532487669
  %1678 = bitcast i32 %1677 to float
  %1679 = fsub fast float 1.000000e+00, %1678
  %1680 = bitcast float %1679 to i32
  %1681 = sub nsw i32 2129859010, %1680
  %1682 = bitcast i32 %1681 to float
  %1683 = fmul fast float %1682, 2.000000e+00
  %1684 = bitcast float %1493 to i32
  %1685 = ashr i32 %1684, 1
  %1686 = add nsw i32 %1685, 532487669
  %1687 = bitcast i32 %1686 to float
  %1688 = fsub fast float 1.000000e+00, %1687
  %1689 = bitcast float %1688 to i32
  %1690 = sub nsw i32 2129859010, %1689
  %1691 = bitcast i32 %1690 to float
  %1692 = fmul fast float %1691, 2.000000e+00
  %1693 = fsub fast float 0x4002A9FBE0000000, %1674
  %1694 = fadd fast float %1674, 0x3FD54FDF00000000
  %1695 = bitcast float %1694 to i32
  %1696 = sub nsw i32 2129859010, %1695
  %1697 = bitcast i32 %1696 to float
  %1698 = fmul fast float %1697, %1693
  %1699 = fmul fast float %1698, %1698
  %1700 = fsub fast float 0x4002A9FBE0000000, %1683
  %1701 = fadd fast float %1683, 0x3FD54FDF00000000
  %1702 = bitcast float %1701 to i32
  %1703 = sub nsw i32 2129859010, %1702
  %1704 = bitcast i32 %1703 to float
  %1705 = fmul fast float %1704, %1700
  %1706 = fmul fast float %1705, %1705
  %1707 = fsub fast float 0x4002A9FBE0000000, %1692
  %1708 = fadd fast float %1692, 0x3FD54FDF00000000
  %1709 = bitcast float %1708 to i32
  %1710 = sub nsw i32 2129859010, %1709
  %1711 = bitcast i32 %1710 to float
  %1712 = fmul fast float %1711, %1707
  %1713 = fmul fast float %1712, %1712
  %1714 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1699)  ; FMax(a,b)
  %1715 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1706)  ; FMax(a,b)
  %1716 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1713)  ; FMax(a,b)
  %1717 = fsub fast float 1.000000e+00, %1602
  %1718 = fadd fast float %1717, %1618
  %1719 = call float @dx.op.unary.f32(i32 7, float %1718)  ; Saturate(value)
  %1720 = fsub fast float 1.000000e+00, %1594
  %1721 = fmul fast float %1660, %1720
  %1722 = fmul fast float %1663, %1663
  %1723 = fmul fast float %1722, %1721
  %1724 = fmul fast float %1723, %1665
  %1725 = fmul fast float %1720, 0xBFE99999A0000000
  %1726 = fmul fast float %1725, %1611
  %1727 = fmul fast float %1726, %1622
  %1728 = fadd fast float %1727, 1.000000e+00
  %1729 = fadd fast float %1494, -1.000000e+00
  %1730 = fmul fast float %1728, %1729
  %1731 = fadd fast float %1730, 1.000000e+00
  %1732 = fsub fast float %1714, %1491
  %1733 = fsub fast float %1715, %1492
  %1734 = fsub fast float %1716, %1493
  %1735 = fmul fast float %1724, %1732
  %1736 = fmul fast float %1724, %1733
  %1737 = fmul fast float %1724, %1734
  %1738 = fadd fast float %1735, %1491
  %1739 = fadd fast float %1736, %1492
  %1740 = fadd fast float %1737, %1493
  %1741 = fsub fast float %70, %1449
  %1742 = fsub fast float %71, %1450
  %1743 = fsub fast float %72, %1451
  %1744 = fmul fast float %1724, %1741
  %1745 = fmul fast float %1724, %1742
  %1746 = fmul fast float %1724, %1743
  %1747 = fadd fast float %1744, %1449
  %1748 = fadd fast float %1745, %1450
  %1749 = fadd fast float %1746, %1451
  %1750 = fmul fast float %1724, %1719
  %1751 = call float @dx.op.unary.f32(i32 7, float %1731)  ; Saturate(value)
  %1752 = fsub fast float 1.000000e+00, %1751
  %1753 = fmul fast float %1750, %1752
  %1754 = fadd fast float %1753, %1751
  %1755 = fsub fast float 1.000000e+00, %1433
  %1756 = fmul fast float %1724, %1755
  %1757 = fadd fast float %1756, %1433
  %1758 = call float @dx.op.dot3.f32(i32 55, float %1747, float %1748, float %1749, float %1747, float %1748, float %1749)  ; Dot3(ax,ay,az,bx,by,bz)
  %1759 = call float @dx.op.unary.f32(i32 25, float %1758)  ; Rsqrt(value)
  %1760 = fmul fast float %1747, %1759
  %1761 = fmul fast float %1748, %1759
  %1762 = fmul fast float %1749, %1759
  br label %1763

; <label>:1763                                    ; preds = %1601, %1591
  %1764 = phi float [ %1647, %1601 ], [ %1509, %1591 ]
  %1765 = phi float [ %1648, %1601 ], [ %1510, %1591 ]
  %1766 = phi float [ %1649, %1601 ], [ %1511, %1591 ]
  %1767 = phi float [ %1738, %1601 ], [ %1491, %1591 ]
  %1768 = phi float [ %1739, %1601 ], [ %1492, %1591 ]
  %1769 = phi float [ %1740, %1601 ], [ %1493, %1591 ]
  %1770 = phi float [ %1760, %1601 ], [ %1449, %1591 ]
  %1771 = phi float [ %1761, %1601 ], [ %1450, %1591 ]
  %1772 = phi float [ %1762, %1601 ], [ %1451, %1591 ]
  %1773 = phi float [ %1754, %1601 ], [ %1494, %1591 ]
  %1774 = phi float [ %1757, %1601 ], [ %1433, %1591 ]
  %1775 = select i1 %215, float 0.000000e+00, float %1769
  %1776 = call float @dx.op.dot3.f32(i32 55, float %1770, float %1771, float %1772, float %1598, float %1599, float %1600)  ; Dot3(ax,ay,az,bx,by,bz)
  %1777 = call float @dx.op.unary.f32(i32 7, float %1776)  ; Saturate(value)
  %1778 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %1770, float %1771, float %1772)  ; Dot3(ax,ay,az,bx,by,bz)
  %1779 = fmul fast float %1778, 2.000000e+00
  %1780 = fmul fast float %1779, %1770
  %1781 = fmul fast float %1779, %1771
  %1782 = fmul fast float %1779, %1772
  %1783 = fsub fast float %142, %1780
  %1784 = fsub fast float %143, %1781
  %1785 = fsub fast float %144, %1782
  %1786 = call float @dx.op.binary.f32(i32 36, float %1774, float 1.000000e+00)  ; FMin(a,b)
  %1787 = fsub fast float 1.000000e+00, %1774
  %1788 = bitcast float %1787 to i32
  %1789 = sub nsw i32 2129859010, %1788
  %1790 = bitcast i32 %1789 to float
  %1791 = fsub fast float 1.000000e+00, %42
  %1792 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1793 = call float @dx.op.binary.f32(i32 35, float %1792, float 0x3FA99999A0000000)  ; FMax(a,b)
  %1794 = fdiv fast float %1791, %1793
  %1795 = call float @dx.op.dot3.f32(i32 55, float %1770, float %1771, float %1772, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1796 = call float @dx.op.unary.f32(i32 7, float %1795)  ; Saturate(value)
  %1797 = fmul fast float %1796, 5.000000e-01
  %1798 = fadd fast float %1797, 5.000000e-01
  %1799 = fmul fast float %1798, %42
  %1800 = call float @dx.op.dot3.f32(i32 55, float %1770, float %1771, float %1772, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %1801 = call float @dx.op.unary.f32(i32 7, float %1800)  ; Saturate(value)
  %1802 = fmul fast float %1801, %1794
  %1803 = fadd fast float %1799, %1802
  %1804 = fsub fast float 5.000000e-01, %1797
  %1805 = fmul fast float %1804, %1764
  %1806 = fmul fast float %1804, %1765
  %1807 = fmul fast float %1804, %1766
  %1808 = fadd fast float %1803, %1805
  %1809 = fadd fast float %1803, %1806
  %1810 = fadd fast float %1803, %1807
  %1811 = call float @dx.op.dot3.f32(i32 55, float %1783, float %1784, float %1785, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1812 = call float @dx.op.unary.f32(i32 7, float %1811)  ; Saturate(value)
  %1813 = fmul fast float %1812, 5.000000e-01
  %1814 = fadd fast float %1813, 5.000000e-01
  %1815 = fmul fast float %1814, %42
  %1816 = call float @dx.op.dot3.f32(i32 55, float %1783, float %1784, float %1785, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %1817 = call float @dx.op.unary.f32(i32 7, float %1816)  ; Saturate(value)
  %1818 = fmul fast float %1817, %1794
  %1819 = fadd fast float %1815, %1818
  %1820 = fsub fast float 5.000000e-01, %1813
  %1821 = fmul fast float %1820, %1764
  %1822 = fmul fast float %1820, %1765
  %1823 = fmul fast float %1820, %1766
  %1824 = fadd fast float %1819, %1821
  %1825 = fadd fast float %1819, %1822
  %1826 = fadd fast float %1819, %1823
  %1827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %1828 = extractvalue %dx.types.CBufRet.f32 %1827, 0
  %1829 = call float @dx.op.binary.f32(i32 36, float %1764, float %1828)  ; FMin(a,b)
  %1830 = fsub fast float 1.000000e+00, %1786
  %1831 = fmul fast float %1829, %1830
  %1832 = fsub fast float 1.000000e+00, %1831
  %1833 = bitcast float %1832 to i32
  %1834 = sub nsw i32 2129859010, %1833
  %1835 = bitcast i32 %1834 to float
  %1836 = call float @dx.op.binary.f32(i32 36, float %1765, float %1828)  ; FMin(a,b)
  %1837 = fmul fast float %1836, %1830
  %1838 = fsub fast float 1.000000e+00, %1837
  %1839 = bitcast float %1838 to i32
  %1840 = sub nsw i32 2129859010, %1839
  %1841 = bitcast i32 %1840 to float
  %1842 = call float @dx.op.binary.f32(i32 36, float %1766, float %1828)  ; FMin(a,b)
  %1843 = fmul fast float %1842, %1830
  %1844 = fsub fast float 1.000000e+00, %1843
  %1845 = bitcast float %1844 to i32
  %1846 = sub nsw i32 2129859010, %1845
  %1847 = bitcast i32 %1846 to float
  %1848 = fmul fast float %1786, %43
  %1849 = fmul fast float %1848, %1808
  %1850 = fmul fast float %1849, %1835
  %1851 = fmul fast float %1786, %44
  %1852 = fmul fast float %1851, %1809
  %1853 = fmul fast float %1852, %1841
  %1854 = fmul fast float %1786, %45
  %1855 = fmul fast float %1854, %1810
  %1856 = fmul fast float %1855, %1847
  %1857 = call float @dx.op.binary.f32(i32 36, float %1767, float %1828)  ; FMin(a,b)
  %1858 = fmul fast float %1857, %1830
  %1859 = fsub fast float 1.000000e+00, %1858
  %1860 = bitcast float %1859 to i32
  %1861 = sub nsw i32 2129859010, %1860
  %1862 = bitcast i32 %1861 to float
  %1863 = call float @dx.op.binary.f32(i32 36, float %1768, float %1828)  ; FMin(a,b)
  %1864 = fmul fast float %1863, %1830
  %1865 = fsub fast float 1.000000e+00, %1864
  %1866 = bitcast float %1865 to i32
  %1867 = sub nsw i32 2129859010, %1866
  %1868 = bitcast i32 %1867 to float
  %1869 = call float @dx.op.binary.f32(i32 36, float %1775, float %1828)  ; FMin(a,b)
  %1870 = fmul fast float %1869, %1830
  %1871 = fsub fast float 1.000000e+00, %1870
  %1872 = bitcast float %1871 to i32
  %1873 = sub nsw i32 2129859010, %1872
  %1874 = bitcast i32 %1873 to float
  %1875 = fmul fast float %1848, %1824
  %1876 = fmul fast float %1875, %1862
  %1877 = fmul fast float %1851, %1825
  %1878 = fmul fast float %1877, %1868
  %1879 = fmul fast float %1854, %1826
  %1880 = fmul fast float %1879, %1874
  %1881 = call float @dx.op.dot3.f32(i32 55, float %1850, float %1853, float %1856, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1882 = select i1 %215, float 0.000000e+00, float %1850
  %1883 = select i1 %215, float %1881, float %1853
  %1884 = select i1 %215, float 0.000000e+00, float %1856
  %1885 = call float @dx.op.dot3.f32(i32 55, float %1876, float %1878, float %1880, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1886 = select i1 %215, float 0.000000e+00, float %1876
  %1887 = select i1 %215, float %1885, float %1878
  %1888 = select i1 %215, float 0.000000e+00, float %1880
  %1889 = fmul fast float %876, %876
  %1890 = call float @dx.op.unary.f32(i32 7, float %1889)  ; Saturate(value)
  %1891 = fmul fast float %1777, 9.843750e-01
  %1892 = fmul fast float %1773, 9.843750e-01
  %1893 = fadd fast float %1891, 7.812500e-03
  %1894 = fadd fast float %1892, 7.812500e-03
  %1895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %1893, float %1894, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1896 = extractvalue %dx.types.ResRet.f32 %1895, 0
  %1897 = extractvalue %dx.types.ResRet.f32 %1895, 1
  %1898 = extractvalue %dx.types.ResRet.f32 %1895, 2
  %1899 = extractvalue %dx.types.ResRet.f32 %1895, 3
  %1900 = fsub fast float 1.000000e+00, %1890
  %1901 = fsub fast float %1898, %1896
  %1902 = fsub fast float %1899, %1897
  %1903 = fmul fast float %1901, %1900
  %1904 = fmul fast float %1902, %1900
  %1905 = fadd fast float %1903, %1896
  %1906 = fadd fast float %1904, %1897
  %1907 = fmul fast float %1905, %1767
  %1908 = fmul fast float %1905, %1768
  %1909 = fmul fast float %1905, %1775
  %1910 = fadd fast float %1907, %1906
  %1911 = fadd fast float %1908, %1906
  %1912 = fadd fast float %1909, %1906
  %1913 = fcmp fast ogt float %1426, 0.000000e+00
  br i1 %1913, label %1914, label %1940

; <label>:1914                                    ; preds = %1763
  %1915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1426, float %1777, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1916 = extractvalue %dx.types.ResRet.f32 %1915, 0
  %1917 = extractvalue %dx.types.ResRet.f32 %1915, 1
  %1918 = extractvalue %dx.types.ResRet.f32 %1915, 2
  %1919 = fadd fast float %1916, -5.000000e-01
  %1920 = fadd fast float %1917, -5.000000e-01
  %1921 = fadd fast float %1918, -5.000000e-01
  %1922 = fsub fast float 1.000000e+00, %1767
  %1923 = fsub fast float 1.000000e+00, %1768
  %1924 = fsub fast float 1.000000e+00, %1775
  %1925 = fmul fast float %1767, 4.000000e+00
  %1926 = fmul fast float %1925, %1922
  %1927 = fmul fast float %1926, %1919
  %1928 = fmul fast float %1768, 4.000000e+00
  %1929 = fmul fast float %1928, %1923
  %1930 = fmul fast float %1929, %1920
  %1931 = fmul fast float %1775, 4.000000e+00
  %1932 = fmul fast float %1931, %1924
  %1933 = fmul fast float %1932, %1921
  %1934 = fadd fast float %1927, %1910
  %1935 = fadd fast float %1930, %1911
  %1936 = fadd fast float %1933, %1912
  %1937 = call float @dx.op.unary.f32(i32 7, float %1934)  ; Saturate(value)
  %1938 = call float @dx.op.unary.f32(i32 7, float %1935)  ; Saturate(value)
  %1939 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  br label %1940

; <label>:1940                                    ; preds = %1914, %1763
  %1941 = phi float [ %1937, %1914 ], [ %1910, %1763 ]
  %1942 = phi float [ %1938, %1914 ], [ %1911, %1763 ]
  %1943 = phi float [ %1939, %1914 ], [ %1912, %1763 ]
  %1944 = call float @dx.op.binary.f32(i32 35, float %1942, float %1943)  ; FMax(a,b)
  %1945 = call float @dx.op.binary.f32(i32 35, float %1941, float %1944)  ; FMax(a,b)
  %1946 = fsub fast float 1.000000e+00, %1945
  %1947 = fmul fast float %1946, %1882
  %1948 = fmul fast float %1946, %1883
  %1949 = fmul fast float %1946, %1884
  %1950 = call float @dx.op.dot3.f32(i32 55, float %1764, float %1765, float %1766, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1951 = fcmp fast ogt float %1950, 0x3E7FF19E20000000
  %1952 = fdiv fast float 1.000000e+00, %1950
  %1953 = select i1 %1951, float %1952, float 0.000000e+00
  %1954 = fmul fast float %1953, %1764
  %1955 = fmul fast float %1953, %1765
  %1956 = fmul fast float %1953, %1766
  %1957 = fadd fast float %1954, -1.000000e+00
  %1958 = fadd fast float %1955, -1.000000e+00
  %1959 = fadd fast float %1956, -1.000000e+00
  %1960 = fmul fast float %1957, 5.000000e-01
  %1961 = fmul fast float %1958, 5.000000e-01
  %1962 = fmul fast float %1959, 5.000000e-01
  %1963 = fadd fast float %1960, 1.000000e+00
  %1964 = fadd fast float %1961, 1.000000e+00
  %1965 = fadd fast float %1962, 1.000000e+00
  %1966 = call float @dx.op.binary.f32(i32 35, float %1777, float 0x3F50624DE0000000)  ; FMax(a,b)
  %1967 = fdiv fast float %876, %1966
  %1968 = fcmp fast olt float %1495, 1.270000e+02
  %1969 = fcmp fast olt float %1496, 1.270000e+02
  %1970 = fcmp fast olt float %1497, 1.270000e+02
  %1971 = fmul fast float %1495, 0xBFF7154760000000
  %1972 = fmul fast float %1971, %1967
  %1973 = fmul fast float %1496, 0xBFF7154760000000
  %1974 = fmul fast float %1973, %1967
  %1975 = fmul fast float %1497, 0xBFF7154760000000
  %1976 = fmul fast float %1975, %1967
  %1977 = call float @dx.op.unary.f32(i32 21, float %1972)  ; Exp(value)
  %1978 = call float @dx.op.unary.f32(i32 21, float %1974)  ; Exp(value)
  %1979 = call float @dx.op.unary.f32(i32 21, float %1976)  ; Exp(value)
  %1980 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1981 = call float @dx.op.unary.f32(i32 7, float %1978)  ; Saturate(value)
  %1982 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  %1983 = select i1 %1968, float %1980, float 0.000000e+00
  %1984 = select i1 %1969, float %1981, float 0.000000e+00
  %1985 = select i1 %1970, float %1982, float 0.000000e+00
  %1986 = fmul fast float %1983, %1946
  %1987 = fmul fast float %1984, %1946
  %1988 = fmul fast float %1985, %1946
  %1989 = fadd fast float %1986, -1.000000e+00
  %1990 = fadd fast float %1987, -1.000000e+00
  %1991 = fadd fast float %1988, -1.000000e+00
  %1992 = fmul fast float %1941, %1886
  %1993 = fmul fast float %1942, %1887
  %1994 = fmul fast float %1943, %1888
  %1995 = fsub fast float 1.000000e+00, %1777
  %1996 = bitcast float %1995 to i32
  %1997 = sitofp i32 %1996 to float
  %1998 = fmul fast float %1997, 5.000000e+00
  %1999 = fadd fast float %1998, 0xC1EFBF8940000000
  %2000 = fptosi float %1999 to i32
  %2001 = bitcast i32 %2000 to float
  %2002 = fmul fast float %2001, %1425
  %2003 = fmul fast float %1882, %2002
  %2004 = fmul fast float %2003, %1946
  %2005 = fmul fast float %2004, %1963
  %2006 = fmul fast float %1883, %2002
  %2007 = fmul fast float %2006, %1946
  %2008 = fmul fast float %2007, %1964
  %2009 = fmul fast float %1884, %2002
  %2010 = fmul fast float %2009, %1946
  %2011 = fmul fast float %2010, %1965
  %2012 = fmul fast float %1947, %1472
  %2013 = fmul fast float %1948, %1472
  %2014 = fmul fast float %1949, %1472
  %2015 = fadd fast float %1992, %1427
  %2016 = fadd fast float %2015, %2005
  %2017 = fmul fast float %2016, %1472
  %2018 = fadd fast float %1993, %1428
  %2019 = fadd fast float %2018, %2008
  %2020 = fmul fast float %2019, %1472
  %2021 = fadd fast float %1994, %1429
  %2022 = fadd fast float %2021, %2011
  %2023 = fmul fast float %2022, %1472
  %2024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2025 = extractvalue %dx.types.CBufRet.f32 %2024, 3
  %2026 = fcmp fast oeq float %2025, 0.000000e+00
  br i1 %2026, label %3033, label %2027

; <label>:2027                                    ; preds = %1940
  %2028 = extractvalue %dx.types.CBufRet.f32 %2024, 0
  %2029 = extractvalue %dx.types.CBufRet.f32 %2024, 1
  %2030 = extractvalue %dx.types.CBufRet.f32 %2024, 2
  %2031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2032 = extractvalue %dx.types.CBufRet.f32 %2031, 0
  %2033 = extractvalue %dx.types.CBufRet.f32 %2031, 1
  %2034 = extractvalue %dx.types.CBufRet.f32 %2031, 2
  %2035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.f32 %2035, 0
  %2037 = extractvalue %dx.types.CBufRet.f32 %2035, 1
  %2038 = call float @dx.op.dot3.f32(i32 55, float %2032, float %2033, float %2034, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2039 = select i1 %215, float %2036, float %2032
  %2040 = select i1 %215, float %2038, float %2033
  %2041 = select i1 %215, float %2037, float %2034
  %2042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2043 = extractvalue %dx.types.CBufRet.f32 %2042, 2
  %2044 = fmul fast float %2043, %70
  %2045 = fmul fast float %2043, %71
  %2046 = fmul fast float %2043, %72
  %2047 = fadd fast float %2044, %123
  %2048 = fadd fast float %2045, %124
  %2049 = fadd fast float %2046, %125
  %2050 = fcmp fast olt float %2025, 0.000000e+00
  br i1 %2050, label %2675, label %2051

; <label>:2051                                    ; preds = %2027
  %2052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2053 = extractvalue %dx.types.CBufRet.f32 %2052, 0
  %2054 = extractvalue %dx.types.CBufRet.f32 %2052, 1
  %2055 = extractvalue %dx.types.CBufRet.f32 %2052, 2
  %2056 = extractvalue %dx.types.CBufRet.f32 %2052, 3
  %2057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2058 = extractvalue %dx.types.CBufRet.f32 %2057, 0
  %2059 = extractvalue %dx.types.CBufRet.f32 %2057, 1
  %2060 = extractvalue %dx.types.CBufRet.f32 %2057, 2
  %2061 = extractvalue %dx.types.CBufRet.f32 %2057, 3
  %2062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2063 = extractvalue %dx.types.CBufRet.f32 %2062, 0
  %2064 = extractvalue %dx.types.CBufRet.f32 %2062, 1
  %2065 = extractvalue %dx.types.CBufRet.f32 %2062, 2
  %2066 = extractvalue %dx.types.CBufRet.f32 %2062, 3
  %2067 = fmul fast float %2053, %2047
  %2068 = call float @dx.op.tertiary.f32(i32 46, float %2048, float %2054, float %2067)  ; FMad(a,b,c)
  %2069 = call float @dx.op.tertiary.f32(i32 46, float %2049, float %2055, float %2068)  ; FMad(a,b,c)
  %2070 = fadd fast float %2069, %2056
  %2071 = fmul fast float %2058, %2047
  %2072 = call float @dx.op.tertiary.f32(i32 46, float %2048, float %2059, float %2071)  ; FMad(a,b,c)
  %2073 = call float @dx.op.tertiary.f32(i32 46, float %2049, float %2060, float %2072)  ; FMad(a,b,c)
  %2074 = fadd fast float %2073, %2061
  %2075 = fmul fast float %2063, %2047
  %2076 = call float @dx.op.tertiary.f32(i32 46, float %2048, float %2064, float %2075)  ; FMad(a,b,c)
  %2077 = call float @dx.op.tertiary.f32(i32 46, float %2049, float %2065, float %2076)  ; FMad(a,b,c)
  %2078 = fadd fast float %2077, %2066
  %2079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2080 = extractvalue %dx.types.CBufRet.f32 %2079, 0
  %2081 = extractvalue %dx.types.CBufRet.f32 %2079, 1
  %2082 = extractvalue %dx.types.CBufRet.f32 %2079, 3
  %2083 = fmul fast float %2082, %2070
  %2084 = fmul fast float %2082, %2074
  %2085 = fadd fast float %2083, %2080
  %2086 = fadd fast float %2084, %2081
  %2087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2088 = extractvalue %dx.types.CBufRet.f32 %2087, 0
  %2089 = extractvalue %dx.types.CBufRet.f32 %2087, 1
  %2090 = extractvalue %dx.types.CBufRet.f32 %2087, 3
  %2091 = fmul fast float %2090, %2070
  %2092 = fmul fast float %2090, %2074
  %2093 = fadd fast float %2091, %2088
  %2094 = fadd fast float %2092, %2089
  %2095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2096 = extractvalue %dx.types.CBufRet.f32 %2095, 1
  %2097 = fsub fast float %2096, %2078
  %2098 = extractvalue %dx.types.CBufRet.f32 %2095, 2
  %2099 = fmul fast float %2097, %2098
  %2100 = fsub fast float 1.000000e+00, %2099
  %2101 = call float @dx.op.unary.f32(i32 7, float %2100)  ; Saturate(value)
  %2102 = extractvalue %dx.types.CBufRet.f32 %2087, 2
  %2103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2104 = extractvalue %dx.types.CBufRet.f32 %2103, 2
  %2105 = fadd fast float %2104, %2102
  %2106 = fcmp fast ogt float %2105, 0.000000e+00
  br i1 %2106, label %2107, label %2131

; <label>:2107                                    ; preds = %2051
  %2108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2109 = extractvalue %dx.types.CBufRet.f32 %2108, 0
  %2110 = extractvalue %dx.types.CBufRet.f32 %2108, 1
  %2111 = fsub fast float %2093, %2109
  %2112 = fsub fast float %2094, %2110
  %2113 = fcmp fast olt float %2111, 0.000000e+00
  %2114 = fcmp fast olt float %2112, 0.000000e+00
  %2115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2116 = extractvalue %dx.types.CBufRet.f32 %2115, 0
  %2117 = extractvalue %dx.types.CBufRet.f32 %2115, 1
  %2118 = extractvalue %dx.types.CBufRet.f32 %2115, 2
  %2119 = extractvalue %dx.types.CBufRet.f32 %2115, 3
  %2120 = select i1 %2113, float %2116, float %2118
  %2121 = select i1 %2114, float %2117, float %2119
  %2122 = fmul fast float %2120, %2111
  %2123 = fmul fast float %2121, %2112
  %2124 = call float @dx.op.unary.f32(i32 6, float %2122)  ; FAbs(value)
  %2125 = call float @dx.op.unary.f32(i32 6, float %2123)  ; FAbs(value)
  %2126 = extractvalue %dx.types.CBufRet.f32 %2042, 0
  %2127 = call float @dx.op.binary.f32(i32 35, float %2124, float %2125)  ; FMax(a,b)
  %2128 = fsub fast float %2126, %2127
  %2129 = call float @dx.op.unary.f32(i32 7, float %2128)  ; Saturate(value)
  %2130 = fmul fast float %2129, %2101
  br label %2131

; <label>:2131                                    ; preds = %2107, %2051
  %2132 = phi float [ %2130, %2107 ], [ 0.000000e+00, %2051 ]
  %2133 = extractvalue %dx.types.CBufRet.f32 %2079, 2
  %2134 = extractvalue %dx.types.CBufRet.f32 %2103, 1
  %2135 = fadd fast float %2134, %2133
  %2136 = fcmp fast ogt float %2135, 0.000000e+00
  %2137 = extractvalue %dx.types.CBufRet.f32 %2042, 0
  br i1 %2136, label %2138, label %2161

; <label>:2138                                    ; preds = %2131
  %2139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2140 = extractvalue %dx.types.CBufRet.f32 %2139, 0
  %2141 = extractvalue %dx.types.CBufRet.f32 %2139, 1
  %2142 = fsub fast float %2085, %2140
  %2143 = fsub fast float %2086, %2141
  %2144 = fcmp fast olt float %2142, 0.000000e+00
  %2145 = fcmp fast olt float %2143, 0.000000e+00
  %2146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2147 = extractvalue %dx.types.CBufRet.f32 %2146, 0
  %2148 = extractvalue %dx.types.CBufRet.f32 %2146, 1
  %2149 = extractvalue %dx.types.CBufRet.f32 %2146, 2
  %2150 = extractvalue %dx.types.CBufRet.f32 %2146, 3
  %2151 = select i1 %2144, float %2147, float %2149
  %2152 = select i1 %2145, float %2148, float %2150
  %2153 = fmul fast float %2151, %2142
  %2154 = fmul fast float %2152, %2143
  %2155 = call float @dx.op.unary.f32(i32 6, float %2153)  ; FAbs(value)
  %2156 = call float @dx.op.unary.f32(i32 6, float %2154)  ; FAbs(value)
  %2157 = call float @dx.op.binary.f32(i32 35, float %2155, float %2156)  ; FMax(a,b)
  %2158 = fsub fast float %2137, %2157
  %2159 = call float @dx.op.unary.f32(i32 7, float %2158)  ; Saturate(value)
  %2160 = fmul fast float %2159, %2101
  br label %2161

; <label>:2161                                    ; preds = %2138, %2131
  %2162 = phi float [ %2160, %2138 ], [ 0.000000e+00, %2131 ]
  %2163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2164 = extractvalue %dx.types.CBufRet.f32 %2163, 1
  %2165 = call float @dx.op.unary.f32(i32 7, float %2164)  ; Saturate(value)
  %2166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2167 = extractvalue %dx.types.CBufRet.f32 %2166, 0
  %2168 = extractvalue %dx.types.CBufRet.f32 %2166, 1
  %2169 = fsub fast float %2070, %2167
  %2170 = fsub fast float %2074, %2168
  %2171 = fcmp fast olt float %2169, 0.000000e+00
  %2172 = fcmp fast olt float %2170, 0.000000e+00
  %2173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2174 = extractvalue %dx.types.CBufRet.f32 %2173, 0
  %2175 = extractvalue %dx.types.CBufRet.f32 %2173, 1
  %2176 = extractvalue %dx.types.CBufRet.f32 %2173, 2
  %2177 = extractvalue %dx.types.CBufRet.f32 %2173, 3
  %2178 = select i1 %2171, float %2174, float %2176
  %2179 = select i1 %2172, float %2175, float %2177
  %2180 = fmul fast float %2178, %2169
  %2181 = fmul fast float %2179, %2170
  %2182 = call float @dx.op.unary.f32(i32 6, float %2180)  ; FAbs(value)
  %2183 = call float @dx.op.unary.f32(i32 6, float %2181)  ; FAbs(value)
  %2184 = call float @dx.op.binary.f32(i32 35, float %2182, float %2183)  ; FMax(a,b)
  %2185 = fsub fast float %2137, %2184
  %2186 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2187 = call float @dx.op.binary.f32(i32 36, float %2186, float %2165)  ; FMin(a,b)
  %2188 = fmul fast float %2187, %2101
  %2189 = fsub fast float %2162, %2188
  %2190 = fsub fast float %2132, %2162
  %2191 = fsub fast float %2190, %2188
  %2192 = call float @dx.op.binary.f32(i32 35, float %2162, float %2132)  ; FMax(a,b)
  %2193 = call float @dx.op.binary.f32(i32 35, float %2188, float %2192)  ; FMax(a,b)
  %2194 = fcmp fast olt float %2193, 1.000000e+00
  br i1 %2194, label %2195, label %2593, !dx.controlflow.hints !71

; <label>:2195                                    ; preds = %2161
  %2196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2197 = extractvalue %dx.types.CBufRet.f32 %2196, 0
  %2198 = fcmp fast une float %2197, 0.000000e+00
  br i1 %2198, label %2199, label %2593, !dx.controlflow.hints !72

; <label>:2199                                    ; preds = %2195
  %2200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2201 = extractvalue %dx.types.CBufRet.f32 %2200, 0
  %2202 = extractvalue %dx.types.CBufRet.f32 %2200, 1
  %2203 = extractvalue %dx.types.CBufRet.f32 %2200, 2
  %2204 = extractvalue %dx.types.CBufRet.f32 %2200, 3
  %2205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2206 = extractvalue %dx.types.CBufRet.f32 %2205, 0
  %2207 = extractvalue %dx.types.CBufRet.f32 %2205, 1
  %2208 = extractvalue %dx.types.CBufRet.f32 %2205, 2
  %2209 = extractvalue %dx.types.CBufRet.f32 %2205, 3
  %2210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2211 = extractvalue %dx.types.CBufRet.f32 %2210, 0
  %2212 = extractvalue %dx.types.CBufRet.f32 %2210, 1
  %2213 = extractvalue %dx.types.CBufRet.f32 %2210, 2
  %2214 = extractvalue %dx.types.CBufRet.f32 %2210, 3
  %2215 = fmul fast float %2201, %2047
  %2216 = call float @dx.op.tertiary.f32(i32 46, float %2048, float %2202, float %2215)  ; FMad(a,b,c)
  %2217 = call float @dx.op.tertiary.f32(i32 46, float %2049, float %2203, float %2216)  ; FMad(a,b,c)
  %2218 = fadd fast float %2217, %2204
  %2219 = fmul fast float %2206, %2047
  %2220 = call float @dx.op.tertiary.f32(i32 46, float %2048, float %2207, float %2219)  ; FMad(a,b,c)
  %2221 = call float @dx.op.tertiary.f32(i32 46, float %2049, float %2208, float %2220)  ; FMad(a,b,c)
  %2222 = fadd fast float %2221, %2209
  %2223 = fmul fast float %2211, %2047
  %2224 = call float @dx.op.tertiary.f32(i32 46, float %2048, float %2212, float %2223)  ; FMad(a,b,c)
  %2225 = call float @dx.op.tertiary.f32(i32 46, float %2049, float %2213, float %2224)  ; FMad(a,b,c)
  %2226 = fadd fast float %2225, %2214
  %2227 = fcmp fast oge float %2218, 1.000000e+00
  %2228 = fcmp fast oge float %2222, 1.000000e+00
  %2229 = or i1 %2227, %2228
  %2230 = fcmp fast olt float %2218, 0.000000e+00
  %2231 = fcmp fast olt float %2222, 0.000000e+00
  %2232 = or i1 %2230, %2231
  %2233 = or i1 %2229, %2232
  br i1 %2233, label %2593, label %2234, !dx.controlflow.hints !73

; <label>:2234                                    ; preds = %2199
  %2235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2236 = extractvalue %dx.types.CBufRet.f32 %2235, 0
  %2237 = extractvalue %dx.types.CBufRet.f32 %2235, 1
  %2238 = extractvalue %dx.types.CBufRet.f32 %2235, 2
  %2239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2240 = extractvalue %dx.types.CBufRet.i32 %2239, 2
  %2241 = uitofp i32 %2240 to float
  %2242 = extractvalue %dx.types.CBufRet.i32 %2239, 3
  %2243 = uitofp i32 %2242 to float
  %2244 = extractvalue %dx.types.CBufRet.f32 %2235, 3
  %2245 = fmul fast float %2244, 2.000000e+00
  %2246 = fsub fast float %2218, %2236
  %2247 = fsub fast float %2222, %2237
  %2248 = fmul fast float %2245, %2246
  %2249 = fmul fast float %2245, %2247
  %2250 = fdiv fast float 1.000000e+00, %2030
  %2251 = fmul fast float %2249, %2250
  %2252 = call float @dx.op.unary.f32(i32 6, float %2251)  ; FAbs(value)
  %2253 = fmul fast float %2238, %2049
  %2254 = fmul fast float %2253, %2245
  %2255 = call float @dx.op.unary.f32(i32 6, float %2254)  ; FAbs(value)
  %2256 = call float @dx.op.unary.f32(i32 6, float %2248)  ; FAbs(value)
  %2257 = call float @dx.op.binary.f32(i32 35, float %2255, float %2252)  ; FMax(a,b)
  %2258 = call float @dx.op.binary.f32(i32 35, float %2256, float %2257)  ; FMax(a,b)
  %2259 = fmul fast float %2258, 2.000000e+00
  %2260 = call float @dx.op.unary.f32(i32 23, float %2259)  ; Log(value)
  %2261 = call float @dx.op.binary.f32(i32 35, float %2260, float %2241)  ; FMax(a,b)
  %2262 = call float @dx.op.unary.f32(i32 22, float %2261)  ; Frc(value)
  %2263 = fadd fast float %2262, 0xBFEA666660000000
  %2264 = fmul fast float %2263, 8.000000e+00
  %2265 = call float @dx.op.unary.f32(i32 7, float %2264)  ; Saturate(value)
  %2266 = call float @dx.op.unary.f32(i32 27, float %2261)  ; Round_ni(value)
  %2267 = fadd fast float %2266, %2265
  %2268 = call float @dx.op.binary.f32(i32 36, float %2267, float %2243)  ; FMin(a,b)
  %2269 = call float @dx.op.unary.f32(i32 27, float %2268)  ; Round_ni(value)
  %2270 = fsub fast float -0.000000e+00, %2269
  %2271 = call float @dx.op.unary.f32(i32 21, float %2270)  ; Exp(value)
  %2272 = fmul fast float %2271, %2245
  %2273 = fmul fast float %2272, %2218
  %2274 = fmul fast float %2272, %2222
  %2275 = fmul fast float %2273, 2.500000e-01
  %2276 = fmul fast float %2274, 2.500000e-01
  %2277 = fadd fast float %2275, 5.000000e-01
  %2278 = fadd fast float %2276, 5.000000e-01
  %2279 = fsub fast float %2243, %2241
  %2280 = fptoui float %2279 to i32
  %2281 = add i32 %2280, 320
  %2282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %2281)  ; CBufferLoadLegacy(handle,regIndex)
  %2283 = extractvalue %dx.types.CBufRet.f32 %2282, 0
  %2284 = extractvalue %dx.types.CBufRet.f32 %2282, 1
  %2285 = fcmp fast une float %2268, %2243
  %2286 = fsub fast float %2218, %2283
  %2287 = fsub fast float %2222, %2284
  %2288 = call float @dx.op.unary.f32(i32 6, float %2286)  ; FAbs(value)
  %2289 = call float @dx.op.unary.f32(i32 6, float %2287)  ; FAbs(value)
  %2290 = fmul fast float %2288, %2272
  %2291 = fmul fast float %2289, %2272
  %2292 = fcmp fast olt float %2290, 1.000000e+00
  %2293 = fcmp fast olt float %2291, 1.000000e+00
  %2294 = and i1 %2292, %2293
  %2295 = or i1 %2285, %2294
  br i1 %2295, label %2296, label %2593, !dx.controlflow.hints !74

; <label>:2296                                    ; preds = %2234
  %2297 = fmul fast float %2274, 5.000000e-01
  %2298 = fmul fast float %2273, 5.000000e-01
  %2299 = fadd fast float %2297, 5.000000e-01
  %2300 = fadd fast float %2298, 5.000000e-01
  %2301 = sitofp i32 %2240 to float
  %2302 = fsub fast float %2268, %2301
  %2303 = call float @dx.op.unary.f32(i32 27, float %2302)  ; Round_ni(value)
  %2304 = call float @dx.op.unary.f32(i32 22, float %2268)  ; Frc(value)
  %2305 = call float @dx.op.unary.f32(i32 22, float %2300)  ; Frc(value)
  %2306 = call float @dx.op.unary.f32(i32 22, float %2299)  ; Frc(value)
  %2307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %30, float %2305, float %2306, float %2303, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2308 = extractvalue %dx.types.ResRet.f32 %2307, 0
  %2309 = extractvalue %dx.types.ResRet.f32 %2307, 1
  %2310 = extractvalue %dx.types.ResRet.f32 %2307, 2
  %2311 = extractvalue %dx.types.ResRet.f32 %2307, 3
  %2312 = fcmp fast ogt float %2304, 0.000000e+00
  br i1 %2312, label %2313, label %2334, !dx.controlflow.hints !75

; <label>:2313                                    ; preds = %2296
  %2314 = fadd fast float %2303, 1.000000e+00
  %2315 = call float @dx.op.unary.f32(i32 22, float %2277)  ; Frc(value)
  %2316 = call float @dx.op.unary.f32(i32 22, float %2278)  ; Frc(value)
  %2317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %30, float %2315, float %2316, float %2314, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2318 = extractvalue %dx.types.ResRet.f32 %2317, 0
  %2319 = extractvalue %dx.types.ResRet.f32 %2317, 1
  %2320 = extractvalue %dx.types.ResRet.f32 %2317, 2
  %2321 = extractvalue %dx.types.ResRet.f32 %2317, 3
  %2322 = fsub fast float %2318, %2308
  %2323 = fsub fast float %2319, %2309
  %2324 = fsub fast float %2320, %2310
  %2325 = fsub fast float %2321, %2311
  %2326 = fmul fast float %2322, %2304
  %2327 = fmul fast float %2323, %2304
  %2328 = fmul fast float %2324, %2304
  %2329 = fmul fast float %2325, %2304
  %2330 = fadd fast float %2326, %2308
  %2331 = fadd fast float %2327, %2309
  %2332 = fadd fast float %2328, %2310
  %2333 = fadd fast float %2329, %2311
  br label %2334

; <label>:2334                                    ; preds = %2313, %2296
  %2335 = phi float [ %2330, %2313 ], [ %2308, %2296 ]
  %2336 = phi float [ %2331, %2313 ], [ %2309, %2296 ]
  %2337 = phi float [ %2332, %2313 ], [ %2310, %2296 ]
  %2338 = phi float [ %2333, %2313 ], [ %2311, %2296 ]
  %2339 = fadd fast float %2335, -5.000000e-01
  %2340 = fadd fast float %2337, -5.000000e-01
  %2341 = fmul fast float %2339, 0xBFD5555560000000
  %2342 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2340, float %2341)  ; FMad(a,b,c)
  %2343 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2336, float 0.000000e+00)  ; FMad(a,b,c)
  %2344 = fadd fast float %2343, %2338
  %2345 = fmul fast float %2339, -7.500000e-01
  %2346 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2340, float %2345)  ; FMad(a,b,c)
  %2347 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2336, float 0.000000e+00)  ; FMad(a,b,c)
  %2348 = fadd fast float %2347, %2338
  %2349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2350 = extractvalue %dx.types.CBufRet.f32 %2349, 0
  %2351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2352 = extractvalue %dx.types.CBufRet.f32 %2351, 0
  %2353 = extractvalue %dx.types.CBufRet.f32 %2351, 1
  %2354 = extractvalue %dx.types.CBufRet.f32 %2351, 2
  %2355 = extractvalue %dx.types.CBufRet.f32 %2351, 3
  %2356 = fsub fast float %2352, %2342
  %2357 = fsub fast float %2353, %2344
  %2358 = fsub fast float %2354, %2346
  %2359 = fsub fast float %2355, %2348
  %2360 = fmul fast float %2356, %2350
  %2361 = fmul fast float %2357, %2350
  %2362 = fmul fast float %2358, %2350
  %2363 = fmul fast float %2359, %2350
  %2364 = fadd fast float %2360, %2342
  %2365 = fadd fast float %2361, %2344
  %2366 = fadd fast float %2362, %2346
  %2367 = fadd fast float %2363, %2348
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = and i32 %2369, 536870911
  %2371 = uitofp i32 %2370 to float
  %2372 = fmul fast float %2371, %2218
  %2373 = fmul fast float %2371, %2222
  %2374 = fptoui float %2372 to i32
  %2375 = fptoui float %2373 to i32
  %2376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2377 = extractvalue %dx.types.ResRet.i32 %2376, 0
  %2378 = and i32 %2377, 31
  %2379 = lshr i32 %2374, %2378
  %2380 = lshr i32 %2375, %2378
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = and i32 %2382, 31
  %2384 = shl i32 1, %2383
  %2385 = call i32 @dx.op.binary.i32(i32 40, i32 %2384, i32 4)  ; UMin(a,b)
  %2386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2387 = extractvalue %dx.types.ResRet.i32 %2386, 0
  %2388 = extractvalue %dx.types.ResRet.i32 %2386, 1
  %2389 = icmp eq i32 %2385, 0
  br i1 %2389, label %2431, label %2390

; <label>:2390                                    ; preds = %2334
  br label %2391

; <label>:2391                                    ; preds = %2419, %2390
  %2392 = phi i32 [ %2422, %2419 ], [ 0, %2390 ]
  %2393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2394 = extractvalue %dx.types.ResRet.i32 %2393, 0
  %2395 = lshr i32 %2394, 16
  %2396 = and i32 %2395, 31
  %2397 = shl i32 %2380, %2396
  %2398 = add i32 %2397, %2379
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = and i32 %2400, 31
  %2402 = shl i32 %2398, %2401
  %2403 = add i32 %2402, %2392
  %2404 = shl i32 %2403, 2
  %2405 = add i32 %2404, 32
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = icmp slt i32 %2407, 0
  %2409 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2392
  %2410 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 %2392
  %2411 = bitcast float* %2409 to i32*
  %2412 = bitcast float* %2410 to i32*
  br i1 %2408, label %2413, label %2419

; <label>:2413                                    ; preds = %2391
  %2414 = and i32 %2407, 1073741823
  %2415 = add nuw nsw i32 %2414, 20
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = extractvalue %dx.types.ResRet.i32 %2416, 1
  br label %2419

; <label>:2419                                    ; preds = %2413, %2391
  %2420 = phi i32 [ %2417, %2413 ], [ %2387, %2391 ]
  %2421 = phi i32 [ %2418, %2413 ], [ %2388, %2391 ]
  store i32 %2420, i32* %2411, align 4
  store i32 %2421, i32* %2412, align 4
  %2422 = add nuw i32 %2392, 1
  %2423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2424 = extractvalue %dx.types.CBufRet.i32 %2423, 2
  %2425 = icmp eq i32 %2424, 0
  %2426 = icmp ugt i32 %2407, -1073741825
  %2427 = and i1 %2426, %2425
  %2428 = icmp ult i32 %2422, %2385
  %2429 = and i1 %2427, %2428
  br i1 %2429, label %2391, label %2430

; <label>:2430                                    ; preds = %2419
  br label %2431

; <label>:2431                                    ; preds = %2430, %2334
  %2432 = phi i32 [ 0, %2334 ], [ %2422, %2430 ]
  %2433 = extractvalue %dx.types.CBufRet.f32 %2196, 2
  %2434 = fptoui float %2433 to i32
  %2435 = icmp eq i32 %2434, 0
  br i1 %2435, label %2487, label %2436

; <label>:2436                                    ; preds = %2431
  br label %2437

; <label>:2437                                    ; preds = %2482, %2436
  %2438 = phi i32 [ %2483, %2482 ], [ %2432, %2436 ]
  %2439 = phi i32 [ %2484, %2482 ], [ 0, %2436 ]
  %2440 = lshr i32 %2439, 2
  %2441 = and i32 %2439, 3
  %2442 = add nuw nsw i32 %2440, 83
  %2443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 %2442)  ; CBufferLoadLegacy(handle,regIndex)
  %2444 = extractvalue %dx.types.CBufRet.i32 %2443, 0
  %2445 = extractvalue %dx.types.CBufRet.i32 %2443, 1
  %2446 = extractvalue %dx.types.CBufRet.i32 %2443, 2
  %2447 = extractvalue %dx.types.CBufRet.i32 %2443, 3
  %2448 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 0
  store i32 %2444, i32* %2448, align 4
  %2449 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 1
  store i32 %2445, i32* %2449, align 4
  %2450 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 2
  store i32 %2446, i32* %2450, align 4
  %2451 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 3
  store i32 %2447, i32* %2451, align 4
  %2452 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 %2441
  %2453 = load i32, i32* %2452, align 4, !tbaa !76, !noalias !80
  %2454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.i32 %2454, 0
  %2456 = lshr i32 %2455, 16
  %2457 = and i32 %2456, 31
  %2458 = shl i32 %2380, %2457
  %2459 = add i32 %2458, %2379
  %2460 = shl i32 %2459, 2
  %2461 = add i32 %2460, %2453
  %2462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2461, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.i32 %2462, 0
  %2464 = icmp eq i32 %2463, 0
  br i1 %2464, label %2482, label %2465

; <label>:2465                                    ; preds = %2437
  %2466 = icmp slt i32 %2463, 0
  %2467 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2438
  %2468 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 %2438
  %2469 = bitcast float* %2467 to i32*
  %2470 = bitcast float* %2468 to i32*
  br i1 %2466, label %2471, label %2478

; <label>:2471                                    ; preds = %2465
  %2472 = and i32 %2463, 1073741823
  %2473 = add i32 %2453, 20
  %2474 = add i32 %2473, %2472
  %2475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2474, i32 undef)  ; BufferLoad(srv,index,wot)
  %2476 = extractvalue %dx.types.ResRet.i32 %2475, 0
  %2477 = extractvalue %dx.types.ResRet.i32 %2475, 1
  br label %2478

; <label>:2478                                    ; preds = %2471, %2465
  %2479 = phi i32 [ %2476, %2471 ], [ %2387, %2465 ]
  %2480 = phi i32 [ %2477, %2471 ], [ %2388, %2465 ]
  store i32 %2479, i32* %2469, align 4
  store i32 %2480, i32* %2470, align 4
  %2481 = add i32 %2438, 1
  br label %2482

; <label>:2482                                    ; preds = %2478, %2437
  %2483 = phi i32 [ %2438, %2437 ], [ %2481, %2478 ]
  %2484 = add nuw i32 %2439, 1
  %2485 = icmp eq i32 %2484, %2434
  br i1 %2485, label %2486, label %2437

; <label>:2486                                    ; preds = %2482
  br label %2487

; <label>:2487                                    ; preds = %2486, %2431
  %2488 = phi i32 [ %2432, %2431 ], [ %2483, %2486 ]
  %2489 = icmp eq i32 %2488, 1
  %2490 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 0
  %2491 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 0
  br i1 %2489, label %2492, label %2495

; <label>:2492                                    ; preds = %2487
  %2493 = load float, float* %2490, align 4
  %2494 = load float, float* %2491, align 4
  br label %2522

; <label>:2495                                    ; preds = %2487
  %2496 = load float, float* %2490, align 4
  %2497 = load float, float* %2491, align 4
  %2498 = fdiv fast float 1.000000e+00, %2497
  %2499 = fsub fast float %2496, %2498
  %2500 = icmp ugt i32 %2488, 1
  br i1 %2500, label %2501, label %2517

; <label>:2501                                    ; preds = %2495
  br label %2502

; <label>:2502                                    ; preds = %2502, %2501
  %2503 = phi float [ %2512, %2502 ], [ %2499, %2501 ]
  %2504 = phi float [ %2513, %2502 ], [ %2496, %2501 ]
  %2505 = phi i32 [ %2514, %2502 ], [ 1, %2501 ]
  %2506 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2505
  %2507 = load float, float* %2506, align 4
  %2508 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 %2505
  %2509 = load float, float* %2508, align 4
  %2510 = fdiv fast float 1.000000e+00, %2509
  %2511 = fsub fast float %2507, %2510
  %2512 = call float @dx.op.binary.f32(i32 36, float %2503, float %2511)  ; FMin(a,b)
  %2513 = call float @dx.op.binary.f32(i32 35, float %2504, float %2507)  ; FMax(a,b)
  %2514 = add nuw i32 %2505, 1
  %2515 = icmp eq i32 %2514, %2488
  br i1 %2515, label %2516, label %2502

; <label>:2516                                    ; preds = %2502
  br label %2517

; <label>:2517                                    ; preds = %2516, %2495
  %2518 = phi float [ %2499, %2495 ], [ %2512, %2516 ]
  %2519 = phi float [ %2496, %2495 ], [ %2513, %2516 ]
  %2520 = fsub fast float %2519, %2518
  %2521 = fdiv fast float 1.000000e+00, %2520
  br label %2522

; <label>:2522                                    ; preds = %2517, %2492
  %2523 = phi float [ %2493, %2492 ], [ %2519, %2517 ]
  %2524 = phi float [ %2494, %2492 ], [ %2521, %2517 ]
  %2525 = fadd fast float %2226, %2523
  %2526 = fmul fast float %2525, %2524
  %2527 = call float @dx.op.unary.f32(i32 7, float %2526)  ; Saturate(value)
  %2528 = fmul fast float %2527, 2.000000e+00
  %2529 = fsub fast float 1.000000e+00, %2528
  %2530 = fmul fast float %2364, %2364
  %2531 = fsub fast float %2365, %2530
  %2532 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2531)  ; FMax(a,b)
  %2533 = fdiv fast float 1.000000e+00, %2532
  %2534 = fmul fast float %2365, %2364
  %2535 = fsub fast float %2366, %2534
  %2536 = fsub fast float %2529, %2364
  %2537 = fmul fast float %2529, %2529
  %2538 = fsub fast float %2537, %2365
  %2539 = fmul fast float %2533, %2535
  %2540 = fmul fast float %2539, %2536
  %2541 = fsub fast float %2538, %2540
  %2542 = fmul fast float %2365, %2365
  %2543 = fsub fast float %2367, %2542
  %2544 = fmul fast float %2535, %2535
  %2545 = fmul fast float %2544, %2533
  %2546 = fsub fast float %2543, %2545
  %2547 = fdiv fast float %2541, %2546
  %2548 = fmul fast float %2547, %2535
  %2549 = fsub fast float %2536, %2548
  %2550 = fmul fast float %2549, %2533
  %2551 = fmul fast float %2550, %2364
  %2552 = fsub fast float 1.000000e+00, %2551
  %2553 = fmul fast float %2547, %2365
  %2554 = fsub fast float %2552, %2553
  %2555 = fmul fast float %2550, %2550
  %2556 = fmul fast float %2547, 4.000000e+00
  %2557 = fmul fast float %2556, %2554
  %2558 = fsub fast float %2555, %2557
  %2559 = call float @dx.op.unary.f32(i32 24, float %2558)  ; Sqrt(value)
  %2560 = fcmp fast oge float %2550, 0.000000e+00
  %2561 = fsub fast float -0.000000e+00, %2559
  %2562 = select i1 %2560, float %2561, float %2559
  %2563 = fsub fast float %2562, %2550
  %2564 = fdiv fast float %2563, %2547
  %2565 = fdiv fast float %2554, %2563
  %2566 = fmul fast float %2564, 5.000000e-01
  %2567 = fmul fast float %2565, 2.000000e+00
  %2568 = select i1 %2560, float %2566, float %2567
  %2569 = select i1 %2560, float %2567, float %2566
  %2570 = call float @dx.op.binary.f32(i32 35, float %2568, float %2569)  ; FMax(a,b)
  %2571 = call float @dx.op.binary.f32(i32 36, float %2568, float %2569)  ; FMin(a,b)
  %2572 = fcmp fast ogt float %2529, %2570
  %2573 = fsub fast float %2529, %2571
  %2574 = fsub fast float %2529, %2570
  %2575 = fsub fast float %2570, %2571
  %2576 = select i1 %2572, float %2574, float %2575
  %2577 = fmul float %2573, %2576
  %2578 = select i1 %2572, float %2571, float %2529
  %2579 = fcmp fast ogt float %2529, %2571
  %2580 = fmul fast float %2578, %2570
  %2581 = fadd fast float %2578, %2570
  %2582 = fmul fast float %2581, %2364
  %2583 = fadd fast float %2580, %2365
  %2584 = fsub fast float %2583, %2582
  %2585 = fdiv fast float %2584, %2577
  %2586 = select i1 %2579, float %2585, float 0.000000e+00
  %2587 = fsub fast float 1.000000e+00, %2586
  %2588 = select i1 %2572, float %2587, float %2586
  %2589 = call float @dx.op.unary.f32(i32 7, float %2588)  ; Saturate(value)
  %2590 = extractvalue %dx.types.CBufRet.f32 %2349, 3
  %2591 = fmul fast float %2590, %2589
  %2592 = fsub fast float 1.000000e+00, %2591
  br label %2593

; <label>:2593                                    ; preds = %2522, %2234, %2199, %2195, %2161
  %2594 = phi float [ 1.000000e+00, %2161 ], [ %2592, %2522 ], [ 1.000000e+00, %2199 ], [ 1.000000e+00, %2234 ], [ 1.000000e+00, %2195 ]
  %2595 = fcmp fast ogt float %2191, 0.000000e+00
  br i1 %2595, label %2596, label %2602, !dx.controlflow.hints !89

; <label>:2596                                    ; preds = %2593
  %2597 = fadd fast float %2104, %2078
  %2598 = call float @dx.op.binary.f32(i32 35, float %2597, float 0.000000e+00)  ; FMax(a,b)
  %2599 = fadd fast float %2598, 0x3F10000000000000
  %2600 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %33, float %2093, float %2094, float undef, float undef, i32 0, i32 0, i32 undef, float %2599)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2601 = extractvalue %dx.types.ResRet.f32 %2600, 0
  br label %2602

; <label>:2602                                    ; preds = %2596, %2593
  %2603 = phi float [ %2601, %2596 ], [ 1.000000e+00, %2593 ]
  %2604 = fcmp fast ogt float %2189, 0.000000e+00
  br i1 %2604, label %2605, label %2611, !dx.controlflow.hints !90

; <label>:2605                                    ; preds = %2602
  %2606 = fadd fast float %2134, %2078
  %2607 = call float @dx.op.binary.f32(i32 35, float %2606, float 0.000000e+00)  ; FMax(a,b)
  %2608 = fadd fast float %2607, 0x3F10000000000000
  %2609 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %33, float %2085, float %2086, float undef, float undef, i32 0, i32 0, i32 undef, float %2608)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2610 = extractvalue %dx.types.ResRet.f32 %2609, 0
  br label %2611

; <label>:2611                                    ; preds = %2605, %2602
  %2612 = phi float [ %2610, %2605 ], [ 1.000000e+00, %2602 ]
  %2613 = fcmp fast ogt float %2188, 0.000000e+00
  br i1 %2613, label %2614, label %2621, !dx.controlflow.hints !91

; <label>:2614                                    ; preds = %2611
  %2615 = extractvalue %dx.types.CBufRet.f32 %2103, 0
  %2616 = fadd fast float %2615, %2078
  %2617 = call float @dx.op.binary.f32(i32 35, float %2616, float 0.000000e+00)  ; FMax(a,b)
  %2618 = fadd fast float %2617, 0x3F10000000000000
  %2619 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %33, float %2070, float %2074, float undef, float undef, i32 0, i32 0, i32 undef, float %2618)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2620 = extractvalue %dx.types.ResRet.f32 %2619, 0
  br label %2621

; <label>:2621                                    ; preds = %2614, %2611
  %2622 = phi float [ %2620, %2614 ], [ 1.000000e+00, %2611 ]
  %2623 = fsub fast float %2603, %2594
  %2624 = fmul fast float %2623, %2132
  %2625 = fadd fast float %2624, %2594
  %2626 = fsub fast float %2612, %2625
  %2627 = fmul fast float %2626, %2162
  %2628 = fadd fast float %2627, %2625
  %2629 = fsub fast float %2622, %2628
  %2630 = fmul fast float %2629, %2188
  %2631 = fadd fast float %2630, %2628
  %2632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2633 = extractvalue %dx.types.CBufRet.f32 %2632, 2
  %2634 = fcmp fast ogt float %2633, 0.000000e+00
  br i1 %2634, label %2635, label %2675, !dx.controlflow.hints !92

; <label>:2635                                    ; preds = %2621
  %2636 = fcmp fast ugt float %2633, 0.000000e+00
  br i1 %2636, label %2637, label %2672

; <label>:2637                                    ; preds = %2635
  %2638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2639 = extractvalue %dx.types.CBufRet.f32 %2638, 0
  %2640 = extractvalue %dx.types.CBufRet.f32 %2638, 1
  %2641 = extractvalue %dx.types.CBufRet.f32 %2638, 2
  %2642 = extractvalue %dx.types.CBufRet.f32 %2638, 3
  %2643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2644 = extractvalue %dx.types.CBufRet.f32 %2643, 0
  %2645 = extractvalue %dx.types.CBufRet.f32 %2643, 1
  %2646 = extractvalue %dx.types.CBufRet.f32 %2643, 2
  %2647 = extractvalue %dx.types.CBufRet.f32 %2643, 3
  %2648 = extractvalue %dx.types.CBufRet.f32 %2632, 0
  %2649 = extractvalue %dx.types.CBufRet.f32 %2632, 1
  %2650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2651 = extractvalue %dx.types.CBufRet.f32 %2650, 0
  %2652 = extractvalue %dx.types.CBufRet.f32 %2650, 1
  %2653 = extractvalue %dx.types.CBufRet.f32 %2650, 2
  %2654 = fadd fast float %2651, %2047
  %2655 = fadd fast float %2652, %2048
  %2656 = fadd fast float %2653, %2049
  %2657 = fmul fast float %2654, %2639
  %2658 = call float @dx.op.tertiary.f32(i32 46, float %2640, float %2655, float %2657)  ; FMad(a,b,c)
  %2659 = call float @dx.op.tertiary.f32(i32 46, float %2641, float %2656, float %2658)  ; FMad(a,b,c)
  %2660 = fadd fast float %2659, %2642
  %2661 = fmul fast float %2654, %2644
  %2662 = call float @dx.op.tertiary.f32(i32 46, float %2645, float %2655, float %2661)  ; FMad(a,b,c)
  %2663 = call float @dx.op.tertiary.f32(i32 46, float %2646, float %2656, float %2662)  ; FMad(a,b,c)
  %2664 = fadd fast float %2663, %2647
  %2665 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %28, float %2660, float %2664, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2666 = extractvalue %dx.types.ResRet.f32 %2665, 0
  %2667 = fmul fast float %2666, %2649
  %2668 = fadd fast float %2667, %2648
  %2669 = call float @dx.op.unary.f32(i32 7, float %2668)  ; Saturate(value)
  %2670 = fmul fast float %2669, %2633
  %2671 = fsub fast float 1.000000e+00, %2670
  br label %2672

; <label>:2672                                    ; preds = %2637, %2635
  %2673 = phi float [ %2671, %2637 ], [ 1.000000e+00, %2635 ]
  %2674 = fmul fast float %2673, %2631
  br label %2675

; <label>:2675                                    ; preds = %2672, %2621, %2027
  %2676 = phi float [ 1.000000e+00, %2027 ], [ %2674, %2672 ], [ %2631, %2621 ]
  %2677 = call float @dx.op.binary.f32(i32 36, float %2676, float %2676)  ; FMin(a,b)
  %2678 = call float @dx.op.binary.f32(i32 36, float %2676, float %2677)  ; FMin(a,b)
  %2679 = fcmp fast ogt float %2678, 0.000000e+00
  br i1 %2679, label %2680, label %2841, !dx.controlflow.hints !93

; <label>:2680                                    ; preds = %2675
  %2681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.f32 %2681, 0
  %2683 = extractvalue %dx.types.CBufRet.f32 %2681, 1
  %2684 = extractvalue %dx.types.CBufRet.f32 %2681, 2
  %2685 = extractvalue %dx.types.CBufRet.f32 %2681, 3
  %2686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2687 = extractvalue %dx.types.CBufRet.f32 %2686, 0
  %2688 = extractvalue %dx.types.CBufRet.f32 %2686, 1
  %2689 = extractvalue %dx.types.CBufRet.f32 %2686, 2
  %2690 = extractvalue %dx.types.CBufRet.f32 %2686, 3
  %2691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2692 = extractvalue %dx.types.CBufRet.f32 %2691, 0
  %2693 = extractvalue %dx.types.CBufRet.f32 %2691, 1
  %2694 = extractvalue %dx.types.CBufRet.f32 %2691, 2
  %2695 = extractvalue %dx.types.CBufRet.f32 %2691, 3
  %2696 = fmul fast float %2682, %2047
  %2697 = call float @dx.op.tertiary.f32(i32 46, float %2048, float %2683, float %2696)  ; FMad(a,b,c)
  %2698 = call float @dx.op.tertiary.f32(i32 46, float %2049, float %2684, float %2697)  ; FMad(a,b,c)
  %2699 = fadd fast float %2698, %2685
  %2700 = fmul fast float %2687, %2047
  %2701 = call float @dx.op.tertiary.f32(i32 46, float %2048, float %2688, float %2700)  ; FMad(a,b,c)
  %2702 = call float @dx.op.tertiary.f32(i32 46, float %2049, float %2689, float %2701)  ; FMad(a,b,c)
  %2703 = fadd fast float %2702, %2690
  %2704 = fmul fast float %2692, %2047
  %2705 = call float @dx.op.tertiary.f32(i32 46, float %2048, float %2693, float %2704)  ; FMad(a,b,c)
  %2706 = call float @dx.op.tertiary.f32(i32 46, float %2049, float %2694, float %2705)  ; FMad(a,b,c)
  %2707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2708 = extractvalue %dx.types.CBufRet.f32 %2707, 0
  %2709 = extractvalue %dx.types.CBufRet.f32 %2707, 1
  %2710 = extractvalue %dx.types.CBufRet.f32 %2707, 3
  %2711 = fmul fast float %2710, %2699
  %2712 = fmul fast float %2710, %2703
  %2713 = fadd fast float %2711, %2708
  %2714 = fadd fast float %2712, %2709
  %2715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2716 = extractvalue %dx.types.CBufRet.f32 %2715, 0
  %2717 = extractvalue %dx.types.CBufRet.f32 %2715, 1
  %2718 = fsub fast float %2713, %2716
  %2719 = fsub fast float %2714, %2717
  %2720 = fcmp fast olt float %2718, 0.000000e+00
  %2721 = fcmp fast olt float %2719, 0.000000e+00
  %2722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2723 = extractvalue %dx.types.CBufRet.f32 %2722, 0
  %2724 = extractvalue %dx.types.CBufRet.f32 %2722, 1
  %2725 = extractvalue %dx.types.CBufRet.f32 %2722, 2
  %2726 = extractvalue %dx.types.CBufRet.f32 %2722, 3
  %2727 = select i1 %2720, float %2723, float %2725
  %2728 = select i1 %2721, float %2724, float %2726
  %2729 = fmul fast float %2727, %2718
  %2730 = fmul fast float %2728, %2719
  %2731 = call float @dx.op.unary.f32(i32 6, float %2729)  ; FAbs(value)
  %2732 = call float @dx.op.unary.f32(i32 6, float %2730)  ; FAbs(value)
  %2733 = extractvalue %dx.types.CBufRet.f32 %2042, 0
  %2734 = call float @dx.op.binary.f32(i32 35, float %2731, float %2732)  ; FMax(a,b)
  %2735 = fsub fast float %2733, %2734
  %2736 = call float @dx.op.unary.f32(i32 7, float %2735)  ; Saturate(value)
  %2737 = fcmp fast ogt float %2736, 0.000000e+00
  br i1 %2737, label %2738, label %2779, !dx.controlflow.hints !94

; <label>:2738                                    ; preds = %2680
  %2739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %31, float %2713, float %2714, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2740 = extractvalue %dx.types.ResRet.f32 %2739, 1
  %2741 = fcmp fast ogt float %2740, 0.000000e+00
  br i1 %2741, label %2742, label %2774

; <label>:2742                                    ; preds = %2738
  %2743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %31, float %2713, float %2714, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2744 = extractvalue %dx.types.ResRet.f32 %2743, 0
  %2745 = extractvalue %dx.types.ResRet.f32 %2743, 1
  %2746 = extractvalue %dx.types.ResRet.f32 %2743, 2
  %2747 = extractvalue %dx.types.ResRet.f32 %2743, 3
  %2748 = fsub fast float 1.000000e+00, %2695
  %2749 = fsub fast float %2748, %2706
  %2750 = fmul fast float %2749, 0x400921FB60000000
  %2751 = fadd fast float %2750, 0x3FF921FB60000000
  %2752 = call float @dx.op.unary.f32(i32 13, float %2751)  ; Sin(value)
  %2753 = fadd fast float %2752, -1.000000e+00
  %2754 = fmul fast float %2753, 0x3FD45F3060000000
  %2755 = fmul fast float %2749, 0x401921FB60000000
  %2756 = fadd fast float %2755, 0x400921FB60000000
  %2757 = call float @dx.op.unary.f32(i32 13, float %2756)  ; Sin(value)
  %2758 = fadd fast float %2757, 0x3E7777A5C0000000
  %2759 = fmul fast float %2758, 0x3FC45F3060000000
  %2760 = fmul fast float %2749, 0x4022D97C80000000
  %2761 = fadd fast float %2760, 0x4012D97C80000000
  %2762 = call float @dx.op.unary.f32(i32 13, float %2761)  ; Sin(value)
  %2763 = fadd fast float %2762, 1.000000e+00
  %2764 = fmul fast float %2763, 0x3FBB2995E0000000
  %2765 = fmul fast float %2749, 0x402921FB60000000
  %2766 = fadd fast float %2765, 0x401921FB60000000
  %2767 = call float @dx.op.unary.f32(i32 13, float %2766)  ; Sin(value)
  %2768 = fadd fast float %2767, 0xBE8777A5C0000000
  %2769 = fmul fast float %2768, 0x3FB45F3060000000
  %2770 = call float @dx.op.dot4.f32(i32 56, float %2744, float %2745, float %2746, float %2747, float %2754, float %2759, float %2764, float %2769)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2771 = fmul fast float %2770, 0xBFF7154760000000
  %2772 = call float @dx.op.unary.f32(i32 21, float %2771)  ; Exp(value)
  %2773 = call float @dx.op.unary.f32(i32 7, float %2772)  ; Saturate(value)
  br label %2774

; <label>:2774                                    ; preds = %2742, %2738
  %2775 = phi float [ %2773, %2742 ], [ 1.000000e+00, %2738 ]
  %2776 = fadd fast float %2775, -1.000000e+00
  %2777 = fmul fast float %2776, %2736
  %2778 = fadd fast float %2777, 1.000000e+00
  br label %2779

; <label>:2779                                    ; preds = %2774, %2680
  %2780 = phi float [ %2778, %2774 ], [ 1.000000e+00, %2680 ]
  %2781 = fmul fast float %2780, %2676
  %2782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2783 = extractvalue %dx.types.CBufRet.f32 %2782, 0
  %2784 = extractvalue %dx.types.CBufRet.f32 %2782, 1
  %2785 = extractvalue %dx.types.CBufRet.f32 %2782, 2
  %2786 = fadd fast float %2783, %123
  %2787 = fadd fast float %2784, %124
  %2788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2789 = extractvalue %dx.types.CBufRet.f32 %2788, 1
  %2790 = fsub fast float -0.000000e+00, %2786
  %2791 = fsub fast float -0.000000e+00, %2787
  %2792 = fsub fast float -0.000000e+00, %125
  %2793 = fsub fast float %2792, %2785
  %2794 = fadd fast float %2793, %2789
  %2795 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2790, float %2791, float %2794)  ; Dot3(ax,ay,az,bx,by,bz)
  %2796 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2028, float %2029, float %2030)  ; Dot3(ax,ay,az,bx,by,bz)
  %2797 = fdiv fast float 1.000000e+00, %2796
  %2798 = fmul fast float %2797, %2795
  %2799 = fmul fast float %2028, %2798
  %2800 = fmul fast float %2029, %2798
  %2801 = fadd fast float %2799, %2786
  %2802 = fadd fast float %2800, %2787
  %2803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2804 = extractvalue %dx.types.CBufRet.f32 %2803, 0
  %2805 = extractvalue %dx.types.CBufRet.f32 %2803, 1
  %2806 = fsub fast float %2801, %2804
  %2807 = fsub fast float %2802, %2805
  %2808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2809 = extractvalue %dx.types.CBufRet.f32 %2808, 2
  %2810 = extractvalue %dx.types.CBufRet.f32 %2808, 3
  %2811 = fmul fast float %2806, %2809
  %2812 = fmul fast float %2807, %2810
  %2813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2814 = extractvalue %dx.types.CBufRet.i32 %2813, 3
  %2815 = icmp eq i32 %2814, 0
  br i1 %2815, label %2821, label %2816

; <label>:2816                                    ; preds = %2779
  %2817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %2811, float %2812, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2818 = extractvalue %dx.types.ResRet.f32 %2817, 0
  %2819 = extractvalue %dx.types.ResRet.f32 %2817, 1
  %2820 = extractvalue %dx.types.ResRet.f32 %2817, 2
  br label %2826

; <label>:2821                                    ; preds = %2779
  %2822 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %31, float %2811, float %2812, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2823 = extractvalue %dx.types.ResRet.f32 %2822, 0
  %2824 = extractvalue %dx.types.ResRet.f32 %2822, 1
  %2825 = extractvalue %dx.types.ResRet.f32 %2822, 2
  br label %2826

; <label>:2826                                    ; preds = %2821, %2816
  %2827 = phi float [ %2818, %2816 ], [ %2823, %2821 ]
  %2828 = phi float [ %2819, %2816 ], [ %2824, %2821 ]
  %2829 = phi float [ %2820, %2816 ], [ %2825, %2821 ]
  %2830 = extractvalue %dx.types.CBufRet.f32 %2788, 2
  %2831 = fmul fast float %2830, %2827
  %2832 = extractvalue %dx.types.CBufRet.f32 %2788, 0
  %2833 = fsub fast float %2798, %2832
  %2834 = fsub fast float %2833, %2831
  %2835 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2834)  ; FMax(a,b)
  %2836 = fmul fast float %2835, %2828
  %2837 = call float @dx.op.binary.f32(i32 36, float %2829, float %2836)  ; FMin(a,b)
  %2838 = fmul fast float %2837, 0xBFF7154760000000
  %2839 = call float @dx.op.unary.f32(i32 21, float %2838)  ; Exp(value)
  %2840 = fmul fast float %2781, %2839
  br label %2841

; <label>:2841                                    ; preds = %2826, %2675
  %2842 = phi float [ %2840, %2826 ], [ %2676, %2675 ]
  %2843 = call float @dx.op.binary.f32(i32 36, float %2842, float %2842)  ; FMin(a,b)
  %2844 = call float @dx.op.binary.f32(i32 36, float %2842, float %2843)  ; FMin(a,b)
  %2845 = fcmp fast ogt float %2844, 0.000000e+00
  br i1 %2845, label %2846, label %3033, !dx.controlflow.hints !95

; <label>:2846                                    ; preds = %2841
  %2847 = fmul fast float %2842, %2039
  %2848 = fmul fast float %2842, %2040
  %2849 = fmul fast float %2842, %2041
  %2850 = fsub fast float %2028, %142
  %2851 = fsub fast float %2029, %143
  %2852 = fsub fast float %2030, %144
  %2853 = call float @dx.op.dot3.f32(i32 55, float %2850, float %2851, float %2852, float %2850, float %2851, float %2852)  ; Dot3(ax,ay,az,bx,by,bz)
  %2854 = call float @dx.op.unary.f32(i32 25, float %2853)  ; Rsqrt(value)
  %2855 = fmul fast float %2854, %2850
  %2856 = fmul fast float %2854, %2851
  %2857 = fmul fast float %2854, %2852
  %2858 = call float @dx.op.dot3.f32(i32 55, float %2028, float %2029, float %2030, float %1770, float %1771, float %1772)  ; Dot3(ax,ay,az,bx,by,bz)
  %2859 = call float @dx.op.dot3.f32(i32 55, float %1598, float %1599, float %1600, float %2855, float %2856, float %2857)  ; Dot3(ax,ay,az,bx,by,bz)
  %2860 = call float @dx.op.unary.f32(i32 7, float %2858)  ; Saturate(value)
  %2861 = fmul fast float %2860, %2860
  %2862 = fmul fast float %2861, %1790
  %2863 = call float @dx.op.unary.f32(i32 7, float %2862)  ; Saturate(value)
  %2864 = fmul fast float %2863, %2860
  %2865 = call float @dx.op.dot3.f32(i32 55, float %1770, float %1771, float %1772, float %2855, float %2856, float %2857)  ; Dot3(ax,ay,az,bx,by,bz)
  %2866 = fmul fast float %2865, %2865
  %2867 = call float @dx.op.unary.f32(i32 6, float %2858)  ; FAbs(value)
  %2868 = fsub fast float 1.000000e+00, %1773
  %2869 = call float @dx.op.binary.f32(i32 35, float %2868, float 0x3F847AE140000000)  ; FMax(a,b)
  %2870 = fmul fast float %2869, %2869
  %2871 = fmul fast float %2870, %2870
  %2872 = fsub fast float 1.000000e+00, %2871
  %2873 = fmul fast float %1777, %1777
  %2874 = fmul fast float %2873, %2872
  %2875 = fadd fast float %2874, %2871
  %2876 = bitcast float %2875 to i32
  %2877 = ashr i32 %2876, 1
  %2878 = add nsw i32 %2877, 532487669
  %2879 = bitcast i32 %2878 to float
  %2880 = fadd fast float %2879, %1777
  %2881 = fmul fast float %2871, %2866
  %2882 = fsub fast float 1.000000e+00, %2866
  %2883 = fadd fast float %2882, %2881
  %2884 = fmul fast float %2867, %2867
  %2885 = fmul fast float %2884, %2872
  %2886 = fadd fast float %2885, %2871
  %2887 = bitcast float %2886 to i32
  %2888 = ashr i32 %2887, 1
  %2889 = add nsw i32 %2888, 532487669
  %2890 = bitcast i32 %2889 to float
  %2891 = fadd fast float %2890, %2867
  %2892 = fmul fast float %2883, %2883
  %2893 = fmul fast float %2892, %2880
  %2894 = fmul fast float %2893, %2891
  %2895 = fdiv fast float 0x3FF0A00000000000, %2894
  %2896 = fmul fast float %2895, %2871
  %2897 = fmul fast float %1890, 0x3FF9999980000000
  %2898 = fsub fast float 5.000000e+00, %2897
  %2899 = call float @dx.op.unary.f32(i32 6, float %2859)  ; FAbs(value)
  %2900 = fsub fast float 1.000000e+00, %2899
  %2901 = fmul fast float %1890, 0x41D9660740000000
  %2902 = fadd fast float %2901, 0xC1EFBF8940000000
  %2903 = bitcast float %2900 to i32
  %2904 = sitofp i32 %2903 to float
  %2905 = fmul fast float %2904, %2898
  %2906 = fadd fast float %2902, %2905
  %2907 = fptosi float %2906 to i32
  %2908 = bitcast i32 %2907 to float
  %2909 = fsub fast float 1.000000e+00, %1767
  %2910 = fsub fast float 1.000000e+00, %1768
  %2911 = fsub fast float 1.000000e+00, %1775
  %2912 = fmul fast float %2908, %2909
  %2913 = fmul fast float %2908, %2910
  %2914 = fmul fast float %2908, %2911
  %2915 = fadd fast float %2912, %1767
  %2916 = fadd fast float %2913, %1768
  %2917 = fadd fast float %2914, %1775
  br i1 %1913, label %2918, label %2941

; <label>:2918                                    ; preds = %2846
  %2919 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1426, float %2899, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2920 = extractvalue %dx.types.ResRet.f32 %2919, 0
  %2921 = extractvalue %dx.types.ResRet.f32 %2919, 1
  %2922 = extractvalue %dx.types.ResRet.f32 %2919, 2
  %2923 = fadd fast float %2920, -5.000000e-01
  %2924 = fadd fast float %2921, -5.000000e-01
  %2925 = fadd fast float %2922, -5.000000e-01
  %2926 = fmul fast float %1767, 4.000000e+00
  %2927 = fmul fast float %2926, %2909
  %2928 = fmul fast float %2927, %2923
  %2929 = fmul fast float %1768, 4.000000e+00
  %2930 = fmul fast float %2929, %2910
  %2931 = fmul fast float %2930, %2924
  %2932 = fmul fast float %1775, 4.000000e+00
  %2933 = fmul fast float %2932, %2911
  %2934 = fmul fast float %2933, %2925
  %2935 = fadd fast float %2928, %2915
  %2936 = fadd fast float %2931, %2916
  %2937 = fadd fast float %2934, %2917
  %2938 = call float @dx.op.unary.f32(i32 7, float %2935)  ; Saturate(value)
  %2939 = call float @dx.op.unary.f32(i32 7, float %2936)  ; Saturate(value)
  %2940 = call float @dx.op.unary.f32(i32 7, float %2937)  ; Saturate(value)
  br label %2941

; <label>:2941                                    ; preds = %2918, %2846
  %2942 = phi float [ %2938, %2918 ], [ %2915, %2846 ]
  %2943 = phi float [ %2939, %2918 ], [ %2916, %2846 ]
  %2944 = phi float [ %2940, %2918 ], [ %2917, %2846 ]
  %2945 = fmul fast float %2858, 9.843750e-01
  %2946 = fadd fast float %2945, 7.812500e-03
  %2947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %2946, float %1894, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2948 = extractvalue %dx.types.ResRet.f32 %2947, 0
  %2949 = extractvalue %dx.types.ResRet.f32 %2947, 1
  %2950 = extractvalue %dx.types.ResRet.f32 %2947, 2
  %2951 = extractvalue %dx.types.ResRet.f32 %2947, 3
  %2952 = fsub fast float %2950, %2948
  %2953 = fsub fast float %2951, %2949
  %2954 = fmul fast float %2952, %1900
  %2955 = fmul fast float %2953, %1900
  %2956 = fadd fast float %2954, %2948
  %2957 = fadd fast float %2955, %2949
  %2958 = fmul fast float %2956, %1767
  %2959 = fmul fast float %2956, %1768
  %2960 = fmul fast float %2956, %1775
  %2961 = fadd fast float %2958, %2957
  %2962 = fadd fast float %2959, %2957
  %2963 = fadd fast float %2960, %2957
  br i1 %1913, label %2964, label %2987

; <label>:2964                                    ; preds = %2941
  %2965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1426, float %2858, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2966 = extractvalue %dx.types.ResRet.f32 %2965, 0
  %2967 = extractvalue %dx.types.ResRet.f32 %2965, 1
  %2968 = extractvalue %dx.types.ResRet.f32 %2965, 2
  %2969 = fadd fast float %2966, -5.000000e-01
  %2970 = fadd fast float %2967, -5.000000e-01
  %2971 = fadd fast float %2968, -5.000000e-01
  %2972 = fmul fast float %1767, 4.000000e+00
  %2973 = fmul fast float %2972, %2909
  %2974 = fmul fast float %2973, %2969
  %2975 = fmul fast float %1768, 4.000000e+00
  %2976 = fmul fast float %2975, %2910
  %2977 = fmul fast float %2976, %2970
  %2978 = fmul fast float %1775, 4.000000e+00
  %2979 = fmul fast float %2978, %2911
  %2980 = fmul fast float %2979, %2971
  %2981 = fadd fast float %2974, %2961
  %2982 = fadd fast float %2977, %2962
  %2983 = fadd fast float %2980, %2963
  %2984 = call float @dx.op.unary.f32(i32 7, float %2981)  ; Saturate(value)
  %2985 = call float @dx.op.unary.f32(i32 7, float %2982)  ; Saturate(value)
  %2986 = call float @dx.op.unary.f32(i32 7, float %2983)  ; Saturate(value)
  br label %2987

; <label>:2987                                    ; preds = %2964, %2941
  %2988 = phi float [ %2984, %2964 ], [ %2961, %2941 ]
  %2989 = phi float [ %2985, %2964 ], [ %2962, %2941 ]
  %2990 = phi float [ %2986, %2964 ], [ %2963, %2941 ]
  %2991 = call float @dx.op.binary.f32(i32 35, float %2989, float %2990)  ; FMax(a,b)
  %2992 = call float @dx.op.binary.f32(i32 35, float %2988, float %2991)  ; FMax(a,b)
  %2993 = fsub fast float 1.000000e+00, %2992
  %2994 = fmul fast float %2942, %2896
  %2995 = fmul fast float %2943, %2896
  %2996 = fmul fast float %2944, %2896
  %2997 = fsub fast float 1.000000e+00, %2859
  %2998 = bitcast float %2997 to i32
  %2999 = sitofp i32 %2998 to float
  %3000 = fmul fast float %2999, 5.000000e+00
  %3001 = fadd fast float %3000, 0xC1EFBF8940000000
  %3002 = fptosi float %3001 to i32
  %3003 = bitcast i32 %3002 to float
  %3004 = fmul fast float %3003, %1425
  %3005 = fmul fast float %2993, %3004
  %3006 = fmul fast float %3005, %1963
  %3007 = fmul fast float %3005, %1964
  %3008 = fmul fast float %3005, %1965
  %3009 = fadd fast float %3006, %2994
  %3010 = fadd fast float %3007, %2995
  %3011 = fadd fast float %3008, %2996
  %3012 = fmul fast float %2864, %2847
  %3013 = fmul fast float %3012, %2993
  %3014 = fmul fast float %2864, %2848
  %3015 = fmul fast float %3014, %2993
  %3016 = fmul fast float %2864, %2849
  %3017 = fmul fast float %3016, %2993
  %3018 = fmul fast float %3012, %3009
  %3019 = fmul fast float %3014, %3010
  %3020 = fmul fast float %3016, %3011
  %3021 = fadd fast float %3013, %1947
  %3022 = fmul fast float %3021, %1472
  %3023 = fadd fast float %3015, %1948
  %3024 = fmul fast float %3023, %1472
  %3025 = fadd fast float %3017, %1949
  %3026 = fmul fast float %3025, %1472
  %3027 = fadd fast float %3018, %2016
  %3028 = fmul fast float %3027, %1472
  %3029 = fadd fast float %3019, %2019
  %3030 = fmul fast float %3029, %1472
  %3031 = fadd fast float %3020, %2022
  %3032 = fmul fast float %3031, %1472
  br label %3033

; <label>:3033                                    ; preds = %2987, %2841, %1940
  %3034 = phi float [ %2017, %1940 ], [ %2017, %2841 ], [ %3028, %2987 ]
  %3035 = phi float [ %2020, %1940 ], [ %2020, %2841 ], [ %3030, %2987 ]
  %3036 = phi float [ %2023, %1940 ], [ %2023, %2841 ], [ %3032, %2987 ]
  %3037 = phi float [ %2012, %1940 ], [ %2012, %2841 ], [ %3022, %2987 ]
  %3038 = phi float [ %2013, %1940 ], [ %2013, %2841 ], [ %3024, %2987 ]
  %3039 = phi float [ %2014, %1940 ], [ %2014, %2841 ], [ %3026, %2987 ]
  %3040 = fmul fast float %1472, %1472
  %3041 = fmul fast float %3040, %1989
  %3042 = fsub fast float -0.000000e+00, %3041
  %3043 = fmul fast float %3040, %1990
  %3044 = fsub fast float -0.000000e+00, %3043
  %3045 = fmul fast float %3040, %1991
  %3046 = fsub fast float -0.000000e+00, %3045
  %3047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3048 = extractvalue %dx.types.CBufRet.f32 %3047, 0
  %3049 = fmul fast float %3048, %1995
  %3050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3051 = extractvalue %dx.types.CBufRet.f32 %3050, 3
  %3052 = fsub fast float 1.000000e+00, %1421
  %3053 = call float @dx.op.unary.f32(i32 7, float %3052)  ; Saturate(value)
  %3054 = fadd fast float %3039, %1420
  %3055 = fmul fast float %3054, %1421
  %3056 = fmul fast float %3053, %3051
  %3057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.i32 %3057, 3
  %3059 = bitcast i32 %3058 to float
  %3060 = fsub fast float %3042, %3059
  %3061 = fsub fast float %3044, %3059
  %3062 = fsub fast float %3046, %3059
  %3063 = fmul fast float %3060, %156
  %3064 = fmul fast float %3061, %156
  %3065 = fmul fast float %3062, %156
  %3066 = fadd fast float %3063, %3059
  %3067 = fadd fast float %3064, %3059
  %3068 = fadd fast float %3065, %3059
  %3069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %3070 = extractvalue %dx.types.CBufRet.f32 %3069, 3
  %3071 = fmul fast float %3037, %1764
  %3072 = fmul fast float %3038, %1765
  %3073 = fmul fast float %3039, %1766
  %3074 = fcmp fast ogt float %58, %176
  %3075 = and i1 %3074, %1514
  %3076 = or i1 %1593, %3075
  %3077 = icmp eq i32 %1513, 2
  %3078 = fcmp fast ole float %58, %176
  %3079 = and i1 %3078, %3077
  %3080 = or i1 %3079, %3076
  br i1 %3075, label %3081, label %3338

; <label>:3081                                    ; preds = %3033
  %3082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3083 = extractvalue %dx.types.CBufRet.f32 %3082, 2
  %3084 = extractvalue %dx.types.CBufRet.f32 %3082, 3
  %3085 = fmul fast float %3083, %67
  %3086 = fmul fast float %3084, %68
  %3087 = call float @dx.op.unary.f32(i32 7, float %3085)  ; Saturate(value)
  %3088 = call float @dx.op.unary.f32(i32 7, float %3086)  ; Saturate(value)
  %3089 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %3087, float %3088, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3090 = extractvalue %dx.types.ResRet.f32 %3089, 0
  %3091 = extractvalue %dx.types.ResRet.f32 %3089, 1
  %3092 = extractvalue %dx.types.ResRet.f32 %3089, 2
  %3093 = extractvalue %dx.types.ResRet.f32 %3089, 3
  %3094 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %3087, float %3088, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3095 = extractvalue %dx.types.ResRet.f32 %3094, 0
  %3096 = extractvalue %dx.types.ResRet.f32 %3094, 1
  %3097 = extractvalue %dx.types.ResRet.f32 %3094, 2
  %3098 = extractvalue %dx.types.ResRet.f32 %3094, 3
  %3099 = call float @dx.op.binary.f32(i32 35, float %3091, float %3092)  ; FMax(a,b)
  %3100 = call float @dx.op.binary.f32(i32 35, float %3090, float %3099)  ; FMax(a,b)
  %3101 = call float @dx.op.binary.f32(i32 35, float %3100, float %3093)  ; FMax(a,b)
  %3102 = call float @dx.op.binary.f32(i32 36, float %3096, float %3097)  ; FMin(a,b)
  %3103 = call float @dx.op.binary.f32(i32 36, float %3095, float %3102)  ; FMin(a,b)
  %3104 = call float @dx.op.binary.f32(i32 36, float %3103, float %3098)  ; FMin(a,b)
  %3105 = fmul fast float %3101, 2.550000e+02
  %3106 = fadd fast float %3105, 0x3F70101020000000
  %3107 = fptoui float %3106 to i32
  %3108 = fmul fast float %3104, 2.550000e+02
  %3109 = fadd fast float %3108, 0x3F70101020000000
  %3110 = fptoui float %3109 to i32
  %3111 = icmp ult i32 %3107, %3110
  br i1 %3111, label %3112, label %3280

; <label>:3112                                    ; preds = %3081
  %3113 = fcmp fast ogt float %57, 9.843750e-01
  %3114 = fadd fast float %58, -4.000000e+00
  %3115 = select i1 %3113, float -4.000000e+00, float %3114
  %3116 = call float @dx.op.binary.f32(i32 35, float %3115, float 0.000000e+00)  ; FMax(a,b)
  %3117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3118 = extractvalue %dx.types.CBufRet.f32 %3117, 0
  %3119 = fadd fast float %3118, %3116
  %3120 = extractvalue %dx.types.CBufRet.f32 %3117, 2
  %3121 = fmul fast float %3119, %3120
  %3122 = call float @dx.op.unary.f32(i32 23, float %3121)  ; Log(value)
  %3123 = extractvalue %dx.types.CBufRet.f32 %3117, 3
  %3124 = fmul fast float %3123, %3122
  %3125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3126 = extractvalue %dx.types.CBufRet.f32 %3125, 2
  %3127 = fmul fast float %3124, %3126
  %3128 = call float @dx.op.unary.f32(i32 7, float %3127)  ; Saturate(value)
  %3129 = uitofp i32 %3107 to float
  %3130 = uitofp i32 %3110 to float
  %3131 = fadd fast float %3129, 5.000000e-01
  %3132 = fadd fast float %3130, 5.000000e-01
  %3133 = fmul fast float %3126, %3131
  %3134 = fmul fast float %3126, %3132
  %3135 = fadd fast float %3133, 0x3F0FFB4800000000
  %3136 = fadd fast float %3134, 0xBF0FFB4800000000
  %3137 = call float @dx.op.binary.f32(i32 35, float %3128, float %3135)  ; FMax(a,b)
  %3138 = call float @dx.op.binary.f32(i32 36, float %3137, float %3136)  ; FMin(a,b)
  %3139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %3140 = extractvalue %dx.types.CBufRet.f32 %3139, 1
  %3141 = extractvalue %dx.types.CBufRet.f32 %3139, 2
  %3142 = extractvalue %dx.types.CBufRet.f32 %3139, 0
  %3143 = fmul fast float %3140, %3138
  %3144 = fadd fast float %3142, %3143
  %3145 = fadd fast float %3142, %3141
  %3146 = fsub fast float %3140, %3141
  %3147 = fadd fast float %3146, %3142
  %3148 = call float @dx.op.binary.f32(i32 35, float %3144, float %3145)  ; FMax(a,b)
  %3149 = call float @dx.op.binary.f32(i32 36, float %3148, float %3147)  ; FMin(a,b)
  %3150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %29, float %3087, float %3088, float %3149, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3151 = extractvalue %dx.types.ResRet.f32 %3150, 0
  %3152 = extractvalue %dx.types.ResRet.f32 %3150, 1
  %3153 = extractvalue %dx.types.ResRet.f32 %3150, 2
  %3154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %3155 = extractvalue %dx.types.CBufRet.i32 %3154, 0
  %3156 = extractvalue %dx.types.CBufRet.i32 %3154, 1
  %3157 = uitofp i32 %3155 to float
  %3158 = uitofp i32 %3156 to float
  %3159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %3160 = extractvalue %dx.types.CBufRet.f32 %3159, 0
  %3161 = extractvalue %dx.types.CBufRet.f32 %3159, 1
  %3162 = fmul fast float %3157, %3087
  %3163 = fmul fast float %3158, %3088
  %3164 = fadd fast float %3162, -5.000000e-01
  %3165 = fadd fast float %3163, -5.000000e-01
  %3166 = call float @dx.op.unary.f32(i32 22, float %3164)  ; Frc(value)
  %3167 = call float @dx.op.unary.f32(i32 22, float %3165)  ; Frc(value)
  %3168 = fmul fast float %3166, %3166
  %3169 = fmul fast float %3168, %3166
  %3170 = fsub fast float 3.000000e+00, %3166
  %3171 = fmul fast float %3168, %3170
  %3172 = fmul fast float %3166, 3.000000e+00
  %3173 = fmul fast float %3169, 3.000000e+00
  %3174 = fmul fast float %3168, 6.000000e+00
  %3175 = fsub fast float %3173, %3174
  %3176 = fadd fast float %3175, 4.000000e+00
  %3177 = fmul fast float %3176, 0x3FC5555560000000
  %3178 = fmul fast float %3169, -3.000000e+00
  %3179 = fadd fast float %3168, %3166
  %3180 = fmul fast float %3179, 3.000000e+00
  %3181 = fadd fast float %3178, 1.000000e+00
  %3182 = fadd fast float %3181, %3180
  %3183 = fmul fast float %3169, 0x3FC5555560000000
  %3184 = fmul fast float %3167, %3167
  %3185 = fmul fast float %3184, %3167
  %3186 = fsub fast float 3.000000e+00, %3167
  %3187 = fmul fast float %3184, %3186
  %3188 = fmul fast float %3167, 3.000000e+00
  %3189 = fmul fast float %3185, 3.000000e+00
  %3190 = fmul fast float %3184, 6.000000e+00
  %3191 = fsub fast float %3189, %3190
  %3192 = fadd fast float %3191, 4.000000e+00
  %3193 = fmul fast float %3192, 0x3FC5555560000000
  %3194 = fmul fast float %3185, -3.000000e+00
  %3195 = fadd fast float %3184, %3167
  %3196 = fmul fast float %3195, 3.000000e+00
  %3197 = fadd fast float %3194, 1.000000e+00
  %3198 = fadd fast float %3197, %3196
  %3199 = fmul fast float %3185, 0x3FC5555560000000
  %3200 = fadd fast float %3166, 1.000000e+00
  %3201 = fsub fast float 1.000000e+00, %3172
  %3202 = fadd fast float %3201, %3171
  %3203 = fadd fast float %3202, %3176
  %3204 = fmul fast float %3203, 0x3FC5555560000000
  %3205 = fdiv fast float %3177, %3204
  %3206 = fsub fast float %3200, %3205
  %3207 = fsub fast float 1.000000e+00, %3166
  %3208 = fadd fast float %3182, %3169
  %3209 = fmul fast float %3208, 0x3FC5555560000000
  %3210 = fdiv fast float %3183, %3209
  %3211 = fadd fast float %3207, %3210
  %3212 = fadd fast float %3167, 1.000000e+00
  %3213 = fsub fast float 1.000000e+00, %3188
  %3214 = fadd fast float %3213, %3187
  %3215 = fadd fast float %3214, %3192
  %3216 = fmul fast float %3215, 0x3FC5555560000000
  %3217 = fdiv fast float %3193, %3216
  %3218 = fsub fast float %3212, %3217
  %3219 = fsub fast float 1.000000e+00, %3167
  %3220 = fadd fast float %3198, %3185
  %3221 = fmul fast float %3220, 0x3FC5555560000000
  %3222 = fdiv fast float %3199, %3221
  %3223 = fadd fast float %3222, %3219
  %3224 = fmul fast float %3206, %3160
  %3225 = fsub fast float %3087, %3224
  %3226 = fmul fast float %3211, %3160
  %3227 = fadd fast float %3226, %3087
  %3228 = fmul fast float %3223, %3161
  %3229 = fadd fast float %3228, %3088
  %3230 = fmul fast float %3218, %3161
  %3231 = fsub fast float %3088, %3230
  %3232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3225, float %3231, float %3149, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3233 = extractvalue %dx.types.ResRet.f32 %3232, 0
  %3234 = extractvalue %dx.types.ResRet.f32 %3232, 1
  %3235 = extractvalue %dx.types.ResRet.f32 %3232, 2
  %3236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3227, float %3231, float %3149, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3237 = extractvalue %dx.types.ResRet.f32 %3236, 0
  %3238 = extractvalue %dx.types.ResRet.f32 %3236, 1
  %3239 = extractvalue %dx.types.ResRet.f32 %3236, 2
  %3240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3225, float %3229, float %3149, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3241 = extractvalue %dx.types.ResRet.f32 %3240, 0
  %3242 = extractvalue %dx.types.ResRet.f32 %3240, 1
  %3243 = extractvalue %dx.types.ResRet.f32 %3240, 2
  %3244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3227, float %3229, float %3149, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3245 = extractvalue %dx.types.ResRet.f32 %3244, 0
  %3246 = extractvalue %dx.types.ResRet.f32 %3244, 1
  %3247 = extractvalue %dx.types.ResRet.f32 %3244, 2
  %3248 = fsub fast float %3241, %3233
  %3249 = fsub fast float %3242, %3234
  %3250 = fsub fast float %3243, %3235
  %3251 = fmul fast float %3248, %3221
  %3252 = fmul fast float %3249, %3221
  %3253 = fmul fast float %3250, %3221
  %3254 = fadd fast float %3251, %3233
  %3255 = fadd fast float %3252, %3234
  %3256 = fadd fast float %3253, %3235
  %3257 = fsub fast float %3245, %3237
  %3258 = fsub fast float %3246, %3238
  %3259 = fsub fast float %3247, %3239
  %3260 = fmul fast float %3257, %3221
  %3261 = fmul fast float %3258, %3221
  %3262 = fmul fast float %3259, %3221
  %3263 = fsub fast float %3237, %3254
  %3264 = fadd fast float %3263, %3260
  %3265 = fsub fast float %3238, %3255
  %3266 = fadd fast float %3265, %3261
  %3267 = fsub fast float %3239, %3256
  %3268 = fadd fast float %3267, %3262
  %3269 = fmul fast float %3264, %3209
  %3270 = fmul fast float %3266, %3209
  %3271 = fmul fast float %3268, %3209
  %3272 = fadd fast float %3269, %3254
  %3273 = fadd fast float %3270, %3255
  %3274 = fadd fast float %3271, %3256
  %3275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3276 = extractvalue %dx.types.CBufRet.f32 %3275, 1
  %3277 = fmul fast float %3272, %3276
  %3278 = fmul fast float %3273, %3276
  %3279 = fmul fast float %3274, %3276
  br label %3280

; <label>:3280                                    ; preds = %3112, %3081
  %3281 = phi float [ %3151, %3112 ], [ 1.000000e+00, %3081 ]
  %3282 = phi float [ %3152, %3112 ], [ 1.000000e+00, %3081 ]
  %3283 = phi float [ %3153, %3112 ], [ 1.000000e+00, %3081 ]
  %3284 = phi float [ %3277, %3112 ], [ 0.000000e+00, %3081 ]
  %3285 = phi float [ %3278, %3112 ], [ 0.000000e+00, %3081 ]
  %3286 = phi float [ %3279, %3112 ], [ 0.000000e+00, %3081 ]
  %3287 = fmul fast float %3284, %3066
  %3288 = fmul fast float %3285, %3067
  %3289 = fmul fast float %3286, %3068
  %3290 = call float @dx.op.dot3.f32(i32 55, float %3281, float %3282, float %3283, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3291 = call float @dx.op.dot3.f32(i32 55, float %3287, float %3288, float %3289, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3292 = select i1 %215, float %3290, float %3281
  %3293 = select i1 %215, float %3290, float %3282
  %3294 = select i1 %215, float 1.000000e+00, float %3283
  %3295 = select i1 %215, float %3291, float %3287
  %3296 = select i1 %215, float 0.000000e+00, float %3288
  %3297 = select i1 %215, float 0.000000e+00, float %3289
  %3298 = fmul fast float %3292, %3071
  %3299 = fmul fast float %3293, %3072
  %3300 = fmul fast float %3294, %3073
  %3301 = fadd fast float %3298, %3295
  %3302 = fadd fast float %3299, %3296
  %3303 = fadd fast float %3297, %3300
  %3304 = fmul fast float %3292, %3034
  %3305 = fmul fast float %3293, %3035
  %3306 = fmul fast float %3294, %3036
  %3307 = fmul fast float %93, %3083
  %3308 = fmul fast float %95, %3084
  %3309 = fsub fast float 1.000000e+00, %3307
  %3310 = fsub fast float 1.000000e+00, %3308
  %3311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %3312 = extractvalue %dx.types.CBufRet.f32 %3311, 0
  %3313 = extractvalue %dx.types.CBufRet.f32 %3311, 1
  %3314 = extractvalue %dx.types.CBufRet.f32 %3311, 2
  %3315 = fmul fast float %3309, %3312
  %3316 = fmul fast float %3309, %3313
  %3317 = fmul fast float %3309, %3314
  %3318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %3319 = extractvalue %dx.types.CBufRet.f32 %3318, 0
  %3320 = extractvalue %dx.types.CBufRet.f32 %3318, 1
  %3321 = extractvalue %dx.types.CBufRet.f32 %3318, 2
  %3322 = fmul fast float %3310, %3319
  %3323 = fmul fast float %3310, %3320
  %3324 = fmul fast float %3310, %3321
  %3325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %3326 = extractvalue %dx.types.CBufRet.f32 %3325, 0
  %3327 = extractvalue %dx.types.CBufRet.f32 %3325, 1
  %3328 = extractvalue %dx.types.CBufRet.f32 %3325, 2
  %3329 = fadd fast float %3322, %3326
  %3330 = fadd fast float %3329, %3315
  %3331 = fadd fast float %3323, %3327
  %3332 = fadd fast float %3331, %3316
  %3333 = fadd fast float %3324, %3328
  %3334 = fadd fast float %3333, %3317
  %3335 = fmul fast float %3330, %176
  %3336 = fmul fast float %3332, %176
  %3337 = fmul fast float %3334, %176
  br label %3338

; <label>:3338                                    ; preds = %3280, %3033
  %3339 = phi float [ %3335, %3280 ], [ %123, %3033 ]
  %3340 = phi float [ %3336, %3280 ], [ %124, %3033 ]
  %3341 = phi float [ %3337, %3280 ], [ %125, %3033 ]
  %3342 = phi float [ %176, %3280 ], [ %58, %3033 ]
  %3343 = phi float [ %3301, %3280 ], [ %3071, %3033 ]
  %3344 = phi float [ %3302, %3280 ], [ %3072, %3033 ]
  %3345 = phi float [ %3303, %3280 ], [ %3073, %3033 ]
  %3346 = phi float [ %3304, %3280 ], [ %3034, %3033 ]
  %3347 = phi float [ %3305, %3280 ], [ %3035, %3033 ]
  %3348 = phi float [ %3306, %3280 ], [ %3036, %3033 ]
  %3349 = phi float [ %3281, %3280 ], [ 1.000000e+00, %3033 ]
  br i1 %3080, label %4504, label %3350

; <label>:3350                                    ; preds = %3338
  %3351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %3352 = extractvalue %dx.types.CBufRet.f32 %3351, 0
  %3353 = extractvalue %dx.types.CBufRet.f32 %3351, 1
  %3354 = extractvalue %dx.types.CBufRet.f32 %3351, 2
  %3355 = extractvalue %dx.types.CBufRet.f32 %3351, 3
  %3356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %3357 = extractvalue %dx.types.CBufRet.f32 %3356, 0
  %3358 = extractvalue %dx.types.CBufRet.f32 %3356, 1
  %3359 = extractvalue %dx.types.CBufRet.f32 %3356, 2
  %3360 = extractvalue %dx.types.CBufRet.f32 %3356, 3
  %3361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %3362 = extractvalue %dx.types.CBufRet.f32 %3361, 0
  %3363 = extractvalue %dx.types.CBufRet.f32 %3361, 1
  %3364 = extractvalue %dx.types.CBufRet.f32 %3361, 2
  %3365 = extractvalue %dx.types.CBufRet.f32 %3361, 3
  %3366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %3367 = extractvalue %dx.types.CBufRet.f32 %3366, 0
  %3368 = extractvalue %dx.types.CBufRet.f32 %3366, 1
  %3369 = extractvalue %dx.types.CBufRet.f32 %3366, 2
  %3370 = extractvalue %dx.types.CBufRet.f32 %3366, 3
  %3371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %3372 = extractvalue %dx.types.CBufRet.f32 %3371, 3
  %3373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %3374 = extractvalue %dx.types.CBufRet.f32 %3373, 3
  %3375 = extractvalue %dx.types.CBufRet.f32 %3373, 0
  %3376 = extractvalue %dx.types.CBufRet.f32 %3373, 1
  %3377 = extractvalue %dx.types.CBufRet.f32 %3373, 2
  %3378 = fcmp fast olt float %3377, -5.000000e-01
  %3379 = call float @dx.op.dot3.f32(i32 55, float %3339, float %3340, float %3341, float %3339, float %3340, float %3341)  ; Dot3(ax,ay,az,bx,by,bz)
  %3380 = call float @dx.op.unary.f32(i32 25, float %3379)  ; Rsqrt(value)
  %3381 = fmul fast float %3380, %3379
  %3382 = fmul fast float %3380, %3339
  %3383 = fmul fast float %3380, %3340
  %3384 = fmul fast float %3380, %3341
  %3385 = fadd fast float %3381, %3355
  %3386 = call float @dx.op.dot3.f32(i32 55, float %3382, float %3383, float %3384, float %3352, float %3353, float %3354)  ; Dot3(ax,ay,az,bx,by,bz)
  %3387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3388 = extractvalue %dx.types.CBufRet.i32 %3387, 1
  %3389 = and i32 %3388, 1
  %3390 = icmp ne i32 %3389, 0
  %3391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %3392 = extractvalue %dx.types.CBufRet.f32 %3391, 2
  %3393 = fcmp fast ogt float %3392, 0.000000e+00
  %3394 = and i1 %3390, %3393
  br i1 %3394, label %3395, label %3801, !dx.controlflow.hints !96

; <label>:3395                                    ; preds = %3350
  %3396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %3397 = extractvalue %dx.types.CBufRet.f32 %3396, 3
  %3398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3399 = extractvalue %dx.types.CBufRet.f32 %3398, 2
  %3400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3401 = extractvalue %dx.types.CBufRet.f32 %3400, 2
  %3402 = fsub fast float %3399, %3401
  %3403 = and i32 %3388, 2
  %3404 = extractvalue %dx.types.CBufRet.i32 %3387, 0
  %3405 = call i32 @dx.op.binary.i32(i32 40, i32 %3404, i32 3)  ; UMin(a,b)
  %3406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %3407 = extractvalue %dx.types.CBufRet.f32 %3406, 0
  %3408 = extractvalue %dx.types.CBufRet.f32 %3406, 1
  %3409 = extractvalue %dx.types.CBufRet.f32 %3400, 0
  %3410 = extractvalue %dx.types.CBufRet.f32 %3400, 1
  %3411 = fsub fast float %3407, %3409
  %3412 = fsub fast float %3408, %3410
  %3413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %3414 = extractvalue %dx.types.CBufRet.f32 %3413, 0
  %3415 = fcmp fast ogt float %3414, 0.000000e+00
  %3416 = fsub fast float -0.000000e+00, %3411
  %3417 = fsub fast float -0.000000e+00, %3412
  %3418 = call float @dx.op.dot2.f32(i32 54, float %3382, float %3383, float %3382, float %3383)  ; Dot2(ax,ay,bx,by)
  %3419 = call float @dx.op.dot2.f32(i32 54, float %3382, float %3383, float %3416, float %3417)  ; Dot2(ax,ay,bx,by)
  %3420 = fmul fast float %3419, 2.000000e+00
  %3421 = call float @dx.op.dot2.f32(i32 54, float %3416, float %3417, float %3416, float %3417)  ; Dot2(ax,ay,bx,by)
  %3422 = fmul fast float %3414, %3414
  %3423 = fsub fast float %3421, %3422
  %3424 = fmul fast float %3420, %3420
  %3425 = fmul fast float %3418, 4.000000e+00
  %3426 = fmul fast float %3425, %3423
  %3427 = fsub fast float %3424, %3426
  %3428 = fcmp fast ogt float %3427, 0.000000e+00
  br i1 %3428, label %3429, label %3444

; <label>:3429                                    ; preds = %3395
  %3430 = fcmp fast ogt float %3420, 0.000000e+00
  %3431 = call float @dx.op.unary.f32(i32 24, float %3427)  ; Sqrt(value)
  %3432 = fsub fast float -0.000000e+00, %3431
  %3433 = select i1 %3430, float %3431, float %3432
  %3434 = fadd fast float %3433, %3420
  %3435 = fmul float %3434, -5.000000e-01
  %3436 = fdiv fast float %3435, %3418
  %3437 = call float @dx.op.binary.f32(i32 35, float %3436, float 0.000000e+00)  ; FMax(a,b)
  %3438 = call float @dx.op.binary.f32(i32 36, float %3381, float %3437)  ; FMin(a,b)
  %3439 = fdiv fast float %3423, %3435
  %3440 = call float @dx.op.binary.f32(i32 35, float %3439, float 0.000000e+00)  ; FMax(a,b)
  %3441 = call float @dx.op.binary.f32(i32 36, float %3381, float %3440)  ; FMin(a,b)
  %3442 = call float @dx.op.binary.f32(i32 36, float %3438, float %3441)  ; FMin(a,b)
  %3443 = call float @dx.op.binary.f32(i32 35, float %3438, float %3441)  ; FMax(a,b)
  br label %3444

; <label>:3444                                    ; preds = %3429, %3395
  %3445 = phi float [ %3443, %3429 ], [ -1.000000e+00, %3395 ]
  %3446 = phi float [ %3442, %3429 ], [ -1.000000e+00, %3395 ]
  %3447 = phi i1 [ true, %3429 ], [ false, %3395 ]
  %3448 = and i1 %3415, %3447
  br i1 %3448, label %3449, label %3451

; <label>:3449                                    ; preds = %3444
  %3450 = fcmp fast oeq float %3446, %3445
  br i1 %3450, label %3754, label %3452

; <label>:3451                                    ; preds = %3444
  br i1 %3415, label %3754, label %3452

; <label>:3452                                    ; preds = %3451, %3449
  %3453 = phi float [ %3381, %3451 ], [ %3445, %3449 ]
  %3454 = phi float [ 0.000000e+00, %3451 ], [ %3446, %3449 ]
  %3455 = icmp ne i32 %3403, 0
  %3456 = fmul fast float %3453, %3384
  %3457 = fadd fast float %3456, %3397
  %3458 = fmul fast float %3457, %3453
  %3459 = select i1 %3455, float 0.000000e+00, float %3458
  %3460 = fcmp fast oeq float %3384, 0.000000e+00
  %3461 = fdiv fast float %3402, %3384
  %3462 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3461)  ; FMax(a,b)
  %3463 = select i1 %3460, float %3453, float %3462
  %3464 = call float @dx.op.binary.f32(i32 36, float %3453, float %3463)  ; FMin(a,b)
  %3465 = fcmp fast ogt float %3384, 0.000000e+00
  %3466 = fcmp fast olt float %3402, 0.000000e+00
  br i1 %3465, label %3467, label %3524

; <label>:3467                                    ; preds = %3452
  %3468 = icmp eq i32 %3403, 0
  br i1 %3466, label %3469, label %3513

; <label>:3469                                    ; preds = %3467
  %3470 = select i1 %3468, float %3453, float 0.000000e+00
  %3471 = fsub fast float -0.000000e+00, %3470
  %3472 = call float @dx.op.unary.f32(i32 6, float %3471)  ; FAbs(value)
  %3473 = fmul fast float %3470, %3384
  %3474 = fadd fast float %3473, %3397
  %3475 = fmul fast float %3472, %3474
  %3476 = fsub fast float %3459, %3475
  %3477 = fsub fast float %3453, %3472
  %3478 = select i1 %3468, float %3477, float 0.000000e+00
  %3479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3480 = extractvalue %dx.types.CBufRet.f32 %3479, 0
  %3481 = extractvalue %dx.types.CBufRet.f32 %3479, 1
  %3482 = extractvalue %dx.types.CBufRet.f32 %3479, 2
  %3483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3484 = extractvalue %dx.types.CBufRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.CBufRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.CBufRet.f32 %3483, 2
  %3487 = extractvalue %dx.types.CBufRet.f32 %3483, 3
  %3488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3489 = extractvalue %dx.types.CBufRet.f32 %3488, 3
  %3490 = call float @dx.op.binary.f32(i32 36, float %3476, float %3489)  ; FMin(a,b)
  %3491 = fmul fast float %3487, %3478
  %3492 = call float @dx.op.unary.f32(i32 7, float %3491)  ; Saturate(value)
  %3493 = fsub fast float %3484, %3480
  %3494 = fsub fast float %3485, %3481
  %3495 = fsub fast float %3486, %3482
  %3496 = fmul fast float %3492, %3493
  %3497 = fmul fast float %3492, %3494
  %3498 = fmul fast float %3492, %3495
  %3499 = fadd fast float %3496, %3480
  %3500 = fadd fast float %3497, %3481
  %3501 = fadd fast float %3498, %3482
  %3502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3503 = extractvalue %dx.types.CBufRet.f32 %3502, 0
  %3504 = extractvalue %dx.types.CBufRet.f32 %3502, 1
  %3505 = fadd fast float %3504, %3503
  %3506 = call float @dx.op.unary.f32(i32 7, float %3505)  ; Saturate(value)
  %3507 = extractvalue %dx.types.CBufRet.f32 %3502, 2
  %3508 = extractvalue %dx.types.CBufRet.f32 %3502, 3
  %3509 = fadd fast float %3508, %3507
  %3510 = call float @dx.op.unary.f32(i32 7, float %3509)  ; Saturate(value)
  %3511 = fmul fast float %3506, %3490
  %3512 = fmul fast float %3511, %3510
  br label %3754

; <label>:3513                                    ; preds = %3467
  br i1 %3468, label %3514, label %3535

; <label>:3514                                    ; preds = %3513
  %3515 = call float @dx.op.binary.f32(i32 36, float %3464, float %3454)  ; FMin(a,b)
  %3516 = fsub fast float %3464, %3515
  %3517 = fsub fast float %3516, %3453
  %3518 = call float @dx.op.unary.f32(i32 6, float %3517)  ; FAbs(value)
  %3519 = fadd fast float %3516, %3453
  %3520 = fmul fast float %3519, %3384
  %3521 = fadd fast float %3520, %3397
  %3522 = fmul fast float %3521, %3518
  %3523 = fsub fast float %3459, %3522
  br label %3535

; <label>:3524                                    ; preds = %3452
  br i1 %3466, label %3525, label %3535

; <label>:3525                                    ; preds = %3524
  %3526 = call float @dx.op.binary.f32(i32 35, float %3454, float %3464)  ; FMax(a,b)
  %3527 = icmp eq i32 %3403, 0
  %3528 = select i1 %3527, float %3464, float 0.000000e+00
  %3529 = fsub fast float -0.000000e+00, %3528
  %3530 = call float @dx.op.unary.f32(i32 6, float %3529)  ; FAbs(value)
  %3531 = fmul fast float %3528, %3384
  %3532 = fadd fast float %3531, %3397
  %3533 = fmul fast float %3530, %3532
  %3534 = fsub fast float %3459, %3533
  br label %3535

; <label>:3535                                    ; preds = %3525, %3524, %3514, %3513
  %3536 = phi float [ %3454, %3513 ], [ %3454, %3514 ], [ %3526, %3525 ], [ %3454, %3524 ]
  %3537 = phi float [ 0.000000e+00, %3513 ], [ %3518, %3514 ], [ %3530, %3525 ], [ 0.000000e+00, %3524 ]
  %3538 = phi float [ %3459, %3513 ], [ %3523, %3514 ], [ %3534, %3525 ], [ %3459, %3524 ]
  %3539 = phi float [ %3464, %3513 ], [ %3464, %3514 ], [ %3453, %3525 ], [ %3453, %3524 ]
  %3540 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 0
  store float -1.000000e+00, float* %3540, align 4, !tbaa !97, !noalias !99
  %3541 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 1
  store float -1.000000e+00, float* %3541, align 4, !tbaa !97, !noalias !99
  %3542 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 2
  store float -1.000000e+00, float* %3542, align 4, !tbaa !97, !noalias !99
  %3543 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 0
  store float -1.000000e+00, float* %3543, align 4, !tbaa !97, !noalias !99
  %3544 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 1
  store float -1.000000e+00, float* %3544, align 4, !tbaa !97, !noalias !99
  %3545 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 2
  store float -1.000000e+00, float* %3545, align 4, !tbaa !97, !noalias !99
  %3546 = icmp sgt i32 %3405, 0
  br i1 %3546, label %3547, label %3608

; <label>:3547                                    ; preds = %3535
  br label %3548

; <label>:3548                                    ; preds = %3597, %3547
  %3549 = phi i32 [ %3598, %3597 ], [ 0, %3547 ]
  %3550 = phi i32 [ %3599, %3597 ], [ 0, %3547 ]
  %3551 = add nuw i32 %3550, 171
  %3552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %3551)  ; CBufferLoadLegacy(handle,regIndex)
  %3553 = extractvalue %dx.types.CBufRet.f32 %3552, 0
  %3554 = extractvalue %dx.types.CBufRet.f32 %3552, 1
  %3555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3556 = extractvalue %dx.types.CBufRet.f32 %3555, 0
  %3557 = extractvalue %dx.types.CBufRet.f32 %3555, 1
  %3558 = fsub fast float %3553, %3556
  %3559 = fsub fast float %3554, %3557
  %3560 = extractvalue %dx.types.CBufRet.f32 %3552, 2
  %3561 = fsub fast float -0.000000e+00, %3558
  %3562 = fsub fast float -0.000000e+00, %3559
  %3563 = call float @dx.op.dot2.f32(i32 54, float %3382, float %3383, float %3561, float %3562)  ; Dot2(ax,ay,bx,by)
  %3564 = fmul fast float %3563, 2.000000e+00
  %3565 = call float @dx.op.dot2.f32(i32 54, float %3561, float %3562, float %3561, float %3562)  ; Dot2(ax,ay,bx,by)
  %3566 = fmul fast float %3560, %3560
  %3567 = fsub fast float %3565, %3566
  %3568 = fmul fast float %3564, %3564
  %3569 = fmul fast float %3425, %3567
  %3570 = fsub fast float %3568, %3569
  %3571 = fcmp fast ogt float %3570, 0.000000e+00
  br i1 %3571, label %3572, label %3587

; <label>:3572                                    ; preds = %3548
  %3573 = fcmp fast ogt float %3564, 0.000000e+00
  %3574 = call float @dx.op.unary.f32(i32 24, float %3570)  ; Sqrt(value)
  %3575 = fsub fast float -0.000000e+00, %3574
  %3576 = select i1 %3573, float %3574, float %3575
  %3577 = fadd fast float %3576, %3564
  %3578 = fmul float %3577, -5.000000e-01
  %3579 = fdiv fast float %3578, %3418
  %3580 = call float @dx.op.binary.f32(i32 35, float %3579, float 0.000000e+00)  ; FMax(a,b)
  %3581 = call float @dx.op.binary.f32(i32 36, float %3453, float %3580)  ; FMin(a,b)
  %3582 = fdiv fast float %3567, %3578
  %3583 = call float @dx.op.binary.f32(i32 35, float %3582, float 0.000000e+00)  ; FMax(a,b)
  %3584 = call float @dx.op.binary.f32(i32 36, float %3453, float %3583)  ; FMin(a,b)
  %3585 = call float @dx.op.binary.f32(i32 36, float %3581, float %3584)  ; FMin(a,b)
  %3586 = call float @dx.op.binary.f32(i32 35, float %3581, float %3584)  ; FMax(a,b)
  br label %3587

; <label>:3587                                    ; preds = %3572, %3548
  %3588 = phi float [ %3586, %3572 ], [ -1.000000e+00, %3548 ]
  %3589 = phi float [ %3585, %3572 ], [ -1.000000e+00, %3548 ]
  %3590 = phi i1 [ true, %3572 ], [ false, %3548 ]
  br i1 %3590, label %3591, label %3597

; <label>:3591                                    ; preds = %3587
  %3592 = call float @dx.op.binary.f32(i32 35, float %3536, float %3589)  ; FMax(a,b)
  %3593 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 %3550
  store float %3592, float* %3593, align 4, !tbaa !97, !noalias !99
  %3594 = call float @dx.op.binary.f32(i32 35, float %3536, float %3588)  ; FMax(a,b)
  %3595 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 %3550
  store float %3594, float* %3595, align 4, !tbaa !97, !noalias !99
  %3596 = add nsw i32 %3549, 1
  br label %3597

; <label>:3597                                    ; preds = %3591, %3587
  %3598 = phi i32 [ %3596, %3591 ], [ %3549, %3587 ]
  %3599 = add nuw nsw i32 %3550, 1
  %3600 = icmp eq i32 %3599, %3405
  br i1 %3600, label %3601, label %3548

; <label>:3601                                    ; preds = %3597
  %3602 = load float, float* %3542, align 4, !tbaa !97, !alias.scope !115, !noalias !118
  %3603 = load float, float* %3541, align 4, !tbaa !97, !alias.scope !121, !noalias !122
  %3604 = load float, float* %3540, align 4, !tbaa !97, !alias.scope !123, !noalias !124
  %3605 = load float, float* %3545, align 4, !tbaa !97, !alias.scope !125, !noalias !128
  %3606 = load float, float* %3544, align 4, !tbaa !97, !alias.scope !131, !noalias !132
  %3607 = load float, float* %3543, align 4, !tbaa !97, !alias.scope !133, !noalias !134
  br label %3608

; <label>:3608                                    ; preds = %3601, %3535
  %3609 = phi float [ -1.000000e+00, %3535 ], [ %3607, %3601 ]
  %3610 = phi float [ -1.000000e+00, %3535 ], [ %3606, %3601 ]
  %3611 = phi float [ -1.000000e+00, %3535 ], [ %3605, %3601 ]
  %3612 = phi float [ -1.000000e+00, %3535 ], [ %3604, %3601 ]
  %3613 = phi float [ -1.000000e+00, %3535 ], [ %3603, %3601 ]
  %3614 = phi float [ -1.000000e+00, %3535 ], [ %3602, %3601 ]
  %3615 = phi i32 [ 0, %3535 ], [ %3598, %3601 ]
  %3616 = call float @dx.op.binary.f32(i32 36, float %3613, float %3614)  ; FMin(a,b)
  %3617 = call float @dx.op.binary.f32(i32 36, float %3612, float %3616)  ; FMin(a,b)
  %3618 = call float @dx.op.binary.f32(i32 35, float %3612, float %3613)  ; FMax(a,b)
  %3619 = call float @dx.op.binary.f32(i32 36, float %3618, float %3614)  ; FMin(a,b)
  %3620 = call float @dx.op.binary.f32(i32 36, float %3612, float %3613)  ; FMin(a,b)
  %3621 = call float @dx.op.binary.f32(i32 35, float %3620, float %3619)  ; FMax(a,b)
  %3622 = call float @dx.op.binary.f32(i32 35, float %3613, float %3614)  ; FMax(a,b)
  %3623 = call float @dx.op.binary.f32(i32 35, float %3612, float %3622)  ; FMax(a,b)
  store float %3617, float* %3540, align 4, !tbaa !97, !alias.scope !123, !noalias !124
  store float %3621, float* %3541, align 4, !tbaa !97, !alias.scope !121, !noalias !122
  store float %3623, float* %3542, align 4, !tbaa !97, !alias.scope !115, !noalias !118
  %3624 = call float @dx.op.binary.f32(i32 36, float %3610, float %3611)  ; FMin(a,b)
  %3625 = call float @dx.op.binary.f32(i32 36, float %3609, float %3624)  ; FMin(a,b)
  %3626 = call float @dx.op.binary.f32(i32 35, float %3609, float %3610)  ; FMax(a,b)
  %3627 = call float @dx.op.binary.f32(i32 36, float %3626, float %3611)  ; FMin(a,b)
  %3628 = call float @dx.op.binary.f32(i32 36, float %3609, float %3610)  ; FMin(a,b)
  %3629 = call float @dx.op.binary.f32(i32 35, float %3628, float %3627)  ; FMax(a,b)
  %3630 = call float @dx.op.binary.f32(i32 35, float %3610, float %3611)  ; FMax(a,b)
  %3631 = call float @dx.op.binary.f32(i32 35, float %3609, float %3630)  ; FMax(a,b)
  store float %3625, float* %3543, align 4, !tbaa !97, !alias.scope !133, !noalias !134
  store float %3629, float* %3544, align 4, !tbaa !97, !alias.scope !131, !noalias !132
  store float %3631, float* %3545, align 4, !tbaa !97, !alias.scope !125, !noalias !128
  %3632 = sub nsw i32 3, %3615
  %3633 = icmp sgt i32 %3632, 2
  br i1 %3633, label %3634, label %3672

; <label>:3634                                    ; preds = %3608
  %3635 = icmp eq i32 %3403, 0
  %3636 = fsub fast float %3453, %3537
  %3637 = select i1 %3635, float %3636, float %3537
  %3638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3639 = extractvalue %dx.types.CBufRet.f32 %3638, 0
  %3640 = extractvalue %dx.types.CBufRet.f32 %3638, 1
  %3641 = extractvalue %dx.types.CBufRet.f32 %3638, 2
  %3642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3643 = extractvalue %dx.types.CBufRet.f32 %3642, 0
  %3644 = extractvalue %dx.types.CBufRet.f32 %3642, 1
  %3645 = extractvalue %dx.types.CBufRet.f32 %3642, 2
  %3646 = extractvalue %dx.types.CBufRet.f32 %3642, 3
  %3647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3648 = extractvalue %dx.types.CBufRet.f32 %3647, 3
  %3649 = call float @dx.op.binary.f32(i32 36, float %3538, float %3648)  ; FMin(a,b)
  %3650 = fmul fast float %3646, %3637
  %3651 = call float @dx.op.unary.f32(i32 7, float %3650)  ; Saturate(value)
  %3652 = fsub fast float %3643, %3639
  %3653 = fsub fast float %3644, %3640
  %3654 = fsub fast float %3645, %3641
  %3655 = fmul fast float %3651, %3652
  %3656 = fmul fast float %3651, %3653
  %3657 = fmul fast float %3651, %3654
  %3658 = fadd fast float %3655, %3639
  %3659 = fadd fast float %3656, %3640
  %3660 = fadd fast float %3657, %3641
  %3661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3662 = extractvalue %dx.types.CBufRet.f32 %3661, 0
  %3663 = extractvalue %dx.types.CBufRet.f32 %3661, 1
  %3664 = fadd fast float %3663, %3662
  %3665 = call float @dx.op.unary.f32(i32 7, float %3664)  ; Saturate(value)
  %3666 = extractvalue %dx.types.CBufRet.f32 %3661, 2
  %3667 = extractvalue %dx.types.CBufRet.f32 %3661, 3
  %3668 = fadd fast float %3667, %3666
  %3669 = call float @dx.op.unary.f32(i32 7, float %3668)  ; Saturate(value)
  %3670 = fmul fast float %3665, %3649
  %3671 = fmul fast float %3670, %3669
  br label %3754

; <label>:3672                                    ; preds = %3608
  %3673 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 %3632
  %3674 = load float, float* %3673, align 4, !tbaa !97, !noalias !99
  %3675 = fcmp fast olt float %3674, %3539
  %3676 = icmp sgt i32 %3615, 0
  %3677 = and i1 %3676, %3675
  br i1 %3677, label %3678, label %3715

; <label>:3678                                    ; preds = %3672
  br label %3679

; <label>:3679                                    ; preds = %3708, %3678
  %3680 = phi float [ %3709, %3708 ], [ %3537, %3678 ]
  %3681 = phi float [ %3710, %3708 ], [ %3538, %3678 ]
  %3682 = phi float [ %3690, %3708 ], [ %3674, %3678 ]
  %3683 = phi i32 [ %3687, %3708 ], [ %3632, %3678 ]
  %3684 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 %3683
  %3685 = load float, float* %3684, align 4, !tbaa !97, !noalias !99
  %3686 = icmp slt i32 %3683, 2
  %3687 = add nsw i32 %3683, 1
  %3688 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 %3687
  %3689 = load float, float* %3688, align 4, !tbaa !97, !noalias !99
  %3690 = select i1 %3686, float %3689, float %3453
  %3691 = call float @dx.op.binary.f32(i32 36, float %3690, float %3685)  ; FMin(a,b)
  %3692 = call float @dx.op.binary.f32(i32 36, float %3539, float %3691)  ; FMin(a,b)
  %3693 = icmp eq i32 %3403, 0
  %3694 = fadd fast float %3692, %3682
  %3695 = fmul fast float %3694, %3384
  %3696 = fadd fast float %3695, %3397
  br i1 %3693, label %3702, label %3697

; <label>:3697                                    ; preds = %3679
  %3698 = fsub fast float %3692, %3682
  %3699 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3698)  ; FMax(a,b)
  %3700 = fmul fast float %3699, %3696
  %3701 = fadd fast float %3700, %3681
  br label %3708

; <label>:3702                                    ; preds = %3679
  %3703 = fsub fast float %3682, %3692
  %3704 = call float @dx.op.unary.f32(i32 6, float %3703)  ; FAbs(value)
  %3705 = fadd fast float %3704, %3680
  %3706 = fmul fast float %3704, %3696
  %3707 = fsub fast float %3681, %3706
  br label %3708

; <label>:3708                                    ; preds = %3702, %3697
  %3709 = phi float [ %3699, %3697 ], [ %3705, %3702 ]
  %3710 = phi float [ %3701, %3697 ], [ %3707, %3702 ]
  %3711 = fcmp fast olt float %3690, %3539
  %3712 = icmp slt i32 %3687, 3
  %3713 = and i1 %3712, %3711
  br i1 %3713, label %3679, label %3714

; <label>:3714                                    ; preds = %3708
  br label %3715

; <label>:3715                                    ; preds = %3714, %3672
  %3716 = phi float [ %3537, %3672 ], [ %3709, %3714 ]
  %3717 = phi float [ %3538, %3672 ], [ %3710, %3714 ]
  %3718 = fsub fast float %3453, %3716
  %3719 = select i1 %3455, float %3716, float %3718
  %3720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3721 = extractvalue %dx.types.CBufRet.f32 %3720, 0
  %3722 = extractvalue %dx.types.CBufRet.f32 %3720, 1
  %3723 = extractvalue %dx.types.CBufRet.f32 %3720, 2
  %3724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3725 = extractvalue %dx.types.CBufRet.f32 %3724, 0
  %3726 = extractvalue %dx.types.CBufRet.f32 %3724, 1
  %3727 = extractvalue %dx.types.CBufRet.f32 %3724, 2
  %3728 = extractvalue %dx.types.CBufRet.f32 %3724, 3
  %3729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3730 = extractvalue %dx.types.CBufRet.f32 %3729, 3
  %3731 = call float @dx.op.binary.f32(i32 36, float %3717, float %3730)  ; FMin(a,b)
  %3732 = fmul fast float %3728, %3719
  %3733 = call float @dx.op.unary.f32(i32 7, float %3732)  ; Saturate(value)
  %3734 = fsub fast float %3725, %3721
  %3735 = fsub fast float %3726, %3722
  %3736 = fsub fast float %3727, %3723
  %3737 = fmul fast float %3733, %3734
  %3738 = fmul fast float %3733, %3735
  %3739 = fmul fast float %3733, %3736
  %3740 = fadd fast float %3737, %3721
  %3741 = fadd fast float %3738, %3722
  %3742 = fadd fast float %3739, %3723
  %3743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3744 = extractvalue %dx.types.CBufRet.f32 %3743, 0
  %3745 = extractvalue %dx.types.CBufRet.f32 %3743, 1
  %3746 = fadd fast float %3745, %3744
  %3747 = call float @dx.op.unary.f32(i32 7, float %3746)  ; Saturate(value)
  %3748 = extractvalue %dx.types.CBufRet.f32 %3743, 2
  %3749 = extractvalue %dx.types.CBufRet.f32 %3743, 3
  %3750 = fadd fast float %3749, %3748
  %3751 = call float @dx.op.unary.f32(i32 7, float %3750)  ; Saturate(value)
  %3752 = fmul fast float %3747, %3731
  %3753 = fmul fast float %3752, %3751
  br label %3754

; <label>:3754                                    ; preds = %3715, %3634, %3469, %3451, %3449
  %3755 = phi float [ %3478, %3469 ], [ %3637, %3634 ], [ %3719, %3715 ], [ 0.000000e+00, %3449 ], [ 0.000000e+00, %3451 ]
  %3756 = phi float [ %3512, %3469 ], [ %3671, %3634 ], [ %3753, %3715 ], [ 0.000000e+00, %3449 ], [ 0.000000e+00, %3451 ]
  %3757 = phi float [ %3499, %3469 ], [ %3658, %3634 ], [ %3740, %3715 ], [ 0.000000e+00, %3449 ], [ 0.000000e+00, %3451 ]
  %3758 = phi float [ %3500, %3469 ], [ %3659, %3634 ], [ %3741, %3715 ], [ 0.000000e+00, %3449 ], [ 0.000000e+00, %3451 ]
  %3759 = phi float [ %3501, %3469 ], [ %3660, %3634 ], [ %3742, %3715 ], [ 0.000000e+00, %3449 ], [ 0.000000e+00, %3451 ]
  %3760 = fmul fast float %3392, %3756
  %3761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3762 = extractvalue %dx.types.CBufRet.f32 %3761, 2
  %3763 = fsub fast float %3399, %3762
  %3764 = fcmp fast olt float %3760, -2.000000e+01
  %3765 = call float @dx.op.unary.f32(i32 21, float %3760)  ; Exp(value)
  %3766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3767 = extractvalue %dx.types.CBufRet.f32 %3766, 2
  %3768 = extractvalue %dx.types.CBufRet.f32 %3766, 3
  %3769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3769, 2
  %3771 = fmul fast float %3768, %3763
  %3772 = call float @dx.op.unary.f32(i32 7, float %3771)  ; Saturate(value)
  %3773 = fsub fast float 1.000000e+00, %3772
  %3774 = fmul fast float %3384, 5.000000e-01
  %3775 = fadd fast float %3774, 5.000000e-01
  %3776 = call float @dx.op.unary.f32(i32 7, float %3775)  ; Saturate(value)
  %3777 = fsub fast float 1.000000e+00, %3776
  %3778 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3773)  ; FMax(a,b)
  %3779 = fdiv fast float %3777, %3778
  %3780 = fsub fast float %3763, %3341
  %3781 = call float @dx.op.unary.f32(i32 6, float %3780)  ; FAbs(value)
  %3782 = fmul fast float %3781, %3767
  %3783 = call float @dx.op.unary.f32(i32 7, float %3779)  ; Saturate(value)
  %3784 = fsub fast float 1.000000e+00, %3782
  %3785 = fmul fast float %3784, %3783
  %3786 = fadd fast float %3785, %3782
  %3787 = fmul fast float %3770, %3763
  %3788 = call float @dx.op.unary.f32(i32 7, float %3787)  ; Saturate(value)
  %3789 = fsub fast float 1.000000e+00, %3786
  %3790 = fmul fast float %3789, %3788
  %3791 = fadd fast float %3790, %3786
  %3792 = call float @dx.op.unary.f32(i32 7, float %3791)  ; Saturate(value)
  %3793 = fadd fast float %3765, -1.000000e+00
  %3794 = select i1 %3764, float -1.000000e+00, float %3793
  %3795 = fmul fast float %3792, %3794
  %3796 = fadd fast float %3795, 1.000000e+00
  %3797 = fsub fast float -0.000000e+00, %3795
  %3798 = fmul fast float %3757, %3797
  %3799 = fmul fast float %3758, %3797
  %3800 = fmul fast float %3759, %3797
  br label %3801

; <label>:3801                                    ; preds = %3754, %3350
  %3802 = phi float [ %3755, %3754 ], [ 0.000000e+00, %3350 ]
  %3803 = phi float [ %3796, %3754 ], [ 1.000000e+00, %3350 ]
  %3804 = phi float [ %3798, %3754 ], [ 0.000000e+00, %3350 ]
  %3805 = phi float [ %3799, %3754 ], [ 0.000000e+00, %3350 ]
  %3806 = phi float [ %3800, %3754 ], [ 0.000000e+00, %3350 ]
  %3807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3808 = extractvalue %dx.types.CBufRet.f32 %3807, 1
  %3809 = fsub fast float 1.000000e+00, %3803
  %3810 = fmul fast float %3809, %3385
  %3811 = fmul fast float %3810, %3808
  %3812 = fsub fast float %3385, %3811
  br i1 %3378, label %3813, label %3842, !dx.controlflow.hints !135

; <label>:3813                                    ; preds = %3801
  %3814 = fmul fast float %3386, %3375
  %3815 = fadd fast float %3814, %3376
  %3816 = call float @dx.op.unary.f32(i32 7, float %3815)  ; Saturate(value)
  %3817 = fmul fast float %3357, %3812
  %3818 = fsub fast float -0.000000e+00, %3817
  %3819 = fmul fast float %3358, %3812
  %3820 = fsub fast float -0.000000e+00, %3819
  %3821 = call float @dx.op.unary.f32(i32 21, float %3818)  ; Exp(value)
  %3822 = call float @dx.op.unary.f32(i32 21, float %3820)  ; Exp(value)
  %3823 = call float @dx.op.binary.f32(i32 35, float %3365, float %3821)  ; FMax(a,b)
  %3824 = call float @dx.op.binary.f32(i32 35, float %3365, float %3822)  ; FMax(a,b)
  %3825 = fsub fast float %3824, %3823
  %3826 = fmul fast float %3825, %3816
  %3827 = fadd fast float %3826, %3823
  %3828 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  %3829 = fsub fast float %3362, %3367
  %3830 = fsub fast float %3363, %3368
  %3831 = fsub fast float %3364, %3369
  %3832 = fmul fast float %3816, %3829
  %3833 = fmul fast float %3816, %3830
  %3834 = fmul fast float %3816, %3831
  %3835 = fadd fast float %3832, %3367
  %3836 = fadd fast float %3833, %3368
  %3837 = fadd fast float %3834, %3369
  %3838 = fsub fast float 1.000000e+00, %3828
  %3839 = fmul fast float %3838, %3835
  %3840 = fmul fast float %3838, %3836
  %3841 = fmul fast float %3838, %3837
  br label %3901

; <label>:3842                                    ; preds = %3801
  %3843 = fmul fast float %3812, %3374
  %3844 = call float @dx.op.unary.f32(i32 7, float %3843)  ; Saturate(value)
  %3845 = fsub fast float 2.000000e+00, %3844
  %3846 = fmul fast float %3844, 9.921875e-01
  %3847 = fmul fast float %3846, %3845
  %3848 = fadd fast float %3847, 3.906250e-03
  %3849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %31, float %3848, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3850 = extractvalue %dx.types.ResRet.f32 %3849, 0
  %3851 = fsub fast float %3844, %3850
  %3852 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3851)  ; FMax(a,b)
  %3853 = fmul fast float %3360, %3341
  %3854 = call float @dx.op.unary.f32(i32 6, float %3853)  ; FAbs(value)
  %3855 = fcmp fast ogt float %3854, 0x3EB0C6F7A0000000
  br i1 %3855, label %3856, label %3862, !dx.controlflow.hints !136

; <label>:3856                                    ; preds = %3842
  %3857 = fmul fast float %3853, 0xBFF7154760000000
  %3858 = call float @dx.op.unary.f32(i32 21, float %3857)  ; Exp(value)
  %3859 = fsub fast float 1.000000e+00, %3858
  %3860 = fdiv fast float %3859, %3853
  %3861 = fmul fast float %3860, %3370
  br label %3862

; <label>:3862                                    ; preds = %3856, %3842
  %3863 = phi float [ %3861, %3856 ], [ %3370, %3842 ]
  %3864 = fadd fast float %3863, %3372
  %3865 = fmul fast float %3864, %3852
  %3866 = fmul fast float %3357, %3865
  %3867 = fsub fast float -0.000000e+00, %3866
  %3868 = fmul fast float %3358, %3865
  %3869 = fsub fast float -0.000000e+00, %3868
  %3870 = fmul fast float %3359, %3865
  %3871 = fsub fast float -0.000000e+00, %3870
  %3872 = call float @dx.op.unary.f32(i32 21, float %3867)  ; Exp(value)
  %3873 = call float @dx.op.unary.f32(i32 21, float %3869)  ; Exp(value)
  %3874 = call float @dx.op.unary.f32(i32 21, float %3871)  ; Exp(value)
  %3875 = fmul fast float %3386, %3386
  %3876 = fadd fast float %3875, 1.000000e+00
  %3877 = fmul fast float %3876, 0x3FAE8EC8A0000000
  %3878 = fmul fast float %3877, %3367
  %3879 = fmul fast float %3877, %3368
  %3880 = fmul fast float %3877, %3369
  %3881 = fmul fast float %3386, %3365
  %3882 = fsub fast float 1.000000e+00, %3881
  %3883 = fmul fast float %3365, %3365
  %3884 = fsub fast float 1.000000e+00, %3883
  %3885 = fmul fast float %3884, 0x3FB45F3060000000
  %3886 = fmul fast float %3882, %3882
  %3887 = fdiv fast float 1.000000e+00, %3886
  %3888 = fmul fast float %3885, %3887
  %3889 = fmul fast float %3888, %3362
  %3890 = fmul fast float %3888, %3363
  %3891 = fmul fast float %3888, %3364
  %3892 = fadd fast float %3889, %3878
  %3893 = fadd fast float %3890, %3879
  %3894 = fadd fast float %3891, %3880
  %3895 = fsub fast float 1.000000e+00, %3872
  %3896 = fsub fast float 1.000000e+00, %3873
  %3897 = fsub fast float 1.000000e+00, %3874
  %3898 = fmul fast float %3892, %3895
  %3899 = fmul fast float %3893, %3896
  %3900 = fmul fast float %3894, %3897
  br label %3901

; <label>:3901                                    ; preds = %3862, %3813
  %3902 = phi float [ %3839, %3813 ], [ %3898, %3862 ]
  %3903 = phi float [ %3840, %3813 ], [ %3899, %3862 ]
  %3904 = phi float [ %3841, %3813 ], [ %3900, %3862 ]
  %3905 = phi float [ %3828, %3813 ], [ %3872, %3862 ]
  %3906 = phi float [ %3828, %3813 ], [ %3873, %3862 ]
  %3907 = phi float [ %3828, %3813 ], [ %3874, %3862 ]
  br i1 %3394, label %3908, label %4106, !dx.controlflow.hints !137

; <label>:3908                                    ; preds = %3901
  %3909 = extractvalue %dx.types.CBufRet.f32 %3807, 0
  %3910 = fmul fast float %3909, %3809
  %3911 = fsub fast float %3804, %3902
  %3912 = fsub fast float %3805, %3903
  %3913 = fsub fast float %3806, %3904
  %3914 = fmul fast float %3910, %3911
  %3915 = fmul fast float %3910, %3912
  %3916 = fmul fast float %3910, %3913
  %3917 = fadd fast float %3914, %3902
  %3918 = fadd fast float %3915, %3903
  %3919 = fadd fast float %3916, %3904
  %3920 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3905)  ; FMax(a,b)
  %3921 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3906)  ; FMax(a,b)
  %3922 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3907)  ; FMax(a,b)
  %3923 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3803)  ; FMax(a,b)
  %3924 = call float @dx.op.binary.f32(i32 35, float %3802, float %3812)  ; FMax(a,b)
  %3925 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3924)  ; FMax(a,b)
  %3926 = fdiv fast float %3802, %3925
  %3927 = call float @dx.op.unary.f32(i32 7, float %3926)  ; Saturate(value)
  %3928 = fdiv fast float %3812, %3925
  %3929 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  %3930 = fcmp fast une float %3923, 1.000000e+00
  br i1 %3930, label %3931, label %3944, !dx.controlflow.hints !138

; <label>:3931                                    ; preds = %3908
  %3932 = call float @dx.op.unary.f32(i32 23, float %3923)  ; Log(value)
  %3933 = fmul fast float %3932, 0x3FE62E4300000000
  %3934 = fmul fast float %3804, %3933
  %3935 = fsub fast float -0.000000e+00, %3934
  %3936 = fmul fast float %3805, %3933
  %3937 = fsub fast float -0.000000e+00, %3936
  %3938 = fmul fast float %3806, %3933
  %3939 = fsub fast float -0.000000e+00, %3938
  %3940 = fsub fast float 1.000000e+00, %3923
  %3941 = fdiv fast float %3935, %3940
  %3942 = fdiv fast float %3937, %3940
  %3943 = fdiv fast float %3939, %3940
  br label %3944

; <label>:3944                                    ; preds = %3931, %3908
  %3945 = phi float [ %3941, %3931 ], [ %3804, %3908 ]
  %3946 = phi float [ %3942, %3931 ], [ %3805, %3908 ]
  %3947 = phi float [ %3943, %3931 ], [ %3806, %3908 ]
  %3948 = phi float [ %3933, %3931 ], [ 0.000000e+00, %3908 ]
  %3949 = fcmp fast une float %3920, 1.000000e+00
  br i1 %3949, label %3950, label %3957, !dx.controlflow.hints !139

; <label>:3950                                    ; preds = %3944
  %3951 = call float @dx.op.unary.f32(i32 23, float %3920)  ; Log(value)
  %3952 = fmul fast float %3951, 0x3FE62E4300000000
  %3953 = fmul fast float %3917, %3952
  %3954 = fsub fast float -0.000000e+00, %3953
  %3955 = fsub fast float 1.000000e+00, %3920
  %3956 = fdiv fast float %3954, %3955
  br label %3957

; <label>:3957                                    ; preds = %3950, %3944
  %3958 = phi float [ %3956, %3950 ], [ %3917, %3944 ]
  %3959 = phi float [ %3952, %3950 ], [ 0.000000e+00, %3944 ]
  %3960 = fcmp fast une float %3921, 1.000000e+00
  br i1 %3960, label %3961, label %3968, !dx.controlflow.hints !139

; <label>:3961                                    ; preds = %3957
  %3962 = call float @dx.op.unary.f32(i32 23, float %3921)  ; Log(value)
  %3963 = fmul fast float %3962, 0x3FE62E4300000000
  %3964 = fmul fast float %3918, %3963
  %3965 = fsub fast float -0.000000e+00, %3964
  %3966 = fsub fast float 1.000000e+00, %3921
  %3967 = fdiv fast float %3965, %3966
  br label %3968

; <label>:3968                                    ; preds = %3961, %3957
  %3969 = phi float [ %3967, %3961 ], [ %3918, %3957 ]
  %3970 = phi float [ %3963, %3961 ], [ 0.000000e+00, %3957 ]
  %3971 = fcmp fast une float %3922, 1.000000e+00
  br i1 %3971, label %3972, label %3979, !dx.controlflow.hints !139

; <label>:3972                                    ; preds = %3968
  %3973 = call float @dx.op.unary.f32(i32 23, float %3922)  ; Log(value)
  %3974 = fmul fast float %3973, 0x3FE62E4300000000
  %3975 = fmul fast float %3919, %3974
  %3976 = fsub fast float -0.000000e+00, %3975
  %3977 = fsub fast float 1.000000e+00, %3922
  %3978 = fdiv fast float %3976, %3977
  br label %3979

; <label>:3979                                    ; preds = %3972, %3968
  %3980 = phi float [ %3978, %3972 ], [ %3919, %3968 ]
  %3981 = phi float [ %3974, %3972 ], [ 0.000000e+00, %3968 ]
  %3982 = fmul fast float %3945, %3929
  %3983 = fmul fast float %3946, %3929
  %3984 = fmul fast float %3947, %3929
  %3985 = fmul fast float %3948, %3929
  %3986 = fmul fast float %3958, %3927
  %3987 = fmul fast float %3969, %3927
  %3988 = fmul fast float %3980, %3927
  %3989 = fmul fast float %3959, %3927
  %3990 = fmul fast float %3970, %3927
  %3991 = fmul fast float %3981, %3927
  %3992 = fadd fast float %3986, %3982
  %3993 = fadd fast float %3987, %3983
  %3994 = fadd fast float %3988, %3984
  %3995 = fadd fast float %3989, %3985
  %3996 = fadd fast float %3990, %3985
  %3997 = fadd fast float %3991, %3985
  %3998 = fcmp fast une float %3995, 0.000000e+00
  br i1 %3998, label %3999, label %4006, !dx.controlflow.hints !140

; <label>:3999                                    ; preds = %3979
  %4000 = fmul fast float %3995, 0x3FF7154760000000
  %4001 = call float @dx.op.unary.f32(i32 21, float %4000)  ; Exp(value)
  %4002 = fsub fast float 1.000000e+00, %4001
  %4003 = fmul fast float %3992, %4002
  %4004 = fsub fast float -0.000000e+00, %4003
  %4005 = fdiv fast float %4004, %3995
  br label %4006

; <label>:4006                                    ; preds = %3999, %3979
  %4007 = phi float [ %4001, %3999 ], [ 1.000000e+00, %3979 ]
  %4008 = phi float [ %4005, %3999 ], [ %3992, %3979 ]
  %4009 = fcmp fast une float %3996, 0.000000e+00
  br i1 %4009, label %4010, label %4017, !dx.controlflow.hints !140

; <label>:4010                                    ; preds = %4006
  %4011 = fmul fast float %3996, 0x3FF7154760000000
  %4012 = call float @dx.op.unary.f32(i32 21, float %4011)  ; Exp(value)
  %4013 = fsub fast float 1.000000e+00, %4012
  %4014 = fmul fast float %3993, %4013
  %4015 = fsub fast float -0.000000e+00, %4014
  %4016 = fdiv fast float %4015, %3996
  br label %4017

; <label>:4017                                    ; preds = %4010, %4006
  %4018 = phi float [ %4012, %4010 ], [ 1.000000e+00, %4006 ]
  %4019 = phi float [ %4016, %4010 ], [ %3993, %4006 ]
  %4020 = fcmp fast une float %3997, 0.000000e+00
  br i1 %4020, label %4021, label %4028, !dx.controlflow.hints !140

; <label>:4021                                    ; preds = %4017
  %4022 = fmul fast float %3997, 0x3FF7154760000000
  %4023 = call float @dx.op.unary.f32(i32 21, float %4022)  ; Exp(value)
  %4024 = fsub fast float 1.000000e+00, %4023
  %4025 = fmul fast float %3994, %4024
  %4026 = fsub fast float -0.000000e+00, %4025
  %4027 = fdiv fast float %4026, %3997
  br label %4028

; <label>:4028                                    ; preds = %4021, %4017
  %4029 = phi float [ %4023, %4021 ], [ 1.000000e+00, %4017 ]
  %4030 = phi float [ %4027, %4021 ], [ %3994, %4017 ]
  %4031 = fcmp fast ogt float %3927, %3929
  br i1 %4031, label %4032, label %4052

; <label>:4032                                    ; preds = %4028
  %4033 = fsub fast float 1.000000e+00, %3929
  %4034 = fmul fast float %3945, %4033
  %4035 = fmul fast float %3946, %4033
  %4036 = fmul fast float %3947, %4033
  %4037 = fmul fast float %3948, %4033
  %4038 = fcmp fast une float %4037, 0.000000e+00
  br i1 %4038, label %4039, label %4090, !dx.controlflow.hints !141

; <label>:4039                                    ; preds = %4032
  %4040 = fmul fast float %4037, 0x3FF7154760000000
  %4041 = call float @dx.op.unary.f32(i32 21, float %4040)  ; Exp(value)
  %4042 = fsub fast float 1.000000e+00, %4041
  %4043 = fmul fast float %4034, %4042
  %4044 = fsub fast float -0.000000e+00, %4043
  %4045 = fmul fast float %4035, %4042
  %4046 = fsub fast float -0.000000e+00, %4045
  %4047 = fmul fast float %4036, %4042
  %4048 = fsub fast float -0.000000e+00, %4047
  %4049 = fdiv fast float %4044, %4037
  %4050 = fdiv fast float %4046, %4037
  %4051 = fdiv fast float %4048, %4037
  br label %4090

; <label>:4052                                    ; preds = %4028
  %4053 = fsub fast float 1.000000e+00, %3927
  %4054 = fmul fast float %3958, %4053
  %4055 = fmul fast float %3969, %4053
  %4056 = fmul fast float %3980, %4053
  %4057 = fmul fast float %3959, %4053
  %4058 = fmul fast float %3970, %4053
  %4059 = fmul fast float %3981, %4053
  %4060 = fcmp fast une float %4057, 0.000000e+00
  br i1 %4060, label %4061, label %4068, !dx.controlflow.hints !140

; <label>:4061                                    ; preds = %4052
  %4062 = fmul fast float %4057, 0x3FF7154760000000
  %4063 = call float @dx.op.unary.f32(i32 21, float %4062)  ; Exp(value)
  %4064 = fsub fast float 1.000000e+00, %4063
  %4065 = fmul fast float %4054, %4064
  %4066 = fsub fast float -0.000000e+00, %4065
  %4067 = fdiv fast float %4066, %4057
  br label %4068

; <label>:4068                                    ; preds = %4061, %4052
  %4069 = phi float [ %4067, %4061 ], [ %4054, %4052 ]
  %4070 = phi float [ %4063, %4061 ], [ 1.000000e+00, %4052 ]
  %4071 = fcmp fast une float %4058, 0.000000e+00
  br i1 %4071, label %4072, label %4079, !dx.controlflow.hints !140

; <label>:4072                                    ; preds = %4068
  %4073 = fmul fast float %4058, 0x3FF7154760000000
  %4074 = call float @dx.op.unary.f32(i32 21, float %4073)  ; Exp(value)
  %4075 = fsub fast float 1.000000e+00, %4074
  %4076 = fmul fast float %4055, %4075
  %4077 = fsub fast float -0.000000e+00, %4076
  %4078 = fdiv fast float %4077, %4058
  br label %4079

; <label>:4079                                    ; preds = %4072, %4068
  %4080 = phi float [ %4078, %4072 ], [ %4055, %4068 ]
  %4081 = phi float [ %4074, %4072 ], [ 1.000000e+00, %4068 ]
  %4082 = fcmp fast une float %4059, 0.000000e+00
  br i1 %4082, label %4083, label %4090, !dx.controlflow.hints !140

; <label>:4083                                    ; preds = %4079
  %4084 = fmul fast float %4059, 0x3FF7154760000000
  %4085 = call float @dx.op.unary.f32(i32 21, float %4084)  ; Exp(value)
  %4086 = fsub fast float 1.000000e+00, %4085
  %4087 = fmul fast float %4056, %4086
  %4088 = fsub fast float -0.000000e+00, %4087
  %4089 = fdiv fast float %4088, %4059
  br label %4090

; <label>:4090                                    ; preds = %4083, %4079, %4039, %4032
  %4091 = phi float [ %4089, %4083 ], [ %4051, %4039 ], [ %4036, %4032 ], [ %4056, %4079 ]
  %4092 = phi float [ %4080, %4083 ], [ %4050, %4039 ], [ %4035, %4032 ], [ %4080, %4079 ]
  %4093 = phi float [ %4069, %4083 ], [ %4049, %4039 ], [ %4034, %4032 ], [ %4069, %4079 ]
  %4094 = phi float [ %4085, %4083 ], [ %4041, %4039 ], [ 1.000000e+00, %4032 ], [ 1.000000e+00, %4079 ]
  %4095 = phi float [ %4081, %4083 ], [ %4041, %4039 ], [ 1.000000e+00, %4032 ], [ %4081, %4079 ]
  %4096 = phi float [ %4070, %4083 ], [ %4041, %4039 ], [ 1.000000e+00, %4032 ], [ %4070, %4079 ]
  %4097 = fmul fast float %4096, %4008
  %4098 = fmul fast float %4095, %4019
  %4099 = fmul fast float %4094, %4030
  %4100 = fadd fast float %4097, %4093
  %4101 = fadd fast float %4098, %4092
  %4102 = fadd fast float %4099, %4091
  %4103 = fmul fast float %4096, %4007
  %4104 = fmul fast float %4095, %4018
  %4105 = fmul fast float %4094, %4029
  br label %4106

; <label>:4106                                    ; preds = %4090, %3901
  %4107 = phi float [ %4105, %4090 ], [ %3907, %3901 ]
  %4108 = phi float [ %4104, %4090 ], [ %3906, %3901 ]
  %4109 = phi float [ %4103, %4090 ], [ %3905, %3901 ]
  %4110 = phi float [ %4102, %4090 ], [ %3904, %3901 ]
  %4111 = phi float [ %4101, %4090 ], [ %3903, %3901 ]
  %4112 = phi float [ %4100, %4090 ], [ %3902, %3901 ]
  %4113 = fmul fast float %4112, %3066
  %4114 = fmul fast float %4111, %3067
  %4115 = fmul fast float %4110, %3068
  %4116 = fmul fast float %4109, %3349
  %4117 = call float @dx.op.dot3.f32(i32 55, float %4109, float %4108, float %4107, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4118 = call float @dx.op.dot3.f32(i32 55, float %4113, float %4114, float %4115, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4119 = select i1 %215, float %4117, float %4109
  %4120 = select i1 %215, float %4117, float %4108
  %4121 = select i1 %215, float 1.000000e+00, float %4107
  %4122 = select i1 %215, float %4118, float %4113
  %4123 = select i1 %215, float 0.000000e+00, float %4114
  %4124 = select i1 %215, float 0.000000e+00, float %4115
  %4125 = fmul fast float %4119, %3343
  %4126 = fmul fast float %4120, %3344
  %4127 = fmul fast float %4121, %3345
  %4128 = fadd fast float %4125, %4122
  %4129 = fadd fast float %4126, %4123
  %4130 = fadd fast float %4124, %4127
  %4131 = fmul fast float %4119, %3346
  %4132 = fmul fast float %4120, %3347
  %4133 = fmul fast float %4121, %3348
  %4134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.i32 %4134, 0
  %4136 = icmp eq i32 %4135, 0
  br i1 %4136, label %4504, label %4137, !dx.controlflow.hints !142

; <label>:4137                                    ; preds = %4106
  %4138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4139 = extractvalue %dx.types.CBufRet.f32 %4138, 2
  %4140 = extractvalue %dx.types.CBufRet.f32 %4138, 3
  %4141 = fmul fast float %4139, %67
  %4142 = fmul fast float %4140, %68
  %4143 = fmul fast float %4141, 2.000000e+00
  %4144 = fmul fast float %4142, 2.000000e+00
  %4145 = fsub fast float 1.000000e+00, %4143
  %4146 = fsub fast float 1.000000e+00, %4144
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 0
  %4149 = extractvalue %dx.types.CBufRet.f32 %4147, 1
  %4150 = extractvalue %dx.types.CBufRet.f32 %4147, 2
  %4151 = fmul fast float %4145, %4148
  %4152 = fmul fast float %4145, %4149
  %4153 = fmul fast float %4145, %4150
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 0
  %4156 = extractvalue %dx.types.CBufRet.f32 %4154, 1
  %4157 = extractvalue %dx.types.CBufRet.f32 %4154, 2
  %4158 = fmul fast float %4146, %4155
  %4159 = fmul fast float %4146, %4156
  %4160 = fmul fast float %4146, %4157
  %4161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4162 = extractvalue %dx.types.CBufRet.f32 %4161, 0
  %4163 = extractvalue %dx.types.CBufRet.f32 %4161, 1
  %4164 = extractvalue %dx.types.CBufRet.f32 %4161, 2
  %4165 = fadd fast float %4158, %4162
  %4166 = fadd fast float %4165, %4151
  %4167 = fadd fast float %4159, %4163
  %4168 = fadd fast float %4167, %4152
  %4169 = fadd fast float %4160, %4164
  %4170 = fadd fast float %4169, %4153
  %4171 = fmul fast float %4166, %3342
  %4172 = fmul fast float %4168, %3342
  %4173 = fmul fast float %4170, %3342
  %4174 = fmul fast float %4171, %4171
  %4175 = fmul fast float %4172, %4172
  %4176 = fadd fast float %4174, %4175
  %4177 = fmul fast float %4173, %4173
  %4178 = fadd fast float %4176, %4177
  %4179 = call float @dx.op.unary.f32(i32 24, float %4178)  ; Sqrt(value)
  %4180 = extractvalue %dx.types.CBufRet.f32 %3069, 0
  %4181 = fsub fast float %4179, %4180
  %4182 = extractvalue %dx.types.CBufRet.f32 %3069, 2
  %4183 = fmul fast float %4181, %4182
  %4184 = call float @dx.op.unary.f32(i32 7, float %4183)  ; Saturate(value)
  %4185 = fadd fast float %4184, -5.000000e-01
  %4186 = fmul fast float %4185, 2.000000e+00
  %4187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %4188 = extractvalue %dx.types.CBufRet.f32 %4187, 2
  %4189 = call float @dx.op.binary.f32(i32 36, float %4188, float %4186)  ; FMin(a,b)
  %4190 = fsub fast float -0.000000e+00, %4188
  %4191 = fcmp fast ogt float %4189, %4190
  br i1 %4191, label %4192, label %4504, !dx.controlflow.hints !143

; <label>:4192                                    ; preds = %4137
  %4193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.f32 %4193, 3
  %4195 = fcmp fast ogt float %4194, 0.000000e+00
  br i1 %4195, label %4196, label %4271, !dx.controlflow.hints !144

; <label>:4196                                    ; preds = %4192
  %4197 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %4198 = extractvalue %dx.types.Dimensions %4197, 0
  %4199 = sitofp i32 %4198 to float
  %4200 = extractvalue %dx.types.Dimensions %4197, 1
  %4201 = sitofp i32 %4200 to float
  %4202 = fmul fast float %4141, %4199
  %4203 = fmul fast float %4142, %4201
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 1
  %4206 = fsub fast float -0.000000e+00, %4205
  %4207 = fptoui float %4206 to i32
  %4208 = fptoui float %4202 to i32
  %4209 = fptoui float %4203 to i32
  %4210 = and i32 %4207, 31
  %4211 = lshr i32 %4208, %4210
  %4212 = lshr i32 %4209, %4210
  %4213 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %4207, i32 %4211, i32 %4212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 0
  %4215 = fcmp fast olt float %4214, -1.000000e+00
  %4216 = fcmp fast ogt float %4214, -1.000000e+00
  %4217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4218 = extractvalue %dx.types.CBufRet.f32 %4217, 1
  %4219 = select i1 %4216, float %4218, float 1.000000e+00
  %4220 = fadd fast float %4214, 1.000000e+00
  %4221 = fmul fast float %4219, %4220
  %4222 = call float @dx.op.unary.f32(i32 6, float %4221)  ; FAbs(value)
  %4223 = extractvalue %dx.types.CBufRet.f32 %4217, 3
  %4224 = fcmp fast oge float %4222, %4223
  %4225 = select i1 %4224, float 0x4197782600000000, float %4222
  %4226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %4227 = extractvalue %dx.types.CBufRet.f32 %4226, 0
  %4228 = extractvalue %dx.types.CBufRet.f32 %4226, 1
  %4229 = extractvalue %dx.types.CBufRet.f32 %4226, 2
  %4230 = select i1 %4215, float %4227, float %4148
  %4231 = select i1 %4215, float %4228, float %4149
  %4232 = select i1 %4215, float %4229, float %4150
  %4233 = fmul fast float %4230, %4145
  %4234 = fmul fast float %4231, %4145
  %4235 = fmul fast float %4232, %4145
  %4236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %4237 = extractvalue %dx.types.CBufRet.f32 %4236, 0
  %4238 = extractvalue %dx.types.CBufRet.f32 %4236, 1
  %4239 = extractvalue %dx.types.CBufRet.f32 %4236, 2
  %4240 = select i1 %4215, float %4237, float %4155
  %4241 = select i1 %4215, float %4238, float %4156
  %4242 = select i1 %4215, float %4239, float %4157
  %4243 = fmul fast float %4240, %4146
  %4244 = fmul fast float %4241, %4146
  %4245 = fmul fast float %4242, %4146
  %4246 = fadd fast float %4243, %4233
  %4247 = fadd fast float %4244, %4234
  %4248 = fadd fast float %4245, %4235
  %4249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %4250 = extractvalue %dx.types.CBufRet.f32 %4249, 0
  %4251 = extractvalue %dx.types.CBufRet.f32 %4249, 1
  %4252 = extractvalue %dx.types.CBufRet.f32 %4249, 2
  %4253 = select i1 %4215, float %4250, float %4162
  %4254 = select i1 %4215, float %4251, float %4163
  %4255 = select i1 %4215, float %4252, float %4164
  %4256 = fadd fast float %4246, %4253
  %4257 = fadd fast float %4247, %4254
  %4258 = fadd fast float %4248, %4255
  %4259 = fmul fast float %4256, %4225
  %4260 = fmul fast float %4257, %4225
  %4261 = fmul fast float %4258, %4225
  %4262 = fmul fast float %4259, %4259
  %4263 = fmul fast float %4260, %4260
  %4264 = fadd fast float %4262, %4263
  %4265 = fmul fast float %4261, %4261
  %4266 = fadd fast float %4264, %4265
  %4267 = call float @dx.op.unary.f32(i32 24, float %4266)  ; Sqrt(value)
  %4268 = fsub fast float %4267, %4180
  %4269 = fmul fast float %4268, %4182
  %4270 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  br label %4271

; <label>:4271                                    ; preds = %4196, %4192
  %4272 = phi float [ %4270, %4196 ], [ 1.000000e+00, %4192 ]
  %4273 = fmul fast float %4189, 5.000000e-01
  %4274 = fadd fast float %4273, 5.000000e-01
  %4275 = call float @dx.op.unary.f32(i32 22, float %4274)  ; Frc(value)
  %4276 = call float @dx.op.unary.f32(i32 27, float %4275)  ; Round_ni(value)
  %4277 = call float @dx.op.unary.f32(i32 22, float %4275)  ; Frc(value)
  %4278 = fmul fast float %4277, 2.000000e+00
  %4279 = fadd fast float %4278, -1.000000e+00
  %4280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %31, float %4141, float %4142, float %4276, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4281 = extractvalue %dx.types.ResRet.f32 %4280, 0
  %4282 = extractvalue %dx.types.ResRet.f32 %4280, 1
  %4283 = extractvalue %dx.types.ResRet.f32 %4280, 2
  %4284 = extractvalue %dx.types.ResRet.f32 %4280, 3
  %4285 = fadd fast float %4281, -5.000000e-01
  %4286 = fadd fast float %4283, -5.000000e-01
  %4287 = fmul fast float %4285, 0xBFD5555560000000
  %4288 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4286, float %4287)  ; FMad(a,b,c)
  %4289 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4282, float 0.000000e+00)  ; FMad(a,b,c)
  %4290 = fadd fast float %4289, %4284
  %4291 = fmul fast float %4285, -7.500000e-01
  %4292 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4286, float %4291)  ; FMad(a,b,c)
  %4293 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4282, float 0.000000e+00)  ; FMad(a,b,c)
  %4294 = fadd fast float %4293, %4284
  %4295 = call float @dx.op.binary.f32(i32 35, float %4288, float -1.000000e+00)  ; FMax(a,b)
  %4296 = call float @dx.op.binary.f32(i32 35, float %4290, float -1.000000e+00)  ; FMax(a,b)
  %4297 = call float @dx.op.binary.f32(i32 35, float %4292, float -1.000000e+00)  ; FMax(a,b)
  %4298 = call float @dx.op.binary.f32(i32 35, float %4294, float -1.000000e+00)  ; FMax(a,b)
  %4299 = call float @dx.op.binary.f32(i32 36, float %4295, float 1.000000e+00)  ; FMin(a,b)
  %4300 = call float @dx.op.binary.f32(i32 36, float %4296, float 1.000000e+00)  ; FMin(a,b)
  %4301 = call float @dx.op.binary.f32(i32 36, float %4297, float 1.000000e+00)  ; FMin(a,b)
  %4302 = call float @dx.op.binary.f32(i32 36, float %4298, float 1.000000e+00)  ; FMin(a,b)
  %4303 = fcmp fast olt float %4299, 0x3FEFFF8020000000
  br i1 %4303, label %4304, label %4419, !dx.controlflow.hints !145

; <label>:4304                                    ; preds = %4271
  %4305 = extractvalue %dx.types.CBufRet.f32 %4187, 3
  %4306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %4307 = extractvalue %dx.types.CBufRet.f32 %4306, 0
  %4308 = extractvalue %dx.types.CBufRet.f32 %4306, 1
  %4309 = extractvalue %dx.types.CBufRet.f32 %4306, 2
  %4310 = extractvalue %dx.types.CBufRet.f32 %4306, 3
  %4311 = fsub fast float %4307, %4299
  %4312 = fsub fast float %4308, %4300
  %4313 = fsub fast float %4309, %4301
  %4314 = fsub fast float %4310, %4302
  %4315 = fmul fast float %4311, %4305
  %4316 = fmul fast float %4312, %4305
  %4317 = fmul fast float %4313, %4305
  %4318 = fmul fast float %4314, %4305
  %4319 = fadd fast float %4315, %4299
  %4320 = fadd fast float %4316, %4300
  %4321 = fsub fast float -0.000000e+00, %4320
  %4322 = fadd fast float %4317, %4301
  %4323 = fadd fast float %4318, %4302
  %4324 = fmul fast float %4319, %4319
  %4325 = fsub fast float %4320, %4324
  %4326 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4325)  ; FMax(a,b)
  %4327 = fdiv fast float 1.000000e+00, %4326
  %4328 = fmul fast float %4320, %4319
  %4329 = fsub fast float %4322, %4328
  %4330 = fsub fast float %4279, %4319
  %4331 = fmul fast float %4279, %4279
  %4332 = fsub fast float %4331, %4320
  %4333 = fmul fast float %4330, %4327
  %4334 = fmul fast float %4333, %4329
  %4335 = fsub fast float %4332, %4334
  %4336 = fmul fast float %4320, %4320
  %4337 = fsub fast float %4323, %4336
  %4338 = fmul fast float %4329, %4329
  %4339 = fmul fast float %4338, %4327
  %4340 = fsub fast float %4337, %4339
  %4341 = fdiv fast float %4335, %4340
  %4342 = fmul fast float %4329, %4341
  %4343 = fsub fast float %4330, %4342
  %4344 = fmul fast float %4343, %4327
  %4345 = fmul fast float %4344, %4319
  %4346 = fsub fast float 1.000000e+00, %4345
  %4347 = fmul fast float %4320, %4341
  %4348 = fsub fast float %4346, %4347
  %4349 = fmul fast float %4344, %4344
  %4350 = fmul fast float %4341, 4.000000e+00
  %4351 = fmul fast float %4350, %4348
  %4352 = fsub fast float %4349, %4351
  %4353 = call float @dx.op.unary.f32(i32 24, float %4352)  ; Sqrt(value)
  %4354 = fcmp fast oge float %4344, 0.000000e+00
  %4355 = fsub fast float -0.000000e+00, %4353
  %4356 = select i1 %4354, float %4355, float %4353
  %4357 = fsub fast float %4356, %4344
  %4358 = fdiv fast float %4357, %4341
  %4359 = fdiv fast float %4348, %4357
  %4360 = fmul fast float %4358, 5.000000e-01
  %4361 = fmul fast float %4359, 2.000000e+00
  %4362 = select i1 %4354, float %4360, float %4361
  %4363 = select i1 %4354, float %4361, float %4360
  %4364 = call float @dx.op.binary.f32(i32 35, float %4362, float %4363)  ; FMax(a,b)
  %4365 = call float @dx.op.binary.f32(i32 36, float %4362, float %4363)  ; FMin(a,b)
  %4366 = fcmp fast ogt float %4279, %4365
  br i1 %4366, label %4367, label %4377

; <label>:4367                                    ; preds = %4304
  %4368 = fsub fast float %4279, %4365
  %4369 = fsub fast float %4364, %4365
  %4370 = fmul fast float %4368, %4369
  %4371 = fmul fast float %4364, %4279
  %4372 = fadd fast float %4364, %4279
  %4373 = fmul fast float %4372, %4319
  %4374 = fadd fast float %4371, %4320
  %4375 = fsub fast float %4374, %4373
  %4376 = fdiv fast float %4375, %4370
  br label %4377

; <label>:4377                                    ; preds = %4367, %4304
  %4378 = phi float [ %4376, %4367 ], [ 0.000000e+00, %4304 ]
  %4379 = fcmp fast ogt float %4279, %4364
  %4380 = fsub fast float %4279, %4364
  br i1 %4379, label %4381, label %4391

; <label>:4381                                    ; preds = %4377
  %4382 = fsub fast float %4364, %4365
  %4383 = fmul fast float %4382, %4380
  %4384 = fmul fast float %4365, %4279
  %4385 = fadd fast float %4365, %4279
  %4386 = fmul fast float %4385, %4319
  %4387 = fsub fast float %4321, %4384
  %4388 = fadd fast float %4387, %4386
  %4389 = fdiv fast float %4388, %4383
  %4390 = fadd fast float %4389, %4378
  br label %4391

; <label>:4391                                    ; preds = %4381, %4377
  %4392 = phi float [ %4390, %4381 ], [ %4378, %4377 ]
  %4393 = fsub fast float %4279, %4365
  %4394 = fmul fast float %4393, %4380
  %4395 = fmul fast float %4365, %4364
  %4396 = fadd fast float %4365, %4364
  %4397 = fmul fast float %4396, %4319
  %4398 = fadd fast float %4395, %4320
  %4399 = fsub fast float %4398, %4397
  %4400 = fdiv fast float %4399, %4394
  %4401 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4402 = fcmp fast oeq float %3070, 0.000000e+00
  %4403 = extractvalue %dx.types.CBufRet.f32 %4187, 0
  %4404 = fcmp fast oeq float %4403, 0.000000e+00
  %4405 = or i1 %4402, %4404
  %4406 = fmul fast float %4403, 2.000000e+00
  %4407 = fadd fast float %4188, %4189
  %4408 = fdiv fast float %4407, %4406
  %4409 = call float @dx.op.unary.f32(i32 7, float %4408)  ; Saturate(value)
  %4410 = fmul fast float %4409, 2.000000e+00
  %4411 = fsub fast float 3.000000e+00, %4410
  %4412 = fmul fast float %4409, %4409
  %4413 = fmul fast float %4412, %4411
  %4414 = select i1 %4405, float 1.000000e+00, float %4413
  %4415 = fmul fast float %4400, %3070
  %4416 = fadd fast float %4401, %4415
  %4417 = call float @dx.op.unary.f32(i32 7, float %4416)  ; Saturate(value)
  %4418 = fmul fast float %4414, %4417
  br label %4419

; <label>:4419                                    ; preds = %4391, %4271
  %4420 = phi float [ %4418, %4391 ], [ 0.000000e+00, %4271 ]
  %4421 = fsub fast float 1.000000e+00, %4420
  %4422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %31, float %4141, float %4142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4423 = extractvalue %dx.types.ResRet.f32 %4422, 0
  %4424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %4425 = extractvalue %dx.types.CBufRet.i32 %4424, 2
  %4426 = icmp eq i32 %4425, 0
  br i1 %4426, label %4432, label %4427

; <label>:4427                                    ; preds = %4419
  %4428 = call float @dx.op.unary.f32(i32 7, float %4420)  ; Saturate(value)
  %4429 = fadd fast float %4423, -1.000000e+00
  %4430 = fmul fast float %4428, %4429
  %4431 = fadd fast float %4430, 1.000000e+00
  br label %4432

; <label>:4432                                    ; preds = %4427, %4419
  %4433 = phi float [ %4431, %4427 ], [ %4421, %4419 ]
  br i1 %4195, label %4434, label %4452

; <label>:4434                                    ; preds = %4432
  %4435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %4436 = extractvalue %dx.types.CBufRet.f32 %4435, 1
  %4437 = fsub fast float %4272, %4436
  %4438 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4439 = fsub fast float %4272, %4194
  %4440 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4441 = fsub fast float %4438, %4440
  %4442 = fsub fast float %4274, %4440
  %4443 = fdiv fast float %4442, %4441
  %4444 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4445 = fmul fast float %4444, 2.000000e+00
  %4446 = fsub fast float 3.000000e+00, %4445
  %4447 = fsub fast float %4423, %4433
  %4448 = fmul fast float %4444, %4444
  %4449 = fmul fast float %4448, %4447
  %4450 = fmul fast float %4449, %4446
  %4451 = fadd fast float %4450, %4433
  br label %4452

; <label>:4452                                    ; preds = %4434, %4432
  %4453 = phi float [ %4451, %4434 ], [ %4433, %4432 ]
  %4454 = call float @dx.op.binary.f32(i32 35, float %4423, float %4453)  ; FMax(a,b)
  %4455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %4456 = extractvalue %dx.types.CBufRet.i32 %4455, 2
  %4457 = and i32 %4456, 1
  %4458 = icmp eq i32 %4457, 0
  %4459 = fcmp fast une float %4454, 1.000000e+00
  %4460 = and i1 %4459, %4458
  br i1 %4460, label %4461, label %4480

; <label>:4461                                    ; preds = %4452
  %4462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %31, float %4141, float %4142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4463 = extractvalue %dx.types.ResRet.f32 %4462, 0
  %4464 = extractvalue %dx.types.ResRet.f32 %4462, 1
  %4465 = extractvalue %dx.types.ResRet.f32 %4462, 2
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 1
  %4468 = fmul fast float %4467, %4463
  %4469 = fmul fast float %4467, %4464
  %4470 = fmul fast float %4467, %4465
  %4471 = fcmp fast ogt float %4423, 0x3FEFFF2E40000000
  %4472 = fsub fast float 1.000000e+00, %4454
  %4473 = fsub fast float 1.000000e+00, %4423
  %4474 = fdiv fast float %4472, %4473
  %4475 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  %4476 = select i1 %4471, float 0.000000e+00, float %4475
  %4477 = fmul fast float %4468, %4476
  %4478 = fmul fast float %4469, %4476
  %4479 = fmul fast float %4470, %4476
  br label %4480

; <label>:4480                                    ; preds = %4461, %4452
  %4481 = phi float [ 0.000000e+00, %4452 ], [ %4477, %4461 ]
  %4482 = phi float [ 0.000000e+00, %4452 ], [ %4478, %4461 ]
  %4483 = phi float [ 0.000000e+00, %4452 ], [ %4479, %4461 ]
  %4484 = fmul fast float %4481, %3066
  %4485 = fmul fast float %4482, %3067
  %4486 = fmul fast float %4483, %3068
  %4487 = fmul fast float %4454, %4116
  %4488 = call float @dx.op.dot3.f32(i32 55, float %4454, float %4454, float %4454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4489 = call float @dx.op.dot3.f32(i32 55, float %4484, float %4485, float %4486, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4490 = select i1 %215, float %4488, float %4454
  %4491 = select i1 %215, float 1.000000e+00, float %4454
  %4492 = select i1 %215, float %4489, float %4484
  %4493 = select i1 %215, float 0.000000e+00, float %4485
  %4494 = select i1 %215, float 0.000000e+00, float %4486
  %4495 = fmul fast float %4490, %4128
  %4496 = fmul fast float %4490, %4129
  %4497 = fmul fast float %4491, %4130
  %4498 = fadd fast float %4495, %4492
  %4499 = fadd fast float %4496, %4493
  %4500 = fadd fast float %4494, %4497
  %4501 = fmul fast float %4490, %4131
  %4502 = fmul fast float %4490, %4132
  %4503 = fmul fast float %4491, %4133
  br label %4504

; <label>:4504                                    ; preds = %4480, %4137, %4106, %3338
  %4505 = phi float [ %3343, %3338 ], [ %4128, %4106 ], [ %4498, %4480 ], [ %4128, %4137 ]
  %4506 = phi float [ %3344, %3338 ], [ %4129, %4106 ], [ %4499, %4480 ], [ %4129, %4137 ]
  %4507 = phi float [ %3345, %3338 ], [ %4130, %4106 ], [ %4500, %4480 ], [ %4130, %4137 ]
  %4508 = phi float [ %3346, %3338 ], [ %4131, %4106 ], [ %4501, %4480 ], [ %4131, %4137 ]
  %4509 = phi float [ %3347, %3338 ], [ %4132, %4106 ], [ %4502, %4480 ], [ %4132, %4137 ]
  %4510 = phi float [ %3348, %3338 ], [ %4133, %4106 ], [ %4503, %4480 ], [ %4133, %4137 ]
  %4511 = phi float [ %3349, %3338 ], [ %4116, %4106 ], [ %4487, %4480 ], [ %4116, %4137 ]
  %4512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4513 = extractvalue %dx.types.CBufRet.f32 %4512, 2
  %4514 = extractvalue %dx.types.CBufRet.f32 %4512, 3
  %4515 = fmul fast float %4513, %67
  %4516 = fmul fast float %4514, %68
  %4517 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4518 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4519 = select i1 %3080, i32 2, i32 0
  %4520 = or i32 %4519, 1
  %4521 = uitofp i32 %4520 to float
  %4522 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %4517, float %4518, float %4521, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4523 = extractvalue %dx.types.ResRet.f32 %4522, 0
  %4524 = extractvalue %dx.types.ResRet.f32 %4522, 1
  %4525 = extractvalue %dx.types.ResRet.f32 %4522, 2
  %4526 = extractvalue %dx.types.ResRet.f32 %4522, 3
  %4527 = add nuw nsw i32 %4519, 2
  %4528 = uitofp i32 %4527 to float
  %4529 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %4517, float %4518, float %4528, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4530 = extractvalue %dx.types.ResRet.f32 %4529, 0
  %4531 = extractvalue %dx.types.ResRet.f32 %4529, 1
  %4532 = extractvalue %dx.types.ResRet.f32 %4529, 2
  %4533 = extractvalue %dx.types.ResRet.f32 %4529, 3
  %4534 = call float @dx.op.binary.f32(i32 35, float %4524, float %4525)  ; FMax(a,b)
  %4535 = call float @dx.op.binary.f32(i32 35, float %4523, float %4534)  ; FMax(a,b)
  %4536 = call float @dx.op.binary.f32(i32 35, float %4535, float %4526)  ; FMax(a,b)
  %4537 = call float @dx.op.binary.f32(i32 36, float %4531, float %4532)  ; FMin(a,b)
  %4538 = call float @dx.op.binary.f32(i32 36, float %4530, float %4537)  ; FMin(a,b)
  %4539 = call float @dx.op.binary.f32(i32 36, float %4538, float %4533)  ; FMin(a,b)
  %4540 = fmul fast float %4536, 2.550000e+02
  %4541 = fadd fast float %4540, 0x3F70101020000000
  %4542 = fptoui float %4541 to i32
  %4543 = fmul fast float %4539, 2.550000e+02
  %4544 = fadd fast float %4543, 0x3F70101020000000
  %4545 = fptoui float %4544 to i32
  %4546 = icmp ult i32 %4542, %4545
  br i1 %4546, label %4547, label %4716

; <label>:4547                                    ; preds = %4504
  %4548 = fcmp fast ogt float %57, 9.843750e-01
  %4549 = fadd fast float %3342, -4.000000e+00
  %4550 = select i1 %4548, float -4.000000e+00, float %4549
  %4551 = call float @dx.op.binary.f32(i32 35, float %4550, float 0.000000e+00)  ; FMax(a,b)
  %4552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4553 = extractvalue %dx.types.CBufRet.f32 %4552, 0
  %4554 = fadd fast float %4553, %4551
  %4555 = extractvalue %dx.types.CBufRet.f32 %4552, 2
  %4556 = fmul fast float %4554, %4555
  %4557 = call float @dx.op.unary.f32(i32 23, float %4556)  ; Log(value)
  %4558 = extractvalue %dx.types.CBufRet.f32 %4552, 3
  %4559 = fmul fast float %4558, %4557
  %4560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4561 = extractvalue %dx.types.CBufRet.f32 %4560, 2
  %4562 = fmul fast float %4559, %4561
  %4563 = call float @dx.op.unary.f32(i32 7, float %4562)  ; Saturate(value)
  %4564 = uitofp i32 %4542 to float
  %4565 = uitofp i32 %4545 to float
  %4566 = fadd fast float %4564, 5.000000e-01
  %4567 = fadd fast float %4565, 5.000000e-01
  %4568 = fmul fast float %4561, %4566
  %4569 = fmul fast float %4561, %4567
  %4570 = fadd fast float %4568, 0x3F0FFB4800000000
  %4571 = fadd fast float %4569, 0xBF0FFB4800000000
  %4572 = call float @dx.op.binary.f32(i32 35, float %4563, float %4570)  ; FMax(a,b)
  %4573 = call float @dx.op.binary.f32(i32 36, float %4572, float %4571)  ; FMin(a,b)
  %4574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4575 = extractvalue %dx.types.CBufRet.f32 %4574, 1
  %4576 = extractvalue %dx.types.CBufRet.f32 %4574, 2
  %4577 = extractvalue %dx.types.CBufRet.f32 %4574, 0
  %4578 = select i1 %3080, float %4577, float 0.000000e+00
  %4579 = fmul fast float %4575, %4573
  %4580 = fadd fast float %4578, %4579
  %4581 = fadd fast float %4578, %4576
  %4582 = fsub fast float %4575, %4576
  %4583 = fadd fast float %4582, %4578
  %4584 = call float @dx.op.binary.f32(i32 35, float %4580, float %4581)  ; FMax(a,b)
  %4585 = call float @dx.op.binary.f32(i32 36, float %4584, float %4583)  ; FMin(a,b)
  %4586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %29, float %4517, float %4518, float %4585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4587 = extractvalue %dx.types.ResRet.f32 %4586, 0
  %4588 = extractvalue %dx.types.ResRet.f32 %4586, 1
  %4589 = extractvalue %dx.types.ResRet.f32 %4586, 2
  %4590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4591 = extractvalue %dx.types.CBufRet.i32 %4590, 0
  %4592 = extractvalue %dx.types.CBufRet.i32 %4590, 1
  %4593 = uitofp i32 %4591 to float
  %4594 = uitofp i32 %4592 to float
  %4595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4596 = extractvalue %dx.types.CBufRet.f32 %4595, 0
  %4597 = extractvalue %dx.types.CBufRet.f32 %4595, 1
  %4598 = fmul fast float %4593, %4517
  %4599 = fmul fast float %4594, %4518
  %4600 = fadd fast float %4598, -5.000000e-01
  %4601 = fadd fast float %4599, -5.000000e-01
  %4602 = call float @dx.op.unary.f32(i32 22, float %4600)  ; Frc(value)
  %4603 = call float @dx.op.unary.f32(i32 22, float %4601)  ; Frc(value)
  %4604 = fmul fast float %4602, %4602
  %4605 = fmul fast float %4604, %4602
  %4606 = fsub fast float 3.000000e+00, %4602
  %4607 = fmul fast float %4604, %4606
  %4608 = fmul fast float %4602, 3.000000e+00
  %4609 = fmul fast float %4605, 3.000000e+00
  %4610 = fmul fast float %4604, 6.000000e+00
  %4611 = fsub fast float %4609, %4610
  %4612 = fadd fast float %4611, 4.000000e+00
  %4613 = fmul fast float %4612, 0x3FC5555560000000
  %4614 = fmul fast float %4605, -3.000000e+00
  %4615 = fadd fast float %4604, %4602
  %4616 = fmul fast float %4615, 3.000000e+00
  %4617 = fadd fast float %4614, 1.000000e+00
  %4618 = fadd fast float %4617, %4616
  %4619 = fmul fast float %4605, 0x3FC5555560000000
  %4620 = fmul fast float %4603, %4603
  %4621 = fmul fast float %4620, %4603
  %4622 = fsub fast float 3.000000e+00, %4603
  %4623 = fmul fast float %4620, %4622
  %4624 = fmul fast float %4603, 3.000000e+00
  %4625 = fmul fast float %4621, 3.000000e+00
  %4626 = fmul fast float %4620, 6.000000e+00
  %4627 = fsub fast float %4625, %4626
  %4628 = fadd fast float %4627, 4.000000e+00
  %4629 = fmul fast float %4628, 0x3FC5555560000000
  %4630 = fmul fast float %4621, -3.000000e+00
  %4631 = fadd fast float %4620, %4603
  %4632 = fmul fast float %4631, 3.000000e+00
  %4633 = fadd fast float %4630, 1.000000e+00
  %4634 = fadd fast float %4633, %4632
  %4635 = fmul fast float %4621, 0x3FC5555560000000
  %4636 = fadd fast float %4602, 1.000000e+00
  %4637 = fsub fast float 1.000000e+00, %4608
  %4638 = fadd fast float %4637, %4607
  %4639 = fadd fast float %4638, %4612
  %4640 = fmul fast float %4639, 0x3FC5555560000000
  %4641 = fdiv fast float %4613, %4640
  %4642 = fsub fast float %4636, %4641
  %4643 = fsub fast float 1.000000e+00, %4602
  %4644 = fadd fast float %4618, %4605
  %4645 = fmul fast float %4644, 0x3FC5555560000000
  %4646 = fdiv fast float %4619, %4645
  %4647 = fadd fast float %4643, %4646
  %4648 = fadd fast float %4603, 1.000000e+00
  %4649 = fsub fast float 1.000000e+00, %4624
  %4650 = fadd fast float %4649, %4623
  %4651 = fadd fast float %4650, %4628
  %4652 = fmul fast float %4651, 0x3FC5555560000000
  %4653 = fdiv fast float %4629, %4652
  %4654 = fsub fast float %4648, %4653
  %4655 = fsub fast float 1.000000e+00, %4603
  %4656 = fadd fast float %4634, %4621
  %4657 = fmul fast float %4656, 0x3FC5555560000000
  %4658 = fdiv fast float %4635, %4657
  %4659 = fadd fast float %4658, %4655
  %4660 = fmul fast float %4642, %4596
  %4661 = fsub fast float %4517, %4660
  %4662 = fmul fast float %4647, %4596
  %4663 = fadd fast float %4662, %4517
  %4664 = fmul fast float %4659, %4597
  %4665 = fadd fast float %4664, %4518
  %4666 = fmul fast float %4654, %4597
  %4667 = fsub fast float %4518, %4666
  %4668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4661, float %4667, float %4585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4669 = extractvalue %dx.types.ResRet.f32 %4668, 0
  %4670 = extractvalue %dx.types.ResRet.f32 %4668, 1
  %4671 = extractvalue %dx.types.ResRet.f32 %4668, 2
  %4672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4663, float %4667, float %4585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4673 = extractvalue %dx.types.ResRet.f32 %4672, 0
  %4674 = extractvalue %dx.types.ResRet.f32 %4672, 1
  %4675 = extractvalue %dx.types.ResRet.f32 %4672, 2
  %4676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4661, float %4665, float %4585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4677 = extractvalue %dx.types.ResRet.f32 %4676, 0
  %4678 = extractvalue %dx.types.ResRet.f32 %4676, 1
  %4679 = extractvalue %dx.types.ResRet.f32 %4676, 2
  %4680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4663, float %4665, float %4585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4681 = extractvalue %dx.types.ResRet.f32 %4680, 0
  %4682 = extractvalue %dx.types.ResRet.f32 %4680, 1
  %4683 = extractvalue %dx.types.ResRet.f32 %4680, 2
  %4684 = fsub fast float %4677, %4669
  %4685 = fsub fast float %4678, %4670
  %4686 = fsub fast float %4679, %4671
  %4687 = fmul fast float %4684, %4657
  %4688 = fmul fast float %4685, %4657
  %4689 = fmul fast float %4686, %4657
  %4690 = fadd fast float %4687, %4669
  %4691 = fadd fast float %4688, %4670
  %4692 = fadd fast float %4689, %4671
  %4693 = fsub fast float %4681, %4673
  %4694 = fsub fast float %4682, %4674
  %4695 = fsub fast float %4683, %4675
  %4696 = fmul fast float %4693, %4657
  %4697 = fmul fast float %4694, %4657
  %4698 = fmul fast float %4695, %4657
  %4699 = fsub fast float %4673, %4690
  %4700 = fadd fast float %4699, %4696
  %4701 = fsub fast float %4674, %4691
  %4702 = fadd fast float %4701, %4697
  %4703 = fsub fast float %4675, %4692
  %4704 = fadd fast float %4703, %4698
  %4705 = fmul fast float %4700, %4645
  %4706 = fmul fast float %4702, %4645
  %4707 = fmul fast float %4704, %4645
  %4708 = fadd fast float %4705, %4690
  %4709 = fadd fast float %4706, %4691
  %4710 = fadd fast float %4707, %4692
  %4711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4712 = extractvalue %dx.types.CBufRet.f32 %4711, 1
  %4713 = fmul fast float %4708, %4712
  %4714 = fmul fast float %4709, %4712
  %4715 = fmul fast float %4710, %4712
  br label %4716

; <label>:4716                                    ; preds = %4547, %4504
  %4717 = phi float [ %4587, %4547 ], [ 1.000000e+00, %4504 ]
  %4718 = phi float [ %4588, %4547 ], [ 1.000000e+00, %4504 ]
  %4719 = phi float [ %4589, %4547 ], [ 1.000000e+00, %4504 ]
  %4720 = phi float [ %4713, %4547 ], [ 0.000000e+00, %4504 ]
  %4721 = phi float [ %4714, %4547 ], [ 0.000000e+00, %4504 ]
  %4722 = phi float [ %4715, %4547 ], [ 0.000000e+00, %4504 ]
  %4723 = fmul fast float %4720, %3066
  %4724 = fmul fast float %4721, %3067
  %4725 = fmul fast float %4722, %3068
  %4726 = fmul fast float %4717, %4511
  %4727 = call float @dx.op.dot3.f32(i32 55, float %4717, float %4718, float %4719, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4728 = call float @dx.op.dot3.f32(i32 55, float %4723, float %4724, float %4725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4729 = select i1 %215, float %4727, float %4717
  %4730 = select i1 %215, float %4727, float %4718
  %4731 = select i1 %215, float 1.000000e+00, float %4719
  %4732 = select i1 %215, float %4728, float %4723
  %4733 = select i1 %215, float 0.000000e+00, float %4724
  %4734 = select i1 %215, float 0.000000e+00, float %4725
  %4735 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4736 = extractvalue %dx.types.CBufRet.i32 %4735, 3
  %4737 = and i32 %4736, 3
  %4738 = icmp ne i32 %4737, 0
  %4739 = and i32 %4736, 4
  %4740 = icmp ne i32 %4739, 0
  %4741 = and i1 %4738, %4740
  %4742 = and i1 %215, %4741
  br i1 %4742, label %4743, label %4749

; <label>:4743                                    ; preds = %4716
  %4744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %4745 = extractvalue %dx.types.CBufRet.f32 %4744, 1
  %4746 = fadd fast float %4726, -1.000000e+00
  %4747 = fmul fast float %4745, %4746
  %4748 = fadd fast float %4747, 1.000000e+00
  br label %4749

; <label>:4749                                    ; preds = %4743, %4716
  %4750 = phi float [ %4748, %4743 ], [ %4726, %4716 ]
  %4751 = fadd fast float %4508, %4505
  %4752 = fmul fast float %4729, %4751
  %4753 = fadd fast float %4752, %4732
  %4754 = fadd fast float %4509, %4506
  %4755 = fmul fast float %4730, %4754
  %4756 = fadd fast float %4755, %4733
  %4757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.f32 %4757, 0
  br i1 %215, label %4759, label %4774

; <label>:4759                                    ; preds = %4749
  %4760 = fadd fast float %4753, %4756
  %4761 = fmul fast float %4758, %4760
  %4762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.f32 %4762, 3
  %4764 = extractvalue %dx.types.CBufRet.f32 %3050, 1
  %4765 = fsub fast float %3055, %3049
  %4766 = fadd fast float %4765, %3056
  %4767 = fsub fast float %4766, %4764
  %4768 = extractvalue %dx.types.CBufRet.f32 %3050, 2
  %4769 = fmul fast float %4767, %4768
  %4770 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4771 = fsub fast float %4770, %4763
  %4772 = fmul fast float %4771, %4750
  %4773 = fadd fast float %4772, %4763
  br label %4799

; <label>:4774                                    ; preds = %4749
  %4775 = fadd fast float %4510, %4507
  %4776 = fmul fast float %4731, %4775
  %4777 = fadd fast float %4776, %4734
  %4778 = fmul fast float %4758, %4753
  %4779 = fmul fast float %4758, %4756
  %4780 = fmul fast float %4758, %4777
  %4781 = call float @dx.op.binary.f32(i32 35, float %4779, float %4780)  ; FMax(a,b)
  %4782 = call float @dx.op.binary.f32(i32 35, float %4778, float %4781)  ; FMax(a,b)
  %4783 = call float @dx.op.binary.f32(i32 35, float %3067, float %3068)  ; FMax(a,b)
  %4784 = call float @dx.op.binary.f32(i32 35, float %3066, float %4783)  ; FMax(a,b)
  %4785 = call float @dx.op.binary.f32(i32 35, float %4782, float %4784)  ; FMax(a,b)
  %4786 = fcmp fast ugt float %4785, 0x3F10000000000000
  br i1 %4786, label %4788, label %4787

; <label>:4787                                    ; preds = %4774
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %4788

; <label>:4788                                    ; preds = %4787, %4774
  %4789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4790 = extractvalue %dx.types.ResRet.i32 %4789, 0
  %4791 = and i32 %4790, 32
  %4792 = icmp eq i32 %4791, 0
  br i1 %4792, label %4799, label %4793

; <label>:4793                                    ; preds = %4788
  %4794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.f32 %4794, 0
  %4796 = fmul fast float %4795, 0x3FE99999A0000000
  %4797 = fadd fast float %4795, %4778
  %4798 = fadd fast float %4796, %4780
  br label %4799

; <label>:4799                                    ; preds = %4793, %4788, %4759
  %4800 = phi float [ 1.000000e+00, %4759 ], [ %3067, %4793 ], [ %3067, %4788 ]
  %4801 = phi float [ 1.000000e+00, %4759 ], [ %3068, %4793 ], [ %3068, %4788 ]
  %4802 = phi float [ %4761, %4759 ], [ %4797, %4793 ], [ %4778, %4788 ]
  %4803 = phi float [ %4773, %4759 ], [ %4779, %4793 ], [ %4779, %4788 ]
  %4804 = phi float [ 1.000000e+00, %4759 ], [ %4798, %4793 ], [ %4780, %4788 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %4805 = call float @dx.op.binary.f32(i32 36, float %4802, float 3.225500e+04)  ; FMin(a,b)
  %4806 = call float @dx.op.binary.f32(i32 36, float %4803, float 3.225500e+04)  ; FMin(a,b)
  %4807 = call float @dx.op.binary.f32(i32 36, float %4804, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4805)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4806)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4807)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %4808 = call float @dx.op.binary.f32(i32 36, float %3066, float 3.225500e+04)  ; FMin(a,b)
  %4809 = call float @dx.op.binary.f32(i32 36, float %4800, float 3.225500e+04)  ; FMin(a,b)
  %4810 = call float @dx.op.binary.f32(i32 36, float %4801, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %4808)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %4809)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %4810)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!49}
!dx.entryPoints = !{!50}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !38, !41}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !19}
!19 = !{i32 0, i32 5}
!20 = !{i32 12, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !25}
!25 = !{i32 0, i32 14}
!26 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!27 = !{i32 18, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!28 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!29 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!30 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!31 = !{i32 22, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!32 = !{i32 23, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!33 = !{i32 24, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!34 = !{i32 25, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!35 = !{i32 26, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !25}
!36 = !{i32 27, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!37 = !{i32 28, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!38 = !{!39, !40}
!39 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!40 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!41 = !{!42, !43, !44, !45, !46, !47, !48}
!42 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!43 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!44 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!45 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!46 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!47 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!48 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!49 = !{[27 x i32] [i32 25, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119]}
!50 = !{void ()* @ps_main, !"ps_main", !51, !4, !70}
!51 = !{!52, !66, null}
!52 = !{!53, !56, !58, !60, !61, !62, !63, !65}
!53 = !{i32 0, !"SV_Position", i8 9, i8 3, !54, i8 4, i32 1, i8 4, i32 0, i8 0, !55}
!54 = !{i32 0}
!55 = !{i32 3, i32 15}
!56 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !54, i8 2, i32 1, i8 2, i32 1, i8 0, !57}
!57 = !{i32 3, i32 3}
!58 = !{i32 2, !"NORMAL", i8 9, i8 0, !54, i8 2, i32 1, i8 3, i32 2, i8 0, !59}
!59 = !{i32 3, i32 7}
!60 = !{i32 3, !"TANGENT", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 3, i8 0, !55}
!61 = !{i32 4, !"AMBIENT_COLOR", i8 9, i8 0, !54, i8 2, i32 1, i8 3, i32 4, i8 0, !59}
!62 = !{i32 5, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 5, i8 0, !55}
!63 = !{i32 6, !"SV_IsFrontFace", i8 5, i8 13, !54, i8 1, i32 1, i8 1, i32 6, i8 0, !64}
!64 = !{i32 3, i32 1}
!65 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !54, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!66 = !{!67, !68}
!67 = !{i32 0, !"SV_Target", i8 9, i8 16, !54, i8 0, i32 1, i8 4, i32 0, i8 0, !55}
!68 = !{i32 1, !"SV_Target", i8 9, i8 16, !69, i8 0, i32 1, i8 4, i32 1, i8 0, !55}
!69 = !{i32 1}
!70 = !{i32 0, i64 16}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = !{!77, !77, i64 0}
!77 = !{!"int", !78, i64 0}
!78 = !{!"omnipotent char", !79, i64 0}
!79 = !{!"Simple C/C++ TBAA"}
!80 = !{!81, !83, !85, !87}
!81 = distinct !{!81, !82, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!82 = distinct !{!82, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!83 = distinct !{!83, !84, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!84 = distinct !{!84, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!85 = distinct !{!85, !86, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!86 = distinct !{!86, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!87 = distinct !{!87, !88, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!88 = distinct !{!88, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = !{!98, !98, i64 0}
!98 = !{!"float", !78, i64 0}
!99 = !{!100, !102, !104, !105, !107, !108, !109, !111, !112, !113}
!100 = distinct !{!100, !101, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!101 = distinct !{!101, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!102 = distinct !{!102, !103, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!103 = distinct !{!103, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!104 = distinct !{!104, !103, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!105 = distinct !{!105, !106, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!106 = distinct !{!106, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!107 = distinct !{!107, !106, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!108 = distinct !{!108, !106, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!109 = distinct !{!109, !110, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!110 = distinct !{!110, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!111 = distinct !{!111, !110, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!112 = distinct !{!112, !110, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!113 = distinct !{!113, !114, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!114 = distinct !{!114, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"\01?sort@@YAXAIAM00@Z: %c"}
!117 = distinct !{!117, !"\01?sort@@YAXAIAM00@Z"}
!118 = !{!119, !120, !100, !102, !104, !105, !107, !108, !109, !111, !112, !113}
!119 = distinct !{!119, !117, !"\01?sort@@YAXAIAM00@Z: %a"}
!120 = distinct !{!120, !117, !"\01?sort@@YAXAIAM00@Z: %b"}
!121 = !{!120}
!122 = !{!119, !116, !100, !102, !104, !105, !107, !108, !109, !111, !112, !113}
!123 = !{!119}
!124 = !{!120, !116, !100, !102, !104, !105, !107, !108, !109, !111, !112, !113}
!125 = !{!126}
!126 = distinct !{!126, !127, !"\01?sort@@YAXAIAM00@Z: %c"}
!127 = distinct !{!127, !"\01?sort@@YAXAIAM00@Z"}
!128 = !{!129, !130, !100, !102, !104, !105, !107, !108, !109, !111, !112, !113}
!129 = distinct !{!129, !127, !"\01?sort@@YAXAIAM00@Z: %a"}
!130 = distinct !{!130, !127, !"\01?sort@@YAXAIAM00@Z: %b"}
!131 = !{!130}
!132 = !{!129, !126, !100, !102, !104, !105, !107, !108, !109, !111, !112, !113}
!133 = !{!129}
!134 = !{!130, !126, !100, !102, !104, !105, !107, !108, !109, !111, !112, !113}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 2}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}

