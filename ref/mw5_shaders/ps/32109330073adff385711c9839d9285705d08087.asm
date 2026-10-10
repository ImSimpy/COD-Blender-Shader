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
; NORMAL_TRANSFORM         1   xyzw        5     NONE   float   xyzw
; TRANSIENT_INDEX          0   x           6     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 9c33ef7662721ab85a592ef7ad9a3540
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
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4             t0     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     f32     2darray      T6     t16,space2     1
;                                   texture     f32          3d      T7     t15,space2     1
;                                   texture     f32          2d      T8     t14,space2     1
;                                   texture     f32          2d      T9     t13,space2     1
;                                   texture     u32          2d     T10     t17,space2     1
;                                   texture     f32          3d     T11     t18,space2     1
;                                   texture     f32     2darray     T12     t23,space2     1
;                                   texture     f32     2darray     T13     t24,space2     1
;                                   texture     f32     2darray     T14     t25,space2     1
;                                   texture    byte         r/o     T15     t66,space1     1
;                                   texture    byte         r/o     T16     t16,space1     1
;                                   texture    byte         r/o     T17     t17,space1     1
;                                   texture     u32     2darray     T18     t11,space2     1
;                                   texture     f32     2darray     T19     t10,space2     1
;                                   texture     f32          2d     T20     t69,space2     1
;                                   texture    byte         r/o     T21     t49,space1     1
;                                   texture    byte         r/o     T22     t50,space1     1
;                                   texture    byte         r/o     T23     t51,space1     1
;                                   texture    byte         r/o     T24     t52,space1     1
;                                   texture     f32          2d     T25     t58,space2     1
;                                   texture     f32          2d     T26     t59,space2     1
;                                   texture     f32          2d     T27     t60,space2     1
;                                   texture    byte         r/o     T28     t45,space1     1
;                                   texture    byte         r/o     T29     t46,space1     1
;                                   texture    byte         r/o     T30     t47,space1     1
;                                   texture    byte         r/o     T31     t48,space1     1
;                                   texture     f32          2d     T32     t57,space2     1
;                                   texture    byte         r/o     T33     t69,space1     1
;                                   texture     f32          2d     T34     t34,space2     1
;                                   texture    byte         r/o     T35     t10,space1     1
;                                   texture    byte         r/o     T36     t68,space1     1
;                                   texture     f32          2d     T37      t0,space2     1
;                                   texture    byte         r/o     T38     t11,space1     1
;                                   texture    byte         r/o     T39     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 25, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24 }
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %66 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = fmul fast float %68, %62
  %70 = fmul fast float %68, %63
  %71 = fmul fast float %53, %50
  %72 = fmul fast float %54, %49
  %73 = fsub fast float %71, %72
  %74 = fmul fast float %54, %48
  %75 = fmul fast float %52, %50
  %76 = fsub fast float %74, %75
  %77 = fmul fast float %52, %49
  %78 = fmul fast float %53, %48
  %79 = fsub fast float %77, %78
  %80 = fmul fast float %73, %51
  %81 = fmul fast float %76, %51
  %82 = fmul fast float %79, %51
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 3
  %86 = fmul fast float %84, 2.000000e+00
  %87 = fmul fast float %86, %69
  %88 = fmul fast float %85, 2.000000e+00
  %89 = fmul fast float %88, %70
  %90 = fsub fast float 1.000000e+00, %87
  %91 = fsub fast float 1.000000e+00, %89
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %96 = fmul fast float %90, %93
  %97 = fmul fast float %90, %94
  %98 = fmul fast float %90, %95
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = fmul fast float %91, %100
  %104 = fmul fast float %91, %101
  %105 = fmul fast float %91, %102
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = fadd fast float %103, %107
  %111 = fadd fast float %110, %96
  %112 = fadd fast float %104, %108
  %113 = fadd fast float %112, %97
  %114 = fadd fast float %105, %109
  %115 = fadd fast float %114, %98
  %116 = fmul fast float %111, %64
  %117 = fmul fast float %113, %64
  %118 = fmul fast float %115, %64
  %119 = fadd fast float %57, 5.000000e-01
  %120 = fptoui float %119 to i32
  %121 = shl i32 %120, 3
  %122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %121, i32 undef)  ; BufferLoad(srv,index,wot)
  %123 = extractvalue %dx.types.ResRet.i32 %122, 0
  %124 = or i32 %121, 4
  %125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %126 = extractvalue %dx.types.ResRet.i32 %125, 0
  %127 = and i32 %123, 8191
  %128 = lshr i32 %123, 13
  %129 = and i32 %128, 8191
  %130 = lshr i32 %123, 26
  %131 = and i32 %126, 65535
  %132 = lshr i32 %126, 16
  %133 = uitofp i32 %131 to float
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %136 = uitofp i32 %132 to float
  %137 = uitofp i32 %127 to float
  %138 = fmul fast float %135, %137
  %139 = uitofp i32 %129 to float
  %140 = fmul fast float %135, %139
  %141 = fmul fast float %135, %55
  %142 = fmul fast float %141, %133
  %143 = fmul fast float %135, %56
  %144 = fmul fast float %143, %136
  %145 = fadd fast float %142, %138
  %146 = fadd fast float %140, %144
  %147 = uitofp i32 %130 to float
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 3
  %151 = fmul fast float %149, %69
  %152 = fmul fast float %150, %70
  %153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = and i32 %154, 114688
  %156 = icmp ne i32 %155, 0
  %157 = select i1 %156, float %151, float 0.000000e+00
  %158 = select i1 %156, float %152, float 0.000000e+00
  %159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %157, float %158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = fmul fast float %160, 2.550000e+02
  %162 = fptoui float %161 to i32
  %163 = select i1 %156, i32 %162, i32 0
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.i32 %165, 3
  %167 = and i32 %166, 3
  %168 = icmp ne i32 %167, 0
  %169 = and i32 %166, 4
  %170 = icmp ne i32 %169, 0
  %171 = and i1 %168, %170
  br i1 %171, label %172, label %183

; <label>:172                                     ; preds = %0
  %173 = extractvalue %dx.types.CBufRet.f32 %164, 3
  %174 = fmul fast float %173, %70
  %175 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %176 = fmul fast float %175, %69
  %177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %176, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %178 = extractvalue %dx.types.ResRet.f32 %177, 0
  %179 = fsub fast float 1.000000e+00, %178
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = fcmp fast olt float %179, %181
  br label %186

; <label>:183                                     ; preds = %0
  %184 = icmp eq i32 %169, 0
  %185 = and i1 %168, %184
  br label %186

; <label>:186                                     ; preds = %183, %172
  %187 = phi i1 [ %182, %172 ], [ %185, %183 ]
  %188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.i32 %188, 0
  %190 = shl i32 %189, 4
  %191 = and i32 %190, 32752
  %192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %191)  ; LegacyF16ToF32(value)
  %193 = lshr i32 %189, 7
  %194 = and i32 %193, 32752
  %195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %194)  ; LegacyF16ToF32(value)
  %196 = lshr i32 %189, 22
  %197 = shl nuw nsw i32 %196, 5
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = and i32 %200, 255
  %202 = uitofp i32 %201 to float
  %203 = fmul fast float %202, 0x3F70101020000000
  %204 = lshr i32 %200, 8
  %205 = and i32 %204, 255
  %206 = uitofp i32 %205 to float
  %207 = fmul fast float %206, 0x3F70101020000000
  %208 = lshr i32 %200, 16
  %209 = and i32 %208, 255
  %210 = uitofp i32 %209 to float
  %211 = fmul fast float %210, 0x3F70101020000000
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = and i32 %241, 65535
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %241, 16
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 176, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = and i32 %247, 65535
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %247, 16
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = fmul fast float %249, 0x3F50624DE0000000
  %253 = fmul fast float %251, 0x3F50624DE0000000
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 204, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = lshr i32 %255, 20
  %257 = and i32 %256, 3
  %258 = add nuw nsw i32 %257, 1
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = or i32 %262, %260
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %708, label %265

; <label>:265                                     ; preds = %186
  %266 = lshr i32 %215, 16
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = fmul fast float %267, 0x3F50624DE0000000
  %269 = and i32 %215, 65535
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = fmul fast float %270, 0x3F50624DE0000000
  %272 = lshr i32 %213, 16
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = and i32 %213, 65535
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = lshr i32 %277, 16
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = fmul fast float %279, 0x3F50624DE0000000
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = lshr i32 %282, 16
  %284 = and i32 %283, 255
  %285 = lshr i32 %282, 24
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 65535
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %287, 16
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = lshr i32 %293, 22
  %295 = shl nuw nsw i32 %294, 5
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = shl i32 %293, 4
  %298 = and i32 %297, 32752
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %293, 7
  %301 = and i32 %300, 32752
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 3
  %305 = fmul fast float %304, 1.000000e+03
  %306 = fmul fast float %271, %305
  %307 = call float @dx.op.unary.f32(i32 22, float %306)  ; Frc(value)
  %308 = fadd fast float %307, %275
  %309 = fmul fast float %268, %305
  %310 = call float @dx.op.unary.f32(i32 22, float %309)  ; Frc(value)
  %311 = fadd fast float %310, %273
  %312 = fmul fast float %280, %305
  %313 = call float @dx.op.unary.f32(i32 22, float %312)  ; Frc(value)
  %314 = fmul fast float %313, 0x401921FB60000000
  %315 = fadd fast float %314, %296
  %316 = call float @dx.op.unary.f32(i32 13, float %315)  ; Sin(value)
  %317 = call float @dx.op.unary.f32(i32 12, float %315)  ; Cos(value)
  %318 = fsub fast float -0.000000e+00, %316
  %319 = fadd fast float %58, -5.000000e-01
  %320 = fadd fast float %59, -5.000000e-01
  %321 = fmul fast float %289, %319
  %322 = fmul fast float %291, %320
  %323 = fadd fast float %321, 5.000000e-01
  %324 = fadd fast float %322, 5.000000e-01
  %325 = fmul fast float %299, %323
  %326 = fmul fast float %302, %324
  %327 = fmul fast float %317, %325
  %328 = call float @dx.op.tertiary.f32(i32 46, float %318, float %326, float %327)  ; FMad(a,b,c)
  %329 = fmul fast float %316, %325
  %330 = call float @dx.op.tertiary.f32(i32 46, float %317, float %326, float %329)  ; FMad(a,b,c)
  %331 = fadd fast float %308, %328
  %332 = fadd fast float %311, %330
  %333 = icmp ugt i32 %284, 1
  %334 = icmp ugt i32 %282, 33554431
  %335 = or i1 %334, %333
  br i1 %335, label %336, label %360

; <label>:336                                     ; preds = %265
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = lshr i32 %338, 16
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = fmul fast float %304, %340
  %342 = call float @dx.op.unary.f32(i32 22, float %341)  ; Frc(value)
  %343 = mul nuw nsw i32 %284, %285
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %342, %344
  %346 = call float @dx.op.unary.f32(i32 27, float %345)  ; Round_ni(value)
  %347 = fptoui float %346 to i32
  %348 = urem i32 %347, %284
  %349 = udiv i32 %347, %285
  %350 = call float @dx.op.unary.f32(i32 22, float %331)  ; Frc(value)
  %351 = call float @dx.op.unary.f32(i32 22, float %332)  ; Frc(value)
  %352 = uitofp i32 %348 to float
  %353 = uitofp i32 %349 to float
  %354 = fadd fast float %350, %352
  %355 = fadd fast float %351, %353
  %356 = uitofp i32 %284 to float
  %357 = uitofp i32 %285 to float
  %358 = fdiv fast float %354, %356
  %359 = fdiv fast float %355, %357
  br label %360

; <label>:360                                     ; preds = %336, %265
  %361 = phi float [ %358, %336 ], [ %331, %265 ]
  %362 = phi float [ %359, %336 ], [ %332, %265 ]
  %363 = and i32 %260, 16
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %556, label %365

; <label>:365                                     ; preds = %360
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 216, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = add i32 %367, 0
  %369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %368, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %370 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %369, %dx.types.Handle %65, float %361, float %362, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = extractvalue %dx.types.ResRet.f32 %370, 1
  %373 = extractvalue %dx.types.ResRet.f32 %370, 2
  %374 = extractvalue %dx.types.ResRet.f32 %370, 3
  %375 = and i32 %282, 255
  %376 = uitofp i32 %375 to float
  %377 = lshr i32 %282, 8
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %374, %376
  %381 = fadd fast float %380, %379
  %382 = fmul fast float %381, 0x3F70101000000000
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 512
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %394, label %387

; <label>:387                                     ; preds = %365
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 256, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = add i32 %389, 0
  %391 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %390, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %392 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %391, %dx.types.Handle %66, float %361, float %362, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  br label %394

; <label>:394                                     ; preds = %387, %365
  %395 = phi float [ %393, %387 ], [ 1.000000e+00, %365 ]
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = and i32 %397, 33554432
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %503, label %400

; <label>:400                                     ; preds = %394
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 65535
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = lshr i32 %402, 16
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = and i32 %408, 65535
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = lshr i32 %412, 24
  %414 = uitofp i32 %413 to float
  %415 = fmul fast float %414, 0x3F70101020000000
  %416 = and i32 %412, 255
  %417 = uitofp i32 %416 to float
  %418 = fmul fast float %417, 0x3F70101020000000
  %419 = lshr i32 %412, 8
  %420 = and i32 %419, 255
  %421 = uitofp i32 %420 to float
  %422 = fmul fast float %421, 0x3F70101020000000
  %423 = lshr i32 %412, 16
  %424 = and i32 %423, 255
  %425 = uitofp i32 %424 to float
  %426 = fmul fast float %425, 0x3F70101020000000
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = lshr i32 %428, 24
  %430 = uitofp i32 %429 to float
  %431 = fmul fast float %430, 0x3F70101020000000
  %432 = and i32 %428, 255
  %433 = uitofp i32 %432 to float
  %434 = fmul fast float %433, 0x3F70101020000000
  %435 = lshr i32 %428, 8
  %436 = and i32 %435, 255
  %437 = uitofp i32 %436 to float
  %438 = fmul fast float %437, 0x3F70101020000000
  %439 = lshr i32 %428, 16
  %440 = and i32 %439, 255
  %441 = uitofp i32 %440 to float
  %442 = fmul fast float %441, 0x3F70101020000000
  %443 = bitcast float %371 to i32
  %444 = ashr i32 %443, 1
  %445 = sub nsw i32 1597463174, %444
  %446 = bitcast i32 %445 to float
  %447 = fmul fast float %371, 5.000000e-01
  %448 = fmul fast float %446, %446
  %449 = fmul fast float %448, %447
  %450 = fsub fast float 1.500000e+00, %449
  %451 = fmul fast float %446, %371
  %452 = fmul fast float %451, %450
  %453 = bitcast float %372 to i32
  %454 = ashr i32 %453, 1
  %455 = sub nsw i32 1597463174, %454
  %456 = bitcast i32 %455 to float
  %457 = fmul fast float %372, 5.000000e-01
  %458 = fmul fast float %456, %456
  %459 = fmul fast float %458, %457
  %460 = fsub fast float 1.500000e+00, %459
  %461 = fmul fast float %456, %372
  %462 = fmul fast float %461, %460
  %463 = bitcast float %373 to i32
  %464 = ashr i32 %463, 1
  %465 = sub nsw i32 1597463174, %464
  %466 = bitcast i32 %465 to float
  %467 = fmul fast float %373, 5.000000e-01
  %468 = fmul fast float %466, %466
  %469 = fmul fast float %468, %467
  %470 = fsub fast float 1.500000e+00, %469
  %471 = fmul fast float %466, %373
  %472 = fmul fast float %471, %470
  %473 = fsub fast float %452, %434
  %474 = fsub fast float %462, %438
  %475 = fsub fast float %472, %442
  %476 = fmul fast float %473, %404
  %477 = fmul fast float %474, %406
  %478 = fmul fast float %475, %410
  %479 = fadd fast float %476, %418
  %480 = fadd fast float %477, %422
  %481 = fadd fast float %478, %426
  %482 = call float @dx.op.unary.f32(i32 7, float %479)  ; Saturate(value)
  %483 = call float @dx.op.unary.f32(i32 7, float %480)  ; Saturate(value)
  %484 = call float @dx.op.unary.f32(i32 7, float %481)  ; Saturate(value)
  %485 = fmul fast float %482, %482
  %486 = fmul fast float %483, %483
  %487 = fmul fast float %484, %484
  %488 = fsub fast float %485, %371
  %489 = fsub fast float %486, %372
  %490 = fsub fast float %487, %373
  %491 = fmul fast float %488, %395
  %492 = fmul fast float %489, %395
  %493 = fmul fast float %490, %395
  %494 = fadd fast float %491, %371
  %495 = fadd fast float %492, %372
  %496 = fadd fast float %493, %373
  %497 = fadd fast float %415, %382
  %498 = fsub fast float %497, %431
  %499 = call float @dx.op.unary.f32(i32 7, float %498)  ; Saturate(value)
  %500 = fsub fast float %499, %382
  %501 = fmul fast float %500, %395
  %502 = fadd fast float %501, %382
  br label %556

; <label>:503                                     ; preds = %394
  %504 = and i32 %397, 134217728
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %540, label %506

; <label>:506                                     ; preds = %503
  %507 = call float @dx.op.unary.f32(i32 24, float %203)  ; Sqrt(value)
  %508 = call float @dx.op.unary.f32(i32 24, float %207)  ; Sqrt(value)
  %509 = call float @dx.op.unary.f32(i32 24, float %211)  ; Sqrt(value)
  %510 = fadd fast float %507, -5.000000e-01
  %511 = fadd fast float %508, -5.000000e-01
  %512 = fadd fast float %509, -5.000000e-01
  %513 = fmul fast float %510, %395
  %514 = fmul fast float %511, %395
  %515 = fmul fast float %512, %395
  %516 = fadd fast float %513, 5.000000e-01
  %517 = fadd fast float %514, 5.000000e-01
  %518 = fadd fast float %515, 5.000000e-01
  %519 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %520 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %521 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %522 = fmul fast float %516, 2.000000e+00
  %523 = fsub fast float 1.000000e+00, %522
  %524 = fmul fast float %523, %519
  %525 = fadd fast float %524, %522
  %526 = fmul fast float %525, %519
  %527 = fmul fast float %517, 2.000000e+00
  %528 = fsub fast float 1.000000e+00, %527
  %529 = fmul fast float %528, %520
  %530 = fadd fast float %529, %527
  %531 = fmul fast float %530, %520
  %532 = fmul fast float %518, 2.000000e+00
  %533 = fsub fast float 1.000000e+00, %532
  %534 = fmul fast float %533, %521
  %535 = fadd fast float %534, %532
  %536 = fmul fast float %535, %521
  %537 = fmul fast float %526, %526
  %538 = fmul fast float %531, %531
  %539 = fmul fast float %536, %536
  br label %556

; <label>:540                                     ; preds = %503
  %541 = fmul fast float %203, %203
  %542 = fmul fast float %207, %207
  %543 = fmul fast float %211, %211
  %544 = fadd fast float %541, -1.000000e+00
  %545 = fadd fast float %542, -1.000000e+00
  %546 = fadd fast float %543, -1.000000e+00
  %547 = fmul fast float %395, %544
  %548 = fmul fast float %395, %545
  %549 = fmul fast float %395, %546
  %550 = fadd fast float %547, 1.000000e+00
  %551 = fadd fast float %548, 1.000000e+00
  %552 = fadd fast float %549, 1.000000e+00
  %553 = fmul fast float %550, %371
  %554 = fmul fast float %551, %372
  %555 = fmul fast float %552, %373
  br label %556

; <label>:556                                     ; preds = %540, %506, %400, %360
  %557 = phi float [ %502, %400 ], [ %382, %506 ], [ %382, %540 ], [ 0x3FA23C0BE0000000, %360 ]
  %558 = phi float [ %494, %400 ], [ %537, %506 ], [ %553, %540 ], [ 1.000000e+00, %360 ]
  %559 = phi float [ %495, %400 ], [ %538, %506 ], [ %554, %540 ], [ 1.000000e+00, %360 ]
  %560 = phi float [ %496, %400 ], [ %539, %506 ], [ %555, %540 ], [ 1.000000e+00, %360 ]
  %561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.i32 %561, 1
  %563 = and i32 %562, 1
  %564 = icmp ne i32 %563, 0
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 212, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = and i32 %566, 32
  %568 = icmp ne i32 %567, 0
  %569 = and i1 %564, %568
  %570 = select i1 %569, float 1.000000e+00, float %558
  %571 = select i1 %569, float 0x3FD3333340000000, float %559
  %572 = select i1 %569, float 0x3FD3333340000000, float %560
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = and i32 %574, 32
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %646, label %577

; <label>:577                                     ; preds = %556
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 224, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = add i32 %581, 0
  %583 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %582, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %584 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %583, %dx.types.Handle %65, float %361, float %362, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %585 = extractvalue %dx.types.ResRet.f32 %584, 0
  %586 = extractvalue %dx.types.ResRet.f32 %584, 1
  %587 = extractvalue %dx.types.ResRet.f32 %584, 2
  %588 = extractvalue %dx.types.ResRet.f32 %584, 3
  %589 = and i32 %579, 255
  %590 = uitofp i32 %589 to float
  %591 = lshr i32 %579, 8
  %592 = and i32 %591, 255
  %593 = uitofp i32 %592 to float
  %594 = lshr i32 %579, 16
  %595 = and i32 %594, 255
  %596 = uitofp i32 %595 to float
  %597 = fmul fast float %596, 0x3F70101000000000
  %598 = fmul fast float %585, %590
  %599 = fadd fast float %598, %593
  %600 = fmul fast float %599, 0x3F70101000000000
  %601 = fadd fast float %586, -5.000000e-01
  %602 = fadd fast float %588, -5.000000e-01
  %603 = fmul fast float %601, %597
  %604 = fmul fast float %602, %597
  %605 = fadd fast float %603, 5.000000e-01
  %606 = fadd fast float %604, 5.000000e-01
  %607 = fmul fast float %605, 2.000000e+00
  %608 = fadd fast float %607, -1.000000e+00
  %609 = fmul fast float %606, 2.000000e+00
  %610 = fadd fast float %609, -1.000000e+00
  %611 = fadd fast float %608, %610
  %612 = fmul fast float %611, 5.000000e-01
  %613 = fsub fast float %608, %610
  %614 = fmul fast float %613, 5.000000e-01
  %615 = call float @dx.op.unary.f32(i32 6, float %612)  ; FAbs(value)
  %616 = fsub fast float 1.000000e+00, %615
  %617 = call float @dx.op.unary.f32(i32 6, float %614)  ; FAbs(value)
  %618 = fsub fast float %616, %617
  %619 = call float @dx.op.dot3.f32(i32 55, float %612, float %614, float %618, float %612, float %614, float %618)  ; Dot3(ax,ay,az,bx,by,bz)
  %620 = call float @dx.op.unary.f32(i32 25, float %619)  ; Rsqrt(value)
  %621 = fmul fast float %612, %620
  %622 = fmul fast float %614, %620
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = and i32 %624, 67108864
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %642, label %627

; <label>:627                                     ; preds = %577
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = and i32 %629, 65535
  %631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %630)  ; LegacyF16ToF32(value)
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = and i32 %633, 65535
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = lshr i32 %629, 16
  %637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %636)  ; LegacyF16ToF32(value)
  %638 = fsub fast float %600, %637
  %639 = fmul fast float %638, %631
  %640 = fadd fast float %639, %635
  %641 = call float @dx.op.unary.f32(i32 7, float %640)  ; Saturate(value)
  br label %642

; <label>:642                                     ; preds = %627, %577
  %643 = phi float [ %641, %627 ], [ %600, %577 ]
  %644 = call float @dx.op.dot2.f32(i32 54, float %621, float %622, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %645 = call float @dx.op.dot2.f32(i32 54, float %621, float %622, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %646

; <label>:646                                     ; preds = %642, %556
  %647 = phi float [ %643, %642 ], [ 0x3FD6666660000000, %556 ]
  %648 = phi float [ %644, %642 ], [ 0.000000e+00, %556 ]
  %649 = phi float [ %645, %642 ], [ 0.000000e+00, %556 ]
  %650 = phi float [ %587, %642 ], [ 1.000000e+00, %556 ]
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = lshr i32 %652, 22
  %654 = shl nuw nsw i32 %653, 5
  %655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %654)  ; LegacyF16ToF32(value)
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = and i32 %657, 64
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %692, label %660

; <label>:660                                     ; preds = %646
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 232, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = add i32 %662, 0
  %664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %663, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = and i32 %666, 131072
  %668 = icmp eq i32 %667, 0
  %669 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %664, %dx.types.Handle %65, float %361, float %362, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = extractvalue %dx.types.ResRet.f32 %669, 1
  %672 = extractvalue %dx.types.ResRet.f32 %669, 2
  %673 = fmul fast float %670, %192
  %674 = fmul fast float %671, %195
  %675 = fmul fast float %672, %198
  br i1 %668, label %682, label %676

; <label>:676                                     ; preds = %660
  %677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.f32 %677, 0
  %679 = fmul fast float %678, %673
  %680 = fmul fast float %678, %674
  %681 = fmul fast float %678, %675
  br label %682

; <label>:682                                     ; preds = %676, %660
  %683 = phi float [ %679, %676 ], [ %673, %660 ]
  %684 = phi float [ %680, %676 ], [ %674, %660 ]
  %685 = phi float [ %681, %676 ], [ %675, %660 ]
  %686 = fmul fast float %683, %655
  %687 = select i1 %187, float %686, float %683
  %688 = call float @dx.op.dot3.f32(i32 55, float %687, float %684, float %685, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %689 = select i1 %187, float 0.000000e+00, float %683
  %690 = select i1 %187, float %688, float %684
  %691 = select i1 %187, float 0.000000e+00, float %685
  br label %692

; <label>:692                                     ; preds = %682, %646
  %693 = phi float [ %689, %682 ], [ 0.000000e+00, %646 ]
  %694 = phi float [ %690, %682 ], [ 0.000000e+00, %646 ]
  %695 = phi float [ %691, %682 ], [ 0.000000e+00, %646 ]
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 255
  %699 = uitofp i32 %698 to float
  %700 = lshr i32 %697, 8
  %701 = and i32 %700, 255
  %702 = uitofp i32 %701 to float
  %703 = call float @dx.op.dot3.f32(i32 55, float %570, float %571, float %572, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %704 = fmul fast float %702, %703
  %705 = fadd fast float %704, %699
  %706 = fmul fast float %705, 0x3F70101020000000
  %707 = call float @dx.op.unary.f32(i32 7, float %706)  ; Saturate(value)
  br label %708

; <label>:708                                     ; preds = %692, %186
  %709 = phi float [ %648, %692 ], [ 0.000000e+00, %186 ]
  %710 = phi float [ %649, %692 ], [ 0.000000e+00, %186 ]
  %711 = phi float [ %570, %692 ], [ 0.000000e+00, %186 ]
  %712 = phi float [ %571, %692 ], [ 0.000000e+00, %186 ]
  %713 = phi float [ %572, %692 ], [ 0.000000e+00, %186 ]
  %714 = phi float [ %693, %692 ], [ 0.000000e+00, %186 ]
  %715 = phi float [ %694, %692 ], [ 0.000000e+00, %186 ]
  %716 = phi float [ %695, %692 ], [ 0.000000e+00, %186 ]
  %717 = phi float [ %557, %692 ], [ 0.000000e+00, %186 ]
  %718 = phi float [ 1.000000e+00, %692 ], [ 0.000000e+00, %186 ]
  %719 = phi float [ %647, %692 ], [ 0.000000e+00, %186 ]
  %720 = phi float [ %650, %692 ], [ 0.000000e+00, %186 ]
  %721 = phi float [ %707, %692 ], [ 0.000000e+00, %186 ]
  %722 = icmp ult i32 %258, 2
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = or i32 %726, %724
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %1529, label %729

; <label>:729                                     ; preds = %708
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = lshr i32 %731, 16
  %733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %732)  ; LegacyF16ToF32(value)
  %734 = fmul fast float %733, 0x3F50624DE0000000
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = lshr i32 %736, 16
  %738 = and i32 %737, 255
  %739 = lshr i32 %736, 24
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 180, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = and i32 %741, 65535
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = lshr i32 %741, 16
  %745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %744)  ; LegacyF16ToF32(value)
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = lshr i32 %747, 22
  %749 = shl nuw nsw i32 %748, 5
  %750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %749)  ; LegacyF16ToF32(value)
  %751 = shl i32 %747, 4
  %752 = and i32 %751, 32752
  %753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %752)  ; LegacyF16ToF32(value)
  %754 = lshr i32 %747, 7
  %755 = and i32 %754, 32752
  %756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %755)  ; LegacyF16ToF32(value)
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 3
  %759 = fmul fast float %758, 1.000000e+03
  %760 = fmul fast float %252, %759
  %761 = call float @dx.op.unary.f32(i32 22, float %760)  ; Frc(value)
  %762 = fadd fast float %761, %243
  %763 = fmul fast float %253, %759
  %764 = call float @dx.op.unary.f32(i32 22, float %763)  ; Frc(value)
  %765 = fadd fast float %764, %245
  %766 = fmul fast float %734, %759
  %767 = call float @dx.op.unary.f32(i32 22, float %766)  ; Frc(value)
  %768 = fmul fast float %767, 0x401921FB60000000
  %769 = fadd fast float %768, %750
  %770 = call float @dx.op.unary.f32(i32 13, float %769)  ; Sin(value)
  %771 = call float @dx.op.unary.f32(i32 12, float %769)  ; Cos(value)
  %772 = fsub fast float -0.000000e+00, %770
  %773 = fadd fast float %60, -5.000000e-01
  %774 = fadd fast float %61, -5.000000e-01
  %775 = fmul fast float %743, %773
  %776 = fmul fast float %745, %774
  %777 = fadd fast float %775, 5.000000e-01
  %778 = fadd fast float %776, 5.000000e-01
  %779 = fmul fast float %753, %777
  %780 = fmul fast float %756, %778
  %781 = fmul fast float %771, %779
  %782 = call float @dx.op.tertiary.f32(i32 46, float %772, float %780, float %781)  ; FMad(a,b,c)
  %783 = fmul fast float %770, %779
  %784 = call float @dx.op.tertiary.f32(i32 46, float %771, float %780, float %783)  ; FMad(a,b,c)
  %785 = fadd fast float %762, %782
  %786 = fadd fast float %765, %784
  %787 = icmp ugt i32 %738, 1
  %788 = icmp ugt i32 %736, 33554431
  %789 = or i1 %788, %787
  br i1 %789, label %790, label %814

; <label>:790                                     ; preds = %729
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = lshr i32 %792, 16
  %794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %793)  ; LegacyF16ToF32(value)
  %795 = fmul fast float %758, %794
  %796 = call float @dx.op.unary.f32(i32 22, float %795)  ; Frc(value)
  %797 = mul nuw nsw i32 %738, %739
  %798 = uitofp i32 %797 to float
  %799 = fmul fast float %796, %798
  %800 = call float @dx.op.unary.f32(i32 27, float %799)  ; Round_ni(value)
  %801 = fptoui float %800 to i32
  %802 = urem i32 %801, %738
  %803 = udiv i32 %801, %739
  %804 = call float @dx.op.unary.f32(i32 22, float %785)  ; Frc(value)
  %805 = call float @dx.op.unary.f32(i32 22, float %786)  ; Frc(value)
  %806 = uitofp i32 %802 to float
  %807 = uitofp i32 %803 to float
  %808 = fadd fast float %804, %806
  %809 = fadd fast float %805, %807
  %810 = uitofp i32 %738 to float
  %811 = uitofp i32 %739 to float
  %812 = fdiv fast float %808, %810
  %813 = fdiv fast float %809, %811
  br label %814

; <label>:814                                     ; preds = %790, %729
  %815 = phi float [ %812, %790 ], [ %785, %729 ]
  %816 = phi float [ %813, %790 ], [ %786, %729 ]
  %817 = and i32 %724, 16777216
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %925, label %819

; <label>:819                                     ; preds = %814
  %820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %821 = extractvalue %dx.types.CBufRet.f32 %820, 0
  %822 = extractvalue %dx.types.CBufRet.f32 %820, 1
  %823 = extractvalue %dx.types.CBufRet.f32 %820, 2
  %824 = fadd fast float %821, %116
  %825 = fadd fast float %822, %117
  %826 = fadd fast float %823, %118
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.f32 %827, 0
  %829 = call float @dx.op.unary.f32(i32 7, float %828)  ; Saturate(value)
  %830 = icmp eq i32 %43, 65535
  br i1 %830, label %925, label %831

; <label>:831                                     ; preds = %819
  %832 = lshr i32 %43, 1
  %833 = shl i32 %832, 2
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = and i32 %43, 1
  %837 = icmp ne i32 %836, 0
  %838 = lshr i32 %835, 16
  %839 = and i32 %835, 65535
  %840 = select i1 %837, i32 %838, i32 %839
  %841 = icmp eq i32 %840, 65535
  br i1 %841, label %921, label %842

; <label>:842                                     ; preds = %831
  %843 = mul nuw nsw i32 %840, 40
  %844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %843, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.f32 %844, 0
  %846 = extractvalue %dx.types.ResRet.f32 %844, 1
  %847 = extractvalue %dx.types.ResRet.f32 %844, 2
  %848 = add nuw nsw i32 %843, 12
  %849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %848, i32 undef)  ; BufferLoad(srv,index,wot)
  %850 = extractvalue %dx.types.ResRet.f32 %849, 0
  %851 = extractvalue %dx.types.ResRet.f32 %849, 1
  %852 = extractvalue %dx.types.ResRet.f32 %849, 2
  %853 = add nuw nsw i32 %843, 24
  %854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = extractvalue %dx.types.ResRet.f32 %854, 1
  %857 = extractvalue %dx.types.ResRet.f32 %854, 2
  %858 = add nuw nsw i32 %843, 36
  %859 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %858, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.f32 %859, 0
  %861 = fsub fast float %824, %845
  %862 = fsub fast float %825, %846
  %863 = fsub fast float %826, %847
  %864 = fmul fast float %860, %861
  %865 = fmul fast float %860, %862
  %866 = fmul fast float %860, %863
  %867 = call float @dx.op.unary.f32(i32 27, float %864)  ; Round_ni(value)
  %868 = call float @dx.op.unary.f32(i32 27, float %865)  ; Round_ni(value)
  %869 = call float @dx.op.unary.f32(i32 27, float %866)  ; Round_ni(value)
  %870 = fadd fast float %867, 5.000000e-01
  %871 = fadd fast float %868, 5.000000e-01
  %872 = fadd fast float %869, 5.000000e-01
  %873 = fmul fast float %870, %850
  %874 = fmul fast float %871, %851
  %875 = fmul fast float %872, %852
  %876 = shl i32 %43, 2
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = add i32 %878, 0
  %880 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %879, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %881 = call float @dx.op.unary.f32(i32 22, float %873)  ; Frc(value)
  %882 = call float @dx.op.unary.f32(i32 22, float %874)  ; Frc(value)
  %883 = call float @dx.op.unary.f32(i32 22, float %875)  ; Frc(value)
  %884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %880, %dx.types.Handle %40, float %881, float %882, float %883, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %885 = extractvalue %dx.types.ResRet.f32 %884, 0
  %886 = extractvalue %dx.types.ResRet.f32 %884, 1
  %887 = extractvalue %dx.types.ResRet.f32 %884, 2
  %888 = fmul fast float %885, 1.023000e+03
  %889 = fmul fast float %886, 1.023000e+03
  %890 = fmul fast float %887, 1.023000e+03
  %891 = fadd fast float %888, 5.000000e-01
  %892 = fadd fast float %889, 5.000000e-01
  %893 = fadd fast float %890, 5.000000e-01
  %894 = call float @dx.op.unary.f32(i32 27, float %891)  ; Round_ni(value)
  %895 = call float @dx.op.unary.f32(i32 27, float %892)  ; Round_ni(value)
  %896 = call float @dx.op.unary.f32(i32 27, float %893)  ; Round_ni(value)
  %897 = fsub fast float %864, %867
  %898 = fsub fast float %865, %868
  %899 = fsub fast float %866, %869
  %900 = fmul fast float %897, 7.500000e-01
  %901 = fmul fast float %898, 7.500000e-01
  %902 = fmul fast float %899, 7.500000e-01
  %903 = fadd fast float %867, 1.250000e-01
  %904 = fadd fast float %903, %900
  %905 = fadd fast float %904, %894
  %906 = fadd fast float %868, 1.250000e-01
  %907 = fadd fast float %906, %901
  %908 = fadd fast float %907, %895
  %909 = fadd fast float %869, 1.250000e-01
  %910 = fadd fast float %909, %902
  %911 = fadd fast float %910, %896
  %912 = fmul fast float %905, %855
  %913 = fmul fast float %908, %856
  %914 = fmul fast float %911, %857
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = add i32 %916, 0
  %918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %917, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %919 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %918, %dx.types.Handle %38, float %912, float %913, float %914, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %920 = extractvalue %dx.types.ResRet.f32 %919, 0
  br label %921

