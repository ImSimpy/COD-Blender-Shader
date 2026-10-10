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
; shader hash: 0d5a45e3274dee601e4479e7291edcda
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
  br i1 %276, label %737, label %277

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
  %724 = add i32 %44, 64
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = and i32 %726, 255
  %728 = uitofp i32 %727 to float
  %729 = lshr i32 %726, 8
  %730 = and i32 %729, 255
  %731 = uitofp i32 %730 to float
  %732 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %733 = fmul fast float %731, %732
  %734 = fadd fast float %733, %728
  %735 = fmul fast float %734, 0x3F70101020000000
  %736 = call float @dx.op.unary.f32(i32 7, float %735)  ; Saturate(value)
  br label %737

; <label>:737                                     ; preds = %720, %187
  %738 = phi float [ %674, %720 ], [ 0.000000e+00, %187 ]
  %739 = phi float [ %675, %720 ], [ 0.000000e+00, %187 ]
  %740 = phi float [ %593, %720 ], [ 0.000000e+00, %187 ]
  %741 = phi float [ %594, %720 ], [ 0.000000e+00, %187 ]
  %742 = phi float [ %595, %720 ], [ 0.000000e+00, %187 ]
  %743 = phi float [ %721, %720 ], [ 0.000000e+00, %187 ]
  %744 = phi float [ %722, %720 ], [ 0.000000e+00, %187 ]
  %745 = phi float [ %723, %720 ], [ 0.000000e+00, %187 ]
  %746 = phi float [ %579, %720 ], [ 0.000000e+00, %187 ]
  %747 = phi float [ 1.000000e+00, %720 ], [ 0.000000e+00, %187 ]
  %748 = phi float [ %673, %720 ], [ 0.000000e+00, %187 ]
  %749 = phi float [ %676, %720 ], [ 0.000000e+00, %187 ]
  %750 = phi float [ %736, %720 ], [ 0.000000e+00, %187 ]
  %751 = icmp ult i32 %268, 2
  %752 = add i32 %44, 40
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = add i32 %44, 44
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = or i32 %757, %754
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %1691, label %760

; <label>:760                                     ; preds = %737
  %761 = add i32 %44, 172
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = lshr i32 %763, 16
  %765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %764)  ; LegacyF16ToF32(value)
  %766 = fmul fast float %765, 0x3F50624DE0000000
  %767 = add i32 %44, 72
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = lshr i32 %769, 16
  %771 = and i32 %770, 255
  %772 = lshr i32 %769, 24
  %773 = add i32 %44, 180
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = and i32 %775, 65535
  %777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %776)  ; LegacyF16ToF32(value)
  %778 = lshr i32 %775, 16
  %779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %778)  ; LegacyF16ToF32(value)
  %780 = add i32 %44, 48
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %780, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = lshr i32 %782, 22
  %784 = shl nuw nsw i32 %783, 5
  %785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %784)  ; LegacyF16ToF32(value)
  %786 = shl i32 %782, 4
  %787 = and i32 %786, 32752
  %788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %787)  ; LegacyF16ToF32(value)
  %789 = lshr i32 %782, 7
  %790 = and i32 %789, 32752
  %791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %790)  ; LegacyF16ToF32(value)
  %792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %793 = extractvalue %dx.types.CBufRet.f32 %792, 3
  %794 = fmul fast float %793, 1.000000e+03
  %795 = fmul fast float %261, %794
  %796 = call float @dx.op.unary.f32(i32 22, float %795)  ; Frc(value)
  %797 = fadd fast float %796, %251
  %798 = fmul fast float %262, %794
  %799 = call float @dx.op.unary.f32(i32 22, float %798)  ; Frc(value)
  %800 = fadd fast float %799, %253
  %801 = fmul fast float %766, %794
  %802 = call float @dx.op.unary.f32(i32 22, float %801)  ; Frc(value)
  %803 = fmul fast float %802, 0x401921FB60000000
  %804 = fadd fast float %803, %785
  %805 = call float @dx.op.unary.f32(i32 13, float %804)  ; Sin(value)
  %806 = call float @dx.op.unary.f32(i32 12, float %804)  ; Cos(value)
  %807 = fsub fast float -0.000000e+00, %805
  %808 = fadd fast float %61, -5.000000e-01
  %809 = fadd fast float %62, -5.000000e-01
  %810 = fmul fast float %777, %808
  %811 = fmul fast float %779, %809
  %812 = fadd fast float %810, 5.000000e-01
  %813 = fadd fast float %811, 5.000000e-01
  %814 = fmul fast float %788, %812
  %815 = fmul fast float %791, %813
  %816 = fmul fast float %806, %814
  %817 = call float @dx.op.tertiary.f32(i32 46, float %807, float %815, float %816)  ; FMad(a,b,c)
  %818 = fmul fast float %805, %814
  %819 = call float @dx.op.tertiary.f32(i32 46, float %806, float %815, float %818)  ; FMad(a,b,c)
  %820 = fadd fast float %797, %817
  %821 = fadd fast float %800, %819
  %822 = icmp ugt i32 %771, 1
  %823 = icmp ugt i32 %769, 33554431
  %824 = or i1 %823, %822
  br i1 %824, label %825, label %850

; <label>:825                                     ; preds = %760
  %826 = add i32 %44, 148
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %826, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = lshr i32 %828, 16
  %830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %829)  ; LegacyF16ToF32(value)
  %831 = fmul fast float %793, %830
  %832 = call float @dx.op.unary.f32(i32 22, float %831)  ; Frc(value)
  %833 = mul nuw nsw i32 %771, %772
  %834 = uitofp i32 %833 to float
  %835 = fmul fast float %832, %834
  %836 = call float @dx.op.unary.f32(i32 27, float %835)  ; Round_ni(value)
  %837 = fptoui float %836 to i32
  %838 = urem i32 %837, %771
  %839 = udiv i32 %837, %772
  %840 = call float @dx.op.unary.f32(i32 22, float %820)  ; Frc(value)
  %841 = call float @dx.op.unary.f32(i32 22, float %821)  ; Frc(value)
  %842 = uitofp i32 %838 to float
  %843 = uitofp i32 %839 to float
  %844 = fadd fast float %840, %842
  %845 = fadd fast float %841, %843
  %846 = uitofp i32 %771 to float
  %847 = uitofp i32 %772 to float
  %848 = fdiv fast float %844, %846
  %849 = fdiv fast float %845, %847
  br label %850

; <label>:850                                     ; preds = %825, %760
  %851 = phi float [ %848, %825 ], [ %820, %760 ]
  %852 = phi float [ %849, %825 ], [ %821, %760 ]
  %853 = and i32 %754, 16777216
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %961, label %855

; <label>:855                                     ; preds = %850
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 0
  %858 = extractvalue %dx.types.CBufRet.f32 %856, 1
  %859 = extractvalue %dx.types.CBufRet.f32 %856, 2
  %860 = fadd fast float %857, %117
  %861 = fadd fast float %858, %118
  %862 = fadd fast float %859, %119
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.f32 %863, 0
  %865 = call float @dx.op.unary.f32(i32 7, float %864)  ; Saturate(value)
  %866 = icmp eq i32 %43, 65535
  br i1 %866, label %961, label %867

; <label>:867                                     ; preds = %855
  %868 = lshr i32 %43, 1
  %869 = shl i32 %868, 2
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = and i32 %43, 1
  %873 = icmp ne i32 %872, 0
  %874 = lshr i32 %871, 16
  %875 = and i32 %871, 65535
  %876 = select i1 %873, i32 %874, i32 %875
  %877 = icmp eq i32 %876, 65535
  br i1 %877, label %957, label %878

; <label>:878                                     ; preds = %867
  %879 = mul nuw nsw i32 %876, 40
  %880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %879, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.f32 %880, 0
  %882 = extractvalue %dx.types.ResRet.f32 %880, 1
  %883 = extractvalue %dx.types.ResRet.f32 %880, 2
  %884 = add nuw nsw i32 %879, 12
  %885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = extractvalue %dx.types.ResRet.f32 %885, 1
  %888 = extractvalue %dx.types.ResRet.f32 %885, 2
  %889 = add nuw nsw i32 %879, 24
  %890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %889, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.f32 %890, 0
  %892 = extractvalue %dx.types.ResRet.f32 %890, 1
  %893 = extractvalue %dx.types.ResRet.f32 %890, 2
  %894 = add nuw nsw i32 %879, 36
  %895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %894, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.f32 %895, 0
  %897 = fsub fast float %860, %881
  %898 = fsub fast float %861, %882
  %899 = fsub fast float %862, %883
  %900 = fmul fast float %896, %897
  %901 = fmul fast float %896, %898
  %902 = fmul fast float %896, %899
  %903 = call float @dx.op.unary.f32(i32 27, float %900)  ; Round_ni(value)
  %904 = call float @dx.op.unary.f32(i32 27, float %901)  ; Round_ni(value)
  %905 = call float @dx.op.unary.f32(i32 27, float %902)  ; Round_ni(value)
  %906 = fadd fast float %903, 5.000000e-01
  %907 = fadd fast float %904, 5.000000e-01
  %908 = fadd fast float %905, 5.000000e-01
  %909 = fmul fast float %906, %886
  %910 = fmul fast float %907, %887
  %911 = fmul fast float %908, %888
  %912 = shl i32 %43, 2
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = add i32 %914, 0
  %916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %917 = call float @dx.op.unary.f32(i32 22, float %909)  ; Frc(value)
  %918 = call float @dx.op.unary.f32(i32 22, float %910)  ; Frc(value)
  %919 = call float @dx.op.unary.f32(i32 22, float %911)  ; Frc(value)
  %920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %916, %dx.types.Handle %40, float %917, float %918, float %919, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 0
  %922 = extractvalue %dx.types.ResRet.f32 %920, 1
  %923 = extractvalue %dx.types.ResRet.f32 %920, 2
  %924 = fmul fast float %921, 1.023000e+03
  %925 = fmul fast float %922, 1.023000e+03
  %926 = fmul fast float %923, 1.023000e+03
  %927 = fadd fast float %924, 5.000000e-01
  %928 = fadd fast float %925, 5.000000e-01
  %929 = fadd fast float %926, 5.000000e-01
  %930 = call float @dx.op.unary.f32(i32 27, float %927)  ; Round_ni(value)
  %931 = call float @dx.op.unary.f32(i32 27, float %928)  ; Round_ni(value)
  %932 = call float @dx.op.unary.f32(i32 27, float %929)  ; Round_ni(value)
  %933 = fsub fast float %900, %903
  %934 = fsub fast float %901, %904
  %935 = fsub fast float %902, %905
  %936 = fmul fast float %933, 7.500000e-01
  %937 = fmul fast float %934, 7.500000e-01
  %938 = fmul fast float %935, 7.500000e-01
  %939 = fadd fast float %903, 1.250000e-01
  %940 = fadd fast float %939, %936
  %941 = fadd fast float %940, %930
  %942 = fadd fast float %904, 1.250000e-01
  %943 = fadd fast float %942, %937
  %944 = fadd fast float %943, %931
  %945 = fadd fast float %905, 1.250000e-01
  %946 = fadd fast float %945, %938
  %947 = fadd fast float %946, %932
  %948 = fmul fast float %941, %891
  %949 = fmul fast float %944, %892
  %950 = fmul fast float %947, %893
  %951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.i32 %951, 0
  %953 = add i32 %952, 0
  %954 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %953, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %954, %dx.types.Handle %38, float %948, float %949, float %950, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %956 = extractvalue %dx.types.ResRet.f32 %955, 0
  br label %957

; <label>:957                                     ; preds = %878, %867
  %958 = phi float [ %956, %878 ], [ -1.000000e+00, %867 ]
  %959 = fadd fast float %958, %865
  %960 = call float @dx.op.unary.f32(i32 7, float %959)  ; Saturate(value)
  br label %961

; <label>:961                                     ; preds = %957, %855, %850
  %962 = phi float [ 1.000000e+00, %850 ], [ %960, %957 ], [ %865, %855 ]
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = and i32 %964, 256
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %1013, label %967

; <label>:967                                     ; preds = %961
  %968 = add i32 %44, 236
  %969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %968, i32 undef)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.i32 %969, 0
  %971 = add i32 %970, 0
  %972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %971, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %973 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %972, %dx.types.Handle %67, float %851, float %852, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %974 = extractvalue %dx.types.ResRet.f32 %973, 0
  %975 = add i32 %44, 84
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = shl i32 %977, 4
  %979 = and i32 %978, 32752
  %980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %979)  ; LegacyF16ToF32(value)
  %981 = lshr i32 %977, 7
  %982 = and i32 %981, 32752
  %983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %982)  ; LegacyF16ToF32(value)
  %984 = fsub fast float 1.000000e+00, %962
  %985 = call float @dx.op.binary.f32(i32 35, float %984, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %986 = bitcast float %962 to i32
  %987 = sitofp i32 %986 to float
  %988 = fadd fast float %987, 0xC1CFBF8940000000
  %989 = fmul fast float %983, %988
  %990 = fadd fast float %989, 0x41CFBF8940000000
  %991 = fptosi float %990 to i32
  %992 = bitcast i32 %991 to float
  %993 = bitcast float %985 to i32
  %994 = sitofp i32 %993 to float
  %995 = fadd fast float %994, 0xC1CFBF8940000000
  %996 = fmul fast float %995, %983
  %997 = fadd fast float %996, 0x41CFBF8940000000
  %998 = fptosi float %997 to i32
  %999 = bitcast i32 %998 to float
  %1000 = fmul fast float %992, %980
  %1001 = fmul fast float %999, %980
  %1002 = fsub fast float %985, %1000
  %1003 = fadd fast float %1001, %985
  %1004 = call float @dx.op.unary.f32(i32 7, float %1002)  ; Saturate(value)
  %1005 = call float @dx.op.unary.f32(i32 7, float %1003)  ; Saturate(value)
  %1006 = fsub fast float %974, %1004
  %1007 = fsub fast float %1005, %1004
  %1008 = bitcast float %1007 to i32
  %1009 = sub nsw i32 2129859010, %1008
  %1010 = bitcast i32 %1009 to float
  %1011 = fmul fast float %1010, %1006
  %1012 = call float @dx.op.unary.f32(i32 7, float %1011)  ; Saturate(value)
  br label %1013

; <label>:1013                                    ; preds = %967, %961
  %1014 = phi float [ %1012, %967 ], [ %962, %961 ]
  %1015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.i32 %1015, 0
  %1017 = and i32 %1016, 128
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1035, label %1019

; <label>:1019                                    ; preds = %1013
  %1020 = add i32 %44, 228
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = add i32 %1022, 0
  %1024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1025 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1024, %dx.types.Handle %67, float %851, float %852, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1026 = extractvalue %dx.types.ResRet.f32 %1025, 0
  %1027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.i32 %1027, 0
  %1029 = and i32 %1028, 524288
  %1030 = icmp ne i32 %1029, 0
  %1031 = fcmp fast ogt float %1026, 0x3FE0101020000000
  %1032 = select i1 %1031, float 1.000000e+00, float 0.000000e+00
  %1033 = select i1 %1030, float %1032, float %1026
  %1034 = fmul fast float %1033, %1014
  br label %1035

; <label>:1035                                    ; preds = %1019, %1013
  %1036 = phi float [ %1034, %1019 ], [ %1014, %1013 ]
  %1037 = fcmp fast ult float %1036, 0x3F70101020000000
  br i1 %1037, label %1691, label %1038

; <label>:1038                                    ; preds = %1035
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = and i32 %1040, 16
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1241, label %1043

; <label>:1043                                    ; preds = %1038
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = add i32 %44, 204
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = add i32 %1048, 0
  %1050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1049, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1051 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1050, %dx.types.Handle %66, float %851, float %852, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.ResRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.ResRet.f32 %1051, 2
  %1055 = extractvalue %dx.types.ResRet.f32 %1051, 3
  %1056 = and i32 %1045, 255
  %1057 = uitofp i32 %1056 to float
  %1058 = lshr i32 %1045, 8
  %1059 = and i32 %1058, 255
  %1060 = uitofp i32 %1059 to float
  %1061 = fmul fast float %1055, %1057
  %1062 = fadd fast float %1061, %1060
  %1063 = fmul fast float %1062, 0x3F70101000000000
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = and i32 %1065, 512
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1076, label %1068

; <label>:1068                                    ; preds = %1043
  %1069 = add i32 %44, 244
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = add i32 %1071, 0
  %1073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1072, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1074 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1073, %dx.types.Handle %67, float %851, float %852, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 0
  br label %1076

; <label>:1076                                    ; preds = %1068, %1043
  %1077 = phi float [ %1075, %1068 ], [ 1.000000e+00, %1043 ]
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = and i32 %1079, 33554432
  %1081 = icmp eq i32 %1080, 0
  br i1 %1081, label %1188, label %1082

; <label>:1082                                    ; preds = %1076
  %1083 = add i32 %44, 144
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = and i32 %1085, 65535
  %1087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1086)  ; LegacyF16ToF32(value)
  %1088 = lshr i32 %1085, 16
  %1089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1088)  ; LegacyF16ToF32(value)
  %1090 = add i32 %44, 148
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = and i32 %1092, 65535
  %1094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1093)  ; LegacyF16ToF32(value)
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = lshr i32 %1096, 24
  %1098 = uitofp i32 %1097 to float
  %1099 = fmul fast float %1098, 0x3F70101020000000
  %1100 = and i32 %1096, 255
  %1101 = uitofp i32 %1100 to float
  %1102 = fmul fast float %1101, 0x3F70101020000000
  %1103 = lshr i32 %1096, 8
  %1104 = and i32 %1103, 255
  %1105 = uitofp i32 %1104 to float
  %1106 = fmul fast float %1105, 0x3F70101020000000
  %1107 = lshr i32 %1096, 16
  %1108 = and i32 %1107, 255
  %1109 = uitofp i32 %1108 to float
  %1110 = fmul fast float %1109, 0x3F70101020000000
  %1111 = add i32 %44, 140
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1128 = bitcast float %1052 to i32
  %1129 = ashr i32 %1128, 1
  %1130 = sub nsw i32 1597463174, %1129
  %1131 = bitcast i32 %1130 to float
  %1132 = fmul fast float %1052, 5.000000e-01
  %1133 = fmul fast float %1131, %1131
  %1134 = fmul fast float %1133, %1132
  %1135 = fsub fast float 1.500000e+00, %1134
  %1136 = fmul fast float %1131, %1052
  %1137 = fmul fast float %1136, %1135
  %1138 = bitcast float %1053 to i32
  %1139 = ashr i32 %1138, 1
  %1140 = sub nsw i32 1597463174, %1139
  %1141 = bitcast i32 %1140 to float
  %1142 = fmul fast float %1053, 5.000000e-01
  %1143 = fmul fast float %1141, %1141
  %1144 = fmul fast float %1143, %1142
  %1145 = fsub fast float 1.500000e+00, %1144
  %1146 = fmul fast float %1141, %1053
  %1147 = fmul fast float %1146, %1145
  %1148 = bitcast float %1054 to i32
  %1149 = ashr i32 %1148, 1
  %1150 = sub nsw i32 1597463174, %1149
  %1151 = bitcast i32 %1150 to float
  %1152 = fmul fast float %1054, 5.000000e-01
  %1153 = fmul fast float %1151, %1151
  %1154 = fmul fast float %1153, %1152
  %1155 = fsub fast float 1.500000e+00, %1154
  %1156 = fmul fast float %1151, %1054
  %1157 = fmul fast float %1156, %1155
  %1158 = fsub fast float %1137, %1119
  %1159 = fsub fast float %1147, %1123
  %1160 = fsub fast float %1157, %1127
  %1161 = fmul fast float %1158, %1087
  %1162 = fmul fast float %1159, %1089
  %1163 = fmul fast float %1160, %1094
  %1164 = fadd fast float %1161, %1102
  %1165 = fadd fast float %1162, %1106
  %1166 = fadd fast float %1163, %1110
  %1167 = call float @dx.op.unary.f32(i32 7, float %1164)  ; Saturate(value)
  %1168 = call float @dx.op.unary.f32(i32 7, float %1165)  ; Saturate(value)
  %1169 = call float @dx.op.unary.f32(i32 7, float %1166)  ; Saturate(value)
  %1170 = fmul fast float %1167, %1167
  %1171 = fmul fast float %1168, %1168
  %1172 = fmul fast float %1169, %1169
  %1173 = fsub fast float %1170, %1052
  %1174 = fsub fast float %1171, %1053
  %1175 = fsub fast float %1172, %1054
  %1176 = fmul fast float %1173, %1077
  %1177 = fmul fast float %1174, %1077
  %1178 = fmul fast float %1175, %1077
  %1179 = fadd fast float %1176, %1052
  %1180 = fadd fast float %1177, %1053
  %1181 = fadd fast float %1178, %1054
  %1182 = fadd fast float %1099, %1063
  %1183 = fsub fast float %1182, %1116
  %1184 = call float @dx.op.unary.f32(i32 7, float %1183)  ; Saturate(value)
  %1185 = fsub fast float %1184, %1063
  %1186 = fmul fast float %1185, %1077
  %1187 = fadd fast float %1186, %1063
  br label %1241

; <label>:1188                                    ; preds = %1076
  %1189 = and i32 %1079, 134217728
  %1190 = icmp eq i32 %1189, 0
  br i1 %1190, label %1225, label %1191

; <label>:1191                                    ; preds = %1188
  %1192 = call float @dx.op.unary.f32(i32 24, float %238)  ; Sqrt(value)
  %1193 = call float @dx.op.unary.f32(i32 24, float %242)  ; Sqrt(value)
  %1194 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %1195 = fadd fast float %1192, -5.000000e-01
  %1196 = fadd fast float %1193, -5.000000e-01
  %1197 = fadd fast float %1194, -5.000000e-01
  %1198 = fmul fast float %1195, %1077
  %1199 = fmul fast float %1196, %1077
  %1200 = fmul fast float %1197, %1077
  %1201 = fadd fast float %1198, 5.000000e-01
  %1202 = fadd fast float %1199, 5.000000e-01
  %1203 = fadd fast float %1200, 5.000000e-01
  %1204 = call float @dx.op.unary.f32(i32 24, float %1052)  ; Sqrt(value)
  %1205 = call float @dx.op.unary.f32(i32 24, float %1053)  ; Sqrt(value)
  %1206 = call float @dx.op.unary.f32(i32 24, float %1054)  ; Sqrt(value)
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
  %1226 = fmul fast float %238, %238
  %1227 = fmul fast float %242, %242
  %1228 = fmul fast float %246, %246
  %1229 = fadd fast float %1226, -1.000000e+00
  %1230 = fadd fast float %1227, -1.000000e+00
  %1231 = fadd fast float %1228, -1.000000e+00
  %1232 = fmul fast float %1077, %1229
  %1233 = fmul fast float %1077, %1230
  %1234 = fmul fast float %1077, %1231
  %1235 = fadd fast float %1232, 1.000000e+00
  %1236 = fadd fast float %1233, 1.000000e+00
  %1237 = fadd fast float %1234, 1.000000e+00
  %1238 = fmul fast float %1235, %1052
  %1239 = fmul fast float %1236, %1053
  %1240 = fmul fast float %1237, %1054
  br label %1241

; <label>:1241                                    ; preds = %1225, %1191, %1082, %1038
  %1242 = phi float [ %1187, %1082 ], [ %1063, %1191 ], [ %1063, %1225 ], [ 0x3FA23C0BE0000000, %1038 ]
  %1243 = phi float [ %1179, %1082 ], [ %1222, %1191 ], [ %1238, %1225 ], [ 1.000000e+00, %1038 ]
  %1244 = phi float [ %1180, %1082 ], [ %1223, %1191 ], [ %1239, %1225 ], [ 1.000000e+00, %1038 ]
  %1245 = phi float [ %1181, %1082 ], [ %1224, %1191 ], [ %1240, %1225 ], [ 1.000000e+00, %1038 ]
  %1246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.i32 %1246, 1
  %1248 = and i32 %1247, 1
  %1249 = icmp ne i32 %1248, 0
  %1250 = add i32 %44, 196
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = and i32 %1252, 32
  %1254 = icmp ne i32 %1253, 0
  %1255 = and i1 %1249, %1254
  %1256 = select i1 %1255, float 1.000000e+00, float %1243
  %1257 = select i1 %1255, float 0x3FD3333340000000, float %1244
  %1258 = select i1 %1255, float 0x3FD3333340000000, float %1245
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = and i32 %1260, 32
  %1262 = icmp eq i32 %1261, 0
  br i1 %1262, label %1335, label %1263

; <label>:1263                                    ; preds = %1241
  %1264 = add i32 %44, 76
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = add i32 %44, 212
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = add i32 %1269, 0
  %1271 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1270, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1272 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1271, %dx.types.Handle %66, float %851, float %852, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1273 = extractvalue %dx.types.ResRet.f32 %1272, 0
  %1274 = extractvalue %dx.types.ResRet.f32 %1272, 1
  %1275 = extractvalue %dx.types.ResRet.f32 %1272, 2
  %1276 = extractvalue %dx.types.ResRet.f32 %1272, 3
  %1277 = and i32 %1266, 255
  %1278 = uitofp i32 %1277 to float
  %1279 = lshr i32 %1266, 8
  %1280 = and i32 %1279, 255
  %1281 = uitofp i32 %1280 to float
  %1282 = lshr i32 %1266, 16
  %1283 = and i32 %1282, 255
  %1284 = uitofp i32 %1283 to float
  %1285 = fmul fast float %1284, 0x3F70101000000000
  %1286 = fmul fast float %1273, %1278
  %1287 = fadd fast float %1286, %1281
  %1288 = fmul fast float %1287, 0x3F70101000000000
  %1289 = fadd fast float %1274, -5.000000e-01
  %1290 = fadd fast float %1276, -5.000000e-01
  %1291 = fmul fast float %1289, %1285
  %1292 = fmul fast float %1290, %1285
  %1293 = fadd fast float %1291, 5.000000e-01
  %1294 = fadd fast float %1292, 5.000000e-01
  %1295 = fmul fast float %1293, 2.000000e+00
  %1296 = fadd fast float %1295, -1.000000e+00
  %1297 = fmul fast float %1294, 2.000000e+00
  %1298 = fadd fast float %1297, -1.000000e+00
  %1299 = fadd fast float %1296, %1298
  %1300 = fmul fast float %1299, 5.000000e-01
  %1301 = fsub fast float %1296, %1298
  %1302 = fmul fast float %1301, 5.000000e-01
  %1303 = call float @dx.op.unary.f32(i32 6, float %1300)  ; FAbs(value)
  %1304 = fsub fast float 1.000000e+00, %1303
  %1305 = call float @dx.op.unary.f32(i32 6, float %1302)  ; FAbs(value)
  %1306 = fsub fast float %1304, %1305
  %1307 = call float @dx.op.dot3.f32(i32 55, float %1300, float %1302, float %1306, float %1300, float %1302, float %1306)  ; Dot3(ax,ay,az,bx,by,bz)
  %1308 = call float @dx.op.unary.f32(i32 25, float %1307)  ; Rsqrt(value)
  %1309 = fmul fast float %1300, %1308
  %1310 = fmul fast float %1302, %1308
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = and i32 %1312, 67108864
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1331, label %1315

; <label>:1315                                    ; preds = %1263
  %1316 = add i32 %44, 168
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = and i32 %1318, 65535
  %1320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1319)  ; LegacyF16ToF32(value)
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = and i32 %1322, 65535
  %1324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1323)  ; LegacyF16ToF32(value)
  %1325 = lshr i32 %1318, 16
  %1326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1325)  ; LegacyF16ToF32(value)
  %1327 = fsub fast float %1288, %1326
  %1328 = fmul fast float %1327, %1320
  %1329 = fadd fast float %1328, %1324
  %1330 = call float @dx.op.unary.f32(i32 7, float %1329)  ; Saturate(value)
  br label %1331

; <label>:1331                                    ; preds = %1315, %1263
  %1332 = phi float [ %1330, %1315 ], [ %1288, %1263 ]
  %1333 = call float @dx.op.dot2.f32(i32 54, float %1309, float %1310, float %45, float %46)  ; Dot2(ax,ay,bx,by)
  %1334 = call float @dx.op.dot2.f32(i32 54, float %1309, float %1310, float %47, float %48)  ; Dot2(ax,ay,bx,by)
  br label %1335

; <label>:1335                                    ; preds = %1331, %1241
  %1336 = phi float [ %1332, %1331 ], [ 0x3FD6666660000000, %1241 ]
  %1337 = phi float [ %1333, %1331 ], [ 0.000000e+00, %1241 ]
  %1338 = phi float [ %1334, %1331 ], [ 0.000000e+00, %1241 ]
  %1339 = phi float [ %1275, %1331 ], [ 1.000000e+00, %1241 ]
  %1340 = add i32 %44, 112
  %1341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = lshr i32 %1342, 22
  %1344 = shl nuw nsw i32 %1343, 5
  %1345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1344)  ; LegacyF16ToF32(value)
  %1346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.i32 %1346, 0
  %1348 = and i32 %1347, 64
  %1349 = icmp eq i32 %1348, 0
  br i1 %1349, label %1383, label %1350

; <label>:1350                                    ; preds = %1335
  %1351 = add i32 %44, 220
  %1352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1351, i32 undef)  ; BufferLoad(srv,index,wot)
  %1353 = extractvalue %dx.types.ResRet.i32 %1352, 0
  %1354 = add i32 %1353, 0
  %1355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1354, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1357 = extractvalue %dx.types.ResRet.i32 %1356, 0
  %1358 = and i32 %1357, 131072
  %1359 = icmp eq i32 %1358, 0
  %1360 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1355, %dx.types.Handle %66, float %851, float %852, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1361 = extractvalue %dx.types.ResRet.f32 %1360, 0
  %1362 = extractvalue %dx.types.ResRet.f32 %1360, 1
  %1363 = extractvalue %dx.types.ResRet.f32 %1360, 2
  %1364 = fmul fast float %1361, %226
  %1365 = fmul fast float %1362, %229
  %1366 = fmul fast float %1363, %232
  br i1 %1359, label %1373, label %1367

; <label>:1367                                    ; preds = %1350
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 0
  %1370 = fmul fast float %1369, %1364
  %1371 = fmul fast float %1369, %1365
  %1372 = fmul fast float %1369, %1366
  br label %1373

; <label>:1373                                    ; preds = %1367, %1350
  %1374 = phi float [ %1370, %1367 ], [ %1364, %1350 ]
  %1375 = phi float [ %1371, %1367 ], [ %1365, %1350 ]
  %1376 = phi float [ %1372, %1367 ], [ %1366, %1350 ]
  %1377 = fmul fast float %1374, %1345
  %1378 = select i1 %188, float %1377, float %1374
  %1379 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1375, float %1376, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1380 = select i1 %188, float 0.000000e+00, float %1374
  %1381 = select i1 %188, float %1379, float %1375
  %1382 = select i1 %188, float 0.000000e+00, float %1376
  br label %1383

; <label>:1383                                    ; preds = %1373, %1335
  %1384 = phi float [ %1380, %1373 ], [ 0.000000e+00, %1335 ]
  %1385 = phi float [ %1381, %1373 ], [ 0.000000e+00, %1335 ]
  %1386 = phi float [ %1382, %1373 ], [ 0.000000e+00, %1335 ]
  %1387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.i32 %1387, 0
  %1389 = and i32 %1388, 1024
  %1390 = icmp eq i32 %1389, 0
  br i1 %1390, label %1421, label %1391

; <label>:1391                                    ; preds = %1383
  %1392 = add i32 %44, 104
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = and i32 %1394, 255
  %1396 = uitofp i32 %1395 to float
  %1397 = fmul fast float %1396, 0x3F70101020000000
  %1398 = lshr i32 %1394, 8
  %1399 = and i32 %1398, 255
  %1400 = uitofp i32 %1399 to float
  %1401 = fmul fast float %1400, 0x3F70101020000000
  %1402 = lshr i32 %1394, 16
  %1403 = and i32 %1402, 255
  %1404 = uitofp i32 %1403 to float
  %1405 = fmul fast float %1404, 0x3F70101020000000
  %1406 = fmul fast float %1397, %1397
  %1407 = fmul fast float %1401, %1401
  %1408 = fmul fast float %1405, %1405
  %1409 = add i32 %44, 252
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1409, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = add i32 %1411, 0
  %1413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1412, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1414 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1413, %dx.types.Handle %67, float %851, float %852, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1415 = extractvalue %dx.types.ResRet.f32 %1414, 0
  %1416 = extractvalue %dx.types.ResRet.f32 %1414, 1
  %1417 = extractvalue %dx.types.ResRet.f32 %1414, 2
  %1418 = fmul fast float %1406, %1415
  %1419 = fmul fast float %1407, %1416
  %1420 = fmul fast float %1408, %1417
  br label %1421

