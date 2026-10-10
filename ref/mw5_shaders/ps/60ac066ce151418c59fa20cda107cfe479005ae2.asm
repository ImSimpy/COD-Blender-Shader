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
; shader hash: cf4908125aab3bb6838b05a9f1a46b57
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
  br i1 %276, label %766, label %277

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
  %726 = and i32 %725, 26624
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %751, label %728

; <label>:728                                     ; preds = %720
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = and i32 %730, 16384
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %751, label %733

; <label>:733                                     ; preds = %728
  %734 = and i32 %730, 1048576
  %735 = icmp ne i32 %734, 0
  %736 = add i32 %44, 248
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %736, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = add i32 %738, 0
  %740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %739, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %741 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %740, %dx.types.Handle %67, float %378, float %379, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %742 = extractvalue %dx.types.ResRet.f32 %741, 0
  %743 = add i32 %44, 64
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = lshr i32 %745, 24
  %747 = uitofp i32 %746 to float
  %748 = fmul fast float %742, 0x3F70101020000000
  %749 = select i1 %735, float 0x3F70101020000000, float %748
  %750 = fmul fast float %749, %747
  br label %751

; <label>:751                                     ; preds = %733, %728, %720
  %752 = phi float [ %750, %733 ], [ 0.000000e+00, %728 ], [ 0.000000e+00, %720 ]
  %753 = add i32 %44, 64
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = and i32 %755, 255
  %757 = uitofp i32 %756 to float
  %758 = lshr i32 %755, 8
  %759 = and i32 %758, 255
  %760 = uitofp i32 %759 to float
  %761 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %762 = fmul fast float %760, %761
  %763 = fadd fast float %762, %757
  %764 = fmul fast float %763, 0x3F70101020000000
  %765 = call float @dx.op.unary.f32(i32 7, float %764)  ; Saturate(value)
  br label %766

; <label>:766                                     ; preds = %751, %187
  %767 = phi float [ %674, %751 ], [ 0.000000e+00, %187 ]
  %768 = phi float [ %675, %751 ], [ 0.000000e+00, %187 ]
  %769 = phi float [ %721, %751 ], [ 0.000000e+00, %187 ]
  %770 = phi float [ %722, %751 ], [ 0.000000e+00, %187 ]
  %771 = phi float [ %723, %751 ], [ 0.000000e+00, %187 ]
  %772 = phi float [ %593, %751 ], [ 0.000000e+00, %187 ]
  %773 = phi float [ %594, %751 ], [ 0.000000e+00, %187 ]
  %774 = phi float [ %595, %751 ], [ 0.000000e+00, %187 ]
  %775 = phi float [ %579, %751 ], [ 0.000000e+00, %187 ]
  %776 = phi float [ 1.000000e+00, %751 ], [ 0.000000e+00, %187 ]
  %777 = phi float [ %673, %751 ], [ 0.000000e+00, %187 ]
  %778 = phi float [ %676, %751 ], [ 0.000000e+00, %187 ]
  %779 = phi float [ %752, %751 ], [ 0.000000e+00, %187 ]
  %780 = phi float [ %765, %751 ], [ 0.000000e+00, %187 ]
  %781 = icmp ult i32 %268, 2
  %782 = add i32 %44, 40
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = add i32 %44, 44
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = or i32 %787, %784
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %1649, label %790

; <label>:790                                     ; preds = %766
  %791 = add i32 %44, 172
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = lshr i32 %793, 16
  %795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %794)  ; LegacyF16ToF32(value)
  %796 = fmul fast float %795, 0x3F50624DE0000000
  %797 = add i32 %44, 72
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %797, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = lshr i32 %799, 16
  %801 = and i32 %800, 255
  %802 = lshr i32 %799, 24
  %803 = add i32 %44, 180
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 65535
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = lshr i32 %805, 16
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = add i32 %44, 48
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = lshr i32 %812, 22
  %814 = shl nuw nsw i32 %813, 5
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = shl i32 %812, 4
  %817 = and i32 %816, 32752
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = lshr i32 %812, 7
  %820 = and i32 %819, 32752
  %821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %820)  ; LegacyF16ToF32(value)
  %822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.f32 %822, 3
  %824 = fmul fast float %823, 1.000000e+03
  %825 = fmul fast float %261, %824
  %826 = call float @dx.op.unary.f32(i32 22, float %825)  ; Frc(value)
  %827 = fadd fast float %826, %251
  %828 = fmul fast float %262, %824
  %829 = call float @dx.op.unary.f32(i32 22, float %828)  ; Frc(value)
  %830 = fadd fast float %829, %253
  %831 = fmul fast float %796, %824
  %832 = call float @dx.op.unary.f32(i32 22, float %831)  ; Frc(value)
  %833 = fmul fast float %832, 0x401921FB60000000
  %834 = fadd fast float %833, %815
  %835 = call float @dx.op.unary.f32(i32 13, float %834)  ; Sin(value)
  %836 = call float @dx.op.unary.f32(i32 12, float %834)  ; Cos(value)
  %837 = fsub fast float -0.000000e+00, %835
  %838 = fadd fast float %61, -5.000000e-01
  %839 = fadd fast float %62, -5.000000e-01
  %840 = fmul fast float %807, %838
  %841 = fmul fast float %809, %839
  %842 = fadd fast float %840, 5.000000e-01
  %843 = fadd fast float %841, 5.000000e-01
  %844 = fmul fast float %818, %842
  %845 = fmul fast float %821, %843
  %846 = fmul fast float %836, %844
  %847 = call float @dx.op.tertiary.f32(i32 46, float %837, float %845, float %846)  ; FMad(a,b,c)
  %848 = fmul fast float %835, %844
  %849 = call float @dx.op.tertiary.f32(i32 46, float %836, float %845, float %848)  ; FMad(a,b,c)
  %850 = fadd fast float %827, %847
  %851 = fadd fast float %830, %849
  %852 = icmp ugt i32 %801, 1
  %853 = icmp ugt i32 %799, 33554431
  %854 = or i1 %853, %852
  br i1 %854, label %855, label %880

; <label>:855                                     ; preds = %790
  %856 = add i32 %44, 148
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = lshr i32 %858, 16
  %860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %859)  ; LegacyF16ToF32(value)
  %861 = fmul fast float %823, %860
  %862 = call float @dx.op.unary.f32(i32 22, float %861)  ; Frc(value)
  %863 = mul nuw nsw i32 %801, %802
  %864 = uitofp i32 %863 to float
  %865 = fmul fast float %862, %864
  %866 = call float @dx.op.unary.f32(i32 27, float %865)  ; Round_ni(value)
  %867 = fptoui float %866 to i32
  %868 = urem i32 %867, %801
  %869 = udiv i32 %867, %802
  %870 = call float @dx.op.unary.f32(i32 22, float %850)  ; Frc(value)
  %871 = call float @dx.op.unary.f32(i32 22, float %851)  ; Frc(value)
  %872 = uitofp i32 %868 to float
  %873 = uitofp i32 %869 to float
  %874 = fadd fast float %870, %872
  %875 = fadd fast float %871, %873
  %876 = uitofp i32 %801 to float
  %877 = uitofp i32 %802 to float
  %878 = fdiv fast float %874, %876
  %879 = fdiv fast float %875, %877
  br label %880

; <label>:880                                     ; preds = %855, %790
  %881 = phi float [ %878, %855 ], [ %850, %790 ]
  %882 = phi float [ %879, %855 ], [ %851, %790 ]
  %883 = and i32 %784, 16777216
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %991, label %885

; <label>:885                                     ; preds = %880
  %886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %887 = extractvalue %dx.types.CBufRet.f32 %886, 0
  %888 = extractvalue %dx.types.CBufRet.f32 %886, 1
  %889 = extractvalue %dx.types.CBufRet.f32 %886, 2
  %890 = fadd fast float %887, %117
  %891 = fadd fast float %888, %118
  %892 = fadd fast float %889, %119
  %893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.f32 %893, 0
  %895 = call float @dx.op.unary.f32(i32 7, float %894)  ; Saturate(value)
  %896 = icmp eq i32 %43, 65535
  br i1 %896, label %991, label %897

; <label>:897                                     ; preds = %885
  %898 = lshr i32 %43, 1
  %899 = shl i32 %898, 2
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = and i32 %43, 1
  %903 = icmp ne i32 %902, 0
  %904 = lshr i32 %901, 16
  %905 = and i32 %901, 65535
  %906 = select i1 %903, i32 %904, i32 %905
  %907 = icmp eq i32 %906, 65535
  br i1 %907, label %987, label %908

; <label>:908                                     ; preds = %897
  %909 = mul nuw nsw i32 %906, 40
  %910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.f32 %910, 0
  %912 = extractvalue %dx.types.ResRet.f32 %910, 1
  %913 = extractvalue %dx.types.ResRet.f32 %910, 2
  %914 = add nuw nsw i32 %909, 12
  %915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.f32 %915, 0
  %917 = extractvalue %dx.types.ResRet.f32 %915, 1
  %918 = extractvalue %dx.types.ResRet.f32 %915, 2
  %919 = add nuw nsw i32 %909, 24
  %920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 0
  %922 = extractvalue %dx.types.ResRet.f32 %920, 1
  %923 = extractvalue %dx.types.ResRet.f32 %920, 2
  %924 = add nuw nsw i32 %909, 36
  %925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.f32 %925, 0
  %927 = fsub fast float %890, %911
  %928 = fsub fast float %891, %912
  %929 = fsub fast float %892, %913
  %930 = fmul fast float %926, %927
  %931 = fmul fast float %926, %928
  %932 = fmul fast float %926, %929
  %933 = call float @dx.op.unary.f32(i32 27, float %930)  ; Round_ni(value)
  %934 = call float @dx.op.unary.f32(i32 27, float %931)  ; Round_ni(value)
  %935 = call float @dx.op.unary.f32(i32 27, float %932)  ; Round_ni(value)
  %936 = fadd fast float %933, 5.000000e-01
  %937 = fadd fast float %934, 5.000000e-01
  %938 = fadd fast float %935, 5.000000e-01
  %939 = fmul fast float %936, %916
  %940 = fmul fast float %937, %917
  %941 = fmul fast float %938, %918
  %942 = shl i32 %43, 2
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = add i32 %944, 0
  %946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %945, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %947 = call float @dx.op.unary.f32(i32 22, float %939)  ; Frc(value)
  %948 = call float @dx.op.unary.f32(i32 22, float %940)  ; Frc(value)
  %949 = call float @dx.op.unary.f32(i32 22, float %941)  ; Frc(value)
  %950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %946, %dx.types.Handle %40, float %947, float %948, float %949, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %951 = extractvalue %dx.types.ResRet.f32 %950, 0
  %952 = extractvalue %dx.types.ResRet.f32 %950, 1
  %953 = extractvalue %dx.types.ResRet.f32 %950, 2
  %954 = fmul fast float %951, 1.023000e+03
  %955 = fmul fast float %952, 1.023000e+03
  %956 = fmul fast float %953, 1.023000e+03
  %957 = fadd fast float %954, 5.000000e-01
  %958 = fadd fast float %955, 5.000000e-01
  %959 = fadd fast float %956, 5.000000e-01
  %960 = call float @dx.op.unary.f32(i32 27, float %957)  ; Round_ni(value)
  %961 = call float @dx.op.unary.f32(i32 27, float %958)  ; Round_ni(value)
  %962 = call float @dx.op.unary.f32(i32 27, float %959)  ; Round_ni(value)
  %963 = fsub fast float %930, %933
  %964 = fsub fast float %931, %934
  %965 = fsub fast float %932, %935
  %966 = fmul fast float %963, 7.500000e-01
  %967 = fmul fast float %964, 7.500000e-01
  %968 = fmul fast float %965, 7.500000e-01
  %969 = fadd fast float %933, 1.250000e-01
  %970 = fadd fast float %969, %966
  %971 = fadd fast float %970, %960
  %972 = fadd fast float %934, 1.250000e-01
  %973 = fadd fast float %972, %967
  %974 = fadd fast float %973, %961
  %975 = fadd fast float %935, 1.250000e-01
  %976 = fadd fast float %975, %968
  %977 = fadd fast float %976, %962
  %978 = fmul fast float %971, %921
  %979 = fmul fast float %974, %922
  %980 = fmul fast float %977, %923
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = add i32 %982, 0
  %984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %983, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %984, %dx.types.Handle %38, float %978, float %979, float %980, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %986 = extractvalue %dx.types.ResRet.f32 %985, 0
  br label %987

; <label>:987                                     ; preds = %908, %897
  %988 = phi float [ %986, %908 ], [ -1.000000e+00, %897 ]
  %989 = fadd fast float %988, %895
  %990 = call float @dx.op.unary.f32(i32 7, float %989)  ; Saturate(value)
  br label %991

; <label>:991                                     ; preds = %987, %885, %880
  %992 = phi float [ 1.000000e+00, %880 ], [ %990, %987 ], [ %895, %885 ]
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = and i32 %994, 256
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %1043, label %997

; <label>:997                                     ; preds = %991
  %998 = add i32 %44, 236
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = add i32 %1000, 0
  %1002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1001, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1003 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1002, %dx.types.Handle %67, float %881, float %882, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 0
  %1005 = add i32 %44, 84
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = shl i32 %1007, 4
  %1009 = and i32 %1008, 32752
  %1010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1009)  ; LegacyF16ToF32(value)
  %1011 = lshr i32 %1007, 7
  %1012 = and i32 %1011, 32752
  %1013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1012)  ; LegacyF16ToF32(value)
  %1014 = fsub fast float 1.000000e+00, %992
  %1015 = call float @dx.op.binary.f32(i32 35, float %1014, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1016 = bitcast float %992 to i32
  %1017 = sitofp i32 %1016 to float
  %1018 = fadd fast float %1017, 0xC1CFBF8940000000
  %1019 = fmul fast float %1013, %1018
  %1020 = fadd fast float %1019, 0x41CFBF8940000000
  %1021 = fptosi float %1020 to i32
  %1022 = bitcast i32 %1021 to float
  %1023 = bitcast float %1015 to i32
  %1024 = sitofp i32 %1023 to float
  %1025 = fadd fast float %1024, 0xC1CFBF8940000000
  %1026 = fmul fast float %1025, %1013
  %1027 = fadd fast float %1026, 0x41CFBF8940000000
  %1028 = fptosi float %1027 to i32
  %1029 = bitcast i32 %1028 to float
  %1030 = fmul fast float %1022, %1010
  %1031 = fmul fast float %1029, %1010
  %1032 = fsub fast float %1015, %1030
  %1033 = fadd fast float %1031, %1015
  %1034 = call float @dx.op.unary.f32(i32 7, float %1032)  ; Saturate(value)
  %1035 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  %1036 = fsub fast float %1004, %1034
  %1037 = fsub fast float %1035, %1034
  %1038 = bitcast float %1037 to i32
  %1039 = sub nsw i32 2129859010, %1038
  %1040 = bitcast i32 %1039 to float
  %1041 = fmul fast float %1040, %1036
  %1042 = call float @dx.op.unary.f32(i32 7, float %1041)  ; Saturate(value)
  br label %1043

; <label>:1043                                    ; preds = %997, %991
  %1044 = phi float [ %1042, %997 ], [ %992, %991 ]
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = and i32 %1046, 128
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1065, label %1049

; <label>:1049                                    ; preds = %1043
  %1050 = add i32 %44, 228
  %1051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.i32 %1051, 0
  %1053 = add i32 %1052, 0
  %1054 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1053, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1055 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1054, %dx.types.Handle %67, float %881, float %882, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = and i32 %1058, 524288
  %1060 = icmp ne i32 %1059, 0
  %1061 = fcmp fast ogt float %1056, 0x3FE0101020000000
  %1062 = select i1 %1061, float 1.000000e+00, float 0.000000e+00
  %1063 = select i1 %1060, float %1062, float %1056
  %1064 = fmul fast float %1063, %1044
  br label %1065

; <label>:1065                                    ; preds = %1049, %1043
  %1066 = phi float [ %1064, %1049 ], [ %1044, %1043 ]
  %1067 = fcmp fast ult float %1066, 0x3F70101020000000
  br i1 %1067, label %1649, label %1068

; <label>:1068                                    ; preds = %1065
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = and i32 %1070, 16
  %1072 = icmp eq i32 %1071, 0
  br i1 %1072, label %1271, label %1073

; <label>:1073                                    ; preds = %1068
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = add i32 %44, 204
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = add i32 %1078, 0
  %1080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1079, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1081 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1080, %dx.types.Handle %66, float %881, float %882, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1085 = extractvalue %dx.types.ResRet.f32 %1081, 3
  %1086 = and i32 %1075, 255
  %1087 = uitofp i32 %1086 to float
  %1088 = lshr i32 %1075, 8
  %1089 = and i32 %1088, 255
  %1090 = uitofp i32 %1089 to float
  %1091 = fmul fast float %1085, %1087
  %1092 = fadd fast float %1091, %1090
  %1093 = fmul fast float %1092, 0x3F70101000000000
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = and i32 %1095, 512
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1106, label %1098

; <label>:1098                                    ; preds = %1073
  %1099 = add i32 %44, 244
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = add i32 %1101, 0
  %1103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1102, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1104 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1103, %dx.types.Handle %67, float %881, float %882, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  br label %1106

; <label>:1106                                    ; preds = %1098, %1073
  %1107 = phi float [ %1105, %1098 ], [ 1.000000e+00, %1073 ]
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = and i32 %1109, 33554432
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1218, label %1112

; <label>:1112                                    ; preds = %1106
  %1113 = add i32 %44, 144
  %1114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1113, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.i32 %1114, 0
  %1116 = and i32 %1115, 65535
  %1117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1116)  ; LegacyF16ToF32(value)
  %1118 = lshr i32 %1115, 16
  %1119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1118)  ; LegacyF16ToF32(value)
  %1120 = add i32 %44, 148
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = and i32 %1122, 65535
  %1124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1123)  ; LegacyF16ToF32(value)
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = lshr i32 %1126, 24
  %1128 = uitofp i32 %1127 to float
  %1129 = fmul fast float %1128, 0x3F70101020000000
  %1130 = and i32 %1126, 255
  %1131 = uitofp i32 %1130 to float
  %1132 = fmul fast float %1131, 0x3F70101020000000
  %1133 = lshr i32 %1126, 8
  %1134 = and i32 %1133, 255
  %1135 = uitofp i32 %1134 to float
  %1136 = fmul fast float %1135, 0x3F70101020000000
  %1137 = lshr i32 %1126, 16
  %1138 = and i32 %1137, 255
  %1139 = uitofp i32 %1138 to float
  %1140 = fmul fast float %1139, 0x3F70101020000000
  %1141 = add i32 %44, 140
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = lshr i32 %1143, 24
  %1145 = uitofp i32 %1144 to float
  %1146 = fmul fast float %1145, 0x3F70101020000000
  %1147 = and i32 %1143, 255
  %1148 = uitofp i32 %1147 to float
  %1149 = fmul fast float %1148, 0x3F70101020000000
  %1150 = lshr i32 %1143, 8
  %1151 = and i32 %1150, 255
  %1152 = uitofp i32 %1151 to float
  %1153 = fmul fast float %1152, 0x3F70101020000000
  %1154 = lshr i32 %1143, 16
  %1155 = and i32 %1154, 255
  %1156 = uitofp i32 %1155 to float
  %1157 = fmul fast float %1156, 0x3F70101020000000
  %1158 = bitcast float %1082 to i32
  %1159 = ashr i32 %1158, 1
  %1160 = sub nsw i32 1597463174, %1159
  %1161 = bitcast i32 %1160 to float
  %1162 = fmul fast float %1082, 5.000000e-01
  %1163 = fmul fast float %1161, %1161
  %1164 = fmul fast float %1163, %1162
  %1165 = fsub fast float 1.500000e+00, %1164
  %1166 = fmul fast float %1161, %1082
  %1167 = fmul fast float %1166, %1165
  %1168 = bitcast float %1083 to i32
  %1169 = ashr i32 %1168, 1
  %1170 = sub nsw i32 1597463174, %1169
  %1171 = bitcast i32 %1170 to float
  %1172 = fmul fast float %1083, 5.000000e-01
  %1173 = fmul fast float %1171, %1171
  %1174 = fmul fast float %1173, %1172
  %1175 = fsub fast float 1.500000e+00, %1174
  %1176 = fmul fast float %1171, %1083
  %1177 = fmul fast float %1176, %1175
  %1178 = bitcast float %1084 to i32
  %1179 = ashr i32 %1178, 1
  %1180 = sub nsw i32 1597463174, %1179
  %1181 = bitcast i32 %1180 to float
  %1182 = fmul fast float %1084, 5.000000e-01
  %1183 = fmul fast float %1181, %1181
  %1184 = fmul fast float %1183, %1182
  %1185 = fsub fast float 1.500000e+00, %1184
  %1186 = fmul fast float %1181, %1084
  %1187 = fmul fast float %1186, %1185
  %1188 = fsub fast float %1167, %1149
  %1189 = fsub fast float %1177, %1153
  %1190 = fsub fast float %1187, %1157
  %1191 = fmul fast float %1188, %1117
  %1192 = fmul fast float %1189, %1119
  %1193 = fmul fast float %1190, %1124
  %1194 = fadd fast float %1191, %1132
  %1195 = fadd fast float %1192, %1136
  %1196 = fadd fast float %1193, %1140
  %1197 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  %1198 = call float @dx.op.unary.f32(i32 7, float %1195)  ; Saturate(value)
  %1199 = call float @dx.op.unary.f32(i32 7, float %1196)  ; Saturate(value)
  %1200 = fmul fast float %1197, %1197
  %1201 = fmul fast float %1198, %1198
  %1202 = fmul fast float %1199, %1199
  %1203 = fsub fast float %1200, %1082
  %1204 = fsub fast float %1201, %1083
  %1205 = fsub fast float %1202, %1084
  %1206 = fmul fast float %1203, %1107
  %1207 = fmul fast float %1204, %1107
  %1208 = fmul fast float %1205, %1107
  %1209 = fadd fast float %1206, %1082
  %1210 = fadd fast float %1207, %1083
  %1211 = fadd fast float %1208, %1084
  %1212 = fadd fast float %1129, %1093
  %1213 = fsub fast float %1212, %1146
  %1214 = call float @dx.op.unary.f32(i32 7, float %1213)  ; Saturate(value)
  %1215 = fsub fast float %1214, %1093
  %1216 = fmul fast float %1215, %1107
  %1217 = fadd fast float %1216, %1093
  br label %1271

; <label>:1218                                    ; preds = %1106
  %1219 = and i32 %1109, 134217728
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1255, label %1221

; <label>:1221                                    ; preds = %1218
  %1222 = call float @dx.op.unary.f32(i32 24, float %238)  ; Sqrt(value)
  %1223 = call float @dx.op.unary.f32(i32 24, float %242)  ; Sqrt(value)
  %1224 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %1225 = fadd fast float %1222, -5.000000e-01
  %1226 = fadd fast float %1223, -5.000000e-01
  %1227 = fadd fast float %1224, -5.000000e-01
  %1228 = fmul fast float %1225, %1107
  %1229 = fmul fast float %1226, %1107
  %1230 = fmul fast float %1227, %1107
  %1231 = fadd fast float %1228, 5.000000e-01
  %1232 = fadd fast float %1229, 5.000000e-01
  %1233 = fadd fast float %1230, 5.000000e-01
  %1234 = call float @dx.op.unary.f32(i32 24, float %1082)  ; Sqrt(value)
  %1235 = call float @dx.op.unary.f32(i32 24, float %1083)  ; Sqrt(value)
  %1236 = call float @dx.op.unary.f32(i32 24, float %1084)  ; Sqrt(value)
  %1237 = fmul fast float %1231, 2.000000e+00
  %1238 = fsub fast float 1.000000e+00, %1237
  %1239 = fmul fast float %1238, %1234
  %1240 = fadd fast float %1239, %1237
  %1241 = fmul fast float %1240, %1234
  %1242 = fmul fast float %1232, 2.000000e+00
  %1243 = fsub fast float 1.000000e+00, %1242
  %1244 = fmul fast float %1243, %1235
  %1245 = fadd fast float %1244, %1242
  %1246 = fmul fast float %1245, %1235
  %1247 = fmul fast float %1233, 2.000000e+00
  %1248 = fsub fast float 1.000000e+00, %1247
  %1249 = fmul fast float %1248, %1236
  %1250 = fadd fast float %1249, %1247
  %1251 = fmul fast float %1250, %1236
  %1252 = fmul fast float %1241, %1241
  %1253 = fmul fast float %1246, %1246
  %1254 = fmul fast float %1251, %1251
  br label %1271

; <label>:1255                                    ; preds = %1218
  %1256 = fmul fast float %238, %238
  %1257 = fmul fast float %242, %242
  %1258 = fmul fast float %246, %246
  %1259 = fadd fast float %1256, -1.000000e+00
  %1260 = fadd fast float %1257, -1.000000e+00
  %1261 = fadd fast float %1258, -1.000000e+00
  %1262 = fmul fast float %1107, %1259
  %1263 = fmul fast float %1107, %1260
  %1264 = fmul fast float %1107, %1261
  %1265 = fadd fast float %1262, 1.000000e+00
  %1266 = fadd fast float %1263, 1.000000e+00
  %1267 = fadd fast float %1264, 1.000000e+00
  %1268 = fmul fast float %1265, %1082
  %1269 = fmul fast float %1266, %1083
  %1270 = fmul fast float %1267, %1084
  br label %1271

; <label>:1271                                    ; preds = %1255, %1221, %1112, %1068
  %1272 = phi float [ %1217, %1112 ], [ %1093, %1221 ], [ %1093, %1255 ], [ 0x3FA23C0BE0000000, %1068 ]
  %1273 = phi float [ %1209, %1112 ], [ %1252, %1221 ], [ %1268, %1255 ], [ 1.000000e+00, %1068 ]
  %1274 = phi float [ %1210, %1112 ], [ %1253, %1221 ], [ %1269, %1255 ], [ 1.000000e+00, %1068 ]
  %1275 = phi float [ %1211, %1112 ], [ %1254, %1221 ], [ %1270, %1255 ], [ 1.000000e+00, %1068 ]
  %1276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1277 = extractvalue %dx.types.CBufRet.i32 %1276, 1
  %1278 = and i32 %1277, 1
  %1279 = icmp ne i32 %1278, 0
  %1280 = add i32 %44, 196
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 32
  %1284 = icmp ne i32 %1283, 0
  %1285 = and i1 %1279, %1284
  %1286 = select i1 %1285, float 1.000000e+00, float %1273
  %1287 = select i1 %1285, float 0x3FD3333340000000, float %1274
  %1288 = select i1 %1285, float 0x3FD3333340000000, float %1275
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = and i32 %1290, 32
  %1292 = icmp eq i32 %1291, 0
  br i1 %1292, label %1365, label %1293

; <label>:1293                                    ; preds = %1271
  %1294 = add i32 %44, 76
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = add i32 %44, 212
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = add i32 %1299, 0
  %1301 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1300, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1302 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1301, %dx.types.Handle %66, float %881, float %882, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1303 = extractvalue %dx.types.ResRet.f32 %1302, 0
  %1304 = extractvalue %dx.types.ResRet.f32 %1302, 1
  %1305 = extractvalue %dx.types.ResRet.f32 %1302, 2
  %1306 = extractvalue %dx.types.ResRet.f32 %1302, 3
  %1307 = and i32 %1296, 255
  %1308 = uitofp i32 %1307 to float
  %1309 = lshr i32 %1296, 8
  %1310 = and i32 %1309, 255
  %1311 = uitofp i32 %1310 to float
  %1312 = lshr i32 %1296, 16
  %1313 = and i32 %1312, 255
  %1314 = uitofp i32 %1313 to float
  %1315 = fmul fast float %1314, 0x3F70101000000000
  %1316 = fmul fast float %1303, %1308
  %1317 = fadd fast float %1316, %1311
  %1318 = fmul fast float %1317, 0x3F70101000000000
  %1319 = fadd fast float %1304, -5.000000e-01
  %1320 = fadd fast float %1306, -5.000000e-01
  %1321 = fmul fast float %1319, %1315
  %1322 = fmul fast float %1320, %1315
  %1323 = fadd fast float %1321, 5.000000e-01
  %1324 = fadd fast float %1322, 5.000000e-01
  %1325 = fmul fast float %1323, 2.000000e+00
  %1326 = fadd fast float %1325, -1.000000e+00
  %1327 = fmul fast float %1324, 2.000000e+00
  %1328 = fadd fast float %1327, -1.000000e+00
  %1329 = fadd fast float %1326, %1328
  %1330 = fmul fast float %1329, 5.000000e-01
  %1331 = fsub fast float %1326, %1328
  %1332 = fmul fast float %1331, 5.000000e-01
  %1333 = call float @dx.op.unary.f32(i32 6, float %1330)  ; FAbs(value)
  %1334 = fsub fast float 1.000000e+00, %1333
  %1335 = call float @dx.op.unary.f32(i32 6, float %1332)  ; FAbs(value)
  %1336 = fsub fast float %1334, %1335
  %1337 = call float @dx.op.dot3.f32(i32 55, float %1330, float %1332, float %1336, float %1330, float %1332, float %1336)  ; Dot3(ax,ay,az,bx,by,bz)
  %1338 = call float @dx.op.unary.f32(i32 25, float %1337)  ; Rsqrt(value)
  %1339 = fmul fast float %1330, %1338
  %1340 = fmul fast float %1332, %1338
  %1341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = and i32 %1342, 67108864
  %1344 = icmp eq i32 %1343, 0
  br i1 %1344, label %1361, label %1345

; <label>:1345                                    ; preds = %1293
  %1346 = add i32 %44, 168
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1346, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = and i32 %1348, 65535
  %1350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1349)  ; LegacyF16ToF32(value)
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = and i32 %1352, 65535
  %1354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1353)  ; LegacyF16ToF32(value)
  %1355 = lshr i32 %1348, 16
  %1356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1355)  ; LegacyF16ToF32(value)
  %1357 = fsub fast float %1318, %1356
  %1358 = fmul fast float %1357, %1350
  %1359 = fadd fast float %1358, %1354
  %1360 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  br label %1361

; <label>:1361                                    ; preds = %1345, %1293
  %1362 = phi float [ %1360, %1345 ], [ %1318, %1293 ]
  %1363 = call float @dx.op.dot2.f32(i32 54, float %1339, float %1340, float %45, float %46)  ; Dot2(ax,ay,bx,by)
  %1364 = call float @dx.op.dot2.f32(i32 54, float %1339, float %1340, float %47, float %48)  ; Dot2(ax,ay,bx,by)
  br label %1365

; <label>:1365                                    ; preds = %1361, %1271
  %1366 = phi float [ %1362, %1361 ], [ 0x3FD6666660000000, %1271 ]
  %1367 = phi float [ %1363, %1361 ], [ 0.000000e+00, %1271 ]
  %1368 = phi float [ %1364, %1361 ], [ 0.000000e+00, %1271 ]
  %1369 = phi float [ %1305, %1361 ], [ 1.000000e+00, %1271 ]
  %1370 = add i32 %44, 112
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = lshr i32 %1372, 22
  %1374 = shl nuw nsw i32 %1373, 5
  %1375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1374)  ; LegacyF16ToF32(value)
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = and i32 %1377, 64
  %1379 = icmp eq i32 %1378, 0
  br i1 %1379, label %1413, label %1380

