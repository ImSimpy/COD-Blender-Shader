;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; TEXCOORDS                0   xy          1     NONE   float   xy  
; LMAPCOORDS               0   xyz         2     NONE   float   xyz 
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; TRANSIENT_INDEX          0   x           5     NONE    uint       
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: c0f6cdab436f3a37c9f8d895ea3eee98
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
; TRANSIENT_INDEX          0        nointerpolation       
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
;
;
; ViewId state:
;
; Number of inputs: 21, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = fmul fast float %56, %50
  %58 = fmul fast float %56, %51
  %59 = fmul fast float %43, %40
  %60 = fmul fast float %44, %39
  %61 = fsub fast float %59, %60
  %62 = fmul fast float %44, %38
  %63 = fmul fast float %42, %40
  %64 = fsub fast float %62, %63
  %65 = fmul fast float %42, %39
  %66 = fmul fast float %43, %38
  %67 = fsub fast float %65, %66
  %68 = fmul fast float %61, %41
  %69 = fmul fast float %64, %41
  %70 = fmul fast float %67, %41
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 3
  %74 = fmul fast float %72, 2.000000e+00
  %75 = fmul fast float %74, %57
  %76 = fmul fast float %73, 2.000000e+00
  %77 = fmul fast float %76, %58
  %78 = fsub fast float 1.000000e+00, %75
  %79 = fsub fast float 1.000000e+00, %77
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %83 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %84 = fmul fast float %78, %81
  %85 = fmul fast float %78, %82
  %86 = fmul fast float %78, %83
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %90 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %91 = fmul fast float %79, %88
  %92 = fmul fast float %79, %89
  %93 = fmul fast float %79, %90
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %97 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %98 = fadd fast float %91, %95
  %99 = fadd fast float %98, %84
  %100 = fadd fast float %92, %96
  %101 = fadd fast float %100, %85
  %102 = fadd fast float %93, %97
  %103 = fadd fast float %102, %86
  %104 = fmul fast float %99, %52
  %105 = fmul fast float %101, %52
  %106 = fmul fast float %103, %52
  %107 = fadd fast float %47, 5.000000e-01
  %108 = fptoui float %107 to i32
  %109 = shl i32 %108, 3
  %110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %109, i32 undef)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.i32 %110, 0
  %112 = or i32 %109, 4
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %112, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = and i32 %111, 8191
  %116 = lshr i32 %111, 13
  %117 = and i32 %116, 8191
  %118 = lshr i32 %111, 26
  %119 = and i32 %114, 65535
  %120 = lshr i32 %114, 16
  %121 = uitofp i32 %119 to float
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %124 = uitofp i32 %120 to float
  %125 = uitofp i32 %115 to float
  %126 = fmul fast float %123, %125
  %127 = uitofp i32 %117 to float
  %128 = fmul fast float %123, %127
  %129 = fmul fast float %123, %45
  %130 = fmul fast float %129, %121
  %131 = fmul fast float %123, %46
  %132 = fmul fast float %131, %124
  %133 = fadd fast float %130, %126
  %134 = fadd fast float %128, %132
  %135 = uitofp i32 %118 to float
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %139 = fmul fast float %137, %57
  %140 = fmul fast float %138, %58
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = and i32 %142, 114688
  %144 = icmp ne i32 %143, 0
  %145 = select i1 %144, float %139, float 0.000000e+00
  %146 = select i1 %144, float %140, float 0.000000e+00
  %147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %145, float %146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %148 = extractvalue %dx.types.ResRet.f32 %147, 0
  %149 = fmul fast float %148, 2.550000e+02
  %150 = fptoui float %149 to i32
  %151 = select i1 %144, i32 %150, i32 0
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.i32 %153, 3
  %155 = and i32 %154, 3
  %156 = icmp ne i32 %155, 0
  %157 = and i32 %154, 4
  %158 = icmp ne i32 %157, 0
  %159 = and i1 %156, %158
  br i1 %159, label %160, label %171

; <label>:160                                     ; preds = %0
  %161 = extractvalue %dx.types.CBufRet.f32 %152, 3
  %162 = fmul fast float %161, %58
  %163 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %164 = fmul fast float %163, %57
  %165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %34, float %164, float %162, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %166 = extractvalue %dx.types.ResRet.f32 %165, 0
  %167 = fsub fast float 1.000000e+00, %166
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = fcmp fast olt float %167, %169
  br label %174

; <label>:171                                     ; preds = %0
  %172 = icmp eq i32 %157, 0
  %173 = and i1 %156, %172
  br label %174

; <label>:174                                     ; preds = %171, %160
  %175 = phi i1 [ %170, %160 ], [ %173, %171 ]
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = shl i32 %177, 4
  %179 = and i32 %178, 32752
  %180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %179)  ; LegacyF16ToF32(value)
  %181 = lshr i32 %177, 7
  %182 = and i32 %181, 32752
  %183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %182)  ; LegacyF16ToF32(value)
  %184 = lshr i32 %177, 22
  %185 = shl nuw nsw i32 %184, 5
  %186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %185)  ; LegacyF16ToF32(value)
  %187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %188 = extractvalue %dx.types.ResRet.i32 %187, 0
  %189 = and i32 %188, 255
  %190 = uitofp i32 %189 to float
  %191 = fmul fast float %190, 0x3F70101020000000
  %192 = lshr i32 %188, 8
  %193 = and i32 %192, 255
  %194 = uitofp i32 %193 to float
  %195 = fmul fast float %194, 0x3F70101020000000
  %196 = lshr i32 %188, 16
  %197 = and i32 %196, 255
  %198 = uitofp i32 %197 to float
  %199 = fmul fast float %198, 0x3F70101020000000
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = or i32 %207, %205
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %653, label %210

; <label>:210                                     ; preds = %174
  %211 = lshr i32 %203, 16
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = fmul fast float %212, 0x3F50624DE0000000
  %214 = and i32 %203, 65535
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = fmul fast float %215, 0x3F50624DE0000000
  %217 = lshr i32 %201, 16
  %218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %217)  ; LegacyF16ToF32(value)
  %219 = and i32 %201, 65535
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = lshr i32 %222, 16
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223)  ; LegacyF16ToF32(value)
  %225 = fmul fast float %224, 0x3F50624DE0000000
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = lshr i32 %227, 16
  %229 = and i32 %228, 255
  %230 = lshr i32 %227, 24
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = and i32 %232, 65535
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %232, 16
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = lshr i32 %238, 22
  %240 = shl nuw nsw i32 %239, 5
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = shl i32 %238, 4
  %243 = and i32 %242, 32752
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %238, 7
  %246 = and i32 %245, 32752
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 3
  %250 = fmul fast float %249, 1.000000e+03
  %251 = fmul fast float %216, %250
  %252 = call float @dx.op.unary.f32(i32 22, float %251)  ; Frc(value)
  %253 = fadd fast float %252, %220
  %254 = fmul fast float %213, %250
  %255 = call float @dx.op.unary.f32(i32 22, float %254)  ; Frc(value)
  %256 = fadd fast float %255, %218
  %257 = fmul fast float %225, %250
  %258 = call float @dx.op.unary.f32(i32 22, float %257)  ; Frc(value)
  %259 = fmul fast float %258, 0x401921FB60000000
  %260 = fadd fast float %259, %241
  %261 = call float @dx.op.unary.f32(i32 13, float %260)  ; Sin(value)
  %262 = call float @dx.op.unary.f32(i32 12, float %260)  ; Cos(value)
  %263 = fsub fast float -0.000000e+00, %261
  %264 = fadd fast float %48, -5.000000e-01
  %265 = fadd fast float %49, -5.000000e-01
  %266 = fmul fast float %234, %264
  %267 = fmul fast float %236, %265
  %268 = fadd fast float %266, 5.000000e-01
  %269 = fadd fast float %267, 5.000000e-01
  %270 = fmul fast float %244, %268
  %271 = fmul fast float %247, %269
  %272 = fmul fast float %262, %270
  %273 = call float @dx.op.tertiary.f32(i32 46, float %263, float %271, float %272)  ; FMad(a,b,c)
  %274 = fmul fast float %261, %270
  %275 = call float @dx.op.tertiary.f32(i32 46, float %262, float %271, float %274)  ; FMad(a,b,c)
  %276 = fadd fast float %253, %273
  %277 = fadd fast float %256, %275
  %278 = icmp ugt i32 %229, 1
  %279 = icmp ugt i32 %227, 33554431
  %280 = or i1 %279, %278
  br i1 %280, label %281, label %305

; <label>:281                                     ; preds = %210
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = lshr i32 %283, 16
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = fmul fast float %249, %285
  %287 = call float @dx.op.unary.f32(i32 22, float %286)  ; Frc(value)
  %288 = mul nuw nsw i32 %229, %230
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %287, %289
  %291 = call float @dx.op.unary.f32(i32 27, float %290)  ; Round_ni(value)
  %292 = fptoui float %291 to i32
  %293 = urem i32 %292, %229
  %294 = udiv i32 %292, %230
  %295 = call float @dx.op.unary.f32(i32 22, float %276)  ; Frc(value)
  %296 = call float @dx.op.unary.f32(i32 22, float %277)  ; Frc(value)
  %297 = uitofp i32 %293 to float
  %298 = uitofp i32 %294 to float
  %299 = fadd fast float %295, %297
  %300 = fadd fast float %296, %298
  %301 = uitofp i32 %229 to float
  %302 = uitofp i32 %230 to float
  %303 = fdiv fast float %299, %301
  %304 = fdiv fast float %300, %302
  br label %305

; <label>:305                                     ; preds = %281, %210
  %306 = phi float [ %303, %281 ], [ %276, %210 ]
  %307 = phi float [ %304, %281 ], [ %277, %210 ]
  %308 = and i32 %205, 16
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %501, label %310

; <label>:310                                     ; preds = %305
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = add i32 %312, 0
  %314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %313, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %315 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %314, %dx.types.Handle %53, float %306, float %307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = extractvalue %dx.types.ResRet.f32 %315, 1
  %318 = extractvalue %dx.types.ResRet.f32 %315, 2
  %319 = extractvalue %dx.types.ResRet.f32 %315, 3
  %320 = and i32 %227, 255
  %321 = uitofp i32 %320 to float
  %322 = lshr i32 %227, 8
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %319, %321
  %326 = fadd fast float %325, %324
  %327 = fmul fast float %326, 0x3F70101000000000
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 512
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %339, label %332

; <label>:332                                     ; preds = %310
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = add i32 %334, 0
  %336 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %335, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %337 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %336, %dx.types.Handle %54, float %306, float %307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  br label %339

; <label>:339                                     ; preds = %332, %310
  %340 = phi float [ %338, %332 ], [ 1.000000e+00, %310 ]
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 33554432
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %448, label %345

; <label>:345                                     ; preds = %339
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 65535
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = lshr i32 %357, 24
  %359 = uitofp i32 %358 to float
  %360 = fmul fast float %359, 0x3F70101020000000
  %361 = and i32 %357, 255
  %362 = uitofp i32 %361 to float
  %363 = fmul fast float %362, 0x3F70101020000000
  %364 = lshr i32 %357, 8
  %365 = and i32 %364, 255
  %366 = uitofp i32 %365 to float
  %367 = fmul fast float %366, 0x3F70101020000000
  %368 = lshr i32 %357, 16
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F70101020000000
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = lshr i32 %373, 24
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = and i32 %373, 255
  %378 = uitofp i32 %377 to float
  %379 = fmul fast float %378, 0x3F70101020000000
  %380 = lshr i32 %373, 8
  %381 = and i32 %380, 255
  %382 = uitofp i32 %381 to float
  %383 = fmul fast float %382, 0x3F70101020000000
  %384 = lshr i32 %373, 16
  %385 = and i32 %384, 255
  %386 = uitofp i32 %385 to float
  %387 = fmul fast float %386, 0x3F70101020000000
  %388 = bitcast float %316 to i32
  %389 = ashr i32 %388, 1
  %390 = sub nsw i32 1597463174, %389
  %391 = bitcast i32 %390 to float
  %392 = fmul fast float %316, 5.000000e-01
  %393 = fmul fast float %391, %391
  %394 = fmul fast float %393, %392
  %395 = fsub fast float 1.500000e+00, %394
  %396 = fmul fast float %391, %316
  %397 = fmul fast float %396, %395
  %398 = bitcast float %317 to i32
  %399 = ashr i32 %398, 1
  %400 = sub nsw i32 1597463174, %399
  %401 = bitcast i32 %400 to float
  %402 = fmul fast float %317, 5.000000e-01
  %403 = fmul fast float %401, %401
  %404 = fmul fast float %403, %402
  %405 = fsub fast float 1.500000e+00, %404
  %406 = fmul fast float %401, %317
  %407 = fmul fast float %406, %405
  %408 = bitcast float %318 to i32
  %409 = ashr i32 %408, 1
  %410 = sub nsw i32 1597463174, %409
  %411 = bitcast i32 %410 to float
  %412 = fmul fast float %318, 5.000000e-01
  %413 = fmul fast float %411, %411
  %414 = fmul fast float %413, %412
  %415 = fsub fast float 1.500000e+00, %414
  %416 = fmul fast float %411, %318
  %417 = fmul fast float %416, %415
  %418 = fsub fast float %397, %379
  %419 = fsub fast float %407, %383
  %420 = fsub fast float %417, %387
  %421 = fmul fast float %418, %349
  %422 = fmul fast float %419, %351
  %423 = fmul fast float %420, %355
  %424 = fadd fast float %421, %363
  %425 = fadd fast float %422, %367
  %426 = fadd fast float %423, %371
  %427 = call float @dx.op.unary.f32(i32 7, float %424)  ; Saturate(value)
  %428 = call float @dx.op.unary.f32(i32 7, float %425)  ; Saturate(value)
  %429 = call float @dx.op.unary.f32(i32 7, float %426)  ; Saturate(value)
  %430 = fmul fast float %427, %427
  %431 = fmul fast float %428, %428
  %432 = fmul fast float %429, %429
  %433 = fsub fast float %430, %316
  %434 = fsub fast float %431, %317
  %435 = fsub fast float %432, %318
  %436 = fmul fast float %433, %340
  %437 = fmul fast float %434, %340
  %438 = fmul fast float %435, %340
  %439 = fadd fast float %436, %316
  %440 = fadd fast float %437, %317
  %441 = fadd fast float %438, %318
  %442 = fadd fast float %360, %327
  %443 = fsub fast float %442, %376
  %444 = call float @dx.op.unary.f32(i32 7, float %443)  ; Saturate(value)
  %445 = fsub fast float %444, %327
  %446 = fmul fast float %445, %340
  %447 = fadd fast float %446, %327
  br label %501

; <label>:448                                     ; preds = %339
  %449 = and i32 %342, 134217728
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %485, label %451

; <label>:451                                     ; preds = %448
  %452 = call float @dx.op.unary.f32(i32 24, float %191)  ; Sqrt(value)
  %453 = call float @dx.op.unary.f32(i32 24, float %195)  ; Sqrt(value)
  %454 = call float @dx.op.unary.f32(i32 24, float %199)  ; Sqrt(value)
  %455 = fadd fast float %452, -5.000000e-01
  %456 = fadd fast float %453, -5.000000e-01
  %457 = fadd fast float %454, -5.000000e-01
  %458 = fmul fast float %455, %340
  %459 = fmul fast float %456, %340
  %460 = fmul fast float %457, %340
  %461 = fadd fast float %458, 5.000000e-01
  %462 = fadd fast float %459, 5.000000e-01
  %463 = fadd fast float %460, 5.000000e-01
  %464 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %465 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %466 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %467 = fmul fast float %461, 2.000000e+00
  %468 = fsub fast float 1.000000e+00, %467
  %469 = fmul fast float %468, %464
  %470 = fadd fast float %469, %467
  %471 = fmul fast float %470, %464
  %472 = fmul fast float %462, 2.000000e+00
  %473 = fsub fast float 1.000000e+00, %472
  %474 = fmul fast float %473, %465
  %475 = fadd fast float %474, %472
  %476 = fmul fast float %475, %465
  %477 = fmul fast float %463, 2.000000e+00
  %478 = fsub fast float 1.000000e+00, %477
  %479 = fmul fast float %478, %466
  %480 = fadd fast float %479, %477
  %481 = fmul fast float %480, %466
  %482 = fmul fast float %471, %471
  %483 = fmul fast float %476, %476
  %484 = fmul fast float %481, %481
  br label %501

; <label>:485                                     ; preds = %448
  %486 = fmul fast float %191, %191
  %487 = fmul fast float %195, %195
  %488 = fmul fast float %199, %199
  %489 = fadd fast float %486, -1.000000e+00
  %490 = fadd fast float %487, -1.000000e+00
  %491 = fadd fast float %488, -1.000000e+00
  %492 = fmul fast float %340, %489
  %493 = fmul fast float %340, %490
  %494 = fmul fast float %340, %491
  %495 = fadd fast float %492, 1.000000e+00
  %496 = fadd fast float %493, 1.000000e+00
  %497 = fadd fast float %494, 1.000000e+00
  %498 = fmul fast float %495, %316
  %499 = fmul fast float %496, %317
  %500 = fmul fast float %497, %318
  br label %501

; <label>:501                                     ; preds = %485, %451, %345, %305
  %502 = phi float [ %447, %345 ], [ %327, %451 ], [ %327, %485 ], [ 0x3FA23C0BE0000000, %305 ]
  %503 = phi float [ %439, %345 ], [ %482, %451 ], [ %498, %485 ], [ 1.000000e+00, %305 ]
  %504 = phi float [ %440, %345 ], [ %483, %451 ], [ %499, %485 ], [ 1.000000e+00, %305 ]
  %505 = phi float [ %441, %345 ], [ %484, %451 ], [ %500, %485 ], [ 1.000000e+00, %305 ]
  %506 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.i32 %506, 1
  %508 = and i32 %507, 1
  %509 = icmp ne i32 %508, 0
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = and i32 %511, 32
  %513 = icmp ne i32 %512, 0
  %514 = and i1 %509, %513
  %515 = select i1 %514, float 1.000000e+00, float %503
  %516 = select i1 %514, float 0x3FD3333340000000, float %504
  %517 = select i1 %514, float 0x3FD3333340000000, float %505
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = and i32 %519, 32
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %591, label %522

; <label>:522                                     ; preds = %501
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = add i32 %526, 0
  %528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %527, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %529 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %528, %dx.types.Handle %53, float %306, float %307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  %531 = extractvalue %dx.types.ResRet.f32 %529, 1
  %532 = extractvalue %dx.types.ResRet.f32 %529, 2
  %533 = extractvalue %dx.types.ResRet.f32 %529, 3
  %534 = and i32 %524, 255
  %535 = uitofp i32 %534 to float
  %536 = lshr i32 %524, 8
  %537 = and i32 %536, 255
  %538 = uitofp i32 %537 to float
  %539 = lshr i32 %524, 16
  %540 = and i32 %539, 255
  %541 = uitofp i32 %540 to float
  %542 = fmul fast float %541, 0x3F70101000000000
  %543 = fmul fast float %530, %535
  %544 = fadd fast float %543, %538
  %545 = fmul fast float %544, 0x3F70101000000000
  %546 = fadd fast float %531, -5.000000e-01
  %547 = fadd fast float %533, -5.000000e-01
  %548 = fmul fast float %546, %542
  %549 = fmul fast float %547, %542
  %550 = fadd fast float %548, 5.000000e-01
  %551 = fadd fast float %549, 5.000000e-01
  %552 = fmul fast float %550, 2.000000e+00
  %553 = fadd fast float %552, -1.000000e+00
  %554 = fmul fast float %551, 2.000000e+00
  %555 = fadd fast float %554, -1.000000e+00
  %556 = fadd fast float %553, %555
  %557 = fmul fast float %556, 5.000000e-01
  %558 = fsub fast float %553, %555
  %559 = fmul fast float %558, 5.000000e-01
  %560 = call float @dx.op.unary.f32(i32 6, float %557)  ; FAbs(value)
  %561 = fsub fast float 1.000000e+00, %560
  %562 = call float @dx.op.unary.f32(i32 6, float %559)  ; FAbs(value)
  %563 = fsub fast float %561, %562
  %564 = call float @dx.op.dot3.f32(i32 55, float %557, float %559, float %563, float %557, float %559, float %563)  ; Dot3(ax,ay,az,bx,by,bz)
  %565 = call float @dx.op.unary.f32(i32 25, float %564)  ; Rsqrt(value)
  %566 = fmul fast float %557, %565
  %567 = fmul fast float %559, %565
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = and i32 %569, 67108864
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %587, label %572

; <label>:572                                     ; preds = %522
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = and i32 %574, 65535
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = and i32 %578, 65535
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = lshr i32 %574, 16
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = fsub fast float %545, %582
  %584 = fmul fast float %583, %576
  %585 = fadd fast float %584, %580
  %586 = call float @dx.op.unary.f32(i32 7, float %585)  ; Saturate(value)
  br label %587