; <label>:921                                     ; preds = %842, %831
  %922 = phi float [ %920, %842 ], [ -1.000000e+00, %831 ]
  %923 = fadd fast float %922, %829
  %924 = call float @dx.op.unary.f32(i32 7, float %923)  ; Saturate(value)
  br label %925

; <label>:925                                     ; preds = %921, %819, %814
  %926 = phi float [ 1.000000e+00, %814 ], [ %924, %921 ], [ %829, %819 ]
  %927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %928 = extractvalue %dx.types.ResRet.i32 %927, 0
  %929 = and i32 %928, 256
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %975, label %931

; <label>:931                                     ; preds = %925
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 252, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = add i32 %933, 0
  %935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %934, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %936 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %935, %dx.types.Handle %66, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %937 = extractvalue %dx.types.ResRet.f32 %936, 0
  %938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.i32 %938, 0
  %940 = shl i32 %939, 4
  %941 = and i32 %940, 32752
  %942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %941)  ; LegacyF16ToF32(value)
  %943 = lshr i32 %939, 7
  %944 = and i32 %943, 32752
  %945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %944)  ; LegacyF16ToF32(value)
  %946 = fsub fast float 1.000000e+00, %926
  %947 = call float @dx.op.binary.f32(i32 35, float %946, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %948 = bitcast float %926 to i32
  %949 = sitofp i32 %948 to float
  %950 = fadd fast float %949, 0xC1CFBF8940000000
  %951 = fmul fast float %945, %950
  %952 = fadd fast float %951, 0x41CFBF8940000000
  %953 = fptosi float %952 to i32
  %954 = bitcast i32 %953 to float
  %955 = bitcast float %947 to i32
  %956 = sitofp i32 %955 to float
  %957 = fadd fast float %956, 0xC1CFBF8940000000
  %958 = fmul fast float %957, %945
  %959 = fadd fast float %958, 0x41CFBF8940000000
  %960 = fptosi float %959 to i32
  %961 = bitcast i32 %960 to float
  %962 = fmul fast float %954, %942
  %963 = fmul fast float %961, %942
  %964 = fsub fast float %947, %962
  %965 = fadd fast float %963, %947
  %966 = call float @dx.op.unary.f32(i32 7, float %964)  ; Saturate(value)
  %967 = call float @dx.op.unary.f32(i32 7, float %965)  ; Saturate(value)
  %968 = fsub fast float %937, %966
  %969 = fsub fast float %967, %966
  %970 = bitcast float %969 to i32
  %971 = sub nsw i32 2129859010, %970
  %972 = bitcast i32 %971 to float
  %973 = fmul fast float %972, %968
  %974 = call float @dx.op.unary.f32(i32 7, float %973)  ; Saturate(value)
  br label %975

; <label>:975                                     ; preds = %931, %925
  %976 = phi float [ %974, %931 ], [ %926, %925 ]
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = and i32 %978, 128
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %996, label %981

; <label>:981                                     ; preds = %975
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 244, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = add i32 %983, 0
  %985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %984, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %986 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %985, %dx.types.Handle %66, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %987 = extractvalue %dx.types.ResRet.f32 %986, 0
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = and i32 %989, 524288
  %991 = icmp ne i32 %990, 0
  %992 = fcmp fast ogt float %987, 0x3FE0101020000000
  %993 = select i1 %992, float 1.000000e+00, float 0.000000e+00
  %994 = select i1 %991, float %993, float %987
  %995 = fmul fast float %994, %976
  br label %996

; <label>:996                                     ; preds = %981, %975
  %997 = phi float [ %995, %981 ], [ %976, %975 ]
  %998 = fcmp fast ult float %997, 0x3F70101020000000
  br i1 %998, label %1529, label %999

; <label>:999                                     ; preds = %996
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = and i32 %1001, 16
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1197, label %1004

; <label>:1004                                    ; preds = %999
  %1005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.i32 %1005, 0
  %1007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.i32 %1007, 0
  %1009 = add i32 %1008, 0
  %1010 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1009, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1011 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1010, %dx.types.Handle %65, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.ResRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.ResRet.f32 %1011, 2
  %1015 = extractvalue %dx.types.ResRet.f32 %1011, 3
  %1016 = and i32 %1006, 255
  %1017 = uitofp i32 %1016 to float
  %1018 = lshr i32 %1006, 8
  %1019 = and i32 %1018, 255
  %1020 = uitofp i32 %1019 to float
  %1021 = fmul fast float %1015, %1017
  %1022 = fadd fast float %1021, %1020
  %1023 = fmul fast float %1022, 0x3F70101000000000
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = and i32 %1025, 512
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1035, label %1028

; <label>:1028                                    ; preds = %1004
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = add i32 %1030, 0
  %1032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1031, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1033 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1032, %dx.types.Handle %66, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  br label %1035

; <label>:1035                                    ; preds = %1028, %1004
  %1036 = phi float [ %1034, %1028 ], [ 1.000000e+00, %1004 ]
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %1038, 33554432
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1144, label %1041

; <label>:1041                                    ; preds = %1035
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = and i32 %1043, 65535
  %1045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1044)  ; LegacyF16ToF32(value)
  %1046 = lshr i32 %1043, 16
  %1047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1046)  ; LegacyF16ToF32(value)
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = and i32 %1049, 65535
  %1051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1050)  ; LegacyF16ToF32(value)
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = lshr i32 %1053, 24
  %1055 = uitofp i32 %1054 to float
  %1056 = fmul fast float %1055, 0x3F70101020000000
  %1057 = and i32 %1053, 255
  %1058 = uitofp i32 %1057 to float
  %1059 = fmul fast float %1058, 0x3F70101020000000
  %1060 = lshr i32 %1053, 8
  %1061 = and i32 %1060, 255
  %1062 = uitofp i32 %1061 to float
  %1063 = fmul fast float %1062, 0x3F70101020000000
  %1064 = lshr i32 %1053, 16
  %1065 = and i32 %1064, 255
  %1066 = uitofp i32 %1065 to float
  %1067 = fmul fast float %1066, 0x3F70101020000000
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = lshr i32 %1069, 24
  %1071 = uitofp i32 %1070 to float
  %1072 = fmul fast float %1071, 0x3F70101020000000
  %1073 = and i32 %1069, 255
  %1074 = uitofp i32 %1073 to float
  %1075 = fmul fast float %1074, 0x3F70101020000000
  %1076 = lshr i32 %1069, 8
  %1077 = and i32 %1076, 255
  %1078 = uitofp i32 %1077 to float
  %1079 = fmul fast float %1078, 0x3F70101020000000
  %1080 = lshr i32 %1069, 16
  %1081 = and i32 %1080, 255
  %1082 = uitofp i32 %1081 to float
  %1083 = fmul fast float %1082, 0x3F70101020000000
  %1084 = bitcast float %1012 to i32
  %1085 = ashr i32 %1084, 1
  %1086 = sub nsw i32 1597463174, %1085
  %1087 = bitcast i32 %1086 to float
  %1088 = fmul fast float %1012, 5.000000e-01
  %1089 = fmul fast float %1087, %1087
  %1090 = fmul fast float %1089, %1088
  %1091 = fsub fast float 1.500000e+00, %1090
  %1092 = fmul fast float %1087, %1012
  %1093 = fmul fast float %1092, %1091
  %1094 = bitcast float %1013 to i32
  %1095 = ashr i32 %1094, 1
  %1096 = sub nsw i32 1597463174, %1095
  %1097 = bitcast i32 %1096 to float
  %1098 = fmul fast float %1013, 5.000000e-01
  %1099 = fmul fast float %1097, %1097
  %1100 = fmul fast float %1099, %1098
  %1101 = fsub fast float 1.500000e+00, %1100
  %1102 = fmul fast float %1097, %1013
  %1103 = fmul fast float %1102, %1101
  %1104 = bitcast float %1014 to i32
  %1105 = ashr i32 %1104, 1
  %1106 = sub nsw i32 1597463174, %1105
  %1107 = bitcast i32 %1106 to float
  %1108 = fmul fast float %1014, 5.000000e-01
  %1109 = fmul fast float %1107, %1107
  %1110 = fmul fast float %1109, %1108
  %1111 = fsub fast float 1.500000e+00, %1110
  %1112 = fmul fast float %1107, %1014
  %1113 = fmul fast float %1112, %1111
  %1114 = fsub fast float %1093, %1075
  %1115 = fsub fast float %1103, %1079
  %1116 = fsub fast float %1113, %1083
  %1117 = fmul fast float %1114, %1045
  %1118 = fmul fast float %1115, %1047
  %1119 = fmul fast float %1116, %1051
  %1120 = fadd fast float %1117, %1059
  %1121 = fadd fast float %1118, %1063
  %1122 = fadd fast float %1119, %1067
  %1123 = call float @dx.op.unary.f32(i32 7, float %1120)  ; Saturate(value)
  %1124 = call float @dx.op.unary.f32(i32 7, float %1121)  ; Saturate(value)
  %1125 = call float @dx.op.unary.f32(i32 7, float %1122)  ; Saturate(value)
  %1126 = fmul fast float %1123, %1123
  %1127 = fmul fast float %1124, %1124
  %1128 = fmul fast float %1125, %1125
  %1129 = fsub fast float %1126, %1012
  %1130 = fsub fast float %1127, %1013
  %1131 = fsub fast float %1128, %1014
  %1132 = fmul fast float %1129, %1036
  %1133 = fmul fast float %1130, %1036
  %1134 = fmul fast float %1131, %1036
  %1135 = fadd fast float %1132, %1012
  %1136 = fadd fast float %1133, %1013
  %1137 = fadd fast float %1134, %1014
  %1138 = fadd fast float %1056, %1023
  %1139 = fsub fast float %1138, %1072
  %1140 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  %1141 = fsub fast float %1140, %1023
  %1142 = fmul fast float %1141, %1036
  %1143 = fadd fast float %1142, %1023
  br label %1197

; <label>:1144                                    ; preds = %1035
  %1145 = and i32 %1038, 134217728
  %1146 = icmp eq i32 %1145, 0
  br i1 %1146, label %1181, label %1147

; <label>:1147                                    ; preds = %1144
  %1148 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %1149 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %1150 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %1151 = fadd fast float %1148, -5.000000e-01
  %1152 = fadd fast float %1149, -5.000000e-01
  %1153 = fadd fast float %1150, -5.000000e-01
  %1154 = fmul fast float %1151, %1036
  %1155 = fmul fast float %1152, %1036
  %1156 = fmul fast float %1153, %1036
  %1157 = fadd fast float %1154, 5.000000e-01
  %1158 = fadd fast float %1155, 5.000000e-01
  %1159 = fadd fast float %1156, 5.000000e-01
  %1160 = call float @dx.op.unary.f32(i32 24, float %1012)  ; Sqrt(value)
  %1161 = call float @dx.op.unary.f32(i32 24, float %1013)  ; Sqrt(value)
  %1162 = call float @dx.op.unary.f32(i32 24, float %1014)  ; Sqrt(value)
  %1163 = fmul fast float %1157, 2.000000e+00
  %1164 = fsub fast float 1.000000e+00, %1163
  %1165 = fmul fast float %1164, %1160
  %1166 = fadd fast float %1165, %1163
  %1167 = fmul fast float %1166, %1160
  %1168 = fmul fast float %1158, 2.000000e+00
  %1169 = fsub fast float 1.000000e+00, %1168
  %1170 = fmul fast float %1169, %1161
  %1171 = fadd fast float %1170, %1168
  %1172 = fmul fast float %1171, %1161
  %1173 = fmul fast float %1159, 2.000000e+00
  %1174 = fsub fast float 1.000000e+00, %1173
  %1175 = fmul fast float %1174, %1162
  %1176 = fadd fast float %1175, %1173
  %1177 = fmul fast float %1176, %1162
  %1178 = fmul fast float %1167, %1167
  %1179 = fmul fast float %1172, %1172
  %1180 = fmul fast float %1177, %1177
  br label %1197

; <label>:1181                                    ; preds = %1144
  %1182 = fmul fast float %231, %231
  %1183 = fmul fast float %235, %235
  %1184 = fmul fast float %239, %239
  %1185 = fadd fast float %1182, -1.000000e+00
  %1186 = fadd fast float %1183, -1.000000e+00
  %1187 = fadd fast float %1184, -1.000000e+00
  %1188 = fmul fast float %1036, %1185
  %1189 = fmul fast float %1036, %1186
  %1190 = fmul fast float %1036, %1187
  %1191 = fadd fast float %1188, 1.000000e+00
  %1192 = fadd fast float %1189, 1.000000e+00
  %1193 = fadd fast float %1190, 1.000000e+00
  %1194 = fmul fast float %1191, %1012
  %1195 = fmul fast float %1192, %1013
  %1196 = fmul fast float %1193, %1014
  br label %1197

; <label>:1197                                    ; preds = %1181, %1147, %1041, %999
  %1198 = phi float [ %1143, %1041 ], [ %1023, %1147 ], [ %1023, %1181 ], [ 0x3FA23C0BE0000000, %999 ]
  %1199 = phi float [ %1135, %1041 ], [ %1178, %1147 ], [ %1194, %1181 ], [ 1.000000e+00, %999 ]
  %1200 = phi float [ %1136, %1041 ], [ %1179, %1147 ], [ %1195, %1181 ], [ 1.000000e+00, %999 ]
  %1201 = phi float [ %1137, %1041 ], [ %1180, %1147 ], [ %1196, %1181 ], [ 1.000000e+00, %999 ]
  %1202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.i32 %1202, 1
  %1204 = and i32 %1203, 1
  %1205 = icmp ne i32 %1204, 0
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = and i32 %1207, 32
  %1209 = icmp ne i32 %1208, 0
  %1210 = and i1 %1205, %1209
  %1211 = select i1 %1210, float 1.000000e+00, float %1199
  %1212 = select i1 %1210, float 0x3FD3333340000000, float %1200
  %1213 = select i1 %1210, float 0x3FD3333340000000, float %1201
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = and i32 %1215, 32
  %1217 = icmp eq i32 %1216, 0
  br i1 %1217, label %1287, label %1218

; <label>:1218                                    ; preds = %1197
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = add i32 %1222, 0
  %1224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1225 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1224, %dx.types.Handle %65, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1226 = extractvalue %dx.types.ResRet.f32 %1225, 0
  %1227 = extractvalue %dx.types.ResRet.f32 %1225, 1
  %1228 = extractvalue %dx.types.ResRet.f32 %1225, 2
  %1229 = extractvalue %dx.types.ResRet.f32 %1225, 3
  %1230 = and i32 %1220, 255
  %1231 = uitofp i32 %1230 to float
  %1232 = lshr i32 %1220, 8
  %1233 = and i32 %1232, 255
  %1234 = uitofp i32 %1233 to float
  %1235 = lshr i32 %1220, 16
  %1236 = and i32 %1235, 255
  %1237 = uitofp i32 %1236 to float
  %1238 = fmul fast float %1237, 0x3F70101000000000
  %1239 = fmul fast float %1226, %1231
  %1240 = fadd fast float %1239, %1234
  %1241 = fmul fast float %1240, 0x3F70101000000000
  %1242 = fadd fast float %1227, -5.000000e-01
  %1243 = fadd fast float %1229, -5.000000e-01
  %1244 = fmul fast float %1242, %1238
  %1245 = fmul fast float %1243, %1238
  %1246 = fadd fast float %1244, 5.000000e-01
  %1247 = fadd fast float %1245, 5.000000e-01
  %1248 = fmul fast float %1246, 2.000000e+00
  %1249 = fadd fast float %1248, -1.000000e+00
  %1250 = fmul fast float %1247, 2.000000e+00
  %1251 = fadd fast float %1250, -1.000000e+00
  %1252 = fadd fast float %1249, %1251
  %1253 = fmul fast float %1252, 5.000000e-01
  %1254 = fsub fast float %1249, %1251
  %1255 = fmul fast float %1254, 5.000000e-01
  %1256 = call float @dx.op.unary.f32(i32 6, float %1253)  ; FAbs(value)
  %1257 = fsub fast float 1.000000e+00, %1256
  %1258 = call float @dx.op.unary.f32(i32 6, float %1255)  ; FAbs(value)
  %1259 = fsub fast float %1257, %1258
  %1260 = call float @dx.op.dot3.f32(i32 55, float %1253, float %1255, float %1259, float %1253, float %1255, float %1259)  ; Dot3(ax,ay,az,bx,by,bz)
  %1261 = call float @dx.op.unary.f32(i32 25, float %1260)  ; Rsqrt(value)
  %1262 = fmul fast float %1253, %1261
  %1263 = fmul fast float %1255, %1261
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = and i32 %1265, 67108864
  %1267 = icmp eq i32 %1266, 0
  br i1 %1267, label %1283, label %1268

; <label>:1268                                    ; preds = %1218
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = and i32 %1270, 65535
  %1272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1271)  ; LegacyF16ToF32(value)
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = and i32 %1274, 65535
  %1276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1275)  ; LegacyF16ToF32(value)
  %1277 = lshr i32 %1270, 16
  %1278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1277)  ; LegacyF16ToF32(value)
  %1279 = fsub fast float %1241, %1278
  %1280 = fmul fast float %1279, %1272
  %1281 = fadd fast float %1280, %1276
  %1282 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  br label %1283

; <label>:1283                                    ; preds = %1268, %1218
  %1284 = phi float [ %1282, %1268 ], [ %1241, %1218 ]
  %1285 = call float @dx.op.dot2.f32(i32 54, float %1262, float %1263, float %44, float %45)  ; Dot2(ax,ay,bx,by)
  %1286 = call float @dx.op.dot2.f32(i32 54, float %1262, float %1263, float %46, float %47)  ; Dot2(ax,ay,bx,by)
  br label %1287

; <label>:1287                                    ; preds = %1283, %1197
  %1288 = phi float [ %1284, %1283 ], [ 0x3FD6666660000000, %1197 ]
  %1289 = phi float [ %1285, %1283 ], [ 0.000000e+00, %1197 ]
  %1290 = phi float [ %1286, %1283 ], [ 0.000000e+00, %1197 ]
  %1291 = phi float [ %1228, %1283 ], [ 1.000000e+00, %1197 ]
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = lshr i32 %1293, 22
  %1295 = shl nuw nsw i32 %1294, 5
  %1296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1295)  ; LegacyF16ToF32(value)
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = and i32 %1298, 64
  %1300 = icmp eq i32 %1299, 0
  br i1 %1300, label %1333, label %1301

; <label>:1301                                    ; preds = %1287
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = add i32 %1303, 0
  %1305 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1304, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = and i32 %1307, 131072
  %1309 = icmp eq i32 %1308, 0
  %1310 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1305, %dx.types.Handle %65, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1311 = extractvalue %dx.types.ResRet.f32 %1310, 0
  %1312 = extractvalue %dx.types.ResRet.f32 %1310, 1
  %1313 = extractvalue %dx.types.ResRet.f32 %1310, 2
  %1314 = fmul fast float %1311, %220
  %1315 = fmul fast float %1312, %223
  %1316 = fmul fast float %1313, %226
  br i1 %1309, label %1323, label %1317

; <label>:1317                                    ; preds = %1301
  %1318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1319 = extractvalue %dx.types.CBufRet.f32 %1318, 0
  %1320 = fmul fast float %1319, %1314
  %1321 = fmul fast float %1319, %1315
  %1322 = fmul fast float %1319, %1316
  br label %1323

