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
; MATERIAL_DATA_OFFSET     0   x           6     NONE    uint   x   
; TRANSIENT_INDEX          0    y          6     NONE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 85fc5f8b7932379b21ce058b65df6334
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
; MATERIAL_DATA_OFFSET     0        nointerpolation       
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
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4     t37,space1     1
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
; Number of inputs: 26, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %67 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = fmul fast float %69, %63
  %71 = fmul fast float %69, %64
  %72 = fmul fast float %54, %51
  %73 = fmul fast float %55, %50
  %74 = fsub fast float %72, %73
  %75 = fmul fast float %55, %49
  %76 = fmul fast float %53, %51
  %77 = fsub fast float %75, %76
  %78 = fmul fast float %53, %50
  %79 = fmul fast float %54, %49
  %80 = fsub fast float %78, %79
  %81 = fmul fast float %74, %52
  %82 = fmul fast float %77, %52
  %83 = fmul fast float %80, %52
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 3
  %87 = fmul fast float %85, 2.000000e+00
  %88 = fmul fast float %87, %70
  %89 = fmul fast float %86, 2.000000e+00
  %90 = fmul fast float %89, %71
  %91 = fsub fast float 1.000000e+00, %88
  %92 = fsub fast float 1.000000e+00, %90
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %96 = extractvalue %dx.types.CBufRet.f32 %93, 2
  %97 = fmul fast float %91, %94
  %98 = fmul fast float %91, %95
  %99 = fmul fast float %91, %96
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %104 = fmul fast float %92, %101
  %105 = fmul fast float %92, %102
  %106 = fmul fast float %92, %103
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %110 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %111 = fadd fast float %104, %108
  %112 = fadd fast float %111, %97
  %113 = fadd fast float %105, %109
  %114 = fadd fast float %113, %98
  %115 = fadd fast float %106, %110
  %116 = fadd fast float %115, %99
  %117 = fmul fast float %112, %65
  %118 = fmul fast float %114, %65
  %119 = fmul fast float %116, %65
  %120 = fadd fast float %58, 5.000000e-01
  %121 = fptoui float %120 to i32
  %122 = shl i32 %121, 3
  %123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.i32 %123, 0
  %125 = or i32 %122, 4
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 0
  %128 = and i32 %124, 8191
  %129 = lshr i32 %124, 13
  %130 = and i32 %129, 8191
  %131 = lshr i32 %124, 26
  %132 = and i32 %127, 65535
  %133 = lshr i32 %127, 16
  %134 = uitofp i32 %132 to float
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %137 = uitofp i32 %133 to float
  %138 = uitofp i32 %128 to float
  %139 = fmul fast float %136, %138
  %140 = uitofp i32 %130 to float
  %141 = fmul fast float %136, %140
  %142 = fmul fast float %136, %56
  %143 = fmul fast float %142, %134
  %144 = fmul fast float %136, %57
  %145 = fmul fast float %144, %137
  %146 = fadd fast float %143, %139
  %147 = fadd fast float %141, %145
  %148 = uitofp i32 %131 to float
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 3
  %152 = fmul fast float %150, %70
  %153 = fmul fast float %151, %71
  %154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.i32 %154, 0
  %156 = and i32 %155, 114688
  %157 = icmp ne i32 %156, 0
  %158 = select i1 %157, float %152, float 0.000000e+00
  %159 = select i1 %157, float %153, float 0.000000e+00
  %160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %158, float %159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %161 = extractvalue %dx.types.ResRet.f32 %160, 0
  %162 = fmul fast float %161, 2.550000e+02
  %163 = fptoui float %162 to i32
  %164 = select i1 %157, i32 %163, i32 0
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.i32 %166, 3
  %168 = and i32 %167, 3
  %169 = icmp ne i32 %168, 0
  %170 = and i32 %167, 4
  %171 = icmp ne i32 %170, 0
  %172 = and i1 %169, %171
  br i1 %172, label %173, label %184

; <label>:173                                     ; preds = %0
  %174 = extractvalue %dx.types.CBufRet.f32 %165, 3
  %175 = fmul fast float %174, %71
  %176 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %177 = fmul fast float %176, %70
  %178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %177, float %175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %179 = extractvalue %dx.types.ResRet.f32 %178, 0
  %180 = fsub fast float 1.000000e+00, %179
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = fcmp fast olt float %180, %182
  br label %187

; <label>:184                                     ; preds = %0
  %185 = icmp eq i32 %170, 0
  %186 = and i1 %169, %185
  br label %187

; <label>:187                                     ; preds = %184, %173
  %188 = phi i1 [ %183, %173 ], [ %186, %184 ]
  %189 = add i32 %44, 92
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = shl i32 %191, 4
  %193 = and i32 %192, 32752
  %194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %193)  ; LegacyF16ToF32(value)
  %195 = lshr i32 %191, 7
  %196 = and i32 %195, 32752
  %197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %196)  ; LegacyF16ToF32(value)
  %198 = lshr i32 %191, 22
  %199 = shl nuw nsw i32 %198, 5
  %200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %199)  ; LegacyF16ToF32(value)
  %201 = add i32 %44, 120
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = and i32 %203, 255
  %205 = uitofp i32 %204 to float
  %206 = fmul fast float %205, 0x3F70101020000000
  %207 = lshr i32 %203, 8
  %208 = and i32 %207, 255
  %209 = uitofp i32 %208 to float
  %210 = fmul fast float %209, 0x3F70101020000000
  %211 = lshr i32 %203, 16
  %212 = and i32 %211, 255
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F70101020000000
  %215 = add i32 %44, 36
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = add i32 %44, 160
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = add i32 %44, 108
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %233 = add i32 %44, 136
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %247 = add i32 %44, 52
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 65535
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %249, 16
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = add i32 %44, 176
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = and i32 %256, 65535
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = lshr i32 %256, 16
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = fmul fast float %258, 0x3F50624DE0000000
  %262 = fmul fast float %260, 0x3F50624DE0000000
  %263 = add i32 %44, 188
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = lshr i32 %265, 20
  %267 = and i32 %266, 3
  %268 = add nuw nsw i32 %267, 1
  %269 = add i32 %44, 24
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = add i32 %44, 28
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = or i32 %274, %271
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %755, label %277

; <label>:277                                     ; preds = %187
  %278 = lshr i32 %220, 16
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = fmul fast float %279, 0x3F50624DE0000000
  %281 = and i32 %220, 65535
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = fmul fast float %282, 0x3F50624DE0000000
  %284 = lshr i32 %217, 16
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = and i32 %217, 65535
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = add i32 %44, 156
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = lshr i32 %290, 16
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = fmul fast float %292, 0x3F50624DE0000000
  %294 = add i32 %44, 56
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = lshr i32 %296, 16
  %298 = and i32 %297, 255
  %299 = lshr i32 %296, 24
  %300 = add i32 %44, 164
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 65535
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %302, 16
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = add i32 %44, 32
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = lshr i32 %309, 22
  %311 = shl nuw nsw i32 %310, 5
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = shl i32 %309, 4
  %314 = and i32 %313, 32752
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %309, 7
  %317 = and i32 %316, 32752
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.f32 %319, 3
  %321 = fmul fast float %320, 1.000000e+03
  %322 = fmul fast float %283, %321
  %323 = call float @dx.op.unary.f32(i32 22, float %322)  ; Frc(value)
  %324 = fadd fast float %323, %287
  %325 = fmul fast float %280, %321
  %326 = call float @dx.op.unary.f32(i32 22, float %325)  ; Frc(value)
  %327 = fadd fast float %326, %285
  %328 = fmul fast float %293, %321
  %329 = call float @dx.op.unary.f32(i32 22, float %328)  ; Frc(value)
  %330 = fmul fast float %329, 0x401921FB60000000
  %331 = fadd fast float %330, %312
  %332 = call float @dx.op.unary.f32(i32 13, float %331)  ; Sin(value)
  %333 = call float @dx.op.unary.f32(i32 12, float %331)  ; Cos(value)
  %334 = fsub fast float -0.000000e+00, %332
  %335 = fadd fast float %59, -5.000000e-01
  %336 = fadd fast float %60, -5.000000e-01
  %337 = fmul fast float %304, %335
  %338 = fmul fast float %306, %336
  %339 = fadd fast float %337, 5.000000e-01
  %340 = fadd fast float %338, 5.000000e-01
  %341 = fmul fast float %315, %339
  %342 = fmul fast float %318, %340
  %343 = fmul fast float %333, %341
  %344 = call float @dx.op.tertiary.f32(i32 46, float %334, float %342, float %343)  ; FMad(a,b,c)
  %345 = fmul fast float %332, %341
  %346 = call float @dx.op.tertiary.f32(i32 46, float %333, float %342, float %345)  ; FMad(a,b,c)
  %347 = fadd fast float %324, %344
  %348 = fadd fast float %327, %346
  %349 = icmp ugt i32 %298, 1
  %350 = icmp ugt i32 %296, 33554431
  %351 = or i1 %350, %349
  br i1 %351, label %352, label %377

; <label>:352                                     ; preds = %277
  %353 = add i32 %44, 132
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = lshr i32 %355, 16
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = fmul fast float %320, %357
  %359 = call float @dx.op.unary.f32(i32 22, float %358)  ; Frc(value)
  %360 = mul nuw nsw i32 %298, %299
  %361 = uitofp i32 %360 to float
  %362 = fmul fast float %359, %361
  %363 = call float @dx.op.unary.f32(i32 27, float %362)  ; Round_ni(value)
  %364 = fptoui float %363 to i32
  %365 = urem i32 %364, %298
  %366 = udiv i32 %364, %299
  %367 = call float @dx.op.unary.f32(i32 22, float %347)  ; Frc(value)
  %368 = call float @dx.op.unary.f32(i32 22, float %348)  ; Frc(value)
  %369 = uitofp i32 %365 to float
  %370 = uitofp i32 %366 to float
  %371 = fadd fast float %367, %369
  %372 = fadd fast float %368, %370
  %373 = uitofp i32 %298 to float
  %374 = uitofp i32 %299 to float
  %375 = fdiv fast float %371, %373
  %376 = fdiv fast float %372, %374
  br label %377

; <label>:377                                     ; preds = %352, %277
  %378 = phi float [ %375, %352 ], [ %347, %277 ]
  %379 = phi float [ %376, %352 ], [ %348, %277 ]
  %380 = and i32 %271, 16
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %578, label %382

; <label>:382                                     ; preds = %377
  %383 = add i32 %44, 200
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = add i32 %385, 0
  %387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %388 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %387, %dx.types.Handle %66, float %378, float %379, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = extractvalue %dx.types.ResRet.f32 %388, 2
  %392 = extractvalue %dx.types.ResRet.f32 %388, 3
  %393 = and i32 %296, 255
  %394 = uitofp i32 %393 to float
  %395 = lshr i32 %296, 8
  %396 = and i32 %395, 255
  %397 = uitofp i32 %396 to float
  %398 = fmul fast float %392, %394
  %399 = fadd fast float %398, %397
  %400 = fmul fast float %399, 0x3F70101000000000
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 512
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %413, label %405

; <label>:405                                     ; preds = %382
  %406 = add i32 %44, 240
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = add i32 %408, 0
  %410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %409, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %411 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %410, %dx.types.Handle %67, float %378, float %379, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %412 = extractvalue %dx.types.ResRet.f32 %411, 0
  br label %413

; <label>:413                                     ; preds = %405, %382
  %414 = phi float [ %412, %405 ], [ 1.000000e+00, %382 ]
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 33554432
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %525, label %419

; <label>:419                                     ; preds = %413
  %420 = add i32 %44, 128
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, 65535
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = lshr i32 %422, 16
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = add i32 %44, 132
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = and i32 %429, 65535
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = lshr i32 %433, 24
  %435 = uitofp i32 %434 to float
  %436 = fmul fast float %435, 0x3F70101020000000
  %437 = and i32 %433, 255
  %438 = uitofp i32 %437 to float
  %439 = fmul fast float %438, 0x3F70101020000000
  %440 = lshr i32 %433, 8
  %441 = and i32 %440, 255
  %442 = uitofp i32 %441 to float
  %443 = fmul fast float %442, 0x3F70101020000000
  %444 = lshr i32 %433, 16
  %445 = and i32 %444, 255
  %446 = uitofp i32 %445 to float
  %447 = fmul fast float %446, 0x3F70101020000000
  %448 = add i32 %44, 124
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = lshr i32 %450, 24
  %452 = uitofp i32 %451 to float
  %453 = fmul fast float %452, 0x3F70101020000000
  %454 = and i32 %450, 255
  %455 = uitofp i32 %454 to float
  %456 = fmul fast float %455, 0x3F70101020000000
  %457 = lshr i32 %450, 8
  %458 = and i32 %457, 255
  %459 = uitofp i32 %458 to float
  %460 = fmul fast float %459, 0x3F70101020000000
  %461 = lshr i32 %450, 16
  %462 = and i32 %461, 255
  %463 = uitofp i32 %462 to float
  %464 = fmul fast float %463, 0x3F70101020000000
  %465 = bitcast float %389 to i32
  %466 = ashr i32 %465, 1
  %467 = sub nsw i32 1597463174, %466
  %468 = bitcast i32 %467 to float
  %469 = fmul fast float %389, 5.000000e-01
  %470 = fmul fast float %468, %468
  %471 = fmul fast float %470, %469
  %472 = fsub fast float 1.500000e+00, %471
  %473 = fmul fast float %468, %389
  %474 = fmul fast float %473, %472
  %475 = bitcast float %390 to i32
  %476 = ashr i32 %475, 1
  %477 = sub nsw i32 1597463174, %476
  %478 = bitcast i32 %477 to float
  %479 = fmul fast float %390, 5.000000e-01
  %480 = fmul fast float %478, %478
  %481 = fmul fast float %480, %479
  %482 = fsub fast float 1.500000e+00, %481
  %483 = fmul fast float %478, %390
  %484 = fmul fast float %483, %482
  %485 = bitcast float %391 to i32
  %486 = ashr i32 %485, 1
  %487 = sub nsw i32 1597463174, %486
  %488 = bitcast i32 %487 to float
  %489 = fmul fast float %391, 5.000000e-01
  %490 = fmul fast float %488, %488
  %491 = fmul fast float %490, %489
  %492 = fsub fast float 1.500000e+00, %491
  %493 = fmul fast float %488, %391
  %494 = fmul fast float %493, %492
  %495 = fsub fast float %474, %456
  %496 = fsub fast float %484, %460
  %497 = fsub fast float %494, %464
  %498 = fmul fast float %495, %424
  %499 = fmul fast float %496, %426
  %500 = fmul fast float %497, %431
  %501 = fadd fast float %498, %439
  %502 = fadd fast float %499, %443
  %503 = fadd fast float %500, %447
  %504 = call float @dx.op.unary.f32(i32 7, float %501)  ; Saturate(value)
  %505 = call float @dx.op.unary.f32(i32 7, float %502)  ; Saturate(value)
  %506 = call float @dx.op.unary.f32(i32 7, float %503)  ; Saturate(value)
  %507 = fmul fast float %504, %504
  %508 = fmul fast float %505, %505
  %509 = fmul fast float %506, %506
  %510 = fsub fast float %507, %389
  %511 = fsub fast float %508, %390
  %512 = fsub fast float %509, %391
  %513 = fmul fast float %510, %414
  %514 = fmul fast float %511, %414
  %515 = fmul fast float %512, %414
  %516 = fadd fast float %513, %389
  %517 = fadd fast float %514, %390
  %518 = fadd fast float %515, %391
  %519 = fadd fast float %436, %400
  %520 = fsub fast float %519, %453
  %521 = call float @dx.op.unary.f32(i32 7, float %520)  ; Saturate(value)
  %522 = fsub fast float %521, %400
  %523 = fmul fast float %522, %414
  %524 = fadd fast float %523, %400
  br label %578

; <label>:525                                     ; preds = %413
  %526 = and i32 %416, 134217728
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %562, label %528

; <label>:528                                     ; preds = %525
  %529 = call float @dx.op.unary.f32(i32 24, float %206)  ; Sqrt(value)
  %530 = call float @dx.op.unary.f32(i32 24, float %210)  ; Sqrt(value)
  %531 = call float @dx.op.unary.f32(i32 24, float %214)  ; Sqrt(value)
  %532 = fadd fast float %529, -5.000000e-01
  %533 = fadd fast float %530, -5.000000e-01
  %534 = fadd fast float %531, -5.000000e-01
  %535 = fmul fast float %532, %414
  %536 = fmul fast float %533, %414
  %537 = fmul fast float %534, %414
  %538 = fadd fast float %535, 5.000000e-01
  %539 = fadd fast float %536, 5.000000e-01
  %540 = fadd fast float %537, 5.000000e-01
  %541 = call float @dx.op.unary.f32(i32 24, float %389)  ; Sqrt(value)
  %542 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %543 = call float @dx.op.unary.f32(i32 24, float %391)  ; Sqrt(value)
  %544 = fmul fast float %538, 2.000000e+00
  %545 = fsub fast float 1.000000e+00, %544
  %546 = fmul fast float %545, %541
  %547 = fadd fast float %546, %544
  %548 = fmul fast float %547, %541
  %549 = fmul fast float %539, 2.000000e+00
  %550 = fsub fast float 1.000000e+00, %549
  %551 = fmul fast float %550, %542
  %552 = fadd fast float %551, %549
  %553 = fmul fast float %552, %542
  %554 = fmul fast float %540, 2.000000e+00
  %555 = fsub fast float 1.000000e+00, %554
  %556 = fmul fast float %555, %543
  %557 = fadd fast float %556, %554
  %558 = fmul fast float %557, %543
  %559 = fmul fast float %548, %548
  %560 = fmul fast float %553, %553
  %561 = fmul fast float %558, %558
  br label %578

; <label>:562                                     ; preds = %525
  %563 = fmul fast float %206, %206
  %564 = fmul fast float %210, %210
  %565 = fmul fast float %214, %214
  %566 = fadd fast float %563, -1.000000e+00
  %567 = fadd fast float %564, -1.000000e+00
  %568 = fadd fast float %565, -1.000000e+00
  %569 = fmul fast float %414, %566
  %570 = fmul fast float %414, %567
  %571 = fmul fast float %414, %568
  %572 = fadd fast float %569, 1.000000e+00
  %573 = fadd fast float %570, 1.000000e+00
  %574 = fadd fast float %571, 1.000000e+00
  %575 = fmul fast float %572, %389
  %576 = fmul fast float %573, %390
  %577 = fmul fast float %574, %391
  br label %578

; <label>:578                                     ; preds = %562, %528, %419, %377
  %579 = phi float [ %524, %419 ], [ %400, %528 ], [ %400, %562 ], [ 0x3FA23C0BE0000000, %377 ]
  %580 = phi float [ %516, %419 ], [ %559, %528 ], [ %575, %562 ], [ 1.000000e+00, %377 ]
  %581 = phi float [ %517, %419 ], [ %560, %528 ], [ %576, %562 ], [ 1.000000e+00, %377 ]
  %582 = phi float [ %518, %419 ], [ %561, %528 ], [ %577, %562 ], [ 1.000000e+00, %377 ]
  %583 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.i32 %583, 1
  %585 = and i32 %584, 1
  %586 = icmp ne i32 %585, 0
  %587 = add i32 %44, 196
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = and i32 %589, 32
  %591 = icmp ne i32 %590, 0
  %592 = and i1 %586, %591
  %593 = select i1 %592, float 1.000000e+00, float %580
  %594 = select i1 %592, float 0x3FD3333340000000, float %581
  %595 = select i1 %592, float 0x3FD3333340000000, float %582
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = and i32 %597, 32
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %672, label %600

; <label>:600                                     ; preds = %578
  %601 = add i32 %44, 60
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = add i32 %44, 208
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = add i32 %606, 0
  %608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %607, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %609 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %608, %dx.types.Handle %66, float %378, float %379, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = extractvalue %dx.types.ResRet.f32 %609, 3
  %614 = and i32 %603, 255
  %615 = uitofp i32 %614 to float
  %616 = lshr i32 %603, 8
  %617 = and i32 %616, 255
  %618 = uitofp i32 %617 to float
  %619 = lshr i32 %603, 16
  %620 = and i32 %619, 255
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %621, 0x3F70101000000000
  %623 = fmul fast float %610, %615
  %624 = fadd fast float %623, %618
  %625 = fmul fast float %624, 0x3F70101000000000
  %626 = fadd fast float %611, -5.000000e-01
  %627 = fadd fast float %613, -5.000000e-01
  %628 = fmul fast float %626, %622
  %629 = fmul fast float %627, %622
  %630 = fadd fast float %628, 5.000000e-01
  %631 = fadd fast float %629, 5.000000e-01
  %632 = fmul fast float %630, 2.000000e+00
  %633 = fadd fast float %632, -1.000000e+00
  %634 = fmul fast float %631, 2.000000e+00
  %635 = fadd fast float %634, -1.000000e+00
  %636 = fadd fast float %633, %635
  %637 = fmul fast float %636, 5.000000e-01
  %638 = fsub fast float %633, %635
  %639 = fmul fast float %638, 5.000000e-01
  %640 = call float @dx.op.unary.f32(i32 6, float %637)  ; FAbs(value)
  %641 = fsub fast float 1.000000e+00, %640
  %642 = call float @dx.op.unary.f32(i32 6, float %639)  ; FAbs(value)
  %643 = fsub fast float %641, %642
  %644 = call float @dx.op.dot3.f32(i32 55, float %637, float %639, float %643, float %637, float %639, float %643)  ; Dot3(ax,ay,az,bx,by,bz)
  %645 = call float @dx.op.unary.f32(i32 25, float %644)  ; Rsqrt(value)
  %646 = fmul fast float %637, %645
  %647 = fmul fast float %639, %645
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = and i32 %649, 67108864
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %668, label %652

; <label>:652                                     ; preds = %600
  %653 = add i32 %44, 152
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = and i32 %655, 65535
  %657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %656)  ; LegacyF16ToF32(value)
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = and i32 %659, 65535
  %661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %660)  ; LegacyF16ToF32(value)
  %662 = lshr i32 %655, 16
  %663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %662)  ; LegacyF16ToF32(value)
  %664 = fsub fast float %625, %663
  %665 = fmul fast float %664, %657
  %666 = fadd fast float %665, %661
  %667 = call float @dx.op.unary.f32(i32 7, float %666)  ; Saturate(value)
  br label %668

; <label>:668                                     ; preds = %652, %600
  %669 = phi float [ %667, %652 ], [ %625, %600 ]
  %670 = call float @dx.op.dot2.f32(i32 54, float %646, float %647, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %671 = call float @dx.op.dot2.f32(i32 54, float %646, float %647, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %672

; <label>:672                                     ; preds = %668, %578
  %673 = phi float [ %669, %668 ], [ 0x3FD6666660000000, %578 ]
  %674 = phi float [ %670, %668 ], [ 0.000000e+00, %578 ]
  %675 = phi float [ %671, %668 ], [ 0.000000e+00, %578 ]
  %676 = phi float [ %612, %668 ], [ 1.000000e+00, %578 ]
  %677 = add i32 %44, 96
  %678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %677, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = lshr i32 %679, 22
  %681 = shl nuw nsw i32 %680, 5
  %682 = call float @dx.op.legacyF16ToF32(i32 131, i32 %681)  ; LegacyF16ToF32(value)
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = and i32 %684, 64
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %720, label %687

; <label>:687                                     ; preds = %672
  %688 = add i32 %44, 216
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = add i32 %690, 0
  %692 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %691, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = and i32 %694, 131072
  %696 = icmp eq i32 %695, 0
  %697 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %692, %dx.types.Handle %66, float %378, float %379, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %698 = extractvalue %dx.types.ResRet.f32 %697, 0
  %699 = extractvalue %dx.types.ResRet.f32 %697, 1
  %700 = extractvalue %dx.types.ResRet.f32 %697, 2
  %701 = fmul fast float %698, %194
  %702 = fmul fast float %699, %197
  %703 = fmul fast float %700, %200
  br i1 %696, label %710, label %704

; <label>:704                                     ; preds = %687
  %705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %706 = extractvalue %dx.types.CBufRet.f32 %705, 0
  %707 = fmul fast float %706, %701
  %708 = fmul fast float %706, %702
  %709 = fmul fast float %706, %703
  br label %710

; <label>:710                                     ; preds = %704, %687
  %711 = phi float [ %707, %704 ], [ %701, %687 ]
  %712 = phi float [ %708, %704 ], [ %702, %687 ]
  %713 = phi float [ %709, %704 ], [ %703, %687 ]
  %714 = fmul fast float %711, %682
  %715 = select i1 %188, float %714, float %711
  %716 = call float @dx.op.dot3.f32(i32 55, float %715, float %712, float %713, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %717 = select i1 %188, float 0.000000e+00, float %711
  %718 = select i1 %188, float %716, float %712
  %719 = select i1 %188, float 0.000000e+00, float %713
  br label %720

; <label>:720                                     ; preds = %710, %672
  %721 = phi float [ %717, %710 ], [ 0.000000e+00, %672 ]
  %722 = phi float [ %718, %710 ], [ 0.000000e+00, %672 ]
  %723 = phi float [ %719, %710 ], [ 0.000000e+00, %672 ]
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = and i32 %725, 65536
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %738, label %728

; <label>:728                                     ; preds = %720
  %729 = add i32 %44, 256
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = add i32 %731, 0
  %733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %732, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %734 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %733, %dx.types.Handle %67, float %378, float %379, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %735 = extractvalue %dx.types.ResRet.f32 %734, 0
  %736 = extractvalue %dx.types.ResRet.f32 %734, 1
  %737 = extractvalue %dx.types.ResRet.f32 %734, 2
  br label %738

; <label>:738                                     ; preds = %728, %720
  %739 = phi float [ %735, %728 ], [ 0.000000e+00, %720 ]
  %740 = phi float [ %736, %728 ], [ 0.000000e+00, %720 ]
  %741 = phi float [ %737, %728 ], [ 0.000000e+00, %720 ]
  %742 = add i32 %44, 64
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 255
  %746 = uitofp i32 %745 to float
  %747 = lshr i32 %744, 8
  %748 = and i32 %747, 255
  %749 = uitofp i32 %748 to float
  %750 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %751 = fmul fast float %749, %750
  %752 = fadd fast float %751, %746
  %753 = fmul fast float %752, 0x3F70101020000000
  %754 = call float @dx.op.unary.f32(i32 7, float %753)  ; Saturate(value)
  br label %755

; <label>:755                                     ; preds = %738, %187
  %756 = phi float [ %674, %738 ], [ 0.000000e+00, %187 ]
  %757 = phi float [ %675, %738 ], [ 0.000000e+00, %187 ]
  %758 = phi float [ %593, %738 ], [ 0.000000e+00, %187 ]
  %759 = phi float [ %594, %738 ], [ 0.000000e+00, %187 ]
  %760 = phi float [ %595, %738 ], [ 0.000000e+00, %187 ]
  %761 = phi float [ %721, %738 ], [ 0.000000e+00, %187 ]
  %762 = phi float [ %722, %738 ], [ 0.000000e+00, %187 ]
  %763 = phi float [ %723, %738 ], [ 0.000000e+00, %187 ]
  %764 = phi float [ %739, %738 ], [ 0.000000e+00, %187 ]
  %765 = phi float [ %740, %738 ], [ 0.000000e+00, %187 ]
  %766 = phi float [ %741, %738 ], [ 0.000000e+00, %187 ]
  %767 = phi float [ %579, %738 ], [ 0.000000e+00, %187 ]
  %768 = phi float [ 1.000000e+00, %738 ], [ 0.000000e+00, %187 ]
  %769 = phi float [ %673, %738 ], [ 0.000000e+00, %187 ]
  %770 = phi float [ %676, %738 ], [ 0.000000e+00, %187 ]
  %771 = phi float [ %754, %738 ], [ 0.000000e+00, %187 ]
  %772 = icmp ult i32 %268, 2
  %773 = add i32 %44, 40
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = add i32 %44, 44
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = or i32 %778, %775
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %1640, label %781

; <label>:781                                     ; preds = %755
  %782 = add i32 %44, 172
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = lshr i32 %784, 16
  %786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %785)  ; LegacyF16ToF32(value)
  %787 = fmul fast float %786, 0x3F50624DE0000000
  %788 = add i32 %44, 72
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = lshr i32 %790, 16
  %792 = and i32 %791, 255
  %793 = lshr i32 %790, 24
  %794 = add i32 %44, 180
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %794, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = and i32 %796, 65535
  %798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %797)  ; LegacyF16ToF32(value)
  %799 = lshr i32 %796, 16
  %800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %799)  ; LegacyF16ToF32(value)
  %801 = add i32 %44, 48
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %801, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = lshr i32 %803, 22
  %805 = shl nuw nsw i32 %804, 5
  %806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %805)  ; LegacyF16ToF32(value)
  %807 = shl i32 %803, 4
  %808 = and i32 %807, 32752
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = lshr i32 %803, 7
  %811 = and i32 %810, 32752
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %814 = extractvalue %dx.types.CBufRet.f32 %813, 3
  %815 = fmul fast float %814, 1.000000e+03
  %816 = fmul fast float %261, %815
  %817 = call float @dx.op.unary.f32(i32 22, float %816)  ; Frc(value)
  %818 = fadd fast float %817, %251
  %819 = fmul fast float %262, %815
  %820 = call float @dx.op.unary.f32(i32 22, float %819)  ; Frc(value)
  %821 = fadd fast float %820, %253
  %822 = fmul fast float %787, %815
  %823 = call float @dx.op.unary.f32(i32 22, float %822)  ; Frc(value)
  %824 = fmul fast float %823, 0x401921FB60000000
  %825 = fadd fast float %824, %806
  %826 = call float @dx.op.unary.f32(i32 13, float %825)  ; Sin(value)
  %827 = call float @dx.op.unary.f32(i32 12, float %825)  ; Cos(value)
  %828 = fsub fast float -0.000000e+00, %826
  %829 = fadd fast float %61, -5.000000e-01
  %830 = fadd fast float %62, -5.000000e-01
  %831 = fmul fast float %798, %829
  %832 = fmul fast float %800, %830
  %833 = fadd fast float %831, 5.000000e-01
  %834 = fadd fast float %832, 5.000000e-01
  %835 = fmul fast float %809, %833
  %836 = fmul fast float %812, %834
  %837 = fmul fast float %827, %835
  %838 = call float @dx.op.tertiary.f32(i32 46, float %828, float %836, float %837)  ; FMad(a,b,c)
  %839 = fmul fast float %826, %835
  %840 = call float @dx.op.tertiary.f32(i32 46, float %827, float %836, float %839)  ; FMad(a,b,c)
  %841 = fadd fast float %818, %838
  %842 = fadd fast float %821, %840
  %843 = icmp ugt i32 %792, 1
  %844 = icmp ugt i32 %790, 33554431
  %845 = or i1 %844, %843
  br i1 %845, label %846, label %871

; <label>:846                                     ; preds = %781
  %847 = add i32 %44, 148
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = lshr i32 %849, 16
  %851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %850)  ; LegacyF16ToF32(value)
  %852 = fmul fast float %814, %851
  %853 = call float @dx.op.unary.f32(i32 22, float %852)  ; Frc(value)
  %854 = mul nuw nsw i32 %792, %793
  %855 = uitofp i32 %854 to float
  %856 = fmul fast float %853, %855
  %857 = call float @dx.op.unary.f32(i32 27, float %856)  ; Round_ni(value)
  %858 = fptoui float %857 to i32
  %859 = urem i32 %858, %792
  %860 = udiv i32 %858, %793
  %861 = call float @dx.op.unary.f32(i32 22, float %841)  ; Frc(value)
  %862 = call float @dx.op.unary.f32(i32 22, float %842)  ; Frc(value)
  %863 = uitofp i32 %859 to float
  %864 = uitofp i32 %860 to float
  %865 = fadd fast float %861, %863
  %866 = fadd fast float %862, %864
  %867 = uitofp i32 %792 to float
  %868 = uitofp i32 %793 to float
  %869 = fdiv fast float %865, %867
  %870 = fdiv fast float %866, %868
  br label %871

; <label>:871                                     ; preds = %846, %781
  %872 = phi float [ %869, %846 ], [ %841, %781 ]
  %873 = phi float [ %870, %846 ], [ %842, %781 ]
  %874 = and i32 %775, 16777216
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %982, label %876

; <label>:876                                     ; preds = %871
  %877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %878 = extractvalue %dx.types.CBufRet.f32 %877, 0
  %879 = extractvalue %dx.types.CBufRet.f32 %877, 1
  %880 = extractvalue %dx.types.CBufRet.f32 %877, 2
  %881 = fadd fast float %878, %117
  %882 = fadd fast float %879, %118
  %883 = fadd fast float %880, %119
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 0
  %886 = call float @dx.op.unary.f32(i32 7, float %885)  ; Saturate(value)
  %887 = icmp eq i32 %43, 65535
  br i1 %887, label %982, label %888

; <label>:888                                     ; preds = %876
  %889 = lshr i32 %43, 1
  %890 = shl i32 %889, 2
  %891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %890, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.i32 %891, 0
  %893 = and i32 %43, 1
  %894 = icmp ne i32 %893, 0
  %895 = lshr i32 %892, 16
  %896 = and i32 %892, 65535
  %897 = select i1 %894, i32 %895, i32 %896
  %898 = icmp eq i32 %897, 65535
  br i1 %898, label %978, label %899

; <label>:899                                     ; preds = %888
  %900 = mul nuw nsw i32 %897, 40
  %901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.f32 %901, 0
  %903 = extractvalue %dx.types.ResRet.f32 %901, 1
  %904 = extractvalue %dx.types.ResRet.f32 %901, 2
  %905 = add nuw nsw i32 %900, 12
  %906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.f32 %906, 0
  %908 = extractvalue %dx.types.ResRet.f32 %906, 1
  %909 = extractvalue %dx.types.ResRet.f32 %906, 2
  %910 = add nuw nsw i32 %900, 24
  %911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.f32 %911, 0
  %913 = extractvalue %dx.types.ResRet.f32 %911, 1
  %914 = extractvalue %dx.types.ResRet.f32 %911, 2
  %915 = add nuw nsw i32 %900, 36
  %916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.f32 %916, 0
  %918 = fsub fast float %881, %902
  %919 = fsub fast float %882, %903
  %920 = fsub fast float %883, %904
  %921 = fmul fast float %917, %918
  %922 = fmul fast float %917, %919
  %923 = fmul fast float %917, %920
  %924 = call float @dx.op.unary.f32(i32 27, float %921)  ; Round_ni(value)
  %925 = call float @dx.op.unary.f32(i32 27, float %922)  ; Round_ni(value)
  %926 = call float @dx.op.unary.f32(i32 27, float %923)  ; Round_ni(value)
  %927 = fadd fast float %924, 5.000000e-01
  %928 = fadd fast float %925, 5.000000e-01
  %929 = fadd fast float %926, 5.000000e-01
  %930 = fmul fast float %927, %907
  %931 = fmul fast float %928, %908
  %932 = fmul fast float %929, %909
  %933 = shl i32 %43, 2
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = add i32 %935, 0
  %937 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %936, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %938 = call float @dx.op.unary.f32(i32 22, float %930)  ; Frc(value)
  %939 = call float @dx.op.unary.f32(i32 22, float %931)  ; Frc(value)
  %940 = call float @dx.op.unary.f32(i32 22, float %932)  ; Frc(value)
  %941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %937, %dx.types.Handle %40, float %938, float %939, float %940, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %942 = extractvalue %dx.types.ResRet.f32 %941, 0
  %943 = extractvalue %dx.types.ResRet.f32 %941, 1
  %944 = extractvalue %dx.types.ResRet.f32 %941, 2
  %945 = fmul fast float %942, 1.023000e+03
  %946 = fmul fast float %943, 1.023000e+03
  %947 = fmul fast float %944, 1.023000e+03
  %948 = fadd fast float %945, 5.000000e-01
  %949 = fadd fast float %946, 5.000000e-01
  %950 = fadd fast float %947, 5.000000e-01
  %951 = call float @dx.op.unary.f32(i32 27, float %948)  ; Round_ni(value)
  %952 = call float @dx.op.unary.f32(i32 27, float %949)  ; Round_ni(value)
  %953 = call float @dx.op.unary.f32(i32 27, float %950)  ; Round_ni(value)
  %954 = fsub fast float %921, %924
  %955 = fsub fast float %922, %925
  %956 = fsub fast float %923, %926
  %957 = fmul fast float %954, 7.500000e-01
  %958 = fmul fast float %955, 7.500000e-01
  %959 = fmul fast float %956, 7.500000e-01
  %960 = fadd fast float %924, 1.250000e-01
  %961 = fadd fast float %960, %957
  %962 = fadd fast float %961, %951
  %963 = fadd fast float %925, 1.250000e-01
  %964 = fadd fast float %963, %958
  %965 = fadd fast float %964, %952
  %966 = fadd fast float %926, 1.250000e-01
  %967 = fadd fast float %966, %959
  %968 = fadd fast float %967, %953
  %969 = fmul fast float %962, %912
  %970 = fmul fast float %965, %913
  %971 = fmul fast float %968, %914
  %972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.i32 %972, 0
  %974 = add i32 %973, 0
  %975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %974, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %975, %dx.types.Handle %38, float %969, float %970, float %971, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %977 = extractvalue %dx.types.ResRet.f32 %976, 0
  br label %978

