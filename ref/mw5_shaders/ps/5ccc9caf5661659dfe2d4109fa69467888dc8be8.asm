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
; shader hash: 3dc017d092bb30f9b449eda29a13f7a1
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
  %1593 = add i32 %44, 200
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1593, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = bitcast i32 %1595 to float
  %1597 = fcmp fast oge float %1596, 0.000000e+00
  %1598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1599 = extractvalue %dx.types.CBufRet.f32 %1598, 0
  %1600 = select i1 %1597, float %1596, float %1599
  %1601 = call float @dx.op.dot2.f32(i32 54, float %1581, float %1582, float %1581, float %1582)  ; Dot2(ax,ay,bx,by)
  %1602 = fmul fast float %1601, 0x3FE3333340000000
  %1603 = fsub fast float 1.000000e+00, %1602
  %1604 = call float @dx.op.dot3.f32(i32 55, float %1581, float %1582, float %1603, float %1581, float %1582, float %1603)  ; Dot3(ax,ay,az,bx,by,bz)
  %1605 = call float @dx.op.unary.f32(i32 25, float %1604)  ; Rsqrt(value)
  %1606 = fmul fast float %1605, %1581
  %1607 = fmul fast float %1605, %1582
  %1608 = fmul fast float %1603, %1605
  %1609 = fmul fast float %1608, %53
  %1610 = fmul fast float %1608, %54
  %1611 = fmul fast float %1608, %55
  %1612 = fmul fast float %1606, %49
  %1613 = fmul fast float %1606, %50
  %1614 = fmul fast float %1606, %51
  %1615 = fadd fast float %1609, %1612
  %1616 = fadd fast float %1610, %1613
  %1617 = fadd fast float %1611, %1614
  %1618 = fmul fast float %1607, %81
  %1619 = fmul fast float %1607, %82
  %1620 = fmul fast float %1607, %83
  %1621 = fadd fast float %1615, %1618
  %1622 = fadd fast float %1616, %1619
  %1623 = fadd fast float %1617, %1620
  %1624 = call float @dx.op.dot3.f32(i32 55, float %1621, float %1622, float %1623, float %1621, float %1622, float %1623)  ; Dot3(ax,ay,az,bx,by,bz)
  %1625 = call float @dx.op.unary.f32(i32 25, float %1624)  ; Rsqrt(value)
  %1626 = fmul fast float %1621, %1625
  %1627 = fmul fast float %1622, %1625
  %1628 = fmul fast float %1623, %1625
  %1629 = call float @dx.op.unary.f32(i32 83, float %117)  ; DerivCoarseX(value)
  %1630 = call float @dx.op.unary.f32(i32 83, float %118)  ; DerivCoarseX(value)
  %1631 = call float @dx.op.unary.f32(i32 83, float %119)  ; DerivCoarseX(value)
  %1632 = call float @dx.op.unary.f32(i32 84, float %117)  ; DerivCoarseY(value)
  %1633 = call float @dx.op.unary.f32(i32 84, float %118)  ; DerivCoarseY(value)
  %1634 = call float @dx.op.unary.f32(i32 84, float %119)  ; DerivCoarseY(value)
  %1635 = fadd fast float %1629, %117
  %1636 = fadd fast float %1630, %118
  %1637 = fadd fast float %1631, %119
  %1638 = fadd fast float %1632, %117
  %1639 = fadd fast float %1633, %118
  %1640 = fadd fast float %1634, %119
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 0
  %1643 = extractvalue %dx.types.CBufRet.f32 %1641, 1
  %1644 = extractvalue %dx.types.CBufRet.f32 %1641, 2
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 2
  %1647 = extractvalue %dx.types.CBufRet.f32 %1645, 3
  %1648 = fmul fast float %1642, %70
  %1649 = fmul fast float %1648, %1646
  %1650 = fmul fast float %1643, %71
  %1651 = fmul fast float %1650, %1647
  %1652 = fptoui float %1649 to i32
  %1653 = fptoui float %1651 to i32
  %1654 = fadd fast float %1642, -1.000000e+00
  %1655 = fadd fast float %1643, -1.000000e+00
  %1656 = fptoui float %1654 to i32
  %1657 = fptoui float %1655 to i32
  %1658 = call i32 @dx.op.binary.i32(i32 40, i32 %1652, i32 %1656)  ; UMin(a,b)
  %1659 = call i32 @dx.op.binary.i32(i32 40, i32 %1653, i32 %1657)  ; UMin(a,b)
  %1660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1661 = extractvalue %dx.types.CBufRet.f32 %1660, 2
  %1662 = extractvalue %dx.types.CBufRet.f32 %1660, 3
  %1663 = fmul fast float %1661, %65
  %1664 = fsub fast float %1663, %1662
  %1665 = fadd fast float %1644, -1.000000e+00
  %1666 = call float @dx.op.binary.f32(i32 36, float %1664, float %1665)  ; FMin(a,b)
  %1667 = fptoui float %1666 to i32
  %1668 = fptoui float %1642 to i32
  %1669 = fptoui float %1643 to i32
  %1670 = mul i32 %1667, %1669
  %1671 = add i32 %1670, %1659
  %1672 = mul i32 %1671, %1668
  %1673 = add i32 %1672, %1658
  %1674 = shl i32 %1673, 2
  %1675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1674, i32 undef)  ; BufferLoad(srv,index,wot)
  %1676 = extractvalue %dx.types.ResRet.i32 %1675, 0
  %1677 = and i32 %1676, 1023
  %1678 = lshr i32 %1676, 10
  %1679 = icmp eq i32 %1677, 0
  br i1 %1679, label %2105, label %1680

; <label>:1680                                    ; preds = %1580
  %1681 = and i32 %1676, 1023
  br label %1682

