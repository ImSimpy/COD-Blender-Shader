;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; TEXCOORDS                0   xyzw        1     NONE   float   xyzw
; LMAPCOORDS               0   xyz         2     NONE   float   xyz 
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        5     NONE   float       
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 5debdaa1ebd52ca731891c514d5094ff
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
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; NORMAL_TRANSFORM         1                 linear       
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
;   [208 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3             t0     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     f32     2darray      T5     t16,space2     1
;                                   texture     f32          3d      T6     t15,space2     1
;                                   texture     f32          2d      T7     t14,space2     1
;                                   texture     f32          2d      T8     t13,space2     1
;                                   texture     u32          2d      T9     t17,space2     1
;                                   texture     f32          3d     T10     t18,space2     1
;                                   texture     f32     2darray     T11     t23,space2     1
;                                   texture     f32     2darray     T12     t24,space2     1
;                                   texture     f32     2darray     T13     t25,space2     1
;                                   texture    byte         r/o     T14     t66,space1     1
;                                   texture    byte         r/o     T15     t16,space1     1
;                                   texture    byte         r/o     T16     t17,space1     1
;                                   texture     u32     2darray     T17     t11,space2     1
;                                   texture     f32     2darray     T18     t10,space2     1
;                                   texture     f32          2d     T19     t69,space2     1
;                                   texture     f32          2d     T20     t58,space2     1
;                                   texture     f32          2d     T21     t59,space2     1
;                                   texture     f32          2d     T22     t60,space2     1
;                                   texture    byte         r/o     T23     t45,space1     1
;                                   texture    byte         r/o     T24     t46,space1     1
;                                   texture    byte         r/o     T25     t47,space1     1
;                                   texture    byte         r/o     T26     t48,space1     1
;                                   texture     f32          2d     T27     t57,space2     1
;                                   texture    byte         r/o     T28     t69,space1     1
;                                   texture     f32          2d     T29     t34,space2     1
;                                   texture    byte         r/o     T30     t10,space1     1
;                                   texture    byte         r/o     T31     t68,space1     1
;                                   texture     f32          2d     T32      t0,space2     1
;                                   texture    byte         r/o     T33     t11,space1     1
;                                   texture    byte         r/o     T34     t13,space1     1
;                                   texture     f32          2d     T35             t1     1
;
;
; ViewId state:
;
; Number of inputs: 24, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = fmul fast float %59, %53
  %61 = fmul fast float %59, %54
  %62 = fmul fast float %44, %41
  %63 = fmul fast float %45, %40
  %64 = fsub fast float %62, %63
  %65 = fmul fast float %45, %39
  %66 = fmul fast float %43, %41
  %67 = fsub fast float %65, %66
  %68 = fmul fast float %43, %40
  %69 = fmul fast float %44, %39
  %70 = fsub fast float %68, %69
  %71 = fmul fast float %64, %42
  %72 = fmul fast float %67, %42
  %73 = fmul fast float %70, %42
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %76 = extractvalue %dx.types.CBufRet.f32 %74, 3
  %77 = fmul fast float %75, 2.000000e+00
  %78 = fmul fast float %77, %60
  %79 = fmul fast float %76, 2.000000e+00
  %80 = fmul fast float %79, %61
  %81 = fsub fast float 1.000000e+00, %78
  %82 = fsub fast float 1.000000e+00, %80
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %87 = fmul fast float %81, %84
  %88 = fmul fast float %81, %85
  %89 = fmul fast float %81, %86
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = extractvalue %dx.types.CBufRet.f32 %90, 1
  %93 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %94 = fmul fast float %82, %91
  %95 = fmul fast float %82, %92
  %96 = fmul fast float %82, %93
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = extractvalue %dx.types.CBufRet.f32 %97, 1
  %100 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %101 = fadd fast float %94, %98
  %102 = fadd fast float %101, %87
  %103 = fadd fast float %95, %99
  %104 = fadd fast float %103, %88
  %105 = fadd fast float %96, %100
  %106 = fadd fast float %105, %89
  %107 = fmul fast float %102, %55
  %108 = fmul fast float %104, %55
  %109 = fmul fast float %106, %55
  %110 = fadd fast float %48, 5.000000e-01
  %111 = fptoui float %110 to i32
  %112 = shl i32 %111, 3
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %112, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = or i32 %112, 4
  %116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %115, i32 undef)  ; BufferLoad(srv,index,wot)
  %117 = extractvalue %dx.types.ResRet.i32 %116, 0
  %118 = and i32 %114, 8191
  %119 = lshr i32 %114, 13
  %120 = and i32 %119, 8191
  %121 = lshr i32 %114, 26
  %122 = and i32 %117, 65535
  %123 = lshr i32 %117, 16
  %124 = uitofp i32 %122 to float
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %127 = uitofp i32 %123 to float
  %128 = uitofp i32 %118 to float
  %129 = fmul fast float %126, %128
  %130 = uitofp i32 %120 to float
  %131 = fmul fast float %126, %130
  %132 = fmul fast float %126, %46
  %133 = fmul fast float %132, %124
  %134 = fmul fast float %126, %47
  %135 = fmul fast float %134, %127
  %136 = fadd fast float %133, %129
  %137 = fadd fast float %131, %135
  %138 = uitofp i32 %121 to float
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 3
  %142 = fmul fast float %140, %60
  %143 = fmul fast float %141, %61
  %144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %145 = extractvalue %dx.types.ResRet.i32 %144, 0
  %146 = and i32 %145, 114688
  %147 = icmp ne i32 %146, 0
  %148 = select i1 %147, float %142, float 0.000000e+00
  %149 = select i1 %147, float %143, float 0.000000e+00
  %150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %36, float %148, float %149, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = fmul fast float %151, 2.550000e+02
  %153 = fptoui float %152 to i32
  %154 = select i1 %147, i32 %153, i32 0
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.i32 %156, 3
  %158 = and i32 %157, 3
  %159 = icmp ne i32 %158, 0
  %160 = and i32 %157, 4
  %161 = icmp ne i32 %160, 0
  %162 = and i1 %159, %161
  br i1 %162, label %163, label %174

; <label>:163                                     ; preds = %0
  %164 = extractvalue %dx.types.CBufRet.f32 %155, 3
  %165 = fmul fast float %164, %61
  %166 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %167 = fmul fast float %166, %60
  %168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %167, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %169 = extractvalue %dx.types.ResRet.f32 %168, 0
  %170 = fsub fast float 1.000000e+00, %169
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %173 = fcmp fast olt float %170, %172
  br label %177

; <label>:174                                     ; preds = %0
  %175 = icmp eq i32 %160, 0
  %176 = and i1 %159, %175
  br label %177

; <label>:177                                     ; preds = %174, %163
  %178 = phi i1 [ %173, %163 ], [ %176, %174 ]
  %179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.i32 %179, 0
  %181 = shl i32 %180, 4
  %182 = and i32 %181, 32752
  %183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %182)  ; LegacyF16ToF32(value)
  %184 = lshr i32 %180, 7
  %185 = and i32 %184, 32752
  %186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %185)  ; LegacyF16ToF32(value)
  %187 = lshr i32 %180, 22
  %188 = shl nuw nsw i32 %187, 5
  %189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %188)  ; LegacyF16ToF32(value)
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = and i32 %191, 255
  %193 = uitofp i32 %192 to float
  %194 = fmul fast float %193, 0x3F70101020000000
  %195 = lshr i32 %191, 8
  %196 = and i32 %195, 255
  %197 = uitofp i32 %196 to float
  %198 = fmul fast float %197, 0x3F70101020000000
  %199 = lshr i32 %191, 16
  %200 = and i32 %199, 255
  %201 = uitofp i32 %200 to float
  %202 = fmul fast float %201, 0x3F70101020000000
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = shl i32 %208, 4
  %210 = and i32 %209, 32752
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = lshr i32 %208, 7
  %213 = and i32 %212, 32752
  %214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %213)  ; LegacyF16ToF32(value)
  %215 = lshr i32 %208, 22
  %216 = shl nuw nsw i32 %215, 5
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = and i32 %219, 255
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F70101020000000
  %223 = lshr i32 %219, 8
  %224 = and i32 %223, 255
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %225, 0x3F70101020000000
  %227 = lshr i32 %219, 16
  %228 = and i32 %227, 255
  %229 = uitofp i32 %228 to float
  %230 = fmul fast float %229, 0x3F70101020000000
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = and i32 %232, 65535
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %232, 16
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 176, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = and i32 %238, 65535
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %238, 16
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = fmul fast float %240, 0x3F50624DE0000000
  %244 = fmul fast float %242, 0x3F50624DE0000000
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 220, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = lshr i32 %246, 20
  %248 = and i32 %247, 3
  %249 = add nuw nsw i32 %248, 1
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = or i32 %253, %251
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %665, label %256

; <label>:256                                     ; preds = %177
  %257 = lshr i32 %206, 16
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = fmul fast float %258, 0x3F50624DE0000000
  %260 = and i32 %206, 65535
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = fmul fast float %261, 0x3F50624DE0000000
  %263 = lshr i32 %204, 16
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = and i32 %204, 65535
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = lshr i32 %268, 16
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = fmul fast float %270, 0x3F50624DE0000000
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = lshr i32 %273, 16
  %275 = and i32 %274, 255
  %276 = lshr i32 %273, 24
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 65535
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %278, 16
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = lshr i32 %284, 22
  %286 = shl nuw nsw i32 %285, 5
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = shl i32 %284, 4
  %289 = and i32 %288, 32752
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %284, 7
  %292 = and i32 %291, 32752
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 3
  %296 = fmul fast float %295, 1.000000e+03
  %297 = fmul fast float %262, %296
  %298 = call float @dx.op.unary.f32(i32 22, float %297)  ; Frc(value)
  %299 = fadd fast float %298, %266
  %300 = fmul fast float %259, %296
  %301 = call float @dx.op.unary.f32(i32 22, float %300)  ; Frc(value)
  %302 = fadd fast float %301, %264
  %303 = fmul fast float %271, %296
  %304 = call float @dx.op.unary.f32(i32 22, float %303)  ; Frc(value)
  %305 = fmul fast float %304, 0x401921FB60000000
  %306 = fadd fast float %305, %287
  %307 = call float @dx.op.unary.f32(i32 13, float %306)  ; Sin(value)
  %308 = call float @dx.op.unary.f32(i32 12, float %306)  ; Cos(value)
  %309 = fsub fast float -0.000000e+00, %307
  %310 = fadd fast float %49, -5.000000e-01
  %311 = fadd fast float %50, -5.000000e-01
  %312 = fmul fast float %280, %310
  %313 = fmul fast float %282, %311
  %314 = fadd fast float %312, 5.000000e-01
  %315 = fadd fast float %313, 5.000000e-01
  %316 = fmul fast float %290, %314
  %317 = fmul fast float %293, %315
  %318 = fmul fast float %308, %316
  %319 = call float @dx.op.tertiary.f32(i32 46, float %309, float %317, float %318)  ; FMad(a,b,c)
  %320 = fmul fast float %307, %316
  %321 = call float @dx.op.tertiary.f32(i32 46, float %308, float %317, float %320)  ; FMad(a,b,c)
  %322 = fadd fast float %299, %319
  %323 = fadd fast float %302, %321
  %324 = icmp ugt i32 %275, 1
  %325 = icmp ugt i32 %273, 33554431
  %326 = or i1 %325, %324
  br i1 %326, label %327, label %351

; <label>:327                                     ; preds = %256
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = lshr i32 %329, 16
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = fmul fast float %295, %331
  %333 = call float @dx.op.unary.f32(i32 22, float %332)  ; Frc(value)
  %334 = mul nuw nsw i32 %275, %276
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %333, %335
  %337 = call float @dx.op.unary.f32(i32 27, float %336)  ; Round_ni(value)
  %338 = fptoui float %337 to i32
  %339 = urem i32 %338, %275
  %340 = udiv i32 %338, %276
  %341 = call float @dx.op.unary.f32(i32 22, float %322)  ; Frc(value)
  %342 = call float @dx.op.unary.f32(i32 22, float %323)  ; Frc(value)
  %343 = uitofp i32 %339 to float
  %344 = uitofp i32 %340 to float
  %345 = fadd fast float %341, %343
  %346 = fadd fast float %342, %344
  %347 = uitofp i32 %275 to float
  %348 = uitofp i32 %276 to float
  %349 = fdiv fast float %345, %347
  %350 = fdiv fast float %346, %348
  br label %351

; <label>:351                                     ; preds = %327, %256
  %352 = phi float [ %349, %327 ], [ %322, %256 ]
  %353 = phi float [ %350, %327 ], [ %323, %256 ]
  %354 = and i32 %251, 16
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %547, label %356

; <label>:356                                     ; preds = %351
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 232, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = add i32 %358, 0
  %360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %359, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %361 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %360, %dx.types.Handle %56, float %352, float %353, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = extractvalue %dx.types.ResRet.f32 %361, 1
  %364 = extractvalue %dx.types.ResRet.f32 %361, 2
  %365 = extractvalue %dx.types.ResRet.f32 %361, 3
  %366 = and i32 %273, 255
  %367 = uitofp i32 %366 to float
  %368 = lshr i32 %273, 8
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %365, %367
  %372 = fadd fast float %371, %370
  %373 = fmul fast float %372, 0x3F70101000000000
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 512
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %385, label %378

; <label>:378                                     ; preds = %356
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 272, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = add i32 %380, 0
  %382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %381, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %383 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %382, %dx.types.Handle %57, float %352, float %353, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  br label %385

; <label>:385                                     ; preds = %378, %356
  %386 = phi float [ %384, %378 ], [ 1.000000e+00, %356 ]
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 33554432
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %494, label %391

; <label>:391                                     ; preds = %385
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 65535
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %393, 16
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 65535
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = lshr i32 %403, 24
  %405 = uitofp i32 %404 to float
  %406 = fmul fast float %405, 0x3F70101020000000
  %407 = and i32 %403, 255
  %408 = uitofp i32 %407 to float
  %409 = fmul fast float %408, 0x3F70101020000000
  %410 = lshr i32 %403, 8
  %411 = and i32 %410, 255
  %412 = uitofp i32 %411 to float
  %413 = fmul fast float %412, 0x3F70101020000000
  %414 = lshr i32 %403, 16
  %415 = and i32 %414, 255
  %416 = uitofp i32 %415 to float
  %417 = fmul fast float %416, 0x3F70101020000000
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = lshr i32 %419, 24
  %421 = uitofp i32 %420 to float
  %422 = fmul fast float %421, 0x3F70101020000000
  %423 = and i32 %419, 255
  %424 = uitofp i32 %423 to float
  %425 = fmul fast float %424, 0x3F70101020000000
  %426 = lshr i32 %419, 8
  %427 = and i32 %426, 255
  %428 = uitofp i32 %427 to float
  %429 = fmul fast float %428, 0x3F70101020000000
  %430 = lshr i32 %419, 16
  %431 = and i32 %430, 255
  %432 = uitofp i32 %431 to float
  %433 = fmul fast float %432, 0x3F70101020000000
  %434 = bitcast float %362 to i32
  %435 = ashr i32 %434, 1
  %436 = sub nsw i32 1597463174, %435
  %437 = bitcast i32 %436 to float
  %438 = fmul fast float %362, 5.000000e-01
  %439 = fmul fast float %437, %437
  %440 = fmul fast float %439, %438
  %441 = fsub fast float 1.500000e+00, %440
  %442 = fmul fast float %437, %362
  %443 = fmul fast float %442, %441
  %444 = bitcast float %363 to i32
  %445 = ashr i32 %444, 1
  %446 = sub nsw i32 1597463174, %445
  %447 = bitcast i32 %446 to float
  %448 = fmul fast float %363, 5.000000e-01
  %449 = fmul fast float %447, %447
  %450 = fmul fast float %449, %448
  %451 = fsub fast float 1.500000e+00, %450
  %452 = fmul fast float %447, %363
  %453 = fmul fast float %452, %451
  %454 = bitcast float %364 to i32
  %455 = ashr i32 %454, 1
  %456 = sub nsw i32 1597463174, %455
  %457 = bitcast i32 %456 to float
  %458 = fmul fast float %364, 5.000000e-01
  %459 = fmul fast float %457, %457
  %460 = fmul fast float %459, %458
  %461 = fsub fast float 1.500000e+00, %460
  %462 = fmul fast float %457, %364
  %463 = fmul fast float %462, %461
  %464 = fsub fast float %443, %425
  %465 = fsub fast float %453, %429
  %466 = fsub fast float %463, %433
  %467 = fmul fast float %464, %395
  %468 = fmul fast float %465, %397
  %469 = fmul fast float %466, %401
  %470 = fadd fast float %467, %409
  %471 = fadd fast float %468, %413
  %472 = fadd fast float %469, %417
  %473 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %474 = call float @dx.op.unary.f32(i32 7, float %471)  ; Saturate(value)
  %475 = call float @dx.op.unary.f32(i32 7, float %472)  ; Saturate(value)
  %476 = fmul fast float %473, %473
  %477 = fmul fast float %474, %474
  %478 = fmul fast float %475, %475
  %479 = fsub fast float %476, %362
  %480 = fsub fast float %477, %363
  %481 = fsub fast float %478, %364
  %482 = fmul fast float %479, %386
  %483 = fmul fast float %480, %386
  %484 = fmul fast float %481, %386
  %485 = fadd fast float %482, %362
  %486 = fadd fast float %483, %363
  %487 = fadd fast float %484, %364
  %488 = fadd fast float %406, %373
  %489 = fsub fast float %488, %422
  %490 = call float @dx.op.unary.f32(i32 7, float %489)  ; Saturate(value)
  %491 = fsub fast float %490, %373
  %492 = fmul fast float %491, %386
  %493 = fadd fast float %492, %373
  br label %547

; <label>:494                                     ; preds = %385
  %495 = and i32 %388, 134217728
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %531, label %497

; <label>:497                                     ; preds = %494
  %498 = call float @dx.op.unary.f32(i32 24, float %194)  ; Sqrt(value)
  %499 = call float @dx.op.unary.f32(i32 24, float %198)  ; Sqrt(value)
  %500 = call float @dx.op.unary.f32(i32 24, float %202)  ; Sqrt(value)
  %501 = fadd fast float %498, -5.000000e-01
  %502 = fadd fast float %499, -5.000000e-01
  %503 = fadd fast float %500, -5.000000e-01
  %504 = fmul fast float %501, %386
  %505 = fmul fast float %502, %386
  %506 = fmul fast float %503, %386
  %507 = fadd fast float %504, 5.000000e-01
  %508 = fadd fast float %505, 5.000000e-01
  %509 = fadd fast float %506, 5.000000e-01
  %510 = call float @dx.op.unary.f32(i32 24, float %362)  ; Sqrt(value)
  %511 = call float @dx.op.unary.f32(i32 24, float %363)  ; Sqrt(value)
  %512 = call float @dx.op.unary.f32(i32 24, float %364)  ; Sqrt(value)
  %513 = fmul fast float %507, 2.000000e+00
  %514 = fsub fast float 1.000000e+00, %513
  %515 = fmul fast float %514, %510
  %516 = fadd fast float %515, %513
  %517 = fmul fast float %516, %510
  %518 = fmul fast float %508, 2.000000e+00
  %519 = fsub fast float 1.000000e+00, %518
  %520 = fmul fast float %519, %511
  %521 = fadd fast float %520, %518
  %522 = fmul fast float %521, %511
  %523 = fmul fast float %509, 2.000000e+00
  %524 = fsub fast float 1.000000e+00, %523
  %525 = fmul fast float %524, %512
  %526 = fadd fast float %525, %523
  %527 = fmul fast float %526, %512
  %528 = fmul fast float %517, %517
  %529 = fmul fast float %522, %522
  %530 = fmul fast float %527, %527
  br label %547

; <label>:531                                     ; preds = %494
  %532 = fmul fast float %194, %194
  %533 = fmul fast float %198, %198
  %534 = fmul fast float %202, %202
  %535 = fadd fast float %532, -1.000000e+00
  %536 = fadd fast float %533, -1.000000e+00
  %537 = fadd fast float %534, -1.000000e+00
  %538 = fmul fast float %386, %535
  %539 = fmul fast float %386, %536
  %540 = fmul fast float %386, %537
  %541 = fadd fast float %538, 1.000000e+00
  %542 = fadd fast float %539, 1.000000e+00
  %543 = fadd fast float %540, 1.000000e+00
  %544 = fmul fast float %541, %362
  %545 = fmul fast float %542, %363
  %546 = fmul fast float %543, %364
  br label %547

; <label>:547                                     ; preds = %531, %497, %391, %351
  %548 = phi float [ %493, %391 ], [ %373, %497 ], [ %373, %531 ], [ 0x3FA23C0BE0000000, %351 ]
  %549 = phi float [ %485, %391 ], [ %528, %497 ], [ %544, %531 ], [ 1.000000e+00, %351 ]
  %550 = phi float [ %486, %391 ], [ %529, %497 ], [ %545, %531 ], [ 1.000000e+00, %351 ]
  %551 = phi float [ %487, %391 ], [ %530, %497 ], [ %546, %531 ], [ 1.000000e+00, %351 ]
  %552 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.i32 %552, 1
  %554 = and i32 %553, 1
  %555 = icmp ne i32 %554, 0
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 228, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = and i32 %557, 32
  %559 = icmp ne i32 %558, 0
  %560 = and i1 %555, %559
  %561 = select i1 %560, float 1.000000e+00, float %549
  %562 = select i1 %560, float 0x3FD3333340000000, float %550
  %563 = select i1 %560, float 0x3FD3333340000000, float %551
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = and i32 %565, 32
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %605, label %568

; <label>:568                                     ; preds = %547
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 240, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = add i32 %572, 0
  %574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %575 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %574, %dx.types.Handle %56, float %352, float %353, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 0
  %577 = extractvalue %dx.types.ResRet.f32 %575, 2
  %578 = and i32 %570, 255
  %579 = uitofp i32 %578 to float
  %580 = lshr i32 %570, 8
  %581 = and i32 %580, 255
  %582 = uitofp i32 %581 to float
  %583 = fmul fast float %576, %579
  %584 = fadd fast float %583, %582
  %585 = fmul fast float %584, 0x3F70101000000000
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = and i32 %587, 67108864
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %605, label %590

; <label>:590                                     ; preds = %568
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = and i32 %592, 65535
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = and i32 %596, 65535
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = lshr i32 %592, 16
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = fsub fast float %585, %600
  %602 = fmul fast float %601, %594
  %603 = fadd fast float %602, %598
  %604 = call float @dx.op.unary.f32(i32 7, float %603)  ; Saturate(value)
  br label %605

; <label>:605                                     ; preds = %590, %568, %547
  %606 = phi float [ 0x3FD6666660000000, %547 ], [ %604, %590 ], [ %585, %568 ]
  %607 = phi float [ 1.000000e+00, %547 ], [ %577, %590 ], [ %577, %568 ]
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = lshr i32 %609, 22
  %611 = shl nuw nsw i32 %610, 5
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = and i32 %614, 64
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %649, label %617

; <label>:617                                     ; preds = %605
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 248, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = add i32 %619, 0
  %621 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %620, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = and i32 %623, 131072
  %625 = icmp eq i32 %624, 0
  %626 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %621, %dx.types.Handle %56, float %352, float %353, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %627 = extractvalue %dx.types.ResRet.f32 %626, 0
  %628 = extractvalue %dx.types.ResRet.f32 %626, 1
  %629 = extractvalue %dx.types.ResRet.f32 %626, 2
  %630 = fmul fast float %627, %183
  %631 = fmul fast float %628, %186
  %632 = fmul fast float %629, %189
  br i1 %625, label %639, label %633

; <label>:633                                     ; preds = %617
  %634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.f32 %634, 0
  %636 = fmul fast float %635, %630
  %637 = fmul fast float %635, %631
  %638 = fmul fast float %635, %632
  br label %639

; <label>:639                                     ; preds = %633, %617
  %640 = phi float [ %636, %633 ], [ %630, %617 ]
  %641 = phi float [ %637, %633 ], [ %631, %617 ]
  %642 = phi float [ %638, %633 ], [ %632, %617 ]
  %643 = fmul fast float %640, %612
  %644 = select i1 %178, float %643, float %640
  %645 = call float @dx.op.dot3.f32(i32 55, float %644, float %641, float %642, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %646 = select i1 %178, float 0.000000e+00, float %640
  %647 = select i1 %178, float %645, float %641
  %648 = select i1 %178, float 0.000000e+00, float %642
  br label %649

; <label>:649                                     ; preds = %639, %605
  %650 = phi float [ %646, %639 ], [ 0.000000e+00, %605 ]
  %651 = phi float [ %647, %639 ], [ 0.000000e+00, %605 ]
  %652 = phi float [ %648, %639 ], [ 0.000000e+00, %605 ]
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = and i32 %654, 255
  %656 = uitofp i32 %655 to float
  %657 = lshr i32 %654, 8
  %658 = and i32 %657, 255
  %659 = uitofp i32 %658 to float
  %660 = call float @dx.op.dot3.f32(i32 55, float %561, float %562, float %563, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %661 = fmul fast float %659, %660
  %662 = fadd fast float %661, %656
  %663 = fmul fast float %662, 0x3F70101020000000
  %664 = call float @dx.op.unary.f32(i32 7, float %663)  ; Saturate(value)
  br label %665

; <label>:665                                     ; preds = %649, %177
  %666 = phi float [ %561, %649 ], [ 0.000000e+00, %177 ]
  %667 = phi float [ %562, %649 ], [ 0.000000e+00, %177 ]
  %668 = phi float [ %563, %649 ], [ 0.000000e+00, %177 ]
  %669 = phi float [ %650, %649 ], [ 0.000000e+00, %177 ]
  %670 = phi float [ %651, %649 ], [ 0.000000e+00, %177 ]
  %671 = phi float [ %652, %649 ], [ 0.000000e+00, %177 ]
  %672 = phi float [ %548, %649 ], [ 0.000000e+00, %177 ]
  %673 = phi float [ 1.000000e+00, %649 ], [ 0.000000e+00, %177 ]
  %674 = phi float [ %606, %649 ], [ 0.000000e+00, %177 ]
  %675 = phi float [ %607, %649 ], [ 0.000000e+00, %177 ]
  %676 = phi float [ %664, %649 ], [ 0.000000e+00, %177 ]
  %677 = icmp ult i32 %249, 2
  %678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = or i32 %681, %679
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %1313, label %684

; <label>:684                                     ; preds = %665
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = lshr i32 %686, 16
  %688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %687)  ; LegacyF16ToF32(value)
  %689 = fmul fast float %688, 0x3F50624DE0000000
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = lshr i32 %691, 16
  %693 = and i32 %692, 255
  %694 = lshr i32 %691, 24
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 180, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = and i32 %696, 65535
  %698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %697)  ; LegacyF16ToF32(value)
  %699 = lshr i32 %696, 16
  %700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %699)  ; LegacyF16ToF32(value)
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = lshr i32 %702, 22
  %704 = shl nuw nsw i32 %703, 5
  %705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %704)  ; LegacyF16ToF32(value)
  %706 = shl i32 %702, 4
  %707 = and i32 %706, 32752
  %708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %707)  ; LegacyF16ToF32(value)
  %709 = lshr i32 %702, 7
  %710 = and i32 %709, 32752
  %711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %710)  ; LegacyF16ToF32(value)
  %712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %713 = extractvalue %dx.types.CBufRet.f32 %712, 3
  %714 = fmul fast float %713, 1.000000e+03
  %715 = fmul fast float %243, %714
  %716 = call float @dx.op.unary.f32(i32 22, float %715)  ; Frc(value)
  %717 = fadd fast float %716, %234
  %718 = fmul fast float %244, %714
  %719 = call float @dx.op.unary.f32(i32 22, float %718)  ; Frc(value)
  %720 = fadd fast float %719, %236
  %721 = fmul fast float %689, %714
  %722 = call float @dx.op.unary.f32(i32 22, float %721)  ; Frc(value)
  %723 = fmul fast float %722, 0x401921FB60000000
  %724 = fadd fast float %723, %705
  %725 = call float @dx.op.unary.f32(i32 13, float %724)  ; Sin(value)
  %726 = call float @dx.op.unary.f32(i32 12, float %724)  ; Cos(value)
  %727 = fsub fast float -0.000000e+00, %725
  %728 = fadd fast float %51, -5.000000e-01
  %729 = fadd fast float %52, -5.000000e-01
  %730 = fmul fast float %698, %728
  %731 = fmul fast float %700, %729
  %732 = fadd fast float %730, 5.000000e-01
  %733 = fadd fast float %731, 5.000000e-01
  %734 = fmul fast float %708, %732
  %735 = fmul fast float %711, %733
  %736 = fmul fast float %726, %734
  %737 = call float @dx.op.tertiary.f32(i32 46, float %727, float %735, float %736)  ; FMad(a,b,c)
  %738 = fmul fast float %725, %734
  %739 = call float @dx.op.tertiary.f32(i32 46, float %726, float %735, float %738)  ; FMad(a,b,c)
  %740 = fadd fast float %717, %737
  %741 = fadd fast float %720, %739
  %742 = icmp ugt i32 %693, 1
  %743 = icmp ugt i32 %691, 33554431
  %744 = or i1 %743, %742
  br i1 %744, label %745, label %769

; <label>:745                                     ; preds = %684
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = lshr i32 %747, 16
  %749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %748)  ; LegacyF16ToF32(value)
  %750 = fmul fast float %713, %749
  %751 = call float @dx.op.unary.f32(i32 22, float %750)  ; Frc(value)
  %752 = mul nuw nsw i32 %693, %694
  %753 = uitofp i32 %752 to float
  %754 = fmul fast float %751, %753
  %755 = call float @dx.op.unary.f32(i32 27, float %754)  ; Round_ni(value)
  %756 = fptoui float %755 to i32
  %757 = urem i32 %756, %693
  %758 = udiv i32 %756, %694
  %759 = call float @dx.op.unary.f32(i32 22, float %740)  ; Frc(value)
  %760 = call float @dx.op.unary.f32(i32 22, float %741)  ; Frc(value)
  %761 = uitofp i32 %757 to float
  %762 = uitofp i32 %758 to float
  %763 = fadd fast float %759, %761
  %764 = fadd fast float %760, %762
  %765 = uitofp i32 %693 to float
  %766 = uitofp i32 %694 to float
  %767 = fdiv fast float %763, %765
  %768 = fdiv fast float %764, %766
  br label %769

; <label>:769                                     ; preds = %745, %684
  %770 = phi float [ %767, %745 ], [ %740, %684 ]
  %771 = phi float [ %768, %745 ], [ %741, %684 ]
  %772 = and i32 %679, 256
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %810, label %774

; <label>:774                                     ; preds = %769
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 268, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = add i32 %776, 0
  %778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %777, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %779 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %778, %dx.types.Handle %57, float %770, float %771, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %780 = extractvalue %dx.types.ResRet.f32 %779, 0
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = shl i32 %782, 4
  %784 = and i32 %783, 32752
  %785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %784)  ; LegacyF16ToF32(value)
  %786 = lshr i32 %782, 7
  %787 = and i32 %786, 32752
  %788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %787)  ; LegacyF16ToF32(value)
  %789 = fmul fast float %788, 6.080000e+04
  %790 = fadd fast float %789, 0x41CFBF8940000000
  %791 = fptosi float %790 to i32
  %792 = bitcast i32 %791 to float
  %793 = fmul fast float %788, 0x41A6FF0B00000000
  %794 = fsub fast float 0x41CFBF8940000000, %793
  %795 = fptosi float %794 to i32
  %796 = bitcast i32 %795 to float
  %797 = fmul fast float %792, %785
  %798 = fmul fast float %796, %785
  %799 = fsub fast float 0x3E7FF19E20000000, %797
  %800 = fadd fast float %798, 0x3E7FF19E20000000
  %801 = call float @dx.op.unary.f32(i32 7, float %799)  ; Saturate(value)
  %802 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  %803 = fsub fast float %780, %801
  %804 = fsub fast float %802, %801
  %805 = bitcast float %804 to i32
  %806 = sub nsw i32 2129859010, %805
  %807 = bitcast i32 %806 to float
  %808 = fmul fast float %807, %803
  %809 = call float @dx.op.unary.f32(i32 7, float %808)  ; Saturate(value)
  br label %810

; <label>:810                                     ; preds = %774, %769
  %811 = phi float [ %809, %774 ], [ 1.000000e+00, %769 ]
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = and i32 %813, 128
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %831, label %816

; <label>:816                                     ; preds = %810
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 260, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = add i32 %818, 0
  %820 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %819, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %821 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %820, %dx.types.Handle %57, float %770, float %771, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %822 = extractvalue %dx.types.ResRet.f32 %821, 0
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = and i32 %824, 524288
  %826 = icmp ne i32 %825, 0
  %827 = fcmp fast ogt float %822, 0x3FE0101020000000
  %828 = select i1 %827, float 1.000000e+00, float 0.000000e+00
  %829 = select i1 %826, float %828, float %822
  %830 = fmul fast float %829, %811
  br label %831

; <label>:831                                     ; preds = %816, %810
  %832 = phi float [ %830, %816 ], [ %811, %810 ]
  %833 = fcmp fast ult float %832, 0x3F70101020000000
  br i1 %833, label %1313, label %834

; <label>:834                                     ; preds = %831
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = and i32 %836, 16
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %1032, label %839

; <label>:839                                     ; preds = %834
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 236, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = add i32 %843, 0
  %845 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %844, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %846 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %845, %dx.types.Handle %56, float %770, float %771, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %847 = extractvalue %dx.types.ResRet.f32 %846, 0
  %848 = extractvalue %dx.types.ResRet.f32 %846, 1
  %849 = extractvalue %dx.types.ResRet.f32 %846, 2
  %850 = extractvalue %dx.types.ResRet.f32 %846, 3
  %851 = and i32 %841, 255
  %852 = uitofp i32 %851 to float
  %853 = lshr i32 %841, 8
  %854 = and i32 %853, 255
  %855 = uitofp i32 %854 to float
  %856 = fmul fast float %850, %852
  %857 = fadd fast float %856, %855
  %858 = fmul fast float %857, 0x3F70101000000000
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = and i32 %860, 512
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %870, label %863

