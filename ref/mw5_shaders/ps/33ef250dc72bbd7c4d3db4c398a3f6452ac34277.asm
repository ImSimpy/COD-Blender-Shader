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
; shader hash: 1c0bc9fe0934b794ffc3738b716ee078
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
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
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
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
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
  %263 = add i32 %44, 204
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
  %383 = add i32 %44, 216
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
  %406 = add i32 %44, 256
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
  %587 = add i32 %44, 212
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
  %604 = add i32 %44, 224
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
  %688 = add i32 %44, 232
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
  br i1 %759, label %1580, label %760

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
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
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
  %968 = add i32 %44, 252
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
  %1020 = add i32 %44, 244
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
  br i1 %1037, label %1580, label %1038

; <label>:1038                                    ; preds = %1035
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = and i32 %1040, 16
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1241, label %1043

; <label>:1043                                    ; preds = %1038
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = add i32 %44, 220
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
  %1069 = add i32 %44, 260
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
  %1250 = add i32 %44, 212
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
  %1267 = add i32 %44, 228
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
  %1351 = add i32 %44, 236
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
  %1387 = add i32 %44, 80
  %1388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1387, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.i32 %1388, 0
  %1390 = and i32 %1389, 255
  %1391 = uitofp i32 %1390 to float
  %1392 = lshr i32 %1389, 8
  %1393 = and i32 %1392, 255
  %1394 = uitofp i32 %1393 to float
  %1395 = call float @dx.op.dot3.f32(i32 55, float %1256, float %1257, float %1258, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1396 = fmul fast float %1394, %1395
  %1397 = fadd fast float %1396, %1391
  %1398 = fmul fast float %1397, 0x3F70101020000000
  %1399 = call float @dx.op.unary.f32(i32 7, float %1398)  ; Saturate(value)
  br i1 %751, label %1400, label %1408

; <label>:1400                                    ; preds = %1383
  %1401 = fsub fast float 1.000000e+00, %1036
  %1402 = fmul fast float %1401, %740
  %1403 = fmul fast float %1401, %741
  %1404 = fmul fast float %1401, %742
  %1405 = fmul fast float %1401, %743
  %1406 = fmul fast float %1401, %744
  %1407 = fmul fast float %1401, %745
  br label %1408

; <label>:1408                                    ; preds = %1400, %1383
  %1409 = phi float [ %1402, %1400 ], [ %740, %1383 ]
  %1410 = phi float [ %1403, %1400 ], [ %741, %1383 ]
  %1411 = phi float [ %1404, %1400 ], [ %742, %1383 ]
  %1412 = phi float [ %1405, %1400 ], [ %743, %1383 ]
  %1413 = phi float [ %1406, %1400 ], [ %744, %1383 ]
  %1414 = phi float [ %1407, %1400 ], [ %745, %1383 ]
  %1415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1416 = extractvalue %dx.types.ResRet.i32 %1415, 0
  %1417 = and i32 %1416, 3
  %1418 = icmp eq i32 %1417, 3
  br i1 %1418, label %1497, label %1419

; <label>:1419                                    ; preds = %1408
  %1420 = and i32 %1416, 16
  %1421 = icmp ne i32 %1420, 0
  %1422 = select i1 %1421, float %1036, float 0.000000e+00
  %1423 = icmp eq i32 %1417, 0
  br i1 %1423, label %1424, label %1452

; <label>:1424                                    ; preds = %1419
  %1425 = and i32 %1416, 64
  %1426 = icmp ne i32 %1425, 0
  %1427 = select i1 %1426, float %1036, float 0.000000e+00
  %1428 = fsub fast float %1256, %1409
  %1429 = fsub fast float %1257, %1410
  %1430 = fsub fast float %1258, %1411
  %1431 = fmul fast float %1422, %1428
  %1432 = fmul fast float %1422, %1429
  %1433 = fmul fast float %1422, %1430
  %1434 = fadd fast float %1431, %1409
  %1435 = fadd fast float %1432, %1410
  %1436 = fadd fast float %1433, %1411
  %1437 = fsub fast float %1242, %746
  %1438 = fmul fast float %1422, %1437
  %1439 = fadd fast float %1438, %746
  %1440 = fsub fast float %1384, %1412
  %1441 = fsub fast float %1385, %1413
  %1442 = fsub fast float %1386, %1414
  %1443 = fmul fast float %1427, %1440
  %1444 = fmul fast float %1427, %1441
  %1445 = fmul fast float %1427, %1442
  %1446 = fadd fast float %1443, %1412
  %1447 = fadd fast float %1444, %1413
  %1448 = fadd fast float %1445, %1414
  %1449 = fsub fast float %1399, %750
  %1450 = fmul fast float %1422, %1449
  %1451 = fadd fast float %1450, %750
  br label %1497

; <label>:1452                                    ; preds = %1419
  %1453 = icmp eq i32 %1417, 1
  br i1 %1453, label %1454, label %1467

; <label>:1454                                    ; preds = %1452
  %1455 = fadd fast float %1256, -1.000000e+00
  %1456 = fadd fast float %1257, -1.000000e+00
  %1457 = fadd fast float %1258, -1.000000e+00
  %1458 = fmul fast float %1422, %1455
  %1459 = fmul fast float %1422, %1456
  %1460 = fmul fast float %1422, %1457
  %1461 = fadd fast float %1458, 1.000000e+00
  %1462 = fadd fast float %1459, 1.000000e+00
  %1463 = fadd fast float %1460, 1.000000e+00
  %1464 = fmul fast float %1461, %1409
  %1465 = fmul fast float %1462, %1410
  %1466 = fmul fast float %1463, %1411
  br label %1497

; <label>:1467                                    ; preds = %1452
  %1468 = icmp eq i32 %1417, 2
  br i1 %1468, label %1469, label %1497

; <label>:1469                                    ; preds = %1467
  %1470 = call float @dx.op.unary.f32(i32 24, float %1256)  ; Sqrt(value)
  %1471 = call float @dx.op.unary.f32(i32 24, float %1257)  ; Sqrt(value)
  %1472 = call float @dx.op.unary.f32(i32 24, float %1258)  ; Sqrt(value)
  %1473 = fadd fast float %1470, -5.000000e-01
  %1474 = fadd fast float %1471, -5.000000e-01
  %1475 = fadd fast float %1472, -5.000000e-01
  %1476 = fmul fast float %1473, %1422
  %1477 = fmul fast float %1474, %1422
  %1478 = fmul fast float %1475, %1422
  %1479 = fadd fast float %1476, 5.000000e-01
  %1480 = fadd fast float %1477, 5.000000e-01
  %1481 = fadd fast float %1478, 5.000000e-01
  %1482 = fmul fast float %1479, 2.000000e+00
  %1483 = fsub fast float 1.000000e+00, %1482
  %1484 = fmul fast float %1483, %1409
  %1485 = fadd fast float %1484, %1482
  %1486 = fmul fast float %1485, %1409
  %1487 = fmul fast float %1480, 2.000000e+00
  %1488 = fsub fast float 1.000000e+00, %1487
  %1489 = fmul fast float %1488, %1410
  %1490 = fadd fast float %1489, %1487
  %1491 = fmul fast float %1490, %1410
  %1492 = fmul fast float %1481, 2.000000e+00
  %1493 = fsub fast float 1.000000e+00, %1492
  %1494 = fmul fast float %1493, %1411
  %1495 = fadd fast float %1494, %1492
  %1496 = fmul fast float %1495, %1411
  br label %1497

; <label>:1497                                    ; preds = %1469, %1467, %1454, %1424, %1408
  %1498 = phi float [ %1409, %1408 ], [ %1486, %1469 ], [ %1409, %1467 ], [ %1464, %1454 ], [ %1434, %1424 ]
  %1499 = phi float [ %1410, %1408 ], [ %1491, %1469 ], [ %1410, %1467 ], [ %1465, %1454 ], [ %1435, %1424 ]
  %1500 = phi float [ %1411, %1408 ], [ %1496, %1469 ], [ %1411, %1467 ], [ %1466, %1454 ], [ %1436, %1424 ]
  %1501 = phi float [ %1412, %1408 ], [ %1412, %1469 ], [ %1412, %1467 ], [ %1412, %1454 ], [ %1446, %1424 ]
  %1502 = phi float [ %1413, %1408 ], [ %1413, %1469 ], [ %1413, %1467 ], [ %1413, %1454 ], [ %1447, %1424 ]
  %1503 = phi float [ %1414, %1408 ], [ %1414, %1469 ], [ %1414, %1467 ], [ %1414, %1454 ], [ %1448, %1424 ]
  %1504 = phi float [ %746, %1408 ], [ %746, %1469 ], [ %746, %1467 ], [ %746, %1454 ], [ %1439, %1424 ]
  %1505 = phi float [ %750, %1408 ], [ %750, %1469 ], [ %750, %1467 ], [ %750, %1454 ], [ %1451, %1424 ]
  %1506 = and i32 %1416, 12
  %1507 = icmp eq i32 %1506, 12
  br i1 %1507, label %1580, label %1508

; <label>:1508                                    ; preds = %1497
  %1509 = and i32 %1416, 2097184
  %1510 = icmp eq i32 %1509, 2097184
  %1511 = select i1 %1510, float %1036, float 0.000000e+00
  %1512 = and i32 %1416, 4194336
  %1513 = icmp eq i32 %1512, 4194336
  %1514 = select i1 %1513, float %1036, float 0.000000e+00
  %1515 = and i32 %1416, 8388640
  %1516 = icmp eq i32 %1515, 8388640
  %1517 = select i1 %1516, float %1036, float 0.000000e+00
  %1518 = icmp eq i32 %1506, 0
  br i1 %1518, label %1519, label %1532

; <label>:1519                                    ; preds = %1508
  %1520 = fsub fast float %1337, %738
  %1521 = fsub fast float %1338, %739
  %1522 = fmul fast float %1511, %1520
  %1523 = fmul fast float %1511, %1521
  %1524 = fadd fast float %1522, %738
  %1525 = fadd fast float %1523, %739
  %1526 = fsub fast float %1339, %749
  %1527 = fmul fast float %1514, %1526
  %1528 = fadd fast float %1527, %749
  %1529 = fsub fast float %1336, %748
  %1530 = fmul fast float %1517, %1529
  %1531 = fadd fast float %1530, %748
  br label %1580

; <label>:1532                                    ; preds = %1508
  %1533 = icmp eq i32 %1506, 4
  br i1 %1533, label %1534, label %1566

; <label>:1534                                    ; preds = %1532
  %1535 = fmul fast float %1511, %1337
  %1536 = fmul fast float %1511, %1338
  %1537 = fadd fast float %1535, %738
  %1538 = fadd fast float %1536, %739
  %1539 = call float @dx.op.binary.f32(i32 36, float %749, float %1339)  ; FMin(a,b)
  %1540 = fsub fast float %1539, %749
  %1541 = fmul fast float %1540, %1514
  %1542 = fadd fast float %1541, %749
  %1543 = fadd fast float %1336, %748
  %1544 = fmul fast float %1543, 0x3FF337FAE0000000
  %1545 = fmul fast float %748, %748
  %1546 = fmul fast float %1336, %1336
  %1547 = fadd fast float %1546, %1545
  %1548 = fmul fast float %1547, 0x3FE5152B00000000
  %1549 = fmul fast float %748, 0xBFCC1F85E0000000
  %1550 = fmul fast float %1549, %1336
  %1551 = fadd fast float %1550, 0xBFE1363700000000
  %1552 = fadd fast float %1551, %1544
  %1553 = fsub fast float %1552, %1548
  %1554 = fmul fast float %1543, 0x3FBA6F0D00000000
  %1555 = fmul fast float %1547, 0x3FD0432880000000
  %1556 = fmul fast float %748, 0xBFEF110800000000
  %1557 = fmul fast float %1556, %1336
  %1558 = fadd fast float %1557, 1.000000e+00
  %1559 = fsub fast float %1558, %1554
  %1560 = fadd fast float %1559, %1555
  %1561 = fdiv fast float %1553, %1560
  %1562 = call float @dx.op.unary.f32(i32 7, float %1561)  ; Saturate(value)
  %1563 = fsub fast float %1562, %748
  %1564 = fmul fast float %1563, %1517
  %1565 = fadd fast float %1564, %748
  br label %1580

; <label>:1566                                    ; preds = %1532
  %1567 = icmp eq i32 %1506, 8
  br i1 %1567, label %1568, label %1580

; <label>:1568                                    ; preds = %1566
  %1569 = fmul fast float %1511, %1337
  %1570 = fmul fast float %1511, %1338
  %1571 = fadd fast float %1569, %738
  %1572 = fadd fast float %1570, %739
  %1573 = call float @dx.op.binary.f32(i32 36, float %749, float %1339)  ; FMin(a,b)
  %1574 = fsub fast float %1573, %749
  %1575 = fmul fast float %1574, %1514
  %1576 = fadd fast float %1575, %749
  %1577 = fsub fast float %1336, %748
  %1578 = fmul fast float %1517, %1577
  %1579 = fadd fast float %1578, %748
  br label %1580

; <label>:1580                                    ; preds = %1568, %1566, %1534, %1519, %1497, %1035, %737
  %1581 = phi float [ %738, %1497 ], [ %738, %1035 ], [ %738, %737 ], [ %1524, %1519 ], [ %1537, %1534 ], [ %738, %1566 ], [ %1571, %1568 ]
  %1582 = phi float [ %739, %1497 ], [ %739, %1035 ], [ %739, %737 ], [ %1525, %1519 ], [ %1538, %1534 ], [ %739, %1566 ], [ %1572, %1568 ]
  %1583 = phi float [ %1498, %1497 ], [ %740, %1035 ], [ %740, %737 ], [ %1498, %1519 ], [ %1498, %1534 ], [ %1498, %1566 ], [ %1498, %1568 ]
  %1584 = phi float [ %1499, %1497 ], [ %741, %1035 ], [ %741, %737 ], [ %1499, %1519 ], [ %1499, %1534 ], [ %1499, %1566 ], [ %1499, %1568 ]
  %1585 = phi float [ %1500, %1497 ], [ %742, %1035 ], [ %742, %737 ], [ %1500, %1519 ], [ %1500, %1534 ], [ %1500, %1566 ], [ %1500, %1568 ]
  %1586 = phi float [ %1501, %1497 ], [ %743, %1035 ], [ %743, %737 ], [ %1501, %1519 ], [ %1501, %1534 ], [ %1501, %1566 ], [ %1501, %1568 ]
  %1587 = phi float [ %1502, %1497 ], [ %744, %1035 ], [ %744, %737 ], [ %1502, %1519 ], [ %1502, %1534 ], [ %1502, %1566 ], [ %1502, %1568 ]
  %1588 = phi float [ %1503, %1497 ], [ %745, %1035 ], [ %745, %737 ], [ %1503, %1519 ], [ %1503, %1534 ], [ %1503, %1566 ], [ %1503, %1568 ]
  %1589 = phi float [ %1504, %1497 ], [ %746, %1035 ], [ %746, %737 ], [ %1504, %1519 ], [ %1504, %1534 ], [ %1504, %1566 ], [ %1504, %1568 ]
  %1590 = phi float [ %748, %1497 ], [ %748, %1035 ], [ %748, %737 ], [ %1531, %1519 ], [ %1565, %1534 ], [ %748, %1566 ], [ %1579, %1568 ]
  %1591 = phi float [ %749, %1497 ], [ %749, %1035 ], [ %749, %737 ], [ %1528, %1519 ], [ %1542, %1534 ], [ %749, %1566 ], [ %1576, %1568 ]
  %1592 = phi float [ %1505, %1497 ], [ %750, %1035 ], [ %750, %737 ], [ %1505, %1519 ], [ %1505, %1534 ], [ %1505, %1566 ], [ %1505, %1568 ]
  %1593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1594 = extractvalue %dx.types.CBufRet.f32 %1593, 0
  %1595 = call float @dx.op.dot2.f32(i32 54, float %1581, float %1582, float %1581, float %1582)  ; Dot2(ax,ay,bx,by)
  %1596 = fmul fast float %1595, 0x3FE3333340000000
  %1597 = fsub fast float 1.000000e+00, %1596
  %1598 = call float @dx.op.dot3.f32(i32 55, float %1581, float %1582, float %1597, float %1581, float %1582, float %1597)  ; Dot3(ax,ay,az,bx,by,bz)
  %1599 = call float @dx.op.unary.f32(i32 25, float %1598)  ; Rsqrt(value)
  %1600 = fmul fast float %1599, %1581
  %1601 = fmul fast float %1599, %1582
  %1602 = fmul fast float %1597, %1599
  %1603 = fmul fast float %1602, %53
  %1604 = fmul fast float %1602, %54
  %1605 = fmul fast float %1602, %55
  %1606 = fmul fast float %1600, %49
  %1607 = fmul fast float %1600, %50
  %1608 = fmul fast float %1600, %51
  %1609 = fadd fast float %1603, %1606
  %1610 = fadd fast float %1604, %1607
  %1611 = fadd fast float %1605, %1608
  %1612 = fmul fast float %1601, %81
  %1613 = fmul fast float %1601, %82
  %1614 = fmul fast float %1601, %83
  %1615 = fadd fast float %1609, %1612
  %1616 = fadd fast float %1610, %1613
  %1617 = fadd fast float %1611, %1614
  %1618 = call float @dx.op.dot3.f32(i32 55, float %1615, float %1616, float %1617, float %1615, float %1616, float %1617)  ; Dot3(ax,ay,az,bx,by,bz)
  %1619 = call float @dx.op.unary.f32(i32 25, float %1618)  ; Rsqrt(value)
  %1620 = fmul fast float %1615, %1619
  %1621 = fmul fast float %1616, %1619
  %1622 = fmul fast float %1617, %1619
  %1623 = call float @dx.op.unary.f32(i32 83, float %117)  ; DerivCoarseX(value)
  %1624 = call float @dx.op.unary.f32(i32 83, float %118)  ; DerivCoarseX(value)
  %1625 = call float @dx.op.unary.f32(i32 83, float %119)  ; DerivCoarseX(value)
  %1626 = call float @dx.op.unary.f32(i32 84, float %117)  ; DerivCoarseY(value)
  %1627 = call float @dx.op.unary.f32(i32 84, float %118)  ; DerivCoarseY(value)
  %1628 = call float @dx.op.unary.f32(i32 84, float %119)  ; DerivCoarseY(value)
  %1629 = fadd fast float %1623, %117
  %1630 = fadd fast float %1624, %118
  %1631 = fadd fast float %1625, %119
  %1632 = fadd fast float %1626, %117
  %1633 = fadd fast float %1627, %118
  %1634 = fadd fast float %1628, %119
  %1635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1636 = extractvalue %dx.types.CBufRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.CBufRet.f32 %1635, 1
  %1638 = extractvalue %dx.types.CBufRet.f32 %1635, 2
  %1639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.f32 %1639, 2
  %1641 = extractvalue %dx.types.CBufRet.f32 %1639, 3
  %1642 = fmul fast float %1636, %70
  %1643 = fmul fast float %1642, %1640
  %1644 = fmul fast float %1637, %71
  %1645 = fmul fast float %1644, %1641
  %1646 = fptoui float %1643 to i32
  %1647 = fptoui float %1645 to i32
  %1648 = fadd fast float %1636, -1.000000e+00
  %1649 = fadd fast float %1637, -1.000000e+00
  %1650 = fptoui float %1648 to i32
  %1651 = fptoui float %1649 to i32
  %1652 = call i32 @dx.op.binary.i32(i32 40, i32 %1646, i32 %1650)  ; UMin(a,b)
  %1653 = call i32 @dx.op.binary.i32(i32 40, i32 %1647, i32 %1651)  ; UMin(a,b)
  %1654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.f32 %1654, 2
  %1656 = extractvalue %dx.types.CBufRet.f32 %1654, 3
  %1657 = fmul fast float %1655, %65
  %1658 = fsub fast float %1657, %1656
  %1659 = fadd fast float %1638, -1.000000e+00
  %1660 = call float @dx.op.binary.f32(i32 36, float %1658, float %1659)  ; FMin(a,b)
  %1661 = fptoui float %1660 to i32
  %1662 = fptoui float %1636 to i32
  %1663 = fptoui float %1637 to i32
  %1664 = mul i32 %1661, %1663
  %1665 = add i32 %1664, %1653
  %1666 = mul i32 %1665, %1662
  %1667 = add i32 %1666, %1652
  %1668 = shl i32 %1667, 2
  %1669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1668, i32 undef)  ; BufferLoad(srv,index,wot)
  %1670 = extractvalue %dx.types.ResRet.i32 %1669, 0
  %1671 = and i32 %1670, 1023
  %1672 = lshr i32 %1670, 10
  %1673 = icmp eq i32 %1671, 0
  br i1 %1673, label %2099, label %1674

; <label>:1674                                    ; preds = %1580
  %1675 = and i32 %1670, 1023
  br label %1676