; <label>:1682                                    ; preds = %1808, %1680
  %1683 = phi float [ %1809, %1808 ], [ 0.000000e+00, %1680 ]
  %1684 = phi float [ %1810, %1808 ], [ %1600, %1680 ]
  %1685 = phi float [ %1811, %1808 ], [ %1592, %1680 ]
  %1686 = phi float [ %1812, %1808 ], [ 0.000000e+00, %1680 ]
  %1687 = phi float [ %1813, %1808 ], [ 0.000000e+00, %1680 ]
  %1688 = phi float [ %1814, %1808 ], [ %1586, %1680 ]
  %1689 = phi float [ %1815, %1808 ], [ %1587, %1680 ]
  %1690 = phi float [ %1816, %1808 ], [ %1588, %1680 ]
  %1691 = phi float [ %1817, %1808 ], [ %1626, %1680 ]
  %1692 = phi float [ %1818, %1808 ], [ %1627, %1680 ]
  %1693 = phi float [ %1819, %1808 ], [ %1628, %1680 ]
  %1694 = phi float [ %1820, %1808 ], [ %1591, %1680 ]
  %1695 = phi float [ %1821, %1808 ], [ %1590, %1680 ]
  %1696 = phi float [ %1822, %1808 ], [ 0.000000e+00, %1680 ]
  %1697 = phi float [ %1823, %1808 ], [ %1589, %1680 ]
  %1698 = phi float [ %1824, %1808 ], [ %1583, %1680 ]
  %1699 = phi float [ %1825, %1808 ], [ %1584, %1680 ]
  %1700 = phi float [ %1826, %1808 ], [ %1585, %1680 ]
  %1701 = phi i32 [ %1758, %1808 ], [ 0, %1680 ]
  %1702 = add nuw nsw i32 %1701, %1678
  %1703 = shl i32 %1702, 2
  %1704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = shl i32 %1705, 8
  %1707 = or i32 %1706, 48
  %1708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.f32 %1708, 0
  %1710 = extractvalue %dx.types.ResRet.f32 %1708, 1
  %1711 = extractvalue %dx.types.ResRet.f32 %1708, 2
  %1712 = extractvalue %dx.types.ResRet.f32 %1708, 3
  %1713 = or i32 %1706, 64
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = extractvalue %dx.types.ResRet.i32 %1714, 1
  %1717 = or i32 %1706, 80
  %1718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1717, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.f32 %1718, 2
  %1720 = extractvalue %dx.types.ResRet.f32 %1718, 3
  %1721 = or i32 %1706, 96
  %1722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1721, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.f32 %1722, 0
  %1724 = extractvalue %dx.types.ResRet.f32 %1722, 1
  %1725 = extractvalue %dx.types.ResRet.f32 %1722, 2
  %1726 = extractvalue %dx.types.ResRet.f32 %1722, 3
  %1727 = or i32 %1706, 112
  %1728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1727, i32 undef)  ; BufferLoad(srv,index,wot)
  %1729 = extractvalue %dx.types.ResRet.f32 %1728, 2
  %1730 = or i32 %1706, 128
  %1731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1730, i32 undef)  ; BufferLoad(srv,index,wot)
  %1732 = extractvalue %dx.types.ResRet.f32 %1731, 0
  %1733 = extractvalue %dx.types.ResRet.f32 %1731, 1
  %1734 = extractvalue %dx.types.ResRet.f32 %1731, 2
  %1735 = extractvalue %dx.types.ResRet.f32 %1731, 3
  %1736 = or i32 %1706, 144
  %1737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.f32 %1737, 0
  %1739 = extractvalue %dx.types.ResRet.f32 %1737, 1
  %1740 = extractvalue %dx.types.ResRet.f32 %1737, 2
  %1741 = extractvalue %dx.types.ResRet.f32 %1737, 3
  %1742 = or i32 %1706, 160
  %1743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.f32 %1743, 0
  %1745 = extractvalue %dx.types.ResRet.f32 %1743, 1
  %1746 = extractvalue %dx.types.ResRet.f32 %1743, 2
  %1747 = extractvalue %dx.types.ResRet.f32 %1743, 3
  %1748 = or i32 %1706, 192
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = or i32 %1706, 208
  %1752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1751, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.f32 %1752, 0
  %1754 = or i32 %1706, 248
  %1755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.f32 %1755, 0
  %1757 = extractvalue %dx.types.ResRet.f32 %1755, 1
  %1758 = add nuw nsw i32 %1701, 1
  %1759 = bitcast float %1712 to i32
  %1760 = and i32 %1759, 2560
  %1761 = icmp eq i32 %1760, 0
  %1762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1706, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.f32 %1762, 0
  %1764 = extractvalue %dx.types.ResRet.f32 %1762, 1
  %1765 = extractvalue %dx.types.ResRet.f32 %1762, 2
  %1766 = extractvalue %dx.types.ResRet.f32 %1762, 3
  %1767 = call float @dx.op.dot4.f32(i32 56, float %1763, float %1764, float %1765, float %1766, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1768 = or i32 %1706, 16
  %1769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1768, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.f32 %1769, 0
  %1771 = extractvalue %dx.types.ResRet.f32 %1769, 1
  %1772 = extractvalue %dx.types.ResRet.f32 %1769, 2
  %1773 = extractvalue %dx.types.ResRet.f32 %1769, 3
  %1774 = call float @dx.op.dot4.f32(i32 56, float %1770, float %1771, float %1772, float %1773, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1775 = or i32 %1706, 32
  %1776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.f32 %1776, 0
  %1778 = extractvalue %dx.types.ResRet.f32 %1776, 1
  %1779 = extractvalue %dx.types.ResRet.f32 %1776, 2
  %1780 = extractvalue %dx.types.ResRet.f32 %1776, 3
  %1781 = call float @dx.op.dot4.f32(i32 56, float %1777, float %1778, float %1779, float %1780, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1782 = call float @dx.op.unary.f32(i32 27, float %1767)  ; Round_ni(value)
  %1783 = call float @dx.op.unary.f32(i32 6, float %1782)  ; FAbs(value)
  %1784 = call float @dx.op.unary.f32(i32 27, float %1774)  ; Round_ni(value)
  %1785 = call float @dx.op.unary.f32(i32 6, float %1784)  ; FAbs(value)
  %1786 = call float @dx.op.unary.f32(i32 6, float %1781)  ; FAbs(value)
  %1787 = call float @dx.op.unary.f32(i32 27, float %1786)  ; Round_ni(value)
  %1788 = fadd fast float %1785, %1783
  %1789 = fadd fast float %1788, %1787
  %1790 = fcmp fast oeq float %1789, 0.000000e+00
  %1791 = call float @dx.op.dot4.f32(i32 56, float %1763, float %1764, float %1765, float %1766, float %1635, float %1636, float %1637, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1792 = call float @dx.op.dot4.f32(i32 56, float %1770, float %1771, float %1772, float %1773, float %1635, float %1636, float %1637, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1793 = call float @dx.op.dot4.f32(i32 56, float %1763, float %1764, float %1765, float %1766, float %1638, float %1639, float %1640, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1794 = call float @dx.op.dot4.f32(i32 56, float %1770, float %1771, float %1772, float %1773, float %1638, float %1639, float %1640, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1795 = fsub fast float %1791, %1767
  %1796 = fsub fast float %1793, %1767
  %1797 = fsub fast float %1792, %1774
  %1798 = fsub fast float %1794, %1774
  %1799 = call float @dx.op.dot3.f32(i32 55, float %1709, float %1710, float %1711, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %1800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1801 = extractvalue %dx.types.CBufRet.f32 %1800, 2
  %1802 = fadd fast float %1801, %1799
  %1803 = call float @dx.op.unary.f32(i32 7, float %1802)  ; Saturate(value)
  %1804 = extractvalue %dx.types.CBufRet.f32 %1800, 0
  %1805 = fcmp fast ogt float %1803, %1804
  %1806 = and i1 %1790, %1805
  %1807 = and i1 %1761, %1806
  br i1 %1807, label %1828, label %1808

; <label>:1808                                    ; preds = %2091, %1909, %1828, %1682
  %1809 = phi float [ %1683, %1828 ], [ %1912, %1909 ], [ %1912, %2091 ], [ %1683, %1682 ]
  %1810 = phi float [ %1684, %1828 ], [ %1684, %1909 ], [ %2066, %2091 ], [ %1684, %1682 ]
  %1811 = phi float [ %1685, %1828 ], [ %1685, %1909 ], [ %2064, %2091 ], [ %1685, %1682 ]
  %1812 = phi float [ %1686, %1828 ], [ %1686, %1909 ], [ %2036, %2091 ], [ %1686, %1682 ]
  %1813 = phi float [ %1687, %1828 ], [ %1687, %1909 ], [ %2034, %2091 ], [ %1687, %1682 ]
  %1814 = phi float [ %1688, %1828 ], [ %1688, %1909 ], [ %2101, %2091 ], [ %1688, %1682 ]
  %1815 = phi float [ %1689, %1828 ], [ %1689, %1909 ], [ %2102, %2091 ], [ %1689, %1682 ]
  %1816 = phi float [ %1690, %1828 ], [ %1690, %1909 ], [ %2103, %2091 ], [ %1690, %1682 ]
  %1817 = phi float [ %1691, %1828 ], [ %1691, %1909 ], [ %2015, %2091 ], [ %1691, %1682 ]
  %1818 = phi float [ %1692, %1828 ], [ %1692, %1909 ], [ %2016, %2091 ], [ %1692, %1682 ]
  %1819 = phi float [ %1693, %1828 ], [ %1693, %1909 ], [ %2017, %2091 ], [ %1693, %1682 ]
  %1820 = phi float [ %1694, %1828 ], [ %1694, %1909 ], [ %2044, %2091 ], [ %1694, %1682 ]
  %1821 = phi float [ %1695, %1828 ], [ %1695, %1909 ], [ %2041, %2091 ], [ %1695, %1682 ]
  %1822 = phi float [ %1696, %1828 ], [ %1696, %1909 ], [ %2038, %2091 ], [ %1696, %1682 ]
  %1823 = phi float [ %1697, %1828 ], [ %1697, %1909 ], [ %2032, %2091 ], [ %1697, %1682 ]
  %1824 = phi float [ %1698, %1828 ], [ %1698, %1909 ], [ %2027, %2091 ], [ %1698, %1682 ]
  %1825 = phi float [ %1699, %1828 ], [ %1699, %1909 ], [ %2028, %2091 ], [ %1699, %1682 ]
  %1826 = phi float [ %1700, %1828 ], [ %1700, %1909 ], [ %2029, %2091 ], [ %1700, %1682 ]
  %1827 = icmp eq i32 %1758, %1681
  br i1 %1827, label %2104, label %1682

; <label>:1828                                    ; preds = %1682
  %1829 = extractvalue %dx.types.ResRet.f32 %1728, 3
  %1830 = extractvalue %dx.types.ResRet.f32 %1728, 1
  %1831 = extractvalue %dx.types.ResRet.f32 %1728, 0
  %1832 = extractvalue %dx.types.ResRet.f32 %1718, 1
  %1833 = extractvalue %dx.types.ResRet.f32 %1718, 0
  %1834 = extractvalue %dx.types.ResRet.i32 %1714, 3
  %1835 = extractvalue %dx.types.ResRet.i32 %1714, 2
  %1836 = add i32 %1834, 0
  %1837 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1836, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1839 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1837, %dx.types.Handle %1838, float %1767, float %1774, float undef, float undef, i32 0, i32 0, i32 undef, float %1795, float %1797, float undef, float %1796, float %1798, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1840 = extractvalue %dx.types.ResRet.f32 %1839, 0
  %1841 = fmul fast float %1840, %1833
  %1842 = fadd fast float %1841, %1832
  %1843 = call float @dx.op.unary.f32(i32 7, float %1842)  ; Saturate(value)
  %1844 = fmul fast float %1767, %1723
  %1845 = call float @dx.op.tertiary.f32(i32 46, float %1724, float %1774, float %1844)  ; FMad(a,b,c)
  %1846 = fadd fast float %1845, %1831
  %1847 = fmul fast float %1767, %1725
  %1848 = call float @dx.op.tertiary.f32(i32 46, float %1726, float %1774, float %1847)  ; FMad(a,b,c)
  %1849 = fadd fast float %1848, %1830
  %1850 = fmul fast float %1795, %1723
  %1851 = call float @dx.op.tertiary.f32(i32 46, float %1724, float %1797, float %1850)  ; FMad(a,b,c)
  %1852 = fmul fast float %1795, %1725
  %1853 = call float @dx.op.tertiary.f32(i32 46, float %1726, float %1797, float %1852)  ; FMad(a,b,c)
  %1854 = fmul fast float %1796, %1723
  %1855 = call float @dx.op.tertiary.f32(i32 46, float %1724, float %1798, float %1854)  ; FMad(a,b,c)
  %1856 = fmul fast float %1796, %1725
  %1857 = call float @dx.op.tertiary.f32(i32 46, float %1726, float %1798, float %1856)  ; FMad(a,b,c)
  %1858 = add i32 %1835, 0
  %1859 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1858, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1860 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1859, %dx.types.Handle %1838, float %1846, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float %1851, float %1853, float undef, float %1855, float %1857, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1861 = extractvalue %dx.types.ResRet.f32 %1860, 0
  %1862 = and i32 %1759, 1024
  %1863 = icmp ne i32 %1862, 0
  %1864 = fcmp fast ogt float %1861, 0x3FE0101020000000
  %1865 = uitofp i1 %1864 to float
  %1866 = select i1 %1863, float %1865, float %1861
  %1867 = and i32 %1759, 8192
  %1868 = icmp ne i32 %1867, 0
  %1869 = select i1 %1868, float %1829, float 1.000000e+00
  %1870 = fmul fast float %1767, 2.000000e+00
  %1871 = fadd fast float %1870, -1.000000e+00
  %1872 = call float @dx.op.unary.f32(i32 6, float %1871)  ; FAbs(value)
  %1873 = fmul fast float %1872, %1756
  %1874 = fsub fast float %1873, %1756
  %1875 = call float @dx.op.unary.f32(i32 7, float %1874)  ; Saturate(value)
  %1876 = fmul fast float %1774, 2.000000e+00
  %1877 = fadd fast float %1876, -1.000000e+00
  %1878 = call float @dx.op.unary.f32(i32 6, float %1877)  ; FAbs(value)
  %1879 = fmul fast float %1878, %1757
  %1880 = fsub fast float %1879, %1757
  %1881 = call float @dx.op.unary.f32(i32 7, float %1880)  ; Saturate(value)
  %1882 = fmul fast float %1786, %1719
  %1883 = fsub fast float %1882, %1719
  %1884 = call float @dx.op.unary.f32(i32 7, float %1883)  ; Saturate(value)
  %1885 = fmul fast float %1843, %1869
  %1886 = fmul fast float %1885, %1840
  %1887 = fmul fast float %1886, %1875
  %1888 = fmul fast float %1887, %1866
  %1889 = fmul fast float %1888, %1881
  %1890 = fmul fast float %1889, %1884
  %1891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1891, 1
  %1893 = extractvalue %dx.types.CBufRet.f32 %1891, 0
  %1894 = fsub fast float %1803, %1893
  %1895 = fmul fast float %1894, %1892
  %1896 = call float @dx.op.unary.f32(i32 7, float %1895)  ; Saturate(value)
  %1897 = fmul fast float %1890, %1720
  %1898 = fadd fast float %1890, %1720
  %1899 = fmul fast float %1898, %1729
  %1900 = fsub fast float %1899, %1729
  %1901 = call float @dx.op.unary.f32(i32 7, float %1900)  ; Saturate(value)
  %1902 = and i32 %1759, 128
  %1903 = icmp ne i32 %1902, 0
  %1904 = select i1 %1903, float %1901, float %1897
  %1905 = fmul fast float %1904, %1896
  %1906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1907 = extractvalue %dx.types.CBufRet.f32 %1906, 0
  %1908 = fcmp fast ugt float %1905, %1907
  br i1 %1908, label %1909, label %1808

; <label>:1909                                    ; preds = %1828
  %1910 = select i1 %1868, float %1905, float 0.000000e+00
  %1911 = fadd fast float %1910, %1683
  %1912 = call float @dx.op.unary.f32(i32 7, float %1911)  ; Saturate(value)
  br i1 %1868, label %1808, label %1913

; <label>:1913                                    ; preds = %1909
  %1914 = and i32 %1759, 4
  %1915 = and i32 %1759, 8
  %1916 = add i32 %1715, 0
  %1917 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1916, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1919 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1917, %dx.types.Handle %1918, float %1846, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float %1851, float %1853, float undef, float %1855, float %1857, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1920 = extractvalue %dx.types.ResRet.f32 %1919, 0
  %1921 = extractvalue %dx.types.ResRet.f32 %1919, 1
  %1922 = extractvalue %dx.types.ResRet.f32 %1919, 2
  %1923 = extractvalue %dx.types.ResRet.f32 %1919, 3
  %1924 = bitcast float %1741 to i32
  %1925 = and i32 %1924, 255
  %1926 = uitofp i32 %1925 to float
  %1927 = lshr i32 %1924, 8
  %1928 = and i32 %1927, 255
  %1929 = uitofp i32 %1928 to float
  %1930 = fmul fast float %1923, %1926
  %1931 = fadd fast float %1930, %1929
  %1932 = fmul fast float %1931, 0x3F70101000000000
  %1933 = add i32 %1716, 0
  %1934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1933, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1935 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1934, %dx.types.Handle %1918, float %1846, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float %1851, float %1853, float undef, float %1855, float %1857, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1936 = extractvalue %dx.types.ResRet.f32 %1935, 0
  %1937 = extractvalue %dx.types.ResRet.f32 %1935, 1
  %1938 = extractvalue %dx.types.ResRet.f32 %1935, 2
  %1939 = extractvalue %dx.types.ResRet.f32 %1935, 3
  %1940 = bitcast float %1735 to i32
  %1941 = and i32 %1940, 255
  %1942 = uitofp i32 %1941 to float
  %1943 = lshr i32 %1940, 8
  %1944 = and i32 %1943, 255
  %1945 = uitofp i32 %1944 to float
  %1946 = lshr i32 %1940, 16
  %1947 = and i32 %1946, 255
  %1948 = uitofp i32 %1947 to float
  %1949 = fmul fast float %1948, 0x3F70101000000000
  %1950 = fmul fast float %1936, %1942
  %1951 = fadd fast float %1950, %1945
  %1952 = fmul fast float %1951, 0x3F70101000000000
  %1953 = fadd fast float %1937, -5.000000e-01
  %1954 = fadd fast float %1939, -5.000000e-01
  %1955 = fmul fast float %1953, %1949
  %1956 = fmul fast float %1954, %1949
  %1957 = fadd fast float %1955, 5.000000e-01
  %1958 = fadd fast float %1956, 5.000000e-01
  %1959 = fmul fast float %1920, %1744
  %1960 = fmul fast float %1921, %1745
  %1961 = fmul fast float %1922, %1746
  %1962 = fmul fast float %1957, 2.000000e+00
  %1963 = fadd fast float %1962, -1.000000e+00
  %1964 = fmul fast float %1958, 2.000000e+00
  %1965 = fadd fast float %1964, -1.000000e+00
  %1966 = fadd fast float %1963, %1965
  %1967 = fmul fast float %1966, 5.000000e-01
  %1968 = fsub fast float %1963, %1965
  %1969 = fmul fast float %1968, 5.000000e-01
  %1970 = call float @dx.op.unary.f32(i32 6, float %1967)  ; FAbs(value)
  %1971 = fsub fast float 1.000000e+00, %1970
  %1972 = call float @dx.op.unary.f32(i32 6, float %1969)  ; FAbs(value)
  %1973 = fsub fast float %1971, %1972
  %1974 = call float @dx.op.dot3.f32(i32 55, float %1967, float %1969, float %1973, float %1967, float %1969, float %1973)  ; Dot3(ax,ay,az,bx,by,bz)
  %1975 = call float @dx.op.unary.f32(i32 25, float %1974)  ; Rsqrt(value)
  %1976 = fmul fast float %1967, %1975
  %1977 = fmul fast float %1969, %1975
  %1978 = fmul fast float %1975, %1973
  %1979 = fmul fast float %1978, %1709
  %1980 = fmul fast float %1978, %1710
  %1981 = fmul fast float %1978, %1711
  %1982 = fmul fast float %1976, %1732
  %1983 = fmul fast float %1976, %1733
  %1984 = fmul fast float %1976, %1734
  %1985 = fadd fast float %1982, %1979
  %1986 = fadd fast float %1983, %1980
  %1987 = fadd fast float %1984, %1981
  %1988 = fmul fast float %1977, %1738
  %1989 = fmul fast float %1977, %1739
  %1990 = fmul fast float %1977, %1740
  %1991 = fadd fast float %1985, %1988
  %1992 = fadd fast float %1986, %1989
  %1993 = fadd fast float %1987, %1990
  %1994 = call float @dx.op.dot3.f32(i32 55, float %1991, float %1992, float %1993, float %1991, float %1992, float %1993)  ; Dot3(ax,ay,az,bx,by,bz)
  %1995 = call float @dx.op.unary.f32(i32 25, float %1994)  ; Rsqrt(value)
  %1996 = fmul fast float %1991, %1995
  %1997 = fmul fast float %1992, %1995
  %1998 = fmul fast float %1993, %1995
  %1999 = icmp ne i32 %1915, 0
  %2000 = select i1 %1999, float 1.000000e+00, float 0.000000e+00
  %2001 = fmul fast float %1905, %2000
  %2002 = and i32 %1759, 1
  %2003 = icmp eq i32 %2002, 0
  br i1 %2003, label %2004, label %2008

; <label>:2004                                    ; preds = %1913
  %2005 = fsub fast float %1996, %1691
  %2006 = fsub fast float %1997, %1692
  %2007 = fsub fast float %1998, %1693
  br label %2008

; <label>:2008                                    ; preds = %2004, %1913
  %2009 = phi float [ %2005, %2004 ], [ %1996, %1913 ]
  %2010 = phi float [ %2006, %2004 ], [ %1997, %1913 ]
  %2011 = phi float [ %2007, %2004 ], [ %1998, %1913 ]
  %2012 = fmul float %2011, %2001
  %2013 = fmul float %2010, %2001
  %2014 = fmul float %2009, %2001
  %2015 = fadd fast float %2014, %1691
  %2016 = fadd fast float %2013, %1692
  %2017 = fadd fast float %2012, %1693
  %2018 = icmp ne i32 %1914, 0
  %2019 = select i1 %2018, float 1.000000e+00, float 0.000000e+00
  %2020 = fmul fast float %1905, %2019
  %2021 = fsub fast float %1959, %1698
  %2022 = fsub fast float %1960, %1699
  %2023 = fsub fast float %1961, %1700
  %2024 = fmul fast float %2021, %2020
  %2025 = fmul fast float %2022, %2020
  %2026 = fmul fast float %2023, %2020
  %2027 = fadd fast float %2024, %1698
  %2028 = fadd fast float %2025, %1699
  %2029 = fadd fast float %2026, %1700
  %2030 = fsub fast float %1932, %1697
  %2031 = fmul fast float %2030, %2020
  %2032 = fadd fast float %2031, %1697
  %2033 = fmul fast float %2020, %1687
  %2034 = fsub fast float %1687, %2033
  %2035 = fmul fast float %2020, %1686
  %2036 = fsub fast float %1686, %2035
  %2037 = fadd fast float %1905, %1696
  %2038 = call float @dx.op.unary.f32(i32 7, float %2037)  ; Saturate(value)
  %2039 = fsub fast float %1952, %1695
  %2040 = fmul fast float %2039, %2001
  %2041 = fadd fast float %2040, %1695
  %2042 = fsub fast float %1938, %1694
  %2043 = fmul fast float %2042, %2001
  %2044 = fadd fast float %2043, %1694
  %2045 = call float @dx.op.dot3.f32(i32 55, float %1959, float %1960, float %1961, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2047 = extractvalue %dx.types.CBufRet.f32 %2046, 0
  %2048 = extractvalue %dx.types.CBufRet.f32 %2046, 1
  %2049 = fmul fast float %2048, %2045
  %2050 = fadd fast float %2049, %2047
  %2051 = call float @dx.op.unary.f32(i32 7, float %2050)  ; Saturate(value)
  %2052 = bitcast float %1747 to i32
  %2053 = and i32 %2052, 65535
  %2054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2053)  ; LegacyF16ToF32(value)
  %2055 = lshr i32 %2052, 16
  %2056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2055)  ; LegacyF16ToF32(value)
  %2057 = fcmp fast oge float %2054, 0.000000e+00
  %2058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2059 = extractvalue %dx.types.CBufRet.f32 %2058, 0
  %2060 = select i1 %2057, float %2054, float %2059
  %2061 = fadd fast float %2060, %2056
  %2062 = fsub fast float %2051, %1685
  %2063 = fmul fast float %2062, %1905
  %2064 = fadd fast float %2063, %1685
  %2065 = fmul fast float %2061, %1905
  %2066 = call float @dx.op.binary.f32(i32 35, float %1684, float %2065)  ; FMax(a,b)
  %2067 = and i32 %1759, 16
  %2068 = icmp eq i32 %2067, 0
  br i1 %2068, label %2091, label %2069

; <label>:2069                                    ; preds = %2008
  %2070 = bitcast float %1753 to i32
  %2071 = add i32 %1750, 0
  %2072 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2071, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2073 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2072, %dx.types.Handle %1918, float %1846, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float %1851, float %1853, float undef, float %1855, float %1857, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2074 = extractvalue %dx.types.ResRet.f32 %2073, 0
  %2075 = extractvalue %dx.types.ResRet.f32 %2073, 1
  %2076 = extractvalue %dx.types.ResRet.f32 %2073, 2
  %2077 = and i32 %2070, 65535
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = fmul fast float %2074, %1744
  %2080 = fmul fast float %2075, %1745
  %2081 = fmul fast float %2076, %1746
  %2082 = and i32 %1759, 16384
  %2083 = icmp ne i32 %2082, 0
  %2084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2085 = extractvalue %dx.types.CBufRet.f32 %2084, 0
  %2086 = select i1 %2083, float %2085, float 1.000000e+00
  %2087 = fmul fast float %2086, %2078
  %2088 = fmul fast float %2079, %2087
  %2089 = fmul fast float %2080, %2087
  %2090 = fmul fast float %2081, %2087
  br label %2091

; <label>:2091                                    ; preds = %2069, %2008
  %2092 = phi float [ %2088, %2069 ], [ 0.000000e+00, %2008 ]
  %2093 = phi float [ %2089, %2069 ], [ 0.000000e+00, %2008 ]
  %2094 = phi float [ %2090, %2069 ], [ 0.000000e+00, %2008 ]
  %2095 = fsub fast float %2092, %1688
  %2096 = fsub fast float %2093, %1689
  %2097 = fsub fast float %2094, %1690
  %2098 = fmul fast float %2095, %1905
  %2099 = fmul fast float %2096, %1905
  %2100 = fmul fast float %2097, %1905
  %2101 = fadd fast float %2098, %1688
  %2102 = fadd fast float %2099, %1689
  %2103 = fadd fast float %2100, %1690
  br label %1808

; <label>:2104                                    ; preds = %1808
  br label %2105

; <label>:2105                                    ; preds = %2104, %1580
  %2106 = phi float [ 0.000000e+00, %1580 ], [ %1809, %2104 ]
  %2107 = phi float [ %1600, %1580 ], [ %1810, %2104 ]
  %2108 = phi float [ %1592, %1580 ], [ %1811, %2104 ]
  %2109 = phi float [ 0.000000e+00, %1580 ], [ %1812, %2104 ]
  %2110 = phi float [ 0.000000e+00, %1580 ], [ %1813, %2104 ]
  %2111 = phi float [ %1586, %1580 ], [ %1814, %2104 ]
  %2112 = phi float [ %1587, %1580 ], [ %1815, %2104 ]
  %2113 = phi float [ %1588, %1580 ], [ %1816, %2104 ]
  %2114 = phi float [ %1626, %1580 ], [ %1817, %2104 ]
  %2115 = phi float [ %1627, %1580 ], [ %1818, %2104 ]
  %2116 = phi float [ %1628, %1580 ], [ %1819, %2104 ]
  %2117 = phi float [ %1591, %1580 ], [ %1820, %2104 ]
  %2118 = phi float [ %1590, %1580 ], [ %1821, %2104 ]
  %2119 = phi float [ 0.000000e+00, %1580 ], [ %1822, %2104 ]
  %2120 = phi float [ %1589, %1580 ], [ %1823, %2104 ]
  %2121 = phi float [ %1583, %1580 ], [ %1824, %2104 ]
  %2122 = phi float [ %1584, %1580 ], [ %1825, %2104 ]
  %2123 = phi float [ %1585, %1580 ], [ %1826, %2104 ]
  %2124 = call float @dx.op.dot3.f32(i32 55, float %2114, float %2115, float %2116, float %2114, float %2115, float %2116)  ; Dot3(ax,ay,az,bx,by,bz)
  %2125 = call float @dx.op.unary.f32(i32 25, float %2124)  ; Rsqrt(value)
  %2126 = fmul fast float %2125, %2114
  %2127 = fmul fast float %2125, %2115
  %2128 = fmul fast float %2125, %2116
  %2129 = fadd fast float %2119, %747
  %2130 = call float @dx.op.unary.f32(i32 7, float %2129)  ; Saturate(value)
  %2131 = call float @dx.op.dot3.f32(i32 55, float %2126, float %2127, float %2128, float %2126, float %2127, float %2128)  ; Dot3(ax,ay,az,bx,by,bz)
  %2132 = call float @dx.op.unary.f32(i32 25, float %2131)  ; Rsqrt(value)
  %2133 = fmul fast float %2132, %2126
  %2134 = fmul fast float %2132, %2127
  %2135 = fmul fast float %2132, %2128
  %2136 = fadd fast float %2120, 0xBFB99999A0000000
  %2137 = call float @dx.op.unary.f32(i32 7, float %2136)  ; Saturate(value)
  %2138 = fmul fast float %2137, 0x3FF1C71C80000000
  %2139 = call float @dx.op.binary.f32(i32 36, float %2120, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2140 = fsub fast float 1.000000e+00, %2138
  %2141 = call float @dx.op.unary.f32(i32 7, float %2140)  ; Saturate(value)
  %2142 = fmul fast float %2141, %2121
  %2143 = fmul fast float %2141, %2122
  %2144 = fmul fast float %2141, %2123
  %2145 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2146 = call float @dx.op.unary.f32(i32 7, float %2143)  ; Saturate(value)
  %2147 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2148 = fmul fast float %2138, %2121
  %2149 = fmul fast float %2138, %2122
  %2150 = fmul fast float %2138, %2123
  %2151 = fadd fast float %2148, %2139
  %2152 = fadd fast float %2149, %2139
  %2153 = fadd fast float %2150, %2139
  %2154 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  %2155 = call float @dx.op.unary.f32(i32 7, float %2152)  ; Saturate(value)
  %2156 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  %2157 = call float @dx.op.unary.f32(i32 7, float %2118)  ; Saturate(value)
  %2158 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2159 = extractvalue %dx.types.CBufRet.i32 %2158, 3
  %2160 = and i32 %2159, 8
  %2161 = icmp ne i32 %2160, 0
  %2162 = call float @dx.op.binary.f32(i32 35, float %2145, float %2121)  ; FMax(a,b)
  %2163 = call float @dx.op.binary.f32(i32 35, float %2146, float %2121)  ; FMax(a,b)
  %2164 = call float @dx.op.binary.f32(i32 35, float %2147, float %2121)  ; FMax(a,b)
  %2165 = call float @dx.op.dot3.f32(i32 55, float %2145, float %2146, float %2147, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2166 = select i1 %188, float %2121, float %2145
  %2167 = select i1 %188, float %2165, float %2146
  %2168 = select i1 %188, float 1.000000e+00, float %2147
  %2169 = select i1 %2161, float %2162, float %2166
  %2170 = select i1 %2161, float %2163, float %2167
  %2171 = select i1 %2161, float %2164, float %2168
  %2172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2173 = extractvalue %dx.types.CBufRet.f32 %2172, 0
  %2174 = extractvalue %dx.types.CBufRet.f32 %2172, 1
  %2175 = extractvalue %dx.types.CBufRet.f32 %2172, 2
  %2176 = fadd fast float %2173, %117
  %2177 = fadd fast float %2174, %118
  %2178 = fadd fast float %2175, %119
  %2179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2180 = extractvalue %dx.types.CBufRet.f32 %2179, 0
  %2181 = extractvalue %dx.types.CBufRet.f32 %2179, 1
  %2182 = fsub fast float %2176, %2180
  %2183 = fsub fast float %2177, %2181
  %2184 = fmul fast float %2182, %2182
  %2185 = fmul fast float %2183, %2183
  %2186 = fadd fast float %2184, %2185
  %2187 = call float @dx.op.unary.f32(i32 24, float %2186)  ; Sqrt(value)
  %2188 = extractvalue %dx.types.CBufRet.f32 %2179, 2
  %2189 = fcmp fast olt float %2187, %2188
  br i1 %2189, label %2190, label %2257

; <label>:2190                                    ; preds = %2105
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 0
  %2193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2194 = extractvalue %dx.types.CBufRet.f32 %2193, 0
  %2195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2196 = extractvalue %dx.types.CBufRet.f32 %2195, 0
  %2197 = extractvalue %dx.types.CBufRet.f32 %2191, 1
  %2198 = extractvalue %dx.types.CBufRet.f32 %2193, 1
  %2199 = extractvalue %dx.types.CBufRet.f32 %2195, 1
  %2200 = extractvalue %dx.types.CBufRet.f32 %2191, 3
  %2201 = extractvalue %dx.types.CBufRet.f32 %2193, 3
  %2202 = extractvalue %dx.types.CBufRet.f32 %2195, 3
  %2203 = fadd fast float %2200, %2176
  %2204 = fadd fast float %2201, %2177
  %2205 = fadd fast float %2202, %2178
  %2206 = fmul fast float %2203, %2192
  %2207 = call float @dx.op.tertiary.f32(i32 46, float %2204, float %2194, float %2206)  ; FMad(a,b,c)
  %2208 = call float @dx.op.tertiary.f32(i32 46, float %2205, float %2196, float %2207)  ; FMad(a,b,c)
  %2209 = fmul fast float %2203, %2197
  %2210 = call float @dx.op.tertiary.f32(i32 46, float %2204, float %2198, float %2209)  ; FMad(a,b,c)
  %2211 = call float @dx.op.tertiary.f32(i32 46, float %2205, float %2199, float %2210)  ; FMad(a,b,c)
  %2212 = fsub fast float %2208, %2200
  %2213 = fsub fast float %2211, %2201
  %2214 = fsub fast float %2212, %2180
  %2215 = fadd fast float %2214, %2188
  %2216 = fsub fast float %2213, %2181
  %2217 = fadd fast float %2216, %2188
  %2218 = extractvalue %dx.types.CBufRet.f32 %2179, 3
  %2219 = fmul fast float %2215, %2218
  %2220 = fmul fast float %2217, %2218
  %2221 = call float @dx.op.unary.f32(i32 7, float %2219)  ; Saturate(value)
  %2222 = call float @dx.op.unary.f32(i32 7, float %2220)  ; Saturate(value)
  %2223 = fsub fast float 1.000000e+00, %2221
  %2224 = fsub fast float 1.000000e+00, %2222
  %2225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %2223, float %2224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2226 = extractvalue %dx.types.ResRet.f32 %2225, 0
  %2227 = fcmp fast ugt float %2226, 0.000000e+00
  br i1 %2227, label %2228, label %2531

; <label>:2228                                    ; preds = %2190
  %2229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2230 = extractvalue %dx.types.CBufRet.f32 %2229, 2
  %2231 = fmul fast float %2230, %2226
  %2232 = extractvalue %dx.types.CBufRet.f32 %2229, 3
  %2233 = fadd fast float %2232, %2231
  %2234 = extractvalue %dx.types.CBufRet.f32 %2195, 2
  %2235 = fadd fast float %2233, %2202
  %2236 = fmul fast float %2208, %2196
  %2237 = call float @dx.op.tertiary.f32(i32 46, float %2211, float %2199, float %2236)  ; FMad(a,b,c)
  %2238 = call float @dx.op.tertiary.f32(i32 46, float %2235, float %2234, float %2237)  ; FMad(a,b,c)
  %2239 = fsub fast float %2238, %2202
  %2240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2241 = extractvalue %dx.types.CBufRet.f32 %2240, 2
  %2242 = fsub fast float %2239, %2241
  %2243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %2223, float %2224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2244 = extractvalue %dx.types.ResRet.f32 %2243, 0
  %2245 = extractvalue %dx.types.ResRet.f32 %2243, 1
  %2246 = extractvalue %dx.types.ResRet.f32 %2243, 2
  %2247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %2223, float %2224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2248 = extractvalue %dx.types.ResRet.f32 %2247, 0
  %2249 = extractvalue %dx.types.ResRet.f32 %2247, 1
  %2250 = extractvalue %dx.types.ResRet.f32 %2247, 2
  %2251 = fadd fast float %2248, %2244
  %2252 = fmul fast float %2251, 0x3F847AE140000000
  %2253 = fadd fast float %2249, %2245
  %2254 = fmul fast float %2253, 0x3F847AE140000000
  %2255 = fadd fast float %2250, %2246
  %2256 = fmul fast float %2255, 0x3F847AE140000000
  br label %2531

; <label>:2257                                    ; preds = %2105
  %2258 = and i32 %164, 1
  %2259 = icmp eq i32 %2258, 0
  br i1 %2259, label %2531, label %2260

; <label>:2260                                    ; preds = %2257
  %2261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2262 = extractvalue %dx.types.CBufRet.f32 %2261, 0
  %2263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2264 = extractvalue %dx.types.CBufRet.f32 %2263, 0
  %2265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2266 = extractvalue %dx.types.CBufRet.f32 %2265, 0
  %2267 = extractvalue %dx.types.CBufRet.f32 %2261, 1
  %2268 = extractvalue %dx.types.CBufRet.f32 %2263, 1
  %2269 = extractvalue %dx.types.CBufRet.f32 %2265, 1
  %2270 = extractvalue %dx.types.CBufRet.f32 %2261, 3
  %2271 = extractvalue %dx.types.CBufRet.f32 %2263, 3
  %2272 = extractvalue %dx.types.CBufRet.f32 %2265, 3
  %2273 = fadd fast float %2270, %2176
  %2274 = fadd fast float %2271, %2177
  %2275 = fadd fast float %2272, %2178
  %2276 = fmul fast float %2273, %2262
  %2277 = call float @dx.op.tertiary.f32(i32 46, float %2274, float %2264, float %2276)  ; FMad(a,b,c)
  %2278 = call float @dx.op.tertiary.f32(i32 46, float %2275, float %2266, float %2277)  ; FMad(a,b,c)
  %2279 = fmul fast float %2273, %2267
  %2280 = call float @dx.op.tertiary.f32(i32 46, float %2274, float %2268, float %2279)  ; FMad(a,b,c)
  %2281 = call float @dx.op.tertiary.f32(i32 46, float %2275, float %2269, float %2280)  ; FMad(a,b,c)
  %2282 = fsub fast float %2278, %2270
  %2283 = fsub fast float %2281, %2271
  %2284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2285 = extractvalue %dx.types.CBufRet.f32 %2284, 0
  %2286 = extractvalue %dx.types.CBufRet.f32 %2284, 1
  %2287 = extractvalue %dx.types.CBufRet.f32 %2284, 2
  %2288 = extractvalue %dx.types.CBufRet.f32 %2284, 3
  %2289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2290 = extractvalue %dx.types.CBufRet.f32 %2289, 3
  %2291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2292 = extractvalue %dx.types.CBufRet.i32 %2291, 0
  %2293 = extractvalue %dx.types.CBufRet.i32 %2291, 1
  %2294 = udiv i32 %2293, %2292
  %2295 = fsub fast float %2282, %2285
  %2296 = fsub fast float %2283, %2286
  %2297 = call float @dx.op.binary.f32(i32 35, float %2295, float 0.000000e+00)  ; FMax(a,b)
  %2298 = call float @dx.op.binary.f32(i32 35, float %2296, float 0.000000e+00)  ; FMax(a,b)
  %2299 = call float @dx.op.binary.f32(i32 36, float %2297, float %2287)  ; FMin(a,b)
  %2300 = call float @dx.op.binary.f32(i32 36, float %2298, float %2288)  ; FMin(a,b)
  %2301 = add i32 %2292, -1
  %2302 = add i32 %2294, -1
  %2303 = fmul fast float %2299, %2290
  %2304 = fmul fast float %2300, %2290
  %2305 = fptoui float %2303 to i32
  %2306 = fptoui float %2304 to i32
  %2307 = call i32 @dx.op.binary.i32(i32 40, i32 %2305, i32 %2301)  ; UMin(a,b)
  %2308 = call i32 @dx.op.binary.i32(i32 40, i32 %2306, i32 %2302)  ; UMin(a,b)
  %2309 = mul i32 %2308, %2292
  %2310 = add i32 %2309, %2307
  %2311 = shl i32 %2310, 2
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = icmp eq i32 %2313, -1
  br i1 %2314, label %2531, label %2315

; <label>:2315                                    ; preds = %2260
  %2316 = mul i32 %2313, 148
  %2317 = add i32 %2316, 4
  %2318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.f32 %2318, 0
  %2320 = add i32 %2316, 8
  %2321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2320, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.f32 %2321, 0
  %2323 = add i32 %2316, 36
  %2324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.f32 %2324, 0
  %2326 = add i32 %2316, 60
  %2327 = add i32 %2316, 92
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2327, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = add i32 %2316, 116
  %2331 = fsub fast float %2282, %2319
  %2332 = fsub fast float %2283, %2322
  %2333 = fmul fast float %2290, %2331
  %2334 = fmul fast float %2290, %2332
  %2335 = call float @dx.op.unary.f32(i32 7, float %2333)  ; Saturate(value)
  %2336 = call float @dx.op.unary.f32(i32 7, float %2334)  ; Saturate(value)
  %2337 = fsub fast float 1.000000e+00, %2336
  %2338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2339 = extractvalue %dx.types.CBufRet.f32 %2338, 2
  %2340 = call float @dx.op.unary.f32(i32 83, float %2335)  ; DerivCoarseX(value)
  %2341 = call float @dx.op.unary.f32(i32 83, float %2337)  ; DerivCoarseX(value)
  %2342 = call float @dx.op.unary.f32(i32 84, float %2335)  ; DerivCoarseY(value)
  %2343 = call float @dx.op.unary.f32(i32 84, float %2337)  ; DerivCoarseY(value)
  %2344 = fmul fast float %2340, %2339
  %2345 = fmul fast float %2341, %2339
  %2346 = fmul fast float %2342, %2339
  %2347 = fmul fast float %2343, %2339
  %2348 = call float @dx.op.dot2.f32(i32 54, float %2346, float %2347, float %2346, float %2347)  ; Dot2(ax,ay,bx,by)
  %2349 = call float @dx.op.dot2.f32(i32 54, float %2344, float %2345, float %2344, float %2345)  ; Dot2(ax,ay,bx,by)
  %2350 = call float @dx.op.binary.f32(i32 35, float %2349, float %2348)  ; FMax(a,b)
  %2351 = call float @dx.op.unary.f32(i32 23, float %2350)  ; Log(value)
  %2352 = fmul fast float %2351, 5.000000e-01
  %2353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.f32 %2353, 1
  %2355 = fadd fast float %2354, %2352
  %2356 = call float @dx.op.binary.f32(i32 35, float %2355, float 0.000000e+00)  ; FMax(a,b)
  %2357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2358 = extractvalue %dx.types.CBufRet.f32 %2357, 3
  %2359 = fadd fast float %2358, %2356
  %2360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2361 = extractvalue %dx.types.CBufRet.f32 %2360, 3
  %2362 = fadd fast float %2359, %2361
  %2363 = add i32 %2329, 0
  %2364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2363, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2365 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2364, i32 0)  ; GetDimensions(handle,mipLevel)
  %2366 = extractvalue %dx.types.Dimensions %2365, 0
  %2367 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2366)  ; FirstbitLo(value)
  %2368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2369 = extractvalue %dx.types.CBufRet.i32 %2368, 1
  %2370 = sub nsw i32 %2369, %2367
  %2371 = sitofp i32 %2370 to float
  %2372 = fsub fast float %2362, %2371
  %2373 = call float @dx.op.binary.f32(i32 35, float %2372, float 0.000000e+00)  ; FMax(a,b)
  %2374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2364, %dx.types.Handle %37, float %2335, float %2337, float %2325, float undef, i32 0, i32 0, i32 undef, float %2373)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2375 = extractvalue %dx.types.ResRet.f32 %2374, 0
  %2376 = fcmp ule float %2375, 0x3FE0101020000000
  %2377 = extractvalue %dx.types.CBufRet.i32 %2368, 0
  %2378 = and i32 %2377, 128
  %2379 = icmp ne i32 %2378, 0
  %2380 = and i1 %2376, %2379
  br i1 %2380, label %2531, label %2381

; <label>:2381                                    ; preds = %2315
  %2382 = add i32 %2316, 20
  %2383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.f32 %2383, 0
  %2385 = add i32 %2316, 24
  %2386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2387 = extractvalue %dx.types.ResRet.f32 %2386, 0
  %2388 = add i32 %2316, 40
  %2389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2388, i32 undef)  ; BufferLoad(srv,index,wot)
  %2390 = extractvalue %dx.types.ResRet.f32 %2389, 0
  %2391 = add i32 %2316, 96
  %2392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2391, i32 undef)  ; BufferLoad(srv,index,wot)
  %2393 = extractvalue %dx.types.ResRet.i32 %2392, 0
  %2394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2395 = extractvalue %dx.types.CBufRet.f32 %2394, 2
  %2396 = fmul fast float %2395, %2335
  %2397 = fmul fast float %2395, %2337
  %2398 = extractvalue %dx.types.CBufRet.f32 %2394, 3
  %2399 = fadd fast float %2396, %2398
  %2400 = fadd fast float %2397, %2398
  %2401 = add i32 %2393, 0
  %2402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2401, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2403 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2402, i32 0)  ; GetDimensions(handle,mipLevel)
  %2404 = extractvalue %dx.types.Dimensions %2403, 0
  %2405 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2404)  ; FirstbitLo(value)
  %2406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2407 = extractvalue %dx.types.CBufRet.i32 %2406, 1
  %2408 = sub nsw i32 %2407, %2405
  %2409 = sitofp i32 %2408 to float
  %2410 = fsub fast float %2359, %2409
  %2411 = call float @dx.op.binary.f32(i32 35, float %2410, float 0.000000e+00)  ; FMax(a,b)
  %2412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2402, %dx.types.Handle %37, float %2399, float %2400, float %2390, float undef, i32 0, i32 0, i32 undef, float %2411)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2413 = extractvalue %dx.types.ResRet.f32 %2412, 0
  %2414 = fmul fast float %2413, %2384
  %2415 = fadd fast float %2414, %2387
  %2416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2417 = extractvalue %dx.types.CBufRet.f32 %2416, 0
  %2418 = extractvalue %dx.types.CBufRet.f32 %2416, 1
  %2419 = extractvalue %dx.types.CBufRet.f32 %2416, 2
  %2420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2421 = extractvalue %dx.types.CBufRet.f32 %2420, 3
  %2422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2423 = extractvalue %dx.types.CBufRet.f32 %2422, 3
  %2424 = extractvalue %dx.types.CBufRet.f32 %2416, 3
  %2425 = fadd fast float %2421, %2282
  %2426 = fadd fast float %2423, %2283
  %2427 = fadd fast float %2415, %2424
  %2428 = fmul fast float %2425, %2417
  %2429 = call float @dx.op.tertiary.f32(i32 46, float %2426, float %2418, float %2428)  ; FMad(a,b,c)
  %2430 = call float @dx.op.tertiary.f32(i32 46, float %2427, float %2419, float %2429)  ; FMad(a,b,c)
  %2431 = fsub fast float %2430, %2424
  %2432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2433 = extractvalue %dx.types.CBufRet.f32 %2432, 2
  %2434 = fsub fast float %2431, %2433
  %2435 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2436 = extractvalue %dx.types.CBufRet.i32 %2435, 0
  %2437 = call i32 @dx.op.binary.i32(i32 40, i32 %2313, i32 %2436)  ; UMin(a,b)
  %2438 = mul i32 %2437, 36
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = add i32 %2438, 4
  %2442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2443 = extractvalue %dx.types.CBufRet.f32 %2442, 0
  %2444 = fmul fast float %2443, %2335
  %2445 = fmul fast float %2443, %2337
  %2446 = extractvalue %dx.types.CBufRet.f32 %2442, 1
  %2447 = fadd fast float %2444, %2446
  %2448 = fadd fast float %2445, %2446
  %2449 = icmp eq i32 %2440, 0
  br i1 %2449, label %2518, label %2450

; <label>:2450                                    ; preds = %2381
  br label %2451

; <label>:2451                                    ; preds = %2508, %2450
  %2452 = phi float [ %2509, %2508 ], [ 0.000000e+00, %2450 ]
  %2453 = phi float [ %2510, %2508 ], [ 0.000000e+00, %2450 ]
  %2454 = phi float [ %2511, %2508 ], [ 0.000000e+00, %2450 ]
  %2455 = phi float [ %2512, %2508 ], [ 0.000000e+00, %2450 ]
  %2456 = phi float [ %2513, %2508 ], [ 0.000000e+00, %2450 ]
  %2457 = phi float [ %2514, %2508 ], [ 0.000000e+00, %2450 ]
  %2458 = phi i32 [ %2515, %2508 ], [ 0, %2450 ]
  %2459 = shl i32 %2458, 2
  %2460 = add i32 %2326, %2459
  %2461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2460, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.f32 %2461, 0
  %2463 = add i32 %2330, %2459
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2463, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = add i32 %2465, 0
  %2467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2466, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2468 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2467, i32 0)  ; GetDimensions(handle,mipLevel)
  %2469 = extractvalue %dx.types.Dimensions %2468, 0
  %2470 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2469)  ; FirstbitLo(value)
  %2471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2472 = extractvalue %dx.types.CBufRet.i32 %2471, 1
  %2473 = sub nsw i32 %2472, %2470
  %2474 = sitofp i32 %2473 to float
  %2475 = fsub fast float %2359, %2474
  %2476 = call float @dx.op.binary.f32(i32 35, float %2475, float 0.000000e+00)  ; FMax(a,b)
  %2477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2467, %dx.types.Handle %37, float %2447, float %2448, float %2462, float undef, i32 0, i32 0, i32 undef, float %2476)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2478 = extractvalue %dx.types.ResRet.f32 %2477, 0
  %2479 = fcmp fast ogt float %2478, 0.000000e+00
  br i1 %2479, label %2480, label %2508