; <label>:863                                     ; preds = %839
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 276, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = add i32 %865, 0
  %867 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %866, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %868 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %867, %dx.types.Handle %57, float %770, float %771, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  br label %870

; <label>:870                                     ; preds = %863, %839
  %871 = phi float [ %869, %863 ], [ 1.000000e+00, %839 ]
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = and i32 %873, 33554432
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %979, label %876

; <label>:876                                     ; preds = %870
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = and i32 %878, 65535
  %880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %879)  ; LegacyF16ToF32(value)
  %881 = lshr i32 %878, 16
  %882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %881)  ; LegacyF16ToF32(value)
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = and i32 %884, 65535
  %886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %885)  ; LegacyF16ToF32(value)
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = lshr i32 %888, 24
  %890 = uitofp i32 %889 to float
  %891 = fmul fast float %890, 0x3F70101020000000
  %892 = and i32 %888, 255
  %893 = uitofp i32 %892 to float
  %894 = fmul fast float %893, 0x3F70101020000000
  %895 = lshr i32 %888, 8
  %896 = and i32 %895, 255
  %897 = uitofp i32 %896 to float
  %898 = fmul fast float %897, 0x3F70101020000000
  %899 = lshr i32 %888, 16
  %900 = and i32 %899, 255
  %901 = uitofp i32 %900 to float
  %902 = fmul fast float %901, 0x3F70101020000000
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = lshr i32 %904, 24
  %906 = uitofp i32 %905 to float
  %907 = fmul fast float %906, 0x3F70101020000000
  %908 = and i32 %904, 255
  %909 = uitofp i32 %908 to float
  %910 = fmul fast float %909, 0x3F70101020000000
  %911 = lshr i32 %904, 8
  %912 = and i32 %911, 255
  %913 = uitofp i32 %912 to float
  %914 = fmul fast float %913, 0x3F70101020000000
  %915 = lshr i32 %904, 16
  %916 = and i32 %915, 255
  %917 = uitofp i32 %916 to float
  %918 = fmul fast float %917, 0x3F70101020000000
  %919 = bitcast float %847 to i32
  %920 = ashr i32 %919, 1
  %921 = sub nsw i32 1597463174, %920
  %922 = bitcast i32 %921 to float
  %923 = fmul fast float %847, 5.000000e-01
  %924 = fmul fast float %922, %922
  %925 = fmul fast float %924, %923
  %926 = fsub fast float 1.500000e+00, %925
  %927 = fmul fast float %922, %847
  %928 = fmul fast float %927, %926
  %929 = bitcast float %848 to i32
  %930 = ashr i32 %929, 1
  %931 = sub nsw i32 1597463174, %930
  %932 = bitcast i32 %931 to float
  %933 = fmul fast float %848, 5.000000e-01
  %934 = fmul fast float %932, %932
  %935 = fmul fast float %934, %933
  %936 = fsub fast float 1.500000e+00, %935
  %937 = fmul fast float %932, %848
  %938 = fmul fast float %937, %936
  %939 = bitcast float %849 to i32
  %940 = ashr i32 %939, 1
  %941 = sub nsw i32 1597463174, %940
  %942 = bitcast i32 %941 to float
  %943 = fmul fast float %849, 5.000000e-01
  %944 = fmul fast float %942, %942
  %945 = fmul fast float %944, %943
  %946 = fsub fast float 1.500000e+00, %945
  %947 = fmul fast float %942, %849
  %948 = fmul fast float %947, %946
  %949 = fsub fast float %928, %910
  %950 = fsub fast float %938, %914
  %951 = fsub fast float %948, %918
  %952 = fmul fast float %949, %880
  %953 = fmul fast float %950, %882
  %954 = fmul fast float %951, %886
  %955 = fadd fast float %952, %894
  %956 = fadd fast float %953, %898
  %957 = fadd fast float %954, %902
  %958 = call float @dx.op.unary.f32(i32 7, float %955)  ; Saturate(value)
  %959 = call float @dx.op.unary.f32(i32 7, float %956)  ; Saturate(value)
  %960 = call float @dx.op.unary.f32(i32 7, float %957)  ; Saturate(value)
  %961 = fmul fast float %958, %958
  %962 = fmul fast float %959, %959
  %963 = fmul fast float %960, %960
  %964 = fsub fast float %961, %847
  %965 = fsub fast float %962, %848
  %966 = fsub fast float %963, %849
  %967 = fmul fast float %964, %871
  %968 = fmul fast float %965, %871
  %969 = fmul fast float %966, %871
  %970 = fadd fast float %967, %847
  %971 = fadd fast float %968, %848
  %972 = fadd fast float %969, %849
  %973 = fadd fast float %891, %858
  %974 = fsub fast float %973, %907
  %975 = call float @dx.op.unary.f32(i32 7, float %974)  ; Saturate(value)
  %976 = fsub fast float %975, %858
  %977 = fmul fast float %976, %871
  %978 = fadd fast float %977, %858
  br label %1032

; <label>:979                                     ; preds = %870
  %980 = and i32 %873, 134217728
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %1016, label %982

; <label>:982                                     ; preds = %979
  %983 = call float @dx.op.unary.f32(i32 24, float %222)  ; Sqrt(value)
  %984 = call float @dx.op.unary.f32(i32 24, float %226)  ; Sqrt(value)
  %985 = call float @dx.op.unary.f32(i32 24, float %230)  ; Sqrt(value)
  %986 = fadd fast float %983, -5.000000e-01
  %987 = fadd fast float %984, -5.000000e-01
  %988 = fadd fast float %985, -5.000000e-01
  %989 = fmul fast float %986, %871
  %990 = fmul fast float %987, %871
  %991 = fmul fast float %988, %871
  %992 = fadd fast float %989, 5.000000e-01
  %993 = fadd fast float %990, 5.000000e-01
  %994 = fadd fast float %991, 5.000000e-01
  %995 = call float @dx.op.unary.f32(i32 24, float %847)  ; Sqrt(value)
  %996 = call float @dx.op.unary.f32(i32 24, float %848)  ; Sqrt(value)
  %997 = call float @dx.op.unary.f32(i32 24, float %849)  ; Sqrt(value)
  %998 = fmul fast float %992, 2.000000e+00
  %999 = fsub fast float 1.000000e+00, %998
  %1000 = fmul fast float %999, %995
  %1001 = fadd fast float %1000, %998
  %1002 = fmul fast float %1001, %995
  %1003 = fmul fast float %993, 2.000000e+00
  %1004 = fsub fast float 1.000000e+00, %1003
  %1005 = fmul fast float %1004, %996
  %1006 = fadd fast float %1005, %1003
  %1007 = fmul fast float %1006, %996
  %1008 = fmul fast float %994, 2.000000e+00
  %1009 = fsub fast float 1.000000e+00, %1008
  %1010 = fmul fast float %1009, %997
  %1011 = fadd fast float %1010, %1008
  %1012 = fmul fast float %1011, %997
  %1013 = fmul fast float %1002, %1002
  %1014 = fmul fast float %1007, %1007
  %1015 = fmul fast float %1012, %1012
  br label %1032

; <label>:1016                                    ; preds = %979
  %1017 = fmul fast float %222, %222
  %1018 = fmul fast float %226, %226
  %1019 = fmul fast float %230, %230
  %1020 = fadd fast float %1017, -1.000000e+00
  %1021 = fadd fast float %1018, -1.000000e+00
  %1022 = fadd fast float %1019, -1.000000e+00
  %1023 = fmul fast float %871, %1020
  %1024 = fmul fast float %871, %1021
  %1025 = fmul fast float %871, %1022
  %1026 = fadd fast float %1023, 1.000000e+00
  %1027 = fadd fast float %1024, 1.000000e+00
  %1028 = fadd fast float %1025, 1.000000e+00
  %1029 = fmul fast float %1026, %847
  %1030 = fmul fast float %1027, %848
  %1031 = fmul fast float %1028, %849
  br label %1032

; <label>:1032                                    ; preds = %1016, %982, %876, %834
  %1033 = phi float [ %978, %876 ], [ %858, %982 ], [ %858, %1016 ], [ 0x3FA23C0BE0000000, %834 ]
  %1034 = phi float [ %970, %876 ], [ %1013, %982 ], [ %1029, %1016 ], [ 1.000000e+00, %834 ]
  %1035 = phi float [ %971, %876 ], [ %1014, %982 ], [ %1030, %1016 ], [ 1.000000e+00, %834 ]
  %1036 = phi float [ %972, %876 ], [ %1015, %982 ], [ %1031, %1016 ], [ 1.000000e+00, %834 ]
  %1037 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.i32 %1037, 1
  %1039 = and i32 %1038, 1
  %1040 = icmp ne i32 %1039, 0
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = and i32 %1042, 32
  %1044 = icmp ne i32 %1043, 0
  %1045 = and i1 %1040, %1044
  %1046 = select i1 %1045, float 1.000000e+00, float %1034
  %1047 = select i1 %1045, float 0x3FD3333340000000, float %1035
  %1048 = select i1 %1045, float 0x3FD3333340000000, float %1036
  %1049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.i32 %1049, 0
  %1051 = and i32 %1050, 32
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1090, label %1053

; <label>:1053                                    ; preds = %1032
  %1054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.i32 %1054, 0
  %1056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.i32 %1056, 0
  %1058 = add i32 %1057, 0
  %1059 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1058, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1060 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1059, %dx.types.Handle %56, float %770, float %771, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.ResRet.f32 %1060, 2
  %1063 = and i32 %1055, 255
  %1064 = uitofp i32 %1063 to float
  %1065 = lshr i32 %1055, 8
  %1066 = and i32 %1065, 255
  %1067 = uitofp i32 %1066 to float
  %1068 = fmul fast float %1061, %1064
  %1069 = fadd fast float %1068, %1067
  %1070 = fmul fast float %1069, 0x3F70101000000000
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = and i32 %1072, 67108864
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1090, label %1075

; <label>:1075                                    ; preds = %1053
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = and i32 %1077, 65535
  %1079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1078)  ; LegacyF16ToF32(value)
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = and i32 %1081, 65535
  %1083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1082)  ; LegacyF16ToF32(value)
  %1084 = lshr i32 %1077, 16
  %1085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1084)  ; LegacyF16ToF32(value)
  %1086 = fsub fast float %1070, %1085
  %1087 = fmul fast float %1086, %1079
  %1088 = fadd fast float %1087, %1083
  %1089 = call float @dx.op.unary.f32(i32 7, float %1088)  ; Saturate(value)
  br label %1090

; <label>:1090                                    ; preds = %1075, %1053, %1032
  %1091 = phi float [ 0x3FD6666660000000, %1032 ], [ %1089, %1075 ], [ %1070, %1053 ]
  %1092 = phi float [ 1.000000e+00, %1032 ], [ %1062, %1075 ], [ %1062, %1053 ]
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = lshr i32 %1094, 22
  %1096 = shl nuw nsw i32 %1095, 5
  %1097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1096)  ; LegacyF16ToF32(value)
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = and i32 %1099, 64
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1134, label %1102

; <label>:1102                                    ; preds = %1090
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = add i32 %1104, 0
  %1106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1105, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = and i32 %1108, 131072
  %1110 = icmp eq i32 %1109, 0
  %1111 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1106, %dx.types.Handle %56, float %770, float %771, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1113 = extractvalue %dx.types.ResRet.f32 %1111, 1
  %1114 = extractvalue %dx.types.ResRet.f32 %1111, 2
  %1115 = fmul fast float %1112, %211
  %1116 = fmul fast float %1113, %214
  %1117 = fmul fast float %1114, %217
  br i1 %1110, label %1124, label %1118

; <label>:1118                                    ; preds = %1102
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 0
  %1121 = fmul fast float %1120, %1115
  %1122 = fmul fast float %1120, %1116
  %1123 = fmul fast float %1120, %1117
  br label %1124

; <label>:1124                                    ; preds = %1118, %1102
  %1125 = phi float [ %1121, %1118 ], [ %1115, %1102 ]
  %1126 = phi float [ %1122, %1118 ], [ %1116, %1102 ]
  %1127 = phi float [ %1123, %1118 ], [ %1117, %1102 ]
  %1128 = fmul fast float %1125, %1097
  %1129 = select i1 %178, float %1128, float %1125
  %1130 = call float @dx.op.dot3.f32(i32 55, float %1129, float %1126, float %1127, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1131 = select i1 %178, float 0.000000e+00, float %1125
  %1132 = select i1 %178, float %1130, float %1126
  %1133 = select i1 %178, float 0.000000e+00, float %1127
  br label %1134

; <label>:1134                                    ; preds = %1124, %1090
  %1135 = phi float [ %1131, %1124 ], [ 0.000000e+00, %1090 ]
  %1136 = phi float [ %1132, %1124 ], [ 0.000000e+00, %1090 ]
  %1137 = phi float [ %1133, %1124 ], [ 0.000000e+00, %1090 ]
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = and i32 %1139, 255
  %1141 = uitofp i32 %1140 to float
  %1142 = lshr i32 %1139, 8
  %1143 = and i32 %1142, 255
  %1144 = uitofp i32 %1143 to float
  %1145 = call float @dx.op.dot3.f32(i32 55, float %1046, float %1047, float %1048, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1146 = fmul fast float %1144, %1145
  %1147 = fadd fast float %1146, %1141
  %1148 = fmul fast float %1147, 0x3F70101020000000
  %1149 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  br i1 %677, label %1150, label %1158

; <label>:1150                                    ; preds = %1134
  %1151 = fsub fast float 1.000000e+00, %832
  %1152 = fmul fast float %1151, %666
  %1153 = fmul fast float %1151, %667
  %1154 = fmul fast float %1151, %668
  %1155 = fmul fast float %1151, %669
  %1156 = fmul fast float %1151, %670
  %1157 = fmul fast float %1151, %671
  br label %1158

; <label>:1158                                    ; preds = %1150, %1134
  %1159 = phi float [ %1152, %1150 ], [ %666, %1134 ]
  %1160 = phi float [ %1153, %1150 ], [ %667, %1134 ]
  %1161 = phi float [ %1154, %1150 ], [ %668, %1134 ]
  %1162 = phi float [ %1155, %1150 ], [ %669, %1134 ]
  %1163 = phi float [ %1156, %1150 ], [ %670, %1134 ]
  %1164 = phi float [ %1157, %1150 ], [ %671, %1134 ]
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = and i32 %1166, 3
  %1168 = icmp eq i32 %1167, 3
  br i1 %1168, label %1247, label %1169

; <label>:1169                                    ; preds = %1158
  %1170 = and i32 %1166, 16
  %1171 = icmp ne i32 %1170, 0
  %1172 = select i1 %1171, float %832, float 0.000000e+00
  %1173 = icmp eq i32 %1167, 0
  br i1 %1173, label %1174, label %1202

; <label>:1174                                    ; preds = %1169
  %1175 = and i32 %1166, 64
  %1176 = icmp ne i32 %1175, 0
  %1177 = select i1 %1176, float %832, float 0.000000e+00
  %1178 = fsub fast float %1046, %1159
  %1179 = fsub fast float %1047, %1160
  %1180 = fsub fast float %1048, %1161
  %1181 = fmul fast float %1172, %1178
  %1182 = fmul fast float %1172, %1179
  %1183 = fmul fast float %1172, %1180
  %1184 = fadd fast float %1181, %1159
  %1185 = fadd fast float %1182, %1160
  %1186 = fadd fast float %1183, %1161
  %1187 = fsub fast float %1033, %672
  %1188 = fmul fast float %1172, %1187
  %1189 = fadd fast float %1188, %672
  %1190 = fsub fast float %1135, %1162
  %1191 = fsub fast float %1136, %1163
  %1192 = fsub fast float %1137, %1164
  %1193 = fmul fast float %1177, %1190
  %1194 = fmul fast float %1177, %1191
  %1195 = fmul fast float %1177, %1192
  %1196 = fadd fast float %1193, %1162
  %1197 = fadd fast float %1194, %1163
  %1198 = fadd fast float %1195, %1164
  %1199 = fsub fast float %1149, %676
  %1200 = fmul fast float %1172, %1199
  %1201 = fadd fast float %1200, %676
  br label %1247

; <label>:1202                                    ; preds = %1169
  %1203 = icmp eq i32 %1167, 1
  br i1 %1203, label %1204, label %1217

; <label>:1204                                    ; preds = %1202
  %1205 = fadd fast float %1046, -1.000000e+00
  %1206 = fadd fast float %1047, -1.000000e+00
  %1207 = fadd fast float %1048, -1.000000e+00
  %1208 = fmul fast float %1172, %1205
  %1209 = fmul fast float %1172, %1206
  %1210 = fmul fast float %1172, %1207
  %1211 = fadd fast float %1208, 1.000000e+00
  %1212 = fadd fast float %1209, 1.000000e+00
  %1213 = fadd fast float %1210, 1.000000e+00
  %1214 = fmul fast float %1211, %1159
  %1215 = fmul fast float %1212, %1160
  %1216 = fmul fast float %1213, %1161
  br label %1247

; <label>:1217                                    ; preds = %1202
  %1218 = icmp eq i32 %1167, 2
  br i1 %1218, label %1219, label %1247

; <label>:1219                                    ; preds = %1217
  %1220 = call float @dx.op.unary.f32(i32 24, float %1046)  ; Sqrt(value)
  %1221 = call float @dx.op.unary.f32(i32 24, float %1047)  ; Sqrt(value)
  %1222 = call float @dx.op.unary.f32(i32 24, float %1048)  ; Sqrt(value)
  %1223 = fadd fast float %1220, -5.000000e-01
  %1224 = fadd fast float %1221, -5.000000e-01
  %1225 = fadd fast float %1222, -5.000000e-01
  %1226 = fmul fast float %1223, %1172
  %1227 = fmul fast float %1224, %1172
  %1228 = fmul fast float %1225, %1172
  %1229 = fadd fast float %1226, 5.000000e-01
  %1230 = fadd fast float %1227, 5.000000e-01
  %1231 = fadd fast float %1228, 5.000000e-01
  %1232 = fmul fast float %1229, 2.000000e+00
  %1233 = fsub fast float 1.000000e+00, %1232
  %1234 = fmul fast float %1233, %1159
  %1235 = fadd fast float %1234, %1232
  %1236 = fmul fast float %1235, %1159
  %1237 = fmul fast float %1230, 2.000000e+00
  %1238 = fsub fast float 1.000000e+00, %1237
  %1239 = fmul fast float %1238, %1160
  %1240 = fadd fast float %1239, %1237
  %1241 = fmul fast float %1240, %1160
  %1242 = fmul fast float %1231, 2.000000e+00
  %1243 = fsub fast float 1.000000e+00, %1242
  %1244 = fmul fast float %1243, %1161
  %1245 = fadd fast float %1244, %1242
  %1246 = fmul fast float %1245, %1161
  br label %1247

; <label>:1247                                    ; preds = %1219, %1217, %1204, %1174, %1158
  %1248 = phi float [ %1159, %1158 ], [ %1236, %1219 ], [ %1159, %1217 ], [ %1214, %1204 ], [ %1184, %1174 ]
  %1249 = phi float [ %1160, %1158 ], [ %1241, %1219 ], [ %1160, %1217 ], [ %1215, %1204 ], [ %1185, %1174 ]
  %1250 = phi float [ %1161, %1158 ], [ %1246, %1219 ], [ %1161, %1217 ], [ %1216, %1204 ], [ %1186, %1174 ]
  %1251 = phi float [ %1162, %1158 ], [ %1162, %1219 ], [ %1162, %1217 ], [ %1162, %1204 ], [ %1196, %1174 ]
  %1252 = phi float [ %1163, %1158 ], [ %1163, %1219 ], [ %1163, %1217 ], [ %1163, %1204 ], [ %1197, %1174 ]
  %1253 = phi float [ %1164, %1158 ], [ %1164, %1219 ], [ %1164, %1217 ], [ %1164, %1204 ], [ %1198, %1174 ]
  %1254 = phi float [ %672, %1158 ], [ %672, %1219 ], [ %672, %1217 ], [ %672, %1204 ], [ %1189, %1174 ]
  %1255 = phi float [ %676, %1158 ], [ %676, %1219 ], [ %676, %1217 ], [ %676, %1204 ], [ %1201, %1174 ]
  %1256 = and i32 %1166, 12
  %1257 = icmp eq i32 %1256, 12
  br i1 %1257, label %1313, label %1258

; <label>:1258                                    ; preds = %1247
  %1259 = and i32 %1166, 4194336
  %1260 = icmp eq i32 %1259, 4194336
  %1261 = select i1 %1260, float %832, float 0.000000e+00
  %1262 = and i32 %1166, 8388640
  %1263 = icmp eq i32 %1262, 8388640
  %1264 = select i1 %1263, float %832, float 0.000000e+00
  %1265 = icmp eq i32 %1256, 0
  br i1 %1265, label %1266, label %1273

; <label>:1266                                    ; preds = %1258
  %1267 = fsub fast float %1092, %675
  %1268 = fmul fast float %1261, %1267
  %1269 = fadd fast float %1268, %675
  %1270 = fsub fast float %1091, %674
  %1271 = fmul fast float %1264, %1270
  %1272 = fadd fast float %1271, %674
  br label %1313

; <label>:1273                                    ; preds = %1258
  %1274 = icmp eq i32 %1256, 4
  br i1 %1274, label %1275, label %1303

; <label>:1275                                    ; preds = %1273
  %1276 = call float @dx.op.binary.f32(i32 36, float %675, float %1092)  ; FMin(a,b)
  %1277 = fsub fast float %1276, %675
  %1278 = fmul fast float %1277, %1261
  %1279 = fadd fast float %1278, %675
  %1280 = fadd fast float %1091, %674
  %1281 = fmul fast float %1280, 0x3FF337FAE0000000
  %1282 = fmul fast float %674, %674
  %1283 = fmul fast float %1091, %1091
  %1284 = fadd fast float %1283, %1282
  %1285 = fmul fast float %1284, 0x3FE5152B00000000
  %1286 = fmul fast float %674, 0xBFCC1F85E0000000
  %1287 = fmul fast float %1286, %1091
  %1288 = fadd fast float %1287, 0xBFE1363700000000
  %1289 = fadd fast float %1288, %1281
  %1290 = fsub fast float %1289, %1285
  %1291 = fmul fast float %1280, 0x3FBA6F0D00000000
  %1292 = fmul fast float %1284, 0x3FD0432880000000
  %1293 = fmul fast float %674, 0xBFEF110800000000
  %1294 = fmul fast float %1293, %1091
  %1295 = fadd fast float %1294, 1.000000e+00
  %1296 = fsub fast float %1295, %1291
  %1297 = fadd fast float %1296, %1292
  %1298 = fdiv fast float %1290, %1297
  %1299 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1300 = fsub fast float %1299, %674
  %1301 = fmul fast float %1300, %1264
  %1302 = fadd fast float %1301, %674
  br label %1313

; <label>:1303                                    ; preds = %1273
  %1304 = icmp eq i32 %1256, 8
  br i1 %1304, label %1305, label %1313

; <label>:1305                                    ; preds = %1303
  %1306 = call float @dx.op.binary.f32(i32 36, float %675, float %1092)  ; FMin(a,b)
  %1307 = fsub fast float %1306, %675
  %1308 = fmul fast float %1307, %1261
  %1309 = fadd fast float %1308, %675
  %1310 = fsub fast float %1091, %674
  %1311 = fmul fast float %1264, %1310
  %1312 = fadd fast float %1311, %674
  br label %1313

; <label>:1313                                    ; preds = %1305, %1303, %1275, %1266, %1247, %831, %665
  %1314 = phi float [ %1248, %1247 ], [ %666, %831 ], [ %666, %665 ], [ %1248, %1266 ], [ %1248, %1275 ], [ %1248, %1303 ], [ %1248, %1305 ]
  %1315 = phi float [ %1249, %1247 ], [ %667, %831 ], [ %667, %665 ], [ %1249, %1266 ], [ %1249, %1275 ], [ %1249, %1303 ], [ %1249, %1305 ]
  %1316 = phi float [ %1250, %1247 ], [ %668, %831 ], [ %668, %665 ], [ %1250, %1266 ], [ %1250, %1275 ], [ %1250, %1303 ], [ %1250, %1305 ]
  %1317 = phi float [ %1251, %1247 ], [ %669, %831 ], [ %669, %665 ], [ %1251, %1266 ], [ %1251, %1275 ], [ %1251, %1303 ], [ %1251, %1305 ]
  %1318 = phi float [ %1252, %1247 ], [ %670, %831 ], [ %670, %665 ], [ %1252, %1266 ], [ %1252, %1275 ], [ %1252, %1303 ], [ %1252, %1305 ]
  %1319 = phi float [ %1253, %1247 ], [ %671, %831 ], [ %671, %665 ], [ %1253, %1266 ], [ %1253, %1275 ], [ %1253, %1303 ], [ %1253, %1305 ]
  %1320 = phi float [ %1254, %1247 ], [ %672, %831 ], [ %672, %665 ], [ %1254, %1266 ], [ %1254, %1275 ], [ %1254, %1303 ], [ %1254, %1305 ]
  %1321 = phi float [ %674, %1247 ], [ %674, %831 ], [ %674, %665 ], [ %1272, %1266 ], [ %1302, %1275 ], [ %674, %1303 ], [ %1312, %1305 ]
  %1322 = phi float [ %675, %1247 ], [ %675, %831 ], [ %675, %665 ], [ %1269, %1266 ], [ %1279, %1275 ], [ %675, %1303 ], [ %1309, %1305 ]
  %1323 = phi float [ %1255, %1247 ], [ %676, %831 ], [ %676, %665 ], [ %1255, %1266 ], [ %1255, %1275 ], [ %1255, %1303 ], [ %1255, %1305 ]
  %1324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1325 = extractvalue %dx.types.CBufRet.f32 %1324, 0
  %1326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.f32 %1326, 0
  %1328 = extractvalue %dx.types.CBufRet.f32 %1326, 1
  %1329 = extractvalue %dx.types.CBufRet.f32 %1326, 2
  %1330 = fadd fast float %1327, %107
  %1331 = fadd fast float %1328, %108
  %1332 = fadd fast float %1329, %109
  %1333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 122)  ; CBufferLoadLegacy(handle,regIndex)
  %1334 = extractvalue %dx.types.CBufRet.f32 %1333, 0
  %1335 = extractvalue %dx.types.CBufRet.f32 %1333, 1
  %1336 = extractvalue %dx.types.CBufRet.f32 %1333, 2
  %1337 = extractvalue %dx.types.CBufRet.f32 %1333, 3
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 123)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 0
  %1340 = extractvalue %dx.types.CBufRet.f32 %1338, 1
  %1341 = extractvalue %dx.types.CBufRet.f32 %1338, 2
  %1342 = extractvalue %dx.types.CBufRet.f32 %1338, 3
  %1343 = call float @dx.op.dot4.f32(i32 56, float %1330, float %1331, float %1332, float 1.000000e+00, float %1334, float %1335, float %1336, float %1337)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1344 = call float @dx.op.dot4.f32(i32 56, float %1330, float %1331, float %1332, float 1.000000e+00, float %1339, float %1340, float %1341, float %1342)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1345 = fadd fast float %1343, 1.000000e+00
  %1346 = fadd fast float %1344, 1.000000e+00
  %1347 = fmul fast float %1345, 5.000000e-01
  %1348 = fmul fast float %1346, 5.000000e-01
  %1349 = fsub fast float 1.000000e+00, %1348
  %1350 = call float @dx.op.unary.f32(i32 7, float %1347)  ; Saturate(value)
  %1351 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  %1352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.f32 %1352, 2
  %1354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1355 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %1, %dx.types.Handle %1354, float %1350, float %1351, float undef, float undef, i32 0, i32 0, i32 undef, float %1353, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %1356 = extractvalue %dx.types.ResRet.f32 %1355, 0
  %1357 = extractvalue %dx.types.ResRet.f32 %1355, 1
  %1358 = fadd fast float %1356, -5.000000e-01
  %1359 = fadd fast float %1357, -5.000000e-01
  %1360 = fmul fast float %1358, 2.000000e+00
  %1361 = fmul fast float %1359, 2.000000e+00
  %1362 = call float @dx.op.dot2.f32(i32 54, float %1360, float %1361, float %1360, float %1361)  ; Dot2(ax,ay,bx,by)
  %1363 = fmul fast float %1362, 0x3FE3333340000000
  %1364 = fsub fast float 1.000000e+00, %1363
  %1365 = call float @dx.op.dot3.f32(i32 55, float %1360, float %1361, float %1364, float %1360, float %1361, float %1364)  ; Dot3(ax,ay,az,bx,by,bz)
  %1366 = call float @dx.op.unary.f32(i32 25, float %1365)  ; Rsqrt(value)
  %1367 = fmul fast float %1360, %1366
  %1368 = fmul fast float %1361, %1366
  %1369 = fmul fast float %1364, %1366
  %1370 = fmul fast float %1369, %43
  %1371 = fmul fast float %1369, %44
  %1372 = fmul fast float %1369, %45
  %1373 = fmul fast float %1367, %39
  %1374 = fmul fast float %1367, %40
  %1375 = fmul fast float %1367, %41
  %1376 = fadd fast float %1370, %1373
  %1377 = fadd fast float %1371, %1374
  %1378 = fadd fast float %1372, %1375
  %1379 = fmul fast float %1368, %71
  %1380 = fmul fast float %1368, %72
  %1381 = fmul fast float %1368, %73
  %1382 = fadd fast float %1376, %1379
  %1383 = fadd fast float %1377, %1380
  %1384 = fadd fast float %1378, %1381
  %1385 = call float @dx.op.dot3.f32(i32 55, float %1382, float %1383, float %1384, float %1382, float %1383, float %1384)  ; Dot3(ax,ay,az,bx,by,bz)
  %1386 = call float @dx.op.unary.f32(i32 25, float %1385)  ; Rsqrt(value)
  %1387 = fmul fast float %1382, %1386
  %1388 = fmul fast float %1383, %1386
  %1389 = fmul fast float %1384, %1386
  %1390 = call float @dx.op.unary.f32(i32 83, float %107)  ; DerivCoarseX(value)
  %1391 = call float @dx.op.unary.f32(i32 83, float %108)  ; DerivCoarseX(value)
  %1392 = call float @dx.op.unary.f32(i32 83, float %109)  ; DerivCoarseX(value)
  %1393 = call float @dx.op.unary.f32(i32 84, float %107)  ; DerivCoarseY(value)
  %1394 = call float @dx.op.unary.f32(i32 84, float %108)  ; DerivCoarseY(value)
  %1395 = call float @dx.op.unary.f32(i32 84, float %109)  ; DerivCoarseY(value)
  %1396 = fadd fast float %1390, %107
  %1397 = fadd fast float %1391, %108
  %1398 = fadd fast float %1392, %109
  %1399 = fadd fast float %1393, %107
  %1400 = fadd fast float %1394, %108
  %1401 = fadd fast float %1395, %109
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.CBufRet.f32 %1402, 1
  %1405 = extractvalue %dx.types.CBufRet.f32 %1402, 2
  %1406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1407 = extractvalue %dx.types.CBufRet.f32 %1406, 2
  %1408 = extractvalue %dx.types.CBufRet.f32 %1406, 3
  %1409 = fmul fast float %1403, %60
  %1410 = fmul fast float %1409, %1407
  %1411 = fmul fast float %1404, %61
  %1412 = fmul fast float %1411, %1408
  %1413 = fptoui float %1410 to i32
  %1414 = fptoui float %1412 to i32
  %1415 = fadd fast float %1403, -1.000000e+00
  %1416 = fadd fast float %1404, -1.000000e+00
  %1417 = fptoui float %1415 to i32
  %1418 = fptoui float %1416 to i32
  %1419 = call i32 @dx.op.binary.i32(i32 40, i32 %1413, i32 %1417)  ; UMin(a,b)
  %1420 = call i32 @dx.op.binary.i32(i32 40, i32 %1414, i32 %1418)  ; UMin(a,b)
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 2
  %1423 = extractvalue %dx.types.CBufRet.f32 %1421, 3
  %1424 = fmul fast float %1422, %55
  %1425 = fsub fast float %1424, %1423
  %1426 = fadd fast float %1405, -1.000000e+00
  %1427 = call float @dx.op.binary.f32(i32 36, float %1425, float %1426)  ; FMin(a,b)
  %1428 = fptoui float %1427 to i32
  %1429 = fptoui float %1403 to i32
  %1430 = fptoui float %1404 to i32
  %1431 = mul i32 %1428, %1430
  %1432 = add i32 %1431, %1420
  %1433 = mul i32 %1432, %1429
  %1434 = add i32 %1433, %1419
  %1435 = shl i32 %1434, 2
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1435, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = and i32 %1437, 1023
  %1439 = lshr i32 %1437, 10
  %1440 = icmp eq i32 %1438, 0
  br i1 %1440, label %1865, label %1441

; <label>:1441                                    ; preds = %1313
  %1442 = and i32 %1437, 1023
  br label %1443