; <label>:978                                     ; preds = %899, %888
  %979 = phi float [ %977, %899 ], [ -1.000000e+00, %888 ]
  %980 = fadd fast float %979, %886
  %981 = call float @dx.op.unary.f32(i32 7, float %980)  ; Saturate(value)
  br label %982

; <label>:982                                     ; preds = %978, %876, %871
  %983 = phi float [ 1.000000e+00, %871 ], [ %981, %978 ], [ %886, %876 ]
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = and i32 %985, 256
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %1034, label %988

; <label>:988                                     ; preds = %982
  %989 = add i32 %44, 236
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %989, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = add i32 %991, 0
  %993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %992, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %994 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %993, %dx.types.Handle %67, float %872, float %873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %995 = extractvalue %dx.types.ResRet.f32 %994, 0
  %996 = add i32 %44, 84
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = shl i32 %998, 4
  %1000 = and i32 %999, 32752
  %1001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1000)  ; LegacyF16ToF32(value)
  %1002 = lshr i32 %998, 7
  %1003 = and i32 %1002, 32752
  %1004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1003)  ; LegacyF16ToF32(value)
  %1005 = fsub fast float 1.000000e+00, %983
  %1006 = call float @dx.op.binary.f32(i32 35, float %1005, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1007 = bitcast float %983 to i32
  %1008 = sitofp i32 %1007 to float
  %1009 = fadd fast float %1008, 0xC1CFBF8940000000
  %1010 = fmul fast float %1004, %1009
  %1011 = fadd fast float %1010, 0x41CFBF8940000000
  %1012 = fptosi float %1011 to i32
  %1013 = bitcast i32 %1012 to float
  %1014 = bitcast float %1006 to i32
  %1015 = sitofp i32 %1014 to float
  %1016 = fadd fast float %1015, 0xC1CFBF8940000000
  %1017 = fmul fast float %1016, %1004
  %1018 = fadd fast float %1017, 0x41CFBF8940000000
  %1019 = fptosi float %1018 to i32
  %1020 = bitcast i32 %1019 to float
  %1021 = fmul fast float %1013, %1001
  %1022 = fmul fast float %1020, %1001
  %1023 = fsub fast float %1006, %1021
  %1024 = fadd fast float %1022, %1006
  %1025 = call float @dx.op.unary.f32(i32 7, float %1023)  ; Saturate(value)
  %1026 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  %1027 = fsub fast float %995, %1025
  %1028 = fsub fast float %1026, %1025
  %1029 = bitcast float %1028 to i32
  %1030 = sub nsw i32 2129859010, %1029
  %1031 = bitcast i32 %1030 to float
  %1032 = fmul fast float %1031, %1027
  %1033 = call float @dx.op.unary.f32(i32 7, float %1032)  ; Saturate(value)
  br label %1034

; <label>:1034                                    ; preds = %988, %982
  %1035 = phi float [ %1033, %988 ], [ %983, %982 ]
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = and i32 %1037, 128
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1056, label %1040

; <label>:1040                                    ; preds = %1034
  %1041 = add i32 %44, 228
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = add i32 %1043, 0
  %1045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1044, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1046 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1045, %dx.types.Handle %67, float %872, float %873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1047 = extractvalue %dx.types.ResRet.f32 %1046, 0
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = and i32 %1049, 524288
  %1051 = icmp ne i32 %1050, 0
  %1052 = fcmp fast ogt float %1047, 0x3FE0101020000000
  %1053 = select i1 %1052, float 1.000000e+00, float 0.000000e+00
  %1054 = select i1 %1051, float %1053, float %1047
  %1055 = fmul fast float %1054, %1035
  br label %1056

; <label>:1056                                    ; preds = %1040, %1034
  %1057 = phi float [ %1055, %1040 ], [ %1035, %1034 ]
  %1058 = fcmp fast ult float %1057, 0x3F70101020000000
  br i1 %1058, label %1640, label %1059

; <label>:1059                                    ; preds = %1056
  %1060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.i32 %1060, 0
  %1062 = and i32 %1061, 16
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1262, label %1064

; <label>:1064                                    ; preds = %1059
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = add i32 %44, 204
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = add i32 %1069, 0
  %1071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1072 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1071, %dx.types.Handle %66, float %872, float %873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1073 = extractvalue %dx.types.ResRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.ResRet.f32 %1072, 1
  %1075 = extractvalue %dx.types.ResRet.f32 %1072, 2
  %1076 = extractvalue %dx.types.ResRet.f32 %1072, 3
  %1077 = and i32 %1066, 255
  %1078 = uitofp i32 %1077 to float
  %1079 = lshr i32 %1066, 8
  %1080 = and i32 %1079, 255
  %1081 = uitofp i32 %1080 to float
  %1082 = fmul fast float %1076, %1078
  %1083 = fadd fast float %1082, %1081
  %1084 = fmul fast float %1083, 0x3F70101000000000
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = and i32 %1086, 512
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1097, label %1089

; <label>:1089                                    ; preds = %1064
  %1090 = add i32 %44, 244
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = add i32 %1092, 0
  %1094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1093, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1095 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1094, %dx.types.Handle %67, float %872, float %873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1096 = extractvalue %dx.types.ResRet.f32 %1095, 0
  br label %1097

; <label>:1097                                    ; preds = %1089, %1064
  %1098 = phi float [ %1096, %1089 ], [ 1.000000e+00, %1064 ]
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = and i32 %1100, 33554432
  %1102 = icmp eq i32 %1101, 0
  br i1 %1102, label %1209, label %1103

; <label>:1103                                    ; preds = %1097
  %1104 = add i32 %44, 144
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = and i32 %1106, 65535
  %1108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1107)  ; LegacyF16ToF32(value)
  %1109 = lshr i32 %1106, 16
  %1110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1109)  ; LegacyF16ToF32(value)
  %1111 = add i32 %44, 148
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = and i32 %1113, 65535
  %1115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1114)  ; LegacyF16ToF32(value)
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = lshr i32 %1117, 24
  %1119 = uitofp i32 %1118 to float
  %1120 = fmul fast float %1119, 0x3F70101020000000
  %1121 = and i32 %1117, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = fmul fast float %1122, 0x3F70101020000000
  %1124 = lshr i32 %1117, 8
  %1125 = and i32 %1124, 255
  %1126 = uitofp i32 %1125 to float
  %1127 = fmul fast float %1126, 0x3F70101020000000
  %1128 = lshr i32 %1117, 16
  %1129 = and i32 %1128, 255
  %1130 = uitofp i32 %1129 to float
  %1131 = fmul fast float %1130, 0x3F70101020000000
  %1132 = add i32 %44, 140
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = lshr i32 %1134, 24
  %1136 = uitofp i32 %1135 to float
  %1137 = fmul fast float %1136, 0x3F70101020000000
  %1138 = and i32 %1134, 255
  %1139 = uitofp i32 %1138 to float
  %1140 = fmul fast float %1139, 0x3F70101020000000
  %1141 = lshr i32 %1134, 8
  %1142 = and i32 %1141, 255
  %1143 = uitofp i32 %1142 to float
  %1144 = fmul fast float %1143, 0x3F70101020000000
  %1145 = lshr i32 %1134, 16
  %1146 = and i32 %1145, 255
  %1147 = uitofp i32 %1146 to float
  %1148 = fmul fast float %1147, 0x3F70101020000000
  %1149 = bitcast float %1073 to i32
  %1150 = ashr i32 %1149, 1
  %1151 = sub nsw i32 1597463174, %1150
  %1152 = bitcast i32 %1151 to float
  %1153 = fmul fast float %1073, 5.000000e-01
  %1154 = fmul fast float %1152, %1152
  %1155 = fmul fast float %1154, %1153
  %1156 = fsub fast float 1.500000e+00, %1155
  %1157 = fmul fast float %1152, %1073
  %1158 = fmul fast float %1157, %1156
  %1159 = bitcast float %1074 to i32
  %1160 = ashr i32 %1159, 1
  %1161 = sub nsw i32 1597463174, %1160
  %1162 = bitcast i32 %1161 to float
  %1163 = fmul fast float %1074, 5.000000e-01
  %1164 = fmul fast float %1162, %1162
  %1165 = fmul fast float %1164, %1163
  %1166 = fsub fast float 1.500000e+00, %1165
  %1167 = fmul fast float %1162, %1074
  %1168 = fmul fast float %1167, %1166
  %1169 = bitcast float %1075 to i32
  %1170 = ashr i32 %1169, 1
  %1171 = sub nsw i32 1597463174, %1170
  %1172 = bitcast i32 %1171 to float
  %1173 = fmul fast float %1075, 5.000000e-01
  %1174 = fmul fast float %1172, %1172
  %1175 = fmul fast float %1174, %1173
  %1176 = fsub fast float 1.500000e+00, %1175
  %1177 = fmul fast float %1172, %1075
  %1178 = fmul fast float %1177, %1176
  %1179 = fsub fast float %1158, %1140
  %1180 = fsub fast float %1168, %1144
  %1181 = fsub fast float %1178, %1148
  %1182 = fmul fast float %1179, %1108
  %1183 = fmul fast float %1180, %1110
  %1184 = fmul fast float %1181, %1115
  %1185 = fadd fast float %1182, %1123
  %1186 = fadd fast float %1183, %1127
  %1187 = fadd fast float %1184, %1131
  %1188 = call float @dx.op.unary.f32(i32 7, float %1185)  ; Saturate(value)
  %1189 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  %1190 = call float @dx.op.unary.f32(i32 7, float %1187)  ; Saturate(value)
  %1191 = fmul fast float %1188, %1188
  %1192 = fmul fast float %1189, %1189
  %1193 = fmul fast float %1190, %1190
  %1194 = fsub fast float %1191, %1073
  %1195 = fsub fast float %1192, %1074
  %1196 = fsub fast float %1193, %1075
  %1197 = fmul fast float %1194, %1098
  %1198 = fmul fast float %1195, %1098
  %1199 = fmul fast float %1196, %1098
  %1200 = fadd fast float %1197, %1073
  %1201 = fadd fast float %1198, %1074
  %1202 = fadd fast float %1199, %1075
  %1203 = fadd fast float %1120, %1084
  %1204 = fsub fast float %1203, %1137
  %1205 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  %1206 = fsub fast float %1205, %1084
  %1207 = fmul fast float %1206, %1098
  %1208 = fadd fast float %1207, %1084
  br label %1262

; <label>:1209                                    ; preds = %1097
  %1210 = and i32 %1100, 134217728
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1246, label %1212

; <label>:1212                                    ; preds = %1209
  %1213 = call float @dx.op.unary.f32(i32 24, float %238)  ; Sqrt(value)
  %1214 = call float @dx.op.unary.f32(i32 24, float %242)  ; Sqrt(value)
  %1215 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %1216 = fadd fast float %1213, -5.000000e-01
  %1217 = fadd fast float %1214, -5.000000e-01
  %1218 = fadd fast float %1215, -5.000000e-01
  %1219 = fmul fast float %1216, %1098
  %1220 = fmul fast float %1217, %1098
  %1221 = fmul fast float %1218, %1098
  %1222 = fadd fast float %1219, 5.000000e-01
  %1223 = fadd fast float %1220, 5.000000e-01
  %1224 = fadd fast float %1221, 5.000000e-01
  %1225 = call float @dx.op.unary.f32(i32 24, float %1073)  ; Sqrt(value)
  %1226 = call float @dx.op.unary.f32(i32 24, float %1074)  ; Sqrt(value)
  %1227 = call float @dx.op.unary.f32(i32 24, float %1075)  ; Sqrt(value)
  %1228 = fmul fast float %1222, 2.000000e+00
  %1229 = fsub fast float 1.000000e+00, %1228
  %1230 = fmul fast float %1229, %1225
  %1231 = fadd fast float %1230, %1228
  %1232 = fmul fast float %1231, %1225
  %1233 = fmul fast float %1223, 2.000000e+00
  %1234 = fsub fast float 1.000000e+00, %1233
  %1235 = fmul fast float %1234, %1226
  %1236 = fadd fast float %1235, %1233
  %1237 = fmul fast float %1236, %1226
  %1238 = fmul fast float %1224, 2.000000e+00
  %1239 = fsub fast float 1.000000e+00, %1238
  %1240 = fmul fast float %1239, %1227
  %1241 = fadd fast float %1240, %1238
  %1242 = fmul fast float %1241, %1227
  %1243 = fmul fast float %1232, %1232
  %1244 = fmul fast float %1237, %1237
  %1245 = fmul fast float %1242, %1242
  br label %1262

; <label>:1246                                    ; preds = %1209
  %1247 = fmul fast float %238, %238
  %1248 = fmul fast float %242, %242
  %1249 = fmul fast float %246, %246
  %1250 = fadd fast float %1247, -1.000000e+00
  %1251 = fadd fast float %1248, -1.000000e+00
  %1252 = fadd fast float %1249, -1.000000e+00
  %1253 = fmul fast float %1098, %1250
  %1254 = fmul fast float %1098, %1251
  %1255 = fmul fast float %1098, %1252
  %1256 = fadd fast float %1253, 1.000000e+00
  %1257 = fadd fast float %1254, 1.000000e+00
  %1258 = fadd fast float %1255, 1.000000e+00
  %1259 = fmul fast float %1256, %1073
  %1260 = fmul fast float %1257, %1074
  %1261 = fmul fast float %1258, %1075
  br label %1262

; <label>:1262                                    ; preds = %1246, %1212, %1103, %1059
  %1263 = phi float [ %1208, %1103 ], [ %1084, %1212 ], [ %1084, %1246 ], [ 0x3FA23C0BE0000000, %1059 ]
  %1264 = phi float [ %1200, %1103 ], [ %1243, %1212 ], [ %1259, %1246 ], [ 1.000000e+00, %1059 ]
  %1265 = phi float [ %1201, %1103 ], [ %1244, %1212 ], [ %1260, %1246 ], [ 1.000000e+00, %1059 ]
  %1266 = phi float [ %1202, %1103 ], [ %1245, %1212 ], [ %1261, %1246 ], [ 1.000000e+00, %1059 ]
  %1267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.i32 %1267, 1
  %1269 = and i32 %1268, 1
  %1270 = icmp ne i32 %1269, 0
  %1271 = add i32 %44, 196
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = and i32 %1273, 32
  %1275 = icmp ne i32 %1274, 0
  %1276 = and i1 %1270, %1275
  %1277 = select i1 %1276, float 1.000000e+00, float %1264
  %1278 = select i1 %1276, float 0x3FD3333340000000, float %1265
  %1279 = select i1 %1276, float 0x3FD3333340000000, float %1266
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = and i32 %1281, 32
  %1283 = icmp eq i32 %1282, 0
  br i1 %1283, label %1356, label %1284

; <label>:1284                                    ; preds = %1262
  %1285 = add i32 %44, 76
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = add i32 %44, 212
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = add i32 %1290, 0
  %1292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1291, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1293 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1292, %dx.types.Handle %66, float %872, float %873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1294 = extractvalue %dx.types.ResRet.f32 %1293, 0
  %1295 = extractvalue %dx.types.ResRet.f32 %1293, 1
  %1296 = extractvalue %dx.types.ResRet.f32 %1293, 2
  %1297 = extractvalue %dx.types.ResRet.f32 %1293, 3
  %1298 = and i32 %1287, 255
  %1299 = uitofp i32 %1298 to float
  %1300 = lshr i32 %1287, 8
  %1301 = and i32 %1300, 255
  %1302 = uitofp i32 %1301 to float
  %1303 = lshr i32 %1287, 16
  %1304 = and i32 %1303, 255
  %1305 = uitofp i32 %1304 to float
  %1306 = fmul fast float %1305, 0x3F70101000000000
  %1307 = fmul fast float %1294, %1299
  %1308 = fadd fast float %1307, %1302
  %1309 = fmul fast float %1308, 0x3F70101000000000
  %1310 = fadd fast float %1295, -5.000000e-01
  %1311 = fadd fast float %1297, -5.000000e-01
  %1312 = fmul fast float %1310, %1306
  %1313 = fmul fast float %1311, %1306
  %1314 = fadd fast float %1312, 5.000000e-01
  %1315 = fadd fast float %1313, 5.000000e-01
  %1316 = fmul fast float %1314, 2.000000e+00
  %1317 = fadd fast float %1316, -1.000000e+00
  %1318 = fmul fast float %1315, 2.000000e+00
  %1319 = fadd fast float %1318, -1.000000e+00
  %1320 = fadd fast float %1317, %1319
  %1321 = fmul fast float %1320, 5.000000e-01
  %1322 = fsub fast float %1317, %1319
  %1323 = fmul fast float %1322, 5.000000e-01
  %1324 = call float @dx.op.unary.f32(i32 6, float %1321)  ; FAbs(value)
  %1325 = fsub fast float 1.000000e+00, %1324
  %1326 = call float @dx.op.unary.f32(i32 6, float %1323)  ; FAbs(value)
  %1327 = fsub fast float %1325, %1326
  %1328 = call float @dx.op.dot3.f32(i32 55, float %1321, float %1323, float %1327, float %1321, float %1323, float %1327)  ; Dot3(ax,ay,az,bx,by,bz)
  %1329 = call float @dx.op.unary.f32(i32 25, float %1328)  ; Rsqrt(value)
  %1330 = fmul fast float %1321, %1329
  %1331 = fmul fast float %1323, %1329
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = and i32 %1333, 67108864
  %1335 = icmp eq i32 %1334, 0
  br i1 %1335, label %1352, label %1336

; <label>:1336                                    ; preds = %1284
  %1337 = add i32 %44, 168
  %1338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.i32 %1338, 0
  %1340 = and i32 %1339, 65535
  %1341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1340)  ; LegacyF16ToF32(value)
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = and i32 %1343, 65535
  %1345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1344)  ; LegacyF16ToF32(value)
  %1346 = lshr i32 %1339, 16
  %1347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1346)  ; LegacyF16ToF32(value)
  %1348 = fsub fast float %1309, %1347
  %1349 = fmul fast float %1348, %1341
  %1350 = fadd fast float %1349, %1345
  %1351 = call float @dx.op.unary.f32(i32 7, float %1350)  ; Saturate(value)
  br label %1352

; <label>:1352                                    ; preds = %1336, %1284
  %1353 = phi float [ %1351, %1336 ], [ %1309, %1284 ]
  %1354 = call float @dx.op.dot2.f32(i32 54, float %1330, float %1331, float %45, float %46)  ; Dot2(ax,ay,bx,by)
  %1355 = call float @dx.op.dot2.f32(i32 54, float %1330, float %1331, float %47, float %48)  ; Dot2(ax,ay,bx,by)
  br label %1356

; <label>:1356                                    ; preds = %1352, %1262
  %1357 = phi float [ %1353, %1352 ], [ 0x3FD6666660000000, %1262 ]
  %1358 = phi float [ %1354, %1352 ], [ 0.000000e+00, %1262 ]
  %1359 = phi float [ %1355, %1352 ], [ 0.000000e+00, %1262 ]
  %1360 = phi float [ %1296, %1352 ], [ 1.000000e+00, %1262 ]
  %1361 = add i32 %44, 112
  %1362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1361, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.i32 %1362, 0
  %1364 = lshr i32 %1363, 22
  %1365 = shl nuw nsw i32 %1364, 5
  %1366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1365)  ; LegacyF16ToF32(value)
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = and i32 %1368, 64
  %1370 = icmp eq i32 %1369, 0
  br i1 %1370, label %1404, label %1371

; <label>:1371                                    ; preds = %1356
  %1372 = add i32 %44, 220
  %1373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.i32 %1373, 0
  %1375 = add i32 %1374, 0
  %1376 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1375, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = and i32 %1378, 131072
  %1380 = icmp eq i32 %1379, 0
  %1381 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1376, %dx.types.Handle %66, float %872, float %873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1382 = extractvalue %dx.types.ResRet.f32 %1381, 0
  %1383 = extractvalue %dx.types.ResRet.f32 %1381, 1
  %1384 = extractvalue %dx.types.ResRet.f32 %1381, 2
  %1385 = fmul fast float %1382, %226
  %1386 = fmul fast float %1383, %229
  %1387 = fmul fast float %1384, %232
  br i1 %1380, label %1394, label %1388

; <label>:1388                                    ; preds = %1371
  %1389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1390 = extractvalue %dx.types.CBufRet.f32 %1389, 0
  %1391 = fmul fast float %1390, %1385
  %1392 = fmul fast float %1390, %1386
  %1393 = fmul fast float %1390, %1387
  br label %1394

; <label>:1394                                    ; preds = %1388, %1371
  %1395 = phi float [ %1391, %1388 ], [ %1385, %1371 ]
  %1396 = phi float [ %1392, %1388 ], [ %1386, %1371 ]
  %1397 = phi float [ %1393, %1388 ], [ %1387, %1371 ]
  %1398 = fmul fast float %1395, %1366
  %1399 = select i1 %188, float %1398, float %1395
  %1400 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1396, float %1397, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1401 = select i1 %188, float 0.000000e+00, float %1395
  %1402 = select i1 %188, float %1400, float %1396
  %1403 = select i1 %188, float 0.000000e+00, float %1397
  br label %1404

; <label>:1404                                    ; preds = %1394, %1356
  %1405 = phi float [ %1401, %1394 ], [ 0.000000e+00, %1356 ]
  %1406 = phi float [ %1402, %1394 ], [ 0.000000e+00, %1356 ]
  %1407 = phi float [ %1403, %1394 ], [ 0.000000e+00, %1356 ]
  %1408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.i32 %1408, 0
  %1410 = and i32 %1409, 65536
  %1411 = icmp eq i32 %1410, 0
  br i1 %1411, label %1422, label %1412

; <label>:1412                                    ; preds = %1404
  %1413 = add i32 %44, 260
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1413, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = add i32 %1415, 0
  %1417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1416, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1418 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1417, %dx.types.Handle %67, float %872, float %873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1419 = extractvalue %dx.types.ResRet.f32 %1418, 0
  %1420 = extractvalue %dx.types.ResRet.f32 %1418, 1
  %1421 = extractvalue %dx.types.ResRet.f32 %1418, 2
  br label %1422