; <label>:2480                                    ; preds = %2451
  %2481 = add i32 %2441, %2459
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2481, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = and i32 %2483, 32767
  %2485 = mul nuw nsw i32 %2484, 928
  %2486 = add nuw nsw i32 %2485, 48
  %2487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2486, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.f32 %2487, 0
  %2489 = extractvalue %dx.types.ResRet.f32 %2487, 1
  %2490 = extractvalue %dx.types.ResRet.f32 %2487, 2
  %2491 = add nuw nsw i32 %2485, 60
  %2492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2491, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.f32 %2492, 0
  %2494 = extractvalue %dx.types.ResRet.f32 %2492, 1
  %2495 = extractvalue %dx.types.ResRet.f32 %2492, 2
  %2496 = fmul fast float %2488, %2478
  %2497 = fmul fast float %2489, %2478
  %2498 = fmul fast float %2490, %2478
  %2499 = fadd fast float %2496, %2452
  %2500 = fadd fast float %2497, %2453
  %2501 = fadd fast float %2498, %2454
  %2502 = fmul fast float %2493, %2478
  %2503 = fmul fast float %2494, %2478
  %2504 = fmul fast float %2495, %2478
  %2505 = fadd fast float %2502, %2455
  %2506 = fadd fast float %2503, %2456
  %2507 = fadd fast float %2504, %2457
  br label %2508

; <label>:2508                                    ; preds = %2480, %2451
  %2509 = phi float [ %2499, %2480 ], [ %2452, %2451 ]
  %2510 = phi float [ %2500, %2480 ], [ %2453, %2451 ]
  %2511 = phi float [ %2501, %2480 ], [ %2454, %2451 ]
  %2512 = phi float [ %2505, %2480 ], [ %2455, %2451 ]
  %2513 = phi float [ %2506, %2480 ], [ %2456, %2451 ]
  %2514 = phi float [ %2507, %2480 ], [ %2457, %2451 ]
  %2515 = add nuw i32 %2458, 1
  %2516 = icmp eq i32 %2515, %2440
  br i1 %2516, label %2517, label %2451

; <label>:2517                                    ; preds = %2508
  br label %2518

; <label>:2518                                    ; preds = %2517, %2381
  %2519 = phi float [ 0.000000e+00, %2381 ], [ %2509, %2517 ]
  %2520 = phi float [ 0.000000e+00, %2381 ], [ %2510, %2517 ]
  %2521 = phi float [ 0.000000e+00, %2381 ], [ %2511, %2517 ]
  %2522 = phi float [ 0.000000e+00, %2381 ], [ %2512, %2517 ]
  %2523 = phi float [ 0.000000e+00, %2381 ], [ %2513, %2517 ]
  %2524 = phi float [ 0.000000e+00, %2381 ], [ %2514, %2517 ]
  %2525 = fadd fast float %2522, %2519
  %2526 = fmul fast float %2525, 0x3F847AE140000000
  %2527 = fadd fast float %2523, %2520
  %2528 = fmul fast float %2527, 0x3F847AE140000000
  %2529 = fadd fast float %2524, %2521
  %2530 = fmul fast float %2529, 0x3F847AE140000000
  br label %2531

; <label>:2531                                    ; preds = %2518, %2315, %2260, %2257, %2228, %2190
  %2532 = phi float [ %2242, %2228 ], [ -1.310720e+05, %2190 ], [ %2434, %2518 ], [ -1.310720e+05, %2260 ], [ -1.310720e+05, %2315 ], [ -1.310720e+05, %2257 ]
  %2533 = phi float [ %2252, %2228 ], [ 0.000000e+00, %2190 ], [ %2526, %2518 ], [ 0.000000e+00, %2260 ], [ 0.000000e+00, %2315 ], [ 0.000000e+00, %2257 ]
  %2534 = phi float [ %2254, %2228 ], [ 0.000000e+00, %2190 ], [ %2528, %2518 ], [ 0.000000e+00, %2260 ], [ 0.000000e+00, %2315 ], [ 0.000000e+00, %2257 ]
  %2535 = phi float [ %2256, %2228 ], [ 0.000000e+00, %2190 ], [ %2530, %2518 ], [ 0.000000e+00, %2260 ], [ 0.000000e+00, %2315 ], [ 0.000000e+00, %2257 ]
  %2536 = phi i1 [ true, %2228 ], [ false, %2190 ], [ true, %2518 ], [ false, %2260 ], [ false, %2315 ], [ false, %2257 ]
  %2537 = and i32 %164, 3
  %2538 = icmp eq i32 %2537, 1
  %2539 = select i1 %2538, float 1.000000e+00, float 0.000000e+00
  %2540 = fsub fast float %2532, %119
  %2541 = call float @dx.op.unary.f32(i32 7, float %2540)  ; Saturate(value)
  %2542 = select i1 %2536, float %2541, float 1.000000e+00
  %2543 = fmul fast float %2542, %2539
  %2544 = icmp eq i32 %2537, 3
  %2545 = select i1 %2544, float 1.000000e+00, float %2543
  %2546 = call float @dx.op.binary.f32(i32 35, float %2106, float %2545)  ; FMax(a,b)
  %2547 = call float @dx.op.unary.f32(i32 7, float %2546)  ; Saturate(value)
  %2548 = fcmp fast une float %2547, 0.000000e+00
  %2549 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %2550 = call float @dx.op.unary.f32(i32 25, float %2549)  ; Rsqrt(value)
  br i1 %2548, label %2558, label %2551

; <label>:2551                                    ; preds = %2531
  %2552 = fmul fast float %2550, %117
  %2553 = fmul fast float %2550, %118
  %2554 = fmul fast float %2550, %119
  %2555 = fsub fast float -0.000000e+00, %2552
  %2556 = fsub fast float -0.000000e+00, %2553
  %2557 = fsub fast float -0.000000e+00, %2554
  br label %2726

; <label>:2558                                    ; preds = %2531
  %2559 = fmul fast float %117, %2550
  %2560 = fsub fast float -0.000000e+00, %2559
  %2561 = fmul fast float %118, %2550
  %2562 = fsub fast float -0.000000e+00, %2561
  %2563 = fmul fast float %119, %2550
  %2564 = fsub fast float -0.000000e+00, %2563
  %2565 = call float @dx.op.dot3.f32(i32 55, float %2560, float %2562, float %2564, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %2566 = fmul fast float %2547, 2.500000e+00
  %2567 = call float @dx.op.unary.f32(i32 7, float %2566)  ; Saturate(value)
  %2568 = fmul fast float %2547, 0x4013FFFFE0000000
  %2569 = fadd fast float %2568, 0xBFFFFFFFE0000000
  %2570 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  %2571 = fmul fast float %2547, 0x4004000020000000
  %2572 = fadd fast float %2571, 0xBFF8000040000000
  %2573 = call float @dx.op.unary.f32(i32 7, float %2572)  ; Saturate(value)
  %2574 = call float @dx.op.unary.f32(i32 7, float %2567)  ; Saturate(value)
  %2575 = fmul fast float %2136, 1.000000e+01
  %2576 = call float @dx.op.unary.f32(i32 7, float %2575)  ; Saturate(value)
  %2577 = fmul fast float %2576, 2.000000e+00
  %2578 = fsub fast float 3.000000e+00, %2577
  %2579 = fmul fast float %2576, %2576
  %2580 = fmul fast float %2579, %2578
  %2581 = fsub fast float 1.000000e+00, %2580
  %2582 = fsub fast float 0x3FE3333340000000, %2157
  %2583 = fmul fast float %2582, 0x400AAAAAA0000000
  %2584 = call float @dx.op.unary.f32(i32 7, float %2583)  ; Saturate(value)
  %2585 = fmul fast float %2581, %2584
  %2586 = fmul fast float %2169, 0x3FEA2B8620000000
  %2587 = fmul fast float %2170, 0x3FEA2B8620000000
  %2588 = fmul fast float %2171, 0x3FEA2B8620000000
  %2589 = fadd fast float %2586, 0x3FC81DFBA0000000
  %2590 = fmul fast float %2589, %2169
  %2591 = fadd fast float %2590, 0x3F910E6020000000
  %2592 = fadd fast float %2587, 0x3FC81DFBA0000000
  %2593 = fmul fast float %2592, %2170
  %2594 = fadd fast float %2593, 0x3F910E6020000000
  %2595 = fadd fast float %2588, 0x3FC81DFBA0000000
  %2596 = fmul fast float %2595, %2171
  %2597 = fadd fast float %2596, 0x3F910E6020000000
  %2598 = call float @dx.op.unary.f32(i32 7, float %2591)  ; Saturate(value)
  %2599 = call float @dx.op.unary.f32(i32 7, float %2594)  ; Saturate(value)
  %2600 = call float @dx.op.unary.f32(i32 7, float %2597)  ; Saturate(value)
  %2601 = fsub fast float %2598, %2169
  %2602 = fsub fast float %2599, %2170
  %2603 = fsub fast float %2600, %2171
  %2604 = fmul fast float %2601, %2574
  %2605 = fmul fast float %2604, %2585
  %2606 = fmul fast float %2602, %2574
  %2607 = fmul fast float %2606, %2585
  %2608 = fmul fast float %2603, %2574
  %2609 = fmul fast float %2608, %2585
  %2610 = fadd fast float %2605, %2169
  %2611 = fadd fast float %2607, %2170
  %2612 = fadd fast float %2609, %2171
  %2613 = fmul fast float %2117, %2117
  %2614 = fmul fast float %2613, %2613
  %2615 = fadd fast float %2570, 1.000000e+00
  %2616 = fsub fast float %2615, %2585
  %2617 = call float @dx.op.unary.f32(i32 7, float %2616)  ; Saturate(value)
  %2618 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2619 = call float @dx.op.unary.f32(i32 7, float %2618)  ; Saturate(value)
  %2620 = fsub fast float 1.000000e+00, %2614
  %2621 = call float @dx.op.binary.f32(i32 36, float %2617, float %2620)  ; FMin(a,b)
  %2622 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  %2623 = call float @dx.op.binary.f32(i32 35, float %2621, float %2622)  ; FMax(a,b)
  %2624 = fadd fast float %2619, 0xBFE4CCCCC0000000
  %2625 = fmul fast float %2624, 0x4006DB6DA0000000
  %2626 = call float @dx.op.unary.f32(i32 7, float %2625)  ; Saturate(value)
  %2627 = fmul fast float %2626, 2.000000e+00
  %2628 = fsub fast float 3.000000e+00, %2627
  %2629 = bitcast float %2154 to i32
  %2630 = ashr i32 %2629, 1
  %2631 = add nsw i32 %2630, 532487669
  %2632 = bitcast i32 %2631 to float
  %2633 = fsub fast float 1.000000e+00, %2632
  %2634 = bitcast float %2633 to i32
  %2635 = sub nsw i32 2129859010, %2634
  %2636 = bitcast i32 %2635 to float
  %2637 = fmul fast float %2636, 2.000000e+00
  %2638 = bitcast float %2155 to i32
  %2639 = ashr i32 %2638, 1
  %2640 = add nsw i32 %2639, 532487669
  %2641 = bitcast i32 %2640 to float
  %2642 = fsub fast float 1.000000e+00, %2641
  %2643 = bitcast float %2642 to i32
  %2644 = sub nsw i32 2129859010, %2643
  %2645 = bitcast i32 %2644 to float
  %2646 = fmul fast float %2645, 2.000000e+00
  %2647 = bitcast float %2156 to i32
  %2648 = ashr i32 %2647, 1
  %2649 = add nsw i32 %2648, 532487669
  %2650 = bitcast i32 %2649 to float
  %2651 = fsub fast float 1.000000e+00, %2650
  %2652 = bitcast float %2651 to i32
  %2653 = sub nsw i32 2129859010, %2652
  %2654 = bitcast i32 %2653 to float
  %2655 = fmul fast float %2654, 2.000000e+00
  %2656 = fsub fast float 0x4002A9FBE0000000, %2637
  %2657 = fadd fast float %2637, 0x3FD54FDF00000000
  %2658 = bitcast float %2657 to i32
  %2659 = sub nsw i32 2129859010, %2658
  %2660 = bitcast i32 %2659 to float
  %2661 = fmul fast float %2660, %2656
  %2662 = fmul fast float %2661, %2661
  %2663 = fsub fast float 0x4002A9FBE0000000, %2646
  %2664 = fadd fast float %2646, 0x3FD54FDF00000000
  %2665 = bitcast float %2664 to i32
  %2666 = sub nsw i32 2129859010, %2665
  %2667 = bitcast i32 %2666 to float
  %2668 = fmul fast float %2667, %2663
  %2669 = fmul fast float %2668, %2668
  %2670 = fsub fast float 0x4002A9FBE0000000, %2655
  %2671 = fadd fast float %2655, 0x3FD54FDF00000000
  %2672 = bitcast float %2671 to i32
  %2673 = sub nsw i32 2129859010, %2672
  %2674 = bitcast i32 %2673 to float
  %2675 = fmul fast float %2674, %2670
  %2676 = fmul fast float %2675, %2675
  %2677 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2662)  ; FMax(a,b)
  %2678 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2669)  ; FMax(a,b)
  %2679 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2676)  ; FMax(a,b)
  %2680 = fsub fast float 1.000000e+00, %2565
  %2681 = fadd fast float %2680, %2581
  %2682 = call float @dx.op.unary.f32(i32 7, float %2681)  ; Saturate(value)
  %2683 = fsub fast float 1.000000e+00, %2545
  %2684 = fmul fast float %2623, %2683
  %2685 = fmul fast float %2626, %2626
  %2686 = fmul fast float %2685, %2684
  %2687 = fmul fast float %2686, %2628
  %2688 = fmul fast float %2683, 0xBFE99999A0000000
  %2689 = fmul fast float %2688, %2574
  %2690 = fmul fast float %2689, %2585
  %2691 = fadd fast float %2690, 1.000000e+00
  %2692 = fadd fast float %2157, -1.000000e+00
  %2693 = fmul fast float %2691, %2692
  %2694 = fadd fast float %2693, 1.000000e+00
  %2695 = fsub fast float %2677, %2154
  %2696 = fsub fast float %2678, %2155
  %2697 = fsub fast float %2679, %2156
  %2698 = fmul fast float %2687, %2695
  %2699 = fmul fast float %2687, %2696
  %2700 = fmul fast float %2687, %2697
  %2701 = fadd fast float %2698, %2154
  %2702 = fadd fast float %2699, %2155
  %2703 = fadd fast float %2700, %2156
  %2704 = fsub fast float %53, %2133
  %2705 = fsub fast float %54, %2134
  %2706 = fsub fast float %55, %2135
  %2707 = fmul fast float %2687, %2704
  %2708 = fmul fast float %2687, %2705
  %2709 = fmul fast float %2687, %2706
  %2710 = fadd fast float %2707, %2133
  %2711 = fadd fast float %2708, %2134
  %2712 = fadd fast float %2709, %2135
  %2713 = fmul fast float %2687, %2682
  %2714 = call float @dx.op.unary.f32(i32 7, float %2694)  ; Saturate(value)
  %2715 = fsub fast float 1.000000e+00, %2714
  %2716 = fmul fast float %2713, %2715
  %2717 = fadd fast float %2716, %2714
  %2718 = fsub fast float 1.000000e+00, %2117
  %2719 = fmul fast float %2687, %2718
  %2720 = fadd fast float %2719, %2117
  %2721 = call float @dx.op.dot3.f32(i32 55, float %2710, float %2711, float %2712, float %2710, float %2711, float %2712)  ; Dot3(ax,ay,az,bx,by,bz)
  %2722 = call float @dx.op.unary.f32(i32 25, float %2721)  ; Rsqrt(value)
  %2723 = fmul fast float %2710, %2722
  %2724 = fmul fast float %2711, %2722
  %2725 = fmul fast float %2712, %2722
  br label %2726

; <label>:2726                                    ; preds = %2558, %2551
  %2727 = phi float [ %2557, %2551 ], [ %2564, %2558 ]
  %2728 = phi float [ %2556, %2551 ], [ %2562, %2558 ]
  %2729 = phi float [ %2555, %2551 ], [ %2560, %2558 ]
  %2730 = phi float [ %2554, %2551 ], [ %2563, %2558 ]
  %2731 = phi float [ %2553, %2551 ], [ %2561, %2558 ]
  %2732 = phi float [ %2552, %2551 ], [ %2559, %2558 ]
  %2733 = phi float [ %2154, %2551 ], [ %2701, %2558 ]
  %2734 = phi float [ %2155, %2551 ], [ %2702, %2558 ]
  %2735 = phi float [ %2156, %2551 ], [ %2703, %2558 ]
  %2736 = phi float [ %2133, %2551 ], [ %2723, %2558 ]
  %2737 = phi float [ %2134, %2551 ], [ %2724, %2558 ]
  %2738 = phi float [ %2135, %2551 ], [ %2725, %2558 ]
  %2739 = phi float [ %2169, %2551 ], [ %2610, %2558 ]
  %2740 = phi float [ %2170, %2551 ], [ %2611, %2558 ]
  %2741 = phi float [ %2171, %2551 ], [ %2612, %2558 ]
  %2742 = phi float [ %2157, %2551 ], [ %2717, %2558 ]
  %2743 = phi float [ %2117, %2551 ], [ %2720, %2558 ]
  %2744 = select i1 %188, float 0.000000e+00, float %2735
  %2745 = call float @dx.op.dot3.f32(i32 55, float %2736, float %2737, float %2738, float %2729, float %2728, float %2727)  ; Dot3(ax,ay,az,bx,by,bz)
  %2746 = call float @dx.op.unary.f32(i32 7, float %2745)  ; Saturate(value)
  %2747 = call float @dx.op.dot3.f32(i32 55, float %2732, float %2731, float %2730, float %2736, float %2737, float %2738)  ; Dot3(ax,ay,az,bx,by,bz)
  %2748 = fmul fast float %2747, 2.000000e+00
  %2749 = fmul fast float %2748, %2736
  %2750 = fmul fast float %2748, %2737
  %2751 = fmul fast float %2748, %2738
  %2752 = fsub fast float %2732, %2749
  %2753 = fsub fast float %2731, %2750
  %2754 = fsub fast float %2730, %2751
  %2755 = call float @dx.op.binary.f32(i32 36, float %2743, float 1.000000e+00)  ; FMin(a,b)
  %2756 = fsub fast float 1.000000e+00, %2743
  %2757 = bitcast float %2756 to i32
  %2758 = sub nsw i32 2129859010, %2757
  %2759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2760 = extractvalue %dx.types.CBufRet.f32 %2759, 0
  %2761 = extractvalue %dx.types.CBufRet.f32 %2759, 1
  %2762 = fadd fast float %2760, %117
  %2763 = fadd fast float %2761, %118
  %2764 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2765 = extractvalue %dx.types.CBufRet.i32 %2764, 0
  %2766 = icmp eq i32 %2765, 1
  br i1 %2766, label %2767, label %2802

; <label>:2767                                    ; preds = %2726
  %2768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2769 = extractvalue %dx.types.CBufRet.f32 %2768, 0
  %2770 = extractvalue %dx.types.CBufRet.f32 %2768, 1
  %2771 = fsub fast float %2762, %2769
  %2772 = fsub fast float %2763, %2770
  %2773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2774 = extractvalue %dx.types.CBufRet.f32 %2773, 0
  %2775 = extractvalue %dx.types.CBufRet.f32 %2773, 1
  %2776 = fmul fast float %2771, %2774
  %2777 = fmul fast float %2772, %2775
  %2778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %2776, float %2777, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2779 = extractvalue %dx.types.ResRet.f32 %2778, 0
  %2780 = fcmp fast ogt float %2779, 0.000000e+00
  %2781 = extractvalue %dx.types.CBufRet.i32 %2764, 3
  %2782 = icmp ne i32 %2781, 0
  %2783 = and i1 %2780, %2782
  br i1 %2783, label %2784, label %2802, !dx.controlflow.hints !79