; <label>:587                                     ; preds = %572, %522
  %588 = phi float [ %586, %572 ], [ %545, %522 ]
  %589 = call float @dx.op.dot2.f32(i32 54, float %566, float %567, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %590 = call float @dx.op.dot2.f32(i32 54, float %566, float %567, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %591

; <label>:591                                     ; preds = %587, %501
  %592 = phi float [ %588, %587 ], [ 0x3FD6666660000000, %501 ]
  %593 = phi float [ %589, %587 ], [ 0.000000e+00, %501 ]
  %594 = phi float [ %590, %587 ], [ 0.000000e+00, %501 ]
  %595 = phi float [ %532, %587 ], [ 1.000000e+00, %501 ]
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = lshr i32 %597, 22
  %599 = shl nuw nsw i32 %598, 5
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = and i32 %602, 64
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %637, label %605

; <label>:605                                     ; preds = %591
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = add i32 %607, 0
  %609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = and i32 %611, 131072
  %613 = icmp eq i32 %612, 0
  %614 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %609, %dx.types.Handle %53, float %306, float %307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = extractvalue %dx.types.ResRet.f32 %614, 1
  %617 = extractvalue %dx.types.ResRet.f32 %614, 2
  %618 = fmul fast float %615, %180
  %619 = fmul fast float %616, %183
  %620 = fmul fast float %617, %186
  br i1 %613, label %627, label %621

; <label>:621                                     ; preds = %605
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 0
  %624 = fmul fast float %623, %618
  %625 = fmul fast float %623, %619
  %626 = fmul fast float %623, %620
  br label %627

; <label>:627                                     ; preds = %621, %605
  %628 = phi float [ %624, %621 ], [ %618, %605 ]
  %629 = phi float [ %625, %621 ], [ %619, %605 ]
  %630 = phi float [ %626, %621 ], [ %620, %605 ]
  %631 = fmul fast float %628, %600
  %632 = select i1 %175, float %631, float %628
  %633 = call float @dx.op.dot3.f32(i32 55, float %632, float %629, float %630, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %634 = select i1 %175, float 0.000000e+00, float %628
  %635 = select i1 %175, float %633, float %629
  %636 = select i1 %175, float 0.000000e+00, float %630
  br label %637

; <label>:637                                     ; preds = %627, %591
  %638 = phi float [ %634, %627 ], [ 0.000000e+00, %591 ]
  %639 = phi float [ %635, %627 ], [ 0.000000e+00, %591 ]
  %640 = phi float [ %636, %627 ], [ 0.000000e+00, %591 ]
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = and i32 %642, 255
  %644 = uitofp i32 %643 to float
  %645 = lshr i32 %642, 8
  %646 = and i32 %645, 255
  %647 = uitofp i32 %646 to float
  %648 = call float @dx.op.dot3.f32(i32 55, float %515, float %516, float %517, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %649 = fmul fast float %647, %648
  %650 = fadd fast float %649, %644
  %651 = fmul fast float %650, 0x3F70101020000000
  %652 = call float @dx.op.unary.f32(i32 7, float %651)  ; Saturate(value)
  br label %653

; <label>:653                                     ; preds = %637, %174
  %654 = phi float [ 0.000000e+00, %174 ], [ %593, %637 ]
  %655 = phi float [ 0.000000e+00, %174 ], [ %594, %637 ]
  %656 = phi float [ 0.000000e+00, %174 ], [ %638, %637 ]
  %657 = phi float [ 0.000000e+00, %174 ], [ %639, %637 ]
  %658 = phi float [ 0.000000e+00, %174 ], [ %640, %637 ]
  %659 = phi float [ 0.000000e+00, %174 ], [ %515, %637 ]
  %660 = phi float [ 0.000000e+00, %174 ], [ %516, %637 ]
  %661 = phi float [ 0.000000e+00, %174 ], [ %517, %637 ]
  %662 = phi float [ 0.000000e+00, %174 ], [ %502, %637 ]
  %663 = phi float [ 0.000000e+00, %174 ], [ 1.000000e+00, %637 ]
  %664 = phi float [ 0.000000e+00, %174 ], [ %592, %637 ]
  %665 = phi float [ 0.000000e+00, %174 ], [ %595, %637 ]
  %666 = phi float [ 0.000000e+00, %174 ], [ %652, %637 ]
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %669 = call float @dx.op.dot2.f32(i32 54, float %654, float %655, float %654, float %655)  ; Dot2(ax,ay,bx,by)
  %670 = fmul fast float %669, 0x3FE3333340000000
  %671 = fsub fast float 1.000000e+00, %670
  %672 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %671, float %654, float %655, float %671)  ; Dot3(ax,ay,az,bx,by,bz)
  %673 = call float @dx.op.unary.f32(i32 25, float %672)  ; Rsqrt(value)
  %674 = fmul fast float %673, %654
  %675 = fmul fast float %673, %655
  %676 = fmul fast float %671, %673
  %677 = fmul fast float %676, %42
  %678 = fmul fast float %676, %43
  %679 = fmul fast float %676, %44
  %680 = fmul fast float %674, %38
  %681 = fmul fast float %674, %39
  %682 = fmul fast float %674, %40
  %683 = fadd fast float %677, %680
  %684 = fadd fast float %678, %681
  %685 = fadd fast float %679, %682
  %686 = fmul fast float %675, %68
  %687 = fmul fast float %675, %69
  %688 = fmul fast float %675, %70
  %689 = fadd fast float %683, %686
  %690 = fadd fast float %684, %687
  %691 = fadd fast float %685, %688
  %692 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %689, float %690, float %691)  ; Dot3(ax,ay,az,bx,by,bz)
  %693 = call float @dx.op.unary.f32(i32 25, float %692)  ; Rsqrt(value)
  %694 = fmul fast float %689, %693
  %695 = fmul fast float %690, %693
  %696 = fmul fast float %691, %693
  %697 = call float @dx.op.unary.f32(i32 83, float %104)  ; DerivCoarseX(value)
  %698 = call float @dx.op.unary.f32(i32 83, float %105)  ; DerivCoarseX(value)
  %699 = call float @dx.op.unary.f32(i32 83, float %106)  ; DerivCoarseX(value)
  %700 = call float @dx.op.unary.f32(i32 84, float %104)  ; DerivCoarseY(value)
  %701 = call float @dx.op.unary.f32(i32 84, float %105)  ; DerivCoarseY(value)
  %702 = call float @dx.op.unary.f32(i32 84, float %106)  ; DerivCoarseY(value)
  %703 = fadd fast float %697, %104
  %704 = fadd fast float %698, %105
  %705 = fadd fast float %699, %106
  %706 = fadd fast float %700, %104
  %707 = fadd fast float %701, %105
  %708 = fadd fast float %702, %106
  %709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %710 = extractvalue %dx.types.CBufRet.f32 %709, 0
  %711 = extractvalue %dx.types.CBufRet.f32 %709, 1
  %712 = extractvalue %dx.types.CBufRet.f32 %709, 2
  %713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.f32 %713, 2
  %715 = extractvalue %dx.types.CBufRet.f32 %713, 3
  %716 = fmul fast float %710, %57
  %717 = fmul fast float %716, %714
  %718 = fmul fast float %711, %58
  %719 = fmul fast float %718, %715
  %720 = fptoui float %717 to i32
  %721 = fptoui float %719 to i32
  %722 = fadd fast float %710, -1.000000e+00
  %723 = fadd fast float %711, -1.000000e+00
  %724 = fptoui float %722 to i32
  %725 = fptoui float %723 to i32
  %726 = call i32 @dx.op.binary.i32(i32 40, i32 %720, i32 %724)  ; UMin(a,b)
  %727 = call i32 @dx.op.binary.i32(i32 40, i32 %721, i32 %725)  ; UMin(a,b)
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 2
  %730 = extractvalue %dx.types.CBufRet.f32 %728, 3
  %731 = fmul fast float %729, %52
  %732 = fsub fast float %731, %730
  %733 = fadd fast float %712, -1.000000e+00
  %734 = call float @dx.op.binary.f32(i32 36, float %732, float %733)  ; FMin(a,b)
  %735 = fptoui float %734 to i32
  %736 = fptoui float %710 to i32
  %737 = fptoui float %711 to i32
  %738 = mul i32 %735, %737
  %739 = add i32 %738, %727
  %740 = mul i32 %739, %736
  %741 = add i32 %740, %726
  %742 = shl i32 %741, 2
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 1023
  %746 = lshr i32 %744, 10
  %747 = icmp eq i32 %745, 0
  br i1 %747, label %1173, label %748

; <label>:748                                     ; preds = %653
  %749 = and i32 %744, 1023
  br label %750

; <label>:750                                     ; preds = %876, %748
  %751 = phi float [ %877, %876 ], [ 0.000000e+00, %748 ]
  %752 = phi float [ %878, %876 ], [ %668, %748 ]
  %753 = phi float [ %879, %876 ], [ %666, %748 ]
  %754 = phi float [ %880, %876 ], [ 0.000000e+00, %748 ]
  %755 = phi float [ %881, %876 ], [ 0.000000e+00, %748 ]
  %756 = phi float [ %882, %876 ], [ %656, %748 ]
  %757 = phi float [ %883, %876 ], [ %657, %748 ]
  %758 = phi float [ %884, %876 ], [ %658, %748 ]
  %759 = phi float [ %885, %876 ], [ %694, %748 ]
  %760 = phi float [ %886, %876 ], [ %695, %748 ]
  %761 = phi float [ %887, %876 ], [ %696, %748 ]
  %762 = phi float [ %888, %876 ], [ %665, %748 ]
  %763 = phi float [ %889, %876 ], [ %664, %748 ]
  %764 = phi float [ %890, %876 ], [ 0.000000e+00, %748 ]
  %765 = phi float [ %891, %876 ], [ %662, %748 ]
  %766 = phi float [ %892, %876 ], [ %659, %748 ]
  %767 = phi float [ %893, %876 ], [ %660, %748 ]
  %768 = phi float [ %894, %876 ], [ %661, %748 ]
  %769 = phi i32 [ %826, %876 ], [ 0, %748 ]
  %770 = add nuw nsw i32 %769, %746
  %771 = shl i32 %770, 2
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = shl i32 %773, 8
  %775 = or i32 %774, 48
  %776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %775, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.f32 %776, 0
  %778 = extractvalue %dx.types.ResRet.f32 %776, 1
  %779 = extractvalue %dx.types.ResRet.f32 %776, 2
  %780 = extractvalue %dx.types.ResRet.f32 %776, 3
  %781 = or i32 %774, 64
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = extractvalue %dx.types.ResRet.i32 %782, 1
  %785 = or i32 %774, 80
  %786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.f32 %786, 2
  %788 = extractvalue %dx.types.ResRet.f32 %786, 3
  %789 = or i32 %774, 96
  %790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %789, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.f32 %790, 0
  %792 = extractvalue %dx.types.ResRet.f32 %790, 1
  %793 = extractvalue %dx.types.ResRet.f32 %790, 2
  %794 = extractvalue %dx.types.ResRet.f32 %790, 3
  %795 = or i32 %774, 112
  %796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %795, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.f32 %796, 2
  %798 = or i32 %774, 128
  %799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.f32 %799, 0
  %801 = extractvalue %dx.types.ResRet.f32 %799, 1
  %802 = extractvalue %dx.types.ResRet.f32 %799, 2
  %803 = extractvalue %dx.types.ResRet.f32 %799, 3
  %804 = or i32 %774, 144
  %805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %804, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  %807 = extractvalue %dx.types.ResRet.f32 %805, 1
  %808 = extractvalue %dx.types.ResRet.f32 %805, 2
  %809 = extractvalue %dx.types.ResRet.f32 %805, 3
  %810 = or i32 %774, 160
  %811 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.f32 %811, 0
  %813 = extractvalue %dx.types.ResRet.f32 %811, 1
  %814 = extractvalue %dx.types.ResRet.f32 %811, 2
  %815 = extractvalue %dx.types.ResRet.f32 %811, 3
  %816 = or i32 %774, 192
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = or i32 %774, 208
  %820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = or i32 %774, 248
  %823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.f32 %823, 0
  %825 = extractvalue %dx.types.ResRet.f32 %823, 1
  %826 = add nuw nsw i32 %769, 1
  %827 = bitcast float %780 to i32
  %828 = and i32 %827, 2560
  %829 = icmp eq i32 %828, 0
  %830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 0
  %832 = extractvalue %dx.types.ResRet.f32 %830, 1
  %833 = extractvalue %dx.types.ResRet.f32 %830, 2
  %834 = extractvalue %dx.types.ResRet.f32 %830, 3
  %835 = call float @dx.op.dot4.f32(i32 56, float %831, float %832, float %833, float %834, float %104, float %105, float %106, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %836 = or i32 %774, 16
  %837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.f32 %837, 0
  %839 = extractvalue %dx.types.ResRet.f32 %837, 1
  %840 = extractvalue %dx.types.ResRet.f32 %837, 2
  %841 = extractvalue %dx.types.ResRet.f32 %837, 3
  %842 = call float @dx.op.dot4.f32(i32 56, float %838, float %839, float %840, float %841, float %104, float %105, float %106, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %843 = or i32 %774, 32
  %844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %843, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.f32 %844, 0
  %846 = extractvalue %dx.types.ResRet.f32 %844, 1
  %847 = extractvalue %dx.types.ResRet.f32 %844, 2
  %848 = extractvalue %dx.types.ResRet.f32 %844, 3
  %849 = call float @dx.op.dot4.f32(i32 56, float %845, float %846, float %847, float %848, float %104, float %105, float %106, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %850 = call float @dx.op.unary.f32(i32 27, float %835)  ; Round_ni(value)
  %851 = call float @dx.op.unary.f32(i32 6, float %850)  ; FAbs(value)
  %852 = call float @dx.op.unary.f32(i32 27, float %842)  ; Round_ni(value)
  %853 = call float @dx.op.unary.f32(i32 6, float %852)  ; FAbs(value)
  %854 = call float @dx.op.unary.f32(i32 6, float %849)  ; FAbs(value)
  %855 = call float @dx.op.unary.f32(i32 27, float %854)  ; Round_ni(value)
  %856 = fadd fast float %853, %851
  %857 = fadd fast float %856, %855
  %858 = fcmp fast oeq float %857, 0.000000e+00
  %859 = call float @dx.op.dot4.f32(i32 56, float %831, float %832, float %833, float %834, float %703, float %704, float %705, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %860 = call float @dx.op.dot4.f32(i32 56, float %838, float %839, float %840, float %841, float %703, float %704, float %705, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %861 = call float @dx.op.dot4.f32(i32 56, float %831, float %832, float %833, float %834, float %706, float %707, float %708, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %862 = call float @dx.op.dot4.f32(i32 56, float %838, float %839, float %840, float %841, float %706, float %707, float %708, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %863 = fsub fast float %859, %835
  %864 = fsub fast float %861, %835
  %865 = fsub fast float %860, %842
  %866 = fsub fast float %862, %842
  %867 = call float @dx.op.dot3.f32(i32 55, float %777, float %778, float %779, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 2
  %870 = fadd fast float %869, %867
  %871 = call float @dx.op.unary.f32(i32 7, float %870)  ; Saturate(value)
  %872 = extractvalue %dx.types.CBufRet.f32 %868, 0
  %873 = fcmp fast ogt float %871, %872
  %874 = and i1 %858, %873
  %875 = and i1 %829, %874
  br i1 %875, label %896, label %876

; <label>:876                                     ; preds = %1159, %977, %896, %750
  %877 = phi float [ %751, %896 ], [ %980, %977 ], [ %980, %1159 ], [ %751, %750 ]
  %878 = phi float [ %752, %896 ], [ %752, %977 ], [ %1134, %1159 ], [ %752, %750 ]
  %879 = phi float [ %753, %896 ], [ %753, %977 ], [ %1132, %1159 ], [ %753, %750 ]
  %880 = phi float [ %754, %896 ], [ %754, %977 ], [ %1104, %1159 ], [ %754, %750 ]
  %881 = phi float [ %755, %896 ], [ %755, %977 ], [ %1102, %1159 ], [ %755, %750 ]
  %882 = phi float [ %756, %896 ], [ %756, %977 ], [ %1169, %1159 ], [ %756, %750 ]
  %883 = phi float [ %757, %896 ], [ %757, %977 ], [ %1170, %1159 ], [ %757, %750 ]
  %884 = phi float [ %758, %896 ], [ %758, %977 ], [ %1171, %1159 ], [ %758, %750 ]
  %885 = phi float [ %759, %896 ], [ %759, %977 ], [ %1083, %1159 ], [ %759, %750 ]
  %886 = phi float [ %760, %896 ], [ %760, %977 ], [ %1084, %1159 ], [ %760, %750 ]
  %887 = phi float [ %761, %896 ], [ %761, %977 ], [ %1085, %1159 ], [ %761, %750 ]
  %888 = phi float [ %762, %896 ], [ %762, %977 ], [ %1112, %1159 ], [ %762, %750 ]
  %889 = phi float [ %763, %896 ], [ %763, %977 ], [ %1109, %1159 ], [ %763, %750 ]
  %890 = phi float [ %764, %896 ], [ %764, %977 ], [ %1106, %1159 ], [ %764, %750 ]
  %891 = phi float [ %765, %896 ], [ %765, %977 ], [ %1100, %1159 ], [ %765, %750 ]
  %892 = phi float [ %766, %896 ], [ %766, %977 ], [ %1095, %1159 ], [ %766, %750 ]
  %893 = phi float [ %767, %896 ], [ %767, %977 ], [ %1096, %1159 ], [ %767, %750 ]
  %894 = phi float [ %768, %896 ], [ %768, %977 ], [ %1097, %1159 ], [ %768, %750 ]
  %895 = icmp eq i32 %826, %749
  br i1 %895, label %1172, label %750

; <label>:896                                     ; preds = %750
  %897 = extractvalue %dx.types.ResRet.f32 %796, 3
  %898 = extractvalue %dx.types.ResRet.f32 %796, 1
  %899 = extractvalue %dx.types.ResRet.f32 %796, 0
  %900 = extractvalue %dx.types.ResRet.f32 %786, 1
  %901 = extractvalue %dx.types.ResRet.f32 %786, 0
  %902 = extractvalue %dx.types.ResRet.i32 %782, 3
  %903 = extractvalue %dx.types.ResRet.i32 %782, 2
  %904 = add i32 %902, 0
  %905 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %904, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %907 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %905, %dx.types.Handle %906, float %835, float %842, float undef, float undef, i32 0, i32 0, i32 undef, float %863, float %865, float undef, float %864, float %866, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %908 = extractvalue %dx.types.ResRet.f32 %907, 0
  %909 = fmul fast float %908, %901
  %910 = fadd fast float %909, %900
  %911 = call float @dx.op.unary.f32(i32 7, float %910)  ; Saturate(value)
  %912 = fmul fast float %835, %791
  %913 = call float @dx.op.tertiary.f32(i32 46, float %792, float %842, float %912)  ; FMad(a,b,c)
  %914 = fadd fast float %913, %899
  %915 = fmul fast float %835, %793
  %916 = call float @dx.op.tertiary.f32(i32 46, float %794, float %842, float %915)  ; FMad(a,b,c)
  %917 = fadd fast float %916, %898
  %918 = fmul fast float %863, %791
  %919 = call float @dx.op.tertiary.f32(i32 46, float %792, float %865, float %918)  ; FMad(a,b,c)
  %920 = fmul fast float %863, %793
  %921 = call float @dx.op.tertiary.f32(i32 46, float %794, float %865, float %920)  ; FMad(a,b,c)
  %922 = fmul fast float %864, %791
  %923 = call float @dx.op.tertiary.f32(i32 46, float %792, float %866, float %922)  ; FMad(a,b,c)
  %924 = fmul fast float %864, %793
  %925 = call float @dx.op.tertiary.f32(i32 46, float %794, float %866, float %924)  ; FMad(a,b,c)
  %926 = add i32 %903, 0
  %927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %926, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %928 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %927, %dx.types.Handle %906, float %914, float %917, float undef, float undef, i32 0, i32 0, i32 undef, float %919, float %921, float undef, float %923, float %925, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  %930 = and i32 %827, 1024
  %931 = icmp ne i32 %930, 0
  %932 = fcmp fast ogt float %929, 0x3FE0101020000000
  %933 = uitofp i1 %932 to float
  %934 = select i1 %931, float %933, float %929
  %935 = and i32 %827, 8192
  %936 = icmp ne i32 %935, 0
  %937 = select i1 %936, float %897, float 1.000000e+00
  %938 = fmul fast float %835, 2.000000e+00
  %939 = fadd fast float %938, -1.000000e+00
  %940 = call float @dx.op.unary.f32(i32 6, float %939)  ; FAbs(value)
  %941 = fmul fast float %940, %824
  %942 = fsub fast float %941, %824
  %943 = call float @dx.op.unary.f32(i32 7, float %942)  ; Saturate(value)
  %944 = fmul fast float %842, 2.000000e+00
  %945 = fadd fast float %944, -1.000000e+00
  %946 = call float @dx.op.unary.f32(i32 6, float %945)  ; FAbs(value)
  %947 = fmul fast float %946, %825
  %948 = fsub fast float %947, %825
  %949 = call float @dx.op.unary.f32(i32 7, float %948)  ; Saturate(value)
  %950 = fmul fast float %854, %787
  %951 = fsub fast float %950, %787
  %952 = call float @dx.op.unary.f32(i32 7, float %951)  ; Saturate(value)
  %953 = fmul fast float %911, %937
  %954 = fmul fast float %953, %908
  %955 = fmul fast float %954, %943
  %956 = fmul fast float %955, %934
  %957 = fmul fast float %956, %949
  %958 = fmul fast float %957, %952
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 1
  %961 = extractvalue %dx.types.CBufRet.f32 %959, 0
  %962 = fsub fast float %871, %961
  %963 = fmul fast float %962, %960
  %964 = call float @dx.op.unary.f32(i32 7, float %963)  ; Saturate(value)
  %965 = fmul fast float %958, %788
  %966 = fadd fast float %958, %788
  %967 = fmul fast float %966, %797
  %968 = fsub fast float %967, %797
  %969 = call float @dx.op.unary.f32(i32 7, float %968)  ; Saturate(value)
  %970 = and i32 %827, 128
  %971 = icmp ne i32 %970, 0
  %972 = select i1 %971, float %969, float %965
  %973 = fmul fast float %972, %964
  %974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.f32 %974, 0
  %976 = fcmp fast ugt float %973, %975
  br i1 %976, label %977, label %876

; <label>:977                                     ; preds = %896
  %978 = select i1 %936, float %973, float 0.000000e+00
  %979 = fadd fast float %978, %751
  %980 = call float @dx.op.unary.f32(i32 7, float %979)  ; Saturate(value)
  br i1 %936, label %876, label %981

; <label>:981                                     ; preds = %977
  %982 = and i32 %827, 4
  %983 = and i32 %827, 8
  %984 = add i32 %783, 0
  %985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %984, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %986 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %987 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %985, %dx.types.Handle %986, float %914, float %917, float undef, float undef, i32 0, i32 0, i32 undef, float %919, float %921, float undef, float %923, float %925, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %988 = extractvalue %dx.types.ResRet.f32 %987, 0
  %989 = extractvalue %dx.types.ResRet.f32 %987, 1
  %990 = extractvalue %dx.types.ResRet.f32 %987, 2
  %991 = extractvalue %dx.types.ResRet.f32 %987, 3
  %992 = bitcast float %809 to i32
  %993 = and i32 %992, 255
  %994 = uitofp i32 %993 to float
  %995 = lshr i32 %992, 8
  %996 = and i32 %995, 255
  %997 = uitofp i32 %996 to float
  %998 = fmul fast float %991, %994
  %999 = fadd fast float %998, %997
  %1000 = fmul fast float %999, 0x3F70101000000000
  %1001 = add i32 %784, 0
  %1002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1001, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1003 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1002, %dx.types.Handle %986, float %914, float %917, float undef, float undef, i32 0, i32 0, i32 undef, float %919, float %921, float undef, float %923, float %925, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 0
  %1005 = extractvalue %dx.types.ResRet.f32 %1003, 1
  %1006 = extractvalue %dx.types.ResRet.f32 %1003, 2
  %1007 = extractvalue %dx.types.ResRet.f32 %1003, 3
  %1008 = bitcast float %803 to i32
  %1009 = and i32 %1008, 255
  %1010 = uitofp i32 %1009 to float
  %1011 = lshr i32 %1008, 8
  %1012 = and i32 %1011, 255
  %1013 = uitofp i32 %1012 to float
  %1014 = lshr i32 %1008, 16
  %1015 = and i32 %1014, 255
  %1016 = uitofp i32 %1015 to float
  %1017 = fmul fast float %1016, 0x3F70101000000000
  %1018 = fmul fast float %1004, %1010
  %1019 = fadd fast float %1018, %1013
  %1020 = fmul fast float %1019, 0x3F70101000000000
  %1021 = fadd fast float %1005, -5.000000e-01
  %1022 = fadd fast float %1007, -5.000000e-01
  %1023 = fmul fast float %1021, %1017
  %1024 = fmul fast float %1022, %1017
  %1025 = fadd fast float %1023, 5.000000e-01
  %1026 = fadd fast float %1024, 5.000000e-01
  %1027 = fmul fast float %988, %812
  %1028 = fmul fast float %989, %813
  %1029 = fmul fast float %990, %814
  %1030 = fmul fast float %1025, 2.000000e+00
  %1031 = fadd fast float %1030, -1.000000e+00
  %1032 = fmul fast float %1026, 2.000000e+00
  %1033 = fadd fast float %1032, -1.000000e+00
  %1034 = fadd fast float %1031, %1033
  %1035 = fmul fast float %1034, 5.000000e-01
  %1036 = fsub fast float %1031, %1033
  %1037 = fmul fast float %1036, 5.000000e-01
  %1038 = call float @dx.op.unary.f32(i32 6, float %1035)  ; FAbs(value)
  %1039 = fsub fast float 1.000000e+00, %1038
  %1040 = call float @dx.op.unary.f32(i32 6, float %1037)  ; FAbs(value)
  %1041 = fsub fast float %1039, %1040
  %1042 = call float @dx.op.dot3.f32(i32 55, float %1035, float %1037, float %1041, float %1035, float %1037, float %1041)  ; Dot3(ax,ay,az,bx,by,bz)
  %1043 = call float @dx.op.unary.f32(i32 25, float %1042)  ; Rsqrt(value)
  %1044 = fmul fast float %1035, %1043
  %1045 = fmul fast float %1037, %1043
  %1046 = fmul fast float %1043, %1041
  %1047 = fmul fast float %1046, %777
  %1048 = fmul fast float %1046, %778
  %1049 = fmul fast float %1046, %779
  %1050 = fmul fast float %1044, %800
  %1051 = fmul fast float %1044, %801
  %1052 = fmul fast float %1044, %802
  %1053 = fadd fast float %1050, %1047
  %1054 = fadd fast float %1051, %1048
  %1055 = fadd fast float %1052, %1049
  %1056 = fmul fast float %1045, %806
  %1057 = fmul fast float %1045, %807
  %1058 = fmul fast float %1045, %808
  %1059 = fadd fast float %1053, %1056
  %1060 = fadd fast float %1054, %1057
  %1061 = fadd fast float %1055, %1058
  %1062 = call float @dx.op.dot3.f32(i32 55, float %1059, float %1060, float %1061, float %1059, float %1060, float %1061)  ; Dot3(ax,ay,az,bx,by,bz)
  %1063 = call float @dx.op.unary.f32(i32 25, float %1062)  ; Rsqrt(value)
  %1064 = fmul fast float %1059, %1063
  %1065 = fmul fast float %1060, %1063
  %1066 = fmul fast float %1061, %1063
  %1067 = icmp ne i32 %983, 0
  %1068 = select i1 %1067, float 1.000000e+00, float 0.000000e+00
  %1069 = fmul fast float %973, %1068
  %1070 = and i32 %827, 1
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1072, label %1076

; <label>:1072                                    ; preds = %981
  %1073 = fsub fast float %1064, %759
  %1074 = fsub fast float %1065, %760
  %1075 = fsub fast float %1066, %761
  br label %1076

; <label>:1076                                    ; preds = %1072, %981
  %1077 = phi float [ %1073, %1072 ], [ %1064, %981 ]
  %1078 = phi float [ %1074, %1072 ], [ %1065, %981 ]
  %1079 = phi float [ %1075, %1072 ], [ %1066, %981 ]
  %1080 = fmul float %1079, %1069
  %1081 = fmul float %1078, %1069
  %1082 = fmul float %1077, %1069
  %1083 = fadd fast float %1082, %759
  %1084 = fadd fast float %1081, %760
  %1085 = fadd fast float %1080, %761
  %1086 = icmp ne i32 %982, 0
  %1087 = select i1 %1086, float 1.000000e+00, float 0.000000e+00
  %1088 = fmul fast float %973, %1087
  %1089 = fsub fast float %1027, %766
  %1090 = fsub fast float %1028, %767
  %1091 = fsub fast float %1029, %768
  %1092 = fmul fast float %1089, %1088
  %1093 = fmul fast float %1090, %1088
  %1094 = fmul fast float %1091, %1088
  %1095 = fadd fast float %1092, %766
  %1096 = fadd fast float %1093, %767
  %1097 = fadd fast float %1094, %768
  %1098 = fsub fast float %1000, %765
  %1099 = fmul fast float %1098, %1088
  %1100 = fadd fast float %1099, %765
  %1101 = fmul fast float %1088, %755
  %1102 = fsub fast float %755, %1101
  %1103 = fmul fast float %1088, %754
  %1104 = fsub fast float %754, %1103
  %1105 = fadd fast float %973, %764
  %1106 = call float @dx.op.unary.f32(i32 7, float %1105)  ; Saturate(value)
  %1107 = fsub fast float %1020, %763
  %1108 = fmul fast float %1107, %1069
  %1109 = fadd fast float %1108, %763
  %1110 = fsub fast float %1006, %762
  %1111 = fmul fast float %1110, %1069
  %1112 = fadd fast float %1111, %762
  %1113 = call float @dx.op.dot3.f32(i32 55, float %1027, float %1028, float %1029, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1115 = extractvalue %dx.types.CBufRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.CBufRet.f32 %1114, 1
  %1117 = fmul fast float %1116, %1113
  %1118 = fadd fast float %1117, %1115
  %1119 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  %1120 = bitcast float %815 to i32
  %1121 = and i32 %1120, 65535
  %1122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1121)  ; LegacyF16ToF32(value)
  %1123 = lshr i32 %1120, 16
  %1124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1123)  ; LegacyF16ToF32(value)
  %1125 = fcmp fast oge float %1122, 0.000000e+00
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1128 = select i1 %1125, float %1122, float %1127
  %1129 = fadd fast float %1128, %1124
  %1130 = fsub fast float %1119, %753
  %1131 = fmul fast float %1130, %973
  %1132 = fadd fast float %1131, %753
  %1133 = fmul fast float %1129, %973
  %1134 = call float @dx.op.binary.f32(i32 35, float %752, float %1133)  ; FMax(a,b)
  %1135 = and i32 %827, 16
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1159, label %1137

; <label>:1137                                    ; preds = %1076
  %1138 = bitcast float %821 to i32
  %1139 = add i32 %818, 0
  %1140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1139, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1141 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1140, %dx.types.Handle %986, float %914, float %917, float undef, float undef, i32 0, i32 0, i32 undef, float %919, float %921, float undef, float %923, float %925, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1142 = extractvalue %dx.types.ResRet.f32 %1141, 0
  %1143 = extractvalue %dx.types.ResRet.f32 %1141, 1
  %1144 = extractvalue %dx.types.ResRet.f32 %1141, 2
  %1145 = and i32 %1138, 65535
  %1146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1145)  ; LegacyF16ToF32(value)
  %1147 = fmul fast float %1142, %812
  %1148 = fmul fast float %1143, %813
  %1149 = fmul fast float %1144, %814
  %1150 = and i32 %827, 16384
  %1151 = icmp ne i32 %1150, 0
  %1152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.f32 %1152, 0
  %1154 = select i1 %1151, float %1153, float 1.000000e+00
  %1155 = fmul fast float %1154, %1146
  %1156 = fmul fast float %1147, %1155
  %1157 = fmul fast float %1148, %1155
  %1158 = fmul fast float %1149, %1155
  br label %1159

; <label>:1159                                    ; preds = %1137, %1076
  %1160 = phi float [ %1156, %1137 ], [ 0.000000e+00, %1076 ]
  %1161 = phi float [ %1157, %1137 ], [ 0.000000e+00, %1076 ]
  %1162 = phi float [ %1158, %1137 ], [ 0.000000e+00, %1076 ]
  %1163 = fsub fast float %1160, %756
  %1164 = fsub fast float %1161, %757
  %1165 = fsub fast float %1162, %758
  %1166 = fmul fast float %1163, %973
  %1167 = fmul fast float %1164, %973
  %1168 = fmul fast float %1165, %973
  %1169 = fadd fast float %1166, %756
  %1170 = fadd fast float %1167, %757
  %1171 = fadd fast float %1168, %758
  br label %876

; <label>:1172                                    ; preds = %876
  br label %1173

; <label>:1173                                    ; preds = %1172, %653
  %1174 = phi float [ 0.000000e+00, %653 ], [ %877, %1172 ]
  %1175 = phi float [ %668, %653 ], [ %878, %1172 ]
  %1176 = phi float [ %666, %653 ], [ %879, %1172 ]
  %1177 = phi float [ 0.000000e+00, %653 ], [ %880, %1172 ]
  %1178 = phi float [ 0.000000e+00, %653 ], [ %881, %1172 ]
  %1179 = phi float [ %656, %653 ], [ %882, %1172 ]
  %1180 = phi float [ %657, %653 ], [ %883, %1172 ]
  %1181 = phi float [ %658, %653 ], [ %884, %1172 ]
  %1182 = phi float [ %694, %653 ], [ %885, %1172 ]
  %1183 = phi float [ %695, %653 ], [ %886, %1172 ]
  %1184 = phi float [ %696, %653 ], [ %887, %1172 ]
  %1185 = phi float [ %665, %653 ], [ %888, %1172 ]
  %1186 = phi float [ %664, %653 ], [ %889, %1172 ]
  %1187 = phi float [ 0.000000e+00, %653 ], [ %890, %1172 ]
  %1188 = phi float [ %662, %653 ], [ %891, %1172 ]
  %1189 = phi float [ %659, %653 ], [ %892, %1172 ]
  %1190 = phi float [ %660, %653 ], [ %893, %1172 ]
  %1191 = phi float [ %661, %653 ], [ %894, %1172 ]
  %1192 = call float @dx.op.dot3.f32(i32 55, float %1182, float %1183, float %1184, float %1182, float %1183, float %1184)  ; Dot3(ax,ay,az,bx,by,bz)
  %1193 = call float @dx.op.unary.f32(i32 25, float %1192)  ; Rsqrt(value)
  %1194 = fmul fast float %1193, %1182
  %1195 = fmul fast float %1193, %1183
  %1196 = fmul fast float %1193, %1184
  %1197 = fadd fast float %1187, %663
  %1198 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1199 = call float @dx.op.dot3.f32(i32 55, float %1194, float %1195, float %1196, float %1194, float %1195, float %1196)  ; Dot3(ax,ay,az,bx,by,bz)
  %1200 = call float @dx.op.unary.f32(i32 25, float %1199)  ; Rsqrt(value)
  %1201 = fmul fast float %1200, %1194
  %1202 = fmul fast float %1200, %1195
  %1203 = fmul fast float %1200, %1196
  %1204 = fadd fast float %1188, 0xBFB99999A0000000
  %1205 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  %1206 = fmul fast float %1205, 0x3FF1C71C80000000
  %1207 = call float @dx.op.binary.f32(i32 36, float %1188, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1208 = fsub fast float 1.000000e+00, %1206
  %1209 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  %1210 = fmul fast float %1209, %1189
  %1211 = fmul fast float %1209, %1190
  %1212 = fmul fast float %1209, %1191
  %1213 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  %1214 = call float @dx.op.unary.f32(i32 7, float %1211)  ; Saturate(value)
  %1215 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  %1216 = fmul fast float %1206, %1189
  %1217 = fmul fast float %1206, %1190
  %1218 = fmul fast float %1206, %1191
  %1219 = fadd fast float %1216, %1207
  %1220 = fadd fast float %1217, %1207
  %1221 = fadd fast float %1218, %1207
  %1222 = call float @dx.op.unary.f32(i32 7, float %1219)  ; Saturate(value)
  %1223 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1224 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1225 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  %1226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.i32 %1226, 3
  %1228 = and i32 %1227, 8
  %1229 = icmp ne i32 %1228, 0
  %1230 = call float @dx.op.binary.f32(i32 35, float %1213, float %1189)  ; FMax(a,b)
  %1231 = call float @dx.op.binary.f32(i32 35, float %1214, float %1189)  ; FMax(a,b)
  %1232 = call float @dx.op.binary.f32(i32 35, float %1215, float %1189)  ; FMax(a,b)
  %1233 = call float @dx.op.dot3.f32(i32 55, float %1213, float %1214, float %1215, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1234 = select i1 %175, float %1189, float %1213
  %1235 = select i1 %175, float %1233, float %1214
  %1236 = select i1 %175, float 1.000000e+00, float %1215
  %1237 = select i1 %1229, float %1230, float %1234
  %1238 = select i1 %1229, float %1231, float %1235
  %1239 = select i1 %1229, float %1232, float %1236
  %1240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1240, 0
  %1242 = extractvalue %dx.types.CBufRet.f32 %1240, 1
  %1243 = extractvalue %dx.types.CBufRet.f32 %1240, 2
  %1244 = fadd fast float %1241, %104
  %1245 = fadd fast float %1242, %105
  %1246 = fadd fast float %1243, %106
  %1247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1248 = extractvalue %dx.types.CBufRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.CBufRet.f32 %1247, 1
  %1250 = fsub fast float %1244, %1248
  %1251 = fsub fast float %1245, %1249
  %1252 = fmul fast float %1250, %1250
  %1253 = fmul fast float %1251, %1251
  %1254 = fadd fast float %1252, %1253
  %1255 = call float @dx.op.unary.f32(i32 24, float %1254)  ; Sqrt(value)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1247, 2
  %1257 = fcmp fast olt float %1255, %1256
  br i1 %1257, label %1258, label %1325

; <label>:1258                                    ; preds = %1173
  %1259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1259, 0
  %1261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1262 = extractvalue %dx.types.CBufRet.f32 %1261, 0
  %1263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1264 = extractvalue %dx.types.CBufRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.CBufRet.f32 %1259, 1
  %1266 = extractvalue %dx.types.CBufRet.f32 %1261, 1
  %1267 = extractvalue %dx.types.CBufRet.f32 %1263, 1
  %1268 = extractvalue %dx.types.CBufRet.f32 %1259, 3
  %1269 = extractvalue %dx.types.CBufRet.f32 %1261, 3
  %1270 = extractvalue %dx.types.CBufRet.f32 %1263, 3
  %1271 = fadd fast float %1268, %1244
  %1272 = fadd fast float %1269, %1245
  %1273 = fadd fast float %1270, %1246
  %1274 = fmul fast float %1271, %1260
  %1275 = call float @dx.op.tertiary.f32(i32 46, float %1272, float %1262, float %1274)  ; FMad(a,b,c)
  %1276 = call float @dx.op.tertiary.f32(i32 46, float %1273, float %1264, float %1275)  ; FMad(a,b,c)
  %1277 = fmul fast float %1271, %1265
  %1278 = call float @dx.op.tertiary.f32(i32 46, float %1272, float %1266, float %1277)  ; FMad(a,b,c)
  %1279 = call float @dx.op.tertiary.f32(i32 46, float %1273, float %1267, float %1278)  ; FMad(a,b,c)
  %1280 = fsub fast float %1276, %1268
  %1281 = fsub fast float %1279, %1269
  %1282 = fsub fast float %1280, %1248
  %1283 = fadd fast float %1282, %1256
  %1284 = fsub fast float %1281, %1249
  %1285 = fadd fast float %1284, %1256
  %1286 = extractvalue %dx.types.CBufRet.f32 %1247, 3
  %1287 = fmul fast float %1283, %1286
  %1288 = fmul fast float %1285, %1286
  %1289 = call float @dx.op.unary.f32(i32 7, float %1287)  ; Saturate(value)
  %1290 = call float @dx.op.unary.f32(i32 7, float %1288)  ; Saturate(value)
  %1291 = fsub fast float 1.000000e+00, %1289
  %1292 = fsub fast float 1.000000e+00, %1290
  %1293 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %1291, float %1292, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1294 = extractvalue %dx.types.ResRet.f32 %1293, 0
  %1295 = fcmp fast ugt float %1294, 0.000000e+00
  br i1 %1295, label %1296, label %1599

; <label>:1296                                    ; preds = %1258
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 2
  %1299 = fmul fast float %1298, %1294
  %1300 = extractvalue %dx.types.CBufRet.f32 %1297, 3
  %1301 = fadd fast float %1300, %1299
  %1302 = extractvalue %dx.types.CBufRet.f32 %1263, 2
  %1303 = fadd fast float %1301, %1270
  %1304 = fmul fast float %1276, %1264
  %1305 = call float @dx.op.tertiary.f32(i32 46, float %1279, float %1267, float %1304)  ; FMad(a,b,c)
  %1306 = call float @dx.op.tertiary.f32(i32 46, float %1303, float %1302, float %1305)  ; FMad(a,b,c)
  %1307 = fsub fast float %1306, %1270
  %1308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1309 = extractvalue %dx.types.CBufRet.f32 %1308, 2
  %1310 = fsub fast float %1307, %1309
  %1311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %1291, float %1292, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1312 = extractvalue %dx.types.ResRet.f32 %1311, 0
  %1313 = extractvalue %dx.types.ResRet.f32 %1311, 1
  %1314 = extractvalue %dx.types.ResRet.f32 %1311, 2
  %1315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %1291, float %1292, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1316 = extractvalue %dx.types.ResRet.f32 %1315, 0
  %1317 = extractvalue %dx.types.ResRet.f32 %1315, 1
  %1318 = extractvalue %dx.types.ResRet.f32 %1315, 2
  %1319 = fadd fast float %1316, %1312
  %1320 = fmul fast float %1319, 0x3F847AE140000000
  %1321 = fadd fast float %1317, %1313
  %1322 = fmul fast float %1321, 0x3F847AE140000000
  %1323 = fadd fast float %1318, %1314
  %1324 = fmul fast float %1323, 0x3F847AE140000000
  br label %1599

; <label>:1325                                    ; preds = %1173
  %1326 = and i32 %151, 1
  %1327 = icmp eq i32 %1326, 0
  br i1 %1327, label %1599, label %1328

; <label>:1328                                    ; preds = %1325
  %1329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.f32 %1329, 0
  %1331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1332 = extractvalue %dx.types.CBufRet.f32 %1331, 0
  %1333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1334 = extractvalue %dx.types.CBufRet.f32 %1333, 0
  %1335 = extractvalue %dx.types.CBufRet.f32 %1329, 1
  %1336 = extractvalue %dx.types.CBufRet.f32 %1331, 1
  %1337 = extractvalue %dx.types.CBufRet.f32 %1333, 1
  %1338 = extractvalue %dx.types.CBufRet.f32 %1329, 3
  %1339 = extractvalue %dx.types.CBufRet.f32 %1331, 3
  %1340 = extractvalue %dx.types.CBufRet.f32 %1333, 3
  %1341 = fadd fast float %1338, %1244
  %1342 = fadd fast float %1339, %1245
  %1343 = fadd fast float %1340, %1246
  %1344 = fmul fast float %1341, %1330
  %1345 = call float @dx.op.tertiary.f32(i32 46, float %1342, float %1332, float %1344)  ; FMad(a,b,c)
  %1346 = call float @dx.op.tertiary.f32(i32 46, float %1343, float %1334, float %1345)  ; FMad(a,b,c)
  %1347 = fmul fast float %1341, %1335
  %1348 = call float @dx.op.tertiary.f32(i32 46, float %1342, float %1336, float %1347)  ; FMad(a,b,c)
  %1349 = call float @dx.op.tertiary.f32(i32 46, float %1343, float %1337, float %1348)  ; FMad(a,b,c)
  %1350 = fsub fast float %1346, %1338
  %1351 = fsub fast float %1349, %1339
  %1352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.f32 %1352, 0
  %1354 = extractvalue %dx.types.CBufRet.f32 %1352, 1
  %1355 = extractvalue %dx.types.CBufRet.f32 %1352, 2
  %1356 = extractvalue %dx.types.CBufRet.f32 %1352, 3
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 3
  %1359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1360 = extractvalue %dx.types.CBufRet.i32 %1359, 0
  %1361 = extractvalue %dx.types.CBufRet.i32 %1359, 1
  %1362 = udiv i32 %1361, %1360
  %1363 = fsub fast float %1350, %1353
  %1364 = fsub fast float %1351, %1354
  %1365 = call float @dx.op.binary.f32(i32 35, float %1363, float 0.000000e+00)  ; FMax(a,b)
  %1366 = call float @dx.op.binary.f32(i32 35, float %1364, float 0.000000e+00)  ; FMax(a,b)
  %1367 = call float @dx.op.binary.f32(i32 36, float %1365, float %1355)  ; FMin(a,b)
  %1368 = call float @dx.op.binary.f32(i32 36, float %1366, float %1356)  ; FMin(a,b)
  %1369 = add i32 %1360, -1
  %1370 = add i32 %1362, -1
  %1371 = fmul fast float %1367, %1358
  %1372 = fmul fast float %1368, %1358
  %1373 = fptoui float %1371 to i32
  %1374 = fptoui float %1372 to i32
  %1375 = call i32 @dx.op.binary.i32(i32 40, i32 %1373, i32 %1369)  ; UMin(a,b)
  %1376 = call i32 @dx.op.binary.i32(i32 40, i32 %1374, i32 %1370)  ; UMin(a,b)
  %1377 = mul i32 %1376, %1360
  %1378 = add i32 %1377, %1375
  %1379 = shl i32 %1378, 2
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = icmp eq i32 %1381, -1
  br i1 %1382, label %1599, label %1383

; <label>:1383                                    ; preds = %1328
  %1384 = mul i32 %1381, 148
  %1385 = add i32 %1384, 4
  %1386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1385, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.f32 %1386, 0
  %1388 = add i32 %1384, 8
  %1389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.f32 %1389, 0
  %1391 = add i32 %1384, 36
  %1392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.f32 %1392, 0
  %1394 = add i32 %1384, 60
  %1395 = add i32 %1384, 92
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = add i32 %1384, 116
  %1399 = fsub fast float %1350, %1387
  %1400 = fsub fast float %1351, %1390
  %1401 = fmul fast float %1358, %1399
  %1402 = fmul fast float %1358, %1400
  %1403 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1404 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1405 = fsub fast float 1.000000e+00, %1404
  %1406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1407 = extractvalue %dx.types.CBufRet.f32 %1406, 2
  %1408 = call float @dx.op.unary.f32(i32 83, float %1403)  ; DerivCoarseX(value)
  %1409 = call float @dx.op.unary.f32(i32 83, float %1405)  ; DerivCoarseX(value)
  %1410 = call float @dx.op.unary.f32(i32 84, float %1403)  ; DerivCoarseY(value)
  %1411 = call float @dx.op.unary.f32(i32 84, float %1405)  ; DerivCoarseY(value)
  %1412 = fmul fast float %1408, %1407
  %1413 = fmul fast float %1409, %1407
  %1414 = fmul fast float %1410, %1407
  %1415 = fmul fast float %1411, %1407
  %1416 = call float @dx.op.dot2.f32(i32 54, float %1414, float %1415, float %1414, float %1415)  ; Dot2(ax,ay,bx,by)
  %1417 = call float @dx.op.dot2.f32(i32 54, float %1412, float %1413, float %1412, float %1413)  ; Dot2(ax,ay,bx,by)
  %1418 = call float @dx.op.binary.f32(i32 35, float %1417, float %1416)  ; FMax(a,b)
  %1419 = call float @dx.op.unary.f32(i32 23, float %1418)  ; Log(value)
  %1420 = fmul fast float %1419, 5.000000e-01
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 1
  %1423 = fadd fast float %1422, %1420
  %1424 = call float @dx.op.binary.f32(i32 35, float %1423, float 0.000000e+00)  ; FMax(a,b)
  %1425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1426 = extractvalue %dx.types.CBufRet.f32 %1425, 3
  %1427 = fadd fast float %1426, %1424
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 3
  %1430 = fadd fast float %1427, %1429
  %1431 = add i32 %1397, 0
  %1432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1431, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1433 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1432, i32 0)  ; GetDimensions(handle,mipLevel)
  %1434 = extractvalue %dx.types.Dimensions %1433, 0
  %1435 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1434)  ; FirstbitLo(value)
  %1436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1437 = extractvalue %dx.types.CBufRet.i32 %1436, 1
  %1438 = sub nsw i32 %1437, %1435
  %1439 = sitofp i32 %1438 to float
  %1440 = fsub fast float %1430, %1439
  %1441 = call float @dx.op.binary.f32(i32 35, float %1440, float 0.000000e+00)  ; FMax(a,b)
  %1442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1432, %dx.types.Handle %33, float %1403, float %1405, float %1393, float undef, i32 0, i32 0, i32 undef, float %1441)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1443 = extractvalue %dx.types.ResRet.f32 %1442, 0
  %1444 = fcmp ule float %1443, 0x3FE0101020000000
  %1445 = extractvalue %dx.types.CBufRet.i32 %1436, 0
  %1446 = and i32 %1445, 128
  %1447 = icmp ne i32 %1446, 0
  %1448 = and i1 %1444, %1447
  br i1 %1448, label %1599, label %1449

; <label>:1449                                    ; preds = %1383
  %1450 = add i32 %1384, 20
  %1451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1450, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.f32 %1451, 0
  %1453 = add i32 %1384, 24
  %1454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.f32 %1454, 0
  %1456 = add i32 %1384, 40
  %1457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.f32 %1457, 0
  %1459 = add i32 %1384, 96
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1463 = extractvalue %dx.types.CBufRet.f32 %1462, 2
  %1464 = fmul fast float %1463, %1403
  %1465 = fmul fast float %1463, %1405
  %1466 = extractvalue %dx.types.CBufRet.f32 %1462, 3
  %1467 = fadd fast float %1464, %1466
  %1468 = fadd fast float %1465, %1466
  %1469 = add i32 %1461, 0
  %1470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1469, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1471 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1470, i32 0)  ; GetDimensions(handle,mipLevel)
  %1472 = extractvalue %dx.types.Dimensions %1471, 0
  %1473 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1472)  ; FirstbitLo(value)
  %1474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1475 = extractvalue %dx.types.CBufRet.i32 %1474, 1
  %1476 = sub nsw i32 %1475, %1473
  %1477 = sitofp i32 %1476 to float
  %1478 = fsub fast float %1427, %1477
  %1479 = call float @dx.op.binary.f32(i32 35, float %1478, float 0.000000e+00)  ; FMax(a,b)
  %1480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1470, %dx.types.Handle %33, float %1467, float %1468, float %1458, float undef, i32 0, i32 0, i32 undef, float %1479)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1481 = extractvalue %dx.types.ResRet.f32 %1480, 0
  %1482 = fmul fast float %1481, %1452
  %1483 = fadd fast float %1482, %1455
  %1484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.f32 %1484, 0
  %1486 = extractvalue %dx.types.CBufRet.f32 %1484, 1
  %1487 = extractvalue %dx.types.CBufRet.f32 %1484, 2
  %1488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1489 = extractvalue %dx.types.CBufRet.f32 %1488, 3
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 3
  %1492 = extractvalue %dx.types.CBufRet.f32 %1484, 3
  %1493 = fadd fast float %1489, %1350
  %1494 = fadd fast float %1491, %1351
  %1495 = fadd fast float %1483, %1492
  %1496 = fmul fast float %1493, %1485
  %1497 = call float @dx.op.tertiary.f32(i32 46, float %1494, float %1486, float %1496)  ; FMad(a,b,c)
  %1498 = call float @dx.op.tertiary.f32(i32 46, float %1495, float %1487, float %1497)  ; FMad(a,b,c)
  %1499 = fsub fast float %1498, %1492
  %1500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.f32 %1500, 2
  %1502 = fsub fast float %1499, %1501
  %1503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1504 = extractvalue %dx.types.CBufRet.i32 %1503, 0
  %1505 = call i32 @dx.op.binary.i32(i32 40, i32 %1381, i32 %1504)  ; UMin(a,b)
  %1506 = mul i32 %1505, 36
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = add i32 %1506, 4
  %1510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.f32 %1510, 0
  %1512 = fmul fast float %1511, %1403
  %1513 = fmul fast float %1511, %1405
  %1514 = extractvalue %dx.types.CBufRet.f32 %1510, 1
  %1515 = fadd fast float %1512, %1514
  %1516 = fadd fast float %1513, %1514
  %1517 = icmp eq i32 %1508, 0
  br i1 %1517, label %1586, label %1518

; <label>:1518                                    ; preds = %1449
  br label %1519

; <label>:1519                                    ; preds = %1576, %1518
  %1520 = phi float [ %1577, %1576 ], [ 0.000000e+00, %1518 ]
  %1521 = phi float [ %1578, %1576 ], [ 0.000000e+00, %1518 ]
  %1522 = phi float [ %1579, %1576 ], [ 0.000000e+00, %1518 ]
  %1523 = phi float [ %1580, %1576 ], [ 0.000000e+00, %1518 ]
  %1524 = phi float [ %1581, %1576 ], [ 0.000000e+00, %1518 ]
  %1525 = phi float [ %1582, %1576 ], [ 0.000000e+00, %1518 ]
  %1526 = phi i32 [ %1583, %1576 ], [ 0, %1518 ]
  %1527 = shl i32 %1526, 2
  %1528 = add i32 %1394, %1527
  %1529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1528, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.f32 %1529, 0
  %1531 = add i32 %1398, %1527
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1531, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = add i32 %1533, 0
  %1535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1534, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1536 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1535, i32 0)  ; GetDimensions(handle,mipLevel)
  %1537 = extractvalue %dx.types.Dimensions %1536, 0
  %1538 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1537)  ; FirstbitLo(value)
  %1539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1540 = extractvalue %dx.types.CBufRet.i32 %1539, 1
  %1541 = sub nsw i32 %1540, %1538
  %1542 = sitofp i32 %1541 to float
  %1543 = fsub fast float %1427, %1542
  %1544 = call float @dx.op.binary.f32(i32 35, float %1543, float 0.000000e+00)  ; FMax(a,b)
  %1545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1535, %dx.types.Handle %33, float %1515, float %1516, float %1530, float undef, i32 0, i32 0, i32 undef, float %1544)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1546 = extractvalue %dx.types.ResRet.f32 %1545, 0
  %1547 = fcmp fast ogt float %1546, 0.000000e+00
  br i1 %1547, label %1548, label %1576

; <label>:1548                                    ; preds = %1519
  %1549 = add i32 %1509, %1527
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = and i32 %1551, 32767
  %1553 = mul nuw nsw i32 %1552, 928
  %1554 = add nuw nsw i32 %1553, 48
  %1555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1554, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.f32 %1555, 0
  %1557 = extractvalue %dx.types.ResRet.f32 %1555, 1
  %1558 = extractvalue %dx.types.ResRet.f32 %1555, 2
  %1559 = add nuw nsw i32 %1553, 60
  %1560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1559, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.f32 %1560, 0
  %1562 = extractvalue %dx.types.ResRet.f32 %1560, 1
  %1563 = extractvalue %dx.types.ResRet.f32 %1560, 2
  %1564 = fmul fast float %1556, %1546
  %1565 = fmul fast float %1557, %1546
  %1566 = fmul fast float %1558, %1546
  %1567 = fadd fast float %1564, %1520
  %1568 = fadd fast float %1565, %1521
  %1569 = fadd fast float %1566, %1522
  %1570 = fmul fast float %1561, %1546
  %1571 = fmul fast float %1562, %1546
  %1572 = fmul fast float %1563, %1546
  %1573 = fadd fast float %1570, %1523
  %1574 = fadd fast float %1571, %1524
  %1575 = fadd fast float %1572, %1525
  br label %1576

; <label>:1576                                    ; preds = %1548, %1519
  %1577 = phi float [ %1567, %1548 ], [ %1520, %1519 ]
  %1578 = phi float [ %1568, %1548 ], [ %1521, %1519 ]
  %1579 = phi float [ %1569, %1548 ], [ %1522, %1519 ]
  %1580 = phi float [ %1573, %1548 ], [ %1523, %1519 ]
  %1581 = phi float [ %1574, %1548 ], [ %1524, %1519 ]
  %1582 = phi float [ %1575, %1548 ], [ %1525, %1519 ]
  %1583 = add nuw i32 %1526, 1
  %1584 = icmp eq i32 %1583, %1508
  br i1 %1584, label %1585, label %1519

; <label>:1585                                    ; preds = %1576
  br label %1586

; <label>:1586                                    ; preds = %1585, %1449
  %1587 = phi float [ 0.000000e+00, %1449 ], [ %1577, %1585 ]
  %1588 = phi float [ 0.000000e+00, %1449 ], [ %1578, %1585 ]
  %1589 = phi float [ 0.000000e+00, %1449 ], [ %1579, %1585 ]
  %1590 = phi float [ 0.000000e+00, %1449 ], [ %1580, %1585 ]
  %1591 = phi float [ 0.000000e+00, %1449 ], [ %1581, %1585 ]
  %1592 = phi float [ 0.000000e+00, %1449 ], [ %1582, %1585 ]
  %1593 = fadd fast float %1590, %1587
  %1594 = fmul fast float %1593, 0x3F847AE140000000
  %1595 = fadd fast float %1591, %1588
  %1596 = fmul fast float %1595, 0x3F847AE140000000
  %1597 = fadd fast float %1592, %1589
  %1598 = fmul fast float %1597, 0x3F847AE140000000
  br label %1599

; <label>:1599                                    ; preds = %1586, %1383, %1328, %1325, %1296, %1258
  %1600 = phi float [ %1310, %1296 ], [ -1.310720e+05, %1258 ], [ %1502, %1586 ], [ -1.310720e+05, %1328 ], [ -1.310720e+05, %1383 ], [ -1.310720e+05, %1325 ]
  %1601 = phi float [ %1320, %1296 ], [ 0.000000e+00, %1258 ], [ %1594, %1586 ], [ 0.000000e+00, %1328 ], [ 0.000000e+00, %1383 ], [ 0.000000e+00, %1325 ]
  %1602 = phi float [ %1322, %1296 ], [ 0.000000e+00, %1258 ], [ %1596, %1586 ], [ 0.000000e+00, %1328 ], [ 0.000000e+00, %1383 ], [ 0.000000e+00, %1325 ]
  %1603 = phi float [ %1324, %1296 ], [ 0.000000e+00, %1258 ], [ %1598, %1586 ], [ 0.000000e+00, %1328 ], [ 0.000000e+00, %1383 ], [ 0.000000e+00, %1325 ]
  %1604 = phi i1 [ true, %1296 ], [ false, %1258 ], [ true, %1586 ], [ false, %1328 ], [ false, %1383 ], [ false, %1325 ]
  %1605 = and i32 %151, 3
  %1606 = icmp eq i32 %1605, 1
  %1607 = select i1 %1606, float 1.000000e+00, float 0.000000e+00
  %1608 = fsub fast float %1600, %106
  %1609 = call float @dx.op.unary.f32(i32 7, float %1608)  ; Saturate(value)
  %1610 = select i1 %1604, float %1609, float 1.000000e+00
  %1611 = fmul fast float %1610, %1607
  %1612 = icmp eq i32 %1605, 3
  %1613 = select i1 %1612, float 1.000000e+00, float %1611
  %1614 = call float @dx.op.binary.f32(i32 35, float %1174, float %1613)  ; FMax(a,b)
  %1615 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1616 = fcmp fast une float %1615, 0.000000e+00
  %1617 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %1618 = call float @dx.op.unary.f32(i32 25, float %1617)  ; Rsqrt(value)
  br i1 %1616, label %1626, label %1619

; <label>:1619                                    ; preds = %1599
  %1620 = fmul fast float %1618, %104
  %1621 = fmul fast float %1618, %105
  %1622 = fmul fast float %1618, %106
  %1623 = fsub fast float -0.000000e+00, %1620
  %1624 = fsub fast float -0.000000e+00, %1621
  %1625 = fsub fast float -0.000000e+00, %1622
  br label %1794

; <label>:1626                                    ; preds = %1599
  %1627 = fmul fast float %104, %1618
  %1628 = fsub fast float -0.000000e+00, %1627
  %1629 = fmul fast float %105, %1618
  %1630 = fsub fast float -0.000000e+00, %1629
  %1631 = fmul fast float %106, %1618
  %1632 = fsub fast float -0.000000e+00, %1631
  %1633 = call float @dx.op.dot3.f32(i32 55, float %1628, float %1630, float %1632, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %1634 = fmul fast float %1615, 2.500000e+00
  %1635 = call float @dx.op.unary.f32(i32 7, float %1634)  ; Saturate(value)
  %1636 = fmul fast float %1615, 0x4013FFFFE0000000
  %1637 = fadd fast float %1636, 0xBFFFFFFFE0000000
  %1638 = call float @dx.op.unary.f32(i32 7, float %1637)  ; Saturate(value)
  %1639 = fmul fast float %1615, 0x4004000020000000
  %1640 = fadd fast float %1639, 0xBFF8000040000000
  %1641 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  %1642 = call float @dx.op.unary.f32(i32 7, float %1635)  ; Saturate(value)
  %1643 = fmul fast float %1204, 1.000000e+01
  %1644 = call float @dx.op.unary.f32(i32 7, float %1643)  ; Saturate(value)
  %1645 = fmul fast float %1644, 2.000000e+00
  %1646 = fsub fast float 3.000000e+00, %1645
  %1647 = fmul fast float %1644, %1644
  %1648 = fmul fast float %1647, %1646
  %1649 = fsub fast float 1.000000e+00, %1648
  %1650 = fsub fast float 0x3FE3333340000000, %1225
  %1651 = fmul fast float %1650, 0x400AAAAAA0000000
  %1652 = call float @dx.op.unary.f32(i32 7, float %1651)  ; Saturate(value)
  %1653 = fmul fast float %1649, %1652
  %1654 = fmul fast float %1237, 0x3FEA2B8620000000
  %1655 = fmul fast float %1238, 0x3FEA2B8620000000
  %1656 = fmul fast float %1239, 0x3FEA2B8620000000
  %1657 = fadd fast float %1654, 0x3FC81DFBA0000000
  %1658 = fmul fast float %1657, %1237
  %1659 = fadd fast float %1658, 0x3F910E6020000000
  %1660 = fadd fast float %1655, 0x3FC81DFBA0000000
  %1661 = fmul fast float %1660, %1238
  %1662 = fadd fast float %1661, 0x3F910E6020000000
  %1663 = fadd fast float %1656, 0x3FC81DFBA0000000
  %1664 = fmul fast float %1663, %1239
  %1665 = fadd fast float %1664, 0x3F910E6020000000
  %1666 = call float @dx.op.unary.f32(i32 7, float %1659)  ; Saturate(value)
  %1667 = call float @dx.op.unary.f32(i32 7, float %1662)  ; Saturate(value)
  %1668 = call float @dx.op.unary.f32(i32 7, float %1665)  ; Saturate(value)
  %1669 = fsub fast float %1666, %1237
  %1670 = fsub fast float %1667, %1238
  %1671 = fsub fast float %1668, %1239
  %1672 = fmul fast float %1669, %1642
  %1673 = fmul fast float %1672, %1653
  %1674 = fmul fast float %1670, %1642
  %1675 = fmul fast float %1674, %1653
  %1676 = fmul fast float %1671, %1642
  %1677 = fmul fast float %1676, %1653
  %1678 = fadd fast float %1673, %1237
  %1679 = fadd fast float %1675, %1238
  %1680 = fadd fast float %1677, %1239
  %1681 = fmul fast float %1185, %1185
  %1682 = fmul fast float %1681, %1681
  %1683 = fadd fast float %1638, 1.000000e+00
  %1684 = fsub fast float %1683, %1653
  %1685 = call float @dx.op.unary.f32(i32 7, float %1684)  ; Saturate(value)
  %1686 = call float @dx.op.dot3.f32(i32 55, float %42, float %43, float %44, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1687 = call float @dx.op.unary.f32(i32 7, float %1686)  ; Saturate(value)
  %1688 = fsub fast float 1.000000e+00, %1682
  %1689 = call float @dx.op.binary.f32(i32 36, float %1685, float %1688)  ; FMin(a,b)
  %1690 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1691 = call float @dx.op.binary.f32(i32 35, float %1689, float %1690)  ; FMax(a,b)
  %1692 = fadd fast float %1687, 0xBFE4CCCCC0000000
  %1693 = fmul fast float %1692, 0x4006DB6DA0000000
  %1694 = call float @dx.op.unary.f32(i32 7, float %1693)  ; Saturate(value)
  %1695 = fmul fast float %1694, 2.000000e+00
  %1696 = fsub fast float 3.000000e+00, %1695
  %1697 = bitcast float %1222 to i32
  %1698 = ashr i32 %1697, 1
  %1699 = add nsw i32 %1698, 532487669
  %1700 = bitcast i32 %1699 to float
  %1701 = fsub fast float 1.000000e+00, %1700
  %1702 = bitcast float %1701 to i32
  %1703 = sub nsw i32 2129859010, %1702
  %1704 = bitcast i32 %1703 to float
  %1705 = fmul fast float %1704, 2.000000e+00
  %1706 = bitcast float %1223 to i32
  %1707 = ashr i32 %1706, 1
  %1708 = add nsw i32 %1707, 532487669
  %1709 = bitcast i32 %1708 to float
  %1710 = fsub fast float 1.000000e+00, %1709
  %1711 = bitcast float %1710 to i32
  %1712 = sub nsw i32 2129859010, %1711
  %1713 = bitcast i32 %1712 to float
  %1714 = fmul fast float %1713, 2.000000e+00
  %1715 = bitcast float %1224 to i32
  %1716 = ashr i32 %1715, 1
  %1717 = add nsw i32 %1716, 532487669
  %1718 = bitcast i32 %1717 to float
  %1719 = fsub fast float 1.000000e+00, %1718
  %1720 = bitcast float %1719 to i32
  %1721 = sub nsw i32 2129859010, %1720
  %1722 = bitcast i32 %1721 to float
  %1723 = fmul fast float %1722, 2.000000e+00
  %1724 = fsub fast float 0x4002A9FBE0000000, %1705
  %1725 = fadd fast float %1705, 0x3FD54FDF00000000
  %1726 = bitcast float %1725 to i32
  %1727 = sub nsw i32 2129859010, %1726
  %1728 = bitcast i32 %1727 to float
  %1729 = fmul fast float %1728, %1724
  %1730 = fmul fast float %1729, %1729
  %1731 = fsub fast float 0x4002A9FBE0000000, %1714
  %1732 = fadd fast float %1714, 0x3FD54FDF00000000
  %1733 = bitcast float %1732 to i32
  %1734 = sub nsw i32 2129859010, %1733
  %1735 = bitcast i32 %1734 to float
  %1736 = fmul fast float %1735, %1731
  %1737 = fmul fast float %1736, %1736
  %1738 = fsub fast float 0x4002A9FBE0000000, %1723
  %1739 = fadd fast float %1723, 0x3FD54FDF00000000
  %1740 = bitcast float %1739 to i32
  %1741 = sub nsw i32 2129859010, %1740
  %1742 = bitcast i32 %1741 to float
  %1743 = fmul fast float %1742, %1738
  %1744 = fmul fast float %1743, %1743
  %1745 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1730)  ; FMax(a,b)
  %1746 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1737)  ; FMax(a,b)
  %1747 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1744)  ; FMax(a,b)
  %1748 = fsub fast float 1.000000e+00, %1633
  %1749 = fadd fast float %1748, %1649
  %1750 = call float @dx.op.unary.f32(i32 7, float %1749)  ; Saturate(value)
  %1751 = fsub fast float 1.000000e+00, %1613
  %1752 = fmul fast float %1691, %1751
  %1753 = fmul fast float %1694, %1694
  %1754 = fmul fast float %1753, %1752
  %1755 = fmul fast float %1754, %1696
  %1756 = fmul fast float %1751, 0xBFE99999A0000000
  %1757 = fmul fast float %1756, %1642
  %1758 = fmul fast float %1757, %1653
  %1759 = fadd fast float %1758, 1.000000e+00
  %1760 = fadd fast float %1225, -1.000000e+00
  %1761 = fmul fast float %1759, %1760
  %1762 = fadd fast float %1761, 1.000000e+00
  %1763 = fsub fast float %1745, %1222
  %1764 = fsub fast float %1746, %1223
  %1765 = fsub fast float %1747, %1224
  %1766 = fmul fast float %1755, %1763
  %1767 = fmul fast float %1755, %1764
  %1768 = fmul fast float %1755, %1765
  %1769 = fadd fast float %1766, %1222
  %1770 = fadd fast float %1767, %1223
  %1771 = fadd fast float %1768, %1224
  %1772 = fsub fast float %42, %1201
  %1773 = fsub fast float %43, %1202
  %1774 = fsub fast float %44, %1203
  %1775 = fmul fast float %1755, %1772
  %1776 = fmul fast float %1755, %1773
  %1777 = fmul fast float %1755, %1774
  %1778 = fadd fast float %1775, %1201
  %1779 = fadd fast float %1776, %1202
  %1780 = fadd fast float %1777, %1203
  %1781 = fmul fast float %1755, %1750
  %1782 = call float @dx.op.unary.f32(i32 7, float %1762)  ; Saturate(value)
  %1783 = fsub fast float 1.000000e+00, %1782
  %1784 = fmul fast float %1781, %1783
  %1785 = fadd fast float %1784, %1782
  %1786 = fsub fast float 1.000000e+00, %1185
  %1787 = fmul fast float %1755, %1786
  %1788 = fadd fast float %1787, %1185
  %1789 = call float @dx.op.dot3.f32(i32 55, float %1778, float %1779, float %1780, float %1778, float %1779, float %1780)  ; Dot3(ax,ay,az,bx,by,bz)
  %1790 = call float @dx.op.unary.f32(i32 25, float %1789)  ; Rsqrt(value)
  %1791 = fmul fast float %1778, %1790
  %1792 = fmul fast float %1779, %1790
  %1793 = fmul fast float %1780, %1790
  br label %1794