; <label>:1676                                    ; preds = %1802, %1674
  %1677 = phi float [ %1803, %1802 ], [ 0.000000e+00, %1674 ]
  %1678 = phi float [ %1804, %1802 ], [ %1594, %1674 ]
  %1679 = phi float [ %1805, %1802 ], [ %1592, %1674 ]
  %1680 = phi float [ %1806, %1802 ], [ 0.000000e+00, %1674 ]
  %1681 = phi float [ %1807, %1802 ], [ 0.000000e+00, %1674 ]
  %1682 = phi float [ %1808, %1802 ], [ %1586, %1674 ]
  %1683 = phi float [ %1809, %1802 ], [ %1587, %1674 ]
  %1684 = phi float [ %1810, %1802 ], [ %1588, %1674 ]
  %1685 = phi float [ %1811, %1802 ], [ %1620, %1674 ]
  %1686 = phi float [ %1812, %1802 ], [ %1621, %1674 ]
  %1687 = phi float [ %1813, %1802 ], [ %1622, %1674 ]
  %1688 = phi float [ %1814, %1802 ], [ %1591, %1674 ]
  %1689 = phi float [ %1815, %1802 ], [ %1590, %1674 ]
  %1690 = phi float [ %1816, %1802 ], [ 0.000000e+00, %1674 ]
  %1691 = phi float [ %1817, %1802 ], [ %1589, %1674 ]
  %1692 = phi float [ %1818, %1802 ], [ %1583, %1674 ]
  %1693 = phi float [ %1819, %1802 ], [ %1584, %1674 ]
  %1694 = phi float [ %1820, %1802 ], [ %1585, %1674 ]
  %1695 = phi i32 [ %1752, %1802 ], [ 0, %1674 ]
  %1696 = add nuw nsw i32 %1695, %1672
  %1697 = shl i32 %1696, 2
  %1698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1697, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.i32 %1698, 0
  %1700 = shl i32 %1699, 8
  %1701 = or i32 %1700, 48
  %1702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1701, i32 undef)  ; BufferLoad(srv,index,wot)
  %1703 = extractvalue %dx.types.ResRet.f32 %1702, 0
  %1704 = extractvalue %dx.types.ResRet.f32 %1702, 1
  %1705 = extractvalue %dx.types.ResRet.f32 %1702, 2
  %1706 = extractvalue %dx.types.ResRet.f32 %1702, 3
  %1707 = or i32 %1700, 64
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = extractvalue %dx.types.ResRet.i32 %1708, 1
  %1711 = or i32 %1700, 80
  %1712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.f32 %1712, 2
  %1714 = extractvalue %dx.types.ResRet.f32 %1712, 3
  %1715 = or i32 %1700, 96
  %1716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1715, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.f32 %1716, 0
  %1718 = extractvalue %dx.types.ResRet.f32 %1716, 1
  %1719 = extractvalue %dx.types.ResRet.f32 %1716, 2
  %1720 = extractvalue %dx.types.ResRet.f32 %1716, 3
  %1721 = or i32 %1700, 112
  %1722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1721, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.f32 %1722, 2
  %1724 = or i32 %1700, 128
  %1725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1724, i32 undef)  ; BufferLoad(srv,index,wot)
  %1726 = extractvalue %dx.types.ResRet.f32 %1725, 0
  %1727 = extractvalue %dx.types.ResRet.f32 %1725, 1
  %1728 = extractvalue %dx.types.ResRet.f32 %1725, 2
  %1729 = extractvalue %dx.types.ResRet.f32 %1725, 3
  %1730 = or i32 %1700, 144
  %1731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1730, i32 undef)  ; BufferLoad(srv,index,wot)
  %1732 = extractvalue %dx.types.ResRet.f32 %1731, 0
  %1733 = extractvalue %dx.types.ResRet.f32 %1731, 1
  %1734 = extractvalue %dx.types.ResRet.f32 %1731, 2
  %1735 = extractvalue %dx.types.ResRet.f32 %1731, 3
  %1736 = or i32 %1700, 160
  %1737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.f32 %1737, 0
  %1739 = extractvalue %dx.types.ResRet.f32 %1737, 1
  %1740 = extractvalue %dx.types.ResRet.f32 %1737, 2
  %1741 = extractvalue %dx.types.ResRet.f32 %1737, 3
  %1742 = or i32 %1700, 192
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = or i32 %1700, 208
  %1746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.f32 %1746, 0
  %1748 = or i32 %1700, 248
  %1749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.f32 %1749, 0
  %1751 = extractvalue %dx.types.ResRet.f32 %1749, 1
  %1752 = add nuw nsw i32 %1695, 1
  %1753 = bitcast float %1706 to i32
  %1754 = and i32 %1753, 2560
  %1755 = icmp eq i32 %1754, 0
  %1756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.f32 %1756, 0
  %1758 = extractvalue %dx.types.ResRet.f32 %1756, 1
  %1759 = extractvalue %dx.types.ResRet.f32 %1756, 2
  %1760 = extractvalue %dx.types.ResRet.f32 %1756, 3
  %1761 = call float @dx.op.dot4.f32(i32 56, float %1757, float %1758, float %1759, float %1760, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1762 = or i32 %1700, 16
  %1763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.ResRet.f32 %1763, 1
  %1766 = extractvalue %dx.types.ResRet.f32 %1763, 2
  %1767 = extractvalue %dx.types.ResRet.f32 %1763, 3
  %1768 = call float @dx.op.dot4.f32(i32 56, float %1764, float %1765, float %1766, float %1767, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1769 = or i32 %1700, 32
  %1770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = extractvalue %dx.types.ResRet.f32 %1770, 1
  %1773 = extractvalue %dx.types.ResRet.f32 %1770, 2
  %1774 = extractvalue %dx.types.ResRet.f32 %1770, 3
  %1775 = call float @dx.op.dot4.f32(i32 56, float %1771, float %1772, float %1773, float %1774, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1776 = call float @dx.op.unary.f32(i32 27, float %1761)  ; Round_ni(value)
  %1777 = call float @dx.op.unary.f32(i32 6, float %1776)  ; FAbs(value)
  %1778 = call float @dx.op.unary.f32(i32 27, float %1768)  ; Round_ni(value)
  %1779 = call float @dx.op.unary.f32(i32 6, float %1778)  ; FAbs(value)
  %1780 = call float @dx.op.unary.f32(i32 6, float %1775)  ; FAbs(value)
  %1781 = call float @dx.op.unary.f32(i32 27, float %1780)  ; Round_ni(value)
  %1782 = fadd fast float %1779, %1777
  %1783 = fadd fast float %1782, %1781
  %1784 = fcmp fast oeq float %1783, 0.000000e+00
  %1785 = call float @dx.op.dot4.f32(i32 56, float %1757, float %1758, float %1759, float %1760, float %1629, float %1630, float %1631, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1786 = call float @dx.op.dot4.f32(i32 56, float %1764, float %1765, float %1766, float %1767, float %1629, float %1630, float %1631, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1787 = call float @dx.op.dot4.f32(i32 56, float %1757, float %1758, float %1759, float %1760, float %1632, float %1633, float %1634, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1788 = call float @dx.op.dot4.f32(i32 56, float %1764, float %1765, float %1766, float %1767, float %1632, float %1633, float %1634, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1789 = fsub fast float %1785, %1761
  %1790 = fsub fast float %1787, %1761
  %1791 = fsub fast float %1786, %1768
  %1792 = fsub fast float %1788, %1768
  %1793 = call float @dx.op.dot3.f32(i32 55, float %1703, float %1704, float %1705, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %1794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1794, 2
  %1796 = fadd fast float %1795, %1793
  %1797 = call float @dx.op.unary.f32(i32 7, float %1796)  ; Saturate(value)
  %1798 = extractvalue %dx.types.CBufRet.f32 %1794, 0
  %1799 = fcmp fast ogt float %1797, %1798
  %1800 = and i1 %1784, %1799
  %1801 = and i1 %1755, %1800
  br i1 %1801, label %1822, label %1802

; <label>:1802                                    ; preds = %2085, %1903, %1822, %1676
  %1803 = phi float [ %1677, %1822 ], [ %1906, %1903 ], [ %1906, %2085 ], [ %1677, %1676 ]
  %1804 = phi float [ %1678, %1822 ], [ %1678, %1903 ], [ %2060, %2085 ], [ %1678, %1676 ]
  %1805 = phi float [ %1679, %1822 ], [ %1679, %1903 ], [ %2058, %2085 ], [ %1679, %1676 ]
  %1806 = phi float [ %1680, %1822 ], [ %1680, %1903 ], [ %2030, %2085 ], [ %1680, %1676 ]
  %1807 = phi float [ %1681, %1822 ], [ %1681, %1903 ], [ %2028, %2085 ], [ %1681, %1676 ]
  %1808 = phi float [ %1682, %1822 ], [ %1682, %1903 ], [ %2095, %2085 ], [ %1682, %1676 ]
  %1809 = phi float [ %1683, %1822 ], [ %1683, %1903 ], [ %2096, %2085 ], [ %1683, %1676 ]
  %1810 = phi float [ %1684, %1822 ], [ %1684, %1903 ], [ %2097, %2085 ], [ %1684, %1676 ]
  %1811 = phi float [ %1685, %1822 ], [ %1685, %1903 ], [ %2009, %2085 ], [ %1685, %1676 ]
  %1812 = phi float [ %1686, %1822 ], [ %1686, %1903 ], [ %2010, %2085 ], [ %1686, %1676 ]
  %1813 = phi float [ %1687, %1822 ], [ %1687, %1903 ], [ %2011, %2085 ], [ %1687, %1676 ]
  %1814 = phi float [ %1688, %1822 ], [ %1688, %1903 ], [ %2038, %2085 ], [ %1688, %1676 ]
  %1815 = phi float [ %1689, %1822 ], [ %1689, %1903 ], [ %2035, %2085 ], [ %1689, %1676 ]
  %1816 = phi float [ %1690, %1822 ], [ %1690, %1903 ], [ %2032, %2085 ], [ %1690, %1676 ]
  %1817 = phi float [ %1691, %1822 ], [ %1691, %1903 ], [ %2026, %2085 ], [ %1691, %1676 ]
  %1818 = phi float [ %1692, %1822 ], [ %1692, %1903 ], [ %2021, %2085 ], [ %1692, %1676 ]
  %1819 = phi float [ %1693, %1822 ], [ %1693, %1903 ], [ %2022, %2085 ], [ %1693, %1676 ]
  %1820 = phi float [ %1694, %1822 ], [ %1694, %1903 ], [ %2023, %2085 ], [ %1694, %1676 ]
  %1821 = icmp eq i32 %1752, %1675
  br i1 %1821, label %2098, label %1676

; <label>:1822                                    ; preds = %1676
  %1823 = extractvalue %dx.types.ResRet.f32 %1722, 3
  %1824 = extractvalue %dx.types.ResRet.f32 %1722, 1
  %1825 = extractvalue %dx.types.ResRet.f32 %1722, 0
  %1826 = extractvalue %dx.types.ResRet.f32 %1712, 1
  %1827 = extractvalue %dx.types.ResRet.f32 %1712, 0
  %1828 = extractvalue %dx.types.ResRet.i32 %1708, 3
  %1829 = extractvalue %dx.types.ResRet.i32 %1708, 2
  %1830 = add i32 %1828, 0
  %1831 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1830, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1833 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1831, %dx.types.Handle %1832, float %1761, float %1768, float undef, float undef, i32 0, i32 0, i32 undef, float %1789, float %1791, float undef, float %1790, float %1792, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1834 = extractvalue %dx.types.ResRet.f32 %1833, 0
  %1835 = fmul fast float %1834, %1827
  %1836 = fadd fast float %1835, %1826
  %1837 = call float @dx.op.unary.f32(i32 7, float %1836)  ; Saturate(value)
  %1838 = fmul fast float %1761, %1717
  %1839 = call float @dx.op.tertiary.f32(i32 46, float %1718, float %1768, float %1838)  ; FMad(a,b,c)
  %1840 = fadd fast float %1839, %1825
  %1841 = fmul fast float %1761, %1719
  %1842 = call float @dx.op.tertiary.f32(i32 46, float %1720, float %1768, float %1841)  ; FMad(a,b,c)
  %1843 = fadd fast float %1842, %1824
  %1844 = fmul fast float %1789, %1717
  %1845 = call float @dx.op.tertiary.f32(i32 46, float %1718, float %1791, float %1844)  ; FMad(a,b,c)
  %1846 = fmul fast float %1789, %1719
  %1847 = call float @dx.op.tertiary.f32(i32 46, float %1720, float %1791, float %1846)  ; FMad(a,b,c)
  %1848 = fmul fast float %1790, %1717
  %1849 = call float @dx.op.tertiary.f32(i32 46, float %1718, float %1792, float %1848)  ; FMad(a,b,c)
  %1850 = fmul fast float %1790, %1719
  %1851 = call float @dx.op.tertiary.f32(i32 46, float %1720, float %1792, float %1850)  ; FMad(a,b,c)
  %1852 = add i32 %1829, 0
  %1853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1852, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1854 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1853, %dx.types.Handle %1832, float %1840, float %1843, float undef, float undef, i32 0, i32 0, i32 undef, float %1845, float %1847, float undef, float %1849, float %1851, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1855 = extractvalue %dx.types.ResRet.f32 %1854, 0
  %1856 = and i32 %1753, 1024
  %1857 = icmp ne i32 %1856, 0
  %1858 = fcmp fast ogt float %1855, 0x3FE0101020000000
  %1859 = uitofp i1 %1858 to float
  %1860 = select i1 %1857, float %1859, float %1855
  %1861 = and i32 %1753, 8192
  %1862 = icmp ne i32 %1861, 0
  %1863 = select i1 %1862, float %1823, float 1.000000e+00
  %1864 = fmul fast float %1761, 2.000000e+00
  %1865 = fadd fast float %1864, -1.000000e+00
  %1866 = call float @dx.op.unary.f32(i32 6, float %1865)  ; FAbs(value)
  %1867 = fmul fast float %1866, %1750
  %1868 = fsub fast float %1867, %1750
  %1869 = call float @dx.op.unary.f32(i32 7, float %1868)  ; Saturate(value)
  %1870 = fmul fast float %1768, 2.000000e+00
  %1871 = fadd fast float %1870, -1.000000e+00
  %1872 = call float @dx.op.unary.f32(i32 6, float %1871)  ; FAbs(value)
  %1873 = fmul fast float %1872, %1751
  %1874 = fsub fast float %1873, %1751
  %1875 = call float @dx.op.unary.f32(i32 7, float %1874)  ; Saturate(value)
  %1876 = fmul fast float %1780, %1713
  %1877 = fsub fast float %1876, %1713
  %1878 = call float @dx.op.unary.f32(i32 7, float %1877)  ; Saturate(value)
  %1879 = fmul fast float %1837, %1863
  %1880 = fmul fast float %1879, %1834
  %1881 = fmul fast float %1880, %1869
  %1882 = fmul fast float %1881, %1860
  %1883 = fmul fast float %1882, %1875
  %1884 = fmul fast float %1883, %1878
  %1885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.f32 %1885, 1
  %1887 = extractvalue %dx.types.CBufRet.f32 %1885, 0
  %1888 = fsub fast float %1797, %1887
  %1889 = fmul fast float %1888, %1886
  %1890 = call float @dx.op.unary.f32(i32 7, float %1889)  ; Saturate(value)
  %1891 = fmul fast float %1884, %1714
  %1892 = fadd fast float %1884, %1714
  %1893 = fmul fast float %1892, %1723
  %1894 = fsub fast float %1893, %1723
  %1895 = call float @dx.op.unary.f32(i32 7, float %1894)  ; Saturate(value)
  %1896 = and i32 %1753, 128
  %1897 = icmp ne i32 %1896, 0
  %1898 = select i1 %1897, float %1895, float %1891
  %1899 = fmul fast float %1898, %1890
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 0
  %1902 = fcmp fast ugt float %1899, %1901
  br i1 %1902, label %1903, label %1802

; <label>:1903                                    ; preds = %1822
  %1904 = select i1 %1862, float %1899, float 0.000000e+00
  %1905 = fadd fast float %1904, %1677
  %1906 = call float @dx.op.unary.f32(i32 7, float %1905)  ; Saturate(value)
  br i1 %1862, label %1802, label %1907

; <label>:1907                                    ; preds = %1903
  %1908 = and i32 %1753, 4
  %1909 = and i32 %1753, 8
  %1910 = add i32 %1709, 0
  %1911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1910, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1912 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1913 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1911, %dx.types.Handle %1912, float %1840, float %1843, float undef, float undef, i32 0, i32 0, i32 undef, float %1845, float %1847, float undef, float %1849, float %1851, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1914 = extractvalue %dx.types.ResRet.f32 %1913, 0
  %1915 = extractvalue %dx.types.ResRet.f32 %1913, 1
  %1916 = extractvalue %dx.types.ResRet.f32 %1913, 2
  %1917 = extractvalue %dx.types.ResRet.f32 %1913, 3
  %1918 = bitcast float %1735 to i32
  %1919 = and i32 %1918, 255
  %1920 = uitofp i32 %1919 to float
  %1921 = lshr i32 %1918, 8
  %1922 = and i32 %1921, 255
  %1923 = uitofp i32 %1922 to float
  %1924 = fmul fast float %1917, %1920
  %1925 = fadd fast float %1924, %1923
  %1926 = fmul fast float %1925, 0x3F70101000000000
  %1927 = add i32 %1710, 0
  %1928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1927, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1929 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1928, %dx.types.Handle %1912, float %1840, float %1843, float undef, float undef, i32 0, i32 0, i32 undef, float %1845, float %1847, float undef, float %1849, float %1851, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1930 = extractvalue %dx.types.ResRet.f32 %1929, 0
  %1931 = extractvalue %dx.types.ResRet.f32 %1929, 1
  %1932 = extractvalue %dx.types.ResRet.f32 %1929, 2
  %1933 = extractvalue %dx.types.ResRet.f32 %1929, 3
  %1934 = bitcast float %1729 to i32
  %1935 = and i32 %1934, 255
  %1936 = uitofp i32 %1935 to float
  %1937 = lshr i32 %1934, 8
  %1938 = and i32 %1937, 255
  %1939 = uitofp i32 %1938 to float
  %1940 = lshr i32 %1934, 16
  %1941 = and i32 %1940, 255
  %1942 = uitofp i32 %1941 to float
  %1943 = fmul fast float %1942, 0x3F70101000000000
  %1944 = fmul fast float %1930, %1936
  %1945 = fadd fast float %1944, %1939
  %1946 = fmul fast float %1945, 0x3F70101000000000
  %1947 = fadd fast float %1931, -5.000000e-01
  %1948 = fadd fast float %1933, -5.000000e-01
  %1949 = fmul fast float %1947, %1943
  %1950 = fmul fast float %1948, %1943
  %1951 = fadd fast float %1949, 5.000000e-01
  %1952 = fadd fast float %1950, 5.000000e-01
  %1953 = fmul fast float %1914, %1738
  %1954 = fmul fast float %1915, %1739
  %1955 = fmul fast float %1916, %1740
  %1956 = fmul fast float %1951, 2.000000e+00
  %1957 = fadd fast float %1956, -1.000000e+00
  %1958 = fmul fast float %1952, 2.000000e+00
  %1959 = fadd fast float %1958, -1.000000e+00
  %1960 = fadd fast float %1957, %1959
  %1961 = fmul fast float %1960, 5.000000e-01
  %1962 = fsub fast float %1957, %1959
  %1963 = fmul fast float %1962, 5.000000e-01
  %1964 = call float @dx.op.unary.f32(i32 6, float %1961)  ; FAbs(value)
  %1965 = fsub fast float 1.000000e+00, %1964
  %1966 = call float @dx.op.unary.f32(i32 6, float %1963)  ; FAbs(value)
  %1967 = fsub fast float %1965, %1966
  %1968 = call float @dx.op.dot3.f32(i32 55, float %1961, float %1963, float %1967, float %1961, float %1963, float %1967)  ; Dot3(ax,ay,az,bx,by,bz)
  %1969 = call float @dx.op.unary.f32(i32 25, float %1968)  ; Rsqrt(value)
  %1970 = fmul fast float %1961, %1969
  %1971 = fmul fast float %1963, %1969
  %1972 = fmul fast float %1969, %1967
  %1973 = fmul fast float %1972, %1703
  %1974 = fmul fast float %1972, %1704
  %1975 = fmul fast float %1972, %1705
  %1976 = fmul fast float %1970, %1726
  %1977 = fmul fast float %1970, %1727
  %1978 = fmul fast float %1970, %1728
  %1979 = fadd fast float %1976, %1973
  %1980 = fadd fast float %1977, %1974
  %1981 = fadd fast float %1978, %1975
  %1982 = fmul fast float %1971, %1732
  %1983 = fmul fast float %1971, %1733
  %1984 = fmul fast float %1971, %1734
  %1985 = fadd fast float %1979, %1982
  %1986 = fadd fast float %1980, %1983
  %1987 = fadd fast float %1981, %1984
  %1988 = call float @dx.op.dot3.f32(i32 55, float %1985, float %1986, float %1987, float %1985, float %1986, float %1987)  ; Dot3(ax,ay,az,bx,by,bz)
  %1989 = call float @dx.op.unary.f32(i32 25, float %1988)  ; Rsqrt(value)
  %1990 = fmul fast float %1985, %1989
  %1991 = fmul fast float %1986, %1989
  %1992 = fmul fast float %1987, %1989
  %1993 = icmp ne i32 %1909, 0
  %1994 = select i1 %1993, float 1.000000e+00, float 0.000000e+00
  %1995 = fmul fast float %1899, %1994
  %1996 = and i32 %1753, 1
  %1997 = icmp eq i32 %1996, 0
  br i1 %1997, label %1998, label %2002

; <label>:1998                                    ; preds = %1907
  %1999 = fsub fast float %1990, %1685
  %2000 = fsub fast float %1991, %1686
  %2001 = fsub fast float %1992, %1687
  br label %2002

; <label>:2002                                    ; preds = %1998, %1907
  %2003 = phi float [ %1999, %1998 ], [ %1990, %1907 ]
  %2004 = phi float [ %2000, %1998 ], [ %1991, %1907 ]
  %2005 = phi float [ %2001, %1998 ], [ %1992, %1907 ]
  %2006 = fmul float %2005, %1995
  %2007 = fmul float %2004, %1995
  %2008 = fmul float %2003, %1995
  %2009 = fadd fast float %2008, %1685
  %2010 = fadd fast float %2007, %1686
  %2011 = fadd fast float %2006, %1687
  %2012 = icmp ne i32 %1908, 0
  %2013 = select i1 %2012, float 1.000000e+00, float 0.000000e+00
  %2014 = fmul fast float %1899, %2013
  %2015 = fsub fast float %1953, %1692
  %2016 = fsub fast float %1954, %1693
  %2017 = fsub fast float %1955, %1694
  %2018 = fmul fast float %2015, %2014
  %2019 = fmul fast float %2016, %2014
  %2020 = fmul fast float %2017, %2014
  %2021 = fadd fast float %2018, %1692
  %2022 = fadd fast float %2019, %1693
  %2023 = fadd fast float %2020, %1694
  %2024 = fsub fast float %1926, %1691
  %2025 = fmul fast float %2024, %2014
  %2026 = fadd fast float %2025, %1691
  %2027 = fmul fast float %2014, %1681
  %2028 = fsub fast float %1681, %2027
  %2029 = fmul fast float %2014, %1680
  %2030 = fsub fast float %1680, %2029
  %2031 = fadd fast float %1899, %1690
  %2032 = call float @dx.op.unary.f32(i32 7, float %2031)  ; Saturate(value)
  %2033 = fsub fast float %1946, %1689
  %2034 = fmul fast float %2033, %1995
  %2035 = fadd fast float %2034, %1689
  %2036 = fsub fast float %1932, %1688
  %2037 = fmul fast float %2036, %1995
  %2038 = fadd fast float %2037, %1688
  %2039 = call float @dx.op.dot3.f32(i32 55, float %1953, float %1954, float %1955, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2041 = extractvalue %dx.types.CBufRet.f32 %2040, 0
  %2042 = extractvalue %dx.types.CBufRet.f32 %2040, 1
  %2043 = fmul fast float %2042, %2039
  %2044 = fadd fast float %2043, %2041
  %2045 = call float @dx.op.unary.f32(i32 7, float %2044)  ; Saturate(value)
  %2046 = bitcast float %1741 to i32
  %2047 = and i32 %2046, 65535
  %2048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2047)  ; LegacyF16ToF32(value)
  %2049 = lshr i32 %2046, 16
  %2050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2049)  ; LegacyF16ToF32(value)
  %2051 = fcmp fast oge float %2048, 0.000000e+00
  %2052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2053 = extractvalue %dx.types.CBufRet.f32 %2052, 0
  %2054 = select i1 %2051, float %2048, float %2053
  %2055 = fadd fast float %2054, %2050
  %2056 = fsub fast float %2045, %1679
  %2057 = fmul fast float %2056, %1899
  %2058 = fadd fast float %2057, %1679
  %2059 = fmul fast float %2055, %1899
  %2060 = call float @dx.op.binary.f32(i32 35, float %1678, float %2059)  ; FMax(a,b)
  %2061 = and i32 %1753, 16
  %2062 = icmp eq i32 %2061, 0
  br i1 %2062, label %2085, label %2063

; <label>:2063                                    ; preds = %2002
  %2064 = bitcast float %1747 to i32
  %2065 = add i32 %1744, 0
  %2066 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2065, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2067 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2066, %dx.types.Handle %1912, float %1840, float %1843, float undef, float undef, i32 0, i32 0, i32 undef, float %1845, float %1847, float undef, float %1849, float %1851, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2068 = extractvalue %dx.types.ResRet.f32 %2067, 0
  %2069 = extractvalue %dx.types.ResRet.f32 %2067, 1
  %2070 = extractvalue %dx.types.ResRet.f32 %2067, 2
  %2071 = and i32 %2064, 65535
  %2072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2071)  ; LegacyF16ToF32(value)
  %2073 = fmul fast float %2068, %1738
  %2074 = fmul fast float %2069, %1739
  %2075 = fmul fast float %2070, %1740
  %2076 = and i32 %1753, 16384
  %2077 = icmp ne i32 %2076, 0
  %2078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2079 = extractvalue %dx.types.CBufRet.f32 %2078, 0
  %2080 = select i1 %2077, float %2079, float 1.000000e+00
  %2081 = fmul fast float %2080, %2072
  %2082 = fmul fast float %2073, %2081
  %2083 = fmul fast float %2074, %2081
  %2084 = fmul fast float %2075, %2081
  br label %2085

; <label>:2085                                    ; preds = %2063, %2002
  %2086 = phi float [ %2082, %2063 ], [ 0.000000e+00, %2002 ]
  %2087 = phi float [ %2083, %2063 ], [ 0.000000e+00, %2002 ]
  %2088 = phi float [ %2084, %2063 ], [ 0.000000e+00, %2002 ]
  %2089 = fsub fast float %2086, %1682
  %2090 = fsub fast float %2087, %1683
  %2091 = fsub fast float %2088, %1684
  %2092 = fmul fast float %2089, %1899
  %2093 = fmul fast float %2090, %1899
  %2094 = fmul fast float %2091, %1899
  %2095 = fadd fast float %2092, %1682
  %2096 = fadd fast float %2093, %1683
  %2097 = fadd fast float %2094, %1684
  br label %1802

; <label>:2098                                    ; preds = %1802
  br label %2099

; <label>:2099                                    ; preds = %2098, %1580
  %2100 = phi float [ 0.000000e+00, %1580 ], [ %1803, %2098 ]
  %2101 = phi float [ %1594, %1580 ], [ %1804, %2098 ]
  %2102 = phi float [ %1592, %1580 ], [ %1805, %2098 ]
  %2103 = phi float [ 0.000000e+00, %1580 ], [ %1806, %2098 ]
  %2104 = phi float [ 0.000000e+00, %1580 ], [ %1807, %2098 ]
  %2105 = phi float [ %1586, %1580 ], [ %1808, %2098 ]
  %2106 = phi float [ %1587, %1580 ], [ %1809, %2098 ]
  %2107 = phi float [ %1588, %1580 ], [ %1810, %2098 ]
  %2108 = phi float [ %1620, %1580 ], [ %1811, %2098 ]
  %2109 = phi float [ %1621, %1580 ], [ %1812, %2098 ]
  %2110 = phi float [ %1622, %1580 ], [ %1813, %2098 ]
  %2111 = phi float [ %1591, %1580 ], [ %1814, %2098 ]
  %2112 = phi float [ %1590, %1580 ], [ %1815, %2098 ]
  %2113 = phi float [ 0.000000e+00, %1580 ], [ %1816, %2098 ]
  %2114 = phi float [ %1589, %1580 ], [ %1817, %2098 ]
  %2115 = phi float [ %1583, %1580 ], [ %1818, %2098 ]
  %2116 = phi float [ %1584, %1580 ], [ %1819, %2098 ]
  %2117 = phi float [ %1585, %1580 ], [ %1820, %2098 ]
  %2118 = call float @dx.op.dot3.f32(i32 55, float %2108, float %2109, float %2110, float %2108, float %2109, float %2110)  ; Dot3(ax,ay,az,bx,by,bz)
  %2119 = call float @dx.op.unary.f32(i32 25, float %2118)  ; Rsqrt(value)
  %2120 = fmul fast float %2119, %2108
  %2121 = fmul fast float %2119, %2109
  %2122 = fmul fast float %2119, %2110
  %2123 = fadd fast float %2113, %747
  %2124 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  %2125 = call float @dx.op.dot3.f32(i32 55, float %2120, float %2121, float %2122, float %2120, float %2121, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %2126 = call float @dx.op.unary.f32(i32 25, float %2125)  ; Rsqrt(value)
  %2127 = fmul fast float %2126, %2120
  %2128 = fmul fast float %2126, %2121
  %2129 = fmul fast float %2126, %2122
  %2130 = fadd fast float %2114, 0xBFB99999A0000000
  %2131 = call float @dx.op.unary.f32(i32 7, float %2130)  ; Saturate(value)
  %2132 = fmul fast float %2131, 0x3FF1C71C80000000
  %2133 = call float @dx.op.binary.f32(i32 36, float %2114, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2134 = fsub fast float 1.000000e+00, %2132
  %2135 = call float @dx.op.unary.f32(i32 7, float %2134)  ; Saturate(value)
  %2136 = fmul fast float %2135, %2115
  %2137 = fmul fast float %2135, %2116
  %2138 = fmul fast float %2135, %2117
  %2139 = call float @dx.op.unary.f32(i32 7, float %2136)  ; Saturate(value)
  %2140 = call float @dx.op.unary.f32(i32 7, float %2137)  ; Saturate(value)
  %2141 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  %2142 = fmul fast float %2132, %2115
  %2143 = fmul fast float %2132, %2116
  %2144 = fmul fast float %2132, %2117
  %2145 = fadd fast float %2142, %2133
  %2146 = fadd fast float %2143, %2133
  %2147 = fadd fast float %2144, %2133
  %2148 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2149 = call float @dx.op.unary.f32(i32 7, float %2146)  ; Saturate(value)
  %2150 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2151 = call float @dx.op.unary.f32(i32 7, float %2112)  ; Saturate(value)
  %2152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2153 = extractvalue %dx.types.CBufRet.i32 %2152, 3
  %2154 = and i32 %2153, 8
  %2155 = icmp ne i32 %2154, 0
  %2156 = call float @dx.op.binary.f32(i32 35, float %2139, float %2115)  ; FMax(a,b)
  %2157 = call float @dx.op.binary.f32(i32 35, float %2140, float %2115)  ; FMax(a,b)
  %2158 = call float @dx.op.binary.f32(i32 35, float %2141, float %2115)  ; FMax(a,b)
  %2159 = call float @dx.op.dot3.f32(i32 55, float %2139, float %2140, float %2141, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2160 = select i1 %188, float %2115, float %2139
  %2161 = select i1 %188, float %2159, float %2140
  %2162 = select i1 %188, float 1.000000e+00, float %2141
  %2163 = select i1 %2155, float %2156, float %2160
  %2164 = select i1 %2155, float %2157, float %2161
  %2165 = select i1 %2155, float %2158, float %2162
  %2166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2167 = extractvalue %dx.types.CBufRet.f32 %2166, 0
  %2168 = extractvalue %dx.types.CBufRet.f32 %2166, 1
  %2169 = extractvalue %dx.types.CBufRet.f32 %2166, 2
  %2170 = fadd fast float %2167, %117
  %2171 = fadd fast float %2168, %118
  %2172 = fadd fast float %2169, %119
  %2173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2174 = extractvalue %dx.types.CBufRet.f32 %2173, 0
  %2175 = extractvalue %dx.types.CBufRet.f32 %2173, 1
  %2176 = fsub fast float %2170, %2174
  %2177 = fsub fast float %2171, %2175
  %2178 = fmul fast float %2176, %2176
  %2179 = fmul fast float %2177, %2177
  %2180 = fadd fast float %2178, %2179
  %2181 = call float @dx.op.unary.f32(i32 24, float %2180)  ; Sqrt(value)
  %2182 = extractvalue %dx.types.CBufRet.f32 %2173, 2
  %2183 = fcmp fast olt float %2181, %2182
  br i1 %2183, label %2184, label %2251

; <label>:2184                                    ; preds = %2099
  %2185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2186 = extractvalue %dx.types.CBufRet.f32 %2185, 0
  %2187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2188 = extractvalue %dx.types.CBufRet.f32 %2187, 0
  %2189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2190 = extractvalue %dx.types.CBufRet.f32 %2189, 0
  %2191 = extractvalue %dx.types.CBufRet.f32 %2185, 1
  %2192 = extractvalue %dx.types.CBufRet.f32 %2187, 1
  %2193 = extractvalue %dx.types.CBufRet.f32 %2189, 1
  %2194 = extractvalue %dx.types.CBufRet.f32 %2185, 3
  %2195 = extractvalue %dx.types.CBufRet.f32 %2187, 3
  %2196 = extractvalue %dx.types.CBufRet.f32 %2189, 3
  %2197 = fadd fast float %2194, %2170
  %2198 = fadd fast float %2195, %2171
  %2199 = fadd fast float %2196, %2172
  %2200 = fmul fast float %2197, %2186
  %2201 = call float @dx.op.tertiary.f32(i32 46, float %2198, float %2188, float %2200)  ; FMad(a,b,c)
  %2202 = call float @dx.op.tertiary.f32(i32 46, float %2199, float %2190, float %2201)  ; FMad(a,b,c)
  %2203 = fmul fast float %2197, %2191
  %2204 = call float @dx.op.tertiary.f32(i32 46, float %2198, float %2192, float %2203)  ; FMad(a,b,c)
  %2205 = call float @dx.op.tertiary.f32(i32 46, float %2199, float %2193, float %2204)  ; FMad(a,b,c)
  %2206 = fsub fast float %2202, %2194
  %2207 = fsub fast float %2205, %2195
  %2208 = fsub fast float %2206, %2174
  %2209 = fadd fast float %2208, %2182
  %2210 = fsub fast float %2207, %2175
  %2211 = fadd fast float %2210, %2182
  %2212 = extractvalue %dx.types.CBufRet.f32 %2173, 3
  %2213 = fmul fast float %2209, %2212
  %2214 = fmul fast float %2211, %2212
  %2215 = call float @dx.op.unary.f32(i32 7, float %2213)  ; Saturate(value)
  %2216 = call float @dx.op.unary.f32(i32 7, float %2214)  ; Saturate(value)
  %2217 = fsub fast float 1.000000e+00, %2215
  %2218 = fsub fast float 1.000000e+00, %2216
  %2219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %2217, float %2218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2220 = extractvalue %dx.types.ResRet.f32 %2219, 0
  %2221 = fcmp fast ugt float %2220, 0.000000e+00
  br i1 %2221, label %2222, label %2525

; <label>:2222                                    ; preds = %2184
  %2223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2224 = extractvalue %dx.types.CBufRet.f32 %2223, 2
  %2225 = fmul fast float %2224, %2220
  %2226 = extractvalue %dx.types.CBufRet.f32 %2223, 3
  %2227 = fadd fast float %2226, %2225
  %2228 = extractvalue %dx.types.CBufRet.f32 %2189, 2
  %2229 = fadd fast float %2227, %2196
  %2230 = fmul fast float %2202, %2190
  %2231 = call float @dx.op.tertiary.f32(i32 46, float %2205, float %2193, float %2230)  ; FMad(a,b,c)
  %2232 = call float @dx.op.tertiary.f32(i32 46, float %2229, float %2228, float %2231)  ; FMad(a,b,c)
  %2233 = fsub fast float %2232, %2196
  %2234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2235 = extractvalue %dx.types.CBufRet.f32 %2234, 2
  %2236 = fsub fast float %2233, %2235
  %2237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %2217, float %2218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2238 = extractvalue %dx.types.ResRet.f32 %2237, 0
  %2239 = extractvalue %dx.types.ResRet.f32 %2237, 1
  %2240 = extractvalue %dx.types.ResRet.f32 %2237, 2
  %2241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %2217, float %2218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2242 = extractvalue %dx.types.ResRet.f32 %2241, 0
  %2243 = extractvalue %dx.types.ResRet.f32 %2241, 1
  %2244 = extractvalue %dx.types.ResRet.f32 %2241, 2
  %2245 = fadd fast float %2242, %2238
  %2246 = fmul fast float %2245, 0x3F847AE140000000
  %2247 = fadd fast float %2243, %2239
  %2248 = fmul fast float %2247, 0x3F847AE140000000
  %2249 = fadd fast float %2244, %2240
  %2250 = fmul fast float %2249, 0x3F847AE140000000
  br label %2525

; <label>:2251                                    ; preds = %2099
  %2252 = and i32 %164, 1
  %2253 = icmp eq i32 %2252, 0
  br i1 %2253, label %2525, label %2254

; <label>:2254                                    ; preds = %2251
  %2255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2256 = extractvalue %dx.types.CBufRet.f32 %2255, 0
  %2257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2258 = extractvalue %dx.types.CBufRet.f32 %2257, 0
  %2259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2260 = extractvalue %dx.types.CBufRet.f32 %2259, 0
  %2261 = extractvalue %dx.types.CBufRet.f32 %2255, 1
  %2262 = extractvalue %dx.types.CBufRet.f32 %2257, 1
  %2263 = extractvalue %dx.types.CBufRet.f32 %2259, 1
  %2264 = extractvalue %dx.types.CBufRet.f32 %2255, 3
  %2265 = extractvalue %dx.types.CBufRet.f32 %2257, 3
  %2266 = extractvalue %dx.types.CBufRet.f32 %2259, 3
  %2267 = fadd fast float %2264, %2170
  %2268 = fadd fast float %2265, %2171
  %2269 = fadd fast float %2266, %2172
  %2270 = fmul fast float %2267, %2256
  %2271 = call float @dx.op.tertiary.f32(i32 46, float %2268, float %2258, float %2270)  ; FMad(a,b,c)
  %2272 = call float @dx.op.tertiary.f32(i32 46, float %2269, float %2260, float %2271)  ; FMad(a,b,c)
  %2273 = fmul fast float %2267, %2261
  %2274 = call float @dx.op.tertiary.f32(i32 46, float %2268, float %2262, float %2273)  ; FMad(a,b,c)
  %2275 = call float @dx.op.tertiary.f32(i32 46, float %2269, float %2263, float %2274)  ; FMad(a,b,c)
  %2276 = fsub fast float %2272, %2264
  %2277 = fsub fast float %2275, %2265
  %2278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2279 = extractvalue %dx.types.CBufRet.f32 %2278, 0
  %2280 = extractvalue %dx.types.CBufRet.f32 %2278, 1
  %2281 = extractvalue %dx.types.CBufRet.f32 %2278, 2
  %2282 = extractvalue %dx.types.CBufRet.f32 %2278, 3
  %2283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2284 = extractvalue %dx.types.CBufRet.f32 %2283, 3
  %2285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2286 = extractvalue %dx.types.CBufRet.i32 %2285, 0
  %2287 = extractvalue %dx.types.CBufRet.i32 %2285, 1
  %2288 = udiv i32 %2287, %2286
  %2289 = fsub fast float %2276, %2279
  %2290 = fsub fast float %2277, %2280
  %2291 = call float @dx.op.binary.f32(i32 35, float %2289, float 0.000000e+00)  ; FMax(a,b)
  %2292 = call float @dx.op.binary.f32(i32 35, float %2290, float 0.000000e+00)  ; FMax(a,b)
  %2293 = call float @dx.op.binary.f32(i32 36, float %2291, float %2281)  ; FMin(a,b)
  %2294 = call float @dx.op.binary.f32(i32 36, float %2292, float %2282)  ; FMin(a,b)
  %2295 = add i32 %2286, -1
  %2296 = add i32 %2288, -1
  %2297 = fmul fast float %2293, %2284
  %2298 = fmul fast float %2294, %2284
  %2299 = fptoui float %2297 to i32
  %2300 = fptoui float %2298 to i32
  %2301 = call i32 @dx.op.binary.i32(i32 40, i32 %2299, i32 %2295)  ; UMin(a,b)
  %2302 = call i32 @dx.op.binary.i32(i32 40, i32 %2300, i32 %2296)  ; UMin(a,b)
  %2303 = mul i32 %2302, %2286
  %2304 = add i32 %2303, %2301
  %2305 = shl i32 %2304, 2
  %2306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2307 = extractvalue %dx.types.ResRet.i32 %2306, 0
  %2308 = icmp eq i32 %2307, -1
  br i1 %2308, label %2525, label %2309

; <label>:2309                                    ; preds = %2254
  %2310 = mul i32 %2307, 148
  %2311 = add i32 %2310, 4
  %2312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.f32 %2312, 0
  %2314 = add i32 %2310, 8
  %2315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.f32 %2315, 0
  %2317 = add i32 %2310, 36
  %2318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.f32 %2318, 0
  %2320 = add i32 %2310, 60
  %2321 = add i32 %2310, 92
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = add i32 %2310, 116
  %2325 = fsub fast float %2276, %2313
  %2326 = fsub fast float %2277, %2316
  %2327 = fmul fast float %2284, %2325
  %2328 = fmul fast float %2284, %2326
  %2329 = call float @dx.op.unary.f32(i32 7, float %2327)  ; Saturate(value)
  %2330 = call float @dx.op.unary.f32(i32 7, float %2328)  ; Saturate(value)
  %2331 = fsub fast float 1.000000e+00, %2330
  %2332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2333 = extractvalue %dx.types.CBufRet.f32 %2332, 2
  %2334 = call float @dx.op.unary.f32(i32 83, float %2329)  ; DerivCoarseX(value)
  %2335 = call float @dx.op.unary.f32(i32 83, float %2331)  ; DerivCoarseX(value)
  %2336 = call float @dx.op.unary.f32(i32 84, float %2329)  ; DerivCoarseY(value)
  %2337 = call float @dx.op.unary.f32(i32 84, float %2331)  ; DerivCoarseY(value)
  %2338 = fmul fast float %2334, %2333
  %2339 = fmul fast float %2335, %2333
  %2340 = fmul fast float %2336, %2333
  %2341 = fmul fast float %2337, %2333
  %2342 = call float @dx.op.dot2.f32(i32 54, float %2340, float %2341, float %2340, float %2341)  ; Dot2(ax,ay,bx,by)
  %2343 = call float @dx.op.dot2.f32(i32 54, float %2338, float %2339, float %2338, float %2339)  ; Dot2(ax,ay,bx,by)
  %2344 = call float @dx.op.binary.f32(i32 35, float %2343, float %2342)  ; FMax(a,b)
  %2345 = call float @dx.op.unary.f32(i32 23, float %2344)  ; Log(value)
  %2346 = fmul fast float %2345, 5.000000e-01
  %2347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2348 = extractvalue %dx.types.CBufRet.f32 %2347, 1
  %2349 = fadd fast float %2348, %2346
  %2350 = call float @dx.op.binary.f32(i32 35, float %2349, float 0.000000e+00)  ; FMax(a,b)
  %2351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2352 = extractvalue %dx.types.CBufRet.f32 %2351, 3
  %2353 = fadd fast float %2352, %2350
  %2354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2355 = extractvalue %dx.types.CBufRet.f32 %2354, 3
  %2356 = fadd fast float %2353, %2355
  %2357 = add i32 %2323, 0
  %2358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2357, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2359 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2358, i32 0)  ; GetDimensions(handle,mipLevel)
  %2360 = extractvalue %dx.types.Dimensions %2359, 0
  %2361 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2360)  ; FirstbitLo(value)
  %2362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2363 = extractvalue %dx.types.CBufRet.i32 %2362, 1
  %2364 = sub nsw i32 %2363, %2361
  %2365 = sitofp i32 %2364 to float
  %2366 = fsub fast float %2356, %2365
  %2367 = call float @dx.op.binary.f32(i32 35, float %2366, float 0.000000e+00)  ; FMax(a,b)
  %2368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2358, %dx.types.Handle %37, float %2329, float %2331, float %2319, float undef, i32 0, i32 0, i32 undef, float %2367)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2369 = extractvalue %dx.types.ResRet.f32 %2368, 0
  %2370 = fcmp ule float %2369, 0x3FE0101020000000
  %2371 = extractvalue %dx.types.CBufRet.i32 %2362, 0
  %2372 = and i32 %2371, 128
  %2373 = icmp ne i32 %2372, 0
  %2374 = and i1 %2370, %2373
  br i1 %2374, label %2525, label %2375

; <label>:2375                                    ; preds = %2309
  %2376 = add i32 %2310, 20
  %2377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2376, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.f32 %2377, 0
  %2379 = add i32 %2310, 24
  %2380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2379, i32 undef)  ; BufferLoad(srv,index,wot)
  %2381 = extractvalue %dx.types.ResRet.f32 %2380, 0
  %2382 = add i32 %2310, 40
  %2383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.f32 %2383, 0
  %2385 = add i32 %2310, 96
  %2386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2387 = extractvalue %dx.types.ResRet.i32 %2386, 0
  %2388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2389 = extractvalue %dx.types.CBufRet.f32 %2388, 2
  %2390 = fmul fast float %2389, %2329
  %2391 = fmul fast float %2389, %2331
  %2392 = extractvalue %dx.types.CBufRet.f32 %2388, 3
  %2393 = fadd fast float %2390, %2392
  %2394 = fadd fast float %2391, %2392
  %2395 = add i32 %2387, 0
  %2396 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2395, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2397 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2396, i32 0)  ; GetDimensions(handle,mipLevel)
  %2398 = extractvalue %dx.types.Dimensions %2397, 0
  %2399 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2398)  ; FirstbitLo(value)
  %2400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2401 = extractvalue %dx.types.CBufRet.i32 %2400, 1
  %2402 = sub nsw i32 %2401, %2399
  %2403 = sitofp i32 %2402 to float
  %2404 = fsub fast float %2353, %2403
  %2405 = call float @dx.op.binary.f32(i32 35, float %2404, float 0.000000e+00)  ; FMax(a,b)
  %2406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2396, %dx.types.Handle %37, float %2393, float %2394, float %2384, float undef, i32 0, i32 0, i32 undef, float %2405)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2407 = extractvalue %dx.types.ResRet.f32 %2406, 0
  %2408 = fmul fast float %2407, %2378
  %2409 = fadd fast float %2408, %2381
  %2410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2411 = extractvalue %dx.types.CBufRet.f32 %2410, 0
  %2412 = extractvalue %dx.types.CBufRet.f32 %2410, 1
  %2413 = extractvalue %dx.types.CBufRet.f32 %2410, 2
  %2414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2415 = extractvalue %dx.types.CBufRet.f32 %2414, 3
  %2416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2417 = extractvalue %dx.types.CBufRet.f32 %2416, 3
  %2418 = extractvalue %dx.types.CBufRet.f32 %2410, 3
  %2419 = fadd fast float %2415, %2276
  %2420 = fadd fast float %2417, %2277
  %2421 = fadd fast float %2409, %2418
  %2422 = fmul fast float %2419, %2411
  %2423 = call float @dx.op.tertiary.f32(i32 46, float %2420, float %2412, float %2422)  ; FMad(a,b,c)
  %2424 = call float @dx.op.tertiary.f32(i32 46, float %2421, float %2413, float %2423)  ; FMad(a,b,c)
  %2425 = fsub fast float %2424, %2418
  %2426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2427 = extractvalue %dx.types.CBufRet.f32 %2426, 2
  %2428 = fsub fast float %2425, %2427
  %2429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2430 = extractvalue %dx.types.CBufRet.i32 %2429, 0
  %2431 = call i32 @dx.op.binary.i32(i32 40, i32 %2307, i32 %2430)  ; UMin(a,b)
  %2432 = mul i32 %2431, 36
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = add i32 %2432, 4
  %2436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2437 = extractvalue %dx.types.CBufRet.f32 %2436, 0
  %2438 = fmul fast float %2437, %2329
  %2439 = fmul fast float %2437, %2331
  %2440 = extractvalue %dx.types.CBufRet.f32 %2436, 1
  %2441 = fadd fast float %2438, %2440
  %2442 = fadd fast float %2439, %2440
  %2443 = icmp eq i32 %2434, 0
  br i1 %2443, label %2512, label %2444

; <label>:2444                                    ; preds = %2375
  br label %2445

; <label>:2445                                    ; preds = %2502, %2444
  %2446 = phi float [ %2503, %2502 ], [ 0.000000e+00, %2444 ]
  %2447 = phi float [ %2504, %2502 ], [ 0.000000e+00, %2444 ]
  %2448 = phi float [ %2505, %2502 ], [ 0.000000e+00, %2444 ]
  %2449 = phi float [ %2506, %2502 ], [ 0.000000e+00, %2444 ]
  %2450 = phi float [ %2507, %2502 ], [ 0.000000e+00, %2444 ]
  %2451 = phi float [ %2508, %2502 ], [ 0.000000e+00, %2444 ]
  %2452 = phi i32 [ %2509, %2502 ], [ 0, %2444 ]
  %2453 = shl i32 %2452, 2
  %2454 = add i32 %2320, %2453
  %2455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2454, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.f32 %2455, 0
  %2457 = add i32 %2324, %2453
  %2458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.i32 %2458, 0
  %2460 = add i32 %2459, 0
  %2461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2460, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2462 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2461, i32 0)  ; GetDimensions(handle,mipLevel)
  %2463 = extractvalue %dx.types.Dimensions %2462, 0
  %2464 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2463)  ; FirstbitLo(value)
  %2465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2466 = extractvalue %dx.types.CBufRet.i32 %2465, 1
  %2467 = sub nsw i32 %2466, %2464
  %2468 = sitofp i32 %2467 to float
  %2469 = fsub fast float %2353, %2468
  %2470 = call float @dx.op.binary.f32(i32 35, float %2469, float 0.000000e+00)  ; FMax(a,b)
  %2471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2461, %dx.types.Handle %37, float %2441, float %2442, float %2456, float undef, i32 0, i32 0, i32 undef, float %2470)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2472 = extractvalue %dx.types.ResRet.f32 %2471, 0
  %2473 = fcmp fast ogt float %2472, 0.000000e+00
  br i1 %2473, label %2474, label %2502