; <label>:2784                                    ; preds = %2767
  %2785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2786 = extractvalue %dx.types.CBufRet.f32 %2785, 0
  %2787 = extractvalue %dx.types.CBufRet.f32 %2785, 1
  %2788 = fsub fast float %2762, %2786
  %2789 = fsub fast float %2763, %2787
  %2790 = fmul fast float %2788, %2788
  %2791 = fmul fast float %2789, %2789
  %2792 = fadd fast float %2790, %2791
  %2793 = uitofp i32 %2781 to float
  %2794 = fmul fast float %2793, %2793
  %2795 = fcmp fast ogt float %2792, %2794
  br i1 %2795, label %2802, label %2796

; <label>:2796                                    ; preds = %2784
  %2797 = call float @dx.op.unary.f32(i32 24, float %2792)  ; Sqrt(value)
  %2798 = fsub fast float %2793, %2797
  %2799 = fmul fast float %2798, 0x3F75555560000000
  %2800 = call float @dx.op.unary.f32(i32 7, float %2799)  ; Saturate(value)
  %2801 = call float @dx.op.binary.f32(i32 36, float %2800, float %2779)  ; FMin(a,b)
  br label %2802

; <label>:2802                                    ; preds = %2796, %2784, %2767, %2726
  %2803 = phi float [ 1.000000e+00, %2726 ], [ %2801, %2796 ], [ %2779, %2767 ], [ 0.000000e+00, %2784 ]
  %2804 = fcmp fast ogt float %2803, 0.000000e+00
  br i1 %2804, label %2805, label %2903, !dx.controlflow.hints !80

; <label>:2805                                    ; preds = %2802
  %2806 = fadd fast float %148, 5.000000e-01
  %2807 = call float @dx.op.unary.f32(i32 27, float %2806)  ; Round_ni(value)
  %2808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %146, float %147, float %2807, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2809 = extractvalue %dx.types.ResRet.f32 %2808, 0
  %2810 = extractvalue %dx.types.ResRet.f32 %2808, 1
  %2811 = extractvalue %dx.types.ResRet.f32 %2808, 2
  %2812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2813 = extractvalue %dx.types.CBufRet.f32 %2812, 3
  %2814 = fmul fast float %2813, %2809
  %2815 = fmul fast float %2813, %2810
  %2816 = fmul fast float %2813, %2811
  %2817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %146, float %147, float %2807, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2818 = extractvalue %dx.types.ResRet.f32 %2817, 0
  %2819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %146, float %147, float %2807, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2820 = extractvalue %dx.types.ResRet.f32 %2819, 0
  %2821 = extractvalue %dx.types.ResRet.f32 %2819, 1
  %2822 = fmul fast float %2820, 2.000000e+00
  %2823 = fmul fast float %2821, 2.000000e+00
  %2824 = fadd fast float %2822, -1.000000e+00
  %2825 = fadd fast float %2823, -1.000000e+00
  %2826 = fadd fast float %2824, %2825
  %2827 = fmul fast float %2826, 5.000000e-01
  %2828 = fsub fast float %2824, %2825
  %2829 = fmul fast float %2828, 5.000000e-01
  %2830 = call float @dx.op.unary.f32(i32 6, float %2827)  ; FAbs(value)
  %2831 = fsub fast float 1.000000e+00, %2830
  %2832 = call float @dx.op.unary.f32(i32 6, float %2829)  ; FAbs(value)
  %2833 = fsub fast float %2831, %2832
  %2834 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2833)  ; FMax(a,b)
  %2835 = call float @dx.op.dot3.f32(i32 55, float %2827, float %2829, float %2834, float %2827, float %2829, float %2834)  ; Dot3(ax,ay,az,bx,by,bz)
  %2836 = bitcast float %2835 to i32
  %2837 = ashr i32 %2836, 1
  %2838 = sub nsw i32 1597250115, %2837
  %2839 = bitcast i32 %2838 to float
  %2840 = fmul fast float %2839, %2827
  %2841 = fmul fast float %2839, %2829
  %2842 = fmul fast float %2839, %2834
  %2843 = fsub fast float 1.000000e+00, %2818
  %2844 = fdiv fast float %2843, %2842
  %2845 = fmul fast float %2842, %53
  %2846 = fmul fast float %2842, %54
  %2847 = fmul fast float %2842, %55
  %2848 = fmul fast float %2840, %49
  %2849 = fmul fast float %2840, %50
  %2850 = fmul fast float %2840, %51
  %2851 = fadd fast float %2845, %2848
  %2852 = fadd fast float %2846, %2849
  %2853 = fadd fast float %2847, %2850
  %2854 = fmul fast float %2841, %81
  %2855 = fmul fast float %2841, %82
  %2856 = fmul fast float %2841, %83
  %2857 = fadd fast float %2851, %2854
  %2858 = fadd fast float %2852, %2855
  %2859 = fadd fast float %2853, %2856
  %2860 = call float @dx.op.dot3.f32(i32 55, float %2857, float %2858, float %2859, float %2857, float %2858, float %2859)  ; Dot3(ax,ay,az,bx,by,bz)
  %2861 = call float @dx.op.unary.f32(i32 25, float %2860)  ; Rsqrt(value)
  %2862 = fmul fast float %2857, %2861
  %2863 = fmul fast float %2858, %2861
  %2864 = fmul fast float %2859, %2861
  %2865 = call float @dx.op.dot3.f32(i32 55, float %2736, float %2737, float %2738, float %2736, float %2737, float %2738)  ; Dot3(ax,ay,az,bx,by,bz)
  %2866 = call float @dx.op.unary.f32(i32 7, float %2865)  ; Saturate(value)
  %2867 = fmul fast float %2866, 5.000000e-01
  %2868 = fadd fast float %2867, 5.000000e-01
  %2869 = fmul fast float %2868, %2818
  %2870 = call float @dx.op.dot3.f32(i32 55, float %2736, float %2737, float %2738, float %2862, float %2863, float %2864)  ; Dot3(ax,ay,az,bx,by,bz)
  %2871 = call float @dx.op.unary.f32(i32 7, float %2870)  ; Saturate(value)
  %2872 = fmul fast float %2871, %2844
  %2873 = fadd fast float %2869, %2872
  %2874 = fsub fast float 5.000000e-01, %2867
  %2875 = fmul fast float %2874, %2739
  %2876 = fmul fast float %2874, %2740
  %2877 = fmul fast float %2874, %2741
  %2878 = fadd fast float %2873, %2875
  %2879 = fmul fast float %2878, %2814
  %2880 = fadd fast float %2873, %2876
  %2881 = fmul fast float %2880, %2815
  %2882 = fadd fast float %2873, %2877
  %2883 = fmul fast float %2882, %2816
  %2884 = call float @dx.op.dot3.f32(i32 55, float %2752, float %2753, float %2754, float %2736, float %2737, float %2738)  ; Dot3(ax,ay,az,bx,by,bz)
  %2885 = call float @dx.op.unary.f32(i32 7, float %2884)  ; Saturate(value)
  %2886 = fmul fast float %2885, 5.000000e-01
  %2887 = fadd fast float %2886, 5.000000e-01
  %2888 = fmul fast float %2887, %2818
  %2889 = call float @dx.op.dot3.f32(i32 55, float %2752, float %2753, float %2754, float %2862, float %2863, float %2864)  ; Dot3(ax,ay,az,bx,by,bz)
  %2890 = call float @dx.op.unary.f32(i32 7, float %2889)  ; Saturate(value)
  %2891 = fmul fast float %2890, %2844
  %2892 = fadd fast float %2888, %2891
  %2893 = fsub fast float 5.000000e-01, %2886
  %2894 = fmul fast float %2893, %2739
  %2895 = fmul fast float %2893, %2740
  %2896 = fmul fast float %2893, %2741
  %2897 = fadd fast float %2892, %2894
  %2898 = fmul fast float %2897, %2814
  %2899 = fadd fast float %2892, %2895
  %2900 = fmul fast float %2899, %2815
  %2901 = fadd fast float %2892, %2896
  %2902 = fmul fast float %2901, %2816
  br label %2903

; <label>:2903                                    ; preds = %2805, %2802
  %2904 = phi float [ %2898, %2805 ], [ 0.000000e+00, %2802 ]
  %2905 = phi float [ %2900, %2805 ], [ 0.000000e+00, %2802 ]
  %2906 = phi float [ %2902, %2805 ], [ 0.000000e+00, %2802 ]
  %2907 = phi float [ %2879, %2805 ], [ 0.000000e+00, %2802 ]
  %2908 = phi float [ %2881, %2805 ], [ 0.000000e+00, %2802 ]
  %2909 = phi float [ %2883, %2805 ], [ 0.000000e+00, %2802 ]
  %2910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2911 = extractvalue %dx.types.CBufRet.f32 %2910, 0
  %2912 = fcmp fast ogt float %2911, 0.000000e+00
  %2913 = and i1 %2804, %2912
  br i1 %2913, label %2914, label %3118, !dx.controlflow.hints !81

; <label>:2914                                    ; preds = %2903
  %2915 = extractvalue %dx.types.CBufRet.f32 %2759, 2
  %2916 = fadd fast float %2915, %119
  %2917 = fmul fast float %2736, 3.200000e+01
  %2918 = fmul fast float %2737, 3.200000e+01
  %2919 = fadd fast float %2762, %2917
  %2920 = fadd fast float %2763, %2918
  %2921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2922 = extractvalue %dx.types.CBufRet.f32 %2921, 0
  %2923 = extractvalue %dx.types.CBufRet.f32 %2921, 1
  %2924 = fsub fast float %2919, %2922
  %2925 = fsub fast float %2920, %2923
  %2926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2927 = extractvalue %dx.types.CBufRet.f32 %2926, 0
  %2928 = extractvalue %dx.types.CBufRet.f32 %2926, 1
  %2929 = fmul fast float %2924, %2927
  %2930 = fmul fast float %2925, %2928
  %2931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2932 = extractvalue %dx.types.CBufRet.f32 %2931, 0
  %2933 = extractvalue %dx.types.CBufRet.f32 %2931, 1
  %2934 = fsub fast float %2762, %2932
  %2935 = fsub fast float %2763, %2933
  %2936 = fmul fast float %2934, %2934
  %2937 = fmul fast float %2935, %2935
  %2938 = fadd fast float %2936, %2937
  %2939 = call float @dx.op.unary.f32(i32 24, float %2938)  ; Sqrt(value)
  %2940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2940, 0
  %2942 = extractvalue %dx.types.CBufRet.f32 %2940, 1
  %2943 = fsub fast float %2939, %2941
  %2944 = fdiv fast float %2943, %2942
  %2945 = call float @dx.op.unary.f32(i32 7, float %2944)  ; Saturate(value)
  %2946 = fmul fast float %2945, 2.000000e+00
  %2947 = fsub fast float 3.000000e+00, %2946
  %2948 = fmul fast float %2945, %2945
  %2949 = fmul fast float %2948, %2947
  %2950 = fcmp fast oge float %2929, 0.000000e+00
  %2951 = fcmp fast ole float %2929, 1.000000e+00
  %2952 = and i1 %2951, %2950
  %2953 = fcmp fast oge float %2930, 0.000000e+00
  %2954 = and i1 %2953, %2952
  %2955 = fcmp fast ole float %2930, 1.000000e+00
  %2956 = and i1 %2955, %2954
  %2957 = fcmp fast ogt float %2949, 0.000000e+00
  %2958 = and i1 %2957, %2956
  br i1 %2958, label %2959, label %3082, !dx.controlflow.hints !82

; <label>:2959                                    ; preds = %2914
  %2960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2961 = extractvalue %dx.types.CBufRet.f32 %2960, 2
  %2962 = extractvalue %dx.types.CBufRet.f32 %2960, 3
  %2963 = fmul fast float %2961, %2929
  %2964 = fmul fast float %2962, %2930
  %2965 = call float @dx.op.unary.f32(i32 27, float %2963)  ; Round_ni(value)
  %2966 = call float @dx.op.unary.f32(i32 27, float %2964)  ; Round_ni(value)
  %2967 = fptosi float %2965 to i32
  %2968 = fptosi float %2966 to i32
  %2969 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %2967, i32 %2968, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = lshr i32 %2970, 16
  %2972 = icmp eq i32 %2971, 65535
  br i1 %2972, label %3082, label %2973

; <label>:2973                                    ; preds = %2959
  %2974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2975 = extractvalue %dx.types.CBufRet.f32 %2974, 0
  %2976 = fmul fast float %2975, %2929
  %2977 = extractvalue %dx.types.CBufRet.f32 %2974, 1
  %2978 = fadd fast float %2976, %2977
  %2979 = extractvalue %dx.types.CBufRet.f32 %2974, 2
  %2980 = fmul fast float %2979, %2930
  %2981 = extractvalue %dx.types.CBufRet.f32 %2974, 3
  %2982 = fadd fast float %2980, %2981
  %2983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %2978, float %2982, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2984 = extractvalue %dx.types.ResRet.f32 %2983, 0
  %2985 = extractvalue %dx.types.ResRet.f32 %2983, 1
  %2986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2987 = extractvalue %dx.types.CBufRet.f32 %2986, 1
  %2988 = extractvalue %dx.types.CBufRet.f32 %2986, 0
  %2989 = fsub fast float %2987, %2988
  %2990 = fmul fast float %2989, %2984
  %2991 = fadd fast float %2990, %2988
  %2992 = extractvalue %dx.types.CBufRet.f32 %2986, 3
  %2993 = extractvalue %dx.types.CBufRet.f32 %2986, 2
  %2994 = fsub fast float %2992, %2993
  %2995 = fmul fast float %2994, %2985
  %2996 = fadd fast float %2995, %2993
  %2997 = fsub fast float %2916, %2991
  %2998 = fsub fast float %2996, %2991
  %2999 = fdiv fast float %2997, %2998
  %3000 = call float @dx.op.unary.f32(i32 7, float %2999)  ; Saturate(value)
  %3001 = extractvalue %dx.types.CBufRet.f32 %2910, 1
  %3002 = extractvalue %dx.types.CBufRet.f32 %2960, 0
  %3003 = extractvalue %dx.types.CBufRet.f32 %2960, 1
  %3004 = fmul fast float %3002, %2929
  %3005 = fmul fast float %3003, %2930
  %3006 = fmul fast float %3004, 1.250000e-01
  %3007 = fmul fast float %3005, 1.250000e-01
  %3008 = call float @dx.op.unary.f32(i32 27, float %3006)  ; Round_ni(value)
  %3009 = call float @dx.op.unary.f32(i32 27, float %3007)  ; Round_ni(value)
  %3010 = fmul fast float %3008, 8.000000e+00
  %3011 = fmul fast float %3009, 8.000000e+00
  %3012 = fsub fast float %3004, %3010
  %3013 = fsub fast float %3005, %3011
  %3014 = fadd fast float %3012, 5.000000e-01
  %3015 = fadd fast float %3013, 5.000000e-01
  %3016 = and i32 %2971, 255
  %3017 = lshr i32 %2970, 24
  %3018 = mul nuw nsw i32 %3016, 9
  %3019 = uitofp i32 %3018 to float
  %3020 = mul nuw nsw i32 %3017, 9
  %3021 = uitofp i32 %3020 to float
  %3022 = fadd fast float %3014, %3019
  %3023 = fadd fast float %3015, %3021
  %3024 = fdiv fast float %3022, %2911
  %3025 = fdiv fast float %3023, %3001
  %3026 = fmul fast float %3000, 4.375000e-01
  %3027 = fadd fast float %3026, 3.125000e-02
  %3028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3024, float %3025, float %3027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3029 = extractvalue %dx.types.ResRet.f32 %3028, 0
  %3030 = extractvalue %dx.types.ResRet.f32 %3028, 1
  %3031 = extractvalue %dx.types.ResRet.f32 %3028, 2
  %3032 = fadd fast float %3026, 5.312500e-01
  %3033 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3024, float %3025, float %3032, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3034 = extractvalue %dx.types.ResRet.f32 %3033, 0
  %3035 = extractvalue %dx.types.ResRet.f32 %3033, 1
  %3036 = extractvalue %dx.types.ResRet.f32 %3033, 2
  %3037 = fmul fast float %3034, 2.000000e+00
  %3038 = fmul fast float %3035, 2.000000e+00
  %3039 = fmul fast float %3036, 2.000000e+00
  %3040 = fadd fast float %3037, -1.000000e+00
  %3041 = fadd fast float %3038, -1.000000e+00
  %3042 = fadd fast float %3039, -1.000000e+00
  %3043 = fmul fast float %3040, %3040
  %3044 = fmul fast float %3041, %3041
  %3045 = fadd fast float %3043, %3044
  %3046 = fmul fast float %3042, %3042
  %3047 = fadd fast float %3045, %3046
  %3048 = call float @dx.op.unary.f32(i32 24, float %3047)  ; Sqrt(value)
  %3049 = fcmp fast ogt float %3048, 0.000000e+00
  br i1 %3049, label %3050, label %3054

; <label>:3050                                    ; preds = %2973
  %3051 = fdiv fast float %3040, %3048
  %3052 = fdiv fast float %3041, %3048
  %3053 = fdiv fast float %3042, %3048
  br label %3054

; <label>:3054                                    ; preds = %3050, %2973
  %3055 = phi float [ %3051, %3050 ], [ 0.000000e+00, %2973 ]
  %3056 = phi float [ %3052, %3050 ], [ 0.000000e+00, %2973 ]
  %3057 = phi float [ %3053, %3050 ], [ 0.000000e+00, %2973 ]
  %3058 = call float @dx.op.dot3.f32(i32 55, float %3055, float %3056, float %3057, float %2736, float %2737, float %2738)  ; Dot3(ax,ay,az,bx,by,bz)
  %3059 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3058)  ; FMax(a,b)
  %3060 = fmul fast float %3059, 0x400C5BF8A0000000
  %3061 = fmul fast float %3029, %2949
  %3062 = fmul fast float %3061, %3060
  %3063 = fmul fast float %3030, %2949
  %3064 = fmul fast float %3063, %3060
  %3065 = fmul fast float %3031, %2949
  %3066 = fmul fast float %3065, %3060
  %3067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3068 = extractvalue %dx.types.CBufRet.f32 %3067, 3
  %3069 = fmul fast float %3062, %3068
  %3070 = fmul fast float %3064, %3068
  %3071 = fmul fast float %3066, %3068
  %3072 = fcmp fast ogt float %2916, %2996
  br i1 %3072, label %3073, label %3082

; <label>:3073                                    ; preds = %3054
  %3074 = fmul fast float %2998, 0x3FC24924A0000000
  %3075 = fsub fast float %2916, %2996
  %3076 = fdiv fast float %3075, %3074
  %3077 = call float @dx.op.unary.f32(i32 7, float %3076)  ; Saturate(value)
  %3078 = fsub fast float 1.000000e+00, %3077
  %3079 = fmul fast float %3078, %3069
  %3080 = fmul fast float %3078, %3070
  %3081 = fmul fast float %3078, %3071
  br label %3082

; <label>:3082                                    ; preds = %3073, %3054, %2959, %2914
  %3083 = phi float [ %3081, %3073 ], [ %3071, %3054 ], [ 0.000000e+00, %2959 ], [ 0.000000e+00, %2914 ]
  %3084 = phi float [ %3080, %3073 ], [ %3070, %3054 ], [ 0.000000e+00, %2959 ], [ 0.000000e+00, %2914 ]
  %3085 = phi float [ %3079, %3073 ], [ %3069, %3054 ], [ 0.000000e+00, %2959 ], [ 0.000000e+00, %2914 ]
  %3086 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3085)  ; FMax(a,b)
  %3087 = fmul fast float %3086, 0x3FD20DD760000000
  %3088 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2752, float %2753, float %2754)  ; Dot3(ax,ay,az,bx,by,bz)
  %3089 = fmul fast float %3088, 0x3FDF454380000000
  %3090 = fmul fast float %3088, %3088
  %3091 = fmul fast float %3090, 0x3FEE471020000000
  %3092 = fadd fast float %3091, 0xBFD42F6020000000
  %3093 = call float @dx.op.dot3.f32(i32 55, float %3086, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3089, float %3092)  ; Dot3(ax,ay,az,bx,by,bz)
  %3094 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3084)  ; FMax(a,b)
  %3095 = fmul fast float %3094, 0x3FD20DD760000000
  %3096 = call float @dx.op.dot3.f32(i32 55, float %3094, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3089, float %3092)  ; Dot3(ax,ay,az,bx,by,bz)
  %3097 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3083)  ; FMax(a,b)
  %3098 = fmul fast float %3097, 0x3FD20DD760000000
  %3099 = call float @dx.op.dot3.f32(i32 55, float %3097, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3089, float %3092)  ; Dot3(ax,ay,az,bx,by,bz)
  %3100 = call float @dx.op.binary.f32(i32 35, float %3087, float 0.000000e+00)  ; FMax(a,b)
  %3101 = call float @dx.op.binary.f32(i32 35, float %3095, float 0.000000e+00)  ; FMax(a,b)
  %3102 = call float @dx.op.binary.f32(i32 35, float %3098, float 0.000000e+00)  ; FMax(a,b)
  %3103 = call float @dx.op.binary.f32(i32 35, float %3093, float 0.000000e+00)  ; FMax(a,b)
  %3104 = call float @dx.op.binary.f32(i32 35, float %3096, float 0.000000e+00)  ; FMax(a,b)
  %3105 = call float @dx.op.binary.f32(i32 35, float %3099, float 0.000000e+00)  ; FMax(a,b)
  %3106 = fmul fast float %3100, %2803
  %3107 = fmul fast float %3101, %2803
  %3108 = fmul fast float %3102, %2803
  %3109 = fadd fast float %3106, %2907
  %3110 = fadd fast float %3107, %2908
  %3111 = fadd fast float %3108, %2909
  %3112 = fmul fast float %3103, %2803
  %3113 = fmul fast float %3104, %2803
  %3114 = fmul fast float %3105, %2803
  %3115 = fadd fast float %3112, %2904
  %3116 = fadd fast float %3113, %2905
  %3117 = fadd fast float %3114, %2906
  br label %3118

; <label>:3118                                    ; preds = %3082, %2903
  %3119 = phi float [ %3115, %3082 ], [ %2904, %2903 ]
  %3120 = phi float [ %3116, %3082 ], [ %2905, %2903 ]
  %3121 = phi float [ %3117, %3082 ], [ %2906, %2903 ]
  %3122 = phi float [ %3109, %3082 ], [ %2907, %2903 ]
  %3123 = phi float [ %3110, %3082 ], [ %2908, %2903 ]
  %3124 = phi float [ %3111, %3082 ], [ %2909, %2903 ]
  %3125 = fcmp fast olt float %2803, 1.000000e+00
  br i1 %3125, label %3126, label %3944, !dx.controlflow.hints !83