; <label>:1421                                    ; preds = %1391, %1383
  %1422 = phi float [ %1418, %1391 ], [ 0.000000e+00, %1383 ]
  %1423 = phi float [ %1419, %1391 ], [ 0.000000e+00, %1383 ]
  %1424 = phi float [ %1420, %1391 ], [ 0.000000e+00, %1383 ]
  %1425 = fcmp fast ogt float %1422, 0.000000e+00
  %1426 = fcmp fast ogt float %1423, 0.000000e+00
  %1427 = fcmp fast ogt float %1424, 0.000000e+00
  %1428 = call float @dx.op.unary.f32(i32 23, float %1422)  ; Log(value)
  %1429 = call float @dx.op.unary.f32(i32 23, float %1423)  ; Log(value)
  %1430 = call float @dx.op.unary.f32(i32 23, float %1424)  ; Log(value)
  %1431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1432 = extractvalue %dx.types.ResRet.i32 %1431, 0
  %1433 = lshr i32 %1432, 7
  %1434 = and i32 %1433, 32752
  %1435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1434)  ; LegacyF16ToF32(value)
  %1436 = fmul fast float %1428, 0xBFE62E4300000000
  %1437 = fmul fast float %1436, %1435
  %1438 = fmul fast float %1429, 0xBFE62E4300000000
  %1439 = fmul fast float %1438, %1435
  %1440 = fmul fast float %1430, 0xBFE62E4300000000
  %1441 = fmul fast float %1440, %1435
  %1442 = select i1 %1425, float %1437, float 1.270000e+02
  %1443 = select i1 %1426, float %1439, float 1.270000e+02
  %1444 = select i1 %1427, float %1441, float 1.270000e+02
  %1445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.i32 %1445, 0
  %1447 = and i32 %1446, 10240
  %1448 = icmp eq i32 %1447, 0
  br i1 %1448, label %1469, label %1449

; <label>:1449                                    ; preds = %1421
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = and i32 %1451, 2048
  %1453 = icmp eq i32 %1452, 0
  br i1 %1453, label %1469, label %1454