; <label>:1323                                    ; preds = %1317, %1301
  %1324 = phi float [ %1320, %1317 ], [ %1314, %1301 ]
  %1325 = phi float [ %1321, %1317 ], [ %1315, %1301 ]
  %1326 = phi float [ %1322, %1317 ], [ %1316, %1301 ]
  %1327 = fmul fast float %1324, %1296
  %1328 = select i1 %187, float %1327, float %1324
  %1329 = call float @dx.op.dot3.f32(i32 55, float %1328, float %1325, float %1326, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1330 = select i1 %187, float 0.000000e+00, float %1324
  %1331 = select i1 %187, float %1329, float %1325
  %1332 = select i1 %187, float 0.000000e+00, float %1326
  br label %1333

; <label>:1333                                    ; preds = %1323, %1287
  %1334 = phi float [ %1330, %1323 ], [ 0.000000e+00, %1287 ]
  %1335 = phi float [ %1331, %1323 ], [ 0.000000e+00, %1287 ]
  %1336 = phi float [ %1332, %1323 ], [ 0.000000e+00, %1287 ]
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = and i32 %1338, 255
  %1340 = uitofp i32 %1339 to float
  %1341 = lshr i32 %1338, 8
  %1342 = and i32 %1341, 255
  %1343 = uitofp i32 %1342 to float
  %1344 = call float @dx.op.dot3.f32(i32 55, float %1211, float %1212, float %1213, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1345 = fmul fast float %1343, %1344
  %1346 = fadd fast float %1345, %1340
  %1347 = fmul fast float %1346, 0x3F70101020000000
  %1348 = call float @dx.op.unary.f32(i32 7, float %1347)  ; Saturate(value)
  br i1 %722, label %1349, label %1357

; <label>:1349                                    ; preds = %1333
  %1350 = fsub fast float 1.000000e+00, %997
  %1351 = fmul fast float %1350, %711
  %1352 = fmul fast float %1350, %712
  %1353 = fmul fast float %1350, %713
  %1354 = fmul fast float %1350, %714
  %1355 = fmul fast float %1350, %715
  %1356 = fmul fast float %1350, %716
  br label %1357

; <label>:1357                                    ; preds = %1349, %1333
  %1358 = phi float [ %1351, %1349 ], [ %711, %1333 ]
  %1359 = phi float [ %1352, %1349 ], [ %712, %1333 ]
  %1360 = phi float [ %1353, %1349 ], [ %713, %1333 ]
  %1361 = phi float [ %1354, %1349 ], [ %714, %1333 ]
  %1362 = phi float [ %1355, %1349 ], [ %715, %1333 ]
  %1363 = phi float [ %1356, %1349 ], [ %716, %1333 ]
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = and i32 %1365, 3
  %1367 = icmp eq i32 %1366, 3
  br i1 %1367, label %1446, label %1368

; <label>:1368                                    ; preds = %1357
  %1369 = and i32 %1365, 16
  %1370 = icmp ne i32 %1369, 0
  %1371 = select i1 %1370, float %997, float 0.000000e+00
  %1372 = icmp eq i32 %1366, 0
  br i1 %1372, label %1373, label %1401

; <label>:1373                                    ; preds = %1368
  %1374 = and i32 %1365, 64
  %1375 = icmp ne i32 %1374, 0
  %1376 = select i1 %1375, float %997, float 0.000000e+00
  %1377 = fsub fast float %1211, %1358
  %1378 = fsub fast float %1212, %1359
  %1379 = fsub fast float %1213, %1360
  %1380 = fmul fast float %1371, %1377
  %1381 = fmul fast float %1371, %1378
  %1382 = fmul fast float %1371, %1379
  %1383 = fadd fast float %1380, %1358
  %1384 = fadd fast float %1381, %1359
  %1385 = fadd fast float %1382, %1360
  %1386 = fsub fast float %1198, %717
  %1387 = fmul fast float %1371, %1386
  %1388 = fadd fast float %1387, %717
  %1389 = fsub fast float %1334, %1361
  %1390 = fsub fast float %1335, %1362
  %1391 = fsub fast float %1336, %1363
  %1392 = fmul fast float %1376, %1389
  %1393 = fmul fast float %1376, %1390
  %1394 = fmul fast float %1376, %1391
  %1395 = fadd fast float %1392, %1361
  %1396 = fadd fast float %1393, %1362
  %1397 = fadd fast float %1394, %1363
  %1398 = fsub fast float %1348, %721
  %1399 = fmul fast float %1371, %1398
  %1400 = fadd fast float %1399, %721
  br label %1446

; <label>:1401                                    ; preds = %1368
  %1402 = icmp eq i32 %1366, 1
  br i1 %1402, label %1403, label %1416

; <label>:1403                                    ; preds = %1401
  %1404 = fadd fast float %1211, -1.000000e+00
  %1405 = fadd fast float %1212, -1.000000e+00
  %1406 = fadd fast float %1213, -1.000000e+00
  %1407 = fmul fast float %1371, %1404
  %1408 = fmul fast float %1371, %1405
  %1409 = fmul fast float %1371, %1406
  %1410 = fadd fast float %1407, 1.000000e+00
  %1411 = fadd fast float %1408, 1.000000e+00
  %1412 = fadd fast float %1409, 1.000000e+00
  %1413 = fmul fast float %1410, %1358
  %1414 = fmul fast float %1411, %1359
  %1415 = fmul fast float %1412, %1360
  br label %1446

; <label>:1416                                    ; preds = %1401
  %1417 = icmp eq i32 %1366, 2
  br i1 %1417, label %1418, label %1446

; <label>:1418                                    ; preds = %1416
  %1419 = call float @dx.op.unary.f32(i32 24, float %1211)  ; Sqrt(value)
  %1420 = call float @dx.op.unary.f32(i32 24, float %1212)  ; Sqrt(value)
  %1421 = call float @dx.op.unary.f32(i32 24, float %1213)  ; Sqrt(value)
  %1422 = fadd fast float %1419, -5.000000e-01
  %1423 = fadd fast float %1420, -5.000000e-01
  %1424 = fadd fast float %1421, -5.000000e-01
  %1425 = fmul fast float %1422, %1371
  %1426 = fmul fast float %1423, %1371
  %1427 = fmul fast float %1424, %1371
  %1428 = fadd fast float %1425, 5.000000e-01
  %1429 = fadd fast float %1426, 5.000000e-01
  %1430 = fadd fast float %1427, 5.000000e-01
  %1431 = fmul fast float %1428, 2.000000e+00
  %1432 = fsub fast float 1.000000e+00, %1431
  %1433 = fmul fast float %1432, %1358
  %1434 = fadd fast float %1433, %1431
  %1435 = fmul fast float %1434, %1358
  %1436 = fmul fast float %1429, 2.000000e+00
  %1437 = fsub fast float 1.000000e+00, %1436
  %1438 = fmul fast float %1437, %1359
  %1439 = fadd fast float %1438, %1436
  %1440 = fmul fast float %1439, %1359
  %1441 = fmul fast float %1430, 2.000000e+00
  %1442 = fsub fast float 1.000000e+00, %1441
  %1443 = fmul fast float %1442, %1360
  %1444 = fadd fast float %1443, %1441
  %1445 = fmul fast float %1444, %1360
  br label %1446

; <label>:1446                                    ; preds = %1418, %1416, %1403, %1373, %1357
  %1447 = phi float [ %1358, %1357 ], [ %1435, %1418 ], [ %1358, %1416 ], [ %1413, %1403 ], [ %1383, %1373 ]
  %1448 = phi float [ %1359, %1357 ], [ %1440, %1418 ], [ %1359, %1416 ], [ %1414, %1403 ], [ %1384, %1373 ]
  %1449 = phi float [ %1360, %1357 ], [ %1445, %1418 ], [ %1360, %1416 ], [ %1415, %1403 ], [ %1385, %1373 ]
  %1450 = phi float [ %1361, %1357 ], [ %1361, %1418 ], [ %1361, %1416 ], [ %1361, %1403 ], [ %1395, %1373 ]
  %1451 = phi float [ %1362, %1357 ], [ %1362, %1418 ], [ %1362, %1416 ], [ %1362, %1403 ], [ %1396, %1373 ]
  %1452 = phi float [ %1363, %1357 ], [ %1363, %1418 ], [ %1363, %1416 ], [ %1363, %1403 ], [ %1397, %1373 ]
  %1453 = phi float [ %717, %1357 ], [ %717, %1418 ], [ %717, %1416 ], [ %717, %1403 ], [ %1388, %1373 ]
  %1454 = phi float [ %721, %1357 ], [ %721, %1418 ], [ %721, %1416 ], [ %721, %1403 ], [ %1400, %1373 ]
  %1455 = and i32 %1365, 12
  %1456 = icmp eq i32 %1455, 12
  br i1 %1456, label %1529, label %1457

; <label>:1457                                    ; preds = %1446
  %1458 = and i32 %1365, 2097184
  %1459 = icmp eq i32 %1458, 2097184
  %1460 = select i1 %1459, float %997, float 0.000000e+00
  %1461 = and i32 %1365, 4194336
  %1462 = icmp eq i32 %1461, 4194336
  %1463 = select i1 %1462, float %997, float 0.000000e+00
  %1464 = and i32 %1365, 8388640
  %1465 = icmp eq i32 %1464, 8388640
  %1466 = select i1 %1465, float %997, float 0.000000e+00
  %1467 = icmp eq i32 %1455, 0
  br i1 %1467, label %1468, label %1481

; <label>:1468                                    ; preds = %1457
  %1469 = fsub fast float %1289, %709
  %1470 = fsub fast float %1290, %710
  %1471 = fmul fast float %1460, %1469
  %1472 = fmul fast float %1460, %1470
  %1473 = fadd fast float %1471, %709
  %1474 = fadd fast float %1472, %710
  %1475 = fsub fast float %1291, %720
  %1476 = fmul fast float %1463, %1475
  %1477 = fadd fast float %1476, %720
  %1478 = fsub fast float %1288, %719
  %1479 = fmul fast float %1466, %1478
  %1480 = fadd fast float %1479, %719
  br label %1529

; <label>:1481                                    ; preds = %1457
  %1482 = icmp eq i32 %1455, 4
  br i1 %1482, label %1483, label %1515

; <label>:1483                                    ; preds = %1481
  %1484 = fmul fast float %1460, %1289
  %1485 = fmul fast float %1460, %1290
  %1486 = fadd fast float %1484, %709
  %1487 = fadd fast float %1485, %710
  %1488 = call float @dx.op.binary.f32(i32 36, float %720, float %1291)  ; FMin(a,b)
  %1489 = fsub fast float %1488, %720
  %1490 = fmul fast float %1489, %1463
  %1491 = fadd fast float %1490, %720
  %1492 = fadd fast float %1288, %719
  %1493 = fmul fast float %1492, 0x3FF337FAE0000000
  %1494 = fmul fast float %719, %719
  %1495 = fmul fast float %1288, %1288
  %1496 = fadd fast float %1495, %1494
  %1497 = fmul fast float %1496, 0x3FE5152B00000000
  %1498 = fmul fast float %719, 0xBFCC1F85E0000000
  %1499 = fmul fast float %1498, %1288
  %1500 = fadd fast float %1499, 0xBFE1363700000000
  %1501 = fadd fast float %1500, %1493
  %1502 = fsub fast float %1501, %1497
  %1503 = fmul fast float %1492, 0x3FBA6F0D00000000
  %1504 = fmul fast float %1496, 0x3FD0432880000000
  %1505 = fmul fast float %719, 0xBFEF110800000000
  %1506 = fmul fast float %1505, %1288
  %1507 = fadd fast float %1506, 1.000000e+00
  %1508 = fsub fast float %1507, %1503
  %1509 = fadd fast float %1508, %1504
  %1510 = fdiv fast float %1502, %1509
  %1511 = call float @dx.op.unary.f32(i32 7, float %1510)  ; Saturate(value)
  %1512 = fsub fast float %1511, %719
  %1513 = fmul fast float %1512, %1466
  %1514 = fadd fast float %1513, %719
  br label %1529

; <label>:1515                                    ; preds = %1481
  %1516 = icmp eq i32 %1455, 8
  br i1 %1516, label %1517, label %1529

; <label>:1517                                    ; preds = %1515
  %1518 = fmul fast float %1460, %1289
  %1519 = fmul fast float %1460, %1290
  %1520 = fadd fast float %1518, %709
  %1521 = fadd fast float %1519, %710
  %1522 = call float @dx.op.binary.f32(i32 36, float %720, float %1291)  ; FMin(a,b)
  %1523 = fsub fast float %1522, %720
  %1524 = fmul fast float %1523, %1463
  %1525 = fadd fast float %1524, %720
  %1526 = fsub fast float %1288, %719
  %1527 = fmul fast float %1466, %1526
  %1528 = fadd fast float %1527, %719
  br label %1529

; <label>:1529                                    ; preds = %1517, %1515, %1483, %1468, %1446, %996, %708
  %1530 = phi float [ %709, %1446 ], [ %709, %996 ], [ %709, %708 ], [ %1473, %1468 ], [ %1486, %1483 ], [ %709, %1515 ], [ %1520, %1517 ]
  %1531 = phi float [ %710, %1446 ], [ %710, %996 ], [ %710, %708 ], [ %1474, %1468 ], [ %1487, %1483 ], [ %710, %1515 ], [ %1521, %1517 ]
  %1532 = phi float [ %1447, %1446 ], [ %711, %996 ], [ %711, %708 ], [ %1447, %1468 ], [ %1447, %1483 ], [ %1447, %1515 ], [ %1447, %1517 ]
  %1533 = phi float [ %1448, %1446 ], [ %712, %996 ], [ %712, %708 ], [ %1448, %1468 ], [ %1448, %1483 ], [ %1448, %1515 ], [ %1448, %1517 ]
  %1534 = phi float [ %1449, %1446 ], [ %713, %996 ], [ %713, %708 ], [ %1449, %1468 ], [ %1449, %1483 ], [ %1449, %1515 ], [ %1449, %1517 ]
  %1535 = phi float [ %1450, %1446 ], [ %714, %996 ], [ %714, %708 ], [ %1450, %1468 ], [ %1450, %1483 ], [ %1450, %1515 ], [ %1450, %1517 ]
  %1536 = phi float [ %1451, %1446 ], [ %715, %996 ], [ %715, %708 ], [ %1451, %1468 ], [ %1451, %1483 ], [ %1451, %1515 ], [ %1451, %1517 ]
  %1537 = phi float [ %1452, %1446 ], [ %716, %996 ], [ %716, %708 ], [ %1452, %1468 ], [ %1452, %1483 ], [ %1452, %1515 ], [ %1452, %1517 ]
  %1538 = phi float [ %1453, %1446 ], [ %717, %996 ], [ %717, %708 ], [ %1453, %1468 ], [ %1453, %1483 ], [ %1453, %1515 ], [ %1453, %1517 ]
  %1539 = phi float [ %719, %1446 ], [ %719, %996 ], [ %719, %708 ], [ %1480, %1468 ], [ %1514, %1483 ], [ %719, %1515 ], [ %1528, %1517 ]
  %1540 = phi float [ %720, %1446 ], [ %720, %996 ], [ %720, %708 ], [ %1477, %1468 ], [ %1491, %1483 ], [ %720, %1515 ], [ %1525, %1517 ]
  %1541 = phi float [ %1454, %1446 ], [ %721, %996 ], [ %721, %708 ], [ %1454, %1468 ], [ %1454, %1483 ], [ %1454, %1515 ], [ %1454, %1517 ]
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 0
  %1544 = call float @dx.op.dot2.f32(i32 54, float %1530, float %1531, float %1530, float %1531)  ; Dot2(ax,ay,bx,by)
  %1545 = fmul fast float %1544, 0x3FE3333340000000
  %1546 = fsub fast float 1.000000e+00, %1545
  %1547 = call float @dx.op.dot3.f32(i32 55, float %1530, float %1531, float %1546, float %1530, float %1531, float %1546)  ; Dot3(ax,ay,az,bx,by,bz)
  %1548 = call float @dx.op.unary.f32(i32 25, float %1547)  ; Rsqrt(value)
  %1549 = fmul fast float %1548, %1530
  %1550 = fmul fast float %1548, %1531
  %1551 = fmul fast float %1546, %1548
  %1552 = fmul fast float %1551, %52
  %1553 = fmul fast float %1551, %53
  %1554 = fmul fast float %1551, %54
  %1555 = fmul fast float %1549, %48
  %1556 = fmul fast float %1549, %49
  %1557 = fmul fast float %1549, %50
  %1558 = fadd fast float %1552, %1555
  %1559 = fadd fast float %1553, %1556
  %1560 = fadd fast float %1554, %1557
  %1561 = fmul fast float %1550, %80
  %1562 = fmul fast float %1550, %81
  %1563 = fmul fast float %1550, %82
  %1564 = fadd fast float %1558, %1561
  %1565 = fadd fast float %1559, %1562
  %1566 = fadd fast float %1560, %1563
  %1567 = call float @dx.op.dot3.f32(i32 55, float %1564, float %1565, float %1566, float %1564, float %1565, float %1566)  ; Dot3(ax,ay,az,bx,by,bz)
  %1568 = call float @dx.op.unary.f32(i32 25, float %1567)  ; Rsqrt(value)
  %1569 = fmul fast float %1564, %1568
  %1570 = fmul fast float %1565, %1568
  %1571 = fmul fast float %1566, %1568
  %1572 = call float @dx.op.unary.f32(i32 83, float %116)  ; DerivCoarseX(value)
  %1573 = call float @dx.op.unary.f32(i32 83, float %117)  ; DerivCoarseX(value)
  %1574 = call float @dx.op.unary.f32(i32 83, float %118)  ; DerivCoarseX(value)
  %1575 = call float @dx.op.unary.f32(i32 84, float %116)  ; DerivCoarseY(value)
  %1576 = call float @dx.op.unary.f32(i32 84, float %117)  ; DerivCoarseY(value)
  %1577 = call float @dx.op.unary.f32(i32 84, float %118)  ; DerivCoarseY(value)
  %1578 = fadd fast float %1572, %116
  %1579 = fadd fast float %1573, %117
  %1580 = fadd fast float %1574, %118
  %1581 = fadd fast float %1575, %116
  %1582 = fadd fast float %1576, %117
  %1583 = fadd fast float %1577, %118
  %1584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1585 = extractvalue %dx.types.CBufRet.f32 %1584, 0
  %1586 = extractvalue %dx.types.CBufRet.f32 %1584, 1
  %1587 = extractvalue %dx.types.CBufRet.f32 %1584, 2
  %1588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1589 = extractvalue %dx.types.CBufRet.f32 %1588, 2
  %1590 = extractvalue %dx.types.CBufRet.f32 %1588, 3
  %1591 = fmul fast float %1585, %69
  %1592 = fmul fast float %1591, %1589
  %1593 = fmul fast float %1586, %70
  %1594 = fmul fast float %1593, %1590
  %1595 = fptoui float %1592 to i32
  %1596 = fptoui float %1594 to i32
  %1597 = fadd fast float %1585, -1.000000e+00
  %1598 = fadd fast float %1586, -1.000000e+00
  %1599 = fptoui float %1597 to i32
  %1600 = fptoui float %1598 to i32
  %1601 = call i32 @dx.op.binary.i32(i32 40, i32 %1595, i32 %1599)  ; UMin(a,b)
  %1602 = call i32 @dx.op.binary.i32(i32 40, i32 %1596, i32 %1600)  ; UMin(a,b)
  %1603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.f32 %1603, 2
  %1605 = extractvalue %dx.types.CBufRet.f32 %1603, 3
  %1606 = fmul fast float %1604, %64
  %1607 = fsub fast float %1606, %1605
  %1608 = fadd fast float %1587, -1.000000e+00
  %1609 = call float @dx.op.binary.f32(i32 36, float %1607, float %1608)  ; FMin(a,b)
  %1610 = fptoui float %1609 to i32
  %1611 = fptoui float %1585 to i32
  %1612 = fptoui float %1586 to i32
  %1613 = mul i32 %1610, %1612
  %1614 = add i32 %1613, %1602
  %1615 = mul i32 %1614, %1611
  %1616 = add i32 %1615, %1601
  %1617 = shl i32 %1616, 2
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1617, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = and i32 %1619, 1023
  %1621 = lshr i32 %1619, 10
  %1622 = icmp eq i32 %1620, 0
  br i1 %1622, label %2048, label %1623

; <label>:1623                                    ; preds = %1529
  %1624 = and i32 %1619, 1023
  br label %1625

; <label>:1625                                    ; preds = %1751, %1623
  %1626 = phi float [ %1752, %1751 ], [ 0.000000e+00, %1623 ]
  %1627 = phi float [ %1753, %1751 ], [ %1543, %1623 ]
  %1628 = phi float [ %1754, %1751 ], [ %1541, %1623 ]
  %1629 = phi float [ %1755, %1751 ], [ 0.000000e+00, %1623 ]
  %1630 = phi float [ %1756, %1751 ], [ 0.000000e+00, %1623 ]
  %1631 = phi float [ %1757, %1751 ], [ %1535, %1623 ]
  %1632 = phi float [ %1758, %1751 ], [ %1536, %1623 ]
  %1633 = phi float [ %1759, %1751 ], [ %1537, %1623 ]
  %1634 = phi float [ %1760, %1751 ], [ %1569, %1623 ]
  %1635 = phi float [ %1761, %1751 ], [ %1570, %1623 ]
  %1636 = phi float [ %1762, %1751 ], [ %1571, %1623 ]
  %1637 = phi float [ %1763, %1751 ], [ %1540, %1623 ]
  %1638 = phi float [ %1764, %1751 ], [ %1539, %1623 ]
  %1639 = phi float [ %1765, %1751 ], [ 0.000000e+00, %1623 ]
  %1640 = phi float [ %1766, %1751 ], [ %1538, %1623 ]
  %1641 = phi float [ %1767, %1751 ], [ %1532, %1623 ]
  %1642 = phi float [ %1768, %1751 ], [ %1533, %1623 ]
  %1643 = phi float [ %1769, %1751 ], [ %1534, %1623 ]
  %1644 = phi i32 [ %1701, %1751 ], [ 0, %1623 ]
  %1645 = add nuw nsw i32 %1644, %1621
  %1646 = shl i32 %1645, 2
  %1647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1646, i32 undef)  ; BufferLoad(srv,index,wot)
  %1648 = extractvalue %dx.types.ResRet.i32 %1647, 0
  %1649 = shl i32 %1648, 8
  %1650 = or i32 %1649, 48
  %1651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1650, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.f32 %1651, 0
  %1653 = extractvalue %dx.types.ResRet.f32 %1651, 1
  %1654 = extractvalue %dx.types.ResRet.f32 %1651, 2
  %1655 = extractvalue %dx.types.ResRet.f32 %1651, 3
  %1656 = or i32 %1649, 64
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1656, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = extractvalue %dx.types.ResRet.i32 %1657, 1
  %1660 = or i32 %1649, 80
  %1661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1660, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.f32 %1661, 2
  %1663 = extractvalue %dx.types.ResRet.f32 %1661, 3
  %1664 = or i32 %1649, 96
  %1665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.f32 %1665, 0
  %1667 = extractvalue %dx.types.ResRet.f32 %1665, 1
  %1668 = extractvalue %dx.types.ResRet.f32 %1665, 2
  %1669 = extractvalue %dx.types.ResRet.f32 %1665, 3
  %1670 = or i32 %1649, 112
  %1671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1670, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.f32 %1671, 2
  %1673 = or i32 %1649, 128
  %1674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1673, i32 undef)  ; BufferLoad(srv,index,wot)
  %1675 = extractvalue %dx.types.ResRet.f32 %1674, 0
  %1676 = extractvalue %dx.types.ResRet.f32 %1674, 1
  %1677 = extractvalue %dx.types.ResRet.f32 %1674, 2
  %1678 = extractvalue %dx.types.ResRet.f32 %1674, 3
  %1679 = or i32 %1649, 144
  %1680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1679, i32 undef)  ; BufferLoad(srv,index,wot)
  %1681 = extractvalue %dx.types.ResRet.f32 %1680, 0
  %1682 = extractvalue %dx.types.ResRet.f32 %1680, 1
  %1683 = extractvalue %dx.types.ResRet.f32 %1680, 2
  %1684 = extractvalue %dx.types.ResRet.f32 %1680, 3
  %1685 = or i32 %1649, 160
  %1686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1685, i32 undef)  ; BufferLoad(srv,index,wot)
  %1687 = extractvalue %dx.types.ResRet.f32 %1686, 0
  %1688 = extractvalue %dx.types.ResRet.f32 %1686, 1
  %1689 = extractvalue %dx.types.ResRet.f32 %1686, 2
  %1690 = extractvalue %dx.types.ResRet.f32 %1686, 3
  %1691 = or i32 %1649, 192
  %1692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1693 = extractvalue %dx.types.ResRet.i32 %1692, 0
  %1694 = or i32 %1649, 208
  %1695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1694, i32 undef)  ; BufferLoad(srv,index,wot)
  %1696 = extractvalue %dx.types.ResRet.f32 %1695, 0
  %1697 = or i32 %1649, 248
  %1698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1697, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.f32 %1698, 0
  %1700 = extractvalue %dx.types.ResRet.f32 %1698, 1
  %1701 = add nuw nsw i32 %1644, 1
  %1702 = bitcast float %1655 to i32
  %1703 = and i32 %1702, 2560
  %1704 = icmp eq i32 %1703, 0
  %1705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1649, i32 undef)  ; BufferLoad(srv,index,wot)
  %1706 = extractvalue %dx.types.ResRet.f32 %1705, 0
  %1707 = extractvalue %dx.types.ResRet.f32 %1705, 1
  %1708 = extractvalue %dx.types.ResRet.f32 %1705, 2
  %1709 = extractvalue %dx.types.ResRet.f32 %1705, 3
  %1710 = call float @dx.op.dot4.f32(i32 56, float %1706, float %1707, float %1708, float %1709, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1711 = or i32 %1649, 16
  %1712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.f32 %1712, 0
  %1714 = extractvalue %dx.types.ResRet.f32 %1712, 1
  %1715 = extractvalue %dx.types.ResRet.f32 %1712, 2
  %1716 = extractvalue %dx.types.ResRet.f32 %1712, 3
  %1717 = call float @dx.op.dot4.f32(i32 56, float %1713, float %1714, float %1715, float %1716, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1718 = or i32 %1649, 32
  %1719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1718, i32 undef)  ; BufferLoad(srv,index,wot)
  %1720 = extractvalue %dx.types.ResRet.f32 %1719, 0
  %1721 = extractvalue %dx.types.ResRet.f32 %1719, 1
  %1722 = extractvalue %dx.types.ResRet.f32 %1719, 2
  %1723 = extractvalue %dx.types.ResRet.f32 %1719, 3
  %1724 = call float @dx.op.dot4.f32(i32 56, float %1720, float %1721, float %1722, float %1723, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1725 = call float @dx.op.unary.f32(i32 27, float %1710)  ; Round_ni(value)
  %1726 = call float @dx.op.unary.f32(i32 6, float %1725)  ; FAbs(value)
  %1727 = call float @dx.op.unary.f32(i32 27, float %1717)  ; Round_ni(value)
  %1728 = call float @dx.op.unary.f32(i32 6, float %1727)  ; FAbs(value)
  %1729 = call float @dx.op.unary.f32(i32 6, float %1724)  ; FAbs(value)
  %1730 = call float @dx.op.unary.f32(i32 27, float %1729)  ; Round_ni(value)
  %1731 = fadd fast float %1728, %1726
  %1732 = fadd fast float %1731, %1730
  %1733 = fcmp fast oeq float %1732, 0.000000e+00
  %1734 = call float @dx.op.dot4.f32(i32 56, float %1706, float %1707, float %1708, float %1709, float %1578, float %1579, float %1580, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1735 = call float @dx.op.dot4.f32(i32 56, float %1713, float %1714, float %1715, float %1716, float %1578, float %1579, float %1580, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1736 = call float @dx.op.dot4.f32(i32 56, float %1706, float %1707, float %1708, float %1709, float %1581, float %1582, float %1583, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1737 = call float @dx.op.dot4.f32(i32 56, float %1713, float %1714, float %1715, float %1716, float %1581, float %1582, float %1583, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1738 = fsub fast float %1734, %1710
  %1739 = fsub fast float %1736, %1710
  %1740 = fsub fast float %1735, %1717
  %1741 = fsub fast float %1737, %1717
  %1742 = call float @dx.op.dot3.f32(i32 55, float %1652, float %1653, float %1654, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %1743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1744 = extractvalue %dx.types.CBufRet.f32 %1743, 2
  %1745 = fadd fast float %1744, %1742
  %1746 = call float @dx.op.unary.f32(i32 7, float %1745)  ; Saturate(value)
  %1747 = extractvalue %dx.types.CBufRet.f32 %1743, 0
  %1748 = fcmp fast ogt float %1746, %1747
  %1749 = and i1 %1733, %1748
  %1750 = and i1 %1704, %1749
  br i1 %1750, label %1771, label %1751

; <label>:1751                                    ; preds = %2034, %1852, %1771, %1625
  %1752 = phi float [ %1626, %1771 ], [ %1855, %1852 ], [ %1855, %2034 ], [ %1626, %1625 ]
  %1753 = phi float [ %1627, %1771 ], [ %1627, %1852 ], [ %2009, %2034 ], [ %1627, %1625 ]
  %1754 = phi float [ %1628, %1771 ], [ %1628, %1852 ], [ %2007, %2034 ], [ %1628, %1625 ]
  %1755 = phi float [ %1629, %1771 ], [ %1629, %1852 ], [ %1979, %2034 ], [ %1629, %1625 ]
  %1756 = phi float [ %1630, %1771 ], [ %1630, %1852 ], [ %1977, %2034 ], [ %1630, %1625 ]
  %1757 = phi float [ %1631, %1771 ], [ %1631, %1852 ], [ %2044, %2034 ], [ %1631, %1625 ]
  %1758 = phi float [ %1632, %1771 ], [ %1632, %1852 ], [ %2045, %2034 ], [ %1632, %1625 ]
  %1759 = phi float [ %1633, %1771 ], [ %1633, %1852 ], [ %2046, %2034 ], [ %1633, %1625 ]
  %1760 = phi float [ %1634, %1771 ], [ %1634, %1852 ], [ %1958, %2034 ], [ %1634, %1625 ]
  %1761 = phi float [ %1635, %1771 ], [ %1635, %1852 ], [ %1959, %2034 ], [ %1635, %1625 ]
  %1762 = phi float [ %1636, %1771 ], [ %1636, %1852 ], [ %1960, %2034 ], [ %1636, %1625 ]
  %1763 = phi float [ %1637, %1771 ], [ %1637, %1852 ], [ %1987, %2034 ], [ %1637, %1625 ]
  %1764 = phi float [ %1638, %1771 ], [ %1638, %1852 ], [ %1984, %2034 ], [ %1638, %1625 ]
  %1765 = phi float [ %1639, %1771 ], [ %1639, %1852 ], [ %1981, %2034 ], [ %1639, %1625 ]
  %1766 = phi float [ %1640, %1771 ], [ %1640, %1852 ], [ %1975, %2034 ], [ %1640, %1625 ]
  %1767 = phi float [ %1641, %1771 ], [ %1641, %1852 ], [ %1970, %2034 ], [ %1641, %1625 ]
  %1768 = phi float [ %1642, %1771 ], [ %1642, %1852 ], [ %1971, %2034 ], [ %1642, %1625 ]
  %1769 = phi float [ %1643, %1771 ], [ %1643, %1852 ], [ %1972, %2034 ], [ %1643, %1625 ]
  %1770 = icmp eq i32 %1701, %1624
  br i1 %1770, label %2047, label %1625

; <label>:1771                                    ; preds = %1625
  %1772 = extractvalue %dx.types.ResRet.f32 %1671, 3
  %1773 = extractvalue %dx.types.ResRet.f32 %1671, 1
  %1774 = extractvalue %dx.types.ResRet.f32 %1671, 0
  %1775 = extractvalue %dx.types.ResRet.f32 %1661, 1
  %1776 = extractvalue %dx.types.ResRet.f32 %1661, 0
  %1777 = extractvalue %dx.types.ResRet.i32 %1657, 3
  %1778 = extractvalue %dx.types.ResRet.i32 %1657, 2
  %1779 = add i32 %1777, 0
  %1780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1779, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1782 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1780, %dx.types.Handle %1781, float %1710, float %1717, float undef, float undef, i32 0, i32 0, i32 undef, float %1738, float %1740, float undef, float %1739, float %1741, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1783 = extractvalue %dx.types.ResRet.f32 %1782, 0
  %1784 = fmul fast float %1783, %1776
  %1785 = fadd fast float %1784, %1775
  %1786 = call float @dx.op.unary.f32(i32 7, float %1785)  ; Saturate(value)
  %1787 = fmul fast float %1710, %1666
  %1788 = call float @dx.op.tertiary.f32(i32 46, float %1667, float %1717, float %1787)  ; FMad(a,b,c)
  %1789 = fadd fast float %1788, %1774
  %1790 = fmul fast float %1710, %1668
  %1791 = call float @dx.op.tertiary.f32(i32 46, float %1669, float %1717, float %1790)  ; FMad(a,b,c)
  %1792 = fadd fast float %1791, %1773
  %1793 = fmul fast float %1738, %1666
  %1794 = call float @dx.op.tertiary.f32(i32 46, float %1667, float %1740, float %1793)  ; FMad(a,b,c)
  %1795 = fmul fast float %1738, %1668
  %1796 = call float @dx.op.tertiary.f32(i32 46, float %1669, float %1740, float %1795)  ; FMad(a,b,c)
  %1797 = fmul fast float %1739, %1666
  %1798 = call float @dx.op.tertiary.f32(i32 46, float %1667, float %1741, float %1797)  ; FMad(a,b,c)
  %1799 = fmul fast float %1739, %1668
  %1800 = call float @dx.op.tertiary.f32(i32 46, float %1669, float %1741, float %1799)  ; FMad(a,b,c)
  %1801 = add i32 %1778, 0
  %1802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1801, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1803 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1802, %dx.types.Handle %1781, float %1789, float %1792, float undef, float undef, i32 0, i32 0, i32 undef, float %1794, float %1796, float undef, float %1798, float %1800, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1804 = extractvalue %dx.types.ResRet.f32 %1803, 0
  %1805 = and i32 %1702, 1024
  %1806 = icmp ne i32 %1805, 0
  %1807 = fcmp fast ogt float %1804, 0x3FE0101020000000
  %1808 = uitofp i1 %1807 to float
  %1809 = select i1 %1806, float %1808, float %1804
  %1810 = and i32 %1702, 8192
  %1811 = icmp ne i32 %1810, 0
  %1812 = select i1 %1811, float %1772, float 1.000000e+00
  %1813 = fmul fast float %1710, 2.000000e+00
  %1814 = fadd fast float %1813, -1.000000e+00
  %1815 = call float @dx.op.unary.f32(i32 6, float %1814)  ; FAbs(value)
  %1816 = fmul fast float %1815, %1699
  %1817 = fsub fast float %1816, %1699
  %1818 = call float @dx.op.unary.f32(i32 7, float %1817)  ; Saturate(value)
  %1819 = fmul fast float %1717, 2.000000e+00
  %1820 = fadd fast float %1819, -1.000000e+00
  %1821 = call float @dx.op.unary.f32(i32 6, float %1820)  ; FAbs(value)
  %1822 = fmul fast float %1821, %1700
  %1823 = fsub fast float %1822, %1700
  %1824 = call float @dx.op.unary.f32(i32 7, float %1823)  ; Saturate(value)
  %1825 = fmul fast float %1729, %1662
  %1826 = fsub fast float %1825, %1662
  %1827 = call float @dx.op.unary.f32(i32 7, float %1826)  ; Saturate(value)
  %1828 = fmul fast float %1786, %1812
  %1829 = fmul fast float %1828, %1783
  %1830 = fmul fast float %1829, %1818
  %1831 = fmul fast float %1830, %1809
  %1832 = fmul fast float %1831, %1824
  %1833 = fmul fast float %1832, %1827
  %1834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1835 = extractvalue %dx.types.CBufRet.f32 %1834, 1
  %1836 = extractvalue %dx.types.CBufRet.f32 %1834, 0
  %1837 = fsub fast float %1746, %1836
  %1838 = fmul fast float %1837, %1835
  %1839 = call float @dx.op.unary.f32(i32 7, float %1838)  ; Saturate(value)
  %1840 = fmul fast float %1833, %1663
  %1841 = fadd fast float %1833, %1663
  %1842 = fmul fast float %1841, %1672
  %1843 = fsub fast float %1842, %1672
  %1844 = call float @dx.op.unary.f32(i32 7, float %1843)  ; Saturate(value)
  %1845 = and i32 %1702, 128
  %1846 = icmp ne i32 %1845, 0
  %1847 = select i1 %1846, float %1844, float %1840
  %1848 = fmul fast float %1847, %1839
  %1849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1850 = extractvalue %dx.types.CBufRet.f32 %1849, 0
  %1851 = fcmp fast ugt float %1848, %1850
  br i1 %1851, label %1852, label %1751

; <label>:1852                                    ; preds = %1771
  %1853 = select i1 %1811, float %1848, float 0.000000e+00
  %1854 = fadd fast float %1853, %1626
  %1855 = call float @dx.op.unary.f32(i32 7, float %1854)  ; Saturate(value)
  br i1 %1811, label %1751, label %1856

; <label>:1856                                    ; preds = %1852
  %1857 = and i32 %1702, 4
  %1858 = and i32 %1702, 8
  %1859 = add i32 %1658, 0
  %1860 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1859, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1862 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1860, %dx.types.Handle %1861, float %1789, float %1792, float undef, float undef, i32 0, i32 0, i32 undef, float %1794, float %1796, float undef, float %1798, float %1800, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1863 = extractvalue %dx.types.ResRet.f32 %1862, 0
  %1864 = extractvalue %dx.types.ResRet.f32 %1862, 1
  %1865 = extractvalue %dx.types.ResRet.f32 %1862, 2
  %1866 = extractvalue %dx.types.ResRet.f32 %1862, 3
  %1867 = bitcast float %1684 to i32
  %1868 = and i32 %1867, 255
  %1869 = uitofp i32 %1868 to float
  %1870 = lshr i32 %1867, 8
  %1871 = and i32 %1870, 255
  %1872 = uitofp i32 %1871 to float
  %1873 = fmul fast float %1866, %1869
  %1874 = fadd fast float %1873, %1872
  %1875 = fmul fast float %1874, 0x3F70101000000000
  %1876 = add i32 %1659, 0
  %1877 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1876, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1878 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1877, %dx.types.Handle %1861, float %1789, float %1792, float undef, float undef, i32 0, i32 0, i32 undef, float %1794, float %1796, float undef, float %1798, float %1800, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1879 = extractvalue %dx.types.ResRet.f32 %1878, 0
  %1880 = extractvalue %dx.types.ResRet.f32 %1878, 1
  %1881 = extractvalue %dx.types.ResRet.f32 %1878, 2
  %1882 = extractvalue %dx.types.ResRet.f32 %1878, 3
  %1883 = bitcast float %1678 to i32
  %1884 = and i32 %1883, 255
  %1885 = uitofp i32 %1884 to float
  %1886 = lshr i32 %1883, 8
  %1887 = and i32 %1886, 255
  %1888 = uitofp i32 %1887 to float
  %1889 = lshr i32 %1883, 16
  %1890 = and i32 %1889, 255
  %1891 = uitofp i32 %1890 to float
  %1892 = fmul fast float %1891, 0x3F70101000000000
  %1893 = fmul fast float %1879, %1885
  %1894 = fadd fast float %1893, %1888
  %1895 = fmul fast float %1894, 0x3F70101000000000
  %1896 = fadd fast float %1880, -5.000000e-01
  %1897 = fadd fast float %1882, -5.000000e-01
  %1898 = fmul fast float %1896, %1892
  %1899 = fmul fast float %1897, %1892
  %1900 = fadd fast float %1898, 5.000000e-01
  %1901 = fadd fast float %1899, 5.000000e-01
  %1902 = fmul fast float %1863, %1687
  %1903 = fmul fast float %1864, %1688
  %1904 = fmul fast float %1865, %1689
  %1905 = fmul fast float %1900, 2.000000e+00
  %1906 = fadd fast float %1905, -1.000000e+00
  %1907 = fmul fast float %1901, 2.000000e+00
  %1908 = fadd fast float %1907, -1.000000e+00
  %1909 = fadd fast float %1906, %1908
  %1910 = fmul fast float %1909, 5.000000e-01
  %1911 = fsub fast float %1906, %1908
  %1912 = fmul fast float %1911, 5.000000e-01
  %1913 = call float @dx.op.unary.f32(i32 6, float %1910)  ; FAbs(value)
  %1914 = fsub fast float 1.000000e+00, %1913
  %1915 = call float @dx.op.unary.f32(i32 6, float %1912)  ; FAbs(value)
  %1916 = fsub fast float %1914, %1915
  %1917 = call float @dx.op.dot3.f32(i32 55, float %1910, float %1912, float %1916, float %1910, float %1912, float %1916)  ; Dot3(ax,ay,az,bx,by,bz)
  %1918 = call float @dx.op.unary.f32(i32 25, float %1917)  ; Rsqrt(value)
  %1919 = fmul fast float %1910, %1918
  %1920 = fmul fast float %1912, %1918
  %1921 = fmul fast float %1918, %1916
  %1922 = fmul fast float %1921, %1652
  %1923 = fmul fast float %1921, %1653
  %1924 = fmul fast float %1921, %1654
  %1925 = fmul fast float %1919, %1675
  %1926 = fmul fast float %1919, %1676
  %1927 = fmul fast float %1919, %1677
  %1928 = fadd fast float %1925, %1922
  %1929 = fadd fast float %1926, %1923
  %1930 = fadd fast float %1927, %1924
  %1931 = fmul fast float %1920, %1681
  %1932 = fmul fast float %1920, %1682
  %1933 = fmul fast float %1920, %1683
  %1934 = fadd fast float %1928, %1931
  %1935 = fadd fast float %1929, %1932
  %1936 = fadd fast float %1930, %1933
  %1937 = call float @dx.op.dot3.f32(i32 55, float %1934, float %1935, float %1936, float %1934, float %1935, float %1936)  ; Dot3(ax,ay,az,bx,by,bz)
  %1938 = call float @dx.op.unary.f32(i32 25, float %1937)  ; Rsqrt(value)
  %1939 = fmul fast float %1934, %1938
  %1940 = fmul fast float %1935, %1938
  %1941 = fmul fast float %1936, %1938
  %1942 = icmp ne i32 %1858, 0
  %1943 = select i1 %1942, float 1.000000e+00, float 0.000000e+00
  %1944 = fmul fast float %1848, %1943
  %1945 = and i32 %1702, 1
  %1946 = icmp eq i32 %1945, 0
  br i1 %1946, label %1947, label %1951

; <label>:1947                                    ; preds = %1856
  %1948 = fsub fast float %1939, %1634
  %1949 = fsub fast float %1940, %1635
  %1950 = fsub fast float %1941, %1636
  br label %1951

; <label>:1951                                    ; preds = %1947, %1856
  %1952 = phi float [ %1948, %1947 ], [ %1939, %1856 ]
  %1953 = phi float [ %1949, %1947 ], [ %1940, %1856 ]
  %1954 = phi float [ %1950, %1947 ], [ %1941, %1856 ]
  %1955 = fmul float %1954, %1944
  %1956 = fmul float %1953, %1944
  %1957 = fmul float %1952, %1944
  %1958 = fadd fast float %1957, %1634
  %1959 = fadd fast float %1956, %1635
  %1960 = fadd fast float %1955, %1636
  %1961 = icmp ne i32 %1857, 0
  %1962 = select i1 %1961, float 1.000000e+00, float 0.000000e+00
  %1963 = fmul fast float %1848, %1962
  %1964 = fsub fast float %1902, %1641
  %1965 = fsub fast float %1903, %1642
  %1966 = fsub fast float %1904, %1643
  %1967 = fmul fast float %1964, %1963
  %1968 = fmul fast float %1965, %1963
  %1969 = fmul fast float %1966, %1963
  %1970 = fadd fast float %1967, %1641
  %1971 = fadd fast float %1968, %1642
  %1972 = fadd fast float %1969, %1643
  %1973 = fsub fast float %1875, %1640
  %1974 = fmul fast float %1973, %1963
  %1975 = fadd fast float %1974, %1640
  %1976 = fmul fast float %1963, %1630
  %1977 = fsub fast float %1630, %1976
  %1978 = fmul fast float %1963, %1629
  %1979 = fsub fast float %1629, %1978
  %1980 = fadd fast float %1848, %1639
  %1981 = call float @dx.op.unary.f32(i32 7, float %1980)  ; Saturate(value)
  %1982 = fsub fast float %1895, %1638
  %1983 = fmul fast float %1982, %1944
  %1984 = fadd fast float %1983, %1638
  %1985 = fsub fast float %1881, %1637
  %1986 = fmul fast float %1985, %1944
  %1987 = fadd fast float %1986, %1637
  %1988 = call float @dx.op.dot3.f32(i32 55, float %1902, float %1903, float %1904, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1990 = extractvalue %dx.types.CBufRet.f32 %1989, 0
  %1991 = extractvalue %dx.types.CBufRet.f32 %1989, 1
  %1992 = fmul fast float %1991, %1988
  %1993 = fadd fast float %1992, %1990
  %1994 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1995 = bitcast float %1690 to i32
  %1996 = and i32 %1995, 65535
  %1997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1996)  ; LegacyF16ToF32(value)
  %1998 = lshr i32 %1995, 16
  %1999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1998)  ; LegacyF16ToF32(value)
  %2000 = fcmp fast oge float %1997, 0.000000e+00
  %2001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2002 = extractvalue %dx.types.CBufRet.f32 %2001, 0
  %2003 = select i1 %2000, float %1997, float %2002
  %2004 = fadd fast float %2003, %1999
  %2005 = fsub fast float %1994, %1628
  %2006 = fmul fast float %2005, %1848
  %2007 = fadd fast float %2006, %1628
  %2008 = fmul fast float %2004, %1848
  %2009 = call float @dx.op.binary.f32(i32 35, float %1627, float %2008)  ; FMax(a,b)
  %2010 = and i32 %1702, 16
  %2011 = icmp eq i32 %2010, 0
  br i1 %2011, label %2034, label %2012

; <label>:2012                                    ; preds = %1951
  %2013 = bitcast float %1696 to i32
  %2014 = add i32 %1693, 0
  %2015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2014, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2016 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2015, %dx.types.Handle %1861, float %1789, float %1792, float undef, float undef, i32 0, i32 0, i32 undef, float %1794, float %1796, float undef, float %1798, float %1800, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2017 = extractvalue %dx.types.ResRet.f32 %2016, 0
  %2018 = extractvalue %dx.types.ResRet.f32 %2016, 1
  %2019 = extractvalue %dx.types.ResRet.f32 %2016, 2
  %2020 = and i32 %2013, 65535
  %2021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2020)  ; LegacyF16ToF32(value)
  %2022 = fmul fast float %2017, %1687
  %2023 = fmul fast float %2018, %1688
  %2024 = fmul fast float %2019, %1689
  %2025 = and i32 %1702, 16384
  %2026 = icmp ne i32 %2025, 0
  %2027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2028 = extractvalue %dx.types.CBufRet.f32 %2027, 0
  %2029 = select i1 %2026, float %2028, float 1.000000e+00
  %2030 = fmul fast float %2029, %2021
  %2031 = fmul fast float %2022, %2030
  %2032 = fmul fast float %2023, %2030
  %2033 = fmul fast float %2024, %2030
  br label %2034

; <label>:2034                                    ; preds = %2012, %1951
  %2035 = phi float [ %2031, %2012 ], [ 0.000000e+00, %1951 ]
  %2036 = phi float [ %2032, %2012 ], [ 0.000000e+00, %1951 ]
  %2037 = phi float [ %2033, %2012 ], [ 0.000000e+00, %1951 ]
  %2038 = fsub fast float %2035, %1631
  %2039 = fsub fast float %2036, %1632
  %2040 = fsub fast float %2037, %1633
  %2041 = fmul fast float %2038, %1848
  %2042 = fmul fast float %2039, %1848
  %2043 = fmul fast float %2040, %1848
  %2044 = fadd fast float %2041, %1631
  %2045 = fadd fast float %2042, %1632
  %2046 = fadd fast float %2043, %1633
  br label %1751

; <label>:2047                                    ; preds = %1751
  br label %2048

; <label>:2048                                    ; preds = %2047, %1529
  %2049 = phi float [ 0.000000e+00, %1529 ], [ %1752, %2047 ]
  %2050 = phi float [ %1543, %1529 ], [ %1753, %2047 ]
  %2051 = phi float [ %1541, %1529 ], [ %1754, %2047 ]
  %2052 = phi float [ 0.000000e+00, %1529 ], [ %1755, %2047 ]
  %2053 = phi float [ 0.000000e+00, %1529 ], [ %1756, %2047 ]
  %2054 = phi float [ %1535, %1529 ], [ %1757, %2047 ]
  %2055 = phi float [ %1536, %1529 ], [ %1758, %2047 ]
  %2056 = phi float [ %1537, %1529 ], [ %1759, %2047 ]
  %2057 = phi float [ %1569, %1529 ], [ %1760, %2047 ]
  %2058 = phi float [ %1570, %1529 ], [ %1761, %2047 ]
  %2059 = phi float [ %1571, %1529 ], [ %1762, %2047 ]
  %2060 = phi float [ %1540, %1529 ], [ %1763, %2047 ]
  %2061 = phi float [ %1539, %1529 ], [ %1764, %2047 ]
  %2062 = phi float [ 0.000000e+00, %1529 ], [ %1765, %2047 ]
  %2063 = phi float [ %1538, %1529 ], [ %1766, %2047 ]
  %2064 = phi float [ %1532, %1529 ], [ %1767, %2047 ]
  %2065 = phi float [ %1533, %1529 ], [ %1768, %2047 ]
  %2066 = phi float [ %1534, %1529 ], [ %1769, %2047 ]
  %2067 = call float @dx.op.dot3.f32(i32 55, float %2057, float %2058, float %2059, float %2057, float %2058, float %2059)  ; Dot3(ax,ay,az,bx,by,bz)
  %2068 = call float @dx.op.unary.f32(i32 25, float %2067)  ; Rsqrt(value)
  %2069 = fmul fast float %2068, %2057
  %2070 = fmul fast float %2068, %2058
  %2071 = fmul fast float %2068, %2059
  %2072 = fadd fast float %2062, %718
  %2073 = call float @dx.op.unary.f32(i32 7, float %2072)  ; Saturate(value)
  %2074 = call float @dx.op.dot3.f32(i32 55, float %2069, float %2070, float %2071, float %2069, float %2070, float %2071)  ; Dot3(ax,ay,az,bx,by,bz)
  %2075 = call float @dx.op.unary.f32(i32 25, float %2074)  ; Rsqrt(value)
  %2076 = fmul fast float %2075, %2069
  %2077 = fmul fast float %2075, %2070
  %2078 = fmul fast float %2075, %2071
  %2079 = fadd fast float %2063, 0xBFB99999A0000000
  %2080 = call float @dx.op.unary.f32(i32 7, float %2079)  ; Saturate(value)
  %2081 = fmul fast float %2080, 0x3FF1C71C80000000
  %2082 = call float @dx.op.binary.f32(i32 36, float %2063, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2083 = fsub fast float 1.000000e+00, %2081
  %2084 = call float @dx.op.unary.f32(i32 7, float %2083)  ; Saturate(value)
  %2085 = fmul fast float %2084, %2064
  %2086 = fmul fast float %2084, %2065
  %2087 = fmul fast float %2084, %2066
  %2088 = call float @dx.op.unary.f32(i32 7, float %2085)  ; Saturate(value)
  %2089 = call float @dx.op.unary.f32(i32 7, float %2086)  ; Saturate(value)
  %2090 = call float @dx.op.unary.f32(i32 7, float %2087)  ; Saturate(value)
  %2091 = fmul fast float %2081, %2064
  %2092 = fmul fast float %2081, %2065
  %2093 = fmul fast float %2081, %2066
  %2094 = fadd fast float %2091, %2082
  %2095 = fadd fast float %2092, %2082
  %2096 = fadd fast float %2093, %2082
  %2097 = call float @dx.op.unary.f32(i32 7, float %2094)  ; Saturate(value)
  %2098 = call float @dx.op.unary.f32(i32 7, float %2095)  ; Saturate(value)
  %2099 = call float @dx.op.unary.f32(i32 7, float %2096)  ; Saturate(value)
  %2100 = call float @dx.op.unary.f32(i32 7, float %2061)  ; Saturate(value)
  %2101 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2102 = extractvalue %dx.types.CBufRet.i32 %2101, 3
  %2103 = and i32 %2102, 8
  %2104 = icmp ne i32 %2103, 0
  %2105 = call float @dx.op.binary.f32(i32 35, float %2088, float %2064)  ; FMax(a,b)
  %2106 = call float @dx.op.binary.f32(i32 35, float %2089, float %2064)  ; FMax(a,b)
  %2107 = call float @dx.op.binary.f32(i32 35, float %2090, float %2064)  ; FMax(a,b)
  %2108 = call float @dx.op.dot3.f32(i32 55, float %2088, float %2089, float %2090, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2109 = select i1 %187, float %2064, float %2088
  %2110 = select i1 %187, float %2108, float %2089
  %2111 = select i1 %187, float 1.000000e+00, float %2090
  %2112 = select i1 %2104, float %2105, float %2109
  %2113 = select i1 %2104, float %2106, float %2110
  %2114 = select i1 %2104, float %2107, float %2111
  %2115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2116 = extractvalue %dx.types.CBufRet.f32 %2115, 0
  %2117 = extractvalue %dx.types.CBufRet.f32 %2115, 1
  %2118 = extractvalue %dx.types.CBufRet.f32 %2115, 2
  %2119 = fadd fast float %2116, %116
  %2120 = fadd fast float %2117, %117
  %2121 = fadd fast float %2118, %118
  %2122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2123 = extractvalue %dx.types.CBufRet.f32 %2122, 0
  %2124 = extractvalue %dx.types.CBufRet.f32 %2122, 1
  %2125 = fsub fast float %2119, %2123
  %2126 = fsub fast float %2120, %2124
  %2127 = fmul fast float %2125, %2125
  %2128 = fmul fast float %2126, %2126
  %2129 = fadd fast float %2127, %2128
  %2130 = call float @dx.op.unary.f32(i32 24, float %2129)  ; Sqrt(value)
  %2131 = extractvalue %dx.types.CBufRet.f32 %2122, 2
  %2132 = fcmp fast olt float %2130, %2131
  br i1 %2132, label %2133, label %2200

; <label>:2133                                    ; preds = %2048
  %2134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2135 = extractvalue %dx.types.CBufRet.f32 %2134, 0
  %2136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2137 = extractvalue %dx.types.CBufRet.f32 %2136, 0
  %2138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2139 = extractvalue %dx.types.CBufRet.f32 %2138, 0
  %2140 = extractvalue %dx.types.CBufRet.f32 %2134, 1
  %2141 = extractvalue %dx.types.CBufRet.f32 %2136, 1
  %2142 = extractvalue %dx.types.CBufRet.f32 %2138, 1
  %2143 = extractvalue %dx.types.CBufRet.f32 %2134, 3
  %2144 = extractvalue %dx.types.CBufRet.f32 %2136, 3
  %2145 = extractvalue %dx.types.CBufRet.f32 %2138, 3
  %2146 = fadd fast float %2143, %2119
  %2147 = fadd fast float %2144, %2120
  %2148 = fadd fast float %2145, %2121
  %2149 = fmul fast float %2146, %2135
  %2150 = call float @dx.op.tertiary.f32(i32 46, float %2147, float %2137, float %2149)  ; FMad(a,b,c)
  %2151 = call float @dx.op.tertiary.f32(i32 46, float %2148, float %2139, float %2150)  ; FMad(a,b,c)
  %2152 = fmul fast float %2146, %2140
  %2153 = call float @dx.op.tertiary.f32(i32 46, float %2147, float %2141, float %2152)  ; FMad(a,b,c)
  %2154 = call float @dx.op.tertiary.f32(i32 46, float %2148, float %2142, float %2153)  ; FMad(a,b,c)
  %2155 = fsub fast float %2151, %2143
  %2156 = fsub fast float %2154, %2144
  %2157 = fsub fast float %2155, %2123
  %2158 = fadd fast float %2157, %2131
  %2159 = fsub fast float %2156, %2124
  %2160 = fadd fast float %2159, %2131
  %2161 = extractvalue %dx.types.CBufRet.f32 %2122, 3
  %2162 = fmul fast float %2158, %2161
  %2163 = fmul fast float %2160, %2161
  %2164 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  %2165 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2166 = fsub fast float 1.000000e+00, %2164
  %2167 = fsub fast float 1.000000e+00, %2165
  %2168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %2166, float %2167, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2169 = extractvalue %dx.types.ResRet.f32 %2168, 0
  %2170 = fcmp fast ugt float %2169, 0.000000e+00
  br i1 %2170, label %2171, label %2474

; <label>:2171                                    ; preds = %2133
  %2172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2173 = extractvalue %dx.types.CBufRet.f32 %2172, 2
  %2174 = fmul fast float %2173, %2169
  %2175 = extractvalue %dx.types.CBufRet.f32 %2172, 3
  %2176 = fadd fast float %2175, %2174
  %2177 = extractvalue %dx.types.CBufRet.f32 %2138, 2
  %2178 = fadd fast float %2176, %2145
  %2179 = fmul fast float %2151, %2139
  %2180 = call float @dx.op.tertiary.f32(i32 46, float %2154, float %2142, float %2179)  ; FMad(a,b,c)
  %2181 = call float @dx.op.tertiary.f32(i32 46, float %2178, float %2177, float %2180)  ; FMad(a,b,c)
  %2182 = fsub fast float %2181, %2145
  %2183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2184 = extractvalue %dx.types.CBufRet.f32 %2183, 2
  %2185 = fsub fast float %2182, %2184
  %2186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %2166, float %2167, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2187 = extractvalue %dx.types.ResRet.f32 %2186, 0
  %2188 = extractvalue %dx.types.ResRet.f32 %2186, 1
  %2189 = extractvalue %dx.types.ResRet.f32 %2186, 2
  %2190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %2166, float %2167, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2191 = extractvalue %dx.types.ResRet.f32 %2190, 0
  %2192 = extractvalue %dx.types.ResRet.f32 %2190, 1
  %2193 = extractvalue %dx.types.ResRet.f32 %2190, 2
  %2194 = fadd fast float %2191, %2187
  %2195 = fmul fast float %2194, 0x3F847AE140000000
  %2196 = fadd fast float %2192, %2188
  %2197 = fmul fast float %2196, 0x3F847AE140000000
  %2198 = fadd fast float %2193, %2189
  %2199 = fmul fast float %2198, 0x3F847AE140000000
  br label %2474

; <label>:2200                                    ; preds = %2048
  %2201 = and i32 %163, 1
  %2202 = icmp eq i32 %2201, 0
  br i1 %2202, label %2474, label %2203

; <label>:2203                                    ; preds = %2200
  %2204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2205 = extractvalue %dx.types.CBufRet.f32 %2204, 0
  %2206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2207 = extractvalue %dx.types.CBufRet.f32 %2206, 0
  %2208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2209 = extractvalue %dx.types.CBufRet.f32 %2208, 0
  %2210 = extractvalue %dx.types.CBufRet.f32 %2204, 1
  %2211 = extractvalue %dx.types.CBufRet.f32 %2206, 1
  %2212 = extractvalue %dx.types.CBufRet.f32 %2208, 1
  %2213 = extractvalue %dx.types.CBufRet.f32 %2204, 3
  %2214 = extractvalue %dx.types.CBufRet.f32 %2206, 3
  %2215 = extractvalue %dx.types.CBufRet.f32 %2208, 3
  %2216 = fadd fast float %2213, %2119
  %2217 = fadd fast float %2214, %2120
  %2218 = fadd fast float %2215, %2121
  %2219 = fmul fast float %2216, %2205
  %2220 = call float @dx.op.tertiary.f32(i32 46, float %2217, float %2207, float %2219)  ; FMad(a,b,c)
  %2221 = call float @dx.op.tertiary.f32(i32 46, float %2218, float %2209, float %2220)  ; FMad(a,b,c)
  %2222 = fmul fast float %2216, %2210
  %2223 = call float @dx.op.tertiary.f32(i32 46, float %2217, float %2211, float %2222)  ; FMad(a,b,c)
  %2224 = call float @dx.op.tertiary.f32(i32 46, float %2218, float %2212, float %2223)  ; FMad(a,b,c)
  %2225 = fsub fast float %2221, %2213
  %2226 = fsub fast float %2224, %2214
  %2227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2228 = extractvalue %dx.types.CBufRet.f32 %2227, 0
  %2229 = extractvalue %dx.types.CBufRet.f32 %2227, 1
  %2230 = extractvalue %dx.types.CBufRet.f32 %2227, 2
  %2231 = extractvalue %dx.types.CBufRet.f32 %2227, 3
  %2232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2233 = extractvalue %dx.types.CBufRet.f32 %2232, 3
  %2234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2235 = extractvalue %dx.types.CBufRet.i32 %2234, 0
  %2236 = extractvalue %dx.types.CBufRet.i32 %2234, 1
  %2237 = udiv i32 %2236, %2235
  %2238 = fsub fast float %2225, %2228
  %2239 = fsub fast float %2226, %2229
  %2240 = call float @dx.op.binary.f32(i32 35, float %2238, float 0.000000e+00)  ; FMax(a,b)
  %2241 = call float @dx.op.binary.f32(i32 35, float %2239, float 0.000000e+00)  ; FMax(a,b)
  %2242 = call float @dx.op.binary.f32(i32 36, float %2240, float %2230)  ; FMin(a,b)
  %2243 = call float @dx.op.binary.f32(i32 36, float %2241, float %2231)  ; FMin(a,b)
  %2244 = add i32 %2235, -1
  %2245 = add i32 %2237, -1
  %2246 = fmul fast float %2242, %2233
  %2247 = fmul fast float %2243, %2233
  %2248 = fptoui float %2246 to i32
  %2249 = fptoui float %2247 to i32
  %2250 = call i32 @dx.op.binary.i32(i32 40, i32 %2248, i32 %2244)  ; UMin(a,b)
  %2251 = call i32 @dx.op.binary.i32(i32 40, i32 %2249, i32 %2245)  ; UMin(a,b)
  %2252 = mul i32 %2251, %2235
  %2253 = add i32 %2252, %2250
  %2254 = shl i32 %2253, 2
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2254, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = icmp eq i32 %2256, -1
  br i1 %2257, label %2474, label %2258

; <label>:2258                                    ; preds = %2203
  %2259 = mul i32 %2256, 148
  %2260 = add i32 %2259, 4
  %2261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2260, i32 undef)  ; BufferLoad(srv,index,wot)
  %2262 = extractvalue %dx.types.ResRet.f32 %2261, 0
  %2263 = add i32 %2259, 8
  %2264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2263, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.f32 %2264, 0
  %2266 = add i32 %2259, 36
  %2267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2266, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.f32 %2267, 0
  %2269 = add i32 %2259, 60
  %2270 = add i32 %2259, 92
  %2271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2272 = extractvalue %dx.types.ResRet.i32 %2271, 0
  %2273 = add i32 %2259, 116
  %2274 = fsub fast float %2225, %2262
  %2275 = fsub fast float %2226, %2265
  %2276 = fmul fast float %2233, %2274
  %2277 = fmul fast float %2233, %2275
  %2278 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2279 = call float @dx.op.unary.f32(i32 7, float %2277)  ; Saturate(value)
  %2280 = fsub fast float 1.000000e+00, %2279
  %2281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2282 = extractvalue %dx.types.CBufRet.f32 %2281, 2
  %2283 = call float @dx.op.unary.f32(i32 83, float %2278)  ; DerivCoarseX(value)
  %2284 = call float @dx.op.unary.f32(i32 83, float %2280)  ; DerivCoarseX(value)
  %2285 = call float @dx.op.unary.f32(i32 84, float %2278)  ; DerivCoarseY(value)
  %2286 = call float @dx.op.unary.f32(i32 84, float %2280)  ; DerivCoarseY(value)
  %2287 = fmul fast float %2283, %2282
  %2288 = fmul fast float %2284, %2282
  %2289 = fmul fast float %2285, %2282
  %2290 = fmul fast float %2286, %2282
  %2291 = call float @dx.op.dot2.f32(i32 54, float %2289, float %2290, float %2289, float %2290)  ; Dot2(ax,ay,bx,by)
  %2292 = call float @dx.op.dot2.f32(i32 54, float %2287, float %2288, float %2287, float %2288)  ; Dot2(ax,ay,bx,by)
  %2293 = call float @dx.op.binary.f32(i32 35, float %2292, float %2291)  ; FMax(a,b)
  %2294 = call float @dx.op.unary.f32(i32 23, float %2293)  ; Log(value)
  %2295 = fmul fast float %2294, 5.000000e-01
  %2296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2297 = extractvalue %dx.types.CBufRet.f32 %2296, 1
  %2298 = fadd fast float %2297, %2295
  %2299 = call float @dx.op.binary.f32(i32 35, float %2298, float 0.000000e+00)  ; FMax(a,b)
  %2300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2301 = extractvalue %dx.types.CBufRet.f32 %2300, 3
  %2302 = fadd fast float %2301, %2299
  %2303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2304 = extractvalue %dx.types.CBufRet.f32 %2303, 3
  %2305 = fadd fast float %2302, %2304
  %2306 = add i32 %2272, 0
  %2307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2306, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2308 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2307, i32 0)  ; GetDimensions(handle,mipLevel)
  %2309 = extractvalue %dx.types.Dimensions %2308, 0
  %2310 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2309)  ; FirstbitLo(value)
  %2311 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2312 = extractvalue %dx.types.CBufRet.i32 %2311, 1
  %2313 = sub nsw i32 %2312, %2310
  %2314 = sitofp i32 %2313 to float
  %2315 = fsub fast float %2305, %2314
  %2316 = call float @dx.op.binary.f32(i32 35, float %2315, float 0.000000e+00)  ; FMax(a,b)
  %2317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2307, %dx.types.Handle %37, float %2278, float %2280, float %2268, float undef, i32 0, i32 0, i32 undef, float %2316)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2318 = extractvalue %dx.types.ResRet.f32 %2317, 0
  %2319 = fcmp ule float %2318, 0x3FE0101020000000
  %2320 = extractvalue %dx.types.CBufRet.i32 %2311, 0
  %2321 = and i32 %2320, 128
  %2322 = icmp ne i32 %2321, 0
  %2323 = and i1 %2319, %2322
  br i1 %2323, label %2474, label %2324

; <label>:2324                                    ; preds = %2258
  %2325 = add i32 %2259, 20
  %2326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.f32 %2326, 0
  %2328 = add i32 %2259, 24
  %2329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.f32 %2329, 0
  %2331 = add i32 %2259, 40
  %2332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.f32 %2332, 0
  %2334 = add i32 %2259, 96
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2338 = extractvalue %dx.types.CBufRet.f32 %2337, 2
  %2339 = fmul fast float %2338, %2278
  %2340 = fmul fast float %2338, %2280
  %2341 = extractvalue %dx.types.CBufRet.f32 %2337, 3
  %2342 = fadd fast float %2339, %2341
  %2343 = fadd fast float %2340, %2341
  %2344 = add i32 %2336, 0
  %2345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2344, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2346 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2345, i32 0)  ; GetDimensions(handle,mipLevel)
  %2347 = extractvalue %dx.types.Dimensions %2346, 0
  %2348 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2347)  ; FirstbitLo(value)
  %2349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2350 = extractvalue %dx.types.CBufRet.i32 %2349, 1
  %2351 = sub nsw i32 %2350, %2348
  %2352 = sitofp i32 %2351 to float
  %2353 = fsub fast float %2302, %2352
  %2354 = call float @dx.op.binary.f32(i32 35, float %2353, float 0.000000e+00)  ; FMax(a,b)
  %2355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2345, %dx.types.Handle %37, float %2342, float %2343, float %2333, float undef, i32 0, i32 0, i32 undef, float %2354)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2356 = extractvalue %dx.types.ResRet.f32 %2355, 0
  %2357 = fmul fast float %2356, %2327
  %2358 = fadd fast float %2357, %2330
  %2359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2360 = extractvalue %dx.types.CBufRet.f32 %2359, 0
  %2361 = extractvalue %dx.types.CBufRet.f32 %2359, 1
  %2362 = extractvalue %dx.types.CBufRet.f32 %2359, 2
  %2363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2364 = extractvalue %dx.types.CBufRet.f32 %2363, 3
  %2365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2366 = extractvalue %dx.types.CBufRet.f32 %2365, 3
  %2367 = extractvalue %dx.types.CBufRet.f32 %2359, 3
  %2368 = fadd fast float %2364, %2225
  %2369 = fadd fast float %2366, %2226
  %2370 = fadd fast float %2358, %2367
  %2371 = fmul fast float %2368, %2360
  %2372 = call float @dx.op.tertiary.f32(i32 46, float %2369, float %2361, float %2371)  ; FMad(a,b,c)
  %2373 = call float @dx.op.tertiary.f32(i32 46, float %2370, float %2362, float %2372)  ; FMad(a,b,c)
  %2374 = fsub fast float %2373, %2367
  %2375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2376 = extractvalue %dx.types.CBufRet.f32 %2375, 2
  %2377 = fsub fast float %2374, %2376
  %2378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2379 = extractvalue %dx.types.CBufRet.i32 %2378, 0
  %2380 = call i32 @dx.op.binary.i32(i32 40, i32 %2256, i32 %2379)  ; UMin(a,b)
  %2381 = mul i32 %2380, 36
  %2382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2381, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.i32 %2382, 0
  %2384 = add i32 %2381, 4
  %2385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2386 = extractvalue %dx.types.CBufRet.f32 %2385, 0
  %2387 = fmul fast float %2386, %2278
  %2388 = fmul fast float %2386, %2280
  %2389 = extractvalue %dx.types.CBufRet.f32 %2385, 1
  %2390 = fadd fast float %2387, %2389
  %2391 = fadd fast float %2388, %2389
  %2392 = icmp eq i32 %2383, 0
  br i1 %2392, label %2461, label %2393