; <label>:3126                                    ; preds = %3118
  %3127 = extractvalue %dx.types.CBufRet.f32 %2759, 2
  %3128 = fadd fast float %3127, %119
  %3129 = fmul fast float %2736, 3.200000e+01
  %3130 = fmul fast float %2737, 3.200000e+01
  %3131 = fadd fast float %2762, %3129
  %3132 = fadd fast float %2763, %3130
  %3133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3134 = extractvalue %dx.types.CBufRet.f32 %3133, 0
  %3135 = extractvalue %dx.types.CBufRet.f32 %3133, 1
  %3136 = fsub fast float %3131, %3134
  %3137 = fsub fast float %3132, %3135
  %3138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3139 = extractvalue %dx.types.CBufRet.f32 %3138, 0
  %3140 = extractvalue %dx.types.CBufRet.f32 %3138, 1
  %3141 = fmul fast float %3136, %3139
  %3142 = fmul fast float %3137, %3140
  %3143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3144 = extractvalue %dx.types.CBufRet.f32 %3143, 0
  %3145 = fmul fast float %3141, %3144
  %3146 = extractvalue %dx.types.CBufRet.f32 %3143, 1
  %3147 = fadd fast float %3145, %3146
  %3148 = extractvalue %dx.types.CBufRet.f32 %3143, 2
  %3149 = fmul fast float %3148, %3142
  %3150 = extractvalue %dx.types.CBufRet.f32 %3143, 3
  %3151 = fadd fast float %3149, %3150
  %3152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3147, float %3151, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3153 = extractvalue %dx.types.ResRet.f32 %3152, 0
  %3154 = extractvalue %dx.types.ResRet.f32 %3152, 1
  %3155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3156 = extractvalue %dx.types.CBufRet.f32 %3155, 1
  %3157 = extractvalue %dx.types.CBufRet.f32 %3155, 0
  %3158 = fsub fast float %3156, %3157
  %3159 = fmul fast float %3158, %3153
  %3160 = fadd fast float %3159, %3157
  %3161 = extractvalue %dx.types.CBufRet.f32 %3155, 3
  %3162 = extractvalue %dx.types.CBufRet.f32 %3155, 2
  %3163 = fsub fast float %3161, %3162
  %3164 = fmul fast float %3163, %3154
  %3165 = fadd fast float %3164, %3162
  %3166 = fsub fast float %3128, %3160
  %3167 = fsub fast float %3165, %3160
  %3168 = fdiv fast float %3166, %3167
  %3169 = call float @dx.op.unary.f32(i32 7, float %3168)  ; Saturate(value)
  %3170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3171 = extractvalue %dx.types.CBufRet.f32 %3170, 0
  %3172 = fmul fast float %3171, %3169
  %3173 = extractvalue %dx.types.CBufRet.f32 %3170, 1
  %3174 = fadd fast float %3172, %3173
  %3175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %3147, float %3151, float %3174, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3176 = extractvalue %dx.types.ResRet.f32 %3175, 0
  %3177 = extractvalue %dx.types.ResRet.f32 %3175, 1
  %3178 = extractvalue %dx.types.ResRet.f32 %3175, 2
  %3179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3180 = extractvalue %dx.types.CBufRet.f32 %3179, 0
  %3181 = extractvalue %dx.types.CBufRet.f32 %3179, 1
  %3182 = extractvalue %dx.types.CBufRet.f32 %3179, 2
  %3183 = fmul fast float %3180, %3176
  %3184 = fmul fast float %3181, %3177
  %3185 = fmul fast float %3182, %3178
  %3186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3187 = extractvalue %dx.types.CBufRet.f32 %3186, 0
  %3188 = extractvalue %dx.types.CBufRet.f32 %3186, 1
  %3189 = extractvalue %dx.types.CBufRet.f32 %3186, 2
  %3190 = fadd fast float %3183, %3187
  %3191 = fadd fast float %3184, %3188
  %3192 = fadd fast float %3185, %3189
  %3193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3194 = extractvalue %dx.types.CBufRet.f32 %3193, 0
  %3195 = fmul fast float %3194, %3141
  %3196 = extractvalue %dx.types.CBufRet.f32 %3193, 1
  %3197 = fadd fast float %3195, %3196
  %3198 = extractvalue %dx.types.CBufRet.f32 %3193, 2
  %3199 = fmul fast float %3198, %3142
  %3200 = extractvalue %dx.types.CBufRet.f32 %3193, 3
  %3201 = fadd fast float %3199, %3200
  %3202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3203 = extractvalue %dx.types.CBufRet.f32 %3202, 0
  %3204 = extractvalue %dx.types.CBufRet.f32 %3202, 1
  %3205 = extractvalue %dx.types.CBufRet.f32 %3202, 2
  %3206 = extractvalue %dx.types.CBufRet.f32 %3202, 3
  %3207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3208 = extractvalue %dx.types.CBufRet.f32 %3207, 0
  %3209 = extractvalue %dx.types.CBufRet.f32 %3207, 1
  %3210 = extractvalue %dx.types.CBufRet.f32 %3207, 2
  %3211 = extractvalue %dx.types.CBufRet.f32 %3207, 3
  %3212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3197, float %3201, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3213 = extractvalue %dx.types.ResRet.f32 %3212, 0
  %3214 = extractvalue %dx.types.ResRet.f32 %3212, 1
  %3215 = extractvalue %dx.types.ResRet.f32 %3212, 2
  %3216 = extractvalue %dx.types.ResRet.f32 %3212, 3
  %3217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3197, float %3201, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3218 = extractvalue %dx.types.ResRet.f32 %3217, 0
  %3219 = extractvalue %dx.types.ResRet.f32 %3217, 1
  %3220 = extractvalue %dx.types.ResRet.f32 %3217, 2
  %3221 = extractvalue %dx.types.ResRet.f32 %3217, 3
  %3222 = fmul fast float %3213, %3190
  %3223 = fmul fast float %3218, %3190
  %3224 = fmul fast float %3220, %3190
  %3225 = fmul fast float %3216, %3190
  %3226 = fadd fast float %3222, %3203
  %3227 = fadd fast float %3223, %3204
  %3228 = fadd fast float %3224, %3205
  %3229 = fadd fast float %3225, %3206
  %3230 = fmul fast float %3214, %3190
  %3231 = fmul fast float %3219, %3190
  %3232 = fadd fast float %3230, %3208
  %3233 = fadd fast float %3231, %3209
  %3234 = fmul fast float %3215, %3190
  %3235 = fmul fast float %3221, %3190
  %3236 = fadd fast float %3234, %3210
  %3237 = fadd fast float %3235, %3211
  %3238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3197, float %3201, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3239 = extractvalue %dx.types.ResRet.f32 %3238, 0
  %3240 = extractvalue %dx.types.ResRet.f32 %3238, 1
  %3241 = extractvalue %dx.types.ResRet.f32 %3238, 2
  %3242 = extractvalue %dx.types.ResRet.f32 %3238, 3
  %3243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3197, float %3201, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3244 = extractvalue %dx.types.ResRet.f32 %3243, 0
  %3245 = extractvalue %dx.types.ResRet.f32 %3243, 1
  %3246 = extractvalue %dx.types.ResRet.f32 %3243, 2
  %3247 = extractvalue %dx.types.ResRet.f32 %3243, 3
  %3248 = fmul fast float %3239, %3191
  %3249 = fmul fast float %3244, %3191
  %3250 = fmul fast float %3246, %3191
  %3251 = fmul fast float %3242, %3191
  %3252 = fadd fast float %3226, %3248
  %3253 = fadd fast float %3227, %3249
  %3254 = fadd fast float %3228, %3250
  %3255 = fadd fast float %3229, %3251
  %3256 = fmul fast float %3240, %3191
  %3257 = fmul fast float %3245, %3191
  %3258 = fadd fast float %3232, %3256
  %3259 = fadd fast float %3233, %3257
  %3260 = fmul fast float %3241, %3191
  %3261 = fmul fast float %3247, %3191
  %3262 = fadd fast float %3236, %3260
  %3263 = fadd fast float %3237, %3261
  %3264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3197, float %3201, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3265 = extractvalue %dx.types.ResRet.f32 %3264, 0
  %3266 = extractvalue %dx.types.ResRet.f32 %3264, 1
  %3267 = extractvalue %dx.types.ResRet.f32 %3264, 2
  %3268 = extractvalue %dx.types.ResRet.f32 %3264, 3
  %3269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3197, float %3201, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3270 = extractvalue %dx.types.ResRet.f32 %3269, 0
  %3271 = extractvalue %dx.types.ResRet.f32 %3269, 1
  %3272 = extractvalue %dx.types.ResRet.f32 %3269, 2
  %3273 = extractvalue %dx.types.ResRet.f32 %3269, 3
  %3274 = fmul fast float %3265, %3192
  %3275 = fmul fast float %3270, %3192
  %3276 = fmul fast float %3272, %3192
  %3277 = fmul fast float %3268, %3192
  %3278 = fadd fast float %3252, %3274
  %3279 = fadd fast float %3253, %3275
  %3280 = fadd fast float %3254, %3276
  %3281 = fadd fast float %3255, %3277
  %3282 = fmul fast float %3266, %3192
  %3283 = fmul fast float %3271, %3192
  %3284 = fadd fast float %3258, %3282
  %3285 = fadd fast float %3259, %3283
  %3286 = fmul fast float %3267, %3192
  %3287 = fmul fast float %3273, %3192
  %3288 = fadd fast float %3262, %3286
  %3289 = fadd fast float %3263, %3287
  %3290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3291 = extractvalue %dx.types.CBufRet.f32 %3290, 0
  %3292 = fsub fast float %2762, %3291
  %3293 = fsub fast float %3134, %2762
  %3294 = call float @dx.op.binary.f32(i32 35, float %3293, float %3292)  ; FMax(a,b)
  %3295 = extractvalue %dx.types.CBufRet.f32 %3290, 1
  %3296 = fsub fast float %2763, %3295
  %3297 = fsub fast float %3135, %2763
  %3298 = call float @dx.op.binary.f32(i32 35, float %3297, float %3296)  ; FMax(a,b)
  %3299 = call float @dx.op.binary.f32(i32 35, float %3294, float %3298)  ; FMax(a,b)
  %3300 = extractvalue %dx.types.CBufRet.f32 %3138, 3
  %3301 = fmul fast float %3300, %3299
  %3302 = call float @dx.op.unary.f32(i32 7, float %3301)  ; Saturate(value)
  %3303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3304 = extractvalue %dx.types.CBufRet.f32 %3303, 0
  %3305 = extractvalue %dx.types.CBufRet.f32 %3303, 1
  %3306 = extractvalue %dx.types.CBufRet.f32 %3303, 2
  %3307 = extractvalue %dx.types.CBufRet.f32 %3303, 3
  %3308 = fsub fast float %3304, %3278
  %3309 = fsub fast float %3305, %3279
  %3310 = fsub fast float %3306, %3280
  %3311 = fsub fast float %3307, %3281
  %3312 = fmul fast float %3308, %3302
  %3313 = fmul fast float %3309, %3302
  %3314 = fmul fast float %3310, %3302
  %3315 = fmul fast float %3311, %3302
  %3316 = fadd fast float %3312, %3278
  %3317 = fadd fast float %3313, %3279
  %3318 = fadd fast float %3314, %3280
  %3319 = fadd fast float %3315, %3281
  %3320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3321 = extractvalue %dx.types.CBufRet.f32 %3320, 0
  %3322 = extractvalue %dx.types.CBufRet.f32 %3320, 1
  %3323 = fsub fast float %3321, %3284
  %3324 = fsub fast float %3322, %3285
  %3325 = fmul fast float %3323, %3302
  %3326 = fmul fast float %3324, %3302
  %3327 = fadd fast float %3325, %3284
  %3328 = fadd fast float %3326, %3285
  %3329 = extractvalue %dx.types.CBufRet.f32 %3320, 2
  %3330 = extractvalue %dx.types.CBufRet.f32 %3320, 3
  %3331 = fsub fast float %3329, %3288
  %3332 = fsub fast float %3330, %3289
  %3333 = fmul fast float %3331, %3302
  %3334 = fmul fast float %3332, %3302
  %3335 = fadd fast float %3333, %3288
  %3336 = fadd fast float %3334, %3289
  %3337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3338 = extractvalue %dx.types.CBufRet.f32 %3337, 0
  %3339 = fmul fast float %3338, %3316
  %3340 = fmul fast float %3338, %3317
  %3341 = fmul fast float %3338, %3318
  %3342 = fmul fast float %3338, %3319
  %3343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3344 = extractvalue %dx.types.CBufRet.f32 %3343, 0
  %3345 = fmul fast float %3344, %3327
  %3346 = fmul fast float %3344, %3328
  %3347 = fadd fast float %3345, %3339
  %3348 = fadd fast float %3346, %3341
  %3349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3350 = extractvalue %dx.types.CBufRet.f32 %3349, 0
  %3351 = fmul fast float %3350, %3335
  %3352 = fmul fast float %3350, %3336
  %3353 = fadd fast float %3347, %3351
  %3354 = fadd fast float %3348, %3352
  %3355 = extractvalue %dx.types.CBufRet.f32 %3337, 1
  %3356 = fmul fast float %3355, %3316
  %3357 = fmul fast float %3355, %3317
  %3358 = fmul fast float %3355, %3318
  %3359 = fmul fast float %3355, %3319
  %3360 = extractvalue %dx.types.CBufRet.f32 %3343, 1
  %3361 = fmul fast float %3360, %3327
  %3362 = fmul fast float %3360, %3328
  %3363 = fadd fast float %3361, %3356
  %3364 = fadd fast float %3362, %3358
  %3365 = extractvalue %dx.types.CBufRet.f32 %3349, 1
  %3366 = fmul fast float %3365, %3335
  %3367 = fmul fast float %3365, %3336
  %3368 = fadd fast float %3363, %3366
  %3369 = fadd fast float %3364, %3367
  %3370 = extractvalue %dx.types.CBufRet.f32 %3337, 2
  %3371 = fmul fast float %3370, %3316
  %3372 = fmul fast float %3370, %3317
  %3373 = fmul fast float %3370, %3318
  %3374 = fmul fast float %3370, %3319
  %3375 = extractvalue %dx.types.CBufRet.f32 %3343, 2
  %3376 = fmul fast float %3375, %3327
  %3377 = fmul fast float %3375, %3328
  %3378 = fadd fast float %3376, %3371
  %3379 = fadd fast float %3377, %3373
  %3380 = extractvalue %dx.types.CBufRet.f32 %3349, 2
  %3381 = fmul fast float %3380, %3335
  %3382 = fmul fast float %3380, %3336
  %3383 = fadd fast float %3378, %3381
  %3384 = fadd fast float %3379, %3382
  %3385 = fmul fast float %3372, %3372
  %3386 = fmul fast float %3384, %3384
  %3387 = fmul fast float %3374, %3374
  %3388 = fadd fast float %3387, %3385
  %3389 = fadd fast float %3388, %3386
  %3390 = call float @dx.op.unary.f32(i32 24, float %3389)  ; Sqrt(value)
  %3391 = fcmp fast ugt float %3390, 0.000000e+00
  br i1 %3391, label %3392, label %3407

; <label>:3392                                    ; preds = %3126
  %3393 = fsub fast float -0.000000e+00, %3374
  %3394 = fdiv fast float %3393, %3390
  %3395 = fsub fast float -0.000000e+00, %3372
  %3396 = fdiv fast float %3395, %3390
  %3397 = fdiv fast float %3384, %3390
  %3398 = fmul fast float %3383, 0x3FE279A760000000
  %3399 = fmul fast float %3396, %3372
  %3400 = fmul fast float %3397, %3384
  %3401 = fmul fast float %3394, %3374
  %3402 = fadd fast float %3399, %3401
  %3403 = fsub fast float %3402, %3400
  %3404 = call float @dx.op.unary.f32(i32 6, float %3403)  ; FAbs(value)
  %3405 = fadd fast float %3404, 0x3DDB7CDFE0000000
  %3406 = fdiv fast float %3398, %3405
  br label %3407

; <label>:3407                                    ; preds = %3392, %3126
  %3408 = phi float [ %3406, %3392 ], [ 1.000000e+00, %3126 ]
  %3409 = fmul fast float %3357, %3357
  %3410 = fmul fast float %3369, %3369
  %3411 = fmul fast float %3359, %3359
  %3412 = fadd fast float %3411, %3409
  %3413 = fadd fast float %3412, %3410
  %3414 = call float @dx.op.unary.f32(i32 24, float %3413)  ; Sqrt(value)
  %3415 = fcmp fast ugt float %3414, 0.000000e+00
  br i1 %3415, label %3416, label %3431

; <label>:3416                                    ; preds = %3407
  %3417 = fsub fast float -0.000000e+00, %3359
  %3418 = fdiv fast float %3417, %3414
  %3419 = fsub fast float -0.000000e+00, %3357
  %3420 = fdiv fast float %3419, %3414
  %3421 = fdiv fast float %3369, %3414
  %3422 = fmul fast float %3368, 0x3FE279A760000000
  %3423 = fmul fast float %3420, %3357
  %3424 = fmul fast float %3421, %3369
  %3425 = fmul fast float %3418, %3359
  %3426 = fadd fast float %3423, %3425
  %3427 = fsub fast float %3426, %3424
  %3428 = call float @dx.op.unary.f32(i32 6, float %3427)  ; FAbs(value)
  %3429 = fadd fast float %3428, 0x3DDB7CDFE0000000
  %3430 = fdiv fast float %3422, %3429
  br label %3431

; <label>:3431                                    ; preds = %3416, %3407
  %3432 = phi float [ %3430, %3416 ], [ 1.000000e+00, %3407 ]
  %3433 = call float @dx.op.binary.f32(i32 36, float %3432, float %3408)  ; FMin(a,b)
  %3434 = fmul fast float %3340, %3340
  %3435 = fmul fast float %3354, %3354
  %3436 = fmul fast float %3342, %3342
  %3437 = fadd fast float %3436, %3434
  %3438 = fadd fast float %3437, %3435
  %3439 = call float @dx.op.unary.f32(i32 24, float %3438)  ; Sqrt(value)
  %3440 = fcmp fast ugt float %3439, 0.000000e+00
  br i1 %3440, label %3441, label %3456

; <label>:3441                                    ; preds = %3431
  %3442 = fsub fast float -0.000000e+00, %3342
  %3443 = fdiv fast float %3442, %3439
  %3444 = fsub fast float -0.000000e+00, %3340
  %3445 = fdiv fast float %3444, %3439
  %3446 = fdiv fast float %3354, %3439
  %3447 = fmul fast float %3353, 0x3FE279A760000000
  %3448 = fmul fast float %3445, %3340
  %3449 = fmul fast float %3446, %3354
  %3450 = fmul fast float %3443, %3342
  %3451 = fadd fast float %3448, %3450
  %3452 = fsub fast float %3451, %3449
  %3453 = call float @dx.op.unary.f32(i32 6, float %3452)  ; FAbs(value)
  %3454 = fadd fast float %3453, 0x3DDB7CDFE0000000
  %3455 = fdiv fast float %3447, %3454
  br label %3456

; <label>:3456                                    ; preds = %3441, %3431
  %3457 = phi float [ %3455, %3441 ], [ 1.000000e+00, %3431 ]
  %3458 = call float @dx.op.binary.f32(i32 36, float %3457, float %3433)  ; FMin(a,b)
  %3459 = call float @dx.op.unary.f32(i32 7, float %3458)  ; Saturate(value)
  %3460 = fcmp fast olt float %3459, 1.000000e+00
  br i1 %3460, label %3461, label %3471

; <label>:3461                                    ; preds = %3456
  %3462 = fmul fast float %3459, %3340
  %3463 = fmul fast float %3459, %3354
  %3464 = fmul fast float %3459, %3342
  %3465 = fmul fast float %3459, %3357
  %3466 = fmul fast float %3459, %3369
  %3467 = fmul fast float %3459, %3359
  %3468 = fmul fast float %3459, %3372
  %3469 = fmul fast float %3459, %3384
  %3470 = fmul fast float %3459, %3374
  br label %3471

; <label>:3471                                    ; preds = %3461, %3456
  %3472 = phi float [ %3468, %3461 ], [ %3372, %3456 ]
  %3473 = phi float [ %3469, %3461 ], [ %3384, %3456 ]
  %3474 = phi float [ %3470, %3461 ], [ %3374, %3456 ]
  %3475 = phi float [ %3465, %3461 ], [ %3357, %3456 ]
  %3476 = phi float [ %3466, %3461 ], [ %3369, %3456 ]
  %3477 = phi float [ %3467, %3461 ], [ %3359, %3456 ]
  %3478 = phi float [ %3462, %3461 ], [ %3340, %3456 ]
  %3479 = phi float [ %3463, %3461 ], [ %3354, %3456 ]
  %3480 = phi float [ %3464, %3461 ], [ %3342, %3456 ]
  %3481 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3353)  ; FMax(a,b)
  %3482 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3368)  ; FMax(a,b)
  %3483 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3383)  ; FMax(a,b)
  %3484 = fcmp fast oge float %3141, 0.000000e+00
  %3485 = and i1 %3484, %2912
  %3486 = fcmp fast ole float %3141, 1.000000e+00
  %3487 = and i1 %3486, %3485
  %3488 = fcmp fast oge float %3142, 0.000000e+00
  %3489 = and i1 %3488, %3487
  %3490 = fcmp fast ole float %3142, 1.000000e+00
  %3491 = and i1 %3490, %3489
  br i1 %3491, label %3492, label %3637, !dx.controlflow.hints !84

; <label>:3492                                    ; preds = %3471
  %3493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3494 = extractvalue %dx.types.CBufRet.f32 %3493, 2
  %3495 = extractvalue %dx.types.CBufRet.f32 %3493, 3
  %3496 = fmul fast float %3494, %3141
  %3497 = fmul fast float %3495, %3142
  %3498 = call float @dx.op.unary.f32(i32 27, float %3496)  ; Round_ni(value)
  %3499 = call float @dx.op.unary.f32(i32 27, float %3497)  ; Round_ni(value)
  %3500 = fptosi float %3498 to i32
  %3501 = fptosi float %3499 to i32
  %3502 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3500, i32 %3501, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3503 = extractvalue %dx.types.ResRet.i32 %3502, 0
  %3504 = and i32 %3503, 65535
  %3505 = lshr i32 %3503, 16
  %3506 = icmp eq i32 %3504, 65535
  br i1 %3506, label %3543, label %3507

; <label>:3507                                    ; preds = %3492
  %3508 = extractvalue %dx.types.CBufRet.f32 %2910, 1
  %3509 = extractvalue %dx.types.CBufRet.f32 %3493, 0
  %3510 = extractvalue %dx.types.CBufRet.f32 %3493, 1
  %3511 = fmul fast float %3509, %3141
  %3512 = fmul fast float %3510, %3142
  %3513 = fmul fast float %3511, 1.250000e-01
  %3514 = fmul fast float %3512, 1.250000e-01
  %3515 = call float @dx.op.unary.f32(i32 27, float %3513)  ; Round_ni(value)
  %3516 = call float @dx.op.unary.f32(i32 27, float %3514)  ; Round_ni(value)
  %3517 = fmul fast float %3515, 8.000000e+00
  %3518 = fmul fast float %3516, 8.000000e+00
  %3519 = and i32 %3503, 255
  %3520 = lshr i32 %3503, 8
  %3521 = and i32 %3520, 255
  %3522 = mul nuw nsw i32 %3519, 9
  %3523 = uitofp i32 %3522 to float
  %3524 = mul nuw nsw i32 %3521, 9
  %3525 = uitofp i32 %3524 to float
  %3526 = fadd fast float %3523, 5.000000e-01
  %3527 = fadd fast float %3526, %3511
  %3528 = fsub fast float %3527, %3517
  %3529 = fadd fast float %3525, 5.000000e-01
  %3530 = fadd fast float %3529, %3512
  %3531 = fsub fast float %3530, %3518
  %3532 = fdiv fast float %3528, %2911
  %3533 = fdiv fast float %3531, %3508
  %3534 = fmul fast float %3169, 4.375000e-01
  %3535 = fadd fast float %3534, 3.125000e-02
  %3536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3532, float %3533, float %3535, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3537 = extractvalue %dx.types.ResRet.f32 %3536, 0
  %3538 = extractvalue %dx.types.ResRet.f32 %3536, 1
  %3539 = extractvalue %dx.types.ResRet.f32 %3536, 2
  %3540 = fadd fast float %3537, %3481
  %3541 = fadd fast float %3538, %3482
  %3542 = fadd fast float %3539, %3483
  br label %3543

; <label>:3543                                    ; preds = %3507, %3492
  %3544 = phi float [ %3542, %3507 ], [ %3483, %3492 ]
  %3545 = phi float [ %3541, %3507 ], [ %3482, %3492 ]
  %3546 = phi float [ %3540, %3507 ], [ %3481, %3492 ]
  %3547 = icmp eq i32 %3505, 65535
  br i1 %3547, label %3637, label %3548

; <label>:3548                                    ; preds = %3543
  %3549 = extractvalue %dx.types.CBufRet.f32 %2910, 1
  %3550 = extractvalue %dx.types.CBufRet.f32 %3493, 0
  %3551 = extractvalue %dx.types.CBufRet.f32 %3493, 1
  %3552 = fmul fast float %3550, %3141
  %3553 = fmul fast float %3551, %3142
  %3554 = fmul fast float %3552, 1.250000e-01
  %3555 = fmul fast float %3553, 1.250000e-01
  %3556 = call float @dx.op.unary.f32(i32 27, float %3554)  ; Round_ni(value)
  %3557 = call float @dx.op.unary.f32(i32 27, float %3555)  ; Round_ni(value)
  %3558 = fmul fast float %3556, 8.000000e+00
  %3559 = fmul fast float %3557, 8.000000e+00
  %3560 = fsub fast float %3552, %3558
  %3561 = fsub fast float %3553, %3559
  %3562 = fadd fast float %3560, 5.000000e-01
  %3563 = fadd fast float %3561, 5.000000e-01
  %3564 = and i32 %3505, 255
  %3565 = lshr i32 %3503, 24
  %3566 = mul nuw nsw i32 %3564, 9
  %3567 = uitofp i32 %3566 to float
  %3568 = mul nuw nsw i32 %3565, 9
  %3569 = uitofp i32 %3568 to float
  %3570 = fadd fast float %3562, %3567
  %3571 = fadd fast float %3563, %3569
  %3572 = fdiv fast float %3570, %2911
  %3573 = fdiv fast float %3571, %3549
  %3574 = fmul fast float %3169, 4.375000e-01
  %3575 = fadd fast float %3574, 3.125000e-02
  %3576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3572, float %3573, float %3575, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 0
  %3578 = extractvalue %dx.types.ResRet.f32 %3576, 1
  %3579 = extractvalue %dx.types.ResRet.f32 %3576, 2
  %3580 = fadd fast float %3574, 5.312500e-01
  %3581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3572, float %3573, float %3580, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3582 = extractvalue %dx.types.ResRet.f32 %3581, 0
  %3583 = extractvalue %dx.types.ResRet.f32 %3581, 1
  %3584 = extractvalue %dx.types.ResRet.f32 %3581, 2
  %3585 = fmul fast float %3582, 2.000000e+00
  %3586 = fmul fast float %3583, 2.000000e+00
  %3587 = fmul fast float %3584, 2.000000e+00
  %3588 = fadd fast float %3585, -1.000000e+00
  %3589 = fadd fast float %3586, -1.000000e+00
  %3590 = fadd fast float %3587, -1.000000e+00
  %3591 = fmul fast float %3588, %3588
  %3592 = fmul fast float %3589, %3589
  %3593 = fadd fast float %3591, %3592
  %3594 = fmul fast float %3590, %3590
  %3595 = fadd fast float %3593, %3594
  %3596 = call float @dx.op.unary.f32(i32 24, float %3595)  ; Sqrt(value)
  %3597 = fcmp fast ogt float %3596, 0.000000e+00
  br i1 %3597, label %3598, label %3602

; <label>:3598                                    ; preds = %3548
  %3599 = fdiv fast float %3588, %3596
  %3600 = fdiv fast float %3589, %3596
  %3601 = fdiv fast float %3590, %3596
  br label %3602