; <label>:1454                                    ; preds = %1449
  %1455 = add i32 %44, 260
  %1456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1455, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.i32 %1456, 0
  %1458 = add i32 %1457, 0
  %1459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1458, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1460 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1459, %dx.types.Handle %67, float %851, float %852, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1461 = extractvalue %dx.types.ResRet.f32 %1460, 3
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = shl i32 %1463, 4
  %1465 = and i32 %1464, 32752
  %1466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1465)  ; LegacyF16ToF32(value)
  %1467 = fmul fast float %1466, %1461
  %1468 = call float @dx.op.binary.f32(i32 35, float %1467, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1469

; <label>:1469                                    ; preds = %1454, %1449, %1421
  %1470 = phi float [ %1468, %1454 ], [ 0x3F70101020000000, %1449 ], [ 0x3F70101020000000, %1421 ]
  %1471 = add i32 %44, 80
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1471, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = and i32 %1473, 255
  %1475 = uitofp i32 %1474 to float
  %1476 = lshr i32 %1473, 8
  %1477 = and i32 %1476, 255
  %1478 = uitofp i32 %1477 to float
  %1479 = call float @dx.op.dot3.f32(i32 55, float %1256, float %1257, float %1258, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1480 = fmul fast float %1478, %1479
  %1481 = fadd fast float %1480, %1475
  %1482 = fmul fast float %1481, 0x3F70101020000000
  %1483 = call float @dx.op.unary.f32(i32 7, float %1482)  ; Saturate(value)
  br i1 %751, label %1484, label %1519

; <label>:1484                                    ; preds = %1469
  %1485 = fmul fast float %1470, 2.000000e+00
  %1486 = fcmp fast olt float %1442, 1.270000e+02
  %1487 = fcmp fast olt float %1443, 1.270000e+02
  %1488 = fcmp fast olt float %1444, 1.270000e+02
  %1489 = fmul fast float %1442, 0xBFF7154760000000
  %1490 = fmul fast float %1489, %1485
  %1491 = fmul fast float %1443, 0xBFF7154760000000
  %1492 = fmul fast float %1491, %1485
  %1493 = fmul fast float %1444, 0xBFF7154760000000
  %1494 = fmul fast float %1493, %1485
  %1495 = call float @dx.op.unary.f32(i32 21, float %1490)  ; Exp(value)
  %1496 = call float @dx.op.unary.f32(i32 21, float %1492)  ; Exp(value)
  %1497 = call float @dx.op.unary.f32(i32 21, float %1494)  ; Exp(value)
  %1498 = call float @dx.op.unary.f32(i32 7, float %1495)  ; Saturate(value)
  %1499 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  %1500 = call float @dx.op.unary.f32(i32 7, float %1497)  ; Saturate(value)
  %1501 = fadd fast float %1498, -1.000000e+00
  %1502 = select i1 %1486, float %1501, float -1.000000e+00
  %1503 = fadd fast float %1499, -1.000000e+00
  %1504 = select i1 %1487, float %1503, float -1.000000e+00
  %1505 = fadd fast float %1500, -1.000000e+00
  %1506 = select i1 %1488, float %1505, float -1.000000e+00
  %1507 = fmul fast float %1502, %1036
  %1508 = fmul fast float %1504, %1036
  %1509 = fmul fast float %1506, %1036
  %1510 = fadd fast float %1507, 1.000000e+00
  %1511 = fadd fast float %1508, 1.000000e+00
  %1512 = fadd fast float %1509, 1.000000e+00
  %1513 = fmul fast float %1510, %740
  %1514 = fmul fast float %1511, %741
  %1515 = fmul fast float %1512, %742
  %1516 = fmul fast float %1510, %743
  %1517 = fmul fast float %1511, %744
  %1518 = fmul fast float %1512, %745
  br label %1519

; <label>:1519                                    ; preds = %1484, %1469
  %1520 = phi float [ %1513, %1484 ], [ %740, %1469 ]
  %1521 = phi float [ %1514, %1484 ], [ %741, %1469 ]
  %1522 = phi float [ %1515, %1484 ], [ %742, %1469 ]
  %1523 = phi float [ %1516, %1484 ], [ %743, %1469 ]
  %1524 = phi float [ %1517, %1484 ], [ %744, %1469 ]
  %1525 = phi float [ %1518, %1484 ], [ %745, %1469 ]
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = and i32 %1527, 3
  %1529 = icmp eq i32 %1528, 3
  br i1 %1529, label %1608, label %1530

; <label>:1530                                    ; preds = %1519
  %1531 = and i32 %1527, 16
  %1532 = icmp ne i32 %1531, 0
  %1533 = select i1 %1532, float %1036, float 0.000000e+00
  %1534 = icmp eq i32 %1528, 0
  br i1 %1534, label %1535, label %1563

; <label>:1535                                    ; preds = %1530
  %1536 = and i32 %1527, 64
  %1537 = icmp ne i32 %1536, 0
  %1538 = select i1 %1537, float %1036, float 0.000000e+00
  %1539 = fsub fast float %1256, %1520
  %1540 = fsub fast float %1257, %1521
  %1541 = fsub fast float %1258, %1522
  %1542 = fmul fast float %1533, %1539
  %1543 = fmul fast float %1533, %1540
  %1544 = fmul fast float %1533, %1541
  %1545 = fadd fast float %1542, %1520
  %1546 = fadd fast float %1543, %1521
  %1547 = fadd fast float %1544, %1522
  %1548 = fsub fast float %1242, %746
  %1549 = fmul fast float %1533, %1548
  %1550 = fadd fast float %1549, %746
  %1551 = fsub fast float %1384, %1523
  %1552 = fsub fast float %1385, %1524
  %1553 = fsub fast float %1386, %1525
  %1554 = fmul fast float %1538, %1551
  %1555 = fmul fast float %1538, %1552
  %1556 = fmul fast float %1538, %1553
  %1557 = fadd fast float %1554, %1523
  %1558 = fadd fast float %1555, %1524
  %1559 = fadd fast float %1556, %1525
  %1560 = fsub fast float %1483, %750
  %1561 = fmul fast float %1533, %1560
  %1562 = fadd fast float %1561, %750
  br label %1608

; <label>:1563                                    ; preds = %1530
  %1564 = icmp eq i32 %1528, 1
  br i1 %1564, label %1565, label %1578

; <label>:1565                                    ; preds = %1563
  %1566 = fadd fast float %1256, -1.000000e+00
  %1567 = fadd fast float %1257, -1.000000e+00
  %1568 = fadd fast float %1258, -1.000000e+00
  %1569 = fmul fast float %1533, %1566
  %1570 = fmul fast float %1533, %1567
  %1571 = fmul fast float %1533, %1568
  %1572 = fadd fast float %1569, 1.000000e+00
  %1573 = fadd fast float %1570, 1.000000e+00
  %1574 = fadd fast float %1571, 1.000000e+00
  %1575 = fmul fast float %1572, %1520
  %1576 = fmul fast float %1573, %1521
  %1577 = fmul fast float %1574, %1522
  br label %1608

; <label>:1578                                    ; preds = %1563
  %1579 = icmp eq i32 %1528, 2
  br i1 %1579, label %1580, label %1608

; <label>:1580                                    ; preds = %1578
  %1581 = call float @dx.op.unary.f32(i32 24, float %1256)  ; Sqrt(value)
  %1582 = call float @dx.op.unary.f32(i32 24, float %1257)  ; Sqrt(value)
  %1583 = call float @dx.op.unary.f32(i32 24, float %1258)  ; Sqrt(value)
  %1584 = fadd fast float %1581, -5.000000e-01
  %1585 = fadd fast float %1582, -5.000000e-01
  %1586 = fadd fast float %1583, -5.000000e-01
  %1587 = fmul fast float %1584, %1533
  %1588 = fmul fast float %1585, %1533
  %1589 = fmul fast float %1586, %1533
  %1590 = fadd fast float %1587, 5.000000e-01
  %1591 = fadd fast float %1588, 5.000000e-01
  %1592 = fadd fast float %1589, 5.000000e-01
  %1593 = fmul fast float %1590, 2.000000e+00
  %1594 = fsub fast float 1.000000e+00, %1593
  %1595 = fmul fast float %1594, %1520
  %1596 = fadd fast float %1595, %1593
  %1597 = fmul fast float %1596, %1520
  %1598 = fmul fast float %1591, 2.000000e+00
  %1599 = fsub fast float 1.000000e+00, %1598
  %1600 = fmul fast float %1599, %1521
  %1601 = fadd fast float %1600, %1598
  %1602 = fmul fast float %1601, %1521
  %1603 = fmul fast float %1592, 2.000000e+00
  %1604 = fsub fast float 1.000000e+00, %1603
  %1605 = fmul fast float %1604, %1522
  %1606 = fadd fast float %1605, %1603
  %1607 = fmul fast float %1606, %1522
  br label %1608

; <label>:1608                                    ; preds = %1580, %1578, %1565, %1535, %1519
  %1609 = phi float [ %1520, %1519 ], [ %1597, %1580 ], [ %1520, %1578 ], [ %1575, %1565 ], [ %1545, %1535 ]
  %1610 = phi float [ %1521, %1519 ], [ %1602, %1580 ], [ %1521, %1578 ], [ %1576, %1565 ], [ %1546, %1535 ]
  %1611 = phi float [ %1522, %1519 ], [ %1607, %1580 ], [ %1522, %1578 ], [ %1577, %1565 ], [ %1547, %1535 ]
  %1612 = phi float [ %1523, %1519 ], [ %1523, %1580 ], [ %1523, %1578 ], [ %1523, %1565 ], [ %1557, %1535 ]
  %1613 = phi float [ %1524, %1519 ], [ %1524, %1580 ], [ %1524, %1578 ], [ %1524, %1565 ], [ %1558, %1535 ]
  %1614 = phi float [ %1525, %1519 ], [ %1525, %1580 ], [ %1525, %1578 ], [ %1525, %1565 ], [ %1559, %1535 ]
  %1615 = phi float [ %746, %1519 ], [ %746, %1580 ], [ %746, %1578 ], [ %746, %1565 ], [ %1550, %1535 ]
  %1616 = phi float [ %750, %1519 ], [ %750, %1580 ], [ %750, %1578 ], [ %750, %1565 ], [ %1562, %1535 ]
  %1617 = and i32 %1527, 12
  %1618 = icmp eq i32 %1617, 12
  br i1 %1618, label %1691, label %1619

; <label>:1619                                    ; preds = %1608
  %1620 = and i32 %1527, 2097184
  %1621 = icmp eq i32 %1620, 2097184
  %1622 = select i1 %1621, float %1036, float 0.000000e+00
  %1623 = and i32 %1527, 4194336
  %1624 = icmp eq i32 %1623, 4194336
  %1625 = select i1 %1624, float %1036, float 0.000000e+00
  %1626 = and i32 %1527, 8388640
  %1627 = icmp eq i32 %1626, 8388640
  %1628 = select i1 %1627, float %1036, float 0.000000e+00
  %1629 = icmp eq i32 %1617, 0
  br i1 %1629, label %1630, label %1643

; <label>:1630                                    ; preds = %1619
  %1631 = fsub fast float %1337, %738
  %1632 = fsub fast float %1338, %739
  %1633 = fmul fast float %1622, %1631
  %1634 = fmul fast float %1622, %1632
  %1635 = fadd fast float %1633, %738
  %1636 = fadd fast float %1634, %739
  %1637 = fsub fast float %1339, %749
  %1638 = fmul fast float %1625, %1637
  %1639 = fadd fast float %1638, %749
  %1640 = fsub fast float %1336, %748
  %1641 = fmul fast float %1628, %1640
  %1642 = fadd fast float %1641, %748
  br label %1691

; <label>:1643                                    ; preds = %1619
  %1644 = icmp eq i32 %1617, 4
  br i1 %1644, label %1645, label %1677

; <label>:1645                                    ; preds = %1643
  %1646 = fmul fast float %1622, %1337
  %1647 = fmul fast float %1622, %1338
  %1648 = fadd fast float %1646, %738
  %1649 = fadd fast float %1647, %739
  %1650 = call float @dx.op.binary.f32(i32 36, float %749, float %1339)  ; FMin(a,b)
  %1651 = fsub fast float %1650, %749
  %1652 = fmul fast float %1651, %1625
  %1653 = fadd fast float %1652, %749
  %1654 = fadd fast float %1336, %748
  %1655 = fmul fast float %1654, 0x3FF337FAE0000000
  %1656 = fmul fast float %748, %748
  %1657 = fmul fast float %1336, %1336
  %1658 = fadd fast float %1657, %1656
  %1659 = fmul fast float %1658, 0x3FE5152B00000000
  %1660 = fmul fast float %748, 0xBFCC1F85E0000000
  %1661 = fmul fast float %1660, %1336
  %1662 = fadd fast float %1661, 0xBFE1363700000000
  %1663 = fadd fast float %1662, %1655
  %1664 = fsub fast float %1663, %1659
  %1665 = fmul fast float %1654, 0x3FBA6F0D00000000
  %1666 = fmul fast float %1658, 0x3FD0432880000000
  %1667 = fmul fast float %748, 0xBFEF110800000000
  %1668 = fmul fast float %1667, %1336
  %1669 = fadd fast float %1668, 1.000000e+00
  %1670 = fsub fast float %1669, %1665
  %1671 = fadd fast float %1670, %1666
  %1672 = fdiv fast float %1664, %1671
  %1673 = call float @dx.op.unary.f32(i32 7, float %1672)  ; Saturate(value)
  %1674 = fsub fast float %1673, %748
  %1675 = fmul fast float %1674, %1628
  %1676 = fadd fast float %1675, %748
  br label %1691

; <label>:1677                                    ; preds = %1643
  %1678 = icmp eq i32 %1617, 8
  br i1 %1678, label %1679, label %1691

; <label>:1679                                    ; preds = %1677
  %1680 = fmul fast float %1622, %1337
  %1681 = fmul fast float %1622, %1338
  %1682 = fadd fast float %1680, %738
  %1683 = fadd fast float %1681, %739
  %1684 = call float @dx.op.binary.f32(i32 36, float %749, float %1339)  ; FMin(a,b)
  %1685 = fsub fast float %1684, %749
  %1686 = fmul fast float %1685, %1625
  %1687 = fadd fast float %1686, %749
  %1688 = fsub fast float %1336, %748
  %1689 = fmul fast float %1628, %1688
  %1690 = fadd fast float %1689, %748
  br label %1691

; <label>:1691                                    ; preds = %1679, %1677, %1645, %1630, %1608, %1035, %737
  %1692 = phi float [ %738, %1608 ], [ %738, %1035 ], [ %738, %737 ], [ %1635, %1630 ], [ %1648, %1645 ], [ %738, %1677 ], [ %1682, %1679 ]
  %1693 = phi float [ %739, %1608 ], [ %739, %1035 ], [ %739, %737 ], [ %1636, %1630 ], [ %1649, %1645 ], [ %739, %1677 ], [ %1683, %1679 ]
  %1694 = phi float [ %1609, %1608 ], [ %740, %1035 ], [ %740, %737 ], [ %1609, %1630 ], [ %1609, %1645 ], [ %1609, %1677 ], [ %1609, %1679 ]
  %1695 = phi float [ %1610, %1608 ], [ %741, %1035 ], [ %741, %737 ], [ %1610, %1630 ], [ %1610, %1645 ], [ %1610, %1677 ], [ %1610, %1679 ]
  %1696 = phi float [ %1611, %1608 ], [ %742, %1035 ], [ %742, %737 ], [ %1611, %1630 ], [ %1611, %1645 ], [ %1611, %1677 ], [ %1611, %1679 ]
  %1697 = phi float [ %1612, %1608 ], [ %743, %1035 ], [ %743, %737 ], [ %1612, %1630 ], [ %1612, %1645 ], [ %1612, %1677 ], [ %1612, %1679 ]
  %1698 = phi float [ %1613, %1608 ], [ %744, %1035 ], [ %744, %737 ], [ %1613, %1630 ], [ %1613, %1645 ], [ %1613, %1677 ], [ %1613, %1679 ]
  %1699 = phi float [ %1614, %1608 ], [ %745, %1035 ], [ %745, %737 ], [ %1614, %1630 ], [ %1614, %1645 ], [ %1614, %1677 ], [ %1614, %1679 ]
  %1700 = phi float [ %1615, %1608 ], [ %746, %1035 ], [ %746, %737 ], [ %1615, %1630 ], [ %1615, %1645 ], [ %1615, %1677 ], [ %1615, %1679 ]
  %1701 = phi float [ %748, %1608 ], [ %748, %1035 ], [ %748, %737 ], [ %1642, %1630 ], [ %1676, %1645 ], [ %748, %1677 ], [ %1690, %1679 ]
  %1702 = phi float [ %749, %1608 ], [ %749, %1035 ], [ %749, %737 ], [ %1639, %1630 ], [ %1653, %1645 ], [ %749, %1677 ], [ %1687, %1679 ]
  %1703 = phi float [ %1616, %1608 ], [ %750, %1035 ], [ %750, %737 ], [ %1616, %1630 ], [ %1616, %1645 ], [ %1616, %1677 ], [ %1616, %1679 ]
  %1704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1705 = extractvalue %dx.types.CBufRet.f32 %1704, 0
  %1706 = call float @dx.op.dot2.f32(i32 54, float %1692, float %1693, float %1692, float %1693)  ; Dot2(ax,ay,bx,by)
  %1707 = fmul fast float %1706, 0x3FE3333340000000
  %1708 = fsub fast float 1.000000e+00, %1707
  %1709 = call float @dx.op.dot3.f32(i32 55, float %1692, float %1693, float %1708, float %1692, float %1693, float %1708)  ; Dot3(ax,ay,az,bx,by,bz)
  %1710 = call float @dx.op.unary.f32(i32 25, float %1709)  ; Rsqrt(value)
  %1711 = fmul fast float %1710, %1692
  %1712 = fmul fast float %1710, %1693
  %1713 = fmul fast float %1708, %1710
  %1714 = fmul fast float %1713, %53
  %1715 = fmul fast float %1713, %54
  %1716 = fmul fast float %1713, %55
  %1717 = fmul fast float %1711, %49
  %1718 = fmul fast float %1711, %50
  %1719 = fmul fast float %1711, %51
  %1720 = fadd fast float %1714, %1717
  %1721 = fadd fast float %1715, %1718
  %1722 = fadd fast float %1716, %1719
  %1723 = fmul fast float %1712, %81
  %1724 = fmul fast float %1712, %82
  %1725 = fmul fast float %1712, %83
  %1726 = fadd fast float %1720, %1723
  %1727 = fadd fast float %1721, %1724
  %1728 = fadd fast float %1722, %1725
  %1729 = call float @dx.op.dot3.f32(i32 55, float %1726, float %1727, float %1728, float %1726, float %1727, float %1728)  ; Dot3(ax,ay,az,bx,by,bz)
  %1730 = call float @dx.op.unary.f32(i32 25, float %1729)  ; Rsqrt(value)
  %1731 = fmul fast float %1726, %1730
  %1732 = fmul fast float %1727, %1730
  %1733 = fmul fast float %1728, %1730
  %1734 = call float @dx.op.unary.f32(i32 83, float %117)  ; DerivCoarseX(value)
  %1735 = call float @dx.op.unary.f32(i32 83, float %118)  ; DerivCoarseX(value)
  %1736 = call float @dx.op.unary.f32(i32 83, float %119)  ; DerivCoarseX(value)
  %1737 = call float @dx.op.unary.f32(i32 84, float %117)  ; DerivCoarseY(value)
  %1738 = call float @dx.op.unary.f32(i32 84, float %118)  ; DerivCoarseY(value)
  %1739 = call float @dx.op.unary.f32(i32 84, float %119)  ; DerivCoarseY(value)
  %1740 = fadd fast float %1734, %117
  %1741 = fadd fast float %1735, %118
  %1742 = fadd fast float %1736, %119
  %1743 = fadd fast float %1737, %117
  %1744 = fadd fast float %1738, %118
  %1745 = fadd fast float %1739, %119
  %1746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1747 = extractvalue %dx.types.CBufRet.f32 %1746, 0
  %1748 = extractvalue %dx.types.CBufRet.f32 %1746, 1
  %1749 = extractvalue %dx.types.CBufRet.f32 %1746, 2
  %1750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1751 = extractvalue %dx.types.CBufRet.f32 %1750, 2
  %1752 = extractvalue %dx.types.CBufRet.f32 %1750, 3
  %1753 = fmul fast float %1747, %70
  %1754 = fmul fast float %1753, %1751
  %1755 = fmul fast float %1748, %71
  %1756 = fmul fast float %1755, %1752
  %1757 = fptoui float %1754 to i32
  %1758 = fptoui float %1756 to i32
  %1759 = fadd fast float %1747, -1.000000e+00
  %1760 = fadd fast float %1748, -1.000000e+00
  %1761 = fptoui float %1759 to i32
  %1762 = fptoui float %1760 to i32
  %1763 = call i32 @dx.op.binary.i32(i32 40, i32 %1757, i32 %1761)  ; UMin(a,b)
  %1764 = call i32 @dx.op.binary.i32(i32 40, i32 %1758, i32 %1762)  ; UMin(a,b)
  %1765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1766 = extractvalue %dx.types.CBufRet.f32 %1765, 2
  %1767 = extractvalue %dx.types.CBufRet.f32 %1765, 3
  %1768 = fmul fast float %1766, %65
  %1769 = fsub fast float %1768, %1767
  %1770 = fadd fast float %1749, -1.000000e+00
  %1771 = call float @dx.op.binary.f32(i32 36, float %1769, float %1770)  ; FMin(a,b)
  %1772 = fptoui float %1771 to i32
  %1773 = fptoui float %1747 to i32
  %1774 = fptoui float %1748 to i32
  %1775 = mul i32 %1772, %1774
  %1776 = add i32 %1775, %1764
  %1777 = mul i32 %1776, %1773
  %1778 = add i32 %1777, %1763
  %1779 = shl i32 %1778, 2
  %1780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.i32 %1780, 0
  %1782 = and i32 %1781, 1023
  %1783 = lshr i32 %1781, 10
  %1784 = icmp eq i32 %1782, 0
  br i1 %1784, label %2210, label %1785

; <label>:1785                                    ; preds = %1691
  %1786 = and i32 %1781, 1023
  br label %1787

; <label>:1787                                    ; preds = %1913, %1785
  %1788 = phi float [ %1914, %1913 ], [ 0.000000e+00, %1785 ]
  %1789 = phi float [ %1915, %1913 ], [ %1705, %1785 ]
  %1790 = phi float [ %1916, %1913 ], [ %1703, %1785 ]
  %1791 = phi float [ %1917, %1913 ], [ 0.000000e+00, %1785 ]
  %1792 = phi float [ %1918, %1913 ], [ 0.000000e+00, %1785 ]
  %1793 = phi float [ %1919, %1913 ], [ %1697, %1785 ]
  %1794 = phi float [ %1920, %1913 ], [ %1698, %1785 ]
  %1795 = phi float [ %1921, %1913 ], [ %1699, %1785 ]
  %1796 = phi float [ %1922, %1913 ], [ %1731, %1785 ]
  %1797 = phi float [ %1923, %1913 ], [ %1732, %1785 ]
  %1798 = phi float [ %1924, %1913 ], [ %1733, %1785 ]
  %1799 = phi float [ %1925, %1913 ], [ %1702, %1785 ]
  %1800 = phi float [ %1926, %1913 ], [ %1701, %1785 ]
  %1801 = phi float [ %1927, %1913 ], [ 0.000000e+00, %1785 ]
  %1802 = phi float [ %1928, %1913 ], [ %1700, %1785 ]
  %1803 = phi float [ %1929, %1913 ], [ %1694, %1785 ]
  %1804 = phi float [ %1930, %1913 ], [ %1695, %1785 ]
  %1805 = phi float [ %1931, %1913 ], [ %1696, %1785 ]
  %1806 = phi i32 [ %1863, %1913 ], [ 0, %1785 ]
  %1807 = add nuw nsw i32 %1806, %1783
  %1808 = shl i32 %1807, 2
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = shl i32 %1810, 8
  %1812 = or i32 %1811, 48
  %1813 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1812, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.f32 %1813, 0
  %1815 = extractvalue %dx.types.ResRet.f32 %1813, 1
  %1816 = extractvalue %dx.types.ResRet.f32 %1813, 2
  %1817 = extractvalue %dx.types.ResRet.f32 %1813, 3
  %1818 = or i32 %1811, 64
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = extractvalue %dx.types.ResRet.i32 %1819, 1
  %1822 = or i32 %1811, 80
  %1823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.f32 %1823, 2
  %1825 = extractvalue %dx.types.ResRet.f32 %1823, 3
  %1826 = or i32 %1811, 96
  %1827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.f32 %1827, 0
  %1829 = extractvalue %dx.types.ResRet.f32 %1827, 1
  %1830 = extractvalue %dx.types.ResRet.f32 %1827, 2
  %1831 = extractvalue %dx.types.ResRet.f32 %1827, 3
  %1832 = or i32 %1811, 112
  %1833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.f32 %1833, 2
  %1835 = or i32 %1811, 128
  %1836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.f32 %1836, 0
  %1838 = extractvalue %dx.types.ResRet.f32 %1836, 1
  %1839 = extractvalue %dx.types.ResRet.f32 %1836, 2
  %1840 = extractvalue %dx.types.ResRet.f32 %1836, 3
  %1841 = or i32 %1811, 144
  %1842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1841, i32 undef)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.f32 %1842, 0
  %1844 = extractvalue %dx.types.ResRet.f32 %1842, 1
  %1845 = extractvalue %dx.types.ResRet.f32 %1842, 2
  %1846 = extractvalue %dx.types.ResRet.f32 %1842, 3
  %1847 = or i32 %1811, 160
  %1848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.f32 %1848, 0
  %1850 = extractvalue %dx.types.ResRet.f32 %1848, 1
  %1851 = extractvalue %dx.types.ResRet.f32 %1848, 2
  %1852 = extractvalue %dx.types.ResRet.f32 %1848, 3
  %1853 = or i32 %1811, 192
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = or i32 %1811, 208
  %1857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.f32 %1857, 0
  %1859 = or i32 %1811, 248
  %1860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %1861 = extractvalue %dx.types.ResRet.f32 %1860, 0
  %1862 = extractvalue %dx.types.ResRet.f32 %1860, 1
  %1863 = add nuw nsw i32 %1806, 1
  %1864 = bitcast float %1817 to i32
  %1865 = and i32 %1864, 2560
  %1866 = icmp eq i32 %1865, 0
  %1867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.f32 %1867, 0
  %1869 = extractvalue %dx.types.ResRet.f32 %1867, 1
  %1870 = extractvalue %dx.types.ResRet.f32 %1867, 2
  %1871 = extractvalue %dx.types.ResRet.f32 %1867, 3
  %1872 = call float @dx.op.dot4.f32(i32 56, float %1868, float %1869, float %1870, float %1871, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1873 = or i32 %1811, 16
  %1874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.f32 %1874, 0
  %1876 = extractvalue %dx.types.ResRet.f32 %1874, 1
  %1877 = extractvalue %dx.types.ResRet.f32 %1874, 2
  %1878 = extractvalue %dx.types.ResRet.f32 %1874, 3
  %1879 = call float @dx.op.dot4.f32(i32 56, float %1875, float %1876, float %1877, float %1878, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1880 = or i32 %1811, 32
  %1881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %1882 = extractvalue %dx.types.ResRet.f32 %1881, 0
  %1883 = extractvalue %dx.types.ResRet.f32 %1881, 1
  %1884 = extractvalue %dx.types.ResRet.f32 %1881, 2
  %1885 = extractvalue %dx.types.ResRet.f32 %1881, 3
  %1886 = call float @dx.op.dot4.f32(i32 56, float %1882, float %1883, float %1884, float %1885, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1887 = call float @dx.op.unary.f32(i32 27, float %1872)  ; Round_ni(value)
  %1888 = call float @dx.op.unary.f32(i32 6, float %1887)  ; FAbs(value)
  %1889 = call float @dx.op.unary.f32(i32 27, float %1879)  ; Round_ni(value)
  %1890 = call float @dx.op.unary.f32(i32 6, float %1889)  ; FAbs(value)
  %1891 = call float @dx.op.unary.f32(i32 6, float %1886)  ; FAbs(value)
  %1892 = call float @dx.op.unary.f32(i32 27, float %1891)  ; Round_ni(value)
  %1893 = fadd fast float %1890, %1888
  %1894 = fadd fast float %1893, %1892
  %1895 = fcmp fast oeq float %1894, 0.000000e+00
  %1896 = call float @dx.op.dot4.f32(i32 56, float %1868, float %1869, float %1870, float %1871, float %1740, float %1741, float %1742, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1897 = call float @dx.op.dot4.f32(i32 56, float %1875, float %1876, float %1877, float %1878, float %1740, float %1741, float %1742, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1898 = call float @dx.op.dot4.f32(i32 56, float %1868, float %1869, float %1870, float %1871, float %1743, float %1744, float %1745, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1899 = call float @dx.op.dot4.f32(i32 56, float %1875, float %1876, float %1877, float %1878, float %1743, float %1744, float %1745, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1900 = fsub fast float %1896, %1872
  %1901 = fsub fast float %1898, %1872
  %1902 = fsub fast float %1897, %1879
  %1903 = fsub fast float %1899, %1879
  %1904 = call float @dx.op.dot3.f32(i32 55, float %1814, float %1815, float %1816, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %1905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1906 = extractvalue %dx.types.CBufRet.f32 %1905, 2
  %1907 = fadd fast float %1906, %1904
  %1908 = call float @dx.op.unary.f32(i32 7, float %1907)  ; Saturate(value)
  %1909 = extractvalue %dx.types.CBufRet.f32 %1905, 0
  %1910 = fcmp fast ogt float %1908, %1909
  %1911 = and i1 %1895, %1910
  %1912 = and i1 %1866, %1911
  br i1 %1912, label %1933, label %1913

; <label>:1913                                    ; preds = %2196, %2014, %1933, %1787
  %1914 = phi float [ %1788, %1933 ], [ %2017, %2014 ], [ %2017, %2196 ], [ %1788, %1787 ]
  %1915 = phi float [ %1789, %1933 ], [ %1789, %2014 ], [ %2171, %2196 ], [ %1789, %1787 ]
  %1916 = phi float [ %1790, %1933 ], [ %1790, %2014 ], [ %2169, %2196 ], [ %1790, %1787 ]
  %1917 = phi float [ %1791, %1933 ], [ %1791, %2014 ], [ %2141, %2196 ], [ %1791, %1787 ]
  %1918 = phi float [ %1792, %1933 ], [ %1792, %2014 ], [ %2139, %2196 ], [ %1792, %1787 ]
  %1919 = phi float [ %1793, %1933 ], [ %1793, %2014 ], [ %2206, %2196 ], [ %1793, %1787 ]
  %1920 = phi float [ %1794, %1933 ], [ %1794, %2014 ], [ %2207, %2196 ], [ %1794, %1787 ]
  %1921 = phi float [ %1795, %1933 ], [ %1795, %2014 ], [ %2208, %2196 ], [ %1795, %1787 ]
  %1922 = phi float [ %1796, %1933 ], [ %1796, %2014 ], [ %2120, %2196 ], [ %1796, %1787 ]
  %1923 = phi float [ %1797, %1933 ], [ %1797, %2014 ], [ %2121, %2196 ], [ %1797, %1787 ]
  %1924 = phi float [ %1798, %1933 ], [ %1798, %2014 ], [ %2122, %2196 ], [ %1798, %1787 ]
  %1925 = phi float [ %1799, %1933 ], [ %1799, %2014 ], [ %2149, %2196 ], [ %1799, %1787 ]
  %1926 = phi float [ %1800, %1933 ], [ %1800, %2014 ], [ %2146, %2196 ], [ %1800, %1787 ]
  %1927 = phi float [ %1801, %1933 ], [ %1801, %2014 ], [ %2143, %2196 ], [ %1801, %1787 ]
  %1928 = phi float [ %1802, %1933 ], [ %1802, %2014 ], [ %2137, %2196 ], [ %1802, %1787 ]
  %1929 = phi float [ %1803, %1933 ], [ %1803, %2014 ], [ %2132, %2196 ], [ %1803, %1787 ]
  %1930 = phi float [ %1804, %1933 ], [ %1804, %2014 ], [ %2133, %2196 ], [ %1804, %1787 ]
  %1931 = phi float [ %1805, %1933 ], [ %1805, %2014 ], [ %2134, %2196 ], [ %1805, %1787 ]
  %1932 = icmp eq i32 %1863, %1786
  br i1 %1932, label %2209, label %1787

; <label>:1933                                    ; preds = %1787
  %1934 = extractvalue %dx.types.ResRet.f32 %1833, 3
  %1935 = extractvalue %dx.types.ResRet.f32 %1833, 1
  %1936 = extractvalue %dx.types.ResRet.f32 %1833, 0
  %1937 = extractvalue %dx.types.ResRet.f32 %1823, 1
  %1938 = extractvalue %dx.types.ResRet.f32 %1823, 0
  %1939 = extractvalue %dx.types.ResRet.i32 %1819, 3
  %1940 = extractvalue %dx.types.ResRet.i32 %1819, 2
  %1941 = add i32 %1939, 0
  %1942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1941, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1943 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1944 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1942, %dx.types.Handle %1943, float %1872, float %1879, float undef, float undef, i32 0, i32 0, i32 undef, float %1900, float %1902, float undef, float %1901, float %1903, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1945 = extractvalue %dx.types.ResRet.f32 %1944, 0
  %1946 = fmul fast float %1945, %1938
  %1947 = fadd fast float %1946, %1937
  %1948 = call float @dx.op.unary.f32(i32 7, float %1947)  ; Saturate(value)
  %1949 = fmul fast float %1872, %1828
  %1950 = call float @dx.op.tertiary.f32(i32 46, float %1829, float %1879, float %1949)  ; FMad(a,b,c)
  %1951 = fadd fast float %1950, %1936
  %1952 = fmul fast float %1872, %1830
  %1953 = call float @dx.op.tertiary.f32(i32 46, float %1831, float %1879, float %1952)  ; FMad(a,b,c)
  %1954 = fadd fast float %1953, %1935
  %1955 = fmul fast float %1900, %1828
  %1956 = call float @dx.op.tertiary.f32(i32 46, float %1829, float %1902, float %1955)  ; FMad(a,b,c)
  %1957 = fmul fast float %1900, %1830
  %1958 = call float @dx.op.tertiary.f32(i32 46, float %1831, float %1902, float %1957)  ; FMad(a,b,c)
  %1959 = fmul fast float %1901, %1828
  %1960 = call float @dx.op.tertiary.f32(i32 46, float %1829, float %1903, float %1959)  ; FMad(a,b,c)
  %1961 = fmul fast float %1901, %1830
  %1962 = call float @dx.op.tertiary.f32(i32 46, float %1831, float %1903, float %1961)  ; FMad(a,b,c)
  %1963 = add i32 %1940, 0
  %1964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1963, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1965 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1964, %dx.types.Handle %1943, float %1951, float %1954, float undef, float undef, i32 0, i32 0, i32 undef, float %1956, float %1958, float undef, float %1960, float %1962, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1966 = extractvalue %dx.types.ResRet.f32 %1965, 0
  %1967 = and i32 %1864, 1024
  %1968 = icmp ne i32 %1967, 0
  %1969 = fcmp fast ogt float %1966, 0x3FE0101020000000
  %1970 = uitofp i1 %1969 to float
  %1971 = select i1 %1968, float %1970, float %1966
  %1972 = and i32 %1864, 8192
  %1973 = icmp ne i32 %1972, 0
  %1974 = select i1 %1973, float %1934, float 1.000000e+00
  %1975 = fmul fast float %1872, 2.000000e+00
  %1976 = fadd fast float %1975, -1.000000e+00
  %1977 = call float @dx.op.unary.f32(i32 6, float %1976)  ; FAbs(value)
  %1978 = fmul fast float %1977, %1861
  %1979 = fsub fast float %1978, %1861
  %1980 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  %1981 = fmul fast float %1879, 2.000000e+00
  %1982 = fadd fast float %1981, -1.000000e+00
  %1983 = call float @dx.op.unary.f32(i32 6, float %1982)  ; FAbs(value)
  %1984 = fmul fast float %1983, %1862
  %1985 = fsub fast float %1984, %1862
  %1986 = call float @dx.op.unary.f32(i32 7, float %1985)  ; Saturate(value)
  %1987 = fmul fast float %1891, %1824
  %1988 = fsub fast float %1987, %1824
  %1989 = call float @dx.op.unary.f32(i32 7, float %1988)  ; Saturate(value)
  %1990 = fmul fast float %1948, %1974
  %1991 = fmul fast float %1990, %1945
  %1992 = fmul fast float %1991, %1980
  %1993 = fmul fast float %1992, %1971
  %1994 = fmul fast float %1993, %1986
  %1995 = fmul fast float %1994, %1989
  %1996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1997 = extractvalue %dx.types.CBufRet.f32 %1996, 1
  %1998 = extractvalue %dx.types.CBufRet.f32 %1996, 0
  %1999 = fsub fast float %1908, %1998
  %2000 = fmul fast float %1999, %1997
  %2001 = call float @dx.op.unary.f32(i32 7, float %2000)  ; Saturate(value)
  %2002 = fmul fast float %1995, %1825
  %2003 = fadd fast float %1995, %1825
  %2004 = fmul fast float %2003, %1834
  %2005 = fsub fast float %2004, %1834
  %2006 = call float @dx.op.unary.f32(i32 7, float %2005)  ; Saturate(value)
  %2007 = and i32 %1864, 128
  %2008 = icmp ne i32 %2007, 0
  %2009 = select i1 %2008, float %2006, float %2002
  %2010 = fmul fast float %2009, %2001
  %2011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2012 = extractvalue %dx.types.CBufRet.f32 %2011, 0
  %2013 = fcmp fast ugt float %2010, %2012
  br i1 %2013, label %2014, label %1913

; <label>:2014                                    ; preds = %1933
  %2015 = select i1 %1973, float %2010, float 0.000000e+00
  %2016 = fadd fast float %2015, %1788
  %2017 = call float @dx.op.unary.f32(i32 7, float %2016)  ; Saturate(value)
  br i1 %1973, label %1913, label %2018

; <label>:2018                                    ; preds = %2014
  %2019 = and i32 %1864, 4
  %2020 = and i32 %1864, 8
  %2021 = add i32 %1820, 0
  %2022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2021, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2023 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2024 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2022, %dx.types.Handle %2023, float %1951, float %1954, float undef, float undef, i32 0, i32 0, i32 undef, float %1956, float %1958, float undef, float %1960, float %1962, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2025 = extractvalue %dx.types.ResRet.f32 %2024, 0
  %2026 = extractvalue %dx.types.ResRet.f32 %2024, 1
  %2027 = extractvalue %dx.types.ResRet.f32 %2024, 2
  %2028 = extractvalue %dx.types.ResRet.f32 %2024, 3
  %2029 = bitcast float %1846 to i32
  %2030 = and i32 %2029, 255
  %2031 = uitofp i32 %2030 to float
  %2032 = lshr i32 %2029, 8
  %2033 = and i32 %2032, 255
  %2034 = uitofp i32 %2033 to float
  %2035 = fmul fast float %2028, %2031
  %2036 = fadd fast float %2035, %2034
  %2037 = fmul fast float %2036, 0x3F70101000000000
  %2038 = add i32 %1821, 0
  %2039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2038, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2040 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2039, %dx.types.Handle %2023, float %1951, float %1954, float undef, float undef, i32 0, i32 0, i32 undef, float %1956, float %1958, float undef, float %1960, float %1962, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2041 = extractvalue %dx.types.ResRet.f32 %2040, 0
  %2042 = extractvalue %dx.types.ResRet.f32 %2040, 1
  %2043 = extractvalue %dx.types.ResRet.f32 %2040, 2
  %2044 = extractvalue %dx.types.ResRet.f32 %2040, 3
  %2045 = bitcast float %1840 to i32
  %2046 = and i32 %2045, 255
  %2047 = uitofp i32 %2046 to float
  %2048 = lshr i32 %2045, 8
  %2049 = and i32 %2048, 255
  %2050 = uitofp i32 %2049 to float
  %2051 = lshr i32 %2045, 16
  %2052 = and i32 %2051, 255
  %2053 = uitofp i32 %2052 to float
  %2054 = fmul fast float %2053, 0x3F70101000000000
  %2055 = fmul fast float %2041, %2047
  %2056 = fadd fast float %2055, %2050
  %2057 = fmul fast float %2056, 0x3F70101000000000
  %2058 = fadd fast float %2042, -5.000000e-01
  %2059 = fadd fast float %2044, -5.000000e-01
  %2060 = fmul fast float %2058, %2054
  %2061 = fmul fast float %2059, %2054
  %2062 = fadd fast float %2060, 5.000000e-01
  %2063 = fadd fast float %2061, 5.000000e-01
  %2064 = fmul fast float %2025, %1849
  %2065 = fmul fast float %2026, %1850
  %2066 = fmul fast float %2027, %1851
  %2067 = fmul fast float %2062, 2.000000e+00
  %2068 = fadd fast float %2067, -1.000000e+00
  %2069 = fmul fast float %2063, 2.000000e+00
  %2070 = fadd fast float %2069, -1.000000e+00
  %2071 = fadd fast float %2068, %2070
  %2072 = fmul fast float %2071, 5.000000e-01
  %2073 = fsub fast float %2068, %2070
  %2074 = fmul fast float %2073, 5.000000e-01
  %2075 = call float @dx.op.unary.f32(i32 6, float %2072)  ; FAbs(value)
  %2076 = fsub fast float 1.000000e+00, %2075
  %2077 = call float @dx.op.unary.f32(i32 6, float %2074)  ; FAbs(value)
  %2078 = fsub fast float %2076, %2077
  %2079 = call float @dx.op.dot3.f32(i32 55, float %2072, float %2074, float %2078, float %2072, float %2074, float %2078)  ; Dot3(ax,ay,az,bx,by,bz)
  %2080 = call float @dx.op.unary.f32(i32 25, float %2079)  ; Rsqrt(value)
  %2081 = fmul fast float %2072, %2080
  %2082 = fmul fast float %2074, %2080
  %2083 = fmul fast float %2080, %2078
  %2084 = fmul fast float %2083, %1814
  %2085 = fmul fast float %2083, %1815
  %2086 = fmul fast float %2083, %1816
  %2087 = fmul fast float %2081, %1837
  %2088 = fmul fast float %2081, %1838
  %2089 = fmul fast float %2081, %1839
  %2090 = fadd fast float %2087, %2084
  %2091 = fadd fast float %2088, %2085
  %2092 = fadd fast float %2089, %2086
  %2093 = fmul fast float %2082, %1843
  %2094 = fmul fast float %2082, %1844
  %2095 = fmul fast float %2082, %1845
  %2096 = fadd fast float %2090, %2093
  %2097 = fadd fast float %2091, %2094
  %2098 = fadd fast float %2092, %2095
  %2099 = call float @dx.op.dot3.f32(i32 55, float %2096, float %2097, float %2098, float %2096, float %2097, float %2098)  ; Dot3(ax,ay,az,bx,by,bz)
  %2100 = call float @dx.op.unary.f32(i32 25, float %2099)  ; Rsqrt(value)
  %2101 = fmul fast float %2096, %2100
  %2102 = fmul fast float %2097, %2100
  %2103 = fmul fast float %2098, %2100
  %2104 = icmp ne i32 %2020, 0
  %2105 = select i1 %2104, float 1.000000e+00, float 0.000000e+00
  %2106 = fmul fast float %2010, %2105
  %2107 = and i32 %1864, 1
  %2108 = icmp eq i32 %2107, 0
  br i1 %2108, label %2109, label %2113

; <label>:2109                                    ; preds = %2018
  %2110 = fsub fast float %2101, %1796
  %2111 = fsub fast float %2102, %1797
  %2112 = fsub fast float %2103, %1798
  br label %2113

; <label>:2113                                    ; preds = %2109, %2018
  %2114 = phi float [ %2110, %2109 ], [ %2101, %2018 ]
  %2115 = phi float [ %2111, %2109 ], [ %2102, %2018 ]
  %2116 = phi float [ %2112, %2109 ], [ %2103, %2018 ]
  %2117 = fmul float %2116, %2106
  %2118 = fmul float %2115, %2106
  %2119 = fmul float %2114, %2106
  %2120 = fadd fast float %2119, %1796
  %2121 = fadd fast float %2118, %1797
  %2122 = fadd fast float %2117, %1798
  %2123 = icmp ne i32 %2019, 0
  %2124 = select i1 %2123, float 1.000000e+00, float 0.000000e+00
  %2125 = fmul fast float %2010, %2124
  %2126 = fsub fast float %2064, %1803
  %2127 = fsub fast float %2065, %1804
  %2128 = fsub fast float %2066, %1805
  %2129 = fmul fast float %2126, %2125
  %2130 = fmul fast float %2127, %2125
  %2131 = fmul fast float %2128, %2125
  %2132 = fadd fast float %2129, %1803
  %2133 = fadd fast float %2130, %1804
  %2134 = fadd fast float %2131, %1805
  %2135 = fsub fast float %2037, %1802
  %2136 = fmul fast float %2135, %2125
  %2137 = fadd fast float %2136, %1802
  %2138 = fmul fast float %2125, %1792
  %2139 = fsub fast float %1792, %2138
  %2140 = fmul fast float %2125, %1791
  %2141 = fsub fast float %1791, %2140
  %2142 = fadd fast float %2010, %1801
  %2143 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2144 = fsub fast float %2057, %1800
  %2145 = fmul fast float %2144, %2106
  %2146 = fadd fast float %2145, %1800
  %2147 = fsub fast float %2043, %1799
  %2148 = fmul fast float %2147, %2106
  %2149 = fadd fast float %2148, %1799
  %2150 = call float @dx.op.dot3.f32(i32 55, float %2064, float %2065, float %2066, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2152 = extractvalue %dx.types.CBufRet.f32 %2151, 0
  %2153 = extractvalue %dx.types.CBufRet.f32 %2151, 1
  %2154 = fmul fast float %2153, %2150
  %2155 = fadd fast float %2154, %2152
  %2156 = call float @dx.op.unary.f32(i32 7, float %2155)  ; Saturate(value)
  %2157 = bitcast float %1852 to i32
  %2158 = and i32 %2157, 65535
  %2159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2158)  ; LegacyF16ToF32(value)
  %2160 = lshr i32 %2157, 16
  %2161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2160)  ; LegacyF16ToF32(value)
  %2162 = fcmp fast oge float %2159, 0.000000e+00
  %2163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2164 = extractvalue %dx.types.CBufRet.f32 %2163, 0
  %2165 = select i1 %2162, float %2159, float %2164
  %2166 = fadd fast float %2165, %2161
  %2167 = fsub fast float %2156, %1790
  %2168 = fmul fast float %2167, %2010
  %2169 = fadd fast float %2168, %1790
  %2170 = fmul fast float %2166, %2010
  %2171 = call float @dx.op.binary.f32(i32 35, float %1789, float %2170)  ; FMax(a,b)
  %2172 = and i32 %1864, 16
  %2173 = icmp eq i32 %2172, 0
  br i1 %2173, label %2196, label %2174

; <label>:2174                                    ; preds = %2113
  %2175 = bitcast float %1858 to i32
  %2176 = add i32 %1855, 0
  %2177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2176, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2178 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2177, %dx.types.Handle %2023, float %1951, float %1954, float undef, float undef, i32 0, i32 0, i32 undef, float %1956, float %1958, float undef, float %1960, float %1962, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2179 = extractvalue %dx.types.ResRet.f32 %2178, 0
  %2180 = extractvalue %dx.types.ResRet.f32 %2178, 1
  %2181 = extractvalue %dx.types.ResRet.f32 %2178, 2
  %2182 = and i32 %2175, 65535
  %2183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2182)  ; LegacyF16ToF32(value)
  %2184 = fmul fast float %2179, %1849
  %2185 = fmul fast float %2180, %1850
  %2186 = fmul fast float %2181, %1851
  %2187 = and i32 %1864, 16384
  %2188 = icmp ne i32 %2187, 0
  %2189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2190 = extractvalue %dx.types.CBufRet.f32 %2189, 0
  %2191 = select i1 %2188, float %2190, float 1.000000e+00
  %2192 = fmul fast float %2191, %2183
  %2193 = fmul fast float %2184, %2192
  %2194 = fmul fast float %2185, %2192
  %2195 = fmul fast float %2186, %2192
  br label %2196

; <label>:2196                                    ; preds = %2174, %2113
  %2197 = phi float [ %2193, %2174 ], [ 0.000000e+00, %2113 ]
  %2198 = phi float [ %2194, %2174 ], [ 0.000000e+00, %2113 ]
  %2199 = phi float [ %2195, %2174 ], [ 0.000000e+00, %2113 ]
  %2200 = fsub fast float %2197, %1793
  %2201 = fsub fast float %2198, %1794
  %2202 = fsub fast float %2199, %1795
  %2203 = fmul fast float %2200, %2010
  %2204 = fmul fast float %2201, %2010
  %2205 = fmul fast float %2202, %2010
  %2206 = fadd fast float %2203, %1793
  %2207 = fadd fast float %2204, %1794
  %2208 = fadd fast float %2205, %1795
  br label %1913

; <label>:2209                                    ; preds = %1913
  br label %2210

; <label>:2210                                    ; preds = %2209, %1691
  %2211 = phi float [ 0.000000e+00, %1691 ], [ %1914, %2209 ]
  %2212 = phi float [ %1705, %1691 ], [ %1915, %2209 ]
  %2213 = phi float [ %1703, %1691 ], [ %1916, %2209 ]
  %2214 = phi float [ 0.000000e+00, %1691 ], [ %1917, %2209 ]
  %2215 = phi float [ 0.000000e+00, %1691 ], [ %1918, %2209 ]
  %2216 = phi float [ %1697, %1691 ], [ %1919, %2209 ]
  %2217 = phi float [ %1698, %1691 ], [ %1920, %2209 ]
  %2218 = phi float [ %1699, %1691 ], [ %1921, %2209 ]
  %2219 = phi float [ %1731, %1691 ], [ %1922, %2209 ]
  %2220 = phi float [ %1732, %1691 ], [ %1923, %2209 ]
  %2221 = phi float [ %1733, %1691 ], [ %1924, %2209 ]
  %2222 = phi float [ %1702, %1691 ], [ %1925, %2209 ]
  %2223 = phi float [ %1701, %1691 ], [ %1926, %2209 ]
  %2224 = phi float [ 0.000000e+00, %1691 ], [ %1927, %2209 ]
  %2225 = phi float [ %1700, %1691 ], [ %1928, %2209 ]
  %2226 = phi float [ %1694, %1691 ], [ %1929, %2209 ]
  %2227 = phi float [ %1695, %1691 ], [ %1930, %2209 ]
  %2228 = phi float [ %1696, %1691 ], [ %1931, %2209 ]
  %2229 = call float @dx.op.dot3.f32(i32 55, float %2219, float %2220, float %2221, float %2219, float %2220, float %2221)  ; Dot3(ax,ay,az,bx,by,bz)
  %2230 = call float @dx.op.unary.f32(i32 25, float %2229)  ; Rsqrt(value)
  %2231 = fmul fast float %2230, %2219
  %2232 = fmul fast float %2230, %2220
  %2233 = fmul fast float %2230, %2221
  %2234 = fadd fast float %2224, %747
  %2235 = call float @dx.op.unary.f32(i32 7, float %2234)  ; Saturate(value)
  %2236 = call float @dx.op.dot3.f32(i32 55, float %2231, float %2232, float %2233, float %2231, float %2232, float %2233)  ; Dot3(ax,ay,az,bx,by,bz)
  %2237 = call float @dx.op.unary.f32(i32 25, float %2236)  ; Rsqrt(value)
  %2238 = fmul fast float %2237, %2231
  %2239 = fmul fast float %2237, %2232
  %2240 = fmul fast float %2237, %2233
  %2241 = fadd fast float %2225, 0xBFB99999A0000000
  %2242 = call float @dx.op.unary.f32(i32 7, float %2241)  ; Saturate(value)
  %2243 = fmul fast float %2242, 0x3FF1C71C80000000
  %2244 = call float @dx.op.binary.f32(i32 36, float %2225, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2245 = fsub fast float 1.000000e+00, %2243
  %2246 = call float @dx.op.unary.f32(i32 7, float %2245)  ; Saturate(value)
  %2247 = fmul fast float %2246, %2226
  %2248 = fmul fast float %2246, %2227
  %2249 = fmul fast float %2246, %2228
  %2250 = call float @dx.op.unary.f32(i32 7, float %2247)  ; Saturate(value)
  %2251 = call float @dx.op.unary.f32(i32 7, float %2248)  ; Saturate(value)
  %2252 = call float @dx.op.unary.f32(i32 7, float %2249)  ; Saturate(value)
  %2253 = fmul fast float %2243, %2226
  %2254 = fmul fast float %2243, %2227
  %2255 = fmul fast float %2243, %2228
  %2256 = fadd fast float %2253, %2244
  %2257 = fadd fast float %2254, %2244
  %2258 = fadd fast float %2255, %2244
  %2259 = call float @dx.op.unary.f32(i32 7, float %2256)  ; Saturate(value)
  %2260 = call float @dx.op.unary.f32(i32 7, float %2257)  ; Saturate(value)
  %2261 = call float @dx.op.unary.f32(i32 7, float %2258)  ; Saturate(value)
  %2262 = call float @dx.op.unary.f32(i32 7, float %2223)  ; Saturate(value)
  %2263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2264 = extractvalue %dx.types.CBufRet.i32 %2263, 3
  %2265 = and i32 %2264, 8
  %2266 = icmp ne i32 %2265, 0
  %2267 = call float @dx.op.binary.f32(i32 35, float %2250, float %2226)  ; FMax(a,b)
  %2268 = call float @dx.op.binary.f32(i32 35, float %2251, float %2226)  ; FMax(a,b)
  %2269 = call float @dx.op.binary.f32(i32 35, float %2252, float %2226)  ; FMax(a,b)
  %2270 = call float @dx.op.dot3.f32(i32 55, float %2250, float %2251, float %2252, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2271 = select i1 %188, float %2226, float %2250
  %2272 = select i1 %188, float %2270, float %2251
  %2273 = select i1 %188, float 1.000000e+00, float %2252
  %2274 = select i1 %2266, float %2267, float %2271
  %2275 = select i1 %2266, float %2268, float %2272
  %2276 = select i1 %2266, float %2269, float %2273
  %2277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2278 = extractvalue %dx.types.CBufRet.f32 %2277, 0
  %2279 = extractvalue %dx.types.CBufRet.f32 %2277, 1
  %2280 = extractvalue %dx.types.CBufRet.f32 %2277, 2
  %2281 = fadd fast float %2278, %117
  %2282 = fadd fast float %2279, %118
  %2283 = fadd fast float %2280, %119
  %2284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2285 = extractvalue %dx.types.CBufRet.f32 %2284, 0
  %2286 = extractvalue %dx.types.CBufRet.f32 %2284, 1
  %2287 = fsub fast float %2281, %2285
  %2288 = fsub fast float %2282, %2286
  %2289 = fmul fast float %2287, %2287
  %2290 = fmul fast float %2288, %2288
  %2291 = fadd fast float %2289, %2290
  %2292 = call float @dx.op.unary.f32(i32 24, float %2291)  ; Sqrt(value)
  %2293 = extractvalue %dx.types.CBufRet.f32 %2284, 2
  %2294 = fcmp fast olt float %2292, %2293
  br i1 %2294, label %2295, label %2362

; <label>:2295                                    ; preds = %2210
  %2296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2297 = extractvalue %dx.types.CBufRet.f32 %2296, 0
  %2298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2299 = extractvalue %dx.types.CBufRet.f32 %2298, 0
  %2300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2301 = extractvalue %dx.types.CBufRet.f32 %2300, 0
  %2302 = extractvalue %dx.types.CBufRet.f32 %2296, 1
  %2303 = extractvalue %dx.types.CBufRet.f32 %2298, 1
  %2304 = extractvalue %dx.types.CBufRet.f32 %2300, 1
  %2305 = extractvalue %dx.types.CBufRet.f32 %2296, 3
  %2306 = extractvalue %dx.types.CBufRet.f32 %2298, 3
  %2307 = extractvalue %dx.types.CBufRet.f32 %2300, 3
  %2308 = fadd fast float %2305, %2281
  %2309 = fadd fast float %2306, %2282
  %2310 = fadd fast float %2307, %2283
  %2311 = fmul fast float %2308, %2297
  %2312 = call float @dx.op.tertiary.f32(i32 46, float %2309, float %2299, float %2311)  ; FMad(a,b,c)
  %2313 = call float @dx.op.tertiary.f32(i32 46, float %2310, float %2301, float %2312)  ; FMad(a,b,c)
  %2314 = fmul fast float %2308, %2302
  %2315 = call float @dx.op.tertiary.f32(i32 46, float %2309, float %2303, float %2314)  ; FMad(a,b,c)
  %2316 = call float @dx.op.tertiary.f32(i32 46, float %2310, float %2304, float %2315)  ; FMad(a,b,c)
  %2317 = fsub fast float %2313, %2305
  %2318 = fsub fast float %2316, %2306
  %2319 = fsub fast float %2317, %2285
  %2320 = fadd fast float %2319, %2293
  %2321 = fsub fast float %2318, %2286
  %2322 = fadd fast float %2321, %2293
  %2323 = extractvalue %dx.types.CBufRet.f32 %2284, 3
  %2324 = fmul fast float %2320, %2323
  %2325 = fmul fast float %2322, %2323
  %2326 = call float @dx.op.unary.f32(i32 7, float %2324)  ; Saturate(value)
  %2327 = call float @dx.op.unary.f32(i32 7, float %2325)  ; Saturate(value)
  %2328 = fsub fast float 1.000000e+00, %2326
  %2329 = fsub fast float 1.000000e+00, %2327
  %2330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %2328, float %2329, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2331 = extractvalue %dx.types.ResRet.f32 %2330, 0
  %2332 = fcmp fast ugt float %2331, 0.000000e+00
  br i1 %2332, label %2333, label %2636

; <label>:2333                                    ; preds = %2295
  %2334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2335 = extractvalue %dx.types.CBufRet.f32 %2334, 2
  %2336 = fmul fast float %2335, %2331
  %2337 = extractvalue %dx.types.CBufRet.f32 %2334, 3
  %2338 = fadd fast float %2337, %2336
  %2339 = extractvalue %dx.types.CBufRet.f32 %2300, 2
  %2340 = fadd fast float %2338, %2307
  %2341 = fmul fast float %2313, %2301
  %2342 = call float @dx.op.tertiary.f32(i32 46, float %2316, float %2304, float %2341)  ; FMad(a,b,c)
  %2343 = call float @dx.op.tertiary.f32(i32 46, float %2340, float %2339, float %2342)  ; FMad(a,b,c)
  %2344 = fsub fast float %2343, %2307
  %2345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2346 = extractvalue %dx.types.CBufRet.f32 %2345, 2
  %2347 = fsub fast float %2344, %2346
  %2348 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %2328, float %2329, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2349 = extractvalue %dx.types.ResRet.f32 %2348, 0
  %2350 = extractvalue %dx.types.ResRet.f32 %2348, 1
  %2351 = extractvalue %dx.types.ResRet.f32 %2348, 2
  %2352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %2328, float %2329, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2353 = extractvalue %dx.types.ResRet.f32 %2352, 0
  %2354 = extractvalue %dx.types.ResRet.f32 %2352, 1
  %2355 = extractvalue %dx.types.ResRet.f32 %2352, 2
  %2356 = fadd fast float %2353, %2349
  %2357 = fmul fast float %2356, 0x3F847AE140000000
  %2358 = fadd fast float %2354, %2350
  %2359 = fmul fast float %2358, 0x3F847AE140000000
  %2360 = fadd fast float %2355, %2351
  %2361 = fmul fast float %2360, 0x3F847AE140000000
  br label %2636

; <label>:2362                                    ; preds = %2210
  %2363 = and i32 %164, 1
  %2364 = icmp eq i32 %2363, 0
  br i1 %2364, label %2636, label %2365

; <label>:2365                                    ; preds = %2362
  %2366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2367 = extractvalue %dx.types.CBufRet.f32 %2366, 0
  %2368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2369 = extractvalue %dx.types.CBufRet.f32 %2368, 0
  %2370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2371 = extractvalue %dx.types.CBufRet.f32 %2370, 0
  %2372 = extractvalue %dx.types.CBufRet.f32 %2366, 1
  %2373 = extractvalue %dx.types.CBufRet.f32 %2368, 1
  %2374 = extractvalue %dx.types.CBufRet.f32 %2370, 1
  %2375 = extractvalue %dx.types.CBufRet.f32 %2366, 3
  %2376 = extractvalue %dx.types.CBufRet.f32 %2368, 3
  %2377 = extractvalue %dx.types.CBufRet.f32 %2370, 3
  %2378 = fadd fast float %2375, %2281
  %2379 = fadd fast float %2376, %2282
  %2380 = fadd fast float %2377, %2283
  %2381 = fmul fast float %2378, %2367
  %2382 = call float @dx.op.tertiary.f32(i32 46, float %2379, float %2369, float %2381)  ; FMad(a,b,c)
  %2383 = call float @dx.op.tertiary.f32(i32 46, float %2380, float %2371, float %2382)  ; FMad(a,b,c)
  %2384 = fmul fast float %2378, %2372
  %2385 = call float @dx.op.tertiary.f32(i32 46, float %2379, float %2373, float %2384)  ; FMad(a,b,c)
  %2386 = call float @dx.op.tertiary.f32(i32 46, float %2380, float %2374, float %2385)  ; FMad(a,b,c)
  %2387 = fsub fast float %2383, %2375
  %2388 = fsub fast float %2386, %2376
  %2389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2390 = extractvalue %dx.types.CBufRet.f32 %2389, 0
  %2391 = extractvalue %dx.types.CBufRet.f32 %2389, 1
  %2392 = extractvalue %dx.types.CBufRet.f32 %2389, 2
  %2393 = extractvalue %dx.types.CBufRet.f32 %2389, 3
  %2394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2395 = extractvalue %dx.types.CBufRet.f32 %2394, 3
  %2396 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2397 = extractvalue %dx.types.CBufRet.i32 %2396, 0
  %2398 = extractvalue %dx.types.CBufRet.i32 %2396, 1
  %2399 = udiv i32 %2398, %2397
  %2400 = fsub fast float %2387, %2390
  %2401 = fsub fast float %2388, %2391
  %2402 = call float @dx.op.binary.f32(i32 35, float %2400, float 0.000000e+00)  ; FMax(a,b)
  %2403 = call float @dx.op.binary.f32(i32 35, float %2401, float 0.000000e+00)  ; FMax(a,b)
  %2404 = call float @dx.op.binary.f32(i32 36, float %2402, float %2392)  ; FMin(a,b)
  %2405 = call float @dx.op.binary.f32(i32 36, float %2403, float %2393)  ; FMin(a,b)
  %2406 = add i32 %2397, -1
  %2407 = add i32 %2399, -1
  %2408 = fmul fast float %2404, %2395
  %2409 = fmul fast float %2405, %2395
  %2410 = fptoui float %2408 to i32
  %2411 = fptoui float %2409 to i32
  %2412 = call i32 @dx.op.binary.i32(i32 40, i32 %2410, i32 %2406)  ; UMin(a,b)
  %2413 = call i32 @dx.op.binary.i32(i32 40, i32 %2411, i32 %2407)  ; UMin(a,b)
  %2414 = mul i32 %2413, %2397
  %2415 = add i32 %2414, %2412
  %2416 = shl i32 %2415, 2
  %2417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2416, i32 undef)  ; BufferLoad(srv,index,wot)
  %2418 = extractvalue %dx.types.ResRet.i32 %2417, 0
  %2419 = icmp eq i32 %2418, -1
  br i1 %2419, label %2636, label %2420

; <label>:2420                                    ; preds = %2365
  %2421 = mul i32 %2418, 148
  %2422 = add i32 %2421, 4
  %2423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2422, i32 undef)  ; BufferLoad(srv,index,wot)
  %2424 = extractvalue %dx.types.ResRet.f32 %2423, 0
  %2425 = add i32 %2421, 8
  %2426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2425, i32 undef)  ; BufferLoad(srv,index,wot)
  %2427 = extractvalue %dx.types.ResRet.f32 %2426, 0
  %2428 = add i32 %2421, 36
  %2429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2428, i32 undef)  ; BufferLoad(srv,index,wot)
  %2430 = extractvalue %dx.types.ResRet.f32 %2429, 0
  %2431 = add i32 %2421, 60
  %2432 = add i32 %2421, 92
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = add i32 %2421, 116
  %2436 = fsub fast float %2387, %2424
  %2437 = fsub fast float %2388, %2427
  %2438 = fmul fast float %2395, %2436
  %2439 = fmul fast float %2395, %2437
  %2440 = call float @dx.op.unary.f32(i32 7, float %2438)  ; Saturate(value)
  %2441 = call float @dx.op.unary.f32(i32 7, float %2439)  ; Saturate(value)
  %2442 = fsub fast float 1.000000e+00, %2441
  %2443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2444 = extractvalue %dx.types.CBufRet.f32 %2443, 2
  %2445 = call float @dx.op.unary.f32(i32 83, float %2440)  ; DerivCoarseX(value)
  %2446 = call float @dx.op.unary.f32(i32 83, float %2442)  ; DerivCoarseX(value)
  %2447 = call float @dx.op.unary.f32(i32 84, float %2440)  ; DerivCoarseY(value)
  %2448 = call float @dx.op.unary.f32(i32 84, float %2442)  ; DerivCoarseY(value)
  %2449 = fmul fast float %2445, %2444
  %2450 = fmul fast float %2446, %2444
  %2451 = fmul fast float %2447, %2444
  %2452 = fmul fast float %2448, %2444
  %2453 = call float @dx.op.dot2.f32(i32 54, float %2451, float %2452, float %2451, float %2452)  ; Dot2(ax,ay,bx,by)
  %2454 = call float @dx.op.dot2.f32(i32 54, float %2449, float %2450, float %2449, float %2450)  ; Dot2(ax,ay,bx,by)
  %2455 = call float @dx.op.binary.f32(i32 35, float %2454, float %2453)  ; FMax(a,b)
  %2456 = call float @dx.op.unary.f32(i32 23, float %2455)  ; Log(value)
  %2457 = fmul fast float %2456, 5.000000e-01
  %2458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2459 = extractvalue %dx.types.CBufRet.f32 %2458, 1
  %2460 = fadd fast float %2459, %2457
  %2461 = call float @dx.op.binary.f32(i32 35, float %2460, float 0.000000e+00)  ; FMax(a,b)
  %2462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2463 = extractvalue %dx.types.CBufRet.f32 %2462, 3
  %2464 = fadd fast float %2463, %2461
  %2465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2466 = extractvalue %dx.types.CBufRet.f32 %2465, 3
  %2467 = fadd fast float %2464, %2466
  %2468 = add i32 %2434, 0
  %2469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2468, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2470 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2469, i32 0)  ; GetDimensions(handle,mipLevel)
  %2471 = extractvalue %dx.types.Dimensions %2470, 0
  %2472 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2471)  ; FirstbitLo(value)
  %2473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2474 = extractvalue %dx.types.CBufRet.i32 %2473, 1
  %2475 = sub nsw i32 %2474, %2472
  %2476 = sitofp i32 %2475 to float
  %2477 = fsub fast float %2467, %2476
  %2478 = call float @dx.op.binary.f32(i32 35, float %2477, float 0.000000e+00)  ; FMax(a,b)
  %2479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2469, %dx.types.Handle %37, float %2440, float %2442, float %2430, float undef, i32 0, i32 0, i32 undef, float %2478)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2480 = extractvalue %dx.types.ResRet.f32 %2479, 0
  %2481 = fcmp ule float %2480, 0x3FE0101020000000
  %2482 = extractvalue %dx.types.CBufRet.i32 %2473, 0
  %2483 = and i32 %2482, 128
  %2484 = icmp ne i32 %2483, 0
  %2485 = and i1 %2481, %2484
  br i1 %2485, label %2636, label %2486

; <label>:2486                                    ; preds = %2420
  %2487 = add i32 %2421, 20
  %2488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2487, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.f32 %2488, 0
  %2490 = add i32 %2421, 24
  %2491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2490, i32 undef)  ; BufferLoad(srv,index,wot)
  %2492 = extractvalue %dx.types.ResRet.f32 %2491, 0
  %2493 = add i32 %2421, 40
  %2494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2493, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.f32 %2494, 0
  %2496 = add i32 %2421, 96
  %2497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2496, i32 undef)  ; BufferLoad(srv,index,wot)
  %2498 = extractvalue %dx.types.ResRet.i32 %2497, 0
  %2499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2500 = extractvalue %dx.types.CBufRet.f32 %2499, 2
  %2501 = fmul fast float %2500, %2440
  %2502 = fmul fast float %2500, %2442
  %2503 = extractvalue %dx.types.CBufRet.f32 %2499, 3
  %2504 = fadd fast float %2501, %2503
  %2505 = fadd fast float %2502, %2503
  %2506 = add i32 %2498, 0
  %2507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2506, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2508 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2507, i32 0)  ; GetDimensions(handle,mipLevel)
  %2509 = extractvalue %dx.types.Dimensions %2508, 0
  %2510 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2509)  ; FirstbitLo(value)
  %2511 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2512 = extractvalue %dx.types.CBufRet.i32 %2511, 1
  %2513 = sub nsw i32 %2512, %2510
  %2514 = sitofp i32 %2513 to float
  %2515 = fsub fast float %2464, %2514
  %2516 = call float @dx.op.binary.f32(i32 35, float %2515, float 0.000000e+00)  ; FMax(a,b)
  %2517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2507, %dx.types.Handle %37, float %2504, float %2505, float %2495, float undef, i32 0, i32 0, i32 undef, float %2516)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2518 = extractvalue %dx.types.ResRet.f32 %2517, 0
  %2519 = fmul fast float %2518, %2489
  %2520 = fadd fast float %2519, %2492
  %2521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2522 = extractvalue %dx.types.CBufRet.f32 %2521, 0
  %2523 = extractvalue %dx.types.CBufRet.f32 %2521, 1
  %2524 = extractvalue %dx.types.CBufRet.f32 %2521, 2
  %2525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2526 = extractvalue %dx.types.CBufRet.f32 %2525, 3
  %2527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2528 = extractvalue %dx.types.CBufRet.f32 %2527, 3
  %2529 = extractvalue %dx.types.CBufRet.f32 %2521, 3
  %2530 = fadd fast float %2526, %2387
  %2531 = fadd fast float %2528, %2388
  %2532 = fadd fast float %2520, %2529
  %2533 = fmul fast float %2530, %2522
  %2534 = call float @dx.op.tertiary.f32(i32 46, float %2531, float %2523, float %2533)  ; FMad(a,b,c)
  %2535 = call float @dx.op.tertiary.f32(i32 46, float %2532, float %2524, float %2534)  ; FMad(a,b,c)
  %2536 = fsub fast float %2535, %2529
  %2537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2538 = extractvalue %dx.types.CBufRet.f32 %2537, 2
  %2539 = fsub fast float %2536, %2538
  %2540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2541 = extractvalue %dx.types.CBufRet.i32 %2540, 0
  %2542 = call i32 @dx.op.binary.i32(i32 40, i32 %2418, i32 %2541)  ; UMin(a,b)
  %2543 = mul i32 %2542, 36
  %2544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2543, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.i32 %2544, 0
  %2546 = add i32 %2543, 4
  %2547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2548 = extractvalue %dx.types.CBufRet.f32 %2547, 0
  %2549 = fmul fast float %2548, %2440
  %2550 = fmul fast float %2548, %2442
  %2551 = extractvalue %dx.types.CBufRet.f32 %2547, 1
  %2552 = fadd fast float %2549, %2551
  %2553 = fadd fast float %2550, %2551
  %2554 = icmp eq i32 %2545, 0
  br i1 %2554, label %2623, label %2555