; <label>:1380                                    ; preds = %1365
  %1381 = add i32 %44, 220
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = add i32 %1383, 0
  %1385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1384, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = and i32 %1387, 131072
  %1389 = icmp eq i32 %1388, 0
  %1390 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1385, %dx.types.Handle %66, float %881, float %882, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1391 = extractvalue %dx.types.ResRet.f32 %1390, 0
  %1392 = extractvalue %dx.types.ResRet.f32 %1390, 1
  %1393 = extractvalue %dx.types.ResRet.f32 %1390, 2
  %1394 = fmul fast float %1391, %226
  %1395 = fmul fast float %1392, %229
  %1396 = fmul fast float %1393, %232
  br i1 %1389, label %1403, label %1397

; <label>:1397                                    ; preds = %1380
  %1398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.f32 %1398, 0
  %1400 = fmul fast float %1399, %1394
  %1401 = fmul fast float %1399, %1395
  %1402 = fmul fast float %1399, %1396
  br label %1403

; <label>:1403                                    ; preds = %1397, %1380
  %1404 = phi float [ %1400, %1397 ], [ %1394, %1380 ]
  %1405 = phi float [ %1401, %1397 ], [ %1395, %1380 ]
  %1406 = phi float [ %1402, %1397 ], [ %1396, %1380 ]
  %1407 = fmul fast float %1404, %1375
  %1408 = select i1 %188, float %1407, float %1404
  %1409 = call float @dx.op.dot3.f32(i32 55, float %1408, float %1405, float %1406, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1410 = select i1 %188, float 0.000000e+00, float %1404
  %1411 = select i1 %188, float %1409, float %1405
  %1412 = select i1 %188, float 0.000000e+00, float %1406
  br label %1413

; <label>:1413                                    ; preds = %1403, %1365
  %1414 = phi float [ %1410, %1403 ], [ 0.000000e+00, %1365 ]
  %1415 = phi float [ %1411, %1403 ], [ 0.000000e+00, %1365 ]
  %1416 = phi float [ %1412, %1403 ], [ 0.000000e+00, %1365 ]
  %1417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1418 = extractvalue %dx.types.ResRet.i32 %1417, 0
  %1419 = and i32 %1418, 26624
  %1420 = icmp eq i32 %1419, 0
  br i1 %1420, label %1444, label %1421

; <label>:1421                                    ; preds = %1413
  %1422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1423 = extractvalue %dx.types.ResRet.i32 %1422, 0
  %1424 = and i32 %1423, 16384
  %1425 = icmp eq i32 %1424, 0
  br i1 %1425, label %1444, label %1426

; <label>:1426                                    ; preds = %1421
  %1427 = and i32 %1423, 1048576
  %1428 = icmp ne i32 %1427, 0
  %1429 = add i32 %44, 252
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1429, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = add i32 %1431, 0
  %1433 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1432, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1434 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1433, %dx.types.Handle %67, float %881, float %882, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1435 = extractvalue %dx.types.ResRet.f32 %1434, 0
  %1436 = add i32 %44, 80
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1436, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = lshr i32 %1438, 24
  %1440 = uitofp i32 %1439 to float
  %1441 = fmul fast float %1435, 0x3F70101020000000
  %1442 = select i1 %1428, float 0x3F70101020000000, float %1441
  %1443 = fmul fast float %1442, %1440
  br label %1444

; <label>:1444                                    ; preds = %1426, %1421, %1413
  %1445 = phi float [ %1443, %1426 ], [ 0.000000e+00, %1421 ], [ 0.000000e+00, %1413 ]
  %1446 = add i32 %44, 80
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1446, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = and i32 %1448, 255
  %1450 = uitofp i32 %1449 to float
  %1451 = lshr i32 %1448, 8
  %1452 = and i32 %1451, 255
  %1453 = uitofp i32 %1452 to float
  %1454 = call float @dx.op.dot3.f32(i32 55, float %1286, float %1287, float %1288, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1455 = fmul fast float %1453, %1454
  %1456 = fadd fast float %1455, %1450
  %1457 = fmul fast float %1456, 0x3F70101020000000
  %1458 = call float @dx.op.unary.f32(i32 7, float %1457)  ; Saturate(value)
  br i1 %781, label %1459, label %1467

; <label>:1459                                    ; preds = %1444
  %1460 = fsub fast float 1.000000e+00, %1066
  %1461 = fmul fast float %1460, %772
  %1462 = fmul fast float %1460, %773
  %1463 = fmul fast float %1460, %774
  %1464 = fmul fast float %1460, %769
  %1465 = fmul fast float %1460, %770
  %1466 = fmul fast float %1460, %771
  br label %1467

; <label>:1467                                    ; preds = %1459, %1444
  %1468 = phi float [ %1464, %1459 ], [ %769, %1444 ]
  %1469 = phi float [ %1465, %1459 ], [ %770, %1444 ]
  %1470 = phi float [ %1466, %1459 ], [ %771, %1444 ]
  %1471 = phi float [ %1461, %1459 ], [ %772, %1444 ]
  %1472 = phi float [ %1462, %1459 ], [ %773, %1444 ]
  %1473 = phi float [ %1463, %1459 ], [ %774, %1444 ]
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = and i32 %1475, 3
  %1477 = icmp eq i32 %1476, 3
  br i1 %1477, label %1556, label %1478

; <label>:1478                                    ; preds = %1467
  %1479 = and i32 %1475, 16
  %1480 = icmp ne i32 %1479, 0
  %1481 = select i1 %1480, float %1066, float 0.000000e+00
  %1482 = icmp eq i32 %1476, 0
  br i1 %1482, label %1483, label %1511

; <label>:1483                                    ; preds = %1478
  %1484 = and i32 %1475, 64
  %1485 = icmp ne i32 %1484, 0
  %1486 = select i1 %1485, float %1066, float 0.000000e+00
  %1487 = fsub fast float %1286, %1471
  %1488 = fsub fast float %1287, %1472
  %1489 = fsub fast float %1288, %1473
  %1490 = fmul fast float %1481, %1487
  %1491 = fmul fast float %1481, %1488
  %1492 = fmul fast float %1481, %1489
  %1493 = fadd fast float %1490, %1471
  %1494 = fadd fast float %1491, %1472
  %1495 = fadd fast float %1492, %1473
  %1496 = fsub fast float %1272, %775
  %1497 = fmul fast float %1481, %1496
  %1498 = fadd fast float %1497, %775
  %1499 = fsub fast float %1414, %1468
  %1500 = fsub fast float %1415, %1469
  %1501 = fsub fast float %1416, %1470
  %1502 = fmul fast float %1486, %1499
  %1503 = fmul fast float %1486, %1500
  %1504 = fmul fast float %1486, %1501
  %1505 = fadd fast float %1502, %1468
  %1506 = fadd fast float %1503, %1469
  %1507 = fadd fast float %1504, %1470
  %1508 = fsub fast float %1458, %780
  %1509 = fmul fast float %1481, %1508
  %1510 = fadd fast float %1509, %780
  br label %1556

; <label>:1511                                    ; preds = %1478
  %1512 = icmp eq i32 %1476, 1
  br i1 %1512, label %1513, label %1526

; <label>:1513                                    ; preds = %1511
  %1514 = fadd fast float %1286, -1.000000e+00
  %1515 = fadd fast float %1287, -1.000000e+00
  %1516 = fadd fast float %1288, -1.000000e+00
  %1517 = fmul fast float %1481, %1514
  %1518 = fmul fast float %1481, %1515
  %1519 = fmul fast float %1481, %1516
  %1520 = fadd fast float %1517, 1.000000e+00
  %1521 = fadd fast float %1518, 1.000000e+00
  %1522 = fadd fast float %1519, 1.000000e+00
  %1523 = fmul fast float %1520, %1471
  %1524 = fmul fast float %1521, %1472
  %1525 = fmul fast float %1522, %1473
  br label %1556

; <label>:1526                                    ; preds = %1511
  %1527 = icmp eq i32 %1476, 2
  br i1 %1527, label %1528, label %1556

; <label>:1528                                    ; preds = %1526
  %1529 = call float @dx.op.unary.f32(i32 24, float %1286)  ; Sqrt(value)
  %1530 = call float @dx.op.unary.f32(i32 24, float %1287)  ; Sqrt(value)
  %1531 = call float @dx.op.unary.f32(i32 24, float %1288)  ; Sqrt(value)
  %1532 = fadd fast float %1529, -5.000000e-01
  %1533 = fadd fast float %1530, -5.000000e-01
  %1534 = fadd fast float %1531, -5.000000e-01
  %1535 = fmul fast float %1532, %1481
  %1536 = fmul fast float %1533, %1481
  %1537 = fmul fast float %1534, %1481
  %1538 = fadd fast float %1535, 5.000000e-01
  %1539 = fadd fast float %1536, 5.000000e-01
  %1540 = fadd fast float %1537, 5.000000e-01
  %1541 = fmul fast float %1538, 2.000000e+00
  %1542 = fsub fast float 1.000000e+00, %1541
  %1543 = fmul fast float %1542, %1471
  %1544 = fadd fast float %1543, %1541
  %1545 = fmul fast float %1544, %1471
  %1546 = fmul fast float %1539, 2.000000e+00
  %1547 = fsub fast float 1.000000e+00, %1546
  %1548 = fmul fast float %1547, %1472
  %1549 = fadd fast float %1548, %1546
  %1550 = fmul fast float %1549, %1472
  %1551 = fmul fast float %1540, 2.000000e+00
  %1552 = fsub fast float 1.000000e+00, %1551
  %1553 = fmul fast float %1552, %1473
  %1554 = fadd fast float %1553, %1551
  %1555 = fmul fast float %1554, %1473
  br label %1556

; <label>:1556                                    ; preds = %1528, %1526, %1513, %1483, %1467
  %1557 = phi float [ %1468, %1467 ], [ %1468, %1528 ], [ %1468, %1526 ], [ %1468, %1513 ], [ %1505, %1483 ]
  %1558 = phi float [ %1469, %1467 ], [ %1469, %1528 ], [ %1469, %1526 ], [ %1469, %1513 ], [ %1506, %1483 ]
  %1559 = phi float [ %1470, %1467 ], [ %1470, %1528 ], [ %1470, %1526 ], [ %1470, %1513 ], [ %1507, %1483 ]
  %1560 = phi float [ %1471, %1467 ], [ %1545, %1528 ], [ %1471, %1526 ], [ %1523, %1513 ], [ %1493, %1483 ]
  %1561 = phi float [ %1472, %1467 ], [ %1550, %1528 ], [ %1472, %1526 ], [ %1524, %1513 ], [ %1494, %1483 ]
  %1562 = phi float [ %1473, %1467 ], [ %1555, %1528 ], [ %1473, %1526 ], [ %1525, %1513 ], [ %1495, %1483 ]
  %1563 = phi float [ %775, %1467 ], [ %775, %1528 ], [ %775, %1526 ], [ %775, %1513 ], [ %1498, %1483 ]
  %1564 = phi float [ %780, %1467 ], [ %780, %1528 ], [ %780, %1526 ], [ %780, %1513 ], [ %1510, %1483 ]
  %1565 = and i32 %1475, 12
  %1566 = icmp eq i32 %1565, 12
  br i1 %1566, label %1649, label %1567

; <label>:1567                                    ; preds = %1556
  %1568 = and i32 %1475, 2097184
  %1569 = icmp eq i32 %1568, 2097184
  %1570 = select i1 %1569, float %1066, float 0.000000e+00
  %1571 = and i32 %1475, 4194336
  %1572 = icmp eq i32 %1571, 4194336
  %1573 = select i1 %1572, float %1066, float 0.000000e+00
  %1574 = and i32 %1475, 8388640
  %1575 = icmp eq i32 %1574, 8388640
  %1576 = select i1 %1575, float %1066, float 0.000000e+00
  %1577 = and i32 %1475, 16384
  %1578 = icmp ne i32 %1577, 0
  %1579 = select i1 %1578, float %1066, float 0.000000e+00
  %1580 = icmp eq i32 %1565, 0
  br i1 %1580, label %1581, label %1597

; <label>:1581                                    ; preds = %1567
  %1582 = fsub fast float %1367, %767
  %1583 = fsub fast float %1368, %768
  %1584 = fmul fast float %1570, %1582
  %1585 = fmul fast float %1570, %1583
  %1586 = fadd fast float %1584, %767
  %1587 = fadd fast float %1585, %768
  %1588 = fsub fast float %1369, %778
  %1589 = fmul fast float %1573, %1588
  %1590 = fadd fast float %1589, %778
  %1591 = fsub fast float %1366, %777
  %1592 = fmul fast float %1576, %1591
  %1593 = fadd fast float %1592, %777
  %1594 = fsub fast float %1445, %779
  %1595 = fmul fast float %1579, %1594
  %1596 = fadd fast float %1595, %779
  br label %1649

; <label>:1597                                    ; preds = %1567
  %1598 = icmp eq i32 %1565, 4
  br i1 %1598, label %1599, label %1633

; <label>:1599                                    ; preds = %1597
  %1600 = fmul fast float %1570, %1367
  %1601 = fmul fast float %1570, %1368
  %1602 = fadd fast float %1600, %767
  %1603 = fadd fast float %1601, %768
  %1604 = call float @dx.op.binary.f32(i32 36, float %778, float %1369)  ; FMin(a,b)
  %1605 = fsub fast float %1604, %778
  %1606 = fmul fast float %1605, %1573
  %1607 = fadd fast float %1606, %778
  %1608 = fadd fast float %1366, %777
  %1609 = fmul fast float %1608, 0x3FF337FAE0000000
  %1610 = fmul fast float %777, %777
  %1611 = fmul fast float %1366, %1366
  %1612 = fadd fast float %1611, %1610
  %1613 = fmul fast float %1612, 0x3FE5152B00000000
  %1614 = fmul fast float %777, 0xBFCC1F85E0000000
  %1615 = fmul fast float %1614, %1366
  %1616 = fadd fast float %1615, 0xBFE1363700000000
  %1617 = fadd fast float %1616, %1609
  %1618 = fsub fast float %1617, %1613
  %1619 = fmul fast float %1608, 0x3FBA6F0D00000000
  %1620 = fmul fast float %1612, 0x3FD0432880000000
  %1621 = fmul fast float %777, 0xBFEF110800000000
  %1622 = fmul fast float %1621, %1366
  %1623 = fadd fast float %1622, 1.000000e+00
  %1624 = fsub fast float %1623, %1619
  %1625 = fadd fast float %1624, %1620
  %1626 = fdiv fast float %1618, %1625
  %1627 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  %1628 = fsub fast float %1627, %777
  %1629 = fmul fast float %1628, %1576
  %1630 = fadd fast float %1629, %777
  %1631 = fmul fast float %1579, %1445
  %1632 = fadd fast float %1631, %779
  br label %1649

; <label>:1633                                    ; preds = %1597
  %1634 = icmp eq i32 %1565, 8
  br i1 %1634, label %1635, label %1649

; <label>:1635                                    ; preds = %1633
  %1636 = fmul fast float %1570, %1367
  %1637 = fmul fast float %1570, %1368
  %1638 = fadd fast float %1636, %767
  %1639 = fadd fast float %1637, %768
  %1640 = call float @dx.op.binary.f32(i32 36, float %778, float %1369)  ; FMin(a,b)
  %1641 = fsub fast float %1640, %778
  %1642 = fmul fast float %1641, %1573
  %1643 = fadd fast float %1642, %778
  %1644 = fsub fast float %1366, %777
  %1645 = fmul fast float %1576, %1644
  %1646 = fadd fast float %1645, %777
  %1647 = fmul fast float %1579, %1445
  %1648 = fadd fast float %1647, %779
  br label %1649

; <label>:1649                                    ; preds = %1635, %1633, %1599, %1581, %1556, %1065, %766
  %1650 = phi float [ %767, %1556 ], [ %767, %1065 ], [ %767, %766 ], [ %1586, %1581 ], [ %1602, %1599 ], [ %767, %1633 ], [ %1638, %1635 ]
  %1651 = phi float [ %768, %1556 ], [ %768, %1065 ], [ %768, %766 ], [ %1587, %1581 ], [ %1603, %1599 ], [ %768, %1633 ], [ %1639, %1635 ]
  %1652 = phi float [ %1557, %1556 ], [ %769, %1065 ], [ %769, %766 ], [ %1557, %1581 ], [ %1557, %1599 ], [ %1557, %1633 ], [ %1557, %1635 ]
  %1653 = phi float [ %1558, %1556 ], [ %770, %1065 ], [ %770, %766 ], [ %1558, %1581 ], [ %1558, %1599 ], [ %1558, %1633 ], [ %1558, %1635 ]
  %1654 = phi float [ %1559, %1556 ], [ %771, %1065 ], [ %771, %766 ], [ %1559, %1581 ], [ %1559, %1599 ], [ %1559, %1633 ], [ %1559, %1635 ]
  %1655 = phi float [ %1560, %1556 ], [ %772, %1065 ], [ %772, %766 ], [ %1560, %1581 ], [ %1560, %1599 ], [ %1560, %1633 ], [ %1560, %1635 ]
  %1656 = phi float [ %1561, %1556 ], [ %773, %1065 ], [ %773, %766 ], [ %1561, %1581 ], [ %1561, %1599 ], [ %1561, %1633 ], [ %1561, %1635 ]
  %1657 = phi float [ %1562, %1556 ], [ %774, %1065 ], [ %774, %766 ], [ %1562, %1581 ], [ %1562, %1599 ], [ %1562, %1633 ], [ %1562, %1635 ]
  %1658 = phi float [ %1563, %1556 ], [ %775, %1065 ], [ %775, %766 ], [ %1563, %1581 ], [ %1563, %1599 ], [ %1563, %1633 ], [ %1563, %1635 ]
  %1659 = phi float [ %777, %1556 ], [ %777, %1065 ], [ %777, %766 ], [ %1593, %1581 ], [ %1630, %1599 ], [ %777, %1633 ], [ %1646, %1635 ]
  %1660 = phi float [ %778, %1556 ], [ %778, %1065 ], [ %778, %766 ], [ %1590, %1581 ], [ %1607, %1599 ], [ %778, %1633 ], [ %1643, %1635 ]
  %1661 = phi float [ %779, %1556 ], [ %779, %1065 ], [ %779, %766 ], [ %1596, %1581 ], [ %1632, %1599 ], [ %779, %1633 ], [ %1648, %1635 ]
  %1662 = phi float [ %1564, %1556 ], [ %780, %1065 ], [ %780, %766 ], [ %1564, %1581 ], [ %1564, %1599 ], [ %1564, %1633 ], [ %1564, %1635 ]
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 0
  %1665 = call float @dx.op.dot2.f32(i32 54, float %1650, float %1651, float %1650, float %1651)  ; Dot2(ax,ay,bx,by)
  %1666 = fmul fast float %1665, 0x3FE3333340000000
  %1667 = fsub fast float 1.000000e+00, %1666
  %1668 = call float @dx.op.dot3.f32(i32 55, float %1650, float %1651, float %1667, float %1650, float %1651, float %1667)  ; Dot3(ax,ay,az,bx,by,bz)
  %1669 = call float @dx.op.unary.f32(i32 25, float %1668)  ; Rsqrt(value)
  %1670 = fmul fast float %1669, %1650
  %1671 = fmul fast float %1669, %1651
  %1672 = fmul fast float %1667, %1669
  %1673 = fmul fast float %1672, %53
  %1674 = fmul fast float %1672, %54
  %1675 = fmul fast float %1672, %55
  %1676 = fmul fast float %1670, %49
  %1677 = fmul fast float %1670, %50
  %1678 = fmul fast float %1670, %51
  %1679 = fadd fast float %1673, %1676
  %1680 = fadd fast float %1674, %1677
  %1681 = fadd fast float %1675, %1678
  %1682 = fmul fast float %1671, %81
  %1683 = fmul fast float %1671, %82
  %1684 = fmul fast float %1671, %83
  %1685 = fadd fast float %1679, %1682
  %1686 = fadd fast float %1680, %1683
  %1687 = fadd fast float %1681, %1684
  %1688 = call float @dx.op.dot3.f32(i32 55, float %1685, float %1686, float %1687, float %1685, float %1686, float %1687)  ; Dot3(ax,ay,az,bx,by,bz)
  %1689 = call float @dx.op.unary.f32(i32 25, float %1688)  ; Rsqrt(value)
  %1690 = fmul fast float %1685, %1689
  %1691 = fmul fast float %1686, %1689
  %1692 = fmul fast float %1687, %1689
  %1693 = call float @dx.op.unary.f32(i32 83, float %117)  ; DerivCoarseX(value)
  %1694 = call float @dx.op.unary.f32(i32 83, float %118)  ; DerivCoarseX(value)
  %1695 = call float @dx.op.unary.f32(i32 83, float %119)  ; DerivCoarseX(value)
  %1696 = call float @dx.op.unary.f32(i32 84, float %117)  ; DerivCoarseY(value)
  %1697 = call float @dx.op.unary.f32(i32 84, float %118)  ; DerivCoarseY(value)
  %1698 = call float @dx.op.unary.f32(i32 84, float %119)  ; DerivCoarseY(value)
  %1699 = fadd fast float %1693, %117
  %1700 = fadd fast float %1694, %118
  %1701 = fadd fast float %1695, %119
  %1702 = fadd fast float %1696, %117
  %1703 = fadd fast float %1697, %118
  %1704 = fadd fast float %1698, %119
  %1705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1706 = extractvalue %dx.types.CBufRet.f32 %1705, 0
  %1707 = extractvalue %dx.types.CBufRet.f32 %1705, 1
  %1708 = extractvalue %dx.types.CBufRet.f32 %1705, 2
  %1709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.f32 %1709, 2
  %1711 = extractvalue %dx.types.CBufRet.f32 %1709, 3
  %1712 = fmul fast float %1706, %70
  %1713 = fmul fast float %1712, %1710
  %1714 = fmul fast float %1707, %71
  %1715 = fmul fast float %1714, %1711
  %1716 = fptoui float %1713 to i32
  %1717 = fptoui float %1715 to i32
  %1718 = fadd fast float %1706, -1.000000e+00
  %1719 = fadd fast float %1707, -1.000000e+00
  %1720 = fptoui float %1718 to i32
  %1721 = fptoui float %1719 to i32
  %1722 = call i32 @dx.op.binary.i32(i32 40, i32 %1716, i32 %1720)  ; UMin(a,b)
  %1723 = call i32 @dx.op.binary.i32(i32 40, i32 %1717, i32 %1721)  ; UMin(a,b)
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 2
  %1726 = extractvalue %dx.types.CBufRet.f32 %1724, 3
  %1727 = fmul fast float %1725, %65
  %1728 = fsub fast float %1727, %1726
  %1729 = fadd fast float %1708, -1.000000e+00
  %1730 = call float @dx.op.binary.f32(i32 36, float %1728, float %1729)  ; FMin(a,b)
  %1731 = fptoui float %1730 to i32
  %1732 = fptoui float %1706 to i32
  %1733 = fptoui float %1707 to i32
  %1734 = mul i32 %1731, %1733
  %1735 = add i32 %1734, %1723
  %1736 = mul i32 %1735, %1732
  %1737 = add i32 %1736, %1722
  %1738 = shl i32 %1737, 2
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = and i32 %1740, 1023
  %1742 = lshr i32 %1740, 10
  %1743 = icmp eq i32 %1741, 0
  br i1 %1743, label %2169, label %1744

; <label>:1744                                    ; preds = %1649
  %1745 = and i32 %1740, 1023
  br label %1746

; <label>:1746                                    ; preds = %1872, %1744
  %1747 = phi float [ %1873, %1872 ], [ 0.000000e+00, %1744 ]
  %1748 = phi float [ %1874, %1872 ], [ %1664, %1744 ]
  %1749 = phi float [ %1875, %1872 ], [ %1662, %1744 ]
  %1750 = phi float [ %1876, %1872 ], [ %1661, %1744 ]
  %1751 = phi float [ %1877, %1872 ], [ 0.000000e+00, %1744 ]
  %1752 = phi float [ %1878, %1872 ], [ %1652, %1744 ]
  %1753 = phi float [ %1879, %1872 ], [ %1653, %1744 ]
  %1754 = phi float [ %1880, %1872 ], [ %1654, %1744 ]
  %1755 = phi float [ %1881, %1872 ], [ %1690, %1744 ]
  %1756 = phi float [ %1882, %1872 ], [ %1691, %1744 ]
  %1757 = phi float [ %1883, %1872 ], [ %1692, %1744 ]
  %1758 = phi float [ %1884, %1872 ], [ %1660, %1744 ]
  %1759 = phi float [ %1885, %1872 ], [ %1659, %1744 ]
  %1760 = phi float [ %1886, %1872 ], [ 0.000000e+00, %1744 ]
  %1761 = phi float [ %1887, %1872 ], [ %1658, %1744 ]
  %1762 = phi float [ %1888, %1872 ], [ %1655, %1744 ]
  %1763 = phi float [ %1889, %1872 ], [ %1656, %1744 ]
  %1764 = phi float [ %1890, %1872 ], [ %1657, %1744 ]
  %1765 = phi i32 [ %1822, %1872 ], [ 0, %1744 ]
  %1766 = add nuw nsw i32 %1765, %1742
  %1767 = shl i32 %1766, 2
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = shl i32 %1769, 8
  %1771 = or i32 %1770, 48
  %1772 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1773 = extractvalue %dx.types.ResRet.f32 %1772, 0
  %1774 = extractvalue %dx.types.ResRet.f32 %1772, 1
  %1775 = extractvalue %dx.types.ResRet.f32 %1772, 2
  %1776 = extractvalue %dx.types.ResRet.f32 %1772, 3
  %1777 = or i32 %1770, 64
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = extractvalue %dx.types.ResRet.i32 %1778, 1
  %1781 = or i32 %1770, 80
  %1782 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.f32 %1782, 2
  %1784 = extractvalue %dx.types.ResRet.f32 %1782, 3
  %1785 = or i32 %1770, 96
  %1786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.f32 %1786, 0
  %1788 = extractvalue %dx.types.ResRet.f32 %1786, 1
  %1789 = extractvalue %dx.types.ResRet.f32 %1786, 2
  %1790 = extractvalue %dx.types.ResRet.f32 %1786, 3
  %1791 = or i32 %1770, 112
  %1792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1791, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.f32 %1792, 2
  %1794 = or i32 %1770, 128
  %1795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %1796 = extractvalue %dx.types.ResRet.f32 %1795, 0
  %1797 = extractvalue %dx.types.ResRet.f32 %1795, 1
  %1798 = extractvalue %dx.types.ResRet.f32 %1795, 2
  %1799 = extractvalue %dx.types.ResRet.f32 %1795, 3
  %1800 = or i32 %1770, 144
  %1801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1802 = extractvalue %dx.types.ResRet.f32 %1801, 0
  %1803 = extractvalue %dx.types.ResRet.f32 %1801, 1
  %1804 = extractvalue %dx.types.ResRet.f32 %1801, 2
  %1805 = extractvalue %dx.types.ResRet.f32 %1801, 3
  %1806 = or i32 %1770, 160
  %1807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %1808 = extractvalue %dx.types.ResRet.f32 %1807, 0
  %1809 = extractvalue %dx.types.ResRet.f32 %1807, 1
  %1810 = extractvalue %dx.types.ResRet.f32 %1807, 2
  %1811 = extractvalue %dx.types.ResRet.f32 %1807, 3
  %1812 = or i32 %1770, 192
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1812, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = or i32 %1770, 208
  %1816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.f32 %1816, 0
  %1818 = or i32 %1770, 248
  %1819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.f32 %1819, 0
  %1821 = extractvalue %dx.types.ResRet.f32 %1819, 1
  %1822 = add nuw nsw i32 %1765, 1
  %1823 = bitcast float %1776 to i32
  %1824 = and i32 %1823, 2560
  %1825 = icmp eq i32 %1824, 0
  %1826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.f32 %1826, 0
  %1828 = extractvalue %dx.types.ResRet.f32 %1826, 1
  %1829 = extractvalue %dx.types.ResRet.f32 %1826, 2
  %1830 = extractvalue %dx.types.ResRet.f32 %1826, 3
  %1831 = call float @dx.op.dot4.f32(i32 56, float %1827, float %1828, float %1829, float %1830, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1832 = or i32 %1770, 16
  %1833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.f32 %1833, 0
  %1835 = extractvalue %dx.types.ResRet.f32 %1833, 1
  %1836 = extractvalue %dx.types.ResRet.f32 %1833, 2
  %1837 = extractvalue %dx.types.ResRet.f32 %1833, 3
  %1838 = call float @dx.op.dot4.f32(i32 56, float %1834, float %1835, float %1836, float %1837, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1839 = or i32 %1770, 32
  %1840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.f32 %1840, 0
  %1842 = extractvalue %dx.types.ResRet.f32 %1840, 1
  %1843 = extractvalue %dx.types.ResRet.f32 %1840, 2
  %1844 = extractvalue %dx.types.ResRet.f32 %1840, 3
  %1845 = call float @dx.op.dot4.f32(i32 56, float %1841, float %1842, float %1843, float %1844, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1846 = call float @dx.op.unary.f32(i32 27, float %1831)  ; Round_ni(value)
  %1847 = call float @dx.op.unary.f32(i32 6, float %1846)  ; FAbs(value)
  %1848 = call float @dx.op.unary.f32(i32 27, float %1838)  ; Round_ni(value)
  %1849 = call float @dx.op.unary.f32(i32 6, float %1848)  ; FAbs(value)
  %1850 = call float @dx.op.unary.f32(i32 6, float %1845)  ; FAbs(value)
  %1851 = call float @dx.op.unary.f32(i32 27, float %1850)  ; Round_ni(value)
  %1852 = fadd fast float %1849, %1847
  %1853 = fadd fast float %1852, %1851
  %1854 = fcmp fast oeq float %1853, 0.000000e+00
  %1855 = call float @dx.op.dot4.f32(i32 56, float %1827, float %1828, float %1829, float %1830, float %1699, float %1700, float %1701, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1856 = call float @dx.op.dot4.f32(i32 56, float %1834, float %1835, float %1836, float %1837, float %1699, float %1700, float %1701, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1857 = call float @dx.op.dot4.f32(i32 56, float %1827, float %1828, float %1829, float %1830, float %1702, float %1703, float %1704, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1858 = call float @dx.op.dot4.f32(i32 56, float %1834, float %1835, float %1836, float %1837, float %1702, float %1703, float %1704, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1859 = fsub fast float %1855, %1831
  %1860 = fsub fast float %1857, %1831
  %1861 = fsub fast float %1856, %1838
  %1862 = fsub fast float %1858, %1838
  %1863 = call float @dx.op.dot3.f32(i32 55, float %1773, float %1774, float %1775, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %1864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.f32 %1864, 2
  %1866 = fadd fast float %1865, %1863
  %1867 = call float @dx.op.unary.f32(i32 7, float %1866)  ; Saturate(value)
  %1868 = extractvalue %dx.types.CBufRet.f32 %1864, 0
  %1869 = fcmp fast ogt float %1867, %1868
  %1870 = and i1 %1854, %1869
  %1871 = and i1 %1825, %1870
  br i1 %1871, label %1892, label %1872

; <label>:1872                                    ; preds = %2155, %1973, %1892, %1746
  %1873 = phi float [ %1747, %1892 ], [ %1976, %1973 ], [ %1976, %2155 ], [ %1747, %1746 ]
  %1874 = phi float [ %1748, %1892 ], [ %1748, %1973 ], [ %2130, %2155 ], [ %1748, %1746 ]
  %1875 = phi float [ %1749, %1892 ], [ %1749, %1973 ], [ %2128, %2155 ], [ %1749, %1746 ]
  %1876 = phi float [ %1750, %1892 ], [ %1750, %1973 ], [ %2100, %2155 ], [ %1750, %1746 ]
  %1877 = phi float [ %1751, %1892 ], [ %1751, %1973 ], [ %2098, %2155 ], [ %1751, %1746 ]
  %1878 = phi float [ %1752, %1892 ], [ %1752, %1973 ], [ %2165, %2155 ], [ %1752, %1746 ]
  %1879 = phi float [ %1753, %1892 ], [ %1753, %1973 ], [ %2166, %2155 ], [ %1753, %1746 ]
  %1880 = phi float [ %1754, %1892 ], [ %1754, %1973 ], [ %2167, %2155 ], [ %1754, %1746 ]
  %1881 = phi float [ %1755, %1892 ], [ %1755, %1973 ], [ %2079, %2155 ], [ %1755, %1746 ]
  %1882 = phi float [ %1756, %1892 ], [ %1756, %1973 ], [ %2080, %2155 ], [ %1756, %1746 ]
  %1883 = phi float [ %1757, %1892 ], [ %1757, %1973 ], [ %2081, %2155 ], [ %1757, %1746 ]
  %1884 = phi float [ %1758, %1892 ], [ %1758, %1973 ], [ %2108, %2155 ], [ %1758, %1746 ]
  %1885 = phi float [ %1759, %1892 ], [ %1759, %1973 ], [ %2105, %2155 ], [ %1759, %1746 ]
  %1886 = phi float [ %1760, %1892 ], [ %1760, %1973 ], [ %2102, %2155 ], [ %1760, %1746 ]
  %1887 = phi float [ %1761, %1892 ], [ %1761, %1973 ], [ %2096, %2155 ], [ %1761, %1746 ]
  %1888 = phi float [ %1762, %1892 ], [ %1762, %1973 ], [ %2091, %2155 ], [ %1762, %1746 ]
  %1889 = phi float [ %1763, %1892 ], [ %1763, %1973 ], [ %2092, %2155 ], [ %1763, %1746 ]
  %1890 = phi float [ %1764, %1892 ], [ %1764, %1973 ], [ %2093, %2155 ], [ %1764, %1746 ]
  %1891 = icmp eq i32 %1822, %1745
  br i1 %1891, label %2168, label %1746

; <label>:1892                                    ; preds = %1746
  %1893 = extractvalue %dx.types.ResRet.f32 %1792, 3
  %1894 = extractvalue %dx.types.ResRet.f32 %1792, 1
  %1895 = extractvalue %dx.types.ResRet.f32 %1792, 0
  %1896 = extractvalue %dx.types.ResRet.f32 %1782, 1
  %1897 = extractvalue %dx.types.ResRet.f32 %1782, 0
  %1898 = extractvalue %dx.types.ResRet.i32 %1778, 3
  %1899 = extractvalue %dx.types.ResRet.i32 %1778, 2
  %1900 = add i32 %1898, 0
  %1901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1900, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1902 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1903 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1901, %dx.types.Handle %1902, float %1831, float %1838, float undef, float undef, i32 0, i32 0, i32 undef, float %1859, float %1861, float undef, float %1860, float %1862, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1904 = extractvalue %dx.types.ResRet.f32 %1903, 0
  %1905 = fmul fast float %1904, %1897
  %1906 = fadd fast float %1905, %1896
  %1907 = call float @dx.op.unary.f32(i32 7, float %1906)  ; Saturate(value)
  %1908 = fmul fast float %1831, %1787
  %1909 = call float @dx.op.tertiary.f32(i32 46, float %1788, float %1838, float %1908)  ; FMad(a,b,c)
  %1910 = fadd fast float %1909, %1895
  %1911 = fmul fast float %1831, %1789
  %1912 = call float @dx.op.tertiary.f32(i32 46, float %1790, float %1838, float %1911)  ; FMad(a,b,c)
  %1913 = fadd fast float %1912, %1894
  %1914 = fmul fast float %1859, %1787
  %1915 = call float @dx.op.tertiary.f32(i32 46, float %1788, float %1861, float %1914)  ; FMad(a,b,c)
  %1916 = fmul fast float %1859, %1789
  %1917 = call float @dx.op.tertiary.f32(i32 46, float %1790, float %1861, float %1916)  ; FMad(a,b,c)
  %1918 = fmul fast float %1860, %1787
  %1919 = call float @dx.op.tertiary.f32(i32 46, float %1788, float %1862, float %1918)  ; FMad(a,b,c)
  %1920 = fmul fast float %1860, %1789
  %1921 = call float @dx.op.tertiary.f32(i32 46, float %1790, float %1862, float %1920)  ; FMad(a,b,c)
  %1922 = add i32 %1899, 0
  %1923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1922, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1924 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1923, %dx.types.Handle %1902, float %1910, float %1913, float undef, float undef, i32 0, i32 0, i32 undef, float %1915, float %1917, float undef, float %1919, float %1921, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1925 = extractvalue %dx.types.ResRet.f32 %1924, 0
  %1926 = and i32 %1823, 1024
  %1927 = icmp ne i32 %1926, 0
  %1928 = fcmp fast ogt float %1925, 0x3FE0101020000000
  %1929 = uitofp i1 %1928 to float
  %1930 = select i1 %1927, float %1929, float %1925
  %1931 = and i32 %1823, 8192
  %1932 = icmp ne i32 %1931, 0
  %1933 = select i1 %1932, float %1893, float 1.000000e+00
  %1934 = fmul fast float %1831, 2.000000e+00
  %1935 = fadd fast float %1934, -1.000000e+00
  %1936 = call float @dx.op.unary.f32(i32 6, float %1935)  ; FAbs(value)
  %1937 = fmul fast float %1936, %1820
  %1938 = fsub fast float %1937, %1820
  %1939 = call float @dx.op.unary.f32(i32 7, float %1938)  ; Saturate(value)
  %1940 = fmul fast float %1838, 2.000000e+00
  %1941 = fadd fast float %1940, -1.000000e+00
  %1942 = call float @dx.op.unary.f32(i32 6, float %1941)  ; FAbs(value)
  %1943 = fmul fast float %1942, %1821
  %1944 = fsub fast float %1943, %1821
  %1945 = call float @dx.op.unary.f32(i32 7, float %1944)  ; Saturate(value)
  %1946 = fmul fast float %1850, %1783
  %1947 = fsub fast float %1946, %1783
  %1948 = call float @dx.op.unary.f32(i32 7, float %1947)  ; Saturate(value)
  %1949 = fmul fast float %1907, %1933
  %1950 = fmul fast float %1949, %1904
  %1951 = fmul fast float %1950, %1939
  %1952 = fmul fast float %1951, %1930
  %1953 = fmul fast float %1952, %1945
  %1954 = fmul fast float %1953, %1948
  %1955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1956 = extractvalue %dx.types.CBufRet.f32 %1955, 1
  %1957 = extractvalue %dx.types.CBufRet.f32 %1955, 0
  %1958 = fsub fast float %1867, %1957
  %1959 = fmul fast float %1958, %1956
  %1960 = call float @dx.op.unary.f32(i32 7, float %1959)  ; Saturate(value)
  %1961 = fmul fast float %1954, %1784
  %1962 = fadd fast float %1954, %1784
  %1963 = fmul fast float %1962, %1793
  %1964 = fsub fast float %1963, %1793
  %1965 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1966 = and i32 %1823, 128
  %1967 = icmp ne i32 %1966, 0
  %1968 = select i1 %1967, float %1965, float %1961
  %1969 = fmul fast float %1968, %1960
  %1970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1971 = extractvalue %dx.types.CBufRet.f32 %1970, 0
  %1972 = fcmp fast ugt float %1969, %1971
  br i1 %1972, label %1973, label %1872

; <label>:1973                                    ; preds = %1892
  %1974 = select i1 %1932, float %1969, float 0.000000e+00
  %1975 = fadd fast float %1974, %1747
  %1976 = call float @dx.op.unary.f32(i32 7, float %1975)  ; Saturate(value)
  br i1 %1932, label %1872, label %1977

; <label>:1977                                    ; preds = %1973
  %1978 = and i32 %1823, 4
  %1979 = and i32 %1823, 8
  %1980 = add i32 %1779, 0
  %1981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1980, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1982 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1983 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1981, %dx.types.Handle %1982, float %1910, float %1913, float undef, float undef, i32 0, i32 0, i32 undef, float %1915, float %1917, float undef, float %1919, float %1921, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1984 = extractvalue %dx.types.ResRet.f32 %1983, 0
  %1985 = extractvalue %dx.types.ResRet.f32 %1983, 1
  %1986 = extractvalue %dx.types.ResRet.f32 %1983, 2
  %1987 = extractvalue %dx.types.ResRet.f32 %1983, 3
  %1988 = bitcast float %1805 to i32
  %1989 = and i32 %1988, 255
  %1990 = uitofp i32 %1989 to float
  %1991 = lshr i32 %1988, 8
  %1992 = and i32 %1991, 255
  %1993 = uitofp i32 %1992 to float
  %1994 = fmul fast float %1987, %1990
  %1995 = fadd fast float %1994, %1993
  %1996 = fmul fast float %1995, 0x3F70101000000000
  %1997 = add i32 %1780, 0
  %1998 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1997, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1999 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1998, %dx.types.Handle %1982, float %1910, float %1913, float undef, float undef, i32 0, i32 0, i32 undef, float %1915, float %1917, float undef, float %1919, float %1921, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2000 = extractvalue %dx.types.ResRet.f32 %1999, 0
  %2001 = extractvalue %dx.types.ResRet.f32 %1999, 1
  %2002 = extractvalue %dx.types.ResRet.f32 %1999, 2
  %2003 = extractvalue %dx.types.ResRet.f32 %1999, 3
  %2004 = bitcast float %1799 to i32
  %2005 = and i32 %2004, 255
  %2006 = uitofp i32 %2005 to float
  %2007 = lshr i32 %2004, 8
  %2008 = and i32 %2007, 255
  %2009 = uitofp i32 %2008 to float
  %2010 = lshr i32 %2004, 16
  %2011 = and i32 %2010, 255
  %2012 = uitofp i32 %2011 to float
  %2013 = fmul fast float %2012, 0x3F70101000000000
  %2014 = fmul fast float %2000, %2006
  %2015 = fadd fast float %2014, %2009
  %2016 = fmul fast float %2015, 0x3F70101000000000
  %2017 = fadd fast float %2001, -5.000000e-01
  %2018 = fadd fast float %2003, -5.000000e-01
  %2019 = fmul fast float %2017, %2013
  %2020 = fmul fast float %2018, %2013
  %2021 = fadd fast float %2019, 5.000000e-01
  %2022 = fadd fast float %2020, 5.000000e-01
  %2023 = fmul fast float %1984, %1808
  %2024 = fmul fast float %1985, %1809
  %2025 = fmul fast float %1986, %1810
  %2026 = fmul fast float %2021, 2.000000e+00
  %2027 = fadd fast float %2026, -1.000000e+00
  %2028 = fmul fast float %2022, 2.000000e+00
  %2029 = fadd fast float %2028, -1.000000e+00
  %2030 = fadd fast float %2027, %2029
  %2031 = fmul fast float %2030, 5.000000e-01
  %2032 = fsub fast float %2027, %2029
  %2033 = fmul fast float %2032, 5.000000e-01
  %2034 = call float @dx.op.unary.f32(i32 6, float %2031)  ; FAbs(value)
  %2035 = fsub fast float 1.000000e+00, %2034
  %2036 = call float @dx.op.unary.f32(i32 6, float %2033)  ; FAbs(value)
  %2037 = fsub fast float %2035, %2036
  %2038 = call float @dx.op.dot3.f32(i32 55, float %2031, float %2033, float %2037, float %2031, float %2033, float %2037)  ; Dot3(ax,ay,az,bx,by,bz)
  %2039 = call float @dx.op.unary.f32(i32 25, float %2038)  ; Rsqrt(value)
  %2040 = fmul fast float %2031, %2039
  %2041 = fmul fast float %2033, %2039
  %2042 = fmul fast float %2039, %2037
  %2043 = fmul fast float %2042, %1773
  %2044 = fmul fast float %2042, %1774
  %2045 = fmul fast float %2042, %1775
  %2046 = fmul fast float %2040, %1796
  %2047 = fmul fast float %2040, %1797
  %2048 = fmul fast float %2040, %1798
  %2049 = fadd fast float %2046, %2043
  %2050 = fadd fast float %2047, %2044
  %2051 = fadd fast float %2048, %2045
  %2052 = fmul fast float %2041, %1802
  %2053 = fmul fast float %2041, %1803
  %2054 = fmul fast float %2041, %1804
  %2055 = fadd fast float %2049, %2052
  %2056 = fadd fast float %2050, %2053
  %2057 = fadd fast float %2051, %2054
  %2058 = call float @dx.op.dot3.f32(i32 55, float %2055, float %2056, float %2057, float %2055, float %2056, float %2057)  ; Dot3(ax,ay,az,bx,by,bz)
  %2059 = call float @dx.op.unary.f32(i32 25, float %2058)  ; Rsqrt(value)
  %2060 = fmul fast float %2055, %2059
  %2061 = fmul fast float %2056, %2059
  %2062 = fmul fast float %2057, %2059
  %2063 = icmp ne i32 %1979, 0
  %2064 = select i1 %2063, float 1.000000e+00, float 0.000000e+00
  %2065 = fmul fast float %1969, %2064
  %2066 = and i32 %1823, 1
  %2067 = icmp eq i32 %2066, 0
  br i1 %2067, label %2068, label %2072

; <label>:2068                                    ; preds = %1977
  %2069 = fsub fast float %2060, %1755
  %2070 = fsub fast float %2061, %1756
  %2071 = fsub fast float %2062, %1757
  br label %2072

; <label>:2072                                    ; preds = %2068, %1977
  %2073 = phi float [ %2069, %2068 ], [ %2060, %1977 ]
  %2074 = phi float [ %2070, %2068 ], [ %2061, %1977 ]
  %2075 = phi float [ %2071, %2068 ], [ %2062, %1977 ]
  %2076 = fmul float %2075, %2065
  %2077 = fmul float %2074, %2065
  %2078 = fmul float %2073, %2065
  %2079 = fadd fast float %2078, %1755
  %2080 = fadd fast float %2077, %1756
  %2081 = fadd fast float %2076, %1757
  %2082 = icmp ne i32 %1978, 0
  %2083 = select i1 %2082, float 1.000000e+00, float 0.000000e+00
  %2084 = fmul fast float %1969, %2083
  %2085 = fsub fast float %2023, %1762
  %2086 = fsub fast float %2024, %1763
  %2087 = fsub fast float %2025, %1764
  %2088 = fmul fast float %2085, %2084
  %2089 = fmul fast float %2086, %2084
  %2090 = fmul fast float %2087, %2084
  %2091 = fadd fast float %2088, %1762
  %2092 = fadd fast float %2089, %1763
  %2093 = fadd fast float %2090, %1764
  %2094 = fsub fast float %1996, %1761
  %2095 = fmul fast float %2094, %2084
  %2096 = fadd fast float %2095, %1761
  %2097 = fmul fast float %2084, %1751
  %2098 = fsub fast float %1751, %2097
  %2099 = fmul fast float %2084, %1750
  %2100 = fsub fast float %1750, %2099
  %2101 = fadd fast float %1969, %1760
  %2102 = call float @dx.op.unary.f32(i32 7, float %2101)  ; Saturate(value)
  %2103 = fsub fast float %2016, %1759
  %2104 = fmul fast float %2103, %2065
  %2105 = fadd fast float %2104, %1759
  %2106 = fsub fast float %2002, %1758
  %2107 = fmul fast float %2106, %2065
  %2108 = fadd fast float %2107, %1758
  %2109 = call float @dx.op.dot3.f32(i32 55, float %2023, float %2024, float %2025, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.f32 %2110, 0
  %2112 = extractvalue %dx.types.CBufRet.f32 %2110, 1
  %2113 = fmul fast float %2112, %2109
  %2114 = fadd fast float %2113, %2111
  %2115 = call float @dx.op.unary.f32(i32 7, float %2114)  ; Saturate(value)
  %2116 = bitcast float %1811 to i32
  %2117 = and i32 %2116, 65535
  %2118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2117)  ; LegacyF16ToF32(value)
  %2119 = lshr i32 %2116, 16
  %2120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2119)  ; LegacyF16ToF32(value)
  %2121 = fcmp fast oge float %2118, 0.000000e+00
  %2122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2123 = extractvalue %dx.types.CBufRet.f32 %2122, 0
  %2124 = select i1 %2121, float %2118, float %2123
  %2125 = fadd fast float %2124, %2120
  %2126 = fsub fast float %2115, %1749
  %2127 = fmul fast float %2126, %1969
  %2128 = fadd fast float %2127, %1749
  %2129 = fmul fast float %2125, %1969
  %2130 = call float @dx.op.binary.f32(i32 35, float %1748, float %2129)  ; FMax(a,b)
  %2131 = and i32 %1823, 16
  %2132 = icmp eq i32 %2131, 0
  br i1 %2132, label %2155, label %2133

; <label>:2133                                    ; preds = %2072
  %2134 = bitcast float %1817 to i32
  %2135 = add i32 %1814, 0
  %2136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2135, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2137 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2136, %dx.types.Handle %1982, float %1910, float %1913, float undef, float undef, i32 0, i32 0, i32 undef, float %1915, float %1917, float undef, float %1919, float %1921, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2138 = extractvalue %dx.types.ResRet.f32 %2137, 0
  %2139 = extractvalue %dx.types.ResRet.f32 %2137, 1
  %2140 = extractvalue %dx.types.ResRet.f32 %2137, 2
  %2141 = and i32 %2134, 65535
  %2142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2141)  ; LegacyF16ToF32(value)
  %2143 = fmul fast float %2138, %1808
  %2144 = fmul fast float %2139, %1809
  %2145 = fmul fast float %2140, %1810
  %2146 = and i32 %1823, 16384
  %2147 = icmp ne i32 %2146, 0
  %2148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2149 = extractvalue %dx.types.CBufRet.f32 %2148, 0
  %2150 = select i1 %2147, float %2149, float 1.000000e+00
  %2151 = fmul fast float %2150, %2142
  %2152 = fmul fast float %2143, %2151
  %2153 = fmul fast float %2144, %2151
  %2154 = fmul fast float %2145, %2151
  br label %2155

; <label>:2155                                    ; preds = %2133, %2072
  %2156 = phi float [ %2152, %2133 ], [ 0.000000e+00, %2072 ]
  %2157 = phi float [ %2153, %2133 ], [ 0.000000e+00, %2072 ]
  %2158 = phi float [ %2154, %2133 ], [ 0.000000e+00, %2072 ]
  %2159 = fsub fast float %2156, %1752
  %2160 = fsub fast float %2157, %1753
  %2161 = fsub fast float %2158, %1754
  %2162 = fmul fast float %2159, %1969
  %2163 = fmul fast float %2160, %1969
  %2164 = fmul fast float %2161, %1969
  %2165 = fadd fast float %2162, %1752
  %2166 = fadd fast float %2163, %1753
  %2167 = fadd fast float %2164, %1754
  br label %1872

; <label>:2168                                    ; preds = %1872
  br label %2169

; <label>:2169                                    ; preds = %2168, %1649
  %2170 = phi float [ 0.000000e+00, %1649 ], [ %1873, %2168 ]
  %2171 = phi float [ %1664, %1649 ], [ %1874, %2168 ]
  %2172 = phi float [ %1662, %1649 ], [ %1875, %2168 ]
  %2173 = phi float [ %1661, %1649 ], [ %1876, %2168 ]
  %2174 = phi float [ 0.000000e+00, %1649 ], [ %1877, %2168 ]
  %2175 = phi float [ %1652, %1649 ], [ %1878, %2168 ]
  %2176 = phi float [ %1653, %1649 ], [ %1879, %2168 ]
  %2177 = phi float [ %1654, %1649 ], [ %1880, %2168 ]
  %2178 = phi float [ %1690, %1649 ], [ %1881, %2168 ]
  %2179 = phi float [ %1691, %1649 ], [ %1882, %2168 ]
  %2180 = phi float [ %1692, %1649 ], [ %1883, %2168 ]
  %2181 = phi float [ %1660, %1649 ], [ %1884, %2168 ]
  %2182 = phi float [ %1659, %1649 ], [ %1885, %2168 ]
  %2183 = phi float [ 0.000000e+00, %1649 ], [ %1886, %2168 ]
  %2184 = phi float [ %1658, %1649 ], [ %1887, %2168 ]
  %2185 = phi float [ %1655, %1649 ], [ %1888, %2168 ]
  %2186 = phi float [ %1656, %1649 ], [ %1889, %2168 ]
  %2187 = phi float [ %1657, %1649 ], [ %1890, %2168 ]
  %2188 = call float @dx.op.dot3.f32(i32 55, float %2178, float %2179, float %2180, float %2178, float %2179, float %2180)  ; Dot3(ax,ay,az,bx,by,bz)
  %2189 = call float @dx.op.unary.f32(i32 25, float %2188)  ; Rsqrt(value)
  %2190 = fmul fast float %2189, %2178
  %2191 = fmul fast float %2189, %2179
  %2192 = fmul fast float %2189, %2180
  %2193 = fadd fast float %2183, %776
  %2194 = call float @dx.op.unary.f32(i32 7, float %2193)  ; Saturate(value)
  %2195 = call float @dx.op.dot3.f32(i32 55, float %2190, float %2191, float %2192, float %2190, float %2191, float %2192)  ; Dot3(ax,ay,az,bx,by,bz)
  %2196 = call float @dx.op.unary.f32(i32 25, float %2195)  ; Rsqrt(value)
  %2197 = fmul fast float %2196, %2190
  %2198 = fmul fast float %2196, %2191
  %2199 = fmul fast float %2196, %2192
  %2200 = fadd fast float %2184, 0xBFB99999A0000000
  %2201 = call float @dx.op.unary.f32(i32 7, float %2200)  ; Saturate(value)
  %2202 = fmul fast float %2201, 0x3FF1C71C80000000
  %2203 = call float @dx.op.binary.f32(i32 36, float %2184, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2204 = fsub fast float 1.000000e+00, %2202
  %2205 = call float @dx.op.unary.f32(i32 7, float %2204)  ; Saturate(value)
  %2206 = fmul fast float %2205, %2185
  %2207 = fmul fast float %2205, %2186
  %2208 = fmul fast float %2205, %2187
  %2209 = call float @dx.op.unary.f32(i32 7, float %2206)  ; Saturate(value)
  %2210 = call float @dx.op.unary.f32(i32 7, float %2207)  ; Saturate(value)
  %2211 = call float @dx.op.unary.f32(i32 7, float %2208)  ; Saturate(value)
  %2212 = fmul fast float %2202, %2185
  %2213 = fmul fast float %2202, %2186
  %2214 = fmul fast float %2202, %2187
  %2215 = fadd fast float %2212, %2203
  %2216 = fadd fast float %2213, %2203
  %2217 = fadd fast float %2214, %2203
  %2218 = call float @dx.op.unary.f32(i32 7, float %2215)  ; Saturate(value)
  %2219 = call float @dx.op.unary.f32(i32 7, float %2216)  ; Saturate(value)
  %2220 = call float @dx.op.unary.f32(i32 7, float %2217)  ; Saturate(value)
  %2221 = call float @dx.op.unary.f32(i32 7, float %2182)  ; Saturate(value)
  %2222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2223 = extractvalue %dx.types.CBufRet.i32 %2222, 3
  %2224 = and i32 %2223, 8
  %2225 = icmp ne i32 %2224, 0
  %2226 = call float @dx.op.binary.f32(i32 35, float %2209, float %2185)  ; FMax(a,b)
  %2227 = call float @dx.op.binary.f32(i32 35, float %2210, float %2185)  ; FMax(a,b)
  %2228 = call float @dx.op.binary.f32(i32 35, float %2211, float %2185)  ; FMax(a,b)
  %2229 = call float @dx.op.dot3.f32(i32 55, float %2209, float %2210, float %2211, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2230 = select i1 %188, float %2185, float %2209
  %2231 = select i1 %188, float %2229, float %2210
  %2232 = select i1 %188, float 1.000000e+00, float %2211
  %2233 = select i1 %2225, float %2226, float %2230
  %2234 = select i1 %2225, float %2227, float %2231
  %2235 = select i1 %2225, float %2228, float %2232
  %2236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2237 = extractvalue %dx.types.CBufRet.f32 %2236, 0
  %2238 = extractvalue %dx.types.CBufRet.f32 %2236, 1
  %2239 = extractvalue %dx.types.CBufRet.f32 %2236, 2
  %2240 = fadd fast float %2237, %117
  %2241 = fadd fast float %2238, %118
  %2242 = fadd fast float %2239, %119
  %2243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2244 = extractvalue %dx.types.CBufRet.f32 %2243, 0
  %2245 = extractvalue %dx.types.CBufRet.f32 %2243, 1
  %2246 = fsub fast float %2240, %2244
  %2247 = fsub fast float %2241, %2245
  %2248 = fmul fast float %2246, %2246
  %2249 = fmul fast float %2247, %2247
  %2250 = fadd fast float %2248, %2249
  %2251 = call float @dx.op.unary.f32(i32 24, float %2250)  ; Sqrt(value)
  %2252 = extractvalue %dx.types.CBufRet.f32 %2243, 2
  %2253 = fcmp fast olt float %2251, %2252
  br i1 %2253, label %2254, label %2321

; <label>:2254                                    ; preds = %2169
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
  %2267 = fadd fast float %2264, %2240
  %2268 = fadd fast float %2265, %2241
  %2269 = fadd fast float %2266, %2242
  %2270 = fmul fast float %2267, %2256
  %2271 = call float @dx.op.tertiary.f32(i32 46, float %2268, float %2258, float %2270)  ; FMad(a,b,c)
  %2272 = call float @dx.op.tertiary.f32(i32 46, float %2269, float %2260, float %2271)  ; FMad(a,b,c)
  %2273 = fmul fast float %2267, %2261
  %2274 = call float @dx.op.tertiary.f32(i32 46, float %2268, float %2262, float %2273)  ; FMad(a,b,c)
  %2275 = call float @dx.op.tertiary.f32(i32 46, float %2269, float %2263, float %2274)  ; FMad(a,b,c)
  %2276 = fsub fast float %2272, %2264
  %2277 = fsub fast float %2275, %2265
  %2278 = fsub fast float %2276, %2244
  %2279 = fadd fast float %2278, %2252
  %2280 = fsub fast float %2277, %2245
  %2281 = fadd fast float %2280, %2252
  %2282 = extractvalue %dx.types.CBufRet.f32 %2243, 3
  %2283 = fmul fast float %2279, %2282
  %2284 = fmul fast float %2281, %2282
  %2285 = call float @dx.op.unary.f32(i32 7, float %2283)  ; Saturate(value)
  %2286 = call float @dx.op.unary.f32(i32 7, float %2284)  ; Saturate(value)
  %2287 = fsub fast float 1.000000e+00, %2285
  %2288 = fsub fast float 1.000000e+00, %2286
  %2289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %2287, float %2288, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2290 = extractvalue %dx.types.ResRet.f32 %2289, 0
  %2291 = fcmp fast ugt float %2290, 0.000000e+00
  br i1 %2291, label %2292, label %2595

; <label>:2292                                    ; preds = %2254
  %2293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2294 = extractvalue %dx.types.CBufRet.f32 %2293, 2
  %2295 = fmul fast float %2294, %2290
  %2296 = extractvalue %dx.types.CBufRet.f32 %2293, 3
  %2297 = fadd fast float %2296, %2295
  %2298 = extractvalue %dx.types.CBufRet.f32 %2259, 2
  %2299 = fadd fast float %2297, %2266
  %2300 = fmul fast float %2272, %2260
  %2301 = call float @dx.op.tertiary.f32(i32 46, float %2275, float %2263, float %2300)  ; FMad(a,b,c)
  %2302 = call float @dx.op.tertiary.f32(i32 46, float %2299, float %2298, float %2301)  ; FMad(a,b,c)
  %2303 = fsub fast float %2302, %2266
  %2304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2305 = extractvalue %dx.types.CBufRet.f32 %2304, 2
  %2306 = fsub fast float %2303, %2305
  %2307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %2287, float %2288, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2308 = extractvalue %dx.types.ResRet.f32 %2307, 0
  %2309 = extractvalue %dx.types.ResRet.f32 %2307, 1
  %2310 = extractvalue %dx.types.ResRet.f32 %2307, 2
  %2311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %2287, float %2288, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2312 = extractvalue %dx.types.ResRet.f32 %2311, 0
  %2313 = extractvalue %dx.types.ResRet.f32 %2311, 1
  %2314 = extractvalue %dx.types.ResRet.f32 %2311, 2
  %2315 = fadd fast float %2312, %2308
  %2316 = fmul fast float %2315, 0x3F847AE140000000
  %2317 = fadd fast float %2313, %2309
  %2318 = fmul fast float %2317, 0x3F847AE140000000
  %2319 = fadd fast float %2314, %2310
  %2320 = fmul fast float %2319, 0x3F847AE140000000
  br label %2595

; <label>:2321                                    ; preds = %2169
  %2322 = and i32 %164, 1
  %2323 = icmp eq i32 %2322, 0
  br i1 %2323, label %2595, label %2324

; <label>:2324                                    ; preds = %2321
  %2325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2326 = extractvalue %dx.types.CBufRet.f32 %2325, 0
  %2327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2328 = extractvalue %dx.types.CBufRet.f32 %2327, 0
  %2329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2330 = extractvalue %dx.types.CBufRet.f32 %2329, 0
  %2331 = extractvalue %dx.types.CBufRet.f32 %2325, 1
  %2332 = extractvalue %dx.types.CBufRet.f32 %2327, 1
  %2333 = extractvalue %dx.types.CBufRet.f32 %2329, 1
  %2334 = extractvalue %dx.types.CBufRet.f32 %2325, 3
  %2335 = extractvalue %dx.types.CBufRet.f32 %2327, 3
  %2336 = extractvalue %dx.types.CBufRet.f32 %2329, 3
  %2337 = fadd fast float %2334, %2240
  %2338 = fadd fast float %2335, %2241
  %2339 = fadd fast float %2336, %2242
  %2340 = fmul fast float %2337, %2326
  %2341 = call float @dx.op.tertiary.f32(i32 46, float %2338, float %2328, float %2340)  ; FMad(a,b,c)
  %2342 = call float @dx.op.tertiary.f32(i32 46, float %2339, float %2330, float %2341)  ; FMad(a,b,c)
  %2343 = fmul fast float %2337, %2331
  %2344 = call float @dx.op.tertiary.f32(i32 46, float %2338, float %2332, float %2343)  ; FMad(a,b,c)
  %2345 = call float @dx.op.tertiary.f32(i32 46, float %2339, float %2333, float %2344)  ; FMad(a,b,c)
  %2346 = fsub fast float %2342, %2334
  %2347 = fsub fast float %2345, %2335
  %2348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2349 = extractvalue %dx.types.CBufRet.f32 %2348, 0
  %2350 = extractvalue %dx.types.CBufRet.f32 %2348, 1
  %2351 = extractvalue %dx.types.CBufRet.f32 %2348, 2
  %2352 = extractvalue %dx.types.CBufRet.f32 %2348, 3
  %2353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.f32 %2353, 3
  %2355 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2356 = extractvalue %dx.types.CBufRet.i32 %2355, 0
  %2357 = extractvalue %dx.types.CBufRet.i32 %2355, 1
  %2358 = udiv i32 %2357, %2356
  %2359 = fsub fast float %2346, %2349
  %2360 = fsub fast float %2347, %2350
  %2361 = call float @dx.op.binary.f32(i32 35, float %2359, float 0.000000e+00)  ; FMax(a,b)
  %2362 = call float @dx.op.binary.f32(i32 35, float %2360, float 0.000000e+00)  ; FMax(a,b)
  %2363 = call float @dx.op.binary.f32(i32 36, float %2361, float %2351)  ; FMin(a,b)
  %2364 = call float @dx.op.binary.f32(i32 36, float %2362, float %2352)  ; FMin(a,b)
  %2365 = add i32 %2356, -1
  %2366 = add i32 %2358, -1
  %2367 = fmul fast float %2363, %2354
  %2368 = fmul fast float %2364, %2354
  %2369 = fptoui float %2367 to i32
  %2370 = fptoui float %2368 to i32
  %2371 = call i32 @dx.op.binary.i32(i32 40, i32 %2369, i32 %2365)  ; UMin(a,b)
  %2372 = call i32 @dx.op.binary.i32(i32 40, i32 %2370, i32 %2366)  ; UMin(a,b)
  %2373 = mul i32 %2372, %2356
  %2374 = add i32 %2373, %2371
  %2375 = shl i32 %2374, 2
  %2376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2375, i32 undef)  ; BufferLoad(srv,index,wot)
  %2377 = extractvalue %dx.types.ResRet.i32 %2376, 0
  %2378 = icmp eq i32 %2377, -1
  br i1 %2378, label %2595, label %2379

; <label>:2379                                    ; preds = %2324
  %2380 = mul i32 %2377, 148
  %2381 = add i32 %2380, 4
  %2382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2381, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.f32 %2382, 0
  %2384 = add i32 %2380, 8
  %2385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2384, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.f32 %2385, 0
  %2387 = add i32 %2380, 36
  %2388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2387, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.f32 %2388, 0
  %2390 = add i32 %2380, 60
  %2391 = add i32 %2380, 92
  %2392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2391, i32 undef)  ; BufferLoad(srv,index,wot)
  %2393 = extractvalue %dx.types.ResRet.i32 %2392, 0
  %2394 = add i32 %2380, 116
  %2395 = fsub fast float %2346, %2383
  %2396 = fsub fast float %2347, %2386
  %2397 = fmul fast float %2354, %2395
  %2398 = fmul fast float %2354, %2396
  %2399 = call float @dx.op.unary.f32(i32 7, float %2397)  ; Saturate(value)
  %2400 = call float @dx.op.unary.f32(i32 7, float %2398)  ; Saturate(value)
  %2401 = fsub fast float 1.000000e+00, %2400
  %2402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2403 = extractvalue %dx.types.CBufRet.f32 %2402, 2
  %2404 = call float @dx.op.unary.f32(i32 83, float %2399)  ; DerivCoarseX(value)
  %2405 = call float @dx.op.unary.f32(i32 83, float %2401)  ; DerivCoarseX(value)
  %2406 = call float @dx.op.unary.f32(i32 84, float %2399)  ; DerivCoarseY(value)
  %2407 = call float @dx.op.unary.f32(i32 84, float %2401)  ; DerivCoarseY(value)
  %2408 = fmul fast float %2404, %2403
  %2409 = fmul fast float %2405, %2403
  %2410 = fmul fast float %2406, %2403
  %2411 = fmul fast float %2407, %2403
  %2412 = call float @dx.op.dot2.f32(i32 54, float %2410, float %2411, float %2410, float %2411)  ; Dot2(ax,ay,bx,by)
  %2413 = call float @dx.op.dot2.f32(i32 54, float %2408, float %2409, float %2408, float %2409)  ; Dot2(ax,ay,bx,by)
  %2414 = call float @dx.op.binary.f32(i32 35, float %2413, float %2412)  ; FMax(a,b)
  %2415 = call float @dx.op.unary.f32(i32 23, float %2414)  ; Log(value)
  %2416 = fmul fast float %2415, 5.000000e-01
  %2417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2418 = extractvalue %dx.types.CBufRet.f32 %2417, 1
  %2419 = fadd fast float %2418, %2416
  %2420 = call float @dx.op.binary.f32(i32 35, float %2419, float 0.000000e+00)  ; FMax(a,b)
  %2421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2422 = extractvalue %dx.types.CBufRet.f32 %2421, 3
  %2423 = fadd fast float %2422, %2420
  %2424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2425 = extractvalue %dx.types.CBufRet.f32 %2424, 3
  %2426 = fadd fast float %2423, %2425
  %2427 = add i32 %2393, 0
  %2428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2427, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2429 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2428, i32 0)  ; GetDimensions(handle,mipLevel)
  %2430 = extractvalue %dx.types.Dimensions %2429, 0
  %2431 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2430)  ; FirstbitLo(value)
  %2432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2433 = extractvalue %dx.types.CBufRet.i32 %2432, 1
  %2434 = sub nsw i32 %2433, %2431
  %2435 = sitofp i32 %2434 to float
  %2436 = fsub fast float %2426, %2435
  %2437 = call float @dx.op.binary.f32(i32 35, float %2436, float 0.000000e+00)  ; FMax(a,b)
  %2438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2428, %dx.types.Handle %37, float %2399, float %2401, float %2389, float undef, i32 0, i32 0, i32 undef, float %2437)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2439 = extractvalue %dx.types.ResRet.f32 %2438, 0
  %2440 = fcmp ule float %2439, 0x3FE0101020000000
  %2441 = extractvalue %dx.types.CBufRet.i32 %2432, 0
  %2442 = and i32 %2441, 128
  %2443 = icmp ne i32 %2442, 0
  %2444 = and i1 %2440, %2443
  br i1 %2444, label %2595, label %2445

; <label>:2445                                    ; preds = %2379
  %2446 = add i32 %2380, 20
  %2447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2446, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.f32 %2447, 0
  %2449 = add i32 %2380, 24
  %2450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2449, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.f32 %2450, 0
  %2452 = add i32 %2380, 40
  %2453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2452, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.f32 %2453, 0
  %2455 = add i32 %2380, 96
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2455, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2459 = extractvalue %dx.types.CBufRet.f32 %2458, 2
  %2460 = fmul fast float %2459, %2399
  %2461 = fmul fast float %2459, %2401
  %2462 = extractvalue %dx.types.CBufRet.f32 %2458, 3
  %2463 = fadd fast float %2460, %2462
  %2464 = fadd fast float %2461, %2462
  %2465 = add i32 %2457, 0
  %2466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2465, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2467 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2466, i32 0)  ; GetDimensions(handle,mipLevel)
  %2468 = extractvalue %dx.types.Dimensions %2467, 0
  %2469 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2468)  ; FirstbitLo(value)
  %2470 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2471 = extractvalue %dx.types.CBufRet.i32 %2470, 1
  %2472 = sub nsw i32 %2471, %2469
  %2473 = sitofp i32 %2472 to float
  %2474 = fsub fast float %2423, %2473
  %2475 = call float @dx.op.binary.f32(i32 35, float %2474, float 0.000000e+00)  ; FMax(a,b)
  %2476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2466, %dx.types.Handle %37, float %2463, float %2464, float %2454, float undef, i32 0, i32 0, i32 undef, float %2475)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2477 = extractvalue %dx.types.ResRet.f32 %2476, 0
  %2478 = fmul fast float %2477, %2448
  %2479 = fadd fast float %2478, %2451
  %2480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2481 = extractvalue %dx.types.CBufRet.f32 %2480, 0
  %2482 = extractvalue %dx.types.CBufRet.f32 %2480, 1
  %2483 = extractvalue %dx.types.CBufRet.f32 %2480, 2
  %2484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2485 = extractvalue %dx.types.CBufRet.f32 %2484, 3
  %2486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2487 = extractvalue %dx.types.CBufRet.f32 %2486, 3
  %2488 = extractvalue %dx.types.CBufRet.f32 %2480, 3
  %2489 = fadd fast float %2485, %2346
  %2490 = fadd fast float %2487, %2347
  %2491 = fadd fast float %2479, %2488
  %2492 = fmul fast float %2489, %2481
  %2493 = call float @dx.op.tertiary.f32(i32 46, float %2490, float %2482, float %2492)  ; FMad(a,b,c)
  %2494 = call float @dx.op.tertiary.f32(i32 46, float %2491, float %2483, float %2493)  ; FMad(a,b,c)
  %2495 = fsub fast float %2494, %2488
  %2496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2497 = extractvalue %dx.types.CBufRet.f32 %2496, 2
  %2498 = fsub fast float %2495, %2497
  %2499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2500 = extractvalue %dx.types.CBufRet.i32 %2499, 0
  %2501 = call i32 @dx.op.binary.i32(i32 40, i32 %2377, i32 %2500)  ; UMin(a,b)
  %2502 = mul i32 %2501, 36
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2502, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = add i32 %2502, 4
  %2506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2507 = extractvalue %dx.types.CBufRet.f32 %2506, 0
  %2508 = fmul fast float %2507, %2399
  %2509 = fmul fast float %2507, %2401
  %2510 = extractvalue %dx.types.CBufRet.f32 %2506, 1
  %2511 = fadd fast float %2508, %2510
  %2512 = fadd fast float %2509, %2510
  %2513 = icmp eq i32 %2504, 0
  br i1 %2513, label %2582, label %2514

; <label>:2514                                    ; preds = %2445
  br label %2515

; <label>:2515                                    ; preds = %2572, %2514
  %2516 = phi float [ %2573, %2572 ], [ 0.000000e+00, %2514 ]
  %2517 = phi float [ %2574, %2572 ], [ 0.000000e+00, %2514 ]
  %2518 = phi float [ %2575, %2572 ], [ 0.000000e+00, %2514 ]
  %2519 = phi float [ %2576, %2572 ], [ 0.000000e+00, %2514 ]
  %2520 = phi float [ %2577, %2572 ], [ 0.000000e+00, %2514 ]
  %2521 = phi float [ %2578, %2572 ], [ 0.000000e+00, %2514 ]
  %2522 = phi i32 [ %2579, %2572 ], [ 0, %2514 ]
  %2523 = shl i32 %2522, 2
  %2524 = add i32 %2390, %2523
  %2525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2524, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.f32 %2525, 0
  %2527 = add i32 %2394, %2523
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = add i32 %2529, 0
  %2531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2530, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2532 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2531, i32 0)  ; GetDimensions(handle,mipLevel)
  %2533 = extractvalue %dx.types.Dimensions %2532, 0
  %2534 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2533)  ; FirstbitLo(value)
  %2535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2536 = extractvalue %dx.types.CBufRet.i32 %2535, 1
  %2537 = sub nsw i32 %2536, %2534
  %2538 = sitofp i32 %2537 to float
  %2539 = fsub fast float %2423, %2538
  %2540 = call float @dx.op.binary.f32(i32 35, float %2539, float 0.000000e+00)  ; FMax(a,b)
  %2541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2531, %dx.types.Handle %37, float %2511, float %2512, float %2526, float undef, i32 0, i32 0, i32 undef, float %2540)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2542 = extractvalue %dx.types.ResRet.f32 %2541, 0
  %2543 = fcmp fast ogt float %2542, 0.000000e+00
  br i1 %2543, label %2544, label %2572