; <label>:3602                                    ; preds = %3598, %3548
  %3603 = phi float [ %3599, %3598 ], [ 0.000000e+00, %3548 ]
  %3604 = phi float [ %3600, %3598 ], [ 0.000000e+00, %3548 ]
  %3605 = phi float [ %3601, %3598 ], [ 0.000000e+00, %3548 ]
  %3606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3607 = extractvalue %dx.types.CBufRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.CBufRet.f32 %3606, 1
  %3609 = fsub fast float %2762, %3607
  %3610 = fsub fast float %2763, %3608
  %3611 = fmul fast float %3609, %3609
  %3612 = fmul fast float %3610, %3610
  %3613 = fadd fast float %3611, %3612
  %3614 = call float @dx.op.unary.f32(i32 24, float %3613)  ; Sqrt(value)
  %3615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3616 = extractvalue %dx.types.CBufRet.f32 %3615, 0
  %3617 = extractvalue %dx.types.CBufRet.f32 %3615, 1
  %3618 = fsub fast float %3614, %3616
  %3619 = fdiv fast float %3618, %3617
  %3620 = call float @dx.op.unary.f32(i32 7, float %3619)  ; Saturate(value)
  %3621 = fmul fast float %3620, 2.000000e+00
  %3622 = fsub fast float 3.000000e+00, %3621
  %3623 = fmul fast float %3620, %3620
  %3624 = fmul fast float %3623, %3622
  %3625 = call float @dx.op.dot3.f32(i32 55, float %3603, float %3604, float %3605, float %2736, float %2737, float %2738)  ; Dot3(ax,ay,az,bx,by,bz)
  %3626 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3625)  ; FMax(a,b)
  %3627 = fmul fast float %3626, 0x400C5BF8A0000000
  %3628 = fmul fast float %3624, %3577
  %3629 = fmul fast float %3628, %3627
  %3630 = fadd fast float %3629, %3546
  %3631 = fmul fast float %3624, %3578
  %3632 = fmul fast float %3631, %3627
  %3633 = fadd fast float %3632, %3545
  %3634 = fmul fast float %3624, %3579
  %3635 = fmul fast float %3634, %3627
  %3636 = fadd fast float %3635, %3544
  br label %3637

; <label>:3637                                    ; preds = %3602, %3543, %3471
  %3638 = phi float [ %3636, %3602 ], [ %3544, %3543 ], [ %3483, %3471 ]
  %3639 = phi float [ %3633, %3602 ], [ %3545, %3543 ], [ %3482, %3471 ]
  %3640 = phi float [ %3630, %3602 ], [ %3546, %3543 ], [ %3481, %3471 ]
  %3641 = fcmp fast ogt float %3128, %3165
  %3642 = and i1 %3484, %3641
  %3643 = and i1 %3486, %3642
  %3644 = and i1 %3488, %3643
  %3645 = and i1 %3490, %3644
  br i1 %3645, label %3646, label %3703, !dx.controlflow.hints !85

; <label>:3646                                    ; preds = %3637
  %3647 = fmul fast float %3167, 0x3FC24924A0000000
  %3648 = fsub fast float %3128, %3165
  %3649 = fdiv fast float %3648, %3647
  %3650 = call float @dx.op.unary.f32(i32 7, float %3649)  ; Saturate(value)
  %3651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3652 = extractvalue %dx.types.CBufRet.f32 %3651, 0
  %3653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3654 = extractvalue %dx.types.CBufRet.f32 %3653, 0
  %3655 = extractvalue %dx.types.CBufRet.f32 %3653, 1
  %3656 = extractvalue %dx.types.CBufRet.f32 %3653, 2
  %3657 = fsub fast float %3652, %3640
  %3658 = fsub fast float %3654, %3478
  %3659 = fsub fast float %3655, %3479
  %3660 = fsub fast float %3656, %3480
  %3661 = fmul fast float %3657, %3650
  %3662 = fmul fast float %3658, %3650
  %3663 = fmul fast float %3659, %3650
  %3664 = fmul fast float %3660, %3650
  %3665 = fadd fast float %3661, %3640
  %3666 = fadd fast float %3662, %3478
  %3667 = fadd fast float %3663, %3479
  %3668 = fadd fast float %3664, %3480
  %3669 = extractvalue %dx.types.CBufRet.f32 %3651, 1
  %3670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3671 = extractvalue %dx.types.CBufRet.f32 %3670, 0
  %3672 = extractvalue %dx.types.CBufRet.f32 %3670, 1
  %3673 = extractvalue %dx.types.CBufRet.f32 %3670, 2
  %3674 = fsub fast float %3669, %3639
  %3675 = fsub fast float %3671, %3475
  %3676 = fsub fast float %3672, %3476
  %3677 = fsub fast float %3673, %3477
  %3678 = fmul fast float %3674, %3650
  %3679 = fmul fast float %3675, %3650
  %3680 = fmul fast float %3676, %3650
  %3681 = fmul fast float %3677, %3650
  %3682 = fadd fast float %3678, %3639
  %3683 = fadd fast float %3679, %3475
  %3684 = fadd fast float %3680, %3476
  %3685 = fadd fast float %3681, %3477
  %3686 = extractvalue %dx.types.CBufRet.f32 %3651, 2
  %3687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3688 = extractvalue %dx.types.CBufRet.f32 %3687, 0
  %3689 = extractvalue %dx.types.CBufRet.f32 %3687, 1
  %3690 = extractvalue %dx.types.CBufRet.f32 %3687, 2
  %3691 = fsub fast float %3686, %3638
  %3692 = fsub fast float %3688, %3472
  %3693 = fsub fast float %3689, %3473
  %3694 = fsub fast float %3690, %3474
  %3695 = fmul fast float %3691, %3650
  %3696 = fmul fast float %3692, %3650
  %3697 = fmul fast float %3693, %3650
  %3698 = fmul fast float %3694, %3650
  %3699 = fadd fast float %3695, %3638
  %3700 = fadd fast float %3696, %3472
  %3701 = fadd fast float %3697, %3473
  %3702 = fadd fast float %3698, %3474
  br label %3703

; <label>:3703                                    ; preds = %3646, %3637
  %3704 = phi float [ %3699, %3646 ], [ %3638, %3637 ]
  %3705 = phi float [ %3700, %3646 ], [ %3472, %3637 ]
  %3706 = phi float [ %3701, %3646 ], [ %3473, %3637 ]
  %3707 = phi float [ %3702, %3646 ], [ %3474, %3637 ]
  %3708 = phi float [ %3682, %3646 ], [ %3639, %3637 ]
  %3709 = phi float [ %3683, %3646 ], [ %3475, %3637 ]
  %3710 = phi float [ %3684, %3646 ], [ %3476, %3637 ]
  %3711 = phi float [ %3685, %3646 ], [ %3477, %3637 ]
  %3712 = phi float [ %3665, %3646 ], [ %3640, %3637 ]
  %3713 = phi float [ %3666, %3646 ], [ %3478, %3637 ]
  %3714 = phi float [ %3667, %3646 ], [ %3479, %3637 ]
  %3715 = phi float [ %3668, %3646 ], [ %3480, %3637 ]
  %3716 = extractvalue %dx.types.CBufRet.f32 %3290, 3
  %3717 = fmul fast float %3716, %3712
  %3718 = fmul fast float %3716, %3708
  %3719 = fmul fast float %3716, %3704
  %3720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3721 = extractvalue %dx.types.CBufRet.f32 %3720, 3
  %3722 = fmul fast float %3717, %3721
  %3723 = fmul fast float %3718, %3721
  %3724 = fmul fast float %3719, %3721
  %3725 = fmul fast float %3713, 1.500000e+00
  %3726 = fmul fast float %3725, %3716
  %3727 = fmul fast float %3726, %3721
  %3728 = fmul fast float %3714, 1.500000e+00
  %3729 = fmul fast float %3728, %3716
  %3730 = fmul fast float %3729, %3721
  %3731 = fmul fast float %3715, 1.500000e+00
  %3732 = fmul fast float %3731, %3716
  %3733 = fmul fast float %3732, %3721
  %3734 = fmul fast float %3709, 1.500000e+00
  %3735 = fmul fast float %3734, %3716
  %3736 = fmul fast float %3735, %3721
  %3737 = fmul fast float %3710, 1.500000e+00
  %3738 = fmul fast float %3737, %3716
  %3739 = fmul fast float %3738, %3721
  %3740 = fmul fast float %3711, 1.500000e+00
  %3741 = fmul fast float %3740, %3716
  %3742 = fmul fast float %3741, %3721
  %3743 = fmul fast float %3705, 1.500000e+00
  %3744 = fmul fast float %3743, %3716
  %3745 = fmul fast float %3744, %3721
  %3746 = fmul fast float %3706, 1.500000e+00
  %3747 = fmul fast float %3746, %3716
  %3748 = fmul fast float %3747, %3721
  %3749 = fmul fast float %3707, 1.500000e+00
  %3750 = fmul fast float %3749, %3716
  %3751 = fmul fast float %3750, %3721
  %3752 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3722)  ; FMax(a,b)
  %3753 = call float @dx.op.dot3.f32(i32 55, float %3727, float %3730, float %3733, float %3727, float %3730, float %3733)  ; Dot3(ax,ay,az,bx,by,bz)
  %3754 = fcmp fast oeq float %3753, 0.000000e+00
  %3755 = fcmp fast oeq float %3752, 0.000000e+00
  %3756 = or i1 %3755, %3754
  br i1 %3756, label %3786, label %3757

; <label>:3757                                    ; preds = %3703
  %3758 = fsub fast float -0.000000e+00, %3733
  %3759 = fsub fast float -0.000000e+00, %3727
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
  %3770 = call float @dx.op.dot3.f32(i32 55, float %3758, float %3759, float %3730, float %3758, float %3759, float %3730)  ; Dot3(ax,ay,az,bx,by,bz)
  %3771 = call float @dx.op.unary.f32(i32 25, float %3770)  ; Rsqrt(value)
  %3772 = fmul fast float %3771, %3758
  %3773 = fmul fast float %3771, %3759
  %3774 = fmul fast float %3771, %3730
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

; <label>:3786                                    ; preds = %3757, %3703
  %3787 = phi float [ %3772, %3757 ], [ 0.000000e+00, %3703 ]
  %3788 = phi float [ %3773, %3757 ], [ 0.000000e+00, %3703 ]
  %3789 = phi float [ %3774, %3757 ], [ 0.000000e+00, %3703 ]
  %3790 = phi float [ %3781, %3757 ], [ 0.000000e+00, %3703 ]
  %3791 = phi float [ %3785, %3757 ], [ 0.000000e+00, %3703 ]
  %3792 = call float @dx.op.dot3.f32(i32 55, float %3787, float %3788, float %3789, float %2736, float %2737, float %2738)  ; Dot3(ax,ay,az,bx,by,bz)
  %3793 = fmul fast float %3792, %3792
  %3794 = fmul fast float %3793, 0x3FEE471020000000
  %3795 = fadd fast float %3794, 0xBFD42F6020000000
  %3796 = fmul fast float %3752, 0x3FD20DD760000000
  %3797 = fmul fast float %3795, %3791
  %3798 = fmul fast float %3790, 0x3FDF454380000000
  %3799 = fmul fast float %3798, %3792
  %3800 = fadd fast float %3799, %3796
  %3801 = fadd fast float %3800, %3797
  %3802 = call float @dx.op.dot3.f32(i32 55, float %3787, float %3788, float %3789, float %2752, float %2753, float %2754)  ; Dot3(ax,ay,az,bx,by,bz)
  %3803 = fmul fast float %3802, 0x3FDF454380000000
  %3804 = fmul fast float %3802, %3802
  %3805 = fmul fast float %3804, 0x3FEE471020000000
  %3806 = fadd fast float %3805, 0xBFD42F6020000000
  %3807 = call float @dx.op.dot3.f32(i32 55, float %3752, float %3790, float %3791, float 0x3FD20DD760000000, float %3803, float %3806)  ; Dot3(ax,ay,az,bx,by,bz)
  %3808 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3723)  ; FMax(a,b)
  %3809 = call float @dx.op.dot3.f32(i32 55, float %3736, float %3739, float %3742, float %3736, float %3739, float %3742)  ; Dot3(ax,ay,az,bx,by,bz)
  %3810 = fcmp fast oeq float %3809, 0.000000e+00
  %3811 = fcmp fast oeq float %3808, 0.000000e+00
  %3812 = or i1 %3811, %3810
  br i1 %3812, label %3842, label %3813

; <label>:3813                                    ; preds = %3786
  %3814 = fsub fast float -0.000000e+00, %3742
  %3815 = fsub fast float -0.000000e+00, %3736
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
  %3826 = call float @dx.op.dot3.f32(i32 55, float %3814, float %3815, float %3739, float %3814, float %3815, float %3739)  ; Dot3(ax,ay,az,bx,by,bz)
  %3827 = call float @dx.op.unary.f32(i32 25, float %3826)  ; Rsqrt(value)
  %3828 = fmul fast float %3827, %3814
  %3829 = fmul fast float %3827, %3815
  %3830 = fmul fast float %3827, %3739
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
  %3848 = call float @dx.op.dot3.f32(i32 55, float %3843, float %3844, float %3845, float %2736, float %2737, float %2738)  ; Dot3(ax,ay,az,bx,by,bz)
  %3849 = fmul fast float %3848, %3848
  %3850 = fmul fast float %3849, 0x3FEE471020000000
  %3851 = fadd fast float %3850, 0xBFD42F6020000000
  %3852 = fmul fast float %3808, 0x3FD20DD760000000
  %3853 = fmul fast float %3851, %3847
  %3854 = fmul fast float %3846, 0x3FDF454380000000
  %3855 = fmul fast float %3854, %3848
  %3856 = fadd fast float %3855, %3852
  %3857 = fadd fast float %3856, %3853
  %3858 = call float @dx.op.dot3.f32(i32 55, float %3843, float %3844, float %3845, float %2752, float %2753, float %2754)  ; Dot3(ax,ay,az,bx,by,bz)
  %3859 = fmul fast float %3858, 0x3FDF454380000000
  %3860 = fmul fast float %3858, %3858
  %3861 = fmul fast float %3860, 0x3FEE471020000000
  %3862 = fadd fast float %3861, 0xBFD42F6020000000
  %3863 = call float @dx.op.dot3.f32(i32 55, float %3808, float %3846, float %3847, float 0x3FD20DD760000000, float %3859, float %3862)  ; Dot3(ax,ay,az,bx,by,bz)
  %3864 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3724)  ; FMax(a,b)
  %3865 = call float @dx.op.dot3.f32(i32 55, float %3745, float %3748, float %3751, float %3745, float %3748, float %3751)  ; Dot3(ax,ay,az,bx,by,bz)
  %3866 = fcmp fast oeq float %3865, 0.000000e+00
  %3867 = fcmp fast oeq float %3864, 0.000000e+00
  %3868 = or i1 %3867, %3866
  br i1 %3868, label %3898, label %3869