; <label>:1443                                    ; preds = %1569, %1441
  %1444 = phi float [ %1570, %1569 ], [ 0.000000e+00, %1441 ]
  %1445 = phi float [ %1571, %1569 ], [ %1325, %1441 ]
  %1446 = phi float [ %1572, %1569 ], [ %1323, %1441 ]
  %1447 = phi float [ %1573, %1569 ], [ 0.000000e+00, %1441 ]
  %1448 = phi float [ %1574, %1569 ], [ 0.000000e+00, %1441 ]
  %1449 = phi float [ %1575, %1569 ], [ %1317, %1441 ]
  %1450 = phi float [ %1576, %1569 ], [ %1318, %1441 ]
  %1451 = phi float [ %1577, %1569 ], [ %1319, %1441 ]
  %1452 = phi float [ %1578, %1569 ], [ %1387, %1441 ]
  %1453 = phi float [ %1579, %1569 ], [ %1388, %1441 ]
  %1454 = phi float [ %1580, %1569 ], [ %1389, %1441 ]
  %1455 = phi float [ %1581, %1569 ], [ %1322, %1441 ]
  %1456 = phi float [ %1582, %1569 ], [ %1321, %1441 ]
  %1457 = phi float [ %1583, %1569 ], [ 0.000000e+00, %1441 ]
  %1458 = phi float [ %1584, %1569 ], [ %1320, %1441 ]
  %1459 = phi float [ %1585, %1569 ], [ %1314, %1441 ]
  %1460 = phi float [ %1586, %1569 ], [ %1315, %1441 ]
  %1461 = phi float [ %1587, %1569 ], [ %1316, %1441 ]
  %1462 = phi i32 [ %1519, %1569 ], [ 0, %1441 ]
  %1463 = add nuw nsw i32 %1462, %1439
  %1464 = shl i32 %1463, 2
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = shl i32 %1466, 8
  %1468 = or i32 %1467, 48
  %1469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.ResRet.f32 %1469, 1
  %1472 = extractvalue %dx.types.ResRet.f32 %1469, 2
  %1473 = extractvalue %dx.types.ResRet.f32 %1469, 3
  %1474 = or i32 %1467, 64
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = extractvalue %dx.types.ResRet.i32 %1475, 1
  %1478 = or i32 %1467, 80
  %1479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1478, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.f32 %1479, 2
  %1481 = extractvalue %dx.types.ResRet.f32 %1479, 3
  %1482 = or i32 %1467, 96
  %1483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1482, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.f32 %1483, 0
  %1485 = extractvalue %dx.types.ResRet.f32 %1483, 1
  %1486 = extractvalue %dx.types.ResRet.f32 %1483, 2
  %1487 = extractvalue %dx.types.ResRet.f32 %1483, 3
  %1488 = or i32 %1467, 112
  %1489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.f32 %1489, 2
  %1491 = or i32 %1467, 128
  %1492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.f32 %1492, 0
  %1494 = extractvalue %dx.types.ResRet.f32 %1492, 1
  %1495 = extractvalue %dx.types.ResRet.f32 %1492, 2
  %1496 = extractvalue %dx.types.ResRet.f32 %1492, 3
  %1497 = or i32 %1467, 144
  %1498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.f32 %1498, 0
  %1500 = extractvalue %dx.types.ResRet.f32 %1498, 1
  %1501 = extractvalue %dx.types.ResRet.f32 %1498, 2
  %1502 = extractvalue %dx.types.ResRet.f32 %1498, 3
  %1503 = or i32 %1467, 160
  %1504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.f32 %1504, 0
  %1506 = extractvalue %dx.types.ResRet.f32 %1504, 1
  %1507 = extractvalue %dx.types.ResRet.f32 %1504, 2
  %1508 = extractvalue %dx.types.ResRet.f32 %1504, 3
  %1509 = or i32 %1467, 192
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = or i32 %1467, 208
  %1513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.f32 %1513, 0
  %1515 = or i32 %1467, 248
  %1516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1515, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.f32 %1516, 0
  %1518 = extractvalue %dx.types.ResRet.f32 %1516, 1
  %1519 = add nuw nsw i32 %1462, 1
  %1520 = bitcast float %1473 to i32
  %1521 = and i32 %1520, 2560
  %1522 = icmp eq i32 %1521, 2048
  %1523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.f32 %1523, 0
  %1525 = extractvalue %dx.types.ResRet.f32 %1523, 1
  %1526 = extractvalue %dx.types.ResRet.f32 %1523, 2
  %1527 = extractvalue %dx.types.ResRet.f32 %1523, 3
  %1528 = call float @dx.op.dot4.f32(i32 56, float %1524, float %1525, float %1526, float %1527, float %107, float %108, float %109, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1529 = or i32 %1467, 16
  %1530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.f32 %1530, 0
  %1532 = extractvalue %dx.types.ResRet.f32 %1530, 1
  %1533 = extractvalue %dx.types.ResRet.f32 %1530, 2
  %1534 = extractvalue %dx.types.ResRet.f32 %1530, 3
  %1535 = call float @dx.op.dot4.f32(i32 56, float %1531, float %1532, float %1533, float %1534, float %107, float %108, float %109, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1536 = or i32 %1467, 32
  %1537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.f32 %1537, 0
  %1539 = extractvalue %dx.types.ResRet.f32 %1537, 1
  %1540 = extractvalue %dx.types.ResRet.f32 %1537, 2
  %1541 = extractvalue %dx.types.ResRet.f32 %1537, 3
  %1542 = call float @dx.op.dot4.f32(i32 56, float %1538, float %1539, float %1540, float %1541, float %107, float %108, float %109, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1543 = call float @dx.op.unary.f32(i32 27, float %1528)  ; Round_ni(value)
  %1544 = call float @dx.op.unary.f32(i32 6, float %1543)  ; FAbs(value)
  %1545 = call float @dx.op.unary.f32(i32 27, float %1535)  ; Round_ni(value)
  %1546 = call float @dx.op.unary.f32(i32 6, float %1545)  ; FAbs(value)
  %1547 = call float @dx.op.unary.f32(i32 6, float %1542)  ; FAbs(value)
  %1548 = call float @dx.op.unary.f32(i32 27, float %1547)  ; Round_ni(value)
  %1549 = fadd fast float %1546, %1544
  %1550 = fadd fast float %1549, %1548
  %1551 = fcmp fast oeq float %1550, 0.000000e+00
  %1552 = call float @dx.op.dot4.f32(i32 56, float %1524, float %1525, float %1526, float %1527, float %1396, float %1397, float %1398, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1553 = call float @dx.op.dot4.f32(i32 56, float %1531, float %1532, float %1533, float %1534, float %1396, float %1397, float %1398, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1554 = call float @dx.op.dot4.f32(i32 56, float %1524, float %1525, float %1526, float %1527, float %1399, float %1400, float %1401, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1555 = call float @dx.op.dot4.f32(i32 56, float %1531, float %1532, float %1533, float %1534, float %1399, float %1400, float %1401, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1556 = fsub fast float %1552, %1528
  %1557 = fsub fast float %1554, %1528
  %1558 = fsub fast float %1553, %1535
  %1559 = fsub fast float %1555, %1535
  %1560 = call float @dx.op.dot3.f32(i32 55, float %1470, float %1471, float %1472, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %1561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1562 = extractvalue %dx.types.CBufRet.f32 %1561, 2
  %1563 = fadd fast float %1562, %1560
  %1564 = call float @dx.op.unary.f32(i32 7, float %1563)  ; Saturate(value)
  %1565 = extractvalue %dx.types.CBufRet.f32 %1561, 0
  %1566 = fcmp fast ogt float %1564, %1565
  %1567 = and i1 %1551, %1566
  %1568 = and i1 %1522, %1567
  br i1 %1568, label %1589, label %1569

; <label>:1569                                    ; preds = %1851, %1670, %1589, %1443
  %1570 = phi float [ %1444, %1589 ], [ %1673, %1670 ], [ %1673, %1851 ], [ %1444, %1443 ]
  %1571 = phi float [ %1445, %1589 ], [ %1445, %1670 ], [ %1826, %1851 ], [ %1445, %1443 ]
  %1572 = phi float [ %1446, %1589 ], [ %1446, %1670 ], [ %1824, %1851 ], [ %1446, %1443 ]
  %1573 = phi float [ %1447, %1589 ], [ %1447, %1670 ], [ %1796, %1851 ], [ %1447, %1443 ]
  %1574 = phi float [ %1448, %1589 ], [ %1448, %1670 ], [ %1794, %1851 ], [ %1448, %1443 ]
  %1575 = phi float [ %1449, %1589 ], [ %1449, %1670 ], [ %1861, %1851 ], [ %1449, %1443 ]
  %1576 = phi float [ %1450, %1589 ], [ %1450, %1670 ], [ %1862, %1851 ], [ %1450, %1443 ]
  %1577 = phi float [ %1451, %1589 ], [ %1451, %1670 ], [ %1863, %1851 ], [ %1451, %1443 ]
  %1578 = phi float [ %1452, %1589 ], [ %1452, %1670 ], [ %1775, %1851 ], [ %1452, %1443 ]
  %1579 = phi float [ %1453, %1589 ], [ %1453, %1670 ], [ %1776, %1851 ], [ %1453, %1443 ]
  %1580 = phi float [ %1454, %1589 ], [ %1454, %1670 ], [ %1777, %1851 ], [ %1454, %1443 ]
  %1581 = phi float [ %1455, %1589 ], [ %1455, %1670 ], [ %1804, %1851 ], [ %1455, %1443 ]
  %1582 = phi float [ %1456, %1589 ], [ %1456, %1670 ], [ %1801, %1851 ], [ %1456, %1443 ]
  %1583 = phi float [ %1457, %1589 ], [ %1457, %1670 ], [ %1798, %1851 ], [ %1457, %1443 ]
  %1584 = phi float [ %1458, %1589 ], [ %1458, %1670 ], [ %1792, %1851 ], [ %1458, %1443 ]
  %1585 = phi float [ %1459, %1589 ], [ %1459, %1670 ], [ %1787, %1851 ], [ %1459, %1443 ]
  %1586 = phi float [ %1460, %1589 ], [ %1460, %1670 ], [ %1788, %1851 ], [ %1460, %1443 ]
  %1587 = phi float [ %1461, %1589 ], [ %1461, %1670 ], [ %1789, %1851 ], [ %1461, %1443 ]
  %1588 = icmp eq i32 %1519, %1442
  br i1 %1588, label %1864, label %1443

; <label>:1589                                    ; preds = %1443
  %1590 = extractvalue %dx.types.ResRet.f32 %1489, 3
  %1591 = extractvalue %dx.types.ResRet.f32 %1489, 1
  %1592 = extractvalue %dx.types.ResRet.f32 %1489, 0
  %1593 = extractvalue %dx.types.ResRet.f32 %1479, 1
  %1594 = extractvalue %dx.types.ResRet.f32 %1479, 0
  %1595 = extractvalue %dx.types.ResRet.i32 %1475, 3
  %1596 = extractvalue %dx.types.ResRet.i32 %1475, 2
  %1597 = add i32 %1595, 0
  %1598 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1597, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1600 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1598, %dx.types.Handle %1599, float %1528, float %1535, float undef, float undef, i32 0, i32 0, i32 undef, float %1556, float %1558, float undef, float %1557, float %1559, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1601 = extractvalue %dx.types.ResRet.f32 %1600, 0
  %1602 = fmul fast float %1601, %1594
  %1603 = fadd fast float %1602, %1593
  %1604 = call float @dx.op.unary.f32(i32 7, float %1603)  ; Saturate(value)
  %1605 = fmul fast float %1528, %1484
  %1606 = call float @dx.op.tertiary.f32(i32 46, float %1485, float %1535, float %1605)  ; FMad(a,b,c)
  %1607 = fadd fast float %1606, %1592
  %1608 = fmul fast float %1528, %1486
  %1609 = call float @dx.op.tertiary.f32(i32 46, float %1487, float %1535, float %1608)  ; FMad(a,b,c)
  %1610 = fadd fast float %1609, %1591
  %1611 = fmul fast float %1556, %1484
  %1612 = call float @dx.op.tertiary.f32(i32 46, float %1485, float %1558, float %1611)  ; FMad(a,b,c)
  %1613 = fmul fast float %1556, %1486
  %1614 = call float @dx.op.tertiary.f32(i32 46, float %1487, float %1558, float %1613)  ; FMad(a,b,c)
  %1615 = fmul fast float %1557, %1484
  %1616 = call float @dx.op.tertiary.f32(i32 46, float %1485, float %1559, float %1615)  ; FMad(a,b,c)
  %1617 = fmul fast float %1557, %1486
  %1618 = call float @dx.op.tertiary.f32(i32 46, float %1487, float %1559, float %1617)  ; FMad(a,b,c)
  %1619 = add i32 %1596, 0
  %1620 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1619, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1621 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1620, %dx.types.Handle %1599, float %1607, float %1610, float undef, float undef, i32 0, i32 0, i32 undef, float %1612, float %1614, float undef, float %1616, float %1618, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1622 = extractvalue %dx.types.ResRet.f32 %1621, 0
  %1623 = and i32 %1520, 1024
  %1624 = icmp ne i32 %1623, 0
  %1625 = fcmp fast ogt float %1622, 0x3FE0101020000000
  %1626 = uitofp i1 %1625 to float
  %1627 = select i1 %1624, float %1626, float %1622
  %1628 = and i32 %1520, 8192
  %1629 = icmp ne i32 %1628, 0
  %1630 = select i1 %1629, float %1590, float 1.000000e+00
  %1631 = fmul fast float %1528, 2.000000e+00
  %1632 = fadd fast float %1631, -1.000000e+00
  %1633 = call float @dx.op.unary.f32(i32 6, float %1632)  ; FAbs(value)
  %1634 = fmul fast float %1633, %1517
  %1635 = fsub fast float %1634, %1517
  %1636 = call float @dx.op.unary.f32(i32 7, float %1635)  ; Saturate(value)
  %1637 = fmul fast float %1535, 2.000000e+00
  %1638 = fadd fast float %1637, -1.000000e+00
  %1639 = call float @dx.op.unary.f32(i32 6, float %1638)  ; FAbs(value)
  %1640 = fmul fast float %1639, %1518
  %1641 = fsub fast float %1640, %1518
  %1642 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1643 = fmul fast float %1547, %1480
  %1644 = fsub fast float %1643, %1480
  %1645 = call float @dx.op.unary.f32(i32 7, float %1644)  ; Saturate(value)
  %1646 = fmul fast float %1604, %1630
  %1647 = fmul fast float %1646, %1601
  %1648 = fmul fast float %1647, %1636
  %1649 = fmul fast float %1648, %1627
  %1650 = fmul fast float %1649, %1642
  %1651 = fmul fast float %1650, %1645
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 1
  %1654 = extractvalue %dx.types.CBufRet.f32 %1652, 0
  %1655 = fsub fast float %1564, %1654
  %1656 = fmul fast float %1655, %1653
  %1657 = call float @dx.op.unary.f32(i32 7, float %1656)  ; Saturate(value)
  %1658 = fmul fast float %1651, %1481
  %1659 = fadd fast float %1651, %1481
  %1660 = fmul fast float %1659, %1490
  %1661 = fsub fast float %1660, %1490
  %1662 = call float @dx.op.unary.f32(i32 7, float %1661)  ; Saturate(value)
  %1663 = and i32 %1520, 128
  %1664 = icmp ne i32 %1663, 0
  %1665 = select i1 %1664, float %1662, float %1658
  %1666 = fmul fast float %1665, %1657
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 0
  %1669 = fcmp fast ugt float %1666, %1668
  br i1 %1669, label %1670, label %1569

; <label>:1670                                    ; preds = %1589
  %1671 = select i1 %1629, float %1666, float 0.000000e+00
  %1672 = fadd fast float %1671, %1444
  %1673 = call float @dx.op.unary.f32(i32 7, float %1672)  ; Saturate(value)
  br i1 %1629, label %1569, label %1674

; <label>:1674                                    ; preds = %1670
  %1675 = and i32 %1520, 4
  %1676 = and i32 %1520, 8
  %1677 = add i32 %1476, 0
  %1678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1677, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1679 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1678, %dx.types.Handle %1354, float %1607, float %1610, float undef, float undef, i32 0, i32 0, i32 undef, float %1612, float %1614, float undef, float %1616, float %1618, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1680 = extractvalue %dx.types.ResRet.f32 %1679, 0
  %1681 = extractvalue %dx.types.ResRet.f32 %1679, 1
  %1682 = extractvalue %dx.types.ResRet.f32 %1679, 2
  %1683 = extractvalue %dx.types.ResRet.f32 %1679, 3
  %1684 = bitcast float %1502 to i32
  %1685 = and i32 %1684, 255
  %1686 = uitofp i32 %1685 to float
  %1687 = lshr i32 %1684, 8
  %1688 = and i32 %1687, 255
  %1689 = uitofp i32 %1688 to float
  %1690 = fmul fast float %1683, %1686
  %1691 = fadd fast float %1690, %1689
  %1692 = fmul fast float %1691, 0x3F70101000000000
  %1693 = add i32 %1477, 0
  %1694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1693, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1695 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1694, %dx.types.Handle %1354, float %1607, float %1610, float undef, float undef, i32 0, i32 0, i32 undef, float %1612, float %1614, float undef, float %1616, float %1618, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1696 = extractvalue %dx.types.ResRet.f32 %1695, 0
  %1697 = extractvalue %dx.types.ResRet.f32 %1695, 1
  %1698 = extractvalue %dx.types.ResRet.f32 %1695, 2
  %1699 = extractvalue %dx.types.ResRet.f32 %1695, 3
  %1700 = bitcast float %1496 to i32
  %1701 = and i32 %1700, 255
  %1702 = uitofp i32 %1701 to float
  %1703 = lshr i32 %1700, 8
  %1704 = and i32 %1703, 255
  %1705 = uitofp i32 %1704 to float
  %1706 = lshr i32 %1700, 16
  %1707 = and i32 %1706, 255
  %1708 = uitofp i32 %1707 to float
  %1709 = fmul fast float %1708, 0x3F70101000000000
  %1710 = fmul fast float %1696, %1702
  %1711 = fadd fast float %1710, %1705
  %1712 = fmul fast float %1711, 0x3F70101000000000
  %1713 = fadd fast float %1697, -5.000000e-01
  %1714 = fadd fast float %1699, -5.000000e-01
  %1715 = fmul fast float %1713, %1709
  %1716 = fmul fast float %1714, %1709
  %1717 = fadd fast float %1715, 5.000000e-01
  %1718 = fadd fast float %1716, 5.000000e-01
  %1719 = fmul fast float %1680, %1505
  %1720 = fmul fast float %1681, %1506
  %1721 = fmul fast float %1682, %1507
  %1722 = fmul fast float %1717, 2.000000e+00
  %1723 = fadd fast float %1722, -1.000000e+00
  %1724 = fmul fast float %1718, 2.000000e+00
  %1725 = fadd fast float %1724, -1.000000e+00
  %1726 = fadd fast float %1723, %1725
  %1727 = fmul fast float %1726, 5.000000e-01
  %1728 = fsub fast float %1723, %1725
  %1729 = fmul fast float %1728, 5.000000e-01
  %1730 = call float @dx.op.unary.f32(i32 6, float %1727)  ; FAbs(value)
  %1731 = fsub fast float 1.000000e+00, %1730
  %1732 = call float @dx.op.unary.f32(i32 6, float %1729)  ; FAbs(value)
  %1733 = fsub fast float %1731, %1732
  %1734 = call float @dx.op.dot3.f32(i32 55, float %1727, float %1729, float %1733, float %1727, float %1729, float %1733)  ; Dot3(ax,ay,az,bx,by,bz)
  %1735 = call float @dx.op.unary.f32(i32 25, float %1734)  ; Rsqrt(value)
  %1736 = fmul fast float %1727, %1735
  %1737 = fmul fast float %1729, %1735
  %1738 = fmul fast float %1735, %1733
  %1739 = fmul fast float %1738, %1470
  %1740 = fmul fast float %1738, %1471
  %1741 = fmul fast float %1738, %1472
  %1742 = fmul fast float %1736, %1493
  %1743 = fmul fast float %1736, %1494
  %1744 = fmul fast float %1736, %1495
  %1745 = fadd fast float %1742, %1739
  %1746 = fadd fast float %1743, %1740
  %1747 = fadd fast float %1744, %1741
  %1748 = fmul fast float %1737, %1499
  %1749 = fmul fast float %1737, %1500
  %1750 = fmul fast float %1737, %1501
  %1751 = fadd fast float %1745, %1748
  %1752 = fadd fast float %1746, %1749
  %1753 = fadd fast float %1747, %1750
  %1754 = call float @dx.op.dot3.f32(i32 55, float %1751, float %1752, float %1753, float %1751, float %1752, float %1753)  ; Dot3(ax,ay,az,bx,by,bz)
  %1755 = call float @dx.op.unary.f32(i32 25, float %1754)  ; Rsqrt(value)
  %1756 = fmul fast float %1751, %1755
  %1757 = fmul fast float %1752, %1755
  %1758 = fmul fast float %1753, %1755
  %1759 = icmp ne i32 %1676, 0
  %1760 = select i1 %1759, float 1.000000e+00, float 0.000000e+00
  %1761 = fmul fast float %1666, %1760
  %1762 = and i32 %1520, 1
  %1763 = icmp eq i32 %1762, 0
  br i1 %1763, label %1764, label %1768

; <label>:1764                                    ; preds = %1674
  %1765 = fsub fast float %1756, %1452
  %1766 = fsub fast float %1757, %1453
  %1767 = fsub fast float %1758, %1454
  br label %1768

; <label>:1768                                    ; preds = %1764, %1674
  %1769 = phi float [ %1765, %1764 ], [ %1756, %1674 ]
  %1770 = phi float [ %1766, %1764 ], [ %1757, %1674 ]
  %1771 = phi float [ %1767, %1764 ], [ %1758, %1674 ]
  %1772 = fmul float %1771, %1761
  %1773 = fmul float %1770, %1761
  %1774 = fmul float %1769, %1761
  %1775 = fadd fast float %1774, %1452
  %1776 = fadd fast float %1773, %1453
  %1777 = fadd fast float %1772, %1454
  %1778 = icmp ne i32 %1675, 0
  %1779 = select i1 %1778, float 1.000000e+00, float 0.000000e+00
  %1780 = fmul fast float %1666, %1779
  %1781 = fsub fast float %1719, %1459
  %1782 = fsub fast float %1720, %1460
  %1783 = fsub fast float %1721, %1461
  %1784 = fmul fast float %1781, %1780
  %1785 = fmul fast float %1782, %1780
  %1786 = fmul fast float %1783, %1780
  %1787 = fadd fast float %1784, %1459
  %1788 = fadd fast float %1785, %1460
  %1789 = fadd fast float %1786, %1461
  %1790 = fsub fast float %1692, %1458
  %1791 = fmul fast float %1790, %1780
  %1792 = fadd fast float %1791, %1458
  %1793 = fmul fast float %1780, %1448
  %1794 = fsub fast float %1448, %1793
  %1795 = fmul fast float %1780, %1447
  %1796 = fsub fast float %1447, %1795
  %1797 = fadd fast float %1666, %1457
  %1798 = call float @dx.op.unary.f32(i32 7, float %1797)  ; Saturate(value)
  %1799 = fsub fast float %1712, %1456
  %1800 = fmul fast float %1799, %1761
  %1801 = fadd fast float %1800, %1456
  %1802 = fsub fast float %1698, %1455
  %1803 = fmul fast float %1802, %1761
  %1804 = fadd fast float %1803, %1455
  %1805 = call float @dx.op.dot3.f32(i32 55, float %1719, float %1720, float %1721, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1807 = extractvalue %dx.types.CBufRet.f32 %1806, 0
  %1808 = extractvalue %dx.types.CBufRet.f32 %1806, 1
  %1809 = fmul fast float %1808, %1805
  %1810 = fadd fast float %1809, %1807
  %1811 = call float @dx.op.unary.f32(i32 7, float %1810)  ; Saturate(value)
  %1812 = bitcast float %1508 to i32
  %1813 = and i32 %1812, 65535
  %1814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1813)  ; LegacyF16ToF32(value)
  %1815 = lshr i32 %1812, 16
  %1816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1815)  ; LegacyF16ToF32(value)
  %1817 = fcmp fast oge float %1814, 0.000000e+00
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 0
  %1820 = select i1 %1817, float %1814, float %1819
  %1821 = fadd fast float %1820, %1816
  %1822 = fsub fast float %1811, %1446
  %1823 = fmul fast float %1822, %1666
  %1824 = fadd fast float %1823, %1446
  %1825 = fmul fast float %1821, %1666
  %1826 = call float @dx.op.binary.f32(i32 35, float %1445, float %1825)  ; FMax(a,b)
  %1827 = and i32 %1520, 16
  %1828 = icmp eq i32 %1827, 0
  br i1 %1828, label %1851, label %1829

; <label>:1829                                    ; preds = %1768
  %1830 = bitcast float %1514 to i32
  %1831 = add i32 %1511, 0
  %1832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1831, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1833 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1832, %dx.types.Handle %1354, float %1607, float %1610, float undef, float undef, i32 0, i32 0, i32 undef, float %1612, float %1614, float undef, float %1616, float %1618, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1834 = extractvalue %dx.types.ResRet.f32 %1833, 0
  %1835 = extractvalue %dx.types.ResRet.f32 %1833, 1
  %1836 = extractvalue %dx.types.ResRet.f32 %1833, 2
  %1837 = and i32 %1830, 65535
  %1838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1837)  ; LegacyF16ToF32(value)
  %1839 = fmul fast float %1834, %1505
  %1840 = fmul fast float %1835, %1506
  %1841 = fmul fast float %1836, %1507
  %1842 = and i32 %1520, 16384
  %1843 = icmp ne i32 %1842, 0
  %1844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.f32 %1844, 0
  %1846 = select i1 %1843, float %1845, float 1.000000e+00
  %1847 = fmul fast float %1846, %1838
  %1848 = fmul fast float %1839, %1847
  %1849 = fmul fast float %1840, %1847
  %1850 = fmul fast float %1841, %1847
  br label %1851

; <label>:1851                                    ; preds = %1829, %1768
  %1852 = phi float [ %1848, %1829 ], [ 0.000000e+00, %1768 ]
  %1853 = phi float [ %1849, %1829 ], [ 0.000000e+00, %1768 ]
  %1854 = phi float [ %1850, %1829 ], [ 0.000000e+00, %1768 ]
  %1855 = fsub fast float %1852, %1449
  %1856 = fsub fast float %1853, %1450
  %1857 = fsub fast float %1854, %1451
  %1858 = fmul fast float %1855, %1666
  %1859 = fmul fast float %1856, %1666
  %1860 = fmul fast float %1857, %1666
  %1861 = fadd fast float %1858, %1449
  %1862 = fadd fast float %1859, %1450
  %1863 = fadd fast float %1860, %1451
  br label %1569

; <label>:1864                                    ; preds = %1569
  br label %1865

; <label>:1865                                    ; preds = %1864, %1313
  %1866 = phi float [ 0.000000e+00, %1313 ], [ %1570, %1864 ]
  %1867 = phi float [ %1325, %1313 ], [ %1571, %1864 ]
  %1868 = phi float [ %1323, %1313 ], [ %1572, %1864 ]
  %1869 = phi float [ 0.000000e+00, %1313 ], [ %1573, %1864 ]
  %1870 = phi float [ 0.000000e+00, %1313 ], [ %1574, %1864 ]
  %1871 = phi float [ %1317, %1313 ], [ %1575, %1864 ]
  %1872 = phi float [ %1318, %1313 ], [ %1576, %1864 ]
  %1873 = phi float [ %1319, %1313 ], [ %1577, %1864 ]
  %1874 = phi float [ %1387, %1313 ], [ %1578, %1864 ]
  %1875 = phi float [ %1388, %1313 ], [ %1579, %1864 ]
  %1876 = phi float [ %1389, %1313 ], [ %1580, %1864 ]
  %1877 = phi float [ %1322, %1313 ], [ %1581, %1864 ]
  %1878 = phi float [ %1321, %1313 ], [ %1582, %1864 ]
  %1879 = phi float [ 0.000000e+00, %1313 ], [ %1583, %1864 ]
  %1880 = phi float [ %1320, %1313 ], [ %1584, %1864 ]
  %1881 = phi float [ %1314, %1313 ], [ %1585, %1864 ]
  %1882 = phi float [ %1315, %1313 ], [ %1586, %1864 ]
  %1883 = phi float [ %1316, %1313 ], [ %1587, %1864 ]
  %1884 = call float @dx.op.dot3.f32(i32 55, float %1874, float %1875, float %1876, float %1874, float %1875, float %1876)  ; Dot3(ax,ay,az,bx,by,bz)
  %1885 = call float @dx.op.unary.f32(i32 25, float %1884)  ; Rsqrt(value)
  %1886 = fmul fast float %1885, %1874
  %1887 = fmul fast float %1885, %1875
  %1888 = fmul fast float %1885, %1876
  %1889 = fadd fast float %1879, %673
  %1890 = call float @dx.op.unary.f32(i32 7, float %1889)  ; Saturate(value)
  %1891 = call float @dx.op.dot3.f32(i32 55, float %1886, float %1887, float %1888, float %1886, float %1887, float %1888)  ; Dot3(ax,ay,az,bx,by,bz)
  %1892 = call float @dx.op.unary.f32(i32 25, float %1891)  ; Rsqrt(value)
  %1893 = fmul fast float %1892, %1886
  %1894 = fmul fast float %1892, %1887
  %1895 = fmul fast float %1892, %1888
  %1896 = fadd fast float %1880, 0xBFB99999A0000000
  %1897 = call float @dx.op.unary.f32(i32 7, float %1896)  ; Saturate(value)
  %1898 = fmul fast float %1897, 0x3FF1C71C80000000
  %1899 = call float @dx.op.binary.f32(i32 36, float %1880, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1900 = fsub fast float 1.000000e+00, %1898
  %1901 = call float @dx.op.unary.f32(i32 7, float %1900)  ; Saturate(value)
  %1902 = fmul fast float %1901, %1881
  %1903 = fmul fast float %1901, %1882
  %1904 = fmul fast float %1901, %1883
  %1905 = call float @dx.op.unary.f32(i32 7, float %1902)  ; Saturate(value)
  %1906 = call float @dx.op.unary.f32(i32 7, float %1903)  ; Saturate(value)
  %1907 = call float @dx.op.unary.f32(i32 7, float %1904)  ; Saturate(value)
  %1908 = fmul fast float %1898, %1881
  %1909 = fmul fast float %1898, %1882
  %1910 = fmul fast float %1898, %1883
  %1911 = fadd fast float %1908, %1899
  %1912 = fadd fast float %1909, %1899
  %1913 = fadd fast float %1910, %1899
  %1914 = call float @dx.op.unary.f32(i32 7, float %1911)  ; Saturate(value)
  %1915 = call float @dx.op.unary.f32(i32 7, float %1912)  ; Saturate(value)
  %1916 = call float @dx.op.unary.f32(i32 7, float %1913)  ; Saturate(value)
  %1917 = call float @dx.op.unary.f32(i32 7, float %1878)  ; Saturate(value)
  %1918 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1919 = extractvalue %dx.types.CBufRet.i32 %1918, 3
  %1920 = and i32 %1919, 8
  %1921 = icmp ne i32 %1920, 0
  %1922 = call float @dx.op.binary.f32(i32 35, float %1905, float %1881)  ; FMax(a,b)
  %1923 = call float @dx.op.binary.f32(i32 35, float %1906, float %1881)  ; FMax(a,b)
  %1924 = call float @dx.op.binary.f32(i32 35, float %1907, float %1881)  ; FMax(a,b)
  %1925 = call float @dx.op.dot3.f32(i32 55, float %1905, float %1906, float %1907, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1926 = select i1 %178, float %1881, float %1905
  %1927 = select i1 %178, float %1925, float %1906
  %1928 = select i1 %178, float 1.000000e+00, float %1907
  %1929 = select i1 %1921, float %1922, float %1926
  %1930 = select i1 %1921, float %1923, float %1927
  %1931 = select i1 %1921, float %1924, float %1928
  %1932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1933 = extractvalue %dx.types.CBufRet.f32 %1932, 0
  %1934 = extractvalue %dx.types.CBufRet.f32 %1932, 1
  %1935 = extractvalue %dx.types.CBufRet.f32 %1932, 2
  %1936 = fadd fast float %1933, %107
  %1937 = fadd fast float %1934, %108
  %1938 = fadd fast float %1935, %109
  %1939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1940 = extractvalue %dx.types.CBufRet.f32 %1939, 0
  %1941 = extractvalue %dx.types.CBufRet.f32 %1939, 1
  %1942 = fsub fast float %1936, %1940
  %1943 = fsub fast float %1937, %1941
  %1944 = fmul fast float %1942, %1942
  %1945 = fmul fast float %1943, %1943
  %1946 = fadd fast float %1944, %1945
  %1947 = call float @dx.op.unary.f32(i32 24, float %1946)  ; Sqrt(value)
  %1948 = extractvalue %dx.types.CBufRet.f32 %1939, 2
  %1949 = fcmp fast olt float %1947, %1948
  br i1 %1949, label %1950, label %2017

; <label>:1950                                    ; preds = %1865
  %1951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1952 = extractvalue %dx.types.CBufRet.f32 %1951, 0
  %1953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1954 = extractvalue %dx.types.CBufRet.f32 %1953, 0
  %1955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1956 = extractvalue %dx.types.CBufRet.f32 %1955, 0
  %1957 = extractvalue %dx.types.CBufRet.f32 %1951, 1
  %1958 = extractvalue %dx.types.CBufRet.f32 %1953, 1
  %1959 = extractvalue %dx.types.CBufRet.f32 %1955, 1
  %1960 = extractvalue %dx.types.CBufRet.f32 %1951, 3
  %1961 = extractvalue %dx.types.CBufRet.f32 %1953, 3
  %1962 = extractvalue %dx.types.CBufRet.f32 %1955, 3
  %1963 = fadd fast float %1960, %1936
  %1964 = fadd fast float %1961, %1937
  %1965 = fadd fast float %1962, %1938
  %1966 = fmul fast float %1963, %1952
  %1967 = call float @dx.op.tertiary.f32(i32 46, float %1964, float %1954, float %1966)  ; FMad(a,b,c)
  %1968 = call float @dx.op.tertiary.f32(i32 46, float %1965, float %1956, float %1967)  ; FMad(a,b,c)
  %1969 = fmul fast float %1963, %1957
  %1970 = call float @dx.op.tertiary.f32(i32 46, float %1964, float %1958, float %1969)  ; FMad(a,b,c)
  %1971 = call float @dx.op.tertiary.f32(i32 46, float %1965, float %1959, float %1970)  ; FMad(a,b,c)
  %1972 = fsub fast float %1968, %1960
  %1973 = fsub fast float %1971, %1961
  %1974 = fsub fast float %1972, %1940
  %1975 = fadd fast float %1974, %1948
  %1976 = fsub fast float %1973, %1941
  %1977 = fadd fast float %1976, %1948
  %1978 = extractvalue %dx.types.CBufRet.f32 %1939, 3
  %1979 = fmul fast float %1975, %1978
  %1980 = fmul fast float %1977, %1978
  %1981 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  %1982 = call float @dx.op.unary.f32(i32 7, float %1980)  ; Saturate(value)
  %1983 = fsub fast float 1.000000e+00, %1981
  %1984 = fsub fast float 1.000000e+00, %1982
  %1985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %35, float %1983, float %1984, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1986 = extractvalue %dx.types.ResRet.f32 %1985, 0
  %1987 = fcmp fast ugt float %1986, 0.000000e+00
  br i1 %1987, label %1988, label %2291

; <label>:1988                                    ; preds = %1950
  %1989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1990 = extractvalue %dx.types.CBufRet.f32 %1989, 2
  %1991 = fmul fast float %1990, %1986
  %1992 = extractvalue %dx.types.CBufRet.f32 %1989, 3
  %1993 = fadd fast float %1992, %1991
  %1994 = extractvalue %dx.types.CBufRet.f32 %1955, 2
  %1995 = fadd fast float %1993, %1962
  %1996 = fmul fast float %1968, %1956
  %1997 = call float @dx.op.tertiary.f32(i32 46, float %1971, float %1959, float %1996)  ; FMad(a,b,c)
  %1998 = call float @dx.op.tertiary.f32(i32 46, float %1995, float %1994, float %1997)  ; FMad(a,b,c)
  %1999 = fsub fast float %1998, %1962
  %2000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2001 = extractvalue %dx.types.CBufRet.f32 %2000, 2
  %2002 = fsub fast float %1999, %2001
  %2003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %35, float %1983, float %1984, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2004 = extractvalue %dx.types.ResRet.f32 %2003, 0
  %2005 = extractvalue %dx.types.ResRet.f32 %2003, 1
  %2006 = extractvalue %dx.types.ResRet.f32 %2003, 2
  %2007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %35, float %1983, float %1984, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2008 = extractvalue %dx.types.ResRet.f32 %2007, 0
  %2009 = extractvalue %dx.types.ResRet.f32 %2007, 1
  %2010 = extractvalue %dx.types.ResRet.f32 %2007, 2
  %2011 = fadd fast float %2008, %2004
  %2012 = fmul fast float %2011, 0x3F847AE140000000
  %2013 = fadd fast float %2009, %2005
  %2014 = fmul fast float %2013, 0x3F847AE140000000
  %2015 = fadd fast float %2010, %2006
  %2016 = fmul fast float %2015, 0x3F847AE140000000
  br label %2291

; <label>:2017                                    ; preds = %1865
  %2018 = and i32 %154, 1
  %2019 = icmp eq i32 %2018, 0
  br i1 %2019, label %2291, label %2020

; <label>:2020                                    ; preds = %2017
  %2021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2022 = extractvalue %dx.types.CBufRet.f32 %2021, 0
  %2023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = extractvalue %dx.types.CBufRet.f32 %2023, 0
  %2025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2026 = extractvalue %dx.types.CBufRet.f32 %2025, 0
  %2027 = extractvalue %dx.types.CBufRet.f32 %2021, 1
  %2028 = extractvalue %dx.types.CBufRet.f32 %2023, 1
  %2029 = extractvalue %dx.types.CBufRet.f32 %2025, 1
  %2030 = extractvalue %dx.types.CBufRet.f32 %2021, 3
  %2031 = extractvalue %dx.types.CBufRet.f32 %2023, 3
  %2032 = extractvalue %dx.types.CBufRet.f32 %2025, 3
  %2033 = fadd fast float %2030, %1936
  %2034 = fadd fast float %2031, %1937
  %2035 = fadd fast float %2032, %1938
  %2036 = fmul fast float %2033, %2022
  %2037 = call float @dx.op.tertiary.f32(i32 46, float %2034, float %2024, float %2036)  ; FMad(a,b,c)
  %2038 = call float @dx.op.tertiary.f32(i32 46, float %2035, float %2026, float %2037)  ; FMad(a,b,c)
  %2039 = fmul fast float %2033, %2027
  %2040 = call float @dx.op.tertiary.f32(i32 46, float %2034, float %2028, float %2039)  ; FMad(a,b,c)
  %2041 = call float @dx.op.tertiary.f32(i32 46, float %2035, float %2029, float %2040)  ; FMad(a,b,c)
  %2042 = fsub fast float %2038, %2030
  %2043 = fsub fast float %2041, %2031
  %2044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2045 = extractvalue %dx.types.CBufRet.f32 %2044, 0
  %2046 = extractvalue %dx.types.CBufRet.f32 %2044, 1
  %2047 = extractvalue %dx.types.CBufRet.f32 %2044, 2
  %2048 = extractvalue %dx.types.CBufRet.f32 %2044, 3
  %2049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2050 = extractvalue %dx.types.CBufRet.f32 %2049, 3
  %2051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2052 = extractvalue %dx.types.CBufRet.i32 %2051, 0
  %2053 = extractvalue %dx.types.CBufRet.i32 %2051, 1
  %2054 = udiv i32 %2053, %2052
  %2055 = fsub fast float %2042, %2045
  %2056 = fsub fast float %2043, %2046
  %2057 = call float @dx.op.binary.f32(i32 35, float %2055, float 0.000000e+00)  ; FMax(a,b)
  %2058 = call float @dx.op.binary.f32(i32 35, float %2056, float 0.000000e+00)  ; FMax(a,b)
  %2059 = call float @dx.op.binary.f32(i32 36, float %2057, float %2047)  ; FMin(a,b)
  %2060 = call float @dx.op.binary.f32(i32 36, float %2058, float %2048)  ; FMin(a,b)
  %2061 = add i32 %2052, -1
  %2062 = add i32 %2054, -1
  %2063 = fmul fast float %2059, %2050
  %2064 = fmul fast float %2060, %2050
  %2065 = fptoui float %2063 to i32
  %2066 = fptoui float %2064 to i32
  %2067 = call i32 @dx.op.binary.i32(i32 40, i32 %2065, i32 %2061)  ; UMin(a,b)
  %2068 = call i32 @dx.op.binary.i32(i32 40, i32 %2066, i32 %2062)  ; UMin(a,b)
  %2069 = mul i32 %2068, %2052
  %2070 = add i32 %2069, %2067
  %2071 = shl i32 %2070, 2
  %2072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.i32 %2072, 0
  %2074 = icmp eq i32 %2073, -1
  br i1 %2074, label %2291, label %2075

; <label>:2075                                    ; preds = %2020
  %2076 = mul i32 %2073, 148
  %2077 = add i32 %2076, 4
  %2078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.f32 %2078, 0
  %2080 = add i32 %2076, 8
  %2081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.f32 %2081, 0
  %2083 = add i32 %2076, 36
  %2084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.f32 %2084, 0
  %2086 = add i32 %2076, 60
  %2087 = add i32 %2076, 92
  %2088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2089 = extractvalue %dx.types.ResRet.i32 %2088, 0
  %2090 = add i32 %2076, 116
  %2091 = fsub fast float %2042, %2079
  %2092 = fsub fast float %2043, %2082
  %2093 = fmul fast float %2050, %2091
  %2094 = fmul fast float %2050, %2092
  %2095 = call float @dx.op.unary.f32(i32 7, float %2093)  ; Saturate(value)
  %2096 = call float @dx.op.unary.f32(i32 7, float %2094)  ; Saturate(value)
  %2097 = fsub fast float 1.000000e+00, %2096
  %2098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2099 = extractvalue %dx.types.CBufRet.f32 %2098, 2
  %2100 = call float @dx.op.unary.f32(i32 83, float %2095)  ; DerivCoarseX(value)
  %2101 = call float @dx.op.unary.f32(i32 83, float %2097)  ; DerivCoarseX(value)
  %2102 = call float @dx.op.unary.f32(i32 84, float %2095)  ; DerivCoarseY(value)
  %2103 = call float @dx.op.unary.f32(i32 84, float %2097)  ; DerivCoarseY(value)
  %2104 = fmul fast float %2100, %2099
  %2105 = fmul fast float %2101, %2099
  %2106 = fmul fast float %2102, %2099
  %2107 = fmul fast float %2103, %2099
  %2108 = call float @dx.op.dot2.f32(i32 54, float %2106, float %2107, float %2106, float %2107)  ; Dot2(ax,ay,bx,by)
  %2109 = call float @dx.op.dot2.f32(i32 54, float %2104, float %2105, float %2104, float %2105)  ; Dot2(ax,ay,bx,by)
  %2110 = call float @dx.op.binary.f32(i32 35, float %2109, float %2108)  ; FMax(a,b)
  %2111 = call float @dx.op.unary.f32(i32 23, float %2110)  ; Log(value)
  %2112 = fmul fast float %2111, 5.000000e-01
  %2113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2114 = extractvalue %dx.types.CBufRet.f32 %2113, 1
  %2115 = fadd fast float %2114, %2112
  %2116 = call float @dx.op.binary.f32(i32 35, float %2115, float 0.000000e+00)  ; FMax(a,b)
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 3
  %2119 = fadd fast float %2118, %2116
  %2120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2121 = extractvalue %dx.types.CBufRet.f32 %2120, 3
  %2122 = fadd fast float %2119, %2121
  %2123 = add i32 %2089, 0
  %2124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2123, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2125 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2124, i32 0)  ; GetDimensions(handle,mipLevel)
  %2126 = extractvalue %dx.types.Dimensions %2125, 0
  %2127 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2126)  ; FirstbitLo(value)
  %2128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2129 = extractvalue %dx.types.CBufRet.i32 %2128, 1
  %2130 = sub nsw i32 %2129, %2127
  %2131 = sitofp i32 %2130 to float
  %2132 = fsub fast float %2122, %2131
  %2133 = call float @dx.op.binary.f32(i32 35, float %2132, float 0.000000e+00)  ; FMax(a,b)
  %2134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2124, %dx.types.Handle %34, float %2095, float %2097, float %2085, float undef, i32 0, i32 0, i32 undef, float %2133)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2135 = extractvalue %dx.types.ResRet.f32 %2134, 0
  %2136 = fcmp ule float %2135, 0x3FE0101020000000
  %2137 = extractvalue %dx.types.CBufRet.i32 %2128, 0
  %2138 = and i32 %2137, 128
  %2139 = icmp ne i32 %2138, 0
  %2140 = and i1 %2136, %2139
  br i1 %2140, label %2291, label %2141

; <label>:2141                                    ; preds = %2075
  %2142 = add i32 %2076, 20
  %2143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2142, i32 undef)  ; BufferLoad(srv,index,wot)
  %2144 = extractvalue %dx.types.ResRet.f32 %2143, 0
  %2145 = add i32 %2076, 24
  %2146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2147 = extractvalue %dx.types.ResRet.f32 %2146, 0
  %2148 = add i32 %2076, 40
  %2149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.f32 %2149, 0
  %2151 = add i32 %2076, 96
  %2152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2151, i32 undef)  ; BufferLoad(srv,index,wot)
  %2153 = extractvalue %dx.types.ResRet.i32 %2152, 0
  %2154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2155 = extractvalue %dx.types.CBufRet.f32 %2154, 2
  %2156 = fmul fast float %2155, %2095
  %2157 = fmul fast float %2155, %2097
  %2158 = extractvalue %dx.types.CBufRet.f32 %2154, 3
  %2159 = fadd fast float %2156, %2158
  %2160 = fadd fast float %2157, %2158
  %2161 = add i32 %2153, 0
  %2162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2161, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2163 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2162, i32 0)  ; GetDimensions(handle,mipLevel)
  %2164 = extractvalue %dx.types.Dimensions %2163, 0
  %2165 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2164)  ; FirstbitLo(value)
  %2166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2167 = extractvalue %dx.types.CBufRet.i32 %2166, 1
  %2168 = sub nsw i32 %2167, %2165
  %2169 = sitofp i32 %2168 to float
  %2170 = fsub fast float %2119, %2169
  %2171 = call float @dx.op.binary.f32(i32 35, float %2170, float 0.000000e+00)  ; FMax(a,b)
  %2172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2162, %dx.types.Handle %34, float %2159, float %2160, float %2150, float undef, i32 0, i32 0, i32 undef, float %2171)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2173 = extractvalue %dx.types.ResRet.f32 %2172, 0
  %2174 = fmul fast float %2173, %2144
  %2175 = fadd fast float %2174, %2147
  %2176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.f32 %2176, 0
  %2178 = extractvalue %dx.types.CBufRet.f32 %2176, 1
  %2179 = extractvalue %dx.types.CBufRet.f32 %2176, 2
  %2180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2181 = extractvalue %dx.types.CBufRet.f32 %2180, 3
  %2182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2183 = extractvalue %dx.types.CBufRet.f32 %2182, 3
  %2184 = extractvalue %dx.types.CBufRet.f32 %2176, 3
  %2185 = fadd fast float %2181, %2042
  %2186 = fadd fast float %2183, %2043
  %2187 = fadd fast float %2175, %2184
  %2188 = fmul fast float %2185, %2177
  %2189 = call float @dx.op.tertiary.f32(i32 46, float %2186, float %2178, float %2188)  ; FMad(a,b,c)
  %2190 = call float @dx.op.tertiary.f32(i32 46, float %2187, float %2179, float %2189)  ; FMad(a,b,c)
  %2191 = fsub fast float %2190, %2184
  %2192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2193 = extractvalue %dx.types.CBufRet.f32 %2192, 2
  %2194 = fsub fast float %2191, %2193
  %2195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2196 = extractvalue %dx.types.CBufRet.i32 %2195, 0
  %2197 = call i32 @dx.op.binary.i32(i32 40, i32 %2073, i32 %2196)  ; UMin(a,b)
  %2198 = mul i32 %2197, 36
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2198, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = add i32 %2198, 4
  %2202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2203 = extractvalue %dx.types.CBufRet.f32 %2202, 0
  %2204 = fmul fast float %2203, %2095
  %2205 = fmul fast float %2203, %2097
  %2206 = extractvalue %dx.types.CBufRet.f32 %2202, 1
  %2207 = fadd fast float %2204, %2206
  %2208 = fadd fast float %2205, %2206
  %2209 = icmp eq i32 %2200, 0
  br i1 %2209, label %2278, label %2210