; <label>:2555                                    ; preds = %2486
  br label %2556

; <label>:2556                                    ; preds = %2613, %2555
  %2557 = phi float [ %2614, %2613 ], [ 0.000000e+00, %2555 ]
  %2558 = phi float [ %2615, %2613 ], [ 0.000000e+00, %2555 ]
  %2559 = phi float [ %2616, %2613 ], [ 0.000000e+00, %2555 ]
  %2560 = phi float [ %2617, %2613 ], [ 0.000000e+00, %2555 ]
  %2561 = phi float [ %2618, %2613 ], [ 0.000000e+00, %2555 ]
  %2562 = phi float [ %2619, %2613 ], [ 0.000000e+00, %2555 ]
  %2563 = phi i32 [ %2620, %2613 ], [ 0, %2555 ]
  %2564 = shl i32 %2563, 2
  %2565 = add i32 %2431, %2564
  %2566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.f32 %2566, 0
  %2568 = add i32 %2435, %2564
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2568, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = add i32 %2570, 0
  %2572 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2571, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2573 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2572, i32 0)  ; GetDimensions(handle,mipLevel)
  %2574 = extractvalue %dx.types.Dimensions %2573, 0
  %2575 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2574)  ; FirstbitLo(value)
  %2576 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2577 = extractvalue %dx.types.CBufRet.i32 %2576, 1
  %2578 = sub nsw i32 %2577, %2575
  %2579 = sitofp i32 %2578 to float
  %2580 = fsub fast float %2464, %2579
  %2581 = call float @dx.op.binary.f32(i32 35, float %2580, float 0.000000e+00)  ; FMax(a,b)
  %2582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2572, %dx.types.Handle %37, float %2552, float %2553, float %2567, float undef, i32 0, i32 0, i32 undef, float %2581)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2583 = extractvalue %dx.types.ResRet.f32 %2582, 0
  %2584 = fcmp fast ogt float %2583, 0.000000e+00
  br i1 %2584, label %2585, label %2613

; <label>:2585                                    ; preds = %2556
  %2586 = add i32 %2546, %2564
  %2587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2588 = extractvalue %dx.types.ResRet.i32 %2587, 0
  %2589 = and i32 %2588, 32767
  %2590 = mul nuw nsw i32 %2589, 928
  %2591 = add nuw nsw i32 %2590, 48
  %2592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2591, i32 undef)  ; BufferLoad(srv,index,wot)
  %2593 = extractvalue %dx.types.ResRet.f32 %2592, 0
  %2594 = extractvalue %dx.types.ResRet.f32 %2592, 1
  %2595 = extractvalue %dx.types.ResRet.f32 %2592, 2
  %2596 = add nuw nsw i32 %2590, 60
  %2597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2598 = extractvalue %dx.types.ResRet.f32 %2597, 0
  %2599 = extractvalue %dx.types.ResRet.f32 %2597, 1
  %2600 = extractvalue %dx.types.ResRet.f32 %2597, 2
  %2601 = fmul fast float %2593, %2583
  %2602 = fmul fast float %2594, %2583
  %2603 = fmul fast float %2595, %2583
  %2604 = fadd fast float %2601, %2557
  %2605 = fadd fast float %2602, %2558
  %2606 = fadd fast float %2603, %2559
  %2607 = fmul fast float %2598, %2583
  %2608 = fmul fast float %2599, %2583
  %2609 = fmul fast float %2600, %2583
  %2610 = fadd fast float %2607, %2560
  %2611 = fadd fast float %2608, %2561
  %2612 = fadd fast float %2609, %2562
  br label %2613

; <label>:2613                                    ; preds = %2585, %2556
  %2614 = phi float [ %2604, %2585 ], [ %2557, %2556 ]
  %2615 = phi float [ %2605, %2585 ], [ %2558, %2556 ]
  %2616 = phi float [ %2606, %2585 ], [ %2559, %2556 ]
  %2617 = phi float [ %2610, %2585 ], [ %2560, %2556 ]
  %2618 = phi float [ %2611, %2585 ], [ %2561, %2556 ]
  %2619 = phi float [ %2612, %2585 ], [ %2562, %2556 ]
  %2620 = add nuw i32 %2563, 1
  %2621 = icmp eq i32 %2620, %2545
  br i1 %2621, label %2622, label %2556

; <label>:2622                                    ; preds = %2613
  br label %2623

; <label>:2623                                    ; preds = %2622, %2486
  %2624 = phi float [ 0.000000e+00, %2486 ], [ %2614, %2622 ]
  %2625 = phi float [ 0.000000e+00, %2486 ], [ %2615, %2622 ]
  %2626 = phi float [ 0.000000e+00, %2486 ], [ %2616, %2622 ]
  %2627 = phi float [ 0.000000e+00, %2486 ], [ %2617, %2622 ]
  %2628 = phi float [ 0.000000e+00, %2486 ], [ %2618, %2622 ]
  %2629 = phi float [ 0.000000e+00, %2486 ], [ %2619, %2622 ]
  %2630 = fadd fast float %2627, %2624
  %2631 = fmul fast float %2630, 0x3F847AE140000000
  %2632 = fadd fast float %2628, %2625
  %2633 = fmul fast float %2632, 0x3F847AE140000000
  %2634 = fadd fast float %2629, %2626
  %2635 = fmul fast float %2634, 0x3F847AE140000000
  br label %2636

; <label>:2636                                    ; preds = %2623, %2420, %2365, %2362, %2333, %2295
  %2637 = phi float [ %2347, %2333 ], [ -1.310720e+05, %2295 ], [ %2539, %2623 ], [ -1.310720e+05, %2365 ], [ -1.310720e+05, %2420 ], [ -1.310720e+05, %2362 ]
  %2638 = phi float [ %2357, %2333 ], [ 0.000000e+00, %2295 ], [ %2631, %2623 ], [ 0.000000e+00, %2365 ], [ 0.000000e+00, %2420 ], [ 0.000000e+00, %2362 ]
  %2639 = phi float [ %2359, %2333 ], [ 0.000000e+00, %2295 ], [ %2633, %2623 ], [ 0.000000e+00, %2365 ], [ 0.000000e+00, %2420 ], [ 0.000000e+00, %2362 ]
  %2640 = phi float [ %2361, %2333 ], [ 0.000000e+00, %2295 ], [ %2635, %2623 ], [ 0.000000e+00, %2365 ], [ 0.000000e+00, %2420 ], [ 0.000000e+00, %2362 ]
  %2641 = phi i1 [ true, %2333 ], [ false, %2295 ], [ true, %2623 ], [ false, %2365 ], [ false, %2420 ], [ false, %2362 ]
  %2642 = and i32 %164, 3
  %2643 = icmp eq i32 %2642, 1
  %2644 = select i1 %2643, float 1.000000e+00, float 0.000000e+00
  %2645 = fsub fast float %2637, %119
  %2646 = call float @dx.op.unary.f32(i32 7, float %2645)  ; Saturate(value)
  %2647 = select i1 %2641, float %2646, float 1.000000e+00
  %2648 = fmul fast float %2647, %2644
  %2649 = icmp eq i32 %2642, 3
  %2650 = select i1 %2649, float 1.000000e+00, float %2648
  %2651 = call float @dx.op.binary.f32(i32 35, float %2211, float %2650)  ; FMax(a,b)
  %2652 = call float @dx.op.unary.f32(i32 7, float %2651)  ; Saturate(value)
  %2653 = fcmp fast une float %2652, 0.000000e+00
  %2654 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %2655 = call float @dx.op.unary.f32(i32 25, float %2654)  ; Rsqrt(value)
  br i1 %2653, label %2663, label %2656

; <label>:2656                                    ; preds = %2636
  %2657 = fmul fast float %2655, %117
  %2658 = fmul fast float %2655, %118
  %2659 = fmul fast float %2655, %119
  %2660 = fsub fast float -0.000000e+00, %2657
  %2661 = fsub fast float -0.000000e+00, %2658
  %2662 = fsub fast float -0.000000e+00, %2659
  br label %2831

; <label>:2663                                    ; preds = %2636
  %2664 = fmul fast float %117, %2655
  %2665 = fsub fast float -0.000000e+00, %2664
  %2666 = fmul fast float %118, %2655
  %2667 = fsub fast float -0.000000e+00, %2666
  %2668 = fmul fast float %119, %2655
  %2669 = fsub fast float -0.000000e+00, %2668
  %2670 = call float @dx.op.dot3.f32(i32 55, float %2665, float %2667, float %2669, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %2671 = fmul fast float %2652, 2.500000e+00
  %2672 = call float @dx.op.unary.f32(i32 7, float %2671)  ; Saturate(value)
  %2673 = fmul fast float %2652, 0x4013FFFFE0000000
  %2674 = fadd fast float %2673, 0xBFFFFFFFE0000000
  %2675 = call float @dx.op.unary.f32(i32 7, float %2674)  ; Saturate(value)
  %2676 = fmul fast float %2652, 0x4004000020000000
  %2677 = fadd fast float %2676, 0xBFF8000040000000
  %2678 = call float @dx.op.unary.f32(i32 7, float %2677)  ; Saturate(value)
  %2679 = call float @dx.op.unary.f32(i32 7, float %2672)  ; Saturate(value)
  %2680 = fmul fast float %2241, 1.000000e+01
  %2681 = call float @dx.op.unary.f32(i32 7, float %2680)  ; Saturate(value)
  %2682 = fmul fast float %2681, 2.000000e+00
  %2683 = fsub fast float 3.000000e+00, %2682
  %2684 = fmul fast float %2681, %2681
  %2685 = fmul fast float %2684, %2683
  %2686 = fsub fast float 1.000000e+00, %2685
  %2687 = fsub fast float 0x3FE3333340000000, %2262
  %2688 = fmul fast float %2687, 0x400AAAAAA0000000
  %2689 = call float @dx.op.unary.f32(i32 7, float %2688)  ; Saturate(value)
  %2690 = fmul fast float %2686, %2689
  %2691 = fmul fast float %2274, 0x3FEA2B8620000000
  %2692 = fmul fast float %2275, 0x3FEA2B8620000000
  %2693 = fmul fast float %2276, 0x3FEA2B8620000000
  %2694 = fadd fast float %2691, 0x3FC81DFBA0000000
  %2695 = fmul fast float %2694, %2274
  %2696 = fadd fast float %2695, 0x3F910E6020000000
  %2697 = fadd fast float %2692, 0x3FC81DFBA0000000
  %2698 = fmul fast float %2697, %2275
  %2699 = fadd fast float %2698, 0x3F910E6020000000
  %2700 = fadd fast float %2693, 0x3FC81DFBA0000000
  %2701 = fmul fast float %2700, %2276
  %2702 = fadd fast float %2701, 0x3F910E6020000000
  %2703 = call float @dx.op.unary.f32(i32 7, float %2696)  ; Saturate(value)
  %2704 = call float @dx.op.unary.f32(i32 7, float %2699)  ; Saturate(value)
  %2705 = call float @dx.op.unary.f32(i32 7, float %2702)  ; Saturate(value)
  %2706 = fsub fast float %2703, %2274
  %2707 = fsub fast float %2704, %2275
  %2708 = fsub fast float %2705, %2276
  %2709 = fmul fast float %2706, %2679
  %2710 = fmul fast float %2709, %2690
  %2711 = fmul fast float %2707, %2679
  %2712 = fmul fast float %2711, %2690
  %2713 = fmul fast float %2708, %2679
  %2714 = fmul fast float %2713, %2690
  %2715 = fadd fast float %2710, %2274
  %2716 = fadd fast float %2712, %2275
  %2717 = fadd fast float %2714, %2276
  %2718 = fmul fast float %2222, %2222
  %2719 = fmul fast float %2718, %2718
  %2720 = fadd fast float %2675, 1.000000e+00
  %2721 = fsub fast float %2720, %2690
  %2722 = call float @dx.op.unary.f32(i32 7, float %2721)  ; Saturate(value)
  %2723 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2724 = call float @dx.op.unary.f32(i32 7, float %2723)  ; Saturate(value)
  %2725 = fsub fast float 1.000000e+00, %2719
  %2726 = call float @dx.op.binary.f32(i32 36, float %2722, float %2725)  ; FMin(a,b)
  %2727 = call float @dx.op.unary.f32(i32 7, float %2678)  ; Saturate(value)
  %2728 = call float @dx.op.binary.f32(i32 35, float %2726, float %2727)  ; FMax(a,b)
  %2729 = fadd fast float %2724, 0xBFE4CCCCC0000000
  %2730 = fmul fast float %2729, 0x4006DB6DA0000000
  %2731 = call float @dx.op.unary.f32(i32 7, float %2730)  ; Saturate(value)
  %2732 = fmul fast float %2731, 2.000000e+00
  %2733 = fsub fast float 3.000000e+00, %2732
  %2734 = bitcast float %2259 to i32
  %2735 = ashr i32 %2734, 1
  %2736 = add nsw i32 %2735, 532487669
  %2737 = bitcast i32 %2736 to float
  %2738 = fsub fast float 1.000000e+00, %2737
  %2739 = bitcast float %2738 to i32
  %2740 = sub nsw i32 2129859010, %2739
  %2741 = bitcast i32 %2740 to float
  %2742 = fmul fast float %2741, 2.000000e+00
  %2743 = bitcast float %2260 to i32
  %2744 = ashr i32 %2743, 1
  %2745 = add nsw i32 %2744, 532487669
  %2746 = bitcast i32 %2745 to float
  %2747 = fsub fast float 1.000000e+00, %2746
  %2748 = bitcast float %2747 to i32
  %2749 = sub nsw i32 2129859010, %2748
  %2750 = bitcast i32 %2749 to float
  %2751 = fmul fast float %2750, 2.000000e+00
  %2752 = bitcast float %2261 to i32
  %2753 = ashr i32 %2752, 1
  %2754 = add nsw i32 %2753, 532487669
  %2755 = bitcast i32 %2754 to float
  %2756 = fsub fast float 1.000000e+00, %2755
  %2757 = bitcast float %2756 to i32
  %2758 = sub nsw i32 2129859010, %2757
  %2759 = bitcast i32 %2758 to float
  %2760 = fmul fast float %2759, 2.000000e+00
  %2761 = fsub fast float 0x4002A9FBE0000000, %2742
  %2762 = fadd fast float %2742, 0x3FD54FDF00000000
  %2763 = bitcast float %2762 to i32
  %2764 = sub nsw i32 2129859010, %2763
  %2765 = bitcast i32 %2764 to float
  %2766 = fmul fast float %2765, %2761
  %2767 = fmul fast float %2766, %2766
  %2768 = fsub fast float 0x4002A9FBE0000000, %2751
  %2769 = fadd fast float %2751, 0x3FD54FDF00000000
  %2770 = bitcast float %2769 to i32
  %2771 = sub nsw i32 2129859010, %2770
  %2772 = bitcast i32 %2771 to float
  %2773 = fmul fast float %2772, %2768
  %2774 = fmul fast float %2773, %2773
  %2775 = fsub fast float 0x4002A9FBE0000000, %2760
  %2776 = fadd fast float %2760, 0x3FD54FDF00000000
  %2777 = bitcast float %2776 to i32
  %2778 = sub nsw i32 2129859010, %2777
  %2779 = bitcast i32 %2778 to float
  %2780 = fmul fast float %2779, %2775
  %2781 = fmul fast float %2780, %2780
  %2782 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2767)  ; FMax(a,b)
  %2783 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2774)  ; FMax(a,b)
  %2784 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2781)  ; FMax(a,b)
  %2785 = fsub fast float 1.000000e+00, %2670
  %2786 = fadd fast float %2785, %2686
  %2787 = call float @dx.op.unary.f32(i32 7, float %2786)  ; Saturate(value)
  %2788 = fsub fast float 1.000000e+00, %2650
  %2789 = fmul fast float %2728, %2788
  %2790 = fmul fast float %2731, %2731
  %2791 = fmul fast float %2790, %2789
  %2792 = fmul fast float %2791, %2733
  %2793 = fmul fast float %2788, 0xBFE99999A0000000
  %2794 = fmul fast float %2793, %2679
  %2795 = fmul fast float %2794, %2690
  %2796 = fadd fast float %2795, 1.000000e+00
  %2797 = fadd fast float %2262, -1.000000e+00
  %2798 = fmul fast float %2796, %2797
  %2799 = fadd fast float %2798, 1.000000e+00
  %2800 = fsub fast float %2782, %2259
  %2801 = fsub fast float %2783, %2260
  %2802 = fsub fast float %2784, %2261
  %2803 = fmul fast float %2792, %2800
  %2804 = fmul fast float %2792, %2801
  %2805 = fmul fast float %2792, %2802
  %2806 = fadd fast float %2803, %2259
  %2807 = fadd fast float %2804, %2260
  %2808 = fadd fast float %2805, %2261
  %2809 = fsub fast float %53, %2238
  %2810 = fsub fast float %54, %2239
  %2811 = fsub fast float %55, %2240
  %2812 = fmul fast float %2792, %2809
  %2813 = fmul fast float %2792, %2810
  %2814 = fmul fast float %2792, %2811
  %2815 = fadd fast float %2812, %2238
  %2816 = fadd fast float %2813, %2239
  %2817 = fadd fast float %2814, %2240
  %2818 = fmul fast float %2792, %2787
  %2819 = call float @dx.op.unary.f32(i32 7, float %2799)  ; Saturate(value)
  %2820 = fsub fast float 1.000000e+00, %2819
  %2821 = fmul fast float %2818, %2820
  %2822 = fadd fast float %2821, %2819
  %2823 = fsub fast float 1.000000e+00, %2222
  %2824 = fmul fast float %2792, %2823
  %2825 = fadd fast float %2824, %2222
  %2826 = call float @dx.op.dot3.f32(i32 55, float %2815, float %2816, float %2817, float %2815, float %2816, float %2817)  ; Dot3(ax,ay,az,bx,by,bz)
  %2827 = call float @dx.op.unary.f32(i32 25, float %2826)  ; Rsqrt(value)
  %2828 = fmul fast float %2815, %2827
  %2829 = fmul fast float %2816, %2827
  %2830 = fmul fast float %2817, %2827
  br label %2831

; <label>:2831                                    ; preds = %2663, %2656
  %2832 = phi float [ %2662, %2656 ], [ %2669, %2663 ]
  %2833 = phi float [ %2661, %2656 ], [ %2667, %2663 ]
  %2834 = phi float [ %2660, %2656 ], [ %2665, %2663 ]
  %2835 = phi float [ %2659, %2656 ], [ %2668, %2663 ]
  %2836 = phi float [ %2658, %2656 ], [ %2666, %2663 ]
  %2837 = phi float [ %2657, %2656 ], [ %2664, %2663 ]
  %2838 = phi float [ %2259, %2656 ], [ %2806, %2663 ]
  %2839 = phi float [ %2260, %2656 ], [ %2807, %2663 ]
  %2840 = phi float [ %2261, %2656 ], [ %2808, %2663 ]
  %2841 = phi float [ %2274, %2656 ], [ %2715, %2663 ]
  %2842 = phi float [ %2275, %2656 ], [ %2716, %2663 ]
  %2843 = phi float [ %2276, %2656 ], [ %2717, %2663 ]
  %2844 = phi float [ %2238, %2656 ], [ %2828, %2663 ]
  %2845 = phi float [ %2239, %2656 ], [ %2829, %2663 ]
  %2846 = phi float [ %2240, %2656 ], [ %2830, %2663 ]
  %2847 = phi float [ %2262, %2656 ], [ %2822, %2663 ]
  %2848 = phi float [ %2222, %2656 ], [ %2825, %2663 ]
  %2849 = select i1 %188, float 0.000000e+00, float %2840
  %2850 = call float @dx.op.dot3.f32(i32 55, float %2844, float %2845, float %2846, float %2834, float %2833, float %2832)  ; Dot3(ax,ay,az,bx,by,bz)
  %2851 = call float @dx.op.unary.f32(i32 7, float %2850)  ; Saturate(value)
  %2852 = call float @dx.op.dot3.f32(i32 55, float %2837, float %2836, float %2835, float %2844, float %2845, float %2846)  ; Dot3(ax,ay,az,bx,by,bz)
  %2853 = fmul fast float %2852, 2.000000e+00
  %2854 = fmul fast float %2853, %2844
  %2855 = fmul fast float %2853, %2845
  %2856 = fmul fast float %2853, %2846
  %2857 = fsub fast float %2837, %2854
  %2858 = fsub fast float %2836, %2855
  %2859 = fsub fast float %2835, %2856
  %2860 = call float @dx.op.binary.f32(i32 36, float %2848, float 1.000000e+00)  ; FMin(a,b)
  %2861 = fsub fast float 1.000000e+00, %2848
  %2862 = bitcast float %2861 to i32
  %2863 = sub nsw i32 2129859010, %2862
  %2864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2865 = extractvalue %dx.types.CBufRet.f32 %2864, 0
  %2866 = extractvalue %dx.types.CBufRet.f32 %2864, 1
  %2867 = fadd fast float %2865, %117
  %2868 = fadd fast float %2866, %118
  %2869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2870 = extractvalue %dx.types.CBufRet.i32 %2869, 0
  %2871 = icmp eq i32 %2870, 1
  br i1 %2871, label %2872, label %2907

; <label>:2872                                    ; preds = %2831
  %2873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2874 = extractvalue %dx.types.CBufRet.f32 %2873, 0
  %2875 = extractvalue %dx.types.CBufRet.f32 %2873, 1
  %2876 = fsub fast float %2867, %2874
  %2877 = fsub fast float %2868, %2875
  %2878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2879 = extractvalue %dx.types.CBufRet.f32 %2878, 0
  %2880 = extractvalue %dx.types.CBufRet.f32 %2878, 1
  %2881 = fmul fast float %2876, %2879
  %2882 = fmul fast float %2877, %2880
  %2883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %2881, float %2882, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2884 = extractvalue %dx.types.ResRet.f32 %2883, 0
  %2885 = fcmp fast ogt float %2884, 0.000000e+00
  %2886 = extractvalue %dx.types.CBufRet.i32 %2869, 3
  %2887 = icmp ne i32 %2886, 0
  %2888 = and i1 %2885, %2887
  br i1 %2888, label %2889, label %2907, !dx.controlflow.hints !79

; <label>:2889                                    ; preds = %2872
  %2890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2891 = extractvalue %dx.types.CBufRet.f32 %2890, 0
  %2892 = extractvalue %dx.types.CBufRet.f32 %2890, 1
  %2893 = fsub fast float %2867, %2891
  %2894 = fsub fast float %2868, %2892
  %2895 = fmul fast float %2893, %2893
  %2896 = fmul fast float %2894, %2894
  %2897 = fadd fast float %2895, %2896
  %2898 = uitofp i32 %2886 to float
  %2899 = fmul fast float %2898, %2898
  %2900 = fcmp fast ogt float %2897, %2899
  br i1 %2900, label %2907, label %2901

; <label>:2901                                    ; preds = %2889
  %2902 = call float @dx.op.unary.f32(i32 24, float %2897)  ; Sqrt(value)
  %2903 = fsub fast float %2898, %2902
  %2904 = fmul fast float %2903, 0x3F75555560000000
  %2905 = call float @dx.op.unary.f32(i32 7, float %2904)  ; Saturate(value)
  %2906 = call float @dx.op.binary.f32(i32 36, float %2905, float %2884)  ; FMin(a,b)
  br label %2907