; <label>:2393                                    ; preds = %2324
  br label %2394

; <label>:2394                                    ; preds = %2451, %2393
  %2395 = phi float [ %2452, %2451 ], [ 0.000000e+00, %2393 ]
  %2396 = phi float [ %2453, %2451 ], [ 0.000000e+00, %2393 ]
  %2397 = phi float [ %2454, %2451 ], [ 0.000000e+00, %2393 ]
  %2398 = phi float [ %2455, %2451 ], [ 0.000000e+00, %2393 ]
  %2399 = phi float [ %2456, %2451 ], [ 0.000000e+00, %2393 ]
  %2400 = phi float [ %2457, %2451 ], [ 0.000000e+00, %2393 ]
  %2401 = phi i32 [ %2458, %2451 ], [ 0, %2393 ]
  %2402 = shl i32 %2401, 2
  %2403 = add i32 %2269, %2402
  %2404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2405 = extractvalue %dx.types.ResRet.f32 %2404, 0
  %2406 = add i32 %2273, %2402
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = add i32 %2408, 0
  %2410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2409, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2411 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2410, i32 0)  ; GetDimensions(handle,mipLevel)
  %2412 = extractvalue %dx.types.Dimensions %2411, 0
  %2413 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2412)  ; FirstbitLo(value)
  %2414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2415 = extractvalue %dx.types.CBufRet.i32 %2414, 1
  %2416 = sub nsw i32 %2415, %2413
  %2417 = sitofp i32 %2416 to float
  %2418 = fsub fast float %2302, %2417
  %2419 = call float @dx.op.binary.f32(i32 35, float %2418, float 0.000000e+00)  ; FMax(a,b)
  %2420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2410, %dx.types.Handle %37, float %2390, float %2391, float %2405, float undef, i32 0, i32 0, i32 undef, float %2419)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2421 = extractvalue %dx.types.ResRet.f32 %2420, 0
  %2422 = fcmp fast ogt float %2421, 0.000000e+00
  br i1 %2422, label %2423, label %2451

; <label>:2423                                    ; preds = %2394
  %2424 = add i32 %2384, %2402
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2424, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = and i32 %2426, 32767
  %2428 = mul nuw nsw i32 %2427, 928
  %2429 = add nuw nsw i32 %2428, 48
  %2430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2429, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.f32 %2430, 0
  %2432 = extractvalue %dx.types.ResRet.f32 %2430, 1
  %2433 = extractvalue %dx.types.ResRet.f32 %2430, 2
  %2434 = add nuw nsw i32 %2428, 60
  %2435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2434, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.f32 %2435, 0
  %2437 = extractvalue %dx.types.ResRet.f32 %2435, 1
  %2438 = extractvalue %dx.types.ResRet.f32 %2435, 2
  %2439 = fmul fast float %2431, %2421
  %2440 = fmul fast float %2432, %2421
  %2441 = fmul fast float %2433, %2421
  %2442 = fadd fast float %2439, %2395
  %2443 = fadd fast float %2440, %2396
  %2444 = fadd fast float %2441, %2397
  %2445 = fmul fast float %2436, %2421
  %2446 = fmul fast float %2437, %2421
  %2447 = fmul fast float %2438, %2421
  %2448 = fadd fast float %2445, %2398
  %2449 = fadd fast float %2446, %2399
  %2450 = fadd fast float %2447, %2400
  br label %2451

; <label>:2451                                    ; preds = %2423, %2394
  %2452 = phi float [ %2442, %2423 ], [ %2395, %2394 ]
  %2453 = phi float [ %2443, %2423 ], [ %2396, %2394 ]
  %2454 = phi float [ %2444, %2423 ], [ %2397, %2394 ]
  %2455 = phi float [ %2448, %2423 ], [ %2398, %2394 ]
  %2456 = phi float [ %2449, %2423 ], [ %2399, %2394 ]
  %2457 = phi float [ %2450, %2423 ], [ %2400, %2394 ]
  %2458 = add nuw i32 %2401, 1
  %2459 = icmp eq i32 %2458, %2383
  br i1 %2459, label %2460, label %2394

; <label>:2460                                    ; preds = %2451
  br label %2461

; <label>:2461                                    ; preds = %2460, %2324
  %2462 = phi float [ 0.000000e+00, %2324 ], [ %2452, %2460 ]
  %2463 = phi float [ 0.000000e+00, %2324 ], [ %2453, %2460 ]
  %2464 = phi float [ 0.000000e+00, %2324 ], [ %2454, %2460 ]
  %2465 = phi float [ 0.000000e+00, %2324 ], [ %2455, %2460 ]
  %2466 = phi float [ 0.000000e+00, %2324 ], [ %2456, %2460 ]
  %2467 = phi float [ 0.000000e+00, %2324 ], [ %2457, %2460 ]
  %2468 = fadd fast float %2465, %2462
  %2469 = fmul fast float %2468, 0x3F847AE140000000
  %2470 = fadd fast float %2466, %2463
  %2471 = fmul fast float %2470, 0x3F847AE140000000
  %2472 = fadd fast float %2467, %2464
  %2473 = fmul fast float %2472, 0x3F847AE140000000
  br label %2474

; <label>:2474                                    ; preds = %2461, %2258, %2203, %2200, %2171, %2133
  %2475 = phi float [ %2185, %2171 ], [ -1.310720e+05, %2133 ], [ %2377, %2461 ], [ -1.310720e+05, %2203 ], [ -1.310720e+05, %2258 ], [ -1.310720e+05, %2200 ]
  %2476 = phi float [ %2195, %2171 ], [ 0.000000e+00, %2133 ], [ %2469, %2461 ], [ 0.000000e+00, %2203 ], [ 0.000000e+00, %2258 ], [ 0.000000e+00, %2200 ]
  %2477 = phi float [ %2197, %2171 ], [ 0.000000e+00, %2133 ], [ %2471, %2461 ], [ 0.000000e+00, %2203 ], [ 0.000000e+00, %2258 ], [ 0.000000e+00, %2200 ]
  %2478 = phi float [ %2199, %2171 ], [ 0.000000e+00, %2133 ], [ %2473, %2461 ], [ 0.000000e+00, %2203 ], [ 0.000000e+00, %2258 ], [ 0.000000e+00, %2200 ]
  %2479 = phi i1 [ true, %2171 ], [ false, %2133 ], [ true, %2461 ], [ false, %2203 ], [ false, %2258 ], [ false, %2200 ]
  %2480 = and i32 %163, 3
  %2481 = icmp eq i32 %2480, 1
  %2482 = select i1 %2481, float 1.000000e+00, float 0.000000e+00
  %2483 = fsub fast float %2475, %118
  %2484 = call float @dx.op.unary.f32(i32 7, float %2483)  ; Saturate(value)
  %2485 = select i1 %2479, float %2484, float 1.000000e+00
  %2486 = fmul fast float %2485, %2482
  %2487 = icmp eq i32 %2480, 3
  %2488 = select i1 %2487, float 1.000000e+00, float %2486
  %2489 = call float @dx.op.binary.f32(i32 35, float %2049, float %2488)  ; FMax(a,b)
  %2490 = call float @dx.op.unary.f32(i32 7, float %2489)  ; Saturate(value)
  %2491 = fcmp fast une float %2490, 0.000000e+00
  %2492 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %2493 = call float @dx.op.unary.f32(i32 25, float %2492)  ; Rsqrt(value)
  br i1 %2491, label %2501, label %2494

; <label>:2494                                    ; preds = %2474
  %2495 = fmul fast float %2493, %116
  %2496 = fmul fast float %2493, %117
  %2497 = fmul fast float %2493, %118
  %2498 = fsub fast float -0.000000e+00, %2495
  %2499 = fsub fast float -0.000000e+00, %2496
  %2500 = fsub fast float -0.000000e+00, %2497
  br label %2669

; <label>:2501                                    ; preds = %2474
  %2502 = fmul fast float %116, %2493
  %2503 = fsub fast float -0.000000e+00, %2502
  %2504 = fmul fast float %117, %2493
  %2505 = fsub fast float -0.000000e+00, %2504
  %2506 = fmul fast float %118, %2493
  %2507 = fsub fast float -0.000000e+00, %2506
  %2508 = call float @dx.op.dot3.f32(i32 55, float %2503, float %2505, float %2507, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %2509 = fmul fast float %2490, 2.500000e+00
  %2510 = call float @dx.op.unary.f32(i32 7, float %2509)  ; Saturate(value)
  %2511 = fmul fast float %2490, 0x4013FFFFE0000000
  %2512 = fadd fast float %2511, 0xBFFFFFFFE0000000
  %2513 = call float @dx.op.unary.f32(i32 7, float %2512)  ; Saturate(value)
  %2514 = fmul fast float %2490, 0x4004000020000000
  %2515 = fadd fast float %2514, 0xBFF8000040000000
  %2516 = call float @dx.op.unary.f32(i32 7, float %2515)  ; Saturate(value)
  %2517 = call float @dx.op.unary.f32(i32 7, float %2510)  ; Saturate(value)
  %2518 = fmul fast float %2079, 1.000000e+01
  %2519 = call float @dx.op.unary.f32(i32 7, float %2518)  ; Saturate(value)
  %2520 = fmul fast float %2519, 2.000000e+00
  %2521 = fsub fast float 3.000000e+00, %2520
  %2522 = fmul fast float %2519, %2519
  %2523 = fmul fast float %2522, %2521
  %2524 = fsub fast float 1.000000e+00, %2523
  %2525 = fsub fast float 0x3FE3333340000000, %2100
  %2526 = fmul fast float %2525, 0x400AAAAAA0000000
  %2527 = call float @dx.op.unary.f32(i32 7, float %2526)  ; Saturate(value)
  %2528 = fmul fast float %2524, %2527
  %2529 = fmul fast float %2112, 0x3FEA2B8620000000
  %2530 = fmul fast float %2113, 0x3FEA2B8620000000
  %2531 = fmul fast float %2114, 0x3FEA2B8620000000
  %2532 = fadd fast float %2529, 0x3FC81DFBA0000000
  %2533 = fmul fast float %2532, %2112
  %2534 = fadd fast float %2533, 0x3F910E6020000000
  %2535 = fadd fast float %2530, 0x3FC81DFBA0000000
  %2536 = fmul fast float %2535, %2113
  %2537 = fadd fast float %2536, 0x3F910E6020000000
  %2538 = fadd fast float %2531, 0x3FC81DFBA0000000
  %2539 = fmul fast float %2538, %2114
  %2540 = fadd fast float %2539, 0x3F910E6020000000
  %2541 = call float @dx.op.unary.f32(i32 7, float %2534)  ; Saturate(value)
  %2542 = call float @dx.op.unary.f32(i32 7, float %2537)  ; Saturate(value)
  %2543 = call float @dx.op.unary.f32(i32 7, float %2540)  ; Saturate(value)
  %2544 = fsub fast float %2541, %2112
  %2545 = fsub fast float %2542, %2113
  %2546 = fsub fast float %2543, %2114
  %2547 = fmul fast float %2544, %2517
  %2548 = fmul fast float %2547, %2528
  %2549 = fmul fast float %2545, %2517
  %2550 = fmul fast float %2549, %2528
  %2551 = fmul fast float %2546, %2517
  %2552 = fmul fast float %2551, %2528
  %2553 = fadd fast float %2548, %2112
  %2554 = fadd fast float %2550, %2113
  %2555 = fadd fast float %2552, %2114
  %2556 = fmul fast float %2060, %2060
  %2557 = fmul fast float %2556, %2556
  %2558 = fadd fast float %2513, 1.000000e+00
  %2559 = fsub fast float %2558, %2528
  %2560 = call float @dx.op.unary.f32(i32 7, float %2559)  ; Saturate(value)
  %2561 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2562 = call float @dx.op.unary.f32(i32 7, float %2561)  ; Saturate(value)
  %2563 = fsub fast float 1.000000e+00, %2557
  %2564 = call float @dx.op.binary.f32(i32 36, float %2560, float %2563)  ; FMin(a,b)
  %2565 = call float @dx.op.unary.f32(i32 7, float %2516)  ; Saturate(value)
  %2566 = call float @dx.op.binary.f32(i32 35, float %2564, float %2565)  ; FMax(a,b)
  %2567 = fadd fast float %2562, 0xBFE4CCCCC0000000
  %2568 = fmul fast float %2567, 0x4006DB6DA0000000
  %2569 = call float @dx.op.unary.f32(i32 7, float %2568)  ; Saturate(value)
  %2570 = fmul fast float %2569, 2.000000e+00
  %2571 = fsub fast float 3.000000e+00, %2570
  %2572 = bitcast float %2097 to i32
  %2573 = ashr i32 %2572, 1
  %2574 = add nsw i32 %2573, 532487669
  %2575 = bitcast i32 %2574 to float
  %2576 = fsub fast float 1.000000e+00, %2575
  %2577 = bitcast float %2576 to i32
  %2578 = sub nsw i32 2129859010, %2577
  %2579 = bitcast i32 %2578 to float
  %2580 = fmul fast float %2579, 2.000000e+00
  %2581 = bitcast float %2098 to i32
  %2582 = ashr i32 %2581, 1
  %2583 = add nsw i32 %2582, 532487669
  %2584 = bitcast i32 %2583 to float
  %2585 = fsub fast float 1.000000e+00, %2584
  %2586 = bitcast float %2585 to i32
  %2587 = sub nsw i32 2129859010, %2586
  %2588 = bitcast i32 %2587 to float
  %2589 = fmul fast float %2588, 2.000000e+00
  %2590 = bitcast float %2099 to i32
  %2591 = ashr i32 %2590, 1
  %2592 = add nsw i32 %2591, 532487669
  %2593 = bitcast i32 %2592 to float
  %2594 = fsub fast float 1.000000e+00, %2593
  %2595 = bitcast float %2594 to i32
  %2596 = sub nsw i32 2129859010, %2595
  %2597 = bitcast i32 %2596 to float
  %2598 = fmul fast float %2597, 2.000000e+00
  %2599 = fsub fast float 0x4002A9FBE0000000, %2580
  %2600 = fadd fast float %2580, 0x3FD54FDF00000000
  %2601 = bitcast float %2600 to i32
  %2602 = sub nsw i32 2129859010, %2601
  %2603 = bitcast i32 %2602 to float
  %2604 = fmul fast float %2603, %2599
  %2605 = fmul fast float %2604, %2604
  %2606 = fsub fast float 0x4002A9FBE0000000, %2589
  %2607 = fadd fast float %2589, 0x3FD54FDF00000000
  %2608 = bitcast float %2607 to i32
  %2609 = sub nsw i32 2129859010, %2608
  %2610 = bitcast i32 %2609 to float
  %2611 = fmul fast float %2610, %2606
  %2612 = fmul fast float %2611, %2611
  %2613 = fsub fast float 0x4002A9FBE0000000, %2598
  %2614 = fadd fast float %2598, 0x3FD54FDF00000000
  %2615 = bitcast float %2614 to i32
  %2616 = sub nsw i32 2129859010, %2615
  %2617 = bitcast i32 %2616 to float
  %2618 = fmul fast float %2617, %2613
  %2619 = fmul fast float %2618, %2618
  %2620 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2605)  ; FMax(a,b)
  %2621 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2612)  ; FMax(a,b)
  %2622 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2619)  ; FMax(a,b)
  %2623 = fsub fast float 1.000000e+00, %2508
  %2624 = fadd fast float %2623, %2524
  %2625 = call float @dx.op.unary.f32(i32 7, float %2624)  ; Saturate(value)
  %2626 = fsub fast float 1.000000e+00, %2488
  %2627 = fmul fast float %2566, %2626
  %2628 = fmul fast float %2569, %2569
  %2629 = fmul fast float %2628, %2627
  %2630 = fmul fast float %2629, %2571
  %2631 = fmul fast float %2626, 0xBFE99999A0000000
  %2632 = fmul fast float %2631, %2517
  %2633 = fmul fast float %2632, %2528
  %2634 = fadd fast float %2633, 1.000000e+00
  %2635 = fadd fast float %2100, -1.000000e+00
  %2636 = fmul fast float %2634, %2635
  %2637 = fadd fast float %2636, 1.000000e+00
  %2638 = fsub fast float %2620, %2097
  %2639 = fsub fast float %2621, %2098
  %2640 = fsub fast float %2622, %2099
  %2641 = fmul fast float %2630, %2638
  %2642 = fmul fast float %2630, %2639
  %2643 = fmul fast float %2630, %2640
  %2644 = fadd fast float %2641, %2097
  %2645 = fadd fast float %2642, %2098
  %2646 = fadd fast float %2643, %2099
  %2647 = fsub fast float %52, %2076
  %2648 = fsub fast float %53, %2077
  %2649 = fsub fast float %54, %2078
  %2650 = fmul fast float %2630, %2647
  %2651 = fmul fast float %2630, %2648
  %2652 = fmul fast float %2630, %2649
  %2653 = fadd fast float %2650, %2076
  %2654 = fadd fast float %2651, %2077
  %2655 = fadd fast float %2652, %2078
  %2656 = fmul fast float %2630, %2625
  %2657 = call float @dx.op.unary.f32(i32 7, float %2637)  ; Saturate(value)
  %2658 = fsub fast float 1.000000e+00, %2657
  %2659 = fmul fast float %2656, %2658
  %2660 = fadd fast float %2659, %2657
  %2661 = fsub fast float 1.000000e+00, %2060
  %2662 = fmul fast float %2630, %2661
  %2663 = fadd fast float %2662, %2060
  %2664 = call float @dx.op.dot3.f32(i32 55, float %2653, float %2654, float %2655, float %2653, float %2654, float %2655)  ; Dot3(ax,ay,az,bx,by,bz)
  %2665 = call float @dx.op.unary.f32(i32 25, float %2664)  ; Rsqrt(value)
  %2666 = fmul fast float %2653, %2665
  %2667 = fmul fast float %2654, %2665
  %2668 = fmul fast float %2655, %2665
  br label %2669