; <label>:2210                                    ; preds = %2141
  br label %2211

; <label>:2211                                    ; preds = %2268, %2210
  %2212 = phi float [ %2269, %2268 ], [ 0.000000e+00, %2210 ]
  %2213 = phi float [ %2270, %2268 ], [ 0.000000e+00, %2210 ]
  %2214 = phi float [ %2271, %2268 ], [ 0.000000e+00, %2210 ]
  %2215 = phi float [ %2272, %2268 ], [ 0.000000e+00, %2210 ]
  %2216 = phi float [ %2273, %2268 ], [ 0.000000e+00, %2210 ]
  %2217 = phi float [ %2274, %2268 ], [ 0.000000e+00, %2210 ]
  %2218 = phi i32 [ %2275, %2268 ], [ 0, %2210 ]
  %2219 = shl i32 %2218, 2
  %2220 = add i32 %2086, %2219
  %2221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2220, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.f32 %2221, 0
  %2223 = add i32 %2090, %2219
  %2224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2225 = extractvalue %dx.types.ResRet.i32 %2224, 0
  %2226 = add i32 %2225, 0
  %2227 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2226, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2228 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2227, i32 0)  ; GetDimensions(handle,mipLevel)
  %2229 = extractvalue %dx.types.Dimensions %2228, 0
  %2230 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2229)  ; FirstbitLo(value)
  %2231 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2232 = extractvalue %dx.types.CBufRet.i32 %2231, 1
  %2233 = sub nsw i32 %2232, %2230
  %2234 = sitofp i32 %2233 to float
  %2235 = fsub fast float %2119, %2234
  %2236 = call float @dx.op.binary.f32(i32 35, float %2235, float 0.000000e+00)  ; FMax(a,b)
  %2237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2227, %dx.types.Handle %34, float %2207, float %2208, float %2222, float undef, i32 0, i32 0, i32 undef, float %2236)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2238 = extractvalue %dx.types.ResRet.f32 %2237, 0
  %2239 = fcmp fast ogt float %2238, 0.000000e+00
  br i1 %2239, label %2240, label %2268

; <label>:2240                                    ; preds = %2211
  %2241 = add i32 %2201, %2219
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2241, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = and i32 %2243, 32767
  %2245 = mul nuw nsw i32 %2244, 928
  %2246 = add nuw nsw i32 %2245, 48
  %2247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2246, i32 undef)  ; BufferLoad(srv,index,wot)
  %2248 = extractvalue %dx.types.ResRet.f32 %2247, 0
  %2249 = extractvalue %dx.types.ResRet.f32 %2247, 1
  %2250 = extractvalue %dx.types.ResRet.f32 %2247, 2
  %2251 = add nuw nsw i32 %2245, 60
  %2252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2251, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.f32 %2252, 0
  %2254 = extractvalue %dx.types.ResRet.f32 %2252, 1
  %2255 = extractvalue %dx.types.ResRet.f32 %2252, 2
  %2256 = fmul fast float %2248, %2238
  %2257 = fmul fast float %2249, %2238
  %2258 = fmul fast float %2250, %2238
  %2259 = fadd fast float %2256, %2212
  %2260 = fadd fast float %2257, %2213
  %2261 = fadd fast float %2258, %2214
  %2262 = fmul fast float %2253, %2238
  %2263 = fmul fast float %2254, %2238
  %2264 = fmul fast float %2255, %2238
  %2265 = fadd fast float %2262, %2215
  %2266 = fadd fast float %2263, %2216
  %2267 = fadd fast float %2264, %2217
  br label %2268

; <label>:2268                                    ; preds = %2240, %2211
  %2269 = phi float [ %2259, %2240 ], [ %2212, %2211 ]
  %2270 = phi float [ %2260, %2240 ], [ %2213, %2211 ]
  %2271 = phi float [ %2261, %2240 ], [ %2214, %2211 ]
  %2272 = phi float [ %2265, %2240 ], [ %2215, %2211 ]
  %2273 = phi float [ %2266, %2240 ], [ %2216, %2211 ]
  %2274 = phi float [ %2267, %2240 ], [ %2217, %2211 ]
  %2275 = add nuw i32 %2218, 1
  %2276 = icmp eq i32 %2275, %2200
  br i1 %2276, label %2277, label %2211

; <label>:2277                                    ; preds = %2268
  br label %2278

; <label>:2278                                    ; preds = %2277, %2141
  %2279 = phi float [ 0.000000e+00, %2141 ], [ %2269, %2277 ]
  %2280 = phi float [ 0.000000e+00, %2141 ], [ %2270, %2277 ]
  %2281 = phi float [ 0.000000e+00, %2141 ], [ %2271, %2277 ]
  %2282 = phi float [ 0.000000e+00, %2141 ], [ %2272, %2277 ]
  %2283 = phi float [ 0.000000e+00, %2141 ], [ %2273, %2277 ]
  %2284 = phi float [ 0.000000e+00, %2141 ], [ %2274, %2277 ]
  %2285 = fadd fast float %2282, %2279
  %2286 = fmul fast float %2285, 0x3F847AE140000000
  %2287 = fadd fast float %2283, %2280
  %2288 = fmul fast float %2287, 0x3F847AE140000000
  %2289 = fadd fast float %2284, %2281
  %2290 = fmul fast float %2289, 0x3F847AE140000000
  br label %2291

; <label>:2291                                    ; preds = %2278, %2075, %2020, %2017, %1988, %1950
  %2292 = phi float [ %2002, %1988 ], [ -1.310720e+05, %1950 ], [ %2194, %2278 ], [ -1.310720e+05, %2020 ], [ -1.310720e+05, %2075 ], [ -1.310720e+05, %2017 ]
  %2293 = phi float [ %2012, %1988 ], [ 0.000000e+00, %1950 ], [ %2286, %2278 ], [ 0.000000e+00, %2020 ], [ 0.000000e+00, %2075 ], [ 0.000000e+00, %2017 ]
  %2294 = phi float [ %2014, %1988 ], [ 0.000000e+00, %1950 ], [ %2288, %2278 ], [ 0.000000e+00, %2020 ], [ 0.000000e+00, %2075 ], [ 0.000000e+00, %2017 ]
  %2295 = phi float [ %2016, %1988 ], [ 0.000000e+00, %1950 ], [ %2290, %2278 ], [ 0.000000e+00, %2020 ], [ 0.000000e+00, %2075 ], [ 0.000000e+00, %2017 ]
  %2296 = phi i1 [ true, %1988 ], [ false, %1950 ], [ true, %2278 ], [ false, %2020 ], [ false, %2075 ], [ false, %2017 ]
  %2297 = and i32 %154, 3
  %2298 = icmp eq i32 %2297, 1
  %2299 = select i1 %2298, float 1.000000e+00, float 0.000000e+00
  %2300 = fsub fast float %2292, %109
  %2301 = call float @dx.op.unary.f32(i32 7, float %2300)  ; Saturate(value)
  %2302 = select i1 %2296, float %2301, float 1.000000e+00
  %2303 = fmul fast float %2302, %2299
  %2304 = icmp eq i32 %2297, 3
  %2305 = select i1 %2304, float 1.000000e+00, float %2303
  %2306 = call float @dx.op.binary.f32(i32 35, float %1866, float %2305)  ; FMax(a,b)
  %2307 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2308 = fcmp fast une float %2307, 0.000000e+00
  %2309 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %2310 = call float @dx.op.unary.f32(i32 25, float %2309)  ; Rsqrt(value)
  br i1 %2308, label %2318, label %2311

; <label>:2311                                    ; preds = %2291
  %2312 = fmul fast float %2310, %107
  %2313 = fmul fast float %2310, %108
  %2314 = fmul fast float %2310, %109
  %2315 = fsub fast float -0.000000e+00, %2312
  %2316 = fsub fast float -0.000000e+00, %2313
  %2317 = fsub fast float -0.000000e+00, %2314
  br label %2486

; <label>:2318                                    ; preds = %2291
  %2319 = fmul fast float %107, %2310
  %2320 = fsub fast float -0.000000e+00, %2319
  %2321 = fmul fast float %108, %2310
  %2322 = fsub fast float -0.000000e+00, %2321
  %2323 = fmul fast float %109, %2310
  %2324 = fsub fast float -0.000000e+00, %2323
  %2325 = call float @dx.op.dot3.f32(i32 55, float %2320, float %2322, float %2324, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %2326 = fmul fast float %2307, 2.500000e+00
  %2327 = call float @dx.op.unary.f32(i32 7, float %2326)  ; Saturate(value)
  %2328 = fmul fast float %2307, 0x4013FFFFE0000000
  %2329 = fadd fast float %2328, 0xBFFFFFFFE0000000
  %2330 = call float @dx.op.unary.f32(i32 7, float %2329)  ; Saturate(value)
  %2331 = fmul fast float %2307, 0x4004000020000000
  %2332 = fadd fast float %2331, 0xBFF8000040000000
  %2333 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  %2334 = call float @dx.op.unary.f32(i32 7, float %2327)  ; Saturate(value)
  %2335 = fmul fast float %1896, 1.000000e+01
  %2336 = call float @dx.op.unary.f32(i32 7, float %2335)  ; Saturate(value)
  %2337 = fmul fast float %2336, 2.000000e+00
  %2338 = fsub fast float 3.000000e+00, %2337
  %2339 = fmul fast float %2336, %2336
  %2340 = fmul fast float %2339, %2338
  %2341 = fsub fast float 1.000000e+00, %2340
  %2342 = fsub fast float 0x3FE3333340000000, %1917
  %2343 = fmul fast float %2342, 0x400AAAAAA0000000
  %2344 = call float @dx.op.unary.f32(i32 7, float %2343)  ; Saturate(value)
  %2345 = fmul fast float %2341, %2344
  %2346 = fmul fast float %1929, 0x3FEA2B8620000000
  %2347 = fmul fast float %1930, 0x3FEA2B8620000000
  %2348 = fmul fast float %1931, 0x3FEA2B8620000000
  %2349 = fadd fast float %2346, 0x3FC81DFBA0000000
  %2350 = fmul fast float %2349, %1929
  %2351 = fadd fast float %2350, 0x3F910E6020000000
  %2352 = fadd fast float %2347, 0x3FC81DFBA0000000
  %2353 = fmul fast float %2352, %1930
  %2354 = fadd fast float %2353, 0x3F910E6020000000
  %2355 = fadd fast float %2348, 0x3FC81DFBA0000000
  %2356 = fmul fast float %2355, %1931
  %2357 = fadd fast float %2356, 0x3F910E6020000000
  %2358 = call float @dx.op.unary.f32(i32 7, float %2351)  ; Saturate(value)
  %2359 = call float @dx.op.unary.f32(i32 7, float %2354)  ; Saturate(value)
  %2360 = call float @dx.op.unary.f32(i32 7, float %2357)  ; Saturate(value)
  %2361 = fsub fast float %2358, %1929
  %2362 = fsub fast float %2359, %1930
  %2363 = fsub fast float %2360, %1931
  %2364 = fmul fast float %2361, %2334
  %2365 = fmul fast float %2364, %2345
  %2366 = fmul fast float %2362, %2334
  %2367 = fmul fast float %2366, %2345
  %2368 = fmul fast float %2363, %2334
  %2369 = fmul fast float %2368, %2345
  %2370 = fadd fast float %2365, %1929
  %2371 = fadd fast float %2367, %1930
  %2372 = fadd fast float %2369, %1931
  %2373 = fmul fast float %1877, %1877
  %2374 = fmul fast float %2373, %2373
  %2375 = fadd fast float %2330, 1.000000e+00
  %2376 = fsub fast float %2375, %2345
  %2377 = call float @dx.op.unary.f32(i32 7, float %2376)  ; Saturate(value)
  %2378 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2379 = call float @dx.op.unary.f32(i32 7, float %2378)  ; Saturate(value)
  %2380 = fsub fast float 1.000000e+00, %2374
  %2381 = call float @dx.op.binary.f32(i32 36, float %2377, float %2380)  ; FMin(a,b)
  %2382 = call float @dx.op.unary.f32(i32 7, float %2333)  ; Saturate(value)
  %2383 = call float @dx.op.binary.f32(i32 35, float %2381, float %2382)  ; FMax(a,b)
  %2384 = fadd fast float %2379, 0xBFE4CCCCC0000000
  %2385 = fmul fast float %2384, 0x4006DB6DA0000000
  %2386 = call float @dx.op.unary.f32(i32 7, float %2385)  ; Saturate(value)
  %2387 = fmul fast float %2386, 2.000000e+00
  %2388 = fsub fast float 3.000000e+00, %2387
  %2389 = bitcast float %1914 to i32
  %2390 = ashr i32 %2389, 1
  %2391 = add nsw i32 %2390, 532487669
  %2392 = bitcast i32 %2391 to float
  %2393 = fsub fast float 1.000000e+00, %2392
  %2394 = bitcast float %2393 to i32
  %2395 = sub nsw i32 2129859010, %2394
  %2396 = bitcast i32 %2395 to float
  %2397 = fmul fast float %2396, 2.000000e+00
  %2398 = bitcast float %1915 to i32
  %2399 = ashr i32 %2398, 1
  %2400 = add nsw i32 %2399, 532487669
  %2401 = bitcast i32 %2400 to float
  %2402 = fsub fast float 1.000000e+00, %2401
  %2403 = bitcast float %2402 to i32
  %2404 = sub nsw i32 2129859010, %2403
  %2405 = bitcast i32 %2404 to float
  %2406 = fmul fast float %2405, 2.000000e+00
  %2407 = bitcast float %1916 to i32
  %2408 = ashr i32 %2407, 1
  %2409 = add nsw i32 %2408, 532487669
  %2410 = bitcast i32 %2409 to float
  %2411 = fsub fast float 1.000000e+00, %2410
  %2412 = bitcast float %2411 to i32
  %2413 = sub nsw i32 2129859010, %2412
  %2414 = bitcast i32 %2413 to float
  %2415 = fmul fast float %2414, 2.000000e+00
  %2416 = fsub fast float 0x4002A9FBE0000000, %2397
  %2417 = fadd fast float %2397, 0x3FD54FDF00000000
  %2418 = bitcast float %2417 to i32
  %2419 = sub nsw i32 2129859010, %2418
  %2420 = bitcast i32 %2419 to float
  %2421 = fmul fast float %2420, %2416
  %2422 = fmul fast float %2421, %2421
  %2423 = fsub fast float 0x4002A9FBE0000000, %2406
  %2424 = fadd fast float %2406, 0x3FD54FDF00000000
  %2425 = bitcast float %2424 to i32
  %2426 = sub nsw i32 2129859010, %2425
  %2427 = bitcast i32 %2426 to float
  %2428 = fmul fast float %2427, %2423
  %2429 = fmul fast float %2428, %2428
  %2430 = fsub fast float 0x4002A9FBE0000000, %2415
  %2431 = fadd fast float %2415, 0x3FD54FDF00000000
  %2432 = bitcast float %2431 to i32
  %2433 = sub nsw i32 2129859010, %2432
  %2434 = bitcast i32 %2433 to float
  %2435 = fmul fast float %2434, %2430
  %2436 = fmul fast float %2435, %2435
  %2437 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2422)  ; FMax(a,b)
  %2438 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2429)  ; FMax(a,b)
  %2439 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2436)  ; FMax(a,b)
  %2440 = fsub fast float 1.000000e+00, %2325
  %2441 = fadd fast float %2440, %2341
  %2442 = call float @dx.op.unary.f32(i32 7, float %2441)  ; Saturate(value)
  %2443 = fsub fast float 1.000000e+00, %2305
  %2444 = fmul fast float %2383, %2443
  %2445 = fmul fast float %2386, %2386
  %2446 = fmul fast float %2445, %2444
  %2447 = fmul fast float %2446, %2388
  %2448 = fmul fast float %2443, 0xBFE99999A0000000
  %2449 = fmul fast float %2448, %2334
  %2450 = fmul fast float %2449, %2345
  %2451 = fadd fast float %2450, 1.000000e+00
  %2452 = fadd fast float %1917, -1.000000e+00
  %2453 = fmul fast float %2451, %2452
  %2454 = fadd fast float %2453, 1.000000e+00
  %2455 = fsub fast float %2437, %1914
  %2456 = fsub fast float %2438, %1915
  %2457 = fsub fast float %2439, %1916
  %2458 = fmul fast float %2447, %2455
  %2459 = fmul fast float %2447, %2456
  %2460 = fmul fast float %2447, %2457
  %2461 = fadd fast float %2458, %1914
  %2462 = fadd fast float %2459, %1915
  %2463 = fadd fast float %2460, %1916
  %2464 = fsub fast float %43, %1893
  %2465 = fsub fast float %44, %1894
  %2466 = fsub fast float %45, %1895
  %2467 = fmul fast float %2447, %2464
  %2468 = fmul fast float %2447, %2465
  %2469 = fmul fast float %2447, %2466
  %2470 = fadd fast float %2467, %1893
  %2471 = fadd fast float %2468, %1894
  %2472 = fadd fast float %2469, %1895
  %2473 = fmul fast float %2447, %2442
  %2474 = call float @dx.op.unary.f32(i32 7, float %2454)  ; Saturate(value)
  %2475 = fsub fast float 1.000000e+00, %2474
  %2476 = fmul fast float %2473, %2475
  %2477 = fadd fast float %2476, %2474
  %2478 = fsub fast float 1.000000e+00, %1877
  %2479 = fmul fast float %2447, %2478
  %2480 = fadd fast float %2479, %1877
  %2481 = call float @dx.op.dot3.f32(i32 55, float %2470, float %2471, float %2472, float %2470, float %2471, float %2472)  ; Dot3(ax,ay,az,bx,by,bz)
  %2482 = call float @dx.op.unary.f32(i32 25, float %2481)  ; Rsqrt(value)
  %2483 = fmul fast float %2470, %2482
  %2484 = fmul fast float %2471, %2482
  %2485 = fmul fast float %2472, %2482
  br label %2486

; <label>:2486                                    ; preds = %2318, %2311
  %2487 = phi float [ %2317, %2311 ], [ %2324, %2318 ]
  %2488 = phi float [ %2316, %2311 ], [ %2322, %2318 ]
  %2489 = phi float [ %2315, %2311 ], [ %2320, %2318 ]
  %2490 = phi float [ %2314, %2311 ], [ %2323, %2318 ]
  %2491 = phi float [ %2313, %2311 ], [ %2321, %2318 ]
  %2492 = phi float [ %2312, %2311 ], [ %2319, %2318 ]
  %2493 = phi float [ %1893, %2311 ], [ %2483, %2318 ]
  %2494 = phi float [ %1894, %2311 ], [ %2484, %2318 ]
  %2495 = phi float [ %1895, %2311 ], [ %2485, %2318 ]
  %2496 = phi float [ %1929, %2311 ], [ %2370, %2318 ]
  %2497 = phi float [ %1930, %2311 ], [ %2371, %2318 ]
  %2498 = phi float [ %1931, %2311 ], [ %2372, %2318 ]
  %2499 = phi float [ %1914, %2311 ], [ %2461, %2318 ]
  %2500 = phi float [ %1915, %2311 ], [ %2462, %2318 ]
  %2501 = phi float [ %1916, %2311 ], [ %2463, %2318 ]
  %2502 = phi float [ %1917, %2311 ], [ %2477, %2318 ]
  %2503 = phi float [ %1877, %2311 ], [ %2480, %2318 ]
  %2504 = select i1 %178, float 0.000000e+00, float %2501
  %2505 = call float @dx.op.dot3.f32(i32 55, float %2493, float %2494, float %2495, float %2489, float %2488, float %2487)  ; Dot3(ax,ay,az,bx,by,bz)
  %2506 = call float @dx.op.unary.f32(i32 7, float %2505)  ; Saturate(value)
  %2507 = call float @dx.op.dot3.f32(i32 55, float %2492, float %2491, float %2490, float %2493, float %2494, float %2495)  ; Dot3(ax,ay,az,bx,by,bz)
  %2508 = fmul fast float %2507, 2.000000e+00
  %2509 = fmul fast float %2508, %2493
  %2510 = fmul fast float %2508, %2494
  %2511 = fmul fast float %2508, %2495
  %2512 = fsub fast float %2492, %2509
  %2513 = fsub fast float %2491, %2510
  %2514 = fsub fast float %2490, %2511
  %2515 = call float @dx.op.binary.f32(i32 36, float %2503, float 1.000000e+00)  ; FMin(a,b)
  %2516 = fsub fast float 1.000000e+00, %2503
  %2517 = bitcast float %2516 to i32
  %2518 = sub nsw i32 2129859010, %2517
  %2519 = bitcast i32 %2518 to float
  %2520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2521 = extractvalue %dx.types.CBufRet.f32 %2520, 0
  %2522 = extractvalue %dx.types.CBufRet.f32 %2520, 1
  %2523 = fadd fast float %2521, %107
  %2524 = fadd fast float %2522, %108
  %2525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2526 = extractvalue %dx.types.CBufRet.i32 %2525, 0
  %2527 = icmp eq i32 %2526, 1
  br i1 %2527, label %2528, label %2563