; <label>:2544                                    ; preds = %2515
  %2545 = add i32 %2505, %2523
  %2546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2545, i32 undef)  ; BufferLoad(srv,index,wot)
  %2547 = extractvalue %dx.types.ResRet.i32 %2546, 0
  %2548 = and i32 %2547, 32767
  %2549 = mul nuw nsw i32 %2548, 928
  %2550 = add nuw nsw i32 %2549, 48
  %2551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2550, i32 undef)  ; BufferLoad(srv,index,wot)
  %2552 = extractvalue %dx.types.ResRet.f32 %2551, 0
  %2553 = extractvalue %dx.types.ResRet.f32 %2551, 1
  %2554 = extractvalue %dx.types.ResRet.f32 %2551, 2
  %2555 = add nuw nsw i32 %2549, 60
  %2556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2555, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.f32 %2556, 0
  %2558 = extractvalue %dx.types.ResRet.f32 %2556, 1
  %2559 = extractvalue %dx.types.ResRet.f32 %2556, 2
  %2560 = fmul fast float %2552, %2542
  %2561 = fmul fast float %2553, %2542
  %2562 = fmul fast float %2554, %2542
  %2563 = fadd fast float %2560, %2516
  %2564 = fadd fast float %2561, %2517
  %2565 = fadd fast float %2562, %2518
  %2566 = fmul fast float %2557, %2542
  %2567 = fmul fast float %2558, %2542
  %2568 = fmul fast float %2559, %2542
  %2569 = fadd fast float %2566, %2519
  %2570 = fadd fast float %2567, %2520
  %2571 = fadd fast float %2568, %2521
  br label %2572