; <label>:2907                                    ; preds = %2901, %2889, %2872, %2831
  %2908 = phi float [ 1.000000e+00, %2831 ], [ %2906, %2901 ], [ %2884, %2872 ], [ 0.000000e+00, %2889 ]
  %2909 = fcmp fast ogt float %2908, 0.000000e+00
  br i1 %2909, label %2910, label %3008, !dx.controlflow.hints !80

; <label>:2910                                    ; preds = %2907
  %2911 = fadd fast float %148, 5.000000e-01
  %2912 = call float @dx.op.unary.f32(i32 27, float %2911)  ; Round_ni(value)
  %2913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %146, float %147, float %2912, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2914 = extractvalue %dx.types.ResRet.f32 %2913, 0
  %2915 = extractvalue %dx.types.ResRet.f32 %2913, 1
  %2916 = extractvalue %dx.types.ResRet.f32 %2913, 2
  %2917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2918 = extractvalue %dx.types.CBufRet.f32 %2917, 3
  %2919 = fmul fast float %2918, %2914
  %2920 = fmul fast float %2918, %2915
  %2921 = fmul fast float %2918, %2916
  %2922 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %146, float %147, float %2912, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2923 = extractvalue %dx.types.ResRet.f32 %2922, 0
  %2924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %146, float %147, float %2912, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2925 = extractvalue %dx.types.ResRet.f32 %2924, 0
  %2926 = extractvalue %dx.types.ResRet.f32 %2924, 1
  %2927 = fmul fast float %2925, 2.000000e+00
  %2928 = fmul fast float %2926, 2.000000e+00
  %2929 = fadd fast float %2927, -1.000000e+00
  %2930 = fadd fast float %2928, -1.000000e+00
  %2931 = fadd fast float %2929, %2930
  %2932 = fmul fast float %2931, 5.000000e-01
  %2933 = fsub fast float %2929, %2930
  %2934 = fmul fast float %2933, 5.000000e-01
  %2935 = call float @dx.op.unary.f32(i32 6, float %2932)  ; FAbs(value)
  %2936 = fsub fast float 1.000000e+00, %2935
  %2937 = call float @dx.op.unary.f32(i32 6, float %2934)  ; FAbs(value)
  %2938 = fsub fast float %2936, %2937
  %2939 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2938)  ; FMax(a,b)
  %2940 = call float @dx.op.dot3.f32(i32 55, float %2932, float %2934, float %2939, float %2932, float %2934, float %2939)  ; Dot3(ax,ay,az,bx,by,bz)
  %2941 = bitcast float %2940 to i32
  %2942 = ashr i32 %2941, 1
  %2943 = sub nsw i32 1597250115, %2942
  %2944 = bitcast i32 %2943 to float
  %2945 = fmul fast float %2944, %2932
  %2946 = fmul fast float %2944, %2934
  %2947 = fmul fast float %2944, %2939
  %2948 = fsub fast float 1.000000e+00, %2923
  %2949 = fdiv fast float %2948, %2947
  %2950 = fmul fast float %2947, %53
  %2951 = fmul fast float %2947, %54
  %2952 = fmul fast float %2947, %55
  %2953 = fmul fast float %2945, %49
  %2954 = fmul fast float %2945, %50
  %2955 = fmul fast float %2945, %51
  %2956 = fadd fast float %2950, %2953
  %2957 = fadd fast float %2951, %2954
  %2958 = fadd fast float %2952, %2955
  %2959 = fmul fast float %2946, %81
  %2960 = fmul fast float %2946, %82
  %2961 = fmul fast float %2946, %83
  %2962 = fadd fast float %2956, %2959
  %2963 = fadd fast float %2957, %2960
  %2964 = fadd fast float %2958, %2961
  %2965 = call float @dx.op.dot3.f32(i32 55, float %2962, float %2963, float %2964, float %2962, float %2963, float %2964)  ; Dot3(ax,ay,az,bx,by,bz)
  %2966 = call float @dx.op.unary.f32(i32 25, float %2965)  ; Rsqrt(value)
  %2967 = fmul fast float %2962, %2966
  %2968 = fmul fast float %2963, %2966
  %2969 = fmul fast float %2964, %2966
  %2970 = call float @dx.op.dot3.f32(i32 55, float %2844, float %2845, float %2846, float %2844, float %2845, float %2846)  ; Dot3(ax,ay,az,bx,by,bz)
  %2971 = call float @dx.op.unary.f32(i32 7, float %2970)  ; Saturate(value)
  %2972 = fmul fast float %2971, 5.000000e-01
  %2973 = fadd fast float %2972, 5.000000e-01
  %2974 = fmul fast float %2973, %2923
  %2975 = call float @dx.op.dot3.f32(i32 55, float %2844, float %2845, float %2846, float %2967, float %2968, float %2969)  ; Dot3(ax,ay,az,bx,by,bz)
  %2976 = call float @dx.op.unary.f32(i32 7, float %2975)  ; Saturate(value)
  %2977 = fmul fast float %2976, %2949
  %2978 = fadd fast float %2974, %2977
  %2979 = fsub fast float 5.000000e-01, %2972
  %2980 = fmul fast float %2979, %2841
  %2981 = fmul fast float %2979, %2842
  %2982 = fmul fast float %2979, %2843
  %2983 = fadd fast float %2978, %2980
  %2984 = fmul fast float %2983, %2919
  %2985 = fadd fast float %2978, %2981
  %2986 = fmul fast float %2985, %2920
  %2987 = fadd fast float %2978, %2982
  %2988 = fmul fast float %2987, %2921
  %2989 = call float @dx.op.dot3.f32(i32 55, float %2857, float %2858, float %2859, float %2844, float %2845, float %2846)  ; Dot3(ax,ay,az,bx,by,bz)
  %2990 = call float @dx.op.unary.f32(i32 7, float %2989)  ; Saturate(value)
  %2991 = fmul fast float %2990, 5.000000e-01
  %2992 = fadd fast float %2991, 5.000000e-01
  %2993 = fmul fast float %2992, %2923
  %2994 = call float @dx.op.dot3.f32(i32 55, float %2857, float %2858, float %2859, float %2967, float %2968, float %2969)  ; Dot3(ax,ay,az,bx,by,bz)
  %2995 = call float @dx.op.unary.f32(i32 7, float %2994)  ; Saturate(value)
  %2996 = fmul fast float %2995, %2949
  %2997 = fadd fast float %2993, %2996
  %2998 = fsub fast float 5.000000e-01, %2991
  %2999 = fmul fast float %2998, %2841
  %3000 = fmul fast float %2998, %2842
  %3001 = fmul fast float %2998, %2843
  %3002 = fadd fast float %2997, %2999
  %3003 = fmul fast float %3002, %2919
  %3004 = fadd fast float %2997, %3000
  %3005 = fmul fast float %3004, %2920
  %3006 = fadd fast float %2997, %3001
  %3007 = fmul fast float %3006, %2921
  br label %3008

; <label>:3008                                    ; preds = %2910, %2907
  %3009 = phi float [ %3003, %2910 ], [ 0.000000e+00, %2907 ]
  %3010 = phi float [ %3005, %2910 ], [ 0.000000e+00, %2907 ]
  %3011 = phi float [ %3007, %2910 ], [ 0.000000e+00, %2907 ]
  %3012 = phi float [ %2984, %2910 ], [ 0.000000e+00, %2907 ]
  %3013 = phi float [ %2986, %2910 ], [ 0.000000e+00, %2907 ]
  %3014 = phi float [ %2988, %2910 ], [ 0.000000e+00, %2907 ]
  %3015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %3016 = extractvalue %dx.types.CBufRet.f32 %3015, 0
  %3017 = fcmp fast ogt float %3016, 0.000000e+00
  %3018 = and i1 %2909, %3017
  br i1 %3018, label %3019, label %3223, !dx.controlflow.hints !81

; <label>:3019                                    ; preds = %3008
  %3020 = extractvalue %dx.types.CBufRet.f32 %2864, 2
  %3021 = fadd fast float %3020, %119
  %3022 = fmul fast float %2844, 3.200000e+01
  %3023 = fmul fast float %2845, 3.200000e+01
  %3024 = fadd fast float %2867, %3022
  %3025 = fadd fast float %2868, %3023
  %3026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3027 = extractvalue %dx.types.CBufRet.f32 %3026, 0
  %3028 = extractvalue %dx.types.CBufRet.f32 %3026, 1
  %3029 = fsub fast float %3024, %3027
  %3030 = fsub fast float %3025, %3028
  %3031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3032 = extractvalue %dx.types.CBufRet.f32 %3031, 0
  %3033 = extractvalue %dx.types.CBufRet.f32 %3031, 1
  %3034 = fmul fast float %3029, %3032
  %3035 = fmul fast float %3030, %3033
  %3036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3037 = extractvalue %dx.types.CBufRet.f32 %3036, 0
  %3038 = extractvalue %dx.types.CBufRet.f32 %3036, 1
  %3039 = fsub fast float %2867, %3037
  %3040 = fsub fast float %2868, %3038
  %3041 = fmul fast float %3039, %3039
  %3042 = fmul fast float %3040, %3040
  %3043 = fadd fast float %3041, %3042
  %3044 = call float @dx.op.unary.f32(i32 24, float %3043)  ; Sqrt(value)
  %3045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3046 = extractvalue %dx.types.CBufRet.f32 %3045, 0
  %3047 = extractvalue %dx.types.CBufRet.f32 %3045, 1
  %3048 = fsub fast float %3044, %3046
  %3049 = fdiv fast float %3048, %3047
  %3050 = call float @dx.op.unary.f32(i32 7, float %3049)  ; Saturate(value)
  %3051 = fmul fast float %3050, 2.000000e+00
  %3052 = fsub fast float 3.000000e+00, %3051
  %3053 = fmul fast float %3050, %3050
  %3054 = fmul fast float %3053, %3052
  %3055 = fcmp fast oge float %3034, 0.000000e+00
  %3056 = fcmp fast ole float %3034, 1.000000e+00
  %3057 = and i1 %3056, %3055
  %3058 = fcmp fast oge float %3035, 0.000000e+00
  %3059 = and i1 %3058, %3057
  %3060 = fcmp fast ole float %3035, 1.000000e+00
  %3061 = and i1 %3060, %3059
  %3062 = fcmp fast ogt float %3054, 0.000000e+00
  %3063 = and i1 %3062, %3061
  br i1 %3063, label %3064, label %3187, !dx.controlflow.hints !82

; <label>:3064                                    ; preds = %3019
  %3065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3066 = extractvalue %dx.types.CBufRet.f32 %3065, 2
  %3067 = extractvalue %dx.types.CBufRet.f32 %3065, 3
  %3068 = fmul fast float %3066, %3034
  %3069 = fmul fast float %3067, %3035
  %3070 = call float @dx.op.unary.f32(i32 27, float %3068)  ; Round_ni(value)
  %3071 = call float @dx.op.unary.f32(i32 27, float %3069)  ; Round_ni(value)
  %3072 = fptosi float %3070 to i32
  %3073 = fptosi float %3071 to i32
  %3074 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3072, i32 %3073, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3075 = extractvalue %dx.types.ResRet.i32 %3074, 0
  %3076 = lshr i32 %3075, 16
  %3077 = icmp eq i32 %3076, 65535
  br i1 %3077, label %3187, label %3078

; <label>:3078                                    ; preds = %3064
  %3079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3080 = extractvalue %dx.types.CBufRet.f32 %3079, 0
  %3081 = fmul fast float %3080, %3034
  %3082 = extractvalue %dx.types.CBufRet.f32 %3079, 1
  %3083 = fadd fast float %3081, %3082
  %3084 = extractvalue %dx.types.CBufRet.f32 %3079, 2
  %3085 = fmul fast float %3084, %3035
  %3086 = extractvalue %dx.types.CBufRet.f32 %3079, 3
  %3087 = fadd fast float %3085, %3086
  %3088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3083, float %3087, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3089 = extractvalue %dx.types.ResRet.f32 %3088, 0
  %3090 = extractvalue %dx.types.ResRet.f32 %3088, 1
  %3091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3092 = extractvalue %dx.types.CBufRet.f32 %3091, 1
  %3093 = extractvalue %dx.types.CBufRet.f32 %3091, 0
  %3094 = fsub fast float %3092, %3093
  %3095 = fmul fast float %3094, %3089
  %3096 = fadd fast float %3095, %3093
  %3097 = extractvalue %dx.types.CBufRet.f32 %3091, 3
  %3098 = extractvalue %dx.types.CBufRet.f32 %3091, 2
  %3099 = fsub fast float %3097, %3098
  %3100 = fmul fast float %3099, %3090
  %3101 = fadd fast float %3100, %3098
  %3102 = fsub fast float %3021, %3096
  %3103 = fsub fast float %3101, %3096
  %3104 = fdiv fast float %3102, %3103
  %3105 = call float @dx.op.unary.f32(i32 7, float %3104)  ; Saturate(value)
  %3106 = extractvalue %dx.types.CBufRet.f32 %3015, 1
  %3107 = extractvalue %dx.types.CBufRet.f32 %3065, 0
  %3108 = extractvalue %dx.types.CBufRet.f32 %3065, 1
  %3109 = fmul fast float %3107, %3034
  %3110 = fmul fast float %3108, %3035
  %3111 = fmul fast float %3109, 1.250000e-01
  %3112 = fmul fast float %3110, 1.250000e-01
  %3113 = call float @dx.op.unary.f32(i32 27, float %3111)  ; Round_ni(value)
  %3114 = call float @dx.op.unary.f32(i32 27, float %3112)  ; Round_ni(value)
  %3115 = fmul fast float %3113, 8.000000e+00
  %3116 = fmul fast float %3114, 8.000000e+00
  %3117 = fsub fast float %3109, %3115
  %3118 = fsub fast float %3110, %3116
  %3119 = fadd fast float %3117, 5.000000e-01
  %3120 = fadd fast float %3118, 5.000000e-01
  %3121 = and i32 %3076, 255
  %3122 = lshr i32 %3075, 24
  %3123 = mul nuw nsw i32 %3121, 9
  %3124 = uitofp i32 %3123 to float
  %3125 = mul nuw nsw i32 %3122, 9
  %3126 = uitofp i32 %3125 to float
  %3127 = fadd fast float %3119, %3124
  %3128 = fadd fast float %3120, %3126
  %3129 = fdiv fast float %3127, %3016
  %3130 = fdiv fast float %3128, %3106
  %3131 = fmul fast float %3105, 4.375000e-01
  %3132 = fadd fast float %3131, 3.125000e-02
  %3133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3129, float %3130, float %3132, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3134 = extractvalue %dx.types.ResRet.f32 %3133, 0
  %3135 = extractvalue %dx.types.ResRet.f32 %3133, 1
  %3136 = extractvalue %dx.types.ResRet.f32 %3133, 2
  %3137 = fadd fast float %3131, 5.312500e-01
  %3138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3129, float %3130, float %3137, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3139 = extractvalue %dx.types.ResRet.f32 %3138, 0
  %3140 = extractvalue %dx.types.ResRet.f32 %3138, 1
  %3141 = extractvalue %dx.types.ResRet.f32 %3138, 2
  %3142 = fmul fast float %3139, 2.000000e+00
  %3143 = fmul fast float %3140, 2.000000e+00
  %3144 = fmul fast float %3141, 2.000000e+00
  %3145 = fadd fast float %3142, -1.000000e+00
  %3146 = fadd fast float %3143, -1.000000e+00
  %3147 = fadd fast float %3144, -1.000000e+00
  %3148 = fmul fast float %3145, %3145
  %3149 = fmul fast float %3146, %3146
  %3150 = fadd fast float %3148, %3149
  %3151 = fmul fast float %3147, %3147
  %3152 = fadd fast float %3150, %3151
  %3153 = call float @dx.op.unary.f32(i32 24, float %3152)  ; Sqrt(value)
  %3154 = fcmp fast ogt float %3153, 0.000000e+00
  br i1 %3154, label %3155, label %3159

; <label>:3155                                    ; preds = %3078
  %3156 = fdiv fast float %3145, %3153
  %3157 = fdiv fast float %3146, %3153
  %3158 = fdiv fast float %3147, %3153
  br label %3159

; <label>:3159                                    ; preds = %3155, %3078
  %3160 = phi float [ %3156, %3155 ], [ 0.000000e+00, %3078 ]
  %3161 = phi float [ %3157, %3155 ], [ 0.000000e+00, %3078 ]
  %3162 = phi float [ %3158, %3155 ], [ 0.000000e+00, %3078 ]
  %3163 = call float @dx.op.dot3.f32(i32 55, float %3160, float %3161, float %3162, float %2844, float %2845, float %2846)  ; Dot3(ax,ay,az,bx,by,bz)
  %3164 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3163)  ; FMax(a,b)
  %3165 = fmul fast float %3164, 0x400C5BF8A0000000
  %3166 = fmul fast float %3134, %3054
  %3167 = fmul fast float %3166, %3165
  %3168 = fmul fast float %3135, %3054
  %3169 = fmul fast float %3168, %3165
  %3170 = fmul fast float %3136, %3054
  %3171 = fmul fast float %3170, %3165
  %3172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3173 = extractvalue %dx.types.CBufRet.f32 %3172, 3
  %3174 = fmul fast float %3167, %3173
  %3175 = fmul fast float %3169, %3173
  %3176 = fmul fast float %3171, %3173
  %3177 = fcmp fast ogt float %3021, %3101
  br i1 %3177, label %3178, label %3187

; <label>:3178                                    ; preds = %3159
  %3179 = fmul fast float %3103, 0x3FC24924A0000000
  %3180 = fsub fast float %3021, %3101
  %3181 = fdiv fast float %3180, %3179
  %3182 = call float @dx.op.unary.f32(i32 7, float %3181)  ; Saturate(value)
  %3183 = fsub fast float 1.000000e+00, %3182
  %3184 = fmul fast float %3183, %3174
  %3185 = fmul fast float %3183, %3175
  %3186 = fmul fast float %3183, %3176
  br label %3187

; <label>:3187                                    ; preds = %3178, %3159, %3064, %3019
  %3188 = phi float [ %3186, %3178 ], [ %3176, %3159 ], [ 0.000000e+00, %3064 ], [ 0.000000e+00, %3019 ]
  %3189 = phi float [ %3185, %3178 ], [ %3175, %3159 ], [ 0.000000e+00, %3064 ], [ 0.000000e+00, %3019 ]
  %3190 = phi float [ %3184, %3178 ], [ %3174, %3159 ], [ 0.000000e+00, %3064 ], [ 0.000000e+00, %3019 ]
  %3191 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3190)  ; FMax(a,b)
  %3192 = fmul fast float %3191, 0x3FD20DD760000000
  %3193 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2857, float %2858, float %2859)  ; Dot3(ax,ay,az,bx,by,bz)
  %3194 = fmul fast float %3193, 0x3FDF454380000000
  %3195 = fmul fast float %3193, %3193
  %3196 = fmul fast float %3195, 0x3FEE471020000000
  %3197 = fadd fast float %3196, 0xBFD42F6020000000
  %3198 = call float @dx.op.dot3.f32(i32 55, float %3191, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3194, float %3197)  ; Dot3(ax,ay,az,bx,by,bz)
  %3199 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3189)  ; FMax(a,b)
  %3200 = fmul fast float %3199, 0x3FD20DD760000000
  %3201 = call float @dx.op.dot3.f32(i32 55, float %3199, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3194, float %3197)  ; Dot3(ax,ay,az,bx,by,bz)
  %3202 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3188)  ; FMax(a,b)
  %3203 = fmul fast float %3202, 0x3FD20DD760000000
  %3204 = call float @dx.op.dot3.f32(i32 55, float %3202, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3194, float %3197)  ; Dot3(ax,ay,az,bx,by,bz)
  %3205 = call float @dx.op.binary.f32(i32 35, float %3192, float 0.000000e+00)  ; FMax(a,b)
  %3206 = call float @dx.op.binary.f32(i32 35, float %3200, float 0.000000e+00)  ; FMax(a,b)
  %3207 = call float @dx.op.binary.f32(i32 35, float %3203, float 0.000000e+00)  ; FMax(a,b)
  %3208 = call float @dx.op.binary.f32(i32 35, float %3198, float 0.000000e+00)  ; FMax(a,b)
  %3209 = call float @dx.op.binary.f32(i32 35, float %3201, float 0.000000e+00)  ; FMax(a,b)
  %3210 = call float @dx.op.binary.f32(i32 35, float %3204, float 0.000000e+00)  ; FMax(a,b)
  %3211 = fmul fast float %3205, %2908
  %3212 = fmul fast float %3206, %2908
  %3213 = fmul fast float %3207, %2908
  %3214 = fadd fast float %3211, %3012
  %3215 = fadd fast float %3212, %3013
  %3216 = fadd fast float %3213, %3014
  %3217 = fmul fast float %3208, %2908
  %3218 = fmul fast float %3209, %2908
  %3219 = fmul fast float %3210, %2908
  %3220 = fadd fast float %3217, %3009
  %3221 = fadd fast float %3218, %3010
  %3222 = fadd fast float %3219, %3011
  br label %3223

; <label>:3223                                    ; preds = %3187, %3008
  %3224 = phi float [ %3220, %3187 ], [ %3009, %3008 ]
  %3225 = phi float [ %3221, %3187 ], [ %3010, %3008 ]
  %3226 = phi float [ %3222, %3187 ], [ %3011, %3008 ]
  %3227 = phi float [ %3214, %3187 ], [ %3012, %3008 ]
  %3228 = phi float [ %3215, %3187 ], [ %3013, %3008 ]
  %3229 = phi float [ %3216, %3187 ], [ %3014, %3008 ]
  %3230 = fcmp fast olt float %2908, 1.000000e+00
  br i1 %3230, label %3231, label %4049, !dx.controlflow.hints !83

; <label>:3231                                    ; preds = %3223
  %3232 = extractvalue %dx.types.CBufRet.f32 %2864, 2
  %3233 = fadd fast float %3232, %119
  %3234 = fmul fast float %2844, 3.200000e+01
  %3235 = fmul fast float %2845, 3.200000e+01
  %3236 = fadd fast float %2867, %3234
  %3237 = fadd fast float %2868, %3235
  %3238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3239 = extractvalue %dx.types.CBufRet.f32 %3238, 0
  %3240 = extractvalue %dx.types.CBufRet.f32 %3238, 1
  %3241 = fsub fast float %3236, %3239
  %3242 = fsub fast float %3237, %3240
  %3243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3244 = extractvalue %dx.types.CBufRet.f32 %3243, 0
  %3245 = extractvalue %dx.types.CBufRet.f32 %3243, 1
  %3246 = fmul fast float %3241, %3244
  %3247 = fmul fast float %3242, %3245
  %3248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3249 = extractvalue %dx.types.CBufRet.f32 %3248, 0
  %3250 = fmul fast float %3246, %3249
  %3251 = extractvalue %dx.types.CBufRet.f32 %3248, 1
  %3252 = fadd fast float %3250, %3251
  %3253 = extractvalue %dx.types.CBufRet.f32 %3248, 2
  %3254 = fmul fast float %3253, %3247
  %3255 = extractvalue %dx.types.CBufRet.f32 %3248, 3
  %3256 = fadd fast float %3254, %3255
  %3257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3252, float %3256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3258 = extractvalue %dx.types.ResRet.f32 %3257, 0
  %3259 = extractvalue %dx.types.ResRet.f32 %3257, 1
  %3260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3261 = extractvalue %dx.types.CBufRet.f32 %3260, 1
  %3262 = extractvalue %dx.types.CBufRet.f32 %3260, 0
  %3263 = fsub fast float %3261, %3262
  %3264 = fmul fast float %3263, %3258
  %3265 = fadd fast float %3264, %3262
  %3266 = extractvalue %dx.types.CBufRet.f32 %3260, 3
  %3267 = extractvalue %dx.types.CBufRet.f32 %3260, 2
  %3268 = fsub fast float %3266, %3267
  %3269 = fmul fast float %3268, %3259
  %3270 = fadd fast float %3269, %3267
  %3271 = fsub fast float %3233, %3265
  %3272 = fsub fast float %3270, %3265
  %3273 = fdiv fast float %3271, %3272
  %3274 = call float @dx.op.unary.f32(i32 7, float %3273)  ; Saturate(value)
  %3275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3276 = extractvalue %dx.types.CBufRet.f32 %3275, 0
  %3277 = fmul fast float %3276, %3274
  %3278 = extractvalue %dx.types.CBufRet.f32 %3275, 1
  %3279 = fadd fast float %3277, %3278
  %3280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %3252, float %3256, float %3279, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3281 = extractvalue %dx.types.ResRet.f32 %3280, 0
  %3282 = extractvalue %dx.types.ResRet.f32 %3280, 1
  %3283 = extractvalue %dx.types.ResRet.f32 %3280, 2
  %3284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3285 = extractvalue %dx.types.CBufRet.f32 %3284, 0
  %3286 = extractvalue %dx.types.CBufRet.f32 %3284, 1
  %3287 = extractvalue %dx.types.CBufRet.f32 %3284, 2
  %3288 = fmul fast float %3285, %3281
  %3289 = fmul fast float %3286, %3282
  %3290 = fmul fast float %3287, %3283
  %3291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3292 = extractvalue %dx.types.CBufRet.f32 %3291, 0
  %3293 = extractvalue %dx.types.CBufRet.f32 %3291, 1
  %3294 = extractvalue %dx.types.CBufRet.f32 %3291, 2
  %3295 = fadd fast float %3288, %3292
  %3296 = fadd fast float %3289, %3293
  %3297 = fadd fast float %3290, %3294
  %3298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3299 = extractvalue %dx.types.CBufRet.f32 %3298, 0
  %3300 = fmul fast float %3299, %3246
  %3301 = extractvalue %dx.types.CBufRet.f32 %3298, 1
  %3302 = fadd fast float %3300, %3301
  %3303 = extractvalue %dx.types.CBufRet.f32 %3298, 2
  %3304 = fmul fast float %3303, %3247
  %3305 = extractvalue %dx.types.CBufRet.f32 %3298, 3
  %3306 = fadd fast float %3304, %3305
  %3307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3308 = extractvalue %dx.types.CBufRet.f32 %3307, 0
  %3309 = extractvalue %dx.types.CBufRet.f32 %3307, 1
  %3310 = extractvalue %dx.types.CBufRet.f32 %3307, 2
  %3311 = extractvalue %dx.types.CBufRet.f32 %3307, 3
  %3312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3313 = extractvalue %dx.types.CBufRet.f32 %3312, 0
  %3314 = extractvalue %dx.types.CBufRet.f32 %3312, 1
  %3315 = extractvalue %dx.types.CBufRet.f32 %3312, 2
  %3316 = extractvalue %dx.types.CBufRet.f32 %3312, 3
  %3317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3302, float %3306, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3318 = extractvalue %dx.types.ResRet.f32 %3317, 0
  %3319 = extractvalue %dx.types.ResRet.f32 %3317, 1
  %3320 = extractvalue %dx.types.ResRet.f32 %3317, 2
  %3321 = extractvalue %dx.types.ResRet.f32 %3317, 3
  %3322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3302, float %3306, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3323 = extractvalue %dx.types.ResRet.f32 %3322, 0
  %3324 = extractvalue %dx.types.ResRet.f32 %3322, 1
  %3325 = extractvalue %dx.types.ResRet.f32 %3322, 2
  %3326 = extractvalue %dx.types.ResRet.f32 %3322, 3
  %3327 = fmul fast float %3318, %3295
  %3328 = fmul fast float %3323, %3295
  %3329 = fmul fast float %3325, %3295
  %3330 = fmul fast float %3321, %3295
  %3331 = fadd fast float %3327, %3308
  %3332 = fadd fast float %3328, %3309
  %3333 = fadd fast float %3329, %3310
  %3334 = fadd fast float %3330, %3311
  %3335 = fmul fast float %3319, %3295
  %3336 = fmul fast float %3324, %3295
  %3337 = fadd fast float %3335, %3313
  %3338 = fadd fast float %3336, %3314
  %3339 = fmul fast float %3320, %3295
  %3340 = fmul fast float %3326, %3295
  %3341 = fadd fast float %3339, %3315
  %3342 = fadd fast float %3340, %3316
  %3343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3302, float %3306, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3344 = extractvalue %dx.types.ResRet.f32 %3343, 0
  %3345 = extractvalue %dx.types.ResRet.f32 %3343, 1
  %3346 = extractvalue %dx.types.ResRet.f32 %3343, 2
  %3347 = extractvalue %dx.types.ResRet.f32 %3343, 3
  %3348 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3302, float %3306, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3349 = extractvalue %dx.types.ResRet.f32 %3348, 0
  %3350 = extractvalue %dx.types.ResRet.f32 %3348, 1
  %3351 = extractvalue %dx.types.ResRet.f32 %3348, 2
  %3352 = extractvalue %dx.types.ResRet.f32 %3348, 3
  %3353 = fmul fast float %3344, %3296
  %3354 = fmul fast float %3349, %3296
  %3355 = fmul fast float %3351, %3296
  %3356 = fmul fast float %3347, %3296
  %3357 = fadd fast float %3331, %3353
  %3358 = fadd fast float %3332, %3354
  %3359 = fadd fast float %3333, %3355
  %3360 = fadd fast float %3334, %3356
  %3361 = fmul fast float %3345, %3296
  %3362 = fmul fast float %3350, %3296
  %3363 = fadd fast float %3337, %3361
  %3364 = fadd fast float %3338, %3362
  %3365 = fmul fast float %3346, %3296
  %3366 = fmul fast float %3352, %3296
  %3367 = fadd fast float %3341, %3365
  %3368 = fadd fast float %3342, %3366
  %3369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3302, float %3306, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3370 = extractvalue %dx.types.ResRet.f32 %3369, 0
  %3371 = extractvalue %dx.types.ResRet.f32 %3369, 1
  %3372 = extractvalue %dx.types.ResRet.f32 %3369, 2
  %3373 = extractvalue %dx.types.ResRet.f32 %3369, 3
  %3374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3302, float %3306, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3375 = extractvalue %dx.types.ResRet.f32 %3374, 0
  %3376 = extractvalue %dx.types.ResRet.f32 %3374, 1
  %3377 = extractvalue %dx.types.ResRet.f32 %3374, 2
  %3378 = extractvalue %dx.types.ResRet.f32 %3374, 3
  %3379 = fmul fast float %3370, %3297
  %3380 = fmul fast float %3375, %3297
  %3381 = fmul fast float %3377, %3297
  %3382 = fmul fast float %3373, %3297
  %3383 = fadd fast float %3357, %3379
  %3384 = fadd fast float %3358, %3380
  %3385 = fadd fast float %3359, %3381
  %3386 = fadd fast float %3360, %3382
  %3387 = fmul fast float %3371, %3297
  %3388 = fmul fast float %3376, %3297
  %3389 = fadd fast float %3363, %3387
  %3390 = fadd fast float %3364, %3388
  %3391 = fmul fast float %3372, %3297
  %3392 = fmul fast float %3378, %3297
  %3393 = fadd fast float %3367, %3391
  %3394 = fadd fast float %3368, %3392
  %3395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3396 = extractvalue %dx.types.CBufRet.f32 %3395, 0
  %3397 = fsub fast float %2867, %3396
  %3398 = fsub fast float %3239, %2867
  %3399 = call float @dx.op.binary.f32(i32 35, float %3398, float %3397)  ; FMax(a,b)
  %3400 = extractvalue %dx.types.CBufRet.f32 %3395, 1
  %3401 = fsub fast float %2868, %3400
  %3402 = fsub fast float %3240, %2868
  %3403 = call float @dx.op.binary.f32(i32 35, float %3402, float %3401)  ; FMax(a,b)
  %3404 = call float @dx.op.binary.f32(i32 35, float %3399, float %3403)  ; FMax(a,b)
  %3405 = extractvalue %dx.types.CBufRet.f32 %3243, 3
  %3406 = fmul fast float %3405, %3404
  %3407 = call float @dx.op.unary.f32(i32 7, float %3406)  ; Saturate(value)
  %3408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3409 = extractvalue %dx.types.CBufRet.f32 %3408, 0
  %3410 = extractvalue %dx.types.CBufRet.f32 %3408, 1
  %3411 = extractvalue %dx.types.CBufRet.f32 %3408, 2
  %3412 = extractvalue %dx.types.CBufRet.f32 %3408, 3
  %3413 = fsub fast float %3409, %3383
  %3414 = fsub fast float %3410, %3384
  %3415 = fsub fast float %3411, %3385
  %3416 = fsub fast float %3412, %3386
  %3417 = fmul fast float %3413, %3407
  %3418 = fmul fast float %3414, %3407
  %3419 = fmul fast float %3415, %3407
  %3420 = fmul fast float %3416, %3407
  %3421 = fadd fast float %3417, %3383
  %3422 = fadd fast float %3418, %3384
  %3423 = fadd fast float %3419, %3385
  %3424 = fadd fast float %3420, %3386
  %3425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3426 = extractvalue %dx.types.CBufRet.f32 %3425, 0
  %3427 = extractvalue %dx.types.CBufRet.f32 %3425, 1
  %3428 = fsub fast float %3426, %3389
  %3429 = fsub fast float %3427, %3390
  %3430 = fmul fast float %3428, %3407
  %3431 = fmul fast float %3429, %3407
  %3432 = fadd fast float %3430, %3389
  %3433 = fadd fast float %3431, %3390
  %3434 = extractvalue %dx.types.CBufRet.f32 %3425, 2
  %3435 = extractvalue %dx.types.CBufRet.f32 %3425, 3
  %3436 = fsub fast float %3434, %3393
  %3437 = fsub fast float %3435, %3394
  %3438 = fmul fast float %3436, %3407
  %3439 = fmul fast float %3437, %3407
  %3440 = fadd fast float %3438, %3393
  %3441 = fadd fast float %3439, %3394
  %3442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3443 = extractvalue %dx.types.CBufRet.f32 %3442, 0
  %3444 = fmul fast float %3443, %3421
  %3445 = fmul fast float %3443, %3422
  %3446 = fmul fast float %3443, %3423
  %3447 = fmul fast float %3443, %3424
  %3448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3449 = extractvalue %dx.types.CBufRet.f32 %3448, 0
  %3450 = fmul fast float %3449, %3432
  %3451 = fmul fast float %3449, %3433
  %3452 = fadd fast float %3450, %3444
  %3453 = fadd fast float %3451, %3446
  %3454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3455 = extractvalue %dx.types.CBufRet.f32 %3454, 0
  %3456 = fmul fast float %3455, %3440
  %3457 = fmul fast float %3455, %3441
  %3458 = fadd fast float %3452, %3456
  %3459 = fadd fast float %3453, %3457
  %3460 = extractvalue %dx.types.CBufRet.f32 %3442, 1
  %3461 = fmul fast float %3460, %3421
  %3462 = fmul fast float %3460, %3422
  %3463 = fmul fast float %3460, %3423
  %3464 = fmul fast float %3460, %3424
  %3465 = extractvalue %dx.types.CBufRet.f32 %3448, 1
  %3466 = fmul fast float %3465, %3432
  %3467 = fmul fast float %3465, %3433
  %3468 = fadd fast float %3466, %3461
  %3469 = fadd fast float %3467, %3463
  %3470 = extractvalue %dx.types.CBufRet.f32 %3454, 1
  %3471 = fmul fast float %3470, %3440
  %3472 = fmul fast float %3470, %3441
  %3473 = fadd fast float %3468, %3471
  %3474 = fadd fast float %3469, %3472
  %3475 = extractvalue %dx.types.CBufRet.f32 %3442, 2
  %3476 = fmul fast float %3475, %3421
  %3477 = fmul fast float %3475, %3422
  %3478 = fmul fast float %3475, %3423
  %3479 = fmul fast float %3475, %3424
  %3480 = extractvalue %dx.types.CBufRet.f32 %3448, 2
  %3481 = fmul fast float %3480, %3432
  %3482 = fmul fast float %3480, %3433
  %3483 = fadd fast float %3481, %3476
  %3484 = fadd fast float %3482, %3478
  %3485 = extractvalue %dx.types.CBufRet.f32 %3454, 2
  %3486 = fmul fast float %3485, %3440
  %3487 = fmul fast float %3485, %3441
  %3488 = fadd fast float %3483, %3486
  %3489 = fadd fast float %3484, %3487
  %3490 = fmul fast float %3477, %3477
  %3491 = fmul fast float %3489, %3489
  %3492 = fmul fast float %3479, %3479
  %3493 = fadd fast float %3492, %3490
  %3494 = fadd fast float %3493, %3491
  %3495 = call float @dx.op.unary.f32(i32 24, float %3494)  ; Sqrt(value)
  %3496 = fcmp fast ugt float %3495, 0.000000e+00
  br i1 %3496, label %3497, label %3512