; <label>:2528                                    ; preds = %2486
  %2529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2530 = extractvalue %dx.types.CBufRet.f32 %2529, 0
  %2531 = extractvalue %dx.types.CBufRet.f32 %2529, 1
  %2532 = fsub fast float %2523, %2530
  %2533 = fsub fast float %2524, %2531
  %2534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2535 = extractvalue %dx.types.CBufRet.f32 %2534, 0
  %2536 = extractvalue %dx.types.CBufRet.f32 %2534, 1
  %2537 = fmul fast float %2532, %2535
  %2538 = fmul fast float %2533, %2536
  %2539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %35, float %2537, float %2538, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2540 = extractvalue %dx.types.ResRet.f32 %2539, 0
  %2541 = fcmp fast ogt float %2540, 0.000000e+00
  %2542 = extractvalue %dx.types.CBufRet.i32 %2525, 3
  %2543 = icmp ne i32 %2542, 0
  %2544 = and i1 %2541, %2543
  br i1 %2544, label %2545, label %2563, !dx.controlflow.hints !71

; <label>:2545                                    ; preds = %2528
  %2546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2547 = extractvalue %dx.types.CBufRet.f32 %2546, 0
  %2548 = extractvalue %dx.types.CBufRet.f32 %2546, 1
  %2549 = fsub fast float %2523, %2547
  %2550 = fsub fast float %2524, %2548
  %2551 = fmul fast float %2549, %2549
  %2552 = fmul fast float %2550, %2550
  %2553 = fadd fast float %2551, %2552
  %2554 = uitofp i32 %2542 to float
  %2555 = fmul fast float %2554, %2554
  %2556 = fcmp fast ogt float %2553, %2555
  br i1 %2556, label %2563, label %2557

; <label>:2557                                    ; preds = %2545
  %2558 = call float @dx.op.unary.f32(i32 24, float %2553)  ; Sqrt(value)
  %2559 = fsub fast float %2554, %2558
  %2560 = fmul fast float %2559, 0x3F75555560000000
  %2561 = call float @dx.op.unary.f32(i32 7, float %2560)  ; Saturate(value)
  %2562 = call float @dx.op.binary.f32(i32 36, float %2561, float %2540)  ; FMin(a,b)
  br label %2563

; <label>:2563                                    ; preds = %2557, %2545, %2528, %2486
  %2564 = phi float [ 1.000000e+00, %2486 ], [ %2562, %2557 ], [ %2540, %2528 ], [ 0.000000e+00, %2545 ]
  %2565 = fcmp fast ogt float %2564, 0.000000e+00
  br i1 %2565, label %2566, label %2664, !dx.controlflow.hints !72

; <label>:2566                                    ; preds = %2563
  %2567 = fadd fast float %138, 5.000000e-01
  %2568 = call float @dx.op.unary.f32(i32 27, float %2567)  ; Round_ni(value)
  %2569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %136, float %137, float %2568, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2570 = extractvalue %dx.types.ResRet.f32 %2569, 0
  %2571 = extractvalue %dx.types.ResRet.f32 %2569, 1
  %2572 = extractvalue %dx.types.ResRet.f32 %2569, 2
  %2573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2574 = extractvalue %dx.types.CBufRet.f32 %2573, 3
  %2575 = fmul fast float %2574, %2570
  %2576 = fmul fast float %2574, %2571
  %2577 = fmul fast float %2574, %2572
  %2578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %35, float %136, float %137, float %2568, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2579 = extractvalue %dx.types.ResRet.f32 %2578, 0
  %2580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %136, float %137, float %2568, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2581 = extractvalue %dx.types.ResRet.f32 %2580, 0
  %2582 = extractvalue %dx.types.ResRet.f32 %2580, 1
  %2583 = fmul fast float %2581, 2.000000e+00
  %2584 = fmul fast float %2582, 2.000000e+00
  %2585 = fadd fast float %2583, -1.000000e+00
  %2586 = fadd fast float %2584, -1.000000e+00
  %2587 = fadd fast float %2585, %2586
  %2588 = fmul fast float %2587, 5.000000e-01
  %2589 = fsub fast float %2585, %2586
  %2590 = fmul fast float %2589, 5.000000e-01
  %2591 = call float @dx.op.unary.f32(i32 6, float %2588)  ; FAbs(value)
  %2592 = fsub fast float 1.000000e+00, %2591
  %2593 = call float @dx.op.unary.f32(i32 6, float %2590)  ; FAbs(value)
  %2594 = fsub fast float %2592, %2593
  %2595 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2594)  ; FMax(a,b)
  %2596 = call float @dx.op.dot3.f32(i32 55, float %2588, float %2590, float %2595, float %2588, float %2590, float %2595)  ; Dot3(ax,ay,az,bx,by,bz)
  %2597 = bitcast float %2596 to i32
  %2598 = ashr i32 %2597, 1
  %2599 = sub nsw i32 1597250115, %2598
  %2600 = bitcast i32 %2599 to float
  %2601 = fmul fast float %2600, %2588
  %2602 = fmul fast float %2600, %2590
  %2603 = fmul fast float %2600, %2595
  %2604 = fsub fast float 1.000000e+00, %2579
  %2605 = fdiv fast float %2604, %2603
  %2606 = fmul fast float %2603, %43
  %2607 = fmul fast float %2603, %44
  %2608 = fmul fast float %2603, %45
  %2609 = fmul fast float %2601, %39
  %2610 = fmul fast float %2601, %40
  %2611 = fmul fast float %2601, %41
  %2612 = fadd fast float %2606, %2609
  %2613 = fadd fast float %2607, %2610
  %2614 = fadd fast float %2608, %2611
  %2615 = fmul fast float %2602, %71
  %2616 = fmul fast float %2602, %72
  %2617 = fmul fast float %2602, %73
  %2618 = fadd fast float %2612, %2615
  %2619 = fadd fast float %2613, %2616
  %2620 = fadd fast float %2614, %2617
  %2621 = call float @dx.op.dot3.f32(i32 55, float %2618, float %2619, float %2620, float %2618, float %2619, float %2620)  ; Dot3(ax,ay,az,bx,by,bz)
  %2622 = call float @dx.op.unary.f32(i32 25, float %2621)  ; Rsqrt(value)
  %2623 = fmul fast float %2618, %2622
  %2624 = fmul fast float %2619, %2622
  %2625 = fmul fast float %2620, %2622
  %2626 = call float @dx.op.dot3.f32(i32 55, float %2493, float %2494, float %2495, float %2493, float %2494, float %2495)  ; Dot3(ax,ay,az,bx,by,bz)
  %2627 = call float @dx.op.unary.f32(i32 7, float %2626)  ; Saturate(value)
  %2628 = fmul fast float %2627, 5.000000e-01
  %2629 = fadd fast float %2628, 5.000000e-01
  %2630 = fmul fast float %2629, %2579
  %2631 = call float @dx.op.dot3.f32(i32 55, float %2493, float %2494, float %2495, float %2623, float %2624, float %2625)  ; Dot3(ax,ay,az,bx,by,bz)
  %2632 = call float @dx.op.unary.f32(i32 7, float %2631)  ; Saturate(value)
  %2633 = fmul fast float %2632, %2605
  %2634 = fadd fast float %2630, %2633
  %2635 = fsub fast float 5.000000e-01, %2628
  %2636 = fmul fast float %2635, %2496
  %2637 = fmul fast float %2635, %2497
  %2638 = fmul fast float %2635, %2498
  %2639 = fadd fast float %2634, %2636
  %2640 = fmul fast float %2639, %2575
  %2641 = fadd fast float %2634, %2637
  %2642 = fmul fast float %2641, %2576
  %2643 = fadd fast float %2634, %2638
  %2644 = fmul fast float %2643, %2577
  %2645 = call float @dx.op.dot3.f32(i32 55, float %2512, float %2513, float %2514, float %2493, float %2494, float %2495)  ; Dot3(ax,ay,az,bx,by,bz)
  %2646 = call float @dx.op.unary.f32(i32 7, float %2645)  ; Saturate(value)
  %2647 = fmul fast float %2646, 5.000000e-01
  %2648 = fadd fast float %2647, 5.000000e-01
  %2649 = fmul fast float %2648, %2579
  %2650 = call float @dx.op.dot3.f32(i32 55, float %2512, float %2513, float %2514, float %2623, float %2624, float %2625)  ; Dot3(ax,ay,az,bx,by,bz)
  %2651 = call float @dx.op.unary.f32(i32 7, float %2650)  ; Saturate(value)
  %2652 = fmul fast float %2651, %2605
  %2653 = fadd fast float %2649, %2652
  %2654 = fsub fast float 5.000000e-01, %2647
  %2655 = fmul fast float %2654, %2496
  %2656 = fmul fast float %2654, %2497
  %2657 = fmul fast float %2654, %2498
  %2658 = fadd fast float %2653, %2655
  %2659 = fmul fast float %2658, %2575
  %2660 = fadd fast float %2653, %2656
  %2661 = fmul fast float %2660, %2576
  %2662 = fadd fast float %2653, %2657
  %2663 = fmul fast float %2662, %2577
  br label %2664

; <label>:2664                                    ; preds = %2566, %2563
  %2665 = phi float [ %2659, %2566 ], [ 0.000000e+00, %2563 ]
  %2666 = phi float [ %2661, %2566 ], [ 0.000000e+00, %2563 ]
  %2667 = phi float [ %2663, %2566 ], [ 0.000000e+00, %2563 ]
  %2668 = phi float [ %2640, %2566 ], [ 0.000000e+00, %2563 ]
  %2669 = phi float [ %2642, %2566 ], [ 0.000000e+00, %2563 ]
  %2670 = phi float [ %2644, %2566 ], [ 0.000000e+00, %2563 ]
  %2671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2672 = extractvalue %dx.types.CBufRet.f32 %2671, 0
  %2673 = fcmp fast ogt float %2672, 0.000000e+00
  %2674 = and i1 %2565, %2673
  br i1 %2674, label %2675, label %2879, !dx.controlflow.hints !73

; <label>:2675                                    ; preds = %2664
  %2676 = extractvalue %dx.types.CBufRet.f32 %2520, 2
  %2677 = fadd fast float %2676, %109
  %2678 = fmul fast float %2493, 3.200000e+01
  %2679 = fmul fast float %2494, 3.200000e+01
  %2680 = fadd fast float %2523, %2678
  %2681 = fadd fast float %2524, %2679
  %2682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2683 = extractvalue %dx.types.CBufRet.f32 %2682, 0
  %2684 = extractvalue %dx.types.CBufRet.f32 %2682, 1
  %2685 = fsub fast float %2680, %2683
  %2686 = fsub fast float %2681, %2684
  %2687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2688 = extractvalue %dx.types.CBufRet.f32 %2687, 0
  %2689 = extractvalue %dx.types.CBufRet.f32 %2687, 1
  %2690 = fmul fast float %2685, %2688
  %2691 = fmul fast float %2686, %2689
  %2692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2693 = extractvalue %dx.types.CBufRet.f32 %2692, 0
  %2694 = extractvalue %dx.types.CBufRet.f32 %2692, 1
  %2695 = fsub fast float %2523, %2693
  %2696 = fsub fast float %2524, %2694
  %2697 = fmul fast float %2695, %2695
  %2698 = fmul fast float %2696, %2696
  %2699 = fadd fast float %2697, %2698
  %2700 = call float @dx.op.unary.f32(i32 24, float %2699)  ; Sqrt(value)
  %2701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2702 = extractvalue %dx.types.CBufRet.f32 %2701, 0
  %2703 = extractvalue %dx.types.CBufRet.f32 %2701, 1
  %2704 = fsub fast float %2700, %2702
  %2705 = fdiv fast float %2704, %2703
  %2706 = call float @dx.op.unary.f32(i32 7, float %2705)  ; Saturate(value)
  %2707 = fmul fast float %2706, 2.000000e+00
  %2708 = fsub fast float 3.000000e+00, %2707
  %2709 = fmul fast float %2706, %2706
  %2710 = fmul fast float %2709, %2708
  %2711 = fcmp fast oge float %2690, 0.000000e+00
  %2712 = fcmp fast ole float %2690, 1.000000e+00
  %2713 = and i1 %2712, %2711
  %2714 = fcmp fast oge float %2691, 0.000000e+00
  %2715 = and i1 %2714, %2713
  %2716 = fcmp fast ole float %2691, 1.000000e+00
  %2717 = and i1 %2716, %2715
  %2718 = fcmp fast ogt float %2710, 0.000000e+00
  %2719 = and i1 %2718, %2717
  br i1 %2719, label %2720, label %2843, !dx.controlflow.hints !74

; <label>:2720                                    ; preds = %2675
  %2721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2722 = extractvalue %dx.types.CBufRet.f32 %2721, 2
  %2723 = extractvalue %dx.types.CBufRet.f32 %2721, 3
  %2724 = fmul fast float %2722, %2690
  %2725 = fmul fast float %2723, %2691
  %2726 = call float @dx.op.unary.f32(i32 27, float %2724)  ; Round_ni(value)
  %2727 = call float @dx.op.unary.f32(i32 27, float %2725)  ; Round_ni(value)
  %2728 = fptosi float %2726 to i32
  %2729 = fptosi float %2727 to i32
  %2730 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %2728, i32 %2729, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = lshr i32 %2731, 16
  %2733 = icmp eq i32 %2732, 65535
  br i1 %2733, label %2843, label %2734

; <label>:2734                                    ; preds = %2720
  %2735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2736 = extractvalue %dx.types.CBufRet.f32 %2735, 0
  %2737 = fmul fast float %2736, %2690
  %2738 = extractvalue %dx.types.CBufRet.f32 %2735, 1
  %2739 = fadd fast float %2737, %2738
  %2740 = extractvalue %dx.types.CBufRet.f32 %2735, 2
  %2741 = fmul fast float %2740, %2691
  %2742 = extractvalue %dx.types.CBufRet.f32 %2735, 3
  %2743 = fadd fast float %2741, %2742
  %2744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %35, float %2739, float %2743, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2745 = extractvalue %dx.types.ResRet.f32 %2744, 0
  %2746 = extractvalue %dx.types.ResRet.f32 %2744, 1
  %2747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2748 = extractvalue %dx.types.CBufRet.f32 %2747, 1
  %2749 = extractvalue %dx.types.CBufRet.f32 %2747, 0
  %2750 = fsub fast float %2748, %2749
  %2751 = fmul fast float %2750, %2745
  %2752 = fadd fast float %2751, %2749
  %2753 = extractvalue %dx.types.CBufRet.f32 %2747, 3
  %2754 = extractvalue %dx.types.CBufRet.f32 %2747, 2
  %2755 = fsub fast float %2753, %2754
  %2756 = fmul fast float %2755, %2746
  %2757 = fadd fast float %2756, %2754
  %2758 = fsub fast float %2677, %2752
  %2759 = fsub fast float %2757, %2752
  %2760 = fdiv fast float %2758, %2759
  %2761 = call float @dx.op.unary.f32(i32 7, float %2760)  ; Saturate(value)
  %2762 = extractvalue %dx.types.CBufRet.f32 %2671, 1
  %2763 = extractvalue %dx.types.CBufRet.f32 %2721, 0
  %2764 = extractvalue %dx.types.CBufRet.f32 %2721, 1
  %2765 = fmul fast float %2763, %2690
  %2766 = fmul fast float %2764, %2691
  %2767 = fmul fast float %2765, 1.250000e-01
  %2768 = fmul fast float %2766, 1.250000e-01
  %2769 = call float @dx.op.unary.f32(i32 27, float %2767)  ; Round_ni(value)
  %2770 = call float @dx.op.unary.f32(i32 27, float %2768)  ; Round_ni(value)
  %2771 = fmul fast float %2769, 8.000000e+00
  %2772 = fmul fast float %2770, 8.000000e+00
  %2773 = fsub fast float %2765, %2771
  %2774 = fsub fast float %2766, %2772
  %2775 = fadd fast float %2773, 5.000000e-01
  %2776 = fadd fast float %2774, 5.000000e-01
  %2777 = and i32 %2732, 255
  %2778 = lshr i32 %2731, 24
  %2779 = mul nuw nsw i32 %2777, 9
  %2780 = uitofp i32 %2779 to float
  %2781 = mul nuw nsw i32 %2778, 9
  %2782 = uitofp i32 %2781 to float
  %2783 = fadd fast float %2775, %2780
  %2784 = fadd fast float %2776, %2782
  %2785 = fdiv fast float %2783, %2672
  %2786 = fdiv fast float %2784, %2762
  %2787 = fmul fast float %2761, 4.375000e-01
  %2788 = fadd fast float %2787, 3.125000e-02
  %2789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %35, float %2785, float %2786, float %2788, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2790 = extractvalue %dx.types.ResRet.f32 %2789, 0
  %2791 = extractvalue %dx.types.ResRet.f32 %2789, 1
  %2792 = extractvalue %dx.types.ResRet.f32 %2789, 2
  %2793 = fadd fast float %2787, 5.312500e-01
  %2794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %35, float %2785, float %2786, float %2793, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2795 = extractvalue %dx.types.ResRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.ResRet.f32 %2794, 1
  %2797 = extractvalue %dx.types.ResRet.f32 %2794, 2
  %2798 = fmul fast float %2795, 2.000000e+00
  %2799 = fmul fast float %2796, 2.000000e+00
  %2800 = fmul fast float %2797, 2.000000e+00
  %2801 = fadd fast float %2798, -1.000000e+00
  %2802 = fadd fast float %2799, -1.000000e+00
  %2803 = fadd fast float %2800, -1.000000e+00
  %2804 = fmul fast float %2801, %2801
  %2805 = fmul fast float %2802, %2802
  %2806 = fadd fast float %2804, %2805
  %2807 = fmul fast float %2803, %2803
  %2808 = fadd fast float %2806, %2807
  %2809 = call float @dx.op.unary.f32(i32 24, float %2808)  ; Sqrt(value)
  %2810 = fcmp fast ogt float %2809, 0.000000e+00
  br i1 %2810, label %2811, label %2815

; <label>:2811                                    ; preds = %2734
  %2812 = fdiv fast float %2801, %2809
  %2813 = fdiv fast float %2802, %2809
  %2814 = fdiv fast float %2803, %2809
  br label %2815

; <label>:2815                                    ; preds = %2811, %2734
  %2816 = phi float [ %2812, %2811 ], [ 0.000000e+00, %2734 ]
  %2817 = phi float [ %2813, %2811 ], [ 0.000000e+00, %2734 ]
  %2818 = phi float [ %2814, %2811 ], [ 0.000000e+00, %2734 ]
  %2819 = call float @dx.op.dot3.f32(i32 55, float %2816, float %2817, float %2818, float %2493, float %2494, float %2495)  ; Dot3(ax,ay,az,bx,by,bz)
  %2820 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2819)  ; FMax(a,b)
  %2821 = fmul fast float %2820, 0x400C5BF8A0000000
  %2822 = fmul fast float %2790, %2710
  %2823 = fmul fast float %2822, %2821
  %2824 = fmul fast float %2791, %2710
  %2825 = fmul fast float %2824, %2821
  %2826 = fmul fast float %2792, %2710
  %2827 = fmul fast float %2826, %2821
  %2828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2829 = extractvalue %dx.types.CBufRet.f32 %2828, 3
  %2830 = fmul fast float %2823, %2829
  %2831 = fmul fast float %2825, %2829
  %2832 = fmul fast float %2827, %2829
  %2833 = fcmp fast ogt float %2677, %2757
  br i1 %2833, label %2834, label %2843

; <label>:2834                                    ; preds = %2815
  %2835 = fmul fast float %2759, 0x3FC24924A0000000
  %2836 = fsub fast float %2677, %2757
  %2837 = fdiv fast float %2836, %2835
  %2838 = call float @dx.op.unary.f32(i32 7, float %2837)  ; Saturate(value)
  %2839 = fsub fast float 1.000000e+00, %2838
  %2840 = fmul fast float %2839, %2830
  %2841 = fmul fast float %2839, %2831
  %2842 = fmul fast float %2839, %2832
  br label %2843

; <label>:2843                                    ; preds = %2834, %2815, %2720, %2675
  %2844 = phi float [ %2842, %2834 ], [ %2832, %2815 ], [ 0.000000e+00, %2720 ], [ 0.000000e+00, %2675 ]
  %2845 = phi float [ %2841, %2834 ], [ %2831, %2815 ], [ 0.000000e+00, %2720 ], [ 0.000000e+00, %2675 ]
  %2846 = phi float [ %2840, %2834 ], [ %2830, %2815 ], [ 0.000000e+00, %2720 ], [ 0.000000e+00, %2675 ]
  %2847 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2846)  ; FMax(a,b)
  %2848 = fmul fast float %2847, 0x3FD20DD760000000
  %2849 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2512, float %2513, float %2514)  ; Dot3(ax,ay,az,bx,by,bz)
  %2850 = fmul fast float %2849, 0x3FDF454380000000
  %2851 = fmul fast float %2849, %2849
  %2852 = fmul fast float %2851, 0x3FEE471020000000
  %2853 = fadd fast float %2852, 0xBFD42F6020000000
  %2854 = call float @dx.op.dot3.f32(i32 55, float %2847, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2850, float %2853)  ; Dot3(ax,ay,az,bx,by,bz)
  %2855 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2845)  ; FMax(a,b)
  %2856 = fmul fast float %2855, 0x3FD20DD760000000
  %2857 = call float @dx.op.dot3.f32(i32 55, float %2855, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2850, float %2853)  ; Dot3(ax,ay,az,bx,by,bz)
  %2858 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2844)  ; FMax(a,b)
  %2859 = fmul fast float %2858, 0x3FD20DD760000000
  %2860 = call float @dx.op.dot3.f32(i32 55, float %2858, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2850, float %2853)  ; Dot3(ax,ay,az,bx,by,bz)
  %2861 = call float @dx.op.binary.f32(i32 35, float %2848, float 0.000000e+00)  ; FMax(a,b)
  %2862 = call float @dx.op.binary.f32(i32 35, float %2856, float 0.000000e+00)  ; FMax(a,b)
  %2863 = call float @dx.op.binary.f32(i32 35, float %2859, float 0.000000e+00)  ; FMax(a,b)
  %2864 = call float @dx.op.binary.f32(i32 35, float %2854, float 0.000000e+00)  ; FMax(a,b)
  %2865 = call float @dx.op.binary.f32(i32 35, float %2857, float 0.000000e+00)  ; FMax(a,b)
  %2866 = call float @dx.op.binary.f32(i32 35, float %2860, float 0.000000e+00)  ; FMax(a,b)
  %2867 = fmul fast float %2861, %2564
  %2868 = fmul fast float %2862, %2564
  %2869 = fmul fast float %2863, %2564
  %2870 = fadd fast float %2867, %2668
  %2871 = fadd fast float %2868, %2669
  %2872 = fadd fast float %2869, %2670
  %2873 = fmul fast float %2864, %2564
  %2874 = fmul fast float %2865, %2564
  %2875 = fmul fast float %2866, %2564
  %2876 = fadd fast float %2873, %2665
  %2877 = fadd fast float %2874, %2666
  %2878 = fadd fast float %2875, %2667
  br label %2879

; <label>:2879                                    ; preds = %2843, %2664
  %2880 = phi float [ %2876, %2843 ], [ %2665, %2664 ]
  %2881 = phi float [ %2877, %2843 ], [ %2666, %2664 ]
  %2882 = phi float [ %2878, %2843 ], [ %2667, %2664 ]
  %2883 = phi float [ %2870, %2843 ], [ %2668, %2664 ]
  %2884 = phi float [ %2871, %2843 ], [ %2669, %2664 ]
  %2885 = phi float [ %2872, %2843 ], [ %2670, %2664 ]
  %2886 = fcmp fast olt float %2564, 1.000000e+00
  br i1 %2886, label %2887, label %3705, !dx.controlflow.hints !75

; <label>:2887                                    ; preds = %2879
  %2888 = extractvalue %dx.types.CBufRet.f32 %2520, 2
  %2889 = fadd fast float %2888, %109
  %2890 = fmul fast float %2493, 3.200000e+01
  %2891 = fmul fast float %2494, 3.200000e+01
  %2892 = fadd fast float %2523, %2890
  %2893 = fadd fast float %2524, %2891
  %2894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2895 = extractvalue %dx.types.CBufRet.f32 %2894, 0
  %2896 = extractvalue %dx.types.CBufRet.f32 %2894, 1
  %2897 = fsub fast float %2892, %2895
  %2898 = fsub fast float %2893, %2896
  %2899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2900 = extractvalue %dx.types.CBufRet.f32 %2899, 0
  %2901 = extractvalue %dx.types.CBufRet.f32 %2899, 1
  %2902 = fmul fast float %2897, %2900
  %2903 = fmul fast float %2898, %2901
  %2904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2905 = extractvalue %dx.types.CBufRet.f32 %2904, 0
  %2906 = fmul fast float %2902, %2905
  %2907 = extractvalue %dx.types.CBufRet.f32 %2904, 1
  %2908 = fadd fast float %2906, %2907
  %2909 = extractvalue %dx.types.CBufRet.f32 %2904, 2
  %2910 = fmul fast float %2909, %2903
  %2911 = extractvalue %dx.types.CBufRet.f32 %2904, 3
  %2912 = fadd fast float %2910, %2911
  %2913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %35, float %2908, float %2912, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2914 = extractvalue %dx.types.ResRet.f32 %2913, 0
  %2915 = extractvalue %dx.types.ResRet.f32 %2913, 1
  %2916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2917 = extractvalue %dx.types.CBufRet.f32 %2916, 1
  %2918 = extractvalue %dx.types.CBufRet.f32 %2916, 0
  %2919 = fsub fast float %2917, %2918
  %2920 = fmul fast float %2919, %2914
  %2921 = fadd fast float %2920, %2918
  %2922 = extractvalue %dx.types.CBufRet.f32 %2916, 3
  %2923 = extractvalue %dx.types.CBufRet.f32 %2916, 2
  %2924 = fsub fast float %2922, %2923
  %2925 = fmul fast float %2924, %2915
  %2926 = fadd fast float %2925, %2923
  %2927 = fsub fast float %2889, %2921
  %2928 = fsub fast float %2926, %2921
  %2929 = fdiv fast float %2927, %2928
  %2930 = call float @dx.op.unary.f32(i32 7, float %2929)  ; Saturate(value)
  %2931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2932 = extractvalue %dx.types.CBufRet.f32 %2931, 0
  %2933 = fmul fast float %2932, %2930
  %2934 = extractvalue %dx.types.CBufRet.f32 %2931, 1
  %2935 = fadd fast float %2933, %2934
  %2936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %2908, float %2912, float %2935, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2937 = extractvalue %dx.types.ResRet.f32 %2936, 0
  %2938 = extractvalue %dx.types.ResRet.f32 %2936, 1
  %2939 = extractvalue %dx.types.ResRet.f32 %2936, 2
  %2940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2940, 0
  %2942 = extractvalue %dx.types.CBufRet.f32 %2940, 1
  %2943 = extractvalue %dx.types.CBufRet.f32 %2940, 2
  %2944 = fmul fast float %2941, %2937
  %2945 = fmul fast float %2942, %2938
  %2946 = fmul fast float %2943, %2939
  %2947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2948 = extractvalue %dx.types.CBufRet.f32 %2947, 0
  %2949 = extractvalue %dx.types.CBufRet.f32 %2947, 1
  %2950 = extractvalue %dx.types.CBufRet.f32 %2947, 2
  %2951 = fadd fast float %2944, %2948
  %2952 = fadd fast float %2945, %2949
  %2953 = fadd fast float %2946, %2950
  %2954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2955 = extractvalue %dx.types.CBufRet.f32 %2954, 0
  %2956 = fmul fast float %2955, %2902
  %2957 = extractvalue %dx.types.CBufRet.f32 %2954, 1
  %2958 = fadd fast float %2956, %2957
  %2959 = extractvalue %dx.types.CBufRet.f32 %2954, 2
  %2960 = fmul fast float %2959, %2903
  %2961 = extractvalue %dx.types.CBufRet.f32 %2954, 3
  %2962 = fadd fast float %2960, %2961
  %2963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2964 = extractvalue %dx.types.CBufRet.f32 %2963, 0
  %2965 = extractvalue %dx.types.CBufRet.f32 %2963, 1
  %2966 = extractvalue %dx.types.CBufRet.f32 %2963, 2
  %2967 = extractvalue %dx.types.CBufRet.f32 %2963, 3
  %2968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2969 = extractvalue %dx.types.CBufRet.f32 %2968, 0
  %2970 = extractvalue %dx.types.CBufRet.f32 %2968, 1
  %2971 = extractvalue %dx.types.CBufRet.f32 %2968, 2
  %2972 = extractvalue %dx.types.CBufRet.f32 %2968, 3
  %2973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %35, float %2958, float %2962, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2974 = extractvalue %dx.types.ResRet.f32 %2973, 0
  %2975 = extractvalue %dx.types.ResRet.f32 %2973, 1
  %2976 = extractvalue %dx.types.ResRet.f32 %2973, 2
  %2977 = extractvalue %dx.types.ResRet.f32 %2973, 3
  %2978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %35, float %2958, float %2962, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2979 = extractvalue %dx.types.ResRet.f32 %2978, 0
  %2980 = extractvalue %dx.types.ResRet.f32 %2978, 1
  %2981 = extractvalue %dx.types.ResRet.f32 %2978, 2
  %2982 = extractvalue %dx.types.ResRet.f32 %2978, 3
  %2983 = fmul fast float %2974, %2951
  %2984 = fmul fast float %2979, %2951
  %2985 = fmul fast float %2981, %2951
  %2986 = fmul fast float %2977, %2951
  %2987 = fadd fast float %2983, %2964
  %2988 = fadd fast float %2984, %2965
  %2989 = fadd fast float %2985, %2966
  %2990 = fadd fast float %2986, %2967
  %2991 = fmul fast float %2975, %2951
  %2992 = fmul fast float %2980, %2951
  %2993 = fadd fast float %2991, %2969
  %2994 = fadd fast float %2992, %2970
  %2995 = fmul fast float %2976, %2951
  %2996 = fmul fast float %2982, %2951
  %2997 = fadd fast float %2995, %2971
  %2998 = fadd fast float %2996, %2972
  %2999 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %35, float %2958, float %2962, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3000 = extractvalue %dx.types.ResRet.f32 %2999, 0
  %3001 = extractvalue %dx.types.ResRet.f32 %2999, 1
  %3002 = extractvalue %dx.types.ResRet.f32 %2999, 2
  %3003 = extractvalue %dx.types.ResRet.f32 %2999, 3
  %3004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %35, float %2958, float %2962, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3005 = extractvalue %dx.types.ResRet.f32 %3004, 0
  %3006 = extractvalue %dx.types.ResRet.f32 %3004, 1
  %3007 = extractvalue %dx.types.ResRet.f32 %3004, 2
  %3008 = extractvalue %dx.types.ResRet.f32 %3004, 3
  %3009 = fmul fast float %3000, %2952
  %3010 = fmul fast float %3005, %2952
  %3011 = fmul fast float %3007, %2952
  %3012 = fmul fast float %3003, %2952
  %3013 = fadd fast float %2987, %3009
  %3014 = fadd fast float %2988, %3010
  %3015 = fadd fast float %2989, %3011
  %3016 = fadd fast float %2990, %3012
  %3017 = fmul fast float %3001, %2952
  %3018 = fmul fast float %3006, %2952
  %3019 = fadd fast float %2993, %3017
  %3020 = fadd fast float %2994, %3018
  %3021 = fmul fast float %3002, %2952
  %3022 = fmul fast float %3008, %2952
  %3023 = fadd fast float %2997, %3021
  %3024 = fadd fast float %2998, %3022
  %3025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %35, float %2958, float %2962, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3026 = extractvalue %dx.types.ResRet.f32 %3025, 0
  %3027 = extractvalue %dx.types.ResRet.f32 %3025, 1
  %3028 = extractvalue %dx.types.ResRet.f32 %3025, 2
  %3029 = extractvalue %dx.types.ResRet.f32 %3025, 3
  %3030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %35, float %2958, float %2962, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3031 = extractvalue %dx.types.ResRet.f32 %3030, 0
  %3032 = extractvalue %dx.types.ResRet.f32 %3030, 1
  %3033 = extractvalue %dx.types.ResRet.f32 %3030, 2
  %3034 = extractvalue %dx.types.ResRet.f32 %3030, 3
  %3035 = fmul fast float %3026, %2953
  %3036 = fmul fast float %3031, %2953
  %3037 = fmul fast float %3033, %2953
  %3038 = fmul fast float %3029, %2953
  %3039 = fadd fast float %3013, %3035
  %3040 = fadd fast float %3014, %3036
  %3041 = fadd fast float %3015, %3037
  %3042 = fadd fast float %3016, %3038
  %3043 = fmul fast float %3027, %2953
  %3044 = fmul fast float %3032, %2953
  %3045 = fadd fast float %3019, %3043
  %3046 = fadd fast float %3020, %3044
  %3047 = fmul fast float %3028, %2953
  %3048 = fmul fast float %3034, %2953
  %3049 = fadd fast float %3023, %3047
  %3050 = fadd fast float %3024, %3048
  %3051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3052 = extractvalue %dx.types.CBufRet.f32 %3051, 0
  %3053 = fsub fast float %2523, %3052
  %3054 = fsub fast float %2895, %2523
  %3055 = call float @dx.op.binary.f32(i32 35, float %3054, float %3053)  ; FMax(a,b)
  %3056 = extractvalue %dx.types.CBufRet.f32 %3051, 1
  %3057 = fsub fast float %2524, %3056
  %3058 = fsub fast float %2896, %2524
  %3059 = call float @dx.op.binary.f32(i32 35, float %3058, float %3057)  ; FMax(a,b)
  %3060 = call float @dx.op.binary.f32(i32 35, float %3055, float %3059)  ; FMax(a,b)
  %3061 = extractvalue %dx.types.CBufRet.f32 %2899, 3
  %3062 = fmul fast float %3061, %3060
  %3063 = call float @dx.op.unary.f32(i32 7, float %3062)  ; Saturate(value)
  %3064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3065 = extractvalue %dx.types.CBufRet.f32 %3064, 0
  %3066 = extractvalue %dx.types.CBufRet.f32 %3064, 1
  %3067 = extractvalue %dx.types.CBufRet.f32 %3064, 2
  %3068 = extractvalue %dx.types.CBufRet.f32 %3064, 3
  %3069 = fsub fast float %3065, %3039
  %3070 = fsub fast float %3066, %3040
  %3071 = fsub fast float %3067, %3041
  %3072 = fsub fast float %3068, %3042
  %3073 = fmul fast float %3069, %3063
  %3074 = fmul fast float %3070, %3063
  %3075 = fmul fast float %3071, %3063
  %3076 = fmul fast float %3072, %3063
  %3077 = fadd fast float %3073, %3039
  %3078 = fadd fast float %3074, %3040
  %3079 = fadd fast float %3075, %3041
  %3080 = fadd fast float %3076, %3042
  %3081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3082 = extractvalue %dx.types.CBufRet.f32 %3081, 0
  %3083 = extractvalue %dx.types.CBufRet.f32 %3081, 1
  %3084 = fsub fast float %3082, %3045
  %3085 = fsub fast float %3083, %3046
  %3086 = fmul fast float %3084, %3063
  %3087 = fmul fast float %3085, %3063
  %3088 = fadd fast float %3086, %3045
  %3089 = fadd fast float %3087, %3046
  %3090 = extractvalue %dx.types.CBufRet.f32 %3081, 2
  %3091 = extractvalue %dx.types.CBufRet.f32 %3081, 3
  %3092 = fsub fast float %3090, %3049
  %3093 = fsub fast float %3091, %3050
  %3094 = fmul fast float %3092, %3063
  %3095 = fmul fast float %3093, %3063
  %3096 = fadd fast float %3094, %3049
  %3097 = fadd fast float %3095, %3050
  %3098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3099 = extractvalue %dx.types.CBufRet.f32 %3098, 0
  %3100 = fmul fast float %3099, %3077
  %3101 = fmul fast float %3099, %3078
  %3102 = fmul fast float %3099, %3079
  %3103 = fmul fast float %3099, %3080
  %3104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3105 = extractvalue %dx.types.CBufRet.f32 %3104, 0
  %3106 = fmul fast float %3105, %3088
  %3107 = fmul fast float %3105, %3089
  %3108 = fadd fast float %3106, %3100
  %3109 = fadd fast float %3107, %3102
  %3110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3111 = extractvalue %dx.types.CBufRet.f32 %3110, 0
  %3112 = fmul fast float %3111, %3096
  %3113 = fmul fast float %3111, %3097
  %3114 = fadd fast float %3108, %3112
  %3115 = fadd fast float %3109, %3113
  %3116 = extractvalue %dx.types.CBufRet.f32 %3098, 1
  %3117 = fmul fast float %3116, %3077
  %3118 = fmul fast float %3116, %3078
  %3119 = fmul fast float %3116, %3079
  %3120 = fmul fast float %3116, %3080
  %3121 = extractvalue %dx.types.CBufRet.f32 %3104, 1
  %3122 = fmul fast float %3121, %3088
  %3123 = fmul fast float %3121, %3089
  %3124 = fadd fast float %3122, %3117
  %3125 = fadd fast float %3123, %3119
  %3126 = extractvalue %dx.types.CBufRet.f32 %3110, 1
  %3127 = fmul fast float %3126, %3096
  %3128 = fmul fast float %3126, %3097
  %3129 = fadd fast float %3124, %3127
  %3130 = fadd fast float %3125, %3128
  %3131 = extractvalue %dx.types.CBufRet.f32 %3098, 2
  %3132 = fmul fast float %3131, %3077
  %3133 = fmul fast float %3131, %3078
  %3134 = fmul fast float %3131, %3079
  %3135 = fmul fast float %3131, %3080
  %3136 = extractvalue %dx.types.CBufRet.f32 %3104, 2
  %3137 = fmul fast float %3136, %3088
  %3138 = fmul fast float %3136, %3089
  %3139 = fadd fast float %3137, %3132
  %3140 = fadd fast float %3138, %3134
  %3141 = extractvalue %dx.types.CBufRet.f32 %3110, 2
  %3142 = fmul fast float %3141, %3096
  %3143 = fmul fast float %3141, %3097
  %3144 = fadd fast float %3139, %3142
  %3145 = fadd fast float %3140, %3143
  %3146 = fmul fast float %3133, %3133
  %3147 = fmul fast float %3145, %3145
  %3148 = fmul fast float %3135, %3135
  %3149 = fadd fast float %3148, %3146
  %3150 = fadd fast float %3149, %3147
  %3151 = call float @dx.op.unary.f32(i32 24, float %3150)  ; Sqrt(value)
  %3152 = fcmp fast ugt float %3151, 0.000000e+00
  br i1 %3152, label %3153, label %3168