; <label>:2474                                    ; preds = %2445
  %2475 = add i32 %2435, %2453
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2475, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = and i32 %2477, 32767
  %2479 = mul nuw nsw i32 %2478, 928
  %2480 = add nuw nsw i32 %2479, 48
  %2481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2480, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.f32 %2481, 0
  %2483 = extractvalue %dx.types.ResRet.f32 %2481, 1
  %2484 = extractvalue %dx.types.ResRet.f32 %2481, 2
  %2485 = add nuw nsw i32 %2479, 60
  %2486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.f32 %2486, 0
  %2488 = extractvalue %dx.types.ResRet.f32 %2486, 1
  %2489 = extractvalue %dx.types.ResRet.f32 %2486, 2
  %2490 = fmul fast float %2482, %2472
  %2491 = fmul fast float %2483, %2472
  %2492 = fmul fast float %2484, %2472
  %2493 = fadd fast float %2490, %2446
  %2494 = fadd fast float %2491, %2447
  %2495 = fadd fast float %2492, %2448
  %2496 = fmul fast float %2487, %2472
  %2497 = fmul fast float %2488, %2472
  %2498 = fmul fast float %2489, %2472
  %2499 = fadd fast float %2496, %2449
  %2500 = fadd fast float %2497, %2450
  %2501 = fadd fast float %2498, %2451
  br label %2502

; <label>:2502                                    ; preds = %2474, %2445
  %2503 = phi float [ %2493, %2474 ], [ %2446, %2445 ]
  %2504 = phi float [ %2494, %2474 ], [ %2447, %2445 ]
  %2505 = phi float [ %2495, %2474 ], [ %2448, %2445 ]
  %2506 = phi float [ %2499, %2474 ], [ %2449, %2445 ]
  %2507 = phi float [ %2500, %2474 ], [ %2450, %2445 ]
  %2508 = phi float [ %2501, %2474 ], [ %2451, %2445 ]
  %2509 = add nuw i32 %2452, 1
  %2510 = icmp eq i32 %2509, %2434
  br i1 %2510, label %2511, label %2445

; <label>:2511                                    ; preds = %2502
  br label %2512

; <label>:2512                                    ; preds = %2511, %2375
  %2513 = phi float [ 0.000000e+00, %2375 ], [ %2503, %2511 ]
  %2514 = phi float [ 0.000000e+00, %2375 ], [ %2504, %2511 ]
  %2515 = phi float [ 0.000000e+00, %2375 ], [ %2505, %2511 ]
  %2516 = phi float [ 0.000000e+00, %2375 ], [ %2506, %2511 ]
  %2517 = phi float [ 0.000000e+00, %2375 ], [ %2507, %2511 ]
  %2518 = phi float [ 0.000000e+00, %2375 ], [ %2508, %2511 ]
  %2519 = fadd fast float %2516, %2513
  %2520 = fmul fast float %2519, 0x3F847AE140000000
  %2521 = fadd fast float %2517, %2514
  %2522 = fmul fast float %2521, 0x3F847AE140000000
  %2523 = fadd fast float %2518, %2515
  %2524 = fmul fast float %2523, 0x3F847AE140000000
  br label %2525

; <label>:2525                                    ; preds = %2512, %2309, %2254, %2251, %2222, %2184
  %2526 = phi float [ %2236, %2222 ], [ -1.310720e+05, %2184 ], [ %2428, %2512 ], [ -1.310720e+05, %2254 ], [ -1.310720e+05, %2309 ], [ -1.310720e+05, %2251 ]
  %2527 = phi float [ %2246, %2222 ], [ 0.000000e+00, %2184 ], [ %2520, %2512 ], [ 0.000000e+00, %2254 ], [ 0.000000e+00, %2309 ], [ 0.000000e+00, %2251 ]
  %2528 = phi float [ %2248, %2222 ], [ 0.000000e+00, %2184 ], [ %2522, %2512 ], [ 0.000000e+00, %2254 ], [ 0.000000e+00, %2309 ], [ 0.000000e+00, %2251 ]
  %2529 = phi float [ %2250, %2222 ], [ 0.000000e+00, %2184 ], [ %2524, %2512 ], [ 0.000000e+00, %2254 ], [ 0.000000e+00, %2309 ], [ 0.000000e+00, %2251 ]
  %2530 = phi i1 [ true, %2222 ], [ false, %2184 ], [ true, %2512 ], [ false, %2254 ], [ false, %2309 ], [ false, %2251 ]
  %2531 = and i32 %164, 3
  %2532 = icmp eq i32 %2531, 1
  %2533 = select i1 %2532, float 1.000000e+00, float 0.000000e+00
  %2534 = fsub fast float %2526, %119
  %2535 = call float @dx.op.unary.f32(i32 7, float %2534)  ; Saturate(value)
  %2536 = select i1 %2530, float %2535, float 1.000000e+00
  %2537 = fmul fast float %2536, %2533
  %2538 = icmp eq i32 %2531, 3
  %2539 = select i1 %2538, float 1.000000e+00, float %2537
  %2540 = call float @dx.op.binary.f32(i32 35, float %2100, float %2539)  ; FMax(a,b)
  %2541 = call float @dx.op.unary.f32(i32 7, float %2540)  ; Saturate(value)
  %2542 = fcmp fast une float %2541, 0.000000e+00
  %2543 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %2544 = call float @dx.op.unary.f32(i32 25, float %2543)  ; Rsqrt(value)
  br i1 %2542, label %2552, label %2545

; <label>:2545                                    ; preds = %2525
  %2546 = fmul fast float %2544, %117
  %2547 = fmul fast float %2544, %118
  %2548 = fmul fast float %2544, %119
  %2549 = fsub fast float -0.000000e+00, %2546
  %2550 = fsub fast float -0.000000e+00, %2547
  %2551 = fsub fast float -0.000000e+00, %2548
  br label %2720

; <label>:2552                                    ; preds = %2525
  %2553 = fmul fast float %117, %2544
  %2554 = fsub fast float -0.000000e+00, %2553
  %2555 = fmul fast float %118, %2544
  %2556 = fsub fast float -0.000000e+00, %2555
  %2557 = fmul fast float %119, %2544
  %2558 = fsub fast float -0.000000e+00, %2557
  %2559 = call float @dx.op.dot3.f32(i32 55, float %2554, float %2556, float %2558, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %2560 = fmul fast float %2541, 2.500000e+00
  %2561 = call float @dx.op.unary.f32(i32 7, float %2560)  ; Saturate(value)
  %2562 = fmul fast float %2541, 0x4013FFFFE0000000
  %2563 = fadd fast float %2562, 0xBFFFFFFFE0000000
  %2564 = call float @dx.op.unary.f32(i32 7, float %2563)  ; Saturate(value)
  %2565 = fmul fast float %2541, 0x4004000020000000
  %2566 = fadd fast float %2565, 0xBFF8000040000000
  %2567 = call float @dx.op.unary.f32(i32 7, float %2566)  ; Saturate(value)
  %2568 = call float @dx.op.unary.f32(i32 7, float %2561)  ; Saturate(value)
  %2569 = fmul fast float %2130, 1.000000e+01
  %2570 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  %2571 = fmul fast float %2570, 2.000000e+00
  %2572 = fsub fast float 3.000000e+00, %2571
  %2573 = fmul fast float %2570, %2570
  %2574 = fmul fast float %2573, %2572
  %2575 = fsub fast float 1.000000e+00, %2574
  %2576 = fsub fast float 0x3FE3333340000000, %2151
  %2577 = fmul fast float %2576, 0x400AAAAAA0000000
  %2578 = call float @dx.op.unary.f32(i32 7, float %2577)  ; Saturate(value)
  %2579 = fmul fast float %2575, %2578
  %2580 = fmul fast float %2163, 0x3FEA2B8620000000
  %2581 = fmul fast float %2164, 0x3FEA2B8620000000
  %2582 = fmul fast float %2165, 0x3FEA2B8620000000
  %2583 = fadd fast float %2580, 0x3FC81DFBA0000000
  %2584 = fmul fast float %2583, %2163
  %2585 = fadd fast float %2584, 0x3F910E6020000000
  %2586 = fadd fast float %2581, 0x3FC81DFBA0000000
  %2587 = fmul fast float %2586, %2164
  %2588 = fadd fast float %2587, 0x3F910E6020000000
  %2589 = fadd fast float %2582, 0x3FC81DFBA0000000
  %2590 = fmul fast float %2589, %2165
  %2591 = fadd fast float %2590, 0x3F910E6020000000
  %2592 = call float @dx.op.unary.f32(i32 7, float %2585)  ; Saturate(value)
  %2593 = call float @dx.op.unary.f32(i32 7, float %2588)  ; Saturate(value)
  %2594 = call float @dx.op.unary.f32(i32 7, float %2591)  ; Saturate(value)
  %2595 = fsub fast float %2592, %2163
  %2596 = fsub fast float %2593, %2164
  %2597 = fsub fast float %2594, %2165
  %2598 = fmul fast float %2595, %2568
  %2599 = fmul fast float %2598, %2579
  %2600 = fmul fast float %2596, %2568
  %2601 = fmul fast float %2600, %2579
  %2602 = fmul fast float %2597, %2568
  %2603 = fmul fast float %2602, %2579
  %2604 = fadd fast float %2599, %2163
  %2605 = fadd fast float %2601, %2164
  %2606 = fadd fast float %2603, %2165
  %2607 = fmul fast float %2111, %2111
  %2608 = fmul fast float %2607, %2607
  %2609 = fadd fast float %2564, 1.000000e+00
  %2610 = fsub fast float %2609, %2579
  %2611 = call float @dx.op.unary.f32(i32 7, float %2610)  ; Saturate(value)
  %2612 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2613 = call float @dx.op.unary.f32(i32 7, float %2612)  ; Saturate(value)
  %2614 = fsub fast float 1.000000e+00, %2608
  %2615 = call float @dx.op.binary.f32(i32 36, float %2611, float %2614)  ; FMin(a,b)
  %2616 = call float @dx.op.unary.f32(i32 7, float %2567)  ; Saturate(value)
  %2617 = call float @dx.op.binary.f32(i32 35, float %2615, float %2616)  ; FMax(a,b)
  %2618 = fadd fast float %2613, 0xBFE4CCCCC0000000
  %2619 = fmul fast float %2618, 0x4006DB6DA0000000
  %2620 = call float @dx.op.unary.f32(i32 7, float %2619)  ; Saturate(value)
  %2621 = fmul fast float %2620, 2.000000e+00
  %2622 = fsub fast float 3.000000e+00, %2621
  %2623 = bitcast float %2148 to i32
  %2624 = ashr i32 %2623, 1
  %2625 = add nsw i32 %2624, 532487669
  %2626 = bitcast i32 %2625 to float
  %2627 = fsub fast float 1.000000e+00, %2626
  %2628 = bitcast float %2627 to i32
  %2629 = sub nsw i32 2129859010, %2628
  %2630 = bitcast i32 %2629 to float
  %2631 = fmul fast float %2630, 2.000000e+00
  %2632 = bitcast float %2149 to i32
  %2633 = ashr i32 %2632, 1
  %2634 = add nsw i32 %2633, 532487669
  %2635 = bitcast i32 %2634 to float
  %2636 = fsub fast float 1.000000e+00, %2635
  %2637 = bitcast float %2636 to i32
  %2638 = sub nsw i32 2129859010, %2637
  %2639 = bitcast i32 %2638 to float
  %2640 = fmul fast float %2639, 2.000000e+00
  %2641 = bitcast float %2150 to i32
  %2642 = ashr i32 %2641, 1
  %2643 = add nsw i32 %2642, 532487669
  %2644 = bitcast i32 %2643 to float
  %2645 = fsub fast float 1.000000e+00, %2644
  %2646 = bitcast float %2645 to i32
  %2647 = sub nsw i32 2129859010, %2646
  %2648 = bitcast i32 %2647 to float
  %2649 = fmul fast float %2648, 2.000000e+00
  %2650 = fsub fast float 0x4002A9FBE0000000, %2631
  %2651 = fadd fast float %2631, 0x3FD54FDF00000000
  %2652 = bitcast float %2651 to i32
  %2653 = sub nsw i32 2129859010, %2652
  %2654 = bitcast i32 %2653 to float
  %2655 = fmul fast float %2654, %2650
  %2656 = fmul fast float %2655, %2655
  %2657 = fsub fast float 0x4002A9FBE0000000, %2640
  %2658 = fadd fast float %2640, 0x3FD54FDF00000000
  %2659 = bitcast float %2658 to i32
  %2660 = sub nsw i32 2129859010, %2659
  %2661 = bitcast i32 %2660 to float
  %2662 = fmul fast float %2661, %2657
  %2663 = fmul fast float %2662, %2662
  %2664 = fsub fast float 0x4002A9FBE0000000, %2649
  %2665 = fadd fast float %2649, 0x3FD54FDF00000000
  %2666 = bitcast float %2665 to i32
  %2667 = sub nsw i32 2129859010, %2666
  %2668 = bitcast i32 %2667 to float
  %2669 = fmul fast float %2668, %2664
  %2670 = fmul fast float %2669, %2669
  %2671 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2656)  ; FMax(a,b)
  %2672 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2663)  ; FMax(a,b)
  %2673 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2670)  ; FMax(a,b)
  %2674 = fsub fast float 1.000000e+00, %2559
  %2675 = fadd fast float %2674, %2575
  %2676 = call float @dx.op.unary.f32(i32 7, float %2675)  ; Saturate(value)
  %2677 = fsub fast float 1.000000e+00, %2539
  %2678 = fmul fast float %2617, %2677
  %2679 = fmul fast float %2620, %2620
  %2680 = fmul fast float %2679, %2678
  %2681 = fmul fast float %2680, %2622
  %2682 = fmul fast float %2677, 0xBFE99999A0000000
  %2683 = fmul fast float %2682, %2568
  %2684 = fmul fast float %2683, %2579
  %2685 = fadd fast float %2684, 1.000000e+00
  %2686 = fadd fast float %2151, -1.000000e+00
  %2687 = fmul fast float %2685, %2686
  %2688 = fadd fast float %2687, 1.000000e+00
  %2689 = fsub fast float %2671, %2148
  %2690 = fsub fast float %2672, %2149
  %2691 = fsub fast float %2673, %2150
  %2692 = fmul fast float %2681, %2689
  %2693 = fmul fast float %2681, %2690
  %2694 = fmul fast float %2681, %2691
  %2695 = fadd fast float %2692, %2148
  %2696 = fadd fast float %2693, %2149
  %2697 = fadd fast float %2694, %2150
  %2698 = fsub fast float %53, %2127
  %2699 = fsub fast float %54, %2128
  %2700 = fsub fast float %55, %2129
  %2701 = fmul fast float %2681, %2698
  %2702 = fmul fast float %2681, %2699
  %2703 = fmul fast float %2681, %2700
  %2704 = fadd fast float %2701, %2127
  %2705 = fadd fast float %2702, %2128
  %2706 = fadd fast float %2703, %2129
  %2707 = fmul fast float %2681, %2676
  %2708 = call float @dx.op.unary.f32(i32 7, float %2688)  ; Saturate(value)
  %2709 = fsub fast float 1.000000e+00, %2708
  %2710 = fmul fast float %2707, %2709
  %2711 = fadd fast float %2710, %2708
  %2712 = fsub fast float 1.000000e+00, %2111
  %2713 = fmul fast float %2681, %2712
  %2714 = fadd fast float %2713, %2111
  %2715 = call float @dx.op.dot3.f32(i32 55, float %2704, float %2705, float %2706, float %2704, float %2705, float %2706)  ; Dot3(ax,ay,az,bx,by,bz)
  %2716 = call float @dx.op.unary.f32(i32 25, float %2715)  ; Rsqrt(value)
  %2717 = fmul fast float %2704, %2716
  %2718 = fmul fast float %2705, %2716
  %2719 = fmul fast float %2706, %2716
  br label %2720