; <label>:3497                                    ; preds = %3231
  %3498 = fsub fast float -0.000000e+00, %3479
  %3499 = fdiv fast float %3498, %3495
  %3500 = fsub fast float -0.000000e+00, %3477
  %3501 = fdiv fast float %3500, %3495
  %3502 = fdiv fast float %3489, %3495
  %3503 = fmul fast float %3488, 0x3FE279A760000000
  %3504 = fmul fast float %3501, %3477
  %3505 = fmul fast float %3502, %3489
  %3506 = fmul fast float %3499, %3479
  %3507 = fadd fast float %3504, %3506
  %3508 = fsub fast float %3507, %3505
  %3509 = call float @dx.op.unary.f32(i32 6, float %3508)  ; FAbs(value)
  %3510 = fadd fast float %3509, 0x3DDB7CDFE0000000
  %3511 = fdiv fast float %3503, %3510
  br label %3512

; <label>:3512                                    ; preds = %3497, %3231
  %3513 = phi float [ %3511, %3497 ], [ 1.000000e+00, %3231 ]
  %3514 = fmul fast float %3462, %3462
  %3515 = fmul fast float %3474, %3474
  %3516 = fmul fast float %3464, %3464
  %3517 = fadd fast float %3516, %3514
  %3518 = fadd fast float %3517, %3515
  %3519 = call float @dx.op.unary.f32(i32 24, float %3518)  ; Sqrt(value)
  %3520 = fcmp fast ugt float %3519, 0.000000e+00
  br i1 %3520, label %3521, label %3536

; <label>:3521                                    ; preds = %3512
  %3522 = fsub fast float -0.000000e+00, %3464
  %3523 = fdiv fast float %3522, %3519
  %3524 = fsub fast float -0.000000e+00, %3462
  %3525 = fdiv fast float %3524, %3519
  %3526 = fdiv fast float %3474, %3519
  %3527 = fmul fast float %3473, 0x3FE279A760000000
  %3528 = fmul fast float %3525, %3462
  %3529 = fmul fast float %3526, %3474
  %3530 = fmul fast float %3523, %3464
  %3531 = fadd fast float %3528, %3530
  %3532 = fsub fast float %3531, %3529
  %3533 = call float @dx.op.unary.f32(i32 6, float %3532)  ; FAbs(value)
  %3534 = fadd fast float %3533, 0x3DDB7CDFE0000000
  %3535 = fdiv fast float %3527, %3534
  br label %3536

; <label>:3536                                    ; preds = %3521, %3512
  %3537 = phi float [ %3535, %3521 ], [ 1.000000e+00, %3512 ]
  %3538 = call float @dx.op.binary.f32(i32 36, float %3537, float %3513)  ; FMin(a,b)
  %3539 = fmul fast float %3445, %3445
  %3540 = fmul fast float %3459, %3459
  %3541 = fmul fast float %3447, %3447
  %3542 = fadd fast float %3541, %3539
  %3543 = fadd fast float %3542, %3540
  %3544 = call float @dx.op.unary.f32(i32 24, float %3543)  ; Sqrt(value)
  %3545 = fcmp fast ugt float %3544, 0.000000e+00
  br i1 %3545, label %3546, label %3561

; <label>:3546                                    ; preds = %3536
  %3547 = fsub fast float -0.000000e+00, %3447
  %3548 = fdiv fast float %3547, %3544
  %3549 = fsub fast float -0.000000e+00, %3445
  %3550 = fdiv fast float %3549, %3544
  %3551 = fdiv fast float %3459, %3544
  %3552 = fmul fast float %3458, 0x3FE279A760000000
  %3553 = fmul fast float %3550, %3445
  %3554 = fmul fast float %3551, %3459
  %3555 = fmul fast float %3548, %3447
  %3556 = fadd fast float %3553, %3555
  %3557 = fsub fast float %3556, %3554
  %3558 = call float @dx.op.unary.f32(i32 6, float %3557)  ; FAbs(value)
  %3559 = fadd fast float %3558, 0x3DDB7CDFE0000000
  %3560 = fdiv fast float %3552, %3559
  br label %3561

; <label>:3561                                    ; preds = %3546, %3536
  %3562 = phi float [ %3560, %3546 ], [ 1.000000e+00, %3536 ]
  %3563 = call float @dx.op.binary.f32(i32 36, float %3562, float %3538)  ; FMin(a,b)
  %3564 = call float @dx.op.unary.f32(i32 7, float %3563)  ; Saturate(value)
  %3565 = fcmp fast olt float %3564, 1.000000e+00
  br i1 %3565, label %3566, label %3576

; <label>:3566                                    ; preds = %3561
  %3567 = fmul fast float %3564, %3445
  %3568 = fmul fast float %3564, %3459
  %3569 = fmul fast float %3564, %3447
  %3570 = fmul fast float %3564, %3462
  %3571 = fmul fast float %3564, %3474
  %3572 = fmul fast float %3564, %3464
  %3573 = fmul fast float %3564, %3477
  %3574 = fmul fast float %3564, %3489
  %3575 = fmul fast float %3564, %3479
  br label %3576

; <label>:3576                                    ; preds = %3566, %3561
  %3577 = phi float [ %3573, %3566 ], [ %3477, %3561 ]
  %3578 = phi float [ %3574, %3566 ], [ %3489, %3561 ]
  %3579 = phi float [ %3575, %3566 ], [ %3479, %3561 ]
  %3580 = phi float [ %3570, %3566 ], [ %3462, %3561 ]
  %3581 = phi float [ %3571, %3566 ], [ %3474, %3561 ]
  %3582 = phi float [ %3572, %3566 ], [ %3464, %3561 ]
  %3583 = phi float [ %3567, %3566 ], [ %3445, %3561 ]
  %3584 = phi float [ %3568, %3566 ], [ %3459, %3561 ]
  %3585 = phi float [ %3569, %3566 ], [ %3447, %3561 ]
  %3586 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3458)  ; FMax(a,b)
  %3587 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3473)  ; FMax(a,b)
  %3588 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3488)  ; FMax(a,b)
  %3589 = fcmp fast oge float %3246, 0.000000e+00
  %3590 = and i1 %3589, %3017
  %3591 = fcmp fast ole float %3246, 1.000000e+00
  %3592 = and i1 %3591, %3590
  %3593 = fcmp fast oge float %3247, 0.000000e+00
  %3594 = and i1 %3593, %3592
  %3595 = fcmp fast ole float %3247, 1.000000e+00
  %3596 = and i1 %3595, %3594
  br i1 %3596, label %3597, label %3742, !dx.controlflow.hints !84

; <label>:3597                                    ; preds = %3576
  %3598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3599 = extractvalue %dx.types.CBufRet.f32 %3598, 2
  %3600 = extractvalue %dx.types.CBufRet.f32 %3598, 3
  %3601 = fmul fast float %3599, %3246
  %3602 = fmul fast float %3600, %3247
  %3603 = call float @dx.op.unary.f32(i32 27, float %3601)  ; Round_ni(value)
  %3604 = call float @dx.op.unary.f32(i32 27, float %3602)  ; Round_ni(value)
  %3605 = fptosi float %3603 to i32
  %3606 = fptosi float %3604 to i32
  %3607 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3605, i32 %3606, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3608 = extractvalue %dx.types.ResRet.i32 %3607, 0
  %3609 = and i32 %3608, 65535
  %3610 = lshr i32 %3608, 16
  %3611 = icmp eq i32 %3609, 65535
  br i1 %3611, label %3648, label %3612

; <label>:3612                                    ; preds = %3597
  %3613 = extractvalue %dx.types.CBufRet.f32 %3015, 1
  %3614 = extractvalue %dx.types.CBufRet.f32 %3598, 0
  %3615 = extractvalue %dx.types.CBufRet.f32 %3598, 1
  %3616 = fmul fast float %3614, %3246
  %3617 = fmul fast float %3615, %3247
  %3618 = fmul fast float %3616, 1.250000e-01
  %3619 = fmul fast float %3617, 1.250000e-01
  %3620 = call float @dx.op.unary.f32(i32 27, float %3618)  ; Round_ni(value)
  %3621 = call float @dx.op.unary.f32(i32 27, float %3619)  ; Round_ni(value)
  %3622 = fmul fast float %3620, 8.000000e+00
  %3623 = fmul fast float %3621, 8.000000e+00
  %3624 = and i32 %3608, 255
  %3625 = lshr i32 %3608, 8
  %3626 = and i32 %3625, 255
  %3627 = mul nuw nsw i32 %3624, 9
  %3628 = uitofp i32 %3627 to float
  %3629 = mul nuw nsw i32 %3626, 9
  %3630 = uitofp i32 %3629 to float
  %3631 = fadd fast float %3628, 5.000000e-01
  %3632 = fadd fast float %3631, %3616
  %3633 = fsub fast float %3632, %3622
  %3634 = fadd fast float %3630, 5.000000e-01
  %3635 = fadd fast float %3634, %3617
  %3636 = fsub fast float %3635, %3623
  %3637 = fdiv fast float %3633, %3016
  %3638 = fdiv fast float %3636, %3613
  %3639 = fmul fast float %3274, 4.375000e-01
  %3640 = fadd fast float %3639, 3.125000e-02
  %3641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3637, float %3638, float %3640, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3642 = extractvalue %dx.types.ResRet.f32 %3641, 0
  %3643 = extractvalue %dx.types.ResRet.f32 %3641, 1
  %3644 = extractvalue %dx.types.ResRet.f32 %3641, 2
  %3645 = fadd fast float %3642, %3586
  %3646 = fadd fast float %3643, %3587
  %3647 = fadd fast float %3644, %3588
  br label %3648

; <label>:3648                                    ; preds = %3612, %3597
  %3649 = phi float [ %3647, %3612 ], [ %3588, %3597 ]
  %3650 = phi float [ %3646, %3612 ], [ %3587, %3597 ]
  %3651 = phi float [ %3645, %3612 ], [ %3586, %3597 ]
  %3652 = icmp eq i32 %3610, 65535
  br i1 %3652, label %3742, label %3653

; <label>:3653                                    ; preds = %3648
  %3654 = extractvalue %dx.types.CBufRet.f32 %3015, 1
  %3655 = extractvalue %dx.types.CBufRet.f32 %3598, 0
  %3656 = extractvalue %dx.types.CBufRet.f32 %3598, 1
  %3657 = fmul fast float %3655, %3246
  %3658 = fmul fast float %3656, %3247
  %3659 = fmul fast float %3657, 1.250000e-01
  %3660 = fmul fast float %3658, 1.250000e-01
  %3661 = call float @dx.op.unary.f32(i32 27, float %3659)  ; Round_ni(value)
  %3662 = call float @dx.op.unary.f32(i32 27, float %3660)  ; Round_ni(value)
  %3663 = fmul fast float %3661, 8.000000e+00
  %3664 = fmul fast float %3662, 8.000000e+00
  %3665 = fsub fast float %3657, %3663
  %3666 = fsub fast float %3658, %3664
  %3667 = fadd fast float %3665, 5.000000e-01
  %3668 = fadd fast float %3666, 5.000000e-01
  %3669 = and i32 %3610, 255
  %3670 = lshr i32 %3608, 24
  %3671 = mul nuw nsw i32 %3669, 9
  %3672 = uitofp i32 %3671 to float
  %3673 = mul nuw nsw i32 %3670, 9
  %3674 = uitofp i32 %3673 to float
  %3675 = fadd fast float %3667, %3672
  %3676 = fadd fast float %3668, %3674
  %3677 = fdiv fast float %3675, %3016
  %3678 = fdiv fast float %3676, %3654
  %3679 = fmul fast float %3274, 4.375000e-01
  %3680 = fadd fast float %3679, 3.125000e-02
  %3681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3677, float %3678, float %3680, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3682 = extractvalue %dx.types.ResRet.f32 %3681, 0
  %3683 = extractvalue %dx.types.ResRet.f32 %3681, 1
  %3684 = extractvalue %dx.types.ResRet.f32 %3681, 2
  %3685 = fadd fast float %3679, 5.312500e-01
  %3686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3677, float %3678, float %3685, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3687 = extractvalue %dx.types.ResRet.f32 %3686, 0
  %3688 = extractvalue %dx.types.ResRet.f32 %3686, 1
  %3689 = extractvalue %dx.types.ResRet.f32 %3686, 2
  %3690 = fmul fast float %3687, 2.000000e+00
  %3691 = fmul fast float %3688, 2.000000e+00
  %3692 = fmul fast float %3689, 2.000000e+00
  %3693 = fadd fast float %3690, -1.000000e+00
  %3694 = fadd fast float %3691, -1.000000e+00
  %3695 = fadd fast float %3692, -1.000000e+00
  %3696 = fmul fast float %3693, %3693
  %3697 = fmul fast float %3694, %3694
  %3698 = fadd fast float %3696, %3697
  %3699 = fmul fast float %3695, %3695
  %3700 = fadd fast float %3698, %3699
  %3701 = call float @dx.op.unary.f32(i32 24, float %3700)  ; Sqrt(value)
  %3702 = fcmp fast ogt float %3701, 0.000000e+00
  br i1 %3702, label %3703, label %3707

; <label>:3703                                    ; preds = %3653
  %3704 = fdiv fast float %3693, %3701
  %3705 = fdiv fast float %3694, %3701
  %3706 = fdiv fast float %3695, %3701
  br label %3707

; <label>:3707                                    ; preds = %3703, %3653
  %3708 = phi float [ %3704, %3703 ], [ 0.000000e+00, %3653 ]
  %3709 = phi float [ %3705, %3703 ], [ 0.000000e+00, %3653 ]
  %3710 = phi float [ %3706, %3703 ], [ 0.000000e+00, %3653 ]
  %3711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3712 = extractvalue %dx.types.CBufRet.f32 %3711, 0
  %3713 = extractvalue %dx.types.CBufRet.f32 %3711, 1
  %3714 = fsub fast float %2867, %3712
  %3715 = fsub fast float %2868, %3713
  %3716 = fmul fast float %3714, %3714
  %3717 = fmul fast float %3715, %3715
  %3718 = fadd fast float %3716, %3717
  %3719 = call float @dx.op.unary.f32(i32 24, float %3718)  ; Sqrt(value)
  %3720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3721 = extractvalue %dx.types.CBufRet.f32 %3720, 0
  %3722 = extractvalue %dx.types.CBufRet.f32 %3720, 1
  %3723 = fsub fast float %3719, %3721
  %3724 = fdiv fast float %3723, %3722
  %3725 = call float @dx.op.unary.f32(i32 7, float %3724)  ; Saturate(value)
  %3726 = fmul fast float %3725, 2.000000e+00
  %3727 = fsub fast float 3.000000e+00, %3726
  %3728 = fmul fast float %3725, %3725
  %3729 = fmul fast float %3728, %3727
  %3730 = call float @dx.op.dot3.f32(i32 55, float %3708, float %3709, float %3710, float %2844, float %2845, float %2846)  ; Dot3(ax,ay,az,bx,by,bz)
  %3731 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3730)  ; FMax(a,b)
  %3732 = fmul fast float %3731, 0x400C5BF8A0000000
  %3733 = fmul fast float %3729, %3682
  %3734 = fmul fast float %3733, %3732
  %3735 = fadd fast float %3734, %3651
  %3736 = fmul fast float %3729, %3683
  %3737 = fmul fast float %3736, %3732
  %3738 = fadd fast float %3737, %3650
  %3739 = fmul fast float %3729, %3684
  %3740 = fmul fast float %3739, %3732
  %3741 = fadd fast float %3740, %3649
  br label %3742

; <label>:3742                                    ; preds = %3707, %3648, %3576
  %3743 = phi float [ %3741, %3707 ], [ %3649, %3648 ], [ %3588, %3576 ]
  %3744 = phi float [ %3738, %3707 ], [ %3650, %3648 ], [ %3587, %3576 ]
  %3745 = phi float [ %3735, %3707 ], [ %3651, %3648 ], [ %3586, %3576 ]
  %3746 = fcmp fast ogt float %3233, %3270
  %3747 = and i1 %3589, %3746
  %3748 = and i1 %3591, %3747
  %3749 = and i1 %3593, %3748
  %3750 = and i1 %3595, %3749
  br i1 %3750, label %3751, label %3808, !dx.controlflow.hints !85

; <label>:3751                                    ; preds = %3742
  %3752 = fmul fast float %3272, 0x3FC24924A0000000
  %3753 = fsub fast float %3233, %3270
  %3754 = fdiv fast float %3753, %3752
  %3755 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3757 = extractvalue %dx.types.CBufRet.f32 %3756, 0
  %3758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3759 = extractvalue %dx.types.CBufRet.f32 %3758, 0
  %3760 = extractvalue %dx.types.CBufRet.f32 %3758, 1
  %3761 = extractvalue %dx.types.CBufRet.f32 %3758, 2
  %3762 = fsub fast float %3757, %3745
  %3763 = fsub fast float %3759, %3583
  %3764 = fsub fast float %3760, %3584
  %3765 = fsub fast float %3761, %3585
  %3766 = fmul fast float %3762, %3755
  %3767 = fmul fast float %3763, %3755
  %3768 = fmul fast float %3764, %3755
  %3769 = fmul fast float %3765, %3755
  %3770 = fadd fast float %3766, %3745
  %3771 = fadd fast float %3767, %3583
  %3772 = fadd fast float %3768, %3584
  %3773 = fadd fast float %3769, %3585
  %3774 = extractvalue %dx.types.CBufRet.f32 %3756, 1
  %3775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3776 = extractvalue %dx.types.CBufRet.f32 %3775, 0
  %3777 = extractvalue %dx.types.CBufRet.f32 %3775, 1
  %3778 = extractvalue %dx.types.CBufRet.f32 %3775, 2
  %3779 = fsub fast float %3774, %3744
  %3780 = fsub fast float %3776, %3580
  %3781 = fsub fast float %3777, %3581
  %3782 = fsub fast float %3778, %3582
  %3783 = fmul fast float %3779, %3755
  %3784 = fmul fast float %3780, %3755
  %3785 = fmul fast float %3781, %3755
  %3786 = fmul fast float %3782, %3755
  %3787 = fadd fast float %3783, %3744
  %3788 = fadd fast float %3784, %3580
  %3789 = fadd fast float %3785, %3581
  %3790 = fadd fast float %3786, %3582
  %3791 = extractvalue %dx.types.CBufRet.f32 %3756, 2
  %3792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3793 = extractvalue %dx.types.CBufRet.f32 %3792, 0
  %3794 = extractvalue %dx.types.CBufRet.f32 %3792, 1
  %3795 = extractvalue %dx.types.CBufRet.f32 %3792, 2
  %3796 = fsub fast float %3791, %3743
  %3797 = fsub fast float %3793, %3577
  %3798 = fsub fast float %3794, %3578
  %3799 = fsub fast float %3795, %3579
  %3800 = fmul fast float %3796, %3755
  %3801 = fmul fast float %3797, %3755
  %3802 = fmul fast float %3798, %3755
  %3803 = fmul fast float %3799, %3755
  %3804 = fadd fast float %3800, %3743
  %3805 = fadd fast float %3801, %3577
  %3806 = fadd fast float %3802, %3578
  %3807 = fadd fast float %3803, %3579
  br label %3808

; <label>:3808                                    ; preds = %3751, %3742
  %3809 = phi float [ %3804, %3751 ], [ %3743, %3742 ]
  %3810 = phi float [ %3805, %3751 ], [ %3577, %3742 ]
  %3811 = phi float [ %3806, %3751 ], [ %3578, %3742 ]
  %3812 = phi float [ %3807, %3751 ], [ %3579, %3742 ]
  %3813 = phi float [ %3787, %3751 ], [ %3744, %3742 ]
  %3814 = phi float [ %3788, %3751 ], [ %3580, %3742 ]
  %3815 = phi float [ %3789, %3751 ], [ %3581, %3742 ]
  %3816 = phi float [ %3790, %3751 ], [ %3582, %3742 ]
  %3817 = phi float [ %3770, %3751 ], [ %3745, %3742 ]
  %3818 = phi float [ %3771, %3751 ], [ %3583, %3742 ]
  %3819 = phi float [ %3772, %3751 ], [ %3584, %3742 ]
  %3820 = phi float [ %3773, %3751 ], [ %3585, %3742 ]
  %3821 = extractvalue %dx.types.CBufRet.f32 %3395, 3
  %3822 = fmul fast float %3821, %3817
  %3823 = fmul fast float %3821, %3813
  %3824 = fmul fast float %3821, %3809
  %3825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3826 = extractvalue %dx.types.CBufRet.f32 %3825, 3
  %3827 = fmul fast float %3822, %3826
  %3828 = fmul fast float %3823, %3826
  %3829 = fmul fast float %3824, %3826
  %3830 = fmul fast float %3818, 1.500000e+00
  %3831 = fmul fast float %3830, %3821
  %3832 = fmul fast float %3831, %3826
  %3833 = fmul fast float %3819, 1.500000e+00
  %3834 = fmul fast float %3833, %3821
  %3835 = fmul fast float %3834, %3826
  %3836 = fmul fast float %3820, 1.500000e+00
  %3837 = fmul fast float %3836, %3821
  %3838 = fmul fast float %3837, %3826
  %3839 = fmul fast float %3814, 1.500000e+00
  %3840 = fmul fast float %3839, %3821
  %3841 = fmul fast float %3840, %3826
  %3842 = fmul fast float %3815, 1.500000e+00
  %3843 = fmul fast float %3842, %3821
  %3844 = fmul fast float %3843, %3826
  %3845 = fmul fast float %3816, 1.500000e+00
  %3846 = fmul fast float %3845, %3821
  %3847 = fmul fast float %3846, %3826
  %3848 = fmul fast float %3810, 1.500000e+00
  %3849 = fmul fast float %3848, %3821
  %3850 = fmul fast float %3849, %3826
  %3851 = fmul fast float %3811, 1.500000e+00
  %3852 = fmul fast float %3851, %3821
  %3853 = fmul fast float %3852, %3826
  %3854 = fmul fast float %3812, 1.500000e+00
  %3855 = fmul fast float %3854, %3821
  %3856 = fmul fast float %3855, %3826
  %3857 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3827)  ; FMax(a,b)
  %3858 = call float @dx.op.dot3.f32(i32 55, float %3832, float %3835, float %3838, float %3832, float %3835, float %3838)  ; Dot3(ax,ay,az,bx,by,bz)
  %3859 = fcmp fast oeq float %3858, 0.000000e+00
  %3860 = fcmp fast oeq float %3857, 0.000000e+00
  %3861 = or i1 %3860, %3859
  br i1 %3861, label %3891, label %3862

; <label>:3862                                    ; preds = %3808
  %3863 = fsub fast float -0.000000e+00, %3838
  %3864 = fsub fast float -0.000000e+00, %3832
  %3865 = call float @dx.op.unary.f32(i32 24, float %3858)  ; Sqrt(value)
  %3866 = fdiv fast float %3865, %3857
  %3867 = fcmp fast ogt float %3866, 0x3FFB6F8900000000
  %3868 = select i1 %3867, float 0x3FFB6F8900000000, float %3866
  %3869 = fmul fast float %3868, 0x3FE8A23460000000
  %3870 = call float @dx.op.unary.f32(i32 7, float %3869)  ; Saturate(value)
  %3871 = call float @dx.op.binary.f32(i32 35, float %3868, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3872 = fmul fast float %3870, %3857
  %3873 = fmul fast float %3871, 0x3FF279A740000000
  %3874 = fadd fast float %3873, -1.000000e+00
  %3875 = call float @dx.op.dot3.f32(i32 55, float %3863, float %3864, float %3835, float %3863, float %3864, float %3835)  ; Dot3(ax,ay,az,bx,by,bz)
  %3876 = call float @dx.op.unary.f32(i32 25, float %3875)  ; Rsqrt(value)
  %3877 = fmul fast float %3876, %3863
  %3878 = fmul fast float %3876, %3864
  %3879 = fmul fast float %3876, %3835
  %3880 = fmul fast float %3874, %3874
  %3881 = fsub fast float 1.000000e+00, %3880
  %3882 = fmul fast float %3871, 0x40005F8BE0000000
  %3883 = fsub fast float 0x400C5BF8A0000000, %3882
  %3884 = fdiv fast float %3872, %3883
  %3885 = fmul fast float %3884, 0x3FEE31C3C0000000
  %3886 = fmul fast float %3885, %3881
  %3887 = fmul fast float %3871, 0x3FDACB7480000000
  %3888 = fadd fast float %3887, 0xBFD7347680000000
  %3889 = fmul fast float %3888, %3884
  %3890 = fmul fast float %3889, %3881
  br label %3891

; <label>:3891                                    ; preds = %3862, %3808
  %3892 = phi float [ %3877, %3862 ], [ 0.000000e+00, %3808 ]
  %3893 = phi float [ %3878, %3862 ], [ 0.000000e+00, %3808 ]
  %3894 = phi float [ %3879, %3862 ], [ 0.000000e+00, %3808 ]
  %3895 = phi float [ %3886, %3862 ], [ 0.000000e+00, %3808 ]
  %3896 = phi float [ %3890, %3862 ], [ 0.000000e+00, %3808 ]
  %3897 = call float @dx.op.dot3.f32(i32 55, float %3892, float %3893, float %3894, float %2844, float %2845, float %2846)  ; Dot3(ax,ay,az,bx,by,bz)
  %3898 = fmul fast float %3897, %3897
  %3899 = fmul fast float %3898, 0x3FEE471020000000
  %3900 = fadd fast float %3899, 0xBFD42F6020000000
  %3901 = fmul fast float %3857, 0x3FD20DD760000000
  %3902 = fmul fast float %3900, %3896
  %3903 = fmul fast float %3895, 0x3FDF454380000000
  %3904 = fmul fast float %3903, %3897
  %3905 = fadd fast float %3904, %3901
  %3906 = fadd fast float %3905, %3902
  %3907 = call float @dx.op.dot3.f32(i32 55, float %3892, float %3893, float %3894, float %2857, float %2858, float %2859)  ; Dot3(ax,ay,az,bx,by,bz)
  %3908 = fmul fast float %3907, 0x3FDF454380000000
  %3909 = fmul fast float %3907, %3907
  %3910 = fmul fast float %3909, 0x3FEE471020000000
  %3911 = fadd fast float %3910, 0xBFD42F6020000000
  %3912 = call float @dx.op.dot3.f32(i32 55, float %3857, float %3895, float %3896, float 0x3FD20DD760000000, float %3908, float %3911)  ; Dot3(ax,ay,az,bx,by,bz)
  %3913 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3828)  ; FMax(a,b)
  %3914 = call float @dx.op.dot3.f32(i32 55, float %3841, float %3844, float %3847, float %3841, float %3844, float %3847)  ; Dot3(ax,ay,az,bx,by,bz)
  %3915 = fcmp fast oeq float %3914, 0.000000e+00
  %3916 = fcmp fast oeq float %3913, 0.000000e+00
  %3917 = or i1 %3916, %3915
  br i1 %3917, label %3947, label %3918