; <label>:2572                                    ; preds = %2544, %2515
  %2573 = phi float [ %2563, %2544 ], [ %2516, %2515 ]
  %2574 = phi float [ %2564, %2544 ], [ %2517, %2515 ]
  %2575 = phi float [ %2565, %2544 ], [ %2518, %2515 ]
  %2576 = phi float [ %2569, %2544 ], [ %2519, %2515 ]
  %2577 = phi float [ %2570, %2544 ], [ %2520, %2515 ]
  %2578 = phi float [ %2571, %2544 ], [ %2521, %2515 ]
  %2579 = add nuw i32 %2522, 1
  %2580 = icmp eq i32 %2579, %2504
  br i1 %2580, label %2581, label %2515

; <label>:2581                                    ; preds = %2572
  br label %2582

; <label>:2582                                    ; preds = %2581, %2445
  %2583 = phi float [ 0.000000e+00, %2445 ], [ %2573, %2581 ]
  %2584 = phi float [ 0.000000e+00, %2445 ], [ %2574, %2581 ]
  %2585 = phi float [ 0.000000e+00, %2445 ], [ %2575, %2581 ]
  %2586 = phi float [ 0.000000e+00, %2445 ], [ %2576, %2581 ]
  %2587 = phi float [ 0.000000e+00, %2445 ], [ %2577, %2581 ]
  %2588 = phi float [ 0.000000e+00, %2445 ], [ %2578, %2581 ]
  %2589 = fadd fast float %2586, %2583
  %2590 = fmul fast float %2589, 0x3F847AE140000000
  %2591 = fadd fast float %2587, %2584
  %2592 = fmul fast float %2591, 0x3F847AE140000000
  %2593 = fadd fast float %2588, %2585
  %2594 = fmul fast float %2593, 0x3F847AE140000000
  br label %2595

; <label>:2595                                    ; preds = %2582, %2379, %2324, %2321, %2292, %2254
  %2596 = phi float [ %2306, %2292 ], [ -1.310720e+05, %2254 ], [ %2498, %2582 ], [ -1.310720e+05, %2324 ], [ -1.310720e+05, %2379 ], [ -1.310720e+05, %2321 ]
  %2597 = phi float [ %2316, %2292 ], [ 0.000000e+00, %2254 ], [ %2590, %2582 ], [ 0.000000e+00, %2324 ], [ 0.000000e+00, %2379 ], [ 0.000000e+00, %2321 ]
  %2598 = phi float [ %2318, %2292 ], [ 0.000000e+00, %2254 ], [ %2592, %2582 ], [ 0.000000e+00, %2324 ], [ 0.000000e+00, %2379 ], [ 0.000000e+00, %2321 ]
  %2599 = phi float [ %2320, %2292 ], [ 0.000000e+00, %2254 ], [ %2594, %2582 ], [ 0.000000e+00, %2324 ], [ 0.000000e+00, %2379 ], [ 0.000000e+00, %2321 ]
  %2600 = phi i1 [ true, %2292 ], [ false, %2254 ], [ true, %2582 ], [ false, %2324 ], [ false, %2379 ], [ false, %2321 ]
  %2601 = and i32 %164, 3
  %2602 = icmp eq i32 %2601, 1
  %2603 = select i1 %2602, float 1.000000e+00, float 0.000000e+00
  %2604 = fsub fast float %2596, %119
  %2605 = call float @dx.op.unary.f32(i32 7, float %2604)  ; Saturate(value)
  %2606 = select i1 %2600, float %2605, float 1.000000e+00
  %2607 = fmul fast float %2606, %2603
  %2608 = icmp eq i32 %2601, 3
  %2609 = select i1 %2608, float 1.000000e+00, float %2607
  %2610 = call float @dx.op.binary.f32(i32 35, float %2170, float %2609)  ; FMax(a,b)
  %2611 = call float @dx.op.unary.f32(i32 7, float %2610)  ; Saturate(value)
  %2612 = fcmp fast une float %2611, 0.000000e+00
  %2613 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %2614 = call float @dx.op.unary.f32(i32 25, float %2613)  ; Rsqrt(value)
  br i1 %2612, label %2622, label %2615

; <label>:2615                                    ; preds = %2595
  %2616 = fmul fast float %2614, %117
  %2617 = fmul fast float %2614, %118
  %2618 = fmul fast float %2614, %119
  %2619 = fsub fast float -0.000000e+00, %2616
  %2620 = fsub fast float -0.000000e+00, %2617
  %2621 = fsub fast float -0.000000e+00, %2618
  br label %2790

; <label>:2622                                    ; preds = %2595
  %2623 = fmul fast float %117, %2614
  %2624 = fsub fast float -0.000000e+00, %2623
  %2625 = fmul fast float %118, %2614
  %2626 = fsub fast float -0.000000e+00, %2625
  %2627 = fmul fast float %119, %2614
  %2628 = fsub fast float -0.000000e+00, %2627
  %2629 = call float @dx.op.dot3.f32(i32 55, float %2624, float %2626, float %2628, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %2630 = fmul fast float %2611, 2.500000e+00
  %2631 = call float @dx.op.unary.f32(i32 7, float %2630)  ; Saturate(value)
  %2632 = fmul fast float %2611, 0x4013FFFFE0000000
  %2633 = fadd fast float %2632, 0xBFFFFFFFE0000000
  %2634 = call float @dx.op.unary.f32(i32 7, float %2633)  ; Saturate(value)
  %2635 = fmul fast float %2611, 0x4004000020000000
  %2636 = fadd fast float %2635, 0xBFF8000040000000
  %2637 = call float @dx.op.unary.f32(i32 7, float %2636)  ; Saturate(value)
  %2638 = call float @dx.op.unary.f32(i32 7, float %2631)  ; Saturate(value)
  %2639 = fmul fast float %2200, 1.000000e+01
  %2640 = call float @dx.op.unary.f32(i32 7, float %2639)  ; Saturate(value)
  %2641 = fmul fast float %2640, 2.000000e+00
  %2642 = fsub fast float 3.000000e+00, %2641
  %2643 = fmul fast float %2640, %2640
  %2644 = fmul fast float %2643, %2642
  %2645 = fsub fast float 1.000000e+00, %2644
  %2646 = fsub fast float 0x3FE3333340000000, %2221
  %2647 = fmul fast float %2646, 0x400AAAAAA0000000
  %2648 = call float @dx.op.unary.f32(i32 7, float %2647)  ; Saturate(value)
  %2649 = fmul fast float %2645, %2648
  %2650 = fmul fast float %2233, 0x3FEA2B8620000000
  %2651 = fmul fast float %2234, 0x3FEA2B8620000000
  %2652 = fmul fast float %2235, 0x3FEA2B8620000000
  %2653 = fadd fast float %2650, 0x3FC81DFBA0000000
  %2654 = fmul fast float %2653, %2233
  %2655 = fadd fast float %2654, 0x3F910E6020000000
  %2656 = fadd fast float %2651, 0x3FC81DFBA0000000
  %2657 = fmul fast float %2656, %2234
  %2658 = fadd fast float %2657, 0x3F910E6020000000
  %2659 = fadd fast float %2652, 0x3FC81DFBA0000000
  %2660 = fmul fast float %2659, %2235
  %2661 = fadd fast float %2660, 0x3F910E6020000000
  %2662 = call float @dx.op.unary.f32(i32 7, float %2655)  ; Saturate(value)
  %2663 = call float @dx.op.unary.f32(i32 7, float %2658)  ; Saturate(value)
  %2664 = call float @dx.op.unary.f32(i32 7, float %2661)  ; Saturate(value)
  %2665 = fsub fast float %2662, %2233
  %2666 = fsub fast float %2663, %2234
  %2667 = fsub fast float %2664, %2235
  %2668 = fmul fast float %2665, %2638
  %2669 = fmul fast float %2668, %2649
  %2670 = fmul fast float %2666, %2638
  %2671 = fmul fast float %2670, %2649
  %2672 = fmul fast float %2667, %2638
  %2673 = fmul fast float %2672, %2649
  %2674 = fadd fast float %2669, %2233
  %2675 = fadd fast float %2671, %2234
  %2676 = fadd fast float %2673, %2235
  %2677 = fmul fast float %2181, %2181
  %2678 = fmul fast float %2677, %2677
  %2679 = fadd fast float %2634, 1.000000e+00
  %2680 = fsub fast float %2679, %2649
  %2681 = call float @dx.op.unary.f32(i32 7, float %2680)  ; Saturate(value)
  %2682 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2683 = call float @dx.op.unary.f32(i32 7, float %2682)  ; Saturate(value)
  %2684 = fsub fast float 1.000000e+00, %2678
  %2685 = call float @dx.op.binary.f32(i32 36, float %2681, float %2684)  ; FMin(a,b)
  %2686 = call float @dx.op.unary.f32(i32 7, float %2637)  ; Saturate(value)
  %2687 = call float @dx.op.binary.f32(i32 35, float %2685, float %2686)  ; FMax(a,b)
  %2688 = fadd fast float %2683, 0xBFE4CCCCC0000000
  %2689 = fmul fast float %2688, 0x4006DB6DA0000000
  %2690 = call float @dx.op.unary.f32(i32 7, float %2689)  ; Saturate(value)
  %2691 = fmul fast float %2690, 2.000000e+00
  %2692 = fsub fast float 3.000000e+00, %2691
  %2693 = bitcast float %2218 to i32
  %2694 = ashr i32 %2693, 1
  %2695 = add nsw i32 %2694, 532487669
  %2696 = bitcast i32 %2695 to float
  %2697 = fsub fast float 1.000000e+00, %2696
  %2698 = bitcast float %2697 to i32
  %2699 = sub nsw i32 2129859010, %2698
  %2700 = bitcast i32 %2699 to float
  %2701 = fmul fast float %2700, 2.000000e+00
  %2702 = bitcast float %2219 to i32
  %2703 = ashr i32 %2702, 1
  %2704 = add nsw i32 %2703, 532487669
  %2705 = bitcast i32 %2704 to float
  %2706 = fsub fast float 1.000000e+00, %2705
  %2707 = bitcast float %2706 to i32
  %2708 = sub nsw i32 2129859010, %2707
  %2709 = bitcast i32 %2708 to float
  %2710 = fmul fast float %2709, 2.000000e+00
  %2711 = bitcast float %2220 to i32
  %2712 = ashr i32 %2711, 1
  %2713 = add nsw i32 %2712, 532487669
  %2714 = bitcast i32 %2713 to float
  %2715 = fsub fast float 1.000000e+00, %2714
  %2716 = bitcast float %2715 to i32
  %2717 = sub nsw i32 2129859010, %2716
  %2718 = bitcast i32 %2717 to float
  %2719 = fmul fast float %2718, 2.000000e+00
  %2720 = fsub fast float 0x4002A9FBE0000000, %2701
  %2721 = fadd fast float %2701, 0x3FD54FDF00000000
  %2722 = bitcast float %2721 to i32
  %2723 = sub nsw i32 2129859010, %2722
  %2724 = bitcast i32 %2723 to float
  %2725 = fmul fast float %2724, %2720
  %2726 = fmul fast float %2725, %2725
  %2727 = fsub fast float 0x4002A9FBE0000000, %2710
  %2728 = fadd fast float %2710, 0x3FD54FDF00000000
  %2729 = bitcast float %2728 to i32
  %2730 = sub nsw i32 2129859010, %2729
  %2731 = bitcast i32 %2730 to float
  %2732 = fmul fast float %2731, %2727
  %2733 = fmul fast float %2732, %2732
  %2734 = fsub fast float 0x4002A9FBE0000000, %2719
  %2735 = fadd fast float %2719, 0x3FD54FDF00000000
  %2736 = bitcast float %2735 to i32
  %2737 = sub nsw i32 2129859010, %2736
  %2738 = bitcast i32 %2737 to float
  %2739 = fmul fast float %2738, %2734
  %2740 = fmul fast float %2739, %2739
  %2741 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2726)  ; FMax(a,b)
  %2742 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2733)  ; FMax(a,b)
  %2743 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2740)  ; FMax(a,b)
  %2744 = fsub fast float 1.000000e+00, %2629
  %2745 = fadd fast float %2744, %2645
  %2746 = call float @dx.op.unary.f32(i32 7, float %2745)  ; Saturate(value)
  %2747 = fsub fast float 1.000000e+00, %2609
  %2748 = fmul fast float %2687, %2747
  %2749 = fmul fast float %2690, %2690
  %2750 = fmul fast float %2749, %2748
  %2751 = fmul fast float %2750, %2692
  %2752 = fmul fast float %2747, 0xBFE99999A0000000
  %2753 = fmul fast float %2752, %2638
  %2754 = fmul fast float %2753, %2649
  %2755 = fadd fast float %2754, 1.000000e+00
  %2756 = fadd fast float %2221, -1.000000e+00
  %2757 = fmul fast float %2755, %2756
  %2758 = fadd fast float %2757, 1.000000e+00
  %2759 = fsub fast float %2741, %2218
  %2760 = fsub fast float %2742, %2219
  %2761 = fsub fast float %2743, %2220
  %2762 = fmul fast float %2751, %2759
  %2763 = fmul fast float %2751, %2760
  %2764 = fmul fast float %2751, %2761
  %2765 = fadd fast float %2762, %2218
  %2766 = fadd fast float %2763, %2219
  %2767 = fadd fast float %2764, %2220
  %2768 = fsub fast float %53, %2197
  %2769 = fsub fast float %54, %2198
  %2770 = fsub fast float %55, %2199
  %2771 = fmul fast float %2751, %2768
  %2772 = fmul fast float %2751, %2769
  %2773 = fmul fast float %2751, %2770
  %2774 = fadd fast float %2771, %2197
  %2775 = fadd fast float %2772, %2198
  %2776 = fadd fast float %2773, %2199
  %2777 = fmul fast float %2751, %2746
  %2778 = call float @dx.op.unary.f32(i32 7, float %2758)  ; Saturate(value)
  %2779 = fsub fast float 1.000000e+00, %2778
  %2780 = fmul fast float %2777, %2779
  %2781 = fadd fast float %2780, %2778
  %2782 = fsub fast float 1.000000e+00, %2181
  %2783 = fmul fast float %2751, %2782
  %2784 = fadd fast float %2783, %2181
  %2785 = call float @dx.op.dot3.f32(i32 55, float %2774, float %2775, float %2776, float %2774, float %2775, float %2776)  ; Dot3(ax,ay,az,bx,by,bz)
  %2786 = call float @dx.op.unary.f32(i32 25, float %2785)  ; Rsqrt(value)
  %2787 = fmul fast float %2774, %2786
  %2788 = fmul fast float %2775, %2786
  %2789 = fmul fast float %2776, %2786
  br label %2790

; <label>:2790                                    ; preds = %2622, %2615
  %2791 = phi float [ %2621, %2615 ], [ %2628, %2622 ]
  %2792 = phi float [ %2620, %2615 ], [ %2626, %2622 ]
  %2793 = phi float [ %2619, %2615 ], [ %2624, %2622 ]
  %2794 = phi float [ %2618, %2615 ], [ %2627, %2622 ]
  %2795 = phi float [ %2617, %2615 ], [ %2625, %2622 ]
  %2796 = phi float [ %2616, %2615 ], [ %2623, %2622 ]
  %2797 = phi float [ %2197, %2615 ], [ %2787, %2622 ]
  %2798 = phi float [ %2198, %2615 ], [ %2788, %2622 ]
  %2799 = phi float [ %2199, %2615 ], [ %2789, %2622 ]
  %2800 = phi float [ %2218, %2615 ], [ %2765, %2622 ]
  %2801 = phi float [ %2219, %2615 ], [ %2766, %2622 ]
  %2802 = phi float [ %2220, %2615 ], [ %2767, %2622 ]
  %2803 = phi float [ %2233, %2615 ], [ %2674, %2622 ]
  %2804 = phi float [ %2234, %2615 ], [ %2675, %2622 ]
  %2805 = phi float [ %2235, %2615 ], [ %2676, %2622 ]
  %2806 = phi float [ %2221, %2615 ], [ %2781, %2622 ]
  %2807 = phi float [ %2181, %2615 ], [ %2784, %2622 ]
  %2808 = select i1 %188, float 0.000000e+00, float %2802
  %2809 = call float @dx.op.dot3.f32(i32 55, float %2797, float %2798, float %2799, float %2793, float %2792, float %2791)  ; Dot3(ax,ay,az,bx,by,bz)
  %2810 = call float @dx.op.unary.f32(i32 7, float %2809)  ; Saturate(value)
  %2811 = call float @dx.op.dot3.f32(i32 55, float %2796, float %2795, float %2794, float %2797, float %2798, float %2799)  ; Dot3(ax,ay,az,bx,by,bz)
  %2812 = fmul fast float %2811, 2.000000e+00
  %2813 = fmul fast float %2812, %2797
  %2814 = fmul fast float %2812, %2798
  %2815 = fmul fast float %2812, %2799
  %2816 = fsub fast float %2796, %2813
  %2817 = fsub fast float %2795, %2814
  %2818 = fsub fast float %2794, %2815
  %2819 = call float @dx.op.binary.f32(i32 36, float %2807, float 1.000000e+00)  ; FMin(a,b)
  %2820 = fsub fast float 1.000000e+00, %2807
  %2821 = bitcast float %2820 to i32
  %2822 = sub nsw i32 2129859010, %2821
  %2823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2824 = extractvalue %dx.types.CBufRet.f32 %2823, 0
  %2825 = extractvalue %dx.types.CBufRet.f32 %2823, 1
  %2826 = fadd fast float %2824, %117
  %2827 = fadd fast float %2825, %118
  %2828 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2829 = extractvalue %dx.types.CBufRet.i32 %2828, 0
  %2830 = icmp eq i32 %2829, 1
  br i1 %2830, label %2831, label %2866

; <label>:2831                                    ; preds = %2790
  %2832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2833 = extractvalue %dx.types.CBufRet.f32 %2832, 0
  %2834 = extractvalue %dx.types.CBufRet.f32 %2832, 1
  %2835 = fsub fast float %2826, %2833
  %2836 = fsub fast float %2827, %2834
  %2837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2838 = extractvalue %dx.types.CBufRet.f32 %2837, 0
  %2839 = extractvalue %dx.types.CBufRet.f32 %2837, 1
  %2840 = fmul fast float %2835, %2838
  %2841 = fmul fast float %2836, %2839
  %2842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %2840, float %2841, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2843 = extractvalue %dx.types.ResRet.f32 %2842, 0
  %2844 = fcmp fast ogt float %2843, 0.000000e+00
  %2845 = extractvalue %dx.types.CBufRet.i32 %2828, 3
  %2846 = icmp ne i32 %2845, 0
  %2847 = and i1 %2844, %2846
  br i1 %2847, label %2848, label %2866, !dx.controlflow.hints !79

; <label>:2848                                    ; preds = %2831
  %2849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2850 = extractvalue %dx.types.CBufRet.f32 %2849, 0
  %2851 = extractvalue %dx.types.CBufRet.f32 %2849, 1
  %2852 = fsub fast float %2826, %2850
  %2853 = fsub fast float %2827, %2851
  %2854 = fmul fast float %2852, %2852
  %2855 = fmul fast float %2853, %2853
  %2856 = fadd fast float %2854, %2855
  %2857 = uitofp i32 %2845 to float
  %2858 = fmul fast float %2857, %2857
  %2859 = fcmp fast ogt float %2856, %2858
  br i1 %2859, label %2866, label %2860