; <label>:3153                                    ; preds = %2887
  %3154 = fsub fast float -0.000000e+00, %3135
  %3155 = fdiv fast float %3154, %3151
  %3156 = fsub fast float -0.000000e+00, %3133
  %3157 = fdiv fast float %3156, %3151
  %3158 = fdiv fast float %3145, %3151
  %3159 = fmul fast float %3144, 0x3FE279A760000000
  %3160 = fmul fast float %3157, %3133
  %3161 = fmul fast float %3158, %3145
  %3162 = fmul fast float %3155, %3135
  %3163 = fadd fast float %3160, %3162
  %3164 = fsub fast float %3163, %3161
  %3165 = call float @dx.op.unary.f32(i32 6, float %3164)  ; FAbs(value)
  %3166 = fadd fast float %3165, 0x3DDB7CDFE0000000
  %3167 = fdiv fast float %3159, %3166
  br label %3168

; <label>:3168                                    ; preds = %3153, %2887
  %3169 = phi float [ %3167, %3153 ], [ 1.000000e+00, %2887 ]
  %3170 = fmul fast float %3118, %3118
  %3171 = fmul fast float %3130, %3130
  %3172 = fmul fast float %3120, %3120
  %3173 = fadd fast float %3172, %3170
  %3174 = fadd fast float %3173, %3171
  %3175 = call float @dx.op.unary.f32(i32 24, float %3174)  ; Sqrt(value)
  %3176 = fcmp fast ugt float %3175, 0.000000e+00
  br i1 %3176, label %3177, label %3192

; <label>:3177                                    ; preds = %3168
  %3178 = fsub fast float -0.000000e+00, %3120
  %3179 = fdiv fast float %3178, %3175
  %3180 = fsub fast float -0.000000e+00, %3118
  %3181 = fdiv fast float %3180, %3175
  %3182 = fdiv fast float %3130, %3175
  %3183 = fmul fast float %3129, 0x3FE279A760000000
  %3184 = fmul fast float %3181, %3118
  %3185 = fmul fast float %3182, %3130
  %3186 = fmul fast float %3179, %3120
  %3187 = fadd fast float %3184, %3186
  %3188 = fsub fast float %3187, %3185
  %3189 = call float @dx.op.unary.f32(i32 6, float %3188)  ; FAbs(value)
  %3190 = fadd fast float %3189, 0x3DDB7CDFE0000000
  %3191 = fdiv fast float %3183, %3190
  br label %3192

; <label>:3192                                    ; preds = %3177, %3168
  %3193 = phi float [ %3191, %3177 ], [ 1.000000e+00, %3168 ]
  %3194 = call float @dx.op.binary.f32(i32 36, float %3193, float %3169)  ; FMin(a,b)
  %3195 = fmul fast float %3101, %3101
  %3196 = fmul fast float %3115, %3115
  %3197 = fmul fast float %3103, %3103
  %3198 = fadd fast float %3197, %3195
  %3199 = fadd fast float %3198, %3196
  %3200 = call float @dx.op.unary.f32(i32 24, float %3199)  ; Sqrt(value)
  %3201 = fcmp fast ugt float %3200, 0.000000e+00
  br i1 %3201, label %3202, label %3217

; <label>:3202                                    ; preds = %3192
  %3203 = fsub fast float -0.000000e+00, %3103
  %3204 = fdiv fast float %3203, %3200
  %3205 = fsub fast float -0.000000e+00, %3101
  %3206 = fdiv fast float %3205, %3200
  %3207 = fdiv fast float %3115, %3200
  %3208 = fmul fast float %3114, 0x3FE279A760000000
  %3209 = fmul fast float %3206, %3101
  %3210 = fmul fast float %3207, %3115
  %3211 = fmul fast float %3204, %3103
  %3212 = fadd fast float %3209, %3211
  %3213 = fsub fast float %3212, %3210
  %3214 = call float @dx.op.unary.f32(i32 6, float %3213)  ; FAbs(value)
  %3215 = fadd fast float %3214, 0x3DDB7CDFE0000000
  %3216 = fdiv fast float %3208, %3215
  br label %3217

; <label>:3217                                    ; preds = %3202, %3192
  %3218 = phi float [ %3216, %3202 ], [ 1.000000e+00, %3192 ]
  %3219 = call float @dx.op.binary.f32(i32 36, float %3218, float %3194)  ; FMin(a,b)
  %3220 = call float @dx.op.unary.f32(i32 7, float %3219)  ; Saturate(value)
  %3221 = fcmp fast olt float %3220, 1.000000e+00
  br i1 %3221, label %3222, label %3232

; <label>:3222                                    ; preds = %3217
  %3223 = fmul fast float %3220, %3101
  %3224 = fmul fast float %3220, %3115
  %3225 = fmul fast float %3220, %3103
  %3226 = fmul fast float %3220, %3118
  %3227 = fmul fast float %3220, %3130
  %3228 = fmul fast float %3220, %3120
  %3229 = fmul fast float %3220, %3133
  %3230 = fmul fast float %3220, %3145
  %3231 = fmul fast float %3220, %3135
  br label %3232

; <label>:3232                                    ; preds = %3222, %3217
  %3233 = phi float [ %3229, %3222 ], [ %3133, %3217 ]
  %3234 = phi float [ %3230, %3222 ], [ %3145, %3217 ]
  %3235 = phi float [ %3231, %3222 ], [ %3135, %3217 ]
  %3236 = phi float [ %3226, %3222 ], [ %3118, %3217 ]
  %3237 = phi float [ %3227, %3222 ], [ %3130, %3217 ]
  %3238 = phi float [ %3228, %3222 ], [ %3120, %3217 ]
  %3239 = phi float [ %3223, %3222 ], [ %3101, %3217 ]
  %3240 = phi float [ %3224, %3222 ], [ %3115, %3217 ]
  %3241 = phi float [ %3225, %3222 ], [ %3103, %3217 ]
  %3242 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3114)  ; FMax(a,b)
  %3243 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3129)  ; FMax(a,b)
  %3244 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3144)  ; FMax(a,b)
  %3245 = fcmp fast oge float %2902, 0.000000e+00
  %3246 = and i1 %3245, %2673
  %3247 = fcmp fast ole float %2902, 1.000000e+00
  %3248 = and i1 %3247, %3246
  %3249 = fcmp fast oge float %2903, 0.000000e+00
  %3250 = and i1 %3249, %3248
  %3251 = fcmp fast ole float %2903, 1.000000e+00
  %3252 = and i1 %3251, %3250
  br i1 %3252, label %3253, label %3398, !dx.controlflow.hints !76

; <label>:3253                                    ; preds = %3232
  %3254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3255 = extractvalue %dx.types.CBufRet.f32 %3254, 2
  %3256 = extractvalue %dx.types.CBufRet.f32 %3254, 3
  %3257 = fmul fast float %3255, %2902
  %3258 = fmul fast float %3256, %2903
  %3259 = call float @dx.op.unary.f32(i32 27, float %3257)  ; Round_ni(value)
  %3260 = call float @dx.op.unary.f32(i32 27, float %3258)  ; Round_ni(value)
  %3261 = fptosi float %3259 to i32
  %3262 = fptosi float %3260 to i32
  %3263 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %3261, i32 %3262, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = and i32 %3264, 65535
  %3266 = lshr i32 %3264, 16
  %3267 = icmp eq i32 %3265, 65535
  br i1 %3267, label %3304, label %3268

; <label>:3268                                    ; preds = %3253
  %3269 = extractvalue %dx.types.CBufRet.f32 %2671, 1
  %3270 = extractvalue %dx.types.CBufRet.f32 %3254, 0
  %3271 = extractvalue %dx.types.CBufRet.f32 %3254, 1
  %3272 = fmul fast float %3270, %2902
  %3273 = fmul fast float %3271, %2903
  %3274 = fmul fast float %3272, 1.250000e-01
  %3275 = fmul fast float %3273, 1.250000e-01
  %3276 = call float @dx.op.unary.f32(i32 27, float %3274)  ; Round_ni(value)
  %3277 = call float @dx.op.unary.f32(i32 27, float %3275)  ; Round_ni(value)
  %3278 = fmul fast float %3276, 8.000000e+00
  %3279 = fmul fast float %3277, 8.000000e+00
  %3280 = and i32 %3264, 255
  %3281 = lshr i32 %3264, 8
  %3282 = and i32 %3281, 255
  %3283 = mul nuw nsw i32 %3280, 9
  %3284 = uitofp i32 %3283 to float
  %3285 = mul nuw nsw i32 %3282, 9
  %3286 = uitofp i32 %3285 to float
  %3287 = fadd fast float %3284, 5.000000e-01
  %3288 = fadd fast float %3287, %3272
  %3289 = fsub fast float %3288, %3278
  %3290 = fadd fast float %3286, 5.000000e-01
  %3291 = fadd fast float %3290, %3273
  %3292 = fsub fast float %3291, %3279
  %3293 = fdiv fast float %3289, %2672
  %3294 = fdiv fast float %3292, %3269
  %3295 = fmul fast float %2930, 4.375000e-01
  %3296 = fadd fast float %3295, 3.125000e-02
  %3297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %35, float %3293, float %3294, float %3296, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3298 = extractvalue %dx.types.ResRet.f32 %3297, 0
  %3299 = extractvalue %dx.types.ResRet.f32 %3297, 1
  %3300 = extractvalue %dx.types.ResRet.f32 %3297, 2
  %3301 = fadd fast float %3298, %3242
  %3302 = fadd fast float %3299, %3243
  %3303 = fadd fast float %3300, %3244
  br label %3304

; <label>:3304                                    ; preds = %3268, %3253
  %3305 = phi float [ %3303, %3268 ], [ %3244, %3253 ]
  %3306 = phi float [ %3302, %3268 ], [ %3243, %3253 ]
  %3307 = phi float [ %3301, %3268 ], [ %3242, %3253 ]
  %3308 = icmp eq i32 %3266, 65535
  br i1 %3308, label %3398, label %3309

; <label>:3309                                    ; preds = %3304
  %3310 = extractvalue %dx.types.CBufRet.f32 %2671, 1
  %3311 = extractvalue %dx.types.CBufRet.f32 %3254, 0
  %3312 = extractvalue %dx.types.CBufRet.f32 %3254, 1
  %3313 = fmul fast float %3311, %2902
  %3314 = fmul fast float %3312, %2903
  %3315 = fmul fast float %3313, 1.250000e-01
  %3316 = fmul fast float %3314, 1.250000e-01
  %3317 = call float @dx.op.unary.f32(i32 27, float %3315)  ; Round_ni(value)
  %3318 = call float @dx.op.unary.f32(i32 27, float %3316)  ; Round_ni(value)
  %3319 = fmul fast float %3317, 8.000000e+00
  %3320 = fmul fast float %3318, 8.000000e+00
  %3321 = fsub fast float %3313, %3319
  %3322 = fsub fast float %3314, %3320
  %3323 = fadd fast float %3321, 5.000000e-01
  %3324 = fadd fast float %3322, 5.000000e-01
  %3325 = and i32 %3266, 255
  %3326 = lshr i32 %3264, 24
  %3327 = mul nuw nsw i32 %3325, 9
  %3328 = uitofp i32 %3327 to float
  %3329 = mul nuw nsw i32 %3326, 9
  %3330 = uitofp i32 %3329 to float
  %3331 = fadd fast float %3323, %3328
  %3332 = fadd fast float %3324, %3330
  %3333 = fdiv fast float %3331, %2672
  %3334 = fdiv fast float %3332, %3310
  %3335 = fmul fast float %2930, 4.375000e-01
  %3336 = fadd fast float %3335, 3.125000e-02
  %3337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %35, float %3333, float %3334, float %3336, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3338 = extractvalue %dx.types.ResRet.f32 %3337, 0
  %3339 = extractvalue %dx.types.ResRet.f32 %3337, 1
  %3340 = extractvalue %dx.types.ResRet.f32 %3337, 2
  %3341 = fadd fast float %3335, 5.312500e-01
  %3342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %35, float %3333, float %3334, float %3341, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3343 = extractvalue %dx.types.ResRet.f32 %3342, 0
  %3344 = extractvalue %dx.types.ResRet.f32 %3342, 1
  %3345 = extractvalue %dx.types.ResRet.f32 %3342, 2
  %3346 = fmul fast float %3343, 2.000000e+00
  %3347 = fmul fast float %3344, 2.000000e+00
  %3348 = fmul fast float %3345, 2.000000e+00
  %3349 = fadd fast float %3346, -1.000000e+00
  %3350 = fadd fast float %3347, -1.000000e+00
  %3351 = fadd fast float %3348, -1.000000e+00
  %3352 = fmul fast float %3349, %3349
  %3353 = fmul fast float %3350, %3350
  %3354 = fadd fast float %3352, %3353
  %3355 = fmul fast float %3351, %3351
  %3356 = fadd fast float %3354, %3355
  %3357 = call float @dx.op.unary.f32(i32 24, float %3356)  ; Sqrt(value)
  %3358 = fcmp fast ogt float %3357, 0.000000e+00
  br i1 %3358, label %3359, label %3363

; <label>:3359                                    ; preds = %3309
  %3360 = fdiv fast float %3349, %3357
  %3361 = fdiv fast float %3350, %3357
  %3362 = fdiv fast float %3351, %3357
  br label %3363

; <label>:3363                                    ; preds = %3359, %3309
  %3364 = phi float [ %3360, %3359 ], [ 0.000000e+00, %3309 ]
  %3365 = phi float [ %3361, %3359 ], [ 0.000000e+00, %3309 ]
  %3366 = phi float [ %3362, %3359 ], [ 0.000000e+00, %3309 ]
  %3367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3368 = extractvalue %dx.types.CBufRet.f32 %3367, 0
  %3369 = extractvalue %dx.types.CBufRet.f32 %3367, 1
  %3370 = fsub fast float %2523, %3368
  %3371 = fsub fast float %2524, %3369
  %3372 = fmul fast float %3370, %3370
  %3373 = fmul fast float %3371, %3371
  %3374 = fadd fast float %3372, %3373
  %3375 = call float @dx.op.unary.f32(i32 24, float %3374)  ; Sqrt(value)
  %3376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3377 = extractvalue %dx.types.CBufRet.f32 %3376, 0
  %3378 = extractvalue %dx.types.CBufRet.f32 %3376, 1
  %3379 = fsub fast float %3375, %3377
  %3380 = fdiv fast float %3379, %3378
  %3381 = call float @dx.op.unary.f32(i32 7, float %3380)  ; Saturate(value)
  %3382 = fmul fast float %3381, 2.000000e+00
  %3383 = fsub fast float 3.000000e+00, %3382
  %3384 = fmul fast float %3381, %3381
  %3385 = fmul fast float %3384, %3383
  %3386 = call float @dx.op.dot3.f32(i32 55, float %3364, float %3365, float %3366, float %2493, float %2494, float %2495)  ; Dot3(ax,ay,az,bx,by,bz)
  %3387 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3386)  ; FMax(a,b)
  %3388 = fmul fast float %3387, 0x400C5BF8A0000000
  %3389 = fmul fast float %3385, %3338
  %3390 = fmul fast float %3389, %3388
  %3391 = fadd fast float %3390, %3307
  %3392 = fmul fast float %3385, %3339
  %3393 = fmul fast float %3392, %3388
  %3394 = fadd fast float %3393, %3306
  %3395 = fmul fast float %3385, %3340
  %3396 = fmul fast float %3395, %3388
  %3397 = fadd fast float %3396, %3305
  br label %3398

; <label>:3398                                    ; preds = %3363, %3304, %3232
  %3399 = phi float [ %3397, %3363 ], [ %3305, %3304 ], [ %3244, %3232 ]
  %3400 = phi float [ %3394, %3363 ], [ %3306, %3304 ], [ %3243, %3232 ]
  %3401 = phi float [ %3391, %3363 ], [ %3307, %3304 ], [ %3242, %3232 ]
  %3402 = fcmp fast ogt float %2889, %2926
  %3403 = and i1 %3245, %3402
  %3404 = and i1 %3247, %3403
  %3405 = and i1 %3249, %3404
  %3406 = and i1 %3251, %3405
  br i1 %3406, label %3407, label %3464, !dx.controlflow.hints !77

; <label>:3407                                    ; preds = %3398
  %3408 = fmul fast float %2928, 0x3FC24924A0000000
  %3409 = fsub fast float %2889, %2926
  %3410 = fdiv fast float %3409, %3408
  %3411 = call float @dx.op.unary.f32(i32 7, float %3410)  ; Saturate(value)
  %3412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3413 = extractvalue %dx.types.CBufRet.f32 %3412, 0
  %3414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3415 = extractvalue %dx.types.CBufRet.f32 %3414, 0
  %3416 = extractvalue %dx.types.CBufRet.f32 %3414, 1
  %3417 = extractvalue %dx.types.CBufRet.f32 %3414, 2
  %3418 = fsub fast float %3413, %3401
  %3419 = fsub fast float %3415, %3239
  %3420 = fsub fast float %3416, %3240
  %3421 = fsub fast float %3417, %3241
  %3422 = fmul fast float %3418, %3411
  %3423 = fmul fast float %3419, %3411
  %3424 = fmul fast float %3420, %3411
  %3425 = fmul fast float %3421, %3411
  %3426 = fadd fast float %3422, %3401
  %3427 = fadd fast float %3423, %3239
  %3428 = fadd fast float %3424, %3240
  %3429 = fadd fast float %3425, %3241
  %3430 = extractvalue %dx.types.CBufRet.f32 %3412, 1
  %3431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3432 = extractvalue %dx.types.CBufRet.f32 %3431, 0
  %3433 = extractvalue %dx.types.CBufRet.f32 %3431, 1
  %3434 = extractvalue %dx.types.CBufRet.f32 %3431, 2
  %3435 = fsub fast float %3430, %3400
  %3436 = fsub fast float %3432, %3236
  %3437 = fsub fast float %3433, %3237
  %3438 = fsub fast float %3434, %3238
  %3439 = fmul fast float %3435, %3411
  %3440 = fmul fast float %3436, %3411
  %3441 = fmul fast float %3437, %3411
  %3442 = fmul fast float %3438, %3411
  %3443 = fadd fast float %3439, %3400
  %3444 = fadd fast float %3440, %3236
  %3445 = fadd fast float %3441, %3237
  %3446 = fadd fast float %3442, %3238
  %3447 = extractvalue %dx.types.CBufRet.f32 %3412, 2
  %3448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3449 = extractvalue %dx.types.CBufRet.f32 %3448, 0
  %3450 = extractvalue %dx.types.CBufRet.f32 %3448, 1
  %3451 = extractvalue %dx.types.CBufRet.f32 %3448, 2
  %3452 = fsub fast float %3447, %3399
  %3453 = fsub fast float %3449, %3233
  %3454 = fsub fast float %3450, %3234
  %3455 = fsub fast float %3451, %3235
  %3456 = fmul fast float %3452, %3411
  %3457 = fmul fast float %3453, %3411
  %3458 = fmul fast float %3454, %3411
  %3459 = fmul fast float %3455, %3411
  %3460 = fadd fast float %3456, %3399
  %3461 = fadd fast float %3457, %3233
  %3462 = fadd fast float %3458, %3234
  %3463 = fadd fast float %3459, %3235
  br label %3464

; <label>:3464                                    ; preds = %3407, %3398
  %3465 = phi float [ %3460, %3407 ], [ %3399, %3398 ]
  %3466 = phi float [ %3461, %3407 ], [ %3233, %3398 ]
  %3467 = phi float [ %3462, %3407 ], [ %3234, %3398 ]
  %3468 = phi float [ %3463, %3407 ], [ %3235, %3398 ]
  %3469 = phi float [ %3443, %3407 ], [ %3400, %3398 ]
  %3470 = phi float [ %3444, %3407 ], [ %3236, %3398 ]
  %3471 = phi float [ %3445, %3407 ], [ %3237, %3398 ]
  %3472 = phi float [ %3446, %3407 ], [ %3238, %3398 ]
  %3473 = phi float [ %3426, %3407 ], [ %3401, %3398 ]
  %3474 = phi float [ %3427, %3407 ], [ %3239, %3398 ]
  %3475 = phi float [ %3428, %3407 ], [ %3240, %3398 ]
  %3476 = phi float [ %3429, %3407 ], [ %3241, %3398 ]
  %3477 = extractvalue %dx.types.CBufRet.f32 %3051, 3
  %3478 = fmul fast float %3477, %3473
  %3479 = fmul fast float %3477, %3469
  %3480 = fmul fast float %3477, %3465
  %3481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3482 = extractvalue %dx.types.CBufRet.f32 %3481, 3
  %3483 = fmul fast float %3478, %3482
  %3484 = fmul fast float %3479, %3482
  %3485 = fmul fast float %3480, %3482
  %3486 = fmul fast float %3474, 1.500000e+00
  %3487 = fmul fast float %3486, %3477
  %3488 = fmul fast float %3487, %3482
  %3489 = fmul fast float %3475, 1.500000e+00
  %3490 = fmul fast float %3489, %3477
  %3491 = fmul fast float %3490, %3482
  %3492 = fmul fast float %3476, 1.500000e+00
  %3493 = fmul fast float %3492, %3477
  %3494 = fmul fast float %3493, %3482
  %3495 = fmul fast float %3470, 1.500000e+00
  %3496 = fmul fast float %3495, %3477
  %3497 = fmul fast float %3496, %3482
  %3498 = fmul fast float %3471, 1.500000e+00
  %3499 = fmul fast float %3498, %3477
  %3500 = fmul fast float %3499, %3482
  %3501 = fmul fast float %3472, 1.500000e+00
  %3502 = fmul fast float %3501, %3477
  %3503 = fmul fast float %3502, %3482
  %3504 = fmul fast float %3466, 1.500000e+00
  %3505 = fmul fast float %3504, %3477
  %3506 = fmul fast float %3505, %3482
  %3507 = fmul fast float %3467, 1.500000e+00
  %3508 = fmul fast float %3507, %3477
  %3509 = fmul fast float %3508, %3482
  %3510 = fmul fast float %3468, 1.500000e+00
  %3511 = fmul fast float %3510, %3477
  %3512 = fmul fast float %3511, %3482
  %3513 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3483)  ; FMax(a,b)
  %3514 = call float @dx.op.dot3.f32(i32 55, float %3488, float %3491, float %3494, float %3488, float %3491, float %3494)  ; Dot3(ax,ay,az,bx,by,bz)
  %3515 = fcmp fast oeq float %3514, 0.000000e+00
  %3516 = fcmp fast oeq float %3513, 0.000000e+00
  %3517 = or i1 %3516, %3515
  br i1 %3517, label %3547, label %3518

; <label>:3518                                    ; preds = %3464
  %3519 = fsub fast float -0.000000e+00, %3494
  %3520 = fsub fast float -0.000000e+00, %3488
  %3521 = call float @dx.op.unary.f32(i32 24, float %3514)  ; Sqrt(value)
  %3522 = fdiv fast float %3521, %3513
  %3523 = fcmp fast ogt float %3522, 0x3FFB6F8900000000
  %3524 = select i1 %3523, float 0x3FFB6F8900000000, float %3522
  %3525 = fmul fast float %3524, 0x3FE8A23460000000
  %3526 = call float @dx.op.unary.f32(i32 7, float %3525)  ; Saturate(value)
  %3527 = call float @dx.op.binary.f32(i32 35, float %3524, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3528 = fmul fast float %3526, %3513
  %3529 = fmul fast float %3527, 0x3FF279A740000000
  %3530 = fadd fast float %3529, -1.000000e+00
  %3531 = call float @dx.op.dot3.f32(i32 55, float %3519, float %3520, float %3491, float %3519, float %3520, float %3491)  ; Dot3(ax,ay,az,bx,by,bz)
  %3532 = call float @dx.op.unary.f32(i32 25, float %3531)  ; Rsqrt(value)
  %3533 = fmul fast float %3532, %3519
  %3534 = fmul fast float %3532, %3520
  %3535 = fmul fast float %3532, %3491
  %3536 = fmul fast float %3530, %3530
  %3537 = fsub fast float 1.000000e+00, %3536
  %3538 = fmul fast float %3527, 0x40005F8BE0000000
  %3539 = fsub fast float 0x400C5BF8A0000000, %3538
  %3540 = fdiv fast float %3528, %3539
  %3541 = fmul fast float %3540, 0x3FEE31C3C0000000
  %3542 = fmul fast float %3541, %3537
  %3543 = fmul fast float %3527, 0x3FDACB7480000000
  %3544 = fadd fast float %3543, 0xBFD7347680000000
  %3545 = fmul fast float %3544, %3540
  %3546 = fmul fast float %3545, %3537
  br label %3547

; <label>:3547                                    ; preds = %3518, %3464
  %3548 = phi float [ %3533, %3518 ], [ 0.000000e+00, %3464 ]
  %3549 = phi float [ %3534, %3518 ], [ 0.000000e+00, %3464 ]
  %3550 = phi float [ %3535, %3518 ], [ 0.000000e+00, %3464 ]
  %3551 = phi float [ %3542, %3518 ], [ 0.000000e+00, %3464 ]
  %3552 = phi float [ %3546, %3518 ], [ 0.000000e+00, %3464 ]
  %3553 = call float @dx.op.dot3.f32(i32 55, float %3548, float %3549, float %3550, float %2493, float %2494, float %2495)  ; Dot3(ax,ay,az,bx,by,bz)
  %3554 = fmul fast float %3553, %3553
  %3555 = fmul fast float %3554, 0x3FEE471020000000
  %3556 = fadd fast float %3555, 0xBFD42F6020000000
  %3557 = fmul fast float %3513, 0x3FD20DD760000000
  %3558 = fmul fast float %3556, %3552
  %3559 = fmul fast float %3551, 0x3FDF454380000000
  %3560 = fmul fast float %3559, %3553
  %3561 = fadd fast float %3560, %3557
  %3562 = fadd fast float %3561, %3558
  %3563 = call float @dx.op.dot3.f32(i32 55, float %3548, float %3549, float %3550, float %2512, float %2513, float %2514)  ; Dot3(ax,ay,az,bx,by,bz)
  %3564 = fmul fast float %3563, 0x3FDF454380000000
  %3565 = fmul fast float %3563, %3563
  %3566 = fmul fast float %3565, 0x3FEE471020000000
  %3567 = fadd fast float %3566, 0xBFD42F6020000000
  %3568 = call float @dx.op.dot3.f32(i32 55, float %3513, float %3551, float %3552, float 0x3FD20DD760000000, float %3564, float %3567)  ; Dot3(ax,ay,az,bx,by,bz)
  %3569 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3484)  ; FMax(a,b)
  %3570 = call float @dx.op.dot3.f32(i32 55, float %3497, float %3500, float %3503, float %3497, float %3500, float %3503)  ; Dot3(ax,ay,az,bx,by,bz)
  %3571 = fcmp fast oeq float %3570, 0.000000e+00
  %3572 = fcmp fast oeq float %3569, 0.000000e+00
  %3573 = or i1 %3572, %3571
  br i1 %3573, label %3603, label %3574