; <label>:2669                                    ; preds = %2501, %2494
  %2670 = phi float [ %2500, %2494 ], [ %2507, %2501 ]
  %2671 = phi float [ %2499, %2494 ], [ %2505, %2501 ]
  %2672 = phi float [ %2498, %2494 ], [ %2503, %2501 ]
  %2673 = phi float [ %2497, %2494 ], [ %2506, %2501 ]
  %2674 = phi float [ %2496, %2494 ], [ %2504, %2501 ]
  %2675 = phi float [ %2495, %2494 ], [ %2502, %2501 ]
  %2676 = phi float [ %2112, %2494 ], [ %2553, %2501 ]
  %2677 = phi float [ %2113, %2494 ], [ %2554, %2501 ]
  %2678 = phi float [ %2114, %2494 ], [ %2555, %2501 ]
  %2679 = phi float [ %2097, %2494 ], [ %2644, %2501 ]
  %2680 = phi float [ %2098, %2494 ], [ %2645, %2501 ]
  %2681 = phi float [ %2099, %2494 ], [ %2646, %2501 ]
  %2682 = phi float [ %2076, %2494 ], [ %2666, %2501 ]
  %2683 = phi float [ %2077, %2494 ], [ %2667, %2501 ]
  %2684 = phi float [ %2078, %2494 ], [ %2668, %2501 ]
  %2685 = phi float [ %2100, %2494 ], [ %2660, %2501 ]
  %2686 = phi float [ %2060, %2494 ], [ %2663, %2501 ]
  %2687 = select i1 %187, float 0.000000e+00, float %2681
  %2688 = call float @dx.op.dot3.f32(i32 55, float %2682, float %2683, float %2684, float %2672, float %2671, float %2670)  ; Dot3(ax,ay,az,bx,by,bz)
  %2689 = call float @dx.op.unary.f32(i32 7, float %2688)  ; Saturate(value)
  %2690 = call float @dx.op.dot3.f32(i32 55, float %2675, float %2674, float %2673, float %2682, float %2683, float %2684)  ; Dot3(ax,ay,az,bx,by,bz)
  %2691 = fmul fast float %2690, 2.000000e+00
  %2692 = fmul fast float %2691, %2682
  %2693 = fmul fast float %2691, %2683
  %2694 = fmul fast float %2691, %2684
  %2695 = fsub fast float %2675, %2692
  %2696 = fsub fast float %2674, %2693
  %2697 = fsub fast float %2673, %2694
  %2698 = call float @dx.op.binary.f32(i32 36, float %2686, float 1.000000e+00)  ; FMin(a,b)
  %2699 = fsub fast float 1.000000e+00, %2686
  %2700 = bitcast float %2699 to i32
  %2701 = sub nsw i32 2129859010, %2700
  %2702 = bitcast i32 %2701 to float
  %2703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2704 = extractvalue %dx.types.CBufRet.f32 %2703, 0
  %2705 = extractvalue %dx.types.CBufRet.f32 %2703, 1
  %2706 = fadd fast float %2704, %116
  %2707 = fadd fast float %2705, %117
  %2708 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2709 = extractvalue %dx.types.CBufRet.i32 %2708, 0
  %2710 = icmp eq i32 %2709, 1
  br i1 %2710, label %2711, label %2746

; <label>:2711                                    ; preds = %2669
  %2712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2713 = extractvalue %dx.types.CBufRet.f32 %2712, 0
  %2714 = extractvalue %dx.types.CBufRet.f32 %2712, 1
  %2715 = fsub fast float %2706, %2713
  %2716 = fsub fast float %2707, %2714
  %2717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2718 = extractvalue %dx.types.CBufRet.f32 %2717, 0
  %2719 = extractvalue %dx.types.CBufRet.f32 %2717, 1
  %2720 = fmul fast float %2715, %2718
  %2721 = fmul fast float %2716, %2719
  %2722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %2720, float %2721, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2723 = extractvalue %dx.types.ResRet.f32 %2722, 0
  %2724 = fcmp fast ogt float %2723, 0.000000e+00
  %2725 = extractvalue %dx.types.CBufRet.i32 %2708, 3
  %2726 = icmp ne i32 %2725, 0
  %2727 = and i1 %2724, %2726
  br i1 %2727, label %2728, label %2746, !dx.controlflow.hints !78

; <label>:2728                                    ; preds = %2711
  %2729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2730 = extractvalue %dx.types.CBufRet.f32 %2729, 0
  %2731 = extractvalue %dx.types.CBufRet.f32 %2729, 1
  %2732 = fsub fast float %2706, %2730
  %2733 = fsub fast float %2707, %2731
  %2734 = fmul fast float %2732, %2732
  %2735 = fmul fast float %2733, %2733
  %2736 = fadd fast float %2734, %2735
  %2737 = uitofp i32 %2725 to float
  %2738 = fmul fast float %2737, %2737
  %2739 = fcmp fast ogt float %2736, %2738
  br i1 %2739, label %2746, label %2740

; <label>:2740                                    ; preds = %2728
  %2741 = call float @dx.op.unary.f32(i32 24, float %2736)  ; Sqrt(value)
  %2742 = fsub fast float %2737, %2741
  %2743 = fmul fast float %2742, 0x3F75555560000000
  %2744 = call float @dx.op.unary.f32(i32 7, float %2743)  ; Saturate(value)
  %2745 = call float @dx.op.binary.f32(i32 36, float %2744, float %2723)  ; FMin(a,b)
  br label %2746

; <label>:2746                                    ; preds = %2740, %2728, %2711, %2669
  %2747 = phi float [ 1.000000e+00, %2669 ], [ %2745, %2740 ], [ %2723, %2711 ], [ 0.000000e+00, %2728 ]
  %2748 = fcmp fast ogt float %2747, 0.000000e+00
  br i1 %2748, label %2749, label %2847, !dx.controlflow.hints !79

; <label>:2749                                    ; preds = %2746
  %2750 = fadd fast float %147, 5.000000e-01
  %2751 = call float @dx.op.unary.f32(i32 27, float %2750)  ; Round_ni(value)
  %2752 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %145, float %146, float %2751, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2753 = extractvalue %dx.types.ResRet.f32 %2752, 0
  %2754 = extractvalue %dx.types.ResRet.f32 %2752, 1
  %2755 = extractvalue %dx.types.ResRet.f32 %2752, 2
  %2756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2757 = extractvalue %dx.types.CBufRet.f32 %2756, 3
  %2758 = fmul fast float %2757, %2753
  %2759 = fmul fast float %2757, %2754
  %2760 = fmul fast float %2757, %2755
  %2761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %145, float %146, float %2751, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2762 = extractvalue %dx.types.ResRet.f32 %2761, 0
  %2763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %145, float %146, float %2751, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2764 = extractvalue %dx.types.ResRet.f32 %2763, 0
  %2765 = extractvalue %dx.types.ResRet.f32 %2763, 1
  %2766 = fmul fast float %2764, 2.000000e+00
  %2767 = fmul fast float %2765, 2.000000e+00
  %2768 = fadd fast float %2766, -1.000000e+00
  %2769 = fadd fast float %2767, -1.000000e+00
  %2770 = fadd fast float %2768, %2769
  %2771 = fmul fast float %2770, 5.000000e-01
  %2772 = fsub fast float %2768, %2769
  %2773 = fmul fast float %2772, 5.000000e-01
  %2774 = call float @dx.op.unary.f32(i32 6, float %2771)  ; FAbs(value)
  %2775 = fsub fast float 1.000000e+00, %2774
  %2776 = call float @dx.op.unary.f32(i32 6, float %2773)  ; FAbs(value)
  %2777 = fsub fast float %2775, %2776
  %2778 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2777)  ; FMax(a,b)
  %2779 = call float @dx.op.dot3.f32(i32 55, float %2771, float %2773, float %2778, float %2771, float %2773, float %2778)  ; Dot3(ax,ay,az,bx,by,bz)
  %2780 = bitcast float %2779 to i32
  %2781 = ashr i32 %2780, 1
  %2782 = sub nsw i32 1597250115, %2781
  %2783 = bitcast i32 %2782 to float
  %2784 = fmul fast float %2783, %2771
  %2785 = fmul fast float %2783, %2773
  %2786 = fmul fast float %2783, %2778
  %2787 = fsub fast float 1.000000e+00, %2762
  %2788 = fdiv fast float %2787, %2786
  %2789 = fmul fast float %2786, %52
  %2790 = fmul fast float %2786, %53
  %2791 = fmul fast float %2786, %54
  %2792 = fmul fast float %2784, %48
  %2793 = fmul fast float %2784, %49
  %2794 = fmul fast float %2784, %50
  %2795 = fadd fast float %2789, %2792
  %2796 = fadd fast float %2790, %2793
  %2797 = fadd fast float %2791, %2794
  %2798 = fmul fast float %2785, %80
  %2799 = fmul fast float %2785, %81
  %2800 = fmul fast float %2785, %82
  %2801 = fadd fast float %2795, %2798
  %2802 = fadd fast float %2796, %2799
  %2803 = fadd fast float %2797, %2800
  %2804 = call float @dx.op.dot3.f32(i32 55, float %2801, float %2802, float %2803, float %2801, float %2802, float %2803)  ; Dot3(ax,ay,az,bx,by,bz)
  %2805 = call float @dx.op.unary.f32(i32 25, float %2804)  ; Rsqrt(value)
  %2806 = fmul fast float %2801, %2805
  %2807 = fmul fast float %2802, %2805
  %2808 = fmul fast float %2803, %2805
  %2809 = call float @dx.op.dot3.f32(i32 55, float %2682, float %2683, float %2684, float %2682, float %2683, float %2684)  ; Dot3(ax,ay,az,bx,by,bz)
  %2810 = call float @dx.op.unary.f32(i32 7, float %2809)  ; Saturate(value)
  %2811 = fmul fast float %2810, 5.000000e-01
  %2812 = fadd fast float %2811, 5.000000e-01
  %2813 = fmul fast float %2812, %2762
  %2814 = call float @dx.op.dot3.f32(i32 55, float %2682, float %2683, float %2684, float %2806, float %2807, float %2808)  ; Dot3(ax,ay,az,bx,by,bz)
  %2815 = call float @dx.op.unary.f32(i32 7, float %2814)  ; Saturate(value)
  %2816 = fmul fast float %2815, %2788
  %2817 = fadd fast float %2813, %2816
  %2818 = fsub fast float 5.000000e-01, %2811
  %2819 = fmul fast float %2818, %2676
  %2820 = fmul fast float %2818, %2677
  %2821 = fmul fast float %2818, %2678
  %2822 = fadd fast float %2817, %2819
  %2823 = fmul fast float %2822, %2758
  %2824 = fadd fast float %2817, %2820
  %2825 = fmul fast float %2824, %2759
  %2826 = fadd fast float %2817, %2821
  %2827 = fmul fast float %2826, %2760
  %2828 = call float @dx.op.dot3.f32(i32 55, float %2695, float %2696, float %2697, float %2682, float %2683, float %2684)  ; Dot3(ax,ay,az,bx,by,bz)
  %2829 = call float @dx.op.unary.f32(i32 7, float %2828)  ; Saturate(value)
  %2830 = fmul fast float %2829, 5.000000e-01
  %2831 = fadd fast float %2830, 5.000000e-01
  %2832 = fmul fast float %2831, %2762
  %2833 = call float @dx.op.dot3.f32(i32 55, float %2695, float %2696, float %2697, float %2806, float %2807, float %2808)  ; Dot3(ax,ay,az,bx,by,bz)
  %2834 = call float @dx.op.unary.f32(i32 7, float %2833)  ; Saturate(value)
  %2835 = fmul fast float %2834, %2788
  %2836 = fadd fast float %2832, %2835
  %2837 = fsub fast float 5.000000e-01, %2830
  %2838 = fmul fast float %2837, %2676
  %2839 = fmul fast float %2837, %2677
  %2840 = fmul fast float %2837, %2678
  %2841 = fadd fast float %2836, %2838
  %2842 = fmul fast float %2841, %2758
  %2843 = fadd fast float %2836, %2839
  %2844 = fmul fast float %2843, %2759
  %2845 = fadd fast float %2836, %2840
  %2846 = fmul fast float %2845, %2760
  br label %2847

; <label>:2847                                    ; preds = %2749, %2746
  %2848 = phi float [ %2842, %2749 ], [ 0.000000e+00, %2746 ]
  %2849 = phi float [ %2844, %2749 ], [ 0.000000e+00, %2746 ]
  %2850 = phi float [ %2846, %2749 ], [ 0.000000e+00, %2746 ]
  %2851 = phi float [ %2823, %2749 ], [ 0.000000e+00, %2746 ]
  %2852 = phi float [ %2825, %2749 ], [ 0.000000e+00, %2746 ]
  %2853 = phi float [ %2827, %2749 ], [ 0.000000e+00, %2746 ]
  %2854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2855 = extractvalue %dx.types.CBufRet.f32 %2854, 0
  %2856 = fcmp fast ogt float %2855, 0.000000e+00
  %2857 = and i1 %2748, %2856
  br i1 %2857, label %2858, label %3062, !dx.controlflow.hints !80

; <label>:2858                                    ; preds = %2847
  %2859 = extractvalue %dx.types.CBufRet.f32 %2703, 2
  %2860 = fadd fast float %2859, %118
  %2861 = fmul fast float %2682, 3.200000e+01
  %2862 = fmul fast float %2683, 3.200000e+01
  %2863 = fadd fast float %2706, %2861
  %2864 = fadd fast float %2707, %2862
  %2865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2866 = extractvalue %dx.types.CBufRet.f32 %2865, 0
  %2867 = extractvalue %dx.types.CBufRet.f32 %2865, 1
  %2868 = fsub fast float %2863, %2866
  %2869 = fsub fast float %2864, %2867
  %2870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2871 = extractvalue %dx.types.CBufRet.f32 %2870, 0
  %2872 = extractvalue %dx.types.CBufRet.f32 %2870, 1
  %2873 = fmul fast float %2868, %2871
  %2874 = fmul fast float %2869, %2872
  %2875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2876 = extractvalue %dx.types.CBufRet.f32 %2875, 0
  %2877 = extractvalue %dx.types.CBufRet.f32 %2875, 1
  %2878 = fsub fast float %2706, %2876
  %2879 = fsub fast float %2707, %2877
  %2880 = fmul fast float %2878, %2878
  %2881 = fmul fast float %2879, %2879
  %2882 = fadd fast float %2880, %2881
  %2883 = call float @dx.op.unary.f32(i32 24, float %2882)  ; Sqrt(value)
  %2884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2885 = extractvalue %dx.types.CBufRet.f32 %2884, 0
  %2886 = extractvalue %dx.types.CBufRet.f32 %2884, 1
  %2887 = fsub fast float %2883, %2885
  %2888 = fdiv fast float %2887, %2886
  %2889 = call float @dx.op.unary.f32(i32 7, float %2888)  ; Saturate(value)
  %2890 = fmul fast float %2889, 2.000000e+00
  %2891 = fsub fast float 3.000000e+00, %2890
  %2892 = fmul fast float %2889, %2889
  %2893 = fmul fast float %2892, %2891
  %2894 = fcmp fast oge float %2873, 0.000000e+00
  %2895 = fcmp fast ole float %2873, 1.000000e+00
  %2896 = and i1 %2895, %2894
  %2897 = fcmp fast oge float %2874, 0.000000e+00
  %2898 = and i1 %2897, %2896
  %2899 = fcmp fast ole float %2874, 1.000000e+00
  %2900 = and i1 %2899, %2898
  %2901 = fcmp fast ogt float %2893, 0.000000e+00
  %2902 = and i1 %2901, %2900
  br i1 %2902, label %2903, label %3026, !dx.controlflow.hints !81

; <label>:2903                                    ; preds = %2858
  %2904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2905 = extractvalue %dx.types.CBufRet.f32 %2904, 2
  %2906 = extractvalue %dx.types.CBufRet.f32 %2904, 3
  %2907 = fmul fast float %2905, %2873
  %2908 = fmul fast float %2906, %2874
  %2909 = call float @dx.op.unary.f32(i32 27, float %2907)  ; Round_ni(value)
  %2910 = call float @dx.op.unary.f32(i32 27, float %2908)  ; Round_ni(value)
  %2911 = fptosi float %2909 to i32
  %2912 = fptosi float %2910 to i32
  %2913 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %2911, i32 %2912, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = lshr i32 %2914, 16
  %2916 = icmp eq i32 %2915, 65535
  br i1 %2916, label %3026, label %2917

; <label>:2917                                    ; preds = %2903
  %2918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2919 = extractvalue %dx.types.CBufRet.f32 %2918, 0
  %2920 = fmul fast float %2919, %2873
  %2921 = extractvalue %dx.types.CBufRet.f32 %2918, 1
  %2922 = fadd fast float %2920, %2921
  %2923 = extractvalue %dx.types.CBufRet.f32 %2918, 2
  %2924 = fmul fast float %2923, %2874
  %2925 = extractvalue %dx.types.CBufRet.f32 %2918, 3
  %2926 = fadd fast float %2924, %2925
  %2927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %2922, float %2926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2928 = extractvalue %dx.types.ResRet.f32 %2927, 0
  %2929 = extractvalue %dx.types.ResRet.f32 %2927, 1
  %2930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2931 = extractvalue %dx.types.CBufRet.f32 %2930, 1
  %2932 = extractvalue %dx.types.CBufRet.f32 %2930, 0
  %2933 = fsub fast float %2931, %2932
  %2934 = fmul fast float %2933, %2928
  %2935 = fadd fast float %2934, %2932
  %2936 = extractvalue %dx.types.CBufRet.f32 %2930, 3
  %2937 = extractvalue %dx.types.CBufRet.f32 %2930, 2
  %2938 = fsub fast float %2936, %2937
  %2939 = fmul fast float %2938, %2929
  %2940 = fadd fast float %2939, %2937
  %2941 = fsub fast float %2860, %2935
  %2942 = fsub fast float %2940, %2935
  %2943 = fdiv fast float %2941, %2942
  %2944 = call float @dx.op.unary.f32(i32 7, float %2943)  ; Saturate(value)
  %2945 = extractvalue %dx.types.CBufRet.f32 %2854, 1
  %2946 = extractvalue %dx.types.CBufRet.f32 %2904, 0
  %2947 = extractvalue %dx.types.CBufRet.f32 %2904, 1
  %2948 = fmul fast float %2946, %2873
  %2949 = fmul fast float %2947, %2874
  %2950 = fmul fast float %2948, 1.250000e-01
  %2951 = fmul fast float %2949, 1.250000e-01
  %2952 = call float @dx.op.unary.f32(i32 27, float %2950)  ; Round_ni(value)
  %2953 = call float @dx.op.unary.f32(i32 27, float %2951)  ; Round_ni(value)
  %2954 = fmul fast float %2952, 8.000000e+00
  %2955 = fmul fast float %2953, 8.000000e+00
  %2956 = fsub fast float %2948, %2954
  %2957 = fsub fast float %2949, %2955
  %2958 = fadd fast float %2956, 5.000000e-01
  %2959 = fadd fast float %2957, 5.000000e-01
  %2960 = and i32 %2915, 255
  %2961 = lshr i32 %2914, 24
  %2962 = mul nuw nsw i32 %2960, 9
  %2963 = uitofp i32 %2962 to float
  %2964 = mul nuw nsw i32 %2961, 9
  %2965 = uitofp i32 %2964 to float
  %2966 = fadd fast float %2958, %2963
  %2967 = fadd fast float %2959, %2965
  %2968 = fdiv fast float %2966, %2855
  %2969 = fdiv fast float %2967, %2945
  %2970 = fmul fast float %2944, 4.375000e-01
  %2971 = fadd fast float %2970, 3.125000e-02
  %2972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %2968, float %2969, float %2971, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2973 = extractvalue %dx.types.ResRet.f32 %2972, 0
  %2974 = extractvalue %dx.types.ResRet.f32 %2972, 1
  %2975 = extractvalue %dx.types.ResRet.f32 %2972, 2
  %2976 = fadd fast float %2970, 5.312500e-01
  %2977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %2968, float %2969, float %2976, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2978 = extractvalue %dx.types.ResRet.f32 %2977, 0
  %2979 = extractvalue %dx.types.ResRet.f32 %2977, 1
  %2980 = extractvalue %dx.types.ResRet.f32 %2977, 2
  %2981 = fmul fast float %2978, 2.000000e+00
  %2982 = fmul fast float %2979, 2.000000e+00
  %2983 = fmul fast float %2980, 2.000000e+00
  %2984 = fadd fast float %2981, -1.000000e+00
  %2985 = fadd fast float %2982, -1.000000e+00
  %2986 = fadd fast float %2983, -1.000000e+00
  %2987 = fmul fast float %2984, %2984
  %2988 = fmul fast float %2985, %2985
  %2989 = fadd fast float %2987, %2988
  %2990 = fmul fast float %2986, %2986
  %2991 = fadd fast float %2989, %2990
  %2992 = call float @dx.op.unary.f32(i32 24, float %2991)  ; Sqrt(value)
  %2993 = fcmp fast ogt float %2992, 0.000000e+00
  br i1 %2993, label %2994, label %2998

; <label>:2994                                    ; preds = %2917
  %2995 = fdiv fast float %2984, %2992
  %2996 = fdiv fast float %2985, %2992
  %2997 = fdiv fast float %2986, %2992
  br label %2998

; <label>:2998                                    ; preds = %2994, %2917
  %2999 = phi float [ %2995, %2994 ], [ 0.000000e+00, %2917 ]
  %3000 = phi float [ %2996, %2994 ], [ 0.000000e+00, %2917 ]
  %3001 = phi float [ %2997, %2994 ], [ 0.000000e+00, %2917 ]
  %3002 = call float @dx.op.dot3.f32(i32 55, float %2999, float %3000, float %3001, float %2682, float %2683, float %2684)  ; Dot3(ax,ay,az,bx,by,bz)
  %3003 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3002)  ; FMax(a,b)
  %3004 = fmul fast float %3003, 0x400C5BF8A0000000
  %3005 = fmul fast float %2973, %2893
  %3006 = fmul fast float %3005, %3004
  %3007 = fmul fast float %2974, %2893
  %3008 = fmul fast float %3007, %3004
  %3009 = fmul fast float %2975, %2893
  %3010 = fmul fast float %3009, %3004
  %3011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3012 = extractvalue %dx.types.CBufRet.f32 %3011, 3
  %3013 = fmul fast float %3006, %3012
  %3014 = fmul fast float %3008, %3012
  %3015 = fmul fast float %3010, %3012
  %3016 = fcmp fast ogt float %2860, %2940
  br i1 %3016, label %3017, label %3026

; <label>:3017                                    ; preds = %2998
  %3018 = fmul fast float %2942, 0x3FC24924A0000000
  %3019 = fsub fast float %2860, %2940
  %3020 = fdiv fast float %3019, %3018
  %3021 = call float @dx.op.unary.f32(i32 7, float %3020)  ; Saturate(value)
  %3022 = fsub fast float 1.000000e+00, %3021
  %3023 = fmul fast float %3022, %3013
  %3024 = fmul fast float %3022, %3014
  %3025 = fmul fast float %3022, %3015
  br label %3026

; <label>:3026                                    ; preds = %3017, %2998, %2903, %2858
  %3027 = phi float [ %3025, %3017 ], [ %3015, %2998 ], [ 0.000000e+00, %2903 ], [ 0.000000e+00, %2858 ]
  %3028 = phi float [ %3024, %3017 ], [ %3014, %2998 ], [ 0.000000e+00, %2903 ], [ 0.000000e+00, %2858 ]
  %3029 = phi float [ %3023, %3017 ], [ %3013, %2998 ], [ 0.000000e+00, %2903 ], [ 0.000000e+00, %2858 ]
  %3030 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3029)  ; FMax(a,b)
  %3031 = fmul fast float %3030, 0x3FD20DD760000000
  %3032 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2695, float %2696, float %2697)  ; Dot3(ax,ay,az,bx,by,bz)
  %3033 = fmul fast float %3032, 0x3FDF454380000000
  %3034 = fmul fast float %3032, %3032
  %3035 = fmul fast float %3034, 0x3FEE471020000000
  %3036 = fadd fast float %3035, 0xBFD42F6020000000
  %3037 = call float @dx.op.dot3.f32(i32 55, float %3030, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3033, float %3036)  ; Dot3(ax,ay,az,bx,by,bz)
  %3038 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3028)  ; FMax(a,b)
  %3039 = fmul fast float %3038, 0x3FD20DD760000000
  %3040 = call float @dx.op.dot3.f32(i32 55, float %3038, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3033, float %3036)  ; Dot3(ax,ay,az,bx,by,bz)
  %3041 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3027)  ; FMax(a,b)
  %3042 = fmul fast float %3041, 0x3FD20DD760000000
  %3043 = call float @dx.op.dot3.f32(i32 55, float %3041, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3033, float %3036)  ; Dot3(ax,ay,az,bx,by,bz)
  %3044 = call float @dx.op.binary.f32(i32 35, float %3031, float 0.000000e+00)  ; FMax(a,b)
  %3045 = call float @dx.op.binary.f32(i32 35, float %3039, float 0.000000e+00)  ; FMax(a,b)
  %3046 = call float @dx.op.binary.f32(i32 35, float %3042, float 0.000000e+00)  ; FMax(a,b)
  %3047 = call float @dx.op.binary.f32(i32 35, float %3037, float 0.000000e+00)  ; FMax(a,b)
  %3048 = call float @dx.op.binary.f32(i32 35, float %3040, float 0.000000e+00)  ; FMax(a,b)
  %3049 = call float @dx.op.binary.f32(i32 35, float %3043, float 0.000000e+00)  ; FMax(a,b)
  %3050 = fmul fast float %3044, %2747
  %3051 = fmul fast float %3045, %2747
  %3052 = fmul fast float %3046, %2747
  %3053 = fadd fast float %3050, %2851
  %3054 = fadd fast float %3051, %2852
  %3055 = fadd fast float %3052, %2853
  %3056 = fmul fast float %3047, %2747
  %3057 = fmul fast float %3048, %2747
  %3058 = fmul fast float %3049, %2747
  %3059 = fadd fast float %3056, %2848
  %3060 = fadd fast float %3057, %2849
  %3061 = fadd fast float %3058, %2850
  br label %3062

; <label>:3062                                    ; preds = %3026, %2847
  %3063 = phi float [ %3059, %3026 ], [ %2848, %2847 ]
  %3064 = phi float [ %3060, %3026 ], [ %2849, %2847 ]
  %3065 = phi float [ %3061, %3026 ], [ %2850, %2847 ]
  %3066 = phi float [ %3053, %3026 ], [ %2851, %2847 ]
  %3067 = phi float [ %3054, %3026 ], [ %2852, %2847 ]
  %3068 = phi float [ %3055, %3026 ], [ %2853, %2847 ]
  %3069 = fcmp fast olt float %2747, 1.000000e+00
  br i1 %3069, label %3070, label %3888, !dx.controlflow.hints !82