; <label>:2860                                    ; preds = %2848
  %2861 = call float @dx.op.unary.f32(i32 24, float %2856)  ; Sqrt(value)
  %2862 = fsub fast float %2857, %2861
  %2863 = fmul fast float %2862, 0x3F75555560000000
  %2864 = call float @dx.op.unary.f32(i32 7, float %2863)  ; Saturate(value)
  %2865 = call float @dx.op.binary.f32(i32 36, float %2864, float %2843)  ; FMin(a,b)
  br label %2866

; <label>:2866                                    ; preds = %2860, %2848, %2831, %2790
  %2867 = phi float [ 1.000000e+00, %2790 ], [ %2865, %2860 ], [ %2843, %2831 ], [ 0.000000e+00, %2848 ]
  %2868 = fcmp fast ogt float %2867, 0.000000e+00
  br i1 %2868, label %2869, label %2967, !dx.controlflow.hints !80

; <label>:2869                                    ; preds = %2866
  %2870 = fadd fast float %148, 5.000000e-01
  %2871 = call float @dx.op.unary.f32(i32 27, float %2870)  ; Round_ni(value)
  %2872 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %146, float %147, float %2871, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2873 = extractvalue %dx.types.ResRet.f32 %2872, 0
  %2874 = extractvalue %dx.types.ResRet.f32 %2872, 1
  %2875 = extractvalue %dx.types.ResRet.f32 %2872, 2
  %2876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2877 = extractvalue %dx.types.CBufRet.f32 %2876, 3
  %2878 = fmul fast float %2877, %2873
  %2879 = fmul fast float %2877, %2874
  %2880 = fmul fast float %2877, %2875
  %2881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %146, float %147, float %2871, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2882 = extractvalue %dx.types.ResRet.f32 %2881, 0
  %2883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %146, float %147, float %2871, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2884 = extractvalue %dx.types.ResRet.f32 %2883, 0
  %2885 = extractvalue %dx.types.ResRet.f32 %2883, 1
  %2886 = fmul fast float %2884, 2.000000e+00
  %2887 = fmul fast float %2885, 2.000000e+00
  %2888 = fadd fast float %2886, -1.000000e+00
  %2889 = fadd fast float %2887, -1.000000e+00
  %2890 = fadd fast float %2888, %2889
  %2891 = fmul fast float %2890, 5.000000e-01
  %2892 = fsub fast float %2888, %2889
  %2893 = fmul fast float %2892, 5.000000e-01
  %2894 = call float @dx.op.unary.f32(i32 6, float %2891)  ; FAbs(value)
  %2895 = fsub fast float 1.000000e+00, %2894
  %2896 = call float @dx.op.unary.f32(i32 6, float %2893)  ; FAbs(value)
  %2897 = fsub fast float %2895, %2896
  %2898 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2897)  ; FMax(a,b)
  %2899 = call float @dx.op.dot3.f32(i32 55, float %2891, float %2893, float %2898, float %2891, float %2893, float %2898)  ; Dot3(ax,ay,az,bx,by,bz)
  %2900 = bitcast float %2899 to i32
  %2901 = ashr i32 %2900, 1
  %2902 = sub nsw i32 1597250115, %2901
  %2903 = bitcast i32 %2902 to float
  %2904 = fmul fast float %2903, %2891
  %2905 = fmul fast float %2903, %2893
  %2906 = fmul fast float %2903, %2898
  %2907 = fsub fast float 1.000000e+00, %2882
  %2908 = fdiv fast float %2907, %2906
  %2909 = fmul fast float %2906, %53
  %2910 = fmul fast float %2906, %54
  %2911 = fmul fast float %2906, %55
  %2912 = fmul fast float %2904, %49
  %2913 = fmul fast float %2904, %50
  %2914 = fmul fast float %2904, %51
  %2915 = fadd fast float %2909, %2912
  %2916 = fadd fast float %2910, %2913
  %2917 = fadd fast float %2911, %2914
  %2918 = fmul fast float %2905, %81
  %2919 = fmul fast float %2905, %82
  %2920 = fmul fast float %2905, %83
  %2921 = fadd fast float %2915, %2918
  %2922 = fadd fast float %2916, %2919
  %2923 = fadd fast float %2917, %2920
  %2924 = call float @dx.op.dot3.f32(i32 55, float %2921, float %2922, float %2923, float %2921, float %2922, float %2923)  ; Dot3(ax,ay,az,bx,by,bz)
  %2925 = call float @dx.op.unary.f32(i32 25, float %2924)  ; Rsqrt(value)
  %2926 = fmul fast float %2921, %2925
  %2927 = fmul fast float %2922, %2925
  %2928 = fmul fast float %2923, %2925
  %2929 = call float @dx.op.dot3.f32(i32 55, float %2797, float %2798, float %2799, float %2797, float %2798, float %2799)  ; Dot3(ax,ay,az,bx,by,bz)
  %2930 = call float @dx.op.unary.f32(i32 7, float %2929)  ; Saturate(value)
  %2931 = fmul fast float %2930, 5.000000e-01
  %2932 = fadd fast float %2931, 5.000000e-01
  %2933 = fmul fast float %2932, %2882
  %2934 = call float @dx.op.dot3.f32(i32 55, float %2797, float %2798, float %2799, float %2926, float %2927, float %2928)  ; Dot3(ax,ay,az,bx,by,bz)
  %2935 = call float @dx.op.unary.f32(i32 7, float %2934)  ; Saturate(value)
  %2936 = fmul fast float %2935, %2908
  %2937 = fadd fast float %2933, %2936
  %2938 = fsub fast float 5.000000e-01, %2931
  %2939 = fmul fast float %2938, %2803
  %2940 = fmul fast float %2938, %2804
  %2941 = fmul fast float %2938, %2805
  %2942 = fadd fast float %2937, %2939
  %2943 = fmul fast float %2942, %2878
  %2944 = fadd fast float %2937, %2940
  %2945 = fmul fast float %2944, %2879
  %2946 = fadd fast float %2937, %2941
  %2947 = fmul fast float %2946, %2880
  %2948 = call float @dx.op.dot3.f32(i32 55, float %2816, float %2817, float %2818, float %2797, float %2798, float %2799)  ; Dot3(ax,ay,az,bx,by,bz)
  %2949 = call float @dx.op.unary.f32(i32 7, float %2948)  ; Saturate(value)
  %2950 = fmul fast float %2949, 5.000000e-01
  %2951 = fadd fast float %2950, 5.000000e-01
  %2952 = fmul fast float %2951, %2882
  %2953 = call float @dx.op.dot3.f32(i32 55, float %2816, float %2817, float %2818, float %2926, float %2927, float %2928)  ; Dot3(ax,ay,az,bx,by,bz)
  %2954 = call float @dx.op.unary.f32(i32 7, float %2953)  ; Saturate(value)
  %2955 = fmul fast float %2954, %2908
  %2956 = fadd fast float %2952, %2955
  %2957 = fsub fast float 5.000000e-01, %2950
  %2958 = fmul fast float %2957, %2803
  %2959 = fmul fast float %2957, %2804
  %2960 = fmul fast float %2957, %2805
  %2961 = fadd fast float %2956, %2958
  %2962 = fmul fast float %2961, %2878
  %2963 = fadd fast float %2956, %2959
  %2964 = fmul fast float %2963, %2879
  %2965 = fadd fast float %2956, %2960
  %2966 = fmul fast float %2965, %2880
  br label %2967

; <label>:2967                                    ; preds = %2869, %2866
  %2968 = phi float [ %2962, %2869 ], [ 0.000000e+00, %2866 ]
  %2969 = phi float [ %2964, %2869 ], [ 0.000000e+00, %2866 ]
  %2970 = phi float [ %2966, %2869 ], [ 0.000000e+00, %2866 ]
  %2971 = phi float [ %2943, %2869 ], [ 0.000000e+00, %2866 ]
  %2972 = phi float [ %2945, %2869 ], [ 0.000000e+00, %2866 ]
  %2973 = phi float [ %2947, %2869 ], [ 0.000000e+00, %2866 ]
  %2974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2975 = extractvalue %dx.types.CBufRet.f32 %2974, 0
  %2976 = fcmp fast ogt float %2975, 0.000000e+00
  %2977 = and i1 %2868, %2976
  br i1 %2977, label %2978, label %3182, !dx.controlflow.hints !81

; <label>:2978                                    ; preds = %2967
  %2979 = extractvalue %dx.types.CBufRet.f32 %2823, 2
  %2980 = fadd fast float %2979, %119
  %2981 = fmul fast float %2797, 3.200000e+01
  %2982 = fmul fast float %2798, 3.200000e+01
  %2983 = fadd fast float %2826, %2981
  %2984 = fadd fast float %2827, %2982
  %2985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2986 = extractvalue %dx.types.CBufRet.f32 %2985, 0
  %2987 = extractvalue %dx.types.CBufRet.f32 %2985, 1
  %2988 = fsub fast float %2983, %2986
  %2989 = fsub fast float %2984, %2987
  %2990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2991 = extractvalue %dx.types.CBufRet.f32 %2990, 0
  %2992 = extractvalue %dx.types.CBufRet.f32 %2990, 1
  %2993 = fmul fast float %2988, %2991
  %2994 = fmul fast float %2989, %2992
  %2995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2996 = extractvalue %dx.types.CBufRet.f32 %2995, 0
  %2997 = extractvalue %dx.types.CBufRet.f32 %2995, 1
  %2998 = fsub fast float %2826, %2996
  %2999 = fsub fast float %2827, %2997
  %3000 = fmul fast float %2998, %2998
  %3001 = fmul fast float %2999, %2999
  %3002 = fadd fast float %3000, %3001
  %3003 = call float @dx.op.unary.f32(i32 24, float %3002)  ; Sqrt(value)
  %3004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3005 = extractvalue %dx.types.CBufRet.f32 %3004, 0
  %3006 = extractvalue %dx.types.CBufRet.f32 %3004, 1
  %3007 = fsub fast float %3003, %3005
  %3008 = fdiv fast float %3007, %3006
  %3009 = call float @dx.op.unary.f32(i32 7, float %3008)  ; Saturate(value)
  %3010 = fmul fast float %3009, 2.000000e+00
  %3011 = fsub fast float 3.000000e+00, %3010
  %3012 = fmul fast float %3009, %3009
  %3013 = fmul fast float %3012, %3011
  %3014 = fcmp fast oge float %2993, 0.000000e+00
  %3015 = fcmp fast ole float %2993, 1.000000e+00
  %3016 = and i1 %3015, %3014
  %3017 = fcmp fast oge float %2994, 0.000000e+00
  %3018 = and i1 %3017, %3016
  %3019 = fcmp fast ole float %2994, 1.000000e+00
  %3020 = and i1 %3019, %3018
  %3021 = fcmp fast ogt float %3013, 0.000000e+00
  %3022 = and i1 %3021, %3020
  br i1 %3022, label %3023, label %3146, !dx.controlflow.hints !82

; <label>:3023                                    ; preds = %2978
  %3024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3025 = extractvalue %dx.types.CBufRet.f32 %3024, 2
  %3026 = extractvalue %dx.types.CBufRet.f32 %3024, 3
  %3027 = fmul fast float %3025, %2993
  %3028 = fmul fast float %3026, %2994
  %3029 = call float @dx.op.unary.f32(i32 27, float %3027)  ; Round_ni(value)
  %3030 = call float @dx.op.unary.f32(i32 27, float %3028)  ; Round_ni(value)
  %3031 = fptosi float %3029 to i32
  %3032 = fptosi float %3030 to i32
  %3033 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3031, i32 %3032, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3034 = extractvalue %dx.types.ResRet.i32 %3033, 0
  %3035 = lshr i32 %3034, 16
  %3036 = icmp eq i32 %3035, 65535
  br i1 %3036, label %3146, label %3037

; <label>:3037                                    ; preds = %3023
  %3038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3039 = extractvalue %dx.types.CBufRet.f32 %3038, 0
  %3040 = fmul fast float %3039, %2993
  %3041 = extractvalue %dx.types.CBufRet.f32 %3038, 1
  %3042 = fadd fast float %3040, %3041
  %3043 = extractvalue %dx.types.CBufRet.f32 %3038, 2
  %3044 = fmul fast float %3043, %2994
  %3045 = extractvalue %dx.types.CBufRet.f32 %3038, 3
  %3046 = fadd fast float %3044, %3045
  %3047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3042, float %3046, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3048 = extractvalue %dx.types.ResRet.f32 %3047, 0
  %3049 = extractvalue %dx.types.ResRet.f32 %3047, 1
  %3050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3051 = extractvalue %dx.types.CBufRet.f32 %3050, 1
  %3052 = extractvalue %dx.types.CBufRet.f32 %3050, 0
  %3053 = fsub fast float %3051, %3052
  %3054 = fmul fast float %3053, %3048
  %3055 = fadd fast float %3054, %3052
  %3056 = extractvalue %dx.types.CBufRet.f32 %3050, 3
  %3057 = extractvalue %dx.types.CBufRet.f32 %3050, 2
  %3058 = fsub fast float %3056, %3057
  %3059 = fmul fast float %3058, %3049
  %3060 = fadd fast float %3059, %3057
  %3061 = fsub fast float %2980, %3055
  %3062 = fsub fast float %3060, %3055
  %3063 = fdiv fast float %3061, %3062
  %3064 = call float @dx.op.unary.f32(i32 7, float %3063)  ; Saturate(value)
  %3065 = extractvalue %dx.types.CBufRet.f32 %2974, 1
  %3066 = extractvalue %dx.types.CBufRet.f32 %3024, 0
  %3067 = extractvalue %dx.types.CBufRet.f32 %3024, 1
  %3068 = fmul fast float %3066, %2993
  %3069 = fmul fast float %3067, %2994
  %3070 = fmul fast float %3068, 1.250000e-01
  %3071 = fmul fast float %3069, 1.250000e-01
  %3072 = call float @dx.op.unary.f32(i32 27, float %3070)  ; Round_ni(value)
  %3073 = call float @dx.op.unary.f32(i32 27, float %3071)  ; Round_ni(value)
  %3074 = fmul fast float %3072, 8.000000e+00
  %3075 = fmul fast float %3073, 8.000000e+00
  %3076 = fsub fast float %3068, %3074
  %3077 = fsub fast float %3069, %3075
  %3078 = fadd fast float %3076, 5.000000e-01
  %3079 = fadd fast float %3077, 5.000000e-01
  %3080 = and i32 %3035, 255
  %3081 = lshr i32 %3034, 24
  %3082 = mul nuw nsw i32 %3080, 9
  %3083 = uitofp i32 %3082 to float
  %3084 = mul nuw nsw i32 %3081, 9
  %3085 = uitofp i32 %3084 to float
  %3086 = fadd fast float %3078, %3083
  %3087 = fadd fast float %3079, %3085
  %3088 = fdiv fast float %3086, %2975
  %3089 = fdiv fast float %3087, %3065
  %3090 = fmul fast float %3064, 4.375000e-01
  %3091 = fadd fast float %3090, 3.125000e-02
  %3092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3088, float %3089, float %3091, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3093 = extractvalue %dx.types.ResRet.f32 %3092, 0
  %3094 = extractvalue %dx.types.ResRet.f32 %3092, 1
  %3095 = extractvalue %dx.types.ResRet.f32 %3092, 2
  %3096 = fadd fast float %3090, 5.312500e-01
  %3097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3088, float %3089, float %3096, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3098 = extractvalue %dx.types.ResRet.f32 %3097, 0
  %3099 = extractvalue %dx.types.ResRet.f32 %3097, 1
  %3100 = extractvalue %dx.types.ResRet.f32 %3097, 2
  %3101 = fmul fast float %3098, 2.000000e+00
  %3102 = fmul fast float %3099, 2.000000e+00
  %3103 = fmul fast float %3100, 2.000000e+00
  %3104 = fadd fast float %3101, -1.000000e+00
  %3105 = fadd fast float %3102, -1.000000e+00
  %3106 = fadd fast float %3103, -1.000000e+00
  %3107 = fmul fast float %3104, %3104
  %3108 = fmul fast float %3105, %3105
  %3109 = fadd fast float %3107, %3108
  %3110 = fmul fast float %3106, %3106
  %3111 = fadd fast float %3109, %3110
  %3112 = call float @dx.op.unary.f32(i32 24, float %3111)  ; Sqrt(value)
  %3113 = fcmp fast ogt float %3112, 0.000000e+00
  br i1 %3113, label %3114, label %3118

; <label>:3114                                    ; preds = %3037
  %3115 = fdiv fast float %3104, %3112
  %3116 = fdiv fast float %3105, %3112
  %3117 = fdiv fast float %3106, %3112
  br label %3118

; <label>:3118                                    ; preds = %3114, %3037
  %3119 = phi float [ %3115, %3114 ], [ 0.000000e+00, %3037 ]
  %3120 = phi float [ %3116, %3114 ], [ 0.000000e+00, %3037 ]
  %3121 = phi float [ %3117, %3114 ], [ 0.000000e+00, %3037 ]
  %3122 = call float @dx.op.dot3.f32(i32 55, float %3119, float %3120, float %3121, float %2797, float %2798, float %2799)  ; Dot3(ax,ay,az,bx,by,bz)
  %3123 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3122)  ; FMax(a,b)
  %3124 = fmul fast float %3123, 0x400C5BF8A0000000
  %3125 = fmul fast float %3093, %3013
  %3126 = fmul fast float %3125, %3124
  %3127 = fmul fast float %3094, %3013
  %3128 = fmul fast float %3127, %3124
  %3129 = fmul fast float %3095, %3013
  %3130 = fmul fast float %3129, %3124
  %3131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3132 = extractvalue %dx.types.CBufRet.f32 %3131, 3
  %3133 = fmul fast float %3126, %3132
  %3134 = fmul fast float %3128, %3132
  %3135 = fmul fast float %3130, %3132
  %3136 = fcmp fast ogt float %2980, %3060
  br i1 %3136, label %3137, label %3146

; <label>:3137                                    ; preds = %3118
  %3138 = fmul fast float %3062, 0x3FC24924A0000000
  %3139 = fsub fast float %2980, %3060
  %3140 = fdiv fast float %3139, %3138
  %3141 = call float @dx.op.unary.f32(i32 7, float %3140)  ; Saturate(value)
  %3142 = fsub fast float 1.000000e+00, %3141
  %3143 = fmul fast float %3142, %3133
  %3144 = fmul fast float %3142, %3134
  %3145 = fmul fast float %3142, %3135
  br label %3146

; <label>:3146                                    ; preds = %3137, %3118, %3023, %2978
  %3147 = phi float [ %3145, %3137 ], [ %3135, %3118 ], [ 0.000000e+00, %3023 ], [ 0.000000e+00, %2978 ]
  %3148 = phi float [ %3144, %3137 ], [ %3134, %3118 ], [ 0.000000e+00, %3023 ], [ 0.000000e+00, %2978 ]
  %3149 = phi float [ %3143, %3137 ], [ %3133, %3118 ], [ 0.000000e+00, %3023 ], [ 0.000000e+00, %2978 ]
  %3150 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3149)  ; FMax(a,b)
  %3151 = fmul fast float %3150, 0x3FD20DD760000000
  %3152 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2816, float %2817, float %2818)  ; Dot3(ax,ay,az,bx,by,bz)
  %3153 = fmul fast float %3152, 0x3FDF454380000000
  %3154 = fmul fast float %3152, %3152
  %3155 = fmul fast float %3154, 0x3FEE471020000000
  %3156 = fadd fast float %3155, 0xBFD42F6020000000
  %3157 = call float @dx.op.dot3.f32(i32 55, float %3150, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3153, float %3156)  ; Dot3(ax,ay,az,bx,by,bz)
  %3158 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3148)  ; FMax(a,b)
  %3159 = fmul fast float %3158, 0x3FD20DD760000000
  %3160 = call float @dx.op.dot3.f32(i32 55, float %3158, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3153, float %3156)  ; Dot3(ax,ay,az,bx,by,bz)
  %3161 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3147)  ; FMax(a,b)
  %3162 = fmul fast float %3161, 0x3FD20DD760000000
  %3163 = call float @dx.op.dot3.f32(i32 55, float %3161, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3153, float %3156)  ; Dot3(ax,ay,az,bx,by,bz)
  %3164 = call float @dx.op.binary.f32(i32 35, float %3151, float 0.000000e+00)  ; FMax(a,b)
  %3165 = call float @dx.op.binary.f32(i32 35, float %3159, float 0.000000e+00)  ; FMax(a,b)
  %3166 = call float @dx.op.binary.f32(i32 35, float %3162, float 0.000000e+00)  ; FMax(a,b)
  %3167 = call float @dx.op.binary.f32(i32 35, float %3157, float 0.000000e+00)  ; FMax(a,b)
  %3168 = call float @dx.op.binary.f32(i32 35, float %3160, float 0.000000e+00)  ; FMax(a,b)
  %3169 = call float @dx.op.binary.f32(i32 35, float %3163, float 0.000000e+00)  ; FMax(a,b)
  %3170 = fmul fast float %3164, %2867
  %3171 = fmul fast float %3165, %2867
  %3172 = fmul fast float %3166, %2867
  %3173 = fadd fast float %3170, %2971
  %3174 = fadd fast float %3171, %2972
  %3175 = fadd fast float %3172, %2973
  %3176 = fmul fast float %3167, %2867
  %3177 = fmul fast float %3168, %2867
  %3178 = fmul fast float %3169, %2867
  %3179 = fadd fast float %3176, %2968
  %3180 = fadd fast float %3177, %2969
  %3181 = fadd fast float %3178, %2970
  br label %3182

; <label>:3182                                    ; preds = %3146, %2967
  %3183 = phi float [ %3179, %3146 ], [ %2968, %2967 ]
  %3184 = phi float [ %3180, %3146 ], [ %2969, %2967 ]
  %3185 = phi float [ %3181, %3146 ], [ %2970, %2967 ]
  %3186 = phi float [ %3173, %3146 ], [ %2971, %2967 ]
  %3187 = phi float [ %3174, %3146 ], [ %2972, %2967 ]
  %3188 = phi float [ %3175, %3146 ], [ %2973, %2967 ]
  %3189 = fcmp fast olt float %2867, 1.000000e+00
  br i1 %3189, label %3190, label %4008, !dx.controlflow.hints !83

; <label>:3190                                    ; preds = %3182
  %3191 = extractvalue %dx.types.CBufRet.f32 %2823, 2
  %3192 = fadd fast float %3191, %119
  %3193 = fmul fast float %2797, 3.200000e+01
  %3194 = fmul fast float %2798, 3.200000e+01
  %3195 = fadd fast float %2826, %3193
  %3196 = fadd fast float %2827, %3194
  %3197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3198 = extractvalue %dx.types.CBufRet.f32 %3197, 0
  %3199 = extractvalue %dx.types.CBufRet.f32 %3197, 1
  %3200 = fsub fast float %3195, %3198
  %3201 = fsub fast float %3196, %3199
  %3202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3203 = extractvalue %dx.types.CBufRet.f32 %3202, 0
  %3204 = extractvalue %dx.types.CBufRet.f32 %3202, 1
  %3205 = fmul fast float %3200, %3203
  %3206 = fmul fast float %3201, %3204
  %3207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3208 = extractvalue %dx.types.CBufRet.f32 %3207, 0
  %3209 = fmul fast float %3205, %3208
  %3210 = extractvalue %dx.types.CBufRet.f32 %3207, 1
  %3211 = fadd fast float %3209, %3210
  %3212 = extractvalue %dx.types.CBufRet.f32 %3207, 2
  %3213 = fmul fast float %3212, %3206
  %3214 = extractvalue %dx.types.CBufRet.f32 %3207, 3
  %3215 = fadd fast float %3213, %3214
  %3216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3211, float %3215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3217 = extractvalue %dx.types.ResRet.f32 %3216, 0
  %3218 = extractvalue %dx.types.ResRet.f32 %3216, 1
  %3219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3220 = extractvalue %dx.types.CBufRet.f32 %3219, 1
  %3221 = extractvalue %dx.types.CBufRet.f32 %3219, 0
  %3222 = fsub fast float %3220, %3221
  %3223 = fmul fast float %3222, %3217
  %3224 = fadd fast float %3223, %3221
  %3225 = extractvalue %dx.types.CBufRet.f32 %3219, 3
  %3226 = extractvalue %dx.types.CBufRet.f32 %3219, 2
  %3227 = fsub fast float %3225, %3226
  %3228 = fmul fast float %3227, %3218
  %3229 = fadd fast float %3228, %3226
  %3230 = fsub fast float %3192, %3224
  %3231 = fsub fast float %3229, %3224
  %3232 = fdiv fast float %3230, %3231
  %3233 = call float @dx.op.unary.f32(i32 7, float %3232)  ; Saturate(value)
  %3234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3235 = extractvalue %dx.types.CBufRet.f32 %3234, 0
  %3236 = fmul fast float %3235, %3233
  %3237 = extractvalue %dx.types.CBufRet.f32 %3234, 1
  %3238 = fadd fast float %3236, %3237
  %3239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %3211, float %3215, float %3238, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3240 = extractvalue %dx.types.ResRet.f32 %3239, 0
  %3241 = extractvalue %dx.types.ResRet.f32 %3239, 1
  %3242 = extractvalue %dx.types.ResRet.f32 %3239, 2
  %3243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3244 = extractvalue %dx.types.CBufRet.f32 %3243, 0
  %3245 = extractvalue %dx.types.CBufRet.f32 %3243, 1
  %3246 = extractvalue %dx.types.CBufRet.f32 %3243, 2
  %3247 = fmul fast float %3244, %3240
  %3248 = fmul fast float %3245, %3241
  %3249 = fmul fast float %3246, %3242
  %3250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3251 = extractvalue %dx.types.CBufRet.f32 %3250, 0
  %3252 = extractvalue %dx.types.CBufRet.f32 %3250, 1
  %3253 = extractvalue %dx.types.CBufRet.f32 %3250, 2
  %3254 = fadd fast float %3247, %3251
  %3255 = fadd fast float %3248, %3252
  %3256 = fadd fast float %3249, %3253
  %3257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3258 = extractvalue %dx.types.CBufRet.f32 %3257, 0
  %3259 = fmul fast float %3258, %3205
  %3260 = extractvalue %dx.types.CBufRet.f32 %3257, 1
  %3261 = fadd fast float %3259, %3260
  %3262 = extractvalue %dx.types.CBufRet.f32 %3257, 2
  %3263 = fmul fast float %3262, %3206
  %3264 = extractvalue %dx.types.CBufRet.f32 %3257, 3
  %3265 = fadd fast float %3263, %3264
  %3266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3267 = extractvalue %dx.types.CBufRet.f32 %3266, 0
  %3268 = extractvalue %dx.types.CBufRet.f32 %3266, 1
  %3269 = extractvalue %dx.types.CBufRet.f32 %3266, 2
  %3270 = extractvalue %dx.types.CBufRet.f32 %3266, 3
  %3271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3272 = extractvalue %dx.types.CBufRet.f32 %3271, 0
  %3273 = extractvalue %dx.types.CBufRet.f32 %3271, 1
  %3274 = extractvalue %dx.types.CBufRet.f32 %3271, 2
  %3275 = extractvalue %dx.types.CBufRet.f32 %3271, 3
  %3276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3261, float %3265, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3277 = extractvalue %dx.types.ResRet.f32 %3276, 0
  %3278 = extractvalue %dx.types.ResRet.f32 %3276, 1
  %3279 = extractvalue %dx.types.ResRet.f32 %3276, 2
  %3280 = extractvalue %dx.types.ResRet.f32 %3276, 3
  %3281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3261, float %3265, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3282 = extractvalue %dx.types.ResRet.f32 %3281, 0
  %3283 = extractvalue %dx.types.ResRet.f32 %3281, 1
  %3284 = extractvalue %dx.types.ResRet.f32 %3281, 2
  %3285 = extractvalue %dx.types.ResRet.f32 %3281, 3
  %3286 = fmul fast float %3277, %3254
  %3287 = fmul fast float %3282, %3254
  %3288 = fmul fast float %3284, %3254
  %3289 = fmul fast float %3280, %3254
  %3290 = fadd fast float %3286, %3267
  %3291 = fadd fast float %3287, %3268
  %3292 = fadd fast float %3288, %3269
  %3293 = fadd fast float %3289, %3270
  %3294 = fmul fast float %3278, %3254
  %3295 = fmul fast float %3283, %3254
  %3296 = fadd fast float %3294, %3272
  %3297 = fadd fast float %3295, %3273
  %3298 = fmul fast float %3279, %3254
  %3299 = fmul fast float %3285, %3254
  %3300 = fadd fast float %3298, %3274
  %3301 = fadd fast float %3299, %3275
  %3302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3261, float %3265, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3303 = extractvalue %dx.types.ResRet.f32 %3302, 0
  %3304 = extractvalue %dx.types.ResRet.f32 %3302, 1
  %3305 = extractvalue %dx.types.ResRet.f32 %3302, 2
  %3306 = extractvalue %dx.types.ResRet.f32 %3302, 3
  %3307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3261, float %3265, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3308 = extractvalue %dx.types.ResRet.f32 %3307, 0
  %3309 = extractvalue %dx.types.ResRet.f32 %3307, 1
  %3310 = extractvalue %dx.types.ResRet.f32 %3307, 2
  %3311 = extractvalue %dx.types.ResRet.f32 %3307, 3
  %3312 = fmul fast float %3303, %3255
  %3313 = fmul fast float %3308, %3255
  %3314 = fmul fast float %3310, %3255
  %3315 = fmul fast float %3306, %3255
  %3316 = fadd fast float %3290, %3312
  %3317 = fadd fast float %3291, %3313
  %3318 = fadd fast float %3292, %3314
  %3319 = fadd fast float %3293, %3315
  %3320 = fmul fast float %3304, %3255
  %3321 = fmul fast float %3309, %3255
  %3322 = fadd fast float %3296, %3320
  %3323 = fadd fast float %3297, %3321
  %3324 = fmul fast float %3305, %3255
  %3325 = fmul fast float %3311, %3255
  %3326 = fadd fast float %3300, %3324
  %3327 = fadd fast float %3301, %3325
  %3328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3261, float %3265, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3329 = extractvalue %dx.types.ResRet.f32 %3328, 0
  %3330 = extractvalue %dx.types.ResRet.f32 %3328, 1
  %3331 = extractvalue %dx.types.ResRet.f32 %3328, 2
  %3332 = extractvalue %dx.types.ResRet.f32 %3328, 3
  %3333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3261, float %3265, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3334 = extractvalue %dx.types.ResRet.f32 %3333, 0
  %3335 = extractvalue %dx.types.ResRet.f32 %3333, 1
  %3336 = extractvalue %dx.types.ResRet.f32 %3333, 2
  %3337 = extractvalue %dx.types.ResRet.f32 %3333, 3
  %3338 = fmul fast float %3329, %3256
  %3339 = fmul fast float %3334, %3256
  %3340 = fmul fast float %3336, %3256
  %3341 = fmul fast float %3332, %3256
  %3342 = fadd fast float %3316, %3338
  %3343 = fadd fast float %3317, %3339
  %3344 = fadd fast float %3318, %3340
  %3345 = fadd fast float %3319, %3341
  %3346 = fmul fast float %3330, %3256
  %3347 = fmul fast float %3335, %3256
  %3348 = fadd fast float %3322, %3346
  %3349 = fadd fast float %3323, %3347
  %3350 = fmul fast float %3331, %3256
  %3351 = fmul fast float %3337, %3256
  %3352 = fadd fast float %3326, %3350
  %3353 = fadd fast float %3327, %3351
  %3354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3355 = extractvalue %dx.types.CBufRet.f32 %3354, 0
  %3356 = fsub fast float %2826, %3355
  %3357 = fsub fast float %3198, %2826
  %3358 = call float @dx.op.binary.f32(i32 35, float %3357, float %3356)  ; FMax(a,b)
  %3359 = extractvalue %dx.types.CBufRet.f32 %3354, 1
  %3360 = fsub fast float %2827, %3359
  %3361 = fsub fast float %3199, %2827
  %3362 = call float @dx.op.binary.f32(i32 35, float %3361, float %3360)  ; FMax(a,b)
  %3363 = call float @dx.op.binary.f32(i32 35, float %3358, float %3362)  ; FMax(a,b)
  %3364 = extractvalue %dx.types.CBufRet.f32 %3202, 3
  %3365 = fmul fast float %3364, %3363
  %3366 = call float @dx.op.unary.f32(i32 7, float %3365)  ; Saturate(value)
  %3367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3368 = extractvalue %dx.types.CBufRet.f32 %3367, 0
  %3369 = extractvalue %dx.types.CBufRet.f32 %3367, 1
  %3370 = extractvalue %dx.types.CBufRet.f32 %3367, 2
  %3371 = extractvalue %dx.types.CBufRet.f32 %3367, 3
  %3372 = fsub fast float %3368, %3342
  %3373 = fsub fast float %3369, %3343
  %3374 = fsub fast float %3370, %3344
  %3375 = fsub fast float %3371, %3345
  %3376 = fmul fast float %3372, %3366
  %3377 = fmul fast float %3373, %3366
  %3378 = fmul fast float %3374, %3366
  %3379 = fmul fast float %3375, %3366
  %3380 = fadd fast float %3376, %3342
  %3381 = fadd fast float %3377, %3343
  %3382 = fadd fast float %3378, %3344
  %3383 = fadd fast float %3379, %3345
  %3384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3385 = extractvalue %dx.types.CBufRet.f32 %3384, 0
  %3386 = extractvalue %dx.types.CBufRet.f32 %3384, 1
  %3387 = fsub fast float %3385, %3348
  %3388 = fsub fast float %3386, %3349
  %3389 = fmul fast float %3387, %3366
  %3390 = fmul fast float %3388, %3366
  %3391 = fadd fast float %3389, %3348
  %3392 = fadd fast float %3390, %3349
  %3393 = extractvalue %dx.types.CBufRet.f32 %3384, 2
  %3394 = extractvalue %dx.types.CBufRet.f32 %3384, 3
  %3395 = fsub fast float %3393, %3352
  %3396 = fsub fast float %3394, %3353
  %3397 = fmul fast float %3395, %3366
  %3398 = fmul fast float %3396, %3366
  %3399 = fadd fast float %3397, %3352
  %3400 = fadd fast float %3398, %3353
  %3401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3402 = extractvalue %dx.types.CBufRet.f32 %3401, 0
  %3403 = fmul fast float %3402, %3380
  %3404 = fmul fast float %3402, %3381
  %3405 = fmul fast float %3402, %3382
  %3406 = fmul fast float %3402, %3383
  %3407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3408 = extractvalue %dx.types.CBufRet.f32 %3407, 0
  %3409 = fmul fast float %3408, %3391
  %3410 = fmul fast float %3408, %3392
  %3411 = fadd fast float %3409, %3403
  %3412 = fadd fast float %3410, %3405
  %3413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3414 = extractvalue %dx.types.CBufRet.f32 %3413, 0
  %3415 = fmul fast float %3414, %3399
  %3416 = fmul fast float %3414, %3400
  %3417 = fadd fast float %3411, %3415
  %3418 = fadd fast float %3412, %3416
  %3419 = extractvalue %dx.types.CBufRet.f32 %3401, 1
  %3420 = fmul fast float %3419, %3380
  %3421 = fmul fast float %3419, %3381
  %3422 = fmul fast float %3419, %3382
  %3423 = fmul fast float %3419, %3383
  %3424 = extractvalue %dx.types.CBufRet.f32 %3407, 1
  %3425 = fmul fast float %3424, %3391
  %3426 = fmul fast float %3424, %3392
  %3427 = fadd fast float %3425, %3420
  %3428 = fadd fast float %3426, %3422
  %3429 = extractvalue %dx.types.CBufRet.f32 %3413, 1
  %3430 = fmul fast float %3429, %3399
  %3431 = fmul fast float %3429, %3400
  %3432 = fadd fast float %3427, %3430
  %3433 = fadd fast float %3428, %3431
  %3434 = extractvalue %dx.types.CBufRet.f32 %3401, 2
  %3435 = fmul fast float %3434, %3380
  %3436 = fmul fast float %3434, %3381
  %3437 = fmul fast float %3434, %3382
  %3438 = fmul fast float %3434, %3383
  %3439 = extractvalue %dx.types.CBufRet.f32 %3407, 2
  %3440 = fmul fast float %3439, %3391
  %3441 = fmul fast float %3439, %3392
  %3442 = fadd fast float %3440, %3435
  %3443 = fadd fast float %3441, %3437
  %3444 = extractvalue %dx.types.CBufRet.f32 %3413, 2
  %3445 = fmul fast float %3444, %3399
  %3446 = fmul fast float %3444, %3400
  %3447 = fadd fast float %3442, %3445
  %3448 = fadd fast float %3443, %3446
  %3449 = fmul fast float %3436, %3436
  %3450 = fmul fast float %3448, %3448
  %3451 = fmul fast float %3438, %3438
  %3452 = fadd fast float %3451, %3449
  %3453 = fadd fast float %3452, %3450
  %3454 = call float @dx.op.unary.f32(i32 24, float %3453)  ; Sqrt(value)
  %3455 = fcmp fast ugt float %3454, 0.000000e+00
  br i1 %3455, label %3456, label %3471