; <label>:3574                                    ; preds = %3547
  %3575 = fsub fast float -0.000000e+00, %3503
  %3576 = fsub fast float -0.000000e+00, %3497
  %3577 = call float @dx.op.unary.f32(i32 24, float %3570)  ; Sqrt(value)
  %3578 = fdiv fast float %3577, %3569
  %3579 = fcmp fast ogt float %3578, 0x3FFB6F8900000000
  %3580 = select i1 %3579, float 0x3FFB6F8900000000, float %3578
  %3581 = fmul fast float %3580, 0x3FE8A23460000000
  %3582 = call float @dx.op.unary.f32(i32 7, float %3581)  ; Saturate(value)
  %3583 = call float @dx.op.binary.f32(i32 35, float %3580, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3584 = fmul fast float %3582, %3569
  %3585 = fmul fast float %3583, 0x3FF279A740000000
  %3586 = fadd fast float %3585, -1.000000e+00
  %3587 = call float @dx.op.dot3.f32(i32 55, float %3575, float %3576, float %3500, float %3575, float %3576, float %3500)  ; Dot3(ax,ay,az,bx,by,bz)
  %3588 = call float @dx.op.unary.f32(i32 25, float %3587)  ; Rsqrt(value)
  %3589 = fmul fast float %3588, %3575
  %3590 = fmul fast float %3588, %3576
  %3591 = fmul fast float %3588, %3500
  %3592 = fmul fast float %3586, %3586
  %3593 = fsub fast float 1.000000e+00, %3592
  %3594 = fmul fast float %3583, 0x40005F8BE0000000
  %3595 = fsub fast float 0x400C5BF8A0000000, %3594
  %3596 = fdiv fast float %3584, %3595
  %3597 = fmul fast float %3596, 0x3FEE31C3C0000000
  %3598 = fmul fast float %3597, %3593
  %3599 = fmul fast float %3583, 0x3FDACB7480000000
  %3600 = fadd fast float %3599, 0xBFD7347680000000
  %3601 = fmul fast float %3600, %3596
  %3602 = fmul fast float %3601, %3593
  br label %3603

; <label>:3603                                    ; preds = %3574, %3547
  %3604 = phi float [ %3589, %3574 ], [ 0.000000e+00, %3547 ]
  %3605 = phi float [ %3590, %3574 ], [ 0.000000e+00, %3547 ]
  %3606 = phi float [ %3591, %3574 ], [ 0.000000e+00, %3547 ]
  %3607 = phi float [ %3598, %3574 ], [ 0.000000e+00, %3547 ]
  %3608 = phi float [ %3602, %3574 ], [ 0.000000e+00, %3547 ]
  %3609 = call float @dx.op.dot3.f32(i32 55, float %3604, float %3605, float %3606, float %2493, float %2494, float %2495)  ; Dot3(ax,ay,az,bx,by,bz)
  %3610 = fmul fast float %3609, %3609
  %3611 = fmul fast float %3610, 0x3FEE471020000000
  %3612 = fadd fast float %3611, 0xBFD42F6020000000
  %3613 = fmul fast float %3569, 0x3FD20DD760000000
  %3614 = fmul fast float %3612, %3608
  %3615 = fmul fast float %3607, 0x3FDF454380000000
  %3616 = fmul fast float %3615, %3609
  %3617 = fadd fast float %3616, %3613
  %3618 = fadd fast float %3617, %3614
  %3619 = call float @dx.op.dot3.f32(i32 55, float %3604, float %3605, float %3606, float %2512, float %2513, float %2514)  ; Dot3(ax,ay,az,bx,by,bz)
  %3620 = fmul fast float %3619, 0x3FDF454380000000
  %3621 = fmul fast float %3619, %3619
  %3622 = fmul fast float %3621, 0x3FEE471020000000
  %3623 = fadd fast float %3622, 0xBFD42F6020000000
  %3624 = call float @dx.op.dot3.f32(i32 55, float %3569, float %3607, float %3608, float 0x3FD20DD760000000, float %3620, float %3623)  ; Dot3(ax,ay,az,bx,by,bz)
  %3625 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3485)  ; FMax(a,b)
  %3626 = call float @dx.op.dot3.f32(i32 55, float %3506, float %3509, float %3512, float %3506, float %3509, float %3512)  ; Dot3(ax,ay,az,bx,by,bz)
  %3627 = fcmp fast oeq float %3626, 0.000000e+00
  %3628 = fcmp fast oeq float %3625, 0.000000e+00
  %3629 = or i1 %3628, %3627
  br i1 %3629, label %3659, label %3630

; <label>:3630                                    ; preds = %3603
  %3631 = fsub fast float -0.000000e+00, %3512
  %3632 = fsub fast float -0.000000e+00, %3506
  %3633 = call float @dx.op.unary.f32(i32 24, float %3626)  ; Sqrt(value)
  %3634 = fdiv fast float %3633, %3625
  %3635 = fcmp fast ogt float %3634, 0x3FFB6F8900000000
  %3636 = select i1 %3635, float 0x3FFB6F8900000000, float %3634
  %3637 = fmul fast float %3636, 0x3FE8A23460000000
  %3638 = call float @dx.op.unary.f32(i32 7, float %3637)  ; Saturate(value)
  %3639 = call float @dx.op.binary.f32(i32 35, float %3636, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3640 = fmul fast float %3638, %3625
  %3641 = fmul fast float %3639, 0x3FF279A740000000
  %3642 = fadd fast float %3641, -1.000000e+00
  %3643 = call float @dx.op.dot3.f32(i32 55, float %3631, float %3632, float %3509, float %3631, float %3632, float %3509)  ; Dot3(ax,ay,az,bx,by,bz)
  %3644 = call float @dx.op.unary.f32(i32 25, float %3643)  ; Rsqrt(value)
  %3645 = fmul fast float %3644, %3631
  %3646 = fmul fast float %3644, %3632
  %3647 = fmul fast float %3644, %3509
  %3648 = fmul fast float %3642, %3642
  %3649 = fsub fast float 1.000000e+00, %3648
  %3650 = fmul fast float %3639, 0x40005F8BE0000000
  %3651 = fsub fast float 0x400C5BF8A0000000, %3650
  %3652 = fdiv fast float %3640, %3651
  %3653 = fmul fast float %3652, 0x3FEE31C3C0000000
  %3654 = fmul fast float %3653, %3649
  %3655 = fmul fast float %3639, 0x3FDACB7480000000
  %3656 = fadd fast float %3655, 0xBFD7347680000000
  %3657 = fmul fast float %3656, %3652
  %3658 = fmul fast float %3657, %3649
  br label %3659

; <label>:3659                                    ; preds = %3630, %3603
  %3660 = phi float [ %3645, %3630 ], [ 0.000000e+00, %3603 ]
  %3661 = phi float [ %3646, %3630 ], [ 0.000000e+00, %3603 ]
  %3662 = phi float [ %3647, %3630 ], [ 0.000000e+00, %3603 ]
  %3663 = phi float [ %3654, %3630 ], [ 0.000000e+00, %3603 ]
  %3664 = phi float [ %3658, %3630 ], [ 0.000000e+00, %3603 ]
  %3665 = call float @dx.op.dot3.f32(i32 55, float %3660, float %3661, float %3662, float %2493, float %2494, float %2495)  ; Dot3(ax,ay,az,bx,by,bz)
  %3666 = fmul fast float %3665, %3665
  %3667 = fmul fast float %3666, 0x3FEE471020000000
  %3668 = fadd fast float %3667, 0xBFD42F6020000000
  %3669 = fmul fast float %3625, 0x3FD20DD760000000
  %3670 = fmul fast float %3668, %3664
  %3671 = fmul fast float %3663, 0x3FDF454380000000
  %3672 = fmul fast float %3671, %3665
  %3673 = fadd fast float %3672, %3669
  %3674 = fadd fast float %3673, %3670
  %3675 = call float @dx.op.dot3.f32(i32 55, float %3660, float %3661, float %3662, float %2512, float %2513, float %2514)  ; Dot3(ax,ay,az,bx,by,bz)
  %3676 = fmul fast float %3675, 0x3FDF454380000000
  %3677 = fmul fast float %3675, %3675
  %3678 = fmul fast float %3677, 0x3FEE471020000000
  %3679 = fadd fast float %3678, 0xBFD42F6020000000
  %3680 = call float @dx.op.dot3.f32(i32 55, float %3625, float %3663, float %3664, float 0x3FD20DD760000000, float %3676, float %3679)  ; Dot3(ax,ay,az,bx,by,bz)
  %3681 = call float @dx.op.binary.f32(i32 35, float %3562, float 0.000000e+00)  ; FMax(a,b)
  %3682 = call float @dx.op.binary.f32(i32 35, float %3618, float 0.000000e+00)  ; FMax(a,b)
  %3683 = call float @dx.op.binary.f32(i32 35, float %3674, float 0.000000e+00)  ; FMax(a,b)
  %3684 = call float @dx.op.binary.f32(i32 35, float %3568, float 0.000000e+00)  ; FMax(a,b)
  %3685 = call float @dx.op.binary.f32(i32 35, float %3624, float 0.000000e+00)  ; FMax(a,b)
  %3686 = call float @dx.op.binary.f32(i32 35, float %3680, float 0.000000e+00)  ; FMax(a,b)
  %3687 = fsub fast float %2883, %3681
  %3688 = fsub fast float %2884, %3682
  %3689 = fsub fast float %2885, %3683
  %3690 = fmul fast float %3687, %2564
  %3691 = fmul fast float %3688, %2564
  %3692 = fmul fast float %3689, %2564
  %3693 = fadd fast float %3690, %3681
  %3694 = fadd fast float %3691, %3682
  %3695 = fadd fast float %3692, %3683
  %3696 = fsub fast float %2880, %3684
  %3697 = fsub fast float %2881, %3685
  %3698 = fsub fast float %2882, %3686
  %3699 = fmul fast float %3696, %2564
  %3700 = fmul fast float %3697, %2564
  %3701 = fmul fast float %3698, %2564
  %3702 = fadd fast float %3699, %3684
  %3703 = fadd fast float %3700, %3685
  %3704 = fadd fast float %3701, %3686
  br label %3705

; <label>:3705                                    ; preds = %3659, %2879
  %3706 = phi float [ %3702, %3659 ], [ %2880, %2879 ]
  %3707 = phi float [ %3703, %3659 ], [ %2881, %2879 ]
  %3708 = phi float [ %3704, %3659 ], [ %2882, %2879 ]
  %3709 = phi float [ %3693, %3659 ], [ %2883, %2879 ]
  %3710 = phi float [ %3694, %3659 ], [ %2884, %2879 ]
  %3711 = phi float [ %3695, %3659 ], [ %2885, %2879 ]
  %3712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3713 = extractvalue %dx.types.CBufRet.f32 %3712, 0
  %3714 = call float @dx.op.binary.f32(i32 36, float %2496, float %3713)  ; FMin(a,b)
  %3715 = fsub fast float 1.000000e+00, %2515
  %3716 = fmul fast float %3714, %3715
  %3717 = fsub fast float 1.000000e+00, %3716
  %3718 = bitcast float %3717 to i32
  %3719 = sub nsw i32 2129859010, %3718
  %3720 = bitcast i32 %3719 to float
  %3721 = call float @dx.op.binary.f32(i32 36, float %2497, float %3713)  ; FMin(a,b)
  %3722 = fmul fast float %3721, %3715
  %3723 = fsub fast float 1.000000e+00, %3722
  %3724 = bitcast float %3723 to i32
  %3725 = sub nsw i32 2129859010, %3724
  %3726 = bitcast i32 %3725 to float
  %3727 = call float @dx.op.binary.f32(i32 36, float %2498, float %3713)  ; FMin(a,b)
  %3728 = fmul fast float %3727, %3715
  %3729 = fsub fast float 1.000000e+00, %3728
  %3730 = bitcast float %3729 to i32
  %3731 = sub nsw i32 2129859010, %3730
  %3732 = bitcast i32 %3731 to float
  %3733 = fmul fast float %3709, %2515
  %3734 = fmul fast float %3733, %3720
  %3735 = fmul fast float %3710, %2515
  %3736 = fmul fast float %3735, %3726
  %3737 = fmul fast float %3711, %2515
  %3738 = fmul fast float %3737, %3732
  %3739 = call float @dx.op.binary.f32(i32 36, float %2499, float %3713)  ; FMin(a,b)
  %3740 = fmul fast float %3739, %3715
  %3741 = fsub fast float 1.000000e+00, %3740
  %3742 = bitcast float %3741 to i32
  %3743 = sub nsw i32 2129859010, %3742
  %3744 = bitcast i32 %3743 to float
  %3745 = call float @dx.op.binary.f32(i32 36, float %2500, float %3713)  ; FMin(a,b)
  %3746 = fmul fast float %3745, %3715
  %3747 = fsub fast float 1.000000e+00, %3746
  %3748 = bitcast float %3747 to i32
  %3749 = sub nsw i32 2129859010, %3748
  %3750 = bitcast i32 %3749 to float
  %3751 = call float @dx.op.binary.f32(i32 36, float %2504, float %3713)  ; FMin(a,b)
  %3752 = fmul fast float %3751, %3715
  %3753 = fsub fast float 1.000000e+00, %3752
  %3754 = bitcast float %3753 to i32
  %3755 = sub nsw i32 2129859010, %3754
  %3756 = bitcast i32 %3755 to float
  %3757 = fmul fast float %3706, %2515
  %3758 = fmul fast float %3757, %3744
  %3759 = fmul fast float %3707, %2515
  %3760 = fmul fast float %3759, %3750
  %3761 = fmul fast float %3708, %2515
  %3762 = fmul fast float %3761, %3756
  %3763 = call float @dx.op.dot3.f32(i32 55, float %3734, float %3736, float %3738, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3764 = select i1 %178, float 0.000000e+00, float %3734
  %3765 = select i1 %178, float %3763, float %3736
  %3766 = select i1 %178, float 0.000000e+00, float %3738
  %3767 = call float @dx.op.dot3.f32(i32 55, float %3758, float %3760, float %3762, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3768 = select i1 %178, float 0.000000e+00, float %3758
  %3769 = select i1 %178, float %3767, float %3760
  %3770 = select i1 %178, float 0.000000e+00, float %3762
  %3771 = fmul fast float %2506, 9.843750e-01
  %3772 = fmul fast float %2502, 9.843750e-01
  %3773 = fadd fast float %3771, 7.812500e-03
  %3774 = fadd fast float %3772, 7.812500e-03
  %3775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %35, float %3773, float %3774, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3776 = extractvalue %dx.types.ResRet.f32 %3775, 2
  %3777 = extractvalue %dx.types.ResRet.f32 %3775, 3
  %3778 = fmul fast float %3776, %2499
  %3779 = fmul fast float %3776, %2500
  %3780 = fmul fast float %3776, %2504
  %3781 = fadd fast float %3778, %3777
  %3782 = fadd fast float %3779, %3777
  %3783 = fadd fast float %3780, %3777
  %3784 = fcmp fast ogt float %1870, 0.000000e+00
  br i1 %3784, label %3785, label %3811

; <label>:3785                                    ; preds = %3705
  %3786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %35, float %1870, float %2506, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3787 = extractvalue %dx.types.ResRet.f32 %3786, 0
  %3788 = extractvalue %dx.types.ResRet.f32 %3786, 1
  %3789 = extractvalue %dx.types.ResRet.f32 %3786, 2
  %3790 = fadd fast float %3787, -5.000000e-01
  %3791 = fadd fast float %3788, -5.000000e-01
  %3792 = fadd fast float %3789, -5.000000e-01
  %3793 = fsub fast float 1.000000e+00, %2499
  %3794 = fsub fast float 1.000000e+00, %2500
  %3795 = fsub fast float 1.000000e+00, %2504
  %3796 = fmul fast float %2499, 4.000000e+00
  %3797 = fmul fast float %3796, %3793
  %3798 = fmul fast float %3797, %3790
  %3799 = fmul fast float %2500, 4.000000e+00
  %3800 = fmul fast float %3799, %3794
  %3801 = fmul fast float %3800, %3791
  %3802 = fmul fast float %2504, 4.000000e+00
  %3803 = fmul fast float %3802, %3795
  %3804 = fmul fast float %3803, %3792
  %3805 = fadd fast float %3798, %3781
  %3806 = fadd fast float %3801, %3782
  %3807 = fadd fast float %3804, %3783
  %3808 = call float @dx.op.unary.f32(i32 7, float %3805)  ; Saturate(value)
  %3809 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3810 = call float @dx.op.unary.f32(i32 7, float %3807)  ; Saturate(value)
  br label %3811

; <label>:3811                                    ; preds = %3785, %3705
  %3812 = phi float [ %3808, %3785 ], [ %3781, %3705 ]
  %3813 = phi float [ %3809, %3785 ], [ %3782, %3705 ]
  %3814 = phi float [ %3810, %3785 ], [ %3783, %3705 ]
  %3815 = call float @dx.op.binary.f32(i32 35, float %3813, float %3814)  ; FMax(a,b)
  %3816 = call float @dx.op.binary.f32(i32 35, float %3812, float %3815)  ; FMax(a,b)
  %3817 = fsub fast float 1.000000e+00, %3816
  %3818 = fmul fast float %3817, %3764
  %3819 = fmul fast float %3817, %3765
  %3820 = fmul fast float %3817, %3766
  %3821 = call float @dx.op.dot3.f32(i32 55, float %2496, float %2497, float %2498, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3822 = fcmp fast ogt float %3821, 0x3E7FF19E20000000
  %3823 = fdiv fast float 1.000000e+00, %3821
  %3824 = select i1 %3822, float %3823, float 0.000000e+00
  %3825 = fmul fast float %3824, %2496
  %3826 = fmul fast float %3824, %2497
  %3827 = fmul fast float %3824, %2498
  %3828 = fadd fast float %3825, -1.000000e+00
  %3829 = fadd fast float %3826, -1.000000e+00
  %3830 = fadd fast float %3827, -1.000000e+00
  %3831 = fmul fast float %3828, 5.000000e-01
  %3832 = fmul fast float %3829, 5.000000e-01
  %3833 = fmul fast float %3830, 5.000000e-01
  %3834 = fadd fast float %3831, 1.000000e+00
  %3835 = fadd fast float %3832, 1.000000e+00
  %3836 = fadd fast float %3833, 1.000000e+00
  %3837 = fmul fast float %3812, %3768
  %3838 = fmul fast float %3813, %3769
  %3839 = fmul fast float %3814, %3770
  %3840 = fsub fast float 1.000000e+00, %2506
  %3841 = bitcast float %3840 to i32
  %3842 = sitofp i32 %3841 to float
  %3843 = fmul fast float %3842, 5.000000e+00
  %3844 = fadd fast float %3843, 0xC1EFBF8940000000
  %3845 = fptosi float %3844 to i32
  %3846 = bitcast i32 %3845 to float
  %3847 = fmul fast float %3846, %1869
  %3848 = fmul fast float %3764, %3847
  %3849 = fmul fast float %3848, %3817
  %3850 = fmul fast float %3849, %3834
  %3851 = fmul fast float %3765, %3847
  %3852 = fmul fast float %3851, %3817
  %3853 = fmul fast float %3852, %3835
  %3854 = fmul fast float %3766, %3847
  %3855 = fmul fast float %3854, %3817
  %3856 = fmul fast float %3855, %3836
  %3857 = fmul fast float %3818, %1890
  %3858 = fmul fast float %3819, %1890
  %3859 = fmul fast float %3820, %1890
  %3860 = fadd fast float %3837, %1871
  %3861 = fadd fast float %3860, %3850
  %3862 = fmul fast float %3861, %1890
  %3863 = fadd fast float %3838, %1872
  %3864 = fadd fast float %3863, %3853
  %3865 = fmul fast float %3864, %1890
  %3866 = fadd fast float %3839, %1873
  %3867 = fadd fast float %3866, %3856
  %3868 = fmul fast float %3867, %1890
  %3869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3870 = extractvalue %dx.types.CBufRet.f32 %3869, 3
  %3871 = fcmp fast oeq float %3870, 0.000000e+00
  br i1 %3871, label %4099, label %3872

; <label>:3872                                    ; preds = %3811
  %3873 = extractvalue %dx.types.CBufRet.f32 %3869, 0
  %3874 = extractvalue %dx.types.CBufRet.f32 %3869, 1
  %3875 = extractvalue %dx.types.CBufRet.f32 %3869, 2
  %3876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3877 = extractvalue %dx.types.CBufRet.f32 %3876, 0
  %3878 = extractvalue %dx.types.CBufRet.f32 %3876, 1
  %3879 = extractvalue %dx.types.CBufRet.f32 %3876, 2
  %3880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3881 = extractvalue %dx.types.CBufRet.f32 %3880, 0
  %3882 = extractvalue %dx.types.CBufRet.f32 %3880, 1
  %3883 = call float @dx.op.dot3.f32(i32 55, float %3877, float %3878, float %3879, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3884 = select i1 %178, float %3881, float %3877
  %3885 = select i1 %178, float %3883, float %3878
  %3886 = select i1 %178, float %3882, float %3879
  %3887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3888 = extractvalue %dx.types.CBufRet.f32 %3887, 1
  %3889 = fcmp fast une float %3888, 0.000000e+00
  br i1 %3889, label %3890, label %3907

; <label>:3890                                    ; preds = %3872
  %3891 = fptoui float %60 to i32
  %3892 = fptoui float %61 to i32
  %3893 = lshr i32 %3891, 4
  %3894 = lshr i32 %3892, 4
  %3895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3896 = extractvalue %dx.types.CBufRet.f32 %3895, 0
  %3897 = fptoui float %3896 to i32
  %3898 = add i32 %3897, 15
  %3899 = lshr i32 %3898, 4
  %3900 = mul i32 %3899, %3894
  %3901 = add i32 %3900, %3893
  %3902 = shl i32 %3901, 3
  %3903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %3902, i32 undef)  ; BufferLoad(srv,index,wot)
  %3904 = extractvalue %dx.types.ResRet.i32 %3903, 0
  %3905 = and i32 %3904, -268435456
  %3906 = icmp eq i32 %3905, -1342177280
  br i1 %3906, label %3917, label %3907

; <label>:3907                                    ; preds = %3890, %3872
  %3908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3909 = extractvalue %dx.types.CBufRet.f32 %3908, 2
  %3910 = extractvalue %dx.types.CBufRet.f32 %3908, 3
  %3911 = fmul fast float %3909, %60
  %3912 = fmul fast float %3910, %61
  %3913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %36, float %3911, float %3912, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3914 = extractvalue %dx.types.ResRet.f32 %3913, 0
  %3915 = extractvalue %dx.types.ResRet.f32 %3913, 1
  %3916 = extractvalue %dx.types.ResRet.f32 %3913, 2
  br label %3917

; <label>:3917                                    ; preds = %3907, %3890
  %3918 = phi float [ %3914, %3907 ], [ 0.000000e+00, %3890 ]
  %3919 = phi float [ %3915, %3907 ], [ 0.000000e+00, %3890 ]
  %3920 = phi float [ %3916, %3907 ], [ 0.000000e+00, %3890 ]
  %3921 = call float @dx.op.binary.f32(i32 36, float %3919, float %3920)  ; FMin(a,b)
  %3922 = call float @dx.op.binary.f32(i32 36, float %3918, float %3921)  ; FMin(a,b)
  %3923 = fcmp fast ogt float %3922, 0.000000e+00
  br i1 %3923, label %3924, label %4099, !dx.controlflow.hints !78

; <label>:3924                                    ; preds = %3917
  %3925 = fmul fast float %3918, %3884
  %3926 = fmul fast float %3919, %3885
  %3927 = fmul fast float %3920, %3886
  %3928 = fsub fast float %3873, %2492
  %3929 = fsub fast float %3874, %2491
  %3930 = fsub fast float %3875, %2490
  %3931 = call float @dx.op.dot3.f32(i32 55, float %3928, float %3929, float %3930, float %3928, float %3929, float %3930)  ; Dot3(ax,ay,az,bx,by,bz)
  %3932 = call float @dx.op.unary.f32(i32 25, float %3931)  ; Rsqrt(value)
  %3933 = fmul fast float %3932, %3928
  %3934 = fmul fast float %3932, %3929
  %3935 = fmul fast float %3932, %3930
  %3936 = call float @dx.op.dot3.f32(i32 55, float %3873, float %3874, float %3875, float %2493, float %2494, float %2495)  ; Dot3(ax,ay,az,bx,by,bz)
  %3937 = call float @dx.op.dot3.f32(i32 55, float %2489, float %2488, float %2487, float %3933, float %3934, float %3935)  ; Dot3(ax,ay,az,bx,by,bz)
  %3938 = call float @dx.op.unary.f32(i32 7, float %3936)  ; Saturate(value)
  %3939 = fmul fast float %3938, %3938
  %3940 = fmul fast float %3939, %2519
  %3941 = call float @dx.op.unary.f32(i32 7, float %3940)  ; Saturate(value)
  %3942 = fmul fast float %3941, %3938
  %3943 = call float @dx.op.dot3.f32(i32 55, float %2493, float %2494, float %2495, float %3933, float %3934, float %3935)  ; Dot3(ax,ay,az,bx,by,bz)
  %3944 = fmul fast float %3943, %3943
  %3945 = call float @dx.op.unary.f32(i32 6, float %3936)  ; FAbs(value)
  %3946 = fsub fast float 1.000000e+00, %2502
  %3947 = call float @dx.op.binary.f32(i32 35, float %3946, float 0x3F847AE140000000)  ; FMax(a,b)
  %3948 = fmul fast float %3947, %3947
  %3949 = fmul fast float %3948, %3948
  %3950 = fsub fast float 1.000000e+00, %3949
  %3951 = fmul fast float %2506, %2506
  %3952 = fmul fast float %3951, %3950
  %3953 = fadd fast float %3952, %3949
  %3954 = bitcast float %3953 to i32
  %3955 = ashr i32 %3954, 1
  %3956 = add nsw i32 %3955, 532487669
  %3957 = bitcast i32 %3956 to float
  %3958 = fadd fast float %3957, %2506
  %3959 = fmul fast float %3949, %3944
  %3960 = fsub fast float 1.000000e+00, %3944
  %3961 = fadd fast float %3960, %3959
  %3962 = fmul fast float %3945, %3945
  %3963 = fmul fast float %3962, %3950
  %3964 = fadd fast float %3963, %3949
  %3965 = bitcast float %3964 to i32
  %3966 = ashr i32 %3965, 1
  %3967 = add nsw i32 %3966, 532487669
  %3968 = bitcast i32 %3967 to float
  %3969 = fadd fast float %3968, %3945
  %3970 = fmul fast float %3961, %3961
  %3971 = fmul fast float %3970, %3958
  %3972 = fmul fast float %3971, %3969
  %3973 = fdiv fast float 0x3FF0A00000000000, %3972
  %3974 = fmul fast float %3973, %3949
  %3975 = call float @dx.op.unary.f32(i32 6, float %3937)  ; FAbs(value)
  %3976 = fsub fast float 1.000000e+00, %3975
  %3977 = bitcast float %3976 to i32
  %3978 = sitofp i32 %3977 to float
  %3979 = fmul fast float %3978, 5.000000e+00
  %3980 = fadd fast float %3979, 0xC1EFBF8940000000
  %3981 = fptosi float %3980 to i32
  %3982 = bitcast i32 %3981 to float
  %3983 = fsub fast float 1.000000e+00, %2499
  %3984 = fsub fast float 1.000000e+00, %2500
  %3985 = fsub fast float 1.000000e+00, %2504
  %3986 = fmul fast float %3982, %3983
  %3987 = fmul fast float %3982, %3984
  %3988 = fmul fast float %3982, %3985
  %3989 = fadd fast float %3986, %2499
  %3990 = fadd fast float %3987, %2500
  %3991 = fadd fast float %3988, %2504
  br i1 %3784, label %3992, label %4015

; <label>:3992                                    ; preds = %3924
  %3993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %35, float %1870, float %3975, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3994 = extractvalue %dx.types.ResRet.f32 %3993, 0
  %3995 = extractvalue %dx.types.ResRet.f32 %3993, 1
  %3996 = extractvalue %dx.types.ResRet.f32 %3993, 2
  %3997 = fadd fast float %3994, -5.000000e-01
  %3998 = fadd fast float %3995, -5.000000e-01
  %3999 = fadd fast float %3996, -5.000000e-01
  %4000 = fmul fast float %2499, 4.000000e+00
  %4001 = fmul fast float %4000, %3983
  %4002 = fmul fast float %4001, %3997
  %4003 = fmul fast float %2500, 4.000000e+00
  %4004 = fmul fast float %4003, %3984
  %4005 = fmul fast float %4004, %3998
  %4006 = fmul fast float %2504, 4.000000e+00
  %4007 = fmul fast float %4006, %3985
  %4008 = fmul fast float %4007, %3999
  %4009 = fadd fast float %4002, %3989
  %4010 = fadd fast float %4005, %3990
  %4011 = fadd fast float %4008, %3991
  %4012 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  %4013 = call float @dx.op.unary.f32(i32 7, float %4010)  ; Saturate(value)
  %4014 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  br label %4015

; <label>:4015                                    ; preds = %3992, %3924
  %4016 = phi float [ %4012, %3992 ], [ %3989, %3924 ]
  %4017 = phi float [ %4013, %3992 ], [ %3990, %3924 ]
  %4018 = phi float [ %4014, %3992 ], [ %3991, %3924 ]
  %4019 = fmul fast float %3936, 9.843750e-01
  %4020 = fadd fast float %4019, 7.812500e-03
  %4021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %35, float %4020, float %3774, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4022 = extractvalue %dx.types.ResRet.f32 %4021, 2
  %4023 = extractvalue %dx.types.ResRet.f32 %4021, 3
  %4024 = fmul fast float %4022, %2499
  %4025 = fmul fast float %4022, %2500
  %4026 = fmul fast float %4022, %2504
  %4027 = fadd fast float %4024, %4023
  %4028 = fadd fast float %4025, %4023
  %4029 = fadd fast float %4026, %4023
  br i1 %3784, label %4030, label %4053

; <label>:4030                                    ; preds = %4015
  %4031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %35, float %1870, float %3936, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4032 = extractvalue %dx.types.ResRet.f32 %4031, 0
  %4033 = extractvalue %dx.types.ResRet.f32 %4031, 1
  %4034 = extractvalue %dx.types.ResRet.f32 %4031, 2
  %4035 = fadd fast float %4032, -5.000000e-01
  %4036 = fadd fast float %4033, -5.000000e-01
  %4037 = fadd fast float %4034, -5.000000e-01
  %4038 = fmul fast float %2499, 4.000000e+00
  %4039 = fmul fast float %4038, %3983
  %4040 = fmul fast float %4039, %4035
  %4041 = fmul fast float %2500, 4.000000e+00
  %4042 = fmul fast float %4041, %3984
  %4043 = fmul fast float %4042, %4036
  %4044 = fmul fast float %2504, 4.000000e+00
  %4045 = fmul fast float %4044, %3985
  %4046 = fmul fast float %4045, %4037
  %4047 = fadd fast float %4040, %4027
  %4048 = fadd fast float %4043, %4028
  %4049 = fadd fast float %4046, %4029
  %4050 = call float @dx.op.unary.f32(i32 7, float %4047)  ; Saturate(value)
  %4051 = call float @dx.op.unary.f32(i32 7, float %4048)  ; Saturate(value)
  %4052 = call float @dx.op.unary.f32(i32 7, float %4049)  ; Saturate(value)
  br label %4053

; <label>:4053                                    ; preds = %4030, %4015
  %4054 = phi float [ %4050, %4030 ], [ %4027, %4015 ]
  %4055 = phi float [ %4051, %4030 ], [ %4028, %4015 ]
  %4056 = phi float [ %4052, %4030 ], [ %4029, %4015 ]
  %4057 = call float @dx.op.binary.f32(i32 35, float %4055, float %4056)  ; FMax(a,b)
  %4058 = call float @dx.op.binary.f32(i32 35, float %4054, float %4057)  ; FMax(a,b)
  %4059 = fsub fast float 1.000000e+00, %4058
  %4060 = fmul fast float %4016, %3974
  %4061 = fmul fast float %4017, %3974
  %4062 = fmul fast float %4018, %3974
  %4063 = fsub fast float 1.000000e+00, %3937
  %4064 = bitcast float %4063 to i32
  %4065 = sitofp i32 %4064 to float
  %4066 = fmul fast float %4065, 5.000000e+00
  %4067 = fadd fast float %4066, 0xC1EFBF8940000000
  %4068 = fptosi float %4067 to i32
  %4069 = bitcast i32 %4068 to float
  %4070 = fmul fast float %4069, %1869
  %4071 = fmul fast float %4059, %4070
  %4072 = fmul fast float %4071, %3834
  %4073 = fmul fast float %4071, %3835
  %4074 = fmul fast float %4071, %3836
  %4075 = fadd fast float %4072, %4060
  %4076 = fadd fast float %4073, %4061
  %4077 = fadd fast float %4074, %4062
  %4078 = fmul fast float %3942, %3925
  %4079 = fmul fast float %4078, %4059
  %4080 = fmul fast float %3942, %3926
  %4081 = fmul fast float %4080, %4059
  %4082 = fmul fast float %3942, %3927
  %4083 = fmul fast float %4082, %4059
  %4084 = fmul fast float %4078, %4075
  %4085 = fmul fast float %4080, %4076
  %4086 = fmul fast float %4082, %4077
  %4087 = fadd fast float %4079, %3818
  %4088 = fmul fast float %4087, %1890
  %4089 = fadd fast float %4081, %3819
  %4090 = fmul fast float %4089, %1890
  %4091 = fadd fast float %4083, %3820
  %4092 = fmul fast float %4091, %1890
  %4093 = fadd fast float %4084, %3861
  %4094 = fmul fast float %4093, %1890
  %4095 = fadd fast float %4085, %3864
  %4096 = fmul fast float %4095, %1890
  %4097 = fadd fast float %4086, %3867
  %4098 = fmul fast float %4097, %1890
  br label %4099

; <label>:4099                                    ; preds = %4053, %3917, %3811
  %4100 = phi float [ %3862, %3811 ], [ %3862, %3917 ], [ %4094, %4053 ]
  %4101 = phi float [ %3865, %3811 ], [ %3865, %3917 ], [ %4096, %4053 ]
  %4102 = phi float [ %3868, %3811 ], [ %3868, %3917 ], [ %4098, %4053 ]
  %4103 = phi float [ %3857, %3811 ], [ %3857, %3917 ], [ %4088, %4053 ]
  %4104 = phi float [ %3858, %3811 ], [ %3858, %3917 ], [ %4090, %4053 ]
  %4105 = phi float [ %3859, %3811 ], [ %3859, %3917 ], [ %4092, %4053 ]
  %4106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.i32 %4106, 0
  %4108 = icmp eq i32 %4107, 0
  br i1 %4108, label %4543, label %4109

; <label>:4109                                    ; preds = %4099
  %4110 = fptoui float %60 to i32
  %4111 = fptoui float %61 to i32
  %4112 = lshr i32 %4110, 4
  %4113 = lshr i32 %4111, 4
  %4114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4115 = extractvalue %dx.types.CBufRet.i32 %4114, 0
  %4116 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4113, i32 %4115, i32 %4112)  ; UMad(a,b,c)
  %4117 = add nsw i32 %4107, -1
  %4118 = call i32 @dx.op.binary.i32(i32 37, i32 %4117, i32 0)  ; IMax(a,b)
  %4119 = call float @dx.op.binary.f32(i32 35, float %55, float 0.000000e+00)  ; FMax(a,b)
  %4120 = fptoui float %4119 to i32
  %4121 = lshr i32 %4120, 5
  %4122 = call i32 @dx.op.binary.i32(i32 40, i32 %4121, i32 8191)  ; UMin(a,b)
  %4123 = shl i32 %4122, 2
  %4124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4123, i32 undef)  ; BufferLoad(srv,index,wot)
  %4125 = extractvalue %dx.types.ResRet.i32 %4124, 0
  %4126 = lshr i32 %4125, 16
  %4127 = and i32 %4125, 65535
  %4128 = lshr i32 %4125, 21
  %4129 = lshr i32 %4127, 5
  %4130 = call i32 @dx.op.binary.i32(i32 40, i32 %4129, i32 %4118)  ; UMin(a,b)
  %4131 = icmp ugt i32 %4128, %4130
  br i1 %4131, label %4543, label %4132

; <label>:4132                                    ; preds = %4109
  br label %4133

; <label>:4133                                    ; preds = %4533, %4132
  %4134 = phi i32 [ %4540, %4533 ], [ %4128, %4132 ]
  %4135 = phi float [ %4534, %4533 ], [ %4100, %4132 ]
  %4136 = phi float [ %4535, %4533 ], [ %4101, %4132 ]
  %4137 = phi float [ %4536, %4533 ], [ %4102, %4132 ]
  %4138 = phi float [ %4537, %4533 ], [ %4103, %4132 ]
  %4139 = phi float [ %4538, %4533 ], [ %4104, %4132 ]
  %4140 = phi float [ %4539, %4533 ], [ %4105, %4132 ]
  %4141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4142 = extractvalue %dx.types.CBufRet.i32 %4141, 0
  %4143 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4116, i32 %4142, i32 %4134)  ; UMad(a,b,c)
  %4144 = shl i32 %4143, 2
  %4145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4144, i32 undef)  ; BufferLoad(srv,index,wot)
  %4146 = extractvalue %dx.types.ResRet.i32 %4145, 0
  %4147 = shl i32 %4134, 5
  %4148 = sub nsw i32 %4126, %4147
  %4149 = call i32 @dx.op.binary.i32(i32 37, i32 %4148, i32 0)  ; IMax(a,b)
  %4150 = call i32 @dx.op.binary.i32(i32 38, i32 %4149, i32 31)  ; IMin(a,b)
  %4151 = sub nsw i32 1, %4126
  %4152 = add nsw i32 %4151, %4127
  %4153 = call i32 @dx.op.binary.i32(i32 37, i32 %4152, i32 0)  ; IMax(a,b)
  %4154 = call i32 @dx.op.binary.i32(i32 38, i32 %4153, i32 32)  ; IMin(a,b)
  %4155 = and i32 %4154, 31
  %4156 = shl i32 -1, %4155
  %4157 = xor i32 %4156, -1
  %4158 = and i32 %4150, 31
  %4159 = shl i32 %4157, %4158
  %4160 = icmp eq i32 %4154, 32
  %4161 = select i1 %4160, i32 -1, i32 %4159
  %4162 = and i32 %4161, %4146
  %4163 = icmp eq i32 %4162, 0
  br i1 %4163, label %4533, label %4164