; <label>:1422                                    ; preds = %1412, %1404
  %1423 = phi float [ %1419, %1412 ], [ 0.000000e+00, %1404 ]
  %1424 = phi float [ %1420, %1412 ], [ 0.000000e+00, %1404 ]
  %1425 = phi float [ %1421, %1412 ], [ 0.000000e+00, %1404 ]
  %1426 = add i32 %44, 80
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1426, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = and i32 %1428, 255
  %1430 = uitofp i32 %1429 to float
  %1431 = lshr i32 %1428, 8
  %1432 = and i32 %1431, 255
  %1433 = uitofp i32 %1432 to float
  %1434 = call float @dx.op.dot3.f32(i32 55, float %1277, float %1278, float %1279, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1435 = fmul fast float %1433, %1434
  %1436 = fadd fast float %1435, %1430
  %1437 = fmul fast float %1436, 0x3F70101020000000
  %1438 = call float @dx.op.unary.f32(i32 7, float %1437)  ; Saturate(value)
  br i1 %772, label %1439, label %1450

; <label>:1439                                    ; preds = %1422
  %1440 = fsub fast float 1.000000e+00, %1057
  %1441 = fmul fast float %1440, %758
  %1442 = fmul fast float %1440, %759
  %1443 = fmul fast float %1440, %760
  %1444 = fmul fast float %1440, %761
  %1445 = fmul fast float %1440, %762
  %1446 = fmul fast float %1440, %763
  %1447 = fmul fast float %1440, %764
  %1448 = fmul fast float %1440, %765
  %1449 = fmul fast float %1440, %766
  br label %1450

; <label>:1450                                    ; preds = %1439, %1422
  %1451 = phi float [ %1441, %1439 ], [ %758, %1422 ]
  %1452 = phi float [ %1442, %1439 ], [ %759, %1422 ]
  %1453 = phi float [ %1443, %1439 ], [ %760, %1422 ]
  %1454 = phi float [ %1444, %1439 ], [ %761, %1422 ]
  %1455 = phi float [ %1445, %1439 ], [ %762, %1422 ]
  %1456 = phi float [ %1446, %1439 ], [ %763, %1422 ]
  %1457 = phi float [ %1447, %1439 ], [ %764, %1422 ]
  %1458 = phi float [ %1448, %1439 ], [ %765, %1422 ]
  %1459 = phi float [ %1449, %1439 ], [ %766, %1422 ]
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = and i32 %1461, 3
  %1463 = icmp eq i32 %1462, 3
  br i1 %1463, label %1554, label %1464

; <label>:1464                                    ; preds = %1450
  %1465 = and i32 %1461, 16
  %1466 = icmp ne i32 %1465, 0
  %1467 = select i1 %1466, float %1057, float 0.000000e+00
  %1468 = icmp eq i32 %1462, 0
  br i1 %1468, label %1469, label %1509

; <label>:1469                                    ; preds = %1464
  %1470 = and i32 %1461, 64
  %1471 = icmp ne i32 %1470, 0
  %1472 = select i1 %1471, float %1057, float 0.000000e+00
  %1473 = and i32 %1461, 65536
  %1474 = icmp ne i32 %1473, 0
  %1475 = select i1 %1474, float %1057, float 0.000000e+00
  %1476 = fsub fast float %1277, %1451
  %1477 = fsub fast float %1278, %1452
  %1478 = fsub fast float %1279, %1453
  %1479 = fmul fast float %1467, %1476
  %1480 = fmul fast float %1467, %1477
  %1481 = fmul fast float %1467, %1478
  %1482 = fadd fast float %1479, %1451
  %1483 = fadd fast float %1480, %1452
  %1484 = fadd fast float %1481, %1453
  %1485 = fsub fast float %1263, %767
  %1486 = fmul fast float %1467, %1485
  %1487 = fadd fast float %1486, %767
  %1488 = fsub fast float %1405, %1454
  %1489 = fsub fast float %1406, %1455
  %1490 = fsub fast float %1407, %1456
  %1491 = fmul fast float %1472, %1488
  %1492 = fmul fast float %1472, %1489
  %1493 = fmul fast float %1472, %1490
  %1494 = fadd fast float %1491, %1454
  %1495 = fadd fast float %1492, %1455
  %1496 = fadd fast float %1493, %1456
  %1497 = fsub fast float %1423, %1457
  %1498 = fsub fast float %1424, %1458
  %1499 = fsub fast float %1425, %1459
  %1500 = fmul fast float %1475, %1497
  %1501 = fmul fast float %1475, %1498
  %1502 = fmul fast float %1475, %1499
  %1503 = fadd fast float %1500, %1457
  %1504 = fadd fast float %1501, %1458
  %1505 = fadd fast float %1502, %1459
  %1506 = fsub fast float %1438, %771
  %1507 = fmul fast float %1467, %1506
  %1508 = fadd fast float %1507, %771
  br label %1554

; <label>:1509                                    ; preds = %1464
  %1510 = icmp eq i32 %1462, 1
  br i1 %1510, label %1511, label %1524

; <label>:1511                                    ; preds = %1509
  %1512 = fadd fast float %1277, -1.000000e+00
  %1513 = fadd fast float %1278, -1.000000e+00
  %1514 = fadd fast float %1279, -1.000000e+00
  %1515 = fmul fast float %1467, %1512
  %1516 = fmul fast float %1467, %1513
  %1517 = fmul fast float %1467, %1514
  %1518 = fadd fast float %1515, 1.000000e+00
  %1519 = fadd fast float %1516, 1.000000e+00
  %1520 = fadd fast float %1517, 1.000000e+00
  %1521 = fmul fast float %1518, %1451
  %1522 = fmul fast float %1519, %1452
  %1523 = fmul fast float %1520, %1453
  br label %1554

; <label>:1524                                    ; preds = %1509
  %1525 = icmp eq i32 %1462, 2
  br i1 %1525, label %1526, label %1554

; <label>:1526                                    ; preds = %1524
  %1527 = call float @dx.op.unary.f32(i32 24, float %1277)  ; Sqrt(value)
  %1528 = call float @dx.op.unary.f32(i32 24, float %1278)  ; Sqrt(value)
  %1529 = call float @dx.op.unary.f32(i32 24, float %1279)  ; Sqrt(value)
  %1530 = fadd fast float %1527, -5.000000e-01
  %1531 = fadd fast float %1528, -5.000000e-01
  %1532 = fadd fast float %1529, -5.000000e-01
  %1533 = fmul fast float %1530, %1467
  %1534 = fmul fast float %1531, %1467
  %1535 = fmul fast float %1532, %1467
  %1536 = fadd fast float %1533, 5.000000e-01
  %1537 = fadd fast float %1534, 5.000000e-01
  %1538 = fadd fast float %1535, 5.000000e-01
  %1539 = fmul fast float %1536, 2.000000e+00
  %1540 = fsub fast float 1.000000e+00, %1539
  %1541 = fmul fast float %1540, %1451
  %1542 = fadd fast float %1541, %1539
  %1543 = fmul fast float %1542, %1451
  %1544 = fmul fast float %1537, 2.000000e+00
  %1545 = fsub fast float 1.000000e+00, %1544
  %1546 = fmul fast float %1545, %1452
  %1547 = fadd fast float %1546, %1544
  %1548 = fmul fast float %1547, %1452
  %1549 = fmul fast float %1538, 2.000000e+00
  %1550 = fsub fast float 1.000000e+00, %1549
  %1551 = fmul fast float %1550, %1453
  %1552 = fadd fast float %1551, %1549
  %1553 = fmul fast float %1552, %1453
  br label %1554

; <label>:1554                                    ; preds = %1526, %1524, %1511, %1469, %1450
  %1555 = phi float [ %1451, %1450 ], [ %1543, %1526 ], [ %1451, %1524 ], [ %1521, %1511 ], [ %1482, %1469 ]
  %1556 = phi float [ %1452, %1450 ], [ %1548, %1526 ], [ %1452, %1524 ], [ %1522, %1511 ], [ %1483, %1469 ]
  %1557 = phi float [ %1453, %1450 ], [ %1553, %1526 ], [ %1453, %1524 ], [ %1523, %1511 ], [ %1484, %1469 ]
  %1558 = phi float [ %1454, %1450 ], [ %1454, %1526 ], [ %1454, %1524 ], [ %1454, %1511 ], [ %1494, %1469 ]
  %1559 = phi float [ %1455, %1450 ], [ %1455, %1526 ], [ %1455, %1524 ], [ %1455, %1511 ], [ %1495, %1469 ]
  %1560 = phi float [ %1456, %1450 ], [ %1456, %1526 ], [ %1456, %1524 ], [ %1456, %1511 ], [ %1496, %1469 ]
  %1561 = phi float [ %1457, %1450 ], [ %1457, %1526 ], [ %1457, %1524 ], [ %1457, %1511 ], [ %1503, %1469 ]
  %1562 = phi float [ %1458, %1450 ], [ %1458, %1526 ], [ %1458, %1524 ], [ %1458, %1511 ], [ %1504, %1469 ]
  %1563 = phi float [ %1459, %1450 ], [ %1459, %1526 ], [ %1459, %1524 ], [ %1459, %1511 ], [ %1505, %1469 ]
  %1564 = phi float [ %767, %1450 ], [ %767, %1526 ], [ %767, %1524 ], [ %767, %1511 ], [ %1487, %1469 ]
  %1565 = phi float [ %771, %1450 ], [ %771, %1526 ], [ %771, %1524 ], [ %771, %1511 ], [ %1508, %1469 ]
  %1566 = and i32 %1461, 12
  %1567 = icmp eq i32 %1566, 12
  br i1 %1567, label %1640, label %1568

; <label>:1568                                    ; preds = %1554
  %1569 = and i32 %1461, 2097184
  %1570 = icmp eq i32 %1569, 2097184
  %1571 = select i1 %1570, float %1057, float 0.000000e+00
  %1572 = and i32 %1461, 4194336
  %1573 = icmp eq i32 %1572, 4194336
  %1574 = select i1 %1573, float %1057, float 0.000000e+00
  %1575 = and i32 %1461, 8388640
  %1576 = icmp eq i32 %1575, 8388640
  %1577 = select i1 %1576, float %1057, float 0.000000e+00
  %1578 = icmp eq i32 %1566, 0
  br i1 %1578, label %1579, label %1592

; <label>:1579                                    ; preds = %1568
  %1580 = fsub fast float %1358, %756
  %1581 = fsub fast float %1359, %757
  %1582 = fmul fast float %1571, %1580
  %1583 = fmul fast float %1571, %1581
  %1584 = fadd fast float %1582, %756
  %1585 = fadd fast float %1583, %757
  %1586 = fsub fast float %1360, %770
  %1587 = fmul fast float %1574, %1586
  %1588 = fadd fast float %1587, %770
  %1589 = fsub fast float %1357, %769
  %1590 = fmul fast float %1577, %1589
  %1591 = fadd fast float %1590, %769
  br label %1640

; <label>:1592                                    ; preds = %1568
  %1593 = icmp eq i32 %1566, 4
  br i1 %1593, label %1594, label %1626

; <label>:1594                                    ; preds = %1592
  %1595 = fmul fast float %1571, %1358
  %1596 = fmul fast float %1571, %1359
  %1597 = fadd fast float %1595, %756
  %1598 = fadd fast float %1596, %757
  %1599 = call float @dx.op.binary.f32(i32 36, float %770, float %1360)  ; FMin(a,b)
  %1600 = fsub fast float %1599, %770
  %1601 = fmul fast float %1600, %1574
  %1602 = fadd fast float %1601, %770
  %1603 = fadd fast float %1357, %769
  %1604 = fmul fast float %1603, 0x3FF337FAE0000000
  %1605 = fmul fast float %769, %769
  %1606 = fmul fast float %1357, %1357
  %1607 = fadd fast float %1606, %1605
  %1608 = fmul fast float %1607, 0x3FE5152B00000000
  %1609 = fmul fast float %769, 0xBFCC1F85E0000000
  %1610 = fmul fast float %1609, %1357
  %1611 = fadd fast float %1610, 0xBFE1363700000000
  %1612 = fadd fast float %1611, %1604
  %1613 = fsub fast float %1612, %1608
  %1614 = fmul fast float %1603, 0x3FBA6F0D00000000
  %1615 = fmul fast float %1607, 0x3FD0432880000000
  %1616 = fmul fast float %769, 0xBFEF110800000000
  %1617 = fmul fast float %1616, %1357
  %1618 = fadd fast float %1617, 1.000000e+00
  %1619 = fsub fast float %1618, %1614
  %1620 = fadd fast float %1619, %1615
  %1621 = fdiv fast float %1613, %1620
  %1622 = call float @dx.op.unary.f32(i32 7, float %1621)  ; Saturate(value)
  %1623 = fsub fast float %1622, %769
  %1624 = fmul fast float %1623, %1577
  %1625 = fadd fast float %1624, %769
  br label %1640

; <label>:1626                                    ; preds = %1592
  %1627 = icmp eq i32 %1566, 8
  br i1 %1627, label %1628, label %1640

; <label>:1628                                    ; preds = %1626
  %1629 = fmul fast float %1571, %1358
  %1630 = fmul fast float %1571, %1359
  %1631 = fadd fast float %1629, %756
  %1632 = fadd fast float %1630, %757
  %1633 = call float @dx.op.binary.f32(i32 36, float %770, float %1360)  ; FMin(a,b)
  %1634 = fsub fast float %1633, %770
  %1635 = fmul fast float %1634, %1574
  %1636 = fadd fast float %1635, %770
  %1637 = fsub fast float %1357, %769
  %1638 = fmul fast float %1577, %1637
  %1639 = fadd fast float %1638, %769
  br label %1640

; <label>:1640                                    ; preds = %1628, %1626, %1594, %1579, %1554, %1056, %755
  %1641 = phi float [ %756, %1554 ], [ %756, %1056 ], [ %756, %755 ], [ %1584, %1579 ], [ %1597, %1594 ], [ %756, %1626 ], [ %1631, %1628 ]
  %1642 = phi float [ %757, %1554 ], [ %757, %1056 ], [ %757, %755 ], [ %1585, %1579 ], [ %1598, %1594 ], [ %757, %1626 ], [ %1632, %1628 ]
  %1643 = phi float [ %1555, %1554 ], [ %758, %1056 ], [ %758, %755 ], [ %1555, %1579 ], [ %1555, %1594 ], [ %1555, %1626 ], [ %1555, %1628 ]
  %1644 = phi float [ %1556, %1554 ], [ %759, %1056 ], [ %759, %755 ], [ %1556, %1579 ], [ %1556, %1594 ], [ %1556, %1626 ], [ %1556, %1628 ]
  %1645 = phi float [ %1557, %1554 ], [ %760, %1056 ], [ %760, %755 ], [ %1557, %1579 ], [ %1557, %1594 ], [ %1557, %1626 ], [ %1557, %1628 ]
  %1646 = phi float [ %1558, %1554 ], [ %761, %1056 ], [ %761, %755 ], [ %1558, %1579 ], [ %1558, %1594 ], [ %1558, %1626 ], [ %1558, %1628 ]
  %1647 = phi float [ %1559, %1554 ], [ %762, %1056 ], [ %762, %755 ], [ %1559, %1579 ], [ %1559, %1594 ], [ %1559, %1626 ], [ %1559, %1628 ]
  %1648 = phi float [ %1560, %1554 ], [ %763, %1056 ], [ %763, %755 ], [ %1560, %1579 ], [ %1560, %1594 ], [ %1560, %1626 ], [ %1560, %1628 ]
  %1649 = phi float [ %1561, %1554 ], [ %764, %1056 ], [ %764, %755 ], [ %1561, %1579 ], [ %1561, %1594 ], [ %1561, %1626 ], [ %1561, %1628 ]
  %1650 = phi float [ %1562, %1554 ], [ %765, %1056 ], [ %765, %755 ], [ %1562, %1579 ], [ %1562, %1594 ], [ %1562, %1626 ], [ %1562, %1628 ]
  %1651 = phi float [ %1563, %1554 ], [ %766, %1056 ], [ %766, %755 ], [ %1563, %1579 ], [ %1563, %1594 ], [ %1563, %1626 ], [ %1563, %1628 ]
  %1652 = phi float [ %1564, %1554 ], [ %767, %1056 ], [ %767, %755 ], [ %1564, %1579 ], [ %1564, %1594 ], [ %1564, %1626 ], [ %1564, %1628 ]
  %1653 = phi float [ %769, %1554 ], [ %769, %1056 ], [ %769, %755 ], [ %1591, %1579 ], [ %1625, %1594 ], [ %769, %1626 ], [ %1639, %1628 ]
  %1654 = phi float [ %770, %1554 ], [ %770, %1056 ], [ %770, %755 ], [ %1588, %1579 ], [ %1602, %1594 ], [ %770, %1626 ], [ %1636, %1628 ]
  %1655 = phi float [ %1565, %1554 ], [ %771, %1056 ], [ %771, %755 ], [ %1565, %1579 ], [ %1565, %1594 ], [ %1565, %1626 ], [ %1565, %1628 ]
  %1656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.f32 %1656, 0
  %1658 = call float @dx.op.dot2.f32(i32 54, float %1641, float %1642, float %1641, float %1642)  ; Dot2(ax,ay,bx,by)
  %1659 = fmul fast float %1658, 0x3FE3333340000000
  %1660 = fsub fast float 1.000000e+00, %1659
  %1661 = call float @dx.op.dot3.f32(i32 55, float %1641, float %1642, float %1660, float %1641, float %1642, float %1660)  ; Dot3(ax,ay,az,bx,by,bz)
  %1662 = call float @dx.op.unary.f32(i32 25, float %1661)  ; Rsqrt(value)
  %1663 = fmul fast float %1662, %1641
  %1664 = fmul fast float %1662, %1642
  %1665 = fmul fast float %1660, %1662
  %1666 = fmul fast float %1665, %53
  %1667 = fmul fast float %1665, %54
  %1668 = fmul fast float %1665, %55
  %1669 = fmul fast float %1663, %49
  %1670 = fmul fast float %1663, %50
  %1671 = fmul fast float %1663, %51
  %1672 = fadd fast float %1666, %1669
  %1673 = fadd fast float %1667, %1670
  %1674 = fadd fast float %1668, %1671
  %1675 = fmul fast float %1664, %81
  %1676 = fmul fast float %1664, %82
  %1677 = fmul fast float %1664, %83
  %1678 = fadd fast float %1672, %1675
  %1679 = fadd fast float %1673, %1676
  %1680 = fadd fast float %1674, %1677
  %1681 = call float @dx.op.dot3.f32(i32 55, float %1678, float %1679, float %1680, float %1678, float %1679, float %1680)  ; Dot3(ax,ay,az,bx,by,bz)
  %1682 = call float @dx.op.unary.f32(i32 25, float %1681)  ; Rsqrt(value)
  %1683 = fmul fast float %1678, %1682
  %1684 = fmul fast float %1679, %1682
  %1685 = fmul fast float %1680, %1682
  %1686 = call float @dx.op.unary.f32(i32 83, float %117)  ; DerivCoarseX(value)
  %1687 = call float @dx.op.unary.f32(i32 83, float %118)  ; DerivCoarseX(value)
  %1688 = call float @dx.op.unary.f32(i32 83, float %119)  ; DerivCoarseX(value)
  %1689 = call float @dx.op.unary.f32(i32 84, float %117)  ; DerivCoarseY(value)
  %1690 = call float @dx.op.unary.f32(i32 84, float %118)  ; DerivCoarseY(value)
  %1691 = call float @dx.op.unary.f32(i32 84, float %119)  ; DerivCoarseY(value)
  %1692 = fadd fast float %1686, %117
  %1693 = fadd fast float %1687, %118
  %1694 = fadd fast float %1688, %119
  %1695 = fadd fast float %1689, %117
  %1696 = fadd fast float %1690, %118
  %1697 = fadd fast float %1691, %119
  %1698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1699 = extractvalue %dx.types.CBufRet.f32 %1698, 0
  %1700 = extractvalue %dx.types.CBufRet.f32 %1698, 1
  %1701 = extractvalue %dx.types.CBufRet.f32 %1698, 2
  %1702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1703 = extractvalue %dx.types.CBufRet.f32 %1702, 2
  %1704 = extractvalue %dx.types.CBufRet.f32 %1702, 3
  %1705 = fmul fast float %1699, %70
  %1706 = fmul fast float %1705, %1703
  %1707 = fmul fast float %1700, %71
  %1708 = fmul fast float %1707, %1704
  %1709 = fptoui float %1706 to i32
  %1710 = fptoui float %1708 to i32
  %1711 = fadd fast float %1699, -1.000000e+00
  %1712 = fadd fast float %1700, -1.000000e+00
  %1713 = fptoui float %1711 to i32
  %1714 = fptoui float %1712 to i32
  %1715 = call i32 @dx.op.binary.i32(i32 40, i32 %1709, i32 %1713)  ; UMin(a,b)
  %1716 = call i32 @dx.op.binary.i32(i32 40, i32 %1710, i32 %1714)  ; UMin(a,b)
  %1717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1718 = extractvalue %dx.types.CBufRet.f32 %1717, 2
  %1719 = extractvalue %dx.types.CBufRet.f32 %1717, 3
  %1720 = fmul fast float %1718, %65
  %1721 = fsub fast float %1720, %1719
  %1722 = fadd fast float %1701, -1.000000e+00
  %1723 = call float @dx.op.binary.f32(i32 36, float %1721, float %1722)  ; FMin(a,b)
  %1724 = fptoui float %1723 to i32
  %1725 = fptoui float %1699 to i32
  %1726 = fptoui float %1700 to i32
  %1727 = mul i32 %1724, %1726
  %1728 = add i32 %1727, %1716
  %1729 = mul i32 %1728, %1725
  %1730 = add i32 %1729, %1715
  %1731 = shl i32 %1730, 2
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = and i32 %1733, 1023
  %1735 = lshr i32 %1733, 10
  %1736 = icmp eq i32 %1734, 0
  br i1 %1736, label %2162, label %1737

; <label>:1737                                    ; preds = %1640
  %1738 = and i32 %1733, 1023
  br label %1739

; <label>:1739                                    ; preds = %1865, %1737
  %1740 = phi float [ %1866, %1865 ], [ 0.000000e+00, %1737 ]
  %1741 = phi float [ %1867, %1865 ], [ %1657, %1737 ]
  %1742 = phi float [ %1868, %1865 ], [ %1655, %1737 ]
  %1743 = phi float [ %1869, %1865 ], [ 0.000000e+00, %1737 ]
  %1744 = phi float [ %1870, %1865 ], [ 0.000000e+00, %1737 ]
  %1745 = phi float [ %1871, %1865 ], [ %1646, %1737 ]
  %1746 = phi float [ %1872, %1865 ], [ %1647, %1737 ]
  %1747 = phi float [ %1873, %1865 ], [ %1648, %1737 ]
  %1748 = phi float [ %1874, %1865 ], [ %1683, %1737 ]
  %1749 = phi float [ %1875, %1865 ], [ %1684, %1737 ]
  %1750 = phi float [ %1876, %1865 ], [ %1685, %1737 ]
  %1751 = phi float [ %1877, %1865 ], [ %1654, %1737 ]
  %1752 = phi float [ %1878, %1865 ], [ %1653, %1737 ]
  %1753 = phi float [ %1879, %1865 ], [ 0.000000e+00, %1737 ]
  %1754 = phi float [ %1880, %1865 ], [ %1652, %1737 ]
  %1755 = phi float [ %1881, %1865 ], [ %1643, %1737 ]
  %1756 = phi float [ %1882, %1865 ], [ %1644, %1737 ]
  %1757 = phi float [ %1883, %1865 ], [ %1645, %1737 ]
  %1758 = phi i32 [ %1815, %1865 ], [ 0, %1737 ]
  %1759 = add nuw nsw i32 %1758, %1735
  %1760 = shl i32 %1759, 2
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = shl i32 %1762, 8
  %1764 = or i32 %1763, 48
  %1765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.f32 %1765, 0
  %1767 = extractvalue %dx.types.ResRet.f32 %1765, 1
  %1768 = extractvalue %dx.types.ResRet.f32 %1765, 2
  %1769 = extractvalue %dx.types.ResRet.f32 %1765, 3
  %1770 = or i32 %1763, 64
  %1771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %1772 = extractvalue %dx.types.ResRet.i32 %1771, 0
  %1773 = extractvalue %dx.types.ResRet.i32 %1771, 1
  %1774 = or i32 %1763, 80
  %1775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.f32 %1775, 2
  %1777 = extractvalue %dx.types.ResRet.f32 %1775, 3
  %1778 = or i32 %1763, 96
  %1779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1778, i32 undef)  ; BufferLoad(srv,index,wot)
  %1780 = extractvalue %dx.types.ResRet.f32 %1779, 0
  %1781 = extractvalue %dx.types.ResRet.f32 %1779, 1
  %1782 = extractvalue %dx.types.ResRet.f32 %1779, 2
  %1783 = extractvalue %dx.types.ResRet.f32 %1779, 3
  %1784 = or i32 %1763, 112
  %1785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1784, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.f32 %1785, 2
  %1787 = or i32 %1763, 128
  %1788 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.f32 %1788, 0
  %1790 = extractvalue %dx.types.ResRet.f32 %1788, 1
  %1791 = extractvalue %dx.types.ResRet.f32 %1788, 2
  %1792 = extractvalue %dx.types.ResRet.f32 %1788, 3
  %1793 = or i32 %1763, 144
  %1794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.f32 %1794, 0
  %1796 = extractvalue %dx.types.ResRet.f32 %1794, 1
  %1797 = extractvalue %dx.types.ResRet.f32 %1794, 2
  %1798 = extractvalue %dx.types.ResRet.f32 %1794, 3
  %1799 = or i32 %1763, 160
  %1800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.f32 %1800, 0
  %1802 = extractvalue %dx.types.ResRet.f32 %1800, 1
  %1803 = extractvalue %dx.types.ResRet.f32 %1800, 2
  %1804 = extractvalue %dx.types.ResRet.f32 %1800, 3
  %1805 = or i32 %1763, 192
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = or i32 %1763, 208
  %1809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.f32 %1809, 0
  %1811 = or i32 %1763, 248
  %1812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.f32 %1812, 0
  %1814 = extractvalue %dx.types.ResRet.f32 %1812, 1
  %1815 = add nuw nsw i32 %1758, 1
  %1816 = bitcast float %1769 to i32
  %1817 = and i32 %1816, 2560
  %1818 = icmp eq i32 %1817, 0
  %1819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.f32 %1819, 0
  %1821 = extractvalue %dx.types.ResRet.f32 %1819, 1
  %1822 = extractvalue %dx.types.ResRet.f32 %1819, 2
  %1823 = extractvalue %dx.types.ResRet.f32 %1819, 3
  %1824 = call float @dx.op.dot4.f32(i32 56, float %1820, float %1821, float %1822, float %1823, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1825 = or i32 %1763, 16
  %1826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.f32 %1826, 0
  %1828 = extractvalue %dx.types.ResRet.f32 %1826, 1
  %1829 = extractvalue %dx.types.ResRet.f32 %1826, 2
  %1830 = extractvalue %dx.types.ResRet.f32 %1826, 3
  %1831 = call float @dx.op.dot4.f32(i32 56, float %1827, float %1828, float %1829, float %1830, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1832 = or i32 %1763, 32
  %1833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.f32 %1833, 0
  %1835 = extractvalue %dx.types.ResRet.f32 %1833, 1
  %1836 = extractvalue %dx.types.ResRet.f32 %1833, 2
  %1837 = extractvalue %dx.types.ResRet.f32 %1833, 3
  %1838 = call float @dx.op.dot4.f32(i32 56, float %1834, float %1835, float %1836, float %1837, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1839 = call float @dx.op.unary.f32(i32 27, float %1824)  ; Round_ni(value)
  %1840 = call float @dx.op.unary.f32(i32 6, float %1839)  ; FAbs(value)
  %1841 = call float @dx.op.unary.f32(i32 27, float %1831)  ; Round_ni(value)
  %1842 = call float @dx.op.unary.f32(i32 6, float %1841)  ; FAbs(value)
  %1843 = call float @dx.op.unary.f32(i32 6, float %1838)  ; FAbs(value)
  %1844 = call float @dx.op.unary.f32(i32 27, float %1843)  ; Round_ni(value)
  %1845 = fadd fast float %1842, %1840
  %1846 = fadd fast float %1845, %1844
  %1847 = fcmp fast oeq float %1846, 0.000000e+00
  %1848 = call float @dx.op.dot4.f32(i32 56, float %1820, float %1821, float %1822, float %1823, float %1692, float %1693, float %1694, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1849 = call float @dx.op.dot4.f32(i32 56, float %1827, float %1828, float %1829, float %1830, float %1692, float %1693, float %1694, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1850 = call float @dx.op.dot4.f32(i32 56, float %1820, float %1821, float %1822, float %1823, float %1695, float %1696, float %1697, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1851 = call float @dx.op.dot4.f32(i32 56, float %1827, float %1828, float %1829, float %1830, float %1695, float %1696, float %1697, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1852 = fsub fast float %1848, %1824
  %1853 = fsub fast float %1850, %1824
  %1854 = fsub fast float %1849, %1831
  %1855 = fsub fast float %1851, %1831
  %1856 = call float @dx.op.dot3.f32(i32 55, float %1766, float %1767, float %1768, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %1857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1858 = extractvalue %dx.types.CBufRet.f32 %1857, 2
  %1859 = fadd fast float %1858, %1856
  %1860 = call float @dx.op.unary.f32(i32 7, float %1859)  ; Saturate(value)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1857, 0
  %1862 = fcmp fast ogt float %1860, %1861
  %1863 = and i1 %1847, %1862
  %1864 = and i1 %1818, %1863
  br i1 %1864, label %1885, label %1865

; <label>:1865                                    ; preds = %2148, %1966, %1885, %1739
  %1866 = phi float [ %1740, %1885 ], [ %1969, %1966 ], [ %1969, %2148 ], [ %1740, %1739 ]
  %1867 = phi float [ %1741, %1885 ], [ %1741, %1966 ], [ %2123, %2148 ], [ %1741, %1739 ]
  %1868 = phi float [ %1742, %1885 ], [ %1742, %1966 ], [ %2121, %2148 ], [ %1742, %1739 ]
  %1869 = phi float [ %1743, %1885 ], [ %1743, %1966 ], [ %2093, %2148 ], [ %1743, %1739 ]
  %1870 = phi float [ %1744, %1885 ], [ %1744, %1966 ], [ %2091, %2148 ], [ %1744, %1739 ]
  %1871 = phi float [ %1745, %1885 ], [ %1745, %1966 ], [ %2158, %2148 ], [ %1745, %1739 ]
  %1872 = phi float [ %1746, %1885 ], [ %1746, %1966 ], [ %2159, %2148 ], [ %1746, %1739 ]
  %1873 = phi float [ %1747, %1885 ], [ %1747, %1966 ], [ %2160, %2148 ], [ %1747, %1739 ]
  %1874 = phi float [ %1748, %1885 ], [ %1748, %1966 ], [ %2072, %2148 ], [ %1748, %1739 ]
  %1875 = phi float [ %1749, %1885 ], [ %1749, %1966 ], [ %2073, %2148 ], [ %1749, %1739 ]
  %1876 = phi float [ %1750, %1885 ], [ %1750, %1966 ], [ %2074, %2148 ], [ %1750, %1739 ]
  %1877 = phi float [ %1751, %1885 ], [ %1751, %1966 ], [ %2101, %2148 ], [ %1751, %1739 ]
  %1878 = phi float [ %1752, %1885 ], [ %1752, %1966 ], [ %2098, %2148 ], [ %1752, %1739 ]
  %1879 = phi float [ %1753, %1885 ], [ %1753, %1966 ], [ %2095, %2148 ], [ %1753, %1739 ]
  %1880 = phi float [ %1754, %1885 ], [ %1754, %1966 ], [ %2089, %2148 ], [ %1754, %1739 ]
  %1881 = phi float [ %1755, %1885 ], [ %1755, %1966 ], [ %2084, %2148 ], [ %1755, %1739 ]
  %1882 = phi float [ %1756, %1885 ], [ %1756, %1966 ], [ %2085, %2148 ], [ %1756, %1739 ]
  %1883 = phi float [ %1757, %1885 ], [ %1757, %1966 ], [ %2086, %2148 ], [ %1757, %1739 ]
  %1884 = icmp eq i32 %1815, %1738
  br i1 %1884, label %2161, label %1739

; <label>:1885                                    ; preds = %1739
  %1886 = extractvalue %dx.types.ResRet.f32 %1785, 3
  %1887 = extractvalue %dx.types.ResRet.f32 %1785, 1
  %1888 = extractvalue %dx.types.ResRet.f32 %1785, 0
  %1889 = extractvalue %dx.types.ResRet.f32 %1775, 1
  %1890 = extractvalue %dx.types.ResRet.f32 %1775, 0
  %1891 = extractvalue %dx.types.ResRet.i32 %1771, 3
  %1892 = extractvalue %dx.types.ResRet.i32 %1771, 2
  %1893 = add i32 %1891, 0
  %1894 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1893, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1896 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1894, %dx.types.Handle %1895, float %1824, float %1831, float undef, float undef, i32 0, i32 0, i32 undef, float %1852, float %1854, float undef, float %1853, float %1855, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1897 = extractvalue %dx.types.ResRet.f32 %1896, 0
  %1898 = fmul fast float %1897, %1890
  %1899 = fadd fast float %1898, %1889
  %1900 = call float @dx.op.unary.f32(i32 7, float %1899)  ; Saturate(value)
  %1901 = fmul fast float %1824, %1780
  %1902 = call float @dx.op.tertiary.f32(i32 46, float %1781, float %1831, float %1901)  ; FMad(a,b,c)
  %1903 = fadd fast float %1902, %1888
  %1904 = fmul fast float %1824, %1782
  %1905 = call float @dx.op.tertiary.f32(i32 46, float %1783, float %1831, float %1904)  ; FMad(a,b,c)
  %1906 = fadd fast float %1905, %1887
  %1907 = fmul fast float %1852, %1780
  %1908 = call float @dx.op.tertiary.f32(i32 46, float %1781, float %1854, float %1907)  ; FMad(a,b,c)
  %1909 = fmul fast float %1852, %1782
  %1910 = call float @dx.op.tertiary.f32(i32 46, float %1783, float %1854, float %1909)  ; FMad(a,b,c)
  %1911 = fmul fast float %1853, %1780
  %1912 = call float @dx.op.tertiary.f32(i32 46, float %1781, float %1855, float %1911)  ; FMad(a,b,c)
  %1913 = fmul fast float %1853, %1782
  %1914 = call float @dx.op.tertiary.f32(i32 46, float %1783, float %1855, float %1913)  ; FMad(a,b,c)
  %1915 = add i32 %1892, 0
  %1916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1915, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1917 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1916, %dx.types.Handle %1895, float %1903, float %1906, float undef, float undef, i32 0, i32 0, i32 undef, float %1908, float %1910, float undef, float %1912, float %1914, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1918 = extractvalue %dx.types.ResRet.f32 %1917, 0
  %1919 = and i32 %1816, 1024
  %1920 = icmp ne i32 %1919, 0
  %1921 = fcmp fast ogt float %1918, 0x3FE0101020000000
  %1922 = uitofp i1 %1921 to float
  %1923 = select i1 %1920, float %1922, float %1918
  %1924 = and i32 %1816, 8192
  %1925 = icmp ne i32 %1924, 0
  %1926 = select i1 %1925, float %1886, float 1.000000e+00
  %1927 = fmul fast float %1824, 2.000000e+00
  %1928 = fadd fast float %1927, -1.000000e+00
  %1929 = call float @dx.op.unary.f32(i32 6, float %1928)  ; FAbs(value)
  %1930 = fmul fast float %1929, %1813
  %1931 = fsub fast float %1930, %1813
  %1932 = call float @dx.op.unary.f32(i32 7, float %1931)  ; Saturate(value)
  %1933 = fmul fast float %1831, 2.000000e+00
  %1934 = fadd fast float %1933, -1.000000e+00
  %1935 = call float @dx.op.unary.f32(i32 6, float %1934)  ; FAbs(value)
  %1936 = fmul fast float %1935, %1814
  %1937 = fsub fast float %1936, %1814
  %1938 = call float @dx.op.unary.f32(i32 7, float %1937)  ; Saturate(value)
  %1939 = fmul fast float %1843, %1776
  %1940 = fsub fast float %1939, %1776
  %1941 = call float @dx.op.unary.f32(i32 7, float %1940)  ; Saturate(value)
  %1942 = fmul fast float %1900, %1926
  %1943 = fmul fast float %1942, %1897
  %1944 = fmul fast float %1943, %1932
  %1945 = fmul fast float %1944, %1923
  %1946 = fmul fast float %1945, %1938
  %1947 = fmul fast float %1946, %1941
  %1948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1949 = extractvalue %dx.types.CBufRet.f32 %1948, 1
  %1950 = extractvalue %dx.types.CBufRet.f32 %1948, 0
  %1951 = fsub fast float %1860, %1950
  %1952 = fmul fast float %1951, %1949
  %1953 = call float @dx.op.unary.f32(i32 7, float %1952)  ; Saturate(value)
  %1954 = fmul fast float %1947, %1777
  %1955 = fadd fast float %1947, %1777
  %1956 = fmul fast float %1955, %1786
  %1957 = fsub fast float %1956, %1786
  %1958 = call float @dx.op.unary.f32(i32 7, float %1957)  ; Saturate(value)
  %1959 = and i32 %1816, 128
  %1960 = icmp ne i32 %1959, 0
  %1961 = select i1 %1960, float %1958, float %1954
  %1962 = fmul fast float %1961, %1953
  %1963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1964 = extractvalue %dx.types.CBufRet.f32 %1963, 0
  %1965 = fcmp fast ugt float %1962, %1964
  br i1 %1965, label %1966, label %1865

; <label>:1966                                    ; preds = %1885
  %1967 = select i1 %1925, float %1962, float 0.000000e+00
  %1968 = fadd fast float %1967, %1740
  %1969 = call float @dx.op.unary.f32(i32 7, float %1968)  ; Saturate(value)
  br i1 %1925, label %1865, label %1970

; <label>:1970                                    ; preds = %1966
  %1971 = and i32 %1816, 4
  %1972 = and i32 %1816, 8
  %1973 = add i32 %1772, 0
  %1974 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1973, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1976 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1974, %dx.types.Handle %1975, float %1903, float %1906, float undef, float undef, i32 0, i32 0, i32 undef, float %1908, float %1910, float undef, float %1912, float %1914, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1977 = extractvalue %dx.types.ResRet.f32 %1976, 0
  %1978 = extractvalue %dx.types.ResRet.f32 %1976, 1
  %1979 = extractvalue %dx.types.ResRet.f32 %1976, 2
  %1980 = extractvalue %dx.types.ResRet.f32 %1976, 3
  %1981 = bitcast float %1798 to i32
  %1982 = and i32 %1981, 255
  %1983 = uitofp i32 %1982 to float
  %1984 = lshr i32 %1981, 8
  %1985 = and i32 %1984, 255
  %1986 = uitofp i32 %1985 to float
  %1987 = fmul fast float %1980, %1983
  %1988 = fadd fast float %1987, %1986
  %1989 = fmul fast float %1988, 0x3F70101000000000
  %1990 = add i32 %1773, 0
  %1991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1990, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1992 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1991, %dx.types.Handle %1975, float %1903, float %1906, float undef, float undef, i32 0, i32 0, i32 undef, float %1908, float %1910, float undef, float %1912, float %1914, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1993 = extractvalue %dx.types.ResRet.f32 %1992, 0
  %1994 = extractvalue %dx.types.ResRet.f32 %1992, 1
  %1995 = extractvalue %dx.types.ResRet.f32 %1992, 2
  %1996 = extractvalue %dx.types.ResRet.f32 %1992, 3
  %1997 = bitcast float %1792 to i32
  %1998 = and i32 %1997, 255
  %1999 = uitofp i32 %1998 to float
  %2000 = lshr i32 %1997, 8
  %2001 = and i32 %2000, 255
  %2002 = uitofp i32 %2001 to float
  %2003 = lshr i32 %1997, 16
  %2004 = and i32 %2003, 255
  %2005 = uitofp i32 %2004 to float
  %2006 = fmul fast float %2005, 0x3F70101000000000
  %2007 = fmul fast float %1993, %1999
  %2008 = fadd fast float %2007, %2002
  %2009 = fmul fast float %2008, 0x3F70101000000000
  %2010 = fadd fast float %1994, -5.000000e-01
  %2011 = fadd fast float %1996, -5.000000e-01
  %2012 = fmul fast float %2010, %2006
  %2013 = fmul fast float %2011, %2006
  %2014 = fadd fast float %2012, 5.000000e-01
  %2015 = fadd fast float %2013, 5.000000e-01
  %2016 = fmul fast float %1977, %1801
  %2017 = fmul fast float %1978, %1802
  %2018 = fmul fast float %1979, %1803
  %2019 = fmul fast float %2014, 2.000000e+00
  %2020 = fadd fast float %2019, -1.000000e+00
  %2021 = fmul fast float %2015, 2.000000e+00
  %2022 = fadd fast float %2021, -1.000000e+00
  %2023 = fadd fast float %2020, %2022
  %2024 = fmul fast float %2023, 5.000000e-01
  %2025 = fsub fast float %2020, %2022
  %2026 = fmul fast float %2025, 5.000000e-01
  %2027 = call float @dx.op.unary.f32(i32 6, float %2024)  ; FAbs(value)
  %2028 = fsub fast float 1.000000e+00, %2027
  %2029 = call float @dx.op.unary.f32(i32 6, float %2026)  ; FAbs(value)
  %2030 = fsub fast float %2028, %2029
  %2031 = call float @dx.op.dot3.f32(i32 55, float %2024, float %2026, float %2030, float %2024, float %2026, float %2030)  ; Dot3(ax,ay,az,bx,by,bz)
  %2032 = call float @dx.op.unary.f32(i32 25, float %2031)  ; Rsqrt(value)
  %2033 = fmul fast float %2024, %2032
  %2034 = fmul fast float %2026, %2032
  %2035 = fmul fast float %2032, %2030
  %2036 = fmul fast float %2035, %1766
  %2037 = fmul fast float %2035, %1767
  %2038 = fmul fast float %2035, %1768
  %2039 = fmul fast float %2033, %1789
  %2040 = fmul fast float %2033, %1790
  %2041 = fmul fast float %2033, %1791
  %2042 = fadd fast float %2039, %2036
  %2043 = fadd fast float %2040, %2037
  %2044 = fadd fast float %2041, %2038
  %2045 = fmul fast float %2034, %1795
  %2046 = fmul fast float %2034, %1796
  %2047 = fmul fast float %2034, %1797
  %2048 = fadd fast float %2042, %2045
  %2049 = fadd fast float %2043, %2046
  %2050 = fadd fast float %2044, %2047
  %2051 = call float @dx.op.dot3.f32(i32 55, float %2048, float %2049, float %2050, float %2048, float %2049, float %2050)  ; Dot3(ax,ay,az,bx,by,bz)
  %2052 = call float @dx.op.unary.f32(i32 25, float %2051)  ; Rsqrt(value)
  %2053 = fmul fast float %2048, %2052
  %2054 = fmul fast float %2049, %2052
  %2055 = fmul fast float %2050, %2052
  %2056 = icmp ne i32 %1972, 0
  %2057 = select i1 %2056, float 1.000000e+00, float 0.000000e+00
  %2058 = fmul fast float %1962, %2057
  %2059 = and i32 %1816, 1
  %2060 = icmp eq i32 %2059, 0
  br i1 %2060, label %2061, label %2065

; <label>:2061                                    ; preds = %1970
  %2062 = fsub fast float %2053, %1748
  %2063 = fsub fast float %2054, %1749
  %2064 = fsub fast float %2055, %1750
  br label %2065

; <label>:2065                                    ; preds = %2061, %1970
  %2066 = phi float [ %2062, %2061 ], [ %2053, %1970 ]
  %2067 = phi float [ %2063, %2061 ], [ %2054, %1970 ]
  %2068 = phi float [ %2064, %2061 ], [ %2055, %1970 ]
  %2069 = fmul float %2068, %2058
  %2070 = fmul float %2067, %2058
  %2071 = fmul float %2066, %2058
  %2072 = fadd fast float %2071, %1748
  %2073 = fadd fast float %2070, %1749
  %2074 = fadd fast float %2069, %1750
  %2075 = icmp ne i32 %1971, 0
  %2076 = select i1 %2075, float 1.000000e+00, float 0.000000e+00
  %2077 = fmul fast float %1962, %2076
  %2078 = fsub fast float %2016, %1755
  %2079 = fsub fast float %2017, %1756
  %2080 = fsub fast float %2018, %1757
  %2081 = fmul fast float %2078, %2077
  %2082 = fmul fast float %2079, %2077
  %2083 = fmul fast float %2080, %2077
  %2084 = fadd fast float %2081, %1755
  %2085 = fadd fast float %2082, %1756
  %2086 = fadd fast float %2083, %1757
  %2087 = fsub fast float %1989, %1754
  %2088 = fmul fast float %2087, %2077
  %2089 = fadd fast float %2088, %1754
  %2090 = fmul fast float %2077, %1744
  %2091 = fsub fast float %1744, %2090
  %2092 = fmul fast float %2077, %1743
  %2093 = fsub fast float %1743, %2092
  %2094 = fadd fast float %1962, %1753
  %2095 = call float @dx.op.unary.f32(i32 7, float %2094)  ; Saturate(value)
  %2096 = fsub fast float %2009, %1752
  %2097 = fmul fast float %2096, %2058
  %2098 = fadd fast float %2097, %1752
  %2099 = fsub fast float %1995, %1751
  %2100 = fmul fast float %2099, %2058
  %2101 = fadd fast float %2100, %1751
  %2102 = call float @dx.op.dot3.f32(i32 55, float %2016, float %2017, float %2018, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2104 = extractvalue %dx.types.CBufRet.f32 %2103, 0
  %2105 = extractvalue %dx.types.CBufRet.f32 %2103, 1
  %2106 = fmul fast float %2105, %2102
  %2107 = fadd fast float %2106, %2104
  %2108 = call float @dx.op.unary.f32(i32 7, float %2107)  ; Saturate(value)
  %2109 = bitcast float %1804 to i32
  %2110 = and i32 %2109, 65535
  %2111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2110)  ; LegacyF16ToF32(value)
  %2112 = lshr i32 %2109, 16
  %2113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2112)  ; LegacyF16ToF32(value)
  %2114 = fcmp fast oge float %2111, 0.000000e+00
  %2115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2116 = extractvalue %dx.types.CBufRet.f32 %2115, 0
  %2117 = select i1 %2114, float %2111, float %2116
  %2118 = fadd fast float %2117, %2113
  %2119 = fsub fast float %2108, %1742
  %2120 = fmul fast float %2119, %1962
  %2121 = fadd fast float %2120, %1742
  %2122 = fmul fast float %2118, %1962
  %2123 = call float @dx.op.binary.f32(i32 35, float %1741, float %2122)  ; FMax(a,b)
  %2124 = and i32 %1816, 16
  %2125 = icmp eq i32 %2124, 0
  br i1 %2125, label %2148, label %2126

; <label>:2126                                    ; preds = %2065
  %2127 = bitcast float %1810 to i32
  %2128 = add i32 %1807, 0
  %2129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2128, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2130 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2129, %dx.types.Handle %1975, float %1903, float %1906, float undef, float undef, i32 0, i32 0, i32 undef, float %1908, float %1910, float undef, float %1912, float %1914, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2131 = extractvalue %dx.types.ResRet.f32 %2130, 0
  %2132 = extractvalue %dx.types.ResRet.f32 %2130, 1
  %2133 = extractvalue %dx.types.ResRet.f32 %2130, 2
  %2134 = and i32 %2127, 65535
  %2135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2134)  ; LegacyF16ToF32(value)
  %2136 = fmul fast float %2131, %1801
  %2137 = fmul fast float %2132, %1802
  %2138 = fmul fast float %2133, %1803
  %2139 = and i32 %1816, 16384
  %2140 = icmp ne i32 %2139, 0
  %2141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2142 = extractvalue %dx.types.CBufRet.f32 %2141, 0
  %2143 = select i1 %2140, float %2142, float 1.000000e+00
  %2144 = fmul fast float %2143, %2135
  %2145 = fmul fast float %2136, %2144
  %2146 = fmul fast float %2137, %2144
  %2147 = fmul fast float %2138, %2144
  br label %2148

; <label>:2148                                    ; preds = %2126, %2065
  %2149 = phi float [ %2145, %2126 ], [ 0.000000e+00, %2065 ]
  %2150 = phi float [ %2146, %2126 ], [ 0.000000e+00, %2065 ]
  %2151 = phi float [ %2147, %2126 ], [ 0.000000e+00, %2065 ]
  %2152 = fsub fast float %2149, %1745
  %2153 = fsub fast float %2150, %1746
  %2154 = fsub fast float %2151, %1747
  %2155 = fmul fast float %2152, %1962
  %2156 = fmul fast float %2153, %1962
  %2157 = fmul fast float %2154, %1962
  %2158 = fadd fast float %2155, %1745
  %2159 = fadd fast float %2156, %1746
  %2160 = fadd fast float %2157, %1747
  br label %1865

; <label>:2161                                    ; preds = %1865
  br label %2162

; <label>:2162                                    ; preds = %2161, %1640
  %2163 = phi float [ 0.000000e+00, %1640 ], [ %1866, %2161 ]
  %2164 = phi float [ %1657, %1640 ], [ %1867, %2161 ]
  %2165 = phi float [ %1655, %1640 ], [ %1868, %2161 ]
  %2166 = phi float [ 0.000000e+00, %1640 ], [ %1869, %2161 ]
  %2167 = phi float [ 0.000000e+00, %1640 ], [ %1870, %2161 ]
  %2168 = phi float [ %1646, %1640 ], [ %1871, %2161 ]
  %2169 = phi float [ %1647, %1640 ], [ %1872, %2161 ]
  %2170 = phi float [ %1648, %1640 ], [ %1873, %2161 ]
  %2171 = phi float [ %1683, %1640 ], [ %1874, %2161 ]
  %2172 = phi float [ %1684, %1640 ], [ %1875, %2161 ]
  %2173 = phi float [ %1685, %1640 ], [ %1876, %2161 ]
  %2174 = phi float [ %1654, %1640 ], [ %1877, %2161 ]
  %2175 = phi float [ %1653, %1640 ], [ %1878, %2161 ]
  %2176 = phi float [ 0.000000e+00, %1640 ], [ %1879, %2161 ]
  %2177 = phi float [ %1652, %1640 ], [ %1880, %2161 ]
  %2178 = phi float [ %1643, %1640 ], [ %1881, %2161 ]
  %2179 = phi float [ %1644, %1640 ], [ %1882, %2161 ]
  %2180 = phi float [ %1645, %1640 ], [ %1883, %2161 ]
  %2181 = call float @dx.op.dot3.f32(i32 55, float %2171, float %2172, float %2173, float %2171, float %2172, float %2173)  ; Dot3(ax,ay,az,bx,by,bz)
  %2182 = call float @dx.op.unary.f32(i32 25, float %2181)  ; Rsqrt(value)
  %2183 = fmul fast float %2182, %2171
  %2184 = fmul fast float %2182, %2172
  %2185 = fmul fast float %2182, %2173
  %2186 = fadd fast float %2176, %768
  %2187 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  %2188 = call float @dx.op.dot3.f32(i32 55, float %2183, float %2184, float %2185, float %2183, float %2184, float %2185)  ; Dot3(ax,ay,az,bx,by,bz)
  %2189 = call float @dx.op.unary.f32(i32 25, float %2188)  ; Rsqrt(value)
  %2190 = fmul fast float %2189, %2183
  %2191 = fmul fast float %2189, %2184
  %2192 = fmul fast float %2189, %2185
  %2193 = fadd fast float %2177, 0xBFB99999A0000000
  %2194 = call float @dx.op.unary.f32(i32 7, float %2193)  ; Saturate(value)
  %2195 = fmul fast float %2194, 0x3FF1C71C80000000
  %2196 = call float @dx.op.binary.f32(i32 36, float %2177, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2197 = fsub fast float 1.000000e+00, %2195
  %2198 = call float @dx.op.unary.f32(i32 7, float %2197)  ; Saturate(value)
  %2199 = fmul fast float %2198, %2178
  %2200 = fmul fast float %2198, %2179
  %2201 = fmul fast float %2198, %2180
  %2202 = call float @dx.op.unary.f32(i32 7, float %2199)  ; Saturate(value)
  %2203 = call float @dx.op.unary.f32(i32 7, float %2200)  ; Saturate(value)
  %2204 = call float @dx.op.unary.f32(i32 7, float %2201)  ; Saturate(value)
  %2205 = fmul fast float %2195, %2178
  %2206 = fmul fast float %2195, %2179
  %2207 = fmul fast float %2195, %2180
  %2208 = fadd fast float %2205, %2196
  %2209 = fadd fast float %2206, %2196
  %2210 = fadd fast float %2207, %2196
  %2211 = call float @dx.op.unary.f32(i32 7, float %2208)  ; Saturate(value)
  %2212 = call float @dx.op.unary.f32(i32 7, float %2209)  ; Saturate(value)
  %2213 = call float @dx.op.unary.f32(i32 7, float %2210)  ; Saturate(value)
  %2214 = call float @dx.op.unary.f32(i32 7, float %2175)  ; Saturate(value)
  %2215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2216 = extractvalue %dx.types.CBufRet.i32 %2215, 3
  %2217 = and i32 %2216, 8
  %2218 = icmp ne i32 %2217, 0
  %2219 = call float @dx.op.binary.f32(i32 35, float %2202, float %2178)  ; FMax(a,b)
  %2220 = call float @dx.op.binary.f32(i32 35, float %2203, float %2178)  ; FMax(a,b)
  %2221 = call float @dx.op.binary.f32(i32 35, float %2204, float %2178)  ; FMax(a,b)
  %2222 = call float @dx.op.dot3.f32(i32 55, float %2202, float %2203, float %2204, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2223 = select i1 %188, float %2178, float %2202
  %2224 = select i1 %188, float %2222, float %2203
  %2225 = select i1 %188, float 1.000000e+00, float %2204
  %2226 = select i1 %2218, float %2219, float %2223
  %2227 = select i1 %2218, float %2220, float %2224
  %2228 = select i1 %2218, float %2221, float %2225
  %2229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2230 = extractvalue %dx.types.CBufRet.f32 %2229, 0
  %2231 = extractvalue %dx.types.CBufRet.f32 %2229, 1
  %2232 = extractvalue %dx.types.CBufRet.f32 %2229, 2
  %2233 = fadd fast float %2230, %117
  %2234 = fadd fast float %2231, %118
  %2235 = fadd fast float %2232, %119
  %2236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2237 = extractvalue %dx.types.CBufRet.f32 %2236, 0
  %2238 = extractvalue %dx.types.CBufRet.f32 %2236, 1
  %2239 = fsub fast float %2233, %2237
  %2240 = fsub fast float %2234, %2238
  %2241 = fmul fast float %2239, %2239
  %2242 = fmul fast float %2240, %2240
  %2243 = fadd fast float %2241, %2242
  %2244 = call float @dx.op.unary.f32(i32 24, float %2243)  ; Sqrt(value)
  %2245 = extractvalue %dx.types.CBufRet.f32 %2236, 2
  %2246 = fcmp fast olt float %2244, %2245
  br i1 %2246, label %2247, label %2314

; <label>:2247                                    ; preds = %2162
  %2248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2249 = extractvalue %dx.types.CBufRet.f32 %2248, 0
  %2250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2251 = extractvalue %dx.types.CBufRet.f32 %2250, 0
  %2252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2253 = extractvalue %dx.types.CBufRet.f32 %2252, 0
  %2254 = extractvalue %dx.types.CBufRet.f32 %2248, 1
  %2255 = extractvalue %dx.types.CBufRet.f32 %2250, 1
  %2256 = extractvalue %dx.types.CBufRet.f32 %2252, 1
  %2257 = extractvalue %dx.types.CBufRet.f32 %2248, 3
  %2258 = extractvalue %dx.types.CBufRet.f32 %2250, 3
  %2259 = extractvalue %dx.types.CBufRet.f32 %2252, 3
  %2260 = fadd fast float %2257, %2233
  %2261 = fadd fast float %2258, %2234
  %2262 = fadd fast float %2259, %2235
  %2263 = fmul fast float %2260, %2249
  %2264 = call float @dx.op.tertiary.f32(i32 46, float %2261, float %2251, float %2263)  ; FMad(a,b,c)
  %2265 = call float @dx.op.tertiary.f32(i32 46, float %2262, float %2253, float %2264)  ; FMad(a,b,c)
  %2266 = fmul fast float %2260, %2254
  %2267 = call float @dx.op.tertiary.f32(i32 46, float %2261, float %2255, float %2266)  ; FMad(a,b,c)
  %2268 = call float @dx.op.tertiary.f32(i32 46, float %2262, float %2256, float %2267)  ; FMad(a,b,c)
  %2269 = fsub fast float %2265, %2257
  %2270 = fsub fast float %2268, %2258
  %2271 = fsub fast float %2269, %2237
  %2272 = fadd fast float %2271, %2245
  %2273 = fsub fast float %2270, %2238
  %2274 = fadd fast float %2273, %2245
  %2275 = extractvalue %dx.types.CBufRet.f32 %2236, 3
  %2276 = fmul fast float %2272, %2275
  %2277 = fmul fast float %2274, %2275
  %2278 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2279 = call float @dx.op.unary.f32(i32 7, float %2277)  ; Saturate(value)
  %2280 = fsub fast float 1.000000e+00, %2278
  %2281 = fsub fast float 1.000000e+00, %2279
  %2282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %2280, float %2281, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2283 = extractvalue %dx.types.ResRet.f32 %2282, 0
  %2284 = fcmp fast ugt float %2283, 0.000000e+00
  br i1 %2284, label %2285, label %2588

; <label>:2285                                    ; preds = %2247
  %2286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2287 = extractvalue %dx.types.CBufRet.f32 %2286, 2
  %2288 = fmul fast float %2287, %2283
  %2289 = extractvalue %dx.types.CBufRet.f32 %2286, 3
  %2290 = fadd fast float %2289, %2288
  %2291 = extractvalue %dx.types.CBufRet.f32 %2252, 2
  %2292 = fadd fast float %2290, %2259
  %2293 = fmul fast float %2265, %2253
  %2294 = call float @dx.op.tertiary.f32(i32 46, float %2268, float %2256, float %2293)  ; FMad(a,b,c)
  %2295 = call float @dx.op.tertiary.f32(i32 46, float %2292, float %2291, float %2294)  ; FMad(a,b,c)
  %2296 = fsub fast float %2295, %2259
  %2297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2298 = extractvalue %dx.types.CBufRet.f32 %2297, 2
  %2299 = fsub fast float %2296, %2298
  %2300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %2280, float %2281, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2301 = extractvalue %dx.types.ResRet.f32 %2300, 0
  %2302 = extractvalue %dx.types.ResRet.f32 %2300, 1
  %2303 = extractvalue %dx.types.ResRet.f32 %2300, 2
  %2304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %2280, float %2281, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2305 = extractvalue %dx.types.ResRet.f32 %2304, 0
  %2306 = extractvalue %dx.types.ResRet.f32 %2304, 1
  %2307 = extractvalue %dx.types.ResRet.f32 %2304, 2
  %2308 = fadd fast float %2305, %2301
  %2309 = fmul fast float %2308, 0x3F847AE140000000
  %2310 = fadd fast float %2306, %2302
  %2311 = fmul fast float %2310, 0x3F847AE140000000
  %2312 = fadd fast float %2307, %2303
  %2313 = fmul fast float %2312, 0x3F847AE140000000
  br label %2588

; <label>:2314                                    ; preds = %2162
  %2315 = and i32 %164, 1
  %2316 = icmp eq i32 %2315, 0
  br i1 %2316, label %2588, label %2317

; <label>:2317                                    ; preds = %2314
  %2318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2319 = extractvalue %dx.types.CBufRet.f32 %2318, 0
  %2320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2321 = extractvalue %dx.types.CBufRet.f32 %2320, 0
  %2322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2323 = extractvalue %dx.types.CBufRet.f32 %2322, 0
  %2324 = extractvalue %dx.types.CBufRet.f32 %2318, 1
  %2325 = extractvalue %dx.types.CBufRet.f32 %2320, 1
  %2326 = extractvalue %dx.types.CBufRet.f32 %2322, 1
  %2327 = extractvalue %dx.types.CBufRet.f32 %2318, 3
  %2328 = extractvalue %dx.types.CBufRet.f32 %2320, 3
  %2329 = extractvalue %dx.types.CBufRet.f32 %2322, 3
  %2330 = fadd fast float %2327, %2233
  %2331 = fadd fast float %2328, %2234
  %2332 = fadd fast float %2329, %2235
  %2333 = fmul fast float %2330, %2319
  %2334 = call float @dx.op.tertiary.f32(i32 46, float %2331, float %2321, float %2333)  ; FMad(a,b,c)
  %2335 = call float @dx.op.tertiary.f32(i32 46, float %2332, float %2323, float %2334)  ; FMad(a,b,c)
  %2336 = fmul fast float %2330, %2324
  %2337 = call float @dx.op.tertiary.f32(i32 46, float %2331, float %2325, float %2336)  ; FMad(a,b,c)
  %2338 = call float @dx.op.tertiary.f32(i32 46, float %2332, float %2326, float %2337)  ; FMad(a,b,c)
  %2339 = fsub fast float %2335, %2327
  %2340 = fsub fast float %2338, %2328
  %2341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2342 = extractvalue %dx.types.CBufRet.f32 %2341, 0
  %2343 = extractvalue %dx.types.CBufRet.f32 %2341, 1
  %2344 = extractvalue %dx.types.CBufRet.f32 %2341, 2
  %2345 = extractvalue %dx.types.CBufRet.f32 %2341, 3
  %2346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2347 = extractvalue %dx.types.CBufRet.f32 %2346, 3
  %2348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2349 = extractvalue %dx.types.CBufRet.i32 %2348, 0
  %2350 = extractvalue %dx.types.CBufRet.i32 %2348, 1
  %2351 = udiv i32 %2350, %2349
  %2352 = fsub fast float %2339, %2342
  %2353 = fsub fast float %2340, %2343
  %2354 = call float @dx.op.binary.f32(i32 35, float %2352, float 0.000000e+00)  ; FMax(a,b)
  %2355 = call float @dx.op.binary.f32(i32 35, float %2353, float 0.000000e+00)  ; FMax(a,b)
  %2356 = call float @dx.op.binary.f32(i32 36, float %2354, float %2344)  ; FMin(a,b)
  %2357 = call float @dx.op.binary.f32(i32 36, float %2355, float %2345)  ; FMin(a,b)
  %2358 = add i32 %2349, -1
  %2359 = add i32 %2351, -1
  %2360 = fmul fast float %2356, %2347
  %2361 = fmul fast float %2357, %2347
  %2362 = fptoui float %2360 to i32
  %2363 = fptoui float %2361 to i32
  %2364 = call i32 @dx.op.binary.i32(i32 40, i32 %2362, i32 %2358)  ; UMin(a,b)
  %2365 = call i32 @dx.op.binary.i32(i32 40, i32 %2363, i32 %2359)  ; UMin(a,b)
  %2366 = mul i32 %2365, %2349
  %2367 = add i32 %2366, %2364
  %2368 = shl i32 %2367, 2
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = icmp eq i32 %2370, -1
  br i1 %2371, label %2588, label %2372

; <label>:2372                                    ; preds = %2317
  %2373 = mul i32 %2370, 148
  %2374 = add i32 %2373, 4
  %2375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2374, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.f32 %2375, 0
  %2377 = add i32 %2373, 8
  %2378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2377, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.f32 %2378, 0
  %2380 = add i32 %2373, 36
  %2381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2380, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.f32 %2381, 0
  %2383 = add i32 %2373, 60
  %2384 = add i32 %2373, 92
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2384, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = add i32 %2373, 116
  %2388 = fsub fast float %2339, %2376
  %2389 = fsub fast float %2340, %2379
  %2390 = fmul fast float %2347, %2388
  %2391 = fmul fast float %2347, %2389
  %2392 = call float @dx.op.unary.f32(i32 7, float %2390)  ; Saturate(value)
  %2393 = call float @dx.op.unary.f32(i32 7, float %2391)  ; Saturate(value)
  %2394 = fsub fast float 1.000000e+00, %2393
  %2395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2396 = extractvalue %dx.types.CBufRet.f32 %2395, 2
  %2397 = call float @dx.op.unary.f32(i32 83, float %2392)  ; DerivCoarseX(value)
  %2398 = call float @dx.op.unary.f32(i32 83, float %2394)  ; DerivCoarseX(value)
  %2399 = call float @dx.op.unary.f32(i32 84, float %2392)  ; DerivCoarseY(value)
  %2400 = call float @dx.op.unary.f32(i32 84, float %2394)  ; DerivCoarseY(value)
  %2401 = fmul fast float %2397, %2396
  %2402 = fmul fast float %2398, %2396
  %2403 = fmul fast float %2399, %2396
  %2404 = fmul fast float %2400, %2396
  %2405 = call float @dx.op.dot2.f32(i32 54, float %2403, float %2404, float %2403, float %2404)  ; Dot2(ax,ay,bx,by)
  %2406 = call float @dx.op.dot2.f32(i32 54, float %2401, float %2402, float %2401, float %2402)  ; Dot2(ax,ay,bx,by)
  %2407 = call float @dx.op.binary.f32(i32 35, float %2406, float %2405)  ; FMax(a,b)
  %2408 = call float @dx.op.unary.f32(i32 23, float %2407)  ; Log(value)
  %2409 = fmul fast float %2408, 5.000000e-01
  %2410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2411 = extractvalue %dx.types.CBufRet.f32 %2410, 1
  %2412 = fadd fast float %2411, %2409
  %2413 = call float @dx.op.binary.f32(i32 35, float %2412, float 0.000000e+00)  ; FMax(a,b)
  %2414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2415 = extractvalue %dx.types.CBufRet.f32 %2414, 3
  %2416 = fadd fast float %2415, %2413
  %2417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2418 = extractvalue %dx.types.CBufRet.f32 %2417, 3
  %2419 = fadd fast float %2416, %2418
  %2420 = add i32 %2386, 0
  %2421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2420, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2422 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2421, i32 0)  ; GetDimensions(handle,mipLevel)
  %2423 = extractvalue %dx.types.Dimensions %2422, 0
  %2424 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2423)  ; FirstbitLo(value)
  %2425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2426 = extractvalue %dx.types.CBufRet.i32 %2425, 1
  %2427 = sub nsw i32 %2426, %2424
  %2428 = sitofp i32 %2427 to float
  %2429 = fsub fast float %2419, %2428
  %2430 = call float @dx.op.binary.f32(i32 35, float %2429, float 0.000000e+00)  ; FMax(a,b)
  %2431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2421, %dx.types.Handle %37, float %2392, float %2394, float %2382, float undef, i32 0, i32 0, i32 undef, float %2430)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2432 = extractvalue %dx.types.ResRet.f32 %2431, 0
  %2433 = fcmp ule float %2432, 0x3FE0101020000000
  %2434 = extractvalue %dx.types.CBufRet.i32 %2425, 0
  %2435 = and i32 %2434, 128
  %2436 = icmp ne i32 %2435, 0
  %2437 = and i1 %2433, %2436
  br i1 %2437, label %2588, label %2438

; <label>:2438                                    ; preds = %2372
  %2439 = add i32 %2373, 20
  %2440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2439, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.f32 %2440, 0
  %2442 = add i32 %2373, 24
  %2443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2442, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.f32 %2443, 0
  %2445 = add i32 %2373, 40
  %2446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2445, i32 undef)  ; BufferLoad(srv,index,wot)
  %2447 = extractvalue %dx.types.ResRet.f32 %2446, 0
  %2448 = add i32 %2373, 96
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2452 = extractvalue %dx.types.CBufRet.f32 %2451, 2
  %2453 = fmul fast float %2452, %2392
  %2454 = fmul fast float %2452, %2394
  %2455 = extractvalue %dx.types.CBufRet.f32 %2451, 3
  %2456 = fadd fast float %2453, %2455
  %2457 = fadd fast float %2454, %2455
  %2458 = add i32 %2450, 0
  %2459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2458, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2460 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2459, i32 0)  ; GetDimensions(handle,mipLevel)
  %2461 = extractvalue %dx.types.Dimensions %2460, 0
  %2462 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2461)  ; FirstbitLo(value)
  %2463 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2464 = extractvalue %dx.types.CBufRet.i32 %2463, 1
  %2465 = sub nsw i32 %2464, %2462
  %2466 = sitofp i32 %2465 to float
  %2467 = fsub fast float %2416, %2466
  %2468 = call float @dx.op.binary.f32(i32 35, float %2467, float 0.000000e+00)  ; FMax(a,b)
  %2469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2459, %dx.types.Handle %37, float %2456, float %2457, float %2447, float undef, i32 0, i32 0, i32 undef, float %2468)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2470 = extractvalue %dx.types.ResRet.f32 %2469, 0
  %2471 = fmul fast float %2470, %2441
  %2472 = fadd fast float %2471, %2444
  %2473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2474 = extractvalue %dx.types.CBufRet.f32 %2473, 0
  %2475 = extractvalue %dx.types.CBufRet.f32 %2473, 1
  %2476 = extractvalue %dx.types.CBufRet.f32 %2473, 2
  %2477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2478 = extractvalue %dx.types.CBufRet.f32 %2477, 3
  %2479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2480 = extractvalue %dx.types.CBufRet.f32 %2479, 3
  %2481 = extractvalue %dx.types.CBufRet.f32 %2473, 3
  %2482 = fadd fast float %2478, %2339
  %2483 = fadd fast float %2480, %2340
  %2484 = fadd fast float %2472, %2481
  %2485 = fmul fast float %2482, %2474
  %2486 = call float @dx.op.tertiary.f32(i32 46, float %2483, float %2475, float %2485)  ; FMad(a,b,c)
  %2487 = call float @dx.op.tertiary.f32(i32 46, float %2484, float %2476, float %2486)  ; FMad(a,b,c)
  %2488 = fsub fast float %2487, %2481
  %2489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2490 = extractvalue %dx.types.CBufRet.f32 %2489, 2
  %2491 = fsub fast float %2488, %2490
  %2492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2493 = extractvalue %dx.types.CBufRet.i32 %2492, 0
  %2494 = call i32 @dx.op.binary.i32(i32 40, i32 %2370, i32 %2493)  ; UMin(a,b)
  %2495 = mul i32 %2494, 36
  %2496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2495, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.i32 %2496, 0
  %2498 = add i32 %2495, 4
  %2499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2500 = extractvalue %dx.types.CBufRet.f32 %2499, 0
  %2501 = fmul fast float %2500, %2392
  %2502 = fmul fast float %2500, %2394
  %2503 = extractvalue %dx.types.CBufRet.f32 %2499, 1
  %2504 = fadd fast float %2501, %2503
  %2505 = fadd fast float %2502, %2503
  %2506 = icmp eq i32 %2497, 0
  br i1 %2506, label %2575, label %2507

; <label>:2507                                    ; preds = %2438
  br label %2508

; <label>:2508                                    ; preds = %2565, %2507
  %2509 = phi float [ %2566, %2565 ], [ 0.000000e+00, %2507 ]
  %2510 = phi float [ %2567, %2565 ], [ 0.000000e+00, %2507 ]
  %2511 = phi float [ %2568, %2565 ], [ 0.000000e+00, %2507 ]
  %2512 = phi float [ %2569, %2565 ], [ 0.000000e+00, %2507 ]
  %2513 = phi float [ %2570, %2565 ], [ 0.000000e+00, %2507 ]
  %2514 = phi float [ %2571, %2565 ], [ 0.000000e+00, %2507 ]
  %2515 = phi i32 [ %2572, %2565 ], [ 0, %2507 ]
  %2516 = shl i32 %2515, 2
  %2517 = add i32 %2383, %2516
  %2518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2517, i32 undef)  ; BufferLoad(srv,index,wot)
  %2519 = extractvalue %dx.types.ResRet.f32 %2518, 0
  %2520 = add i32 %2387, %2516
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2520, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = add i32 %2522, 0
  %2524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2523, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2525 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2524, i32 0)  ; GetDimensions(handle,mipLevel)
  %2526 = extractvalue %dx.types.Dimensions %2525, 0
  %2527 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2526)  ; FirstbitLo(value)
  %2528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2529 = extractvalue %dx.types.CBufRet.i32 %2528, 1
  %2530 = sub nsw i32 %2529, %2527
  %2531 = sitofp i32 %2530 to float
  %2532 = fsub fast float %2416, %2531
  %2533 = call float @dx.op.binary.f32(i32 35, float %2532, float 0.000000e+00)  ; FMax(a,b)
  %2534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2524, %dx.types.Handle %37, float %2504, float %2505, float %2519, float undef, i32 0, i32 0, i32 undef, float %2533)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2535 = extractvalue %dx.types.ResRet.f32 %2534, 0
  %2536 = fcmp fast ogt float %2535, 0.000000e+00
  br i1 %2536, label %2537, label %2565