; <label>:3456                                    ; preds = %3190
  %3457 = fsub fast float -0.000000e+00, %3438
  %3458 = fdiv fast float %3457, %3454
  %3459 = fsub fast float -0.000000e+00, %3436
  %3460 = fdiv fast float %3459, %3454
  %3461 = fdiv fast float %3448, %3454
  %3462 = fmul fast float %3447, 0x3FE279A760000000
  %3463 = fmul fast float %3460, %3436
  %3464 = fmul fast float %3461, %3448
  %3465 = fmul fast float %3458, %3438
  %3466 = fadd fast float %3463, %3465
  %3467 = fsub fast float %3466, %3464
  %3468 = call float @dx.op.unary.f32(i32 6, float %3467)  ; FAbs(value)
  %3469 = fadd fast float %3468, 0x3DDB7CDFE0000000
  %3470 = fdiv fast float %3462, %3469
  br label %3471

; <label>:3471                                    ; preds = %3456, %3190
  %3472 = phi float [ %3470, %3456 ], [ 1.000000e+00, %3190 ]
  %3473 = fmul fast float %3421, %3421
  %3474 = fmul fast float %3433, %3433
  %3475 = fmul fast float %3423, %3423
  %3476 = fadd fast float %3475, %3473
  %3477 = fadd fast float %3476, %3474
  %3478 = call float @dx.op.unary.f32(i32 24, float %3477)  ; Sqrt(value)
  %3479 = fcmp fast ugt float %3478, 0.000000e+00
  br i1 %3479, label %3480, label %3495

; <label>:3480                                    ; preds = %3471
  %3481 = fsub fast float -0.000000e+00, %3423
  %3482 = fdiv fast float %3481, %3478
  %3483 = fsub fast float -0.000000e+00, %3421
  %3484 = fdiv fast float %3483, %3478
  %3485 = fdiv fast float %3433, %3478
  %3486 = fmul fast float %3432, 0x3FE279A760000000
  %3487 = fmul fast float %3484, %3421
  %3488 = fmul fast float %3485, %3433
  %3489 = fmul fast float %3482, %3423
  %3490 = fadd fast float %3487, %3489
  %3491 = fsub fast float %3490, %3488
  %3492 = call float @dx.op.unary.f32(i32 6, float %3491)  ; FAbs(value)
  %3493 = fadd fast float %3492, 0x3DDB7CDFE0000000
  %3494 = fdiv fast float %3486, %3493
  br label %3495

; <label>:3495                                    ; preds = %3480, %3471
  %3496 = phi float [ %3494, %3480 ], [ 1.000000e+00, %3471 ]
  %3497 = call float @dx.op.binary.f32(i32 36, float %3496, float %3472)  ; FMin(a,b)
  %3498 = fmul fast float %3404, %3404
  %3499 = fmul fast float %3418, %3418
  %3500 = fmul fast float %3406, %3406
  %3501 = fadd fast float %3500, %3498
  %3502 = fadd fast float %3501, %3499
  %3503 = call float @dx.op.unary.f32(i32 24, float %3502)  ; Sqrt(value)
  %3504 = fcmp fast ugt float %3503, 0.000000e+00
  br i1 %3504, label %3505, label %3520

; <label>:3505                                    ; preds = %3495
  %3506 = fsub fast float -0.000000e+00, %3406
  %3507 = fdiv fast float %3506, %3503
  %3508 = fsub fast float -0.000000e+00, %3404
  %3509 = fdiv fast float %3508, %3503
  %3510 = fdiv fast float %3418, %3503
  %3511 = fmul fast float %3417, 0x3FE279A760000000
  %3512 = fmul fast float %3509, %3404
  %3513 = fmul fast float %3510, %3418
  %3514 = fmul fast float %3507, %3406
  %3515 = fadd fast float %3512, %3514
  %3516 = fsub fast float %3515, %3513
  %3517 = call float @dx.op.unary.f32(i32 6, float %3516)  ; FAbs(value)
  %3518 = fadd fast float %3517, 0x3DDB7CDFE0000000
  %3519 = fdiv fast float %3511, %3518
  br label %3520

; <label>:3520                                    ; preds = %3505, %3495
  %3521 = phi float [ %3519, %3505 ], [ 1.000000e+00, %3495 ]
  %3522 = call float @dx.op.binary.f32(i32 36, float %3521, float %3497)  ; FMin(a,b)
  %3523 = call float @dx.op.unary.f32(i32 7, float %3522)  ; Saturate(value)
  %3524 = fcmp fast olt float %3523, 1.000000e+00
  br i1 %3524, label %3525, label %3535

; <label>:3525                                    ; preds = %3520
  %3526 = fmul fast float %3523, %3404
  %3527 = fmul fast float %3523, %3418
  %3528 = fmul fast float %3523, %3406
  %3529 = fmul fast float %3523, %3421
  %3530 = fmul fast float %3523, %3433
  %3531 = fmul fast float %3523, %3423
  %3532 = fmul fast float %3523, %3436
  %3533 = fmul fast float %3523, %3448
  %3534 = fmul fast float %3523, %3438
  br label %3535

; <label>:3535                                    ; preds = %3525, %3520
  %3536 = phi float [ %3532, %3525 ], [ %3436, %3520 ]
  %3537 = phi float [ %3533, %3525 ], [ %3448, %3520 ]
  %3538 = phi float [ %3534, %3525 ], [ %3438, %3520 ]
  %3539 = phi float [ %3529, %3525 ], [ %3421, %3520 ]
  %3540 = phi float [ %3530, %3525 ], [ %3433, %3520 ]
  %3541 = phi float [ %3531, %3525 ], [ %3423, %3520 ]
  %3542 = phi float [ %3526, %3525 ], [ %3404, %3520 ]
  %3543 = phi float [ %3527, %3525 ], [ %3418, %3520 ]
  %3544 = phi float [ %3528, %3525 ], [ %3406, %3520 ]
  %3545 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3417)  ; FMax(a,b)
  %3546 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3432)  ; FMax(a,b)
  %3547 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3447)  ; FMax(a,b)
  %3548 = fcmp fast oge float %3205, 0.000000e+00
  %3549 = and i1 %3548, %2976
  %3550 = fcmp fast ole float %3205, 1.000000e+00
  %3551 = and i1 %3550, %3549
  %3552 = fcmp fast oge float %3206, 0.000000e+00
  %3553 = and i1 %3552, %3551
  %3554 = fcmp fast ole float %3206, 1.000000e+00
  %3555 = and i1 %3554, %3553
  br i1 %3555, label %3556, label %3701, !dx.controlflow.hints !84

; <label>:3556                                    ; preds = %3535
  %3557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3558 = extractvalue %dx.types.CBufRet.f32 %3557, 2
  %3559 = extractvalue %dx.types.CBufRet.f32 %3557, 3
  %3560 = fmul fast float %3558, %3205
  %3561 = fmul fast float %3559, %3206
  %3562 = call float @dx.op.unary.f32(i32 27, float %3560)  ; Round_ni(value)
  %3563 = call float @dx.op.unary.f32(i32 27, float %3561)  ; Round_ni(value)
  %3564 = fptosi float %3562 to i32
  %3565 = fptosi float %3563 to i32
  %3566 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3564, i32 %3565, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3567 = extractvalue %dx.types.ResRet.i32 %3566, 0
  %3568 = and i32 %3567, 65535
  %3569 = lshr i32 %3567, 16
  %3570 = icmp eq i32 %3568, 65535
  br i1 %3570, label %3607, label %3571

; <label>:3571                                    ; preds = %3556
  %3572 = extractvalue %dx.types.CBufRet.f32 %2974, 1
  %3573 = extractvalue %dx.types.CBufRet.f32 %3557, 0
  %3574 = extractvalue %dx.types.CBufRet.f32 %3557, 1
  %3575 = fmul fast float %3573, %3205
  %3576 = fmul fast float %3574, %3206
  %3577 = fmul fast float %3575, 1.250000e-01
  %3578 = fmul fast float %3576, 1.250000e-01
  %3579 = call float @dx.op.unary.f32(i32 27, float %3577)  ; Round_ni(value)
  %3580 = call float @dx.op.unary.f32(i32 27, float %3578)  ; Round_ni(value)
  %3581 = fmul fast float %3579, 8.000000e+00
  %3582 = fmul fast float %3580, 8.000000e+00
  %3583 = and i32 %3567, 255
  %3584 = lshr i32 %3567, 8
  %3585 = and i32 %3584, 255
  %3586 = mul nuw nsw i32 %3583, 9
  %3587 = uitofp i32 %3586 to float
  %3588 = mul nuw nsw i32 %3585, 9
  %3589 = uitofp i32 %3588 to float
  %3590 = fadd fast float %3587, 5.000000e-01
  %3591 = fadd fast float %3590, %3575
  %3592 = fsub fast float %3591, %3581
  %3593 = fadd fast float %3589, 5.000000e-01
  %3594 = fadd fast float %3593, %3576
  %3595 = fsub fast float %3594, %3582
  %3596 = fdiv fast float %3592, %2975
  %3597 = fdiv fast float %3595, %3572
  %3598 = fmul fast float %3233, 4.375000e-01
  %3599 = fadd fast float %3598, 3.125000e-02
  %3600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3596, float %3597, float %3599, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 0
  %3602 = extractvalue %dx.types.ResRet.f32 %3600, 1
  %3603 = extractvalue %dx.types.ResRet.f32 %3600, 2
  %3604 = fadd fast float %3601, %3545
  %3605 = fadd fast float %3602, %3546
  %3606 = fadd fast float %3603, %3547
  br label %3607

; <label>:3607                                    ; preds = %3571, %3556
  %3608 = phi float [ %3606, %3571 ], [ %3547, %3556 ]
  %3609 = phi float [ %3605, %3571 ], [ %3546, %3556 ]
  %3610 = phi float [ %3604, %3571 ], [ %3545, %3556 ]
  %3611 = icmp eq i32 %3569, 65535
  br i1 %3611, label %3701, label %3612

; <label>:3612                                    ; preds = %3607
  %3613 = extractvalue %dx.types.CBufRet.f32 %2974, 1
  %3614 = extractvalue %dx.types.CBufRet.f32 %3557, 0
  %3615 = extractvalue %dx.types.CBufRet.f32 %3557, 1
  %3616 = fmul fast float %3614, %3205
  %3617 = fmul fast float %3615, %3206
  %3618 = fmul fast float %3616, 1.250000e-01
  %3619 = fmul fast float %3617, 1.250000e-01
  %3620 = call float @dx.op.unary.f32(i32 27, float %3618)  ; Round_ni(value)
  %3621 = call float @dx.op.unary.f32(i32 27, float %3619)  ; Round_ni(value)
  %3622 = fmul fast float %3620, 8.000000e+00
  %3623 = fmul fast float %3621, 8.000000e+00
  %3624 = fsub fast float %3616, %3622
  %3625 = fsub fast float %3617, %3623
  %3626 = fadd fast float %3624, 5.000000e-01
  %3627 = fadd fast float %3625, 5.000000e-01
  %3628 = and i32 %3569, 255
  %3629 = lshr i32 %3567, 24
  %3630 = mul nuw nsw i32 %3628, 9
  %3631 = uitofp i32 %3630 to float
  %3632 = mul nuw nsw i32 %3629, 9
  %3633 = uitofp i32 %3632 to float
  %3634 = fadd fast float %3626, %3631
  %3635 = fadd fast float %3627, %3633
  %3636 = fdiv fast float %3634, %2975
  %3637 = fdiv fast float %3635, %3613
  %3638 = fmul fast float %3233, 4.375000e-01
  %3639 = fadd fast float %3638, 3.125000e-02
  %3640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3636, float %3637, float %3639, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3641 = extractvalue %dx.types.ResRet.f32 %3640, 0
  %3642 = extractvalue %dx.types.ResRet.f32 %3640, 1
  %3643 = extractvalue %dx.types.ResRet.f32 %3640, 2
  %3644 = fadd fast float %3638, 5.312500e-01
  %3645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3636, float %3637, float %3644, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3646 = extractvalue %dx.types.ResRet.f32 %3645, 0
  %3647 = extractvalue %dx.types.ResRet.f32 %3645, 1
  %3648 = extractvalue %dx.types.ResRet.f32 %3645, 2
  %3649 = fmul fast float %3646, 2.000000e+00
  %3650 = fmul fast float %3647, 2.000000e+00
  %3651 = fmul fast float %3648, 2.000000e+00
  %3652 = fadd fast float %3649, -1.000000e+00
  %3653 = fadd fast float %3650, -1.000000e+00
  %3654 = fadd fast float %3651, -1.000000e+00
  %3655 = fmul fast float %3652, %3652
  %3656 = fmul fast float %3653, %3653
  %3657 = fadd fast float %3655, %3656
  %3658 = fmul fast float %3654, %3654
  %3659 = fadd fast float %3657, %3658
  %3660 = call float @dx.op.unary.f32(i32 24, float %3659)  ; Sqrt(value)
  %3661 = fcmp fast ogt float %3660, 0.000000e+00
  br i1 %3661, label %3662, label %3666

; <label>:3662                                    ; preds = %3612
  %3663 = fdiv fast float %3652, %3660
  %3664 = fdiv fast float %3653, %3660
  %3665 = fdiv fast float %3654, %3660
  br label %3666

; <label>:3666                                    ; preds = %3662, %3612
  %3667 = phi float [ %3663, %3662 ], [ 0.000000e+00, %3612 ]
  %3668 = phi float [ %3664, %3662 ], [ 0.000000e+00, %3612 ]
  %3669 = phi float [ %3665, %3662 ], [ 0.000000e+00, %3612 ]
  %3670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3671 = extractvalue %dx.types.CBufRet.f32 %3670, 0
  %3672 = extractvalue %dx.types.CBufRet.f32 %3670, 1
  %3673 = fsub fast float %2826, %3671
  %3674 = fsub fast float %2827, %3672
  %3675 = fmul fast float %3673, %3673
  %3676 = fmul fast float %3674, %3674
  %3677 = fadd fast float %3675, %3676
  %3678 = call float @dx.op.unary.f32(i32 24, float %3677)  ; Sqrt(value)
  %3679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3680 = extractvalue %dx.types.CBufRet.f32 %3679, 0
  %3681 = extractvalue %dx.types.CBufRet.f32 %3679, 1
  %3682 = fsub fast float %3678, %3680
  %3683 = fdiv fast float %3682, %3681
  %3684 = call float @dx.op.unary.f32(i32 7, float %3683)  ; Saturate(value)
  %3685 = fmul fast float %3684, 2.000000e+00
  %3686 = fsub fast float 3.000000e+00, %3685
  %3687 = fmul fast float %3684, %3684
  %3688 = fmul fast float %3687, %3686
  %3689 = call float @dx.op.dot3.f32(i32 55, float %3667, float %3668, float %3669, float %2797, float %2798, float %2799)  ; Dot3(ax,ay,az,bx,by,bz)
  %3690 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3689)  ; FMax(a,b)
  %3691 = fmul fast float %3690, 0x400C5BF8A0000000
  %3692 = fmul fast float %3688, %3641
  %3693 = fmul fast float %3692, %3691
  %3694 = fadd fast float %3693, %3610
  %3695 = fmul fast float %3688, %3642
  %3696 = fmul fast float %3695, %3691
  %3697 = fadd fast float %3696, %3609
  %3698 = fmul fast float %3688, %3643
  %3699 = fmul fast float %3698, %3691
  %3700 = fadd fast float %3699, %3608
  br label %3701

; <label>:3701                                    ; preds = %3666, %3607, %3535
  %3702 = phi float [ %3700, %3666 ], [ %3608, %3607 ], [ %3547, %3535 ]
  %3703 = phi float [ %3697, %3666 ], [ %3609, %3607 ], [ %3546, %3535 ]
  %3704 = phi float [ %3694, %3666 ], [ %3610, %3607 ], [ %3545, %3535 ]
  %3705 = fcmp fast ogt float %3192, %3229
  %3706 = and i1 %3548, %3705
  %3707 = and i1 %3550, %3706
  %3708 = and i1 %3552, %3707
  %3709 = and i1 %3554, %3708
  br i1 %3709, label %3710, label %3767, !dx.controlflow.hints !85

; <label>:3710                                    ; preds = %3701
  %3711 = fmul fast float %3231, 0x3FC24924A0000000
  %3712 = fsub fast float %3192, %3229
  %3713 = fdiv fast float %3712, %3711
  %3714 = call float @dx.op.unary.f32(i32 7, float %3713)  ; Saturate(value)
  %3715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3716 = extractvalue %dx.types.CBufRet.f32 %3715, 0
  %3717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3718 = extractvalue %dx.types.CBufRet.f32 %3717, 0
  %3719 = extractvalue %dx.types.CBufRet.f32 %3717, 1
  %3720 = extractvalue %dx.types.CBufRet.f32 %3717, 2
  %3721 = fsub fast float %3716, %3704
  %3722 = fsub fast float %3718, %3542
  %3723 = fsub fast float %3719, %3543
  %3724 = fsub fast float %3720, %3544
  %3725 = fmul fast float %3721, %3714
  %3726 = fmul fast float %3722, %3714
  %3727 = fmul fast float %3723, %3714
  %3728 = fmul fast float %3724, %3714
  %3729 = fadd fast float %3725, %3704
  %3730 = fadd fast float %3726, %3542
  %3731 = fadd fast float %3727, %3543
  %3732 = fadd fast float %3728, %3544
  %3733 = extractvalue %dx.types.CBufRet.f32 %3715, 1
  %3734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3735 = extractvalue %dx.types.CBufRet.f32 %3734, 0
  %3736 = extractvalue %dx.types.CBufRet.f32 %3734, 1
  %3737 = extractvalue %dx.types.CBufRet.f32 %3734, 2
  %3738 = fsub fast float %3733, %3703
  %3739 = fsub fast float %3735, %3539
  %3740 = fsub fast float %3736, %3540
  %3741 = fsub fast float %3737, %3541
  %3742 = fmul fast float %3738, %3714
  %3743 = fmul fast float %3739, %3714
  %3744 = fmul fast float %3740, %3714
  %3745 = fmul fast float %3741, %3714
  %3746 = fadd fast float %3742, %3703
  %3747 = fadd fast float %3743, %3539
  %3748 = fadd fast float %3744, %3540
  %3749 = fadd fast float %3745, %3541
  %3750 = extractvalue %dx.types.CBufRet.f32 %3715, 2
  %3751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3752 = extractvalue %dx.types.CBufRet.f32 %3751, 0
  %3753 = extractvalue %dx.types.CBufRet.f32 %3751, 1
  %3754 = extractvalue %dx.types.CBufRet.f32 %3751, 2
  %3755 = fsub fast float %3750, %3702
  %3756 = fsub fast float %3752, %3536
  %3757 = fsub fast float %3753, %3537
  %3758 = fsub fast float %3754, %3538
  %3759 = fmul fast float %3755, %3714
  %3760 = fmul fast float %3756, %3714
  %3761 = fmul fast float %3757, %3714
  %3762 = fmul fast float %3758, %3714
  %3763 = fadd fast float %3759, %3702
  %3764 = fadd fast float %3760, %3536
  %3765 = fadd fast float %3761, %3537
  %3766 = fadd fast float %3762, %3538
  br label %3767

; <label>:3767                                    ; preds = %3710, %3701
  %3768 = phi float [ %3763, %3710 ], [ %3702, %3701 ]
  %3769 = phi float [ %3764, %3710 ], [ %3536, %3701 ]
  %3770 = phi float [ %3765, %3710 ], [ %3537, %3701 ]
  %3771 = phi float [ %3766, %3710 ], [ %3538, %3701 ]
  %3772 = phi float [ %3746, %3710 ], [ %3703, %3701 ]
  %3773 = phi float [ %3747, %3710 ], [ %3539, %3701 ]
  %3774 = phi float [ %3748, %3710 ], [ %3540, %3701 ]
  %3775 = phi float [ %3749, %3710 ], [ %3541, %3701 ]
  %3776 = phi float [ %3729, %3710 ], [ %3704, %3701 ]
  %3777 = phi float [ %3730, %3710 ], [ %3542, %3701 ]
  %3778 = phi float [ %3731, %3710 ], [ %3543, %3701 ]
  %3779 = phi float [ %3732, %3710 ], [ %3544, %3701 ]
  %3780 = extractvalue %dx.types.CBufRet.f32 %3354, 3
  %3781 = fmul fast float %3780, %3776
  %3782 = fmul fast float %3780, %3772
  %3783 = fmul fast float %3780, %3768
  %3784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3785 = extractvalue %dx.types.CBufRet.f32 %3784, 3
  %3786 = fmul fast float %3781, %3785
  %3787 = fmul fast float %3782, %3785
  %3788 = fmul fast float %3783, %3785
  %3789 = fmul fast float %3777, 1.500000e+00
  %3790 = fmul fast float %3789, %3780
  %3791 = fmul fast float %3790, %3785
  %3792 = fmul fast float %3778, 1.500000e+00
  %3793 = fmul fast float %3792, %3780
  %3794 = fmul fast float %3793, %3785
  %3795 = fmul fast float %3779, 1.500000e+00
  %3796 = fmul fast float %3795, %3780
  %3797 = fmul fast float %3796, %3785
  %3798 = fmul fast float %3773, 1.500000e+00
  %3799 = fmul fast float %3798, %3780
  %3800 = fmul fast float %3799, %3785
  %3801 = fmul fast float %3774, 1.500000e+00
  %3802 = fmul fast float %3801, %3780
  %3803 = fmul fast float %3802, %3785
  %3804 = fmul fast float %3775, 1.500000e+00
  %3805 = fmul fast float %3804, %3780
  %3806 = fmul fast float %3805, %3785
  %3807 = fmul fast float %3769, 1.500000e+00
  %3808 = fmul fast float %3807, %3780
  %3809 = fmul fast float %3808, %3785
  %3810 = fmul fast float %3770, 1.500000e+00
  %3811 = fmul fast float %3810, %3780
  %3812 = fmul fast float %3811, %3785
  %3813 = fmul fast float %3771, 1.500000e+00
  %3814 = fmul fast float %3813, %3780
  %3815 = fmul fast float %3814, %3785
  %3816 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3786)  ; FMax(a,b)
  %3817 = call float @dx.op.dot3.f32(i32 55, float %3791, float %3794, float %3797, float %3791, float %3794, float %3797)  ; Dot3(ax,ay,az,bx,by,bz)
  %3818 = fcmp fast oeq float %3817, 0.000000e+00
  %3819 = fcmp fast oeq float %3816, 0.000000e+00
  %3820 = or i1 %3819, %3818
  br i1 %3820, label %3850, label %3821

; <label>:3821                                    ; preds = %3767
  %3822 = fsub fast float -0.000000e+00, %3797
  %3823 = fsub fast float -0.000000e+00, %3791
  %3824 = call float @dx.op.unary.f32(i32 24, float %3817)  ; Sqrt(value)
  %3825 = fdiv fast float %3824, %3816
  %3826 = fcmp fast ogt float %3825, 0x3FFB6F8900000000
  %3827 = select i1 %3826, float 0x3FFB6F8900000000, float %3825
  %3828 = fmul fast float %3827, 0x3FE8A23460000000
  %3829 = call float @dx.op.unary.f32(i32 7, float %3828)  ; Saturate(value)
  %3830 = call float @dx.op.binary.f32(i32 35, float %3827, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3831 = fmul fast float %3829, %3816
  %3832 = fmul fast float %3830, 0x3FF279A740000000
  %3833 = fadd fast float %3832, -1.000000e+00
  %3834 = call float @dx.op.dot3.f32(i32 55, float %3822, float %3823, float %3794, float %3822, float %3823, float %3794)  ; Dot3(ax,ay,az,bx,by,bz)
  %3835 = call float @dx.op.unary.f32(i32 25, float %3834)  ; Rsqrt(value)
  %3836 = fmul fast float %3835, %3822
  %3837 = fmul fast float %3835, %3823
  %3838 = fmul fast float %3835, %3794
  %3839 = fmul fast float %3833, %3833
  %3840 = fsub fast float 1.000000e+00, %3839
  %3841 = fmul fast float %3830, 0x40005F8BE0000000
  %3842 = fsub fast float 0x400C5BF8A0000000, %3841
  %3843 = fdiv fast float %3831, %3842
  %3844 = fmul fast float %3843, 0x3FEE31C3C0000000
  %3845 = fmul fast float %3844, %3840
  %3846 = fmul fast float %3830, 0x3FDACB7480000000
  %3847 = fadd fast float %3846, 0xBFD7347680000000
  %3848 = fmul fast float %3847, %3843
  %3849 = fmul fast float %3848, %3840
  br label %3850

; <label>:3850                                    ; preds = %3821, %3767
  %3851 = phi float [ %3836, %3821 ], [ 0.000000e+00, %3767 ]
  %3852 = phi float [ %3837, %3821 ], [ 0.000000e+00, %3767 ]
  %3853 = phi float [ %3838, %3821 ], [ 0.000000e+00, %3767 ]
  %3854 = phi float [ %3845, %3821 ], [ 0.000000e+00, %3767 ]
  %3855 = phi float [ %3849, %3821 ], [ 0.000000e+00, %3767 ]
  %3856 = call float @dx.op.dot3.f32(i32 55, float %3851, float %3852, float %3853, float %2797, float %2798, float %2799)  ; Dot3(ax,ay,az,bx,by,bz)
  %3857 = fmul fast float %3856, %3856
  %3858 = fmul fast float %3857, 0x3FEE471020000000
  %3859 = fadd fast float %3858, 0xBFD42F6020000000
  %3860 = fmul fast float %3816, 0x3FD20DD760000000
  %3861 = fmul fast float %3859, %3855
  %3862 = fmul fast float %3854, 0x3FDF454380000000
  %3863 = fmul fast float %3862, %3856
  %3864 = fadd fast float %3863, %3860
  %3865 = fadd fast float %3864, %3861
  %3866 = call float @dx.op.dot3.f32(i32 55, float %3851, float %3852, float %3853, float %2816, float %2817, float %2818)  ; Dot3(ax,ay,az,bx,by,bz)
  %3867 = fmul fast float %3866, 0x3FDF454380000000
  %3868 = fmul fast float %3866, %3866
  %3869 = fmul fast float %3868, 0x3FEE471020000000
  %3870 = fadd fast float %3869, 0xBFD42F6020000000
  %3871 = call float @dx.op.dot3.f32(i32 55, float %3816, float %3854, float %3855, float 0x3FD20DD760000000, float %3867, float %3870)  ; Dot3(ax,ay,az,bx,by,bz)
  %3872 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3787)  ; FMax(a,b)
  %3873 = call float @dx.op.dot3.f32(i32 55, float %3800, float %3803, float %3806, float %3800, float %3803, float %3806)  ; Dot3(ax,ay,az,bx,by,bz)
  %3874 = fcmp fast oeq float %3873, 0.000000e+00
  %3875 = fcmp fast oeq float %3872, 0.000000e+00
  %3876 = or i1 %3875, %3874
  br i1 %3876, label %3906, label %3877