; <label>:1794                                    ; preds = %1626, %1619
  %1795 = phi float [ %1625, %1619 ], [ %1632, %1626 ]
  %1796 = phi float [ %1624, %1619 ], [ %1630, %1626 ]
  %1797 = phi float [ %1623, %1619 ], [ %1628, %1626 ]
  %1798 = phi float [ %1622, %1619 ], [ %1631, %1626 ]
  %1799 = phi float [ %1621, %1619 ], [ %1629, %1626 ]
  %1800 = phi float [ %1620, %1619 ], [ %1627, %1626 ]
  %1801 = phi float [ %1222, %1619 ], [ %1769, %1626 ]
  %1802 = phi float [ %1223, %1619 ], [ %1770, %1626 ]
  %1803 = phi float [ %1224, %1619 ], [ %1771, %1626 ]
  %1804 = phi float [ %1237, %1619 ], [ %1678, %1626 ]
  %1805 = phi float [ %1238, %1619 ], [ %1679, %1626 ]
  %1806 = phi float [ %1239, %1619 ], [ %1680, %1626 ]
  %1807 = phi float [ %1201, %1619 ], [ %1791, %1626 ]
  %1808 = phi float [ %1202, %1619 ], [ %1792, %1626 ]
  %1809 = phi float [ %1203, %1619 ], [ %1793, %1626 ]
  %1810 = phi float [ %1225, %1619 ], [ %1785, %1626 ]
  %1811 = phi float [ %1185, %1619 ], [ %1788, %1626 ]
  %1812 = select i1 %175, float 0.000000e+00, float %1803
  %1813 = call float @dx.op.dot3.f32(i32 55, float %1807, float %1808, float %1809, float %1797, float %1796, float %1795)  ; Dot3(ax,ay,az,bx,by,bz)
  %1814 = call float @dx.op.unary.f32(i32 7, float %1813)  ; Saturate(value)
  %1815 = call float @dx.op.dot3.f32(i32 55, float %1800, float %1799, float %1798, float %1807, float %1808, float %1809)  ; Dot3(ax,ay,az,bx,by,bz)
  %1816 = fmul fast float %1815, 2.000000e+00
  %1817 = fmul fast float %1816, %1807
  %1818 = fmul fast float %1816, %1808
  %1819 = fmul fast float %1816, %1809
  %1820 = fsub fast float %1800, %1817
  %1821 = fsub fast float %1799, %1818
  %1822 = fsub fast float %1798, %1819
  %1823 = call float @dx.op.binary.f32(i32 36, float %1811, float 1.000000e+00)  ; FMin(a,b)
  %1824 = fsub fast float 1.000000e+00, %1811
  %1825 = bitcast float %1824 to i32
  %1826 = sub nsw i32 2129859010, %1825
  %1827 = bitcast i32 %1826 to float
  %1828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1829 = extractvalue %dx.types.CBufRet.f32 %1828, 0
  %1830 = extractvalue %dx.types.CBufRet.f32 %1828, 1
  %1831 = fadd fast float %1829, %104
  %1832 = fadd fast float %1830, %105
  %1833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1834 = extractvalue %dx.types.CBufRet.i32 %1833, 0
  %1835 = icmp eq i32 %1834, 1
  br i1 %1835, label %1836, label %1871