; <label>:2537                                    ; preds = %2508
  %2538 = add i32 %2498, %2516
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = and i32 %2540, 32767
  %2542 = mul nuw nsw i32 %2541, 928
  %2543 = add nuw nsw i32 %2542, 48
  %2544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2543, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.f32 %2544, 0
  %2546 = extractvalue %dx.types.ResRet.f32 %2544, 1
  %2547 = extractvalue %dx.types.ResRet.f32 %2544, 2
  %2548 = add nuw nsw i32 %2542, 60
  %2549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.f32 %2549, 0
  %2551 = extractvalue %dx.types.ResRet.f32 %2549, 1
  %2552 = extractvalue %dx.types.ResRet.f32 %2549, 2
  %2553 = fmul fast float %2545, %2535
  %2554 = fmul fast float %2546, %2535
  %2555 = fmul fast float %2547, %2535
  %2556 = fadd fast float %2553, %2509
  %2557 = fadd fast float %2554, %2510
  %2558 = fadd fast float %2555, %2511
  %2559 = fmul fast float %2550, %2535
  %2560 = fmul fast float %2551, %2535
  %2561 = fmul fast float %2552, %2535
  %2562 = fadd fast float %2559, %2512
  %2563 = fadd fast float %2560, %2513
  %2564 = fadd fast float %2561, %2514
  br label %2565

; <label>:2565                                    ; preds = %2537, %2508
  %2566 = phi float [ %2556, %2537 ], [ %2509, %2508 ]
  %2567 = phi float [ %2557, %2537 ], [ %2510, %2508 ]
  %2568 = phi float [ %2558, %2537 ], [ %2511, %2508 ]
  %2569 = phi float [ %2562, %2537 ], [ %2512, %2508 ]
  %2570 = phi float [ %2563, %2537 ], [ %2513, %2508 ]
  %2571 = phi float [ %2564, %2537 ], [ %2514, %2508 ]
  %2572 = add nuw i32 %2515, 1
  %2573 = icmp eq i32 %2572, %2497
  br i1 %2573, label %2574, label %2508

; <label>:2574                                    ; preds = %2565
  br label %2575

; <label>:2575                                    ; preds = %2574, %2438
  %2576 = phi float [ 0.000000e+00, %2438 ], [ %2566, %2574 ]
  %2577 = phi float [ 0.000000e+00, %2438 ], [ %2567, %2574 ]
  %2578 = phi float [ 0.000000e+00, %2438 ], [ %2568, %2574 ]
  %2579 = phi float [ 0.000000e+00, %2438 ], [ %2569, %2574 ]
  %2580 = phi float [ 0.000000e+00, %2438 ], [ %2570, %2574 ]
  %2581 = phi float [ 0.000000e+00, %2438 ], [ %2571, %2574 ]
  %2582 = fadd fast float %2579, %2576
  %2583 = fmul fast float %2582, 0x3F847AE140000000
  %2584 = fadd fast float %2580, %2577
  %2585 = fmul fast float %2584, 0x3F847AE140000000
  %2586 = fadd fast float %2581, %2578
  %2587 = fmul fast float %2586, 0x3F847AE140000000
  br label %2588

; <label>:2588                                    ; preds = %2575, %2372, %2317, %2314, %2285, %2247
  %2589 = phi float [ %2299, %2285 ], [ -1.310720e+05, %2247 ], [ %2491, %2575 ], [ -1.310720e+05, %2317 ], [ -1.310720e+05, %2372 ], [ -1.310720e+05, %2314 ]
  %2590 = phi float [ %2309, %2285 ], [ 0.000000e+00, %2247 ], [ %2583, %2575 ], [ 0.000000e+00, %2317 ], [ 0.000000e+00, %2372 ], [ 0.000000e+00, %2314 ]
  %2591 = phi float [ %2311, %2285 ], [ 0.000000e+00, %2247 ], [ %2585, %2575 ], [ 0.000000e+00, %2317 ], [ 0.000000e+00, %2372 ], [ 0.000000e+00, %2314 ]
  %2592 = phi float [ %2313, %2285 ], [ 0.000000e+00, %2247 ], [ %2587, %2575 ], [ 0.000000e+00, %2317 ], [ 0.000000e+00, %2372 ], [ 0.000000e+00, %2314 ]
  %2593 = phi i1 [ true, %2285 ], [ false, %2247 ], [ true, %2575 ], [ false, %2317 ], [ false, %2372 ], [ false, %2314 ]
  %2594 = and i32 %164, 3
  %2595 = icmp eq i32 %2594, 1
  %2596 = select i1 %2595, float 1.000000e+00, float 0.000000e+00
  %2597 = fsub fast float %2589, %119
  %2598 = call float @dx.op.unary.f32(i32 7, float %2597)  ; Saturate(value)
  %2599 = select i1 %2593, float %2598, float 1.000000e+00
  %2600 = fmul fast float %2599, %2596
  %2601 = icmp eq i32 %2594, 3
  %2602 = select i1 %2601, float 1.000000e+00, float %2600
  %2603 = call float @dx.op.binary.f32(i32 35, float %2163, float %2602)  ; FMax(a,b)
  %2604 = call float @dx.op.unary.f32(i32 7, float %2603)  ; Saturate(value)
  %2605 = fcmp fast une float %2604, 0.000000e+00
  %2606 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %2607 = call float @dx.op.unary.f32(i32 25, float %2606)  ; Rsqrt(value)
  br i1 %2605, label %2615, label %2608

; <label>:2608                                    ; preds = %2588
  %2609 = fmul fast float %2607, %117
  %2610 = fmul fast float %2607, %118
  %2611 = fmul fast float %2607, %119
  %2612 = fsub fast float -0.000000e+00, %2609
  %2613 = fsub fast float -0.000000e+00, %2610
  %2614 = fsub fast float -0.000000e+00, %2611
  br label %2783