; <label>:3070                                    ; preds = %3062
  %3071 = extractvalue %dx.types.CBufRet.f32 %2703, 2
  %3072 = fadd fast float %3071, %118
  %3073 = fmul fast float %2682, 3.200000e+01
  %3074 = fmul fast float %2683, 3.200000e+01
  %3075 = fadd fast float %2706, %3073
  %3076 = fadd fast float %2707, %3074
  %3077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3078 = extractvalue %dx.types.CBufRet.f32 %3077, 0
  %3079 = extractvalue %dx.types.CBufRet.f32 %3077, 1
  %3080 = fsub fast float %3075, %3078
  %3081 = fsub fast float %3076, %3079
  %3082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3083 = extractvalue %dx.types.CBufRet.f32 %3082, 0
  %3084 = extractvalue %dx.types.CBufRet.f32 %3082, 1
  %3085 = fmul fast float %3080, %3083
  %3086 = fmul fast float %3081, %3084
  %3087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3088 = extractvalue %dx.types.CBufRet.f32 %3087, 0
  %3089 = fmul fast float %3085, %3088
  %3090 = extractvalue %dx.types.CBufRet.f32 %3087, 1
  %3091 = fadd fast float %3089, %3090
  %3092 = extractvalue %dx.types.CBufRet.f32 %3087, 2
  %3093 = fmul fast float %3092, %3086
  %3094 = extractvalue %dx.types.CBufRet.f32 %3087, 3
  %3095 = fadd fast float %3093, %3094
  %3096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3091, float %3095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3097 = extractvalue %dx.types.ResRet.f32 %3096, 0
  %3098 = extractvalue %dx.types.ResRet.f32 %3096, 1
  %3099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3100 = extractvalue %dx.types.CBufRet.f32 %3099, 1
  %3101 = extractvalue %dx.types.CBufRet.f32 %3099, 0
  %3102 = fsub fast float %3100, %3101
  %3103 = fmul fast float %3102, %3097
  %3104 = fadd fast float %3103, %3101
  %3105 = extractvalue %dx.types.CBufRet.f32 %3099, 3
  %3106 = extractvalue %dx.types.CBufRet.f32 %3099, 2
  %3107 = fsub fast float %3105, %3106
  %3108 = fmul fast float %3107, %3098
  %3109 = fadd fast float %3108, %3106
  %3110 = fsub fast float %3072, %3104
  %3111 = fsub fast float %3109, %3104
  %3112 = fdiv fast float %3110, %3111
  %3113 = call float @dx.op.unary.f32(i32 7, float %3112)  ; Saturate(value)
  %3114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3115 = extractvalue %dx.types.CBufRet.f32 %3114, 0
  %3116 = fmul fast float %3115, %3113
  %3117 = extractvalue %dx.types.CBufRet.f32 %3114, 1
  %3118 = fadd fast float %3116, %3117
  %3119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %3091, float %3095, float %3118, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3120 = extractvalue %dx.types.ResRet.f32 %3119, 0
  %3121 = extractvalue %dx.types.ResRet.f32 %3119, 1
  %3122 = extractvalue %dx.types.ResRet.f32 %3119, 2
  %3123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3124 = extractvalue %dx.types.CBufRet.f32 %3123, 0
  %3125 = extractvalue %dx.types.CBufRet.f32 %3123, 1
  %3126 = extractvalue %dx.types.CBufRet.f32 %3123, 2
  %3127 = fmul fast float %3124, %3120
  %3128 = fmul fast float %3125, %3121
  %3129 = fmul fast float %3126, %3122
  %3130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3131 = extractvalue %dx.types.CBufRet.f32 %3130, 0
  %3132 = extractvalue %dx.types.CBufRet.f32 %3130, 1
  %3133 = extractvalue %dx.types.CBufRet.f32 %3130, 2
  %3134 = fadd fast float %3127, %3131
  %3135 = fadd fast float %3128, %3132
  %3136 = fadd fast float %3129, %3133
  %3137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3138 = extractvalue %dx.types.CBufRet.f32 %3137, 0
  %3139 = fmul fast float %3138, %3085
  %3140 = extractvalue %dx.types.CBufRet.f32 %3137, 1
  %3141 = fadd fast float %3139, %3140
  %3142 = extractvalue %dx.types.CBufRet.f32 %3137, 2
  %3143 = fmul fast float %3142, %3086
  %3144 = extractvalue %dx.types.CBufRet.f32 %3137, 3
  %3145 = fadd fast float %3143, %3144
  %3146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3147 = extractvalue %dx.types.CBufRet.f32 %3146, 0
  %3148 = extractvalue %dx.types.CBufRet.f32 %3146, 1
  %3149 = extractvalue %dx.types.CBufRet.f32 %3146, 2
  %3150 = extractvalue %dx.types.CBufRet.f32 %3146, 3
  %3151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3152 = extractvalue %dx.types.CBufRet.f32 %3151, 0
  %3153 = extractvalue %dx.types.CBufRet.f32 %3151, 1
  %3154 = extractvalue %dx.types.CBufRet.f32 %3151, 2
  %3155 = extractvalue %dx.types.CBufRet.f32 %3151, 3
  %3156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3141, float %3145, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3157 = extractvalue %dx.types.ResRet.f32 %3156, 0
  %3158 = extractvalue %dx.types.ResRet.f32 %3156, 1
  %3159 = extractvalue %dx.types.ResRet.f32 %3156, 2
  %3160 = extractvalue %dx.types.ResRet.f32 %3156, 3
  %3161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3141, float %3145, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3162 = extractvalue %dx.types.ResRet.f32 %3161, 0
  %3163 = extractvalue %dx.types.ResRet.f32 %3161, 1
  %3164 = extractvalue %dx.types.ResRet.f32 %3161, 2
  %3165 = extractvalue %dx.types.ResRet.f32 %3161, 3
  %3166 = fmul fast float %3157, %3134
  %3167 = fmul fast float %3162, %3134
  %3168 = fmul fast float %3164, %3134
  %3169 = fmul fast float %3160, %3134
  %3170 = fadd fast float %3166, %3147
  %3171 = fadd fast float %3167, %3148
  %3172 = fadd fast float %3168, %3149
  %3173 = fadd fast float %3169, %3150
  %3174 = fmul fast float %3158, %3134
  %3175 = fmul fast float %3163, %3134
  %3176 = fadd fast float %3174, %3152
  %3177 = fadd fast float %3175, %3153
  %3178 = fmul fast float %3159, %3134
  %3179 = fmul fast float %3165, %3134
  %3180 = fadd fast float %3178, %3154
  %3181 = fadd fast float %3179, %3155
  %3182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3141, float %3145, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3183 = extractvalue %dx.types.ResRet.f32 %3182, 0
  %3184 = extractvalue %dx.types.ResRet.f32 %3182, 1
  %3185 = extractvalue %dx.types.ResRet.f32 %3182, 2
  %3186 = extractvalue %dx.types.ResRet.f32 %3182, 3
  %3187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3141, float %3145, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3188 = extractvalue %dx.types.ResRet.f32 %3187, 0
  %3189 = extractvalue %dx.types.ResRet.f32 %3187, 1
  %3190 = extractvalue %dx.types.ResRet.f32 %3187, 2
  %3191 = extractvalue %dx.types.ResRet.f32 %3187, 3
  %3192 = fmul fast float %3183, %3135
  %3193 = fmul fast float %3188, %3135
  %3194 = fmul fast float %3190, %3135
  %3195 = fmul fast float %3186, %3135
  %3196 = fadd fast float %3170, %3192
  %3197 = fadd fast float %3171, %3193
  %3198 = fadd fast float %3172, %3194
  %3199 = fadd fast float %3173, %3195
  %3200 = fmul fast float %3184, %3135
  %3201 = fmul fast float %3189, %3135
  %3202 = fadd fast float %3176, %3200
  %3203 = fadd fast float %3177, %3201
  %3204 = fmul fast float %3185, %3135
  %3205 = fmul fast float %3191, %3135
  %3206 = fadd fast float %3180, %3204
  %3207 = fadd fast float %3181, %3205
  %3208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3141, float %3145, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3209 = extractvalue %dx.types.ResRet.f32 %3208, 0
  %3210 = extractvalue %dx.types.ResRet.f32 %3208, 1
  %3211 = extractvalue %dx.types.ResRet.f32 %3208, 2
  %3212 = extractvalue %dx.types.ResRet.f32 %3208, 3
  %3213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3141, float %3145, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3214 = extractvalue %dx.types.ResRet.f32 %3213, 0
  %3215 = extractvalue %dx.types.ResRet.f32 %3213, 1
  %3216 = extractvalue %dx.types.ResRet.f32 %3213, 2
  %3217 = extractvalue %dx.types.ResRet.f32 %3213, 3
  %3218 = fmul fast float %3209, %3136
  %3219 = fmul fast float %3214, %3136
  %3220 = fmul fast float %3216, %3136
  %3221 = fmul fast float %3212, %3136
  %3222 = fadd fast float %3196, %3218
  %3223 = fadd fast float %3197, %3219
  %3224 = fadd fast float %3198, %3220
  %3225 = fadd fast float %3199, %3221
  %3226 = fmul fast float %3210, %3136
  %3227 = fmul fast float %3215, %3136
  %3228 = fadd fast float %3202, %3226
  %3229 = fadd fast float %3203, %3227
  %3230 = fmul fast float %3211, %3136
  %3231 = fmul fast float %3217, %3136
  %3232 = fadd fast float %3206, %3230
  %3233 = fadd fast float %3207, %3231
  %3234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3235 = extractvalue %dx.types.CBufRet.f32 %3234, 0
  %3236 = fsub fast float %2706, %3235
  %3237 = fsub fast float %3078, %2706
  %3238 = call float @dx.op.binary.f32(i32 35, float %3237, float %3236)  ; FMax(a,b)
  %3239 = extractvalue %dx.types.CBufRet.f32 %3234, 1
  %3240 = fsub fast float %2707, %3239
  %3241 = fsub fast float %3079, %2707
  %3242 = call float @dx.op.binary.f32(i32 35, float %3241, float %3240)  ; FMax(a,b)
  %3243 = call float @dx.op.binary.f32(i32 35, float %3238, float %3242)  ; FMax(a,b)
  %3244 = extractvalue %dx.types.CBufRet.f32 %3082, 3
  %3245 = fmul fast float %3244, %3243
  %3246 = call float @dx.op.unary.f32(i32 7, float %3245)  ; Saturate(value)
  %3247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3248 = extractvalue %dx.types.CBufRet.f32 %3247, 0
  %3249 = extractvalue %dx.types.CBufRet.f32 %3247, 1
  %3250 = extractvalue %dx.types.CBufRet.f32 %3247, 2
  %3251 = extractvalue %dx.types.CBufRet.f32 %3247, 3
  %3252 = fsub fast float %3248, %3222
  %3253 = fsub fast float %3249, %3223
  %3254 = fsub fast float %3250, %3224
  %3255 = fsub fast float %3251, %3225
  %3256 = fmul fast float %3252, %3246
  %3257 = fmul fast float %3253, %3246
  %3258 = fmul fast float %3254, %3246
  %3259 = fmul fast float %3255, %3246
  %3260 = fadd fast float %3256, %3222
  %3261 = fadd fast float %3257, %3223
  %3262 = fadd fast float %3258, %3224
  %3263 = fadd fast float %3259, %3225
  %3264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3265 = extractvalue %dx.types.CBufRet.f32 %3264, 0
  %3266 = extractvalue %dx.types.CBufRet.f32 %3264, 1
  %3267 = fsub fast float %3265, %3228
  %3268 = fsub fast float %3266, %3229
  %3269 = fmul fast float %3267, %3246
  %3270 = fmul fast float %3268, %3246
  %3271 = fadd fast float %3269, %3228
  %3272 = fadd fast float %3270, %3229
  %3273 = extractvalue %dx.types.CBufRet.f32 %3264, 2
  %3274 = extractvalue %dx.types.CBufRet.f32 %3264, 3
  %3275 = fsub fast float %3273, %3232
  %3276 = fsub fast float %3274, %3233
  %3277 = fmul fast float %3275, %3246
  %3278 = fmul fast float %3276, %3246
  %3279 = fadd fast float %3277, %3232
  %3280 = fadd fast float %3278, %3233
  %3281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3282 = extractvalue %dx.types.CBufRet.f32 %3281, 0
  %3283 = fmul fast float %3282, %3260
  %3284 = fmul fast float %3282, %3261
  %3285 = fmul fast float %3282, %3262
  %3286 = fmul fast float %3282, %3263
  %3287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3288 = extractvalue %dx.types.CBufRet.f32 %3287, 0
  %3289 = fmul fast float %3288, %3271
  %3290 = fmul fast float %3288, %3272
  %3291 = fadd fast float %3289, %3283
  %3292 = fadd fast float %3290, %3285
  %3293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3294 = extractvalue %dx.types.CBufRet.f32 %3293, 0
  %3295 = fmul fast float %3294, %3279
  %3296 = fmul fast float %3294, %3280
  %3297 = fadd fast float %3291, %3295
  %3298 = fadd fast float %3292, %3296
  %3299 = extractvalue %dx.types.CBufRet.f32 %3281, 1
  %3300 = fmul fast float %3299, %3260
  %3301 = fmul fast float %3299, %3261
  %3302 = fmul fast float %3299, %3262
  %3303 = fmul fast float %3299, %3263
  %3304 = extractvalue %dx.types.CBufRet.f32 %3287, 1
  %3305 = fmul fast float %3304, %3271
  %3306 = fmul fast float %3304, %3272
  %3307 = fadd fast float %3305, %3300
  %3308 = fadd fast float %3306, %3302
  %3309 = extractvalue %dx.types.CBufRet.f32 %3293, 1
  %3310 = fmul fast float %3309, %3279
  %3311 = fmul fast float %3309, %3280
  %3312 = fadd fast float %3307, %3310
  %3313 = fadd fast float %3308, %3311
  %3314 = extractvalue %dx.types.CBufRet.f32 %3281, 2
  %3315 = fmul fast float %3314, %3260
  %3316 = fmul fast float %3314, %3261
  %3317 = fmul fast float %3314, %3262
  %3318 = fmul fast float %3314, %3263
  %3319 = extractvalue %dx.types.CBufRet.f32 %3287, 2
  %3320 = fmul fast float %3319, %3271
  %3321 = fmul fast float %3319, %3272
  %3322 = fadd fast float %3320, %3315
  %3323 = fadd fast float %3321, %3317
  %3324 = extractvalue %dx.types.CBufRet.f32 %3293, 2
  %3325 = fmul fast float %3324, %3279
  %3326 = fmul fast float %3324, %3280
  %3327 = fadd fast float %3322, %3325
  %3328 = fadd fast float %3323, %3326
  %3329 = fmul fast float %3316, %3316
  %3330 = fmul fast float %3328, %3328
  %3331 = fmul fast float %3318, %3318
  %3332 = fadd fast float %3331, %3329
  %3333 = fadd fast float %3332, %3330
  %3334 = call float @dx.op.unary.f32(i32 24, float %3333)  ; Sqrt(value)
  %3335 = fcmp fast ugt float %3334, 0.000000e+00
  br i1 %3335, label %3336, label %3351

; <label>:3336                                    ; preds = %3070
  %3337 = fsub fast float -0.000000e+00, %3318
  %3338 = fdiv fast float %3337, %3334
  %3339 = fsub fast float -0.000000e+00, %3316
  %3340 = fdiv fast float %3339, %3334
  %3341 = fdiv fast float %3328, %3334
  %3342 = fmul fast float %3327, 0x3FE279A760000000
  %3343 = fmul fast float %3340, %3316
  %3344 = fmul fast float %3341, %3328
  %3345 = fmul fast float %3338, %3318
  %3346 = fadd fast float %3343, %3345
  %3347 = fsub fast float %3346, %3344
  %3348 = call float @dx.op.unary.f32(i32 6, float %3347)  ; FAbs(value)
  %3349 = fadd fast float %3348, 0x3DDB7CDFE0000000
  %3350 = fdiv fast float %3342, %3349
  br label %3351

; <label>:3351                                    ; preds = %3336, %3070
  %3352 = phi float [ %3350, %3336 ], [ 1.000000e+00, %3070 ]
  %3353 = fmul fast float %3301, %3301
  %3354 = fmul fast float %3313, %3313
  %3355 = fmul fast float %3303, %3303
  %3356 = fadd fast float %3355, %3353
  %3357 = fadd fast float %3356, %3354
  %3358 = call float @dx.op.unary.f32(i32 24, float %3357)  ; Sqrt(value)
  %3359 = fcmp fast ugt float %3358, 0.000000e+00
  br i1 %3359, label %3360, label %3375

; <label>:3360                                    ; preds = %3351
  %3361 = fsub fast float -0.000000e+00, %3303
  %3362 = fdiv fast float %3361, %3358
  %3363 = fsub fast float -0.000000e+00, %3301
  %3364 = fdiv fast float %3363, %3358
  %3365 = fdiv fast float %3313, %3358
  %3366 = fmul fast float %3312, 0x3FE279A760000000
  %3367 = fmul fast float %3364, %3301
  %3368 = fmul fast float %3365, %3313
  %3369 = fmul fast float %3362, %3303
  %3370 = fadd fast float %3367, %3369
  %3371 = fsub fast float %3370, %3368
  %3372 = call float @dx.op.unary.f32(i32 6, float %3371)  ; FAbs(value)
  %3373 = fadd fast float %3372, 0x3DDB7CDFE0000000
  %3374 = fdiv fast float %3366, %3373
  br label %3375

; <label>:3375                                    ; preds = %3360, %3351
  %3376 = phi float [ %3374, %3360 ], [ 1.000000e+00, %3351 ]
  %3377 = call float @dx.op.binary.f32(i32 36, float %3376, float %3352)  ; FMin(a,b)
  %3378 = fmul fast float %3284, %3284
  %3379 = fmul fast float %3298, %3298
  %3380 = fmul fast float %3286, %3286
  %3381 = fadd fast float %3380, %3378
  %3382 = fadd fast float %3381, %3379
  %3383 = call float @dx.op.unary.f32(i32 24, float %3382)  ; Sqrt(value)
  %3384 = fcmp fast ugt float %3383, 0.000000e+00
  br i1 %3384, label %3385, label %3400

; <label>:3385                                    ; preds = %3375
  %3386 = fsub fast float -0.000000e+00, %3286
  %3387 = fdiv fast float %3386, %3383
  %3388 = fsub fast float -0.000000e+00, %3284
  %3389 = fdiv fast float %3388, %3383
  %3390 = fdiv fast float %3298, %3383
  %3391 = fmul fast float %3297, 0x3FE279A760000000
  %3392 = fmul fast float %3389, %3284
  %3393 = fmul fast float %3390, %3298
  %3394 = fmul fast float %3387, %3286
  %3395 = fadd fast float %3392, %3394
  %3396 = fsub fast float %3395, %3393
  %3397 = call float @dx.op.unary.f32(i32 6, float %3396)  ; FAbs(value)
  %3398 = fadd fast float %3397, 0x3DDB7CDFE0000000
  %3399 = fdiv fast float %3391, %3398
  br label %3400

; <label>:3400                                    ; preds = %3385, %3375
  %3401 = phi float [ %3399, %3385 ], [ 1.000000e+00, %3375 ]
  %3402 = call float @dx.op.binary.f32(i32 36, float %3401, float %3377)  ; FMin(a,b)
  %3403 = call float @dx.op.unary.f32(i32 7, float %3402)  ; Saturate(value)
  %3404 = fcmp fast olt float %3403, 1.000000e+00
  br i1 %3404, label %3405, label %3415

; <label>:3405                                    ; preds = %3400
  %3406 = fmul fast float %3403, %3284
  %3407 = fmul fast float %3403, %3298
  %3408 = fmul fast float %3403, %3286
  %3409 = fmul fast float %3403, %3301
  %3410 = fmul fast float %3403, %3313
  %3411 = fmul fast float %3403, %3303
  %3412 = fmul fast float %3403, %3316
  %3413 = fmul fast float %3403, %3328
  %3414 = fmul fast float %3403, %3318
  br label %3415

; <label>:3415                                    ; preds = %3405, %3400
  %3416 = phi float [ %3412, %3405 ], [ %3316, %3400 ]
  %3417 = phi float [ %3413, %3405 ], [ %3328, %3400 ]
  %3418 = phi float [ %3414, %3405 ], [ %3318, %3400 ]
  %3419 = phi float [ %3409, %3405 ], [ %3301, %3400 ]
  %3420 = phi float [ %3410, %3405 ], [ %3313, %3400 ]
  %3421 = phi float [ %3411, %3405 ], [ %3303, %3400 ]
  %3422 = phi float [ %3406, %3405 ], [ %3284, %3400 ]
  %3423 = phi float [ %3407, %3405 ], [ %3298, %3400 ]
  %3424 = phi float [ %3408, %3405 ], [ %3286, %3400 ]
  %3425 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3297)  ; FMax(a,b)
  %3426 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3312)  ; FMax(a,b)
  %3427 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3327)  ; FMax(a,b)
  %3428 = fcmp fast oge float %3085, 0.000000e+00
  %3429 = and i1 %3428, %2856
  %3430 = fcmp fast ole float %3085, 1.000000e+00
  %3431 = and i1 %3430, %3429
  %3432 = fcmp fast oge float %3086, 0.000000e+00
  %3433 = and i1 %3432, %3431
  %3434 = fcmp fast ole float %3086, 1.000000e+00
  %3435 = and i1 %3434, %3433
  br i1 %3435, label %3436, label %3581, !dx.controlflow.hints !83

; <label>:3436                                    ; preds = %3415
  %3437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3438 = extractvalue %dx.types.CBufRet.f32 %3437, 2
  %3439 = extractvalue %dx.types.CBufRet.f32 %3437, 3
  %3440 = fmul fast float %3438, %3085
  %3441 = fmul fast float %3439, %3086
  %3442 = call float @dx.op.unary.f32(i32 27, float %3440)  ; Round_ni(value)
  %3443 = call float @dx.op.unary.f32(i32 27, float %3441)  ; Round_ni(value)
  %3444 = fptosi float %3442 to i32
  %3445 = fptosi float %3443 to i32
  %3446 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3444, i32 %3445, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3447 = extractvalue %dx.types.ResRet.i32 %3446, 0
  %3448 = and i32 %3447, 65535
  %3449 = lshr i32 %3447, 16
  %3450 = icmp eq i32 %3448, 65535
  br i1 %3450, label %3487, label %3451

; <label>:3451                                    ; preds = %3436
  %3452 = extractvalue %dx.types.CBufRet.f32 %2854, 1
  %3453 = extractvalue %dx.types.CBufRet.f32 %3437, 0
  %3454 = extractvalue %dx.types.CBufRet.f32 %3437, 1
  %3455 = fmul fast float %3453, %3085
  %3456 = fmul fast float %3454, %3086
  %3457 = fmul fast float %3455, 1.250000e-01
  %3458 = fmul fast float %3456, 1.250000e-01
  %3459 = call float @dx.op.unary.f32(i32 27, float %3457)  ; Round_ni(value)
  %3460 = call float @dx.op.unary.f32(i32 27, float %3458)  ; Round_ni(value)
  %3461 = fmul fast float %3459, 8.000000e+00
  %3462 = fmul fast float %3460, 8.000000e+00
  %3463 = and i32 %3447, 255
  %3464 = lshr i32 %3447, 8
  %3465 = and i32 %3464, 255
  %3466 = mul nuw nsw i32 %3463, 9
  %3467 = uitofp i32 %3466 to float
  %3468 = mul nuw nsw i32 %3465, 9
  %3469 = uitofp i32 %3468 to float
  %3470 = fadd fast float %3467, 5.000000e-01
  %3471 = fadd fast float %3470, %3455
  %3472 = fsub fast float %3471, %3461
  %3473 = fadd fast float %3469, 5.000000e-01
  %3474 = fadd fast float %3473, %3456
  %3475 = fsub fast float %3474, %3462
  %3476 = fdiv fast float %3472, %2855
  %3477 = fdiv fast float %3475, %3452
  %3478 = fmul fast float %3113, 4.375000e-01
  %3479 = fadd fast float %3478, 3.125000e-02
  %3480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3476, float %3477, float %3479, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3481 = extractvalue %dx.types.ResRet.f32 %3480, 0
  %3482 = extractvalue %dx.types.ResRet.f32 %3480, 1
  %3483 = extractvalue %dx.types.ResRet.f32 %3480, 2
  %3484 = fadd fast float %3481, %3425
  %3485 = fadd fast float %3482, %3426
  %3486 = fadd fast float %3483, %3427
  br label %3487

; <label>:3487                                    ; preds = %3451, %3436
  %3488 = phi float [ %3486, %3451 ], [ %3427, %3436 ]
  %3489 = phi float [ %3485, %3451 ], [ %3426, %3436 ]
  %3490 = phi float [ %3484, %3451 ], [ %3425, %3436 ]
  %3491 = icmp eq i32 %3449, 65535
  br i1 %3491, label %3581, label %3492

; <label>:3492                                    ; preds = %3487
  %3493 = extractvalue %dx.types.CBufRet.f32 %2854, 1
  %3494 = extractvalue %dx.types.CBufRet.f32 %3437, 0
  %3495 = extractvalue %dx.types.CBufRet.f32 %3437, 1
  %3496 = fmul fast float %3494, %3085
  %3497 = fmul fast float %3495, %3086
  %3498 = fmul fast float %3496, 1.250000e-01
  %3499 = fmul fast float %3497, 1.250000e-01
  %3500 = call float @dx.op.unary.f32(i32 27, float %3498)  ; Round_ni(value)
  %3501 = call float @dx.op.unary.f32(i32 27, float %3499)  ; Round_ni(value)
  %3502 = fmul fast float %3500, 8.000000e+00
  %3503 = fmul fast float %3501, 8.000000e+00
  %3504 = fsub fast float %3496, %3502
  %3505 = fsub fast float %3497, %3503
  %3506 = fadd fast float %3504, 5.000000e-01
  %3507 = fadd fast float %3505, 5.000000e-01
  %3508 = and i32 %3449, 255
  %3509 = lshr i32 %3447, 24
  %3510 = mul nuw nsw i32 %3508, 9
  %3511 = uitofp i32 %3510 to float
  %3512 = mul nuw nsw i32 %3509, 9
  %3513 = uitofp i32 %3512 to float
  %3514 = fadd fast float %3506, %3511
  %3515 = fadd fast float %3507, %3513
  %3516 = fdiv fast float %3514, %2855
  %3517 = fdiv fast float %3515, %3493
  %3518 = fmul fast float %3113, 4.375000e-01
  %3519 = fadd fast float %3518, 3.125000e-02
  %3520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3516, float %3517, float %3519, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3521 = extractvalue %dx.types.ResRet.f32 %3520, 0
  %3522 = extractvalue %dx.types.ResRet.f32 %3520, 1
  %3523 = extractvalue %dx.types.ResRet.f32 %3520, 2
  %3524 = fadd fast float %3518, 5.312500e-01
  %3525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3516, float %3517, float %3524, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3526 = extractvalue %dx.types.ResRet.f32 %3525, 0
  %3527 = extractvalue %dx.types.ResRet.f32 %3525, 1
  %3528 = extractvalue %dx.types.ResRet.f32 %3525, 2
  %3529 = fmul fast float %3526, 2.000000e+00
  %3530 = fmul fast float %3527, 2.000000e+00
  %3531 = fmul fast float %3528, 2.000000e+00
  %3532 = fadd fast float %3529, -1.000000e+00
  %3533 = fadd fast float %3530, -1.000000e+00
  %3534 = fadd fast float %3531, -1.000000e+00
  %3535 = fmul fast float %3532, %3532
  %3536 = fmul fast float %3533, %3533
  %3537 = fadd fast float %3535, %3536
  %3538 = fmul fast float %3534, %3534
  %3539 = fadd fast float %3537, %3538
  %3540 = call float @dx.op.unary.f32(i32 24, float %3539)  ; Sqrt(value)
  %3541 = fcmp fast ogt float %3540, 0.000000e+00
  br i1 %3541, label %3542, label %3546

; <label>:3542                                    ; preds = %3492
  %3543 = fdiv fast float %3532, %3540
  %3544 = fdiv fast float %3533, %3540
  %3545 = fdiv fast float %3534, %3540
  br label %3546

; <label>:3546                                    ; preds = %3542, %3492
  %3547 = phi float [ %3543, %3542 ], [ 0.000000e+00, %3492 ]
  %3548 = phi float [ %3544, %3542 ], [ 0.000000e+00, %3492 ]
  %3549 = phi float [ %3545, %3542 ], [ 0.000000e+00, %3492 ]
  %3550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3551 = extractvalue %dx.types.CBufRet.f32 %3550, 0
  %3552 = extractvalue %dx.types.CBufRet.f32 %3550, 1
  %3553 = fsub fast float %2706, %3551
  %3554 = fsub fast float %2707, %3552
  %3555 = fmul fast float %3553, %3553
  %3556 = fmul fast float %3554, %3554
  %3557 = fadd fast float %3555, %3556
  %3558 = call float @dx.op.unary.f32(i32 24, float %3557)  ; Sqrt(value)
  %3559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3560 = extractvalue %dx.types.CBufRet.f32 %3559, 0
  %3561 = extractvalue %dx.types.CBufRet.f32 %3559, 1
  %3562 = fsub fast float %3558, %3560
  %3563 = fdiv fast float %3562, %3561
  %3564 = call float @dx.op.unary.f32(i32 7, float %3563)  ; Saturate(value)
  %3565 = fmul fast float %3564, 2.000000e+00
  %3566 = fsub fast float 3.000000e+00, %3565
  %3567 = fmul fast float %3564, %3564
  %3568 = fmul fast float %3567, %3566
  %3569 = call float @dx.op.dot3.f32(i32 55, float %3547, float %3548, float %3549, float %2682, float %2683, float %2684)  ; Dot3(ax,ay,az,bx,by,bz)
  %3570 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3569)  ; FMax(a,b)
  %3571 = fmul fast float %3570, 0x400C5BF8A0000000
  %3572 = fmul fast float %3568, %3521
  %3573 = fmul fast float %3572, %3571
  %3574 = fadd fast float %3573, %3490
  %3575 = fmul fast float %3568, %3522
  %3576 = fmul fast float %3575, %3571
  %3577 = fadd fast float %3576, %3489
  %3578 = fmul fast float %3568, %3523
  %3579 = fmul fast float %3578, %3571
  %3580 = fadd fast float %3579, %3488
  br label %3581

; <label>:3581                                    ; preds = %3546, %3487, %3415
  %3582 = phi float [ %3580, %3546 ], [ %3488, %3487 ], [ %3427, %3415 ]
  %3583 = phi float [ %3577, %3546 ], [ %3489, %3487 ], [ %3426, %3415 ]
  %3584 = phi float [ %3574, %3546 ], [ %3490, %3487 ], [ %3425, %3415 ]
  %3585 = fcmp fast ogt float %3072, %3109
  %3586 = and i1 %3428, %3585
  %3587 = and i1 %3430, %3586
  %3588 = and i1 %3432, %3587
  %3589 = and i1 %3434, %3588
  br i1 %3589, label %3590, label %3647, !dx.controlflow.hints !84

; <label>:3590                                    ; preds = %3581
  %3591 = fmul fast float %3111, 0x3FC24924A0000000
  %3592 = fsub fast float %3072, %3109
  %3593 = fdiv fast float %3592, %3591
  %3594 = call float @dx.op.unary.f32(i32 7, float %3593)  ; Saturate(value)
  %3595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3596 = extractvalue %dx.types.CBufRet.f32 %3595, 0
  %3597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3598 = extractvalue %dx.types.CBufRet.f32 %3597, 0
  %3599 = extractvalue %dx.types.CBufRet.f32 %3597, 1
  %3600 = extractvalue %dx.types.CBufRet.f32 %3597, 2
  %3601 = fsub fast float %3596, %3584
  %3602 = fsub fast float %3598, %3422
  %3603 = fsub fast float %3599, %3423
  %3604 = fsub fast float %3600, %3424
  %3605 = fmul fast float %3601, %3594
  %3606 = fmul fast float %3602, %3594
  %3607 = fmul fast float %3603, %3594
  %3608 = fmul fast float %3604, %3594
  %3609 = fadd fast float %3605, %3584
  %3610 = fadd fast float %3606, %3422
  %3611 = fadd fast float %3607, %3423
  %3612 = fadd fast float %3608, %3424
  %3613 = extractvalue %dx.types.CBufRet.f32 %3595, 1
  %3614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3615 = extractvalue %dx.types.CBufRet.f32 %3614, 0
  %3616 = extractvalue %dx.types.CBufRet.f32 %3614, 1
  %3617 = extractvalue %dx.types.CBufRet.f32 %3614, 2
  %3618 = fsub fast float %3613, %3583
  %3619 = fsub fast float %3615, %3419
  %3620 = fsub fast float %3616, %3420
  %3621 = fsub fast float %3617, %3421
  %3622 = fmul fast float %3618, %3594
  %3623 = fmul fast float %3619, %3594
  %3624 = fmul fast float %3620, %3594
  %3625 = fmul fast float %3621, %3594
  %3626 = fadd fast float %3622, %3583
  %3627 = fadd fast float %3623, %3419
  %3628 = fadd fast float %3624, %3420
  %3629 = fadd fast float %3625, %3421
  %3630 = extractvalue %dx.types.CBufRet.f32 %3595, 2
  %3631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3632 = extractvalue %dx.types.CBufRet.f32 %3631, 0
  %3633 = extractvalue %dx.types.CBufRet.f32 %3631, 1
  %3634 = extractvalue %dx.types.CBufRet.f32 %3631, 2
  %3635 = fsub fast float %3630, %3582
  %3636 = fsub fast float %3632, %3416
  %3637 = fsub fast float %3633, %3417
  %3638 = fsub fast float %3634, %3418
  %3639 = fmul fast float %3635, %3594
  %3640 = fmul fast float %3636, %3594
  %3641 = fmul fast float %3637, %3594
  %3642 = fmul fast float %3638, %3594
  %3643 = fadd fast float %3639, %3582
  %3644 = fadd fast float %3640, %3416
  %3645 = fadd fast float %3641, %3417
  %3646 = fadd fast float %3642, %3418
  br label %3647

; <label>:3647                                    ; preds = %3590, %3581
  %3648 = phi float [ %3643, %3590 ], [ %3582, %3581 ]
  %3649 = phi float [ %3644, %3590 ], [ %3416, %3581 ]
  %3650 = phi float [ %3645, %3590 ], [ %3417, %3581 ]
  %3651 = phi float [ %3646, %3590 ], [ %3418, %3581 ]
  %3652 = phi float [ %3626, %3590 ], [ %3583, %3581 ]
  %3653 = phi float [ %3627, %3590 ], [ %3419, %3581 ]
  %3654 = phi float [ %3628, %3590 ], [ %3420, %3581 ]
  %3655 = phi float [ %3629, %3590 ], [ %3421, %3581 ]
  %3656 = phi float [ %3609, %3590 ], [ %3584, %3581 ]
  %3657 = phi float [ %3610, %3590 ], [ %3422, %3581 ]
  %3658 = phi float [ %3611, %3590 ], [ %3423, %3581 ]
  %3659 = phi float [ %3612, %3590 ], [ %3424, %3581 ]
  %3660 = extractvalue %dx.types.CBufRet.f32 %3234, 3
  %3661 = fmul fast float %3660, %3656
  %3662 = fmul fast float %3660, %3652
  %3663 = fmul fast float %3660, %3648
  %3664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3665 = extractvalue %dx.types.CBufRet.f32 %3664, 3
  %3666 = fmul fast float %3661, %3665
  %3667 = fmul fast float %3662, %3665
  %3668 = fmul fast float %3663, %3665
  %3669 = fmul fast float %3657, 1.500000e+00
  %3670 = fmul fast float %3669, %3660
  %3671 = fmul fast float %3670, %3665
  %3672 = fmul fast float %3658, 1.500000e+00
  %3673 = fmul fast float %3672, %3660
  %3674 = fmul fast float %3673, %3665
  %3675 = fmul fast float %3659, 1.500000e+00
  %3676 = fmul fast float %3675, %3660
  %3677 = fmul fast float %3676, %3665
  %3678 = fmul fast float %3653, 1.500000e+00
  %3679 = fmul fast float %3678, %3660
  %3680 = fmul fast float %3679, %3665
  %3681 = fmul fast float %3654, 1.500000e+00
  %3682 = fmul fast float %3681, %3660
  %3683 = fmul fast float %3682, %3665
  %3684 = fmul fast float %3655, 1.500000e+00
  %3685 = fmul fast float %3684, %3660
  %3686 = fmul fast float %3685, %3665
  %3687 = fmul fast float %3649, 1.500000e+00
  %3688 = fmul fast float %3687, %3660
  %3689 = fmul fast float %3688, %3665
  %3690 = fmul fast float %3650, 1.500000e+00
  %3691 = fmul fast float %3690, %3660
  %3692 = fmul fast float %3691, %3665
  %3693 = fmul fast float %3651, 1.500000e+00
  %3694 = fmul fast float %3693, %3660
  %3695 = fmul fast float %3694, %3665
  %3696 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3666)  ; FMax(a,b)
  %3697 = call float @dx.op.dot3.f32(i32 55, float %3671, float %3674, float %3677, float %3671, float %3674, float %3677)  ; Dot3(ax,ay,az,bx,by,bz)
  %3698 = fcmp fast oeq float %3697, 0.000000e+00
  %3699 = fcmp fast oeq float %3696, 0.000000e+00
  %3700 = or i1 %3699, %3698
  br i1 %3700, label %3730, label %3701