; <label>:1836                                    ; preds = %1794
  %1837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1838 = extractvalue %dx.types.CBufRet.f32 %1837, 0
  %1839 = extractvalue %dx.types.CBufRet.f32 %1837, 1
  %1840 = fsub fast float %1831, %1838
  %1841 = fsub fast float %1832, %1839
  %1842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1843 = extractvalue %dx.types.CBufRet.f32 %1842, 0
  %1844 = extractvalue %dx.types.CBufRet.f32 %1842, 1
  %1845 = fmul fast float %1840, %1843
  %1846 = fmul fast float %1841, %1844
  %1847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1848 = extractvalue %dx.types.ResRet.f32 %1847, 0
  %1849 = fcmp fast ogt float %1848, 0.000000e+00
  %1850 = extractvalue %dx.types.CBufRet.i32 %1833, 3
  %1851 = icmp ne i32 %1850, 0
  %1852 = and i1 %1849, %1851
  br i1 %1852, label %1853, label %1871, !dx.controlflow.hints !70

; <label>:1853                                    ; preds = %1836
  %1854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.f32 %1854, 0
  %1856 = extractvalue %dx.types.CBufRet.f32 %1854, 1
  %1857 = fsub fast float %1831, %1855
  %1858 = fsub fast float %1832, %1856
  %1859 = fmul fast float %1857, %1857
  %1860 = fmul fast float %1858, %1858
  %1861 = fadd fast float %1859, %1860
  %1862 = uitofp i32 %1850 to float
  %1863 = fmul fast float %1862, %1862
  %1864 = fcmp fast ogt float %1861, %1863
  br i1 %1864, label %1871, label %1865

; <label>:1865                                    ; preds = %1853
  %1866 = call float @dx.op.unary.f32(i32 24, float %1861)  ; Sqrt(value)
  %1867 = fsub fast float %1862, %1866
  %1868 = fmul fast float %1867, 0x3F75555560000000
  %1869 = call float @dx.op.unary.f32(i32 7, float %1868)  ; Saturate(value)
  %1870 = call float @dx.op.binary.f32(i32 36, float %1869, float %1848)  ; FMin(a,b)
  br label %1871

; <label>:1871                                    ; preds = %1865, %1853, %1836, %1794
  %1872 = phi float [ 1.000000e+00, %1794 ], [ %1870, %1865 ], [ %1848, %1836 ], [ 0.000000e+00, %1853 ]
  %1873 = fcmp fast ogt float %1872, 0.000000e+00
  br i1 %1873, label %1874, label %1972, !dx.controlflow.hints !71

; <label>:1874                                    ; preds = %1871
  %1875 = fadd fast float %135, 5.000000e-01
  %1876 = call float @dx.op.unary.f32(i32 27, float %1875)  ; Round_ni(value)
  %1877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %133, float %134, float %1876, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1878 = extractvalue %dx.types.ResRet.f32 %1877, 0
  %1879 = extractvalue %dx.types.ResRet.f32 %1877, 1
  %1880 = extractvalue %dx.types.ResRet.f32 %1877, 2
  %1881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.f32 %1881, 3
  %1883 = fmul fast float %1882, %1878
  %1884 = fmul fast float %1882, %1879
  %1885 = fmul fast float %1882, %1880
  %1886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %133, float %134, float %1876, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1887 = extractvalue %dx.types.ResRet.f32 %1886, 0
  %1888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %133, float %134, float %1876, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1889 = extractvalue %dx.types.ResRet.f32 %1888, 0
  %1890 = extractvalue %dx.types.ResRet.f32 %1888, 1
  %1891 = fmul fast float %1889, 2.000000e+00
  %1892 = fmul fast float %1890, 2.000000e+00
  %1893 = fadd fast float %1891, -1.000000e+00
  %1894 = fadd fast float %1892, -1.000000e+00
  %1895 = fadd fast float %1893, %1894
  %1896 = fmul fast float %1895, 5.000000e-01
  %1897 = fsub fast float %1893, %1894
  %1898 = fmul fast float %1897, 5.000000e-01
  %1899 = call float @dx.op.unary.f32(i32 6, float %1896)  ; FAbs(value)
  %1900 = fsub fast float 1.000000e+00, %1899
  %1901 = call float @dx.op.unary.f32(i32 6, float %1898)  ; FAbs(value)
  %1902 = fsub fast float %1900, %1901
  %1903 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1902)  ; FMax(a,b)
  %1904 = call float @dx.op.dot3.f32(i32 55, float %1896, float %1898, float %1903, float %1896, float %1898, float %1903)  ; Dot3(ax,ay,az,bx,by,bz)
  %1905 = bitcast float %1904 to i32
  %1906 = ashr i32 %1905, 1
  %1907 = sub nsw i32 1597250115, %1906
  %1908 = bitcast i32 %1907 to float
  %1909 = fmul fast float %1908, %1896
  %1910 = fmul fast float %1908, %1898
  %1911 = fmul fast float %1908, %1903
  %1912 = fsub fast float 1.000000e+00, %1887
  %1913 = fdiv fast float %1912, %1911
  %1914 = fmul fast float %1911, %42
  %1915 = fmul fast float %1911, %43
  %1916 = fmul fast float %1911, %44
  %1917 = fmul fast float %1909, %38
  %1918 = fmul fast float %1909, %39
  %1919 = fmul fast float %1909, %40
  %1920 = fadd fast float %1914, %1917
  %1921 = fadd fast float %1915, %1918
  %1922 = fadd fast float %1916, %1919
  %1923 = fmul fast float %1910, %68
  %1924 = fmul fast float %1910, %69
  %1925 = fmul fast float %1910, %70
  %1926 = fadd fast float %1920, %1923
  %1927 = fadd fast float %1921, %1924
  %1928 = fadd fast float %1922, %1925
  %1929 = call float @dx.op.dot3.f32(i32 55, float %1926, float %1927, float %1928, float %1926, float %1927, float %1928)  ; Dot3(ax,ay,az,bx,by,bz)
  %1930 = call float @dx.op.unary.f32(i32 25, float %1929)  ; Rsqrt(value)
  %1931 = fmul fast float %1926, %1930
  %1932 = fmul fast float %1927, %1930
  %1933 = fmul fast float %1928, %1930
  %1934 = call float @dx.op.dot3.f32(i32 55, float %1807, float %1808, float %1809, float %1807, float %1808, float %1809)  ; Dot3(ax,ay,az,bx,by,bz)
  %1935 = call float @dx.op.unary.f32(i32 7, float %1934)  ; Saturate(value)
  %1936 = fmul fast float %1935, 5.000000e-01
  %1937 = fadd fast float %1936, 5.000000e-01
  %1938 = fmul fast float %1937, %1887
  %1939 = call float @dx.op.dot3.f32(i32 55, float %1807, float %1808, float %1809, float %1931, float %1932, float %1933)  ; Dot3(ax,ay,az,bx,by,bz)
  %1940 = call float @dx.op.unary.f32(i32 7, float %1939)  ; Saturate(value)
  %1941 = fmul fast float %1940, %1913
  %1942 = fadd fast float %1938, %1941
  %1943 = fsub fast float 5.000000e-01, %1936
  %1944 = fmul fast float %1943, %1804
  %1945 = fmul fast float %1943, %1805
  %1946 = fmul fast float %1943, %1806
  %1947 = fadd fast float %1942, %1944
  %1948 = fmul fast float %1947, %1883
  %1949 = fadd fast float %1942, %1945
  %1950 = fmul fast float %1949, %1884
  %1951 = fadd fast float %1942, %1946
  %1952 = fmul fast float %1951, %1885
  %1953 = call float @dx.op.dot3.f32(i32 55, float %1820, float %1821, float %1822, float %1807, float %1808, float %1809)  ; Dot3(ax,ay,az,bx,by,bz)
  %1954 = call float @dx.op.unary.f32(i32 7, float %1953)  ; Saturate(value)
  %1955 = fmul fast float %1954, 5.000000e-01
  %1956 = fadd fast float %1955, 5.000000e-01
  %1957 = fmul fast float %1956, %1887
  %1958 = call float @dx.op.dot3.f32(i32 55, float %1820, float %1821, float %1822, float %1931, float %1932, float %1933)  ; Dot3(ax,ay,az,bx,by,bz)
  %1959 = call float @dx.op.unary.f32(i32 7, float %1958)  ; Saturate(value)
  %1960 = fmul fast float %1959, %1913
  %1961 = fadd fast float %1957, %1960
  %1962 = fsub fast float 5.000000e-01, %1955
  %1963 = fmul fast float %1962, %1804
  %1964 = fmul fast float %1962, %1805
  %1965 = fmul fast float %1962, %1806
  %1966 = fadd fast float %1961, %1963
  %1967 = fmul fast float %1966, %1883
  %1968 = fadd fast float %1961, %1964
  %1969 = fmul fast float %1968, %1884
  %1970 = fadd fast float %1961, %1965
  %1971 = fmul fast float %1970, %1885
  br label %1972

; <label>:1972                                    ; preds = %1874, %1871
  %1973 = phi float [ %1967, %1874 ], [ 0.000000e+00, %1871 ]
  %1974 = phi float [ %1969, %1874 ], [ 0.000000e+00, %1871 ]
  %1975 = phi float [ %1971, %1874 ], [ 0.000000e+00, %1871 ]
  %1976 = phi float [ %1948, %1874 ], [ 0.000000e+00, %1871 ]
  %1977 = phi float [ %1950, %1874 ], [ 0.000000e+00, %1871 ]
  %1978 = phi float [ %1952, %1874 ], [ 0.000000e+00, %1871 ]
  %1979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1980 = extractvalue %dx.types.CBufRet.f32 %1979, 0
  %1981 = fcmp fast ogt float %1980, 0.000000e+00
  %1982 = and i1 %1873, %1981
  br i1 %1982, label %1983, label %2187, !dx.controlflow.hints !72

; <label>:1983                                    ; preds = %1972
  %1984 = extractvalue %dx.types.CBufRet.f32 %1828, 2
  %1985 = fadd fast float %1984, %106
  %1986 = fmul fast float %1807, 3.200000e+01
  %1987 = fmul fast float %1808, 3.200000e+01
  %1988 = fadd fast float %1831, %1986
  %1989 = fadd fast float %1832, %1987
  %1990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1991 = extractvalue %dx.types.CBufRet.f32 %1990, 0
  %1992 = extractvalue %dx.types.CBufRet.f32 %1990, 1
  %1993 = fsub fast float %1988, %1991
  %1994 = fsub fast float %1989, %1992
  %1995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1996 = extractvalue %dx.types.CBufRet.f32 %1995, 0
  %1997 = extractvalue %dx.types.CBufRet.f32 %1995, 1
  %1998 = fmul fast float %1993, %1996
  %1999 = fmul fast float %1994, %1997
  %2000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2001 = extractvalue %dx.types.CBufRet.f32 %2000, 0
  %2002 = extractvalue %dx.types.CBufRet.f32 %2000, 1
  %2003 = fsub fast float %1831, %2001
  %2004 = fsub fast float %1832, %2002
  %2005 = fmul fast float %2003, %2003
  %2006 = fmul fast float %2004, %2004
  %2007 = fadd fast float %2005, %2006
  %2008 = call float @dx.op.unary.f32(i32 24, float %2007)  ; Sqrt(value)
  %2009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2010 = extractvalue %dx.types.CBufRet.f32 %2009, 0
  %2011 = extractvalue %dx.types.CBufRet.f32 %2009, 1
  %2012 = fsub fast float %2008, %2010
  %2013 = fdiv fast float %2012, %2011
  %2014 = call float @dx.op.unary.f32(i32 7, float %2013)  ; Saturate(value)
  %2015 = fmul fast float %2014, 2.000000e+00
  %2016 = fsub fast float 3.000000e+00, %2015
  %2017 = fmul fast float %2014, %2014
  %2018 = fmul fast float %2017, %2016
  %2019 = fcmp fast oge float %1998, 0.000000e+00
  %2020 = fcmp fast ole float %1998, 1.000000e+00
  %2021 = and i1 %2020, %2019
  %2022 = fcmp fast oge float %1999, 0.000000e+00
  %2023 = and i1 %2022, %2021
  %2024 = fcmp fast ole float %1999, 1.000000e+00
  %2025 = and i1 %2024, %2023
  %2026 = fcmp fast ogt float %2018, 0.000000e+00
  %2027 = and i1 %2026, %2025
  br i1 %2027, label %2028, label %2151, !dx.controlflow.hints !73

; <label>:2028                                    ; preds = %1983
  %2029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2030 = extractvalue %dx.types.CBufRet.f32 %2029, 2
  %2031 = extractvalue %dx.types.CBufRet.f32 %2029, 3
  %2032 = fmul fast float %2030, %1998
  %2033 = fmul fast float %2031, %1999
  %2034 = call float @dx.op.unary.f32(i32 27, float %2032)  ; Round_ni(value)
  %2035 = call float @dx.op.unary.f32(i32 27, float %2033)  ; Round_ni(value)
  %2036 = fptosi float %2034 to i32
  %2037 = fptosi float %2035 to i32
  %2038 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2036, i32 %2037, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = lshr i32 %2039, 16
  %2041 = icmp eq i32 %2040, 65535
  br i1 %2041, label %2151, label %2042

; <label>:2042                                    ; preds = %2028
  %2043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2044 = extractvalue %dx.types.CBufRet.f32 %2043, 0
  %2045 = fmul fast float %2044, %1998
  %2046 = extractvalue %dx.types.CBufRet.f32 %2043, 1
  %2047 = fadd fast float %2045, %2046
  %2048 = extractvalue %dx.types.CBufRet.f32 %2043, 2
  %2049 = fmul fast float %2048, %1999
  %2050 = extractvalue %dx.types.CBufRet.f32 %2043, 3
  %2051 = fadd fast float %2049, %2050
  %2052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2047, float %2051, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2053 = extractvalue %dx.types.ResRet.f32 %2052, 0
  %2054 = extractvalue %dx.types.ResRet.f32 %2052, 1
  %2055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2056 = extractvalue %dx.types.CBufRet.f32 %2055, 1
  %2057 = extractvalue %dx.types.CBufRet.f32 %2055, 0
  %2058 = fsub fast float %2056, %2057
  %2059 = fmul fast float %2058, %2053
  %2060 = fadd fast float %2059, %2057
  %2061 = extractvalue %dx.types.CBufRet.f32 %2055, 3
  %2062 = extractvalue %dx.types.CBufRet.f32 %2055, 2
  %2063 = fsub fast float %2061, %2062
  %2064 = fmul fast float %2063, %2054
  %2065 = fadd fast float %2064, %2062
  %2066 = fsub fast float %1985, %2060
  %2067 = fsub fast float %2065, %2060
  %2068 = fdiv fast float %2066, %2067
  %2069 = call float @dx.op.unary.f32(i32 7, float %2068)  ; Saturate(value)
  %2070 = extractvalue %dx.types.CBufRet.f32 %1979, 1
  %2071 = extractvalue %dx.types.CBufRet.f32 %2029, 0
  %2072 = extractvalue %dx.types.CBufRet.f32 %2029, 1
  %2073 = fmul fast float %2071, %1998
  %2074 = fmul fast float %2072, %1999
  %2075 = fmul fast float %2073, 1.250000e-01
  %2076 = fmul fast float %2074, 1.250000e-01
  %2077 = call float @dx.op.unary.f32(i32 27, float %2075)  ; Round_ni(value)
  %2078 = call float @dx.op.unary.f32(i32 27, float %2076)  ; Round_ni(value)
  %2079 = fmul fast float %2077, 8.000000e+00
  %2080 = fmul fast float %2078, 8.000000e+00
  %2081 = fsub fast float %2073, %2079
  %2082 = fsub fast float %2074, %2080
  %2083 = fadd fast float %2081, 5.000000e-01
  %2084 = fadd fast float %2082, 5.000000e-01
  %2085 = and i32 %2040, 255
  %2086 = lshr i32 %2039, 24
  %2087 = mul nuw nsw i32 %2085, 9
  %2088 = uitofp i32 %2087 to float
  %2089 = mul nuw nsw i32 %2086, 9
  %2090 = uitofp i32 %2089 to float
  %2091 = fadd fast float %2083, %2088
  %2092 = fadd fast float %2084, %2090
  %2093 = fdiv fast float %2091, %1980
  %2094 = fdiv fast float %2092, %2070
  %2095 = fmul fast float %2069, 4.375000e-01
  %2096 = fadd fast float %2095, 3.125000e-02
  %2097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2093, float %2094, float %2096, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2098 = extractvalue %dx.types.ResRet.f32 %2097, 0
  %2099 = extractvalue %dx.types.ResRet.f32 %2097, 1
  %2100 = extractvalue %dx.types.ResRet.f32 %2097, 2
  %2101 = fadd fast float %2095, 5.312500e-01
  %2102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2093, float %2094, float %2101, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2103 = extractvalue %dx.types.ResRet.f32 %2102, 0
  %2104 = extractvalue %dx.types.ResRet.f32 %2102, 1
  %2105 = extractvalue %dx.types.ResRet.f32 %2102, 2
  %2106 = fmul fast float %2103, 2.000000e+00
  %2107 = fmul fast float %2104, 2.000000e+00
  %2108 = fmul fast float %2105, 2.000000e+00
  %2109 = fadd fast float %2106, -1.000000e+00
  %2110 = fadd fast float %2107, -1.000000e+00
  %2111 = fadd fast float %2108, -1.000000e+00
  %2112 = fmul fast float %2109, %2109
  %2113 = fmul fast float %2110, %2110
  %2114 = fadd fast float %2112, %2113
  %2115 = fmul fast float %2111, %2111
  %2116 = fadd fast float %2114, %2115
  %2117 = call float @dx.op.unary.f32(i32 24, float %2116)  ; Sqrt(value)
  %2118 = fcmp fast ogt float %2117, 0.000000e+00
  br i1 %2118, label %2119, label %2123

; <label>:2119                                    ; preds = %2042
  %2120 = fdiv fast float %2109, %2117
  %2121 = fdiv fast float %2110, %2117
  %2122 = fdiv fast float %2111, %2117
  br label %2123

; <label>:2123                                    ; preds = %2119, %2042
  %2124 = phi float [ %2120, %2119 ], [ 0.000000e+00, %2042 ]
  %2125 = phi float [ %2121, %2119 ], [ 0.000000e+00, %2042 ]
  %2126 = phi float [ %2122, %2119 ], [ 0.000000e+00, %2042 ]
  %2127 = call float @dx.op.dot3.f32(i32 55, float %2124, float %2125, float %2126, float %1807, float %1808, float %1809)  ; Dot3(ax,ay,az,bx,by,bz)
  %2128 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2127)  ; FMax(a,b)
  %2129 = fmul fast float %2128, 0x400C5BF8A0000000
  %2130 = fmul fast float %2098, %2018
  %2131 = fmul fast float %2130, %2129
  %2132 = fmul fast float %2099, %2018
  %2133 = fmul fast float %2132, %2129
  %2134 = fmul fast float %2100, %2018
  %2135 = fmul fast float %2134, %2129
  %2136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2137 = extractvalue %dx.types.CBufRet.f32 %2136, 3
  %2138 = fmul fast float %2131, %2137
  %2139 = fmul fast float %2133, %2137
  %2140 = fmul fast float %2135, %2137
  %2141 = fcmp fast ogt float %1985, %2065
  br i1 %2141, label %2142, label %2151

; <label>:2142                                    ; preds = %2123
  %2143 = fmul fast float %2067, 0x3FC24924A0000000
  %2144 = fsub fast float %1985, %2065
  %2145 = fdiv fast float %2144, %2143
  %2146 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2147 = fsub fast float 1.000000e+00, %2146
  %2148 = fmul fast float %2147, %2138
  %2149 = fmul fast float %2147, %2139
  %2150 = fmul fast float %2147, %2140
  br label %2151