; <label>:2615                                    ; preds = %2588
  %2616 = fmul fast float %117, %2607
  %2617 = fsub fast float -0.000000e+00, %2616
  %2618 = fmul fast float %118, %2607
  %2619 = fsub fast float -0.000000e+00, %2618
  %2620 = fmul fast float %119, %2607
  %2621 = fsub fast float -0.000000e+00, %2620
  %2622 = call float @dx.op.dot3.f32(i32 55, float %2617, float %2619, float %2621, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %2623 = fmul fast float %2604, 2.500000e+00
  %2624 = call float @dx.op.unary.f32(i32 7, float %2623)  ; Saturate(value)
  %2625 = fmul fast float %2604, 0x4013FFFFE0000000
  %2626 = fadd fast float %2625, 0xBFFFFFFFE0000000
  %2627 = call float @dx.op.unary.f32(i32 7, float %2626)  ; Saturate(value)
  %2628 = fmul fast float %2604, 0x4004000020000000
  %2629 = fadd fast float %2628, 0xBFF8000040000000
  %2630 = call float @dx.op.unary.f32(i32 7, float %2629)  ; Saturate(value)
  %2631 = call float @dx.op.unary.f32(i32 7, float %2624)  ; Saturate(value)
  %2632 = fmul fast float %2193, 1.000000e+01
  %2633 = call float @dx.op.unary.f32(i32 7, float %2632)  ; Saturate(value)
  %2634 = fmul fast float %2633, 2.000000e+00
  %2635 = fsub fast float 3.000000e+00, %2634
  %2636 = fmul fast float %2633, %2633
  %2637 = fmul fast float %2636, %2635
  %2638 = fsub fast float 1.000000e+00, %2637
  %2639 = fsub fast float 0x3FE3333340000000, %2214
  %2640 = fmul fast float %2639, 0x400AAAAAA0000000
  %2641 = call float @dx.op.unary.f32(i32 7, float %2640)  ; Saturate(value)
  %2642 = fmul fast float %2638, %2641
  %2643 = fmul fast float %2226, 0x3FEA2B8620000000
  %2644 = fmul fast float %2227, 0x3FEA2B8620000000
  %2645 = fmul fast float %2228, 0x3FEA2B8620000000
  %2646 = fadd fast float %2643, 0x3FC81DFBA0000000
  %2647 = fmul fast float %2646, %2226
  %2648 = fadd fast float %2647, 0x3F910E6020000000
  %2649 = fadd fast float %2644, 0x3FC81DFBA0000000
  %2650 = fmul fast float %2649, %2227
  %2651 = fadd fast float %2650, 0x3F910E6020000000
  %2652 = fadd fast float %2645, 0x3FC81DFBA0000000
  %2653 = fmul fast float %2652, %2228
  %2654 = fadd fast float %2653, 0x3F910E6020000000
  %2655 = call float @dx.op.unary.f32(i32 7, float %2648)  ; Saturate(value)
  %2656 = call float @dx.op.unary.f32(i32 7, float %2651)  ; Saturate(value)
  %2657 = call float @dx.op.unary.f32(i32 7, float %2654)  ; Saturate(value)
  %2658 = fsub fast float %2655, %2226
  %2659 = fsub fast float %2656, %2227
  %2660 = fsub fast float %2657, %2228
  %2661 = fmul fast float %2658, %2631
  %2662 = fmul fast float %2661, %2642
  %2663 = fmul fast float %2659, %2631
  %2664 = fmul fast float %2663, %2642
  %2665 = fmul fast float %2660, %2631
  %2666 = fmul fast float %2665, %2642
  %2667 = fadd fast float %2662, %2226
  %2668 = fadd fast float %2664, %2227
  %2669 = fadd fast float %2666, %2228
  %2670 = fmul fast float %2174, %2174
  %2671 = fmul fast float %2670, %2670
  %2672 = fadd fast float %2627, 1.000000e+00
  %2673 = fsub fast float %2672, %2642
  %2674 = call float @dx.op.unary.f32(i32 7, float %2673)  ; Saturate(value)
  %2675 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2676 = call float @dx.op.unary.f32(i32 7, float %2675)  ; Saturate(value)
  %2677 = fsub fast float 1.000000e+00, %2671
  %2678 = call float @dx.op.binary.f32(i32 36, float %2674, float %2677)  ; FMin(a,b)
  %2679 = call float @dx.op.unary.f32(i32 7, float %2630)  ; Saturate(value)
  %2680 = call float @dx.op.binary.f32(i32 35, float %2678, float %2679)  ; FMax(a,b)
  %2681 = fadd fast float %2676, 0xBFE4CCCCC0000000
  %2682 = fmul fast float %2681, 0x4006DB6DA0000000
  %2683 = call float @dx.op.unary.f32(i32 7, float %2682)  ; Saturate(value)
  %2684 = fmul fast float %2683, 2.000000e+00
  %2685 = fsub fast float 3.000000e+00, %2684
  %2686 = bitcast float %2211 to i32
  %2687 = ashr i32 %2686, 1
  %2688 = add nsw i32 %2687, 532487669
  %2689 = bitcast i32 %2688 to float
  %2690 = fsub fast float 1.000000e+00, %2689
  %2691 = bitcast float %2690 to i32
  %2692 = sub nsw i32 2129859010, %2691
  %2693 = bitcast i32 %2692 to float
  %2694 = fmul fast float %2693, 2.000000e+00
  %2695 = bitcast float %2212 to i32
  %2696 = ashr i32 %2695, 1
  %2697 = add nsw i32 %2696, 532487669
  %2698 = bitcast i32 %2697 to float
  %2699 = fsub fast float 1.000000e+00, %2698
  %2700 = bitcast float %2699 to i32
  %2701 = sub nsw i32 2129859010, %2700
  %2702 = bitcast i32 %2701 to float
  %2703 = fmul fast float %2702, 2.000000e+00
  %2704 = bitcast float %2213 to i32
  %2705 = ashr i32 %2704, 1
  %2706 = add nsw i32 %2705, 532487669
  %2707 = bitcast i32 %2706 to float
  %2708 = fsub fast float 1.000000e+00, %2707
  %2709 = bitcast float %2708 to i32
  %2710 = sub nsw i32 2129859010, %2709
  %2711 = bitcast i32 %2710 to float
  %2712 = fmul fast float %2711, 2.000000e+00
  %2713 = fsub fast float 0x4002A9FBE0000000, %2694
  %2714 = fadd fast float %2694, 0x3FD54FDF00000000
  %2715 = bitcast float %2714 to i32
  %2716 = sub nsw i32 2129859010, %2715
  %2717 = bitcast i32 %2716 to float
  %2718 = fmul fast float %2717, %2713
  %2719 = fmul fast float %2718, %2718
  %2720 = fsub fast float 0x4002A9FBE0000000, %2703
  %2721 = fadd fast float %2703, 0x3FD54FDF00000000
  %2722 = bitcast float %2721 to i32
  %2723 = sub nsw i32 2129859010, %2722
  %2724 = bitcast i32 %2723 to float
  %2725 = fmul fast float %2724, %2720
  %2726 = fmul fast float %2725, %2725
  %2727 = fsub fast float 0x4002A9FBE0000000, %2712
  %2728 = fadd fast float %2712, 0x3FD54FDF00000000
  %2729 = bitcast float %2728 to i32
  %2730 = sub nsw i32 2129859010, %2729
  %2731 = bitcast i32 %2730 to float
  %2732 = fmul fast float %2731, %2727
  %2733 = fmul fast float %2732, %2732
  %2734 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2719)  ; FMax(a,b)
  %2735 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2726)  ; FMax(a,b)
  %2736 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2733)  ; FMax(a,b)
  %2737 = fsub fast float 1.000000e+00, %2622
  %2738 = fadd fast float %2737, %2638
  %2739 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  %2740 = fsub fast float 1.000000e+00, %2602
  %2741 = fmul fast float %2680, %2740
  %2742 = fmul fast float %2683, %2683
  %2743 = fmul fast float %2742, %2741
  %2744 = fmul fast float %2743, %2685
  %2745 = fmul fast float %2740, 0xBFE99999A0000000
  %2746 = fmul fast float %2745, %2631
  %2747 = fmul fast float %2746, %2642
  %2748 = fadd fast float %2747, 1.000000e+00
  %2749 = fadd fast float %2214, -1.000000e+00
  %2750 = fmul fast float %2748, %2749
  %2751 = fadd fast float %2750, 1.000000e+00
  %2752 = fsub fast float %2734, %2211
  %2753 = fsub fast float %2735, %2212
  %2754 = fsub fast float %2736, %2213
  %2755 = fmul fast float %2744, %2752
  %2756 = fmul fast float %2744, %2753
  %2757 = fmul fast float %2744, %2754
  %2758 = fadd fast float %2755, %2211
  %2759 = fadd fast float %2756, %2212
  %2760 = fadd fast float %2757, %2213
  %2761 = fsub fast float %53, %2190
  %2762 = fsub fast float %54, %2191
  %2763 = fsub fast float %55, %2192
  %2764 = fmul fast float %2744, %2761
  %2765 = fmul fast float %2744, %2762
  %2766 = fmul fast float %2744, %2763
  %2767 = fadd fast float %2764, %2190
  %2768 = fadd fast float %2765, %2191
  %2769 = fadd fast float %2766, %2192
  %2770 = fmul fast float %2744, %2739
  %2771 = call float @dx.op.unary.f32(i32 7, float %2751)  ; Saturate(value)
  %2772 = fsub fast float 1.000000e+00, %2771
  %2773 = fmul fast float %2770, %2772
  %2774 = fadd fast float %2773, %2771
  %2775 = fsub fast float 1.000000e+00, %2174
  %2776 = fmul fast float %2744, %2775
  %2777 = fadd fast float %2776, %2174
  %2778 = call float @dx.op.dot3.f32(i32 55, float %2767, float %2768, float %2769, float %2767, float %2768, float %2769)  ; Dot3(ax,ay,az,bx,by,bz)
  %2779 = call float @dx.op.unary.f32(i32 25, float %2778)  ; Rsqrt(value)
  %2780 = fmul fast float %2767, %2779
  %2781 = fmul fast float %2768, %2779
  %2782 = fmul fast float %2769, %2779
  br label %2783

; <label>:2783                                    ; preds = %2615, %2608
  %2784 = phi float [ %2614, %2608 ], [ %2621, %2615 ]
  %2785 = phi float [ %2613, %2608 ], [ %2619, %2615 ]
  %2786 = phi float [ %2612, %2608 ], [ %2617, %2615 ]
  %2787 = phi float [ %2611, %2608 ], [ %2620, %2615 ]
  %2788 = phi float [ %2610, %2608 ], [ %2618, %2615 ]
  %2789 = phi float [ %2609, %2608 ], [ %2616, %2615 ]
  %2790 = phi float [ %2211, %2608 ], [ %2758, %2615 ]
  %2791 = phi float [ %2212, %2608 ], [ %2759, %2615 ]
  %2792 = phi float [ %2213, %2608 ], [ %2760, %2615 ]
  %2793 = phi float [ %2190, %2608 ], [ %2780, %2615 ]
  %2794 = phi float [ %2191, %2608 ], [ %2781, %2615 ]
  %2795 = phi float [ %2192, %2608 ], [ %2782, %2615 ]
  %2796 = phi float [ %2226, %2608 ], [ %2667, %2615 ]
  %2797 = phi float [ %2227, %2608 ], [ %2668, %2615 ]
  %2798 = phi float [ %2228, %2608 ], [ %2669, %2615 ]
  %2799 = phi float [ %2214, %2608 ], [ %2774, %2615 ]
  %2800 = phi float [ %2174, %2608 ], [ %2777, %2615 ]
  %2801 = select i1 %188, float 0.000000e+00, float %2792
  %2802 = call float @dx.op.dot3.f32(i32 55, float %2793, float %2794, float %2795, float %2786, float %2785, float %2784)  ; Dot3(ax,ay,az,bx,by,bz)
  %2803 = call float @dx.op.unary.f32(i32 7, float %2802)  ; Saturate(value)
  %2804 = call float @dx.op.dot3.f32(i32 55, float %2789, float %2788, float %2787, float %2793, float %2794, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %2805 = fmul fast float %2804, 2.000000e+00
  %2806 = fmul fast float %2805, %2793
  %2807 = fmul fast float %2805, %2794
  %2808 = fmul fast float %2805, %2795
  %2809 = fsub fast float %2789, %2806
  %2810 = fsub fast float %2788, %2807
  %2811 = fsub fast float %2787, %2808
  %2812 = call float @dx.op.binary.f32(i32 36, float %2800, float 1.000000e+00)  ; FMin(a,b)
  %2813 = fsub fast float 1.000000e+00, %2800
  %2814 = bitcast float %2813 to i32
  %2815 = sub nsw i32 2129859010, %2814
  %2816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2817 = extractvalue %dx.types.CBufRet.f32 %2816, 0
  %2818 = extractvalue %dx.types.CBufRet.f32 %2816, 1
  %2819 = fadd fast float %2817, %117
  %2820 = fadd fast float %2818, %118
  %2821 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2822 = extractvalue %dx.types.CBufRet.i32 %2821, 0
  %2823 = icmp eq i32 %2822, 1
  br i1 %2823, label %2824, label %2859

; <label>:2824                                    ; preds = %2783
  %2825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2826 = extractvalue %dx.types.CBufRet.f32 %2825, 0
  %2827 = extractvalue %dx.types.CBufRet.f32 %2825, 1
  %2828 = fsub fast float %2819, %2826
  %2829 = fsub fast float %2820, %2827
  %2830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2831 = extractvalue %dx.types.CBufRet.f32 %2830, 0
  %2832 = extractvalue %dx.types.CBufRet.f32 %2830, 1
  %2833 = fmul fast float %2828, %2831
  %2834 = fmul fast float %2829, %2832
  %2835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %2833, float %2834, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2836 = extractvalue %dx.types.ResRet.f32 %2835, 0
  %2837 = fcmp fast ogt float %2836, 0.000000e+00
  %2838 = extractvalue %dx.types.CBufRet.i32 %2821, 3
  %2839 = icmp ne i32 %2838, 0
  %2840 = and i1 %2837, %2839
  br i1 %2840, label %2841, label %2859, !dx.controlflow.hints !79

; <label>:2841                                    ; preds = %2824
  %2842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2843 = extractvalue %dx.types.CBufRet.f32 %2842, 0
  %2844 = extractvalue %dx.types.CBufRet.f32 %2842, 1
  %2845 = fsub fast float %2819, %2843
  %2846 = fsub fast float %2820, %2844
  %2847 = fmul fast float %2845, %2845
  %2848 = fmul fast float %2846, %2846
  %2849 = fadd fast float %2847, %2848
  %2850 = uitofp i32 %2838 to float
  %2851 = fmul fast float %2850, %2850
  %2852 = fcmp fast ogt float %2849, %2851
  br i1 %2852, label %2859, label %2853

; <label>:2853                                    ; preds = %2841
  %2854 = call float @dx.op.unary.f32(i32 24, float %2849)  ; Sqrt(value)
  %2855 = fsub fast float %2850, %2854
  %2856 = fmul fast float %2855, 0x3F75555560000000
  %2857 = call float @dx.op.unary.f32(i32 7, float %2856)  ; Saturate(value)
  %2858 = call float @dx.op.binary.f32(i32 36, float %2857, float %2836)  ; FMin(a,b)
  br label %2859

; <label>:2859                                    ; preds = %2853, %2841, %2824, %2783
  %2860 = phi float [ 1.000000e+00, %2783 ], [ %2858, %2853 ], [ %2836, %2824 ], [ 0.000000e+00, %2841 ]
  %2861 = fcmp fast ogt float %2860, 0.000000e+00
  br i1 %2861, label %2862, label %2960, !dx.controlflow.hints !80

; <label>:2862                                    ; preds = %2859
  %2863 = fadd fast float %148, 5.000000e-01
  %2864 = call float @dx.op.unary.f32(i32 27, float %2863)  ; Round_ni(value)
  %2865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %146, float %147, float %2864, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2866 = extractvalue %dx.types.ResRet.f32 %2865, 0
  %2867 = extractvalue %dx.types.ResRet.f32 %2865, 1
  %2868 = extractvalue %dx.types.ResRet.f32 %2865, 2
  %2869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2870 = extractvalue %dx.types.CBufRet.f32 %2869, 3
  %2871 = fmul fast float %2870, %2866
  %2872 = fmul fast float %2870, %2867
  %2873 = fmul fast float %2870, %2868
  %2874 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %146, float %147, float %2864, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2875 = extractvalue %dx.types.ResRet.f32 %2874, 0
  %2876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %146, float %147, float %2864, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2877 = extractvalue %dx.types.ResRet.f32 %2876, 0
  %2878 = extractvalue %dx.types.ResRet.f32 %2876, 1
  %2879 = fmul fast float %2877, 2.000000e+00
  %2880 = fmul fast float %2878, 2.000000e+00
  %2881 = fadd fast float %2879, -1.000000e+00
  %2882 = fadd fast float %2880, -1.000000e+00
  %2883 = fadd fast float %2881, %2882
  %2884 = fmul fast float %2883, 5.000000e-01
  %2885 = fsub fast float %2881, %2882
  %2886 = fmul fast float %2885, 5.000000e-01
  %2887 = call float @dx.op.unary.f32(i32 6, float %2884)  ; FAbs(value)
  %2888 = fsub fast float 1.000000e+00, %2887
  %2889 = call float @dx.op.unary.f32(i32 6, float %2886)  ; FAbs(value)
  %2890 = fsub fast float %2888, %2889
  %2891 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2890)  ; FMax(a,b)
  %2892 = call float @dx.op.dot3.f32(i32 55, float %2884, float %2886, float %2891, float %2884, float %2886, float %2891)  ; Dot3(ax,ay,az,bx,by,bz)
  %2893 = bitcast float %2892 to i32
  %2894 = ashr i32 %2893, 1
  %2895 = sub nsw i32 1597250115, %2894
  %2896 = bitcast i32 %2895 to float
  %2897 = fmul fast float %2896, %2884
  %2898 = fmul fast float %2896, %2886
  %2899 = fmul fast float %2896, %2891
  %2900 = fsub fast float 1.000000e+00, %2875
  %2901 = fdiv fast float %2900, %2899
  %2902 = fmul fast float %2899, %53
  %2903 = fmul fast float %2899, %54
  %2904 = fmul fast float %2899, %55
  %2905 = fmul fast float %2897, %49
  %2906 = fmul fast float %2897, %50
  %2907 = fmul fast float %2897, %51
  %2908 = fadd fast float %2902, %2905
  %2909 = fadd fast float %2903, %2906
  %2910 = fadd fast float %2904, %2907
  %2911 = fmul fast float %2898, %81
  %2912 = fmul fast float %2898, %82
  %2913 = fmul fast float %2898, %83
  %2914 = fadd fast float %2908, %2911
  %2915 = fadd fast float %2909, %2912
  %2916 = fadd fast float %2910, %2913
  %2917 = call float @dx.op.dot3.f32(i32 55, float %2914, float %2915, float %2916, float %2914, float %2915, float %2916)  ; Dot3(ax,ay,az,bx,by,bz)
  %2918 = call float @dx.op.unary.f32(i32 25, float %2917)  ; Rsqrt(value)
  %2919 = fmul fast float %2914, %2918
  %2920 = fmul fast float %2915, %2918
  %2921 = fmul fast float %2916, %2918
  %2922 = call float @dx.op.dot3.f32(i32 55, float %2793, float %2794, float %2795, float %2793, float %2794, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %2923 = call float @dx.op.unary.f32(i32 7, float %2922)  ; Saturate(value)
  %2924 = fmul fast float %2923, 5.000000e-01
  %2925 = fadd fast float %2924, 5.000000e-01
  %2926 = fmul fast float %2925, %2875
  %2927 = call float @dx.op.dot3.f32(i32 55, float %2793, float %2794, float %2795, float %2919, float %2920, float %2921)  ; Dot3(ax,ay,az,bx,by,bz)
  %2928 = call float @dx.op.unary.f32(i32 7, float %2927)  ; Saturate(value)
  %2929 = fmul fast float %2928, %2901
  %2930 = fadd fast float %2926, %2929
  %2931 = fsub fast float 5.000000e-01, %2924
  %2932 = fmul fast float %2931, %2796
  %2933 = fmul fast float %2931, %2797
  %2934 = fmul fast float %2931, %2798
  %2935 = fadd fast float %2930, %2932
  %2936 = fmul fast float %2935, %2871
  %2937 = fadd fast float %2930, %2933
  %2938 = fmul fast float %2937, %2872
  %2939 = fadd fast float %2930, %2934
  %2940 = fmul fast float %2939, %2873
  %2941 = call float @dx.op.dot3.f32(i32 55, float %2809, float %2810, float %2811, float %2793, float %2794, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %2942 = call float @dx.op.unary.f32(i32 7, float %2941)  ; Saturate(value)
  %2943 = fmul fast float %2942, 5.000000e-01
  %2944 = fadd fast float %2943, 5.000000e-01
  %2945 = fmul fast float %2944, %2875
  %2946 = call float @dx.op.dot3.f32(i32 55, float %2809, float %2810, float %2811, float %2919, float %2920, float %2921)  ; Dot3(ax,ay,az,bx,by,bz)
  %2947 = call float @dx.op.unary.f32(i32 7, float %2946)  ; Saturate(value)
  %2948 = fmul fast float %2947, %2901
  %2949 = fadd fast float %2945, %2948
  %2950 = fsub fast float 5.000000e-01, %2943
  %2951 = fmul fast float %2950, %2796
  %2952 = fmul fast float %2950, %2797
  %2953 = fmul fast float %2950, %2798
  %2954 = fadd fast float %2949, %2951
  %2955 = fmul fast float %2954, %2871
  %2956 = fadd fast float %2949, %2952
  %2957 = fmul fast float %2956, %2872
  %2958 = fadd fast float %2949, %2953
  %2959 = fmul fast float %2958, %2873
  br label %2960

; <label>:2960                                    ; preds = %2862, %2859
  %2961 = phi float [ %2955, %2862 ], [ 0.000000e+00, %2859 ]
  %2962 = phi float [ %2957, %2862 ], [ 0.000000e+00, %2859 ]
  %2963 = phi float [ %2959, %2862 ], [ 0.000000e+00, %2859 ]
  %2964 = phi float [ %2936, %2862 ], [ 0.000000e+00, %2859 ]
  %2965 = phi float [ %2938, %2862 ], [ 0.000000e+00, %2859 ]
  %2966 = phi float [ %2940, %2862 ], [ 0.000000e+00, %2859 ]
  %2967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2968 = extractvalue %dx.types.CBufRet.f32 %2967, 0
  %2969 = fcmp fast ogt float %2968, 0.000000e+00
  %2970 = and i1 %2861, %2969
  br i1 %2970, label %2971, label %3175, !dx.controlflow.hints !81

; <label>:2971                                    ; preds = %2960
  %2972 = extractvalue %dx.types.CBufRet.f32 %2816, 2
  %2973 = fadd fast float %2972, %119
  %2974 = fmul fast float %2793, 3.200000e+01
  %2975 = fmul fast float %2794, 3.200000e+01
  %2976 = fadd fast float %2819, %2974
  %2977 = fadd fast float %2820, %2975
  %2978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2979 = extractvalue %dx.types.CBufRet.f32 %2978, 0
  %2980 = extractvalue %dx.types.CBufRet.f32 %2978, 1
  %2981 = fsub fast float %2976, %2979
  %2982 = fsub fast float %2977, %2980
  %2983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2984 = extractvalue %dx.types.CBufRet.f32 %2983, 0
  %2985 = extractvalue %dx.types.CBufRet.f32 %2983, 1
  %2986 = fmul fast float %2981, %2984
  %2987 = fmul fast float %2982, %2985
  %2988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2989 = extractvalue %dx.types.CBufRet.f32 %2988, 0
  %2990 = extractvalue %dx.types.CBufRet.f32 %2988, 1
  %2991 = fsub fast float %2819, %2989
  %2992 = fsub fast float %2820, %2990
  %2993 = fmul fast float %2991, %2991
  %2994 = fmul fast float %2992, %2992
  %2995 = fadd fast float %2993, %2994
  %2996 = call float @dx.op.unary.f32(i32 24, float %2995)  ; Sqrt(value)
  %2997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2998 = extractvalue %dx.types.CBufRet.f32 %2997, 0
  %2999 = extractvalue %dx.types.CBufRet.f32 %2997, 1
  %3000 = fsub fast float %2996, %2998
  %3001 = fdiv fast float %3000, %2999
  %3002 = call float @dx.op.unary.f32(i32 7, float %3001)  ; Saturate(value)
  %3003 = fmul fast float %3002, 2.000000e+00
  %3004 = fsub fast float 3.000000e+00, %3003
  %3005 = fmul fast float %3002, %3002
  %3006 = fmul fast float %3005, %3004
  %3007 = fcmp fast oge float %2986, 0.000000e+00
  %3008 = fcmp fast ole float %2986, 1.000000e+00
  %3009 = and i1 %3008, %3007
  %3010 = fcmp fast oge float %2987, 0.000000e+00
  %3011 = and i1 %3010, %3009
  %3012 = fcmp fast ole float %2987, 1.000000e+00
  %3013 = and i1 %3012, %3011
  %3014 = fcmp fast ogt float %3006, 0.000000e+00
  %3015 = and i1 %3014, %3013
  br i1 %3015, label %3016, label %3139, !dx.controlflow.hints !82

; <label>:3016                                    ; preds = %2971
  %3017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3018 = extractvalue %dx.types.CBufRet.f32 %3017, 2
  %3019 = extractvalue %dx.types.CBufRet.f32 %3017, 3
  %3020 = fmul fast float %3018, %2986
  %3021 = fmul fast float %3019, %2987
  %3022 = call float @dx.op.unary.f32(i32 27, float %3020)  ; Round_ni(value)
  %3023 = call float @dx.op.unary.f32(i32 27, float %3021)  ; Round_ni(value)
  %3024 = fptosi float %3022 to i32
  %3025 = fptosi float %3023 to i32
  %3026 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3024, i32 %3025, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = lshr i32 %3027, 16
  %3029 = icmp eq i32 %3028, 65535
  br i1 %3029, label %3139, label %3030

; <label>:3030                                    ; preds = %3016
  %3031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3032 = extractvalue %dx.types.CBufRet.f32 %3031, 0
  %3033 = fmul fast float %3032, %2986
  %3034 = extractvalue %dx.types.CBufRet.f32 %3031, 1
  %3035 = fadd fast float %3033, %3034
  %3036 = extractvalue %dx.types.CBufRet.f32 %3031, 2
  %3037 = fmul fast float %3036, %2987
  %3038 = extractvalue %dx.types.CBufRet.f32 %3031, 3
  %3039 = fadd fast float %3037, %3038
  %3040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3035, float %3039, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3041 = extractvalue %dx.types.ResRet.f32 %3040, 0
  %3042 = extractvalue %dx.types.ResRet.f32 %3040, 1
  %3043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3044 = extractvalue %dx.types.CBufRet.f32 %3043, 1
  %3045 = extractvalue %dx.types.CBufRet.f32 %3043, 0
  %3046 = fsub fast float %3044, %3045
  %3047 = fmul fast float %3046, %3041
  %3048 = fadd fast float %3047, %3045
  %3049 = extractvalue %dx.types.CBufRet.f32 %3043, 3
  %3050 = extractvalue %dx.types.CBufRet.f32 %3043, 2
  %3051 = fsub fast float %3049, %3050
  %3052 = fmul fast float %3051, %3042
  %3053 = fadd fast float %3052, %3050
  %3054 = fsub fast float %2973, %3048
  %3055 = fsub fast float %3053, %3048
  %3056 = fdiv fast float %3054, %3055
  %3057 = call float @dx.op.unary.f32(i32 7, float %3056)  ; Saturate(value)
  %3058 = extractvalue %dx.types.CBufRet.f32 %2967, 1
  %3059 = extractvalue %dx.types.CBufRet.f32 %3017, 0
  %3060 = extractvalue %dx.types.CBufRet.f32 %3017, 1
  %3061 = fmul fast float %3059, %2986
  %3062 = fmul fast float %3060, %2987
  %3063 = fmul fast float %3061, 1.250000e-01
  %3064 = fmul fast float %3062, 1.250000e-01
  %3065 = call float @dx.op.unary.f32(i32 27, float %3063)  ; Round_ni(value)
  %3066 = call float @dx.op.unary.f32(i32 27, float %3064)  ; Round_ni(value)
  %3067 = fmul fast float %3065, 8.000000e+00
  %3068 = fmul fast float %3066, 8.000000e+00
  %3069 = fsub fast float %3061, %3067
  %3070 = fsub fast float %3062, %3068
  %3071 = fadd fast float %3069, 5.000000e-01
  %3072 = fadd fast float %3070, 5.000000e-01
  %3073 = and i32 %3028, 255
  %3074 = lshr i32 %3027, 24
  %3075 = mul nuw nsw i32 %3073, 9
  %3076 = uitofp i32 %3075 to float
  %3077 = mul nuw nsw i32 %3074, 9
  %3078 = uitofp i32 %3077 to float
  %3079 = fadd fast float %3071, %3076
  %3080 = fadd fast float %3072, %3078
  %3081 = fdiv fast float %3079, %2968
  %3082 = fdiv fast float %3080, %3058
  %3083 = fmul fast float %3057, 4.375000e-01
  %3084 = fadd fast float %3083, 3.125000e-02
  %3085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3081, float %3082, float %3084, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3086 = extractvalue %dx.types.ResRet.f32 %3085, 0
  %3087 = extractvalue %dx.types.ResRet.f32 %3085, 1
  %3088 = extractvalue %dx.types.ResRet.f32 %3085, 2
  %3089 = fadd fast float %3083, 5.312500e-01
  %3090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3081, float %3082, float %3089, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3091 = extractvalue %dx.types.ResRet.f32 %3090, 0
  %3092 = extractvalue %dx.types.ResRet.f32 %3090, 1
  %3093 = extractvalue %dx.types.ResRet.f32 %3090, 2
  %3094 = fmul fast float %3091, 2.000000e+00
  %3095 = fmul fast float %3092, 2.000000e+00
  %3096 = fmul fast float %3093, 2.000000e+00
  %3097 = fadd fast float %3094, -1.000000e+00
  %3098 = fadd fast float %3095, -1.000000e+00
  %3099 = fadd fast float %3096, -1.000000e+00
  %3100 = fmul fast float %3097, %3097
  %3101 = fmul fast float %3098, %3098
  %3102 = fadd fast float %3100, %3101
  %3103 = fmul fast float %3099, %3099
  %3104 = fadd fast float %3102, %3103
  %3105 = call float @dx.op.unary.f32(i32 24, float %3104)  ; Sqrt(value)
  %3106 = fcmp fast ogt float %3105, 0.000000e+00
  br i1 %3106, label %3107, label %3111

; <label>:3107                                    ; preds = %3030
  %3108 = fdiv fast float %3097, %3105
  %3109 = fdiv fast float %3098, %3105
  %3110 = fdiv fast float %3099, %3105
  br label %3111

; <label>:3111                                    ; preds = %3107, %3030
  %3112 = phi float [ %3108, %3107 ], [ 0.000000e+00, %3030 ]
  %3113 = phi float [ %3109, %3107 ], [ 0.000000e+00, %3030 ]
  %3114 = phi float [ %3110, %3107 ], [ 0.000000e+00, %3030 ]
  %3115 = call float @dx.op.dot3.f32(i32 55, float %3112, float %3113, float %3114, float %2793, float %2794, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %3116 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3115)  ; FMax(a,b)
  %3117 = fmul fast float %3116, 0x400C5BF8A0000000
  %3118 = fmul fast float %3086, %3006
  %3119 = fmul fast float %3118, %3117
  %3120 = fmul fast float %3087, %3006
  %3121 = fmul fast float %3120, %3117
  %3122 = fmul fast float %3088, %3006
  %3123 = fmul fast float %3122, %3117
  %3124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3125 = extractvalue %dx.types.CBufRet.f32 %3124, 3
  %3126 = fmul fast float %3119, %3125
  %3127 = fmul fast float %3121, %3125
  %3128 = fmul fast float %3123, %3125
  %3129 = fcmp fast ogt float %2973, %3053
  br i1 %3129, label %3130, label %3139

; <label>:3130                                    ; preds = %3111
  %3131 = fmul fast float %3055, 0x3FC24924A0000000
  %3132 = fsub fast float %2973, %3053
  %3133 = fdiv fast float %3132, %3131
  %3134 = call float @dx.op.unary.f32(i32 7, float %3133)  ; Saturate(value)
  %3135 = fsub fast float 1.000000e+00, %3134
  %3136 = fmul fast float %3135, %3126
  %3137 = fmul fast float %3135, %3127
  %3138 = fmul fast float %3135, %3128
  br label %3139

; <label>:3139                                    ; preds = %3130, %3111, %3016, %2971
  %3140 = phi float [ %3138, %3130 ], [ %3128, %3111 ], [ 0.000000e+00, %3016 ], [ 0.000000e+00, %2971 ]
  %3141 = phi float [ %3137, %3130 ], [ %3127, %3111 ], [ 0.000000e+00, %3016 ], [ 0.000000e+00, %2971 ]
  %3142 = phi float [ %3136, %3130 ], [ %3126, %3111 ], [ 0.000000e+00, %3016 ], [ 0.000000e+00, %2971 ]
  %3143 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3142)  ; FMax(a,b)
  %3144 = fmul fast float %3143, 0x3FD20DD760000000
  %3145 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2809, float %2810, float %2811)  ; Dot3(ax,ay,az,bx,by,bz)
  %3146 = fmul fast float %3145, 0x3FDF454380000000
  %3147 = fmul fast float %3145, %3145
  %3148 = fmul fast float %3147, 0x3FEE471020000000
  %3149 = fadd fast float %3148, 0xBFD42F6020000000
  %3150 = call float @dx.op.dot3.f32(i32 55, float %3143, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3146, float %3149)  ; Dot3(ax,ay,az,bx,by,bz)
  %3151 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3141)  ; FMax(a,b)
  %3152 = fmul fast float %3151, 0x3FD20DD760000000
  %3153 = call float @dx.op.dot3.f32(i32 55, float %3151, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3146, float %3149)  ; Dot3(ax,ay,az,bx,by,bz)
  %3154 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3140)  ; FMax(a,b)
  %3155 = fmul fast float %3154, 0x3FD20DD760000000
  %3156 = call float @dx.op.dot3.f32(i32 55, float %3154, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3146, float %3149)  ; Dot3(ax,ay,az,bx,by,bz)
  %3157 = call float @dx.op.binary.f32(i32 35, float %3144, float 0.000000e+00)  ; FMax(a,b)
  %3158 = call float @dx.op.binary.f32(i32 35, float %3152, float 0.000000e+00)  ; FMax(a,b)
  %3159 = call float @dx.op.binary.f32(i32 35, float %3155, float 0.000000e+00)  ; FMax(a,b)
  %3160 = call float @dx.op.binary.f32(i32 35, float %3150, float 0.000000e+00)  ; FMax(a,b)
  %3161 = call float @dx.op.binary.f32(i32 35, float %3153, float 0.000000e+00)  ; FMax(a,b)
  %3162 = call float @dx.op.binary.f32(i32 35, float %3156, float 0.000000e+00)  ; FMax(a,b)
  %3163 = fmul fast float %3157, %2860
  %3164 = fmul fast float %3158, %2860
  %3165 = fmul fast float %3159, %2860
  %3166 = fadd fast float %3163, %2964
  %3167 = fadd fast float %3164, %2965
  %3168 = fadd fast float %3165, %2966
  %3169 = fmul fast float %3160, %2860
  %3170 = fmul fast float %3161, %2860
  %3171 = fmul fast float %3162, %2860
  %3172 = fadd fast float %3169, %2961
  %3173 = fadd fast float %3170, %2962
  %3174 = fadd fast float %3171, %2963
  br label %3175

; <label>:3175                                    ; preds = %3139, %2960
  %3176 = phi float [ %3172, %3139 ], [ %2961, %2960 ]
  %3177 = phi float [ %3173, %3139 ], [ %2962, %2960 ]
  %3178 = phi float [ %3174, %3139 ], [ %2963, %2960 ]
  %3179 = phi float [ %3166, %3139 ], [ %2964, %2960 ]
  %3180 = phi float [ %3167, %3139 ], [ %2965, %2960 ]
  %3181 = phi float [ %3168, %3139 ], [ %2966, %2960 ]
  %3182 = fcmp fast olt float %2860, 1.000000e+00
  br i1 %3182, label %3183, label %4001, !dx.controlflow.hints !83