; <label>:4164                                    ; preds = %4133
  br label %4165

; <label>:4165                                    ; preds = %4245, %4164
  %4166 = phi i32 [ %4177, %4245 ], [ %4162, %4164 ]
  %4167 = phi float [ %4246, %4245 ], [ %4135, %4164 ]
  %4168 = phi float [ %4247, %4245 ], [ %4136, %4164 ]
  %4169 = phi float [ %4248, %4245 ], [ %4137, %4164 ]
  %4170 = phi float [ %4249, %4245 ], [ %4138, %4164 ]
  %4171 = phi float [ %4250, %4245 ], [ %4139, %4164 ]
  %4172 = phi float [ %4251, %4245 ], [ %4140, %4164 ]
  %4173 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4166)  ; FirstbitLo(value)
  %4174 = add i32 %4173, %4147
  %4175 = and i32 %4173, 31
  %4176 = shl i32 1, %4175
  %4177 = xor i32 %4176, %4166
  %4178 = mul i32 %4174, 112
  %4179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %4178, i32 undef)  ; BufferLoad(srv,index,wot)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = extractvalue %dx.types.ResRet.f32 %4179, 1
  %4182 = extractvalue %dx.types.ResRet.f32 %4179, 2
  %4183 = or i32 %4178, 12
  %4184 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %4183, i32 undef)  ; BufferLoad(srv,index,wot)
  %4185 = extractvalue %dx.types.ResRet.f32 %4184, 0
  %4186 = add i32 %4178, 44
  %4187 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %4186, i32 undef)  ; BufferLoad(srv,index,wot)
  %4188 = extractvalue %dx.types.ResRet.f32 %4187, 0
  %4189 = add i32 %4178, 48
  %4190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %4189, i32 undef)  ; BufferLoad(srv,index,wot)
  %4191 = extractvalue %dx.types.ResRet.f32 %4190, 0
  %4192 = extractvalue %dx.types.ResRet.f32 %4190, 1
  %4193 = extractvalue %dx.types.ResRet.f32 %4190, 2
  %4194 = add i32 %4178, 80
  %4195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %4194, i32 undef)  ; BufferLoad(srv,index,wot)
  %4196 = extractvalue %dx.types.ResRet.f32 %4195, 1
  %4197 = extractvalue %dx.types.ResRet.f32 %4195, 2
  %4198 = call float @dx.op.dot3.f32(i32 55, float %4180, float %4181, float %4182, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4199 = select i1 %178, float %4196, float %4180
  %4200 = select i1 %178, float %4198, float %4181
  %4201 = select i1 %178, float %4197, float %4182
  %4202 = fsub fast float %4191, %107
  %4203 = fsub fast float %4192, %108
  %4204 = fsub fast float %4193, %109
  %4205 = call float @dx.op.dot3.f32(i32 55, float %4202, float %4203, float %4204, float %4202, float %4203, float %4204)  ; Dot3(ax,ay,az,bx,by,bz)
  %4206 = call float @dx.op.unary.f32(i32 24, float %4205)  ; Sqrt(value)
  %4207 = fdiv fast float 1.000000e+00, %4206
  %4208 = fmul fast float %4207, %4202
  %4209 = fmul fast float %4207, %4203
  %4210 = fmul fast float %4207, %4204
  %4211 = fadd fast float %4206, %4185
  %4212 = fdiv fast float 1.000000e+00, %4211
  %4213 = fmul float %4188, %4212
  %4214 = fmul float %4213, %4213
  %4215 = call float @dx.op.unary.f32(i32 7, float %4214)  ; Saturate(value)
  %4216 = and i32 %4176, %4162
  %4217 = icmp eq i32 %4216, 0
  br i1 %4217, label %4240, label %4218, !dx.controlflow.hints !79

; <label>:4218                                    ; preds = %4165
  %4219 = lshr i32 %4110, 5
  %4220 = lshr i32 %4111, 5
  %4221 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %4219, i32 %4220, i32 %4174, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4222 = extractvalue %dx.types.ResRet.i32 %4221, 0
  %4223 = and i32 %4222, 3
  %4224 = icmp eq i32 %4223, 0
  %4225 = select i1 %4224, float 1.000000e+00, float 0.000000e+00
  %4226 = icmp eq i32 %4223, 3
  br i1 %4226, label %4227, label %4240

; <label>:4227                                    ; preds = %4218
  %4228 = lshr i32 %4222, 10
  %4229 = and i32 %4228, 8160
  %4230 = and i32 %4111, 31
  %4231 = or i32 %4229, %4230
  %4232 = lshr i32 %4222, 1
  %4233 = and i32 %4232, 16352
  %4234 = and i32 %4110, 31
  %4235 = or i32 %4233, %4234
  %4236 = lshr i32 %4222, 23
  %4237 = and i32 %4236, 255
  %4238 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %18, i32 0, i32 %4235, i32 %4231, i32 %4237, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4239 = extractvalue %dx.types.ResRet.f32 %4238, 0
  br label %4240

; <label>:4240                                    ; preds = %4227, %4218, %4165
  %4241 = phi float [ %4239, %4227 ], [ %4225, %4218 ], [ 0.000000e+00, %4165 ]
  %4242 = call float @dx.op.binary.f32(i32 36, float %4241, float %4241)  ; FMin(a,b)
  %4243 = call float @dx.op.binary.f32(i32 36, float %4241, float %4242)  ; FMin(a,b)
  %4244 = fcmp fast ogt float %4243, 0.000000e+00
  br i1 %4244, label %4253, label %4245, !dx.controlflow.hints !80

; <label>:4245                                    ; preds = %4489, %4240
  %4246 = phi float [ %4167, %4240 ], [ %4529, %4489 ]
  %4247 = phi float [ %4168, %4240 ], [ %4530, %4489 ]
  %4248 = phi float [ %4169, %4240 ], [ %4531, %4489 ]
  %4249 = phi float [ %4170, %4240 ], [ %4523, %4489 ]
  %4250 = phi float [ %4171, %4240 ], [ %4524, %4489 ]
  %4251 = phi float [ %4172, %4240 ], [ %4525, %4489 ]
  %4252 = icmp eq i32 %4166, %4176
  br i1 %4252, label %4532, label %4165

; <label>:4253                                    ; preds = %4240
  %4254 = fmul fast float %4241, %4199
  %4255 = fmul fast float %4241, %4200
  %4256 = fmul fast float %4241, %4201
  %4257 = fsub fast float %4193, %2292
  %4258 = fcmp fast ogt float %4257, 0.000000e+00
  %4259 = fsub fast float %109, %2292
  %4260 = fcmp fast ogt float %4259, 0.000000e+00
  %4261 = xor i1 %4260, %4258
  %4262 = fsub fast float %2292, %4193
  %4263 = fmul fast float %4262, 2.000000e+00
  %4264 = fadd fast float %4263, %4193
  %4265 = select i1 %4261, float %4193, float %4264
  %4266 = fsub fast float %4265, %109
  %4267 = call float @dx.op.dot3.f32(i32 55, float %4202, float %4203, float %4266, float %4202, float %4203, float %4266)  ; Dot3(ax,ay,az,bx,by,bz)
  %4268 = call float @dx.op.unary.f32(i32 25, float %4267)  ; Rsqrt(value)
  %4269 = fmul fast float %4268, %4202
  %4270 = fmul fast float %4268, %4203
  %4271 = fmul fast float %4268, %4266
  %4272 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2300)  ; Dot3(ax,ay,az,bx,by,bz)
  %4273 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4269, float %4270, float %4271)  ; Dot3(ax,ay,az,bx,by,bz)
  %4274 = fdiv fast float 1.000000e+00, %4273
  %4275 = fmul fast float %4274, %4272
  %4276 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4259, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4277 = fcmp fast ogt float %4276, 0.000000e+00
  %4278 = fcmp fast olt float %4276, 0.000000e+00
  %4279 = zext i1 %4277 to i32
  %4280 = zext i1 %4278 to i32
  %4281 = sub nsw i32 %4279, %4280
  %4282 = sitofp i32 %4281 to float
  %4283 = fsub fast float %4265, %2292
  %4284 = call float @dx.op.dot3.f32(i32 55, float %4202, float %4203, float %4283, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4285 = fcmp fast ogt float %4284, 0.000000e+00
  %4286 = fcmp fast olt float %4284, 0.000000e+00
  %4287 = zext i1 %4285 to i32
  %4288 = zext i1 %4286 to i32
  %4289 = sub nsw i32 %4287, %4288
  %4290 = sitofp i32 %4289 to float
  %4291 = fcmp fast une float %4282, %4290
  br i1 %4291, label %4292, label %4302

; <label>:4292                                    ; preds = %4253
  %4293 = fmul fast float %4275, %4271
  %4294 = fmul fast float %4275, %4270
  %4295 = fmul fast float %4275, %4269
  %4296 = fmul fast float %4295, %4295
  %4297 = fmul fast float %4294, %4294
  %4298 = fadd fast float %4296, %4297
  %4299 = fmul fast float %4293, %4293
  %4300 = fadd fast float %4298, %4299
  %4301 = call float @dx.op.unary.f32(i32 24, float %4300)  ; Sqrt(value)
  br label %4314

; <label>:4302                                    ; preds = %4253
  %4303 = icmp slt i32 %4281, 0
  br i1 %4303, label %4304, label %4314

; <label>:4304                                    ; preds = %4302
  %4305 = fsub fast float %107, %4191
  %4306 = fsub fast float %108, %4192
  %4307 = fsub fast float %109, %4265
  %4308 = fmul fast float %4305, %4305
  %4309 = fmul fast float %4306, %4306
  %4310 = fadd fast float %4308, %4309
  %4311 = fmul fast float %4307, %4307
  %4312 = fadd fast float %4310, %4311
  %4313 = call float @dx.op.unary.f32(i32 24, float %4312)  ; Sqrt(value)
  br label %4314

; <label>:4314                                    ; preds = %4304, %4302, %4292
  %4315 = phi float [ %4301, %4292 ], [ %4313, %4304 ], [ 0.000000e+00, %4302 ]
  %4316 = and i1 %4260, %4258
  %4317 = fsub fast float -0.000000e+00, %4315
  %4318 = select i1 %4316, float -0.000000e+00, float %4317
  %4319 = fmul fast float %2293, 0x3FF7154760000000
  %4320 = fmul fast float %4319, %4318
  %4321 = fmul fast float %2294, 0x3FF7154760000000
  %4322 = fmul fast float %4321, %4318
  %4323 = fmul fast float %2295, 0x3FF7154760000000
  %4324 = fmul fast float %4323, %4318
  %4325 = call float @dx.op.unary.f32(i32 21, float %4320)  ; Exp(value)
  %4326 = call float @dx.op.unary.f32(i32 21, float %4322)  ; Exp(value)
  %4327 = call float @dx.op.unary.f32(i32 21, float %4324)  ; Exp(value)
  %4328 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4329 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  %4330 = call float @dx.op.unary.f32(i32 7, float %4327)  ; Saturate(value)
  %4331 = fmul fast float %4254, %4328
  %4332 = fmul fast float %4255, %4329
  %4333 = fmul fast float %4256, %4330
  %4334 = fsub fast float %4208, %2492
  %4335 = fsub fast float %4209, %2491
  %4336 = fsub fast float %4210, %2490
  %4337 = call float @dx.op.dot3.f32(i32 55, float %4334, float %4335, float %4336, float %4334, float %4335, float %4336)  ; Dot3(ax,ay,az,bx,by,bz)
  %4338 = call float @dx.op.unary.f32(i32 25, float %4337)  ; Rsqrt(value)
  %4339 = fmul fast float %4338, %4334
  %4340 = fmul fast float %4338, %4335
  %4341 = fmul fast float %4338, %4336
  %4342 = call float @dx.op.dot3.f32(i32 55, float %4208, float %4209, float %4210, float %2493, float %2494, float %2495)  ; Dot3(ax,ay,az,bx,by,bz)
  %4343 = call float @dx.op.dot3.f32(i32 55, float %2489, float %2488, float %2487, float %4339, float %4340, float %4341)  ; Dot3(ax,ay,az,bx,by,bz)
  %4344 = call float @dx.op.unary.f32(i32 7, float %4342)  ; Saturate(value)
  %4345 = fmul fast float %4344, %4215
  %4346 = fmul fast float %4344, %4344
  %4347 = fmul fast float %4346, %2519
  %4348 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4349 = fmul fast float %4345, %4348
  %4350 = bitcast float %4205 to i32
  %4351 = ashr i32 %4350, 1
  %4352 = sub nsw i32 1597463007, %4351
  %4353 = bitcast i32 %4352 to float
  %4354 = fmul fast float %4353, %4202
  %4355 = fmul fast float %4353, %4203
  %4356 = fmul fast float %4353, %4204
  %4357 = fsub fast float %4354, %2492
  %4358 = fsub fast float %4355, %2491
  %4359 = fsub fast float %4356, %2490
  %4360 = call float @dx.op.dot3.f32(i32 55, float %4357, float %4358, float %4359, float %4357, float %4358, float %4359)  ; Dot3(ax,ay,az,bx,by,bz)
  %4361 = call float @dx.op.unary.f32(i32 25, float %4360)  ; Rsqrt(value)
  %4362 = fmul fast float %4357, %4361
  %4363 = fmul fast float %4358, %4361
  %4364 = fmul fast float %4359, %4361
  %4365 = call float @dx.op.dot3.f32(i32 55, float %2493, float %2494, float %2495, float %4362, float %4363, float %4364)  ; Dot3(ax,ay,az,bx,by,bz)
  %4366 = fmul fast float %4365, %4365
  %4367 = call float @dx.op.unary.f32(i32 6, float %4342)  ; FAbs(value)
  %4368 = fsub fast float 1.000000e+00, %2502
  %4369 = call float @dx.op.binary.f32(i32 35, float %4368, float 0x3F847AE140000000)  ; FMax(a,b)
  %4370 = fmul fast float %4369, %4369
  %4371 = fmul fast float %4370, %4370
  %4372 = fsub fast float 1.000000e+00, %4371
  %4373 = fmul fast float %2506, %2506
  %4374 = fmul fast float %4373, %4372
  %4375 = fadd fast float %4374, %4371
  %4376 = bitcast float %4375 to i32
  %4377 = ashr i32 %4376, 1
  %4378 = add nsw i32 %4377, 532487669
  %4379 = bitcast i32 %4378 to float
  %4380 = fadd fast float %4379, %2506
  %4381 = fmul fast float %4371, %4366
  %4382 = fsub fast float 1.000000e+00, %4366
  %4383 = fadd fast float %4382, %4381
  %4384 = fmul fast float %4367, %4367
  %4385 = fmul fast float %4384, %4372
  %4386 = fadd fast float %4385, %4371
  %4387 = bitcast float %4386 to i32
  %4388 = ashr i32 %4387, 1
  %4389 = add nsw i32 %4388, 532487669
  %4390 = bitcast i32 %4389 to float
  %4391 = fadd fast float %4390, %4367
  %4392 = fmul fast float %4383, %4383
  %4393 = fmul fast float %4392, %4380
  %4394 = fmul fast float %4393, %4391
  %4395 = fdiv fast float 1.000000e+00, %4394
  %4396 = bitcast float %4371 to i32
  %4397 = sitofp i32 %4396 to float
  %4398 = fmul fast float %4397, 0x3FE7F73180000000
  %4399 = fadd fast float %4398, 0x41AFE27C40000000
  %4400 = fptosi float %4399 to i32
  %4401 = bitcast i32 %4400 to float
  %4402 = fmul fast float %4188, 0x3FD80E9D60000000
  %4403 = fmul fast float %4402, %4353
  %4404 = fadd fast float %4401, %4403
  %4405 = bitcast float %4404 to i32
  %4406 = sub nsw i32 2129859010, %4405
  %4407 = bitcast i32 %4406 to float
  %4408 = fmul fast float %4371, %4395
  %4409 = fmul fast float %4408, %4401
  %4410 = fmul fast float %4409, %4407
  %4411 = call float @dx.op.unary.f32(i32 6, float %4343)  ; FAbs(value)
  %4412 = fsub fast float 1.000000e+00, %4411
  %4413 = bitcast float %4412 to i32
  %4414 = sitofp i32 %4413 to float
  %4415 = fmul fast float %4414, 5.000000e+00
  %4416 = fadd fast float %4415, 0xC1EFBF8940000000
  %4417 = fptosi float %4416 to i32
  %4418 = bitcast i32 %4417 to float
  %4419 = fsub fast float 1.000000e+00, %2499
  %4420 = fsub fast float 1.000000e+00, %2500
  %4421 = fsub fast float 1.000000e+00, %2504
  %4422 = fmul fast float %4418, %4419
  %4423 = fmul fast float %4418, %4420
  %4424 = fmul fast float %4418, %4421
  %4425 = fadd fast float %4422, %2499
  %4426 = fadd fast float %4423, %2500
  %4427 = fadd fast float %4424, %2504
  br i1 %3784, label %4428, label %4451

; <label>:4428                                    ; preds = %4314
  %4429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %35, float %1870, float %4411, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4430 = extractvalue %dx.types.ResRet.f32 %4429, 0
  %4431 = extractvalue %dx.types.ResRet.f32 %4429, 1
  %4432 = extractvalue %dx.types.ResRet.f32 %4429, 2
  %4433 = fadd fast float %4430, -5.000000e-01
  %4434 = fadd fast float %4431, -5.000000e-01
  %4435 = fadd fast float %4432, -5.000000e-01
  %4436 = fmul fast float %2499, 4.000000e+00
  %4437 = fmul fast float %4436, %4419
  %4438 = fmul fast float %4437, %4433
  %4439 = fmul fast float %2500, 4.000000e+00
  %4440 = fmul fast float %4439, %4420
  %4441 = fmul fast float %4440, %4434
  %4442 = fmul fast float %2504, 4.000000e+00
  %4443 = fmul fast float %4442, %4421
  %4444 = fmul fast float %4443, %4435
  %4445 = fadd fast float %4438, %4425
  %4446 = fadd fast float %4441, %4426
  %4447 = fadd fast float %4444, %4427
  %4448 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4449 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4450 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  br label %4451

; <label>:4451                                    ; preds = %4428, %4314
  %4452 = phi float [ %4448, %4428 ], [ %4425, %4314 ]
  %4453 = phi float [ %4449, %4428 ], [ %4426, %4314 ]
  %4454 = phi float [ %4450, %4428 ], [ %4427, %4314 ]
  %4455 = fmul fast float %4342, 9.843750e-01
  %4456 = fadd fast float %4455, 7.812500e-03
  %4457 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %35, float %4456, float %3774, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4458 = extractvalue %dx.types.ResRet.f32 %4457, 2
  %4459 = extractvalue %dx.types.ResRet.f32 %4457, 3
  %4460 = fmul fast float %4458, %2499
  %4461 = fmul fast float %4458, %2500
  %4462 = fmul fast float %4458, %2504
  %4463 = fadd fast float %4460, %4459
  %4464 = fadd fast float %4461, %4459
  %4465 = fadd fast float %4462, %4459
  br i1 %3784, label %4466, label %4489

; <label>:4466                                    ; preds = %4451
  %4467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %35, float %1870, float %4342, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4468 = extractvalue %dx.types.ResRet.f32 %4467, 0
  %4469 = extractvalue %dx.types.ResRet.f32 %4467, 1
  %4470 = extractvalue %dx.types.ResRet.f32 %4467, 2
  %4471 = fadd fast float %4468, -5.000000e-01
  %4472 = fadd fast float %4469, -5.000000e-01
  %4473 = fadd fast float %4470, -5.000000e-01
  %4474 = fmul fast float %2499, 4.000000e+00
  %4475 = fmul fast float %4474, %4419
  %4476 = fmul fast float %4475, %4471
  %4477 = fmul fast float %2500, 4.000000e+00
  %4478 = fmul fast float %4477, %4420
  %4479 = fmul fast float %4478, %4472
  %4480 = fmul fast float %2504, 4.000000e+00
  %4481 = fmul fast float %4480, %4421
  %4482 = fmul fast float %4481, %4473
  %4483 = fadd fast float %4476, %4463
  %4484 = fadd fast float %4479, %4464
  %4485 = fadd fast float %4482, %4465
  %4486 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4487 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4488 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  br label %4489

; <label>:4489                                    ; preds = %4466, %4451
  %4490 = phi float [ %4486, %4466 ], [ %4463, %4451 ]
  %4491 = phi float [ %4487, %4466 ], [ %4464, %4451 ]
  %4492 = phi float [ %4488, %4466 ], [ %4465, %4451 ]
  %4493 = call float @dx.op.binary.f32(i32 35, float %4491, float %4492)  ; FMax(a,b)
  %4494 = call float @dx.op.binary.f32(i32 35, float %4490, float %4493)  ; FMax(a,b)
  %4495 = fsub fast float 1.000000e+00, %4494
  %4496 = fmul fast float %4452, %4410
  %4497 = fmul fast float %4453, %4410
  %4498 = fmul fast float %4454, %4410
  %4499 = fsub fast float 1.000000e+00, %4343
  %4500 = bitcast float %4499 to i32
  %4501 = sitofp i32 %4500 to float
  %4502 = fmul fast float %4501, 5.000000e+00
  %4503 = fadd fast float %4502, 0xC1EFBF8940000000
  %4504 = fptosi float %4503 to i32
  %4505 = bitcast i32 %4504 to float
  %4506 = fmul fast float %4505, %1869
  %4507 = fmul fast float %4495, %4506
  %4508 = fmul fast float %4507, %3834
  %4509 = fmul fast float %4507, %3835
  %4510 = fmul fast float %4507, %3836
  %4511 = fadd fast float %4508, %4496
  %4512 = fadd fast float %4509, %4497
  %4513 = fadd fast float %4510, %4498
  %4514 = fmul fast float %4331, %1890
  %4515 = fmul fast float %4514, %4349
  %4516 = fmul fast float %4515, %4495
  %4517 = fmul fast float %4332, %1890
  %4518 = fmul fast float %4517, %4349
  %4519 = fmul fast float %4518, %4495
  %4520 = fmul fast float %4333, %1890
  %4521 = fmul fast float %4520, %4349
  %4522 = fmul fast float %4521, %4495
  %4523 = fadd fast float %4516, %4170
  %4524 = fadd fast float %4519, %4171
  %4525 = fadd fast float %4522, %4172
  %4526 = fmul fast float %4515, %4511
  %4527 = fmul fast float %4518, %4512
  %4528 = fmul fast float %4521, %4513
  %4529 = fadd fast float %4526, %4167
  %4530 = fadd fast float %4527, %4168
  %4531 = fadd fast float %4528, %4169
  br label %4245

; <label>:4532                                    ; preds = %4245
  br label %4533

; <label>:4533                                    ; preds = %4532, %4133
  %4534 = phi float [ %4135, %4133 ], [ %4246, %4532 ]
  %4535 = phi float [ %4136, %4133 ], [ %4247, %4532 ]
  %4536 = phi float [ %4137, %4133 ], [ %4248, %4532 ]
  %4537 = phi float [ %4138, %4133 ], [ %4249, %4532 ]
  %4538 = phi float [ %4139, %4133 ], [ %4250, %4532 ]
  %4539 = phi float [ %4140, %4133 ], [ %4251, %4532 ]
  %4540 = add i32 %4134, 1
  %4541 = icmp ugt i32 %4540, %4130
  br i1 %4541, label %4542, label %4133

; <label>:4542                                    ; preds = %4533
  br label %4543

; <label>:4543                                    ; preds = %4542, %4109, %4099
  %4544 = phi float [ %4100, %4099 ], [ %4100, %4109 ], [ %4534, %4542 ]
  %4545 = phi float [ %4101, %4099 ], [ %4101, %4109 ], [ %4535, %4542 ]
  %4546 = phi float [ %4102, %4099 ], [ %4102, %4109 ], [ %4536, %4542 ]
  %4547 = phi float [ %4103, %4099 ], [ %4103, %4109 ], [ %4537, %4542 ]
  %4548 = phi float [ %4104, %4099 ], [ %4104, %4109 ], [ %4538, %4542 ]
  %4549 = phi float [ %4105, %4099 ], [ %4105, %4109 ], [ %4539, %4542 ]
  %4550 = call float @dx.op.unary.f32(i32 24, float %2496)  ; Sqrt(value)
  %4551 = call float @dx.op.unary.f32(i32 24, float %2497)  ; Sqrt(value)
  %4552 = call float @dx.op.unary.f32(i32 24, float %2498)  ; Sqrt(value)
  %4553 = fmul fast float %4550, %4547
  %4554 = fmul fast float %4551, %4548
  %4555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4556 = extractvalue %dx.types.CBufRet.f32 %4555, 0
  br i1 %178, label %4557, label %4577

; <label>:4557                                    ; preds = %4543
  %4558 = fadd fast float %4549, %1867
  %4559 = fmul fast float %4558, %1868
  %4560 = fsub fast float 1.000000e+00, %1868
  %4561 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4563 = extractvalue %dx.types.CBufRet.f32 %4562, 3
  %4564 = fmul fast float %4563, %4561
  %4565 = fadd fast float %4564, %4559
  %4566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4567 = extractvalue %dx.types.CBufRet.f32 %4566, 0
  %4568 = fmul fast float %4567, %3840
  %4569 = fsub fast float %4565, %4568
  %4570 = fadd fast float %4554, %4553
  %4571 = fmul fast float %4556, %4570
  %4572 = extractvalue %dx.types.CBufRet.f32 %4562, 1
  %4573 = fsub fast float %4569, %4572
  %4574 = extractvalue %dx.types.CBufRet.f32 %4562, 2
  %4575 = fmul fast float %4573, %4574
  %4576 = call float @dx.op.unary.f32(i32 7, float %4575)  ; Saturate(value)
  br label %4592

; <label>:4577                                    ; preds = %4543
  %4578 = fmul fast float %4552, %4549
  %4579 = fmul fast float %4556, %4553
  %4580 = fmul fast float %4556, %4554
  %4581 = fmul fast float %4578, %4556
  %4582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 228, i32 undef)  ; BufferLoad(srv,index,wot)
  %4583 = extractvalue %dx.types.ResRet.i32 %4582, 0
  %4584 = and i32 %4583, 32
  %4585 = icmp eq i32 %4584, 0
  br i1 %4585, label %4592, label %4586

; <label>:4586                                    ; preds = %4577
  %4587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4588 = extractvalue %dx.types.CBufRet.f32 %4587, 0
  %4589 = fmul fast float %4588, 0x3FE99999A0000000
  %4590 = fadd fast float %4588, %4579
  %4591 = fadd fast float %4589, %4581
  br label %4592

; <label>:4592                                    ; preds = %4586, %4577, %4557
  %4593 = phi float [ %4571, %4557 ], [ %4590, %4586 ], [ %4579, %4577 ]
  %4594 = phi float [ %4576, %4557 ], [ %4580, %4586 ], [ %4580, %4577 ]
  %4595 = phi float [ 1.000000e+00, %4557 ], [ %4591, %4586 ], [ %4581, %4577 ]
  %4596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4597 = extractvalue %dx.types.CBufRet.f32 %4596, 0
  %4598 = fmul fast float %4597, %4545
  %4599 = fmul fast float %4597, %4546
  %4600 = fadd fast float %4545, %4544
  %4601 = select i1 %178, float %4600, float %4544
  %4602 = fmul float %4601, %4597
  %4603 = select i1 %178, float 0.000000e+00, float %4598
  %4604 = select i1 %178, float 0.000000e+00, float %4599
  %4605 = fmul fast float %4593, %4550
  %4606 = fmul fast float %4594, %4551
  %4607 = fmul fast float %4595, %4552
  %4608 = fadd fast float %4602, %4605
  %4609 = fadd fast float %4603, %4606
  %4610 = fadd fast float %4604, %4607
  %4611 = select i1 %178, float %4594, float %4609
  %4612 = select i1 %178, float %4595, float %4610
  %4613 = call float @dx.op.binary.f32(i32 36, float %4608, float 3.225500e+04)  ; FMin(a,b)
  %4614 = call float @dx.op.binary.f32(i32 36, float %4611, float 3.225500e+04)  ; FMin(a,b)
  %4615 = call float @dx.op.binary.f32(i32 36, float %4612, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4613)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4614)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4615)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

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
!dx.viewIdState = !{!52}
!dx.entryPoints = !{!53}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !44, !47}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !17}
!17 = !{i32 0, i32 5}
!18 = !{i32 10, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 23, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 24, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 25, i32 1, i32 7, i32 0, !7}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 66, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !17}
!26 = !{i32 18, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!44 = !{!45, !46}
!45 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!46 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!47 = !{!48, !49, !50, !51}
!48 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!49 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!50 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!51 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!52 = !{[26 x i32] [i32 24, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0]}
!53 = !{void ()* @ps_main, !"ps_main", !54, !4, !70}
!54 = !{!55, !68, null}
!55 = !{!56, !59, !61, !63, !64, !65, !67}
!56 = !{i32 0, !"SV_Position", i8 9, i8 3, !57, i8 4, i32 1, i8 4, i32 0, i8 0, !58}
!57 = !{i32 0}
!58 = !{i32 3, i32 11}
!59 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !57, i8 2, i32 1, i8 4, i32 1, i8 0, !60}
!60 = !{i32 3, i32 15}
!61 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !57, i8 2, i32 1, i8 3, i32 2, i8 0, !62}
!62 = !{i32 3, i32 7}
!63 = !{i32 3, !"NORMAL", i8 9, i8 0, !57, i8 2, i32 1, i8 3, i32 3, i8 0, !62}
!64 = !{i32 4, !"TANGENT", i8 9, i8 0, !57, i8 2, i32 1, i8 4, i32 4, i8 0, !60}
!65 = !{i32 5, !"NORMAL_TRANSFORM", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 5, i8 0, null}
!66 = !{i32 1}
!67 = !{i32 6, !"SV_SampleIndex", i8 5, i8 12, !57, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!68 = !{!69}
!69 = !{i32 0, !"SV_Target", i8 9, i8 16, !57, i8 0, i32 1, i8 4, i32 0, i8 0, !60}
!70 = !{i32 0, i64 24}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}