; <label>:2151                                    ; preds = %2142, %2123, %2028, %1983
  %2152 = phi float [ %2150, %2142 ], [ %2140, %2123 ], [ 0.000000e+00, %2028 ], [ 0.000000e+00, %1983 ]
  %2153 = phi float [ %2149, %2142 ], [ %2139, %2123 ], [ 0.000000e+00, %2028 ], [ 0.000000e+00, %1983 ]
  %2154 = phi float [ %2148, %2142 ], [ %2138, %2123 ], [ 0.000000e+00, %2028 ], [ 0.000000e+00, %1983 ]
  %2155 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2154)  ; FMax(a,b)
  %2156 = fmul fast float %2155, 0x3FD20DD760000000
  %2157 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1820, float %1821, float %1822)  ; Dot3(ax,ay,az,bx,by,bz)
  %2158 = fmul fast float %2157, 0x3FDF454380000000
  %2159 = fmul fast float %2157, %2157
  %2160 = fmul fast float %2159, 0x3FEE471020000000
  %2161 = fadd fast float %2160, 0xBFD42F6020000000
  %2162 = call float @dx.op.dot3.f32(i32 55, float %2155, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2158, float %2161)  ; Dot3(ax,ay,az,bx,by,bz)
  %2163 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2153)  ; FMax(a,b)
  %2164 = fmul fast float %2163, 0x3FD20DD760000000
  %2165 = call float @dx.op.dot3.f32(i32 55, float %2163, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2158, float %2161)  ; Dot3(ax,ay,az,bx,by,bz)
  %2166 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2152)  ; FMax(a,b)
  %2167 = fmul fast float %2166, 0x3FD20DD760000000
  %2168 = call float @dx.op.dot3.f32(i32 55, float %2166, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2158, float %2161)  ; Dot3(ax,ay,az,bx,by,bz)
  %2169 = call float @dx.op.binary.f32(i32 35, float %2156, float 0.000000e+00)  ; FMax(a,b)
  %2170 = call float @dx.op.binary.f32(i32 35, float %2164, float 0.000000e+00)  ; FMax(a,b)
  %2171 = call float @dx.op.binary.f32(i32 35, float %2167, float 0.000000e+00)  ; FMax(a,b)
  %2172 = call float @dx.op.binary.f32(i32 35, float %2162, float 0.000000e+00)  ; FMax(a,b)
  %2173 = call float @dx.op.binary.f32(i32 35, float %2165, float 0.000000e+00)  ; FMax(a,b)
  %2174 = call float @dx.op.binary.f32(i32 35, float %2168, float 0.000000e+00)  ; FMax(a,b)
  %2175 = fmul fast float %2169, %1872
  %2176 = fmul fast float %2170, %1872
  %2177 = fmul fast float %2171, %1872
  %2178 = fadd fast float %2175, %1976
  %2179 = fadd fast float %2176, %1977
  %2180 = fadd fast float %2177, %1978
  %2181 = fmul fast float %2172, %1872
  %2182 = fmul fast float %2173, %1872
  %2183 = fmul fast float %2174, %1872
  %2184 = fadd fast float %2181, %1973
  %2185 = fadd fast float %2182, %1974
  %2186 = fadd fast float %2183, %1975
  br label %2187

; <label>:2187                                    ; preds = %2151, %1972
  %2188 = phi float [ %2184, %2151 ], [ %1973, %1972 ]
  %2189 = phi float [ %2185, %2151 ], [ %1974, %1972 ]
  %2190 = phi float [ %2186, %2151 ], [ %1975, %1972 ]
  %2191 = phi float [ %2178, %2151 ], [ %1976, %1972 ]
  %2192 = phi float [ %2179, %2151 ], [ %1977, %1972 ]
  %2193 = phi float [ %2180, %2151 ], [ %1978, %1972 ]
  %2194 = fcmp fast olt float %1872, 1.000000e+00
  br i1 %2194, label %2195, label %3013, !dx.controlflow.hints !74

; <label>:2195                                    ; preds = %2187
  %2196 = extractvalue %dx.types.CBufRet.f32 %1828, 2
  %2197 = fadd fast float %2196, %106
  %2198 = fmul fast float %1807, 3.200000e+01
  %2199 = fmul fast float %1808, 3.200000e+01
  %2200 = fadd fast float %1831, %2198
  %2201 = fadd fast float %1832, %2199
  %2202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2203 = extractvalue %dx.types.CBufRet.f32 %2202, 0
  %2204 = extractvalue %dx.types.CBufRet.f32 %2202, 1
  %2205 = fsub fast float %2200, %2203
  %2206 = fsub fast float %2201, %2204
  %2207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2208 = extractvalue %dx.types.CBufRet.f32 %2207, 0
  %2209 = extractvalue %dx.types.CBufRet.f32 %2207, 1
  %2210 = fmul fast float %2205, %2208
  %2211 = fmul fast float %2206, %2209
  %2212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2213 = extractvalue %dx.types.CBufRet.f32 %2212, 0
  %2214 = fmul fast float %2210, %2213
  %2215 = extractvalue %dx.types.CBufRet.f32 %2212, 1
  %2216 = fadd fast float %2214, %2215
  %2217 = extractvalue %dx.types.CBufRet.f32 %2212, 2
  %2218 = fmul fast float %2217, %2211
  %2219 = extractvalue %dx.types.CBufRet.f32 %2212, 3
  %2220 = fadd fast float %2218, %2219
  %2221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2216, float %2220, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2222 = extractvalue %dx.types.ResRet.f32 %2221, 0
  %2223 = extractvalue %dx.types.ResRet.f32 %2221, 1
  %2224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2225 = extractvalue %dx.types.CBufRet.f32 %2224, 1
  %2226 = extractvalue %dx.types.CBufRet.f32 %2224, 0
  %2227 = fsub fast float %2225, %2226
  %2228 = fmul fast float %2227, %2222
  %2229 = fadd fast float %2228, %2226
  %2230 = extractvalue %dx.types.CBufRet.f32 %2224, 3
  %2231 = extractvalue %dx.types.CBufRet.f32 %2224, 2
  %2232 = fsub fast float %2230, %2231
  %2233 = fmul fast float %2232, %2223
  %2234 = fadd fast float %2233, %2231
  %2235 = fsub fast float %2197, %2229
  %2236 = fsub fast float %2234, %2229
  %2237 = fdiv fast float %2235, %2236
  %2238 = call float @dx.op.unary.f32(i32 7, float %2237)  ; Saturate(value)
  %2239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2240 = extractvalue %dx.types.CBufRet.f32 %2239, 0
  %2241 = fmul fast float %2240, %2238
  %2242 = extractvalue %dx.types.CBufRet.f32 %2239, 1
  %2243 = fadd fast float %2241, %2242
  %2244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %2216, float %2220, float %2243, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2245 = extractvalue %dx.types.ResRet.f32 %2244, 0
  %2246 = extractvalue %dx.types.ResRet.f32 %2244, 1
  %2247 = extractvalue %dx.types.ResRet.f32 %2244, 2
  %2248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2249 = extractvalue %dx.types.CBufRet.f32 %2248, 0
  %2250 = extractvalue %dx.types.CBufRet.f32 %2248, 1
  %2251 = extractvalue %dx.types.CBufRet.f32 %2248, 2
  %2252 = fmul fast float %2249, %2245
  %2253 = fmul fast float %2250, %2246
  %2254 = fmul fast float %2251, %2247
  %2255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2256 = extractvalue %dx.types.CBufRet.f32 %2255, 0
  %2257 = extractvalue %dx.types.CBufRet.f32 %2255, 1
  %2258 = extractvalue %dx.types.CBufRet.f32 %2255, 2
  %2259 = fadd fast float %2252, %2256
  %2260 = fadd fast float %2253, %2257
  %2261 = fadd fast float %2254, %2258
  %2262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2263 = extractvalue %dx.types.CBufRet.f32 %2262, 0
  %2264 = fmul fast float %2263, %2210
  %2265 = extractvalue %dx.types.CBufRet.f32 %2262, 1
  %2266 = fadd fast float %2264, %2265
  %2267 = extractvalue %dx.types.CBufRet.f32 %2262, 2
  %2268 = fmul fast float %2267, %2211
  %2269 = extractvalue %dx.types.CBufRet.f32 %2262, 3
  %2270 = fadd fast float %2268, %2269
  %2271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2272 = extractvalue %dx.types.CBufRet.f32 %2271, 0
  %2273 = extractvalue %dx.types.CBufRet.f32 %2271, 1
  %2274 = extractvalue %dx.types.CBufRet.f32 %2271, 2
  %2275 = extractvalue %dx.types.CBufRet.f32 %2271, 3
  %2276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2277 = extractvalue %dx.types.CBufRet.f32 %2276, 0
  %2278 = extractvalue %dx.types.CBufRet.f32 %2276, 1
  %2279 = extractvalue %dx.types.CBufRet.f32 %2276, 2
  %2280 = extractvalue %dx.types.CBufRet.f32 %2276, 3
  %2281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2266, float %2270, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2282 = extractvalue %dx.types.ResRet.f32 %2281, 0
  %2283 = extractvalue %dx.types.ResRet.f32 %2281, 1
  %2284 = extractvalue %dx.types.ResRet.f32 %2281, 2
  %2285 = extractvalue %dx.types.ResRet.f32 %2281, 3
  %2286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2266, float %2270, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2287 = extractvalue %dx.types.ResRet.f32 %2286, 0
  %2288 = extractvalue %dx.types.ResRet.f32 %2286, 1
  %2289 = extractvalue %dx.types.ResRet.f32 %2286, 2
  %2290 = extractvalue %dx.types.ResRet.f32 %2286, 3
  %2291 = fmul fast float %2282, %2259
  %2292 = fmul fast float %2287, %2259
  %2293 = fmul fast float %2289, %2259
  %2294 = fmul fast float %2285, %2259
  %2295 = fadd fast float %2291, %2272
  %2296 = fadd fast float %2292, %2273
  %2297 = fadd fast float %2293, %2274
  %2298 = fadd fast float %2294, %2275
  %2299 = fmul fast float %2283, %2259
  %2300 = fmul fast float %2288, %2259
  %2301 = fadd fast float %2299, %2277
  %2302 = fadd fast float %2300, %2278
  %2303 = fmul fast float %2284, %2259
  %2304 = fmul fast float %2290, %2259
  %2305 = fadd fast float %2303, %2279
  %2306 = fadd fast float %2304, %2280
  %2307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2266, float %2270, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2308 = extractvalue %dx.types.ResRet.f32 %2307, 0
  %2309 = extractvalue %dx.types.ResRet.f32 %2307, 1
  %2310 = extractvalue %dx.types.ResRet.f32 %2307, 2
  %2311 = extractvalue %dx.types.ResRet.f32 %2307, 3
  %2312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2266, float %2270, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2313 = extractvalue %dx.types.ResRet.f32 %2312, 0
  %2314 = extractvalue %dx.types.ResRet.f32 %2312, 1
  %2315 = extractvalue %dx.types.ResRet.f32 %2312, 2
  %2316 = extractvalue %dx.types.ResRet.f32 %2312, 3
  %2317 = fmul fast float %2308, %2260
  %2318 = fmul fast float %2313, %2260
  %2319 = fmul fast float %2315, %2260
  %2320 = fmul fast float %2311, %2260
  %2321 = fadd fast float %2295, %2317
  %2322 = fadd fast float %2296, %2318
  %2323 = fadd fast float %2297, %2319
  %2324 = fadd fast float %2298, %2320
  %2325 = fmul fast float %2309, %2260
  %2326 = fmul fast float %2314, %2260
  %2327 = fadd fast float %2301, %2325
  %2328 = fadd fast float %2302, %2326
  %2329 = fmul fast float %2310, %2260
  %2330 = fmul fast float %2316, %2260
  %2331 = fadd fast float %2305, %2329
  %2332 = fadd fast float %2306, %2330
  %2333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2266, float %2270, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2334 = extractvalue %dx.types.ResRet.f32 %2333, 0
  %2335 = extractvalue %dx.types.ResRet.f32 %2333, 1
  %2336 = extractvalue %dx.types.ResRet.f32 %2333, 2
  %2337 = extractvalue %dx.types.ResRet.f32 %2333, 3
  %2338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2266, float %2270, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2339 = extractvalue %dx.types.ResRet.f32 %2338, 0
  %2340 = extractvalue %dx.types.ResRet.f32 %2338, 1
  %2341 = extractvalue %dx.types.ResRet.f32 %2338, 2
  %2342 = extractvalue %dx.types.ResRet.f32 %2338, 3
  %2343 = fmul fast float %2334, %2261
  %2344 = fmul fast float %2339, %2261
  %2345 = fmul fast float %2341, %2261
  %2346 = fmul fast float %2337, %2261
  %2347 = fadd fast float %2321, %2343
  %2348 = fadd fast float %2322, %2344
  %2349 = fadd fast float %2323, %2345
  %2350 = fadd fast float %2324, %2346
  %2351 = fmul fast float %2335, %2261
  %2352 = fmul fast float %2340, %2261
  %2353 = fadd fast float %2327, %2351
  %2354 = fadd fast float %2328, %2352
  %2355 = fmul fast float %2336, %2261
  %2356 = fmul fast float %2342, %2261
  %2357 = fadd fast float %2331, %2355
  %2358 = fadd fast float %2332, %2356
  %2359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2360 = extractvalue %dx.types.CBufRet.f32 %2359, 0
  %2361 = fsub fast float %1831, %2360
  %2362 = fsub fast float %2203, %1831
  %2363 = call float @dx.op.binary.f32(i32 35, float %2362, float %2361)  ; FMax(a,b)
  %2364 = extractvalue %dx.types.CBufRet.f32 %2359, 1
  %2365 = fsub fast float %1832, %2364
  %2366 = fsub fast float %2204, %1832
  %2367 = call float @dx.op.binary.f32(i32 35, float %2366, float %2365)  ; FMax(a,b)
  %2368 = call float @dx.op.binary.f32(i32 35, float %2363, float %2367)  ; FMax(a,b)
  %2369 = extractvalue %dx.types.CBufRet.f32 %2207, 3
  %2370 = fmul fast float %2369, %2368
  %2371 = call float @dx.op.unary.f32(i32 7, float %2370)  ; Saturate(value)
  %2372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2373 = extractvalue %dx.types.CBufRet.f32 %2372, 0
  %2374 = extractvalue %dx.types.CBufRet.f32 %2372, 1
  %2375 = extractvalue %dx.types.CBufRet.f32 %2372, 2
  %2376 = extractvalue %dx.types.CBufRet.f32 %2372, 3
  %2377 = fsub fast float %2373, %2347
  %2378 = fsub fast float %2374, %2348
  %2379 = fsub fast float %2375, %2349
  %2380 = fsub fast float %2376, %2350
  %2381 = fmul fast float %2377, %2371
  %2382 = fmul fast float %2378, %2371
  %2383 = fmul fast float %2379, %2371
  %2384 = fmul fast float %2380, %2371
  %2385 = fadd fast float %2381, %2347
  %2386 = fadd fast float %2382, %2348
  %2387 = fadd fast float %2383, %2349
  %2388 = fadd fast float %2384, %2350
  %2389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2390 = extractvalue %dx.types.CBufRet.f32 %2389, 0
  %2391 = extractvalue %dx.types.CBufRet.f32 %2389, 1
  %2392 = fsub fast float %2390, %2353
  %2393 = fsub fast float %2391, %2354
  %2394 = fmul fast float %2392, %2371
  %2395 = fmul fast float %2393, %2371
  %2396 = fadd fast float %2394, %2353
  %2397 = fadd fast float %2395, %2354
  %2398 = extractvalue %dx.types.CBufRet.f32 %2389, 2
  %2399 = extractvalue %dx.types.CBufRet.f32 %2389, 3
  %2400 = fsub fast float %2398, %2357
  %2401 = fsub fast float %2399, %2358
  %2402 = fmul fast float %2400, %2371
  %2403 = fmul fast float %2401, %2371
  %2404 = fadd fast float %2402, %2357
  %2405 = fadd fast float %2403, %2358
  %2406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2407 = extractvalue %dx.types.CBufRet.f32 %2406, 0
  %2408 = fmul fast float %2407, %2385
  %2409 = fmul fast float %2407, %2386
  %2410 = fmul fast float %2407, %2387
  %2411 = fmul fast float %2407, %2388
  %2412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2413 = extractvalue %dx.types.CBufRet.f32 %2412, 0
  %2414 = fmul fast float %2413, %2396
  %2415 = fmul fast float %2413, %2397
  %2416 = fadd fast float %2414, %2408
  %2417 = fadd fast float %2415, %2410
  %2418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2419 = extractvalue %dx.types.CBufRet.f32 %2418, 0
  %2420 = fmul fast float %2419, %2404
  %2421 = fmul fast float %2419, %2405
  %2422 = fadd fast float %2416, %2420
  %2423 = fadd fast float %2417, %2421
  %2424 = extractvalue %dx.types.CBufRet.f32 %2406, 1
  %2425 = fmul fast float %2424, %2385
  %2426 = fmul fast float %2424, %2386
  %2427 = fmul fast float %2424, %2387
  %2428 = fmul fast float %2424, %2388
  %2429 = extractvalue %dx.types.CBufRet.f32 %2412, 1
  %2430 = fmul fast float %2429, %2396
  %2431 = fmul fast float %2429, %2397
  %2432 = fadd fast float %2430, %2425
  %2433 = fadd fast float %2431, %2427
  %2434 = extractvalue %dx.types.CBufRet.f32 %2418, 1
  %2435 = fmul fast float %2434, %2404
  %2436 = fmul fast float %2434, %2405
  %2437 = fadd fast float %2432, %2435
  %2438 = fadd fast float %2433, %2436
  %2439 = extractvalue %dx.types.CBufRet.f32 %2406, 2
  %2440 = fmul fast float %2439, %2385
  %2441 = fmul fast float %2439, %2386
  %2442 = fmul fast float %2439, %2387
  %2443 = fmul fast float %2439, %2388
  %2444 = extractvalue %dx.types.CBufRet.f32 %2412, 2
  %2445 = fmul fast float %2444, %2396
  %2446 = fmul fast float %2444, %2397
  %2447 = fadd fast float %2445, %2440
  %2448 = fadd fast float %2446, %2442
  %2449 = extractvalue %dx.types.CBufRet.f32 %2418, 2
  %2450 = fmul fast float %2449, %2404
  %2451 = fmul fast float %2449, %2405
  %2452 = fadd fast float %2447, %2450
  %2453 = fadd fast float %2448, %2451
  %2454 = fmul fast float %2441, %2441
  %2455 = fmul fast float %2453, %2453
  %2456 = fmul fast float %2443, %2443
  %2457 = fadd fast float %2456, %2454
  %2458 = fadd fast float %2457, %2455
  %2459 = call float @dx.op.unary.f32(i32 24, float %2458)  ; Sqrt(value)
  %2460 = fcmp fast ugt float %2459, 0.000000e+00
  br i1 %2460, label %2461, label %2476

; <label>:2461                                    ; preds = %2195
  %2462 = fsub fast float -0.000000e+00, %2443
  %2463 = fdiv fast float %2462, %2459
  %2464 = fsub fast float -0.000000e+00, %2441
  %2465 = fdiv fast float %2464, %2459
  %2466 = fdiv fast float %2453, %2459
  %2467 = fmul fast float %2452, 0x3FE279A760000000
  %2468 = fmul fast float %2465, %2441
  %2469 = fmul fast float %2466, %2453
  %2470 = fmul fast float %2463, %2443
  %2471 = fadd fast float %2468, %2470
  %2472 = fsub fast float %2471, %2469
  %2473 = call float @dx.op.unary.f32(i32 6, float %2472)  ; FAbs(value)
  %2474 = fadd fast float %2473, 0x3DDB7CDFE0000000
  %2475 = fdiv fast float %2467, %2474
  br label %2476

; <label>:2476                                    ; preds = %2461, %2195
  %2477 = phi float [ %2475, %2461 ], [ 1.000000e+00, %2195 ]
  %2478 = fmul fast float %2426, %2426
  %2479 = fmul fast float %2438, %2438
  %2480 = fmul fast float %2428, %2428
  %2481 = fadd fast float %2480, %2478
  %2482 = fadd fast float %2481, %2479
  %2483 = call float @dx.op.unary.f32(i32 24, float %2482)  ; Sqrt(value)
  %2484 = fcmp fast ugt float %2483, 0.000000e+00
  br i1 %2484, label %2485, label %2500

; <label>:2485                                    ; preds = %2476
  %2486 = fsub fast float -0.000000e+00, %2428
  %2487 = fdiv fast float %2486, %2483
  %2488 = fsub fast float -0.000000e+00, %2426
  %2489 = fdiv fast float %2488, %2483
  %2490 = fdiv fast float %2438, %2483
  %2491 = fmul fast float %2437, 0x3FE279A760000000
  %2492 = fmul fast float %2489, %2426
  %2493 = fmul fast float %2490, %2438
  %2494 = fmul fast float %2487, %2428
  %2495 = fadd fast float %2492, %2494
  %2496 = fsub fast float %2495, %2493
  %2497 = call float @dx.op.unary.f32(i32 6, float %2496)  ; FAbs(value)
  %2498 = fadd fast float %2497, 0x3DDB7CDFE0000000
  %2499 = fdiv fast float %2491, %2498
  br label %2500

; <label>:2500                                    ; preds = %2485, %2476
  %2501 = phi float [ %2499, %2485 ], [ 1.000000e+00, %2476 ]
  %2502 = call float @dx.op.binary.f32(i32 36, float %2501, float %2477)  ; FMin(a,b)
  %2503 = fmul fast float %2409, %2409
  %2504 = fmul fast float %2423, %2423
  %2505 = fmul fast float %2411, %2411
  %2506 = fadd fast float %2505, %2503
  %2507 = fadd fast float %2506, %2504
  %2508 = call float @dx.op.unary.f32(i32 24, float %2507)  ; Sqrt(value)
  %2509 = fcmp fast ugt float %2508, 0.000000e+00
  br i1 %2509, label %2510, label %2525

; <label>:2510                                    ; preds = %2500
  %2511 = fsub fast float -0.000000e+00, %2411
  %2512 = fdiv fast float %2511, %2508
  %2513 = fsub fast float -0.000000e+00, %2409
  %2514 = fdiv fast float %2513, %2508
  %2515 = fdiv fast float %2423, %2508
  %2516 = fmul fast float %2422, 0x3FE279A760000000
  %2517 = fmul fast float %2514, %2409
  %2518 = fmul fast float %2515, %2423
  %2519 = fmul fast float %2512, %2411
  %2520 = fadd fast float %2517, %2519
  %2521 = fsub fast float %2520, %2518
  %2522 = call float @dx.op.unary.f32(i32 6, float %2521)  ; FAbs(value)
  %2523 = fadd fast float %2522, 0x3DDB7CDFE0000000
  %2524 = fdiv fast float %2516, %2523
  br label %2525

; <label>:2525                                    ; preds = %2510, %2500
  %2526 = phi float [ %2524, %2510 ], [ 1.000000e+00, %2500 ]
  %2527 = call float @dx.op.binary.f32(i32 36, float %2526, float %2502)  ; FMin(a,b)
  %2528 = call float @dx.op.unary.f32(i32 7, float %2527)  ; Saturate(value)
  %2529 = fcmp fast olt float %2528, 1.000000e+00
  br i1 %2529, label %2530, label %2540

; <label>:2530                                    ; preds = %2525
  %2531 = fmul fast float %2528, %2409
  %2532 = fmul fast float %2528, %2423
  %2533 = fmul fast float %2528, %2411
  %2534 = fmul fast float %2528, %2426
  %2535 = fmul fast float %2528, %2438
  %2536 = fmul fast float %2528, %2428
  %2537 = fmul fast float %2528, %2441
  %2538 = fmul fast float %2528, %2453
  %2539 = fmul fast float %2528, %2443
  br label %2540

; <label>:2540                                    ; preds = %2530, %2525
  %2541 = phi float [ %2537, %2530 ], [ %2441, %2525 ]
  %2542 = phi float [ %2538, %2530 ], [ %2453, %2525 ]
  %2543 = phi float [ %2539, %2530 ], [ %2443, %2525 ]
  %2544 = phi float [ %2534, %2530 ], [ %2426, %2525 ]
  %2545 = phi float [ %2535, %2530 ], [ %2438, %2525 ]
  %2546 = phi float [ %2536, %2530 ], [ %2428, %2525 ]
  %2547 = phi float [ %2531, %2530 ], [ %2409, %2525 ]
  %2548 = phi float [ %2532, %2530 ], [ %2423, %2525 ]
  %2549 = phi float [ %2533, %2530 ], [ %2411, %2525 ]
  %2550 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2422)  ; FMax(a,b)
  %2551 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2437)  ; FMax(a,b)
  %2552 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2452)  ; FMax(a,b)
  %2553 = fcmp fast oge float %2210, 0.000000e+00
  %2554 = and i1 %2553, %1981
  %2555 = fcmp fast ole float %2210, 1.000000e+00
  %2556 = and i1 %2555, %2554
  %2557 = fcmp fast oge float %2211, 0.000000e+00
  %2558 = and i1 %2557, %2556
  %2559 = fcmp fast ole float %2211, 1.000000e+00
  %2560 = and i1 %2559, %2558
  br i1 %2560, label %2561, label %2706, !dx.controlflow.hints !75

; <label>:2561                                    ; preds = %2540
  %2562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2563 = extractvalue %dx.types.CBufRet.f32 %2562, 2
  %2564 = extractvalue %dx.types.CBufRet.f32 %2562, 3
  %2565 = fmul fast float %2563, %2210
  %2566 = fmul fast float %2564, %2211
  %2567 = call float @dx.op.unary.f32(i32 27, float %2565)  ; Round_ni(value)
  %2568 = call float @dx.op.unary.f32(i32 27, float %2566)  ; Round_ni(value)
  %2569 = fptosi float %2567 to i32
  %2570 = fptosi float %2568 to i32
  %2571 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2569, i32 %2570, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = and i32 %2572, 65535
  %2574 = lshr i32 %2572, 16
  %2575 = icmp eq i32 %2573, 65535
  br i1 %2575, label %2612, label %2576

; <label>:2576                                    ; preds = %2561
  %2577 = extractvalue %dx.types.CBufRet.f32 %1979, 1
  %2578 = extractvalue %dx.types.CBufRet.f32 %2562, 0
  %2579 = extractvalue %dx.types.CBufRet.f32 %2562, 1
  %2580 = fmul fast float %2578, %2210
  %2581 = fmul fast float %2579, %2211
  %2582 = fmul fast float %2580, 1.250000e-01
  %2583 = fmul fast float %2581, 1.250000e-01
  %2584 = call float @dx.op.unary.f32(i32 27, float %2582)  ; Round_ni(value)
  %2585 = call float @dx.op.unary.f32(i32 27, float %2583)  ; Round_ni(value)
  %2586 = fmul fast float %2584, 8.000000e+00
  %2587 = fmul fast float %2585, 8.000000e+00
  %2588 = and i32 %2572, 255
  %2589 = lshr i32 %2572, 8
  %2590 = and i32 %2589, 255
  %2591 = mul nuw nsw i32 %2588, 9
  %2592 = uitofp i32 %2591 to float
  %2593 = mul nuw nsw i32 %2590, 9
  %2594 = uitofp i32 %2593 to float
  %2595 = fadd fast float %2592, 5.000000e-01
  %2596 = fadd fast float %2595, %2580
  %2597 = fsub fast float %2596, %2586
  %2598 = fadd fast float %2594, 5.000000e-01
  %2599 = fadd fast float %2598, %2581
  %2600 = fsub fast float %2599, %2587
  %2601 = fdiv fast float %2597, %1980
  %2602 = fdiv fast float %2600, %2577
  %2603 = fmul fast float %2238, 4.375000e-01
  %2604 = fadd fast float %2603, 3.125000e-02
  %2605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2601, float %2602, float %2604, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2606 = extractvalue %dx.types.ResRet.f32 %2605, 0
  %2607 = extractvalue %dx.types.ResRet.f32 %2605, 1
  %2608 = extractvalue %dx.types.ResRet.f32 %2605, 2
  %2609 = fadd fast float %2606, %2550
  %2610 = fadd fast float %2607, %2551
  %2611 = fadd fast float %2608, %2552
  br label %2612

; <label>:2612                                    ; preds = %2576, %2561
  %2613 = phi float [ %2611, %2576 ], [ %2552, %2561 ]
  %2614 = phi float [ %2610, %2576 ], [ %2551, %2561 ]
  %2615 = phi float [ %2609, %2576 ], [ %2550, %2561 ]
  %2616 = icmp eq i32 %2574, 65535
  br i1 %2616, label %2706, label %2617