; <label>:3183                                    ; preds = %3175
  %3184 = extractvalue %dx.types.CBufRet.f32 %2816, 2
  %3185 = fadd fast float %3184, %119
  %3186 = fmul fast float %2793, 3.200000e+01
  %3187 = fmul fast float %2794, 3.200000e+01
  %3188 = fadd fast float %2819, %3186
  %3189 = fadd fast float %2820, %3187
  %3190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3191 = extractvalue %dx.types.CBufRet.f32 %3190, 0
  %3192 = extractvalue %dx.types.CBufRet.f32 %3190, 1
  %3193 = fsub fast float %3188, %3191
  %3194 = fsub fast float %3189, %3192
  %3195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3196 = extractvalue %dx.types.CBufRet.f32 %3195, 0
  %3197 = extractvalue %dx.types.CBufRet.f32 %3195, 1
  %3198 = fmul fast float %3193, %3196
  %3199 = fmul fast float %3194, %3197
  %3200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3201 = extractvalue %dx.types.CBufRet.f32 %3200, 0
  %3202 = fmul fast float %3198, %3201
  %3203 = extractvalue %dx.types.CBufRet.f32 %3200, 1
  %3204 = fadd fast float %3202, %3203
  %3205 = extractvalue %dx.types.CBufRet.f32 %3200, 2
  %3206 = fmul fast float %3205, %3199
  %3207 = extractvalue %dx.types.CBufRet.f32 %3200, 3
  %3208 = fadd fast float %3206, %3207
  %3209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3204, float %3208, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3210 = extractvalue %dx.types.ResRet.f32 %3209, 0
  %3211 = extractvalue %dx.types.ResRet.f32 %3209, 1
  %3212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3213 = extractvalue %dx.types.CBufRet.f32 %3212, 1
  %3214 = extractvalue %dx.types.CBufRet.f32 %3212, 0
  %3215 = fsub fast float %3213, %3214
  %3216 = fmul fast float %3215, %3210
  %3217 = fadd fast float %3216, %3214
  %3218 = extractvalue %dx.types.CBufRet.f32 %3212, 3
  %3219 = extractvalue %dx.types.CBufRet.f32 %3212, 2
  %3220 = fsub fast float %3218, %3219
  %3221 = fmul fast float %3220, %3211
  %3222 = fadd fast float %3221, %3219
  %3223 = fsub fast float %3185, %3217
  %3224 = fsub fast float %3222, %3217
  %3225 = fdiv fast float %3223, %3224
  %3226 = call float @dx.op.unary.f32(i32 7, float %3225)  ; Saturate(value)
  %3227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3228 = extractvalue %dx.types.CBufRet.f32 %3227, 0
  %3229 = fmul fast float %3228, %3226
  %3230 = extractvalue %dx.types.CBufRet.f32 %3227, 1
  %3231 = fadd fast float %3229, %3230
  %3232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %3204, float %3208, float %3231, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3233 = extractvalue %dx.types.ResRet.f32 %3232, 0
  %3234 = extractvalue %dx.types.ResRet.f32 %3232, 1
  %3235 = extractvalue %dx.types.ResRet.f32 %3232, 2
  %3236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3237 = extractvalue %dx.types.CBufRet.f32 %3236, 0
  %3238 = extractvalue %dx.types.CBufRet.f32 %3236, 1
  %3239 = extractvalue %dx.types.CBufRet.f32 %3236, 2
  %3240 = fmul fast float %3237, %3233
  %3241 = fmul fast float %3238, %3234
  %3242 = fmul fast float %3239, %3235
  %3243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3244 = extractvalue %dx.types.CBufRet.f32 %3243, 0
  %3245 = extractvalue %dx.types.CBufRet.f32 %3243, 1
  %3246 = extractvalue %dx.types.CBufRet.f32 %3243, 2
  %3247 = fadd fast float %3240, %3244
  %3248 = fadd fast float %3241, %3245
  %3249 = fadd fast float %3242, %3246
  %3250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3251 = extractvalue %dx.types.CBufRet.f32 %3250, 0
  %3252 = fmul fast float %3251, %3198
  %3253 = extractvalue %dx.types.CBufRet.f32 %3250, 1
  %3254 = fadd fast float %3252, %3253
  %3255 = extractvalue %dx.types.CBufRet.f32 %3250, 2
  %3256 = fmul fast float %3255, %3199
  %3257 = extractvalue %dx.types.CBufRet.f32 %3250, 3
  %3258 = fadd fast float %3256, %3257
  %3259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3260 = extractvalue %dx.types.CBufRet.f32 %3259, 0
  %3261 = extractvalue %dx.types.CBufRet.f32 %3259, 1
  %3262 = extractvalue %dx.types.CBufRet.f32 %3259, 2
  %3263 = extractvalue %dx.types.CBufRet.f32 %3259, 3
  %3264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3265 = extractvalue %dx.types.CBufRet.f32 %3264, 0
  %3266 = extractvalue %dx.types.CBufRet.f32 %3264, 1
  %3267 = extractvalue %dx.types.CBufRet.f32 %3264, 2
  %3268 = extractvalue %dx.types.CBufRet.f32 %3264, 3
  %3269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3254, float %3258, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3270 = extractvalue %dx.types.ResRet.f32 %3269, 0
  %3271 = extractvalue %dx.types.ResRet.f32 %3269, 1
  %3272 = extractvalue %dx.types.ResRet.f32 %3269, 2
  %3273 = extractvalue %dx.types.ResRet.f32 %3269, 3
  %3274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3254, float %3258, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3275 = extractvalue %dx.types.ResRet.f32 %3274, 0
  %3276 = extractvalue %dx.types.ResRet.f32 %3274, 1
  %3277 = extractvalue %dx.types.ResRet.f32 %3274, 2
  %3278 = extractvalue %dx.types.ResRet.f32 %3274, 3
  %3279 = fmul fast float %3270, %3247
  %3280 = fmul fast float %3275, %3247
  %3281 = fmul fast float %3277, %3247
  %3282 = fmul fast float %3273, %3247
  %3283 = fadd fast float %3279, %3260
  %3284 = fadd fast float %3280, %3261
  %3285 = fadd fast float %3281, %3262
  %3286 = fadd fast float %3282, %3263
  %3287 = fmul fast float %3271, %3247
  %3288 = fmul fast float %3276, %3247
  %3289 = fadd fast float %3287, %3265
  %3290 = fadd fast float %3288, %3266
  %3291 = fmul fast float %3272, %3247
  %3292 = fmul fast float %3278, %3247
  %3293 = fadd fast float %3291, %3267
  %3294 = fadd fast float %3292, %3268
  %3295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3254, float %3258, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3296 = extractvalue %dx.types.ResRet.f32 %3295, 0
  %3297 = extractvalue %dx.types.ResRet.f32 %3295, 1
  %3298 = extractvalue %dx.types.ResRet.f32 %3295, 2
  %3299 = extractvalue %dx.types.ResRet.f32 %3295, 3
  %3300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3254, float %3258, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3301 = extractvalue %dx.types.ResRet.f32 %3300, 0
  %3302 = extractvalue %dx.types.ResRet.f32 %3300, 1
  %3303 = extractvalue %dx.types.ResRet.f32 %3300, 2
  %3304 = extractvalue %dx.types.ResRet.f32 %3300, 3
  %3305 = fmul fast float %3296, %3248
  %3306 = fmul fast float %3301, %3248
  %3307 = fmul fast float %3303, %3248
  %3308 = fmul fast float %3299, %3248
  %3309 = fadd fast float %3283, %3305
  %3310 = fadd fast float %3284, %3306
  %3311 = fadd fast float %3285, %3307
  %3312 = fadd fast float %3286, %3308
  %3313 = fmul fast float %3297, %3248
  %3314 = fmul fast float %3302, %3248
  %3315 = fadd fast float %3289, %3313
  %3316 = fadd fast float %3290, %3314
  %3317 = fmul fast float %3298, %3248
  %3318 = fmul fast float %3304, %3248
  %3319 = fadd fast float %3293, %3317
  %3320 = fadd fast float %3294, %3318
  %3321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3254, float %3258, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3322 = extractvalue %dx.types.ResRet.f32 %3321, 0
  %3323 = extractvalue %dx.types.ResRet.f32 %3321, 1
  %3324 = extractvalue %dx.types.ResRet.f32 %3321, 2
  %3325 = extractvalue %dx.types.ResRet.f32 %3321, 3
  %3326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3254, float %3258, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3327 = extractvalue %dx.types.ResRet.f32 %3326, 0
  %3328 = extractvalue %dx.types.ResRet.f32 %3326, 1
  %3329 = extractvalue %dx.types.ResRet.f32 %3326, 2
  %3330 = extractvalue %dx.types.ResRet.f32 %3326, 3
  %3331 = fmul fast float %3322, %3249
  %3332 = fmul fast float %3327, %3249
  %3333 = fmul fast float %3329, %3249
  %3334 = fmul fast float %3325, %3249
  %3335 = fadd fast float %3309, %3331
  %3336 = fadd fast float %3310, %3332
  %3337 = fadd fast float %3311, %3333
  %3338 = fadd fast float %3312, %3334
  %3339 = fmul fast float %3323, %3249
  %3340 = fmul fast float %3328, %3249
  %3341 = fadd fast float %3315, %3339
  %3342 = fadd fast float %3316, %3340
  %3343 = fmul fast float %3324, %3249
  %3344 = fmul fast float %3330, %3249
  %3345 = fadd fast float %3319, %3343
  %3346 = fadd fast float %3320, %3344
  %3347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3348 = extractvalue %dx.types.CBufRet.f32 %3347, 0
  %3349 = fsub fast float %2819, %3348
  %3350 = fsub fast float %3191, %2819
  %3351 = call float @dx.op.binary.f32(i32 35, float %3350, float %3349)  ; FMax(a,b)
  %3352 = extractvalue %dx.types.CBufRet.f32 %3347, 1
  %3353 = fsub fast float %2820, %3352
  %3354 = fsub fast float %3192, %2820
  %3355 = call float @dx.op.binary.f32(i32 35, float %3354, float %3353)  ; FMax(a,b)
  %3356 = call float @dx.op.binary.f32(i32 35, float %3351, float %3355)  ; FMax(a,b)
  %3357 = extractvalue %dx.types.CBufRet.f32 %3195, 3
  %3358 = fmul fast float %3357, %3356
  %3359 = call float @dx.op.unary.f32(i32 7, float %3358)  ; Saturate(value)
  %3360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3361 = extractvalue %dx.types.CBufRet.f32 %3360, 0
  %3362 = extractvalue %dx.types.CBufRet.f32 %3360, 1
  %3363 = extractvalue %dx.types.CBufRet.f32 %3360, 2
  %3364 = extractvalue %dx.types.CBufRet.f32 %3360, 3
  %3365 = fsub fast float %3361, %3335
  %3366 = fsub fast float %3362, %3336
  %3367 = fsub fast float %3363, %3337
  %3368 = fsub fast float %3364, %3338
  %3369 = fmul fast float %3365, %3359
  %3370 = fmul fast float %3366, %3359
  %3371 = fmul fast float %3367, %3359
  %3372 = fmul fast float %3368, %3359
  %3373 = fadd fast float %3369, %3335
  %3374 = fadd fast float %3370, %3336
  %3375 = fadd fast float %3371, %3337
  %3376 = fadd fast float %3372, %3338
  %3377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3378 = extractvalue %dx.types.CBufRet.f32 %3377, 0
  %3379 = extractvalue %dx.types.CBufRet.f32 %3377, 1
  %3380 = fsub fast float %3378, %3341
  %3381 = fsub fast float %3379, %3342
  %3382 = fmul fast float %3380, %3359
  %3383 = fmul fast float %3381, %3359
  %3384 = fadd fast float %3382, %3341
  %3385 = fadd fast float %3383, %3342
  %3386 = extractvalue %dx.types.CBufRet.f32 %3377, 2
  %3387 = extractvalue %dx.types.CBufRet.f32 %3377, 3
  %3388 = fsub fast float %3386, %3345
  %3389 = fsub fast float %3387, %3346
  %3390 = fmul fast float %3388, %3359
  %3391 = fmul fast float %3389, %3359
  %3392 = fadd fast float %3390, %3345
  %3393 = fadd fast float %3391, %3346
  %3394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3395 = extractvalue %dx.types.CBufRet.f32 %3394, 0
  %3396 = fmul fast float %3395, %3373
  %3397 = fmul fast float %3395, %3374
  %3398 = fmul fast float %3395, %3375
  %3399 = fmul fast float %3395, %3376
  %3400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3401 = extractvalue %dx.types.CBufRet.f32 %3400, 0
  %3402 = fmul fast float %3401, %3384
  %3403 = fmul fast float %3401, %3385
  %3404 = fadd fast float %3402, %3396
  %3405 = fadd fast float %3403, %3398
  %3406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3407 = extractvalue %dx.types.CBufRet.f32 %3406, 0
  %3408 = fmul fast float %3407, %3392
  %3409 = fmul fast float %3407, %3393
  %3410 = fadd fast float %3404, %3408
  %3411 = fadd fast float %3405, %3409
  %3412 = extractvalue %dx.types.CBufRet.f32 %3394, 1
  %3413 = fmul fast float %3412, %3373
  %3414 = fmul fast float %3412, %3374
  %3415 = fmul fast float %3412, %3375
  %3416 = fmul fast float %3412, %3376
  %3417 = extractvalue %dx.types.CBufRet.f32 %3400, 1
  %3418 = fmul fast float %3417, %3384
  %3419 = fmul fast float %3417, %3385
  %3420 = fadd fast float %3418, %3413
  %3421 = fadd fast float %3419, %3415
  %3422 = extractvalue %dx.types.CBufRet.f32 %3406, 1
  %3423 = fmul fast float %3422, %3392
  %3424 = fmul fast float %3422, %3393
  %3425 = fadd fast float %3420, %3423
  %3426 = fadd fast float %3421, %3424
  %3427 = extractvalue %dx.types.CBufRet.f32 %3394, 2
  %3428 = fmul fast float %3427, %3373
  %3429 = fmul fast float %3427, %3374
  %3430 = fmul fast float %3427, %3375
  %3431 = fmul fast float %3427, %3376
  %3432 = extractvalue %dx.types.CBufRet.f32 %3400, 2
  %3433 = fmul fast float %3432, %3384
  %3434 = fmul fast float %3432, %3385
  %3435 = fadd fast float %3433, %3428
  %3436 = fadd fast float %3434, %3430
  %3437 = extractvalue %dx.types.CBufRet.f32 %3406, 2
  %3438 = fmul fast float %3437, %3392
  %3439 = fmul fast float %3437, %3393
  %3440 = fadd fast float %3435, %3438
  %3441 = fadd fast float %3436, %3439
  %3442 = fmul fast float %3429, %3429
  %3443 = fmul fast float %3441, %3441
  %3444 = fmul fast float %3431, %3431
  %3445 = fadd fast float %3444, %3442
  %3446 = fadd fast float %3445, %3443
  %3447 = call float @dx.op.unary.f32(i32 24, float %3446)  ; Sqrt(value)
  %3448 = fcmp fast ugt float %3447, 0.000000e+00
  br i1 %3448, label %3449, label %3464

; <label>:3449                                    ; preds = %3183
  %3450 = fsub fast float -0.000000e+00, %3431
  %3451 = fdiv fast float %3450, %3447
  %3452 = fsub fast float -0.000000e+00, %3429
  %3453 = fdiv fast float %3452, %3447
  %3454 = fdiv fast float %3441, %3447
  %3455 = fmul fast float %3440, 0x3FE279A760000000
  %3456 = fmul fast float %3453, %3429
  %3457 = fmul fast float %3454, %3441
  %3458 = fmul fast float %3451, %3431
  %3459 = fadd fast float %3456, %3458
  %3460 = fsub fast float %3459, %3457
  %3461 = call float @dx.op.unary.f32(i32 6, float %3460)  ; FAbs(value)
  %3462 = fadd fast float %3461, 0x3DDB7CDFE0000000
  %3463 = fdiv fast float %3455, %3462
  br label %3464

; <label>:3464                                    ; preds = %3449, %3183
  %3465 = phi float [ %3463, %3449 ], [ 1.000000e+00, %3183 ]
  %3466 = fmul fast float %3414, %3414
  %3467 = fmul fast float %3426, %3426
  %3468 = fmul fast float %3416, %3416
  %3469 = fadd fast float %3468, %3466
  %3470 = fadd fast float %3469, %3467
  %3471 = call float @dx.op.unary.f32(i32 24, float %3470)  ; Sqrt(value)
  %3472 = fcmp fast ugt float %3471, 0.000000e+00
  br i1 %3472, label %3473, label %3488

; <label>:3473                                    ; preds = %3464
  %3474 = fsub fast float -0.000000e+00, %3416
  %3475 = fdiv fast float %3474, %3471
  %3476 = fsub fast float -0.000000e+00, %3414
  %3477 = fdiv fast float %3476, %3471
  %3478 = fdiv fast float %3426, %3471
  %3479 = fmul fast float %3425, 0x3FE279A760000000
  %3480 = fmul fast float %3477, %3414
  %3481 = fmul fast float %3478, %3426
  %3482 = fmul fast float %3475, %3416
  %3483 = fadd fast float %3480, %3482
  %3484 = fsub fast float %3483, %3481
  %3485 = call float @dx.op.unary.f32(i32 6, float %3484)  ; FAbs(value)
  %3486 = fadd fast float %3485, 0x3DDB7CDFE0000000
  %3487 = fdiv fast float %3479, %3486
  br label %3488

; <label>:3488                                    ; preds = %3473, %3464
  %3489 = phi float [ %3487, %3473 ], [ 1.000000e+00, %3464 ]
  %3490 = call float @dx.op.binary.f32(i32 36, float %3489, float %3465)  ; FMin(a,b)
  %3491 = fmul fast float %3397, %3397
  %3492 = fmul fast float %3411, %3411
  %3493 = fmul fast float %3399, %3399
  %3494 = fadd fast float %3493, %3491
  %3495 = fadd fast float %3494, %3492
  %3496 = call float @dx.op.unary.f32(i32 24, float %3495)  ; Sqrt(value)
  %3497 = fcmp fast ugt float %3496, 0.000000e+00
  br i1 %3497, label %3498, label %3513

; <label>:3498                                    ; preds = %3488
  %3499 = fsub fast float -0.000000e+00, %3399
  %3500 = fdiv fast float %3499, %3496
  %3501 = fsub fast float -0.000000e+00, %3397
  %3502 = fdiv fast float %3501, %3496
  %3503 = fdiv fast float %3411, %3496
  %3504 = fmul fast float %3410, 0x3FE279A760000000
  %3505 = fmul fast float %3502, %3397
  %3506 = fmul fast float %3503, %3411
  %3507 = fmul fast float %3500, %3399
  %3508 = fadd fast float %3505, %3507
  %3509 = fsub fast float %3508, %3506
  %3510 = call float @dx.op.unary.f32(i32 6, float %3509)  ; FAbs(value)
  %3511 = fadd fast float %3510, 0x3DDB7CDFE0000000
  %3512 = fdiv fast float %3504, %3511
  br label %3513

; <label>:3513                                    ; preds = %3498, %3488
  %3514 = phi float [ %3512, %3498 ], [ 1.000000e+00, %3488 ]
  %3515 = call float @dx.op.binary.f32(i32 36, float %3514, float %3490)  ; FMin(a,b)
  %3516 = call float @dx.op.unary.f32(i32 7, float %3515)  ; Saturate(value)
  %3517 = fcmp fast olt float %3516, 1.000000e+00
  br i1 %3517, label %3518, label %3528

; <label>:3518                                    ; preds = %3513
  %3519 = fmul fast float %3516, %3397
  %3520 = fmul fast float %3516, %3411
  %3521 = fmul fast float %3516, %3399
  %3522 = fmul fast float %3516, %3414
  %3523 = fmul fast float %3516, %3426
  %3524 = fmul fast float %3516, %3416
  %3525 = fmul fast float %3516, %3429
  %3526 = fmul fast float %3516, %3441
  %3527 = fmul fast float %3516, %3431
  br label %3528

; <label>:3528                                    ; preds = %3518, %3513
  %3529 = phi float [ %3525, %3518 ], [ %3429, %3513 ]
  %3530 = phi float [ %3526, %3518 ], [ %3441, %3513 ]
  %3531 = phi float [ %3527, %3518 ], [ %3431, %3513 ]
  %3532 = phi float [ %3522, %3518 ], [ %3414, %3513 ]
  %3533 = phi float [ %3523, %3518 ], [ %3426, %3513 ]
  %3534 = phi float [ %3524, %3518 ], [ %3416, %3513 ]
  %3535 = phi float [ %3519, %3518 ], [ %3397, %3513 ]
  %3536 = phi float [ %3520, %3518 ], [ %3411, %3513 ]
  %3537 = phi float [ %3521, %3518 ], [ %3399, %3513 ]
  %3538 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3410)  ; FMax(a,b)
  %3539 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3425)  ; FMax(a,b)
  %3540 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3440)  ; FMax(a,b)
  %3541 = fcmp fast oge float %3198, 0.000000e+00
  %3542 = and i1 %3541, %2969
  %3543 = fcmp fast ole float %3198, 1.000000e+00
  %3544 = and i1 %3543, %3542
  %3545 = fcmp fast oge float %3199, 0.000000e+00
  %3546 = and i1 %3545, %3544
  %3547 = fcmp fast ole float %3199, 1.000000e+00
  %3548 = and i1 %3547, %3546
  br i1 %3548, label %3549, label %3694, !dx.controlflow.hints !84

; <label>:3549                                    ; preds = %3528
  %3550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3551 = extractvalue %dx.types.CBufRet.f32 %3550, 2
  %3552 = extractvalue %dx.types.CBufRet.f32 %3550, 3
  %3553 = fmul fast float %3551, %3198
  %3554 = fmul fast float %3552, %3199
  %3555 = call float @dx.op.unary.f32(i32 27, float %3553)  ; Round_ni(value)
  %3556 = call float @dx.op.unary.f32(i32 27, float %3554)  ; Round_ni(value)
  %3557 = fptosi float %3555 to i32
  %3558 = fptosi float %3556 to i32
  %3559 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3557, i32 %3558, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3560 = extractvalue %dx.types.ResRet.i32 %3559, 0
  %3561 = and i32 %3560, 65535
  %3562 = lshr i32 %3560, 16
  %3563 = icmp eq i32 %3561, 65535
  br i1 %3563, label %3600, label %3564

; <label>:3564                                    ; preds = %3549
  %3565 = extractvalue %dx.types.CBufRet.f32 %2967, 1
  %3566 = extractvalue %dx.types.CBufRet.f32 %3550, 0
  %3567 = extractvalue %dx.types.CBufRet.f32 %3550, 1
  %3568 = fmul fast float %3566, %3198
  %3569 = fmul fast float %3567, %3199
  %3570 = fmul fast float %3568, 1.250000e-01
  %3571 = fmul fast float %3569, 1.250000e-01
  %3572 = call float @dx.op.unary.f32(i32 27, float %3570)  ; Round_ni(value)
  %3573 = call float @dx.op.unary.f32(i32 27, float %3571)  ; Round_ni(value)
  %3574 = fmul fast float %3572, 8.000000e+00
  %3575 = fmul fast float %3573, 8.000000e+00
  %3576 = and i32 %3560, 255
  %3577 = lshr i32 %3560, 8
  %3578 = and i32 %3577, 255
  %3579 = mul nuw nsw i32 %3576, 9
  %3580 = uitofp i32 %3579 to float
  %3581 = mul nuw nsw i32 %3578, 9
  %3582 = uitofp i32 %3581 to float
  %3583 = fadd fast float %3580, 5.000000e-01
  %3584 = fadd fast float %3583, %3568
  %3585 = fsub fast float %3584, %3574
  %3586 = fadd fast float %3582, 5.000000e-01
  %3587 = fadd fast float %3586, %3569
  %3588 = fsub fast float %3587, %3575
  %3589 = fdiv fast float %3585, %2968
  %3590 = fdiv fast float %3588, %3565
  %3591 = fmul fast float %3226, 4.375000e-01
  %3592 = fadd fast float %3591, 3.125000e-02
  %3593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3589, float %3590, float %3592, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3594 = extractvalue %dx.types.ResRet.f32 %3593, 0
  %3595 = extractvalue %dx.types.ResRet.f32 %3593, 1
  %3596 = extractvalue %dx.types.ResRet.f32 %3593, 2
  %3597 = fadd fast float %3594, %3538
  %3598 = fadd fast float %3595, %3539
  %3599 = fadd fast float %3596, %3540
  br label %3600

; <label>:3600                                    ; preds = %3564, %3549
  %3601 = phi float [ %3599, %3564 ], [ %3540, %3549 ]
  %3602 = phi float [ %3598, %3564 ], [ %3539, %3549 ]
  %3603 = phi float [ %3597, %3564 ], [ %3538, %3549 ]
  %3604 = icmp eq i32 %3562, 65535
  br i1 %3604, label %3694, label %3605

; <label>:3605                                    ; preds = %3600
  %3606 = extractvalue %dx.types.CBufRet.f32 %2967, 1
  %3607 = extractvalue %dx.types.CBufRet.f32 %3550, 0
  %3608 = extractvalue %dx.types.CBufRet.f32 %3550, 1
  %3609 = fmul fast float %3607, %3198
  %3610 = fmul fast float %3608, %3199
  %3611 = fmul fast float %3609, 1.250000e-01
  %3612 = fmul fast float %3610, 1.250000e-01
  %3613 = call float @dx.op.unary.f32(i32 27, float %3611)  ; Round_ni(value)
  %3614 = call float @dx.op.unary.f32(i32 27, float %3612)  ; Round_ni(value)
  %3615 = fmul fast float %3613, 8.000000e+00
  %3616 = fmul fast float %3614, 8.000000e+00
  %3617 = fsub fast float %3609, %3615
  %3618 = fsub fast float %3610, %3616
  %3619 = fadd fast float %3617, 5.000000e-01
  %3620 = fadd fast float %3618, 5.000000e-01
  %3621 = and i32 %3562, 255
  %3622 = lshr i32 %3560, 24
  %3623 = mul nuw nsw i32 %3621, 9
  %3624 = uitofp i32 %3623 to float
  %3625 = mul nuw nsw i32 %3622, 9
  %3626 = uitofp i32 %3625 to float
  %3627 = fadd fast float %3619, %3624
  %3628 = fadd fast float %3620, %3626
  %3629 = fdiv fast float %3627, %2968
  %3630 = fdiv fast float %3628, %3606
  %3631 = fmul fast float %3226, 4.375000e-01
  %3632 = fadd fast float %3631, 3.125000e-02
  %3633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3629, float %3630, float %3632, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3634 = extractvalue %dx.types.ResRet.f32 %3633, 0
  %3635 = extractvalue %dx.types.ResRet.f32 %3633, 1
  %3636 = extractvalue %dx.types.ResRet.f32 %3633, 2
  %3637 = fadd fast float %3631, 5.312500e-01
  %3638 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3629, float %3630, float %3637, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3639 = extractvalue %dx.types.ResRet.f32 %3638, 0
  %3640 = extractvalue %dx.types.ResRet.f32 %3638, 1
  %3641 = extractvalue %dx.types.ResRet.f32 %3638, 2
  %3642 = fmul fast float %3639, 2.000000e+00
  %3643 = fmul fast float %3640, 2.000000e+00
  %3644 = fmul fast float %3641, 2.000000e+00
  %3645 = fadd fast float %3642, -1.000000e+00
  %3646 = fadd fast float %3643, -1.000000e+00
  %3647 = fadd fast float %3644, -1.000000e+00
  %3648 = fmul fast float %3645, %3645
  %3649 = fmul fast float %3646, %3646
  %3650 = fadd fast float %3648, %3649
  %3651 = fmul fast float %3647, %3647
  %3652 = fadd fast float %3650, %3651
  %3653 = call float @dx.op.unary.f32(i32 24, float %3652)  ; Sqrt(value)
  %3654 = fcmp fast ogt float %3653, 0.000000e+00
  br i1 %3654, label %3655, label %3659

; <label>:3655                                    ; preds = %3605
  %3656 = fdiv fast float %3645, %3653
  %3657 = fdiv fast float %3646, %3653
  %3658 = fdiv fast float %3647, %3653
  br label %3659

; <label>:3659                                    ; preds = %3655, %3605
  %3660 = phi float [ %3656, %3655 ], [ 0.000000e+00, %3605 ]
  %3661 = phi float [ %3657, %3655 ], [ 0.000000e+00, %3605 ]
  %3662 = phi float [ %3658, %3655 ], [ 0.000000e+00, %3605 ]
  %3663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3664 = extractvalue %dx.types.CBufRet.f32 %3663, 0
  %3665 = extractvalue %dx.types.CBufRet.f32 %3663, 1
  %3666 = fsub fast float %2819, %3664
  %3667 = fsub fast float %2820, %3665
  %3668 = fmul fast float %3666, %3666
  %3669 = fmul fast float %3667, %3667
  %3670 = fadd fast float %3668, %3669
  %3671 = call float @dx.op.unary.f32(i32 24, float %3670)  ; Sqrt(value)
  %3672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3673 = extractvalue %dx.types.CBufRet.f32 %3672, 0
  %3674 = extractvalue %dx.types.CBufRet.f32 %3672, 1
  %3675 = fsub fast float %3671, %3673
  %3676 = fdiv fast float %3675, %3674
  %3677 = call float @dx.op.unary.f32(i32 7, float %3676)  ; Saturate(value)
  %3678 = fmul fast float %3677, 2.000000e+00
  %3679 = fsub fast float 3.000000e+00, %3678
  %3680 = fmul fast float %3677, %3677
  %3681 = fmul fast float %3680, %3679
  %3682 = call float @dx.op.dot3.f32(i32 55, float %3660, float %3661, float %3662, float %2793, float %2794, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %3683 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3682)  ; FMax(a,b)
  %3684 = fmul fast float %3683, 0x400C5BF8A0000000
  %3685 = fmul fast float %3681, %3634
  %3686 = fmul fast float %3685, %3684
  %3687 = fadd fast float %3686, %3603
  %3688 = fmul fast float %3681, %3635
  %3689 = fmul fast float %3688, %3684
  %3690 = fadd fast float %3689, %3602
  %3691 = fmul fast float %3681, %3636
  %3692 = fmul fast float %3691, %3684
  %3693 = fadd fast float %3692, %3601
  br label %3694

; <label>:3694                                    ; preds = %3659, %3600, %3528
  %3695 = phi float [ %3693, %3659 ], [ %3601, %3600 ], [ %3540, %3528 ]
  %3696 = phi float [ %3690, %3659 ], [ %3602, %3600 ], [ %3539, %3528 ]
  %3697 = phi float [ %3687, %3659 ], [ %3603, %3600 ], [ %3538, %3528 ]
  %3698 = fcmp fast ogt float %3185, %3222
  %3699 = and i1 %3541, %3698
  %3700 = and i1 %3543, %3699
  %3701 = and i1 %3545, %3700
  %3702 = and i1 %3547, %3701
  br i1 %3702, label %3703, label %3760, !dx.controlflow.hints !85

; <label>:3703                                    ; preds = %3694
  %3704 = fmul fast float %3224, 0x3FC24924A0000000
  %3705 = fsub fast float %3185, %3222
  %3706 = fdiv fast float %3705, %3704
  %3707 = call float @dx.op.unary.f32(i32 7, float %3706)  ; Saturate(value)
  %3708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3709 = extractvalue %dx.types.CBufRet.f32 %3708, 0
  %3710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3711 = extractvalue %dx.types.CBufRet.f32 %3710, 0
  %3712 = extractvalue %dx.types.CBufRet.f32 %3710, 1
  %3713 = extractvalue %dx.types.CBufRet.f32 %3710, 2
  %3714 = fsub fast float %3709, %3697
  %3715 = fsub fast float %3711, %3535
  %3716 = fsub fast float %3712, %3536
  %3717 = fsub fast float %3713, %3537
  %3718 = fmul fast float %3714, %3707
  %3719 = fmul fast float %3715, %3707
  %3720 = fmul fast float %3716, %3707
  %3721 = fmul fast float %3717, %3707
  %3722 = fadd fast float %3718, %3697
  %3723 = fadd fast float %3719, %3535
  %3724 = fadd fast float %3720, %3536
  %3725 = fadd fast float %3721, %3537
  %3726 = extractvalue %dx.types.CBufRet.f32 %3708, 1
  %3727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3728 = extractvalue %dx.types.CBufRet.f32 %3727, 0
  %3729 = extractvalue %dx.types.CBufRet.f32 %3727, 1
  %3730 = extractvalue %dx.types.CBufRet.f32 %3727, 2
  %3731 = fsub fast float %3726, %3696
  %3732 = fsub fast float %3728, %3532
  %3733 = fsub fast float %3729, %3533
  %3734 = fsub fast float %3730, %3534
  %3735 = fmul fast float %3731, %3707
  %3736 = fmul fast float %3732, %3707
  %3737 = fmul fast float %3733, %3707
  %3738 = fmul fast float %3734, %3707
  %3739 = fadd fast float %3735, %3696
  %3740 = fadd fast float %3736, %3532
  %3741 = fadd fast float %3737, %3533
  %3742 = fadd fast float %3738, %3534
  %3743 = extractvalue %dx.types.CBufRet.f32 %3708, 2
  %3744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3745 = extractvalue %dx.types.CBufRet.f32 %3744, 0
  %3746 = extractvalue %dx.types.CBufRet.f32 %3744, 1
  %3747 = extractvalue %dx.types.CBufRet.f32 %3744, 2
  %3748 = fsub fast float %3743, %3695
  %3749 = fsub fast float %3745, %3529
  %3750 = fsub fast float %3746, %3530
  %3751 = fsub fast float %3747, %3531
  %3752 = fmul fast float %3748, %3707
  %3753 = fmul fast float %3749, %3707
  %3754 = fmul fast float %3750, %3707
  %3755 = fmul fast float %3751, %3707
  %3756 = fadd fast float %3752, %3695
  %3757 = fadd fast float %3753, %3529
  %3758 = fadd fast float %3754, %3530
  %3759 = fadd fast float %3755, %3531
  br label %3760

; <label>:3760                                    ; preds = %3703, %3694
  %3761 = phi float [ %3756, %3703 ], [ %3695, %3694 ]
  %3762 = phi float [ %3757, %3703 ], [ %3529, %3694 ]
  %3763 = phi float [ %3758, %3703 ], [ %3530, %3694 ]
  %3764 = phi float [ %3759, %3703 ], [ %3531, %3694 ]
  %3765 = phi float [ %3739, %3703 ], [ %3696, %3694 ]
  %3766 = phi float [ %3740, %3703 ], [ %3532, %3694 ]
  %3767 = phi float [ %3741, %3703 ], [ %3533, %3694 ]
  %3768 = phi float [ %3742, %3703 ], [ %3534, %3694 ]
  %3769 = phi float [ %3722, %3703 ], [ %3697, %3694 ]
  %3770 = phi float [ %3723, %3703 ], [ %3535, %3694 ]
  %3771 = phi float [ %3724, %3703 ], [ %3536, %3694 ]
  %3772 = phi float [ %3725, %3703 ], [ %3537, %3694 ]
  %3773 = extractvalue %dx.types.CBufRet.f32 %3347, 3
  %3774 = fmul fast float %3773, %3769
  %3775 = fmul fast float %3773, %3765
  %3776 = fmul fast float %3773, %3761
  %3777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3778 = extractvalue %dx.types.CBufRet.f32 %3777, 3
  %3779 = fmul fast float %3774, %3778
  %3780 = fmul fast float %3775, %3778
  %3781 = fmul fast float %3776, %3778
  %3782 = fmul fast float %3770, 1.500000e+00
  %3783 = fmul fast float %3782, %3773
  %3784 = fmul fast float %3783, %3778
  %3785 = fmul fast float %3771, 1.500000e+00
  %3786 = fmul fast float %3785, %3773
  %3787 = fmul fast float %3786, %3778
  %3788 = fmul fast float %3772, 1.500000e+00
  %3789 = fmul fast float %3788, %3773
  %3790 = fmul fast float %3789, %3778
  %3791 = fmul fast float %3766, 1.500000e+00
  %3792 = fmul fast float %3791, %3773
  %3793 = fmul fast float %3792, %3778
  %3794 = fmul fast float %3767, 1.500000e+00
  %3795 = fmul fast float %3794, %3773
  %3796 = fmul fast float %3795, %3778
  %3797 = fmul fast float %3768, 1.500000e+00
  %3798 = fmul fast float %3797, %3773
  %3799 = fmul fast float %3798, %3778
  %3800 = fmul fast float %3762, 1.500000e+00
  %3801 = fmul fast float %3800, %3773
  %3802 = fmul fast float %3801, %3778
  %3803 = fmul fast float %3763, 1.500000e+00
  %3804 = fmul fast float %3803, %3773
  %3805 = fmul fast float %3804, %3778
  %3806 = fmul fast float %3764, 1.500000e+00
  %3807 = fmul fast float %3806, %3773
  %3808 = fmul fast float %3807, %3778
  %3809 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3779)  ; FMax(a,b)
  %3810 = call float @dx.op.dot3.f32(i32 55, float %3784, float %3787, float %3790, float %3784, float %3787, float %3790)  ; Dot3(ax,ay,az,bx,by,bz)
  %3811 = fcmp fast oeq float %3810, 0.000000e+00
  %3812 = fcmp fast oeq float %3809, 0.000000e+00
  %3813 = or i1 %3812, %3811
  br i1 %3813, label %3843, label %3814