; <label>:2720                                    ; preds = %2552, %2545
  %2721 = phi float [ %2551, %2545 ], [ %2558, %2552 ]
  %2722 = phi float [ %2550, %2545 ], [ %2556, %2552 ]
  %2723 = phi float [ %2549, %2545 ], [ %2554, %2552 ]
  %2724 = phi float [ %2548, %2545 ], [ %2557, %2552 ]
  %2725 = phi float [ %2547, %2545 ], [ %2555, %2552 ]
  %2726 = phi float [ %2546, %2545 ], [ %2553, %2552 ]
  %2727 = phi float [ %2148, %2545 ], [ %2695, %2552 ]
  %2728 = phi float [ %2149, %2545 ], [ %2696, %2552 ]
  %2729 = phi float [ %2150, %2545 ], [ %2697, %2552 ]
  %2730 = phi float [ %2127, %2545 ], [ %2717, %2552 ]
  %2731 = phi float [ %2128, %2545 ], [ %2718, %2552 ]
  %2732 = phi float [ %2129, %2545 ], [ %2719, %2552 ]
  %2733 = phi float [ %2163, %2545 ], [ %2604, %2552 ]
  %2734 = phi float [ %2164, %2545 ], [ %2605, %2552 ]
  %2735 = phi float [ %2165, %2545 ], [ %2606, %2552 ]
  %2736 = phi float [ %2151, %2545 ], [ %2711, %2552 ]
  %2737 = phi float [ %2111, %2545 ], [ %2714, %2552 ]
  %2738 = select i1 %188, float 0.000000e+00, float %2729
  %2739 = call float @dx.op.dot3.f32(i32 55, float %2730, float %2731, float %2732, float %2723, float %2722, float %2721)  ; Dot3(ax,ay,az,bx,by,bz)
  %2740 = call float @dx.op.unary.f32(i32 7, float %2739)  ; Saturate(value)
  %2741 = call float @dx.op.dot3.f32(i32 55, float %2726, float %2725, float %2724, float %2730, float %2731, float %2732)  ; Dot3(ax,ay,az,bx,by,bz)
  %2742 = fmul fast float %2741, 2.000000e+00
  %2743 = fmul fast float %2742, %2730
  %2744 = fmul fast float %2742, %2731
  %2745 = fmul fast float %2742, %2732
  %2746 = fsub fast float %2726, %2743
  %2747 = fsub fast float %2725, %2744
  %2748 = fsub fast float %2724, %2745
  %2749 = call float @dx.op.binary.f32(i32 36, float %2737, float 1.000000e+00)  ; FMin(a,b)
  %2750 = fsub fast float 1.000000e+00, %2737
  %2751 = bitcast float %2750 to i32
  %2752 = sub nsw i32 2129859010, %2751
  %2753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2754 = extractvalue %dx.types.CBufRet.f32 %2753, 0
  %2755 = extractvalue %dx.types.CBufRet.f32 %2753, 1
  %2756 = fadd fast float %2754, %117
  %2757 = fadd fast float %2755, %118
  %2758 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2759 = extractvalue %dx.types.CBufRet.i32 %2758, 0
  %2760 = icmp eq i32 %2759, 1
  br i1 %2760, label %2761, label %2796

; <label>:2761                                    ; preds = %2720
  %2762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2763 = extractvalue %dx.types.CBufRet.f32 %2762, 0
  %2764 = extractvalue %dx.types.CBufRet.f32 %2762, 1
  %2765 = fsub fast float %2756, %2763
  %2766 = fsub fast float %2757, %2764
  %2767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2768 = extractvalue %dx.types.CBufRet.f32 %2767, 0
  %2769 = extractvalue %dx.types.CBufRet.f32 %2767, 1
  %2770 = fmul fast float %2765, %2768
  %2771 = fmul fast float %2766, %2769
  %2772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %2770, float %2771, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2773 = extractvalue %dx.types.ResRet.f32 %2772, 0
  %2774 = fcmp fast ogt float %2773, 0.000000e+00
  %2775 = extractvalue %dx.types.CBufRet.i32 %2758, 3
  %2776 = icmp ne i32 %2775, 0
  %2777 = and i1 %2774, %2776
  br i1 %2777, label %2778, label %2796, !dx.controlflow.hints !79

; <label>:2778                                    ; preds = %2761
  %2779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2780 = extractvalue %dx.types.CBufRet.f32 %2779, 0
  %2781 = extractvalue %dx.types.CBufRet.f32 %2779, 1
  %2782 = fsub fast float %2756, %2780
  %2783 = fsub fast float %2757, %2781
  %2784 = fmul fast float %2782, %2782
  %2785 = fmul fast float %2783, %2783
  %2786 = fadd fast float %2784, %2785
  %2787 = uitofp i32 %2775 to float
  %2788 = fmul fast float %2787, %2787
  %2789 = fcmp fast ogt float %2786, %2788
  br i1 %2789, label %2796, label %2790

; <label>:2790                                    ; preds = %2778
  %2791 = call float @dx.op.unary.f32(i32 24, float %2786)  ; Sqrt(value)
  %2792 = fsub fast float %2787, %2791
  %2793 = fmul fast float %2792, 0x3F75555560000000
  %2794 = call float @dx.op.unary.f32(i32 7, float %2793)  ; Saturate(value)
  %2795 = call float @dx.op.binary.f32(i32 36, float %2794, float %2773)  ; FMin(a,b)
  br label %2796

; <label>:2796                                    ; preds = %2790, %2778, %2761, %2720
  %2797 = phi float [ 1.000000e+00, %2720 ], [ %2795, %2790 ], [ %2773, %2761 ], [ 0.000000e+00, %2778 ]
  %2798 = fcmp fast ogt float %2797, 0.000000e+00
  br i1 %2798, label %2799, label %2897, !dx.controlflow.hints !80

; <label>:2799                                    ; preds = %2796
  %2800 = fadd fast float %148, 5.000000e-01
  %2801 = call float @dx.op.unary.f32(i32 27, float %2800)  ; Round_ni(value)
  %2802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %146, float %147, float %2801, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2803 = extractvalue %dx.types.ResRet.f32 %2802, 0
  %2804 = extractvalue %dx.types.ResRet.f32 %2802, 1
  %2805 = extractvalue %dx.types.ResRet.f32 %2802, 2
  %2806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2807 = extractvalue %dx.types.CBufRet.f32 %2806, 3
  %2808 = fmul fast float %2807, %2803
  %2809 = fmul fast float %2807, %2804
  %2810 = fmul fast float %2807, %2805
  %2811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %146, float %147, float %2801, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2812 = extractvalue %dx.types.ResRet.f32 %2811, 0
  %2813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %146, float %147, float %2801, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2814 = extractvalue %dx.types.ResRet.f32 %2813, 0
  %2815 = extractvalue %dx.types.ResRet.f32 %2813, 1
  %2816 = fmul fast float %2814, 2.000000e+00
  %2817 = fmul fast float %2815, 2.000000e+00
  %2818 = fadd fast float %2816, -1.000000e+00
  %2819 = fadd fast float %2817, -1.000000e+00
  %2820 = fadd fast float %2818, %2819
  %2821 = fmul fast float %2820, 5.000000e-01
  %2822 = fsub fast float %2818, %2819
  %2823 = fmul fast float %2822, 5.000000e-01
  %2824 = call float @dx.op.unary.f32(i32 6, float %2821)  ; FAbs(value)
  %2825 = fsub fast float 1.000000e+00, %2824
  %2826 = call float @dx.op.unary.f32(i32 6, float %2823)  ; FAbs(value)
  %2827 = fsub fast float %2825, %2826
  %2828 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2827)  ; FMax(a,b)
  %2829 = call float @dx.op.dot3.f32(i32 55, float %2821, float %2823, float %2828, float %2821, float %2823, float %2828)  ; Dot3(ax,ay,az,bx,by,bz)
  %2830 = bitcast float %2829 to i32
  %2831 = ashr i32 %2830, 1
  %2832 = sub nsw i32 1597250115, %2831
  %2833 = bitcast i32 %2832 to float
  %2834 = fmul fast float %2833, %2821
  %2835 = fmul fast float %2833, %2823
  %2836 = fmul fast float %2833, %2828
  %2837 = fsub fast float 1.000000e+00, %2812
  %2838 = fdiv fast float %2837, %2836
  %2839 = fmul fast float %2836, %53
  %2840 = fmul fast float %2836, %54
  %2841 = fmul fast float %2836, %55
  %2842 = fmul fast float %2834, %49
  %2843 = fmul fast float %2834, %50
  %2844 = fmul fast float %2834, %51
  %2845 = fadd fast float %2839, %2842
  %2846 = fadd fast float %2840, %2843
  %2847 = fadd fast float %2841, %2844
  %2848 = fmul fast float %2835, %81
  %2849 = fmul fast float %2835, %82
  %2850 = fmul fast float %2835, %83
  %2851 = fadd fast float %2845, %2848
  %2852 = fadd fast float %2846, %2849
  %2853 = fadd fast float %2847, %2850
  %2854 = call float @dx.op.dot3.f32(i32 55, float %2851, float %2852, float %2853, float %2851, float %2852, float %2853)  ; Dot3(ax,ay,az,bx,by,bz)
  %2855 = call float @dx.op.unary.f32(i32 25, float %2854)  ; Rsqrt(value)
  %2856 = fmul fast float %2851, %2855
  %2857 = fmul fast float %2852, %2855
  %2858 = fmul fast float %2853, %2855
  %2859 = call float @dx.op.dot3.f32(i32 55, float %2730, float %2731, float %2732, float %2730, float %2731, float %2732)  ; Dot3(ax,ay,az,bx,by,bz)
  %2860 = call float @dx.op.unary.f32(i32 7, float %2859)  ; Saturate(value)
  %2861 = fmul fast float %2860, 5.000000e-01
  %2862 = fadd fast float %2861, 5.000000e-01
  %2863 = fmul fast float %2862, %2812
  %2864 = call float @dx.op.dot3.f32(i32 55, float %2730, float %2731, float %2732, float %2856, float %2857, float %2858)  ; Dot3(ax,ay,az,bx,by,bz)
  %2865 = call float @dx.op.unary.f32(i32 7, float %2864)  ; Saturate(value)
  %2866 = fmul fast float %2865, %2838
  %2867 = fadd fast float %2863, %2866
  %2868 = fsub fast float 5.000000e-01, %2861
  %2869 = fmul fast float %2868, %2733
  %2870 = fmul fast float %2868, %2734
  %2871 = fmul fast float %2868, %2735
  %2872 = fadd fast float %2867, %2869
  %2873 = fmul fast float %2872, %2808
  %2874 = fadd fast float %2867, %2870
  %2875 = fmul fast float %2874, %2809
  %2876 = fadd fast float %2867, %2871
  %2877 = fmul fast float %2876, %2810
  %2878 = call float @dx.op.dot3.f32(i32 55, float %2746, float %2747, float %2748, float %2730, float %2731, float %2732)  ; Dot3(ax,ay,az,bx,by,bz)
  %2879 = call float @dx.op.unary.f32(i32 7, float %2878)  ; Saturate(value)
  %2880 = fmul fast float %2879, 5.000000e-01
  %2881 = fadd fast float %2880, 5.000000e-01
  %2882 = fmul fast float %2881, %2812
  %2883 = call float @dx.op.dot3.f32(i32 55, float %2746, float %2747, float %2748, float %2856, float %2857, float %2858)  ; Dot3(ax,ay,az,bx,by,bz)
  %2884 = call float @dx.op.unary.f32(i32 7, float %2883)  ; Saturate(value)
  %2885 = fmul fast float %2884, %2838
  %2886 = fadd fast float %2882, %2885
  %2887 = fsub fast float 5.000000e-01, %2880
  %2888 = fmul fast float %2887, %2733
  %2889 = fmul fast float %2887, %2734
  %2890 = fmul fast float %2887, %2735
  %2891 = fadd fast float %2886, %2888
  %2892 = fmul fast float %2891, %2808
  %2893 = fadd fast float %2886, %2889
  %2894 = fmul fast float %2893, %2809
  %2895 = fadd fast float %2886, %2890
  %2896 = fmul fast float %2895, %2810
  br label %2897

; <label>:2897                                    ; preds = %2799, %2796
  %2898 = phi float [ %2892, %2799 ], [ 0.000000e+00, %2796 ]
  %2899 = phi float [ %2894, %2799 ], [ 0.000000e+00, %2796 ]
  %2900 = phi float [ %2896, %2799 ], [ 0.000000e+00, %2796 ]
  %2901 = phi float [ %2873, %2799 ], [ 0.000000e+00, %2796 ]
  %2902 = phi float [ %2875, %2799 ], [ 0.000000e+00, %2796 ]
  %2903 = phi float [ %2877, %2799 ], [ 0.000000e+00, %2796 ]
  %2904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2905 = extractvalue %dx.types.CBufRet.f32 %2904, 0
  %2906 = fcmp fast ogt float %2905, 0.000000e+00
  %2907 = and i1 %2798, %2906
  br i1 %2907, label %2908, label %3112, !dx.controlflow.hints !81

; <label>:2908                                    ; preds = %2897
  %2909 = extractvalue %dx.types.CBufRet.f32 %2753, 2
  %2910 = fadd fast float %2909, %119
  %2911 = fmul fast float %2730, 3.200000e+01
  %2912 = fmul fast float %2731, 3.200000e+01
  %2913 = fadd fast float %2756, %2911
  %2914 = fadd fast float %2757, %2912
  %2915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2916 = extractvalue %dx.types.CBufRet.f32 %2915, 0
  %2917 = extractvalue %dx.types.CBufRet.f32 %2915, 1
  %2918 = fsub fast float %2913, %2916
  %2919 = fsub fast float %2914, %2917
  %2920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2921 = extractvalue %dx.types.CBufRet.f32 %2920, 0
  %2922 = extractvalue %dx.types.CBufRet.f32 %2920, 1
  %2923 = fmul fast float %2918, %2921
  %2924 = fmul fast float %2919, %2922
  %2925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2926 = extractvalue %dx.types.CBufRet.f32 %2925, 0
  %2927 = extractvalue %dx.types.CBufRet.f32 %2925, 1
  %2928 = fsub fast float %2756, %2926
  %2929 = fsub fast float %2757, %2927
  %2930 = fmul fast float %2928, %2928
  %2931 = fmul fast float %2929, %2929
  %2932 = fadd fast float %2930, %2931
  %2933 = call float @dx.op.unary.f32(i32 24, float %2932)  ; Sqrt(value)
  %2934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2935 = extractvalue %dx.types.CBufRet.f32 %2934, 0
  %2936 = extractvalue %dx.types.CBufRet.f32 %2934, 1
  %2937 = fsub fast float %2933, %2935
  %2938 = fdiv fast float %2937, %2936
  %2939 = call float @dx.op.unary.f32(i32 7, float %2938)  ; Saturate(value)
  %2940 = fmul fast float %2939, 2.000000e+00
  %2941 = fsub fast float 3.000000e+00, %2940
  %2942 = fmul fast float %2939, %2939
  %2943 = fmul fast float %2942, %2941
  %2944 = fcmp fast oge float %2923, 0.000000e+00
  %2945 = fcmp fast ole float %2923, 1.000000e+00
  %2946 = and i1 %2945, %2944
  %2947 = fcmp fast oge float %2924, 0.000000e+00
  %2948 = and i1 %2947, %2946
  %2949 = fcmp fast ole float %2924, 1.000000e+00
  %2950 = and i1 %2949, %2948
  %2951 = fcmp fast ogt float %2943, 0.000000e+00
  %2952 = and i1 %2951, %2950
  br i1 %2952, label %2953, label %3076, !dx.controlflow.hints !82

; <label>:2953                                    ; preds = %2908
  %2954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2955 = extractvalue %dx.types.CBufRet.f32 %2954, 2
  %2956 = extractvalue %dx.types.CBufRet.f32 %2954, 3
  %2957 = fmul fast float %2955, %2923
  %2958 = fmul fast float %2956, %2924
  %2959 = call float @dx.op.unary.f32(i32 27, float %2957)  ; Round_ni(value)
  %2960 = call float @dx.op.unary.f32(i32 27, float %2958)  ; Round_ni(value)
  %2961 = fptosi float %2959 to i32
  %2962 = fptosi float %2960 to i32
  %2963 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %2961, i32 %2962, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = lshr i32 %2964, 16
  %2966 = icmp eq i32 %2965, 65535
  br i1 %2966, label %3076, label %2967

; <label>:2967                                    ; preds = %2953
  %2968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2969 = extractvalue %dx.types.CBufRet.f32 %2968, 0
  %2970 = fmul fast float %2969, %2923
  %2971 = extractvalue %dx.types.CBufRet.f32 %2968, 1
  %2972 = fadd fast float %2970, %2971
  %2973 = extractvalue %dx.types.CBufRet.f32 %2968, 2
  %2974 = fmul fast float %2973, %2924
  %2975 = extractvalue %dx.types.CBufRet.f32 %2968, 3
  %2976 = fadd fast float %2974, %2975
  %2977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %2972, float %2976, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2978 = extractvalue %dx.types.ResRet.f32 %2977, 0
  %2979 = extractvalue %dx.types.ResRet.f32 %2977, 1
  %2980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2981 = extractvalue %dx.types.CBufRet.f32 %2980, 1
  %2982 = extractvalue %dx.types.CBufRet.f32 %2980, 0
  %2983 = fsub fast float %2981, %2982
  %2984 = fmul fast float %2983, %2978
  %2985 = fadd fast float %2984, %2982
  %2986 = extractvalue %dx.types.CBufRet.f32 %2980, 3
  %2987 = extractvalue %dx.types.CBufRet.f32 %2980, 2
  %2988 = fsub fast float %2986, %2987
  %2989 = fmul fast float %2988, %2979
  %2990 = fadd fast float %2989, %2987
  %2991 = fsub fast float %2910, %2985
  %2992 = fsub fast float %2990, %2985
  %2993 = fdiv fast float %2991, %2992
  %2994 = call float @dx.op.unary.f32(i32 7, float %2993)  ; Saturate(value)
  %2995 = extractvalue %dx.types.CBufRet.f32 %2904, 1
  %2996 = extractvalue %dx.types.CBufRet.f32 %2954, 0
  %2997 = extractvalue %dx.types.CBufRet.f32 %2954, 1
  %2998 = fmul fast float %2996, %2923
  %2999 = fmul fast float %2997, %2924
  %3000 = fmul fast float %2998, 1.250000e-01
  %3001 = fmul fast float %2999, 1.250000e-01
  %3002 = call float @dx.op.unary.f32(i32 27, float %3000)  ; Round_ni(value)
  %3003 = call float @dx.op.unary.f32(i32 27, float %3001)  ; Round_ni(value)
  %3004 = fmul fast float %3002, 8.000000e+00
  %3005 = fmul fast float %3003, 8.000000e+00
  %3006 = fsub fast float %2998, %3004
  %3007 = fsub fast float %2999, %3005
  %3008 = fadd fast float %3006, 5.000000e-01
  %3009 = fadd fast float %3007, 5.000000e-01
  %3010 = and i32 %2965, 255
  %3011 = lshr i32 %2964, 24
  %3012 = mul nuw nsw i32 %3010, 9
  %3013 = uitofp i32 %3012 to float
  %3014 = mul nuw nsw i32 %3011, 9
  %3015 = uitofp i32 %3014 to float
  %3016 = fadd fast float %3008, %3013
  %3017 = fadd fast float %3009, %3015
  %3018 = fdiv fast float %3016, %2905
  %3019 = fdiv fast float %3017, %2995
  %3020 = fmul fast float %2994, 4.375000e-01
  %3021 = fadd fast float %3020, 3.125000e-02
  %3022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3018, float %3019, float %3021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3023 = extractvalue %dx.types.ResRet.f32 %3022, 0
  %3024 = extractvalue %dx.types.ResRet.f32 %3022, 1
  %3025 = extractvalue %dx.types.ResRet.f32 %3022, 2
  %3026 = fadd fast float %3020, 5.312500e-01
  %3027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3018, float %3019, float %3026, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3028 = extractvalue %dx.types.ResRet.f32 %3027, 0
  %3029 = extractvalue %dx.types.ResRet.f32 %3027, 1
  %3030 = extractvalue %dx.types.ResRet.f32 %3027, 2
  %3031 = fmul fast float %3028, 2.000000e+00
  %3032 = fmul fast float %3029, 2.000000e+00
  %3033 = fmul fast float %3030, 2.000000e+00
  %3034 = fadd fast float %3031, -1.000000e+00
  %3035 = fadd fast float %3032, -1.000000e+00
  %3036 = fadd fast float %3033, -1.000000e+00
  %3037 = fmul fast float %3034, %3034
  %3038 = fmul fast float %3035, %3035
  %3039 = fadd fast float %3037, %3038
  %3040 = fmul fast float %3036, %3036
  %3041 = fadd fast float %3039, %3040
  %3042 = call float @dx.op.unary.f32(i32 24, float %3041)  ; Sqrt(value)
  %3043 = fcmp fast ogt float %3042, 0.000000e+00
  br i1 %3043, label %3044, label %3048

; <label>:3044                                    ; preds = %2967
  %3045 = fdiv fast float %3034, %3042
  %3046 = fdiv fast float %3035, %3042
  %3047 = fdiv fast float %3036, %3042
  br label %3048

; <label>:3048                                    ; preds = %3044, %2967
  %3049 = phi float [ %3045, %3044 ], [ 0.000000e+00, %2967 ]
  %3050 = phi float [ %3046, %3044 ], [ 0.000000e+00, %2967 ]
  %3051 = phi float [ %3047, %3044 ], [ 0.000000e+00, %2967 ]
  %3052 = call float @dx.op.dot3.f32(i32 55, float %3049, float %3050, float %3051, float %2730, float %2731, float %2732)  ; Dot3(ax,ay,az,bx,by,bz)
  %3053 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3052)  ; FMax(a,b)
  %3054 = fmul fast float %3053, 0x400C5BF8A0000000
  %3055 = fmul fast float %3023, %2943
  %3056 = fmul fast float %3055, %3054
  %3057 = fmul fast float %3024, %2943
  %3058 = fmul fast float %3057, %3054
  %3059 = fmul fast float %3025, %2943
  %3060 = fmul fast float %3059, %3054
  %3061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3062 = extractvalue %dx.types.CBufRet.f32 %3061, 3
  %3063 = fmul fast float %3056, %3062
  %3064 = fmul fast float %3058, %3062
  %3065 = fmul fast float %3060, %3062
  %3066 = fcmp fast ogt float %2910, %2990
  br i1 %3066, label %3067, label %3076

; <label>:3067                                    ; preds = %3048
  %3068 = fmul fast float %2992, 0x3FC24924A0000000
  %3069 = fsub fast float %2910, %2990
  %3070 = fdiv fast float %3069, %3068
  %3071 = call float @dx.op.unary.f32(i32 7, float %3070)  ; Saturate(value)
  %3072 = fsub fast float 1.000000e+00, %3071
  %3073 = fmul fast float %3072, %3063
  %3074 = fmul fast float %3072, %3064
  %3075 = fmul fast float %3072, %3065
  br label %3076