; <label>:3701                                    ; preds = %3647
  %3702 = fsub fast float -0.000000e+00, %3677
  %3703 = fsub fast float -0.000000e+00, %3671
  %3704 = call float @dx.op.unary.f32(i32 24, float %3697)  ; Sqrt(value)
  %3705 = fdiv fast float %3704, %3696
  %3706 = fcmp fast ogt float %3705, 0x3FFB6F8900000000
  %3707 = select i1 %3706, float 0x3FFB6F8900000000, float %3705
  %3708 = fmul fast float %3707, 0x3FE8A23460000000
  %3709 = call float @dx.op.unary.f32(i32 7, float %3708)  ; Saturate(value)
  %3710 = call float @dx.op.binary.f32(i32 35, float %3707, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3711 = fmul fast float %3709, %3696
  %3712 = fmul fast float %3710, 0x3FF279A740000000
  %3713 = fadd fast float %3712, -1.000000e+00
  %3714 = call float @dx.op.dot3.f32(i32 55, float %3702, float %3703, float %3674, float %3702, float %3703, float %3674)  ; Dot3(ax,ay,az,bx,by,bz)
  %3715 = call float @dx.op.unary.f32(i32 25, float %3714)  ; Rsqrt(value)
  %3716 = fmul fast float %3715, %3702
  %3717 = fmul fast float %3715, %3703
  %3718 = fmul fast float %3715, %3674
  %3719 = fmul fast float %3713, %3713
  %3720 = fsub fast float 1.000000e+00, %3719
  %3721 = fmul fast float %3710, 0x40005F8BE0000000
  %3722 = fsub fast float 0x400C5BF8A0000000, %3721
  %3723 = fdiv fast float %3711, %3722
  %3724 = fmul fast float %3723, 0x3FEE31C3C0000000
  %3725 = fmul fast float %3724, %3720
  %3726 = fmul fast float %3710, 0x3FDACB7480000000
  %3727 = fadd fast float %3726, 0xBFD7347680000000
  %3728 = fmul fast float %3727, %3723
  %3729 = fmul fast float %3728, %3720
  br label %3730

; <label>:3730                                    ; preds = %3701, %3647
  %3731 = phi float [ %3716, %3701 ], [ 0.000000e+00, %3647 ]
  %3732 = phi float [ %3717, %3701 ], [ 0.000000e+00, %3647 ]
  %3733 = phi float [ %3718, %3701 ], [ 0.000000e+00, %3647 ]
  %3734 = phi float [ %3725, %3701 ], [ 0.000000e+00, %3647 ]
  %3735 = phi float [ %3729, %3701 ], [ 0.000000e+00, %3647 ]
  %3736 = call float @dx.op.dot3.f32(i32 55, float %3731, float %3732, float %3733, float %2682, float %2683, float %2684)  ; Dot3(ax,ay,az,bx,by,bz)
  %3737 = fmul fast float %3736, %3736
  %3738 = fmul fast float %3737, 0x3FEE471020000000
  %3739 = fadd fast float %3738, 0xBFD42F6020000000
  %3740 = fmul fast float %3696, 0x3FD20DD760000000
  %3741 = fmul fast float %3739, %3735
  %3742 = fmul fast float %3734, 0x3FDF454380000000
  %3743 = fmul fast float %3742, %3736
  %3744 = fadd fast float %3743, %3740
  %3745 = fadd fast float %3744, %3741
  %3746 = call float @dx.op.dot3.f32(i32 55, float %3731, float %3732, float %3733, float %2695, float %2696, float %2697)  ; Dot3(ax,ay,az,bx,by,bz)
  %3747 = fmul fast float %3746, 0x3FDF454380000000
  %3748 = fmul fast float %3746, %3746
  %3749 = fmul fast float %3748, 0x3FEE471020000000
  %3750 = fadd fast float %3749, 0xBFD42F6020000000
  %3751 = call float @dx.op.dot3.f32(i32 55, float %3696, float %3734, float %3735, float 0x3FD20DD760000000, float %3747, float %3750)  ; Dot3(ax,ay,az,bx,by,bz)
  %3752 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3667)  ; FMax(a,b)
  %3753 = call float @dx.op.dot3.f32(i32 55, float %3680, float %3683, float %3686, float %3680, float %3683, float %3686)  ; Dot3(ax,ay,az,bx,by,bz)
  %3754 = fcmp fast oeq float %3753, 0.000000e+00
  %3755 = fcmp fast oeq float %3752, 0.000000e+00
  %3756 = or i1 %3755, %3754
  br i1 %3756, label %3786, label %3757

; <label>:3757                                    ; preds = %3730
  %3758 = fsub fast float -0.000000e+00, %3686
  %3759 = fsub fast float -0.000000e+00, %3680
  %3760 = call float @dx.op.unary.f32(i32 24, float %3753)  ; Sqrt(value)
  %3761 = fdiv fast float %3760, %3752
  %3762 = fcmp fast ogt float %3761, 0x3FFB6F8900000000
  %3763 = select i1 %3762, float 0x3FFB6F8900000000, float %3761
  %3764 = fmul fast float %3763, 0x3FE8A23460000000
  %3765 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  %3766 = call float @dx.op.binary.f32(i32 35, float %3763, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3767 = fmul fast float %3765, %3752
  %3768 = fmul fast float %3766, 0x3FF279A740000000
  %3769 = fadd fast float %3768, -1.000000e+00
  %3770 = call float @dx.op.dot3.f32(i32 55, float %3758, float %3759, float %3683, float %3758, float %3759, float %3683)  ; Dot3(ax,ay,az,bx,by,bz)
  %3771 = call float @dx.op.unary.f32(i32 25, float %3770)  ; Rsqrt(value)
  %3772 = fmul fast float %3771, %3758
  %3773 = fmul fast float %3771, %3759
  %3774 = fmul fast float %3771, %3683
  %3775 = fmul fast float %3769, %3769
  %3776 = fsub fast float 1.000000e+00, %3775
  %3777 = fmul fast float %3766, 0x40005F8BE0000000
  %3778 = fsub fast float 0x400C5BF8A0000000, %3777
  %3779 = fdiv fast float %3767, %3778
  %3780 = fmul fast float %3779, 0x3FEE31C3C0000000
  %3781 = fmul fast float %3780, %3776
  %3782 = fmul fast float %3766, 0x3FDACB7480000000
  %3783 = fadd fast float %3782, 0xBFD7347680000000
  %3784 = fmul fast float %3783, %3779
  %3785 = fmul fast float %3784, %3776
  br label %3786

; <label>:3786                                    ; preds = %3757, %3730
  %3787 = phi float [ %3772, %3757 ], [ 0.000000e+00, %3730 ]
  %3788 = phi float [ %3773, %3757 ], [ 0.000000e+00, %3730 ]
  %3789 = phi float [ %3774, %3757 ], [ 0.000000e+00, %3730 ]
  %3790 = phi float [ %3781, %3757 ], [ 0.000000e+00, %3730 ]
  %3791 = phi float [ %3785, %3757 ], [ 0.000000e+00, %3730 ]
  %3792 = call float @dx.op.dot3.f32(i32 55, float %3787, float %3788, float %3789, float %2682, float %2683, float %2684)  ; Dot3(ax,ay,az,bx,by,bz)
  %3793 = fmul fast float %3792, %3792
  %3794 = fmul fast float %3793, 0x3FEE471020000000
  %3795 = fadd fast float %3794, 0xBFD42F6020000000
  %3796 = fmul fast float %3752, 0x3FD20DD760000000
  %3797 = fmul fast float %3795, %3791
  %3798 = fmul fast float %3790, 0x3FDF454380000000
  %3799 = fmul fast float %3798, %3792
  %3800 = fadd fast float %3799, %3796
  %3801 = fadd fast float %3800, %3797
  %3802 = call float @dx.op.dot3.f32(i32 55, float %3787, float %3788, float %3789, float %2695, float %2696, float %2697)  ; Dot3(ax,ay,az,bx,by,bz)
  %3803 = fmul fast float %3802, 0x3FDF454380000000
  %3804 = fmul fast float %3802, %3802
  %3805 = fmul fast float %3804, 0x3FEE471020000000
  %3806 = fadd fast float %3805, 0xBFD42F6020000000
  %3807 = call float @dx.op.dot3.f32(i32 55, float %3752, float %3790, float %3791, float 0x3FD20DD760000000, float %3803, float %3806)  ; Dot3(ax,ay,az,bx,by,bz)
  %3808 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3668)  ; FMax(a,b)
  %3809 = call float @dx.op.dot3.f32(i32 55, float %3689, float %3692, float %3695, float %3689, float %3692, float %3695)  ; Dot3(ax,ay,az,bx,by,bz)
  %3810 = fcmp fast oeq float %3809, 0.000000e+00
  %3811 = fcmp fast oeq float %3808, 0.000000e+00
  %3812 = or i1 %3811, %3810
  br i1 %3812, label %3842, label %3813