; <label>:3869                                    ; preds = %3842
  %3870 = fsub fast float -0.000000e+00, %3751
  %3871 = fsub fast float -0.000000e+00, %3745
  %3872 = call float @dx.op.unary.f32(i32 24, float %3865)  ; Sqrt(value)
  %3873 = fdiv fast float %3872, %3864
  %3874 = fcmp fast ogt float %3873, 0x3FFB6F8900000000
  %3875 = select i1 %3874, float 0x3FFB6F8900000000, float %3873
  %3876 = fmul fast float %3875, 0x3FE8A23460000000
  %3877 = call float @dx.op.unary.f32(i32 7, float %3876)  ; Saturate(value)
  %3878 = call float @dx.op.binary.f32(i32 35, float %3875, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3879 = fmul fast float %3877, %3864
  %3880 = fmul fast float %3878, 0x3FF279A740000000
  %3881 = fadd fast float %3880, -1.000000e+00
  %3882 = call float @dx.op.dot3.f32(i32 55, float %3870, float %3871, float %3748, float %3870, float %3871, float %3748)  ; Dot3(ax,ay,az,bx,by,bz)
  %3883 = call float @dx.op.unary.f32(i32 25, float %3882)  ; Rsqrt(value)
  %3884 = fmul fast float %3883, %3870
  %3885 = fmul fast float %3883, %3871
  %3886 = fmul fast float %3883, %3748
  %3887 = fmul fast float %3881, %3881
  %3888 = fsub fast float 1.000000e+00, %3887
  %3889 = fmul fast float %3878, 0x40005F8BE0000000
  %3890 = fsub fast float 0x400C5BF8A0000000, %3889
  %3891 = fdiv fast float %3879, %3890
  %3892 = fmul fast float %3891, 0x3FEE31C3C0000000
  %3893 = fmul fast float %3892, %3888
  %3894 = fmul fast float %3878, 0x3FDACB7480000000
  %3895 = fadd fast float %3894, 0xBFD7347680000000
  %3896 = fmul fast float %3895, %3891
  %3897 = fmul fast float %3896, %3888
  br label %3898

; <label>:3898                                    ; preds = %3869, %3842
  %3899 = phi float [ %3884, %3869 ], [ 0.000000e+00, %3842 ]
  %3900 = phi float [ %3885, %3869 ], [ 0.000000e+00, %3842 ]
  %3901 = phi float [ %3886, %3869 ], [ 0.000000e+00, %3842 ]
  %3902 = phi float [ %3893, %3869 ], [ 0.000000e+00, %3842 ]
  %3903 = phi float [ %3897, %3869 ], [ 0.000000e+00, %3842 ]
  %3904 = call float @dx.op.dot3.f32(i32 55, float %3899, float %3900, float %3901, float %2736, float %2737, float %2738)  ; Dot3(ax,ay,az,bx,by,bz)
  %3905 = fmul fast float %3904, %3904
  %3906 = fmul fast float %3905, 0x3FEE471020000000
  %3907 = fadd fast float %3906, 0xBFD42F6020000000
  %3908 = fmul fast float %3864, 0x3FD20DD760000000
  %3909 = fmul fast float %3907, %3903
  %3910 = fmul fast float %3902, 0x3FDF454380000000
  %3911 = fmul fast float %3910, %3904
  %3912 = fadd fast float %3911, %3908
  %3913 = fadd fast float %3912, %3909
  %3914 = call float @dx.op.dot3.f32(i32 55, float %3899, float %3900, float %3901, float %2752, float %2753, float %2754)  ; Dot3(ax,ay,az,bx,by,bz)
  %3915 = fmul fast float %3914, 0x3FDF454380000000
  %3916 = fmul fast float %3914, %3914
  %3917 = fmul fast float %3916, 0x3FEE471020000000
  %3918 = fadd fast float %3917, 0xBFD42F6020000000
  %3919 = call float @dx.op.dot3.f32(i32 55, float %3864, float %3902, float %3903, float 0x3FD20DD760000000, float %3915, float %3918)  ; Dot3(ax,ay,az,bx,by,bz)
  %3920 = call float @dx.op.binary.f32(i32 35, float %3801, float 0.000000e+00)  ; FMax(a,b)
  %3921 = call float @dx.op.binary.f32(i32 35, float %3857, float 0.000000e+00)  ; FMax(a,b)
  %3922 = call float @dx.op.binary.f32(i32 35, float %3913, float 0.000000e+00)  ; FMax(a,b)
  %3923 = call float @dx.op.binary.f32(i32 35, float %3807, float 0.000000e+00)  ; FMax(a,b)
  %3924 = call float @dx.op.binary.f32(i32 35, float %3863, float 0.000000e+00)  ; FMax(a,b)
  %3925 = call float @dx.op.binary.f32(i32 35, float %3919, float 0.000000e+00)  ; FMax(a,b)
  %3926 = fsub fast float %3122, %3920
  %3927 = fsub fast float %3123, %3921
  %3928 = fsub fast float %3124, %3922
  %3929 = fmul fast float %3926, %2803
  %3930 = fmul fast float %3927, %2803
  %3931 = fmul fast float %3928, %2803
  %3932 = fadd fast float %3929, %3920
  %3933 = fadd fast float %3930, %3921
  %3934 = fadd fast float %3931, %3922
  %3935 = fsub fast float %3119, %3923
  %3936 = fsub fast float %3120, %3924
  %3937 = fsub fast float %3121, %3925
  %3938 = fmul fast float %3935, %2803
  %3939 = fmul fast float %3936, %2803
  %3940 = fmul fast float %3937, %2803
  %3941 = fadd fast float %3938, %3923
  %3942 = fadd fast float %3939, %3924
  %3943 = fadd fast float %3940, %3925
  br label %3944

; <label>:3944                                    ; preds = %3898, %3118
  %3945 = phi float [ %3941, %3898 ], [ %3119, %3118 ]
  %3946 = phi float [ %3942, %3898 ], [ %3120, %3118 ]
  %3947 = phi float [ %3943, %3898 ], [ %3121, %3118 ]
  %3948 = phi float [ %3932, %3898 ], [ %3122, %3118 ]
  %3949 = phi float [ %3933, %3898 ], [ %3123, %3118 ]
  %3950 = phi float [ %3934, %3898 ], [ %3124, %3118 ]
  %3951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3952 = extractvalue %dx.types.CBufRet.f32 %3951, 0
  %3953 = call float @dx.op.binary.f32(i32 36, float %2739, float %3952)  ; FMin(a,b)
  %3954 = fsub fast float 1.000000e+00, %2755
  %3955 = fmul fast float %3953, %3954
  %3956 = fsub fast float 1.000000e+00, %3955
  %3957 = bitcast float %3956 to i32
  %3958 = sub nsw i32 2129859010, %3957
  %3959 = bitcast i32 %3958 to float
  %3960 = call float @dx.op.binary.f32(i32 36, float %2740, float %3952)  ; FMin(a,b)
  %3961 = fmul fast float %3960, %3954
  %3962 = fsub fast float 1.000000e+00, %3961
  %3963 = bitcast float %3962 to i32
  %3964 = sub nsw i32 2129859010, %3963
  %3965 = bitcast i32 %3964 to float
  %3966 = call float @dx.op.binary.f32(i32 36, float %2741, float %3952)  ; FMin(a,b)
  %3967 = fmul fast float %3966, %3954
  %3968 = fsub fast float 1.000000e+00, %3967
  %3969 = bitcast float %3968 to i32
  %3970 = sub nsw i32 2129859010, %3969
  %3971 = bitcast i32 %3970 to float
  %3972 = fmul fast float %3948, %2755
  %3973 = fmul fast float %3972, %3959
  %3974 = fmul fast float %3949, %2755
  %3975 = fmul fast float %3974, %3965
  %3976 = fmul fast float %3950, %2755
  %3977 = fmul fast float %3976, %3971
  %3978 = call float @dx.op.binary.f32(i32 36, float %2733, float %3952)  ; FMin(a,b)
  %3979 = fmul fast float %3978, %3954
  %3980 = fsub fast float 1.000000e+00, %3979
  %3981 = bitcast float %3980 to i32
  %3982 = sub nsw i32 2129859010, %3981
  %3983 = bitcast i32 %3982 to float
  %3984 = call float @dx.op.binary.f32(i32 36, float %2734, float %3952)  ; FMin(a,b)
  %3985 = fmul fast float %3984, %3954
  %3986 = fsub fast float 1.000000e+00, %3985
  %3987 = bitcast float %3986 to i32
  %3988 = sub nsw i32 2129859010, %3987
  %3989 = bitcast i32 %3988 to float
  %3990 = call float @dx.op.binary.f32(i32 36, float %2744, float %3952)  ; FMin(a,b)
  %3991 = fmul fast float %3990, %3954
  %3992 = fsub fast float 1.000000e+00, %3991
  %3993 = bitcast float %3992 to i32
  %3994 = sub nsw i32 2129859010, %3993
  %3995 = bitcast i32 %3994 to float
  %3996 = fmul fast float %3945, %2755
  %3997 = fmul fast float %3996, %3983
  %3998 = fmul fast float %3946, %2755
  %3999 = fmul fast float %3998, %3989
  %4000 = fmul fast float %3947, %2755
  %4001 = fmul fast float %4000, %3995
  %4002 = call float @dx.op.dot3.f32(i32 55, float %3973, float %3975, float %3977, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4003 = select i1 %188, float 0.000000e+00, float %3973
  %4004 = select i1 %188, float %4002, float %3975
  %4005 = select i1 %188, float 0.000000e+00, float %3977
  %4006 = call float @dx.op.dot3.f32(i32 55, float %3997, float %3999, float %4001, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4007 = select i1 %188, float 0.000000e+00, float %3997
  %4008 = select i1 %188, float %4006, float %3999
  %4009 = select i1 %188, float 0.000000e+00, float %4001
  %4010 = fmul fast float %2746, 9.843750e-01
  %4011 = fmul fast float %2742, 9.843750e-01
  %4012 = fadd fast float %4010, 7.812500e-03
  %4013 = fadd fast float %4011, 7.812500e-03
  %4014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4012, float %4013, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4015 = extractvalue %dx.types.ResRet.f32 %4014, 2
  %4016 = extractvalue %dx.types.ResRet.f32 %4014, 3
  %4017 = fmul fast float %4015, %2733
  %4018 = fmul fast float %4015, %2734
  %4019 = fmul fast float %4015, %2744
  %4020 = fadd fast float %4017, %4016
  %4021 = fadd fast float %4018, %4016
  %4022 = fadd fast float %4019, %4016
  %4023 = fcmp fast ogt float %2110, 0.000000e+00
  br i1 %4023, label %4024, label %4050

; <label>:4024                                    ; preds = %3944
  %4025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2110, float %2746, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4026 = extractvalue %dx.types.ResRet.f32 %4025, 0
  %4027 = extractvalue %dx.types.ResRet.f32 %4025, 1
  %4028 = extractvalue %dx.types.ResRet.f32 %4025, 2
  %4029 = fadd fast float %4026, -5.000000e-01
  %4030 = fadd fast float %4027, -5.000000e-01
  %4031 = fadd fast float %4028, -5.000000e-01
  %4032 = fsub fast float 1.000000e+00, %2733
  %4033 = fsub fast float 1.000000e+00, %2734
  %4034 = fsub fast float 1.000000e+00, %2744
  %4035 = fmul fast float %2733, 4.000000e+00
  %4036 = fmul fast float %4035, %4032
  %4037 = fmul fast float %4036, %4029
  %4038 = fmul fast float %2734, 4.000000e+00
  %4039 = fmul fast float %4038, %4033
  %4040 = fmul fast float %4039, %4030
  %4041 = fmul fast float %2744, 4.000000e+00
  %4042 = fmul fast float %4041, %4034
  %4043 = fmul fast float %4042, %4031
  %4044 = fadd fast float %4037, %4020
  %4045 = fadd fast float %4040, %4021
  %4046 = fadd fast float %4043, %4022
  %4047 = call float @dx.op.unary.f32(i32 7, float %4044)  ; Saturate(value)
  %4048 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4049 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  br label %4050

; <label>:4050                                    ; preds = %4024, %3944
  %4051 = phi float [ %4047, %4024 ], [ %4020, %3944 ]
  %4052 = phi float [ %4048, %4024 ], [ %4021, %3944 ]
  %4053 = phi float [ %4049, %4024 ], [ %4022, %3944 ]
  %4054 = call float @dx.op.binary.f32(i32 35, float %4052, float %4053)  ; FMax(a,b)
  %4055 = call float @dx.op.binary.f32(i32 35, float %4051, float %4054)  ; FMax(a,b)
  %4056 = fsub fast float 1.000000e+00, %4055
  %4057 = fmul fast float %4056, %4003
  %4058 = fmul fast float %4056, %4004
  %4059 = fmul fast float %4056, %4005
  %4060 = call float @dx.op.dot3.f32(i32 55, float %2739, float %2740, float %2741, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4061 = fcmp fast ogt float %4060, 0x3E7FF19E20000000
  %4062 = fdiv fast float 1.000000e+00, %4060
  %4063 = select i1 %4061, float %4062, float 0.000000e+00
  %4064 = fmul fast float %4063, %2739
  %4065 = fmul fast float %4063, %2740
  %4066 = fmul fast float %4063, %2741
  %4067 = fadd fast float %4064, -1.000000e+00
  %4068 = fadd fast float %4065, -1.000000e+00
  %4069 = fadd fast float %4066, -1.000000e+00
  %4070 = fmul fast float %4067, 5.000000e-01
  %4071 = fmul fast float %4068, 5.000000e-01
  %4072 = fmul fast float %4069, 5.000000e-01
  %4073 = fadd fast float %4070, 1.000000e+00
  %4074 = fadd fast float %4071, 1.000000e+00
  %4075 = fadd fast float %4072, 1.000000e+00
  %4076 = fmul fast float %4051, %4007
  %4077 = fmul fast float %4052, %4008
  %4078 = fmul fast float %4053, %4009
  %4079 = fsub fast float 1.000000e+00, %2746
  %4080 = bitcast float %4079 to i32
  %4081 = sitofp i32 %4080 to float
  %4082 = fmul fast float %4081, 5.000000e+00
  %4083 = fadd fast float %4082, 0xC1EFBF8940000000
  %4084 = fptosi float %4083 to i32
  %4085 = bitcast i32 %4084 to float
  %4086 = fmul fast float %4085, %2109
  %4087 = fmul fast float %4003, %4086
  %4088 = fmul fast float %4087, %4056
  %4089 = fmul fast float %4088, %4073
  %4090 = fmul fast float %4004, %4086
  %4091 = fmul fast float %4090, %4056
  %4092 = fmul fast float %4091, %4074
  %4093 = fmul fast float %4005, %4086
  %4094 = fmul fast float %4093, %4056
  %4095 = fmul fast float %4094, %4075
  %4096 = fmul fast float %4057, %2130
  %4097 = fmul fast float %4058, %2130
  %4098 = fmul fast float %4059, %2130
  %4099 = fadd fast float %4076, %2111
  %4100 = fadd fast float %4099, %4089
  %4101 = fmul fast float %4100, %2130
  %4102 = fadd fast float %4077, %2112
  %4103 = fadd fast float %4102, %4092
  %4104 = fmul fast float %4103, %2130
  %4105 = fadd fast float %4078, %2113
  %4106 = fadd fast float %4105, %4095
  %4107 = fmul fast float %4106, %2130
  %4108 = bitcast i32 %2758 to float
  %4109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4110 = extractvalue %dx.types.CBufRet.f32 %4109, 3
  %4111 = fcmp fast oeq float %4110, 0.000000e+00
  br i1 %4111, label %4339, label %4112

; <label>:4112                                    ; preds = %4050
  %4113 = extractvalue %dx.types.CBufRet.f32 %4109, 0
  %4114 = extractvalue %dx.types.CBufRet.f32 %4109, 1
  %4115 = extractvalue %dx.types.CBufRet.f32 %4109, 2
  %4116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4117 = extractvalue %dx.types.CBufRet.f32 %4116, 0
  %4118 = extractvalue %dx.types.CBufRet.f32 %4116, 1
  %4119 = extractvalue %dx.types.CBufRet.f32 %4116, 2
  %4120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4121 = extractvalue %dx.types.CBufRet.f32 %4120, 0
  %4122 = extractvalue %dx.types.CBufRet.f32 %4120, 1
  %4123 = call float @dx.op.dot3.f32(i32 55, float %4117, float %4118, float %4119, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4124 = select i1 %188, float %4121, float %4117
  %4125 = select i1 %188, float %4123, float %4118
  %4126 = select i1 %188, float %4122, float %4119
  %4127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4128 = extractvalue %dx.types.CBufRet.f32 %4127, 1
  %4129 = fcmp fast une float %4128, 0.000000e+00
  br i1 %4129, label %4130, label %4147

; <label>:4130                                    ; preds = %4112
  %4131 = fptoui float %70 to i32
  %4132 = fptoui float %71 to i32
  %4133 = lshr i32 %4131, 4
  %4134 = lshr i32 %4132, 4
  %4135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.f32 %4135, 0
  %4137 = fptoui float %4136 to i32
  %4138 = add i32 %4137, 15
  %4139 = lshr i32 %4138, 4
  %4140 = mul i32 %4139, %4134
  %4141 = add i32 %4140, %4133
  %4142 = shl i32 %4141, 3
  %4143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4142, i32 undef)  ; BufferLoad(srv,index,wot)
  %4144 = extractvalue %dx.types.ResRet.i32 %4143, 0
  %4145 = and i32 %4144, -268435456
  %4146 = icmp eq i32 %4145, -1342177280
  br i1 %4146, label %4157, label %4147

; <label>:4147                                    ; preds = %4130, %4112
  %4148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4149 = extractvalue %dx.types.CBufRet.f32 %4148, 2
  %4150 = extractvalue %dx.types.CBufRet.f32 %4148, 3
  %4151 = fmul fast float %4149, %70
  %4152 = fmul fast float %4150, %71
  %4153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %4151, float %4152, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4154 = extractvalue %dx.types.ResRet.f32 %4153, 0
  %4155 = extractvalue %dx.types.ResRet.f32 %4153, 1
  %4156 = extractvalue %dx.types.ResRet.f32 %4153, 2
  br label %4157

; <label>:4157                                    ; preds = %4147, %4130
  %4158 = phi float [ %4154, %4147 ], [ 0.000000e+00, %4130 ]
  %4159 = phi float [ %4155, %4147 ], [ 0.000000e+00, %4130 ]
  %4160 = phi float [ %4156, %4147 ], [ 0.000000e+00, %4130 ]
  %4161 = call float @dx.op.binary.f32(i32 36, float %4159, float %4160)  ; FMin(a,b)
  %4162 = call float @dx.op.binary.f32(i32 36, float %4158, float %4161)  ; FMin(a,b)
  %4163 = fcmp fast ogt float %4162, 0.000000e+00
  br i1 %4163, label %4164, label %4339, !dx.controlflow.hints !86

; <label>:4164                                    ; preds = %4157
  %4165 = fmul fast float %4158, %4124
  %4166 = fmul fast float %4159, %4125
  %4167 = fmul fast float %4160, %4126
  %4168 = fsub fast float %4113, %2732
  %4169 = fsub fast float %4114, %2731
  %4170 = fsub fast float %4115, %2730
  %4171 = call float @dx.op.dot3.f32(i32 55, float %4168, float %4169, float %4170, float %4168, float %4169, float %4170)  ; Dot3(ax,ay,az,bx,by,bz)
  %4172 = call float @dx.op.unary.f32(i32 25, float %4171)  ; Rsqrt(value)
  %4173 = fmul fast float %4172, %4168
  %4174 = fmul fast float %4172, %4169
  %4175 = fmul fast float %4172, %4170
  %4176 = call float @dx.op.dot3.f32(i32 55, float %4113, float %4114, float %4115, float %2736, float %2737, float %2738)  ; Dot3(ax,ay,az,bx,by,bz)
  %4177 = call float @dx.op.dot3.f32(i32 55, float %2729, float %2728, float %2727, float %4173, float %4174, float %4175)  ; Dot3(ax,ay,az,bx,by,bz)
  %4178 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4179 = fmul fast float %4178, %4178
  %4180 = fmul fast float %4179, %4108
  %4181 = call float @dx.op.unary.f32(i32 7, float %4180)  ; Saturate(value)
  %4182 = fmul fast float %4181, %4178
  %4183 = call float @dx.op.dot3.f32(i32 55, float %2736, float %2737, float %2738, float %4173, float %4174, float %4175)  ; Dot3(ax,ay,az,bx,by,bz)
  %4184 = fmul fast float %4183, %4183
  %4185 = call float @dx.op.unary.f32(i32 6, float %4176)  ; FAbs(value)
  %4186 = fsub fast float 1.000000e+00, %2742
  %4187 = call float @dx.op.binary.f32(i32 35, float %4186, float 0x3F847AE140000000)  ; FMax(a,b)
  %4188 = fmul fast float %4187, %4187
  %4189 = fmul fast float %4188, %4188
  %4190 = fsub fast float 1.000000e+00, %4189
  %4191 = fmul fast float %2746, %2746
  %4192 = fmul fast float %4191, %4190
  %4193 = fadd fast float %4192, %4189
  %4194 = bitcast float %4193 to i32
  %4195 = ashr i32 %4194, 1
  %4196 = add nsw i32 %4195, 532487669
  %4197 = bitcast i32 %4196 to float
  %4198 = fadd fast float %4197, %2746
  %4199 = fmul fast float %4189, %4184
  %4200 = fsub fast float 1.000000e+00, %4184
  %4201 = fadd fast float %4200, %4199
  %4202 = fmul fast float %4185, %4185
  %4203 = fmul fast float %4202, %4190
  %4204 = fadd fast float %4203, %4189
  %4205 = bitcast float %4204 to i32
  %4206 = ashr i32 %4205, 1
  %4207 = add nsw i32 %4206, 532487669
  %4208 = bitcast i32 %4207 to float
  %4209 = fadd fast float %4208, %4185
  %4210 = fmul fast float %4201, %4201
  %4211 = fmul fast float %4210, %4198
  %4212 = fmul fast float %4211, %4209
  %4213 = fdiv fast float 0x3FF0A00000000000, %4212
  %4214 = fmul fast float %4213, %4189
  %4215 = call float @dx.op.unary.f32(i32 6, float %4177)  ; FAbs(value)
  %4216 = fsub fast float 1.000000e+00, %4215
  %4217 = bitcast float %4216 to i32
  %4218 = sitofp i32 %4217 to float
  %4219 = fmul fast float %4218, 5.000000e+00
  %4220 = fadd fast float %4219, 0xC1EFBF8940000000
  %4221 = fptosi float %4220 to i32
  %4222 = bitcast i32 %4221 to float
  %4223 = fsub fast float 1.000000e+00, %2733
  %4224 = fsub fast float 1.000000e+00, %2734
  %4225 = fsub fast float 1.000000e+00, %2744
  %4226 = fmul fast float %4222, %4223
  %4227 = fmul fast float %4222, %4224
  %4228 = fmul fast float %4222, %4225
  %4229 = fadd fast float %4226, %2733
  %4230 = fadd fast float %4227, %2734
  %4231 = fadd fast float %4228, %2744
  br i1 %4023, label %4232, label %4255

; <label>:4232                                    ; preds = %4164
  %4233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2110, float %4215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4234 = extractvalue %dx.types.ResRet.f32 %4233, 0
  %4235 = extractvalue %dx.types.ResRet.f32 %4233, 1
  %4236 = extractvalue %dx.types.ResRet.f32 %4233, 2
  %4237 = fadd fast float %4234, -5.000000e-01
  %4238 = fadd fast float %4235, -5.000000e-01
  %4239 = fadd fast float %4236, -5.000000e-01
  %4240 = fmul fast float %2733, 4.000000e+00
  %4241 = fmul fast float %4240, %4223
  %4242 = fmul fast float %4241, %4237
  %4243 = fmul fast float %2734, 4.000000e+00
  %4244 = fmul fast float %4243, %4224
  %4245 = fmul fast float %4244, %4238
  %4246 = fmul fast float %2744, 4.000000e+00
  %4247 = fmul fast float %4246, %4225
  %4248 = fmul fast float %4247, %4239
  %4249 = fadd fast float %4242, %4229
  %4250 = fadd fast float %4245, %4230
  %4251 = fadd fast float %4248, %4231
  %4252 = call float @dx.op.unary.f32(i32 7, float %4249)  ; Saturate(value)
  %4253 = call float @dx.op.unary.f32(i32 7, float %4250)  ; Saturate(value)
  %4254 = call float @dx.op.unary.f32(i32 7, float %4251)  ; Saturate(value)
  br label %4255

; <label>:4255                                    ; preds = %4232, %4164
  %4256 = phi float [ %4252, %4232 ], [ %4229, %4164 ]
  %4257 = phi float [ %4253, %4232 ], [ %4230, %4164 ]
  %4258 = phi float [ %4254, %4232 ], [ %4231, %4164 ]
  %4259 = fmul fast float %4176, 9.843750e-01
  %4260 = fadd fast float %4259, 7.812500e-03
  %4261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4260, float %4013, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4262 = extractvalue %dx.types.ResRet.f32 %4261, 2
  %4263 = extractvalue %dx.types.ResRet.f32 %4261, 3
  %4264 = fmul fast float %4262, %2733
  %4265 = fmul fast float %4262, %2734
  %4266 = fmul fast float %4262, %2744
  %4267 = fadd fast float %4264, %4263
  %4268 = fadd fast float %4265, %4263
  %4269 = fadd fast float %4266, %4263
  br i1 %4023, label %4270, label %4293

; <label>:4270                                    ; preds = %4255
  %4271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2110, float %4176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4272 = extractvalue %dx.types.ResRet.f32 %4271, 0
  %4273 = extractvalue %dx.types.ResRet.f32 %4271, 1
  %4274 = extractvalue %dx.types.ResRet.f32 %4271, 2
  %4275 = fadd fast float %4272, -5.000000e-01
  %4276 = fadd fast float %4273, -5.000000e-01
  %4277 = fadd fast float %4274, -5.000000e-01
  %4278 = fmul fast float %2733, 4.000000e+00
  %4279 = fmul fast float %4278, %4223
  %4280 = fmul fast float %4279, %4275
  %4281 = fmul fast float %2734, 4.000000e+00
  %4282 = fmul fast float %4281, %4224
  %4283 = fmul fast float %4282, %4276
  %4284 = fmul fast float %2744, 4.000000e+00
  %4285 = fmul fast float %4284, %4225
  %4286 = fmul fast float %4285, %4277
  %4287 = fadd fast float %4280, %4267
  %4288 = fadd fast float %4283, %4268
  %4289 = fadd fast float %4286, %4269
  %4290 = call float @dx.op.unary.f32(i32 7, float %4287)  ; Saturate(value)
  %4291 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4292 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  br label %4293

; <label>:4293                                    ; preds = %4270, %4255
  %4294 = phi float [ %4290, %4270 ], [ %4267, %4255 ]
  %4295 = phi float [ %4291, %4270 ], [ %4268, %4255 ]
  %4296 = phi float [ %4292, %4270 ], [ %4269, %4255 ]
  %4297 = call float @dx.op.binary.f32(i32 35, float %4295, float %4296)  ; FMax(a,b)
  %4298 = call float @dx.op.binary.f32(i32 35, float %4294, float %4297)  ; FMax(a,b)
  %4299 = fsub fast float 1.000000e+00, %4298
  %4300 = fmul fast float %4256, %4214
  %4301 = fmul fast float %4257, %4214
  %4302 = fmul fast float %4258, %4214
  %4303 = fsub fast float 1.000000e+00, %4177
  %4304 = bitcast float %4303 to i32
  %4305 = sitofp i32 %4304 to float
  %4306 = fmul fast float %4305, 5.000000e+00
  %4307 = fadd fast float %4306, 0xC1EFBF8940000000
  %4308 = fptosi float %4307 to i32
  %4309 = bitcast i32 %4308 to float
  %4310 = fmul fast float %4309, %2109
  %4311 = fmul fast float %4299, %4310
  %4312 = fmul fast float %4311, %4073
  %4313 = fmul fast float %4311, %4074
  %4314 = fmul fast float %4311, %4075
  %4315 = fadd fast float %4312, %4300
  %4316 = fadd fast float %4313, %4301
  %4317 = fadd fast float %4314, %4302
  %4318 = fmul fast float %4182, %4165
  %4319 = fmul fast float %4318, %4299
  %4320 = fmul fast float %4182, %4166
  %4321 = fmul fast float %4320, %4299
  %4322 = fmul fast float %4182, %4167
  %4323 = fmul fast float %4322, %4299
  %4324 = fmul fast float %4318, %4315
  %4325 = fmul fast float %4320, %4316
  %4326 = fmul fast float %4322, %4317
  %4327 = fadd fast float %4319, %4057
  %4328 = fmul fast float %4327, %2130
  %4329 = fadd fast float %4321, %4058
  %4330 = fmul fast float %4329, %2130
  %4331 = fadd fast float %4323, %4059
  %4332 = fmul fast float %4331, %2130
  %4333 = fadd fast float %4324, %4100
  %4334 = fmul fast float %4333, %2130
  %4335 = fadd fast float %4325, %4103
  %4336 = fmul fast float %4335, %2130
  %4337 = fadd fast float %4326, %4106
  %4338 = fmul fast float %4337, %2130
  br label %4339

; <label>:4339                                    ; preds = %4293, %4157, %4050
  %4340 = phi float [ %4101, %4050 ], [ %4101, %4157 ], [ %4334, %4293 ]
  %4341 = phi float [ %4104, %4050 ], [ %4104, %4157 ], [ %4336, %4293 ]
  %4342 = phi float [ %4107, %4050 ], [ %4107, %4157 ], [ %4338, %4293 ]
  %4343 = phi float [ %4096, %4050 ], [ %4096, %4157 ], [ %4328, %4293 ]
  %4344 = phi float [ %4097, %4050 ], [ %4097, %4157 ], [ %4330, %4293 ]
  %4345 = phi float [ %4098, %4050 ], [ %4098, %4157 ], [ %4332, %4293 ]
  %4346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4347 = extractvalue %dx.types.CBufRet.i32 %4346, 0
  %4348 = icmp eq i32 %4347, 0
  br i1 %4348, label %4783, label %4349

; <label>:4349                                    ; preds = %4339
  %4350 = fptoui float %70 to i32
  %4351 = fptoui float %71 to i32
  %4352 = lshr i32 %4350, 4
  %4353 = lshr i32 %4351, 4
  %4354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4355 = extractvalue %dx.types.CBufRet.i32 %4354, 0
  %4356 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4353, i32 %4355, i32 %4352)  ; UMad(a,b,c)
  %4357 = add nsw i32 %4347, -1
  %4358 = call i32 @dx.op.binary.i32(i32 37, i32 %4357, i32 0)  ; IMax(a,b)
  %4359 = call float @dx.op.binary.f32(i32 35, float %65, float 0.000000e+00)  ; FMax(a,b)
  %4360 = fptoui float %4359 to i32
  %4361 = lshr i32 %4360, 5
  %4362 = call i32 @dx.op.binary.i32(i32 40, i32 %4361, i32 8191)  ; UMin(a,b)
  %4363 = shl i32 %4362, 2
  %4364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4363, i32 undef)  ; BufferLoad(srv,index,wot)
  %4365 = extractvalue %dx.types.ResRet.i32 %4364, 0
  %4366 = lshr i32 %4365, 16
  %4367 = and i32 %4365, 65535
  %4368 = lshr i32 %4365, 21
  %4369 = lshr i32 %4367, 5
  %4370 = call i32 @dx.op.binary.i32(i32 40, i32 %4369, i32 %4358)  ; UMin(a,b)
  %4371 = icmp ugt i32 %4368, %4370
  br i1 %4371, label %4783, label %4372

; <label>:4372                                    ; preds = %4349
  br label %4373

; <label>:4373                                    ; preds = %4773, %4372
  %4374 = phi i32 [ %4780, %4773 ], [ %4368, %4372 ]
  %4375 = phi float [ %4774, %4773 ], [ %4340, %4372 ]
  %4376 = phi float [ %4775, %4773 ], [ %4341, %4372 ]
  %4377 = phi float [ %4776, %4773 ], [ %4342, %4372 ]
  %4378 = phi float [ %4777, %4773 ], [ %4343, %4372 ]
  %4379 = phi float [ %4778, %4773 ], [ %4344, %4372 ]
  %4380 = phi float [ %4779, %4773 ], [ %4345, %4372 ]
  %4381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4382 = extractvalue %dx.types.CBufRet.i32 %4381, 0
  %4383 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4356, i32 %4382, i32 %4374)  ; UMad(a,b,c)
  %4384 = shl i32 %4383, 2
  %4385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4384, i32 undef)  ; BufferLoad(srv,index,wot)
  %4386 = extractvalue %dx.types.ResRet.i32 %4385, 0
  %4387 = shl i32 %4374, 5
  %4388 = sub nsw i32 %4366, %4387
  %4389 = call i32 @dx.op.binary.i32(i32 37, i32 %4388, i32 0)  ; IMax(a,b)
  %4390 = call i32 @dx.op.binary.i32(i32 38, i32 %4389, i32 31)  ; IMin(a,b)
  %4391 = sub nsw i32 1, %4366
  %4392 = add nsw i32 %4391, %4367
  %4393 = call i32 @dx.op.binary.i32(i32 37, i32 %4392, i32 0)  ; IMax(a,b)
  %4394 = call i32 @dx.op.binary.i32(i32 38, i32 %4393, i32 32)  ; IMin(a,b)
  %4395 = and i32 %4394, 31
  %4396 = shl i32 -1, %4395
  %4397 = xor i32 %4396, -1
  %4398 = and i32 %4390, 31
  %4399 = shl i32 %4397, %4398
  %4400 = icmp eq i32 %4394, 32
  %4401 = select i1 %4400, i32 -1, i32 %4399
  %4402 = and i32 %4401, %4386
  %4403 = icmp eq i32 %4402, 0
  br i1 %4403, label %4773, label %4404

; <label>:4404                                    ; preds = %4373
  br label %4405