; <label>:3076                                    ; preds = %3067, %3048, %2953, %2908
  %3077 = phi float [ %3075, %3067 ], [ %3065, %3048 ], [ 0.000000e+00, %2953 ], [ 0.000000e+00, %2908 ]
  %3078 = phi float [ %3074, %3067 ], [ %3064, %3048 ], [ 0.000000e+00, %2953 ], [ 0.000000e+00, %2908 ]
  %3079 = phi float [ %3073, %3067 ], [ %3063, %3048 ], [ 0.000000e+00, %2953 ], [ 0.000000e+00, %2908 ]
  %3080 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3079)  ; FMax(a,b)
  %3081 = fmul fast float %3080, 0x3FD20DD760000000
  %3082 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2746, float %2747, float %2748)  ; Dot3(ax,ay,az,bx,by,bz)
  %3083 = fmul fast float %3082, 0x3FDF454380000000
  %3084 = fmul fast float %3082, %3082
  %3085 = fmul fast float %3084, 0x3FEE471020000000
  %3086 = fadd fast float %3085, 0xBFD42F6020000000
  %3087 = call float @dx.op.dot3.f32(i32 55, float %3080, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3083, float %3086)  ; Dot3(ax,ay,az,bx,by,bz)
  %3088 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3078)  ; FMax(a,b)
  %3089 = fmul fast float %3088, 0x3FD20DD760000000
  %3090 = call float @dx.op.dot3.f32(i32 55, float %3088, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3083, float %3086)  ; Dot3(ax,ay,az,bx,by,bz)
  %3091 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3077)  ; FMax(a,b)
  %3092 = fmul fast float %3091, 0x3FD20DD760000000
  %3093 = call float @dx.op.dot3.f32(i32 55, float %3091, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3083, float %3086)  ; Dot3(ax,ay,az,bx,by,bz)
  %3094 = call float @dx.op.binary.f32(i32 35, float %3081, float 0.000000e+00)  ; FMax(a,b)
  %3095 = call float @dx.op.binary.f32(i32 35, float %3089, float 0.000000e+00)  ; FMax(a,b)
  %3096 = call float @dx.op.binary.f32(i32 35, float %3092, float 0.000000e+00)  ; FMax(a,b)
  %3097 = call float @dx.op.binary.f32(i32 35, float %3087, float 0.000000e+00)  ; FMax(a,b)
  %3098 = call float @dx.op.binary.f32(i32 35, float %3090, float 0.000000e+00)  ; FMax(a,b)
  %3099 = call float @dx.op.binary.f32(i32 35, float %3093, float 0.000000e+00)  ; FMax(a,b)
  %3100 = fmul fast float %3094, %2797
  %3101 = fmul fast float %3095, %2797
  %3102 = fmul fast float %3096, %2797
  %3103 = fadd fast float %3100, %2901
  %3104 = fadd fast float %3101, %2902
  %3105 = fadd fast float %3102, %2903
  %3106 = fmul fast float %3097, %2797
  %3107 = fmul fast float %3098, %2797
  %3108 = fmul fast float %3099, %2797
  %3109 = fadd fast float %3106, %2898
  %3110 = fadd fast float %3107, %2899
  %3111 = fadd fast float %3108, %2900
  br label %3112

; <label>:3112                                    ; preds = %3076, %2897
  %3113 = phi float [ %3109, %3076 ], [ %2898, %2897 ]
  %3114 = phi float [ %3110, %3076 ], [ %2899, %2897 ]
  %3115 = phi float [ %3111, %3076 ], [ %2900, %2897 ]
  %3116 = phi float [ %3103, %3076 ], [ %2901, %2897 ]
  %3117 = phi float [ %3104, %3076 ], [ %2902, %2897 ]
  %3118 = phi float [ %3105, %3076 ], [ %2903, %2897 ]
  %3119 = fcmp fast olt float %2797, 1.000000e+00
  br i1 %3119, label %3120, label %3938, !dx.controlflow.hints !83

; <label>:3120                                    ; preds = %3112
  %3121 = extractvalue %dx.types.CBufRet.f32 %2753, 2
  %3122 = fadd fast float %3121, %119
  %3123 = fmul fast float %2730, 3.200000e+01
  %3124 = fmul fast float %2731, 3.200000e+01
  %3125 = fadd fast float %2756, %3123
  %3126 = fadd fast float %2757, %3124
  %3127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3128 = extractvalue %dx.types.CBufRet.f32 %3127, 0
  %3129 = extractvalue %dx.types.CBufRet.f32 %3127, 1
  %3130 = fsub fast float %3125, %3128
  %3131 = fsub fast float %3126, %3129
  %3132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3133 = extractvalue %dx.types.CBufRet.f32 %3132, 0
  %3134 = extractvalue %dx.types.CBufRet.f32 %3132, 1
  %3135 = fmul fast float %3130, %3133
  %3136 = fmul fast float %3131, %3134
  %3137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3138 = extractvalue %dx.types.CBufRet.f32 %3137, 0
  %3139 = fmul fast float %3135, %3138
  %3140 = extractvalue %dx.types.CBufRet.f32 %3137, 1
  %3141 = fadd fast float %3139, %3140
  %3142 = extractvalue %dx.types.CBufRet.f32 %3137, 2
  %3143 = fmul fast float %3142, %3136
  %3144 = extractvalue %dx.types.CBufRet.f32 %3137, 3
  %3145 = fadd fast float %3143, %3144
  %3146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3141, float %3145, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3147 = extractvalue %dx.types.ResRet.f32 %3146, 0
  %3148 = extractvalue %dx.types.ResRet.f32 %3146, 1
  %3149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3150 = extractvalue %dx.types.CBufRet.f32 %3149, 1
  %3151 = extractvalue %dx.types.CBufRet.f32 %3149, 0
  %3152 = fsub fast float %3150, %3151
  %3153 = fmul fast float %3152, %3147
  %3154 = fadd fast float %3153, %3151
  %3155 = extractvalue %dx.types.CBufRet.f32 %3149, 3
  %3156 = extractvalue %dx.types.CBufRet.f32 %3149, 2
  %3157 = fsub fast float %3155, %3156
  %3158 = fmul fast float %3157, %3148
  %3159 = fadd fast float %3158, %3156
  %3160 = fsub fast float %3122, %3154
  %3161 = fsub fast float %3159, %3154
  %3162 = fdiv fast float %3160, %3161
  %3163 = call float @dx.op.unary.f32(i32 7, float %3162)  ; Saturate(value)
  %3164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3165 = extractvalue %dx.types.CBufRet.f32 %3164, 0
  %3166 = fmul fast float %3165, %3163
  %3167 = extractvalue %dx.types.CBufRet.f32 %3164, 1
  %3168 = fadd fast float %3166, %3167
  %3169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %3141, float %3145, float %3168, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3170 = extractvalue %dx.types.ResRet.f32 %3169, 0
  %3171 = extractvalue %dx.types.ResRet.f32 %3169, 1
  %3172 = extractvalue %dx.types.ResRet.f32 %3169, 2
  %3173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3174 = extractvalue %dx.types.CBufRet.f32 %3173, 0
  %3175 = extractvalue %dx.types.CBufRet.f32 %3173, 1
  %3176 = extractvalue %dx.types.CBufRet.f32 %3173, 2
  %3177 = fmul fast float %3174, %3170
  %3178 = fmul fast float %3175, %3171
  %3179 = fmul fast float %3176, %3172
  %3180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3181 = extractvalue %dx.types.CBufRet.f32 %3180, 0
  %3182 = extractvalue %dx.types.CBufRet.f32 %3180, 1
  %3183 = extractvalue %dx.types.CBufRet.f32 %3180, 2
  %3184 = fadd fast float %3177, %3181
  %3185 = fadd fast float %3178, %3182
  %3186 = fadd fast float %3179, %3183
  %3187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3188 = extractvalue %dx.types.CBufRet.f32 %3187, 0
  %3189 = fmul fast float %3188, %3135
  %3190 = extractvalue %dx.types.CBufRet.f32 %3187, 1
  %3191 = fadd fast float %3189, %3190
  %3192 = extractvalue %dx.types.CBufRet.f32 %3187, 2
  %3193 = fmul fast float %3192, %3136
  %3194 = extractvalue %dx.types.CBufRet.f32 %3187, 3
  %3195 = fadd fast float %3193, %3194
  %3196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3197 = extractvalue %dx.types.CBufRet.f32 %3196, 0
  %3198 = extractvalue %dx.types.CBufRet.f32 %3196, 1
  %3199 = extractvalue %dx.types.CBufRet.f32 %3196, 2
  %3200 = extractvalue %dx.types.CBufRet.f32 %3196, 3
  %3201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3202 = extractvalue %dx.types.CBufRet.f32 %3201, 0
  %3203 = extractvalue %dx.types.CBufRet.f32 %3201, 1
  %3204 = extractvalue %dx.types.CBufRet.f32 %3201, 2
  %3205 = extractvalue %dx.types.CBufRet.f32 %3201, 3
  %3206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3191, float %3195, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3207 = extractvalue %dx.types.ResRet.f32 %3206, 0
  %3208 = extractvalue %dx.types.ResRet.f32 %3206, 1
  %3209 = extractvalue %dx.types.ResRet.f32 %3206, 2
  %3210 = extractvalue %dx.types.ResRet.f32 %3206, 3
  %3211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3191, float %3195, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3212 = extractvalue %dx.types.ResRet.f32 %3211, 0
  %3213 = extractvalue %dx.types.ResRet.f32 %3211, 1
  %3214 = extractvalue %dx.types.ResRet.f32 %3211, 2
  %3215 = extractvalue %dx.types.ResRet.f32 %3211, 3
  %3216 = fmul fast float %3207, %3184
  %3217 = fmul fast float %3212, %3184
  %3218 = fmul fast float %3214, %3184
  %3219 = fmul fast float %3210, %3184
  %3220 = fadd fast float %3216, %3197
  %3221 = fadd fast float %3217, %3198
  %3222 = fadd fast float %3218, %3199
  %3223 = fadd fast float %3219, %3200
  %3224 = fmul fast float %3208, %3184
  %3225 = fmul fast float %3213, %3184
  %3226 = fadd fast float %3224, %3202
  %3227 = fadd fast float %3225, %3203
  %3228 = fmul fast float %3209, %3184
  %3229 = fmul fast float %3215, %3184
  %3230 = fadd fast float %3228, %3204
  %3231 = fadd fast float %3229, %3205
  %3232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3191, float %3195, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3233 = extractvalue %dx.types.ResRet.f32 %3232, 0
  %3234 = extractvalue %dx.types.ResRet.f32 %3232, 1
  %3235 = extractvalue %dx.types.ResRet.f32 %3232, 2
  %3236 = extractvalue %dx.types.ResRet.f32 %3232, 3
  %3237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3191, float %3195, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3238 = extractvalue %dx.types.ResRet.f32 %3237, 0
  %3239 = extractvalue %dx.types.ResRet.f32 %3237, 1
  %3240 = extractvalue %dx.types.ResRet.f32 %3237, 2
  %3241 = extractvalue %dx.types.ResRet.f32 %3237, 3
  %3242 = fmul fast float %3233, %3185
  %3243 = fmul fast float %3238, %3185
  %3244 = fmul fast float %3240, %3185
  %3245 = fmul fast float %3236, %3185
  %3246 = fadd fast float %3220, %3242
  %3247 = fadd fast float %3221, %3243
  %3248 = fadd fast float %3222, %3244
  %3249 = fadd fast float %3223, %3245
  %3250 = fmul fast float %3234, %3185
  %3251 = fmul fast float %3239, %3185
  %3252 = fadd fast float %3226, %3250
  %3253 = fadd fast float %3227, %3251
  %3254 = fmul fast float %3235, %3185
  %3255 = fmul fast float %3241, %3185
  %3256 = fadd fast float %3230, %3254
  %3257 = fadd fast float %3231, %3255
  %3258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3191, float %3195, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3259 = extractvalue %dx.types.ResRet.f32 %3258, 0
  %3260 = extractvalue %dx.types.ResRet.f32 %3258, 1
  %3261 = extractvalue %dx.types.ResRet.f32 %3258, 2
  %3262 = extractvalue %dx.types.ResRet.f32 %3258, 3
  %3263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3191, float %3195, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3264 = extractvalue %dx.types.ResRet.f32 %3263, 0
  %3265 = extractvalue %dx.types.ResRet.f32 %3263, 1
  %3266 = extractvalue %dx.types.ResRet.f32 %3263, 2
  %3267 = extractvalue %dx.types.ResRet.f32 %3263, 3
  %3268 = fmul fast float %3259, %3186
  %3269 = fmul fast float %3264, %3186
  %3270 = fmul fast float %3266, %3186
  %3271 = fmul fast float %3262, %3186
  %3272 = fadd fast float %3246, %3268
  %3273 = fadd fast float %3247, %3269
  %3274 = fadd fast float %3248, %3270
  %3275 = fadd fast float %3249, %3271
  %3276 = fmul fast float %3260, %3186
  %3277 = fmul fast float %3265, %3186
  %3278 = fadd fast float %3252, %3276
  %3279 = fadd fast float %3253, %3277
  %3280 = fmul fast float %3261, %3186
  %3281 = fmul fast float %3267, %3186
  %3282 = fadd fast float %3256, %3280
  %3283 = fadd fast float %3257, %3281
  %3284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3285 = extractvalue %dx.types.CBufRet.f32 %3284, 0
  %3286 = fsub fast float %2756, %3285
  %3287 = fsub fast float %3128, %2756
  %3288 = call float @dx.op.binary.f32(i32 35, float %3287, float %3286)  ; FMax(a,b)
  %3289 = extractvalue %dx.types.CBufRet.f32 %3284, 1
  %3290 = fsub fast float %2757, %3289
  %3291 = fsub fast float %3129, %2757
  %3292 = call float @dx.op.binary.f32(i32 35, float %3291, float %3290)  ; FMax(a,b)
  %3293 = call float @dx.op.binary.f32(i32 35, float %3288, float %3292)  ; FMax(a,b)
  %3294 = extractvalue %dx.types.CBufRet.f32 %3132, 3
  %3295 = fmul fast float %3294, %3293
  %3296 = call float @dx.op.unary.f32(i32 7, float %3295)  ; Saturate(value)
  %3297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3298 = extractvalue %dx.types.CBufRet.f32 %3297, 0
  %3299 = extractvalue %dx.types.CBufRet.f32 %3297, 1
  %3300 = extractvalue %dx.types.CBufRet.f32 %3297, 2
  %3301 = extractvalue %dx.types.CBufRet.f32 %3297, 3
  %3302 = fsub fast float %3298, %3272
  %3303 = fsub fast float %3299, %3273
  %3304 = fsub fast float %3300, %3274
  %3305 = fsub fast float %3301, %3275
  %3306 = fmul fast float %3302, %3296
  %3307 = fmul fast float %3303, %3296
  %3308 = fmul fast float %3304, %3296
  %3309 = fmul fast float %3305, %3296
  %3310 = fadd fast float %3306, %3272
  %3311 = fadd fast float %3307, %3273
  %3312 = fadd fast float %3308, %3274
  %3313 = fadd fast float %3309, %3275
  %3314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3315 = extractvalue %dx.types.CBufRet.f32 %3314, 0
  %3316 = extractvalue %dx.types.CBufRet.f32 %3314, 1
  %3317 = fsub fast float %3315, %3278
  %3318 = fsub fast float %3316, %3279
  %3319 = fmul fast float %3317, %3296
  %3320 = fmul fast float %3318, %3296
  %3321 = fadd fast float %3319, %3278
  %3322 = fadd fast float %3320, %3279
  %3323 = extractvalue %dx.types.CBufRet.f32 %3314, 2
  %3324 = extractvalue %dx.types.CBufRet.f32 %3314, 3
  %3325 = fsub fast float %3323, %3282
  %3326 = fsub fast float %3324, %3283
  %3327 = fmul fast float %3325, %3296
  %3328 = fmul fast float %3326, %3296
  %3329 = fadd fast float %3327, %3282
  %3330 = fadd fast float %3328, %3283
  %3331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3332 = extractvalue %dx.types.CBufRet.f32 %3331, 0
  %3333 = fmul fast float %3332, %3310
  %3334 = fmul fast float %3332, %3311
  %3335 = fmul fast float %3332, %3312
  %3336 = fmul fast float %3332, %3313
  %3337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3338 = extractvalue %dx.types.CBufRet.f32 %3337, 0
  %3339 = fmul fast float %3338, %3321
  %3340 = fmul fast float %3338, %3322
  %3341 = fadd fast float %3339, %3333
  %3342 = fadd fast float %3340, %3335
  %3343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3344 = extractvalue %dx.types.CBufRet.f32 %3343, 0
  %3345 = fmul fast float %3344, %3329
  %3346 = fmul fast float %3344, %3330
  %3347 = fadd fast float %3341, %3345
  %3348 = fadd fast float %3342, %3346
  %3349 = extractvalue %dx.types.CBufRet.f32 %3331, 1
  %3350 = fmul fast float %3349, %3310
  %3351 = fmul fast float %3349, %3311
  %3352 = fmul fast float %3349, %3312
  %3353 = fmul fast float %3349, %3313
  %3354 = extractvalue %dx.types.CBufRet.f32 %3337, 1
  %3355 = fmul fast float %3354, %3321
  %3356 = fmul fast float %3354, %3322
  %3357 = fadd fast float %3355, %3350
  %3358 = fadd fast float %3356, %3352
  %3359 = extractvalue %dx.types.CBufRet.f32 %3343, 1
  %3360 = fmul fast float %3359, %3329
  %3361 = fmul fast float %3359, %3330
  %3362 = fadd fast float %3357, %3360
  %3363 = fadd fast float %3358, %3361
  %3364 = extractvalue %dx.types.CBufRet.f32 %3331, 2
  %3365 = fmul fast float %3364, %3310
  %3366 = fmul fast float %3364, %3311
  %3367 = fmul fast float %3364, %3312
  %3368 = fmul fast float %3364, %3313
  %3369 = extractvalue %dx.types.CBufRet.f32 %3337, 2
  %3370 = fmul fast float %3369, %3321
  %3371 = fmul fast float %3369, %3322
  %3372 = fadd fast float %3370, %3365
  %3373 = fadd fast float %3371, %3367
  %3374 = extractvalue %dx.types.CBufRet.f32 %3343, 2
  %3375 = fmul fast float %3374, %3329
  %3376 = fmul fast float %3374, %3330
  %3377 = fadd fast float %3372, %3375
  %3378 = fadd fast float %3373, %3376
  %3379 = fmul fast float %3366, %3366
  %3380 = fmul fast float %3378, %3378
  %3381 = fmul fast float %3368, %3368
  %3382 = fadd fast float %3381, %3379
  %3383 = fadd fast float %3382, %3380
  %3384 = call float @dx.op.unary.f32(i32 24, float %3383)  ; Sqrt(value)
  %3385 = fcmp fast ugt float %3384, 0.000000e+00
  br i1 %3385, label %3386, label %3401

; <label>:3386                                    ; preds = %3120
  %3387 = fsub fast float -0.000000e+00, %3368
  %3388 = fdiv fast float %3387, %3384
  %3389 = fsub fast float -0.000000e+00, %3366
  %3390 = fdiv fast float %3389, %3384
  %3391 = fdiv fast float %3378, %3384
  %3392 = fmul fast float %3377, 0x3FE279A760000000
  %3393 = fmul fast float %3390, %3366
  %3394 = fmul fast float %3391, %3378
  %3395 = fmul fast float %3388, %3368
  %3396 = fadd fast float %3393, %3395
  %3397 = fsub fast float %3396, %3394
  %3398 = call float @dx.op.unary.f32(i32 6, float %3397)  ; FAbs(value)
  %3399 = fadd fast float %3398, 0x3DDB7CDFE0000000
  %3400 = fdiv fast float %3392, %3399
  br label %3401

; <label>:3401                                    ; preds = %3386, %3120
  %3402 = phi float [ %3400, %3386 ], [ 1.000000e+00, %3120 ]
  %3403 = fmul fast float %3351, %3351
  %3404 = fmul fast float %3363, %3363
  %3405 = fmul fast float %3353, %3353
  %3406 = fadd fast float %3405, %3403
  %3407 = fadd fast float %3406, %3404
  %3408 = call float @dx.op.unary.f32(i32 24, float %3407)  ; Sqrt(value)
  %3409 = fcmp fast ugt float %3408, 0.000000e+00
  br i1 %3409, label %3410, label %3425

; <label>:3410                                    ; preds = %3401
  %3411 = fsub fast float -0.000000e+00, %3353
  %3412 = fdiv fast float %3411, %3408
  %3413 = fsub fast float -0.000000e+00, %3351
  %3414 = fdiv fast float %3413, %3408
  %3415 = fdiv fast float %3363, %3408
  %3416 = fmul fast float %3362, 0x3FE279A760000000
  %3417 = fmul fast float %3414, %3351
  %3418 = fmul fast float %3415, %3363
  %3419 = fmul fast float %3412, %3353
  %3420 = fadd fast float %3417, %3419
  %3421 = fsub fast float %3420, %3418
  %3422 = call float @dx.op.unary.f32(i32 6, float %3421)  ; FAbs(value)
  %3423 = fadd fast float %3422, 0x3DDB7CDFE0000000
  %3424 = fdiv fast float %3416, %3423
  br label %3425

; <label>:3425                                    ; preds = %3410, %3401
  %3426 = phi float [ %3424, %3410 ], [ 1.000000e+00, %3401 ]
  %3427 = call float @dx.op.binary.f32(i32 36, float %3426, float %3402)  ; FMin(a,b)
  %3428 = fmul fast float %3334, %3334
  %3429 = fmul fast float %3348, %3348
  %3430 = fmul fast float %3336, %3336
  %3431 = fadd fast float %3430, %3428
  %3432 = fadd fast float %3431, %3429
  %3433 = call float @dx.op.unary.f32(i32 24, float %3432)  ; Sqrt(value)
  %3434 = fcmp fast ugt float %3433, 0.000000e+00
  br i1 %3434, label %3435, label %3450

; <label>:3435                                    ; preds = %3425
  %3436 = fsub fast float -0.000000e+00, %3336
  %3437 = fdiv fast float %3436, %3433
  %3438 = fsub fast float -0.000000e+00, %3334
  %3439 = fdiv fast float %3438, %3433
  %3440 = fdiv fast float %3348, %3433
  %3441 = fmul fast float %3347, 0x3FE279A760000000
  %3442 = fmul fast float %3439, %3334
  %3443 = fmul fast float %3440, %3348
  %3444 = fmul fast float %3437, %3336
  %3445 = fadd fast float %3442, %3444
  %3446 = fsub fast float %3445, %3443
  %3447 = call float @dx.op.unary.f32(i32 6, float %3446)  ; FAbs(value)
  %3448 = fadd fast float %3447, 0x3DDB7CDFE0000000
  %3449 = fdiv fast float %3441, %3448
  br label %3450

; <label>:3450                                    ; preds = %3435, %3425
  %3451 = phi float [ %3449, %3435 ], [ 1.000000e+00, %3425 ]
  %3452 = call float @dx.op.binary.f32(i32 36, float %3451, float %3427)  ; FMin(a,b)
  %3453 = call float @dx.op.unary.f32(i32 7, float %3452)  ; Saturate(value)
  %3454 = fcmp fast olt float %3453, 1.000000e+00
  br i1 %3454, label %3455, label %3465

; <label>:3455                                    ; preds = %3450
  %3456 = fmul fast float %3453, %3334
  %3457 = fmul fast float %3453, %3348
  %3458 = fmul fast float %3453, %3336
  %3459 = fmul fast float %3453, %3351
  %3460 = fmul fast float %3453, %3363
  %3461 = fmul fast float %3453, %3353
  %3462 = fmul fast float %3453, %3366
  %3463 = fmul fast float %3453, %3378
  %3464 = fmul fast float %3453, %3368
  br label %3465

; <label>:3465                                    ; preds = %3455, %3450
  %3466 = phi float [ %3462, %3455 ], [ %3366, %3450 ]
  %3467 = phi float [ %3463, %3455 ], [ %3378, %3450 ]
  %3468 = phi float [ %3464, %3455 ], [ %3368, %3450 ]
  %3469 = phi float [ %3459, %3455 ], [ %3351, %3450 ]
  %3470 = phi float [ %3460, %3455 ], [ %3363, %3450 ]
  %3471 = phi float [ %3461, %3455 ], [ %3353, %3450 ]
  %3472 = phi float [ %3456, %3455 ], [ %3334, %3450 ]
  %3473 = phi float [ %3457, %3455 ], [ %3348, %3450 ]
  %3474 = phi float [ %3458, %3455 ], [ %3336, %3450 ]
  %3475 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3347)  ; FMax(a,b)
  %3476 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3362)  ; FMax(a,b)
  %3477 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3377)  ; FMax(a,b)
  %3478 = fcmp fast oge float %3135, 0.000000e+00
  %3479 = and i1 %3478, %2906
  %3480 = fcmp fast ole float %3135, 1.000000e+00
  %3481 = and i1 %3480, %3479
  %3482 = fcmp fast oge float %3136, 0.000000e+00
  %3483 = and i1 %3482, %3481
  %3484 = fcmp fast ole float %3136, 1.000000e+00
  %3485 = and i1 %3484, %3483
  br i1 %3485, label %3486, label %3631, !dx.controlflow.hints !84

; <label>:3486                                    ; preds = %3465
  %3487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3488 = extractvalue %dx.types.CBufRet.f32 %3487, 2
  %3489 = extractvalue %dx.types.CBufRet.f32 %3487, 3
  %3490 = fmul fast float %3488, %3135
  %3491 = fmul fast float %3489, %3136
  %3492 = call float @dx.op.unary.f32(i32 27, float %3490)  ; Round_ni(value)
  %3493 = call float @dx.op.unary.f32(i32 27, float %3491)  ; Round_ni(value)
  %3494 = fptosi float %3492 to i32
  %3495 = fptosi float %3493 to i32
  %3496 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3494, i32 %3495, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3497 = extractvalue %dx.types.ResRet.i32 %3496, 0
  %3498 = and i32 %3497, 65535
  %3499 = lshr i32 %3497, 16
  %3500 = icmp eq i32 %3498, 65535
  br i1 %3500, label %3537, label %3501

; <label>:3501                                    ; preds = %3486
  %3502 = extractvalue %dx.types.CBufRet.f32 %2904, 1
  %3503 = extractvalue %dx.types.CBufRet.f32 %3487, 0
  %3504 = extractvalue %dx.types.CBufRet.f32 %3487, 1
  %3505 = fmul fast float %3503, %3135
  %3506 = fmul fast float %3504, %3136
  %3507 = fmul fast float %3505, 1.250000e-01
  %3508 = fmul fast float %3506, 1.250000e-01
  %3509 = call float @dx.op.unary.f32(i32 27, float %3507)  ; Round_ni(value)
  %3510 = call float @dx.op.unary.f32(i32 27, float %3508)  ; Round_ni(value)
  %3511 = fmul fast float %3509, 8.000000e+00
  %3512 = fmul fast float %3510, 8.000000e+00
  %3513 = and i32 %3497, 255
  %3514 = lshr i32 %3497, 8
  %3515 = and i32 %3514, 255
  %3516 = mul nuw nsw i32 %3513, 9
  %3517 = uitofp i32 %3516 to float
  %3518 = mul nuw nsw i32 %3515, 9
  %3519 = uitofp i32 %3518 to float
  %3520 = fadd fast float %3517, 5.000000e-01
  %3521 = fadd fast float %3520, %3505
  %3522 = fsub fast float %3521, %3511
  %3523 = fadd fast float %3519, 5.000000e-01
  %3524 = fadd fast float %3523, %3506
  %3525 = fsub fast float %3524, %3512
  %3526 = fdiv fast float %3522, %2905
  %3527 = fdiv fast float %3525, %3502
  %3528 = fmul fast float %3163, 4.375000e-01
  %3529 = fadd fast float %3528, 3.125000e-02
  %3530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3526, float %3527, float %3529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3531 = extractvalue %dx.types.ResRet.f32 %3530, 0
  %3532 = extractvalue %dx.types.ResRet.f32 %3530, 1
  %3533 = extractvalue %dx.types.ResRet.f32 %3530, 2
  %3534 = fadd fast float %3531, %3475
  %3535 = fadd fast float %3532, %3476
  %3536 = fadd fast float %3533, %3477
  br label %3537