; <label>:2617                                    ; preds = %2612
  %2618 = extractvalue %dx.types.CBufRet.f32 %1979, 1
  %2619 = extractvalue %dx.types.CBufRet.f32 %2562, 0
  %2620 = extractvalue %dx.types.CBufRet.f32 %2562, 1
  %2621 = fmul fast float %2619, %2210
  %2622 = fmul fast float %2620, %2211
  %2623 = fmul fast float %2621, 1.250000e-01
  %2624 = fmul fast float %2622, 1.250000e-01
  %2625 = call float @dx.op.unary.f32(i32 27, float %2623)  ; Round_ni(value)
  %2626 = call float @dx.op.unary.f32(i32 27, float %2624)  ; Round_ni(value)
  %2627 = fmul fast float %2625, 8.000000e+00
  %2628 = fmul fast float %2626, 8.000000e+00
  %2629 = fsub fast float %2621, %2627
  %2630 = fsub fast float %2622, %2628
  %2631 = fadd fast float %2629, 5.000000e-01
  %2632 = fadd fast float %2630, 5.000000e-01
  %2633 = and i32 %2574, 255
  %2634 = lshr i32 %2572, 24
  %2635 = mul nuw nsw i32 %2633, 9
  %2636 = uitofp i32 %2635 to float
  %2637 = mul nuw nsw i32 %2634, 9
  %2638 = uitofp i32 %2637 to float
  %2639 = fadd fast float %2631, %2636
  %2640 = fadd fast float %2632, %2638
  %2641 = fdiv fast float %2639, %1980
  %2642 = fdiv fast float %2640, %2618
  %2643 = fmul fast float %2238, 4.375000e-01
  %2644 = fadd fast float %2643, 3.125000e-02
  %2645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2641, float %2642, float %2644, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2646 = extractvalue %dx.types.ResRet.f32 %2645, 0
  %2647 = extractvalue %dx.types.ResRet.f32 %2645, 1
  %2648 = extractvalue %dx.types.ResRet.f32 %2645, 2
  %2649 = fadd fast float %2643, 5.312500e-01
  %2650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2641, float %2642, float %2649, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2651 = extractvalue %dx.types.ResRet.f32 %2650, 0
  %2652 = extractvalue %dx.types.ResRet.f32 %2650, 1
  %2653 = extractvalue %dx.types.ResRet.f32 %2650, 2
  %2654 = fmul fast float %2651, 2.000000e+00
  %2655 = fmul fast float %2652, 2.000000e+00
  %2656 = fmul fast float %2653, 2.000000e+00
  %2657 = fadd fast float %2654, -1.000000e+00
  %2658 = fadd fast float %2655, -1.000000e+00
  %2659 = fadd fast float %2656, -1.000000e+00
  %2660 = fmul fast float %2657, %2657
  %2661 = fmul fast float %2658, %2658
  %2662 = fadd fast float %2660, %2661
  %2663 = fmul fast float %2659, %2659
  %2664 = fadd fast float %2662, %2663
  %2665 = call float @dx.op.unary.f32(i32 24, float %2664)  ; Sqrt(value)
  %2666 = fcmp fast ogt float %2665, 0.000000e+00
  br i1 %2666, label %2667, label %2671

; <label>:2667                                    ; preds = %2617
  %2668 = fdiv fast float %2657, %2665
  %2669 = fdiv fast float %2658, %2665
  %2670 = fdiv fast float %2659, %2665
  br label %2671

; <label>:2671                                    ; preds = %2667, %2617
  %2672 = phi float [ %2668, %2667 ], [ 0.000000e+00, %2617 ]
  %2673 = phi float [ %2669, %2667 ], [ 0.000000e+00, %2617 ]
  %2674 = phi float [ %2670, %2667 ], [ 0.000000e+00, %2617 ]
  %2675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2676 = extractvalue %dx.types.CBufRet.f32 %2675, 0
  %2677 = extractvalue %dx.types.CBufRet.f32 %2675, 1
  %2678 = fsub fast float %1831, %2676
  %2679 = fsub fast float %1832, %2677
  %2680 = fmul fast float %2678, %2678
  %2681 = fmul fast float %2679, %2679
  %2682 = fadd fast float %2680, %2681
  %2683 = call float @dx.op.unary.f32(i32 24, float %2682)  ; Sqrt(value)
  %2684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2685 = extractvalue %dx.types.CBufRet.f32 %2684, 0
  %2686 = extractvalue %dx.types.CBufRet.f32 %2684, 1
  %2687 = fsub fast float %2683, %2685
  %2688 = fdiv fast float %2687, %2686
  %2689 = call float @dx.op.unary.f32(i32 7, float %2688)  ; Saturate(value)
  %2690 = fmul fast float %2689, 2.000000e+00
  %2691 = fsub fast float 3.000000e+00, %2690
  %2692 = fmul fast float %2689, %2689
  %2693 = fmul fast float %2692, %2691
  %2694 = call float @dx.op.dot3.f32(i32 55, float %2672, float %2673, float %2674, float %1807, float %1808, float %1809)  ; Dot3(ax,ay,az,bx,by,bz)
  %2695 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2694)  ; FMax(a,b)
  %2696 = fmul fast float %2695, 0x400C5BF8A0000000
  %2697 = fmul fast float %2693, %2646
  %2698 = fmul fast float %2697, %2696
  %2699 = fadd fast float %2698, %2615
  %2700 = fmul fast float %2693, %2647
  %2701 = fmul fast float %2700, %2696
  %2702 = fadd fast float %2701, %2614
  %2703 = fmul fast float %2693, %2648
  %2704 = fmul fast float %2703, %2696
  %2705 = fadd fast float %2704, %2613
  br label %2706

; <label>:2706                                    ; preds = %2671, %2612, %2540
  %2707 = phi float [ %2705, %2671 ], [ %2613, %2612 ], [ %2552, %2540 ]
  %2708 = phi float [ %2702, %2671 ], [ %2614, %2612 ], [ %2551, %2540 ]
  %2709 = phi float [ %2699, %2671 ], [ %2615, %2612 ], [ %2550, %2540 ]
  %2710 = fcmp fast ogt float %2197, %2234
  %2711 = and i1 %2553, %2710
  %2712 = and i1 %2555, %2711
  %2713 = and i1 %2557, %2712
  %2714 = and i1 %2559, %2713
  br i1 %2714, label %2715, label %2772, !dx.controlflow.hints !76

; <label>:2715                                    ; preds = %2706
  %2716 = fmul fast float %2236, 0x3FC24924A0000000
  %2717 = fsub fast float %2197, %2234
  %2718 = fdiv fast float %2717, %2716
  %2719 = call float @dx.op.unary.f32(i32 7, float %2718)  ; Saturate(value)
  %2720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2721 = extractvalue %dx.types.CBufRet.f32 %2720, 0
  %2722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2723 = extractvalue %dx.types.CBufRet.f32 %2722, 0
  %2724 = extractvalue %dx.types.CBufRet.f32 %2722, 1
  %2725 = extractvalue %dx.types.CBufRet.f32 %2722, 2
  %2726 = fsub fast float %2721, %2709
  %2727 = fsub fast float %2723, %2547
  %2728 = fsub fast float %2724, %2548
  %2729 = fsub fast float %2725, %2549
  %2730 = fmul fast float %2726, %2719
  %2731 = fmul fast float %2727, %2719
  %2732 = fmul fast float %2728, %2719
  %2733 = fmul fast float %2729, %2719
  %2734 = fadd fast float %2730, %2709
  %2735 = fadd fast float %2731, %2547
  %2736 = fadd fast float %2732, %2548
  %2737 = fadd fast float %2733, %2549
  %2738 = extractvalue %dx.types.CBufRet.f32 %2720, 1
  %2739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2740 = extractvalue %dx.types.CBufRet.f32 %2739, 0
  %2741 = extractvalue %dx.types.CBufRet.f32 %2739, 1
  %2742 = extractvalue %dx.types.CBufRet.f32 %2739, 2
  %2743 = fsub fast float %2738, %2708
  %2744 = fsub fast float %2740, %2544
  %2745 = fsub fast float %2741, %2545
  %2746 = fsub fast float %2742, %2546
  %2747 = fmul fast float %2743, %2719
  %2748 = fmul fast float %2744, %2719
  %2749 = fmul fast float %2745, %2719
  %2750 = fmul fast float %2746, %2719
  %2751 = fadd fast float %2747, %2708
  %2752 = fadd fast float %2748, %2544
  %2753 = fadd fast float %2749, %2545
  %2754 = fadd fast float %2750, %2546
  %2755 = extractvalue %dx.types.CBufRet.f32 %2720, 2
  %2756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2757 = extractvalue %dx.types.CBufRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.CBufRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.CBufRet.f32 %2756, 2
  %2760 = fsub fast float %2755, %2707
  %2761 = fsub fast float %2757, %2541
  %2762 = fsub fast float %2758, %2542
  %2763 = fsub fast float %2759, %2543
  %2764 = fmul fast float %2760, %2719
  %2765 = fmul fast float %2761, %2719
  %2766 = fmul fast float %2762, %2719
  %2767 = fmul fast float %2763, %2719
  %2768 = fadd fast float %2764, %2707
  %2769 = fadd fast float %2765, %2541
  %2770 = fadd fast float %2766, %2542
  %2771 = fadd fast float %2767, %2543
  br label %2772

; <label>:2772                                    ; preds = %2715, %2706
  %2773 = phi float [ %2768, %2715 ], [ %2707, %2706 ]
  %2774 = phi float [ %2769, %2715 ], [ %2541, %2706 ]
  %2775 = phi float [ %2770, %2715 ], [ %2542, %2706 ]
  %2776 = phi float [ %2771, %2715 ], [ %2543, %2706 ]
  %2777 = phi float [ %2751, %2715 ], [ %2708, %2706 ]
  %2778 = phi float [ %2752, %2715 ], [ %2544, %2706 ]
  %2779 = phi float [ %2753, %2715 ], [ %2545, %2706 ]
  %2780 = phi float [ %2754, %2715 ], [ %2546, %2706 ]
  %2781 = phi float [ %2734, %2715 ], [ %2709, %2706 ]
  %2782 = phi float [ %2735, %2715 ], [ %2547, %2706 ]
  %2783 = phi float [ %2736, %2715 ], [ %2548, %2706 ]
  %2784 = phi float [ %2737, %2715 ], [ %2549, %2706 ]
  %2785 = extractvalue %dx.types.CBufRet.f32 %2359, 3
  %2786 = fmul fast float %2785, %2781
  %2787 = fmul fast float %2785, %2777
  %2788 = fmul fast float %2785, %2773
  %2789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2790 = extractvalue %dx.types.CBufRet.f32 %2789, 3
  %2791 = fmul fast float %2786, %2790
  %2792 = fmul fast float %2787, %2790
  %2793 = fmul fast float %2788, %2790
  %2794 = fmul fast float %2782, 1.500000e+00
  %2795 = fmul fast float %2794, %2785
  %2796 = fmul fast float %2795, %2790
  %2797 = fmul fast float %2783, 1.500000e+00
  %2798 = fmul fast float %2797, %2785
  %2799 = fmul fast float %2798, %2790
  %2800 = fmul fast float %2784, 1.500000e+00
  %2801 = fmul fast float %2800, %2785
  %2802 = fmul fast float %2801, %2790
  %2803 = fmul fast float %2778, 1.500000e+00
  %2804 = fmul fast float %2803, %2785
  %2805 = fmul fast float %2804, %2790
  %2806 = fmul fast float %2779, 1.500000e+00
  %2807 = fmul fast float %2806, %2785
  %2808 = fmul fast float %2807, %2790
  %2809 = fmul fast float %2780, 1.500000e+00
  %2810 = fmul fast float %2809, %2785
  %2811 = fmul fast float %2810, %2790
  %2812 = fmul fast float %2774, 1.500000e+00
  %2813 = fmul fast float %2812, %2785
  %2814 = fmul fast float %2813, %2790
  %2815 = fmul fast float %2775, 1.500000e+00
  %2816 = fmul fast float %2815, %2785
  %2817 = fmul fast float %2816, %2790
  %2818 = fmul fast float %2776, 1.500000e+00
  %2819 = fmul fast float %2818, %2785
  %2820 = fmul fast float %2819, %2790
  %2821 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2791)  ; FMax(a,b)
  %2822 = call float @dx.op.dot3.f32(i32 55, float %2796, float %2799, float %2802, float %2796, float %2799, float %2802)  ; Dot3(ax,ay,az,bx,by,bz)
  %2823 = fcmp fast oeq float %2822, 0.000000e+00
  %2824 = fcmp fast oeq float %2821, 0.000000e+00
  %2825 = or i1 %2824, %2823
  br i1 %2825, label %2855, label %2826

; <label>:2826                                    ; preds = %2772
  %2827 = fsub fast float -0.000000e+00, %2802
  %2828 = fsub fast float -0.000000e+00, %2796
  %2829 = call float @dx.op.unary.f32(i32 24, float %2822)  ; Sqrt(value)
  %2830 = fdiv fast float %2829, %2821
  %2831 = fcmp fast ogt float %2830, 0x3FFB6F8900000000
  %2832 = select i1 %2831, float 0x3FFB6F8900000000, float %2830
  %2833 = fmul fast float %2832, 0x3FE8A23460000000
  %2834 = call float @dx.op.unary.f32(i32 7, float %2833)  ; Saturate(value)
  %2835 = call float @dx.op.binary.f32(i32 35, float %2832, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2836 = fmul fast float %2834, %2821
  %2837 = fmul fast float %2835, 0x3FF279A740000000
  %2838 = fadd fast float %2837, -1.000000e+00
  %2839 = call float @dx.op.dot3.f32(i32 55, float %2827, float %2828, float %2799, float %2827, float %2828, float %2799)  ; Dot3(ax,ay,az,bx,by,bz)
  %2840 = call float @dx.op.unary.f32(i32 25, float %2839)  ; Rsqrt(value)
  %2841 = fmul fast float %2840, %2827
  %2842 = fmul fast float %2840, %2828
  %2843 = fmul fast float %2840, %2799
  %2844 = fmul fast float %2838, %2838
  %2845 = fsub fast float 1.000000e+00, %2844
  %2846 = fmul fast float %2835, 0x40005F8BE0000000
  %2847 = fsub fast float 0x400C5BF8A0000000, %2846
  %2848 = fdiv fast float %2836, %2847
  %2849 = fmul fast float %2848, 0x3FEE31C3C0000000
  %2850 = fmul fast float %2849, %2845
  %2851 = fmul fast float %2835, 0x3FDACB7480000000
  %2852 = fadd fast float %2851, 0xBFD7347680000000
  %2853 = fmul fast float %2852, %2848
  %2854 = fmul fast float %2853, %2845
  br label %2855

; <label>:2855                                    ; preds = %2826, %2772
  %2856 = phi float [ %2841, %2826 ], [ 0.000000e+00, %2772 ]
  %2857 = phi float [ %2842, %2826 ], [ 0.000000e+00, %2772 ]
  %2858 = phi float [ %2843, %2826 ], [ 0.000000e+00, %2772 ]
  %2859 = phi float [ %2850, %2826 ], [ 0.000000e+00, %2772 ]
  %2860 = phi float [ %2854, %2826 ], [ 0.000000e+00, %2772 ]
  %2861 = call float @dx.op.dot3.f32(i32 55, float %2856, float %2857, float %2858, float %1807, float %1808, float %1809)  ; Dot3(ax,ay,az,bx,by,bz)
  %2862 = fmul fast float %2861, %2861
  %2863 = fmul fast float %2862, 0x3FEE471020000000
  %2864 = fadd fast float %2863, 0xBFD42F6020000000
  %2865 = fmul fast float %2821, 0x3FD20DD760000000
  %2866 = fmul fast float %2864, %2860
  %2867 = fmul fast float %2859, 0x3FDF454380000000
  %2868 = fmul fast float %2867, %2861
  %2869 = fadd fast float %2868, %2865
  %2870 = fadd fast float %2869, %2866
  %2871 = call float @dx.op.dot3.f32(i32 55, float %2856, float %2857, float %2858, float %1820, float %1821, float %1822)  ; Dot3(ax,ay,az,bx,by,bz)
  %2872 = fmul fast float %2871, 0x3FDF454380000000
  %2873 = fmul fast float %2871, %2871
  %2874 = fmul fast float %2873, 0x3FEE471020000000
  %2875 = fadd fast float %2874, 0xBFD42F6020000000
  %2876 = call float @dx.op.dot3.f32(i32 55, float %2821, float %2859, float %2860, float 0x3FD20DD760000000, float %2872, float %2875)  ; Dot3(ax,ay,az,bx,by,bz)
  %2877 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2792)  ; FMax(a,b)
  %2878 = call float @dx.op.dot3.f32(i32 55, float %2805, float %2808, float %2811, float %2805, float %2808, float %2811)  ; Dot3(ax,ay,az,bx,by,bz)
  %2879 = fcmp fast oeq float %2878, 0.000000e+00
  %2880 = fcmp fast oeq float %2877, 0.000000e+00
  %2881 = or i1 %2880, %2879
  br i1 %2881, label %2911, label %2882

; <label>:2882                                    ; preds = %2855
  %2883 = fsub fast float -0.000000e+00, %2811
  %2884 = fsub fast float -0.000000e+00, %2805
  %2885 = call float @dx.op.unary.f32(i32 24, float %2878)  ; Sqrt(value)
  %2886 = fdiv fast float %2885, %2877
  %2887 = fcmp fast ogt float %2886, 0x3FFB6F8900000000
  %2888 = select i1 %2887, float 0x3FFB6F8900000000, float %2886
  %2889 = fmul fast float %2888, 0x3FE8A23460000000
  %2890 = call float @dx.op.unary.f32(i32 7, float %2889)  ; Saturate(value)
  %2891 = call float @dx.op.binary.f32(i32 35, float %2888, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2892 = fmul fast float %2890, %2877
  %2893 = fmul fast float %2891, 0x3FF279A740000000
  %2894 = fadd fast float %2893, -1.000000e+00
  %2895 = call float @dx.op.dot3.f32(i32 55, float %2883, float %2884, float %2808, float %2883, float %2884, float %2808)  ; Dot3(ax,ay,az,bx,by,bz)
  %2896 = call float @dx.op.unary.f32(i32 25, float %2895)  ; Rsqrt(value)
  %2897 = fmul fast float %2896, %2883
  %2898 = fmul fast float %2896, %2884
  %2899 = fmul fast float %2896, %2808
  %2900 = fmul fast float %2894, %2894
  %2901 = fsub fast float 1.000000e+00, %2900
  %2902 = fmul fast float %2891, 0x40005F8BE0000000
  %2903 = fsub fast float 0x400C5BF8A0000000, %2902
  %2904 = fdiv fast float %2892, %2903
  %2905 = fmul fast float %2904, 0x3FEE31C3C0000000
  %2906 = fmul fast float %2905, %2901
  %2907 = fmul fast float %2891, 0x3FDACB7480000000
  %2908 = fadd fast float %2907, 0xBFD7347680000000
  %2909 = fmul fast float %2908, %2904
  %2910 = fmul fast float %2909, %2901
  br label %2911

; <label>:2911                                    ; preds = %2882, %2855
  %2912 = phi float [ %2897, %2882 ], [ 0.000000e+00, %2855 ]
  %2913 = phi float [ %2898, %2882 ], [ 0.000000e+00, %2855 ]
  %2914 = phi float [ %2899, %2882 ], [ 0.000000e+00, %2855 ]
  %2915 = phi float [ %2906, %2882 ], [ 0.000000e+00, %2855 ]
  %2916 = phi float [ %2910, %2882 ], [ 0.000000e+00, %2855 ]
  %2917 = call float @dx.op.dot3.f32(i32 55, float %2912, float %2913, float %2914, float %1807, float %1808, float %1809)  ; Dot3(ax,ay,az,bx,by,bz)
  %2918 = fmul fast float %2917, %2917
  %2919 = fmul fast float %2918, 0x3FEE471020000000
  %2920 = fadd fast float %2919, 0xBFD42F6020000000
  %2921 = fmul fast float %2877, 0x3FD20DD760000000
  %2922 = fmul fast float %2920, %2916
  %2923 = fmul fast float %2915, 0x3FDF454380000000
  %2924 = fmul fast float %2923, %2917
  %2925 = fadd fast float %2924, %2921
  %2926 = fadd fast float %2925, %2922
  %2927 = call float @dx.op.dot3.f32(i32 55, float %2912, float %2913, float %2914, float %1820, float %1821, float %1822)  ; Dot3(ax,ay,az,bx,by,bz)
  %2928 = fmul fast float %2927, 0x3FDF454380000000
  %2929 = fmul fast float %2927, %2927
  %2930 = fmul fast float %2929, 0x3FEE471020000000
  %2931 = fadd fast float %2930, 0xBFD42F6020000000
  %2932 = call float @dx.op.dot3.f32(i32 55, float %2877, float %2915, float %2916, float 0x3FD20DD760000000, float %2928, float %2931)  ; Dot3(ax,ay,az,bx,by,bz)
  %2933 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2793)  ; FMax(a,b)
  %2934 = call float @dx.op.dot3.f32(i32 55, float %2814, float %2817, float %2820, float %2814, float %2817, float %2820)  ; Dot3(ax,ay,az,bx,by,bz)
  %2935 = fcmp fast oeq float %2934, 0.000000e+00
  %2936 = fcmp fast oeq float %2933, 0.000000e+00
  %2937 = or i1 %2936, %2935
  br i1 %2937, label %2967, label %2938

