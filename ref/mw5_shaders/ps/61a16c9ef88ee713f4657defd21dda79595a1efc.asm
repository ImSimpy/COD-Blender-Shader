;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; TEXCOORDS                0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                1   xyzw        2     NONE   float   xy  
; LMAPCOORDS               0   xyz         3     NONE   float   xyz 
; NORMAL                   0   xyz         4     NONE   float   xyz 
; TANGENT                  0   xyzw        5     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        6     NONE   float   xyzw
; NORMAL_TRANSFORM         2   xyzw        7     NONE   float   xyzw
; TRANSIENT_INDEX          0   x           8     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 782f21a4010f4bd72e79d2be17d9e915
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
; TEXCOORDS                1                 linear       
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; NORMAL_TRANSFORM         1                 linear       
; NORMAL_TRANSFORM         2                 linear       
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
; Number of inputs: 33, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32 }
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
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %72 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = fmul fast float %74, %68
  %76 = fmul fast float %74, %69
  %77 = fmul fast float %57, %54
  %78 = fmul fast float %58, %53
  %79 = fsub fast float %77, %78
  %80 = fmul fast float %58, %52
  %81 = fmul fast float %56, %54
  %82 = fsub fast float %80, %81
  %83 = fmul fast float %56, %53
  %84 = fmul fast float %57, %52
  %85 = fsub fast float %83, %84
  %86 = fmul fast float %79, %55
  %87 = fmul fast float %82, %55
  %88 = fmul fast float %85, %55
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 3
  %92 = fmul fast float %90, 2.000000e+00
  %93 = fmul fast float %92, %75
  %94 = fmul fast float %91, 2.000000e+00
  %95 = fmul fast float %94, %76
  %96 = fsub fast float 1.000000e+00, %93
  %97 = fsub fast float 1.000000e+00, %95
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %101 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %102 = fmul fast float %96, %99
  %103 = fmul fast float %96, %100
  %104 = fmul fast float %96, %101
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %109 = fmul fast float %97, %106
  %110 = fmul fast float %97, %107
  %111 = fmul fast float %97, %108
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 1
  %115 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %116 = fadd fast float %109, %113
  %117 = fadd fast float %116, %102
  %118 = fadd fast float %110, %114
  %119 = fadd fast float %118, %103
  %120 = fadd fast float %111, %115
  %121 = fadd fast float %120, %104
  %122 = fmul fast float %117, %70
  %123 = fmul fast float %119, %70
  %124 = fmul fast float %121, %70
  %125 = fadd fast float %61, 5.000000e-01
  %126 = fptoui float %125 to i32
  %127 = shl i32 %126, 3
  %128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %127, i32 undef)  ; BufferLoad(srv,index,wot)
  %129 = extractvalue %dx.types.ResRet.i32 %128, 0
  %130 = or i32 %127, 4
  %131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %130, i32 undef)  ; BufferLoad(srv,index,wot)
  %132 = extractvalue %dx.types.ResRet.i32 %131, 0
  %133 = and i32 %129, 8191
  %134 = lshr i32 %129, 13
  %135 = and i32 %134, 8191
  %136 = lshr i32 %129, 26
  %137 = and i32 %132, 65535
  %138 = lshr i32 %132, 16
  %139 = uitofp i32 %137 to float
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %142 = uitofp i32 %138 to float
  %143 = uitofp i32 %133 to float
  %144 = fmul fast float %141, %143
  %145 = uitofp i32 %135 to float
  %146 = fmul fast float %141, %145
  %147 = fmul fast float %141, %59
  %148 = fmul fast float %147, %139
  %149 = fmul fast float %141, %60
  %150 = fmul fast float %149, %142
  %151 = fadd fast float %148, %144
  %152 = fadd fast float %146, %150
  %153 = uitofp i32 %136 to float
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 3
  %157 = fmul fast float %155, %75
  %158 = fmul fast float %156, %76
  %159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %160 = extractvalue %dx.types.ResRet.i32 %159, 0
  %161 = and i32 %160, 114688
  %162 = icmp ne i32 %161, 0
  %163 = select i1 %162, float %157, float 0.000000e+00
  %164 = select i1 %162, float %158, float 0.000000e+00
  %165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %163, float %164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %166 = extractvalue %dx.types.ResRet.f32 %165, 0
  %167 = fmul fast float %166, 2.550000e+02
  %168 = fptoui float %167 to i32
  %169 = select i1 %162, i32 %168, i32 0
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.i32 %171, 3
  %173 = and i32 %172, 3
  %174 = icmp ne i32 %173, 0
  %175 = and i32 %172, 4
  %176 = icmp ne i32 %175, 0
  %177 = and i1 %174, %176
  br i1 %177, label %178, label %189

; <label>:178                                     ; preds = %0
  %179 = extractvalue %dx.types.CBufRet.f32 %170, 3
  %180 = fmul fast float %179, %76
  %181 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %182 = fmul fast float %181, %75
  %183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %182, float %180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = fsub fast float 1.000000e+00, %184
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %188 = fcmp fast olt float %185, %187
  br label %192

; <label>:189                                     ; preds = %0
  %190 = icmp eq i32 %175, 0
  %191 = and i1 %174, %190
  br label %192

; <label>:192                                     ; preds = %189, %178
  %193 = phi i1 [ %188, %178 ], [ %191, %189 ]
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = shl i32 %195, 4
  %197 = and i32 %196, 32752
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = lshr i32 %195, 7
  %200 = and i32 %199, 32752
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = lshr i32 %195, 22
  %203 = shl nuw nsw i32 %202, 5
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = and i32 %206, 255
  %208 = uitofp i32 %207 to float
  %209 = fmul fast float %208, 0x3F70101020000000
  %210 = lshr i32 %206, 8
  %211 = and i32 %210, 255
  %212 = uitofp i32 %211 to float
  %213 = fmul fast float %212, 0x3F70101020000000
  %214 = lshr i32 %206, 16
  %215 = and i32 %214, 255
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F70101020000000
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 224, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = and i32 %234, 255
  %236 = uitofp i32 %235 to float
  %237 = fmul fast float %236, 0x3F70101020000000
  %238 = lshr i32 %234, 8
  %239 = and i32 %238, 255
  %240 = uitofp i32 %239 to float
  %241 = fmul fast float %240, 0x3F70101020000000
  %242 = lshr i32 %234, 16
  %243 = and i32 %242, 255
  %244 = uitofp i32 %243 to float
  %245 = fmul fast float %244, 0x3F70101020000000
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = and i32 %247, 65535
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %247, 16
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 240, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = and i32 %253, 65535
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %253, 16
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = fmul fast float %255, 0x3F50624DE0000000
  %259 = fmul fast float %257, 0x3F50624DE0000000
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = shl i32 %261, 4
  %263 = and i32 %262, 32752
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %261, 7
  %266 = and i32 %265, 32752
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %261, 22
  %269 = shl nuw nsw i32 %268, 5
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = and i32 %272, 255
  %274 = uitofp i32 %273 to float
  %275 = fmul fast float %274, 0x3F70101020000000
  %276 = lshr i32 %272, 8
  %277 = and i32 %276, 255
  %278 = uitofp i32 %277 to float
  %279 = fmul fast float %278, 0x3F70101020000000
  %280 = lshr i32 %272, 16
  %281 = and i32 %280, 255
  %282 = uitofp i32 %281 to float
  %283 = fmul fast float %282, 0x3F70101020000000
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 68, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 65535
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %285, 16
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 256, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 65535
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %291, 16
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = fmul fast float %293, 0x3F50624DE0000000
  %297 = fmul fast float %295, 0x3F50624DE0000000
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 284, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = lshr i32 %299, 20
  %301 = and i32 %300, 3
  %302 = add nuw nsw i32 %301, 1
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = or i32 %306, %304
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %752, label %309

; <label>:309                                     ; preds = %192
  %310 = lshr i32 %221, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = fmul fast float %311, 0x3F50624DE0000000
  %313 = and i32 %221, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = fmul fast float %314, 0x3F50624DE0000000
  %316 = lshr i32 %219, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = and i32 %219, 65535
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 220, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = lshr i32 %321, 16
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = fmul fast float %323, 0x3F50624DE0000000
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = lshr i32 %326, 16
  %328 = and i32 %327, 255
  %329 = lshr i32 %326, 24
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 228, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = and i32 %331, 65535
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %331, 16
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = lshr i32 %337, 22
  %339 = shl nuw nsw i32 %338, 5
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = shl i32 %337, 4
  %342 = and i32 %341, 32752
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %337, 7
  %345 = and i32 %344, 32752
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 3
  %349 = fmul fast float %348, 1.000000e+03
  %350 = fmul fast float %315, %349
  %351 = call float @dx.op.unary.f32(i32 22, float %350)  ; Frc(value)
  %352 = fadd fast float %351, %319
  %353 = fmul fast float %312, %349
  %354 = call float @dx.op.unary.f32(i32 22, float %353)  ; Frc(value)
  %355 = fadd fast float %354, %317
  %356 = fmul fast float %324, %349
  %357 = call float @dx.op.unary.f32(i32 22, float %356)  ; Frc(value)
  %358 = fmul fast float %357, 0x401921FB60000000
  %359 = fadd fast float %358, %340
  %360 = call float @dx.op.unary.f32(i32 13, float %359)  ; Sin(value)
  %361 = call float @dx.op.unary.f32(i32 12, float %359)  ; Cos(value)
  %362 = fsub fast float -0.000000e+00, %360
  %363 = fadd fast float %64, -5.000000e-01
  %364 = fadd fast float %65, -5.000000e-01
  %365 = fmul fast float %333, %363
  %366 = fmul fast float %335, %364
  %367 = fadd fast float %365, 5.000000e-01
  %368 = fadd fast float %366, 5.000000e-01
  %369 = fmul fast float %343, %367
  %370 = fmul fast float %346, %368
  %371 = fmul fast float %361, %369
  %372 = call float @dx.op.tertiary.f32(i32 46, float %362, float %370, float %371)  ; FMad(a,b,c)
  %373 = fmul fast float %360, %369
  %374 = call float @dx.op.tertiary.f32(i32 46, float %361, float %370, float %373)  ; FMad(a,b,c)
  %375 = fadd fast float %352, %372
  %376 = fadd fast float %355, %374
  %377 = icmp ugt i32 %328, 1
  %378 = icmp ugt i32 %326, 33554431
  %379 = or i1 %378, %377
  br i1 %379, label %380, label %404

; <label>:380                                     ; preds = %309
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 180, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = lshr i32 %382, 16
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = fmul fast float %348, %384
  %386 = call float @dx.op.unary.f32(i32 22, float %385)  ; Frc(value)
  %387 = mul nuw nsw i32 %328, %329
  %388 = uitofp i32 %387 to float
  %389 = fmul fast float %386, %388
  %390 = call float @dx.op.unary.f32(i32 27, float %389)  ; Round_ni(value)
  %391 = fptoui float %390 to i32
  %392 = urem i32 %391, %328
  %393 = udiv i32 %391, %329
  %394 = call float @dx.op.unary.f32(i32 22, float %375)  ; Frc(value)
  %395 = call float @dx.op.unary.f32(i32 22, float %376)  ; Frc(value)
  %396 = uitofp i32 %392 to float
  %397 = uitofp i32 %393 to float
  %398 = fadd fast float %394, %396
  %399 = fadd fast float %395, %397
  %400 = uitofp i32 %328 to float
  %401 = uitofp i32 %329 to float
  %402 = fdiv fast float %398, %400
  %403 = fdiv fast float %399, %401
  br label %404

; <label>:404                                     ; preds = %380, %309
  %405 = phi float [ %402, %380 ], [ %375, %309 ]
  %406 = phi float [ %403, %380 ], [ %376, %309 ]
  %407 = and i32 %304, 16
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %600, label %409

; <label>:409                                     ; preds = %404
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 296, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = add i32 %411, 0
  %413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %412, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %414 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %413, %dx.types.Handle %71, float %405, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = extractvalue %dx.types.ResRet.f32 %414, 1
  %417 = extractvalue %dx.types.ResRet.f32 %414, 2
  %418 = extractvalue %dx.types.ResRet.f32 %414, 3
  %419 = and i32 %326, 255
  %420 = uitofp i32 %419 to float
  %421 = lshr i32 %326, 8
  %422 = and i32 %421, 255
  %423 = uitofp i32 %422 to float
  %424 = fmul fast float %418, %420
  %425 = fadd fast float %424, %423
  %426 = fmul fast float %425, 0x3F70101000000000
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 512
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %438, label %431

; <label>:431                                     ; preds = %409
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 356, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = add i32 %433, 0
  %435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %434, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %436 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %435, %dx.types.Handle %72, float %405, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  br label %438

; <label>:438                                     ; preds = %431, %409
  %439 = phi float [ %437, %431 ], [ 1.000000e+00, %409 ]
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 33554432
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %547, label %444

; <label>:444                                     ; preds = %438
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 176, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 65535
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = lshr i32 %446, 16
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 180, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 65535
  %454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %453)  ; LegacyF16ToF32(value)
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = lshr i32 %456, 24
  %458 = uitofp i32 %457 to float
  %459 = fmul fast float %458, 0x3F70101020000000
  %460 = and i32 %456, 255
  %461 = uitofp i32 %460 to float
  %462 = fmul fast float %461, 0x3F70101020000000
  %463 = lshr i32 %456, 8
  %464 = and i32 %463, 255
  %465 = uitofp i32 %464 to float
  %466 = fmul fast float %465, 0x3F70101020000000
  %467 = lshr i32 %456, 16
  %468 = and i32 %467, 255
  %469 = uitofp i32 %468 to float
  %470 = fmul fast float %469, 0x3F70101020000000
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = lshr i32 %472, 24
  %474 = uitofp i32 %473 to float
  %475 = fmul fast float %474, 0x3F70101020000000
  %476 = and i32 %472, 255
  %477 = uitofp i32 %476 to float
  %478 = fmul fast float %477, 0x3F70101020000000
  %479 = lshr i32 %472, 8
  %480 = and i32 %479, 255
  %481 = uitofp i32 %480 to float
  %482 = fmul fast float %481, 0x3F70101020000000
  %483 = lshr i32 %472, 16
  %484 = and i32 %483, 255
  %485 = uitofp i32 %484 to float
  %486 = fmul fast float %485, 0x3F70101020000000
  %487 = bitcast float %415 to i32
  %488 = ashr i32 %487, 1
  %489 = sub nsw i32 1597463174, %488
  %490 = bitcast i32 %489 to float
  %491 = fmul fast float %415, 5.000000e-01
  %492 = fmul fast float %490, %490
  %493 = fmul fast float %492, %491
  %494 = fsub fast float 1.500000e+00, %493
  %495 = fmul fast float %490, %415
  %496 = fmul fast float %495, %494
  %497 = bitcast float %416 to i32
  %498 = ashr i32 %497, 1
  %499 = sub nsw i32 1597463174, %498
  %500 = bitcast i32 %499 to float
  %501 = fmul fast float %416, 5.000000e-01
  %502 = fmul fast float %500, %500
  %503 = fmul fast float %502, %501
  %504 = fsub fast float 1.500000e+00, %503
  %505 = fmul fast float %500, %416
  %506 = fmul fast float %505, %504
  %507 = bitcast float %417 to i32
  %508 = ashr i32 %507, 1
  %509 = sub nsw i32 1597463174, %508
  %510 = bitcast i32 %509 to float
  %511 = fmul fast float %417, 5.000000e-01
  %512 = fmul fast float %510, %510
  %513 = fmul fast float %512, %511
  %514 = fsub fast float 1.500000e+00, %513
  %515 = fmul fast float %510, %417
  %516 = fmul fast float %515, %514
  %517 = fsub fast float %496, %478
  %518 = fsub fast float %506, %482
  %519 = fsub fast float %516, %486
  %520 = fmul fast float %517, %448
  %521 = fmul fast float %518, %450
  %522 = fmul fast float %519, %454
  %523 = fadd fast float %520, %462
  %524 = fadd fast float %521, %466
  %525 = fadd fast float %522, %470
  %526 = call float @dx.op.unary.f32(i32 7, float %523)  ; Saturate(value)
  %527 = call float @dx.op.unary.f32(i32 7, float %524)  ; Saturate(value)
  %528 = call float @dx.op.unary.f32(i32 7, float %525)  ; Saturate(value)
  %529 = fmul fast float %526, %526
  %530 = fmul fast float %527, %527
  %531 = fmul fast float %528, %528
  %532 = fsub fast float %529, %415
  %533 = fsub fast float %530, %416
  %534 = fsub fast float %531, %417
  %535 = fmul fast float %532, %439
  %536 = fmul fast float %533, %439
  %537 = fmul fast float %534, %439
  %538 = fadd fast float %535, %415
  %539 = fadd fast float %536, %416
  %540 = fadd fast float %537, %417
  %541 = fadd fast float %459, %426
  %542 = fsub fast float %541, %475
  %543 = call float @dx.op.unary.f32(i32 7, float %542)  ; Saturate(value)
  %544 = fsub fast float %543, %426
  %545 = fmul fast float %544, %439
  %546 = fadd fast float %545, %426
  br label %600

; <label>:547                                     ; preds = %438
  %548 = and i32 %441, 134217728
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %584, label %550

; <label>:550                                     ; preds = %547
  %551 = call float @dx.op.unary.f32(i32 24, float %209)  ; Sqrt(value)
  %552 = call float @dx.op.unary.f32(i32 24, float %213)  ; Sqrt(value)
  %553 = call float @dx.op.unary.f32(i32 24, float %217)  ; Sqrt(value)
  %554 = fadd fast float %551, -5.000000e-01
  %555 = fadd fast float %552, -5.000000e-01
  %556 = fadd fast float %553, -5.000000e-01
  %557 = fmul fast float %554, %439
  %558 = fmul fast float %555, %439
  %559 = fmul fast float %556, %439
  %560 = fadd fast float %557, 5.000000e-01
  %561 = fadd fast float %558, 5.000000e-01
  %562 = fadd fast float %559, 5.000000e-01
  %563 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %564 = call float @dx.op.unary.f32(i32 24, float %416)  ; Sqrt(value)
  %565 = call float @dx.op.unary.f32(i32 24, float %417)  ; Sqrt(value)
  %566 = fmul fast float %560, 2.000000e+00
  %567 = fsub fast float 1.000000e+00, %566
  %568 = fmul fast float %567, %563
  %569 = fadd fast float %568, %566
  %570 = fmul fast float %569, %563
  %571 = fmul fast float %561, 2.000000e+00
  %572 = fsub fast float 1.000000e+00, %571
  %573 = fmul fast float %572, %564
  %574 = fadd fast float %573, %571
  %575 = fmul fast float %574, %564
  %576 = fmul fast float %562, 2.000000e+00
  %577 = fsub fast float 1.000000e+00, %576
  %578 = fmul fast float %577, %565
  %579 = fadd fast float %578, %576
  %580 = fmul fast float %579, %565
  %581 = fmul fast float %570, %570
  %582 = fmul fast float %575, %575
  %583 = fmul fast float %580, %580
  br label %600

; <label>:584                                     ; preds = %547
  %585 = fmul fast float %209, %209
  %586 = fmul fast float %213, %213
  %587 = fmul fast float %217, %217
  %588 = fadd fast float %585, -1.000000e+00
  %589 = fadd fast float %586, -1.000000e+00
  %590 = fadd fast float %587, -1.000000e+00
  %591 = fmul fast float %439, %588
  %592 = fmul fast float %439, %589
  %593 = fmul fast float %439, %590
  %594 = fadd fast float %591, 1.000000e+00
  %595 = fadd fast float %592, 1.000000e+00
  %596 = fadd fast float %593, 1.000000e+00
  %597 = fmul fast float %594, %415
  %598 = fmul fast float %595, %416
  %599 = fmul fast float %596, %417
  br label %600

; <label>:600                                     ; preds = %584, %550, %444, %404
  %601 = phi float [ %546, %444 ], [ %426, %550 ], [ %426, %584 ], [ 0x3FA23C0BE0000000, %404 ]
  %602 = phi float [ %538, %444 ], [ %581, %550 ], [ %597, %584 ], [ 1.000000e+00, %404 ]
  %603 = phi float [ %539, %444 ], [ %582, %550 ], [ %598, %584 ], [ 1.000000e+00, %404 ]
  %604 = phi float [ %540, %444 ], [ %583, %550 ], [ %599, %584 ], [ 1.000000e+00, %404 ]
  %605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.i32 %605, 1
  %607 = and i32 %606, 1
  %608 = icmp ne i32 %607, 0
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 292, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = and i32 %610, 32
  %612 = icmp ne i32 %611, 0
  %613 = and i1 %608, %612
  %614 = select i1 %613, float 1.000000e+00, float %602
  %615 = select i1 %613, float 0x3FD3333340000000, float %603
  %616 = select i1 %613, float 0x3FD3333340000000, float %604
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = and i32 %618, 32
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %690, label %621

; <label>:621                                     ; preds = %600
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 308, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = add i32 %625, 0
  %627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %628 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %627, %dx.types.Handle %71, float %405, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 0
  %630 = extractvalue %dx.types.ResRet.f32 %628, 1
  %631 = extractvalue %dx.types.ResRet.f32 %628, 2
  %632 = extractvalue %dx.types.ResRet.f32 %628, 3
  %633 = and i32 %623, 255
  %634 = uitofp i32 %633 to float
  %635 = lshr i32 %623, 8
  %636 = and i32 %635, 255
  %637 = uitofp i32 %636 to float
  %638 = lshr i32 %623, 16
  %639 = and i32 %638, 255
  %640 = uitofp i32 %639 to float
  %641 = fmul fast float %640, 0x3F70101000000000
  %642 = fmul fast float %629, %634
  %643 = fadd fast float %642, %637
  %644 = fmul fast float %643, 0x3F70101000000000
  %645 = fadd fast float %630, -5.000000e-01
  %646 = fadd fast float %632, -5.000000e-01
  %647 = fmul fast float %645, %641
  %648 = fmul fast float %646, %641
  %649 = fadd fast float %647, 5.000000e-01
  %650 = fadd fast float %648, 5.000000e-01
  %651 = fmul fast float %649, 2.000000e+00
  %652 = fadd fast float %651, -1.000000e+00
  %653 = fmul fast float %650, 2.000000e+00
  %654 = fadd fast float %653, -1.000000e+00
  %655 = fadd fast float %652, %654
  %656 = fmul fast float %655, 5.000000e-01
  %657 = fsub fast float %652, %654
  %658 = fmul fast float %657, 5.000000e-01
  %659 = call float @dx.op.unary.f32(i32 6, float %656)  ; FAbs(value)
  %660 = fsub fast float 1.000000e+00, %659
  %661 = call float @dx.op.unary.f32(i32 6, float %658)  ; FAbs(value)
  %662 = fsub fast float %660, %661
  %663 = call float @dx.op.dot3.f32(i32 55, float %656, float %658, float %662, float %656, float %658, float %662)  ; Dot3(ax,ay,az,bx,by,bz)
  %664 = call float @dx.op.unary.f32(i32 25, float %663)  ; Rsqrt(value)
  %665 = fmul fast float %656, %664
  %666 = fmul fast float %658, %664
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = and i32 %668, 67108864
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %686, label %671

; <label>:671                                     ; preds = %621
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 216, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = and i32 %673, 65535
  %675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %674)  ; LegacyF16ToF32(value)
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 220, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = and i32 %677, 65535
  %679 = call float @dx.op.legacyF16ToF32(i32 131, i32 %678)  ; LegacyF16ToF32(value)
  %680 = lshr i32 %673, 16
  %681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %680)  ; LegacyF16ToF32(value)
  %682 = fsub fast float %644, %681
  %683 = fmul fast float %682, %675
  %684 = fadd fast float %683, %679
  %685 = call float @dx.op.unary.f32(i32 7, float %684)  ; Saturate(value)
  br label %686

; <label>:686                                     ; preds = %671, %621
  %687 = phi float [ %685, %671 ], [ %644, %621 ]
  %688 = call float @dx.op.dot2.f32(i32 54, float %665, float %666, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %689 = call float @dx.op.dot2.f32(i32 54, float %665, float %666, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %690

; <label>:690                                     ; preds = %686, %600
  %691 = phi float [ %687, %686 ], [ 0x3FD6666660000000, %600 ]
  %692 = phi float [ %688, %686 ], [ 0.000000e+00, %600 ]
  %693 = phi float [ %689, %686 ], [ 0.000000e+00, %600 ]
  %694 = phi float [ %631, %686 ], [ 1.000000e+00, %600 ]
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = lshr i32 %696, 22
  %698 = shl nuw nsw i32 %697, 5
  %699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %698)  ; LegacyF16ToF32(value)
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = and i32 %701, 64
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %736, label %704

; <label>:704                                     ; preds = %690
  %705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 320, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.i32 %705, 0
  %707 = add i32 %706, 0
  %708 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %707, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = and i32 %710, 131072
  %712 = icmp eq i32 %711, 0
  %713 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %708, %dx.types.Handle %71, float %405, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %714 = extractvalue %dx.types.ResRet.f32 %713, 0
  %715 = extractvalue %dx.types.ResRet.f32 %713, 1
  %716 = extractvalue %dx.types.ResRet.f32 %713, 2
  %717 = fmul fast float %714, %198
  %718 = fmul fast float %715, %201
  %719 = fmul fast float %716, %204
  br i1 %712, label %726, label %720

; <label>:720                                     ; preds = %704
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 0
  %723 = fmul fast float %722, %717
  %724 = fmul fast float %722, %718
  %725 = fmul fast float %722, %719
  br label %726

; <label>:726                                     ; preds = %720, %704
  %727 = phi float [ %723, %720 ], [ %717, %704 ]
  %728 = phi float [ %724, %720 ], [ %718, %704 ]
  %729 = phi float [ %725, %720 ], [ %719, %704 ]
  %730 = fmul fast float %727, %699
  %731 = select i1 %193, float %730, float %727
  %732 = call float @dx.op.dot3.f32(i32 55, float %731, float %728, float %729, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %733 = select i1 %193, float 0.000000e+00, float %727
  %734 = select i1 %193, float %732, float %728
  %735 = select i1 %193, float 0.000000e+00, float %729
  br label %736

; <label>:736                                     ; preds = %726, %690
  %737 = phi float [ %733, %726 ], [ 0.000000e+00, %690 ]
  %738 = phi float [ %734, %726 ], [ 0.000000e+00, %690 ]
  %739 = phi float [ %735, %726 ], [ 0.000000e+00, %690 ]
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = and i32 %741, 255
  %743 = uitofp i32 %742 to float
  %744 = lshr i32 %741, 8
  %745 = and i32 %744, 255
  %746 = uitofp i32 %745 to float
  %747 = call float @dx.op.dot3.f32(i32 55, float %614, float %615, float %616, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %748 = fmul fast float %746, %747
  %749 = fadd fast float %748, %743
  %750 = fmul fast float %749, 0x3F70101020000000
  %751 = call float @dx.op.unary.f32(i32 7, float %750)  ; Saturate(value)
  br label %752

; <label>:752                                     ; preds = %736, %192
  %753 = phi float [ %692, %736 ], [ 0.000000e+00, %192 ]
  %754 = phi float [ %693, %736 ], [ 0.000000e+00, %192 ]
  %755 = phi float [ %614, %736 ], [ 0.000000e+00, %192 ]
  %756 = phi float [ %615, %736 ], [ 0.000000e+00, %192 ]
  %757 = phi float [ %616, %736 ], [ 0.000000e+00, %192 ]
  %758 = phi float [ %737, %736 ], [ 0.000000e+00, %192 ]
  %759 = phi float [ %738, %736 ], [ 0.000000e+00, %192 ]
  %760 = phi float [ %739, %736 ], [ 0.000000e+00, %192 ]
  %761 = phi float [ %601, %736 ], [ 0.000000e+00, %192 ]
  %762 = phi float [ 1.000000e+00, %736 ], [ 0.000000e+00, %192 ]
  %763 = phi float [ %691, %736 ], [ 0.000000e+00, %192 ]
  %764 = phi float [ %694, %736 ], [ 0.000000e+00, %192 ]
  %765 = phi float [ %751, %736 ], [ 0.000000e+00, %192 ]
  %766 = icmp ult i32 %302, 2
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = or i32 %770, %768
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %1573, label %773

; <label>:773                                     ; preds = %752
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 236, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = lshr i32 %775, 16
  %777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %776)  ; LegacyF16ToF32(value)
  %778 = fmul fast float %777, 0x3F50624DE0000000
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = lshr i32 %780, 16
  %782 = and i32 %781, 255
  %783 = lshr i32 %780, 24
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 244, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = and i32 %785, 65535
  %787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %786)  ; LegacyF16ToF32(value)
  %788 = lshr i32 %785, 16
  %789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %788)  ; LegacyF16ToF32(value)
  %790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.i32 %790, 0
  %792 = lshr i32 %791, 22
  %793 = shl nuw nsw i32 %792, 5
  %794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %793)  ; LegacyF16ToF32(value)
  %795 = shl i32 %791, 4
  %796 = and i32 %795, 32752
  %797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %796)  ; LegacyF16ToF32(value)
  %798 = lshr i32 %791, 7
  %799 = and i32 %798, 32752
  %800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %799)  ; LegacyF16ToF32(value)
  %801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %802 = extractvalue %dx.types.CBufRet.f32 %801, 3
  %803 = fmul fast float %802, 1.000000e+03
  %804 = fmul fast float %258, %803
  %805 = call float @dx.op.unary.f32(i32 22, float %804)  ; Frc(value)
  %806 = fadd fast float %805, %249
  %807 = fmul fast float %259, %803
  %808 = call float @dx.op.unary.f32(i32 22, float %807)  ; Frc(value)
  %809 = fadd fast float %808, %251
  %810 = fmul fast float %778, %803
  %811 = call float @dx.op.unary.f32(i32 22, float %810)  ; Frc(value)
  %812 = fmul fast float %811, 0x401921FB60000000
  %813 = fadd fast float %812, %794
  %814 = call float @dx.op.unary.f32(i32 13, float %813)  ; Sin(value)
  %815 = call float @dx.op.unary.f32(i32 12, float %813)  ; Cos(value)
  %816 = fsub fast float -0.000000e+00, %814
  %817 = fadd fast float %66, -5.000000e-01
  %818 = fadd fast float %67, -5.000000e-01
  %819 = fmul fast float %787, %817
  %820 = fmul fast float %789, %818
  %821 = fadd fast float %819, 5.000000e-01
  %822 = fadd fast float %820, 5.000000e-01
  %823 = fmul fast float %797, %821
  %824 = fmul fast float %800, %822
  %825 = fmul fast float %815, %823
  %826 = call float @dx.op.tertiary.f32(i32 46, float %816, float %824, float %825)  ; FMad(a,b,c)
  %827 = fmul fast float %814, %823
  %828 = call float @dx.op.tertiary.f32(i32 46, float %815, float %824, float %827)  ; FMad(a,b,c)
  %829 = fadd fast float %806, %826
  %830 = fadd fast float %809, %828
  %831 = icmp ugt i32 %782, 1
  %832 = icmp ugt i32 %780, 33554431
  %833 = or i1 %832, %831
  br i1 %833, label %834, label %858

; <label>:834                                     ; preds = %773
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = lshr i32 %836, 16
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = fmul fast float %802, %838
  %840 = call float @dx.op.unary.f32(i32 22, float %839)  ; Frc(value)
  %841 = mul nuw nsw i32 %782, %783
  %842 = uitofp i32 %841 to float
  %843 = fmul fast float %840, %842
  %844 = call float @dx.op.unary.f32(i32 27, float %843)  ; Round_ni(value)
  %845 = fptoui float %844 to i32
  %846 = urem i32 %845, %782
  %847 = udiv i32 %845, %783
  %848 = call float @dx.op.unary.f32(i32 22, float %829)  ; Frc(value)
  %849 = call float @dx.op.unary.f32(i32 22, float %830)  ; Frc(value)
  %850 = uitofp i32 %846 to float
  %851 = uitofp i32 %847 to float
  %852 = fadd fast float %848, %850
  %853 = fadd fast float %849, %851
  %854 = uitofp i32 %782 to float
  %855 = uitofp i32 %783 to float
  %856 = fdiv fast float %852, %854
  %857 = fdiv fast float %853, %855
  br label %858

; <label>:858                                     ; preds = %834, %773
  %859 = phi float [ %856, %834 ], [ %829, %773 ]
  %860 = phi float [ %857, %834 ], [ %830, %773 ]
  %861 = and i32 %768, 16777216
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %969, label %863

; <label>:863                                     ; preds = %858
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 0
  %866 = extractvalue %dx.types.CBufRet.f32 %864, 1
  %867 = extractvalue %dx.types.CBufRet.f32 %864, 2
  %868 = fadd fast float %865, %122
  %869 = fadd fast float %866, %123
  %870 = fadd fast float %867, %124
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 0
  %873 = call float @dx.op.unary.f32(i32 7, float %872)  ; Saturate(value)
  %874 = icmp eq i32 %43, 65535
  br i1 %874, label %969, label %875

; <label>:875                                     ; preds = %863
  %876 = lshr i32 %43, 1
  %877 = shl i32 %876, 2
  %878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.i32 %878, 0
  %880 = and i32 %43, 1
  %881 = icmp ne i32 %880, 0
  %882 = lshr i32 %879, 16
  %883 = and i32 %879, 65535
  %884 = select i1 %881, i32 %882, i32 %883
  %885 = icmp eq i32 %884, 65535
  br i1 %885, label %965, label %886

; <label>:886                                     ; preds = %875
  %887 = mul nuw nsw i32 %884, 40
  %888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.f32 %888, 0
  %890 = extractvalue %dx.types.ResRet.f32 %888, 1
  %891 = extractvalue %dx.types.ResRet.f32 %888, 2
  %892 = add nuw nsw i32 %887, 12
  %893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.f32 %893, 0
  %895 = extractvalue %dx.types.ResRet.f32 %893, 1
  %896 = extractvalue %dx.types.ResRet.f32 %893, 2
  %897 = add nuw nsw i32 %887, 24
  %898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.f32 %898, 0
  %900 = extractvalue %dx.types.ResRet.f32 %898, 1
  %901 = extractvalue %dx.types.ResRet.f32 %898, 2
  %902 = add nuw nsw i32 %887, 36
  %903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.f32 %903, 0
  %905 = fsub fast float %868, %889
  %906 = fsub fast float %869, %890
  %907 = fsub fast float %870, %891
  %908 = fmul fast float %904, %905
  %909 = fmul fast float %904, %906
  %910 = fmul fast float %904, %907
  %911 = call float @dx.op.unary.f32(i32 27, float %908)  ; Round_ni(value)
  %912 = call float @dx.op.unary.f32(i32 27, float %909)  ; Round_ni(value)
  %913 = call float @dx.op.unary.f32(i32 27, float %910)  ; Round_ni(value)
  %914 = fadd fast float %911, 5.000000e-01
  %915 = fadd fast float %912, 5.000000e-01
  %916 = fadd fast float %913, 5.000000e-01
  %917 = fmul fast float %914, %894
  %918 = fmul fast float %915, %895
  %919 = fmul fast float %916, %896
  %920 = shl i32 %43, 2
  %921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %920, i32 undef)  ; BufferLoad(srv,index,wot)
  %922 = extractvalue %dx.types.ResRet.i32 %921, 0
  %923 = add i32 %922, 0
  %924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %923, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %925 = call float @dx.op.unary.f32(i32 22, float %917)  ; Frc(value)
  %926 = call float @dx.op.unary.f32(i32 22, float %918)  ; Frc(value)
  %927 = call float @dx.op.unary.f32(i32 22, float %919)  ; Frc(value)
  %928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %924, %dx.types.Handle %40, float %925, float %926, float %927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  %930 = extractvalue %dx.types.ResRet.f32 %928, 1
  %931 = extractvalue %dx.types.ResRet.f32 %928, 2
  %932 = fmul fast float %929, 1.023000e+03
  %933 = fmul fast float %930, 1.023000e+03
  %934 = fmul fast float %931, 1.023000e+03
  %935 = fadd fast float %932, 5.000000e-01
  %936 = fadd fast float %933, 5.000000e-01
  %937 = fadd fast float %934, 5.000000e-01
  %938 = call float @dx.op.unary.f32(i32 27, float %935)  ; Round_ni(value)
  %939 = call float @dx.op.unary.f32(i32 27, float %936)  ; Round_ni(value)
  %940 = call float @dx.op.unary.f32(i32 27, float %937)  ; Round_ni(value)
  %941 = fsub fast float %908, %911
  %942 = fsub fast float %909, %912
  %943 = fsub fast float %910, %913
  %944 = fmul fast float %941, 7.500000e-01
  %945 = fmul fast float %942, 7.500000e-01
  %946 = fmul fast float %943, 7.500000e-01
  %947 = fadd fast float %911, 1.250000e-01
  %948 = fadd fast float %947, %944
  %949 = fadd fast float %948, %938
  %950 = fadd fast float %912, 1.250000e-01
  %951 = fadd fast float %950, %945
  %952 = fadd fast float %951, %939
  %953 = fadd fast float %913, 1.250000e-01
  %954 = fadd fast float %953, %946
  %955 = fadd fast float %954, %940
  %956 = fmul fast float %949, %899
  %957 = fmul fast float %952, %900
  %958 = fmul fast float %955, %901
  %959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %920, i32 undef)  ; BufferLoad(srv,index,wot)
  %960 = extractvalue %dx.types.ResRet.i32 %959, 0
  %961 = add i32 %960, 0
  %962 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %961, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %962, %dx.types.Handle %38, float %956, float %957, float %958, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %964 = extractvalue %dx.types.ResRet.f32 %963, 0
  br label %965

; <label>:965                                     ; preds = %886, %875
  %966 = phi float [ %964, %886 ], [ -1.000000e+00, %875 ]
  %967 = fadd fast float %966, %873
  %968 = call float @dx.op.unary.f32(i32 7, float %967)  ; Saturate(value)
  br label %969

; <label>:969                                     ; preds = %965, %863, %858
  %970 = phi float [ 1.000000e+00, %858 ], [ %968, %965 ], [ %873, %863 ]
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 256
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %1019, label %975

; <label>:975                                     ; preds = %969
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 348, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = add i32 %977, 0
  %979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %978, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %980 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %979, %dx.types.Handle %72, float %859, float %860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %981 = extractvalue %dx.types.ResRet.f32 %980, 0
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = shl i32 %983, 4
  %985 = and i32 %984, 32752
  %986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %985)  ; LegacyF16ToF32(value)
  %987 = lshr i32 %983, 7
  %988 = and i32 %987, 32752
  %989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %988)  ; LegacyF16ToF32(value)
  %990 = fsub fast float 1.000000e+00, %970
  %991 = call float @dx.op.binary.f32(i32 35, float %990, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %992 = bitcast float %970 to i32
  %993 = sitofp i32 %992 to float
  %994 = fadd fast float %993, 0xC1CFBF8940000000
  %995 = fmul fast float %989, %994
  %996 = fadd fast float %995, 0x41CFBF8940000000
  %997 = fptosi float %996 to i32
  %998 = bitcast i32 %997 to float
  %999 = bitcast float %991 to i32
  %1000 = sitofp i32 %999 to float
  %1001 = fadd fast float %1000, 0xC1CFBF8940000000
  %1002 = fmul fast float %1001, %989
  %1003 = fadd fast float %1002, 0x41CFBF8940000000
  %1004 = fptosi float %1003 to i32
  %1005 = bitcast i32 %1004 to float
  %1006 = fmul fast float %998, %986
  %1007 = fmul fast float %1005, %986
  %1008 = fsub fast float %991, %1006
  %1009 = fadd fast float %1007, %991
  %1010 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  %1011 = call float @dx.op.unary.f32(i32 7, float %1009)  ; Saturate(value)
  %1012 = fsub fast float %981, %1010
  %1013 = fsub fast float %1011, %1010
  %1014 = bitcast float %1013 to i32
  %1015 = sub nsw i32 2129859010, %1014
  %1016 = bitcast i32 %1015 to float
  %1017 = fmul fast float %1016, %1012
  %1018 = call float @dx.op.unary.f32(i32 7, float %1017)  ; Saturate(value)
  br label %1019

; <label>:1019                                    ; preds = %975, %969
  %1020 = phi float [ %1018, %975 ], [ %970, %969 ]
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = and i32 %1022, 128
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1040, label %1025

; <label>:1025                                    ; preds = %1019
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = add i32 %1027, 0
  %1029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1030 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1029, %dx.types.Handle %72, float %859, float %860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = and i32 %1033, 524288
  %1035 = icmp ne i32 %1034, 0
  %1036 = fcmp fast ogt float %1031, 0x3FE0101020000000
  %1037 = select i1 %1036, float 1.000000e+00, float 0.000000e+00
  %1038 = select i1 %1035, float %1037, float %1031
  %1039 = fmul fast float %1038, %1020
  br label %1040

; <label>:1040                                    ; preds = %1025, %1019
  %1041 = phi float [ %1039, %1025 ], [ %1020, %1019 ]
  %1042 = fcmp fast ult float %1041, 0x3F70101020000000
  br i1 %1042, label %1573, label %1043

; <label>:1043                                    ; preds = %1040
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = and i32 %1045, 16
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1241, label %1048

; <label>:1048                                    ; preds = %1043
  %1049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.i32 %1049, 0
  %1051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.i32 %1051, 0
  %1053 = add i32 %1052, 0
  %1054 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1053, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1055 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1054, %dx.types.Handle %71, float %859, float %860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.ResRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.ResRet.f32 %1055, 2
  %1059 = extractvalue %dx.types.ResRet.f32 %1055, 3
  %1060 = and i32 %1050, 255
  %1061 = uitofp i32 %1060 to float
  %1062 = lshr i32 %1050, 8
  %1063 = and i32 %1062, 255
  %1064 = uitofp i32 %1063 to float
  %1065 = fmul fast float %1059, %1061
  %1066 = fadd fast float %1065, %1064
  %1067 = fmul fast float %1066, 0x3F70101000000000
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = and i32 %1069, 512
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1079, label %1072

; <label>:1072                                    ; preds = %1048
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 360, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = add i32 %1074, 0
  %1076 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1075, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1077 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1076, %dx.types.Handle %72, float %859, float %860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1078 = extractvalue %dx.types.ResRet.f32 %1077, 0
  br label %1079

; <label>:1079                                    ; preds = %1072, %1048
  %1080 = phi float [ %1078, %1072 ], [ 1.000000e+00, %1048 ]
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = and i32 %1082, 33554432
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1188, label %1085

; <label>:1085                                    ; preds = %1079
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = and i32 %1087, 65535
  %1089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1088)  ; LegacyF16ToF32(value)
  %1090 = lshr i32 %1087, 16
  %1091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1090)  ; LegacyF16ToF32(value)
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = and i32 %1093, 65535
  %1095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1094)  ; LegacyF16ToF32(value)
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = lshr i32 %1097, 24
  %1099 = uitofp i32 %1098 to float
  %1100 = fmul fast float %1099, 0x3F70101020000000
  %1101 = and i32 %1097, 255
  %1102 = uitofp i32 %1101 to float
  %1103 = fmul fast float %1102, 0x3F70101020000000
  %1104 = lshr i32 %1097, 8
  %1105 = and i32 %1104, 255
  %1106 = uitofp i32 %1105 to float
  %1107 = fmul fast float %1106, 0x3F70101020000000
  %1108 = lshr i32 %1097, 16
  %1109 = and i32 %1108, 255
  %1110 = uitofp i32 %1109 to float
  %1111 = fmul fast float %1110, 0x3F70101020000000
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = lshr i32 %1113, 24
  %1115 = uitofp i32 %1114 to float
  %1116 = fmul fast float %1115, 0x3F70101020000000
  %1117 = and i32 %1113, 255
  %1118 = uitofp i32 %1117 to float
  %1119 = fmul fast float %1118, 0x3F70101020000000
  %1120 = lshr i32 %1113, 8
  %1121 = and i32 %1120, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = fmul fast float %1122, 0x3F70101020000000
  %1124 = lshr i32 %1113, 16
  %1125 = and i32 %1124, 255
  %1126 = uitofp i32 %1125 to float
  %1127 = fmul fast float %1126, 0x3F70101020000000
  %1128 = bitcast float %1056 to i32
  %1129 = ashr i32 %1128, 1
  %1130 = sub nsw i32 1597463174, %1129
  %1131 = bitcast i32 %1130 to float
  %1132 = fmul fast float %1056, 5.000000e-01
  %1133 = fmul fast float %1131, %1131
  %1134 = fmul fast float %1133, %1132
  %1135 = fsub fast float 1.500000e+00, %1134
  %1136 = fmul fast float %1131, %1056
  %1137 = fmul fast float %1136, %1135
  %1138 = bitcast float %1057 to i32
  %1139 = ashr i32 %1138, 1
  %1140 = sub nsw i32 1597463174, %1139
  %1141 = bitcast i32 %1140 to float
  %1142 = fmul fast float %1057, 5.000000e-01
  %1143 = fmul fast float %1141, %1141
  %1144 = fmul fast float %1143, %1142
  %1145 = fsub fast float 1.500000e+00, %1144
  %1146 = fmul fast float %1141, %1057
  %1147 = fmul fast float %1146, %1145
  %1148 = bitcast float %1058 to i32
  %1149 = ashr i32 %1148, 1
  %1150 = sub nsw i32 1597463174, %1149
  %1151 = bitcast i32 %1150 to float
  %1152 = fmul fast float %1058, 5.000000e-01
  %1153 = fmul fast float %1151, %1151
  %1154 = fmul fast float %1153, %1152
  %1155 = fsub fast float 1.500000e+00, %1154
  %1156 = fmul fast float %1151, %1058
  %1157 = fmul fast float %1156, %1155
  %1158 = fsub fast float %1137, %1119
  %1159 = fsub fast float %1147, %1123
  %1160 = fsub fast float %1157, %1127
  %1161 = fmul fast float %1158, %1089
  %1162 = fmul fast float %1159, %1091
  %1163 = fmul fast float %1160, %1095
  %1164 = fadd fast float %1161, %1103
  %1165 = fadd fast float %1162, %1107
  %1166 = fadd fast float %1163, %1111
  %1167 = call float @dx.op.unary.f32(i32 7, float %1164)  ; Saturate(value)
  %1168 = call float @dx.op.unary.f32(i32 7, float %1165)  ; Saturate(value)
  %1169 = call float @dx.op.unary.f32(i32 7, float %1166)  ; Saturate(value)
  %1170 = fmul fast float %1167, %1167
  %1171 = fmul fast float %1168, %1168
  %1172 = fmul fast float %1169, %1169
  %1173 = fsub fast float %1170, %1056
  %1174 = fsub fast float %1171, %1057
  %1175 = fsub fast float %1172, %1058
  %1176 = fmul fast float %1173, %1080
  %1177 = fmul fast float %1174, %1080
  %1178 = fmul fast float %1175, %1080
  %1179 = fadd fast float %1176, %1056
  %1180 = fadd fast float %1177, %1057
  %1181 = fadd fast float %1178, %1058
  %1182 = fadd fast float %1100, %1067
  %1183 = fsub fast float %1182, %1116
  %1184 = call float @dx.op.unary.f32(i32 7, float %1183)  ; Saturate(value)
  %1185 = fsub fast float %1184, %1067
  %1186 = fmul fast float %1185, %1080
  %1187 = fadd fast float %1186, %1067
  br label %1241

; <label>:1188                                    ; preds = %1079
  %1189 = and i32 %1082, 134217728
  %1190 = icmp eq i32 %1189, 0
  br i1 %1190, label %1225, label %1191

; <label>:1191                                    ; preds = %1188
  %1192 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %1193 = call float @dx.op.unary.f32(i32 24, float %241)  ; Sqrt(value)
  %1194 = call float @dx.op.unary.f32(i32 24, float %245)  ; Sqrt(value)
  %1195 = fadd fast float %1192, -5.000000e-01
  %1196 = fadd fast float %1193, -5.000000e-01
  %1197 = fadd fast float %1194, -5.000000e-01
  %1198 = fmul fast float %1195, %1080
  %1199 = fmul fast float %1196, %1080
  %1200 = fmul fast float %1197, %1080
  %1201 = fadd fast float %1198, 5.000000e-01
  %1202 = fadd fast float %1199, 5.000000e-01
  %1203 = fadd fast float %1200, 5.000000e-01
  %1204 = call float @dx.op.unary.f32(i32 24, float %1056)  ; Sqrt(value)
  %1205 = call float @dx.op.unary.f32(i32 24, float %1057)  ; Sqrt(value)
  %1206 = call float @dx.op.unary.f32(i32 24, float %1058)  ; Sqrt(value)
  %1207 = fmul fast float %1201, 2.000000e+00
  %1208 = fsub fast float 1.000000e+00, %1207
  %1209 = fmul fast float %1208, %1204
  %1210 = fadd fast float %1209, %1207
  %1211 = fmul fast float %1210, %1204
  %1212 = fmul fast float %1202, 2.000000e+00
  %1213 = fsub fast float 1.000000e+00, %1212
  %1214 = fmul fast float %1213, %1205
  %1215 = fadd fast float %1214, %1212
  %1216 = fmul fast float %1215, %1205
  %1217 = fmul fast float %1203, 2.000000e+00
  %1218 = fsub fast float 1.000000e+00, %1217
  %1219 = fmul fast float %1218, %1206
  %1220 = fadd fast float %1219, %1217
  %1221 = fmul fast float %1220, %1206
  %1222 = fmul fast float %1211, %1211
  %1223 = fmul fast float %1216, %1216
  %1224 = fmul fast float %1221, %1221
  br label %1241

; <label>:1225                                    ; preds = %1188
  %1226 = fmul fast float %237, %237
  %1227 = fmul fast float %241, %241
  %1228 = fmul fast float %245, %245
  %1229 = fadd fast float %1226, -1.000000e+00
  %1230 = fadd fast float %1227, -1.000000e+00
  %1231 = fadd fast float %1228, -1.000000e+00
  %1232 = fmul fast float %1080, %1229
  %1233 = fmul fast float %1080, %1230
  %1234 = fmul fast float %1080, %1231
  %1235 = fadd fast float %1232, 1.000000e+00
  %1236 = fadd fast float %1233, 1.000000e+00
  %1237 = fadd fast float %1234, 1.000000e+00
  %1238 = fmul fast float %1235, %1056
  %1239 = fmul fast float %1236, %1057
  %1240 = fmul fast float %1237, %1058
  br label %1241

; <label>:1241                                    ; preds = %1225, %1191, %1085, %1043
  %1242 = phi float [ %1187, %1085 ], [ %1067, %1191 ], [ %1067, %1225 ], [ 0x3FA23C0BE0000000, %1043 ]
  %1243 = phi float [ %1179, %1085 ], [ %1222, %1191 ], [ %1238, %1225 ], [ 1.000000e+00, %1043 ]
  %1244 = phi float [ %1180, %1085 ], [ %1223, %1191 ], [ %1239, %1225 ], [ 1.000000e+00, %1043 ]
  %1245 = phi float [ %1181, %1085 ], [ %1224, %1191 ], [ %1240, %1225 ], [ 1.000000e+00, %1043 ]
  %1246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.i32 %1246, 1
  %1248 = and i32 %1247, 1
  %1249 = icmp ne i32 %1248, 0
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = and i32 %1251, 32
  %1253 = icmp ne i32 %1252, 0
  %1254 = and i1 %1249, %1253
  %1255 = select i1 %1254, float 1.000000e+00, float %1243
  %1256 = select i1 %1254, float 0x3FD3333340000000, float %1244
  %1257 = select i1 %1254, float 0x3FD3333340000000, float %1245
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = and i32 %1259, 32
  %1261 = icmp eq i32 %1260, 0
  br i1 %1261, label %1331, label %1262

; <label>:1262                                    ; preds = %1241
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = add i32 %1266, 0
  %1268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1268, %dx.types.Handle %71, float %859, float %860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  %1271 = extractvalue %dx.types.ResRet.f32 %1269, 1
  %1272 = extractvalue %dx.types.ResRet.f32 %1269, 2
  %1273 = extractvalue %dx.types.ResRet.f32 %1269, 3
  %1274 = and i32 %1264, 255
  %1275 = uitofp i32 %1274 to float
  %1276 = lshr i32 %1264, 8
  %1277 = and i32 %1276, 255
  %1278 = uitofp i32 %1277 to float
  %1279 = lshr i32 %1264, 16
  %1280 = and i32 %1279, 255
  %1281 = uitofp i32 %1280 to float
  %1282 = fmul fast float %1281, 0x3F70101000000000
  %1283 = fmul fast float %1270, %1275
  %1284 = fadd fast float %1283, %1278
  %1285 = fmul fast float %1284, 0x3F70101000000000
  %1286 = fadd fast float %1271, -5.000000e-01
  %1287 = fadd fast float %1273, -5.000000e-01
  %1288 = fmul fast float %1286, %1282
  %1289 = fmul fast float %1287, %1282
  %1290 = fadd fast float %1288, 5.000000e-01
  %1291 = fadd fast float %1289, 5.000000e-01
  %1292 = fmul fast float %1290, 2.000000e+00
  %1293 = fadd fast float %1292, -1.000000e+00
  %1294 = fmul fast float %1291, 2.000000e+00
  %1295 = fadd fast float %1294, -1.000000e+00
  %1296 = fadd fast float %1293, %1295
  %1297 = fmul fast float %1296, 5.000000e-01
  %1298 = fsub fast float %1293, %1295
  %1299 = fmul fast float %1298, 5.000000e-01
  %1300 = call float @dx.op.unary.f32(i32 6, float %1297)  ; FAbs(value)
  %1301 = fsub fast float 1.000000e+00, %1300
  %1302 = call float @dx.op.unary.f32(i32 6, float %1299)  ; FAbs(value)
  %1303 = fsub fast float %1301, %1302
  %1304 = call float @dx.op.dot3.f32(i32 55, float %1297, float %1299, float %1303, float %1297, float %1299, float %1303)  ; Dot3(ax,ay,az,bx,by,bz)
  %1305 = call float @dx.op.unary.f32(i32 25, float %1304)  ; Rsqrt(value)
  %1306 = fmul fast float %1297, %1305
  %1307 = fmul fast float %1299, %1305
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = and i32 %1309, 67108864
  %1311 = icmp eq i32 %1310, 0
  br i1 %1311, label %1327, label %1312

; <label>:1312                                    ; preds = %1262
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = and i32 %1314, 65535
  %1316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1315)  ; LegacyF16ToF32(value)
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = and i32 %1318, 65535
  %1320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1319)  ; LegacyF16ToF32(value)
  %1321 = lshr i32 %1314, 16
  %1322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1321)  ; LegacyF16ToF32(value)
  %1323 = fsub fast float %1285, %1322
  %1324 = fmul fast float %1323, %1316
  %1325 = fadd fast float %1324, %1320
  %1326 = call float @dx.op.unary.f32(i32 7, float %1325)  ; Saturate(value)
  br label %1327

; <label>:1327                                    ; preds = %1312, %1262
  %1328 = phi float [ %1326, %1312 ], [ %1285, %1262 ]
  %1329 = call float @dx.op.dot2.f32(i32 54, float %1306, float %1307, float %48, float %49)  ; Dot2(ax,ay,bx,by)
  %1330 = call float @dx.op.dot2.f32(i32 54, float %1306, float %1307, float %50, float %51)  ; Dot2(ax,ay,bx,by)
  br label %1331

; <label>:1331                                    ; preds = %1327, %1241
  %1332 = phi float [ %1328, %1327 ], [ 0x3FD6666660000000, %1241 ]
  %1333 = phi float [ %1329, %1327 ], [ 0.000000e+00, %1241 ]
  %1334 = phi float [ %1330, %1327 ], [ 0.000000e+00, %1241 ]
  %1335 = phi float [ %1272, %1327 ], [ 1.000000e+00, %1241 ]
  %1336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1337 = extractvalue %dx.types.ResRet.i32 %1336, 0
  %1338 = lshr i32 %1337, 22
  %1339 = shl nuw nsw i32 %1338, 5
  %1340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1339)  ; LegacyF16ToF32(value)
  %1341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = and i32 %1342, 64
  %1344 = icmp eq i32 %1343, 0
  br i1 %1344, label %1377, label %1345

; <label>:1345                                    ; preds = %1331
  %1346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 324, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.i32 %1346, 0
  %1348 = add i32 %1347, 0
  %1349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1348, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.i32 %1350, 0
  %1352 = and i32 %1351, 131072
  %1353 = icmp eq i32 %1352, 0
  %1354 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1349, %dx.types.Handle %71, float %859, float %860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1355 = extractvalue %dx.types.ResRet.f32 %1354, 0
  %1356 = extractvalue %dx.types.ResRet.f32 %1354, 1
  %1357 = extractvalue %dx.types.ResRet.f32 %1354, 2
  %1358 = fmul fast float %1355, %226
  %1359 = fmul fast float %1356, %229
  %1360 = fmul fast float %1357, %232
  br i1 %1353, label %1367, label %1361

; <label>:1361                                    ; preds = %1345
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 0
  %1364 = fmul fast float %1363, %1358
  %1365 = fmul fast float %1363, %1359
  %1366 = fmul fast float %1363, %1360
  br label %1367

; <label>:1367                                    ; preds = %1361, %1345
  %1368 = phi float [ %1364, %1361 ], [ %1358, %1345 ]
  %1369 = phi float [ %1365, %1361 ], [ %1359, %1345 ]
  %1370 = phi float [ %1366, %1361 ], [ %1360, %1345 ]
  %1371 = fmul fast float %1368, %1340
  %1372 = select i1 %193, float %1371, float %1368
  %1373 = call float @dx.op.dot3.f32(i32 55, float %1372, float %1369, float %1370, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1374 = select i1 %193, float 0.000000e+00, float %1368
  %1375 = select i1 %193, float %1373, float %1369
  %1376 = select i1 %193, float 0.000000e+00, float %1370
  br label %1377

; <label>:1377                                    ; preds = %1367, %1331
  %1378 = phi float [ %1374, %1367 ], [ 0.000000e+00, %1331 ]
  %1379 = phi float [ %1375, %1367 ], [ 0.000000e+00, %1331 ]
  %1380 = phi float [ %1376, %1367 ], [ 0.000000e+00, %1331 ]
  %1381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %1382 = extractvalue %dx.types.ResRet.i32 %1381, 0
  %1383 = and i32 %1382, 255
  %1384 = uitofp i32 %1383 to float
  %1385 = lshr i32 %1382, 8
  %1386 = and i32 %1385, 255
  %1387 = uitofp i32 %1386 to float
  %1388 = call float @dx.op.dot3.f32(i32 55, float %1255, float %1256, float %1257, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1389 = fmul fast float %1387, %1388
  %1390 = fadd fast float %1389, %1384
  %1391 = fmul fast float %1390, 0x3F70101020000000
  %1392 = call float @dx.op.unary.f32(i32 7, float %1391)  ; Saturate(value)
  br i1 %766, label %1393, label %1401

; <label>:1393                                    ; preds = %1377
  %1394 = fsub fast float 1.000000e+00, %1041
  %1395 = fmul fast float %1394, %755
  %1396 = fmul fast float %1394, %756
  %1397 = fmul fast float %1394, %757
  %1398 = fmul fast float %1394, %758
  %1399 = fmul fast float %1394, %759
  %1400 = fmul fast float %1394, %760
  br label %1401

; <label>:1401                                    ; preds = %1393, %1377
  %1402 = phi float [ %1395, %1393 ], [ %755, %1377 ]
  %1403 = phi float [ %1396, %1393 ], [ %756, %1377 ]
  %1404 = phi float [ %1397, %1393 ], [ %757, %1377 ]
  %1405 = phi float [ %1398, %1393 ], [ %758, %1377 ]
  %1406 = phi float [ %1399, %1393 ], [ %759, %1377 ]
  %1407 = phi float [ %1400, %1393 ], [ %760, %1377 ]
  %1408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.i32 %1408, 0
  %1410 = and i32 %1409, 3
  %1411 = icmp eq i32 %1410, 3
  br i1 %1411, label %1490, label %1412

; <label>:1412                                    ; preds = %1401
  %1413 = and i32 %1409, 16
  %1414 = icmp ne i32 %1413, 0
  %1415 = select i1 %1414, float %1041, float 0.000000e+00
  %1416 = icmp eq i32 %1410, 0
  br i1 %1416, label %1417, label %1445

; <label>:1417                                    ; preds = %1412
  %1418 = and i32 %1409, 64
  %1419 = icmp ne i32 %1418, 0
  %1420 = select i1 %1419, float %1041, float 0.000000e+00
  %1421 = fsub fast float %1255, %1402
  %1422 = fsub fast float %1256, %1403
  %1423 = fsub fast float %1257, %1404
  %1424 = fmul fast float %1415, %1421
  %1425 = fmul fast float %1415, %1422
  %1426 = fmul fast float %1415, %1423
  %1427 = fadd fast float %1424, %1402
  %1428 = fadd fast float %1425, %1403
  %1429 = fadd fast float %1426, %1404
  %1430 = fsub fast float %1242, %761
  %1431 = fmul fast float %1415, %1430
  %1432 = fadd fast float %1431, %761
  %1433 = fsub fast float %1378, %1405
  %1434 = fsub fast float %1379, %1406
  %1435 = fsub fast float %1380, %1407
  %1436 = fmul fast float %1420, %1433
  %1437 = fmul fast float %1420, %1434
  %1438 = fmul fast float %1420, %1435
  %1439 = fadd fast float %1436, %1405
  %1440 = fadd fast float %1437, %1406
  %1441 = fadd fast float %1438, %1407
  %1442 = fsub fast float %1392, %765
  %1443 = fmul fast float %1415, %1442
  %1444 = fadd fast float %1443, %765
  br label %1490

; <label>:1445                                    ; preds = %1412
  %1446 = icmp eq i32 %1410, 1
  br i1 %1446, label %1447, label %1460

; <label>:1447                                    ; preds = %1445
  %1448 = fadd fast float %1255, -1.000000e+00
  %1449 = fadd fast float %1256, -1.000000e+00
  %1450 = fadd fast float %1257, -1.000000e+00
  %1451 = fmul fast float %1415, %1448
  %1452 = fmul fast float %1415, %1449
  %1453 = fmul fast float %1415, %1450
  %1454 = fadd fast float %1451, 1.000000e+00
  %1455 = fadd fast float %1452, 1.000000e+00
  %1456 = fadd fast float %1453, 1.000000e+00
  %1457 = fmul fast float %1454, %1402
  %1458 = fmul fast float %1455, %1403
  %1459 = fmul fast float %1456, %1404
  br label %1490

; <label>:1460                                    ; preds = %1445
  %1461 = icmp eq i32 %1410, 2
  br i1 %1461, label %1462, label %1490

; <label>:1462                                    ; preds = %1460
  %1463 = call float @dx.op.unary.f32(i32 24, float %1255)  ; Sqrt(value)
  %1464 = call float @dx.op.unary.f32(i32 24, float %1256)  ; Sqrt(value)
  %1465 = call float @dx.op.unary.f32(i32 24, float %1257)  ; Sqrt(value)
  %1466 = fadd fast float %1463, -5.000000e-01
  %1467 = fadd fast float %1464, -5.000000e-01
  %1468 = fadd fast float %1465, -5.000000e-01
  %1469 = fmul fast float %1466, %1415
  %1470 = fmul fast float %1467, %1415
  %1471 = fmul fast float %1468, %1415
  %1472 = fadd fast float %1469, 5.000000e-01
  %1473 = fadd fast float %1470, 5.000000e-01
  %1474 = fadd fast float %1471, 5.000000e-01
  %1475 = fmul fast float %1472, 2.000000e+00
  %1476 = fsub fast float 1.000000e+00, %1475
  %1477 = fmul fast float %1476, %1402
  %1478 = fadd fast float %1477, %1475
  %1479 = fmul fast float %1478, %1402
  %1480 = fmul fast float %1473, 2.000000e+00
  %1481 = fsub fast float 1.000000e+00, %1480
  %1482 = fmul fast float %1481, %1403
  %1483 = fadd fast float %1482, %1480
  %1484 = fmul fast float %1483, %1403
  %1485 = fmul fast float %1474, 2.000000e+00
  %1486 = fsub fast float 1.000000e+00, %1485
  %1487 = fmul fast float %1486, %1404
  %1488 = fadd fast float %1487, %1485
  %1489 = fmul fast float %1488, %1404
  br label %1490

; <label>:1490                                    ; preds = %1462, %1460, %1447, %1417, %1401
  %1491 = phi float [ %1402, %1401 ], [ %1479, %1462 ], [ %1402, %1460 ], [ %1457, %1447 ], [ %1427, %1417 ]
  %1492 = phi float [ %1403, %1401 ], [ %1484, %1462 ], [ %1403, %1460 ], [ %1458, %1447 ], [ %1428, %1417 ]
  %1493 = phi float [ %1404, %1401 ], [ %1489, %1462 ], [ %1404, %1460 ], [ %1459, %1447 ], [ %1429, %1417 ]
  %1494 = phi float [ %1405, %1401 ], [ %1405, %1462 ], [ %1405, %1460 ], [ %1405, %1447 ], [ %1439, %1417 ]
  %1495 = phi float [ %1406, %1401 ], [ %1406, %1462 ], [ %1406, %1460 ], [ %1406, %1447 ], [ %1440, %1417 ]
  %1496 = phi float [ %1407, %1401 ], [ %1407, %1462 ], [ %1407, %1460 ], [ %1407, %1447 ], [ %1441, %1417 ]
  %1497 = phi float [ %761, %1401 ], [ %761, %1462 ], [ %761, %1460 ], [ %761, %1447 ], [ %1432, %1417 ]
  %1498 = phi float [ %765, %1401 ], [ %765, %1462 ], [ %765, %1460 ], [ %765, %1447 ], [ %1444, %1417 ]
  %1499 = and i32 %1409, 12
  %1500 = icmp eq i32 %1499, 12
  br i1 %1500, label %1573, label %1501

; <label>:1501                                    ; preds = %1490
  %1502 = and i32 %1409, 2097184
  %1503 = icmp eq i32 %1502, 2097184
  %1504 = select i1 %1503, float %1041, float 0.000000e+00
  %1505 = and i32 %1409, 4194336
  %1506 = icmp eq i32 %1505, 4194336
  %1507 = select i1 %1506, float %1041, float 0.000000e+00
  %1508 = and i32 %1409, 8388640
  %1509 = icmp eq i32 %1508, 8388640
  %1510 = select i1 %1509, float %1041, float 0.000000e+00
  %1511 = icmp eq i32 %1499, 0
  br i1 %1511, label %1512, label %1525

; <label>:1512                                    ; preds = %1501
  %1513 = fsub fast float %1333, %753
  %1514 = fsub fast float %1334, %754
  %1515 = fmul fast float %1504, %1513
  %1516 = fmul fast float %1504, %1514
  %1517 = fadd fast float %1515, %753
  %1518 = fadd fast float %1516, %754
  %1519 = fsub fast float %1335, %764
  %1520 = fmul fast float %1507, %1519
  %1521 = fadd fast float %1520, %764
  %1522 = fsub fast float %1332, %763
  %1523 = fmul fast float %1510, %1522
  %1524 = fadd fast float %1523, %763
  br label %1573

; <label>:1525                                    ; preds = %1501
  %1526 = icmp eq i32 %1499, 4
  br i1 %1526, label %1527, label %1559

; <label>:1527                                    ; preds = %1525
  %1528 = fmul fast float %1504, %1333
  %1529 = fmul fast float %1504, %1334
  %1530 = fadd fast float %1528, %753
  %1531 = fadd fast float %1529, %754
  %1532 = call float @dx.op.binary.f32(i32 36, float %764, float %1335)  ; FMin(a,b)
  %1533 = fsub fast float %1532, %764
  %1534 = fmul fast float %1533, %1507
  %1535 = fadd fast float %1534, %764
  %1536 = fadd fast float %1332, %763
  %1537 = fmul fast float %1536, 0x3FF337FAE0000000
  %1538 = fmul fast float %763, %763
  %1539 = fmul fast float %1332, %1332
  %1540 = fadd fast float %1539, %1538
  %1541 = fmul fast float %1540, 0x3FE5152B00000000
  %1542 = fmul fast float %763, 0xBFCC1F85E0000000
  %1543 = fmul fast float %1542, %1332
  %1544 = fadd fast float %1543, 0xBFE1363700000000
  %1545 = fadd fast float %1544, %1537
  %1546 = fsub fast float %1545, %1541
  %1547 = fmul fast float %1536, 0x3FBA6F0D00000000
  %1548 = fmul fast float %1540, 0x3FD0432880000000
  %1549 = fmul fast float %763, 0xBFEF110800000000
  %1550 = fmul fast float %1549, %1332
  %1551 = fadd fast float %1550, 1.000000e+00
  %1552 = fsub fast float %1551, %1547
  %1553 = fadd fast float %1552, %1548
  %1554 = fdiv fast float %1546, %1553
  %1555 = call float @dx.op.unary.f32(i32 7, float %1554)  ; Saturate(value)
  %1556 = fsub fast float %1555, %763
  %1557 = fmul fast float %1556, %1510
  %1558 = fadd fast float %1557, %763
  br label %1573

; <label>:1559                                    ; preds = %1525
  %1560 = icmp eq i32 %1499, 8
  br i1 %1560, label %1561, label %1573

; <label>:1561                                    ; preds = %1559
  %1562 = fmul fast float %1504, %1333
  %1563 = fmul fast float %1504, %1334
  %1564 = fadd fast float %1562, %753
  %1565 = fadd fast float %1563, %754
  %1566 = call float @dx.op.binary.f32(i32 36, float %764, float %1335)  ; FMin(a,b)
  %1567 = fsub fast float %1566, %764
  %1568 = fmul fast float %1567, %1507
  %1569 = fadd fast float %1568, %764
  %1570 = fsub fast float %1332, %763
  %1571 = fmul fast float %1510, %1570
  %1572 = fadd fast float %1571, %763
  br label %1573

; <label>:1573                                    ; preds = %1561, %1559, %1527, %1512, %1490, %1040, %752
  %1574 = phi float [ %753, %1490 ], [ %753, %1040 ], [ %753, %752 ], [ %1517, %1512 ], [ %1530, %1527 ], [ %753, %1559 ], [ %1564, %1561 ]
  %1575 = phi float [ %754, %1490 ], [ %754, %1040 ], [ %754, %752 ], [ %1518, %1512 ], [ %1531, %1527 ], [ %754, %1559 ], [ %1565, %1561 ]
  %1576 = phi float [ %1491, %1490 ], [ %755, %1040 ], [ %755, %752 ], [ %1491, %1512 ], [ %1491, %1527 ], [ %1491, %1559 ], [ %1491, %1561 ]
  %1577 = phi float [ %1492, %1490 ], [ %756, %1040 ], [ %756, %752 ], [ %1492, %1512 ], [ %1492, %1527 ], [ %1492, %1559 ], [ %1492, %1561 ]
  %1578 = phi float [ %1493, %1490 ], [ %757, %1040 ], [ %757, %752 ], [ %1493, %1512 ], [ %1493, %1527 ], [ %1493, %1559 ], [ %1493, %1561 ]
  %1579 = phi float [ %1494, %1490 ], [ %758, %1040 ], [ %758, %752 ], [ %1494, %1512 ], [ %1494, %1527 ], [ %1494, %1559 ], [ %1494, %1561 ]
  %1580 = phi float [ %1495, %1490 ], [ %759, %1040 ], [ %759, %752 ], [ %1495, %1512 ], [ %1495, %1527 ], [ %1495, %1559 ], [ %1495, %1561 ]
  %1581 = phi float [ %1496, %1490 ], [ %760, %1040 ], [ %760, %752 ], [ %1496, %1512 ], [ %1496, %1527 ], [ %1496, %1559 ], [ %1496, %1561 ]
  %1582 = phi float [ %1497, %1490 ], [ %761, %1040 ], [ %761, %752 ], [ %1497, %1512 ], [ %1497, %1527 ], [ %1497, %1559 ], [ %1497, %1561 ]
  %1583 = phi float [ %763, %1490 ], [ %763, %1040 ], [ %763, %752 ], [ %1524, %1512 ], [ %1558, %1527 ], [ %763, %1559 ], [ %1572, %1561 ]
  %1584 = phi float [ %764, %1490 ], [ %764, %1040 ], [ %764, %752 ], [ %1521, %1512 ], [ %1535, %1527 ], [ %764, %1559 ], [ %1569, %1561 ]
  %1585 = phi float [ %1498, %1490 ], [ %765, %1040 ], [ %765, %752 ], [ %1498, %1512 ], [ %1498, %1527 ], [ %1498, %1559 ], [ %1498, %1561 ]
  %1586 = icmp ult i32 %302, 3
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = or i32 %1590, %1588
  %1592 = icmp eq i32 %1591, 0
  br i1 %1592, label %2393, label %1593

; <label>:1593                                    ; preds = %1573
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = lshr i32 %1595, 16
  %1597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1596)  ; LegacyF16ToF32(value)
  %1598 = fmul fast float %1597, 0x3F50624DE0000000
  %1599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1600 = extractvalue %dx.types.ResRet.i32 %1599, 0
  %1601 = lshr i32 %1600, 16
  %1602 = and i32 %1601, 255
  %1603 = lshr i32 %1600, 24
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = and i32 %1605, 65535
  %1607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1606)  ; LegacyF16ToF32(value)
  %1608 = lshr i32 %1605, 16
  %1609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1608)  ; LegacyF16ToF32(value)
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = lshr i32 %1611, 22
  %1613 = shl nuw nsw i32 %1612, 5
  %1614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1613)  ; LegacyF16ToF32(value)
  %1615 = shl i32 %1611, 4
  %1616 = and i32 %1615, 32752
  %1617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1616)  ; LegacyF16ToF32(value)
  %1618 = lshr i32 %1611, 7
  %1619 = and i32 %1618, 32752
  %1620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1619)  ; LegacyF16ToF32(value)
  %1621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1622 = extractvalue %dx.types.CBufRet.f32 %1621, 3
  %1623 = fmul fast float %1622, 1.000000e+03
  %1624 = fmul fast float %296, %1623
  %1625 = call float @dx.op.unary.f32(i32 22, float %1624)  ; Frc(value)
  %1626 = fadd fast float %1625, %287
  %1627 = fmul fast float %297, %1623
  %1628 = call float @dx.op.unary.f32(i32 22, float %1627)  ; Frc(value)
  %1629 = fadd fast float %1628, %289
  %1630 = fmul fast float %1598, %1623
  %1631 = call float @dx.op.unary.f32(i32 22, float %1630)  ; Frc(value)
  %1632 = fmul fast float %1631, 0x401921FB60000000
  %1633 = fadd fast float %1632, %1614
  %1634 = call float @dx.op.unary.f32(i32 13, float %1633)  ; Sin(value)
  %1635 = call float @dx.op.unary.f32(i32 12, float %1633)  ; Cos(value)
  %1636 = fsub fast float -0.000000e+00, %1634
  %1637 = fadd fast float %62, -5.000000e-01
  %1638 = fadd fast float %63, -5.000000e-01
  %1639 = fmul fast float %1607, %1637
  %1640 = fmul fast float %1609, %1638
  %1641 = fadd fast float %1639, 5.000000e-01
  %1642 = fadd fast float %1640, 5.000000e-01
  %1643 = fmul fast float %1617, %1641
  %1644 = fmul fast float %1620, %1642
  %1645 = fmul fast float %1635, %1643
  %1646 = call float @dx.op.tertiary.f32(i32 46, float %1636, float %1644, float %1645)  ; FMad(a,b,c)
  %1647 = fmul fast float %1634, %1643
  %1648 = call float @dx.op.tertiary.f32(i32 46, float %1635, float %1644, float %1647)  ; FMad(a,b,c)
  %1649 = fadd fast float %1626, %1646
  %1650 = fadd fast float %1629, %1648
  %1651 = icmp ugt i32 %1602, 1
  %1652 = icmp ugt i32 %1600, 33554431
  %1653 = or i1 %1652, %1651
  br i1 %1653, label %1654, label %1678

; <label>:1654                                    ; preds = %1593
  %1655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1656 = extractvalue %dx.types.ResRet.i32 %1655, 0
  %1657 = lshr i32 %1656, 16
  %1658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1657)  ; LegacyF16ToF32(value)
  %1659 = fmul fast float %1622, %1658
  %1660 = call float @dx.op.unary.f32(i32 22, float %1659)  ; Frc(value)
  %1661 = mul nuw nsw i32 %1602, %1603
  %1662 = uitofp i32 %1661 to float
  %1663 = fmul fast float %1660, %1662
  %1664 = call float @dx.op.unary.f32(i32 27, float %1663)  ; Round_ni(value)
  %1665 = fptoui float %1664 to i32
  %1666 = urem i32 %1665, %1602
  %1667 = udiv i32 %1665, %1603
  %1668 = call float @dx.op.unary.f32(i32 22, float %1649)  ; Frc(value)
  %1669 = call float @dx.op.unary.f32(i32 22, float %1650)  ; Frc(value)
  %1670 = uitofp i32 %1666 to float
  %1671 = uitofp i32 %1667 to float
  %1672 = fadd fast float %1668, %1670
  %1673 = fadd fast float %1669, %1671
  %1674 = uitofp i32 %1602 to float
  %1675 = uitofp i32 %1603 to float
  %1676 = fdiv fast float %1672, %1674
  %1677 = fdiv fast float %1673, %1675
  br label %1678

; <label>:1678                                    ; preds = %1654, %1593
  %1679 = phi float [ %1676, %1654 ], [ %1649, %1593 ]
  %1680 = phi float [ %1677, %1654 ], [ %1650, %1593 ]
  %1681 = and i32 %1588, 16777216
  %1682 = icmp eq i32 %1681, 0
  br i1 %1682, label %1789, label %1683

; <label>:1683                                    ; preds = %1678
  %1684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1685 = extractvalue %dx.types.CBufRet.f32 %1684, 0
  %1686 = extractvalue %dx.types.CBufRet.f32 %1684, 1
  %1687 = extractvalue %dx.types.CBufRet.f32 %1684, 2
  %1688 = fadd fast float %1685, %122
  %1689 = fadd fast float %1686, %123
  %1690 = fadd fast float %1687, %124
  %1691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1692 = extractvalue %dx.types.CBufRet.f32 %1691, 0
  %1693 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  %1694 = icmp eq i32 %43, 65535
  br i1 %1694, label %1789, label %1695

; <label>:1695                                    ; preds = %1683
  %1696 = lshr i32 %43, 1
  %1697 = shl i32 %1696, 2
  %1698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1697, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.i32 %1698, 0
  %1700 = and i32 %43, 1
  %1701 = icmp ne i32 %1700, 0
  %1702 = lshr i32 %1699, 16
  %1703 = and i32 %1699, 65535
  %1704 = select i1 %1701, i32 %1702, i32 %1703
  %1705 = icmp eq i32 %1704, 65535
  br i1 %1705, label %1785, label %1706

; <label>:1706                                    ; preds = %1695
  %1707 = mul nuw nsw i32 %1704, 40
  %1708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.f32 %1708, 0
  %1710 = extractvalue %dx.types.ResRet.f32 %1708, 1
  %1711 = extractvalue %dx.types.ResRet.f32 %1708, 2
  %1712 = add nuw nsw i32 %1707, 12
  %1713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.f32 %1713, 0
  %1715 = extractvalue %dx.types.ResRet.f32 %1713, 1
  %1716 = extractvalue %dx.types.ResRet.f32 %1713, 2
  %1717 = add nuw nsw i32 %1707, 24
  %1718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1717, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.f32 %1718, 0
  %1720 = extractvalue %dx.types.ResRet.f32 %1718, 1
  %1721 = extractvalue %dx.types.ResRet.f32 %1718, 2
  %1722 = add nuw nsw i32 %1707, 36
  %1723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.f32 %1723, 0
  %1725 = fsub fast float %1688, %1709
  %1726 = fsub fast float %1689, %1710
  %1727 = fsub fast float %1690, %1711
  %1728 = fmul fast float %1724, %1725
  %1729 = fmul fast float %1724, %1726
  %1730 = fmul fast float %1724, %1727
  %1731 = call float @dx.op.unary.f32(i32 27, float %1728)  ; Round_ni(value)
  %1732 = call float @dx.op.unary.f32(i32 27, float %1729)  ; Round_ni(value)
  %1733 = call float @dx.op.unary.f32(i32 27, float %1730)  ; Round_ni(value)
  %1734 = fadd fast float %1731, 5.000000e-01
  %1735 = fadd fast float %1732, 5.000000e-01
  %1736 = fadd fast float %1733, 5.000000e-01
  %1737 = fmul fast float %1734, %1714
  %1738 = fmul fast float %1735, %1715
  %1739 = fmul fast float %1736, %1716
  %1740 = shl i32 %43, 2
  %1741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1742 = extractvalue %dx.types.ResRet.i32 %1741, 0
  %1743 = add i32 %1742, 0
  %1744 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1743, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1745 = call float @dx.op.unary.f32(i32 22, float %1737)  ; Frc(value)
  %1746 = call float @dx.op.unary.f32(i32 22, float %1738)  ; Frc(value)
  %1747 = call float @dx.op.unary.f32(i32 22, float %1739)  ; Frc(value)
  %1748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1744, %dx.types.Handle %40, float %1745, float %1746, float %1747, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1749 = extractvalue %dx.types.ResRet.f32 %1748, 0
  %1750 = extractvalue %dx.types.ResRet.f32 %1748, 1
  %1751 = extractvalue %dx.types.ResRet.f32 %1748, 2
  %1752 = fmul fast float %1749, 1.023000e+03
  %1753 = fmul fast float %1750, 1.023000e+03
  %1754 = fmul fast float %1751, 1.023000e+03
  %1755 = fadd fast float %1752, 5.000000e-01
  %1756 = fadd fast float %1753, 5.000000e-01
  %1757 = fadd fast float %1754, 5.000000e-01
  %1758 = call float @dx.op.unary.f32(i32 27, float %1755)  ; Round_ni(value)
  %1759 = call float @dx.op.unary.f32(i32 27, float %1756)  ; Round_ni(value)
  %1760 = call float @dx.op.unary.f32(i32 27, float %1757)  ; Round_ni(value)
  %1761 = fsub fast float %1728, %1731
  %1762 = fsub fast float %1729, %1732
  %1763 = fsub fast float %1730, %1733
  %1764 = fmul fast float %1761, 7.500000e-01
  %1765 = fmul fast float %1762, 7.500000e-01
  %1766 = fmul fast float %1763, 7.500000e-01
  %1767 = fadd fast float %1731, 1.250000e-01
  %1768 = fadd fast float %1767, %1764
  %1769 = fadd fast float %1768, %1758
  %1770 = fadd fast float %1732, 1.250000e-01
  %1771 = fadd fast float %1770, %1765
  %1772 = fadd fast float %1771, %1759
  %1773 = fadd fast float %1733, 1.250000e-01
  %1774 = fadd fast float %1773, %1766
  %1775 = fadd fast float %1774, %1760
  %1776 = fmul fast float %1769, %1719
  %1777 = fmul fast float %1772, %1720
  %1778 = fmul fast float %1775, %1721
  %1779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1780 = extractvalue %dx.types.ResRet.i32 %1779, 0
  %1781 = add i32 %1780, 0
  %1782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1781, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1782, %dx.types.Handle %38, float %1776, float %1777, float %1778, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1784 = extractvalue %dx.types.ResRet.f32 %1783, 0
  br label %1785

; <label>:1785                                    ; preds = %1706, %1695
  %1786 = phi float [ %1784, %1706 ], [ -1.000000e+00, %1695 ]
  %1787 = fadd fast float %1786, %1693
  %1788 = call float @dx.op.unary.f32(i32 7, float %1787)  ; Saturate(value)
  br label %1789

; <label>:1789                                    ; preds = %1785, %1683, %1678
  %1790 = phi float [ 1.000000e+00, %1678 ], [ %1788, %1785 ], [ %1693, %1683 ]
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = and i32 %1792, 256
  %1794 = icmp eq i32 %1793, 0
  br i1 %1794, label %1839, label %1795

; <label>:1795                                    ; preds = %1789
  %1796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.i32 %1796, 0
  %1798 = add i32 %1797, 0
  %1799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1798, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1800 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1799, %dx.types.Handle %72, float %1679, float %1680, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1801 = extractvalue %dx.types.ResRet.f32 %1800, 0
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = shl i32 %1803, 4
  %1805 = and i32 %1804, 32752
  %1806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1805)  ; LegacyF16ToF32(value)
  %1807 = lshr i32 %1803, 7
  %1808 = and i32 %1807, 32752
  %1809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1808)  ; LegacyF16ToF32(value)
  %1810 = fsub fast float 1.000000e+00, %1790
  %1811 = call float @dx.op.binary.f32(i32 35, float %1810, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1812 = bitcast float %1790 to i32
  %1813 = sitofp i32 %1812 to float
  %1814 = fadd fast float %1813, 0xC1CFBF8940000000
  %1815 = fmul fast float %1809, %1814
  %1816 = fadd fast float %1815, 0x41CFBF8940000000
  %1817 = fptosi float %1816 to i32
  %1818 = bitcast i32 %1817 to float
  %1819 = bitcast float %1811 to i32
  %1820 = sitofp i32 %1819 to float
  %1821 = fadd fast float %1820, 0xC1CFBF8940000000
  %1822 = fmul fast float %1821, %1809
  %1823 = fadd fast float %1822, 0x41CFBF8940000000
  %1824 = fptosi float %1823 to i32
  %1825 = bitcast i32 %1824 to float
  %1826 = fmul fast float %1818, %1806
  %1827 = fmul fast float %1825, %1806
  %1828 = fsub fast float %1811, %1826
  %1829 = fadd fast float %1827, %1811
  %1830 = call float @dx.op.unary.f32(i32 7, float %1828)  ; Saturate(value)
  %1831 = call float @dx.op.unary.f32(i32 7, float %1829)  ; Saturate(value)
  %1832 = fsub fast float %1801, %1830
  %1833 = fsub fast float %1831, %1830
  %1834 = bitcast float %1833 to i32
  %1835 = sub nsw i32 2129859010, %1834
  %1836 = bitcast i32 %1835 to float
  %1837 = fmul fast float %1836, %1832
  %1838 = call float @dx.op.unary.f32(i32 7, float %1837)  ; Saturate(value)
  br label %1839

; <label>:1839                                    ; preds = %1795, %1789
  %1840 = phi float [ %1838, %1795 ], [ %1790, %1789 ]
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = and i32 %1842, 128
  %1844 = icmp eq i32 %1843, 0
  br i1 %1844, label %1860, label %1845

; <label>:1845                                    ; preds = %1839
  %1846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.i32 %1846, 0
  %1848 = add i32 %1847, 0
  %1849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1848, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1850 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1849, %dx.types.Handle %72, float %1679, float %1680, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1851 = extractvalue %dx.types.ResRet.f32 %1850, 0
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = and i32 %1853, 524288
  %1855 = icmp ne i32 %1854, 0
  %1856 = fcmp fast ogt float %1851, 0x3FE0101020000000
  %1857 = select i1 %1856, float 1.000000e+00, float 0.000000e+00
  %1858 = select i1 %1855, float %1857, float %1851
  %1859 = fmul fast float %1858, %1840
  br label %1860

; <label>:1860                                    ; preds = %1845, %1839
  %1861 = phi float [ %1859, %1845 ], [ %1840, %1839 ]
  %1862 = fcmp fast ult float %1861, 0x3F70101020000000
  br i1 %1862, label %2393, label %1863

; <label>:1863                                    ; preds = %1860
  %1864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.i32 %1864, 0
  %1866 = and i32 %1865, 16
  %1867 = icmp eq i32 %1866, 0
  br i1 %1867, label %2061, label %1868

; <label>:1868                                    ; preds = %1863
  %1869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.i32 %1869, 0
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = add i32 %1872, 0
  %1874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1873, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1875 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1874, %dx.types.Handle %71, float %1679, float %1680, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1876 = extractvalue %dx.types.ResRet.f32 %1875, 0
  %1877 = extractvalue %dx.types.ResRet.f32 %1875, 1
  %1878 = extractvalue %dx.types.ResRet.f32 %1875, 2
  %1879 = extractvalue %dx.types.ResRet.f32 %1875, 3
  %1880 = and i32 %1870, 255
  %1881 = uitofp i32 %1880 to float
  %1882 = lshr i32 %1870, 8
  %1883 = and i32 %1882, 255
  %1884 = uitofp i32 %1883 to float
  %1885 = fmul fast float %1879, %1881
  %1886 = fadd fast float %1885, %1884
  %1887 = fmul fast float %1886, 0x3F70101000000000
  %1888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.i32 %1888, 0
  %1890 = and i32 %1889, 512
  %1891 = icmp eq i32 %1890, 0
  br i1 %1891, label %1899, label %1892

; <label>:1892                                    ; preds = %1868
  %1893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 364, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.i32 %1893, 0
  %1895 = add i32 %1894, 0
  %1896 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1895, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1897 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1896, %dx.types.Handle %72, float %1679, float %1680, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1898 = extractvalue %dx.types.ResRet.f32 %1897, 0
  br label %1899

; <label>:1899                                    ; preds = %1892, %1868
  %1900 = phi float [ %1898, %1892 ], [ 1.000000e+00, %1868 ]
  %1901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.i32 %1901, 0
  %1903 = and i32 %1902, 33554432
  %1904 = icmp eq i32 %1903, 0
  br i1 %1904, label %2008, label %1905

; <label>:1905                                    ; preds = %1899
  %1906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.i32 %1906, 0
  %1908 = and i32 %1907, 65535
  %1909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1908)  ; LegacyF16ToF32(value)
  %1910 = lshr i32 %1907, 16
  %1911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1910)  ; LegacyF16ToF32(value)
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = and i32 %1913, 65535
  %1915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1914)  ; LegacyF16ToF32(value)
  %1916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.i32 %1916, 0
  %1918 = lshr i32 %1917, 24
  %1919 = uitofp i32 %1918 to float
  %1920 = fmul fast float %1919, 0x3F70101020000000
  %1921 = and i32 %1917, 255
  %1922 = uitofp i32 %1921 to float
  %1923 = fmul fast float %1922, 0x3F70101020000000
  %1924 = lshr i32 %1917, 8
  %1925 = and i32 %1924, 255
  %1926 = uitofp i32 %1925 to float
  %1927 = fmul fast float %1926, 0x3F70101020000000
  %1928 = lshr i32 %1917, 16
  %1929 = and i32 %1928, 255
  %1930 = uitofp i32 %1929 to float
  %1931 = fmul fast float %1930, 0x3F70101020000000
  %1932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1933 = extractvalue %dx.types.ResRet.i32 %1932, 0
  %1934 = lshr i32 %1933, 24
  %1935 = uitofp i32 %1934 to float
  %1936 = fmul fast float %1935, 0x3F70101020000000
  %1937 = and i32 %1933, 255
  %1938 = uitofp i32 %1937 to float
  %1939 = fmul fast float %1938, 0x3F70101020000000
  %1940 = lshr i32 %1933, 8
  %1941 = and i32 %1940, 255
  %1942 = uitofp i32 %1941 to float
  %1943 = fmul fast float %1942, 0x3F70101020000000
  %1944 = lshr i32 %1933, 16
  %1945 = and i32 %1944, 255
  %1946 = uitofp i32 %1945 to float
  %1947 = fmul fast float %1946, 0x3F70101020000000
  %1948 = bitcast float %1876 to i32
  %1949 = ashr i32 %1948, 1
  %1950 = sub nsw i32 1597463174, %1949
  %1951 = bitcast i32 %1950 to float
  %1952 = fmul fast float %1876, 5.000000e-01
  %1953 = fmul fast float %1951, %1951
  %1954 = fmul fast float %1953, %1952
  %1955 = fsub fast float 1.500000e+00, %1954
  %1956 = fmul fast float %1951, %1876
  %1957 = fmul fast float %1956, %1955
  %1958 = bitcast float %1877 to i32
  %1959 = ashr i32 %1958, 1
  %1960 = sub nsw i32 1597463174, %1959
  %1961 = bitcast i32 %1960 to float
  %1962 = fmul fast float %1877, 5.000000e-01
  %1963 = fmul fast float %1961, %1961
  %1964 = fmul fast float %1963, %1962
  %1965 = fsub fast float 1.500000e+00, %1964
  %1966 = fmul fast float %1961, %1877
  %1967 = fmul fast float %1966, %1965
  %1968 = bitcast float %1878 to i32
  %1969 = ashr i32 %1968, 1
  %1970 = sub nsw i32 1597463174, %1969
  %1971 = bitcast i32 %1970 to float
  %1972 = fmul fast float %1878, 5.000000e-01
  %1973 = fmul fast float %1971, %1971
  %1974 = fmul fast float %1973, %1972
  %1975 = fsub fast float 1.500000e+00, %1974
  %1976 = fmul fast float %1971, %1878
  %1977 = fmul fast float %1976, %1975
  %1978 = fsub fast float %1957, %1939
  %1979 = fsub fast float %1967, %1943
  %1980 = fsub fast float %1977, %1947
  %1981 = fmul fast float %1978, %1909
  %1982 = fmul fast float %1979, %1911
  %1983 = fmul fast float %1980, %1915
  %1984 = fadd fast float %1981, %1923
  %1985 = fadd fast float %1982, %1927
  %1986 = fadd fast float %1983, %1931
  %1987 = call float @dx.op.unary.f32(i32 7, float %1984)  ; Saturate(value)
  %1988 = call float @dx.op.unary.f32(i32 7, float %1985)  ; Saturate(value)
  %1989 = call float @dx.op.unary.f32(i32 7, float %1986)  ; Saturate(value)
  %1990 = fmul fast float %1987, %1987
  %1991 = fmul fast float %1988, %1988
  %1992 = fmul fast float %1989, %1989
  %1993 = fsub fast float %1990, %1876
  %1994 = fsub fast float %1991, %1877
  %1995 = fsub fast float %1992, %1878
  %1996 = fmul fast float %1993, %1900
  %1997 = fmul fast float %1994, %1900
  %1998 = fmul fast float %1995, %1900
  %1999 = fadd fast float %1996, %1876
  %2000 = fadd fast float %1997, %1877
  %2001 = fadd fast float %1998, %1878
  %2002 = fadd fast float %1920, %1887
  %2003 = fsub fast float %2002, %1936
  %2004 = call float @dx.op.unary.f32(i32 7, float %2003)  ; Saturate(value)
  %2005 = fsub fast float %2004, %1887
  %2006 = fmul fast float %2005, %1900
  %2007 = fadd fast float %2006, %1887
  br label %2061

; <label>:2008                                    ; preds = %1899
  %2009 = and i32 %1902, 134217728
  %2010 = icmp eq i32 %2009, 0
  br i1 %2010, label %2045, label %2011

; <label>:2011                                    ; preds = %2008
  %2012 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %2013 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %2014 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %2015 = fadd fast float %2012, -5.000000e-01
  %2016 = fadd fast float %2013, -5.000000e-01
  %2017 = fadd fast float %2014, -5.000000e-01
  %2018 = fmul fast float %2015, %1900
  %2019 = fmul fast float %2016, %1900
  %2020 = fmul fast float %2017, %1900
  %2021 = fadd fast float %2018, 5.000000e-01
  %2022 = fadd fast float %2019, 5.000000e-01
  %2023 = fadd fast float %2020, 5.000000e-01
  %2024 = call float @dx.op.unary.f32(i32 24, float %1876)  ; Sqrt(value)
  %2025 = call float @dx.op.unary.f32(i32 24, float %1877)  ; Sqrt(value)
  %2026 = call float @dx.op.unary.f32(i32 24, float %1878)  ; Sqrt(value)
  %2027 = fmul fast float %2021, 2.000000e+00
  %2028 = fsub fast float 1.000000e+00, %2027
  %2029 = fmul fast float %2028, %2024
  %2030 = fadd fast float %2029, %2027
  %2031 = fmul fast float %2030, %2024
  %2032 = fmul fast float %2022, 2.000000e+00
  %2033 = fsub fast float 1.000000e+00, %2032
  %2034 = fmul fast float %2033, %2025
  %2035 = fadd fast float %2034, %2032
  %2036 = fmul fast float %2035, %2025
  %2037 = fmul fast float %2023, 2.000000e+00
  %2038 = fsub fast float 1.000000e+00, %2037
  %2039 = fmul fast float %2038, %2026
  %2040 = fadd fast float %2039, %2037
  %2041 = fmul fast float %2040, %2026
  %2042 = fmul fast float %2031, %2031
  %2043 = fmul fast float %2036, %2036
  %2044 = fmul fast float %2041, %2041
  br label %2061

; <label>:2045                                    ; preds = %2008
  %2046 = fmul fast float %275, %275
  %2047 = fmul fast float %279, %279
  %2048 = fmul fast float %283, %283
  %2049 = fadd fast float %2046, -1.000000e+00
  %2050 = fadd fast float %2047, -1.000000e+00
  %2051 = fadd fast float %2048, -1.000000e+00
  %2052 = fmul fast float %1900, %2049
  %2053 = fmul fast float %1900, %2050
  %2054 = fmul fast float %1900, %2051
  %2055 = fadd fast float %2052, 1.000000e+00
  %2056 = fadd fast float %2053, 1.000000e+00
  %2057 = fadd fast float %2054, 1.000000e+00
  %2058 = fmul fast float %2055, %1876
  %2059 = fmul fast float %2056, %1877
  %2060 = fmul fast float %2057, %1878
  br label %2061

; <label>:2061                                    ; preds = %2045, %2011, %1905, %1863
  %2062 = phi float [ %2007, %1905 ], [ %1887, %2011 ], [ %1887, %2045 ], [ 0x3FA23C0BE0000000, %1863 ]
  %2063 = phi float [ %1999, %1905 ], [ %2042, %2011 ], [ %2058, %2045 ], [ 1.000000e+00, %1863 ]
  %2064 = phi float [ %2000, %1905 ], [ %2043, %2011 ], [ %2059, %2045 ], [ 1.000000e+00, %1863 ]
  %2065 = phi float [ %2001, %1905 ], [ %2044, %2011 ], [ %2060, %2045 ], [ 1.000000e+00, %1863 ]
  %2066 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2067 = extractvalue %dx.types.CBufRet.i32 %2066, 1
  %2068 = and i32 %2067, 1
  %2069 = icmp ne i32 %2068, 0
  %2070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.i32 %2070, 0
  %2072 = and i32 %2071, 32
  %2073 = icmp ne i32 %2072, 0
  %2074 = and i1 %2069, %2073
  %2075 = select i1 %2074, float 1.000000e+00, float %2063
  %2076 = select i1 %2074, float 0x3FD3333340000000, float %2064
  %2077 = select i1 %2074, float 0x3FD3333340000000, float %2065
  %2078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.i32 %2078, 0
  %2080 = and i32 %2079, 32
  %2081 = icmp eq i32 %2080, 0
  br i1 %2081, label %2151, label %2082

; <label>:2082                                    ; preds = %2061
  %2083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.i32 %2083, 0
  %2085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2086 = extractvalue %dx.types.ResRet.i32 %2085, 0
  %2087 = add i32 %2086, 0
  %2088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2087, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2089 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2088, %dx.types.Handle %71, float %1679, float %1680, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2090 = extractvalue %dx.types.ResRet.f32 %2089, 0
  %2091 = extractvalue %dx.types.ResRet.f32 %2089, 1
  %2092 = extractvalue %dx.types.ResRet.f32 %2089, 2
  %2093 = extractvalue %dx.types.ResRet.f32 %2089, 3
  %2094 = and i32 %2084, 255
  %2095 = uitofp i32 %2094 to float
  %2096 = lshr i32 %2084, 8
  %2097 = and i32 %2096, 255
  %2098 = uitofp i32 %2097 to float
  %2099 = lshr i32 %2084, 16
  %2100 = and i32 %2099, 255
  %2101 = uitofp i32 %2100 to float
  %2102 = fmul fast float %2101, 0x3F70101000000000
  %2103 = fmul fast float %2090, %2095
  %2104 = fadd fast float %2103, %2098
  %2105 = fmul fast float %2104, 0x3F70101000000000
  %2106 = fadd fast float %2091, -5.000000e-01
  %2107 = fadd fast float %2093, -5.000000e-01
  %2108 = fmul fast float %2106, %2102
  %2109 = fmul fast float %2107, %2102
  %2110 = fadd fast float %2108, 5.000000e-01
  %2111 = fadd fast float %2109, 5.000000e-01
  %2112 = fmul fast float %2110, 2.000000e+00
  %2113 = fadd fast float %2112, -1.000000e+00
  %2114 = fmul fast float %2111, 2.000000e+00
  %2115 = fadd fast float %2114, -1.000000e+00
  %2116 = fadd fast float %2113, %2115
  %2117 = fmul fast float %2116, 5.000000e-01
  %2118 = fsub fast float %2113, %2115
  %2119 = fmul fast float %2118, 5.000000e-01
  %2120 = call float @dx.op.unary.f32(i32 6, float %2117)  ; FAbs(value)
  %2121 = fsub fast float 1.000000e+00, %2120
  %2122 = call float @dx.op.unary.f32(i32 6, float %2119)  ; FAbs(value)
  %2123 = fsub fast float %2121, %2122
  %2124 = call float @dx.op.dot3.f32(i32 55, float %2117, float %2119, float %2123, float %2117, float %2119, float %2123)  ; Dot3(ax,ay,az,bx,by,bz)
  %2125 = call float @dx.op.unary.f32(i32 25, float %2124)  ; Rsqrt(value)
  %2126 = fmul fast float %2117, %2125
  %2127 = fmul fast float %2119, %2125
  %2128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.i32 %2128, 0
  %2130 = and i32 %2129, 67108864
  %2131 = icmp eq i32 %2130, 0
  br i1 %2131, label %2147, label %2132

; <label>:2132                                    ; preds = %2082
  %2133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 248, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.i32 %2133, 0
  %2135 = and i32 %2134, 65535
  %2136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2135)  ; LegacyF16ToF32(value)
  %2137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.i32 %2137, 0
  %2139 = and i32 %2138, 65535
  %2140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2139)  ; LegacyF16ToF32(value)
  %2141 = lshr i32 %2134, 16
  %2142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2141)  ; LegacyF16ToF32(value)
  %2143 = fsub fast float %2105, %2142
  %2144 = fmul fast float %2143, %2136
  %2145 = fadd fast float %2144, %2140
  %2146 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  br label %2147

; <label>:2147                                    ; preds = %2132, %2082
  %2148 = phi float [ %2146, %2132 ], [ %2105, %2082 ]
  %2149 = call float @dx.op.dot2.f32(i32 54, float %2126, float %2127, float %44, float %45)  ; Dot2(ax,ay,bx,by)
  %2150 = call float @dx.op.dot2.f32(i32 54, float %2126, float %2127, float %46, float %47)  ; Dot2(ax,ay,bx,by)
  br label %2151

; <label>:2151                                    ; preds = %2147, %2061
  %2152 = phi float [ %2148, %2147 ], [ 0x3FD6666660000000, %2061 ]
  %2153 = phi float [ %2149, %2147 ], [ 0.000000e+00, %2061 ]
  %2154 = phi float [ %2150, %2147 ], [ 0.000000e+00, %2061 ]
  %2155 = phi float [ %2092, %2147 ], [ 1.000000e+00, %2061 ]
  %2156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2157 = extractvalue %dx.types.ResRet.i32 %2156, 0
  %2158 = lshr i32 %2157, 22
  %2159 = shl nuw nsw i32 %2158, 5
  %2160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2159)  ; LegacyF16ToF32(value)
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = and i32 %2162, 64
  %2164 = icmp eq i32 %2163, 0
  br i1 %2164, label %2197, label %2165

; <label>:2165                                    ; preds = %2151
  %2166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2167 = extractvalue %dx.types.ResRet.i32 %2166, 0
  %2168 = add i32 %2167, 0
  %2169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2168, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.i32 %2170, 0
  %2172 = and i32 %2171, 131072
  %2173 = icmp eq i32 %2172, 0
  %2174 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2169, %dx.types.Handle %71, float %1679, float %1680, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2175 = extractvalue %dx.types.ResRet.f32 %2174, 0
  %2176 = extractvalue %dx.types.ResRet.f32 %2174, 1
  %2177 = extractvalue %dx.types.ResRet.f32 %2174, 2
  %2178 = fmul fast float %2175, %264
  %2179 = fmul fast float %2176, %267
  %2180 = fmul fast float %2177, %270
  br i1 %2173, label %2187, label %2181

; <label>:2181                                    ; preds = %2165
  %2182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2183 = extractvalue %dx.types.CBufRet.f32 %2182, 0
  %2184 = fmul fast float %2183, %2178
  %2185 = fmul fast float %2183, %2179
  %2186 = fmul fast float %2183, %2180
  br label %2187

; <label>:2187                                    ; preds = %2181, %2165
  %2188 = phi float [ %2184, %2181 ], [ %2178, %2165 ]
  %2189 = phi float [ %2185, %2181 ], [ %2179, %2165 ]
  %2190 = phi float [ %2186, %2181 ], [ %2180, %2165 ]
  %2191 = fmul fast float %2188, %2160
  %2192 = select i1 %193, float %2191, float %2188
  %2193 = call float @dx.op.dot3.f32(i32 55, float %2192, float %2189, float %2190, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2194 = select i1 %193, float 0.000000e+00, float %2188
  %2195 = select i1 %193, float %2193, float %2189
  %2196 = select i1 %193, float 0.000000e+00, float %2190
  br label %2197

; <label>:2197                                    ; preds = %2187, %2151
  %2198 = phi float [ %2194, %2187 ], [ 0.000000e+00, %2151 ]
  %2199 = phi float [ %2195, %2187 ], [ 0.000000e+00, %2151 ]
  %2200 = phi float [ %2196, %2187 ], [ 0.000000e+00, %2151 ]
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = and i32 %2202, 255
  %2204 = uitofp i32 %2203 to float
  %2205 = lshr i32 %2202, 8
  %2206 = and i32 %2205, 255
  %2207 = uitofp i32 %2206 to float
  %2208 = call float @dx.op.dot3.f32(i32 55, float %2075, float %2076, float %2077, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2209 = fmul fast float %2207, %2208
  %2210 = fadd fast float %2209, %2204
  %2211 = fmul fast float %2210, 0x3F70101020000000
  %2212 = call float @dx.op.unary.f32(i32 7, float %2211)  ; Saturate(value)
  br i1 %1586, label %2213, label %2221

; <label>:2213                                    ; preds = %2197
  %2214 = fsub fast float 1.000000e+00, %1861
  %2215 = fmul fast float %2214, %1576
  %2216 = fmul fast float %2214, %1577
  %2217 = fmul fast float %2214, %1578
  %2218 = fmul fast float %2214, %1579
  %2219 = fmul fast float %2214, %1580
  %2220 = fmul fast float %2214, %1581
  br label %2221

; <label>:2221                                    ; preds = %2213, %2197
  %2222 = phi float [ %2215, %2213 ], [ %1576, %2197 ]
  %2223 = phi float [ %2216, %2213 ], [ %1577, %2197 ]
  %2224 = phi float [ %2217, %2213 ], [ %1578, %2197 ]
  %2225 = phi float [ %2218, %2213 ], [ %1579, %2197 ]
  %2226 = phi float [ %2219, %2213 ], [ %1580, %2197 ]
  %2227 = phi float [ %2220, %2213 ], [ %1581, %2197 ]
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = and i32 %2229, 3
  %2231 = icmp eq i32 %2230, 3
  br i1 %2231, label %2310, label %2232

; <label>:2232                                    ; preds = %2221
  %2233 = and i32 %2229, 16
  %2234 = icmp ne i32 %2233, 0
  %2235 = select i1 %2234, float %1861, float 0.000000e+00
  %2236 = icmp eq i32 %2230, 0
  br i1 %2236, label %2237, label %2265

; <label>:2237                                    ; preds = %2232
  %2238 = and i32 %2229, 64
  %2239 = icmp ne i32 %2238, 0
  %2240 = select i1 %2239, float %1861, float 0.000000e+00
  %2241 = fsub fast float %2075, %2222
  %2242 = fsub fast float %2076, %2223
  %2243 = fsub fast float %2077, %2224
  %2244 = fmul fast float %2235, %2241
  %2245 = fmul fast float %2235, %2242
  %2246 = fmul fast float %2235, %2243
  %2247 = fadd fast float %2244, %2222
  %2248 = fadd fast float %2245, %2223
  %2249 = fadd fast float %2246, %2224
  %2250 = fsub fast float %2062, %1582
  %2251 = fmul fast float %2235, %2250
  %2252 = fadd fast float %2251, %1582
  %2253 = fsub fast float %2198, %2225
  %2254 = fsub fast float %2199, %2226
  %2255 = fsub fast float %2200, %2227
  %2256 = fmul fast float %2240, %2253
  %2257 = fmul fast float %2240, %2254
  %2258 = fmul fast float %2240, %2255
  %2259 = fadd fast float %2256, %2225
  %2260 = fadd fast float %2257, %2226
  %2261 = fadd fast float %2258, %2227
  %2262 = fsub fast float %2212, %1585
  %2263 = fmul fast float %2235, %2262
  %2264 = fadd fast float %2263, %1585
  br label %2310

; <label>:2265                                    ; preds = %2232
  %2266 = icmp eq i32 %2230, 1
  br i1 %2266, label %2267, label %2280

; <label>:2267                                    ; preds = %2265
  %2268 = fadd fast float %2075, -1.000000e+00
  %2269 = fadd fast float %2076, -1.000000e+00
  %2270 = fadd fast float %2077, -1.000000e+00
  %2271 = fmul fast float %2235, %2268
  %2272 = fmul fast float %2235, %2269
  %2273 = fmul fast float %2235, %2270
  %2274 = fadd fast float %2271, 1.000000e+00
  %2275 = fadd fast float %2272, 1.000000e+00
  %2276 = fadd fast float %2273, 1.000000e+00
  %2277 = fmul fast float %2274, %2222
  %2278 = fmul fast float %2275, %2223
  %2279 = fmul fast float %2276, %2224
  br label %2310

; <label>:2280                                    ; preds = %2265
  %2281 = icmp eq i32 %2230, 2
  br i1 %2281, label %2282, label %2310

; <label>:2282                                    ; preds = %2280
  %2283 = call float @dx.op.unary.f32(i32 24, float %2075)  ; Sqrt(value)
  %2284 = call float @dx.op.unary.f32(i32 24, float %2076)  ; Sqrt(value)
  %2285 = call float @dx.op.unary.f32(i32 24, float %2077)  ; Sqrt(value)
  %2286 = fadd fast float %2283, -5.000000e-01
  %2287 = fadd fast float %2284, -5.000000e-01
  %2288 = fadd fast float %2285, -5.000000e-01
  %2289 = fmul fast float %2286, %2235
  %2290 = fmul fast float %2287, %2235
  %2291 = fmul fast float %2288, %2235
  %2292 = fadd fast float %2289, 5.000000e-01
  %2293 = fadd fast float %2290, 5.000000e-01
  %2294 = fadd fast float %2291, 5.000000e-01
  %2295 = fmul fast float %2292, 2.000000e+00
  %2296 = fsub fast float 1.000000e+00, %2295
  %2297 = fmul fast float %2296, %2222
  %2298 = fadd fast float %2297, %2295
  %2299 = fmul fast float %2298, %2222
  %2300 = fmul fast float %2293, 2.000000e+00
  %2301 = fsub fast float 1.000000e+00, %2300
  %2302 = fmul fast float %2301, %2223
  %2303 = fadd fast float %2302, %2300
  %2304 = fmul fast float %2303, %2223
  %2305 = fmul fast float %2294, 2.000000e+00
  %2306 = fsub fast float 1.000000e+00, %2305
  %2307 = fmul fast float %2306, %2224
  %2308 = fadd fast float %2307, %2305
  %2309 = fmul fast float %2308, %2224
  br label %2310

; <label>:2310                                    ; preds = %2282, %2280, %2267, %2237, %2221
  %2311 = phi float [ %2222, %2221 ], [ %2299, %2282 ], [ %2222, %2280 ], [ %2277, %2267 ], [ %2247, %2237 ]
  %2312 = phi float [ %2223, %2221 ], [ %2304, %2282 ], [ %2223, %2280 ], [ %2278, %2267 ], [ %2248, %2237 ]
  %2313 = phi float [ %2224, %2221 ], [ %2309, %2282 ], [ %2224, %2280 ], [ %2279, %2267 ], [ %2249, %2237 ]
  %2314 = phi float [ %2225, %2221 ], [ %2225, %2282 ], [ %2225, %2280 ], [ %2225, %2267 ], [ %2259, %2237 ]
  %2315 = phi float [ %2226, %2221 ], [ %2226, %2282 ], [ %2226, %2280 ], [ %2226, %2267 ], [ %2260, %2237 ]
  %2316 = phi float [ %2227, %2221 ], [ %2227, %2282 ], [ %2227, %2280 ], [ %2227, %2267 ], [ %2261, %2237 ]
  %2317 = phi float [ %1582, %2221 ], [ %1582, %2282 ], [ %1582, %2280 ], [ %1582, %2267 ], [ %2252, %2237 ]
  %2318 = phi float [ %1585, %2221 ], [ %1585, %2282 ], [ %1585, %2280 ], [ %1585, %2267 ], [ %2264, %2237 ]
  %2319 = and i32 %2229, 12
  %2320 = icmp eq i32 %2319, 12
  br i1 %2320, label %2393, label %2321

; <label>:2321                                    ; preds = %2310
  %2322 = and i32 %2229, 2097184
  %2323 = icmp eq i32 %2322, 2097184
  %2324 = select i1 %2323, float %1861, float 0.000000e+00
  %2325 = and i32 %2229, 4194336
  %2326 = icmp eq i32 %2325, 4194336
  %2327 = select i1 %2326, float %1861, float 0.000000e+00
  %2328 = and i32 %2229, 8388640
  %2329 = icmp eq i32 %2328, 8388640
  %2330 = select i1 %2329, float %1861, float 0.000000e+00
  %2331 = icmp eq i32 %2319, 0
  br i1 %2331, label %2332, label %2345

; <label>:2332                                    ; preds = %2321
  %2333 = fsub fast float %2153, %1574
  %2334 = fsub fast float %2154, %1575
  %2335 = fmul fast float %2324, %2333
  %2336 = fmul fast float %2324, %2334
  %2337 = fadd fast float %2335, %1574
  %2338 = fadd fast float %2336, %1575
  %2339 = fsub fast float %2155, %1584
  %2340 = fmul fast float %2327, %2339
  %2341 = fadd fast float %2340, %1584
  %2342 = fsub fast float %2152, %1583
  %2343 = fmul fast float %2330, %2342
  %2344 = fadd fast float %2343, %1583
  br label %2393

; <label>:2345                                    ; preds = %2321
  %2346 = icmp eq i32 %2319, 4
  br i1 %2346, label %2347, label %2379

; <label>:2347                                    ; preds = %2345
  %2348 = fmul fast float %2324, %2153
  %2349 = fmul fast float %2324, %2154
  %2350 = fadd fast float %2348, %1574
  %2351 = fadd fast float %2349, %1575
  %2352 = call float @dx.op.binary.f32(i32 36, float %1584, float %2155)  ; FMin(a,b)
  %2353 = fsub fast float %2352, %1584
  %2354 = fmul fast float %2353, %2327
  %2355 = fadd fast float %2354, %1584
  %2356 = fadd fast float %2152, %1583
  %2357 = fmul fast float %2356, 0x3FF337FAE0000000
  %2358 = fmul fast float %1583, %1583
  %2359 = fmul fast float %2152, %2152
  %2360 = fadd fast float %2359, %2358
  %2361 = fmul fast float %2360, 0x3FE5152B00000000
  %2362 = fmul fast float %1583, 0xBFCC1F85E0000000
  %2363 = fmul fast float %2362, %2152
  %2364 = fadd fast float %2363, 0xBFE1363700000000
  %2365 = fadd fast float %2364, %2357
  %2366 = fsub fast float %2365, %2361
  %2367 = fmul fast float %2356, 0x3FBA6F0D00000000
  %2368 = fmul fast float %2360, 0x3FD0432880000000
  %2369 = fmul fast float %1583, 0xBFEF110800000000
  %2370 = fmul fast float %2369, %2152
  %2371 = fadd fast float %2370, 1.000000e+00
  %2372 = fsub fast float %2371, %2367
  %2373 = fadd fast float %2372, %2368
  %2374 = fdiv fast float %2366, %2373
  %2375 = call float @dx.op.unary.f32(i32 7, float %2374)  ; Saturate(value)
  %2376 = fsub fast float %2375, %1583
  %2377 = fmul fast float %2376, %2330
  %2378 = fadd fast float %2377, %1583
  br label %2393

; <label>:2379                                    ; preds = %2345
  %2380 = icmp eq i32 %2319, 8
  br i1 %2380, label %2381, label %2393

; <label>:2381                                    ; preds = %2379
  %2382 = fmul fast float %2324, %2153
  %2383 = fmul fast float %2324, %2154
  %2384 = fadd fast float %2382, %1574
  %2385 = fadd fast float %2383, %1575
  %2386 = call float @dx.op.binary.f32(i32 36, float %1584, float %2155)  ; FMin(a,b)
  %2387 = fsub fast float %2386, %1584
  %2388 = fmul fast float %2387, %2327
  %2389 = fadd fast float %2388, %1584
  %2390 = fsub fast float %2152, %1583
  %2391 = fmul fast float %2330, %2390
  %2392 = fadd fast float %2391, %1583
  br label %2393

; <label>:2393                                    ; preds = %2381, %2379, %2347, %2332, %2310, %1860, %1573
  %2394 = phi float [ %1574, %2310 ], [ %1574, %1860 ], [ %1574, %1573 ], [ %2337, %2332 ], [ %2350, %2347 ], [ %1574, %2379 ], [ %2384, %2381 ]
  %2395 = phi float [ %1575, %2310 ], [ %1575, %1860 ], [ %1575, %1573 ], [ %2338, %2332 ], [ %2351, %2347 ], [ %1575, %2379 ], [ %2385, %2381 ]
  %2396 = phi float [ %2311, %2310 ], [ %1576, %1860 ], [ %1576, %1573 ], [ %2311, %2332 ], [ %2311, %2347 ], [ %2311, %2379 ], [ %2311, %2381 ]
  %2397 = phi float [ %2312, %2310 ], [ %1577, %1860 ], [ %1577, %1573 ], [ %2312, %2332 ], [ %2312, %2347 ], [ %2312, %2379 ], [ %2312, %2381 ]
  %2398 = phi float [ %2313, %2310 ], [ %1578, %1860 ], [ %1578, %1573 ], [ %2313, %2332 ], [ %2313, %2347 ], [ %2313, %2379 ], [ %2313, %2381 ]
  %2399 = phi float [ %2314, %2310 ], [ %1579, %1860 ], [ %1579, %1573 ], [ %2314, %2332 ], [ %2314, %2347 ], [ %2314, %2379 ], [ %2314, %2381 ]
  %2400 = phi float [ %2315, %2310 ], [ %1580, %1860 ], [ %1580, %1573 ], [ %2315, %2332 ], [ %2315, %2347 ], [ %2315, %2379 ], [ %2315, %2381 ]
  %2401 = phi float [ %2316, %2310 ], [ %1581, %1860 ], [ %1581, %1573 ], [ %2316, %2332 ], [ %2316, %2347 ], [ %2316, %2379 ], [ %2316, %2381 ]
  %2402 = phi float [ %2317, %2310 ], [ %1582, %1860 ], [ %1582, %1573 ], [ %2317, %2332 ], [ %2317, %2347 ], [ %2317, %2379 ], [ %2317, %2381 ]
  %2403 = phi float [ %1583, %2310 ], [ %1583, %1860 ], [ %1583, %1573 ], [ %2344, %2332 ], [ %2378, %2347 ], [ %1583, %2379 ], [ %2392, %2381 ]
  %2404 = phi float [ %1584, %2310 ], [ %1584, %1860 ], [ %1584, %1573 ], [ %2341, %2332 ], [ %2355, %2347 ], [ %1584, %2379 ], [ %2389, %2381 ]
  %2405 = phi float [ %2318, %2310 ], [ %1585, %1860 ], [ %1585, %1573 ], [ %2318, %2332 ], [ %2318, %2347 ], [ %2318, %2379 ], [ %2318, %2381 ]
  %2406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2407 = extractvalue %dx.types.CBufRet.f32 %2406, 0
  %2408 = call float @dx.op.dot2.f32(i32 54, float %2394, float %2395, float %2394, float %2395)  ; Dot2(ax,ay,bx,by)
  %2409 = fmul fast float %2408, 0x3FE3333340000000
  %2410 = fsub fast float 1.000000e+00, %2409
  %2411 = call float @dx.op.dot3.f32(i32 55, float %2394, float %2395, float %2410, float %2394, float %2395, float %2410)  ; Dot3(ax,ay,az,bx,by,bz)
  %2412 = call float @dx.op.unary.f32(i32 25, float %2411)  ; Rsqrt(value)
  %2413 = fmul fast float %2412, %2394
  %2414 = fmul fast float %2412, %2395
  %2415 = fmul fast float %2410, %2412
  %2416 = fmul fast float %2415, %56
  %2417 = fmul fast float %2415, %57
  %2418 = fmul fast float %2415, %58
  %2419 = fmul fast float %2413, %52
  %2420 = fmul fast float %2413, %53
  %2421 = fmul fast float %2413, %54
  %2422 = fadd fast float %2416, %2419
  %2423 = fadd fast float %2417, %2420
  %2424 = fadd fast float %2418, %2421
  %2425 = fmul fast float %2414, %86
  %2426 = fmul fast float %2414, %87
  %2427 = fmul fast float %2414, %88
  %2428 = fadd fast float %2422, %2425
  %2429 = fadd fast float %2423, %2426
  %2430 = fadd fast float %2424, %2427
  %2431 = call float @dx.op.dot3.f32(i32 55, float %2428, float %2429, float %2430, float %2428, float %2429, float %2430)  ; Dot3(ax,ay,az,bx,by,bz)
  %2432 = call float @dx.op.unary.f32(i32 25, float %2431)  ; Rsqrt(value)
  %2433 = fmul fast float %2428, %2432
  %2434 = fmul fast float %2429, %2432
  %2435 = fmul fast float %2430, %2432
  %2436 = call float @dx.op.unary.f32(i32 83, float %122)  ; DerivCoarseX(value)
  %2437 = call float @dx.op.unary.f32(i32 83, float %123)  ; DerivCoarseX(value)
  %2438 = call float @dx.op.unary.f32(i32 83, float %124)  ; DerivCoarseX(value)
  %2439 = call float @dx.op.unary.f32(i32 84, float %122)  ; DerivCoarseY(value)
  %2440 = call float @dx.op.unary.f32(i32 84, float %123)  ; DerivCoarseY(value)
  %2441 = call float @dx.op.unary.f32(i32 84, float %124)  ; DerivCoarseY(value)
  %2442 = fadd fast float %2436, %122
  %2443 = fadd fast float %2437, %123
  %2444 = fadd fast float %2438, %124
  %2445 = fadd fast float %2439, %122
  %2446 = fadd fast float %2440, %123
  %2447 = fadd fast float %2441, %124
  %2448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %2449 = extractvalue %dx.types.CBufRet.f32 %2448, 0
  %2450 = extractvalue %dx.types.CBufRet.f32 %2448, 1
  %2451 = extractvalue %dx.types.CBufRet.f32 %2448, 2
  %2452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2453 = extractvalue %dx.types.CBufRet.f32 %2452, 2
  %2454 = extractvalue %dx.types.CBufRet.f32 %2452, 3
  %2455 = fmul fast float %2449, %75
  %2456 = fmul fast float %2455, %2453
  %2457 = fmul fast float %2450, %76
  %2458 = fmul fast float %2457, %2454
  %2459 = fptoui float %2456 to i32
  %2460 = fptoui float %2458 to i32
  %2461 = fadd fast float %2449, -1.000000e+00
  %2462 = fadd fast float %2450, -1.000000e+00
  %2463 = fptoui float %2461 to i32
  %2464 = fptoui float %2462 to i32
  %2465 = call i32 @dx.op.binary.i32(i32 40, i32 %2459, i32 %2463)  ; UMin(a,b)
  %2466 = call i32 @dx.op.binary.i32(i32 40, i32 %2460, i32 %2464)  ; UMin(a,b)
  %2467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2468 = extractvalue %dx.types.CBufRet.f32 %2467, 2
  %2469 = extractvalue %dx.types.CBufRet.f32 %2467, 3
  %2470 = fmul fast float %2468, %70
  %2471 = fsub fast float %2470, %2469
  %2472 = fadd fast float %2451, -1.000000e+00
  %2473 = call float @dx.op.binary.f32(i32 36, float %2471, float %2472)  ; FMin(a,b)
  %2474 = fptoui float %2473 to i32
  %2475 = fptoui float %2449 to i32
  %2476 = fptoui float %2450 to i32
  %2477 = mul i32 %2474, %2476
  %2478 = add i32 %2477, %2466
  %2479 = mul i32 %2478, %2475
  %2480 = add i32 %2479, %2465
  %2481 = shl i32 %2480, 2
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2481, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = and i32 %2483, 1023
  %2485 = lshr i32 %2483, 10
  %2486 = icmp eq i32 %2484, 0
  br i1 %2486, label %2912, label %2487

; <label>:2487                                    ; preds = %2393
  %2488 = and i32 %2483, 1023
  br label %2489

; <label>:2489                                    ; preds = %2615, %2487
  %2490 = phi float [ %2616, %2615 ], [ 0.000000e+00, %2487 ]
  %2491 = phi float [ %2617, %2615 ], [ %2407, %2487 ]
  %2492 = phi float [ %2618, %2615 ], [ %2405, %2487 ]
  %2493 = phi float [ %2619, %2615 ], [ 0.000000e+00, %2487 ]
  %2494 = phi float [ %2620, %2615 ], [ 0.000000e+00, %2487 ]
  %2495 = phi float [ %2621, %2615 ], [ %2399, %2487 ]
  %2496 = phi float [ %2622, %2615 ], [ %2400, %2487 ]
  %2497 = phi float [ %2623, %2615 ], [ %2401, %2487 ]
  %2498 = phi float [ %2624, %2615 ], [ %2433, %2487 ]
  %2499 = phi float [ %2625, %2615 ], [ %2434, %2487 ]
  %2500 = phi float [ %2626, %2615 ], [ %2435, %2487 ]
  %2501 = phi float [ %2627, %2615 ], [ %2404, %2487 ]
  %2502 = phi float [ %2628, %2615 ], [ %2403, %2487 ]
  %2503 = phi float [ %2629, %2615 ], [ 0.000000e+00, %2487 ]
  %2504 = phi float [ %2630, %2615 ], [ %2402, %2487 ]
  %2505 = phi float [ %2631, %2615 ], [ %2396, %2487 ]
  %2506 = phi float [ %2632, %2615 ], [ %2397, %2487 ]
  %2507 = phi float [ %2633, %2615 ], [ %2398, %2487 ]
  %2508 = phi i32 [ %2565, %2615 ], [ 0, %2487 ]
  %2509 = add nuw nsw i32 %2508, %2485
  %2510 = shl i32 %2509, 2
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2510, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = shl i32 %2512, 8
  %2514 = or i32 %2513, 48
  %2515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2514, i32 undef)  ; BufferLoad(srv,index,wot)
  %2516 = extractvalue %dx.types.ResRet.f32 %2515, 0
  %2517 = extractvalue %dx.types.ResRet.f32 %2515, 1
  %2518 = extractvalue %dx.types.ResRet.f32 %2515, 2
  %2519 = extractvalue %dx.types.ResRet.f32 %2515, 3
  %2520 = or i32 %2513, 64
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2520, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = extractvalue %dx.types.ResRet.i32 %2521, 1
  %2524 = or i32 %2513, 80
  %2525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2524, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.f32 %2525, 2
  %2527 = extractvalue %dx.types.ResRet.f32 %2525, 3
  %2528 = or i32 %2513, 96
  %2529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2530 = extractvalue %dx.types.ResRet.f32 %2529, 0
  %2531 = extractvalue %dx.types.ResRet.f32 %2529, 1
  %2532 = extractvalue %dx.types.ResRet.f32 %2529, 2
  %2533 = extractvalue %dx.types.ResRet.f32 %2529, 3
  %2534 = or i32 %2513, 112
  %2535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.f32 %2535, 2
  %2537 = or i32 %2513, 128
  %2538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2537, i32 undef)  ; BufferLoad(srv,index,wot)
  %2539 = extractvalue %dx.types.ResRet.f32 %2538, 0
  %2540 = extractvalue %dx.types.ResRet.f32 %2538, 1
  %2541 = extractvalue %dx.types.ResRet.f32 %2538, 2
  %2542 = extractvalue %dx.types.ResRet.f32 %2538, 3
  %2543 = or i32 %2513, 144
  %2544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2543, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.f32 %2544, 0
  %2546 = extractvalue %dx.types.ResRet.f32 %2544, 1
  %2547 = extractvalue %dx.types.ResRet.f32 %2544, 2
  %2548 = extractvalue %dx.types.ResRet.f32 %2544, 3
  %2549 = or i32 %2513, 160
  %2550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2549, i32 undef)  ; BufferLoad(srv,index,wot)
  %2551 = extractvalue %dx.types.ResRet.f32 %2550, 0
  %2552 = extractvalue %dx.types.ResRet.f32 %2550, 1
  %2553 = extractvalue %dx.types.ResRet.f32 %2550, 2
  %2554 = extractvalue %dx.types.ResRet.f32 %2550, 3
  %2555 = or i32 %2513, 192
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2555, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = or i32 %2513, 208
  %2559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2558, i32 undef)  ; BufferLoad(srv,index,wot)
  %2560 = extractvalue %dx.types.ResRet.f32 %2559, 0
  %2561 = or i32 %2513, 248
  %2562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.f32 %2562, 0
  %2564 = extractvalue %dx.types.ResRet.f32 %2562, 1
  %2565 = add nuw nsw i32 %2508, 1
  %2566 = bitcast float %2519 to i32
  %2567 = and i32 %2566, 2560
  %2568 = icmp eq i32 %2567, 0
  %2569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2513, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.f32 %2569, 0
  %2571 = extractvalue %dx.types.ResRet.f32 %2569, 1
  %2572 = extractvalue %dx.types.ResRet.f32 %2569, 2
  %2573 = extractvalue %dx.types.ResRet.f32 %2569, 3
  %2574 = call float @dx.op.dot4.f32(i32 56, float %2570, float %2571, float %2572, float %2573, float %122, float %123, float %124, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2575 = or i32 %2513, 16
  %2576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.f32 %2576, 0
  %2578 = extractvalue %dx.types.ResRet.f32 %2576, 1
  %2579 = extractvalue %dx.types.ResRet.f32 %2576, 2
  %2580 = extractvalue %dx.types.ResRet.f32 %2576, 3
  %2581 = call float @dx.op.dot4.f32(i32 56, float %2577, float %2578, float %2579, float %2580, float %122, float %123, float %124, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2582 = or i32 %2513, 32
  %2583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.f32 %2583, 0
  %2585 = extractvalue %dx.types.ResRet.f32 %2583, 1
  %2586 = extractvalue %dx.types.ResRet.f32 %2583, 2
  %2587 = extractvalue %dx.types.ResRet.f32 %2583, 3
  %2588 = call float @dx.op.dot4.f32(i32 56, float %2584, float %2585, float %2586, float %2587, float %122, float %123, float %124, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2589 = call float @dx.op.unary.f32(i32 27, float %2574)  ; Round_ni(value)
  %2590 = call float @dx.op.unary.f32(i32 6, float %2589)  ; FAbs(value)
  %2591 = call float @dx.op.unary.f32(i32 27, float %2581)  ; Round_ni(value)
  %2592 = call float @dx.op.unary.f32(i32 6, float %2591)  ; FAbs(value)
  %2593 = call float @dx.op.unary.f32(i32 6, float %2588)  ; FAbs(value)
  %2594 = call float @dx.op.unary.f32(i32 27, float %2593)  ; Round_ni(value)
  %2595 = fadd fast float %2592, %2590
  %2596 = fadd fast float %2595, %2594
  %2597 = fcmp fast oeq float %2596, 0.000000e+00
  %2598 = call float @dx.op.dot4.f32(i32 56, float %2570, float %2571, float %2572, float %2573, float %2442, float %2443, float %2444, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2599 = call float @dx.op.dot4.f32(i32 56, float %2577, float %2578, float %2579, float %2580, float %2442, float %2443, float %2444, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2600 = call float @dx.op.dot4.f32(i32 56, float %2570, float %2571, float %2572, float %2573, float %2445, float %2446, float %2447, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2601 = call float @dx.op.dot4.f32(i32 56, float %2577, float %2578, float %2579, float %2580, float %2445, float %2446, float %2447, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2602 = fsub fast float %2598, %2574
  %2603 = fsub fast float %2600, %2574
  %2604 = fsub fast float %2599, %2581
  %2605 = fsub fast float %2601, %2581
  %2606 = call float @dx.op.dot3.f32(i32 55, float %2516, float %2517, float %2518, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %2607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2608 = extractvalue %dx.types.CBufRet.f32 %2607, 2
  %2609 = fadd fast float %2608, %2606
  %2610 = call float @dx.op.unary.f32(i32 7, float %2609)  ; Saturate(value)
  %2611 = extractvalue %dx.types.CBufRet.f32 %2607, 0
  %2612 = fcmp fast ogt float %2610, %2611
  %2613 = and i1 %2597, %2612
  %2614 = and i1 %2568, %2613
  br i1 %2614, label %2635, label %2615

; <label>:2615                                    ; preds = %2898, %2716, %2635, %2489
  %2616 = phi float [ %2490, %2635 ], [ %2719, %2716 ], [ %2719, %2898 ], [ %2490, %2489 ]
  %2617 = phi float [ %2491, %2635 ], [ %2491, %2716 ], [ %2873, %2898 ], [ %2491, %2489 ]
  %2618 = phi float [ %2492, %2635 ], [ %2492, %2716 ], [ %2871, %2898 ], [ %2492, %2489 ]
  %2619 = phi float [ %2493, %2635 ], [ %2493, %2716 ], [ %2843, %2898 ], [ %2493, %2489 ]
  %2620 = phi float [ %2494, %2635 ], [ %2494, %2716 ], [ %2841, %2898 ], [ %2494, %2489 ]
  %2621 = phi float [ %2495, %2635 ], [ %2495, %2716 ], [ %2908, %2898 ], [ %2495, %2489 ]
  %2622 = phi float [ %2496, %2635 ], [ %2496, %2716 ], [ %2909, %2898 ], [ %2496, %2489 ]
  %2623 = phi float [ %2497, %2635 ], [ %2497, %2716 ], [ %2910, %2898 ], [ %2497, %2489 ]
  %2624 = phi float [ %2498, %2635 ], [ %2498, %2716 ], [ %2822, %2898 ], [ %2498, %2489 ]
  %2625 = phi float [ %2499, %2635 ], [ %2499, %2716 ], [ %2823, %2898 ], [ %2499, %2489 ]
  %2626 = phi float [ %2500, %2635 ], [ %2500, %2716 ], [ %2824, %2898 ], [ %2500, %2489 ]
  %2627 = phi float [ %2501, %2635 ], [ %2501, %2716 ], [ %2851, %2898 ], [ %2501, %2489 ]
  %2628 = phi float [ %2502, %2635 ], [ %2502, %2716 ], [ %2848, %2898 ], [ %2502, %2489 ]
  %2629 = phi float [ %2503, %2635 ], [ %2503, %2716 ], [ %2845, %2898 ], [ %2503, %2489 ]
  %2630 = phi float [ %2504, %2635 ], [ %2504, %2716 ], [ %2839, %2898 ], [ %2504, %2489 ]
  %2631 = phi float [ %2505, %2635 ], [ %2505, %2716 ], [ %2834, %2898 ], [ %2505, %2489 ]
  %2632 = phi float [ %2506, %2635 ], [ %2506, %2716 ], [ %2835, %2898 ], [ %2506, %2489 ]
  %2633 = phi float [ %2507, %2635 ], [ %2507, %2716 ], [ %2836, %2898 ], [ %2507, %2489 ]
  %2634 = icmp eq i32 %2565, %2488
  br i1 %2634, label %2911, label %2489

; <label>:2635                                    ; preds = %2489
  %2636 = extractvalue %dx.types.ResRet.f32 %2535, 3
  %2637 = extractvalue %dx.types.ResRet.f32 %2535, 1
  %2638 = extractvalue %dx.types.ResRet.f32 %2535, 0
  %2639 = extractvalue %dx.types.ResRet.f32 %2525, 1
  %2640 = extractvalue %dx.types.ResRet.f32 %2525, 0
  %2641 = extractvalue %dx.types.ResRet.i32 %2521, 3
  %2642 = extractvalue %dx.types.ResRet.i32 %2521, 2
  %2643 = add i32 %2641, 0
  %2644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2643, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2646 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2644, %dx.types.Handle %2645, float %2574, float %2581, float undef, float undef, i32 0, i32 0, i32 undef, float %2602, float %2604, float undef, float %2603, float %2605, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2647 = extractvalue %dx.types.ResRet.f32 %2646, 0
  %2648 = fmul fast float %2647, %2640
  %2649 = fadd fast float %2648, %2639
  %2650 = call float @dx.op.unary.f32(i32 7, float %2649)  ; Saturate(value)
  %2651 = fmul fast float %2574, %2530
  %2652 = call float @dx.op.tertiary.f32(i32 46, float %2531, float %2581, float %2651)  ; FMad(a,b,c)
  %2653 = fadd fast float %2652, %2638
  %2654 = fmul fast float %2574, %2532
  %2655 = call float @dx.op.tertiary.f32(i32 46, float %2533, float %2581, float %2654)  ; FMad(a,b,c)
  %2656 = fadd fast float %2655, %2637
  %2657 = fmul fast float %2602, %2530
  %2658 = call float @dx.op.tertiary.f32(i32 46, float %2531, float %2604, float %2657)  ; FMad(a,b,c)
  %2659 = fmul fast float %2602, %2532
  %2660 = call float @dx.op.tertiary.f32(i32 46, float %2533, float %2604, float %2659)  ; FMad(a,b,c)
  %2661 = fmul fast float %2603, %2530
  %2662 = call float @dx.op.tertiary.f32(i32 46, float %2531, float %2605, float %2661)  ; FMad(a,b,c)
  %2663 = fmul fast float %2603, %2532
  %2664 = call float @dx.op.tertiary.f32(i32 46, float %2533, float %2605, float %2663)  ; FMad(a,b,c)
  %2665 = add i32 %2642, 0
  %2666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2665, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2667 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2666, %dx.types.Handle %2645, float %2653, float %2656, float undef, float undef, i32 0, i32 0, i32 undef, float %2658, float %2660, float undef, float %2662, float %2664, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2668 = extractvalue %dx.types.ResRet.f32 %2667, 0
  %2669 = and i32 %2566, 1024
  %2670 = icmp ne i32 %2669, 0
  %2671 = fcmp fast ogt float %2668, 0x3FE0101020000000
  %2672 = uitofp i1 %2671 to float
  %2673 = select i1 %2670, float %2672, float %2668
  %2674 = and i32 %2566, 8192
  %2675 = icmp ne i32 %2674, 0
  %2676 = select i1 %2675, float %2636, float 1.000000e+00
  %2677 = fmul fast float %2574, 2.000000e+00
  %2678 = fadd fast float %2677, -1.000000e+00
  %2679 = call float @dx.op.unary.f32(i32 6, float %2678)  ; FAbs(value)
  %2680 = fmul fast float %2679, %2563
  %2681 = fsub fast float %2680, %2563
  %2682 = call float @dx.op.unary.f32(i32 7, float %2681)  ; Saturate(value)
  %2683 = fmul fast float %2581, 2.000000e+00
  %2684 = fadd fast float %2683, -1.000000e+00
  %2685 = call float @dx.op.unary.f32(i32 6, float %2684)  ; FAbs(value)
  %2686 = fmul fast float %2685, %2564
  %2687 = fsub fast float %2686, %2564
  %2688 = call float @dx.op.unary.f32(i32 7, float %2687)  ; Saturate(value)
  %2689 = fmul fast float %2593, %2526
  %2690 = fsub fast float %2689, %2526
  %2691 = call float @dx.op.unary.f32(i32 7, float %2690)  ; Saturate(value)
  %2692 = fmul fast float %2650, %2676
  %2693 = fmul fast float %2692, %2647
  %2694 = fmul fast float %2693, %2682
  %2695 = fmul fast float %2694, %2673
  %2696 = fmul fast float %2695, %2688
  %2697 = fmul fast float %2696, %2691
  %2698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2699 = extractvalue %dx.types.CBufRet.f32 %2698, 1
  %2700 = extractvalue %dx.types.CBufRet.f32 %2698, 0
  %2701 = fsub fast float %2610, %2700
  %2702 = fmul fast float %2701, %2699
  %2703 = call float @dx.op.unary.f32(i32 7, float %2702)  ; Saturate(value)
  %2704 = fmul fast float %2697, %2527
  %2705 = fadd fast float %2697, %2527
  %2706 = fmul fast float %2705, %2536
  %2707 = fsub fast float %2706, %2536
  %2708 = call float @dx.op.unary.f32(i32 7, float %2707)  ; Saturate(value)
  %2709 = and i32 %2566, 128
  %2710 = icmp ne i32 %2709, 0
  %2711 = select i1 %2710, float %2708, float %2704
  %2712 = fmul fast float %2711, %2703
  %2713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2714 = extractvalue %dx.types.CBufRet.f32 %2713, 0
  %2715 = fcmp fast ugt float %2712, %2714
  br i1 %2715, label %2716, label %2615

; <label>:2716                                    ; preds = %2635
  %2717 = select i1 %2675, float %2712, float 0.000000e+00
  %2718 = fadd fast float %2717, %2490
  %2719 = call float @dx.op.unary.f32(i32 7, float %2718)  ; Saturate(value)
  br i1 %2675, label %2615, label %2720

; <label>:2720                                    ; preds = %2716
  %2721 = and i32 %2566, 4
  %2722 = and i32 %2566, 8
  %2723 = add i32 %2522, 0
  %2724 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2723, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2725 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2726 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2724, %dx.types.Handle %2725, float %2653, float %2656, float undef, float undef, i32 0, i32 0, i32 undef, float %2658, float %2660, float undef, float %2662, float %2664, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2727 = extractvalue %dx.types.ResRet.f32 %2726, 0
  %2728 = extractvalue %dx.types.ResRet.f32 %2726, 1
  %2729 = extractvalue %dx.types.ResRet.f32 %2726, 2
  %2730 = extractvalue %dx.types.ResRet.f32 %2726, 3
  %2731 = bitcast float %2548 to i32
  %2732 = and i32 %2731, 255
  %2733 = uitofp i32 %2732 to float
  %2734 = lshr i32 %2731, 8
  %2735 = and i32 %2734, 255
  %2736 = uitofp i32 %2735 to float
  %2737 = fmul fast float %2730, %2733
  %2738 = fadd fast float %2737, %2736
  %2739 = fmul fast float %2738, 0x3F70101000000000
  %2740 = add i32 %2523, 0
  %2741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2740, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2742 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2741, %dx.types.Handle %2725, float %2653, float %2656, float undef, float undef, i32 0, i32 0, i32 undef, float %2658, float %2660, float undef, float %2662, float %2664, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2743 = extractvalue %dx.types.ResRet.f32 %2742, 0
  %2744 = extractvalue %dx.types.ResRet.f32 %2742, 1
  %2745 = extractvalue %dx.types.ResRet.f32 %2742, 2
  %2746 = extractvalue %dx.types.ResRet.f32 %2742, 3
  %2747 = bitcast float %2542 to i32
  %2748 = and i32 %2747, 255
  %2749 = uitofp i32 %2748 to float
  %2750 = lshr i32 %2747, 8
  %2751 = and i32 %2750, 255
  %2752 = uitofp i32 %2751 to float
  %2753 = lshr i32 %2747, 16
  %2754 = and i32 %2753, 255
  %2755 = uitofp i32 %2754 to float
  %2756 = fmul fast float %2755, 0x3F70101000000000
  %2757 = fmul fast float %2743, %2749
  %2758 = fadd fast float %2757, %2752
  %2759 = fmul fast float %2758, 0x3F70101000000000
  %2760 = fadd fast float %2744, -5.000000e-01
  %2761 = fadd fast float %2746, -5.000000e-01
  %2762 = fmul fast float %2760, %2756
  %2763 = fmul fast float %2761, %2756
  %2764 = fadd fast float %2762, 5.000000e-01
  %2765 = fadd fast float %2763, 5.000000e-01
  %2766 = fmul fast float %2727, %2551
  %2767 = fmul fast float %2728, %2552
  %2768 = fmul fast float %2729, %2553
  %2769 = fmul fast float %2764, 2.000000e+00
  %2770 = fadd fast float %2769, -1.000000e+00
  %2771 = fmul fast float %2765, 2.000000e+00
  %2772 = fadd fast float %2771, -1.000000e+00
  %2773 = fadd fast float %2770, %2772
  %2774 = fmul fast float %2773, 5.000000e-01
  %2775 = fsub fast float %2770, %2772
  %2776 = fmul fast float %2775, 5.000000e-01
  %2777 = call float @dx.op.unary.f32(i32 6, float %2774)  ; FAbs(value)
  %2778 = fsub fast float 1.000000e+00, %2777
  %2779 = call float @dx.op.unary.f32(i32 6, float %2776)  ; FAbs(value)
  %2780 = fsub fast float %2778, %2779
  %2781 = call float @dx.op.dot3.f32(i32 55, float %2774, float %2776, float %2780, float %2774, float %2776, float %2780)  ; Dot3(ax,ay,az,bx,by,bz)
  %2782 = call float @dx.op.unary.f32(i32 25, float %2781)  ; Rsqrt(value)
  %2783 = fmul fast float %2774, %2782
  %2784 = fmul fast float %2776, %2782
  %2785 = fmul fast float %2782, %2780
  %2786 = fmul fast float %2785, %2516
  %2787 = fmul fast float %2785, %2517
  %2788 = fmul fast float %2785, %2518
  %2789 = fmul fast float %2783, %2539
  %2790 = fmul fast float %2783, %2540
  %2791 = fmul fast float %2783, %2541
  %2792 = fadd fast float %2789, %2786
  %2793 = fadd fast float %2790, %2787
  %2794 = fadd fast float %2791, %2788
  %2795 = fmul fast float %2784, %2545
  %2796 = fmul fast float %2784, %2546
  %2797 = fmul fast float %2784, %2547
  %2798 = fadd fast float %2792, %2795
  %2799 = fadd fast float %2793, %2796
  %2800 = fadd fast float %2794, %2797
  %2801 = call float @dx.op.dot3.f32(i32 55, float %2798, float %2799, float %2800, float %2798, float %2799, float %2800)  ; Dot3(ax,ay,az,bx,by,bz)
  %2802 = call float @dx.op.unary.f32(i32 25, float %2801)  ; Rsqrt(value)
  %2803 = fmul fast float %2798, %2802
  %2804 = fmul fast float %2799, %2802
  %2805 = fmul fast float %2800, %2802
  %2806 = icmp ne i32 %2722, 0
  %2807 = select i1 %2806, float 1.000000e+00, float 0.000000e+00
  %2808 = fmul fast float %2712, %2807
  %2809 = and i32 %2566, 1
  %2810 = icmp eq i32 %2809, 0
  br i1 %2810, label %2811, label %2815

; <label>:2811                                    ; preds = %2720
  %2812 = fsub fast float %2803, %2498
  %2813 = fsub fast float %2804, %2499
  %2814 = fsub fast float %2805, %2500
  br label %2815

; <label>:2815                                    ; preds = %2811, %2720
  %2816 = phi float [ %2812, %2811 ], [ %2803, %2720 ]
  %2817 = phi float [ %2813, %2811 ], [ %2804, %2720 ]
  %2818 = phi float [ %2814, %2811 ], [ %2805, %2720 ]
  %2819 = fmul float %2818, %2808
  %2820 = fmul float %2817, %2808
  %2821 = fmul float %2816, %2808
  %2822 = fadd fast float %2821, %2498
  %2823 = fadd fast float %2820, %2499
  %2824 = fadd fast float %2819, %2500
  %2825 = icmp ne i32 %2721, 0
  %2826 = select i1 %2825, float 1.000000e+00, float 0.000000e+00
  %2827 = fmul fast float %2712, %2826
  %2828 = fsub fast float %2766, %2505
  %2829 = fsub fast float %2767, %2506
  %2830 = fsub fast float %2768, %2507
  %2831 = fmul fast float %2828, %2827
  %2832 = fmul fast float %2829, %2827
  %2833 = fmul fast float %2830, %2827
  %2834 = fadd fast float %2831, %2505
  %2835 = fadd fast float %2832, %2506
  %2836 = fadd fast float %2833, %2507
  %2837 = fsub fast float %2739, %2504
  %2838 = fmul fast float %2837, %2827
  %2839 = fadd fast float %2838, %2504
  %2840 = fmul fast float %2827, %2494
  %2841 = fsub fast float %2494, %2840
  %2842 = fmul fast float %2827, %2493
  %2843 = fsub fast float %2493, %2842
  %2844 = fadd fast float %2712, %2503
  %2845 = call float @dx.op.unary.f32(i32 7, float %2844)  ; Saturate(value)
  %2846 = fsub fast float %2759, %2502
  %2847 = fmul fast float %2846, %2808
  %2848 = fadd fast float %2847, %2502
  %2849 = fsub fast float %2745, %2501
  %2850 = fmul fast float %2849, %2808
  %2851 = fadd fast float %2850, %2501
  %2852 = call float @dx.op.dot3.f32(i32 55, float %2766, float %2767, float %2768, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2854 = extractvalue %dx.types.CBufRet.f32 %2853, 0
  %2855 = extractvalue %dx.types.CBufRet.f32 %2853, 1
  %2856 = fmul fast float %2855, %2852
  %2857 = fadd fast float %2856, %2854
  %2858 = call float @dx.op.unary.f32(i32 7, float %2857)  ; Saturate(value)
  %2859 = bitcast float %2554 to i32
  %2860 = and i32 %2859, 65535
  %2861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2860)  ; LegacyF16ToF32(value)
  %2862 = lshr i32 %2859, 16
  %2863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2862)  ; LegacyF16ToF32(value)
  %2864 = fcmp fast oge float %2861, 0.000000e+00
  %2865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2866 = extractvalue %dx.types.CBufRet.f32 %2865, 0
  %2867 = select i1 %2864, float %2861, float %2866
  %2868 = fadd fast float %2867, %2863
  %2869 = fsub fast float %2858, %2492
  %2870 = fmul fast float %2869, %2712
  %2871 = fadd fast float %2870, %2492
  %2872 = fmul fast float %2868, %2712
  %2873 = call float @dx.op.binary.f32(i32 35, float %2491, float %2872)  ; FMax(a,b)
  %2874 = and i32 %2566, 16
  %2875 = icmp eq i32 %2874, 0
  br i1 %2875, label %2898, label %2876

; <label>:2876                                    ; preds = %2815
  %2877 = bitcast float %2560 to i32
  %2878 = add i32 %2557, 0
  %2879 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2878, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2880 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2879, %dx.types.Handle %2725, float %2653, float %2656, float undef, float undef, i32 0, i32 0, i32 undef, float %2658, float %2660, float undef, float %2662, float %2664, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2881 = extractvalue %dx.types.ResRet.f32 %2880, 0
  %2882 = extractvalue %dx.types.ResRet.f32 %2880, 1
  %2883 = extractvalue %dx.types.ResRet.f32 %2880, 2
  %2884 = and i32 %2877, 65535
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = fmul fast float %2881, %2551
  %2887 = fmul fast float %2882, %2552
  %2888 = fmul fast float %2883, %2553
  %2889 = and i32 %2566, 16384
  %2890 = icmp ne i32 %2889, 0
  %2891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2892 = extractvalue %dx.types.CBufRet.f32 %2891, 0
  %2893 = select i1 %2890, float %2892, float 1.000000e+00
  %2894 = fmul fast float %2893, %2885
  %2895 = fmul fast float %2886, %2894
  %2896 = fmul fast float %2887, %2894
  %2897 = fmul fast float %2888, %2894
  br label %2898

; <label>:2898                                    ; preds = %2876, %2815
  %2899 = phi float [ %2895, %2876 ], [ 0.000000e+00, %2815 ]
  %2900 = phi float [ %2896, %2876 ], [ 0.000000e+00, %2815 ]
  %2901 = phi float [ %2897, %2876 ], [ 0.000000e+00, %2815 ]
  %2902 = fsub fast float %2899, %2495
  %2903 = fsub fast float %2900, %2496
  %2904 = fsub fast float %2901, %2497
  %2905 = fmul fast float %2902, %2712
  %2906 = fmul fast float %2903, %2712
  %2907 = fmul fast float %2904, %2712
  %2908 = fadd fast float %2905, %2495
  %2909 = fadd fast float %2906, %2496
  %2910 = fadd fast float %2907, %2497
  br label %2615

; <label>:2911                                    ; preds = %2615
  br label %2912

; <label>:2912                                    ; preds = %2911, %2393
  %2913 = phi float [ 0.000000e+00, %2393 ], [ %2616, %2911 ]
  %2914 = phi float [ %2407, %2393 ], [ %2617, %2911 ]
  %2915 = phi float [ %2405, %2393 ], [ %2618, %2911 ]
  %2916 = phi float [ 0.000000e+00, %2393 ], [ %2619, %2911 ]
  %2917 = phi float [ 0.000000e+00, %2393 ], [ %2620, %2911 ]
  %2918 = phi float [ %2399, %2393 ], [ %2621, %2911 ]
  %2919 = phi float [ %2400, %2393 ], [ %2622, %2911 ]
  %2920 = phi float [ %2401, %2393 ], [ %2623, %2911 ]
  %2921 = phi float [ %2433, %2393 ], [ %2624, %2911 ]
  %2922 = phi float [ %2434, %2393 ], [ %2625, %2911 ]
  %2923 = phi float [ %2435, %2393 ], [ %2626, %2911 ]
  %2924 = phi float [ %2404, %2393 ], [ %2627, %2911 ]
  %2925 = phi float [ %2403, %2393 ], [ %2628, %2911 ]
  %2926 = phi float [ 0.000000e+00, %2393 ], [ %2629, %2911 ]
  %2927 = phi float [ %2402, %2393 ], [ %2630, %2911 ]
  %2928 = phi float [ %2396, %2393 ], [ %2631, %2911 ]
  %2929 = phi float [ %2397, %2393 ], [ %2632, %2911 ]
  %2930 = phi float [ %2398, %2393 ], [ %2633, %2911 ]
  %2931 = call float @dx.op.dot3.f32(i32 55, float %2921, float %2922, float %2923, float %2921, float %2922, float %2923)  ; Dot3(ax,ay,az,bx,by,bz)
  %2932 = call float @dx.op.unary.f32(i32 25, float %2931)  ; Rsqrt(value)
  %2933 = fmul fast float %2932, %2921
  %2934 = fmul fast float %2932, %2922
  %2935 = fmul fast float %2932, %2923
  %2936 = fadd fast float %2926, %762
  %2937 = call float @dx.op.unary.f32(i32 7, float %2936)  ; Saturate(value)
  %2938 = call float @dx.op.dot3.f32(i32 55, float %2933, float %2934, float %2935, float %2933, float %2934, float %2935)  ; Dot3(ax,ay,az,bx,by,bz)
  %2939 = call float @dx.op.unary.f32(i32 25, float %2938)  ; Rsqrt(value)
  %2940 = fmul fast float %2939, %2933
  %2941 = fmul fast float %2939, %2934
  %2942 = fmul fast float %2939, %2935
  %2943 = fadd fast float %2927, 0xBFB99999A0000000
  %2944 = call float @dx.op.unary.f32(i32 7, float %2943)  ; Saturate(value)
  %2945 = fmul fast float %2944, 0x3FF1C71C80000000
  %2946 = call float @dx.op.binary.f32(i32 36, float %2927, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2947 = fsub fast float 1.000000e+00, %2945
  %2948 = call float @dx.op.unary.f32(i32 7, float %2947)  ; Saturate(value)
  %2949 = fmul fast float %2948, %2928
  %2950 = fmul fast float %2948, %2929
  %2951 = fmul fast float %2948, %2930
  %2952 = call float @dx.op.unary.f32(i32 7, float %2949)  ; Saturate(value)
  %2953 = call float @dx.op.unary.f32(i32 7, float %2950)  ; Saturate(value)
  %2954 = call float @dx.op.unary.f32(i32 7, float %2951)  ; Saturate(value)
  %2955 = fmul fast float %2945, %2928
  %2956 = fmul fast float %2945, %2929
  %2957 = fmul fast float %2945, %2930
  %2958 = fadd fast float %2955, %2946
  %2959 = fadd fast float %2956, %2946
  %2960 = fadd fast float %2957, %2946
  %2961 = call float @dx.op.unary.f32(i32 7, float %2958)  ; Saturate(value)
  %2962 = call float @dx.op.unary.f32(i32 7, float %2959)  ; Saturate(value)
  %2963 = call float @dx.op.unary.f32(i32 7, float %2960)  ; Saturate(value)
  %2964 = call float @dx.op.unary.f32(i32 7, float %2925)  ; Saturate(value)
  %2965 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2966 = extractvalue %dx.types.CBufRet.i32 %2965, 3
  %2967 = and i32 %2966, 8
  %2968 = icmp ne i32 %2967, 0
  %2969 = call float @dx.op.binary.f32(i32 35, float %2952, float %2928)  ; FMax(a,b)
  %2970 = call float @dx.op.binary.f32(i32 35, float %2953, float %2928)  ; FMax(a,b)
  %2971 = call float @dx.op.binary.f32(i32 35, float %2954, float %2928)  ; FMax(a,b)
  %2972 = call float @dx.op.dot3.f32(i32 55, float %2952, float %2953, float %2954, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2973 = select i1 %193, float %2928, float %2952
  %2974 = select i1 %193, float %2972, float %2953
  %2975 = select i1 %193, float 1.000000e+00, float %2954
  %2976 = select i1 %2968, float %2969, float %2973
  %2977 = select i1 %2968, float %2970, float %2974
  %2978 = select i1 %2968, float %2971, float %2975
  %2979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2980 = extractvalue %dx.types.CBufRet.f32 %2979, 0
  %2981 = extractvalue %dx.types.CBufRet.f32 %2979, 1
  %2982 = extractvalue %dx.types.CBufRet.f32 %2979, 2
  %2983 = fadd fast float %2980, %122
  %2984 = fadd fast float %2981, %123
  %2985 = fadd fast float %2982, %124
  %2986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2987 = extractvalue %dx.types.CBufRet.f32 %2986, 0
  %2988 = extractvalue %dx.types.CBufRet.f32 %2986, 1
  %2989 = fsub fast float %2983, %2987
  %2990 = fsub fast float %2984, %2988
  %2991 = fmul fast float %2989, %2989
  %2992 = fmul fast float %2990, %2990
  %2993 = fadd fast float %2991, %2992
  %2994 = call float @dx.op.unary.f32(i32 24, float %2993)  ; Sqrt(value)
  %2995 = extractvalue %dx.types.CBufRet.f32 %2986, 2
  %2996 = fcmp fast olt float %2994, %2995
  br i1 %2996, label %2997, label %3064

; <label>:2997                                    ; preds = %2912
  %2998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2999 = extractvalue %dx.types.CBufRet.f32 %2998, 0
  %3000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3001 = extractvalue %dx.types.CBufRet.f32 %3000, 0
  %3002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3003 = extractvalue %dx.types.CBufRet.f32 %3002, 0
  %3004 = extractvalue %dx.types.CBufRet.f32 %2998, 1
  %3005 = extractvalue %dx.types.CBufRet.f32 %3000, 1
  %3006 = extractvalue %dx.types.CBufRet.f32 %3002, 1
  %3007 = extractvalue %dx.types.CBufRet.f32 %2998, 3
  %3008 = extractvalue %dx.types.CBufRet.f32 %3000, 3
  %3009 = extractvalue %dx.types.CBufRet.f32 %3002, 3
  %3010 = fadd fast float %3007, %2983
  %3011 = fadd fast float %3008, %2984
  %3012 = fadd fast float %3009, %2985
  %3013 = fmul fast float %3010, %2999
  %3014 = call float @dx.op.tertiary.f32(i32 46, float %3011, float %3001, float %3013)  ; FMad(a,b,c)
  %3015 = call float @dx.op.tertiary.f32(i32 46, float %3012, float %3003, float %3014)  ; FMad(a,b,c)
  %3016 = fmul fast float %3010, %3004
  %3017 = call float @dx.op.tertiary.f32(i32 46, float %3011, float %3005, float %3016)  ; FMad(a,b,c)
  %3018 = call float @dx.op.tertiary.f32(i32 46, float %3012, float %3006, float %3017)  ; FMad(a,b,c)
  %3019 = fsub fast float %3015, %3007
  %3020 = fsub fast float %3018, %3008
  %3021 = fsub fast float %3019, %2987
  %3022 = fadd fast float %3021, %2995
  %3023 = fsub fast float %3020, %2988
  %3024 = fadd fast float %3023, %2995
  %3025 = extractvalue %dx.types.CBufRet.f32 %2986, 3
  %3026 = fmul fast float %3022, %3025
  %3027 = fmul fast float %3024, %3025
  %3028 = call float @dx.op.unary.f32(i32 7, float %3026)  ; Saturate(value)
  %3029 = call float @dx.op.unary.f32(i32 7, float %3027)  ; Saturate(value)
  %3030 = fsub fast float 1.000000e+00, %3028
  %3031 = fsub fast float 1.000000e+00, %3029
  %3032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %3030, float %3031, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3033 = extractvalue %dx.types.ResRet.f32 %3032, 0
  %3034 = fcmp fast ugt float %3033, 0.000000e+00
  br i1 %3034, label %3035, label %3338

; <label>:3035                                    ; preds = %2997
  %3036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3037 = extractvalue %dx.types.CBufRet.f32 %3036, 2
  %3038 = fmul fast float %3037, %3033
  %3039 = extractvalue %dx.types.CBufRet.f32 %3036, 3
  %3040 = fadd fast float %3039, %3038
  %3041 = extractvalue %dx.types.CBufRet.f32 %3002, 2
  %3042 = fadd fast float %3040, %3009
  %3043 = fmul fast float %3015, %3003
  %3044 = call float @dx.op.tertiary.f32(i32 46, float %3018, float %3006, float %3043)  ; FMad(a,b,c)
  %3045 = call float @dx.op.tertiary.f32(i32 46, float %3042, float %3041, float %3044)  ; FMad(a,b,c)
  %3046 = fsub fast float %3045, %3009
  %3047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3048 = extractvalue %dx.types.CBufRet.f32 %3047, 2
  %3049 = fsub fast float %3046, %3048
  %3050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %3030, float %3031, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3051 = extractvalue %dx.types.ResRet.f32 %3050, 0
  %3052 = extractvalue %dx.types.ResRet.f32 %3050, 1
  %3053 = extractvalue %dx.types.ResRet.f32 %3050, 2
  %3054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %3030, float %3031, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3055 = extractvalue %dx.types.ResRet.f32 %3054, 0
  %3056 = extractvalue %dx.types.ResRet.f32 %3054, 1
  %3057 = extractvalue %dx.types.ResRet.f32 %3054, 2
  %3058 = fadd fast float %3055, %3051
  %3059 = fmul fast float %3058, 0x3F847AE140000000
  %3060 = fadd fast float %3056, %3052
  %3061 = fmul fast float %3060, 0x3F847AE140000000
  %3062 = fadd fast float %3057, %3053
  %3063 = fmul fast float %3062, 0x3F847AE140000000
  br label %3338

; <label>:3064                                    ; preds = %2912
  %3065 = and i32 %169, 1
  %3066 = icmp eq i32 %3065, 0
  br i1 %3066, label %3338, label %3067

; <label>:3067                                    ; preds = %3064
  %3068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3069 = extractvalue %dx.types.CBufRet.f32 %3068, 0
  %3070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3071 = extractvalue %dx.types.CBufRet.f32 %3070, 0
  %3072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3073 = extractvalue %dx.types.CBufRet.f32 %3072, 0
  %3074 = extractvalue %dx.types.CBufRet.f32 %3068, 1
  %3075 = extractvalue %dx.types.CBufRet.f32 %3070, 1
  %3076 = extractvalue %dx.types.CBufRet.f32 %3072, 1
  %3077 = extractvalue %dx.types.CBufRet.f32 %3068, 3
  %3078 = extractvalue %dx.types.CBufRet.f32 %3070, 3
  %3079 = extractvalue %dx.types.CBufRet.f32 %3072, 3
  %3080 = fadd fast float %3077, %2983
  %3081 = fadd fast float %3078, %2984
  %3082 = fadd fast float %3079, %2985
  %3083 = fmul fast float %3080, %3069
  %3084 = call float @dx.op.tertiary.f32(i32 46, float %3081, float %3071, float %3083)  ; FMad(a,b,c)
  %3085 = call float @dx.op.tertiary.f32(i32 46, float %3082, float %3073, float %3084)  ; FMad(a,b,c)
  %3086 = fmul fast float %3080, %3074
  %3087 = call float @dx.op.tertiary.f32(i32 46, float %3081, float %3075, float %3086)  ; FMad(a,b,c)
  %3088 = call float @dx.op.tertiary.f32(i32 46, float %3082, float %3076, float %3087)  ; FMad(a,b,c)
  %3089 = fsub fast float %3085, %3077
  %3090 = fsub fast float %3088, %3078
  %3091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3092 = extractvalue %dx.types.CBufRet.f32 %3091, 0
  %3093 = extractvalue %dx.types.CBufRet.f32 %3091, 1
  %3094 = extractvalue %dx.types.CBufRet.f32 %3091, 2
  %3095 = extractvalue %dx.types.CBufRet.f32 %3091, 3
  %3096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3097 = extractvalue %dx.types.CBufRet.f32 %3096, 3
  %3098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3099 = extractvalue %dx.types.CBufRet.i32 %3098, 0
  %3100 = extractvalue %dx.types.CBufRet.i32 %3098, 1
  %3101 = udiv i32 %3100, %3099
  %3102 = fsub fast float %3089, %3092
  %3103 = fsub fast float %3090, %3093
  %3104 = call float @dx.op.binary.f32(i32 35, float %3102, float 0.000000e+00)  ; FMax(a,b)
  %3105 = call float @dx.op.binary.f32(i32 35, float %3103, float 0.000000e+00)  ; FMax(a,b)
  %3106 = call float @dx.op.binary.f32(i32 36, float %3104, float %3094)  ; FMin(a,b)
  %3107 = call float @dx.op.binary.f32(i32 36, float %3105, float %3095)  ; FMin(a,b)
  %3108 = add i32 %3099, -1
  %3109 = add i32 %3101, -1
  %3110 = fmul fast float %3106, %3097
  %3111 = fmul fast float %3107, %3097
  %3112 = fptoui float %3110 to i32
  %3113 = fptoui float %3111 to i32
  %3114 = call i32 @dx.op.binary.i32(i32 40, i32 %3112, i32 %3108)  ; UMin(a,b)
  %3115 = call i32 @dx.op.binary.i32(i32 40, i32 %3113, i32 %3109)  ; UMin(a,b)
  %3116 = mul i32 %3115, %3099
  %3117 = add i32 %3116, %3114
  %3118 = shl i32 %3117, 2
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3118, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = icmp eq i32 %3120, -1
  br i1 %3121, label %3338, label %3122

; <label>:3122                                    ; preds = %3067
  %3123 = mul i32 %3120, 148
  %3124 = add i32 %3123, 4
  %3125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3124, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.f32 %3125, 0
  %3127 = add i32 %3123, 8
  %3128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3127, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.f32 %3128, 0
  %3130 = add i32 %3123, 36
  %3131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.f32 %3131, 0
  %3133 = add i32 %3123, 60
  %3134 = add i32 %3123, 92
  %3135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3134, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.i32 %3135, 0
  %3137 = add i32 %3123, 116
  %3138 = fsub fast float %3089, %3126
  %3139 = fsub fast float %3090, %3129
  %3140 = fmul fast float %3097, %3138
  %3141 = fmul fast float %3097, %3139
  %3142 = call float @dx.op.unary.f32(i32 7, float %3140)  ; Saturate(value)
  %3143 = call float @dx.op.unary.f32(i32 7, float %3141)  ; Saturate(value)
  %3144 = fsub fast float 1.000000e+00, %3143
  %3145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3146 = extractvalue %dx.types.CBufRet.f32 %3145, 2
  %3147 = call float @dx.op.unary.f32(i32 83, float %3142)  ; DerivCoarseX(value)
  %3148 = call float @dx.op.unary.f32(i32 83, float %3144)  ; DerivCoarseX(value)
  %3149 = call float @dx.op.unary.f32(i32 84, float %3142)  ; DerivCoarseY(value)
  %3150 = call float @dx.op.unary.f32(i32 84, float %3144)  ; DerivCoarseY(value)
  %3151 = fmul fast float %3147, %3146
  %3152 = fmul fast float %3148, %3146
  %3153 = fmul fast float %3149, %3146
  %3154 = fmul fast float %3150, %3146
  %3155 = call float @dx.op.dot2.f32(i32 54, float %3153, float %3154, float %3153, float %3154)  ; Dot2(ax,ay,bx,by)
  %3156 = call float @dx.op.dot2.f32(i32 54, float %3151, float %3152, float %3151, float %3152)  ; Dot2(ax,ay,bx,by)
  %3157 = call float @dx.op.binary.f32(i32 35, float %3156, float %3155)  ; FMax(a,b)
  %3158 = call float @dx.op.unary.f32(i32 23, float %3157)  ; Log(value)
  %3159 = fmul fast float %3158, 5.000000e-01
  %3160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3161 = extractvalue %dx.types.CBufRet.f32 %3160, 1
  %3162 = fadd fast float %3161, %3159
  %3163 = call float @dx.op.binary.f32(i32 35, float %3162, float 0.000000e+00)  ; FMax(a,b)
  %3164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3165 = extractvalue %dx.types.CBufRet.f32 %3164, 3
  %3166 = fadd fast float %3165, %3163
  %3167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3168 = extractvalue %dx.types.CBufRet.f32 %3167, 3
  %3169 = fadd fast float %3166, %3168
  %3170 = add i32 %3136, 0
  %3171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3170, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3172 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3171, i32 0)  ; GetDimensions(handle,mipLevel)
  %3173 = extractvalue %dx.types.Dimensions %3172, 0
  %3174 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3173)  ; FirstbitLo(value)
  %3175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3176 = extractvalue %dx.types.CBufRet.i32 %3175, 1
  %3177 = sub nsw i32 %3176, %3174
  %3178 = sitofp i32 %3177 to float
  %3179 = fsub fast float %3169, %3178
  %3180 = call float @dx.op.binary.f32(i32 35, float %3179, float 0.000000e+00)  ; FMax(a,b)
  %3181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3171, %dx.types.Handle %37, float %3142, float %3144, float %3132, float undef, i32 0, i32 0, i32 undef, float %3180)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3182 = extractvalue %dx.types.ResRet.f32 %3181, 0
  %3183 = fcmp ule float %3182, 0x3FE0101020000000
  %3184 = extractvalue %dx.types.CBufRet.i32 %3175, 0
  %3185 = and i32 %3184, 128
  %3186 = icmp ne i32 %3185, 0
  %3187 = and i1 %3183, %3186
  br i1 %3187, label %3338, label %3188

; <label>:3188                                    ; preds = %3122
  %3189 = add i32 %3123, 20
  %3190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3189, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.f32 %3190, 0
  %3192 = add i32 %3123, 24
  %3193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3192, i32 undef)  ; BufferLoad(srv,index,wot)
  %3194 = extractvalue %dx.types.ResRet.f32 %3193, 0
  %3195 = add i32 %3123, 40
  %3196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3195, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.f32 %3196, 0
  %3198 = add i32 %3123, 96
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3198, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3202 = extractvalue %dx.types.CBufRet.f32 %3201, 2
  %3203 = fmul fast float %3202, %3142
  %3204 = fmul fast float %3202, %3144
  %3205 = extractvalue %dx.types.CBufRet.f32 %3201, 3
  %3206 = fadd fast float %3203, %3205
  %3207 = fadd fast float %3204, %3205
  %3208 = add i32 %3200, 0
  %3209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3208, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3210 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3209, i32 0)  ; GetDimensions(handle,mipLevel)
  %3211 = extractvalue %dx.types.Dimensions %3210, 0
  %3212 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3211)  ; FirstbitLo(value)
  %3213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3214 = extractvalue %dx.types.CBufRet.i32 %3213, 1
  %3215 = sub nsw i32 %3214, %3212
  %3216 = sitofp i32 %3215 to float
  %3217 = fsub fast float %3166, %3216
  %3218 = call float @dx.op.binary.f32(i32 35, float %3217, float 0.000000e+00)  ; FMax(a,b)
  %3219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3209, %dx.types.Handle %37, float %3206, float %3207, float %3197, float undef, i32 0, i32 0, i32 undef, float %3218)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3220 = extractvalue %dx.types.ResRet.f32 %3219, 0
  %3221 = fmul fast float %3220, %3191
  %3222 = fadd fast float %3221, %3194
  %3223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3224 = extractvalue %dx.types.CBufRet.f32 %3223, 0
  %3225 = extractvalue %dx.types.CBufRet.f32 %3223, 1
  %3226 = extractvalue %dx.types.CBufRet.f32 %3223, 2
  %3227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3228 = extractvalue %dx.types.CBufRet.f32 %3227, 3
  %3229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3230 = extractvalue %dx.types.CBufRet.f32 %3229, 3
  %3231 = extractvalue %dx.types.CBufRet.f32 %3223, 3
  %3232 = fadd fast float %3228, %3089
  %3233 = fadd fast float %3230, %3090
  %3234 = fadd fast float %3222, %3231
  %3235 = fmul fast float %3232, %3224
  %3236 = call float @dx.op.tertiary.f32(i32 46, float %3233, float %3225, float %3235)  ; FMad(a,b,c)
  %3237 = call float @dx.op.tertiary.f32(i32 46, float %3234, float %3226, float %3236)  ; FMad(a,b,c)
  %3238 = fsub fast float %3237, %3231
  %3239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3240 = extractvalue %dx.types.CBufRet.f32 %3239, 2
  %3241 = fsub fast float %3238, %3240
  %3242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3243 = extractvalue %dx.types.CBufRet.i32 %3242, 0
  %3244 = call i32 @dx.op.binary.i32(i32 40, i32 %3120, i32 %3243)  ; UMin(a,b)
  %3245 = mul i32 %3244, 36
  %3246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3245, i32 undef)  ; BufferLoad(srv,index,wot)
  %3247 = extractvalue %dx.types.ResRet.i32 %3246, 0
  %3248 = add i32 %3245, 4
  %3249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3250 = extractvalue %dx.types.CBufRet.f32 %3249, 0
  %3251 = fmul fast float %3250, %3142
  %3252 = fmul fast float %3250, %3144
  %3253 = extractvalue %dx.types.CBufRet.f32 %3249, 1
  %3254 = fadd fast float %3251, %3253
  %3255 = fadd fast float %3252, %3253
  %3256 = icmp eq i32 %3247, 0
  br i1 %3256, label %3325, label %3257

; <label>:3257                                    ; preds = %3188
  br label %3258

; <label>:3258                                    ; preds = %3315, %3257
  %3259 = phi float [ %3316, %3315 ], [ 0.000000e+00, %3257 ]
  %3260 = phi float [ %3317, %3315 ], [ 0.000000e+00, %3257 ]
  %3261 = phi float [ %3318, %3315 ], [ 0.000000e+00, %3257 ]
  %3262 = phi float [ %3319, %3315 ], [ 0.000000e+00, %3257 ]
  %3263 = phi float [ %3320, %3315 ], [ 0.000000e+00, %3257 ]
  %3264 = phi float [ %3321, %3315 ], [ 0.000000e+00, %3257 ]
  %3265 = phi i32 [ %3322, %3315 ], [ 0, %3257 ]
  %3266 = shl i32 %3265, 2
  %3267 = add i32 %3133, %3266
  %3268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3267, i32 undef)  ; BufferLoad(srv,index,wot)
  %3269 = extractvalue %dx.types.ResRet.f32 %3268, 0
  %3270 = add i32 %3137, %3266
  %3271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3270, i32 undef)  ; BufferLoad(srv,index,wot)
  %3272 = extractvalue %dx.types.ResRet.i32 %3271, 0
  %3273 = add i32 %3272, 0
  %3274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3273, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3275 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3274, i32 0)  ; GetDimensions(handle,mipLevel)
  %3276 = extractvalue %dx.types.Dimensions %3275, 0
  %3277 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3276)  ; FirstbitLo(value)
  %3278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3279 = extractvalue %dx.types.CBufRet.i32 %3278, 1
  %3280 = sub nsw i32 %3279, %3277
  %3281 = sitofp i32 %3280 to float
  %3282 = fsub fast float %3166, %3281
  %3283 = call float @dx.op.binary.f32(i32 35, float %3282, float 0.000000e+00)  ; FMax(a,b)
  %3284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3274, %dx.types.Handle %37, float %3254, float %3255, float %3269, float undef, i32 0, i32 0, i32 undef, float %3283)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3285 = extractvalue %dx.types.ResRet.f32 %3284, 0
  %3286 = fcmp fast ogt float %3285, 0.000000e+00
  br i1 %3286, label %3287, label %3315

; <label>:3287                                    ; preds = %3258
  %3288 = add i32 %3248, %3266
  %3289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3288, i32 undef)  ; BufferLoad(srv,index,wot)
  %3290 = extractvalue %dx.types.ResRet.i32 %3289, 0
  %3291 = and i32 %3290, 32767
  %3292 = mul nuw nsw i32 %3291, 928
  %3293 = add nuw nsw i32 %3292, 48
  %3294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3293, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.f32 %3294, 0
  %3296 = extractvalue %dx.types.ResRet.f32 %3294, 1
  %3297 = extractvalue %dx.types.ResRet.f32 %3294, 2
  %3298 = add nuw nsw i32 %3292, 60
  %3299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3298, i32 undef)  ; BufferLoad(srv,index,wot)
  %3300 = extractvalue %dx.types.ResRet.f32 %3299, 0
  %3301 = extractvalue %dx.types.ResRet.f32 %3299, 1
  %3302 = extractvalue %dx.types.ResRet.f32 %3299, 2
  %3303 = fmul fast float %3295, %3285
  %3304 = fmul fast float %3296, %3285
  %3305 = fmul fast float %3297, %3285
  %3306 = fadd fast float %3303, %3259
  %3307 = fadd fast float %3304, %3260
  %3308 = fadd fast float %3305, %3261
  %3309 = fmul fast float %3300, %3285
  %3310 = fmul fast float %3301, %3285
  %3311 = fmul fast float %3302, %3285
  %3312 = fadd fast float %3309, %3262
  %3313 = fadd fast float %3310, %3263
  %3314 = fadd fast float %3311, %3264
  br label %3315

; <label>:3315                                    ; preds = %3287, %3258
  %3316 = phi float [ %3306, %3287 ], [ %3259, %3258 ]
  %3317 = phi float [ %3307, %3287 ], [ %3260, %3258 ]
  %3318 = phi float [ %3308, %3287 ], [ %3261, %3258 ]
  %3319 = phi float [ %3312, %3287 ], [ %3262, %3258 ]
  %3320 = phi float [ %3313, %3287 ], [ %3263, %3258 ]
  %3321 = phi float [ %3314, %3287 ], [ %3264, %3258 ]
  %3322 = add nuw i32 %3265, 1
  %3323 = icmp eq i32 %3322, %3247
  br i1 %3323, label %3324, label %3258

; <label>:3324                                    ; preds = %3315
  br label %3325

; <label>:3325                                    ; preds = %3324, %3188
  %3326 = phi float [ 0.000000e+00, %3188 ], [ %3316, %3324 ]
  %3327 = phi float [ 0.000000e+00, %3188 ], [ %3317, %3324 ]
  %3328 = phi float [ 0.000000e+00, %3188 ], [ %3318, %3324 ]
  %3329 = phi float [ 0.000000e+00, %3188 ], [ %3319, %3324 ]
  %3330 = phi float [ 0.000000e+00, %3188 ], [ %3320, %3324 ]
  %3331 = phi float [ 0.000000e+00, %3188 ], [ %3321, %3324 ]
  %3332 = fadd fast float %3329, %3326
  %3333 = fmul fast float %3332, 0x3F847AE140000000
  %3334 = fadd fast float %3330, %3327
  %3335 = fmul fast float %3334, 0x3F847AE140000000
  %3336 = fadd fast float %3331, %3328
  %3337 = fmul fast float %3336, 0x3F847AE140000000
  br label %3338

; <label>:3338                                    ; preds = %3325, %3122, %3067, %3064, %3035, %2997
  %3339 = phi float [ %3049, %3035 ], [ -1.310720e+05, %2997 ], [ %3241, %3325 ], [ -1.310720e+05, %3067 ], [ -1.310720e+05, %3122 ], [ -1.310720e+05, %3064 ]
  %3340 = phi float [ %3059, %3035 ], [ 0.000000e+00, %2997 ], [ %3333, %3325 ], [ 0.000000e+00, %3067 ], [ 0.000000e+00, %3122 ], [ 0.000000e+00, %3064 ]
  %3341 = phi float [ %3061, %3035 ], [ 0.000000e+00, %2997 ], [ %3335, %3325 ], [ 0.000000e+00, %3067 ], [ 0.000000e+00, %3122 ], [ 0.000000e+00, %3064 ]
  %3342 = phi float [ %3063, %3035 ], [ 0.000000e+00, %2997 ], [ %3337, %3325 ], [ 0.000000e+00, %3067 ], [ 0.000000e+00, %3122 ], [ 0.000000e+00, %3064 ]
  %3343 = phi i1 [ true, %3035 ], [ false, %2997 ], [ true, %3325 ], [ false, %3067 ], [ false, %3122 ], [ false, %3064 ]
  %3344 = and i32 %169, 3
  %3345 = icmp eq i32 %3344, 1
  %3346 = select i1 %3345, float 1.000000e+00, float 0.000000e+00
  %3347 = fsub fast float %3339, %124
  %3348 = call float @dx.op.unary.f32(i32 7, float %3347)  ; Saturate(value)
  %3349 = select i1 %3343, float %3348, float 1.000000e+00
  %3350 = fmul fast float %3349, %3346
  %3351 = icmp eq i32 %3344, 3
  %3352 = select i1 %3351, float 1.000000e+00, float %3350
  %3353 = call float @dx.op.binary.f32(i32 35, float %2913, float %3352)  ; FMax(a,b)
  %3354 = call float @dx.op.unary.f32(i32 7, float %3353)  ; Saturate(value)
  %3355 = fcmp fast une float %3354, 0.000000e+00
  %3356 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %3357 = call float @dx.op.unary.f32(i32 25, float %3356)  ; Rsqrt(value)
  br i1 %3355, label %3365, label %3358

; <label>:3358                                    ; preds = %3338
  %3359 = fmul fast float %3357, %122
  %3360 = fmul fast float %3357, %123
  %3361 = fmul fast float %3357, %124
  %3362 = fsub fast float -0.000000e+00, %3359
  %3363 = fsub fast float -0.000000e+00, %3360
  %3364 = fsub fast float -0.000000e+00, %3361
  br label %3533

; <label>:3365                                    ; preds = %3338
  %3366 = fmul fast float %122, %3357
  %3367 = fsub fast float -0.000000e+00, %3366
  %3368 = fmul fast float %123, %3357
  %3369 = fsub fast float -0.000000e+00, %3368
  %3370 = fmul fast float %124, %3357
  %3371 = fsub fast float -0.000000e+00, %3370
  %3372 = call float @dx.op.dot3.f32(i32 55, float %3367, float %3369, float %3371, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %3373 = fmul fast float %3354, 2.500000e+00
  %3374 = call float @dx.op.unary.f32(i32 7, float %3373)  ; Saturate(value)
  %3375 = fmul fast float %3354, 0x4013FFFFE0000000
  %3376 = fadd fast float %3375, 0xBFFFFFFFE0000000
  %3377 = call float @dx.op.unary.f32(i32 7, float %3376)  ; Saturate(value)
  %3378 = fmul fast float %3354, 0x4004000020000000
  %3379 = fadd fast float %3378, 0xBFF8000040000000
  %3380 = call float @dx.op.unary.f32(i32 7, float %3379)  ; Saturate(value)
  %3381 = call float @dx.op.unary.f32(i32 7, float %3374)  ; Saturate(value)
  %3382 = fmul fast float %2943, 1.000000e+01
  %3383 = call float @dx.op.unary.f32(i32 7, float %3382)  ; Saturate(value)
  %3384 = fmul fast float %3383, 2.000000e+00
  %3385 = fsub fast float 3.000000e+00, %3384
  %3386 = fmul fast float %3383, %3383
  %3387 = fmul fast float %3386, %3385
  %3388 = fsub fast float 1.000000e+00, %3387
  %3389 = fsub fast float 0x3FE3333340000000, %2964
  %3390 = fmul fast float %3389, 0x400AAAAAA0000000
  %3391 = call float @dx.op.unary.f32(i32 7, float %3390)  ; Saturate(value)
  %3392 = fmul fast float %3388, %3391
  %3393 = fmul fast float %2976, 0x3FEA2B8620000000
  %3394 = fmul fast float %2977, 0x3FEA2B8620000000
  %3395 = fmul fast float %2978, 0x3FEA2B8620000000
  %3396 = fadd fast float %3393, 0x3FC81DFBA0000000
  %3397 = fmul fast float %3396, %2976
  %3398 = fadd fast float %3397, 0x3F910E6020000000
  %3399 = fadd fast float %3394, 0x3FC81DFBA0000000
  %3400 = fmul fast float %3399, %2977
  %3401 = fadd fast float %3400, 0x3F910E6020000000
  %3402 = fadd fast float %3395, 0x3FC81DFBA0000000
  %3403 = fmul fast float %3402, %2978
  %3404 = fadd fast float %3403, 0x3F910E6020000000
  %3405 = call float @dx.op.unary.f32(i32 7, float %3398)  ; Saturate(value)
  %3406 = call float @dx.op.unary.f32(i32 7, float %3401)  ; Saturate(value)
  %3407 = call float @dx.op.unary.f32(i32 7, float %3404)  ; Saturate(value)
  %3408 = fsub fast float %3405, %2976
  %3409 = fsub fast float %3406, %2977
  %3410 = fsub fast float %3407, %2978
  %3411 = fmul fast float %3408, %3381
  %3412 = fmul fast float %3411, %3392
  %3413 = fmul fast float %3409, %3381
  %3414 = fmul fast float %3413, %3392
  %3415 = fmul fast float %3410, %3381
  %3416 = fmul fast float %3415, %3392
  %3417 = fadd fast float %3412, %2976
  %3418 = fadd fast float %3414, %2977
  %3419 = fadd fast float %3416, %2978
  %3420 = fmul fast float %2924, %2924
  %3421 = fmul fast float %3420, %3420
  %3422 = fadd fast float %3377, 1.000000e+00
  %3423 = fsub fast float %3422, %3392
  %3424 = call float @dx.op.unary.f32(i32 7, float %3423)  ; Saturate(value)
  %3425 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3426 = call float @dx.op.unary.f32(i32 7, float %3425)  ; Saturate(value)
  %3427 = fsub fast float 1.000000e+00, %3421
  %3428 = call float @dx.op.binary.f32(i32 36, float %3424, float %3427)  ; FMin(a,b)
  %3429 = call float @dx.op.unary.f32(i32 7, float %3380)  ; Saturate(value)
  %3430 = call float @dx.op.binary.f32(i32 35, float %3428, float %3429)  ; FMax(a,b)
  %3431 = fadd fast float %3426, 0xBFE4CCCCC0000000
  %3432 = fmul fast float %3431, 0x4006DB6DA0000000
  %3433 = call float @dx.op.unary.f32(i32 7, float %3432)  ; Saturate(value)
  %3434 = fmul fast float %3433, 2.000000e+00
  %3435 = fsub fast float 3.000000e+00, %3434
  %3436 = bitcast float %2961 to i32
  %3437 = ashr i32 %3436, 1
  %3438 = add nsw i32 %3437, 532487669
  %3439 = bitcast i32 %3438 to float
  %3440 = fsub fast float 1.000000e+00, %3439
  %3441 = bitcast float %3440 to i32
  %3442 = sub nsw i32 2129859010, %3441
  %3443 = bitcast i32 %3442 to float
  %3444 = fmul fast float %3443, 2.000000e+00
  %3445 = bitcast float %2962 to i32
  %3446 = ashr i32 %3445, 1
  %3447 = add nsw i32 %3446, 532487669
  %3448 = bitcast i32 %3447 to float
  %3449 = fsub fast float 1.000000e+00, %3448
  %3450 = bitcast float %3449 to i32
  %3451 = sub nsw i32 2129859010, %3450
  %3452 = bitcast i32 %3451 to float
  %3453 = fmul fast float %3452, 2.000000e+00
  %3454 = bitcast float %2963 to i32
  %3455 = ashr i32 %3454, 1
  %3456 = add nsw i32 %3455, 532487669
  %3457 = bitcast i32 %3456 to float
  %3458 = fsub fast float 1.000000e+00, %3457
  %3459 = bitcast float %3458 to i32
  %3460 = sub nsw i32 2129859010, %3459
  %3461 = bitcast i32 %3460 to float
  %3462 = fmul fast float %3461, 2.000000e+00
  %3463 = fsub fast float 0x4002A9FBE0000000, %3444
  %3464 = fadd fast float %3444, 0x3FD54FDF00000000
  %3465 = bitcast float %3464 to i32
  %3466 = sub nsw i32 2129859010, %3465
  %3467 = bitcast i32 %3466 to float
  %3468 = fmul fast float %3467, %3463
  %3469 = fmul fast float %3468, %3468
  %3470 = fsub fast float 0x4002A9FBE0000000, %3453
  %3471 = fadd fast float %3453, 0x3FD54FDF00000000
  %3472 = bitcast float %3471 to i32
  %3473 = sub nsw i32 2129859010, %3472
  %3474 = bitcast i32 %3473 to float
  %3475 = fmul fast float %3474, %3470
  %3476 = fmul fast float %3475, %3475
  %3477 = fsub fast float 0x4002A9FBE0000000, %3462
  %3478 = fadd fast float %3462, 0x3FD54FDF00000000
  %3479 = bitcast float %3478 to i32
  %3480 = sub nsw i32 2129859010, %3479
  %3481 = bitcast i32 %3480 to float
  %3482 = fmul fast float %3481, %3477
  %3483 = fmul fast float %3482, %3482
  %3484 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3469)  ; FMax(a,b)
  %3485 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3476)  ; FMax(a,b)
  %3486 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3483)  ; FMax(a,b)
  %3487 = fsub fast float 1.000000e+00, %3372
  %3488 = fadd fast float %3487, %3388
  %3489 = call float @dx.op.unary.f32(i32 7, float %3488)  ; Saturate(value)
  %3490 = fsub fast float 1.000000e+00, %3352
  %3491 = fmul fast float %3430, %3490
  %3492 = fmul fast float %3433, %3433
  %3493 = fmul fast float %3492, %3491
  %3494 = fmul fast float %3493, %3435
  %3495 = fmul fast float %3490, 0xBFE99999A0000000
  %3496 = fmul fast float %3495, %3381
  %3497 = fmul fast float %3496, %3392
  %3498 = fadd fast float %3497, 1.000000e+00
  %3499 = fadd fast float %2964, -1.000000e+00
  %3500 = fmul fast float %3498, %3499
  %3501 = fadd fast float %3500, 1.000000e+00
  %3502 = fsub fast float %3484, %2961
  %3503 = fsub fast float %3485, %2962
  %3504 = fsub fast float %3486, %2963
  %3505 = fmul fast float %3494, %3502
  %3506 = fmul fast float %3494, %3503
  %3507 = fmul fast float %3494, %3504
  %3508 = fadd fast float %3505, %2961
  %3509 = fadd fast float %3506, %2962
  %3510 = fadd fast float %3507, %2963
  %3511 = fsub fast float %56, %2940
  %3512 = fsub fast float %57, %2941
  %3513 = fsub fast float %58, %2942
  %3514 = fmul fast float %3494, %3511
  %3515 = fmul fast float %3494, %3512
  %3516 = fmul fast float %3494, %3513
  %3517 = fadd fast float %3514, %2940
  %3518 = fadd fast float %3515, %2941
  %3519 = fadd fast float %3516, %2942
  %3520 = fmul fast float %3494, %3489
  %3521 = call float @dx.op.unary.f32(i32 7, float %3501)  ; Saturate(value)
  %3522 = fsub fast float 1.000000e+00, %3521
  %3523 = fmul fast float %3520, %3522
  %3524 = fadd fast float %3523, %3521
  %3525 = fsub fast float 1.000000e+00, %2924
  %3526 = fmul fast float %3494, %3525
  %3527 = fadd fast float %3526, %2924
  %3528 = call float @dx.op.dot3.f32(i32 55, float %3517, float %3518, float %3519, float %3517, float %3518, float %3519)  ; Dot3(ax,ay,az,bx,by,bz)
  %3529 = call float @dx.op.unary.f32(i32 25, float %3528)  ; Rsqrt(value)
  %3530 = fmul fast float %3517, %3529
  %3531 = fmul fast float %3518, %3529
  %3532 = fmul fast float %3519, %3529
  br label %3533

; <label>:3533                                    ; preds = %3365, %3358
  %3534 = phi float [ %3364, %3358 ], [ %3371, %3365 ]
  %3535 = phi float [ %3363, %3358 ], [ %3369, %3365 ]
  %3536 = phi float [ %3362, %3358 ], [ %3367, %3365 ]
  %3537 = phi float [ %3361, %3358 ], [ %3370, %3365 ]
  %3538 = phi float [ %3360, %3358 ], [ %3368, %3365 ]
  %3539 = phi float [ %3359, %3358 ], [ %3366, %3365 ]
  %3540 = phi float [ %2961, %3358 ], [ %3508, %3365 ]
  %3541 = phi float [ %2962, %3358 ], [ %3509, %3365 ]
  %3542 = phi float [ %2963, %3358 ], [ %3510, %3365 ]
  %3543 = phi float [ %2976, %3358 ], [ %3417, %3365 ]
  %3544 = phi float [ %2977, %3358 ], [ %3418, %3365 ]
  %3545 = phi float [ %2978, %3358 ], [ %3419, %3365 ]
  %3546 = phi float [ %2940, %3358 ], [ %3530, %3365 ]
  %3547 = phi float [ %2941, %3358 ], [ %3531, %3365 ]
  %3548 = phi float [ %2942, %3358 ], [ %3532, %3365 ]
  %3549 = phi float [ %2964, %3358 ], [ %3524, %3365 ]
  %3550 = phi float [ %2924, %3358 ], [ %3527, %3365 ]
  %3551 = select i1 %193, float 0.000000e+00, float %3542
  %3552 = call float @dx.op.dot3.f32(i32 55, float %3546, float %3547, float %3548, float %3536, float %3535, float %3534)  ; Dot3(ax,ay,az,bx,by,bz)
  %3553 = call float @dx.op.unary.f32(i32 7, float %3552)  ; Saturate(value)
  %3554 = call float @dx.op.dot3.f32(i32 55, float %3539, float %3538, float %3537, float %3546, float %3547, float %3548)  ; Dot3(ax,ay,az,bx,by,bz)
  %3555 = fmul fast float %3554, 2.000000e+00
  %3556 = fmul fast float %3555, %3546
  %3557 = fmul fast float %3555, %3547
  %3558 = fmul fast float %3555, %3548
  %3559 = fsub fast float %3539, %3556
  %3560 = fsub fast float %3538, %3557
  %3561 = fsub fast float %3537, %3558
  %3562 = call float @dx.op.binary.f32(i32 36, float %3550, float 1.000000e+00)  ; FMin(a,b)
  %3563 = fsub fast float 1.000000e+00, %3550
  %3564 = bitcast float %3563 to i32
  %3565 = sub nsw i32 2129859010, %3564
  %3566 = bitcast i32 %3565 to float
  %3567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3568 = extractvalue %dx.types.CBufRet.f32 %3567, 0
  %3569 = extractvalue %dx.types.CBufRet.f32 %3567, 1
  %3570 = fadd fast float %3568, %122
  %3571 = fadd fast float %3569, %123
  %3572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %3573 = extractvalue %dx.types.CBufRet.i32 %3572, 0
  %3574 = icmp eq i32 %3573, 1
  br i1 %3574, label %3575, label %3610

; <label>:3575                                    ; preds = %3533
  %3576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3577 = extractvalue %dx.types.CBufRet.f32 %3576, 0
  %3578 = extractvalue %dx.types.CBufRet.f32 %3576, 1
  %3579 = fsub fast float %3570, %3577
  %3580 = fsub fast float %3571, %3578
  %3581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3582 = extractvalue %dx.types.CBufRet.f32 %3581, 0
  %3583 = extractvalue %dx.types.CBufRet.f32 %3581, 1
  %3584 = fmul fast float %3579, %3582
  %3585 = fmul fast float %3580, %3583
  %3586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %3584, float %3585, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3587 = extractvalue %dx.types.ResRet.f32 %3586, 0
  %3588 = fcmp fast ogt float %3587, 0.000000e+00
  %3589 = extractvalue %dx.types.CBufRet.i32 %3572, 3
  %3590 = icmp ne i32 %3589, 0
  %3591 = and i1 %3588, %3590
  br i1 %3591, label %3592, label %3610, !dx.controlflow.hints !82

; <label>:3592                                    ; preds = %3575
  %3593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3594 = extractvalue %dx.types.CBufRet.f32 %3593, 0
  %3595 = extractvalue %dx.types.CBufRet.f32 %3593, 1
  %3596 = fsub fast float %3570, %3594
  %3597 = fsub fast float %3571, %3595
  %3598 = fmul fast float %3596, %3596
  %3599 = fmul fast float %3597, %3597
  %3600 = fadd fast float %3598, %3599
  %3601 = uitofp i32 %3589 to float
  %3602 = fmul fast float %3601, %3601
  %3603 = fcmp fast ogt float %3600, %3602
  br i1 %3603, label %3610, label %3604

; <label>:3604                                    ; preds = %3592
  %3605 = call float @dx.op.unary.f32(i32 24, float %3600)  ; Sqrt(value)
  %3606 = fsub fast float %3601, %3605
  %3607 = fmul fast float %3606, 0x3F75555560000000
  %3608 = call float @dx.op.unary.f32(i32 7, float %3607)  ; Saturate(value)
  %3609 = call float @dx.op.binary.f32(i32 36, float %3608, float %3587)  ; FMin(a,b)
  br label %3610

; <label>:3610                                    ; preds = %3604, %3592, %3575, %3533
  %3611 = phi float [ 1.000000e+00, %3533 ], [ %3609, %3604 ], [ %3587, %3575 ], [ 0.000000e+00, %3592 ]
  %3612 = fcmp fast ogt float %3611, 0.000000e+00
  br i1 %3612, label %3613, label %3711, !dx.controlflow.hints !83

; <label>:3613                                    ; preds = %3610
  %3614 = fadd fast float %153, 5.000000e-01
  %3615 = call float @dx.op.unary.f32(i32 27, float %3614)  ; Round_ni(value)
  %3616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %151, float %152, float %3615, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3617 = extractvalue %dx.types.ResRet.f32 %3616, 0
  %3618 = extractvalue %dx.types.ResRet.f32 %3616, 1
  %3619 = extractvalue %dx.types.ResRet.f32 %3616, 2
  %3620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3621 = extractvalue %dx.types.CBufRet.f32 %3620, 3
  %3622 = fmul fast float %3621, %3617
  %3623 = fmul fast float %3621, %3618
  %3624 = fmul fast float %3621, %3619
  %3625 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %151, float %152, float %3615, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %151, float %152, float %3615, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3628 = extractvalue %dx.types.ResRet.f32 %3627, 0
  %3629 = extractvalue %dx.types.ResRet.f32 %3627, 1
  %3630 = fmul fast float %3628, 2.000000e+00
  %3631 = fmul fast float %3629, 2.000000e+00
  %3632 = fadd fast float %3630, -1.000000e+00
  %3633 = fadd fast float %3631, -1.000000e+00
  %3634 = fadd fast float %3632, %3633
  %3635 = fmul fast float %3634, 5.000000e-01
  %3636 = fsub fast float %3632, %3633
  %3637 = fmul fast float %3636, 5.000000e-01
  %3638 = call float @dx.op.unary.f32(i32 6, float %3635)  ; FAbs(value)
  %3639 = fsub fast float 1.000000e+00, %3638
  %3640 = call float @dx.op.unary.f32(i32 6, float %3637)  ; FAbs(value)
  %3641 = fsub fast float %3639, %3640
  %3642 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %3641)  ; FMax(a,b)
  %3643 = call float @dx.op.dot3.f32(i32 55, float %3635, float %3637, float %3642, float %3635, float %3637, float %3642)  ; Dot3(ax,ay,az,bx,by,bz)
  %3644 = bitcast float %3643 to i32
  %3645 = ashr i32 %3644, 1
  %3646 = sub nsw i32 1597250115, %3645
  %3647 = bitcast i32 %3646 to float
  %3648 = fmul fast float %3647, %3635
  %3649 = fmul fast float %3647, %3637
  %3650 = fmul fast float %3647, %3642
  %3651 = fsub fast float 1.000000e+00, %3626
  %3652 = fdiv fast float %3651, %3650
  %3653 = fmul fast float %3650, %56
  %3654 = fmul fast float %3650, %57
  %3655 = fmul fast float %3650, %58
  %3656 = fmul fast float %3648, %52
  %3657 = fmul fast float %3648, %53
  %3658 = fmul fast float %3648, %54
  %3659 = fadd fast float %3653, %3656
  %3660 = fadd fast float %3654, %3657
  %3661 = fadd fast float %3655, %3658
  %3662 = fmul fast float %3649, %86
  %3663 = fmul fast float %3649, %87
  %3664 = fmul fast float %3649, %88
  %3665 = fadd fast float %3659, %3662
  %3666 = fadd fast float %3660, %3663
  %3667 = fadd fast float %3661, %3664
  %3668 = call float @dx.op.dot3.f32(i32 55, float %3665, float %3666, float %3667, float %3665, float %3666, float %3667)  ; Dot3(ax,ay,az,bx,by,bz)
  %3669 = call float @dx.op.unary.f32(i32 25, float %3668)  ; Rsqrt(value)
  %3670 = fmul fast float %3665, %3669
  %3671 = fmul fast float %3666, %3669
  %3672 = fmul fast float %3667, %3669
  %3673 = call float @dx.op.dot3.f32(i32 55, float %3546, float %3547, float %3548, float %3546, float %3547, float %3548)  ; Dot3(ax,ay,az,bx,by,bz)
  %3674 = call float @dx.op.unary.f32(i32 7, float %3673)  ; Saturate(value)
  %3675 = fmul fast float %3674, 5.000000e-01
  %3676 = fadd fast float %3675, 5.000000e-01
  %3677 = fmul fast float %3676, %3626
  %3678 = call float @dx.op.dot3.f32(i32 55, float %3546, float %3547, float %3548, float %3670, float %3671, float %3672)  ; Dot3(ax,ay,az,bx,by,bz)
  %3679 = call float @dx.op.unary.f32(i32 7, float %3678)  ; Saturate(value)
  %3680 = fmul fast float %3679, %3652
  %3681 = fadd fast float %3677, %3680
  %3682 = fsub fast float 5.000000e-01, %3675
  %3683 = fmul fast float %3682, %3543
  %3684 = fmul fast float %3682, %3544
  %3685 = fmul fast float %3682, %3545
  %3686 = fadd fast float %3681, %3683
  %3687 = fmul fast float %3686, %3622
  %3688 = fadd fast float %3681, %3684
  %3689 = fmul fast float %3688, %3623
  %3690 = fadd fast float %3681, %3685
  %3691 = fmul fast float %3690, %3624
  %3692 = call float @dx.op.dot3.f32(i32 55, float %3559, float %3560, float %3561, float %3546, float %3547, float %3548)  ; Dot3(ax,ay,az,bx,by,bz)
  %3693 = call float @dx.op.unary.f32(i32 7, float %3692)  ; Saturate(value)
  %3694 = fmul fast float %3693, 5.000000e-01
  %3695 = fadd fast float %3694, 5.000000e-01
  %3696 = fmul fast float %3695, %3626
  %3697 = call float @dx.op.dot3.f32(i32 55, float %3559, float %3560, float %3561, float %3670, float %3671, float %3672)  ; Dot3(ax,ay,az,bx,by,bz)
  %3698 = call float @dx.op.unary.f32(i32 7, float %3697)  ; Saturate(value)
  %3699 = fmul fast float %3698, %3652
  %3700 = fadd fast float %3696, %3699
  %3701 = fsub fast float 5.000000e-01, %3694
  %3702 = fmul fast float %3701, %3543
  %3703 = fmul fast float %3701, %3544
  %3704 = fmul fast float %3701, %3545
  %3705 = fadd fast float %3700, %3702
  %3706 = fmul fast float %3705, %3622
  %3707 = fadd fast float %3700, %3703
  %3708 = fmul fast float %3707, %3623
  %3709 = fadd fast float %3700, %3704
  %3710 = fmul fast float %3709, %3624
  br label %3711

; <label>:3711                                    ; preds = %3613, %3610
  %3712 = phi float [ %3706, %3613 ], [ 0.000000e+00, %3610 ]
  %3713 = phi float [ %3708, %3613 ], [ 0.000000e+00, %3610 ]
  %3714 = phi float [ %3710, %3613 ], [ 0.000000e+00, %3610 ]
  %3715 = phi float [ %3687, %3613 ], [ 0.000000e+00, %3610 ]
  %3716 = phi float [ %3689, %3613 ], [ 0.000000e+00, %3610 ]
  %3717 = phi float [ %3691, %3613 ], [ 0.000000e+00, %3610 ]
  %3718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %3719 = extractvalue %dx.types.CBufRet.f32 %3718, 0
  %3720 = fcmp fast ogt float %3719, 0.000000e+00
  %3721 = and i1 %3612, %3720
  br i1 %3721, label %3722, label %3926, !dx.controlflow.hints !84

; <label>:3722                                    ; preds = %3711
  %3723 = extractvalue %dx.types.CBufRet.f32 %3567, 2
  %3724 = fadd fast float %3723, %124
  %3725 = fmul fast float %3546, 3.200000e+01
  %3726 = fmul fast float %3547, 3.200000e+01
  %3727 = fadd fast float %3570, %3725
  %3728 = fadd fast float %3571, %3726
  %3729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3730 = extractvalue %dx.types.CBufRet.f32 %3729, 0
  %3731 = extractvalue %dx.types.CBufRet.f32 %3729, 1
  %3732 = fsub fast float %3727, %3730
  %3733 = fsub fast float %3728, %3731
  %3734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3735 = extractvalue %dx.types.CBufRet.f32 %3734, 0
  %3736 = extractvalue %dx.types.CBufRet.f32 %3734, 1
  %3737 = fmul fast float %3732, %3735
  %3738 = fmul fast float %3733, %3736
  %3739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3740 = extractvalue %dx.types.CBufRet.f32 %3739, 0
  %3741 = extractvalue %dx.types.CBufRet.f32 %3739, 1
  %3742 = fsub fast float %3570, %3740
  %3743 = fsub fast float %3571, %3741
  %3744 = fmul fast float %3742, %3742
  %3745 = fmul fast float %3743, %3743
  %3746 = fadd fast float %3744, %3745
  %3747 = call float @dx.op.unary.f32(i32 24, float %3746)  ; Sqrt(value)
  %3748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3749 = extractvalue %dx.types.CBufRet.f32 %3748, 0
  %3750 = extractvalue %dx.types.CBufRet.f32 %3748, 1
  %3751 = fsub fast float %3747, %3749
  %3752 = fdiv fast float %3751, %3750
  %3753 = call float @dx.op.unary.f32(i32 7, float %3752)  ; Saturate(value)
  %3754 = fmul fast float %3753, 2.000000e+00
  %3755 = fsub fast float 3.000000e+00, %3754
  %3756 = fmul fast float %3753, %3753
  %3757 = fmul fast float %3756, %3755
  %3758 = fcmp fast oge float %3737, 0.000000e+00
  %3759 = fcmp fast ole float %3737, 1.000000e+00
  %3760 = and i1 %3759, %3758
  %3761 = fcmp fast oge float %3738, 0.000000e+00
  %3762 = and i1 %3761, %3760
  %3763 = fcmp fast ole float %3738, 1.000000e+00
  %3764 = and i1 %3763, %3762
  %3765 = fcmp fast ogt float %3757, 0.000000e+00
  %3766 = and i1 %3765, %3764
  br i1 %3766, label %3767, label %3890, !dx.controlflow.hints !85

; <label>:3767                                    ; preds = %3722
  %3768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.f32 %3768, 2
  %3770 = extractvalue %dx.types.CBufRet.f32 %3768, 3
  %3771 = fmul fast float %3769, %3737
  %3772 = fmul fast float %3770, %3738
  %3773 = call float @dx.op.unary.f32(i32 27, float %3771)  ; Round_ni(value)
  %3774 = call float @dx.op.unary.f32(i32 27, float %3772)  ; Round_ni(value)
  %3775 = fptosi float %3773 to i32
  %3776 = fptosi float %3774 to i32
  %3777 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3775, i32 %3776, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3778 = extractvalue %dx.types.ResRet.i32 %3777, 0
  %3779 = lshr i32 %3778, 16
  %3780 = icmp eq i32 %3779, 65535
  br i1 %3780, label %3890, label %3781

; <label>:3781                                    ; preds = %3767
  %3782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3783 = extractvalue %dx.types.CBufRet.f32 %3782, 0
  %3784 = fmul fast float %3783, %3737
  %3785 = extractvalue %dx.types.CBufRet.f32 %3782, 1
  %3786 = fadd fast float %3784, %3785
  %3787 = extractvalue %dx.types.CBufRet.f32 %3782, 2
  %3788 = fmul fast float %3787, %3738
  %3789 = extractvalue %dx.types.CBufRet.f32 %3782, 3
  %3790 = fadd fast float %3788, %3789
  %3791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3786, float %3790, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3792 = extractvalue %dx.types.ResRet.f32 %3791, 0
  %3793 = extractvalue %dx.types.ResRet.f32 %3791, 1
  %3794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3795 = extractvalue %dx.types.CBufRet.f32 %3794, 1
  %3796 = extractvalue %dx.types.CBufRet.f32 %3794, 0
  %3797 = fsub fast float %3795, %3796
  %3798 = fmul fast float %3797, %3792
  %3799 = fadd fast float %3798, %3796
  %3800 = extractvalue %dx.types.CBufRet.f32 %3794, 3
  %3801 = extractvalue %dx.types.CBufRet.f32 %3794, 2
  %3802 = fsub fast float %3800, %3801
  %3803 = fmul fast float %3802, %3793
  %3804 = fadd fast float %3803, %3801
  %3805 = fsub fast float %3724, %3799
  %3806 = fsub fast float %3804, %3799
  %3807 = fdiv fast float %3805, %3806
  %3808 = call float @dx.op.unary.f32(i32 7, float %3807)  ; Saturate(value)
  %3809 = extractvalue %dx.types.CBufRet.f32 %3718, 1
  %3810 = extractvalue %dx.types.CBufRet.f32 %3768, 0
  %3811 = extractvalue %dx.types.CBufRet.f32 %3768, 1
  %3812 = fmul fast float %3810, %3737
  %3813 = fmul fast float %3811, %3738
  %3814 = fmul fast float %3812, 1.250000e-01
  %3815 = fmul fast float %3813, 1.250000e-01
  %3816 = call float @dx.op.unary.f32(i32 27, float %3814)  ; Round_ni(value)
  %3817 = call float @dx.op.unary.f32(i32 27, float %3815)  ; Round_ni(value)
  %3818 = fmul fast float %3816, 8.000000e+00
  %3819 = fmul fast float %3817, 8.000000e+00
  %3820 = fsub fast float %3812, %3818
  %3821 = fsub fast float %3813, %3819
  %3822 = fadd fast float %3820, 5.000000e-01
  %3823 = fadd fast float %3821, 5.000000e-01
  %3824 = and i32 %3779, 255
  %3825 = lshr i32 %3778, 24
  %3826 = mul nuw nsw i32 %3824, 9
  %3827 = uitofp i32 %3826 to float
  %3828 = mul nuw nsw i32 %3825, 9
  %3829 = uitofp i32 %3828 to float
  %3830 = fadd fast float %3822, %3827
  %3831 = fadd fast float %3823, %3829
  %3832 = fdiv fast float %3830, %3719
  %3833 = fdiv fast float %3831, %3809
  %3834 = fmul fast float %3808, 4.375000e-01
  %3835 = fadd fast float %3834, 3.125000e-02
  %3836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3832, float %3833, float %3835, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3837 = extractvalue %dx.types.ResRet.f32 %3836, 0
  %3838 = extractvalue %dx.types.ResRet.f32 %3836, 1
  %3839 = extractvalue %dx.types.ResRet.f32 %3836, 2
  %3840 = fadd fast float %3834, 5.312500e-01
  %3841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3832, float %3833, float %3840, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3842 = extractvalue %dx.types.ResRet.f32 %3841, 0
  %3843 = extractvalue %dx.types.ResRet.f32 %3841, 1
  %3844 = extractvalue %dx.types.ResRet.f32 %3841, 2
  %3845 = fmul fast float %3842, 2.000000e+00
  %3846 = fmul fast float %3843, 2.000000e+00
  %3847 = fmul fast float %3844, 2.000000e+00
  %3848 = fadd fast float %3845, -1.000000e+00
  %3849 = fadd fast float %3846, -1.000000e+00
  %3850 = fadd fast float %3847, -1.000000e+00
  %3851 = fmul fast float %3848, %3848
  %3852 = fmul fast float %3849, %3849
  %3853 = fadd fast float %3851, %3852
  %3854 = fmul fast float %3850, %3850
  %3855 = fadd fast float %3853, %3854
  %3856 = call float @dx.op.unary.f32(i32 24, float %3855)  ; Sqrt(value)
  %3857 = fcmp fast ogt float %3856, 0.000000e+00
  br i1 %3857, label %3858, label %3862

; <label>:3858                                    ; preds = %3781
  %3859 = fdiv fast float %3848, %3856
  %3860 = fdiv fast float %3849, %3856
  %3861 = fdiv fast float %3850, %3856
  br label %3862

; <label>:3862                                    ; preds = %3858, %3781
  %3863 = phi float [ %3859, %3858 ], [ 0.000000e+00, %3781 ]
  %3864 = phi float [ %3860, %3858 ], [ 0.000000e+00, %3781 ]
  %3865 = phi float [ %3861, %3858 ], [ 0.000000e+00, %3781 ]
  %3866 = call float @dx.op.dot3.f32(i32 55, float %3863, float %3864, float %3865, float %3546, float %3547, float %3548)  ; Dot3(ax,ay,az,bx,by,bz)
  %3867 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3866)  ; FMax(a,b)
  %3868 = fmul fast float %3867, 0x400C5BF8A0000000
  %3869 = fmul fast float %3837, %3757
  %3870 = fmul fast float %3869, %3868
  %3871 = fmul fast float %3838, %3757
  %3872 = fmul fast float %3871, %3868
  %3873 = fmul fast float %3839, %3757
  %3874 = fmul fast float %3873, %3868
  %3875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3876 = extractvalue %dx.types.CBufRet.f32 %3875, 3
  %3877 = fmul fast float %3870, %3876
  %3878 = fmul fast float %3872, %3876
  %3879 = fmul fast float %3874, %3876
  %3880 = fcmp fast ogt float %3724, %3804
  br i1 %3880, label %3881, label %3890

; <label>:3881                                    ; preds = %3862
  %3882 = fmul fast float %3806, 0x3FC24924A0000000
  %3883 = fsub fast float %3724, %3804
  %3884 = fdiv fast float %3883, %3882
  %3885 = call float @dx.op.unary.f32(i32 7, float %3884)  ; Saturate(value)
  %3886 = fsub fast float 1.000000e+00, %3885
  %3887 = fmul fast float %3886, %3877
  %3888 = fmul fast float %3886, %3878
  %3889 = fmul fast float %3886, %3879
  br label %3890

; <label>:3890                                    ; preds = %3881, %3862, %3767, %3722
  %3891 = phi float [ %3889, %3881 ], [ %3879, %3862 ], [ 0.000000e+00, %3767 ], [ 0.000000e+00, %3722 ]
  %3892 = phi float [ %3888, %3881 ], [ %3878, %3862 ], [ 0.000000e+00, %3767 ], [ 0.000000e+00, %3722 ]
  %3893 = phi float [ %3887, %3881 ], [ %3877, %3862 ], [ 0.000000e+00, %3767 ], [ 0.000000e+00, %3722 ]
  %3894 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3893)  ; FMax(a,b)
  %3895 = fmul fast float %3894, 0x3FD20DD760000000
  %3896 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3559, float %3560, float %3561)  ; Dot3(ax,ay,az,bx,by,bz)
  %3897 = fmul fast float %3896, 0x3FDF454380000000
  %3898 = fmul fast float %3896, %3896
  %3899 = fmul fast float %3898, 0x3FEE471020000000
  %3900 = fadd fast float %3899, 0xBFD42F6020000000
  %3901 = call float @dx.op.dot3.f32(i32 55, float %3894, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3897, float %3900)  ; Dot3(ax,ay,az,bx,by,bz)
  %3902 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3892)  ; FMax(a,b)
  %3903 = fmul fast float %3902, 0x3FD20DD760000000
  %3904 = call float @dx.op.dot3.f32(i32 55, float %3902, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3897, float %3900)  ; Dot3(ax,ay,az,bx,by,bz)
  %3905 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3891)  ; FMax(a,b)
  %3906 = fmul fast float %3905, 0x3FD20DD760000000
  %3907 = call float @dx.op.dot3.f32(i32 55, float %3905, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3897, float %3900)  ; Dot3(ax,ay,az,bx,by,bz)
  %3908 = call float @dx.op.binary.f32(i32 35, float %3895, float 0.000000e+00)  ; FMax(a,b)
  %3909 = call float @dx.op.binary.f32(i32 35, float %3903, float 0.000000e+00)  ; FMax(a,b)
  %3910 = call float @dx.op.binary.f32(i32 35, float %3906, float 0.000000e+00)  ; FMax(a,b)
  %3911 = call float @dx.op.binary.f32(i32 35, float %3901, float 0.000000e+00)  ; FMax(a,b)
  %3912 = call float @dx.op.binary.f32(i32 35, float %3904, float 0.000000e+00)  ; FMax(a,b)
  %3913 = call float @dx.op.binary.f32(i32 35, float %3907, float 0.000000e+00)  ; FMax(a,b)
  %3914 = fmul fast float %3908, %3611
  %3915 = fmul fast float %3909, %3611
  %3916 = fmul fast float %3910, %3611
  %3917 = fadd fast float %3914, %3715
  %3918 = fadd fast float %3915, %3716
  %3919 = fadd fast float %3916, %3717
  %3920 = fmul fast float %3911, %3611
  %3921 = fmul fast float %3912, %3611
  %3922 = fmul fast float %3913, %3611
  %3923 = fadd fast float %3920, %3712
  %3924 = fadd fast float %3921, %3713
  %3925 = fadd fast float %3922, %3714
  br label %3926

; <label>:3926                                    ; preds = %3890, %3711
  %3927 = phi float [ %3923, %3890 ], [ %3712, %3711 ]
  %3928 = phi float [ %3924, %3890 ], [ %3713, %3711 ]
  %3929 = phi float [ %3925, %3890 ], [ %3714, %3711 ]
  %3930 = phi float [ %3917, %3890 ], [ %3715, %3711 ]
  %3931 = phi float [ %3918, %3890 ], [ %3716, %3711 ]
  %3932 = phi float [ %3919, %3890 ], [ %3717, %3711 ]
  %3933 = fcmp fast olt float %3611, 1.000000e+00
  br i1 %3933, label %3934, label %4752, !dx.controlflow.hints !86

; <label>:3934                                    ; preds = %3926
  %3935 = extractvalue %dx.types.CBufRet.f32 %3567, 2
  %3936 = fadd fast float %3935, %124
  %3937 = fmul fast float %3546, 3.200000e+01
  %3938 = fmul fast float %3547, 3.200000e+01
  %3939 = fadd fast float %3570, %3937
  %3940 = fadd fast float %3571, %3938
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 0
  %3943 = extractvalue %dx.types.CBufRet.f32 %3941, 1
  %3944 = fsub fast float %3939, %3942
  %3945 = fsub fast float %3940, %3943
  %3946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3947 = extractvalue %dx.types.CBufRet.f32 %3946, 0
  %3948 = extractvalue %dx.types.CBufRet.f32 %3946, 1
  %3949 = fmul fast float %3944, %3947
  %3950 = fmul fast float %3945, %3948
  %3951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3952 = extractvalue %dx.types.CBufRet.f32 %3951, 0
  %3953 = fmul fast float %3949, %3952
  %3954 = extractvalue %dx.types.CBufRet.f32 %3951, 1
  %3955 = fadd fast float %3953, %3954
  %3956 = extractvalue %dx.types.CBufRet.f32 %3951, 2
  %3957 = fmul fast float %3956, %3950
  %3958 = extractvalue %dx.types.CBufRet.f32 %3951, 3
  %3959 = fadd fast float %3957, %3958
  %3960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3955, float %3959, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3961 = extractvalue %dx.types.ResRet.f32 %3960, 0
  %3962 = extractvalue %dx.types.ResRet.f32 %3960, 1
  %3963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3964 = extractvalue %dx.types.CBufRet.f32 %3963, 1
  %3965 = extractvalue %dx.types.CBufRet.f32 %3963, 0
  %3966 = fsub fast float %3964, %3965
  %3967 = fmul fast float %3966, %3961
  %3968 = fadd fast float %3967, %3965
  %3969 = extractvalue %dx.types.CBufRet.f32 %3963, 3
  %3970 = extractvalue %dx.types.CBufRet.f32 %3963, 2
  %3971 = fsub fast float %3969, %3970
  %3972 = fmul fast float %3971, %3962
  %3973 = fadd fast float %3972, %3970
  %3974 = fsub fast float %3936, %3968
  %3975 = fsub fast float %3973, %3968
  %3976 = fdiv fast float %3974, %3975
  %3977 = call float @dx.op.unary.f32(i32 7, float %3976)  ; Saturate(value)
  %3978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3979 = extractvalue %dx.types.CBufRet.f32 %3978, 0
  %3980 = fmul fast float %3979, %3977
  %3981 = extractvalue %dx.types.CBufRet.f32 %3978, 1
  %3982 = fadd fast float %3980, %3981
  %3983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %3955, float %3959, float %3982, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3984 = extractvalue %dx.types.ResRet.f32 %3983, 0
  %3985 = extractvalue %dx.types.ResRet.f32 %3983, 1
  %3986 = extractvalue %dx.types.ResRet.f32 %3983, 2
  %3987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3988 = extractvalue %dx.types.CBufRet.f32 %3987, 0
  %3989 = extractvalue %dx.types.CBufRet.f32 %3987, 1
  %3990 = extractvalue %dx.types.CBufRet.f32 %3987, 2
  %3991 = fmul fast float %3988, %3984
  %3992 = fmul fast float %3989, %3985
  %3993 = fmul fast float %3990, %3986
  %3994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3995 = extractvalue %dx.types.CBufRet.f32 %3994, 0
  %3996 = extractvalue %dx.types.CBufRet.f32 %3994, 1
  %3997 = extractvalue %dx.types.CBufRet.f32 %3994, 2
  %3998 = fadd fast float %3991, %3995
  %3999 = fadd fast float %3992, %3996
  %4000 = fadd fast float %3993, %3997
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 0
  %4003 = fmul fast float %4002, %3949
  %4004 = extractvalue %dx.types.CBufRet.f32 %4001, 1
  %4005 = fadd fast float %4003, %4004
  %4006 = extractvalue %dx.types.CBufRet.f32 %4001, 2
  %4007 = fmul fast float %4006, %3950
  %4008 = extractvalue %dx.types.CBufRet.f32 %4001, 3
  %4009 = fadd fast float %4007, %4008
  %4010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4011 = extractvalue %dx.types.CBufRet.f32 %4010, 0
  %4012 = extractvalue %dx.types.CBufRet.f32 %4010, 1
  %4013 = extractvalue %dx.types.CBufRet.f32 %4010, 2
  %4014 = extractvalue %dx.types.CBufRet.f32 %4010, 3
  %4015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4016 = extractvalue %dx.types.CBufRet.f32 %4015, 0
  %4017 = extractvalue %dx.types.CBufRet.f32 %4015, 1
  %4018 = extractvalue %dx.types.CBufRet.f32 %4015, 2
  %4019 = extractvalue %dx.types.CBufRet.f32 %4015, 3
  %4020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4005, float %4009, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4021 = extractvalue %dx.types.ResRet.f32 %4020, 0
  %4022 = extractvalue %dx.types.ResRet.f32 %4020, 1
  %4023 = extractvalue %dx.types.ResRet.f32 %4020, 2
  %4024 = extractvalue %dx.types.ResRet.f32 %4020, 3
  %4025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4005, float %4009, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4026 = extractvalue %dx.types.ResRet.f32 %4025, 0
  %4027 = extractvalue %dx.types.ResRet.f32 %4025, 1
  %4028 = extractvalue %dx.types.ResRet.f32 %4025, 2
  %4029 = extractvalue %dx.types.ResRet.f32 %4025, 3
  %4030 = fmul fast float %4021, %3998
  %4031 = fmul fast float %4026, %3998
  %4032 = fmul fast float %4028, %3998
  %4033 = fmul fast float %4024, %3998
  %4034 = fadd fast float %4030, %4011
  %4035 = fadd fast float %4031, %4012
  %4036 = fadd fast float %4032, %4013
  %4037 = fadd fast float %4033, %4014
  %4038 = fmul fast float %4022, %3998
  %4039 = fmul fast float %4027, %3998
  %4040 = fadd fast float %4038, %4016
  %4041 = fadd fast float %4039, %4017
  %4042 = fmul fast float %4023, %3998
  %4043 = fmul fast float %4029, %3998
  %4044 = fadd fast float %4042, %4018
  %4045 = fadd fast float %4043, %4019
  %4046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4005, float %4009, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4047 = extractvalue %dx.types.ResRet.f32 %4046, 0
  %4048 = extractvalue %dx.types.ResRet.f32 %4046, 1
  %4049 = extractvalue %dx.types.ResRet.f32 %4046, 2
  %4050 = extractvalue %dx.types.ResRet.f32 %4046, 3
  %4051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4005, float %4009, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4052 = extractvalue %dx.types.ResRet.f32 %4051, 0
  %4053 = extractvalue %dx.types.ResRet.f32 %4051, 1
  %4054 = extractvalue %dx.types.ResRet.f32 %4051, 2
  %4055 = extractvalue %dx.types.ResRet.f32 %4051, 3
  %4056 = fmul fast float %4047, %3999
  %4057 = fmul fast float %4052, %3999
  %4058 = fmul fast float %4054, %3999
  %4059 = fmul fast float %4050, %3999
  %4060 = fadd fast float %4034, %4056
  %4061 = fadd fast float %4035, %4057
  %4062 = fadd fast float %4036, %4058
  %4063 = fadd fast float %4037, %4059
  %4064 = fmul fast float %4048, %3999
  %4065 = fmul fast float %4053, %3999
  %4066 = fadd fast float %4040, %4064
  %4067 = fadd fast float %4041, %4065
  %4068 = fmul fast float %4049, %3999
  %4069 = fmul fast float %4055, %3999
  %4070 = fadd fast float %4044, %4068
  %4071 = fadd fast float %4045, %4069
  %4072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4005, float %4009, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4073 = extractvalue %dx.types.ResRet.f32 %4072, 0
  %4074 = extractvalue %dx.types.ResRet.f32 %4072, 1
  %4075 = extractvalue %dx.types.ResRet.f32 %4072, 2
  %4076 = extractvalue %dx.types.ResRet.f32 %4072, 3
  %4077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4005, float %4009, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4078 = extractvalue %dx.types.ResRet.f32 %4077, 0
  %4079 = extractvalue %dx.types.ResRet.f32 %4077, 1
  %4080 = extractvalue %dx.types.ResRet.f32 %4077, 2
  %4081 = extractvalue %dx.types.ResRet.f32 %4077, 3
  %4082 = fmul fast float %4073, %4000
  %4083 = fmul fast float %4078, %4000
  %4084 = fmul fast float %4080, %4000
  %4085 = fmul fast float %4076, %4000
  %4086 = fadd fast float %4060, %4082
  %4087 = fadd fast float %4061, %4083
  %4088 = fadd fast float %4062, %4084
  %4089 = fadd fast float %4063, %4085
  %4090 = fmul fast float %4074, %4000
  %4091 = fmul fast float %4079, %4000
  %4092 = fadd fast float %4066, %4090
  %4093 = fadd fast float %4067, %4091
  %4094 = fmul fast float %4075, %4000
  %4095 = fmul fast float %4081, %4000
  %4096 = fadd fast float %4070, %4094
  %4097 = fadd fast float %4071, %4095
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 0
  %4100 = fsub fast float %3570, %4099
  %4101 = fsub fast float %3942, %3570
  %4102 = call float @dx.op.binary.f32(i32 35, float %4101, float %4100)  ; FMax(a,b)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4098, 1
  %4104 = fsub fast float %3571, %4103
  %4105 = fsub fast float %3943, %3571
  %4106 = call float @dx.op.binary.f32(i32 35, float %4105, float %4104)  ; FMax(a,b)
  %4107 = call float @dx.op.binary.f32(i32 35, float %4102, float %4106)  ; FMax(a,b)
  %4108 = extractvalue %dx.types.CBufRet.f32 %3946, 3
  %4109 = fmul fast float %4108, %4107
  %4110 = call float @dx.op.unary.f32(i32 7, float %4109)  ; Saturate(value)
  %4111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4112 = extractvalue %dx.types.CBufRet.f32 %4111, 0
  %4113 = extractvalue %dx.types.CBufRet.f32 %4111, 1
  %4114 = extractvalue %dx.types.CBufRet.f32 %4111, 2
  %4115 = extractvalue %dx.types.CBufRet.f32 %4111, 3
  %4116 = fsub fast float %4112, %4086
  %4117 = fsub fast float %4113, %4087
  %4118 = fsub fast float %4114, %4088
  %4119 = fsub fast float %4115, %4089
  %4120 = fmul fast float %4116, %4110
  %4121 = fmul fast float %4117, %4110
  %4122 = fmul fast float %4118, %4110
  %4123 = fmul fast float %4119, %4110
  %4124 = fadd fast float %4120, %4086
  %4125 = fadd fast float %4121, %4087
  %4126 = fadd fast float %4122, %4088
  %4127 = fadd fast float %4123, %4089
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 0
  %4130 = extractvalue %dx.types.CBufRet.f32 %4128, 1
  %4131 = fsub fast float %4129, %4092
  %4132 = fsub fast float %4130, %4093
  %4133 = fmul fast float %4131, %4110
  %4134 = fmul fast float %4132, %4110
  %4135 = fadd fast float %4133, %4092
  %4136 = fadd fast float %4134, %4093
  %4137 = extractvalue %dx.types.CBufRet.f32 %4128, 2
  %4138 = extractvalue %dx.types.CBufRet.f32 %4128, 3
  %4139 = fsub fast float %4137, %4096
  %4140 = fsub fast float %4138, %4097
  %4141 = fmul fast float %4139, %4110
  %4142 = fmul fast float %4140, %4110
  %4143 = fadd fast float %4141, %4096
  %4144 = fadd fast float %4142, %4097
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 0
  %4147 = fmul fast float %4146, %4124
  %4148 = fmul fast float %4146, %4125
  %4149 = fmul fast float %4146, %4126
  %4150 = fmul fast float %4146, %4127
  %4151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.f32 %4151, 0
  %4153 = fmul fast float %4152, %4135
  %4154 = fmul fast float %4152, %4136
  %4155 = fadd fast float %4153, %4147
  %4156 = fadd fast float %4154, %4149
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 0
  %4159 = fmul fast float %4158, %4143
  %4160 = fmul fast float %4158, %4144
  %4161 = fadd fast float %4155, %4159
  %4162 = fadd fast float %4156, %4160
  %4163 = extractvalue %dx.types.CBufRet.f32 %4145, 1
  %4164 = fmul fast float %4163, %4124
  %4165 = fmul fast float %4163, %4125
  %4166 = fmul fast float %4163, %4126
  %4167 = fmul fast float %4163, %4127
  %4168 = extractvalue %dx.types.CBufRet.f32 %4151, 1
  %4169 = fmul fast float %4168, %4135
  %4170 = fmul fast float %4168, %4136
  %4171 = fadd fast float %4169, %4164
  %4172 = fadd fast float %4170, %4166
  %4173 = extractvalue %dx.types.CBufRet.f32 %4157, 1
  %4174 = fmul fast float %4173, %4143
  %4175 = fmul fast float %4173, %4144
  %4176 = fadd fast float %4171, %4174
  %4177 = fadd fast float %4172, %4175
  %4178 = extractvalue %dx.types.CBufRet.f32 %4145, 2
  %4179 = fmul fast float %4178, %4124
  %4180 = fmul fast float %4178, %4125
  %4181 = fmul fast float %4178, %4126
  %4182 = fmul fast float %4178, %4127
  %4183 = extractvalue %dx.types.CBufRet.f32 %4151, 2
  %4184 = fmul fast float %4183, %4135
  %4185 = fmul fast float %4183, %4136
  %4186 = fadd fast float %4184, %4179
  %4187 = fadd fast float %4185, %4181
  %4188 = extractvalue %dx.types.CBufRet.f32 %4157, 2
  %4189 = fmul fast float %4188, %4143
  %4190 = fmul fast float %4188, %4144
  %4191 = fadd fast float %4186, %4189
  %4192 = fadd fast float %4187, %4190
  %4193 = fmul fast float %4180, %4180
  %4194 = fmul fast float %4192, %4192
  %4195 = fmul fast float %4182, %4182
  %4196 = fadd fast float %4195, %4193
  %4197 = fadd fast float %4196, %4194
  %4198 = call float @dx.op.unary.f32(i32 24, float %4197)  ; Sqrt(value)
  %4199 = fcmp fast ugt float %4198, 0.000000e+00
  br i1 %4199, label %4200, label %4215

; <label>:4200                                    ; preds = %3934
  %4201 = fsub fast float -0.000000e+00, %4182
  %4202 = fdiv fast float %4201, %4198
  %4203 = fsub fast float -0.000000e+00, %4180
  %4204 = fdiv fast float %4203, %4198
  %4205 = fdiv fast float %4192, %4198
  %4206 = fmul fast float %4191, 0x3FE279A760000000
  %4207 = fmul fast float %4204, %4180
  %4208 = fmul fast float %4205, %4192
  %4209 = fmul fast float %4202, %4182
  %4210 = fadd fast float %4207, %4209
  %4211 = fsub fast float %4210, %4208
  %4212 = call float @dx.op.unary.f32(i32 6, float %4211)  ; FAbs(value)
  %4213 = fadd fast float %4212, 0x3DDB7CDFE0000000
  %4214 = fdiv fast float %4206, %4213
  br label %4215

; <label>:4215                                    ; preds = %4200, %3934
  %4216 = phi float [ %4214, %4200 ], [ 1.000000e+00, %3934 ]
  %4217 = fmul fast float %4165, %4165
  %4218 = fmul fast float %4177, %4177
  %4219 = fmul fast float %4167, %4167
  %4220 = fadd fast float %4219, %4217
  %4221 = fadd fast float %4220, %4218
  %4222 = call float @dx.op.unary.f32(i32 24, float %4221)  ; Sqrt(value)
  %4223 = fcmp fast ugt float %4222, 0.000000e+00
  br i1 %4223, label %4224, label %4239

; <label>:4224                                    ; preds = %4215
  %4225 = fsub fast float -0.000000e+00, %4167
  %4226 = fdiv fast float %4225, %4222
  %4227 = fsub fast float -0.000000e+00, %4165
  %4228 = fdiv fast float %4227, %4222
  %4229 = fdiv fast float %4177, %4222
  %4230 = fmul fast float %4176, 0x3FE279A760000000
  %4231 = fmul fast float %4228, %4165
  %4232 = fmul fast float %4229, %4177
  %4233 = fmul fast float %4226, %4167
  %4234 = fadd fast float %4231, %4233
  %4235 = fsub fast float %4234, %4232
  %4236 = call float @dx.op.unary.f32(i32 6, float %4235)  ; FAbs(value)
  %4237 = fadd fast float %4236, 0x3DDB7CDFE0000000
  %4238 = fdiv fast float %4230, %4237
  br label %4239

; <label>:4239                                    ; preds = %4224, %4215
  %4240 = phi float [ %4238, %4224 ], [ 1.000000e+00, %4215 ]
  %4241 = call float @dx.op.binary.f32(i32 36, float %4240, float %4216)  ; FMin(a,b)
  %4242 = fmul fast float %4148, %4148
  %4243 = fmul fast float %4162, %4162
  %4244 = fmul fast float %4150, %4150
  %4245 = fadd fast float %4244, %4242
  %4246 = fadd fast float %4245, %4243
  %4247 = call float @dx.op.unary.f32(i32 24, float %4246)  ; Sqrt(value)
  %4248 = fcmp fast ugt float %4247, 0.000000e+00
  br i1 %4248, label %4249, label %4264

; <label>:4249                                    ; preds = %4239
  %4250 = fsub fast float -0.000000e+00, %4150
  %4251 = fdiv fast float %4250, %4247
  %4252 = fsub fast float -0.000000e+00, %4148
  %4253 = fdiv fast float %4252, %4247
  %4254 = fdiv fast float %4162, %4247
  %4255 = fmul fast float %4161, 0x3FE279A760000000
  %4256 = fmul fast float %4253, %4148
  %4257 = fmul fast float %4254, %4162
  %4258 = fmul fast float %4251, %4150
  %4259 = fadd fast float %4256, %4258
  %4260 = fsub fast float %4259, %4257
  %4261 = call float @dx.op.unary.f32(i32 6, float %4260)  ; FAbs(value)
  %4262 = fadd fast float %4261, 0x3DDB7CDFE0000000
  %4263 = fdiv fast float %4255, %4262
  br label %4264

; <label>:4264                                    ; preds = %4249, %4239
  %4265 = phi float [ %4263, %4249 ], [ 1.000000e+00, %4239 ]
  %4266 = call float @dx.op.binary.f32(i32 36, float %4265, float %4241)  ; FMin(a,b)
  %4267 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4268 = fcmp fast olt float %4267, 1.000000e+00
  br i1 %4268, label %4269, label %4279

; <label>:4269                                    ; preds = %4264
  %4270 = fmul fast float %4267, %4148
  %4271 = fmul fast float %4267, %4162
  %4272 = fmul fast float %4267, %4150
  %4273 = fmul fast float %4267, %4165
  %4274 = fmul fast float %4267, %4177
  %4275 = fmul fast float %4267, %4167
  %4276 = fmul fast float %4267, %4180
  %4277 = fmul fast float %4267, %4192
  %4278 = fmul fast float %4267, %4182
  br label %4279

; <label>:4279                                    ; preds = %4269, %4264
  %4280 = phi float [ %4276, %4269 ], [ %4180, %4264 ]
  %4281 = phi float [ %4277, %4269 ], [ %4192, %4264 ]
  %4282 = phi float [ %4278, %4269 ], [ %4182, %4264 ]
  %4283 = phi float [ %4273, %4269 ], [ %4165, %4264 ]
  %4284 = phi float [ %4274, %4269 ], [ %4177, %4264 ]
  %4285 = phi float [ %4275, %4269 ], [ %4167, %4264 ]
  %4286 = phi float [ %4270, %4269 ], [ %4148, %4264 ]
  %4287 = phi float [ %4271, %4269 ], [ %4162, %4264 ]
  %4288 = phi float [ %4272, %4269 ], [ %4150, %4264 ]
  %4289 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4161)  ; FMax(a,b)
  %4290 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4176)  ; FMax(a,b)
  %4291 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4191)  ; FMax(a,b)
  %4292 = fcmp fast oge float %3949, 0.000000e+00
  %4293 = and i1 %4292, %3720
  %4294 = fcmp fast ole float %3949, 1.000000e+00
  %4295 = and i1 %4294, %4293
  %4296 = fcmp fast oge float %3950, 0.000000e+00
  %4297 = and i1 %4296, %4295
  %4298 = fcmp fast ole float %3950, 1.000000e+00
  %4299 = and i1 %4298, %4297
  br i1 %4299, label %4300, label %4445, !dx.controlflow.hints !87

; <label>:4300                                    ; preds = %4279
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 2
  %4303 = extractvalue %dx.types.CBufRet.f32 %4301, 3
  %4304 = fmul fast float %4302, %3949
  %4305 = fmul fast float %4303, %3950
  %4306 = call float @dx.op.unary.f32(i32 27, float %4304)  ; Round_ni(value)
  %4307 = call float @dx.op.unary.f32(i32 27, float %4305)  ; Round_ni(value)
  %4308 = fptosi float %4306 to i32
  %4309 = fptosi float %4307 to i32
  %4310 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %4308, i32 %4309, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4311 = extractvalue %dx.types.ResRet.i32 %4310, 0
  %4312 = and i32 %4311, 65535
  %4313 = lshr i32 %4311, 16
  %4314 = icmp eq i32 %4312, 65535
  br i1 %4314, label %4351, label %4315

; <label>:4315                                    ; preds = %4300
  %4316 = extractvalue %dx.types.CBufRet.f32 %3718, 1
  %4317 = extractvalue %dx.types.CBufRet.f32 %4301, 0
  %4318 = extractvalue %dx.types.CBufRet.f32 %4301, 1
  %4319 = fmul fast float %4317, %3949
  %4320 = fmul fast float %4318, %3950
  %4321 = fmul fast float %4319, 1.250000e-01
  %4322 = fmul fast float %4320, 1.250000e-01
  %4323 = call float @dx.op.unary.f32(i32 27, float %4321)  ; Round_ni(value)
  %4324 = call float @dx.op.unary.f32(i32 27, float %4322)  ; Round_ni(value)
  %4325 = fmul fast float %4323, 8.000000e+00
  %4326 = fmul fast float %4324, 8.000000e+00
  %4327 = and i32 %4311, 255
  %4328 = lshr i32 %4311, 8
  %4329 = and i32 %4328, 255
  %4330 = mul nuw nsw i32 %4327, 9
  %4331 = uitofp i32 %4330 to float
  %4332 = mul nuw nsw i32 %4329, 9
  %4333 = uitofp i32 %4332 to float
  %4334 = fadd fast float %4331, 5.000000e-01
  %4335 = fadd fast float %4334, %4319
  %4336 = fsub fast float %4335, %4325
  %4337 = fadd fast float %4333, 5.000000e-01
  %4338 = fadd fast float %4337, %4320
  %4339 = fsub fast float %4338, %4326
  %4340 = fdiv fast float %4336, %3719
  %4341 = fdiv fast float %4339, %4316
  %4342 = fmul fast float %3977, 4.375000e-01
  %4343 = fadd fast float %4342, 3.125000e-02
  %4344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4340, float %4341, float %4343, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = extractvalue %dx.types.ResRet.f32 %4344, 1
  %4347 = extractvalue %dx.types.ResRet.f32 %4344, 2
  %4348 = fadd fast float %4345, %4289
  %4349 = fadd fast float %4346, %4290
  %4350 = fadd fast float %4347, %4291
  br label %4351

; <label>:4351                                    ; preds = %4315, %4300
  %4352 = phi float [ %4350, %4315 ], [ %4291, %4300 ]
  %4353 = phi float [ %4349, %4315 ], [ %4290, %4300 ]
  %4354 = phi float [ %4348, %4315 ], [ %4289, %4300 ]
  %4355 = icmp eq i32 %4313, 65535
  br i1 %4355, label %4445, label %4356

; <label>:4356                                    ; preds = %4351
  %4357 = extractvalue %dx.types.CBufRet.f32 %3718, 1
  %4358 = extractvalue %dx.types.CBufRet.f32 %4301, 0
  %4359 = extractvalue %dx.types.CBufRet.f32 %4301, 1
  %4360 = fmul fast float %4358, %3949
  %4361 = fmul fast float %4359, %3950
  %4362 = fmul fast float %4360, 1.250000e-01
  %4363 = fmul fast float %4361, 1.250000e-01
  %4364 = call float @dx.op.unary.f32(i32 27, float %4362)  ; Round_ni(value)
  %4365 = call float @dx.op.unary.f32(i32 27, float %4363)  ; Round_ni(value)
  %4366 = fmul fast float %4364, 8.000000e+00
  %4367 = fmul fast float %4365, 8.000000e+00
  %4368 = fsub fast float %4360, %4366
  %4369 = fsub fast float %4361, %4367
  %4370 = fadd fast float %4368, 5.000000e-01
  %4371 = fadd fast float %4369, 5.000000e-01
  %4372 = and i32 %4313, 255
  %4373 = lshr i32 %4311, 24
  %4374 = mul nuw nsw i32 %4372, 9
  %4375 = uitofp i32 %4374 to float
  %4376 = mul nuw nsw i32 %4373, 9
  %4377 = uitofp i32 %4376 to float
  %4378 = fadd fast float %4370, %4375
  %4379 = fadd fast float %4371, %4377
  %4380 = fdiv fast float %4378, %3719
  %4381 = fdiv fast float %4379, %4357
  %4382 = fmul fast float %3977, 4.375000e-01
  %4383 = fadd fast float %4382, 3.125000e-02
  %4384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4380, float %4381, float %4383, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4385 = extractvalue %dx.types.ResRet.f32 %4384, 0
  %4386 = extractvalue %dx.types.ResRet.f32 %4384, 1
  %4387 = extractvalue %dx.types.ResRet.f32 %4384, 2
  %4388 = fadd fast float %4382, 5.312500e-01
  %4389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4380, float %4381, float %4388, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4390 = extractvalue %dx.types.ResRet.f32 %4389, 0
  %4391 = extractvalue %dx.types.ResRet.f32 %4389, 1
  %4392 = extractvalue %dx.types.ResRet.f32 %4389, 2
  %4393 = fmul fast float %4390, 2.000000e+00
  %4394 = fmul fast float %4391, 2.000000e+00
  %4395 = fmul fast float %4392, 2.000000e+00
  %4396 = fadd fast float %4393, -1.000000e+00
  %4397 = fadd fast float %4394, -1.000000e+00
  %4398 = fadd fast float %4395, -1.000000e+00
  %4399 = fmul fast float %4396, %4396
  %4400 = fmul fast float %4397, %4397
  %4401 = fadd fast float %4399, %4400
  %4402 = fmul fast float %4398, %4398
  %4403 = fadd fast float %4401, %4402
  %4404 = call float @dx.op.unary.f32(i32 24, float %4403)  ; Sqrt(value)
  %4405 = fcmp fast ogt float %4404, 0.000000e+00
  br i1 %4405, label %4406, label %4410

; <label>:4406                                    ; preds = %4356
  %4407 = fdiv fast float %4396, %4404
  %4408 = fdiv fast float %4397, %4404
  %4409 = fdiv fast float %4398, %4404
  br label %4410

; <label>:4410                                    ; preds = %4406, %4356
  %4411 = phi float [ %4407, %4406 ], [ 0.000000e+00, %4356 ]
  %4412 = phi float [ %4408, %4406 ], [ 0.000000e+00, %4356 ]
  %4413 = phi float [ %4409, %4406 ], [ 0.000000e+00, %4356 ]
  %4414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.f32 %4414, 0
  %4416 = extractvalue %dx.types.CBufRet.f32 %4414, 1
  %4417 = fsub fast float %3570, %4415
  %4418 = fsub fast float %3571, %4416
  %4419 = fmul fast float %4417, %4417
  %4420 = fmul fast float %4418, %4418
  %4421 = fadd fast float %4419, %4420
  %4422 = call float @dx.op.unary.f32(i32 24, float %4421)  ; Sqrt(value)
  %4423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4424 = extractvalue %dx.types.CBufRet.f32 %4423, 0
  %4425 = extractvalue %dx.types.CBufRet.f32 %4423, 1
  %4426 = fsub fast float %4422, %4424
  %4427 = fdiv fast float %4426, %4425
  %4428 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4429 = fmul fast float %4428, 2.000000e+00
  %4430 = fsub fast float 3.000000e+00, %4429
  %4431 = fmul fast float %4428, %4428
  %4432 = fmul fast float %4431, %4430
  %4433 = call float @dx.op.dot3.f32(i32 55, float %4411, float %4412, float %4413, float %3546, float %3547, float %3548)  ; Dot3(ax,ay,az,bx,by,bz)
  %4434 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4433)  ; FMax(a,b)
  %4435 = fmul fast float %4434, 0x400C5BF8A0000000
  %4436 = fmul fast float %4432, %4385
  %4437 = fmul fast float %4436, %4435
  %4438 = fadd fast float %4437, %4354
  %4439 = fmul fast float %4432, %4386
  %4440 = fmul fast float %4439, %4435
  %4441 = fadd fast float %4440, %4353
  %4442 = fmul fast float %4432, %4387
  %4443 = fmul fast float %4442, %4435
  %4444 = fadd fast float %4443, %4352
  br label %4445

; <label>:4445                                    ; preds = %4410, %4351, %4279
  %4446 = phi float [ %4444, %4410 ], [ %4352, %4351 ], [ %4291, %4279 ]
  %4447 = phi float [ %4441, %4410 ], [ %4353, %4351 ], [ %4290, %4279 ]
  %4448 = phi float [ %4438, %4410 ], [ %4354, %4351 ], [ %4289, %4279 ]
  %4449 = fcmp fast ogt float %3936, %3973
  %4450 = and i1 %4292, %4449
  %4451 = and i1 %4294, %4450
  %4452 = and i1 %4296, %4451
  %4453 = and i1 %4298, %4452
  br i1 %4453, label %4454, label %4511, !dx.controlflow.hints !88

; <label>:4454                                    ; preds = %4445
  %4455 = fmul fast float %3975, 0x3FC24924A0000000
  %4456 = fsub fast float %3936, %3973
  %4457 = fdiv fast float %4456, %4455
  %4458 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 0
  %4461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %4462 = extractvalue %dx.types.CBufRet.f32 %4461, 0
  %4463 = extractvalue %dx.types.CBufRet.f32 %4461, 1
  %4464 = extractvalue %dx.types.CBufRet.f32 %4461, 2
  %4465 = fsub fast float %4460, %4448
  %4466 = fsub fast float %4462, %4286
  %4467 = fsub fast float %4463, %4287
  %4468 = fsub fast float %4464, %4288
  %4469 = fmul fast float %4465, %4458
  %4470 = fmul fast float %4466, %4458
  %4471 = fmul fast float %4467, %4458
  %4472 = fmul fast float %4468, %4458
  %4473 = fadd fast float %4469, %4448
  %4474 = fadd fast float %4470, %4286
  %4475 = fadd fast float %4471, %4287
  %4476 = fadd fast float %4472, %4288
  %4477 = extractvalue %dx.types.CBufRet.f32 %4459, 1
  %4478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.f32 %4478, 0
  %4480 = extractvalue %dx.types.CBufRet.f32 %4478, 1
  %4481 = extractvalue %dx.types.CBufRet.f32 %4478, 2
  %4482 = fsub fast float %4477, %4447
  %4483 = fsub fast float %4479, %4283
  %4484 = fsub fast float %4480, %4284
  %4485 = fsub fast float %4481, %4285
  %4486 = fmul fast float %4482, %4458
  %4487 = fmul fast float %4483, %4458
  %4488 = fmul fast float %4484, %4458
  %4489 = fmul fast float %4485, %4458
  %4490 = fadd fast float %4486, %4447
  %4491 = fadd fast float %4487, %4283
  %4492 = fadd fast float %4488, %4284
  %4493 = fadd fast float %4489, %4285
  %4494 = extractvalue %dx.types.CBufRet.f32 %4459, 2
  %4495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %4496 = extractvalue %dx.types.CBufRet.f32 %4495, 0
  %4497 = extractvalue %dx.types.CBufRet.f32 %4495, 1
  %4498 = extractvalue %dx.types.CBufRet.f32 %4495, 2
  %4499 = fsub fast float %4494, %4446
  %4500 = fsub fast float %4496, %4280
  %4501 = fsub fast float %4497, %4281
  %4502 = fsub fast float %4498, %4282
  %4503 = fmul fast float %4499, %4458
  %4504 = fmul fast float %4500, %4458
  %4505 = fmul fast float %4501, %4458
  %4506 = fmul fast float %4502, %4458
  %4507 = fadd fast float %4503, %4446
  %4508 = fadd fast float %4504, %4280
  %4509 = fadd fast float %4505, %4281
  %4510 = fadd fast float %4506, %4282
  br label %4511

; <label>:4511                                    ; preds = %4454, %4445
  %4512 = phi float [ %4507, %4454 ], [ %4446, %4445 ]
  %4513 = phi float [ %4508, %4454 ], [ %4280, %4445 ]
  %4514 = phi float [ %4509, %4454 ], [ %4281, %4445 ]
  %4515 = phi float [ %4510, %4454 ], [ %4282, %4445 ]
  %4516 = phi float [ %4490, %4454 ], [ %4447, %4445 ]
  %4517 = phi float [ %4491, %4454 ], [ %4283, %4445 ]
  %4518 = phi float [ %4492, %4454 ], [ %4284, %4445 ]
  %4519 = phi float [ %4493, %4454 ], [ %4285, %4445 ]
  %4520 = phi float [ %4473, %4454 ], [ %4448, %4445 ]
  %4521 = phi float [ %4474, %4454 ], [ %4286, %4445 ]
  %4522 = phi float [ %4475, %4454 ], [ %4287, %4445 ]
  %4523 = phi float [ %4476, %4454 ], [ %4288, %4445 ]
  %4524 = extractvalue %dx.types.CBufRet.f32 %4098, 3
  %4525 = fmul fast float %4524, %4520
  %4526 = fmul fast float %4524, %4516
  %4527 = fmul fast float %4524, %4512
  %4528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4528, 3
  %4530 = fmul fast float %4525, %4529
  %4531 = fmul fast float %4526, %4529
  %4532 = fmul fast float %4527, %4529
  %4533 = fmul fast float %4521, 1.500000e+00
  %4534 = fmul fast float %4533, %4524
  %4535 = fmul fast float %4534, %4529
  %4536 = fmul fast float %4522, 1.500000e+00
  %4537 = fmul fast float %4536, %4524
  %4538 = fmul fast float %4537, %4529
  %4539 = fmul fast float %4523, 1.500000e+00
  %4540 = fmul fast float %4539, %4524
  %4541 = fmul fast float %4540, %4529
  %4542 = fmul fast float %4517, 1.500000e+00
  %4543 = fmul fast float %4542, %4524
  %4544 = fmul fast float %4543, %4529
  %4545 = fmul fast float %4518, 1.500000e+00
  %4546 = fmul fast float %4545, %4524
  %4547 = fmul fast float %4546, %4529
  %4548 = fmul fast float %4519, 1.500000e+00
  %4549 = fmul fast float %4548, %4524
  %4550 = fmul fast float %4549, %4529
  %4551 = fmul fast float %4513, 1.500000e+00
  %4552 = fmul fast float %4551, %4524
  %4553 = fmul fast float %4552, %4529
  %4554 = fmul fast float %4514, 1.500000e+00
  %4555 = fmul fast float %4554, %4524
  %4556 = fmul fast float %4555, %4529
  %4557 = fmul fast float %4515, 1.500000e+00
  %4558 = fmul fast float %4557, %4524
  %4559 = fmul fast float %4558, %4529
  %4560 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4530)  ; FMax(a,b)
  %4561 = call float @dx.op.dot3.f32(i32 55, float %4535, float %4538, float %4541, float %4535, float %4538, float %4541)  ; Dot3(ax,ay,az,bx,by,bz)
  %4562 = fcmp fast oeq float %4561, 0.000000e+00
  %4563 = fcmp fast oeq float %4560, 0.000000e+00
  %4564 = or i1 %4563, %4562
  br i1 %4564, label %4594, label %4565

; <label>:4565                                    ; preds = %4511
  %4566 = fsub fast float -0.000000e+00, %4541
  %4567 = fsub fast float -0.000000e+00, %4535
  %4568 = call float @dx.op.unary.f32(i32 24, float %4561)  ; Sqrt(value)
  %4569 = fdiv fast float %4568, %4560
  %4570 = fcmp fast ogt float %4569, 0x3FFB6F8900000000
  %4571 = select i1 %4570, float 0x3FFB6F8900000000, float %4569
  %4572 = fmul fast float %4571, 0x3FE8A23460000000
  %4573 = call float @dx.op.unary.f32(i32 7, float %4572)  ; Saturate(value)
  %4574 = call float @dx.op.binary.f32(i32 35, float %4571, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4575 = fmul fast float %4573, %4560
  %4576 = fmul fast float %4574, 0x3FF279A740000000
  %4577 = fadd fast float %4576, -1.000000e+00
  %4578 = call float @dx.op.dot3.f32(i32 55, float %4566, float %4567, float %4538, float %4566, float %4567, float %4538)  ; Dot3(ax,ay,az,bx,by,bz)
  %4579 = call float @dx.op.unary.f32(i32 25, float %4578)  ; Rsqrt(value)
  %4580 = fmul fast float %4579, %4566
  %4581 = fmul fast float %4579, %4567
  %4582 = fmul fast float %4579, %4538
  %4583 = fmul fast float %4577, %4577
  %4584 = fsub fast float 1.000000e+00, %4583
  %4585 = fmul fast float %4574, 0x40005F8BE0000000
  %4586 = fsub fast float 0x400C5BF8A0000000, %4585
  %4587 = fdiv fast float %4575, %4586
  %4588 = fmul fast float %4587, 0x3FEE31C3C0000000
  %4589 = fmul fast float %4588, %4584
  %4590 = fmul fast float %4574, 0x3FDACB7480000000
  %4591 = fadd fast float %4590, 0xBFD7347680000000
  %4592 = fmul fast float %4591, %4587
  %4593 = fmul fast float %4592, %4584
  br label %4594

; <label>:4594                                    ; preds = %4565, %4511
  %4595 = phi float [ %4580, %4565 ], [ 0.000000e+00, %4511 ]
  %4596 = phi float [ %4581, %4565 ], [ 0.000000e+00, %4511 ]
  %4597 = phi float [ %4582, %4565 ], [ 0.000000e+00, %4511 ]
  %4598 = phi float [ %4589, %4565 ], [ 0.000000e+00, %4511 ]
  %4599 = phi float [ %4593, %4565 ], [ 0.000000e+00, %4511 ]
  %4600 = call float @dx.op.dot3.f32(i32 55, float %4595, float %4596, float %4597, float %3546, float %3547, float %3548)  ; Dot3(ax,ay,az,bx,by,bz)
  %4601 = fmul fast float %4600, %4600
  %4602 = fmul fast float %4601, 0x3FEE471020000000
  %4603 = fadd fast float %4602, 0xBFD42F6020000000
  %4604 = fmul fast float %4560, 0x3FD20DD760000000
  %4605 = fmul fast float %4603, %4599
  %4606 = fmul fast float %4598, 0x3FDF454380000000
  %4607 = fmul fast float %4606, %4600
  %4608 = fadd fast float %4607, %4604
  %4609 = fadd fast float %4608, %4605
  %4610 = call float @dx.op.dot3.f32(i32 55, float %4595, float %4596, float %4597, float %3559, float %3560, float %3561)  ; Dot3(ax,ay,az,bx,by,bz)
  %4611 = fmul fast float %4610, 0x3FDF454380000000
  %4612 = fmul fast float %4610, %4610
  %4613 = fmul fast float %4612, 0x3FEE471020000000
  %4614 = fadd fast float %4613, 0xBFD42F6020000000
  %4615 = call float @dx.op.dot3.f32(i32 55, float %4560, float %4598, float %4599, float 0x3FD20DD760000000, float %4611, float %4614)  ; Dot3(ax,ay,az,bx,by,bz)
  %4616 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4531)  ; FMax(a,b)
  %4617 = call float @dx.op.dot3.f32(i32 55, float %4544, float %4547, float %4550, float %4544, float %4547, float %4550)  ; Dot3(ax,ay,az,bx,by,bz)
  %4618 = fcmp fast oeq float %4617, 0.000000e+00
  %4619 = fcmp fast oeq float %4616, 0.000000e+00
  %4620 = or i1 %4619, %4618
  br i1 %4620, label %4650, label %4621

; <label>:4621                                    ; preds = %4594
  %4622 = fsub fast float -0.000000e+00, %4550
  %4623 = fsub fast float -0.000000e+00, %4544
  %4624 = call float @dx.op.unary.f32(i32 24, float %4617)  ; Sqrt(value)
  %4625 = fdiv fast float %4624, %4616
  %4626 = fcmp fast ogt float %4625, 0x3FFB6F8900000000
  %4627 = select i1 %4626, float 0x3FFB6F8900000000, float %4625
  %4628 = fmul fast float %4627, 0x3FE8A23460000000
  %4629 = call float @dx.op.unary.f32(i32 7, float %4628)  ; Saturate(value)
  %4630 = call float @dx.op.binary.f32(i32 35, float %4627, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4631 = fmul fast float %4629, %4616
  %4632 = fmul fast float %4630, 0x3FF279A740000000
  %4633 = fadd fast float %4632, -1.000000e+00
  %4634 = call float @dx.op.dot3.f32(i32 55, float %4622, float %4623, float %4547, float %4622, float %4623, float %4547)  ; Dot3(ax,ay,az,bx,by,bz)
  %4635 = call float @dx.op.unary.f32(i32 25, float %4634)  ; Rsqrt(value)
  %4636 = fmul fast float %4635, %4622
  %4637 = fmul fast float %4635, %4623
  %4638 = fmul fast float %4635, %4547
  %4639 = fmul fast float %4633, %4633
  %4640 = fsub fast float 1.000000e+00, %4639
  %4641 = fmul fast float %4630, 0x40005F8BE0000000
  %4642 = fsub fast float 0x400C5BF8A0000000, %4641
  %4643 = fdiv fast float %4631, %4642
  %4644 = fmul fast float %4643, 0x3FEE31C3C0000000
  %4645 = fmul fast float %4644, %4640
  %4646 = fmul fast float %4630, 0x3FDACB7480000000
  %4647 = fadd fast float %4646, 0xBFD7347680000000
  %4648 = fmul fast float %4647, %4643
  %4649 = fmul fast float %4648, %4640
  br label %4650

; <label>:4650                                    ; preds = %4621, %4594
  %4651 = phi float [ %4636, %4621 ], [ 0.000000e+00, %4594 ]
  %4652 = phi float [ %4637, %4621 ], [ 0.000000e+00, %4594 ]
  %4653 = phi float [ %4638, %4621 ], [ 0.000000e+00, %4594 ]
  %4654 = phi float [ %4645, %4621 ], [ 0.000000e+00, %4594 ]
  %4655 = phi float [ %4649, %4621 ], [ 0.000000e+00, %4594 ]
  %4656 = call float @dx.op.dot3.f32(i32 55, float %4651, float %4652, float %4653, float %3546, float %3547, float %3548)  ; Dot3(ax,ay,az,bx,by,bz)
  %4657 = fmul fast float %4656, %4656
  %4658 = fmul fast float %4657, 0x3FEE471020000000
  %4659 = fadd fast float %4658, 0xBFD42F6020000000
  %4660 = fmul fast float %4616, 0x3FD20DD760000000
  %4661 = fmul fast float %4659, %4655
  %4662 = fmul fast float %4654, 0x3FDF454380000000
  %4663 = fmul fast float %4662, %4656
  %4664 = fadd fast float %4663, %4660
  %4665 = fadd fast float %4664, %4661
  %4666 = call float @dx.op.dot3.f32(i32 55, float %4651, float %4652, float %4653, float %3559, float %3560, float %3561)  ; Dot3(ax,ay,az,bx,by,bz)
  %4667 = fmul fast float %4666, 0x3FDF454380000000
  %4668 = fmul fast float %4666, %4666
  %4669 = fmul fast float %4668, 0x3FEE471020000000
  %4670 = fadd fast float %4669, 0xBFD42F6020000000
  %4671 = call float @dx.op.dot3.f32(i32 55, float %4616, float %4654, float %4655, float 0x3FD20DD760000000, float %4667, float %4670)  ; Dot3(ax,ay,az,bx,by,bz)
  %4672 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4532)  ; FMax(a,b)
  %4673 = call float @dx.op.dot3.f32(i32 55, float %4553, float %4556, float %4559, float %4553, float %4556, float %4559)  ; Dot3(ax,ay,az,bx,by,bz)
  %4674 = fcmp fast oeq float %4673, 0.000000e+00
  %4675 = fcmp fast oeq float %4672, 0.000000e+00
  %4676 = or i1 %4675, %4674
  br i1 %4676, label %4706, label %4677

; <label>:4677                                    ; preds = %4650
  %4678 = fsub fast float -0.000000e+00, %4559
  %4679 = fsub fast float -0.000000e+00, %4553
  %4680 = call float @dx.op.unary.f32(i32 24, float %4673)  ; Sqrt(value)
  %4681 = fdiv fast float %4680, %4672
  %4682 = fcmp fast ogt float %4681, 0x3FFB6F8900000000
  %4683 = select i1 %4682, float 0x3FFB6F8900000000, float %4681
  %4684 = fmul fast float %4683, 0x3FE8A23460000000
  %4685 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4686 = call float @dx.op.binary.f32(i32 35, float %4683, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4687 = fmul fast float %4685, %4672
  %4688 = fmul fast float %4686, 0x3FF279A740000000
  %4689 = fadd fast float %4688, -1.000000e+00
  %4690 = call float @dx.op.dot3.f32(i32 55, float %4678, float %4679, float %4556, float %4678, float %4679, float %4556)  ; Dot3(ax,ay,az,bx,by,bz)
  %4691 = call float @dx.op.unary.f32(i32 25, float %4690)  ; Rsqrt(value)
  %4692 = fmul fast float %4691, %4678
  %4693 = fmul fast float %4691, %4679
  %4694 = fmul fast float %4691, %4556
  %4695 = fmul fast float %4689, %4689
  %4696 = fsub fast float 1.000000e+00, %4695
  %4697 = fmul fast float %4686, 0x40005F8BE0000000
  %4698 = fsub fast float 0x400C5BF8A0000000, %4697
  %4699 = fdiv fast float %4687, %4698
  %4700 = fmul fast float %4699, 0x3FEE31C3C0000000
  %4701 = fmul fast float %4700, %4696
  %4702 = fmul fast float %4686, 0x3FDACB7480000000
  %4703 = fadd fast float %4702, 0xBFD7347680000000
  %4704 = fmul fast float %4703, %4699
  %4705 = fmul fast float %4704, %4696
  br label %4706

; <label>:4706                                    ; preds = %4677, %4650
  %4707 = phi float [ %4692, %4677 ], [ 0.000000e+00, %4650 ]
  %4708 = phi float [ %4693, %4677 ], [ 0.000000e+00, %4650 ]
  %4709 = phi float [ %4694, %4677 ], [ 0.000000e+00, %4650 ]
  %4710 = phi float [ %4701, %4677 ], [ 0.000000e+00, %4650 ]
  %4711 = phi float [ %4705, %4677 ], [ 0.000000e+00, %4650 ]
  %4712 = call float @dx.op.dot3.f32(i32 55, float %4707, float %4708, float %4709, float %3546, float %3547, float %3548)  ; Dot3(ax,ay,az,bx,by,bz)
  %4713 = fmul fast float %4712, %4712
  %4714 = fmul fast float %4713, 0x3FEE471020000000
  %4715 = fadd fast float %4714, 0xBFD42F6020000000
  %4716 = fmul fast float %4672, 0x3FD20DD760000000
  %4717 = fmul fast float %4715, %4711
  %4718 = fmul fast float %4710, 0x3FDF454380000000
  %4719 = fmul fast float %4718, %4712
  %4720 = fadd fast float %4719, %4716
  %4721 = fadd fast float %4720, %4717
  %4722 = call float @dx.op.dot3.f32(i32 55, float %4707, float %4708, float %4709, float %3559, float %3560, float %3561)  ; Dot3(ax,ay,az,bx,by,bz)
  %4723 = fmul fast float %4722, 0x3FDF454380000000
  %4724 = fmul fast float %4722, %4722
  %4725 = fmul fast float %4724, 0x3FEE471020000000
  %4726 = fadd fast float %4725, 0xBFD42F6020000000
  %4727 = call float @dx.op.dot3.f32(i32 55, float %4672, float %4710, float %4711, float 0x3FD20DD760000000, float %4723, float %4726)  ; Dot3(ax,ay,az,bx,by,bz)
  %4728 = call float @dx.op.binary.f32(i32 35, float %4609, float 0.000000e+00)  ; FMax(a,b)
  %4729 = call float @dx.op.binary.f32(i32 35, float %4665, float 0.000000e+00)  ; FMax(a,b)
  %4730 = call float @dx.op.binary.f32(i32 35, float %4721, float 0.000000e+00)  ; FMax(a,b)
  %4731 = call float @dx.op.binary.f32(i32 35, float %4615, float 0.000000e+00)  ; FMax(a,b)
  %4732 = call float @dx.op.binary.f32(i32 35, float %4671, float 0.000000e+00)  ; FMax(a,b)
  %4733 = call float @dx.op.binary.f32(i32 35, float %4727, float 0.000000e+00)  ; FMax(a,b)
  %4734 = fsub fast float %3930, %4728
  %4735 = fsub fast float %3931, %4729
  %4736 = fsub fast float %3932, %4730
  %4737 = fmul fast float %4734, %3611
  %4738 = fmul fast float %4735, %3611
  %4739 = fmul fast float %4736, %3611
  %4740 = fadd fast float %4737, %4728
  %4741 = fadd fast float %4738, %4729
  %4742 = fadd fast float %4739, %4730
  %4743 = fsub fast float %3927, %4731
  %4744 = fsub fast float %3928, %4732
  %4745 = fsub fast float %3929, %4733
  %4746 = fmul fast float %4743, %3611
  %4747 = fmul fast float %4744, %3611
  %4748 = fmul fast float %4745, %3611
  %4749 = fadd fast float %4746, %4731
  %4750 = fadd fast float %4747, %4732
  %4751 = fadd fast float %4748, %4733
  br label %4752

; <label>:4752                                    ; preds = %4706, %3926
  %4753 = phi float [ %4749, %4706 ], [ %3927, %3926 ]
  %4754 = phi float [ %4750, %4706 ], [ %3928, %3926 ]
  %4755 = phi float [ %4751, %4706 ], [ %3929, %3926 ]
  %4756 = phi float [ %4740, %4706 ], [ %3930, %3926 ]
  %4757 = phi float [ %4741, %4706 ], [ %3931, %3926 ]
  %4758 = phi float [ %4742, %4706 ], [ %3932, %3926 ]
  %4759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4760 = extractvalue %dx.types.CBufRet.f32 %4759, 0
  %4761 = call float @dx.op.binary.f32(i32 36, float %3543, float %4760)  ; FMin(a,b)
  %4762 = fsub fast float 1.000000e+00, %3562
  %4763 = fmul fast float %4761, %4762
  %4764 = fsub fast float 1.000000e+00, %4763
  %4765 = bitcast float %4764 to i32
  %4766 = sub nsw i32 2129859010, %4765
  %4767 = bitcast i32 %4766 to float
  %4768 = call float @dx.op.binary.f32(i32 36, float %3544, float %4760)  ; FMin(a,b)
  %4769 = fmul fast float %4768, %4762
  %4770 = fsub fast float 1.000000e+00, %4769
  %4771 = bitcast float %4770 to i32
  %4772 = sub nsw i32 2129859010, %4771
  %4773 = bitcast i32 %4772 to float
  %4774 = call float @dx.op.binary.f32(i32 36, float %3545, float %4760)  ; FMin(a,b)
  %4775 = fmul fast float %4774, %4762
  %4776 = fsub fast float 1.000000e+00, %4775
  %4777 = bitcast float %4776 to i32
  %4778 = sub nsw i32 2129859010, %4777
  %4779 = bitcast i32 %4778 to float
  %4780 = fmul fast float %4756, %3562
  %4781 = fmul fast float %4780, %4767
  %4782 = fmul fast float %4757, %3562
  %4783 = fmul fast float %4782, %4773
  %4784 = fmul fast float %4758, %3562
  %4785 = fmul fast float %4784, %4779
  %4786 = call float @dx.op.binary.f32(i32 36, float %3540, float %4760)  ; FMin(a,b)
  %4787 = fmul fast float %4786, %4762
  %4788 = fsub fast float 1.000000e+00, %4787
  %4789 = bitcast float %4788 to i32
  %4790 = sub nsw i32 2129859010, %4789
  %4791 = bitcast i32 %4790 to float
  %4792 = call float @dx.op.binary.f32(i32 36, float %3541, float %4760)  ; FMin(a,b)
  %4793 = fmul fast float %4792, %4762
  %4794 = fsub fast float 1.000000e+00, %4793
  %4795 = bitcast float %4794 to i32
  %4796 = sub nsw i32 2129859010, %4795
  %4797 = bitcast i32 %4796 to float
  %4798 = call float @dx.op.binary.f32(i32 36, float %3551, float %4760)  ; FMin(a,b)
  %4799 = fmul fast float %4798, %4762
  %4800 = fsub fast float 1.000000e+00, %4799
  %4801 = bitcast float %4800 to i32
  %4802 = sub nsw i32 2129859010, %4801
  %4803 = bitcast i32 %4802 to float
  %4804 = fmul fast float %4753, %3562
  %4805 = fmul fast float %4804, %4791
  %4806 = fmul fast float %4754, %3562
  %4807 = fmul fast float %4806, %4797
  %4808 = fmul fast float %4755, %3562
  %4809 = fmul fast float %4808, %4803
  %4810 = call float @dx.op.dot3.f32(i32 55, float %4781, float %4783, float %4785, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4811 = select i1 %193, float 0.000000e+00, float %4781
  %4812 = select i1 %193, float %4810, float %4783
  %4813 = select i1 %193, float 0.000000e+00, float %4785
  %4814 = call float @dx.op.dot3.f32(i32 55, float %4805, float %4807, float %4809, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4815 = select i1 %193, float 0.000000e+00, float %4805
  %4816 = select i1 %193, float %4814, float %4807
  %4817 = select i1 %193, float 0.000000e+00, float %4809
  %4818 = fmul fast float %3553, 9.843750e-01
  %4819 = fmul fast float %3549, 9.843750e-01
  %4820 = fadd fast float %4818, 7.812500e-03
  %4821 = fadd fast float %4819, 7.812500e-03
  %4822 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4820, float %4821, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4823 = extractvalue %dx.types.ResRet.f32 %4822, 2
  %4824 = extractvalue %dx.types.ResRet.f32 %4822, 3
  %4825 = fmul fast float %4823, %3540
  %4826 = fmul fast float %4823, %3541
  %4827 = fmul fast float %4823, %3551
  %4828 = fadd fast float %4825, %4824
  %4829 = fadd fast float %4826, %4824
  %4830 = fadd fast float %4827, %4824
  %4831 = fcmp fast ogt float %2917, 0.000000e+00
  br i1 %4831, label %4832, label %4858

; <label>:4832                                    ; preds = %4752
  %4833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2917, float %3553, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4834 = extractvalue %dx.types.ResRet.f32 %4833, 0
  %4835 = extractvalue %dx.types.ResRet.f32 %4833, 1
  %4836 = extractvalue %dx.types.ResRet.f32 %4833, 2
  %4837 = fadd fast float %4834, -5.000000e-01
  %4838 = fadd fast float %4835, -5.000000e-01
  %4839 = fadd fast float %4836, -5.000000e-01
  %4840 = fsub fast float 1.000000e+00, %3540
  %4841 = fsub fast float 1.000000e+00, %3541
  %4842 = fsub fast float 1.000000e+00, %3551
  %4843 = fmul fast float %3540, 4.000000e+00
  %4844 = fmul fast float %4843, %4840
  %4845 = fmul fast float %4844, %4837
  %4846 = fmul fast float %3541, 4.000000e+00
  %4847 = fmul fast float %4846, %4841
  %4848 = fmul fast float %4847, %4838
  %4849 = fmul fast float %3551, 4.000000e+00
  %4850 = fmul fast float %4849, %4842
  %4851 = fmul fast float %4850, %4839
  %4852 = fadd fast float %4845, %4828
  %4853 = fadd fast float %4848, %4829
  %4854 = fadd fast float %4851, %4830
  %4855 = call float @dx.op.unary.f32(i32 7, float %4852)  ; Saturate(value)
  %4856 = call float @dx.op.unary.f32(i32 7, float %4853)  ; Saturate(value)
  %4857 = call float @dx.op.unary.f32(i32 7, float %4854)  ; Saturate(value)
  br label %4858

; <label>:4858                                    ; preds = %4832, %4752
  %4859 = phi float [ %4855, %4832 ], [ %4828, %4752 ]
  %4860 = phi float [ %4856, %4832 ], [ %4829, %4752 ]
  %4861 = phi float [ %4857, %4832 ], [ %4830, %4752 ]
  %4862 = call float @dx.op.binary.f32(i32 35, float %4860, float %4861)  ; FMax(a,b)
  %4863 = call float @dx.op.binary.f32(i32 35, float %4859, float %4862)  ; FMax(a,b)
  %4864 = fsub fast float 1.000000e+00, %4863
  %4865 = fmul fast float %4864, %4811
  %4866 = fmul fast float %4864, %4812
  %4867 = fmul fast float %4864, %4813
  %4868 = call float @dx.op.dot3.f32(i32 55, float %3543, float %3544, float %3545, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4869 = fcmp fast ogt float %4868, 0x3E7FF19E20000000
  %4870 = fdiv fast float 1.000000e+00, %4868
  %4871 = select i1 %4869, float %4870, float 0.000000e+00
  %4872 = fmul fast float %4871, %3543
  %4873 = fmul fast float %4871, %3544
  %4874 = fmul fast float %4871, %3545
  %4875 = fadd fast float %4872, -1.000000e+00
  %4876 = fadd fast float %4873, -1.000000e+00
  %4877 = fadd fast float %4874, -1.000000e+00
  %4878 = fmul fast float %4875, 5.000000e-01
  %4879 = fmul fast float %4876, 5.000000e-01
  %4880 = fmul fast float %4877, 5.000000e-01
  %4881 = fadd fast float %4878, 1.000000e+00
  %4882 = fadd fast float %4879, 1.000000e+00
  %4883 = fadd fast float %4880, 1.000000e+00
  %4884 = fmul fast float %4859, %4815
  %4885 = fmul fast float %4860, %4816
  %4886 = fmul fast float %4861, %4817
  %4887 = fsub fast float 1.000000e+00, %3553
  %4888 = bitcast float %4887 to i32
  %4889 = sitofp i32 %4888 to float
  %4890 = fmul fast float %4889, 5.000000e+00
  %4891 = fadd fast float %4890, 0xC1EFBF8940000000
  %4892 = fptosi float %4891 to i32
  %4893 = bitcast i32 %4892 to float
  %4894 = fmul fast float %4893, %2916
  %4895 = fmul fast float %4811, %4894
  %4896 = fmul fast float %4895, %4864
  %4897 = fmul fast float %4896, %4881
  %4898 = fmul fast float %4812, %4894
  %4899 = fmul fast float %4898, %4864
  %4900 = fmul fast float %4899, %4882
  %4901 = fmul fast float %4813, %4894
  %4902 = fmul fast float %4901, %4864
  %4903 = fmul fast float %4902, %4883
  %4904 = fmul fast float %4865, %2937
  %4905 = fmul fast float %4866, %2937
  %4906 = fmul fast float %4867, %2937
  %4907 = fadd fast float %4884, %2918
  %4908 = fadd fast float %4907, %4897
  %4909 = fmul fast float %4908, %2937
  %4910 = fadd fast float %4885, %2919
  %4911 = fadd fast float %4910, %4900
  %4912 = fmul fast float %4911, %2937
  %4913 = fadd fast float %4886, %2920
  %4914 = fadd fast float %4913, %4903
  %4915 = fmul fast float %4914, %2937
  %4916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4917 = extractvalue %dx.types.CBufRet.f32 %4916, 3
  %4918 = fcmp fast oeq float %4917, 0.000000e+00
  br i1 %4918, label %5146, label %4919

; <label>:4919                                    ; preds = %4858
  %4920 = extractvalue %dx.types.CBufRet.f32 %4916, 0
  %4921 = extractvalue %dx.types.CBufRet.f32 %4916, 1
  %4922 = extractvalue %dx.types.CBufRet.f32 %4916, 2
  %4923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4924 = extractvalue %dx.types.CBufRet.f32 %4923, 0
  %4925 = extractvalue %dx.types.CBufRet.f32 %4923, 1
  %4926 = extractvalue %dx.types.CBufRet.f32 %4923, 2
  %4927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4928 = extractvalue %dx.types.CBufRet.f32 %4927, 0
  %4929 = extractvalue %dx.types.CBufRet.f32 %4927, 1
  %4930 = call float @dx.op.dot3.f32(i32 55, float %4924, float %4925, float %4926, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4931 = select i1 %193, float %4928, float %4924
  %4932 = select i1 %193, float %4930, float %4925
  %4933 = select i1 %193, float %4929, float %4926
  %4934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4935 = extractvalue %dx.types.CBufRet.f32 %4934, 1
  %4936 = fcmp fast une float %4935, 0.000000e+00
  br i1 %4936, label %4937, label %4954

; <label>:4937                                    ; preds = %4919
  %4938 = fptoui float %75 to i32
  %4939 = fptoui float %76 to i32
  %4940 = lshr i32 %4938, 4
  %4941 = lshr i32 %4939, 4
  %4942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4943 = extractvalue %dx.types.CBufRet.f32 %4942, 0
  %4944 = fptoui float %4943 to i32
  %4945 = add i32 %4944, 15
  %4946 = lshr i32 %4945, 4
  %4947 = mul i32 %4946, %4941
  %4948 = add i32 %4947, %4940
  %4949 = shl i32 %4948, 3
  %4950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4949, i32 undef)  ; BufferLoad(srv,index,wot)
  %4951 = extractvalue %dx.types.ResRet.i32 %4950, 0
  %4952 = and i32 %4951, -268435456
  %4953 = icmp eq i32 %4952, -1342177280
  br i1 %4953, label %4964, label %4954

; <label>:4954                                    ; preds = %4937, %4919
  %4955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4956 = extractvalue %dx.types.CBufRet.f32 %4955, 2
  %4957 = extractvalue %dx.types.CBufRet.f32 %4955, 3
  %4958 = fmul fast float %4956, %75
  %4959 = fmul fast float %4957, %76
  %4960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %4958, float %4959, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4961 = extractvalue %dx.types.ResRet.f32 %4960, 0
  %4962 = extractvalue %dx.types.ResRet.f32 %4960, 1
  %4963 = extractvalue %dx.types.ResRet.f32 %4960, 2
  br label %4964

; <label>:4964                                    ; preds = %4954, %4937
  %4965 = phi float [ %4961, %4954 ], [ 0.000000e+00, %4937 ]
  %4966 = phi float [ %4962, %4954 ], [ 0.000000e+00, %4937 ]
  %4967 = phi float [ %4963, %4954 ], [ 0.000000e+00, %4937 ]
  %4968 = call float @dx.op.binary.f32(i32 36, float %4966, float %4967)  ; FMin(a,b)
  %4969 = call float @dx.op.binary.f32(i32 36, float %4965, float %4968)  ; FMin(a,b)
  %4970 = fcmp fast ogt float %4969, 0.000000e+00
  br i1 %4970, label %4971, label %5146, !dx.controlflow.hints !89

; <label>:4971                                    ; preds = %4964
  %4972 = fmul fast float %4965, %4931
  %4973 = fmul fast float %4966, %4932
  %4974 = fmul fast float %4967, %4933
  %4975 = fsub fast float %4920, %3539
  %4976 = fsub fast float %4921, %3538
  %4977 = fsub fast float %4922, %3537
  %4978 = call float @dx.op.dot3.f32(i32 55, float %4975, float %4976, float %4977, float %4975, float %4976, float %4977)  ; Dot3(ax,ay,az,bx,by,bz)
  %4979 = call float @dx.op.unary.f32(i32 25, float %4978)  ; Rsqrt(value)
  %4980 = fmul fast float %4979, %4975
  %4981 = fmul fast float %4979, %4976
  %4982 = fmul fast float %4979, %4977
  %4983 = call float @dx.op.dot3.f32(i32 55, float %4920, float %4921, float %4922, float %3546, float %3547, float %3548)  ; Dot3(ax,ay,az,bx,by,bz)
  %4984 = call float @dx.op.dot3.f32(i32 55, float %3536, float %3535, float %3534, float %4980, float %4981, float %4982)  ; Dot3(ax,ay,az,bx,by,bz)
  %4985 = call float @dx.op.unary.f32(i32 7, float %4983)  ; Saturate(value)
  %4986 = fmul fast float %4985, %4985
  %4987 = fmul fast float %4986, %3566
  %4988 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4989 = fmul fast float %4988, %4985
  %4990 = call float @dx.op.dot3.f32(i32 55, float %3546, float %3547, float %3548, float %4980, float %4981, float %4982)  ; Dot3(ax,ay,az,bx,by,bz)
  %4991 = fmul fast float %4990, %4990
  %4992 = call float @dx.op.unary.f32(i32 6, float %4983)  ; FAbs(value)
  %4993 = fsub fast float 1.000000e+00, %3549
  %4994 = call float @dx.op.binary.f32(i32 35, float %4993, float 0x3F847AE140000000)  ; FMax(a,b)
  %4995 = fmul fast float %4994, %4994
  %4996 = fmul fast float %4995, %4995
  %4997 = fsub fast float 1.000000e+00, %4996
  %4998 = fmul fast float %3553, %3553
  %4999 = fmul fast float %4998, %4997
  %5000 = fadd fast float %4999, %4996
  %5001 = bitcast float %5000 to i32
  %5002 = ashr i32 %5001, 1
  %5003 = add nsw i32 %5002, 532487669
  %5004 = bitcast i32 %5003 to float
  %5005 = fadd fast float %5004, %3553
  %5006 = fmul fast float %4996, %4991
  %5007 = fsub fast float 1.000000e+00, %4991
  %5008 = fadd fast float %5007, %5006
  %5009 = fmul fast float %4992, %4992
  %5010 = fmul fast float %5009, %4997
  %5011 = fadd fast float %5010, %4996
  %5012 = bitcast float %5011 to i32
  %5013 = ashr i32 %5012, 1
  %5014 = add nsw i32 %5013, 532487669
  %5015 = bitcast i32 %5014 to float
  %5016 = fadd fast float %5015, %4992
  %5017 = fmul fast float %5008, %5008
  %5018 = fmul fast float %5017, %5005
  %5019 = fmul fast float %5018, %5016
  %5020 = fdiv fast float 0x3FF0A00000000000, %5019
  %5021 = fmul fast float %5020, %4996
  %5022 = call float @dx.op.unary.f32(i32 6, float %4984)  ; FAbs(value)
  %5023 = fsub fast float 1.000000e+00, %5022
  %5024 = bitcast float %5023 to i32
  %5025 = sitofp i32 %5024 to float
  %5026 = fmul fast float %5025, 5.000000e+00
  %5027 = fadd fast float %5026, 0xC1EFBF8940000000
  %5028 = fptosi float %5027 to i32
  %5029 = bitcast i32 %5028 to float
  %5030 = fsub fast float 1.000000e+00, %3540
  %5031 = fsub fast float 1.000000e+00, %3541
  %5032 = fsub fast float 1.000000e+00, %3551
  %5033 = fmul fast float %5029, %5030
  %5034 = fmul fast float %5029, %5031
  %5035 = fmul fast float %5029, %5032
  %5036 = fadd fast float %5033, %3540
  %5037 = fadd fast float %5034, %3541
  %5038 = fadd fast float %5035, %3551
  br i1 %4831, label %5039, label %5062

; <label>:5039                                    ; preds = %4971
  %5040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2917, float %5022, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5041 = extractvalue %dx.types.ResRet.f32 %5040, 0
  %5042 = extractvalue %dx.types.ResRet.f32 %5040, 1
  %5043 = extractvalue %dx.types.ResRet.f32 %5040, 2
  %5044 = fadd fast float %5041, -5.000000e-01
  %5045 = fadd fast float %5042, -5.000000e-01
  %5046 = fadd fast float %5043, -5.000000e-01
  %5047 = fmul fast float %3540, 4.000000e+00
  %5048 = fmul fast float %5047, %5030
  %5049 = fmul fast float %5048, %5044
  %5050 = fmul fast float %3541, 4.000000e+00
  %5051 = fmul fast float %5050, %5031
  %5052 = fmul fast float %5051, %5045
  %5053 = fmul fast float %3551, 4.000000e+00
  %5054 = fmul fast float %5053, %5032
  %5055 = fmul fast float %5054, %5046
  %5056 = fadd fast float %5049, %5036
  %5057 = fadd fast float %5052, %5037
  %5058 = fadd fast float %5055, %5038
  %5059 = call float @dx.op.unary.f32(i32 7, float %5056)  ; Saturate(value)
  %5060 = call float @dx.op.unary.f32(i32 7, float %5057)  ; Saturate(value)
  %5061 = call float @dx.op.unary.f32(i32 7, float %5058)  ; Saturate(value)
  br label %5062

; <label>:5062                                    ; preds = %5039, %4971
  %5063 = phi float [ %5059, %5039 ], [ %5036, %4971 ]
  %5064 = phi float [ %5060, %5039 ], [ %5037, %4971 ]
  %5065 = phi float [ %5061, %5039 ], [ %5038, %4971 ]
  %5066 = fmul fast float %4983, 9.843750e-01
  %5067 = fadd fast float %5066, 7.812500e-03
  %5068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5067, float %4821, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5069 = extractvalue %dx.types.ResRet.f32 %5068, 2
  %5070 = extractvalue %dx.types.ResRet.f32 %5068, 3
  %5071 = fmul fast float %5069, %3540
  %5072 = fmul fast float %5069, %3541
  %5073 = fmul fast float %5069, %3551
  %5074 = fadd fast float %5071, %5070
  %5075 = fadd fast float %5072, %5070
  %5076 = fadd fast float %5073, %5070
  br i1 %4831, label %5077, label %5100

; <label>:5077                                    ; preds = %5062
  %5078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2917, float %4983, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5079 = extractvalue %dx.types.ResRet.f32 %5078, 0
  %5080 = extractvalue %dx.types.ResRet.f32 %5078, 1
  %5081 = extractvalue %dx.types.ResRet.f32 %5078, 2
  %5082 = fadd fast float %5079, -5.000000e-01
  %5083 = fadd fast float %5080, -5.000000e-01
  %5084 = fadd fast float %5081, -5.000000e-01
  %5085 = fmul fast float %3540, 4.000000e+00
  %5086 = fmul fast float %5085, %5030
  %5087 = fmul fast float %5086, %5082
  %5088 = fmul fast float %3541, 4.000000e+00
  %5089 = fmul fast float %5088, %5031
  %5090 = fmul fast float %5089, %5083
  %5091 = fmul fast float %3551, 4.000000e+00
  %5092 = fmul fast float %5091, %5032
  %5093 = fmul fast float %5092, %5084
  %5094 = fadd fast float %5087, %5074
  %5095 = fadd fast float %5090, %5075
  %5096 = fadd fast float %5093, %5076
  %5097 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5098 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5099 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  br label %5100

; <label>:5100                                    ; preds = %5077, %5062
  %5101 = phi float [ %5097, %5077 ], [ %5074, %5062 ]
  %5102 = phi float [ %5098, %5077 ], [ %5075, %5062 ]
  %5103 = phi float [ %5099, %5077 ], [ %5076, %5062 ]
  %5104 = call float @dx.op.binary.f32(i32 35, float %5102, float %5103)  ; FMax(a,b)
  %5105 = call float @dx.op.binary.f32(i32 35, float %5101, float %5104)  ; FMax(a,b)
  %5106 = fsub fast float 1.000000e+00, %5105
  %5107 = fmul fast float %5063, %5021
  %5108 = fmul fast float %5064, %5021
  %5109 = fmul fast float %5065, %5021
  %5110 = fsub fast float 1.000000e+00, %4984
  %5111 = bitcast float %5110 to i32
  %5112 = sitofp i32 %5111 to float
  %5113 = fmul fast float %5112, 5.000000e+00
  %5114 = fadd fast float %5113, 0xC1EFBF8940000000
  %5115 = fptosi float %5114 to i32
  %5116 = bitcast i32 %5115 to float
  %5117 = fmul fast float %5116, %2916
  %5118 = fmul fast float %5106, %5117
  %5119 = fmul fast float %5118, %4881
  %5120 = fmul fast float %5118, %4882
  %5121 = fmul fast float %5118, %4883
  %5122 = fadd fast float %5119, %5107
  %5123 = fadd fast float %5120, %5108
  %5124 = fadd fast float %5121, %5109
  %5125 = fmul fast float %4989, %4972
  %5126 = fmul fast float %5125, %5106
  %5127 = fmul fast float %4989, %4973
  %5128 = fmul fast float %5127, %5106
  %5129 = fmul fast float %4989, %4974
  %5130 = fmul fast float %5129, %5106
  %5131 = fmul fast float %5125, %5122
  %5132 = fmul fast float %5127, %5123
  %5133 = fmul fast float %5129, %5124
  %5134 = fadd fast float %5126, %4865
  %5135 = fmul fast float %5134, %2937
  %5136 = fadd fast float %5128, %4866
  %5137 = fmul fast float %5136, %2937
  %5138 = fadd fast float %5130, %4867
  %5139 = fmul fast float %5138, %2937
  %5140 = fadd fast float %5131, %4908
  %5141 = fmul fast float %5140, %2937
  %5142 = fadd fast float %5132, %4911
  %5143 = fmul fast float %5142, %2937
  %5144 = fadd fast float %5133, %4914
  %5145 = fmul fast float %5144, %2937
  br label %5146

; <label>:5146                                    ; preds = %5100, %4964, %4858
  %5147 = phi float [ %4909, %4858 ], [ %4909, %4964 ], [ %5141, %5100 ]
  %5148 = phi float [ %4912, %4858 ], [ %4912, %4964 ], [ %5143, %5100 ]
  %5149 = phi float [ %4915, %4858 ], [ %4915, %4964 ], [ %5145, %5100 ]
  %5150 = phi float [ %4904, %4858 ], [ %4904, %4964 ], [ %5135, %5100 ]
  %5151 = phi float [ %4905, %4858 ], [ %4905, %4964 ], [ %5137, %5100 ]
  %5152 = phi float [ %4906, %4858 ], [ %4906, %4964 ], [ %5139, %5100 ]
  %5153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.i32 %5153, 0
  %5155 = icmp eq i32 %5154, 0
  br i1 %5155, label %5590, label %5156

; <label>:5156                                    ; preds = %5146
  %5157 = fptoui float %75 to i32
  %5158 = fptoui float %76 to i32
  %5159 = lshr i32 %5157, 4
  %5160 = lshr i32 %5158, 4
  %5161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.i32 %5161, 0
  %5163 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5160, i32 %5162, i32 %5159)  ; UMad(a,b,c)
  %5164 = add nsw i32 %5154, -1
  %5165 = call i32 @dx.op.binary.i32(i32 37, i32 %5164, i32 0)  ; IMax(a,b)
  %5166 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %5167 = fptoui float %5166 to i32
  %5168 = lshr i32 %5167, 5
  %5169 = call i32 @dx.op.binary.i32(i32 40, i32 %5168, i32 8191)  ; UMin(a,b)
  %5170 = shl i32 %5169, 2
  %5171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5170, i32 undef)  ; BufferLoad(srv,index,wot)
  %5172 = extractvalue %dx.types.ResRet.i32 %5171, 0
  %5173 = lshr i32 %5172, 16
  %5174 = and i32 %5172, 65535
  %5175 = lshr i32 %5172, 21
  %5176 = lshr i32 %5174, 5
  %5177 = call i32 @dx.op.binary.i32(i32 40, i32 %5176, i32 %5165)  ; UMin(a,b)
  %5178 = icmp ugt i32 %5175, %5177
  br i1 %5178, label %5590, label %5179

; <label>:5179                                    ; preds = %5156
  br label %5180

; <label>:5180                                    ; preds = %5580, %5179
  %5181 = phi i32 [ %5587, %5580 ], [ %5175, %5179 ]
  %5182 = phi float [ %5581, %5580 ], [ %5147, %5179 ]
  %5183 = phi float [ %5582, %5580 ], [ %5148, %5179 ]
  %5184 = phi float [ %5583, %5580 ], [ %5149, %5179 ]
  %5185 = phi float [ %5584, %5580 ], [ %5150, %5179 ]
  %5186 = phi float [ %5585, %5580 ], [ %5151, %5179 ]
  %5187 = phi float [ %5586, %5580 ], [ %5152, %5179 ]
  %5188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5189 = extractvalue %dx.types.CBufRet.i32 %5188, 0
  %5190 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5163, i32 %5189, i32 %5181)  ; UMad(a,b,c)
  %5191 = shl i32 %5190, 2
  %5192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5191, i32 undef)  ; BufferLoad(srv,index,wot)
  %5193 = extractvalue %dx.types.ResRet.i32 %5192, 0
  %5194 = shl i32 %5181, 5
  %5195 = sub nsw i32 %5173, %5194
  %5196 = call i32 @dx.op.binary.i32(i32 37, i32 %5195, i32 0)  ; IMax(a,b)
  %5197 = call i32 @dx.op.binary.i32(i32 38, i32 %5196, i32 31)  ; IMin(a,b)
  %5198 = sub nsw i32 1, %5173
  %5199 = add nsw i32 %5198, %5174
  %5200 = call i32 @dx.op.binary.i32(i32 37, i32 %5199, i32 0)  ; IMax(a,b)
  %5201 = call i32 @dx.op.binary.i32(i32 38, i32 %5200, i32 32)  ; IMin(a,b)
  %5202 = and i32 %5201, 31
  %5203 = shl i32 -1, %5202
  %5204 = xor i32 %5203, -1
  %5205 = and i32 %5197, 31
  %5206 = shl i32 %5204, %5205
  %5207 = icmp eq i32 %5201, 32
  %5208 = select i1 %5207, i32 -1, i32 %5206
  %5209 = and i32 %5208, %5193
  %5210 = icmp eq i32 %5209, 0
  br i1 %5210, label %5580, label %5211

; <label>:5211                                    ; preds = %5180
  br label %5212

; <label>:5212                                    ; preds = %5292, %5211
  %5213 = phi i32 [ %5224, %5292 ], [ %5209, %5211 ]
  %5214 = phi float [ %5293, %5292 ], [ %5182, %5211 ]
  %5215 = phi float [ %5294, %5292 ], [ %5183, %5211 ]
  %5216 = phi float [ %5295, %5292 ], [ %5184, %5211 ]
  %5217 = phi float [ %5296, %5292 ], [ %5185, %5211 ]
  %5218 = phi float [ %5297, %5292 ], [ %5186, %5211 ]
  %5219 = phi float [ %5298, %5292 ], [ %5187, %5211 ]
  %5220 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5213)  ; FirstbitLo(value)
  %5221 = add i32 %5220, %5194
  %5222 = and i32 %5220, 31
  %5223 = shl i32 1, %5222
  %5224 = xor i32 %5223, %5213
  %5225 = mul i32 %5221, 112
  %5226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5225, i32 undef)  ; BufferLoad(srv,index,wot)
  %5227 = extractvalue %dx.types.ResRet.f32 %5226, 0
  %5228 = extractvalue %dx.types.ResRet.f32 %5226, 1
  %5229 = extractvalue %dx.types.ResRet.f32 %5226, 2
  %5230 = or i32 %5225, 12
  %5231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5230, i32 undef)  ; BufferLoad(srv,index,wot)
  %5232 = extractvalue %dx.types.ResRet.f32 %5231, 0
  %5233 = add i32 %5225, 44
  %5234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5233, i32 undef)  ; BufferLoad(srv,index,wot)
  %5235 = extractvalue %dx.types.ResRet.f32 %5234, 0
  %5236 = add i32 %5225, 48
  %5237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5236, i32 undef)  ; BufferLoad(srv,index,wot)
  %5238 = extractvalue %dx.types.ResRet.f32 %5237, 0
  %5239 = extractvalue %dx.types.ResRet.f32 %5237, 1
  %5240 = extractvalue %dx.types.ResRet.f32 %5237, 2
  %5241 = add i32 %5225, 80
  %5242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5241, i32 undef)  ; BufferLoad(srv,index,wot)
  %5243 = extractvalue %dx.types.ResRet.f32 %5242, 1
  %5244 = extractvalue %dx.types.ResRet.f32 %5242, 2
  %5245 = call float @dx.op.dot3.f32(i32 55, float %5227, float %5228, float %5229, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5246 = select i1 %193, float %5243, float %5227
  %5247 = select i1 %193, float %5245, float %5228
  %5248 = select i1 %193, float %5244, float %5229
  %5249 = fsub fast float %5238, %122
  %5250 = fsub fast float %5239, %123
  %5251 = fsub fast float %5240, %124
  %5252 = call float @dx.op.dot3.f32(i32 55, float %5249, float %5250, float %5251, float %5249, float %5250, float %5251)  ; Dot3(ax,ay,az,bx,by,bz)
  %5253 = call float @dx.op.unary.f32(i32 24, float %5252)  ; Sqrt(value)
  %5254 = fdiv fast float 1.000000e+00, %5253
  %5255 = fmul fast float %5254, %5249
  %5256 = fmul fast float %5254, %5250
  %5257 = fmul fast float %5254, %5251
  %5258 = fadd fast float %5253, %5232
  %5259 = fdiv fast float 1.000000e+00, %5258
  %5260 = fmul float %5235, %5259
  %5261 = fmul float %5260, %5260
  %5262 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5263 = and i32 %5223, %5209
  %5264 = icmp eq i32 %5263, 0
  br i1 %5264, label %5287, label %5265, !dx.controlflow.hints !90

; <label>:5265                                    ; preds = %5212
  %5266 = lshr i32 %5157, 5
  %5267 = lshr i32 %5158, 5
  %5268 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %5266, i32 %5267, i32 %5221, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5269 = extractvalue %dx.types.ResRet.i32 %5268, 0
  %5270 = and i32 %5269, 3
  %5271 = icmp eq i32 %5270, 0
  %5272 = select i1 %5271, float 1.000000e+00, float 0.000000e+00
  %5273 = icmp eq i32 %5270, 3
  br i1 %5273, label %5274, label %5287

; <label>:5274                                    ; preds = %5265
  %5275 = lshr i32 %5269, 10
  %5276 = and i32 %5275, 8160
  %5277 = and i32 %5158, 31
  %5278 = or i32 %5276, %5277
  %5279 = lshr i32 %5269, 1
  %5280 = and i32 %5279, 16352
  %5281 = and i32 %5157, 31
  %5282 = or i32 %5280, %5281
  %5283 = lshr i32 %5269, 23
  %5284 = and i32 %5283, 255
  %5285 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %5282, i32 %5278, i32 %5284, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5286 = extractvalue %dx.types.ResRet.f32 %5285, 0
  br label %5287

; <label>:5287                                    ; preds = %5274, %5265, %5212
  %5288 = phi float [ %5286, %5274 ], [ %5272, %5265 ], [ 0.000000e+00, %5212 ]
  %5289 = call float @dx.op.binary.f32(i32 36, float %5288, float %5288)  ; FMin(a,b)
  %5290 = call float @dx.op.binary.f32(i32 36, float %5288, float %5289)  ; FMin(a,b)
  %5291 = fcmp fast ogt float %5290, 0.000000e+00
  br i1 %5291, label %5300, label %5292, !dx.controlflow.hints !91

; <label>:5292                                    ; preds = %5536, %5287
  %5293 = phi float [ %5214, %5287 ], [ %5576, %5536 ]
  %5294 = phi float [ %5215, %5287 ], [ %5577, %5536 ]
  %5295 = phi float [ %5216, %5287 ], [ %5578, %5536 ]
  %5296 = phi float [ %5217, %5287 ], [ %5570, %5536 ]
  %5297 = phi float [ %5218, %5287 ], [ %5571, %5536 ]
  %5298 = phi float [ %5219, %5287 ], [ %5572, %5536 ]
  %5299 = icmp eq i32 %5213, %5223
  br i1 %5299, label %5579, label %5212

; <label>:5300                                    ; preds = %5287
  %5301 = fmul fast float %5288, %5246
  %5302 = fmul fast float %5288, %5247
  %5303 = fmul fast float %5288, %5248
  %5304 = fsub fast float %5240, %3339
  %5305 = fcmp fast ogt float %5304, 0.000000e+00
  %5306 = fsub fast float %124, %3339
  %5307 = fcmp fast ogt float %5306, 0.000000e+00
  %5308 = xor i1 %5307, %5305
  %5309 = fsub fast float %3339, %5240
  %5310 = fmul fast float %5309, 2.000000e+00
  %5311 = fadd fast float %5310, %5240
  %5312 = select i1 %5308, float %5240, float %5311
  %5313 = fsub fast float %5312, %124
  %5314 = call float @dx.op.dot3.f32(i32 55, float %5249, float %5250, float %5313, float %5249, float %5250, float %5313)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = call float @dx.op.unary.f32(i32 25, float %5314)  ; Rsqrt(value)
  %5316 = fmul fast float %5315, %5249
  %5317 = fmul fast float %5315, %5250
  %5318 = fmul fast float %5315, %5313
  %5319 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3347)  ; Dot3(ax,ay,az,bx,by,bz)
  %5320 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5316, float %5317, float %5318)  ; Dot3(ax,ay,az,bx,by,bz)
  %5321 = fdiv fast float 1.000000e+00, %5320
  %5322 = fmul fast float %5321, %5319
  %5323 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5306, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5324 = fcmp fast ogt float %5323, 0.000000e+00
  %5325 = fcmp fast olt float %5323, 0.000000e+00
  %5326 = zext i1 %5324 to i32
  %5327 = zext i1 %5325 to i32
  %5328 = sub nsw i32 %5326, %5327
  %5329 = sitofp i32 %5328 to float
  %5330 = fsub fast float %5312, %3339
  %5331 = call float @dx.op.dot3.f32(i32 55, float %5249, float %5250, float %5330, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5332 = fcmp fast ogt float %5331, 0.000000e+00
  %5333 = fcmp fast olt float %5331, 0.000000e+00
  %5334 = zext i1 %5332 to i32
  %5335 = zext i1 %5333 to i32
  %5336 = sub nsw i32 %5334, %5335
  %5337 = sitofp i32 %5336 to float
  %5338 = fcmp fast une float %5329, %5337
  br i1 %5338, label %5339, label %5349

; <label>:5339                                    ; preds = %5300
  %5340 = fmul fast float %5322, %5318
  %5341 = fmul fast float %5322, %5317
  %5342 = fmul fast float %5322, %5316
  %5343 = fmul fast float %5342, %5342
  %5344 = fmul fast float %5341, %5341
  %5345 = fadd fast float %5343, %5344
  %5346 = fmul fast float %5340, %5340
  %5347 = fadd fast float %5345, %5346
  %5348 = call float @dx.op.unary.f32(i32 24, float %5347)  ; Sqrt(value)
  br label %5361

; <label>:5349                                    ; preds = %5300
  %5350 = icmp slt i32 %5328, 0
  br i1 %5350, label %5351, label %5361

; <label>:5351                                    ; preds = %5349
  %5352 = fsub fast float %122, %5238
  %5353 = fsub fast float %123, %5239
  %5354 = fsub fast float %124, %5312
  %5355 = fmul fast float %5352, %5352
  %5356 = fmul fast float %5353, %5353
  %5357 = fadd fast float %5355, %5356
  %5358 = fmul fast float %5354, %5354
  %5359 = fadd fast float %5357, %5358
  %5360 = call float @dx.op.unary.f32(i32 24, float %5359)  ; Sqrt(value)
  br label %5361

; <label>:5361                                    ; preds = %5351, %5349, %5339
  %5362 = phi float [ %5348, %5339 ], [ %5360, %5351 ], [ 0.000000e+00, %5349 ]
  %5363 = and i1 %5307, %5305
  %5364 = fsub fast float -0.000000e+00, %5362
  %5365 = select i1 %5363, float -0.000000e+00, float %5364
  %5366 = fmul fast float %3340, 0x3FF7154760000000
  %5367 = fmul fast float %5366, %5365
  %5368 = fmul fast float %3341, 0x3FF7154760000000
  %5369 = fmul fast float %5368, %5365
  %5370 = fmul fast float %3342, 0x3FF7154760000000
  %5371 = fmul fast float %5370, %5365
  %5372 = call float @dx.op.unary.f32(i32 21, float %5367)  ; Exp(value)
  %5373 = call float @dx.op.unary.f32(i32 21, float %5369)  ; Exp(value)
  %5374 = call float @dx.op.unary.f32(i32 21, float %5371)  ; Exp(value)
  %5375 = call float @dx.op.unary.f32(i32 7, float %5372)  ; Saturate(value)
  %5376 = call float @dx.op.unary.f32(i32 7, float %5373)  ; Saturate(value)
  %5377 = call float @dx.op.unary.f32(i32 7, float %5374)  ; Saturate(value)
  %5378 = fmul fast float %5301, %5375
  %5379 = fmul fast float %5302, %5376
  %5380 = fmul fast float %5303, %5377
  %5381 = fsub fast float %5255, %3539
  %5382 = fsub fast float %5256, %3538
  %5383 = fsub fast float %5257, %3537
  %5384 = call float @dx.op.dot3.f32(i32 55, float %5381, float %5382, float %5383, float %5381, float %5382, float %5383)  ; Dot3(ax,ay,az,bx,by,bz)
  %5385 = call float @dx.op.unary.f32(i32 25, float %5384)  ; Rsqrt(value)
  %5386 = fmul fast float %5385, %5381
  %5387 = fmul fast float %5385, %5382
  %5388 = fmul fast float %5385, %5383
  %5389 = call float @dx.op.dot3.f32(i32 55, float %5255, float %5256, float %5257, float %3546, float %3547, float %3548)  ; Dot3(ax,ay,az,bx,by,bz)
  %5390 = call float @dx.op.dot3.f32(i32 55, float %3536, float %3535, float %3534, float %5386, float %5387, float %5388)  ; Dot3(ax,ay,az,bx,by,bz)
  %5391 = call float @dx.op.unary.f32(i32 7, float %5389)  ; Saturate(value)
  %5392 = fmul fast float %5391, %5262
  %5393 = fmul fast float %5391, %5391
  %5394 = fmul fast float %5393, %3566
  %5395 = call float @dx.op.unary.f32(i32 7, float %5394)  ; Saturate(value)
  %5396 = fmul fast float %5392, %5395
  %5397 = bitcast float %5252 to i32
  %5398 = ashr i32 %5397, 1
  %5399 = sub nsw i32 1597463007, %5398
  %5400 = bitcast i32 %5399 to float
  %5401 = fmul fast float %5400, %5249
  %5402 = fmul fast float %5400, %5250
  %5403 = fmul fast float %5400, %5251
  %5404 = fsub fast float %5401, %3539
  %5405 = fsub fast float %5402, %3538
  %5406 = fsub fast float %5403, %3537
  %5407 = call float @dx.op.dot3.f32(i32 55, float %5404, float %5405, float %5406, float %5404, float %5405, float %5406)  ; Dot3(ax,ay,az,bx,by,bz)
  %5408 = call float @dx.op.unary.f32(i32 25, float %5407)  ; Rsqrt(value)
  %5409 = fmul fast float %5404, %5408
  %5410 = fmul fast float %5405, %5408
  %5411 = fmul fast float %5406, %5408
  %5412 = call float @dx.op.dot3.f32(i32 55, float %3546, float %3547, float %3548, float %5409, float %5410, float %5411)  ; Dot3(ax,ay,az,bx,by,bz)
  %5413 = fmul fast float %5412, %5412
  %5414 = call float @dx.op.unary.f32(i32 6, float %5389)  ; FAbs(value)
  %5415 = fsub fast float 1.000000e+00, %3549
  %5416 = call float @dx.op.binary.f32(i32 35, float %5415, float 0x3F847AE140000000)  ; FMax(a,b)
  %5417 = fmul fast float %5416, %5416
  %5418 = fmul fast float %5417, %5417
  %5419 = fsub fast float 1.000000e+00, %5418
  %5420 = fmul fast float %3553, %3553
  %5421 = fmul fast float %5420, %5419
  %5422 = fadd fast float %5421, %5418
  %5423 = bitcast float %5422 to i32
  %5424 = ashr i32 %5423, 1
  %5425 = add nsw i32 %5424, 532487669
  %5426 = bitcast i32 %5425 to float
  %5427 = fadd fast float %5426, %3553
  %5428 = fmul fast float %5418, %5413
  %5429 = fsub fast float 1.000000e+00, %5413
  %5430 = fadd fast float %5429, %5428
  %5431 = fmul fast float %5414, %5414
  %5432 = fmul fast float %5431, %5419
  %5433 = fadd fast float %5432, %5418
  %5434 = bitcast float %5433 to i32
  %5435 = ashr i32 %5434, 1
  %5436 = add nsw i32 %5435, 532487669
  %5437 = bitcast i32 %5436 to float
  %5438 = fadd fast float %5437, %5414
  %5439 = fmul fast float %5430, %5430
  %5440 = fmul fast float %5439, %5427
  %5441 = fmul fast float %5440, %5438
  %5442 = fdiv fast float 1.000000e+00, %5441
  %5443 = bitcast float %5418 to i32
  %5444 = sitofp i32 %5443 to float
  %5445 = fmul fast float %5444, 0x3FE7F73180000000
  %5446 = fadd fast float %5445, 0x41AFE27C40000000
  %5447 = fptosi float %5446 to i32
  %5448 = bitcast i32 %5447 to float
  %5449 = fmul fast float %5235, 0x3FD80E9D60000000
  %5450 = fmul fast float %5449, %5400
  %5451 = fadd fast float %5448, %5450
  %5452 = bitcast float %5451 to i32
  %5453 = sub nsw i32 2129859010, %5452
  %5454 = bitcast i32 %5453 to float
  %5455 = fmul fast float %5418, %5442
  %5456 = fmul fast float %5455, %5448
  %5457 = fmul fast float %5456, %5454
  %5458 = call float @dx.op.unary.f32(i32 6, float %5390)  ; FAbs(value)
  %5459 = fsub fast float 1.000000e+00, %5458
  %5460 = bitcast float %5459 to i32
  %5461 = sitofp i32 %5460 to float
  %5462 = fmul fast float %5461, 5.000000e+00
  %5463 = fadd fast float %5462, 0xC1EFBF8940000000
  %5464 = fptosi float %5463 to i32
  %5465 = bitcast i32 %5464 to float
  %5466 = fsub fast float 1.000000e+00, %3540
  %5467 = fsub fast float 1.000000e+00, %3541
  %5468 = fsub fast float 1.000000e+00, %3551
  %5469 = fmul fast float %5465, %5466
  %5470 = fmul fast float %5465, %5467
  %5471 = fmul fast float %5465, %5468
  %5472 = fadd fast float %5469, %3540
  %5473 = fadd fast float %5470, %3541
  %5474 = fadd fast float %5471, %3551
  br i1 %4831, label %5475, label %5498

; <label>:5475                                    ; preds = %5361
  %5476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2917, float %5458, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5477 = extractvalue %dx.types.ResRet.f32 %5476, 0
  %5478 = extractvalue %dx.types.ResRet.f32 %5476, 1
  %5479 = extractvalue %dx.types.ResRet.f32 %5476, 2
  %5480 = fadd fast float %5477, -5.000000e-01
  %5481 = fadd fast float %5478, -5.000000e-01
  %5482 = fadd fast float %5479, -5.000000e-01
  %5483 = fmul fast float %3540, 4.000000e+00
  %5484 = fmul fast float %5483, %5466
  %5485 = fmul fast float %5484, %5480
  %5486 = fmul fast float %3541, 4.000000e+00
  %5487 = fmul fast float %5486, %5467
  %5488 = fmul fast float %5487, %5481
  %5489 = fmul fast float %3551, 4.000000e+00
  %5490 = fmul fast float %5489, %5468
  %5491 = fmul fast float %5490, %5482
  %5492 = fadd fast float %5485, %5472
  %5493 = fadd fast float %5488, %5473
  %5494 = fadd fast float %5491, %5474
  %5495 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5496 = call float @dx.op.unary.f32(i32 7, float %5493)  ; Saturate(value)
  %5497 = call float @dx.op.unary.f32(i32 7, float %5494)  ; Saturate(value)
  br label %5498

; <label>:5498                                    ; preds = %5475, %5361
  %5499 = phi float [ %5495, %5475 ], [ %5472, %5361 ]
  %5500 = phi float [ %5496, %5475 ], [ %5473, %5361 ]
  %5501 = phi float [ %5497, %5475 ], [ %5474, %5361 ]
  %5502 = fmul fast float %5389, 9.843750e-01
  %5503 = fadd fast float %5502, 7.812500e-03
  %5504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5503, float %4821, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5505 = extractvalue %dx.types.ResRet.f32 %5504, 2
  %5506 = extractvalue %dx.types.ResRet.f32 %5504, 3
  %5507 = fmul fast float %5505, %3540
  %5508 = fmul fast float %5505, %3541
  %5509 = fmul fast float %5505, %3551
  %5510 = fadd fast float %5507, %5506
  %5511 = fadd fast float %5508, %5506
  %5512 = fadd fast float %5509, %5506
  br i1 %4831, label %5513, label %5536

; <label>:5513                                    ; preds = %5498
  %5514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2917, float %5389, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5515 = extractvalue %dx.types.ResRet.f32 %5514, 0
  %5516 = extractvalue %dx.types.ResRet.f32 %5514, 1
  %5517 = extractvalue %dx.types.ResRet.f32 %5514, 2
  %5518 = fadd fast float %5515, -5.000000e-01
  %5519 = fadd fast float %5516, -5.000000e-01
  %5520 = fadd fast float %5517, -5.000000e-01
  %5521 = fmul fast float %3540, 4.000000e+00
  %5522 = fmul fast float %5521, %5466
  %5523 = fmul fast float %5522, %5518
  %5524 = fmul fast float %3541, 4.000000e+00
  %5525 = fmul fast float %5524, %5467
  %5526 = fmul fast float %5525, %5519
  %5527 = fmul fast float %3551, 4.000000e+00
  %5528 = fmul fast float %5527, %5468
  %5529 = fmul fast float %5528, %5520
  %5530 = fadd fast float %5523, %5510
  %5531 = fadd fast float %5526, %5511
  %5532 = fadd fast float %5529, %5512
  %5533 = call float @dx.op.unary.f32(i32 7, float %5530)  ; Saturate(value)
  %5534 = call float @dx.op.unary.f32(i32 7, float %5531)  ; Saturate(value)
  %5535 = call float @dx.op.unary.f32(i32 7, float %5532)  ; Saturate(value)
  br label %5536

; <label>:5536                                    ; preds = %5513, %5498
  %5537 = phi float [ %5533, %5513 ], [ %5510, %5498 ]
  %5538 = phi float [ %5534, %5513 ], [ %5511, %5498 ]
  %5539 = phi float [ %5535, %5513 ], [ %5512, %5498 ]
  %5540 = call float @dx.op.binary.f32(i32 35, float %5538, float %5539)  ; FMax(a,b)
  %5541 = call float @dx.op.binary.f32(i32 35, float %5537, float %5540)  ; FMax(a,b)
  %5542 = fsub fast float 1.000000e+00, %5541
  %5543 = fmul fast float %5499, %5457
  %5544 = fmul fast float %5500, %5457
  %5545 = fmul fast float %5501, %5457
  %5546 = fsub fast float 1.000000e+00, %5390
  %5547 = bitcast float %5546 to i32
  %5548 = sitofp i32 %5547 to float
  %5549 = fmul fast float %5548, 5.000000e+00
  %5550 = fadd fast float %5549, 0xC1EFBF8940000000
  %5551 = fptosi float %5550 to i32
  %5552 = bitcast i32 %5551 to float
  %5553 = fmul fast float %5552, %2916
  %5554 = fmul fast float %5542, %5553
  %5555 = fmul fast float %5554, %4881
  %5556 = fmul fast float %5554, %4882
  %5557 = fmul fast float %5554, %4883
  %5558 = fadd fast float %5555, %5543
  %5559 = fadd fast float %5556, %5544
  %5560 = fadd fast float %5557, %5545
  %5561 = fmul fast float %5378, %2937
  %5562 = fmul fast float %5561, %5396
  %5563 = fmul fast float %5562, %5542
  %5564 = fmul fast float %5379, %2937
  %5565 = fmul fast float %5564, %5396
  %5566 = fmul fast float %5565, %5542
  %5567 = fmul fast float %5380, %2937
  %5568 = fmul fast float %5567, %5396
  %5569 = fmul fast float %5568, %5542
  %5570 = fadd fast float %5563, %5217
  %5571 = fadd fast float %5566, %5218
  %5572 = fadd fast float %5569, %5219
  %5573 = fmul fast float %5562, %5558
  %5574 = fmul fast float %5565, %5559
  %5575 = fmul fast float %5568, %5560
  %5576 = fadd fast float %5573, %5214
  %5577 = fadd fast float %5574, %5215
  %5578 = fadd fast float %5575, %5216
  br label %5292

; <label>:5579                                    ; preds = %5292
  br label %5580

; <label>:5580                                    ; preds = %5579, %5180
  %5581 = phi float [ %5182, %5180 ], [ %5293, %5579 ]
  %5582 = phi float [ %5183, %5180 ], [ %5294, %5579 ]
  %5583 = phi float [ %5184, %5180 ], [ %5295, %5579 ]
  %5584 = phi float [ %5185, %5180 ], [ %5296, %5579 ]
  %5585 = phi float [ %5186, %5180 ], [ %5297, %5579 ]
  %5586 = phi float [ %5187, %5180 ], [ %5298, %5579 ]
  %5587 = add i32 %5181, 1
  %5588 = icmp ugt i32 %5587, %5177
  br i1 %5588, label %5589, label %5180

; <label>:5589                                    ; preds = %5580
  br label %5590

; <label>:5590                                    ; preds = %5589, %5156, %5146
  %5591 = phi float [ %5147, %5146 ], [ %5147, %5156 ], [ %5581, %5589 ]
  %5592 = phi float [ %5148, %5146 ], [ %5148, %5156 ], [ %5582, %5589 ]
  %5593 = phi float [ %5149, %5146 ], [ %5149, %5156 ], [ %5583, %5589 ]
  %5594 = phi float [ %5150, %5146 ], [ %5150, %5156 ], [ %5584, %5589 ]
  %5595 = phi float [ %5151, %5146 ], [ %5151, %5156 ], [ %5585, %5589 ]
  %5596 = phi float [ %5152, %5146 ], [ %5152, %5156 ], [ %5586, %5589 ]
  %5597 = call float @dx.op.unary.f32(i32 24, float %3543)  ; Sqrt(value)
  %5598 = call float @dx.op.unary.f32(i32 24, float %3544)  ; Sqrt(value)
  %5599 = call float @dx.op.unary.f32(i32 24, float %3545)  ; Sqrt(value)
  %5600 = fmul fast float %5597, %5594
  %5601 = fmul fast float %5598, %5595
  %5602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5603 = extractvalue %dx.types.CBufRet.f32 %5602, 0
  br i1 %193, label %5604, label %5624

; <label>:5604                                    ; preds = %5590
  %5605 = fadd fast float %5596, %2914
  %5606 = fmul fast float %5605, %2915
  %5607 = fsub fast float 1.000000e+00, %2915
  %5608 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  %5609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5610 = extractvalue %dx.types.CBufRet.f32 %5609, 3
  %5611 = fmul fast float %5610, %5608
  %5612 = fadd fast float %5611, %5606
  %5613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5614 = extractvalue %dx.types.CBufRet.f32 %5613, 0
  %5615 = fmul fast float %5614, %4887
  %5616 = fsub fast float %5612, %5615
  %5617 = fadd fast float %5601, %5600
  %5618 = fmul fast float %5603, %5617
  %5619 = extractvalue %dx.types.CBufRet.f32 %5609, 1
  %5620 = fsub fast float %5616, %5619
  %5621 = extractvalue %dx.types.CBufRet.f32 %5609, 2
  %5622 = fmul fast float %5620, %5621
  %5623 = call float @dx.op.unary.f32(i32 7, float %5622)  ; Saturate(value)
  br label %5639

; <label>:5624                                    ; preds = %5590
  %5625 = fmul fast float %5599, %5596
  %5626 = fmul fast float %5603, %5600
  %5627 = fmul fast float %5603, %5601
  %5628 = fmul fast float %5625, %5603
  %5629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 292, i32 undef)  ; BufferLoad(srv,index,wot)
  %5630 = extractvalue %dx.types.ResRet.i32 %5629, 0
  %5631 = and i32 %5630, 32
  %5632 = icmp eq i32 %5631, 0
  br i1 %5632, label %5639, label %5633

; <label>:5633                                    ; preds = %5624
  %5634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5635 = extractvalue %dx.types.CBufRet.f32 %5634, 0
  %5636 = fmul fast float %5635, 0x3FE99999A0000000
  %5637 = fadd fast float %5635, %5626
  %5638 = fadd fast float %5636, %5628
  br label %5639

; <label>:5639                                    ; preds = %5633, %5624, %5604
  %5640 = phi float [ %5618, %5604 ], [ %5637, %5633 ], [ %5626, %5624 ]
  %5641 = phi float [ %5623, %5604 ], [ %5627, %5633 ], [ %5627, %5624 ]
  %5642 = phi float [ 1.000000e+00, %5604 ], [ %5638, %5633 ], [ %5628, %5624 ]
  %5643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5644 = extractvalue %dx.types.CBufRet.f32 %5643, 0
  %5645 = fmul fast float %5644, %5592
  %5646 = fmul fast float %5644, %5593
  %5647 = fadd fast float %5592, %5591
  %5648 = select i1 %193, float %5647, float %5591
  %5649 = fmul float %5648, %5644
  %5650 = select i1 %193, float 0.000000e+00, float %5645
  %5651 = select i1 %193, float 0.000000e+00, float %5646
  %5652 = fmul fast float %5640, %5597
  %5653 = fmul fast float %5641, %5598
  %5654 = fmul fast float %5642, %5599
  %5655 = fadd fast float %5649, %5652
  %5656 = fadd fast float %5650, %5653
  %5657 = fadd fast float %5651, %5654
  %5658 = select i1 %193, float %5641, float %5656
  %5659 = select i1 %193, float %5642, float %5657
  %5660 = call float @dx.op.binary.f32(i32 36, float %5655, float 3.225500e+04)  ; FMin(a,b)
  %5661 = call float @dx.op.binary.f32(i32 36, float %5658, float 3.225500e+04)  ; FMin(a,b)
  %5662 = call float @dx.op.binary.f32(i32 36, float %5659, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5660)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5661)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5662)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[35 x i32] [i32 33, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !81}
!59 = !{!60, !79, null}
!60 = !{!61, !64, !66, !69, !71, !72, !73, !74, !76, !78}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 11}
!64 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 1, i8 0, !65}
!65 = !{i32 3, i32 15}
!66 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 2, i8 0, !68}
!67 = !{i32 1}
!68 = !{i32 3, i32 3}
!69 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 3, i8 0, !70}
!70 = !{i32 3, i32 7}
!71 = !{i32 4, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 4, i8 0, !70}
!72 = !{i32 5, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 5, i8 0, !65}
!73 = !{i32 6, !"NORMAL_TRANSFORM", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 6, i8 0, !65}
!74 = !{i32 7, !"NORMAL_TRANSFORM", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 7, i8 0, !65}
!75 = !{i32 2}
!76 = !{i32 8, !"TRANSIENT_INDEX", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 8, i8 0, !77}
!77 = !{i32 3, i32 1}
!78 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!79 = !{!80}
!80 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !65}
!81 = !{i32 0, i64 24}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}