; <label>:3537                                    ; preds = %3501, %3486
  %3538 = phi float [ %3536, %3501 ], [ %3477, %3486 ]
  %3539 = phi float [ %3535, %3501 ], [ %3476, %3486 ]
  %3540 = phi float [ %3534, %3501 ], [ %3475, %3486 ]
  %3541 = icmp eq i32 %3499, 65535
  br i1 %3541, label %3631, label %3542

; <label>:3542                                    ; preds = %3537
  %3543 = extractvalue %dx.types.CBufRet.f32 %2904, 1
  %3544 = extractvalue %dx.types.CBufRet.f32 %3487, 0
  %3545 = extractvalue %dx.types.CBufRet.f32 %3487, 1
  %3546 = fmul fast float %3544, %3135
  %3547 = fmul fast float %3545, %3136
  %3548 = fmul fast float %3546, 1.250000e-01
  %3549 = fmul fast float %3547, 1.250000e-01
  %3550 = call float @dx.op.unary.f32(i32 27, float %3548)  ; Round_ni(value)
  %3551 = call float @dx.op.unary.f32(i32 27, float %3549)  ; Round_ni(value)
  %3552 = fmul fast float %3550, 8.000000e+00
  %3553 = fmul fast float %3551, 8.000000e+00
  %3554 = fsub fast float %3546, %3552
  %3555 = fsub fast float %3547, %3553
  %3556 = fadd fast float %3554, 5.000000e-01
  %3557 = fadd fast float %3555, 5.000000e-01
  %3558 = and i32 %3499, 255
  %3559 = lshr i32 %3497, 24
  %3560 = mul nuw nsw i32 %3558, 9
  %3561 = uitofp i32 %3560 to float
  %3562 = mul nuw nsw i32 %3559, 9
  %3563 = uitofp i32 %3562 to float
  %3564 = fadd fast float %3556, %3561
  %3565 = fadd fast float %3557, %3563
  %3566 = fdiv fast float %3564, %2905
  %3567 = fdiv fast float %3565, %3543
  %3568 = fmul fast float %3163, 4.375000e-01
  %3569 = fadd fast float %3568, 3.125000e-02
  %3570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3566, float %3567, float %3569, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3571 = extractvalue %dx.types.ResRet.f32 %3570, 0
  %3572 = extractvalue %dx.types.ResRet.f32 %3570, 1
  %3573 = extractvalue %dx.types.ResRet.f32 %3570, 2
  %3574 = fadd fast float %3568, 5.312500e-01
  %3575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3566, float %3567, float %3574, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3576 = extractvalue %dx.types.ResRet.f32 %3575, 0
  %3577 = extractvalue %dx.types.ResRet.f32 %3575, 1
  %3578 = extractvalue %dx.types.ResRet.f32 %3575, 2
  %3579 = fmul fast float %3576, 2.000000e+00
  %3580 = fmul fast float %3577, 2.000000e+00
  %3581 = fmul fast float %3578, 2.000000e+00
  %3582 = fadd fast float %3579, -1.000000e+00
  %3583 = fadd fast float %3580, -1.000000e+00
  %3584 = fadd fast float %3581, -1.000000e+00
  %3585 = fmul fast float %3582, %3582
  %3586 = fmul fast float %3583, %3583
  %3587 = fadd fast float %3585, %3586
  %3588 = fmul fast float %3584, %3584
  %3589 = fadd fast float %3587, %3588
  %3590 = call float @dx.op.unary.f32(i32 24, float %3589)  ; Sqrt(value)
  %3591 = fcmp fast ogt float %3590, 0.000000e+00
  br i1 %3591, label %3592, label %3596

; <label>:3592                                    ; preds = %3542
  %3593 = fdiv fast float %3582, %3590
  %3594 = fdiv fast float %3583, %3590
  %3595 = fdiv fast float %3584, %3590
  br label %3596

; <label>:3596                                    ; preds = %3592, %3542
  %3597 = phi float [ %3593, %3592 ], [ 0.000000e+00, %3542 ]
  %3598 = phi float [ %3594, %3592 ], [ 0.000000e+00, %3542 ]
  %3599 = phi float [ %3595, %3592 ], [ 0.000000e+00, %3542 ]
  %3600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3601 = extractvalue %dx.types.CBufRet.f32 %3600, 0
  %3602 = extractvalue %dx.types.CBufRet.f32 %3600, 1
  %3603 = fsub fast float %2756, %3601
  %3604 = fsub fast float %2757, %3602
  %3605 = fmul fast float %3603, %3603
  %3606 = fmul fast float %3604, %3604
  %3607 = fadd fast float %3605, %3606
  %3608 = call float @dx.op.unary.f32(i32 24, float %3607)  ; Sqrt(value)
  %3609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3610 = extractvalue %dx.types.CBufRet.f32 %3609, 0
  %3611 = extractvalue %dx.types.CBufRet.f32 %3609, 1
  %3612 = fsub fast float %3608, %3610
  %3613 = fdiv fast float %3612, %3611
  %3614 = call float @dx.op.unary.f32(i32 7, float %3613)  ; Saturate(value)
  %3615 = fmul fast float %3614, 2.000000e+00
  %3616 = fsub fast float 3.000000e+00, %3615
  %3617 = fmul fast float %3614, %3614
  %3618 = fmul fast float %3617, %3616
  %3619 = call float @dx.op.dot3.f32(i32 55, float %3597, float %3598, float %3599, float %2730, float %2731, float %2732)  ; Dot3(ax,ay,az,bx,by,bz)
  %3620 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3619)  ; FMax(a,b)
  %3621 = fmul fast float %3620, 0x400C5BF8A0000000
  %3622 = fmul fast float %3618, %3571
  %3623 = fmul fast float %3622, %3621
  %3624 = fadd fast float %3623, %3540
  %3625 = fmul fast float %3618, %3572
  %3626 = fmul fast float %3625, %3621
  %3627 = fadd fast float %3626, %3539
  %3628 = fmul fast float %3618, %3573
  %3629 = fmul fast float %3628, %3621
  %3630 = fadd fast float %3629, %3538
  br label %3631

; <label>:3631                                    ; preds = %3596, %3537, %3465
  %3632 = phi float [ %3630, %3596 ], [ %3538, %3537 ], [ %3477, %3465 ]
  %3633 = phi float [ %3627, %3596 ], [ %3539, %3537 ], [ %3476, %3465 ]
  %3634 = phi float [ %3624, %3596 ], [ %3540, %3537 ], [ %3475, %3465 ]
  %3635 = fcmp fast ogt float %3122, %3159
  %3636 = and i1 %3478, %3635
  %3637 = and i1 %3480, %3636
  %3638 = and i1 %3482, %3637
  %3639 = and i1 %3484, %3638
  br i1 %3639, label %3640, label %3697, !dx.controlflow.hints !85

; <label>:3640                                    ; preds = %3631
  %3641 = fmul fast float %3161, 0x3FC24924A0000000
  %3642 = fsub fast float %3122, %3159
  %3643 = fdiv fast float %3642, %3641
  %3644 = call float @dx.op.unary.f32(i32 7, float %3643)  ; Saturate(value)
  %3645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3646 = extractvalue %dx.types.CBufRet.f32 %3645, 0
  %3647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3648 = extractvalue %dx.types.CBufRet.f32 %3647, 0
  %3649 = extractvalue %dx.types.CBufRet.f32 %3647, 1
  %3650 = extractvalue %dx.types.CBufRet.f32 %3647, 2
  %3651 = fsub fast float %3646, %3634
  %3652 = fsub fast float %3648, %3472
  %3653 = fsub fast float %3649, %3473
  %3654 = fsub fast float %3650, %3474
  %3655 = fmul fast float %3651, %3644
  %3656 = fmul fast float %3652, %3644
  %3657 = fmul fast float %3653, %3644
  %3658 = fmul fast float %3654, %3644
  %3659 = fadd fast float %3655, %3634
  %3660 = fadd fast float %3656, %3472
  %3661 = fadd fast float %3657, %3473
  %3662 = fadd fast float %3658, %3474
  %3663 = extractvalue %dx.types.CBufRet.f32 %3645, 1
  %3664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3665 = extractvalue %dx.types.CBufRet.f32 %3664, 0
  %3666 = extractvalue %dx.types.CBufRet.f32 %3664, 1
  %3667 = extractvalue %dx.types.CBufRet.f32 %3664, 2
  %3668 = fsub fast float %3663, %3633
  %3669 = fsub fast float %3665, %3469
  %3670 = fsub fast float %3666, %3470
  %3671 = fsub fast float %3667, %3471
  %3672 = fmul fast float %3668, %3644
  %3673 = fmul fast float %3669, %3644
  %3674 = fmul fast float %3670, %3644
  %3675 = fmul fast float %3671, %3644
  %3676 = fadd fast float %3672, %3633
  %3677 = fadd fast float %3673, %3469
  %3678 = fadd fast float %3674, %3470
  %3679 = fadd fast float %3675, %3471
  %3680 = extractvalue %dx.types.CBufRet.f32 %3645, 2
  %3681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3682 = extractvalue %dx.types.CBufRet.f32 %3681, 0
  %3683 = extractvalue %dx.types.CBufRet.f32 %3681, 1
  %3684 = extractvalue %dx.types.CBufRet.f32 %3681, 2
  %3685 = fsub fast float %3680, %3632
  %3686 = fsub fast float %3682, %3466
  %3687 = fsub fast float %3683, %3467
  %3688 = fsub fast float %3684, %3468
  %3689 = fmul fast float %3685, %3644
  %3690 = fmul fast float %3686, %3644
  %3691 = fmul fast float %3687, %3644
  %3692 = fmul fast float %3688, %3644
  %3693 = fadd fast float %3689, %3632
  %3694 = fadd fast float %3690, %3466
  %3695 = fadd fast float %3691, %3467
  %3696 = fadd fast float %3692, %3468
  br label %3697

; <label>:3697                                    ; preds = %3640, %3631
  %3698 = phi float [ %3693, %3640 ], [ %3632, %3631 ]
  %3699 = phi float [ %3694, %3640 ], [ %3466, %3631 ]
  %3700 = phi float [ %3695, %3640 ], [ %3467, %3631 ]
  %3701 = phi float [ %3696, %3640 ], [ %3468, %3631 ]
  %3702 = phi float [ %3676, %3640 ], [ %3633, %3631 ]
  %3703 = phi float [ %3677, %3640 ], [ %3469, %3631 ]
  %3704 = phi float [ %3678, %3640 ], [ %3470, %3631 ]
  %3705 = phi float [ %3679, %3640 ], [ %3471, %3631 ]
  %3706 = phi float [ %3659, %3640 ], [ %3634, %3631 ]
  %3707 = phi float [ %3660, %3640 ], [ %3472, %3631 ]
  %3708 = phi float [ %3661, %3640 ], [ %3473, %3631 ]
  %3709 = phi float [ %3662, %3640 ], [ %3474, %3631 ]
  %3710 = extractvalue %dx.types.CBufRet.f32 %3284, 3
  %3711 = fmul fast float %3710, %3706
  %3712 = fmul fast float %3710, %3702
  %3713 = fmul fast float %3710, %3698
  %3714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3715 = extractvalue %dx.types.CBufRet.f32 %3714, 3
  %3716 = fmul fast float %3711, %3715
  %3717 = fmul fast float %3712, %3715
  %3718 = fmul fast float %3713, %3715
  %3719 = fmul fast float %3707, 1.500000e+00
  %3720 = fmul fast float %3719, %3710
  %3721 = fmul fast float %3720, %3715
  %3722 = fmul fast float %3708, 1.500000e+00
  %3723 = fmul fast float %3722, %3710
  %3724 = fmul fast float %3723, %3715
  %3725 = fmul fast float %3709, 1.500000e+00
  %3726 = fmul fast float %3725, %3710
  %3727 = fmul fast float %3726, %3715
  %3728 = fmul fast float %3703, 1.500000e+00
  %3729 = fmul fast float %3728, %3710
  %3730 = fmul fast float %3729, %3715
  %3731 = fmul fast float %3704, 1.500000e+00
  %3732 = fmul fast float %3731, %3710
  %3733 = fmul fast float %3732, %3715
  %3734 = fmul fast float %3705, 1.500000e+00
  %3735 = fmul fast float %3734, %3710
  %3736 = fmul fast float %3735, %3715
  %3737 = fmul fast float %3699, 1.500000e+00
  %3738 = fmul fast float %3737, %3710
  %3739 = fmul fast float %3738, %3715
  %3740 = fmul fast float %3700, 1.500000e+00
  %3741 = fmul fast float %3740, %3710
  %3742 = fmul fast float %3741, %3715
  %3743 = fmul fast float %3701, 1.500000e+00
  %3744 = fmul fast float %3743, %3710
  %3745 = fmul fast float %3744, %3715
  %3746 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3716)  ; FMax(a,b)
  %3747 = call float @dx.op.dot3.f32(i32 55, float %3721, float %3724, float %3727, float %3721, float %3724, float %3727)  ; Dot3(ax,ay,az,bx,by,bz)
  %3748 = fcmp fast oeq float %3747, 0.000000e+00
  %3749 = fcmp fast oeq float %3746, 0.000000e+00
  %3750 = or i1 %3749, %3748
  br i1 %3750, label %3780, label %3751

; <label>:3751                                    ; preds = %3697
  %3752 = fsub fast float -0.000000e+00, %3727
  %3753 = fsub fast float -0.000000e+00, %3721
  %3754 = call float @dx.op.unary.f32(i32 24, float %3747)  ; Sqrt(value)
  %3755 = fdiv fast float %3754, %3746
  %3756 = fcmp fast ogt float %3755, 0x3FFB6F8900000000
  %3757 = select i1 %3756, float 0x3FFB6F8900000000, float %3755
  %3758 = fmul fast float %3757, 0x3FE8A23460000000
  %3759 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  %3760 = call float @dx.op.binary.f32(i32 35, float %3757, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3761 = fmul fast float %3759, %3746
  %3762 = fmul fast float %3760, 0x3FF279A740000000
  %3763 = fadd fast float %3762, -1.000000e+00
  %3764 = call float @dx.op.dot3.f32(i32 55, float %3752, float %3753, float %3724, float %3752, float %3753, float %3724)  ; Dot3(ax,ay,az,bx,by,bz)
  %3765 = call float @dx.op.unary.f32(i32 25, float %3764)  ; Rsqrt(value)
  %3766 = fmul fast float %3765, %3752
  %3767 = fmul fast float %3765, %3753
  %3768 = fmul fast float %3765, %3724
  %3769 = fmul fast float %3763, %3763
  %3770 = fsub fast float 1.000000e+00, %3769
  %3771 = fmul fast float %3760, 0x40005F8BE0000000
  %3772 = fsub fast float 0x400C5BF8A0000000, %3771
  %3773 = fdiv fast float %3761, %3772
  %3774 = fmul fast float %3773, 0x3FEE31C3C0000000
  %3775 = fmul fast float %3774, %3770
  %3776 = fmul fast float %3760, 0x3FDACB7480000000
  %3777 = fadd fast float %3776, 0xBFD7347680000000
  %3778 = fmul fast float %3777, %3773
  %3779 = fmul fast float %3778, %3770
  br label %3780

; <label>:3780                                    ; preds = %3751, %3697
  %3781 = phi float [ %3766, %3751 ], [ 0.000000e+00, %3697 ]
  %3782 = phi float [ %3767, %3751 ], [ 0.000000e+00, %3697 ]
  %3783 = phi float [ %3768, %3751 ], [ 0.000000e+00, %3697 ]
  %3784 = phi float [ %3775, %3751 ], [ 0.000000e+00, %3697 ]
  %3785 = phi float [ %3779, %3751 ], [ 0.000000e+00, %3697 ]
  %3786 = call float @dx.op.dot3.f32(i32 55, float %3781, float %3782, float %3783, float %2730, float %2731, float %2732)  ; Dot3(ax,ay,az,bx,by,bz)
  %3787 = fmul fast float %3786, %3786
  %3788 = fmul fast float %3787, 0x3FEE471020000000
  %3789 = fadd fast float %3788, 0xBFD42F6020000000
  %3790 = fmul fast float %3746, 0x3FD20DD760000000
  %3791 = fmul fast float %3789, %3785
  %3792 = fmul fast float %3784, 0x3FDF454380000000
  %3793 = fmul fast float %3792, %3786
  %3794 = fadd fast float %3793, %3790
  %3795 = fadd fast float %3794, %3791
  %3796 = call float @dx.op.dot3.f32(i32 55, float %3781, float %3782, float %3783, float %2746, float %2747, float %2748)  ; Dot3(ax,ay,az,bx,by,bz)
  %3797 = fmul fast float %3796, 0x3FDF454380000000
  %3798 = fmul fast float %3796, %3796
  %3799 = fmul fast float %3798, 0x3FEE471020000000
  %3800 = fadd fast float %3799, 0xBFD42F6020000000
  %3801 = call float @dx.op.dot3.f32(i32 55, float %3746, float %3784, float %3785, float 0x3FD20DD760000000, float %3797, float %3800)  ; Dot3(ax,ay,az,bx,by,bz)
  %3802 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3717)  ; FMax(a,b)
  %3803 = call float @dx.op.dot3.f32(i32 55, float %3730, float %3733, float %3736, float %3730, float %3733, float %3736)  ; Dot3(ax,ay,az,bx,by,bz)
  %3804 = fcmp fast oeq float %3803, 0.000000e+00
  %3805 = fcmp fast oeq float %3802, 0.000000e+00
  %3806 = or i1 %3805, %3804
  br i1 %3806, label %3836, label %3807

; <label>:3807                                    ; preds = %3780
  %3808 = fsub fast float -0.000000e+00, %3736
  %3809 = fsub fast float -0.000000e+00, %3730
  %3810 = call float @dx.op.unary.f32(i32 24, float %3803)  ; Sqrt(value)
  %3811 = fdiv fast float %3810, %3802
  %3812 = fcmp fast ogt float %3811, 0x3FFB6F8900000000
  %3813 = select i1 %3812, float 0x3FFB6F8900000000, float %3811
  %3814 = fmul fast float %3813, 0x3FE8A23460000000
  %3815 = call float @dx.op.unary.f32(i32 7, float %3814)  ; Saturate(value)
  %3816 = call float @dx.op.binary.f32(i32 35, float %3813, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3817 = fmul fast float %3815, %3802
  %3818 = fmul fast float %3816, 0x3FF279A740000000
  %3819 = fadd fast float %3818, -1.000000e+00
  %3820 = call float @dx.op.dot3.f32(i32 55, float %3808, float %3809, float %3733, float %3808, float %3809, float %3733)  ; Dot3(ax,ay,az,bx,by,bz)
  %3821 = call float @dx.op.unary.f32(i32 25, float %3820)  ; Rsqrt(value)
  %3822 = fmul fast float %3821, %3808
  %3823 = fmul fast float %3821, %3809
  %3824 = fmul fast float %3821, %3733
  %3825 = fmul fast float %3819, %3819
  %3826 = fsub fast float 1.000000e+00, %3825
  %3827 = fmul fast float %3816, 0x40005F8BE0000000
  %3828 = fsub fast float 0x400C5BF8A0000000, %3827
  %3829 = fdiv fast float %3817, %3828
  %3830 = fmul fast float %3829, 0x3FEE31C3C0000000
  %3831 = fmul fast float %3830, %3826
  %3832 = fmul fast float %3816, 0x3FDACB7480000000
  %3833 = fadd fast float %3832, 0xBFD7347680000000
  %3834 = fmul fast float %3833, %3829
  %3835 = fmul fast float %3834, %3826
  br label %3836

; <label>:3836                                    ; preds = %3807, %3780
  %3837 = phi float [ %3822, %3807 ], [ 0.000000e+00, %3780 ]
  %3838 = phi float [ %3823, %3807 ], [ 0.000000e+00, %3780 ]
  %3839 = phi float [ %3824, %3807 ], [ 0.000000e+00, %3780 ]
  %3840 = phi float [ %3831, %3807 ], [ 0.000000e+00, %3780 ]
  %3841 = phi float [ %3835, %3807 ], [ 0.000000e+00, %3780 ]
  %3842 = call float @dx.op.dot3.f32(i32 55, float %3837, float %3838, float %3839, float %2730, float %2731, float %2732)  ; Dot3(ax,ay,az,bx,by,bz)
  %3843 = fmul fast float %3842, %3842
  %3844 = fmul fast float %3843, 0x3FEE471020000000
  %3845 = fadd fast float %3844, 0xBFD42F6020000000
  %3846 = fmul fast float %3802, 0x3FD20DD760000000
  %3847 = fmul fast float %3845, %3841
  %3848 = fmul fast float %3840, 0x3FDF454380000000
  %3849 = fmul fast float %3848, %3842
  %3850 = fadd fast float %3849, %3846
  %3851 = fadd fast float %3850, %3847
  %3852 = call float @dx.op.dot3.f32(i32 55, float %3837, float %3838, float %3839, float %2746, float %2747, float %2748)  ; Dot3(ax,ay,az,bx,by,bz)
  %3853 = fmul fast float %3852, 0x3FDF454380000000
  %3854 = fmul fast float %3852, %3852
  %3855 = fmul fast float %3854, 0x3FEE471020000000
  %3856 = fadd fast float %3855, 0xBFD42F6020000000
  %3857 = call float @dx.op.dot3.f32(i32 55, float %3802, float %3840, float %3841, float 0x3FD20DD760000000, float %3853, float %3856)  ; Dot3(ax,ay,az,bx,by,bz)
  %3858 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3718)  ; FMax(a,b)
  %3859 = call float @dx.op.dot3.f32(i32 55, float %3739, float %3742, float %3745, float %3739, float %3742, float %3745)  ; Dot3(ax,ay,az,bx,by,bz)
  %3860 = fcmp fast oeq float %3859, 0.000000e+00
  %3861 = fcmp fast oeq float %3858, 0.000000e+00
  %3862 = or i1 %3861, %3860
  br i1 %3862, label %3892, label %3863