; <label>:2938                                    ; preds = %2911
  %2939 = fsub fast float -0.000000e+00, %2820
  %2940 = fsub fast float -0.000000e+00, %2814
  %2941 = call float @dx.op.unary.f32(i32 24, float %2934)  ; Sqrt(value)
  %2942 = fdiv fast float %2941, %2933
  %2943 = fcmp fast ogt float %2942, 0x3FFB6F8900000000
  %2944 = select i1 %2943, float 0x3FFB6F8900000000, float %2942
  %2945 = fmul fast float %2944, 0x3FE8A23460000000
  %2946 = call float @dx.op.unary.f32(i32 7, float %2945)  ; Saturate(value)
  %2947 = call float @dx.op.binary.f32(i32 35, float %2944, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2948 = fmul fast float %2946, %2933
  %2949 = fmul fast float %2947, 0x3FF279A740000000
  %2950 = fadd fast float %2949, -1.000000e+00
  %2951 = call float @dx.op.dot3.f32(i32 55, float %2939, float %2940, float %2817, float %2939, float %2940, float %2817)  ; Dot3(ax,ay,az,bx,by,bz)
  %2952 = call float @dx.op.unary.f32(i32 25, float %2951)  ; Rsqrt(value)
  %2953 = fmul fast float %2952, %2939
  %2954 = fmul fast float %2952, %2940
  %2955 = fmul fast float %2952, %2817
  %2956 = fmul fast float %2950, %2950
  %2957 = fsub fast float 1.000000e+00, %2956
  %2958 = fmul fast float %2947, 0x40005F8BE0000000
  %2959 = fsub fast float 0x400C5BF8A0000000, %2958
  %2960 = fdiv fast float %2948, %2959
  %2961 = fmul fast float %2960, 0x3FEE31C3C0000000
  %2962 = fmul fast float %2961, %2957
  %2963 = fmul fast float %2947, 0x3FDACB7480000000
  %2964 = fadd fast float %2963, 0xBFD7347680000000
  %2965 = fmul fast float %2964, %2960
  %2966 = fmul fast float %2965, %2957
  br label %2967

; <label>:2967                                    ; preds = %2938, %2911
  %2968 = phi float [ %2953, %2938 ], [ 0.000000e+00, %2911 ]
  %2969 = phi float [ %2954, %2938 ], [ 0.000000e+00, %2911 ]
  %2970 = phi float [ %2955, %2938 ], [ 0.000000e+00, %2911 ]
  %2971 = phi float [ %2962, %2938 ], [ 0.000000e+00, %2911 ]
  %2972 = phi float [ %2966, %2938 ], [ 0.000000e+00, %2911 ]
  %2973 = call float @dx.op.dot3.f32(i32 55, float %2968, float %2969, float %2970, float %1807, float %1808, float %1809)  ; Dot3(ax,ay,az,bx,by,bz)
  %2974 = fmul fast float %2973, %2973
  %2975 = fmul fast float %2974, 0x3FEE471020000000
  %2976 = fadd fast float %2975, 0xBFD42F6020000000
  %2977 = fmul fast float %2933, 0x3FD20DD760000000
  %2978 = fmul fast float %2976, %2972
  %2979 = fmul fast float %2971, 0x3FDF454380000000
  %2980 = fmul fast float %2979, %2973
  %2981 = fadd fast float %2980, %2977
  %2982 = fadd fast float %2981, %2978
  %2983 = call float @dx.op.dot3.f32(i32 55, float %2968, float %2969, float %2970, float %1820, float %1821, float %1822)  ; Dot3(ax,ay,az,bx,by,bz)
  %2984 = fmul fast float %2983, 0x3FDF454380000000
  %2985 = fmul fast float %2983, %2983
  %2986 = fmul fast float %2985, 0x3FEE471020000000
  %2987 = fadd fast float %2986, 0xBFD42F6020000000
  %2988 = call float @dx.op.dot3.f32(i32 55, float %2933, float %2971, float %2972, float 0x3FD20DD760000000, float %2984, float %2987)  ; Dot3(ax,ay,az,bx,by,bz)
  %2989 = call float @dx.op.binary.f32(i32 35, float %2870, float 0.000000e+00)  ; FMax(a,b)
  %2990 = call float @dx.op.binary.f32(i32 35, float %2926, float 0.000000e+00)  ; FMax(a,b)
  %2991 = call float @dx.op.binary.f32(i32 35, float %2982, float 0.000000e+00)  ; FMax(a,b)
  %2992 = call float @dx.op.binary.f32(i32 35, float %2876, float 0.000000e+00)  ; FMax(a,b)
  %2993 = call float @dx.op.binary.f32(i32 35, float %2932, float 0.000000e+00)  ; FMax(a,b)
  %2994 = call float @dx.op.binary.f32(i32 35, float %2988, float 0.000000e+00)  ; FMax(a,b)
  %2995 = fsub fast float %2191, %2989
  %2996 = fsub fast float %2192, %2990
  %2997 = fsub fast float %2193, %2991
  %2998 = fmul fast float %2995, %1872
  %2999 = fmul fast float %2996, %1872
  %3000 = fmul fast float %2997, %1872
  %3001 = fadd fast float %2998, %2989
  %3002 = fadd fast float %2999, %2990
  %3003 = fadd fast float %3000, %2991
  %3004 = fsub fast float %2188, %2992
  %3005 = fsub fast float %2189, %2993
  %3006 = fsub fast float %2190, %2994
  %3007 = fmul fast float %3004, %1872
  %3008 = fmul fast float %3005, %1872
  %3009 = fmul fast float %3006, %1872
  %3010 = fadd fast float %3007, %2992
  %3011 = fadd fast float %3008, %2993
  %3012 = fadd fast float %3009, %2994
  br label %3013

; <label>:3013                                    ; preds = %2967, %2187
  %3014 = phi float [ %3010, %2967 ], [ %2188, %2187 ]
  %3015 = phi float [ %3011, %2967 ], [ %2189, %2187 ]
  %3016 = phi float [ %3012, %2967 ], [ %2190, %2187 ]
  %3017 = phi float [ %3001, %2967 ], [ %2191, %2187 ]
  %3018 = phi float [ %3002, %2967 ], [ %2192, %2187 ]
  %3019 = phi float [ %3003, %2967 ], [ %2193, %2187 ]
  %3020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3021 = extractvalue %dx.types.CBufRet.f32 %3020, 0
  %3022 = call float @dx.op.binary.f32(i32 36, float %1804, float %3021)  ; FMin(a,b)
  %3023 = fsub fast float 1.000000e+00, %1823
  %3024 = fmul fast float %3022, %3023
  %3025 = fsub fast float 1.000000e+00, %3024
  %3026 = bitcast float %3025 to i32
  %3027 = sub nsw i32 2129859010, %3026
  %3028 = bitcast i32 %3027 to float
  %3029 = call float @dx.op.binary.f32(i32 36, float %1805, float %3021)  ; FMin(a,b)
  %3030 = fmul fast float %3029, %3023
  %3031 = fsub fast float 1.000000e+00, %3030
  %3032 = bitcast float %3031 to i32
  %3033 = sub nsw i32 2129859010, %3032
  %3034 = bitcast i32 %3033 to float
  %3035 = call float @dx.op.binary.f32(i32 36, float %1806, float %3021)  ; FMin(a,b)
  %3036 = fmul fast float %3035, %3023
  %3037 = fsub fast float 1.000000e+00, %3036
  %3038 = bitcast float %3037 to i32
  %3039 = sub nsw i32 2129859010, %3038
  %3040 = bitcast i32 %3039 to float
  %3041 = fmul fast float %3017, %1823
  %3042 = fmul fast float %3041, %3028
  %3043 = fmul fast float %3018, %1823
  %3044 = fmul fast float %3043, %3034
  %3045 = fmul fast float %3019, %1823
  %3046 = fmul fast float %3045, %3040
  %3047 = call float @dx.op.binary.f32(i32 36, float %1801, float %3021)  ; FMin(a,b)
  %3048 = fmul fast float %3047, %3023
  %3049 = fsub fast float 1.000000e+00, %3048
  %3050 = bitcast float %3049 to i32
  %3051 = sub nsw i32 2129859010, %3050
  %3052 = bitcast i32 %3051 to float
  %3053 = call float @dx.op.binary.f32(i32 36, float %1802, float %3021)  ; FMin(a,b)
  %3054 = fmul fast float %3053, %3023
  %3055 = fsub fast float 1.000000e+00, %3054
  %3056 = bitcast float %3055 to i32
  %3057 = sub nsw i32 2129859010, %3056
  %3058 = bitcast i32 %3057 to float
  %3059 = call float @dx.op.binary.f32(i32 36, float %1812, float %3021)  ; FMin(a,b)
  %3060 = fmul fast float %3059, %3023
  %3061 = fsub fast float 1.000000e+00, %3060
  %3062 = bitcast float %3061 to i32
  %3063 = sub nsw i32 2129859010, %3062
  %3064 = bitcast i32 %3063 to float
  %3065 = fmul fast float %3014, %1823
  %3066 = fmul fast float %3065, %3052
  %3067 = fmul fast float %3015, %1823
  %3068 = fmul fast float %3067, %3058
  %3069 = fmul fast float %3016, %1823
  %3070 = fmul fast float %3069, %3064
  %3071 = call float @dx.op.dot3.f32(i32 55, float %3042, float %3044, float %3046, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3072 = select i1 %175, float 0.000000e+00, float %3042
  %3073 = select i1 %175, float %3071, float %3044
  %3074 = select i1 %175, float 0.000000e+00, float %3046
  %3075 = call float @dx.op.dot3.f32(i32 55, float %3066, float %3068, float %3070, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3076 = select i1 %175, float 0.000000e+00, float %3066
  %3077 = select i1 %175, float %3075, float %3068
  %3078 = select i1 %175, float 0.000000e+00, float %3070
  %3079 = fmul fast float %1814, 9.843750e-01
  %3080 = fmul fast float %1810, 9.843750e-01
  %3081 = fadd fast float %3079, 7.812500e-03
  %3082 = fadd fast float %3080, 7.812500e-03
  %3083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3081, float %3082, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3084 = extractvalue %dx.types.ResRet.f32 %3083, 2
  %3085 = extractvalue %dx.types.ResRet.f32 %3083, 3
  %3086 = fmul fast float %3084, %1801
  %3087 = fmul fast float %3084, %1802
  %3088 = fmul fast float %3084, %1812
  %3089 = fadd fast float %3086, %3085
  %3090 = fadd fast float %3087, %3085
  %3091 = fadd fast float %3088, %3085
  %3092 = fcmp fast ogt float %1178, 0.000000e+00
  br i1 %3092, label %3093, label %3119

; <label>:3093                                    ; preds = %3013
  %3094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1178, float %1814, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3095 = extractvalue %dx.types.ResRet.f32 %3094, 0
  %3096 = extractvalue %dx.types.ResRet.f32 %3094, 1
  %3097 = extractvalue %dx.types.ResRet.f32 %3094, 2
  %3098 = fadd fast float %3095, -5.000000e-01
  %3099 = fadd fast float %3096, -5.000000e-01
  %3100 = fadd fast float %3097, -5.000000e-01
  %3101 = fsub fast float 1.000000e+00, %1801
  %3102 = fsub fast float 1.000000e+00, %1802
  %3103 = fsub fast float 1.000000e+00, %1812
  %3104 = fmul fast float %1801, 4.000000e+00
  %3105 = fmul fast float %3104, %3101
  %3106 = fmul fast float %3105, %3098
  %3107 = fmul fast float %1802, 4.000000e+00
  %3108 = fmul fast float %3107, %3102
  %3109 = fmul fast float %3108, %3099
  %3110 = fmul fast float %1812, 4.000000e+00
  %3111 = fmul fast float %3110, %3103
  %3112 = fmul fast float %3111, %3100
  %3113 = fadd fast float %3106, %3089
  %3114 = fadd fast float %3109, %3090
  %3115 = fadd fast float %3112, %3091
  %3116 = call float @dx.op.unary.f32(i32 7, float %3113)  ; Saturate(value)
  %3117 = call float @dx.op.unary.f32(i32 7, float %3114)  ; Saturate(value)
  %3118 = call float @dx.op.unary.f32(i32 7, float %3115)  ; Saturate(value)
  br label %3119

; <label>:3119                                    ; preds = %3093, %3013
  %3120 = phi float [ %3116, %3093 ], [ %3089, %3013 ]
  %3121 = phi float [ %3117, %3093 ], [ %3090, %3013 ]
  %3122 = phi float [ %3118, %3093 ], [ %3091, %3013 ]
  %3123 = call float @dx.op.binary.f32(i32 35, float %3121, float %3122)  ; FMax(a,b)
  %3124 = call float @dx.op.binary.f32(i32 35, float %3120, float %3123)  ; FMax(a,b)
  %3125 = fsub fast float 1.000000e+00, %3124
  %3126 = fmul fast float %3125, %3072
  %3127 = fmul fast float %3125, %3073
  %3128 = fmul fast float %3125, %3074
  %3129 = call float @dx.op.dot3.f32(i32 55, float %1804, float %1805, float %1806, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3130 = fcmp fast ogt float %3129, 0x3E7FF19E20000000
  %3131 = fdiv fast float 1.000000e+00, %3129
  %3132 = select i1 %3130, float %3131, float 0.000000e+00
  %3133 = fmul fast float %3132, %1804
  %3134 = fmul fast float %3132, %1805
  %3135 = fmul fast float %3132, %1806
  %3136 = fadd fast float %3133, -1.000000e+00
  %3137 = fadd fast float %3134, -1.000000e+00
  %3138 = fadd fast float %3135, -1.000000e+00
  %3139 = fmul fast float %3136, 5.000000e-01
  %3140 = fmul fast float %3137, 5.000000e-01
  %3141 = fmul fast float %3138, 5.000000e-01
  %3142 = fadd fast float %3139, 1.000000e+00
  %3143 = fadd fast float %3140, 1.000000e+00
  %3144 = fadd fast float %3141, 1.000000e+00
  %3145 = fmul fast float %3120, %3076
  %3146 = fmul fast float %3121, %3077
  %3147 = fmul fast float %3122, %3078
  %3148 = fsub fast float 1.000000e+00, %1814
  %3149 = bitcast float %3148 to i32
  %3150 = sitofp i32 %3149 to float
  %3151 = fmul fast float %3150, 5.000000e+00
  %3152 = fadd fast float %3151, 0xC1EFBF8940000000
  %3153 = fptosi float %3152 to i32
  %3154 = bitcast i32 %3153 to float
  %3155 = fmul fast float %3154, %1177
  %3156 = fmul fast float %3072, %3155
  %3157 = fmul fast float %3156, %3125
  %3158 = fmul fast float %3157, %3142
  %3159 = fmul fast float %3073, %3155
  %3160 = fmul fast float %3159, %3125
  %3161 = fmul fast float %3160, %3143
  %3162 = fmul fast float %3074, %3155
  %3163 = fmul fast float %3162, %3125
  %3164 = fmul fast float %3163, %3144
  %3165 = fmul fast float %3126, %1198
  %3166 = fmul fast float %3127, %1198
  %3167 = fmul fast float %3128, %1198
  %3168 = fadd fast float %3145, %1179
  %3169 = fadd fast float %3168, %3158
  %3170 = fmul fast float %3169, %1198
  %3171 = fadd fast float %3146, %1180
  %3172 = fadd fast float %3171, %3161
  %3173 = fmul fast float %3172, %1198
  %3174 = fadd fast float %3147, %1181
  %3175 = fadd fast float %3174, %3164
  %3176 = fmul fast float %3175, %1198
  %3177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3178 = extractvalue %dx.types.CBufRet.f32 %3177, 3
  %3179 = fcmp fast oeq float %3178, 0.000000e+00
  br i1 %3179, label %3407, label %3180

; <label>:3180                                    ; preds = %3119
  %3181 = extractvalue %dx.types.CBufRet.f32 %3177, 0
  %3182 = extractvalue %dx.types.CBufRet.f32 %3177, 1
  %3183 = extractvalue %dx.types.CBufRet.f32 %3177, 2
  %3184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3185 = extractvalue %dx.types.CBufRet.f32 %3184, 0
  %3186 = extractvalue %dx.types.CBufRet.f32 %3184, 1
  %3187 = extractvalue %dx.types.CBufRet.f32 %3184, 2
  %3188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3189 = extractvalue %dx.types.CBufRet.f32 %3188, 0
  %3190 = extractvalue %dx.types.CBufRet.f32 %3188, 1
  %3191 = call float @dx.op.dot3.f32(i32 55, float %3185, float %3186, float %3187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3192 = select i1 %175, float %3189, float %3185
  %3193 = select i1 %175, float %3191, float %3186
  %3194 = select i1 %175, float %3190, float %3187
  %3195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3196 = extractvalue %dx.types.CBufRet.f32 %3195, 1
  %3197 = fcmp fast une float %3196, 0.000000e+00
  br i1 %3197, label %3198, label %3215

; <label>:3198                                    ; preds = %3180
  %3199 = fptoui float %57 to i32
  %3200 = fptoui float %58 to i32
  %3201 = lshr i32 %3199, 4
  %3202 = lshr i32 %3200, 4
  %3203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3204 = extractvalue %dx.types.CBufRet.f32 %3203, 0
  %3205 = fptoui float %3204 to i32
  %3206 = add i32 %3205, 15
  %3207 = lshr i32 %3206, 4
  %3208 = mul i32 %3207, %3202
  %3209 = add i32 %3208, %3201
  %3210 = shl i32 %3209, 3
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3210, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = and i32 %3212, -268435456
  %3214 = icmp eq i32 %3213, -1342177280
  br i1 %3214, label %3225, label %3215

; <label>:3215                                    ; preds = %3198, %3180
  %3216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3217 = extractvalue %dx.types.CBufRet.f32 %3216, 2
  %3218 = extractvalue %dx.types.CBufRet.f32 %3216, 3
  %3219 = fmul fast float %3217, %57
  %3220 = fmul fast float %3218, %58
  %3221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %3219, float %3220, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3222 = extractvalue %dx.types.ResRet.f32 %3221, 0
  %3223 = extractvalue %dx.types.ResRet.f32 %3221, 1
  %3224 = extractvalue %dx.types.ResRet.f32 %3221, 2
  br label %3225

; <label>:3225                                    ; preds = %3215, %3198
  %3226 = phi float [ %3222, %3215 ], [ 0.000000e+00, %3198 ]
  %3227 = phi float [ %3223, %3215 ], [ 0.000000e+00, %3198 ]
  %3228 = phi float [ %3224, %3215 ], [ 0.000000e+00, %3198 ]
  %3229 = call float @dx.op.binary.f32(i32 36, float %3227, float %3228)  ; FMin(a,b)
  %3230 = call float @dx.op.binary.f32(i32 36, float %3226, float %3229)  ; FMin(a,b)
  %3231 = fcmp fast ogt float %3230, 0.000000e+00
  br i1 %3231, label %3232, label %3407, !dx.controlflow.hints !77

; <label>:3232                                    ; preds = %3225
  %3233 = fmul fast float %3226, %3192
  %3234 = fmul fast float %3227, %3193
  %3235 = fmul fast float %3228, %3194
  %3236 = fsub fast float %3181, %1800
  %3237 = fsub fast float %3182, %1799
  %3238 = fsub fast float %3183, %1798
  %3239 = call float @dx.op.dot3.f32(i32 55, float %3236, float %3237, float %3238, float %3236, float %3237, float %3238)  ; Dot3(ax,ay,az,bx,by,bz)
  %3240 = call float @dx.op.unary.f32(i32 25, float %3239)  ; Rsqrt(value)
  %3241 = fmul fast float %3240, %3236
  %3242 = fmul fast float %3240, %3237
  %3243 = fmul fast float %3240, %3238
  %3244 = call float @dx.op.dot3.f32(i32 55, float %3181, float %3182, float %3183, float %1807, float %1808, float %1809)  ; Dot3(ax,ay,az,bx,by,bz)
  %3245 = call float @dx.op.dot3.f32(i32 55, float %1797, float %1796, float %1795, float %3241, float %3242, float %3243)  ; Dot3(ax,ay,az,bx,by,bz)
  %3246 = call float @dx.op.unary.f32(i32 7, float %3244)  ; Saturate(value)
  %3247 = fmul fast float %3246, %3246
  %3248 = fmul fast float %3247, %1827
  %3249 = call float @dx.op.unary.f32(i32 7, float %3248)  ; Saturate(value)
  %3250 = fmul fast float %3249, %3246
  %3251 = call float @dx.op.dot3.f32(i32 55, float %1807, float %1808, float %1809, float %3241, float %3242, float %3243)  ; Dot3(ax,ay,az,bx,by,bz)
  %3252 = fmul fast float %3251, %3251
  %3253 = call float @dx.op.unary.f32(i32 6, float %3244)  ; FAbs(value)
  %3254 = fsub fast float 1.000000e+00, %1810
  %3255 = call float @dx.op.binary.f32(i32 35, float %3254, float 0x3F847AE140000000)  ; FMax(a,b)
  %3256 = fmul fast float %3255, %3255
  %3257 = fmul fast float %3256, %3256
  %3258 = fsub fast float 1.000000e+00, %3257
  %3259 = fmul fast float %1814, %1814
  %3260 = fmul fast float %3259, %3258
  %3261 = fadd fast float %3260, %3257
  %3262 = bitcast float %3261 to i32
  %3263 = ashr i32 %3262, 1
  %3264 = add nsw i32 %3263, 532487669
  %3265 = bitcast i32 %3264 to float
  %3266 = fadd fast float %3265, %1814
  %3267 = fmul fast float %3257, %3252
  %3268 = fsub fast float 1.000000e+00, %3252
  %3269 = fadd fast float %3268, %3267
  %3270 = fmul fast float %3253, %3253
  %3271 = fmul fast float %3270, %3258
  %3272 = fadd fast float %3271, %3257
  %3273 = bitcast float %3272 to i32
  %3274 = ashr i32 %3273, 1
  %3275 = add nsw i32 %3274, 532487669
  %3276 = bitcast i32 %3275 to float
  %3277 = fadd fast float %3276, %3253
  %3278 = fmul fast float %3269, %3269
  %3279 = fmul fast float %3278, %3266
  %3280 = fmul fast float %3279, %3277
  %3281 = fdiv fast float 0x3FF0A00000000000, %3280
  %3282 = fmul fast float %3281, %3257
  %3283 = call float @dx.op.unary.f32(i32 6, float %3245)  ; FAbs(value)
  %3284 = fsub fast float 1.000000e+00, %3283
  %3285 = bitcast float %3284 to i32
  %3286 = sitofp i32 %3285 to float
  %3287 = fmul fast float %3286, 5.000000e+00
  %3288 = fadd fast float %3287, 0xC1EFBF8940000000
  %3289 = fptosi float %3288 to i32
  %3290 = bitcast i32 %3289 to float
  %3291 = fsub fast float 1.000000e+00, %1801
  %3292 = fsub fast float 1.000000e+00, %1802
  %3293 = fsub fast float 1.000000e+00, %1812
  %3294 = fmul fast float %3290, %3291
  %3295 = fmul fast float %3290, %3292
  %3296 = fmul fast float %3290, %3293
  %3297 = fadd fast float %3294, %1801
  %3298 = fadd fast float %3295, %1802
  %3299 = fadd fast float %3296, %1812
  br i1 %3092, label %3300, label %3323

; <label>:3300                                    ; preds = %3232
  %3301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1178, float %3283, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3302 = extractvalue %dx.types.ResRet.f32 %3301, 0
  %3303 = extractvalue %dx.types.ResRet.f32 %3301, 1
  %3304 = extractvalue %dx.types.ResRet.f32 %3301, 2
  %3305 = fadd fast float %3302, -5.000000e-01
  %3306 = fadd fast float %3303, -5.000000e-01
  %3307 = fadd fast float %3304, -5.000000e-01
  %3308 = fmul fast float %1801, 4.000000e+00
  %3309 = fmul fast float %3308, %3291
  %3310 = fmul fast float %3309, %3305
  %3311 = fmul fast float %1802, 4.000000e+00
  %3312 = fmul fast float %3311, %3292
  %3313 = fmul fast float %3312, %3306
  %3314 = fmul fast float %1812, 4.000000e+00
  %3315 = fmul fast float %3314, %3293
  %3316 = fmul fast float %3315, %3307
  %3317 = fadd fast float %3310, %3297
  %3318 = fadd fast float %3313, %3298
  %3319 = fadd fast float %3316, %3299
  %3320 = call float @dx.op.unary.f32(i32 7, float %3317)  ; Saturate(value)
  %3321 = call float @dx.op.unary.f32(i32 7, float %3318)  ; Saturate(value)
  %3322 = call float @dx.op.unary.f32(i32 7, float %3319)  ; Saturate(value)
  br label %3323

; <label>:3323                                    ; preds = %3300, %3232
  %3324 = phi float [ %3320, %3300 ], [ %3297, %3232 ]
  %3325 = phi float [ %3321, %3300 ], [ %3298, %3232 ]
  %3326 = phi float [ %3322, %3300 ], [ %3299, %3232 ]
  %3327 = fmul fast float %3244, 9.843750e-01
  %3328 = fadd fast float %3327, 7.812500e-03
  %3329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3328, float %3082, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3330 = extractvalue %dx.types.ResRet.f32 %3329, 2
  %3331 = extractvalue %dx.types.ResRet.f32 %3329, 3
  %3332 = fmul fast float %3330, %1801
  %3333 = fmul fast float %3330, %1802
  %3334 = fmul fast float %3330, %1812
  %3335 = fadd fast float %3332, %3331
  %3336 = fadd fast float %3333, %3331
  %3337 = fadd fast float %3334, %3331
  br i1 %3092, label %3338, label %3361

; <label>:3338                                    ; preds = %3323
  %3339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1178, float %3244, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3340 = extractvalue %dx.types.ResRet.f32 %3339, 0
  %3341 = extractvalue %dx.types.ResRet.f32 %3339, 1
  %3342 = extractvalue %dx.types.ResRet.f32 %3339, 2
  %3343 = fadd fast float %3340, -5.000000e-01
  %3344 = fadd fast float %3341, -5.000000e-01
  %3345 = fadd fast float %3342, -5.000000e-01
  %3346 = fmul fast float %1801, 4.000000e+00
  %3347 = fmul fast float %3346, %3291
  %3348 = fmul fast float %3347, %3343
  %3349 = fmul fast float %1802, 4.000000e+00
  %3350 = fmul fast float %3349, %3292
  %3351 = fmul fast float %3350, %3344
  %3352 = fmul fast float %1812, 4.000000e+00
  %3353 = fmul fast float %3352, %3293
  %3354 = fmul fast float %3353, %3345
  %3355 = fadd fast float %3348, %3335
  %3356 = fadd fast float %3351, %3336
  %3357 = fadd fast float %3354, %3337
  %3358 = call float @dx.op.unary.f32(i32 7, float %3355)  ; Saturate(value)
  %3359 = call float @dx.op.unary.f32(i32 7, float %3356)  ; Saturate(value)
  %3360 = call float @dx.op.unary.f32(i32 7, float %3357)  ; Saturate(value)
  br label %3361

; <label>:3361                                    ; preds = %3338, %3323
  %3362 = phi float [ %3358, %3338 ], [ %3335, %3323 ]
  %3363 = phi float [ %3359, %3338 ], [ %3336, %3323 ]
  %3364 = phi float [ %3360, %3338 ], [ %3337, %3323 ]
  %3365 = call float @dx.op.binary.f32(i32 35, float %3363, float %3364)  ; FMax(a,b)
  %3366 = call float @dx.op.binary.f32(i32 35, float %3362, float %3365)  ; FMax(a,b)
  %3367 = fsub fast float 1.000000e+00, %3366
  %3368 = fmul fast float %3324, %3282
  %3369 = fmul fast float %3325, %3282
  %3370 = fmul fast float %3326, %3282
  %3371 = fsub fast float 1.000000e+00, %3245
  %3372 = bitcast float %3371 to i32
  %3373 = sitofp i32 %3372 to float
  %3374 = fmul fast float %3373, 5.000000e+00
  %3375 = fadd fast float %3374, 0xC1EFBF8940000000
  %3376 = fptosi float %3375 to i32
  %3377 = bitcast i32 %3376 to float
  %3378 = fmul fast float %3377, %1177
  %3379 = fmul fast float %3367, %3378
  %3380 = fmul fast float %3379, %3142
  %3381 = fmul fast float %3379, %3143
  %3382 = fmul fast float %3379, %3144
  %3383 = fadd fast float %3380, %3368
  %3384 = fadd fast float %3381, %3369
  %3385 = fadd fast float %3382, %3370
  %3386 = fmul fast float %3250, %3233
  %3387 = fmul fast float %3386, %3367
  %3388 = fmul fast float %3250, %3234
  %3389 = fmul fast float %3388, %3367
  %3390 = fmul fast float %3250, %3235
  %3391 = fmul fast float %3390, %3367
  %3392 = fmul fast float %3386, %3383
  %3393 = fmul fast float %3388, %3384
  %3394 = fmul fast float %3390, %3385
  %3395 = fadd fast float %3387, %3126
  %3396 = fmul fast float %3395, %1198
  %3397 = fadd fast float %3389, %3127
  %3398 = fmul fast float %3397, %1198
  %3399 = fadd fast float %3391, %3128
  %3400 = fmul fast float %3399, %1198
  %3401 = fadd fast float %3392, %3169
  %3402 = fmul fast float %3401, %1198
  %3403 = fadd fast float %3393, %3172
  %3404 = fmul fast float %3403, %1198
  %3405 = fadd fast float %3394, %3175
  %3406 = fmul fast float %3405, %1198
  br label %3407

; <label>:3407                                    ; preds = %3361, %3225, %3119
  %3408 = phi float [ %3170, %3119 ], [ %3170, %3225 ], [ %3402, %3361 ]
  %3409 = phi float [ %3173, %3119 ], [ %3173, %3225 ], [ %3404, %3361 ]
  %3410 = phi float [ %3176, %3119 ], [ %3176, %3225 ], [ %3406, %3361 ]
  %3411 = phi float [ %3165, %3119 ], [ %3165, %3225 ], [ %3396, %3361 ]
  %3412 = phi float [ %3166, %3119 ], [ %3166, %3225 ], [ %3398, %3361 ]
  %3413 = phi float [ %3167, %3119 ], [ %3167, %3225 ], [ %3400, %3361 ]
  %3414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3415 = extractvalue %dx.types.CBufRet.i32 %3414, 0
  %3416 = icmp eq i32 %3415, 0
  br i1 %3416, label %3851, label %3417

; <label>:3417                                    ; preds = %3407
  %3418 = fptoui float %57 to i32
  %3419 = fptoui float %58 to i32
  %3420 = lshr i32 %3418, 4
  %3421 = lshr i32 %3419, 4
  %3422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3423 = extractvalue %dx.types.CBufRet.i32 %3422, 0
  %3424 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3421, i32 %3423, i32 %3420)  ; UMad(a,b,c)
  %3425 = add nsw i32 %3415, -1
  %3426 = call i32 @dx.op.binary.i32(i32 37, i32 %3425, i32 0)  ; IMax(a,b)
  %3427 = call float @dx.op.binary.f32(i32 35, float %52, float 0.000000e+00)  ; FMax(a,b)
  %3428 = fptoui float %3427 to i32
  %3429 = lshr i32 %3428, 5
  %3430 = call i32 @dx.op.binary.i32(i32 40, i32 %3429, i32 8191)  ; UMin(a,b)
  %3431 = shl i32 %3430, 2
  %3432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.i32 %3432, 0
  %3434 = lshr i32 %3433, 16
  %3435 = and i32 %3433, 65535
  %3436 = lshr i32 %3433, 21
  %3437 = lshr i32 %3435, 5
  %3438 = call i32 @dx.op.binary.i32(i32 40, i32 %3437, i32 %3426)  ; UMin(a,b)
  %3439 = icmp ugt i32 %3436, %3438
  br i1 %3439, label %3851, label %3440

; <label>:3440                                    ; preds = %3417
  br label %3441

; <label>:3441                                    ; preds = %3841, %3440
  %3442 = phi i32 [ %3848, %3841 ], [ %3436, %3440 ]
  %3443 = phi float [ %3842, %3841 ], [ %3408, %3440 ]
  %3444 = phi float [ %3843, %3841 ], [ %3409, %3440 ]
  %3445 = phi float [ %3844, %3841 ], [ %3410, %3440 ]
  %3446 = phi float [ %3845, %3841 ], [ %3411, %3440 ]
  %3447 = phi float [ %3846, %3841 ], [ %3412, %3440 ]
  %3448 = phi float [ %3847, %3841 ], [ %3413, %3440 ]
  %3449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3450 = extractvalue %dx.types.CBufRet.i32 %3449, 0
  %3451 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3424, i32 %3450, i32 %3442)  ; UMad(a,b,c)
  %3452 = shl i32 %3451, 2
  %3453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3452, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.i32 %3453, 0
  %3455 = shl i32 %3442, 5
  %3456 = sub nsw i32 %3434, %3455
  %3457 = call i32 @dx.op.binary.i32(i32 37, i32 %3456, i32 0)  ; IMax(a,b)
  %3458 = call i32 @dx.op.binary.i32(i32 38, i32 %3457, i32 31)  ; IMin(a,b)
  %3459 = sub nsw i32 1, %3434
  %3460 = add nsw i32 %3459, %3435
  %3461 = call i32 @dx.op.binary.i32(i32 37, i32 %3460, i32 0)  ; IMax(a,b)
  %3462 = call i32 @dx.op.binary.i32(i32 38, i32 %3461, i32 32)  ; IMin(a,b)
  %3463 = and i32 %3462, 31
  %3464 = shl i32 -1, %3463
  %3465 = xor i32 %3464, -1
  %3466 = and i32 %3458, 31
  %3467 = shl i32 %3465, %3466
  %3468 = icmp eq i32 %3462, 32
  %3469 = select i1 %3468, i32 -1, i32 %3467
  %3470 = and i32 %3469, %3454
  %3471 = icmp eq i32 %3470, 0
  br i1 %3471, label %3841, label %3472

; <label>:3472                                    ; preds = %3441
  br label %3473

; <label>:3473                                    ; preds = %3553, %3472
  %3474 = phi i32 [ %3485, %3553 ], [ %3470, %3472 ]
  %3475 = phi float [ %3554, %3553 ], [ %3443, %3472 ]
  %3476 = phi float [ %3555, %3553 ], [ %3444, %3472 ]
  %3477 = phi float [ %3556, %3553 ], [ %3445, %3472 ]
  %3478 = phi float [ %3557, %3553 ], [ %3446, %3472 ]
  %3479 = phi float [ %3558, %3553 ], [ %3447, %3472 ]
  %3480 = phi float [ %3559, %3553 ], [ %3448, %3472 ]
  %3481 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3474)  ; FirstbitLo(value)
  %3482 = add i32 %3481, %3455
  %3483 = and i32 %3481, 31
  %3484 = shl i32 1, %3483
  %3485 = xor i32 %3484, %3474
  %3486 = mul i32 %3482, 112
  %3487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3486, i32 undef)  ; BufferLoad(srv,index,wot)
  %3488 = extractvalue %dx.types.ResRet.f32 %3487, 0
  %3489 = extractvalue %dx.types.ResRet.f32 %3487, 1
  %3490 = extractvalue %dx.types.ResRet.f32 %3487, 2
  %3491 = or i32 %3486, 12
  %3492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.f32 %3492, 0
  %3494 = add i32 %3486, 44
  %3495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3494, i32 undef)  ; BufferLoad(srv,index,wot)
  %3496 = extractvalue %dx.types.ResRet.f32 %3495, 0
  %3497 = add i32 %3486, 48
  %3498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3497, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.f32 %3498, 0
  %3500 = extractvalue %dx.types.ResRet.f32 %3498, 1
  %3501 = extractvalue %dx.types.ResRet.f32 %3498, 2
  %3502 = add i32 %3486, 80
  %3503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3502, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.f32 %3503, 1
  %3505 = extractvalue %dx.types.ResRet.f32 %3503, 2
  %3506 = call float @dx.op.dot3.f32(i32 55, float %3488, float %3489, float %3490, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3507 = select i1 %175, float %3504, float %3488
  %3508 = select i1 %175, float %3506, float %3489
  %3509 = select i1 %175, float %3505, float %3490
  %3510 = fsub fast float %3499, %104
  %3511 = fsub fast float %3500, %105
  %3512 = fsub fast float %3501, %106
  %3513 = call float @dx.op.dot3.f32(i32 55, float %3510, float %3511, float %3512, float %3510, float %3511, float %3512)  ; Dot3(ax,ay,az,bx,by,bz)
  %3514 = call float @dx.op.unary.f32(i32 24, float %3513)  ; Sqrt(value)
  %3515 = fdiv fast float 1.000000e+00, %3514
  %3516 = fmul fast float %3515, %3510
  %3517 = fmul fast float %3515, %3511
  %3518 = fmul fast float %3515, %3512
  %3519 = fadd fast float %3514, %3493
  %3520 = fdiv fast float 1.000000e+00, %3519
  %3521 = fmul float %3496, %3520
  %3522 = fmul float %3521, %3521
  %3523 = call float @dx.op.unary.f32(i32 7, float %3522)  ; Saturate(value)
  %3524 = and i32 %3484, %3470
  %3525 = icmp eq i32 %3524, 0
  br i1 %3525, label %3548, label %3526, !dx.controlflow.hints !78

; <label>:3526                                    ; preds = %3473
  %3527 = lshr i32 %3418, 5
  %3528 = lshr i32 %3419, 5
  %3529 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %3527, i32 %3528, i32 %3482, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3530 = extractvalue %dx.types.ResRet.i32 %3529, 0
  %3531 = and i32 %3530, 3
  %3532 = icmp eq i32 %3531, 0
  %3533 = select i1 %3532, float 1.000000e+00, float 0.000000e+00
  %3534 = icmp eq i32 %3531, 3
  br i1 %3534, label %3535, label %3548

; <label>:3535                                    ; preds = %3526
  %3536 = lshr i32 %3530, 10
  %3537 = and i32 %3536, 8160
  %3538 = and i32 %3419, 31
  %3539 = or i32 %3537, %3538
  %3540 = lshr i32 %3530, 1
  %3541 = and i32 %3540, 16352
  %3542 = and i32 %3418, 31
  %3543 = or i32 %3541, %3542
  %3544 = lshr i32 %3530, 23
  %3545 = and i32 %3544, 255
  %3546 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %3543, i32 %3539, i32 %3545, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3547 = extractvalue %dx.types.ResRet.f32 %3546, 0
  br label %3548

; <label>:3548                                    ; preds = %3535, %3526, %3473
  %3549 = phi float [ %3547, %3535 ], [ %3533, %3526 ], [ 0.000000e+00, %3473 ]
  %3550 = call float @dx.op.binary.f32(i32 36, float %3549, float %3549)  ; FMin(a,b)
  %3551 = call float @dx.op.binary.f32(i32 36, float %3549, float %3550)  ; FMin(a,b)
  %3552 = fcmp fast ogt float %3551, 0.000000e+00
  br i1 %3552, label %3561, label %3553, !dx.controlflow.hints !79

; <label>:3553                                    ; preds = %3797, %3548
  %3554 = phi float [ %3475, %3548 ], [ %3837, %3797 ]
  %3555 = phi float [ %3476, %3548 ], [ %3838, %3797 ]
  %3556 = phi float [ %3477, %3548 ], [ %3839, %3797 ]
  %3557 = phi float [ %3478, %3548 ], [ %3831, %3797 ]
  %3558 = phi float [ %3479, %3548 ], [ %3832, %3797 ]
  %3559 = phi float [ %3480, %3548 ], [ %3833, %3797 ]
  %3560 = icmp eq i32 %3474, %3484
  br i1 %3560, label %3840, label %3473

; <label>:3561                                    ; preds = %3548
  %3562 = fmul fast float %3549, %3507
  %3563 = fmul fast float %3549, %3508
  %3564 = fmul fast float %3549, %3509
  %3565 = fsub fast float %3501, %1600
  %3566 = fcmp fast ogt float %3565, 0.000000e+00
  %3567 = fsub fast float %106, %1600
  %3568 = fcmp fast ogt float %3567, 0.000000e+00
  %3569 = xor i1 %3568, %3566
  %3570 = fsub fast float %1600, %3501
  %3571 = fmul fast float %3570, 2.000000e+00
  %3572 = fadd fast float %3571, %3501
  %3573 = select i1 %3569, float %3501, float %3572
  %3574 = fsub fast float %3573, %106
  %3575 = call float @dx.op.dot3.f32(i32 55, float %3510, float %3511, float %3574, float %3510, float %3511, float %3574)  ; Dot3(ax,ay,az,bx,by,bz)
  %3576 = call float @dx.op.unary.f32(i32 25, float %3575)  ; Rsqrt(value)
  %3577 = fmul fast float %3576, %3510
  %3578 = fmul fast float %3576, %3511
  %3579 = fmul fast float %3576, %3574
  %3580 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1608)  ; Dot3(ax,ay,az,bx,by,bz)
  %3581 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3577, float %3578, float %3579)  ; Dot3(ax,ay,az,bx,by,bz)
  %3582 = fdiv fast float 1.000000e+00, %3581
  %3583 = fmul fast float %3582, %3580
  %3584 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3567, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3585 = fcmp fast ogt float %3584, 0.000000e+00
  %3586 = fcmp fast olt float %3584, 0.000000e+00
  %3587 = zext i1 %3585 to i32
  %3588 = zext i1 %3586 to i32
  %3589 = sub nsw i32 %3587, %3588
  %3590 = sitofp i32 %3589 to float
  %3591 = fsub fast float %3573, %1600
  %3592 = call float @dx.op.dot3.f32(i32 55, float %3510, float %3511, float %3591, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3593 = fcmp fast ogt float %3592, 0.000000e+00
  %3594 = fcmp fast olt float %3592, 0.000000e+00
  %3595 = zext i1 %3593 to i32
  %3596 = zext i1 %3594 to i32
  %3597 = sub nsw i32 %3595, %3596
  %3598 = sitofp i32 %3597 to float
  %3599 = fcmp fast une float %3590, %3598
  br i1 %3599, label %3600, label %3610

; <label>:3600                                    ; preds = %3561
  %3601 = fmul fast float %3583, %3579
  %3602 = fmul fast float %3583, %3578
  %3603 = fmul fast float %3583, %3577
  %3604 = fmul fast float %3603, %3603
  %3605 = fmul fast float %3602, %3602
  %3606 = fadd fast float %3604, %3605
  %3607 = fmul fast float %3601, %3601
  %3608 = fadd fast float %3606, %3607
  %3609 = call float @dx.op.unary.f32(i32 24, float %3608)  ; Sqrt(value)
  br label %3622

; <label>:3610                                    ; preds = %3561
  %3611 = icmp slt i32 %3589, 0
  br i1 %3611, label %3612, label %3622

; <label>:3612                                    ; preds = %3610
  %3613 = fsub fast float %104, %3499
  %3614 = fsub fast float %105, %3500
  %3615 = fsub fast float %106, %3573
  %3616 = fmul fast float %3613, %3613
  %3617 = fmul fast float %3614, %3614
  %3618 = fadd fast float %3616, %3617
  %3619 = fmul fast float %3615, %3615
  %3620 = fadd fast float %3618, %3619
  %3621 = call float @dx.op.unary.f32(i32 24, float %3620)  ; Sqrt(value)
  br label %3622

; <label>:3622                                    ; preds = %3612, %3610, %3600
  %3623 = phi float [ %3609, %3600 ], [ %3621, %3612 ], [ 0.000000e+00, %3610 ]
  %3624 = and i1 %3568, %3566
  %3625 = fsub fast float -0.000000e+00, %3623
  %3626 = select i1 %3624, float -0.000000e+00, float %3625
  %3627 = fmul fast float %1601, 0x3FF7154760000000
  %3628 = fmul fast float %3627, %3626
  %3629 = fmul fast float %1602, 0x3FF7154760000000
  %3630 = fmul fast float %3629, %3626
  %3631 = fmul fast float %1603, 0x3FF7154760000000
  %3632 = fmul fast float %3631, %3626
  %3633 = call float @dx.op.unary.f32(i32 21, float %3628)  ; Exp(value)
  %3634 = call float @dx.op.unary.f32(i32 21, float %3630)  ; Exp(value)
  %3635 = call float @dx.op.unary.f32(i32 21, float %3632)  ; Exp(value)
  %3636 = call float @dx.op.unary.f32(i32 7, float %3633)  ; Saturate(value)
  %3637 = call float @dx.op.unary.f32(i32 7, float %3634)  ; Saturate(value)
  %3638 = call float @dx.op.unary.f32(i32 7, float %3635)  ; Saturate(value)
  %3639 = fmul fast float %3562, %3636
  %3640 = fmul fast float %3563, %3637
  %3641 = fmul fast float %3564, %3638
  %3642 = fsub fast float %3516, %1800
  %3643 = fsub fast float %3517, %1799
  %3644 = fsub fast float %3518, %1798
  %3645 = call float @dx.op.dot3.f32(i32 55, float %3642, float %3643, float %3644, float %3642, float %3643, float %3644)  ; Dot3(ax,ay,az,bx,by,bz)
  %3646 = call float @dx.op.unary.f32(i32 25, float %3645)  ; Rsqrt(value)
  %3647 = fmul fast float %3646, %3642
  %3648 = fmul fast float %3646, %3643
  %3649 = fmul fast float %3646, %3644
  %3650 = call float @dx.op.dot3.f32(i32 55, float %3516, float %3517, float %3518, float %1807, float %1808, float %1809)  ; Dot3(ax,ay,az,bx,by,bz)
  %3651 = call float @dx.op.dot3.f32(i32 55, float %1797, float %1796, float %1795, float %3647, float %3648, float %3649)  ; Dot3(ax,ay,az,bx,by,bz)
  %3652 = call float @dx.op.unary.f32(i32 7, float %3650)  ; Saturate(value)
  %3653 = fmul fast float %3652, %3523
  %3654 = fmul fast float %3652, %3652
  %3655 = fmul fast float %3654, %1827
  %3656 = call float @dx.op.unary.f32(i32 7, float %3655)  ; Saturate(value)
  %3657 = fmul fast float %3653, %3656
  %3658 = bitcast float %3513 to i32
  %3659 = ashr i32 %3658, 1
  %3660 = sub nsw i32 1597463007, %3659
  %3661 = bitcast i32 %3660 to float
  %3662 = fmul fast float %3661, %3510
  %3663 = fmul fast float %3661, %3511
  %3664 = fmul fast float %3661, %3512
  %3665 = fsub fast float %3662, %1800
  %3666 = fsub fast float %3663, %1799
  %3667 = fsub fast float %3664, %1798
  %3668 = call float @dx.op.dot3.f32(i32 55, float %3665, float %3666, float %3667, float %3665, float %3666, float %3667)  ; Dot3(ax,ay,az,bx,by,bz)
  %3669 = call float @dx.op.unary.f32(i32 25, float %3668)  ; Rsqrt(value)
  %3670 = fmul fast float %3665, %3669
  %3671 = fmul fast float %3666, %3669
  %3672 = fmul fast float %3667, %3669
  %3673 = call float @dx.op.dot3.f32(i32 55, float %1807, float %1808, float %1809, float %3670, float %3671, float %3672)  ; Dot3(ax,ay,az,bx,by,bz)
  %3674 = fmul fast float %3673, %3673
  %3675 = call float @dx.op.unary.f32(i32 6, float %3650)  ; FAbs(value)
  %3676 = fsub fast float 1.000000e+00, %1810
  %3677 = call float @dx.op.binary.f32(i32 35, float %3676, float 0x3F847AE140000000)  ; FMax(a,b)
  %3678 = fmul fast float %3677, %3677
  %3679 = fmul fast float %3678, %3678
  %3680 = fsub fast float 1.000000e+00, %3679
  %3681 = fmul fast float %1814, %1814
  %3682 = fmul fast float %3681, %3680
  %3683 = fadd fast float %3682, %3679
  %3684 = bitcast float %3683 to i32
  %3685 = ashr i32 %3684, 1
  %3686 = add nsw i32 %3685, 532487669
  %3687 = bitcast i32 %3686 to float
  %3688 = fadd fast float %3687, %1814
  %3689 = fmul fast float %3679, %3674
  %3690 = fsub fast float 1.000000e+00, %3674
  %3691 = fadd fast float %3690, %3689
  %3692 = fmul fast float %3675, %3675
  %3693 = fmul fast float %3692, %3680
  %3694 = fadd fast float %3693, %3679
  %3695 = bitcast float %3694 to i32
  %3696 = ashr i32 %3695, 1
  %3697 = add nsw i32 %3696, 532487669
  %3698 = bitcast i32 %3697 to float
  %3699 = fadd fast float %3698, %3675
  %3700 = fmul fast float %3691, %3691
  %3701 = fmul fast float %3700, %3688
  %3702 = fmul fast float %3701, %3699
  %3703 = fdiv fast float 1.000000e+00, %3702
  %3704 = bitcast float %3679 to i32
  %3705 = sitofp i32 %3704 to float
  %3706 = fmul fast float %3705, 0x3FE7F73180000000
  %3707 = fadd fast float %3706, 0x41AFE27C40000000
  %3708 = fptosi float %3707 to i32
  %3709 = bitcast i32 %3708 to float
  %3710 = fmul fast float %3496, 0x3FD80E9D60000000
  %3711 = fmul fast float %3710, %3661
  %3712 = fadd fast float %3709, %3711
  %3713 = bitcast float %3712 to i32
  %3714 = sub nsw i32 2129859010, %3713
  %3715 = bitcast i32 %3714 to float
  %3716 = fmul fast float %3679, %3703
  %3717 = fmul fast float %3716, %3709
  %3718 = fmul fast float %3717, %3715
  %3719 = call float @dx.op.unary.f32(i32 6, float %3651)  ; FAbs(value)
  %3720 = fsub fast float 1.000000e+00, %3719
  %3721 = bitcast float %3720 to i32
  %3722 = sitofp i32 %3721 to float
  %3723 = fmul fast float %3722, 5.000000e+00
  %3724 = fadd fast float %3723, 0xC1EFBF8940000000
  %3725 = fptosi float %3724 to i32
  %3726 = bitcast i32 %3725 to float
  %3727 = fsub fast float 1.000000e+00, %1801
  %3728 = fsub fast float 1.000000e+00, %1802
  %3729 = fsub fast float 1.000000e+00, %1812
  %3730 = fmul fast float %3726, %3727
  %3731 = fmul fast float %3726, %3728
  %3732 = fmul fast float %3726, %3729
  %3733 = fadd fast float %3730, %1801
  %3734 = fadd fast float %3731, %1802
  %3735 = fadd fast float %3732, %1812
  br i1 %3092, label %3736, label %3759

; <label>:3736                                    ; preds = %3622
  %3737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1178, float %3719, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3738 = extractvalue %dx.types.ResRet.f32 %3737, 0
  %3739 = extractvalue %dx.types.ResRet.f32 %3737, 1
  %3740 = extractvalue %dx.types.ResRet.f32 %3737, 2
  %3741 = fadd fast float %3738, -5.000000e-01
  %3742 = fadd fast float %3739, -5.000000e-01
  %3743 = fadd fast float %3740, -5.000000e-01
  %3744 = fmul fast float %1801, 4.000000e+00
  %3745 = fmul fast float %3744, %3727
  %3746 = fmul fast float %3745, %3741
  %3747 = fmul fast float %1802, 4.000000e+00
  %3748 = fmul fast float %3747, %3728
  %3749 = fmul fast float %3748, %3742
  %3750 = fmul fast float %1812, 4.000000e+00
  %3751 = fmul fast float %3750, %3729
  %3752 = fmul fast float %3751, %3743
  %3753 = fadd fast float %3746, %3733
  %3754 = fadd fast float %3749, %3734
  %3755 = fadd fast float %3752, %3735
  %3756 = call float @dx.op.unary.f32(i32 7, float %3753)  ; Saturate(value)
  %3757 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3758 = call float @dx.op.unary.f32(i32 7, float %3755)  ; Saturate(value)
  br label %3759

; <label>:3759                                    ; preds = %3736, %3622
  %3760 = phi float [ %3756, %3736 ], [ %3733, %3622 ]
  %3761 = phi float [ %3757, %3736 ], [ %3734, %3622 ]
  %3762 = phi float [ %3758, %3736 ], [ %3735, %3622 ]
  %3763 = fmul fast float %3650, 9.843750e-01
  %3764 = fadd fast float %3763, 7.812500e-03
  %3765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3764, float %3082, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3766 = extractvalue %dx.types.ResRet.f32 %3765, 2
  %3767 = extractvalue %dx.types.ResRet.f32 %3765, 3
  %3768 = fmul fast float %3766, %1801
  %3769 = fmul fast float %3766, %1802
  %3770 = fmul fast float %3766, %1812
  %3771 = fadd fast float %3768, %3767
  %3772 = fadd fast float %3769, %3767
  %3773 = fadd fast float %3770, %3767
  br i1 %3092, label %3774, label %3797

; <label>:3774                                    ; preds = %3759
  %3775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1178, float %3650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3776 = extractvalue %dx.types.ResRet.f32 %3775, 0
  %3777 = extractvalue %dx.types.ResRet.f32 %3775, 1
  %3778 = extractvalue %dx.types.ResRet.f32 %3775, 2
  %3779 = fadd fast float %3776, -5.000000e-01
  %3780 = fadd fast float %3777, -5.000000e-01
  %3781 = fadd fast float %3778, -5.000000e-01
  %3782 = fmul fast float %1801, 4.000000e+00
  %3783 = fmul fast float %3782, %3727
  %3784 = fmul fast float %3783, %3779
  %3785 = fmul fast float %1802, 4.000000e+00
  %3786 = fmul fast float %3785, %3728
  %3787 = fmul fast float %3786, %3780
  %3788 = fmul fast float %1812, 4.000000e+00
  %3789 = fmul fast float %3788, %3729
  %3790 = fmul fast float %3789, %3781
  %3791 = fadd fast float %3784, %3771
  %3792 = fadd fast float %3787, %3772
  %3793 = fadd fast float %3790, %3773
  %3794 = call float @dx.op.unary.f32(i32 7, float %3791)  ; Saturate(value)
  %3795 = call float @dx.op.unary.f32(i32 7, float %3792)  ; Saturate(value)
  %3796 = call float @dx.op.unary.f32(i32 7, float %3793)  ; Saturate(value)
  br label %3797

; <label>:3797                                    ; preds = %3774, %3759
  %3798 = phi float [ %3794, %3774 ], [ %3771, %3759 ]
  %3799 = phi float [ %3795, %3774 ], [ %3772, %3759 ]
  %3800 = phi float [ %3796, %3774 ], [ %3773, %3759 ]
  %3801 = call float @dx.op.binary.f32(i32 35, float %3799, float %3800)  ; FMax(a,b)
  %3802 = call float @dx.op.binary.f32(i32 35, float %3798, float %3801)  ; FMax(a,b)
  %3803 = fsub fast float 1.000000e+00, %3802
  %3804 = fmul fast float %3760, %3718
  %3805 = fmul fast float %3761, %3718
  %3806 = fmul fast float %3762, %3718
  %3807 = fsub fast float 1.000000e+00, %3651
  %3808 = bitcast float %3807 to i32
  %3809 = sitofp i32 %3808 to float
  %3810 = fmul fast float %3809, 5.000000e+00
  %3811 = fadd fast float %3810, 0xC1EFBF8940000000
  %3812 = fptosi float %3811 to i32
  %3813 = bitcast i32 %3812 to float
  %3814 = fmul fast float %3813, %1177
  %3815 = fmul fast float %3803, %3814
  %3816 = fmul fast float %3815, %3142
  %3817 = fmul fast float %3815, %3143
  %3818 = fmul fast float %3815, %3144
  %3819 = fadd fast float %3816, %3804
  %3820 = fadd fast float %3817, %3805
  %3821 = fadd fast float %3818, %3806
  %3822 = fmul fast float %3639, %1198
  %3823 = fmul fast float %3822, %3657
  %3824 = fmul fast float %3823, %3803
  %3825 = fmul fast float %3640, %1198
  %3826 = fmul fast float %3825, %3657
  %3827 = fmul fast float %3826, %3803
  %3828 = fmul fast float %3641, %1198
  %3829 = fmul fast float %3828, %3657
  %3830 = fmul fast float %3829, %3803
  %3831 = fadd fast float %3824, %3478
  %3832 = fadd fast float %3827, %3479
  %3833 = fadd fast float %3830, %3480
  %3834 = fmul fast float %3823, %3819
  %3835 = fmul fast float %3826, %3820
  %3836 = fmul fast float %3829, %3821
  %3837 = fadd fast float %3834, %3475
  %3838 = fadd fast float %3835, %3476
  %3839 = fadd fast float %3836, %3477
  br label %3553

; <label>:3840                                    ; preds = %3553
  br label %3841

; <label>:3841                                    ; preds = %3840, %3441
  %3842 = phi float [ %3443, %3441 ], [ %3554, %3840 ]
  %3843 = phi float [ %3444, %3441 ], [ %3555, %3840 ]
  %3844 = phi float [ %3445, %3441 ], [ %3556, %3840 ]
  %3845 = phi float [ %3446, %3441 ], [ %3557, %3840 ]
  %3846 = phi float [ %3447, %3441 ], [ %3558, %3840 ]
  %3847 = phi float [ %3448, %3441 ], [ %3559, %3840 ]
  %3848 = add i32 %3442, 1
  %3849 = icmp ugt i32 %3848, %3438
  br i1 %3849, label %3850, label %3441

; <label>:3850                                    ; preds = %3841
  br label %3851

; <label>:3851                                    ; preds = %3850, %3417, %3407
  %3852 = phi float [ %3408, %3407 ], [ %3408, %3417 ], [ %3842, %3850 ]
  %3853 = phi float [ %3409, %3407 ], [ %3409, %3417 ], [ %3843, %3850 ]
  %3854 = phi float [ %3410, %3407 ], [ %3410, %3417 ], [ %3844, %3850 ]
  %3855 = phi float [ %3411, %3407 ], [ %3411, %3417 ], [ %3845, %3850 ]
  %3856 = phi float [ %3412, %3407 ], [ %3412, %3417 ], [ %3846, %3850 ]
  %3857 = phi float [ %3413, %3407 ], [ %3413, %3417 ], [ %3847, %3850 ]
  %3858 = call float @dx.op.unary.f32(i32 24, float %1804)  ; Sqrt(value)
  %3859 = call float @dx.op.unary.f32(i32 24, float %1805)  ; Sqrt(value)
  %3860 = call float @dx.op.unary.f32(i32 24, float %1806)  ; Sqrt(value)
  %3861 = fmul fast float %3858, %3855
  %3862 = fmul fast float %3859, %3856
  %3863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3864 = extractvalue %dx.types.CBufRet.f32 %3863, 0
  br i1 %175, label %3865, label %3885

; <label>:3865                                    ; preds = %3851
  %3866 = fadd fast float %3857, %1175
  %3867 = fmul fast float %3866, %1176
  %3868 = fsub fast float 1.000000e+00, %1176
  %3869 = call float @dx.op.unary.f32(i32 7, float %3868)  ; Saturate(value)
  %3870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3871 = extractvalue %dx.types.CBufRet.f32 %3870, 3
  %3872 = fmul fast float %3871, %3869
  %3873 = fadd fast float %3872, %3867
  %3874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3875 = extractvalue %dx.types.CBufRet.f32 %3874, 0
  %3876 = fmul fast float %3875, %3148
  %3877 = fsub fast float %3873, %3876
  %3878 = fadd fast float %3862, %3861
  %3879 = fmul fast float %3864, %3878
  %3880 = extractvalue %dx.types.CBufRet.f32 %3870, 1
  %3881 = fsub fast float %3877, %3880
  %3882 = extractvalue %dx.types.CBufRet.f32 %3870, 2
  %3883 = fmul fast float %3881, %3882
  %3884 = call float @dx.op.unary.f32(i32 7, float %3883)  ; Saturate(value)
  br label %3900

; <label>:3885                                    ; preds = %3851
  %3886 = fmul fast float %3860, %3857
  %3887 = fmul fast float %3864, %3861
  %3888 = fmul fast float %3864, %3862
  %3889 = fmul fast float %3886, %3864
  %3890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.i32 %3890, 0
  %3892 = and i32 %3891, 32
  %3893 = icmp eq i32 %3892, 0
  br i1 %3893, label %3900, label %3894

; <label>:3894                                    ; preds = %3885
  %3895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3896 = extractvalue %dx.types.CBufRet.f32 %3895, 0
  %3897 = fmul fast float %3896, 0x3FE99999A0000000
  %3898 = fadd fast float %3896, %3887
  %3899 = fadd fast float %3897, %3889
  br label %3900

; <label>:3900                                    ; preds = %3894, %3885, %3865
  %3901 = phi float [ %3879, %3865 ], [ %3898, %3894 ], [ %3887, %3885 ]
  %3902 = phi float [ %3884, %3865 ], [ %3888, %3894 ], [ %3888, %3885 ]
  %3903 = phi float [ 1.000000e+00, %3865 ], [ %3899, %3894 ], [ %3889, %3885 ]
  %3904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3905 = extractvalue %dx.types.CBufRet.f32 %3904, 0
  %3906 = fmul fast float %3905, %3853
  %3907 = fmul fast float %3905, %3854
  %3908 = fadd fast float %3853, %3852
  %3909 = select i1 %175, float %3908, float %3852
  %3910 = fmul float %3909, %3905
  %3911 = select i1 %175, float 0.000000e+00, float %3906
  %3912 = select i1 %175, float 0.000000e+00, float %3907
  %3913 = fmul fast float %3901, %3858
  %3914 = fmul fast float %3902, %3859
  %3915 = fmul fast float %3903, %3860
  %3916 = fadd fast float %3910, %3913
  %3917 = fadd fast float %3911, %3914
  %3918 = fadd fast float %3912, %3915
  %3919 = select i1 %175, float %3902, float %3917
  %3920 = select i1 %175, float %3903, float %3918
  %3921 = call float @dx.op.binary.f32(i32 36, float %3916, float 3.225500e+04)  ; FMin(a,b)
  %3922 = call float @dx.op.binary.f32(i32 36, float %3919, float 3.225500e+04)  ; FMin(a,b)
  %3923 = call float @dx.op.binary.f32(i32 36, float %3920, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3921)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3922)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3923)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

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
!dx.viewIdState = !{!51}
!dx.entryPoints = !{!52}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !43, !46}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
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
!43 = !{!44, !45}
!44 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!45 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!46 = !{!47, !48, !49, !50}
!47 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!48 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!49 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!50 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!51 = !{[23 x i32] [i32 21, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0]}
!52 = !{void ()* @ps_main, !"ps_main", !53, !4, !69}
!53 = !{!54, !67, null}
!54 = !{!55, !58, !60, !62, !63, !65, !66}
!55 = !{i32 0, !"SV_Position", i8 9, i8 3, !56, i8 4, i32 1, i8 4, i32 0, i8 0, !57}
!56 = !{i32 0}
!57 = !{i32 3, i32 11}
!58 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !56, i8 2, i32 1, i8 2, i32 1, i8 0, !59}
!59 = !{i32 3, i32 3}
!60 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !56, i8 2, i32 1, i8 3, i32 2, i8 0, !61}
!61 = !{i32 3, i32 7}
!62 = !{i32 3, !"NORMAL", i8 9, i8 0, !56, i8 2, i32 1, i8 3, i32 3, i8 0, !61}
!63 = !{i32 4, !"TANGENT", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 4, i8 0, !64}
!64 = !{i32 3, i32 15}
!65 = !{i32 5, !"TRANSIENT_INDEX", i8 5, i8 0, !56, i8 1, i32 1, i8 1, i32 5, i8 0, null}
!66 = !{i32 6, !"SV_SampleIndex", i8 5, i8 12, !56, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!67 = !{!68}
!68 = !{i32 0, !"SV_Target", i8 9, i8 16, !56, i8 0, i32 1, i8 4, i32 0, i8 0, !64}
!69 = !{i32 0, i64 24}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}