; <label>:3813                                    ; preds = %3786
  %3814 = fsub fast float -0.000000e+00, %3695
  %3815 = fsub fast float -0.000000e+00, %3689
  %3816 = call float @dx.op.unary.f32(i32 24, float %3809)  ; Sqrt(value)
  %3817 = fdiv fast float %3816, %3808
  %3818 = fcmp fast ogt float %3817, 0x3FFB6F8900000000
  %3819 = select i1 %3818, float 0x3FFB6F8900000000, float %3817
  %3820 = fmul fast float %3819, 0x3FE8A23460000000
  %3821 = call float @dx.op.unary.f32(i32 7, float %3820)  ; Saturate(value)
  %3822 = call float @dx.op.binary.f32(i32 35, float %3819, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3823 = fmul fast float %3821, %3808
  %3824 = fmul fast float %3822, 0x3FF279A740000000
  %3825 = fadd fast float %3824, -1.000000e+00
  %3826 = call float @dx.op.dot3.f32(i32 55, float %3814, float %3815, float %3692, float %3814, float %3815, float %3692)  ; Dot3(ax,ay,az,bx,by,bz)
  %3827 = call float @dx.op.unary.f32(i32 25, float %3826)  ; Rsqrt(value)
  %3828 = fmul fast float %3827, %3814
  %3829 = fmul fast float %3827, %3815
  %3830 = fmul fast float %3827, %3692
  %3831 = fmul fast float %3825, %3825
  %3832 = fsub fast float 1.000000e+00, %3831
  %3833 = fmul fast float %3822, 0x40005F8BE0000000
  %3834 = fsub fast float 0x400C5BF8A0000000, %3833
  %3835 = fdiv fast float %3823, %3834
  %3836 = fmul fast float %3835, 0x3FEE31C3C0000000
  %3837 = fmul fast float %3836, %3832
  %3838 = fmul fast float %3822, 0x3FDACB7480000000
  %3839 = fadd fast float %3838, 0xBFD7347680000000
  %3840 = fmul fast float %3839, %3835
  %3841 = fmul fast float %3840, %3832
  br label %3842

; <label>:3842                                    ; preds = %3813, %3786
  %3843 = phi float [ %3828, %3813 ], [ 0.000000e+00, %3786 ]
  %3844 = phi float [ %3829, %3813 ], [ 0.000000e+00, %3786 ]
  %3845 = phi float [ %3830, %3813 ], [ 0.000000e+00, %3786 ]
  %3846 = phi float [ %3837, %3813 ], [ 0.000000e+00, %3786 ]
  %3847 = phi float [ %3841, %3813 ], [ 0.000000e+00, %3786 ]
  %3848 = call float @dx.op.dot3.f32(i32 55, float %3843, float %3844, float %3845, float %2682, float %2683, float %2684)  ; Dot3(ax,ay,az,bx,by,bz)
  %3849 = fmul fast float %3848, %3848
  %3850 = fmul fast float %3849, 0x3FEE471020000000
  %3851 = fadd fast float %3850, 0xBFD42F6020000000
  %3852 = fmul fast float %3808, 0x3FD20DD760000000
  %3853 = fmul fast float %3851, %3847
  %3854 = fmul fast float %3846, 0x3FDF454380000000
  %3855 = fmul fast float %3854, %3848
  %3856 = fadd fast float %3855, %3852
  %3857 = fadd fast float %3856, %3853
  %3858 = call float @dx.op.dot3.f32(i32 55, float %3843, float %3844, float %3845, float %2695, float %2696, float %2697)  ; Dot3(ax,ay,az,bx,by,bz)
  %3859 = fmul fast float %3858, 0x3FDF454380000000
  %3860 = fmul fast float %3858, %3858
  %3861 = fmul fast float %3860, 0x3FEE471020000000
  %3862 = fadd fast float %3861, 0xBFD42F6020000000
  %3863 = call float @dx.op.dot3.f32(i32 55, float %3808, float %3846, float %3847, float 0x3FD20DD760000000, float %3859, float %3862)  ; Dot3(ax,ay,az,bx,by,bz)
  %3864 = call float @dx.op.binary.f32(i32 35, float %3745, float 0.000000e+00)  ; FMax(a,b)
  %3865 = call float @dx.op.binary.f32(i32 35, float %3801, float 0.000000e+00)  ; FMax(a,b)
  %3866 = call float @dx.op.binary.f32(i32 35, float %3857, float 0.000000e+00)  ; FMax(a,b)
  %3867 = call float @dx.op.binary.f32(i32 35, float %3751, float 0.000000e+00)  ; FMax(a,b)
  %3868 = call float @dx.op.binary.f32(i32 35, float %3807, float 0.000000e+00)  ; FMax(a,b)
  %3869 = call float @dx.op.binary.f32(i32 35, float %3863, float 0.000000e+00)  ; FMax(a,b)
  %3870 = fsub fast float %3066, %3864
  %3871 = fsub fast float %3067, %3865
  %3872 = fsub fast float %3068, %3866
  %3873 = fmul fast float %3870, %2747
  %3874 = fmul fast float %3871, %2747
  %3875 = fmul fast float %3872, %2747
  %3876 = fadd fast float %3873, %3864
  %3877 = fadd fast float %3874, %3865
  %3878 = fadd fast float %3875, %3866
  %3879 = fsub fast float %3063, %3867
  %3880 = fsub fast float %3064, %3868
  %3881 = fsub fast float %3065, %3869
  %3882 = fmul fast float %3879, %2747
  %3883 = fmul fast float %3880, %2747
  %3884 = fmul fast float %3881, %2747
  %3885 = fadd fast float %3882, %3867
  %3886 = fadd fast float %3883, %3868
  %3887 = fadd fast float %3884, %3869
  br label %3888

; <label>:3888                                    ; preds = %3842, %3062
  %3889 = phi float [ %3885, %3842 ], [ %3063, %3062 ]
  %3890 = phi float [ %3886, %3842 ], [ %3064, %3062 ]
  %3891 = phi float [ %3887, %3842 ], [ %3065, %3062 ]
  %3892 = phi float [ %3876, %3842 ], [ %3066, %3062 ]
  %3893 = phi float [ %3877, %3842 ], [ %3067, %3062 ]
  %3894 = phi float [ %3878, %3842 ], [ %3068, %3062 ]
  %3895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3896 = extractvalue %dx.types.CBufRet.f32 %3895, 0
  %3897 = call float @dx.op.binary.f32(i32 36, float %2676, float %3896)  ; FMin(a,b)
  %3898 = fsub fast float 1.000000e+00, %2698
  %3899 = fmul fast float %3897, %3898
  %3900 = fsub fast float 1.000000e+00, %3899
  %3901 = bitcast float %3900 to i32
  %3902 = sub nsw i32 2129859010, %3901
  %3903 = bitcast i32 %3902 to float
  %3904 = call float @dx.op.binary.f32(i32 36, float %2677, float %3896)  ; FMin(a,b)
  %3905 = fmul fast float %3904, %3898
  %3906 = fsub fast float 1.000000e+00, %3905
  %3907 = bitcast float %3906 to i32
  %3908 = sub nsw i32 2129859010, %3907
  %3909 = bitcast i32 %3908 to float
  %3910 = call float @dx.op.binary.f32(i32 36, float %2678, float %3896)  ; FMin(a,b)
  %3911 = fmul fast float %3910, %3898
  %3912 = fsub fast float 1.000000e+00, %3911
  %3913 = bitcast float %3912 to i32
  %3914 = sub nsw i32 2129859010, %3913
  %3915 = bitcast i32 %3914 to float
  %3916 = fmul fast float %3892, %2698
  %3917 = fmul fast float %3916, %3903
  %3918 = fmul fast float %3893, %2698
  %3919 = fmul fast float %3918, %3909
  %3920 = fmul fast float %3894, %2698
  %3921 = fmul fast float %3920, %3915
  %3922 = call float @dx.op.binary.f32(i32 36, float %2679, float %3896)  ; FMin(a,b)
  %3923 = fmul fast float %3922, %3898
  %3924 = fsub fast float 1.000000e+00, %3923
  %3925 = bitcast float %3924 to i32
  %3926 = sub nsw i32 2129859010, %3925
  %3927 = bitcast i32 %3926 to float
  %3928 = call float @dx.op.binary.f32(i32 36, float %2680, float %3896)  ; FMin(a,b)
  %3929 = fmul fast float %3928, %3898
  %3930 = fsub fast float 1.000000e+00, %3929
  %3931 = bitcast float %3930 to i32
  %3932 = sub nsw i32 2129859010, %3931
  %3933 = bitcast i32 %3932 to float
  %3934 = call float @dx.op.binary.f32(i32 36, float %2687, float %3896)  ; FMin(a,b)
  %3935 = fmul fast float %3934, %3898
  %3936 = fsub fast float 1.000000e+00, %3935
  %3937 = bitcast float %3936 to i32
  %3938 = sub nsw i32 2129859010, %3937
  %3939 = bitcast i32 %3938 to float
  %3940 = fmul fast float %3889, %2698
  %3941 = fmul fast float %3940, %3927
  %3942 = fmul fast float %3890, %2698
  %3943 = fmul fast float %3942, %3933
  %3944 = fmul fast float %3891, %2698
  %3945 = fmul fast float %3944, %3939
  %3946 = call float @dx.op.dot3.f32(i32 55, float %3917, float %3919, float %3921, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3947 = select i1 %187, float 0.000000e+00, float %3917
  %3948 = select i1 %187, float %3946, float %3919
  %3949 = select i1 %187, float 0.000000e+00, float %3921
  %3950 = call float @dx.op.dot3.f32(i32 55, float %3941, float %3943, float %3945, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3951 = select i1 %187, float 0.000000e+00, float %3941
  %3952 = select i1 %187, float %3950, float %3943
  %3953 = select i1 %187, float 0.000000e+00, float %3945
  %3954 = fmul fast float %2689, 9.843750e-01
  %3955 = fmul fast float %2685, 9.843750e-01
  %3956 = fadd fast float %3954, 7.812500e-03
  %3957 = fadd fast float %3955, 7.812500e-03
  %3958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %3956, float %3957, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3959 = extractvalue %dx.types.ResRet.f32 %3958, 2
  %3960 = extractvalue %dx.types.ResRet.f32 %3958, 3
  %3961 = fmul fast float %3959, %2679
  %3962 = fmul fast float %3959, %2680
  %3963 = fmul fast float %3959, %2687
  %3964 = fadd fast float %3961, %3960
  %3965 = fadd fast float %3962, %3960
  %3966 = fadd fast float %3963, %3960
  %3967 = fcmp fast ogt float %2053, 0.000000e+00
  br i1 %3967, label %3968, label %3994

; <label>:3968                                    ; preds = %3888
  %3969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2053, float %2689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = extractvalue %dx.types.ResRet.f32 %3969, 1
  %3972 = extractvalue %dx.types.ResRet.f32 %3969, 2
  %3973 = fadd fast float %3970, -5.000000e-01
  %3974 = fadd fast float %3971, -5.000000e-01
  %3975 = fadd fast float %3972, -5.000000e-01
  %3976 = fsub fast float 1.000000e+00, %2679
  %3977 = fsub fast float 1.000000e+00, %2680
  %3978 = fsub fast float 1.000000e+00, %2687
  %3979 = fmul fast float %2679, 4.000000e+00
  %3980 = fmul fast float %3979, %3976
  %3981 = fmul fast float %3980, %3973
  %3982 = fmul fast float %2680, 4.000000e+00
  %3983 = fmul fast float %3982, %3977
  %3984 = fmul fast float %3983, %3974
  %3985 = fmul fast float %2687, 4.000000e+00
  %3986 = fmul fast float %3985, %3978
  %3987 = fmul fast float %3986, %3975
  %3988 = fadd fast float %3981, %3964
  %3989 = fadd fast float %3984, %3965
  %3990 = fadd fast float %3987, %3966
  %3991 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  %3992 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3993 = call float @dx.op.unary.f32(i32 7, float %3990)  ; Saturate(value)
  br label %3994

; <label>:3994                                    ; preds = %3968, %3888
  %3995 = phi float [ %3991, %3968 ], [ %3964, %3888 ]
  %3996 = phi float [ %3992, %3968 ], [ %3965, %3888 ]
  %3997 = phi float [ %3993, %3968 ], [ %3966, %3888 ]
  %3998 = call float @dx.op.binary.f32(i32 35, float %3996, float %3997)  ; FMax(a,b)
  %3999 = call float @dx.op.binary.f32(i32 35, float %3995, float %3998)  ; FMax(a,b)
  %4000 = fsub fast float 1.000000e+00, %3999
  %4001 = fmul fast float %4000, %3947
  %4002 = fmul fast float %4000, %3948
  %4003 = fmul fast float %4000, %3949
  %4004 = call float @dx.op.dot3.f32(i32 55, float %2676, float %2677, float %2678, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4005 = fcmp fast ogt float %4004, 0x3E7FF19E20000000
  %4006 = fdiv fast float 1.000000e+00, %4004
  %4007 = select i1 %4005, float %4006, float 0.000000e+00
  %4008 = fmul fast float %4007, %2676
  %4009 = fmul fast float %4007, %2677
  %4010 = fmul fast float %4007, %2678
  %4011 = fadd fast float %4008, -1.000000e+00
  %4012 = fadd fast float %4009, -1.000000e+00
  %4013 = fadd fast float %4010, -1.000000e+00
  %4014 = fmul fast float %4011, 5.000000e-01
  %4015 = fmul fast float %4012, 5.000000e-01
  %4016 = fmul fast float %4013, 5.000000e-01
  %4017 = fadd fast float %4014, 1.000000e+00
  %4018 = fadd fast float %4015, 1.000000e+00
  %4019 = fadd fast float %4016, 1.000000e+00
  %4020 = fmul fast float %3995, %3951
  %4021 = fmul fast float %3996, %3952
  %4022 = fmul fast float %3997, %3953
  %4023 = fsub fast float 1.000000e+00, %2689
  %4024 = bitcast float %4023 to i32
  %4025 = sitofp i32 %4024 to float
  %4026 = fmul fast float %4025, 5.000000e+00
  %4027 = fadd fast float %4026, 0xC1EFBF8940000000
  %4028 = fptosi float %4027 to i32
  %4029 = bitcast i32 %4028 to float
  %4030 = fmul fast float %4029, %2052
  %4031 = fmul fast float %3947, %4030
  %4032 = fmul fast float %4031, %4000
  %4033 = fmul fast float %4032, %4017
  %4034 = fmul fast float %3948, %4030
  %4035 = fmul fast float %4034, %4000
  %4036 = fmul fast float %4035, %4018
  %4037 = fmul fast float %3949, %4030
  %4038 = fmul fast float %4037, %4000
  %4039 = fmul fast float %4038, %4019
  %4040 = fmul fast float %4001, %2073
  %4041 = fmul fast float %4002, %2073
  %4042 = fmul fast float %4003, %2073
  %4043 = fadd fast float %4020, %2054
  %4044 = fadd fast float %4043, %4033
  %4045 = fmul fast float %4044, %2073
  %4046 = fadd fast float %4021, %2055
  %4047 = fadd fast float %4046, %4036
  %4048 = fmul fast float %4047, %2073
  %4049 = fadd fast float %4022, %2056
  %4050 = fadd fast float %4049, %4039
  %4051 = fmul fast float %4050, %2073
  %4052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4053 = extractvalue %dx.types.CBufRet.f32 %4052, 3
  %4054 = fcmp fast oeq float %4053, 0.000000e+00
  br i1 %4054, label %4282, label %4055

; <label>:4055                                    ; preds = %3994
  %4056 = extractvalue %dx.types.CBufRet.f32 %4052, 0
  %4057 = extractvalue %dx.types.CBufRet.f32 %4052, 1
  %4058 = extractvalue %dx.types.CBufRet.f32 %4052, 2
  %4059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4060 = extractvalue %dx.types.CBufRet.f32 %4059, 0
  %4061 = extractvalue %dx.types.CBufRet.f32 %4059, 1
  %4062 = extractvalue %dx.types.CBufRet.f32 %4059, 2
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 0
  %4065 = extractvalue %dx.types.CBufRet.f32 %4063, 1
  %4066 = call float @dx.op.dot3.f32(i32 55, float %4060, float %4061, float %4062, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4067 = select i1 %187, float %4064, float %4060
  %4068 = select i1 %187, float %4066, float %4061
  %4069 = select i1 %187, float %4065, float %4062
  %4070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4071 = extractvalue %dx.types.CBufRet.f32 %4070, 1
  %4072 = fcmp fast une float %4071, 0.000000e+00
  br i1 %4072, label %4073, label %4090

; <label>:4073                                    ; preds = %4055
  %4074 = fptoui float %69 to i32
  %4075 = fptoui float %70 to i32
  %4076 = lshr i32 %4074, 4
  %4077 = lshr i32 %4075, 4
  %4078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4078, 0
  %4080 = fptoui float %4079 to i32
  %4081 = add i32 %4080, 15
  %4082 = lshr i32 %4081, 4
  %4083 = mul i32 %4082, %4077
  %4084 = add i32 %4083, %4076
  %4085 = shl i32 %4084, 3
  %4086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4085, i32 undef)  ; BufferLoad(srv,index,wot)
  %4087 = extractvalue %dx.types.ResRet.i32 %4086, 0
  %4088 = and i32 %4087, -268435456
  %4089 = icmp eq i32 %4088, -1342177280
  br i1 %4089, label %4100, label %4090

; <label>:4090                                    ; preds = %4073, %4055
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 2
  %4093 = extractvalue %dx.types.CBufRet.f32 %4091, 3
  %4094 = fmul fast float %4092, %69
  %4095 = fmul fast float %4093, %70
  %4096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %4094, float %4095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4097 = extractvalue %dx.types.ResRet.f32 %4096, 0
  %4098 = extractvalue %dx.types.ResRet.f32 %4096, 1
  %4099 = extractvalue %dx.types.ResRet.f32 %4096, 2
  br label %4100

; <label>:4100                                    ; preds = %4090, %4073
  %4101 = phi float [ %4097, %4090 ], [ 0.000000e+00, %4073 ]
  %4102 = phi float [ %4098, %4090 ], [ 0.000000e+00, %4073 ]
  %4103 = phi float [ %4099, %4090 ], [ 0.000000e+00, %4073 ]
  %4104 = call float @dx.op.binary.f32(i32 36, float %4102, float %4103)  ; FMin(a,b)
  %4105 = call float @dx.op.binary.f32(i32 36, float %4101, float %4104)  ; FMin(a,b)
  %4106 = fcmp fast ogt float %4105, 0.000000e+00
  br i1 %4106, label %4107, label %4282, !dx.controlflow.hints !85

; <label>:4107                                    ; preds = %4100
  %4108 = fmul fast float %4101, %4067
  %4109 = fmul fast float %4102, %4068
  %4110 = fmul fast float %4103, %4069
  %4111 = fsub fast float %4056, %2675
  %4112 = fsub fast float %4057, %2674
  %4113 = fsub fast float %4058, %2673
  %4114 = call float @dx.op.dot3.f32(i32 55, float %4111, float %4112, float %4113, float %4111, float %4112, float %4113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4115 = call float @dx.op.unary.f32(i32 25, float %4114)  ; Rsqrt(value)
  %4116 = fmul fast float %4115, %4111
  %4117 = fmul fast float %4115, %4112
  %4118 = fmul fast float %4115, %4113
  %4119 = call float @dx.op.dot3.f32(i32 55, float %4056, float %4057, float %4058, float %2682, float %2683, float %2684)  ; Dot3(ax,ay,az,bx,by,bz)
  %4120 = call float @dx.op.dot3.f32(i32 55, float %2672, float %2671, float %2670, float %4116, float %4117, float %4118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4121 = call float @dx.op.unary.f32(i32 7, float %4119)  ; Saturate(value)
  %4122 = fmul fast float %4121, %4121
  %4123 = fmul fast float %4122, %2702
  %4124 = call float @dx.op.unary.f32(i32 7, float %4123)  ; Saturate(value)
  %4125 = fmul fast float %4124, %4121
  %4126 = call float @dx.op.dot3.f32(i32 55, float %2682, float %2683, float %2684, float %4116, float %4117, float %4118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4127 = fmul fast float %4126, %4126
  %4128 = call float @dx.op.unary.f32(i32 6, float %4119)  ; FAbs(value)
  %4129 = fsub fast float 1.000000e+00, %2685
  %4130 = call float @dx.op.binary.f32(i32 35, float %4129, float 0x3F847AE140000000)  ; FMax(a,b)
  %4131 = fmul fast float %4130, %4130
  %4132 = fmul fast float %4131, %4131
  %4133 = fsub fast float 1.000000e+00, %4132
  %4134 = fmul fast float %2689, %2689
  %4135 = fmul fast float %4134, %4133
  %4136 = fadd fast float %4135, %4132
  %4137 = bitcast float %4136 to i32
  %4138 = ashr i32 %4137, 1
  %4139 = add nsw i32 %4138, 532487669
  %4140 = bitcast i32 %4139 to float
  %4141 = fadd fast float %4140, %2689
  %4142 = fmul fast float %4132, %4127
  %4143 = fsub fast float 1.000000e+00, %4127
  %4144 = fadd fast float %4143, %4142
  %4145 = fmul fast float %4128, %4128
  %4146 = fmul fast float %4145, %4133
  %4147 = fadd fast float %4146, %4132
  %4148 = bitcast float %4147 to i32
  %4149 = ashr i32 %4148, 1
  %4150 = add nsw i32 %4149, 532487669
  %4151 = bitcast i32 %4150 to float
  %4152 = fadd fast float %4151, %4128
  %4153 = fmul fast float %4144, %4144
  %4154 = fmul fast float %4153, %4141
  %4155 = fmul fast float %4154, %4152
  %4156 = fdiv fast float 0x3FF0A00000000000, %4155
  %4157 = fmul fast float %4156, %4132
  %4158 = call float @dx.op.unary.f32(i32 6, float %4120)  ; FAbs(value)
  %4159 = fsub fast float 1.000000e+00, %4158
  %4160 = bitcast float %4159 to i32
  %4161 = sitofp i32 %4160 to float
  %4162 = fmul fast float %4161, 5.000000e+00
  %4163 = fadd fast float %4162, 0xC1EFBF8940000000
  %4164 = fptosi float %4163 to i32
  %4165 = bitcast i32 %4164 to float
  %4166 = fsub fast float 1.000000e+00, %2679
  %4167 = fsub fast float 1.000000e+00, %2680
  %4168 = fsub fast float 1.000000e+00, %2687
  %4169 = fmul fast float %4165, %4166
  %4170 = fmul fast float %4165, %4167
  %4171 = fmul fast float %4165, %4168
  %4172 = fadd fast float %4169, %2679
  %4173 = fadd fast float %4170, %2680
  %4174 = fadd fast float %4171, %2687
  br i1 %3967, label %4175, label %4198

; <label>:4175                                    ; preds = %4107
  %4176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2053, float %4158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4177 = extractvalue %dx.types.ResRet.f32 %4176, 0
  %4178 = extractvalue %dx.types.ResRet.f32 %4176, 1
  %4179 = extractvalue %dx.types.ResRet.f32 %4176, 2
  %4180 = fadd fast float %4177, -5.000000e-01
  %4181 = fadd fast float %4178, -5.000000e-01
  %4182 = fadd fast float %4179, -5.000000e-01
  %4183 = fmul fast float %2679, 4.000000e+00
  %4184 = fmul fast float %4183, %4166
  %4185 = fmul fast float %4184, %4180
  %4186 = fmul fast float %2680, 4.000000e+00
  %4187 = fmul fast float %4186, %4167
  %4188 = fmul fast float %4187, %4181
  %4189 = fmul fast float %2687, 4.000000e+00
  %4190 = fmul fast float %4189, %4168
  %4191 = fmul fast float %4190, %4182
  %4192 = fadd fast float %4185, %4172
  %4193 = fadd fast float %4188, %4173
  %4194 = fadd fast float %4191, %4174
  %4195 = call float @dx.op.unary.f32(i32 7, float %4192)  ; Saturate(value)
  %4196 = call float @dx.op.unary.f32(i32 7, float %4193)  ; Saturate(value)
  %4197 = call float @dx.op.unary.f32(i32 7, float %4194)  ; Saturate(value)
  br label %4198

; <label>:4198                                    ; preds = %4175, %4107
  %4199 = phi float [ %4195, %4175 ], [ %4172, %4107 ]
  %4200 = phi float [ %4196, %4175 ], [ %4173, %4107 ]
  %4201 = phi float [ %4197, %4175 ], [ %4174, %4107 ]
  %4202 = fmul fast float %4119, 9.843750e-01
  %4203 = fadd fast float %4202, 7.812500e-03
  %4204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4203, float %3957, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4205 = extractvalue %dx.types.ResRet.f32 %4204, 2
  %4206 = extractvalue %dx.types.ResRet.f32 %4204, 3
  %4207 = fmul fast float %4205, %2679
  %4208 = fmul fast float %4205, %2680
  %4209 = fmul fast float %4205, %2687
  %4210 = fadd fast float %4207, %4206
  %4211 = fadd fast float %4208, %4206
  %4212 = fadd fast float %4209, %4206
  br i1 %3967, label %4213, label %4236

; <label>:4213                                    ; preds = %4198
  %4214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2053, float %4119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = extractvalue %dx.types.ResRet.f32 %4214, 1
  %4217 = extractvalue %dx.types.ResRet.f32 %4214, 2
  %4218 = fadd fast float %4215, -5.000000e-01
  %4219 = fadd fast float %4216, -5.000000e-01
  %4220 = fadd fast float %4217, -5.000000e-01
  %4221 = fmul fast float %2679, 4.000000e+00
  %4222 = fmul fast float %4221, %4166
  %4223 = fmul fast float %4222, %4218
  %4224 = fmul fast float %2680, 4.000000e+00
  %4225 = fmul fast float %4224, %4167
  %4226 = fmul fast float %4225, %4219
  %4227 = fmul fast float %2687, 4.000000e+00
  %4228 = fmul fast float %4227, %4168
  %4229 = fmul fast float %4228, %4220
  %4230 = fadd fast float %4223, %4210
  %4231 = fadd fast float %4226, %4211
  %4232 = fadd fast float %4229, %4212
  %4233 = call float @dx.op.unary.f32(i32 7, float %4230)  ; Saturate(value)
  %4234 = call float @dx.op.unary.f32(i32 7, float %4231)  ; Saturate(value)
  %4235 = call float @dx.op.unary.f32(i32 7, float %4232)  ; Saturate(value)
  br label %4236

; <label>:4236                                    ; preds = %4213, %4198
  %4237 = phi float [ %4233, %4213 ], [ %4210, %4198 ]
  %4238 = phi float [ %4234, %4213 ], [ %4211, %4198 ]
  %4239 = phi float [ %4235, %4213 ], [ %4212, %4198 ]
  %4240 = call float @dx.op.binary.f32(i32 35, float %4238, float %4239)  ; FMax(a,b)
  %4241 = call float @dx.op.binary.f32(i32 35, float %4237, float %4240)  ; FMax(a,b)
  %4242 = fsub fast float 1.000000e+00, %4241
  %4243 = fmul fast float %4199, %4157
  %4244 = fmul fast float %4200, %4157
  %4245 = fmul fast float %4201, %4157
  %4246 = fsub fast float 1.000000e+00, %4120
  %4247 = bitcast float %4246 to i32
  %4248 = sitofp i32 %4247 to float
  %4249 = fmul fast float %4248, 5.000000e+00
  %4250 = fadd fast float %4249, 0xC1EFBF8940000000
  %4251 = fptosi float %4250 to i32
  %4252 = bitcast i32 %4251 to float
  %4253 = fmul fast float %4252, %2052
  %4254 = fmul fast float %4242, %4253
  %4255 = fmul fast float %4254, %4017
  %4256 = fmul fast float %4254, %4018
  %4257 = fmul fast float %4254, %4019
  %4258 = fadd fast float %4255, %4243
  %4259 = fadd fast float %4256, %4244
  %4260 = fadd fast float %4257, %4245
  %4261 = fmul fast float %4125, %4108
  %4262 = fmul fast float %4261, %4242
  %4263 = fmul fast float %4125, %4109
  %4264 = fmul fast float %4263, %4242
  %4265 = fmul fast float %4125, %4110
  %4266 = fmul fast float %4265, %4242
  %4267 = fmul fast float %4261, %4258
  %4268 = fmul fast float %4263, %4259
  %4269 = fmul fast float %4265, %4260
  %4270 = fadd fast float %4262, %4001
  %4271 = fmul fast float %4270, %2073
  %4272 = fadd fast float %4264, %4002
  %4273 = fmul fast float %4272, %2073
  %4274 = fadd fast float %4266, %4003
  %4275 = fmul fast float %4274, %2073
  %4276 = fadd fast float %4267, %4044
  %4277 = fmul fast float %4276, %2073
  %4278 = fadd fast float %4268, %4047
  %4279 = fmul fast float %4278, %2073
  %4280 = fadd fast float %4269, %4050
  %4281 = fmul fast float %4280, %2073
  br label %4282

; <label>:4282                                    ; preds = %4236, %4100, %3994
  %4283 = phi float [ %4045, %3994 ], [ %4045, %4100 ], [ %4277, %4236 ]
  %4284 = phi float [ %4048, %3994 ], [ %4048, %4100 ], [ %4279, %4236 ]
  %4285 = phi float [ %4051, %3994 ], [ %4051, %4100 ], [ %4281, %4236 ]
  %4286 = phi float [ %4040, %3994 ], [ %4040, %4100 ], [ %4271, %4236 ]
  %4287 = phi float [ %4041, %3994 ], [ %4041, %4100 ], [ %4273, %4236 ]
  %4288 = phi float [ %4042, %3994 ], [ %4042, %4100 ], [ %4275, %4236 ]
  %4289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.i32 %4289, 0
  %4291 = icmp eq i32 %4290, 0
  br i1 %4291, label %4726, label %4292

; <label>:4292                                    ; preds = %4282
  %4293 = fptoui float %69 to i32
  %4294 = fptoui float %70 to i32
  %4295 = lshr i32 %4293, 4
  %4296 = lshr i32 %4294, 4
  %4297 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.i32 %4297, 0
  %4299 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4296, i32 %4298, i32 %4295)  ; UMad(a,b,c)
  %4300 = add nsw i32 %4290, -1
  %4301 = call i32 @dx.op.binary.i32(i32 37, i32 %4300, i32 0)  ; IMax(a,b)
  %4302 = call float @dx.op.binary.f32(i32 35, float %64, float 0.000000e+00)  ; FMax(a,b)
  %4303 = fptoui float %4302 to i32
  %4304 = lshr i32 %4303, 5
  %4305 = call i32 @dx.op.binary.i32(i32 40, i32 %4304, i32 8191)  ; UMin(a,b)
  %4306 = shl i32 %4305, 2
  %4307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4306, i32 undef)  ; BufferLoad(srv,index,wot)
  %4308 = extractvalue %dx.types.ResRet.i32 %4307, 0
  %4309 = lshr i32 %4308, 16
  %4310 = and i32 %4308, 65535
  %4311 = lshr i32 %4308, 21
  %4312 = lshr i32 %4310, 5
  %4313 = call i32 @dx.op.binary.i32(i32 40, i32 %4312, i32 %4301)  ; UMin(a,b)
  %4314 = icmp ugt i32 %4311, %4313
  br i1 %4314, label %4726, label %4315

; <label>:4315                                    ; preds = %4292
  br label %4316

; <label>:4316                                    ; preds = %4716, %4315
  %4317 = phi i32 [ %4723, %4716 ], [ %4311, %4315 ]
  %4318 = phi float [ %4717, %4716 ], [ %4283, %4315 ]
  %4319 = phi float [ %4718, %4716 ], [ %4284, %4315 ]
  %4320 = phi float [ %4719, %4716 ], [ %4285, %4315 ]
  %4321 = phi float [ %4720, %4716 ], [ %4286, %4315 ]
  %4322 = phi float [ %4721, %4716 ], [ %4287, %4315 ]
  %4323 = phi float [ %4722, %4716 ], [ %4288, %4315 ]
  %4324 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.i32 %4324, 0
  %4326 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4299, i32 %4325, i32 %4317)  ; UMad(a,b,c)
  %4327 = shl i32 %4326, 2
  %4328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4327, i32 undef)  ; BufferLoad(srv,index,wot)
  %4329 = extractvalue %dx.types.ResRet.i32 %4328, 0
  %4330 = shl i32 %4317, 5
  %4331 = sub nsw i32 %4309, %4330
  %4332 = call i32 @dx.op.binary.i32(i32 37, i32 %4331, i32 0)  ; IMax(a,b)
  %4333 = call i32 @dx.op.binary.i32(i32 38, i32 %4332, i32 31)  ; IMin(a,b)
  %4334 = sub nsw i32 1, %4309
  %4335 = add nsw i32 %4334, %4310
  %4336 = call i32 @dx.op.binary.i32(i32 37, i32 %4335, i32 0)  ; IMax(a,b)
  %4337 = call i32 @dx.op.binary.i32(i32 38, i32 %4336, i32 32)  ; IMin(a,b)
  %4338 = and i32 %4337, 31
  %4339 = shl i32 -1, %4338
  %4340 = xor i32 %4339, -1
  %4341 = and i32 %4333, 31
  %4342 = shl i32 %4340, %4341
  %4343 = icmp eq i32 %4337, 32
  %4344 = select i1 %4343, i32 -1, i32 %4342
  %4345 = and i32 %4344, %4329
  %4346 = icmp eq i32 %4345, 0
  br i1 %4346, label %4716, label %4347

; <label>:4347                                    ; preds = %4316
  br label %4348

; <label>:4348                                    ; preds = %4428, %4347
  %4349 = phi i32 [ %4360, %4428 ], [ %4345, %4347 ]
  %4350 = phi float [ %4429, %4428 ], [ %4318, %4347 ]
  %4351 = phi float [ %4430, %4428 ], [ %4319, %4347 ]
  %4352 = phi float [ %4431, %4428 ], [ %4320, %4347 ]
  %4353 = phi float [ %4432, %4428 ], [ %4321, %4347 ]
  %4354 = phi float [ %4433, %4428 ], [ %4322, %4347 ]
  %4355 = phi float [ %4434, %4428 ], [ %4323, %4347 ]
  %4356 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4349)  ; FirstbitLo(value)
  %4357 = add i32 %4356, %4330
  %4358 = and i32 %4356, 31
  %4359 = shl i32 1, %4358
  %4360 = xor i32 %4359, %4349
  %4361 = mul i32 %4357, 112
  %4362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4361, i32 undef)  ; BufferLoad(srv,index,wot)
  %4363 = extractvalue %dx.types.ResRet.f32 %4362, 0
  %4364 = extractvalue %dx.types.ResRet.f32 %4362, 1
  %4365 = extractvalue %dx.types.ResRet.f32 %4362, 2
  %4366 = or i32 %4361, 12
  %4367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4368 = extractvalue %dx.types.ResRet.f32 %4367, 0
  %4369 = add i32 %4361, 44
  %4370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4369, i32 undef)  ; BufferLoad(srv,index,wot)
  %4371 = extractvalue %dx.types.ResRet.f32 %4370, 0
  %4372 = add i32 %4361, 48
  %4373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4372, i32 undef)  ; BufferLoad(srv,index,wot)
  %4374 = extractvalue %dx.types.ResRet.f32 %4373, 0
  %4375 = extractvalue %dx.types.ResRet.f32 %4373, 1
  %4376 = extractvalue %dx.types.ResRet.f32 %4373, 2
  %4377 = add i32 %4361, 80
  %4378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4377, i32 undef)  ; BufferLoad(srv,index,wot)
  %4379 = extractvalue %dx.types.ResRet.f32 %4378, 1
  %4380 = extractvalue %dx.types.ResRet.f32 %4378, 2
  %4381 = call float @dx.op.dot3.f32(i32 55, float %4363, float %4364, float %4365, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4382 = select i1 %187, float %4379, float %4363
  %4383 = select i1 %187, float %4381, float %4364
  %4384 = select i1 %187, float %4380, float %4365
  %4385 = fsub fast float %4374, %116
  %4386 = fsub fast float %4375, %117
  %4387 = fsub fast float %4376, %118
  %4388 = call float @dx.op.dot3.f32(i32 55, float %4385, float %4386, float %4387, float %4385, float %4386, float %4387)  ; Dot3(ax,ay,az,bx,by,bz)
  %4389 = call float @dx.op.unary.f32(i32 24, float %4388)  ; Sqrt(value)
  %4390 = fdiv fast float 1.000000e+00, %4389
  %4391 = fmul fast float %4390, %4385
  %4392 = fmul fast float %4390, %4386
  %4393 = fmul fast float %4390, %4387
  %4394 = fadd fast float %4389, %4368
  %4395 = fdiv fast float 1.000000e+00, %4394
  %4396 = fmul float %4371, %4395
  %4397 = fmul float %4396, %4396
  %4398 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4399 = and i32 %4359, %4345
  %4400 = icmp eq i32 %4399, 0
  br i1 %4400, label %4423, label %4401, !dx.controlflow.hints !86

; <label>:4401                                    ; preds = %4348
  %4402 = lshr i32 %4293, 5
  %4403 = lshr i32 %4294, 5
  %4404 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %4402, i32 %4403, i32 %4357, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4405 = extractvalue %dx.types.ResRet.i32 %4404, 0
  %4406 = and i32 %4405, 3
  %4407 = icmp eq i32 %4406, 0
  %4408 = select i1 %4407, float 1.000000e+00, float 0.000000e+00
  %4409 = icmp eq i32 %4406, 3
  br i1 %4409, label %4410, label %4423

; <label>:4410                                    ; preds = %4401
  %4411 = lshr i32 %4405, 10
  %4412 = and i32 %4411, 8160
  %4413 = and i32 %4294, 31
  %4414 = or i32 %4412, %4413
  %4415 = lshr i32 %4405, 1
  %4416 = and i32 %4415, 16352
  %4417 = and i32 %4293, 31
  %4418 = or i32 %4416, %4417
  %4419 = lshr i32 %4405, 23
  %4420 = and i32 %4419, 255
  %4421 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %4418, i32 %4414, i32 %4420, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4422 = extractvalue %dx.types.ResRet.f32 %4421, 0
  br label %4423

; <label>:4423                                    ; preds = %4410, %4401, %4348
  %4424 = phi float [ %4422, %4410 ], [ %4408, %4401 ], [ 0.000000e+00, %4348 ]
  %4425 = call float @dx.op.binary.f32(i32 36, float %4424, float %4424)  ; FMin(a,b)
  %4426 = call float @dx.op.binary.f32(i32 36, float %4424, float %4425)  ; FMin(a,b)
  %4427 = fcmp fast ogt float %4426, 0.000000e+00
  br i1 %4427, label %4436, label %4428, !dx.controlflow.hints !87

; <label>:4428                                    ; preds = %4672, %4423
  %4429 = phi float [ %4350, %4423 ], [ %4712, %4672 ]
  %4430 = phi float [ %4351, %4423 ], [ %4713, %4672 ]
  %4431 = phi float [ %4352, %4423 ], [ %4714, %4672 ]
  %4432 = phi float [ %4353, %4423 ], [ %4706, %4672 ]
  %4433 = phi float [ %4354, %4423 ], [ %4707, %4672 ]
  %4434 = phi float [ %4355, %4423 ], [ %4708, %4672 ]
  %4435 = icmp eq i32 %4349, %4359
  br i1 %4435, label %4715, label %4348

; <label>:4436                                    ; preds = %4423
  %4437 = fmul fast float %4424, %4382
  %4438 = fmul fast float %4424, %4383
  %4439 = fmul fast float %4424, %4384
  %4440 = fsub fast float %4376, %2475
  %4441 = fcmp fast ogt float %4440, 0.000000e+00
  %4442 = fsub fast float %118, %2475
  %4443 = fcmp fast ogt float %4442, 0.000000e+00
  %4444 = xor i1 %4443, %4441
  %4445 = fsub fast float %2475, %4376
  %4446 = fmul fast float %4445, 2.000000e+00
  %4447 = fadd fast float %4446, %4376
  %4448 = select i1 %4444, float %4376, float %4447
  %4449 = fsub fast float %4448, %118
  %4450 = call float @dx.op.dot3.f32(i32 55, float %4385, float %4386, float %4449, float %4385, float %4386, float %4449)  ; Dot3(ax,ay,az,bx,by,bz)
  %4451 = call float @dx.op.unary.f32(i32 25, float %4450)  ; Rsqrt(value)
  %4452 = fmul fast float %4451, %4385
  %4453 = fmul fast float %4451, %4386
  %4454 = fmul fast float %4451, %4449
  %4455 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2483)  ; Dot3(ax,ay,az,bx,by,bz)
  %4456 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4452, float %4453, float %4454)  ; Dot3(ax,ay,az,bx,by,bz)
  %4457 = fdiv fast float 1.000000e+00, %4456
  %4458 = fmul fast float %4457, %4455
  %4459 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4442, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4460 = fcmp fast ogt float %4459, 0.000000e+00
  %4461 = fcmp fast olt float %4459, 0.000000e+00
  %4462 = zext i1 %4460 to i32
  %4463 = zext i1 %4461 to i32
  %4464 = sub nsw i32 %4462, %4463
  %4465 = sitofp i32 %4464 to float
  %4466 = fsub fast float %4448, %2475
  %4467 = call float @dx.op.dot3.f32(i32 55, float %4385, float %4386, float %4466, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4468 = fcmp fast ogt float %4467, 0.000000e+00
  %4469 = fcmp fast olt float %4467, 0.000000e+00
  %4470 = zext i1 %4468 to i32
  %4471 = zext i1 %4469 to i32
  %4472 = sub nsw i32 %4470, %4471
  %4473 = sitofp i32 %4472 to float
  %4474 = fcmp fast une float %4465, %4473
  br i1 %4474, label %4475, label %4485

; <label>:4475                                    ; preds = %4436
  %4476 = fmul fast float %4458, %4454
  %4477 = fmul fast float %4458, %4453
  %4478 = fmul fast float %4458, %4452
  %4479 = fmul fast float %4478, %4478
  %4480 = fmul fast float %4477, %4477
  %4481 = fadd fast float %4479, %4480
  %4482 = fmul fast float %4476, %4476
  %4483 = fadd fast float %4481, %4482
  %4484 = call float @dx.op.unary.f32(i32 24, float %4483)  ; Sqrt(value)
  br label %4497

; <label>:4485                                    ; preds = %4436
  %4486 = icmp slt i32 %4464, 0
  br i1 %4486, label %4487, label %4497

; <label>:4487                                    ; preds = %4485
  %4488 = fsub fast float %116, %4374
  %4489 = fsub fast float %117, %4375
  %4490 = fsub fast float %118, %4448
  %4491 = fmul fast float %4488, %4488
  %4492 = fmul fast float %4489, %4489
  %4493 = fadd fast float %4491, %4492
  %4494 = fmul fast float %4490, %4490
  %4495 = fadd fast float %4493, %4494
  %4496 = call float @dx.op.unary.f32(i32 24, float %4495)  ; Sqrt(value)
  br label %4497

; <label>:4497                                    ; preds = %4487, %4485, %4475
  %4498 = phi float [ %4484, %4475 ], [ %4496, %4487 ], [ 0.000000e+00, %4485 ]
  %4499 = and i1 %4443, %4441
  %4500 = fsub fast float -0.000000e+00, %4498
  %4501 = select i1 %4499, float -0.000000e+00, float %4500
  %4502 = fmul fast float %2476, 0x3FF7154760000000
  %4503 = fmul fast float %4502, %4501
  %4504 = fmul fast float %2477, 0x3FF7154760000000
  %4505 = fmul fast float %4504, %4501
  %4506 = fmul fast float %2478, 0x3FF7154760000000
  %4507 = fmul fast float %4506, %4501
  %4508 = call float @dx.op.unary.f32(i32 21, float %4503)  ; Exp(value)
  %4509 = call float @dx.op.unary.f32(i32 21, float %4505)  ; Exp(value)
  %4510 = call float @dx.op.unary.f32(i32 21, float %4507)  ; Exp(value)
  %4511 = call float @dx.op.unary.f32(i32 7, float %4508)  ; Saturate(value)
  %4512 = call float @dx.op.unary.f32(i32 7, float %4509)  ; Saturate(value)
  %4513 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4514 = fmul fast float %4437, %4511
  %4515 = fmul fast float %4438, %4512
  %4516 = fmul fast float %4439, %4513
  %4517 = fsub fast float %4391, %2675
  %4518 = fsub fast float %4392, %2674
  %4519 = fsub fast float %4393, %2673
  %4520 = call float @dx.op.dot3.f32(i32 55, float %4517, float %4518, float %4519, float %4517, float %4518, float %4519)  ; Dot3(ax,ay,az,bx,by,bz)
  %4521 = call float @dx.op.unary.f32(i32 25, float %4520)  ; Rsqrt(value)
  %4522 = fmul fast float %4521, %4517
  %4523 = fmul fast float %4521, %4518
  %4524 = fmul fast float %4521, %4519
  %4525 = call float @dx.op.dot3.f32(i32 55, float %4391, float %4392, float %4393, float %2682, float %2683, float %2684)  ; Dot3(ax,ay,az,bx,by,bz)
  %4526 = call float @dx.op.dot3.f32(i32 55, float %2672, float %2671, float %2670, float %4522, float %4523, float %4524)  ; Dot3(ax,ay,az,bx,by,bz)
  %4527 = call float @dx.op.unary.f32(i32 7, float %4525)  ; Saturate(value)
  %4528 = fmul fast float %4527, %4398
  %4529 = fmul fast float %4527, %4527
  %4530 = fmul fast float %4529, %2702
  %4531 = call float @dx.op.unary.f32(i32 7, float %4530)  ; Saturate(value)
  %4532 = fmul fast float %4528, %4531
  %4533 = bitcast float %4388 to i32
  %4534 = ashr i32 %4533, 1
  %4535 = sub nsw i32 1597463007, %4534
  %4536 = bitcast i32 %4535 to float
  %4537 = fmul fast float %4536, %4385
  %4538 = fmul fast float %4536, %4386
  %4539 = fmul fast float %4536, %4387
  %4540 = fsub fast float %4537, %2675
  %4541 = fsub fast float %4538, %2674
  %4542 = fsub fast float %4539, %2673
  %4543 = call float @dx.op.dot3.f32(i32 55, float %4540, float %4541, float %4542, float %4540, float %4541, float %4542)  ; Dot3(ax,ay,az,bx,by,bz)
  %4544 = call float @dx.op.unary.f32(i32 25, float %4543)  ; Rsqrt(value)
  %4545 = fmul fast float %4540, %4544
  %4546 = fmul fast float %4541, %4544
  %4547 = fmul fast float %4542, %4544
  %4548 = call float @dx.op.dot3.f32(i32 55, float %2682, float %2683, float %2684, float %4545, float %4546, float %4547)  ; Dot3(ax,ay,az,bx,by,bz)
  %4549 = fmul fast float %4548, %4548
  %4550 = call float @dx.op.unary.f32(i32 6, float %4525)  ; FAbs(value)
  %4551 = fsub fast float 1.000000e+00, %2685
  %4552 = call float @dx.op.binary.f32(i32 35, float %4551, float 0x3F847AE140000000)  ; FMax(a,b)
  %4553 = fmul fast float %4552, %4552
  %4554 = fmul fast float %4553, %4553
  %4555 = fsub fast float 1.000000e+00, %4554
  %4556 = fmul fast float %2689, %2689
  %4557 = fmul fast float %4556, %4555
  %4558 = fadd fast float %4557, %4554
  %4559 = bitcast float %4558 to i32
  %4560 = ashr i32 %4559, 1
  %4561 = add nsw i32 %4560, 532487669
  %4562 = bitcast i32 %4561 to float
  %4563 = fadd fast float %4562, %2689
  %4564 = fmul fast float %4554, %4549
  %4565 = fsub fast float 1.000000e+00, %4549
  %4566 = fadd fast float %4565, %4564
  %4567 = fmul fast float %4550, %4550
  %4568 = fmul fast float %4567, %4555
  %4569 = fadd fast float %4568, %4554
  %4570 = bitcast float %4569 to i32
  %4571 = ashr i32 %4570, 1
  %4572 = add nsw i32 %4571, 532487669
  %4573 = bitcast i32 %4572 to float
  %4574 = fadd fast float %4573, %4550
  %4575 = fmul fast float %4566, %4566
  %4576 = fmul fast float %4575, %4563
  %4577 = fmul fast float %4576, %4574
  %4578 = fdiv fast float 1.000000e+00, %4577
  %4579 = bitcast float %4554 to i32
  %4580 = sitofp i32 %4579 to float
  %4581 = fmul fast float %4580, 0x3FE7F73180000000
  %4582 = fadd fast float %4581, 0x41AFE27C40000000
  %4583 = fptosi float %4582 to i32
  %4584 = bitcast i32 %4583 to float
  %4585 = fmul fast float %4371, 0x3FD80E9D60000000
  %4586 = fmul fast float %4585, %4536
  %4587 = fadd fast float %4584, %4586
  %4588 = bitcast float %4587 to i32
  %4589 = sub nsw i32 2129859010, %4588
  %4590 = bitcast i32 %4589 to float
  %4591 = fmul fast float %4554, %4578
  %4592 = fmul fast float %4591, %4584
  %4593 = fmul fast float %4592, %4590
  %4594 = call float @dx.op.unary.f32(i32 6, float %4526)  ; FAbs(value)
  %4595 = fsub fast float 1.000000e+00, %4594
  %4596 = bitcast float %4595 to i32
  %4597 = sitofp i32 %4596 to float
  %4598 = fmul fast float %4597, 5.000000e+00
  %4599 = fadd fast float %4598, 0xC1EFBF8940000000
  %4600 = fptosi float %4599 to i32
  %4601 = bitcast i32 %4600 to float
  %4602 = fsub fast float 1.000000e+00, %2679
  %4603 = fsub fast float 1.000000e+00, %2680
  %4604 = fsub fast float 1.000000e+00, %2687
  %4605 = fmul fast float %4601, %4602
  %4606 = fmul fast float %4601, %4603
  %4607 = fmul fast float %4601, %4604
  %4608 = fadd fast float %4605, %2679
  %4609 = fadd fast float %4606, %2680
  %4610 = fadd fast float %4607, %2687
  br i1 %3967, label %4611, label %4634

; <label>:4611                                    ; preds = %4497
  %4612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2053, float %4594, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4613 = extractvalue %dx.types.ResRet.f32 %4612, 0
  %4614 = extractvalue %dx.types.ResRet.f32 %4612, 1
  %4615 = extractvalue %dx.types.ResRet.f32 %4612, 2
  %4616 = fadd fast float %4613, -5.000000e-01
  %4617 = fadd fast float %4614, -5.000000e-01
  %4618 = fadd fast float %4615, -5.000000e-01
  %4619 = fmul fast float %2679, 4.000000e+00
  %4620 = fmul fast float %4619, %4602
  %4621 = fmul fast float %4620, %4616
  %4622 = fmul fast float %2680, 4.000000e+00
  %4623 = fmul fast float %4622, %4603
  %4624 = fmul fast float %4623, %4617
  %4625 = fmul fast float %2687, 4.000000e+00
  %4626 = fmul fast float %4625, %4604
  %4627 = fmul fast float %4626, %4618
  %4628 = fadd fast float %4621, %4608
  %4629 = fadd fast float %4624, %4609
  %4630 = fadd fast float %4627, %4610
  %4631 = call float @dx.op.unary.f32(i32 7, float %4628)  ; Saturate(value)
  %4632 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4633 = call float @dx.op.unary.f32(i32 7, float %4630)  ; Saturate(value)
  br label %4634

; <label>:4634                                    ; preds = %4611, %4497
  %4635 = phi float [ %4631, %4611 ], [ %4608, %4497 ]
  %4636 = phi float [ %4632, %4611 ], [ %4609, %4497 ]
  %4637 = phi float [ %4633, %4611 ], [ %4610, %4497 ]
  %4638 = fmul fast float %4525, 9.843750e-01
  %4639 = fadd fast float %4638, 7.812500e-03
  %4640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4639, float %3957, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4641 = extractvalue %dx.types.ResRet.f32 %4640, 2
  %4642 = extractvalue %dx.types.ResRet.f32 %4640, 3
  %4643 = fmul fast float %4641, %2679
  %4644 = fmul fast float %4641, %2680
  %4645 = fmul fast float %4641, %2687
  %4646 = fadd fast float %4643, %4642
  %4647 = fadd fast float %4644, %4642
  %4648 = fadd fast float %4645, %4642
  br i1 %3967, label %4649, label %4672

; <label>:4649                                    ; preds = %4634
  %4650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2053, float %4525, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4651 = extractvalue %dx.types.ResRet.f32 %4650, 0
  %4652 = extractvalue %dx.types.ResRet.f32 %4650, 1
  %4653 = extractvalue %dx.types.ResRet.f32 %4650, 2
  %4654 = fadd fast float %4651, -5.000000e-01
  %4655 = fadd fast float %4652, -5.000000e-01
  %4656 = fadd fast float %4653, -5.000000e-01
  %4657 = fmul fast float %2679, 4.000000e+00
  %4658 = fmul fast float %4657, %4602
  %4659 = fmul fast float %4658, %4654
  %4660 = fmul fast float %2680, 4.000000e+00
  %4661 = fmul fast float %4660, %4603
  %4662 = fmul fast float %4661, %4655
  %4663 = fmul fast float %2687, 4.000000e+00
  %4664 = fmul fast float %4663, %4604
  %4665 = fmul fast float %4664, %4656
  %4666 = fadd fast float %4659, %4646
  %4667 = fadd fast float %4662, %4647
  %4668 = fadd fast float %4665, %4648
  %4669 = call float @dx.op.unary.f32(i32 7, float %4666)  ; Saturate(value)
  %4670 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4671 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  br label %4672

; <label>:4672                                    ; preds = %4649, %4634
  %4673 = phi float [ %4669, %4649 ], [ %4646, %4634 ]
  %4674 = phi float [ %4670, %4649 ], [ %4647, %4634 ]
  %4675 = phi float [ %4671, %4649 ], [ %4648, %4634 ]
  %4676 = call float @dx.op.binary.f32(i32 35, float %4674, float %4675)  ; FMax(a,b)
  %4677 = call float @dx.op.binary.f32(i32 35, float %4673, float %4676)  ; FMax(a,b)
  %4678 = fsub fast float 1.000000e+00, %4677
  %4679 = fmul fast float %4635, %4593
  %4680 = fmul fast float %4636, %4593
  %4681 = fmul fast float %4637, %4593
  %4682 = fsub fast float 1.000000e+00, %4526
  %4683 = bitcast float %4682 to i32
  %4684 = sitofp i32 %4683 to float
  %4685 = fmul fast float %4684, 5.000000e+00
  %4686 = fadd fast float %4685, 0xC1EFBF8940000000
  %4687 = fptosi float %4686 to i32
  %4688 = bitcast i32 %4687 to float
  %4689 = fmul fast float %4688, %2052
  %4690 = fmul fast float %4678, %4689
  %4691 = fmul fast float %4690, %4017
  %4692 = fmul fast float %4690, %4018
  %4693 = fmul fast float %4690, %4019
  %4694 = fadd fast float %4691, %4679
  %4695 = fadd fast float %4692, %4680
  %4696 = fadd fast float %4693, %4681
  %4697 = fmul fast float %4514, %2073
  %4698 = fmul fast float %4697, %4532
  %4699 = fmul fast float %4698, %4678
  %4700 = fmul fast float %4515, %2073
  %4701 = fmul fast float %4700, %4532
  %4702 = fmul fast float %4701, %4678
  %4703 = fmul fast float %4516, %2073
  %4704 = fmul fast float %4703, %4532
  %4705 = fmul fast float %4704, %4678
  %4706 = fadd fast float %4699, %4353
  %4707 = fadd fast float %4702, %4354
  %4708 = fadd fast float %4705, %4355
  %4709 = fmul fast float %4698, %4694
  %4710 = fmul fast float %4701, %4695
  %4711 = fmul fast float %4704, %4696
  %4712 = fadd fast float %4709, %4350
  %4713 = fadd fast float %4710, %4351
  %4714 = fadd fast float %4711, %4352
  br label %4428

; <label>:4715                                    ; preds = %4428
  br label %4716

; <label>:4716                                    ; preds = %4715, %4316
  %4717 = phi float [ %4318, %4316 ], [ %4429, %4715 ]
  %4718 = phi float [ %4319, %4316 ], [ %4430, %4715 ]
  %4719 = phi float [ %4320, %4316 ], [ %4431, %4715 ]
  %4720 = phi float [ %4321, %4316 ], [ %4432, %4715 ]
  %4721 = phi float [ %4322, %4316 ], [ %4433, %4715 ]
  %4722 = phi float [ %4323, %4316 ], [ %4434, %4715 ]
  %4723 = add i32 %4317, 1
  %4724 = icmp ugt i32 %4723, %4313
  br i1 %4724, label %4725, label %4316

; <label>:4725                                    ; preds = %4716
  br label %4726

; <label>:4726                                    ; preds = %4725, %4292, %4282
  %4727 = phi float [ %4283, %4282 ], [ %4283, %4292 ], [ %4717, %4725 ]
  %4728 = phi float [ %4284, %4282 ], [ %4284, %4292 ], [ %4718, %4725 ]
  %4729 = phi float [ %4285, %4282 ], [ %4285, %4292 ], [ %4719, %4725 ]
  %4730 = phi float [ %4286, %4282 ], [ %4286, %4292 ], [ %4720, %4725 ]
  %4731 = phi float [ %4287, %4282 ], [ %4287, %4292 ], [ %4721, %4725 ]
  %4732 = phi float [ %4288, %4282 ], [ %4288, %4292 ], [ %4722, %4725 ]
  %4733 = call float @dx.op.unary.f32(i32 24, float %2676)  ; Sqrt(value)
  %4734 = call float @dx.op.unary.f32(i32 24, float %2677)  ; Sqrt(value)
  %4735 = call float @dx.op.unary.f32(i32 24, float %2678)  ; Sqrt(value)
  %4736 = fmul fast float %4733, %4730
  %4737 = fmul fast float %4734, %4731
  %4738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4739 = extractvalue %dx.types.CBufRet.f32 %4738, 0
  br i1 %187, label %4740, label %4760

; <label>:4740                                    ; preds = %4726
  %4741 = fadd fast float %4732, %2050
  %4742 = fmul fast float %4741, %2051
  %4743 = fsub fast float 1.000000e+00, %2051
  %4744 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4746 = extractvalue %dx.types.CBufRet.f32 %4745, 3
  %4747 = fmul fast float %4746, %4744
  %4748 = fadd fast float %4747, %4742
  %4749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4750 = extractvalue %dx.types.CBufRet.f32 %4749, 0
  %4751 = fmul fast float %4750, %4023
  %4752 = fsub fast float %4748, %4751
  %4753 = fadd fast float %4737, %4736
  %4754 = fmul fast float %4739, %4753
  %4755 = extractvalue %dx.types.CBufRet.f32 %4745, 1
  %4756 = fsub fast float %4752, %4755
  %4757 = extractvalue %dx.types.CBufRet.f32 %4745, 2
  %4758 = fmul fast float %4756, %4757
  %4759 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  br label %4775

; <label>:4760                                    ; preds = %4726
  %4761 = fmul fast float %4735, %4732
  %4762 = fmul fast float %4739, %4736
  %4763 = fmul fast float %4739, %4737
  %4764 = fmul fast float %4761, %4739
  %4765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 212, i32 undef)  ; BufferLoad(srv,index,wot)
  %4766 = extractvalue %dx.types.ResRet.i32 %4765, 0
  %4767 = and i32 %4766, 32
  %4768 = icmp eq i32 %4767, 0
  br i1 %4768, label %4775, label %4769

; <label>:4769                                    ; preds = %4760
  %4770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4771 = extractvalue %dx.types.CBufRet.f32 %4770, 0
  %4772 = fmul fast float %4771, 0x3FE99999A0000000
  %4773 = fadd fast float %4771, %4762
  %4774 = fadd fast float %4772, %4764
  br label %4775

; <label>:4775                                    ; preds = %4769, %4760, %4740
  %4776 = phi float [ %4754, %4740 ], [ %4773, %4769 ], [ %4762, %4760 ]
  %4777 = phi float [ %4759, %4740 ], [ %4763, %4769 ], [ %4763, %4760 ]
  %4778 = phi float [ 1.000000e+00, %4740 ], [ %4774, %4769 ], [ %4764, %4760 ]
  %4779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4780 = extractvalue %dx.types.CBufRet.f32 %4779, 0
  %4781 = fmul fast float %4780, %4728
  %4782 = fmul fast float %4780, %4729
  %4783 = fadd fast float %4728, %4727
  %4784 = select i1 %187, float %4783, float %4727
  %4785 = fmul float %4784, %4780
  %4786 = select i1 %187, float 0.000000e+00, float %4781
  %4787 = select i1 %187, float 0.000000e+00, float %4782
  %4788 = fmul fast float %4776, %4733
  %4789 = fmul fast float %4777, %4734
  %4790 = fmul fast float %4778, %4735
  %4791 = fadd fast float %4785, %4788
  %4792 = fadd fast float %4786, %4789
  %4793 = fadd fast float %4787, %4790
  %4794 = select i1 %187, float %4777, float %4792
  %4795 = select i1 %187, float %4778, float %4793
  %4796 = call float @dx.op.binary.f32(i32 36, float %4791, float 3.225500e+04)  ; FMin(a,b)
  %4797 = call float @dx.op.binary.f32(i32 36, float %4794, float 3.225500e+04)  ; FMin(a,b)
  %4798 = call float @dx.op.binary.f32(i32 36, float %4795, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4796)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4797)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4798)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!57}
!dx.entryPoints = !{!58}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !48, !51}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!14 = !{i32 7, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !18}
!18 = !{i32 0, i32 5}
!19 = !{i32 11, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 23, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 24, i32 1, i32 7, i32 0, !7}
!22 = !{i32 14, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 25, i32 1, i32 7, i32 0, !7}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 66, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !18}
!27 = !{i32 19, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!43 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!44 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!45 = !{i32 37, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!47 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!48 = !{!49, !50}
!49 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!50 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!51 = !{!52, !53, !54, !55, !56}
!52 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!53 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!54 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!55 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!56 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!57 = !{[27 x i32] [i32 25, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !77}
!59 = !{!60, !75, null}
!60 = !{!61, !64, !66, !68, !69, !70, !72, !74}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 11}
!64 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 1, i8 0, !65}
!65 = !{i32 3, i32 15}
!66 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 2, i8 0, !67}
!67 = !{i32 3, i32 7}
!68 = !{i32 3, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 3, i8 0, !67}
!69 = !{i32 4, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 4, i8 0, !65}
!70 = !{i32 5, !"NORMAL_TRANSFORM", i8 9, i8 0, !71, i8 2, i32 1, i8 4, i32 5, i8 0, !65}
!71 = !{i32 1}
!72 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 6, i8 0, !73}
!73 = !{i32 3, i32 1}
!74 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!75 = !{!76}
!76 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !65}
!77 = !{i32 0, i64 24}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}