; <label>:3863                                    ; preds = %3836
  %3864 = fsub fast float -0.000000e+00, %3745
  %3865 = fsub fast float -0.000000e+00, %3739
  %3866 = call float @dx.op.unary.f32(i32 24, float %3859)  ; Sqrt(value)
  %3867 = fdiv fast float %3866, %3858
  %3868 = fcmp fast ogt float %3867, 0x3FFB6F8900000000
  %3869 = select i1 %3868, float 0x3FFB6F8900000000, float %3867
  %3870 = fmul fast float %3869, 0x3FE8A23460000000
  %3871 = call float @dx.op.unary.f32(i32 7, float %3870)  ; Saturate(value)
  %3872 = call float @dx.op.binary.f32(i32 35, float %3869, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3873 = fmul fast float %3871, %3858
  %3874 = fmul fast float %3872, 0x3FF279A740000000
  %3875 = fadd fast float %3874, -1.000000e+00
  %3876 = call float @dx.op.dot3.f32(i32 55, float %3864, float %3865, float %3742, float %3864, float %3865, float %3742)  ; Dot3(ax,ay,az,bx,by,bz)
  %3877 = call float @dx.op.unary.f32(i32 25, float %3876)  ; Rsqrt(value)
  %3878 = fmul fast float %3877, %3864
  %3879 = fmul fast float %3877, %3865
  %3880 = fmul fast float %3877, %3742
  %3881 = fmul fast float %3875, %3875
  %3882 = fsub fast float 1.000000e+00, %3881
  %3883 = fmul fast float %3872, 0x40005F8BE0000000
  %3884 = fsub fast float 0x400C5BF8A0000000, %3883
  %3885 = fdiv fast float %3873, %3884
  %3886 = fmul fast float %3885, 0x3FEE31C3C0000000
  %3887 = fmul fast float %3886, %3882
  %3888 = fmul fast float %3872, 0x3FDACB7480000000
  %3889 = fadd fast float %3888, 0xBFD7347680000000
  %3890 = fmul fast float %3889, %3885
  %3891 = fmul fast float %3890, %3882
  br label %3892

; <label>:3892                                    ; preds = %3863, %3836
  %3893 = phi float [ %3878, %3863 ], [ 0.000000e+00, %3836 ]
  %3894 = phi float [ %3879, %3863 ], [ 0.000000e+00, %3836 ]
  %3895 = phi float [ %3880, %3863 ], [ 0.000000e+00, %3836 ]
  %3896 = phi float [ %3887, %3863 ], [ 0.000000e+00, %3836 ]
  %3897 = phi float [ %3891, %3863 ], [ 0.000000e+00, %3836 ]
  %3898 = call float @dx.op.dot3.f32(i32 55, float %3893, float %3894, float %3895, float %2730, float %2731, float %2732)  ; Dot3(ax,ay,az,bx,by,bz)
  %3899 = fmul fast float %3898, %3898
  %3900 = fmul fast float %3899, 0x3FEE471020000000
  %3901 = fadd fast float %3900, 0xBFD42F6020000000
  %3902 = fmul fast float %3858, 0x3FD20DD760000000
  %3903 = fmul fast float %3901, %3897
  %3904 = fmul fast float %3896, 0x3FDF454380000000
  %3905 = fmul fast float %3904, %3898
  %3906 = fadd fast float %3905, %3902
  %3907 = fadd fast float %3906, %3903
  %3908 = call float @dx.op.dot3.f32(i32 55, float %3893, float %3894, float %3895, float %2746, float %2747, float %2748)  ; Dot3(ax,ay,az,bx,by,bz)
  %3909 = fmul fast float %3908, 0x3FDF454380000000
  %3910 = fmul fast float %3908, %3908
  %3911 = fmul fast float %3910, 0x3FEE471020000000
  %3912 = fadd fast float %3911, 0xBFD42F6020000000
  %3913 = call float @dx.op.dot3.f32(i32 55, float %3858, float %3896, float %3897, float 0x3FD20DD760000000, float %3909, float %3912)  ; Dot3(ax,ay,az,bx,by,bz)
  %3914 = call float @dx.op.binary.f32(i32 35, float %3795, float 0.000000e+00)  ; FMax(a,b)
  %3915 = call float @dx.op.binary.f32(i32 35, float %3851, float 0.000000e+00)  ; FMax(a,b)
  %3916 = call float @dx.op.binary.f32(i32 35, float %3907, float 0.000000e+00)  ; FMax(a,b)
  %3917 = call float @dx.op.binary.f32(i32 35, float %3801, float 0.000000e+00)  ; FMax(a,b)
  %3918 = call float @dx.op.binary.f32(i32 35, float %3857, float 0.000000e+00)  ; FMax(a,b)
  %3919 = call float @dx.op.binary.f32(i32 35, float %3913, float 0.000000e+00)  ; FMax(a,b)
  %3920 = fsub fast float %3116, %3914
  %3921 = fsub fast float %3117, %3915
  %3922 = fsub fast float %3118, %3916
  %3923 = fmul fast float %3920, %2797
  %3924 = fmul fast float %3921, %2797
  %3925 = fmul fast float %3922, %2797
  %3926 = fadd fast float %3923, %3914
  %3927 = fadd fast float %3924, %3915
  %3928 = fadd fast float %3925, %3916
  %3929 = fsub fast float %3113, %3917
  %3930 = fsub fast float %3114, %3918
  %3931 = fsub fast float %3115, %3919
  %3932 = fmul fast float %3929, %2797
  %3933 = fmul fast float %3930, %2797
  %3934 = fmul fast float %3931, %2797
  %3935 = fadd fast float %3932, %3917
  %3936 = fadd fast float %3933, %3918
  %3937 = fadd fast float %3934, %3919
  br label %3938

; <label>:3938                                    ; preds = %3892, %3112
  %3939 = phi float [ %3935, %3892 ], [ %3113, %3112 ]
  %3940 = phi float [ %3936, %3892 ], [ %3114, %3112 ]
  %3941 = phi float [ %3937, %3892 ], [ %3115, %3112 ]
  %3942 = phi float [ %3926, %3892 ], [ %3116, %3112 ]
  %3943 = phi float [ %3927, %3892 ], [ %3117, %3112 ]
  %3944 = phi float [ %3928, %3892 ], [ %3118, %3112 ]
  %3945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3946 = extractvalue %dx.types.CBufRet.f32 %3945, 0
  %3947 = call float @dx.op.binary.f32(i32 36, float %2733, float %3946)  ; FMin(a,b)
  %3948 = fsub fast float 1.000000e+00, %2749
  %3949 = fmul fast float %3947, %3948
  %3950 = fsub fast float 1.000000e+00, %3949
  %3951 = bitcast float %3950 to i32
  %3952 = sub nsw i32 2129859010, %3951
  %3953 = bitcast i32 %3952 to float
  %3954 = call float @dx.op.binary.f32(i32 36, float %2734, float %3946)  ; FMin(a,b)
  %3955 = fmul fast float %3954, %3948
  %3956 = fsub fast float 1.000000e+00, %3955
  %3957 = bitcast float %3956 to i32
  %3958 = sub nsw i32 2129859010, %3957
  %3959 = bitcast i32 %3958 to float
  %3960 = call float @dx.op.binary.f32(i32 36, float %2735, float %3946)  ; FMin(a,b)
  %3961 = fmul fast float %3960, %3948
  %3962 = fsub fast float 1.000000e+00, %3961
  %3963 = bitcast float %3962 to i32
  %3964 = sub nsw i32 2129859010, %3963
  %3965 = bitcast i32 %3964 to float
  %3966 = fmul fast float %3942, %2749
  %3967 = fmul fast float %3966, %3953
  %3968 = fmul fast float %3943, %2749
  %3969 = fmul fast float %3968, %3959
  %3970 = fmul fast float %3944, %2749
  %3971 = fmul fast float %3970, %3965
  %3972 = call float @dx.op.binary.f32(i32 36, float %2727, float %3946)  ; FMin(a,b)
  %3973 = fmul fast float %3972, %3948
  %3974 = fsub fast float 1.000000e+00, %3973
  %3975 = bitcast float %3974 to i32
  %3976 = sub nsw i32 2129859010, %3975
  %3977 = bitcast i32 %3976 to float
  %3978 = call float @dx.op.binary.f32(i32 36, float %2728, float %3946)  ; FMin(a,b)
  %3979 = fmul fast float %3978, %3948
  %3980 = fsub fast float 1.000000e+00, %3979
  %3981 = bitcast float %3980 to i32
  %3982 = sub nsw i32 2129859010, %3981
  %3983 = bitcast i32 %3982 to float
  %3984 = call float @dx.op.binary.f32(i32 36, float %2738, float %3946)  ; FMin(a,b)
  %3985 = fmul fast float %3984, %3948
  %3986 = fsub fast float 1.000000e+00, %3985
  %3987 = bitcast float %3986 to i32
  %3988 = sub nsw i32 2129859010, %3987
  %3989 = bitcast i32 %3988 to float
  %3990 = fmul fast float %3939, %2749
  %3991 = fmul fast float %3990, %3977
  %3992 = fmul fast float %3940, %2749
  %3993 = fmul fast float %3992, %3983
  %3994 = fmul fast float %3941, %2749
  %3995 = fmul fast float %3994, %3989
  %3996 = call float @dx.op.dot3.f32(i32 55, float %3967, float %3969, float %3971, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3997 = select i1 %188, float 0.000000e+00, float %3967
  %3998 = select i1 %188, float %3996, float %3969
  %3999 = select i1 %188, float 0.000000e+00, float %3971
  %4000 = call float @dx.op.dot3.f32(i32 55, float %3991, float %3993, float %3995, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4001 = select i1 %188, float 0.000000e+00, float %3991
  %4002 = select i1 %188, float %4000, float %3993
  %4003 = select i1 %188, float 0.000000e+00, float %3995
  %4004 = fmul fast float %2740, 9.843750e-01
  %4005 = fmul fast float %2736, 9.843750e-01
  %4006 = fadd fast float %4004, 7.812500e-03
  %4007 = fadd fast float %4005, 7.812500e-03
  %4008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4006, float %4007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4009 = extractvalue %dx.types.ResRet.f32 %4008, 2
  %4010 = extractvalue %dx.types.ResRet.f32 %4008, 3
  %4011 = fmul fast float %4009, %2727
  %4012 = fmul fast float %4009, %2728
  %4013 = fmul fast float %4009, %2738
  %4014 = fadd fast float %4011, %4010
  %4015 = fadd fast float %4012, %4010
  %4016 = fadd fast float %4013, %4010
  %4017 = fcmp fast ogt float %2104, 0.000000e+00
  br i1 %4017, label %4018, label %4044

; <label>:4018                                    ; preds = %3938
  %4019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2104, float %2740, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4020 = extractvalue %dx.types.ResRet.f32 %4019, 0
  %4021 = extractvalue %dx.types.ResRet.f32 %4019, 1
  %4022 = extractvalue %dx.types.ResRet.f32 %4019, 2
  %4023 = fadd fast float %4020, -5.000000e-01
  %4024 = fadd fast float %4021, -5.000000e-01
  %4025 = fadd fast float %4022, -5.000000e-01
  %4026 = fsub fast float 1.000000e+00, %2727
  %4027 = fsub fast float 1.000000e+00, %2728
  %4028 = fsub fast float 1.000000e+00, %2738
  %4029 = fmul fast float %2727, 4.000000e+00
  %4030 = fmul fast float %4029, %4026
  %4031 = fmul fast float %4030, %4023
  %4032 = fmul fast float %2728, 4.000000e+00
  %4033 = fmul fast float %4032, %4027
  %4034 = fmul fast float %4033, %4024
  %4035 = fmul fast float %2738, 4.000000e+00
  %4036 = fmul fast float %4035, %4028
  %4037 = fmul fast float %4036, %4025
  %4038 = fadd fast float %4031, %4014
  %4039 = fadd fast float %4034, %4015
  %4040 = fadd fast float %4037, %4016
  %4041 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4042 = call float @dx.op.unary.f32(i32 7, float %4039)  ; Saturate(value)
  %4043 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  br label %4044

; <label>:4044                                    ; preds = %4018, %3938
  %4045 = phi float [ %4041, %4018 ], [ %4014, %3938 ]
  %4046 = phi float [ %4042, %4018 ], [ %4015, %3938 ]
  %4047 = phi float [ %4043, %4018 ], [ %4016, %3938 ]
  %4048 = call float @dx.op.binary.f32(i32 35, float %4046, float %4047)  ; FMax(a,b)
  %4049 = call float @dx.op.binary.f32(i32 35, float %4045, float %4048)  ; FMax(a,b)
  %4050 = fsub fast float 1.000000e+00, %4049
  %4051 = fmul fast float %4050, %3997
  %4052 = fmul fast float %4050, %3998
  %4053 = fmul fast float %4050, %3999
  %4054 = call float @dx.op.dot3.f32(i32 55, float %2733, float %2734, float %2735, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4055 = fcmp fast ogt float %4054, 0x3E7FF19E20000000
  %4056 = fdiv fast float 1.000000e+00, %4054
  %4057 = select i1 %4055, float %4056, float 0.000000e+00
  %4058 = fmul fast float %4057, %2733
  %4059 = fmul fast float %4057, %2734
  %4060 = fmul fast float %4057, %2735
  %4061 = fadd fast float %4058, -1.000000e+00
  %4062 = fadd fast float %4059, -1.000000e+00
  %4063 = fadd fast float %4060, -1.000000e+00
  %4064 = fmul fast float %4061, 5.000000e-01
  %4065 = fmul fast float %4062, 5.000000e-01
  %4066 = fmul fast float %4063, 5.000000e-01
  %4067 = fadd fast float %4064, 1.000000e+00
  %4068 = fadd fast float %4065, 1.000000e+00
  %4069 = fadd fast float %4066, 1.000000e+00
  %4070 = fmul fast float %4045, %4001
  %4071 = fmul fast float %4046, %4002
  %4072 = fmul fast float %4047, %4003
  %4073 = fsub fast float 1.000000e+00, %2740
  %4074 = bitcast float %4073 to i32
  %4075 = sitofp i32 %4074 to float
  %4076 = fmul fast float %4075, 5.000000e+00
  %4077 = fadd fast float %4076, 0xC1EFBF8940000000
  %4078 = fptosi float %4077 to i32
  %4079 = bitcast i32 %4078 to float
  %4080 = fmul fast float %4079, %2103
  %4081 = fmul fast float %3997, %4080
  %4082 = fmul fast float %4081, %4050
  %4083 = fmul fast float %4082, %4067
  %4084 = fmul fast float %3998, %4080
  %4085 = fmul fast float %4084, %4050
  %4086 = fmul fast float %4085, %4068
  %4087 = fmul fast float %3999, %4080
  %4088 = fmul fast float %4087, %4050
  %4089 = fmul fast float %4088, %4069
  %4090 = fmul fast float %4051, %2124
  %4091 = fmul fast float %4052, %2124
  %4092 = fmul fast float %4053, %2124
  %4093 = fadd fast float %4070, %2105
  %4094 = fadd fast float %4093, %4083
  %4095 = fmul fast float %4094, %2124
  %4096 = fadd fast float %4071, %2106
  %4097 = fadd fast float %4096, %4086
  %4098 = fmul fast float %4097, %2124
  %4099 = fadd fast float %4072, %2107
  %4100 = fadd fast float %4099, %4089
  %4101 = fmul fast float %4100, %2124
  %4102 = bitcast i32 %2752 to float
  %4103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4104 = extractvalue %dx.types.CBufRet.f32 %4103, 3
  %4105 = fcmp fast oeq float %4104, 0.000000e+00
  br i1 %4105, label %4333, label %4106

; <label>:4106                                    ; preds = %4044
  %4107 = extractvalue %dx.types.CBufRet.f32 %4103, 0
  %4108 = extractvalue %dx.types.CBufRet.f32 %4103, 1
  %4109 = extractvalue %dx.types.CBufRet.f32 %4103, 2
  %4110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.f32 %4110, 0
  %4112 = extractvalue %dx.types.CBufRet.f32 %4110, 1
  %4113 = extractvalue %dx.types.CBufRet.f32 %4110, 2
  %4114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4115 = extractvalue %dx.types.CBufRet.f32 %4114, 0
  %4116 = extractvalue %dx.types.CBufRet.f32 %4114, 1
  %4117 = call float @dx.op.dot3.f32(i32 55, float %4111, float %4112, float %4113, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4118 = select i1 %188, float %4115, float %4111
  %4119 = select i1 %188, float %4117, float %4112
  %4120 = select i1 %188, float %4116, float %4113
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 1
  %4123 = fcmp fast une float %4122, 0.000000e+00
  br i1 %4123, label %4124, label %4141

; <label>:4124                                    ; preds = %4106
  %4125 = fptoui float %70 to i32
  %4126 = fptoui float %71 to i32
  %4127 = lshr i32 %4125, 4
  %4128 = lshr i32 %4126, 4
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 0
  %4131 = fptoui float %4130 to i32
  %4132 = add i32 %4131, 15
  %4133 = lshr i32 %4132, 4
  %4134 = mul i32 %4133, %4128
  %4135 = add i32 %4134, %4127
  %4136 = shl i32 %4135, 3
  %4137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4136, i32 undef)  ; BufferLoad(srv,index,wot)
  %4138 = extractvalue %dx.types.ResRet.i32 %4137, 0
  %4139 = and i32 %4138, -268435456
  %4140 = icmp eq i32 %4139, -1342177280
  br i1 %4140, label %4151, label %4141

; <label>:4141                                    ; preds = %4124, %4106
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 2
  %4144 = extractvalue %dx.types.CBufRet.f32 %4142, 3
  %4145 = fmul fast float %4143, %70
  %4146 = fmul fast float %4144, %71
  %4147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %4145, float %4146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4148 = extractvalue %dx.types.ResRet.f32 %4147, 0
  %4149 = extractvalue %dx.types.ResRet.f32 %4147, 1
  %4150 = extractvalue %dx.types.ResRet.f32 %4147, 2
  br label %4151

; <label>:4151                                    ; preds = %4141, %4124
  %4152 = phi float [ %4148, %4141 ], [ 0.000000e+00, %4124 ]
  %4153 = phi float [ %4149, %4141 ], [ 0.000000e+00, %4124 ]
  %4154 = phi float [ %4150, %4141 ], [ 0.000000e+00, %4124 ]
  %4155 = call float @dx.op.binary.f32(i32 36, float %4153, float %4154)  ; FMin(a,b)
  %4156 = call float @dx.op.binary.f32(i32 36, float %4152, float %4155)  ; FMin(a,b)
  %4157 = fcmp fast ogt float %4156, 0.000000e+00
  br i1 %4157, label %4158, label %4333, !dx.controlflow.hints !86

; <label>:4158                                    ; preds = %4151
  %4159 = fmul fast float %4152, %4118
  %4160 = fmul fast float %4153, %4119
  %4161 = fmul fast float %4154, %4120
  %4162 = fsub fast float %4107, %2726
  %4163 = fsub fast float %4108, %2725
  %4164 = fsub fast float %4109, %2724
  %4165 = call float @dx.op.dot3.f32(i32 55, float %4162, float %4163, float %4164, float %4162, float %4163, float %4164)  ; Dot3(ax,ay,az,bx,by,bz)
  %4166 = call float @dx.op.unary.f32(i32 25, float %4165)  ; Rsqrt(value)
  %4167 = fmul fast float %4166, %4162
  %4168 = fmul fast float %4166, %4163
  %4169 = fmul fast float %4166, %4164
  %4170 = call float @dx.op.dot3.f32(i32 55, float %4107, float %4108, float %4109, float %2730, float %2731, float %2732)  ; Dot3(ax,ay,az,bx,by,bz)
  %4171 = call float @dx.op.dot3.f32(i32 55, float %2723, float %2722, float %2721, float %4167, float %4168, float %4169)  ; Dot3(ax,ay,az,bx,by,bz)
  %4172 = call float @dx.op.unary.f32(i32 7, float %4170)  ; Saturate(value)
  %4173 = fmul fast float %4172, %4172
  %4174 = fmul fast float %4173, %4102
  %4175 = call float @dx.op.unary.f32(i32 7, float %4174)  ; Saturate(value)
  %4176 = fmul fast float %4175, %4172
  %4177 = call float @dx.op.dot3.f32(i32 55, float %2730, float %2731, float %2732, float %4167, float %4168, float %4169)  ; Dot3(ax,ay,az,bx,by,bz)
  %4178 = fmul fast float %4177, %4177
  %4179 = call float @dx.op.unary.f32(i32 6, float %4170)  ; FAbs(value)
  %4180 = fsub fast float 1.000000e+00, %2736
  %4181 = call float @dx.op.binary.f32(i32 35, float %4180, float 0x3F847AE140000000)  ; FMax(a,b)
  %4182 = fmul fast float %4181, %4181
  %4183 = fmul fast float %4182, %4182
  %4184 = fsub fast float 1.000000e+00, %4183
  %4185 = fmul fast float %2740, %2740
  %4186 = fmul fast float %4185, %4184
  %4187 = fadd fast float %4186, %4183
  %4188 = bitcast float %4187 to i32
  %4189 = ashr i32 %4188, 1
  %4190 = add nsw i32 %4189, 532487669
  %4191 = bitcast i32 %4190 to float
  %4192 = fadd fast float %4191, %2740
  %4193 = fmul fast float %4183, %4178
  %4194 = fsub fast float 1.000000e+00, %4178
  %4195 = fadd fast float %4194, %4193
  %4196 = fmul fast float %4179, %4179
  %4197 = fmul fast float %4196, %4184
  %4198 = fadd fast float %4197, %4183
  %4199 = bitcast float %4198 to i32
  %4200 = ashr i32 %4199, 1
  %4201 = add nsw i32 %4200, 532487669
  %4202 = bitcast i32 %4201 to float
  %4203 = fadd fast float %4202, %4179
  %4204 = fmul fast float %4195, %4195
  %4205 = fmul fast float %4204, %4192
  %4206 = fmul fast float %4205, %4203
  %4207 = fdiv fast float 0x3FF0A00000000000, %4206
  %4208 = fmul fast float %4207, %4183
  %4209 = call float @dx.op.unary.f32(i32 6, float %4171)  ; FAbs(value)
  %4210 = fsub fast float 1.000000e+00, %4209
  %4211 = bitcast float %4210 to i32
  %4212 = sitofp i32 %4211 to float
  %4213 = fmul fast float %4212, 5.000000e+00
  %4214 = fadd fast float %4213, 0xC1EFBF8940000000
  %4215 = fptosi float %4214 to i32
  %4216 = bitcast i32 %4215 to float
  %4217 = fsub fast float 1.000000e+00, %2727
  %4218 = fsub fast float 1.000000e+00, %2728
  %4219 = fsub fast float 1.000000e+00, %2738
  %4220 = fmul fast float %4216, %4217
  %4221 = fmul fast float %4216, %4218
  %4222 = fmul fast float %4216, %4219
  %4223 = fadd fast float %4220, %2727
  %4224 = fadd fast float %4221, %2728
  %4225 = fadd fast float %4222, %2738
  br i1 %4017, label %4226, label %4249

; <label>:4226                                    ; preds = %4158
  %4227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2104, float %4209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4228 = extractvalue %dx.types.ResRet.f32 %4227, 0
  %4229 = extractvalue %dx.types.ResRet.f32 %4227, 1
  %4230 = extractvalue %dx.types.ResRet.f32 %4227, 2
  %4231 = fadd fast float %4228, -5.000000e-01
  %4232 = fadd fast float %4229, -5.000000e-01
  %4233 = fadd fast float %4230, -5.000000e-01
  %4234 = fmul fast float %2727, 4.000000e+00
  %4235 = fmul fast float %4234, %4217
  %4236 = fmul fast float %4235, %4231
  %4237 = fmul fast float %2728, 4.000000e+00
  %4238 = fmul fast float %4237, %4218
  %4239 = fmul fast float %4238, %4232
  %4240 = fmul fast float %2738, 4.000000e+00
  %4241 = fmul fast float %4240, %4219
  %4242 = fmul fast float %4241, %4233
  %4243 = fadd fast float %4236, %4223
  %4244 = fadd fast float %4239, %4224
  %4245 = fadd fast float %4242, %4225
  %4246 = call float @dx.op.unary.f32(i32 7, float %4243)  ; Saturate(value)
  %4247 = call float @dx.op.unary.f32(i32 7, float %4244)  ; Saturate(value)
  %4248 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  br label %4249

; <label>:4249                                    ; preds = %4226, %4158
  %4250 = phi float [ %4246, %4226 ], [ %4223, %4158 ]
  %4251 = phi float [ %4247, %4226 ], [ %4224, %4158 ]
  %4252 = phi float [ %4248, %4226 ], [ %4225, %4158 ]
  %4253 = fmul fast float %4170, 9.843750e-01
  %4254 = fadd fast float %4253, 7.812500e-03
  %4255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4254, float %4007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4256 = extractvalue %dx.types.ResRet.f32 %4255, 2
  %4257 = extractvalue %dx.types.ResRet.f32 %4255, 3
  %4258 = fmul fast float %4256, %2727
  %4259 = fmul fast float %4256, %2728
  %4260 = fmul fast float %4256, %2738
  %4261 = fadd fast float %4258, %4257
  %4262 = fadd fast float %4259, %4257
  %4263 = fadd fast float %4260, %4257
  br i1 %4017, label %4264, label %4287

; <label>:4264                                    ; preds = %4249
  %4265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2104, float %4170, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4266 = extractvalue %dx.types.ResRet.f32 %4265, 0
  %4267 = extractvalue %dx.types.ResRet.f32 %4265, 1
  %4268 = extractvalue %dx.types.ResRet.f32 %4265, 2
  %4269 = fadd fast float %4266, -5.000000e-01
  %4270 = fadd fast float %4267, -5.000000e-01
  %4271 = fadd fast float %4268, -5.000000e-01
  %4272 = fmul fast float %2727, 4.000000e+00
  %4273 = fmul fast float %4272, %4217
  %4274 = fmul fast float %4273, %4269
  %4275 = fmul fast float %2728, 4.000000e+00
  %4276 = fmul fast float %4275, %4218
  %4277 = fmul fast float %4276, %4270
  %4278 = fmul fast float %2738, 4.000000e+00
  %4279 = fmul fast float %4278, %4219
  %4280 = fmul fast float %4279, %4271
  %4281 = fadd fast float %4274, %4261
  %4282 = fadd fast float %4277, %4262
  %4283 = fadd fast float %4280, %4263
  %4284 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4285 = call float @dx.op.unary.f32(i32 7, float %4282)  ; Saturate(value)
  %4286 = call float @dx.op.unary.f32(i32 7, float %4283)  ; Saturate(value)
  br label %4287

; <label>:4287                                    ; preds = %4264, %4249
  %4288 = phi float [ %4284, %4264 ], [ %4261, %4249 ]
  %4289 = phi float [ %4285, %4264 ], [ %4262, %4249 ]
  %4290 = phi float [ %4286, %4264 ], [ %4263, %4249 ]
  %4291 = call float @dx.op.binary.f32(i32 35, float %4289, float %4290)  ; FMax(a,b)
  %4292 = call float @dx.op.binary.f32(i32 35, float %4288, float %4291)  ; FMax(a,b)
  %4293 = fsub fast float 1.000000e+00, %4292
  %4294 = fmul fast float %4250, %4208
  %4295 = fmul fast float %4251, %4208
  %4296 = fmul fast float %4252, %4208
  %4297 = fsub fast float 1.000000e+00, %4171
  %4298 = bitcast float %4297 to i32
  %4299 = sitofp i32 %4298 to float
  %4300 = fmul fast float %4299, 5.000000e+00
  %4301 = fadd fast float %4300, 0xC1EFBF8940000000
  %4302 = fptosi float %4301 to i32
  %4303 = bitcast i32 %4302 to float
  %4304 = fmul fast float %4303, %2103
  %4305 = fmul fast float %4293, %4304
  %4306 = fmul fast float %4305, %4067
  %4307 = fmul fast float %4305, %4068
  %4308 = fmul fast float %4305, %4069
  %4309 = fadd fast float %4306, %4294
  %4310 = fadd fast float %4307, %4295
  %4311 = fadd fast float %4308, %4296
  %4312 = fmul fast float %4176, %4159
  %4313 = fmul fast float %4312, %4293
  %4314 = fmul fast float %4176, %4160
  %4315 = fmul fast float %4314, %4293
  %4316 = fmul fast float %4176, %4161
  %4317 = fmul fast float %4316, %4293
  %4318 = fmul fast float %4312, %4309
  %4319 = fmul fast float %4314, %4310
  %4320 = fmul fast float %4316, %4311
  %4321 = fadd fast float %4313, %4051
  %4322 = fmul fast float %4321, %2124
  %4323 = fadd fast float %4315, %4052
  %4324 = fmul fast float %4323, %2124
  %4325 = fadd fast float %4317, %4053
  %4326 = fmul fast float %4325, %2124
  %4327 = fadd fast float %4318, %4094
  %4328 = fmul fast float %4327, %2124
  %4329 = fadd fast float %4319, %4097
  %4330 = fmul fast float %4329, %2124
  %4331 = fadd fast float %4320, %4100
  %4332 = fmul fast float %4331, %2124
  br label %4333

; <label>:4333                                    ; preds = %4287, %4151, %4044
  %4334 = phi float [ %4095, %4044 ], [ %4095, %4151 ], [ %4328, %4287 ]
  %4335 = phi float [ %4098, %4044 ], [ %4098, %4151 ], [ %4330, %4287 ]
  %4336 = phi float [ %4101, %4044 ], [ %4101, %4151 ], [ %4332, %4287 ]
  %4337 = phi float [ %4090, %4044 ], [ %4090, %4151 ], [ %4322, %4287 ]
  %4338 = phi float [ %4091, %4044 ], [ %4091, %4151 ], [ %4324, %4287 ]
  %4339 = phi float [ %4092, %4044 ], [ %4092, %4151 ], [ %4326, %4287 ]
  %4340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4341 = extractvalue %dx.types.CBufRet.i32 %4340, 0
  %4342 = icmp eq i32 %4341, 0
  br i1 %4342, label %4777, label %4343

; <label>:4343                                    ; preds = %4333
  %4344 = fptoui float %70 to i32
  %4345 = fptoui float %71 to i32
  %4346 = lshr i32 %4344, 4
  %4347 = lshr i32 %4345, 4
  %4348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.i32 %4348, 0
  %4350 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4347, i32 %4349, i32 %4346)  ; UMad(a,b,c)
  %4351 = add nsw i32 %4341, -1
  %4352 = call i32 @dx.op.binary.i32(i32 37, i32 %4351, i32 0)  ; IMax(a,b)
  %4353 = call float @dx.op.binary.f32(i32 35, float %65, float 0.000000e+00)  ; FMax(a,b)
  %4354 = fptoui float %4353 to i32
  %4355 = lshr i32 %4354, 5
  %4356 = call i32 @dx.op.binary.i32(i32 40, i32 %4355, i32 8191)  ; UMin(a,b)
  %4357 = shl i32 %4356, 2
  %4358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4357, i32 undef)  ; BufferLoad(srv,index,wot)
  %4359 = extractvalue %dx.types.ResRet.i32 %4358, 0
  %4360 = lshr i32 %4359, 16
  %4361 = and i32 %4359, 65535
  %4362 = lshr i32 %4359, 21
  %4363 = lshr i32 %4361, 5
  %4364 = call i32 @dx.op.binary.i32(i32 40, i32 %4363, i32 %4352)  ; UMin(a,b)
  %4365 = icmp ugt i32 %4362, %4364
  br i1 %4365, label %4777, label %4366

; <label>:4366                                    ; preds = %4343
  br label %4367

; <label>:4367                                    ; preds = %4767, %4366
  %4368 = phi i32 [ %4774, %4767 ], [ %4362, %4366 ]
  %4369 = phi float [ %4768, %4767 ], [ %4334, %4366 ]
  %4370 = phi float [ %4769, %4767 ], [ %4335, %4366 ]
  %4371 = phi float [ %4770, %4767 ], [ %4336, %4366 ]
  %4372 = phi float [ %4771, %4767 ], [ %4337, %4366 ]
  %4373 = phi float [ %4772, %4767 ], [ %4338, %4366 ]
  %4374 = phi float [ %4773, %4767 ], [ %4339, %4366 ]
  %4375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4376 = extractvalue %dx.types.CBufRet.i32 %4375, 0
  %4377 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4350, i32 %4376, i32 %4368)  ; UMad(a,b,c)
  %4378 = shl i32 %4377, 2
  %4379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4378, i32 undef)  ; BufferLoad(srv,index,wot)
  %4380 = extractvalue %dx.types.ResRet.i32 %4379, 0
  %4381 = shl i32 %4368, 5
  %4382 = sub nsw i32 %4360, %4381
  %4383 = call i32 @dx.op.binary.i32(i32 37, i32 %4382, i32 0)  ; IMax(a,b)
  %4384 = call i32 @dx.op.binary.i32(i32 38, i32 %4383, i32 31)  ; IMin(a,b)
  %4385 = sub nsw i32 1, %4360
  %4386 = add nsw i32 %4385, %4361
  %4387 = call i32 @dx.op.binary.i32(i32 37, i32 %4386, i32 0)  ; IMax(a,b)
  %4388 = call i32 @dx.op.binary.i32(i32 38, i32 %4387, i32 32)  ; IMin(a,b)
  %4389 = and i32 %4388, 31
  %4390 = shl i32 -1, %4389
  %4391 = xor i32 %4390, -1
  %4392 = and i32 %4384, 31
  %4393 = shl i32 %4391, %4392
  %4394 = icmp eq i32 %4388, 32
  %4395 = select i1 %4394, i32 -1, i32 %4393
  %4396 = and i32 %4395, %4380
  %4397 = icmp eq i32 %4396, 0
  br i1 %4397, label %4767, label %4398

; <label>:4398                                    ; preds = %4367
  br label %4399