; <label>:3877                                    ; preds = %3850
  %3878 = fsub fast float -0.000000e+00, %3806
  %3879 = fsub fast float -0.000000e+00, %3800
  %3880 = call float @dx.op.unary.f32(i32 24, float %3873)  ; Sqrt(value)
  %3881 = fdiv fast float %3880, %3872
  %3882 = fcmp fast ogt float %3881, 0x3FFB6F8900000000
  %3883 = select i1 %3882, float 0x3FFB6F8900000000, float %3881
  %3884 = fmul fast float %3883, 0x3FE8A23460000000
  %3885 = call float @dx.op.unary.f32(i32 7, float %3884)  ; Saturate(value)
  %3886 = call float @dx.op.binary.f32(i32 35, float %3883, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3887 = fmul fast float %3885, %3872
  %3888 = fmul fast float %3886, 0x3FF279A740000000
  %3889 = fadd fast float %3888, -1.000000e+00
  %3890 = call float @dx.op.dot3.f32(i32 55, float %3878, float %3879, float %3803, float %3878, float %3879, float %3803)  ; Dot3(ax,ay,az,bx,by,bz)
  %3891 = call float @dx.op.unary.f32(i32 25, float %3890)  ; Rsqrt(value)
  %3892 = fmul fast float %3891, %3878
  %3893 = fmul fast float %3891, %3879
  %3894 = fmul fast float %3891, %3803
  %3895 = fmul fast float %3889, %3889
  %3896 = fsub fast float 1.000000e+00, %3895
  %3897 = fmul fast float %3886, 0x40005F8BE0000000
  %3898 = fsub fast float 0x400C5BF8A0000000, %3897
  %3899 = fdiv fast float %3887, %3898
  %3900 = fmul fast float %3899, 0x3FEE31C3C0000000
  %3901 = fmul fast float %3900, %3896
  %3902 = fmul fast float %3886, 0x3FDACB7480000000
  %3903 = fadd fast float %3902, 0xBFD7347680000000
  %3904 = fmul fast float %3903, %3899
  %3905 = fmul fast float %3904, %3896
  br label %3906

; <label>:3906                                    ; preds = %3877, %3850
  %3907 = phi float [ %3892, %3877 ], [ 0.000000e+00, %3850 ]
  %3908 = phi float [ %3893, %3877 ], [ 0.000000e+00, %3850 ]
  %3909 = phi float [ %3894, %3877 ], [ 0.000000e+00, %3850 ]
  %3910 = phi float [ %3901, %3877 ], [ 0.000000e+00, %3850 ]
  %3911 = phi float [ %3905, %3877 ], [ 0.000000e+00, %3850 ]
  %3912 = call float @dx.op.dot3.f32(i32 55, float %3907, float %3908, float %3909, float %2797, float %2798, float %2799)  ; Dot3(ax,ay,az,bx,by,bz)
  %3913 = fmul fast float %3912, %3912
  %3914 = fmul fast float %3913, 0x3FEE471020000000
  %3915 = fadd fast float %3914, 0xBFD42F6020000000
  %3916 = fmul fast float %3872, 0x3FD20DD760000000
  %3917 = fmul fast float %3915, %3911
  %3918 = fmul fast float %3910, 0x3FDF454380000000
  %3919 = fmul fast float %3918, %3912
  %3920 = fadd fast float %3919, %3916
  %3921 = fadd fast float %3920, %3917
  %3922 = call float @dx.op.dot3.f32(i32 55, float %3907, float %3908, float %3909, float %2816, float %2817, float %2818)  ; Dot3(ax,ay,az,bx,by,bz)
  %3923 = fmul fast float %3922, 0x3FDF454380000000
  %3924 = fmul fast float %3922, %3922
  %3925 = fmul fast float %3924, 0x3FEE471020000000
  %3926 = fadd fast float %3925, 0xBFD42F6020000000
  %3927 = call float @dx.op.dot3.f32(i32 55, float %3872, float %3910, float %3911, float 0x3FD20DD760000000, float %3923, float %3926)  ; Dot3(ax,ay,az,bx,by,bz)
  %3928 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3788)  ; FMax(a,b)
  %3929 = call float @dx.op.dot3.f32(i32 55, float %3809, float %3812, float %3815, float %3809, float %3812, float %3815)  ; Dot3(ax,ay,az,bx,by,bz)
  %3930 = fcmp fast oeq float %3929, 0.000000e+00
  %3931 = fcmp fast oeq float %3928, 0.000000e+00
  %3932 = or i1 %3931, %3930
  br i1 %3932, label %3962, label %3933