; <label>:3918                                    ; preds = %3891
  %3919 = fsub fast float -0.000000e+00, %3847
  %3920 = fsub fast float -0.000000e+00, %3841
  %3921 = call float @dx.op.unary.f32(i32 24, float %3914)  ; Sqrt(value)
  %3922 = fdiv fast float %3921, %3913
  %3923 = fcmp fast ogt float %3922, 0x3FFB6F8900000000
  %3924 = select i1 %3923, float 0x3FFB6F8900000000, float %3922
  %3925 = fmul fast float %3924, 0x3FE8A23460000000
  %3926 = call float @dx.op.unary.f32(i32 7, float %3925)  ; Saturate(value)
  %3927 = call float @dx.op.binary.f32(i32 35, float %3924, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3928 = fmul fast float %3926, %3913
  %3929 = fmul fast float %3927, 0x3FF279A740000000
  %3930 = fadd fast float %3929, -1.000000e+00
  %3931 = call float @dx.op.dot3.f32(i32 55, float %3919, float %3920, float %3844, float %3919, float %3920, float %3844)  ; Dot3(ax,ay,az,bx,by,bz)
  %3932 = call float @dx.op.unary.f32(i32 25, float %3931)  ; Rsqrt(value)
  %3933 = fmul fast float %3932, %3919
  %3934 = fmul fast float %3932, %3920
  %3935 = fmul fast float %3932, %3844
  %3936 = fmul fast float %3930, %3930
  %3937 = fsub fast float 1.000000e+00, %3936
  %3938 = fmul fast float %3927, 0x40005F8BE0000000
  %3939 = fsub fast float 0x400C5BF8A0000000, %3938
  %3940 = fdiv fast float %3928, %3939
  %3941 = fmul fast float %3940, 0x3FEE31C3C0000000
  %3942 = fmul fast float %3941, %3937
  %3943 = fmul fast float %3927, 0x3FDACB7480000000
  %3944 = fadd fast float %3943, 0xBFD7347680000000
  %3945 = fmul fast float %3944, %3940
  %3946 = fmul fast float %3945, %3937
  br label %3947

; <label>:3947                                    ; preds = %3918, %3891
  %3948 = phi float [ %3933, %3918 ], [ 0.000000e+00, %3891 ]
  %3949 = phi float [ %3934, %3918 ], [ 0.000000e+00, %3891 ]
  %3950 = phi float [ %3935, %3918 ], [ 0.000000e+00, %3891 ]
  %3951 = phi float [ %3942, %3918 ], [ 0.000000e+00, %3891 ]
  %3952 = phi float [ %3946, %3918 ], [ 0.000000e+00, %3891 ]
  %3953 = call float @dx.op.dot3.f32(i32 55, float %3948, float %3949, float %3950, float %2844, float %2845, float %2846)  ; Dot3(ax,ay,az,bx,by,bz)
  %3954 = fmul fast float %3953, %3953
  %3955 = fmul fast float %3954, 0x3FEE471020000000
  %3956 = fadd fast float %3955, 0xBFD42F6020000000
  %3957 = fmul fast float %3913, 0x3FD20DD760000000
  %3958 = fmul fast float %3956, %3952
  %3959 = fmul fast float %3951, 0x3FDF454380000000
  %3960 = fmul fast float %3959, %3953
  %3961 = fadd fast float %3960, %3957
  %3962 = fadd fast float %3961, %3958
  %3963 = call float @dx.op.dot3.f32(i32 55, float %3948, float %3949, float %3950, float %2857, float %2858, float %2859)  ; Dot3(ax,ay,az,bx,by,bz)
  %3964 = fmul fast float %3963, 0x3FDF454380000000
  %3965 = fmul fast float %3963, %3963
  %3966 = fmul fast float %3965, 0x3FEE471020000000
  %3967 = fadd fast float %3966, 0xBFD42F6020000000
  %3968 = call float @dx.op.dot3.f32(i32 55, float %3913, float %3951, float %3952, float 0x3FD20DD760000000, float %3964, float %3967)  ; Dot3(ax,ay,az,bx,by,bz)
  %3969 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3829)  ; FMax(a,b)
  %3970 = call float @dx.op.dot3.f32(i32 55, float %3850, float %3853, float %3856, float %3850, float %3853, float %3856)  ; Dot3(ax,ay,az,bx,by,bz)
  %3971 = fcmp fast oeq float %3970, 0.000000e+00
  %3972 = fcmp fast oeq float %3969, 0.000000e+00
  %3973 = or i1 %3972, %3971
  br i1 %3973, label %4003, label %3974

; <label>:3974                                    ; preds = %3947
  %3975 = fsub fast float -0.000000e+00, %3856
  %3976 = fsub fast float -0.000000e+00, %3850
  %3977 = call float @dx.op.unary.f32(i32 24, float %3970)  ; Sqrt(value)
  %3978 = fdiv fast float %3977, %3969
  %3979 = fcmp fast ogt float %3978, 0x3FFB6F8900000000
  %3980 = select i1 %3979, float 0x3FFB6F8900000000, float %3978
  %3981 = fmul fast float %3980, 0x3FE8A23460000000
  %3982 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3983 = call float @dx.op.binary.f32(i32 35, float %3980, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3984 = fmul fast float %3982, %3969
  %3985 = fmul fast float %3983, 0x3FF279A740000000
  %3986 = fadd fast float %3985, -1.000000e+00
  %3987 = call float @dx.op.dot3.f32(i32 55, float %3975, float %3976, float %3853, float %3975, float %3976, float %3853)  ; Dot3(ax,ay,az,bx,by,bz)
  %3988 = call float @dx.op.unary.f32(i32 25, float %3987)  ; Rsqrt(value)
  %3989 = fmul fast float %3988, %3975
  %3990 = fmul fast float %3988, %3976
  %3991 = fmul fast float %3988, %3853
  %3992 = fmul fast float %3986, %3986
  %3993 = fsub fast float 1.000000e+00, %3992
  %3994 = fmul fast float %3983, 0x40005F8BE0000000
  %3995 = fsub fast float 0x400C5BF8A0000000, %3994
  %3996 = fdiv fast float %3984, %3995
  %3997 = fmul fast float %3996, 0x3FEE31C3C0000000
  %3998 = fmul fast float %3997, %3993
  %3999 = fmul fast float %3983, 0x3FDACB7480000000
  %4000 = fadd fast float %3999, 0xBFD7347680000000
  %4001 = fmul fast float %4000, %3996
  %4002 = fmul fast float %4001, %3993
  br label %4003

; <label>:4003                                    ; preds = %3974, %3947
  %4004 = phi float [ %3989, %3974 ], [ 0.000000e+00, %3947 ]
  %4005 = phi float [ %3990, %3974 ], [ 0.000000e+00, %3947 ]
  %4006 = phi float [ %3991, %3974 ], [ 0.000000e+00, %3947 ]
  %4007 = phi float [ %3998, %3974 ], [ 0.000000e+00, %3947 ]
  %4008 = phi float [ %4002, %3974 ], [ 0.000000e+00, %3947 ]
  %4009 = call float @dx.op.dot3.f32(i32 55, float %4004, float %4005, float %4006, float %2844, float %2845, float %2846)  ; Dot3(ax,ay,az,bx,by,bz)
  %4010 = fmul fast float %4009, %4009
  %4011 = fmul fast float %4010, 0x3FEE471020000000
  %4012 = fadd fast float %4011, 0xBFD42F6020000000
  %4013 = fmul fast float %3969, 0x3FD20DD760000000
  %4014 = fmul fast float %4012, %4008
  %4015 = fmul fast float %4007, 0x3FDF454380000000
  %4016 = fmul fast float %4015, %4009
  %4017 = fadd fast float %4016, %4013
  %4018 = fadd fast float %4017, %4014
  %4019 = call float @dx.op.dot3.f32(i32 55, float %4004, float %4005, float %4006, float %2857, float %2858, float %2859)  ; Dot3(ax,ay,az,bx,by,bz)
  %4020 = fmul fast float %4019, 0x3FDF454380000000
  %4021 = fmul fast float %4019, %4019
  %4022 = fmul fast float %4021, 0x3FEE471020000000
  %4023 = fadd fast float %4022, 0xBFD42F6020000000
  %4024 = call float @dx.op.dot3.f32(i32 55, float %3969, float %4007, float %4008, float 0x3FD20DD760000000, float %4020, float %4023)  ; Dot3(ax,ay,az,bx,by,bz)
  %4025 = call float @dx.op.binary.f32(i32 35, float %3906, float 0.000000e+00)  ; FMax(a,b)
  %4026 = call float @dx.op.binary.f32(i32 35, float %3962, float 0.000000e+00)  ; FMax(a,b)
  %4027 = call float @dx.op.binary.f32(i32 35, float %4018, float 0.000000e+00)  ; FMax(a,b)
  %4028 = call float @dx.op.binary.f32(i32 35, float %3912, float 0.000000e+00)  ; FMax(a,b)
  %4029 = call float @dx.op.binary.f32(i32 35, float %3968, float 0.000000e+00)  ; FMax(a,b)
  %4030 = call float @dx.op.binary.f32(i32 35, float %4024, float 0.000000e+00)  ; FMax(a,b)
  %4031 = fsub fast float %3227, %4025
  %4032 = fsub fast float %3228, %4026
  %4033 = fsub fast float %3229, %4027
  %4034 = fmul fast float %4031, %2908
  %4035 = fmul fast float %4032, %2908
  %4036 = fmul fast float %4033, %2908
  %4037 = fadd fast float %4034, %4025
  %4038 = fadd fast float %4035, %4026
  %4039 = fadd fast float %4036, %4027
  %4040 = fsub fast float %3224, %4028
  %4041 = fsub fast float %3225, %4029
  %4042 = fsub fast float %3226, %4030
  %4043 = fmul fast float %4040, %2908
  %4044 = fmul fast float %4041, %2908
  %4045 = fmul fast float %4042, %2908
  %4046 = fadd fast float %4043, %4028
  %4047 = fadd fast float %4044, %4029
  %4048 = fadd fast float %4045, %4030
  br label %4049

; <label>:4049                                    ; preds = %4003, %3223
  %4050 = phi float [ %4046, %4003 ], [ %3224, %3223 ]
  %4051 = phi float [ %4047, %4003 ], [ %3225, %3223 ]
  %4052 = phi float [ %4048, %4003 ], [ %3226, %3223 ]
  %4053 = phi float [ %4037, %4003 ], [ %3227, %3223 ]
  %4054 = phi float [ %4038, %4003 ], [ %3228, %3223 ]
  %4055 = phi float [ %4039, %4003 ], [ %3229, %3223 ]
  %4056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4057 = extractvalue %dx.types.CBufRet.f32 %4056, 0
  %4058 = call float @dx.op.binary.f32(i32 36, float %2841, float %4057)  ; FMin(a,b)
  %4059 = fsub fast float 1.000000e+00, %2860
  %4060 = fmul fast float %4058, %4059
  %4061 = fsub fast float 1.000000e+00, %4060
  %4062 = bitcast float %4061 to i32
  %4063 = sub nsw i32 2129859010, %4062
  %4064 = bitcast i32 %4063 to float
  %4065 = call float @dx.op.binary.f32(i32 36, float %2842, float %4057)  ; FMin(a,b)
  %4066 = fmul fast float %4065, %4059
  %4067 = fsub fast float 1.000000e+00, %4066
  %4068 = bitcast float %4067 to i32
  %4069 = sub nsw i32 2129859010, %4068
  %4070 = bitcast i32 %4069 to float
  %4071 = call float @dx.op.binary.f32(i32 36, float %2843, float %4057)  ; FMin(a,b)
  %4072 = fmul fast float %4071, %4059
  %4073 = fsub fast float 1.000000e+00, %4072
  %4074 = bitcast float %4073 to i32
  %4075 = sub nsw i32 2129859010, %4074
  %4076 = bitcast i32 %4075 to float
  %4077 = fmul fast float %4053, %2860
  %4078 = fmul fast float %4077, %4064
  %4079 = fmul fast float %4054, %2860
  %4080 = fmul fast float %4079, %4070
  %4081 = fmul fast float %4055, %2860
  %4082 = fmul fast float %4081, %4076
  %4083 = call float @dx.op.binary.f32(i32 36, float %2838, float %4057)  ; FMin(a,b)
  %4084 = fmul fast float %4083, %4059
  %4085 = fsub fast float 1.000000e+00, %4084
  %4086 = bitcast float %4085 to i32
  %4087 = sub nsw i32 2129859010, %4086
  %4088 = bitcast i32 %4087 to float
  %4089 = call float @dx.op.binary.f32(i32 36, float %2839, float %4057)  ; FMin(a,b)
  %4090 = fmul fast float %4089, %4059
  %4091 = fsub fast float 1.000000e+00, %4090
  %4092 = bitcast float %4091 to i32
  %4093 = sub nsw i32 2129859010, %4092
  %4094 = bitcast i32 %4093 to float
  %4095 = call float @dx.op.binary.f32(i32 36, float %2849, float %4057)  ; FMin(a,b)
  %4096 = fmul fast float %4095, %4059
  %4097 = fsub fast float 1.000000e+00, %4096
  %4098 = bitcast float %4097 to i32
  %4099 = sub nsw i32 2129859010, %4098
  %4100 = bitcast i32 %4099 to float
  %4101 = fmul fast float %4050, %2860
  %4102 = fmul fast float %4101, %4088
  %4103 = fmul fast float %4051, %2860
  %4104 = fmul fast float %4103, %4094
  %4105 = fmul fast float %4052, %2860
  %4106 = fmul fast float %4105, %4100
  %4107 = call float @dx.op.dot3.f32(i32 55, float %4078, float %4080, float %4082, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4108 = select i1 %188, float 0.000000e+00, float %4078
  %4109 = select i1 %188, float %4107, float %4080
  %4110 = select i1 %188, float 0.000000e+00, float %4082
  %4111 = call float @dx.op.dot3.f32(i32 55, float %4102, float %4104, float %4106, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4112 = select i1 %188, float 0.000000e+00, float %4102
  %4113 = select i1 %188, float %4111, float %4104
  %4114 = select i1 %188, float 0.000000e+00, float %4106
  %4115 = fmul fast float %2851, 9.843750e-01
  %4116 = fmul fast float %2847, 9.843750e-01
  %4117 = fadd fast float %4115, 7.812500e-03
  %4118 = fadd fast float %4116, 7.812500e-03
  %4119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4117, float %4118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4120 = extractvalue %dx.types.ResRet.f32 %4119, 2
  %4121 = extractvalue %dx.types.ResRet.f32 %4119, 3
  %4122 = fmul fast float %4120, %2838
  %4123 = fmul fast float %4120, %2839
  %4124 = fmul fast float %4120, %2849
  %4125 = fadd fast float %4122, %4121
  %4126 = fadd fast float %4123, %4121
  %4127 = fadd fast float %4124, %4121
  %4128 = fcmp fast ogt float %2215, 0.000000e+00
  br i1 %4128, label %4129, label %4155

; <label>:4129                                    ; preds = %4049
  %4130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2215, float %2851, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4131 = extractvalue %dx.types.ResRet.f32 %4130, 0
  %4132 = extractvalue %dx.types.ResRet.f32 %4130, 1
  %4133 = extractvalue %dx.types.ResRet.f32 %4130, 2
  %4134 = fadd fast float %4131, -5.000000e-01
  %4135 = fadd fast float %4132, -5.000000e-01
  %4136 = fadd fast float %4133, -5.000000e-01
  %4137 = fsub fast float 1.000000e+00, %2838
  %4138 = fsub fast float 1.000000e+00, %2839
  %4139 = fsub fast float 1.000000e+00, %2849
  %4140 = fmul fast float %2838, 4.000000e+00
  %4141 = fmul fast float %4140, %4137
  %4142 = fmul fast float %4141, %4134
  %4143 = fmul fast float %2839, 4.000000e+00
  %4144 = fmul fast float %4143, %4138
  %4145 = fmul fast float %4144, %4135
  %4146 = fmul fast float %2849, 4.000000e+00
  %4147 = fmul fast float %4146, %4139
  %4148 = fmul fast float %4147, %4136
  %4149 = fadd fast float %4142, %4125
  %4150 = fadd fast float %4145, %4126
  %4151 = fadd fast float %4148, %4127
  %4152 = call float @dx.op.unary.f32(i32 7, float %4149)  ; Saturate(value)
  %4153 = call float @dx.op.unary.f32(i32 7, float %4150)  ; Saturate(value)
  %4154 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  br label %4155

; <label>:4155                                    ; preds = %4129, %4049
  %4156 = phi float [ %4152, %4129 ], [ %4125, %4049 ]
  %4157 = phi float [ %4153, %4129 ], [ %4126, %4049 ]
  %4158 = phi float [ %4154, %4129 ], [ %4127, %4049 ]
  %4159 = call float @dx.op.binary.f32(i32 35, float %4157, float %4158)  ; FMax(a,b)
  %4160 = call float @dx.op.binary.f32(i32 35, float %4156, float %4159)  ; FMax(a,b)
  %4161 = fsub fast float 1.000000e+00, %4160
  %4162 = fmul fast float %4161, %4108
  %4163 = fmul fast float %4161, %4109
  %4164 = fmul fast float %4161, %4110
  %4165 = call float @dx.op.dot3.f32(i32 55, float %2841, float %2842, float %2843, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4166 = fcmp fast ogt float %4165, 0x3E7FF19E20000000
  %4167 = fdiv fast float 1.000000e+00, %4165
  %4168 = select i1 %4166, float %4167, float 0.000000e+00
  %4169 = fmul fast float %4168, %2841
  %4170 = fmul fast float %4168, %2842
  %4171 = fmul fast float %4168, %2843
  %4172 = fadd fast float %4169, -1.000000e+00
  %4173 = fadd fast float %4170, -1.000000e+00
  %4174 = fadd fast float %4171, -1.000000e+00
  %4175 = fmul fast float %4172, 5.000000e-01
  %4176 = fmul fast float %4173, 5.000000e-01
  %4177 = fmul fast float %4174, 5.000000e-01
  %4178 = fadd fast float %4175, 1.000000e+00
  %4179 = fadd fast float %4176, 1.000000e+00
  %4180 = fadd fast float %4177, 1.000000e+00
  %4181 = fmul fast float %4156, %4112
  %4182 = fmul fast float %4157, %4113
  %4183 = fmul fast float %4158, %4114
  %4184 = fsub fast float 1.000000e+00, %2851
  %4185 = bitcast float %4184 to i32
  %4186 = sitofp i32 %4185 to float
  %4187 = fmul fast float %4186, 5.000000e+00
  %4188 = fadd fast float %4187, 0xC1EFBF8940000000
  %4189 = fptosi float %4188 to i32
  %4190 = bitcast i32 %4189 to float
  %4191 = fmul fast float %4190, %2214
  %4192 = fmul fast float %4108, %4191
  %4193 = fmul fast float %4192, %4161
  %4194 = fmul fast float %4193, %4178
  %4195 = fmul fast float %4109, %4191
  %4196 = fmul fast float %4195, %4161
  %4197 = fmul fast float %4196, %4179
  %4198 = fmul fast float %4110, %4191
  %4199 = fmul fast float %4198, %4161
  %4200 = fmul fast float %4199, %4180
  %4201 = fmul fast float %4162, %2235
  %4202 = fmul fast float %4163, %2235
  %4203 = fmul fast float %4164, %2235
  %4204 = fadd fast float %4181, %2216
  %4205 = fadd fast float %4204, %4194
  %4206 = fmul fast float %4205, %2235
  %4207 = fadd fast float %4182, %2217
  %4208 = fadd fast float %4207, %4197
  %4209 = fmul fast float %4208, %2235
  %4210 = fadd fast float %4183, %2218
  %4211 = fadd fast float %4210, %4200
  %4212 = fmul fast float %4211, %2235
  %4213 = bitcast i32 %2863 to float
  %4214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4215 = extractvalue %dx.types.CBufRet.f32 %4214, 3
  %4216 = fcmp fast oeq float %4215, 0.000000e+00
  br i1 %4216, label %4444, label %4217

; <label>:4217                                    ; preds = %4155
  %4218 = extractvalue %dx.types.CBufRet.f32 %4214, 0
  %4219 = extractvalue %dx.types.CBufRet.f32 %4214, 1
  %4220 = extractvalue %dx.types.CBufRet.f32 %4214, 2
  %4221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4222 = extractvalue %dx.types.CBufRet.f32 %4221, 0
  %4223 = extractvalue %dx.types.CBufRet.f32 %4221, 1
  %4224 = extractvalue %dx.types.CBufRet.f32 %4221, 2
  %4225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4226 = extractvalue %dx.types.CBufRet.f32 %4225, 0
  %4227 = extractvalue %dx.types.CBufRet.f32 %4225, 1
  %4228 = call float @dx.op.dot3.f32(i32 55, float %4222, float %4223, float %4224, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4229 = select i1 %188, float %4226, float %4222
  %4230 = select i1 %188, float %4228, float %4223
  %4231 = select i1 %188, float %4227, float %4224
  %4232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4233 = extractvalue %dx.types.CBufRet.f32 %4232, 1
  %4234 = fcmp fast une float %4233, 0.000000e+00
  br i1 %4234, label %4235, label %4252

; <label>:4235                                    ; preds = %4217
  %4236 = fptoui float %70 to i32
  %4237 = fptoui float %71 to i32
  %4238 = lshr i32 %4236, 4
  %4239 = lshr i32 %4237, 4
  %4240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.f32 %4240, 0
  %4242 = fptoui float %4241 to i32
  %4243 = add i32 %4242, 15
  %4244 = lshr i32 %4243, 4
  %4245 = mul i32 %4244, %4239
  %4246 = add i32 %4245, %4238
  %4247 = shl i32 %4246, 3
  %4248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4247, i32 undef)  ; BufferLoad(srv,index,wot)
  %4249 = extractvalue %dx.types.ResRet.i32 %4248, 0
  %4250 = and i32 %4249, -268435456
  %4251 = icmp eq i32 %4250, -1342177280
  br i1 %4251, label %4262, label %4252

; <label>:4252                                    ; preds = %4235, %4217
  %4253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4254 = extractvalue %dx.types.CBufRet.f32 %4253, 2
  %4255 = extractvalue %dx.types.CBufRet.f32 %4253, 3
  %4256 = fmul fast float %4254, %70
  %4257 = fmul fast float %4255, %71
  %4258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %4256, float %4257, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4259 = extractvalue %dx.types.ResRet.f32 %4258, 0
  %4260 = extractvalue %dx.types.ResRet.f32 %4258, 1
  %4261 = extractvalue %dx.types.ResRet.f32 %4258, 2
  br label %4262

; <label>:4262                                    ; preds = %4252, %4235
  %4263 = phi float [ %4259, %4252 ], [ 0.000000e+00, %4235 ]
  %4264 = phi float [ %4260, %4252 ], [ 0.000000e+00, %4235 ]
  %4265 = phi float [ %4261, %4252 ], [ 0.000000e+00, %4235 ]
  %4266 = call float @dx.op.binary.f32(i32 36, float %4264, float %4265)  ; FMin(a,b)
  %4267 = call float @dx.op.binary.f32(i32 36, float %4263, float %4266)  ; FMin(a,b)
  %4268 = fcmp fast ogt float %4267, 0.000000e+00
  br i1 %4268, label %4269, label %4444, !dx.controlflow.hints !86

; <label>:4269                                    ; preds = %4262
  %4270 = fmul fast float %4263, %4229
  %4271 = fmul fast float %4264, %4230
  %4272 = fmul fast float %4265, %4231
  %4273 = fsub fast float %4218, %2837
  %4274 = fsub fast float %4219, %2836
  %4275 = fsub fast float %4220, %2835
  %4276 = call float @dx.op.dot3.f32(i32 55, float %4273, float %4274, float %4275, float %4273, float %4274, float %4275)  ; Dot3(ax,ay,az,bx,by,bz)
  %4277 = call float @dx.op.unary.f32(i32 25, float %4276)  ; Rsqrt(value)
  %4278 = fmul fast float %4277, %4273
  %4279 = fmul fast float %4277, %4274
  %4280 = fmul fast float %4277, %4275
  %4281 = call float @dx.op.dot3.f32(i32 55, float %4218, float %4219, float %4220, float %2844, float %2845, float %2846)  ; Dot3(ax,ay,az,bx,by,bz)
  %4282 = call float @dx.op.dot3.f32(i32 55, float %2834, float %2833, float %2832, float %4278, float %4279, float %4280)  ; Dot3(ax,ay,az,bx,by,bz)
  %4283 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4284 = fmul fast float %4283, %4283
  %4285 = fmul fast float %4284, %4213
  %4286 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4287 = fmul fast float %4286, %4283
  %4288 = call float @dx.op.dot3.f32(i32 55, float %2844, float %2845, float %2846, float %4278, float %4279, float %4280)  ; Dot3(ax,ay,az,bx,by,bz)
  %4289 = fmul fast float %4288, %4288
  %4290 = call float @dx.op.unary.f32(i32 6, float %4281)  ; FAbs(value)
  %4291 = fsub fast float 1.000000e+00, %2847
  %4292 = call float @dx.op.binary.f32(i32 35, float %4291, float 0x3F847AE140000000)  ; FMax(a,b)
  %4293 = fmul fast float %4292, %4292
  %4294 = fmul fast float %4293, %4293
  %4295 = fsub fast float 1.000000e+00, %4294
  %4296 = fmul fast float %2851, %2851
  %4297 = fmul fast float %4296, %4295
  %4298 = fadd fast float %4297, %4294
  %4299 = bitcast float %4298 to i32
  %4300 = ashr i32 %4299, 1
  %4301 = add nsw i32 %4300, 532487669
  %4302 = bitcast i32 %4301 to float
  %4303 = fadd fast float %4302, %2851
  %4304 = fmul fast float %4294, %4289
  %4305 = fsub fast float 1.000000e+00, %4289
  %4306 = fadd fast float %4305, %4304
  %4307 = fmul fast float %4290, %4290
  %4308 = fmul fast float %4307, %4295
  %4309 = fadd fast float %4308, %4294
  %4310 = bitcast float %4309 to i32
  %4311 = ashr i32 %4310, 1
  %4312 = add nsw i32 %4311, 532487669
  %4313 = bitcast i32 %4312 to float
  %4314 = fadd fast float %4313, %4290
  %4315 = fmul fast float %4306, %4306
  %4316 = fmul fast float %4315, %4303
  %4317 = fmul fast float %4316, %4314
  %4318 = fdiv fast float 0x3FF0A00000000000, %4317
  %4319 = fmul fast float %4318, %4294
  %4320 = call float @dx.op.unary.f32(i32 6, float %4282)  ; FAbs(value)
  %4321 = fsub fast float 1.000000e+00, %4320
  %4322 = bitcast float %4321 to i32
  %4323 = sitofp i32 %4322 to float
  %4324 = fmul fast float %4323, 5.000000e+00
  %4325 = fadd fast float %4324, 0xC1EFBF8940000000
  %4326 = fptosi float %4325 to i32
  %4327 = bitcast i32 %4326 to float
  %4328 = fsub fast float 1.000000e+00, %2838
  %4329 = fsub fast float 1.000000e+00, %2839
  %4330 = fsub fast float 1.000000e+00, %2849
  %4331 = fmul fast float %4327, %4328
  %4332 = fmul fast float %4327, %4329
  %4333 = fmul fast float %4327, %4330
  %4334 = fadd fast float %4331, %2838
  %4335 = fadd fast float %4332, %2839
  %4336 = fadd fast float %4333, %2849
  br i1 %4128, label %4337, label %4360

; <label>:4337                                    ; preds = %4269
  %4338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2215, float %4320, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 0
  %4340 = extractvalue %dx.types.ResRet.f32 %4338, 1
  %4341 = extractvalue %dx.types.ResRet.f32 %4338, 2
  %4342 = fadd fast float %4339, -5.000000e-01
  %4343 = fadd fast float %4340, -5.000000e-01
  %4344 = fadd fast float %4341, -5.000000e-01
  %4345 = fmul fast float %2838, 4.000000e+00
  %4346 = fmul fast float %4345, %4328
  %4347 = fmul fast float %4346, %4342
  %4348 = fmul fast float %2839, 4.000000e+00
  %4349 = fmul fast float %4348, %4329
  %4350 = fmul fast float %4349, %4343
  %4351 = fmul fast float %2849, 4.000000e+00
  %4352 = fmul fast float %4351, %4330
  %4353 = fmul fast float %4352, %4344
  %4354 = fadd fast float %4347, %4334
  %4355 = fadd fast float %4350, %4335
  %4356 = fadd fast float %4353, %4336
  %4357 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  %4358 = call float @dx.op.unary.f32(i32 7, float %4355)  ; Saturate(value)
  %4359 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  br label %4360

; <label>:4360                                    ; preds = %4337, %4269
  %4361 = phi float [ %4357, %4337 ], [ %4334, %4269 ]
  %4362 = phi float [ %4358, %4337 ], [ %4335, %4269 ]
  %4363 = phi float [ %4359, %4337 ], [ %4336, %4269 ]
  %4364 = fmul fast float %4281, 9.843750e-01
  %4365 = fadd fast float %4364, 7.812500e-03
  %4366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4365, float %4118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4367 = extractvalue %dx.types.ResRet.f32 %4366, 2
  %4368 = extractvalue %dx.types.ResRet.f32 %4366, 3
  %4369 = fmul fast float %4367, %2838
  %4370 = fmul fast float %4367, %2839
  %4371 = fmul fast float %4367, %2849
  %4372 = fadd fast float %4369, %4368
  %4373 = fadd fast float %4370, %4368
  %4374 = fadd fast float %4371, %4368
  br i1 %4128, label %4375, label %4398

; <label>:4375                                    ; preds = %4360
  %4376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2215, float %4281, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4377 = extractvalue %dx.types.ResRet.f32 %4376, 0
  %4378 = extractvalue %dx.types.ResRet.f32 %4376, 1
  %4379 = extractvalue %dx.types.ResRet.f32 %4376, 2
  %4380 = fadd fast float %4377, -5.000000e-01
  %4381 = fadd fast float %4378, -5.000000e-01
  %4382 = fadd fast float %4379, -5.000000e-01
  %4383 = fmul fast float %2838, 4.000000e+00
  %4384 = fmul fast float %4383, %4328
  %4385 = fmul fast float %4384, %4380
  %4386 = fmul fast float %2839, 4.000000e+00
  %4387 = fmul fast float %4386, %4329
  %4388 = fmul fast float %4387, %4381
  %4389 = fmul fast float %2849, 4.000000e+00
  %4390 = fmul fast float %4389, %4330
  %4391 = fmul fast float %4390, %4382
  %4392 = fadd fast float %4385, %4372
  %4393 = fadd fast float %4388, %4373
  %4394 = fadd fast float %4391, %4374
  %4395 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4396 = call float @dx.op.unary.f32(i32 7, float %4393)  ; Saturate(value)
  %4397 = call float @dx.op.unary.f32(i32 7, float %4394)  ; Saturate(value)
  br label %4398

; <label>:4398                                    ; preds = %4375, %4360
  %4399 = phi float [ %4395, %4375 ], [ %4372, %4360 ]
  %4400 = phi float [ %4396, %4375 ], [ %4373, %4360 ]
  %4401 = phi float [ %4397, %4375 ], [ %4374, %4360 ]
  %4402 = call float @dx.op.binary.f32(i32 35, float %4400, float %4401)  ; FMax(a,b)
  %4403 = call float @dx.op.binary.f32(i32 35, float %4399, float %4402)  ; FMax(a,b)
  %4404 = fsub fast float 1.000000e+00, %4403
  %4405 = fmul fast float %4361, %4319
  %4406 = fmul fast float %4362, %4319
  %4407 = fmul fast float %4363, %4319
  %4408 = fsub fast float 1.000000e+00, %4282
  %4409 = bitcast float %4408 to i32
  %4410 = sitofp i32 %4409 to float
  %4411 = fmul fast float %4410, 5.000000e+00
  %4412 = fadd fast float %4411, 0xC1EFBF8940000000
  %4413 = fptosi float %4412 to i32
  %4414 = bitcast i32 %4413 to float
  %4415 = fmul fast float %4414, %2214
  %4416 = fmul fast float %4404, %4415
  %4417 = fmul fast float %4416, %4178
  %4418 = fmul fast float %4416, %4179
  %4419 = fmul fast float %4416, %4180
  %4420 = fadd fast float %4417, %4405
  %4421 = fadd fast float %4418, %4406
  %4422 = fadd fast float %4419, %4407
  %4423 = fmul fast float %4287, %4270
  %4424 = fmul fast float %4423, %4404
  %4425 = fmul fast float %4287, %4271
  %4426 = fmul fast float %4425, %4404
  %4427 = fmul fast float %4287, %4272
  %4428 = fmul fast float %4427, %4404
  %4429 = fmul fast float %4423, %4420
  %4430 = fmul fast float %4425, %4421
  %4431 = fmul fast float %4427, %4422
  %4432 = fadd fast float %4424, %4162
  %4433 = fmul fast float %4432, %2235
  %4434 = fadd fast float %4426, %4163
  %4435 = fmul fast float %4434, %2235
  %4436 = fadd fast float %4428, %4164
  %4437 = fmul fast float %4436, %2235
  %4438 = fadd fast float %4429, %4205
  %4439 = fmul fast float %4438, %2235
  %4440 = fadd fast float %4430, %4208
  %4441 = fmul fast float %4440, %2235
  %4442 = fadd fast float %4431, %4211
  %4443 = fmul fast float %4442, %2235
  br label %4444

; <label>:4444                                    ; preds = %4398, %4262, %4155
  %4445 = phi float [ %4206, %4155 ], [ %4206, %4262 ], [ %4439, %4398 ]
  %4446 = phi float [ %4209, %4155 ], [ %4209, %4262 ], [ %4441, %4398 ]
  %4447 = phi float [ %4212, %4155 ], [ %4212, %4262 ], [ %4443, %4398 ]
  %4448 = phi float [ %4201, %4155 ], [ %4201, %4262 ], [ %4433, %4398 ]
  %4449 = phi float [ %4202, %4155 ], [ %4202, %4262 ], [ %4435, %4398 ]
  %4450 = phi float [ %4203, %4155 ], [ %4203, %4262 ], [ %4437, %4398 ]
  %4451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4452 = extractvalue %dx.types.CBufRet.i32 %4451, 0
  %4453 = icmp eq i32 %4452, 0
  br i1 %4453, label %4888, label %4454

; <label>:4454                                    ; preds = %4444
  %4455 = fptoui float %70 to i32
  %4456 = fptoui float %71 to i32
  %4457 = lshr i32 %4455, 4
  %4458 = lshr i32 %4456, 4
  %4459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.i32 %4459, 0
  %4461 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4458, i32 %4460, i32 %4457)  ; UMad(a,b,c)
  %4462 = add nsw i32 %4452, -1
  %4463 = call i32 @dx.op.binary.i32(i32 37, i32 %4462, i32 0)  ; IMax(a,b)
  %4464 = call float @dx.op.binary.f32(i32 35, float %65, float 0.000000e+00)  ; FMax(a,b)
  %4465 = fptoui float %4464 to i32
  %4466 = lshr i32 %4465, 5
  %4467 = call i32 @dx.op.binary.i32(i32 40, i32 %4466, i32 8191)  ; UMin(a,b)
  %4468 = shl i32 %4467, 2
  %4469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4468, i32 undef)  ; BufferLoad(srv,index,wot)
  %4470 = extractvalue %dx.types.ResRet.i32 %4469, 0
  %4471 = lshr i32 %4470, 16
  %4472 = and i32 %4470, 65535
  %4473 = lshr i32 %4470, 21
  %4474 = lshr i32 %4472, 5
  %4475 = call i32 @dx.op.binary.i32(i32 40, i32 %4474, i32 %4463)  ; UMin(a,b)
  %4476 = icmp ugt i32 %4473, %4475
  br i1 %4476, label %4888, label %4477

; <label>:4477                                    ; preds = %4454
  br label %4478

; <label>:4478                                    ; preds = %4878, %4477
  %4479 = phi i32 [ %4885, %4878 ], [ %4473, %4477 ]
  %4480 = phi float [ %4879, %4878 ], [ %4445, %4477 ]
  %4481 = phi float [ %4880, %4878 ], [ %4446, %4477 ]
  %4482 = phi float [ %4881, %4878 ], [ %4447, %4477 ]
  %4483 = phi float [ %4882, %4878 ], [ %4448, %4477 ]
  %4484 = phi float [ %4883, %4878 ], [ %4449, %4477 ]
  %4485 = phi float [ %4884, %4878 ], [ %4450, %4477 ]
  %4486 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4487 = extractvalue %dx.types.CBufRet.i32 %4486, 0
  %4488 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4461, i32 %4487, i32 %4479)  ; UMad(a,b,c)
  %4489 = shl i32 %4488, 2
  %4490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4489, i32 undef)  ; BufferLoad(srv,index,wot)
  %4491 = extractvalue %dx.types.ResRet.i32 %4490, 0
  %4492 = shl i32 %4479, 5
  %4493 = sub nsw i32 %4471, %4492
  %4494 = call i32 @dx.op.binary.i32(i32 37, i32 %4493, i32 0)  ; IMax(a,b)
  %4495 = call i32 @dx.op.binary.i32(i32 38, i32 %4494, i32 31)  ; IMin(a,b)
  %4496 = sub nsw i32 1, %4471
  %4497 = add nsw i32 %4496, %4472
  %4498 = call i32 @dx.op.binary.i32(i32 37, i32 %4497, i32 0)  ; IMax(a,b)
  %4499 = call i32 @dx.op.binary.i32(i32 38, i32 %4498, i32 32)  ; IMin(a,b)
  %4500 = and i32 %4499, 31
  %4501 = shl i32 -1, %4500
  %4502 = xor i32 %4501, -1
  %4503 = and i32 %4495, 31
  %4504 = shl i32 %4502, %4503
  %4505 = icmp eq i32 %4499, 32
  %4506 = select i1 %4505, i32 -1, i32 %4504
  %4507 = and i32 %4506, %4491
  %4508 = icmp eq i32 %4507, 0
  br i1 %4508, label %4878, label %4509