; <label>:4399                                    ; preds = %4479, %4398
  %4400 = phi i32 [ %4411, %4479 ], [ %4396, %4398 ]
  %4401 = phi float [ %4480, %4479 ], [ %4369, %4398 ]
  %4402 = phi float [ %4481, %4479 ], [ %4370, %4398 ]
  %4403 = phi float [ %4482, %4479 ], [ %4371, %4398 ]
  %4404 = phi float [ %4483, %4479 ], [ %4372, %4398 ]
  %4405 = phi float [ %4484, %4479 ], [ %4373, %4398 ]
  %4406 = phi float [ %4485, %4479 ], [ %4374, %4398 ]
  %4407 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4400)  ; FirstbitLo(value)
  %4408 = add i32 %4407, %4381
  %4409 = and i32 %4407, 31
  %4410 = shl i32 1, %4409
  %4411 = xor i32 %4410, %4400
  %4412 = mul i32 %4408, 112
  %4413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4414 = extractvalue %dx.types.ResRet.f32 %4413, 0
  %4415 = extractvalue %dx.types.ResRet.f32 %4413, 1
  %4416 = extractvalue %dx.types.ResRet.f32 %4413, 2
  %4417 = or i32 %4412, 12
  %4418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4417, i32 undef)  ; BufferLoad(srv,index,wot)
  %4419 = extractvalue %dx.types.ResRet.f32 %4418, 0
  %4420 = add i32 %4412, 44
  %4421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4420, i32 undef)  ; BufferLoad(srv,index,wot)
  %4422 = extractvalue %dx.types.ResRet.f32 %4421, 0
  %4423 = add i32 %4412, 48
  %4424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4423, i32 undef)  ; BufferLoad(srv,index,wot)
  %4425 = extractvalue %dx.types.ResRet.f32 %4424, 0
  %4426 = extractvalue %dx.types.ResRet.f32 %4424, 1
  %4427 = extractvalue %dx.types.ResRet.f32 %4424, 2
  %4428 = add i32 %4412, 80
  %4429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4428, i32 undef)  ; BufferLoad(srv,index,wot)
  %4430 = extractvalue %dx.types.ResRet.f32 %4429, 1
  %4431 = extractvalue %dx.types.ResRet.f32 %4429, 2
  %4432 = call float @dx.op.dot3.f32(i32 55, float %4414, float %4415, float %4416, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4433 = select i1 %188, float %4430, float %4414
  %4434 = select i1 %188, float %4432, float %4415
  %4435 = select i1 %188, float %4431, float %4416
  %4436 = fsub fast float %4425, %117
  %4437 = fsub fast float %4426, %118
  %4438 = fsub fast float %4427, %119
  %4439 = call float @dx.op.dot3.f32(i32 55, float %4436, float %4437, float %4438, float %4436, float %4437, float %4438)  ; Dot3(ax,ay,az,bx,by,bz)
  %4440 = call float @dx.op.unary.f32(i32 24, float %4439)  ; Sqrt(value)
  %4441 = fdiv fast float 1.000000e+00, %4440
  %4442 = fmul fast float %4441, %4436
  %4443 = fmul fast float %4441, %4437
  %4444 = fmul fast float %4441, %4438
  %4445 = fadd fast float %4440, %4419
  %4446 = fdiv fast float 1.000000e+00, %4445
  %4447 = fmul float %4422, %4446
  %4448 = fmul float %4447, %4447
  %4449 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4450 = and i32 %4410, %4396
  %4451 = icmp eq i32 %4450, 0
  br i1 %4451, label %4474, label %4452, !dx.controlflow.hints !87

; <label>:4452                                    ; preds = %4399
  %4453 = lshr i32 %4344, 5
  %4454 = lshr i32 %4345, 5
  %4455 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %4453, i32 %4454, i32 %4408, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4456 = extractvalue %dx.types.ResRet.i32 %4455, 0
  %4457 = and i32 %4456, 3
  %4458 = icmp eq i32 %4457, 0
  %4459 = select i1 %4458, float 1.000000e+00, float 0.000000e+00
  %4460 = icmp eq i32 %4457, 3
  br i1 %4460, label %4461, label %4474

; <label>:4461                                    ; preds = %4452
  %4462 = lshr i32 %4456, 10
  %4463 = and i32 %4462, 8160
  %4464 = and i32 %4345, 31
  %4465 = or i32 %4463, %4464
  %4466 = lshr i32 %4456, 1
  %4467 = and i32 %4466, 16352
  %4468 = and i32 %4344, 31
  %4469 = or i32 %4467, %4468
  %4470 = lshr i32 %4456, 23
  %4471 = and i32 %4470, 255
  %4472 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %4469, i32 %4465, i32 %4471, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4473 = extractvalue %dx.types.ResRet.f32 %4472, 0
  br label %4474

; <label>:4474                                    ; preds = %4461, %4452, %4399
  %4475 = phi float [ %4473, %4461 ], [ %4459, %4452 ], [ 0.000000e+00, %4399 ]
  %4476 = call float @dx.op.binary.f32(i32 36, float %4475, float %4475)  ; FMin(a,b)
  %4477 = call float @dx.op.binary.f32(i32 36, float %4475, float %4476)  ; FMin(a,b)
  %4478 = fcmp fast ogt float %4477, 0.000000e+00
  br i1 %4478, label %4487, label %4479, !dx.controlflow.hints !88

; <label>:4479                                    ; preds = %4723, %4474
  %4480 = phi float [ %4401, %4474 ], [ %4763, %4723 ]
  %4481 = phi float [ %4402, %4474 ], [ %4764, %4723 ]
  %4482 = phi float [ %4403, %4474 ], [ %4765, %4723 ]
  %4483 = phi float [ %4404, %4474 ], [ %4757, %4723 ]
  %4484 = phi float [ %4405, %4474 ], [ %4758, %4723 ]
  %4485 = phi float [ %4406, %4474 ], [ %4759, %4723 ]
  %4486 = icmp eq i32 %4400, %4410
  br i1 %4486, label %4766, label %4399

; <label>:4487                                    ; preds = %4474
  %4488 = fmul fast float %4475, %4433
  %4489 = fmul fast float %4475, %4434
  %4490 = fmul fast float %4475, %4435
  %4491 = fsub fast float %4427, %2526
  %4492 = fcmp fast ogt float %4491, 0.000000e+00
  %4493 = fsub fast float %119, %2526
  %4494 = fcmp fast ogt float %4493, 0.000000e+00
  %4495 = xor i1 %4494, %4492
  %4496 = fsub fast float %2526, %4427
  %4497 = fmul fast float %4496, 2.000000e+00
  %4498 = fadd fast float %4497, %4427
  %4499 = select i1 %4495, float %4427, float %4498
  %4500 = fsub fast float %4499, %119
  %4501 = call float @dx.op.dot3.f32(i32 55, float %4436, float %4437, float %4500, float %4436, float %4437, float %4500)  ; Dot3(ax,ay,az,bx,by,bz)
  %4502 = call float @dx.op.unary.f32(i32 25, float %4501)  ; Rsqrt(value)
  %4503 = fmul fast float %4502, %4436
  %4504 = fmul fast float %4502, %4437
  %4505 = fmul fast float %4502, %4500
  %4506 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2534)  ; Dot3(ax,ay,az,bx,by,bz)
  %4507 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4503, float %4504, float %4505)  ; Dot3(ax,ay,az,bx,by,bz)
  %4508 = fdiv fast float 1.000000e+00, %4507
  %4509 = fmul fast float %4508, %4506
  %4510 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4493, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4511 = fcmp fast ogt float %4510, 0.000000e+00
  %4512 = fcmp fast olt float %4510, 0.000000e+00
  %4513 = zext i1 %4511 to i32
  %4514 = zext i1 %4512 to i32
  %4515 = sub nsw i32 %4513, %4514
  %4516 = sitofp i32 %4515 to float
  %4517 = fsub fast float %4499, %2526
  %4518 = call float @dx.op.dot3.f32(i32 55, float %4436, float %4437, float %4517, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4519 = fcmp fast ogt float %4518, 0.000000e+00
  %4520 = fcmp fast olt float %4518, 0.000000e+00
  %4521 = zext i1 %4519 to i32
  %4522 = zext i1 %4520 to i32
  %4523 = sub nsw i32 %4521, %4522
  %4524 = sitofp i32 %4523 to float
  %4525 = fcmp fast une float %4516, %4524
  br i1 %4525, label %4526, label %4536

; <label>:4526                                    ; preds = %4487
  %4527 = fmul fast float %4509, %4505
  %4528 = fmul fast float %4509, %4504
  %4529 = fmul fast float %4509, %4503
  %4530 = fmul fast float %4529, %4529
  %4531 = fmul fast float %4528, %4528
  %4532 = fadd fast float %4530, %4531
  %4533 = fmul fast float %4527, %4527
  %4534 = fadd fast float %4532, %4533
  %4535 = call float @dx.op.unary.f32(i32 24, float %4534)  ; Sqrt(value)
  br label %4548

; <label>:4536                                    ; preds = %4487
  %4537 = icmp slt i32 %4515, 0
  br i1 %4537, label %4538, label %4548

; <label>:4538                                    ; preds = %4536
  %4539 = fsub fast float %117, %4425
  %4540 = fsub fast float %118, %4426
  %4541 = fsub fast float %119, %4499
  %4542 = fmul fast float %4539, %4539
  %4543 = fmul fast float %4540, %4540
  %4544 = fadd fast float %4542, %4543
  %4545 = fmul fast float %4541, %4541
  %4546 = fadd fast float %4544, %4545
  %4547 = call float @dx.op.unary.f32(i32 24, float %4546)  ; Sqrt(value)
  br label %4548

; <label>:4548                                    ; preds = %4538, %4536, %4526
  %4549 = phi float [ %4535, %4526 ], [ %4547, %4538 ], [ 0.000000e+00, %4536 ]
  %4550 = and i1 %4494, %4492
  %4551 = fsub fast float -0.000000e+00, %4549
  %4552 = select i1 %4550, float -0.000000e+00, float %4551
  %4553 = fmul fast float %2527, 0x3FF7154760000000
  %4554 = fmul fast float %4553, %4552
  %4555 = fmul fast float %2528, 0x3FF7154760000000
  %4556 = fmul fast float %4555, %4552
  %4557 = fmul fast float %2529, 0x3FF7154760000000
  %4558 = fmul fast float %4557, %4552
  %4559 = call float @dx.op.unary.f32(i32 21, float %4554)  ; Exp(value)
  %4560 = call float @dx.op.unary.f32(i32 21, float %4556)  ; Exp(value)
  %4561 = call float @dx.op.unary.f32(i32 21, float %4558)  ; Exp(value)
  %4562 = call float @dx.op.unary.f32(i32 7, float %4559)  ; Saturate(value)
  %4563 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4564 = call float @dx.op.unary.f32(i32 7, float %4561)  ; Saturate(value)
  %4565 = fmul fast float %4488, %4562
  %4566 = fmul fast float %4489, %4563
  %4567 = fmul fast float %4490, %4564
  %4568 = fsub fast float %4442, %2726
  %4569 = fsub fast float %4443, %2725
  %4570 = fsub fast float %4444, %2724
  %4571 = call float @dx.op.dot3.f32(i32 55, float %4568, float %4569, float %4570, float %4568, float %4569, float %4570)  ; Dot3(ax,ay,az,bx,by,bz)
  %4572 = call float @dx.op.unary.f32(i32 25, float %4571)  ; Rsqrt(value)
  %4573 = fmul fast float %4572, %4568
  %4574 = fmul fast float %4572, %4569
  %4575 = fmul fast float %4572, %4570
  %4576 = call float @dx.op.dot3.f32(i32 55, float %4442, float %4443, float %4444, float %2730, float %2731, float %2732)  ; Dot3(ax,ay,az,bx,by,bz)
  %4577 = call float @dx.op.dot3.f32(i32 55, float %2723, float %2722, float %2721, float %4573, float %4574, float %4575)  ; Dot3(ax,ay,az,bx,by,bz)
  %4578 = call float @dx.op.unary.f32(i32 7, float %4576)  ; Saturate(value)
  %4579 = fmul fast float %4578, %4449
  %4580 = fmul fast float %4578, %4578
  %4581 = fmul fast float %4580, %4102
  %4582 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4583 = fmul fast float %4579, %4582
  %4584 = bitcast float %4439 to i32
  %4585 = ashr i32 %4584, 1
  %4586 = sub nsw i32 1597463007, %4585
  %4587 = bitcast i32 %4586 to float
  %4588 = fmul fast float %4587, %4436
  %4589 = fmul fast float %4587, %4437
  %4590 = fmul fast float %4587, %4438
  %4591 = fsub fast float %4588, %2726
  %4592 = fsub fast float %4589, %2725
  %4593 = fsub fast float %4590, %2724
  %4594 = call float @dx.op.dot3.f32(i32 55, float %4591, float %4592, float %4593, float %4591, float %4592, float %4593)  ; Dot3(ax,ay,az,bx,by,bz)
  %4595 = call float @dx.op.unary.f32(i32 25, float %4594)  ; Rsqrt(value)
  %4596 = fmul fast float %4591, %4595
  %4597 = fmul fast float %4592, %4595
  %4598 = fmul fast float %4593, %4595
  %4599 = call float @dx.op.dot3.f32(i32 55, float %2730, float %2731, float %2732, float %4596, float %4597, float %4598)  ; Dot3(ax,ay,az,bx,by,bz)
  %4600 = fmul fast float %4599, %4599
  %4601 = call float @dx.op.unary.f32(i32 6, float %4576)  ; FAbs(value)
  %4602 = fsub fast float 1.000000e+00, %2736
  %4603 = call float @dx.op.binary.f32(i32 35, float %4602, float 0x3F847AE140000000)  ; FMax(a,b)
  %4604 = fmul fast float %4603, %4603
  %4605 = fmul fast float %4604, %4604
  %4606 = fsub fast float 1.000000e+00, %4605
  %4607 = fmul fast float %2740, %2740
  %4608 = fmul fast float %4607, %4606
  %4609 = fadd fast float %4608, %4605
  %4610 = bitcast float %4609 to i32
  %4611 = ashr i32 %4610, 1
  %4612 = add nsw i32 %4611, 532487669
  %4613 = bitcast i32 %4612 to float
  %4614 = fadd fast float %4613, %2740
  %4615 = fmul fast float %4605, %4600
  %4616 = fsub fast float 1.000000e+00, %4600
  %4617 = fadd fast float %4616, %4615
  %4618 = fmul fast float %4601, %4601
  %4619 = fmul fast float %4618, %4606
  %4620 = fadd fast float %4619, %4605
  %4621 = bitcast float %4620 to i32
  %4622 = ashr i32 %4621, 1
  %4623 = add nsw i32 %4622, 532487669
  %4624 = bitcast i32 %4623 to float
  %4625 = fadd fast float %4624, %4601
  %4626 = fmul fast float %4617, %4617
  %4627 = fmul fast float %4626, %4614
  %4628 = fmul fast float %4627, %4625
  %4629 = fdiv fast float 1.000000e+00, %4628
  %4630 = bitcast float %4605 to i32
  %4631 = sitofp i32 %4630 to float
  %4632 = fmul fast float %4631, 0x3FE7F73180000000
  %4633 = fadd fast float %4632, 0x41AFE27C40000000
  %4634 = fptosi float %4633 to i32
  %4635 = bitcast i32 %4634 to float
  %4636 = fmul fast float %4422, 0x3FD80E9D60000000
  %4637 = fmul fast float %4636, %4587
  %4638 = fadd fast float %4635, %4637
  %4639 = bitcast float %4638 to i32
  %4640 = sub nsw i32 2129859010, %4639
  %4641 = bitcast i32 %4640 to float
  %4642 = fmul fast float %4605, %4629
  %4643 = fmul fast float %4642, %4635
  %4644 = fmul fast float %4643, %4641
  %4645 = call float @dx.op.unary.f32(i32 6, float %4577)  ; FAbs(value)
  %4646 = fsub fast float 1.000000e+00, %4645
  %4647 = bitcast float %4646 to i32
  %4648 = sitofp i32 %4647 to float
  %4649 = fmul fast float %4648, 5.000000e+00
  %4650 = fadd fast float %4649, 0xC1EFBF8940000000
  %4651 = fptosi float %4650 to i32
  %4652 = bitcast i32 %4651 to float
  %4653 = fsub fast float 1.000000e+00, %2727
  %4654 = fsub fast float 1.000000e+00, %2728
  %4655 = fsub fast float 1.000000e+00, %2738
  %4656 = fmul fast float %4652, %4653
  %4657 = fmul fast float %4652, %4654
  %4658 = fmul fast float %4652, %4655
  %4659 = fadd fast float %4656, %2727
  %4660 = fadd fast float %4657, %2728
  %4661 = fadd fast float %4658, %2738
  br i1 %4017, label %4662, label %4685

; <label>:4662                                    ; preds = %4548
  %4663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2104, float %4645, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4664 = extractvalue %dx.types.ResRet.f32 %4663, 0
  %4665 = extractvalue %dx.types.ResRet.f32 %4663, 1
  %4666 = extractvalue %dx.types.ResRet.f32 %4663, 2
  %4667 = fadd fast float %4664, -5.000000e-01
  %4668 = fadd fast float %4665, -5.000000e-01
  %4669 = fadd fast float %4666, -5.000000e-01
  %4670 = fmul fast float %2727, 4.000000e+00
  %4671 = fmul fast float %4670, %4653
  %4672 = fmul fast float %4671, %4667
  %4673 = fmul fast float %2728, 4.000000e+00
  %4674 = fmul fast float %4673, %4654
  %4675 = fmul fast float %4674, %4668
  %4676 = fmul fast float %2738, 4.000000e+00
  %4677 = fmul fast float %4676, %4655
  %4678 = fmul fast float %4677, %4669
  %4679 = fadd fast float %4672, %4659
  %4680 = fadd fast float %4675, %4660
  %4681 = fadd fast float %4678, %4661
  %4682 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4683 = call float @dx.op.unary.f32(i32 7, float %4680)  ; Saturate(value)
  %4684 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  br label %4685

; <label>:4685                                    ; preds = %4662, %4548
  %4686 = phi float [ %4682, %4662 ], [ %4659, %4548 ]
  %4687 = phi float [ %4683, %4662 ], [ %4660, %4548 ]
  %4688 = phi float [ %4684, %4662 ], [ %4661, %4548 ]
  %4689 = fmul fast float %4576, 9.843750e-01
  %4690 = fadd fast float %4689, 7.812500e-03
  %4691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4690, float %4007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4692 = extractvalue %dx.types.ResRet.f32 %4691, 2
  %4693 = extractvalue %dx.types.ResRet.f32 %4691, 3
  %4694 = fmul fast float %4692, %2727
  %4695 = fmul fast float %4692, %2728
  %4696 = fmul fast float %4692, %2738
  %4697 = fadd fast float %4694, %4693
  %4698 = fadd fast float %4695, %4693
  %4699 = fadd fast float %4696, %4693
  br i1 %4017, label %4700, label %4723

; <label>:4700                                    ; preds = %4685
  %4701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2104, float %4576, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4702 = extractvalue %dx.types.ResRet.f32 %4701, 0
  %4703 = extractvalue %dx.types.ResRet.f32 %4701, 1
  %4704 = extractvalue %dx.types.ResRet.f32 %4701, 2
  %4705 = fadd fast float %4702, -5.000000e-01
  %4706 = fadd fast float %4703, -5.000000e-01
  %4707 = fadd fast float %4704, -5.000000e-01
  %4708 = fmul fast float %2727, 4.000000e+00
  %4709 = fmul fast float %4708, %4653
  %4710 = fmul fast float %4709, %4705
  %4711 = fmul fast float %2728, 4.000000e+00
  %4712 = fmul fast float %4711, %4654
  %4713 = fmul fast float %4712, %4706
  %4714 = fmul fast float %2738, 4.000000e+00
  %4715 = fmul fast float %4714, %4655
  %4716 = fmul fast float %4715, %4707
  %4717 = fadd fast float %4710, %4697
  %4718 = fadd fast float %4713, %4698
  %4719 = fadd fast float %4716, %4699
  %4720 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4721 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4722 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  br label %4723

; <label>:4723                                    ; preds = %4700, %4685
  %4724 = phi float [ %4720, %4700 ], [ %4697, %4685 ]
  %4725 = phi float [ %4721, %4700 ], [ %4698, %4685 ]
  %4726 = phi float [ %4722, %4700 ], [ %4699, %4685 ]
  %4727 = call float @dx.op.binary.f32(i32 35, float %4725, float %4726)  ; FMax(a,b)
  %4728 = call float @dx.op.binary.f32(i32 35, float %4724, float %4727)  ; FMax(a,b)
  %4729 = fsub fast float 1.000000e+00, %4728
  %4730 = fmul fast float %4686, %4644
  %4731 = fmul fast float %4687, %4644
  %4732 = fmul fast float %4688, %4644
  %4733 = fsub fast float 1.000000e+00, %4577
  %4734 = bitcast float %4733 to i32
  %4735 = sitofp i32 %4734 to float
  %4736 = fmul fast float %4735, 5.000000e+00
  %4737 = fadd fast float %4736, 0xC1EFBF8940000000
  %4738 = fptosi float %4737 to i32
  %4739 = bitcast i32 %4738 to float
  %4740 = fmul fast float %4739, %2103
  %4741 = fmul fast float %4729, %4740
  %4742 = fmul fast float %4741, %4067
  %4743 = fmul fast float %4741, %4068
  %4744 = fmul fast float %4741, %4069
  %4745 = fadd fast float %4742, %4730
  %4746 = fadd fast float %4743, %4731
  %4747 = fadd fast float %4744, %4732
  %4748 = fmul fast float %4565, %2124
  %4749 = fmul fast float %4748, %4583
  %4750 = fmul fast float %4749, %4729
  %4751 = fmul fast float %4566, %2124
  %4752 = fmul fast float %4751, %4583
  %4753 = fmul fast float %4752, %4729
  %4754 = fmul fast float %4567, %2124
  %4755 = fmul fast float %4754, %4583
  %4756 = fmul fast float %4755, %4729
  %4757 = fadd fast float %4750, %4404
  %4758 = fadd fast float %4753, %4405
  %4759 = fadd fast float %4756, %4406
  %4760 = fmul fast float %4749, %4745
  %4761 = fmul fast float %4752, %4746
  %4762 = fmul fast float %4755, %4747
  %4763 = fadd fast float %4760, %4401
  %4764 = fadd fast float %4761, %4402
  %4765 = fadd fast float %4762, %4403
  br label %4479

; <label>:4766                                    ; preds = %4479
  br label %4767

; <label>:4767                                    ; preds = %4766, %4367
  %4768 = phi float [ %4369, %4367 ], [ %4480, %4766 ]
  %4769 = phi float [ %4370, %4367 ], [ %4481, %4766 ]
  %4770 = phi float [ %4371, %4367 ], [ %4482, %4766 ]
  %4771 = phi float [ %4372, %4367 ], [ %4483, %4766 ]
  %4772 = phi float [ %4373, %4367 ], [ %4484, %4766 ]
  %4773 = phi float [ %4374, %4367 ], [ %4485, %4766 ]
  %4774 = add i32 %4368, 1
  %4775 = icmp ugt i32 %4774, %4364
  br i1 %4775, label %4776, label %4367

; <label>:4776                                    ; preds = %4767
  br label %4777

; <label>:4777                                    ; preds = %4776, %4343, %4333
  %4778 = phi float [ %4334, %4333 ], [ %4334, %4343 ], [ %4768, %4776 ]
  %4779 = phi float [ %4335, %4333 ], [ %4335, %4343 ], [ %4769, %4776 ]
  %4780 = phi float [ %4336, %4333 ], [ %4336, %4343 ], [ %4770, %4776 ]
  %4781 = phi float [ %4337, %4333 ], [ %4337, %4343 ], [ %4771, %4776 ]
  %4782 = phi float [ %4338, %4333 ], [ %4338, %4343 ], [ %4772, %4776 ]
  %4783 = phi float [ %4339, %4333 ], [ %4339, %4343 ], [ %4773, %4776 ]
  %4784 = call float @dx.op.unary.f32(i32 24, float %2733)  ; Sqrt(value)
  %4785 = call float @dx.op.unary.f32(i32 24, float %2734)  ; Sqrt(value)
  %4786 = call float @dx.op.unary.f32(i32 24, float %2735)  ; Sqrt(value)
  %4787 = fmul fast float %4784, %4781
  %4788 = fmul fast float %4785, %4782
  %4789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.f32 %4789, 0
  br i1 %188, label %4791, label %4811

; <label>:4791                                    ; preds = %4777
  %4792 = fadd fast float %4783, %2101
  %4793 = fmul fast float %4792, %2102
  %4794 = fsub fast float 1.000000e+00, %2102
  %4795 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  %4796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4797 = extractvalue %dx.types.CBufRet.f32 %4796, 3
  %4798 = fmul fast float %4797, %4795
  %4799 = fadd fast float %4798, %4793
  %4800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4801 = extractvalue %dx.types.CBufRet.f32 %4800, 0
  %4802 = fmul fast float %4801, %4073
  %4803 = fsub fast float %4799, %4802
  %4804 = fadd fast float %4788, %4787
  %4805 = fmul fast float %4790, %4804
  %4806 = extractvalue %dx.types.CBufRet.f32 %4796, 1
  %4807 = fsub fast float %4803, %4806
  %4808 = extractvalue %dx.types.CBufRet.f32 %4796, 2
  %4809 = fmul fast float %4807, %4808
  %4810 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  br label %4827

; <label>:4811                                    ; preds = %4777
  %4812 = fmul fast float %4786, %4783
  %4813 = fmul fast float %4790, %4787
  %4814 = fmul fast float %4790, %4788
  %4815 = fmul fast float %4812, %4790
  %4816 = add i32 %44, 212
  %4817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4816, i32 undef)  ; BufferLoad(srv,index,wot)
  %4818 = extractvalue %dx.types.ResRet.i32 %4817, 0
  %4819 = and i32 %4818, 32
  %4820 = icmp eq i32 %4819, 0
  br i1 %4820, label %4827, label %4821

; <label>:4821                                    ; preds = %4811
  %4822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4823 = extractvalue %dx.types.CBufRet.f32 %4822, 0
  %4824 = fmul fast float %4823, 0x3FE99999A0000000
  %4825 = fadd fast float %4823, %4813
  %4826 = fadd fast float %4824, %4815
  br label %4827

; <label>:4827                                    ; preds = %4821, %4811, %4791
  %4828 = phi float [ %4805, %4791 ], [ %4825, %4821 ], [ %4813, %4811 ]
  %4829 = phi float [ %4810, %4791 ], [ %4814, %4821 ], [ %4814, %4811 ]
  %4830 = phi float [ 1.000000e+00, %4791 ], [ %4826, %4821 ], [ %4815, %4811 ]
  %4831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4832 = extractvalue %dx.types.CBufRet.f32 %4831, 0
  %4833 = fmul fast float %4832, %4779
  %4834 = fmul fast float %4832, %4780
  %4835 = fadd fast float %4779, %4778
  %4836 = select i1 %188, float %4835, float %4778
  %4837 = fmul float %4836, %4832
  %4838 = select i1 %188, float 0.000000e+00, float %4833
  %4839 = select i1 %188, float 0.000000e+00, float %4834
  %4840 = fmul fast float %4828, %4784
  %4841 = fmul fast float %4829, %4785
  %4842 = fmul fast float %4830, %4786
  %4843 = fadd fast float %4837, %4840
  %4844 = fadd fast float %4838, %4841
  %4845 = fadd fast float %4839, %4842
  %4846 = select i1 %188, float %4829, float %4844
  %4847 = select i1 %188, float %4830, float %4845
  %4848 = call float @dx.op.binary.f32(i32 36, float %4843, float 3.225500e+04)  ; FMin(a,b)
  %4849 = call float @dx.op.binary.f32(i32 36, float %4846, float 3.225500e+04)  ; FMin(a,b)
  %4850 = call float @dx.op.binary.f32(i32 36, float %4847, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4848)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4849)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4850)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!50 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
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