; <label>:4405                                    ; preds = %4485, %4404
  %4406 = phi i32 [ %4417, %4485 ], [ %4402, %4404 ]
  %4407 = phi float [ %4486, %4485 ], [ %4375, %4404 ]
  %4408 = phi float [ %4487, %4485 ], [ %4376, %4404 ]
  %4409 = phi float [ %4488, %4485 ], [ %4377, %4404 ]
  %4410 = phi float [ %4489, %4485 ], [ %4378, %4404 ]
  %4411 = phi float [ %4490, %4485 ], [ %4379, %4404 ]
  %4412 = phi float [ %4491, %4485 ], [ %4380, %4404 ]
  %4413 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4406)  ; FirstbitLo(value)
  %4414 = add i32 %4413, %4387
  %4415 = and i32 %4413, 31
  %4416 = shl i32 1, %4415
  %4417 = xor i32 %4416, %4406
  %4418 = mul i32 %4414, 112
  %4419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4418, i32 undef)  ; BufferLoad(srv,index,wot)
  %4420 = extractvalue %dx.types.ResRet.f32 %4419, 0
  %4421 = extractvalue %dx.types.ResRet.f32 %4419, 1
  %4422 = extractvalue %dx.types.ResRet.f32 %4419, 2
  %4423 = or i32 %4418, 12
  %4424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4423, i32 undef)  ; BufferLoad(srv,index,wot)
  %4425 = extractvalue %dx.types.ResRet.f32 %4424, 0
  %4426 = add i32 %4418, 44
  %4427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4426, i32 undef)  ; BufferLoad(srv,index,wot)
  %4428 = extractvalue %dx.types.ResRet.f32 %4427, 0
  %4429 = add i32 %4418, 48
  %4430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4431 = extractvalue %dx.types.ResRet.f32 %4430, 0
  %4432 = extractvalue %dx.types.ResRet.f32 %4430, 1
  %4433 = extractvalue %dx.types.ResRet.f32 %4430, 2
  %4434 = add i32 %4418, 80
  %4435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4434, i32 undef)  ; BufferLoad(srv,index,wot)
  %4436 = extractvalue %dx.types.ResRet.f32 %4435, 1
  %4437 = extractvalue %dx.types.ResRet.f32 %4435, 2
  %4438 = call float @dx.op.dot3.f32(i32 55, float %4420, float %4421, float %4422, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4439 = select i1 %188, float %4436, float %4420
  %4440 = select i1 %188, float %4438, float %4421
  %4441 = select i1 %188, float %4437, float %4422
  %4442 = fsub fast float %4431, %117
  %4443 = fsub fast float %4432, %118
  %4444 = fsub fast float %4433, %119
  %4445 = call float @dx.op.dot3.f32(i32 55, float %4442, float %4443, float %4444, float %4442, float %4443, float %4444)  ; Dot3(ax,ay,az,bx,by,bz)
  %4446 = call float @dx.op.unary.f32(i32 24, float %4445)  ; Sqrt(value)
  %4447 = fdiv fast float 1.000000e+00, %4446
  %4448 = fmul fast float %4447, %4442
  %4449 = fmul fast float %4447, %4443
  %4450 = fmul fast float %4447, %4444
  %4451 = fadd fast float %4446, %4425
  %4452 = fdiv fast float 1.000000e+00, %4451
  %4453 = fmul float %4428, %4452
  %4454 = fmul float %4453, %4453
  %4455 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4456 = and i32 %4416, %4402
  %4457 = icmp eq i32 %4456, 0
  br i1 %4457, label %4480, label %4458, !dx.controlflow.hints !87

; <label>:4458                                    ; preds = %4405
  %4459 = lshr i32 %4350, 5
  %4460 = lshr i32 %4351, 5
  %4461 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %4459, i32 %4460, i32 %4414, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4462 = extractvalue %dx.types.ResRet.i32 %4461, 0
  %4463 = and i32 %4462, 3
  %4464 = icmp eq i32 %4463, 0
  %4465 = select i1 %4464, float 1.000000e+00, float 0.000000e+00
  %4466 = icmp eq i32 %4463, 3
  br i1 %4466, label %4467, label %4480

; <label>:4467                                    ; preds = %4458
  %4468 = lshr i32 %4462, 10
  %4469 = and i32 %4468, 8160
  %4470 = and i32 %4351, 31
  %4471 = or i32 %4469, %4470
  %4472 = lshr i32 %4462, 1
  %4473 = and i32 %4472, 16352
  %4474 = and i32 %4350, 31
  %4475 = or i32 %4473, %4474
  %4476 = lshr i32 %4462, 23
  %4477 = and i32 %4476, 255
  %4478 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %4475, i32 %4471, i32 %4477, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4479 = extractvalue %dx.types.ResRet.f32 %4478, 0
  br label %4480

; <label>:4480                                    ; preds = %4467, %4458, %4405
  %4481 = phi float [ %4479, %4467 ], [ %4465, %4458 ], [ 0.000000e+00, %4405 ]
  %4482 = call float @dx.op.binary.f32(i32 36, float %4481, float %4481)  ; FMin(a,b)
  %4483 = call float @dx.op.binary.f32(i32 36, float %4481, float %4482)  ; FMin(a,b)
  %4484 = fcmp fast ogt float %4483, 0.000000e+00
  br i1 %4484, label %4493, label %4485, !dx.controlflow.hints !88

; <label>:4485                                    ; preds = %4729, %4480
  %4486 = phi float [ %4407, %4480 ], [ %4769, %4729 ]
  %4487 = phi float [ %4408, %4480 ], [ %4770, %4729 ]
  %4488 = phi float [ %4409, %4480 ], [ %4771, %4729 ]
  %4489 = phi float [ %4410, %4480 ], [ %4763, %4729 ]
  %4490 = phi float [ %4411, %4480 ], [ %4764, %4729 ]
  %4491 = phi float [ %4412, %4480 ], [ %4765, %4729 ]
  %4492 = icmp eq i32 %4406, %4416
  br i1 %4492, label %4772, label %4405

; <label>:4493                                    ; preds = %4480
  %4494 = fmul fast float %4481, %4439
  %4495 = fmul fast float %4481, %4440
  %4496 = fmul fast float %4481, %4441
  %4497 = fsub fast float %4433, %2532
  %4498 = fcmp fast ogt float %4497, 0.000000e+00
  %4499 = fsub fast float %119, %2532
  %4500 = fcmp fast ogt float %4499, 0.000000e+00
  %4501 = xor i1 %4500, %4498
  %4502 = fsub fast float %2532, %4433
  %4503 = fmul fast float %4502, 2.000000e+00
  %4504 = fadd fast float %4503, %4433
  %4505 = select i1 %4501, float %4433, float %4504
  %4506 = fsub fast float %4505, %119
  %4507 = call float @dx.op.dot3.f32(i32 55, float %4442, float %4443, float %4506, float %4442, float %4443, float %4506)  ; Dot3(ax,ay,az,bx,by,bz)
  %4508 = call float @dx.op.unary.f32(i32 25, float %4507)  ; Rsqrt(value)
  %4509 = fmul fast float %4508, %4442
  %4510 = fmul fast float %4508, %4443
  %4511 = fmul fast float %4508, %4506
  %4512 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2540)  ; Dot3(ax,ay,az,bx,by,bz)
  %4513 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4509, float %4510, float %4511)  ; Dot3(ax,ay,az,bx,by,bz)
  %4514 = fdiv fast float 1.000000e+00, %4513
  %4515 = fmul fast float %4514, %4512
  %4516 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4499, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4517 = fcmp fast ogt float %4516, 0.000000e+00
  %4518 = fcmp fast olt float %4516, 0.000000e+00
  %4519 = zext i1 %4517 to i32
  %4520 = zext i1 %4518 to i32
  %4521 = sub nsw i32 %4519, %4520
  %4522 = sitofp i32 %4521 to float
  %4523 = fsub fast float %4505, %2532
  %4524 = call float @dx.op.dot3.f32(i32 55, float %4442, float %4443, float %4523, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4525 = fcmp fast ogt float %4524, 0.000000e+00
  %4526 = fcmp fast olt float %4524, 0.000000e+00
  %4527 = zext i1 %4525 to i32
  %4528 = zext i1 %4526 to i32
  %4529 = sub nsw i32 %4527, %4528
  %4530 = sitofp i32 %4529 to float
  %4531 = fcmp fast une float %4522, %4530
  br i1 %4531, label %4532, label %4542

; <label>:4532                                    ; preds = %4493
  %4533 = fmul fast float %4515, %4511
  %4534 = fmul fast float %4515, %4510
  %4535 = fmul fast float %4515, %4509
  %4536 = fmul fast float %4535, %4535
  %4537 = fmul fast float %4534, %4534
  %4538 = fadd fast float %4536, %4537
  %4539 = fmul fast float %4533, %4533
  %4540 = fadd fast float %4538, %4539
  %4541 = call float @dx.op.unary.f32(i32 24, float %4540)  ; Sqrt(value)
  br label %4554

; <label>:4542                                    ; preds = %4493
  %4543 = icmp slt i32 %4521, 0
  br i1 %4543, label %4544, label %4554

; <label>:4544                                    ; preds = %4542
  %4545 = fsub fast float %117, %4431
  %4546 = fsub fast float %118, %4432
  %4547 = fsub fast float %119, %4505
  %4548 = fmul fast float %4545, %4545
  %4549 = fmul fast float %4546, %4546
  %4550 = fadd fast float %4548, %4549
  %4551 = fmul fast float %4547, %4547
  %4552 = fadd fast float %4550, %4551
  %4553 = call float @dx.op.unary.f32(i32 24, float %4552)  ; Sqrt(value)
  br label %4554

; <label>:4554                                    ; preds = %4544, %4542, %4532
  %4555 = phi float [ %4541, %4532 ], [ %4553, %4544 ], [ 0.000000e+00, %4542 ]
  %4556 = and i1 %4500, %4498
  %4557 = fsub fast float -0.000000e+00, %4555
  %4558 = select i1 %4556, float -0.000000e+00, float %4557
  %4559 = fmul fast float %2533, 0x3FF7154760000000
  %4560 = fmul fast float %4559, %4558
  %4561 = fmul fast float %2534, 0x3FF7154760000000
  %4562 = fmul fast float %4561, %4558
  %4563 = fmul fast float %2535, 0x3FF7154760000000
  %4564 = fmul fast float %4563, %4558
  %4565 = call float @dx.op.unary.f32(i32 21, float %4560)  ; Exp(value)
  %4566 = call float @dx.op.unary.f32(i32 21, float %4562)  ; Exp(value)
  %4567 = call float @dx.op.unary.f32(i32 21, float %4564)  ; Exp(value)
  %4568 = call float @dx.op.unary.f32(i32 7, float %4565)  ; Saturate(value)
  %4569 = call float @dx.op.unary.f32(i32 7, float %4566)  ; Saturate(value)
  %4570 = call float @dx.op.unary.f32(i32 7, float %4567)  ; Saturate(value)
  %4571 = fmul fast float %4494, %4568
  %4572 = fmul fast float %4495, %4569
  %4573 = fmul fast float %4496, %4570
  %4574 = fsub fast float %4448, %2732
  %4575 = fsub fast float %4449, %2731
  %4576 = fsub fast float %4450, %2730
  %4577 = call float @dx.op.dot3.f32(i32 55, float %4574, float %4575, float %4576, float %4574, float %4575, float %4576)  ; Dot3(ax,ay,az,bx,by,bz)
  %4578 = call float @dx.op.unary.f32(i32 25, float %4577)  ; Rsqrt(value)
  %4579 = fmul fast float %4578, %4574
  %4580 = fmul fast float %4578, %4575
  %4581 = fmul fast float %4578, %4576
  %4582 = call float @dx.op.dot3.f32(i32 55, float %4448, float %4449, float %4450, float %2736, float %2737, float %2738)  ; Dot3(ax,ay,az,bx,by,bz)
  %4583 = call float @dx.op.dot3.f32(i32 55, float %2729, float %2728, float %2727, float %4579, float %4580, float %4581)  ; Dot3(ax,ay,az,bx,by,bz)
  %4584 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4585 = fmul fast float %4584, %4455
  %4586 = fmul fast float %4584, %4584
  %4587 = fmul fast float %4586, %4108
  %4588 = call float @dx.op.unary.f32(i32 7, float %4587)  ; Saturate(value)
  %4589 = fmul fast float %4585, %4588
  %4590 = bitcast float %4445 to i32
  %4591 = ashr i32 %4590, 1
  %4592 = sub nsw i32 1597463007, %4591
  %4593 = bitcast i32 %4592 to float
  %4594 = fmul fast float %4593, %4442
  %4595 = fmul fast float %4593, %4443
  %4596 = fmul fast float %4593, %4444
  %4597 = fsub fast float %4594, %2732
  %4598 = fsub fast float %4595, %2731
  %4599 = fsub fast float %4596, %2730
  %4600 = call float @dx.op.dot3.f32(i32 55, float %4597, float %4598, float %4599, float %4597, float %4598, float %4599)  ; Dot3(ax,ay,az,bx,by,bz)
  %4601 = call float @dx.op.unary.f32(i32 25, float %4600)  ; Rsqrt(value)
  %4602 = fmul fast float %4597, %4601
  %4603 = fmul fast float %4598, %4601
  %4604 = fmul fast float %4599, %4601
  %4605 = call float @dx.op.dot3.f32(i32 55, float %2736, float %2737, float %2738, float %4602, float %4603, float %4604)  ; Dot3(ax,ay,az,bx,by,bz)
  %4606 = fmul fast float %4605, %4605
  %4607 = call float @dx.op.unary.f32(i32 6, float %4582)  ; FAbs(value)
  %4608 = fsub fast float 1.000000e+00, %2742
  %4609 = call float @dx.op.binary.f32(i32 35, float %4608, float 0x3F847AE140000000)  ; FMax(a,b)
  %4610 = fmul fast float %4609, %4609
  %4611 = fmul fast float %4610, %4610
  %4612 = fsub fast float 1.000000e+00, %4611
  %4613 = fmul fast float %2746, %2746
  %4614 = fmul fast float %4613, %4612
  %4615 = fadd fast float %4614, %4611
  %4616 = bitcast float %4615 to i32
  %4617 = ashr i32 %4616, 1
  %4618 = add nsw i32 %4617, 532487669
  %4619 = bitcast i32 %4618 to float
  %4620 = fadd fast float %4619, %2746
  %4621 = fmul fast float %4611, %4606
  %4622 = fsub fast float 1.000000e+00, %4606
  %4623 = fadd fast float %4622, %4621
  %4624 = fmul fast float %4607, %4607
  %4625 = fmul fast float %4624, %4612
  %4626 = fadd fast float %4625, %4611
  %4627 = bitcast float %4626 to i32
  %4628 = ashr i32 %4627, 1
  %4629 = add nsw i32 %4628, 532487669
  %4630 = bitcast i32 %4629 to float
  %4631 = fadd fast float %4630, %4607
  %4632 = fmul fast float %4623, %4623
  %4633 = fmul fast float %4632, %4620
  %4634 = fmul fast float %4633, %4631
  %4635 = fdiv fast float 1.000000e+00, %4634
  %4636 = bitcast float %4611 to i32
  %4637 = sitofp i32 %4636 to float
  %4638 = fmul fast float %4637, 0x3FE7F73180000000
  %4639 = fadd fast float %4638, 0x41AFE27C40000000
  %4640 = fptosi float %4639 to i32
  %4641 = bitcast i32 %4640 to float
  %4642 = fmul fast float %4428, 0x3FD80E9D60000000
  %4643 = fmul fast float %4642, %4593
  %4644 = fadd fast float %4641, %4643
  %4645 = bitcast float %4644 to i32
  %4646 = sub nsw i32 2129859010, %4645
  %4647 = bitcast i32 %4646 to float
  %4648 = fmul fast float %4611, %4635
  %4649 = fmul fast float %4648, %4641
  %4650 = fmul fast float %4649, %4647
  %4651 = call float @dx.op.unary.f32(i32 6, float %4583)  ; FAbs(value)
  %4652 = fsub fast float 1.000000e+00, %4651
  %4653 = bitcast float %4652 to i32
  %4654 = sitofp i32 %4653 to float
  %4655 = fmul fast float %4654, 5.000000e+00
  %4656 = fadd fast float %4655, 0xC1EFBF8940000000
  %4657 = fptosi float %4656 to i32
  %4658 = bitcast i32 %4657 to float
  %4659 = fsub fast float 1.000000e+00, %2733
  %4660 = fsub fast float 1.000000e+00, %2734
  %4661 = fsub fast float 1.000000e+00, %2744
  %4662 = fmul fast float %4658, %4659
  %4663 = fmul fast float %4658, %4660
  %4664 = fmul fast float %4658, %4661
  %4665 = fadd fast float %4662, %2733
  %4666 = fadd fast float %4663, %2734
  %4667 = fadd fast float %4664, %2744
  br i1 %4023, label %4668, label %4691

; <label>:4668                                    ; preds = %4554
  %4669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2110, float %4651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4670 = extractvalue %dx.types.ResRet.f32 %4669, 0
  %4671 = extractvalue %dx.types.ResRet.f32 %4669, 1
  %4672 = extractvalue %dx.types.ResRet.f32 %4669, 2
  %4673 = fadd fast float %4670, -5.000000e-01
  %4674 = fadd fast float %4671, -5.000000e-01
  %4675 = fadd fast float %4672, -5.000000e-01
  %4676 = fmul fast float %2733, 4.000000e+00
  %4677 = fmul fast float %4676, %4659
  %4678 = fmul fast float %4677, %4673
  %4679 = fmul fast float %2734, 4.000000e+00
  %4680 = fmul fast float %4679, %4660
  %4681 = fmul fast float %4680, %4674
  %4682 = fmul fast float %2744, 4.000000e+00
  %4683 = fmul fast float %4682, %4661
  %4684 = fmul fast float %4683, %4675
  %4685 = fadd fast float %4678, %4665
  %4686 = fadd fast float %4681, %4666
  %4687 = fadd fast float %4684, %4667
  %4688 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4689 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4690 = call float @dx.op.unary.f32(i32 7, float %4687)  ; Saturate(value)
  br label %4691

; <label>:4691                                    ; preds = %4668, %4554
  %4692 = phi float [ %4688, %4668 ], [ %4665, %4554 ]
  %4693 = phi float [ %4689, %4668 ], [ %4666, %4554 ]
  %4694 = phi float [ %4690, %4668 ], [ %4667, %4554 ]
  %4695 = fmul fast float %4582, 9.843750e-01
  %4696 = fadd fast float %4695, 7.812500e-03
  %4697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4696, float %4013, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4698 = extractvalue %dx.types.ResRet.f32 %4697, 2
  %4699 = extractvalue %dx.types.ResRet.f32 %4697, 3
  %4700 = fmul fast float %4698, %2733
  %4701 = fmul fast float %4698, %2734
  %4702 = fmul fast float %4698, %2744
  %4703 = fadd fast float %4700, %4699
  %4704 = fadd fast float %4701, %4699
  %4705 = fadd fast float %4702, %4699
  br i1 %4023, label %4706, label %4729

; <label>:4706                                    ; preds = %4691
  %4707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2110, float %4582, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4708 = extractvalue %dx.types.ResRet.f32 %4707, 0
  %4709 = extractvalue %dx.types.ResRet.f32 %4707, 1
  %4710 = extractvalue %dx.types.ResRet.f32 %4707, 2
  %4711 = fadd fast float %4708, -5.000000e-01
  %4712 = fadd fast float %4709, -5.000000e-01
  %4713 = fadd fast float %4710, -5.000000e-01
  %4714 = fmul fast float %2733, 4.000000e+00
  %4715 = fmul fast float %4714, %4659
  %4716 = fmul fast float %4715, %4711
  %4717 = fmul fast float %2734, 4.000000e+00
  %4718 = fmul fast float %4717, %4660
  %4719 = fmul fast float %4718, %4712
  %4720 = fmul fast float %2744, 4.000000e+00
  %4721 = fmul fast float %4720, %4661
  %4722 = fmul fast float %4721, %4713
  %4723 = fadd fast float %4716, %4703
  %4724 = fadd fast float %4719, %4704
  %4725 = fadd fast float %4722, %4705
  %4726 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4727 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4728 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  br label %4729

; <label>:4729                                    ; preds = %4706, %4691
  %4730 = phi float [ %4726, %4706 ], [ %4703, %4691 ]
  %4731 = phi float [ %4727, %4706 ], [ %4704, %4691 ]
  %4732 = phi float [ %4728, %4706 ], [ %4705, %4691 ]
  %4733 = call float @dx.op.binary.f32(i32 35, float %4731, float %4732)  ; FMax(a,b)
  %4734 = call float @dx.op.binary.f32(i32 35, float %4730, float %4733)  ; FMax(a,b)
  %4735 = fsub fast float 1.000000e+00, %4734
  %4736 = fmul fast float %4692, %4650
  %4737 = fmul fast float %4693, %4650
  %4738 = fmul fast float %4694, %4650
  %4739 = fsub fast float 1.000000e+00, %4583
  %4740 = bitcast float %4739 to i32
  %4741 = sitofp i32 %4740 to float
  %4742 = fmul fast float %4741, 5.000000e+00
  %4743 = fadd fast float %4742, 0xC1EFBF8940000000
  %4744 = fptosi float %4743 to i32
  %4745 = bitcast i32 %4744 to float
  %4746 = fmul fast float %4745, %2109
  %4747 = fmul fast float %4735, %4746
  %4748 = fmul fast float %4747, %4073
  %4749 = fmul fast float %4747, %4074
  %4750 = fmul fast float %4747, %4075
  %4751 = fadd fast float %4748, %4736
  %4752 = fadd fast float %4749, %4737
  %4753 = fadd fast float %4750, %4738
  %4754 = fmul fast float %4571, %2130
  %4755 = fmul fast float %4754, %4589
  %4756 = fmul fast float %4755, %4735
  %4757 = fmul fast float %4572, %2130
  %4758 = fmul fast float %4757, %4589
  %4759 = fmul fast float %4758, %4735
  %4760 = fmul fast float %4573, %2130
  %4761 = fmul fast float %4760, %4589
  %4762 = fmul fast float %4761, %4735
  %4763 = fadd fast float %4756, %4410
  %4764 = fadd fast float %4759, %4411
  %4765 = fadd fast float %4762, %4412
  %4766 = fmul fast float %4755, %4751
  %4767 = fmul fast float %4758, %4752
  %4768 = fmul fast float %4761, %4753
  %4769 = fadd fast float %4766, %4407
  %4770 = fadd fast float %4767, %4408
  %4771 = fadd fast float %4768, %4409
  br label %4485

; <label>:4772                                    ; preds = %4485
  br label %4773

; <label>:4773                                    ; preds = %4772, %4373
  %4774 = phi float [ %4375, %4373 ], [ %4486, %4772 ]
  %4775 = phi float [ %4376, %4373 ], [ %4487, %4772 ]
  %4776 = phi float [ %4377, %4373 ], [ %4488, %4772 ]
  %4777 = phi float [ %4378, %4373 ], [ %4489, %4772 ]
  %4778 = phi float [ %4379, %4373 ], [ %4490, %4772 ]
  %4779 = phi float [ %4380, %4373 ], [ %4491, %4772 ]
  %4780 = add i32 %4374, 1
  %4781 = icmp ugt i32 %4780, %4370
  br i1 %4781, label %4782, label %4373

; <label>:4782                                    ; preds = %4773
  br label %4783

; <label>:4783                                    ; preds = %4782, %4349, %4339
  %4784 = phi float [ %4340, %4339 ], [ %4340, %4349 ], [ %4774, %4782 ]
  %4785 = phi float [ %4341, %4339 ], [ %4341, %4349 ], [ %4775, %4782 ]
  %4786 = phi float [ %4342, %4339 ], [ %4342, %4349 ], [ %4776, %4782 ]
  %4787 = phi float [ %4343, %4339 ], [ %4343, %4349 ], [ %4777, %4782 ]
  %4788 = phi float [ %4344, %4339 ], [ %4344, %4349 ], [ %4778, %4782 ]
  %4789 = phi float [ %4345, %4339 ], [ %4345, %4349 ], [ %4779, %4782 ]
  %4790 = call float @dx.op.unary.f32(i32 24, float %2739)  ; Sqrt(value)
  %4791 = call float @dx.op.unary.f32(i32 24, float %2740)  ; Sqrt(value)
  %4792 = call float @dx.op.unary.f32(i32 24, float %2741)  ; Sqrt(value)
  %4793 = fmul fast float %4790, %4787
  %4794 = fmul fast float %4791, %4788
  %4795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4796 = extractvalue %dx.types.CBufRet.f32 %4795, 0
  br i1 %188, label %4797, label %4817

; <label>:4797                                    ; preds = %4783
  %4798 = fadd fast float %4789, %2107
  %4799 = fmul fast float %4798, %2108
  %4800 = fsub fast float 1.000000e+00, %2108
  %4801 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4803 = extractvalue %dx.types.CBufRet.f32 %4802, 3
  %4804 = fmul fast float %4803, %4801
  %4805 = fadd fast float %4804, %4799
  %4806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4807 = extractvalue %dx.types.CBufRet.f32 %4806, 0
  %4808 = fmul fast float %4807, %4079
  %4809 = fsub fast float %4805, %4808
  %4810 = fadd fast float %4794, %4793
  %4811 = fmul fast float %4796, %4810
  %4812 = extractvalue %dx.types.CBufRet.f32 %4802, 1
  %4813 = fsub fast float %4809, %4812
  %4814 = extractvalue %dx.types.CBufRet.f32 %4802, 2
  %4815 = fmul fast float %4813, %4814
  %4816 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  br label %4833

; <label>:4817                                    ; preds = %4783
  %4818 = fmul fast float %4792, %4789
  %4819 = fmul fast float %4796, %4793
  %4820 = fmul fast float %4796, %4794
  %4821 = fmul fast float %4818, %4796
  %4822 = add i32 %44, 196
  %4823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4822, i32 undef)  ; BufferLoad(srv,index,wot)
  %4824 = extractvalue %dx.types.ResRet.i32 %4823, 0
  %4825 = and i32 %4824, 32
  %4826 = icmp eq i32 %4825, 0
  br i1 %4826, label %4833, label %4827

; <label>:4827                                    ; preds = %4817
  %4828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4829 = extractvalue %dx.types.CBufRet.f32 %4828, 0
  %4830 = fmul fast float %4829, 0x3FE99999A0000000
  %4831 = fadd fast float %4829, %4819
  %4832 = fadd fast float %4830, %4821
  br label %4833

; <label>:4833                                    ; preds = %4827, %4817, %4797
  %4834 = phi float [ %4811, %4797 ], [ %4831, %4827 ], [ %4819, %4817 ]
  %4835 = phi float [ %4816, %4797 ], [ %4820, %4827 ], [ %4820, %4817 ]
  %4836 = phi float [ 1.000000e+00, %4797 ], [ %4832, %4827 ], [ %4821, %4817 ]
  %4837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4838 = extractvalue %dx.types.CBufRet.f32 %4837, 0
  %4839 = fmul fast float %4838, %4785
  %4840 = fmul fast float %4838, %4786
  %4841 = fadd fast float %4785, %4784
  %4842 = select i1 %188, float %4841, float %4784
  %4843 = fmul float %4842, %4838
  %4844 = select i1 %188, float 0.000000e+00, float %4839
  %4845 = select i1 %188, float 0.000000e+00, float %4840
  %4846 = fmul fast float %4834, %4790
  %4847 = fmul fast float %4835, %4791
  %4848 = fmul fast float %4836, %4792
  %4849 = fadd fast float %4843, %4846
  %4850 = fadd fast float %4844, %4847
  %4851 = fadd fast float %4845, %4848
  %4852 = select i1 %188, float %4835, float %4850
  %4853 = select i1 %188, float %4836, float %4851
  %4854 = call float @dx.op.binary.f32(i32 36, float %4849, float 3.225500e+04)  ; FMin(a,b)
  %4855 = call float @dx.op.binary.f32(i32 36, float %4852, float 3.225500e+04)  ; FMin(a,b)
  %4856 = call float @dx.op.binary.f32(i32 36, float %4853, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4854)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4855)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4856)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