; <label>:3933                                    ; preds = %3906
  %3934 = fsub fast float -0.000000e+00, %3815
  %3935 = fsub fast float -0.000000e+00, %3809
  %3936 = call float @dx.op.unary.f32(i32 24, float %3929)  ; Sqrt(value)
  %3937 = fdiv fast float %3936, %3928
  %3938 = fcmp fast ogt float %3937, 0x3FFB6F8900000000
  %3939 = select i1 %3938, float 0x3FFB6F8900000000, float %3937
  %3940 = fmul fast float %3939, 0x3FE8A23460000000
  %3941 = call float @dx.op.unary.f32(i32 7, float %3940)  ; Saturate(value)
  %3942 = call float @dx.op.binary.f32(i32 35, float %3939, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3943 = fmul fast float %3941, %3928
  %3944 = fmul fast float %3942, 0x3FF279A740000000
  %3945 = fadd fast float %3944, -1.000000e+00
  %3946 = call float @dx.op.dot3.f32(i32 55, float %3934, float %3935, float %3812, float %3934, float %3935, float %3812)  ; Dot3(ax,ay,az,bx,by,bz)
  %3947 = call float @dx.op.unary.f32(i32 25, float %3946)  ; Rsqrt(value)
  %3948 = fmul fast float %3947, %3934
  %3949 = fmul fast float %3947, %3935
  %3950 = fmul fast float %3947, %3812
  %3951 = fmul fast float %3945, %3945
  %3952 = fsub fast float 1.000000e+00, %3951
  %3953 = fmul fast float %3942, 0x40005F8BE0000000
  %3954 = fsub fast float 0x400C5BF8A0000000, %3953
  %3955 = fdiv fast float %3943, %3954
  %3956 = fmul fast float %3955, 0x3FEE31C3C0000000
  %3957 = fmul fast float %3956, %3952
  %3958 = fmul fast float %3942, 0x3FDACB7480000000
  %3959 = fadd fast float %3958, 0xBFD7347680000000
  %3960 = fmul fast float %3959, %3955
  %3961 = fmul fast float %3960, %3952
  br label %3962

; <label>:3962                                    ; preds = %3933, %3906
  %3963 = phi float [ %3948, %3933 ], [ 0.000000e+00, %3906 ]
  %3964 = phi float [ %3949, %3933 ], [ 0.000000e+00, %3906 ]
  %3965 = phi float [ %3950, %3933 ], [ 0.000000e+00, %3906 ]
  %3966 = phi float [ %3957, %3933 ], [ 0.000000e+00, %3906 ]
  %3967 = phi float [ %3961, %3933 ], [ 0.000000e+00, %3906 ]
  %3968 = call float @dx.op.dot3.f32(i32 55, float %3963, float %3964, float %3965, float %2797, float %2798, float %2799)  ; Dot3(ax,ay,az,bx,by,bz)
  %3969 = fmul fast float %3968, %3968
  %3970 = fmul fast float %3969, 0x3FEE471020000000
  %3971 = fadd fast float %3970, 0xBFD42F6020000000
  %3972 = fmul fast float %3928, 0x3FD20DD760000000
  %3973 = fmul fast float %3971, %3967
  %3974 = fmul fast float %3966, 0x3FDF454380000000
  %3975 = fmul fast float %3974, %3968
  %3976 = fadd fast float %3975, %3972
  %3977 = fadd fast float %3976, %3973
  %3978 = call float @dx.op.dot3.f32(i32 55, float %3963, float %3964, float %3965, float %2816, float %2817, float %2818)  ; Dot3(ax,ay,az,bx,by,bz)
  %3979 = fmul fast float %3978, 0x3FDF454380000000
  %3980 = fmul fast float %3978, %3978
  %3981 = fmul fast float %3980, 0x3FEE471020000000
  %3982 = fadd fast float %3981, 0xBFD42F6020000000
  %3983 = call float @dx.op.dot3.f32(i32 55, float %3928, float %3966, float %3967, float 0x3FD20DD760000000, float %3979, float %3982)  ; Dot3(ax,ay,az,bx,by,bz)
  %3984 = call float @dx.op.binary.f32(i32 35, float %3865, float 0.000000e+00)  ; FMax(a,b)
  %3985 = call float @dx.op.binary.f32(i32 35, float %3921, float 0.000000e+00)  ; FMax(a,b)
  %3986 = call float @dx.op.binary.f32(i32 35, float %3977, float 0.000000e+00)  ; FMax(a,b)
  %3987 = call float @dx.op.binary.f32(i32 35, float %3871, float 0.000000e+00)  ; FMax(a,b)
  %3988 = call float @dx.op.binary.f32(i32 35, float %3927, float 0.000000e+00)  ; FMax(a,b)
  %3989 = call float @dx.op.binary.f32(i32 35, float %3983, float 0.000000e+00)  ; FMax(a,b)
  %3990 = fsub fast float %3186, %3984
  %3991 = fsub fast float %3187, %3985
  %3992 = fsub fast float %3188, %3986
  %3993 = fmul fast float %3990, %2867
  %3994 = fmul fast float %3991, %2867
  %3995 = fmul fast float %3992, %2867
  %3996 = fadd fast float %3993, %3984
  %3997 = fadd fast float %3994, %3985
  %3998 = fadd fast float %3995, %3986
  %3999 = fsub fast float %3183, %3987
  %4000 = fsub fast float %3184, %3988
  %4001 = fsub fast float %3185, %3989
  %4002 = fmul fast float %3999, %2867
  %4003 = fmul fast float %4000, %2867
  %4004 = fmul fast float %4001, %2867
  %4005 = fadd fast float %4002, %3987
  %4006 = fadd fast float %4003, %3988
  %4007 = fadd fast float %4004, %3989
  br label %4008

; <label>:4008                                    ; preds = %3962, %3182
  %4009 = phi float [ %4005, %3962 ], [ %3183, %3182 ]
  %4010 = phi float [ %4006, %3962 ], [ %3184, %3182 ]
  %4011 = phi float [ %4007, %3962 ], [ %3185, %3182 ]
  %4012 = phi float [ %3996, %3962 ], [ %3186, %3182 ]
  %4013 = phi float [ %3997, %3962 ], [ %3187, %3182 ]
  %4014 = phi float [ %3998, %3962 ], [ %3188, %3182 ]
  %4015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4016 = extractvalue %dx.types.CBufRet.f32 %4015, 0
  %4017 = call float @dx.op.binary.f32(i32 36, float %2803, float %4016)  ; FMin(a,b)
  %4018 = fsub fast float 1.000000e+00, %2819
  %4019 = fmul fast float %4017, %4018
  %4020 = fsub fast float 1.000000e+00, %4019
  %4021 = bitcast float %4020 to i32
  %4022 = sub nsw i32 2129859010, %4021
  %4023 = bitcast i32 %4022 to float
  %4024 = call float @dx.op.binary.f32(i32 36, float %2804, float %4016)  ; FMin(a,b)
  %4025 = fmul fast float %4024, %4018
  %4026 = fsub fast float 1.000000e+00, %4025
  %4027 = bitcast float %4026 to i32
  %4028 = sub nsw i32 2129859010, %4027
  %4029 = bitcast i32 %4028 to float
  %4030 = call float @dx.op.binary.f32(i32 36, float %2805, float %4016)  ; FMin(a,b)
  %4031 = fmul fast float %4030, %4018
  %4032 = fsub fast float 1.000000e+00, %4031
  %4033 = bitcast float %4032 to i32
  %4034 = sub nsw i32 2129859010, %4033
  %4035 = bitcast i32 %4034 to float
  %4036 = fmul fast float %4012, %2819
  %4037 = fmul fast float %4036, %4023
  %4038 = fmul fast float %4013, %2819
  %4039 = fmul fast float %4038, %4029
  %4040 = fmul fast float %4014, %2819
  %4041 = fmul fast float %4040, %4035
  %4042 = call float @dx.op.binary.f32(i32 36, float %2800, float %4016)  ; FMin(a,b)
  %4043 = fmul fast float %4042, %4018
  %4044 = fsub fast float 1.000000e+00, %4043
  %4045 = bitcast float %4044 to i32
  %4046 = sub nsw i32 2129859010, %4045
  %4047 = bitcast i32 %4046 to float
  %4048 = call float @dx.op.binary.f32(i32 36, float %2801, float %4016)  ; FMin(a,b)
  %4049 = fmul fast float %4048, %4018
  %4050 = fsub fast float 1.000000e+00, %4049
  %4051 = bitcast float %4050 to i32
  %4052 = sub nsw i32 2129859010, %4051
  %4053 = bitcast i32 %4052 to float
  %4054 = call float @dx.op.binary.f32(i32 36, float %2808, float %4016)  ; FMin(a,b)
  %4055 = fmul fast float %4054, %4018
  %4056 = fsub fast float 1.000000e+00, %4055
  %4057 = bitcast float %4056 to i32
  %4058 = sub nsw i32 2129859010, %4057
  %4059 = bitcast i32 %4058 to float
  %4060 = fmul fast float %4009, %2819
  %4061 = fmul fast float %4060, %4047
  %4062 = fmul fast float %4010, %2819
  %4063 = fmul fast float %4062, %4053
  %4064 = fmul fast float %4011, %2819
  %4065 = fmul fast float %4064, %4059
  %4066 = call float @dx.op.dot3.f32(i32 55, float %4037, float %4039, float %4041, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4067 = select i1 %188, float 0.000000e+00, float %4037
  %4068 = select i1 %188, float %4066, float %4039
  %4069 = select i1 %188, float 0.000000e+00, float %4041
  %4070 = call float @dx.op.dot3.f32(i32 55, float %4061, float %4063, float %4065, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4071 = select i1 %188, float 0.000000e+00, float %4061
  %4072 = select i1 %188, float %4070, float %4063
  %4073 = select i1 %188, float 0.000000e+00, float %4065
  %4074 = fmul fast float %2810, 9.843750e-01
  %4075 = fmul fast float %2806, 9.843750e-01
  %4076 = fadd fast float %4074, 7.812500e-03
  %4077 = fadd fast float %4075, 7.812500e-03
  %4078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4076, float %4077, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4079 = extractvalue %dx.types.ResRet.f32 %4078, 2
  %4080 = extractvalue %dx.types.ResRet.f32 %4078, 3
  %4081 = fmul fast float %4079, %2800
  %4082 = fmul fast float %4079, %2801
  %4083 = fmul fast float %4079, %2808
  %4084 = fadd fast float %4081, %4080
  %4085 = fadd fast float %4082, %4080
  %4086 = fadd fast float %4083, %4080
  %4087 = fcmp fast ogt float %2174, 0.000000e+00
  br i1 %4087, label %4088, label %4114

; <label>:4088                                    ; preds = %4008
  %4089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2174, float %2810, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4090 = extractvalue %dx.types.ResRet.f32 %4089, 0
  %4091 = extractvalue %dx.types.ResRet.f32 %4089, 1
  %4092 = extractvalue %dx.types.ResRet.f32 %4089, 2
  %4093 = fadd fast float %4090, -5.000000e-01
  %4094 = fadd fast float %4091, -5.000000e-01
  %4095 = fadd fast float %4092, -5.000000e-01
  %4096 = fsub fast float 1.000000e+00, %2800
  %4097 = fsub fast float 1.000000e+00, %2801
  %4098 = fsub fast float 1.000000e+00, %2808
  %4099 = fmul fast float %2800, 4.000000e+00
  %4100 = fmul fast float %4099, %4096
  %4101 = fmul fast float %4100, %4093
  %4102 = fmul fast float %2801, 4.000000e+00
  %4103 = fmul fast float %4102, %4097
  %4104 = fmul fast float %4103, %4094
  %4105 = fmul fast float %2808, 4.000000e+00
  %4106 = fmul fast float %4105, %4098
  %4107 = fmul fast float %4106, %4095
  %4108 = fadd fast float %4101, %4084
  %4109 = fadd fast float %4104, %4085
  %4110 = fadd fast float %4107, %4086
  %4111 = call float @dx.op.unary.f32(i32 7, float %4108)  ; Saturate(value)
  %4112 = call float @dx.op.unary.f32(i32 7, float %4109)  ; Saturate(value)
  %4113 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  br label %4114

; <label>:4114                                    ; preds = %4088, %4008
  %4115 = phi float [ %4111, %4088 ], [ %4084, %4008 ]
  %4116 = phi float [ %4112, %4088 ], [ %4085, %4008 ]
  %4117 = phi float [ %4113, %4088 ], [ %4086, %4008 ]
  %4118 = call float @dx.op.binary.f32(i32 35, float %4116, float %4117)  ; FMax(a,b)
  %4119 = call float @dx.op.binary.f32(i32 35, float %4115, float %4118)  ; FMax(a,b)
  %4120 = fsub fast float 1.000000e+00, %4119
  %4121 = fmul fast float %4120, %4067
  %4122 = fmul fast float %4120, %4068
  %4123 = fmul fast float %4120, %4069
  %4124 = call float @dx.op.dot3.f32(i32 55, float %2803, float %2804, float %2805, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4125 = fcmp fast ogt float %4124, 0x3E7FF19E20000000
  %4126 = fdiv fast float 1.000000e+00, %4124
  %4127 = select i1 %4125, float %4126, float 0.000000e+00
  %4128 = fmul fast float %4127, %2803
  %4129 = fmul fast float %4127, %2804
  %4130 = fmul fast float %4127, %2805
  %4131 = fadd fast float %4128, -1.000000e+00
  %4132 = fadd fast float %4129, -1.000000e+00
  %4133 = fadd fast float %4130, -1.000000e+00
  %4134 = fmul fast float %4131, 5.000000e-01
  %4135 = fmul fast float %4132, 5.000000e-01
  %4136 = fmul fast float %4133, 5.000000e-01
  %4137 = fadd fast float %4134, 1.000000e+00
  %4138 = fadd fast float %4135, 1.000000e+00
  %4139 = fadd fast float %4136, 1.000000e+00
  %4140 = fmul fast float %4115, %4071
  %4141 = fmul fast float %4116, %4072
  %4142 = fmul fast float %4117, %4073
  %4143 = fsub fast float 1.000000e+00, %2810
  %4144 = bitcast float %4143 to i32
  %4145 = sitofp i32 %4144 to float
  %4146 = fmul fast float %4145, 5.000000e+00
  %4147 = fadd fast float %4146, 0xC1EFBF8940000000
  %4148 = fptosi float %4147 to i32
  %4149 = bitcast i32 %4148 to float
  %4150 = fmul fast float %4149, %2173
  %4151 = fmul fast float %4067, %4150
  %4152 = fmul fast float %4151, %4120
  %4153 = fmul fast float %4152, %4137
  %4154 = fmul fast float %4068, %4150
  %4155 = fmul fast float %4154, %4120
  %4156 = fmul fast float %4155, %4138
  %4157 = fmul fast float %4069, %4150
  %4158 = fmul fast float %4157, %4120
  %4159 = fmul fast float %4158, %4139
  %4160 = fmul fast float %4121, %2194
  %4161 = fmul fast float %4122, %2194
  %4162 = fmul fast float %4123, %2194
  %4163 = fadd fast float %4140, %2175
  %4164 = fadd fast float %4163, %4153
  %4165 = fmul fast float %4164, %2194
  %4166 = fadd fast float %4141, %2176
  %4167 = fadd fast float %4166, %4156
  %4168 = fmul fast float %4167, %2194
  %4169 = fadd fast float %4142, %2177
  %4170 = fadd fast float %4169, %4159
  %4171 = fmul fast float %4170, %2194
  %4172 = bitcast i32 %2822 to float
  %4173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.f32 %4173, 3
  %4175 = fcmp fast oeq float %4174, 0.000000e+00
  br i1 %4175, label %4403, label %4176

; <label>:4176                                    ; preds = %4114
  %4177 = extractvalue %dx.types.CBufRet.f32 %4173, 0
  %4178 = extractvalue %dx.types.CBufRet.f32 %4173, 1
  %4179 = extractvalue %dx.types.CBufRet.f32 %4173, 2
  %4180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4181 = extractvalue %dx.types.CBufRet.f32 %4180, 0
  %4182 = extractvalue %dx.types.CBufRet.f32 %4180, 1
  %4183 = extractvalue %dx.types.CBufRet.f32 %4180, 2
  %4184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.f32 %4184, 0
  %4186 = extractvalue %dx.types.CBufRet.f32 %4184, 1
  %4187 = call float @dx.op.dot3.f32(i32 55, float %4181, float %4182, float %4183, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4188 = select i1 %188, float %4185, float %4181
  %4189 = select i1 %188, float %4187, float %4182
  %4190 = select i1 %188, float %4186, float %4183
  %4191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.f32 %4191, 1
  %4193 = fcmp fast une float %4192, 0.000000e+00
  br i1 %4193, label %4194, label %4211

; <label>:4194                                    ; preds = %4176
  %4195 = fptoui float %70 to i32
  %4196 = fptoui float %71 to i32
  %4197 = lshr i32 %4195, 4
  %4198 = lshr i32 %4196, 4
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 0
  %4201 = fptoui float %4200 to i32
  %4202 = add i32 %4201, 15
  %4203 = lshr i32 %4202, 4
  %4204 = mul i32 %4203, %4198
  %4205 = add i32 %4204, %4197
  %4206 = shl i32 %4205, 3
  %4207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4206, i32 undef)  ; BufferLoad(srv,index,wot)
  %4208 = extractvalue %dx.types.ResRet.i32 %4207, 0
  %4209 = and i32 %4208, -268435456
  %4210 = icmp eq i32 %4209, -1342177280
  br i1 %4210, label %4221, label %4211

; <label>:4211                                    ; preds = %4194, %4176
  %4212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4213 = extractvalue %dx.types.CBufRet.f32 %4212, 2
  %4214 = extractvalue %dx.types.CBufRet.f32 %4212, 3
  %4215 = fmul fast float %4213, %70
  %4216 = fmul fast float %4214, %71
  %4217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %4215, float %4216, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4218 = extractvalue %dx.types.ResRet.f32 %4217, 0
  %4219 = extractvalue %dx.types.ResRet.f32 %4217, 1
  %4220 = extractvalue %dx.types.ResRet.f32 %4217, 2
  br label %4221

; <label>:4221                                    ; preds = %4211, %4194
  %4222 = phi float [ %4218, %4211 ], [ 0.000000e+00, %4194 ]
  %4223 = phi float [ %4219, %4211 ], [ 0.000000e+00, %4194 ]
  %4224 = phi float [ %4220, %4211 ], [ 0.000000e+00, %4194 ]
  %4225 = call float @dx.op.binary.f32(i32 36, float %4223, float %4224)  ; FMin(a,b)
  %4226 = call float @dx.op.binary.f32(i32 36, float %4222, float %4225)  ; FMin(a,b)
  %4227 = fcmp fast ogt float %4226, 0.000000e+00
  br i1 %4227, label %4228, label %4403, !dx.controlflow.hints !86

; <label>:4228                                    ; preds = %4221
  %4229 = fmul fast float %4222, %4188
  %4230 = fmul fast float %4223, %4189
  %4231 = fmul fast float %4224, %4190
  %4232 = fsub fast float %4177, %2796
  %4233 = fsub fast float %4178, %2795
  %4234 = fsub fast float %4179, %2794
  %4235 = call float @dx.op.dot3.f32(i32 55, float %4232, float %4233, float %4234, float %4232, float %4233, float %4234)  ; Dot3(ax,ay,az,bx,by,bz)
  %4236 = call float @dx.op.unary.f32(i32 25, float %4235)  ; Rsqrt(value)
  %4237 = fmul fast float %4236, %4232
  %4238 = fmul fast float %4236, %4233
  %4239 = fmul fast float %4236, %4234
  %4240 = call float @dx.op.dot3.f32(i32 55, float %4177, float %4178, float %4179, float %2797, float %2798, float %2799)  ; Dot3(ax,ay,az,bx,by,bz)
  %4241 = call float @dx.op.dot3.f32(i32 55, float %2793, float %2792, float %2791, float %4237, float %4238, float %4239)  ; Dot3(ax,ay,az,bx,by,bz)
  %4242 = call float @dx.op.unary.f32(i32 7, float %4240)  ; Saturate(value)
  %4243 = fmul fast float %4242, %4242
  %4244 = fmul fast float %4243, %4172
  %4245 = call float @dx.op.unary.f32(i32 7, float %4244)  ; Saturate(value)
  %4246 = fmul fast float %4245, %4242
  %4247 = call float @dx.op.dot3.f32(i32 55, float %2797, float %2798, float %2799, float %4237, float %4238, float %4239)  ; Dot3(ax,ay,az,bx,by,bz)
  %4248 = fmul fast float %4247, %4247
  %4249 = call float @dx.op.unary.f32(i32 6, float %4240)  ; FAbs(value)
  %4250 = fsub fast float 1.000000e+00, %2806
  %4251 = call float @dx.op.binary.f32(i32 35, float %4250, float 0x3F847AE140000000)  ; FMax(a,b)
  %4252 = fmul fast float %4251, %4251
  %4253 = fmul fast float %4252, %4252
  %4254 = fsub fast float 1.000000e+00, %4253
  %4255 = fmul fast float %2810, %2810
  %4256 = fmul fast float %4255, %4254
  %4257 = fadd fast float %4256, %4253
  %4258 = bitcast float %4257 to i32
  %4259 = ashr i32 %4258, 1
  %4260 = add nsw i32 %4259, 532487669
  %4261 = bitcast i32 %4260 to float
  %4262 = fadd fast float %4261, %2810
  %4263 = fmul fast float %4253, %4248
  %4264 = fsub fast float 1.000000e+00, %4248
  %4265 = fadd fast float %4264, %4263
  %4266 = fmul fast float %4249, %4249
  %4267 = fmul fast float %4266, %4254
  %4268 = fadd fast float %4267, %4253
  %4269 = bitcast float %4268 to i32
  %4270 = ashr i32 %4269, 1
  %4271 = add nsw i32 %4270, 532487669
  %4272 = bitcast i32 %4271 to float
  %4273 = fadd fast float %4272, %4249
  %4274 = fmul fast float %4265, %4265
  %4275 = fmul fast float %4274, %4262
  %4276 = fmul fast float %4275, %4273
  %4277 = fdiv fast float 0x3FF0A00000000000, %4276
  %4278 = fmul fast float %4277, %4253
  %4279 = call float @dx.op.unary.f32(i32 6, float %4241)  ; FAbs(value)
  %4280 = fsub fast float 1.000000e+00, %4279
  %4281 = bitcast float %4280 to i32
  %4282 = sitofp i32 %4281 to float
  %4283 = fmul fast float %4282, 5.000000e+00
  %4284 = fadd fast float %4283, 0xC1EFBF8940000000
  %4285 = fptosi float %4284 to i32
  %4286 = bitcast i32 %4285 to float
  %4287 = fsub fast float 1.000000e+00, %2800
  %4288 = fsub fast float 1.000000e+00, %2801
  %4289 = fsub fast float 1.000000e+00, %2808
  %4290 = fmul fast float %4286, %4287
  %4291 = fmul fast float %4286, %4288
  %4292 = fmul fast float %4286, %4289
  %4293 = fadd fast float %4290, %2800
  %4294 = fadd fast float %4291, %2801
  %4295 = fadd fast float %4292, %2808
  br i1 %4087, label %4296, label %4319

; <label>:4296                                    ; preds = %4228
  %4297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2174, float %4279, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4298 = extractvalue %dx.types.ResRet.f32 %4297, 0
  %4299 = extractvalue %dx.types.ResRet.f32 %4297, 1
  %4300 = extractvalue %dx.types.ResRet.f32 %4297, 2
  %4301 = fadd fast float %4298, -5.000000e-01
  %4302 = fadd fast float %4299, -5.000000e-01
  %4303 = fadd fast float %4300, -5.000000e-01
  %4304 = fmul fast float %2800, 4.000000e+00
  %4305 = fmul fast float %4304, %4287
  %4306 = fmul fast float %4305, %4301
  %4307 = fmul fast float %2801, 4.000000e+00
  %4308 = fmul fast float %4307, %4288
  %4309 = fmul fast float %4308, %4302
  %4310 = fmul fast float %2808, 4.000000e+00
  %4311 = fmul fast float %4310, %4289
  %4312 = fmul fast float %4311, %4303
  %4313 = fadd fast float %4306, %4293
  %4314 = fadd fast float %4309, %4294
  %4315 = fadd fast float %4312, %4295
  %4316 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4317 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4318 = call float @dx.op.unary.f32(i32 7, float %4315)  ; Saturate(value)
  br label %4319

; <label>:4319                                    ; preds = %4296, %4228
  %4320 = phi float [ %4316, %4296 ], [ %4293, %4228 ]
  %4321 = phi float [ %4317, %4296 ], [ %4294, %4228 ]
  %4322 = phi float [ %4318, %4296 ], [ %4295, %4228 ]
  %4323 = fmul fast float %4240, 9.843750e-01
  %4324 = fadd fast float %4323, 7.812500e-03
  %4325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4324, float %4077, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4326 = extractvalue %dx.types.ResRet.f32 %4325, 2
  %4327 = extractvalue %dx.types.ResRet.f32 %4325, 3
  %4328 = fmul fast float %4326, %2800
  %4329 = fmul fast float %4326, %2801
  %4330 = fmul fast float %4326, %2808
  %4331 = fadd fast float %4328, %4327
  %4332 = fadd fast float %4329, %4327
  %4333 = fadd fast float %4330, %4327
  br i1 %4087, label %4334, label %4357

; <label>:4334                                    ; preds = %4319
  %4335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2174, float %4240, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4336 = extractvalue %dx.types.ResRet.f32 %4335, 0
  %4337 = extractvalue %dx.types.ResRet.f32 %4335, 1
  %4338 = extractvalue %dx.types.ResRet.f32 %4335, 2
  %4339 = fadd fast float %4336, -5.000000e-01
  %4340 = fadd fast float %4337, -5.000000e-01
  %4341 = fadd fast float %4338, -5.000000e-01
  %4342 = fmul fast float %2800, 4.000000e+00
  %4343 = fmul fast float %4342, %4287
  %4344 = fmul fast float %4343, %4339
  %4345 = fmul fast float %2801, 4.000000e+00
  %4346 = fmul fast float %4345, %4288
  %4347 = fmul fast float %4346, %4340
  %4348 = fmul fast float %2808, 4.000000e+00
  %4349 = fmul fast float %4348, %4289
  %4350 = fmul fast float %4349, %4341
  %4351 = fadd fast float %4344, %4331
  %4352 = fadd fast float %4347, %4332
  %4353 = fadd fast float %4350, %4333
  %4354 = call float @dx.op.unary.f32(i32 7, float %4351)  ; Saturate(value)
  %4355 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  %4356 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  br label %4357

; <label>:4357                                    ; preds = %4334, %4319
  %4358 = phi float [ %4354, %4334 ], [ %4331, %4319 ]
  %4359 = phi float [ %4355, %4334 ], [ %4332, %4319 ]
  %4360 = phi float [ %4356, %4334 ], [ %4333, %4319 ]
  %4361 = call float @dx.op.binary.f32(i32 35, float %4359, float %4360)  ; FMax(a,b)
  %4362 = call float @dx.op.binary.f32(i32 35, float %4358, float %4361)  ; FMax(a,b)
  %4363 = fsub fast float 1.000000e+00, %4362
  %4364 = fmul fast float %4320, %4278
  %4365 = fmul fast float %4321, %4278
  %4366 = fmul fast float %4322, %4278
  %4367 = fsub fast float 1.000000e+00, %4241
  %4368 = bitcast float %4367 to i32
  %4369 = sitofp i32 %4368 to float
  %4370 = fmul fast float %4369, 5.000000e+00
  %4371 = fadd fast float %4370, 0xC1EFBF8940000000
  %4372 = fptosi float %4371 to i32
  %4373 = bitcast i32 %4372 to float
  %4374 = fmul fast float %4373, %2173
  %4375 = fmul fast float %4363, %4374
  %4376 = fmul fast float %4375, %4137
  %4377 = fmul fast float %4375, %4138
  %4378 = fmul fast float %4375, %4139
  %4379 = fadd fast float %4376, %4364
  %4380 = fadd fast float %4377, %4365
  %4381 = fadd fast float %4378, %4366
  %4382 = fmul fast float %4246, %4229
  %4383 = fmul fast float %4382, %4363
  %4384 = fmul fast float %4246, %4230
  %4385 = fmul fast float %4384, %4363
  %4386 = fmul fast float %4246, %4231
  %4387 = fmul fast float %4386, %4363
  %4388 = fmul fast float %4382, %4379
  %4389 = fmul fast float %4384, %4380
  %4390 = fmul fast float %4386, %4381
  %4391 = fadd fast float %4383, %4121
  %4392 = fmul fast float %4391, %2194
  %4393 = fadd fast float %4385, %4122
  %4394 = fmul fast float %4393, %2194
  %4395 = fadd fast float %4387, %4123
  %4396 = fmul fast float %4395, %2194
  %4397 = fadd fast float %4388, %4164
  %4398 = fmul fast float %4397, %2194
  %4399 = fadd fast float %4389, %4167
  %4400 = fmul fast float %4399, %2194
  %4401 = fadd fast float %4390, %4170
  %4402 = fmul fast float %4401, %2194
  br label %4403

; <label>:4403                                    ; preds = %4357, %4221, %4114
  %4404 = phi float [ %4165, %4114 ], [ %4165, %4221 ], [ %4398, %4357 ]
  %4405 = phi float [ %4168, %4114 ], [ %4168, %4221 ], [ %4400, %4357 ]
  %4406 = phi float [ %4171, %4114 ], [ %4171, %4221 ], [ %4402, %4357 ]
  %4407 = phi float [ %4160, %4114 ], [ %4160, %4221 ], [ %4392, %4357 ]
  %4408 = phi float [ %4161, %4114 ], [ %4161, %4221 ], [ %4394, %4357 ]
  %4409 = phi float [ %4162, %4114 ], [ %4162, %4221 ], [ %4396, %4357 ]
  %4410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4411 = extractvalue %dx.types.CBufRet.i32 %4410, 0
  %4412 = icmp eq i32 %4411, 0
  br i1 %4412, label %4847, label %4413

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
  br i1 %4435, label %4847, label %4436

; <label>:4436                                    ; preds = %4413
  br label %4437

; <label>:4437                                    ; preds = %4837, %4436
  %4438 = phi i32 [ %4844, %4837 ], [ %4432, %4436 ]
  %4439 = phi float [ %4838, %4837 ], [ %4404, %4436 ]
  %4440 = phi float [ %4839, %4837 ], [ %4405, %4436 ]
  %4441 = phi float [ %4840, %4837 ], [ %4406, %4436 ]
  %4442 = phi float [ %4841, %4837 ], [ %4407, %4436 ]
  %4443 = phi float [ %4842, %4837 ], [ %4408, %4436 ]
  %4444 = phi float [ %4843, %4837 ], [ %4409, %4436 ]
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
  br i1 %4467, label %4837, label %4468

; <label>:4468                                    ; preds = %4437
  br label %4469

; <label>:4469                                    ; preds = %4549, %4468
  %4470 = phi i32 [ %4481, %4549 ], [ %4466, %4468 ]
  %4471 = phi float [ %4550, %4549 ], [ %4439, %4468 ]
  %4472 = phi float [ %4551, %4549 ], [ %4440, %4468 ]
  %4473 = phi float [ %4552, %4549 ], [ %4441, %4468 ]
  %4474 = phi float [ %4553, %4549 ], [ %4442, %4468 ]
  %4475 = phi float [ %4554, %4549 ], [ %4443, %4468 ]
  %4476 = phi float [ %4555, %4549 ], [ %4444, %4468 ]
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
  %4500 = extractvalue %dx.types.ResRet.f32 %4499, 1
  %4501 = extractvalue %dx.types.ResRet.f32 %4499, 2
  %4502 = call float @dx.op.dot3.f32(i32 55, float %4484, float %4485, float %4486, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4503 = select i1 %188, float %4500, float %4484
  %4504 = select i1 %188, float %4502, float %4485
  %4505 = select i1 %188, float %4501, float %4486
  %4506 = fsub fast float %4495, %117
  %4507 = fsub fast float %4496, %118
  %4508 = fsub fast float %4497, %119
  %4509 = call float @dx.op.dot3.f32(i32 55, float %4506, float %4507, float %4508, float %4506, float %4507, float %4508)  ; Dot3(ax,ay,az,bx,by,bz)
  %4510 = call float @dx.op.unary.f32(i32 24, float %4509)  ; Sqrt(value)
  %4511 = fdiv fast float 1.000000e+00, %4510
  %4512 = fmul fast float %4511, %4506
  %4513 = fmul fast float %4511, %4507
  %4514 = fmul fast float %4511, %4508
  %4515 = fadd fast float %4510, %4489
  %4516 = fdiv fast float 1.000000e+00, %4515
  %4517 = fmul float %4492, %4516
  %4518 = fmul float %4517, %4517
  %4519 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4520 = and i32 %4480, %4466
  %4521 = icmp eq i32 %4520, 0
  br i1 %4521, label %4544, label %4522, !dx.controlflow.hints !87

; <label>:4522                                    ; preds = %4469
  %4523 = lshr i32 %4414, 5
  %4524 = lshr i32 %4415, 5
  %4525 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %4523, i32 %4524, i32 %4478, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4526 = extractvalue %dx.types.ResRet.i32 %4525, 0
  %4527 = and i32 %4526, 3
  %4528 = icmp eq i32 %4527, 0
  %4529 = select i1 %4528, float 1.000000e+00, float 0.000000e+00
  %4530 = icmp eq i32 %4527, 3
  br i1 %4530, label %4531, label %4544

; <label>:4531                                    ; preds = %4522
  %4532 = lshr i32 %4526, 10
  %4533 = and i32 %4532, 8160
  %4534 = and i32 %4415, 31
  %4535 = or i32 %4533, %4534
  %4536 = lshr i32 %4526, 1
  %4537 = and i32 %4536, 16352
  %4538 = and i32 %4414, 31
  %4539 = or i32 %4537, %4538
  %4540 = lshr i32 %4526, 23
  %4541 = and i32 %4540, 255
  %4542 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %4539, i32 %4535, i32 %4541, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4543 = extractvalue %dx.types.ResRet.f32 %4542, 0
  br label %4544

; <label>:4544                                    ; preds = %4531, %4522, %4469
  %4545 = phi float [ %4543, %4531 ], [ %4529, %4522 ], [ 0.000000e+00, %4469 ]
  %4546 = call float @dx.op.binary.f32(i32 36, float %4545, float %4545)  ; FMin(a,b)
  %4547 = call float @dx.op.binary.f32(i32 36, float %4545, float %4546)  ; FMin(a,b)
  %4548 = fcmp fast ogt float %4547, 0.000000e+00
  br i1 %4548, label %4557, label %4549, !dx.controlflow.hints !88

; <label>:4549                                    ; preds = %4793, %4544
  %4550 = phi float [ %4471, %4544 ], [ %4833, %4793 ]
  %4551 = phi float [ %4472, %4544 ], [ %4834, %4793 ]
  %4552 = phi float [ %4473, %4544 ], [ %4835, %4793 ]
  %4553 = phi float [ %4474, %4544 ], [ %4827, %4793 ]
  %4554 = phi float [ %4475, %4544 ], [ %4828, %4793 ]
  %4555 = phi float [ %4476, %4544 ], [ %4829, %4793 ]
  %4556 = icmp eq i32 %4470, %4480
  br i1 %4556, label %4836, label %4469

; <label>:4557                                    ; preds = %4544
  %4558 = fmul fast float %4545, %4503
  %4559 = fmul fast float %4545, %4504
  %4560 = fmul fast float %4545, %4505
  %4561 = fsub fast float %4497, %2596
  %4562 = fcmp fast ogt float %4561, 0.000000e+00
  %4563 = fsub fast float %119, %2596
  %4564 = fcmp fast ogt float %4563, 0.000000e+00
  %4565 = xor i1 %4564, %4562
  %4566 = fsub fast float %2596, %4497
  %4567 = fmul fast float %4566, 2.000000e+00
  %4568 = fadd fast float %4567, %4497
  %4569 = select i1 %4565, float %4497, float %4568
  %4570 = fsub fast float %4569, %119
  %4571 = call float @dx.op.dot3.f32(i32 55, float %4506, float %4507, float %4570, float %4506, float %4507, float %4570)  ; Dot3(ax,ay,az,bx,by,bz)
  %4572 = call float @dx.op.unary.f32(i32 25, float %4571)  ; Rsqrt(value)
  %4573 = fmul fast float %4572, %4506
  %4574 = fmul fast float %4572, %4507
  %4575 = fmul fast float %4572, %4570
  %4576 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2604)  ; Dot3(ax,ay,az,bx,by,bz)
  %4577 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4573, float %4574, float %4575)  ; Dot3(ax,ay,az,bx,by,bz)
  %4578 = fdiv fast float 1.000000e+00, %4577
  %4579 = fmul fast float %4578, %4576
  %4580 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4563, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4581 = fcmp fast ogt float %4580, 0.000000e+00
  %4582 = fcmp fast olt float %4580, 0.000000e+00
  %4583 = zext i1 %4581 to i32
  %4584 = zext i1 %4582 to i32
  %4585 = sub nsw i32 %4583, %4584
  %4586 = sitofp i32 %4585 to float
  %4587 = fsub fast float %4569, %2596
  %4588 = call float @dx.op.dot3.f32(i32 55, float %4506, float %4507, float %4587, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4589 = fcmp fast ogt float %4588, 0.000000e+00
  %4590 = fcmp fast olt float %4588, 0.000000e+00
  %4591 = zext i1 %4589 to i32
  %4592 = zext i1 %4590 to i32
  %4593 = sub nsw i32 %4591, %4592
  %4594 = sitofp i32 %4593 to float
  %4595 = fcmp fast une float %4586, %4594
  br i1 %4595, label %4596, label %4606

; <label>:4596                                    ; preds = %4557
  %4597 = fmul fast float %4579, %4575
  %4598 = fmul fast float %4579, %4574
  %4599 = fmul fast float %4579, %4573
  %4600 = fmul fast float %4599, %4599
  %4601 = fmul fast float %4598, %4598
  %4602 = fadd fast float %4600, %4601
  %4603 = fmul fast float %4597, %4597
  %4604 = fadd fast float %4602, %4603
  %4605 = call float @dx.op.unary.f32(i32 24, float %4604)  ; Sqrt(value)
  br label %4618

; <label>:4606                                    ; preds = %4557
  %4607 = icmp slt i32 %4585, 0
  br i1 %4607, label %4608, label %4618

; <label>:4608                                    ; preds = %4606
  %4609 = fsub fast float %117, %4495
  %4610 = fsub fast float %118, %4496
  %4611 = fsub fast float %119, %4569
  %4612 = fmul fast float %4609, %4609
  %4613 = fmul fast float %4610, %4610
  %4614 = fadd fast float %4612, %4613
  %4615 = fmul fast float %4611, %4611
  %4616 = fadd fast float %4614, %4615
  %4617 = call float @dx.op.unary.f32(i32 24, float %4616)  ; Sqrt(value)
  br label %4618

; <label>:4618                                    ; preds = %4608, %4606, %4596
  %4619 = phi float [ %4605, %4596 ], [ %4617, %4608 ], [ 0.000000e+00, %4606 ]
  %4620 = and i1 %4564, %4562
  %4621 = fsub fast float -0.000000e+00, %4619
  %4622 = select i1 %4620, float -0.000000e+00, float %4621
  %4623 = fmul fast float %2597, 0x3FF7154760000000
  %4624 = fmul fast float %4623, %4622
  %4625 = fmul fast float %2598, 0x3FF7154760000000
  %4626 = fmul fast float %4625, %4622
  %4627 = fmul fast float %2599, 0x3FF7154760000000
  %4628 = fmul fast float %4627, %4622
  %4629 = call float @dx.op.unary.f32(i32 21, float %4624)  ; Exp(value)
  %4630 = call float @dx.op.unary.f32(i32 21, float %4626)  ; Exp(value)
  %4631 = call float @dx.op.unary.f32(i32 21, float %4628)  ; Exp(value)
  %4632 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4633 = call float @dx.op.unary.f32(i32 7, float %4630)  ; Saturate(value)
  %4634 = call float @dx.op.unary.f32(i32 7, float %4631)  ; Saturate(value)
  %4635 = fmul fast float %4558, %4632
  %4636 = fmul fast float %4559, %4633
  %4637 = fmul fast float %4560, %4634
  %4638 = fsub fast float %4512, %2796
  %4639 = fsub fast float %4513, %2795
  %4640 = fsub fast float %4514, %2794
  %4641 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4642 = call float @dx.op.unary.f32(i32 25, float %4641)  ; Rsqrt(value)
  %4643 = fmul fast float %4642, %4638
  %4644 = fmul fast float %4642, %4639
  %4645 = fmul fast float %4642, %4640
  %4646 = call float @dx.op.dot3.f32(i32 55, float %4512, float %4513, float %4514, float %2797, float %2798, float %2799)  ; Dot3(ax,ay,az,bx,by,bz)
  %4647 = call float @dx.op.dot3.f32(i32 55, float %2793, float %2792, float %2791, float %4643, float %4644, float %4645)  ; Dot3(ax,ay,az,bx,by,bz)
  %4648 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4649 = fmul fast float %4648, %4519
  %4650 = fmul fast float %4648, %4648
  %4651 = fmul fast float %4650, %4172
  %4652 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4653 = fmul fast float %4649, %4652
  %4654 = bitcast float %4509 to i32
  %4655 = ashr i32 %4654, 1
  %4656 = sub nsw i32 1597463007, %4655
  %4657 = bitcast i32 %4656 to float
  %4658 = fmul fast float %4657, %4506
  %4659 = fmul fast float %4657, %4507
  %4660 = fmul fast float %4657, %4508
  %4661 = fsub fast float %4658, %2796
  %4662 = fsub fast float %4659, %2795
  %4663 = fsub fast float %4660, %2794
  %4664 = call float @dx.op.dot3.f32(i32 55, float %4661, float %4662, float %4663, float %4661, float %4662, float %4663)  ; Dot3(ax,ay,az,bx,by,bz)
  %4665 = call float @dx.op.unary.f32(i32 25, float %4664)  ; Rsqrt(value)
  %4666 = fmul fast float %4661, %4665
  %4667 = fmul fast float %4662, %4665
  %4668 = fmul fast float %4663, %4665
  %4669 = call float @dx.op.dot3.f32(i32 55, float %2797, float %2798, float %2799, float %4666, float %4667, float %4668)  ; Dot3(ax,ay,az,bx,by,bz)
  %4670 = fmul fast float %4669, %4669
  %4671 = call float @dx.op.unary.f32(i32 6, float %4646)  ; FAbs(value)
  %4672 = fsub fast float 1.000000e+00, %2806
  %4673 = call float @dx.op.binary.f32(i32 35, float %4672, float 0x3F847AE140000000)  ; FMax(a,b)
  %4674 = fmul fast float %4673, %4673
  %4675 = fmul fast float %4674, %4674
  %4676 = fsub fast float 1.000000e+00, %4675
  %4677 = fmul fast float %2810, %2810
  %4678 = fmul fast float %4677, %4676
  %4679 = fadd fast float %4678, %4675
  %4680 = bitcast float %4679 to i32
  %4681 = ashr i32 %4680, 1
  %4682 = add nsw i32 %4681, 532487669
  %4683 = bitcast i32 %4682 to float
  %4684 = fadd fast float %4683, %2810
  %4685 = fmul fast float %4675, %4670
  %4686 = fsub fast float 1.000000e+00, %4670
  %4687 = fadd fast float %4686, %4685
  %4688 = fmul fast float %4671, %4671
  %4689 = fmul fast float %4688, %4676
  %4690 = fadd fast float %4689, %4675
  %4691 = bitcast float %4690 to i32
  %4692 = ashr i32 %4691, 1
  %4693 = add nsw i32 %4692, 532487669
  %4694 = bitcast i32 %4693 to float
  %4695 = fadd fast float %4694, %4671
  %4696 = fmul fast float %4687, %4687
  %4697 = fmul fast float %4696, %4684
  %4698 = fmul fast float %4697, %4695
  %4699 = fdiv fast float 1.000000e+00, %4698
  %4700 = bitcast float %4675 to i32
  %4701 = sitofp i32 %4700 to float
  %4702 = fmul fast float %4701, 0x3FE7F73180000000
  %4703 = fadd fast float %4702, 0x41AFE27C40000000
  %4704 = fptosi float %4703 to i32
  %4705 = bitcast i32 %4704 to float
  %4706 = fmul fast float %4492, 0x3FD80E9D60000000
  %4707 = fmul fast float %4706, %4657
  %4708 = fadd fast float %4705, %4707
  %4709 = bitcast float %4708 to i32
  %4710 = sub nsw i32 2129859010, %4709
  %4711 = bitcast i32 %4710 to float
  %4712 = fmul fast float %4675, %4699
  %4713 = fmul fast float %4712, %4705
  %4714 = fmul fast float %4713, %4711
  %4715 = call float @dx.op.unary.f32(i32 6, float %4647)  ; FAbs(value)
  %4716 = fsub fast float 1.000000e+00, %4715
  %4717 = bitcast float %4716 to i32
  %4718 = sitofp i32 %4717 to float
  %4719 = fmul fast float %4718, 5.000000e+00
  %4720 = fadd fast float %4719, 0xC1EFBF8940000000
  %4721 = fptosi float %4720 to i32
  %4722 = bitcast i32 %4721 to float
  %4723 = fsub fast float 1.000000e+00, %2800
  %4724 = fsub fast float 1.000000e+00, %2801
  %4725 = fsub fast float 1.000000e+00, %2808
  %4726 = fmul fast float %4722, %4723
  %4727 = fmul fast float %4722, %4724
  %4728 = fmul fast float %4722, %4725
  %4729 = fadd fast float %4726, %2800
  %4730 = fadd fast float %4727, %2801
  %4731 = fadd fast float %4728, %2808
  br i1 %4087, label %4732, label %4755

; <label>:4732                                    ; preds = %4618
  %4733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2174, float %4715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4734 = extractvalue %dx.types.ResRet.f32 %4733, 0
  %4735 = extractvalue %dx.types.ResRet.f32 %4733, 1
  %4736 = extractvalue %dx.types.ResRet.f32 %4733, 2
  %4737 = fadd fast float %4734, -5.000000e-01
  %4738 = fadd fast float %4735, -5.000000e-01
  %4739 = fadd fast float %4736, -5.000000e-01
  %4740 = fmul fast float %2800, 4.000000e+00
  %4741 = fmul fast float %4740, %4723
  %4742 = fmul fast float %4741, %4737
  %4743 = fmul fast float %2801, 4.000000e+00
  %4744 = fmul fast float %4743, %4724
  %4745 = fmul fast float %4744, %4738
  %4746 = fmul fast float %2808, 4.000000e+00
  %4747 = fmul fast float %4746, %4725
  %4748 = fmul fast float %4747, %4739
  %4749 = fadd fast float %4742, %4729
  %4750 = fadd fast float %4745, %4730
  %4751 = fadd fast float %4748, %4731
  %4752 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4753 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4754 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  br label %4755

; <label>:4755                                    ; preds = %4732, %4618
  %4756 = phi float [ %4752, %4732 ], [ %4729, %4618 ]
  %4757 = phi float [ %4753, %4732 ], [ %4730, %4618 ]
  %4758 = phi float [ %4754, %4732 ], [ %4731, %4618 ]
  %4759 = fmul fast float %4646, 9.843750e-01
  %4760 = fadd fast float %4759, 7.812500e-03
  %4761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4760, float %4077, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4762 = extractvalue %dx.types.ResRet.f32 %4761, 2
  %4763 = extractvalue %dx.types.ResRet.f32 %4761, 3
  %4764 = fmul fast float %4762, %2800
  %4765 = fmul fast float %4762, %2801
  %4766 = fmul fast float %4762, %2808
  %4767 = fadd fast float %4764, %4763
  %4768 = fadd fast float %4765, %4763
  %4769 = fadd fast float %4766, %4763
  br i1 %4087, label %4770, label %4793

; <label>:4770                                    ; preds = %4755
  %4771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2174, float %4646, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4772 = extractvalue %dx.types.ResRet.f32 %4771, 0
  %4773 = extractvalue %dx.types.ResRet.f32 %4771, 1
  %4774 = extractvalue %dx.types.ResRet.f32 %4771, 2
  %4775 = fadd fast float %4772, -5.000000e-01
  %4776 = fadd fast float %4773, -5.000000e-01
  %4777 = fadd fast float %4774, -5.000000e-01
  %4778 = fmul fast float %2800, 4.000000e+00
  %4779 = fmul fast float %4778, %4723
  %4780 = fmul fast float %4779, %4775
  %4781 = fmul fast float %2801, 4.000000e+00
  %4782 = fmul fast float %4781, %4724
  %4783 = fmul fast float %4782, %4776
  %4784 = fmul fast float %2808, 4.000000e+00
  %4785 = fmul fast float %4784, %4725
  %4786 = fmul fast float %4785, %4777
  %4787 = fadd fast float %4780, %4767
  %4788 = fadd fast float %4783, %4768
  %4789 = fadd fast float %4786, %4769
  %4790 = call float @dx.op.unary.f32(i32 7, float %4787)  ; Saturate(value)
  %4791 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4792 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  br label %4793

; <label>:4793                                    ; preds = %4770, %4755
  %4794 = phi float [ %4790, %4770 ], [ %4767, %4755 ]
  %4795 = phi float [ %4791, %4770 ], [ %4768, %4755 ]
  %4796 = phi float [ %4792, %4770 ], [ %4769, %4755 ]
  %4797 = call float @dx.op.binary.f32(i32 35, float %4795, float %4796)  ; FMax(a,b)
  %4798 = call float @dx.op.binary.f32(i32 35, float %4794, float %4797)  ; FMax(a,b)
  %4799 = fsub fast float 1.000000e+00, %4798
  %4800 = fmul fast float %4756, %4714
  %4801 = fmul fast float %4757, %4714
  %4802 = fmul fast float %4758, %4714
  %4803 = fsub fast float 1.000000e+00, %4647
  %4804 = bitcast float %4803 to i32
  %4805 = sitofp i32 %4804 to float
  %4806 = fmul fast float %4805, 5.000000e+00
  %4807 = fadd fast float %4806, 0xC1EFBF8940000000
  %4808 = fptosi float %4807 to i32
  %4809 = bitcast i32 %4808 to float
  %4810 = fmul fast float %4809, %2173
  %4811 = fmul fast float %4799, %4810
  %4812 = fmul fast float %4811, %4137
  %4813 = fmul fast float %4811, %4138
  %4814 = fmul fast float %4811, %4139
  %4815 = fadd fast float %4812, %4800
  %4816 = fadd fast float %4813, %4801
  %4817 = fadd fast float %4814, %4802
  %4818 = fmul fast float %4635, %2194
  %4819 = fmul fast float %4818, %4653
  %4820 = fmul fast float %4819, %4799
  %4821 = fmul fast float %4636, %2194
  %4822 = fmul fast float %4821, %4653
  %4823 = fmul fast float %4822, %4799
  %4824 = fmul fast float %4637, %2194
  %4825 = fmul fast float %4824, %4653
  %4826 = fmul fast float %4825, %4799
  %4827 = fadd fast float %4820, %4474
  %4828 = fadd fast float %4823, %4475
  %4829 = fadd fast float %4826, %4476
  %4830 = fmul fast float %4819, %4815
  %4831 = fmul fast float %4822, %4816
  %4832 = fmul fast float %4825, %4817
  %4833 = fadd fast float %4830, %4471
  %4834 = fadd fast float %4831, %4472
  %4835 = fadd fast float %4832, %4473
  br label %4549

; <label>:4836                                    ; preds = %4549
  br label %4837

; <label>:4837                                    ; preds = %4836, %4437
  %4838 = phi float [ %4439, %4437 ], [ %4550, %4836 ]
  %4839 = phi float [ %4440, %4437 ], [ %4551, %4836 ]
  %4840 = phi float [ %4441, %4437 ], [ %4552, %4836 ]
  %4841 = phi float [ %4442, %4437 ], [ %4553, %4836 ]
  %4842 = phi float [ %4443, %4437 ], [ %4554, %4836 ]
  %4843 = phi float [ %4444, %4437 ], [ %4555, %4836 ]
  %4844 = add i32 %4438, 1
  %4845 = icmp ugt i32 %4844, %4434
  br i1 %4845, label %4846, label %4437

; <label>:4846                                    ; preds = %4837
  br label %4847

; <label>:4847                                    ; preds = %4846, %4413, %4403
  %4848 = phi float [ %4404, %4403 ], [ %4404, %4413 ], [ %4838, %4846 ]
  %4849 = phi float [ %4405, %4403 ], [ %4405, %4413 ], [ %4839, %4846 ]
  %4850 = phi float [ %4406, %4403 ], [ %4406, %4413 ], [ %4840, %4846 ]
  %4851 = phi float [ %4407, %4403 ], [ %4407, %4413 ], [ %4841, %4846 ]
  %4852 = phi float [ %4408, %4403 ], [ %4408, %4413 ], [ %4842, %4846 ]
  %4853 = phi float [ %4409, %4403 ], [ %4409, %4413 ], [ %4843, %4846 ]
  %4854 = call float @dx.op.unary.f32(i32 24, float %2803)  ; Sqrt(value)
  %4855 = call float @dx.op.unary.f32(i32 24, float %2804)  ; Sqrt(value)
  %4856 = call float @dx.op.unary.f32(i32 24, float %2805)  ; Sqrt(value)
  %4857 = fmul fast float %4854, %4851
  %4858 = fmul fast float %4855, %4852
  %4859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4860 = extractvalue %dx.types.CBufRet.f32 %4859, 0
  br i1 %188, label %4861, label %4881

; <label>:4861                                    ; preds = %4847
  %4862 = fadd fast float %4853, %2171
  %4863 = fmul fast float %4862, %2172
  %4864 = fsub fast float 1.000000e+00, %2172
  %4865 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4867 = extractvalue %dx.types.CBufRet.f32 %4866, 3
  %4868 = fmul fast float %4867, %4865
  %4869 = fadd fast float %4868, %4863
  %4870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.f32 %4870, 0
  %4872 = fmul fast float %4871, %4143
  %4873 = fsub fast float %4869, %4872
  %4874 = fadd fast float %4858, %4857
  %4875 = fmul fast float %4860, %4874
  %4876 = extractvalue %dx.types.CBufRet.f32 %4866, 1
  %4877 = fsub fast float %4873, %4876
  %4878 = extractvalue %dx.types.CBufRet.f32 %4866, 2
  %4879 = fmul fast float %4877, %4878
  %4880 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  br label %4897

; <label>:4881                                    ; preds = %4847
  %4882 = fmul fast float %4856, %4853
  %4883 = fmul fast float %4860, %4857
  %4884 = fmul fast float %4860, %4858
  %4885 = fmul fast float %4882, %4860
  %4886 = add i32 %44, 196
  %4887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4886, i32 undef)  ; BufferLoad(srv,index,wot)
  %4888 = extractvalue %dx.types.ResRet.i32 %4887, 0
  %4889 = and i32 %4888, 32
  %4890 = icmp eq i32 %4889, 0
  br i1 %4890, label %4897, label %4891

; <label>:4891                                    ; preds = %4881
  %4892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4893 = extractvalue %dx.types.CBufRet.f32 %4892, 0
  %4894 = fmul fast float %4893, 0x3FE99999A0000000
  %4895 = fadd fast float %4893, %4883
  %4896 = fadd fast float %4894, %4885
  br label %4897

; <label>:4897                                    ; preds = %4891, %4881, %4861
  %4898 = phi float [ %4875, %4861 ], [ %4895, %4891 ], [ %4883, %4881 ]
  %4899 = phi float [ %4880, %4861 ], [ %4884, %4891 ], [ %4884, %4881 ]
  %4900 = phi float [ 1.000000e+00, %4861 ], [ %4896, %4891 ], [ %4885, %4881 ]
  %4901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4902 = extractvalue %dx.types.CBufRet.f32 %4901, 0
  %4903 = fmul fast float %4902, %4849
  %4904 = fmul fast float %4902, %4850
  %4905 = fadd fast float %4849, %4848
  %4906 = select i1 %188, float %4905, float %4848
  %4907 = fmul float %4906, %4902
  %4908 = select i1 %188, float 0.000000e+00, float %4903
  %4909 = select i1 %188, float 0.000000e+00, float %4904
  %4910 = fmul fast float %4898, %4854
  %4911 = fmul fast float %4899, %4855
  %4912 = fmul fast float %4900, %4856
  %4913 = fadd fast float %4907, %4910
  %4914 = fadd fast float %4908, %4911
  %4915 = fadd fast float %4909, %4912
  %4916 = select i1 %188, float %4899, float %4914
  %4917 = select i1 %188, float %4900, float %4915
  %4918 = call float @dx.op.binary.f32(i32 36, float %4913, float 3.225500e+04)  ; FMin(a,b)
  %4919 = call float @dx.op.binary.f32(i32 36, float %4916, float 3.225500e+04)  ; FMin(a,b)
  %4920 = call float @dx.op.binary.f32(i32 36, float %4917, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4918)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4919)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4920)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