; <label>:4509                                    ; preds = %4478
  br label %4510

; <label>:4510                                    ; preds = %4590, %4509
  %4511 = phi i32 [ %4522, %4590 ], [ %4507, %4509 ]
  %4512 = phi float [ %4591, %4590 ], [ %4480, %4509 ]
  %4513 = phi float [ %4592, %4590 ], [ %4481, %4509 ]
  %4514 = phi float [ %4593, %4590 ], [ %4482, %4509 ]
  %4515 = phi float [ %4594, %4590 ], [ %4483, %4509 ]
  %4516 = phi float [ %4595, %4590 ], [ %4484, %4509 ]
  %4517 = phi float [ %4596, %4590 ], [ %4485, %4509 ]
  %4518 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4511)  ; FirstbitLo(value)
  %4519 = add i32 %4518, %4492
  %4520 = and i32 %4518, 31
  %4521 = shl i32 1, %4520
  %4522 = xor i32 %4521, %4511
  %4523 = mul i32 %4519, 112
  %4524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4523, i32 undef)  ; BufferLoad(srv,index,wot)
  %4525 = extractvalue %dx.types.ResRet.f32 %4524, 0
  %4526 = extractvalue %dx.types.ResRet.f32 %4524, 1
  %4527 = extractvalue %dx.types.ResRet.f32 %4524, 2
  %4528 = or i32 %4523, 12
  %4529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4528, i32 undef)  ; BufferLoad(srv,index,wot)
  %4530 = extractvalue %dx.types.ResRet.f32 %4529, 0
  %4531 = add i32 %4523, 44
  %4532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4531, i32 undef)  ; BufferLoad(srv,index,wot)
  %4533 = extractvalue %dx.types.ResRet.f32 %4532, 0
  %4534 = add i32 %4523, 48
  %4535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4534, i32 undef)  ; BufferLoad(srv,index,wot)
  %4536 = extractvalue %dx.types.ResRet.f32 %4535, 0
  %4537 = extractvalue %dx.types.ResRet.f32 %4535, 1
  %4538 = extractvalue %dx.types.ResRet.f32 %4535, 2
  %4539 = add i32 %4523, 80
  %4540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4539, i32 undef)  ; BufferLoad(srv,index,wot)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 1
  %4542 = extractvalue %dx.types.ResRet.f32 %4540, 2
  %4543 = call float @dx.op.dot3.f32(i32 55, float %4525, float %4526, float %4527, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4544 = select i1 %188, float %4541, float %4525
  %4545 = select i1 %188, float %4543, float %4526
  %4546 = select i1 %188, float %4542, float %4527
  %4547 = fsub fast float %4536, %117
  %4548 = fsub fast float %4537, %118
  %4549 = fsub fast float %4538, %119
  %4550 = call float @dx.op.dot3.f32(i32 55, float %4547, float %4548, float %4549, float %4547, float %4548, float %4549)  ; Dot3(ax,ay,az,bx,by,bz)
  %4551 = call float @dx.op.unary.f32(i32 24, float %4550)  ; Sqrt(value)
  %4552 = fdiv fast float 1.000000e+00, %4551
  %4553 = fmul fast float %4552, %4547
  %4554 = fmul fast float %4552, %4548
  %4555 = fmul fast float %4552, %4549
  %4556 = fadd fast float %4551, %4530
  %4557 = fdiv fast float 1.000000e+00, %4556
  %4558 = fmul float %4533, %4557
  %4559 = fmul float %4558, %4558
  %4560 = call float @dx.op.unary.f32(i32 7, float %4559)  ; Saturate(value)
  %4561 = and i32 %4521, %4507
  %4562 = icmp eq i32 %4561, 0
  br i1 %4562, label %4585, label %4563, !dx.controlflow.hints !87

; <label>:4563                                    ; preds = %4510
  %4564 = lshr i32 %4455, 5
  %4565 = lshr i32 %4456, 5
  %4566 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %4564, i32 %4565, i32 %4519, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4567 = extractvalue %dx.types.ResRet.i32 %4566, 0
  %4568 = and i32 %4567, 3
  %4569 = icmp eq i32 %4568, 0
  %4570 = select i1 %4569, float 1.000000e+00, float 0.000000e+00
  %4571 = icmp eq i32 %4568, 3
  br i1 %4571, label %4572, label %4585

; <label>:4572                                    ; preds = %4563
  %4573 = lshr i32 %4567, 10
  %4574 = and i32 %4573, 8160
  %4575 = and i32 %4456, 31
  %4576 = or i32 %4574, %4575
  %4577 = lshr i32 %4567, 1
  %4578 = and i32 %4577, 16352
  %4579 = and i32 %4455, 31
  %4580 = or i32 %4578, %4579
  %4581 = lshr i32 %4567, 23
  %4582 = and i32 %4581, 255
  %4583 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %4580, i32 %4576, i32 %4582, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4584 = extractvalue %dx.types.ResRet.f32 %4583, 0
  br label %4585

; <label>:4585                                    ; preds = %4572, %4563, %4510
  %4586 = phi float [ %4584, %4572 ], [ %4570, %4563 ], [ 0.000000e+00, %4510 ]
  %4587 = call float @dx.op.binary.f32(i32 36, float %4586, float %4586)  ; FMin(a,b)
  %4588 = call float @dx.op.binary.f32(i32 36, float %4586, float %4587)  ; FMin(a,b)
  %4589 = fcmp fast ogt float %4588, 0.000000e+00
  br i1 %4589, label %4598, label %4590, !dx.controlflow.hints !88

; <label>:4590                                    ; preds = %4834, %4585
  %4591 = phi float [ %4512, %4585 ], [ %4874, %4834 ]
  %4592 = phi float [ %4513, %4585 ], [ %4875, %4834 ]
  %4593 = phi float [ %4514, %4585 ], [ %4876, %4834 ]
  %4594 = phi float [ %4515, %4585 ], [ %4868, %4834 ]
  %4595 = phi float [ %4516, %4585 ], [ %4869, %4834 ]
  %4596 = phi float [ %4517, %4585 ], [ %4870, %4834 ]
  %4597 = icmp eq i32 %4511, %4521
  br i1 %4597, label %4877, label %4510

; <label>:4598                                    ; preds = %4585
  %4599 = fmul fast float %4586, %4544
  %4600 = fmul fast float %4586, %4545
  %4601 = fmul fast float %4586, %4546
  %4602 = fsub fast float %4538, %2637
  %4603 = fcmp fast ogt float %4602, 0.000000e+00
  %4604 = fsub fast float %119, %2637
  %4605 = fcmp fast ogt float %4604, 0.000000e+00
  %4606 = xor i1 %4605, %4603
  %4607 = fsub fast float %2637, %4538
  %4608 = fmul fast float %4607, 2.000000e+00
  %4609 = fadd fast float %4608, %4538
  %4610 = select i1 %4606, float %4538, float %4609
  %4611 = fsub fast float %4610, %119
  %4612 = call float @dx.op.dot3.f32(i32 55, float %4547, float %4548, float %4611, float %4547, float %4548, float %4611)  ; Dot3(ax,ay,az,bx,by,bz)
  %4613 = call float @dx.op.unary.f32(i32 25, float %4612)  ; Rsqrt(value)
  %4614 = fmul fast float %4613, %4547
  %4615 = fmul fast float %4613, %4548
  %4616 = fmul fast float %4613, %4611
  %4617 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2645)  ; Dot3(ax,ay,az,bx,by,bz)
  %4618 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4614, float %4615, float %4616)  ; Dot3(ax,ay,az,bx,by,bz)
  %4619 = fdiv fast float 1.000000e+00, %4618
  %4620 = fmul fast float %4619, %4617
  %4621 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4604, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4622 = fcmp fast ogt float %4621, 0.000000e+00
  %4623 = fcmp fast olt float %4621, 0.000000e+00
  %4624 = zext i1 %4622 to i32
  %4625 = zext i1 %4623 to i32
  %4626 = sub nsw i32 %4624, %4625
  %4627 = sitofp i32 %4626 to float
  %4628 = fsub fast float %4610, %2637
  %4629 = call float @dx.op.dot3.f32(i32 55, float %4547, float %4548, float %4628, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4630 = fcmp fast ogt float %4629, 0.000000e+00
  %4631 = fcmp fast olt float %4629, 0.000000e+00
  %4632 = zext i1 %4630 to i32
  %4633 = zext i1 %4631 to i32
  %4634 = sub nsw i32 %4632, %4633
  %4635 = sitofp i32 %4634 to float
  %4636 = fcmp fast une float %4627, %4635
  br i1 %4636, label %4637, label %4647

; <label>:4637                                    ; preds = %4598
  %4638 = fmul fast float %4620, %4616
  %4639 = fmul fast float %4620, %4615
  %4640 = fmul fast float %4620, %4614
  %4641 = fmul fast float %4640, %4640
  %4642 = fmul fast float %4639, %4639
  %4643 = fadd fast float %4641, %4642
  %4644 = fmul fast float %4638, %4638
  %4645 = fadd fast float %4643, %4644
  %4646 = call float @dx.op.unary.f32(i32 24, float %4645)  ; Sqrt(value)
  br label %4659

; <label>:4647                                    ; preds = %4598
  %4648 = icmp slt i32 %4626, 0
  br i1 %4648, label %4649, label %4659

; <label>:4649                                    ; preds = %4647
  %4650 = fsub fast float %117, %4536
  %4651 = fsub fast float %118, %4537
  %4652 = fsub fast float %119, %4610
  %4653 = fmul fast float %4650, %4650
  %4654 = fmul fast float %4651, %4651
  %4655 = fadd fast float %4653, %4654
  %4656 = fmul fast float %4652, %4652
  %4657 = fadd fast float %4655, %4656
  %4658 = call float @dx.op.unary.f32(i32 24, float %4657)  ; Sqrt(value)
  br label %4659

; <label>:4659                                    ; preds = %4649, %4647, %4637
  %4660 = phi float [ %4646, %4637 ], [ %4658, %4649 ], [ 0.000000e+00, %4647 ]
  %4661 = and i1 %4605, %4603
  %4662 = fsub fast float -0.000000e+00, %4660
  %4663 = select i1 %4661, float -0.000000e+00, float %4662
  %4664 = fmul fast float %2638, 0x3FF7154760000000
  %4665 = fmul fast float %4664, %4663
  %4666 = fmul fast float %2639, 0x3FF7154760000000
  %4667 = fmul fast float %4666, %4663
  %4668 = fmul fast float %2640, 0x3FF7154760000000
  %4669 = fmul fast float %4668, %4663
  %4670 = call float @dx.op.unary.f32(i32 21, float %4665)  ; Exp(value)
  %4671 = call float @dx.op.unary.f32(i32 21, float %4667)  ; Exp(value)
  %4672 = call float @dx.op.unary.f32(i32 21, float %4669)  ; Exp(value)
  %4673 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4674 = call float @dx.op.unary.f32(i32 7, float %4671)  ; Saturate(value)
  %4675 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4676 = fmul fast float %4599, %4673
  %4677 = fmul fast float %4600, %4674
  %4678 = fmul fast float %4601, %4675
  %4679 = fsub fast float %4553, %2837
  %4680 = fsub fast float %4554, %2836
  %4681 = fsub fast float %4555, %2835
  %4682 = call float @dx.op.dot3.f32(i32 55, float %4679, float %4680, float %4681, float %4679, float %4680, float %4681)  ; Dot3(ax,ay,az,bx,by,bz)
  %4683 = call float @dx.op.unary.f32(i32 25, float %4682)  ; Rsqrt(value)
  %4684 = fmul fast float %4683, %4679
  %4685 = fmul fast float %4683, %4680
  %4686 = fmul fast float %4683, %4681
  %4687 = call float @dx.op.dot3.f32(i32 55, float %4553, float %4554, float %4555, float %2844, float %2845, float %2846)  ; Dot3(ax,ay,az,bx,by,bz)
  %4688 = call float @dx.op.dot3.f32(i32 55, float %2834, float %2833, float %2832, float %4684, float %4685, float %4686)  ; Dot3(ax,ay,az,bx,by,bz)
  %4689 = call float @dx.op.unary.f32(i32 7, float %4687)  ; Saturate(value)
  %4690 = fmul fast float %4689, %4560
  %4691 = fmul fast float %4689, %4689
  %4692 = fmul fast float %4691, %4213
  %4693 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4694 = fmul fast float %4690, %4693
  %4695 = bitcast float %4550 to i32
  %4696 = ashr i32 %4695, 1
  %4697 = sub nsw i32 1597463007, %4696
  %4698 = bitcast i32 %4697 to float
  %4699 = fmul fast float %4698, %4547
  %4700 = fmul fast float %4698, %4548
  %4701 = fmul fast float %4698, %4549
  %4702 = fsub fast float %4699, %2837
  %4703 = fsub fast float %4700, %2836
  %4704 = fsub fast float %4701, %2835
  %4705 = call float @dx.op.dot3.f32(i32 55, float %4702, float %4703, float %4704, float %4702, float %4703, float %4704)  ; Dot3(ax,ay,az,bx,by,bz)
  %4706 = call float @dx.op.unary.f32(i32 25, float %4705)  ; Rsqrt(value)
  %4707 = fmul fast float %4702, %4706
  %4708 = fmul fast float %4703, %4706
  %4709 = fmul fast float %4704, %4706
  %4710 = call float @dx.op.dot3.f32(i32 55, float %2844, float %2845, float %2846, float %4707, float %4708, float %4709)  ; Dot3(ax,ay,az,bx,by,bz)
  %4711 = fmul fast float %4710, %4710
  %4712 = call float @dx.op.unary.f32(i32 6, float %4687)  ; FAbs(value)
  %4713 = fsub fast float 1.000000e+00, %2847
  %4714 = call float @dx.op.binary.f32(i32 35, float %4713, float 0x3F847AE140000000)  ; FMax(a,b)
  %4715 = fmul fast float %4714, %4714
  %4716 = fmul fast float %4715, %4715
  %4717 = fsub fast float 1.000000e+00, %4716
  %4718 = fmul fast float %2851, %2851
  %4719 = fmul fast float %4718, %4717
  %4720 = fadd fast float %4719, %4716
  %4721 = bitcast float %4720 to i32
  %4722 = ashr i32 %4721, 1
  %4723 = add nsw i32 %4722, 532487669
  %4724 = bitcast i32 %4723 to float
  %4725 = fadd fast float %4724, %2851
  %4726 = fmul fast float %4716, %4711
  %4727 = fsub fast float 1.000000e+00, %4711
  %4728 = fadd fast float %4727, %4726
  %4729 = fmul fast float %4712, %4712
  %4730 = fmul fast float %4729, %4717
  %4731 = fadd fast float %4730, %4716
  %4732 = bitcast float %4731 to i32
  %4733 = ashr i32 %4732, 1
  %4734 = add nsw i32 %4733, 532487669
  %4735 = bitcast i32 %4734 to float
  %4736 = fadd fast float %4735, %4712
  %4737 = fmul fast float %4728, %4728
  %4738 = fmul fast float %4737, %4725
  %4739 = fmul fast float %4738, %4736
  %4740 = fdiv fast float 1.000000e+00, %4739
  %4741 = bitcast float %4716 to i32
  %4742 = sitofp i32 %4741 to float
  %4743 = fmul fast float %4742, 0x3FE7F73180000000
  %4744 = fadd fast float %4743, 0x41AFE27C40000000
  %4745 = fptosi float %4744 to i32
  %4746 = bitcast i32 %4745 to float
  %4747 = fmul fast float %4533, 0x3FD80E9D60000000
  %4748 = fmul fast float %4747, %4698
  %4749 = fadd fast float %4746, %4748
  %4750 = bitcast float %4749 to i32
  %4751 = sub nsw i32 2129859010, %4750
  %4752 = bitcast i32 %4751 to float
  %4753 = fmul fast float %4716, %4740
  %4754 = fmul fast float %4753, %4746
  %4755 = fmul fast float %4754, %4752
  %4756 = call float @dx.op.unary.f32(i32 6, float %4688)  ; FAbs(value)
  %4757 = fsub fast float 1.000000e+00, %4756
  %4758 = bitcast float %4757 to i32
  %4759 = sitofp i32 %4758 to float
  %4760 = fmul fast float %4759, 5.000000e+00
  %4761 = fadd fast float %4760, 0xC1EFBF8940000000
  %4762 = fptosi float %4761 to i32
  %4763 = bitcast i32 %4762 to float
  %4764 = fsub fast float 1.000000e+00, %2838
  %4765 = fsub fast float 1.000000e+00, %2839
  %4766 = fsub fast float 1.000000e+00, %2849
  %4767 = fmul fast float %4763, %4764
  %4768 = fmul fast float %4763, %4765
  %4769 = fmul fast float %4763, %4766
  %4770 = fadd fast float %4767, %2838
  %4771 = fadd fast float %4768, %2839
  %4772 = fadd fast float %4769, %2849
  br i1 %4128, label %4773, label %4796

; <label>:4773                                    ; preds = %4659
  %4774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2215, float %4756, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4775 = extractvalue %dx.types.ResRet.f32 %4774, 0
  %4776 = extractvalue %dx.types.ResRet.f32 %4774, 1
  %4777 = extractvalue %dx.types.ResRet.f32 %4774, 2
  %4778 = fadd fast float %4775, -5.000000e-01
  %4779 = fadd fast float %4776, -5.000000e-01
  %4780 = fadd fast float %4777, -5.000000e-01
  %4781 = fmul fast float %2838, 4.000000e+00
  %4782 = fmul fast float %4781, %4764
  %4783 = fmul fast float %4782, %4778
  %4784 = fmul fast float %2839, 4.000000e+00
  %4785 = fmul fast float %4784, %4765
  %4786 = fmul fast float %4785, %4779
  %4787 = fmul fast float %2849, 4.000000e+00
  %4788 = fmul fast float %4787, %4766
  %4789 = fmul fast float %4788, %4780
  %4790 = fadd fast float %4783, %4770
  %4791 = fadd fast float %4786, %4771
  %4792 = fadd fast float %4789, %4772
  %4793 = call float @dx.op.unary.f32(i32 7, float %4790)  ; Saturate(value)
  %4794 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4795 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  br label %4796

; <label>:4796                                    ; preds = %4773, %4659
  %4797 = phi float [ %4793, %4773 ], [ %4770, %4659 ]
  %4798 = phi float [ %4794, %4773 ], [ %4771, %4659 ]
  %4799 = phi float [ %4795, %4773 ], [ %4772, %4659 ]
  %4800 = fmul fast float %4687, 9.843750e-01
  %4801 = fadd fast float %4800, 7.812500e-03
  %4802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4801, float %4118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4803 = extractvalue %dx.types.ResRet.f32 %4802, 2
  %4804 = extractvalue %dx.types.ResRet.f32 %4802, 3
  %4805 = fmul fast float %4803, %2838
  %4806 = fmul fast float %4803, %2839
  %4807 = fmul fast float %4803, %2849
  %4808 = fadd fast float %4805, %4804
  %4809 = fadd fast float %4806, %4804
  %4810 = fadd fast float %4807, %4804
  br i1 %4128, label %4811, label %4834

; <label>:4811                                    ; preds = %4796
  %4812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2215, float %4687, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4813 = extractvalue %dx.types.ResRet.f32 %4812, 0
  %4814 = extractvalue %dx.types.ResRet.f32 %4812, 1
  %4815 = extractvalue %dx.types.ResRet.f32 %4812, 2
  %4816 = fadd fast float %4813, -5.000000e-01
  %4817 = fadd fast float %4814, -5.000000e-01
  %4818 = fadd fast float %4815, -5.000000e-01
  %4819 = fmul fast float %2838, 4.000000e+00
  %4820 = fmul fast float %4819, %4764
  %4821 = fmul fast float %4820, %4816
  %4822 = fmul fast float %2839, 4.000000e+00
  %4823 = fmul fast float %4822, %4765
  %4824 = fmul fast float %4823, %4817
  %4825 = fmul fast float %2849, 4.000000e+00
  %4826 = fmul fast float %4825, %4766
  %4827 = fmul fast float %4826, %4818
  %4828 = fadd fast float %4821, %4808
  %4829 = fadd fast float %4824, %4809
  %4830 = fadd fast float %4827, %4810
  %4831 = call float @dx.op.unary.f32(i32 7, float %4828)  ; Saturate(value)
  %4832 = call float @dx.op.unary.f32(i32 7, float %4829)  ; Saturate(value)
  %4833 = call float @dx.op.unary.f32(i32 7, float %4830)  ; Saturate(value)
  br label %4834

; <label>:4834                                    ; preds = %4811, %4796
  %4835 = phi float [ %4831, %4811 ], [ %4808, %4796 ]
  %4836 = phi float [ %4832, %4811 ], [ %4809, %4796 ]
  %4837 = phi float [ %4833, %4811 ], [ %4810, %4796 ]
  %4838 = call float @dx.op.binary.f32(i32 35, float %4836, float %4837)  ; FMax(a,b)
  %4839 = call float @dx.op.binary.f32(i32 35, float %4835, float %4838)  ; FMax(a,b)
  %4840 = fsub fast float 1.000000e+00, %4839
  %4841 = fmul fast float %4797, %4755
  %4842 = fmul fast float %4798, %4755
  %4843 = fmul fast float %4799, %4755
  %4844 = fsub fast float 1.000000e+00, %4688
  %4845 = bitcast float %4844 to i32
  %4846 = sitofp i32 %4845 to float
  %4847 = fmul fast float %4846, 5.000000e+00
  %4848 = fadd fast float %4847, 0xC1EFBF8940000000
  %4849 = fptosi float %4848 to i32
  %4850 = bitcast i32 %4849 to float
  %4851 = fmul fast float %4850, %2214
  %4852 = fmul fast float %4840, %4851
  %4853 = fmul fast float %4852, %4178
  %4854 = fmul fast float %4852, %4179
  %4855 = fmul fast float %4852, %4180
  %4856 = fadd fast float %4853, %4841
  %4857 = fadd fast float %4854, %4842
  %4858 = fadd fast float %4855, %4843
  %4859 = fmul fast float %4676, %2235
  %4860 = fmul fast float %4859, %4694
  %4861 = fmul fast float %4860, %4840
  %4862 = fmul fast float %4677, %2235
  %4863 = fmul fast float %4862, %4694
  %4864 = fmul fast float %4863, %4840
  %4865 = fmul fast float %4678, %2235
  %4866 = fmul fast float %4865, %4694
  %4867 = fmul fast float %4866, %4840
  %4868 = fadd fast float %4861, %4515
  %4869 = fadd fast float %4864, %4516
  %4870 = fadd fast float %4867, %4517
  %4871 = fmul fast float %4860, %4856
  %4872 = fmul fast float %4863, %4857
  %4873 = fmul fast float %4866, %4858
  %4874 = fadd fast float %4871, %4512
  %4875 = fadd fast float %4872, %4513
  %4876 = fadd fast float %4873, %4514
  br label %4590

; <label>:4877                                    ; preds = %4590
  br label %4878

; <label>:4878                                    ; preds = %4877, %4478
  %4879 = phi float [ %4480, %4478 ], [ %4591, %4877 ]
  %4880 = phi float [ %4481, %4478 ], [ %4592, %4877 ]
  %4881 = phi float [ %4482, %4478 ], [ %4593, %4877 ]
  %4882 = phi float [ %4483, %4478 ], [ %4594, %4877 ]
  %4883 = phi float [ %4484, %4478 ], [ %4595, %4877 ]
  %4884 = phi float [ %4485, %4478 ], [ %4596, %4877 ]
  %4885 = add i32 %4479, 1
  %4886 = icmp ugt i32 %4885, %4475
  br i1 %4886, label %4887, label %4478

; <label>:4887                                    ; preds = %4878
  br label %4888

; <label>:4888                                    ; preds = %4887, %4454, %4444
  %4889 = phi float [ %4445, %4444 ], [ %4445, %4454 ], [ %4879, %4887 ]
  %4890 = phi float [ %4446, %4444 ], [ %4446, %4454 ], [ %4880, %4887 ]
  %4891 = phi float [ %4447, %4444 ], [ %4447, %4454 ], [ %4881, %4887 ]
  %4892 = phi float [ %4448, %4444 ], [ %4448, %4454 ], [ %4882, %4887 ]
  %4893 = phi float [ %4449, %4444 ], [ %4449, %4454 ], [ %4883, %4887 ]
  %4894 = phi float [ %4450, %4444 ], [ %4450, %4454 ], [ %4884, %4887 ]
  %4895 = call float @dx.op.unary.f32(i32 24, float %2841)  ; Sqrt(value)
  %4896 = call float @dx.op.unary.f32(i32 24, float %2842)  ; Sqrt(value)
  %4897 = call float @dx.op.unary.f32(i32 24, float %2843)  ; Sqrt(value)
  %4898 = fmul fast float %4895, %4892
  %4899 = fmul fast float %4896, %4893
  %4900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4901 = extractvalue %dx.types.CBufRet.f32 %4900, 0
  br i1 %188, label %4902, label %4922

; <label>:4902                                    ; preds = %4888
  %4903 = fadd fast float %4894, %2212
  %4904 = fmul fast float %4903, %2213
  %4905 = fsub fast float 1.000000e+00, %2213
  %4906 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4908 = extractvalue %dx.types.CBufRet.f32 %4907, 3
  %4909 = fmul fast float %4908, %4906
  %4910 = fadd fast float %4909, %4904
  %4911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4912 = extractvalue %dx.types.CBufRet.f32 %4911, 0
  %4913 = fmul fast float %4912, %4184
  %4914 = fsub fast float %4910, %4913
  %4915 = fadd fast float %4899, %4898
  %4916 = fmul fast float %4901, %4915
  %4917 = extractvalue %dx.types.CBufRet.f32 %4907, 1
  %4918 = fsub fast float %4914, %4917
  %4919 = extractvalue %dx.types.CBufRet.f32 %4907, 2
  %4920 = fmul fast float %4918, %4919
  %4921 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  br label %4938

; <label>:4922                                    ; preds = %4888
  %4923 = fmul fast float %4897, %4894
  %4924 = fmul fast float %4901, %4898
  %4925 = fmul fast float %4901, %4899
  %4926 = fmul fast float %4923, %4901
  %4927 = add i32 %44, 196
  %4928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4927, i32 undef)  ; BufferLoad(srv,index,wot)
  %4929 = extractvalue %dx.types.ResRet.i32 %4928, 0
  %4930 = and i32 %4929, 32
  %4931 = icmp eq i32 %4930, 0
  br i1 %4931, label %4938, label %4932

; <label>:4932                                    ; preds = %4922
  %4933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4934 = extractvalue %dx.types.CBufRet.f32 %4933, 0
  %4935 = fmul fast float %4934, 0x3FE99999A0000000
  %4936 = fadd fast float %4934, %4924
  %4937 = fadd fast float %4935, %4926
  br label %4938

; <label>:4938                                    ; preds = %4932, %4922, %4902
  %4939 = phi float [ %4916, %4902 ], [ %4936, %4932 ], [ %4924, %4922 ]
  %4940 = phi float [ %4921, %4902 ], [ %4925, %4932 ], [ %4925, %4922 ]
  %4941 = phi float [ 1.000000e+00, %4902 ], [ %4937, %4932 ], [ %4926, %4922 ]
  %4942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4943 = extractvalue %dx.types.CBufRet.f32 %4942, 0
  %4944 = fmul fast float %4943, %4890
  %4945 = fmul fast float %4943, %4891
  %4946 = fadd fast float %4890, %4889
  %4947 = select i1 %188, float %4946, float %4889
  %4948 = fmul float %4947, %4943
  %4949 = select i1 %188, float 0.000000e+00, float %4944
  %4950 = select i1 %188, float 0.000000e+00, float %4945
  %4951 = fmul fast float %4939, %4895
  %4952 = fmul fast float %4940, %4896
  %4953 = fmul fast float %4941, %4897
  %4954 = fadd fast float %4948, %4951
  %4955 = fadd fast float %4949, %4952
  %4956 = fadd fast float %4950, %4953
  %4957 = select i1 %188, float %4940, float %4955
  %4958 = select i1 %188, float %4941, float %4956
  %4959 = call float @dx.op.binary.f32(i32 36, float %4954, float 3.225500e+04)  ; FMin(a,b)
  %4960 = call float @dx.op.binary.f32(i32 36, float %4957, float 3.225500e+04)  ; FMin(a,b)
  %4961 = call float @dx.op.binary.f32(i32 36, float %4958, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4959)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4960)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4961)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