; <label>:3814                                    ; preds = %3760
  %3815 = fsub fast float -0.000000e+00, %3790
  %3816 = fsub fast float -0.000000e+00, %3784
  %3817 = call float @dx.op.unary.f32(i32 24, float %3810)  ; Sqrt(value)
  %3818 = fdiv fast float %3817, %3809
  %3819 = fcmp fast ogt float %3818, 0x3FFB6F8900000000
  %3820 = select i1 %3819, float 0x3FFB6F8900000000, float %3818
  %3821 = fmul fast float %3820, 0x3FE8A23460000000
  %3822 = call float @dx.op.unary.f32(i32 7, float %3821)  ; Saturate(value)
  %3823 = call float @dx.op.binary.f32(i32 35, float %3820, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3824 = fmul fast float %3822, %3809
  %3825 = fmul fast float %3823, 0x3FF279A740000000
  %3826 = fadd fast float %3825, -1.000000e+00
  %3827 = call float @dx.op.dot3.f32(i32 55, float %3815, float %3816, float %3787, float %3815, float %3816, float %3787)  ; Dot3(ax,ay,az,bx,by,bz)
  %3828 = call float @dx.op.unary.f32(i32 25, float %3827)  ; Rsqrt(value)
  %3829 = fmul fast float %3828, %3815
  %3830 = fmul fast float %3828, %3816
  %3831 = fmul fast float %3828, %3787
  %3832 = fmul fast float %3826, %3826
  %3833 = fsub fast float 1.000000e+00, %3832
  %3834 = fmul fast float %3823, 0x40005F8BE0000000
  %3835 = fsub fast float 0x400C5BF8A0000000, %3834
  %3836 = fdiv fast float %3824, %3835
  %3837 = fmul fast float %3836, 0x3FEE31C3C0000000
  %3838 = fmul fast float %3837, %3833
  %3839 = fmul fast float %3823, 0x3FDACB7480000000
  %3840 = fadd fast float %3839, 0xBFD7347680000000
  %3841 = fmul fast float %3840, %3836
  %3842 = fmul fast float %3841, %3833
  br label %3843

; <label>:3843                                    ; preds = %3814, %3760
  %3844 = phi float [ %3829, %3814 ], [ 0.000000e+00, %3760 ]
  %3845 = phi float [ %3830, %3814 ], [ 0.000000e+00, %3760 ]
  %3846 = phi float [ %3831, %3814 ], [ 0.000000e+00, %3760 ]
  %3847 = phi float [ %3838, %3814 ], [ 0.000000e+00, %3760 ]
  %3848 = phi float [ %3842, %3814 ], [ 0.000000e+00, %3760 ]
  %3849 = call float @dx.op.dot3.f32(i32 55, float %3844, float %3845, float %3846, float %2793, float %2794, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %3850 = fmul fast float %3849, %3849
  %3851 = fmul fast float %3850, 0x3FEE471020000000
  %3852 = fadd fast float %3851, 0xBFD42F6020000000
  %3853 = fmul fast float %3809, 0x3FD20DD760000000
  %3854 = fmul fast float %3852, %3848
  %3855 = fmul fast float %3847, 0x3FDF454380000000
  %3856 = fmul fast float %3855, %3849
  %3857 = fadd fast float %3856, %3853
  %3858 = fadd fast float %3857, %3854
  %3859 = call float @dx.op.dot3.f32(i32 55, float %3844, float %3845, float %3846, float %2809, float %2810, float %2811)  ; Dot3(ax,ay,az,bx,by,bz)
  %3860 = fmul fast float %3859, 0x3FDF454380000000
  %3861 = fmul fast float %3859, %3859
  %3862 = fmul fast float %3861, 0x3FEE471020000000
  %3863 = fadd fast float %3862, 0xBFD42F6020000000
  %3864 = call float @dx.op.dot3.f32(i32 55, float %3809, float %3847, float %3848, float 0x3FD20DD760000000, float %3860, float %3863)  ; Dot3(ax,ay,az,bx,by,bz)
  %3865 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3780)  ; FMax(a,b)
  %3866 = call float @dx.op.dot3.f32(i32 55, float %3793, float %3796, float %3799, float %3793, float %3796, float %3799)  ; Dot3(ax,ay,az,bx,by,bz)
  %3867 = fcmp fast oeq float %3866, 0.000000e+00
  %3868 = fcmp fast oeq float %3865, 0.000000e+00
  %3869 = or i1 %3868, %3867
  br i1 %3869, label %3899, label %3870

; <label>:3870                                    ; preds = %3843
  %3871 = fsub fast float -0.000000e+00, %3799
  %3872 = fsub fast float -0.000000e+00, %3793
  %3873 = call float @dx.op.unary.f32(i32 24, float %3866)  ; Sqrt(value)
  %3874 = fdiv fast float %3873, %3865
  %3875 = fcmp fast ogt float %3874, 0x3FFB6F8900000000
  %3876 = select i1 %3875, float 0x3FFB6F8900000000, float %3874
  %3877 = fmul fast float %3876, 0x3FE8A23460000000
  %3878 = call float @dx.op.unary.f32(i32 7, float %3877)  ; Saturate(value)
  %3879 = call float @dx.op.binary.f32(i32 35, float %3876, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3880 = fmul fast float %3878, %3865
  %3881 = fmul fast float %3879, 0x3FF279A740000000
  %3882 = fadd fast float %3881, -1.000000e+00
  %3883 = call float @dx.op.dot3.f32(i32 55, float %3871, float %3872, float %3796, float %3871, float %3872, float %3796)  ; Dot3(ax,ay,az,bx,by,bz)
  %3884 = call float @dx.op.unary.f32(i32 25, float %3883)  ; Rsqrt(value)
  %3885 = fmul fast float %3884, %3871
  %3886 = fmul fast float %3884, %3872
  %3887 = fmul fast float %3884, %3796
  %3888 = fmul fast float %3882, %3882
  %3889 = fsub fast float 1.000000e+00, %3888
  %3890 = fmul fast float %3879, 0x40005F8BE0000000
  %3891 = fsub fast float 0x400C5BF8A0000000, %3890
  %3892 = fdiv fast float %3880, %3891
  %3893 = fmul fast float %3892, 0x3FEE31C3C0000000
  %3894 = fmul fast float %3893, %3889
  %3895 = fmul fast float %3879, 0x3FDACB7480000000
  %3896 = fadd fast float %3895, 0xBFD7347680000000
  %3897 = fmul fast float %3896, %3892
  %3898 = fmul fast float %3897, %3889
  br label %3899

; <label>:3899                                    ; preds = %3870, %3843
  %3900 = phi float [ %3885, %3870 ], [ 0.000000e+00, %3843 ]
  %3901 = phi float [ %3886, %3870 ], [ 0.000000e+00, %3843 ]
  %3902 = phi float [ %3887, %3870 ], [ 0.000000e+00, %3843 ]
  %3903 = phi float [ %3894, %3870 ], [ 0.000000e+00, %3843 ]
  %3904 = phi float [ %3898, %3870 ], [ 0.000000e+00, %3843 ]
  %3905 = call float @dx.op.dot3.f32(i32 55, float %3900, float %3901, float %3902, float %2793, float %2794, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %3906 = fmul fast float %3905, %3905
  %3907 = fmul fast float %3906, 0x3FEE471020000000
  %3908 = fadd fast float %3907, 0xBFD42F6020000000
  %3909 = fmul fast float %3865, 0x3FD20DD760000000
  %3910 = fmul fast float %3908, %3904
  %3911 = fmul fast float %3903, 0x3FDF454380000000
  %3912 = fmul fast float %3911, %3905
  %3913 = fadd fast float %3912, %3909
  %3914 = fadd fast float %3913, %3910
  %3915 = call float @dx.op.dot3.f32(i32 55, float %3900, float %3901, float %3902, float %2809, float %2810, float %2811)  ; Dot3(ax,ay,az,bx,by,bz)
  %3916 = fmul fast float %3915, 0x3FDF454380000000
  %3917 = fmul fast float %3915, %3915
  %3918 = fmul fast float %3917, 0x3FEE471020000000
  %3919 = fadd fast float %3918, 0xBFD42F6020000000
  %3920 = call float @dx.op.dot3.f32(i32 55, float %3865, float %3903, float %3904, float 0x3FD20DD760000000, float %3916, float %3919)  ; Dot3(ax,ay,az,bx,by,bz)
  %3921 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3781)  ; FMax(a,b)
  %3922 = call float @dx.op.dot3.f32(i32 55, float %3802, float %3805, float %3808, float %3802, float %3805, float %3808)  ; Dot3(ax,ay,az,bx,by,bz)
  %3923 = fcmp fast oeq float %3922, 0.000000e+00
  %3924 = fcmp fast oeq float %3921, 0.000000e+00
  %3925 = or i1 %3924, %3923
  br i1 %3925, label %3955, label %3926

; <label>:3926                                    ; preds = %3899
  %3927 = fsub fast float -0.000000e+00, %3808
  %3928 = fsub fast float -0.000000e+00, %3802
  %3929 = call float @dx.op.unary.f32(i32 24, float %3922)  ; Sqrt(value)
  %3930 = fdiv fast float %3929, %3921
  %3931 = fcmp fast ogt float %3930, 0x3FFB6F8900000000
  %3932 = select i1 %3931, float 0x3FFB6F8900000000, float %3930
  %3933 = fmul fast float %3932, 0x3FE8A23460000000
  %3934 = call float @dx.op.unary.f32(i32 7, float %3933)  ; Saturate(value)
  %3935 = call float @dx.op.binary.f32(i32 35, float %3932, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3936 = fmul fast float %3934, %3921
  %3937 = fmul fast float %3935, 0x3FF279A740000000
  %3938 = fadd fast float %3937, -1.000000e+00
  %3939 = call float @dx.op.dot3.f32(i32 55, float %3927, float %3928, float %3805, float %3927, float %3928, float %3805)  ; Dot3(ax,ay,az,bx,by,bz)
  %3940 = call float @dx.op.unary.f32(i32 25, float %3939)  ; Rsqrt(value)
  %3941 = fmul fast float %3940, %3927
  %3942 = fmul fast float %3940, %3928
  %3943 = fmul fast float %3940, %3805
  %3944 = fmul fast float %3938, %3938
  %3945 = fsub fast float 1.000000e+00, %3944
  %3946 = fmul fast float %3935, 0x40005F8BE0000000
  %3947 = fsub fast float 0x400C5BF8A0000000, %3946
  %3948 = fdiv fast float %3936, %3947
  %3949 = fmul fast float %3948, 0x3FEE31C3C0000000
  %3950 = fmul fast float %3949, %3945
  %3951 = fmul fast float %3935, 0x3FDACB7480000000
  %3952 = fadd fast float %3951, 0xBFD7347680000000
  %3953 = fmul fast float %3952, %3948
  %3954 = fmul fast float %3953, %3945
  br label %3955

; <label>:3955                                    ; preds = %3926, %3899
  %3956 = phi float [ %3941, %3926 ], [ 0.000000e+00, %3899 ]
  %3957 = phi float [ %3942, %3926 ], [ 0.000000e+00, %3899 ]
  %3958 = phi float [ %3943, %3926 ], [ 0.000000e+00, %3899 ]
  %3959 = phi float [ %3950, %3926 ], [ 0.000000e+00, %3899 ]
  %3960 = phi float [ %3954, %3926 ], [ 0.000000e+00, %3899 ]
  %3961 = call float @dx.op.dot3.f32(i32 55, float %3956, float %3957, float %3958, float %2793, float %2794, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %3962 = fmul fast float %3961, %3961
  %3963 = fmul fast float %3962, 0x3FEE471020000000
  %3964 = fadd fast float %3963, 0xBFD42F6020000000
  %3965 = fmul fast float %3921, 0x3FD20DD760000000
  %3966 = fmul fast float %3964, %3960
  %3967 = fmul fast float %3959, 0x3FDF454380000000
  %3968 = fmul fast float %3967, %3961
  %3969 = fadd fast float %3968, %3965
  %3970 = fadd fast float %3969, %3966
  %3971 = call float @dx.op.dot3.f32(i32 55, float %3956, float %3957, float %3958, float %2809, float %2810, float %2811)  ; Dot3(ax,ay,az,bx,by,bz)
  %3972 = fmul fast float %3971, 0x3FDF454380000000
  %3973 = fmul fast float %3971, %3971
  %3974 = fmul fast float %3973, 0x3FEE471020000000
  %3975 = fadd fast float %3974, 0xBFD42F6020000000
  %3976 = call float @dx.op.dot3.f32(i32 55, float %3921, float %3959, float %3960, float 0x3FD20DD760000000, float %3972, float %3975)  ; Dot3(ax,ay,az,bx,by,bz)
  %3977 = call float @dx.op.binary.f32(i32 35, float %3858, float 0.000000e+00)  ; FMax(a,b)
  %3978 = call float @dx.op.binary.f32(i32 35, float %3914, float 0.000000e+00)  ; FMax(a,b)
  %3979 = call float @dx.op.binary.f32(i32 35, float %3970, float 0.000000e+00)  ; FMax(a,b)
  %3980 = call float @dx.op.binary.f32(i32 35, float %3864, float 0.000000e+00)  ; FMax(a,b)
  %3981 = call float @dx.op.binary.f32(i32 35, float %3920, float 0.000000e+00)  ; FMax(a,b)
  %3982 = call float @dx.op.binary.f32(i32 35, float %3976, float 0.000000e+00)  ; FMax(a,b)
  %3983 = fsub fast float %3179, %3977
  %3984 = fsub fast float %3180, %3978
  %3985 = fsub fast float %3181, %3979
  %3986 = fmul fast float %3983, %2860
  %3987 = fmul fast float %3984, %2860
  %3988 = fmul fast float %3985, %2860
  %3989 = fadd fast float %3986, %3977
  %3990 = fadd fast float %3987, %3978
  %3991 = fadd fast float %3988, %3979
  %3992 = fsub fast float %3176, %3980
  %3993 = fsub fast float %3177, %3981
  %3994 = fsub fast float %3178, %3982
  %3995 = fmul fast float %3992, %2860
  %3996 = fmul fast float %3993, %2860
  %3997 = fmul fast float %3994, %2860
  %3998 = fadd fast float %3995, %3980
  %3999 = fadd fast float %3996, %3981
  %4000 = fadd fast float %3997, %3982
  br label %4001

; <label>:4001                                    ; preds = %3955, %3175
  %4002 = phi float [ %3998, %3955 ], [ %3176, %3175 ]
  %4003 = phi float [ %3999, %3955 ], [ %3177, %3175 ]
  %4004 = phi float [ %4000, %3955 ], [ %3178, %3175 ]
  %4005 = phi float [ %3989, %3955 ], [ %3179, %3175 ]
  %4006 = phi float [ %3990, %3955 ], [ %3180, %3175 ]
  %4007 = phi float [ %3991, %3955 ], [ %3181, %3175 ]
  %4008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4009 = extractvalue %dx.types.CBufRet.f32 %4008, 0
  %4010 = call float @dx.op.binary.f32(i32 36, float %2796, float %4009)  ; FMin(a,b)
  %4011 = fsub fast float 1.000000e+00, %2812
  %4012 = fmul fast float %4010, %4011
  %4013 = fsub fast float 1.000000e+00, %4012
  %4014 = bitcast float %4013 to i32
  %4015 = sub nsw i32 2129859010, %4014
  %4016 = bitcast i32 %4015 to float
  %4017 = call float @dx.op.binary.f32(i32 36, float %2797, float %4009)  ; FMin(a,b)
  %4018 = fmul fast float %4017, %4011
  %4019 = fsub fast float 1.000000e+00, %4018
  %4020 = bitcast float %4019 to i32
  %4021 = sub nsw i32 2129859010, %4020
  %4022 = bitcast i32 %4021 to float
  %4023 = call float @dx.op.binary.f32(i32 36, float %2798, float %4009)  ; FMin(a,b)
  %4024 = fmul fast float %4023, %4011
  %4025 = fsub fast float 1.000000e+00, %4024
  %4026 = bitcast float %4025 to i32
  %4027 = sub nsw i32 2129859010, %4026
  %4028 = bitcast i32 %4027 to float
  %4029 = fmul fast float %4005, %2812
  %4030 = fmul fast float %4029, %4016
  %4031 = fmul fast float %4006, %2812
  %4032 = fmul fast float %4031, %4022
  %4033 = fmul fast float %4007, %2812
  %4034 = fmul fast float %4033, %4028
  %4035 = call float @dx.op.binary.f32(i32 36, float %2790, float %4009)  ; FMin(a,b)
  %4036 = fmul fast float %4035, %4011
  %4037 = fsub fast float 1.000000e+00, %4036
  %4038 = bitcast float %4037 to i32
  %4039 = sub nsw i32 2129859010, %4038
  %4040 = bitcast i32 %4039 to float
  %4041 = call float @dx.op.binary.f32(i32 36, float %2791, float %4009)  ; FMin(a,b)
  %4042 = fmul fast float %4041, %4011
  %4043 = fsub fast float 1.000000e+00, %4042
  %4044 = bitcast float %4043 to i32
  %4045 = sub nsw i32 2129859010, %4044
  %4046 = bitcast i32 %4045 to float
  %4047 = call float @dx.op.binary.f32(i32 36, float %2801, float %4009)  ; FMin(a,b)
  %4048 = fmul fast float %4047, %4011
  %4049 = fsub fast float 1.000000e+00, %4048
  %4050 = bitcast float %4049 to i32
  %4051 = sub nsw i32 2129859010, %4050
  %4052 = bitcast i32 %4051 to float
  %4053 = fmul fast float %4002, %2812
  %4054 = fmul fast float %4053, %4040
  %4055 = fmul fast float %4003, %2812
  %4056 = fmul fast float %4055, %4046
  %4057 = fmul fast float %4004, %2812
  %4058 = fmul fast float %4057, %4052
  %4059 = call float @dx.op.dot3.f32(i32 55, float %4030, float %4032, float %4034, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4060 = select i1 %188, float 0.000000e+00, float %4030
  %4061 = select i1 %188, float %4059, float %4032
  %4062 = select i1 %188, float 0.000000e+00, float %4034
  %4063 = call float @dx.op.dot3.f32(i32 55, float %4054, float %4056, float %4058, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4064 = select i1 %188, float 0.000000e+00, float %4054
  %4065 = select i1 %188, float %4063, float %4056
  %4066 = select i1 %188, float 0.000000e+00, float %4058
  %4067 = fmul fast float %2803, 9.843750e-01
  %4068 = fmul fast float %2799, 9.843750e-01
  %4069 = fadd fast float %4067, 7.812500e-03
  %4070 = fadd fast float %4068, 7.812500e-03
  %4071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4069, float %4070, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4072 = extractvalue %dx.types.ResRet.f32 %4071, 2
  %4073 = extractvalue %dx.types.ResRet.f32 %4071, 3
  %4074 = fmul fast float %4072, %2790
  %4075 = fmul fast float %4072, %2791
  %4076 = fmul fast float %4072, %2801
  %4077 = fadd fast float %4074, %4073
  %4078 = fadd fast float %4075, %4073
  %4079 = fadd fast float %4076, %4073
  %4080 = fcmp fast ogt float %2167, 0.000000e+00
  br i1 %4080, label %4081, label %4107

; <label>:4081                                    ; preds = %4001
  %4082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2167, float %2803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4083 = extractvalue %dx.types.ResRet.f32 %4082, 0
  %4084 = extractvalue %dx.types.ResRet.f32 %4082, 1
  %4085 = extractvalue %dx.types.ResRet.f32 %4082, 2
  %4086 = fadd fast float %4083, -5.000000e-01
  %4087 = fadd fast float %4084, -5.000000e-01
  %4088 = fadd fast float %4085, -5.000000e-01
  %4089 = fsub fast float 1.000000e+00, %2790
  %4090 = fsub fast float 1.000000e+00, %2791
  %4091 = fsub fast float 1.000000e+00, %2801
  %4092 = fmul fast float %2790, 4.000000e+00
  %4093 = fmul fast float %4092, %4089
  %4094 = fmul fast float %4093, %4086
  %4095 = fmul fast float %2791, 4.000000e+00
  %4096 = fmul fast float %4095, %4090
  %4097 = fmul fast float %4096, %4087
  %4098 = fmul fast float %2801, 4.000000e+00
  %4099 = fmul fast float %4098, %4091
  %4100 = fmul fast float %4099, %4088
  %4101 = fadd fast float %4094, %4077
  %4102 = fadd fast float %4097, %4078
  %4103 = fadd fast float %4100, %4079
  %4104 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4105 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  %4106 = call float @dx.op.unary.f32(i32 7, float %4103)  ; Saturate(value)
  br label %4107

; <label>:4107                                    ; preds = %4081, %4001
  %4108 = phi float [ %4104, %4081 ], [ %4077, %4001 ]
  %4109 = phi float [ %4105, %4081 ], [ %4078, %4001 ]
  %4110 = phi float [ %4106, %4081 ], [ %4079, %4001 ]
  %4111 = call float @dx.op.binary.f32(i32 35, float %4109, float %4110)  ; FMax(a,b)
  %4112 = call float @dx.op.binary.f32(i32 35, float %4108, float %4111)  ; FMax(a,b)
  %4113 = fsub fast float 1.000000e+00, %4112
  %4114 = fmul fast float %4113, %4060
  %4115 = fmul fast float %4113, %4061
  %4116 = fmul fast float %4113, %4062
  %4117 = call float @dx.op.dot3.f32(i32 55, float %2796, float %2797, float %2798, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4118 = fcmp fast ogt float %4117, 0x3E7FF19E20000000
  %4119 = fdiv fast float 1.000000e+00, %4117
  %4120 = select i1 %4118, float %4119, float 0.000000e+00
  %4121 = fmul fast float %4120, %2796
  %4122 = fmul fast float %4120, %2797
  %4123 = fmul fast float %4120, %2798
  %4124 = fadd fast float %4121, -1.000000e+00
  %4125 = fadd fast float %4122, -1.000000e+00
  %4126 = fadd fast float %4123, -1.000000e+00
  %4127 = fmul fast float %4124, 5.000000e-01
  %4128 = fmul fast float %4125, 5.000000e-01
  %4129 = fmul fast float %4126, 5.000000e-01
  %4130 = fadd fast float %4127, 1.000000e+00
  %4131 = fadd fast float %4128, 1.000000e+00
  %4132 = fadd fast float %4129, 1.000000e+00
  %4133 = fmul fast float %4108, %4064
  %4134 = fmul fast float %4109, %4065
  %4135 = fmul fast float %4110, %4066
  %4136 = fsub fast float 1.000000e+00, %2803
  %4137 = bitcast float %4136 to i32
  %4138 = sitofp i32 %4137 to float
  %4139 = fmul fast float %4138, 5.000000e+00
  %4140 = fadd fast float %4139, 0xC1EFBF8940000000
  %4141 = fptosi float %4140 to i32
  %4142 = bitcast i32 %4141 to float
  %4143 = fmul fast float %4142, %2166
  %4144 = fmul fast float %4060, %4143
  %4145 = fmul fast float %4144, %4113
  %4146 = fmul fast float %4145, %4130
  %4147 = fmul fast float %4061, %4143
  %4148 = fmul fast float %4147, %4113
  %4149 = fmul fast float %4148, %4131
  %4150 = fmul fast float %4062, %4143
  %4151 = fmul fast float %4150, %4113
  %4152 = fmul fast float %4151, %4132
  %4153 = fmul fast float %4114, %2187
  %4154 = fmul fast float %4115, %2187
  %4155 = fmul fast float %4116, %2187
  %4156 = fadd fast float %4133, %2168
  %4157 = fadd fast float %4156, %4146
  %4158 = fmul fast float %4157, %2187
  %4159 = fadd fast float %4134, %2169
  %4160 = fadd fast float %4159, %4149
  %4161 = fmul fast float %4160, %2187
  %4162 = fadd fast float %4135, %2170
  %4163 = fadd fast float %4162, %4152
  %4164 = fmul fast float %4163, %2187
  %4165 = bitcast i32 %2815 to float
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 3
  %4168 = fcmp fast oeq float %4167, 0.000000e+00
  br i1 %4168, label %4403, label %4169

; <label>:4169                                    ; preds = %4107
  %4170 = extractvalue %dx.types.CBufRet.f32 %4166, 0
  %4171 = extractvalue %dx.types.CBufRet.f32 %4166, 1
  %4172 = extractvalue %dx.types.CBufRet.f32 %4166, 2
  %4173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.f32 %4173, 3
  %4175 = extractvalue %dx.types.CBufRet.f32 %4173, 0
  %4176 = extractvalue %dx.types.CBufRet.f32 %4173, 1
  %4177 = extractvalue %dx.types.CBufRet.f32 %4173, 2
  %4178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.f32 %4178, 0
  %4180 = extractvalue %dx.types.CBufRet.f32 %4178, 1
  %4181 = call float @dx.op.dot3.f32(i32 55, float %4175, float %4176, float %4177, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4182 = select i1 %188, float %4179, float %4175
  %4183 = select i1 %188, float %4181, float %4176
  %4184 = select i1 %188, float %4180, float %4177
  %4185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4186 = extractvalue %dx.types.CBufRet.f32 %4185, 1
  %4187 = fcmp fast une float %4186, 0.000000e+00
  br i1 %4187, label %4188, label %4205

; <label>:4188                                    ; preds = %4169
  %4189 = fptoui float %70 to i32
  %4190 = fptoui float %71 to i32
  %4191 = lshr i32 %4189, 4
  %4192 = lshr i32 %4190, 4
  %4193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.f32 %4193, 0
  %4195 = fptoui float %4194 to i32
  %4196 = add i32 %4195, 15
  %4197 = lshr i32 %4196, 4
  %4198 = mul i32 %4197, %4192
  %4199 = add i32 %4198, %4191
  %4200 = shl i32 %4199, 3
  %4201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4200, i32 undef)  ; BufferLoad(srv,index,wot)
  %4202 = extractvalue %dx.types.ResRet.i32 %4201, 0
  %4203 = and i32 %4202, -268435456
  %4204 = icmp eq i32 %4203, -1342177280
  br i1 %4204, label %4215, label %4205

; <label>:4205                                    ; preds = %4188, %4169
  %4206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4207 = extractvalue %dx.types.CBufRet.f32 %4206, 2
  %4208 = extractvalue %dx.types.CBufRet.f32 %4206, 3
  %4209 = fmul fast float %4207, %70
  %4210 = fmul fast float %4208, %71
  %4211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %4209, float %4210, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4212 = extractvalue %dx.types.ResRet.f32 %4211, 0
  %4213 = extractvalue %dx.types.ResRet.f32 %4211, 1
  %4214 = extractvalue %dx.types.ResRet.f32 %4211, 2
  br label %4215

; <label>:4215                                    ; preds = %4205, %4188
  %4216 = phi float [ %4212, %4205 ], [ 0.000000e+00, %4188 ]
  %4217 = phi float [ %4213, %4205 ], [ 0.000000e+00, %4188 ]
  %4218 = phi float [ %4214, %4205 ], [ 0.000000e+00, %4188 ]
  %4219 = call float @dx.op.binary.f32(i32 36, float %4217, float %4218)  ; FMin(a,b)
  %4220 = call float @dx.op.binary.f32(i32 36, float %4216, float %4219)  ; FMin(a,b)
  %4221 = fcmp fast ogt float %4220, 0.000000e+00
  br i1 %4221, label %4222, label %4403, !dx.controlflow.hints !86

; <label>:4222                                    ; preds = %4215
  %4223 = fmul fast float %4216, %4182
  %4224 = fmul fast float %4217, %4183
  %4225 = fmul fast float %4218, %4184
  %4226 = fsub fast float %4170, %2789
  %4227 = fsub fast float %4171, %2788
  %4228 = fsub fast float %4172, %2787
  %4229 = call float @dx.op.dot3.f32(i32 55, float %4226, float %4227, float %4228, float %4226, float %4227, float %4228)  ; Dot3(ax,ay,az,bx,by,bz)
  %4230 = call float @dx.op.unary.f32(i32 25, float %4229)  ; Rsqrt(value)
  %4231 = fmul fast float %4230, %4226
  %4232 = fmul fast float %4230, %4227
  %4233 = fmul fast float %4230, %4228
  %4234 = call float @dx.op.dot3.f32(i32 55, float %4170, float %4171, float %4172, float %2793, float %2794, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %4235 = call float @dx.op.dot3.f32(i32 55, float %2786, float %2785, float %2784, float %4231, float %4232, float %4233)  ; Dot3(ax,ay,az,bx,by,bz)
  %4236 = call float @dx.op.unary.f32(i32 7, float %4234)  ; Saturate(value)
  %4237 = fmul fast float %4236, %4236
  %4238 = fmul fast float %4237, %4165
  %4239 = call float @dx.op.unary.f32(i32 7, float %4238)  ; Saturate(value)
  %4240 = fmul fast float %4239, %4236
  %4241 = call float @dx.op.dot3.f32(i32 55, float %2793, float %2794, float %2795, float %4231, float %4232, float %4233)  ; Dot3(ax,ay,az,bx,by,bz)
  %4242 = fmul fast float %4241, %4241
  %4243 = call float @dx.op.unary.f32(i32 6, float %4234)  ; FAbs(value)
  %4244 = fsub fast float 1.000000e+00, %2799
  %4245 = call float @dx.op.binary.f32(i32 35, float %4244, float 0x3F847AE140000000)  ; FMax(a,b)
  %4246 = fmul fast float %4245, %4245
  %4247 = fmul fast float %4246, %4246
  %4248 = fsub fast float 1.000000e+00, %4247
  %4249 = fmul fast float %2803, %2803
  %4250 = fmul fast float %4249, %4248
  %4251 = fadd fast float %4250, %4247
  %4252 = bitcast float %4251 to i32
  %4253 = ashr i32 %4252, 1
  %4254 = add nsw i32 %4253, 532487669
  %4255 = bitcast i32 %4254 to float
  %4256 = fadd fast float %4255, %2803
  %4257 = fmul fast float %4247, %4242
  %4258 = fsub fast float 1.000000e+00, %4242
  %4259 = fadd fast float %4258, %4257
  %4260 = fmul fast float %4243, %4243
  %4261 = fmul fast float %4260, %4248
  %4262 = fadd fast float %4261, %4247
  %4263 = bitcast float %4262 to i32
  %4264 = ashr i32 %4263, 1
  %4265 = add nsw i32 %4264, 532487669
  %4266 = bitcast i32 %4265 to float
  %4267 = fadd fast float %4266, %4243
  %4268 = fmul fast float %4259, %4259
  %4269 = fmul fast float %4268, %4256
  %4270 = fmul fast float %4269, %4267
  %4271 = fdiv fast float 0x3FF0A00000000000, %4270
  %4272 = fmul fast float %4271, %4247
  %4273 = call float @dx.op.unary.f32(i32 6, float %4235)  ; FAbs(value)
  %4274 = fsub fast float 1.000000e+00, %4273
  %4275 = bitcast float %4274 to i32
  %4276 = sitofp i32 %4275 to float
  %4277 = fmul fast float %4276, 5.000000e+00
  %4278 = fadd fast float %4277, 0xC1EFBF8940000000
  %4279 = fptosi float %4278 to i32
  %4280 = bitcast i32 %4279 to float
  %4281 = fsub fast float 1.000000e+00, %2790
  %4282 = fsub fast float 1.000000e+00, %2791
  %4283 = fsub fast float 1.000000e+00, %2801
  %4284 = fmul fast float %4280, %4281
  %4285 = fmul fast float %4280, %4282
  %4286 = fmul fast float %4280, %4283
  %4287 = fadd fast float %4284, %2790
  %4288 = fadd fast float %4285, %2791
  %4289 = fadd fast float %4286, %2801
  br i1 %4080, label %4290, label %4313

; <label>:4290                                    ; preds = %4222
  %4291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2167, float %4273, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4292 = extractvalue %dx.types.ResRet.f32 %4291, 0
  %4293 = extractvalue %dx.types.ResRet.f32 %4291, 1
  %4294 = extractvalue %dx.types.ResRet.f32 %4291, 2
  %4295 = fadd fast float %4292, -5.000000e-01
  %4296 = fadd fast float %4293, -5.000000e-01
  %4297 = fadd fast float %4294, -5.000000e-01
  %4298 = fmul fast float %2790, 4.000000e+00
  %4299 = fmul fast float %4298, %4281
  %4300 = fmul fast float %4299, %4295
  %4301 = fmul fast float %2791, 4.000000e+00
  %4302 = fmul fast float %4301, %4282
  %4303 = fmul fast float %4302, %4296
  %4304 = fmul fast float %2801, 4.000000e+00
  %4305 = fmul fast float %4304, %4283
  %4306 = fmul fast float %4305, %4297
  %4307 = fadd fast float %4300, %4287
  %4308 = fadd fast float %4303, %4288
  %4309 = fadd fast float %4306, %4289
  %4310 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4311 = call float @dx.op.unary.f32(i32 7, float %4308)  ; Saturate(value)
  %4312 = call float @dx.op.unary.f32(i32 7, float %4309)  ; Saturate(value)
  br label %4313

; <label>:4313                                    ; preds = %4290, %4222
  %4314 = phi float [ %4310, %4290 ], [ %4287, %4222 ]
  %4315 = phi float [ %4311, %4290 ], [ %4288, %4222 ]
  %4316 = phi float [ %4312, %4290 ], [ %4289, %4222 ]
  %4317 = fmul fast float %4234, 9.843750e-01
  %4318 = fadd fast float %4317, 7.812500e-03
  %4319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4318, float %4070, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4320 = extractvalue %dx.types.ResRet.f32 %4319, 2
  %4321 = extractvalue %dx.types.ResRet.f32 %4319, 3
  %4322 = fmul fast float %4320, %2790
  %4323 = fmul fast float %4320, %2791
  %4324 = fmul fast float %4320, %2801
  %4325 = fadd fast float %4322, %4321
  %4326 = fadd fast float %4323, %4321
  %4327 = fadd fast float %4324, %4321
  br i1 %4080, label %4328, label %4351

; <label>:4328                                    ; preds = %4313
  %4329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2167, float %4234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4330 = extractvalue %dx.types.ResRet.f32 %4329, 0
  %4331 = extractvalue %dx.types.ResRet.f32 %4329, 1
  %4332 = extractvalue %dx.types.ResRet.f32 %4329, 2
  %4333 = fadd fast float %4330, -5.000000e-01
  %4334 = fadd fast float %4331, -5.000000e-01
  %4335 = fadd fast float %4332, -5.000000e-01
  %4336 = fmul fast float %2790, 4.000000e+00
  %4337 = fmul fast float %4336, %4281
  %4338 = fmul fast float %4337, %4333
  %4339 = fmul fast float %2791, 4.000000e+00
  %4340 = fmul fast float %4339, %4282
  %4341 = fmul fast float %4340, %4334
  %4342 = fmul fast float %2801, 4.000000e+00
  %4343 = fmul fast float %4342, %4283
  %4344 = fmul fast float %4343, %4335
  %4345 = fadd fast float %4338, %4325
  %4346 = fadd fast float %4341, %4326
  %4347 = fadd fast float %4344, %4327
  %4348 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4349 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4350 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  br label %4351

; <label>:4351                                    ; preds = %4328, %4313
  %4352 = phi float [ %4348, %4328 ], [ %4325, %4313 ]
  %4353 = phi float [ %4349, %4328 ], [ %4326, %4313 ]
  %4354 = phi float [ %4350, %4328 ], [ %4327, %4313 ]
  %4355 = call float @dx.op.binary.f32(i32 35, float %4353, float %4354)  ; FMax(a,b)
  %4356 = call float @dx.op.binary.f32(i32 35, float %4352, float %4355)  ; FMax(a,b)
  %4357 = fsub fast float 1.000000e+00, %4356
  %4358 = fmul fast float %4314, %4272
  %4359 = fmul fast float %4315, %4272
  %4360 = fmul fast float %4316, %4272
  %4361 = fsub fast float 1.000000e+00, %4235
  %4362 = bitcast float %4361 to i32
  %4363 = sitofp i32 %4362 to float
  %4364 = fmul fast float %4363, 5.000000e+00
  %4365 = fadd fast float %4364, 0xC1EFBF8940000000
  %4366 = fptosi float %4365 to i32
  %4367 = bitcast i32 %4366 to float
  %4368 = fmul fast float %4367, %2166
  %4369 = fmul fast float %4357, %4368
  %4370 = fmul fast float %4369, %4130
  %4371 = fmul fast float %4369, %4131
  %4372 = fmul fast float %4369, %4132
  %4373 = fmul fast float %4174, %1649
  %4374 = fmul fast float %4174, %1650
  %4375 = fmul fast float %4174, %1651
  %4376 = fadd fast float %4358, %4373
  %4377 = fadd fast float %4376, %4370
  %4378 = fadd fast float %4359, %4374
  %4379 = fadd fast float %4378, %4371
  %4380 = fadd fast float %4360, %4375
  %4381 = fadd fast float %4380, %4372
  %4382 = fmul fast float %4240, %4223
  %4383 = fmul fast float %4382, %4357
  %4384 = fmul fast float %4240, %4224
  %4385 = fmul fast float %4384, %4357
  %4386 = fmul fast float %4240, %4225
  %4387 = fmul fast float %4386, %4357
  %4388 = fmul fast float %4382, %4377
  %4389 = fmul fast float %4384, %4379
  %4390 = fmul fast float %4386, %4381
  %4391 = fadd fast float %4383, %4114
  %4392 = fmul fast float %4391, %2187
  %4393 = fadd fast float %4385, %4115
  %4394 = fmul fast float %4393, %2187
  %4395 = fadd fast float %4387, %4116
  %4396 = fmul fast float %4395, %2187
  %4397 = fadd fast float %4388, %4157
  %4398 = fmul fast float %4397, %2187
  %4399 = fadd fast float %4389, %4160
  %4400 = fmul fast float %4399, %2187
  %4401 = fadd fast float %4390, %4163
  %4402 = fmul fast float %4401, %2187
  br label %4403

; <label>:4403                                    ; preds = %4351, %4215, %4107
  %4404 = phi float [ %4158, %4107 ], [ %4158, %4215 ], [ %4398, %4351 ]
  %4405 = phi float [ %4161, %4107 ], [ %4161, %4215 ], [ %4400, %4351 ]
  %4406 = phi float [ %4164, %4107 ], [ %4164, %4215 ], [ %4402, %4351 ]
  %4407 = phi float [ %4153, %4107 ], [ %4153, %4215 ], [ %4392, %4351 ]
  %4408 = phi float [ %4154, %4107 ], [ %4154, %4215 ], [ %4394, %4351 ]
  %4409 = phi float [ %4155, %4107 ], [ %4155, %4215 ], [ %4396, %4351 ]
  %4410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4411 = extractvalue %dx.types.CBufRet.i32 %4410, 0
  %4412 = icmp eq i32 %4411, 0
  br i1 %4412, label %4854, label %4413

; <label>:4413                                    ; preds = %4403
  %4414 = fptoui float %70 to i32
  %4415 = fptoui float %71 to i32
  %4416 = lshr i32 %4414, 4
  %4417 = lshr i32 %4415, 4
  %4418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4419 = extractvalue %dx.types.CBufRet.i32 %4418, 0
  %4420 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4417, i32 %4419, i32 %4416)  ; UMad(a,b,c)
  %4421 = add nsw i32 %4411, -1
  %4422 = call i32 @dx.op.binary.i32(i32 37, i32 %4421, i32 0)  ; IMax(a,b)
  %4423 = call float @dx.op.binary.f32(i32 35, float %65, float 0.000000e+00)  ; FMax(a,b)
  %4424 = fptoui float %4423 to i32
  %4425 = lshr i32 %4424, 5
  %4426 = call i32 @dx.op.binary.i32(i32 40, i32 %4425, i32 8191)  ; UMin(a,b)
  %4427 = shl i32 %4426, 2
  %4428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4427, i32 undef)  ; BufferLoad(srv,index,wot)
  %4429 = extractvalue %dx.types.ResRet.i32 %4428, 0
  %4430 = lshr i32 %4429, 16
  %4431 = and i32 %4429, 65535
  %4432 = lshr i32 %4429, 21
  %4433 = lshr i32 %4431, 5
  %4434 = call i32 @dx.op.binary.i32(i32 40, i32 %4433, i32 %4422)  ; UMin(a,b)
  %4435 = icmp ugt i32 %4432, %4434
  br i1 %4435, label %4854, label %4436

; <label>:4436                                    ; preds = %4413
  br label %4437

; <label>:4437                                    ; preds = %4844, %4436
  %4438 = phi i32 [ %4851, %4844 ], [ %4432, %4436 ]
  %4439 = phi float [ %4845, %4844 ], [ %4404, %4436 ]
  %4440 = phi float [ %4846, %4844 ], [ %4405, %4436 ]
  %4441 = phi float [ %4847, %4844 ], [ %4406, %4436 ]
  %4442 = phi float [ %4848, %4844 ], [ %4407, %4436 ]
  %4443 = phi float [ %4849, %4844 ], [ %4408, %4436 ]
  %4444 = phi float [ %4850, %4844 ], [ %4409, %4436 ]
  %4445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4446 = extractvalue %dx.types.CBufRet.i32 %4445, 0
  %4447 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4420, i32 %4446, i32 %4438)  ; UMad(a,b,c)
  %4448 = shl i32 %4447, 2
  %4449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4448, i32 undef)  ; BufferLoad(srv,index,wot)
  %4450 = extractvalue %dx.types.ResRet.i32 %4449, 0
  %4451 = shl i32 %4438, 5
  %4452 = sub nsw i32 %4430, %4451
  %4453 = call i32 @dx.op.binary.i32(i32 37, i32 %4452, i32 0)  ; IMax(a,b)
  %4454 = call i32 @dx.op.binary.i32(i32 38, i32 %4453, i32 31)  ; IMin(a,b)
  %4455 = sub nsw i32 1, %4430
  %4456 = add nsw i32 %4455, %4431
  %4457 = call i32 @dx.op.binary.i32(i32 37, i32 %4456, i32 0)  ; IMax(a,b)
  %4458 = call i32 @dx.op.binary.i32(i32 38, i32 %4457, i32 32)  ; IMin(a,b)
  %4459 = and i32 %4458, 31
  %4460 = shl i32 -1, %4459
  %4461 = xor i32 %4460, -1
  %4462 = and i32 %4454, 31
  %4463 = shl i32 %4461, %4462
  %4464 = icmp eq i32 %4458, 32
  %4465 = select i1 %4464, i32 -1, i32 %4463
  %4466 = and i32 %4465, %4450
  %4467 = icmp eq i32 %4466, 0
  br i1 %4467, label %4844, label %4468

; <label>:4468                                    ; preds = %4437
  br label %4469

; <label>:4469                                    ; preds = %4550, %4468
  %4470 = phi i32 [ %4481, %4550 ], [ %4466, %4468 ]
  %4471 = phi float [ %4551, %4550 ], [ %4439, %4468 ]
  %4472 = phi float [ %4552, %4550 ], [ %4440, %4468 ]
  %4473 = phi float [ %4553, %4550 ], [ %4441, %4468 ]
  %4474 = phi float [ %4554, %4550 ], [ %4442, %4468 ]
  %4475 = phi float [ %4555, %4550 ], [ %4443, %4468 ]
  %4476 = phi float [ %4556, %4550 ], [ %4444, %4468 ]
  %4477 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4470)  ; FirstbitLo(value)
  %4478 = add i32 %4477, %4451
  %4479 = and i32 %4477, 31
  %4480 = shl i32 1, %4479
  %4481 = xor i32 %4480, %4470
  %4482 = mul i32 %4478, 112
  %4483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4482, i32 undef)  ; BufferLoad(srv,index,wot)
  %4484 = extractvalue %dx.types.ResRet.f32 %4483, 0
  %4485 = extractvalue %dx.types.ResRet.f32 %4483, 1
  %4486 = extractvalue %dx.types.ResRet.f32 %4483, 2
  %4487 = or i32 %4482, 12
  %4488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4487, i32 undef)  ; BufferLoad(srv,index,wot)
  %4489 = extractvalue %dx.types.ResRet.f32 %4488, 0
  %4490 = add i32 %4482, 44
  %4491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4490, i32 undef)  ; BufferLoad(srv,index,wot)
  %4492 = extractvalue %dx.types.ResRet.f32 %4491, 0
  %4493 = add i32 %4482, 48
  %4494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4493, i32 undef)  ; BufferLoad(srv,index,wot)
  %4495 = extractvalue %dx.types.ResRet.f32 %4494, 0
  %4496 = extractvalue %dx.types.ResRet.f32 %4494, 1
  %4497 = extractvalue %dx.types.ResRet.f32 %4494, 2
  %4498 = add i32 %4482, 80
  %4499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4498, i32 undef)  ; BufferLoad(srv,index,wot)
  %4500 = extractvalue %dx.types.ResRet.f32 %4499, 0
  %4501 = extractvalue %dx.types.ResRet.f32 %4499, 1
  %4502 = extractvalue %dx.types.ResRet.f32 %4499, 2
  %4503 = call float @dx.op.dot3.f32(i32 55, float %4484, float %4485, float %4486, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4504 = select i1 %188, float %4501, float %4484
  %4505 = select i1 %188, float %4503, float %4485
  %4506 = select i1 %188, float %4502, float %4486
  %4507 = fsub fast float %4495, %117
  %4508 = fsub fast float %4496, %118
  %4509 = fsub fast float %4497, %119
  %4510 = call float @dx.op.dot3.f32(i32 55, float %4507, float %4508, float %4509, float %4507, float %4508, float %4509)  ; Dot3(ax,ay,az,bx,by,bz)
  %4511 = call float @dx.op.unary.f32(i32 24, float %4510)  ; Sqrt(value)
  %4512 = fdiv fast float 1.000000e+00, %4511
  %4513 = fmul fast float %4512, %4507
  %4514 = fmul fast float %4512, %4508
  %4515 = fmul fast float %4512, %4509
  %4516 = fadd fast float %4511, %4489
  %4517 = fdiv fast float 1.000000e+00, %4516
  %4518 = fmul float %4492, %4517
  %4519 = fmul float %4518, %4518
  %4520 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  %4521 = and i32 %4480, %4466
  %4522 = icmp eq i32 %4521, 0
  br i1 %4522, label %4545, label %4523, !dx.controlflow.hints !87

; <label>:4523                                    ; preds = %4469
  %4524 = lshr i32 %4414, 5
  %4525 = lshr i32 %4415, 5
  %4526 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %4524, i32 %4525, i32 %4478, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4527 = extractvalue %dx.types.ResRet.i32 %4526, 0
  %4528 = and i32 %4527, 3
  %4529 = icmp eq i32 %4528, 0
  %4530 = select i1 %4529, float 1.000000e+00, float 0.000000e+00
  %4531 = icmp eq i32 %4528, 3
  br i1 %4531, label %4532, label %4545

; <label>:4532                                    ; preds = %4523
  %4533 = lshr i32 %4527, 10
  %4534 = and i32 %4533, 8160
  %4535 = and i32 %4415, 31
  %4536 = or i32 %4534, %4535
  %4537 = lshr i32 %4527, 1
  %4538 = and i32 %4537, 16352
  %4539 = and i32 %4414, 31
  %4540 = or i32 %4538, %4539
  %4541 = lshr i32 %4527, 23
  %4542 = and i32 %4541, 255
  %4543 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %4540, i32 %4536, i32 %4542, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4544 = extractvalue %dx.types.ResRet.f32 %4543, 0
  br label %4545

; <label>:4545                                    ; preds = %4532, %4523, %4469
  %4546 = phi float [ %4544, %4532 ], [ %4530, %4523 ], [ 0.000000e+00, %4469 ]
  %4547 = call float @dx.op.binary.f32(i32 36, float %4546, float %4546)  ; FMin(a,b)
  %4548 = call float @dx.op.binary.f32(i32 36, float %4546, float %4547)  ; FMin(a,b)
  %4549 = fcmp fast ogt float %4548, 0.000000e+00
  br i1 %4549, label %4558, label %4550, !dx.controlflow.hints !88

; <label>:4550                                    ; preds = %4794, %4545
  %4551 = phi float [ %4471, %4545 ], [ %4840, %4794 ]
  %4552 = phi float [ %4472, %4545 ], [ %4841, %4794 ]
  %4553 = phi float [ %4473, %4545 ], [ %4842, %4794 ]
  %4554 = phi float [ %4474, %4545 ], [ %4834, %4794 ]
  %4555 = phi float [ %4475, %4545 ], [ %4835, %4794 ]
  %4556 = phi float [ %4476, %4545 ], [ %4836, %4794 ]
  %4557 = icmp eq i32 %4470, %4480
  br i1 %4557, label %4843, label %4469

; <label>:4558                                    ; preds = %4545
  %4559 = fmul fast float %4546, %4504
  %4560 = fmul fast float %4546, %4505
  %4561 = fmul fast float %4546, %4506
  %4562 = fsub fast float %4497, %2589
  %4563 = fcmp fast ogt float %4562, 0.000000e+00
  %4564 = fsub fast float %119, %2589
  %4565 = fcmp fast ogt float %4564, 0.000000e+00
  %4566 = xor i1 %4565, %4563
  %4567 = fsub fast float %2589, %4497
  %4568 = fmul fast float %4567, 2.000000e+00
  %4569 = fadd fast float %4568, %4497
  %4570 = select i1 %4566, float %4497, float %4569
  %4571 = fsub fast float %4570, %119
  %4572 = call float @dx.op.dot3.f32(i32 55, float %4507, float %4508, float %4571, float %4507, float %4508, float %4571)  ; Dot3(ax,ay,az,bx,by,bz)
  %4573 = call float @dx.op.unary.f32(i32 25, float %4572)  ; Rsqrt(value)
  %4574 = fmul fast float %4573, %4507
  %4575 = fmul fast float %4573, %4508
  %4576 = fmul fast float %4573, %4571
  %4577 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2597)  ; Dot3(ax,ay,az,bx,by,bz)
  %4578 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4574, float %4575, float %4576)  ; Dot3(ax,ay,az,bx,by,bz)
  %4579 = fdiv fast float 1.000000e+00, %4578
  %4580 = fmul fast float %4579, %4577
  %4581 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4564, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4582 = fcmp fast ogt float %4581, 0.000000e+00
  %4583 = fcmp fast olt float %4581, 0.000000e+00
  %4584 = zext i1 %4582 to i32
  %4585 = zext i1 %4583 to i32
  %4586 = sub nsw i32 %4584, %4585
  %4587 = sitofp i32 %4586 to float
  %4588 = fsub fast float %4570, %2589
  %4589 = call float @dx.op.dot3.f32(i32 55, float %4507, float %4508, float %4588, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4590 = fcmp fast ogt float %4589, 0.000000e+00
  %4591 = fcmp fast olt float %4589, 0.000000e+00
  %4592 = zext i1 %4590 to i32
  %4593 = zext i1 %4591 to i32
  %4594 = sub nsw i32 %4592, %4593
  %4595 = sitofp i32 %4594 to float
  %4596 = fcmp fast une float %4587, %4595
  br i1 %4596, label %4597, label %4607

; <label>:4597                                    ; preds = %4558
  %4598 = fmul fast float %4580, %4576
  %4599 = fmul fast float %4580, %4575
  %4600 = fmul fast float %4580, %4574
  %4601 = fmul fast float %4600, %4600
  %4602 = fmul fast float %4599, %4599
  %4603 = fadd fast float %4601, %4602
  %4604 = fmul fast float %4598, %4598
  %4605 = fadd fast float %4603, %4604
  %4606 = call float @dx.op.unary.f32(i32 24, float %4605)  ; Sqrt(value)
  br label %4619

; <label>:4607                                    ; preds = %4558
  %4608 = icmp slt i32 %4586, 0
  br i1 %4608, label %4609, label %4619

; <label>:4609                                    ; preds = %4607
  %4610 = fsub fast float %117, %4495
  %4611 = fsub fast float %118, %4496
  %4612 = fsub fast float %119, %4570
  %4613 = fmul fast float %4610, %4610
  %4614 = fmul fast float %4611, %4611
  %4615 = fadd fast float %4613, %4614
  %4616 = fmul fast float %4612, %4612
  %4617 = fadd fast float %4615, %4616
  %4618 = call float @dx.op.unary.f32(i32 24, float %4617)  ; Sqrt(value)
  br label %4619

; <label>:4619                                    ; preds = %4609, %4607, %4597
  %4620 = phi float [ %4606, %4597 ], [ %4618, %4609 ], [ 0.000000e+00, %4607 ]
  %4621 = and i1 %4565, %4563
  %4622 = fsub fast float -0.000000e+00, %4620
  %4623 = select i1 %4621, float -0.000000e+00, float %4622
  %4624 = fmul fast float %2590, 0x3FF7154760000000
  %4625 = fmul fast float %4624, %4623
  %4626 = fmul fast float %2591, 0x3FF7154760000000
  %4627 = fmul fast float %4626, %4623
  %4628 = fmul fast float %2592, 0x3FF7154760000000
  %4629 = fmul fast float %4628, %4623
  %4630 = call float @dx.op.unary.f32(i32 21, float %4625)  ; Exp(value)
  %4631 = call float @dx.op.unary.f32(i32 21, float %4627)  ; Exp(value)
  %4632 = call float @dx.op.unary.f32(i32 21, float %4629)  ; Exp(value)
  %4633 = call float @dx.op.unary.f32(i32 7, float %4630)  ; Saturate(value)
  %4634 = call float @dx.op.unary.f32(i32 7, float %4631)  ; Saturate(value)
  %4635 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4636 = fmul fast float %4559, %4633
  %4637 = fmul fast float %4560, %4634
  %4638 = fmul fast float %4561, %4635
  %4639 = fsub fast float %4513, %2789
  %4640 = fsub fast float %4514, %2788
  %4641 = fsub fast float %4515, %2787
  %4642 = call float @dx.op.dot3.f32(i32 55, float %4639, float %4640, float %4641, float %4639, float %4640, float %4641)  ; Dot3(ax,ay,az,bx,by,bz)
  %4643 = call float @dx.op.unary.f32(i32 25, float %4642)  ; Rsqrt(value)
  %4644 = fmul fast float %4643, %4639
  %4645 = fmul fast float %4643, %4640
  %4646 = fmul fast float %4643, %4641
  %4647 = call float @dx.op.dot3.f32(i32 55, float %4513, float %4514, float %4515, float %2793, float %2794, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %4648 = call float @dx.op.dot3.f32(i32 55, float %2786, float %2785, float %2784, float %4644, float %4645, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %4649 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4650 = fmul fast float %4649, %4520
  %4651 = fmul fast float %4649, %4649
  %4652 = fmul fast float %4651, %4165
  %4653 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4654 = fmul fast float %4650, %4653
  %4655 = bitcast float %4510 to i32
  %4656 = ashr i32 %4655, 1
  %4657 = sub nsw i32 1597463007, %4656
  %4658 = bitcast i32 %4657 to float
  %4659 = fmul fast float %4658, %4507
  %4660 = fmul fast float %4658, %4508
  %4661 = fmul fast float %4658, %4509
  %4662 = fsub fast float %4659, %2789
  %4663 = fsub fast float %4660, %2788
  %4664 = fsub fast float %4661, %2787
  %4665 = call float @dx.op.dot3.f32(i32 55, float %4662, float %4663, float %4664, float %4662, float %4663, float %4664)  ; Dot3(ax,ay,az,bx,by,bz)
  %4666 = call float @dx.op.unary.f32(i32 25, float %4665)  ; Rsqrt(value)
  %4667 = fmul fast float %4662, %4666
  %4668 = fmul fast float %4663, %4666
  %4669 = fmul fast float %4664, %4666
  %4670 = call float @dx.op.dot3.f32(i32 55, float %2793, float %2794, float %2795, float %4667, float %4668, float %4669)  ; Dot3(ax,ay,az,bx,by,bz)
  %4671 = fmul fast float %4670, %4670
  %4672 = call float @dx.op.unary.f32(i32 6, float %4647)  ; FAbs(value)
  %4673 = fsub fast float 1.000000e+00, %2799
  %4674 = call float @dx.op.binary.f32(i32 35, float %4673, float 0x3F847AE140000000)  ; FMax(a,b)
  %4675 = fmul fast float %4674, %4674
  %4676 = fmul fast float %4675, %4675
  %4677 = fsub fast float 1.000000e+00, %4676
  %4678 = fmul fast float %2803, %2803
  %4679 = fmul fast float %4678, %4677
  %4680 = fadd fast float %4679, %4676
  %4681 = bitcast float %4680 to i32
  %4682 = ashr i32 %4681, 1
  %4683 = add nsw i32 %4682, 532487669
  %4684 = bitcast i32 %4683 to float
  %4685 = fadd fast float %4684, %2803
  %4686 = fmul fast float %4676, %4671
  %4687 = fsub fast float 1.000000e+00, %4671
  %4688 = fadd fast float %4687, %4686
  %4689 = fmul fast float %4672, %4672
  %4690 = fmul fast float %4689, %4677
  %4691 = fadd fast float %4690, %4676
  %4692 = bitcast float %4691 to i32
  %4693 = ashr i32 %4692, 1
  %4694 = add nsw i32 %4693, 532487669
  %4695 = bitcast i32 %4694 to float
  %4696 = fadd fast float %4695, %4672
  %4697 = fmul fast float %4688, %4688
  %4698 = fmul fast float %4697, %4685
  %4699 = fmul fast float %4698, %4696
  %4700 = fdiv fast float 1.000000e+00, %4699
  %4701 = bitcast float %4676 to i32
  %4702 = sitofp i32 %4701 to float
  %4703 = fmul fast float %4702, 0x3FE7F73180000000
  %4704 = fadd fast float %4703, 0x41AFE27C40000000
  %4705 = fptosi float %4704 to i32
  %4706 = bitcast i32 %4705 to float
  %4707 = fmul fast float %4492, 0x3FD80E9D60000000
  %4708 = fmul fast float %4707, %4658
  %4709 = fadd fast float %4706, %4708
  %4710 = bitcast float %4709 to i32
  %4711 = sub nsw i32 2129859010, %4710
  %4712 = bitcast i32 %4711 to float
  %4713 = fmul fast float %4676, %4700
  %4714 = fmul fast float %4713, %4706
  %4715 = fmul fast float %4714, %4712
  %4716 = call float @dx.op.unary.f32(i32 6, float %4648)  ; FAbs(value)
  %4717 = fsub fast float 1.000000e+00, %4716
  %4718 = bitcast float %4717 to i32
  %4719 = sitofp i32 %4718 to float
  %4720 = fmul fast float %4719, 5.000000e+00
  %4721 = fadd fast float %4720, 0xC1EFBF8940000000
  %4722 = fptosi float %4721 to i32
  %4723 = bitcast i32 %4722 to float
  %4724 = fsub fast float 1.000000e+00, %2790
  %4725 = fsub fast float 1.000000e+00, %2791
  %4726 = fsub fast float 1.000000e+00, %2801
  %4727 = fmul fast float %4723, %4724
  %4728 = fmul fast float %4723, %4725
  %4729 = fmul fast float %4723, %4726
  %4730 = fadd fast float %4727, %2790
  %4731 = fadd fast float %4728, %2791
  %4732 = fadd fast float %4729, %2801
  br i1 %4080, label %4733, label %4756

; <label>:4733                                    ; preds = %4619
  %4734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2167, float %4716, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4735 = extractvalue %dx.types.ResRet.f32 %4734, 0
  %4736 = extractvalue %dx.types.ResRet.f32 %4734, 1
  %4737 = extractvalue %dx.types.ResRet.f32 %4734, 2
  %4738 = fadd fast float %4735, -5.000000e-01
  %4739 = fadd fast float %4736, -5.000000e-01
  %4740 = fadd fast float %4737, -5.000000e-01
  %4741 = fmul fast float %2790, 4.000000e+00
  %4742 = fmul fast float %4741, %4724
  %4743 = fmul fast float %4742, %4738
  %4744 = fmul fast float %2791, 4.000000e+00
  %4745 = fmul fast float %4744, %4725
  %4746 = fmul fast float %4745, %4739
  %4747 = fmul fast float %2801, 4.000000e+00
  %4748 = fmul fast float %4747, %4726
  %4749 = fmul fast float %4748, %4740
  %4750 = fadd fast float %4743, %4730
  %4751 = fadd fast float %4746, %4731
  %4752 = fadd fast float %4749, %4732
  %4753 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4754 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4755 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  br label %4756

; <label>:4756                                    ; preds = %4733, %4619
  %4757 = phi float [ %4753, %4733 ], [ %4730, %4619 ]
  %4758 = phi float [ %4754, %4733 ], [ %4731, %4619 ]
  %4759 = phi float [ %4755, %4733 ], [ %4732, %4619 ]
  %4760 = fmul fast float %4647, 9.843750e-01
  %4761 = fadd fast float %4760, 7.812500e-03
  %4762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4761, float %4070, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4763 = extractvalue %dx.types.ResRet.f32 %4762, 2
  %4764 = extractvalue %dx.types.ResRet.f32 %4762, 3
  %4765 = fmul fast float %4763, %2790
  %4766 = fmul fast float %4763, %2791
  %4767 = fmul fast float %4763, %2801
  %4768 = fadd fast float %4765, %4764
  %4769 = fadd fast float %4766, %4764
  %4770 = fadd fast float %4767, %4764
  br i1 %4080, label %4771, label %4794

; <label>:4771                                    ; preds = %4756
  %4772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2167, float %4647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4773 = extractvalue %dx.types.ResRet.f32 %4772, 0
  %4774 = extractvalue %dx.types.ResRet.f32 %4772, 1
  %4775 = extractvalue %dx.types.ResRet.f32 %4772, 2
  %4776 = fadd fast float %4773, -5.000000e-01
  %4777 = fadd fast float %4774, -5.000000e-01
  %4778 = fadd fast float %4775, -5.000000e-01
  %4779 = fmul fast float %2790, 4.000000e+00
  %4780 = fmul fast float %4779, %4724
  %4781 = fmul fast float %4780, %4776
  %4782 = fmul fast float %2791, 4.000000e+00
  %4783 = fmul fast float %4782, %4725
  %4784 = fmul fast float %4783, %4777
  %4785 = fmul fast float %2801, 4.000000e+00
  %4786 = fmul fast float %4785, %4726
  %4787 = fmul fast float %4786, %4778
  %4788 = fadd fast float %4781, %4768
  %4789 = fadd fast float %4784, %4769
  %4790 = fadd fast float %4787, %4770
  %4791 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4792 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  %4793 = call float @dx.op.unary.f32(i32 7, float %4790)  ; Saturate(value)
  br label %4794

; <label>:4794                                    ; preds = %4771, %4756
  %4795 = phi float [ %4791, %4771 ], [ %4768, %4756 ]
  %4796 = phi float [ %4792, %4771 ], [ %4769, %4756 ]
  %4797 = phi float [ %4793, %4771 ], [ %4770, %4756 ]
  %4798 = call float @dx.op.binary.f32(i32 35, float %4796, float %4797)  ; FMax(a,b)
  %4799 = call float @dx.op.binary.f32(i32 35, float %4795, float %4798)  ; FMax(a,b)
  %4800 = fsub fast float 1.000000e+00, %4799
  %4801 = fmul fast float %4757, %4715
  %4802 = fmul fast float %4758, %4715
  %4803 = fmul fast float %4759, %4715
  %4804 = fsub fast float 1.000000e+00, %4648
  %4805 = bitcast float %4804 to i32
  %4806 = sitofp i32 %4805 to float
  %4807 = fmul fast float %4806, 5.000000e+00
  %4808 = fadd fast float %4807, 0xC1EFBF8940000000
  %4809 = fptosi float %4808 to i32
  %4810 = bitcast i32 %4809 to float
  %4811 = fmul fast float %4810, %2166
  %4812 = fmul fast float %4800, %4811
  %4813 = fmul fast float %4812, %4130
  %4814 = fmul fast float %4812, %4131
  %4815 = fmul fast float %4812, %4132
  %4816 = fmul fast float %4500, %1649
  %4817 = fmul fast float %4500, %1650
  %4818 = fmul fast float %4500, %1651
  %4819 = fadd fast float %4801, %4816
  %4820 = fadd fast float %4819, %4813
  %4821 = fadd fast float %4802, %4817
  %4822 = fadd fast float %4821, %4814
  %4823 = fadd fast float %4803, %4818
  %4824 = fadd fast float %4823, %4815
  %4825 = fmul fast float %4636, %2187
  %4826 = fmul fast float %4825, %4654
  %4827 = fmul fast float %4826, %4800
  %4828 = fmul fast float %4637, %2187
  %4829 = fmul fast float %4828, %4654
  %4830 = fmul fast float %4829, %4800
  %4831 = fmul fast float %4638, %2187
  %4832 = fmul fast float %4831, %4654
  %4833 = fmul fast float %4832, %4800
  %4834 = fadd fast float %4827, %4474
  %4835 = fadd fast float %4830, %4475
  %4836 = fadd fast float %4833, %4476
  %4837 = fmul fast float %4826, %4820
  %4838 = fmul fast float %4829, %4822
  %4839 = fmul fast float %4832, %4824
  %4840 = fadd fast float %4837, %4471
  %4841 = fadd fast float %4838, %4472
  %4842 = fadd fast float %4839, %4473
  br label %4550

; <label>:4843                                    ; preds = %4550
  br label %4844

; <label>:4844                                    ; preds = %4843, %4437
  %4845 = phi float [ %4439, %4437 ], [ %4551, %4843 ]
  %4846 = phi float [ %4440, %4437 ], [ %4552, %4843 ]
  %4847 = phi float [ %4441, %4437 ], [ %4553, %4843 ]
  %4848 = phi float [ %4442, %4437 ], [ %4554, %4843 ]
  %4849 = phi float [ %4443, %4437 ], [ %4555, %4843 ]
  %4850 = phi float [ %4444, %4437 ], [ %4556, %4843 ]
  %4851 = add i32 %4438, 1
  %4852 = icmp ugt i32 %4851, %4434
  br i1 %4852, label %4853, label %4437

; <label>:4853                                    ; preds = %4844
  br label %4854

; <label>:4854                                    ; preds = %4853, %4413, %4403
  %4855 = phi float [ %4404, %4403 ], [ %4404, %4413 ], [ %4845, %4853 ]
  %4856 = phi float [ %4405, %4403 ], [ %4405, %4413 ], [ %4846, %4853 ]
  %4857 = phi float [ %4406, %4403 ], [ %4406, %4413 ], [ %4847, %4853 ]
  %4858 = phi float [ %4407, %4403 ], [ %4407, %4413 ], [ %4848, %4853 ]
  %4859 = phi float [ %4408, %4403 ], [ %4408, %4413 ], [ %4849, %4853 ]
  %4860 = phi float [ %4409, %4403 ], [ %4409, %4413 ], [ %4850, %4853 ]
  %4861 = call float @dx.op.unary.f32(i32 24, float %2796)  ; Sqrt(value)
  %4862 = call float @dx.op.unary.f32(i32 24, float %2797)  ; Sqrt(value)
  %4863 = call float @dx.op.unary.f32(i32 24, float %2798)  ; Sqrt(value)
  %4864 = fmul fast float %4861, %4858
  %4865 = fmul fast float %4862, %4859
  %4866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4867 = extractvalue %dx.types.CBufRet.f32 %4866, 0
  br i1 %188, label %4868, label %4888

; <label>:4868                                    ; preds = %4854
  %4869 = fadd fast float %4860, %2164
  %4870 = fmul fast float %4869, %2165
  %4871 = fsub fast float 1.000000e+00, %2165
  %4872 = call float @dx.op.unary.f32(i32 7, float %4871)  ; Saturate(value)
  %4873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4874 = extractvalue %dx.types.CBufRet.f32 %4873, 3
  %4875 = fmul fast float %4874, %4872
  %4876 = fadd fast float %4875, %4870
  %4877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4878 = extractvalue %dx.types.CBufRet.f32 %4877, 0
  %4879 = fmul fast float %4878, %4136
  %4880 = fsub fast float %4876, %4879
  %4881 = fadd fast float %4865, %4864
  %4882 = fmul fast float %4867, %4881
  %4883 = extractvalue %dx.types.CBufRet.f32 %4873, 1
  %4884 = fsub fast float %4880, %4883
  %4885 = extractvalue %dx.types.CBufRet.f32 %4873, 2
  %4886 = fmul fast float %4884, %4885
  %4887 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  br label %4904

; <label>:4888                                    ; preds = %4854
  %4889 = fmul fast float %4863, %4860
  %4890 = fmul fast float %4867, %4864
  %4891 = fmul fast float %4867, %4865
  %4892 = fmul fast float %4889, %4867
  %4893 = add i32 %44, 196
  %4894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4893, i32 undef)  ; BufferLoad(srv,index,wot)
  %4895 = extractvalue %dx.types.ResRet.i32 %4894, 0
  %4896 = and i32 %4895, 32
  %4897 = icmp eq i32 %4896, 0
  br i1 %4897, label %4904, label %4898

; <label>:4898                                    ; preds = %4888
  %4899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4900 = extractvalue %dx.types.CBufRet.f32 %4899, 0
  %4901 = fmul fast float %4900, 0x3FE99999A0000000
  %4902 = fadd fast float %4900, %4890
  %4903 = fadd fast float %4901, %4892
  br label %4904

; <label>:4904                                    ; preds = %4898, %4888, %4868
  %4905 = phi float [ %4882, %4868 ], [ %4902, %4898 ], [ %4890, %4888 ]
  %4906 = phi float [ %4887, %4868 ], [ %4891, %4898 ], [ %4891, %4888 ]
  %4907 = phi float [ 1.000000e+00, %4868 ], [ %4903, %4898 ], [ %4892, %4888 ]
  %4908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4909 = extractvalue %dx.types.CBufRet.f32 %4908, 0
  %4910 = fmul fast float %4909, %4856
  %4911 = fmul fast float %4909, %4857
  %4912 = fadd fast float %4856, %4855
  %4913 = select i1 %188, float %4912, float %4855
  %4914 = fmul float %4913, %4909
  %4915 = select i1 %188, float 0.000000e+00, float %4910
  %4916 = select i1 %188, float 0.000000e+00, float %4911
  %4917 = fmul fast float %4905, %4861
  %4918 = fmul fast float %4906, %4862
  %4919 = fmul fast float %4907, %4863
  %4920 = fadd fast float %4914, %4917
  %4921 = fadd fast float %4915, %4918
  %4922 = fadd fast float %4916, %4919
  %4923 = select i1 %188, float %4906, float %4921
  %4924 = select i1 %188, float %4907, float %4922
  %4925 = call float @dx.op.binary.f32(i32 36, float %4920, float 3.225500e+04)  ; FMin(a,b)
  %4926 = call float @dx.op.binary.f32(i32 36, float %4923, float 3.225500e+04)  ; FMin(a,b)
  %4927 = call float @dx.op.binary.f32(i32 36, float %4924, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4925)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4926)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4927)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
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
!50 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!51 = !{!52, !53, !54, !55, !56}
!52 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!53 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!54 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!55 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!56 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!57 = !{[28 x i32] [i32 26, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !78}
!59 = !{!60, !76, null}
!60 = !{!61, !64, !66, !68, !69, !70, !72, !74, !75}
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
!72 = !{i32 6, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 6, i8 0, !73}
!73 = !{i32 3, i32 1}
!74 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 6, i8 1, !73}
!75 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!76 = !{!77}
!77 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !65}
!78 = !{i32 0, i64 24}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}

